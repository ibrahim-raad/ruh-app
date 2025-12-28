import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/features/questionnaire/domain/dtos/post_answer_dto.dart';
import 'package:ruh/features/questionnaire/domain/entities/patient_answer.dart';
import 'package:ruh/features/questionnaire/domain/entities/question.dart';
import 'package:ruh/features/questionnaire/domain/usecases/delete_answer.dart';
import 'package:ruh/features/questionnaire/domain/usecases/get_questionnaire.dart';
import 'package:ruh/features/questionnaire/domain/usecases/post_answer.dart';
import 'package:ruh/features/questionnaire/domain/usecases/update_answer.dart';
import 'questionnaire_event.dart';
import 'questionnaire_state.dart';
import '../models/draft_answer.dart';

@injectable
class QuestionnaireBloc extends Bloc<QuestionnaireEvent, QuestionnaireState> {
  final GetQuestionnaireUseCase _getQuestionnaire;
  final PostAnswerUseCase _postAnswer;
  final UpdateAnswerUseCase _updateAnswer;
  final DeleteAnswerUseCase _deleteAnswer;

  QuestionnaireBloc(
    this._getQuestionnaire,
    this._postAnswer,
    this._updateAnswer,
    this._deleteAnswer,
  ) : super(const QuestionnaireState.initial()) {
    on<QuestionnaireEvent>((event, emit) async {
      await event.map(
        started: (e) async {
          emit(const QuestionnaireState.loading());
          final result = await _getQuestionnaire(e.type);
          result.fold(
            (failure) => emit(QuestionnaireState.failure(failure)),
            (data) => emit(QuestionnaireState.content(data: data)),
          );
        },
        optionToggled: (e) async {
          final current = state.mapOrNull(content: (c) => c);
          if (current == null) return;

          final qwa = current.data.questions.firstWhere(
            (x) => x.question.id == e.questionId,
          );
          final qType = qwa.question.type;

          final drafts = Map<String, DraftAnswer>.from(current.drafts);

          if (qType == QuestionType.singleSelect) {
            if (e.selected) {
              drafts[e.questionId] = DraftAnswer.singleSelect(
                e.possibleAnswerId,
              );
            } else {
              drafts.remove(e.questionId);
            }
          } else if (qType == QuestionType.multipleSelect) {
            final existing = drafts[e.questionId];
            final set = <String>{};
            if (existing is DraftAnswerMultipleSelect) {
              set.addAll(existing.possibleAnswerIds);
            }
            if (e.selected) {
              set.add(e.possibleAnswerId);
            } else {
              set.remove(e.possibleAnswerId);
            }
            if (set.isEmpty) {
              drafts.remove(e.questionId);
            } else {
              drafts[e.questionId] = DraftAnswer.multipleSelect(set);
            }
          } else {
            return;
          }

          emit(current.copyWith(drafts: drafts, lastFailure: null));
        },
        textChanged: (e) async {
          final current = state.mapOrNull(content: (c) => c);
          if (current == null) return;
          final drafts = Map<String, DraftAnswer>.from(current.drafts);
          final value = e.text.trim();
          if (value.isEmpty) {
            drafts.remove(e.questionId);
          } else {
            drafts[e.questionId] = DraftAnswer.text(value);
          }
          emit(current.copyWith(drafts: drafts, lastFailure: null));
        },
        scaleChanged: (e) async {
          final current = state.mapOrNull(content: (c) => c);
          if (current == null) return;
          final drafts = Map<String, DraftAnswer>.from(current.drafts);
          drafts[e.questionId] = DraftAnswer.scale(e.value.clamp(1, 10));
          emit(current.copyWith(drafts: drafts, lastFailure: null));
        },
        nextPressed: (_) async {
          final current = state.mapOrNull(content: (c) => c);
          if (current == null) return;

          final totalSteps = 1 + current.data.questions.length + 1;
          final lastIndex = totalSteps - 1;

          // Intro -> first question
          if (current.stepIndex == 0) {
            emit(current.copyWith(stepIndex: 1, lastFailure: null));
            return;
          }

          // Finish step
          if (current.stepIndex >= lastIndex) {
            emit(const QuestionnaireState.completed());
            return;
          }

          final questionIndex =
              current.stepIndex - 1; // step 1 maps to question 0
          final qwa = current.data.questions[questionIndex];
          final question = qwa.question;
          final questionId = question.id;

          final draft = current.drafts[questionId];
          if (!_isDraftValidForQuestion(question.type, draft)) {
            // Keep user in place; UI can disable Next anyway.
            emit(
              current.copyWith(
                lastFailure: const BadRequestFailure('required_field'),
              ),
            );
            return;
          }

          emit(current.copyWith(isSaving: true, lastFailure: null));

          final savedAnswers = Map<String, List<PatientAnswer>>.from(
            current.savedAnswers,
          );

          final saveResult = await _persistAnswer(
            question: question,
            draft: draft!,
            existing: savedAnswers[questionId] ?? const [],
          );

          await saveResult.fold(
            (failure) async {
              emit(current.copyWith(isSaving: false, lastFailure: failure));
            },
            (updatedList) async {
              savedAnswers[questionId] = updatedList;
              emit(
                current.copyWith(
                  isSaving: false,
                  savedAnswers: savedAnswers,
                  stepIndex: current.stepIndex + 1,
                  lastFailure: null,
                ),
              );
            },
          );
        },
        backPressed: (_) async {
          final current = state.mapOrNull(content: (c) => c);
          if (current == null) return;
          final prev = (current.stepIndex - 1);
          emit(
            current.copyWith(stepIndex: prev < 0 ? 0 : prev, lastFailure: null),
          );
        },
        finishPressed: (_) async {
          emit(const QuestionnaireState.completed());
        },
      );
    });
  }

  bool _isDraftValidForQuestion(QuestionType type, DraftAnswer? draft) {
    if (draft == null) return false;
    return draft.map(
      singleSelect: (d) =>
          type == QuestionType.singleSelect && d.possibleAnswerId.isNotEmpty,
      multipleSelect: (d) =>
          type == QuestionType.multipleSelect && d.possibleAnswerIds.isNotEmpty,
      text: (d) => type == QuestionType.text && d.value.trim().isNotEmpty,
      scale: (d) => type == QuestionType.scale && d.value >= 1 && d.value <= 10,
    );
  }

  Future<Either<Failure, List<PatientAnswer>>> _persistAnswer({
    required Question question,
    required DraftAnswer draft,
    required List<PatientAnswer> existing,
  }) async {
    return await draft.map(
      singleSelect: (d) async {
        final dto = PostAnswerDto(
          questionId: question.id,
          possibleAnswerId: d.possibleAnswerId,
        );
        if (existing.isNotEmpty) {
          final updated = await _updateAnswer(
            UpdateAnswerParams(answerId: existing.first.id, dto: dto),
          );
          return updated.map((a) => [a]);
        }
        final created = await _postAnswer(dto);
        return created.map((a) => [a]);
      },
      text: (d) async {
        final dto = PostAnswerDto(
          questionId: question.id,
          answer: d.value.trim(),
        );
        if (existing.isNotEmpty) {
          final updated = await _updateAnswer(
            UpdateAnswerParams(answerId: existing.first.id, dto: dto),
          );
          return updated.map((a) => [a]);
        }
        final created = await _postAnswer(dto);
        return created.map((a) => [a]);
      },
      scale: (d) async {
        final dto = PostAnswerDto(
          questionId: question.id,
          answer: '${d.value}/10',
        );
        if (existing.isNotEmpty) {
          final updated = await _updateAnswer(
            UpdateAnswerParams(answerId: existing.first.id, dto: dto),
          );
          return updated.map((a) => [a]);
        }
        final created = await _postAnswer(dto);
        return created.map((a) => [a]);
      },
      multipleSelect: (d) async {
        final existingByPossible = <String, PatientAnswer>{};
        for (final a in existing) {
          final pid = a.possibleAnswerId;
          if (pid != null) existingByPossible[pid] = a;
        }

        final desired = d.possibleAnswerIds;
        final existingIds = existingByPossible.keys.toSet();

        final toCreate = desired.difference(existingIds);
        final toDelete = existingIds.difference(desired);

        // Create new selections
        final createdAnswers = <PatientAnswer>[];
        for (final pid in toCreate) {
          final dto = PostAnswerDto(
            questionId: question.id,
            possibleAnswerId: pid,
          );
          final res = await _postAnswer(dto);
          Failure? failure;
          PatientAnswer? created;
          res.fold((l) => failure = l, (r) => created = r);
          if (failure != null) return Left(failure!);
          createdAnswers.add(created!);
        }

        // Delete deselections
        for (final pid in toDelete) {
          final ans = existingByPossible[pid];
          if (ans == null) continue;
          final res = await _deleteAnswer(ans.id);
          Failure? failure;
          res.fold((l) => failure = l, (_) {});
          if (failure != null) return Left(failure!);
        }

        // Return updated list = keep desired existing + add created
        final kept = <PatientAnswer>[];
        for (final pid in desired) {
          final existingAns = existingByPossible[pid];
          if (existingAns != null) kept.add(existingAns);
        }
        kept.addAll(createdAnswers);
        return Right(kept);
      },
    );
  }
}

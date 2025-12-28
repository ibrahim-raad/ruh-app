import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/full_questionnaire.dart';
import '../../domain/entities/patient_answer.dart';
import '../models/draft_answer.dart';

part 'questionnaire_state.freezed.dart';

@freezed
class QuestionnaireState with _$QuestionnaireState {
  const factory QuestionnaireState.initial() = _Initial;
  const factory QuestionnaireState.loading() = _Loading;

  const factory QuestionnaireState.content({
    required FullQuestionnaire data,
    @Default(0) int stepIndex,
    @Default({}) Map<String, DraftAnswer> drafts,
    @Default({}) Map<String, List<PatientAnswer>> savedAnswers,
    @Default(false) bool isSaving,
    Failure? lastFailure,
  }) = _Content;

  const factory QuestionnaireState.completed() = _Completed;

  const factory QuestionnaireState.failure(Failure failure) = _Failure;
}

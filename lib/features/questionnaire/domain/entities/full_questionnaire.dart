import 'package:ruh/features/questionnaire/domain/entities/question_with_answers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruh/features/questionnaire/domain/entities/questionnaire.dart';

part 'full_questionnaire.freezed.dart';
part 'full_questionnaire.g.dart';

@freezed
abstract class FullQuestionnaire with _$FullQuestionnaire {
  const factory FullQuestionnaire({
    required Questionnaire questionnaire,
    required List<QuestionWithAnswers> questions,
  }) = _FullQuestionnaire;

  factory FullQuestionnaire.fromJson(Map<String, dynamic> json) =>
      _$FullQuestionnaireFromJson(json);
}

import 'package:ruh/features/questionnaire/domain/entities/question.dart';
import 'package:ruh/features/questionnaire/domain/entities/possible_answer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_with_answers.freezed.dart';
part 'question_with_answers.g.dart';

@freezed
abstract class QuestionWithAnswers with _$QuestionWithAnswers {
  const factory QuestionWithAnswers({
    required Question question,
    @JsonKey(name: 'possible_answers')
    @Default([])
    List<PossibleAnswer> possibleAnswers,
  }) = _QuestionWithAnswers;

  factory QuestionWithAnswers.fromJson(Map<String, dynamic> json) =>
      _$QuestionWithAnswersFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_with_answers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuestionWithAnswers _$QuestionWithAnswersFromJson(Map<String, dynamic> json) =>
    _QuestionWithAnswers(
      question: Question.fromJson(json['question'] as Map<String, dynamic>),
      possibleAnswers:
          (json['possibleAnswers'] as List<dynamic>?)
              ?.map((e) => PossibleAnswer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$QuestionWithAnswersToJson(
  _QuestionWithAnswers instance,
) => <String, dynamic>{
  'question': instance.question,
  'possibleAnswers': instance.possibleAnswers,
};

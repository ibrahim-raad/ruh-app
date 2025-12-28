// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'possible_answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PossibleAnswer _$PossibleAnswerFromJson(Map<String, dynamic> json) =>
    _PossibleAnswer(
      id: json['id'] as String,
      answer: json['answer'] as String,
      questionId: json['question_id'] as String,
    );

Map<String, dynamic> _$PossibleAnswerToJson(_PossibleAnswer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'answer': instance.answer,
      'question_id': instance.questionId,
    };

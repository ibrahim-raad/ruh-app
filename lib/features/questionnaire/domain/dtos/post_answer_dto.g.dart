// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_answer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostAnswerDto _$PostAnswerDtoFromJson(Map<String, dynamic> json) =>
    _PostAnswerDto(
      questionId: json['questionId'] as String,
      possibleAnswerId: json['possible_answer_id'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$PostAnswerDtoToJson(_PostAnswerDto instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'possible_answer_id': instance.possibleAnswerId,
      'answer': instance.answer,
    };

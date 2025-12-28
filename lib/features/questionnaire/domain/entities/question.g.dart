// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Question _$QuestionFromJson(Map<String, dynamic> json) => _Question(
  id: json['id'] as String,
  question: json['question'] as String,
  order: (json['order'] as num).toDouble(),
  type: $enumDecode(_$QuestionTypeEnumMap, json['type']),
  questionnaireId: json['questionnaire_id'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$QuestionToJson(_Question instance) => <String, dynamic>{
  'id': instance.id,
  'question': instance.question,
  'order': instance.order,
  'type': _$QuestionTypeEnumMap[instance.type]!,
  'questionnaire_id': instance.questionnaireId,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

const _$QuestionTypeEnumMap = {
  QuestionType.multipleSelect: 'MULTIPLE_SELECT',
  QuestionType.singleSelect: 'SINGLE_SELECT',
  QuestionType.text: 'TEXT',
  QuestionType.scale: 'SCALE',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Questionnaire _$QuestionnaireFromJson(Map<String, dynamic> json) =>
    _Questionnaire(
      id: json['id'] as String,
      type: $enumDecode(_$QuestionnaireTypeEnumMap, json['type']),
      title: json['title'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$QuestionnaireToJson(_Questionnaire instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$QuestionnaireTypeEnumMap[instance.type]!,
      'title': instance.title,
      'description': instance.description,
    };

const _$QuestionnaireTypeEnumMap = {
  QuestionnaireType.onboarding: 'ONBOARDING',
  QuestionnaireType.reflection: 'REFLECTION',
  QuestionnaireType.postSession: 'POST_SESSION',
  QuestionnaireType.feedback: 'FEEDBACK',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'full_questionnaire.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FullQuestionnaire _$FullQuestionnaireFromJson(Map<String, dynamic> json) =>
    _FullQuestionnaire(
      questionnaire: Questionnaire.fromJson(
        json['questionnaire'] as Map<String, dynamic>,
      ),
      questions: (json['questions'] as List<dynamic>)
          .map((e) => QuestionWithAnswers.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FullQuestionnaireToJson(_FullQuestionnaire instance) =>
    <String, dynamic>{
      'questionnaire': instance.questionnaire,
      'questions': instance.questions,
    };

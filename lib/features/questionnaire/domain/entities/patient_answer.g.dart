// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatientAnswer _$PatientAnswerFromJson(Map<String, dynamic> json) =>
    _PatientAnswer(
      id: json['id'] as String,
      possibleAnswerId: json['possible_answer_id'] as String?,
      answer: json['answer'] as String?,
      patientId: json['patient_id'] as String,
      questionId: json['question_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$PatientAnswerToJson(_PatientAnswer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'possible_answer_id': instance.possibleAnswerId,
      'answer': instance.answer,
      'patient_id': instance.patientId,
      'question_id': instance.questionId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

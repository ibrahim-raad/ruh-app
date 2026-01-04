// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Session _$SessionFromJson(Map<String, dynamic> json) => _Session(
  id: json['id'] as String,
  version: (json['version'] as num).toInt(),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  deletedAt: json['deleted_at'] == null
      ? null
      : DateTime.parse(json['deleted_at'] as String),
  therapyCaseId: json['therapy_case_id'] as String?,
  therapyCase: json['therapy_case'] == null
      ? null
      : TherapyCase.fromJson(json['therapy_case'] as Map<String, dynamic>),
  startTime: DateTime.parse(json['start_time'] as String),
  endTime: DateTime.parse(json['end_time'] as String),
  actualStartTime: json['actual_start_time'] == null
      ? null
      : DateTime.parse(json['actual_start_time'] as String),
  actualEndTime: json['actual_end_time'] == null
      ? null
      : DateTime.parse(json['actual_end_time'] as String),
  link: json['link'] as String?,
  audioLink: json['audio_link'] as String?,
  patientFeedback: json['patient_feedback'] as String?,
  type: $enumDecode(_$SessionTypeEnumMap, json['type']),
  status: $enumDecode(_$SessionStatusEnumMap, json['status']),
);

Map<String, dynamic> _$SessionToJson(_Session instance) => <String, dynamic>{
  'id': instance.id,
  'version': instance.version,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'deleted_at': instance.deletedAt?.toIso8601String(),
  'therapy_case_id': instance.therapyCaseId,
  'therapy_case': instance.therapyCase,
  'start_time': instance.startTime.toIso8601String(),
  'end_time': instance.endTime.toIso8601String(),
  'actual_start_time': instance.actualStartTime?.toIso8601String(),
  'actual_end_time': instance.actualEndTime?.toIso8601String(),
  'link': instance.link,
  'audio_link': instance.audioLink,
  'patient_feedback': instance.patientFeedback,
  'type': _$SessionTypeEnumMap[instance.type]!,
  'status': _$SessionStatusEnumMap[instance.status]!,
};

const _$SessionTypeEnumMap = {
  SessionType.first: 'FIRST',
  SessionType.followUp: 'FOLLOW_UP',
};

const _$SessionStatusEnumMap = {
  SessionStatus.pending: 'PENDING',
  SessionStatus.completed: 'COMPLETED',
  SessionStatus.cancelled: 'CANCELLED',
  SessionStatus.confirmed: 'CONFIRMED',
  SessionStatus.missed: 'MISSED',
  SessionStatus.rescheduled: 'RESCHEDULED',
};

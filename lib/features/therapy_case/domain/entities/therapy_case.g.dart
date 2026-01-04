// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'therapy_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TherapyCase _$TherapyCaseFromJson(Map<String, dynamic> json) => _TherapyCase(
  id: json['id'] as String,
  version: (json['version'] as num).toInt(),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  deletedAt: json['deleted_at'] == null
      ? null
      : DateTime.parse(json['deleted_at'] as String),
  notes: json['notes'] as String?,
  type: $enumDecode(_$TherapyCaseTypeEnumMap, json['type']),
  status: $enumDecode(_$TherapyCaseStatusEnumMap, json['status']),
  firstSessionAt: json['first_session_at'] == null
      ? null
      : DateTime.parse(json['first_session_at'] as String),
  lastSessionAt: json['last_session_at'] == null
      ? null
      : DateTime.parse(json['last_session_at'] as String),
  totalSessions: (json['total_sessions'] as num).toInt(),
  patient: Patient.fromJson(json['patient'] as Map<String, dynamic>),
  therapist: TherapistOutput.fromJson(
    json['therapist'] as Map<String, dynamic>,
  ),
  transferredTo: json['transferred_to'] == null
      ? null
      : TherapyCase.fromJson(json['transferred_to'] as Map<String, dynamic>),
  patientId: json['patient_id'] as String?,
  therapistId: json['therapist_id'] as String?,
  transferredToId: json['transferred_to_id'] as String?,
);

Map<String, dynamic> _$TherapyCaseToJson(_TherapyCase instance) =>
    <String, dynamic>{
      'id': instance.id,
      'version': instance.version,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'notes': instance.notes,
      'type': _$TherapyCaseTypeEnumMap[instance.type]!,
      'status': _$TherapyCaseStatusEnumMap[instance.status]!,
      'first_session_at': instance.firstSessionAt?.toIso8601String(),
      'last_session_at': instance.lastSessionAt?.toIso8601String(),
      'total_sessions': instance.totalSessions,
      'patient': instance.patient,
      'therapist': instance.therapist,
      'transferred_to': instance.transferredTo,
      'patient_id': instance.patientId,
      'therapist_id': instance.therapistId,
      'transferred_to_id': instance.transferredToId,
    };

const _$TherapyCaseTypeEnumMap = {
  TherapyCaseType.therapist: 'THERAPIST',
  TherapyCaseType.psychiatrist: 'PSYCHIATRIST',
};

const _$TherapyCaseStatusEnumMap = {
  TherapyCaseStatus.active: 'ACTIVE',
  TherapyCaseStatus.closed: 'CLOSED',
  TherapyCaseStatus.transferred: 'TRANSFERRED',
};

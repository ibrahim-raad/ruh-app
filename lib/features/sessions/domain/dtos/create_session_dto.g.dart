// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_session_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateSessionDto _$CreateSessionDtoFromJson(Map<String, dynamic> json) =>
    _CreateSessionDto(
      therapyCaseId: json['therapy_case_id'] as String,
      start: json['start'] as String,
    );

Map<String, dynamic> _$CreateSessionDtoToJson(_CreateSessionDto instance) =>
    <String, dynamic>{
      'therapy_case_id': instance.therapyCaseId,
      'start': instance.start,
    };

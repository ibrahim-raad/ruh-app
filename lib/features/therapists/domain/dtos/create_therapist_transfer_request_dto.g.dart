// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_therapist_transfer_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateTherapistTransferRequestDto _$CreateTherapistTransferRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CreateTherapistTransferRequestDto(
  transferReason: json['transfer_reason'] as String,
  therapistId: json['therapist_id'] as String,
  fromTherapyCaseId: json['from_therapy_case_id'] as String,
);

Map<String, dynamic> _$CreateTherapistTransferRequestDtoToJson(
  _CreateTherapistTransferRequestDto instance,
) => <String, dynamic>{
  'transfer_reason': instance.transferReason,
  'therapist_id': instance.therapistId,
  'from_therapy_case_id': instance.fromTherapyCaseId,
};

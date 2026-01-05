import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_therapist_transfer_request_dto.freezed.dart';
part 'create_therapist_transfer_request_dto.g.dart';

@freezed
abstract class CreateTherapistTransferRequestDto
    with _$CreateTherapistTransferRequestDto {
  const factory CreateTherapistTransferRequestDto({
    @JsonKey(name: 'transfer_reason') required String transferReason,
    @JsonKey(name: 'therapist_id') required String therapistId,
    @JsonKey(name: 'from_therapy_case_id') required String fromTherapyCaseId,
  }) = _CreateTherapistTransferRequestDto;

  factory CreateTherapistTransferRequestDto.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateTherapistTransferRequestDtoFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_session_dto.freezed.dart';
part 'create_session_dto.g.dart';

@freezed
abstract class CreateSessionDto with _$CreateSessionDto {
  const factory CreateSessionDto({
    @JsonKey(name: 'therapy_case_id') required String therapyCaseId,

    required String start,
  }) = _CreateSessionDto;

  factory CreateSessionDto.fromJson(Map<String, dynamic> json) =>
      _$CreateSessionDtoFromJson(json);
}

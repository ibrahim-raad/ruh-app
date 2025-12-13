import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_dto.freezed.dart';
part 'register_dto.g.dart';

@freezed
abstract class RegisterDto with _$RegisterDto {
  const factory RegisterDto({
    required String email,
    required String password,
    @JsonKey(name: 'full_name') required String fullName,
    @Default('PATIENT') String role,
  }) = _RegisterDto;

  factory RegisterDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterDtoFromJson(json);
}

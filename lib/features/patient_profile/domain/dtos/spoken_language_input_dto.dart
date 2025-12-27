import 'package:freezed_annotation/freezed_annotation.dart';

part 'spoken_language_input_dto.freezed.dart';
part 'spoken_language_input_dto.g.dart';

@freezed
abstract class SpokenLanguageInputDto with _$SpokenLanguageInputDto {
  const factory SpokenLanguageInputDto({
    @JsonKey(name: 'language_id') required String languageId,
    @JsonKey(name: 'is_primary') required bool isPrimary,
  }) = _SpokenLanguageInputDto;

  factory SpokenLanguageInputDto.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguageInputDtoFromJson(json);
}

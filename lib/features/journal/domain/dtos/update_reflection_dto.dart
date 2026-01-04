import 'package:freezed_annotation/freezed_annotation.dart';
import 'create_reflection_dto.dart';

part 'update_reflection_dto.freezed.dart';
part 'update_reflection_dto.g.dart';

@freezed
abstract class UpdateReflectionDto with _$UpdateReflectionDto {
  const factory UpdateReflectionDto({
    required int version,
    @JsonKey(name: 'title') String? date,
    String? content,
    JournalMood? mood,
  }) = _UpdateReflectionDto;

  factory UpdateReflectionDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateReflectionDtoFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_reflection_dto.freezed.dart';
part 'create_reflection_dto.g.dart';

@freezed
abstract class CreateReflectionDto with _$CreateReflectionDto {
  const factory CreateReflectionDto({
    @JsonKey(name: 'title') required String date,
    required String content,
    required JournalMood mood,
  }) = _CreateReflectionDto;

  factory CreateReflectionDto.fromJson(Map<String, dynamic> json) =>
      _$CreateReflectionDtoFromJson(json);
}

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum JournalMood { amazing, good, calm, okay, struggling, anxious }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruh/features/journal/domain/dtos/create_reflection_dto.dart';

part 'reflection.freezed.dart';
part 'reflection.g.dart';

@freezed
abstract class Reflection with _$Reflection {
  const factory Reflection({
    required String id,
    required String title,
    required String content,
    required JournalMood mood,
    required int version,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Reflection;

  factory Reflection.fromJson(Map<String, dynamic> json) =>
      _$ReflectionFromJson(json);
}

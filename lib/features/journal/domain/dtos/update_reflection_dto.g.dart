// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_reflection_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateReflectionDto _$UpdateReflectionDtoFromJson(Map<String, dynamic> json) =>
    _UpdateReflectionDto(
      version: (json['version'] as num).toInt(),
      date: json['title'] as String?,
      content: json['content'] as String?,
      mood: $enumDecodeNullable(_$JournalMoodEnumMap, json['mood']),
    );

Map<String, dynamic> _$UpdateReflectionDtoToJson(
  _UpdateReflectionDto instance,
) => <String, dynamic>{
  'version': instance.version,
  'title': instance.date,
  'content': instance.content,
  'mood': _$JournalMoodEnumMap[instance.mood],
};

const _$JournalMoodEnumMap = {
  JournalMood.amazing: 'AMAZING',
  JournalMood.good: 'GOOD',
  JournalMood.calm: 'CALM',
  JournalMood.okay: 'OKAY',
  JournalMood.struggling: 'STRUGGLING',
  JournalMood.anxious: 'ANXIOUS',
};

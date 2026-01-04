// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_reflection_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateReflectionDto _$CreateReflectionDtoFromJson(Map<String, dynamic> json) =>
    _CreateReflectionDto(
      date: json['title'] as String,
      content: json['content'] as String,
      mood: $enumDecode(_$JournalMoodEnumMap, json['mood']),
    );

Map<String, dynamic> _$CreateReflectionDtoToJson(
  _CreateReflectionDto instance,
) => <String, dynamic>{
  'title': instance.date,
  'content': instance.content,
  'mood': _$JournalMoodEnumMap[instance.mood]!,
};

const _$JournalMoodEnumMap = {
  JournalMood.amazing: 'AMAZING',
  JournalMood.good: 'GOOD',
  JournalMood.calm: 'CALM',
  JournalMood.okay: 'OKAY',
  JournalMood.struggling: 'STRUGGLING',
  JournalMood.anxious: 'ANXIOUS',
};

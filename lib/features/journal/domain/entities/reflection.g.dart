// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reflection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Reflection _$ReflectionFromJson(Map<String, dynamic> json) => _Reflection(
  id: json['id'] as String,
  title: json['title'] as String,
  content: json['content'] as String,
  mood: $enumDecode(_$JournalMoodEnumMap, json['mood']),
  version: (json['version'] as num).toInt(),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$ReflectionToJson(_Reflection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'mood': _$JournalMoodEnumMap[instance.mood]!,
      'version': instance.version,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$JournalMoodEnumMap = {
  JournalMood.amazing: 'AMAZING',
  JournalMood.good: 'GOOD',
  JournalMood.calm: 'CALM',
  JournalMood.okay: 'OKAY',
  JournalMood.struggling: 'STRUGGLING',
  JournalMood.anxious: 'ANXIOUS',
};

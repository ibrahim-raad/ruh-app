// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spoken_language_input_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpokenLanguageInputDto _$SpokenLanguageInputDtoFromJson(
  Map<String, dynamic> json,
) => _SpokenLanguageInputDto(
  languageId: json['language_id'] as String,
  isPrimary: json['is_primary'] as bool,
);

Map<String, dynamic> _$SpokenLanguageInputDtoToJson(
  _SpokenLanguageInputDto instance,
) => <String, dynamic>{
  'language_id': instance.languageId,
  'is_primary': instance.isPrimary,
};

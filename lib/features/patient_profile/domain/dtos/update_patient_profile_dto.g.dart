// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_patient_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdatePatientProfileDto _$UpdatePatientProfileDtoFromJson(
  Map<String, dynamic> json,
) => _UpdatePatientProfileDto(
  fullName: json['full_name'] as String,
  dateOfBirth: DateTime.parse(json['date_of_birth'] as String),
  gender: $enumDecode(_$UserGenderEnumMap, json['gender']),
  countryId: json['country_id'] as String,
  spokenLanguages:
      (json['spoken_languages'] as List<dynamic>?)
          ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  version: (json['version'] as num).toInt(),
  patientVersion: (json['patient_version'] as num).toInt(),
);

Map<String, dynamic> _$UpdatePatientProfileDtoToJson(
  _UpdatePatientProfileDto instance,
) => <String, dynamic>{
  'full_name': instance.fullName,
  'date_of_birth': instance.dateOfBirth.toIso8601String(),
  'gender': _$UserGenderEnumMap[instance.gender]!,
  'country_id': instance.countryId,
  'spoken_languages': instance.spokenLanguages,
  'version': instance.version,
  'patient_version': instance.patientVersion,
};

const _$UserGenderEnumMap = {
  UserGender.male: 'MALE',
  UserGender.female: 'FEMALE',
  UserGender.unknown: 'UNKNOWN',
};

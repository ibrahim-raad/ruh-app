// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String,
  email: json['email'] as String,
  fullName: json['full_name'] as String,
  role: $enumDecode(_$UserRoleEnumMap, json['role']),
  status:
      $enumDecodeNullable(_$UserStatusEnumMap, json['status']) ??
      UserStatus.pending,
  gender:
      $enumDecodeNullable(_$UserGenderEnumMap, json['gender']) ??
      UserGender.unknown,
  emailStatus:
      $enumDecodeNullable(_$UserEmailStatusEnumMap, json['emailStatus']) ??
      UserEmailStatus.unverified,
  country: json['country'] == null
      ? null
      : Country.fromJson(json['country'] as Map<String, dynamic>),
  countryId: json['country_id'] as String,
  dateOfBirth: json['date_of_birth'] == null
      ? null
      : DateTime.parse(json['date_of_birth'] as String),
  profileUrl: json['profile_url'] as String?,
  spokenLanguages:
      (json['spoken_languages'] as List<dynamic>?)
          ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  version: (json['version'] as num?)?.toInt() ?? 0,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  deletedAt: json['deleted_at'] == null
      ? null
      : DateTime.parse(json['deleted_at'] as String),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'full_name': instance.fullName,
  'role': _$UserRoleEnumMap[instance.role]!,
  'status': _$UserStatusEnumMap[instance.status]!,
  'gender': _$UserGenderEnumMap[instance.gender]!,
  'emailStatus': _$UserEmailStatusEnumMap[instance.emailStatus]!,
  'country': instance.country,
  'country_id': instance.countryId,
  'date_of_birth': instance.dateOfBirth?.toIso8601String(),
  'profile_url': instance.profileUrl,
  'spoken_languages': instance.spokenLanguages,
  'version': instance.version,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'deleted_at': instance.deletedAt?.toIso8601String(),
};

const _$UserRoleEnumMap = {
  UserRole.patient: 'PATIENT',
  UserRole.doctor: 'DOCTOR',
  UserRole.admin: 'ADMIN',
};

const _$UserStatusEnumMap = {
  UserStatus.pending: 'PENDING',
  UserStatus.active: 'ACTIVE',
  UserStatus.blocked: 'BLOCKED',
};

const _$UserGenderEnumMap = {
  UserGender.male: 'MALE',
  UserGender.female: 'FEMALE',
  UserGender.unknown: 'UNKNOWN',
};

const _$UserEmailStatusEnumMap = {
  UserEmailStatus.verified: 'VERIFIED',
  UserEmailStatus.unverified: 'UNVERIFIED',
};

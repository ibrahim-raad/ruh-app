// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterDto _$RegisterDtoFromJson(Map<String, dynamic> json) => _RegisterDto(
  email: json['email'] as String,
  password: json['password'] as String,
  fullName: json['full_name'] as String,
  role: json['role'] as String? ?? 'PATIENT',
);

Map<String, dynamic> _$RegisterDtoToJson(_RegisterDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'full_name': instance.fullName,
      'role': instance.role,
    };

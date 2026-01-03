// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Certificate _$CertificateFromJson(Map<String, dynamic> json) => _Certificate(
  id: json['id'] as String,
  title: json['title'] as String,
  issuer: json['issuer'] as String,
  issuedDate: DateTime.parse(json['issued_date'] as String),
  description: json['description'] as String?,
  specializationId: json['specialization_id'] as String?,
  fileUrl: json['file_url'] as String?,
);

Map<String, dynamic> _$CertificateToJson(_Certificate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'issuer': instance.issuer,
      'issued_date': instance.issuedDate.toIso8601String(),
      'description': instance.description,
      'specialization_id': instance.specializationId,
      'file_url': instance.fileUrl,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'therapist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TherapistOutput _$TherapistOutputFromJson(Map<String, dynamic> json) =>
    _TherapistOutput(
      id: json['id'] as String,
      version: (json['version'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      userId: json['user_id'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      bio: json['bio'] as String?,
      yearsOfExperience: (json['years_of_experience'] as num?)?.toInt(),
      ratePerHour: (json['rate_per_hour'] as num?)?.toInt(),
      currency: json['currency'] == null
          ? null
          : Currency.fromJson(json['currency'] as Map<String, dynamic>),
      currencyId: json['currency_id'] as String?,
      specializations:
          (json['specializations'] as List<dynamic>?)
              ?.map((e) => Specialization.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$TherapistOutputToJson(_TherapistOutput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'version': instance.version,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'user_id': instance.userId,
      'user': instance.user,
      'bio': instance.bio,
      'years_of_experience': instance.yearsOfExperience,
      'rate_per_hour': instance.ratePerHour,
      'currency': instance.currency,
      'currency_id': instance.currencyId,
      'specializations': instance.specializations,
    };

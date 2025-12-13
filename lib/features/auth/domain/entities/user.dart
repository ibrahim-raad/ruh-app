import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruh/core/domain/entities/countries/country.dart';
import 'package:ruh/core/domain/entities/languages/language.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    required String email,
    @JsonKey(name: 'full_name') required String fullName,
    required UserRole role,
    @Default(UserStatus.pending) UserStatus status,
    @Default(UserGender.unknown) UserGender gender,
    @Default(UserEmailStatus.unverified) UserEmailStatus emailStatus,
    @Default(null) Country? country,
    @JsonKey(name: 'country_id') required String countryId,
    @JsonKey(name: 'date_of_birth') @Default(null) DateTime? dateOfBirth,
    @JsonKey(name: 'profile_url') @Default(null) String? profileUrl,
    @JsonKey(name: 'spoken_languages')
    @Default([])
    List<Language>? spokenLanguages,
    @JsonKey(name: 'version') @Default(0) int version,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'deleted_at') @Default(null) DateTime? deletedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum UserRole { patient, doctor, admin }

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum UserStatus { pending, active, blocked }

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum UserGender { male, female, unknown }

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum UserEmailStatus { verified, unverified }

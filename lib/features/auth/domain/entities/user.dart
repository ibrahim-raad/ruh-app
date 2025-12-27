import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruh/features/lookups/domain/entities/country.dart';
import 'package:ruh/features/lookups/domain/entities/language.dart';

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
    Country? country,
    @JsonKey(name: 'country_id') required String countryId,
    @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
    @JsonKey(name: 'profile_url') String? profileUrl,
    @JsonKey(name: 'spoken_languages')
    @Default([])
    List<Language>? spokenLanguages,
    @JsonKey(name: 'version') @Default(0) int version,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
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

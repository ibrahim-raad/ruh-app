import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruh/core/domain/entities/languages/language.dart';
import 'package:ruh/features/auth/domain/entities/user.dart';
part 'update_patient_profile_dto.freezed.dart';
part 'update_patient_profile_dto.g.dart';

@freezed
abstract class UpdatePatientProfileDto with _$UpdatePatientProfileDto {
  const factory UpdatePatientProfileDto({
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'date_of_birth') required DateTime dateOfBirth,
    @JsonKey(name: 'gender') required UserGender gender,
    @JsonKey(name: 'country_id') required String countryId,
    @JsonKey(name: 'spoken_languages')
    @Default([])
    List<Language> spokenLanguages,
    required int version,
    @JsonKey(name: 'patient_version') required int patientVersion,
  }) = _UpdatePatientProfileDto;

  factory UpdatePatientProfileDto.fromJson(Map<String, dynamic> json) =>
      _$UpdatePatientProfileDtoFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruh/features/auth/domain/entities/user.dart';

part 'patient_profile.freezed.dart';
part 'patient_profile.g.dart';

@freezed
abstract class Patient with _$Patient {
  const factory Patient({
    required String id,
    required int version,
    required User user,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Patient;

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
}

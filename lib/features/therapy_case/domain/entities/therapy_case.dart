import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruh/core/network/models/auditable_output.dart';
import 'package:ruh/features/patient_profile/domain/entities/patient_profile.dart';
import 'package:ruh/features/therapists/domain/entities/therapist.dart';

part 'therapy_case.freezed.dart';
part 'therapy_case.g.dart';

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum TherapyCaseStatus { active, closed, transferred }

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum TherapyCaseType { therapist, psychiatrist }

@freezed
abstract class TherapyCase with _$TherapyCase implements AuditableOutput {
  const factory TherapyCase({
    required String id,
    required int version,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,

    String? notes,
    required TherapyCaseType type,
    required TherapyCaseStatus status,
    @JsonKey(name: 'first_session_at') DateTime? firstSessionAt,
    @JsonKey(name: 'last_session_at') DateTime? lastSessionAt,
    @JsonKey(name: 'total_sessions') required int totalSessions,

    required Patient patient,
    required TherapistOutput therapist,

    @JsonKey(name: 'transferred_to') TherapyCase? transferredTo,

    @JsonKey(name: 'patient_id') String? patientId,
    @JsonKey(name: 'therapist_id') String? therapistId,
    @JsonKey(name: 'transferred_to_id') String? transferredToId,
  }) = _TherapyCase;

  factory TherapyCase.fromJson(Map<String, dynamic> json) =>
      _$TherapyCaseFromJson(json);
}

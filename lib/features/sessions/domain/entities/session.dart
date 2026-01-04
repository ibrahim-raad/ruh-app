import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruh/core/network/models/auditable_output.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum SessionType { first, followUp }

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum SessionStatus {
  pending,
  completed,
  cancelled,
  confirmed,
  missed,
  rescheduled,
}

@freezed
abstract class Session with _$Session implements AuditableOutput {
  const factory Session({
    required String id,
    required int version,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,

    @JsonKey(name: 'therapy_case_id') String? therapyCaseId,

    @JsonKey(name: 'start_time') required DateTime startTime,
    @JsonKey(name: 'end_time') required DateTime endTime,
    @JsonKey(name: 'actual_start_time') DateTime? actualStartTime,
    @JsonKey(name: 'actual_end_time') DateTime? actualEndTime,

    String? link,
    @JsonKey(name: 'audio_link') String? audioLink,
    @JsonKey(name: 'patient_feedback') String? patientFeedback,

    required SessionType type,
    required SessionStatus status,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}

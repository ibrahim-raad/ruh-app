import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_answer.freezed.dart';
part 'patient_answer.g.dart';

@freezed
abstract class PatientAnswer with _$PatientAnswer {
  const factory PatientAnswer({
    required String id,
    @JsonKey(name: 'possible_answer_id') String? possibleAnswerId,
    String? answer,
    @JsonKey(name: 'patient_id') required String patientId,
    @JsonKey(name: 'question_id') required String questionId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _PatientAnswer;

  factory PatientAnswer.fromJson(Map<String, dynamic> json) =>
      _$PatientAnswerFromJson(json);
}

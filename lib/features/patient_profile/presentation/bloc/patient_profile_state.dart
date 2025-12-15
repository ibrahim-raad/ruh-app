import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/patient_profile.dart';

part 'patient_profile_state.freezed.dart';

enum PatientProfileStatus { initial, loading, success, failure }

@freezed
abstract class PatientProfileState with _$PatientProfileState {
  const factory PatientProfileState({
    @Default(PatientProfileStatus.initial) PatientProfileStatus status,
    Patient? patient,
    Failure? failure,
  }) = _PatientProfileState;

  factory PatientProfileState.initial() => const PatientProfileState();
}

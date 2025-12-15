import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/dtos/update_patient_profile_dto.dart';

part 'patient_profile_event.freezed.dart';

@freezed
class PatientProfileEvent with _$PatientProfileEvent {
  const factory PatientProfileEvent.getProfile() = _GetProfile;
  const factory PatientProfileEvent.updateProfile(UpdatePatientProfileDto dto) =
      _UpdateProfile;
  const factory PatientProfileEvent.uploadImage(File image) = _UploadImage;
  const factory PatientProfileEvent.deleteImage() = _DeleteImage;
}

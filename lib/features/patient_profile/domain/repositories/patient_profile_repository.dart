import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:ruh/features/auth/domain/entities/user.dart';
import 'package:ruh/features/patient_profile/domain/dtos/update_patient_profile_dto.dart';
import '../../../../core/errors/failures.dart';
import '../entities/patient_profile.dart';

abstract class PatientProfileRepository {
  Future<Either<Failure, Patient>> getPatientProfile();
  Future<Either<Failure, Patient>> updatePatientProfile(
    UpdatePatientProfileDto dto,
  );
  Future<Either<Failure, User>> uploadProfileImage(File image);
  Future<Either<Failure, User>> deleteProfileImage();
}

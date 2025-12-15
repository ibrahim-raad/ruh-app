import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/features/auth/domain/entities/user.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/patient_profile_repository.dart';

@lazySingleton
class UploadProfileImage implements UseCase<User, File> {
  final PatientProfileRepository _repository;

  UploadProfileImage(this._repository);

  @override
  Future<Either<Failure, User>> call(File params) {
    return _repository.uploadProfileImage(params);
  }
}

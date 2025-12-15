import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/features/auth/domain/entities/user.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/patient_profile_repository.dart';

@lazySingleton
class DeleteProfileImage implements UseCase<User, NoParams> {
  final PatientProfileRepository _repository;

  DeleteProfileImage(this._repository);

  @override
  Future<Either<Failure, User>> call(NoParams params) {
    return _repository.deleteProfileImage();
  }
}

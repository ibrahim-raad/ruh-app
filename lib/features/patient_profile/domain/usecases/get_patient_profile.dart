import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/patient_profile.dart';
import '../repositories/patient_profile_repository.dart';

@lazySingleton
class GetPatientProfile implements UseCase<Patient, NoParams> {
  final PatientProfileRepository _repository;

  GetPatientProfile(this._repository);

  @override
  Future<Either<Failure, Patient>> call(NoParams params) {
    return _repository.getPatientProfile();
  }
}

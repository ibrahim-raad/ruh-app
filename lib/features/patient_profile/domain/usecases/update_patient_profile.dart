import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../dtos/update_patient_profile_dto.dart';
import '../entities/patient_profile.dart';
import '../repositories/patient_profile_repository.dart';

@lazySingleton
class UpdatePatientProfile
    implements UseCase<Patient, UpdatePatientProfileDto> {
  final PatientProfileRepository _repository;

  UpdatePatientProfile(this._repository);

  @override
  Future<Either<Failure, Patient>> call(UpdatePatientProfileDto params) {
    return _repository.updatePatientProfile(params);
  }
}

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/usecases/usecase.dart';
import 'package:ruh/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class RequestPasswordReset implements UseCase<void, String> {
  final AuthRepository _repository;

  RequestPasswordReset(this._repository);

  @override
  Future<Either<Failure, void>> call(String email) =>
      _repository.requestPasswordReset(email);
}

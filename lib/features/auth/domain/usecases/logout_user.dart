import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/usecases/usecase.dart';
import 'package:ruh/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class LogoutUser implements UseCase<void, NoParams> {
  final AuthRepository _repository;

  LogoutUser(this._repository);

  @override
  Future<Either<Failure, void>> call(NoParams params) async {
    return _repository.logout();
  }
}

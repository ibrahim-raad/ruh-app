import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/usecases/usecase.dart';
import 'package:ruh/features/auth/domain/dtos/register_dto.dart';
import 'package:ruh/features/auth/domain/entities/user.dart';
import 'package:ruh/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class RegisterUser implements UseCase<User, RegisterDto> {
  final AuthRepository _repository;

  RegisterUser(this._repository);

  @override
  Future<Either<Failure, User>> call(RegisterDto dto) async {
    return _repository.register(dto);
  }
}

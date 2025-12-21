import 'package:ruh/features/auth/domain/dtos/login_dto.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/usecases/usecase.dart';
import 'package:ruh/features/auth/domain/entities/user.dart';
import 'package:ruh/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class LoginUser implements UseCase<User, LoginDto> {
  final AuthRepository _repository;

  LoginUser(this._repository);

  @override
  Future<Either<Failure, User>> call(LoginDto dto) async {
    return _repository.login(dto);
  }
}

import 'package:ruh/features/auth/domain/dtos/login_dto.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/user.dart';
import '../repositories/auth_repository.dart';

@lazySingleton
class LoginUser implements UseCase<User, LoginDto> {
  final AuthRepository _repository;

  LoginUser(this._repository);

  @override
  Future<Either<Failure, User>> call(LoginDto dto) async {
    await Future.delayed(const Duration(seconds: 2));
    return _repository.login(dto);
  }
}

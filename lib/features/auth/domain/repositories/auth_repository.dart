import 'package:fpdart/fpdart.dart';
import 'package:ruh/features/auth/domain/dtos/register_dto.dart';
import '../../../../core/errors/failures.dart';
import '../entities/user.dart';
import '../dtos/login_dto.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> login(LoginDto dto);
  Future<Either<Failure, void>> logout();
  Future<Either<Failure, User>> getCurrentUser();
  Future<Either<Failure, User>> register(RegisterDto dto);
  Future<Either<Failure, void>> requestPasswordReset(String email);
}

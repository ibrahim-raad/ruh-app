import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';
import '../entities/user.dart';
import '../dtos/login_dto.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> login(LoginDto dto);
  Future<Either<Failure, void>> logout();
  Future<Either<Failure, User>> getCurrentUser();
}

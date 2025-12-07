import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';

abstract class SplashRepository {
  Future<Either<Failure, bool>> isFirstTime();
  Future<Either<Failure, void>> setFirstTimeCompleted();
}

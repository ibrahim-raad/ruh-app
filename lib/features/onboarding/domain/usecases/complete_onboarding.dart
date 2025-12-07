import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../splash/domain/repositories/splash_repository.dart';

@lazySingleton
class CompleteOnboarding implements UseCase<void, NoParams> {
  final SplashRepository _splashRepository;

  CompleteOnboarding(this._splashRepository);

  @override
  Future<Either<Failure, void>> call(NoParams params) async {
    return _splashRepository.setFirstTimeCompleted();
  }
}

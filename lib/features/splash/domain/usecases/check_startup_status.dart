import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/features/splash/domain/entities/app_start_status_enum.dart';
import '../../../../core/errors/failures.dart';
import '../../../auth/domain/repositories/auth_repository.dart';
import '../repositories/splash_repository.dart';

@lazySingleton
class CheckStartupStatus {
  final SplashRepository _splashRepository;
  final AuthRepository _authRepository;

  CheckStartupStatus(this._splashRepository, this._authRepository);

  Future<Either<Failure, AppStartStatus>> call() async {
    final isFirstTimeResult = await _splashRepository.isFirstTime();

    return isFirstTimeResult.fold((failure) => Left(failure), (
      isFirstTime,
    ) async {
      if (isFirstTime) {
        return const Right(AppStartStatus.onboarding);
      }

      final authResult = await _authRepository.getCurrentUser();

      return authResult.fold(
        (failure) => const Right(AppStartStatus.unauthenticated),
        (user) => const Right(AppStartStatus.authenticated),
      );
    });
  }
}

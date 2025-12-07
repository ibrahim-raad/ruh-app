import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/errors/app_error.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/onboarding_item.dart';
import '../../domain/repositories/onboarding_repository.dart';
import '../datasources/onboarding_local_datasource.dart';

@LazySingleton(as: OnboardingRepository)
class OnboardingRepositoryImpl implements OnboardingRepository {
  final OnboardingLocalDataSource _localDataSource;

  OnboardingRepositoryImpl(this._localDataSource);

  @override
  Future<Either<Failure, List<OnboardingItem>>> getItems() async {
    try {
      final items = await _localDataSource.getOnboardingItems();
      return Right(items);
    } catch (e) {
      return Left(CacheFailure(AppError.cacheError.name));
    }
  }
}

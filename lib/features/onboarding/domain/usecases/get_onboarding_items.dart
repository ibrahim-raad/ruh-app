import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/onboarding_item.dart';
import '../repositories/onboarding_repository.dart';

@lazySingleton
class GetOnboardingItems implements UseCase<List<OnboardingItem>, NoParams> {
  final OnboardingRepository _repository;

  GetOnboardingItems(this._repository);

  @override
  Future<Either<Failure, List<OnboardingItem>>> call(NoParams params) async {
    return _repository.getItems();
  }
}

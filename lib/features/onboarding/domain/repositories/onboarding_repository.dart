import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';
import '../entities/onboarding_item.dart';

abstract class OnboardingRepository {
  Future<Either<Failure, List<OnboardingItem>>> getItems();
}

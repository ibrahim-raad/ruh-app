import 'package:injectable/injectable.dart';
import '../../domain/entities/onboarding_item.dart';

abstract class OnboardingLocalDataSource {
  Future<List<OnboardingItem>> getOnboardingItems();
}

@LazySingleton(as: OnboardingLocalDataSource)
class OnboardingLocalDataSourceImpl implements OnboardingLocalDataSource {
  @override
  Future<List<OnboardingItem>> getOnboardingItems() async {
    return const [
      OnboardingItem(
        title: 'Welcome to Ruh Therapy',
        description: 'A calm space to connect, reflect, and grow.',
        image: 'assets/images/onboarding-1.jpg',
      ),
      OnboardingItem(
        title: 'Connect with Trusted Therapists',
        description:
            'Find someone who truly understands you and your journey. Connect with trusted therapists from around the world.',
        image: 'assets/images/onboarding-2.jpg',
      ),
      OnboardingItem(
        title: 'Reflect on Your Journey',
        description:
            'Track your progress and reflect on your growth with our guided tools.',
        image: 'assets/images/onboarding-3.jpg',
      ),
      OnboardingItem(
        title: 'Start Your Healing',
        description: 'Join our community and start your healing journey today.',
        image: 'assets/images/intro-4.jpg',
      ),
    ];
  }
}

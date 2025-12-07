import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_event.freezed.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.started() = _Started;
  const factory OnboardingEvent.pageChanged(int index) = _PageChanged;
  const factory OnboardingEvent.completeOnboarding() = _CompleteOnboarding;
}

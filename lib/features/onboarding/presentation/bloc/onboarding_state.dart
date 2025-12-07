import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruh/core/errors/failures.dart';
import '../../domain/entities/onboarding_item.dart';

part 'onboarding_state.freezed.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = _Initial;
  const factory OnboardingState.loading() = _Loading;
  const factory OnboardingState.content({
    required List<OnboardingItem> items,
    required int currentIndex,
  }) = _Content;
  const factory OnboardingState.completed() = _Completed;
  const factory OnboardingState.failure(Failure failure) = _Failure;
}

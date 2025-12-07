import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/usecases/complete_onboarding.dart';
import '../../domain/usecases/get_onboarding_items.dart';
import 'onboarding_event.dart';
import 'onboarding_state.dart';

@injectable
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final GetOnboardingItems _getOnboardingItems;
  final CompleteOnboarding _completeOnboarding;

  OnboardingBloc(this._getOnboardingItems, this._completeOnboarding)
    : super(const OnboardingState.initial()) {
    on<OnboardingEvent>((event, emit) async {
      await event.map(
        started: (_) async {
          emit(const OnboardingState.loading());
          final result = await _getOnboardingItems(NoParams());
          result.fold(
            (failure) => emit(OnboardingState.failure(failure)),
            (items) =>
                emit(OnboardingState.content(items: items, currentIndex: 0)),
          );
        },
        pageChanged: (e) async {
          state.mapOrNull(
            content: (currentState) {
              emit(currentState.copyWith(currentIndex: e.index));
            },
          );
        },
        completeOnboarding: (_) async {
          final result = await _completeOnboarding(NoParams());
          result.fold(
            (failure) => emit(OnboardingState.failure(failure)),
            (_) => emit(const OnboardingState.completed()),
          );
        },
      );
    });
  }
}

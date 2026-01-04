import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/features/therapy_case/domain/entities/therapy_case.dart';
import 'package:ruh/features/sessions/domain/entities/session.dart';

class HomeState {
  final bool isLoading;
  final Failure? failure;
  final List<TherapyCase> activeCases;
  final bool isLoadingNextSession;
  final Failure? nextSessionFailure;
  final Session? nextSession;

  const HomeState({
    required this.isLoading,
    required this.failure,
    required this.activeCases,
    required this.isLoadingNextSession,
    required this.nextSessionFailure,
    required this.nextSession,
  });

  factory HomeState.initial() => const HomeState(
    isLoading: false,
    failure: null,
    activeCases: <TherapyCase>[],
    isLoadingNextSession: false,
    nextSessionFailure: null,
    nextSession: null,
  );

  HomeState copyWith({
    bool? isLoading,
    Failure? failure,
    bool clearFailure = false,
    List<TherapyCase>? activeCases,
    bool? isLoadingNextSession,
    Failure? nextSessionFailure,
    bool clearNextSessionFailure = false,
    Session? nextSession,
    bool clearNextSession = false,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      failure: clearFailure ? null : (failure ?? this.failure),
      activeCases: activeCases ?? this.activeCases,
      isLoadingNextSession: isLoadingNextSession ?? this.isLoadingNextSession,
      nextSessionFailure: clearNextSessionFailure
          ? null
          : (nextSessionFailure ?? this.nextSessionFailure),
      nextSession: clearNextSession ? null : (nextSession ?? this.nextSession),
    );
  }
}

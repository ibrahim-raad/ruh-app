import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/features/therapy_case/domain/entities/therapy_case.dart';

class HomeState {
  final bool isLoading;
  final Failure? failure;
  final List<TherapyCase> activeCases;

  const HomeState({
    required this.isLoading,
    required this.failure,
    required this.activeCases,
  });

  factory HomeState.initial() => const HomeState(
    isLoading: false,
    failure: null,
    activeCases: <TherapyCase>[],
  );

  HomeState copyWith({
    bool? isLoading,
    Failure? failure,
    bool clearFailure = false,
    List<TherapyCase>? activeCases,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      failure: clearFailure ? null : (failure ?? this.failure),
      activeCases: activeCases ?? this.activeCases,
    );
  }
}

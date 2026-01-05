import 'package:ruh/core/errors/failures.dart';

final class ForgotPasswordState {
  final bool isLoading;
  final bool isSuccess;
  final Failure? failure;

  const ForgotPasswordState({
    required this.isLoading,
    required this.isSuccess,
    required this.failure,
  });

  factory ForgotPasswordState.initial() => const ForgotPasswordState(
    isLoading: false,
    isSuccess: false,
    failure: null,
  );

  ForgotPasswordState copyWith({
    bool? isLoading,
    bool? isSuccess,
    Failure? failure,
    bool clearFailure = false,
  }) {
    return ForgotPasswordState(
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
      failure: clearFailure ? null : (failure ?? this.failure),
    );
  }
}

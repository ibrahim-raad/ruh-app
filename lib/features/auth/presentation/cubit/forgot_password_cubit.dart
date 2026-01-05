import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ruh/features/auth/domain/usecases/request_password_reset.dart';
import 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final RequestPasswordReset _requestPasswordReset;

  ForgotPasswordCubit(this._requestPasswordReset)
    : super(ForgotPasswordState.initial());

  Future<void> submit(String email) async {
    final normalized = email.trim();
    if (normalized.isEmpty) return;

    emit(state.copyWith(isLoading: true, clearFailure: true));
    final result = await _requestPasswordReset(normalized);
    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure)),
      (_) => emit(
        state.copyWith(isLoading: false, isSuccess: true, clearFailure: true),
      ),
    );
  }
}

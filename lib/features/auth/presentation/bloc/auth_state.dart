import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user.dart';
import '../../../../core/errors/failures.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  // 1. Initial state (nothing happened yet)
  const factory AuthState.initial() = _Initial;

  // 2. Loading spinner (Network request in progress)
  const factory AuthState.loading() = _Loading;

  // 3. Success (User logged in) - Holds the User object!
  const factory AuthState.authenticated(User user) = _Authenticated;

  // 4. Not Logged In (User needs to login)
  const factory AuthState.unauthenticated() = _Unauthenticated;

  // 5. Error (Wrong password, Server down) - Holds the error message
  const factory AuthState.failure(Failure failure) = _FailureState;
}

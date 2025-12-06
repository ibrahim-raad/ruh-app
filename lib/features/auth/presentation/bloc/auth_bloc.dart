import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/login_user.dart';
import '../../domain/repositories/auth_repository.dart';
import 'auth_event.dart';
import 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUser _loginUser;
  final AuthRepository _authRepository;

  AuthBloc(this._loginUser, this._authRepository)
    : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        login: (e) async {
          emit(const AuthState.loading());
          final result = await _loginUser(e.loginDto);
          result.fold(
            (failure) => emit(AuthState.failure(failure)),
            (user) => emit(AuthState.authenticated(user)),
          );
        },
        logout: (e) async {
          emit(const AuthState.loading());
          await _authRepository.logout();
          emit(const AuthState.unauthenticated());
        },
        checkAuthStatus: (e) async {
          // Implement logic later
          emit(const AuthState.unauthenticated());
        },
      );
    });
  }
}

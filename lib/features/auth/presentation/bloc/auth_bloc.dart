import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/usecases/usecase.dart';
import 'package:ruh/features/auth/domain/usecases/logout_user.dart';
import 'package:ruh/features/auth/domain/usecases/register_user.dart';
import 'package:ruh/features/auth/domain/repositories/auth_repository.dart';
import '../../../../core/di/injection.dart';
import '../../domain/usecases/login_user.dart';
import 'auth_event.dart';
import 'auth_state.dart';

@lazySingleton
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUser _loginUser;
  final RegisterUser _registerUser;
  final LogoutUser _logoutUser;

  AuthBloc(this._loginUser, this._registerUser, this._logoutUser)
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
          final result = await _logoutUser(NoParams());
          result.fold(
            (failure) => emit(AuthState.failure(failure)),
            (_) => emit(const AuthState.unauthenticated()),
          );
        },
        register: (e) async {
          emit(const AuthState.loading());
          final result = await _registerUser(e.registerDto);
          result.fold(
            (failure) => emit(AuthState.failure(failure)),
            (user) => emit(AuthState.authenticated(user)),
          );
        },
        checkAuthStatus: (e) async {
          emit(const AuthState.loading());
          final result = await getIt<AuthRepository>().getCurrentUser();
          result.fold(
            (_) => emit(const AuthState.unauthenticated()),
            (user) => emit(AuthState.authenticated(user)),
          );
        },
      );
    });
  }
}

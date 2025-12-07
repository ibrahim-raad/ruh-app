import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/features/splash/domain/usecases/check_startup_status.dart';
import 'package:ruh/features/splash/domain/entities/app_start_status_enum.dart';
import 'splash_event.dart';
import 'splash_state.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final CheckStartupStatus _checkStartupStatus;

  SplashBloc(this._checkStartupStatus) : super(const SplashState.initial()) {
    on<SplashEvent>((event, emit) async {
      await event.map(
        started: (_) async {
          emit(const SplashState.loading());

          await Future.delayed(const Duration(seconds: 3));

          final result = await _checkStartupStatus();

          result.fold(
            (failure) => emit(const SplashState.navigateToOnboarding()),
            (status) {
              switch (status) {
                case AppStartStatus.onboarding:
                  emit(const SplashState.navigateToOnboarding());
                  break;
                case AppStartStatus.unauthenticated:
                  emit(const SplashState.navigateToLogin());
                  break;
                case AppStartStatus.authenticated:
                  emit(const SplashState.navigateToHome());
                  break;
              }
            },
          );
        },
      );
    });
  }
}

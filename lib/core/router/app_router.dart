import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ruh/features/auth/presentation/pages/register_page.dart';
import 'package:ruh/features/patient_profile/presentation/pages/edit_profile_page.dart';
import 'package:ruh/features/splash/presentation/pages/splash_page.dart';
import '../di/injection.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/onboarding/presentation/pages/onboarding_page.dart';
import 'app_routes.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: AppRoutes.editProfile,
  refreshListenable: _AuthStream(getIt<AuthBloc>()),
  redirect: (context, state) {
    return null;
  },
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: AppRoutes.register,
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      path: AppRoutes.onboarding,
      builder: (context, state) => const OnboardingPage(),
    ),
    GoRoute(
      path: AppRoutes.editProfile,
      builder: (context, state) => const EditProfilePage(),
    ),
  ],
);

/// Converts Bloc Stream to Listenable for GoRouter
class _AuthStream extends ChangeNotifier {
  final AuthBloc _bloc;

  _AuthStream(this._bloc) {
    _bloc.stream.listen((_) => notifyListeners());
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:async';
import 'package:ruh/features/auth/presentation/pages/register_page.dart';
import 'package:ruh/features/patient_profile/presentation/pages/edit_profile_page.dart';
import 'package:ruh/features/questionnaire/domain/entities/questionnaire.dart';
import 'package:ruh/features/questionnaire/presentation/pages/questionnaire_page.dart';
import 'package:ruh/features/splash/presentation/pages/splash_page.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../features/auth/presentation/bloc/auth_state.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/onboarding/presentation/pages/onboarding_page.dart';
import 'app_routes.dart';

final navigatorKey = GlobalKey<NavigatorState>();

GoRouter createAppRouter(AuthBloc authBloc) => GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: AppRoutes.splash,
  refreshListenable: _AuthStream(authBloc),
  redirect: (context, state) {
    final AuthState authState = authBloc.state;
    final loc = state.matchedLocation;

    final publicRoutes = [
      AppRoutes.splash,
      AppRoutes.onboarding,
      AppRoutes.login,
      AppRoutes.register,
    ];
    final isPublicRoute = publicRoutes.contains(loc);

    final isInitial = authState.maybeMap(
      initial: (_) => true,
      orElse: () => false,
    );
    if (isInitial) {
      return isPublicRoute ? null : AppRoutes.splash;
    }

    final isAuthenticated = authState.maybeMap(
      authenticated: (_) => true,
      orElse: () => false,
    );

    if (!isAuthenticated) {
      return isPublicRoute ? null : AppRoutes.login;
    }

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
    GoRoute(
      path: AppRoutes.questionnaire(':type'),
      builder: (context, state) => QuestionnairePage(
        type: QuestionnaireType.values.byName(state.pathParameters['type']!),
      ),
    ),
  ],
);

/// Converts Bloc Stream to Listenable for GoRouter
class _AuthStream extends ChangeNotifier {
  final AuthBloc _bloc;
  late final StreamSubscription<AuthState> _sub;

  _AuthStream(this._bloc) {
    // Bloc streams don't replay the current state, so log it explicitly.
    debugPrint('state (initial): ${_bloc.state}');
    _sub = _bloc.stream.listen((state) {
      debugPrint('state: $state');
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }
}

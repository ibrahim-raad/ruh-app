import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ruh/features/splash/presentation/pages/splash_page.dart';
import '../di/injection.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../features/auth/presentation/bloc/auth_state.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import 'app_routes.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: AppRoutes.splash,
  refreshListenable: _AuthStream(getIt<AuthBloc>()),
  redirect: (context, state) {
    final authState = getIt<AuthBloc>().state;
    final isLoggedIn = authState.maybeMap(
      authenticated: (_) => true,
      orElse: () => false,
    );

    if (isLoggedIn) return AppRoutes.home;

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
  ],
);

/// Converts Bloc Stream to Listenable for GoRouter
class _AuthStream extends ChangeNotifier {
  final AuthBloc _bloc;

  _AuthStream(this._bloc) {
    _bloc.stream.listen((_) => notifyListeners());
  }
}

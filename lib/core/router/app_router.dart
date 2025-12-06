import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../di/injection.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../features/auth/presentation/bloc/auth_state.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import 'app_routes.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: AppRoutes.login,
  refreshListenable: _AuthStream(getIt<AuthBloc>()),
  redirect: (context, state) {
    final authState = getIt<AuthBloc>().state;
    final isLoggedIn = authState.maybeMap(
      authenticated: (_) => true,
      orElse: () => false,
    );

    final isLoggingIn = state.matchedLocation == AppRoutes.login;

    if (!isLoggedIn && !isLoggingIn) return AppRoutes.login;
    if (isLoggedIn && isLoggingIn) return AppRoutes.home;

    return null;
  },
  routes: [
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) => const LoginPage(),
    ),
    // Add Home Route here later
    // GoRoute(path: AppRoutes.home, builder: (context, state) => const HomePage()),
  ],
);

/// Converts Bloc Stream to Listenable for GoRouter
class _AuthStream extends ChangeNotifier {
  final AuthBloc _bloc;

  _AuthStream(this._bloc) {
    _bloc.stream.listen((_) => notifyListeners());
  }
}

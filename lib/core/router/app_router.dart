import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:async';
import 'package:ruh/features/auth/presentation/pages/register_page.dart';
import 'package:ruh/features/home/presentation/pages/home_page.dart';
import 'package:ruh/features/journal/presentation/pages/journal_page.dart';
import 'package:ruh/features/patient_profile/presentation/pages/edit_profile_page.dart';
import 'package:ruh/features/questionnaire/domain/entities/questionnaire.dart';
import 'package:ruh/features/questionnaire/presentation/pages/questionnaire_page.dart';
import 'package:ruh/features/sessions/presentation/pages/sessions_page.dart';
import 'package:ruh/features/sessions/presentation/pages/schedule_session_page.dart';
import 'package:ruh/features/splash/presentation/pages/splash_page.dart';
import 'package:ruh/features/therapists/presentation/pages/find_therapist_page.dart';
import 'package:ruh/features/therapists/presentation/pages/therapist_profile_page.dart';
import 'package:ruh/features/therapists/presentation/pages/transfer_therapist_request_page.dart';
import 'package:ruh/features/therapists/domain/entities/therapist.dart';
import 'package:ruh/shared/widgets/app_shell.dart';
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
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          AppShell(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.home,
              builder: (context, state) => const HomePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.journal,
              builder: (context, state) {
                final dayStr = state.uri.queryParameters['day'];
                DateTime? initialDay;
                if (dayStr != null && dayStr.trim().isNotEmpty) {
                  final parts = dayStr.split('-');
                  if (parts.length == 3) {
                    final y = int.tryParse(parts[0]);
                    final m = int.tryParse(parts[1]);
                    final d = int.tryParse(parts[2]);
                    if (y != null && m != null && d != null) {
                      initialDay = DateTime(y, m, d);
                    }
                  }
                }
                return JournalPage(initialDay: initialDay);
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.sessions,
              builder: (context, state) => const SessionsPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.profile,
              builder: (context, state) => const EditProfilePage(),
            ),
          ],
        ),
      ],
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
    GoRoute(
      path: AppRoutes.therapists,
      builder: (context, state) => FindTherapistPage(
        args: (state.extra is FindTherapistPageArgs)
            ? state.extra as FindTherapistPageArgs
            : const FindTherapistPageArgs(),
      ),
    ),
    GoRoute(
      path: AppRoutes.scheduleSession,
      builder: (context, state) {
        final args = state.extra as ScheduleSessionPageArgs;
        return ScheduleSessionPage(args: args);
      },
    ),
    GoRoute(
      path: AppRoutes.therapistProfile,
      builder: (context, state) {
        final therapist = state.extra as TherapistOutput;
        return TherapistProfilePage(therapist: therapist);
      },
    ),
    GoRoute(
      path: AppRoutes.transferTherapistRequest,
      builder: (context, state) {
        final args = state.extra;
        if (args is! TransferTherapistRequestPageArgs) {
          return const _TransferRequestMissingArgsPage();
        }
        return TransferTherapistRequestPage(args: args);
      },
    ),
  ],
);

class _TransferRequestMissingArgsPage extends StatelessWidget {
  const _TransferRequestMissingArgsPage();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Missing transfer request details. Please try again.'),
        ),
      ),
    );
  }
}

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

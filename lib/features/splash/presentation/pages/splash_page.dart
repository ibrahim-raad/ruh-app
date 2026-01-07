import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ruh/core/di/injection.dart';
import 'package:ruh/core/router/app_routes.dart';
import 'package:ruh/core/utils/l10n_extensions.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ruh/features/auth/presentation/bloc/auth_state.dart';
import 'package:ruh/shared/widgets/app_loader.dart';

import '../bloc/splash_bloc.dart';
import '../bloc/splash_event.dart';
import '../bloc/splash_state.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SplashBloc>()..add(const SplashEvent.started()),
      child: Builder(
        builder: (context) {
          return MultiBlocListener(
            listeners: [
              BlocListener<SplashBloc, SplashState>(
                listener: (context, state) => _checkNavigation(context),
              ),
              BlocListener<AuthBloc, AuthState>(
                listener: (context, state) => _checkNavigation(context),
              ),
            ],
            child: Scaffold(
              body: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [context.primary, context.secondary],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png', width: 250.w),
                    Text(
                      context.tr.ruh_therapy,
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: context.primary,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      context.tr.ruh_therapy_description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: context.onPrimary,
                      ),
                    ),
                    SizedBox(height: 200.h),
                    const AppLoader(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _checkNavigation(BuildContext context) {
    final splashState = context.read<SplashBloc>().state;
    final authState = context.read<AuthBloc>().state;

    final isAuthReady = authState.maybeMap(
      initial: (_) => false,
      loading: (_) => false,
      orElse: () => true,
    );

    if (!isAuthReady) return;

    splashState.mapOrNull(
      navigateToHome: (_) => context.go(AppRoutes.home),
      navigateToLogin: (_) => context.go(AppRoutes.login),
      navigateToOnboarding: (_) => context.go(AppRoutes.onboarding),
    );
  }
}

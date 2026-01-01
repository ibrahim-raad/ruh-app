import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart'; // Import GoRouter
import 'package:ruh/core/utils/l10n_extensions.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/shared/widgets/app_loader.dart';
import '../bloc/splash_bloc.dart';
import '../bloc/splash_event.dart';
import '../bloc/splash_state.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/router/app_routes.dart'; // Import Routes

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<SplashBloc>()..add(const SplashEvent.started()),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          state.mapOrNull(
            navigateToHome: (_) => context.go(AppRoutes.home),
            navigateToLogin: (_) => context.go(AppRoutes.login),
            navigateToOnboarding: (_) => context.go(AppRoutes.onboarding),
          );
        },
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
      ),
    );
  }
}

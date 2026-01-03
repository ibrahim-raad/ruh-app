import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ruh/core/router/app_routes.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ruh/features/auth/presentation/bloc/auth_state.dart';
import 'package:ruh/shared/widgets/app_shell.dart';
import '../widgets/explore_therapists_card.dart';
import '../widgets/home_greeting_header.dart';
import '../widgets/next_session_card.dart';
import '../widgets/quick_action_tile.dart';
import '../widgets/todays_prompt_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tab = ShellTabScope.of(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20.w, 18.h, 20.w, 24.h),
          child: Column(
            children: [
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  final fullName = state.mapOrNull(
                    authenticated: (s) => s.user.fullName,
                  );
                  final firstName = (fullName ?? '')
                      .trim()
                      .split(RegExp(r'\s+'))
                      .first;
                  return HomeGreetingHeader(
                    firstName: firstName.isEmpty ? 'there' : firstName,
                  );
                },
              ),
              SizedBox(height: 18.h),
              NextSessionCard(
                therapistName: 'dr. emily chen',
                therapyType: 'cognitive behavioral therapy',
                timeLabel: 'tomorrow, 3:00 pm',
                onJoin: () => tab.goToSessions(),
              ),
              SizedBox(height: 18.h),
              Row(
                children: [
                  Expanded(
                    child: QuickActionTile(
                      icon: Icons.sentiment_satisfied_alt_outlined,
                      iconBg: context.secondary.withValues(alpha: 0.25),
                      title: 'mood\ntracker',
                      subtitle: 'log your feelings',
                      height: 200.h,
                      onTap: () => tab.goToJournal(),
                    ),
                  ),
                  SizedBox(width: 14.w),
                  Expanded(
                    child: QuickActionTile(
                      icon: Icons.menu_book_rounded,
                      iconBg: context.tertiary.withValues(alpha: 0.6),
                      title: 'daily\nreflection',
                      subtitle: 'journal your\nthoughts',
                      height: 200.h,
                      onTap: () => tab.goToJournal(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18.h),
              TodaysPromptCard(
                prompt: 'what made you smile today?',
                onWrite: () => tab.goToJournal(),
              ),
              SizedBox(height: 18.h),
              ExploreTherapistsCard(
                onDiscover: () => context.push(AppRoutes.therapists),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

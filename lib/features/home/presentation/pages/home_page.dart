import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ruh/core/di/injection.dart';
import 'package:ruh/core/router/app_routes.dart';
import 'package:ruh/core/utils/failure_extensions.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ruh/features/auth/presentation/bloc/auth_state.dart';
import 'package:ruh/features/sessions/presentation/pages/schedule_session_page.dart';
import 'package:ruh/features/sessions/domain/entities/session.dart';
import 'package:ruh/features/sessions/domain/repositories/sessions_repository.dart';
import 'package:ruh/features/therapy_case/domain/entities/therapy_case.dart';
import 'package:ruh/features/therapy_case/domain/repositories/therapy_case_repository.dart';
import 'package:ruh/features/therapists/presentation/pages/find_therapist_page.dart';
import 'package:ruh/shared/widgets/app_empty_state.dart';
import 'package:ruh/shared/widgets/app_loader.dart';
import 'package:ruh/shared/widgets/app_shell.dart';
import 'package:intl/intl.dart';
import '../cubit/home_cubit.dart';
import '../cubit/home_state.dart';
import '../widgets/explore_therapists_card.dart';
import '../widgets/current_therapist_card.dart';
import '../widgets/home_greeting_header.dart';
import '../widgets/no_upcoming_session_card.dart';
import '../widgets/quick_action_tile.dart';
import '../widgets/next_session_card.dart';
import '../widgets/todays_prompt_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  String _caseSubtitle(TherapyCaseType type) {
    switch (type) {
      case TherapyCaseType.therapist:
        return 'your therapist';
      case TherapyCaseType.psychiatrist:
        return 'your psychiatrist';
    }
  }

  String _dateLabel(DateTime start) {
    final now = DateTime.now();
    final d0 = DateTime(now.year, now.month, now.day);
    final d1 = DateTime(start.year, start.month, start.day);
    final diff = d1.difference(d0).inDays;
    if (diff == 0) return 'today';
    if (diff == 1) return 'tomorrow';
    return DateFormat('EEE, MMM d').format(start).toLowerCase();
  }

  String _timeLabel(DateTime start) =>
      DateFormat('h:mm a').format(start).toLowerCase();

  String _nextSessionTypeLabel(Session s) {
    final tc = s.therapyCase;
    if (tc == null) {
      return s.type == SessionType.first
          ? 'first session'
          : 'follow-up session';
    }
    return tc.type == TherapyCaseType.therapist
        ? 'therapy session'
        : 'psychiatry session';
  }

  @override
  Widget build(BuildContext context) {
    final tab = ShellTabScope.of(context);

    return BlocProvider(
      create: (_) =>
          HomeCubit(getIt<TherapyCaseRepository>(), getIt<SessionsRepository>())
            ..loadActiveCases(),
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              final cases = state.activeCases;
              final hasCases = cases.isNotEmpty;
              final nextSession = state.nextSession;

              return SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(20.w, 18.h, 20.w, 24.h),
                child: Column(
                  children: [
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, authState) {
                        final fullName = authState.mapOrNull(
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

                    if (!hasCases) ...[
                      if (state.isLoading)
                        const Center(child: AppLoader())
                      else if (state.failure != null)
                        AppEmptyState(
                          icon: Icons.wifi_off_outlined,
                          title: 'could not load therapists',
                          subtitle: state.failure!.getErrorMessage(context),
                          primaryActionLabel: 'try again',
                          onPrimaryAction: context
                              .read<HomeCubit>()
                              .loadActiveCases,
                        )
                      else
                        ExploreTherapistsCard(
                          onDiscover: () => context.push(AppRoutes.therapists),
                        ),
                      SizedBox(height: 18.h),
                    ] else ...[
                      for (final tc in cases) ...[
                        Builder(
                          builder: (context) {
                            final therapistUser = tc.therapist.user;
                            final rawName = therapistUser?.fullName.trim();
                            final therapistName =
                                (rawName == null || rawName.isEmpty)
                                ? 'therapist'
                                : rawName;

                            return CurrentTherapistCard(
                              therapistName: therapistName.toLowerCase(),
                              subtitle: _caseSubtitle(tc.type),
                              avatarUrl: therapistUser?.profileUrl,
                              onBookSession: () => context.push(
                                AppRoutes.scheduleSession,
                                extra: ScheduleSessionPageArgs(
                                  mode: ScheduleSessionMode.book,
                                  therapistName: therapistName,
                                ),
                              ),
                              onTransferRequest: () => context.push(
                                AppRoutes.therapists,
                                extra: FindTherapistPageArgs(
                                  isTransferFlow: true,
                                  currentTherapistName: therapistName,
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 18.h),
                      ],
                    ],

                    if (nextSession != null) ...[
                      Builder(
                        builder: (context) {
                          final therapistUser =
                              nextSession.therapyCase?.therapist.user;
                          final rawName = therapistUser?.fullName.trim();
                          final therapistName =
                              (rawName == null || rawName.isEmpty)
                              ? 'therapist'
                              : rawName;
                          final timeLabel =
                              '${_dateLabel(nextSession.startTime)}, ${_timeLabel(nextSession.startTime)}';
                          return NextSessionCard(
                            therapistName: therapistName.toLowerCase(),
                            therapyType: _nextSessionTypeLabel(nextSession),
                            timeLabel: timeLabel,
                            // Link is not returned yet; route to Sessions for now.
                            onJoin: () => tab.goToSessions(),
                          );
                        },
                      ),
                    ] else ...[
                      NoUpcomingSessionCard(
                        onViewSessions: () => tab.goToSessions(),
                      ),
                    ],
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

                    if (!hasCases)
                      ExploreTherapistsCard(
                        onDiscover: () => context.push(AppRoutes.therapists),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

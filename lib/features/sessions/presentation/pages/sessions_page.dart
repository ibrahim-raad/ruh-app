import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:ruh/core/di/injection.dart';
import 'package:ruh/core/utils/app_toast.dart';
import 'package:ruh/core/router/app_routes.dart';
import 'package:ruh/core/utils/failure_extensions.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/features/sessions/domain/entities/session.dart';
import 'package:ruh/features/sessions/domain/repositories/sessions_repository.dart';
import 'package:ruh/features/sessions/presentation/cubit/sessions_cubit.dart';
import 'package:ruh/features/sessions/presentation/cubit/sessions_state.dart';
import 'package:ruh/features/sessions/presentation/pages/schedule_session_page.dart';
import 'package:ruh/features/sessions/presentation/widgets/session_card.dart';
import 'package:ruh/features/sessions/presentation/widgets/sessions_header.dart';
import 'package:ruh/features/sessions/presentation/widgets/sessions_segmented_control.dart';
import 'package:ruh/shared/widgets/app_empty_state.dart';
import 'package:ruh/shared/widgets/app_loader.dart';

class SessionsPage extends StatefulWidget {
  const SessionsPage({super.key});

  @override
  State<SessionsPage> createState() => _SessionsPageState();
}

class _SessionsPageState extends State<SessionsPage> {
  late final SessionsCubit _cubit;
  final _scrollController = ScrollController();

  String _formatTime(DateTime dt) =>
      DateFormat('h:mm a').format(dt).toLowerCase();

  String _formatDate(DateTime dt) =>
      DateFormat('MMM d, yyyy').format(dt).toLowerCase();

  String _durationLabel(Duration d) => '${d.inMinutes} min';

  String _dateLabel(DateTime start) {
    final today = DateTime.now();
    final d0 = DateTime(today.year, today.month, today.day);
    final d1 = DateTime(start.year, start.month, start.day);
    final diff = d1.difference(d0).inDays;
    if (diff == 0) return 'today';
    if (diff == 1) return 'tomorrow';
    if (diff == -1) return 'yesterday';
    return _formatDate(start);
  }

  String _therapyTypeLabel(Session s) {
    switch (s.type) {
      case SessionType.first:
        return 'first session';
      case SessionType.followUp:
        return 'follow-up session';
    }
  }

  @override
  void initState() {
    super.initState();
    _cubit = SessionsCubit(getIt<SessionsRepository>())..init();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _cubit.close();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final max = _scrollController.position.maxScrollExtent;
    final current = _scrollController.position.pixels;
    if (current >= max - 250) {
      _cubit.loadNext();
    }
  }

  void _comingSoon() {
    AppToast.showSuccess(context, 'Coming soon');
  }

  void _openReschedule(Session s) {
    context.push(
      AppRoutes.scheduleSession,
      extra: ScheduleSessionPageArgs(
        mode: ScheduleSessionMode.reschedule,
        // TODO: Show real therapist name when therapy case is wired.
        therapistName: 'your therapist',
        currentSessionDateTime: s.startTime,
        currentSessionDuration: s.endTime.difference(s.startTime),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: BlocBuilder<SessionsCubit, SessionsState>(
        builder: (context, state) {
          final isUpcoming = state.selected == SessionsSegment.upcoming;
          final items = state.currentItems;
          final isLoading = state.currentIsLoading;
          final failure = state.currentFailure;

          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.w, 18.h, 20.w, 24.h),
                child: Column(
                  children: [
                    const SessionsHeader(),
                    SizedBox(height: 16.h),
                    SessionsSegmentedControl(
                      selected: state.selected,
                      onChanged: _cubit.selectSegment,
                    ),
                    SizedBox(height: 16.h),
                    Expanded(
                      child: RefreshIndicator(
                        onRefresh: _cubit.refreshCurrent,
                        child: Builder(
                          builder: (context) {
                            if (isLoading && items.isEmpty) {
                              return const Center(child: AppLoader());
                            }

                            if (failure != null && items.isEmpty) {
                              return ListView(
                                physics: const AlwaysScrollableScrollPhysics(),
                                children: [
                                  AppEmptyState(
                                    icon: Icons.wifi_off_outlined,
                                    title: 'could not load sessions',
                                    subtitle: failure.getErrorMessage(context),
                                    primaryActionLabel: 'try again',
                                    onPrimaryAction: () =>
                                        _cubit.refreshCurrent(),
                                  ),
                                ],
                              );
                            }

                            if (items.isEmpty) {
                              return ListView(
                                physics: const AlwaysScrollableScrollPhysics(),
                                children: [
                                  AppEmptyState(
                                    icon: isUpcoming
                                        ? Icons.event_available_outlined
                                        : Icons.history_toggle_off_outlined,
                                    title: isUpcoming
                                        ? 'no upcoming sessions'
                                        : 'no past sessions',
                                    subtitle: isUpcoming
                                        ? 'book a session with a therapist and it will appear here.'
                                        : 'once you complete sessions, you’ll see them here.',
                                    primaryActionLabel: isUpcoming
                                        ? 'find a therapist'
                                        : 'browse therapists',
                                    onPrimaryAction: () =>
                                        context.push(AppRoutes.therapists),
                                  ),
                                ],
                              );
                            }

                            return ListView.separated(
                              controller: _scrollController,
                              physics: const AlwaysScrollableScrollPhysics(),
                              itemCount:
                                  items.length +
                                  (state.currentIsLoadingMore ? 1 : 0) +
                                  (state.currentLoadMoreFailure != null
                                      ? 1
                                      : 0),
                              separatorBuilder: (_, _) =>
                                  SizedBox(height: 14.h),
                              itemBuilder: (context, index) {
                                if (index < items.length) {
                                  final s = items[index];
                                  final duration = s.endTime.difference(
                                    s.startTime,
                                  );
                                  return SessionCard(
                                    therapistName: 'your therapist',
                                    therapyType: _therapyTypeLabel(s),
                                    status: s.status,
                                    dateLabel: _dateLabel(s.startTime),
                                    timeLabel: _formatTime(s.startTime),
                                    durationLabel: _durationLabel(duration),
                                    isUpcoming: isUpcoming,
                                    onPrimaryAction: _comingSoon,
                                    onSecondaryAction: isUpcoming
                                        ? () => _openReschedule(s)
                                        : _comingSoon,
                                  );
                                }

                                final loadMoreFailure =
                                    state.currentLoadMoreFailure;
                                if (loadMoreFailure != null &&
                                    index ==
                                        items.length +
                                            (state.currentIsLoadingMore
                                                ? 1
                                                : 0)) {
                                  return Container(
                                    padding: EdgeInsets.all(14.w),
                                    decoration: BoxDecoration(
                                      color: context.surfaceContainer,
                                      borderRadius: BorderRadius.circular(18.r),
                                      border: Border.all(
                                        color: context.outline,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.error_outline,
                                          color: context.error,
                                        ),
                                        SizedBox(width: 10.w),
                                        Expanded(
                                          child: Text(
                                            loadMoreFailure.getErrorMessage(
                                              context,
                                            ),
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w600,
                                              color: context.onSurface,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }

                                return const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Center(child: AppLoader()),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:ruh/core/di/injection.dart';
import 'package:ruh/core/utils/app_toast.dart';
import 'package:ruh/core/utils/failure_extensions.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/features/sessions/domain/repositories/sessions_repository.dart';
import 'package:ruh/features/sessions/domain/entities/therapist_availability_calendar.dart';
import 'package:ruh/features/sessions/presentation/cubit/schedule_session_cubit.dart';
import 'package:ruh/features/sessions/presentation/cubit/schedule_session_state.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:ruh/shared/widgets/app_empty_state.dart';
import 'package:ruh/shared/widgets/app_loader.dart';

part 'schedule_session/_calendar_card.dart';
part 'schedule_session/_current_session_card.dart';
part 'schedule_session/_info_banner.dart';
part 'schedule_session/_no_available_times_card.dart';
part 'schedule_session/_section_title.dart';
part 'schedule_session/_slot_grid.dart';
part 'schedule_session/_time_slot_button.dart';

enum ScheduleSessionMode { book, reschedule }

class ScheduleSessionPageArgs {
  final ScheduleSessionMode mode;
  final String therapistName;
  final String therapistId;
  final String? therapyCaseId;
  final DateTime? currentSessionDateTime;
  final Duration? currentSessionDuration;

  const ScheduleSessionPageArgs({
    required this.mode,
    required this.therapistName,
    required this.therapistId,
    this.therapyCaseId,
    this.currentSessionDateTime,
    this.currentSessionDuration,
  });
}

class ScheduleSessionPage extends StatefulWidget {
  final ScheduleSessionPageArgs args;

  const ScheduleSessionPage({super.key, required this.args});

  @override
  State<ScheduleSessionPage> createState() => _ScheduleSessionPageState();
}

class _ScheduleSessionPageState extends State<ScheduleSessionPage> {
  late final ScheduleSessionCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = ScheduleSessionCubit(
      repo: getIt<SessionsRepository>(),
      therapistId: widget.args.therapistId,
      therapyCaseId: widget.args.therapyCaseId,
      today: DateTime.now(),
    )..loadCalendar();
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  bool get _isReschedule => widget.args.mode == ScheduleSessionMode.reschedule;

  String _formatTimeFromIso(String iso) {
    // iso: 2026-01-06T09:00:00+02:00 -> display 09:00 am (therapist time)
    if (iso.length < 16) return iso;
    final hhmm = iso.substring(11, 16); // HH:mm
    final parts = hhmm.split(':');
    final h = parts.isNotEmpty ? int.tryParse(parts[0]) : null;
    final m = parts.length > 1 ? int.tryParse(parts[1]) : null;
    if (h == null || m == null) return hhmm;
    final dt = DateTime(2020, 1, 1, h, m);
    return DateFormat('hh:mm a').format(dt).toLowerCase();
  }

  String _formatDayTitle(DateTime d) =>
      DateFormat('EEEE, MMM d').format(d).toLowerCase();

  void _onConfirm(ScheduleSessionState state) {
    if (state.selectedSlot == null) return;

    if (_isReschedule) {
      // TODO: Wire reschedule API.
      AppToast.showSuccess(context, 'Rescheduled successfully');
      Navigator.of(context).pop();
      return;
    }

    // Book mode
    _cubit.bookSelectedSlot();
  }

  void _onCancelSession() {
    // TODO: Wire to cancel session API.
    AppToast.showSuccess(context, 'Session cancelled');
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final therapistName = widget.args.therapistName;
    final title = _isReschedule ? 'reschedule session' : 'schedule session';

    return BlocProvider.value(
      value: _cubit,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          foregroundColor: context.onPrimary,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: context.onPrimary),
            onPressed: () => Navigator.of(context).maybePop(),
          ),
        ),
        body: SafeArea(
          child: BlocConsumer<ScheduleSessionCubit, ScheduleSessionState>(
            listenWhen: (prev, next) =>
                prev.bookingFailure != next.bookingFailure ||
                prev.bookedSession != next.bookedSession,
            listener: (context, state) {
              final bookingFailure = state.bookingFailure;
              if (bookingFailure != null) {
                AppToast.showError(
                  context,
                  bookingFailure.getErrorMessage(context),
                );
              }
              if (state.bookedSession != null) {
                AppToast.showSuccess(context, 'Booked successfully');
                Navigator.of(context).pop();
              }
            },
            builder: (context, state) {
              final calendar = state.calendar;
              if (state.isLoadingCalendar && calendar == null) {
                return const Center(child: AppLoader());
              }

              if (state.calendarFailure != null && calendar == null) {
                return Padding(
                  padding: EdgeInsets.all(20.w),
                  child: AppEmptyState(
                    icon: Icons.wifi_off_outlined,
                    title: 'could not load availability',
                    subtitle: state.calendarFailure!.getErrorMessage(context),
                    primaryActionLabel: 'try again',
                    onPrimaryAction: _cubit.loadCalendar,
                  ),
                );
              }

              final firstSelectable = calendar == null
                  ? DateTime.now()
                  : DateTime.parse(calendar.range.from);
              final lastSelectable = calendar == null
                  ? DateTime.now()
                  : DateTime.parse(calendar.range.to);

              final dayOut = state.selectedDayOutput;
              final slots = state.selectedDaySlots;
              final hasTherapyCaseId =
                  (widget.args.therapyCaseId?.trim().isNotEmpty ?? false);
              final canConfirm =
                  state.selectedSlot != null &&
                  !state.isBooking &&
                  (_isReschedule || hasTherapyCaseId);

              return SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(20.w, 18.h, 20.w, 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _InfoBanner(
                      title: _isReschedule
                          ? 'choose a new time for your session'
                          : 'choose a time for your session',
                      subtitle: 'with $therapistName',
                    ),
                    if (_isReschedule) ...[
                      SizedBox(height: 14.h),
                      _SectionTitle(title: 'current session'),
                      SizedBox(height: 10.h),
                      _CurrentSessionCard(
                        dateTime: widget.args.currentSessionDateTime,
                        duration: widget.args.currentSessionDuration,
                      ),
                    ],
                    SizedBox(height: 14.h),
                    _SectionTitle(
                      title: _isReschedule ? 'select new date' : 'select date',
                    ),
                    SizedBox(height: 10.h),
                    _CalendarCard(
                      focusedDay: state.focusedDay,
                      selectedDay: state.selectedDay,
                      firstSelectableDay: firstSelectable,
                      lastSelectableDay: lastSelectable,
                      onFocusedDayChanged: _cubit.setFocusedDay,
                      onSelectedDayChanged: _cubit.selectDay,
                    ),
                    SizedBox(height: 14.h),
                    _SectionTitle(title: _formatDayTitle(state.selectedDay)),
                    SizedBox(height: 10.h),
                    if (dayOut != null && dayOut.available == false)
                      _NoAvailableTimesCard(
                        subtitle:
                            _dayReasonSubtitle(dayOut.reason) ??
                            'try a different date',
                      )
                    else if (slots.isEmpty)
                      const _NoAvailableTimesCard()
                    else
                      _SlotGrid(
                        slots: slots,
                        selected: state.selectedSlot,
                        formatLabel: _formatTimeFromIso,
                        onSelected: _cubit.selectSlot,
                        reasonLabel: _slotReasonSubtitle,
                      ),
                    SizedBox(height: 18.h),
                    SizedBox(
                      width: double.infinity,
                      height: 52.h,
                      child: ElevatedButton(
                        onPressed: canConfirm ? () => _onConfirm(state) : null,
                        child: state.isBooking
                            ? const AppLoader(size: 20)
                            : Text(
                                _isReschedule
                                    ? 'confirm reschedule'
                                    : 'book session',
                              ),
                      ),
                    ),
                    SizedBox(height: 12.h),
                    SizedBox(
                      width: double.infinity,
                      height: 52.h,
                      child: OutlinedButton(
                        onPressed: () => Navigator.of(context).maybePop(),
                        child: const Text('go back'),
                      ),
                    ),
                    if (_isReschedule) ...[
                      SizedBox(height: 14.h),
                      Center(
                        child: TextButton(
                          onPressed: _onCancelSession,
                          style: TextButton.styleFrom(
                            foregroundColor: context.error,
                          ),
                          child: const Text('cancel session'),
                        ),
                      ),
                    ],
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  String? _dayReasonSubtitle(AvailabilityCalendarDayReason? reason) {
    switch (reason) {
      case AvailabilityCalendarDayReason.therapistExceptionDayOff:
        return 'therapist is not available on this day';
      case AvailabilityCalendarDayReason.therapistInactive:
        return 'therapist is currently inactive';
      case null:
        return null;
    }
  }

  String? _slotReasonSubtitle(AvailabilityCalendarSlotReason? reason) {
    switch (reason) {
      case AvailabilityCalendarSlotReason.booked:
        return 'already booked';
      case AvailabilityCalendarSlotReason.bookingThreshold:
        return 'too soon to book';
      case AvailabilityCalendarSlotReason.maxSessionsPerDay:
        return 'daily limit reached';
      case null:
        return null;
    }
  }
}

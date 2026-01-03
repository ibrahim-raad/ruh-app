import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:ruh/core/utils/app_toast.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:table_calendar/table_calendar.dart';

enum ScheduleSessionMode { book, reschedule }

class ScheduleSessionPageArgs {
  final ScheduleSessionMode mode;
  final String therapistName;
  final DateTime? currentSessionDateTime;
  final Duration? currentSessionDuration;

  const ScheduleSessionPageArgs({
    required this.mode,
    required this.therapistName,
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
  late DateTime _selectedDay;
  late DateTime _focusedDay;
  TimeOfDay? _selectedTime;

  DateTime _dateOnly(DateTime d) => DateTime(d.year, d.month, d.day);

  @override
  void initState() {
    super.initState();
    final today = _dateOnly(DateTime.now());
    _selectedDay = today;
    _focusedDay = today;
  }

  bool get _isReschedule => widget.args.mode == ScheduleSessionMode.reschedule;

  List<TimeOfDay> _mockAvailableTimes(DateTime day) {
    // TODO: Replace with real availability fetched from backend.
    final d = _dateOnly(day);
    final weekday = d.weekday; // 1=Mon..7=Sun

    // Weekends: no availability (good for exercising empty state).
    if (weekday == DateTime.saturday || weekday == DateTime.sunday) return [];

    // Every 3rd day: no availability.
    if (d.day % 3 == 0) return [];

    return const [
      TimeOfDay(hour: 9, minute: 0),
      TimeOfDay(hour: 10, minute: 30),
      TimeOfDay(hour: 13, minute: 0),
      TimeOfDay(hour: 14, minute: 30),
      TimeOfDay(hour: 16, minute: 0),
    ];
  }

  String _formatTime(TimeOfDay t) {
    final dt = DateTime(2020, 1, 1, t.hour, t.minute);
    return DateFormat('hh:mm a').format(dt).toLowerCase();
  }

  String _formatDayTitle(DateTime d) =>
      DateFormat('EEEE, MMM d').format(d).toLowerCase();

  void _onConfirm() {
    if (_selectedTime == null) return;

    final action = _isReschedule ? 'Rescheduled' : 'Booked';
    AppToast.showSuccess(context, '$action successfully');
    Navigator.of(context).pop();
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
    final availableTimes = _mockAvailableTimes(_selectedDay);
    final canConfirm = _selectedTime != null;

    final now = DateTime.now();
    final firstSelectable = _dateOnly(now);
    final lastSelectable = _dateOnly(
      DateTime(now.year, now.month + 3, now.day),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        foregroundColor: context.onPrimary,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).maybePop(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                focusedDay: _focusedDay,
                selectedDay: _selectedDay,
                firstSelectableDay: firstSelectable,
                lastSelectableDay: lastSelectable,
                onFocusedDayChanged: (d) => setState(() => _focusedDay = d),
                onSelectedDayChanged: (d) => setState(() {
                  _selectedDay = d;
                  _selectedTime = null;
                }),
              ),
              SizedBox(height: 14.h),
              _SectionTitle(title: _formatDayTitle(_selectedDay)),
              SizedBox(height: 10.h),
              if (availableTimes.isEmpty)
                const _NoAvailableTimesCard()
              else
                _TimeSlotsGrid(
                  times: availableTimes,
                  selected: _selectedTime,
                  formatLabel: _formatTime,
                  onSelected: (t) => setState(() => _selectedTime = t),
                ),
              SizedBox(height: 18.h),
              SizedBox(
                width: double.infinity,
                height: 52.h,
                child: ElevatedButton(
                  onPressed: canConfirm ? _onConfirm : null,
                  child: Text(
                    _isReschedule ? 'confirm reschedule' : 'book session',
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
                    style: TextButton.styleFrom(foregroundColor: context.error),
                    child: const Text('cancel session'),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;

  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w800,
        color: context.onSurface,
      ),
    );
  }
}

class _InfoBanner extends StatelessWidget {
  final String title;
  final String subtitle;

  const _InfoBanner({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: context.surfaceContainer,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: context.outline),
      ),
      child: Row(
        children: [
          Container(
            width: 40.w,
            height: 40.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.surfaceContainerHighest,
              border: Border.all(color: context.outline),
            ),
            child: Icon(
              Icons.info_outline,
              color: context.onSurfaceVariant,
              size: 20.sp,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w800,
                    color: context.onSurface,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: context.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CurrentSessionCard extends StatelessWidget {
  final DateTime? dateTime;
  final Duration? duration;

  const _CurrentSessionCard({required this.dateTime, required this.duration});

  @override
  Widget build(BuildContext context) {
    final dt = dateTime;
    final durationLabel = duration == null ? '—' : '${duration!.inMinutes} min';
    final dateLabel = dt == null
        ? '—'
        : DateFormat('EEEE, MMM d').format(dt).toLowerCase();
    final timeLabel = dt == null
        ? '—'
        : DateFormat('h:mm a').format(dt).toLowerCase();

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18.w),
      decoration: BoxDecoration(
        color: context.surfaceContainer,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: context.outline),
      ),
      child: Row(
        children: [
          Icon(
            Icons.calendar_today_outlined,
            size: 18.sp,
            color: context.onSurfaceVariant,
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Text(
              '$dateLabel • $timeLabel ($durationLabel)',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: context.onSurfaceVariant,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CalendarCard extends StatelessWidget {
  final DateTime focusedDay;
  final DateTime selectedDay;
  final DateTime firstSelectableDay;
  final DateTime lastSelectableDay;
  final ValueChanged<DateTime> onFocusedDayChanged;
  final ValueChanged<DateTime> onSelectedDayChanged;

  const _CalendarCard({
    required this.focusedDay,
    required this.selectedDay,
    required this.firstSelectableDay,
    required this.lastSelectableDay,
    required this.onFocusedDayChanged,
    required this.onSelectedDayChanged,
  });

  DateTime _dateOnly(DateTime d) => DateTime(d.year, d.month, d.day);

  @override
  Widget build(BuildContext context) {
    final today = _dateOnly(DateTime.now());
    final firstDay = _dateOnly(firstSelectableDay);
    final lastDay = _dateOnly(lastSelectableDay);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18.w),
      decoration: BoxDecoration(
        color: context.surfaceContainer,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: context.outline),
      ),
      child: TableCalendar(
        firstDay: firstDay,
        lastDay: lastDay,
        focusedDay: focusedDay,
        currentDay: today,
        selectedDayPredicate: (day) => isSameDay(day, selectedDay),
        onDaySelected: (selected, focused) {
          final s = _dateOnly(selected);
          final f = _dateOnly(focused);
          if (s.isBefore(firstDay) || s.isAfter(lastDay)) return;
          onSelectedDayChanged(s);
          onFocusedDayChanged(f);
        },
        onPageChanged: (focused) => onFocusedDayChanged(_dateOnly(focused)),
        enabledDayPredicate: (day) {
          final d = _dateOnly(day);
          return !d.isBefore(firstDay) && !d.isAfter(lastDay);
        },
        headerStyle: HeaderStyle(
          titleCentered: true,
          formatButtonVisible: false,
          titleTextStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w800,
            color: context.onSurface,
          ),
          leftChevronIcon: Icon(
            Icons.chevron_left,
            color: context.onSurfaceVariant,
          ),
          rightChevronIcon: Icon(
            Icons.chevron_right,
            color: context.onSurfaceVariant,
          ),
        ),
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: TextStyle(
            fontSize: 11.sp,
            fontWeight: FontWeight.w700,
            color: context.onSurfaceVariant,
          ),
          weekendStyle: TextStyle(
            fontSize: 11.sp,
            fontWeight: FontWeight.w700,
            color: context.onSurfaceVariant,
          ),
        ),
        calendarStyle: CalendarStyle(
          todayDecoration: BoxDecoration(
            color: context.tertiary,
            shape: BoxShape.circle,
          ),
          todayTextStyle: TextStyle(
            color: context.onTertiary,
            fontWeight: FontWeight.w800,
          ),
          selectedDecoration: BoxDecoration(
            color: context.primary,
            shape: BoxShape.circle,
          ),
          selectedTextStyle: TextStyle(
            color: context.onPrimary,
            fontWeight: FontWeight.w800,
          ),
          defaultTextStyle: TextStyle(color: context.onSurface),
          weekendTextStyle: TextStyle(color: context.onSurface),
          outsideTextStyle: TextStyle(
            color: context.onSurfaceVariant.withValues(alpha: 0.4),
          ),
          disabledTextStyle: TextStyle(
            color: context.onSurfaceVariant.withValues(alpha: 0.35),
          ),
        ),
        calendarBuilders: CalendarBuilders(
          headerTitleBuilder: (context, day) => Text(
            DateFormat('MMMM yyyy').format(day),
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w800,
              color: context.onSurface,
            ),
          ),
        ),
      ),
    );
  }
}

class _TimeSlotsGrid extends StatelessWidget {
  final List<TimeOfDay> times;
  final TimeOfDay? selected;
  final String Function(TimeOfDay time) formatLabel;
  final ValueChanged<TimeOfDay> onSelected;

  const _TimeSlotsGrid({
    required this.times,
    required this.selected,
    required this.formatLabel,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        const columns = 2;
        final spacing = 12.w;
        final width = (c.maxWidth - spacing) / columns;

        return Wrap(
          spacing: spacing,
          runSpacing: 12.h,
          children: [
            for (final t in times)
              SizedBox(
                width: width,
                height: 44.h,
                child: _TimeSlotButton(
                  label: formatLabel(t),
                  selected:
                      selected != null &&
                      selected!.hour == t.hour &&
                      selected!.minute == t.minute,
                  onTap: () => onSelected(t),
                ),
              ),
          ],
        );
      },
    );
  }
}

class _TimeSlotButton extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _TimeSlotButton({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bg = selected ? context.primary : context.surfaceContainer;
    final fg = selected ? context.onPrimary : context.onSurface;
    final border = selected ? context.primary : context.outline;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.r),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: bg,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: border),
          ),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w800,
              color: fg,
            ),
          ),
        ),
      ),
    );
  }
}

class _NoAvailableTimesCard extends StatelessWidget {
  const _NoAvailableTimesCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18.w),
      decoration: BoxDecoration(
        color: context.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: context.outline),
      ),
      child: Row(
        children: [
          Container(
            width: 44.w,
            height: 44.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.surfaceContainer,
              border: Border.all(color: context.outline),
            ),
            child: Icon(
              Icons.event_busy_outlined,
              color: context.onSurfaceVariant,
              size: 22.sp,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'no available times',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w900,
                    color: context.onSurface,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  'try a different date',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: context.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

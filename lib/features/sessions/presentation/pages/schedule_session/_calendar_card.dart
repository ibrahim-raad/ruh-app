part of '../schedule_session_page.dart';

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

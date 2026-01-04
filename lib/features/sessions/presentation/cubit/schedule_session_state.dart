import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/features/sessions/domain/entities/session.dart';
import 'package:ruh/features/sessions/domain/entities/therapist_availability_calendar.dart';

final class ScheduleSessionState {
  final bool isLoadingCalendar;
  final Failure? calendarFailure;
  final TherapistAvailabilityCalendarOutput? calendar;

  final DateTime selectedDay;
  final DateTime focusedDay;

  final TherapistAvailabilityCalendarSlotOutput? selectedSlot;

  final bool isBooking;
  final Failure? bookingFailure;
  final Session? bookedSession;

  const ScheduleSessionState({
    required this.isLoadingCalendar,
    required this.calendarFailure,
    required this.calendar,
    required this.selectedDay,
    required this.focusedDay,
    required this.selectedSlot,
    required this.isBooking,
    required this.bookingFailure,
    required this.bookedSession,
  });

  factory ScheduleSessionState.initial({required DateTime today}) {
    final d = DateTime(today.year, today.month, today.day);
    return ScheduleSessionState(
      isLoadingCalendar: false,
      calendarFailure: null,
      calendar: null,
      selectedDay: d,
      focusedDay: d,
      selectedSlot: null,
      isBooking: false,
      bookingFailure: null,
      bookedSession: null,
    );
  }

  ScheduleSessionState copyWith({
    bool? isLoadingCalendar,
    Failure? calendarFailure,
    bool clearCalendarFailure = false,
    TherapistAvailabilityCalendarOutput? calendar,
    bool clearCalendar = false,
    DateTime? selectedDay,
    DateTime? focusedDay,
    TherapistAvailabilityCalendarSlotOutput? selectedSlot,
    bool clearSelectedSlot = false,
    bool? isBooking,
    Failure? bookingFailure,
    bool clearBookingFailure = false,
    Session? bookedSession,
    bool clearBookedSession = false,
  }) {
    return ScheduleSessionState(
      isLoadingCalendar: isLoadingCalendar ?? this.isLoadingCalendar,
      calendarFailure: clearCalendarFailure
          ? null
          : (calendarFailure ?? this.calendarFailure),
      calendar: clearCalendar ? null : (calendar ?? this.calendar),
      selectedDay: selectedDay ?? this.selectedDay,
      focusedDay: focusedDay ?? this.focusedDay,
      selectedSlot: clearSelectedSlot
          ? null
          : (selectedSlot ?? this.selectedSlot),
      isBooking: isBooking ?? this.isBooking,
      bookingFailure: clearBookingFailure
          ? null
          : (bookingFailure ?? this.bookingFailure),
      bookedSession: clearBookedSession
          ? null
          : (bookedSession ?? this.bookedSession),
    );
  }

  /// Finds the calendar day output matching [selectedDay] by YYYY-MM-DD.
  TherapistAvailabilityCalendarDayOutput? get selectedDayOutput {
    final cal = calendar;
    if (cal == null) return null;
    final key = _formatYmd(selectedDay);
    for (final d in cal.days) {
      if (d.date == key) return d;
    }
    return null;
  }

  List<TherapistAvailabilityCalendarSlotOutput> get selectedDaySlots =>
      selectedDayOutput?.slots ?? const [];

  static String _formatYmd(DateTime d) {
    final y = d.year.toString().padLeft(4, '0');
    final m = d.month.toString().padLeft(2, '0');
    final day = d.day.toString().padLeft(2, '0');
    return '$y-$m-$day';
  }
}

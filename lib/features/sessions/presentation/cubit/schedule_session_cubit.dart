import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ruh/features/sessions/domain/dtos/create_session_dto.dart';
import 'package:ruh/features/sessions/domain/entities/therapist_availability_calendar.dart';
import 'package:ruh/features/sessions/domain/repositories/sessions_repository.dart';
import 'schedule_session_state.dart';

class ScheduleSessionCubit extends Cubit<ScheduleSessionState> {
  final SessionsRepository _repo;
  final String therapistId;
  final String? therapyCaseId;

  ScheduleSessionCubit({
    required SessionsRepository repo,
    required this.therapistId,
    required this.therapyCaseId,
    required DateTime today,
  }) : _repo = repo,
       super(ScheduleSessionState.initial(today: today));

  Future<void> loadCalendar() async {
    emit(
      state.copyWith(
        isLoadingCalendar: true,
        clearCalendarFailure: true,
        clearCalendar: true,
      ),
    );

    final result = await _repo.getTherapistAvailabilityCalendar(therapistId);
    result.fold(
      (failure) => emit(
        state.copyWith(isLoadingCalendar: false, calendarFailure: failure),
      ),
      (calendar) => emit(() {
        final from = DateTime.parse(calendar.range.from);
        final to = DateTime.parse(calendar.range.to);
        final currentSelected = state.selectedDay;
        final inRange =
            !currentSelected.isBefore(_dateOnly(from)) &&
            !currentSelected.isAfter(_dateOnly(to));
        final selected = inRange ? currentSelected : _dateOnly(from);
        return state.copyWith(
          isLoadingCalendar: false,
          calendar: calendar,
          selectedDay: selected,
          focusedDay: selected,
          clearSelectedSlot: true,
          clearCalendarFailure: true,
        );
      }()),
    );
  }

  void setFocusedDay(DateTime d) {
    emit(state.copyWith(focusedDay: _dateOnly(d)));
  }

  void selectDay(DateTime d) {
    emit(
      state.copyWith(
        selectedDay: _dateOnly(d),
        focusedDay: _dateOnly(d),
        clearSelectedSlot: true,
        clearBookingFailure: true,
        clearBookedSession: true,
      ),
    );
  }

  void selectSlot(TherapistAvailabilityCalendarSlotOutput slot) {
    if (!slot.bookable) return;
    emit(state.copyWith(selectedSlot: slot, clearBookingFailure: true));
  }

  Future<void> bookSelectedSlot() async {
    final slot = state.selectedSlot;
    final tcId = therapyCaseId;
    if (slot == null || tcId == null || tcId.trim().isEmpty) return;

    emit(
      state.copyWith(
        isBooking: true,
        clearBookingFailure: true,
        clearBookedSession: true,
      ),
    );

    final dto = CreateSessionDto(therapyCaseId: tcId, start: slot.start);

    final result = await _repo.createSession(dto);
    result.fold(
      (failure) =>
          emit(state.copyWith(isBooking: false, bookingFailure: failure)),
      (session) => emit(
        state.copyWith(
          isBooking: false,
          bookedSession: session,
          clearBookingFailure: true,
        ),
      ),
    );
  }

  static DateTime _dateOnly(DateTime d) => DateTime(d.year, d.month, d.day);
}

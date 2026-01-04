import 'package:freezed_annotation/freezed_annotation.dart';

part 'therapist_availability_calendar.freezed.dart';
part 'therapist_availability_calendar.g.dart';

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum AvailabilityCalendarDayReason {
  therapistExceptionDayOff,

  therapistInactive,
}

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum AvailabilityCalendarSlotReason {
  bookingThreshold,

  booked,

  maxSessionsPerDay,
}

@freezed
abstract class TherapistAvailabilityCalendarRangeOutput
    with _$TherapistAvailabilityCalendarRangeOutput {
  const factory TherapistAvailabilityCalendarRangeOutput({
    /// YYYY-MM-DD in therapist timezone
    required String from,

    /// YYYY-MM-DD in therapist timezone
    required String to,
  }) = _TherapistAvailabilityCalendarRangeOutput;

  factory TherapistAvailabilityCalendarRangeOutput.fromJson(
    Map<String, dynamic> json,
  ) => _$TherapistAvailabilityCalendarRangeOutputFromJson(json);
}

@freezed
abstract class TherapistAvailabilityCalendarSlotOutput
    with _$TherapistAvailabilityCalendarSlotOutput {
  const factory TherapistAvailabilityCalendarSlotOutput({
    /// ISO datetime with offset, e.g. 2026-01-06T09:00:00+02:00
    required String start,

    /// ISO datetime with offset
    required String end,

    required bool bookable,

    AvailabilityCalendarSlotReason? reason,

    String? slotId,
  }) = _TherapistAvailabilityCalendarSlotOutput;

  factory TherapistAvailabilityCalendarSlotOutput.fromJson(
    Map<String, dynamic> json,
  ) => _$TherapistAvailabilityCalendarSlotOutputFromJson(json);
}

@freezed
abstract class TherapistAvailabilityCalendarDayOutput
    with _$TherapistAvailabilityCalendarDayOutput {
  const factory TherapistAvailabilityCalendarDayOutput({
    /// YYYY-MM-DD in therapist timezone
    required String date,

    required bool available,

    AvailabilityCalendarDayReason? reason,

    @Default(<TherapistAvailabilityCalendarSlotOutput>[])
    List<TherapistAvailabilityCalendarSlotOutput> slots,
  }) = _TherapistAvailabilityCalendarDayOutput;

  factory TherapistAvailabilityCalendarDayOutput.fromJson(
    Map<String, dynamic> json,
  ) => _$TherapistAvailabilityCalendarDayOutputFromJson(json);
}

@freezed
abstract class TherapistAvailabilityCalendarOutput
    with _$TherapistAvailabilityCalendarOutput {
  const factory TherapistAvailabilityCalendarOutput({
    required String therapistId,
    required String timezone,
    required TherapistAvailabilityCalendarRangeOutput range,
    required int slotDurationMinutes,
    required int bookingLeadTimeMinutes,
    required int bookingHorizonDays,

    @Default(<TherapistAvailabilityCalendarDayOutput>[])
    List<TherapistAvailabilityCalendarDayOutput> days,
  }) = _TherapistAvailabilityCalendarOutput;

  factory TherapistAvailabilityCalendarOutput.fromJson(
    Map<String, dynamic> json,
  ) => _$TherapistAvailabilityCalendarOutputFromJson(json);
}

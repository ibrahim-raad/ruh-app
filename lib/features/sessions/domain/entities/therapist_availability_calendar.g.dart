// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'therapist_availability_calendar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TherapistAvailabilityCalendarRangeOutput
_$TherapistAvailabilityCalendarRangeOutputFromJson(Map<String, dynamic> json) =>
    _TherapistAvailabilityCalendarRangeOutput(
      from: json['from'] as String,
      to: json['to'] as String,
    );

Map<String, dynamic> _$TherapistAvailabilityCalendarRangeOutputToJson(
  _TherapistAvailabilityCalendarRangeOutput instance,
) => <String, dynamic>{'from': instance.from, 'to': instance.to};

_TherapistAvailabilityCalendarSlotOutput
_$TherapistAvailabilityCalendarSlotOutputFromJson(Map<String, dynamic> json) =>
    _TherapistAvailabilityCalendarSlotOutput(
      start: json['start'] as String,
      end: json['end'] as String,
      bookable: json['bookable'] as bool,
      reason: $enumDecodeNullable(
        _$AvailabilityCalendarSlotReasonEnumMap,
        json['reason'],
      ),
      slotId: json['slotId'] as String?,
    );

Map<String, dynamic> _$TherapistAvailabilityCalendarSlotOutputToJson(
  _TherapistAvailabilityCalendarSlotOutput instance,
) => <String, dynamic>{
  'start': instance.start,
  'end': instance.end,
  'bookable': instance.bookable,
  'reason': _$AvailabilityCalendarSlotReasonEnumMap[instance.reason],
  'slotId': instance.slotId,
};

const _$AvailabilityCalendarSlotReasonEnumMap = {
  AvailabilityCalendarSlotReason.bookingThreshold: 'BOOKING_THRESHOLD',
  AvailabilityCalendarSlotReason.booked: 'BOOKED',
  AvailabilityCalendarSlotReason.maxSessionsPerDay: 'MAX_SESSIONS_PER_DAY',
};

_TherapistAvailabilityCalendarDayOutput
_$TherapistAvailabilityCalendarDayOutputFromJson(Map<String, dynamic> json) =>
    _TherapistAvailabilityCalendarDayOutput(
      date: json['date'] as String,
      available: json['available'] as bool,
      reason: $enumDecodeNullable(
        _$AvailabilityCalendarDayReasonEnumMap,
        json['reason'],
      ),
      slots:
          (json['slots'] as List<dynamic>?)
              ?.map(
                (e) => TherapistAvailabilityCalendarSlotOutput.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const <TherapistAvailabilityCalendarSlotOutput>[],
    );

Map<String, dynamic> _$TherapistAvailabilityCalendarDayOutputToJson(
  _TherapistAvailabilityCalendarDayOutput instance,
) => <String, dynamic>{
  'date': instance.date,
  'available': instance.available,
  'reason': _$AvailabilityCalendarDayReasonEnumMap[instance.reason],
  'slots': instance.slots,
};

const _$AvailabilityCalendarDayReasonEnumMap = {
  AvailabilityCalendarDayReason.therapistExceptionDayOff:
      'THERAPIST_EXCEPTION_DAY_OFF',
  AvailabilityCalendarDayReason.therapistInactive: 'THERAPIST_INACTIVE',
};

_TherapistAvailabilityCalendarOutput
_$TherapistAvailabilityCalendarOutputFromJson(Map<String, dynamic> json) =>
    _TherapistAvailabilityCalendarOutput(
      therapistId: json['therapistId'] as String,
      timezone: json['timezone'] as String,
      range: TherapistAvailabilityCalendarRangeOutput.fromJson(
        json['range'] as Map<String, dynamic>,
      ),
      slotDurationMinutes: (json['slotDurationMinutes'] as num).toInt(),
      bookingLeadTimeMinutes: (json['bookingLeadTimeMinutes'] as num).toInt(),
      bookingHorizonDays: (json['bookingHorizonDays'] as num).toInt(),
      days:
          (json['days'] as List<dynamic>?)
              ?.map(
                (e) => TherapistAvailabilityCalendarDayOutput.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const <TherapistAvailabilityCalendarDayOutput>[],
    );

Map<String, dynamic> _$TherapistAvailabilityCalendarOutputToJson(
  _TherapistAvailabilityCalendarOutput instance,
) => <String, dynamic>{
  'therapistId': instance.therapistId,
  'timezone': instance.timezone,
  'range': instance.range,
  'slotDurationMinutes': instance.slotDurationMinutes,
  'bookingLeadTimeMinutes': instance.bookingLeadTimeMinutes,
  'bookingHorizonDays': instance.bookingHorizonDays,
  'days': instance.days,
};

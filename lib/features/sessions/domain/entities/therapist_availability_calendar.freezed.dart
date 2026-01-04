// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'therapist_availability_calendar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TherapistAvailabilityCalendarRangeOutput {

/// YYYY-MM-DD in therapist timezone
 String get from;/// YYYY-MM-DD in therapist timezone
 String get to;
/// Create a copy of TherapistAvailabilityCalendarRangeOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TherapistAvailabilityCalendarRangeOutputCopyWith<TherapistAvailabilityCalendarRangeOutput> get copyWith => _$TherapistAvailabilityCalendarRangeOutputCopyWithImpl<TherapistAvailabilityCalendarRangeOutput>(this as TherapistAvailabilityCalendarRangeOutput, _$identity);

  /// Serializes this TherapistAvailabilityCalendarRangeOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TherapistAvailabilityCalendarRangeOutput&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return 'TherapistAvailabilityCalendarRangeOutput(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $TherapistAvailabilityCalendarRangeOutputCopyWith<$Res>  {
  factory $TherapistAvailabilityCalendarRangeOutputCopyWith(TherapistAvailabilityCalendarRangeOutput value, $Res Function(TherapistAvailabilityCalendarRangeOutput) _then) = _$TherapistAvailabilityCalendarRangeOutputCopyWithImpl;
@useResult
$Res call({
 String from, String to
});




}
/// @nodoc
class _$TherapistAvailabilityCalendarRangeOutputCopyWithImpl<$Res>
    implements $TherapistAvailabilityCalendarRangeOutputCopyWith<$Res> {
  _$TherapistAvailabilityCalendarRangeOutputCopyWithImpl(this._self, this._then);

  final TherapistAvailabilityCalendarRangeOutput _self;
  final $Res Function(TherapistAvailabilityCalendarRangeOutput) _then;

/// Create a copy of TherapistAvailabilityCalendarRangeOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? from = null,Object? to = null,}) {
  return _then(_self.copyWith(
from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TherapistAvailabilityCalendarRangeOutput].
extension TherapistAvailabilityCalendarRangeOutputPatterns on TherapistAvailabilityCalendarRangeOutput {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TherapistAvailabilityCalendarRangeOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarRangeOutput() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TherapistAvailabilityCalendarRangeOutput value)  $default,){
final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarRangeOutput():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TherapistAvailabilityCalendarRangeOutput value)?  $default,){
final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarRangeOutput() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String from,  String to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarRangeOutput() when $default != null:
return $default(_that.from,_that.to);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String from,  String to)  $default,) {final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarRangeOutput():
return $default(_that.from,_that.to);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String from,  String to)?  $default,) {final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarRangeOutput() when $default != null:
return $default(_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TherapistAvailabilityCalendarRangeOutput implements TherapistAvailabilityCalendarRangeOutput {
  const _TherapistAvailabilityCalendarRangeOutput({required this.from, required this.to});
  factory _TherapistAvailabilityCalendarRangeOutput.fromJson(Map<String, dynamic> json) => _$TherapistAvailabilityCalendarRangeOutputFromJson(json);

/// YYYY-MM-DD in therapist timezone
@override final  String from;
/// YYYY-MM-DD in therapist timezone
@override final  String to;

/// Create a copy of TherapistAvailabilityCalendarRangeOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TherapistAvailabilityCalendarRangeOutputCopyWith<_TherapistAvailabilityCalendarRangeOutput> get copyWith => __$TherapistAvailabilityCalendarRangeOutputCopyWithImpl<_TherapistAvailabilityCalendarRangeOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TherapistAvailabilityCalendarRangeOutputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TherapistAvailabilityCalendarRangeOutput&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,from,to);

@override
String toString() {
  return 'TherapistAvailabilityCalendarRangeOutput(from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$TherapistAvailabilityCalendarRangeOutputCopyWith<$Res> implements $TherapistAvailabilityCalendarRangeOutputCopyWith<$Res> {
  factory _$TherapistAvailabilityCalendarRangeOutputCopyWith(_TherapistAvailabilityCalendarRangeOutput value, $Res Function(_TherapistAvailabilityCalendarRangeOutput) _then) = __$TherapistAvailabilityCalendarRangeOutputCopyWithImpl;
@override @useResult
$Res call({
 String from, String to
});




}
/// @nodoc
class __$TherapistAvailabilityCalendarRangeOutputCopyWithImpl<$Res>
    implements _$TherapistAvailabilityCalendarRangeOutputCopyWith<$Res> {
  __$TherapistAvailabilityCalendarRangeOutputCopyWithImpl(this._self, this._then);

  final _TherapistAvailabilityCalendarRangeOutput _self;
  final $Res Function(_TherapistAvailabilityCalendarRangeOutput) _then;

/// Create a copy of TherapistAvailabilityCalendarRangeOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? from = null,Object? to = null,}) {
  return _then(_TherapistAvailabilityCalendarRangeOutput(
from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TherapistAvailabilityCalendarSlotOutput {

/// ISO datetime with offset, e.g. 2026-01-06T09:00:00+02:00
 String get start;/// ISO datetime with offset
 String get end; bool get bookable; AvailabilityCalendarSlotReason? get reason; String? get slotId;
/// Create a copy of TherapistAvailabilityCalendarSlotOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TherapistAvailabilityCalendarSlotOutputCopyWith<TherapistAvailabilityCalendarSlotOutput> get copyWith => _$TherapistAvailabilityCalendarSlotOutputCopyWithImpl<TherapistAvailabilityCalendarSlotOutput>(this as TherapistAvailabilityCalendarSlotOutput, _$identity);

  /// Serializes this TherapistAvailabilityCalendarSlotOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TherapistAvailabilityCalendarSlotOutput&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.bookable, bookable) || other.bookable == bookable)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.slotId, slotId) || other.slotId == slotId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end,bookable,reason,slotId);

@override
String toString() {
  return 'TherapistAvailabilityCalendarSlotOutput(start: $start, end: $end, bookable: $bookable, reason: $reason, slotId: $slotId)';
}


}

/// @nodoc
abstract mixin class $TherapistAvailabilityCalendarSlotOutputCopyWith<$Res>  {
  factory $TherapistAvailabilityCalendarSlotOutputCopyWith(TherapistAvailabilityCalendarSlotOutput value, $Res Function(TherapistAvailabilityCalendarSlotOutput) _then) = _$TherapistAvailabilityCalendarSlotOutputCopyWithImpl;
@useResult
$Res call({
 String start, String end, bool bookable, AvailabilityCalendarSlotReason? reason, String? slotId
});




}
/// @nodoc
class _$TherapistAvailabilityCalendarSlotOutputCopyWithImpl<$Res>
    implements $TherapistAvailabilityCalendarSlotOutputCopyWith<$Res> {
  _$TherapistAvailabilityCalendarSlotOutputCopyWithImpl(this._self, this._then);

  final TherapistAvailabilityCalendarSlotOutput _self;
  final $Res Function(TherapistAvailabilityCalendarSlotOutput) _then;

/// Create a copy of TherapistAvailabilityCalendarSlotOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start = null,Object? end = null,Object? bookable = null,Object? reason = freezed,Object? slotId = freezed,}) {
  return _then(_self.copyWith(
start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String,bookable: null == bookable ? _self.bookable : bookable // ignore: cast_nullable_to_non_nullable
as bool,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as AvailabilityCalendarSlotReason?,slotId: freezed == slotId ? _self.slotId : slotId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TherapistAvailabilityCalendarSlotOutput].
extension TherapistAvailabilityCalendarSlotOutputPatterns on TherapistAvailabilityCalendarSlotOutput {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TherapistAvailabilityCalendarSlotOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarSlotOutput() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TherapistAvailabilityCalendarSlotOutput value)  $default,){
final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarSlotOutput():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TherapistAvailabilityCalendarSlotOutput value)?  $default,){
final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarSlotOutput() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String start,  String end,  bool bookable,  AvailabilityCalendarSlotReason? reason,  String? slotId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarSlotOutput() when $default != null:
return $default(_that.start,_that.end,_that.bookable,_that.reason,_that.slotId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String start,  String end,  bool bookable,  AvailabilityCalendarSlotReason? reason,  String? slotId)  $default,) {final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarSlotOutput():
return $default(_that.start,_that.end,_that.bookable,_that.reason,_that.slotId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String start,  String end,  bool bookable,  AvailabilityCalendarSlotReason? reason,  String? slotId)?  $default,) {final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarSlotOutput() when $default != null:
return $default(_that.start,_that.end,_that.bookable,_that.reason,_that.slotId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TherapistAvailabilityCalendarSlotOutput implements TherapistAvailabilityCalendarSlotOutput {
  const _TherapistAvailabilityCalendarSlotOutput({required this.start, required this.end, required this.bookable, this.reason, this.slotId});
  factory _TherapistAvailabilityCalendarSlotOutput.fromJson(Map<String, dynamic> json) => _$TherapistAvailabilityCalendarSlotOutputFromJson(json);

/// ISO datetime with offset, e.g. 2026-01-06T09:00:00+02:00
@override final  String start;
/// ISO datetime with offset
@override final  String end;
@override final  bool bookable;
@override final  AvailabilityCalendarSlotReason? reason;
@override final  String? slotId;

/// Create a copy of TherapistAvailabilityCalendarSlotOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TherapistAvailabilityCalendarSlotOutputCopyWith<_TherapistAvailabilityCalendarSlotOutput> get copyWith => __$TherapistAvailabilityCalendarSlotOutputCopyWithImpl<_TherapistAvailabilityCalendarSlotOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TherapistAvailabilityCalendarSlotOutputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TherapistAvailabilityCalendarSlotOutput&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.bookable, bookable) || other.bookable == bookable)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.slotId, slotId) || other.slotId == slotId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,start,end,bookable,reason,slotId);

@override
String toString() {
  return 'TherapistAvailabilityCalendarSlotOutput(start: $start, end: $end, bookable: $bookable, reason: $reason, slotId: $slotId)';
}


}

/// @nodoc
abstract mixin class _$TherapistAvailabilityCalendarSlotOutputCopyWith<$Res> implements $TherapistAvailabilityCalendarSlotOutputCopyWith<$Res> {
  factory _$TherapistAvailabilityCalendarSlotOutputCopyWith(_TherapistAvailabilityCalendarSlotOutput value, $Res Function(_TherapistAvailabilityCalendarSlotOutput) _then) = __$TherapistAvailabilityCalendarSlotOutputCopyWithImpl;
@override @useResult
$Res call({
 String start, String end, bool bookable, AvailabilityCalendarSlotReason? reason, String? slotId
});




}
/// @nodoc
class __$TherapistAvailabilityCalendarSlotOutputCopyWithImpl<$Res>
    implements _$TherapistAvailabilityCalendarSlotOutputCopyWith<$Res> {
  __$TherapistAvailabilityCalendarSlotOutputCopyWithImpl(this._self, this._then);

  final _TherapistAvailabilityCalendarSlotOutput _self;
  final $Res Function(_TherapistAvailabilityCalendarSlotOutput) _then;

/// Create a copy of TherapistAvailabilityCalendarSlotOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start = null,Object? end = null,Object? bookable = null,Object? reason = freezed,Object? slotId = freezed,}) {
  return _then(_TherapistAvailabilityCalendarSlotOutput(
start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String,bookable: null == bookable ? _self.bookable : bookable // ignore: cast_nullable_to_non_nullable
as bool,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as AvailabilityCalendarSlotReason?,slotId: freezed == slotId ? _self.slotId : slotId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TherapistAvailabilityCalendarDayOutput {

/// YYYY-MM-DD in therapist timezone
 String get date; bool get available; AvailabilityCalendarDayReason? get reason; List<TherapistAvailabilityCalendarSlotOutput> get slots;
/// Create a copy of TherapistAvailabilityCalendarDayOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TherapistAvailabilityCalendarDayOutputCopyWith<TherapistAvailabilityCalendarDayOutput> get copyWith => _$TherapistAvailabilityCalendarDayOutputCopyWithImpl<TherapistAvailabilityCalendarDayOutput>(this as TherapistAvailabilityCalendarDayOutput, _$identity);

  /// Serializes this TherapistAvailabilityCalendarDayOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TherapistAvailabilityCalendarDayOutput&&(identical(other.date, date) || other.date == date)&&(identical(other.available, available) || other.available == available)&&(identical(other.reason, reason) || other.reason == reason)&&const DeepCollectionEquality().equals(other.slots, slots));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,available,reason,const DeepCollectionEquality().hash(slots));

@override
String toString() {
  return 'TherapistAvailabilityCalendarDayOutput(date: $date, available: $available, reason: $reason, slots: $slots)';
}


}

/// @nodoc
abstract mixin class $TherapistAvailabilityCalendarDayOutputCopyWith<$Res>  {
  factory $TherapistAvailabilityCalendarDayOutputCopyWith(TherapistAvailabilityCalendarDayOutput value, $Res Function(TherapistAvailabilityCalendarDayOutput) _then) = _$TherapistAvailabilityCalendarDayOutputCopyWithImpl;
@useResult
$Res call({
 String date, bool available, AvailabilityCalendarDayReason? reason, List<TherapistAvailabilityCalendarSlotOutput> slots
});




}
/// @nodoc
class _$TherapistAvailabilityCalendarDayOutputCopyWithImpl<$Res>
    implements $TherapistAvailabilityCalendarDayOutputCopyWith<$Res> {
  _$TherapistAvailabilityCalendarDayOutputCopyWithImpl(this._self, this._then);

  final TherapistAvailabilityCalendarDayOutput _self;
  final $Res Function(TherapistAvailabilityCalendarDayOutput) _then;

/// Create a copy of TherapistAvailabilityCalendarDayOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? available = null,Object? reason = freezed,Object? slots = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as AvailabilityCalendarDayReason?,slots: null == slots ? _self.slots : slots // ignore: cast_nullable_to_non_nullable
as List<TherapistAvailabilityCalendarSlotOutput>,
  ));
}

}


/// Adds pattern-matching-related methods to [TherapistAvailabilityCalendarDayOutput].
extension TherapistAvailabilityCalendarDayOutputPatterns on TherapistAvailabilityCalendarDayOutput {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TherapistAvailabilityCalendarDayOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarDayOutput() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TherapistAvailabilityCalendarDayOutput value)  $default,){
final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarDayOutput():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TherapistAvailabilityCalendarDayOutput value)?  $default,){
final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarDayOutput() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date,  bool available,  AvailabilityCalendarDayReason? reason,  List<TherapistAvailabilityCalendarSlotOutput> slots)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarDayOutput() when $default != null:
return $default(_that.date,_that.available,_that.reason,_that.slots);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date,  bool available,  AvailabilityCalendarDayReason? reason,  List<TherapistAvailabilityCalendarSlotOutput> slots)  $default,) {final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarDayOutput():
return $default(_that.date,_that.available,_that.reason,_that.slots);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date,  bool available,  AvailabilityCalendarDayReason? reason,  List<TherapistAvailabilityCalendarSlotOutput> slots)?  $default,) {final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarDayOutput() when $default != null:
return $default(_that.date,_that.available,_that.reason,_that.slots);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TherapistAvailabilityCalendarDayOutput implements TherapistAvailabilityCalendarDayOutput {
  const _TherapistAvailabilityCalendarDayOutput({required this.date, required this.available, this.reason, final  List<TherapistAvailabilityCalendarSlotOutput> slots = const <TherapistAvailabilityCalendarSlotOutput>[]}): _slots = slots;
  factory _TherapistAvailabilityCalendarDayOutput.fromJson(Map<String, dynamic> json) => _$TherapistAvailabilityCalendarDayOutputFromJson(json);

/// YYYY-MM-DD in therapist timezone
@override final  String date;
@override final  bool available;
@override final  AvailabilityCalendarDayReason? reason;
 final  List<TherapistAvailabilityCalendarSlotOutput> _slots;
@override@JsonKey() List<TherapistAvailabilityCalendarSlotOutput> get slots {
  if (_slots is EqualUnmodifiableListView) return _slots;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_slots);
}


/// Create a copy of TherapistAvailabilityCalendarDayOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TherapistAvailabilityCalendarDayOutputCopyWith<_TherapistAvailabilityCalendarDayOutput> get copyWith => __$TherapistAvailabilityCalendarDayOutputCopyWithImpl<_TherapistAvailabilityCalendarDayOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TherapistAvailabilityCalendarDayOutputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TherapistAvailabilityCalendarDayOutput&&(identical(other.date, date) || other.date == date)&&(identical(other.available, available) || other.available == available)&&(identical(other.reason, reason) || other.reason == reason)&&const DeepCollectionEquality().equals(other._slots, _slots));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,available,reason,const DeepCollectionEquality().hash(_slots));

@override
String toString() {
  return 'TherapistAvailabilityCalendarDayOutput(date: $date, available: $available, reason: $reason, slots: $slots)';
}


}

/// @nodoc
abstract mixin class _$TherapistAvailabilityCalendarDayOutputCopyWith<$Res> implements $TherapistAvailabilityCalendarDayOutputCopyWith<$Res> {
  factory _$TherapistAvailabilityCalendarDayOutputCopyWith(_TherapistAvailabilityCalendarDayOutput value, $Res Function(_TherapistAvailabilityCalendarDayOutput) _then) = __$TherapistAvailabilityCalendarDayOutputCopyWithImpl;
@override @useResult
$Res call({
 String date, bool available, AvailabilityCalendarDayReason? reason, List<TherapistAvailabilityCalendarSlotOutput> slots
});




}
/// @nodoc
class __$TherapistAvailabilityCalendarDayOutputCopyWithImpl<$Res>
    implements _$TherapistAvailabilityCalendarDayOutputCopyWith<$Res> {
  __$TherapistAvailabilityCalendarDayOutputCopyWithImpl(this._self, this._then);

  final _TherapistAvailabilityCalendarDayOutput _self;
  final $Res Function(_TherapistAvailabilityCalendarDayOutput) _then;

/// Create a copy of TherapistAvailabilityCalendarDayOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? available = null,Object? reason = freezed,Object? slots = null,}) {
  return _then(_TherapistAvailabilityCalendarDayOutput(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as AvailabilityCalendarDayReason?,slots: null == slots ? _self._slots : slots // ignore: cast_nullable_to_non_nullable
as List<TherapistAvailabilityCalendarSlotOutput>,
  ));
}


}


/// @nodoc
mixin _$TherapistAvailabilityCalendarOutput {

 String get therapistId; String get timezone; TherapistAvailabilityCalendarRangeOutput get range; int get slotDurationMinutes; int get bookingLeadTimeMinutes; int get bookingHorizonDays; List<TherapistAvailabilityCalendarDayOutput> get days;
/// Create a copy of TherapistAvailabilityCalendarOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TherapistAvailabilityCalendarOutputCopyWith<TherapistAvailabilityCalendarOutput> get copyWith => _$TherapistAvailabilityCalendarOutputCopyWithImpl<TherapistAvailabilityCalendarOutput>(this as TherapistAvailabilityCalendarOutput, _$identity);

  /// Serializes this TherapistAvailabilityCalendarOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TherapistAvailabilityCalendarOutput&&(identical(other.therapistId, therapistId) || other.therapistId == therapistId)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.range, range) || other.range == range)&&(identical(other.slotDurationMinutes, slotDurationMinutes) || other.slotDurationMinutes == slotDurationMinutes)&&(identical(other.bookingLeadTimeMinutes, bookingLeadTimeMinutes) || other.bookingLeadTimeMinutes == bookingLeadTimeMinutes)&&(identical(other.bookingHorizonDays, bookingHorizonDays) || other.bookingHorizonDays == bookingHorizonDays)&&const DeepCollectionEquality().equals(other.days, days));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,therapistId,timezone,range,slotDurationMinutes,bookingLeadTimeMinutes,bookingHorizonDays,const DeepCollectionEquality().hash(days));

@override
String toString() {
  return 'TherapistAvailabilityCalendarOutput(therapistId: $therapistId, timezone: $timezone, range: $range, slotDurationMinutes: $slotDurationMinutes, bookingLeadTimeMinutes: $bookingLeadTimeMinutes, bookingHorizonDays: $bookingHorizonDays, days: $days)';
}


}

/// @nodoc
abstract mixin class $TherapistAvailabilityCalendarOutputCopyWith<$Res>  {
  factory $TherapistAvailabilityCalendarOutputCopyWith(TherapistAvailabilityCalendarOutput value, $Res Function(TherapistAvailabilityCalendarOutput) _then) = _$TherapistAvailabilityCalendarOutputCopyWithImpl;
@useResult
$Res call({
 String therapistId, String timezone, TherapistAvailabilityCalendarRangeOutput range, int slotDurationMinutes, int bookingLeadTimeMinutes, int bookingHorizonDays, List<TherapistAvailabilityCalendarDayOutput> days
});


$TherapistAvailabilityCalendarRangeOutputCopyWith<$Res> get range;

}
/// @nodoc
class _$TherapistAvailabilityCalendarOutputCopyWithImpl<$Res>
    implements $TherapistAvailabilityCalendarOutputCopyWith<$Res> {
  _$TherapistAvailabilityCalendarOutputCopyWithImpl(this._self, this._then);

  final TherapistAvailabilityCalendarOutput _self;
  final $Res Function(TherapistAvailabilityCalendarOutput) _then;

/// Create a copy of TherapistAvailabilityCalendarOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? therapistId = null,Object? timezone = null,Object? range = null,Object? slotDurationMinutes = null,Object? bookingLeadTimeMinutes = null,Object? bookingHorizonDays = null,Object? days = null,}) {
  return _then(_self.copyWith(
therapistId: null == therapistId ? _self.therapistId : therapistId // ignore: cast_nullable_to_non_nullable
as String,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,range: null == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as TherapistAvailabilityCalendarRangeOutput,slotDurationMinutes: null == slotDurationMinutes ? _self.slotDurationMinutes : slotDurationMinutes // ignore: cast_nullable_to_non_nullable
as int,bookingLeadTimeMinutes: null == bookingLeadTimeMinutes ? _self.bookingLeadTimeMinutes : bookingLeadTimeMinutes // ignore: cast_nullable_to_non_nullable
as int,bookingHorizonDays: null == bookingHorizonDays ? _self.bookingHorizonDays : bookingHorizonDays // ignore: cast_nullable_to_non_nullable
as int,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as List<TherapistAvailabilityCalendarDayOutput>,
  ));
}
/// Create a copy of TherapistAvailabilityCalendarOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TherapistAvailabilityCalendarRangeOutputCopyWith<$Res> get range {
  
  return $TherapistAvailabilityCalendarRangeOutputCopyWith<$Res>(_self.range, (value) {
    return _then(_self.copyWith(range: value));
  });
}
}


/// Adds pattern-matching-related methods to [TherapistAvailabilityCalendarOutput].
extension TherapistAvailabilityCalendarOutputPatterns on TherapistAvailabilityCalendarOutput {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TherapistAvailabilityCalendarOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarOutput() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TherapistAvailabilityCalendarOutput value)  $default,){
final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarOutput():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TherapistAvailabilityCalendarOutput value)?  $default,){
final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarOutput() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String therapistId,  String timezone,  TherapistAvailabilityCalendarRangeOutput range,  int slotDurationMinutes,  int bookingLeadTimeMinutes,  int bookingHorizonDays,  List<TherapistAvailabilityCalendarDayOutput> days)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarOutput() when $default != null:
return $default(_that.therapistId,_that.timezone,_that.range,_that.slotDurationMinutes,_that.bookingLeadTimeMinutes,_that.bookingHorizonDays,_that.days);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String therapistId,  String timezone,  TherapistAvailabilityCalendarRangeOutput range,  int slotDurationMinutes,  int bookingLeadTimeMinutes,  int bookingHorizonDays,  List<TherapistAvailabilityCalendarDayOutput> days)  $default,) {final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarOutput():
return $default(_that.therapistId,_that.timezone,_that.range,_that.slotDurationMinutes,_that.bookingLeadTimeMinutes,_that.bookingHorizonDays,_that.days);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String therapistId,  String timezone,  TherapistAvailabilityCalendarRangeOutput range,  int slotDurationMinutes,  int bookingLeadTimeMinutes,  int bookingHorizonDays,  List<TherapistAvailabilityCalendarDayOutput> days)?  $default,) {final _that = this;
switch (_that) {
case _TherapistAvailabilityCalendarOutput() when $default != null:
return $default(_that.therapistId,_that.timezone,_that.range,_that.slotDurationMinutes,_that.bookingLeadTimeMinutes,_that.bookingHorizonDays,_that.days);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TherapistAvailabilityCalendarOutput implements TherapistAvailabilityCalendarOutput {
  const _TherapistAvailabilityCalendarOutput({required this.therapistId, required this.timezone, required this.range, required this.slotDurationMinutes, required this.bookingLeadTimeMinutes, required this.bookingHorizonDays, final  List<TherapistAvailabilityCalendarDayOutput> days = const <TherapistAvailabilityCalendarDayOutput>[]}): _days = days;
  factory _TherapistAvailabilityCalendarOutput.fromJson(Map<String, dynamic> json) => _$TherapistAvailabilityCalendarOutputFromJson(json);

@override final  String therapistId;
@override final  String timezone;
@override final  TherapistAvailabilityCalendarRangeOutput range;
@override final  int slotDurationMinutes;
@override final  int bookingLeadTimeMinutes;
@override final  int bookingHorizonDays;
 final  List<TherapistAvailabilityCalendarDayOutput> _days;
@override@JsonKey() List<TherapistAvailabilityCalendarDayOutput> get days {
  if (_days is EqualUnmodifiableListView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_days);
}


/// Create a copy of TherapistAvailabilityCalendarOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TherapistAvailabilityCalendarOutputCopyWith<_TherapistAvailabilityCalendarOutput> get copyWith => __$TherapistAvailabilityCalendarOutputCopyWithImpl<_TherapistAvailabilityCalendarOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TherapistAvailabilityCalendarOutputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TherapistAvailabilityCalendarOutput&&(identical(other.therapistId, therapistId) || other.therapistId == therapistId)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.range, range) || other.range == range)&&(identical(other.slotDurationMinutes, slotDurationMinutes) || other.slotDurationMinutes == slotDurationMinutes)&&(identical(other.bookingLeadTimeMinutes, bookingLeadTimeMinutes) || other.bookingLeadTimeMinutes == bookingLeadTimeMinutes)&&(identical(other.bookingHorizonDays, bookingHorizonDays) || other.bookingHorizonDays == bookingHorizonDays)&&const DeepCollectionEquality().equals(other._days, _days));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,therapistId,timezone,range,slotDurationMinutes,bookingLeadTimeMinutes,bookingHorizonDays,const DeepCollectionEquality().hash(_days));

@override
String toString() {
  return 'TherapistAvailabilityCalendarOutput(therapistId: $therapistId, timezone: $timezone, range: $range, slotDurationMinutes: $slotDurationMinutes, bookingLeadTimeMinutes: $bookingLeadTimeMinutes, bookingHorizonDays: $bookingHorizonDays, days: $days)';
}


}

/// @nodoc
abstract mixin class _$TherapistAvailabilityCalendarOutputCopyWith<$Res> implements $TherapistAvailabilityCalendarOutputCopyWith<$Res> {
  factory _$TherapistAvailabilityCalendarOutputCopyWith(_TherapistAvailabilityCalendarOutput value, $Res Function(_TherapistAvailabilityCalendarOutput) _then) = __$TherapistAvailabilityCalendarOutputCopyWithImpl;
@override @useResult
$Res call({
 String therapistId, String timezone, TherapistAvailabilityCalendarRangeOutput range, int slotDurationMinutes, int bookingLeadTimeMinutes, int bookingHorizonDays, List<TherapistAvailabilityCalendarDayOutput> days
});


@override $TherapistAvailabilityCalendarRangeOutputCopyWith<$Res> get range;

}
/// @nodoc
class __$TherapistAvailabilityCalendarOutputCopyWithImpl<$Res>
    implements _$TherapistAvailabilityCalendarOutputCopyWith<$Res> {
  __$TherapistAvailabilityCalendarOutputCopyWithImpl(this._self, this._then);

  final _TherapistAvailabilityCalendarOutput _self;
  final $Res Function(_TherapistAvailabilityCalendarOutput) _then;

/// Create a copy of TherapistAvailabilityCalendarOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? therapistId = null,Object? timezone = null,Object? range = null,Object? slotDurationMinutes = null,Object? bookingLeadTimeMinutes = null,Object? bookingHorizonDays = null,Object? days = null,}) {
  return _then(_TherapistAvailabilityCalendarOutput(
therapistId: null == therapistId ? _self.therapistId : therapistId // ignore: cast_nullable_to_non_nullable
as String,timezone: null == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String,range: null == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as TherapistAvailabilityCalendarRangeOutput,slotDurationMinutes: null == slotDurationMinutes ? _self.slotDurationMinutes : slotDurationMinutes // ignore: cast_nullable_to_non_nullable
as int,bookingLeadTimeMinutes: null == bookingLeadTimeMinutes ? _self.bookingLeadTimeMinutes : bookingLeadTimeMinutes // ignore: cast_nullable_to_non_nullable
as int,bookingHorizonDays: null == bookingHorizonDays ? _self.bookingHorizonDays : bookingHorizonDays // ignore: cast_nullable_to_non_nullable
as int,days: null == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as List<TherapistAvailabilityCalendarDayOutput>,
  ));
}

/// Create a copy of TherapistAvailabilityCalendarOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TherapistAvailabilityCalendarRangeOutputCopyWith<$Res> get range {
  
  return $TherapistAvailabilityCalendarRangeOutputCopyWith<$Res>(_self.range, (value) {
    return _then(_self.copyWith(range: value));
  });
}
}

// dart format on

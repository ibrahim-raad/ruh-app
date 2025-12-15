// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PatientProfileState {

 PatientProfileStatus get status; Patient? get patient; Failure? get failure;
/// Create a copy of PatientProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientProfileStateCopyWith<PatientProfileState> get copyWith => _$PatientProfileStateCopyWithImpl<PatientProfileState>(this as PatientProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientProfileState&&(identical(other.status, status) || other.status == status)&&(identical(other.patient, patient) || other.patient == patient)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,patient,failure);

@override
String toString() {
  return 'PatientProfileState(status: $status, patient: $patient, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $PatientProfileStateCopyWith<$Res>  {
  factory $PatientProfileStateCopyWith(PatientProfileState value, $Res Function(PatientProfileState) _then) = _$PatientProfileStateCopyWithImpl;
@useResult
$Res call({
 PatientProfileStatus status, Patient? patient, Failure? failure
});


$PatientCopyWith<$Res>? get patient;

}
/// @nodoc
class _$PatientProfileStateCopyWithImpl<$Res>
    implements $PatientProfileStateCopyWith<$Res> {
  _$PatientProfileStateCopyWithImpl(this._self, this._then);

  final PatientProfileState _self;
  final $Res Function(PatientProfileState) _then;

/// Create a copy of PatientProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? patient = freezed,Object? failure = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PatientProfileStatus,patient: freezed == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as Patient?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of PatientProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientCopyWith<$Res>? get patient {
    if (_self.patient == null) {
    return null;
  }

  return $PatientCopyWith<$Res>(_self.patient!, (value) {
    return _then(_self.copyWith(patient: value));
  });
}
}


/// Adds pattern-matching-related methods to [PatientProfileState].
extension PatientProfileStatePatterns on PatientProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientProfileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientProfileState value)  $default,){
final _that = this;
switch (_that) {
case _PatientProfileState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _PatientProfileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PatientProfileStatus status,  Patient? patient,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientProfileState() when $default != null:
return $default(_that.status,_that.patient,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PatientProfileStatus status,  Patient? patient,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _PatientProfileState():
return $default(_that.status,_that.patient,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PatientProfileStatus status,  Patient? patient,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _PatientProfileState() when $default != null:
return $default(_that.status,_that.patient,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _PatientProfileState implements PatientProfileState {
  const _PatientProfileState({this.status = PatientProfileStatus.initial, this.patient, this.failure});
  

@override@JsonKey() final  PatientProfileStatus status;
@override final  Patient? patient;
@override final  Failure? failure;

/// Create a copy of PatientProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientProfileStateCopyWith<_PatientProfileState> get copyWith => __$PatientProfileStateCopyWithImpl<_PatientProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientProfileState&&(identical(other.status, status) || other.status == status)&&(identical(other.patient, patient) || other.patient == patient)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,patient,failure);

@override
String toString() {
  return 'PatientProfileState(status: $status, patient: $patient, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$PatientProfileStateCopyWith<$Res> implements $PatientProfileStateCopyWith<$Res> {
  factory _$PatientProfileStateCopyWith(_PatientProfileState value, $Res Function(_PatientProfileState) _then) = __$PatientProfileStateCopyWithImpl;
@override @useResult
$Res call({
 PatientProfileStatus status, Patient? patient, Failure? failure
});


@override $PatientCopyWith<$Res>? get patient;

}
/// @nodoc
class __$PatientProfileStateCopyWithImpl<$Res>
    implements _$PatientProfileStateCopyWith<$Res> {
  __$PatientProfileStateCopyWithImpl(this._self, this._then);

  final _PatientProfileState _self;
  final $Res Function(_PatientProfileState) _then;

/// Create a copy of PatientProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? patient = freezed,Object? failure = freezed,}) {
  return _then(_PatientProfileState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PatientProfileStatus,patient: freezed == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as Patient?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of PatientProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientCopyWith<$Res>? get patient {
    if (_self.patient == null) {
    return null;
  }

  return $PatientCopyWith<$Res>(_self.patient!, (value) {
    return _then(_self.copyWith(patient: value));
  });
}
}

// dart format on

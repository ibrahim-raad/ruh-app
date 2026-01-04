// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'therapy_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TherapyCase {

 String get id; int get version;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt;@JsonKey(name: 'deleted_at') DateTime? get deletedAt; String? get notes; TherapyCaseType get type; TherapyCaseStatus get status;@JsonKey(name: 'first_session_at') DateTime? get firstSessionAt;@JsonKey(name: 'last_session_at') DateTime? get lastSessionAt;@JsonKey(name: 'total_sessions') int get totalSessions; Patient get patient; TherapistOutput get therapist;@JsonKey(name: 'transferred_to') TherapyCase? get transferredTo;@JsonKey(name: 'patient_id') String? get patientId;@JsonKey(name: 'therapist_id') String? get therapistId;@JsonKey(name: 'transferred_to_id') String? get transferredToId;
/// Create a copy of TherapyCase
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TherapyCaseCopyWith<TherapyCase> get copyWith => _$TherapyCaseCopyWithImpl<TherapyCase>(this as TherapyCase, _$identity);

  /// Serializes this TherapyCase to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TherapyCase&&(identical(other.id, id) || other.id == id)&&(identical(other.version, version) || other.version == version)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.firstSessionAt, firstSessionAt) || other.firstSessionAt == firstSessionAt)&&(identical(other.lastSessionAt, lastSessionAt) || other.lastSessionAt == lastSessionAt)&&(identical(other.totalSessions, totalSessions) || other.totalSessions == totalSessions)&&(identical(other.patient, patient) || other.patient == patient)&&(identical(other.therapist, therapist) || other.therapist == therapist)&&(identical(other.transferredTo, transferredTo) || other.transferredTo == transferredTo)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.therapistId, therapistId) || other.therapistId == therapistId)&&(identical(other.transferredToId, transferredToId) || other.transferredToId == transferredToId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,version,createdAt,updatedAt,deletedAt,notes,type,status,firstSessionAt,lastSessionAt,totalSessions,patient,therapist,transferredTo,patientId,therapistId,transferredToId);

@override
String toString() {
  return 'TherapyCase(id: $id, version: $version, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, notes: $notes, type: $type, status: $status, firstSessionAt: $firstSessionAt, lastSessionAt: $lastSessionAt, totalSessions: $totalSessions, patient: $patient, therapist: $therapist, transferredTo: $transferredTo, patientId: $patientId, therapistId: $therapistId, transferredToId: $transferredToId)';
}


}

/// @nodoc
abstract mixin class $TherapyCaseCopyWith<$Res>  {
  factory $TherapyCaseCopyWith(TherapyCase value, $Res Function(TherapyCase) _then) = _$TherapyCaseCopyWithImpl;
@useResult
$Res call({
 String id, int version,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt,@JsonKey(name: 'deleted_at') DateTime? deletedAt, String? notes, TherapyCaseType type, TherapyCaseStatus status,@JsonKey(name: 'first_session_at') DateTime? firstSessionAt,@JsonKey(name: 'last_session_at') DateTime? lastSessionAt,@JsonKey(name: 'total_sessions') int totalSessions, Patient patient, TherapistOutput therapist,@JsonKey(name: 'transferred_to') TherapyCase? transferredTo,@JsonKey(name: 'patient_id') String? patientId,@JsonKey(name: 'therapist_id') String? therapistId,@JsonKey(name: 'transferred_to_id') String? transferredToId
});


$PatientCopyWith<$Res> get patient;$TherapistOutputCopyWith<$Res> get therapist;$TherapyCaseCopyWith<$Res>? get transferredTo;

}
/// @nodoc
class _$TherapyCaseCopyWithImpl<$Res>
    implements $TherapyCaseCopyWith<$Res> {
  _$TherapyCaseCopyWithImpl(this._self, this._then);

  final TherapyCase _self;
  final $Res Function(TherapyCase) _then;

/// Create a copy of TherapyCase
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? version = null,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,Object? notes = freezed,Object? type = null,Object? status = null,Object? firstSessionAt = freezed,Object? lastSessionAt = freezed,Object? totalSessions = null,Object? patient = null,Object? therapist = null,Object? transferredTo = freezed,Object? patientId = freezed,Object? therapistId = freezed,Object? transferredToId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TherapyCaseType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TherapyCaseStatus,firstSessionAt: freezed == firstSessionAt ? _self.firstSessionAt : firstSessionAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastSessionAt: freezed == lastSessionAt ? _self.lastSessionAt : lastSessionAt // ignore: cast_nullable_to_non_nullable
as DateTime?,totalSessions: null == totalSessions ? _self.totalSessions : totalSessions // ignore: cast_nullable_to_non_nullable
as int,patient: null == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as Patient,therapist: null == therapist ? _self.therapist : therapist // ignore: cast_nullable_to_non_nullable
as TherapistOutput,transferredTo: freezed == transferredTo ? _self.transferredTo : transferredTo // ignore: cast_nullable_to_non_nullable
as TherapyCase?,patientId: freezed == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String?,therapistId: freezed == therapistId ? _self.therapistId : therapistId // ignore: cast_nullable_to_non_nullable
as String?,transferredToId: freezed == transferredToId ? _self.transferredToId : transferredToId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of TherapyCase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientCopyWith<$Res> get patient {
  
  return $PatientCopyWith<$Res>(_self.patient, (value) {
    return _then(_self.copyWith(patient: value));
  });
}/// Create a copy of TherapyCase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TherapistOutputCopyWith<$Res> get therapist {
  
  return $TherapistOutputCopyWith<$Res>(_self.therapist, (value) {
    return _then(_self.copyWith(therapist: value));
  });
}/// Create a copy of TherapyCase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TherapyCaseCopyWith<$Res>? get transferredTo {
    if (_self.transferredTo == null) {
    return null;
  }

  return $TherapyCaseCopyWith<$Res>(_self.transferredTo!, (value) {
    return _then(_self.copyWith(transferredTo: value));
  });
}
}


/// Adds pattern-matching-related methods to [TherapyCase].
extension TherapyCasePatterns on TherapyCase {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TherapyCase value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TherapyCase() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TherapyCase value)  $default,){
final _that = this;
switch (_that) {
case _TherapyCase():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TherapyCase value)?  $default,){
final _that = this;
switch (_that) {
case _TherapyCase() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int version, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'deleted_at')  DateTime? deletedAt,  String? notes,  TherapyCaseType type,  TherapyCaseStatus status, @JsonKey(name: 'first_session_at')  DateTime? firstSessionAt, @JsonKey(name: 'last_session_at')  DateTime? lastSessionAt, @JsonKey(name: 'total_sessions')  int totalSessions,  Patient patient,  TherapistOutput therapist, @JsonKey(name: 'transferred_to')  TherapyCase? transferredTo, @JsonKey(name: 'patient_id')  String? patientId, @JsonKey(name: 'therapist_id')  String? therapistId, @JsonKey(name: 'transferred_to_id')  String? transferredToId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TherapyCase() when $default != null:
return $default(_that.id,_that.version,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.notes,_that.type,_that.status,_that.firstSessionAt,_that.lastSessionAt,_that.totalSessions,_that.patient,_that.therapist,_that.transferredTo,_that.patientId,_that.therapistId,_that.transferredToId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int version, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'deleted_at')  DateTime? deletedAt,  String? notes,  TherapyCaseType type,  TherapyCaseStatus status, @JsonKey(name: 'first_session_at')  DateTime? firstSessionAt, @JsonKey(name: 'last_session_at')  DateTime? lastSessionAt, @JsonKey(name: 'total_sessions')  int totalSessions,  Patient patient,  TherapistOutput therapist, @JsonKey(name: 'transferred_to')  TherapyCase? transferredTo, @JsonKey(name: 'patient_id')  String? patientId, @JsonKey(name: 'therapist_id')  String? therapistId, @JsonKey(name: 'transferred_to_id')  String? transferredToId)  $default,) {final _that = this;
switch (_that) {
case _TherapyCase():
return $default(_that.id,_that.version,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.notes,_that.type,_that.status,_that.firstSessionAt,_that.lastSessionAt,_that.totalSessions,_that.patient,_that.therapist,_that.transferredTo,_that.patientId,_that.therapistId,_that.transferredToId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int version, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'deleted_at')  DateTime? deletedAt,  String? notes,  TherapyCaseType type,  TherapyCaseStatus status, @JsonKey(name: 'first_session_at')  DateTime? firstSessionAt, @JsonKey(name: 'last_session_at')  DateTime? lastSessionAt, @JsonKey(name: 'total_sessions')  int totalSessions,  Patient patient,  TherapistOutput therapist, @JsonKey(name: 'transferred_to')  TherapyCase? transferredTo, @JsonKey(name: 'patient_id')  String? patientId, @JsonKey(name: 'therapist_id')  String? therapistId, @JsonKey(name: 'transferred_to_id')  String? transferredToId)?  $default,) {final _that = this;
switch (_that) {
case _TherapyCase() when $default != null:
return $default(_that.id,_that.version,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.notes,_that.type,_that.status,_that.firstSessionAt,_that.lastSessionAt,_that.totalSessions,_that.patient,_that.therapist,_that.transferredTo,_that.patientId,_that.therapistId,_that.transferredToId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TherapyCase implements TherapyCase {
  const _TherapyCase({required this.id, required this.version, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt, @JsonKey(name: 'deleted_at') this.deletedAt, this.notes, required this.type, required this.status, @JsonKey(name: 'first_session_at') this.firstSessionAt, @JsonKey(name: 'last_session_at') this.lastSessionAt, @JsonKey(name: 'total_sessions') required this.totalSessions, required this.patient, required this.therapist, @JsonKey(name: 'transferred_to') this.transferredTo, @JsonKey(name: 'patient_id') this.patientId, @JsonKey(name: 'therapist_id') this.therapistId, @JsonKey(name: 'transferred_to_id') this.transferredToId});
  factory _TherapyCase.fromJson(Map<String, dynamic> json) => _$TherapyCaseFromJson(json);

@override final  String id;
@override final  int version;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;
@override@JsonKey(name: 'deleted_at') final  DateTime? deletedAt;
@override final  String? notes;
@override final  TherapyCaseType type;
@override final  TherapyCaseStatus status;
@override@JsonKey(name: 'first_session_at') final  DateTime? firstSessionAt;
@override@JsonKey(name: 'last_session_at') final  DateTime? lastSessionAt;
@override@JsonKey(name: 'total_sessions') final  int totalSessions;
@override final  Patient patient;
@override final  TherapistOutput therapist;
@override@JsonKey(name: 'transferred_to') final  TherapyCase? transferredTo;
@override@JsonKey(name: 'patient_id') final  String? patientId;
@override@JsonKey(name: 'therapist_id') final  String? therapistId;
@override@JsonKey(name: 'transferred_to_id') final  String? transferredToId;

/// Create a copy of TherapyCase
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TherapyCaseCopyWith<_TherapyCase> get copyWith => __$TherapyCaseCopyWithImpl<_TherapyCase>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TherapyCaseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TherapyCase&&(identical(other.id, id) || other.id == id)&&(identical(other.version, version) || other.version == version)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.firstSessionAt, firstSessionAt) || other.firstSessionAt == firstSessionAt)&&(identical(other.lastSessionAt, lastSessionAt) || other.lastSessionAt == lastSessionAt)&&(identical(other.totalSessions, totalSessions) || other.totalSessions == totalSessions)&&(identical(other.patient, patient) || other.patient == patient)&&(identical(other.therapist, therapist) || other.therapist == therapist)&&(identical(other.transferredTo, transferredTo) || other.transferredTo == transferredTo)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.therapistId, therapistId) || other.therapistId == therapistId)&&(identical(other.transferredToId, transferredToId) || other.transferredToId == transferredToId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,version,createdAt,updatedAt,deletedAt,notes,type,status,firstSessionAt,lastSessionAt,totalSessions,patient,therapist,transferredTo,patientId,therapistId,transferredToId);

@override
String toString() {
  return 'TherapyCase(id: $id, version: $version, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, notes: $notes, type: $type, status: $status, firstSessionAt: $firstSessionAt, lastSessionAt: $lastSessionAt, totalSessions: $totalSessions, patient: $patient, therapist: $therapist, transferredTo: $transferredTo, patientId: $patientId, therapistId: $therapistId, transferredToId: $transferredToId)';
}


}

/// @nodoc
abstract mixin class _$TherapyCaseCopyWith<$Res> implements $TherapyCaseCopyWith<$Res> {
  factory _$TherapyCaseCopyWith(_TherapyCase value, $Res Function(_TherapyCase) _then) = __$TherapyCaseCopyWithImpl;
@override @useResult
$Res call({
 String id, int version,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt,@JsonKey(name: 'deleted_at') DateTime? deletedAt, String? notes, TherapyCaseType type, TherapyCaseStatus status,@JsonKey(name: 'first_session_at') DateTime? firstSessionAt,@JsonKey(name: 'last_session_at') DateTime? lastSessionAt,@JsonKey(name: 'total_sessions') int totalSessions, Patient patient, TherapistOutput therapist,@JsonKey(name: 'transferred_to') TherapyCase? transferredTo,@JsonKey(name: 'patient_id') String? patientId,@JsonKey(name: 'therapist_id') String? therapistId,@JsonKey(name: 'transferred_to_id') String? transferredToId
});


@override $PatientCopyWith<$Res> get patient;@override $TherapistOutputCopyWith<$Res> get therapist;@override $TherapyCaseCopyWith<$Res>? get transferredTo;

}
/// @nodoc
class __$TherapyCaseCopyWithImpl<$Res>
    implements _$TherapyCaseCopyWith<$Res> {
  __$TherapyCaseCopyWithImpl(this._self, this._then);

  final _TherapyCase _self;
  final $Res Function(_TherapyCase) _then;

/// Create a copy of TherapyCase
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? version = null,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,Object? notes = freezed,Object? type = null,Object? status = null,Object? firstSessionAt = freezed,Object? lastSessionAt = freezed,Object? totalSessions = null,Object? patient = null,Object? therapist = null,Object? transferredTo = freezed,Object? patientId = freezed,Object? therapistId = freezed,Object? transferredToId = freezed,}) {
  return _then(_TherapyCase(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TherapyCaseType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TherapyCaseStatus,firstSessionAt: freezed == firstSessionAt ? _self.firstSessionAt : firstSessionAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastSessionAt: freezed == lastSessionAt ? _self.lastSessionAt : lastSessionAt // ignore: cast_nullable_to_non_nullable
as DateTime?,totalSessions: null == totalSessions ? _self.totalSessions : totalSessions // ignore: cast_nullable_to_non_nullable
as int,patient: null == patient ? _self.patient : patient // ignore: cast_nullable_to_non_nullable
as Patient,therapist: null == therapist ? _self.therapist : therapist // ignore: cast_nullable_to_non_nullable
as TherapistOutput,transferredTo: freezed == transferredTo ? _self.transferredTo : transferredTo // ignore: cast_nullable_to_non_nullable
as TherapyCase?,patientId: freezed == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String?,therapistId: freezed == therapistId ? _self.therapistId : therapistId // ignore: cast_nullable_to_non_nullable
as String?,transferredToId: freezed == transferredToId ? _self.transferredToId : transferredToId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of TherapyCase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PatientCopyWith<$Res> get patient {
  
  return $PatientCopyWith<$Res>(_self.patient, (value) {
    return _then(_self.copyWith(patient: value));
  });
}/// Create a copy of TherapyCase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TherapistOutputCopyWith<$Res> get therapist {
  
  return $TherapistOutputCopyWith<$Res>(_self.therapist, (value) {
    return _then(_self.copyWith(therapist: value));
  });
}/// Create a copy of TherapyCase
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TherapyCaseCopyWith<$Res>? get transferredTo {
    if (_self.transferredTo == null) {
    return null;
  }

  return $TherapyCaseCopyWith<$Res>(_self.transferredTo!, (value) {
    return _then(_self.copyWith(transferredTo: value));
  });
}
}

// dart format on

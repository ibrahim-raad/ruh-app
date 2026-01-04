// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Session {

 String get id; int get version;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt;@JsonKey(name: 'deleted_at') DateTime? get deletedAt;@JsonKey(name: 'therapy_case_id') String? get therapyCaseId;@JsonKey(name: 'start_time') DateTime get startTime;@JsonKey(name: 'end_time') DateTime get endTime;@JsonKey(name: 'actual_start_time') DateTime? get actualStartTime;@JsonKey(name: 'actual_end_time') DateTime? get actualEndTime; String? get link;@JsonKey(name: 'audio_link') String? get audioLink;@JsonKey(name: 'patient_feedback') String? get patientFeedback; SessionType get type; SessionStatus get status;
/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionCopyWith<Session> get copyWith => _$SessionCopyWithImpl<Session>(this as Session, _$identity);

  /// Serializes this Session to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Session&&(identical(other.id, id) || other.id == id)&&(identical(other.version, version) || other.version == version)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.therapyCaseId, therapyCaseId) || other.therapyCaseId == therapyCaseId)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.actualStartTime, actualStartTime) || other.actualStartTime == actualStartTime)&&(identical(other.actualEndTime, actualEndTime) || other.actualEndTime == actualEndTime)&&(identical(other.link, link) || other.link == link)&&(identical(other.audioLink, audioLink) || other.audioLink == audioLink)&&(identical(other.patientFeedback, patientFeedback) || other.patientFeedback == patientFeedback)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,version,createdAt,updatedAt,deletedAt,therapyCaseId,startTime,endTime,actualStartTime,actualEndTime,link,audioLink,patientFeedback,type,status);

@override
String toString() {
  return 'Session(id: $id, version: $version, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, therapyCaseId: $therapyCaseId, startTime: $startTime, endTime: $endTime, actualStartTime: $actualStartTime, actualEndTime: $actualEndTime, link: $link, audioLink: $audioLink, patientFeedback: $patientFeedback, type: $type, status: $status)';
}


}

/// @nodoc
abstract mixin class $SessionCopyWith<$Res>  {
  factory $SessionCopyWith(Session value, $Res Function(Session) _then) = _$SessionCopyWithImpl;
@useResult
$Res call({
 String id, int version,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt,@JsonKey(name: 'deleted_at') DateTime? deletedAt,@JsonKey(name: 'therapy_case_id') String? therapyCaseId,@JsonKey(name: 'start_time') DateTime startTime,@JsonKey(name: 'end_time') DateTime endTime,@JsonKey(name: 'actual_start_time') DateTime? actualStartTime,@JsonKey(name: 'actual_end_time') DateTime? actualEndTime, String? link,@JsonKey(name: 'audio_link') String? audioLink,@JsonKey(name: 'patient_feedback') String? patientFeedback, SessionType type, SessionStatus status
});




}
/// @nodoc
class _$SessionCopyWithImpl<$Res>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._self, this._then);

  final Session _self;
  final $Res Function(Session) _then;

/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? version = null,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,Object? therapyCaseId = freezed,Object? startTime = null,Object? endTime = null,Object? actualStartTime = freezed,Object? actualEndTime = freezed,Object? link = freezed,Object? audioLink = freezed,Object? patientFeedback = freezed,Object? type = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,therapyCaseId: freezed == therapyCaseId ? _self.therapyCaseId : therapyCaseId // ignore: cast_nullable_to_non_nullable
as String?,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,actualStartTime: freezed == actualStartTime ? _self.actualStartTime : actualStartTime // ignore: cast_nullable_to_non_nullable
as DateTime?,actualEndTime: freezed == actualEndTime ? _self.actualEndTime : actualEndTime // ignore: cast_nullable_to_non_nullable
as DateTime?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,audioLink: freezed == audioLink ? _self.audioLink : audioLink // ignore: cast_nullable_to_non_nullable
as String?,patientFeedback: freezed == patientFeedback ? _self.patientFeedback : patientFeedback // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SessionType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SessionStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [Session].
extension SessionPatterns on Session {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Session value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Session() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Session value)  $default,){
final _that = this;
switch (_that) {
case _Session():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Session value)?  $default,){
final _that = this;
switch (_that) {
case _Session() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int version, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'deleted_at')  DateTime? deletedAt, @JsonKey(name: 'therapy_case_id')  String? therapyCaseId, @JsonKey(name: 'start_time')  DateTime startTime, @JsonKey(name: 'end_time')  DateTime endTime, @JsonKey(name: 'actual_start_time')  DateTime? actualStartTime, @JsonKey(name: 'actual_end_time')  DateTime? actualEndTime,  String? link, @JsonKey(name: 'audio_link')  String? audioLink, @JsonKey(name: 'patient_feedback')  String? patientFeedback,  SessionType type,  SessionStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Session() when $default != null:
return $default(_that.id,_that.version,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.therapyCaseId,_that.startTime,_that.endTime,_that.actualStartTime,_that.actualEndTime,_that.link,_that.audioLink,_that.patientFeedback,_that.type,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int version, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'deleted_at')  DateTime? deletedAt, @JsonKey(name: 'therapy_case_id')  String? therapyCaseId, @JsonKey(name: 'start_time')  DateTime startTime, @JsonKey(name: 'end_time')  DateTime endTime, @JsonKey(name: 'actual_start_time')  DateTime? actualStartTime, @JsonKey(name: 'actual_end_time')  DateTime? actualEndTime,  String? link, @JsonKey(name: 'audio_link')  String? audioLink, @JsonKey(name: 'patient_feedback')  String? patientFeedback,  SessionType type,  SessionStatus status)  $default,) {final _that = this;
switch (_that) {
case _Session():
return $default(_that.id,_that.version,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.therapyCaseId,_that.startTime,_that.endTime,_that.actualStartTime,_that.actualEndTime,_that.link,_that.audioLink,_that.patientFeedback,_that.type,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int version, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'deleted_at')  DateTime? deletedAt, @JsonKey(name: 'therapy_case_id')  String? therapyCaseId, @JsonKey(name: 'start_time')  DateTime startTime, @JsonKey(name: 'end_time')  DateTime endTime, @JsonKey(name: 'actual_start_time')  DateTime? actualStartTime, @JsonKey(name: 'actual_end_time')  DateTime? actualEndTime,  String? link, @JsonKey(name: 'audio_link')  String? audioLink, @JsonKey(name: 'patient_feedback')  String? patientFeedback,  SessionType type,  SessionStatus status)?  $default,) {final _that = this;
switch (_that) {
case _Session() when $default != null:
return $default(_that.id,_that.version,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.therapyCaseId,_that.startTime,_that.endTime,_that.actualStartTime,_that.actualEndTime,_that.link,_that.audioLink,_that.patientFeedback,_that.type,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Session implements Session {
  const _Session({required this.id, required this.version, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt, @JsonKey(name: 'deleted_at') this.deletedAt, @JsonKey(name: 'therapy_case_id') this.therapyCaseId, @JsonKey(name: 'start_time') required this.startTime, @JsonKey(name: 'end_time') required this.endTime, @JsonKey(name: 'actual_start_time') this.actualStartTime, @JsonKey(name: 'actual_end_time') this.actualEndTime, this.link, @JsonKey(name: 'audio_link') this.audioLink, @JsonKey(name: 'patient_feedback') this.patientFeedback, required this.type, required this.status});
  factory _Session.fromJson(Map<String, dynamic> json) => _$SessionFromJson(json);

@override final  String id;
@override final  int version;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;
@override@JsonKey(name: 'deleted_at') final  DateTime? deletedAt;
@override@JsonKey(name: 'therapy_case_id') final  String? therapyCaseId;
@override@JsonKey(name: 'start_time') final  DateTime startTime;
@override@JsonKey(name: 'end_time') final  DateTime endTime;
@override@JsonKey(name: 'actual_start_time') final  DateTime? actualStartTime;
@override@JsonKey(name: 'actual_end_time') final  DateTime? actualEndTime;
@override final  String? link;
@override@JsonKey(name: 'audio_link') final  String? audioLink;
@override@JsonKey(name: 'patient_feedback') final  String? patientFeedback;
@override final  SessionType type;
@override final  SessionStatus status;

/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionCopyWith<_Session> get copyWith => __$SessionCopyWithImpl<_Session>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Session&&(identical(other.id, id) || other.id == id)&&(identical(other.version, version) || other.version == version)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.therapyCaseId, therapyCaseId) || other.therapyCaseId == therapyCaseId)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.actualStartTime, actualStartTime) || other.actualStartTime == actualStartTime)&&(identical(other.actualEndTime, actualEndTime) || other.actualEndTime == actualEndTime)&&(identical(other.link, link) || other.link == link)&&(identical(other.audioLink, audioLink) || other.audioLink == audioLink)&&(identical(other.patientFeedback, patientFeedback) || other.patientFeedback == patientFeedback)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,version,createdAt,updatedAt,deletedAt,therapyCaseId,startTime,endTime,actualStartTime,actualEndTime,link,audioLink,patientFeedback,type,status);

@override
String toString() {
  return 'Session(id: $id, version: $version, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, therapyCaseId: $therapyCaseId, startTime: $startTime, endTime: $endTime, actualStartTime: $actualStartTime, actualEndTime: $actualEndTime, link: $link, audioLink: $audioLink, patientFeedback: $patientFeedback, type: $type, status: $status)';
}


}

/// @nodoc
abstract mixin class _$SessionCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$SessionCopyWith(_Session value, $Res Function(_Session) _then) = __$SessionCopyWithImpl;
@override @useResult
$Res call({
 String id, int version,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt,@JsonKey(name: 'deleted_at') DateTime? deletedAt,@JsonKey(name: 'therapy_case_id') String? therapyCaseId,@JsonKey(name: 'start_time') DateTime startTime,@JsonKey(name: 'end_time') DateTime endTime,@JsonKey(name: 'actual_start_time') DateTime? actualStartTime,@JsonKey(name: 'actual_end_time') DateTime? actualEndTime, String? link,@JsonKey(name: 'audio_link') String? audioLink,@JsonKey(name: 'patient_feedback') String? patientFeedback, SessionType type, SessionStatus status
});




}
/// @nodoc
class __$SessionCopyWithImpl<$Res>
    implements _$SessionCopyWith<$Res> {
  __$SessionCopyWithImpl(this._self, this._then);

  final _Session _self;
  final $Res Function(_Session) _then;

/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? version = null,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,Object? therapyCaseId = freezed,Object? startTime = null,Object? endTime = null,Object? actualStartTime = freezed,Object? actualEndTime = freezed,Object? link = freezed,Object? audioLink = freezed,Object? patientFeedback = freezed,Object? type = null,Object? status = null,}) {
  return _then(_Session(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,therapyCaseId: freezed == therapyCaseId ? _self.therapyCaseId : therapyCaseId // ignore: cast_nullable_to_non_nullable
as String?,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,actualStartTime: freezed == actualStartTime ? _self.actualStartTime : actualStartTime // ignore: cast_nullable_to_non_nullable
as DateTime?,actualEndTime: freezed == actualEndTime ? _self.actualEndTime : actualEndTime // ignore: cast_nullable_to_non_nullable
as DateTime?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,audioLink: freezed == audioLink ? _self.audioLink : audioLink // ignore: cast_nullable_to_non_nullable
as String?,patientFeedback: freezed == patientFeedback ? _self.patientFeedback : patientFeedback // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SessionType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SessionStatus,
  ));
}


}

// dart format on

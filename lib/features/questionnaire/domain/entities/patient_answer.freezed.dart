// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PatientAnswer {

 String get id;@JsonKey(name: 'possible_answer_id') String? get possibleAnswerId; String? get answer;@JsonKey(name: 'patient_id') String get patientId;@JsonKey(name: 'question_id') String get questionId;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt;
/// Create a copy of PatientAnswer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatientAnswerCopyWith<PatientAnswer> get copyWith => _$PatientAnswerCopyWithImpl<PatientAnswer>(this as PatientAnswer, _$identity);

  /// Serializes this PatientAnswer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientAnswer&&(identical(other.id, id) || other.id == id)&&(identical(other.possibleAnswerId, possibleAnswerId) || other.possibleAnswerId == possibleAnswerId)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,possibleAnswerId,answer,patientId,questionId,createdAt,updatedAt);

@override
String toString() {
  return 'PatientAnswer(id: $id, possibleAnswerId: $possibleAnswerId, answer: $answer, patientId: $patientId, questionId: $questionId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PatientAnswerCopyWith<$Res>  {
  factory $PatientAnswerCopyWith(PatientAnswer value, $Res Function(PatientAnswer) _then) = _$PatientAnswerCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'possible_answer_id') String? possibleAnswerId, String? answer,@JsonKey(name: 'patient_id') String patientId,@JsonKey(name: 'question_id') String questionId,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class _$PatientAnswerCopyWithImpl<$Res>
    implements $PatientAnswerCopyWith<$Res> {
  _$PatientAnswerCopyWithImpl(this._self, this._then);

  final PatientAnswer _self;
  final $Res Function(PatientAnswer) _then;

/// Create a copy of PatientAnswer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? possibleAnswerId = freezed,Object? answer = freezed,Object? patientId = null,Object? questionId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,possibleAnswerId: freezed == possibleAnswerId ? _self.possibleAnswerId : possibleAnswerId // ignore: cast_nullable_to_non_nullable
as String?,answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String?,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [PatientAnswer].
extension PatientAnswerPatterns on PatientAnswer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PatientAnswer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PatientAnswer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PatientAnswer value)  $default,){
final _that = this;
switch (_that) {
case _PatientAnswer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PatientAnswer value)?  $default,){
final _that = this;
switch (_that) {
case _PatientAnswer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'possible_answer_id')  String? possibleAnswerId,  String? answer, @JsonKey(name: 'patient_id')  String patientId, @JsonKey(name: 'question_id')  String questionId, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PatientAnswer() when $default != null:
return $default(_that.id,_that.possibleAnswerId,_that.answer,_that.patientId,_that.questionId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'possible_answer_id')  String? possibleAnswerId,  String? answer, @JsonKey(name: 'patient_id')  String patientId, @JsonKey(name: 'question_id')  String questionId, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PatientAnswer():
return $default(_that.id,_that.possibleAnswerId,_that.answer,_that.patientId,_that.questionId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'possible_answer_id')  String? possibleAnswerId,  String? answer, @JsonKey(name: 'patient_id')  String patientId, @JsonKey(name: 'question_id')  String questionId, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PatientAnswer() when $default != null:
return $default(_that.id,_that.possibleAnswerId,_that.answer,_that.patientId,_that.questionId,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PatientAnswer implements PatientAnswer {
  const _PatientAnswer({required this.id, @JsonKey(name: 'possible_answer_id') this.possibleAnswerId, this.answer, @JsonKey(name: 'patient_id') required this.patientId, @JsonKey(name: 'question_id') required this.questionId, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _PatientAnswer.fromJson(Map<String, dynamic> json) => _$PatientAnswerFromJson(json);

@override final  String id;
@override@JsonKey(name: 'possible_answer_id') final  String? possibleAnswerId;
@override final  String? answer;
@override@JsonKey(name: 'patient_id') final  String patientId;
@override@JsonKey(name: 'question_id') final  String questionId;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;

/// Create a copy of PatientAnswer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PatientAnswerCopyWith<_PatientAnswer> get copyWith => __$PatientAnswerCopyWithImpl<_PatientAnswer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PatientAnswerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PatientAnswer&&(identical(other.id, id) || other.id == id)&&(identical(other.possibleAnswerId, possibleAnswerId) || other.possibleAnswerId == possibleAnswerId)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,possibleAnswerId,answer,patientId,questionId,createdAt,updatedAt);

@override
String toString() {
  return 'PatientAnswer(id: $id, possibleAnswerId: $possibleAnswerId, answer: $answer, patientId: $patientId, questionId: $questionId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PatientAnswerCopyWith<$Res> implements $PatientAnswerCopyWith<$Res> {
  factory _$PatientAnswerCopyWith(_PatientAnswer value, $Res Function(_PatientAnswer) _then) = __$PatientAnswerCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'possible_answer_id') String? possibleAnswerId, String? answer,@JsonKey(name: 'patient_id') String patientId,@JsonKey(name: 'question_id') String questionId,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class __$PatientAnswerCopyWithImpl<$Res>
    implements _$PatientAnswerCopyWith<$Res> {
  __$PatientAnswerCopyWithImpl(this._self, this._then);

  final _PatientAnswer _self;
  final $Res Function(_PatientAnswer) _then;

/// Create a copy of PatientAnswer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? possibleAnswerId = freezed,Object? answer = freezed,Object? patientId = null,Object? questionId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_PatientAnswer(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,possibleAnswerId: freezed == possibleAnswerId ? _self.possibleAnswerId : possibleAnswerId // ignore: cast_nullable_to_non_nullable
as String?,answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String?,patientId: null == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on

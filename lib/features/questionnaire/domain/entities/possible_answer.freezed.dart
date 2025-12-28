// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'possible_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PossibleAnswer {

 String get id; String get answer;@JsonKey(name: 'question_id') String get questionId;
/// Create a copy of PossibleAnswer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PossibleAnswerCopyWith<PossibleAnswer> get copyWith => _$PossibleAnswerCopyWithImpl<PossibleAnswer>(this as PossibleAnswer, _$identity);

  /// Serializes this PossibleAnswer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PossibleAnswer&&(identical(other.id, id) || other.id == id)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.questionId, questionId) || other.questionId == questionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,answer,questionId);

@override
String toString() {
  return 'PossibleAnswer(id: $id, answer: $answer, questionId: $questionId)';
}


}

/// @nodoc
abstract mixin class $PossibleAnswerCopyWith<$Res>  {
  factory $PossibleAnswerCopyWith(PossibleAnswer value, $Res Function(PossibleAnswer) _then) = _$PossibleAnswerCopyWithImpl;
@useResult
$Res call({
 String id, String answer,@JsonKey(name: 'question_id') String questionId
});




}
/// @nodoc
class _$PossibleAnswerCopyWithImpl<$Res>
    implements $PossibleAnswerCopyWith<$Res> {
  _$PossibleAnswerCopyWithImpl(this._self, this._then);

  final PossibleAnswer _self;
  final $Res Function(PossibleAnswer) _then;

/// Create a copy of PossibleAnswer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? answer = null,Object? questionId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PossibleAnswer].
extension PossibleAnswerPatterns on PossibleAnswer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PossibleAnswer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PossibleAnswer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PossibleAnswer value)  $default,){
final _that = this;
switch (_that) {
case _PossibleAnswer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PossibleAnswer value)?  $default,){
final _that = this;
switch (_that) {
case _PossibleAnswer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String answer, @JsonKey(name: 'question_id')  String questionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PossibleAnswer() when $default != null:
return $default(_that.id,_that.answer,_that.questionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String answer, @JsonKey(name: 'question_id')  String questionId)  $default,) {final _that = this;
switch (_that) {
case _PossibleAnswer():
return $default(_that.id,_that.answer,_that.questionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String answer, @JsonKey(name: 'question_id')  String questionId)?  $default,) {final _that = this;
switch (_that) {
case _PossibleAnswer() when $default != null:
return $default(_that.id,_that.answer,_that.questionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PossibleAnswer implements PossibleAnswer {
  const _PossibleAnswer({required this.id, required this.answer, @JsonKey(name: 'question_id') required this.questionId});
  factory _PossibleAnswer.fromJson(Map<String, dynamic> json) => _$PossibleAnswerFromJson(json);

@override final  String id;
@override final  String answer;
@override@JsonKey(name: 'question_id') final  String questionId;

/// Create a copy of PossibleAnswer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PossibleAnswerCopyWith<_PossibleAnswer> get copyWith => __$PossibleAnswerCopyWithImpl<_PossibleAnswer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PossibleAnswerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PossibleAnswer&&(identical(other.id, id) || other.id == id)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.questionId, questionId) || other.questionId == questionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,answer,questionId);

@override
String toString() {
  return 'PossibleAnswer(id: $id, answer: $answer, questionId: $questionId)';
}


}

/// @nodoc
abstract mixin class _$PossibleAnswerCopyWith<$Res> implements $PossibleAnswerCopyWith<$Res> {
  factory _$PossibleAnswerCopyWith(_PossibleAnswer value, $Res Function(_PossibleAnswer) _then) = __$PossibleAnswerCopyWithImpl;
@override @useResult
$Res call({
 String id, String answer,@JsonKey(name: 'question_id') String questionId
});




}
/// @nodoc
class __$PossibleAnswerCopyWithImpl<$Res>
    implements _$PossibleAnswerCopyWith<$Res> {
  __$PossibleAnswerCopyWithImpl(this._self, this._then);

  final _PossibleAnswer _self;
  final $Res Function(_PossibleAnswer) _then;

/// Create a copy of PossibleAnswer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? answer = null,Object? questionId = null,}) {
  return _then(_PossibleAnswer(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

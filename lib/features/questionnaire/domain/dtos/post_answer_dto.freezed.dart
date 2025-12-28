// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_answer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostAnswerDto {

 String get questionId;@JsonKey(name: 'possible_answer_id') String? get possibleAnswerId; String? get answer;
/// Create a copy of PostAnswerDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostAnswerDtoCopyWith<PostAnswerDto> get copyWith => _$PostAnswerDtoCopyWithImpl<PostAnswerDto>(this as PostAnswerDto, _$identity);

  /// Serializes this PostAnswerDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostAnswerDto&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.possibleAnswerId, possibleAnswerId) || other.possibleAnswerId == possibleAnswerId)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,possibleAnswerId,answer);

@override
String toString() {
  return 'PostAnswerDto(questionId: $questionId, possibleAnswerId: $possibleAnswerId, answer: $answer)';
}


}

/// @nodoc
abstract mixin class $PostAnswerDtoCopyWith<$Res>  {
  factory $PostAnswerDtoCopyWith(PostAnswerDto value, $Res Function(PostAnswerDto) _then) = _$PostAnswerDtoCopyWithImpl;
@useResult
$Res call({
 String questionId,@JsonKey(name: 'possible_answer_id') String? possibleAnswerId, String? answer
});




}
/// @nodoc
class _$PostAnswerDtoCopyWithImpl<$Res>
    implements $PostAnswerDtoCopyWith<$Res> {
  _$PostAnswerDtoCopyWithImpl(this._self, this._then);

  final PostAnswerDto _self;
  final $Res Function(PostAnswerDto) _then;

/// Create a copy of PostAnswerDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionId = null,Object? possibleAnswerId = freezed,Object? answer = freezed,}) {
  return _then(_self.copyWith(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,possibleAnswerId: freezed == possibleAnswerId ? _self.possibleAnswerId : possibleAnswerId // ignore: cast_nullable_to_non_nullable
as String?,answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PostAnswerDto].
extension PostAnswerDtoPatterns on PostAnswerDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostAnswerDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostAnswerDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostAnswerDto value)  $default,){
final _that = this;
switch (_that) {
case _PostAnswerDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostAnswerDto value)?  $default,){
final _that = this;
switch (_that) {
case _PostAnswerDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String questionId, @JsonKey(name: 'possible_answer_id')  String? possibleAnswerId,  String? answer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostAnswerDto() when $default != null:
return $default(_that.questionId,_that.possibleAnswerId,_that.answer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String questionId, @JsonKey(name: 'possible_answer_id')  String? possibleAnswerId,  String? answer)  $default,) {final _that = this;
switch (_that) {
case _PostAnswerDto():
return $default(_that.questionId,_that.possibleAnswerId,_that.answer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String questionId, @JsonKey(name: 'possible_answer_id')  String? possibleAnswerId,  String? answer)?  $default,) {final _that = this;
switch (_that) {
case _PostAnswerDto() when $default != null:
return $default(_that.questionId,_that.possibleAnswerId,_that.answer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostAnswerDto implements PostAnswerDto {
  const _PostAnswerDto({required this.questionId, @JsonKey(name: 'possible_answer_id') this.possibleAnswerId, this.answer});
  factory _PostAnswerDto.fromJson(Map<String, dynamic> json) => _$PostAnswerDtoFromJson(json);

@override final  String questionId;
@override@JsonKey(name: 'possible_answer_id') final  String? possibleAnswerId;
@override final  String? answer;

/// Create a copy of PostAnswerDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostAnswerDtoCopyWith<_PostAnswerDto> get copyWith => __$PostAnswerDtoCopyWithImpl<_PostAnswerDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostAnswerDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostAnswerDto&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.possibleAnswerId, possibleAnswerId) || other.possibleAnswerId == possibleAnswerId)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,possibleAnswerId,answer);

@override
String toString() {
  return 'PostAnswerDto(questionId: $questionId, possibleAnswerId: $possibleAnswerId, answer: $answer)';
}


}

/// @nodoc
abstract mixin class _$PostAnswerDtoCopyWith<$Res> implements $PostAnswerDtoCopyWith<$Res> {
  factory _$PostAnswerDtoCopyWith(_PostAnswerDto value, $Res Function(_PostAnswerDto) _then) = __$PostAnswerDtoCopyWithImpl;
@override @useResult
$Res call({
 String questionId,@JsonKey(name: 'possible_answer_id') String? possibleAnswerId, String? answer
});




}
/// @nodoc
class __$PostAnswerDtoCopyWithImpl<$Res>
    implements _$PostAnswerDtoCopyWith<$Res> {
  __$PostAnswerDtoCopyWithImpl(this._self, this._then);

  final _PostAnswerDto _self;
  final $Res Function(_PostAnswerDto) _then;

/// Create a copy of PostAnswerDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionId = null,Object? possibleAnswerId = freezed,Object? answer = freezed,}) {
  return _then(_PostAnswerDto(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,possibleAnswerId: freezed == possibleAnswerId ? _self.possibleAnswerId : possibleAnswerId // ignore: cast_nullable_to_non_nullable
as String?,answer: freezed == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

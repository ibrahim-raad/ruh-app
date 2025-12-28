// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_with_answers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuestionWithAnswers {

 Question get question; List<PossibleAnswer> get possibleAnswers;
/// Create a copy of QuestionWithAnswers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionWithAnswersCopyWith<QuestionWithAnswers> get copyWith => _$QuestionWithAnswersCopyWithImpl<QuestionWithAnswers>(this as QuestionWithAnswers, _$identity);

  /// Serializes this QuestionWithAnswers to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionWithAnswers&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other.possibleAnswers, possibleAnswers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question,const DeepCollectionEquality().hash(possibleAnswers));

@override
String toString() {
  return 'QuestionWithAnswers(question: $question, possibleAnswers: $possibleAnswers)';
}


}

/// @nodoc
abstract mixin class $QuestionWithAnswersCopyWith<$Res>  {
  factory $QuestionWithAnswersCopyWith(QuestionWithAnswers value, $Res Function(QuestionWithAnswers) _then) = _$QuestionWithAnswersCopyWithImpl;
@useResult
$Res call({
 Question question, List<PossibleAnswer> possibleAnswers
});


$QuestionCopyWith<$Res> get question;

}
/// @nodoc
class _$QuestionWithAnswersCopyWithImpl<$Res>
    implements $QuestionWithAnswersCopyWith<$Res> {
  _$QuestionWithAnswersCopyWithImpl(this._self, this._then);

  final QuestionWithAnswers _self;
  final $Res Function(QuestionWithAnswers) _then;

/// Create a copy of QuestionWithAnswers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? question = null,Object? possibleAnswers = null,}) {
  return _then(_self.copyWith(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as Question,possibleAnswers: null == possibleAnswers ? _self.possibleAnswers : possibleAnswers // ignore: cast_nullable_to_non_nullable
as List<PossibleAnswer>,
  ));
}
/// Create a copy of QuestionWithAnswers
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestionCopyWith<$Res> get question {
  
  return $QuestionCopyWith<$Res>(_self.question, (value) {
    return _then(_self.copyWith(question: value));
  });
}
}


/// Adds pattern-matching-related methods to [QuestionWithAnswers].
extension QuestionWithAnswersPatterns on QuestionWithAnswers {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionWithAnswers value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionWithAnswers() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionWithAnswers value)  $default,){
final _that = this;
switch (_that) {
case _QuestionWithAnswers():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionWithAnswers value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionWithAnswers() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Question question,  List<PossibleAnswer> possibleAnswers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionWithAnswers() when $default != null:
return $default(_that.question,_that.possibleAnswers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Question question,  List<PossibleAnswer> possibleAnswers)  $default,) {final _that = this;
switch (_that) {
case _QuestionWithAnswers():
return $default(_that.question,_that.possibleAnswers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Question question,  List<PossibleAnswer> possibleAnswers)?  $default,) {final _that = this;
switch (_that) {
case _QuestionWithAnswers() when $default != null:
return $default(_that.question,_that.possibleAnswers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestionWithAnswers implements QuestionWithAnswers {
  const _QuestionWithAnswers({required this.question, final  List<PossibleAnswer> possibleAnswers = const []}): _possibleAnswers = possibleAnswers;
  factory _QuestionWithAnswers.fromJson(Map<String, dynamic> json) => _$QuestionWithAnswersFromJson(json);

@override final  Question question;
 final  List<PossibleAnswer> _possibleAnswers;
@override@JsonKey() List<PossibleAnswer> get possibleAnswers {
  if (_possibleAnswers is EqualUnmodifiableListView) return _possibleAnswers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_possibleAnswers);
}


/// Create a copy of QuestionWithAnswers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionWithAnswersCopyWith<_QuestionWithAnswers> get copyWith => __$QuestionWithAnswersCopyWithImpl<_QuestionWithAnswers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionWithAnswersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionWithAnswers&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other._possibleAnswers, _possibleAnswers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question,const DeepCollectionEquality().hash(_possibleAnswers));

@override
String toString() {
  return 'QuestionWithAnswers(question: $question, possibleAnswers: $possibleAnswers)';
}


}

/// @nodoc
abstract mixin class _$QuestionWithAnswersCopyWith<$Res> implements $QuestionWithAnswersCopyWith<$Res> {
  factory _$QuestionWithAnswersCopyWith(_QuestionWithAnswers value, $Res Function(_QuestionWithAnswers) _then) = __$QuestionWithAnswersCopyWithImpl;
@override @useResult
$Res call({
 Question question, List<PossibleAnswer> possibleAnswers
});


@override $QuestionCopyWith<$Res> get question;

}
/// @nodoc
class __$QuestionWithAnswersCopyWithImpl<$Res>
    implements _$QuestionWithAnswersCopyWith<$Res> {
  __$QuestionWithAnswersCopyWithImpl(this._self, this._then);

  final _QuestionWithAnswers _self;
  final $Res Function(_QuestionWithAnswers) _then;

/// Create a copy of QuestionWithAnswers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? question = null,Object? possibleAnswers = null,}) {
  return _then(_QuestionWithAnswers(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as Question,possibleAnswers: null == possibleAnswers ? _self._possibleAnswers : possibleAnswers // ignore: cast_nullable_to_non_nullable
as List<PossibleAnswer>,
  ));
}

/// Create a copy of QuestionWithAnswers
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestionCopyWith<$Res> get question {
  
  return $QuestionCopyWith<$Res>(_self.question, (value) {
    return _then(_self.copyWith(question: value));
  });
}
}

// dart format on

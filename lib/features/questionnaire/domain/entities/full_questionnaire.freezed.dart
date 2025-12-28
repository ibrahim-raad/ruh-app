// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'full_questionnaire.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FullQuestionnaire {

 Questionnaire get questionnaire; List<QuestionWithAnswers> get questions;
/// Create a copy of FullQuestionnaire
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FullQuestionnaireCopyWith<FullQuestionnaire> get copyWith => _$FullQuestionnaireCopyWithImpl<FullQuestionnaire>(this as FullQuestionnaire, _$identity);

  /// Serializes this FullQuestionnaire to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FullQuestionnaire&&(identical(other.questionnaire, questionnaire) || other.questionnaire == questionnaire)&&const DeepCollectionEquality().equals(other.questions, questions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionnaire,const DeepCollectionEquality().hash(questions));

@override
String toString() {
  return 'FullQuestionnaire(questionnaire: $questionnaire, questions: $questions)';
}


}

/// @nodoc
abstract mixin class $FullQuestionnaireCopyWith<$Res>  {
  factory $FullQuestionnaireCopyWith(FullQuestionnaire value, $Res Function(FullQuestionnaire) _then) = _$FullQuestionnaireCopyWithImpl;
@useResult
$Res call({
 Questionnaire questionnaire, List<QuestionWithAnswers> questions
});


$QuestionnaireCopyWith<$Res> get questionnaire;

}
/// @nodoc
class _$FullQuestionnaireCopyWithImpl<$Res>
    implements $FullQuestionnaireCopyWith<$Res> {
  _$FullQuestionnaireCopyWithImpl(this._self, this._then);

  final FullQuestionnaire _self;
  final $Res Function(FullQuestionnaire) _then;

/// Create a copy of FullQuestionnaire
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionnaire = null,Object? questions = null,}) {
  return _then(_self.copyWith(
questionnaire: null == questionnaire ? _self.questionnaire : questionnaire // ignore: cast_nullable_to_non_nullable
as Questionnaire,questions: null == questions ? _self.questions : questions // ignore: cast_nullable_to_non_nullable
as List<QuestionWithAnswers>,
  ));
}
/// Create a copy of FullQuestionnaire
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestionnaireCopyWith<$Res> get questionnaire {
  
  return $QuestionnaireCopyWith<$Res>(_self.questionnaire, (value) {
    return _then(_self.copyWith(questionnaire: value));
  });
}
}


/// Adds pattern-matching-related methods to [FullQuestionnaire].
extension FullQuestionnairePatterns on FullQuestionnaire {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FullQuestionnaire value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FullQuestionnaire() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FullQuestionnaire value)  $default,){
final _that = this;
switch (_that) {
case _FullQuestionnaire():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FullQuestionnaire value)?  $default,){
final _that = this;
switch (_that) {
case _FullQuestionnaire() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Questionnaire questionnaire,  List<QuestionWithAnswers> questions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FullQuestionnaire() when $default != null:
return $default(_that.questionnaire,_that.questions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Questionnaire questionnaire,  List<QuestionWithAnswers> questions)  $default,) {final _that = this;
switch (_that) {
case _FullQuestionnaire():
return $default(_that.questionnaire,_that.questions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Questionnaire questionnaire,  List<QuestionWithAnswers> questions)?  $default,) {final _that = this;
switch (_that) {
case _FullQuestionnaire() when $default != null:
return $default(_that.questionnaire,_that.questions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FullQuestionnaire implements FullQuestionnaire {
  const _FullQuestionnaire({required this.questionnaire, required final  List<QuestionWithAnswers> questions}): _questions = questions;
  factory _FullQuestionnaire.fromJson(Map<String, dynamic> json) => _$FullQuestionnaireFromJson(json);

@override final  Questionnaire questionnaire;
 final  List<QuestionWithAnswers> _questions;
@override List<QuestionWithAnswers> get questions {
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questions);
}


/// Create a copy of FullQuestionnaire
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FullQuestionnaireCopyWith<_FullQuestionnaire> get copyWith => __$FullQuestionnaireCopyWithImpl<_FullQuestionnaire>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FullQuestionnaireToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FullQuestionnaire&&(identical(other.questionnaire, questionnaire) || other.questionnaire == questionnaire)&&const DeepCollectionEquality().equals(other._questions, _questions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionnaire,const DeepCollectionEquality().hash(_questions));

@override
String toString() {
  return 'FullQuestionnaire(questionnaire: $questionnaire, questions: $questions)';
}


}

/// @nodoc
abstract mixin class _$FullQuestionnaireCopyWith<$Res> implements $FullQuestionnaireCopyWith<$Res> {
  factory _$FullQuestionnaireCopyWith(_FullQuestionnaire value, $Res Function(_FullQuestionnaire) _then) = __$FullQuestionnaireCopyWithImpl;
@override @useResult
$Res call({
 Questionnaire questionnaire, List<QuestionWithAnswers> questions
});


@override $QuestionnaireCopyWith<$Res> get questionnaire;

}
/// @nodoc
class __$FullQuestionnaireCopyWithImpl<$Res>
    implements _$FullQuestionnaireCopyWith<$Res> {
  __$FullQuestionnaireCopyWithImpl(this._self, this._then);

  final _FullQuestionnaire _self;
  final $Res Function(_FullQuestionnaire) _then;

/// Create a copy of FullQuestionnaire
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionnaire = null,Object? questions = null,}) {
  return _then(_FullQuestionnaire(
questionnaire: null == questionnaire ? _self.questionnaire : questionnaire // ignore: cast_nullable_to_non_nullable
as Questionnaire,questions: null == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<QuestionWithAnswers>,
  ));
}

/// Create a copy of FullQuestionnaire
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestionnaireCopyWith<$Res> get questionnaire {
  
  return $QuestionnaireCopyWith<$Res>(_self.questionnaire, (value) {
    return _then(_self.copyWith(questionnaire: value));
  });
}
}

// dart format on

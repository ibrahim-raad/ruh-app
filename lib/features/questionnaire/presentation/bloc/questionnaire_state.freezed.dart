// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuestionnaireState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionnaireState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionnaireState()';
}


}

/// @nodoc
class $QuestionnaireStateCopyWith<$Res>  {
$QuestionnaireStateCopyWith(QuestionnaireState _, $Res Function(QuestionnaireState) __);
}


/// Adds pattern-matching-related methods to [QuestionnaireState].
extension QuestionnaireStatePatterns on QuestionnaireState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Content value)?  content,TResult Function( _Completed value)?  completed,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Content() when content != null:
return content(_that);case _Completed() when completed != null:
return completed(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Content value)  content,required TResult Function( _Completed value)  completed,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Content():
return content(_that);case _Completed():
return completed(_that);case _Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Content value)?  content,TResult? Function( _Completed value)?  completed,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Content() when content != null:
return content(_that);case _Completed() when completed != null:
return completed(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( FullQuestionnaire data,  int stepIndex,  Map<String, DraftAnswer> drafts,  Map<String, List<PatientAnswer>> savedAnswers,  bool isSaving,  Failure? lastFailure)?  content,TResult Function()?  completed,TResult Function( Failure failure)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Content() when content != null:
return content(_that.data,_that.stepIndex,_that.drafts,_that.savedAnswers,_that.isSaving,_that.lastFailure);case _Completed() when completed != null:
return completed();case _Failure() when failure != null:
return failure(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( FullQuestionnaire data,  int stepIndex,  Map<String, DraftAnswer> drafts,  Map<String, List<PatientAnswer>> savedAnswers,  bool isSaving,  Failure? lastFailure)  content,required TResult Function()  completed,required TResult Function( Failure failure)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Content():
return content(_that.data,_that.stepIndex,_that.drafts,_that.savedAnswers,_that.isSaving,_that.lastFailure);case _Completed():
return completed();case _Failure():
return failure(_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( FullQuestionnaire data,  int stepIndex,  Map<String, DraftAnswer> drafts,  Map<String, List<PatientAnswer>> savedAnswers,  bool isSaving,  Failure? lastFailure)?  content,TResult? Function()?  completed,TResult? Function( Failure failure)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Content() when content != null:
return content(_that.data,_that.stepIndex,_that.drafts,_that.savedAnswers,_that.isSaving,_that.lastFailure);case _Completed() when completed != null:
return completed();case _Failure() when failure != null:
return failure(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements QuestionnaireState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionnaireState.initial()';
}


}




/// @nodoc


class _Loading implements QuestionnaireState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionnaireState.loading()';
}


}




/// @nodoc


class _Content implements QuestionnaireState {
  const _Content({required this.data, this.stepIndex = 0, final  Map<String, DraftAnswer> drafts = const {}, final  Map<String, List<PatientAnswer>> savedAnswers = const {}, this.isSaving = false, this.lastFailure}): _drafts = drafts,_savedAnswers = savedAnswers;
  

 final  FullQuestionnaire data;
@JsonKey() final  int stepIndex;
 final  Map<String, DraftAnswer> _drafts;
@JsonKey() Map<String, DraftAnswer> get drafts {
  if (_drafts is EqualUnmodifiableMapView) return _drafts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_drafts);
}

 final  Map<String, List<PatientAnswer>> _savedAnswers;
@JsonKey() Map<String, List<PatientAnswer>> get savedAnswers {
  if (_savedAnswers is EqualUnmodifiableMapView) return _savedAnswers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_savedAnswers);
}

@JsonKey() final  bool isSaving;
 final  Failure? lastFailure;

/// Create a copy of QuestionnaireState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentCopyWith<_Content> get copyWith => __$ContentCopyWithImpl<_Content>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Content&&(identical(other.data, data) || other.data == data)&&(identical(other.stepIndex, stepIndex) || other.stepIndex == stepIndex)&&const DeepCollectionEquality().equals(other._drafts, _drafts)&&const DeepCollectionEquality().equals(other._savedAnswers, _savedAnswers)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.lastFailure, lastFailure) || other.lastFailure == lastFailure));
}


@override
int get hashCode => Object.hash(runtimeType,data,stepIndex,const DeepCollectionEquality().hash(_drafts),const DeepCollectionEquality().hash(_savedAnswers),isSaving,lastFailure);

@override
String toString() {
  return 'QuestionnaireState.content(data: $data, stepIndex: $stepIndex, drafts: $drafts, savedAnswers: $savedAnswers, isSaving: $isSaving, lastFailure: $lastFailure)';
}


}

/// @nodoc
abstract mixin class _$ContentCopyWith<$Res> implements $QuestionnaireStateCopyWith<$Res> {
  factory _$ContentCopyWith(_Content value, $Res Function(_Content) _then) = __$ContentCopyWithImpl;
@useResult
$Res call({
 FullQuestionnaire data, int stepIndex, Map<String, DraftAnswer> drafts, Map<String, List<PatientAnswer>> savedAnswers, bool isSaving, Failure? lastFailure
});


$FullQuestionnaireCopyWith<$Res> get data;

}
/// @nodoc
class __$ContentCopyWithImpl<$Res>
    implements _$ContentCopyWith<$Res> {
  __$ContentCopyWithImpl(this._self, this._then);

  final _Content _self;
  final $Res Function(_Content) _then;

/// Create a copy of QuestionnaireState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,Object? stepIndex = null,Object? drafts = null,Object? savedAnswers = null,Object? isSaving = null,Object? lastFailure = freezed,}) {
  return _then(_Content(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FullQuestionnaire,stepIndex: null == stepIndex ? _self.stepIndex : stepIndex // ignore: cast_nullable_to_non_nullable
as int,drafts: null == drafts ? _self._drafts : drafts // ignore: cast_nullable_to_non_nullable
as Map<String, DraftAnswer>,savedAnswers: null == savedAnswers ? _self._savedAnswers : savedAnswers // ignore: cast_nullable_to_non_nullable
as Map<String, List<PatientAnswer>>,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,lastFailure: freezed == lastFailure ? _self.lastFailure : lastFailure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of QuestionnaireState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FullQuestionnaireCopyWith<$Res> get data {
  
  return $FullQuestionnaireCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _Completed implements QuestionnaireState {
  const _Completed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Completed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionnaireState.completed()';
}


}




/// @nodoc


class _Failure implements QuestionnaireState {
  const _Failure(this.failure);
  

 final  Failure failure;

/// Create a copy of QuestionnaireState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'QuestionnaireState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $QuestionnaireStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of QuestionnaireState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_Failure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on

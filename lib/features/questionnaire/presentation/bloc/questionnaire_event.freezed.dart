// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuestionnaireEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionnaireEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionnaireEvent()';
}


}

/// @nodoc
class $QuestionnaireEventCopyWith<$Res>  {
$QuestionnaireEventCopyWith(QuestionnaireEvent _, $Res Function(QuestionnaireEvent) __);
}


/// Adds pattern-matching-related methods to [QuestionnaireEvent].
extension QuestionnaireEventPatterns on QuestionnaireEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _OptionToggled value)?  optionToggled,TResult Function( _TextChanged value)?  textChanged,TResult Function( _ScaleChanged value)?  scaleChanged,TResult Function( _NextPressed value)?  nextPressed,TResult Function( _BackPressed value)?  backPressed,TResult Function( _FinishPressed value)?  finishPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _OptionToggled() when optionToggled != null:
return optionToggled(_that);case _TextChanged() when textChanged != null:
return textChanged(_that);case _ScaleChanged() when scaleChanged != null:
return scaleChanged(_that);case _NextPressed() when nextPressed != null:
return nextPressed(_that);case _BackPressed() when backPressed != null:
return backPressed(_that);case _FinishPressed() when finishPressed != null:
return finishPressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _OptionToggled value)  optionToggled,required TResult Function( _TextChanged value)  textChanged,required TResult Function( _ScaleChanged value)  scaleChanged,required TResult Function( _NextPressed value)  nextPressed,required TResult Function( _BackPressed value)  backPressed,required TResult Function( _FinishPressed value)  finishPressed,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _OptionToggled():
return optionToggled(_that);case _TextChanged():
return textChanged(_that);case _ScaleChanged():
return scaleChanged(_that);case _NextPressed():
return nextPressed(_that);case _BackPressed():
return backPressed(_that);case _FinishPressed():
return finishPressed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _OptionToggled value)?  optionToggled,TResult? Function( _TextChanged value)?  textChanged,TResult? Function( _ScaleChanged value)?  scaleChanged,TResult? Function( _NextPressed value)?  nextPressed,TResult? Function( _BackPressed value)?  backPressed,TResult? Function( _FinishPressed value)?  finishPressed,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _OptionToggled() when optionToggled != null:
return optionToggled(_that);case _TextChanged() when textChanged != null:
return textChanged(_that);case _ScaleChanged() when scaleChanged != null:
return scaleChanged(_that);case _NextPressed() when nextPressed != null:
return nextPressed(_that);case _BackPressed() when backPressed != null:
return backPressed(_that);case _FinishPressed() when finishPressed != null:
return finishPressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( QuestionnaireType type)?  started,TResult Function( String questionId,  String possibleAnswerId,  bool selected)?  optionToggled,TResult Function( String questionId,  String text)?  textChanged,TResult Function( String questionId,  int value)?  scaleChanged,TResult Function()?  nextPressed,TResult Function()?  backPressed,TResult Function()?  finishPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.type);case _OptionToggled() when optionToggled != null:
return optionToggled(_that.questionId,_that.possibleAnswerId,_that.selected);case _TextChanged() when textChanged != null:
return textChanged(_that.questionId,_that.text);case _ScaleChanged() when scaleChanged != null:
return scaleChanged(_that.questionId,_that.value);case _NextPressed() when nextPressed != null:
return nextPressed();case _BackPressed() when backPressed != null:
return backPressed();case _FinishPressed() when finishPressed != null:
return finishPressed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( QuestionnaireType type)  started,required TResult Function( String questionId,  String possibleAnswerId,  bool selected)  optionToggled,required TResult Function( String questionId,  String text)  textChanged,required TResult Function( String questionId,  int value)  scaleChanged,required TResult Function()  nextPressed,required TResult Function()  backPressed,required TResult Function()  finishPressed,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.type);case _OptionToggled():
return optionToggled(_that.questionId,_that.possibleAnswerId,_that.selected);case _TextChanged():
return textChanged(_that.questionId,_that.text);case _ScaleChanged():
return scaleChanged(_that.questionId,_that.value);case _NextPressed():
return nextPressed();case _BackPressed():
return backPressed();case _FinishPressed():
return finishPressed();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( QuestionnaireType type)?  started,TResult? Function( String questionId,  String possibleAnswerId,  bool selected)?  optionToggled,TResult? Function( String questionId,  String text)?  textChanged,TResult? Function( String questionId,  int value)?  scaleChanged,TResult? Function()?  nextPressed,TResult? Function()?  backPressed,TResult? Function()?  finishPressed,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.type);case _OptionToggled() when optionToggled != null:
return optionToggled(_that.questionId,_that.possibleAnswerId,_that.selected);case _TextChanged() when textChanged != null:
return textChanged(_that.questionId,_that.text);case _ScaleChanged() when scaleChanged != null:
return scaleChanged(_that.questionId,_that.value);case _NextPressed() when nextPressed != null:
return nextPressed();case _BackPressed() when backPressed != null:
return backPressed();case _FinishPressed() when finishPressed != null:
return finishPressed();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements QuestionnaireEvent {
  const _Started(this.type);
  

 final  QuestionnaireType type;

/// Create a copy of QuestionnaireEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'QuestionnaireEvent.started(type: $type)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $QuestionnaireEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@useResult
$Res call({
 QuestionnaireType type
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of QuestionnaireEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(_Started(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as QuestionnaireType,
  ));
}


}

/// @nodoc


class _OptionToggled implements QuestionnaireEvent {
  const _OptionToggled({required this.questionId, required this.possibleAnswerId, required this.selected});
  

 final  String questionId;
 final  String possibleAnswerId;
 final  bool selected;

/// Create a copy of QuestionnaireEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionToggledCopyWith<_OptionToggled> get copyWith => __$OptionToggledCopyWithImpl<_OptionToggled>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OptionToggled&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.possibleAnswerId, possibleAnswerId) || other.possibleAnswerId == possibleAnswerId)&&(identical(other.selected, selected) || other.selected == selected));
}


@override
int get hashCode => Object.hash(runtimeType,questionId,possibleAnswerId,selected);

@override
String toString() {
  return 'QuestionnaireEvent.optionToggled(questionId: $questionId, possibleAnswerId: $possibleAnswerId, selected: $selected)';
}


}

/// @nodoc
abstract mixin class _$OptionToggledCopyWith<$Res> implements $QuestionnaireEventCopyWith<$Res> {
  factory _$OptionToggledCopyWith(_OptionToggled value, $Res Function(_OptionToggled) _then) = __$OptionToggledCopyWithImpl;
@useResult
$Res call({
 String questionId, String possibleAnswerId, bool selected
});




}
/// @nodoc
class __$OptionToggledCopyWithImpl<$Res>
    implements _$OptionToggledCopyWith<$Res> {
  __$OptionToggledCopyWithImpl(this._self, this._then);

  final _OptionToggled _self;
  final $Res Function(_OptionToggled) _then;

/// Create a copy of QuestionnaireEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? questionId = null,Object? possibleAnswerId = null,Object? selected = null,}) {
  return _then(_OptionToggled(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,possibleAnswerId: null == possibleAnswerId ? _self.possibleAnswerId : possibleAnswerId // ignore: cast_nullable_to_non_nullable
as String,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _TextChanged implements QuestionnaireEvent {
  const _TextChanged({required this.questionId, required this.text});
  

 final  String questionId;
 final  String text;

/// Create a copy of QuestionnaireEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TextChangedCopyWith<_TextChanged> get copyWith => __$TextChangedCopyWithImpl<_TextChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TextChanged&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,questionId,text);

@override
String toString() {
  return 'QuestionnaireEvent.textChanged(questionId: $questionId, text: $text)';
}


}

/// @nodoc
abstract mixin class _$TextChangedCopyWith<$Res> implements $QuestionnaireEventCopyWith<$Res> {
  factory _$TextChangedCopyWith(_TextChanged value, $Res Function(_TextChanged) _then) = __$TextChangedCopyWithImpl;
@useResult
$Res call({
 String questionId, String text
});




}
/// @nodoc
class __$TextChangedCopyWithImpl<$Res>
    implements _$TextChangedCopyWith<$Res> {
  __$TextChangedCopyWithImpl(this._self, this._then);

  final _TextChanged _self;
  final $Res Function(_TextChanged) _then;

/// Create a copy of QuestionnaireEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? questionId = null,Object? text = null,}) {
  return _then(_TextChanged(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ScaleChanged implements QuestionnaireEvent {
  const _ScaleChanged({required this.questionId, required this.value});
  

 final  String questionId;
 final  int value;

/// Create a copy of QuestionnaireEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScaleChangedCopyWith<_ScaleChanged> get copyWith => __$ScaleChangedCopyWithImpl<_ScaleChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScaleChanged&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,questionId,value);

@override
String toString() {
  return 'QuestionnaireEvent.scaleChanged(questionId: $questionId, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ScaleChangedCopyWith<$Res> implements $QuestionnaireEventCopyWith<$Res> {
  factory _$ScaleChangedCopyWith(_ScaleChanged value, $Res Function(_ScaleChanged) _then) = __$ScaleChangedCopyWithImpl;
@useResult
$Res call({
 String questionId, int value
});




}
/// @nodoc
class __$ScaleChangedCopyWithImpl<$Res>
    implements _$ScaleChangedCopyWith<$Res> {
  __$ScaleChangedCopyWithImpl(this._self, this._then);

  final _ScaleChanged _self;
  final $Res Function(_ScaleChanged) _then;

/// Create a copy of QuestionnaireEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? questionId = null,Object? value = null,}) {
  return _then(_ScaleChanged(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _NextPressed implements QuestionnaireEvent {
  const _NextPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NextPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionnaireEvent.nextPressed()';
}


}




/// @nodoc


class _BackPressed implements QuestionnaireEvent {
  const _BackPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BackPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionnaireEvent.backPressed()';
}


}




/// @nodoc


class _FinishPressed implements QuestionnaireEvent {
  const _FinishPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinishPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionnaireEvent.finishPressed()';
}


}




// dart format on

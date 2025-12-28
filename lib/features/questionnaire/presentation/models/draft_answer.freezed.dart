// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'draft_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DraftAnswer {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DraftAnswer);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DraftAnswer()';
}


}

/// @nodoc
class $DraftAnswerCopyWith<$Res>  {
$DraftAnswerCopyWith(DraftAnswer _, $Res Function(DraftAnswer) __);
}


/// Adds pattern-matching-related methods to [DraftAnswer].
extension DraftAnswerPatterns on DraftAnswer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DraftAnswerSingleSelect value)?  singleSelect,TResult Function( DraftAnswerMultipleSelect value)?  multipleSelect,TResult Function( DraftAnswerText value)?  text,TResult Function( DraftAnswerScale value)?  scale,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DraftAnswerSingleSelect() when singleSelect != null:
return singleSelect(_that);case DraftAnswerMultipleSelect() when multipleSelect != null:
return multipleSelect(_that);case DraftAnswerText() when text != null:
return text(_that);case DraftAnswerScale() when scale != null:
return scale(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DraftAnswerSingleSelect value)  singleSelect,required TResult Function( DraftAnswerMultipleSelect value)  multipleSelect,required TResult Function( DraftAnswerText value)  text,required TResult Function( DraftAnswerScale value)  scale,}){
final _that = this;
switch (_that) {
case DraftAnswerSingleSelect():
return singleSelect(_that);case DraftAnswerMultipleSelect():
return multipleSelect(_that);case DraftAnswerText():
return text(_that);case DraftAnswerScale():
return scale(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DraftAnswerSingleSelect value)?  singleSelect,TResult? Function( DraftAnswerMultipleSelect value)?  multipleSelect,TResult? Function( DraftAnswerText value)?  text,TResult? Function( DraftAnswerScale value)?  scale,}){
final _that = this;
switch (_that) {
case DraftAnswerSingleSelect() when singleSelect != null:
return singleSelect(_that);case DraftAnswerMultipleSelect() when multipleSelect != null:
return multipleSelect(_that);case DraftAnswerText() when text != null:
return text(_that);case DraftAnswerScale() when scale != null:
return scale(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String possibleAnswerId)?  singleSelect,TResult Function( Set<String> possibleAnswerIds)?  multipleSelect,TResult Function( String value)?  text,TResult Function( int value)?  scale,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DraftAnswerSingleSelect() when singleSelect != null:
return singleSelect(_that.possibleAnswerId);case DraftAnswerMultipleSelect() when multipleSelect != null:
return multipleSelect(_that.possibleAnswerIds);case DraftAnswerText() when text != null:
return text(_that.value);case DraftAnswerScale() when scale != null:
return scale(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String possibleAnswerId)  singleSelect,required TResult Function( Set<String> possibleAnswerIds)  multipleSelect,required TResult Function( String value)  text,required TResult Function( int value)  scale,}) {final _that = this;
switch (_that) {
case DraftAnswerSingleSelect():
return singleSelect(_that.possibleAnswerId);case DraftAnswerMultipleSelect():
return multipleSelect(_that.possibleAnswerIds);case DraftAnswerText():
return text(_that.value);case DraftAnswerScale():
return scale(_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String possibleAnswerId)?  singleSelect,TResult? Function( Set<String> possibleAnswerIds)?  multipleSelect,TResult? Function( String value)?  text,TResult? Function( int value)?  scale,}) {final _that = this;
switch (_that) {
case DraftAnswerSingleSelect() when singleSelect != null:
return singleSelect(_that.possibleAnswerId);case DraftAnswerMultipleSelect() when multipleSelect != null:
return multipleSelect(_that.possibleAnswerIds);case DraftAnswerText() when text != null:
return text(_that.value);case DraftAnswerScale() when scale != null:
return scale(_that.value);case _:
  return null;

}
}

}

/// @nodoc


class DraftAnswerSingleSelect implements DraftAnswer {
  const DraftAnswerSingleSelect(this.possibleAnswerId);
  

 final  String possibleAnswerId;

/// Create a copy of DraftAnswer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DraftAnswerSingleSelectCopyWith<DraftAnswerSingleSelect> get copyWith => _$DraftAnswerSingleSelectCopyWithImpl<DraftAnswerSingleSelect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DraftAnswerSingleSelect&&(identical(other.possibleAnswerId, possibleAnswerId) || other.possibleAnswerId == possibleAnswerId));
}


@override
int get hashCode => Object.hash(runtimeType,possibleAnswerId);

@override
String toString() {
  return 'DraftAnswer.singleSelect(possibleAnswerId: $possibleAnswerId)';
}


}

/// @nodoc
abstract mixin class $DraftAnswerSingleSelectCopyWith<$Res> implements $DraftAnswerCopyWith<$Res> {
  factory $DraftAnswerSingleSelectCopyWith(DraftAnswerSingleSelect value, $Res Function(DraftAnswerSingleSelect) _then) = _$DraftAnswerSingleSelectCopyWithImpl;
@useResult
$Res call({
 String possibleAnswerId
});




}
/// @nodoc
class _$DraftAnswerSingleSelectCopyWithImpl<$Res>
    implements $DraftAnswerSingleSelectCopyWith<$Res> {
  _$DraftAnswerSingleSelectCopyWithImpl(this._self, this._then);

  final DraftAnswerSingleSelect _self;
  final $Res Function(DraftAnswerSingleSelect) _then;

/// Create a copy of DraftAnswer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? possibleAnswerId = null,}) {
  return _then(DraftAnswerSingleSelect(
null == possibleAnswerId ? _self.possibleAnswerId : possibleAnswerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DraftAnswerMultipleSelect implements DraftAnswer {
  const DraftAnswerMultipleSelect(final  Set<String> possibleAnswerIds): _possibleAnswerIds = possibleAnswerIds;
  

 final  Set<String> _possibleAnswerIds;
 Set<String> get possibleAnswerIds {
  if (_possibleAnswerIds is EqualUnmodifiableSetView) return _possibleAnswerIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_possibleAnswerIds);
}


/// Create a copy of DraftAnswer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DraftAnswerMultipleSelectCopyWith<DraftAnswerMultipleSelect> get copyWith => _$DraftAnswerMultipleSelectCopyWithImpl<DraftAnswerMultipleSelect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DraftAnswerMultipleSelect&&const DeepCollectionEquality().equals(other._possibleAnswerIds, _possibleAnswerIds));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_possibleAnswerIds));

@override
String toString() {
  return 'DraftAnswer.multipleSelect(possibleAnswerIds: $possibleAnswerIds)';
}


}

/// @nodoc
abstract mixin class $DraftAnswerMultipleSelectCopyWith<$Res> implements $DraftAnswerCopyWith<$Res> {
  factory $DraftAnswerMultipleSelectCopyWith(DraftAnswerMultipleSelect value, $Res Function(DraftAnswerMultipleSelect) _then) = _$DraftAnswerMultipleSelectCopyWithImpl;
@useResult
$Res call({
 Set<String> possibleAnswerIds
});




}
/// @nodoc
class _$DraftAnswerMultipleSelectCopyWithImpl<$Res>
    implements $DraftAnswerMultipleSelectCopyWith<$Res> {
  _$DraftAnswerMultipleSelectCopyWithImpl(this._self, this._then);

  final DraftAnswerMultipleSelect _self;
  final $Res Function(DraftAnswerMultipleSelect) _then;

/// Create a copy of DraftAnswer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? possibleAnswerIds = null,}) {
  return _then(DraftAnswerMultipleSelect(
null == possibleAnswerIds ? _self._possibleAnswerIds : possibleAnswerIds // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

/// @nodoc


class DraftAnswerText implements DraftAnswer {
  const DraftAnswerText(this.value);
  

 final  String value;

/// Create a copy of DraftAnswer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DraftAnswerTextCopyWith<DraftAnswerText> get copyWith => _$DraftAnswerTextCopyWithImpl<DraftAnswerText>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DraftAnswerText&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'DraftAnswer.text(value: $value)';
}


}

/// @nodoc
abstract mixin class $DraftAnswerTextCopyWith<$Res> implements $DraftAnswerCopyWith<$Res> {
  factory $DraftAnswerTextCopyWith(DraftAnswerText value, $Res Function(DraftAnswerText) _then) = _$DraftAnswerTextCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$DraftAnswerTextCopyWithImpl<$Res>
    implements $DraftAnswerTextCopyWith<$Res> {
  _$DraftAnswerTextCopyWithImpl(this._self, this._then);

  final DraftAnswerText _self;
  final $Res Function(DraftAnswerText) _then;

/// Create a copy of DraftAnswer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(DraftAnswerText(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DraftAnswerScale implements DraftAnswer {
  const DraftAnswerScale(this.value);
  

 final  int value;

/// Create a copy of DraftAnswer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DraftAnswerScaleCopyWith<DraftAnswerScale> get copyWith => _$DraftAnswerScaleCopyWithImpl<DraftAnswerScale>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DraftAnswerScale&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'DraftAnswer.scale(value: $value)';
}


}

/// @nodoc
abstract mixin class $DraftAnswerScaleCopyWith<$Res> implements $DraftAnswerCopyWith<$Res> {
  factory $DraftAnswerScaleCopyWith(DraftAnswerScale value, $Res Function(DraftAnswerScale) _then) = _$DraftAnswerScaleCopyWithImpl;
@useResult
$Res call({
 int value
});




}
/// @nodoc
class _$DraftAnswerScaleCopyWithImpl<$Res>
    implements $DraftAnswerScaleCopyWith<$Res> {
  _$DraftAnswerScaleCopyWithImpl(this._self, this._then);

  final DraftAnswerScale _self;
  final $Res Function(DraftAnswerScale) _then;

/// Create a copy of DraftAnswer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(DraftAnswerScale(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingEvent()';
}


}

/// @nodoc
class $OnboardingEventCopyWith<$Res>  {
$OnboardingEventCopyWith(OnboardingEvent _, $Res Function(OnboardingEvent) __);
}


/// Adds pattern-matching-related methods to [OnboardingEvent].
extension OnboardingEventPatterns on OnboardingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _PageChanged value)?  pageChanged,TResult Function( _CompleteOnboarding value)?  completeOnboarding,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _PageChanged() when pageChanged != null:
return pageChanged(_that);case _CompleteOnboarding() when completeOnboarding != null:
return completeOnboarding(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _PageChanged value)  pageChanged,required TResult Function( _CompleteOnboarding value)  completeOnboarding,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _PageChanged():
return pageChanged(_that);case _CompleteOnboarding():
return completeOnboarding(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _PageChanged value)?  pageChanged,TResult? Function( _CompleteOnboarding value)?  completeOnboarding,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _PageChanged() when pageChanged != null:
return pageChanged(_that);case _CompleteOnboarding() when completeOnboarding != null:
return completeOnboarding(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( int index)?  pageChanged,TResult Function()?  completeOnboarding,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _PageChanged() when pageChanged != null:
return pageChanged(_that.index);case _CompleteOnboarding() when completeOnboarding != null:
return completeOnboarding();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( int index)  pageChanged,required TResult Function()  completeOnboarding,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _PageChanged():
return pageChanged(_that.index);case _CompleteOnboarding():
return completeOnboarding();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( int index)?  pageChanged,TResult? Function()?  completeOnboarding,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _PageChanged() when pageChanged != null:
return pageChanged(_that.index);case _CompleteOnboarding() when completeOnboarding != null:
return completeOnboarding();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements OnboardingEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingEvent.started()';
}


}




/// @nodoc


class _PageChanged implements OnboardingEvent {
  const _PageChanged(this.index);
  

 final  int index;

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageChangedCopyWith<_PageChanged> get copyWith => __$PageChangedCopyWithImpl<_PageChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PageChanged&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'OnboardingEvent.pageChanged(index: $index)';
}


}

/// @nodoc
abstract mixin class _$PageChangedCopyWith<$Res> implements $OnboardingEventCopyWith<$Res> {
  factory _$PageChangedCopyWith(_PageChanged value, $Res Function(_PageChanged) _then) = __$PageChangedCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class __$PageChangedCopyWithImpl<$Res>
    implements _$PageChangedCopyWith<$Res> {
  __$PageChangedCopyWithImpl(this._self, this._then);

  final _PageChanged _self;
  final $Res Function(_PageChanged) _then;

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_PageChanged(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _CompleteOnboarding implements OnboardingEvent {
  const _CompleteOnboarding();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompleteOnboarding);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingEvent.completeOnboarding()';
}


}




// dart format on

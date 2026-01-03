// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'therapists_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TherapistsLoaded {

 List<TherapistOutput> get therapists; int get total; bool get hasNext; bool get isLoadingMore; Failure? get loadMoreFailure; bool get clearLoadMoreFailure;
/// Create a copy of TherapistsLoaded
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TherapistsLoadedCopyWith<TherapistsLoaded> get copyWith => _$TherapistsLoadedCopyWithImpl<TherapistsLoaded>(this as TherapistsLoaded, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TherapistsLoaded&&const DeepCollectionEquality().equals(other.therapists, therapists)&&(identical(other.total, total) || other.total == total)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.loadMoreFailure, loadMoreFailure) || other.loadMoreFailure == loadMoreFailure)&&(identical(other.clearLoadMoreFailure, clearLoadMoreFailure) || other.clearLoadMoreFailure == clearLoadMoreFailure));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(therapists),total,hasNext,isLoadingMore,loadMoreFailure,clearLoadMoreFailure);

@override
String toString() {
  return 'TherapistsLoaded(therapists: $therapists, total: $total, hasNext: $hasNext, isLoadingMore: $isLoadingMore, loadMoreFailure: $loadMoreFailure, clearLoadMoreFailure: $clearLoadMoreFailure)';
}


}

/// @nodoc
abstract mixin class $TherapistsLoadedCopyWith<$Res>  {
  factory $TherapistsLoadedCopyWith(TherapistsLoaded value, $Res Function(TherapistsLoaded) _then) = _$TherapistsLoadedCopyWithImpl;
@useResult
$Res call({
 List<TherapistOutput> therapists, int total, bool hasNext, bool isLoadingMore, Failure? loadMoreFailure, bool clearLoadMoreFailure
});




}
/// @nodoc
class _$TherapistsLoadedCopyWithImpl<$Res>
    implements $TherapistsLoadedCopyWith<$Res> {
  _$TherapistsLoadedCopyWithImpl(this._self, this._then);

  final TherapistsLoaded _self;
  final $Res Function(TherapistsLoaded) _then;

/// Create a copy of TherapistsLoaded
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? therapists = null,Object? total = null,Object? hasNext = null,Object? isLoadingMore = null,Object? loadMoreFailure = freezed,Object? clearLoadMoreFailure = null,}) {
  return _then(_self.copyWith(
therapists: null == therapists ? _self.therapists : therapists // ignore: cast_nullable_to_non_nullable
as List<TherapistOutput>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,loadMoreFailure: freezed == loadMoreFailure ? _self.loadMoreFailure : loadMoreFailure // ignore: cast_nullable_to_non_nullable
as Failure?,clearLoadMoreFailure: null == clearLoadMoreFailure ? _self.clearLoadMoreFailure : clearLoadMoreFailure // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TherapistsLoaded].
extension TherapistsLoadedPatterns on TherapistsLoaded {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TherapistsLoaded value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TherapistsLoaded() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TherapistsLoaded value)  $default,){
final _that = this;
switch (_that) {
case _TherapistsLoaded():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TherapistsLoaded value)?  $default,){
final _that = this;
switch (_that) {
case _TherapistsLoaded() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TherapistOutput> therapists,  int total,  bool hasNext,  bool isLoadingMore,  Failure? loadMoreFailure,  bool clearLoadMoreFailure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TherapistsLoaded() when $default != null:
return $default(_that.therapists,_that.total,_that.hasNext,_that.isLoadingMore,_that.loadMoreFailure,_that.clearLoadMoreFailure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TherapistOutput> therapists,  int total,  bool hasNext,  bool isLoadingMore,  Failure? loadMoreFailure,  bool clearLoadMoreFailure)  $default,) {final _that = this;
switch (_that) {
case _TherapistsLoaded():
return $default(_that.therapists,_that.total,_that.hasNext,_that.isLoadingMore,_that.loadMoreFailure,_that.clearLoadMoreFailure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TherapistOutput> therapists,  int total,  bool hasNext,  bool isLoadingMore,  Failure? loadMoreFailure,  bool clearLoadMoreFailure)?  $default,) {final _that = this;
switch (_that) {
case _TherapistsLoaded() when $default != null:
return $default(_that.therapists,_that.total,_that.hasNext,_that.isLoadingMore,_that.loadMoreFailure,_that.clearLoadMoreFailure);case _:
  return null;

}
}

}

/// @nodoc


class _TherapistsLoaded implements TherapistsLoaded {
   _TherapistsLoaded({required final  List<TherapistOutput> therapists, required this.total, required this.hasNext, this.isLoadingMore = false, this.loadMoreFailure, this.clearLoadMoreFailure = false}): _therapists = therapists;
  

 final  List<TherapistOutput> _therapists;
@override List<TherapistOutput> get therapists {
  if (_therapists is EqualUnmodifiableListView) return _therapists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_therapists);
}

@override final  int total;
@override final  bool hasNext;
@override@JsonKey() final  bool isLoadingMore;
@override final  Failure? loadMoreFailure;
@override@JsonKey() final  bool clearLoadMoreFailure;

/// Create a copy of TherapistsLoaded
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TherapistsLoadedCopyWith<_TherapistsLoaded> get copyWith => __$TherapistsLoadedCopyWithImpl<_TherapistsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TherapistsLoaded&&const DeepCollectionEquality().equals(other._therapists, _therapists)&&(identical(other.total, total) || other.total == total)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.loadMoreFailure, loadMoreFailure) || other.loadMoreFailure == loadMoreFailure)&&(identical(other.clearLoadMoreFailure, clearLoadMoreFailure) || other.clearLoadMoreFailure == clearLoadMoreFailure));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_therapists),total,hasNext,isLoadingMore,loadMoreFailure,clearLoadMoreFailure);

@override
String toString() {
  return 'TherapistsLoaded(therapists: $therapists, total: $total, hasNext: $hasNext, isLoadingMore: $isLoadingMore, loadMoreFailure: $loadMoreFailure, clearLoadMoreFailure: $clearLoadMoreFailure)';
}


}

/// @nodoc
abstract mixin class _$TherapistsLoadedCopyWith<$Res> implements $TherapistsLoadedCopyWith<$Res> {
  factory _$TherapistsLoadedCopyWith(_TherapistsLoaded value, $Res Function(_TherapistsLoaded) _then) = __$TherapistsLoadedCopyWithImpl;
@override @useResult
$Res call({
 List<TherapistOutput> therapists, int total, bool hasNext, bool isLoadingMore, Failure? loadMoreFailure, bool clearLoadMoreFailure
});




}
/// @nodoc
class __$TherapistsLoadedCopyWithImpl<$Res>
    implements _$TherapistsLoadedCopyWith<$Res> {
  __$TherapistsLoadedCopyWithImpl(this._self, this._then);

  final _TherapistsLoaded _self;
  final $Res Function(_TherapistsLoaded) _then;

/// Create a copy of TherapistsLoaded
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? therapists = null,Object? total = null,Object? hasNext = null,Object? isLoadingMore = null,Object? loadMoreFailure = freezed,Object? clearLoadMoreFailure = null,}) {
  return _then(_TherapistsLoaded(
therapists: null == therapists ? _self._therapists : therapists // ignore: cast_nullable_to_non_nullable
as List<TherapistOutput>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,loadMoreFailure: freezed == loadMoreFailure ? _self.loadMoreFailure : loadMoreFailure // ignore: cast_nullable_to_non_nullable
as Failure?,clearLoadMoreFailure: null == clearLoadMoreFailure ? _self.clearLoadMoreFailure : clearLoadMoreFailure // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

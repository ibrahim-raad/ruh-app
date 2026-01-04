// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_reflection_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateReflectionDto {

 int get version;@JsonKey(name: 'title') String? get date; String? get content; JournalMood? get mood;
/// Create a copy of UpdateReflectionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateReflectionDtoCopyWith<UpdateReflectionDto> get copyWith => _$UpdateReflectionDtoCopyWithImpl<UpdateReflectionDto>(this as UpdateReflectionDto, _$identity);

  /// Serializes this UpdateReflectionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateReflectionDto&&(identical(other.version, version) || other.version == version)&&(identical(other.date, date) || other.date == date)&&(identical(other.content, content) || other.content == content)&&(identical(other.mood, mood) || other.mood == mood));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,date,content,mood);

@override
String toString() {
  return 'UpdateReflectionDto(version: $version, date: $date, content: $content, mood: $mood)';
}


}

/// @nodoc
abstract mixin class $UpdateReflectionDtoCopyWith<$Res>  {
  factory $UpdateReflectionDtoCopyWith(UpdateReflectionDto value, $Res Function(UpdateReflectionDto) _then) = _$UpdateReflectionDtoCopyWithImpl;
@useResult
$Res call({
 int version,@JsonKey(name: 'title') String? date, String? content, JournalMood? mood
});




}
/// @nodoc
class _$UpdateReflectionDtoCopyWithImpl<$Res>
    implements $UpdateReflectionDtoCopyWith<$Res> {
  _$UpdateReflectionDtoCopyWithImpl(this._self, this._then);

  final UpdateReflectionDto _self;
  final $Res Function(UpdateReflectionDto) _then;

/// Create a copy of UpdateReflectionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? date = freezed,Object? content = freezed,Object? mood = freezed,}) {
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,mood: freezed == mood ? _self.mood : mood // ignore: cast_nullable_to_non_nullable
as JournalMood?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateReflectionDto].
extension UpdateReflectionDtoPatterns on UpdateReflectionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateReflectionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateReflectionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateReflectionDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateReflectionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateReflectionDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateReflectionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int version, @JsonKey(name: 'title')  String? date,  String? content,  JournalMood? mood)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateReflectionDto() when $default != null:
return $default(_that.version,_that.date,_that.content,_that.mood);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int version, @JsonKey(name: 'title')  String? date,  String? content,  JournalMood? mood)  $default,) {final _that = this;
switch (_that) {
case _UpdateReflectionDto():
return $default(_that.version,_that.date,_that.content,_that.mood);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int version, @JsonKey(name: 'title')  String? date,  String? content,  JournalMood? mood)?  $default,) {final _that = this;
switch (_that) {
case _UpdateReflectionDto() when $default != null:
return $default(_that.version,_that.date,_that.content,_that.mood);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateReflectionDto implements UpdateReflectionDto {
  const _UpdateReflectionDto({required this.version, @JsonKey(name: 'title') this.date, this.content, this.mood});
  factory _UpdateReflectionDto.fromJson(Map<String, dynamic> json) => _$UpdateReflectionDtoFromJson(json);

@override final  int version;
@override@JsonKey(name: 'title') final  String? date;
@override final  String? content;
@override final  JournalMood? mood;

/// Create a copy of UpdateReflectionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateReflectionDtoCopyWith<_UpdateReflectionDto> get copyWith => __$UpdateReflectionDtoCopyWithImpl<_UpdateReflectionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateReflectionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateReflectionDto&&(identical(other.version, version) || other.version == version)&&(identical(other.date, date) || other.date == date)&&(identical(other.content, content) || other.content == content)&&(identical(other.mood, mood) || other.mood == mood));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,date,content,mood);

@override
String toString() {
  return 'UpdateReflectionDto(version: $version, date: $date, content: $content, mood: $mood)';
}


}

/// @nodoc
abstract mixin class _$UpdateReflectionDtoCopyWith<$Res> implements $UpdateReflectionDtoCopyWith<$Res> {
  factory _$UpdateReflectionDtoCopyWith(_UpdateReflectionDto value, $Res Function(_UpdateReflectionDto) _then) = __$UpdateReflectionDtoCopyWithImpl;
@override @useResult
$Res call({
 int version,@JsonKey(name: 'title') String? date, String? content, JournalMood? mood
});




}
/// @nodoc
class __$UpdateReflectionDtoCopyWithImpl<$Res>
    implements _$UpdateReflectionDtoCopyWith<$Res> {
  __$UpdateReflectionDtoCopyWithImpl(this._self, this._then);

  final _UpdateReflectionDto _self;
  final $Res Function(_UpdateReflectionDto) _then;

/// Create a copy of UpdateReflectionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? date = freezed,Object? content = freezed,Object? mood = freezed,}) {
  return _then(_UpdateReflectionDto(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,mood: freezed == mood ? _self.mood : mood // ignore: cast_nullable_to_non_nullable
as JournalMood?,
  ));
}


}

// dart format on

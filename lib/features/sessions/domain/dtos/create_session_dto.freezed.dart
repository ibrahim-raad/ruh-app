// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_session_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateSessionDto {

@JsonKey(name: 'therapy_case_id') String get therapyCaseId; String get start;
/// Create a copy of CreateSessionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateSessionDtoCopyWith<CreateSessionDto> get copyWith => _$CreateSessionDtoCopyWithImpl<CreateSessionDto>(this as CreateSessionDto, _$identity);

  /// Serializes this CreateSessionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateSessionDto&&(identical(other.therapyCaseId, therapyCaseId) || other.therapyCaseId == therapyCaseId)&&(identical(other.start, start) || other.start == start));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,therapyCaseId,start);

@override
String toString() {
  return 'CreateSessionDto(therapyCaseId: $therapyCaseId, start: $start)';
}


}

/// @nodoc
abstract mixin class $CreateSessionDtoCopyWith<$Res>  {
  factory $CreateSessionDtoCopyWith(CreateSessionDto value, $Res Function(CreateSessionDto) _then) = _$CreateSessionDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'therapy_case_id') String therapyCaseId, String start
});




}
/// @nodoc
class _$CreateSessionDtoCopyWithImpl<$Res>
    implements $CreateSessionDtoCopyWith<$Res> {
  _$CreateSessionDtoCopyWithImpl(this._self, this._then);

  final CreateSessionDto _self;
  final $Res Function(CreateSessionDto) _then;

/// Create a copy of CreateSessionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? therapyCaseId = null,Object? start = null,}) {
  return _then(_self.copyWith(
therapyCaseId: null == therapyCaseId ? _self.therapyCaseId : therapyCaseId // ignore: cast_nullable_to_non_nullable
as String,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateSessionDto].
extension CreateSessionDtoPatterns on CreateSessionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateSessionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateSessionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateSessionDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateSessionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateSessionDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateSessionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'therapy_case_id')  String therapyCaseId,  String start)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateSessionDto() when $default != null:
return $default(_that.therapyCaseId,_that.start);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'therapy_case_id')  String therapyCaseId,  String start)  $default,) {final _that = this;
switch (_that) {
case _CreateSessionDto():
return $default(_that.therapyCaseId,_that.start);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'therapy_case_id')  String therapyCaseId,  String start)?  $default,) {final _that = this;
switch (_that) {
case _CreateSessionDto() when $default != null:
return $default(_that.therapyCaseId,_that.start);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateSessionDto implements CreateSessionDto {
  const _CreateSessionDto({@JsonKey(name: 'therapy_case_id') required this.therapyCaseId, required this.start});
  factory _CreateSessionDto.fromJson(Map<String, dynamic> json) => _$CreateSessionDtoFromJson(json);

@override@JsonKey(name: 'therapy_case_id') final  String therapyCaseId;
@override final  String start;

/// Create a copy of CreateSessionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateSessionDtoCopyWith<_CreateSessionDto> get copyWith => __$CreateSessionDtoCopyWithImpl<_CreateSessionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateSessionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateSessionDto&&(identical(other.therapyCaseId, therapyCaseId) || other.therapyCaseId == therapyCaseId)&&(identical(other.start, start) || other.start == start));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,therapyCaseId,start);

@override
String toString() {
  return 'CreateSessionDto(therapyCaseId: $therapyCaseId, start: $start)';
}


}

/// @nodoc
abstract mixin class _$CreateSessionDtoCopyWith<$Res> implements $CreateSessionDtoCopyWith<$Res> {
  factory _$CreateSessionDtoCopyWith(_CreateSessionDto value, $Res Function(_CreateSessionDto) _then) = __$CreateSessionDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'therapy_case_id') String therapyCaseId, String start
});




}
/// @nodoc
class __$CreateSessionDtoCopyWithImpl<$Res>
    implements _$CreateSessionDtoCopyWith<$Res> {
  __$CreateSessionDtoCopyWithImpl(this._self, this._then);

  final _CreateSessionDto _self;
  final $Res Function(_CreateSessionDto) _then;

/// Create a copy of CreateSessionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? therapyCaseId = null,Object? start = null,}) {
  return _then(_CreateSessionDto(
therapyCaseId: null == therapyCaseId ? _self.therapyCaseId : therapyCaseId // ignore: cast_nullable_to_non_nullable
as String,start: null == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

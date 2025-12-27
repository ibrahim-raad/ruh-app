// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spoken_language_input_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpokenLanguageInputDto {

@JsonKey(name: 'language_id') String get languageId;@JsonKey(name: 'is_primary') bool get isPrimary;
/// Create a copy of SpokenLanguageInputDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpokenLanguageInputDtoCopyWith<SpokenLanguageInputDto> get copyWith => _$SpokenLanguageInputDtoCopyWithImpl<SpokenLanguageInputDto>(this as SpokenLanguageInputDto, _$identity);

  /// Serializes this SpokenLanguageInputDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpokenLanguageInputDto&&(identical(other.languageId, languageId) || other.languageId == languageId)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,languageId,isPrimary);

@override
String toString() {
  return 'SpokenLanguageInputDto(languageId: $languageId, isPrimary: $isPrimary)';
}


}

/// @nodoc
abstract mixin class $SpokenLanguageInputDtoCopyWith<$Res>  {
  factory $SpokenLanguageInputDtoCopyWith(SpokenLanguageInputDto value, $Res Function(SpokenLanguageInputDto) _then) = _$SpokenLanguageInputDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'language_id') String languageId,@JsonKey(name: 'is_primary') bool isPrimary
});




}
/// @nodoc
class _$SpokenLanguageInputDtoCopyWithImpl<$Res>
    implements $SpokenLanguageInputDtoCopyWith<$Res> {
  _$SpokenLanguageInputDtoCopyWithImpl(this._self, this._then);

  final SpokenLanguageInputDto _self;
  final $Res Function(SpokenLanguageInputDto) _then;

/// Create a copy of SpokenLanguageInputDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? languageId = null,Object? isPrimary = null,}) {
  return _then(_self.copyWith(
languageId: null == languageId ? _self.languageId : languageId // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SpokenLanguageInputDto].
extension SpokenLanguageInputDtoPatterns on SpokenLanguageInputDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpokenLanguageInputDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpokenLanguageInputDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpokenLanguageInputDto value)  $default,){
final _that = this;
switch (_that) {
case _SpokenLanguageInputDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpokenLanguageInputDto value)?  $default,){
final _that = this;
switch (_that) {
case _SpokenLanguageInputDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'language_id')  String languageId, @JsonKey(name: 'is_primary')  bool isPrimary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpokenLanguageInputDto() when $default != null:
return $default(_that.languageId,_that.isPrimary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'language_id')  String languageId, @JsonKey(name: 'is_primary')  bool isPrimary)  $default,) {final _that = this;
switch (_that) {
case _SpokenLanguageInputDto():
return $default(_that.languageId,_that.isPrimary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'language_id')  String languageId, @JsonKey(name: 'is_primary')  bool isPrimary)?  $default,) {final _that = this;
switch (_that) {
case _SpokenLanguageInputDto() when $default != null:
return $default(_that.languageId,_that.isPrimary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpokenLanguageInputDto implements SpokenLanguageInputDto {
  const _SpokenLanguageInputDto({@JsonKey(name: 'language_id') required this.languageId, @JsonKey(name: 'is_primary') required this.isPrimary});
  factory _SpokenLanguageInputDto.fromJson(Map<String, dynamic> json) => _$SpokenLanguageInputDtoFromJson(json);

@override@JsonKey(name: 'language_id') final  String languageId;
@override@JsonKey(name: 'is_primary') final  bool isPrimary;

/// Create a copy of SpokenLanguageInputDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpokenLanguageInputDtoCopyWith<_SpokenLanguageInputDto> get copyWith => __$SpokenLanguageInputDtoCopyWithImpl<_SpokenLanguageInputDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpokenLanguageInputDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpokenLanguageInputDto&&(identical(other.languageId, languageId) || other.languageId == languageId)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,languageId,isPrimary);

@override
String toString() {
  return 'SpokenLanguageInputDto(languageId: $languageId, isPrimary: $isPrimary)';
}


}

/// @nodoc
abstract mixin class _$SpokenLanguageInputDtoCopyWith<$Res> implements $SpokenLanguageInputDtoCopyWith<$Res> {
  factory _$SpokenLanguageInputDtoCopyWith(_SpokenLanguageInputDto value, $Res Function(_SpokenLanguageInputDto) _then) = __$SpokenLanguageInputDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'language_id') String languageId,@JsonKey(name: 'is_primary') bool isPrimary
});




}
/// @nodoc
class __$SpokenLanguageInputDtoCopyWithImpl<$Res>
    implements _$SpokenLanguageInputDtoCopyWith<$Res> {
  __$SpokenLanguageInputDtoCopyWithImpl(this._self, this._then);

  final _SpokenLanguageInputDto _self;
  final $Res Function(_SpokenLanguageInputDto) _then;

/// Create a copy of SpokenLanguageInputDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? languageId = null,Object? isPrimary = null,}) {
  return _then(_SpokenLanguageInputDto(
languageId: null == languageId ? _self.languageId : languageId // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

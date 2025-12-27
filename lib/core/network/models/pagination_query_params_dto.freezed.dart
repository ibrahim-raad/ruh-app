// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_query_params_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginationQueryParamsDto {

 int get offset; int get limit; String get sort; Map<String, dynamic>? get queryParams;
/// Create a copy of PaginationQueryParamsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationQueryParamsDtoCopyWith<PaginationQueryParamsDto> get copyWith => _$PaginationQueryParamsDtoCopyWithImpl<PaginationQueryParamsDto>(this as PaginationQueryParamsDto, _$identity);

  /// Serializes this PaginationQueryParamsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationQueryParamsDto&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.sort, sort) || other.sort == sort)&&const DeepCollectionEquality().equals(other.queryParams, queryParams));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,offset,limit,sort,const DeepCollectionEquality().hash(queryParams));

@override
String toString() {
  return 'PaginationQueryParamsDto(offset: $offset, limit: $limit, sort: $sort, queryParams: $queryParams)';
}


}

/// @nodoc
abstract mixin class $PaginationQueryParamsDtoCopyWith<$Res>  {
  factory $PaginationQueryParamsDtoCopyWith(PaginationQueryParamsDto value, $Res Function(PaginationQueryParamsDto) _then) = _$PaginationQueryParamsDtoCopyWithImpl;
@useResult
$Res call({
 int offset, int limit, String sort, Map<String, dynamic>? queryParams
});




}
/// @nodoc
class _$PaginationQueryParamsDtoCopyWithImpl<$Res>
    implements $PaginationQueryParamsDtoCopyWith<$Res> {
  _$PaginationQueryParamsDtoCopyWithImpl(this._self, this._then);

  final PaginationQueryParamsDto _self;
  final $Res Function(PaginationQueryParamsDto) _then;

/// Create a copy of PaginationQueryParamsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offset = null,Object? limit = null,Object? sort = null,Object? queryParams = freezed,}) {
  return _then(_self.copyWith(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String,queryParams: freezed == queryParams ? _self.queryParams : queryParams // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationQueryParamsDto].
extension PaginationQueryParamsDtoPatterns on PaginationQueryParamsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationQueryParamsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationQueryParamsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationQueryParamsDto value)  $default,){
final _that = this;
switch (_that) {
case _PaginationQueryParamsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationQueryParamsDto value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationQueryParamsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int offset,  int limit,  String sort,  Map<String, dynamic>? queryParams)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationQueryParamsDto() when $default != null:
return $default(_that.offset,_that.limit,_that.sort,_that.queryParams);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int offset,  int limit,  String sort,  Map<String, dynamic>? queryParams)  $default,) {final _that = this;
switch (_that) {
case _PaginationQueryParamsDto():
return $default(_that.offset,_that.limit,_that.sort,_that.queryParams);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int offset,  int limit,  String sort,  Map<String, dynamic>? queryParams)?  $default,) {final _that = this;
switch (_that) {
case _PaginationQueryParamsDto() when $default != null:
return $default(_that.offset,_that.limit,_that.sort,_that.queryParams);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationQueryParamsDto implements PaginationQueryParamsDto {
  const _PaginationQueryParamsDto({this.offset = 0, this.limit = 10, this.sort = 'created_at DESC', final  Map<String, dynamic>? queryParams}): _queryParams = queryParams;
  factory _PaginationQueryParamsDto.fromJson(Map<String, dynamic> json) => _$PaginationQueryParamsDtoFromJson(json);

@override@JsonKey() final  int offset;
@override@JsonKey() final  int limit;
@override@JsonKey() final  String sort;
 final  Map<String, dynamic>? _queryParams;
@override Map<String, dynamic>? get queryParams {
  final value = _queryParams;
  if (value == null) return null;
  if (_queryParams is EqualUnmodifiableMapView) return _queryParams;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of PaginationQueryParamsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationQueryParamsDtoCopyWith<_PaginationQueryParamsDto> get copyWith => __$PaginationQueryParamsDtoCopyWithImpl<_PaginationQueryParamsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationQueryParamsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationQueryParamsDto&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.sort, sort) || other.sort == sort)&&const DeepCollectionEquality().equals(other._queryParams, _queryParams));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,offset,limit,sort,const DeepCollectionEquality().hash(_queryParams));

@override
String toString() {
  return 'PaginationQueryParamsDto(offset: $offset, limit: $limit, sort: $sort, queryParams: $queryParams)';
}


}

/// @nodoc
abstract mixin class _$PaginationQueryParamsDtoCopyWith<$Res> implements $PaginationQueryParamsDtoCopyWith<$Res> {
  factory _$PaginationQueryParamsDtoCopyWith(_PaginationQueryParamsDto value, $Res Function(_PaginationQueryParamsDto) _then) = __$PaginationQueryParamsDtoCopyWithImpl;
@override @useResult
$Res call({
 int offset, int limit, String sort, Map<String, dynamic>? queryParams
});




}
/// @nodoc
class __$PaginationQueryParamsDtoCopyWithImpl<$Res>
    implements _$PaginationQueryParamsDtoCopyWith<$Res> {
  __$PaginationQueryParamsDtoCopyWithImpl(this._self, this._then);

  final _PaginationQueryParamsDto _self;
  final $Res Function(_PaginationQueryParamsDto) _then;

/// Create a copy of PaginationQueryParamsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offset = null,Object? limit = null,Object? sort = null,Object? queryParams = freezed,}) {
  return _then(_PaginationQueryParamsDto(
offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String,queryParams: freezed == queryParams ? _self._queryParams : queryParams // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on

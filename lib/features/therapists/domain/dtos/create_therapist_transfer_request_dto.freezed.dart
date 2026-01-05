// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_therapist_transfer_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateTherapistTransferRequestDto {

@JsonKey(name: 'transfer_reason') String get transferReason;@JsonKey(name: 'therapist_id') String get therapistId;@JsonKey(name: 'from_therapy_case_id') String get fromTherapyCaseId;
/// Create a copy of CreateTherapistTransferRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTherapistTransferRequestDtoCopyWith<CreateTherapistTransferRequestDto> get copyWith => _$CreateTherapistTransferRequestDtoCopyWithImpl<CreateTherapistTransferRequestDto>(this as CreateTherapistTransferRequestDto, _$identity);

  /// Serializes this CreateTherapistTransferRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTherapistTransferRequestDto&&(identical(other.transferReason, transferReason) || other.transferReason == transferReason)&&(identical(other.therapistId, therapistId) || other.therapistId == therapistId)&&(identical(other.fromTherapyCaseId, fromTherapyCaseId) || other.fromTherapyCaseId == fromTherapyCaseId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transferReason,therapistId,fromTherapyCaseId);

@override
String toString() {
  return 'CreateTherapistTransferRequestDto(transferReason: $transferReason, therapistId: $therapistId, fromTherapyCaseId: $fromTherapyCaseId)';
}


}

/// @nodoc
abstract mixin class $CreateTherapistTransferRequestDtoCopyWith<$Res>  {
  factory $CreateTherapistTransferRequestDtoCopyWith(CreateTherapistTransferRequestDto value, $Res Function(CreateTherapistTransferRequestDto) _then) = _$CreateTherapistTransferRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'transfer_reason') String transferReason,@JsonKey(name: 'therapist_id') String therapistId,@JsonKey(name: 'from_therapy_case_id') String fromTherapyCaseId
});




}
/// @nodoc
class _$CreateTherapistTransferRequestDtoCopyWithImpl<$Res>
    implements $CreateTherapistTransferRequestDtoCopyWith<$Res> {
  _$CreateTherapistTransferRequestDtoCopyWithImpl(this._self, this._then);

  final CreateTherapistTransferRequestDto _self;
  final $Res Function(CreateTherapistTransferRequestDto) _then;

/// Create a copy of CreateTherapistTransferRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transferReason = null,Object? therapistId = null,Object? fromTherapyCaseId = null,}) {
  return _then(_self.copyWith(
transferReason: null == transferReason ? _self.transferReason : transferReason // ignore: cast_nullable_to_non_nullable
as String,therapistId: null == therapistId ? _self.therapistId : therapistId // ignore: cast_nullable_to_non_nullable
as String,fromTherapyCaseId: null == fromTherapyCaseId ? _self.fromTherapyCaseId : fromTherapyCaseId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateTherapistTransferRequestDto].
extension CreateTherapistTransferRequestDtoPatterns on CreateTherapistTransferRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTherapistTransferRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTherapistTransferRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTherapistTransferRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateTherapistTransferRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTherapistTransferRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTherapistTransferRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'transfer_reason')  String transferReason, @JsonKey(name: 'therapist_id')  String therapistId, @JsonKey(name: 'from_therapy_case_id')  String fromTherapyCaseId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTherapistTransferRequestDto() when $default != null:
return $default(_that.transferReason,_that.therapistId,_that.fromTherapyCaseId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'transfer_reason')  String transferReason, @JsonKey(name: 'therapist_id')  String therapistId, @JsonKey(name: 'from_therapy_case_id')  String fromTherapyCaseId)  $default,) {final _that = this;
switch (_that) {
case _CreateTherapistTransferRequestDto():
return $default(_that.transferReason,_that.therapistId,_that.fromTherapyCaseId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'transfer_reason')  String transferReason, @JsonKey(name: 'therapist_id')  String therapistId, @JsonKey(name: 'from_therapy_case_id')  String fromTherapyCaseId)?  $default,) {final _that = this;
switch (_that) {
case _CreateTherapistTransferRequestDto() when $default != null:
return $default(_that.transferReason,_that.therapistId,_that.fromTherapyCaseId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateTherapistTransferRequestDto implements CreateTherapistTransferRequestDto {
  const _CreateTherapistTransferRequestDto({@JsonKey(name: 'transfer_reason') required this.transferReason, @JsonKey(name: 'therapist_id') required this.therapistId, @JsonKey(name: 'from_therapy_case_id') required this.fromTherapyCaseId});
  factory _CreateTherapistTransferRequestDto.fromJson(Map<String, dynamic> json) => _$CreateTherapistTransferRequestDtoFromJson(json);

@override@JsonKey(name: 'transfer_reason') final  String transferReason;
@override@JsonKey(name: 'therapist_id') final  String therapistId;
@override@JsonKey(name: 'from_therapy_case_id') final  String fromTherapyCaseId;

/// Create a copy of CreateTherapistTransferRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTherapistTransferRequestDtoCopyWith<_CreateTherapistTransferRequestDto> get copyWith => __$CreateTherapistTransferRequestDtoCopyWithImpl<_CreateTherapistTransferRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateTherapistTransferRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTherapistTransferRequestDto&&(identical(other.transferReason, transferReason) || other.transferReason == transferReason)&&(identical(other.therapistId, therapistId) || other.therapistId == therapistId)&&(identical(other.fromTherapyCaseId, fromTherapyCaseId) || other.fromTherapyCaseId == fromTherapyCaseId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transferReason,therapistId,fromTherapyCaseId);

@override
String toString() {
  return 'CreateTherapistTransferRequestDto(transferReason: $transferReason, therapistId: $therapistId, fromTherapyCaseId: $fromTherapyCaseId)';
}


}

/// @nodoc
abstract mixin class _$CreateTherapistTransferRequestDtoCopyWith<$Res> implements $CreateTherapistTransferRequestDtoCopyWith<$Res> {
  factory _$CreateTherapistTransferRequestDtoCopyWith(_CreateTherapistTransferRequestDto value, $Res Function(_CreateTherapistTransferRequestDto) _then) = __$CreateTherapistTransferRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'transfer_reason') String transferReason,@JsonKey(name: 'therapist_id') String therapistId,@JsonKey(name: 'from_therapy_case_id') String fromTherapyCaseId
});




}
/// @nodoc
class __$CreateTherapistTransferRequestDtoCopyWithImpl<$Res>
    implements _$CreateTherapistTransferRequestDtoCopyWith<$Res> {
  __$CreateTherapistTransferRequestDtoCopyWithImpl(this._self, this._then);

  final _CreateTherapistTransferRequestDto _self;
  final $Res Function(_CreateTherapistTransferRequestDto) _then;

/// Create a copy of CreateTherapistTransferRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transferReason = null,Object? therapistId = null,Object? fromTherapyCaseId = null,}) {
  return _then(_CreateTherapistTransferRequestDto(
transferReason: null == transferReason ? _self.transferReason : transferReason // ignore: cast_nullable_to_non_nullable
as String,therapistId: null == therapistId ? _self.therapistId : therapistId // ignore: cast_nullable_to_non_nullable
as String,fromTherapyCaseId: null == fromTherapyCaseId ? _self.fromTherapyCaseId : fromTherapyCaseId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

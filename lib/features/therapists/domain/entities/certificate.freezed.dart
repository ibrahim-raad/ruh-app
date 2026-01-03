// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'certificate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Certificate {

 String get id; String get title; String get issuer;@JsonKey(name: 'issued_date') DateTime get issuedDate; String? get description;@JsonKey(name: 'specialization_id') String? get specializationId;@JsonKey(name: 'file_url') String? get fileUrl;
/// Create a copy of Certificate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CertificateCopyWith<Certificate> get copyWith => _$CertificateCopyWithImpl<Certificate>(this as Certificate, _$identity);

  /// Serializes this Certificate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Certificate&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.issuer, issuer) || other.issuer == issuer)&&(identical(other.issuedDate, issuedDate) || other.issuedDate == issuedDate)&&(identical(other.description, description) || other.description == description)&&(identical(other.specializationId, specializationId) || other.specializationId == specializationId)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,issuer,issuedDate,description,specializationId,fileUrl);

@override
String toString() {
  return 'Certificate(id: $id, title: $title, issuer: $issuer, issuedDate: $issuedDate, description: $description, specializationId: $specializationId, fileUrl: $fileUrl)';
}


}

/// @nodoc
abstract mixin class $CertificateCopyWith<$Res>  {
  factory $CertificateCopyWith(Certificate value, $Res Function(Certificate) _then) = _$CertificateCopyWithImpl;
@useResult
$Res call({
 String id, String title, String issuer,@JsonKey(name: 'issued_date') DateTime issuedDate, String? description,@JsonKey(name: 'specialization_id') String? specializationId,@JsonKey(name: 'file_url') String? fileUrl
});




}
/// @nodoc
class _$CertificateCopyWithImpl<$Res>
    implements $CertificateCopyWith<$Res> {
  _$CertificateCopyWithImpl(this._self, this._then);

  final Certificate _self;
  final $Res Function(Certificate) _then;

/// Create a copy of Certificate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? issuer = null,Object? issuedDate = null,Object? description = freezed,Object? specializationId = freezed,Object? fileUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,issuer: null == issuer ? _self.issuer : issuer // ignore: cast_nullable_to_non_nullable
as String,issuedDate: null == issuedDate ? _self.issuedDate : issuedDate // ignore: cast_nullable_to_non_nullable
as DateTime,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,specializationId: freezed == specializationId ? _self.specializationId : specializationId // ignore: cast_nullable_to_non_nullable
as String?,fileUrl: freezed == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Certificate].
extension CertificatePatterns on Certificate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Certificate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Certificate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Certificate value)  $default,){
final _that = this;
switch (_that) {
case _Certificate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Certificate value)?  $default,){
final _that = this;
switch (_that) {
case _Certificate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String issuer, @JsonKey(name: 'issued_date')  DateTime issuedDate,  String? description, @JsonKey(name: 'specialization_id')  String? specializationId, @JsonKey(name: 'file_url')  String? fileUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Certificate() when $default != null:
return $default(_that.id,_that.title,_that.issuer,_that.issuedDate,_that.description,_that.specializationId,_that.fileUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String issuer, @JsonKey(name: 'issued_date')  DateTime issuedDate,  String? description, @JsonKey(name: 'specialization_id')  String? specializationId, @JsonKey(name: 'file_url')  String? fileUrl)  $default,) {final _that = this;
switch (_that) {
case _Certificate():
return $default(_that.id,_that.title,_that.issuer,_that.issuedDate,_that.description,_that.specializationId,_that.fileUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String issuer, @JsonKey(name: 'issued_date')  DateTime issuedDate,  String? description, @JsonKey(name: 'specialization_id')  String? specializationId, @JsonKey(name: 'file_url')  String? fileUrl)?  $default,) {final _that = this;
switch (_that) {
case _Certificate() when $default != null:
return $default(_that.id,_that.title,_that.issuer,_that.issuedDate,_that.description,_that.specializationId,_that.fileUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Certificate implements Certificate {
  const _Certificate({required this.id, required this.title, required this.issuer, @JsonKey(name: 'issued_date') required this.issuedDate, this.description, @JsonKey(name: 'specialization_id') this.specializationId, @JsonKey(name: 'file_url') this.fileUrl});
  factory _Certificate.fromJson(Map<String, dynamic> json) => _$CertificateFromJson(json);

@override final  String id;
@override final  String title;
@override final  String issuer;
@override@JsonKey(name: 'issued_date') final  DateTime issuedDate;
@override final  String? description;
@override@JsonKey(name: 'specialization_id') final  String? specializationId;
@override@JsonKey(name: 'file_url') final  String? fileUrl;

/// Create a copy of Certificate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CertificateCopyWith<_Certificate> get copyWith => __$CertificateCopyWithImpl<_Certificate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CertificateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Certificate&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.issuer, issuer) || other.issuer == issuer)&&(identical(other.issuedDate, issuedDate) || other.issuedDate == issuedDate)&&(identical(other.description, description) || other.description == description)&&(identical(other.specializationId, specializationId) || other.specializationId == specializationId)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,issuer,issuedDate,description,specializationId,fileUrl);

@override
String toString() {
  return 'Certificate(id: $id, title: $title, issuer: $issuer, issuedDate: $issuedDate, description: $description, specializationId: $specializationId, fileUrl: $fileUrl)';
}


}

/// @nodoc
abstract mixin class _$CertificateCopyWith<$Res> implements $CertificateCopyWith<$Res> {
  factory _$CertificateCopyWith(_Certificate value, $Res Function(_Certificate) _then) = __$CertificateCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String issuer,@JsonKey(name: 'issued_date') DateTime issuedDate, String? description,@JsonKey(name: 'specialization_id') String? specializationId,@JsonKey(name: 'file_url') String? fileUrl
});




}
/// @nodoc
class __$CertificateCopyWithImpl<$Res>
    implements _$CertificateCopyWith<$Res> {
  __$CertificateCopyWithImpl(this._self, this._then);

  final _Certificate _self;
  final $Res Function(_Certificate) _then;

/// Create a copy of Certificate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? issuer = null,Object? issuedDate = null,Object? description = freezed,Object? specializationId = freezed,Object? fileUrl = freezed,}) {
  return _then(_Certificate(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,issuer: null == issuer ? _self.issuer : issuer // ignore: cast_nullable_to_non_nullable
as String,issuedDate: null == issuedDate ? _self.issuedDate : issuedDate // ignore: cast_nullable_to_non_nullable
as DateTime,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,specializationId: freezed == specializationId ? _self.specializationId : specializationId // ignore: cast_nullable_to_non_nullable
as String?,fileUrl: freezed == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

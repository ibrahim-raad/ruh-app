// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PatientProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatientProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PatientProfileEvent()';
}


}

/// @nodoc
class $PatientProfileEventCopyWith<$Res>  {
$PatientProfileEventCopyWith(PatientProfileEvent _, $Res Function(PatientProfileEvent) __);
}


/// Adds pattern-matching-related methods to [PatientProfileEvent].
extension PatientProfileEventPatterns on PatientProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetProfile value)?  getProfile,TResult Function( _UpdateProfile value)?  updateProfile,TResult Function( _UploadImage value)?  uploadImage,TResult Function( _DeleteImage value)?  deleteImage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetProfile() when getProfile != null:
return getProfile(_that);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that);case _UploadImage() when uploadImage != null:
return uploadImage(_that);case _DeleteImage() when deleteImage != null:
return deleteImage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetProfile value)  getProfile,required TResult Function( _UpdateProfile value)  updateProfile,required TResult Function( _UploadImage value)  uploadImage,required TResult Function( _DeleteImage value)  deleteImage,}){
final _that = this;
switch (_that) {
case _GetProfile():
return getProfile(_that);case _UpdateProfile():
return updateProfile(_that);case _UploadImage():
return uploadImage(_that);case _DeleteImage():
return deleteImage(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetProfile value)?  getProfile,TResult? Function( _UpdateProfile value)?  updateProfile,TResult? Function( _UploadImage value)?  uploadImage,TResult? Function( _DeleteImage value)?  deleteImage,}){
final _that = this;
switch (_that) {
case _GetProfile() when getProfile != null:
return getProfile(_that);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that);case _UploadImage() when uploadImage != null:
return uploadImage(_that);case _DeleteImage() when deleteImage != null:
return deleteImage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getProfile,TResult Function( UpdatePatientProfileDto dto)?  updateProfile,TResult Function( File image)?  uploadImage,TResult Function()?  deleteImage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetProfile() when getProfile != null:
return getProfile();case _UpdateProfile() when updateProfile != null:
return updateProfile(_that.dto);case _UploadImage() when uploadImage != null:
return uploadImage(_that.image);case _DeleteImage() when deleteImage != null:
return deleteImage();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getProfile,required TResult Function( UpdatePatientProfileDto dto)  updateProfile,required TResult Function( File image)  uploadImage,required TResult Function()  deleteImage,}) {final _that = this;
switch (_that) {
case _GetProfile():
return getProfile();case _UpdateProfile():
return updateProfile(_that.dto);case _UploadImage():
return uploadImage(_that.image);case _DeleteImage():
return deleteImage();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getProfile,TResult? Function( UpdatePatientProfileDto dto)?  updateProfile,TResult? Function( File image)?  uploadImage,TResult? Function()?  deleteImage,}) {final _that = this;
switch (_that) {
case _GetProfile() when getProfile != null:
return getProfile();case _UpdateProfile() when updateProfile != null:
return updateProfile(_that.dto);case _UploadImage() when uploadImage != null:
return uploadImage(_that.image);case _DeleteImage() when deleteImage != null:
return deleteImage();case _:
  return null;

}
}

}

/// @nodoc


class _GetProfile implements PatientProfileEvent {
  const _GetProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PatientProfileEvent.getProfile()';
}


}




/// @nodoc


class _UpdateProfile implements PatientProfileEvent {
  const _UpdateProfile(this.dto);
  

 final  UpdatePatientProfileDto dto;

/// Create a copy of PatientProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileCopyWith<_UpdateProfile> get copyWith => __$UpdateProfileCopyWithImpl<_UpdateProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfile&&(identical(other.dto, dto) || other.dto == dto));
}


@override
int get hashCode => Object.hash(runtimeType,dto);

@override
String toString() {
  return 'PatientProfileEvent.updateProfile(dto: $dto)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileCopyWith<$Res> implements $PatientProfileEventCopyWith<$Res> {
  factory _$UpdateProfileCopyWith(_UpdateProfile value, $Res Function(_UpdateProfile) _then) = __$UpdateProfileCopyWithImpl;
@useResult
$Res call({
 UpdatePatientProfileDto dto
});


$UpdatePatientProfileDtoCopyWith<$Res> get dto;

}
/// @nodoc
class __$UpdateProfileCopyWithImpl<$Res>
    implements _$UpdateProfileCopyWith<$Res> {
  __$UpdateProfileCopyWithImpl(this._self, this._then);

  final _UpdateProfile _self;
  final $Res Function(_UpdateProfile) _then;

/// Create a copy of PatientProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dto = null,}) {
  return _then(_UpdateProfile(
null == dto ? _self.dto : dto // ignore: cast_nullable_to_non_nullable
as UpdatePatientProfileDto,
  ));
}

/// Create a copy of PatientProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdatePatientProfileDtoCopyWith<$Res> get dto {
  
  return $UpdatePatientProfileDtoCopyWith<$Res>(_self.dto, (value) {
    return _then(_self.copyWith(dto: value));
  });
}
}

/// @nodoc


class _UploadImage implements PatientProfileEvent {
  const _UploadImage(this.image);
  

 final  File image;

/// Create a copy of PatientProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadImageCopyWith<_UploadImage> get copyWith => __$UploadImageCopyWithImpl<_UploadImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadImage&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'PatientProfileEvent.uploadImage(image: $image)';
}


}

/// @nodoc
abstract mixin class _$UploadImageCopyWith<$Res> implements $PatientProfileEventCopyWith<$Res> {
  factory _$UploadImageCopyWith(_UploadImage value, $Res Function(_UploadImage) _then) = __$UploadImageCopyWithImpl;
@useResult
$Res call({
 File image
});




}
/// @nodoc
class __$UploadImageCopyWithImpl<$Res>
    implements _$UploadImageCopyWith<$Res> {
  __$UploadImageCopyWithImpl(this._self, this._then);

  final _UploadImage _self;
  final $Res Function(_UploadImage) _then;

/// Create a copy of PatientProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? image = null,}) {
  return _then(_UploadImage(
null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as File,
  ));
}


}

/// @nodoc


class _DeleteImage implements PatientProfileEvent {
  const _DeleteImage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteImage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PatientProfileEvent.deleteImage()';
}


}




// dart format on

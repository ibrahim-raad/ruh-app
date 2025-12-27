// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_patient_profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdatePatientProfileDto {

@JsonKey(name: 'full_name') String get fullName;@JsonKey(name: 'date_of_birth') DateTime get dateOfBirth;@JsonKey(name: 'gender') UserGender get gender;@JsonKey(name: 'country_id') String get countryId;@JsonKey(name: 'spoken_languages') List<SpokenLanguageInputDto> get spokenLanguages; int get version;@JsonKey(name: 'patient_version') int get patientVersion;
/// Create a copy of UpdatePatientProfileDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePatientProfileDtoCopyWith<UpdatePatientProfileDto> get copyWith => _$UpdatePatientProfileDtoCopyWithImpl<UpdatePatientProfileDto>(this as UpdatePatientProfileDto, _$identity);

  /// Serializes this UpdatePatientProfileDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePatientProfileDto&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&const DeepCollectionEquality().equals(other.spokenLanguages, spokenLanguages)&&(identical(other.version, version) || other.version == version)&&(identical(other.patientVersion, patientVersion) || other.patientVersion == patientVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,dateOfBirth,gender,countryId,const DeepCollectionEquality().hash(spokenLanguages),version,patientVersion);

@override
String toString() {
  return 'UpdatePatientProfileDto(fullName: $fullName, dateOfBirth: $dateOfBirth, gender: $gender, countryId: $countryId, spokenLanguages: $spokenLanguages, version: $version, patientVersion: $patientVersion)';
}


}

/// @nodoc
abstract mixin class $UpdatePatientProfileDtoCopyWith<$Res>  {
  factory $UpdatePatientProfileDtoCopyWith(UpdatePatientProfileDto value, $Res Function(UpdatePatientProfileDto) _then) = _$UpdatePatientProfileDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'date_of_birth') DateTime dateOfBirth,@JsonKey(name: 'gender') UserGender gender,@JsonKey(name: 'country_id') String countryId,@JsonKey(name: 'spoken_languages') List<SpokenLanguageInputDto> spokenLanguages, int version,@JsonKey(name: 'patient_version') int patientVersion
});




}
/// @nodoc
class _$UpdatePatientProfileDtoCopyWithImpl<$Res>
    implements $UpdatePatientProfileDtoCopyWith<$Res> {
  _$UpdatePatientProfileDtoCopyWithImpl(this._self, this._then);

  final UpdatePatientProfileDto _self;
  final $Res Function(UpdatePatientProfileDto) _then;

/// Create a copy of UpdatePatientProfileDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = null,Object? dateOfBirth = null,Object? gender = null,Object? countryId = null,Object? spokenLanguages = null,Object? version = null,Object? patientVersion = null,}) {
  return _then(_self.copyWith(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as UserGender,countryId: null == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as String,spokenLanguages: null == spokenLanguages ? _self.spokenLanguages : spokenLanguages // ignore: cast_nullable_to_non_nullable
as List<SpokenLanguageInputDto>,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,patientVersion: null == patientVersion ? _self.patientVersion : patientVersion // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdatePatientProfileDto].
extension UpdatePatientProfileDtoPatterns on UpdatePatientProfileDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdatePatientProfileDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdatePatientProfileDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdatePatientProfileDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdatePatientProfileDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdatePatientProfileDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdatePatientProfileDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'date_of_birth')  DateTime dateOfBirth, @JsonKey(name: 'gender')  UserGender gender, @JsonKey(name: 'country_id')  String countryId, @JsonKey(name: 'spoken_languages')  List<SpokenLanguageInputDto> spokenLanguages,  int version, @JsonKey(name: 'patient_version')  int patientVersion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdatePatientProfileDto() when $default != null:
return $default(_that.fullName,_that.dateOfBirth,_that.gender,_that.countryId,_that.spokenLanguages,_that.version,_that.patientVersion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'date_of_birth')  DateTime dateOfBirth, @JsonKey(name: 'gender')  UserGender gender, @JsonKey(name: 'country_id')  String countryId, @JsonKey(name: 'spoken_languages')  List<SpokenLanguageInputDto> spokenLanguages,  int version, @JsonKey(name: 'patient_version')  int patientVersion)  $default,) {final _that = this;
switch (_that) {
case _UpdatePatientProfileDto():
return $default(_that.fullName,_that.dateOfBirth,_that.gender,_that.countryId,_that.spokenLanguages,_that.version,_that.patientVersion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'date_of_birth')  DateTime dateOfBirth, @JsonKey(name: 'gender')  UserGender gender, @JsonKey(name: 'country_id')  String countryId, @JsonKey(name: 'spoken_languages')  List<SpokenLanguageInputDto> spokenLanguages,  int version, @JsonKey(name: 'patient_version')  int patientVersion)?  $default,) {final _that = this;
switch (_that) {
case _UpdatePatientProfileDto() when $default != null:
return $default(_that.fullName,_that.dateOfBirth,_that.gender,_that.countryId,_that.spokenLanguages,_that.version,_that.patientVersion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdatePatientProfileDto implements UpdatePatientProfileDto {
  const _UpdatePatientProfileDto({@JsonKey(name: 'full_name') required this.fullName, @JsonKey(name: 'date_of_birth') required this.dateOfBirth, @JsonKey(name: 'gender') required this.gender, @JsonKey(name: 'country_id') required this.countryId, @JsonKey(name: 'spoken_languages') final  List<SpokenLanguageInputDto> spokenLanguages = const [], required this.version, @JsonKey(name: 'patient_version') required this.patientVersion}): _spokenLanguages = spokenLanguages;
  factory _UpdatePatientProfileDto.fromJson(Map<String, dynamic> json) => _$UpdatePatientProfileDtoFromJson(json);

@override@JsonKey(name: 'full_name') final  String fullName;
@override@JsonKey(name: 'date_of_birth') final  DateTime dateOfBirth;
@override@JsonKey(name: 'gender') final  UserGender gender;
@override@JsonKey(name: 'country_id') final  String countryId;
 final  List<SpokenLanguageInputDto> _spokenLanguages;
@override@JsonKey(name: 'spoken_languages') List<SpokenLanguageInputDto> get spokenLanguages {
  if (_spokenLanguages is EqualUnmodifiableListView) return _spokenLanguages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_spokenLanguages);
}

@override final  int version;
@override@JsonKey(name: 'patient_version') final  int patientVersion;

/// Create a copy of UpdatePatientProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePatientProfileDtoCopyWith<_UpdatePatientProfileDto> get copyWith => __$UpdatePatientProfileDtoCopyWithImpl<_UpdatePatientProfileDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdatePatientProfileDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePatientProfileDto&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&const DeepCollectionEquality().equals(other._spokenLanguages, _spokenLanguages)&&(identical(other.version, version) || other.version == version)&&(identical(other.patientVersion, patientVersion) || other.patientVersion == patientVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,dateOfBirth,gender,countryId,const DeepCollectionEquality().hash(_spokenLanguages),version,patientVersion);

@override
String toString() {
  return 'UpdatePatientProfileDto(fullName: $fullName, dateOfBirth: $dateOfBirth, gender: $gender, countryId: $countryId, spokenLanguages: $spokenLanguages, version: $version, patientVersion: $patientVersion)';
}


}

/// @nodoc
abstract mixin class _$UpdatePatientProfileDtoCopyWith<$Res> implements $UpdatePatientProfileDtoCopyWith<$Res> {
  factory _$UpdatePatientProfileDtoCopyWith(_UpdatePatientProfileDto value, $Res Function(_UpdatePatientProfileDto) _then) = __$UpdatePatientProfileDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'date_of_birth') DateTime dateOfBirth,@JsonKey(name: 'gender') UserGender gender,@JsonKey(name: 'country_id') String countryId,@JsonKey(name: 'spoken_languages') List<SpokenLanguageInputDto> spokenLanguages, int version,@JsonKey(name: 'patient_version') int patientVersion
});




}
/// @nodoc
class __$UpdatePatientProfileDtoCopyWithImpl<$Res>
    implements _$UpdatePatientProfileDtoCopyWith<$Res> {
  __$UpdatePatientProfileDtoCopyWithImpl(this._self, this._then);

  final _UpdatePatientProfileDto _self;
  final $Res Function(_UpdatePatientProfileDto) _then;

/// Create a copy of UpdatePatientProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = null,Object? dateOfBirth = null,Object? gender = null,Object? countryId = null,Object? spokenLanguages = null,Object? version = null,Object? patientVersion = null,}) {
  return _then(_UpdatePatientProfileDto(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as UserGender,countryId: null == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as String,spokenLanguages: null == spokenLanguages ? _self._spokenLanguages : spokenLanguages // ignore: cast_nullable_to_non_nullable
as List<SpokenLanguageInputDto>,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,patientVersion: null == patientVersion ? _self.patientVersion : patientVersion // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

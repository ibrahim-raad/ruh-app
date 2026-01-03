// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'therapist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TherapistOutput {

 String get id;@JsonKey(name: 'version') int get version;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt;@JsonKey(name: 'deleted_at') DateTime? get deletedAt;@JsonKey(name: 'user_id') String? get userId; User? get user; String? get bio;@JsonKey(name: 'years_of_experience') int? get yearsOfExperience;@JsonKey(name: 'rate_per_hour') int? get ratePerHour; Currency? get currency;@JsonKey(name: 'currency_id') String? get currencyId; List<Specialization> get specializations;
/// Create a copy of TherapistOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TherapistOutputCopyWith<TherapistOutput> get copyWith => _$TherapistOutputCopyWithImpl<TherapistOutput>(this as TherapistOutput, _$identity);

  /// Serializes this TherapistOutput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TherapistOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.version, version) || other.version == version)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.user, user) || other.user == user)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.yearsOfExperience, yearsOfExperience) || other.yearsOfExperience == yearsOfExperience)&&(identical(other.ratePerHour, ratePerHour) || other.ratePerHour == ratePerHour)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.currencyId, currencyId) || other.currencyId == currencyId)&&const DeepCollectionEquality().equals(other.specializations, specializations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,version,createdAt,updatedAt,deletedAt,userId,user,bio,yearsOfExperience,ratePerHour,currency,currencyId,const DeepCollectionEquality().hash(specializations));

@override
String toString() {
  return 'TherapistOutput(id: $id, version: $version, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, userId: $userId, user: $user, bio: $bio, yearsOfExperience: $yearsOfExperience, ratePerHour: $ratePerHour, currency: $currency, currencyId: $currencyId, specializations: $specializations)';
}


}

/// @nodoc
abstract mixin class $TherapistOutputCopyWith<$Res>  {
  factory $TherapistOutputCopyWith(TherapistOutput value, $Res Function(TherapistOutput) _then) = _$TherapistOutputCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'version') int version,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt,@JsonKey(name: 'deleted_at') DateTime? deletedAt,@JsonKey(name: 'user_id') String? userId, User? user, String? bio,@JsonKey(name: 'years_of_experience') int? yearsOfExperience,@JsonKey(name: 'rate_per_hour') int? ratePerHour, Currency? currency,@JsonKey(name: 'currency_id') String? currencyId, List<Specialization> specializations
});


$UserCopyWith<$Res>? get user;$CurrencyCopyWith<$Res>? get currency;

}
/// @nodoc
class _$TherapistOutputCopyWithImpl<$Res>
    implements $TherapistOutputCopyWith<$Res> {
  _$TherapistOutputCopyWithImpl(this._self, this._then);

  final TherapistOutput _self;
  final $Res Function(TherapistOutput) _then;

/// Create a copy of TherapistOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? version = null,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,Object? userId = freezed,Object? user = freezed,Object? bio = freezed,Object? yearsOfExperience = freezed,Object? ratePerHour = freezed,Object? currency = freezed,Object? currencyId = freezed,Object? specializations = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,yearsOfExperience: freezed == yearsOfExperience ? _self.yearsOfExperience : yearsOfExperience // ignore: cast_nullable_to_non_nullable
as int?,ratePerHour: freezed == ratePerHour ? _self.ratePerHour : ratePerHour // ignore: cast_nullable_to_non_nullable
as int?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as Currency?,currencyId: freezed == currencyId ? _self.currencyId : currencyId // ignore: cast_nullable_to_non_nullable
as String?,specializations: null == specializations ? _self.specializations : specializations // ignore: cast_nullable_to_non_nullable
as List<Specialization>,
  ));
}
/// Create a copy of TherapistOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of TherapistOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyCopyWith<$Res>? get currency {
    if (_self.currency == null) {
    return null;
  }

  return $CurrencyCopyWith<$Res>(_self.currency!, (value) {
    return _then(_self.copyWith(currency: value));
  });
}
}


/// Adds pattern-matching-related methods to [TherapistOutput].
extension TherapistOutputPatterns on TherapistOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TherapistOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TherapistOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TherapistOutput value)  $default,){
final _that = this;
switch (_that) {
case _TherapistOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TherapistOutput value)?  $default,){
final _that = this;
switch (_that) {
case _TherapistOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'version')  int version, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'deleted_at')  DateTime? deletedAt, @JsonKey(name: 'user_id')  String? userId,  User? user,  String? bio, @JsonKey(name: 'years_of_experience')  int? yearsOfExperience, @JsonKey(name: 'rate_per_hour')  int? ratePerHour,  Currency? currency, @JsonKey(name: 'currency_id')  String? currencyId,  List<Specialization> specializations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TherapistOutput() when $default != null:
return $default(_that.id,_that.version,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.userId,_that.user,_that.bio,_that.yearsOfExperience,_that.ratePerHour,_that.currency,_that.currencyId,_that.specializations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'version')  int version, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'deleted_at')  DateTime? deletedAt, @JsonKey(name: 'user_id')  String? userId,  User? user,  String? bio, @JsonKey(name: 'years_of_experience')  int? yearsOfExperience, @JsonKey(name: 'rate_per_hour')  int? ratePerHour,  Currency? currency, @JsonKey(name: 'currency_id')  String? currencyId,  List<Specialization> specializations)  $default,) {final _that = this;
switch (_that) {
case _TherapistOutput():
return $default(_that.id,_that.version,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.userId,_that.user,_that.bio,_that.yearsOfExperience,_that.ratePerHour,_that.currency,_that.currencyId,_that.specializations);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'version')  int version, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'deleted_at')  DateTime? deletedAt, @JsonKey(name: 'user_id')  String? userId,  User? user,  String? bio, @JsonKey(name: 'years_of_experience')  int? yearsOfExperience, @JsonKey(name: 'rate_per_hour')  int? ratePerHour,  Currency? currency, @JsonKey(name: 'currency_id')  String? currencyId,  List<Specialization> specializations)?  $default,) {final _that = this;
switch (_that) {
case _TherapistOutput() when $default != null:
return $default(_that.id,_that.version,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.userId,_that.user,_that.bio,_that.yearsOfExperience,_that.ratePerHour,_that.currency,_that.currencyId,_that.specializations);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TherapistOutput implements TherapistOutput {
  const _TherapistOutput({required this.id, @JsonKey(name: 'version') required this.version, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt, @JsonKey(name: 'deleted_at') this.deletedAt, @JsonKey(name: 'user_id') this.userId, this.user, this.bio, @JsonKey(name: 'years_of_experience') this.yearsOfExperience, @JsonKey(name: 'rate_per_hour') this.ratePerHour, this.currency, @JsonKey(name: 'currency_id') this.currencyId, final  List<Specialization> specializations = const []}): _specializations = specializations;
  factory _TherapistOutput.fromJson(Map<String, dynamic> json) => _$TherapistOutputFromJson(json);

@override final  String id;
@override@JsonKey(name: 'version') final  int version;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;
@override@JsonKey(name: 'deleted_at') final  DateTime? deletedAt;
@override@JsonKey(name: 'user_id') final  String? userId;
@override final  User? user;
@override final  String? bio;
@override@JsonKey(name: 'years_of_experience') final  int? yearsOfExperience;
@override@JsonKey(name: 'rate_per_hour') final  int? ratePerHour;
@override final  Currency? currency;
@override@JsonKey(name: 'currency_id') final  String? currencyId;
 final  List<Specialization> _specializations;
@override@JsonKey() List<Specialization> get specializations {
  if (_specializations is EqualUnmodifiableListView) return _specializations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specializations);
}


/// Create a copy of TherapistOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TherapistOutputCopyWith<_TherapistOutput> get copyWith => __$TherapistOutputCopyWithImpl<_TherapistOutput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TherapistOutputToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TherapistOutput&&(identical(other.id, id) || other.id == id)&&(identical(other.version, version) || other.version == version)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.user, user) || other.user == user)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.yearsOfExperience, yearsOfExperience) || other.yearsOfExperience == yearsOfExperience)&&(identical(other.ratePerHour, ratePerHour) || other.ratePerHour == ratePerHour)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.currencyId, currencyId) || other.currencyId == currencyId)&&const DeepCollectionEquality().equals(other._specializations, _specializations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,version,createdAt,updatedAt,deletedAt,userId,user,bio,yearsOfExperience,ratePerHour,currency,currencyId,const DeepCollectionEquality().hash(_specializations));

@override
String toString() {
  return 'TherapistOutput(id: $id, version: $version, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, userId: $userId, user: $user, bio: $bio, yearsOfExperience: $yearsOfExperience, ratePerHour: $ratePerHour, currency: $currency, currencyId: $currencyId, specializations: $specializations)';
}


}

/// @nodoc
abstract mixin class _$TherapistOutputCopyWith<$Res> implements $TherapistOutputCopyWith<$Res> {
  factory _$TherapistOutputCopyWith(_TherapistOutput value, $Res Function(_TherapistOutput) _then) = __$TherapistOutputCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'version') int version,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt,@JsonKey(name: 'deleted_at') DateTime? deletedAt,@JsonKey(name: 'user_id') String? userId, User? user, String? bio,@JsonKey(name: 'years_of_experience') int? yearsOfExperience,@JsonKey(name: 'rate_per_hour') int? ratePerHour, Currency? currency,@JsonKey(name: 'currency_id') String? currencyId, List<Specialization> specializations
});


@override $UserCopyWith<$Res>? get user;@override $CurrencyCopyWith<$Res>? get currency;

}
/// @nodoc
class __$TherapistOutputCopyWithImpl<$Res>
    implements _$TherapistOutputCopyWith<$Res> {
  __$TherapistOutputCopyWithImpl(this._self, this._then);

  final _TherapistOutput _self;
  final $Res Function(_TherapistOutput) _then;

/// Create a copy of TherapistOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? version = null,Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,Object? userId = freezed,Object? user = freezed,Object? bio = freezed,Object? yearsOfExperience = freezed,Object? ratePerHour = freezed,Object? currency = freezed,Object? currencyId = freezed,Object? specializations = null,}) {
  return _then(_TherapistOutput(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,yearsOfExperience: freezed == yearsOfExperience ? _self.yearsOfExperience : yearsOfExperience // ignore: cast_nullable_to_non_nullable
as int?,ratePerHour: freezed == ratePerHour ? _self.ratePerHour : ratePerHour // ignore: cast_nullable_to_non_nullable
as int?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as Currency?,currencyId: freezed == currencyId ? _self.currencyId : currencyId // ignore: cast_nullable_to_non_nullable
as String?,specializations: null == specializations ? _self._specializations : specializations // ignore: cast_nullable_to_non_nullable
as List<Specialization>,
  ));
}

/// Create a copy of TherapistOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of TherapistOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyCopyWith<$Res>? get currency {
    if (_self.currency == null) {
    return null;
  }

  return $CurrencyCopyWith<$Res>(_self.currency!, (value) {
    return _then(_self.copyWith(currency: value));
  });
}
}

// dart format on

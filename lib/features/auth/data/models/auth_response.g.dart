// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) =>
    _AuthResponse(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      tokens: TokenDto.fromJson(json['tokens'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthResponseToJson(_AuthResponse instance) =>
    <String, dynamic>{'user': instance.user, 'tokens': instance.tokens};

_TokenDto _$TokenDtoFromJson(Map<String, dynamic> json) =>
    _TokenDto(accessToken: json['access_token'] as String);

Map<String, dynamic> _$TokenDtoToJson(_TokenDto instance) => <String, dynamic>{
  'access_token': instance.accessToken,
};

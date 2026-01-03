// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Currency _$CurrencyFromJson(Map<String, dynamic> json) => _Currency(
  id: json['id'] as String,
  code: json['code'] as String,
  symbol: json['symbol'] as String?,
  name: json['name'] as String,
);

Map<String, dynamic> _$CurrencyToJson(_Currency instance) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'symbol': instance.symbol,
  'name': instance.name,
};

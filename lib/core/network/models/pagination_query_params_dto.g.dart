// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_query_params_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginationQueryParamsDto _$PaginationQueryParamsDtoFromJson(
  Map<String, dynamic> json,
) => _PaginationQueryParamsDto(
  offset: (json['offset'] as num?)?.toInt() ?? 0,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sort: json['sort'] as String? ?? 'created_at DESC',
  queryParams: json['queryParams'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$PaginationQueryParamsDtoToJson(
  _PaginationQueryParamsDto instance,
) => <String, dynamic>{
  'offset': instance.offset,
  'limit': instance.limit,
  'sort': instance.sort,
  'queryParams': instance.queryParams,
};

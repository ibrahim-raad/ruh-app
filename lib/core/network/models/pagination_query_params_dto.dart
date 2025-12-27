import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_query_params_dto.freezed.dart';
part 'pagination_query_params_dto.g.dart';

@freezed
abstract class PaginationQueryParamsDto with _$PaginationQueryParamsDto {
  const factory PaginationQueryParamsDto({
    @Default(0) int offset,
    @Default(10) int limit,
    @Default('created_at DESC') String sort,
    Map<String, dynamic>? queryParams,
  }) = _PaginationQueryParamsDto;

  factory PaginationQueryParamsDto.fromJson(Map<String, dynamic> json) =>
      _$PaginationQueryParamsDtoFromJson(json);
}

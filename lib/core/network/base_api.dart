import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ruh/core/errors/handle_dio_error.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'models/paginated_response.dart';

abstract class BaseApi<T> {
  final Dio dio;
  final String endpoint;
  final T Function(Map<String, dynamic>) fromJson;

  const BaseApi(this.dio, this.endpoint, this.fromJson);

  /// Get Single Item by ID
  /// Expects backend to return JSON: { "id": "...", "name": "..." }
  Future<T> getById(String id) async {
    try {
      final response = await dio.get('$endpoint/$id');
      return fromJson(response.data);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  /// Create Item
  /// Expects backend to return the created object
  Future<T> create(Map<String, dynamic> body) async {
    try {
      final response = await dio.post(endpoint, data: body);
      return fromJson(response.data);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  /// Update Item
  Future<T> update(String id, Map<String, dynamic> body) async {
    try {
      final response = await dio.patch('$endpoint/$id', data: body);
      return fromJson(response.data);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  /// Delete Item
  Future<void> delete(String id) async {
    try {
      await dio.delete('$endpoint/$id');
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  /// Get Paginated List
  /// Expects backend to return: { "items": [...], "total": 100, "hasNext": true }
  Future<PaginatedResponse<T>> getAll({
    PaginationQueryParamsDto paginationQueryParamsDto =
        const PaginationQueryParamsDto(),
  }) async {
    final queryParams = paginationQueryParamsDto.queryParams;
    final json = paginationQueryParamsDto.toJson();
    final queryParameters = {...json, ...(queryParams ?? {})};
    log(queryParameters.toString(), name: 'queryParameters');
    try {
      final response = await dio.get(
        endpoint,
        queryParameters: queryParameters,
      );

      return PaginatedResponse<T>.fromJson(
        response.data,
        (json) => fromJson(json as Map<String, dynamic>),
      );
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}

import 'dart:developer';

import 'package:dio/dio.dart';
import 'app_error.dart';
import 'exceptions.dart';

Exception handleDioError(DioException e) {
  log(e.toString(), name: 'handleDioError');
  final response = e.response;
  final statusCode = response?.statusCode;

  final message =
      _extractErrorMessage(response?.data) ??
      e.message ??
      AppError.unknownError.name;

  if (e.type == DioExceptionType.connectionTimeout ||
      e.type == DioExceptionType.receiveTimeout ||
      e.type == DioExceptionType.sendTimeout ||
      e.type == DioExceptionType.connectionError) {
    return NetworkException(AppError.connectionError.name);
  }

  if (statusCode == null) {
    return UnknownApiException(message);
  }

  switch (statusCode) {
    case 400:
      return BadRequestException(message);
    case 401:
      return UnauthorizedException(message);
    case 403:
      return ForbiddenException(message);
    case 404:
      return NotFoundException(message);
    case 422:
      return ValidationException(message, data: response?.data);
    default:
      return UnknownApiException(message, statusCode: statusCode);
  }
}

/// Helper to parse backend error messages which might be:
/// - String: "Something went wrong"
/// - List: ["Error 1", "Error 2"]
/// - Map with 'message': { "message": "..." }
/// - Map with 'error': { "error": "..." }
String? _extractErrorMessage(dynamic data) {
  if (data == null) return null;

  if (data is String) return data;

  if (data is List) {
    return data.map((e) => e.toString()).join('\n');
  }

  if (data is Map) {
    if (data.containsKey('message') && data['message'] != null) {
      return _extractErrorMessage(data['message']);
    }
    if (data.containsKey('error') && data['error'] != null) {
      return _extractErrorMessage(data['error']);
    }
  }

  return null;
}

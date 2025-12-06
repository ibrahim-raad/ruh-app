import 'package:dio/dio.dart';
import 'app_error.dart';
import 'exceptions.dart';

Exception handleDioError(DioException e) {
  final response = e.response;
  final statusCode = response?.statusCode;
  final message =
      response?.data['message'] ??
      response?.data['error'] ??
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
    case 401:
      return UnauthorizedException(message);
    case 403:
      return ForbiddenException(message);
    case 404:
      return NotFoundException(message);
    case 422:
      return ValidationException(message, data: response?.data);
    case >= 500:
      return ServerException(AppError.serverError.name, statusCode: statusCode);
    default:
      return UnknownApiException(message, statusCode: statusCode);
  }
}

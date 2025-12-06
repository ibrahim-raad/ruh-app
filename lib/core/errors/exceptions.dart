class ServerException implements Exception {
  final String message;
  final int? statusCode;
  final dynamic data;
  ServerException(this.message, {this.statusCode, this.data});
}

class UnauthorizedException extends ServerException {
  UnauthorizedException(super.message, {super.statusCode});
}

class ForbiddenException extends ServerException {
  ForbiddenException(super.message, {super.statusCode});
}

class NotFoundException extends ServerException {
  NotFoundException(super.message, {super.statusCode});
}

class ValidationException extends ServerException {
  ValidationException(super.message, {super.statusCode, super.data});
}

class UnknownApiException extends ServerException {
  UnknownApiException(super.message, {super.statusCode, super.data});
}

class CacheException implements Exception {
  final String message;
  CacheException(this.message);
}

class NetworkException implements Exception {
  final String message;
  NetworkException(this.message);
}

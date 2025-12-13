sealed class ServerException implements Exception {
  final String message;
  final int? statusCode;
  final dynamic data;
  const ServerException(this.message, {this.statusCode, this.data});
}

final class BadRequestException extends ServerException {
  const BadRequestException(super.message, {super.statusCode});
}

final class UnauthorizedException extends ServerException {
  const UnauthorizedException(super.message, {super.statusCode});
}

final class ForbiddenException extends ServerException {
  const ForbiddenException(super.message, {super.statusCode});
}

final class NotFoundException extends ServerException {
  const NotFoundException(super.message, {super.statusCode});
}

final class ValidationException extends ServerException {
  const ValidationException(super.message, {super.statusCode, super.data});
}

final class UnknownApiException extends ServerException {
  const UnknownApiException(super.message, {super.statusCode, super.data});
}

final class CacheException implements Exception {
  final String message;
  const CacheException(this.message);
}

final class NetworkException implements Exception {
  final String message;
  const NetworkException(this.message);
}

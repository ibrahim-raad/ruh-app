import 'package:flutter/material.dart';
import '../errors/app_error.dart';
import '../errors/failures.dart';
import 'l10n_extensions.dart';

extension FailureX on Failure {
  String getErrorMessage(BuildContext context) {
    try {
      final errorEnum = AppError.values.firstWhere(
        (e) => e.name == message,
        orElse: () => AppError.unknownError,
      );

      if (message != AppError.unknownError.name &&
          errorEnum == AppError.unknownError) {
        return message;
      }

      switch (errorEnum) {
        case AppError.connectionError:
          return context.tr.connection_error;
        case AppError.serverError:
          return context.tr.server_error;
        case AppError.unknownError:
          return context.tr.unknown_error;
        default:
          return message;
      }
    } catch (_) {
      return message;
    }
  }
}

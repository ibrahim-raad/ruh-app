import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  final Color success;
  final Color warning;
  final Color info;
  final Color textSubtle;

  const AppColors({
    required this.success,
    required this.warning,
    required this.info,
    required this.textSubtle,
  });

  @override
  AppColors copyWith({
    Color? success,
    Color? warning,
    Color? info,
    Color? textSubtle,
  }) {
    return AppColors(
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      textSubtle: textSubtle ?? this.textSubtle,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      info: Color.lerp(info, other.info, t)!,
      textSubtle: Color.lerp(textSubtle, other.textSubtle, t)!,
    );
  }
}

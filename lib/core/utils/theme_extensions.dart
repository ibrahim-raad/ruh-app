import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

extension ThemeContextX on BuildContext {
  ThemeData get theme => Theme.of(this);
  AppColors get colors => theme.extension<AppColors>()!;
  Color get primary => theme.colorScheme.primary;
  Color get onPrimary => theme.colorScheme.onPrimary;
  Color get secondary => theme.colorScheme.secondary;
  Color get onSecondary => theme.colorScheme.onSecondary;
  Color get error => theme.colorScheme.error;
  Color get onError => theme.colorScheme.onError;
  Color get surface => theme.colorScheme.surface;
  Color get onSurface => theme.colorScheme.onSurface;
  Color get surfaceContainer => theme.colorScheme.surfaceContainer;
  Color get surfaceContainerHighest =>
      theme.colorScheme.surfaceContainerHighest;
  Color get onSurfaceVariant => theme.colorScheme.onSurfaceVariant;
  Color get outline => theme.colorScheme.outline;
  Color get tertiary => theme.colorScheme.tertiary;
  Color get onTertiary => theme.colorScheme.onTertiary;
}

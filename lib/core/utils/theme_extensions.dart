import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

extension ThemeContextX on BuildContext {
  ThemeData get theme => Theme.of(this);
  AppColors get colors => theme.extension<AppColors>()!;
}

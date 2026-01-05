import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class AppTheme {
  // Light Theme Colors
  static const _lightPrimary = Color(0xFF294C7A);
  static const _lightOnPrimary = Color(0xFFFAF9F7);
  static const _lightSecondary = Color(0xFFA9C7E8);
  static const _lightOnSecondary = Color(0xFF1C1C1C);
  static const _lightBackground = Color(0xFFFAF9F7);
  static const _lightForeground = Color(0xFF1C1C1C);
  static const _lightCard = Color(0xFFFFFFFF);
  static const _lightPopover = Color(0xFFFFFFFF);
  static const _lightMuted = Color(0xFFEDEBE6);
  static const _lightMutedForeground = Color(0xFF4B5563);
  static const _lightAccent = Color(0xFFEADFCB);
  static const _lightAccentForeground = Color(0xFF1C1C1C);
  static const _lightDestructive = Color(0xFFEF4444);
  static const _lightBorder = Color(0xFFE5E7EB);
  static const _lightInput = Color(0xFFE5E7EB);
  static const _lightRing = Color(0xFF294C7A);

  // Dark Theme Colors
  static const _darkPrimary = Color(0xFF3A7BD5);
  static const _darkOnPrimary = Color(0xFFFFFFFF);
  static const _darkSecondary = Color(0xFF2C5282);
  static const _darkOnSecondary = Color(0xFFF0F0F0);
  static const _darkBackground = Color(0xFF000000);
  static const _darkForeground = Color(0xFFF0F0F0);
  static const _darkCard = Color(0xFF121212);
  static const _darkPopover = Color(0xFF121212);
  static const _darkMuted = Color(0xFF1A1A1A);
  static const _darkMutedForeground = Color(0xFFA0A0A0);
  static const _darkAccent = Color(0xFFD7C8B0);
  static const _darkAccentForeground = Color(0xFF000000);
  static const _darkDestructive = Color(0xFFE53E3E);
  static const _darkBorder = Color(0xFF2A2A2A);
  static const _darkInput = Color(0xFF1A1A1A);
  static const _darkRing = Color(0xFF3A7BD5);

  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: 'Manrope',
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: _lightPrimary,
      onPrimary: _lightOnPrimary,
      secondary: _lightSecondary,
      onSecondary: _lightOnSecondary,
      error: _lightDestructive,
      onError: Colors.white,
      surface: _lightBackground,
      onSurface: _lightForeground,
      surfaceContainer: _lightCard,
      surfaceContainerHighest: _lightMuted,
      onSurfaceVariant: _lightMutedForeground,
      outline: _lightBorder,
      tertiary: _lightAccent,
      onTertiary: _lightAccentForeground,
    ),
    scaffoldBackgroundColor: _lightBackground,
    cardTheme: const CardThemeData(
      color: _lightCard,
      surfaceTintColor: Colors.transparent,
    ),
    dialogTheme: const DialogThemeData(
      backgroundColor: _lightPopover,
      surfaceTintColor: Colors.transparent,
    ),
    extensions: const [
      AppColors(
        success: Color(0xFF4CAF50),
        warning: Color(0xFFFFC107),
        info: Color(0xFF2196F3),
        textSubtle: _lightMutedForeground,
      ),
    ],
    appBarTheme: AppBarTheme(
      backgroundColor: _lightPrimary,
      elevation: 0,
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: _lightOnPrimary,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: const IconThemeData(color: _lightOnPrimary),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: _lightBackground,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: const BorderSide(color: _lightInput),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: const BorderSide(color: _lightInput),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: const BorderSide(color: _lightRing, width: 2),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _lightPrimary,
        foregroundColor: _lightOnPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        textStyle: TextStyle(
          fontFamily: 'Manrope',
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: TextStyle(
          fontFamily: 'Manrope',
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: _lightBackground,
        foregroundColor: _lightPrimary,
        textStyle: TextStyle(
          fontFamily: 'Manrope',
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: 'Manrope',
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: _darkPrimary,
      onPrimary: _darkOnPrimary,
      secondary: _darkSecondary,
      onSecondary: _darkOnSecondary,
      error: _darkDestructive,
      onError: Colors.white,
      surface: _darkBackground,
      onSurface: _darkForeground,
      surfaceContainer: _darkCard,
      surfaceContainerHighest: _darkMuted,
      onSurfaceVariant: _darkMutedForeground,
      outline: _darkBorder,
      tertiary: _darkAccent,
      onTertiary: _darkAccentForeground,
    ),
    scaffoldBackgroundColor: _darkBackground,
    cardTheme: const CardThemeData(
      color: _darkCard,
      surfaceTintColor: Colors.transparent,
    ),
    dialogTheme: const DialogThemeData(
      backgroundColor: _darkPopover,
      surfaceTintColor: Colors.transparent,
    ),
    extensions: const [
      AppColors(
        success: Color(0xFF81C784),
        warning: Color(0xFFFFD54F),
        info: Color(0xFF64B5F6),
        textSubtle: _darkMutedForeground,
      ),
    ],
    appBarTheme: AppBarTheme(
      backgroundColor: _darkSecondary,
      elevation: 0,
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: _darkForeground,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: const IconThemeData(color: _darkOnPrimary),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: _darkInput,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: const BorderSide(color: _darkBorder),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: const BorderSide(color: _darkBorder),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: const BorderSide(color: _darkRing, width: 2),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _darkPrimary,
        foregroundColor: _darkOnPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        textStyle: TextStyle(
          fontFamily: 'Manrope',
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: TextStyle(
          fontFamily: 'Manrope',
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: _darkBackground,
        foregroundColor: _darkPrimary,
        textStyle: TextStyle(
          fontFamily: 'Manrope',
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

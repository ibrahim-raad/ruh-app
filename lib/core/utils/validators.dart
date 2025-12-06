import 'package:flutter/material.dart';
import 'l10n_extensions.dart';

class Validators {
  static String? required(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return context.tr.required_field;
    }
    return null;
  }

  static String? email(String? value, BuildContext context) {
    if (value == null || value.isEmpty) return required(value, context);
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return context.tr.invalid_email;
    }
    return null;
  }

  static String? password(String? value, BuildContext context) {
    if (value == null || value.isEmpty) return required(value, context);
    if (value.length < 8) {
      return context.tr.password_too_short;
    }
    return null;
  }
}

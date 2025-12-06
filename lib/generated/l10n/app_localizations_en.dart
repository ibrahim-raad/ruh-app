// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get app_name => 'Flutter Template';

  @override
  String get login_page_title => 'Login Page';

  @override
  String get welcome_back => 'Welcome Back';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get login => 'Login';

  @override
  String get required_field => 'This field is required';

  @override
  String get invalid_email => 'Please enter a valid email';

  @override
  String get password_too_short => 'Password must be at least 8 characters';

  @override
  String get login_success => 'Login Success!';

  @override
  String get connection_error =>
      'Connection Error. Please check your internet.';

  @override
  String get server_error => 'Server Error. Please try again later.';

  @override
  String get unknown_error => 'Something went wrong.';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get app_name => 'تطبيق تيمبليت';

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

  @override
  String get enter_your_email => 'Enter your email';

  @override
  String get enter_your_password => 'Enter your password';

  @override
  String get ruh_therapy => 'Ruh Therapy';

  @override
  String get ruh_therapy_welcome_back => 'Welcome back to your journey';

  @override
  String get ruh_therapy_description =>
      'Healing the soul through reflection and connection';

  @override
  String get cache_error => 'Cache Error. Please try again later.';

  @override
  String get skip => 'Skip';

  @override
  String get next => 'Next';

  @override
  String get done => 'Done';

  @override
  String get get_started => 'Get Started';

  @override
  String get forgot_your_password => 'Forgot your password?';

  @override
  String get dont_have_an_account => 'Don\'t have an account?';

  @override
  String get sign_up => 'Sign up';

  @override
  String get begin_your_journey => 'Begin your journey to peace';

  @override
  String get register_success => 'Registered Successfully!';

  @override
  String get already_have_an_account => 'Already have an account?';

  @override
  String get enter_your_full_name => 'Enter your full name';

  @override
  String get full_name => 'Full Name';

  @override
  String get edit_profile => 'Edit Profile';

  @override
  String get date_of_birth => 'Date of Birth';

  @override
  String get gender => 'Gender';

  @override
  String get save => 'Save';

  @override
  String get search => 'بحث';

  @override
  String get cancel => 'إلغاء';

  @override
  String get no_results => 'لا توجد نتائج';

  @override
  String get country => 'الدولة';

  @override
  String get select_country => 'اختر دولة';

  @override
  String get languages => 'اللغات';

  @override
  String get select_languages => 'اختر اللغات';

  @override
  String get primary => 'أساسي';

  @override
  String get make_primary => 'تعيين كأساسي';

  @override
  String get primary_hint => 'النجمة تعني أساسي';

  @override
  String get back => 'رجوع';

  @override
  String questionnaire_progress(Object current, Object total) {
    return '$current من $total';
  }

  @override
  String get questionnaire_select_one => 'اختر خيارًا واحدًا';

  @override
  String get questionnaire_select_one_or_more => 'اختر خيارًا أو أكثر';

  @override
  String get questionnaire_text_hint => 'اكتب إجابتك...';

  @override
  String get questionnaire_finish_title => 'تم الانتهاء';

  @override
  String get questionnaire_finish_subtitle =>
      'شكرًا لإجاباتك. يمكنك المتابعة الآن.';
}

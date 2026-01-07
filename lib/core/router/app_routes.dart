final class AppRoutes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String forgotPassword = '/forgot-password';
  static const String onboarding = '/onboarding';
  static const String register = '/register';
  static const String editProfile = '/edit-profile';
  static String editProfileGoToQuestionnaire(bool shouldGoToQuestionnaire) =>
      '$editProfile?shouldGoToQuestionnaire=$shouldGoToQuestionnaire';
  static String questionnaire(String type) => '/questionnaire/$type';

  static const String home = '/home';
  static const String journal = '/journal';
  static String journalWithDay(String day) =>
      '$journal?day=${Uri.encodeQueryComponent(day)}';
  static const String sessions = '/sessions';
  static const String profile = '/profile';
  static const String therapists = '/therapists';
  static const String scheduleSession = '/schedule-session';
  static const String therapistProfile = '/therapist-profile';
  static const String transferTherapistRequest = '/transfer-therapist-request';
}

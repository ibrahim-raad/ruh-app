import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class SplashLocalDataSource {
  final SharedPreferences _prefs;

  SplashLocalDataSource(this._prefs);

  static const String _kFirstTime = 'is_first_time';

  Future<bool> get isFirstTimeCompleted async =>
      _prefs.getBool(_kFirstTime) ?? true;

  Future<void> setFirstTimeCompleted() async =>
      _prefs.setBool(_kFirstTime, false);
}

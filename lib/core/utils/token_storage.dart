import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class TokenStorage {
  final SharedPreferences _prefs;
  static const _tokenKey = 'access_token';

  TokenStorage(this._prefs);

  Future<void> saveToken(String token) => _prefs.setString(_tokenKey, token);
  String? getToken() => _prefs.getString(_tokenKey);
  Future<void> clearToken() => _prefs.remove(_tokenKey);
}

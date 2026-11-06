import 'package:shared_preferences/shared_preferences.dart';

/// Kullanıcı kimliğini (eski uygulamada "user_token") cihazda saklar.
/// Yeni yapıda bu değer Firestore `users` belge id'si = FirebaseAuth uid'dir.
class TokenService {
  static const _key = 'user_token';

  static Future<void> saveUserToken(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, userId);
  }

  static Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_key);
  }

  static Future<void> clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }
}

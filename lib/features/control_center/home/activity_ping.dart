import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../auth/models/user_model.dart';

/// DAU/MAU için `users/{uid}.last_active_at` damgası. En fazla 6 saatte bir yazılır;
/// arka planda çalışır, hata yutar, arayüzü asla bekletmez.
/// (Kurallar kişinin kendi belgesinde yalnız last_active_at güncellemesine izin verir.)
class ActivityPing {
  ActivityPing._();

  static const _interval = Duration(hours: 6);
  static final Set<String> _inFlight = {};

  static void maybePing(UserModel? user) {
    if (user == null || user.isMerchant || user.id.isEmpty) return;
    if (_inFlight.contains(user.id)) return;
    _inFlight.add(user.id);
    _run(user.id).whenComplete(() => _inFlight.remove(user.id));
  }

  static Future<void> _run(String uid) async {
    try {
      final key = 'last_active_ping_$uid';
      final prefs = await SharedPreferences.getInstance();
      final last = prefs.getInt(key);
      final now = DateTime.now().millisecondsSinceEpoch;
      if (last != null && now - last < _interval.inMilliseconds) return;
      await FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .update({'last_active_at': FieldValue.serverTimestamp()}).timeout(const Duration(seconds: 15));
      await prefs.setInt(key, now);
    } catch (e) {
      debugPrint('ActivityPing: $e');
    }
  }
}

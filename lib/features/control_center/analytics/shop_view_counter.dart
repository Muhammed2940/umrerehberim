import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../../auth/models/user_model.dart';

/// Esnaf görüntülenme sayacı: misafir bir dükkanın detayını açınca
/// `shops/{id}.view_count` tam olarak +1 artar (kurallar yalnız bu alana, yalnız +1'e izin verir).
/// Uygulama oturumu başına dükkan başına en fazla bir kez; ateşle-unut, hatalar yutulur.
class ShopViewCounter {
  static final Set<String> _seen = {};

  static void record(String shopId, UserModel? user) {
    if (shopId.isEmpty || user == null || user.userType != UserType.misafir) return;
    if (!_seen.add(shopId)) return;
    FirebaseFirestore.instance
        .collection('shops')
        .doc(shopId)
        .update({'view_count': FieldValue.increment(1)})
        .catchError((Object e) => debugPrint('ShopViewCounter: $e'));
  }
}

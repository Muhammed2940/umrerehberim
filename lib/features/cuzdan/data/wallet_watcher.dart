import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import '../../../common/services/local_notification_service.dart';
import '../../../core/providers/locale_provider.dart';
import '../../esnaf/models/shop_transaction.dart';
import '../widgets/cuzdan_widgets.dart';

/// Uygulama açıkken misafirin yeni alışverişini dinler ve yerel bildirim gösterir
/// (sunucusuz; FCM yok). Yalnızca en son işlem dinlenir (limit 1), böylece okuma
/// maliyeti düşük kalır. İlk gelen anlık görüntüdeki eski kayıtlar bildirilmez.
///
/// QR ekranı ya da cüzdan açıkken ([suppress]) bildirim gösterilmez; o ekranlar
/// işlemi zaten kendileri gösterir.
class WalletWatcher {
  WalletWatcher._();
  static final instance = WalletWatcher._();

  StreamSubscription<User?>? _authSub;
  StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? _txSub;
  String? _uid;
  final _seen = <String>{};
  bool _primed = false;
  DateTime _since = DateTime.now();
  int _suppressCount = 0;

  /// Bildirim bastırma: ekran açılınca `suppress(true)`, kapanınca `suppress(false)`.
  void suppress(bool on) {
    _suppressCount += on ? 1 : -1;
    if (_suppressCount < 0) _suppressCount = 0;
  }

  /// Birden çok kez çağrılabilir; oturum değişince dinlemeyi kendisi yeniler.
  void start() {
    _authSub ??= FirebaseAuth.instance.authStateChanges().listen(_onUser);
  }

  void _onUser(User? user) {
    final uid = user?.uid;
    if (uid == _uid) return;
    _uid = uid;
    _txSub?.cancel();
    _txSub = null;
    _seen.clear();
    _primed = false;
    if (uid == null) return;
    _txSub = FirebaseFirestore.instance
        .collection('shop_transactions')
        .where('guest_uid', isEqualTo: uid)
        .orderBy('created_at', descending: true)
        .limit(1)
        .snapshots()
        .listen(_onSnapshot, onError: (Object e) => debugPrint('WalletWatcher: $e'));
  }

  void _onSnapshot(QuerySnapshot<Map<String, dynamic>> snap) {
    if (!_primed) {
      // Önbellekten gelen ilk görüntü eksik olabilir; sunucu cevabını bekle.
      if (snap.metadata.isFromCache) return;
      _primed = true;
      _since = DateTime.now().subtract(const Duration(minutes: 1));
      _seen.addAll(snap.docs.map((d) => d.id));
      return;
    }
    for (final doc in snap.docs) {
      if (!_seen.add(doc.id)) continue;
      final tx = ShopTransaction.fromFirestore(doc);
      final created = tx.createdAt;
      if (created != null && created.isBefore(_since)) continue;
      if (tx.isCancelled || _suppressCount > 0) continue;
      _notify(tx);
    }
  }

  void _notify(ShopTransaction tx) {
    final t = l10n;
    final amount = formatSar(tx.amountNet);
    final body = tx.pointsSpent > 0
        ? t.cuzdanNotifSpent(tx.shopName, amount, tx.pointsSpent)
        : t.cuzdanNotifEarned(tx.shopName, amount, tx.pointsEarned);
    LocalNotificationService.show(t.cuzdanSuccessTitle, body, key: 'shop_tx_${tx.id}');
  }
}

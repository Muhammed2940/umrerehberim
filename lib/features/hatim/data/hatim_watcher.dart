import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/services/local_notification_service.dart';
import '../../../core/providers/locale_provider.dart';
import '../models/hatim_group.dart';

/// Sunucusuz Toplu Hatim bildirimleri (tool/HATIM_SEMA.md "Bildirimler").
///
/// Üyesi olunan `hatim_groups` dinlenir; bir grubun `last_event.at` değeri son
/// görülenden (SharedPreferences `last_seen_hatim_ms`) yeniyse ve olayı başkası
/// yaptıysa yerel bildirim gösterilir. Yalnız ana isolate'te çalışır; oturum
/// açılınca [startFor], çıkışta [stop] çağrılır (BackgroundLocationService).
class HatimWatcher {
  HatimWatcher._();

  static const lastSeenKey = 'last_seen_hatim_ms';

  /// Bildirim gösterilen olay tipleri.
  static const _notifiable = {'join', 'done', 'completed', 'new_round'};

  static StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? _sub;
  static String? _uid;

  static bool get isRunning => _sub != null;

  /// Aynı kullanıcı için tekrar çağrılırsa bir şey yapmaz.
  static void startFor(String uid) {
    if (uid.isEmpty) return;
    if (_sub != null && _uid == uid) return;
    _sub?.cancel();
    _uid = uid;
    _sub = FirebaseFirestore.instance
        .collection('hatim_groups')
        .where('members', arrayContains: uid)
        .snapshots()
        .listen(_onSnapshot, onError: (Object e) => debugPrint('HatimWatcher: $e'));
  }

  static Future<void> stop() async {
    await _sub?.cancel();
    _sub = null;
    _uid = null;
  }

  static Future<void> _onSnapshot(QuerySnapshot<Map<String, dynamic>> snap) async {
    final me = _uid;
    if (me == null) return;
    try {
      final prefs = await SharedPreferences.getInstance();
      final lastSeen = prefs.getInt(lastSeenKey);

      // Sunucu zamanı henüz atanmamış (yerel bekleyen) olaylar sonraki snapshot'ta gelir.
      final groups = snap.docs
          .map(HatimGroup.fromDoc)
          .where((g) => g.lastEvent?.at != null)
          .toList();
      if (groups.isEmpty) {
        if (lastSeen == null) await prefs.setInt(lastSeenKey, DateTime.now().millisecondsSinceEpoch);
        return;
      }
      int ms(HatimGroup g) => g.lastEvent!.at!.millisecondsSinceEpoch;
      final newest = groups.map(ms).reduce((a, b) => a > b ? a : b);

      // İlk çalışma: geçmiş olaylar bildirilmez.
      if (lastSeen == null) {
        await prefs.setInt(lastSeenKey, newest);
        return;
      }
      if (newest <= lastSeen) return;
      await prefs.setInt(lastSeenKey, newest);

      final fresh = groups.where((g) => ms(g) > lastSeen).toList()..sort((a, b) => ms(a).compareTo(ms(b)));
      for (final g in fresh) {
        final e = g.lastEvent!;
        if (e.uid == me || !_notifiable.contains(e.type)) continue;
        final body = switch (e.type) {
          'join' => l10n.hatimEvJoin(e.name),
          'done' => g.isCuz
              ? l10n.hatimEvDoneCuz(e.name, e.unit, g.doneCount, g.total)
              : l10n.hatimEvDoneSayfa(e.name, e.unit, g.doneCount, g.total),
          'completed' => l10n.hatimEvCompleted,
          _ => l10n.hatimEvNewRound(e.round),
        };
        // Kararlı kimlik: aynı olay iki kez gelirse bildirim yenilenir, çoğalmaz.
        final key = 'hatim_${g.id}_${e.round}_${e.type}_${e.type == 'join' ? e.uid : e.unit}';
        await LocalNotificationService.show(g.name.isEmpty ? l10n.hatimTitle : g.name, body, key: key);
      }
    } catch (e) {
      debugPrint('HatimWatcher._onSnapshot: $e');
    }
  }
}

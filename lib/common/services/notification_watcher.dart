import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/providers/locale_provider.dart';
import '../../core/utils/firestore_utils.dart';
import 'local_notification_service.dart';

/// Sunucusuz duyuru bildirimi: Firestore `notifications` koleksiyonunu dinler,
/// son görülenden yeni olan duyuruları yerel bildirim olarak gösterir.
///
/// Aynı anda yalnızca bir isolate'te çalışması hedeflenir: arka plan servisi
/// çalışıyorsa serviste, değilse ana isolate'te. Yine de çakışırsa son görülen
/// zaman SharedPreferences'ta paylaşılır ve bildirim kimliği belge kimliğinden
/// türetildiği için aynı duyuru ekranda iki kez görünmez.
class NotificationWatcher {
  NotificationWatcher({
    required this.uid,
    required this.agencyId,
    this.isGuest = true,
    this.tripIds = const {},
  });

  static const lastSeenKey = 'last_seen_notification_ms';

  final String uid;
  final String agencyId;
  final bool isGuest;
  final Set<String> tripIds;

  StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? _sub;
  bool get isRunning => _sub != null;

  /// `cached_user` JSON'undan (veya Firestore users belgesinden) kurar.
  static NotificationWatcher? fromUserMap(String uid, Map<String, dynamic> u) {
    final agency = u['agency_id']?.toString();
    if (agency == null || agency.isEmpty) return null;
    final type = u['user_type']?.toString() ?? 'misafir';
    return NotificationWatcher(
      uid: uid,
      agencyId: agency,
      isGuest: type == 'misafir',
      tripIds: {
        for (final k in ['mekke_seferi_id', 'medine_seferi_id'])
          if ((u[k]?.toString() ?? '').isNotEmpty) u[k].toString(),
      },
    );
  }

  void start() {
    if (_sub != null) return;
    _sub = FirebaseFirestore.instance
        .collection('notifications')
        .where('agency_id', isEqualTo: agencyId)
        .orderBy('created_at', descending: true)
        .limit(5)
        .snapshots()
        .listen(_onSnapshot, onError: (Object e) => debugPrint('NotificationWatcher: $e'));
  }

  Future<void> stop() async {
    await _sub?.cancel();
    _sub = null;
  }

  Future<void> _onSnapshot(QuerySnapshot<Map<String, dynamic>> snap) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.reload(); // Diğer isolate'in yazdığı değeri gör.
      final lastSeen = prefs.getInt(lastSeenKey);

      // Sunucu zamanı henüz atanmamış (yerel bekleyen) belgeler sonraki snapshot'ta gelir.
      final docs = snap.docs
          .map((d) => (doc: d, at: toDateTime(d.data()['created_at'])?.millisecondsSinceEpoch))
          .where((e) => e.at != null)
          .toList();
      if (docs.isEmpty) {
        if (lastSeen == null) await prefs.setInt(lastSeenKey, DateTime.now().millisecondsSinceEpoch);
        return;
      }
      final newest = docs.map((e) => e.at!).reduce((a, b) => a > b ? a : b);

      // İlk açılış: eski duyurular bildirim yapılmaz.
      if (lastSeen == null) {
        await prefs.setInt(lastSeenKey, newest);
        return;
      }
      if (newest <= lastSeen) return;
      await prefs.setInt(lastSeenKey, newest);

      final fresh = docs.where((e) => e.at! > lastSeen).toList()..sort((a, b) => a.at!.compareTo(b.at!));
      for (final e in fresh) {
        final d = e.doc.data();
        final token = d['user_token']?.toString() ?? '';
        if (token.isNotEmpty && token != uid) continue;
        final trip = d['trip_id']?.toString() ?? '';
        if (isGuest && trip.isNotEmpty && !tripIds.contains(trip)) continue;
        final title = d['title']?.toString() ?? '';
        final body = d['message']?.toString() ?? '';
        await LocalNotificationService.show(title.isEmpty ? l10n.coreAnnouncement : title, body,
            key: 'notif_${e.doc.id}');
      }
    } catch (e) {
      debugPrint('NotificationWatcher._onSnapshot: $e');
    }
  }
}

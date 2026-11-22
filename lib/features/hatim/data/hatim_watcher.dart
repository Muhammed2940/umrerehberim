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
///
/// Güvenlik: bildirim başlığı sabittir ("Toplu Hatim"); grup adı (sahibin
/// değiştirebildiği serbest metin) yalnız gövdede, kontrol/yön karakterleri
/// temizlenmiş ve kısaltılmış olarak yer alır. Aynı kişinin aynı gruba katılması
/// en fazla bir kez bildirilir (katıl/ayrıl döngüsüyle bildirim yağmuru olmasın).
class HatimWatcher {
  HatimWatcher._();

  static const lastSeenKey = 'last_seen_hatim_ms';

  /// Bildirilmiş katılımlar: 'gid|uid' listesi (eskiden yeniye), en fazla [_joinCap].
  static const joinNotifiedKey = 'hatim_join_notified';
  static const _joinCap = 300;

  /// Gövdedeki grup adı / kişi adı için azami uzunluk (karakter).
  static const _nameMax = 40;

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

  // Kontrol karakterleri (C0, DEL, C1), yön işaretleri (LRM/RLM, ALM), satır/paragraf
  // ayırıcı, gömme/geçersiz kılma (U+202A–202E) ve izole (U+2066–2069) karakterleri.
  static final _unsafeChars =
      RegExp('[\u0000-\u001F\u007F-\u009F\u061C\u200E\u200F\u2028\u2029\u202A-\u202E\u2066-\u2069]');

  /// Bildirimde gösterilecek güvenli metin: tehlikeli karakterler boşluğa çevrilir,
  /// boşluklar sadeleşir, [max] karakterden uzunsa '…' ile kısaltılır.
  @visibleForTesting
  static String sanitize(String s, {int max = _nameMax}) {
    final clean = s.replaceAll(_unsafeChars, ' ').replaceAll(RegExp(r'\s+'), ' ').trim();
    final runes = clean.runes.toList();
    if (runes.length <= max) return clean;
    return '${String.fromCharCodes(runes.take(max)).trimRight()}…';
  }

  /// Katılım daha önce bildirildiyse true; değilse kaydeder ve false döner.
  static Future<bool> _joinAlreadyNotified(SharedPreferences prefs, String gid, String uid) async {
    final key = '$gid|$uid';
    final list = prefs.getStringList(joinNotifiedKey) ?? <String>[];
    if (list.contains(key)) return true;
    list.add(key);
    // En eskileri at (FIFO), liste sınırlı kalsın.
    final pruned = list.length > _joinCap ? list.sublist(list.length - _joinCap) : list;
    await prefs.setStringList(joinNotifiedKey, pruned);
    return false;
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
        if (e.type == 'join' && await _joinAlreadyNotified(prefs, g.id, e.uid)) continue;
        final who = sanitize(e.name);
        final text = switch (e.type) {
          'join' => l10n.hatimEvJoin(who),
          'done' => g.isCuz
              ? l10n.hatimEvDoneCuz(who, e.unit, g.doneCount, g.total)
              : l10n.hatimEvDoneSayfa(who, e.unit, g.doneCount, g.total),
          'completed' => l10n.hatimEvCompleted,
          _ => l10n.hatimEvNewRound(e.round),
        };
        final groupName = sanitize(g.name);
        final body = groupName.isEmpty ? text : '$groupName · $text';
        // Kararlı kimlik: aynı olay iki kez gelirse bildirim yenilenir, çoğalmaz.
        final key = 'hatim_${g.id}_${e.round}_${e.type}_${e.type == 'join' ? e.uid : e.unit}';
        await LocalNotificationService.show(l10n.hatimTitle, body, key: key);
      }
    } catch (e) {
      debugPrint('HatimWatcher._onSnapshot: $e');
    }
  }
}

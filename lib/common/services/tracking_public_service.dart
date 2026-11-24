import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';

import '../../features/aile_takibi/models/tracking_link.dart';

/// Aile Takibi ARA MOD (PHP'siz): web sayfasının doğrudan okuduğu
/// `tracking_public/{hash}` düğümleri (docs/plan/AILE_TAKIBI_SOZLESME.md, "ARA MOD").
///
/// PHP sunucusu kurulunca web `/v1/track`'e döner; bu düğümler o zaman kaldırılabilir.
class TrackingPublicService {
  TrackingPublicService._();

  static DatabaseReference ref(String hash) =>
      FirebaseDatabase.instanceFor(app: Firebase.app()).ref('tracking_public').child(hash);

  /// Web'de görünen ad: `user_name` ilk kelimesi.
  static String displayName(String userName) {
    final first = userName.trim().split(RegExp(r'\s+')).first;
    if (first.isEmpty) return 'Hacı';
    return first.length > 40 ? first.substring(0, 40) : first;
  }

  /// Yaklaşık konum: ~1 km (2 ondalık), doğruluk en az 1500 m.
  static ({double lat, double lng, double accuracy}) approxOf(double lat, double lng, double accuracy) => (
        lat: (lat * 100).roundToDouble() / 100,
        lng: (lng * 100).roundToDouble() / 100,
        accuracy: accuracy < 1500 ? 1500 : accuracy,
      );

  /// Düğümün tamamını yazar. [lat]/[lng] null ise ya da bağlantı gizliyse konum alanları yazılmaz.
  static Future<void> publish({
    required TrackingLink link,
    required String ownerUid,
    required String userName,
    double? lat,
    double? lng,
    double? accuracy,
    int? updatedAtMs,
  }) async {
    final now = DateTime.now();
    if (!link.isActive(now)) return remove(link.hash);
    final hidden = link.isHidden(now);
    final data = <String, Object>{
      'owner': ownerUid,
      'name': displayName(userName),
      'expires_at': link.expiresAt.millisecondsSinceEpoch,
      'hidden_until': hidden ? link.hiddenUntil!.millisecondsSinceEpoch : 0,
      'approx': link.approx,
    };
    if (!hidden && lat != null && lng != null) {
      var p = (lat: lat, lng: lng, accuracy: accuracy ?? 50);
      if (link.approx) p = approxOf(p.lat, p.lng, p.accuracy);
      data['lat'] = p.lat;
      data['lng'] = p.lng;
      data['accuracy'] = p.accuracy;
      data['updated_at'] = updatedAtMs ?? ServerValue.timestamp;
    }
    try {
      await ref(link.hash).set(data);
    } catch (e) {
      debugPrint('tracking_public yazılamadı: $e');
    }
  }

  /// Konumu koruyarak yalnız ayarları günceller (gizle, yaklaşık, süre). Konum
  /// varsa ve yaklaşık açıldıysa mevcut koordinatlar yuvarlanır.
  static Future<void> refreshMeta({required TrackingLink link, required String ownerUid, required String userName}) async {
    double? lat, lng, acc;
    int? at;
    try {
      final v = (await ref(link.hash).get()).value;
      if (v is Map) {
        lat = (v['lat'] as num?)?.toDouble();
        lng = (v['lng'] as num?)?.toDouble();
        acc = (v['accuracy'] as num?)?.toDouble();
        at = (v['updated_at'] as num?)?.toInt();
        // Yaklaşıktan tama geçişte eski yuvarlanmış konum "tam" diye yayınlanmasın.
        if (v['approx'] == true && !link.approx) lat = lng = acc = null;
      }
    } catch (_) {}
    await publish(link: link, ownerUid: ownerUid, userName: userName, lat: lat, lng: lng, accuracy: acc, updatedAtMs: at);
  }

  static Future<void> remove(String hash) async {
    try {
      await ref(hash).remove();
    } catch (e) {
      debugPrint('tracking_public silinemedi: $e');
    }
  }

  /// Paylaşım kapatılınca: düğümler kalır ama konum alanları silinir (web "paylaşım kapalı" der).
  static Future<void> clearLocationsFor(String uid, String userName) async {
    try {
      final snap = await FirebaseFirestore.instance.collection('tracking_links').where('owner_uid', isEqualTo: uid).get();
      for (final d in snap.docs) {
        await publish(link: TrackingLink.fromDoc(d.id, d.data()), ownerUid: uid, userName: userName);
      }
    } catch (e) {
      debugPrint('tracking_public konum temizleme: $e');
    }
  }

  /// Sahibin tüm bağlantı düğümlerini siler (paket bitti, hesap silme).
  static Future<void> removeAllFor(String uid) async {
    try {
      final snap = await FirebaseFirestore.instance.collection('tracking_links').where('owner_uid', isEqualTo: uid).get();
      for (final d in snap.docs) {
        await remove(d.id);
      }
    } catch (e) {
      debugPrint('tracking_public toplu silme: $e');
    }
  }
}

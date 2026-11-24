import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/services/tracking_public_service.dart';
import '../../auth/models/user_model.dart';
import '../../paketler/providers/personal_plan_provider.dart';
import '../models/tracking_link.dart';

/// Aile Takibi bağlantıları (docs/plan/AILE_TAKIBI_SOZLESME.md).
///
/// Token istemcide üretilir (Random.secure 32 bayt, base64url dolgusuz); belge id'si sha256(token).
/// Token yalnız bu cihazda (`tracking_token_<hash>`) tutulur, sunucuya hiç gönderilmez.
class AileTakibiProvider extends ChangeNotifier {
  static const tokenKeyPrefix = 'tracking_token_';
  static const maxActiveLinks = 5;
  static const linkDuration = Duration(days: 30);
  static const hideDuration = Duration(hours: 2);

  final _col = FirebaseFirestore.instance.collection('tracking_links');

  UserModel? _user;
  StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? _sub;
  List<TrackingLink> _links = const [];
  bool _loading = true;
  bool _error = false;

  List<TrackingLink> get links => _links;
  bool get loading => _loading;
  bool get hasError => _error;
  int get activeCount => _links.where((l) => l.isActive()).length;
  bool get limitReached => activeCount >= maxActiveLinks;

  /// Hak: bireysel için Aile/Full paket (aktif, süresi dolmamış), acente misafiri için her zaman.
  static bool hasRight(UserModel? u) {
    if (u == null) return false;
    if (u.isBireysel) return personalPlan.canUseFamilyTracking;
    return u.userType == UserType.misafir && (u.agencyId ?? '').isNotEmpty;
  }

  /// Oturumdaki kullanıcıyla dinlemeyi başlatır (aynı uid için tekrar çağrılırsa bir şey yapmaz).
  void attach(UserModel user) {
    if (_user?.id == user.id) {
      _user = user;
      return;
    }
    _user = user;
    _sub?.cancel();
    _loading = true;
    _error = false;
    _sub = _col.where('owner_uid', isEqualTo: user.id).snapshots().listen((snap) {
      final list = snap.docs.map((d) => TrackingLink.fromDoc(d.id, d.data())).toList()
        ..sort((a, b) => (b.createdAt ?? DateTime.now()).compareTo(a.createdAt ?? DateTime.now()));
      _links = list;
      _loading = false;
      _error = false;
      notifyListeners();
    }, onError: (Object e) {
      debugPrint('tracking_links dinlenemedi: $e');
      _loading = false;
      _error = true;
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  // --- Token ---

  static String generateToken() {
    final rnd = Random.secure();
    final bytes = List<int>.generate(32, (_) => rnd.nextInt(256));
    return base64Url.encode(bytes).replaceAll('=', '');
  }

  static String hashOf(String token) => sha256.convert(utf8.encode(token)).toString();

  Future<String?> tokenFor(String hash) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('$tokenKeyPrefix$hash');
  }

  // --- İşlemler ---

  /// Yeni bağlantı oluşturur ve token'ı döner. Hak yoksa ya da 5 etkin bağlantı doluysa hata fırlatır.
  Future<String> create({required String label, required bool approx}) async {
    final u = _user;
    if (u == null || !hasRight(u)) throw StateError('no_right');
    if (limitReached) throw StateError('limit');
    final name = label.trim();
    if (name.isEmpty || name.length > 30) throw ArgumentError('label');

    final now = DateTime.now();
    // Telefon saati sunucudan biraz ileride olabilir; kural "sunucu saati + en çok 30 gün" ister.
    var expires = now.add(linkDuration - const Duration(minutes: 10));
    if (u.isBireysel) {
      final until = personalPlan.paidUntil;
      if (until == null) throw StateError('no_right');
      if (until.isBefore(expires)) expires = until;
    }
    final token = generateToken();
    final hash = hashOf(token);
    await _col.doc(hash).set({
      'owner_uid': u.id,
      'kind': u.isBireysel ? 'bireysel' : 'acente',
      'agency_id': u.isBireysel ? '' : (u.agencyId ?? ''),
      'label': name,
      'approx': approx,
      'hidden_until': null,
      'revoked': false,
      'created_at': FieldValue.serverTimestamp(),
      'expires_at': Timestamp.fromDate(expires),
    }).timeout(const Duration(seconds: 15));
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('$tokenKeyPrefix$hash', token);
    // Ara mod: web'in okuyacağı düğüm (konumu arka plan servisi ekler).
    await TrackingPublicService.publish(
      link: TrackingLink(
        hash: hash,
        ownerUid: u.id,
        kind: u.isBireysel ? 'bireysel' : 'acente',
        agencyId: u.isBireysel ? '' : (u.agencyId ?? ''),
        label: name,
        approx: approx,
        hiddenUntil: null,
        revoked: false,
        createdAt: now,
        expiresAt: expires,
      ),
      ownerUid: u.id,
      userName: u.userName,
    );
    return token;
  }

  Future<void> _update(String hash, Map<String, dynamic> data) =>
      _col.doc(hash).update(data).timeout(const Duration(seconds: 15));

  /// Ara mod: Firestore değişikliğini web düğümüne de yansıtır.
  Future<void> _mirror(TrackingLink l) async {
    final u = _user;
    if (u == null) return;
    await TrackingPublicService.refreshMeta(link: l, ownerUid: u.id, userName: u.userName);
  }

  TrackingLink _with(TrackingLink l, {bool? approx, DateTime? hiddenUntil, bool clearHidden = false}) => TrackingLink(
        hash: l.hash,
        ownerUid: l.ownerUid,
        kind: l.kind,
        agencyId: l.agencyId,
        label: l.label,
        approx: approx ?? l.approx,
        hiddenUntil: clearHidden ? null : (hiddenUntil ?? l.hiddenUntil),
        revoked: l.revoked,
        createdAt: l.createdAt,
        expiresAt: l.expiresAt,
      );

  Future<void> setApprox(TrackingLink l, bool value) async {
    await _update(l.hash, {'approx': value});
    await _mirror(_with(l, approx: value));
  }

  Future<void> setLabel(TrackingLink l, String label) => _update(l.hash, {'label': label.trim()});

  Future<void> hideFor2Hours(TrackingLink l) async {
    final until = DateTime.now().add(hideDuration);
    await _update(l.hash, {'hidden_until': Timestamp.fromDate(until)});
    await _mirror(_with(l, hiddenUntil: until));
  }

  Future<void> unhide(TrackingLink l) async {
    await _update(l.hash, {'hidden_until': null});
    await _mirror(_with(l, clearHidden: true));
  }

  /// İptal geri alınamaz. Yerel token da silinir (paylaşılacak bir şey kalmaz).
  Future<void> revoke(TrackingLink l) async {
    await _update(l.hash, {'revoked': true});
    await TrackingPublicService.remove(l.hash);
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('$tokenKeyPrefix${l.hash}');
    } catch (_) {}
  }

  /// "Kim baktı": son görüntüleme önce.
  Future<List<TrackingView>> views(TrackingLink l) async {
    final snap = await _col.doc(l.hash).collection('views').get().timeout(const Duration(seconds: 15));
    final list = snap.docs.map((d) => TrackingView.fromDoc(d.data())).toList()
      ..sort((a, b) => (b.lastAt ?? DateTime(0)).compareTo(a.lastAt ?? DateTime(0)));
    return list;
  }

  /// Hesap silme: kullanıcının tüm bağlantıları (önce views alt koleksiyonu, kurallar sahibine
  /// views silme izni vermiyorsa o belgeler sunucuda sahipsiz kalır) ve yerel token'lar.
  static Future<void> deleteAllFor(String uid) async {
    final col = FirebaseFirestore.instance.collection('tracking_links');
    final snap = await col.where('owner_uid', isEqualTo: uid).get();
    for (final d in snap.docs) {
      await TrackingPublicService.remove(d.id);
      try {
        final views = await d.reference.collection('views').get();
        for (final v in views.docs) {
          await v.reference.delete();
        }
      } catch (e) {
        debugPrint('views silinemedi: $e');
      }
      await d.reference.delete();
    }
    final prefs = await SharedPreferences.getInstance();
    for (final k in prefs.getKeys().where((k) => k.startsWith(tokenKeyPrefix)).toList()) {
      await prefs.remove(k);
    }
  }
}

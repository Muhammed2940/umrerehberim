import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../admin/models/trip_model.dart';

/// Bireysel paket kimlikleri (docs/plan/BIREYSEL_PLAN.md).
enum PaketId { ucretsiz, umre, aile, full }

/// Bireysel kullanıcının seçtiği paket ve kendi girdiği Mekke/Medine yolculuk bilgisi.
///
/// Paket hakkının doğru kaynağı Firestore `entitlements/{uid}` (kurallar esnaf indirimini
/// buna göre açar). DEMO: ödeme henüz bağlı değil; `platform_settings/payments.demo_payments`
/// açıkken bireysel kendi hakkını yazar (ödeme alınmaz). PayTR gelince yalnız sunucu yazar.
/// Mekke/Medine tarih ve otel bilgisi ile son bilinen paket `personal_plan_<uid>` anahtarında
/// bu cihazda tutulur (çevrimdışı açılış için); çıkışta ve hesap silmede temizlenir.
class PersonalPlanProvider extends ChangeNotifier {
  static const keyPrefix = 'personal_plan_';

  String? _uid;
  PaketId _paket = PaketId.ucretsiz;
  CityPlan _mekke = const CityPlan();
  CityPlan _medine = const CityPlan();

  PaketId get paket => _paket;
  bool get hasPaidPackage => _paket != PaketId.ucretsiz;

  /// Full Umre Paketi: ödemeden sonra yönetici onayı beklenir; tarihleri yönetici
  /// kullanıcıyla iletişime geçip belirler (kullanıcı kendisi girmez).
  bool get awaitingApproval => _paket == PaketId.full && !_approved;
  bool _approved = false;

  /// Esnaf indirimi, puan ve Harcamalarım: aktif (onaylı) ücretli paket.
  /// Onaylı Full: tarihleri yönetici girdi, kullanıcı düzenleyemez (Teknik Destek'e yönlenir).
  bool get isApprovedFull => _paket == PaketId.full && _approved;

  bool get canUseDiscounts => hasPaidPackage && !awaitingApproval;
  CityPlan get mekke => _mekke;
  CityPlan get medine => _medine;
  bool get hasAnyDates => _mekke.start != null || _medine.start != null;

  TripModel? get mekkeTrip => _mekke.toTrip('personal_mekke', 'Mekke');
  TripModel? get medineTrip => _medine.toTrip('personal_medine', 'Medine');

  /// Oturumdaki kullanıcı için yükler; aynı uid için tekrar çağrılırsa bir şey yapmaz.
  Future<void> loadFor(String uid) async {
    if (_uid == uid) return;
    _uid = uid;
    _reset();
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString('$keyPrefix$uid');
      if (raw != null && _uid == uid) {
        final m = jsonDecode(raw) as Map<String, dynamic>;
        _paket = PaketId.values.firstWhere((p) => p.name == m['paket'], orElse: () => PaketId.ucretsiz);
        _approved = m['approved'] == true;
        _mekke = CityPlan.fromJson(m['mekke']);
        _medine = CityPlan.fromJson(m['medine']);
      }
    } catch (e) {
      debugPrint('Kişisel plan okunamadı: $e');
    }
    notifyListeners();
    await _syncFromServer(uid);
  }

  DocumentReference<Map<String, dynamic>> _entRef(String uid) =>
      FirebaseFirestore.instance.collection('entitlements').doc(uid);

  /// Sunucudaki hak yerel kopyanın önüne geçer (süresi dolmuş hak = ücretsiz).
  /// Okunamazsa (çevrimdışı) son bilinen yerel durum kalır.
  Future<void> _syncFromServer(String uid) async {
    try {
      final snap = await _entRef(uid).get(const GetOptions(source: Source.server));
      if (_uid != uid) return;
      final d = snap.data();
      final until = d?['paid_until'];
      final valid = d != null && until is Timestamp && until.toDate().isAfter(DateTime.now());
      final paket = valid
          ? PaketId.values.firstWhere((p) => p.name == d['paket'], orElse: () => PaketId.ucretsiz)
          : PaketId.ucretsiz;
      final approved = valid && d['status'] == 'active';
      if (paket == PaketId.full && approved) {
        // Full: tarih ve otel bilgisini yönetici girer (entitlements), kullanıcı değiştiremez.
        CityPlan city(String p) {
          final s = d['${p}_start'], e = d['${p}_end'];
          return CityPlan(
            start: s is Timestamp ? s.toDate() : null,
            end: e is Timestamp ? e.toDate() : null,
            hotel: (d['${p}_hotel'] as String?) ?? '',
          );
        }

        _paket = paket;
        _approved = true;
        _mekke = city('mekke');
        _medine = city('medine');
        await _save();
        return;
      }
      if (paket == _paket && approved == _approved) return;
      _paket = paket;
      _approved = approved;
      if (paket == PaketId.ucretsiz || paket == PaketId.full && !approved) {
        _mekke = const CityPlan();
        _medine = const CityPlan();
      }
      await _save();
    } catch (e) {
      debugPrint('Paket hakkı sunucudan okunamadı: $e');
    }
  }

  /// Paketi seçer: önce sunucudaki hak yazılır/silinir (başarısızsa hata fırlatır ve
  /// yerel durum değişmez), sonra yerel kopya güncellenir.
  Future<void> selectPaket(PaketId p) async {
    final uid = _uid;
    if (uid == null) throw StateError('oturum yok');
    // Full hakkı yönetici verisi: istemci üzerine yazmaz (iletişimle değişir).
    if (_paket == PaketId.full) throw StateError('full hak istemciden değişmez');
    final ref = _entRef(uid);
    if (p == PaketId.ucretsiz) {
      await ref.delete().timeout(const Duration(seconds: 15));
    } else {
      await ref.set({
        'paket': p.name,
        'status': p == PaketId.full ? 'pending_approval' : 'active',
        'paid_until': Timestamp.fromDate(DateTime.now().add(const Duration(days: 30))),
        'source': 'demo',
        'updated_at': FieldValue.serverTimestamp(),
      }).timeout(const Duration(seconds: 15));
    }
    _paket = p;
    _approved = false;
    if (p == PaketId.ucretsiz || p == PaketId.full) {
      _mekke = const CityPlan();
      _medine = const CityPlan();
    }
    await _save();
  }

  Future<void> saveCities({required CityPlan mekke, required CityPlan medine}) async {
    _mekke = mekke;
    _medine = medine;
    await _save();
  }

  /// Çıkışta bellekteki veriyi bırakır (yerel anahtarlar LoginProvider'da silinir).
  void clear() {
    _uid = null;
    _reset();
    notifyListeners();
  }

  void _reset() {
    _paket = PaketId.ucretsiz;
    _approved = false;
    _mekke = const CityPlan();
    _medine = const CityPlan();
  }

  Future<void> _save() async {
    notifyListeners();
    final uid = _uid;
    if (uid == null) return;
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(
        '$keyPrefix$uid',
        jsonEncode({'paket': _paket.name, 'approved': _approved, 'mekke': _mekke.toJson(), 'medine': _medine.toJson()}),
      );
    } catch (e) {
      debugPrint('Kişisel plan kaydedilemedi: $e');
    }
  }
}

/// Bir şehirdeki konaklama: giriş-çıkış tarihi ve otel adı.
@immutable
class CityPlan {
  final DateTime? start;
  final DateTime? end;
  final String hotel;

  const CityPlan({this.start, this.end, this.hotel = ''});

  factory CityPlan.fromJson(dynamic j) {
    if (j is! Map) return const CityPlan();
    DateTime? d(dynamic v) => v is String ? DateTime.tryParse(v) : null;
    return CityPlan(start: d(j['start']), end: d(j['end']), hotel: (j['hotel'] as String?) ?? '');
  }

  Map<String, dynamic> toJson() => {
        'start': start?.toIso8601String(),
        'end': end?.toIso8601String(),
        'hotel': hotel,
      };

  TripModel? toTrip(String id, String city) {
    if (start == null || end == null) return null;
    return TripModel(id: id, name: city, location: city, startDate: start, endDate: end);
  }
}

/// Uygulama genelinde tek örnek (localeProvider gibi); main.dart'ta Provider'a da verilir.
final personalPlan = PersonalPlanProvider();

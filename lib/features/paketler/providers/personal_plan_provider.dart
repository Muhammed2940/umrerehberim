import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../admin/models/trip_model.dart';

/// Bireysel paket kimlikleri (docs/plan/BIREYSEL_PLAN.md).
enum PaketId { ucretsiz, umre, aile, full }

/// Bireysel kullanıcının seçtiği paket ve kendi girdiği Mekke/Medine yolculuk bilgisi.
///
/// DEMO: Ödeme (Google Play / App Store) henüz bağlı değil. "Satın al" ödeme almadan
/// paketi bu cihazda seçili sayar. Veri `personal_plan_<uid>` anahtarında yalnız bu
/// cihazda tutulur; çıkışta ve hesap silmede temizlenir (LoginProvider._clearLocal).
/// Gerçek ödemeye geçişte paket bilgisi sunucunun yazdığı `entitlements/{uid}`'den okunur.
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
  }

  Future<void> selectPaket(PaketId p) async {
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

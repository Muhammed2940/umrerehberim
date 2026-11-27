import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

import '../../../common/services/exchange_rate_service.dart';
import '../../../l10n/gen/app_localizations.dart';
import 'personal_plan_provider.dart';

/// Paket fiyatlarının tek hesap yeri.
///
/// Kural (sahip onaylı, 2026-11-25):
/// - **TL fiyat sabittir.** Kaynak: paketler.json'un TR metni ("349,99 TL").
/// - **Döviz fiyatı sabit değildir.** EN/AR'da gösterilen tutar = TL fiyat ÷ anlık kur (1 EUR = x TL),
///   kur [ExchangeRateService]'ten (ana sayfadaki kurlarla aynı kaynak, son kur cihazda saklı).
/// - **Ödeme her zaman TL çekilir** (PayTR TL hesabı): [tlKurus]. Ekranda "€5" yazsa da çekilen 799,99 TL'dir.
///   PayTR döviz hesabı açılırsa burası yeniden ele alınır.
/// - TL olmayan fiyatlar (Full Umre "1.500 $") çevrilmez.
/// Kur hiç alınamamışsa EN/AR'da TL fiyat gösterilir (paketler.json EN/AR metni de TL'dir).
final paketFiyat = PaketFiyatProvider._();

class PaketFiyatProvider extends ChangeNotifier {
  PaketFiyatProvider._();

  /// Gösterim para birimi (EN ve AR). Web'deki `KUR.paraBirimi` ile aynı tutulmalı.
  static const dovizKodu = 'EUR';
  static const _dovizSembol = '€';

  /// 1 [dovizKodu] = x TL. Kur yoksa null.
  double? _kur;
  bool _yukleniyor = false;
  DateTime? _sonDeneme;

  double? get kur => _kur;

  /// Önce cihazdaki son kur (anında), sonra canlı kur. Ekran açılışında çağrılır;
  /// 2 dakikadan sık ağa çıkmaz. Hata fırlatmaz: kur yoksa TL gösterilir.
  Future<void> yukle() async {
    if (_yukleniyor) return;
    final simdi = DateTime.now();
    if (_kur != null && _sonDeneme != null && simdi.difference(_sonDeneme!) < const Duration(minutes: 2)) return;
    _yukleniyor = true;
    _sonDeneme = simdi;
    try {
      if (_kur == null) _ayarla(await ExchangeRateService.instance.loadCached());
      _ayarla(await ExchangeRateService.instance.fetch());
    } catch (e) {
      debugPrint('PaketFiyat: kur alınamadı: $e');
    } finally {
      _yukleniyor = false;
    }
  }

  void _ayarla(LiveRates? r) {
    if (r == null) return;
    for (final x in r.tryRates) {
      if (x.code == dovizKodu && x.value > 0) {
        if (_kur != x.value) {
          _kur = x.value;
          notifyListeners();
        }
        return;
      }
    }
  }

  /// Paketin TR fiyat metni ("349,99 TL"); dil ne olursa olsun.
  static String trMetni(PaketId id) {
    final tr = lookupAppLocalizations(const Locale('tr'));
    return switch (id) {
      PaketId.ucretsiz => tr.paketlerFreePrice,
      PaketId.umre => tr.paketlerUmrePrice,
      PaketId.aile => tr.paketlerAilePrice,
      PaketId.full => tr.paketlerFullPrice,
    };
  }

  /// "349,99 TL" / "1.500 TL" → 349.99 / 1500. TL değilse (Full "1.500 $") null.
  @visibleForTesting
  static double? tlCoz(String metin) {
    final m = RegExp(r'^([\d.]+(?:,\d+)?)\s*TL$').firstMatch(metin.trim());
    if (m == null) return null;
    return double.tryParse(m.group(1)!.replaceAll('.', '').replaceAll(',', '.'));
  }

  /// Paketin TL tutarı; TL fiyatlı değilse null.
  static double? tlTutar(PaketId id) => tlCoz(trMetni(id));

  /// PayTR'ye gidecek tutar (kuruş). TL fiyatlı değilse null.
  static int? tlKurus(PaketId id) {
    final tl = tlTutar(id);
    return tl == null ? null : (tl * 100).round();
  }

  /// Döviz karşılığı metni ("€6.31" / "6.31 €"); kur yoksa veya TL fiyatlı değilse null.
  String? dovizMetni(PaketId id, String dil) {
    final tl = tlTutar(id);
    final k = _kur;
    if (tl == null || k == null) return null;
    return bicimle(tl / k, dil);
  }

  /// EN `€6.31`, AR `6.31 €` (Latin rakam, web ile aynı), 0 → `€0`.
  @visibleForTesting
  static String bicimle(double tutar, String dil) {
    final s = tutar == 0 ? '0' : NumberFormat('#,##0.00', 'en').format(tutar);
    return dil == 'ar' ? '$s $_dovizSembol' : '$_dovizSembol$s';
  }

  /// Ekranda gösterilecek fiyat: TR'de [yerel] metin aynen; EN/AR'da anlık kurla döviz,
  /// kur yoksa [yerel] (paketler.json, TL).
  String goster(PaketId id, String dil, String yerel) {
    if (dil == 'tr') return yerel;
    return dovizMetni(id, dil) ?? yerel;
  }
}

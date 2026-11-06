import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/providers/locale_provider.dart';

/// Tek bir kur satırı: 1 [code] = [value] ([quote] cinsinden).
class LiveRate {
  final String code; // USD, EUR, GBP, SAR, TRY
  final String flag;
  final double value;

  /// Önceki kapanışa göre yüzde değişim (bilinmiyorsa null).
  final double? changePct;

  const LiveRate({required this.code, required this.flag, required this.value, this.changePct});

  /// Para biriminin seçili dildeki adı (dil değişince güncel kalır).
  String get name => switch (code) {
        'USD' => l10n.coreCurrencyUsd,
        'EUR' => l10n.coreCurrencyEur,
        'GBP' => l10n.coreCurrencyGbp,
        'SAR' => l10n.coreCurrencySar,
        'TRY' => l10n.coreCurrencyTry,
        _ => code,
      };
}

/// Türkiye (₺) ve Suudi Arabistan (﷼) piyasa kurları.
class LiveRates {
  final List<LiveRate> tryRates; // 1 döviz = x ₺
  final List<LiveRate> sarRates; // 1 döviz = x SAR
  final DateTime updatedAt;
  final String source;

  const LiveRates({required this.tryRates, required this.sarRates, required this.updatedAt, required this.source});
}

/// Canlı döviz kurları. Sunucu/anahtar gerekmez.
///
/// 1. Yahoo Finance (piyasa verisi, dakikalık): USDTRY, EURTRY, GBPTRY, USDSAR.
///    SAR/TRY Yahoo'da yok; USDTRY / USDSAR çapraz kurundan hesaplanır.
/// 2. Yedek: ExchangeRate-API açık uç noktası (günlük, USD bazlı).
/// Son başarılı sonuç SharedPreferences'ta saklanır (çevrimdışı gösterim).
class ExchangeRateService {
  ExchangeRateService._();
  static final instance = ExchangeRateService._();

  static const _cacheKey = 'cached_live_rates';
  static const _ua = {'User-Agent': 'Mozilla/5.0 (Linux; Android 14) UmreRehberim'};
  static const _timeout = Duration(seconds: 10);

  static const _flags = {
    'USD': '🇺🇸',
    'EUR': '🇪🇺',
    'GBP': '🇬🇧',
    'SAR': '🇸🇦',
    'TRY': '🇹🇷',
  };

  Future<LiveRates> fetch() async {
    LiveRates? result;
    try {
      result = await _fromYahoo();
    } catch (e) {
      debugPrint('Yahoo döviz hatası: $e');
    }
    if (result == null) {
      try {
        result = await _fromExchangeRateApi();
      } catch (e) {
        debugPrint('ExchangeRate-API hatası: $e');
      }
    }
    if (result != null) {
      unawaited(_save(result));
      return result;
    }
    final cached = await loadCached();
    if (cached != null) return cached;
    throw Exception(l10n.coreRatesFetchFailed);
  }

  // ------------------------------------------------------------------ Yahoo
  Future<(double price, double? prev, DateTime time)> _yahoo(String symbol) async {
    final uri = Uri.parse('https://query1.finance.yahoo.com/v8/finance/chart/$symbol?interval=1d&range=5d');
    final res = await http.get(uri, headers: _ua).timeout(_timeout);
    if (res.statusCode != 200) throw Exception('$symbol HTTP ${res.statusCode}');
    final meta = (jsonDecode(res.body)['chart']['result'] as List).first['meta'] as Map<String, dynamic>;
    final price = (meta['regularMarketPrice'] as num).toDouble();
    final prev = (meta['chartPreviousClose'] as num?)?.toDouble();
    final t = DateTime.fromMillisecondsSinceEpoch(((meta['regularMarketTime'] as num?) ?? 0).toInt() * 1000);
    return (price, prev, t);
  }

  Future<LiveRates> _fromYahoo() async {
    final r = await Future.wait([
      _yahoo('USDTRY=X'),
      _yahoo('EURTRY=X'),
      _yahoo('GBPTRY=X'),
      _yahoo('USDSAR=X'),
    ]);
    final (usdTry, usdTryPrev, t1) = r[0];
    final (eurTry, eurTryPrev, _) = r[1];
    final (gbpTry, gbpTryPrev, _) = r[2];
    final (usdSar, _, _) = r[3];

    double? pct(double now, double? prev) => (prev == null || prev == 0) ? null : (now - prev) / prev * 100;
    final sarTry = usdTry / usdSar;
    // Riyal dolara sabit (≈3,75) olduğundan SAR/TRY değişimi USD/TRY değişimine eşittir.
    final sarTryPct = pct(usdTry, usdTryPrev);

    return _build(
      tryValues: {'USD': usdTry, 'EUR': eurTry, 'GBP': gbpTry, 'SAR': sarTry},
      tryChanges: {'USD': pct(usdTry, usdTryPrev), 'EUR': pct(eurTry, eurTryPrev), 'GBP': pct(gbpTry, gbpTryPrev), 'SAR': sarTryPct},
      sarTry: sarTry,
      updatedAt: t1.year > 2000 ? t1 : DateTime.now(),
      source: 'Yahoo Finance',
    );
  }

  // ------------------------------------------------------------------ Yedek
  Future<LiveRates> _fromExchangeRateApi() async {
    final res = await http.get(Uri.parse('https://open.er-api.com/v6/latest/USD'), headers: _ua).timeout(_timeout);
    if (res.statusCode != 200) throw Exception('HTTP ${res.statusCode}');
    final j = jsonDecode(res.body) as Map<String, dynamic>;
    final rates = (j['rates'] as Map).map((k, v) => MapEntry(k as String, (v as num).toDouble()));
    final usdTry = rates['TRY']!, usdSar = rates['SAR']!;
    double toTry(String c) => usdTry / rates[c]!; // 1 c = ? TRY
    final sarTry = usdTry / usdSar;
    final ts = (j['time_last_update_unix'] as num?)?.toInt();
    return _build(
      tryValues: {'USD': usdTry, 'EUR': toTry('EUR'), 'GBP': toTry('GBP'), 'SAR': sarTry},
      tryChanges: const {},
      sarTry: sarTry,
      updatedAt: ts == null ? DateTime.now() : DateTime.fromMillisecondsSinceEpoch(ts * 1000),
      source: 'ExchangeRate-API (${l10n.coreRatesDaily})',
    );
  }

  // ------------------------------------------------------------------ ortak
  LiveRates _build({
    required Map<String, double> tryValues,
    required Map<String, double?> tryChanges,
    required double sarTry,
    required DateTime updatedAt,
    required String source,
  }) {
    LiveRate rate(String code, double v, double? ch) =>
        LiveRate(code: code, flag: _flags[code]!, value: v, changePct: ch);

    final tryRates = [for (final c in ['USD', 'EUR', 'GBP', 'SAR']) rate(c, tryValues[c]!, tryChanges[c])];
    // SAR karşılıkları: 1 döviz = (dövizTRY / sarTRY) SAR. TL için 100 ₺ yerine 1 ₺ gösterilir.
    final sarRates = [
      for (final c in ['USD', 'EUR', 'GBP']) rate(c, tryValues[c]! / sarTry, null),
      rate('TRY', 1 / sarTry, null),
    ];
    return LiveRates(tryRates: tryRates, sarRates: sarRates, updatedAt: updatedAt, source: source);
  }

  Future<void> _save(LiveRates r) async {
    try {
      final p = await SharedPreferences.getInstance();
      List<Map<String, dynamic>> enc(List<LiveRate> l) =>
          [for (final x in l) {'code': x.code, 'value': x.value, 'change': x.changePct}];
      await p.setString(
        _cacheKey,
        jsonEncode({
          'try': enc(r.tryRates),
          'sar': enc(r.sarRates),
          'updated': r.updatedAt.millisecondsSinceEpoch,
          'source': r.source,
        }),
      );
    } catch (e) {
      debugPrint('Döviz önbelleği yazılamadı: $e');
    }
  }

  Future<LiveRates?> loadCached() async {
    try {
      final p = await SharedPreferences.getInstance();
      final s = p.getString(_cacheKey);
      if (s == null) return null;
      final j = jsonDecode(s) as Map<String, dynamic>;
      List<LiveRate> dec(List l) => [
            for (final x in l.cast<Map<String, dynamic>>())
              LiveRate(
                code: x['code'] as String,
                flag: _flags[x['code']]!,
                value: (x['value'] as num).toDouble(),
                changePct: (x['change'] as num?)?.toDouble(),
              ),
          ];
      return LiveRates(
        tryRates: dec(j['try'] as List),
        sarRates: dec(j['sar'] as List),
        updatedAt: DateTime.fromMillisecondsSinceEpoch(j['updated'] as int),
        source: '${j['source']} • ${l10n.coreRatesCached}',
      );
    } catch (_) {
      return null;
    }
  }
}

import 'dart:math' as math;

/// Tek bir konum ölçümü (ham ya da filtrelenmiş).
class LocationFix {
  const LocationFix({required this.lat, required this.lng, required this.accuracy, required this.time});

  final double lat;
  final double lng;

  /// Metre (yaklaşık %68 güven yarıçapı).
  final double accuracy;
  final DateTime time;
}

/// Konum sapmasını azaltan filtre (arka plan konum servisi kullanır).
///
/// Sorunlar ve çözümler:
/// - Telefon GPS bulamadığında (Harem içi, yüksek binalar) ±100–400 m'lik ağ/Wi-Fi
///   tahminleri döner. Yakın zamanda iyi bir konum varken bunlar ATILIR.
/// - Binalardan yansıyan GPS sinyali tek tek ölçümlerde 50–100 m'lik sıçramalar yapar.
///   İnsanın yapamayacağı hızda bir sıçrama (iki doğruluk payı düşüldükten sonra)
///   aykırı değer sayılıp atılır.
/// - Kalan ölçümler basit bir Kalman filtresiyle birleştirilir: durunca titreşim
///   söner, gerçekten yürüyünce/araçla gidince konum hızla yeni yere geçer.
class LocationFilter {
  LocationFilter({
    this.maxAccuracy = 100,
    this.goodFixLifetime = const Duration(minutes: 10),
    this.maxSpeed = 40,
    this.processNoise = 0.7,
    this.minAccuracy = 5,
  });

  /// Bundan kötü ölçüm, elde [goodFixLifetime] içinde iyi bir tahmin varken atılır.
  final double maxAccuracy;
  final Duration goodFixLifetime;

  /// m/sn. 40 m/sn ≈ 144 km/sa (Mekke–Medine otobüsü ve tren dahil).
  final double maxSpeed;

  /// Kalman süreç gürültüsü (m/sn). Düşük tutulur (durunca titreşim sönsün);
  /// gerçek hareket ayrıca algılanıp tahmin yeni konuma taşınır.
  final double processNoise;

  /// Filtrenin bildireceği en küçük doğruluk payı (aşırı iyimser olmasın).
  final double minAccuracy;

  LocationFix? _estimate;

  /// Son filtrelenmiş tahmin.
  LocationFix? get estimate => _estimate;

  void reset() => _estimate = null;

  /// Ham ölçümü işler. Kabul edilirse yeni tahmini, atılırsa null döner.
  LocationFix? add(LocationFix raw) {
    if (!raw.lat.isFinite || !raw.lng.isFinite || !raw.accuracy.isFinite || raw.accuracy <= 0) return null;
    if (raw.lat.abs() < 1e-6 && raw.lng.abs() < 1e-6) return null; // (0,0) boş ölçüm

    final est = _estimate;
    if (est == null) return _estimate = _clampAcc(raw);

    final age = raw.time.difference(est.time);
    // Eski ya da aynı ölçüm tekrar gelirse tahmini bozmasın.
    if (age <= Duration.zero) return null;

    final estIsGood = est.accuracy <= maxAccuracy;
    final estIsFresh = age <= goodFixLifetime;

    // 1) Kaba ağ tahmini, elde taze ve iyi bir konum varken atılır.
    if (raw.accuracy > maxAccuracy && estIsGood && estIsFresh) return null;

    final dt = math.max(age.inMilliseconds / 1000.0, 1.0);
    final dist = distanceMeters(est.lat, est.lng, raw.lat, raw.lng);

    // 2) İmkânsız hızda sıçrama (doğruluk payları düşüldükten sonra) aykırı değerdir.
    final unexplained = dist - raw.accuracy - est.accuracy;
    if (estIsFresh && unexplained > maxSpeed * dt) return null;

    // 3) Kalman: tahminin belirsizliği geçen sürede büyür, ölçümle birleşir.
    final drift = processNoise * dt;
    final varEst = est.accuracy * est.accuracy + drift * drift;
    final varRaw = raw.accuracy * raw.accuracy;
    var k = varEst / (varEst + varRaw);
    // Ölçüm, iki doğruluk dairesinin de dışındaysa kişi gerçekten yer değiştirmiştir:
    // tahmin geride kalmasın, büyük ölçüde yeni konuma geçilir.
    if (dist > 1.5 * (raw.accuracy + est.accuracy)) k = math.max(k, 0.85);
    final lat = est.lat + k * (raw.lat - est.lat);
    final lng = est.lng + k * (raw.lng - est.lng);
    final acc = math.sqrt((1 - k) * varEst);
    return _estimate = _clampAcc(LocationFix(lat: lat, lng: lng, accuracy: acc, time: raw.time));
  }

  LocationFix _clampAcc(LocationFix f) => f.accuracy >= minAccuracy
      ? f
      : LocationFix(lat: f.lat, lng: f.lng, accuracy: minAccuracy, time: f.time);

  /// Haversine, metre.
  static double distanceMeters(double lat1, double lng1, double lat2, double lng2) {
    const r = 6371000.0;
    final p1 = lat1 * math.pi / 180, p2 = lat2 * math.pi / 180;
    final dp = (lat2 - lat1) * math.pi / 180, dl = (lng2 - lng1) * math.pi / 180;
    final a = math.sin(dp / 2) * math.sin(dp / 2) + math.cos(p1) * math.cos(p2) * math.sin(dl / 2) * math.sin(dl / 2);
    return 2 * r * math.asin(math.min(1, math.sqrt(a)));
  }
}

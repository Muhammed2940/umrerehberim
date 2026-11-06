import 'dart:math' as math;

import 'package:latlong2/latlong.dart';

import '../../../core/providers/locale_provider.dart';

/// Kıble hesapları (saf Dart, test edilebilir).
class KibleUtils {
  KibleUtils._();

  static const double kabeLat = 21.422487;
  static const double kabeLng = 39.826206;
  static const LatLng kabe = LatLng(kabeLat, kabeLng);

  /// Kıble toleransı (derece). Bu aralıkta "Kıble yönündesiniz".
  static const double tolerance = 5;

  static double _rad(double d) => d * math.pi / 180;
  static double _deg(double r) => r * 180 / math.pi;

  /// Büyük daire başlangıç açısı (initial bearing), gerçek kuzeye göre 0-360°.
  static double bearing(double lat1, double lng1, double lat2, double lng2) {
    final p1 = _rad(lat1), p2 = _rad(lat2);
    final dl = _rad(lng2 - lng1);
    final y = math.sin(dl) * math.cos(p2);
    final x = math.cos(p1) * math.sin(p2) - math.sin(p1) * math.cos(p2) * math.cos(dl);
    return normalize(_deg(math.atan2(y, x)));
  }

  /// Bulunulan konumdan Kâbe'ye kıble açısı.
  static double qibla(double lat, double lng) => bearing(lat, lng, kabeLat, kabeLng);

  /// 0-360 aralığına getirir.
  static double normalize(double d) {
    final v = d % 360;
    return v < 0 ? v + 360 : v;
  }

  /// İki açı arasındaki işaretli en kısa fark (-180, 180].
  static double shortestDelta(double from, double to) {
    var d = (to - from) % 360;
    if (d > 180) d -= 360;
    if (d <= -180) d += 360;
    return d;
  }

  /// 8 yönden hangisi (0 Kuzey, 1 Kuzey Doğu … 7 Kuzey Batı).
  static int directionIndex(double deg) => ((normalize(deg) + 22.5) ~/ 45) % 8;

  /// 8 yön adı, seçili dilde.
  static String directionName(double deg) {
    final l = l10n;
    return [
      l.kibleDirN,
      l.kibleDirNE,
      l.kibleDirE,
      l.kibleDirSE,
      l.kibleDirS,
      l.kibleDirSW,
      l.kibleDirW,
      l.kibleDirNW,
    ][directionIndex(deg)];
  }

  /// Büyük daire rotası üzerinde [segments]+1 nokta (harita çizgisi için).
  static List<LatLng> greatCircle(LatLng a, LatLng b, {int segments = 64}) {
    final p1 = _rad(a.latitude), l1 = _rad(a.longitude);
    final p2 = _rad(b.latitude), l2 = _rad(b.longitude);
    final d = 2 *
        math.asin(math.sqrt(math.pow(math.sin((p2 - p1) / 2), 2) +
            math.cos(p1) * math.cos(p2) * math.pow(math.sin((l2 - l1) / 2), 2)));
    if (d < 1e-9) return [a, b];
    final pts = <LatLng>[];
    for (var i = 0; i <= segments; i++) {
      final f = i / segments;
      final fa = math.sin((1 - f) * d) / math.sin(d);
      final fb = math.sin(f * d) / math.sin(d);
      final x = fa * math.cos(p1) * math.cos(l1) + fb * math.cos(p2) * math.cos(l2);
      final y = fa * math.cos(p1) * math.sin(l1) + fb * math.cos(p2) * math.sin(l2);
      final z = fa * math.sin(p1) + fb * math.sin(p2);
      pts.add(LatLng(_deg(math.atan2(z, math.sqrt(x * x + y * y))), _deg(math.atan2(y, x))));
    }
    return pts;
  }

  /// Örnek kontrol: İstanbul (41.0082, 28.9784) için kıble ~151-152° olmalı.
  /// Debug modda ekran açılırken `assert` ile çalıştırılır.
  static bool selfCheck() {
    final ist = qibla(41.0082, 28.9784);
    return ist > 151 && ist < 152.5 && directionIndex(ist) == 3; // Güney Doğu
  }
}

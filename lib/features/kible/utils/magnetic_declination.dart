import 'dart:math' as math;

/// Manyetik sapma (declination) hesabı.
///
/// `flutter_compass` Android'de `TYPE_ROTATION_VECTOR` sensöründen gelen
/// azimutu doğrudan verir; bu **manyetik kuzeye** göredir (paket
/// `GeomagneticField` kullanmıyor). iOS'ta ise `CLHeading.trueHeading`
/// kullanıldığı için **gerçek kuzeye** göredir. Bu yüzden yalnız Android'de
/// buradaki sapma eklenir.
///
/// Model: IGRF-13 ana alan katsayıları (2020.0), derece 1-8, derece 1-4 için
/// yıllık değişim. Kıble için ±1° düzeyinde yeterli.
class MagneticDeclination {
  MagneticDeclination._();

  static const double _epoch = 2020.0;
  static const double _a = 6371.2; // referans yarıçap (km)

  // [n, m, g, h, gDot, hDot]
  static const List<List<double>> _coef = [
    [1, 0, -29404.8, 0.0, 5.7, 0.0],
    [1, 1, -1450.9, 4652.5, 7.4, -25.9],
    [2, 0, -2499.6, 0.0, -11.0, 0.0],
    [2, 1, 2982.0, -2991.6, -7.0, -30.2],
    [2, 2, 1677.0, -734.6, -2.1, -22.4],
    [3, 0, 1363.2, 0.0, 2.2, 0.0],
    [3, 1, -2381.2, -82.1, -5.9, 6.0],
    [3, 2, 1236.2, 241.9, 3.1, -1.1],
    [3, 3, 525.7, -543.4, -12.0, 0.5],
    [4, 0, 903.0, 0.0, -1.2, 0.0],
    [4, 1, 809.5, 281.9, -1.6, -0.1],
    [4, 2, 86.3, -158.4, -5.9, 6.5],
    [4, 3, -309.4, 199.7, 5.2, 3.6],
    [4, 4, 48.0, -349.7, -5.1, -5.0],
    [5, 0, -234.3, 0.0, 0, 0],
    [5, 1, 363.2, 47.7, 0, 0],
    [5, 2, 187.8, 208.3, 0, 0],
    [5, 3, -140.7, -121.2, 0, 0],
    [5, 4, -151.2, 32.3, 0, 0],
    [5, 5, 13.5, 98.9, 0, 0],
    [6, 0, 66.0, 0.0, 0, 0],
    [6, 1, 65.5, -19.1, 0, 0],
    [6, 2, 72.9, 25.1, 0, 0],
    [6, 3, -121.5, 52.8, 0, 0],
    [6, 4, -36.2, -64.5, 0, 0],
    [6, 5, 13.5, 8.9, 0, 0],
    [6, 6, -64.7, 68.1, 0, 0],
    [7, 0, 80.6, 0.0, 0, 0],
    [7, 1, -76.7, -51.5, 0, 0],
    [7, 2, -8.2, -16.9, 0, 0],
    [7, 3, 56.5, 2.2, 0, 0],
    [7, 4, 15.8, 23.5, 0, 0],
    [7, 5, 6.4, -2.2, 0, 0],
    [7, 6, -7.2, -27.2, 0, 0],
    [7, 7, 9.8, -1.8, 0, 0],
    [8, 0, 23.7, 0.0, 0, 0],
    [8, 1, 9.7, 8.4, 0, 0],
    [8, 2, -17.6, -15.3, 0, 0],
    [8, 3, -0.5, 12.8, 0, 0],
    [8, 4, -21.1, -11.7, 0, 0],
    [8, 5, 15.3, 14.9, 0, 0],
    [8, 6, 13.7, 3.6, 0, 0],
    [8, 7, -16.5, -6.9, 0, 0],
    [8, 8, -0.3, 2.8, 0, 0],
  ];

  static const int _maxN = 8;

  /// Doğu pozitif, derece. [date] verilmezse bugünün tarihi.
  static double of(double latDeg, double lonDeg, {DateTime? date}) {
    final d = date ?? DateTime.now();
    final t = (d.year + (d.month - 1) / 12.0) - _epoch;

    // Jeodezik -> jeosentrik (WGS84, deniz seviyesi).
    const aE = 6378.137, bE = 6356.7523142;
    final phi = latDeg * math.pi / 180;
    final lam = lonDeg * math.pi / 180;
    final sinPhi = math.sin(phi), cosPhi = math.cos(phi);
    final rho = math.sqrt(aE * aE * cosPhi * cosPhi + bE * bE * sinPhi * sinPhi);
    final z = sinPhi * bE * bE / rho;
    final p = cosPhi * aE * aE / rho;
    final r = math.sqrt(p * p + z * z);
    final phiC = math.asin(z / r);

    // Kutupta tanımsız; çok yakınsa biraz kaydır.
    var theta = math.pi / 2 - phiC;
    theta = theta.clamp(1e-6, math.pi - 1e-6);
    final ct = math.cos(theta), st = math.sin(theta);

    // Schmidt yarı normalize Legendre fonksiyonları ve türevleri.
    final pnm = List.generate(_maxN + 1, (_) => List<double>.filled(_maxN + 1, 0));
    final dp = List.generate(_maxN + 1, (_) => List<double>.filled(_maxN + 1, 0));
    pnm[0][0] = 1;
    for (var n = 1; n <= _maxN; n++) {
      if (n == 1) {
        pnm[1][1] = st;
        dp[1][1] = ct;
      } else {
        final k = math.sqrt((2 * n - 1) / (2 * n));
        pnm[n][n] = k * st * pnm[n - 1][n - 1];
        dp[n][n] = k * (st * dp[n - 1][n - 1] + ct * pnm[n - 1][n - 1]);
      }
      for (var m = 0; m < n; m++) {
        final den = math.sqrt((n * n - m * m).toDouble());
        final k2 = n >= 2 ? math.sqrt(((n - 1) * (n - 1) - m * m).toDouble()) : 0.0;
        final p2 = n >= 2 ? pnm[n - 2][m] : 0.0;
        final d2 = n >= 2 ? dp[n - 2][m] : 0.0;
        pnm[n][m] = ((2 * n - 1) * ct * pnm[n - 1][m] - k2 * p2) / den;
        dp[n][m] = ((2 * n - 1) * (ct * dp[n - 1][m] - st * pnm[n - 1][m]) - k2 * d2) / den;
      }
    }

    double x = 0, y = 0, zz = 0;
    for (final c in _coef) {
      final n = c[0].toInt(), m = c[1].toInt();
      final g = c[2] + c[4] * t;
      final h = c[3] + c[5] * t;
      final f = math.pow(_a / r, n + 2).toDouble();
      final cm = math.cos(m * lam), sm = math.sin(m * lam);
      x += f * (g * cm + h * sm) * dp[n][m];
      y += f * m * (g * sm - h * cm) * pnm[n][m] / st;
      zz -= f * (n + 1) * (g * cm + h * sm) * pnm[n][m];
    }

    // Jeosentrik -> jeodezik eksen döndürme.
    final psi = phi - phiC;
    final xGeod = x * math.cos(psi) + zz * math.sin(psi);
    final dec = math.atan2(y, xGeod) * 180 / math.pi;
    return dec.isFinite ? dec : 0;
  }
}

/// Esnaf paneli ve sadakat programı ayarları.
///
/// İleride acente bazlı ayara (Firestore `agencies/{id}.loyalty`) taşınabilir;
/// şimdilik tüm acenteler için sabit.
class EsnafConfig {
  EsnafConfig._();

  /// Misafirin QR kodunun geçerlilik süresi. Kod bu süre dolunca yenilenir.
  /// Güvenlik kuralları 3 dakikadan eski kodla işlem açılmasına izin vermez.
  static const tokenTtl = Duration(minutes: 2);

  /// QR içeriğinin ön eki: `UMRE1:<tokenId>`.
  static const qrPrefix = 'UMRE1:';

  /// Tek işlemde girilebilecek en yüksek tutar (SAR). Kurallarda da aynı sınır var.
  static const maxAmountSar = 20000.0;

  /// Her 1 SAR net harcama için kazanılan puan.
  static const pointsPerSar = 1;

  /// 1 puanın riyal değeri (100 puan = 5 SAR).
  static const pointValueSar = 0.05;

  /// Esnafın hatalı işlemi iptal edebileceği süre.
  static const cancelWindow = Duration(hours: 24);

  /// Esnaf girişi: kod + PIN → Firebase Auth e-posta/şifre.
  static String merchantEmail(String code) => 'esnaf_${code.trim().toLowerCase()}@umrerehberim.app';

  /// PIN en az 6 hane (Firebase şifre alt sınırı).
  static String merchantPassword(String pin) => 'esnaf-${pin.trim()}';

  static int pointsFor(double netSar) => (netSar * pointsPerSar).floor();

  static double pointsToSar(int points) => points * pointValueSar;

  /// `UMRE1:abc…` → `abc…`; tanınmayan içerik için null.
  static String? parseQr(String raw) {
    final s = raw.trim();
    if (!s.startsWith(qrPrefix)) return null;
    final id = s.substring(qrPrefix.length).trim();
    return RegExp(r'^[A-Za-z0-9]{15,40}$').hasMatch(id) ? id : null;
  }
}

/// Ödeme türleri. Uygulama parayı TAHSİL ETMEZ; esnaf kendi kasasında/POS'unda
/// aldığı ödemenin türünü kaydeder.
class PaymentMethod {
  PaymentMethod._();
  static const cash = 'nakit';
  static const card = 'kart';
  static const points = 'puan';
  static const all = [cash, card, points];
}

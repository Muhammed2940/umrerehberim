import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../../info_screen/data/l10n_text.dart';

/// Tavaf sırasında bir şavt içindeki bölgeler.
///
/// [oran] şavtın 0-1 arası ilerlemesidir (0 = Hacerü'l-Esved hizası).
enum TavafBolgesi {
  hacerulEsved(L10nText(
      tr: 'Hacerü\'l-Esved hizası', en: 'In line with the Black Stone (Hajar al-Aswad)', ar: 'محاذاة الحجر الأسود')),
  multezem(L10nText(
      tr: 'Mültezem ve Kâbe kapısı önü', en: 'Al-Multazam and the Kaaba door', ar: 'الملتزم وأمام باب الكعبة')),
  irakiKose(L10nText(tr: 'Rükn-i Irâkî', en: 'Rukn al-Iraqi', ar: 'الركن العراقي')),
  hatim(L10nText(
      tr: 'Hatim\'in (Hicr-i İsmail) dışından', en: 'Outside the Hatim (Hijr Ismail)', ar: 'من وراء الحطيم (حجر إسماعيل)')),
  samiKose(L10nText(tr: 'Rükn-i Şâmî', en: 'Rukn al-Shami', ar: 'الركن الشامي')),
  yemaniyeDogru(L10nText(tr: 'Rükn-i Yemânî\'ye doğru', en: 'Towards Rukn al-Yamani', ar: 'نحو الركن اليماني')),
  rabbena(L10nText(
      tr: 'Rükn-i Yemânî ile Hacerü\'l-Esved arası',
      en: 'Between Rukn al-Yamani and the Black Stone',
      ar: 'بين الركن اليماني والحجر الأسود'));

  const TavafBolgesi(this.ad);
  final L10nText ad;

  static TavafBolgesi of(double oran) {
    if (oran < 0.03 || oran > 0.985) return hacerulEsved;
    if (oran < 0.17) return multezem;
    if (oran < 0.29) return irakiKose;
    if (oran < 0.46) return hatim;
    if (oran < 0.56) return samiKose;
    if (oran < 0.75) return yemaniyeDogru;
    return rabbena;
  }
}

/// Kuşbakışı Kâbe ve metaf.
///
/// Ekran yerleşimi (kullanıcı Makam-ı İbrahim tarafından Kâbe kapısına bakıyormuş gibi):
/// - Alt yüz: kapının bulunduğu kuzeydoğu yüzü.
/// - Sol alt köşe: Hacerü'l-Esved (doğu / güneydoğu köşesi).
/// - Sağ alt köşe: Rükn-i Irâkî (kuzey), sağ üst: Rükn-i Şâmî (batı), sol üst: Rükn-i Yemânî (güney).
/// - Sağ yüz (kuzeybatı): Hatim yarım dairesi. Kapının önünde Makam-ı İbrahim.
/// Bu yerleşimde kuzey ekranın sağ altına düşer; pusula buna göre çizilir.
/// Hacı, Kâbe'yi soluna alarak saat yönünün tersine döner.
///
/// Çizim yönle ilgilidir: Arapça (sağdan sola) arayüzde de AYNA ÇEVRİLMEZ.
/// Yalnız etiket metinleri [dil] koduna göre seçilir.
class KabePainter extends CustomPainter {
  KabePainter({required this.ilerleme, required this.calisiyor, this.dil = 'tr'});

  /// 0-7 arası toplam ilerleme (ör. 2.5 = 3. şavtın yarısı).
  final double ilerleme;
  final bool calisiyor;

  /// Etiket dili ('tr', 'en', 'ar').
  final String dil;

  static const _eKabe = L10nText(tr: 'KÂBE', en: 'KAABA', ar: 'الكعبة');
  static const _eHacer = L10nText(tr: 'Hacerü\'l-Esved', en: 'Black Stone', ar: 'الحجر الأسود');
  static const _eYemani = L10nText(tr: 'Rükn-i Yemânî', en: 'Rukn al-Yamani', ar: 'الركن اليماني');
  static const _eIraki = L10nText(tr: 'Rükn-i Irâkî', en: 'Rukn al-Iraqi', ar: 'الركن العراقي');
  static const _eSami = L10nText(tr: 'Rükn-i Şâmî', en: 'Rukn al-Shami', ar: 'الركن الشامي');
  static const _eHatim = L10nText(tr: 'Hatim', en: 'Hatim', ar: 'الحطيم');
  static const _eKapi = L10nText(tr: 'Kapı', en: 'Door', ar: 'الباب');
  static const _eMakam = L10nText(tr: 'Makam-ı İbrahim', en: 'Maqam Ibrahim', ar: 'مقام إبراهيم');
  static const _eRabbena = L10nText(tr: 'Rabbenâ âtinâ…', en: 'Rabbana atina…', ar: 'ربنا آتنا…');
  static const _eKuzey = L10nText(tr: 'K', en: 'N', ar: 'ش');

  static const _baslangicAci = 225.0; // derece, matematik yönü (y yukarı, saat tersi)

  /// Tur yarıçapının Kâbe kenarına oranı.
  static const yolOrani = 1.38;

  /// Verilen ilerleme için hacının ekran konumu.
  static Offset haciKonumu(Offset merkez, double kenar, double ilerleme) {
    final aci = (_baslangicAci + ilerleme * 360) * math.pi / 180;
    final r = kenar * yolOrani;
    return merkez + Offset(r * math.cos(aci), -r * math.sin(aci));
  }

  @override
  void paint(Canvas canvas, Size size) {
    final boyut = math.min(size.width, size.height);
    final c = Offset(size.width / 2, size.height / 2);
    final s = boyut * 0.24; // Kâbe kenarı
    final r = s * yolOrani;
    final yarim = s / 2;

    // --- Metaf zemini
    canvas.drawCircle(c, boyut * 0.49, Paint()..color = AppColors.mint.withValues(alpha: 0.55));
    canvas.drawCircle(
      c,
      boyut * 0.49,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.5
        ..color = AppColors.sage.withValues(alpha: 0.6),
    );

    // --- Rabbenâ bölgesi (Yemânî → Hacerü'l-Esved), yol üzerinde vurgulu yay
    final yolRect = Rect.fromCircle(center: c, radius: r);
    canvas.drawArc(
      yolRect,
      -225 * math.pi / 180, // ekran açısı: matematik 225° (y aşağı olduğu için eksi)
      90 * math.pi / 180,
      false,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = s * 0.22
        ..strokeCap = StrokeCap.round
        ..color = AppColors.sage.withValues(alpha: 0.45),
    );

    // --- Tavaf yolu (kesikli daire)
    final yolBoya = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..color = AppColors.primary.withValues(alpha: 0.45);
    const parca = 48;
    for (var i = 0; i < parca; i += 2) {
      canvas.drawArc(yolRect, i * 2 * math.pi / parca, 2 * math.pi / parca, false, yolBoya);
    }

    // --- Yön okları (saat yönünün tersi)
    final okBoya = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.2
      ..strokeCap = StrokeCap.round
      ..color = AppColors.primary.withValues(alpha: 0.7);
    for (final derece in [292.5, 22.5, 112.5, 157.5]) {
      final a = derece * math.pi / 180;
      final p = c + Offset(r * math.cos(a), -r * math.sin(a));
      // Saat tersi teğet yönü (ekran koordinatında)
      final t = Offset(-math.sin(a), -math.cos(a));
      final n = Offset(t.dy, -t.dx);
      final uc = p + t * 6;
      canvas.drawLine(uc, uc - t * 8 + n * 5, okBoya);
      canvas.drawLine(uc, uc - t * 8 - n * 5, okBoya);
    }

    // --- Hacerü'l-Esved hiza çizgisi (köşeden dışarı)
    final heKose = c + Offset(-yarim, yarim);
    final hizaYon = Offset(-1, 1) / math.sqrt2;
    _kesikliCizgi(
      canvas,
      heKose,
      heKose + hizaYon * (r - s * 0.7 + s * 0.35),
      Paint()
        ..strokeWidth = 2.5
        ..color = AppColors.warning,
    );

    // --- Hatim (Hicr-i İsmail): sağ yüzde yarım daire
    final hatimRect = Rect.fromCenter(center: c + Offset(yarim, 0), width: s * 1.25, height: s * 0.92);
    final hatimYol = Path()
      ..addArc(hatimRect, -math.pi / 2, math.pi)
      ..close();
    canvas.drawPath(hatimYol, Paint()..color = AppColors.surface);
    canvas.drawArc(
      hatimRect,
      -math.pi / 2,
      math.pi,
      false,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = s * 0.06
        ..color = AppColors.sage,
    );

    // --- Kâbe
    final kabeRect = Rect.fromCenter(center: c, width: s, height: s);
    canvas.drawRRect(
      RRect.fromRectAndRadius(kabeRect.shift(const Offset(0, 3)), const Radius.circular(3)),
      Paint()
        ..color = AppColors.emerald900.withValues(alpha: 0.25)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4),
    );
    canvas.drawRRect(RRect.fromRectAndRadius(kabeRect, const Radius.circular(3)), Paint()..color = AppColors.emerald900);
    // Kuşak (hizam)
    canvas.drawRect(
      kabeRect.deflate(s * 0.1),
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = s * 0.04
        ..color = AppColors.sage.withValues(alpha: 0.8),
    );
    // Kapı: alt yüzde, Hacerü'l-Esved'e yakın
    final kapi = Rect.fromLTWH(c.dx - yarim + s * 0.2, c.dy + yarim - s * 0.07, s * 0.17, s * 0.07);
    canvas.drawRect(kapi, Paint()..color = AppColors.sage);

    // Köşe işaretleri
    canvas.drawCircle(heKose, s * 0.075, Paint()..color = AppColors.warning);
    canvas.drawCircle(
      heKose,
      s * 0.075,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2
        ..color = AppColors.surface,
    );
    final yemaniKose = c + Offset(-yarim, -yarim);
    canvas.drawCircle(yemaniKose, s * 0.06, Paint()..color = AppColors.sage);
    canvas.drawCircle(
      yemaniKose,
      s * 0.06,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2
        ..color = AppColors.surface,
    );

    // --- Makam-ı İbrahim (kapının önünde)
    final makam = Offset(kapi.center.dx + s * 0.08, c.dy + yarim + s * 0.42);
    canvas.drawCircle(makam, s * 0.09, Paint()..color = AppColors.emerald700);
    canvas.drawCircle(makam, s * 0.05, Paint()..color = AppColors.sage);

    // --- Etiketler
    final etiketBoyu = (boyut / 34).clamp(9.0, 13.0);
    _yazi(canvas, _eKabe.forCode(dil), c, renk: AppColors.mint, boyut: etiketBoyu + 1, kalin: true);
    _yazi(canvas, _eHacer.forCode(dil), heKose + Offset(-s * 0.15, s * 0.28), renk: AppColors.warning, boyut: etiketBoyu, kalin: true, hiza: TextAlign.right);
    _yazi(canvas, _eYemani.forCode(dil), yemaniKose + Offset(-s * 0.1, -s * 0.22), boyut: etiketBoyu, hiza: TextAlign.right);
    _yazi(canvas, _eIraki.forCode(dil), c + Offset(yarim + s * 0.1, yarim + s * 0.2), boyut: etiketBoyu * 0.9, hiza: TextAlign.left);
    _yazi(canvas, _eSami.forCode(dil), c + Offset(yarim + s * 0.1, -yarim - s * 0.2), boyut: etiketBoyu * 0.9, hiza: TextAlign.left);
    _yazi(canvas, _eHatim.forCode(dil), c + Offset(yarim + s * 0.32, 0), boyut: etiketBoyu * 0.95, kalin: true, renk: AppColors.primary);
    _yazi(canvas, _eKapi.forCode(dil), Offset(kapi.center.dx, kapi.top - s * 0.1), renk: AppColors.mint, boyut: etiketBoyu * 0.8);
    _yazi(canvas, _eMakam.forCode(dil), makam + Offset(0, s * 0.2), boyut: etiketBoyu * 0.9);
    _yazi(canvas, _eRabbena.forCode(dil), c + Offset(-r - s * 0.02, s * 0.05), boyut: etiketBoyu * 0.85, renk: AppColors.primary, kalin: true, aci: -math.pi / 2);

    // --- Pusula (kuzey ekranın sağ altına bakar)
    _pusula(canvas, Offset(size.width - boyut * 0.08, boyut * 0.08), boyut * 0.05, etiketBoyu);

    // --- Bu şavtta yürünen iz
    final oran = ilerleme >= 7 ? 1.0 : ilerleme - ilerleme.floor();
    if (ilerleme > 0 && oran > 0) {
      canvas.drawArc(
        yolRect,
        -_baslangicAci * math.pi / 180,
        -oran * 2 * math.pi,
        false,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4
          ..strokeCap = StrokeCap.round
          ..color = AppColors.primary,
      );
    }

    // --- Hacı
    final h = haciKonumu(c, s, ilerleme);
    canvas.drawCircle(h, s * 0.16, Paint()..color = AppColors.primary.withValues(alpha: calisiyor ? 0.22 : 0.12));
    canvas.drawCircle(h, s * 0.09, Paint()..color = AppColors.primary);
    canvas.drawCircle(
      h,
      s * 0.09,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.5
        ..color = AppColors.surface,
    );
  }

  void _pusula(Canvas canvas, Offset m, double r, double yaziBoyu) {
    canvas.drawCircle(m, r * 1.35, Paint()..color = AppColors.surface);
    canvas.drawCircle(
      m,
      r * 1.35,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1
        ..color = AppColors.divider,
    );
    const yon = Offset(math.sqrt1_2, math.sqrt1_2); // sağ alt = kuzey
    final n = Offset(-yon.dy, yon.dx);
    final ok = Path()
      ..moveTo(m.dx + yon.dx * r, m.dy + yon.dy * r)
      ..lineTo(m.dx + n.dx * r * 0.35, m.dy + n.dy * r * 0.35)
      ..lineTo(m.dx - n.dx * r * 0.35, m.dy - n.dy * r * 0.35)
      ..close();
    canvas.drawPath(ok, Paint()..color = AppColors.warning);
    _yazi(canvas, _eKuzey.forCode(dil), m - yon * r * 0.55, boyut: yaziBoyu * 0.8, kalin: true);
  }

  void _kesikliCizgi(Canvas canvas, Offset a, Offset b, Paint p) {
    final d = b - a;
    final uzunluk = d.distance;
    if (uzunluk == 0) return;
    final yon = d / uzunluk;
    for (var t = 0.0; t < uzunluk; t += 8) {
      canvas.drawLine(a + yon * t, a + yon * math.min(t + 4.5, uzunluk), p);
    }
  }

  void _yazi(
    Canvas canvas,
    String metin,
    Offset merkez, {
    Color renk = AppColors.text,
    double boyut = 11,
    bool kalin = false,
    TextAlign hiza = TextAlign.center,
    double aci = 0,
  }) {
    final tp = TextPainter(
      text: TextSpan(
        text: metin,
        style: TextStyle(color: renk, fontSize: boyut, fontWeight: kalin ? FontWeight.w700 : FontWeight.w500),
      ),
      textAlign: hiza,
      // Konum hizası elle hesaplanır (aşağıda); metnin kendi yönü dile göre.
      textDirection: dil == 'ar' ? TextDirection.rtl : TextDirection.ltr,
    )..layout();
    canvas.save();
    canvas.translate(merkez.dx, merkez.dy);
    if (aci != 0) canvas.rotate(aci);
    final dx = switch (hiza) {
      TextAlign.right => -tp.width,
      TextAlign.left => 0.0,
      _ => -tp.width / 2,
    };
    tp.paint(canvas, Offset(dx, -tp.height / 2));
    canvas.restore();
  }

  @override
  bool shouldRepaint(KabePainter old) => old.ilerleme != ilerleme || old.calisiyor != calisiyor || old.dil != dil;
}

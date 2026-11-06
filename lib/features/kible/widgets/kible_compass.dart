import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../utils/kible_utils.dart';

/// Büyük pusula: kadran telefonun yönüne göre döner, kıble rozeti kadranın
/// kenarında, ibre kıbleyi gösterir. Açılar gerçek kuzeye göre.
/// Çağıran taraf `Directionality(ltr)` ile sarar: çizim aynalanmamalı.
class KibleCompass extends StatefulWidget {
  const KibleCompass({
    super.key,
    required this.size,
    required this.heading,
    required this.qibla,
    required this.aligned,
  });

  final double size;
  final double heading;
  final double? qibla;
  final bool aligned;

  @override
  State<KibleCompass> createState() => _KibleCompassState();
}

class _KibleCompassState extends State<KibleCompass> {
  /// Sürekli (sarılmamış) açı: 359° -> 0° geçişinde geri dönmesin diye
  /// her seferinde en kısa farkı ekleriz.
  late double _unwrapped = widget.heading;

  @override
  void didUpdateWidget(covariant KibleCompass old) {
    super.didUpdateWidget(old);
    final current = KibleUtils.normalize(_unwrapped);
    _unwrapped += KibleUtils.shortestDelta(current, widget.heading);
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.size;
    final turns = -_unwrapped / 360;
    const dur = Duration(milliseconds: 280);
    const curve = Curves.easeOut;
    final badge = s * 0.17;
    final q = widget.qibla;
    final glow = widget.aligned;

    return SizedBox(
      width: s,
      height: s + 18,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          // Kabartmalı dış halka (sabit).
          Positioned(
            top: 18,
            child: Container(
              width: s,
              height: s,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.white, AppColors.primaryLight],
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primaryDark.withValues(alpha: 0.22),
                    blurRadius: 24,
                    offset: const Offset(8, 10),
                  ),
                  const BoxShadow(color: Colors.white, blurRadius: 18, offset: Offset(-8, -8)),
                  if (glow)
                    BoxShadow(color: AppColors.success.withValues(alpha: 0.45), blurRadius: 30, spreadRadius: 2),
                ],
              ),
            ),
          ),
          // Dönen kadran.
          Positioned(
            top: 18,
            child: AnimatedRotation(
              turns: turns,
              duration: dur,
              curve: curve,
              child: SizedBox(
                width: s,
                height: s,
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(s, s),
                      painter: _DialPainter(
                        qibla: q,
                        aligned: glow,
                        letters: [
                          context.l10n.kibleCompassN,
                          context.l10n.kibleCompassE,
                          context.l10n.kibleCompassS,
                          context.l10n.kibleCompassW,
                        ],
                      ),
                    ),
                    if (q != null) ..._badge(s, badge, q, turns, dur, curve, glow),
                  ],
                ),
              ),
            ),
          ),
          // Telefonun baktığı yön (sabit üst işaret).
          Positioned(
            top: 0,
            child: CustomPaint(
              size: const Size(22, 20),
              painter: _TopMarkerPainter(glow ? AppColors.success : AppColors.primaryDark),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _badge(double s, double b, double q, double turns, Duration dur, Curve curve, bool glow) {
    final r = s / 2 - b / 2 - s * 0.035;
    final a = q * math.pi / 180;
    final cx = s / 2 + r * math.sin(a) - b / 2;
    final cy = s / 2 - r * math.cos(a) - b / 2;
    return [
      Positioned(
        left: cx,
        top: cy,
        // Rozet dik dursun diye kadranın tersine döner.
        child: AnimatedRotation(
          turns: -turns,
          duration: dur,
          curve: curve,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            width: b,
            height: b,
            padding: EdgeInsets.all(b * 0.16),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: glow ? AppColors.success : AppColors.accent, width: glow ? 3 : 2),
              boxShadow: [
                BoxShadow(
                  color: glow ? AppColors.success.withValues(alpha: 0.7) : Colors.black.withValues(alpha: 0.15),
                  blurRadius: glow ? 18 : 6,
                  spreadRadius: glow ? 3 : 0,
                ),
              ],
            ),
            child: Image.asset('assets/icons/kabe.png', fit: BoxFit.contain),
          ),
        ),
      ),
    ];
  }
}

class _DialPainter extends CustomPainter {
  _DialPainter({required this.qibla, required this.aligned, required this.letters});

  final double? qibla;
  final bool aligned;

  /// Kuzey, Doğu, Güney, Batı harfleri (tr K/D/G/B, en N/E/S/W, ar ش/ق/ج/غ).
  final List<String> letters;

  @override
  void paint(Canvas canvas, Size size) {
    final c = size.center(Offset.zero);
    final radius = size.width / 2;
    final face = radius * 0.9;

    // Kadran yüzü (açık zümrüt, iç gölge hissi).
    canvas.drawCircle(
      c,
      face,
      Paint()
        ..shader = RadialGradient(
          colors: [Colors.white, Color.lerp(AppColors.primaryLight, Colors.white, 0.35)!],
          stops: const [0.2, 1],
        ).createShader(Rect.fromCircle(center: c, radius: face)),
    );
    canvas.drawCircle(
      c,
      face,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.5
        ..color = AppColors.primary.withValues(alpha: 0.25),
    );

    // Derece çizgileri.
    final tick = Paint()..strokeCap = StrokeCap.round;
    for (var d = 0; d < 360; d += 5) {
      final major = d % 30 == 0;
      final len = major ? face * 0.09 : face * 0.045;
      tick
        ..strokeWidth = major ? 2.2 : 1.1
        ..color = (major ? AppColors.primaryDark : AppColors.textMuted).withValues(alpha: major ? 0.8 : 0.45);
      final a = d * math.pi / 180;
      final dir = Offset(math.sin(a), -math.cos(a));
      canvas.drawLine(c + dir * (face - 4), c + dir * (face - 4 - len), tick);
    }

    // Derece sayıları (30°'de bir, ana yönler hariç).
    for (var d = 30; d < 360; d += 30) {
      if (d % 90 == 0) continue;
      _text(canvas, c, '$d', d.toDouble(), face * 0.74, face * 0.085, AppColors.textMuted, FontWeight.w500);
    }

    // K D G B (dile göre).
    for (var i = 0; i < 4; i++) {
      final deg = i * 90;
      _text(canvas, c, letters[i], deg.toDouble(), face * 0.72, face * 0.15,
          deg == 0 ? AppColors.primary : AppColors.text, FontWeight.w800);
    }

    // İbre.
    final q = qibla;
    if (q != null) {
      canvas.save();
      canvas.translate(c.dx, c.dy);
      canvas.rotate(q * math.pi / 180);
      final len = face * 0.56;
      final w = face * 0.075;
      final color = aligned ? AppColors.success : AppColors.primaryDark;
      if (aligned) {
        canvas.drawPath(
          _needle(len, w),
          Paint()
            ..color = AppColors.success.withValues(alpha: 0.55)
            ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10),
        );
      }
      canvas.drawPath(_needle(len, w), Paint()..color = color);
      // Kuyruk.
      final tail = Path()
        ..moveTo(-w * 0.7, 0)
        ..lineTo(0, len * 0.38)
        ..lineTo(w * 0.7, 0)
        ..close();
      canvas.drawPath(tail, Paint()..color = AppColors.primaryLight);
      canvas.drawPath(
        tail,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1
          ..color = AppColors.primary.withValues(alpha: 0.5),
      );
      canvas.restore();
    }

    // Merkez göbek.
    canvas.drawCircle(c, face * 0.085, Paint()..color = Colors.white);
    canvas.drawCircle(c, face * 0.085, Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..color = aligned ? AppColors.success : AppColors.primaryDark);
    canvas.drawCircle(c, face * 0.03, Paint()..color = aligned ? AppColors.success : AppColors.primary);
  }

  Path _needle(double len, double w) => Path()
    ..moveTo(0, -len)
    ..lineTo(w, 0)
    ..lineTo(0, w * 0.6)
    ..lineTo(-w, 0)
    ..close();

  void _text(Canvas canvas, Offset c, String s, double deg, double radius, double fontSize, Color color,
      FontWeight weight) {
    final tp = TextPainter(
      text: TextSpan(text: s, style: TextStyle(fontSize: fontSize, color: color, fontWeight: weight)),
      textDirection: TextDirection.ltr,
    )..layout();
    final a = deg * math.pi / 180;
    canvas.save();
    canvas.translate(c.dx + radius * math.sin(a), c.dy - radius * math.cos(a));
    canvas.rotate(a);
    tp.paint(canvas, Offset(-tp.width / 2, -tp.height / 2));
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant _DialPainter old) =>
      old.qibla != qibla || old.aligned != aligned || old.letters.first != letters.first;
}

class _TopMarkerPainter extends CustomPainter {
  _TopMarkerPainter(this.color);
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final p = Path()
      ..moveTo(size.width / 2, size.height)
      ..lineTo(0, 0)
      ..lineTo(size.width, 0)
      ..close();
    canvas.drawPath(p, Paint()..color = color);
  }

  @override
  bool shouldRepaint(covariant _TopMarkerPainter old) => old.color != color;
}

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../utils/kible_utils.dart';

BoxDecoration kibleCardDecoration({Color? color, Color? border}) => BoxDecoration(
      color: color ?? AppColors.surface,
      borderRadius: BorderRadius.circular(18),
      border: border == null ? null : Border.all(color: border, width: 1.4),
      boxShadow: [
        BoxShadow(
          color: AppColors.primaryDark.withValues(alpha: 0.08),
          blurRadius: 14,
          offset: const Offset(0, 5),
        ),
      ],
    );

/// "İstanbul, Türkiye" konum hapı + yenile butonu.
class KonumHapi extends StatelessWidget {
  const KonumHapi({super.key, required this.label, required this.loading, required this.onRefresh});

  final String label;
  final bool loading;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 14, end: 4),
      decoration: kibleCardDecoration().copyWith(borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.location_on, color: AppColors.primary, size: 20),
          const SizedBox(width: 6),
          Flexible(
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: AppColors.text, fontWeight: FontWeight.w600, fontSize: 14),
            ),
          ),
          SizedBox(
            width: 40,
            height: 40,
            child: loading
                ? const Padding(
                    padding: EdgeInsets.all(11),
                    child: CircularProgressIndicator(strokeWidth: 2, color: AppColors.primary),
                  )
                : IconButton(
                    tooltip: context.l10n.kibleRefreshLocation,
                    padding: EdgeInsets.zero,
                    onPressed: onRefresh,
                    icon: const Icon(Icons.my_location, color: AppColors.primary, size: 20),
                  ),
          ),
        ],
      ),
    );
  }
}

Widget _kabeCircle(double size) => Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(size * 0.18),
      decoration: const BoxDecoration(color: AppColors.primaryLight, shape: BoxShape.circle),
      child: Image.asset('assets/icons/kabe.png', fit: BoxFit.contain),
    );

/// "Kıble 152°" + "Güney Doğu" + yön oku.
class KibleBilgiKarti extends StatelessWidget {
  const KibleBilgiKarti({super.key, required this.qibla});
  final double qibla;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: kibleCardDecoration(),
      child: Row(
        children: [
          _kabeCircle(48),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.kibleQiblaDegrees(qibla.round()),
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: AppColors.primaryDark),
                ),
                const SizedBox(height: 2),
                Text(KibleUtils.directionName(qibla), style: const TextStyle(color: AppColors.textMuted, fontSize: 14)),
              ],
            ),
          ),
          Container(
            width: 46,
            height: 46,
            decoration: const BoxDecoration(gradient: AppColors.primaryGradient, shape: BoxShape.circle),
            child: Transform.rotate(
              angle: qibla * math.pi / 180,
              child: const Icon(Icons.navigation_rounded, color: Colors.white, size: 26),
            ),
          ),
        ],
      ),
    );
  }
}

/// "Kıbleye Uzaklığınız 2.079 km".
class KibleUzaklikKarti extends StatelessWidget {
  const KibleUzaklikKarti({super.key, required this.km});
  final double km;

  /// Uzaklık seçili dilin sayı biçimiyle: "2.079 km", "2,079 km", "٢٬٠٧٩ كم".
  static String format(double km) {
    if (km < 1) return l10n.kibleDistanceM(NumberFormat.decimalPattern().format((km * 1000).round()));
    if (km < 10) return l10n.kibleDistanceKm(NumberFormat('#,##0.0').format(km));
    return l10n.kibleDistanceKm(NumberFormat.decimalPattern().format(km.round()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: kibleCardDecoration(),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(context.l10n.kibleDistanceTitle, style: const TextStyle(color: AppColors.textMuted, fontSize: 13)),
                const SizedBox(height: 4),
                Text(
                  format(km),
                  style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w800, color: AppColors.primaryDark),
                ),
                const SizedBox(height: 2),
                Text(context.l10n.kibleMeccaSaudi, style: const TextStyle(color: AppColors.text, fontSize: 13)),
              ],
            ),
          ),
          SizedBox(
            width: 120,
            height: 64,
            child: Stack(
              children: [
                const Positioned.fill(child: CustomPaint(painter: _YayPainter())),
                const Positioned(
                  left: 0,
                  bottom: 0,
                  child: Icon(Icons.location_on, color: AppColors.primary, size: 22),
                ),
                Positioned(right: 0, top: 0, child: _kabeCircle(34)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Konumdan Kâbe'ye kesik çizgili yay.
class _YayPainter extends CustomPainter {
  const _YayPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final start = Offset(11, size.height - 20);
    final end = Offset(size.width - 34, 18);
    final ctrl = Offset(size.width * 0.35, -6);
    final path = Path()
      ..moveTo(start.dx, start.dy)
      ..quadraticBezierTo(ctrl.dx, ctrl.dy, end.dx, end.dy);
    final paint = Paint()
      ..color = AppColors.primary.withValues(alpha: 0.7)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;
    for (final m in path.computeMetrics()) {
      var d = 0.0;
      while (d < m.length) {
        canvas.drawPath(m.extractPath(d, math.min(d + 5, m.length)), paint);
        d += 9;
      }
    }
    canvas.drawCircle(start, 3, Paint()..color = AppColors.primary);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// İpucu / kalibrasyon uyarısı.
class KibleIpucuKarti extends StatelessWidget {
  const KibleIpucuKarti({super.key, required this.kalibrasyon});
  final bool kalibrasyon;

  @override
  Widget build(BuildContext context) {
    final vurgu = kalibrasyon;
    final l = context.l10n;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.all(14),
      decoration: kibleCardDecoration(
        color: vurgu ? AppColors.warning.withValues(alpha: 0.10) : AppColors.surface,
        border: vurgu ? AppColors.warning : null,
      ),
      child: Row(
        children: [
          Icon(
            vurgu ? Icons.warning_amber_rounded : Icons.lightbulb_outline,
            color: vurgu ? AppColors.warning : AppColors.primary,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text.rich(
              vurgu
                  ? TextSpan(children: [
                      TextSpan(text: l.kibleCalibrationNeeded, style: const TextStyle(fontWeight: FontWeight.w700)),
                      TextSpan(text: l.kibleCalibrationHint),
                    ])
                  : TextSpan(children: [
                      TextSpan(text: l.kibleTipLabel, style: const TextStyle(fontWeight: FontWeight.w700)),
                      TextSpan(text: l.kibleTipText),
                    ]),
              style: const TextStyle(color: AppColors.text, fontSize: 13.5, height: 1.35),
            ),
          ),
        ],
      ),
    );
  }
}

/// Alttaki üç eşit kart butonu.
class KibleAksiyonButonu extends StatelessWidget {
  const KibleAksiyonButonu({super.key, required this.icon, required this.label, required this.onTap, this.badge});

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final String? badge;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: kibleCardDecoration(),
        child: InkWell(
          borderRadius: BorderRadius.circular(18),
          onTap: onTap,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 6),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: const BoxDecoration(color: AppColors.primaryLight, shape: BoxShape.circle),
                      child: Icon(icon, color: AppColors.primaryDark, size: 24),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      label,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: const TextStyle(fontSize: 12.5, fontWeight: FontWeight.w600, color: AppColors.text),
                    ),
                  ],
                ),
              ),
              if (badge != null)
                PositionedDirectional(
                  top: 6,
                  end: 6,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(color: AppColors.accent, borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      badge!,
                      style: const TextStyle(color: AppColors.onAccent, fontSize: 9.5, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

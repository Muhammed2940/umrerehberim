import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';

/// "Kalibre Et": telefonu havada 8 çizme talimatı (animasyonlu).
Future<void> showKalibrasyonSheet(BuildContext context) => showModalBottomSheet<void>(
      context: context,
      backgroundColor: AppColors.surface,
      showDragHandle: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (_) => const _KalibrasyonSheet(),
    );

class _KalibrasyonSheet extends StatefulWidget {
  const _KalibrasyonSheet();

  @override
  State<_KalibrasyonSheet> createState() => _KalibrasyonSheetState();
}

class _KalibrasyonSheetState extends State<_KalibrasyonSheet> with SingleTickerProviderStateMixin {
  late final AnimationController _c = AnimationController(vsync: this, duration: const Duration(seconds: 3))
    ..repeat();

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.l10n.kibleCalibrateTitle,
              style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w800, color: AppColors.primaryDark),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: AnimatedBuilder(
                animation: _c,
                builder: (_, _) => CustomPaint(painter: _SekizPainter(_c.value)),
              ),
            ),
            const SizedBox(height: 16),
            _Adim(no: 1, text: context.l10n.kibleCalibrateStep1),
            _Adim(no: 2, text: context.l10n.kibleCalibrateStep2),
            _Adim(no: 3, text: context.l10n.kibleCalibrateStep3),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary, foregroundColor: Colors.white),
                child: Text(context.l10n.commonOk),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Adim extends StatelessWidget {
  const _Adim({required this.no, required this.text});
  final int no;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 12,
            backgroundColor: AppColors.primaryLight,
            child: Text('$no', style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColors.primaryDark)),
          ),
          const SizedBox(width: 10),
          Expanded(child: Text(text, style: const TextStyle(color: AppColors.text, height: 1.35))),
        ],
      ),
    );
  }
}

/// Yan yatmış 8 (lemniskat) ve üzerinde dolaşan telefon.
class _SekizPainter extends CustomPainter {
  _SekizPainter(this.t);
  final double t;

  Offset _pt(double a, Size s) {
    final w = s.width * 0.34, h = s.height * 0.36;
    return Offset(s.width / 2 + w * math.sin(a), s.height / 2 + h * math.sin(2 * a));
  }

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    for (var i = 0; i <= 100; i++) {
      final p = _pt(i / 100 * 2 * math.pi, size);
      i == 0 ? path.moveTo(p.dx, p.dy) : path.lineTo(p.dx, p.dy);
    }
    canvas.drawPath(
      path,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 6
        ..strokeCap = StrokeCap.round
        ..color = AppColors.primaryLight,
    );

    // İz (son kısım koyu).
    final a = t * 2 * math.pi;
    final trail = Path();
    for (var i = 0; i <= 20; i++) {
      final p = _pt(a - (20 - i) * 0.05, size);
      i == 0 ? trail.moveTo(p.dx, p.dy) : trail.lineTo(p.dx, p.dy);
    }
    canvas.drawPath(
      trail,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 6
        ..strokeCap = StrokeCap.round
        ..color = AppColors.primary.withValues(alpha: 0.6),
    );

    // Telefon.
    final p = _pt(a, size);
    final next = _pt(a + 0.01, size);
    final ang = math.atan2(next.dy - p.dy, next.dx - p.dx);
    canvas.save();
    canvas.translate(p.dx, p.dy);
    canvas.rotate(ang * 0.35);
    final body = RRect.fromRectAndRadius(Rect.fromCenter(center: Offset.zero, width: 26, height: 44), const Radius.circular(6));
    canvas.drawRRect(body.shift(const Offset(2, 3)), Paint()..color = Colors.black.withValues(alpha: 0.15));
    canvas.drawRRect(body, Paint()..color = AppColors.primaryDark);
    canvas.drawRRect(
      RRect.fromRectAndRadius(Rect.fromCenter(center: Offset.zero, width: 20, height: 34), const Radius.circular(3)),
      Paint()..color = AppColors.primaryLight,
    );
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant _SekizPainter old) => old.t != t;
}

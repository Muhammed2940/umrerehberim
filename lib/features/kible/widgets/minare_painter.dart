import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

/// Arka planda çok soluk cami/minare silüeti (süs).
class MinareArkaPlan extends StatelessWidget {
  const MinareArkaPlan({super.key});

  @override
  Widget build(BuildContext context) => const IgnorePointer(child: CustomPaint(painter: _MinarePainter()));
}

class _MinarePainter extends CustomPainter {
  const _MinarePainter();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = AppColors.primary.withValues(alpha: 0.05);
    final base = size.height;
    final w = size.width;

    void minare(double x, double h, double mw) {
      final top = base - h;
      final p = Path()
        ..moveTo(x - mw / 2, base)
        ..lineTo(x - mw / 2, top + mw * 2.2)
        // şerefe
        ..lineTo(x - mw * 0.8, top + mw * 2.2)
        ..lineTo(x - mw * 0.8, top + mw * 1.8)
        ..lineTo(x - mw / 2, top + mw * 1.8)
        ..lineTo(x - mw / 2, top + mw * 1.2)
        // külah
        ..lineTo(x, top)
        ..lineTo(x + mw / 2, top + mw * 1.2)
        ..lineTo(x + mw / 2, top + mw * 1.8)
        ..lineTo(x + mw * 0.8, top + mw * 1.8)
        ..lineTo(x + mw * 0.8, top + mw * 2.2)
        ..lineTo(x + mw / 2, top + mw * 2.2)
        ..lineTo(x + mw / 2, base)
        ..close();
      canvas.drawPath(p, paint);
    }

    // Kubbe ve gövde.
    final domeR = w * 0.16;
    final cx = w * 0.5;
    canvas.drawRect(Rect.fromLTRB(cx - domeR * 1.4, base - domeR * 1.1, cx + domeR * 1.4, base), paint);
    canvas.drawArc(
      Rect.fromCircle(center: Offset(cx, base - domeR * 1.1), radius: domeR),
      3.14159,
      3.14159,
      true,
      paint,
    );
    minare(w * 0.12, size.height * 0.34, w * 0.035);
    minare(w * 0.26, size.height * 0.24, w * 0.03);
    minare(w * 0.74, size.height * 0.24, w * 0.03);
    minare(w * 0.88, size.height * 0.34, w * 0.035);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

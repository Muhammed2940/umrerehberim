import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';

/// "Google ile devam et" düğmesi. [LoginButton] ile aynı boy (54) ve köşe (14);
/// beyaz zemin, [AppColors.divider] çerçeve ve G işareti. Logo ağdan gelmez,
/// [CustomPainter] ile çizilir.
class GoogleSignInButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool loading;

  const GoogleSignInButton({super.key, required this.onPressed, this.loading = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: OutlinedButton(
        onPressed: loading ? null : onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: AppColors.text,
          side: const BorderSide(color: AppColors.divider),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 20, height: 20, child: CustomPaint(painter: _GoogleGPainter())),
            const SizedBox(width: 12),
            Flexible(child: Text(context.l10n.bireyselGoogleContinue, overflow: TextOverflow.ellipsis)),
          ],
        ),
      ),
    );
  }
}

/// Google "G" işareti: dört renkli halka + mavi yatay kol.
class _GoogleGPainter extends CustomPainter {
  const _GoogleGPainter();

  static const _blue = Color(0xFF4285F4);
  static const _red = Color(0xFFEA4335);
  static const _yellow = Color(0xFFFBBC05);
  static const _green = Color(0xFF34A853);

  @override
  void paint(Canvas canvas, Size size) {
    final s = math.min(size.width, size.height);
    final stroke = s * 0.2;
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (s - stroke) / 2;
    final rect = Rect.fromCircle(center: center, radius: radius);
    Paint p(Color c) => Paint()
      ..color = c
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke;

    double deg(double d) => d * math.pi / 180;
    // Açılar saat yönünde, 0° = sağ.
    canvas.drawArc(rect, deg(-40), deg(-100), false, p(_red)); // üst
    canvas.drawArc(rect, deg(-140), deg(-90), false, p(_yellow)); // sol
    canvas.drawArc(rect, deg(130), deg(-100), false, p(_green)); // alt
    canvas.drawArc(rect, deg(0), deg(30), false, p(_blue)); // sağ alt
    canvas.drawRect(
      Rect.fromLTRB(center.dx, center.dy - stroke / 2, center.dx + radius + stroke / 2, center.dy + stroke / 2),
      Paint()..color = _blue,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

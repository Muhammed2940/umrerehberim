import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../common/services/quran_audio_service.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';

/// Kur'an ekranlarında ortak kart gölgesi.
List<BoxShadow> quranCardShadow() => [
  BoxShadow(color: AppColors.primaryDark.withValues(alpha: 0.07), blurRadius: 18, offset: const Offset(0, 6)),
];

/// Oynatma isteğini çalıştırır; telsiz engeli veya hata varsa kullanıcıya
/// kısa bir uyarı gösterir.
Future<void> runQuranPlay(BuildContext context, Future<QuranPlayResult> request) async {
  final messenger = ScaffoldMessenger.maybeOf(context);
  final result = await request;
  String? msg;
  switch (result) {
    case QuranPlayResult.ok:
      return;
    case QuranPlayResult.blockedByTelsiz:
      msg = QuranAudioService.telsizBlockedMessage;
    case QuranPlayResult.error:
      msg = QuranAudioService.instance.error ?? l10n.quranPlayFailed;
  }
  messenger
    ?..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(
              result == QuranPlayResult.blockedByTelsiz ? Icons.settings_input_antenna_rounded : Icons.wifi_off_rounded,
              color: Colors.white,
              size: 20,
            ),
            const SizedBox(width: 10),
            Expanded(child: Text(msg)),
          ],
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.primaryDark,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
    );
}

void showQuranSnack(BuildContext context, String text, {IconData icon = Icons.check_circle_rounded}) {
  ScaffoldMessenger.maybeOf(context)
    ?..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(icon, color: Colors.white, size: 20),
            const SizedBox(width: 10),
            Expanded(child: Text(text)),
          ],
        ),
        duration: const Duration(milliseconds: 1600),
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.primaryDark,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
    );
}

/// Sekiz köşeli yıldız (rub el-hizb) biçiminde numara rozeti.
class QuranNumberBadge extends StatelessWidget {
  const QuranNumberBadge({super.key, required this.number, this.active = false, this.size = 42});

  final int number;
  final bool active;
  final double size;

  @override
  Widget build(BuildContext context) {
    final bg = active ? AppColors.primary : AppColors.primaryLight;
    final border = active ? AppColors.primary : AppColors.primary.withValues(alpha: 0.28);
    final square = size * 0.74;
    Widget piece() => Container(
      width: square,
      height: square,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(size * 0.14),
        border: Border.all(color: border, width: 1.1),
      ),
    );
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.rotate(angle: math.pi / 4, child: piece()),
          piece(),
          Text(
            '$number',
            style: TextStyle(
              color: active ? Colors.white : AppColors.primaryDark,
              fontWeight: FontWeight.w700,
              fontSize: number > 99 ? 11.5 : 13,
            ),
          ),
        ],
      ),
    );
  }
}

/// İmam için baş harfli yuvarlak avatar.
class ReciterAvatar extends StatelessWidget {
  const ReciterAvatar({super.key, required this.reciter, this.size = 44});

  final QuranReciter reciter;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: const BoxDecoration(shape: BoxShape.circle, gradient: AppColors.primaryGradient),
      child: Text(
        reciter.initials,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: size * 0.34, letterSpacing: 0.5),
      ),
    );
  }
}

/// Boş liste durumu.
class QuranEmptyState extends StatelessWidget {
  const QuranEmptyState({super.key, required this.icon, required this.title, required this.message});

  final IconData icon;
  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 40, 32, 40),
      child: Column(
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: const BoxDecoration(color: AppColors.primaryLight, shape: BoxShape.circle),
            child: Icon(icon, size: 34, color: AppColors.primary),
          ),
          const SizedBox(height: 16),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.text),
          ),
          const SizedBox(height: 6),
          Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(color: AppColors.textMuted, height: 1.4),
          ),
        ],
      ),
    );
  }
}

String formatQuranDuration(Duration d) {
  final h = d.inHours;
  final m = d.inMinutes.remainder(60).toString().padLeft(2, '0');
  final s = d.inSeconds.remainder(60).toString().padLeft(2, '0');
  return h > 0 ? '$h:$m:$s' : '$m:$s';
}

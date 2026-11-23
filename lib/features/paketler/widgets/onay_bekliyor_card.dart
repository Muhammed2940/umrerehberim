import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../info_screen/widgets/info_widgets.dart';

/// Full Umre Paketi alındıktan sonra, yönetici onaylayıp tarihleri belirleyene kadar
/// "Kutsal Yolculuk Vakti" bölümünde gösterilen kart. İletişim: Teknik Destek ekranı.
class OnayBekliyorCard extends StatelessWidget {
  const OnayBekliyorCard({super.key});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return InfoCardBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const InfoIconBadge(Icons.hourglass_top_rounded),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l.paketlerPendingTitle,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.text),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      l.paketlerPendingBody,
                      style: const TextStyle(fontSize: 13, height: 1.4, color: AppColors.textMuted),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: () => Navigator.of(context).pushNamed('/technical-support'),
            style: OutlinedButton.styleFrom(minimumSize: const Size(64, 46)),
            icon: const Icon(Icons.support_agent_rounded),
            label: Text(l.paketlerContactUs),
          ),
        ],
      ),
    );
  }
}

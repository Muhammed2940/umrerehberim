import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../../home/widgets/quick_action_card.dart';
import '../providers/personal_plan_provider.dart';

/// Bireysel kullanıcıyı paketlere yönlendiren kart (ana sayfa ve profil).
/// Ücretsiz pakette "Paketinizi seçin" → Paketler; paket seçiliyse "Paketiniz: …" →
/// Yolculuk Bilgilerim (Mekke/Medine tarih ve otel). Görünüm: [QuickActionCard].
class PaketSecCard extends StatelessWidget {
  const PaketSecCard({super.key});

  static String paketName(BuildContext context, PaketId p) {
    final l = context.l10n;
    return switch (p) {
      PaketId.ucretsiz => l.paketlerFreeName,
      PaketId.umre => l.paketlerUmreName,
      PaketId.aile => l.paketlerAileName,
      PaketId.full => l.paketlerFullName,
    };
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return ListenableBuilder(
      listenable: personalPlan,
      builder: (context, _) {
        if (!personalPlan.hasPaidPackage) {
          return QuickActionCard(
            icon: Icons.workspace_premium_rounded,
            title: l.paketlerChooseTitle,
            subtitle: l.paketlerChooseSub,
            onTap: () => Navigator.of(context).pushNamed('/paketler'),
          );
        }
        if (personalPlan.awaitingApproval) {
          return QuickActionCard(
            icon: Icons.hourglass_top_rounded,
            title: l.paketlerYourPackage(paketName(context, personalPlan.paket)),
            subtitle: l.paketlerPendingShort,
            onTap: () => Navigator.of(context).pushNamed('/technical-support'),
          );
        }
        if (personalPlan.isApprovedFull) {
          return QuickActionCard(
            icon: Icons.verified_rounded,
            title: l.paketlerYourPackage(paketName(context, personalPlan.paket)),
            subtitle: l.ccPkgApprovedSub,
            onTap: () => Navigator.of(context).pushNamed('/technical-support'),
          );
        }
        return QuickActionCard(
          icon: Icons.edit_calendar_rounded,
          title: l.paketlerYourPackage(paketName(context, personalPlan.paket)),
          subtitle: l.paketlerEditPlan,
          onTap: () => Navigator.of(context).pushNamed('/yolculuk-bilgilerim'),
        );
      },
    );
  }
}

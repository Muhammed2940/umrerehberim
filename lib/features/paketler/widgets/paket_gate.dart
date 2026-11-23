import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../providers/personal_plan_provider.dart';

/// Ücretli paket özelliği (esnaf indirimi, puan, Harcamalarım) olan bir ekranı sarar:
/// acente hacısı her zaman görür; bireysel yalnız aktif (onaylı) ücretli paketle.
/// Aksi halde ekran hiç kurulmaz, uygulamanın boş durum görünümü ve "Paketleri incele".
class PaketGate extends StatelessWidget {
  final Widget child;
  final String Function(BuildContext context) title;
  final IconData icon;

  const PaketGate({super.key, required this.child, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    final bireysel = context.select<AppStateProvider, bool>((a) => a.currentUser?.isBireysel ?? false);
    final ok = context.select<PersonalPlanProvider, bool>((p) => p.canUseDiscounts);
    if (!bireysel || ok) return child;
    final l = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(title(context))),
      body: EmptyStateWidget(
        icon: icon,
        message: l.paketlerOnlyTitle,
        subtitle: l.paketlerOnlyBody,
        action: ElevatedButton.icon(
          onPressed: () => Navigator.of(context).pushNamed('/paketler'),
          icon: const Icon(Icons.workspace_premium_rounded),
          label: Text(l.paketlerBrowse),
        ),
      ),
    );
  }
}

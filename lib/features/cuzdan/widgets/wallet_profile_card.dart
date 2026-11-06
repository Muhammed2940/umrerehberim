import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../esnaf/data/esnaf_service.dart';
import '../../home/widgets/quick_action_card.dart';

/// Profil ekranındaki "Harcamalarım ve Puanlarım" kartı (puan bakiyesiyle).
/// Bakiye bir kez okunur; cüzdandan dönünce yenilenir.
class WalletProfileCard extends StatefulWidget {
  const WalletProfileCard({super.key});

  @override
  State<WalletProfileCard> createState() => _WalletProfileCardState();
}

class _WalletProfileCardState extends State<WalletProfileCard> {
  int? _points;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final uid = context.read<AppStateProvider>().currentUser?.id;
    if (uid == null) return;
    try {
      final p = await EsnafService.instance.guestPointsBalance(uid);
      if (mounted) setState(() => _points = p);
    } catch (e) {
      debugPrint('WalletProfileCard: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return QuickActionCard(
      icon: Icons.account_balance_wallet_rounded,
      title: t.cuzdanTitle,
      subtitle: t.cuzdanProfileSubtitle(_points ?? 0),
      onTap: () async {
        await Navigator.of(context).pushNamed('/cuzdan');
        _load();
      },
    );
  }
}

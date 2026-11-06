import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../auth/models/user_model.dart';
import '../../auth/providers/login_provider.dart';
import '../providers/agency_provider.dart';
import '../widgets/agency_card.dart';
import '../widgets/confirm_dialog.dart';
import '../widgets/stat_card.dart';

/// Genel adminlerin (süper admin, yönetici) ana ekranı: acente istatistikleri +
/// acente listesi. Acente ekleme/düzenleme/silme yalnız süper admin; ikisi de
/// acente detayındaki "Yönet" ile acente seçer.
///
/// Kontrol Merkezi'nden (süper admin, destek) sayfa olarak açılınca [pushed] = true:
/// geri tuşu görünür, çıkış ve kısayollar gizlenir. Destek salt okur.
class SuperAdminDashboard extends StatefulWidget {
  final bool pushed;
  const SuperAdminDashboard({super.key, this.pushed = false});

  @override
  State<SuperAdminDashboard> createState() => _SuperAdminDashboardState();
}

class _SuperAdminDashboardState extends State<SuperAdminDashboard> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) context.read<AgencyProvider>().load();
    });
  }

  Future<void> _logout() async {
    final t = context.l10n;
    final ok = await showConfirmDialog(
      context,
      title: t.adminLogout,
      message: t.adminLogoutConfirm,
      confirmText: t.adminLogout,
    );
    if (ok && mounted) await context.read<LoginProvider>().logout(context);
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final user = context.watch<AppStateProvider>().currentUser;
    final isSuper = user?.isSuperAdmin ?? false;
    final pushed = widget.pushed;
    // Eski analitik trips/hotels okur; destek bunları okuyamaz.
    final canAnalytics = user?.isGlobalAdmin ?? false;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: pushed,
        title: pushed
            ? Text(t.ccModAgencies)
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(isSuper ? t.rolesSuperAdmin : t.rolesManager),
                  if (!isSuper) Text(t.rolesManagerDesc, style: const TextStyle(fontSize: 12, color: Colors.white70)),
                ],
              ),
        actions: [
          if (isSuper && !pushed) ...[
            IconButton(
              tooltip: t.adminMenuShops,
              icon: const Icon(Icons.storefront_rounded),
              onPressed: () => Navigator.pushNamed(context, '/admin/dukkanlar'),
            ),
          ],
          // Yönetici: merkez ↔ acente yazışmaları.
          if (!pushed && (user?.userType == UserType.yonetici))
            IconButton(
              tooltip: t.ccModMessages,
              icon: const Icon(Icons.forum_rounded),
              onPressed: () => Navigator.pushNamed(context, '/cc/messages'),
            ),
          if (canAnalytics)
            IconButton(
              tooltip: t.adminMenuAnalytics,
              icon: const Icon(Icons.bar_chart),
              onPressed: () => Navigator.pushNamed(context, '/admin/analytics'),
            ),
          if (!pushed) IconButton(tooltip: t.adminLogout, icon: const Icon(Icons.logout), onPressed: _logout),
        ],
      ),
      floatingActionButton: !isSuper
          ? null
          : FloatingActionButton.extended(
              onPressed: () => showAgencyFormDialog(context),
              icon: const Icon(Icons.add_business),
              label: Text(t.adminAgencyNew),
            ),
      body: Consumer<AgencyProvider>(
        builder: (context, p, _) {
          if (p.isLoading && p.agencies.isEmpty) return const Center(child: CircularProgressIndicator());
          return RefreshIndicator(
            onRefresh: p.load,
            child: ListView(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 96),
              children: [
                Row(
                  children: [
                    Expanded(
                      child: StatCard(title: t.adminAgencyTotal, value: '${p.agencies.length}', icon: Icons.business),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: StatCard(
                        title: t.adminAgencyActive,
                        value: '${p.activeCount}',
                        icon: Icons.verified,
                        color: AppColors.success,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  t.adminAgencies,
                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: AppColors.text),
                ),
                const SizedBox(height: 8),
                if (p.agencies.isEmpty)
                  EmptyStateWidget(icon: Icons.business, message: t.adminAgencyEmpty)
                else
                  for (final a in p.agencies)
                    AgencyCard(
                      agency: a,
                      onTap: () => Navigator.pushNamed(context, '/super-admin/agency', arguments: a),
                    ),
              ],
            ),
          );
        },
      ),
    );
  }
}

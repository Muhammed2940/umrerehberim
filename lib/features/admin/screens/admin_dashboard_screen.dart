import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../auth/providers/login_provider.dart';
import '../../control_center/messages/agency_inbox_screen.dart';
import '../providers/admin_provider.dart';
import '../widgets/confirm_dialog.dart';
import '../widgets/drawer.dart';
import '../widgets/stat_card.dart';

class AdminDashboardScreen extends StatefulWidget {
  const AdminDashboardScreen({super.key});

  @override
  State<AdminDashboardScreen> createState() => _AdminDashboardScreenState();
}

class _AdminDashboardScreenState extends State<AdminDashboardScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final user = context.read<AppStateProvider>().currentUser;
      context.read<AdminProvider>().loadInitial(user);
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
    final user = context.watch<AppStateProvider>().currentUser;
    final t = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(t.adminPanelTitle),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(tooltip: t.adminLogout, icon: const Icon(Icons.logout), onPressed: _logout),
        ],
      ),
      drawer: buildAdminDrawer(context),
      body: Consumer<AdminProvider>(
        builder: (context, p, _) {
          if (p.isLoading && p.users.isEmpty && p.trips.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          return RefreshIndicator(
            onRefresh: p.refresh,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Text(
                  user != null && user.userName.isNotEmpty ? t.adminWelcomeName(user.userName) : t.adminWelcome,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.text),
                ),
                if (p.overrideAgencyId != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    t.adminAgencyLabel(_agencyName(p)),
                    style: const TextStyle(color: AppColors.textMuted),
                  ),
                ],
                // Acente admini: Merkezden okunmamış mesaj şeridi (yoksa görünmez).
                if (user != null && user.isAgencyAdmin && (user.agencyId ?? '').isNotEmpty)
                  AgencyInboxBanner(agencyId: user.agencyId!),
                if (p.error != null) ...[
                  const SizedBox(height: 8),
                  Text(p.error!, style: const TextStyle(color: AppColors.error)),
                ],
                const SizedBox(height: 16),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 1.9,
                  children: [
                    StatCard(
                      title: t.adminStatPeople,
                      value: '${p.users.length}',
                      icon: Icons.people_alt,
                      onTap: () => Navigator.pushNamed(context, '/admin/users'),
                    ),
                    StatCard(
                      title: t.adminStatTrip,
                      value: '${p.trips.length}',
                      icon: Icons.flight_takeoff,
                      color: const Color(0xFF3B6E5C),
                      onTap: () => Navigator.pushNamed(context, '/admin/trips'),
                    ),
                    StatCard(
                      title: t.adminStatHotel,
                      value: '${p.hotels.length}',
                      icon: Icons.hotel,
                      color: const Color(0xFF163832),
                      onTap: () => Navigator.pushNamed(context, '/admin/hotels'),
                    ),
                    StatCard(
                      title: t.adminStatRoom,
                      value: '${p.rooms.length}',
                      icon: Icons.meeting_room,
                      color: const Color(0xFFE65100),
                      onTap: () => Navigator.pushNamed(context, '/admin/hotels'),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Text(t.adminManagement,
                    style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: AppColors.text)),
                const SizedBox(height: 12),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 1.25,
                  children: [for (final m in adminMenuItems(context)) _MenuCard(item: m)],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  String _agencyName(AdminProvider p) {
    for (final a in p.agencies) {
      if (a.id == p.overrideAgencyId) return a.name;
    }
    return p.overrideAgencyId ?? '';
  }
}

class _MenuCard extends StatelessWidget {
  final AdminMenuItem item;
  const _MenuCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 2,
      shadowColor: Colors.black12,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => Navigator.pushNamed(context, item.route),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: item.color.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(item.icon, color: item.color),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text(item.subtitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

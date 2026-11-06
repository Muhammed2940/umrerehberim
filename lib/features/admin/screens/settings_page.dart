import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/language_picker.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../auth/providers/login_provider.dart';
import '../../home/widgets/location_button.dart';
import '../utils/admin_helpers.dart';
import '../widgets/confirm_dialog.dart';

/// Ayarlar / Konum Takibi: yöneticinin konum paylaşımı anahtarı ve canlı harita girişi.
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
      appBar: AppBar(title: Text(t.adminMenuTracking)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppColors.primaryLight,
                child: Icon(Icons.person, color: AppColors.primary),
              ),
              title: Text(user?.userName ?? '-', style: const TextStyle(fontWeight: FontWeight.w600)),
              subtitle: Text(user == null ? '-' : userTypeLabel(context, user.userType)),
            ),
          ),
          const SizedBox(height: 8),
          const Card(
            margin: EdgeInsets.zero,
            child: LanguageSettingTile(),
          ),
          const SizedBox(height: 8),
          // Genel adminler (süper admin, yönetici) konum paylaşmaz.
          if (user?.isGlobalAdmin != true) LocationSharingCard(description: t.adminTrackingDescription),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              leading: const Icon(Icons.map, color: AppColors.primary),
              title: Text(t.adminLiveMap),
              subtitle: Text(t.adminLiveMapSub),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.pushNamed(context, '/admin/map'),
            ),
          ),
          const SizedBox(height: 16),
          OutlinedButton.icon(
            onPressed: _logout,
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.error,
              side: const BorderSide(color: AppColors.error),
            ),
            icon: const Icon(Icons.logout),
            label: Text(t.adminLogout),
          ),
        ],
      ),
    );
  }
}

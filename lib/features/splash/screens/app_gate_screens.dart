import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../auth/providers/login_provider.dart';
import '../providers/splash_provider.dart';

/// Bakım modu: süper admin dışındaki herkese tam ekran gösterilir (AppWrapper).
class MaintenanceScreen extends StatelessWidget {
  const MaintenanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final msg = context.watch<SplashProvider>().appSettings.maintenanceMessage.trim();
    return _GateScaffold(
      icon: Icons.construction_rounded,
      title: l.platformMaintenanceTitle,
      body: msg.isEmpty ? l.platformMaintenanceDefault : msg,
    );
  }
}

/// Zorunlu güncelleme: derleme numarası `min_build`'den küçükse (süper admin hariç) gösterilir.
class UpdateRequiredScreen extends StatelessWidget {
  const UpdateRequiredScreen({super.key});

  Future<void> _open(BuildContext context, String url) async {
    final errorText = context.l10n.platformUpdateOpenFailed;
    try {
      final uri = Uri.tryParse(url);
      if (uri == null || !await launchUrl(uri, mode: LaunchMode.externalApplication)) {
        GlobalSnackbar.showError(errorText);
      }
    } catch (_) {
      GlobalSnackbar.showError(errorText);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final url = context.watch<SplashProvider>().appSettings.updateUrl.trim();
    return _GateScaffold(
      icon: Icons.system_update_rounded,
      title: l.platformUpdateTitle,
      body: l.platformUpdateBody,
      extra: url.isEmpty
          ? null
          : FilledButton.icon(
              onPressed: () => _open(context, url),
              icon: const Icon(Icons.download_rounded),
              label: Text(l.platformUpdateButton),
            ),
    );
  }
}

/// Bakım ve güncelleme kapılarının ortak iskeleti: mesaj, "Tekrar dene", "Yönetici girişi".
class _GateScaffold extends StatefulWidget {
  final IconData icon;
  final String title;
  final String body;
  final Widget? extra;
  const _GateScaffold({required this.icon, required this.title, required this.body, this.extra});

  @override
  State<_GateScaffold> createState() => _GateScaffoldState();
}

class _GateScaffoldState extends State<_GateScaffold> {
  bool _busy = false;

  Future<void> _retry() async {
    final splash = context.read<SplashProvider>();
    final errorText = context.l10n.platformRetryFailed;
    setState(() => _busy = true);
    final ok = await splash.refreshAppSettings();
    if (!ok) GlobalSnackbar.showError(errorText);
    if (mounted) setState(() => _busy = false);
  }

  Future<void> _adminLogin() async {
    final splash = context.read<SplashProvider>();
    final loggedIn = context.read<AppStateProvider>().currentUser != null;
    // Süper admin olmayan açık oturum önce kapatılır, sonra giriş ekranı açılır.
    if (loggedIn) await context.read<LoginProvider>().logout(context);
    splash.requestAdminLogin();
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: EmptyStateWidget(
                icon: widget.icon,
                message: widget.title,
                subtitle: widget.body,
                action: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (widget.extra != null) ...[widget.extra!, const SizedBox(height: 8)],
                    FilledButton.icon(
                      onPressed: _busy ? null : _retry,
                      icon: const Icon(Icons.refresh_rounded),
                      label: Text(l.commonRetry),
                    ),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: _busy ? null : _adminLogin,
              child: Text(l.platformAdminLogin, style: const TextStyle(fontSize: 12)),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

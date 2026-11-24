import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../../common/services/background_location_service.dart';
import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/aile_takibi_config.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../auth/models/user_model.dart';
import '../../home/widgets/basliklar.dart';
import '../../info_screen/widgets/info_widgets.dart';
import '../../paketler/providers/personal_plan_provider.dart';
import '../models/tracking_link.dart';
import '../providers/aile_takibi_provider.dart';
import '../widgets/new_link_sheet.dart';
import '../widgets/tracking_link_card.dart';
import '../widgets/views_sheet.dart';

/// Aile Takibi (docs/plan/AILE_TAKIBI_SOZLESME.md): hacı bir bağlantı oluşturup WhatsApp vb.
/// ile paylaşır; aile tarayıcıda son konumu görür. Hakkı olmayan bireysel kullanıcıya
/// Paketler'e yönlendiren boş durum, diğer kullanıcılara bilgi kartı gösterilir.
class AileTakibiScreen extends StatelessWidget {
  const AileTakibiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.select<AppStateProvider, UserModel?>((a) => a.currentUser);
    // Paket durumu değişince (satın alma, süre bitişi) ekran yeniden değerlendirilir.
    context.watch<PersonalPlanProvider>();
    if (AileTakibiProvider.hasRight(user)) return _AileBody(user: user!);

    final l = context.l10n;
    final bireysel = user?.isBireysel ?? false;
    return Scaffold(
      appBar: AppBar(title: Text(l.aileTitle)),
      body: EmptyStateWidget(
        icon: Icons.family_restroom_rounded,
        message: bireysel ? l.aileGateTitle : l.aileUnavailableTitle,
        subtitle: bireysel ? l.aileGateBody : l.aileUnavailableBody,
        action: bireysel
            ? ElevatedButton.icon(
                onPressed: () => Navigator.of(context).pushNamed('/paketler'),
                icon: const Icon(Icons.workspace_premium_rounded),
                label: Text(l.paketlerBrowse),
              )
            : null,
      ),
    );
  }
}

class _AileBody extends StatefulWidget {
  final UserModel user;
  const _AileBody({required this.user});

  @override
  State<_AileBody> createState() => _AileBodyState();
}

class _AileBodyState extends State<_AileBody> {
  late final AileTakibiProvider _p = AileTakibiProvider()..attach(widget.user);
  bool _sharing = false;
  bool _busy = false;

  bool get _bireysel => widget.user.isBireysel;

  @override
  void initState() {
    super.initState();
    if (_bireysel) {
      BackgroundLocationService.isFamilySharingEnabled().then((v) {
        if (mounted) setState(() => _sharing = v);
      });
    }
  }

  @override
  void dispose() {
    _p.dispose();
    super.dispose();
  }

  Future<void> _guard(Future<void> Function() job) async {
    if (_busy) return;
    setState(() => _busy = true);
    try {
      await job();
    } catch (e) {
      debugPrint('Aile Takibi: $e');
      if (mounted) GlobalSnackbar.showError(context.l10n.aileError);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _toggleSharing(bool value) => _guard(() async {
        final on = await BackgroundLocationService.setFamilySharing(context, value);
        if (!mounted) return;
        setState(() => _sharing = on);
        if (value && !on) GlobalSnackbar.showError(context.l10n.aileLocationDenied);
      });

  Future<void> _share(String token) async {
    final text = context.l10n.aileShareMessage(AileTakibiConfig.linkFor(token));
    await SharePlus.instance.share(ShareParams(text: text));
  }

  Future<void> _newLink() async {
    if (_p.limitReached) {
      GlobalSnackbar.showInfo(context.l10n.aileLimitReached);
      return;
    }
    final res = await showNewLinkSheet(context);
    if (res == null || !mounted) return;
    await _guard(() async {
      final token = await _p.create(label: res.label, approx: res.approx);
      if (mounted) await _share(token);
    });
  }

  Future<void> _onAction(TrackingLink link, LinkAction action) async {
    final l = context.l10n;
    switch (action) {
      case LinkAction.share:
        final token = await _p.tokenFor(link.hash);
        if (!mounted) return;
        if (token == null) {
          GlobalSnackbar.showInfo(l.aileNoToken);
          return;
        }
        await _share(token);
      case LinkAction.hide:
        await _guard(() => _p.hideFor2Hours(link));
      case LinkAction.unhide:
        await _guard(() => _p.unhide(link));
      case LinkAction.views:
        await showViewsSheet(context, _p, link);
      case LinkAction.revoke:
        final ok = await showDialog<bool>(
          context: context,
          builder: (c) => AlertDialog(
            title: Text(l.aileRevokeTitle),
            content: Text(l.aileRevokeBody),
            actions: [
              TextButton(onPressed: () => Navigator.pop(c, false), child: Text(l.aileCancel)),
              TextButton(
                onPressed: () => Navigator.pop(c, true),
                style: TextButton.styleFrom(foregroundColor: AppColors.error),
                child: Text(l.aileRevoke),
              ),
            ],
          ),
        );
        if (ok == true) await _guard(() => _p.revoke(link));
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return ChangeNotifierProvider.value(
      value: _p,
      child: Scaffold(
        appBar: AppBar(title: Text(l.aileTitle)),
        body: Consumer<AileTakibiProvider>(
          builder: (context, p, _) => ListView(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
            children: [
              Text(l.aileIntro, style: const TextStyle(fontSize: 14, height: 1.45, color: AppColors.textMuted)),
              const SizedBox(height: 14),
              InfoCardBox(
                child: _bireysel
                    ? SwitchListTile(
                        contentPadding: EdgeInsets.zero,
                        secondary: const InfoIconBadge(Icons.location_on_rounded),
                        title: Text(l.aileShareSwitchTitle,
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.text)),
                        subtitle: Text(l.aileShareSwitchSub, style: const TextStyle(fontSize: 12.5)),
                        value: _sharing,
                        onChanged: _busy ? null : _toggleSharing,
                      )
                    : Row(
                        children: [
                          const InfoIconBadge(Icons.location_on_rounded),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Text(l.aileAgencyShareNote,
                                style: const TextStyle(fontSize: 13, height: 1.4, color: AppColors.textMuted)),
                          ),
                        ],
                      ),
              ),
              SectionHeader(title: l.aileLinksTitle, icon: Icons.link_rounded),
              ElevatedButton.icon(
                onPressed: _busy || p.limitReached ? null : _newLink,
                icon: const Icon(Icons.add_link_rounded),
                label: Text(l.aileNewLink),
              ),
              if (p.limitReached)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(l.aileLimitReached, style: const TextStyle(fontSize: 12.5, color: AppColors.warning)),
                ),
              const SizedBox(height: 14),
              if (p.loading)
                const Padding(padding: EdgeInsets.all(32), child: Center(child: CircularProgressIndicator()))
              else if (p.hasError)
                EmptyStateWidget(icon: Icons.cloud_off_rounded, message: l.aileError)
              else if (p.links.isEmpty)
                EmptyStateWidget(icon: Icons.family_restroom_rounded, message: l.aileEmpty, subtitle: l.aileEmptyBody)
              else
                for (final link in p.links)
                  TrackingLinkCard(
                    key: ValueKey(link.hash),
                    link: link,
                    onApprox: (v) => _guard(() => _p.setApprox(link, v)),
                    onAction: (a) => _onAction(link, a),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

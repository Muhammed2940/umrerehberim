import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../common/services/auth_api_service.dart';
import '../../../common/widgets/credentials_sheet.dart';
import '../../../core/config/auth_api_config.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../admin/widgets/confirm_dialog.dart';
import '../audit/audit_labels.dart';
import '../shared/cc_widgets.dart';

/// Süper admin: eski (TC) hesapları yeni girişe (Kullanıcı ID + PIN/şifre) toplu taşıma.
/// Önce önizleme (`dry_run`), sonra onay → taşıma → bir kez gösterilen bilgi listesi.
class CcMigrateScreen extends StatefulWidget {
  const CcMigrateScreen({super.key});

  @override
  State<CcMigrateScreen> createState() => _CcMigrateScreenState();
}

class _CcMigrateScreenState extends State<CcMigrateScreen> {
  bool _busy = false;
  List<IssuedCredentials>? _preview;
  List<IssuedCredentials>? _done;
  bool _copied = false;
  List<String> _warnings = const [];

  Future<void> _dryRun() async {
    setState(() => _busy = true);
    try {
      final r = await AuthApiService.migrate(dryRun: true);
      if (mounted) {
        setState(() {
          _preview = r.accounts;
          _warnings = r.warnings;
        });
      }
    } on AuthApiException catch (e) {
      GlobalSnackbar.showError(e.message);
    } catch (e) {
      debugPrint('migrate dry run: $e');
      GlobalSnackbar.showError(l10n.authApiErrUnknown);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _run() async {
    final count = _preview?.length ?? 0;
    final t = context.l10n;
    final ok = await showConfirmDialog(
      context,
      title: t.authApiMigrateTitle,
      message: t.authApiMigrateConfirm(count),
      confirmText: t.authApiMigrateRun,
    );
    if (!ok || !mounted) return;
    setState(() => _busy = true);
    // Sunucu partiler hâlinde (20'şer) işler; bilgiler yalnız bir kez döndüğü için her parti
    // biriktirilir ve araya hata girse bile o ana kadar üretilenler ekranda kalır.
    final all = <IssuedCredentials>[];
    final warnings = <String>[];
    var failed = 0;
    var after = '';
    Object? error;
    try {
      for (var i = 0; i < 1000; i++) {
        final r = await AuthApiService.migrate(after: after);
        all.addAll(r.accounts);
        warnings.addAll(r.warnings);
        failed += r.failed.length;
        if (r.remaining <= 0 || r.nextAfter.isEmpty || r.nextAfter == after) break;
        after = r.nextAfter;
      }
    } catch (e) {
      error = e;
    }
    if (mounted) {
      setState(() {
        _done = all;
        _warnings = warnings;
        _busy = false;
      });
    }
    if (error is AuthApiException) {
      GlobalSnackbar.showError(error.message);
    } else if (error != null) {
      debugPrint('migrate: $error');
      GlobalSnackbar.showError(l10n.authApiErrUnknown);
    } else if (failed > 0) {
      GlobalSnackbar.showError(l10n.authApiMigratePartial(all.length, failed));
    } else {
      GlobalSnackbar.showSuccess(l10n.authApiMigrateDone(all.length));
    }
  }

  static String _csvCell(String v) {
    final needsQuote = v.contains(',') || v.contains('"') || v.contains('\n');
    final s = v.replaceAll('"', '""');
    return needsQuote ? '"$s"' : s;
  }

  String _csv(List<IssuedCredentials> list) {
    final rows = <String>['ad_soyad,kullanici_tipi,kullanici_id,pin_sifre,uid'];
    for (final c in list) {
      rows.add([c.userName, c.userType, c.loginId, c.secret, c.uid].map(_csvCell).join(','));
    }
    return rows.join('\n');
  }

  Future<void> _copyAll() async {
    final list = _done;
    if (list == null) return;
    await Clipboard.setData(ClipboardData(text: _csv(list)));
    setState(() => _copied = true);
    GlobalSnackbar.showSuccess(l10n.authApiCopied);
  }

  /// Sonuç listesi açıkken sayfadan çıkmadan önce sorar (bilgiler bir daha gösterilemez).
  Future<void> _confirmLeave() async {
    final t = context.l10n;
    final ok = await showConfirmDialog(
      context,
      title: t.authApiMigrateLeaveTitle,
      message: t.authApiMigrateLeaveBody,
      confirmText: t.authApiLeave,
    );
    if (ok && mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final me = context.watch<AppStateProvider>().currentUser;
    if (!(me?.isSuperAdmin ?? false)) {
      return CcPage(title: t.authApiMigrateTitle, body: [CcEmpty(icon: Icons.lock_rounded, message: t.rolesNoAccess)]);
    }
    final done = _done;
    return PopScope(
      canPop: done == null || done.isEmpty || _copied,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) _confirmLeave();
      },
      child: CcPage(
        title: t.authApiMigrateTitle,
        subtitle: t.authApiMigrateDesc,
        body: [
          if (authApiEnabled && _warnings.isNotEmpty) ...[
            CcSection(
              title: t.authApiMigrateWarnings,
              child: CcPanel(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    for (final w in _warnings)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.report_problem_outlined, size: 18, color: CcColors.warn),
                            const SizedBox(width: 8),
                            Expanded(child: Text(w, style: const TextStyle(color: CcColors.ink, height: 1.35))),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
          ],
          if (!authApiEnabled)
            CcPanel(child: CcEmpty(icon: Icons.cloud_off_rounded, message: t.authApiNotConnected))
          else if (done != null)
            ..._results(done)
          else
            ..._intro(),
        ],
      ),
    );
  }

  List<Widget> _intro() {
    final t = context.l10n;
    final preview = _preview;
    return [
      CcPanel(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.info_outline_rounded, color: CcColors.mid),
            const SizedBox(width: 10),
            Expanded(child: Text(t.authApiMigrateIntro, style: const TextStyle(height: 1.4, color: CcColors.ink))),
          ],
        ),
      ),
      const SizedBox(height: 12),
      OutlinedButton.icon(
        onPressed: _busy ? null : _dryRun,
        icon: const Icon(Icons.search_rounded),
        label: Text(t.authApiMigrateDryRun),
      ),
      if (_busy) const Padding(padding: EdgeInsets.all(24), child: Center(child: CircularProgressIndicator())),
      if (preview != null && !_busy) ...[
        const SizedBox(height: 12),
        CcSection(
          title: preview.isEmpty ? t.authApiMigrateNone : t.authApiMigrateCount(preview.length),
          child: Column(
            children: [
              for (final c in preview)
                CcPanel(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(c.userName.isEmpty ? c.uid : c.userName,
                            maxLines: 1, overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontWeight: FontWeight.w600, color: CcColors.ink)),
                      ),
                      if (c.userType.isNotEmpty)
                        CcBadge(text: ccRoleLabel(context, c.userType), color: ccRoleColor(c.userType)),
                    ],
                  ),
                ),
            ],
          ),
        ),
        if (preview.isNotEmpty) ...[
          const SizedBox(height: 8),
          FilledButton.icon(
            onPressed: _run,
            style: FilledButton.styleFrom(backgroundColor: AppColors.error, padding: const EdgeInsets.symmetric(vertical: 14)),
            icon: const Icon(Icons.swap_horiz_rounded),
            label: Text(t.authApiMigrateRun),
          ),
        ],
      ],
    ];
  }

  List<Widget> _results(List<IssuedCredentials> list) {
    final t = context.l10n;
    return [
      Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: AppColors.error.withValues(alpha: 0.08),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.error, width: 1.5),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.warning_amber_rounded, color: AppColors.error, size: 32),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                t.authApiMigrateOnceWarning,
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: AppColors.error, height: 1.4),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 12),
      FilledButton.icon(
        onPressed: list.isEmpty ? null : _copyAll,
        style: FilledButton.styleFrom(backgroundColor: CcColors.mid, padding: const EdgeInsets.symmetric(vertical: 14)),
        icon: Icon(_copied ? Icons.check_rounded : Icons.copy_all_rounded),
        label: Text(t.authApiCopyAllCsv),
      ),
      const SizedBox(height: 12),
      CcSection(
        title: t.authApiMigrateDone(list.length),
        child: Column(
          children: [
            for (final c in list)
              CcPanel(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(c.userName.isEmpty ? c.uid : c.userName,
                              maxLines: 1, overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.ink)),
                        ),
                        if (c.userType.isNotEmpty)
                          CcBadge(text: ccRoleLabel(context, c.userType), color: ccRoleColor(c.userType)),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text(
                      '${t.authApiLoginIdLabel}: ${groupDigits(c.loginId)}    '
                      '${c.isPin ? t.authApiPinLabel : t.authApiPasswordLabel}: ${c.secret}',
                      textDirection: TextDirection.ltr,
                      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, letterSpacing: 0.5, color: CcColors.deep),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    ];
  }
}

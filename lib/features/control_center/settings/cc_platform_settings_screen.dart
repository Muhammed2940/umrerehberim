import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../admin/widgets/no_access_screen.dart';
import '../shared/cc_widgets.dart';
import 'platform_settings_service.dart';

/// Kontrol Merkezi › Platform Ayarları (`platform_settings`). Yalnız süper admin.
/// Önerilen modül ikonu: Icons.tune_rounded, renk: CcColors.info.
class CcPlatformSettingsScreen extends StatefulWidget {
  const CcPlatformSettingsScreen({super.key});

  @override
  State<CcPlatformSettingsScreen> createState() => _CcPlatformSettingsScreenState();
}

class _CcPlatformSettingsScreenState extends State<CcPlatformSettingsScreen> {
  final _svc = PlatformSettingsService.instance;
  final _formKey = GlobalKey<FormState>();
  final _message = TextEditingController();
  final _minBuild = TextEditingController();
  final _url = TextEditingController();
  final _phone1 = TextEditingController();
  final _phone2 = TextEditingController();
  final _whatsapp = TextEditingController();
  final _email1 = TextEditingController();
  final _email2 = TextEditingController();

  bool _loading = true;
  bool _loadError = false;
  bool _busy = false;
  bool _demo = false;
  bool _maintenance = false;
  PlatformAppSettings _saved = PlatformAppSettings.empty;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    for (final c in [_message, _minBuild, _url, _phone1, _phone2, _whatsapp, _email1, _email2]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _load() async {
    setState(() {
      _loading = true;
      _loadError = false;
    });
    try {
      final app = await _svc.loadApp();
      final demo = await _svc.loadDemoPayments();
      if (!mounted) return;
      _fill(app);
      setState(() {
        _demo = demo;
        _loading = false;
      });
    } catch (e) {
      debugPrint('CcPlatformSettingsScreen: $e');
      if (mounted) {
        setState(() {
          _loading = false;
          _loadError = true;
        });
      }
    }
  }

  void _fill(PlatformAppSettings s) {
    _saved = s;
    _maintenance = s.maintenanceMode;
    _message.text = s.maintenanceMessage;
    _minBuild.text = s.minBuild > 0 ? '${s.minBuild}' : '';
    _url.text = s.updateUrl;
    _phone1.text = s.supportPhone1;
    _phone2.text = s.supportPhone2;
    _whatsapp.text = s.supportWhatsapp;
    _email1.text = s.supportEmail1;
    _email2.text = s.supportEmail2;
  }

  Future<bool> _confirm(String title, String body) async {
    final l = context.l10n;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(title),
        content: Text(body),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(l.ccSetCancel)),
          FilledButton(onPressed: () => Navigator.pop(ctx, true), child: Text(l.ccSetConfirm)),
        ],
      ),
    );
    return ok == true;
  }

  Future<void> _toggleDemo(bool value) async {
    final l = context.l10n;
    final user = context.read<AppStateProvider>().currentUser;
    if (user == null || _busy) return;
    final ok = await _confirm(l.ccSetPayConfirmTitle, value ? l.ccSetPayConfirmOn : l.ccSetPayConfirmOff);
    if (!ok || !mounted) return;
    setState(() => _busy = true);
    try {
      await _svc.setDemoPayments(value, actor: user, previous: _demo);
      if (mounted) setState(() => _demo = value);
      GlobalSnackbar.showSuccess(l.ccSetSaved);
    } catch (e) {
      debugPrint('CcPlatformSettingsScreen demo: $e');
      GlobalSnackbar.showError(l.ccSetSaveError);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _save() async {
    final l = context.l10n;
    final user = context.read<AppStateProvider>().currentUser;
    if (user == null || _busy || !(_formKey.currentState?.validate() ?? false)) return;
    final next = PlatformAppSettings(
      maintenanceMode: _maintenance,
      maintenanceMessage: _message.text.trim(),
      minBuild: int.tryParse(_minBuild.text.trim()) ?? 0,
      updateUrl: _url.text.trim(),
      supportPhone1: _phone1.text.trim(),
      supportPhone2: _phone2.text.trim(),
      supportWhatsapp: _whatsapp.text.trim(),
      supportEmail1: _email1.text.trim(),
      supportEmail2: _email2.text.trim(),
    );
    if (next.maintenanceMode && !_saved.maintenanceMode) {
      if (!await _confirm(l.ccSetMaintConfirmTitle, l.ccSetMaintConfirmBody) || !mounted) return;
    }
    if (next.minBuild > kAppBuildNumber && next.minBuild != _saved.minBuild) {
      if (!await _confirm(l.ccSetUpdateConfirmTitle, l.ccSetUpdateConfirmBody(next.minBuild)) || !mounted) return;
    }
    setState(() => _busy = true);
    try {
      final n = await _svc.saveApp(next, _saved, actor: user);
      if (!mounted) return;
      _saved = next;
      GlobalSnackbar.showSuccess(n == 0 ? l.ccSetNoChange : l.ccSetSaved);
    } catch (e) {
      debugPrint('CcPlatformSettingsScreen save: $e');
      GlobalSnackbar.showError(l.ccSetSaveError);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  // ---------------------------------------------------------------- doğrulama
  String? _vPhone(String? v) {
    final s = (v ?? '').trim();
    if (s.isEmpty) return null;
    final digits = s.replaceAll(RegExp(r'\D'), '');
    final okChars = RegExp(r'^[+\d\s()\-]+$').hasMatch(s);
    return okChars && digits.length >= 7 && digits.length <= 15 ? null : context.l10n.ccSetInvalidPhone;
  }

  String? _vEmail(String? v) {
    final s = (v ?? '').trim();
    if (s.isEmpty) return null;
    return RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]{2,}$').hasMatch(s) ? null : context.l10n.ccSetInvalidEmail;
  }

  String? _vUrl(String? v) {
    final s = (v ?? '').trim();
    if (s.isEmpty) return null;
    final u = Uri.tryParse(s);
    return u != null && (u.scheme == 'https' || u.scheme == 'http') && u.host.isNotEmpty
        ? null
        : context.l10n.ccSetInvalidUrl;
  }

  Widget _field(
    TextEditingController c,
    String label, {
    String? Function(String?)? validator,
    TextInputType? keyboard,
    int? maxLength,
    int maxLines = 1,
    List<TextInputFormatter>? formatters,
    String? helper,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextFormField(
        controller: c,
        enabled: !_busy,
        keyboardType: keyboard,
        maxLength: maxLength,
        maxLines: maxLines,
        inputFormatters: formatters,
        validator: validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(labelText: label, helperText: helper, border: const OutlineInputBorder()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final user = context.watch<AppStateProvider>().currentUser;
    if (user == null || !user.isSuperAdmin) return NoAccessScreen(title: l.ccSetTitle);
    return CcPage(
      title: l.ccSetTitle,
      subtitle: l.ccSetSubtitle,
      onRefresh: _load,
      actions: [IconButton(icon: const Icon(Icons.refresh_rounded), onPressed: _busy ? null : _load)],
      body: [
        if (_busy) const LinearProgressIndicator(minHeight: 2),
        if (_loading)
          const Padding(padding: EdgeInsets.all(40), child: Center(child: CircularProgressIndicator()))
        else if (_loadError)
          CcEmpty(icon: Icons.cloud_off_rounded, message: l.ccSetLoadError)
        else ...[
          CcSection(
            title: l.ccSetPaymentsSection,
            child: CcPanel(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(l.ccSetDemoPayments, style: const TextStyle(fontWeight: FontWeight.w700)),
                    subtitle: Text(l.ccSetDemoPaymentsDesc),
                    value: _demo,
                    onChanged: _busy ? null : _toggleDemo,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: CcBadge(
                      text: _demo ? l.ccSetDemoOn : l.ccSetDemoOff,
                      color: _demo ? CcColors.warn : CcColors.ok,
                      icon: _demo ? Icons.science_rounded : Icons.verified_rounded,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CcSection(
                  title: l.ccSetAppSection,
                  child: CcPanel(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SwitchListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(l.ccSetMaintenance, style: const TextStyle(fontWeight: FontWeight.w700)),
                          subtitle: Text(l.ccSetMaintenanceDesc),
                          value: _maintenance,
                          onChanged: _busy ? null : (v) => setState(() => _maintenance = v),
                        ),
                        const SizedBox(height: 8),
                        _field(_message, l.ccSetMaintenanceMsg, maxLength: 300, maxLines: 3),
                        _field(
                          _minBuild,
                          l.ccSetMinBuild,
                          keyboard: TextInputType.number,
                          maxLength: 6,
                          formatters: [FilteringTextInputFormatter.digitsOnly],
                          helper: l.ccSetMinBuildHint(kAppBuildNumber),
                        ),
                        _field(_url, l.ccSetUpdateUrl, keyboard: TextInputType.url, validator: _vUrl),
                      ],
                    ),
                  ),
                ),
                CcSection(
                  title: l.ccSetSupportSection,
                  child: CcPanel(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Text(l.ccSetSupportHint, style: const TextStyle(color: Colors.black54, fontSize: 13)),
                        ),
                        _field(_phone1, l.ccSetPhone1, keyboard: TextInputType.phone, validator: _vPhone),
                        _field(_phone2, l.ccSetPhone2, keyboard: TextInputType.phone, validator: _vPhone),
                        _field(_whatsapp, l.ccSetWhatsapp, keyboard: TextInputType.phone, validator: _vPhone),
                        _field(_email1, l.ccSetEmail1, keyboard: TextInputType.emailAddress, validator: _vEmail),
                        _field(_email2, l.ccSetEmail2, keyboard: TextInputType.emailAddress, validator: _vEmail),
                      ],
                    ),
                  ),
                ),
                FilledButton.icon(
                  onPressed: _busy ? null : _save,
                  icon: const Icon(Icons.save_rounded),
                  label: Text(l.ccSetSave),
                  style: FilledButton.styleFrom(
                    backgroundColor: CcColors.mid,
                    minimumSize: const Size.fromHeight(48),
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}

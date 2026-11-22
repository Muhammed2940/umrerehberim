import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../core/config/auth_api_config.dart';
import '../../core/providers/locale_provider.dart';
import '../../core/theme/app_theme.dart';
import '../../core/utils/global_snackbar.dart';
import '../../features/auth/providers/login_provider.dart';
import '../services/auth_api_service.dart';

/// Profil / ayarlar: "PIN'imi değiştir" (misafir) veya "Şifremi değiştir" (personel).
/// Servis bağlı değilse soluk görünür ve "Sunucu henüz bağlı değil" der.
class ChangeSecretTile extends StatelessWidget {
  final String userType;
  const ChangeSecretTile({super.key, required this.userType});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final pin = AuthApiService.usesPin(userType);
    final enabled = authApiEnabled;
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: enabled ? AppColors.primaryLight : AppColors.divider,
          child: Icon(Icons.password_rounded, color: enabled ? AppColors.primary : AppColors.textMuted),
        ),
        title: Text(
          pin ? t.authApiChangePin : t.authApiChangePassword,
          style: TextStyle(fontWeight: FontWeight.w600, color: enabled ? AppColors.text : AppColors.textMuted),
        ),
        subtitle: Text(enabled ? t.authApiChangeSubtitle : t.authApiNotConnected),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          if (!enabled) {
            GlobalSnackbar.showInfo(t.authApiNotConnected);
            return;
          }
          showChangeSecretDialog(context, userType);
        },
      ),
    );
  }
}

/// PIN/şifre değiştirme penceresi (Kontrol Merkezi gibi kart olmayan yerlerden de açılır).
/// Servis bağlı değilse "Sunucu henüz bağlı değil" der.
Future<void> showChangeSecretDialog(BuildContext context, String userType) async {
  if (!authApiEnabled) {
    GlobalSnackbar.showInfo(context.l10n.authApiNotConnected);
    return;
  }
  final pin = AuthApiService.usesPin(userType);
  final needsRelogin = await showDialog<bool>(
    context: context,
    builder: (_) => _ChangeSecretDialog(pin: pin),
  );
  // Sunucu tüm oturumları kapattı ve bu cihaz sessizce yeniden giremedi: düzgünce çıkış
  // yaptırıp giriş ekranına döndür (aksi hâlde jeton süresi dolunca istekler sessizce düşer).
  if (needsRelogin == true && context.mounted) {
    GlobalSnackbar.showInfo(pin ? l10n.authApiReloginPin : l10n.authApiReloginPassword);
    await context.read<LoginProvider>().logout(context);
  }
}

class _ChangeSecretDialog extends StatefulWidget {
  final bool pin;
  const _ChangeSecretDialog({required this.pin});

  @override
  State<_ChangeSecretDialog> createState() => _ChangeSecretDialogState();
}

class _ChangeSecretDialogState extends State<_ChangeSecretDialog> {
  final _formKey = GlobalKey<FormState>();
  final _old = TextEditingController();
  final _new = TextEditingController();
  final _repeat = TextEditingController();
  bool _visible = false;
  bool _saving = false;

  @override
  void dispose() {
    _old.dispose();
    _new.dispose();
    _repeat.dispose();
    super.dispose();
  }

  String? _validateFormat(String? v) {
    final t = context.l10n;
    final s = v ?? '';
    if (s.isEmpty) return t.authApiFieldRequired;
    if (widget.pin) return AuthApiService.pinPattern.hasMatch(s) ? null : t.authApiPinError;
    return s.length >= AuthApiService.minPasswordLength ? null : t.authApiPasswordError;
  }

  Future<void> _save() async {
    FocusScope.of(context).unfocus();
    if (!(_formKey.currentState?.validate() ?? false)) return;
    setState(() => _saving = true);
    try {
      final relogged = await AuthApiService.changeSecret(_old.text, _new.text);
      if (relogged) GlobalSnackbar.showSuccess(widget.pin ? l10n.authApiPinChanged : l10n.authApiPasswordChanged);
      if (mounted) Navigator.pop(context, !relogged);
    } on AuthApiException catch (e) {
      GlobalSnackbar.showError(e.message);
    } catch (e) {
      debugPrint('changeSecret: $e');
      GlobalSnackbar.showError(l10n.authApiErrUnknown);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  Widget _field(TextEditingController c, String label, String? Function(String?) validator, {bool last = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextFormField(
        controller: c,
        obscureText: !_visible,
        enableSuggestions: false,
        autocorrect: false,
        textDirection: TextDirection.ltr,
        keyboardType: widget.pin ? TextInputType.number : TextInputType.visiblePassword,
        textInputAction: last ? TextInputAction.done : TextInputAction.next,
        inputFormatters: widget.pin
            ? [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(6)]
            : null,
        validator: validator,
        onFieldSubmitted: last ? (_) => _save() : null,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: const Icon(Icons.lock_outline),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final pin = widget.pin;
    return AlertDialog(
      title: Text(pin ? t.authApiChangePin : t.authApiChangePassword),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _field(_old, pin ? t.authApiOldPin : t.authApiOldPassword,
                  (v) => (v ?? '').isEmpty ? t.authApiFieldRequired : null),
              _field(_new, pin ? t.authApiNewPin : t.authApiNewPassword, (v) {
                final e = _validateFormat(v);
                if (e != null) return e;
                return v == _old.text ? t.authApiSameAsOld : null;
              }),
              _field(_repeat, pin ? t.authApiRepeatPin : t.authApiRepeatPassword, (v) {
                final e = _validateFormat(v);
                if (e != null) return e;
                return v == _new.text ? null : t.authApiMismatch;
              }, last: true),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: TextButton.icon(
                  onPressed: () => setState(() => _visible = !_visible),
                  icon: Icon(_visible ? Icons.visibility_off_outlined : Icons.visibility_outlined),
                  label: Text(_visible ? t.authApiHideSecret : t.authApiShowSecret),
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(onPressed: _saving ? null : () => Navigator.pop(context), child: Text(t.authApiCancel)),
        FilledButton(
          style: FilledButton.styleFrom(backgroundColor: AppColors.primary),
          onPressed: _saving ? null : _save,
          child: _saving
              ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
              : Text(t.authApiSave),
        ),
      ],
    );
  }
}

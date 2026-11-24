import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/config/auth_api_config.dart';
import '../../core/providers/locale_provider.dart';
import '../../core/theme/app_theme.dart';
import '../../core/utils/global_snackbar.dart';
import '../../features/auth/models/user_model.dart';
import '../services/auth_api_service.dart';
import 'credentials_sheet.dart';

/// Onay → `reset-secret` → Giriş Bilgileri kartı. Başarılıysa üretilen bilgiyi döner.
/// Firebase kimlik modunda (AUTH_API boş) başkasının şifresi Admin SDK olmadan sıfırlanamaz:
/// "Şifre sıfırlama sunucu kurulunca açılacak" der. TODO PHP kurulunca bu dal kalkar.
Future<IssuedCredentials?> confirmAndResetSecret(BuildContext context, UserModel target) async {
  final t = context.l10n;
  if (!authApiEnabled) {
    GlobalSnackbar.showInfo(t.authFbResetUnavailable);
    return null;
  }
  final pin = AuthApiService.usesPin(target.userType);
  final name = target.userName.trim().isEmpty ? (target.loginId ?? '-') : target.userName.trim();
  final ok = await showDialog<bool>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(pin ? t.authApiResetPin : t.authApiResetPassword),
      content: Text(pin ? t.authApiResetPinConfirm(name) : t.authApiResetPasswordConfirm(name)),
      actions: [
        TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(t.authApiCancel)),
        FilledButton(
          style: FilledButton.styleFrom(backgroundColor: AppColors.primary),
          onPressed: () => Navigator.pop(ctx, true),
          child: Text(t.authApiCreate),
        ),
      ],
    ),
  );
  if (ok != true || !context.mounted) return null;

  final IssuedCredentials issued;
  try {
    issued = (await _withProgress(context, AuthApiService.resetSecret(target.id)))
        .withUser(target.userName, target.userType);
  } on AuthApiException catch (e) {
    GlobalSnackbar.showError(e.message);
    return null;
  } catch (e) {
    debugPrint('resetSecret: $e');
    GlobalSnackbar.showError(l10n.authApiErrUnknown);
    return null;
  }
  if (context.mounted) await showCredentialsSheet(context, issued);
  return issued;
}

/// İşlem sürerken kapatılamayan bir bekleme penceresi gösterir.
Future<T> _withProgress<T>(BuildContext context, Future<T> future) async {
  final nav = Navigator.of(context, rootNavigator: true);
  showDialog<void>(
    context: context,
    barrierDismissible: false,
    useRootNavigator: true,
    builder: (_) => const PopScope(canPop: false, child: Center(child: CircularProgressIndicator())),
  );
  try {
    return await future;
  } finally {
    if (nav.mounted) nav.pop();
  }
}

/// Kullanıcı ID satırı (kopyalanabilir). Gizli bilgi asla gösterilmez.
class LoginIdRow extends StatelessWidget {
  final String? loginId;
  final Color iconColor;
  final double labelWidth;
  const LoginIdRow({super.key, required this.loginId, this.iconColor = AppColors.primary, this.labelWidth = 100});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final id = loginId ?? '';
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Icon(Icons.pin_outlined, size: 20, color: iconColor),
          const SizedBox(width: 10),
          SizedBox(width: labelWidth, child: Text(t.authApiLoginIdLabel, style: const TextStyle(color: AppColors.textMuted))),
          Expanded(
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                id.isEmpty ? t.authApiLoginIdNone : groupDigits(id),
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  letterSpacing: id.isEmpty ? 0 : 1.5,
                  color: id.isEmpty ? AppColors.textMuted : AppColors.text,
                ),
              ),
            ),
          ),
          if (id.isNotEmpty)
            IconButton(
              tooltip: t.authApiCopy,
              visualDensity: VisualDensity.compact,
              icon: const Icon(Icons.copy_rounded, size: 18, color: AppColors.textMuted),
              onPressed: () async {
                await Clipboard.setData(ClipboardData(text: id));
                GlobalSnackbar.showSuccess(t.authApiCopied);
              },
            ),
        ],
      ),
    );
  }
}

/// "Yeni PIN ver" / "Yeni şifre ver". Görünürlük çağıranda [AuthApiService.canReset] ile seçilir.
class ResetSecretButton extends StatelessWidget {
  final UserModel target;
  final ValueChanged<IssuedCredentials>? onIssued;
  const ResetSecretButton({super.key, required this.target, this.onIssued});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final pin = AuthApiService.usesPin(target.userType);
    return OutlinedButton.icon(
      onPressed: () async {
        final issued = await confirmAndResetSecret(context, target);
        if (issued != null) onIssued?.call(issued);
      },
      style: OutlinedButton.styleFrom(
        foregroundColor: authApiEnabled ? AppColors.primary : AppColors.textMuted,
        side: BorderSide(color: authApiEnabled ? AppColors.primary : AppColors.divider),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
      ),
      icon: const Icon(Icons.lock_reset_rounded),
      label: Text(pin ? t.authApiResetPin : t.authApiResetPassword),
    );
  }
}

/// "Kullanıcı gözünden görüntüle": şimdilik pasif görünür, "Yakında" rozetli.
class ViewAsUserButton extends StatelessWidget {
  const ViewAsUserButton({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return OutlinedButton(
      onPressed: () => GlobalSnackbar.showInfo(t.authApiViewAsSoon),
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.textMuted,
        side: const BorderSide(color: AppColors.divider),
        backgroundColor: AppColors.background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.visibility_outlined, size: 20),
          const SizedBox(width: 8),
          Flexible(child: Text(t.authApiViewAs, overflow: TextOverflow.ellipsis)),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: AppColors.accent.withValues(alpha: 0.35),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              t.authApiSoon,
              style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w700, color: AppColors.onAccent),
            ),
          ),
        ],
      ),
    );
  }
}

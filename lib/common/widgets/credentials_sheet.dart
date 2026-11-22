import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/providers/locale_provider.dart';
import '../../core/theme/app_theme.dart';
import '../../core/utils/global_snackbar.dart';
import '../services/auth_api_service.dart';

/// Hesap açma / yeni PIN sonrası "Giriş Bilgileri" kartı.
/// Gizli bilgi yalnız burada bir kez görünür; yanlışlıkla kapanmasın diye
/// yalnız "Tamam" ile kapanır (sürükleme, dışarı dokunma ve geri tuşu kapalı).
/// [errorText] verilirse (ör. hesap açıldı ama kayıt yazılamadı) üstte kırmızı uyarı gösterilir.
Future<void> showCredentialsSheet(BuildContext context, IssuedCredentials c, {String? errorText}) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    isDismissible: false,
    enableDrag: false,
    backgroundColor: Colors.transparent,
    builder: (_) => PopScope(canPop: false, child: _CredentialsSheet(c: c, errorText: errorText)),
  );
}

/// Paylaşılacak / kopyalanacak düz metin.
String credentialsShareText(IssuedCredentials c) {
  final t = l10n;
  final secretLabel = c.isPin ? t.authApiPinLabel : t.authApiPasswordLabel;
  return [
    t.authApiShareIntro,
    if (c.userName.trim().isNotEmpty) '${t.authApiCredName}: ${c.userName.trim()}',
    '${t.authApiLoginIdLabel}: ${c.loginId}',
    '$secretLabel: ${c.secret}',
  ].join('\n');
}

/// 7 haneli ID'yi "123 4567", 6 haneli PIN'i "123 456" gibi okunur gösterir.
String groupDigits(String s) {
  if (!RegExp(r'^[0-9]+$').hasMatch(s) || s.length < 6) return s;
  final cut = s.length == 7 ? 3 : s.length ~/ 2;
  return '${s.substring(0, cut)} ${s.substring(cut)}';
}

class _CredentialsSheet extends StatelessWidget {
  final IssuedCredentials c;
  final String? errorText;
  const _CredentialsSheet({required this.c, this.errorText});

  Future<void> _copy() async {
    await Clipboard.setData(ClipboardData(text: credentialsShareText(c)));
    GlobalSnackbar.showSuccess(l10n.authApiCopied);
  }

  Future<void> _whatsapp() async {
    final uri = Uri.parse('https://wa.me/?text=${Uri.encodeComponent(credentialsShareText(c))}');
    var ok = false;
    try {
      ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
    } catch (e) {
      debugPrint('WhatsApp açılamadı: $e');
    }
    if (!ok) await _copy();
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: AppColors.primaryLight,
                    child: Icon(Icons.key_rounded, color: AppColors.primary),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      t.authApiCredTitle,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.text),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              if (errorText != null) ...[
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.error.withValues(alpha: 0.08),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: AppColors.error),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.error_outline_rounded, color: AppColors.error),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(errorText!,
                            style: const TextStyle(color: AppColors.error, fontWeight: FontWeight.w600, height: 1.35)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 14),
              ],
              if (c.userName.trim().isNotEmpty) ...[
                Text(t.authApiCredName, style: const TextStyle(color: AppColors.textMuted)),
                const SizedBox(height: 2),
                Text(
                  c.userName.trim(),
                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: AppColors.text),
                ),
                const SizedBox(height: 14),
              ],
              _BigValue(label: t.authApiLoginIdLabel, value: c.loginId),
              const SizedBox(height: 10),
              _BigValue(label: c.isPin ? t.authApiPinLabel : t.authApiPasswordLabel, value: c.secret),
              const SizedBox(height: 14),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.warning.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: AppColors.warning.withValues(alpha: 0.5)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.warning_amber_rounded, color: AppColors.warning),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        c.isPin ? t.authApiCredWarningPin : t.authApiCredWarningPassword,
                        style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.text, height: 1.35),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: _copy,
                      icon: const Icon(Icons.copy_rounded),
                      label: Text(t.authApiCopy),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: _whatsapp,
                      style: OutlinedButton.styleFrom(foregroundColor: const Color(0xFF128C7E)),
                      icon: const Icon(Icons.share_rounded),
                      label: Text(t.authApiShareWhatsapp, maxLines: 1, overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              FilledButton(
                onPressed: () => Navigator.of(context).pop(),
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                ),
                child: Text(t.authApiOk, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BigValue extends StatelessWidget {
  final String label;
  final String value;
  const _BigValue({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(color: AppColors.textMuted, fontWeight: FontWeight.w600)),
          const SizedBox(height: 4),
          // Rakamlar Arapçada da soldan sağa okunur.
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: SelectableText(
              groupDigits(value),
              textDirection: TextDirection.ltr,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                letterSpacing: 3,
                color: AppColors.primaryDark,
                fontFeatures: [FontFeature.tabularFigures()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

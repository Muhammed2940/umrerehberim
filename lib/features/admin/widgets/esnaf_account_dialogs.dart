import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../providers/esnaf_account_service.dart';

/// PIN seçimi: rastgele ya da elle. İptalde null, rastgele için '' döner.
Future<String?> showEsnafPinDialog(BuildContext context, {required String title}) {
  return showDialog<String>(context: context, builder: (_) => _PinDialog(title: title));
}

class _PinDialog extends StatefulWidget {
  final String title;
  const _PinDialog({required this.title});

  @override
  State<_PinDialog> createState() => _PinDialogState();
}

class _PinDialogState extends State<_PinDialog> {
  bool _manual = false;
  final _pin = TextEditingController();
  String? _error;

  @override
  void dispose() {
    _pin.dispose();
    super.dispose();
  }

  void _submit() {
    final t = context.l10n;
    if (!_manual) {
      Navigator.pop(context, '');
      return;
    }
    if (!EsnafAccountService.isValidPin(_pin.text)) {
      setState(() => _error = t.adminEsnafPinInvalid);
      return;
    }
    Navigator.pop(context, _pin.text.trim());
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return AlertDialog(
      title: Text(widget.title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RadioGroup<bool>(
            groupValue: _manual,
            onChanged: (v) => setState(() => _manual = v ?? false),
            child: Column(
              children: [
                RadioListTile<bool>(
                  contentPadding: EdgeInsets.zero,
                  value: false,
                  title: Text(t.adminEsnafPinRandom),
                ),
                RadioListTile<bool>(
                  contentPadding: EdgeInsets.zero,
                  value: true,
                  title: Text(t.adminEsnafPinManual),
                ),
              ],
            ),
          ),
          if (_manual)
            TextField(
              controller: _pin,
              autofocus: true,
              keyboardType: TextInputType.number,
              textDirection: TextDirection.ltr,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(6)],
              decoration: InputDecoration(
                labelText: t.adminEsnafPinField,
                errorText: _error,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
        ],
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text(t.commonCancel)),
        FilledButton(onPressed: _submit, child: Text(t.adminEsnafContinue)),
      ],
    );
  }
}

/// Yeni kod ve PIN'i gösterir. PIN bir daha gösterilmez.
Future<void> showEsnafCredentialsDialog(
  BuildContext context, {
  required MerchantCredentials creds,
  required String shopName,
  String whatsapp = '',
}) {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (ctx) {
      final t = ctx.l10n;
      final message = t.adminEsnafShareMessage(shopName, creds.code.toUpperCase(), creds.pin);

      Future<void> copy() async {
        await Clipboard.setData(ClipboardData(text: message));
        GlobalSnackbar.showSuccess(t.adminEsnafCopied);
      }

      Future<void> share() async {
        final digits = whatsapp.replaceAll(RegExp(r'[^0-9]'), '');
        final uri = Uri.parse('https://wa.me/$digits?text=${Uri.encodeComponent(message)}');
        var ok = false;
        try {
          ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
        } catch (_) {}
        if (!ok) {
          await Clipboard.setData(ClipboardData(text: message));
          GlobalSnackbar.showError(t.adminEsnafWhatsappFailed);
        }
      }

      return AlertDialog(
        title: Text(t.adminEsnafCredsTitle),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.warning.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.warning_amber_rounded, color: AppColors.warning),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(t.adminEsnafCredsWarning,
                          style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.text)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              _BigValue(label: t.adminEsnafCode, value: creds.code.toUpperCase()),
              const SizedBox(height: 10),
              _BigValue(label: t.adminEsnafPin, value: creds.pin),
              const SizedBox(height: 14),
              OutlinedButton.icon(
                onPressed: copy,
                icon: const Icon(Icons.copy_rounded),
                label: Text(t.adminEsnafCopy),
              ),
              const SizedBox(height: 8),
              FilledButton.icon(
                style: FilledButton.styleFrom(backgroundColor: AppColors.success),
                onPressed: share,
                icon: const Icon(Icons.chat_rounded),
                label: Text(t.adminEsnafShareWhatsapp),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: Text(t.adminEsnafDone)),
        ],
      );
    },
  );
}

class _BigValue extends StatelessWidget {
  final String label;
  final String value;
  const _BigValue({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        children: [
          Text(label, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
          const SizedBox(height: 2),
          SelectableText(
            value,
            textDirection: TextDirection.ltr,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              letterSpacing: 4,
              color: AppColors.primaryDark,
              fontFamily: 'monospace',
            ),
          ),
        ],
      ),
    );
  }
}

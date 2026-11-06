import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';

/// KVKK aydınlatma metni. Onaylanırsa true, reddedilirse false döner.
class KvkkDialog extends StatelessWidget {
  const KvkkDialog({super.key});

  static Future<bool> show(BuildContext context) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (_) => const KvkkDialog(),
    );
    return result ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text(
        t.authKvkkTitle,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.primary),
      ),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _KvkkSection(title: t.authKvkkControllerTitle, body: 'Hacktapot Software'),
            _KvkkSection(title: t.authKvkkDataTitle, body: t.authKvkkDataBody),
            _KvkkSection(title: t.authKvkkPurposeTitle, body: t.authKvkkPurposeBody),
            _KvkkSection(title: t.authKvkkLocationTitle, body: t.authKvkkLocationBody),
            _KvkkSection(title: t.authKvkkTransferTitle, body: t.authKvkkTransferBody),
            _KvkkSection(title: t.authKvkkAbroadTitle, body: t.authKvkkAbroadBody),
            _KvkkSection(title: t.authKvkkMethodTitle, body: t.authKvkkMethodBody),
            _KvkkSection(title: t.authKvkkRightsTitle, body: t.authKvkkRightsBody),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          style: TextButton.styleFrom(foregroundColor: AppColors.error),
          child: Text(t.authKvkkReject),
        ),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(true),
          style: ElevatedButton.styleFrom(minimumSize: const Size(64, 40)),
          child: Text(t.authKvkkAccept),
        ),
      ],
    );
  }
}

class _KvkkSection extends StatelessWidget {
  final String title;
  final String body;

  const _KvkkSection({required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: AppColors.text)),
          const SizedBox(height: 4),
          Text(body, style: const TextStyle(fontSize: 13, height: 1.4, color: AppColors.textMuted)),
        ],
      ),
    );
  }
}

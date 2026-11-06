import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';

/// Silme vb. geri alınamaz işlemler için onay. Onaylanırsa true döner.
/// [title] verilmezse "Emin misiniz?", [confirmText] verilmezse "Sil" kullanılır.
Future<bool> showConfirmDialog(
  BuildContext context, {
  String? title,
  required String message,
  String? confirmText,
  bool destructive = true,
}) async {
  final res = await showDialog<bool>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(title ?? ctx.l10n.adminAreYouSure),
      content: Text(message),
      actions: [
        TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(ctx.l10n.commonCancel)),
        ElevatedButton(
          style: destructive ? ElevatedButton.styleFrom(backgroundColor: AppColors.error) : null,
          onPressed: () => Navigator.pop(ctx, true),
          child: Text(confirmText ?? ctx.l10n.commonDelete),
        ),
      ],
    ),
  );
  return res == true;
}

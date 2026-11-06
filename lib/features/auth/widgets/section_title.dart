import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';

/// Giriş ekranındaki küçük bölüm başlığı (ör. "Giriş Tipi").
class SectionTitle extends StatelessWidget {
  final String? title;

  const SectionTitle({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        title ?? context.l10n.authLoginType,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.text),
      ),
    );
  }
}

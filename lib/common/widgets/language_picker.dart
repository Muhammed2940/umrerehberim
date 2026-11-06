import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/providers/locale_provider.dart';
import '../../core/theme/app_theme.dart';
import '../../l10n/gen/app_localizations.dart';

/// Dil seçme penceresi (alttan açılır). Hazır olmayan diller "Çok yakında" rozetiyle
/// gri gösterilir ve seçilemez.
class LanguagePicker {
  LanguagePicker._();

  static Future<void> show(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (ctx) => const _LanguageSheet(),
    );
  }
}

class _LanguageSheet extends StatelessWidget {
  const _LanguageSheet();

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final lp = context.watch<LocaleProvider>();
    return SafeArea(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.75),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
              child: Row(
                children: [
                  const Icon(Icons.language_rounded, color: AppColors.primary),
                  const SizedBox(width: 10),
                  Text(t.commonSelectLanguage,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.text)),
                ],
              ),
            ),
            Flexible(
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 16),
                children: [
                  for (final l in LocaleProvider.languages)
                    _LanguageTile(
                      lang: l,
                      selected: l.code == lp.locale.languageCode,
                      comingSoon: t.commonComingSoon,
                      onTap: l.available
                          ? () async {
                              await context.read<LocaleProvider>().setLocale(l.code);
                              if (context.mounted) Navigator.pop(context);
                            }
                          : null,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LanguageTile extends StatelessWidget {
  final AppLanguage lang;
  final bool selected;
  final String comingSoon;
  final VoidCallback? onTap;

  const _LanguageTile({required this.lang, required this.selected, required this.comingSoon, this.onTap});

  @override
  Widget build(BuildContext context) {
    final enabled = onTap != null;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Material(
        color: selected ? AppColors.primaryLight : Colors.transparent,
        borderRadius: BorderRadius.circular(14),
        child: ListTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          onTap: onTap,
          leading: Opacity(opacity: enabled ? 1 : 0.4, child: Text(lang.flag, style: const TextStyle(fontSize: 24))),
          title: Text(
            lang.nativeName,
            style: TextStyle(
              fontWeight: selected ? FontWeight.bold : FontWeight.w500,
              color: enabled ? AppColors.text : AppColors.textMuted,
            ),
          ),
          trailing: selected
              ? const Icon(Icons.check_circle_rounded, color: AppColors.primary)
              : enabled
                  ? null
                  : Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.divider),
                      ),
                      child: Text(comingSoon, style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
                    ),
        ),
      ),
    );
  }
}

/// Profil / Ayarlar sayfalarındaki "Dil" kartı.
class LanguageSettingTile extends StatelessWidget {
  const LanguageSettingTile({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final lang = context.watch<LocaleProvider>().current;
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        onTap: () => LanguagePicker.show(context),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(color: AppColors.primaryLight, borderRadius: BorderRadius.circular(12)),
          child: const Icon(Icons.language_rounded, color: AppColors.primary),
        ),
        title: Text(t.commonLanguage, style: const TextStyle(fontWeight: FontWeight.w700)),
        subtitle: Text('${lang.flag}  ${lang.nativeName}'),
        trailing: const Icon(Icons.chevron_right_rounded, color: AppColors.textMuted),
      ),
    );
  }
}

/// AppBar'a ya da giriş ekranına konacak küçük dil butonu (bayrak + kod).
class LanguageButton extends StatelessWidget {
  final Color color;
  const LanguageButton({super.key, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    final lang = context.watch<LocaleProvider>().current;
    return TextButton.icon(
      onPressed: () => LanguagePicker.show(context),
      style: TextButton.styleFrom(foregroundColor: color),
      icon: Text(lang.flag, style: const TextStyle(fontSize: 18)),
      label: Text(lang.code.toUpperCase(), style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}

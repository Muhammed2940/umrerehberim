import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../models/user_model.dart';
import 'choice_chip.dart';

/// Misafir / Yönetici / Esnaf giriş tipi seçici.
class UserTypeSelector extends StatelessWidget {
  final String selectedType;
  final ValueChanged<String> onChanged;

  const UserTypeSelector({super.key, required this.selectedType, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ChoiceChipLogin(
                label: context.l10n.authGuest,
                icon: Icons.person_outline,
                selected: selectedType == UserType.misafir,
                onTap: () => onChanged(UserType.misafir),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ChoiceChipLogin(
                label: context.l10n.authAdmin,
                icon: Icons.admin_panel_settings_outlined,
                selected: selectedType == UserType.yonetici,
                onTap: () => onChanged(UserType.yonetici),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ChoiceChipLogin(
                label: context.l10n.esnafLoginType,
                icon: Icons.storefront_outlined,
                selected: selectedType == UserType.esnaf,
                onTap: () => onChanged(UserType.esnaf),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

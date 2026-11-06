import 'package:flutter/material.dart';

import '../../../../core/providers/locale_provider.dart';
import '../../models/currency_model.dart';
import '../confirm_dialog.dart';

Future<bool> showCurrencyDeleteDialog(BuildContext context, CurrencyModel c) => showConfirmDialog(
      context,
      title: context.l10n.adminCurrencyDelete,
      message: context.l10n.adminCurrencyDeleteConfirm('${c.emoji} ${c.name}'),
    );

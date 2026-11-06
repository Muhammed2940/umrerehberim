import 'package:flutter/material.dart';

import '../../../../core/providers/locale_provider.dart';
import '../../models/event_model.dart';
import '../confirm_dialog.dart';

Future<bool> showEventDeleteDialog(BuildContext context, EventModel event) => showConfirmDialog(
      context,
      title: context.l10n.adminEventDelete,
      message: context.l10n.adminEventDeleteConfirm(event.title),
    );

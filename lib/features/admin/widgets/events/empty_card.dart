import 'package:flutter/material.dart';

import '../../../../common/widgets/empty_state_widget.dart';
import '../../../../core/providers/locale_provider.dart';

class EventsEmptyCard extends StatelessWidget {
  const EventsEmptyCard({super.key});

  @override
  Widget build(BuildContext context) => EmptyStateWidget(
        icon: Icons.event_busy,
        message: context.l10n.adminEventEmpty,
        subtitle: context.l10n.adminEventEmptySub,
      );
}

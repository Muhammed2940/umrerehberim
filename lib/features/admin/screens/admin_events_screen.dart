import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../providers/admin_provider.dart';
import '../providers/event_provider.dart';
import '../utils/admin_helpers.dart';
import '../widgets/events/delete_dialog.dart';
import '../widgets/events/edit_dialog.dart';
import '../widgets/events/empty_card.dart';
import '../widgets/events/event_card.dart';

/// Etkinlik takvimi: gün seçici + o günün etkinlikleri.
class AdminEventsScreen extends StatefulWidget {
  const AdminEventsScreen({super.key});

  @override
  State<AdminEventsScreen> createState() => _AdminEventsScreenState();
}

class _AdminEventsScreenState extends State<AdminEventsScreen> {
  @override
  void initState() {
    super.initState();
    ensureAdminLoaded(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final ep = context.read<EventProvider>();
      ep.load(adminAgencyId(context), date: ep.selectedDate);
    });
  }

  Future<void> _pickDate(EventProvider ep) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: ep.selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2035),
    );
    if (picked != null) await ep.selectDate(picked);
  }

  @override
  Widget build(BuildContext context) {
    final agencyId = adminAgencyId(context);
    final ep = context.watch<EventProvider>();
    final admin = context.watch<AdminProvider>();

    final t = context.l10n;
    if (agencyId == null) {
      return Scaffold(
        appBar: AppBar(title: Text(t.adminMenuCalendar)),
        body: EmptyStateWidget(icon: Icons.business, message: t.adminNoAgencySelected),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(t.adminMenuCalendar)),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showEventEditDialog(context, date: ep.selectedDate, trips: admin.trips),
        icon: const Icon(Icons.add),
        label: Text(t.adminEventAdd),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              children: [
                TextButton.icon(
                  onPressed: () => ep.changeDay(-1),
                  icon: const Icon(Icons.chevron_left),
                  label: Text(t.adminPrevious),
                ),
                Expanded(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () => _pickDate(ep),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Column(
                        children: [
                          Text(formatLongDate(ep.selectedDate),
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.primaryDark)),
                          Text(t.adminPickDay, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => ep.changeDay(1),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [Text(t.adminNext), const Icon(Icons.chevron_right)],
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: ep.isLoading
                ? const Center(child: CircularProgressIndicator())
                : RefreshIndicator(
                    onRefresh: () => ep.load(agencyId),
                    child: ep.events.isEmpty
                        ? ListView(children: const [SizedBox(height: 60), EventsEmptyCard()])
                        : ListView.builder(
                            padding: const EdgeInsets.fromLTRB(16, 12, 16, 96),
                            itemCount: ep.events.length,
                            itemBuilder: (_, i) {
                              final e = ep.events[i];
                              return EventCard(
                                event: e,
                                tripName: admin.tripById(e.tripId)?.name,
                                onEdit: () => showEventEditDialog(context,
                                    event: e, date: ep.selectedDate, trips: admin.trips),
                                onDelete: () async {
                                  if (await showEventDeleteDialog(context, e)) await ep.delete(e);
                                },
                              );
                            },
                          ),
                  ),
          ),
        ],
      ),
    );
  }
}

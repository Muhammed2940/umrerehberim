import 'package:flutter/material.dart';

import '../../../../core/providers/locale_provider.dart';
import '../../../../core/theme/app_theme.dart';
import '../../models/event_model.dart';

class EventCard extends StatelessWidget {
  final EventModel event;
  final String? tripName;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const EventCard({
    super.key,
    required this.event,
    this.tripName,
    required this.onEdit,
    required this.onDelete,
  });

  DateTime? get _start {
    final d = event.date;
    if (d == null) return null;
    final p = event.time.split(':');
    final h = int.tryParse(p.isNotEmpty ? p[0] : '') ?? 0;
    final m = int.tryParse(p.length > 1 ? p[1] : '') ?? 0;
    return DateTime(d.year, d.month, d.day, h, m);
  }

  String get _endTime {
    final s = _start;
    if (s == null || event.duration <= 0) return '';
    final e = s.add(Duration(minutes: event.duration));
    return '${e.hour.toString().padLeft(2, '0')}:${e.minute.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    final start = _start;
    final upcoming = start == null || start.isAfter(DateTime.now());
    final end = _endTime;
    final l = context.l10n;
    return Card(
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 4, 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 64,
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(color: AppColors.primaryLight, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Text(event.time,
                      style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.primaryDark)),
                  if (end.isNotEmpty) Text(end, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(event.title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  if (event.description != null && event.description!.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(event.description!, style: const TextStyle(color: AppColors.textMuted)),
                    ),
                  const SizedBox(height: 6),
                  Wrap(
                    spacing: 6,
                    runSpacing: 4,
                    children: [
                      _badge(upcoming ? l.adminEventUpcoming : l.adminEventPast,
                          upcoming ? const Color(0xFF235347) : AppColors.textMuted),
                      if (event.duration > 0) _badge(l.adminMinutes(event.duration), AppColors.accent),
                      if (tripName != null) _badge(tripName!, AppColors.primary),
                    ],
                  ),
                ],
              ),
            ),
            PopupMenuButton<String>(
              onSelected: (v) => v == 'edit' ? onEdit() : onDelete(),
              itemBuilder: (_) => [
                PopupMenuItem(
                    value: 'edit', child: ListTile(leading: const Icon(Icons.edit), title: Text(l.commonEdit))),
                PopupMenuItem(
                    value: 'delete',
                    child: ListTile(
                        leading: const Icon(Icons.delete, color: AppColors.error), title: Text(l.commonDelete))),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _badge(String text, Color color) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(color: color.withValues(alpha: 0.12), borderRadius: BorderRadius.circular(8)),
        child: Text(text, style: TextStyle(fontSize: 12, color: color, fontWeight: FontWeight.w500)),
      );
}

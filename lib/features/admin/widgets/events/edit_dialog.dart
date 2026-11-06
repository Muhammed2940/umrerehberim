import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/locale_provider.dart';
import '../../models/event_model.dart';
import '../../models/trip_model.dart';
import '../../providers/event_provider.dart';

/// Etkinlik ekle / düzenle diyaloğu. [event] null ise yeni etkinlik ([date] gününe).
Future<void> showEventEditDialog(
  BuildContext context, {
  EventModel? event,
  required DateTime date,
  List<TripModel> trips = const [],
}) =>
    showDialog(
      context: context,
      builder: (_) => _EventEditDialog(event: event, date: date, trips: trips),
    );

class _EventEditDialog extends StatefulWidget {
  final EventModel? event;
  final DateTime date;
  final List<TripModel> trips;
  const _EventEditDialog({this.event, required this.date, required this.trips});

  @override
  State<_EventEditDialog> createState() => _EventEditDialogState();
}

class _EventEditDialogState extends State<_EventEditDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _title = TextEditingController(text: widget.event?.title ?? '');
  late final TextEditingController _desc = TextEditingController(text: widget.event?.description ?? '');
  late final TextEditingController _duration =
      TextEditingController(text: widget.event == null ? '60' : '${widget.event!.duration}');
  late TimeOfDay _time = _parse(widget.event?.time ?? '09:00');
  late String? _tripId = widget.event?.tripId;

  static TimeOfDay _parse(String s) {
    final p = s.split(':');
    return TimeOfDay(
      hour: (int.tryParse(p.isNotEmpty ? p[0] : '') ?? 9).clamp(0, 23),
      minute: (int.tryParse(p.length > 1 ? p[1] : '') ?? 0).clamp(0, 59),
    );
  }

  String get _timeStr => '${_time.hour.toString().padLeft(2, '0')}:${_time.minute.toString().padLeft(2, '0')}';

  @override
  void dispose() {
    _title.dispose();
    _desc.dispose();
    _duration.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    final d = widget.event?.date ?? widget.date;
    final day = DateTime(d.year, d.month, d.day);
    final e = EventModel(
      id: widget.event?.id ?? '',
      title: _title.text.trim(),
      description: _desc.text.trim(),
      date: day,
      time: _timeStr,
      duration: int.tryParse(_duration.text.trim()) ?? 0,
      tripId: _tripId,
      agencyId: widget.event?.agencyId,
      createdAt: widget.event?.createdAt,
    );
    final ok = await context.read<EventProvider>().save(e);
    if (ok && mounted) Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final saving = context.watch<EventProvider>().isSaving;
    final isNew = widget.event == null;
    final tripValue = widget.trips.any((t) => t.id == _tripId) ? _tripId : null;
    return AlertDialog(
      title: Text(isNew ? l.adminEventAdd : l.adminEventEdit),
      content: SizedBox(
        width: 400,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _title,
                  decoration: InputDecoration(labelText: l.adminTitleRequired),
                  validator: (v) => (v == null || v.trim().isEmpty) ? l.adminRequiredField : null,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _desc,
                  maxLines: 3,
                  minLines: 1,
                  decoration: InputDecoration(labelText: l.adminDescription),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(12),
                        onTap: () async {
                          final t = await showTimePicker(context: context, initialTime: _time);
                          if (t != null) setState(() => _time = t);
                        },
                        child: InputDecorator(
                          decoration:
                              InputDecoration(labelText: l.adminTime, suffixIcon: const Icon(Icons.access_time)),
                          child: Text(_timeStr),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextFormField(
                        controller: _duration,
                        keyboardType: TextInputType.number,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        decoration: InputDecoration(labelText: l.adminDurationMin),
                      ),
                    ),
                  ],
                ),
                if (widget.trips.isNotEmpty) ...[
                  const SizedBox(height: 12),
                  DropdownButtonFormField<String?>(
                    initialValue: tripValue,
                    isExpanded: true,
                    decoration: InputDecoration(labelText: l.adminTrip),
                    items: [
                      DropdownMenuItem<String?>(value: null, child: Text(l.adminAllTrips)),
                      for (final t in widget.trips) DropdownMenuItem<String?>(value: t.id, child: Text(t.name)),
                    ],
                    onChanged: (v) => setState(() => _tripId = v),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
      actions: [
        TextButton(onPressed: saving ? null : () => Navigator.pop(context), child: Text(l.commonCancel)),
        ElevatedButton(
          onPressed: saving ? null : _save,
          child: Text(saving ? l.adminSaving : (isNew ? l.adminAdd : l.adminUpdate)),
        ),
      ],
    );
  }
}

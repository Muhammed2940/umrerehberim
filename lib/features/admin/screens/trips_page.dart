import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../models/trip_model.dart';
import '../providers/admin_provider.dart';
import '../utils/admin_helpers.dart';
import '../widgets/confirm_dialog.dart';
import '../widgets/date_picker_field.dart';

class TripsPage extends StatefulWidget {
  const TripsPage({super.key});

  @override
  State<TripsPage> createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage> {
  @override
  void initState() {
    super.initState();
    ensureAdminLoaded(context);
  }

  void _openForm([TripModel? trip]) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (_) => _TripForm(trip: trip),
    );
  }

  Future<void> _delete(TripModel trip) async {
    final ok = await showConfirmDialog(
      context,
      title: context.l10n.adminTripDelete,
      message: context.l10n.adminTripDeleteConfirm(trip.name),
    );
    if (ok && mounted) await context.read<AdminProvider>().deleteTrip(trip.id);
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l.adminMenuTrips)),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _openForm(),
        icon: const Icon(Icons.add),
        label: Text(l.adminTripCreate),
      ),
      body: Consumer<AdminProvider>(
        builder: (context, p, _) {
          if (p.isLoading && p.trips.isEmpty) return const Center(child: CircularProgressIndicator());
          return RefreshIndicator(
            onRefresh: p.refresh,
            child: p.trips.isEmpty
                ? ListView(children: [
                    const SizedBox(height: 80),
                    EmptyStateWidget(
                      icon: Icons.flight_takeoff,
                      message: l.adminTripEmpty,
                      subtitle: l.adminTripEmptySub,
                    ),
                  ])
                : ListView.builder(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 96),
                    itemCount: p.trips.length,
                    itemBuilder: (_, i) => _tripCard(p, p.trips[i]),
                  ),
          );
        },
      ),
    );
  }

  Widget _tripCard(AdminProvider p, TripModel t) {
    final l = context.l10n;
    final managers = p.getTripManagerUsers(t.id).map((u) => u.userName).join(', ');
    final guestCount = p.users.where((u) => u.mekkeSeferiId == t.id || u.medineSeferiId == t.id).length;
    final isMekke = t.location.toLowerCase() == 'mekke';
    return Card(
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 4, 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: isMekke ? AppColors.primaryLight : const Color(0xFFDAF1DE),
              child: Icon(isMekke ? Icons.mosque : Icons.location_city,
                  color: isMekke ? AppColors.primary : const Color(0xFF3B6E5C)),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(t.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 2),
                  Text(
                    '${t.location.isEmpty ? l.adminTripNoLocation : cityLabel(context, t.location)} • '
                    '${t.startDate == null ? l.adminNoDate : '${formatDate(t.startDate)} - ${formatDate(t.endDate)}'}',
                    style: const TextStyle(color: AppColors.textMuted, fontSize: 13),
                  ),
                  const SizedBox(height: 4),
                  Text('👥 ${l.adminTripAssignedCount(guestCount)}', style: const TextStyle(fontSize: 13)),
                  if (managers.isNotEmpty)
                    Text('👤 ${l.adminTripManagerLabel(managers)}', style: const TextStyle(fontSize: 13)),
                  if (t.note != null && t.note!.isNotEmpty)
                    Text('📋 ${t.note}', style: const TextStyle(fontSize: 13, color: AppColors.textMuted)),
                ],
              ),
            ),
            PopupMenuButton<String>(
              onSelected: (v) => v == 'edit' ? _openForm(t) : _delete(t),
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
}

class _TripForm extends StatefulWidget {
  final TripModel? trip;
  const _TripForm({this.trip});

  @override
  State<_TripForm> createState() => _TripFormState();
}

class _TripFormState extends State<_TripForm> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _name = TextEditingController(text: widget.trip?.name ?? '');
  late final TextEditingController _note = TextEditingController(text: widget.trip?.note ?? '');
  late String _location = cities.contains(widget.trip?.location) ? widget.trip!.location : 'Mekke';
  late DateTime? _start = widget.trip?.startDate;
  late DateTime? _end = widget.trip?.endDate;
  final Set<String> _managers = {};
  bool _dateError = false;

  @override
  void initState() {
    super.initState();
    final t = widget.trip;
    if (t != null) _managers.addAll(context.read<AdminProvider>().tripManagers[t.id] ?? const []);
  }

  @override
  void dispose() {
    _name.dispose();
    _note.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final valid = _formKey.currentState!.validate();
    setState(() => _dateError = _start == null || _end == null);
    if (!valid || _dateError) return;
    if (_end!.isBefore(_start!)) {
      GlobalSnackbar.showError(context.l10n.adminTripEndBeforeStart);
      return;
    }
    final p = context.read<AdminProvider>();
    final base = widget.trip;
    bool ok;
    if (base == null) {
      ok = await p.createTrip(
        TripModel(
          id: '',
          name: _name.text.trim(),
          location: _location,
          note: _note.text.trim(),
          startDate: _start,
          endDate: _end,
        ),
        managerIds: _managers.toList(),
      );
    } else {
      ok = await p.updateTrip(
        base.copyWith(
          name: _name.text.trim(),
          location: _location,
          note: _note.text.trim(),
          startDate: _start,
          endDate: _end,
        ),
        managerIds: _managers.toList(),
      );
    }
    if (ok && mounted) Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = context.watch<AdminProvider>();
    final managers = p.managerUsers;
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Form(
        key: _formKey,
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          children: [
            Text(widget.trip == null ? l.adminTripCreate : l.adminTripEdit,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            TextFormField(
              controller: _name,
              decoration: InputDecoration(labelText: l.adminTripNameRequired),
              validator: (v) => (v == null || v.trim().isEmpty) ? l.adminRequiredField : null,
            ),
            const SizedBox(height: 12),
            SegmentedButton<String>(
              segments: [for (final c in cities) ButtonSegment(value: c, label: Text(cityLabel(context, c)))],
              selected: {_location},
              onSelectionChanged: (s) => setState(() => _location = s.first),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: DatePickerField(
                    label: l.adminStartDate,
                    value: _start,
                    errorText: _dateError && _start == null ? l.adminRequiredField : null,
                    onChanged: (d) => setState(() => _start = d),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: DatePickerField(
                    label: l.adminEndDate,
                    value: _end,
                    firstDate: _start,
                    errorText: _dateError && _end == null ? l.adminRequiredField : null,
                    onChanged: (d) => setState(() => _end = d),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _note,
              maxLines: 2,
              decoration: InputDecoration(labelText: l.adminDescription),
            ),
            const SizedBox(height: 12),
            Text(l.adminTripManagersSelected(_managers.length), style: const TextStyle(fontWeight: FontWeight.w600)),
            const SizedBox(height: 6),
            if (managers.isEmpty)
              Text(l.adminTripNoManagers, style: const TextStyle(color: AppColors.textMuted))
            else
              Wrap(
                spacing: 6,
                runSpacing: 6,
                children: [
                  for (final m in managers)
                    FilterChip(
                      label: Text(m.userName),
                      selected: _managers.contains(m.id),
                      onSelected: (v) => setState(() => v ? _managers.add(m.id) : _managers.remove(m.id)),
                    ),
                ],
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: p.isSaving ? null : _save,
              child: Text(p.isSaving ? l.adminSaving : (widget.trip == null ? l.commonSave : l.adminUpdate)),
            ),
          ],
        ),
      ),
    );
  }
}

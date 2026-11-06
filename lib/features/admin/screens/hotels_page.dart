import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/locale_provider.dart';
import '../models/hotel_model.dart';
import '../providers/admin_provider.dart';
import '../utils/admin_helpers.dart';
import '../widgets/confirm_dialog.dart';
import '../widgets/hotel/hotel_card.dart';
import 'rooms_management_screen.dart';

class HotelsPage extends StatefulWidget {
  const HotelsPage({super.key});

  @override
  State<HotelsPage> createState() => _HotelsPageState();
}

class _HotelsPageState extends State<HotelsPage> {
  String? _cityFilter;

  @override
  void initState() {
    super.initState();
    ensureAdminLoaded(context);
  }

  void _openForm([HotelModel? hotel]) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (_) => _HotelForm(hotel: hotel),
    );
  }

  Future<void> _delete(HotelModel h) async {
    final ok = await showConfirmDialog(
      context,
      title: context.l10n.adminHotelDelete,
      message: context.l10n.adminHotelDeleteConfirm(h.name),
    );
    if (ok && mounted) await context.read<AdminProvider>().deleteHotel(h.id);
  }

  void _openRooms(HotelModel h) =>
      Navigator.push(context, MaterialPageRoute(builder: (_) => RoomsManagementScreen(hotel: h)));

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(t.adminMenuHotels)),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _openForm(),
        icon: const Icon(Icons.add),
        label: Text(t.adminHotelAdd),
      ),
      body: Consumer<AdminProvider>(
        builder: (context, p, _) {
          if (p.isLoading && p.hotels.isEmpty) return const Center(child: CircularProgressIndicator());
          final list = p.hotels.where((h) => _cityFilter == null || h.city == _cityFilter).toList();
          return RefreshIndicator(
            onRefresh: p.refresh,
            child: ListView(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 96),
              children: [
                Wrap(
                  spacing: 8,
                  children: [
                    ChoiceChip(
                      label: Text(t.adminFilterAll),
                      selected: _cityFilter == null,
                      onSelected: (_) => setState(() => _cityFilter = null),
                    ),
                    for (final c in cities)
                      ChoiceChip(
                        label: Text(cityLabel(context, c)),
                        selected: _cityFilter == c,
                        onSelected: (_) => setState(() => _cityFilter = c),
                      ),
                  ],
                ),
                const SizedBox(height: 8),
                if (list.isEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: EmptyStateWidget(icon: Icons.hotel, message: t.adminHotelEmpty),
                  )
                else
                  for (final h in list)
                    HotelCard(
                      hotel: h,
                      provider: p,
                      onTap: () => _openRooms(h),
                      onEdit: () => _openForm(h),
                      onDelete: () => _delete(h),
                    ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _HotelForm extends StatefulWidget {
  final HotelModel? hotel;
  const _HotelForm({this.hotel});

  @override
  State<_HotelForm> createState() => _HotelFormState();
}

class _HotelFormState extends State<_HotelForm> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _name = TextEditingController(text: widget.hotel?.name ?? '');
  late final TextEditingController _address = TextEditingController(text: widget.hotel?.address ?? '');
  late final TextEditingController _capacity =
      TextEditingController(text: widget.hotel == null ? '' : '${widget.hotel!.capacity}');
  late String _city = cities.contains(widget.hotel?.city) ? widget.hotel!.city : 'Mekke';
  late String? _tripId = widget.hotel?.tripId;

  @override
  void dispose() {
    _name.dispose();
    _address.dispose();
    _capacity.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    final p = context.read<AdminProvider>();
    final cap = int.tryParse(_capacity.text.trim()) ?? 0;
    final base = widget.hotel;
    bool ok;
    if (base == null) {
      ok = await p.createHotel(HotelModel(
        id: '',
        name: _name.text.trim(),
        city: _city,
        address: _address.text.trim(),
        tripId: _tripId,
        capacity: cap,
      ));
    } else {
      ok = await p.updateHotel(HotelModel(
        id: base.id,
        name: _name.text.trim(),
        city: _city,
        address: _address.text.trim(),
        tripId: _tripId,
        agencyId: base.agencyId,
        capacity: cap,
        createdAt: base.createdAt,
      ));
    }
    if (ok && mounted) Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = context.watch<AdminProvider>();
    final trips = p.trips.where((t) => t.location == _city || t.location.isEmpty).toList();
    final tripValue = trips.any((t) => t.id == _tripId) ? _tripId : null;
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Form(
        key: _formKey,
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          children: [
            Text(widget.hotel == null ? l.adminHotelAdd : l.adminHotelEdit,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            TextFormField(
              controller: _name,
              decoration: InputDecoration(labelText: l.adminHotelNameRequired),
              validator: (v) => (v == null || v.trim().isEmpty) ? l.adminRequiredField : null,
            ),
            const SizedBox(height: 12),
            SegmentedButton<String>(
              segments: [for (final c in cities) ButtonSegment(value: c, label: Text(cityLabel(context, c)))],
              selected: {_city},
              onSelectionChanged: (s) => setState(() {
                _city = s.first;
                _tripId = null;
              }),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String?>(
              key: ValueKey('hotel-trip-$_city-$tripValue'),
              initialValue: tripValue,
              isExpanded: true,
              decoration: InputDecoration(labelText: l.adminTrip),
              items: [
                DropdownMenuItem<String?>(value: null, child: Text(l.adminNotSelected)),
                for (final t in trips) DropdownMenuItem<String?>(value: t.id, child: Text(t.name)),
              ],
              onChanged: (v) => setState(() => _tripId = v),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _capacity,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(labelText: l.adminCapacityRequired),
              validator: (v) => (int.tryParse(v?.trim() ?? '') ?? 0) <= 0 ? l.adminCapacityInvalid : null,
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _address,
              maxLines: 2,
              decoration: InputDecoration(labelText: l.adminAddress),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: p.isSaving ? null : _save,
              child: Text(p.isSaving ? l.adminSaving : (widget.hotel == null ? l.commonSave : l.adminUpdate)),
            ),
          ],
        ),
      ),
    );
  }
}

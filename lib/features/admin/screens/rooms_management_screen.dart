import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../models/hotel_model.dart';
import '../models/room_model.dart';
import '../providers/admin_provider.dart';
import '../utils/admin_helpers.dart';
import '../widgets/confirm_dialog.dart';

/// Bir otelin odaları: ekle / düzenle / sil, odadaki kişiler.
class RoomsManagementScreen extends StatelessWidget {
  final HotelModel hotel;
  const RoomsManagementScreen({super.key, required this.hotel});

  void _openForm(BuildContext context, [RoomModel? room]) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (_) => _RoomForm(hotel: hotel, room: room),
    );
  }

  Future<void> _delete(BuildContext context, RoomModel r) async {
    final ok = await showConfirmDialog(
      context,
      title: context.l10n.adminRoomDelete,
      message: context.l10n.adminRoomDeleteConfirm(r.roomNumber),
    );
    if (ok && context.mounted) await context.read<AdminProvider>().deleteRoom(r.id);
  }

  void _showOccupants(BuildContext context, RoomModel r) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (_) => _RoomOccupants(room: r),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l.adminRoomsOfHotel(hotel.name))),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _openForm(context),
        icon: const Icon(Icons.add),
        label: Text(l.adminRoomAdd),
      ),
      body: Consumer<AdminProvider>(
        builder: (context, p, _) {
          final rooms = p.roomsOfHotel(hotel.id);
          if (rooms.isEmpty) {
            return EmptyStateWidget(icon: Icons.meeting_room, message: l.adminRoomEmpty);
          }
          return ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 96),
            itemCount: rooms.length,
            itemBuilder: (_, i) {
              final r = rooms[i];
              final occ = p.usersInRoom(r.id).length;
              final full = r.capacity > 0 && occ >= r.capacity;
              return Card(
                child: ListTile(
                  onTap: () => _showOccupants(context, r),
                  leading: CircleAvatar(
                    backgroundColor: full ? const Color(0xFFFFEBEE) : AppColors.primaryLight,
                    child: Text(r.roomNumber,
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: full ? AppColors.error : AppColors.primary)),
                  ),
                  title: Text(l.adminRoomNumber(r.roomNumber), style: const TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: Text([
                    l.adminRoomOccupancy(occ, r.capacity),
                    if (r.gender != null && r.gender!.isNotEmpty) genderLabel(context, r.gender!),
                    if (r.note != null && r.note!.isNotEmpty) l.adminNoteValue(r.note!),
                  ].join(' • ')),
                  trailing: PopupMenuButton<String>(
                    onSelected: (v) => v == 'edit' ? _openForm(context, r) : _delete(context, r),
                    itemBuilder: (_) => [
                      PopupMenuItem(
                          value: 'edit', child: ListTile(leading: const Icon(Icons.edit), title: Text(l.commonEdit))),
                      PopupMenuItem(
                          value: 'delete',
                          child: ListTile(
                              leading: const Icon(Icons.delete, color: AppColors.error), title: Text(l.commonDelete))),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class _RoomOccupants extends StatelessWidget {
  final RoomModel room;
  const _RoomOccupants({required this.room});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = context.watch<AdminProvider>();
    final users = p.usersInRoom(room.id);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l.adminRoomOccupantsTitle(room.roomNumber),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          if (users.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Center(child: Text(l.adminRoomNoOccupants)),
            )
          else
            Flexible(
              child: ListView(
                shrinkWrap: true,
                children: [
                  for (final u in users)
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: Text(u.userName),
                      subtitle: Text(
                          '${u.mekkeOdaId == room.id ? l.commonMecca : l.commonMedina} • ${u.cinsiyet == null ? '-' : genderLabel(context, u.cinsiyet!)}'),
                      trailing: IconButton(
                        tooltip: l.adminRoomRemoveUser,
                        icon: const Icon(Icons.person_remove, color: AppColors.error),
                        onPressed: () async {
                          final ok = await showConfirmDialog(
                            context,
                            title: l.adminRoomRemoveUser,
                            message: l.adminRoomRemoveUserConfirm(u.userName),
                            confirmText: l.adminRemove,
                          );
                          if (ok && context.mounted) {
                            await context.read<AdminProvider>().removeUserFromRoom(u, room.id);
                          }
                        },
                      ),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _RoomForm extends StatefulWidget {
  final HotelModel hotel;
  final RoomModel? room;
  const _RoomForm({required this.hotel, this.room});

  @override
  State<_RoomForm> createState() => _RoomFormState();
}

class _RoomFormState extends State<_RoomForm> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _number = TextEditingController(text: widget.room?.roomNumber ?? '');
  late final TextEditingController _capacity =
      TextEditingController(text: widget.room == null ? '' : '${widget.room!.capacity}');
  late final TextEditingController _note = TextEditingController(text: widget.room?.note ?? '');
  late String? _gender = roomGenders.contains(widget.room?.gender) ? widget.room!.gender : null;

  @override
  void dispose() {
    _number.dispose();
    _capacity.dispose();
    _note.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    final p = context.read<AdminProvider>();
    final cap = int.parse(_capacity.text.trim());
    final base = widget.room;
    bool ok;
    if (base == null) {
      ok = await p.createRoom(RoomModel(
        id: '',
        hotelId: widget.hotel.id,
        roomNumber: _number.text.trim(),
        capacity: cap,
        gender: _gender,
        note: _note.text.trim(),
      ));
    } else {
      ok = await p.updateRoom(base.copyWith(
        roomNumber: _number.text.trim(),
        capacity: cap,
        gender: _gender,
        note: _note.text.trim(),
      ));
    }
    if (ok && mounted) Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = context.watch<AdminProvider>();
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Form(
        key: _formKey,
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          children: [
            Text(widget.room == null ? l.adminRoomAdd : l.adminRoomEdit,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            TextFormField(
              controller: _number,
              decoration: InputDecoration(labelText: l.adminRoomNumberRequired),
              validator: (v) => (v == null || v.trim().isEmpty) ? l.adminRoomNumberMissing : null,
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
            DropdownButtonFormField<String>(
              initialValue: _gender,
              decoration: InputDecoration(labelText: l.adminGenderRequired),
              items: [
                for (final g in roomGenders) DropdownMenuItem(value: g, child: Text(genderLabel(context, g))),
              ],
              onChanged: (v) => setState(() => _gender = v),
              validator: (v) => v == null ? l.adminRoomGenderMissing : null,
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _note,
              decoration: InputDecoration(labelText: l.adminNote),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: p.isSaving ? null : _save,
              child: Text(p.isSaving
                  ? (widget.room == null ? l.adminSaving : l.adminUpdating)
                  : (widget.room == null ? l.commonSave : l.adminUpdate)),
            ),
          ],
        ),
      ),
    );
  }
}

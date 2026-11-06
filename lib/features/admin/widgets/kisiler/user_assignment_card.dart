import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/locale_provider.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/global_snackbar.dart';
import '../../../auth/models/user_model.dart';
import '../../models/hotel_model.dart';
import '../../models/room_model.dart';
import '../../models/trip_model.dart';
import '../../providers/admin_provider.dart';
import '../../utils/admin_helpers.dart';

/// Bir şehir (Mekke / Medine) için sefer - otel - oda ataması.
class UserAssignmentCard extends StatefulWidget {
  final UserModel user;
  final String city; // 'Mekke' | 'Medine'

  const UserAssignmentCard({super.key, required this.user, required this.city});

  @override
  State<UserAssignmentCard> createState() => UserAssignmentCardState();
}

class UserAssignmentCardState extends State<UserAssignmentCard> {
  String? _tripId;
  String? _hotelId;
  String? _roomId;

  bool get _isMekke => widget.city == 'Mekke';

  @override
  void initState() {
    super.initState();
    _updateSelectedValues();
  }

  void _updateSelectedValues() {
    final u = widget.user;
    _tripId = _isMekke ? u.mekkeSeferiId : u.medineSeferiId;
    _hotelId = _isMekke ? u.mekkeOtelId : u.medineOtelId;
    _roomId = _isMekke ? u.mekkeOdaId : u.medineOdaId;
  }

  int _getRoomOccupancy(AdminProvider p, RoomModel room) =>
      p.usersInRoom(room.id).where((u) => u.id != widget.user.id).length;

  bool _isRoomAvailable(AdminProvider p, RoomModel room) =>
      room.capacity <= 0 || _getRoomOccupancy(p, room) < room.capacity;

  bool _isGenderCompatible(RoomModel room) {
    final g = room.gender;
    if (g == null || g.isEmpty || g == 'Karma') return true;
    final ug = widget.user.cinsiyet;
    if (ug == null || ug.isEmpty) return true;
    return g == ug;
  }

  Future<void> _save(AdminProvider p) async {
    final l = context.l10n;
    if (_hotelId != null && _roomId == null) {
      GlobalSnackbar.showError(l.adminAssignRoomRequired);
      return;
    }
    final room = p.roomById(_roomId);
    if (room != null) {
      final current = _isMekke ? widget.user.mekkeOdaId : widget.user.medineOdaId;
      if (room.id != current && !_isRoomAvailable(p, room)) {
        GlobalSnackbar.showError(l.adminAssignRoomFull);
        return;
      }
      if (!_isGenderCompatible(room)) {
        GlobalSnackbar.showError(l.adminAssignGenderMismatch(genderLabel(context, room.gender!)));
        return;
      }
    }
    await p.assignUser(widget.user, city: widget.city, tripId: _tripId, hotelId: _hotelId, roomId: _roomId);
  }

  @override
  Widget build(BuildContext context) {
    final p = context.watch<AdminProvider>();
    final trips = p.trips.where((t) => _sameCity(t.location)).toList();
    if (trips.isEmpty) trips.addAll(p.trips); // şehir bilgisi girilmemiş eski veriler için
    final hotels = p.hotels
        .where((h) => (h.city.isEmpty || _sameCity(h.city)) &&(h.tripId == null || h.tripId!.isEmpty || _tripId == null || h.tripId == _tripId))
        .toList();
    final rooms = _hotelId == null ? <RoomModel>[] : p.roomsOfHotel(_hotelId!);

    // Listede olmayan seçimleri temizle (silinmiş kayıtlar).
    final tripValue = trips.any((t) => t.id == _tripId) ? _tripId : null;
    final hotelValue = hotels.any((h) => h.id == _hotelId) ? _hotelId : null;
    final roomValue = rooms.any((r) => r.id == _roomId) ? _roomId : null;
    final saving = p.isUserSaving(widget.user.id);
    final l = context.l10n;
    final city = cityLabel(context, widget.city);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(l.adminAssignTitle(city),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: AppColors.primaryDark)),
          const SizedBox(height: 12),
          DropdownButtonFormField<String?>(
            key: ValueKey('trip-${widget.city}-$tripValue'),
            initialValue: tripValue,
            isExpanded: true,
            decoration: InputDecoration(labelText: l.adminAssignTrip(city), prefixIcon: const Icon(Icons.flight)),
            items: [
              DropdownMenuItem<String?>(value: null, child: Text(l.adminNotSelected)),
              for (final TripModel t in trips) DropdownMenuItem<String?>(value: t.id, child: Text(t.name)),
            ],
            onChanged: (v) => setState(() {
              _tripId = v;
              final h = p.hotelById(_hotelId);
              if (h != null && h.tripId != null && h.tripId!.isNotEmpty && h.tripId != v) {
                _hotelId = null;
                _roomId = null;
              }
            }),
          ),
          const SizedBox(height: 12),
          DropdownButtonFormField<String?>(
            key: ValueKey('hotel-${widget.city}-$hotelValue-$tripValue'),
            initialValue: hotelValue,
            isExpanded: true,
            decoration: InputDecoration(labelText: l.adminAssignHotel(city), prefixIcon: const Icon(Icons.hotel)),
            items: [
              DropdownMenuItem<String?>(value: null, child: Text(l.adminNotSelected)),
              for (final HotelModel h in hotels) DropdownMenuItem<String?>(value: h.id, child: Text(h.name)),
            ],
            onChanged: (v) => setState(() {
              _hotelId = v;
              _roomId = null;
            }),
          ),
          const SizedBox(height: 12),
          DropdownButtonFormField<String?>(
            key: ValueKey('room-${widget.city}-$roomValue-$hotelValue'),
            initialValue: roomValue,
            isExpanded: true,
            decoration:
                InputDecoration(labelText: l.adminAssignRoom(city), prefixIcon: const Icon(Icons.meeting_room)),
            items: [
              DropdownMenuItem<String?>(value: null, child: Text(l.adminNotSelected)),
              for (final r in rooms)
                DropdownMenuItem<String?>(
                  value: r.id,
                  child: Text(
                    '${l.adminRoomNumber(r.roomNumber)} • ${l.adminPeopleRatio(_getRoomOccupancy(p, r), r.capacity)}'
                    '${r.gender != null && r.gender!.isNotEmpty ? ' • ${genderLabel(context, r.gender!)}' : ''}',
                    style: TextStyle(
                      color: _isRoomAvailable(p, r) && _isGenderCompatible(r) ? AppColors.text : AppColors.error,
                    ),
                  ),
                ),
            ],
            onChanged: _hotelId == null ? null : (v) => setState(() => _roomId = v),
          ),
          const SizedBox(height: 16),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: ElevatedButton.icon(
              onPressed: saving ? null : () => _save(p),
              icon: saving
                  ? const SizedBox(
                      width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                  : const Icon(Icons.save),
              label: Text(saving ? l.adminSaving : l.commonSave),
            ),
          ),
        ],
      ),
    );
  }

  bool _sameCity(String value) => value.trim().toLowerCase() == widget.city.toLowerCase();
}

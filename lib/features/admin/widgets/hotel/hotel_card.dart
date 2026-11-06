import 'package:flutter/material.dart';

import '../../../../core/providers/locale_provider.dart';
import '../../../../core/theme/app_theme.dart';
import '../../models/hotel_model.dart';
import '../../providers/admin_provider.dart';
import '../../utils/admin_helpers.dart';

class HotelCard extends StatelessWidget {
  final HotelModel hotel;
  final AdminProvider provider;
  final VoidCallback onTap;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const HotelCard({
    super.key,
    required this.hotel,
    required this.provider,
    required this.onTap,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final rooms = provider.roomsOfHotel(hotel.id);
    final roomCapacity = rooms.fold<int>(0, (s, r) => s + r.capacity);
    final occupied = rooms.fold<int>(0, (s, r) => s + provider.usersInRoom(r.id).length);
    final trip = provider.tripById(hotel.tripId);
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 4, 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundColor: Color(0xFFDAF1DE),
                child: Icon(Icons.hotel, color: Color(0xFF163832)),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(hotel.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(
                      [
                        cityLabel(context, hotel.city),
                        if (trip != null) trip.name,
                        l.adminHotelCapacityShort(hotel.capacity),
                      ].where((s) => s.isNotEmpty).join(' • '),
                      style: const TextStyle(color: AppColors.textMuted, fontSize: 13),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      rooms.isEmpty
                          ? l.adminRoomEmpty
                          : '${l.adminRoomCount(rooms.length)} • ${l.adminRoomOccupancy(occupied, roomCapacity)}',
                      style: const TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ),
              PopupMenuButton<String>(
                onSelected: (v) {
                  if (v == 'rooms') onTap();
                  if (v == 'edit') onEdit();
                  if (v == 'delete') onDelete();
                },
                itemBuilder: (_) => [
                  PopupMenuItem(
                      value: 'rooms',
                      child: ListTile(leading: const Icon(Icons.meeting_room), title: Text(l.adminRooms))),
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
      ),
    );
  }
}

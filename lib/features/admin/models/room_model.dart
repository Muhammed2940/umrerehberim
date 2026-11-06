import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../core/utils/firestore_utils.dart';

class RoomModel {
  final String id;
  final String hotelId;
  final String roomNumber;
  final int capacity;
  final String? gender;
  final String? note;
  final String? agencyId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const RoomModel({
    required this.id,
    required this.hotelId,
    required this.roomNumber,
    required this.capacity,
    this.gender,
    this.note,
    this.agencyId,
    this.createdAt,
    this.updatedAt,
  });

  factory RoomModel.fromMap(String id, Map<String, dynamic> d) => RoomModel(
        id: id,
        hotelId: toStr(d['hotel_id'], ''),
        roomNumber: toStr(d['room_number'], ''),
        capacity: toInt(d['capacity']),
        gender: d['gender']?.toString(),
        note: d['note']?.toString(),
        agencyId: d['agency_id']?.toString(),
        createdAt: toDateTime(d['created_at']),
        updatedAt: toDateTime(d['updated_at']),
      );

  factory RoomModel.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) =>
      RoomModel.fromMap(doc.id, doc.data() ?? {});

  factory RoomModel.fromJson(Map<String, dynamic> j) => RoomModel.fromMap(toStr(j['id']), j);

  Map<String, dynamic> toFirestore({bool isNew = false}) => {
        'hotel_id': hotelId,
        'room_number': roomNumber,
        'capacity': capacity,
        'gender': gender,
        'note': note,
        'agency_id': agencyId,
        if (isNew) 'created_at': FieldValue.serverTimestamp(),
        'updated_at': FieldValue.serverTimestamp(),
      };

  Map<String, dynamic> toJson() => {
        'id': id,
        'hotel_id': hotelId,
        'room_number': roomNumber,
        'capacity': capacity,
        'gender': gender,
        'note': note,
        'agency_id': agencyId,
        'created_at': dateToJson(createdAt),
        'updated_at': dateToJson(updatedAt),
      };

  RoomModel copyWith({
    String? hotelId,
    String? roomNumber,
    int? capacity,
    String? gender,
    String? note,
    String? agencyId,
  }) =>
      RoomModel(
        id: id,
        hotelId: hotelId ?? this.hotelId,
        roomNumber: roomNumber ?? this.roomNumber,
        capacity: capacity ?? this.capacity,
        gender: gender ?? this.gender,
        note: note ?? this.note,
        agencyId: agencyId ?? this.agencyId,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

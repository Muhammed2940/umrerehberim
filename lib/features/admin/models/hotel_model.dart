import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../core/utils/firestore_utils.dart';

class HotelModel {
  final String id;
  final String name;
  final String city;
  final String? address;
  final String? tripId;
  final String? agencyId;
  final int capacity;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const HotelModel({
    required this.id,
    required this.name,
    required this.city,
    this.address,
    this.tripId,
    this.agencyId,
    required this.capacity,
    this.createdAt,
    this.updatedAt,
  });

  factory HotelModel.fromMap(String id, Map<String, dynamic> d) => HotelModel(
        id: id,
        name: toStr(d['name'], ''),
        city: toStr(d['city'], ''),
        address: d['address']?.toString(),
        tripId: d['trip_id']?.toString(),
        agencyId: d['agency_id']?.toString(),
        capacity: toInt(d['capacity']),
        createdAt: toDateTime(d['created_at']),
        updatedAt: toDateTime(d['updated_at']),
      );

  factory HotelModel.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) =>
      HotelModel.fromMap(doc.id, doc.data() ?? {});

  factory HotelModel.fromJson(Map<String, dynamic> j) => HotelModel.fromMap(toStr(j['id']), j);

  Map<String, dynamic> toFirestore({bool isNew = false}) => {
        'name': name,
        'city': city,
        'address': address,
        'trip_id': tripId,
        'agency_id': agencyId,
        'capacity': capacity,
        if (isNew) 'created_at': FieldValue.serverTimestamp(),
        'updated_at': FieldValue.serverTimestamp(),
      };

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'city': city,
        'address': address,
        'trip_id': tripId,
        'agency_id': agencyId,
        'capacity': capacity,
        'created_at': dateToJson(createdAt),
        'updated_at': dateToJson(updatedAt),
      };

  HotelModel copyWith({
    String? name,
    String? city,
    String? address,
    String? tripId,
    String? agencyId,
    int? capacity,
  }) =>
      HotelModel(
        id: id,
        name: name ?? this.name,
        city: city ?? this.city,
        address: address ?? this.address,
        tripId: tripId ?? this.tripId,
        agencyId: agencyId ?? this.agencyId,
        capacity: capacity ?? this.capacity,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../core/utils/firestore_utils.dart';

class TripModel {
  final String id;
  final String name;
  final String location;
  final String? note;
  final String? agencyId;
  final DateTime? startDate;
  final DateTime? endDate;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const TripModel({
    required this.id,
    required this.name,
    required this.location,
    this.note,
    this.agencyId,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  factory TripModel.fromMap(String id, Map<String, dynamic> d) => TripModel(
        id: id,
        name: toStr(d['name'], ''),
        location: toStr(d['location'], ''),
        note: d['note']?.toString(),
        agencyId: d['agency_id']?.toString(),
        startDate: toDateTime(d['start_date']),
        endDate: toDateTime(d['end_date']),
        createdAt: toDateTime(d['created_at']),
        updatedAt: toDateTime(d['updated_at']),
      );

  factory TripModel.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) =>
      TripModel.fromMap(doc.id, doc.data() ?? {});

  factory TripModel.fromJson(Map<String, dynamic> j) => TripModel.fromMap(toStr(j['id']), j);

  Map<String, dynamic> toFirestore({bool isNew = false}) => {
        'name': name,
        'location': location,
        'note': note,
        'agency_id': agencyId,
        'start_date': startDate == null ? null : Timestamp.fromDate(startDate!),
        'end_date': endDate == null ? null : Timestamp.fromDate(endDate!),
        if (isNew) 'created_at': FieldValue.serverTimestamp(),
        'updated_at': FieldValue.serverTimestamp(),
      };

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'location': location,
        'note': note,
        'agency_id': agencyId,
        'start_date': dateToJson(startDate),
        'end_date': dateToJson(endDate),
        'created_at': dateToJson(createdAt),
        'updated_at': dateToJson(updatedAt),
      };

  TripModel copyWith({
    String? name,
    String? location,
    String? note,
    String? agencyId,
    DateTime? startDate,
    DateTime? endDate,
  }) =>
      TripModel(
        id: id,
        name: name ?? this.name,
        location: location ?? this.location,
        note: note ?? this.note,
        agencyId: agencyId ?? this.agencyId,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

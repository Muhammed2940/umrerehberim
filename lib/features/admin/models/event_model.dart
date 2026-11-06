import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../core/utils/firestore_utils.dart';

class EventModel {
  final String id;
  final String title;
  final String? description;
  final DateTime? date;
  final String time;
  final int duration;
  final String? tripId;
  final String? agencyId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const EventModel({
    required this.id,
    required this.title,
    this.description,
    this.date,
    required this.time,
    required this.duration,
    this.tripId,
    this.agencyId,
    this.createdAt,
    this.updatedAt,
  });

  factory EventModel.fromMap(String id, Map<String, dynamic> d) => EventModel(
        id: id,
        title: toStr(d['title'], ''),
        description: d['description']?.toString(),
        date: toDateTime(d['date']),
        time: toStr(d['time'], '09:00'),
        duration: toInt(d['duration']),
        tripId: d['trip_id']?.toString(),
        agencyId: d['agency_id']?.toString(),
        createdAt: toDateTime(d['created_at']),
        updatedAt: toDateTime(d['updated_at']),
      );

  factory EventModel.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) =>
      EventModel.fromMap(doc.id, doc.data() ?? {});

  factory EventModel.fromJson(Map<String, dynamic> j) => EventModel.fromMap(toStr(j['id']), j);

  Map<String, dynamic> toFirestore({bool isNew = false}) => {
        'title': title,
        'description': description,
        'date': date == null ? null : Timestamp.fromDate(date!),
        'time': time,
        'duration': duration,
        'trip_id': tripId,
        'agency_id': agencyId,
        if (isNew) 'created_at': FieldValue.serverTimestamp(),
        'updated_at': FieldValue.serverTimestamp(),
      };

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'date': dateToJson(date),
        'time': time,
        'duration': duration,
        'trip_id': tripId,
        'agency_id': agencyId,
        'created_at': dateToJson(createdAt),
        'updated_at': dateToJson(updatedAt),
      };

  EventModel copyWith({
    String? title,
    String? description,
    DateTime? date,
    String? time,
    int? duration,
    String? tripId,
    String? agencyId,
  }) =>
      EventModel(
        id: id,
        title: title ?? this.title,
        description: description ?? this.description,
        date: date ?? this.date,
        time: time ?? this.time,
        duration: duration ?? this.duration,
        tripId: tripId ?? this.tripId,
        agencyId: agencyId ?? this.agencyId,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

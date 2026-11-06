import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../core/utils/firestore_utils.dart';

class NotificationModel {
  final String id;
  final String title;
  final String message;
  final String? userToken;
  final String? agencyId;
  /// Doluysa duyuru yalnızca bu seferdeki misafirlere yöneliktir.
  final String? tripId;
  final DateTime? createdAt;

  const NotificationModel({
    required this.id,
    required this.title,
    required this.message,
    this.userToken,
    this.agencyId,
    this.tripId,
    this.createdAt,
  });

  factory NotificationModel.fromMap(String id, Map<String, dynamic> d) => NotificationModel(
        id: id,
        title: toStr(d['title'], ''),
        message: toStr(d['message'], ''),
        userToken: d['user_token']?.toString(),
        agencyId: d['agency_id']?.toString(),
        tripId: d['trip_id']?.toString(),
        createdAt: toDateTime(d['created_at']),
      );

  factory NotificationModel.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) =>
      NotificationModel.fromMap(doc.id, doc.data() ?? {});

  factory NotificationModel.fromJson(Map<String, dynamic> j) => NotificationModel.fromMap(toStr(j['id']), j);

  Map<String, dynamic> toFirestore({bool isNew = false}) => {
        'title': title,
        'message': message,
        'user_token': userToken,
        'agency_id': agencyId,
        if (tripId != null) 'trip_id': tripId,
        if (isNew) 'created_at': FieldValue.serverTimestamp(),
      };

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'message': message,
        'user_token': userToken,
        'agency_id': agencyId,
        'trip_id': tripId,
        'created_at': dateToJson(createdAt),
      };

  NotificationModel copyWith({
    String? title,
    String? message,
    String? userToken,
    String? agencyId,
  }) =>
      NotificationModel(
        id: id,
        title: title ?? this.title,
        message: message ?? this.message,
        userToken: userToken ?? this.userToken,
        agencyId: agencyId ?? this.agencyId,
        tripId: tripId,
        createdAt: createdAt,
      );
}

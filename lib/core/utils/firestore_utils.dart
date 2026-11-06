import 'package:cloud_firestore/cloud_firestore.dart';

/// Firestore'dan gelen tarih alanlarını güvenle DateTime'a çevirir.
DateTime? toDateTime(dynamic value) {
  if (value == null) return null;
  if (value is Timestamp) return value.toDate();
  if (value is DateTime) return value;
  if (value is String) return DateTime.tryParse(value);
  if (value is int) return DateTime.fromMillisecondsSinceEpoch(value);
  return null;
}

int toInt(dynamic value, [int fallback = 0]) {
  if (value is int) return value;
  if (value is num) return value.toInt();
  if (value is String) return int.tryParse(value) ?? fallback;
  return fallback;
}

String toStr(dynamic value, [String fallback = '']) =>
    value == null ? fallback : value.toString();

/// JSON (SharedPreferences önbelleği) için tarihi ISO metne çevirir.
String? dateToJson(DateTime? d) => d?.toIso8601String();

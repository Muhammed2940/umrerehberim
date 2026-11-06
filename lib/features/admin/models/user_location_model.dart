import '../../../core/providers/locale_provider.dart';

/// Realtime Database: locations/{agencyId}/{userId} => {latitude, longitude, timestamp(ms), userName, accuracy}
class UserLocationModel {
  final String userId;
  final String userName;
  final String? agencyId;
  final double latitude;
  final double longitude;
  final DateTime timestamp;
  final double? accuracy;

  const UserLocationModel({
    required this.userId,
    required this.userName,
    this.agencyId,
    required this.latitude,
    required this.longitude,
    required this.timestamp,
    this.accuracy,
  });

  /// Son güncelleme 15 dakikadan eskiyse (haritada gri gösterilir).
  bool get isStale => DateTime.now().difference(timestamp) > const Duration(minutes: 15);

  factory UserLocationModel.fromRtdb(String userId, Map<dynamic, dynamic> d,
          {String? userName, String? agencyId}) =>
      UserLocationModel(
        userId: userId,
        userName: (d['userName'] is String && (d['userName'] as String).trim().isNotEmpty)
            ? (d['userName'] as String).trim()
            : (userName ?? l10n.homeUnknown),
        agencyId: agencyId,
        accuracy: (d['accuracy'] as num?)?.toDouble(),
        latitude: (d['latitude'] as num?)?.toDouble() ?? 0,
        longitude: (d['longitude'] as num?)?.toDouble() ?? 0,
        timestamp: d['timestamp'] is num
            ? DateTime.fromMillisecondsSinceEpoch((d['timestamp'] as num).toInt())
            : DateTime.tryParse('${d['timestamp']}') ?? DateTime.now(),
      );

  Map<String, dynamic> toRtdb() => {
        'latitude': latitude,
        'longitude': longitude,
        'timestamp': timestamp.millisecondsSinceEpoch,
      };
}

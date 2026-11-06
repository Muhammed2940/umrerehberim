import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/providers/locale_provider.dart';

/// `telsiz/{agencyId}_{tripId|all}` belgesi: bir rehber yayınının durumu.
class TelsizBroadcast {
  /// `trip_id` alanında "Tüm acente" yayını için kullanılan değer.
  static const String allTrips = 'all';

  /// Bu süreden eski `updated_at` "yayında değil" sayılır (uygulama çökmüş olabilir).
  static const Duration staleAfter = Duration(minutes: 3);

  final String id;
  final String agencyId;
  final String tripId;
  final String room;
  final String guideId;
  final String guideName;
  final bool live;
  final DateTime? startedAt;
  final DateTime? updatedAt;

  const TelsizBroadcast({
    required this.id,
    required this.agencyId,
    required this.tripId,
    required this.room,
    required this.guideId,
    required this.guideName,
    required this.live,
    this.startedAt,
    this.updatedAt,
  });

  static String docId(String agencyId, String tripId) => '${agencyId}_$tripId';
  static String roomName(String agencyId, String tripId) => 'telsiz_${agencyId}_$tripId';

  bool get isAllAgency => tripId == allTrips;

  /// Gerçekten yayında mı: `live == true` ve son 3 dakikada yenilenmiş.
  bool isActive([DateTime? now]) {
    if (!live) return false;
    final u = updatedAt;
    if (u == null) return true; // sunucu zamanı henüz yazılmadı (yerel bekleyen yazım)
    return (now ?? DateTime.now()).difference(u) < staleAfter;
  }

  factory TelsizBroadcast.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    final d = doc.data() ?? const <String, dynamic>{};
    DateTime? ts(Object? v) => v is Timestamp ? v.toDate() : null;
    final agency = d['agency_id'] as String? ?? '';
    final trip = d['trip_id'] as String? ?? allTrips;
    return TelsizBroadcast(
      id: doc.id,
      agencyId: agency,
      tripId: trip,
      room: d['room'] as String? ?? roomName(agency, trip),
      guideId: d['guide_id'] as String? ?? '',
      guideName: d['guide_name'] as String? ?? l10n.telsizGuide,
      live: d['live'] == true,
      startedAt: ts(d['started_at']),
      updatedAt: ts(d['updated_at']),
    );
  }
}

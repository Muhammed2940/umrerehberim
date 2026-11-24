import 'package:cloud_firestore/cloud_firestore.dart';

/// `tracking_links/{hash}` belgesi (docs/plan/AILE_TAKIBI_SOZLESME.md). Belge id'si = sha256(token).
class TrackingLink {
  final String hash;
  final String ownerUid;
  final String kind; // 'bireysel' | 'acente'
  final String agencyId;
  final String label;
  final bool approx;
  final DateTime? hiddenUntil;
  final bool revoked;
  final DateTime? createdAt;
  final DateTime expiresAt;

  const TrackingLink({
    required this.hash,
    required this.ownerUid,
    required this.kind,
    required this.agencyId,
    required this.label,
    required this.approx,
    required this.hiddenUntil,
    required this.revoked,
    required this.createdAt,
    required this.expiresAt,
  });

  factory TrackingLink.fromDoc(String hash, Map<String, dynamic> d) {
    DateTime? ts(dynamic v) => v is Timestamp ? v.toDate() : null;
    return TrackingLink(
      hash: hash,
      ownerUid: (d['owner_uid'] as String?) ?? '',
      kind: (d['kind'] as String?) ?? 'bireysel',
      agencyId: (d['agency_id'] as String?) ?? '',
      label: (d['label'] as String?) ?? '',
      approx: d['approx'] == true,
      hiddenUntil: ts(d['hidden_until']),
      revoked: d['revoked'] == true,
      createdAt: ts(d['created_at']),
      expiresAt: ts(d['expires_at']) ?? DateTime.fromMillisecondsSinceEpoch(0),
    );
  }

  bool isExpired([DateTime? now]) => !expiresAt.isAfter(now ?? DateTime.now());

  /// Etkin: iptal edilmemiş ve süresi dolmamış (5 bağlantı sınırına sayılır).
  bool isActive([DateTime? now]) => !revoked && !isExpired(now);

  bool isHidden([DateTime? now]) => hiddenUntil != null && hiddenUntil!.isAfter(now ?? DateTime.now());
}

/// `tracking_links/{hash}/views/{visitorKey}`: web sunucusu yazar, sahibi okur.
class TrackingView {
  final DateTime? firstAt;
  final DateTime? lastAt;
  final int count;
  final String device; // 'mobil' | 'masaustu'

  const TrackingView({this.firstAt, this.lastAt, this.count = 0, this.device = ''});

  factory TrackingView.fromDoc(Map<String, dynamic> d) {
    DateTime? ts(dynamic v) => v is Timestamp ? v.toDate() : (v is num ? DateTime.fromMillisecondsSinceEpoch(v.toInt()) : null);
    return TrackingView(
      firstAt: ts(d['first_at']),
      lastAt: ts(d['last_at']),
      count: (d['count'] as num?)?.toInt() ?? 0,
      device: (d['device'] as String?) ?? '',
    );
  }
}

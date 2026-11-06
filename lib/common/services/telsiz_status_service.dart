import 'package:cloud_firestore/cloud_firestore.dart';

import '../../features/telsiz/models/telsiz_broadcast.dart';

/// Firestore `telsiz` koleksiyonu: "yayında" durumu.
/// Kurallar: aynı acentedeki herkes okur (sorgu `agency_id` filtresi içermeli),
/// yalnız yönetici/süper admin yazar.
class TelsizStatusService {
  TelsizStatusService._();
  static final TelsizStatusService instance = TelsizStatusService._();

  CollectionReference<Map<String, dynamic>> get _col => FirebaseFirestore.instance.collection('telsiz');

  /// Acentenin tüm telsiz belgeleri (misafir kendi seferlerine göre süzer).
  Stream<List<TelsizBroadcast>> watchAgency(String agencyId) => _col
      .where('agency_id', isEqualTo: agencyId)
      .snapshots()
      .map((s) => s.docs.map(TelsizBroadcast.fromFirestore).toList());

  Future<void> goLive({
    required String agencyId,
    required String tripId,
    required String guideId,
    required String guideName,
  }) {
    return _col.doc(TelsizBroadcast.docId(agencyId, tripId)).set({
      'agency_id': agencyId,
      'trip_id': tripId,
      'room': TelsizBroadcast.roomName(agencyId, tripId),
      'guide_id': guideId,
      'guide_name': guideName,
      'live': true,
      'started_at': FieldValue.serverTimestamp(),
      'updated_at': FieldValue.serverTimestamp(),
    });
  }

  /// 60 sn'de bir çağrılır; misafir 3 dk'dan eski belgeyi yayında saymaz.
  Future<void> heartbeat(String agencyId, String tripId) => _col
      .doc(TelsizBroadcast.docId(agencyId, tripId))
      .update({'updated_at': FieldValue.serverTimestamp(), 'live': true});

  Future<void> end(String agencyId, String tripId) => _col
      .doc(TelsizBroadcast.docId(agencyId, tripId))
      .update({'live': false, 'updated_at': FieldValue.serverTimestamp()});
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/utils/firestore_utils.dart';
import '../../auth/models/user_model.dart';
import '../shared/audit_log.dart';

/// Mesajı kim yazdı: merkez (süper admin / yönetici / destek) ya da acente admini.
class MsgSide {
  static const hq = 'hq';
  static const agency = 'agency';
}

/// `agency_messages/{id}` (bkz. tool/SUPER_ADMIN_SEMA.md).
class AgencyMessage {
  final String id;
  final String agencyId;
  final String fromSide;
  final String fromUid;
  final String fromName;
  final String title;
  final String body;
  final DateTime? createdAt;
  final bool readByHq;
  final bool readByAgency;
  final String broadcastId;
  final bool pending;

  const AgencyMessage({
    required this.id,
    required this.agencyId,
    required this.fromSide,
    required this.fromUid,
    required this.fromName,
    required this.title,
    required this.body,
    required this.createdAt,
    required this.readByHq,
    required this.readByAgency,
    required this.broadcastId,
    this.pending = false,
  });

  bool get isFromHq => fromSide == MsgSide.hq;
  bool get isBroadcast => broadcastId.isNotEmpty;

  /// Karşı taraf okudu mu? (çift tik)
  bool get readByOtherSide => isFromHq ? readByAgency : readByHq;

  factory AgencyMessage.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    // Gönderilmeyi bekleyen yerel yazımlarda sunucu saati henüz yoktur (null); yerel saati kullan.
    final d = doc.data() ?? const {};
    return AgencyMessage(
      id: doc.id,
      agencyId: toStr(d['agency_id']),
      fromSide: toStr(d['from_side'], MsgSide.hq),
      fromUid: toStr(d['from_uid']),
      fromName: toStr(d['from_name']),
      title: toStr(d['title']),
      body: toStr(d['body']),
      createdAt: toDateTime(d['created_at']) ?? (doc.metadata.hasPendingWrites ? DateTime.now() : null),
      readByHq: d['read_by_hq'] == true,
      readByAgency: d['read_by_agency'] == true,
      broadcastId: toStr(d['broadcast_id']),
      pending: doc.metadata.hasPendingWrites,
    );
  }
}

/// Merkez ↔ acente mesajlaşma servisi. Kurallar firestore.rules'ta:
/// merkez hepsini okur ve 'hq' yazar; acente admini yalnız kendi acentesini okur ve 'agency' yazar.
/// Okundu: merkez yalnız `read_by_hq`, acente yalnız `read_by_agency` alanını değiştirebilir.
class AgencyMessageService {
  AgencyMessageService._();
  static final AgencyMessageService instance = AgencyMessageService._();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  CollectionReference<Map<String, dynamic>> get _col => _db.collection('agency_messages');

  static const _batchLimit = 400;

  /// Tek acentenin yazışması (eskiden yeniye).
  /// İndeks: agency_messages (agency_id ASC, created_at ASC).
  Stream<List<AgencyMessage>> streamThread(String agencyId) => _col
      .where('agency_id', isEqualTo: agencyId)
      .orderBy('created_at')
      .snapshots()
      .map((s) => s.docs.map(AgencyMessage.fromFirestore).toList());

  /// Merkez genel görünümü: son 500 mesaj (yeniden eskiye). Tek alan indeksi yeterli.
  Stream<List<AgencyMessage>> streamHqOverview({int limit = 500}) => _col
      .orderBy('created_at', descending: true)
      .limit(limit)
      .snapshots()
      .map((s) => s.docs.map(AgencyMessage.fromFirestore).toList());

  String get _uid => FirebaseAuth.instance.currentUser?.uid ?? '';

  Map<String, dynamic> _doc({
    required String agencyId,
    required String side,
    required UserModel? sender,
    required String title,
    required String body,
    String broadcastId = '',
  }) => {
    'agency_id': agencyId,
    'from_side': side,
    'from_uid': _uid,
    'from_name': sender?.userName ?? '',
    'title': title.trim(),
    'body': body.trim(),
    'created_at': FieldValue.serverTimestamp(),
    // Gönderen taraf kendi mesajını okumuş sayılır.
    'read_by_hq': side == MsgSide.hq,
    'read_by_agency': side == MsgSide.agency,
    'broadcast_id': broadcastId,
  };

  /// Merkezden tek acenteye mesaj (denetim kaydı yazar).
  Future<void> sendFromHq({
    required String agencyId,
    required String agencyName,
    required UserModel? sender,
    String title = '',
    required String body,
  }) async {
    await _col.add(_doc(agencyId: agencyId, side: MsgSide.hq, sender: sender, title: title, body: body));
    await AuditLog.write(
      action: AuditAction.messageSend,
      actor: sender,
      targetType: 'agency',
      targetId: agencyId,
      targetName: agencyName,
      details: {'agency_count': 1, 'title': title.trim()},
    );
  }

  /// Acente adminden merkeze yanıt.
  Future<void> sendFromAgency({
    required String agencyId,
    required UserModel? sender,
    String title = '',
    required String body,
  }) => _col.add(_doc(agencyId: agencyId, side: MsgSide.agency, sender: sender, title: title, body: body));

  /// Toplu mesaj: her acente için bir belge, hepsi aynı `broadcast_id` ile (≤400'lük batch'ler).
  /// Gönderilen acente sayısını döndürür.
  Future<int> broadcast({
    required List<String> agencyIds,
    required UserModel? sender,
    String title = '',
    required String body,
  }) async {
    final ids = agencyIds.toSet().where((e) => e.isNotEmpty).toList();
    if (ids.isEmpty) return 0;
    final broadcastId = _col.doc().id;
    for (var i = 0; i < ids.length; i += _batchLimit) {
      final batch = _db.batch();
      for (final id in ids.skip(i).take(_batchLimit)) {
        batch.set(
          _col.doc(),
          _doc(agencyId: id, side: MsgSide.hq, sender: sender, title: title, body: body, broadcastId: broadcastId),
        );
      }
      await batch.commit();
    }
    await AuditLog.write(
      action: AuditAction.messageSend,
      actor: sender,
      targetType: 'broadcast',
      targetId: broadcastId,
      targetName: title.trim(),
      details: {'agency_count': ids.length, 'title': title.trim(), 'broadcast_id': broadcastId},
    );
    return ids.length;
  }

  /// Merkez açtığında: acenteden gelen okunmamışları `read_by_hq = true` yapar.
  Future<void> markReadByHq(Iterable<AgencyMessage> messages) =>
      _markRead(messages.where((m) => !m.isFromHq && !m.readByHq && !m.pending), 'read_by_hq');

  /// Acente açtığında: merkezden gelen okunmamışları `read_by_agency = true` yapar.
  Future<void> markReadByAgency(Iterable<AgencyMessage> messages) =>
      _markRead(messages.where((m) => m.isFromHq && !m.readByAgency && !m.pending), 'read_by_agency');

  Future<void> _markRead(Iterable<AgencyMessage> unread, String field) async {
    final list = unread.toList();
    for (var i = 0; i < list.length; i += _batchLimit) {
      final batch = _db.batch();
      for (final m in list.skip(i).take(_batchLimit)) {
        // Kurallar yalnız bu tek alanın değişmesine izin verir.
        batch.update(_col.doc(m.id), {field: true});
      }
      await batch.commit();
    }
  }
}

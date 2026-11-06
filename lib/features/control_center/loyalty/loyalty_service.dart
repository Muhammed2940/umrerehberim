import 'package:cloud_firestore/cloud_firestore.dart';

import '../../admin/models/trip_model.dart';
import '../../auth/models/user_model.dart';
import '../../esnaf/esnaf_config.dart';
import '../../esnaf/models/point_adjustment.dart';
import '../../esnaf/models/shop_transaction.dart';
import '../shared/audit_log.dart';

/// Bir misafirin puan özeti (Kontrol Merkezi listesi için).
class GuestPoints {
  final UserModel user;
  final String agencyName;
  final int earned;
  final int spent;
  final int adjusted;
  final int txCount;

  const GuestPoints({
    required this.user,
    required this.agencyName,
    required this.earned,
    required this.spent,
    required this.adjusted,
    required this.txCount,
  });

  int get balance => earned - spent + adjusted;
}

/// Sadakat ekranının tek seferde okunan verisi. Bakiye formülü
/// `EsnafService.balanceOf` ile aynıdır (işlem puanları + elle hareketler).
class LoyaltyData {
  final List<UserModel> guests;
  final Map<String, String> agencies; // id → ad
  final List<ShopTransaction> transactions;
  final List<PointAdjustment> adjustments; // yeniden eskiye

  LoyaltyData({required this.guests, required this.agencies, required this.transactions, required this.adjustments});

  late final Map<String, List<ShopTransaction>> txByGuest = _group(transactions, (t) => t.guestUid);
  late final Map<String, List<PointAdjustment>> adjByGuest = _group(adjustments, (a) => a.guestUid);

  static Map<String, List<T>> _group<T>(List<T> list, String Function(T) key) {
    final m = <String, List<T>>{};
    for (final x in list) {
      (m[key(x)] ??= []).add(x);
    }
    return m;
  }

  late final List<GuestPoints> guestPoints = [
    for (final g in guests) pointsOf(g),
  ]..sort((a, b) => b.balance.compareTo(a.balance));

  GuestPoints pointsOf(UserModel g) {
    final s = TransactionSummary.of(txByGuest[g.id] ?? const []);
    final adj = (adjByGuest[g.id] ?? const <PointAdjustment>[]).fold<int>(0, (a, x) => a + x.points);
    return GuestPoints(
      user: g,
      agencyName: agencies[g.agencyId ?? ''] ?? '',
      earned: s.pointsEarned,
      spent: s.pointsSpent,
      adjusted: adj,
      txCount: s.count,
    );
  }

  /// Dolaşımdaki toplam puan (tüm misafirlerin bakiyesi).
  int get circulation {
    final s = TransactionSummary.of(transactions);
    return s.pointsBalance + adjustments.fold<int>(0, (a, x) => a + x.points);
  }

  int get totalEarned => TransactionSummary.of(transactions).pointsEarned;
  int get totalSpent => TransactionSummary.of(transactions).pointsSpent;
  double get redeemedSar => EsnafConfig.pointsToSar(totalSpent);

  /// Bu takvim ayında elle verilen (geri alınmamış, geri alma olmayan) artı puan.
  int get grantedThisMonth {
    final now = DateTime.now();
    final start = DateTime(now.year, now.month);
    return adjustments
        .where((a) => a.points > 0 && !a.isRevert && !a.reverted && (a.createdAt == null || !a.createdAt!.isBefore(start)))
        .fold<int>(0, (s, a) => s + a.points);
  }
}

/// Kontrol Merkezi › Sadakat: puan verme/düşme, geri alma, toplu yükleme.
/// Her işlem denetim kaydıyla AYNI batch'te yazılır.
class LoyaltyService {
  LoyaltyService._();
  static final instance = LoyaltyService._();

  /// Firestore batch sınırı 500; denetim kaydına yer kalsın diye 400.
  static const chunkSize = 400;

  final _db = FirebaseFirestore.instance;
  CollectionReference<Map<String, dynamic>> get _adj => _db.collection('point_adjustments');

  Future<LoyaltyData> load() async {
    final results = await Future.wait([
      _db.collection('users').where('user_type', isEqualTo: UserType.misafir).get(),
      _db.collection('agencies').get(),
      _db.collection('shop_transactions').orderBy('created_at', descending: true).limit(5000).get(),
      _adj.orderBy('created_at', descending: true).limit(2000).get(),
    ]);
    return LoyaltyData(
      guests: results[0].docs.map(UserModel.fromFirestore).toList()
        ..sort((a, b) => a.userName.toLowerCase().compareTo(b.userName.toLowerCase())),
      agencies: {for (final d in results[1].docs) d.id: (d.data()['name'] as String?) ?? d.id},
      transactions: results[2].docs.map(ShopTransaction.fromFirestore).toList(),
      adjustments: results[3].docs.map(PointAdjustment.fromFirestore).toList(),
    );
  }

  /// Acentenin seferleri (toplu yüklemede isteğe bağlı filtre).
  Future<List<TripModel>> trips(String agencyId) async {
    final s = await _db.collection('trips').where('agency_id', isEqualTo: agencyId).get();
    return s.docs.map(TripModel.fromFirestore).toList()..sort((a, b) => a.name.compareTo(b.name));
  }

  /// Tek misafire +/− puan.
  Future<void> adjust({
    required UserModel actor,
    required UserModel guest,
    required int points,
    required String reason,
  }) async {
    final batch = _db.batch();
    final ref = _adj.doc();
    batch.set(
      ref,
      PointAdjustment.createMap(
        guestUid: guest.id,
        guestName: guest.userName,
        guestAgencyId: guest.agencyId ?? '',
        points: points,
        reason: reason,
        createdBy: actor.id,
      ),
    );
    AuditLog.addToBatch(
      batch,
      action: AuditAction.pointsGrant,
      actor: actor,
      targetType: 'guest',
      targetId: guest.id,
      targetName: guest.userName,
      details: {'points': points, 'reason': reason, 'adjustment_id': ref.id},
    );
    await batch.commit();
  }

  /// Geri alma: ters işaretli yeni kayıt + asıl kayıtta reverted/reverted_by_id/reverted_at
  /// + denetim kaydı, tek batch.
  Future<void> revert({required UserModel actor, required PointAdjustment original, required String reason}) async {
    if (!original.canRevert) throw StateError('Bu kayıt geri alınamaz');
    final batch = _db.batch();
    final ref = _adj.doc();
    batch.set(
      ref,
      PointAdjustment.createMap(
        guestUid: original.guestUid,
        guestName: original.guestName,
        guestAgencyId: original.guestAgencyId,
        points: -original.points,
        reason: reason,
        createdBy: actor.id,
        revertsId: original.id,
      ),
    );
    batch.update(_adj.doc(original.id), {
      'reverted': true,
      'reverted_by_id': ref.id,
      'reverted_at': FieldValue.serverTimestamp(),
    });
    AuditLog.addToBatch(
      batch,
      action: AuditAction.pointsRevert,
      actor: actor,
      targetType: 'guest',
      targetId: original.guestUid,
      targetName: original.guestName,
      details: {
        'points': -original.points,
        'reason': reason,
        'reverts_id': original.id,
        'adjustment_id': ref.id,
      },
    );
    await batch.commit();
  }

  /// Toplu puan: her misafire bir kayıt (ortak batch_id). ≤[chunkSize] yazımlık
  /// batch'ler; denetim kaydı ilk batch'te. [onProgress] yazılan misafir sayısını bildirir.
  /// Dönüş: batch_id.
  Future<String> bulkGrant({
    required UserModel actor,
    required List<UserModel> guests,
    required int points,
    required String reason,
    required String agencyId,
    required String agencyName,
    String tripId = '',
    String tripName = '',
    void Function(int done)? onProgress,
  }) async {
    final batchId = _adj.doc().id;
    var done = 0;
    for (var i = 0; i < guests.length; i += chunkSize - 1) {
      final part = guests.sublist(i, (i + chunkSize - 1).clamp(0, guests.length));
      final batch = _db.batch();
      for (final g in part) {
        batch.set(
          _adj.doc(),
          PointAdjustment.createMap(
            guestUid: g.id,
            guestName: g.userName,
            guestAgencyId: g.agencyId ?? '',
            points: points,
            reason: reason,
            createdBy: actor.id,
            batchId: batchId,
          ),
        );
      }
      if (i == 0) {
        AuditLog.addToBatch(
          batch,
          action: AuditAction.pointsBulk,
          actor: actor,
          targetType: 'agency',
          targetId: agencyId,
          targetName: agencyName,
          details: {
            'batch_id': batchId,
            'count': guests.length,
            'points': points,
            'total_points': points * guests.length,
            'reason': reason,
            'trip_id': tripId,
            'trip_name': tripName,
          },
        );
      }
      await batch.commit();
      done += part.length;
      onProgress?.call(done);
    }
    return batchId;
  }

  /// Misafir seçimi: acentenin misafirleri, [tripId] verilirse o sefere kayıtlılar.
  static List<UserModel> bulkTargets(List<UserModel> guests, String agencyId, {String tripId = ''}) => guests
      .where((g) =>
          g.agencyId == agencyId && (tripId.isEmpty || g.mekkeSeferiId == tripId || g.medineSeferiId == tripId))
      .toList();
}

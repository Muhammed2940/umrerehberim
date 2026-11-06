import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../../auth/models/user_model.dart';
import '../esnaf_config.dart';
import '../models/coupon.dart';
import '../models/point_adjustment.dart';
import '../models/shop_review.dart';
import '../models/shop_token.dart';
import '../models/shop_transaction.dart';

/// Esnaf paneli veri erişimi: tek kullanımlık QR kodları ve işlem kayıtları.
///
/// Güvenlik `firestore.rules` içinde:
/// - `shop_tokens`: misafir yalnız kendi adına oluşturur; esnaf id ile tek tek okur.
/// - `shop_transactions/{tokenId}`: yalnız esnaf, kendi dükkanı adına, 3 dakikadan
///   yeni ve kendisine ait bir kod ile açabilir. Aynı id ikinci kez oluşturulamaz.
class EsnafService {
  EsnafService._();
  static final instance = EsnafService._();

  final _db = FirebaseFirestore.instance;
  CollectionReference<Map<String, dynamic>> get _tokens => _db.collection('shop_tokens');
  CollectionReference<Map<String, dynamic>> get _tx => _db.collection('shop_transactions');
  CollectionReference<Map<String, dynamic>> get _adj => _db.collection('point_adjustments');
  CollectionReference<Map<String, dynamic>> get _coupons => _db.collection('coupons');
  CollectionReference<Map<String, dynamic>> get _redemptions => _db.collection('coupon_redemptions');
  CollectionReference<Map<String, dynamic>> get _reviews => _db.collection('shop_reviews');

  // ------------------------------------------------------------------ misafir
  /// "Ayşe Demir" → "Ayşe D." (esnaf misafirin tam adını görmez).
  static String shortName(String full) {
    final parts = full.trim().split(RegExp(r'\s+')).where((p) => p.isNotEmpty).toList();
    if (parts.isEmpty) return 'Misafir';
    if (parts.length == 1) return parts.first;
    return '${parts.sublist(0, parts.length - 1).join(' ')} ${parts.last.characters1}.';
  }

  /// Yeni tek kullanımlık kod üretir.
  Future<ShopToken> createToken({
    required UserModel guest,
    String agencyName = '',
    String tripName = '',
    int pointsAvailable = 0,
    String couponId = '',
  }) async {
    final ref = _tokens.doc();
    final token = ShopToken(
      id: ref.id,
      guestUid: guest.id,
      guestName: shortName(guest.userName),
      agencyId: guest.agencyId ?? '',
      agencyName: agencyName,
      tripName: tripName,
      pointsAvailable: pointsAvailable < 0 ? 0 : pointsAvailable,
      couponId: couponId,
    );
    await ref.set(token.toCreateMap());
    return token;
  }

  /// Misafir ekranı kodu dinler: esnaf kullanınca `used` true olur.
  Stream<ShopToken?> watchToken(String id) =>
      _tokens.doc(id).snapshots().map((d) => d.exists ? ShopToken.fromFirestore(d) : null);

  Stream<ShopTransaction?> watchTransaction(String id) =>
      _tx.doc(id).snapshots().map((d) => d.exists ? ShopTransaction.fromFirestore(d) : null);

  /// Misafirin tüm alışverişleri (yeniden eskiye).
  Stream<List<ShopTransaction>> guestTransactions(String guestUid) => _tx
      .where('guest_uid', isEqualTo: guestUid)
      .orderBy('created_at', descending: true)
      .limit(200)
      .snapshots()
      .map((s) => s.docs.map(ShopTransaction.fromFirestore).toList());

  /// Puan bakiyesi = alışverişler (kazanılan − harcanan, iptaller hariç)
  /// + süper adminin elle yaptığı puan hareketleri (`point_adjustments`).
  /// Sunucu tarafı toplam tutulmaz; böylece kimse başkasının bakiyesini değiştiremez.
  Future<int> guestPointsBalance(String guestUid) async {
    final adjF = _adjustmentsQuery(guestUid).get().then<List<PointAdjustment>>(
      (s) => s.docs.map(PointAdjustment.fromFirestore).toList(),
      onError: (Object e) {
        // Elle puan kayıtları okunamazsa alışveriş bakiyesiyle devam edilir
        // (eksik bakiye "puanla öde" sınırını yalnız düşürür, aşmaz).
        debugPrint('guestPointsBalance: point_adjustments okunamadı: $e');
        return const <PointAdjustment>[];
      },
    );
    final s = await _tx.where('guest_uid', isEqualTo: guestUid).limit(500).get();
    final adj = await adjF;
    return balanceOf(s.docs.map(ShopTransaction.fromFirestore), adj);
  }

  /// Bakiye formülü tek yerde: işlem puanları + elle hareketler.
  static int balanceOf(Iterable<ShopTransaction> txs, Iterable<PointAdjustment> adjustments) =>
      TransactionSummary.of(txs).pointsBalance + adjustments.fold<int>(0, (s, a) => s + a.points);

  Query<Map<String, dynamic>> _adjustmentsQuery(String guestUid) =>
      _adj.where('guest_uid', isEqualTo: guestUid).limit(500);

  /// Misafirin elle puan hareketleri (yeniden eskiye; sıralama istemcide → ek indeks gerekmez).
  Stream<List<PointAdjustment>> guestAdjustments(String guestUid) => _adjustmentsQuery(guestUid).snapshots().map(
        (s) => s.docs.map(PointAdjustment.fromFirestore).toList()..sort(_newestFirst),
      );

  static int _newestFirst(PointAdjustment a, PointAdjustment b) =>
      (b.createdAt ?? DateTime(2100)).compareTo(a.createdAt ?? DateTime(2100));

  // ------------------------------------------------------------------ kupon (misafir)
  /// Misafirin şu an kullanabileceği kuponlar: aktif, acentesine açık, tarih içinde,
  /// tükenmemiş ve daha önce kullanmadığı. [shopId] verilirse yalnız o dükkanda geçerli olanlar.
  Future<List<Coupon>> usableCoupons(UserModel guest, {String? shopId}) async {
    final agency = guest.agencyId ?? '';
    final results = await Future.wait([
      _coupons
          .where('active', isEqualTo: true)
          .where('agency_id', whereIn: [Coupon.all, if (agency.isNotEmpty) agency])
          .get(),
      _redemptions.where('guest_uid', isEqualTo: guest.id).get(),
    ]);
    final used = results[1].docs.map((d) => (d.data()['coupon_id'] ?? '').toString()).toSet();
    final now = DateTime.now();
    return results[0]
        .docs
        .map(Coupon.fromFirestore)
        .where((c) => c.isLiveAt(now) && !used.contains(c.code) && (shopId == null || c.appliesToShop(shopId)))
        .toList()
      ..sort((a, b) => (a.validUntil ?? DateTime(2100)).compareTo(b.validUntil ?? DateTime(2100)));
  }

  // ------------------------------------------------------------------ değerlendirme
  /// Misafirin verdiği değerlendirmeler (işlem id → değerlendirme).
  Stream<Map<String, ShopReview>> guestReviews(String guestUid) => _reviews
      .where('guest_uid', isEqualTo: guestUid)
      .snapshots()
      .map((s) => {for (final d in s.docs) d.id: ShopReview.fromFirestore(d)});

  /// Dükkanın aldığı değerlendirmeler (esnaf yalnız kendi dükkanını okur).
  Stream<Map<String, ShopReview>> shopReviews(String shopId) => _reviews
      .where('shop_id', isEqualTo: shopId)
      .snapshots()
      .map((s) => {for (final d in s.docs) d.id: ShopReview.fromFirestore(d)});

  /// Bir kez yazılır (belge id = işlem id); ikinci deneme kurallarca reddedilir.
  Future<void> submitReview(ShopReview review) => _reviews.doc(review.txId).set(review.toCreateMap());

  // ------------------------------------------------------------------ esnaf
  /// QR'dan okunan kodu getirir. Bulunamazsa null.
  Future<ShopToken?> fetchToken(String id) async {
    final d = await _tokens.doc(id).get();
    return d.exists ? ShopToken.fromFirestore(d) : null;
  }

  /// Kupon belgesi (esnaf okuyabilir). Yoksa null.
  Future<Coupon?> fetchCoupon(String code) async {
    final d = await _coupons.doc(code).get();
    return d.exists ? Coupon.fromFirestore(d) : null;
  }

  /// İşlemi kaydeder ve kodu "kullanıldı" yapar (tek batch). Kod daha önce
  /// kullanıldıysa Firestore `permission-denied` / `already-exists` döner.
  ///
  /// Kuponlu işlemde ([tx.couponId] dolu, [coupon] = okunan kupon) AYNI batch'te:
  /// - `coupon_redemptions/{CODE}_{guestUid}` oluşturulur (misafir başına tek kullanım;
  ///   belge zaten varsa batch reddedilir),
  /// - `coupons/{CODE}` → used_count = okunan + 1, last_tx_id = token id.
  Future<void> recordTransaction({
    required ShopToken token,
    required ShopTransaction tx,
    Coupon? coupon,
  }) async {
    final batch = _db.batch();
    batch.set(_tx.doc(token.id), tx.toCreateMap(tokenId: token.id));
    if (tx.couponId.isNotEmpty) {
      if (coupon == null || coupon.code != tx.couponId) {
        throw ArgumentError('Kuponlu işlem için kupon belgesi gerekli');
      }
      batch.set(_redemptions.doc(CouponRedemption.docId(coupon.code, tx.guestUid)), {
        'coupon_id': coupon.code,
        'guest_uid': tx.guestUid,
        'shop_id': tx.shopId,
        'tx_id': token.id,
        'discount': tx.couponDiscount,
        'created_at': FieldValue.serverTimestamp(),
      });
      batch.update(_coupons.doc(coupon.code), {
        'used_count': coupon.usedCount + 1,
        'last_tx_id': token.id,
      });
    }
    batch.update(_tokens.doc(token.id), {
      'used': true,
      'used_by_shop': tx.shopId,
      'used_by_shop_name': tx.shopName,
      'used_at': FieldValue.serverTimestamp(),
    });
    await batch.commit();
  }

  Future<void> cancelTransaction(String id, String reason) => _tx.doc(id).update({
        'status': ShopTransaction.statusCancelled,
        'cancel_reason': reason,
        'cancelled_at': FieldValue.serverTimestamp(),
      });

  /// Dükkanın işlemleri; [from] verilirse o andan sonrası.
  Stream<List<ShopTransaction>> shopTransactions(String shopId, {DateTime? from, int limit = 300}) {
    Query<Map<String, dynamic>> q = _tx.where('shop_id', isEqualTo: shopId);
    if (from != null) q = q.where('created_at', isGreaterThanOrEqualTo: Timestamp.fromDate(from));
    return q
        .orderBy('created_at', descending: true)
        .limit(limit)
        .snapshots()
        .map((s) => s.docs.map(ShopTransaction.fromFirestore).toList());
  }

  // ------------------------------------------------------------------ yönetici
  /// Acentenin misafirlerinin anlaşmalı esnaftaki harcamaları.
  Future<List<ShopTransaction>> agencyTransactions(String agencyId, {DateTime? from}) async {
    // '' = tüm acenteler (yalnız süper admin ve muhasebe okuyabilir).
    Query<Map<String, dynamic>> q = agencyId.isEmpty ? _tx : _tx.where('guest_agency_id', isEqualTo: agencyId);
    if (from != null) q = q.where('created_at', isGreaterThanOrEqualTo: Timestamp.fromDate(from));
    final s = await q.orderBy('created_at', descending: true).limit(1000).get();
    return s.docs.map(ShopTransaction.fromFirestore).toList();
  }

  /// Hesap tutarı hesabı: brüt → mağaza indirimi → kupon indirimi → ödenecek;
  /// puanla ödemede puan karşılığı. Kupon yoksa [coupon] null.
  static ({double discount, double couponDiscount, double payable, int pointsSpent, int pointsEarned}) calculate({
    required double gross,
    required int discountPercent,
    required String method,
    required int pointsAvailable,
    Coupon? coupon,
  }) {
    final discount = _round2(gross * discountPercent / 100);
    final afterShop = _round2(gross - discount);
    final couponDiscount = coupon == null ? 0.0 : coupon.discountFor(gross: gross, afterShopDiscount: afterShop);
    var payable = _round2(afterShop - couponDiscount);
    if (payable < 0) payable = 0;
    if (method == PaymentMethod.points) {
      final need = (payable / EsnafConfig.pointValueSar).ceil();
      return (discount: discount, couponDiscount: couponDiscount, payable: payable, pointsSpent: need, pointsEarned: 0);
    }
    return (
      discount: discount,
      couponDiscount: couponDiscount,
      payable: payable,
      pointsSpent: 0,
      pointsEarned: EsnafConfig.pointsFor(payable),
    );
  }

  static double _round2(double v) => (v * 100).roundToDouble() / 100;
}

extension on String {
  /// İlk karakter (Türkçe/Arapça karakterler dahil güvenli).
  String get characters1 => isEmpty ? '' : String.fromCharCode(runes.first);
}

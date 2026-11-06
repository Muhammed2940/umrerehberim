import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../../../core/utils/firestore_utils.dart';
import '../shared/cc_widgets.dart';

/// ANALİZ / BI VERİ KATMANI
/// Kontrol Merkezi'nin Analiz ve Esnaf Performansı ekranları bu sağlayıcıyı paylaşır.
/// Veri demo ölçeğinde: `users`, `shops`, `agencies` tamamen; `shop_transactions` ve
/// `shop_reviews` yalnız (dönem + önceki eşit dönem) aralığında okunur. Tek alanlı
/// aralık filtresi + aynı alanda sıralama → bileşik indeks gerekmez.

/// Hafif işlem kaydı (ham belgeden; kupon alanları eksikse 0).
class CcTx {
  final String id;
  final String shopId;
  final String shopName;
  final String guestUid;
  final double gross;
  final double net;
  final double discount;
  final double coupon;
  final String method;
  final int pointsEarned;
  final int pointsSpent;
  final int commissionPercent;
  final bool cancelled;
  final DateTime? createdAt;

  const CcTx({
    required this.id,
    required this.shopId,
    required this.shopName,
    required this.guestUid,
    required this.gross,
    required this.net,
    required this.discount,
    required this.coupon,
    required this.method,
    required this.pointsEarned,
    required this.pointsSpent,
    required this.commissionPercent,
    required this.cancelled,
    required this.createdAt,
  });

  double get commission => cancelled ? 0 : net * commissionPercent / 100;

  static double _d(dynamic v) => v is num ? v.toDouble() : double.tryParse('$v') ?? 0;

  factory CcTx.fromMap(String id, Map<String, dynamic> d) => CcTx(
        id: id,
        shopId: toStr(d['shop_id']),
        shopName: toStr(d['shop_name']),
        guestUid: toStr(d['guest_uid']),
        gross: _d(d['amount_gross']),
        net: _d(d['amount_net']),
        discount: _d(d['discount_amount']),
        coupon: _d(d['coupon_discount']),
        method: toStr(d['payment_method'], 'nakit'),
        pointsEarned: toInt(d['points_earned']),
        pointsSpent: toInt(d['points_spent']),
        commissionPercent: toInt(d['commission_percent']),
        cancelled: toStr(d['status'], 'ok') == 'iptal',
        createdAt: toDateTime(d['created_at']),
      );
}

class CcUserLite {
  final String id;
  final String name;
  final String type;
  final String agencyId;
  final DateTime? createdAt;
  final DateTime? lastActiveAt;
  const CcUserLite(this.id, this.name, this.type, this.agencyId, this.createdAt, this.lastActiveAt);

  factory CcUserLite.fromMap(String id, Map<String, dynamic> d) => CcUserLite(
        id,
        toStr(d['user_name']),
        toStr(d['user_type'], 'misafir'),
        toStr(d['agency_id']),
        toDateTime(d['created_at']),
        toDateTime(d['last_active_at']),
      );
}

class CcShopLite {
  final String id;
  final String name;
  final String category;
  final String agencyId;
  final bool isActive;
  final int viewCount;
  const CcShopLite(this.id, this.name, this.category, this.agencyId, this.isActive, this.viewCount);

  factory CcShopLite.fromMap(String id, Map<String, dynamic> d) => CcShopLite(
        id,
        toStr(d['name']),
        toStr(d['category'], 'Diğer'),
        toStr(d['agency_id']),
        d['is_active'] != false,
        toInt(d['view_count']),
      );
}

class CcReview {
  final String id;
  final String shopId;
  final String guestUid;
  final int rating;
  final String comment;
  final bool complaint;
  final DateTime? createdAt;
  const CcReview(this.id, this.shopId, this.guestUid, this.rating, this.comment, this.complaint, this.createdAt);

  factory CcReview.fromMap(String id, Map<String, dynamic> d) => CcReview(
        id,
        toStr(d['shop_id']),
        toStr(d['guest_uid']),
        toInt(d['rating']).clamp(1, 5),
        toStr(d['comment']),
        d['complaint'] == true,
        toDateTime(d['created_at']),
      );
}

/// İşlem özetleri.
class CcVolume {
  int count = 0;
  int cancelled = 0;
  double gross = 0, net = 0, discount = 0, coupon = 0, commission = 0;
  int earned = 0, spent = 0;
  final Map<String, double> byMethod = {};

  double get avgBasket => count == 0 ? 0 : net / count;
  double get cancelRate => (count + cancelled) == 0 ? 0 : cancelled / (count + cancelled);

  void add(CcTx t) {
    if (t.cancelled) {
      cancelled++;
      return;
    }
    count++;
    gross += t.gross;
    net += t.net;
    discount += t.discount;
    coupon += t.coupon;
    commission += t.commission;
    earned += t.pointsEarned;
    spent += t.pointsSpent;
    byMethod[t.method] = (byMethod[t.method] ?? 0) + t.net;
  }
}

/// Dükkan bazında performans satırı.
class CcShopPerf {
  final CcShopLite shop;
  final CcVolume vol = CcVolume();
  final List<CcReview> reviews = [];
  final List<CcTx> txs = [];
  CcShopPerf(this.shop);

  int get reviewCount => reviews.length;
  double get avgRating => reviews.isEmpty ? 0 : reviews.fold<int>(0, (a, r) => a + r.rating) / reviews.length;
  int get complaints => reviews.where((r) => r.complaint).length;
  int get views => shop.viewCount;

  /// İşlem / görüntülenme (görüntülenme yoksa 0).
  double get conversion => views == 0 ? 0 : vol.count / views;

  List<int> get ratingDist {
    final d = List<int>.filled(5, 0);
    for (final r in reviews) {
      d[r.rating - 1]++;
    }
    return d;
  }
}

/// Bir dönem için hesaplanmış tüm göstergeler.
class CcAnalyticsData {
  final CcPeriod period;
  final DateTime? start;
  final DateTime? prevStart;
  final DateTime loadedAt;

  // Kullanım
  final int totalUsers;
  final int dau, wau, mau;
  final int newUsers;
  final int prevNewUsers;
  final Map<String, int> usersByRole;
  final Map<String, int> usersByAgency; // agencyId → sayı ('' = acentesiz)
  final List<int> monthlyNewUsers; // son 12 ay, eskiden yeniye
  final List<DateTime> months;

  // İşlem
  final CcVolume vol;
  final CcVolume prevVol;
  final List<DateTime> bucketDates;
  final List<double> bucketNet;
  final bool monthlyBuckets;
  final List<int> hourCounts;
  final Map<String, double> categoryRevenue;
  final List<CcShopPerf> shops;

  final Map<String, String> agencyNames;
  final Map<String, String> userNames;
  final bool usersLoaded;

  CcAnalyticsData({
    required this.period,
    required this.start,
    required this.prevStart,
    required this.loadedAt,
    required this.totalUsers,
    required this.dau,
    required this.wau,
    required this.mau,
    required this.newUsers,
    required this.prevNewUsers,
    required this.usersByRole,
    required this.usersByAgency,
    required this.monthlyNewUsers,
    required this.months,
    required this.vol,
    required this.prevVol,
    required this.bucketDates,
    required this.bucketNet,
    required this.monthlyBuckets,
    required this.hourCounts,
    required this.categoryRevenue,
    required this.shops,
    required this.agencyNames,
    required this.userNames,
    required this.usersLoaded,
  });

  double get stickiness => mau == 0 ? 0 : dau / mau * 100;
}

/// Büyüme yüzdesi (önceki 0 ise null → rozet gösterilmez).
double? ccGrowth(num current, num previous) {
  if (previous == 0) return null;
  return (current - previous) / previous * 100;
}

/// Dönemin gün uzunluğu (önceki eşit dönemin hesabı için).
int _periodDays(CcPeriod p) {
  switch (p) {
    case CcPeriod.today:
      return 1;
    case CcPeriod.week:
      return 7;
    case CcPeriod.month:
      return 30;
    case CcPeriod.quarter:
      return 90;
    case CcPeriod.year:
      return 365;
    case CcPeriod.all:
      return 0;
  }
}

class CcAnalyticsProvider extends ChangeNotifier {
  CcAnalyticsProvider._();

  /// Ekranlar arasında paylaşılan tek örnek (dönem önbelleği korunur).
  static final CcAnalyticsProvider instance = CcAnalyticsProvider._();

  final _db = FirebaseFirestore.instance;
  final Map<CcPeriod, CcAnalyticsData> _cache = {};
  final Map<CcPeriod, Future<CcAnalyticsData>> _inflight = {};

  CcPeriod period = CcPeriod.month;
  Object? error;
  bool loading = false;

  // Döneme bağlı olmayan veriler (yenilemede tazelenir).
  List<CcUserLite>? _users;
  List<CcShopLite>? _shops;
  Map<String, String>? _agencies;

  CcAnalyticsData? get data => _cache[period];

  void setPeriod(CcPeriod p) {
    if (p == period) return;
    period = p;
    notifyListeners();
    load();
  }

  /// [force] → önbelleği atıp her şeyi yeniden okur (aşağı çekerek yenileme).
  Future<void> load({bool force = false}) async {
    if (force) {
      _cache.clear();
      _users = null;
      _shops = null;
      _agencies = null;
    }
    final p = period;
    if (_cache.containsKey(p)) return;
    loading = true;
    error = null;
    notifyListeners();
    try {
      final d = await (_inflight[p] ??= _compute(p));
      _cache[p] = d;
    } catch (e) {
      debugPrint('CcAnalytics: $e');
      if (p == period) error = e;
    } finally {
      _inflight.remove(p);
      loading = false;
      notifyListeners();
    }
  }

  Future<List<Map<String, dynamic>>> _ranged(String col, DateTime? from) async {
    Query<Map<String, dynamic>> q = _db.collection(col);
    if (from != null) q = q.where('created_at', isGreaterThanOrEqualTo: Timestamp.fromDate(from));
    final snap = await q.orderBy('created_at', descending: true).limit(5000).get();
    return [for (final d in snap.docs) {...d.data(), '__id': d.id}];
  }

  Future<CcAnalyticsData> _compute(CcPeriod p) async {
    final start = p.start;
    final days = _periodDays(p);
    final prevStart = start?.subtract(Duration(days: days));

    // Kullanıcılar/acenteler okunamazsa (ör. yetki) işlem bölümleri yine çalışsın.
    var usersLoaded = true;
    final usersF = _users != null
        ? Future.value(_users!)
        : _db.collection('users').get().then((s) => [for (final d in s.docs) CcUserLite.fromMap(d.id, d.data())]).catchError((Object e) {
            usersLoaded = false;
            return <CcUserLite>[];
          });
    final agenciesF = _agencies != null
        ? Future.value(_agencies!)
        : _db
            .collection('agencies')
            .get()
            .then((s) => {for (final d in s.docs) d.id: toStr(d.data()['name'], d.id)})
            .catchError((Object e) => <String, String>{});
    final shopsF = _shops != null
        ? Future.value(_shops!)
        : _db.collection('shops').get().then((s) => [for (final d in s.docs) CcShopLite.fromMap(d.id, d.data())]);
    final txF = _ranged('shop_transactions', prevStart);
    final reviewsF = _ranged('shop_reviews', start).catchError((Object e) => <Map<String, dynamic>>[]);

    final users = await usersF;
    final agencies = await agenciesF;
    final shops = await shopsF;
    final txRaw = await txF;
    final reviewsRaw = await reviewsF;
    if (usersLoaded) _users = users;
    _agencies = agencies;
    _shops = shops;

    final now = DateTime.now();

    // --- Kullanım ---
    int within(Duration d) => users.where((u) => u.lastActiveAt != null && now.difference(u.lastActiveAt!) <= d).length;
    final byRole = <String, int>{};
    final byAgency = <String, int>{};
    var newUsers = 0, prevNewUsers = 0;
    final months = [for (var i = 11; i >= 0; i--) DateTime(now.year, now.month - i)];
    final monthly = List<int>.filled(12, 0);
    for (final u in users) {
      byRole[u.type] = (byRole[u.type] ?? 0) + 1;
      byAgency[u.agencyId] = (byAgency[u.agencyId] ?? 0) + 1;
      final c = u.createdAt;
      if (c == null) continue;
      if (start == null || !c.isBefore(start)) {
        newUsers++;
      } else if (prevStart != null && !c.isBefore(prevStart)) {
        prevNewUsers++;
      }
      final idx = (c.year - months.first.year) * 12 + c.month - months.first.month;
      if (idx >= 0 && idx < 12) monthly[idx]++;
    }

    // --- İşlemler ---
    final txs = [for (final m in txRaw) CcTx.fromMap(m['__id'] as String, m)];
    final cur = <CcTx>[];
    final vol = CcVolume(), prevVol = CcVolume();
    for (final t in txs) {
      final c = t.createdAt;
      if (start == null || (c != null && !c.isBefore(start))) {
        cur.add(t);
        vol.add(t);
      } else {
        prevVol.add(t);
      }
    }

    // Zaman kovaları: ≤ 90 gün günlük, daha uzun dönem aylık.
    DateTime? first = start;
    if (first == null) {
      for (final t in cur) {
        final c = t.createdAt;
        if (c != null && (first == null || c.isBefore(first))) first = c;
      }
    }
    first ??= DateTime(now.year, now.month, now.day);
    final today = DateTime(now.year, now.month, now.day);
    final spanDays = today.difference(DateTime(first.year, first.month, first.day)).inDays + 1;
    final monthlyBuckets = spanDays > 90;
    final bucketDates = <DateTime>[];
    if (monthlyBuckets) {
      var m = DateTime(first.year, first.month);
      while (!m.isAfter(today)) {
        bucketDates.add(m);
        m = DateTime(m.year, m.month + 1);
      }
    } else {
      for (var i = 0; i < spanDays; i++) {
        bucketDates.add(DateTime(first.year, first.month, first.day + i));
      }
    }
    final bucketNet = List<double>.filled(bucketDates.length, 0);
    final hours = List<int>.filled(24, 0);
    for (final t in cur) {
      final c = t.createdAt;
      if (c == null || t.cancelled) continue;
      hours[c.hour]++;
      final idx = monthlyBuckets
          ? (c.year - bucketDates.first.year) * 12 + c.month - bucketDates.first.month
          : DateTime(c.year, c.month, c.day).difference(bucketDates.first).inDays;
      if (idx >= 0 && idx < bucketNet.length) bucketNet[idx] += t.net;
    }

    // --- Dükkanlar ---
    final perf = <String, CcShopPerf>{for (final s in shops) s.id: CcShopPerf(s)};
    for (final t in cur) {
      final row = perf.putIfAbsent(t.shopId, () => CcShopPerf(CcShopLite(t.shopId, t.shopName, 'Diğer', '', false, 0)));
      row.vol.add(t);
      row.txs.add(t);
    }
    for (final m in reviewsRaw) {
      final r = CcReview.fromMap(m['__id'] as String, m);
      perf[r.shopId]?.reviews.add(r);
    }
    final catRevenue = <String, double>{};
    for (final row in perf.values) {
      if (row.vol.net <= 0) continue;
      catRevenue[row.shop.category] = (catRevenue[row.shop.category] ?? 0) + row.vol.net;
    }

    return CcAnalyticsData(
      period: p,
      start: start,
      prevStart: prevStart,
      loadedAt: now,
      totalUsers: users.length,
      dau: within(const Duration(hours: 24)),
      wau: within(const Duration(days: 7)),
      mau: within(const Duration(days: 30)),
      newUsers: newUsers,
      prevNewUsers: prevNewUsers,
      usersByRole: byRole,
      usersByAgency: byAgency,
      monthlyNewUsers: monthly,
      months: months,
      vol: vol,
      prevVol: prevVol,
      bucketDates: bucketDates,
      bucketNet: bucketNet,
      monthlyBuckets: monthlyBuckets,
      hourCounts: hours,
      categoryRevenue: catRevenue,
      shops: perf.values.toList(),
      agencyNames: agencies,
      userNames: {for (final u in users) u.id: u.name},
      usersLoaded: usersLoaded,
    );
  }
}

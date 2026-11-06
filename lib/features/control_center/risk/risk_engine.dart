import 'package:intl/intl.dart';

import '../../../core/utils/firestore_utils.dart';
import '../finance/finance_service.dart';

/// Alarm önemi (sıra: yüksek önce).
enum RiskSeverity { high, medium, low }

/// Kural türleri.
enum RiskType {
  velocity,
  bigAmount,
  basket,
  cancelRate,
  quickCancel,
  bigPoints,
  pointsBurn,
  bigGrant,
  frequentGrants,
  adminGrants,
  couponValue,
  couponUnlimited,
  night,
  concentration,
}

/// İnceleme durumu (`risk_reviews/{alarmId}.status`); kayıt yoksa [fresh].
class RiskStatus {
  static const fresh = 'yeni';
  static const reviewed = 'incelendi';
  static const falseAlarm = 'yanlis_alarm';
  static const confirmed = 'onaylandi';
  static const values = [fresh, reviewed, falseAlarm, confirmed];
}

/// Elle puan hareketi (point_adjustments) — yalnız risk için gereken alanlar.
class RiskGrant {
  final String id;
  final String guestUid;
  final String guestName;
  final int points;
  final String reason;
  final String createdBy;
  final DateTime? createdAt;
  final bool reverted;
  final String revertsId;

  const RiskGrant({
    required this.id,
    required this.guestUid,
    required this.guestName,
    required this.points,
    required this.reason,
    required this.createdBy,
    required this.createdAt,
    required this.reverted,
    required this.revertsId,
  });

  factory RiskGrant.fromMap(String id, Map<String, dynamic> d) => RiskGrant(
        id: id,
        guestUid: toStr(d['guest_uid']),
        guestName: toStr(d['guest_name']),
        points: toInt(d['points']),
        reason: toStr(d['reason']),
        createdBy: toStr(d['created_by']),
        createdAt: toDateTime(d['created_at']),
        reverted: d['reverted'] == true,
        revertsId: toStr(d['reverts_id']),
      );

  /// Gerçek yükleme (geri alma kaydı değil, geri alınmamış, pozitif).
  bool get isGrant => points > 0 && revertsId.isEmpty && !reverted;
}

/// Kupon — yalnız risk için gereken alanlar.
class RiskCoupon {
  final String code;
  final String title;
  final String type; // percent | fixed
  final double value;
  final int maxUses;
  final int usedCount;
  final bool active;
  final DateTime? createdAt;

  const RiskCoupon({
    required this.code,
    required this.title,
    required this.type,
    required this.value,
    required this.maxUses,
    required this.usedCount,
    required this.active,
    required this.createdAt,
  });

  factory RiskCoupon.fromMap(String id, Map<String, dynamic> d) {
    final v = d['value'];
    return RiskCoupon(
      code: toStr(d['code'], id),
      title: toStr(d['title']),
      type: toStr(d['type'], 'percent'),
      value: v is num ? v.toDouble() : double.tryParse('$v') ?? 0,
      maxUses: toInt(d['max_uses']),
      usedCount: toInt(d['used_count']),
      active: d['active'] == true,
      createdAt: toDateTime(d['created_at']),
    );
  }

  bool get isPercent => type == 'percent';
}

/// Alarmda adı geçen varlık (dükkan, misafir, yönetici, kupon).
enum RiskEntityKind { shop, guest, admin, coupon }

class RiskEntity {
  final RiskEntityKind kind;
  final String id;
  final String label;
  const RiskEntity(this.kind, this.id, this.label);
}

class RiskAlarm {
  final String id;
  final RiskType type;
  final RiskSeverity severity;
  final DateTime? time;
  final double amount; // SAR veya puan (bkz. [amountIsPoints])
  final bool amountIsPoints;
  final List<RiskEntity> entities;
  final List<FinTx> txs;
  final List<RiskGrant> grants;
  final RiskCoupon? coupon;

  /// Açıklama metni için kural parametreleri.
  final Map<String, Object> params;

  const RiskAlarm({
    required this.id,
    required this.type,
    required this.severity,
    required this.time,
    this.amount = 0,
    this.amountIsPoints = false,
    this.entities = const [],
    this.txs = const [],
    this.grants = const [],
    this.coupon,
    this.params = const {},
  });
}

/// Kural eşikleri (tek yer).
class RiskRules {
  static const windowDays = 90;
  static const maxTxAmount = 20000.0;
  static const velocityCount = 3;
  static const bigAmountRatio = 0.8;
  static const basketMultiplier = 5.0;
  static const basketMinTx = 3;
  static const cancelRate = 0.2;
  static const cancelMinTx = 5;
  static const quickCancelMinutes = 10;
  static const bigPointsSpend = 1000;
  static const burnMinSpent = 1000;
  static const burnRatio = 3.0;
  static const bigGrant = 5000;
  static const frequentGrantCount = 3;
  static const adminGrantTotal = 20000;
  static const couponPercent = 50.0;
  static const couponFixed = 500.0;
  static const couponUnlimitedUses = 25;
  static const nightFromHour = 0;
  static const nightToHour = 5;
  static const concentrationShare = 0.4;
  static const concentrationMinTx = 5;
}

/// İstemci tarafı kural motoru. Saf hesap: Firestore'a dokunmaz.
class RiskEngine {
  final List<FinTx> txs;
  final List<RiskGrant> grants;
  final List<RiskCoupon> coupons;
  final Map<String, String> adminNames;

  RiskEngine({required this.txs, required this.grants, required this.coupons, this.adminNames = const {}});

  static final _day = DateFormat('yyyyMMdd');

  /// Sabit alarm id'si: tür + ana varlıklar + gün → FNV-1a 32 bit.
  static String alarmId(RiskType type, List<String> keys, DateTime? day) {
    final s = '${type.name}|${keys.join('|')}|${day == null ? '' : _day.format(day)}';
    var h = 0x811c9dc5;
    for (final c in s.codeUnits) {
      h ^= c;
      h = (h * 0x01000193) & 0xFFFFFFFF;
    }
    return '${type.name}_${h.toRadixString(16).padLeft(8, '0')}';
  }

  static RiskEntity _shop(FinTx t) =>
      RiskEntity(RiskEntityKind.shop, t.tx.shopId, t.tx.shopName.isEmpty ? t.tx.shopId : t.tx.shopName);
  static RiskEntity _guest(FinTx t) =>
      RiskEntity(RiskEntityKind.guest, t.tx.guestUid, t.tx.guestName.isEmpty ? t.tx.guestUid : t.tx.guestName);

  List<RiskAlarm> run() {
    final out = <RiskAlarm>[
      ..._velocity(),
      ..._amounts(),
      ..._cancellations(),
      ..._points(),
      ..._grants(),
      ..._coupons(),
      ..._night(),
      ..._concentration(),
    ];
    out.sort((a, b) {
      final s = a.severity.index.compareTo(b.severity.index);
      if (s != 0) return s;
      return (b.time ?? DateTime(2000)).compareTo(a.time ?? DateTime(2000));
    });
    return out;
  }

  Iterable<FinTx> get _ok => txs.where((t) => t.isOk && t.createdAt != null);

  // 1) Aynı misafir, aynı dükkan, 24 saatte ≥3 işlem.
  List<RiskAlarm> _velocity() {
    final groups = <String, List<FinTx>>{};
    for (final t in _ok) {
      groups.putIfAbsent('${t.tx.guestUid}|${t.tx.shopId}', () => []).add(t);
    }
    final out = <RiskAlarm>[];
    for (final g in groups.values) {
      g.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));
      var i = 0;
      while (i < g.length) {
        var j = i;
        while (j + 1 < g.length && g[j + 1].createdAt!.difference(g[i].createdAt!) <= const Duration(hours: 24)) {
          j++;
        }
        final n = j - i + 1;
        if (n >= RiskRules.velocityCount) {
          final w = g.sublist(i, j + 1);
          final f = w.first;
          out.add(RiskAlarm(
            id: alarmId(RiskType.velocity, [f.tx.guestUid, f.tx.shopId], f.createdAt),
            type: RiskType.velocity,
            severity: n >= 5 ? RiskSeverity.high : RiskSeverity.medium,
            time: w.last.createdAt,
            amount: w.fold<double>(0, (s, t) => s + t.gross),
            entities: [_guest(f), _shop(f)],
            txs: w,
            params: {'guest': f.tx.guestName, 'shop': f.tx.shopName, 'count': n},
          ));
          i = j + 1;
        } else {
          i++;
        }
      }
    }
    return out;
  }

  // 2) Azami tutarın %80'i veya dükkan ortalamasının 5 katı.
  List<RiskAlarm> _amounts() {
    final byShop = <String, List<FinTx>>{};
    for (final t in _ok) {
      byShop.putIfAbsent(t.tx.shopId, () => []).add(t);
    }
    final out = <RiskAlarm>[];
    for (final list in byShop.values) {
      final total = list.fold<double>(0, (s, t) => s + t.gross);
      for (final t in list) {
        if (t.gross >= RiskRules.maxTxAmount * RiskRules.bigAmountRatio) {
          out.add(RiskAlarm(
            id: alarmId(RiskType.bigAmount, [t.id], null),
            type: RiskType.bigAmount,
            severity: RiskSeverity.high,
            time: t.createdAt,
            amount: t.gross,
            entities: [_guest(t), _shop(t)],
            txs: [t],
            params: {'amount': t.gross},
          ));
          continue;
        }
        if (list.length <= RiskRules.basketMinTx) continue;
        // Ortalama bu işlem hariç hesaplanır (aykırı değer kendini gizlemesin).
        final avg = (total - t.gross) / (list.length - 1);
        if (avg > 0 && t.gross >= avg * RiskRules.basketMultiplier) {
          out.add(RiskAlarm(
            id: alarmId(RiskType.basket, [t.id], null),
            type: RiskType.basket,
            severity: RiskSeverity.medium,
            time: t.createdAt,
            amount: t.gross,
            entities: [_guest(t), _shop(t)],
            txs: [t],
            params: {'amount': t.gross, 'avg': avg},
          ));
        }
      }
    }
    return out;
  }

  // 3) İptal oranı ≥ %20 (en az 5 işlem) ve dakikalar içinde iptal.
  List<RiskAlarm> _cancellations() {
    final byShop = <String, List<FinTx>>{};
    for (final t in txs) {
      byShop.putIfAbsent(t.tx.shopId, () => []).add(t);
    }
    final out = <RiskAlarm>[];
    for (final list in byShop.values) {
      final cancelled = list.where((t) => !t.isOk).toList();
      if (list.length >= RiskRules.cancelMinTx && cancelled.isNotEmpty) {
        final rate = cancelled.length / list.length;
        if (rate >= RiskRules.cancelRate) {
          final f = list.first;
          final last = cancelled
              .map((t) => t.tx.cancelledAt ?? t.createdAt)
              .whereType<DateTime>()
              .fold<DateTime?>(null, (m, d) => m == null || d.isAfter(m) ? d : m);
          out.add(RiskAlarm(
            id: alarmId(RiskType.cancelRate, [f.tx.shopId], null),
            type: RiskType.cancelRate,
            severity: rate >= 0.4 ? RiskSeverity.high : RiskSeverity.medium,
            time: last,
            amount: cancelled.fold<double>(0, (s, t) => s + t.gross),
            entities: [_shop(f)],
            txs: cancelled,
            params: {'shop': f.tx.shopName, 'rate': (rate * 100).round(), 'count': list.length},
          ));
        }
      }
    }
    for (final t in txs) {
      final c = t.createdAt, k = t.tx.cancelledAt;
      if (t.isOk || c == null || k == null) continue;
      final minutes = k.difference(c).inMinutes;
      if (minutes >= 0 && minutes <= RiskRules.quickCancelMinutes) {
        out.add(RiskAlarm(
          id: alarmId(RiskType.quickCancel, [t.id], null),
          type: RiskType.quickCancel,
          severity: RiskSeverity.medium,
          time: k,
          amount: t.gross,
          entities: [_guest(t), _shop(t)],
          txs: [t],
          params: {'minutes': minutes},
        ));
      }
    }
    return out;
  }

  // 4) Tek işlemde ≥1000 puan; kazandığından çok daha hızlı harcayan misafir.
  List<RiskAlarm> _points() {
    final out = <RiskAlarm>[];
    final spent = <String, int>{}, earned = <String, int>{};
    final spendTx = <String, List<FinTx>>{};
    for (final t in _ok) {
      final g = t.tx.guestUid;
      earned[g] = (earned[g] ?? 0) + t.tx.pointsEarned;
      if (t.tx.pointsSpent > 0) {
        spent[g] = (spent[g] ?? 0) + t.tx.pointsSpent;
        spendTx.putIfAbsent(g, () => []).add(t);
      }
      if (t.tx.pointsSpent >= RiskRules.bigPointsSpend) {
        out.add(RiskAlarm(
          id: alarmId(RiskType.bigPoints, [t.id], null),
          type: RiskType.bigPoints,
          severity: RiskSeverity.medium,
          time: t.createdAt,
          amount: t.tx.pointsSpent.toDouble(),
          amountIsPoints: true,
          entities: [_guest(t), _shop(t)],
          txs: [t],
          params: {'points': t.tx.pointsSpent},
        ));
      }
    }
    for (final g in grants) {
      if (g.isGrant) earned[g.guestUid] = (earned[g.guestUid] ?? 0) + g.points;
    }
    for (final e in spent.entries) {
      final got = earned[e.key] ?? 0;
      if (e.value >= RiskRules.burnMinSpent && e.value > got * RiskRules.burnRatio) {
        final list = spendTx[e.key]!;
        final f = list.first;
        out.add(RiskAlarm(
          id: alarmId(RiskType.pointsBurn, [e.key], null),
          type: RiskType.pointsBurn,
          severity: RiskSeverity.medium,
          time: list.last.createdAt,
          amount: e.value.toDouble(),
          amountIsPoints: true,
          entities: [_guest(f)],
          txs: list,
          params: {'guest': f.tx.guestName, 'spent': e.value, 'earned': got},
        ));
      }
    }
    return out;
  }

  // 5) Elle puan yüklemeleri.
  List<RiskAlarm> _grants() {
    final out = <RiskAlarm>[];
    final list = grants.where((g) => g.isGrant && g.createdAt != null).toList()
      ..sort((a, b) => a.createdAt!.compareTo(b.createdAt!));
    String admin(String uid) => adminNames[uid] ?? uid;
    RiskEntity guestE(RiskGrant g) =>
        RiskEntity(RiskEntityKind.guest, g.guestUid, g.guestName.isEmpty ? g.guestUid : g.guestName);
    RiskEntity adminE(String uid) => RiskEntity(RiskEntityKind.admin, uid, admin(uid));

    for (final g in list) {
      if (g.points >= RiskRules.bigGrant) {
        out.add(RiskAlarm(
          id: alarmId(RiskType.bigGrant, [g.id], null),
          type: RiskType.bigGrant,
          severity: RiskSeverity.high,
          time: g.createdAt,
          amount: g.points.toDouble(),
          amountIsPoints: true,
          entities: [guestE(g), adminE(g.createdBy)],
          grants: [g],
          params: {'guest': g.guestName, 'points': g.points},
        ));
      }
    }

    // Aynı misafire 7 günde ≥3 yükleme / aynı yöneticiden 7 günde ≥20000 puan.
    List<List<RiskGrant>> windows(Map<String, List<RiskGrant>> by, bool Function(List<RiskGrant>) hit) {
      final res = <List<RiskGrant>>[];
      for (final g in by.values) {
        var i = 0;
        while (i < g.length) {
          var j = i;
          while (j + 1 < g.length && g[j + 1].createdAt!.difference(g[i].createdAt!) <= const Duration(days: 7)) {
            j++;
          }
          final w = g.sublist(i, j + 1);
          if (hit(w)) {
            res.add(w);
            i = j + 1;
          } else {
            i++;
          }
        }
      }
      return res;
    }

    final byGuest = <String, List<RiskGrant>>{};
    final byAdmin = <String, List<RiskGrant>>{};
    for (final g in list) {
      byGuest.putIfAbsent(g.guestUid, () => []).add(g);
      byAdmin.putIfAbsent(g.createdBy, () => []).add(g);
    }
    for (final w in windows(byGuest, (w) => w.length >= RiskRules.frequentGrantCount)) {
      final f = w.first;
      out.add(RiskAlarm(
        id: alarmId(RiskType.frequentGrants, [f.guestUid], f.createdAt),
        type: RiskType.frequentGrants,
        severity: RiskSeverity.medium,
        time: w.last.createdAt,
        amount: w.fold<int>(0, (s, g) => s + g.points).toDouble(),
        amountIsPoints: true,
        entities: [guestE(f), for (final a in w.map((g) => g.createdBy).toSet()) adminE(a)],
        grants: w,
        params: {'guest': f.guestName, 'count': w.length},
      ));
    }
    for (final w in windows(byAdmin, (w) => w.fold<int>(0, (s, g) => s + g.points) >= RiskRules.adminGrantTotal)) {
      final f = w.first;
      final total = w.fold<int>(0, (s, g) => s + g.points);
      out.add(RiskAlarm(
        id: alarmId(RiskType.adminGrants, [f.createdBy], f.createdAt),
        type: RiskType.adminGrants,
        severity: RiskSeverity.high,
        time: w.last.createdAt,
        amount: total.toDouble(),
        amountIsPoints: true,
        entities: [adminE(f.createdBy)],
        grants: w,
        params: {'admin': admin(f.createdBy), 'points': total},
      ));
    }
    return out;
  }

  // 6) Yüksek değerli veya sınırsız + yoğun kullanılan kuponlar.
  List<RiskAlarm> _coupons() {
    final out = <RiskAlarm>[];
    for (final c in coupons) {
      final entity = RiskEntity(RiskEntityKind.coupon, c.code, c.title.isEmpty ? c.code : '${c.code} · ${c.title}');
      final high = c.isPercent ? c.value >= RiskRules.couponPercent : c.value >= RiskRules.couponFixed;
      if (high && c.active) {
        out.add(RiskAlarm(
          id: alarmId(RiskType.couponValue, [c.code], null),
          type: RiskType.couponValue,
          severity: RiskSeverity.medium,
          time: c.createdAt,
          amount: c.isPercent ? 0 : c.value,
          entities: [entity],
          coupon: c,
          params: {'code': c.code, 'percent': c.isPercent, 'value': c.value},
        ));
      }
      if (c.maxUses == 0 && c.usedCount >= RiskRules.couponUnlimitedUses) {
        final uses = txs.where((t) => t.couponId == c.code).toList();
        out.add(RiskAlarm(
          id: alarmId(RiskType.couponUnlimited, [c.code], null),
          type: RiskType.couponUnlimited,
          severity: RiskSeverity.medium,
          time: uses.isEmpty ? c.createdAt : uses.last.createdAt,
          amount: uses.fold<double>(0, (s, t) => s + t.couponDiscount),
          entities: [entity],
          coupon: c,
          txs: uses,
          params: {'code': c.code, 'count': c.usedCount},
        ));
      }
    }
    return out;
  }

  // 7) Gece işlemleri (00:00–05:00 yerel saat).
  List<RiskAlarm> _night() => [
        for (final t in _ok)
          if (t.createdAt!.toLocal().hour >= RiskRules.nightFromHour && t.createdAt!.toLocal().hour < RiskRules.nightToHour)
            RiskAlarm(
              id: alarmId(RiskType.night, [t.id], null),
              type: RiskType.night,
              severity: RiskSeverity.low,
              time: t.createdAt,
              amount: t.gross,
              entities: [_guest(t), _shop(t)],
              txs: [t],
              params: {'time': DateFormat('HH:mm').format(t.createdAt!.toLocal())},
            ),
      ];

  // 8) Tek misafir dükkan cirosunun >%40'ı (aynı acente ise yüksek).
  List<RiskAlarm> _concentration() {
    final byShop = <String, List<FinTx>>{};
    for (final t in _ok) {
      byShop.putIfAbsent(t.tx.shopId, () => []).add(t);
    }
    final out = <RiskAlarm>[];
    for (final list in byShop.values) {
      if (list.length < RiskRules.concentrationMinTx) continue;
      final total = list.fold<double>(0, (s, t) => s + t.net);
      if (total <= 0) continue;
      final byGuest = <String, List<FinTx>>{};
      for (final t in list) {
        byGuest.putIfAbsent(t.tx.guestUid, () => []).add(t);
      }
      for (final g in byGuest.values) {
        final sum = g.fold<double>(0, (s, t) => s + t.net);
        final share = sum / total;
        if (share <= RiskRules.concentrationShare) continue;
        final f = g.first;
        final sameAgency = f.tx.shopAgencyId.isNotEmpty &&
            f.tx.shopAgencyId != 'all' &&
            f.tx.shopAgencyId == f.tx.guestAgencyId;
        out.add(RiskAlarm(
          id: alarmId(RiskType.concentration, [f.tx.shopId, f.tx.guestUid], null),
          type: RiskType.concentration,
          severity: sameAgency ? RiskSeverity.high : RiskSeverity.medium,
          time: g.last.createdAt,
          amount: sum,
          entities: [_guest(f), _shop(f)],
          txs: g,
          params: {
            'guest': f.tx.guestName,
            'shop': f.tx.shopName,
            'share': (share * 100).round(),
            'sameAgency': sameAgency,
          },
        ));
      }
    }
    return out;
  }
}

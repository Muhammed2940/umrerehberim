import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/utils/firestore_utils.dart';
import '../../control_center/audit/audit_labels.dart';
import '../../control_center/shared/audit_log.dart';
import '../models/shop_model.dart';

/// `shops` koleksiyonu işlemleri. Sorgular firestore.rules ile uyumludur:
/// misafir/yönetici `where agency_id == <acente>` ve `where agency_id == 'all'`
/// sorgularını ayrı ayrı yapar, sonuçlar birleştirilir. Süper admin filtresiz okur.
class ShopService {
  ShopService._();
  static final ShopService instance = ShopService._();

  CollectionReference<Map<String, dynamic>> get _col => FirebaseFirestore.instance.collection('shops');

  /// Sıra: sort_order, sonra ad.
  static int compare(ShopModel a, ShopModel b) {
    final c = a.sortOrder.compareTo(b.sortOrder);
    return c != 0 ? c : a.name.toLowerCase().compareTo(b.name.toLowerCase());
  }

  Future<List<ShopModel>> _byAgencies(List<String> agencyIds) async {
    final snaps = await Future.wait([
      for (final a in agencyIds.toSet()) _col.where('agency_id', isEqualTo: a).get(),
    ]);
    final map = <String, ShopModel>{};
    for (final s in snaps) {
      for (final d in s.docs) {
        map[d.id] = ShopModel.fromFirestore(d);
      }
    }
    return map.values.toList()..sort(compare);
  }

  /// Misafir: kendi acentesinin ve tüm acentelere açık aktif dükkanlar.
  Future<List<ShopModel>> forGuest(String? agencyId) async {
    final list = await _byAgencies([
      ShopModel.allAgencies,
      if (agencyId != null && agencyId.isNotEmpty) agencyId,
    ]);
    return list.where((s) => s.isActive).toList();
  }

  /// Yönetici paneli. Süper admin acente seçmediyse ([agencyId] null) hepsini görür.
  Future<List<ShopModel>> forAdmin({required bool isSuper, String? agencyId}) async {
    if (isSuper && (agencyId == null || agencyId.isEmpty)) {
      final s = await _col.get();
      return s.docs.map(ShopModel.fromFirestore).toList()..sort(compare);
    }
    return _byAgencies([
      ShopModel.allAgencies,
      if (agencyId != null && agencyId.isNotEmpty) agencyId,
    ]);
  }

  /// Yeni dükkan için id döner.
  Future<String> save(ShopModel shop) async {
    final data = shop.toMap()..['updated_at'] = FieldValue.serverTimestamp();
    if (shop.id.isEmpty) {
      data['created_at'] = FieldValue.serverTimestamp();
      final ref = await _col.add(data);
      _audit(AuditAction.shopCreate, ref.id, shop.name, {
        'agency_id': shop.agencyId,
        'discount_percent': shop.discountPercent,
        'commission_percent': shop.commissionPercent,
      });
      return ref.id;
    }
    await _col.doc(shop.id).set(data, SetOptions(merge: true));
    _audit(AuditAction.shopUpdate, shop.id, shop.name, {
      'agency_id': shop.agencyId,
      'discount_percent': shop.discountPercent,
      'commission_percent': shop.commissionPercent,
    });
    return shop.id;
  }

  Future<void> setActive(String id, bool active, {String name = ''}) async {
    await _col.doc(id).update({'is_active': active, 'updated_at': FieldValue.serverTimestamp()});
    _audit(AuditAction.shopToggle, id, name.isEmpty ? await _nameOf(id) : name, {'is_active': active});
  }

  Future<void> delete(String id, {String name = ''}) async {
    final n = name.isEmpty ? await _nameOf(id) : name;
    await _col.doc(id).delete();
    _audit(AuditAction.shopDelete, id, n);
  }

  Future<String> _nameOf(String id) async {
    try {
      return toStr((await _col.doc(id).get()).data()?['name']);
    } catch (_) {
      return '';
    }
  }

  /// Denetim kaydı (dükkanları yalnız süper admin yönetir). Asıl işlemi bekletmez.
  void _audit(String action, String id, String name, [Map<String, dynamic> details = const {}]) {
    AuditLog.write(
      action: action,
      actor: currentAuditActor(),
      targetType: 'shop',
      targetId: id,
      targetName: name,
      details: details,
    );
  }

  /// Sürükle-bırak sonrası sıra numaralarını toplu yazar.
  Future<void> saveOrder(List<ShopModel> ordered) async {
    final batch = FirebaseFirestore.instance.batch();
    for (var i = 0; i < ordered.length; i++) {
      batch.update(_col.doc(ordered[i].id), {'sort_order': i});
    }
    await batch.commit();
  }

  /// Acente adı (misafir kendi acentesini okuyabilir).
  Future<String> agencyName(String? agencyId) async {
    if (agencyId == null || agencyId.isEmpty) return '';
    try {
      final d = await FirebaseFirestore.instance.collection('agencies').doc(agencyId).get();
      return (d.data()?['name'] as String?) ?? '';
    } catch (_) {
      return '';
    }
  }

  /// Esnaf hesabı bağlantısı: `owner_uid` (null = hesap yok) ve giriş kodu.
  Future<void> setMerchantAccount(String shopId, {required String? ownerUid, String? merchantCode}) =>
      _col.doc(shopId).update({
        'owner_uid': ownerUid,
        'merchant_code': ?merchantCode,
        'updated_at': FieldValue.serverTimestamp(),
      });

  /// Süper admin için acente listesi (id, ad).
  Future<List<({String id, String name})>> agencies() async {
    final s = await FirebaseFirestore.instance.collection('agencies').get();
    return [
      for (final d in s.docs) (id: d.id, name: (d.data()['name'] as String?) ?? d.id),
    ]..sort((a, b) => a.name.compareTo(b.name));
  }
}

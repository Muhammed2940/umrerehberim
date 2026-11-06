import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../../../common/services/auth_account_service.dart';
import '../../auth/models/user_model.dart';
import '../../control_center/audit/audit_labels.dart';
import '../../control_center/shared/audit_log.dart';
import '../../esnaf/esnaf_config.dart';
import '../../shops/models/shop_model.dart';
import '../../shops/providers/shop_service.dart';

/// Esnaf hesabı açma sonucu: esnafa iletilecek giriş bilgileri.
class MerchantCredentials {
  final String code;
  final String pin;
  final String uid;
  const MerchantCredentials({required this.code, required this.pin, required this.uid});
}

/// Yönetici: anlaşmalı dükkan için esnaf hesabı aç / PIN sıfırla / kapat.
///
/// Cloud Functions (Admin SDK) olmadığından başka bir kullanıcının şifresi
/// istemciden değiştirilemez ve Auth hesabı silinemez. Bu yüzden:
/// - PIN sıfırla = yeni kod + yeni Auth hesabı + yeni `users` belgesi; eski belge silinir.
/// - Hesabı kapat = `users` belgesi silinir, dükkanın `owner_uid` alanı null olur.
/// Eski Auth hesabı Firebase'de kalır ama `users/{uid}` belgesi olmadığı için
/// rolü yoktur: uygulamaya giremez, Firestore kuralları hiçbir veriye erişim vermez.
class EsnafAccountService {
  EsnafAccountService._();
  static final instance = EsnafAccountService._();

  final _db = FirebaseFirestore.instance;

  static String generatePin() {
    final r = Random.secure();
    return List.generate(6, (_) => r.nextInt(10)).join();
  }

  static bool isValidPin(String pin) => RegExp(r'^\d{6}$').hasMatch(pin.trim());

  /// Kod çakışırsa (e-posta başka hesapta) yeni kodla birkaç kez dener.
  Future<({String code, String uid})> _openAuth(String preferredCode, String pin) async {
    var code = preferredCode.isEmpty ? ShopModel.generateMerchantCode() : preferredCode;
    for (var i = 0; i < 4; i++) {
      try {
        final uid = await AuthAccountService.createAccountWithCredentials(
          EsnafConfig.merchantEmail(code),
          EsnafConfig.merchantPassword(pin),
        );
        return (code: code, uid: uid);
      } on AccountExistsException {
        code = ShopModel.generateMerchantCode();
      }
    }
    throw const AccountExistsException();
  }

  Future<void> _writeUser(String uid, ShopModel shop) async {
    await _db.collection('users').doc(uid).set({
      'user_name': shop.name,
      'user_type': UserType.esnaf,
      'user_tc': '',
      'user_tel': shop.phone,
      'agency_id': shop.agencyId,
      'shop_id': shop.id,
      'created_at': FieldValue.serverTimestamp(),
      'updated_at': FieldValue.serverTimestamp(),
    });
    await AuthAccountService.setRole(uid, role: UserType.esnaf, agencyId: shop.agencyId);
  }

  Future<void> _removeUser(String uid) async {
    try {
      await _db.collection('users').doc(uid).delete();
    } catch (e) {
      debugPrint('Esnaf users/$uid silinemedi: $e');
      rethrow;
    }
    await AuthAccountService.removeRole(uid);
  }

  /// Hesap açar. [pin] boşsa rastgele üretilir. Dükkanın mevcut kodu tercih edilir.
  Future<MerchantCredentials> create(ShopModel shop, {String? pin}) async {
    final p = (pin == null || pin.trim().isEmpty) ? generatePin() : pin.trim();
    final r = await _openAuth(shop.merchantCode, p);
    await _writeUser(r.uid, shop);
    await ShopService.instance.setMerchantAccount(shop.id, ownerUid: r.uid, merchantCode: r.code);
    _audit(AuditAction.merchantCreate, shop, {'uid': r.uid, 'merchant_code': r.code});
    return MerchantCredentials(code: r.code, pin: p, uid: r.uid);
  }

  /// Denetim kaydı (PIN asla yazılmaz).
  void _audit(String action, ShopModel shop, Map<String, dynamic> details) {
    AuditLog.write(
      action: action,
      actor: currentAuditActor(),
      targetType: 'shop',
      targetId: shop.id,
      targetName: shop.name,
      details: details,
    );
  }

  /// PIN sıfırlama: yeni kod ve hesap açılır, eski kullanıcı belgesi silinir.
  /// Eski Auth hesabı silinemez (Admin SDK yok) ama belgesiz olduğu için giriş yapamaz.
  Future<MerchantCredentials> resetPin(ShopModel shop, {String? pin}) async {
    final old = shop.ownerUid;
    final p = (pin == null || pin.trim().isEmpty) ? generatePin() : pin.trim();
    final r = await _openAuth(ShopModel.generateMerchantCode(), p);
    await _writeUser(r.uid, shop);
    await ShopService.instance.setMerchantAccount(shop.id, ownerUid: r.uid, merchantCode: r.code);
    if (old != null && old.isNotEmpty && old != r.uid) {
      try {
        await _removeUser(old);
      } catch (_) {
        // Yeni hesap hazır; eski belge silinemese de dükkan artık yeni uid'e bağlı.
      }
    }
    _audit(AuditAction.merchantCreate, shop, {'uid': r.uid, 'merchant_code': r.code, 'pin_reset': true});
    return MerchantCredentials(code: r.code, pin: p, uid: r.uid);
  }

  /// Hesabı kapatır: kullanıcı belgesi silinir, `owner_uid` null. Auth hesabı
  /// kalır ama belgesi olmadığı için giriş yapamaz.
  Future<void> close(ShopModel shop) async {
    final old = shop.ownerUid;
    if (old != null && old.isNotEmpty) await _removeUser(old);
    await ShopService.instance.setMerchantAccount(shop.id, ownerUid: null);
    _audit(AuditAction.userDelete, shop, {'uid': old ?? '', 'user_type': UserType.esnaf});
  }
}

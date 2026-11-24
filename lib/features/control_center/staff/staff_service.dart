import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../common/services/auth_account_service.dart';
import '../../../common/services/auth_api_service.dart';
import '../../../common/services/firestore_service.dart';
import '../../../core/config/auth_api_config.dart';
import '../../auth/models/user_model.dart';
import '../shared/audit_log.dart';

/// Platform personeli (süper admin, destek, muhasebe) işlemleri.
/// Personel hesabı Kullanıcı ID + şifre ile açılır (PHP servisi ya da Firebase kimlik modu),
/// `agency_id` boştur ve RTDB `roles/{uid}` kaydı yazılır.
class StaffService {
  StaffService._();

  static const staffTypes = [UserType.superAdmin, UserType.destek, UserType.muhasebe];

  /// Süper admin bu iki rolü açıp değiştirebilir.
  static const editableTypes = [UserType.destek, UserType.muhasebe];

  static CollectionReference<Map<String, dynamic>> get _users => FirebaseFirestore.instance.collection('users');

  static Future<List<UserModel>> load() async {
    final s = await _users.where('user_type', whereIn: staffTypes).get();
    final list = s.docs.map(UserModel.fromFirestore).toList();
    list.sort((a, b) {
      final r = staffTypes.indexOf(a.userType).compareTo(staffTypes.indexOf(b.userType));
      return r != 0 ? r : a.userName.toLowerCase().compareTo(b.userName.toLowerCase());
    });
    return list;
  }

  /// Hesap açar; TC kayıtlıysa [AccountExistsException].
  /// AUTH_API açıkken hesabı servis açar; kapalıyken Firebase kimlik modu (`id<loginId>@` hesabı +
  /// login_ids kaydı). Bir kez dönen giriş bilgisi her iki modda da verilir.
  static Future<({UserModel user, IssuedCredentials? credentials})> create({
    required UserModel actor,
    required String name,
    required String tc,
    required String phone,
    required String role,
    IssuedCredentials? reuse,
  }) async {
    assert(editableTypes.contains(role));
    final existing = await FirestoreService.instance.getUserByTc(tc);
    if (existing != null) throw const AccountExistsException();
    // [reuse]: önceki denemede hesap açılıp belge yazılamadıysa aynı hesap kullanılır.
    final base = reuse != null && reuse.userType == role
        ? reuse
        : authApiEnabled
            ? await AuthApiService.createAccount(userType: role, agencyId: '')
            : await AuthAccountService.createIdAccount(userType: role);
    final issued = base.withUser(name, role);
    final uid = issued.uid;
    final user = UserModel(
      id: uid,
      userName: name,
      userType: role,
      userTel: phone,
      userTc: tc,
      agencyId: '',
      loginId: issued.loginId,
    );
    try {
      await _users.doc(uid).set(user.toFirestore(isNew: true));
    } catch (e) {
      throw AccountDocWriteException(issued, e);
    }
    await AuthAccountService.setRole(uid, role: role, agencyId: '');
    await AuditLog.write(
      action: AuditAction.userCreate,
      actor: actor,
      targetType: 'user',
      targetId: uid,
      targetName: name,
      details: {'user_type': role, 'staff': true},
    );
    return (
      user: UserModel.fromMap(uid, {...user.toJson(), 'created_at': DateTime.now().toIso8601String()}),
      credentials: issued,
    );
  }

  static Future<void> changeRole({required UserModel actor, required UserModel target, required String role}) async {
    assert(editableTypes.contains(role) && editableTypes.contains(target.userType));
    await _users.doc(target.id).update({'user_type': role, 'updated_at': FieldValue.serverTimestamp()});
    await AuthAccountService.setRole(target.id, role: role, agencyId: '');
    await AuditLog.write(
      action: AuditAction.roleChange,
      actor: actor,
      targetType: 'user',
      targetId: target.id,
      targetName: target.userName,
      details: {'from': target.userType, 'to': role},
    );
  }

  /// `users` belgesini ve RTDB rolünü siler (Auth hesabı istemciden silinemez;
  /// belgesiz hesap giriş yapamaz).
  static Future<void> delete({required UserModel actor, required UserModel target}) async {
    assert(editableTypes.contains(target.userType));
    await _users.doc(target.id).delete();
    await AuthAccountService.removeRole(target.id);
    await AuditLog.write(
      action: AuditAction.userDelete,
      actor: actor,
      targetType: 'user',
      targetId: target.id,
      targetName: target.userName,
      details: {'user_type': target.userType, 'staff': true},
    );
  }
}

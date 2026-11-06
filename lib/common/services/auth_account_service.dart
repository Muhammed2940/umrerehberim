import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';

import '../../core/providers/locale_provider.dart';
import '../../core/utils/auth_utils.dart';
import '../../firebase_options.dart';

/// Bu TC ile kayıtlı (ve hâlâ `users` belgesi olan) bir hesap var.
class AccountExistsException implements Exception {
  const AccountExistsException();
  @override
  String toString() => l10n.coreAccountExists;
}

/// Yöneticinin istemciden kullanıcı hesabı açması (Cloud Functions olmadan).
///
/// Ana uygulamada `createUserWithEmailAndPassword` çağrılırsa oturum yeni
/// kullanıcıya geçer. Bu yüzden ikincil bir FirebaseApp ('secondary') kullanılır;
/// hesap orada açılır, uid alınır ve ikincil oturum hemen kapatılır.
class AuthAccountService {
  AuthAccountService._();

  static const _secondaryName = 'secondary';

  static Future<FirebaseApp> _secondaryApp() async {
    try {
      return Firebase.app(_secondaryName);
    } on FirebaseException {
      return Firebase.initializeApp(name: _secondaryName, options: DefaultFirebaseOptions.currentPlatform);
    }
  }

  /// TC için Auth hesabı açar ve uid'sini döner.
  ///
  /// E-posta zaten kayıtlıysa: şifre TC olduğundan ikincil uygulamada giriş
  /// yapılıp uid bulunur. O uid'in `users` belgesi yoksa (kişi daha önce
  /// silinmiş) aynı uid tekrar kullanılır; belge varsa [AccountExistsException].
  static Future<String> createAccount(String tc) =>
      createAccountWithCredentials(tcToEmail(tc), tcToPassword(tc));

  /// Verilen e-posta/şifre ile Auth hesabı açar ve uid'sini döner
  /// (esnaf hesabı: `esnaf_<kod>@umrerehberim.app` + `esnaf-<pin>`).
  ///
  /// E-posta zaten kayıtlıysa [createAccount] ile aynı desen: aynı şifreyle
  /// giriş yapılabiliyor ve o uid'in `users` belgesi yoksa uid yeniden kullanılır;
  /// aksi halde (belge var ya da şifre farklı) [AccountExistsException].
  static Future<String> createAccountWithCredentials(String email, String password) async {
    final app = await _secondaryApp();
    final auth = FirebaseAuth.instanceFor(app: app);
    try {
      final cred = await auth.createUserWithEmailAndPassword(email: email, password: password);
      return cred.user!.uid;
    } on FirebaseAuthException catch (e) {
      if (e.code != 'email-already-in-use') rethrow;
      try {
        final cred = await auth.signInWithEmailAndPassword(email: email, password: password);
        final uid = cred.user?.uid;
        if (uid != null) {
          // Kendi belgesini okuma kuralı belge olmasa da izin verir.
          final doc = await FirebaseFirestore.instanceFor(app: app)
              .collection('users')
              .doc(uid)
              .get(const GetOptions(source: Source.server));
          if (!doc.exists) return uid;
        }
      } catch (err) {
        debugPrint('Mevcut hesap kontrolü: $err');
      }
      throw const AccountExistsException();
    } finally {
      try {
        await auth.signOut();
      } catch (_) {}
    }
  }

  // ------------------------------------------------------------ RTDB roles
  // RTDB kuralları Firestore'u okuyamaz; konum yetkileri için roles/{uid} = {role, agencyId}.

  static DatabaseReference _roleRef(String uid) => FirebaseDatabase.instance.ref('roles/$uid');

  /// roles/{uid} yazar. RTDB yoksa / erişilemezse kişi oluşturmayı engellemez.
  static Future<void> setRole(String uid, {required String role, String? agencyId}) async {
    try {
      await _roleRef(uid)
          .set({'role': role, if (agencyId != null && agencyId.isNotEmpty) 'agencyId': agencyId})
          .timeout(const Duration(seconds: 8));
    } catch (e) {
      debugPrint('roles/$uid yazılamadı: $e');
    }
  }

  static Future<void> removeRole(String uid) async {
    try {
      await _roleRef(uid).remove().timeout(const Duration(seconds: 8));
    } catch (e) {
      debugPrint('roles/$uid silinemedi: $e');
    }
  }
}

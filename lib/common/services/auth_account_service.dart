import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';

import '../../core/providers/locale_provider.dart';
import '../../core/utils/auth_utils.dart';
import '../../features/auth/models/user_model.dart';
import '../../firebase_options.dart';
import 'auth_api_service.dart';

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

  static const _maxLoginIdAttempts = 8;

  /// Firebase kimlik modu (AUTH_API boş): Kullanıcı ID + rastgele şifre ile hesap açar.
  ///
  /// 1) Tekil 7 haneli ID üretilir; `login_ids/{id}` doluysa ya da `id<ID>@umrerehberim.app`
  ///    e-postası Auth'ta varsa yeni ID denenir.
  /// 2) Hesap ikincil FirebaseApp'te açılır (ana oturum bozulmaz).
  /// 3) `login_ids/{id}` = {uid} yazılır (users belgesindeki login_id kuralı bunu ister).
  ///    Yazılamazsa Auth hesabı silinir (yarım hesap kalmaz).
  /// Şifre misafirde 8, personelde 10 karakter (harf+rakam). `users/{uid}` belgesini çağıran yazar.
  /// Bilgiler yalnız bu dönüşte bilinir; çağıran bir kez gösterir.
  /// TODO PHP kurulunca kaldır: hesabı sunucu açar (AuthApiService.createAccount).
  static Future<IssuedCredentials> createIdAccount({required String userType}) async {
    final app = await _secondaryApp();
    final auth = FirebaseAuth.instanceFor(app: app);
    final password = generatePassword(length: userType == UserType.misafir ? 8 : 10);
    try {
      for (var i = 0; i < _maxLoginIdAttempts; i++) {
        final loginId = generateLoginId();
        final ref = FirebaseFirestore.instance.collection('login_ids').doc(loginId);
        final taken = await ref.get(const GetOptions(source: Source.server)).timeout(const Duration(seconds: 15));
        if (taken.exists) continue;

        final UserCredential cred;
        try {
          cred = await auth.createUserWithEmailAndPassword(email: loginIdToEmail(loginId), password: password);
        } on FirebaseAuthException catch (e) {
          if (e.code == 'email-already-in-use') continue;
          rethrow;
        }
        final user = cred.user!;
        try {
          await ref.set({'uid': user.uid}).timeout(const Duration(seconds: 20));
        } catch (e) {
          debugPrint('login_ids/$loginId yazılamadı, Auth hesabı siliniyor: $e');
          try {
            await user.delete();
          } catch (_) {}
          rethrow;
        }
        return IssuedCredentials(uid: user.uid, loginId: loginId, secret: password, userType: userType);
      }
      throw const AuthApiException('fb_id_unavailable');
    } finally {
      try {
        await auth.signOut();
      } catch (_) {}
    }
  }

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

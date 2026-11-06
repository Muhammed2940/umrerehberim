import 'package:firebase_core/firebase_core.dart';

import '../../firebase_options.dart';

/// Varsayılan Firebase uygulamasını güvenle başlatır.
///
/// Android, google-services.json sayesinde [DEFAULT] uygulamasını Dart'tan önce
/// kendisi başlatır. Ayarlar birebir aynı değilse Firebase.initializeApp
/// `duplicate-app` hatası fırlatır; bu durumda mevcut uygulama kullanılır.
/// main isolate, arka plan servisi ve FCM arka plan handler'ı bunu kullanmalı.
Future<FirebaseApp> ensureFirebaseInitialized() async {
  if (Firebase.apps.isNotEmpty) return Firebase.app();
  try {
    return await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  } on FirebaseException catch (e) {
    if (e.code == 'duplicate-app') return Firebase.app();
    rethrow;
  }
}

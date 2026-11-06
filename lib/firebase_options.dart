// Firebase yapılandırması (android/app/google-services.json ile aynı değerler).
// `flutterfire configure --project=umrerehberim-cc99e --platforms=android` ile yeniden üretilebilir.
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (defaultTargetPlatform == TargetPlatform.android) return android;
    throw UnsupportedError('Umre Rehberim yalnızca Android için yapılandırıldı.');
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA8X1JQfgxHrhtnEgfqVVK8Lktw9ga7AHI',
    appId: '1:1067107936961:android:30ece9897e1fd7918e0240',
    messagingSenderId: '1067107936961',
    projectId: 'umrerehberim-cc99e',
    storageBucket: 'umrerehberim-cc99e.firebasestorage.app',
    databaseURL: 'https://umrerehberim-cc99e-default-rtdb.firebaseio.com',
  );
}

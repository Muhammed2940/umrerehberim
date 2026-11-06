import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';

/// Realtime Database konum kayıtları.
///
/// Yapı: `locations/{agencyId}/{uid} = {latitude, longitude, timestamp(ms), userName, accuracy}`.
/// Kullanıcı yalnızca kendi kaydına yazar; acente yöneticisi ve süper admin
/// `locations/{agencyId}` altını, misafir ise yöneticisinin kaydını okur.
class LocationFirebaseService {
  LocationFirebaseService._();

  static DatabaseReference _baseRef() =>
      FirebaseDatabase.instanceFor(app: Firebase.app()).ref('locations');

  static DatabaseReference agencyRef(String agencyId) => _baseRef().child(agencyId);

  static DatabaseReference userRef(String agencyId, String uid) => _baseRef().child(agencyId).child(uid);

  static Future<void> updateUserLocation({
    required String agencyId,
    required String uid,
    required String userName,
    required Position position,
  }) async {
    await userRef(agencyId, uid).set({
      'latitude': position.latitude,
      'longitude': position.longitude,
      'accuracy': position.accuracy,
      'userName': userName,
      'timestamp': ServerValue.timestamp,
    });
  }

  /// Paylaşım kapatıldığında kayıt silinir (haritada eski konum görünmesin).
  static Future<void> removeUserLocation({required String agencyId, required String uid}) async {
    try {
      await userRef(agencyId, uid).remove();
    } catch (e) {
      debugPrint('removeUserLocation: $e');
    }
  }
}

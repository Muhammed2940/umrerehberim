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

  // Aile Takibi (bireysel): `personal_locations/{uid} = {latitude, longitude, timestamp, accuracy}`
  // (docs/plan/AILE_TAKIBI_SOZLESME.md). userName YOK; yazma yalnız sahibi + Google oturumu.
  static DatabaseReference personalRef(String uid) =>
      FirebaseDatabase.instanceFor(app: Firebase.app()).ref('personal_locations').child(uid);

  static Future<void> updatePersonalLocation({required String uid, required Position position}) async {
    await personalRef(uid).set({
      'latitude': position.latitude,
      'longitude': position.longitude,
      'accuracy': position.accuracy,
      'timestamp': ServerValue.timestamp,
    });
  }

  static Future<void> removePersonalLocation(String uid) async {
    try {
      await personalRef(uid).remove();
    } catch (e) {
      debugPrint('removePersonalLocation: $e');
    }
  }
}

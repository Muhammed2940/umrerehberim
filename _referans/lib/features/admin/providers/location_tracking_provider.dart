// KURTARILAN İSKELET: lib/features/admin/providers/location_tracking_provider.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class LocationTrackingProvider extends ChangeNotifier {
  // _ startListeningSingleUser(/* No info */)
  //   çağrı: DatabaseReference.child   [firebase_database/firebase_database.dart]
  //   çağrı: Query.onValue   [firebase_database/firebase_database.dart]

  // [closure] Null <anonymous closure>(dynamic, dynamic)

  // [closure] Future<void> <anonymous closure>(dynamic, DatabaseEvent) async
  //   Widget/nesneler: DateTime, UserLocationModel
  //   Metinler: 'latitude' | 'longitude' | 'timestamp'
  //   çağrı: DatabaseEvent.snapshot   [firebase_database/firebase_database.dart]
  //   çağrı: DataSnapshotPlatform.value   [firebase_database_platform_interface/src/platform_interface/platform_interface_data_snapshot.dart]
  //   çağrı: LocationTrackingProvider._getUserInfo   [umrem_demo/features/admin/providers/location_tracking_provider.dart]
  //   Tipler: Map, num?, int

  // _ _getUserInfo(/* No info */) async
  //   Metinler: 'users' | 'user_name' | 'userName' | 'name' | 'Bilinmeyen' | 'agency_id'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.get   [cloud_firestore/cloud_firestore.dart]
  //   Tipler: String?

  // dynamic dispose(dynamic)

  // [closure] void dispose(dynamic)
  //   çağrı: LocationTrackingProvider.dispose   [umrem_demo/features/admin/providers/location_tracking_provider.dart]

  // _ dispose(/* No info */)

  // _ clearSelectedUser(/* No info */)

  // _ LocationTrackingProvider(/* No info */)
  //   Metinler: 'locations' | '🎯 LocationTrackingProvider: Constructor çağrıldı'
  //   çağrı: Firebase.app   [firebase_core/firebase_core.dart]
  //   çağrı: FirebaseDatabase.instanceFor   [firebase_database/firebase_database.dart]
  //   çağrı: FirebaseDatabase.ref   [firebase_database/firebase_database.dart]
  //   çağrı: FirebaseFirestore.instanceFor   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: LocationTrackingProvider.startListeningAllLocations   [umrem_demo/features/admin/providers/location_tracking_provider.dart]

  // _ startListeningAllLocations(/* No info */)
  //   Metinler: '🚀 LocationTrackingProvider: startListeningAllLocations çağrıldı' | '⏳ LocationTrackingProvider: isLoading = true yapıldı'
  //   çağrı: Query.onValue   [firebase_database/firebase_database.dart]

  // [closure] Null <anonymous closure>(dynamic, dynamic)
  //   Metinler: '❌ LocationTrackingProvider: Konum dinleme hatası: ' | '✅ LocationTrackingProvider: isLoading = false yapıldı (hata)'

  // [closure] Future<void> <anonymous closure>(dynamic, DatabaseEvent) async
  //   Metinler: '✅ LocationTrackingProvider: ' | ' konum yüklendi' | '✅ LocationTrackingProvider: isLoading = false yapıldı' | '⚠️ LocationTrackingProvider: Konum verisi boş' | '✅ LocationTrackingProvider: isLoading = false yapıldı (boş data)'
  //   çağrı: DatabaseEvent.snapshot   [firebase_database/firebase_database.dart]
  //   çağrı: DataSnapshot.value   [firebase_database/firebase_database.dart]
  //   çağrı: LocationTrackingProvider._createLocationEntry   [umrem_demo/features/admin/providers/location_tracking_provider.dart]
  //   Tipler: Map

  // _ _createLocationEntry(/* No info */) async
  //   Widget/nesneler: DateTime, UserLocationModel, MapEntry<X0,
  //   Metinler: '🚫 LocationTrackingProvider: Farklı acenta - userId: ' | ', userAgency: ' | ', currentAgency: ' | 'latitude' | 'longitude' | 'timestamp' | '❌ LocationTrackingProvider: _createLocationEntry hatası: '
  //   çağrı: LocationTrackingProvider._getUserInfo   [umrem_demo/features/admin/providers/location_tracking_provider.dart]
  //   Tipler: num?, int

  // get _ filteredLocations(/* No info */)
  //   Widget/nesneler: _CompactEntriesIterable<C1X0,
  //   çağrı: _GrowableList._GrowableList._ofEfficientLengthIterable   [dart:core]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // [closure] int <anonymous closure>(dynamic, MapEntry<String, UserLocationModel>, MapEntry<String, UserLocationModel>)

  // [closure] bool <anonymous closure>(dynamic, MapEntry<String, UserLocationModel>)

  // _ setSearchQuery(/* No info */)

}

// KURTARILAN İSKELET: lib/features/admin/providers/admin_provider.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class AdminProvider extends ChangeNotifier {
  // _ loadInitial(/* No info */) async
  //   Metinler: 'Veriler yüklenirken bir hata oluştu'
  //   çağrı: FirestoreService.getAgencies   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: AdminProvider.isSuperAdmin   [umrem_demo/features/admin/providers/admin_provider.dart]
  //   çağrı: FirestoreService.getAllUsers   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.getTrips   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.getHotels   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.getUsersByAgency   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.getTripsByAgency   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.getHotelsByAgency   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.getAllTripManagers   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.getRooms   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.getRoomsByAgency   [umrem_demo/common/services/firestore_service.dart]

  // [closure] Future<void> loadInitial(dynamic)
  //   çağrı: AdminProvider.loadInitial   [umrem_demo/features/admin/providers/admin_provider.dart]

  // get _ isSuperAdmin(/* No info */)

  // [closure] List<RoomModel> <anonymous closure>(dynamic)

  // _ createHotel(/* No info */) async
  //   Widget/nesneler: HotelModel
  //   Metinler: 'Otel oluşturuldu' | 'Otel oluşturulamadı'
  //   çağrı: FirestoreService.createHotel   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: HotelModel.copyWith   [umrem_demo/features/admin/models/hotel_model.dart]
  //   çağrı: GlobalSnackBar.showSuccess   [umrem_demo/core/utils/global_snackbar.dart]
  //   çağrı: GlobalSnackBar.showError   [umrem_demo/core/utils/global_snackbar.dart]

  // [closure] bool <anonymous closure>(dynamic, TripModel)

  // _ deleteTrip(/* No info */) async
  //   Metinler: 'Sefer silindi' | 'Sefer silinemedi'
  //   çağrı: FirestoreService.deleteTrip   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]
  //   çağrı: GlobalSnackBar.showSuccess   [umrem_demo/core/utils/global_snackbar.dart]
  //   çağrı: GlobalSnackBar.showError   [umrem_demo/core/utils/global_snackbar.dart]

  // _ deleteRoom(/* No info */) async
  //   Widget/nesneler: _CompactKeysIterable<X0>
  //   Metinler: 'Oda silindi' | 'Oda silinemedi'
  //   çağrı: FirestoreService.deleteRoom   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: GlobalSnackBar.showSuccess   [umrem_demo/core/utils/global_snackbar.dart]
  //   çağrı: GlobalSnackBar.showError   [umrem_demo/core/utils/global_snackbar.dart]

  // _ updateRoom(/* No info */) async
  //   Widget/nesneler: _CompactKeysIterable<X0>
  //   Metinler: 'room_number' | 'capacity' | 'gender' | 'note' | 'Oda güncellendi' | 'Oda güncellenemedi'
  //   çağrı: FirestoreService.updateRoom   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: RoomModel.copyWith   [umrem_demo/features/admin/models/room_model.dart]
  //   çağrı: GlobalSnackBar.showSuccess   [umrem_demo/core/utils/global_snackbar.dart]
  //   çağrı: GlobalSnackBar.showError   [umrem_demo/core/utils/global_snackbar.dart]

  // _ getManagerUsersByAgency(/* No info */)
  //   çağrı: AdminProvider.managerUsers   [umrem_demo/features/admin/providers/admin_provider.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // get _ managerUsers(/* No info */)
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // [closure] bool <anonymous closure>(dynamic, UserModel)
  //   Metinler: 'yonetici'

  // [closure] bool <anonymous closure>(dynamic, UserModel)
  //   Metinler: 'yonetici'

  // _ createTrip(/* No info */) async
  //   Widget/nesneler: TripModel, ListIterator<X0>, ConcurrentModificationError
  //   Metinler: 'Sefer oluşturuldu' | 'Sefer oluşturulamadı'
  //   çağrı: FirestoreService.createTrip   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: TripModel.copyWith   [umrem_demo/features/admin/models/trip_model.dart]
  //   çağrı: FirestoreService.assignTripManager   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: GlobalSnackBar.showSuccess   [umrem_demo/core/utils/global_snackbar.dart]
  //   çağrı: GlobalSnackBar.showError   [umrem_demo/core/utils/global_snackbar.dart]

  // _ updateTrip(/* No info */) async
  //   Widget/nesneler: ListIterator<X0>, ConcurrentModificationError
  //   Metinler: 'name' | 'location' | 'start_date' | 'end_date' | 'note' | 'Sefer güncellendi' | 'Sefer güncellenemedi'
  //   çağrı: FirestoreService.updateTrip   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.removeTripManager   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.assignTripManager   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: GlobalSnackBar.showSuccess   [umrem_demo/core/utils/global_snackbar.dart]
  //   çağrı: GlobalSnackBar.showError   [umrem_demo/core/utils/global_snackbar.dart]

  // [closure] TripModel <anonymous closure>(dynamic, TripModel)
  //   çağrı: TripModel.copyWith   [umrem_demo/features/admin/models/trip_model.dart]

  // _ createRoom(/* No info */) async
  //   Widget/nesneler: RoomModel
  //   Metinler: 'Oda oluşturuldu' | 'Oda oluşturulamadı'
  //   çağrı: FirestoreService.createRoom   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: RoomModel.copyWith   [umrem_demo/features/admin/models/room_model.dart]
  //   çağrı: GlobalSnackBar.showSuccess   [umrem_demo/core/utils/global_snackbar.dart]
  //   çağrı: GlobalSnackBar.showError   [umrem_demo/core/utils/global_snackbar.dart]

  // _ createUser(/* No info */) async
  //   Widget/nesneler: DateTime, UserModel
  //   Metinler: 'Bu TC ile kayıt var.' | 'Kişi oluşturuldu' | 'Kişi oluşturulamadı'
  //   çağrı: FirestoreService.getUserByTc   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: GlobalSnackBar.showError   [umrem_demo/core/utils/global_snackbar.dart]
  //   çağrı: .generateSecureToken   [umrem_demo/core/func/token_create.dart]
  //   çağrı: FirestoreService.createOrUpdateUser   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: GlobalSnackBar.showSuccess   [umrem_demo/core/utils/global_snackbar.dart]

  // _ isUserSaving(/* No info */)

  // _ assignUser(/* No info */) async
  //   Metinler: 'Atama güncellendi' | 'Atama kaydedilemedi'
  //   çağrı: FirestoreService.updateUserAssignments   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: GlobalSnackBar.showSuccess   [umrem_demo/core/utils/global_snackbar.dart]
  //   çağrı: GlobalSnackBar.showError   [umrem_demo/core/utils/global_snackbar.dart]

  // [closure] UserModel <anonymous closure>(dynamic, UserModel)
  //   Widget/nesneler: DateTime
  //   Metinler: 'Mekke'
  //   çağrı: UserModel.copyWith   [umrem_demo/features/auth/models/user_model.dart]

  // _ updateUserDetails(/* No info */) async
  //   Metinler: 'user_name' | 'user_tel' | 'user_location' | 'cinsiyet' | 'dogum_tarihi' | 'Kullanıcı bilgileri güncellendi' | 'Kullanıcı bilgileri kaydedilemedi'
  //   çağrı: FirestoreService.updateUserFields   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: GlobalSnackBar.showSuccess   [umrem_demo/core/utils/global_snackbar.dart]
  //   çağrı: GlobalSnackBar.showError   [umrem_demo/core/utils/global_snackbar.dart]

  // [closure] UserModel <anonymous closure>(dynamic, UserModel)
  //   Widget/nesneler: DateTime
  //   çağrı: UserModel.copyWith   [umrem_demo/features/auth/models/user_model.dart]

  // _ getTripManagerUsers(/* No info */)
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // [closure] bool <anonymous closure>(dynamic, UserModel)

  // _ AdminProvider(/* No info */)
  //   Widget/nesneler: FirestoreService, _Set<X0>
  //   çağrı: Firebase.app   [firebase_core/firebase_core.dart]
  //   çağrı: FirebaseFirestore.instanceFor   [cloud_firestore/cloud_firestore.dart]

}

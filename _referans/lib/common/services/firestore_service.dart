// KURTARILAN İSKELET: lib/common/services/firestore_service.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class FirestoreService extends Object {
  // _ getRoomsByAgency(/* No info */) async
  //   Metinler: 'agency_id' | 'room_number'
  //   çağrı: FirestoreService.roomsCollection   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.orderBy   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // get _ roomsCollection(/* No info */)
  //   Metinler: 'rooms'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]

  // [closure] RoomModel <anonymous closure>(dynamic, QueryDocumentSnapshot<Object?>)
  //   çağrı: RoomModel.RoomModel.fromFirestore   [umrem_demo/features/admin/models/room_model.dart]

  // _ getRooms(/* No info */) async
  //   Metinler: 'rooms' | 'room_number'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.orderBy   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // _ getAllTripManagers(/* No info */) async
  //   Widget/nesneler: ListIterator<X0>, ConcurrentModificationError
  //   Metinler: 'trip_managers' | 'trip_id' | 'user_id'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: DocumentSnapshotPlatform.get   [cloud_firestore_platform_interface/src/platform_interface/platform_interface_document_snapshot.dart]
  //   çağrı: _CodecUtility.valueDecode   [cloud_firestore/cloud_firestore.dart]
  //   Tipler: String

  // get _ tripManagersCollection(/* No info */)
  //   Metinler: 'trip_managers'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]

  // [closure] List<String> <anonymous closure>(dynamic)

  // _ getHotelsByAgency(/* No info */) async
  //   Metinler: 'hotels' | 'agency_id' | 'name'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.orderBy   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // get _ hotelsCollection(/* No info */)
  //   Metinler: 'hotels'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]

  // [closure] HotelModel <anonymous closure>(dynamic, QueryDocumentSnapshot<Object?>)
  //   çağrı: HotelModel.HotelModel.fromFirestore   [umrem_demo/features/admin/models/hotel_model.dart]

  // _ getTripsByAgency(/* No info */) async
  //   Metinler: 'trips' | 'agency_id' | 'start_date'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.orderBy   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // get _ tripsCollection(/* No info */)
  //   Metinler: 'trips'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]

  // [closure] TripModel <anonymous closure>(dynamic, QueryDocumentSnapshot<Object?>)
  //   çağrı: TripModel.TripModel.fromFirestore   [umrem_demo/features/admin/models/trip_model.dart]

  // _ getUsersByAgency(/* No info */) async
  //   Metinler: 'users' | 'agency_id'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // get _ usersCollection(/* No info */)
  //   Metinler: 'users'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]

  // [closure] UserModel <anonymous closure>(dynamic, QueryDocumentSnapshot<Object?>)
  //   çağrı: UserModel.UserModel.fromFirestore   [umrem_demo/features/auth/models/user_model.dart]

  // _ getHotels(/* No info */) async
  //   Metinler: 'hotels' | 'name'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.orderBy   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // _ getTrips(/* No info */) async
  //   Metinler: 'trips' | 'start_date'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.orderBy   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // _ getAllUsers(/* No info */) async
  //   Metinler: 'users'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // _ getAgencies(/* No info */) async
  //   Metinler: 'agencies' | 'name'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.orderBy   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // get _ agenciesCollection(/* No info */)
  //   Metinler: 'agencies'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]

  // [closure] AgencyModel <anonymous closure>(dynamic, QueryDocumentSnapshot<Object?>)
  //   çağrı: AgencyModel.AgencyModel.fromFirestore   [umrem_demo/features/admin/models/agency_model.dart]

  // _ createHotel(/* No info */) async
  //   çağrı: FirestoreService.hotelsCollection   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: HotelModel.copyWith   [umrem_demo/features/admin/models/hotel_model.dart]
  //   çağrı: HotelModel.toFirestore   [umrem_demo/features/admin/models/hotel_model.dart]
  //   çağrı: _JsonDocumentReference.set   [cloud_firestore/cloud_firestore.dart]

  // _ getEventsByDate(/* No info */) async
  //   Metinler: 'date' | 'time'
  //   çağrı: FirestoreService._formatDateToYMD   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.eventsCollection   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.orderBy   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // get _ eventsCollection(/* No info */)
  //   Metinler: 'events'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]

  // _ _formatDateToYMD(/* No info */)
  //   Metinler: '0' | '-'

  // [closure] EventModel <anonymous closure>(dynamic, QueryDocumentSnapshot<Object?>)
  //   çağrı: EventModel.EventModel.fromFirestore   [umrem_demo/features/admin/models/event_model.dart]

  // _ getEventsByAgency(/* No info */) async
  //   Metinler: 'events' | 'agency_id' | 'date' | 'time'
  //   çağrı: FirestoreService._formatDateToYMD   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.orderBy   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // _ getCurrencies(/* No info */) async
  //   Metinler: 'currencies' | 'name'
  //   çağrı: FirestoreService._getCached   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.orderBy   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]
  //   çağrı: FirestoreService._setCache   [umrem_demo/common/services/firestore_service.dart]
  //   Tipler: Iterable

  // get _ currenciesCollection(/* No info */)
  //   Metinler: 'currencies'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]

  // _ _setCache(/* No info */)
  //   Widget/nesneler: DateTime
  //   Metinler: 'currencies'

  // static Map<String, DateTime> _cacheTimestamp()

  // static Map<String, dynamic> _cache()

  // _ _getCached(/* No info */)
  //   Metinler: 'currencies'
  //   çağrı: FirestoreService._isCacheValid   [umrem_demo/common/services/firestore_service.dart]

  // _ _isCacheValid(/* No info */)
  //   Widget/nesneler: DateTime
  //   Metinler: 'currencies'

  // [closure] CurrencyModel <anonymous closure>(dynamic, QueryDocumentSnapshot<Object?>)
  //   çağrı: CurrencyModel.CurrencyModel.fromFirestore   [umrem_demo/features/admin/models/currency_model.dart]

  // _ getCurrenciesByAgency(/* No info */) async
  //   Metinler: 'currencies' | 'agency_id' | 'name'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.orderBy   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // _ createCurrency(/* No info */) async
  //   çağrı: FirestoreService.currenciesCollection   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: CurrencyModel.copyWith   [umrem_demo/features/admin/models/currency_model.dart]
  //   çağrı: CurrencyModel.toFirestore   [umrem_demo/features/admin/models/currency_model.dart]
  //   çağrı: _JsonDocumentReference.set   [cloud_firestore/cloud_firestore.dart]

  // _ getUserByToken(/* No info */) async
  //   Metinler: 'users'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: UserModel.UserModel.fromFirestore   [umrem_demo/features/auth/models/user_model.dart]

  // _ getTripManagerIds(/* No info */) async
  //   Metinler: 'trip_managers' | 'trip_id'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // [closure] String <anonymous closure>(dynamic, QueryDocumentSnapshot<Object?>)
  //   Metinler: 'user_id'
  //   çağrı: _JsonDocumentSnapshot.get   [cloud_firestore/cloud_firestore.dart]
  //   Tipler: String

  // _ getTripById(/* No info */) async
  //   Metinler: 'trips'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: TripModel.TripModel.fromFirestore   [umrem_demo/features/admin/models/trip_model.dart]

  // _ getPrayerTimeMedineByToday(/* No info */) async
  //   Widget/nesneler: DateTime, _Exception
  //   Metinler: '0' | '-' | 'medine_prayer_times' | 'date' | 'Bugünün vakitleri bulunamadı.'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.limit   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: PrayerTimeModel.PrayerTimeModel.fromFirestore   [umrem_demo/features/home/models/prayer_time_model.dart]

  // _ getPrayerTimeMekkeByToday(/* No info */) async
  //   Widget/nesneler: DateTime, _Exception
  //   Metinler: '0' | '-' | 'mekke_prayer_times' | 'date' | 'Bugünün vakitleri bulunamadı.'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.limit   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: PrayerTimeModel.PrayerTimeModel.fromFirestore   [umrem_demo/features/home/models/prayer_time_model.dart]

  // _ getRoomById(/* No info */) async
  //   Metinler: 'rooms'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: RoomModel.RoomModel.fromFirestore   [umrem_demo/features/admin/models/room_model.dart]

  // _ getHotelById(/* No info */) async
  //   Metinler: 'hotels'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: HotelModel.HotelModel.fromFirestore   [umrem_demo/features/admin/models/hotel_model.dart]

  // _ getLastNotifications(/* No info */) async
  //   Metinler: 'notifications' | 'created_at' | 'user_token'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.orderBy   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.limit   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // [closure] NotificationModel <anonymous closure>(dynamic, QueryDocumentSnapshot<Object?>)
  //   çağrı: NotificationModel.NotificationModel.fromFirestore   [umrem_demo/features/admin/models/notification_model.dart]

  // _ getNotificationsByAgency(/* No info */) async
  //   Metinler: 'notifications' | 'agency_id' | 'created_at'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.orderBy   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.limit   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // _ updateUserFcmToken(/* No info */) async
  //   Widget/nesneler: SetOptions
  //   Metinler: 'users' | 'fcm_token' | 'updated_at'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: FieldValue.serverTimestamp   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.set   [cloud_firestore/cloud_firestore.dart]

  // _ logoutUserFcmToken(/* No info */) async
  //   Widget/nesneler: SetOptions
  //   Metinler: 'users' | 'fcm_token' | 'updated_at'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: FieldValue.serverTimestamp   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.set   [cloud_firestore/cloud_firestore.dart]

  // _ updateEvent(/* No info */) async
  //   Metinler: 'events'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: EventModel.toFirestore   [umrem_demo/features/admin/models/event_model.dart]
  //   çağrı: _JsonDocumentReference.update   [cloud_firestore/cloud_firestore.dart]

  // _ createEvent(/* No info */) async
  //   Metinler: 'events'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: EventModel.copyWith   [umrem_demo/features/admin/models/event_model.dart]
  //   çağrı: EventModel.toFirestore   [umrem_demo/features/admin/models/event_model.dart]
  //   çağrı: _JsonDocumentReference.set   [cloud_firestore/cloud_firestore.dart]

  // _ deleteAgency(/* No info */) async
  //   çağrı: FirestoreService.agenciesCollection   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.delete   [cloud_firestore/cloud_firestore.dart]

  // _ deleteTrip(/* No info */) async
  //   Widget/nesneler: ListIterator<X0>, ConcurrentModificationError
  //   Metinler: 'trips' | 'trip_managers' | 'trip_id'
  //   çağrı: FirestoreService._unlinkUsersFromTrip   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.delete   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: MethodChannelDocumentReference.delete   [cloud_firestore_platform_interface/src/method_channel/method_channel_document_reference.dart]

  // _ _unlinkUsersFromTrip(/* No info */) async
  //   Widget/nesneler: FieldValue, ConcurrentModificationError
  //   Metinler: 'users' | 'mekke_seferi_id' | 'mekke_otel_id' | 'mekke_oda_id' | 'medine_seferi_id' | 'medine_otel_id' | 'medine_oda_id'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: MethodChannelFieldValueFactory.delete   [cloud_firestore_platform_interface/src/method_channel/method_channel_field_value_factory.dart]
  //   çağrı: _CodecUtility.replaceValueWithDelegatesInMapFieldPath   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: MethodChannelDocumentReference.update   [cloud_firestore_platform_interface/src/method_channel/method_channel_document_reference.dart]
  //   çağrı: FirestoreService.usersCollection   [umrem_demo/common/services/firestore_service.dart]

  // _ createAgency(/* No info */) async
  //   Metinler: 'agencies'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: AgencyModel.copyWith   [umrem_demo/features/admin/models/agency_model.dart]
  //   çağrı: AgencyModel.toFirestore   [umrem_demo/features/admin/models/agency_model.dart]
  //   çağrı: _JsonDocumentReference.set   [cloud_firestore/cloud_firestore.dart]

  // _ updateAgency(/* No info */) async
  //   Metinler: 'updated_at' | 'agencies'
  //   çağrı: FieldValue.serverTimestamp   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.update   [cloud_firestore/cloud_firestore.dart]

  // _ createNotifications(/* No info */) async
  //   Widget/nesneler: ListIterator<X0>, NotificationModel, ConcurrentModificationError
  //   Metinler: 'notifications' | 'title' | 'message' | 'user_token' | 'agency_id' | 'created_at'
  //   çağrı: FirebaseFirestore.batch   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: Timestamp.Timestamp.fromMicrosecondsSinceEpoch   [cloud_firestore_platform_interface/src/timestamp.dart]
  //   çağrı: _JsonDocumentReference.path   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _CodecUtility.replaceValueWithDelegatesInMap   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: MethodChannelWriteBatch.set   [cloud_firestore_platform_interface/src/method_channel/method_channel_write_batch.dart]
  //   çağrı: WriteBatch.commit   [cloud_firestore/cloud_firestore.dart]

  // _ sendPushToTopic(/* No info */) async
  //   Metinler: 'sendPushToTopic' | 'topic' | 'title' | 'body'
  //   çağrı: FirebaseFunctions.instanceFor   [cloud_functions/cloud_functions.dart]
  //   çağrı: FirebaseFunctions.httpsCallable   [cloud_functions/cloud_functions.dart]
  //   çağrı: HttpsCallable.call   [cloud_functions/cloud_functions.dart]

  // _ sendPushToCondition(/* No info */) async
  //   Metinler: 'sendPushToCondition' | 'condition' | 'title' | 'body'
  //   çağrı: FirebaseFunctions.instanceFor   [cloud_functions/cloud_functions.dart]
  //   çağrı: FirebaseFunctions.httpsCallable   [cloud_functions/cloud_functions.dart]
  //   çağrı: HttpsCallable.call   [cloud_functions/cloud_functions.dart]

  // _ deleteRoom(/* No info */) async
  //   Metinler: 'rooms'
  //   çağrı: FirestoreService._unlinkUsersFromRoom   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.delete   [cloud_firestore/cloud_firestore.dart]

  // _ _unlinkUsersFromRoom(/* No info */) async
  //   Widget/nesneler: FieldValue, ConcurrentModificationError
  //   Metinler: 'users' | 'mekke_oda_id' | 'medine_oda_id'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: MethodChannelFieldValueFactory.delete   [cloud_firestore_platform_interface/src/method_channel/method_channel_field_value_factory.dart]
  //   çağrı: _CodecUtility.replaceValueWithDelegatesInMapFieldPath   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: MethodChannelDocumentReference.update   [cloud_firestore_platform_interface/src/method_channel/method_channel_document_reference.dart]

  // _ updateRoom(/* No info */) async
  //   Widget/nesneler: SetOptions
  //   Metinler: 'rooms'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.set   [cloud_firestore/cloud_firestore.dart]

  // _ assignTripManager(/* No info */) async
  //   Metinler: 'trip_managers' | 'trip_id' | 'user_id' | 'id' | 'created_at'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: FirestoreService.tripManagersCollection   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.id   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: FieldValue.serverTimestamp   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.set   [cloud_firestore/cloud_firestore.dart]

  // _ createTrip(/* No info */) async
  //   çağrı: FirestoreService.tripsCollection   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: TripModel.copyWith   [umrem_demo/features/admin/models/trip_model.dart]
  //   çağrı: TripModel.toFirestore   [umrem_demo/features/admin/models/trip_model.dart]
  //   çağrı: _JsonDocumentReference.set   [cloud_firestore/cloud_firestore.dart]

  // _ removeTripManager(/* No info */) async
  //   Widget/nesneler: ListIterator<X0>, ConcurrentModificationError
  //   Metinler: 'trip_managers' | 'trip_id' | 'user_id'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: MethodChannelDocumentReference.delete   [cloud_firestore_platform_interface/src/method_channel/method_channel_document_reference.dart]

  // _ updateTrip(/* No info */) async
  //   Metinler: 'updated_at' | 'trips'
  //   çağrı: FieldValue.serverTimestamp   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.update   [cloud_firestore/cloud_firestore.dart]

  // _ createRoom(/* No info */) async
  //   Metinler: 'rooms'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: RoomModel.copyWith   [umrem_demo/features/admin/models/room_model.dart]
  //   çağrı: RoomModel.toFirestore   [umrem_demo/features/admin/models/room_model.dart]
  //   çağrı: _JsonDocumentReference.set   [cloud_firestore/cloud_firestore.dart]

  // _ createOrUpdateUser(/* No info */) async
  //   Widget/nesneler: SetOptions
  //   Metinler: 'users'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: UserModel.toFirestore   [umrem_demo/features/auth/models/user_model.dart]
  //   çağrı: _JsonDocumentReference.set   [cloud_firestore/cloud_firestore.dart]

  // _ getUserByTc(/* No info */) async
  //   Metinler: 'users' | 'user_tc'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.limit   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: UserModel.UserModel.fromFirestore   [umrem_demo/features/auth/models/user_model.dart]

  // _ updateUserAssignments(/* No info */) async
  //   Widget/nesneler: SetOptions
  //   Metinler: 'Mekke' | 'mekke_seferi_id' | 'mekke_otel_id' | 'mekke_oda_id' | 'medine_seferi_id' | 'medine_otel_id' | 'medine_oda_id' | 'updated_at' | 'users'
  //   çağrı: FieldValue.serverTimestamp   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.set   [cloud_firestore/cloud_firestore.dart]

  // _ updateUserFields(/* No info */) async
  //   Widget/nesneler: SetOptions
  //   Metinler: 'updated_at' | 'users'
  //   çağrı: FieldValue.serverTimestamp   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.set   [cloud_firestore/cloud_firestore.dart]

  // _ deleteHotel(/* No info */) async
  //   Widget/nesneler: ListIterator<X0>, ConcurrentModificationError
  //   Metinler: 'rooms' | 'hotel_id' | 'hotels'
  //   çağrı: FirestoreService._unlinkUsersFromHotel   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: FirestoreService._unlinkUsersFromRoom   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: MethodChannelDocumentReference.delete   [cloud_firestore_platform_interface/src/method_channel/method_channel_document_reference.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.delete   [cloud_firestore/cloud_firestore.dart]

  // _ _unlinkUsersFromHotel(/* No info */) async
  //   Widget/nesneler: FieldValue, ConcurrentModificationError
  //   Metinler: 'users' | 'mekke_otel_id' | 'mekke_oda_id' | 'medine_otel_id' | 'medine_oda_id'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.where   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuery.get   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonQuerySnapshot.docs   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: MethodChannelFieldValueFactory.delete   [cloud_firestore_platform_interface/src/method_channel/method_channel_field_value_factory.dart]
  //   çağrı: _CodecUtility.replaceValueWithDelegatesInMapFieldPath   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: MethodChannelDocumentReference.update   [cloud_firestore_platform_interface/src/method_channel/method_channel_document_reference.dart]

  // _ updateCurrency(/* No info */) async
  //   Metinler: 'currencies'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: CurrencyModel.toFirestore   [umrem_demo/features/admin/models/currency_model.dart]
  //   çağrı: _JsonDocumentReference.update   [cloud_firestore/cloud_firestore.dart]

  // _ deleteEvent(/* No info */) async
  //   Metinler: 'events'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.delete   [cloud_firestore/cloud_firestore.dart]

}

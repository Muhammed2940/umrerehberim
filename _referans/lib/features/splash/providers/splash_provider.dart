// KURTARILAN İSKELET: lib/features/splash/providers/splash_provider.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class SplashProvider extends ChangeNotifier {
  // _ closeLoading(/* No info */)

  // _ initializeApp(/* No info */) async
  //   Metinler: 'İnternet bağlantısı kontrol ediliyor...' | 'Offline modda başlatılıyor...' | 'Veriler yükleniyor...'
  //   çağrı: SplashProvider.checkInternetConnection   [umrem_demo/features/splash/providers/splash_provider.dart]
  //   çağrı: SplashProvider.userCheckOffline   [umrem_demo/features/splash/providers/splash_provider.dart]
  //   çağrı: SplashProvider.userCheck   [umrem_demo/features/splash/providers/splash_provider.dart]

  // _ userCheck(/* No info */) async
  //   Metinler: 'user_token' | 'Lütfen TC numaranız ile giriş yapın.' | 'Kullanıcı bulunuyor...' | 'Kullanıcı bulunamadı. Lütfen kayıt olun.'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.getString   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SplashProvider.closeLoading   [umrem_demo/features/splash/providers/splash_provider.dart]
  //   çağrı: SplashProvider.loginWithToken   [umrem_demo/features/splash/providers/splash_provider.dart]

  // _ loginWithToken(/* No info */) async
  //   Metinler: 'Kullanıcı bilgileri yükleniyor...' | 'Kullanıcı bulunamadı.' | 'user_token' | 'Giriş yapılırken bir hata oluştu.'
  //   çağrı: FirestoreService.getUserByToken   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setString   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: TokenService.saveUserToken   [umrem_demo/common/services/token_service.dart]
  //   çağrı: SplashProvider.getData   [umrem_demo/features/splash/providers/splash_provider.dart]
  //   çağrı: SplashProvider._restartBackgroundService   [umrem_demo/features/splash/providers/splash_provider.dart]

  // _ _restartBackgroundService(/* No info */) async
  //   Metinler: 'stopService' | 'Background service yeniden başlatılırken hata: '
  //   çağrı: FlutterBackgroundService.invoke   [flutter_background_service/flutter_background_service.dart]
  //   çağrı: FlutterBackgroundService.startService   [flutter_background_service/flutter_background_service.dart]

  // _ getData(/* No info */) async
  //   çağrı: SplashProvider.getMekkeTrip   [umrem_demo/features/splash/providers/splash_provider.dart]
  //   çağrı: SplashProvider.getMedineTrip   [umrem_demo/features/splash/providers/splash_provider.dart]
  //   çağrı: SplashProvider.getCurrrencies   [umrem_demo/features/splash/providers/splash_provider.dart]
  //   çağrı: SplashProvider.setFcmToken   [umrem_demo/features/splash/providers/splash_provider.dart]
  //   çağrı: SplashProvider.getLastThreeNotifications   [umrem_demo/features/splash/providers/splash_provider.dart]
  //   çağrı: SplashProvider.getMekkeHotel   [umrem_demo/features/splash/providers/splash_provider.dart]
  //   çağrı: SplashProvider.getMedineHotel   [umrem_demo/features/splash/providers/splash_provider.dart]
  //   çağrı: SplashProvider.getMekkeOda   [umrem_demo/features/splash/providers/splash_provider.dart]
  //   çağrı: SplashProvider.getMedineOda   [umrem_demo/features/splash/providers/splash_provider.dart]
  //   çağrı: SplashProvider.getMekkePrayerTimes   [umrem_demo/features/splash/providers/splash_provider.dart]
  //   çağrı: SplashProvider.getMedinePrayerTimes   [umrem_demo/features/splash/providers/splash_provider.dart]
  //   çağrı: SplashProvider.saveLocalData   [umrem_demo/features/splash/providers/splash_provider.dart]

  // _ saveLocalData(/* No info */) async
  //   Widget/nesneler: DateTime
  //   Metinler: 'cached_user' | 'cached_mekke_trip' | 'cached_mekke_hotel' | 'cached_mekke_oda' | 'cached_mekke_prayer' | 'cached_medine_trip' | 'cached_medine_hotel' | 'cached_medine_oda' | 'cached_medine_prayer' | 'cached_currencies' | 'cached_notifications' | 'last_data_update'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: UserModel.toJson   [umrem_demo/features/auth/models/user_model.dart]
  //   çağrı: SharedPreferences.setString   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: TripModel.toJson   [umrem_demo/features/admin/models/trip_model.dart]
  //   çağrı: HotelModel.toJson   [umrem_demo/features/admin/models/hotel_model.dart]
  //   çağrı: RoomModel.toJson   [umrem_demo/features/admin/models/room_model.dart]
  //   çağrı: PrayerTimeModel.toJson   [umrem_demo/features/home/models/prayer_time_model.dart]

  // [closure] Map<String, dynamic> <anonymous closure>(dynamic, NotificationModel)
  //   çağrı: NotificationModel.toJson   [umrem_demo/features/admin/models/notification_model.dart]

  // [closure] Map<String, dynamic> <anonymous closure>(dynamic, CurrencyModel)
  //   çağrı: CurrencyModel.toJson   [umrem_demo/features/admin/models/currency_model.dart]

  // _ getMedinePrayerTimes(/* No info */) async
  //   çağrı: FirestoreService.getPrayerTimeMedineByToday   [umrem_demo/common/services/firestore_service.dart]

  // _ getMekkePrayerTimes(/* No info */) async
  //   çağrı: FirestoreService.getPrayerTimeMekkeByToday   [umrem_demo/common/services/firestore_service.dart]

  // _ getMedineOda(/* No info */) async
  //   çağrı: FirestoreService.getRoomById   [umrem_demo/common/services/firestore_service.dart]

  // _ getMekkeOda(/* No info */) async
  //   çağrı: FirestoreService.getRoomById   [umrem_demo/common/services/firestore_service.dart]

  // _ getMedineHotel(/* No info */) async
  //   çağrı: FirestoreService.getHotelById   [umrem_demo/common/services/firestore_service.dart]

  // _ getMekkeHotel(/* No info */) async
  //   çağrı: FirestoreService.getHotelById   [umrem_demo/common/services/firestore_service.dart]

  // _ getLastThreeNotifications(/* No info */) async
  //   çağrı: FirestoreService.getNotificationsByAgency   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.getLastNotifications   [umrem_demo/common/services/firestore_service.dart]

  // _ setFcmToken(/* No info */) async
  //   Widget/nesneler: FirebaseApi
  //   çağrı: Firebase.app   [firebase_core/firebase_core.dart]
  //   çağrı: FirebaseMessaging.FirebaseMessaging._instanceFor   [firebase_messaging/firebase_messaging.dart]
  //   çağrı: FirebaseApi.getFcmToken   [umrem_demo/common/services/firebase_messaging_service.dart]
  //   çağrı: FirestoreService.updateUserFcmToken   [umrem_demo/common/services/firestore_service.dart]

  // _ getCurrrencies(/* No info */) async
  //   çağrı: FirestoreService.getCurrenciesByAgency   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.getCurrencies   [umrem_demo/common/services/firestore_service.dart]

  // _ getMedineTrip(/* No info */) async
  //   çağrı: FirestoreService.getTripById   [umrem_demo/common/services/firestore_service.dart]

  // _ getMekkeTrip(/* No info */) async
  //   çağrı: FirestoreService.getTripById   [umrem_demo/common/services/firestore_service.dart]

  // _ userCheckOffline(/* No info */) async
  //   Widget/nesneler: DateTime
  //   Metinler: 'user_token' | 'Lütfen TC numaranız ile giriş yapın.' | 'last_data_update' | 'Veriler bulunamadı. Lütfen internet bağlantınızı kontrol edin.' | 'Verileriniz güncel değil. Lütfen internet bağlantınızı kontrol edin.' | 'Yerel veriler yükleniyor...' | 'Veriler yüklenemedi. Lütfen internet bağlantınızı kontrol edin.'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.getString   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SplashProvider.closeLoading   [umrem_demo/features/splash/providers/splash_provider.dart]
  //   çağrı: SplashProvider.loadLocalData   [umrem_demo/features/splash/providers/splash_provider.dart]

  // _ loadLocalData(/* No info */) async
  //   Metinler: 'cached_user' | 'cached_mekke_trip' | 'cached_mekke_hotel' | 'cached_mekke_oda' | 'cached_mekke_prayer' | 'cached_medine_trip' | 'cached_medine_hotel' | 'cached_medine_oda' | 'cached_medine_prayer' | 'cached_currencies' | 'cached_notifications'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.getString   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: UserModel.UserModel.fromJson   [umrem_demo/features/auth/models/user_model.dart]
  //   çağrı: TripModel.TripModel.fromJson   [umrem_demo/features/admin/models/trip_model.dart]
  //   çağrı: HotelModel.HotelModel.fromJson   [umrem_demo/features/admin/models/hotel_model.dart]
  //   çağrı: RoomModel.RoomModel.fromJson   [umrem_demo/features/admin/models/room_model.dart]
  //   çağrı: PrayerTimeModel.PrayerTimeModel.fromJson   [umrem_demo/features/home/models/prayer_time_model.dart]
  //   Tipler: Map<String, dynamic>, List

  // [closure] NotificationModel <anonymous closure>(dynamic, dynamic)
  //   çağrı: NotificationModel.NotificationModel.fromJson   [umrem_demo/features/admin/models/notification_model.dart]
  //   Tipler: Map<String, dynamic>

  // [closure] CurrencyModel <anonymous closure>(dynamic, dynamic)
  //   çağrı: CurrencyModel.CurrencyModel.fromJson   [umrem_demo/features/admin/models/currency_model.dart]
  //   Tipler: Map<String, dynamic>

  // _ checkInternetConnection(/* No info */) async
  //   çağrı: CommonService.hasInternetConnection   [umrem_demo/common/services/common_service.dart]
  //   çağrı: SplashProvider.setHasInternet   [umrem_demo/features/splash/providers/splash_provider.dart]

  // _ setHasInternet(/* No info */)

  // _ logout(/* No info */) async
  //   Widget/nesneler: FirestoreService
  //   Metinler: 'stopService' | 'user_token' | 'cached_user' | 'cached_mekke_trip' | 'cached_mekke_hotel' | 'cached_mekke_oda' | 'cached_mekke_prayer' | 'cached_medine_trip' | 'cached_medine_hotel' | 'cached_medine_oda' | 'cached_medine_prayer' | 'cached_currencies' | 'cached_notifications' | 'last_data_update' | '/splash'
  //   çağrı: Navigator.of   [flutter/src/widgets/navigator.dart]
  //   çağrı: LocationFirebaseService.removeUserLocation   [umrem_demo/common/services/location_firebase_service.dart]
  //   çağrı: Firebase.app   [firebase_core/firebase_core.dart]
  //   çağrı: FirebaseFirestore.instanceFor   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: FirestoreService.logoutUserFcmToken   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FlutterBackgroundService.invoke   [flutter_background_service/flutter_background_service.dart]
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: TokenService.clearToken   [umrem_demo/common/services/token_service.dart]
  //   çağrı: SharedPreferences.remove   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: FirebaseMessaging.FirebaseMessaging._instanceFor   [firebase_messaging/firebase_messaging.dart]
  //   çağrı: FirebaseMessaging.unsubscribeFromTopic   [firebase_messaging/firebase_messaging.dart]
  //   çağrı: NavigatorState.pushNamedAndRemoveUntil   [flutter/src/widgets/navigator.dart]

  // _ loginWithTc(/* No info */) async
  //   Metinler: 'Kullanıcı bilgileri yükleniyor...' | 'Kullanıcı bulunamadı.' | 'Giriş yapılırken bir hata oluştu.'
  //   çağrı: FirestoreService.getUserByTc   [umrem_demo/common/services/firestore_service.dart]

  // _ SplashProvider(/* No info */)
  //   Widget/nesneler: CommonService, FirestoreService
  //   çağrı: Firebase.app   [firebase_core/firebase_core.dart]
  //   çağrı: FirebaseFirestore.instanceFor   [cloud_firestore/cloud_firestore.dart]

}

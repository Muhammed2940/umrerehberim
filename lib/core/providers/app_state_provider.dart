import 'package:flutter/foundation.dart';

import '../../features/admin/models/currency_model.dart';
import '../../features/admin/models/hotel_model.dart';
import '../../features/admin/models/notification_model.dart';
import '../../features/admin/models/room_model.dart';
import '../../features/admin/models/trip_model.dart';
import '../../features/auth/models/user_model.dart';
import '../../features/home/models/prayer_time_model.dart';

/// Oturum ve oturumla yüklenen veriler. Tek doğruluk kaynağı.
///
/// SplashProvider / LoginProvider veriyi yükleyip buraya yazar ([setSessionData]),
/// ana sayfa, profil vb. ekranlar buradan okur. AppWrapper [currentUser]'a göre
/// giriş ekranı / ana ekran / yönetici paneli arasında geçiş yapar.
class AppStateProvider extends ChangeNotifier {
  UserModel? currentUser;

  TripModel? mekkeTrip;
  TripModel? medineTrip;
  HotelModel? mekkeHotel;
  HotelModel? medineHotel;
  RoomModel? mekkeOda;
  RoomModel? medineOda;
  PrayerTimeModel? mekkePrayer;
  PrayerTimeModel? medinePrayer;
  List<CurrencyModel> currencies = [];
  List<NotificationModel> notifications = [];

  /// İnternet yoksa önbellekten açıldıysa true.
  bool isOffline = false;
  DateTime? lastDataUpdate;

  bool get isLoggedIn => currentUser != null;
  bool get isAdmin => currentUser?.isAdmin ?? false;
  bool get isSuperAdmin => currentUser?.isSuperAdmin ?? false;

  void setUser(UserModel? user) {
    currentUser = user;
    notifyListeners();
  }

  /// Verilmeyen alanlar değişmez.
  void setSessionData({
    UserModel? user,
    TripModel? mekkeTrip,
    TripModel? medineTrip,
    HotelModel? mekkeHotel,
    HotelModel? medineHotel,
    RoomModel? mekkeOda,
    RoomModel? medineOda,
    PrayerTimeModel? mekkePrayer,
    PrayerTimeModel? medinePrayer,
    List<CurrencyModel>? currencies,
    List<NotificationModel>? notifications,
    bool? isOffline,
    DateTime? lastDataUpdate,
  }) {
    if (user != null) currentUser = user;
    if (mekkeTrip != null) this.mekkeTrip = mekkeTrip;
    if (medineTrip != null) this.medineTrip = medineTrip;
    if (mekkeHotel != null) this.mekkeHotel = mekkeHotel;
    if (medineHotel != null) this.medineHotel = medineHotel;
    if (mekkeOda != null) this.mekkeOda = mekkeOda;
    if (medineOda != null) this.medineOda = medineOda;
    if (mekkePrayer != null) this.mekkePrayer = mekkePrayer;
    if (medinePrayer != null) this.medinePrayer = medinePrayer;
    if (currencies != null) this.currencies = currencies;
    if (notifications != null) this.notifications = notifications;
    if (isOffline != null) this.isOffline = isOffline;
    if (lastDataUpdate != null) this.lastDataUpdate = lastDataUpdate;
    notifyListeners();
  }

  /// Çıkışta tüm oturum verisini temizler.
  void clear() {
    currentUser = null;
    mekkeTrip = medineTrip = null;
    mekkeHotel = medineHotel = null;
    mekkeOda = medineOda = null;
    mekkePrayer = medinePrayer = null;
    currencies = [];
    notifications = [];
    isOffline = false;
    lastDataUpdate = null;
    notifyListeners();
  }
}

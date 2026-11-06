// KURTARILAN İSKELET: lib/features/home/screens/profil.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
  // _ createTicker(/* No info */)
  //   Widget/nesneler: Ticker
  //   çağrı: __ProfilScreenState&State&SingleTickerProviderStateMixin._updateTickerModeNotifier   [umrem_demo/features/home/screens/profil.dart]

  // _ _updateTickerModeNotifier(/* No info */)

  // [closure] void _updateTicker(dynamic)

  // _ dispose(/* No info */)

  // [closure] void dispose(dynamic)
  //   çağrı: __ProfilScreenState&State&SingleTickerProviderStateMixin.dispose   [umrem_demo/features/home/screens/profil.dart]

  // _ activate(/* No info */)
  //   çağrı: __ProfilScreenState&State&SingleTickerProviderStateMixin._updateTickerModeNotifier   [umrem_demo/features/home/screens/profil.dart]

}

class _ProfilScreenState extends __ProfilScreenState&State&SingleTickerProviderStateMixin {
  // _ initState(/* No info */)
  //   Widget/nesneler: AnimationController, CurvedAnimation
  //   Metinler: '_selectedQuote@936387819'
  //   çağrı: _ProfilScreenState._checkLocationPermission   [umrem_demo/features/home/screens/profil.dart]

  // _ _checkLocationPermission(/* No info */) async
  //   çağrı: Geolocator.checkPermission   [geolocator/geolocator.dart]
  //   çağrı: Geolocator.isLocationServiceEnabled   [geolocator/geolocator.dart]
  //   çağrı: FlutterBackgroundService.isRunning   [flutter_background_service/flutter_background_service.dart]
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]

  // [closure] void <anonymous closure>(dynamic)

  // [closure] void <anonymous closure>(dynamic)

  // [closure] void <anonymous closure>(dynamic)

  // _ _stopLocationTracking(/* No info */) async
  //   Metinler: 'stopService' | 'Konum takibi durduruldu.' | 'Konum takibi durdurulamadı.'
  //   çağrı: FlutterBackgroundService.invoke   [flutter_background_service/flutter_background_service.dart]
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: GlobalSnackBar.showSuccess   [umrem_demo/core/utils/global_snackbar.dart]
  //   çağrı: GlobalSnackBar.showError   [umrem_demo/core/utils/global_snackbar.dart]

  // [closure] Future<void> _stopLocationTracking(dynamic)
  //   çağrı: _ProfilScreenState._stopLocationTracking   [umrem_demo/features/home/screens/profil.dart]

  // [closure] void <anonymous closure>(dynamic)

  // _ _startLocationTracking(/* No info */) async
  //   Metinler: 'Konum servisi kapalı. Lütfen telefonunuzun konum ayarlarını açın.' | 'Konum izni reddedildi.' | 'Konum izni kalıcı olarak reddedildi. Lütfen ayarlardan izin verin.' | 'Konum takibi başlatıldı.' | 'Konum takibi başlatılamadı: '
  //   çağrı: Geolocator.isLocationServiceEnabled   [geolocator/geolocator.dart]
  //   çağrı: GlobalSnackBar.showError   [umrem_demo/core/utils/global_snackbar.dart]
  //   çağrı: Geolocator.openLocationSettings   [geolocator/geolocator.dart]
  //   çağrı: Geolocator.checkPermission   [geolocator/geolocator.dart]
  //   çağrı: Geolocator.requestPermission   [geolocator/geolocator.dart]
  //   çağrı: Geolocator.openAppSettings   [geolocator/geolocator.dart]
  //   çağrı: FlutterBackgroundService.startService   [flutter_background_service/flutter_background_service.dart]
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: GlobalSnackBar.showSuccess   [umrem_demo/core/utils/global_snackbar.dart]

  // [closure] Future<void> _startLocationTracking(dynamic)
  //   çağrı: _ProfilScreenState._startLocationTracking   [umrem_demo/features/home/screens/profil.dart]

  // _ build(/* No info */)
  //   Widget/nesneler: AppBar, TextStyle, Text, Center, Scaffold, CircularProgressIndicator, SizedBox, Container, Icon, IconButton, LinearGradient, Radius, BorderRadius, BoxShadow, BoxDecoration, Column, Expanded, Row, QuickActionCard, InfoCard, DateTime, QuoteWidget, SingleChildScrollView, FadeTransition
  //   Metinler: '-' | 'Kullanıcı bilgisi bulunamadı' | 'Profil' | 'Çıkış Yap' | 'Misafir' | 'misafir' | 'Umre Ziyaretçisi' | 'Hızlı Erişim' | 'Rehberle İletişim' | 'Rehberinizle iletişim kurun' | 'T.C. Kimlik No' | 'Telefon' | 'Doğum Tarihi' | 'Kayıt Tarihi' | 'Umre Bilgileri' | ' - ' | 'Mekke Seferi' | 'Medine Seferi' | 'Mekke: ' | '\\nMedine: ' | 'Otel Bilgileri' | 'Oda Bilgileri' | 'Konum Takibi'
  //   çağrı: _ProfilScreenState._formatDate   [umrem_demo/features/home/screens/profil.dart]
  //   çağrı: LocationButton.LocationButton.stop   [umrem_demo/features/home/widgets/location_button.dart]
  //   çağrı: LocationButton.LocationButton.requestPermission   [umrem_demo/features/home/widgets/location_button.dart]
  //   çağrı: LocationButton.LocationButton.start   [umrem_demo/features/home/widgets/location_button.dart]

  // _ _formatDate(/* No info */)
  //   Metinler: 'Ocak' | 'Şubat' | 'Mart' | 'Nisan' | 'Mayıs' | 'Haziran' | 'Temmuz' | 'Ağustos' | 'Eylül' | 'Ekim' | 'Kasım' | 'Aralık' | ' '

  // [closure] Future<void> _requestLocationPermission(dynamic)
  //   çağrı: _ProfilScreenState._requestLocationPermission   [umrem_demo/features/home/screens/profil.dart]

  // _ _requestLocationPermission(/* No info */) async
  //   Metinler: 'Konum izni verildi.' | 'Konum izni reddedildi.'
  //   çağrı: Geolocator.checkPermission   [geolocator/geolocator.dart]
  //   çağrı: Geolocator.openLocationSettings   [geolocator/geolocator.dart]
  //   çağrı: GlobalSnackBar.showInfo   [umrem_demo/core/utils/global_snackbar.dart]
  //   çağrı: Geolocator.requestPermission   [geolocator/geolocator.dart]
  //   çağrı: GlobalSnackBar.showSuccess   [umrem_demo/core/utils/global_snackbar.dart]
  //   çağrı: _ProfilScreenState._checkLocationPermission   [umrem_demo/features/home/screens/profil.dart]
  //   çağrı: GlobalSnackBar.showError   [umrem_demo/core/utils/global_snackbar.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   Widget/nesneler: MaterialPageRoute<X0>
  //   çağrı: Navigator.push   [flutter/src/widgets/navigator.dart]

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: .ReadContext.read   [provider/src/provider.dart]
  //   çağrı: SplashProvider.logout   [umrem_demo/features/splash/providers/splash_provider.dart]

  // [closure] void <anonymous closure>(dynamic)

  // [closure] void <anonymous closure>(dynamic)

  // dynamic dispose(dynamic)

  // [closure] void dispose(dynamic)
  //   çağrı: _ProfilScreenState.dispose   [umrem_demo/features/home/screens/profil.dart]

  // _ dispose(/* No info */)
  //   çağrı: __ProfilScreenState&State&SingleTickerProviderStateMixin.dispose   [umrem_demo/features/home/screens/profil.dart]

}

class ProfilScreen extends StatefulWidget {
  // _ createState(/* No info */)
  //   Widget/nesneler: _ProfilScreenState

}

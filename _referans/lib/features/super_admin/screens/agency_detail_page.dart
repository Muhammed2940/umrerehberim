// KURTARILAN İSKELET: lib/features/super_admin/screens/agency_detail_page.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
  // _ createTicker(/* No info */)
  //   Widget/nesneler: Ticker
  //   çağrı: __AgencyDetailPageState&State&SingleTickerProviderStateMixin._updateTickerModeNotifier   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]

  // _ _updateTickerModeNotifier(/* No info */)

  // [closure] void _updateTicker(dynamic)

  // _ dispose(/* No info */)

  // [closure] void dispose(dynamic)
  //   çağrı: __AgencyDetailPageState&State&SingleTickerProviderStateMixin.dispose   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]

  // _ activate(/* No info */)
  //   çağrı: __AgencyDetailPageState&State&SingleTickerProviderStateMixin._updateTickerModeNotifier   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]

}

class _AgencyDetailPageState extends __AgencyDetailPageState&State&SingleTickerProviderStateMixin {
  // _ initState(/* No info */)
  //   Widget/nesneler: TabController

  // _ didChangeDependencies(/* No info */)
  //   çağrı: ModalRoute.of   [flutter/src/widgets/routes.dart]
  //   çağrı: _AgencyDetailPageState._loadAgencyData   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]

  // _ _loadAgencyData(/* No info */) async
  //   Widget/nesneler: Text, SnackBar
  //   Metinler: 'Veri yüklenirken hata: '
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: FirestoreService.getUsersByAgency   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.getTripsByAgency   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.getHotelsByAgency   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.getRoomsByAgency   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.getCurrenciesByAgency   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.getAllTripManagers   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: ScaffoldMessenger.of   [flutter/src/material/scaffold.dart]
  //   çağrı: ScaffoldMessengerState.showSnackBar   [flutter/src/material/scaffold.dart]

  // [closure] Future<void> _loadAgencyData(dynamic)
  //   çağrı: _AgencyDetailPageState._loadAgencyData   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]

  // [closure] void <anonymous closure>(dynamic)

  // [closure] void <anonymous closure>(dynamic)

  // _ build(/* No info */)
  //   Widget/nesneler: AppBar, Scaffold, Text, IconButton, TabBar, UsersTab, TripsTab, HotelsTab, RoomsTab, CurrenciesTab, CalendarTab, TabBarView
  //   Metinler: 'Kullanıcılar' | 'Seferler' | 'Oteller' | 'Odalar' | 'Döviz' | 'Takvim'
  //   çağrı: .buildTab   [umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart]
  //   çağrı: _AgencyDetailPageState._buildFAB   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]

  // _ _buildFAB(/* No info */)
  //   Widget/nesneler: FloatingActionButton

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: UsersTabState.showUserDialog   [umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart]
  //   çağrı: TripsTabState.showTripDialog   [umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart]
  //   çağrı: HotelsTabState.showHotelDialog   [umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart]
  //   çağrı: RoomsTabState.showRoomDialog   [umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart]
  //   çağrı: CurrenciesTabState.showCurrencyDialog   [umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart]

  // dynamic dispose(dynamic)

  // [closure] void dispose(dynamic)
  //   çağrı: _AgencyDetailPageState.dispose   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]

  // _ dispose(/* No info */)
  //   çağrı: __AgencyDetailPageState&State&SingleTickerProviderStateMixin.dispose   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]

  // _ _AgencyDetailPageState(/* No info */)
  //   Widget/nesneler: FirestoreService, LabeledGlobalKey<X0
  //   çağrı: Firebase.app   [firebase_core/firebase_core.dart]
  //   çağrı: FirebaseFirestore.instanceFor   [cloud_firestore/cloud_firestore.dart]

}

class AgencyDetailPage extends StatefulWidget {
  // _ createState(/* No info */)
  //   Widget/nesneler: _AgencyDetailPageState
  //   çağrı: _AgencyDetailPageState._AgencyDetailPageState   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]

}

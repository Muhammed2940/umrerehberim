// KURTARILAN İSKELET: lib/features/super_admin/widgets/agency_detail/trips_tab.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class TripsTabState extends State<dynamic> {
  // _ showTripDialog(/* No info */)
  //   Widget/nesneler: TextEditingController
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: StatefulBuilder

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void)
  //   Widget/nesneler: Radius, BorderRadius, RoundedRectangleBorder, Text, DropdownButtonFormField<X0>, Column, SingleChildScrollView, TextButton, ElevatedButton, AlertDialog
  //   Metinler: 'Sefer Düzenle' | 'Yeni Sefer' | 'Sefer Adı *' | 'Lokasyon' | 'Başlangıç' | 'Bitiş' | 'Not' | 'Güncelle' | 'Ekle'
  //   çağrı: .buildDialogTextField   [umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart]
  //   çağrı: .buildDropdownDecoration   [umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart]
  //   çağrı: .buildDatePickerRow   [umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart]
  //   çağrı: TripsTabState._buildManagersSection   [umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart]

  // _ _buildManagersSection(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Text, Row, Wrap, Column, Container
  //   Metinler: ' seçili'
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // [closure] FilterChip <anonymous closure>(dynamic, UserModel)
  //   Widget/nesneler: TextStyle, Text, CircleAvatar, FilterChip
  //   Metinler: 'İsimsiz' | '\\?'

  // [closure] void <anonymous closure>(dynamic, bool)

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   Widget/nesneler: Text, SnackBar
  //   Metinler: 'trips' | 'name' | 'location' | 'start_date' | 'end_date' | 'note' | 'updated_at' | 'agency_id' | 'created_at' | 'Hata: '
  //   çağrı: ScaffoldMessenger.of   [flutter/src/material/scaffold.dart]
  //   çağrı: ScaffoldMessengerState.showSnackBar   [flutter/src/material/scaffold.dart]
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: Timestamp.Timestamp.fromMicrosecondsSinceEpoch   [cloud_firestore_platform_interface/src/timestamp.dart]
  //   çağrı: FieldValue.serverTimestamp   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.update   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: FirestoreService.removeTripManager   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.assignTripManager   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: CurrenciesTabState.onDataChanged   [umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart]
  //   çağrı: _JsonCollectionReference.add   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: RoomsTabState.firestoreService   [umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart]
  //   çağrı: _AgencyDetailPageState._loadAgencyData   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] void <anonymous closure>(dynamic)

  // [closure] void <anonymous closure>(dynamic, List<String>)

  // [closure] void <anonymous closure>(dynamic, DateTime?)

  // [closure] void <anonymous closure>(dynamic, DateTime?)

  // [closure] void <anonymous closure>(dynamic, String?)

  // _ build(/* No info */)
  //   Widget/nesneler: ListView
  //   Metinler: 'Sefer bulunamadı' | 'Sefer Ekle'
  //   çağrı: .buildEmptyState   [umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart]

  // [closure] Widget <anonymous closure>(dynamic, BuildContext, int)
  //   çağrı: TripsTabState._buildTripCard   [umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart]

  // _ _buildTripCard(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Text, Expanded, IconButton, Row, Column, Container
  //   Metinler: ', ' | 'İsimsiz Sefer' | '-' | 'Lokasyon' | ' ' | 'Başlangıç' | 'Bitiş' | 'Not' | 'Yöneticiler'
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]
  //   çağrı: .buildInfoRow   [umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: TripsTabState._confirmDeleteTrip   [umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart]

  // _ _confirmDeleteTrip(/* No info */)
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: StatefulBuilder

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void)
  //   Widget/nesneler: Radius, BorderRadius, RoundedRectangleBorder, Text, TextButton, ElevatedButton, AlertDialog
  //   Metinler: '\\"' | '\\" seferini silmek istediğinize emin misiniz\\?'

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   çağrı: FirestoreService.deleteTrip   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: _AgencyDetailPageState._loadAgencyData   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: TripsTabState.showTripDialog   [umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart]

  // [closure] bool <anonymous closure>(dynamic, UserModel)

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: TripsTabState.showTripDialog   [umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart]

}

class TripsTab extends StatefulWidget {
  // _ createState(/* No info */)
  //   Widget/nesneler: TripsTabState

}

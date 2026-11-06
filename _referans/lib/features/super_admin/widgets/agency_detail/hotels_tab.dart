// KURTARILAN İSKELET: lib/features/super_admin/widgets/agency_detail/hotels_tab.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class HotelsTabState extends State<dynamic> {
  // _ showHotelDialog(/* No info */)
  //   Widget/nesneler: TextEditingController
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: StatefulBuilder

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void)
  //   Widget/nesneler: Radius, BorderRadius, RoundedRectangleBorder, Text, DropdownButtonFormField<X0>, BoxDecoration, Row, Container, Column, SingleChildScrollView, TextButton, ElevatedButton, AlertDialog
  //   Metinler: 'Otel Düzenle' | 'Yeni Otel' | 'Bağlı Sefer *' | 'Şehir: ' | 'Otel Adı *' | 'Adres' | 'Güncelle' | 'Ekle'
  //   çağrı: .buildDropdownDecoration   [umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart]
  //   çağrı: .buildDialogTextField   [umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart]

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   Widget/nesneler: Text, SnackBar
  //   Metinler: 'hotels' | 'name' | 'city' | 'address' | 'trip_id' | 'updated_at' | 'agency_id' | 'created_at' | 'Hata: '
  //   çağrı: ScaffoldMessenger.of   [flutter/src/material/scaffold.dart]
  //   çağrı: ScaffoldMessengerState.showSnackBar   [flutter/src/material/scaffold.dart]
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: FieldValue.serverTimestamp   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.update   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: CurrenciesTabState.onDataChanged   [umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart]
  //   çağrı: _JsonCollectionReference.add   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _AgencyDetailPageState._loadAgencyData   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] void <anonymous closure>(dynamic, String?)

  // _ build(/* No info */)
  //   Widget/nesneler: ListView
  //   Metinler: 'Otel bulunamadı' | 'Otel Ekle'
  //   çağrı: .buildEmptyState   [umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart]

  // [closure] Widget <anonymous closure>(dynamic, BuildContext, int)
  //   çağrı: HotelsTabState._buildHotelCard   [umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart]

  // _ _buildHotelCard(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Text, Expanded, IconButton, Row, Column, Container
  //   Metinler: 'İsimsiz Otel' | '-' | 'Şehir' | 'Adres'
  //   çağrı: .buildInfoRow   [umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: HotelsTabState._confirmDeleteHotel   [umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart]

  // _ _confirmDeleteHotel(/* No info */)
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: StatefulBuilder

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void)
  //   Widget/nesneler: Radius, BorderRadius, RoundedRectangleBorder, Text, TextButton, ElevatedButton, AlertDialog
  //   Metinler: '\\"' | '\\" otelini silmek istediğinize emin misiniz\\?'

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   çağrı: FirestoreService.deleteHotel   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: _AgencyDetailPageState._loadAgencyData   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: HotelsTabState.showHotelDialog   [umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: HotelsTabState.showHotelDialog   [umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart]

}

class HotelsTab extends StatefulWidget {
  // _ createState(/* No info */)
  //   Widget/nesneler: HotelsTabState

}

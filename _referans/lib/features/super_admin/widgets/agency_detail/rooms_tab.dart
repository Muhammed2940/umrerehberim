// KURTARILAN İSKELET: lib/features/super_admin/widgets/agency_detail/rooms_tab.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class RoomsTabState extends State<dynamic> {
  // [closure] DropdownMenuItem<String?> <anonymous closure>(dynamic, HotelModel)
  //   Widget/nesneler: Text, DropdownMenuItem<X0>

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void)
  //   Widget/nesneler: Radius, BorderRadius, RoundedRectangleBorder, Text, DropdownButtonFormField<X0>, Column, SingleChildScrollView, TextButton, ElevatedButton, AlertDialog
  //   Metinler: 'Oda Düzenle' | 'Yeni Oda' | 'Sefer *' | 'Otel *' | 'Oda Numarası *' | 'Kapasite' | 'Oda Cinsiyet Türü *' | 'Güncelle' | 'Ekle'
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]
  //   çağrı: .buildDropdownDecoration   [umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart]
  //   çağrı: .buildDialogTextField   [umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart]

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   Widget/nesneler: Text, SnackBar
  //   Metinler: 'rooms' | 'hotel_id' | 'room_number' | 'capacity' | 'gender' | 'updated_at' | 'agency_id' | 'created_at' | 'Hata: '
  //   çağrı: ScaffoldMessenger.of   [flutter/src/material/scaffold.dart]
  //   çağrı: ScaffoldMessengerState.showSnackBar   [flutter/src/material/scaffold.dart]
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: FieldValue.serverTimestamp   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.update   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: RoomsTabState.firestoreService   [umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart]
  //   çağrı: _JsonCollectionReference.add   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: RoomsTabState.onDataChanged   [umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart]
  //   çağrı: _AgencyDetailPageState._loadAgencyData   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // get _ onDataChanged(/* No info */)

  // get _ firestoreService(/* No info */)

  // [closure] void <anonymous closure>(dynamic)

  // [closure] void <anonymous closure>(dynamic, String?)

  // [closure] void <anonymous closure>(dynamic, String?)

  // [closure] void <anonymous closure>(dynamic, String?)

  // [closure] void <anonymous closure>(dynamic)

  // [closure] bool <anonymous closure>(dynamic, HotelModel)

  // [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: StatefulBuilder

  // _ showRoomDialog(/* No info */)
  //   Widget/nesneler: TextEditingController
  //   Metinler: '4'
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] bool <anonymous closure>(dynamic, HotelModel)

  // _ build(/* No info */)
  //   Widget/nesneler: ListView
  //   Metinler: 'Oda bulunamadı' | 'Oda Ekle'
  //   çağrı: .buildEmptyState   [umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart]

  // [closure] Widget <anonymous closure>(dynamic, BuildContext, int)
  //   çağrı: RoomsTabState._buildRoomCard   [umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart]

  // _ _buildRoomCard(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Text, Expanded, Icon, TextStyle, Row, Container, IconButton, Column, GestureDetector
  //   Metinler: 'Oda ' | '/' | 'Bilinmiyor' | 'Otel' | ' kişi' | 'Kapasite' | 'Cinsiyet' | 'Kişileri görmek için tıklayın'
  //   çağrı: CurrenciesTabState.onDataChanged   [umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]
  //   çağrı: .buildInfoRow   [umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: RoomsTabState._showRoomOccupantsDialog   [umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart]

  // _ _showRoomOccupantsDialog(/* No info */)
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: StatefulBuilder

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void)
  //   Widget/nesneler: Radius, BorderRadius, RoundedRectangleBorder, Text, ListView, SizedBox, TextButton, AlertDialog
  //   Metinler: 'Oda ' | ' - Kişiler'
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // [closure] Container <anonymous closure>(dynamic, BuildContext, int)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Text, CircleAvatar, Column, Expanded, IconButton, Row, Container
  //   Metinler: 'Mekke' | 'Medine' | '\\?' | ' • ' | 'Odadan Çıkar'

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   Widget/nesneler: Text, SnackBar
  //   Metinler: 'updated_at' | 'mekke_oda_id' | 'medine_oda_id' | 'users' | ' odadan çıkarıldı'
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]
  //   çağrı: FieldValue.serverTimestamp   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.update   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _AgencyDetailPageState._loadAgencyData   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]
  //   çağrı: ScaffoldMessenger.of   [flutter/src/material/scaffold.dart]
  //   çağrı: ScaffoldMessengerState.showSnackBar   [flutter/src/material/scaffold.dart]

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: Radius, BorderRadius, RoundedRectangleBorder, Text, TextButton, AlertDialog
  //   Metinler: ' kullanıcısını bu odadan çıkarmak istediğinize emin misiniz\\?'

  // [closure] bool <anonymous closure>(dynamic, UserModel)

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: RoomsTabState._confirmDeleteRoom   [umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart]

  // _ _confirmDeleteRoom(/* No info */)
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: StatefulBuilder

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void)
  //   Widget/nesneler: Radius, BorderRadius, RoundedRectangleBorder, Text, TextButton, ElevatedButton, AlertDialog
  //   Metinler: '\\"Oda ' | '\\" odasını silmek istediğinize emin misiniz\\?'

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   çağrı: FirestoreService.deleteRoom   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: _AgencyDetailPageState._loadAgencyData   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: RoomsTabState.showRoomDialog   [umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart]

  // [closure] bool <anonymous closure>(dynamic, UserModel)

  // [closure] bool <anonymous closure>(dynamic, HotelModel)

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: RoomsTabState.showRoomDialog   [umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart]

}

class RoomsTab extends StatefulWidget {
  // _ createState(/* No info */)
  //   Widget/nesneler: RoomsTabState

}

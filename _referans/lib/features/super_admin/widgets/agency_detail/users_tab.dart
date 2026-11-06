// KURTARILAN İSKELET: lib/features/super_admin/widgets/agency_detail/users_tab.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class UsersTabState extends State<dynamic> {
  // [closure] bool <anonymous closure>(dynamic, RoomModel)

  // _ _getRoomNumber(/* No info */)
  //   Metinler: '-'

  // _ showUserDialog(/* No info */)
  //   Widget/nesneler: TextEditingController
  //   Metinler: 'misafir' | 'Mekke'
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: StatefulBuilder

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void)
  //   Widget/nesneler: Radius, BorderRadius, RoundedRectangleBorder, Text, DropdownButtonFormField<X0>, BorderSide, OutlineInputBorder, InputDecoration, TextStyle, InputDecorator, InkWell, Column, SingleChildScrollView, SizedBox, TextButton, ElevatedButton, AlertDialog
  //   Metinler: 'Mekke' | 'Kullanıcı Düzenle' | 'Yeni Kullanıcı' | 'Ad Soyad' | 'TC Kimlik No' | 'Telefon' | 'Konum / Adres' | 'Kullanıcı Tipi' | 'Cinsiyet' | 'Doğum Tarihi' | '0' | '/' | 'Tarih Seçiniz' | ' Seferi' | ' Oteli' | ' Odası' | 'Güncelle' | 'Ekle'
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]
  //   çağrı: CurrenciesTabState.onDataChanged   [umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart]
  //   çağrı: MediaQuery._of   [flutter/src/widgets/media_query.dart]
  //   çağrı: .buildDialogTextField   [umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart]
  //   çağrı: .buildDropdownDecoration   [umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart]
  //   çağrı: UsersTabState._buildLocationSelector   [umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart]
  //   çağrı: UsersTabState._buildAssignmentsInfo   [umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart]

  // _ _buildAssignmentsInfo(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Column, Container
  //   Metinler: 'Mekke Seferi' | 'Mekke Oteli' | 'Mekke Odası' | 'Medine Seferi' | 'Medine Oteli' | 'Medine Odası'
  //   çağrı: UsersTabState._getTripName   [umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart]
  //   çağrı: UsersTabState._buildAssignmentRow   [umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart]
  //   çağrı: UsersTabState._getHotelName   [umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart]
  //   çağrı: UsersTabState._getRoomNumber   [umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart]

  // _ _getHotelName(/* No info */)
  //   Metinler: '-'

  // _ _buildAssignmentRow(/* No info */)
  //   Widget/nesneler: Text, TextStyle, Row, Padding
  //   Metinler: ': ' | '-'

  // _ _getTripName(/* No info */)
  //   Metinler: '-'

  // _ _buildLocationSelector(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Icon, TextStyle, Text, Row, Container, GestureDetector, Expanded
  //   Metinler: 'Mekke' | 'Medine'

  // [closure] void <anonymous closure>(dynamic)
  //   Metinler: 'Medine'

  // [closure] void <anonymous closure>(dynamic)
  //   Metinler: 'Mekke'

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   Widget/nesneler: Text, SnackBar
  //   Metinler: 'users' | 'user_name' | 'user_tc' | 'user_tel' | 'user_location' | 'user_type' | 'cinsiyet' | 'dogum_tarihi' | 'mekke_seferi_id' | 'mekke_otel_id' | 'mekke_oda_id' | 'medine_seferi_id' | 'medine_otel_id' | 'medine_oda_id' | 'updated_at' | 'user_token' | 'agency_id' | 'created_at' | 'Hata: '
  //   çağrı: ScaffoldMessenger.of   [flutter/src/material/scaffold.dart]
  //   çağrı: ScaffoldMessengerState.showSnackBar   [flutter/src/material/scaffold.dart]
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: FieldValue.serverTimestamp   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.update   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: RoomsTabState.firestoreService   [umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart]
  //   çağrı: _JsonDocumentReference.set   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: RoomsTabState.onDataChanged   [umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart]
  //   çağrı: _AgencyDetailPageState._loadAgencyData   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] void <anonymous closure>(dynamic)

  // [closure] void <anonymous closure>(dynamic, String?)

  // [closure] void <anonymous closure>(dynamic)
  //   Metinler: 'Mekke'

  // [closure] DropdownMenuItem<String?> <anonymous closure>(dynamic, RoomModel)
  //   Widget/nesneler: TextStyle, Text, DropdownMenuItem<X0>
  //   Metinler: 'Karma' | ' • ' | '/'

  // [closure] void <anonymous closure>(dynamic, String?)

  // [closure] void <anonymous closure>(dynamic)
  //   Metinler: 'Mekke'

  // [closure] void <anonymous closure>(dynamic, String?)

  // [closure] void <anonymous closure>(dynamic)
  //   Metinler: 'Mekke'

  // [closure] void <anonymous closure>(dynamic, String)

  // [closure] void <anonymous closure>(dynamic)

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   Widget/nesneler: DateTime

  // [closure] void <anonymous closure>(dynamic)

  // [closure] Theme <anonymous closure>(dynamic, BuildContext, Widget?)
  //   Widget/nesneler: DialogThemeData, Theme

  // [closure] void <anonymous closure>(dynamic, String?)

  // [closure] void <anonymous closure>(dynamic, String?)

  // [closure] void <anonymous closure>(dynamic)

  // [closure] bool <anonymous closure>(dynamic, RoomModel)

  // [closure] bool <anonymous closure>(dynamic, HotelModel)

  // [closure] bool <anonymous closure>(dynamic, TripModel)

  // [closure] bool <anonymous closure>(dynamic, RoomModel)

  // [closure] bool <anonymous closure>(dynamic, HotelModel)

  // [closure] bool <anonymous closure>(dynamic, TripModel)

  // [closure] void <anonymous closure>(dynamic)

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   Metinler: 'users'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.delete   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _AgencyDetailPageState._loadAgencyData   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void)
  //   Widget/nesneler: Radius, BorderRadius, RoundedRectangleBorder, Text, TextButton, ElevatedButton, AlertDialog
  //   Metinler: '\\"' | '\\" kullanıcısını silmek istediğinize emin misiniz\\?'

  // [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: StatefulBuilder

  // _ confirmDeleteUser(/* No info */)
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // _ build(/* No info */)
  //   Widget/nesneler: ListView
  //   Metinler: 'Kullanıcı bulunamadı' | 'Kullanıcı Ekle'
  //   çağrı: .buildEmptyState   [umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart]

  // [closure] Widget <anonymous closure>(dynamic, BuildContext, int)
  //   çağrı: UsersTabState._buildUserCard   [umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart]

  // _ _buildUserCard(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Text, CircleAvatar, IconButton, Row, ListTile, Container
  //   Metinler: 'K' | 'İsimsiz Kullanıcı' | 'TC: ' | 'Belirtilmemiş' | ' • '

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: UsersTabState.confirmDeleteUser   [umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: UsersTabState.showUserDialog   [umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: UsersTabState.showUserDialog   [umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart]

}

class UsersTab extends StatefulWidget {
  // _ createState(/* No info */)
  //   Widget/nesneler: UsersTabState

}

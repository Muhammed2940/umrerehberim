// KURTARILAN İSKELET: lib/features/admin/screens/rooms_management_screen.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class _RoomsManagementScreenState extends State<dynamic> {
  // _ build(/* No info */)
  //   Widget/nesneler: AnimatedBuilder

  // [closure] Scaffold <anonymous closure>(dynamic, BuildContext, Widget?)
  //   Widget/nesneler: Icon, IconButton, TextStyle, Text, AppBar, FloatingActionButton, Center, ListView, Scaffold
  //   Metinler: ' - Odalar' | 'Bu otele ait oda eklenmedi'

  // [closure] RoomCard <anonymous closure>(dynamic, BuildContext, int)
  //   Widget/nesneler: RoomCard

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: _RoomsManagementScreenState._showDeleteConfirm   [umrem_demo/features/admin/screens/rooms_management_screen.dart]

  // _ _showDeleteConfirm(/* No info */) async
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]
  //   çağrı: AdminProvider.deleteRoom   [umrem_demo/features/admin/providers/admin_provider.dart]

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: Text, TextButton, AlertDialog
  //   Metinler: ' numaralı oda silinecek. Emin misiniz\\?'

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: _RoomsManagementScreenState._openEditRoomSheet   [umrem_demo/features/admin/screens/rooms_management_screen.dart]

  // _ _openEditRoomSheet(/* No info */) async
  //   Widget/nesneler: LabeledGlobalKey<X0, TextEditingController
  //   çağrı: .showModalBottomSheet   [flutter/src/material/bottom_sheet.dart]

  // [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: StatefulBuilder

  // [closure] Padding <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void)
  //   Widget/nesneler: EdgeInsets, Radius, BorderRadius, BoxDecoration, Container, TextFormField, DropdownButtonFormField<X0>, RoundedRectangleBorder, Text, ElevatedButton, SizedBox, Column, Form, Padding
  //   Metinler: 'Güncelleniyor...' | 'Güncelle'
  //   çağrı: MediaQuery._of   [flutter/src/widgets/media_query.dart]

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   çağrı: AdminProvider.updateRoom   [umrem_demo/features/admin/providers/admin_provider.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] String? <anonymous closure>(dynamic, String?)
  //   Metinler: 'Cinsiyet türü seçiniz'

  // [closure] void <anonymous closure>(dynamic, String?)

  // [closure] String? <anonymous closure>(dynamic, String?)
  //   Metinler: 'Geçerli kapasite girin'

  // [closure] String? <anonymous closure>(dynamic, String?)
  //   Metinler: 'Oda numarası girin'

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: _RoomsManagementScreenState._openCreateRoomSheet   [umrem_demo/features/admin/screens/rooms_management_screen.dart]

  // _ _openCreateRoomSheet(/* No info */) async
  //   Widget/nesneler: LabeledGlobalKey<X0, TextEditingController
  //   Metinler: '1'
  //   çağrı: .showModalBottomSheet   [flutter/src/material/bottom_sheet.dart]

  // [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: StatefulBuilder

  // [closure] Padding <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void)
  //   Widget/nesneler: EdgeInsets, Radius, BorderRadius, BoxDecoration, Container, TextFormField, DropdownButtonFormField<X0>, RoundedRectangleBorder, Text, ElevatedButton, SizedBox, Column, Form, Padding
  //   Metinler: 'Kaydediliyor...' | 'Kaydet'
  //   çağrı: MediaQuery._of   [flutter/src/widgets/media_query.dart]

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   çağrı: AdminProvider.createRoom   [umrem_demo/features/admin/providers/admin_provider.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] void <anonymous closure>(dynamic, String?)

}

class RoomCard extends StatelessWidget {
  // _ build(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BorderSide, Border, BoxShadow, BoxDecoration, Text, TextStyle, Container, Column, Expanded, Icon, Row, PopupMenuButton<X0>, GestureDetector
  //   Metinler: 'Oda ' | ' kişilik' | ' • ' | 'Not: ' | '/' | 'Kişileri görmek için tıklayın'
  //   çağrı: RoomCard._getRoomOccupants   [umrem_demo/features/admin/screens/rooms_management_screen.dart]

  // _ _getRoomOccupants(/* No info */)
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // [closure] bool <anonymous closure>(dynamic, UserModel)

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: RoomCard._showRoomOccupantsDialog   [umrem_demo/features/admin/screens/rooms_management_screen.dart]

  // _ _showRoomOccupantsDialog(/* No info */)
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: StatefulBuilder

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void)
  //   Widget/nesneler: Text, ListView, SizedBox, TextButton, AlertDialog
  //   Metinler: 'Oda ' | ' - Kişiler'
  //   çağrı: RoomCard._getRoomOccupants   [umrem_demo/features/admin/screens/rooms_management_screen.dart]

  // [closure] Container <anonymous closure>(dynamic, BuildContext, int)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Text, CircleAvatar, TextStyle, Column, Expanded, IconButton, Row, Container
  //   Metinler: 'Mekke' | 'Medine' | '\\?' | ' • ' | 'Odadan Çıkar'

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   Metinler: ' odadan çıkarıldı' | 'Kullanıcı odadan çıkarılamadı'
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]
  //   çağrı: AdminProvider.assignUser   [umrem_demo/features/admin/providers/admin_provider.dart]
  //   çağrı: GlobalSnackBar.showSuccess   [umrem_demo/core/utils/global_snackbar.dart]
  //   çağrı: GlobalSnackBar.showError   [umrem_demo/core/utils/global_snackbar.dart]

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: Text, TextButton, AlertDialog
  //   Metinler: ' kullanıcısını bu odadan çıkarmak istediğinize emin misiniz\\?'

  // [closure] void <anonymous closure>(dynamic, String)
  //   Metinler: 'edit' | 'delete'

  // [closure] List<PopupMenuItem<String>> <anonymous closure>(dynamic, BuildContext)

}

class RoomsManagementScreen extends StatefulWidget {
  // _ createState(/* No info */)
  //   Widget/nesneler: _RoomsManagementScreenState

}

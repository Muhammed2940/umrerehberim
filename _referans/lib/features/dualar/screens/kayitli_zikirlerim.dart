// KURTARILAN İSKELET: lib/features/dualar/screens/kayitli_zikirlerim.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class _ZikirlerimState extends State<dynamic> {
  // _ build(/* No info */)
  //   Widget/nesneler: IconButton, SystemUiOverlayStyle, AppBar, Stack, Scaffold
  //   çağrı: _ZikirlerimState.getBody   [umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart]

  // _ getBody(/* No info */)
  //   Widget/nesneler: ListView

  // [closure] Padding <anonymous closure>(dynamic, BuildContext, int)
  //   Widget/nesneler: Text, IconButton, Row, ListTile, Card, Padding

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: _ZikirlerimState.menuAc   [umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart]

  // _ menuAc(/* No info */)
  //   çağrı: .showModalBottomSheet   [flutter/src/material/bottom_sheet.dart]

  // [closure] SizedBox <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: ListTile, Column, SizedBox

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]
  //   çağrı: _ZikirlerimState.silmeDialog   [umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart]

  // _ silmeDialog(/* No info */)
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: Text, TextStyle, IconButton, AlertDialog
  //   Metinler: ' adlı zikri silmek istediğinize emin misiniz\\?' | 'İptal'

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   Metinler: 'zikirlerim'
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setString   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] void <anonymous closure>(dynamic)

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]
  //   çağrı: _ZikirlerimState.zikirDuzenle   [umrem_demo/features/dualar/screens/kayitli_zikirlerim.dart]

  // _ zikirDuzenle(/* No info */)
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: Text, BorderSide, UnderlineInputBorder, InputDecoration, TextField, Column, TextStyle, IconButton, AlertDialog
  //   Metinler: 'Zikir Adı' | '•' | 'Zikir Sayısı' | 'İptal' | 'Kaydet'
  //   Tipler: EditableText

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   Widget/nesneler: DateTime
  //   Metinler: 'Lütfen Boş Alan Bırakmayınız.' | 'zikirlerim'
  //   çağrı: Fluttertoast.showToast   [fluttertoast/fluttertoast.dart]
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setString   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   Widget/nesneler: DateFormat
  //   Metinler: 'yyyy-MM-dd - kk:mm'
  //   çağrı: DateFormat.DateFormat   [intl/src/intl/date_format.dart]
  //   çağrı: DateFormat.format   [intl/src/intl/date_format.dart]

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   Widget/nesneler: MaterialPageRoute<X0>
  //   çağrı: Navigator.pushAndRemoveUntil   [flutter/src/widgets/navigator.dart]

  // [closure] ZikirCek <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: ModelZikirlerim, ZikirCek

}

class Zikirlerim extends StatefulWidget {
  // _ createState(/* No info */)
  //   Widget/nesneler: _ZikirlerimState
  //   çağrı: _NotificationsPageState._NotificationsPageState   [umrem_demo/features/admin/screens/notifications_page.dart]

}

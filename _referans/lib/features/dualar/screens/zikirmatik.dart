// KURTARILAN İSKELET: lib/features/dualar/screens/zikirmatik.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
  // static List<ModelZikirlerim> zikirlerim()

  // static Color tema()

  // static Color arkaplan()

}

class _ZikirCekState extends State<dynamic> {
  // _ initState(/* No info */)
  //   çağrı: _ZikirCekState.renkBul   [umrem_demo/features/dualar/screens/zikirmatik.dart]
  //   çağrı: _ZikirCekState.zikirYukle   [umrem_demo/features/dualar/screens/zikirmatik.dart]

  // _ zikirYukle(/* No info */) async
  //   Metinler: 'titreme' | 'zikirlerim' | 'kaydedilenZikir' | 'hedef' | ' adlı zikire devam ediyorsunuz.'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.getBool   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: SharedPreferences.getString   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.getInt   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: Fluttertoast.showToast   [fluttertoast/fluttertoast.dart]
  //   Tipler: List

  // [closure] void <anonymous closure>(dynamic)
  //   Metinler: '0'

  // [closure] void <anonymous closure>(dynamic)

  // [closure] void <anonymous closure>(dynamic)

  // [closure] void <anonymous closure>(dynamic)

  // [closure] ModelZikirlerim <anonymous closure>(dynamic, dynamic)
  //   Widget/nesneler: ModelZikirlerim
  //   çağrı: ModelZikirlerim.ModelZikirlerim.fromJson   [umrem_demo/features/dualar/models/model_zikirlerim.dart]
  //   Tipler: Map<String, dynamic>

  // [closure] void <anonymous closure>(dynamic)

  // _ renkBul(/* No info */) async
  //   Metinler: 'renk' | 'arkaplan'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.getInt   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   Widget/nesneler: Color

  // [closure] void <anonymous closure>(dynamic)
  //   Widget/nesneler: Color

  // [closure] String <anonymous closure>(dynamic, ModelZikirlerim)
  //   çağrı: ModelZikirlerim.toJson   [umrem_demo/features/dualar/models/model_zikirlerim.dart]

  // _ zikirlerimeKaydetDialog(/* No info */) async
  //   Widget/nesneler: DateTime, DateFormat, ConcurrentModificationError
  //   Metinler: 'yyyy-MM-dd - kk:mm' | 'kaydedilenZikir' | 'zikirlerim'
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]
  //   çağrı: .verifiedLocale   [intl/src/intl_helpers.dart]
  //   çağrı: DateFormat.addPattern   [intl/src/intl/date_format.dart]
  //   çağrı: DateFormat.format   [intl/src/intl/date_format.dart]
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setInt   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: SharedPreferences.setString   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: BorderSide, UnderlineInputBorder, InputDecoration, TextField, ButtonStyle, TextButton, AlertDialog
  //   Metinler: 'Listeye hangi adla kaydedeceksiniz\\?' | '•'
  //   Tipler: EditableText

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   Metinler: 'Zikriniz Başarıyla Kaydedildi!'
  //   çağrı: _ZikirCekState.zikirlerimeKaydet   [umrem_demo/features/dualar/screens/zikirmatik.dart]
  //   çağrı: Fluttertoast.showToast   [fluttertoast/fluttertoast.dart]

  // _ zikirlerimeKaydet(/* No info */) async
  //   Widget/nesneler: DateTime, DateFormat, ModelZikirlerim, MaterialPageRoute<X0>
  //   Metinler: 'yyyy-MM-dd - kk:mm' | 'Lütfen bir isim giriniz!' | 'zikirlerim' | 'kaydedilenZikir'
  //   çağrı: DateFormat.DateFormat   [intl/src/intl/date_format.dart]
  //   çağrı: DateFormat.format   [intl/src/intl/date_format.dart]
  //   çağrı: Fluttertoast.showToast   [fluttertoast/fluttertoast.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setString   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setInt   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]
  //   çağrı: Navigator.push   [flutter/src/widgets/navigator.dart]

  // [closure] Zikirlerim <anonymous closure>(dynamic, BuildContext)

  // [closure] void <anonymous closure>(dynamic)
  //   Widget/nesneler: MaterialPageRoute<X0>
  //   çağrı: Navigator.push   [flutter/src/widgets/navigator.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // _ build(/* No info */)
  //   Widget/nesneler: SystemUiOverlayStyle, IconButton, Material, ClipOval, Icon, Row, AppBar, Stack, Scaffold
  //   çağrı: _ZikirCekState.getBody   [umrem_demo/features/dualar/screens/zikirmatik.dart]

  // _ getBody(/* No info */)
  //   Widget/nesneler: TextStyle, Text, Padding, CircularProgressIndicator, SizedBox, Stack, InkWell, Material, ClipOval, GestureDetector, Row, Column, SingleChildScrollView
  //   Metinler: 'Hedefiniz: '

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: _ZikirCekState.artir   [umrem_demo/features/dualar/screens/zikirmatik.dart]

  // _ artir(/* No info */) async
  //   Metinler: 'Hedefinize ulaştınız!' | 'hedef' | 'kaydedilenZikir'
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: Fluttertoast.showToast   [fluttertoast/fluttertoast.dart]
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setInt   [shared_preferences/src/shared_preferences_legacy.dart]

  // [closure] void <anonymous closure>(dynamic)

  // [closure] void <anonymous closure>(dynamic)
  //   Metinler: 'Zikirmatik daha fazla artamaz!'
  //   çağrı: Fluttertoast.showToast   [fluttertoast/fluttertoast.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: _ZikirCekState.sifirla   [umrem_demo/features/dualar/screens/zikirmatik.dart]

  // _ sifirla(/* No info */) async
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: TextStyle, Text, IconButton, AlertDialog
  //   Metinler: 'İptal'

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   Metinler: 'kaydedilenZikir'
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setInt   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] void <anonymous closure>(dynamic)

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: _ZikirCekState.zikirlerimeKaydetDialog   [umrem_demo/features/dualar/screens/zikirmatik.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: _ZikirCekState.renkDegistir   [umrem_demo/features/dualar/screens/zikirmatik.dart]

  // _ renkDegistir(/* No info */)
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: Radius, BorderRadius, RoundedRectangleBorder, ElevatedButton, Column, SingleChildScrollView, TextStyle, Text, IconButton, AlertDialog
  //   Metinler: 'İptal'

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]
  //   çağrı: _ZikirCekState.arkaplanRengiDegistir   [umrem_demo/features/dualar/screens/zikirmatik.dart]

  // _ arkaplanRengiDegistir(/* No info */)
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: Radius, BorderRadius, RoundedRectangleBorder, MaterialColorPicker, SingleChildScrollView, TextStyle, Text, IconButton, AlertDialog
  //   Metinler: 'Tamam'

  // [closure] Future<void> <anonymous closure>(dynamic, Color) async
  //   çağrı: _ZikirCekState.renkDegistirMethod   [umrem_demo/features/dualar/screens/zikirmatik.dart]

  // _ renkDegistirMethod(/* No info */) async
  //   Metinler: 'renk' | 'arkaplan'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: SharedPreferences.setInt   [shared_preferences/src/shared_preferences_legacy.dart]

  // [closure] void <anonymous closure>(dynamic)

  // [closure] void <anonymous closure>(dynamic)

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]
  //   çağrı: _ZikirCekState.temaRengiDegistir   [umrem_demo/features/dualar/screens/zikirmatik.dart]

  // _ temaRengiDegistir(/* No info */)
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: Radius, BorderRadius, RoundedRectangleBorder, MaterialColorPicker, SingleChildScrollView, TextStyle, Text, IconButton, AlertDialog
  //   Metinler: 'Tamam'

  // [closure] Future<void> <anonymous closure>(dynamic, Color) async
  //   çağrı: _ZikirCekState.renkDegistirMethod   [umrem_demo/features/dualar/screens/zikirmatik.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: _ZikirCekState.tesbihDuzenle   [umrem_demo/features/dualar/screens/zikirmatik.dart]

  // _ tesbihDuzenle(/* No info */) async
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: BorderSide, UnderlineInputBorder, InputDecoration, TextField, TextStyle, Text, IconButton, AlertDialog
  //   Metinler: 'Nereden başlayıp çekmek istiyorsunuz\\?' | '•' | 'İptal' | 'Kaydet'
  //   Tipler: EditableText

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   Metinler: 'Lütfen bir sayı giriniz!' | 'kaydedilenZikir'
  //   çağrı: _ZikirCekState.duzenle   [umrem_demo/features/dualar/screens/zikirmatik.dart]
  //   çağrı: Fluttertoast.showToast   [fluttertoast/fluttertoast.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setInt   [shared_preferences/src/shared_preferences_legacy.dart]

  // _ duzenle(/* No info */) async
  //   Metinler: 'kaydedilenZikir'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setInt   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: _ZikirCekState.titremeAcKapa   [umrem_demo/features/dualar/screens/zikirmatik.dart]

  // _ titremeAcKapa(/* No info */) async
  //   Metinler: 'titreme'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setBool   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: _ZikirCekState.hedefBelirle   [umrem_demo/features/dualar/screens/zikirmatik.dart]

  // _ hedefBelirle(/* No info */) async
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: BorderSide, UnderlineInputBorder, InputDecoration, TextField, TextStyle, Text, IconButton, AlertDialog
  //   Metinler: 'Kendinize bir hedef belirleyin.' | '•' | 'İptal' | 'Kaydet'
  //   Tipler: EditableText

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   Metinler: 'hedef' | '0' | 'Hedefiniz 0 olamaz!' | "Hedefiniz 99999\\'dan büyük olamaz!" | 'Hedefiniz ' | ' olarak belirlendi!'
  //   çağrı: _ZikirCekState.belirle   [umrem_demo/features/dualar/screens/zikirmatik.dart]
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setInt   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: Fluttertoast.showToast   [fluttertoast/fluttertoast.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // _ belirle(/* No info */) async
  //   Metinler: 'Lütfen bir hedef belirleyin!' | 'hedef'
  //   çağrı: Fluttertoast.showToast   [fluttertoast/fluttertoast.dart]
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setInt   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // _ _ZikirCekState(/* No info */)
  //   Widget/nesneler: TextEditingController

}

class ZikirCek extends StatefulWidget {
  // _ createState(/* No info */)
  //   Widget/nesneler: _ZikirCekState
  //   çağrı: _ZikirCekState._ZikirCekState   [umrem_demo/features/dualar/screens/zikirmatik.dart]

}

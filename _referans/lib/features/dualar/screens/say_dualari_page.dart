// KURTARILAN İSKELET: lib/features/dualar/screens/say_dualari_page.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class _SayDualariPageState extends State<dynamic> {
  // _ initState(/* No info */)

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   Tipler: _PagePosition

  // [closure] void <anonymous closure>(dynamic)

  // _ didChangeDependencies(/* No info */)
  //   Metinler: '_downloadController@1023509472'
  //   çağrı: .ReadContext.read   [provider/src/provider.dart]

  // [closure] void <anonymous closure>(dynamic)

  // _ incrementCount(/* No info */)
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]

  // [closure] void incrementCount(dynamic)
  //   çağrı: _SayDualariPageState.incrementCount   [umrem_demo/features/dualar/screens/say_dualari_page.dart]

  // [closure] void <anonymous closure>(dynamic)

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]

  // [closure] IconButton <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: Icon, IconButton
  //   Metinler: 'Bu sayfa için dil seçeneği mevcut değil' | 'Türkçe Çeviri' | 'Arapça Metin'

  // _ build(/* No info */)
  //   Widget/nesneler: Icon, IconButton, TextStyle, Text, Builder, AppBar, Radius, BorderRadius, BoxShadow, BoxDecoration, Container, GestureDetector, Column, Expanded, Row, PageView, Scaffold
  //   Metinler: "Sa\\'y Duaları (Safa ve Merve)" | 'Zikirmatik' | ' / '

  // [closure] Widget <anonymous closure>(dynamic, BuildContext, int)
  //   çağrı: _SayDualariPageState._buildDuaCard   [umrem_demo/features/dualar/screens/say_dualari_page.dart]

  // _ _buildDuaCard(/* No info */)
  //   Widget/nesneler: BoxDecoration, Text, Expanded, Radius, BorderRadius, Container, Row, BoxShadow, ClipRRect, Column
  //   Metinler: 'isZikirmatik' | 'title' | 'Başlangıç' | 'Bitiş'
  //   çağrı: _SayDualariPageState._buildImageContent   [umrem_demo/features/dualar/screens/say_dualari_page.dart]
  //   Tipler: bool, String

  // _ _buildImageContent(/* No info */)
  //   Widget/nesneler: Column, SingleChildScrollView
  //   Metinler: 'arabicFiles' | 'turkishFiles' | 'files'
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]
  //   Tipler: Iterable

  // [closure] Widget <anonymous closure>(dynamic, String)
  //   çağrı: _SayDualariPageState._buildImage   [umrem_demo/features/dualar/screens/say_dualari_page.dart]

  // _ _buildImage(/* No info */)
  //   Widget/nesneler: FutureBuilder<X0>
  //   çağrı: SayDualariStorageService.getLocalFilePathIfExists   [umrem_demo/core/services/say_dualari_storage_service.dart]

  // [closure] Widget <anonymous closure>(dynamic, BuildContext, AsyncSnapshot<String?>)
  //   Widget/nesneler: _File, Image
  //   çağrı: _SayDualariPageState._buildDownloadWidget   [umrem_demo/features/dualar/screens/say_dualari_page.dart]

  // _ _buildDownloadWidget(/* No info */)
  //   Widget/nesneler: Icon, TextStyle, Text, _ElevatedButtonWithIcon, TextButton, Row, Column, Container
  //   Metinler: 'Resim henüz indirilmemiş'

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]
  //   çağrı: SayDualariDownloadProvider.downloadSingleFile   [umrem_demo/features/dualar/providers/say_dualari_download_provider.dart]
  //   çağrı: Navigator.of   [flutter/src/widgets/navigator.dart]
  //   çağrı: NavigatorState.pop   [flutter/src/widgets/navigator.dart]
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: ScaffoldMessenger.of   [flutter/src/material/scaffold.dart]
  //   çağrı: ScaffoldMessengerState.showSnackBar   [flutter/src/material/scaffold.dart]

  // [closure] Widget <anonymous closure>(dynamic, BuildContext, Object, StackTrace?)
  //   çağrı: _SayDualariPageState._buildDownloadWidget   [umrem_demo/features/dualar/screens/say_dualari_page.dart]

  // dynamic dispose(dynamic)

  // [closure] void dispose(dynamic)
  //   çağrı: _SayDualariPageState.dispose   [umrem_demo/features/dualar/screens/say_dualari_page.dart]

  // _ dispose(/* No info */)

  // _ _SayDualariPageState(/* No info */)
  //   Widget/nesneler: PageController
  //   Metinler: 'title' | "Sa\\'yin 1. Şavtının Duası" | 'arabicFiles' | 'say-arabic-1.png' | 'say-arabic-1-1.png' | 'turkishFiles' | 'say-turkish-1.png' | 'say-turkish-1-1.png' | 'isZikirmatik' | "Sa\\'yin 2. Şavtının Duası" | 'say-arabic-2.png' | 'say-arabic-2-1.png' | 'say-turkish-2.png' | 'say-turkish-2-1.png' | "Sa\\'yin 3. Şavtının Duası" | 'say-arabic-3.png' | 'say-arabic-3-1.png' | 'say-turkish-3.png' | 'say-turkish-3-1.png' | "Sa\\'yin 4. Şavtının Duası" | 'say-arabic-4.jpg' | 'say-arabic-4-1.jpg' | 'say-turkish-4.jpg' | 'say-turkish-4-1.jpg' | "Sa\\'yin 5. Şavtının Duası" | 'say-arabic-5.jpg' | 'say-arabic-5-1.jpg' | 'say-turkish-5.jpg' | 'say-turkish-5-1.jpg' | "Sa\\'yin 6. Şavtının Duası" | 'say-arabic-6.jpg' | 'say-arabic-6-1.jpg' | 'say-turkish-6.jpg' | 'say-turkish-6-1.jpg' | "Sa\\'yin 7. Şavtının Duası" | 'say-arabic-7.jpg' | 'say-arabic-7-1.jpg' | 'say-turkish-7.jpg' | 'say-turkish-7-1.jpg' | "Sa\\'y Sonunda Merve\\'de Dua" | 'files' | 'say-bitis-1.jpg' | 'say-bitis-2.jpg'

}

class SayDualariPage extends StatefulWidget {
  // _ createState(/* No info */)
  //   Widget/nesneler: _SayDualariPageState
  //   çağrı: _SayDualariPageState._SayDualariPageState   [umrem_demo/features/dualar/screens/say_dualari_page.dart]

}

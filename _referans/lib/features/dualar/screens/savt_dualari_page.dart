// KURTARILAN İSKELET: lib/features/dualar/screens/savt_dualari_page.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class _SavtDualariPageState extends State<dynamic> {
  // _ initState(/* No info */)

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   Tipler: _PagePosition

  // [closure] void <anonymous closure>(dynamic)

  // _ didChangeDependencies(/* No info */)
  //   Metinler: '_downloadController@1022035749'
  //   çağrı: .ReadContext.read   [provider/src/provider.dart]

  // _ build(/* No info */)
  //   Widget/nesneler: Icon, IconButton, TextStyle, Text, Builder, AppBar, Radius, BorderRadius, BoxShadow, BoxDecoration, Container, GestureDetector, Column, Expanded, Row, PageView, Scaffold
  //   Metinler: 'Şavt Duaları (Tavaf)' | 'Zikirmatik' | ' / '

  // [closure] Widget <anonymous closure>(dynamic, BuildContext, int)
  //   çağrı: _SavtDualariPageState._buildDuaCard   [umrem_demo/features/dualar/screens/savt_dualari_page.dart]

  // _ _buildDuaCard(/* No info */)
  //   Widget/nesneler: BoxDecoration, Text, Expanded, Radius, BorderRadius, Container, Row, BoxShadow, ClipRRect, Column
  //   Metinler: 'isZikirmatik' | 'title' | 'Başlangıç' | 'Bitiş'
  //   çağrı: _SavtDualariPageState._buildImageContent   [umrem_demo/features/dualar/screens/savt_dualari_page.dart]
  //   Tipler: bool, String

  // _ _buildImageContent(/* No info */)
  //   Widget/nesneler: Column, SingleChildScrollView
  //   Metinler: 'arabicFiles' | 'turkishFiles' | 'files'
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]
  //   Tipler: Iterable

  // [closure] Widget <anonymous closure>(dynamic, String)
  //   çağrı: _SavtDualariPageState._buildImage   [umrem_demo/features/dualar/screens/savt_dualari_page.dart]

  // _ _buildImage(/* No info */)
  //   Widget/nesneler: FutureBuilder<X0>
  //   çağrı: TavafDualariStorageService.getLocalFilePathIfExists   [umrem_demo/core/services/tavaf_dualari_storage_service.dart]

  // [closure] Widget <anonymous closure>(dynamic, BuildContext, AsyncSnapshot<String?>)
  //   Widget/nesneler: _File, Image
  //   çağrı: _SavtDualariPageState._buildDownloadWidget   [umrem_demo/features/dualar/screens/savt_dualari_page.dart]

  // _ _buildDownloadWidget(/* No info */)
  //   Widget/nesneler: Icon, TextStyle, Text, _ElevatedButtonWithIcon, TextButton, Row, Column, Container
  //   Metinler: 'Resim henüz indirilmemiş'

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]
  //   çağrı: TavafDualariDownloadProvider.downloadSingleFile   [umrem_demo/features/dualar/providers/tavaf_dualari_download_provider.dart]
  //   çağrı: Navigator.of   [flutter/src/widgets/navigator.dart]
  //   çağrı: NavigatorState.pop   [flutter/src/widgets/navigator.dart]
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: ScaffoldMessenger.of   [flutter/src/material/scaffold.dart]
  //   çağrı: ScaffoldMessengerState.showSnackBar   [flutter/src/material/scaffold.dart]

  // [closure] Widget <anonymous closure>(dynamic, BuildContext, Object, StackTrace?)
  //   çağrı: _SavtDualariPageState._buildDownloadWidget   [umrem_demo/features/dualar/screens/savt_dualari_page.dart]

  // [closure] void incrementCount(dynamic)
  //   çağrı: _SavtDualariPageState.incrementCount   [umrem_demo/features/dualar/screens/savt_dualari_page.dart]

  // _ incrementCount(/* No info */)
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]

  // [closure] IconButton <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: Icon, IconButton
  //   Metinler: 'Bu sayfa için dil seçeneği mevcut değil' | 'Türkçe Çeviri' | 'Arapça Metin'

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]

  // dynamic dispose(dynamic)

  // [closure] void dispose(dynamic)
  //   çağrı: _SayDualariPageState.dispose   [umrem_demo/features/dualar/screens/say_dualari_page.dart]

  // _ _SavtDualariPageState(/* No info */)
  //   Widget/nesneler: PageController
  //   Metinler: 'title' | 'Tavafa Başlarken Dua' | 'files' | 'tavaf-baslangic.jpg' | 'isZikirmatik' | 'Tavafın 1. Şavtının Duası' | 'arabicFiles' | 'tavaf-arabic-1.png' | 'turkishFiles' | 'tavaf-turkish-1.png' | 'Tavafın 2. Şavtının Duası' | 'tavaf-arabic-2.png' | 'tavaf-turkish-2.png' | 'Tavafın 3. Şavtının Duası' | 'tavaf-arabic-3.png' | 'tavaf-turkish-3.png' | 'Tavafın 4. Şavtının Duası' | 'tavaf-arabic-4.png' | 'tavaf-turkish-4.png' | 'Tavafın 5. Şavtının Duası' | 'tavaf-arabic-5.png' | 'tavaf-turkish-5.png' | 'Tavafın 6. Şavtının Duası' | 'tavaf-arabic-6.png' | 'tavaf-turkish-6.png' | 'Tavafın 7. Şavtının Duası' | 'tavaf-arabic-7.png' | 'tavaf-turkish-7.png' | 'Tavaf Namazından Sonra Dua' | 'tavaf-bitis-1.jpg' | 'tavaf-bitis-2.jpg'

}

class SavtDualariPage extends StatefulWidget {
  // _ createState(/* No info */)
  //   Widget/nesneler: _SavtDualariPageState
  //   çağrı: _SavtDualariPageState._SavtDualariPageState   [umrem_demo/features/dualar/screens/savt_dualari_page.dart]

}

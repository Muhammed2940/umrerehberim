// KURTARILAN İSKELET: lib/features/dualar/screens/kuran.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class _QuranPageState extends State<dynamic> {
  // _ initState(/* No info */)
  //   çağrı: _QuranPageState._loadLastPage   [umrem_demo/features/dualar/screens/kuran.dart]

  // _ _loadLastPage(/* No info */) async
  //   Metinler: 'quran_last_page'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.getInt   [shared_preferences/src/shared_preferences_legacy.dart]

  // [closure] void <anonymous closure>(dynamic, Duration)

  // _ didChangeDependencies(/* No info */)
  //   Metinler: 'name' | 'downloadController' | 'controller'
  //   çağrı: .ReadContext.read   [provider/src/provider.dart]
  //   çağrı: _QuranPageState._checkAndShowDownloadDialog   [umrem_demo/features/dualar/screens/kuran.dart]
  //   Tipler: String?

  // _ _checkAndShowDownloadDialog(/* No info */) async
  //   Metinler: 'quran_download_dialog_shown'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: QuranDownloadProvider.areAllPagesDownloaded   [umrem_demo/features/dualar/providers/quran_download_provider.dart]
  //   çağrı: SharedPreferences.getBool   [shared_preferences/src/shared_preferences_legacy.dart]

  // [closure] Future<void> <anonymous closure>(dynamic, Duration) async
  //   Metinler: 'quran_download_dialog_shown'
  //   çağrı: SharedPreferences.setBool   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: ContentDownloadDialog.show   [umrem_demo/features/dualar/widgets/content_download_dialog.dart]

  // _ build(/* No info */)
  //   Widget/nesneler: TextStyle, Text, AppBar, Radius, BorderRadius, BoxDecoration, Container, GestureDetector, DropdownButton<X0>, DropdownButtonHideUnderline, Row, PageView, Directionality, Padding, Center, Expanded, Column, Scaffold
  //   Metinler: 'Kuran-ı Kerim'
  //   çağrı: Theme.of   [flutter/src/material/theme.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]

  // [closure] FutureBuilder<Widget> <anonymous closure>(dynamic, BuildContext, int)
  //   Widget/nesneler: FutureBuilder<X0>
  //   çağrı: _QuranPageState._buildPageImage   [umrem_demo/features/dualar/screens/kuran.dart]

  // _ _buildPageImage(/* No info */) async
  //   Widget/nesneler: _File, Image
  //   çağrı: QuranStorageService.isPageDownloaded   [umrem_demo/core/services/quran_storage_service.dart]
  //   çağrı: QuranStorageService.getLocalPagePathIfExists   [umrem_demo/core/services/quran_storage_service.dart]
  //   çağrı: _QuranPageState._buildDownloadWidget   [umrem_demo/features/dualar/screens/kuran.dart]
  //   çağrı: _QuranPageState._buildErrorWidget   [umrem_demo/features/dualar/screens/kuran.dart]

  // _ _buildErrorWidget(/* No info */)
  //   Widget/nesneler: Icon, Text, _ElevatedButtonWithIcon, Column, Container
  //   Metinler: 'Sayfa ' | ' Yüklenemedi' | 'İnternet' | 'İnternet bağlantınızı kontrol edin veya\\nsayfayı önceden indirin' | 'Lütfen daha sonra tekrar deneyin'

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]
  //   çağrı: QuranDownloadProvider.downloadSinglePage   [umrem_demo/features/dualar/providers/quran_download_provider.dart]
  //   çağrı: Navigator.of   [flutter/src/widgets/navigator.dart]
  //   çağrı: NavigatorState.pop   [flutter/src/widgets/navigator.dart]
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: ScaffoldMessenger.of   [flutter/src/material/scaffold.dart]
  //   çağrı: ScaffoldMessengerState.showSnackBar   [flutter/src/material/scaffold.dart]

  // [closure] Center <anonymous closure>(dynamic, BuildContext)

  // _ _buildDownloadWidget(/* No info */)
  //   Widget/nesneler: Icon, Text, _ElevatedButtonWithIcon, TextButton, Column, Container
  //   Metinler: 'Sayfa '

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: ContentDownloadDialog.show   [umrem_demo/features/dualar/widgets/content_download_dialog.dart]

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]
  //   çağrı: QuranDownloadProvider.downloadSinglePage   [umrem_demo/features/dualar/providers/quran_download_provider.dart]
  //   çağrı: Navigator.of   [flutter/src/widgets/navigator.dart]
  //   çağrı: NavigatorState.pop   [flutter/src/widgets/navigator.dart]
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: ScaffoldMessenger.of   [flutter/src/material/scaffold.dart]
  //   çağrı: ScaffoldMessengerState.showSnackBar   [flutter/src/material/scaffold.dart]

  // [closure] Widget <anonymous closure>(dynamic, BuildContext, Object, StackTrace?)
  //   Metinler: 'Dosya yüklenemedi'
  //   çağrı: _QuranPageState._buildErrorWidget   [umrem_demo/features/dualar/screens/kuran.dart]

  // [closure] Widget <anonymous closure>(dynamic, BuildContext, AsyncSnapshot<Widget>)
  //   Widget/nesneler: CircularProgressIndicator, Center
  //   çağrı: Theme.of   [flutter/src/material/theme.dart]
  //   çağrı: _QuranPageState._buildErrorWidget   [umrem_demo/features/dualar/screens/kuran.dart]

  // [closure] void <anonymous closure>(dynamic, int)
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: QuranProvider.getTranslations   [umrem_demo/features/dualar/providers/quran_provider.dart]
  //   çağrı: _QuranPageState._saveCurrentPage   [umrem_demo/features/dualar/screens/kuran.dart]

  // _ _saveCurrentPage(/* No info */) async
  //   Metinler: 'quran_last_page'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setInt   [shared_preferences/src/shared_preferences_legacy.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   Metinler: 'name'
  //   Tipler: String

  // [closure] Map<String, dynamic> <anonymous closure>(dynamic, Map<String, dynamic>, Map<String, dynamic>)
  //   Metinler: 'page'

  // [closure] bool <anonymous closure>(dynamic, Map<String, dynamic>)
  //   Metinler: 'page'

  // [closure] void <anonymous closure>(dynamic, String?)
  //   Metinler: 'page'
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   Tipler: int

  // [closure] bool <anonymous closure>(dynamic, Map<String, dynamic>)
  //   Metinler: 'name'

  // [closure] DropdownMenuItem<String> <anonymous closure>(dynamic, Map<String, dynamic>)
  //   Widget/nesneler: Text, DropdownMenuItem<X0>
  //   Metinler: 'name' | ' Suresi'
  //   Tipler: String

  // [closure] void <anonymous closure>(dynamic, int?)
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: QuranProvider.setTranslationId   [umrem_demo/features/dualar/providers/quran_provider.dart]

  // [closure] void <anonymous closure>(dynamic)

  // [closure] DropdownMenuItem<int> <anonymous closure>(dynamic, Map<String, dynamic>)
  //   Widget/nesneler: Text, DropdownMenuItem<X0>
  //   Metinler: 'value' | 'name'
  //   Tipler: int

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: QuranProvider.getTranslations   [umrem_demo/features/dualar/providers/quran_provider.dart]
  //   çağrı: .showModalBottomSheet   [flutter/src/material/bottom_sheet.dart]

  // [closure] DraggableScrollableSheet <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: DraggableScrollableSheet

  // [closure] Padding <anonymous closure>(dynamic, BuildContext, ScrollController)
  //   Widget/nesneler: ListView, SizedBox, Consumer<X0>, Column, Padding

  // [closure] Expanded <anonymous closure>(dynamic, BuildContext, QuranProvider, Widget?)
  //   Widget/nesneler: ListView, Expanded

  // [closure] Padding <anonymous closure>(dynamic, BuildContext, int)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, TextStyle, Text, Center, Container, FontSize, Style, Html, LabeledGlobalKey<X0, Expanded, Row, Padding
  //   Metinler: 'no' | 'text' | 'body' | 'sup'
  //   çağrı: Theme.of   [flutter/src/material/theme.dart]
  //   çağrı: Margins.zero   [flutter_html/src/style/margin.dart]
  //   çağrı: HtmlPaddings.zero   [flutter_html/src/style/padding.dart]
  //   çağrı: Style.Style   [flutter_html/src/style.dart]
  //   Tipler: String?

  // [closure] Divider <anonymous closure>(dynamic, BuildContext, int)

  // [closure] SizedBox <anonymous closure>(dynamic, BuildContext, int)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Container, Center, SizedBox

  // [closure] Divider <anonymous closure>(dynamic, BuildContext, int)

  // dynamic dispose(dynamic)

  // [closure] void dispose(dynamic)
  //   çağrı: _QuranPageState.dispose   [umrem_demo/features/dualar/screens/kuran.dart]

  // _ dispose(/* No info */)

  // _ _QuranPageState(/* No info */)
  //   Widget/nesneler: PageController

}

class QuranPage extends StatefulWidget {
  // _ createState(/* No info */)
  //   Widget/nesneler: _QuranPageState
  //   çağrı: _QuranPageState._QuranPageState   [umrem_demo/features/dualar/screens/kuran.dart]

}

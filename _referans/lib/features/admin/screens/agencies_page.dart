// KURTARILAN İSKELET: lib/features/admin/screens/agencies_page.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class _AgenciesPageState extends State<dynamic> {
  // _ initState(/* No info */)

  // [closure] void <anonymous closure>(dynamic, Duration)
  //   çağrı: .ReadContext.read   [provider/src/provider.dart]
  //   çağrı: AgencyProvider.loadAgencies   [umrem_demo/features/admin/providers/agency_provider.dart]

  // _ build(/* No info */)
  //   Widget/nesneler: AppBar, FloatingActionButton, Consumer<X0>, Scaffold

  // [closure] Widget <anonymous closure>(dynamic, BuildContext, AgencyProvider, Widget?)
  //   Widget/nesneler: _ElevatedButtonWithIcon, EmptyStateWidget, ListView
  //   Metinler: 'Henüz acenta eklenmemiş'

  // [closure] AgencyCard <anonymous closure>(dynamic, BuildContext, int)
  //   Widget/nesneler: AgencyCard

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: _AgenciesPageState._confirmDelete   [umrem_demo/features/admin/screens/agencies_page.dart]

  // _ _confirmDelete(/* No info */)
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: Text, TextButton, Consumer<X0>, AlertDialog
  //   Metinler: '\\"' | '\\" acentasını silmek istediğinize emin misiniz\\?\\n\\nBu işlem geri alınamaz ve acentaya bağlı veriler etkilenebilir.'

  // [closure] ElevatedButton <anonymous closure>(dynamic, BuildContext, AgencyProvider, Widget?)
  //   Widget/nesneler: ElevatedButton

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   çağrı: AgencyProvider.deleteAgency   [umrem_demo/features/admin/providers/agency_provider.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: _AgenciesPageState._showAgencyDialog   [umrem_demo/features/admin/screens/agencies_page.dart]

  // _ _showAgencyDialog(/* No info */)
  //   Widget/nesneler: TextEditingController, LabeledGlobalKey<X0
  //   Metinler: 'agency'
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: Text, TextFormField, Column, Form, SingleChildScrollView, TextButton, Consumer<X0>, AlertDialog
  //   Metinler: 'Acenta Düzenle' | 'Yeni Acenta'

  // [closure] ElevatedButton <anonymous closure>(dynamic, BuildContext, AgencyProvider, Widget?)
  //   Widget/nesneler: Text, ElevatedButton
  //   Metinler: 'Güncelle' | 'Kaydet'

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   çağrı: AgencyProvider.updateAgency   [umrem_demo/features/admin/providers/agency_provider.dart]
  //   çağrı: AgencyProvider.createAgency   [umrem_demo/features/admin/providers/agency_provider.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] String? <anonymous closure>(dynamic, String?)
  //   Metinler: 'Acenta adı gerekli'

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: _AgenciesPageState._showAgencyDialog   [umrem_demo/features/admin/screens/agencies_page.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: _AgenciesPageState._showAgencyDialog   [umrem_demo/features/admin/screens/agencies_page.dart]

}

class AgenciesPage extends StatefulWidget {
  // _ createState(/* No info */)
  //   Widget/nesneler: _AgenciesPageState

}

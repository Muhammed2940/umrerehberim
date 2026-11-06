// KURTARILAN İSKELET: lib/features/admin/screens/super_admin_dashboard.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class _SuperAdminDashboardState extends State<dynamic> {
  // _ initState(/* No info */)

  // _ build(/* No info */)
  //   Widget/nesneler: IconButton, AppBar, Consumer<X0>, Scaffold

  // [closure] Widget <anonymous closure>(dynamic, BuildContext, AgencyProvider, Widget?)
  //   Widget/nesneler: Radius, BorderRadius, BoxShadow, BoxDecoration, Container, Row, Column, RoundedRectangleBorder, _ElevatedButtonWithIcon, ListView, SingleChildScrollView
  //   Metinler: 'Toplam Acenta' | 'Aktif Acenta'
  //   çağrı: _SuperAdminDashboardState._buildStatCard   [umrem_demo/features/admin/screens/super_admin_dashboard.dart]

  // _ _buildStatCard(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Icon, Text, Column, Row, Container, Expanded

  // [closure] Widget <anonymous closure>(dynamic, BuildContext, int)
  //   çağrı: _SuperAdminDashboardState._buildAgencyCard   [umrem_demo/features/admin/screens/super_admin_dashboard.dart]

  // _ _buildAgencyCard(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, TextStyle, Text, Center, Container, Column, Expanded, PopupMenuButton<X0>, Row, Padding, RoundedRectangleBorder, _ElevatedButtonWithIcon, InkWell, Material
  //   Metinler: 'A' | 'Aktif' | 'Pasif'
  //   çağrı: _SuperAdminDashboardState._buildInfoChip   [umrem_demo/features/admin/screens/super_admin_dashboard.dart]

  // _ _buildInfoChip(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Icon, Text, Row, Container

  // [closure] void <anonymous closure>(dynamic)
  //   Metinler: '/super-admin/agency'
  //   çağrı: Navigator.pushNamed   [flutter/src/widgets/navigator.dart]

  // [closure] void <anonymous closure>(dynamic, String)
  //   Metinler: 'edit' | 'toggle' | 'delete'
  //   çağrı: _SuperAdminDashboardState._showAgencyDialog   [umrem_demo/features/admin/screens/super_admin_dashboard.dart]
  //   çağrı: _SuperAdminDashboardState._toggleAgencyStatus   [umrem_demo/features/admin/screens/super_admin_dashboard.dart]
  //   çağrı: _SuperAdminDashboardState._showDeleteDialog   [umrem_demo/features/admin/screens/super_admin_dashboard.dart]

  // _ _showDeleteDialog(/* No info */)
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: Radius, BorderRadius, RoundedRectangleBorder, Text, TextButton, Consumer<X0>, AlertDialog
  //   Metinler: '\\"' | '\\" acentasını silmek istediğinize emin misiniz\\?\\n\\nBu işlem geri alınamaz ve acentaya ait tüm veriler silinecektir.'

  // [closure] ElevatedButton <anonymous closure>(dynamic, BuildContext, AgencyProvider, Widget?)
  //   Widget/nesneler: ElevatedButton

  // _ _toggleAgencyStatus(/* No info */) async
  //   çağrı: AgencyProvider.updateAgency   [umrem_demo/features/admin/providers/agency_provider.dart]

  // _ _showAgencyDialog(/* No info */)
  //   Widget/nesneler: TextEditingController, LabeledGlobalKey<X0
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: Radius, BorderRadius, RoundedRectangleBorder, Text, Column, Form, SingleChildScrollView, TextButton, Consumer<X0>, AlertDialog
  //   Metinler: 'Acenta Düzenle' | 'Yeni Acenta Ekle' | 'Acenta Adı *' | 'Açıklama' | 'Telefon' | 'E-posta' | 'Adres'
  //   çağrı: _SuperAdminDashboardState._buildTextField   [umrem_demo/features/admin/screens/super_admin_dashboard.dart]

  // _ _buildTextField(/* No info */)
  //   Widget/nesneler: Icon, Radius, BorderRadius, BorderSide, OutlineInputBorder, InputDecoration, TextFormField
  //   Metinler: 'isRequired'

  // [closure] String? <anonymous closure>(dynamic, String?)
  //   Metinler: ' gerekli'

  // [closure] ElevatedButton <anonymous closure>(dynamic, BuildContext, AgencyProvider, Widget?)
  //   Widget/nesneler: Text, ElevatedButton
  //   Metinler: 'Güncelle' | 'Ekle'

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   çağrı: ScaffoldMessenger.of   [flutter/src/material/scaffold.dart]
  //   çağrı: ScaffoldMessengerState.showSnackBar   [flutter/src/material/scaffold.dart]
  //   çağrı: AgencyProvider.updateAgency   [umrem_demo/features/admin/providers/agency_provider.dart]
  //   çağrı: AgencyProvider.createAgency   [umrem_demo/features/admin/providers/agency_provider.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] List<PopupMenuEntry<String>> <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: Icon, Text, Row, PopupMenuItem<X0>
  //   Metinler: 'Pasif Yap' | 'Aktif Yap' | 'toggle'

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: _SuperAdminDashboardState._showAgencyDialog   [umrem_demo/features/admin/screens/super_admin_dashboard.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: _SuperAdminDashboardState._showLogoutDialog   [umrem_demo/features/admin/screens/super_admin_dashboard.dart]

  // _ _showLogoutDialog(/* No info */)
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: Radius, BorderRadius, RoundedRectangleBorder, TextButton, ElevatedButton, AlertDialog

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: Navigator.pushNamedAndRemoveUntil   [flutter/src/widgets/navigator.dart]

}

class SuperAdminDashboard extends StatefulWidget {
  // _ createState(/* No info */)
  //   Widget/nesneler: _SuperAdminDashboardState

}

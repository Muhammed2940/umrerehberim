// KURTARILAN İSKELET: lib/features/super_admin/widgets/agency_detail/currencies_tab.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class CurrenciesTabState extends State<dynamic> {
  // get _ onDataChanged(/* No info */)

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void)
  //   Widget/nesneler: Radius, BorderRadius, RoundedRectangleBorder, Text, Column, SingleChildScrollView, TextButton, ElevatedButton, AlertDialog
  //   Metinler: 'Döviz Düzenle' | 'Yeni Döviz' | 'Döviz Adı *' | 'Emoji' | 'Kur Değeri (TL) *' | 'Güncelle' | 'Ekle'
  //   çağrı: .buildDialogTextField   [umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart]

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   Widget/nesneler: Text, SnackBar
  //   Metinler: 'currencies' | 'name' | 'emoji' | 'value' | 'updated_at' | 'agency_id' | 'created_at' | 'Hata: '
  //   çağrı: ScaffoldMessenger.of   [flutter/src/material/scaffold.dart]
  //   çağrı: ScaffoldMessengerState.showSnackBar   [flutter/src/material/scaffold.dart]
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: FieldValue.serverTimestamp   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.update   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.add   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: CurrenciesTabState.onDataChanged   [umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart]
  //   çağrı: _AgencyDetailPageState._loadAgencyData   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] void <anonymous closure>(dynamic)

  // [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: StatefulBuilder

  // _ showCurrencyDialog(/* No info */)
  //   Widget/nesneler: TextEditingController
  //   Metinler: '💵'
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // _ build(/* No info */)
  //   Widget/nesneler: ListView
  //   Metinler: 'Döviz kuru bulunamadı' | 'Döviz Ekle'
  //   çağrı: .buildEmptyState   [umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart]

  // [closure] Widget <anonymous closure>(dynamic, BuildContext, int)
  //   çağrı: CurrenciesTabState._buildCurrencyCard   [umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart]

  // _ _buildCurrencyCard(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Text, Container, Column, Expanded, IconButton, Row
  //   Metinler: '₺'

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: CurrenciesTabState._confirmDeleteCurrency   [umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart]

  // _ _confirmDeleteCurrency(/* No info */)
  //   çağrı: .showDialog   [flutter/src/material/dialog.dart]

  // [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext)
  //   Widget/nesneler: StatefulBuilder

  // [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void)
  //   Widget/nesneler: Radius, BorderRadius, RoundedRectangleBorder, Text, TextButton, ElevatedButton, AlertDialog
  //   Metinler: '\\"' | '\\" dövizini silmek istediğinize emin misiniz\\?'

  // [closure] Future<void> <anonymous closure>(dynamic) async
  //   Metinler: 'currencies'
  //   çağrı: FirebaseFirestore.collection   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonCollectionReference.doc   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _JsonDocumentReference.delete   [cloud_firestore/cloud_firestore.dart]
  //   çağrı: _AgencyDetailPageState._loadAgencyData   [umrem_demo/features/super_admin/screens/agency_detail_page.dart]
  //   çağrı: Navigator.pop   [flutter/src/widgets/navigator.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: CurrenciesTabState.showCurrencyDialog   [umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: CurrenciesTabState.showCurrencyDialog   [umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart]

}

class CurrenciesTab extends StatefulWidget {
  // _ createState(/* No info */)
  //   Widget/nesneler: CurrenciesTabState

}

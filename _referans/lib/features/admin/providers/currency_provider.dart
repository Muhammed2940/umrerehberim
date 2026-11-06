// KURTARILAN İSKELET: lib/features/admin/providers/currency_provider.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class CurrencyProvider extends ChangeNotifier {
  // _ loadCurrencies(/* No info */) async
  //   Metinler: 'agencyId'
  //   çağrı: FirestoreService.getCurrenciesByAgency   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.getCurrencies   [umrem_demo/common/services/firestore_service.dart]

  // _ initializeDefaultCurrencies(/* No info */) async
  //   Metinler: '💵' | 'USD' | '💶' | 'EUR' | '🇸🇦' | 'SAR'
  //   çağrı: CurrencyProvider.createCurrency   [umrem_demo/features/admin/providers/currency_provider.dart]

  // _ createCurrency(/* No info */) async
  //   Widget/nesneler: CurrencyModel
  //   çağrı: FirestoreService.createCurrency   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: CurrencyProvider.loadCurrencies   [umrem_demo/features/admin/providers/currency_provider.dart]

  // _ updateCurrency(/* No info */) async
  //   çağrı: CurrencyModel.copyWith   [umrem_demo/features/admin/models/currency_model.dart]
  //   çağrı: FirestoreService.updateCurrency   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: CurrencyProvider.loadCurrencies   [umrem_demo/features/admin/providers/currency_provider.dart]

  // _ CurrencyProvider(/* No info */)
  //   Widget/nesneler: FirestoreService
  //   çağrı: Firebase.app   [firebase_core/firebase_core.dart]
  //   çağrı: FirebaseFirestore.instanceFor   [cloud_firestore/cloud_firestore.dart]

}

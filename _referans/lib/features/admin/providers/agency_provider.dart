// KURTARILAN İSKELET: lib/features/admin/providers/agency_provider.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class AgencyProvider extends ChangeNotifier {
  // _ loadAgencies(/* No info */) async
  //   çağrı: FirestoreService.getAgencies   [umrem_demo/common/services/firestore_service.dart]

  // _ deleteAgency(/* No info */) async
  //   Metinler: 'Acenta silindi' | 'Acenta silinemedi'
  //   çağrı: FirestoreService.deleteAgency   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: _GrowableList._GrowableList.of   [dart:core]
  //   çağrı: GlobalSnackBar.showSuccess   [umrem_demo/core/utils/global_snackbar.dart]
  //   çağrı: GlobalSnackBar.showError   [umrem_demo/core/utils/global_snackbar.dart]

  // _ createAgency(/* No info */) async
  //   Widget/nesneler: AgencyModel
  //   Metinler: 'Acenta oluşturuldu' | 'Acenta oluşturulamadı'
  //   çağrı: FirestoreService.createAgency   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: AgencyModel.copyWith   [umrem_demo/features/admin/models/agency_model.dart]
  //   çağrı: GlobalSnackBar.showSuccess   [umrem_demo/core/utils/global_snackbar.dart]
  //   çağrı: GlobalSnackBar.showError   [umrem_demo/core/utils/global_snackbar.dart]

  // _ updateAgency(/* No info */) async
  //   Metinler: 'address' | 'description' | 'email' | 'isActive' | 'name' | 'phone' | 'is_active' | 'Acenta güncellendi' | 'Acenta güncellenemedi'
  //   çağrı: FirestoreService.updateAgency   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: GlobalSnackBar.showSuccess   [umrem_demo/core/utils/global_snackbar.dart]
  //   çağrı: GlobalSnackBar.showError   [umrem_demo/core/utils/global_snackbar.dart]

  // [closure] AgencyModel <anonymous closure>(dynamic, AgencyModel)
  //   çağrı: AgencyModel.copyWith   [umrem_demo/features/admin/models/agency_model.dart]

  // _ AgencyProvider(/* No info */)
  //   Widget/nesneler: FirestoreService
  //   çağrı: Firebase.app   [firebase_core/firebase_core.dart]
  //   çağrı: FirebaseFirestore.instanceFor   [cloud_firestore/cloud_firestore.dart]

}

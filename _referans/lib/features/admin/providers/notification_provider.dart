// KURTARILAN İSKELET: lib/features/admin/providers/notification_provider.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class NotificationProvider extends ChangeNotifier {
  // _ sendNotification(/* No info */) async
  //   Widget/nesneler: DateTime, NotificationModel
  //   Metinler: 'Başlık ve mesaj zorunlu' | 'agency_' | 'all' | "\\'mekke_sefer_" | "\\' in topics || \\'medine_sefer_" | "\\' in topics" | "\\'mekke_otel_" | "\\' in topics || \\'medine_otel_" | "\\'mekke_oda_" | "\\' in topics || \\'medine_oda_" | 'Lütfen geçerli bir hedef seçiniz.' | 'CONDITION: ' | 'TOPIC: ' | 'Bildirim gönderildi.' | 'Bildirim gönderilirken hata oluştu.'
  //   çağrı: GlobalSnackBar.showError   [umrem_demo/core/utils/global_snackbar.dart]
  //   çağrı: AdminProvider.isSuperAdmin   [umrem_demo/features/admin/providers/admin_provider.dart]
  //   çağrı: FirestoreService.sendPushToCondition   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.sendPushToTopic   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.createNotifications   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: GlobalSnackBar.showSuccess   [umrem_demo/core/utils/global_snackbar.dart]

  // _ setOda(/* No info */)

  // _ setOtel(/* No info */)

  // _ setSefer(/* No info */)

  // _ setTargetType(/* No info */)

  // _ NotificationProvider(/* No info */)
  //   Widget/nesneler: FirestoreService
  //   çağrı: Firebase.app   [firebase_core/firebase_core.dart]
  //   çağrı: FirebaseFirestore.instanceFor   [cloud_firestore/cloud_firestore.dart]

  // _ _enumToString(/* No info */)
  //   Metinler: 'NotificationTargetType.'

}

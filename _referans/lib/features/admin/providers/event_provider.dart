// KURTARILAN İSKELET: lib/features/admin/providers/event_provider.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class EventProvider extends ChangeNotifier {
  // _ loadEventsByDate(/* No info */) async
  //   Metinler: 'agencyId'
  //   çağrı: FirestoreService.getEventsByAgency   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.getEventsByDate   [umrem_demo/common/services/firestore_service.dart]

  // _ getEndTime(/* No info */)
  //   Metinler: ':' | '0'

  // _ selectDate(/* No info */)
  //   çağrı: EventProvider.loadEventsByDate   [umrem_demo/features/admin/providers/event_provider.dart]

  // _ updateEvent(/* No info */) async
  //   Widget/nesneler: EventModel
  //   çağrı: FirestoreService._formatDateToYMD   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.updateEvent   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: EventProvider.loadEventsByDate   [umrem_demo/features/admin/providers/event_provider.dart]

  // _ createEvent(/* No info */) async
  //   Widget/nesneler: EventModel
  //   çağrı: FirestoreService._formatDateToYMD   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.createEvent   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: EventProvider.loadEventsByDate   [umrem_demo/features/admin/providers/event_provider.dart]

  // _ deleteEvent(/* No info */) async
  //   çağrı: FirestoreService.deleteEvent   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: EventProvider.loadEventsByDate   [umrem_demo/features/admin/providers/event_provider.dart]

  // _ EventProvider(/* No info */)
  //   Widget/nesneler: FirestoreService, DateTime
  //   çağrı: Firebase.app   [firebase_core/firebase_core.dart]
  //   çağrı: FirebaseFirestore.instanceFor   [cloud_firestore/cloud_firestore.dart]

}

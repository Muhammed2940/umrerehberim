// KURTARILAN İSKELET: lib/core/services/quran_storage_service.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class QuranStorageService extends Object {
  // _ areAllPagesDownloaded(/* No info */) async
  //   Metinler: 'all_quran_pages_downloaded'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.getBool   [shared_preferences/src/shared_preferences_legacy.dart]

  // static QuranStorageService _instance()
  //   Widget/nesneler: QuranStorageService, CommonService
  //   çağrı: .createClient   [http/src/io_client.dart]

  // _ downloadPage(/* No info */) async
  //   Widget/nesneler: _File, _Exception, Duration
  //   Metinler: 'onProgress' | 'kuran-' | '0' | '.png' | 'https://hactapot.xyz' | '/' | 'quran-pages' | 'Accept' | 'image/png,image/*' | 'Connection' | 'keep-alive' | 'User-Agent' | 'UmremApp/1.0' | 'Sunucu hatası: ' | 'Zaman aşımı: ' | 'İnternet bağlantısı yok' | 'İndirme hatası: ' | 'İndirme başarısız'
  //   çağrı: CommonService.hasInternetConnection   [umrem_demo/common/services/common_service.dart]
  //   çağrı: QuranStorageService._getLocalPagePath   [umrem_demo/core/services/quran_storage_service.dart]
  //   çağrı: BaseClient._sendUnstreamed   [http/src/base_client.dart]
  //   çağrı: QuranStorageService._markPageAsDownloaded   [umrem_demo/core/services/quran_storage_service.dart]

  // _ _markPageAsDownloaded(/* No info */) async
  //   Metinler: 'downloaded_quran_pages'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.getStringList   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setStringList   [shared_preferences/src/shared_preferences_legacy.dart]

  // _ _getLocalPagePath(/* No info */) async
  //   Widget/nesneler: _Directory
  //   Metinler: '/quran_pages' | '/kuran-' | '0' | '.png'
  //   çağrı: .getApplicationDocumentsDirectory   [path_provider/path_provider.dart]

  // _ getLocalPagePathIfExists(/* No info */) async
  //   çağrı: QuranStorageService.isPageDownloaded   [umrem_demo/core/services/quran_storage_service.dart]
  //   çağrı: QuranStorageService._getLocalPagePath   [umrem_demo/core/services/quran_storage_service.dart]

  // _ isPageDownloaded(/* No info */) async
  //   Widget/nesneler: _File
  //   çağrı: QuranStorageService._getLocalPagePath   [umrem_demo/core/services/quran_storage_service.dart]

  // _ downloadAllPages(/* No info */) async
  //   Metinler: 'İnternet bağlantısı yok' | 'Sayfa ' | ' indirilemedi. Lütfen internet bağlantınızı kontrol edin.' | ' indirilemedi: ' | 'İndirme hatası: '
  //   çağrı: CommonService.hasInternetConnection   [umrem_demo/common/services/common_service.dart]
  //   çağrı: QuranStorageService.downloadPage   [umrem_demo/core/services/quran_storage_service.dart]
  //   çağrı: QuranStorageService._markAllPagesDownloaded   [umrem_demo/core/services/quran_storage_service.dart]

  // _ _markAllPagesDownloaded(/* No info */) async
  //   Metinler: 'all_quran_pages_downloaded'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setBool   [shared_preferences/src/shared_preferences_legacy.dart]

}

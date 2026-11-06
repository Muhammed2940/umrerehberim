// KURTARILAN İSKELET: lib/core/services/tavaf_dualari_storage_service.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class TavafDualariStorageService extends Object {
  // _ areAllFilesDownloaded(/* No info */) async
  //   Metinler: 'all_tavaf_dualari_downloaded'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.getBool   [shared_preferences/src/shared_preferences_legacy.dart]

  // static TavafDualariStorageService _instance()
  //   Widget/nesneler: TavafDualariStorageService, CommonService
  //   çağrı: Client.Client   [http/src/client.dart]

  // _ getLocalFilePathIfExists(/* No info */) async
  //   çağrı: TavafDualariStorageService.isFileDownloaded   [umrem_demo/core/services/tavaf_dualari_storage_service.dart]
  //   çağrı: TavafDualariStorageService._getLocalFilePath   [umrem_demo/core/services/tavaf_dualari_storage_service.dart]

  // _ _getLocalFilePath(/* No info */) async
  //   Widget/nesneler: _Directory
  //   Metinler: '/tavaf_dualari' | '/'
  //   çağrı: .getApplicationDocumentsDirectory   [path_provider/path_provider.dart]

  // _ isFileDownloaded(/* No info */) async
  //   Widget/nesneler: _File
  //   çağrı: TavafDualariStorageService._getLocalFilePath   [umrem_demo/core/services/tavaf_dualari_storage_service.dart]

  // _ downloadFile(/* No info */) async
  //   Widget/nesneler: _File, _Exception, Duration
  //   Metinler: 'onProgress' | 'https://hactapot.xyz' | '/' | 'tavaf_dualari' | 'Accept' | 'image/*' | 'Connection' | 'keep-alive' | 'User-Agent' | 'UmremApp/1.0' | 'Sunucu hatası: ' | 'Zaman aşımı: ' | 'İnternet bağlantısı yok' | 'İndirme hatası: ' | 'İndirme başarısız'
  //   çağrı: CommonService.hasInternetConnection   [umrem_demo/common/services/common_service.dart]
  //   çağrı: TavafDualariStorageService._getLocalFilePath   [umrem_demo/core/services/tavaf_dualari_storage_service.dart]
  //   çağrı: BaseClient._sendUnstreamed   [http/src/base_client.dart]
  //   çağrı: TavafDualariStorageService._markFileAsDownloaded   [umrem_demo/core/services/tavaf_dualari_storage_service.dart]

  // _ _markFileAsDownloaded(/* No info */) async
  //   Metinler: 'downloaded_tavaf_dualari_files'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.getStringList   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setStringList   [shared_preferences/src/shared_preferences_legacy.dart]

  // _ downloadAllFiles(/* No info */) async
  //   Metinler: 'İnternet bağlantısı yok' | 'Dosya ' | ' indirilemedi.' | ' indirilemedi: ' | 'İndirme hatası: '
  //   çağrı: CommonService.hasInternetConnection   [umrem_demo/common/services/common_service.dart]
  //   çağrı: TavafDualariStorageService.downloadFile   [umrem_demo/core/services/tavaf_dualari_storage_service.dart]
  //   çağrı: TavafDualariStorageService._markAllFilesDownloaded   [umrem_demo/core/services/tavaf_dualari_storage_service.dart]

  // _ _markAllFilesDownloaded(/* No info */) async
  //   Metinler: 'all_tavaf_dualari_downloaded'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setBool   [shared_preferences/src/shared_preferences_legacy.dart]

}

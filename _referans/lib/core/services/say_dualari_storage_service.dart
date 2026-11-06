// KURTARILAN İSKELET: lib/core/services/say_dualari_storage_service.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class SayDualariStorageService extends Object {
  // _ areAllFilesDownloaded(/* No info */) async
  //   Metinler: 'all_say_dualari_downloaded'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.getBool   [shared_preferences/src/shared_preferences_legacy.dart]

  // static SayDualariStorageService _instance()
  //   Widget/nesneler: SayDualariStorageService, CommonService
  //   çağrı: .createClient   [http/src/io_client.dart]

  // _ getLocalFilePathIfExists(/* No info */) async
  //   çağrı: SayDualariStorageService.isFileDownloaded   [umrem_demo/core/services/say_dualari_storage_service.dart]
  //   çağrı: SayDualariStorageService._getLocalFilePath   [umrem_demo/core/services/say_dualari_storage_service.dart]

  // _ _getLocalFilePath(/* No info */) async
  //   Widget/nesneler: _Directory
  //   Metinler: '/say_dualari' | '/'
  //   çağrı: .getApplicationDocumentsDirectory   [path_provider/path_provider.dart]

  // _ isFileDownloaded(/* No info */) async
  //   Widget/nesneler: _File
  //   çağrı: SayDualariStorageService._getLocalFilePath   [umrem_demo/core/services/say_dualari_storage_service.dart]

  // _ downloadFile(/* No info */) async
  //   Widget/nesneler: _File, _Exception, Duration
  //   Metinler: 'onProgress' | 'https://hactapot.xyz' | '/' | 'say_dualari' | 'Accept' | 'image/*' | 'Connection' | 'keep-alive' | 'User-Agent' | 'UmremApp/1.0' | 'Sunucu hatası: ' | 'Zaman aşımı: ' | 'İnternet bağlantısı yok' | 'İndirme hatası: ' | 'İndirme başarısız'
  //   çağrı: CommonService.hasInternetConnection   [umrem_demo/common/services/common_service.dart]
  //   çağrı: SayDualariStorageService._getLocalFilePath   [umrem_demo/core/services/say_dualari_storage_service.dart]
  //   çağrı: BaseClient._sendUnstreamed   [http/src/base_client.dart]
  //   çağrı: SayDualariStorageService._markFileAsDownloaded   [umrem_demo/core/services/say_dualari_storage_service.dart]

  // _ _markFileAsDownloaded(/* No info */) async
  //   Metinler: 'downloaded_say_dualari_files'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.getStringList   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setStringList   [shared_preferences/src/shared_preferences_legacy.dart]

  // _ downloadAllFiles(/* No info */) async
  //   Metinler: 'İnternet bağlantısı yok' | 'Dosya ' | ' indirilemedi.' | ' indirilemedi: ' | 'İndirme hatası: '
  //   çağrı: CommonService.hasInternetConnection   [umrem_demo/common/services/common_service.dart]
  //   çağrı: SayDualariStorageService.downloadFile   [umrem_demo/core/services/say_dualari_storage_service.dart]
  //   çağrı: SayDualariStorageService._markAllFilesDownloaded   [umrem_demo/core/services/say_dualari_storage_service.dart]

  // _ _markAllFilesDownloaded(/* No info */) async
  //   Metinler: 'all_say_dualari_downloaded'
  //   çağrı: SharedPreferences.getInstance   [shared_preferences/src/shared_preferences_legacy.dart]
  //   çağrı: SharedPreferences.setBool   [shared_preferences/src/shared_preferences_legacy.dart]

}

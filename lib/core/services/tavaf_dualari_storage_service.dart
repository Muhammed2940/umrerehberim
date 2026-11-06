import '../../features/dualar/data/remote_image_storage.dart';
import '../../features/dualar/data/tavaf_dualari_data.dart';

/// Tavaf duası görsellerini sunucudan indirip cihazda saklar.
/// Metin içerik yereldir; görseller isteğe bağlıdır.
class TavafDualariStorageService {
  TavafDualariStorageService._();
  static final TavafDualariStorageService instance = TavafDualariStorageService._();
  factory TavafDualariStorageService() => instance;

  final RemoteImageStorage _storage = RemoteImageStorage(
    remoteFolder: 'tavaf_dualari',
    localFolder: 'tavaf_dualari',
    allDownloadedKey: 'all_tavaf_dualari_downloaded',
    downloadedListKey: 'downloaded_tavaf_dualari_files',
    fileNames: tavafDualariDosyalari,
  );

  List<String> get fileNames => _storage.fileNames;
  int get totalFiles => _storage.fileNames.length;

  Future<bool> areAllFilesDownloaded() => _storage.areAllFilesDownloaded();
  Future<bool> isFileDownloaded(String fileName) => _storage.isFileDownloaded(fileName);
  Future<String?> getLocalFilePathIfExists(String fileName) => _storage.getLocalFilePathIfExists(fileName);
  Future<String> downloadFile(String fileName, {void Function(double progress)? onProgress}) =>
      _storage.downloadFile(fileName, onProgress: onProgress);
  Future<void> downloadAllFiles({void Function(int done, int total)? onProgress}) =>
      _storage.downloadAllFiles(onProgress: onProgress);
}

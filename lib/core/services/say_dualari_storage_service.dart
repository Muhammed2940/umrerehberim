import '../../features/dualar/data/remote_image_storage.dart';
import '../../features/dualar/data/say_dualari_data.dart';

/// Sa'y duası görsellerini sunucudan indirip cihazda saklar.
/// Metin içerik yereldir; görseller isteğe bağlıdır.
class SayDualariStorageService {
  SayDualariStorageService._();
  static final SayDualariStorageService instance = SayDualariStorageService._();
  factory SayDualariStorageService() => instance;

  final RemoteImageStorage _storage = RemoteImageStorage(
    remoteFolder: 'say_dualari',
    localFolder: 'say_dualari',
    allDownloadedKey: 'all_say_dualari_downloaded',
    downloadedListKey: 'downloaded_say_dualari_files',
    fileNames: sayDualariDosyalari,
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

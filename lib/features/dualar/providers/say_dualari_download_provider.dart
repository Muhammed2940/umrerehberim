import '../../../core/providers/locale_provider.dart';
import '../../../core/services/say_dualari_storage_service.dart';
import '../data/file_download_provider.dart';

/// Sa'y duası görsellerinin indirilme durumu.
class SayDualariDownloadProvider extends FileDownloadProvider {
  SayDualariDownloadProvider();

  final SayDualariStorageService _service = SayDualariStorageService.instance;

  @override
  String get downloadingMessage => l10n.dualarSayDownloading;

  int get totalFiles => _service.totalFiles;

  Future<bool> areAllFilesDownloaded() => _service.areAllFilesDownloaded();

  Future<bool> downloadSingleFile(String fileName) =>
      runSingle((p) => _service.downloadFile(fileName, onProgress: p), l10n.dualarFileDownloading);

  Future<bool> downloadAllFiles() => runAll(
        (p) => _service.downloadAllFiles(onProgress: p),
        progressMessage: l10n.dualarFileProgress,
        successMessage: l10n.dualarAllFilesDownloaded,
      );
}

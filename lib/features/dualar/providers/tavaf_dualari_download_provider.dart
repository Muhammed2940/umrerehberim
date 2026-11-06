import '../../../core/providers/locale_provider.dart';
import '../../../core/services/tavaf_dualari_storage_service.dart';
import '../data/file_download_provider.dart';

/// Tavaf duası görsellerinin indirilme durumu.
class TavafDualariDownloadProvider extends FileDownloadProvider {
  TavafDualariDownloadProvider();

  final TavafDualariStorageService _service = TavafDualariStorageService.instance;

  @override
  String get downloadingMessage => l10n.dualarTavafDownloading;

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

import 'package:flutter/foundation.dart';

import '../../../core/providers/locale_provider.dart';
import 'remote_image_storage.dart';

/// Tavaf / Sa'y / Kur'an indirme sağlayıcılarının ortak durumu.
abstract class FileDownloadProvider extends ChangeNotifier {
  bool isDownloading = false;
  double progress = 0;
  int completed = 0;
  int total = 0;
  String statusMessage = '';
  String? errorMessage;

  /// Kullanıcıya gösterilecek başlık (ör. "Tavaf duaları indiriliyor...").
  String get downloadingMessage;

  @protected
  Future<bool> runSingle(Future<void> Function(void Function(double) onProgress) task, String message) async {
    errorMessage = null;
    statusMessage = message;
    progress = 0;
    notifyListeners();
    try {
      await task((p) {
        progress = p;
        notifyListeners();
      });
      return true;
    } catch (e) {
      errorMessage = RemoteImageStorage.cleanError(e);
      debugPrint('Dosya indirme hatası: $e');
      return false;
    } finally {
      statusMessage = '';
      notifyListeners();
    }
  }

  @protected
  Future<bool> runAll(
    Future<void> Function(void Function(int done, int total) onProgress) task, {
    required String Function(int current, int total) progressMessage,
    required String successMessage,
  }) async {
    if (isDownloading) return false;
    isDownloading = true;
    errorMessage = null;
    progress = 0;
    completed = 0;
    statusMessage = downloadingMessage;
    notifyListeners();
    try {
      if (!await RemoteImageStorage.hasInternetConnection()) {
        errorMessage = l10n.dualarNoInternetCheck;
        return false;
      }
      await task((d, t) {
        completed = d;
        total = t;
        progress = t == 0 ? 0 : d / t;
        statusMessage = progressMessage(d < t ? d + 1 : t, t);
        notifyListeners();
      });
      progress = 1;
      statusMessage = successMessage;
      return true;
    } catch (e) {
      errorMessage = l10n.dualarDownloadErrorDetail(RemoteImageStorage.cleanError(e));
      statusMessage = l10n.dualarDownloadFailedTitle;
      return false;
    } finally {
      isDownloading = false;
      notifyListeners();
    }
  }
}

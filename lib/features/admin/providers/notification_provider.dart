import 'package:flutter/foundation.dart';

import '../../../common/services/firestore_service.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/utils/global_snackbar.dart';
import '../models/notification_model.dart';

/// Duyuru hedefi: tüm acente veya belirli sefer.
enum NotificationTargetType { all, trip }

/// Duyuru gönderme ve geçmiş.
class NotificationProvider extends ChangeNotifier {
  NotificationProvider();

  final FirestoreService _service = FirestoreService.instance;

  List<NotificationModel> history = [];
  bool isLoading = false;
  bool isSending = false;

  Future<void> loadHistory(String? agencyId) async {
    if (agencyId == null) {
      history = [];
      notifyListeners();
      return;
    }
    isLoading = true;
    notifyListeners();
    try {
      history = await _service.getNotificationsByAgency(agencyId, limit: 50);
    } catch (e) {
      debugPrint('NotificationProvider.loadHistory: $e');
      GlobalSnackbar.showError(l10n.adminNotifyHistoryLoadFailed);
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  /// Duyuruyu Firestore'a kaydeder. Sunucu (Cloud Functions) yok: telefonlar
  /// `notifications` koleksiyonunu dinleyip (NotificationWatcher) yerel bildirim gösterir.
  /// Sefer hedefli duyuruda belgeye `trip_id` yazılır.
  Future<bool> send({
    required String title,
    required String message,
    required String? agencyId,
    NotificationTargetType target = NotificationTargetType.all,
    String? tripId,
  }) async {
    if (title.trim().isEmpty || message.trim().isEmpty) {
      GlobalSnackbar.showError(l10n.adminNotifyRequired);
      return false;
    }
    if (agencyId == null || (target == NotificationTargetType.trip && tripId == null)) {
      GlobalSnackbar.showError(l10n.adminNotifyTargetInvalid);
      return false;
    }
    isSending = true;
    notifyListeners();
    try {
      await _service.createNotifications(
        title: title.trim(),
        message: message.trim(),
        agencyId: agencyId,
        tripId: target == NotificationTargetType.trip ? tripId : null,
      );
    } catch (e) {
      debugPrint('createNotifications: $e');
      GlobalSnackbar.showError(l10n.adminNotifySendFailed);
      isSending = false;
      notifyListeners();
      return false;
    }
    GlobalSnackbar.showSuccess(l10n.adminNotifySentOk);
    isSending = false;
    await loadHistory(agencyId);
    return true;
  }
}

import 'package:flutter/foundation.dart';

import '../../../common/services/firestore_service.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/utils/global_snackbar.dart';
import '../models/event_model.dart';

/// Etkinlik takvimi: seçili günün etkinlikleri.
class EventProvider extends ChangeNotifier {
  EventProvider();

  final FirestoreService _service = FirestoreService.instance;

  DateTime selectedDate = _today();
  List<EventModel> events = [];
  bool isLoading = false;
  bool isSaving = false;
  String? _agencyId;

  static DateTime _today() {
    final n = DateTime.now();
    return DateTime(n.year, n.month, n.day);
  }

  Future<void> load(String? agencyId, {DateTime? date}) async {
    _agencyId = agencyId;
    if (date != null) selectedDate = DateTime(date.year, date.month, date.day);
    if (agencyId == null) {
      events = [];
      notifyListeners();
      return;
    }
    isLoading = true;
    notifyListeners();
    try {
      events = await _service.getEventsByAgency(agencyId, from: selectedDate, to: selectedDate);
    } catch (e) {
      debugPrint('EventProvider.load: $e');
      events = [];
      GlobalSnackbar.showError(l10n.adminEventLoadFailed);
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> changeDay(int delta) =>
      load(_agencyId, date: selectedDate.add(Duration(days: delta)));

  Future<void> selectDate(DateTime d) => load(_agencyId, date: d);

  Future<bool> save(EventModel event) async {
    isSaving = true;
    notifyListeners();
    final isNew = event.id.isEmpty;
    try {
      if (isNew) {
        await _service.createEvent(event.copyWith(agencyId: _agencyId));
      } else {
        await _service.updateEvent(event);
      }
      GlobalSnackbar.showSuccess(isNew ? l10n.adminEventAdded : l10n.adminEventUpdated);
      await load(_agencyId);
      return true;
    } catch (e) {
      debugPrint('EventProvider.save: $e');
      GlobalSnackbar.showError(isNew ? l10n.adminEventAddFailed : l10n.adminEventUpdateFailed);
      return false;
    } finally {
      isSaving = false;
      notifyListeners();
    }
  }

  Future<bool> delete(EventModel event) async {
    try {
      await _service.deleteEvent(event.id);
      events = events.where((e) => e.id != event.id).toList();
      GlobalSnackbar.showSuccess(l10n.adminEventDeleted);
      notifyListeners();
      return true;
    } catch (e) {
      debugPrint('EventProvider.delete: $e');
      GlobalSnackbar.showError(l10n.adminEventDeleteFailed);
      return false;
    }
  }
}

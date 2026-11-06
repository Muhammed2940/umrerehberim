import 'package:flutter/foundation.dart';

import '../../../common/services/firestore_service.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../control_center/audit/audit_labels.dart';
import '../../control_center/shared/audit_log.dart';
import '../models/agency_model.dart';

/// Süper admin: acente yönetimi.
class AgencyProvider extends ChangeNotifier {
  AgencyProvider();

  final FirestoreService _service = FirestoreService.instance;

  List<AgencyModel> agencies = [];
  bool isLoading = false;
  bool isSaving = false;

  int get activeCount => agencies.where((a) => a.isActive).length;

  Future<void> load() async {
    isLoading = true;
    notifyListeners();
    try {
      agencies = await _service.getAgencies();
    } catch (e) {
      debugPrint('AgencyProvider.load: $e');
      GlobalSnackbar.showError(l10n.adminAgencyLoadFailed);
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<bool> createAgency(AgencyModel agency) async {
    isSaving = true;
    notifyListeners();
    try {
      final id = await _service.createAgency(agency);
      AuditLog.write(
        action: AuditAction.agencyCreate,
        actor: currentAuditActor(),
        targetType: 'agency',
        targetId: id,
        targetName: agency.name,
      );
      GlobalSnackbar.showSuccess(l10n.adminAgencyCreated);
      await load();
      return true;
    } catch (e) {
      debugPrint('createAgency: $e');
      GlobalSnackbar.showError(l10n.adminAgencyCreateFailed);
      return false;
    } finally {
      isSaving = false;
      notifyListeners();
    }
  }

  Future<bool> updateAgency(AgencyModel agency) async {
    isSaving = true;
    notifyListeners();
    try {
      final data = agency.toFirestore()..remove('updated_at');
      await _service.updateAgency(agency.id, data);
      final old = agencies.where((a) => a.id == agency.id).firstOrNull;
      AuditLog.write(
        action: AuditAction.agencyUpdate,
        actor: currentAuditActor(),
        targetType: 'agency',
        targetId: agency.id,
        targetName: agency.name,
        details: {
          if (old != null && old.isActive != agency.isActive) 'is_active': agency.isActive,
          if (old != null && old.name != agency.name) 'old_name': old.name,
        },
      );
      agencies = agencies.map((a) => a.id == agency.id ? agency : a).toList();
      GlobalSnackbar.showSuccess(l10n.adminAgencyUpdated);
      return true;
    } catch (e) {
      debugPrint('updateAgency: $e');
      GlobalSnackbar.showError(l10n.adminAgencyUpdateFailed);
      return false;
    } finally {
      isSaving = false;
      notifyListeners();
    }
  }

  Future<bool> toggleActive(AgencyModel agency) => updateAgency(agency.copyWith(isActive: !agency.isActive));

  Future<bool> deleteAgency(String id) async {
    try {
      await _service.deleteAgency(id);
      AuditLog.write(
        action: AuditAction.agencyDelete,
        actor: currentAuditActor(),
        targetType: 'agency',
        targetId: id,
        targetName: agencies.where((a) => a.id == id).firstOrNull?.name ?? '',
      );
      agencies = agencies.where((a) => a.id != id).toList();
      GlobalSnackbar.showSuccess(l10n.adminAgencyDeleted);
      notifyListeners();
      return true;
    } catch (e) {
      debugPrint('deleteAgency: $e');
      GlobalSnackbar.showError(l10n.adminAgencyDeleteFailed);
      return false;
    }
  }
}

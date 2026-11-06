import 'package:flutter/foundation.dart';

import '../../../common/services/firestore_service.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/utils/global_snackbar.dart';
import '../models/currency_model.dart';

/// Acentenin döviz kurları.
class CurrencyProvider extends ChangeNotifier {
  CurrencyProvider();

  final FirestoreService _service = FirestoreService.instance;

  List<CurrencyModel> currencies = [];
  bool isLoading = false;
  bool isSaving = false;
  String? _agencyId;

  /// Boş listede önerilen hazır dövizler (emoji, ad).
  static const defaults = [('💵', 'USD'), ('💶', 'EUR'), ('🇸🇦', 'SAR')];

  Future<void> load(String? agencyId) async {
    _agencyId = agencyId;
    if (agencyId == null) {
      currencies = [];
      notifyListeners();
      return;
    }
    isLoading = true;
    notifyListeners();
    try {
      currencies = await _service.getCurrenciesByAgency(agencyId, forceRefresh: true);
    } catch (e) {
      debugPrint('CurrencyProvider.load: $e');
      GlobalSnackbar.showError(l10n.adminCurrencyLoadFailed);
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<bool> save(CurrencyModel c) async {
    isSaving = true;
    notifyListeners();
    final isNew = c.id.isEmpty;
    try {
      if (isNew) {
        await _service.createCurrency(c.copyWith(agencyId: _agencyId));
      } else {
        await _service.updateCurrency(c);
      }
      GlobalSnackbar.showSuccess(isNew ? l10n.adminCurrencyAdded : l10n.adminCurrencyUpdated);
      await load(_agencyId);
      return true;
    } catch (e) {
      debugPrint('CurrencyProvider.save: $e');
      GlobalSnackbar.showError(isNew ? l10n.adminCurrencyAddFailed : l10n.adminCurrencyUpdateFailed);
      return false;
    } finally {
      isSaving = false;
      notifyListeners();
    }
  }

  Future<bool> delete(CurrencyModel c) async {
    try {
      await _service.deleteCurrency(c.id);
      currencies = currencies.where((e) => e.id != c.id).toList();
      GlobalSnackbar.showSuccess(l10n.adminCurrencyDeleted);
      notifyListeners();
      return true;
    } catch (e) {
      debugPrint('CurrencyProvider.delete: $e');
      GlobalSnackbar.showError(l10n.adminCurrencyDeleteFailed);
      return false;
    }
  }
}

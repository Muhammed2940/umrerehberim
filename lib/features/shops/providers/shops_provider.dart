import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';

import '../../../core/providers/locale_provider.dart';
import '../models/shop_model.dart';
import 'shop_service.dart';

/// Misafir tarafı: dükkan listesi, filtreler ve (izin varsa) kullanıcının konumu.
class ShopsProvider extends ChangeNotifier {
  final ShopService _service = ShopService.instance;

  List<ShopModel> shops = [];
  bool isLoading = false;
  String? error;

  /// Kullanıcının konumu; yalnız konum izni önceden verilmişse dolar.
  Position? position;

  /// Şehir filtresi: 'Tümü' (iç değer, ekranda çevrilir) veya saklanan şehir adı.
  String city = 'Tümü';
  String? category;
  String query = '';

  Future<void> load(String? agencyId) async {
    isLoading = true;
    error = null;
    notifyListeners();
    try {
      shops = await _service.forGuest(agencyId);
    } catch (e) {
      debugPrint('ShopsProvider.load: $e');
      error = l10n.shopsLoadFailed;
    }
    isLoading = false;
    notifyListeners();
    _loadPosition();
  }

  /// İzin istemez: yalnız izin zaten verilmişse konumu okur.
  Future<void> _loadPosition() async {
    try {
      if (!await Geolocator.isLocationServiceEnabled()) return;
      final p = await Geolocator.checkPermission();
      if (p != LocationPermission.always && p != LocationPermission.whileInUse) return;
      position = await Geolocator.getLastKnownPosition();
      if (position != null) notifyListeners();
      position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(accuracy: LocationAccuracy.medium, timeLimit: Duration(seconds: 10)),
      );
      notifyListeners();
    } catch (e) {
      debugPrint('ShopsProvider konum: $e');
    }
  }

  void setCity(String v) {
    city = v;
    notifyListeners();
  }

  void setCategory(String? v) {
    category = v;
    notifyListeners();
  }

  void setQuery(String v) {
    query = v.trim().toLowerCase();
    notifyListeners();
  }

  /// Listede bulunan kategoriler (çipler için).
  List<String> get availableCategories =>
      ShopModel.categories.where((c) => shops.any((s) => s.category == c)).toList();

  /// Metre cinsinden mesafe; konum ya da dükkan koordinatı yoksa null.
  double? distanceTo(ShopModel s) {
    final p = position;
    if (p == null || !s.hasLocation) return null;
    return Geolocator.distanceBetween(p.latitude, p.longitude, s.latitude!, s.longitude!);
  }

  /// Filtrelenmiş liste. Konum varsa en yakından uzağa sıralanır.
  List<ShopModel> get filtered {
    final list = shops.where((s) {
      if (city != 'Tümü' && s.city != city) return false;
      if (category != null && s.category != category) return false;
      if (query.isNotEmpty) {
        final hay = '${s.name} ${s.category} ${s.description} ${s.address}'.toLowerCase();
        if (!hay.contains(query)) return false;
      }
      return true;
    }).toList();
    if (position != null) {
      list.sort((a, b) {
        final da = distanceTo(a), db = distanceTo(b);
        if (da == null && db == null) return ShopService.compare(a, b);
        if (da == null) return 1;
        if (db == null) return -1;
        return da.compareTo(db);
      });
    }
    return list;
  }
}

/// 350 m, 1,2 km
String formatDistance(double meters) {
  if (meters < 1000) return '${(meters / 10).round() * 10} m';
  final km = meters / 1000;
  return '${km.toStringAsFixed(km < 10 ? 1 : 0).replaceAll('.', ',')} km';
}

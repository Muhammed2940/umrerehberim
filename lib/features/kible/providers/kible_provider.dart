import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart' show Locale;
import 'package:flutter_compass/flutter_compass.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import '../../../core/providers/locale_provider.dart';
import '../utils/kible_utils.dart';
import '../utils/magnetic_declination.dart';

enum KibleKonumDurumu { yukleniyor, servisKapali, izinYok, izinKaliciYok, hazir, hata }

/// Kıble ekranının durumu: konum, kıble açısı, uzaklık ve pusula.
class KibleProvider extends ChangeNotifier {
  KibleProvider() {
    assert(KibleUtils.selfCheck(), 'İstanbul kıble açısı 151-152° olmalı');
    _startCompass();
    refreshLocation();
  }

  // ---- Konum ----
  KibleKonumDurumu durum = KibleKonumDurumu.yukleniyor;
  bool konumYenileniyor = false;
  double? lat;
  double? lng;
  String? yerAdi;
  double? kibleAcisi; // gerçek kuzeye göre
  double? uzaklikKm;
  double _declination = 0;

  // ---- Pusula ----
  /// null: henüz bilinmiyor, false: sensör yok.
  bool? pusulaVar;
  double? heading; // gerçek kuzeye göre 0-360
  double? accuracy;
  bool kibleyeDonuk = false;

  StreamSubscription<CompassEvent>? _compassSub;
  Timer? _sensorTimeout;
  bool _disposed = false;

  bool get kalibrasyonGerekli => accuracy != null && accuracy! > 30;

  /// Telefonun kıbleye göre ne kadar dönmesi gerektiği (+ sağa, - sola).
  double? get fark =>
      (heading == null || kibleAcisi == null) ? null : KibleUtils.shortestDelta(heading!, kibleAcisi!);

  void _startCompass() {
    final stream = FlutterCompass.events;
    if (stream == null) {
      pusulaVar = false;
      return;
    }
    // Sensörsüz Android cihazlarda hiç olay gelmeyebilir.
    _sensorTimeout = Timer(const Duration(seconds: 4), () {
      if (pusulaVar == null) {
        pusulaVar = false;
        _notify();
      }
    });
    _compassSub = stream.listen((e) {
      final h = e.heading;
      if (h == null) {
        pusulaVar = false;
        heading = null;
        _notify();
        return;
      }
      pusulaVar = true;
      // Android: manyetik kuzey -> sapma eklenir. iOS zaten gerçek kuzey.
      final isAndroid = defaultTargetPlatform == TargetPlatform.android;
      heading = KibleUtils.normalize(h + (isAndroid ? _declination : 0));
      accuracy = e.accuracy;
      _updateAlignment();
      _notify();
    }, onError: (_) {
      pusulaVar = false;
      _notify();
    });
  }

  void _updateAlignment() {
    final d = fark;
    if (d == null) {
      kibleyeDonuk = false;
      return;
    }
    // Histerezis: 5° içinde girer, 7° dışında çıkar (titreşim tekrar etmesin).
    final next = kibleyeDonuk ? d.abs() <= KibleUtils.tolerance + 2 : d.abs() <= KibleUtils.tolerance;
    if (next && !kibleyeDonuk) HapticFeedback.mediumImpact();
    kibleyeDonuk = next;
  }

  Future<void> refreshLocation() async {
    if (konumYenileniyor) return;
    konumYenileniyor = true;
    if (lat == null) durum = KibleKonumDurumu.yukleniyor;
    _notify();
    try {
      if (!await Geolocator.isLocationServiceEnabled()) {
        if (lat == null) durum = KibleKonumDurumu.servisKapali;
        return;
      }
      var perm = await Geolocator.checkPermission();
      if (perm == LocationPermission.denied) perm = await Geolocator.requestPermission();
      if (perm == LocationPermission.deniedForever) {
        durum = KibleKonumDurumu.izinKaliciYok;
        return;
      }
      if (perm == LocationPermission.denied || perm == LocationPermission.unableToDetermine) {
        durum = KibleKonumDurumu.izinYok;
        return;
      }

      // Hızlı açılış: son bilinen konum.
      if (lat == null) {
        try {
          final last = await Geolocator.getLastKnownPosition();
          if (last != null) _setPosition(last.latitude, last.longitude);
        } catch (_) {}
      }

      try {
        final pos = await Geolocator.getCurrentPosition(
          locationSettings: const LocationSettings(
            accuracy: LocationAccuracy.medium,
            timeLimit: Duration(seconds: 20),
          ),
        );
        _setPosition(pos.latitude, pos.longitude);
      } catch (_) {
        if (lat == null) durum = KibleKonumDurumu.hata;
      }
    } catch (_) {
      if (lat == null) durum = KibleKonumDurumu.hata;
    } finally {
      konumYenileniyor = false;
      _notify();
    }
  }

  void _setPosition(double la, double ln) {
    final moved = lat == null || Geolocator.distanceBetween(lat!, lng!, la, ln) > 1000;
    lat = la;
    lng = ln;
    kibleAcisi = KibleUtils.qibla(la, ln);
    uzaklikKm = Geolocator.distanceBetween(la, ln, KibleUtils.kabeLat, KibleUtils.kabeLng) / 1000;
    _declination = MagneticDeclination.of(la, ln);
    durum = KibleKonumDurumu.hazir;
    _updateAlignment();
    _notify();
    if (moved || yerAdi == null) _lookupPlace(la, ln);
  }

  Future<void> _lookupPlace(double la, double ln) async {
    try {
      // geocoding 5.x: setLocaleIdentifier kullanımdan kalktı, yerine locale parametresi.
      final marks = await Geocoding(locale: Locale(localeProvider.locale.languageCode)).placemarkFromCoordinates(la, ln);
      if (marks.isEmpty) return;
      final p = marks.first;
      String? pick(List<String?> l) => l.firstWhere((s) => s != null && s.trim().isNotEmpty, orElse: () => null);
      final city = pick([p.administrativeArea, p.locality, p.subAdministrativeArea]);
      final country = pick([p.country]);
      final label = [city, country].whereType<String>().join(', ');
      if (label.isNotEmpty) {
        yerAdi = label;
        _notify();
      }
    } catch (_) {
      // İnternet yoksa koordinat gösterilir.
    }
  }

  String get konumEtiketi {
    if (yerAdi != null) return yerAdi!;
    if (lat != null) return '${lat!.toStringAsFixed(3)}°, ${lng!.toStringAsFixed(3)}°';
    return l10n.kibleGettingLocation;
  }

  Future<void> openSettings() async {
    if (durum == KibleKonumDurumu.servisKapali) {
      await Geolocator.openLocationSettings();
    } else {
      await Geolocator.openAppSettings();
    }
  }

  void _notify() {
    if (!_disposed) notifyListeners();
  }

  @override
  void dispose() {
    _disposed = true;
    _sensorTimeout?.cancel();
    _compassSub?.cancel();
    super.dispose();
  }
}

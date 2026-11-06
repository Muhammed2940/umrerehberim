import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

import '../../../core/theme/app_theme.dart';
import '../data/gezilecek_yerler_data.dart';

/// Yer türüne göre ikon.
IconData geziIkon(GeziTur t) => switch (t) {
      GeziTur.kabe => FlutterIslamicIcons.solidKaaba,
      GeziTur.mescid => FlutterIslamicIcons.solidMosque,
      GeziTur.dag => Icons.landscape_rounded,
      GeziTur.magara => Icons.filter_hdr_rounded,
      GeziTur.mezarlik => Icons.yard_rounded,
      GeziTur.ova => FlutterIslamicIcons.solidHadji,
      GeziTur.muze => Icons.museum_rounded,
      GeziTur.savasAlani => Icons.flag_rounded,
      GeziTur.tarihiSehir => Icons.account_balance_rounded,
    };

/// Bölgeye özgü kapak gradyanı (zümrüt paleti).
LinearGradient geziGradyan(GeziBolge b) => switch (b) {
      GeziBolge.mekke => const LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
          colors: [AppColors.emerald900, AppColors.emerald600],
        ),
      GeziBolge.medine => const LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
          colors: [AppColors.emerald700, AppColors.sage],
        ),
      GeziBolge.diger => const LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
          colors: [AppColors.emerald800, AppColors.paperGold],
        ),
    };

/// Görsel yokken kullanılan gradyanlı ikon rozeti.
class GeziIkonRozet extends StatelessWidget {
  const GeziIkonRozet({super.key, required this.yer, this.size = 64});

  final GeziYeri yer;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        gradient: geziGradyan(yer.bolge),
        borderRadius: BorderRadius.circular(size * 0.28),
      ),
      child: Icon(geziIkon(yer.tur), color: Colors.white, size: size * 0.5),
    );
  }
}

/// Kullanıcının konumu: yalnız konum izni zaten verilmişse ve servis açıksa.
/// İzin istemez. Uygulama açık kaldığı sürece bir kez alınır.
class GeziKonum {
  GeziKonum._();

  static LatLng? _son;
  static Future<LatLng?>? _istek;

  static Future<LatLng?> al() {
    if (_son != null) return Future.value(_son);
    return _istek ??= _getir().whenComplete(() => _istek = null);
  }

  static Future<LatLng?> _getir() async {
    try {
      if (!await Geolocator.isLocationServiceEnabled()) return null;
      final izin = await Geolocator.checkPermission();
      if (izin != LocationPermission.always && izin != LocationPermission.whileInUse) return null;
      final bilinen = await Geolocator.getLastKnownPosition();
      if (bilinen != null) {
        _son = LatLng(bilinen.latitude, bilinen.longitude);
        return _son;
      }
      final p = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(accuracy: LocationAccuracy.medium, timeLimit: Duration(seconds: 10)),
      );
      _son = LatLng(p.latitude, p.longitude);
      return _son;
    } catch (_) {
      return null;
    }
  }
}

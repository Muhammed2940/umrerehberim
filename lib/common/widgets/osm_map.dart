import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/providers/locale_provider.dart';
import '../../core/theme/app_theme.dart';

/// OpenStreetMap ortak parçaları (Google Maps faturalandırma istediği için kullanılmıyor).
class OsmMap {
  OsmMap._();

  /// Varsayılan merkez: Mekke (Mescid-i Haram).
  static const LatLng mekke = LatLng(21.4225, 39.8262);

  static TileLayer tileLayer() => TileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        userAgentPackageName: 'com.hekzapot.umrerehberim',
        maxZoom: 19,
      );

  static Widget attribution() => RichAttributionWidget(
        alignment: AttributionAlignment.bottomLeft,
        attributions: [
          TextSourceAttribution(
            l10n.coreOsmContributors,
            onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright'),
                mode: LaunchMode.externalApplication),
          ),
        ],
      );

  /// Konumun hata payını gösteren yarı saydam daire (yarıçap metre cinsinden).
  /// Kişinin gerçek yeri bu dairenin içinde herhangi bir yerde olabilir.
  static CircleLayer accuracyLayer(Iterable<({LatLng point, double accuracy, bool stale})> items) => CircleLayer(
        circles: [
          for (final i in items)
            if (i.accuracy > 0)
              CircleMarker(
                point: i.point,
                radius: i.accuracy.clamp(5, 3000).toDouble(),
                useRadiusInMeter: true,
                color: (i.stale ? Colors.grey : AppColors.primary).withValues(alpha: 0.12),
                borderColor: (i.stale ? Colors.grey : AppColors.primary).withValues(alpha: 0.45),
                borderStrokeWidth: 1.5,
              ),
        ],
      );

  /// İsim etiketli işaretçi. [stale] true ise gri. [accuracy] 30 m'den büyükse
  /// etikette "±X m" yazar.
  static Marker personMarker({
    required LatLng point,
    required String name,
    bool stale = false,
    bool highlighted = false,
    double accuracy = 0,
    VoidCallback? onTap,
  }) {
    final color = stale ? Colors.grey : (highlighted ? AppColors.error : AppColors.primary);
    final label = accuracy > 30 ? '$name  ±${accuracy.round()} m' : name;
    return Marker(
      point: point,
      width: 140,
      height: 70,
      alignment: Alignment.topCenter,
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: color),
                boxShadow: const [BoxShadow(color: Color(0x22000000), blurRadius: 4)],
              ),
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: stale ? Colors.grey.shade700 : Colors.black87),
              ),
            ),
            Icon(Icons.location_on, color: color, size: 36),
          ],
        ),
      ),
    );
  }
}

/// "Az önce", "5 dakika önce", "2 saat önce", yoksa tarih.
String formatLastSeen(DateTime? t) {
  if (t == null) return '-';
  final d = DateTime.now().difference(t);
  if (d.inMinutes < 1) return l10n.coreJustNow;
  if (d.inMinutes < 60) return l10n.coreMinutesAgo(d.inMinutes);
  if (d.inHours < 24) return l10n.coreHoursAgo(d.inHours);
  String two(int v) => v.toString().padLeft(2, '0');
  return '${two(t.day)}/${two(t.month)}/${t.year} ${two(t.hour)}:${two(t.minute)}';
}

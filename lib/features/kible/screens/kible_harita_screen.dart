import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../../common/widgets/osm_map.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../utils/kible_utils.dart';
import '../widgets/kible_cards.dart';

/// "Konumumu Göster": konumdan Kâbe'ye büyük daire rotası.
class KibleHaritaScreen extends StatelessWidget {
  const KibleHaritaScreen({super.key, required this.konum, required this.uzaklikKm, required this.kibleAcisi});

  final LatLng konum;
  final double uzaklikKm;
  final double kibleAcisi;

  /// Boylamları sürekli yapar (180° çizgisini geçerken çizgi kopmasın).
  static List<LatLng> _unwrap(List<LatLng> pts) {
    if (pts.isEmpty) return pts;
    final out = <LatLng>[pts.first];
    var offset = 0.0;
    for (var i = 1; i < pts.length; i++) {
      final d = pts[i].longitude - pts[i - 1].longitude;
      if (d > 180) offset -= 360;
      if (d < -180) offset += 360;
      out.add(LatLng(pts[i].latitude, pts[i].longitude + offset));
    }
    return out;
  }

  @override
  Widget build(BuildContext context) {
    final route = _unwrap(KibleUtils.greatCircle(konum, KibleUtils.kabe, segments: 96));
    final kabe = route.last;

    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.kibleRouteTitle)),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCameraFit: CameraFit.coordinates(
                coordinates: route,
                padding: const EdgeInsets.fromLTRB(48, 48, 48, 170),
                maxZoom: 16,
              ),
            ),
            children: [
              OsmMap.tileLayer(),
              PolylineLayer(
                polylines: [
                  Polyline(
                    points: route,
                    strokeWidth: 4,
                    color: AppColors.primaryDark,
                    borderStrokeWidth: 2,
                    borderColor: Colors.white,
                    pattern: StrokePattern.dashed(segments: const [14, 8]),
                  ),
                ],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: konum,
                    width: 40,
                    height: 40,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3),
                        boxShadow: const [BoxShadow(color: Color(0x33000000), blurRadius: 6)],
                      ),
                      child: const Icon(Icons.person, color: Colors.white, size: 20),
                    ),
                  ),
                  Marker(
                    point: kabe,
                    width: 46,
                    height: 46,
                    child: Container(
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.accent, width: 3),
                        boxShadow: const [BoxShadow(color: Color(0x33000000), blurRadius: 6)],
                      ),
                      child: Image.asset('assets/icons/kabe.png'),
                    ),
                  ),
                ],
              ),
              OsmMap.attribution(),
            ],
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 24,
            child: SafeArea(
              top: false,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: kibleCardDecoration(),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            context.l10n.kibleDistanceToKaaba,
                            style: const TextStyle(color: AppColors.textMuted, fontSize: 13),
                          ),
                          Text(
                            KibleUzaklikKarti.format(uzaklikKm),
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w800, color: AppColors.primaryDark),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          context.l10n.kibleQiblaDegrees(kibleAcisi.round()),
                          style: const TextStyle(fontWeight: FontWeight.w700, color: AppColors.text, fontSize: 16),
                        ),
                        Text(KibleUtils.directionName(kibleAcisi),
                            style: const TextStyle(color: AppColors.textMuted, fontSize: 13)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

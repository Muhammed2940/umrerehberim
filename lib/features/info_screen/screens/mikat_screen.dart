import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../common/widgets/osm_map.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../data/mikat_data.dart';
import '../widgets/info_widgets.dart';

/// Beş mikat: üstte harita, altta liste. Karta dokununca harita o mikata odaklanır.
class MikatScreen extends StatefulWidget {
  const MikatScreen({super.key});

  @override
  State<MikatScreen> createState() => _MikatScreenState();
}

class _MikatScreenState extends State<MikatScreen> {
  final _map = MapController();
  int? _secili;

  static const _kabe = LatLng(21.422517, 39.826182); // OSM way 103914569

  static CameraFit get _hepsi => CameraFit.coordinates(
        coordinates: [_kabe, for (final m in kMikatlar) m.point],
        padding: const EdgeInsets.all(40),
      );

  void _hepsiniGoster() {
    setState(() => _secili = null);
    _map.fitCamera(_hepsi);
  }

  void _odakla(int i) {
    setState(() => _secili = i);
    _map.move(kMikatlar[i].point, 11);
  }

  Future<void> _googleMaps(Mikat m) async {
    final uri = Uri.parse('https://www.google.com/maps/search/?api=1&query=${m.point.latitude},${m.point.longitude}');
    final ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!ok && mounted) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(context.l10n.infoMapCouldNotOpen)));
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(t.infoCardMiqat),
        actions: [
          IconButton(
            tooltip: t.infoShowAll,
            onPressed: _hepsiniGoster,
            icon: const Icon(Icons.zoom_out_map_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                height: 280,
                child: FlutterMap(
                  mapController: _map,
                  options: MapOptions(
                    initialCameraFit: _hepsi,
                    interactionOptions: const InteractionOptions(flags: InteractiveFlag.all & ~InteractiveFlag.rotate),
                  ),
                  children: [
                    OsmMap.tileLayer(),
                    PolylineLayer(
                      polylines: [
                        for (final m in kMikatlar)
                          Polyline(
                            points: [m.point, _kabe],
                            color: AppColors.primary.withValues(alpha: 0.35),
                            strokeWidth: 2,
                            pattern: StrokePattern.dashed(segments: const [8, 6]),
                          ),
                      ],
                    ),
                    MarkerLayer(
                      markers: [
                        placeMarker(
                          point: _kabe,
                          label: t.infoMeccaKaaba,
                          icon: FlutterIslamicIcons.solidKaaba,
                          main: true,
                        ),
                        for (var i = 0; i < kMikatlar.length; i++)
                          placeMarker(
                            point: kMikatlar[i].point,
                            label: kMikatlar[i].name.of(context),
                            icon: Icons.place_rounded,
                            selected: _secili == i,
                            onTap: () => _odakla(i),
                          ),
                      ],
                    ),
                    OsmMap.attribution(),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
              children: [
                InfoNote(t.infoMiqatFlightNote, icon: Icons.flight_rounded),
                InfoNote(t.infoMiqatAlignNote),
                InfoSectionLabel(t.infoMiqatFive, icon: Icons.list_alt_rounded),
                for (var i = 0; i < kMikatlar.length; i++) _mikatKart(i),
                const SizedBox(height: 4),
                Text(
                  t.infoMiqatSource,
                  style: const TextStyle(fontSize: 11.5, color: AppColors.textMuted),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _mikatKart(int i) {
    final m = kMikatlar[i];
    final secili = _secili == i;
    final kusUcusu = formatDistance(distanceMeters(m.point, _kabe));
    return GestureDetector(
      onTap: () => _odakla(i),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: secili ? AppColors.primary : AppColors.surface, width: 1.5),
          boxShadow: kInfoCardShadow,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const InfoIconBadge(FlutterIslamicIcons.solidHadji, size: 42),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(m.name.of(context),
                          style: const TextStyle(fontSize: 16.5, fontWeight: FontWeight.w700, color: AppColors.text)),
                      Text(m.altName.of(context), style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: [
                InfoChip(context.l10n.infoMiqatRoad(m.mesafe.of(context)), icon: Icons.route_rounded, strong: true),
                InfoChip(context.l10n.infoMiqatAsCrowFlies(kusUcusu), icon: Icons.straighten_rounded),
              ],
            ),
            const SizedBox(height: 10),
            BulletText(m.forWhom.of(context), bold: context.l10n.infoMiqatForWhom),
            BulletText(m.description.of(context)),
            if (m.note != null) InfoNote(m.note!.of(context)),
            const SizedBox(height: 4),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => _odakla(i),
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(0, 40),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    icon: const Icon(Icons.my_location_rounded, size: 18),
                    label: Text(context.l10n.infoShowOnMap),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () => _googleMaps(m),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(0, 40),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    icon: const Icon(Icons.map_rounded, size: 18),
                    label: Text(context.l10n.infoOpenInGoogleMaps, overflow: TextOverflow.ellipsis),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

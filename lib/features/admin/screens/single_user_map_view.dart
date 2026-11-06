import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../common/widgets/osm_map.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../providers/location_tracking_provider.dart';

/// Tek kişinin canlı konumu. Rota: `/admin/map/user`, argüman:
/// `{'userId': ..., 'agencyId': ..., 'userName': ...}` (veya yapıcı parametreleri).
class SingleUserMapView extends StatefulWidget {
  final String? userId;
  final String? agencyId;
  final String? userName;
  const SingleUserMapView({super.key, this.userId, this.agencyId, this.userName});

  @override
  State<SingleUserMapView> createState() => _SingleUserMapViewState();
}

class _SingleUserMapViewState extends State<SingleUserMapView> {
  LocationTrackingProvider? _provider;
  final MapController _map = MapController();
  bool _mapReady = false;
  LatLng? _lastCentered;
  String? _userId;
  String? _userName;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_provider != null) return;
    final args = ModalRoute.of(context)?.settings.arguments;
    final m = args is Map ? args : const {};
    _userId = widget.userId ?? m['userId']?.toString();
    _userName = widget.userName ?? m['userName']?.toString();
    final agencyId =
        widget.agencyId ?? m['agencyId']?.toString() ?? context.read<AppStateProvider>().currentUser?.agencyId;
    _provider = LocationTrackingProvider(agencyId: agencyId, listenAll: false);
    if (_userId != null) _provider!.startListeningSingleUser(_userId!, userName: _userName);
  }

  @override
  void dispose() {
    _provider?.dispose();
    _map.dispose();
    super.dispose();
  }

  String _formatTimestamp(DateTime t) {
    String two(int v) => v.toString().padLeft(2, '0');
    return '${two(t.day)}/${two(t.month)}/${t.year} ${two(t.hour)}:${two(t.minute)}';
  }

  Future<void> _directions(double lat, double lng) async {
    final uri = Uri.parse('https://www.google.com/maps/dir/?api=1&destination=$lat,$lng');
    try {
      final ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
      if (!ok) GlobalSnackbar.showError(l10n.adminMapOpenFailed);
    } catch (_) {
      GlobalSnackbar.showError(l10n.adminMapOpenFailed);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _provider!,
      child: Consumer<LocationTrackingProvider>(
        builder: (context, p, _) {
          final loc = p.selectedLocation;
          final t = context.l10n;
          final title = loc?.userName ?? _userName ?? t.adminMapLocation;
          final point = loc == null ? null : LatLng(loc.latitude, loc.longitude);
          if (point != null && _mapReady && point != _lastCentered) {
            _lastCentered = point;
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (mounted) _map.move(point, _map.camera.zoom < 14 ? 16 : _map.camera.zoom);
            });
          }
          return Scaffold(
            appBar: AppBar(title: Text(title)),
            body: Stack(
              children: [
                FlutterMap(
                  mapController: _map,
                  options: MapOptions(
                    initialCenter: point ?? OsmMap.mekke,
                    initialZoom: point == null ? 13 : 16,
                    onMapReady: () {
                      _mapReady = true;
                      _lastCentered = point;
                    },
                  ),
                  children: [
                    OsmMap.tileLayer(),
                    if (loc != null)
                      OsmMap.accuracyLayer([(point: point!, accuracy: loc.accuracy ?? 0, stale: loc.isStale)]),
                    if (loc != null)
                      MarkerLayer(markers: [
                        OsmMap.personMarker(
                          point: point!,
                          name: loc.userName,
                          stale: loc.isStale,
                          highlighted: true,
                          accuracy: loc.accuracy ?? 0,
                        ),
                      ]),
                    OsmMap.attribution(),
                  ],
                ),
                if (p.isLoading) const LinearProgressIndicator(),
                PositionedDirectional(
                  start: 12,
                  end: 12,
                  bottom: 24,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: loc == null
                          ? Text(
                              p.isLoading ? t.adminMapLoading : (p.error ?? t.adminMapNoSharedLocation),
                              textAlign: TextAlign.center,
                            )
                          : Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                _buildInfoRow(Icons.person, loc.userName),
                                _buildInfoRow(
                                  Icons.access_time,
                                  t.adminMapLastUpdate(
                                      '${formatLastSeen(loc.timestamp)} (${_formatTimestamp(loc.timestamp)})'),
                                  color: loc.isStale ? Colors.grey : null,
                                ),
                                _buildInfoRow(
                                    Icons.my_location,
                                    t.adminMapLatLng(
                                        loc.latitude.toStringAsFixed(5), loc.longitude.toStringAsFixed(5))),
                                const SizedBox(height: 8),
                                FilledButton.icon(
                                  onPressed: () => _directions(loc.latitude, loc.longitude),
                                  icon: const Icon(Icons.directions),
                                  label: Text(t.adminMapDirections),
                                ),
                              ],
                            ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text, {Color? color}) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Row(
          children: [
            Icon(icon, size: 18, color: color ?? AppColors.primary),
            const SizedBox(width: 8),
            Expanded(child: Text(text, style: TextStyle(color: color))),
          ],
        ),
      );
}

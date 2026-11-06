import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

import '../../../common/widgets/osm_map.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';

/// Haritaya dokunarak iğne bırakma + "Şu anki konumumu kullan" + elle enlem/boylam.
/// Enlem/boylam [latController] ve [lngController] içinde tutulur.
class LocationPicker extends StatefulWidget {
  final TextEditingController latController;
  final TextEditingController lngController;

  const LocationPicker({super.key, required this.latController, required this.lngController});

  @override
  State<LocationPicker> createState() => _LocationPickerState();
}

class _LocationPickerState extends State<LocationPicker> {
  final _map = MapController();
  bool _locating = false;

  LatLng? get _point {
    final lat = double.tryParse(widget.latController.text.trim().replaceAll(',', '.'));
    final lng = double.tryParse(widget.lngController.text.trim().replaceAll(',', '.'));
    if (lat == null || lng == null || lat.abs() > 90 || lng.abs() > 180) return null;
    return LatLng(lat, lng);
  }

  void _set(LatLng p, {bool move = false}) {
    widget.latController.text = p.latitude.toStringAsFixed(6);
    widget.lngController.text = p.longitude.toStringAsFixed(6);
    setState(() {});
    if (move) _map.move(p, 17);
  }

  Future<void> _useMyLocation() async {
    setState(() => _locating = true);
    try {
      if (!await Geolocator.isLocationServiceEnabled()) {
        GlobalSnackbar.showError(l10n.shopsLocServiceOff);
        return;
      }
      var perm = await Geolocator.checkPermission();
      if (perm == LocationPermission.denied) perm = await Geolocator.requestPermission();
      if (perm != LocationPermission.always && perm != LocationPermission.whileInUse) {
        GlobalSnackbar.showError(l10n.shopsLocPermissionDenied);
        return;
      }
      final pos = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(accuracy: LocationAccuracy.high, timeLimit: Duration(seconds: 15)),
      );
      _set(LatLng(pos.latitude, pos.longitude), move: true);
    } catch (e) {
      GlobalSnackbar.showError(l10n.shopsLocFailed);
    } finally {
      if (mounted) setState(() => _locating = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final p = _point;
    final t = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: SizedBox(
            height: 240,
            child: FlutterMap(
              mapController: _map,
              options: MapOptions(
                initialCenter: p ?? OsmMap.mekke,
                initialZoom: p == null ? 14 : 17,
                onTap: (_, latLng) => _set(latLng),
                interactionOptions: const InteractionOptions(
                  flags: InteractiveFlag.all & ~InteractiveFlag.rotate,
                ),
              ),
              children: [
                OsmMap.tileLayer(),
                if (p != null)
                  MarkerLayer(markers: [
                    Marker(
                      point: p,
                      width: 44,
                      height: 44,
                      alignment: Alignment.topCenter,
                      child: const Icon(Icons.location_on, color: AppColors.error, size: 44),
                    ),
                  ]),
                OsmMap.attribution(),
              ],
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(t.shopsPickerHint, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
        const SizedBox(height: 8),
        OutlinedButton.icon(
          onPressed: _locating ? null : _useMyLocation,
          icon: _locating
              ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2))
              : const Icon(Icons.my_location_rounded),
          label: Text(t.shopsUseMyLocation),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(child: _coordField(widget.latController, t.shopsLatitude, 90)),
            const SizedBox(width: 10),
            Expanded(child: _coordField(widget.lngController, t.shopsLongitude, 180)),
          ],
        ),
        if (p != null)
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton.icon(
              onPressed: () {
                widget.latController.clear();
                widget.lngController.clear();
                setState(() {});
              },
              icon: const Icon(Icons.clear, size: 18),
              label: Text(t.shopsRemoveLocation),
            ),
          ),
      ],
    );
  }

  Widget _coordField(TextEditingController c, String label, double max) => TextFormField(
        controller: c,
        keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
        textDirection: TextDirection.ltr,
        decoration: InputDecoration(labelText: label, isDense: true, border: const OutlineInputBorder()),
        onChanged: (_) {
          setState(() {});
          final pt = _point;
          if (pt != null) _map.move(pt, _map.camera.zoom);
        },
        validator: (v) {
          final t = (v ?? '').trim();
          if (t.isEmpty) return null;
          final d = double.tryParse(t.replaceAll(',', '.'));
          if (d == null || d.abs() > max) return context.l10n.shopsInvalid;
          return null;
        },
      );
}

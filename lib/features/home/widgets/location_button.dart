import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../../../common/services/background_location_service.dart';
import '../../../common/services/location_permission.dart';
import '../../../common/widgets/osm_map.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';

/// Profildeki konum takibi butonu. Üç hali vardır: izin iste, başlat, durdur.
class LocationButton extends StatelessWidget {
  final String label;
  final String? subtitle;
  final IconData icon;
  final Color color;
  final VoidCallback? onTap;

  const LocationButton({
    super.key,
    required this.label,
    required this.icon,
    required this.color,
    this.subtitle,
    this.onTap,
  });

  factory LocationButton.start({Key? key, VoidCallback? onTap}) => LocationButton(
        key: key,
        label: l10n.homeLocationStart,
        subtitle: l10n.homeLocationStartHint,
        icon: Icons.my_location_rounded,
        color: AppColors.primary,
        onTap: onTap,
      );

  factory LocationButton.requestPermission({Key? key, VoidCallback? onTap}) => LocationButton(
        key: key,
        label: l10n.homeLocationAllow,
        icon: Icons.location_searching_rounded,
        color: AppColors.emerald700,
        onTap: onTap,
      );

  factory LocationButton.stop({Key? key, VoidCallback? onTap}) => LocationButton(
        key: key,
        label: l10n.homeLocationStop,
        icon: Icons.location_disabled_rounded,
        color: AppColors.error,
        onTap: onTap,
      );

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Ink(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.08),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: color.withValues(alpha: 0.35)),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
                child: Icon(icon, color: Colors.white, size: 22),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(label, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: color)),
                    if (subtitle != null) ...[
                      const SizedBox(height: 2),
                      Text(subtitle!, style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Konum paylaşımı anahtarı: açık/kapalı + son gönderim zamanı.
/// Profil (misafir) ve yönetici ayarlar ekranı ortak kullanır.
class LocationSharingCard extends StatefulWidget {
  /// Boşsa varsayılan açıklama (seçili dilde).
  final String? description;
  const LocationSharingCard({super.key, this.description});

  @override
  State<LocationSharingCard> createState() => _LocationSharingCardState();
}

class _LocationSharingCardState extends State<LocationSharingCard> with WidgetsBindingObserver {
  bool _enabled = true;
  bool _running = false;
  bool _busy = true;
  LocationAccess? _access;
  bool _reduced = false; // Android "Yaklaşık konum" seçili
  DateTime? _lastSent;
  StreamSubscription<Map<String, dynamic>?>? _sub;
  Timer? _ticker;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _refresh();
    _sub = BackgroundLocationService.updates.listen((e) {
      final ts = e?['timestamp'];
      if (ts is num && mounted) {
        setState(() {
          _lastSent = DateTime.fromMillisecondsSinceEpoch(ts.toInt());
          _running = true;
        });
      }
    });
    // "x dakika önce" metni güncel kalsın.
    _ticker = Timer.periodic(const Duration(seconds: 30), (_) => _refresh());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _sub?.cancel();
    _ticker?.cancel();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) _refresh();
  }

  Future<void> _refresh() async {
    final enabled = await BackgroundLocationService.isSharingEnabled();
    final running = await BackgroundLocationService.isRunning();
    final last = await BackgroundLocationService.lastSentAt();
    final access = await LocationPermissionHelper.currentAccess();
    var reduced = false;
    if (access.canTrack) {
      try {
        reduced = await Geolocator.getLocationAccuracy() == LocationAccuracyStatus.reduced;
      } catch (_) {}
    }
    if (!mounted) return;
    setState(() {
      _enabled = enabled;
      _running = running;
      _lastSent = last;
      _access = access;
      _reduced = reduced;
      _busy = false;
    });
  }

  Future<void> _toggle(bool v) async {
    setState(() => _busy = true);
    final result = await BackgroundLocationService.setSharingEnabled(context, v);
    if (!mounted) return;
    setState(() => _enabled = result);
    if (v && result) GlobalSnackbar.showSuccess(l10n.homeLocationSharingOn);
    if (!v) GlobalSnackbar.showInfo(l10n.homeLocationSharingOff);
    await Future<void>.delayed(const Duration(milliseconds: 800));
    await _refresh();
  }

  String get _status {
    final l = context.l10n;
    if (_access == LocationAccess.serviceDisabled) return l.homeLocationGpsOff;
    if (_access == LocationAccess.denied || _access == LocationAccess.deniedForever) {
      return l.homeLocationPermissionDenied;
    }
    if (!_enabled) return l.homeLocationSharingDisabled;
    if (!_running) return l.homeLocationServiceStarting;
    return l.homeLocationBeingShared;
  }

  /// Konumun kaymasına yol açan izin eksikleri (null: sorun yok).
  String? get _warning {
    if (_busy || !_enabled || _access == null || !_access!.canTrack) return null;
    if (_reduced) return context.l10n.homeLocationReducedWarning;
    if (_access != LocationAccess.always) return context.l10n.homeLocationBackgroundWarning;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final active = _enabled && _running;
    final color = active ? AppColors.success : AppColors.textMuted;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withValues(alpha: 0.35)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
                child: Icon(active ? Icons.share_location_rounded : Icons.location_disabled_rounded,
                    color: Colors.white, size: 22),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(context.l10n.homeLocationSharing,
                        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                    const SizedBox(height: 2),
                    Text(_busy ? context.l10n.homeChecking : _status,
                        style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
                  ],
                ),
              ),
              Switch(value: _enabled, onChanged: _busy ? null : _toggle),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            context.l10n.homeLastSent(_lastSent == null ? context.l10n.homeNotYet : formatLastSeen(_lastSent)),
            style: const TextStyle(fontSize: 12.5),
          ),
          const SizedBox(height: 4),
          Text(widget.description ?? context.l10n.homeLocationSharingDesc, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
          if (_warning != null) ...[
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF4E0),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFE8B04B)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.warning_amber_rounded, color: Color(0xFFB26A00), size: 20),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(_warning!,
                            style: const TextStyle(fontSize: 12.5, color: Color(0xFF7A4A00), height: 1.35)),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: TextButton.icon(
                      onPressed: () => Geolocator.openAppSettings(),
                      icon: const Icon(Icons.settings_rounded, size: 18),
                      label: Text(context.l10n.homeFixPermission),
                    ),
                  ),
                ],
              ),
            ),
          ],
          if (!_busy && _enabled && _access != null && !_access!.canTrack)
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: TextButton.icon(
                onPressed: () => _toggle(true),
                icon: const Icon(Icons.location_searching_rounded),
                label: Text(context.l10n.homeLocationAllow),
              ),
            ),
        ],
      ),
    );
  }
}

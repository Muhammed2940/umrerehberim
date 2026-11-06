import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:intl/intl.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';

/// Kart gölgesi (bildirimler/döviz kartlarıyla aynı).
const kInfoCardShadow = [BoxShadow(color: Color(0x12000000), blurRadius: 14, offset: Offset(0, 4))];

/// Google Haritalar'da yol tarifini dış uygulamada açar.
Future<void> openDirections(BuildContext context, double lat, double lng) async {
  final uri = Uri.parse('https://www.google.com/maps/dir/?api=1&destination=$lat,$lng');
  final ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
  if (!ok && context.mounted) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(context.l10n.infoMapOpenFailed)));
  }
}

/// Kuş uçuşu mesafe (metre).
double distanceMeters(LatLng a, LatLng b) =>
    Geolocator.distanceBetween(a.latitude, a.longitude, b.latitude, b.longitude);

/// Tek ondalıklı sayı, uygulama diline göre ("1,2" / "1.2").
String _oneDecimal(double v) => NumberFormat('0.0', localeProvider.locale.languageCode).format(v);

/// "~350 m", "~1,2 km", "~430 km" (uygulama diline göre).
String formatDistance(double m) {
  if (m < 1000) return l10n.infoDistanceM((m / 10).round() * 10);
  if (m < 10000) return l10n.infoDistanceKm(_oneDecimal(m / 1000));
  return l10n.infoDistanceKm('${(m / 1000).round()}');
}

/// Yürüme süresi tahmini (~4,5 km/sa; kalabalıkta daha uzun sürer).
String walkMinutes(double m) {
  final min = (m / 75).ceil();
  if (min < 60) return l10n.infoWalkMinutes(min);
  return l10n.infoWalkHours(_oneDecimal(min / 60));
}

/// Liste içindeki küçük bölüm başlığı.
class InfoSectionLabel extends StatelessWidget {
  const InfoSectionLabel(this.title, {super.key, this.icon});

  final String title;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 18, 4, 10),
      child: Row(
        children: [
          Container(
            width: 4,
            height: 18,
            decoration: BoxDecoration(color: AppColors.accent, borderRadius: BorderRadius.circular(4)),
          ),
          const SizedBox(width: 8),
          if (icon != null) ...[
            Icon(icon, size: 18, color: AppColors.primary),
            const SizedBox(width: 6),
          ],
          Text(
            title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: AppColors.text, letterSpacing: 0.2),
          ),
        ],
      ),
    );
  }
}

/// Beyaz, yuvarlak köşeli kart kabı.
class InfoCardBox extends StatelessWidget {
  const InfoCardBox({super.key, required this.child, this.padding = const EdgeInsets.all(16), this.margin});

  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.only(bottom: 12),
      padding: padding,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(18),
        boxShadow: kInfoCardShadow,
      ),
      child: child,
    );
  }
}

/// Yuvarlak ikon kutusu.
class InfoIconBadge extends StatelessWidget {
  const InfoIconBadge(this.icon, {super.key, this.size = 44, this.color = AppColors.primary});

  final IconData icon;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: AppColors.primaryLight, borderRadius: BorderRadius.circular(size * 0.32)),
      child: Icon(icon, color: color, size: size * 0.55),
    );
  }
}

/// Küçük etiket (rozet). Sage zemin üstünde [AppColors.onAccent] yazı.
class InfoChip extends StatelessWidget {
  const InfoChip(this.text, {super.key, this.icon, this.strong = false});

  final String text;
  final IconData? icon;
  final bool strong;

  @override
  Widget build(BuildContext context) {
    final bg = strong ? AppColors.accent : AppColors.primaryLight;
    final fg = strong ? AppColors.onAccent : AppColors.primaryDark;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[Icon(icon, size: 13, color: fg), const SizedBox(width: 4)],
          Flexible(
            child: Text(text,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 11.5, fontWeight: FontWeight.w700, color: fg)),
          ),
        ],
      ),
    );
  }
}

/// Açılır kapanır bilgi kartı.
class ExpandableInfoCard extends StatelessWidget {
  const ExpandableInfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.children,
    this.subtitle,
    this.initiallyExpanded = false,
  });

  final IconData icon;
  final String title;
  final String? subtitle;
  final List<Widget> children;
  final bool initiallyExpanded;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(18),
        boxShadow: kInfoCardShadow,
      ),
      clipBehavior: Clip.antiAlias,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          initiallyExpanded: initiallyExpanded,
          tilePadding: const EdgeInsets.fromLTRB(14, 6, 12, 6),
          childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          iconColor: AppColors.primary,
          collapsedIconColor: AppColors.textMuted,
          leading: InfoIconBadge(icon),
          title: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.text)),
          subtitle: subtitle == null
              ? null
              : Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(subtitle!, style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
                ),
          children: [
            const Divider(height: 1),
            const SizedBox(height: 12),
            ...children,
          ],
        ),
      ),
    );
  }
}

/// Madde işaretli satır.
class BulletText extends StatelessWidget {
  const BulletText(this.text, {super.key, this.bold});

  final String text;

  /// Satırın başında kalın gösterilecek kısım (ör. "Pasaport:").
  final String? bold;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsetsDirectional.only(top: 7, end: 10),
            width: 6,
            height: 6,
            decoration: const BoxDecoration(color: AppColors.accent, shape: BoxShape.circle),
          ),
          Expanded(
            child: Text.rich(
              TextSpan(
                style: const TextStyle(fontSize: 14, height: 1.45, color: AppColors.text),
                children: [
                  if (bold != null) TextSpan(text: '$bold ', style: const TextStyle(fontWeight: FontWeight.w700)),
                  TextSpan(text: text),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Bilgi/uyarı kutusu.
class InfoNote extends StatelessWidget {
  const InfoNote(this.text, {super.key, this.warning = false, this.icon});

  final String text;
  final bool warning;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final c = warning ? AppColors.warning : AppColors.primary;
    return Container(
      margin: const EdgeInsets.only(top: 4, bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: c.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: c.withValues(alpha: 0.25)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon ?? (warning ? Icons.warning_amber_rounded : Icons.info_outline_rounded), color: c, size: 20),
          const SizedBox(width: 10),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 13.5, height: 1.4, color: AppColors.text))),
        ],
      ),
    );
  }
}

/// Haritada yer işareti: yuvarlak ikon + altında isim etiketi.
Marker placeMarker({
  required LatLng point,
  required String label,
  required IconData icon,
  bool selected = false,
  bool main = false,
  VoidCallback? onTap,
}) {
  final bg = main ? AppColors.emerald800 : (selected ? AppColors.primary : AppColors.surface);
  final fg = (main || selected) ? Colors.white : AppColors.primary;
  final size = selected || main ? 40.0 : 32.0;
  return Marker(
    point: point,
    width: 150,
    height: size + 26,
    alignment: Alignment.center,
    child: GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: bg,
              shape: BoxShape.circle,
              border: Border.all(color: main ? AppColors.accent : AppColors.primary, width: 2),
              boxShadow: const [BoxShadow(color: Color(0x33000000), blurRadius: 6, offset: Offset(0, 2))],
            ),
            child: Icon(icon, color: fg, size: size * 0.55),
          ),
          const SizedBox(height: 2),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
            decoration: BoxDecoration(
              color: AppColors.surface.withValues(alpha: 0.92),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10.5,
                fontWeight: selected || main ? FontWeight.w800 : FontWeight.w600,
                color: AppColors.text,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

/// Kart altındaki "Haritada göster" / "Yol tarifi" buton çifti.
class PlaceActions extends StatelessWidget {
  const PlaceActions({super.key, required this.point, this.onShowOnMap});

  final LatLng point;
  final VoidCallback? onShowOnMap;

  @override
  Widget build(BuildContext context) {
    final shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(12));
    return Row(
      children: [
        if (onShowOnMap != null) ...[
          Expanded(
            child: OutlinedButton.icon(
              onPressed: onShowOnMap,
              style: OutlinedButton.styleFrom(minimumSize: const Size(0, 40), shape: shape),
              icon: const Icon(Icons.map_rounded, size: 18),
              label: Text(context.l10n.infoShowOnMap),
            ),
          ),
          const SizedBox(width: 10),
        ],
        Expanded(
          child: ElevatedButton.icon(
            onPressed: () => openDirections(context, point.latitude, point.longitude),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(0, 40),
              shape: shape,
              textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            icon: const Icon(Icons.directions_rounded, size: 18),
            label: Text(context.l10n.infoDirections),
          ),
        ),
      ],
    );
  }
}

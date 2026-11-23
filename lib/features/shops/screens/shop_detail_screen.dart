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
import '../../control_center/analytics/shop_view_counter.dart';
import '../../paketler/providers/personal_plan_provider.dart';
import '../models/shop_model.dart';
import '../widgets/shop_widgets.dart';
import 'shop_code_screen.dart';

/// Dükkan detayı: bilgiler, küçük harita, Ara / WhatsApp / Yol Tarifi ve
/// "İndirim Kodumu Göster".
class ShopDetailScreen extends StatelessWidget {
  final ShopModel shop;
  const ShopDetailScreen({super.key, required this.shop});

  Future<void> _launch(Uri uri) async {
    try {
      if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
        GlobalSnackbar.showError(l10n.shopsLinkOpenFailed);
      }
    } catch (_) {
      GlobalSnackbar.showError(l10n.shopsLinkOpenFailed);
    }
  }

  static String _digits(String v) => v.replaceAll(RegExp(r'[^0-9]'), '');

  @override
  Widget build(BuildContext context) {
    final s = shop;
    final t = context.l10n;
    // Görüntülenme sayacı (yalnız misafir, oturumda dükkan başına bir kez).
    ShopViewCounter.record(s.id, Provider.of<AppStateProvider>(context, listen: false).currentUser);
    return Scaffold(
      appBar: AppBar(
        title: Text(s.name, maxLines: 1, overflow: TextOverflow.ellipsis),
        actions: [
          IconButton(
            tooltip: t.cuzdanTitle,
            icon: const Icon(Icons.account_balance_wallet_rounded),
            onPressed: () => Navigator.of(context).pushNamed('/cuzdan'),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 120),
        children: [
          ShopSection(
            child: Row(
              children: [
                ShopLogo.of(s, size: 76),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(s.name,
                          style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w800, color: AppColors.text)),
                      const SizedBox(height: 4),
                      Text('${shopCategoryLabel(context, s.category)} · ${shopCityLabel(context, s.city)}',
                          style: const TextStyle(fontSize: 13.5, color: AppColors.primary)),
                    ],
                  ),
                ),
                DiscountBadge(percent: s.discountPercent, large: true),
              ],
            ),
          ),
          if (s.discountNote.isNotEmpty)
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  const Icon(Icons.local_offer_rounded, color: AppColors.primary, size: 20),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(s.discountNote,
                        style: const TextStyle(fontSize: 13.5, color: AppColors.text, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
          if (s.description.isNotEmpty)
            ShopSection(
              title: t.shopsAbout,
              icon: Icons.info_outline_rounded,
              child: Text(s.description, style: const TextStyle(fontSize: 14, color: AppColors.text, height: 1.4)),
            ),
          if (s.address.isNotEmpty || s.workingHours.isNotEmpty || s.phone.isNotEmpty)
            ShopSection(
              title: t.shopsInfo,
              icon: Icons.storefront_rounded,
              child: Column(
                children: [
                  if (s.address.isNotEmpty) _row(Icons.place_outlined, t.shopsAddress, s.address),
                  if (s.workingHours.isNotEmpty) _row(Icons.schedule_rounded, t.shopsWorkingHours, s.workingHours),
                  if (s.phone.isNotEmpty) _row(Icons.phone_outlined, t.shopsPhone, s.phone, ltr: true),
                ],
              ),
            ),
          if (s.hasLocation)
            ShopSection(
              title: t.shopsLocation,
              icon: Icons.map_outlined,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: SizedBox(
                  height: 180,
                  child: FlutterMap(
                    options: MapOptions(
                      initialCenter: LatLng(s.latitude!, s.longitude!),
                      initialZoom: 16,
                      interactionOptions: const InteractionOptions(flags: InteractiveFlag.none),
                    ),
                    children: [
                      OsmMap.tileLayer(),
                      MarkerLayer(markers: [
                        Marker(
                          point: LatLng(s.latitude!, s.longitude!),
                          width: 40,
                          height: 40,
                          alignment: Alignment.topCenter,
                          child: const Icon(Icons.location_on, color: AppColors.error, size: 40),
                        ),
                      ]),
                      OsmMap.attribution(),
                    ],
                  ),
                ),
              ),
            ),
          Row(
            children: [
              if (s.phone.isNotEmpty)
                _action(Icons.call_rounded, t.shopsCall, () => _launch(Uri(scheme: 'tel', path: s.phone.trim()))),
              if (s.whatsapp.isNotEmpty)
                _action(Icons.chat_rounded, 'WhatsApp',
                    () => _launch(Uri.parse('https://wa.me/${_digits(s.whatsapp)}'))),
              if (s.hasLocation)
                _action(
                    Icons.directions_rounded,
                    t.shopsDirections,
                    () => _launch(Uri.parse(
                        'https://www.google.com/maps/dir/?api=1&destination=${s.latitude},${s.longitude}'))),
            ],
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
          child: SizedBox(
            height: 56,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                textStyle: const TextStyle(fontSize: 16.5, fontWeight: FontWeight.w700),
              ),
              icon: const Icon(Icons.qr_code_2_rounded, size: 28),
              label: Text(t.shopsShowMyCode),
              onPressed: () {
                // Bireysel: indirim kodu yalnız aktif ücretli pakette (kurallar da denetler).
                final bireysel = context.read<AppStateProvider>().currentUser?.isBireysel ?? false;
                if (bireysel && !personalPlan.canUseDiscounts) {
                  GlobalSnackbar.showInfo(t.paketlerDiscountLocked);
                  Navigator.of(context).pushNamed('/paketler');
                  return;
                }
                Navigator.of(context).push(MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (_) => ShopCodeScreen(shop: s),
                ));
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _row(IconData icon, String label, String value, {bool ltr = false}) => Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 20, color: AppColors.textMuted),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(label, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                  const SizedBox(height: 2),
                  Text(value,
                      textDirection: ltr ? TextDirection.ltr : null,
                      style: const TextStyle(fontSize: 14, color: AppColors.text)),
                ],
              ),
            ),
          ],
        ),
      );

  Widget _action(IconData icon, String label, VoidCallback onTap) => Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: onTap,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), boxShadow: shopCardShadow),
                child: Column(
                  children: [
                    Icon(icon, color: AppColors.primary, size: 26),
                    const SizedBox(height: 6),
                    Text(label,
                        style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.text)),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}

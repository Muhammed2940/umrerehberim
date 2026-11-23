import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_theme.dart';
import '../../info_screen/data/l10n_text.dart';
import '../../info_screen/screens/ihram_restrictions_screen.dart';
import '../../info_screen/widgets/yakinda_widgets.dart';

class InfoCardData {
  const InfoCardData({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.onTap,
    this.badge,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;
  final String? badge;
}

/// "Genel Bilgiler" sekmesi.
class GeneralInfoScreen extends StatefulWidget {
  const GeneralInfoScreen({super.key});

  @override
  State<GeneralInfoScreen> createState() => _GeneralInfoScreenState();
}

class _GeneralInfoScreenState extends State<GeneralInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    // Bireysel kullanıcının rehberi yok: "Rehber İletişim" kartı gösterilmez.
    final bireysel = context.select<AppStateProvider, bool>((a) => a.currentUser?.isBireysel ?? false);
    final cards = <InfoCardData>[
      InfoCardData(
        title: t.infoCardIhram,
        subtitle: t.infoTapForDetails,
        icon: FlutterIslamicIcons.solidHadji,
        color: AppColors.primary,
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const IhramRestrictionsScreen())),
      ),
      InfoCardData(
        title: t.infoCardPlaces,
        subtitle: t.infoTapForDetails,
        icon: FlutterIslamicIcons.solidMosque,
        color: const Color(0xFF2E7D9A),
        onTap: () => Navigator.pushNamed(context, '/general/places'),
      ),
      InfoCardData(
        title: const L10nText(tr: 'Harem Kapıları', en: 'Gates of the Two Holy Mosques', ar: 'أبواب الحرمين').of(context),
        subtitle: const L10nText(
          tr: 'Mescid-i Haram ve Mescid-i Nebevî kapıları, yerleri ve tarihçesi',
          en: 'Gates of Masjid al-Haram and Masjid an-Nabawi, locations and history',
          ar: 'أبواب المسجد الحرام والمسجد النبوي ومواقعها وتاريخها',
        ).of(context),
        icon: Icons.door_front_door_rounded,
        color: const Color(0xFF8A6D1F),
        onTap: () => Navigator.pushNamed(context, '/harem-kapilari'),
      ),
      InfoCardData(
        title: const L10nText(tr: 'Ulaşım Rehberi', en: 'Transport Guide', ar: 'دليل المواصلات').of(context),
        subtitle: const L10nText(
          tr: 'Otobüs hatları, tren, taksi: duraklar, saatler, fiyatlar',
          en: 'Bus lines, train, taxi: stops, hours, fares',
          ar: 'خطوط الحافلات والقطار وسيارات الأجرة: المحطات والمواعيد والأسعار',
        ).of(context),
        icon: Icons.directions_bus_rounded,
        color: const Color(0xFF2E7D9A),
        onTap: () => Navigator.pushNamed(context, '/ulasim'),
      ),
      InfoCardData(
        title: t.infoCardTravelGuide,
        subtitle: t.infoCardTravelGuideSub,
        icon: Icons.luggage_rounded,
        color: AppColors.primary,
        onTap: () => Navigator.pushNamed(context, '/seyahat-rehberi'),
      ),
      InfoCardData(
        title: t.infoCardRouteSim,
        subtitle: t.infoCardRouteSimSub,
        icon: Icons.route_rounded,
        color: AppColors.emerald700,
        onTap: () => Navigator.pushNamed(context, '/rota-simulasyonu'),
      ),
      InfoCardData(
        title: t.infoCardTawafSim,
        subtitle: t.infoCardTawafSimSub,
        icon: FlutterIslamicIcons.solidKaaba,
        color: AppColors.emerald800,
        onTap: () => Navigator.pushNamed(context, '/tavaf-simulasyonu'),
      ),
      InfoCardData(
        title: t.infoCardNeedList,
        subtitle: t.infoCardNeedListSub,
        icon: Icons.checklist_rounded,
        color: AppColors.primary,
        onTap: () => Navigator.pushNamed(context, '/ihtiyac-listesi'),
      ),
      InfoCardData(
        title: t.infoCardMiqat,
        subtitle: t.infoCardMiqatSub,
        icon: Icons.place_rounded,
        color: AppColors.emerald700,
        onTap: () => Navigator.pushNamed(context, '/mikat'),
      ),
      InfoCardData(
        title: t.infoCardHotels,
        subtitle: t.infoCardHotelsSub,
        icon: Icons.hotel_rounded,
        color: AppColors.emerald800,
        onTap: () => Navigator.pushNamed(context, '/otel-restoran'),
      ),
      if (!bireysel)
      InfoCardData(
        title: t.infoCardContactGuide,
        subtitle: t.infoTapForDetails,
        icon: Icons.support_agent_rounded,
        color: AppColors.emerald700,
        onTap: () => Navigator.pushNamed(context, '/rehber_iletisim'),
      ),
      InfoCardData(
        title: t.infoCardTechSupport,
        subtitle: t.infoTapForDetails,
        icon: Icons.headset_mic_rounded,
        color: const Color(0xFF2F6655),
        onTap: () => Navigator.pushNamed(context, '/technical-support'),
      ),
      InfoCardData(
        title: t.infoCardPedometer,
        subtitle: t.infoCardPedometerSub,
        icon: Icons.directions_walk_rounded,
        color: const Color(0xFFEF6C00),
        badge: t.infoBadgeSoon,
        onTap: () => ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text(t.infoPedometerNextVersion))),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(t.infoGeneralTitle),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
        itemCount: cards.length + 1,
        // En üstte "Çok Yakında" tanıtım alanı, ardından bilgi kartları.
        itemBuilder: (context, i) => i == 0 ? const YakindaBolumu() : InfoCard(data: cards[i - 1]),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.data});

  final InfoCardData data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: Colors.white,
        elevation: 2,
        shadowColor: Colors.black12,
        borderRadius: BorderRadius.circular(18),
        child: InkWell(
          borderRadius: BorderRadius.circular(18),
          onTap: data.onTap,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: data.color.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(data.icon, color: data.color, size: 30),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(child: Text(data.title, style: AppTextStyles.cardTitle.copyWith(fontSize: 17))),
                          if (data.badge != null) ...[
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                color: AppColors.accent.withValues(alpha: 0.15),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(data.badge!,
                                  style: const TextStyle(fontSize: 11, color: AppColors.primaryDark, fontWeight: FontWeight.w700)),
                            ),
                          ],
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(data.subtitle, style: AppTextStyles.muted),
                    ],
                  ),
                ),
                const Icon(Icons.chevron_right_rounded, color: AppColors.textMuted),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

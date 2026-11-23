import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../paketler/providers/personal_plan_provider.dart';
import '../../paketler/widgets/paket_sec_card.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../home/models/prayer_time_model.dart';
import '../providers/home_provider.dart';
import '../widgets/basliklar.dart';
import '../widgets/doviz_kurlari.dart';
import '../widgets/ezan_vakitleri.dart';
import '../widgets/quick_action_card.dart';
import '../widgets/quote_widget.dart';
import '../widgets/yolculuk_vakti_card.dart';

/// Misafir ana sayfası: geri sayım, ezan vakitleri, hızlı erişim, döviz.
/// Duyurular AppBar'daki zilden (Bildirimler sayfası) görülür.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final AnimationController _fadeController;
  late final Animation<double> _fade;

  // Veri gelmezse sahte saat göstermek yerine "--:--" gösterilir.
  static const _defaultMekke = [
    MapEntry('İmsak', ''),
    MapEntry('Güneş', ''),
    MapEntry('Öğle', ''),
    MapEntry('İkindi', ''),
    MapEntry('Akşam', ''),
    MapEntry('Yatsı', ''),
  ];
  static const _defaultMedine = _defaultMekke;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(vsync: this, duration: const Duration(milliseconds: 700));
    _fade = CurvedAnimation(parent: _fadeController, curve: Curves.easeOut);
    _fadeController.forward();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final home = context.read<HomeProvider>();
      home.startRates();
      home.loadInbox(context.read<AppStateProvider>().currentUser);
    });
  }

  @override
  void dispose() {
    _fadeController.dispose();
    super.dispose();
  }

  Future<void> _onRefresh() async {
    final app = context.read<AppStateProvider>();
    final user = app.currentUser;
    await context.read<HomeProvider>().refresh(user?.agencyId, user: user, app: app);
  }

  Future<void> _openInbox() async {
    await Navigator.of(context).pushNamed('/bildirimler');
  }

  void _open(String route) => Navigator.of(context).pushNamed(route);

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppStateProvider>();
    return Consumer<HomeProvider>(
      builder: (context, home, _) {
        final userName = app.currentUser?.userName.trim() ?? '';
        final bireysel = app.currentUser?.isBireysel ?? false;
        // Bireysel: Kutsal Yolculuk kartları yalnız paket seçiliyse, kullanıcının kendi
        // girdiği Mekke/Medine bilgisiyle (PersonalPlanProvider; ücretsizde bölüm yok).
        final plan = context.watch<PersonalPlanProvider>();
        final uid = app.currentUser?.id;
        if (bireysel && uid != null) plan.loadFor(uid);

        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 72,
            backgroundColor: Colors.transparent,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: AppColors.primaryGradient,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(26)),
              ),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(26)),
            ),
            centerTitle: false,
            titleSpacing: 20,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  context.l10n.homeGreeting,
                  style: const TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),
                ),
                if (userName.isNotEmpty)
                  Text(
                    userName,
                    style: TextStyle(color: Colors.white.withValues(alpha: 0.88), fontSize: 13.5),
                  ),
              ],
            ),
            // Bireysel kullanıcıya acente duyurusu gelmez: zil gösterilmez.
            actions: [
              if (!bireysel)
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 12),
                  child: _BellButton(count: home.unreadCount, onTap: _openInbox),
                ),
            ],
          ),
          body: FadeTransition(
            opacity: _fade,
            child: Column(
              children: [
                if (app.isOffline) _OfflineBanner(lastUpdate: app.lastDataUpdate),
                Expanded(
                  child: RefreshIndicator(
                    color: AppColors.primary,
                    onRefresh: _onRefresh,
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          if (!bireysel || plan.hasPaidPackage) ...[
                            SectionHeader(title: context.l10n.homeSectionJourney, icon: FlutterIslamicIcons.solidKaaba),
                            bireysel ? _personalCountdownSwiper(plan, home) : _countdownSwiper(app, home),
                          ],
                          SectionHeader(title: context.l10n.homeSectionPrayerTimes, icon: FlutterIslamicIcons.solidMosque),
                          _prayerSwiper(app, home),
                          if (bireysel) ...[const SizedBox(height: 12), const PaketSecCard()],
                          SectionHeader(title: context.l10n.homeSectionQuickAccess, icon: Icons.grid_view_rounded),
                          _quickActions(bireysel: bireysel),
                          SectionHeader(title: context.l10n.homeSectionCurrency, icon: Icons.currency_exchange_rounded),
                          LiveCurrencyCard(
                            rates: home.rates,
                            loading: home.ratesLoading,
                            error: home.ratesError,
                            onRefresh: home.loadRates,
                          ),
                          QuoteWidget.ofTheDay(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  /// Bireysel paketli kullanıcının kendi girdiği Mekke/Medine konaklaması (oda yok).
  Widget _personalCountdownSwiper(PersonalPlanProvider plan, HomeProvider home) {
    final cards = [
      ModernCountdownCard(
        city: 'Mekke',
        trip: plan.mekkeTrip,
        totalDays: home.totalDays(plan.mekkeTrip),
        daysLeft: home.daysLeft(plan.mekkeTrip),
        hotelName: plan.mekke.hotel.isEmpty ? null : plan.mekke.hotel,
      ),
      ModernCountdownCard(
        city: 'Medine',
        trip: plan.medineTrip,
        totalDays: home.totalDays(plan.medineTrip),
        daysLeft: home.daysLeft(plan.medineTrip),
        hotelName: plan.medine.hotel.isEmpty ? null : plan.medine.hotel,
      ),
    ];
    return _swiperOf(cards);
  }

  Widget _countdownSwiper(AppStateProvider app, HomeProvider home) {
    final cards = [
      ModernCountdownCard(
        city: 'Mekke',
        trip: app.mekkeTrip,
        totalDays: home.totalDays(app.mekkeTrip),
        daysLeft: home.daysLeft(app.mekkeTrip),
        hotelName: app.mekkeHotel?.name,
        roomNumber: app.mekkeOda?.roomNumber,
      ),
      ModernCountdownCard(
        city: 'Medine',
        trip: app.medineTrip,
        totalDays: home.totalDays(app.medineTrip),
        daysLeft: home.daysLeft(app.medineTrip),
        hotelName: app.medineHotel?.name,
        roomNumber: app.medineOda?.roomNumber,
      ),
    ];
    return _swiperOf(cards);
  }

  Widget _swiperOf(List<Widget> cards) {
    return SizedBox(
      height: 232,
      child: Swiper(
        itemCount: cards.length,
        itemBuilder: (_, i) => Padding(padding: const EdgeInsets.only(bottom: 18), child: cards[i]),
        loop: false,
        viewportFraction: 0.94,
        scale: 0.96,
        pagination: _pagination,
      ),
    );
  }

  Widget _prayerSwiper(AppStateProvider app, HomeProvider home) {
    List<MapEntry<String, String>> timesOf(PrayerTimeModel? p, List<MapEntry<String, String>> fallback) {
      if (p == null) return fallback;
      final e = p.entries;
      return e.every((x) => x.value.trim().isEmpty) ? fallback : e;
    }

    final cards = [
      PrayerTimesCard(
        city: 'Mekke',
        times: timesOf(app.mekkePrayer, _defaultMekke),
        hicri: app.mekkePrayer?.hicri,
        day: app.mekkePrayer?.day,
      ),
      PrayerTimesCard(
        city: 'Medine',
        times: timesOf(app.medinePrayer, _defaultMedine),
        hicri: app.medinePrayer?.hicri,
        day: app.medinePrayer?.day,
      ),
    ];
    return SizedBox(
      height: 218,
      child: Swiper(
        itemCount: cards.length,
        itemBuilder: (_, i) => Padding(padding: const EdgeInsets.only(bottom: 18), child: cards[i]),
        index: home.currentPrayerIndex.clamp(0, cards.length - 1),
        onIndexChanged: home.setCurrentPrayerIndex,
        loop: false,
        viewportFraction: 0.94,
        scale: 0.96,
        pagination: _pagination,
      ),
    );
  }

  static const _pagination = SwiperPagination(
    margin: EdgeInsets.only(bottom: 0),
    builder: DotSwiperPaginationBuilder(
      activeColor: AppColors.accent,
      color: AppColors.divider,
      size: 7,
      activeSize: 9,
    ),
  );

  Widget _quickActions({required bool bireysel}) {
    final l = context.l10n;
    // Bireysel: acente özellikleri (telsiz, dükkanlar, rehber, takvim) yerine ücretsiz içerikler.
    final items = bireysel
        ? <(IconData, String, String, Color)>[
            (FlutterIslamicIcons.solidQuran, l.homeQuickQuran, '/kuran', AppColors.emerald800),
            (FlutterIslamicIcons.solidPrayer, l.homeQuickDuas, '/dualar', AppColors.primary),
            (FlutterIslamicIcons.solidQibla, l.homeQuickQibla, '/kible', AppColors.emerald700),
            (Icons.groups_rounded, l.hatimTitle, '/hatim', const Color(0xFF2F6655)),
            (Icons.place_rounded, l.homeQuickPlaces, '/gezilecek-yerler', AppColors.emerald600),
            (Icons.luggage_rounded, l.infoCardTravelGuide, '/seyahat-rehberi', AppColors.emerald800),
            (Icons.checklist_rounded, l.infoCardNeedList, '/ihtiyac-listesi', AppColors.emerald700),
            (Icons.place_outlined, l.infoCardMiqat, '/mikat', const Color(0xFF2F6655)),
          ]
        : <(IconData, String, String, Color)>[
      (FlutterIslamicIcons.solidQuran, l.homeQuickQuran, '/kuran', AppColors.emerald800),
      (FlutterIslamicIcons.solidPrayer, l.homeQuickDuas, '/dualar', AppColors.primary),
      (FlutterIslamicIcons.solidQibla, l.homeQuickQibla, '/kible', AppColors.emerald700),
      (Icons.settings_input_antenna_rounded, l.telsizTitle, '/telsiz', const Color(0xFF2F6655)),
      (Icons.storefront_rounded, l.homeQuickShops, '/dukkanlar', AppColors.emerald600),
      (Icons.support_agent_rounded, l.homeContactGuide, '/rehber_iletisim', AppColors.emerald800),
      (Icons.place_rounded, l.homeQuickPlaces, '/gezilecek-yerler', AppColors.emerald700),
      (Icons.calendar_month_rounded, l.homeProgramCalendar, '/takvim', const Color(0xFF2F6655)),
    ];
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      childAspectRatio: 0.7, // iki satırlık başlıklar ("Anlaşmalı Dükkanlar") taşmasın
      padding: EdgeInsets.zero,
      children: [
        for (final it in items)
          QuickActionTile(icon: it.$1, title: it.$2, color: it.$4, onTap: () => _open(it.$3)),
      ],
    );
  }
}

/// AppBar'daki bildirim zili; okunmamış sayısı rozetle gösterilir.
class _BellButton extends StatelessWidget {
  final int count;
  final VoidCallback onTap;

  const _BellButton({required this.count, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withValues(alpha: 0.18),
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: SizedBox(
          width: 46,
          height: 46,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Icon(count > 0 ? Icons.notifications_active_rounded : Icons.notifications_none_rounded,
                  color: Colors.white, size: 26),
              if (count > 0)
                PositionedDirectional(
                  top: 6,
                  end: 6,
                  child: Container(
                    constraints: const BoxConstraints(minWidth: 18, minHeight: 18),
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      color: AppColors.accent,
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(color: Colors.white, width: 1.5),
                    ),
                    alignment: Alignment.center,
                    child: Text(count > 9 ? '9+' : '$count',
                        style: const TextStyle(color: AppColors.onAccent, fontSize: 10, fontWeight: FontWeight.bold)),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OfflineBanner extends StatelessWidget {
  final DateTime? lastUpdate;

  const _OfflineBanner({this.lastUpdate});

  @override
  Widget build(BuildContext context) {
    final when = lastUpdate == null
        ? ''
        : ' • ${context.l10n.homeLastUpdate(DateFormat('d MMM HH:mm').format(lastUpdate!))}';
    return Container(
      width: double.infinity,
      color: const Color(0xFFFFF4E0),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Row(
        children: [
          const Icon(Icons.cloud_off_rounded, size: 16, color: Color(0xFFB26A00)),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              '${context.l10n.homeOfflineMode}$when',
              style: const TextStyle(fontSize: 12, color: Color(0xFFB26A00), fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

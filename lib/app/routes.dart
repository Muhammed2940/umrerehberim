import 'package:flutter/material.dart';

import '../common/widgets/acente_ozelligi_card.dart';
import '../core/providers/locale_provider.dart';

import '../features/admin/screens/admin_analytics_screen.dart';
import '../features/admin/screens/all_locations_map_view.dart';
import '../features/admin/screens/admin_dashboard_screen.dart';
import '../features/admin/screens/admin_events_screen.dart';
import '../features/admin/screens/agencies_page.dart';
import '../features/admin/screens/currency_page.dart';
import '../features/admin/screens/hotels_page.dart';
import '../features/admin/screens/notifications_page.dart';
import '../features/admin/screens/settings_page.dart';
import '../features/admin/screens/single_user_map_view.dart';
import '../features/admin/screens/super_admin_dashboard.dart';
import '../features/admin/screens/trips_page.dart';
import '../features/admin/screens/users/create_user_screen.dart';
import '../features/admin/screens/users/user_detail_screen.dart';
import '../features/admin/screens/user_selection_view.dart';
import '../features/admin/screens/users/users_page.dart';
import '../features/auth/screens/login.dart';
import '../features/dualar/screens/kuran.dart';
import '../features/home/screens/bildirimler_screen.dart';
import '../features/home/screens/dualar.dart';
import '../features/home/screens/home_screen.dart';
import '../features/home/screens/info_screen.dart';
import '../features/home/screens/profil.dart';
import '../features/home/screens/rehber_iletisim.dart';
import '../features/home/screens/takvim_screen.dart';
import '../features/paketler/screens/paketler_screen.dart';
import '../features/paketler/screens/yolculuk_bilgilerim_screen.dart';
import '../features/paketler/widgets/paket_gate.dart';
import '../features/info_screen/screens/gezilecek_yerler_screen.dart';
import '../features/kible/screens/kible_screen.dart';
import '../features/info_screen/screens/technical_support_screen.dart';
import '../features/main/screens/main_screen.dart';
import '../features/splash/screens/splash_screen.dart';
import '../features/super_admin/screens/agency_detail_page.dart';
import '../features/telsiz/screens/telsiz_screen.dart';
import '../features/info_screen/screens/seyahat_rehberi_screen.dart';
import '../features/info_screen/screens/ihtiyac_listesi_screen.dart';
import '../features/info_screen/screens/mikat_screen.dart';
import '../features/info_screen/screens/otel_restoran_screen.dart';
import '../features/info_screen/screens/harem_kapilari_screen.dart';
import '../features/info_screen/screens/ulasim_screen.dart';
import '../features/simulasyon/screens/rota_simulasyonu_screen.dart';
import '../features/simulasyon/screens/tavaf_simulasyonu_screen.dart';
import '../features/shops/screens/admin_shops_page.dart';
import '../features/shops/screens/shop_edit_screen.dart';
import '../features/shops/screens/shops_screen.dart';
import '../features/esnaf/screens/merchant_home_screen.dart';
import '../features/cuzdan/screens/cuzdan_screen.dart';
import '../features/admin/screens/esnaf_rapor_screen.dart';
import '../features/control_center/home/control_center_screen.dart';
import '../features/control_center/analytics/cc_analytics_screen.dart';
import '../features/control_center/analytics/cc_merchant_performance_screen.dart';
import '../features/control_center/loyalty/cc_loyalty_screen.dart';
import '../features/control_center/coupons/cc_coupons_screen.dart';
import '../features/control_center/finance/cc_finance_screen.dart';
import '../features/control_center/risk/cc_risk_screen.dart';
import '../features/control_center/messages/cc_messages_screen.dart';
import '../features/control_center/messages/agency_inbox_screen.dart';
import '../features/control_center/audit/cc_audit_screen.dart';
import '../features/control_center/staff/cc_staff_screen.dart';
import '../features/hatim/screens/hatim_create_screen.dart';
import '../features/hatim/screens/hatim_group_screen.dart';
import '../features/hatim/screens/hatim_home_screen.dart';
import 'app_wrapper.dart';

/// Rota adları orijinal uygulamayla aynı. Parametre gereken ekranlar
/// `ModalRoute.of(context)!.settings.arguments` ile okur.
class AppRoutes {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Map<String, WidgetBuilder> get routes => {
        '/': (_) => const AppWrapper(),
        '/splash': (_) => const SplashScreen(),
        '/login': (_) => const LoginScreen(),
        '/main': (_) => const MainScreen(),
        '/home': (_) => const HomeScreen(),
        '/profil': (_) => const ProfilScreen(),
        '/info': (_) => const GeneralInfoScreen(),
        // Acente özellikleri: bireysel kullanıcıya AcenteOzelligiGate kibar kartı gösterir.
        '/takvim': (_) => AcenteOzelligiGate(
              title: (c) => c.l10n.homeProgramCalendar,
              icon: Icons.calendar_month_rounded,
              child: const TakvimScreen(),
            ),
        '/gezilecek-yerler': (_) => const GezilecekYerlerScreen(),
        '/admin': (_) => const AdminDashboardScreen(),
        '/admin/analytics': (_) => const AdminAnalyticsScreen(),
        '/admin/agencies': (_) => const AgenciesPage(),
        '/super-admin': (_) => const SuperAdminDashboard(),
        '/super-admin/agency': (_) => const AgencyDetailPage(),
        '/admin/events': (_) => const AdminEventsScreen(),
        '/admin/users': (_) => const UsersPage(),
        '/admin/users/create': (_) => const CreateUserScreen(),
        '/admin/users/detail': (_) => const UserDetailScreen(),
        '/admin/trips': (_) => const TripsPage(),
        '/admin/hotels': (_) => const HotelsPage(),
        '/admin/currency': (_) => const CurrencyPage(),
        '/admin/notifications': (_) => const NotificationsPage(),
        '/admin/settings': (_) => const SettingsPage(),
        '/admin/map': (_) => const AllLocationsMapView(),
        '/admin/map/users': (_) => const UserSelectionView(),
        '/admin/map/user': (_) => const SingleUserMapView(),
        '/general/places': (_) => const GezilecekYerlerScreen(),
        '/technical-support': (_) => const TechnicalSupportScreen(),
        '/dualar': (_) => const Dualar(),
        '/kuran': (_) => const QuranPage(),
        // Toplu Hatim ('/hatim/create' düzenleme için HatimGroup, '/hatim/group' gid argümanı alır)
        '/hatim': (_) => const HatimHomeScreen(),
        '/hatim/create': (_) => const HatimCreateScreen(),
        '/hatim/group': (_) => const HatimGroupScreen(),
        '/rehber_iletisim': (_) => AcenteOzelligiGate(
              title: (c) => c.l10n.homeContactGuide,
              icon: Icons.support_agent_rounded,
              child: const RehberIletisimPage(),
            ),
        '/bildirimler': (_) => AcenteOzelligiGate(
              title: (c) => c.l10n.homeNotificationsTitle,
              icon: Icons.notifications_none_rounded,
              child: const BildirimlerScreen(),
            ),
        '/telsiz': (_) => AcenteOzelligiGate(
              title: (c) => c.l10n.telsizTitle,
              icon: Icons.settings_input_antenna_rounded,
              child: const TelsizScreen(),
            ),
        '/kible': (_) => const KibleScreen(),
        '/seyahat-rehberi': (_) => const SeyahatRehberiScreen(),
        '/ihtiyac-listesi': (_) => const IhtiyacListesiScreen(),
        '/mikat': (_) => const MikatScreen(),
        '/otel-restoran': (_) => const OtelRestoranScreen(),
        '/harem-kapilari': (_) => const HaremKapilariScreen(),
        '/ulasim': (_) => const UlasimScreen(),
        '/paketler': (_) => const PaketlerScreen(),
        '/yolculuk-bilgilerim': (_) => const YolculukBilgilerimScreen(),
        '/rota-simulasyonu': (_) => const RotaSimulasyonuScreen(),
        '/tavaf-simulasyonu': (_) => const TavafSimulasyonuScreen(),
        // Anlaşmalı dükkan listesi herkese açık; indirim kodu ücretli pakette (ShopDetailScreen).
        '/dukkanlar': (_) => const ShopsScreen(),
        '/admin/dukkanlar': (_) => const ShopsAdminPage(),
        '/admin/shops': (_) => const ShopsAdminPage(),
        '/admin/shops/edit': (_) => const ShopEditScreen(),
        '/esnaf': (_) => const MerchantHomeScreen(),
        '/cuzdan': (_) => PaketGate(
              title: (c) => c.l10n.cuzdanTitle,
              icon: Icons.account_balance_wallet_rounded,
              child: const CuzdanScreen(),
            ),
        '/admin/esnaf-rapor': (_) => const EsnafRaporScreen(),
        // Kontrol Merkezi (süper admin + destek/muhasebe)
        '/cc': (_) => const ControlCenterScreen(),
        '/cc/analytics': (_) => const CcAnalyticsScreen(),
        '/cc/merchant-performance': (_) => const CcMerchantPerformanceScreen(),
        '/cc/loyalty': (_) => const CcLoyaltyScreen(),
        '/cc/coupons': (_) => const CcCouponsScreen(),
        '/cc/finance': (_) => const CcFinanceScreen(),
        '/cc/risk': (_) => const CcRiskScreen(),
        '/cc/messages': (_) => const CcMessagesScreen(),
        '/cc/agency-inbox': (_) => const AgencyInboxScreen(),
        '/cc/audit': (_) => const CcAuditScreen(),
        '/cc/staff': (_) => const CcStaffScreen(),
      };
}

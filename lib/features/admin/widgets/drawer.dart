import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../auth/providers/login_provider.dart';
import '../utils/admin_helpers.dart';

/// Yönetici menüsündeki bir öğe (drawer ve ana panel kartları ortak kullanır).
class AdminMenuItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final String route;
  final Color color;
  const AdminMenuItem(this.title, this.subtitle, this.icon, this.route, this.color);
}

/// Menü öğeleri; başlıklar seçili dile göre üretilir.
/// Anlaşmalı Dükkanlar ve Esnaf Raporları yalnız süper admine görünür.
List<AdminMenuItem> adminMenuItems(BuildContext context) {
  final t = context.l10n;
  final isSuper = context.read<AppStateProvider>().isSuperAdmin;
  final isAgencyAdmin = context.read<AppStateProvider>().currentUser?.isAgencyAdmin ?? false;
  return [
    // Merkez ↔ acente yazışması: yalnız acente admini (merkez /cc/messages kullanır).
    if (isAgencyAdmin)
      AdminMenuItem(t.ccMsgMenu, t.ccMsgMenuSub, Icons.forum_rounded, '/cc/agency-inbox', AppColors.emerald600),
    AdminMenuItem(t.adminMenuLiveLocation, t.adminMenuLiveLocationSub, Icons.map, '/admin/map', const Color(0xFFD32F2F)),
    AdminMenuItem(t.adminMenuCalendar, t.adminMenuCalendarSub, Icons.event_note, '/admin/events', const Color(0xFF2F6655)),
    AdminMenuItem(t.adminMenuPeople, t.adminMenuPeopleSub, Icons.people_alt, '/admin/users', const Color(0xFF229069)),
    AdminMenuItem(t.adminMenuTrips, t.adminMenuTripsSub, Icons.flight_takeoff, '/admin/trips', const Color(0xFF3B6E5C)),
    AdminMenuItem(t.adminMenuHotels, t.adminMenuHotelsSub, Icons.hotel, '/admin/hotels', const Color(0xFF163832)),
    AdminMenuItem(t.adminMenuCurrency, t.adminMenuCurrencySub, Icons.currency_exchange, '/admin/currency', const Color(0xFF8EB69B)),
    AdminMenuItem(t.adminMenuNotify, t.adminMenuNotifySub, Icons.campaign, '/admin/notifications', const Color(0xFFE65100)),
    AdminMenuItem(t.adminMenuAnalytics, t.adminMenuAnalyticsSub, Icons.bar_chart, '/admin/analytics', const Color(0xFF235347)),
    AdminMenuItem(t.adminMenuTracking, t.adminMenuTrackingSub, Icons.location_on, '/admin/settings', const Color(0xFF6D4C41)),
    AdminMenuItem(t.adminMenuRadio, t.adminMenuRadioSub, Icons.settings_input_antenna_rounded, '/telsiz', const Color(0xFF139A64)),
    if (isSuper) ...[
      AdminMenuItem(
          t.adminMenuShops, t.adminMenuShopsSub, Icons.storefront_rounded, '/admin/dukkanlar', AppColors.emerald600),
      AdminMenuItem(t.adminEsnafMenu, t.adminEsnafMenuSub, Icons.point_of_sale_rounded, '/admin/esnaf-rapor',
          AppColors.emerald700),
    ],
  ];
}

/// Yönetici paneli drawer'ı.
Widget buildAdminDrawer(BuildContext context) {
  final user = context.watch<AppStateProvider>().currentUser;
  final t = context.l10n;
  return Drawer(
    child: Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).padding.top + 24, 20, 20),
          decoration: const BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.circular(24)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 28,
                backgroundColor: Colors.white,
                child: Icon(Icons.admin_panel_settings, color: AppColors.primary, size: 32),
              ),
              const SizedBox(height: 12),
              Text(
                user?.userName.isNotEmpty == true ? user!.userName : t.adminPanelTitle,
                style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                user == null ? t.adminPanelTitle : userTypeLabel(context, user.userType),
                style: const TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 8),
            children: [
              DrawerMenuCard(
                title: t.adminMenuHome,
                subtitle: t.adminMenuHomeSub,
                icon: Icons.dashboard,
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).popUntil((r) => r.settings.name == '/admin' || r.isFirst);
                },
              ),
              for (final m in adminMenuItems(context))
                DrawerMenuCard(
                  title: m.title,
                  subtitle: m.subtitle,
                  icon: m.icon,
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed(m.route);
                  },
                ),
            ],
          ),
        ),
        const Divider(height: 1),
        SafeArea(
          top: false,
          child: ListTile(
            leading: const Icon(Icons.logout, color: AppColors.error),
            title: Text(t.adminLogout, style: const TextStyle(color: AppColors.error)),
            onTap: () {
              Navigator.of(context).pop();
              context.read<LoginProvider>().logout(context);
            },
          ),
        ),
      ],
    ),
  );
}

class DrawerMenuCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const DrawerMenuCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(color: AppColors.primaryLight, borderRadius: BorderRadius.circular(10)),
        child: Icon(icon, color: AppColors.primary),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text(subtitle, style: const TextStyle(fontSize: 12)),
      onTap: onTap,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../common/services/background_location_service.dart';
import '../core/providers/app_state_provider.dart';
import '../features/admin/screens/admin_dashboard_screen.dart';
import '../features/admin/screens/super_admin_dashboard.dart';
import '../features/auth/screens/login.dart';
import '../features/control_center/home/activity_ping.dart';
import '../features/control_center/home/control_center_screen.dart';
import '../features/esnaf/screens/merchant_home_screen.dart';
import '../features/main/screens/main_screen.dart';
import '../features/splash/providers/splash_provider.dart';
import '../features/splash/screens/app_gate_screens.dart';
import '../features/splash/screens/splash_screen.dart';

/// Kök ekran ('/'). Hangi ekranın görüneceğine durumdan karar verir:
/// splash yükleniyor → SplashScreen; kullanıcı yok → LoginScreen;
/// zorunlu güncelleme/bakım → AppGate ekranları; esnaf → MerchantHomeScreen; süper admin, destek, muhasebe → ControlCenterScreen;
/// yönetici → SuperAdminDashboard (acente listesi, "Yönet" ile acente seçer);
/// acente admini → AdminDashboardScreen (kendi acentesi); misafir → MainScreen.
///
/// Giriş/çıkış sonrası navigasyon gerekmez: AppStateProvider.setUser / clear()
/// çağrıldığında bu widget kendini yeniden kurar. Çıkışta üstte açık sayfalar
/// varsa önce `Navigator.of(context).popUntil((r) => r.isFirst)` çağrılmalı.
class AppWrapper extends StatelessWidget {
  const AppWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<SplashProvider, AppStateProvider>(
      builder: (context, splash, app, _) {
        if (splash.isLoading) return const SplashScreen();
        final user = app.currentUser;
        // Konum paylaşımı + duyuru dinleyicisi: oturum açılınca başlar, kapanınca durur.
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!context.mounted) return;
          // Esnaf hesapları konum paylaşmaz.
          if (user == null || user.isMerchant) {
            BackgroundLocationService.stop();
          } else {
            // Personel/süper admin konum paylaşmaz (canShare false); yalnız duyuru dinleyicisi kurulur.
            BackgroundLocationService.ensureStarted(context);
            // DAU/MAU damgası (6 saatte bir, arka planda).
            ActivityPing.maybePing(user);
          }
        });
        // Zorunlu güncelleme: herkes için. Bakım: süper admin dışındaki herkes için;
        // süper admin girebilsin diye bakım ekranındaki "Yönetici girişi" giriş ekranını açar.
        // Giriş yapmış süper admin hiçbir kapıya takılmaz (ayarı düzeltebilsin).
        final gated = !(user?.isSuperAdmin ?? false);
        if (gated && (splash.appSettings.updateRequired || splash.appSettings.maintenanceMode)) {
          if (user == null && splash.adminLoginRequested) return const LoginScreen();
          return splash.appSettings.updateRequired ? const UpdateRequiredScreen() : const MaintenanceScreen();
        }
        if (user == null) return const LoginScreen();
        if (user.isMerchant) return const MerchantHomeScreen();
        if (user.usesControlCenter) return const ControlCenterScreen();
        if (user.isGlobalAdmin) return const SuperAdminDashboard();
        if (user.isAgencyAdmin) return const AdminDashboardScreen();
        return const MainScreen();
      },
    );
  }
}

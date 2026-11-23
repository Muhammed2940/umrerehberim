import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../common/widgets/acente_ozelligi_card.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../cuzdan/data/wallet_watcher.dart';
import '../../home/screens/dualar.dart';
import '../../home/screens/home_screen.dart';
import '../../home/screens/info_screen.dart';
import '../../home/screens/profil.dart';
import '../../home/screens/takvim_screen.dart';

/// Misafir kullanıcının alt menülü ana ekranı.
/// Not: Sekme ekranları kendi Scaffold'larını kullanır; geri tuşu göstermemeleri için
/// AppBar'da `automaticallyImplyLeading: false` önerilir.
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    // Esnaf işlemi gelince yerel bildirim. Bireysel kullanıcı esnaf indirimi kullanmaz.
    final user = context.read<AppStateProvider>().currentUser;
    if (user == null || !user.isBireysel) WalletWatcher.instance.start();
  }

  static final _screens = <Widget>[
    const HomeScreen(),
    const Dualar(),
    // Etkinlik takvimi acente özelliğidir; bireysel kullanıcı kibar kart görür.
    AcenteOzelligiGate(
      title: (c) => c.l10n.homeProgramCalendar,
      icon: Icons.calendar_month_rounded,
      showBack: false,
      child: const TakvimScreen(),
    ),
    const GeneralInfoScreen(),
    const ProfilScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _currentIndex == 0,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) setState(() => _currentIndex = 0);
      },
      child: Scaffold(
        body: IndexedStack(index: _currentIndex, children: _screens),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Color(0x1A000000), blurRadius: 10, offset: Offset(0, -2))],
          ),
          child: SafeArea(
            child: SalomonBottomBar(
              currentIndex: _currentIndex,
              onTap: (i) => setState(() => _currentIndex = i),
              selectedItemColor: AppColors.primary,
              unselectedItemColor: AppColors.textMuted,
              items: [
                SalomonBottomBarItem(icon: const Icon(Icons.home_rounded), title: Text(context.l10n.coreNavHome)),
                SalomonBottomBarItem(icon: const Icon(Icons.menu_book_rounded), title: Text(context.l10n.coreNavPrayers)),
                SalomonBottomBarItem(
                    icon: const Icon(Icons.calendar_month_rounded), title: Text(context.l10n.coreNavCalendar)),
                SalomonBottomBarItem(icon: const Icon(Icons.info_rounded), title: Text(context.l10n.coreNavInfo)),
                SalomonBottomBarItem(icon: const Icon(Icons.person_rounded), title: Text(context.l10n.coreNavProfile)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

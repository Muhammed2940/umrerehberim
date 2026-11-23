import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:provider/provider.dart';

import '../../core/providers/app_state_provider.dart';
import '../../core/providers/locale_provider.dart';
import '../../core/theme/app_theme.dart';
import '../../features/info_screen/widgets/info_widgets.dart';
import 'empty_state_widget.dart';

/// Bireysel kullanıcıya acente özelliği yerine gösterilen kibar kart
/// (tool/BIREYSEL_SEMA.md: "Bu özellik anlaşmalı acentelerle seyahat eden hacılara sunulur").
/// Fiyat veya bağlantı içermez. Görünüm yeni değil: bilgi ekranlarının [InfoCardBox] kabı
/// ve [InfoIconBadge] ikonu, yazılar [ExpandableInfoCard] başlık/alt başlık stilinde.
class AcenteOzelligiCard extends StatelessWidget {
  final IconData icon;

  const AcenteOzelligiCard({super.key, this.icon = FlutterIslamicIcons.solidKaaba});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return InfoCardBox(
      child: Row(
        children: [
          InfoIconBadge(icon),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l.bireyselAgencyOnlyTitle,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.text),
                ),
                const SizedBox(height: 2),
                Text(
                  l.bireyselAgencyOnlyBody,
                  style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Acente özelliği olan bir ekranı sarar: oturumdaki kullanıcı bireyselse ekran hiç
/// kurulmaz (Firestore/RTDB okuması yapılmaz), yerine [AcenteOzelligiScreen] gösterilir.
class AcenteOzelligiGate extends StatelessWidget {
  final Widget child;

  /// Başlık seçili dile göre çözülür.
  final String Function(BuildContext context) title;
  final IconData icon;
  final bool showBack;

  const AcenteOzelligiGate({
    super.key,
    required this.child,
    required this.title,
    this.icon = FlutterIslamicIcons.solidKaaba,
    this.showBack = true,
  });

  @override
  Widget build(BuildContext context) {
    final bireysel = context.select<AppStateProvider, bool>((a) => a.currentUser?.isBireysel ?? false);
    if (!bireysel) return child;
    return AcenteOzelligiScreen(title: title(context), icon: icon, showBack: showBack);
  }
}

/// Acente özelliği ekranının bireysel kullanıcı için yerine geçen sayfa: ekranın kendi
/// başlıklı AppBar'ı + uygulamanın boş durum görünümü ([EmptyStateWidget]).
class AcenteOzelligiScreen extends StatelessWidget {
  final String title;
  final IconData icon;

  /// Alt menü sekmesi gibi geri düğmesi olmaması gereken yerlerde false.
  final bool showBack;

  const AcenteOzelligiScreen({
    super.key,
    required this.title,
    this.icon = FlutterIslamicIcons.solidKaaba,
    this.showBack = true,
  });

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: showBack, title: Text(title)),
      body: EmptyStateWidget(icon: icon, message: l.bireyselAgencyOnlyTitle, subtitle: l.bireyselAgencyOnlyBody),
    );
  }
}

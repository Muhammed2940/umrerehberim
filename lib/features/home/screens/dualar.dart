import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_theme.dart';
import '../../dualar/screens/kayitli_zikirlerim.dart';
import '../../dualar/screens/savt_dualari_page.dart';
import '../../dualar/screens/say_dualari_page.dart';
import '../../dualar/screens/zikirmatik.dart';
import '../../dualar/widgets/content_download_dialog.dart';

/// Dualar sekmesi: Tavaf / Sa'y duaları, Zikirmatik, Kayıtlı Zikirler, Kur'an-ı Kerim.
class Dualar extends StatefulWidget {
  const Dualar({super.key});

  @override
  State<Dualar> createState() => _DualarState();
}

class _DualarState extends State<Dualar> {
  /// Ayetler (metin, kaynak) seçili dilde.
  List<(String, String)> _quotes(BuildContext context) {
    final l = context.l10n;
    return [
      (l.homeDuaQuoteNear, l.homeSourceBaqarah186Short),
      (l.homeDuaQuoteCallUpon, l.homeSourceGhafir60Short),
      (l.homeDuaQuoteHearts, l.homeSourceRad28Short),
      (l.homeDuaQuoteRemember, l.homeSourceBaqarah152Short),
      (l.homeQuoteCompleteHajj, l.homeSourceBaqarah196Short),
    ];
  }

  late final int _selectedQuote;

  @override
  void initState() {
    super.initState();
    _selectedQuote = Random().nextInt(5);
  }

  void _push(Widget page) => Navigator.push(context, MaterialPageRoute(builder: (_) => page));

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(l.homeDuasTitle),
        actions: [
          IconButton(
            tooltip: l.homeDownloadContent,
            icon: const Icon(Icons.cloud_download_outlined),
            onPressed: () => ContentDownloadDialog.show(context),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildModernCard(
                icon: FlutterIslamicIcons.solidQuran2,
                title: l.homeQuickQuran,
                subtitle: l.homeDuasQuranSubtitle,
                colors: const [AppColors.emerald900, AppColors.emerald700],
                onTap: () => Navigator.pushNamed(context, '/kuran'),
              ),
              const SizedBox(height: 12),
              _buildQuote(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 4, bottom: 10),
                child: Text(l.homeDuasUmrahSection, style: AppTextStyles.sectionTitle),
              ),
              _buildModernCard(
                icon: FlutterIslamicIcons.solidKaaba,
                title: l.homeDuasTawaf,
                subtitle: l.homeTapToRead,
                colors: const [AppColors.primary, AppColors.primaryDark],
                onTap: () => _push(const SavtDualariPage()),
              ),
              _buildModernCard(
                icon: FlutterIslamicIcons.solidHadji,
                title: l.homeDuasSai,
                subtitle: _splitIntoTwoLines(l.homeDuasSaiSubtitle),
                colors: const [AppColors.emerald700, Color(0xFF2F6655)],
                onTap: () => _push(const SayDualariPage()),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 4, bottom: 10),
                child: Text(l.homeDhikrSection, style: AppTextStyles.sectionTitle),
              ),
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: _buildTile(
                        icon: FlutterIslamicIcons.solidTasbih2,
                        title: l.homeTasbihCounter,
                        subtitle: l.homeTasbihSubtitle,
                        onTap: () => _push(const ZikirCek()),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _buildTile(
                        icon: Icons.bookmarks_rounded,
                        title: l.homeSavedDhikrs,
                        subtitle: l.homeSavedDhikrsSubtitle,
                        onTap: () => _push(const Zikirlerim()),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Uzun metinleri iki satıra böler (orijinaldeki gibi).
  String _splitIntoTwoLines(String text) {
    final words = text.split(' ');
    if (words.length < 4) return text;
    final mid = (words.length / 2).ceil();
    return '${words.sublist(0, mid).join(' ')}\n${words.sublist(mid).join(' ')}';
  }

  Widget _buildQuote() {
    final quote = _quotes(context)[_selectedQuote];
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.accent.withValues(alpha: 0.35)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.format_quote_rounded, color: AppColors.accent, size: 30),
          const SizedBox(height: 4),
          Text(
            quote.$1,
            style: AppTextStyles.body.copyWith(fontSize: 15, height: 1.5, fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 8),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(quote.$2, style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }

  Widget _buildModernCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required List<Color> colors,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: colors, begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(color: colors.first.withValues(alpha: 0.35), blurRadius: 14, offset: const Offset(0, 6))],
          ),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.18), borderRadius: BorderRadius.circular(16)),
                child: Icon(icon, color: Colors.white, size: 34),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: const TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    Text(subtitle, style: TextStyle(color: Colors.white.withValues(alpha: 0.85), fontSize: 13)),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white70, size: 18),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      elevation: 2,
      shadowColor: Colors.black12,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(color: AppColors.primaryLight, borderRadius: BorderRadius.circular(14)),
                child: Icon(icon, color: AppColors.primary, size: 30),
              ),
              const SizedBox(height: 14),
              Text(title, style: AppTextStyles.cardTitle),
              const SizedBox(height: 4),
              Text(subtitle, style: AppTextStyles.muted.copyWith(fontSize: 12), maxLines: 2),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../providers/kible_provider.dart';
import '../widgets/kalibrasyon_sheet.dart';
import '../widgets/kible_cards.dart';
import '../widgets/kible_compass.dart';
import '../widgets/minare_painter.dart';
import 'kible_harita_screen.dart';

/// Kıble Yönü ekranı.
class KibleScreen extends StatelessWidget {
  const KibleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => KibleProvider(),
      child: const _KibleView(),
    );
  }
}

class _KibleView extends StatefulWidget {
  const _KibleView();

  @override
  State<_KibleView> createState() => _KibleViewState();
}

class _KibleViewState extends State<_KibleView> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  // Ayarlardan dönünce konumu yeniden dene.
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      final p = context.read<KibleProvider>();
      if (p.durum != KibleKonumDurumu.hazir) p.refreshLocation();
    }
  }

  void _yardim() {
    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(ctx.l10n.kibleHelp),
        content: Text(ctx.l10n.kibleHelpText),
        actions: [TextButton(onPressed: () => Navigator.pop(ctx), child: Text(ctx.l10n.commonOk))],
      ),
    );
  }

  void _haritayiAc(KibleProvider p) {
    if (p.lat == null) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(context.l10n.kibleLocationNotYet)));
      return;
    }
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (_) => KibleHaritaScreen(
        konum: LatLng(p.lat!, p.lng!),
        uzaklikKm: p.uzaklikKm!,
        kibleAcisi: p.kibleAcisi!,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final p = context.watch<KibleProvider>();
    final l = context.l10n;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        surfaceTintColor: Colors.transparent,
        foregroundColor: AppColors.primaryDark,
        elevation: 0,
        shape: const RoundedRectangleBorder(),
        centerTitle: true,
        toolbarHeight: 64,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.maybePop(context),
        ),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              l.kibleTitle,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: AppColors.primaryDark),
            ),
            const SizedBox(height: 2),
            Text(
              l.kibleSubtitle,
              style: const TextStyle(fontSize: 12, color: AppColors.textMuted, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_horiz),
            onSelected: (v) => v == 'kalibre' ? showKalibrasyonSheet(context) : _yardim(),
            itemBuilder: (_) => [
              PopupMenuItem(
                value: 'kalibre',
                child: ListTile(leading: const Icon(Icons.explore_outlined), title: Text(l.kibleCalibrate)),
              ),
              PopupMenuItem(
                value: 'yardim',
                child: ListTile(leading: const Icon(Icons.help_outline), title: Text(l.kibleHelp)),
              ),
            ],
          ),
        ],
      ),
      body: Stack(
        children: [
          // Minare silueti simetrik; yön çevirmesi gerekmez.
          const Positioned(left: 0, right: 0, bottom: 0, height: 260, child: MinareArkaPlan()),
          SafeArea(
            top: false,
            child: LayoutBuilder(
              builder: (context, c) => SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 20),
                child: _icerik(p, math.min(c.maxWidth - 56, 320)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _icerik(KibleProvider p, double dialSize) {
    final izinSorunu = p.durum == KibleKonumDurumu.izinYok ||
        p.durum == KibleKonumDurumu.izinKaliciYok ||
        p.durum == KibleKonumDurumu.servisKapali ||
        p.durum == KibleKonumDurumu.hata;
    final l = context.l10n;

    return Column(
      children: [
        KonumHapi(label: p.konumEtiketi, loading: p.konumYenileniyor, onRefresh: p.refreshLocation),
        const SizedBox(height: 18),
        if (izinSorunu)
          _IzinKarti(provider: p)
        else ...[
          _pusulaAlani(p, dialSize),
          const SizedBox(height: 18),
          if (p.kibleAcisi != null) ...[
            KibleBilgiKarti(qibla: p.kibleAcisi!),
            const SizedBox(height: 12),
            KibleUzaklikKarti(km: p.uzaklikKm!),
            const SizedBox(height: 12),
          ],
          if (p.pusulaVar != false) ...[
            KibleIpucuKarti(kalibrasyon: p.kalibrasyonGerekli),
            const SizedBox(height: 14),
          ],
        ],
        Row(
          children: [
            Expanded(
              child: KibleAksiyonButonu(
                icon: Icons.explore_outlined,
                label: l.kibleCalibrate,
                onTap: () => showKalibrasyonSheet(context),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: KibleAksiyonButonu(
                icon: Icons.map_outlined,
                label: l.kibleShowMyLocation,
                onTap: () => _haritayiAc(p),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: KibleAksiyonButonu(
                icon: Icons.view_in_ar_outlined,
                label: l.kibleArMode,
                badge: l.kibleSoon,
                onTap: () => ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(content: Text(l.kibleArSoon))),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _pusulaAlani(KibleProvider p, double size) {
    final l = context.l10n;
    // Sensör yok: yalnız açı ve mesaj.
    if (p.pusulaVar == false) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: kibleCardDecoration(),
        child: Column(
          children: [
            const Icon(Icons.explore_off_outlined, size: 40, color: AppColors.textMuted),
            const SizedBox(height: 10),
            Text(
              p.kibleAcisi == null ? l.kibleQiblaUnknown : l.kibleQiblaDegrees(p.kibleAcisi!.round()),
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w800, color: AppColors.primaryDark),
            ),
            const SizedBox(height: 2),
            Text(l.kibleTrueNorthNote, style: const TextStyle(color: AppColors.textMuted, fontSize: 12)),
            const SizedBox(height: 12),
            Text(
              l.kibleNoCompass,
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.text, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      );
    }

    final heading = p.heading;
    final fark = p.fark;
    String durumMetni;
    if (p.kibleAcisi == null) {
      durumMetni = l.kibleGettingLocation;
    } else if (heading == null) {
      durumMetni = l.kiblePreparingCompass;
    } else if (p.kibleyeDonuk) {
      durumMetni = l.kibleFacingQibla;
    } else {
      // Fiziksel sağ/sol: arayüz yönünden bağımsız.
      final d = fark!.abs().round();
      durumMetni = fark > 0 ? l.kibleTurnRight(d) : l.kibleTurnLeft(d);
    }

    return Column(
      children: [
        // Pusula çizimi yöne bağlı: Arapçada ayna çevrilmesin.
        Directionality(
          textDirection: TextDirection.ltr,
          child: KibleCompass(
          size: size,
          heading: heading ?? 0,
            qibla: p.kibleAcisi,
            aligned: p.kibleyeDonuk,
          ),
        ),
        const SizedBox(height: 14),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          child: p.kibleyeDonuk
              ? Container(
                  key: const ValueKey('ok'),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: AppColors.success.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: AppColors.success),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.check_circle, color: AppColors.success, size: 20),
                      const SizedBox(width: 6),
                      Text(durumMetni,
                          style: const TextStyle(
                              color: AppColors.success, fontWeight: FontWeight.w800, fontSize: 15)),
                    ],
                  ),
                )
              : Padding(
                  key: ValueKey(durumMetni),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(durumMetni,
                      style: const TextStyle(color: AppColors.textMuted, fontWeight: FontWeight.w600, fontSize: 14)),
                ),
        ),
      ],
    );
  }
}

class _IzinKarti extends StatelessWidget {
  const _IzinKarti({required this.provider});
  final KibleProvider provider;

  @override
  Widget build(BuildContext context) {
    final p = provider;
    final l = context.l10n;
    final (baslik, aciklama, ayarlar) = switch (p.durum) {
      KibleKonumDurumu.servisKapali => (l.kibleServiceOffTitle, l.kibleServiceOffText, true),
      KibleKonumDurumu.izinKaliciYok => (l.kiblePermissionTitle, l.kiblePermissionDeniedForeverText, true),
      KibleKonumDurumu.izinYok => (l.kiblePermissionTitle, l.kiblePermissionDeniedText, true),
      _ => (l.kibleLocationFailedTitle, l.kibleLocationFailedText, false),
    };

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(20),
      decoration: kibleCardDecoration(),
      child: Column(
        children: [
          const Icon(Icons.location_off_outlined, size: 44, color: AppColors.primary),
          const SizedBox(height: 10),
          Text(baslik,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: AppColors.primaryDark)),
          const SizedBox(height: 8),
          Text(aciklama, textAlign: TextAlign.center, style: const TextStyle(color: AppColors.text, height: 1.4)),
          const SizedBox(height: 16),
          Row(
            children: [
              if (ayarlar) ...[
                Expanded(
                  child: ElevatedButton(
                    onPressed: p.openSettings,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary, foregroundColor: Colors.white),
                    child: Text(l.kibleOpenSettings),
                  ),
                ),
                const SizedBox(width: 10),
              ],
              Expanded(
                child: OutlinedButton(onPressed: p.refreshLocation, child: Text(l.kibleTryAgain)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

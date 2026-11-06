import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../common/widgets/osm_map.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../data/gezi_ui_texts.dart';
import '../data/gezilecek_yerler_data.dart';
import '../widgets/gezi_sesli_rehber.dart';
import '../widgets/gezi_widgets.dart';
import '../widgets/info_widgets.dart';

/// Bir yerin ayrıntılı sayfası: kapak, sesli rehber, açılır bölümler,
/// harita kartı ve kaynaklar. Yer [yerId] ile seçilir.
class GeziDetayScreen extends StatefulWidget {
  const GeziDetayScreen({super.key, required this.yerId});

  final String yerId;

  @override
  State<GeziDetayScreen> createState() => _GeziDetayScreenState();
}

class _GeziDetayScreenState extends State<GeziDetayScreen> {
  late final GeziYeri? _yer = geziYeriById(widget.yerId);
  SesliRehberController? _rehber;
  String? _rehberDili;
  LatLng? _konum;

  @override
  void initState() {
    super.initState();
    GeziKonum.al().then((k) {
      if (mounted && k != null) setState(() => _konum = k);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final yer = _yer;
    if (yer == null) return;
    final kod = Localizations.localeOf(context).languageCode;
    if (_rehberDili == kod) return;
    _rehber?.dispose();
    _rehberDili = kod;
    _rehber = SesliRehberController(metin: yer.anlatim.forCode(kod), dilKodu: ttsDilKodu(kod))..init();
  }

  @override
  void dispose() {
    // Sayfadan çıkınca anlatım durur.
    _rehber?.dispose();
    super.dispose();
  }

  Future<void> _haritadaAc(LatLng p) async {
    final uri = Uri.parse('https://www.google.com/maps/search/?api=1&query=${p.latitude},${p.longitude}');
    final ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!ok && mounted) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(context.l10n.infoMapCouldNotOpen)));
    }
  }

  @override
  Widget build(BuildContext context) {
    final yer = _yer;
    if (yer == null) {
      return Scaffold(appBar: AppBar(), body: Center(child: Text(GeziMetin.yerYok.of(context))));
    }
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _kapak(yer),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
            sliver: SliverList.list(
              children: [
                _cipler(yer),
                const SizedBox(height: 14),
                if (_rehber != null) SesliRehberKart(controller: _rehber!),
                ExpandableInfoCard(
                  icon: Icons.info_outline_rounded,
                  title: GeziMetin.genel.of(context),
                  initiallyExpanded: true,
                  children: _paragraflar(yer.genel.of(context)),
                ),
                ExpandableInfoCard(
                  icon: Icons.history_edu_rounded,
                  title: GeziMetin.tarihce.of(context),
                  children: _paragraflar(yer.tarihce.of(context)),
                ),
                if (yer.olaylar.isNotEmpty)
                  ExpandableInfoCard(
                    icon: Icons.timeline_rounded,
                    title: GeziMetin.olaylar.of(context),
                    children: [_ZamanCizelgesi(olaylar: yer.olaylar)],
                  ),
                ExpandableInfoCard(
                  icon: Icons.auto_awesome_rounded,
                  title: GeziMetin.fazilet.of(context),
                  children: [
                    ..._paragraflar(yer.fazilet.of(context)),
                    for (final a in yer.alintilar) _AlintiKart(alinti: a),
                  ],
                ),
                if (yer.adab.isNotEmpty)
                  ExpandableInfoCard(
                    icon: Icons.volunteer_activism_rounded,
                    title: GeziMetin.adab.of(context),
                    children: [for (final a in yer.adab) BulletText(a.of(context))],
                  ),
                if (yer.ziyaretNotu != null)
                  ExpandableInfoCard(
                    icon: Icons.gpp_maybe_rounded,
                    title: GeziMetin.ziyaretNotu.of(context),
                    subtitle: GeziMetin.ziyaretNotuAlt.of(context),
                    initiallyExpanded: true,
                    children: [
                      ..._paragraflar(yer.ziyaretNotu!.of(context)),
                      InfoNote(context.l10n.infoCheckBeforeTravel, warning: true),
                    ],
                  ),
                // Kaynaklar veri dosyasında tutulur, kullanıcıya gösterilmez.
                _haritaKarti(yer),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ----------------------------------------------------------------- kapak

  Widget _kapak(GeziYeri yer) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 290,
      foregroundColor: Colors.white,
      backgroundColor: AppColors.emerald800,
      title: Text(yer.ad.of(context), maxLines: 1, overflow: TextOverflow.ellipsis),
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        background: Container(
          decoration: BoxDecoration(gradient: geziGradyan(yer.bolge)),
          child: Stack(
            children: [
              // Arka planda büyük, soluk ikon.
              PositionedDirectional(
                end: -30,
                top: 30,
                child: Icon(geziIkon(yer.tur), size: 220, color: Colors.white.withValues(alpha: 0.07)),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 64, 20, 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Hero(
                        tag: 'gezi_${yer.id}',
                        child: Container(
                          width: 72,
                          height: 72,
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.14),
                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(color: Colors.white24),
                          ),
                          child: Icon(geziIkon(yer.tur), color: Colors.white, size: 40),
                        ),
                      ),
                      const SizedBox(height: 14),
                      Text(
                        yer.ad.of(context),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          height: 1.2,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          yer.arapcaAd.tr,
                          style: const TextStyle(
                            fontFamily: 'Amiri',
                            color: AppColors.mint,
                            fontSize: 20,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ----------------------------------------------------------------- çipler

  Widget _cipler(GeziYeri yer) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        InfoChip(yer.sehir.of(context), icon: Icons.location_city_rounded, strong: true),
        if (yer.uygunSaat != null) InfoChip(yer.uygunSaat!.of(context), icon: Icons.schedule_rounded),
        if (yer.ziyaretSuresi != null) InfoChip(yer.ziyaretSuresi!.of(context), icon: Icons.timelapse_rounded),
        if (yer.uzaklik != null) InfoChip(yer.uzaklik!.of(context), icon: Icons.route_rounded),
        if (_konum != null)
          InfoChip(
            fill(GeziMetin.sizeUzaklik.of(context), {'d': formatDistance(distanceMeters(_konum!, yer.konum))}),
            icon: Icons.near_me_rounded,
          ),
      ],
    );
  }

  // ----------------------------------------------------------------- metin

  List<Widget> _paragraflar(String s) => [
        for (final p in s.split(RegExp(r'\n\s*\n')))
          if (p.trim().isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(p.trim(), style: const TextStyle(fontSize: 14.5, height: 1.55, color: AppColors.text)),
            ),
      ];

  // ----------------------------------------------------------------- harita

  Widget _haritaKarti(GeziYeri yer) {
    return InfoCardBox(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(4, 2, 4, 10),
            child: Row(
              children: [
                const InfoIconBadge(Icons.map_rounded, size: 36),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    GeziMetin.konum.of(context),
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.text),
                  ),
                ),
                if (_konum != null)
                  Text(
                    formatDistance(distanceMeters(_konum!, yer.konum)),
                    style: const TextStyle(fontWeight: FontWeight.w700, color: AppColors.primary),
                  ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: SizedBox(
              height: 190,
              child: FlutterMap(
                options: MapOptions(
                  initialCenter: yer.konum,
                  initialZoom: yer.tur == GeziTur.tarihiSehir || yer.tur == GeziTur.ova ? 14 : 16,
                  interactionOptions: const InteractionOptions(flags: InteractiveFlag.all & ~InteractiveFlag.rotate),
                ),
                children: [
                  OsmMap.tileLayer(),
                  MarkerLayer(
                    markers: [
                      placeMarker(
                        point: yer.konum,
                        label: yer.ad.of(context),
                        icon: geziIkon(yer.tur),
                        selected: true,
                      ),
                    ],
                  ),
                  OsmMap.attribution(),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          PlaceActions(point: yer.konum, onShowOnMap: () => _haritadaAc(yer.konum)),
        ],
      ),
    );
  }

}

/// Önemli olaylar: dikey zaman çizelgesi.
class _ZamanCizelgesi extends StatelessWidget {
  const _ZamanCizelgesi({required this.olaylar});

  final List<GeziOlay> olaylar;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < olaylar.length; i++)
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: 22,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 3),
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: AppColors.surface,
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.primary, width: 3),
                        ),
                      ),
                      if (i < olaylar.length - 1)
                        Expanded(child: Container(width: 2, color: AppColors.primaryLight)),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          olaylar[i].tarih.of(context),
                          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w800, color: AppColors.primary),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          olaylar[i].metin.of(context),
                          style: const TextStyle(fontSize: 14, height: 1.5, color: AppColors.text),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

/// Ayet / hadis kartı: Arapça asıl, meal ve kaynak.
class _AlintiKart extends StatelessWidget {
  const _AlintiKart({required this.alinti});

  final GeziAlinti alinti;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 4, bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.paper,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.paperGold.withValues(alpha: 0.45)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              alinti.arapca,
              textAlign: TextAlign.center,
              style: const TextStyle(fontFamily: 'AmiriQuran', fontSize: 21, height: 2, color: AppColors.paperInk),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            alinti.meal.of(context),
            style: const TextStyle(fontSize: 14, height: 1.5, fontStyle: FontStyle.italic, color: AppColors.text),
          ),
          const SizedBox(height: 6),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              alinti.kaynak.of(context),
              style: const TextStyle(fontSize: 12.5, fontWeight: FontWeight.w700, color: AppColors.paperGold),
            ),
          ),
        ],
      ),
    );
  }
}

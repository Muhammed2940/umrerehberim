import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../../common/widgets/osm_map.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../data/gezi_ui_texts.dart';
import '../data/gezilecek_yerler_data.dart';
import '../widgets/gezi_widgets.dart';
import '../widgets/info_widgets.dart';
import 'gezi_detay_screen.dart';

/// Gezilecek Yerler: Mekke | Medine | Diğer Yerler sekmeleri. Her sekmede
/// üstte bölge haritası (tüm yerler işaretli), altta kart listesi.
class GezilecekYerlerScreen extends StatefulWidget {
  const GezilecekYerlerScreen({super.key});

  @override
  State<GezilecekYerlerScreen> createState() => _GezilecekYerlerScreenState();
}

class _GezilecekYerlerScreenState extends State<GezilecekYerlerScreen> {
  LatLng? _konum;

  @override
  void initState() {
    super.initState();
    GeziKonum.al().then((k) {
      if (mounted && k != null) setState(() => _konum = k);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.l10n.infoCardPlaces),
          // Koyu başlık çubuğunda okunur "hap" sekmeler: seçili beyaz zemin + koyu yazı,
          // diğerleri beyaz yazı; yanlarında o bölgedeki yer sayısı.
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(58),
            child: Container(
              margin: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.14),
                borderRadius: BorderRadius.circular(16),
              ),
              child: TabBar(
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                labelColor: AppColors.emerald800,
                unselectedLabelColor: Colors.white,
                labelStyle: const TextStyle(fontSize: 14.5, fontWeight: FontWeight.w800),
                unselectedLabelStyle: const TextStyle(fontSize: 14.5, fontWeight: FontWeight.w600),
                labelPadding: EdgeInsets.zero,
                tabs: [
                  for (final (b, ad) in [
                    (GeziBolge.mekke, GeziMetin.tabMekke),
                    (GeziBolge.medine, GeziMetin.tabMedine),
                    (GeziBolge.diger, GeziMetin.tabDiger),
                  ])
                    Tab(
                      height: 40,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text('${ad.of(context)} (${geziYerleriOf(b).length})'),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          // Harita kaydırması sekme değiştirmesin.
          physics: const NeverScrollableScrollPhysics(),
          children: [
            for (final b in GeziBolge.values) _BolgeSekmesi(bolge: b, konum: _konum),
          ],
        ),
      ),
    );
  }
}

class _BolgeSekmesi extends StatefulWidget {
  const _BolgeSekmesi({required this.bolge, required this.konum});

  final GeziBolge bolge;
  final LatLng? konum;

  @override
  State<_BolgeSekmesi> createState() => _BolgeSekmesiState();
}

class _BolgeSekmesiState extends State<_BolgeSekmesi> with AutomaticKeepAliveClientMixin {
  final _map = MapController();
  late final List<GeziYeri> _yerler = geziYerleriOf(widget.bolge);

  @override
  bool get wantKeepAlive => true;

  CameraFit get _hepsi => CameraFit.coordinates(
        coordinates: [for (final y in _yerler) y.konum],
        padding: const EdgeInsets.fromLTRB(40, 50, 40, 40),
        maxZoom: 15,
      );

  void _ac(GeziYeri y) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => GeziDetayScreen(yerId: y.id)));
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (_yerler.isEmpty) return Center(child: Text(GeziMetin.yerYok.of(context)));
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: SizedBox(
            height: 240,
            child: Stack(
              children: [
                FlutterMap(
                  mapController: _map,
                  options: MapOptions(
                    initialCameraFit: _hepsi,
                    interactionOptions: const InteractionOptions(flags: InteractiveFlag.all & ~InteractiveFlag.rotate),
                  ),
                  children: [
                    OsmMap.tileLayer(),
                    MarkerLayer(
                      markers: [
                        for (final y in _yerler)
                          placeMarker(
                            point: y.konum,
                            label: y.ad.of(context),
                            icon: geziIkon(y.tur),
                            main: y.tur == GeziTur.kabe,
                            onTap: () => _ac(y),
                          ),
                      ],
                    ),
                    OsmMap.attribution(),
                  ],
                ),
                PositionedDirectional(
                  top: 8,
                  end: 8,
                  child: Material(
                    color: AppColors.surface,
                    shape: const CircleBorder(),
                    elevation: 2,
                    child: IconButton(
                      tooltip: context.l10n.infoShowAll,
                      onPressed: () => _map.fitCamera(_hepsi),
                      icon: const Icon(Icons.zoom_out_map_rounded, color: AppColors.primary),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 4),
        InfoSectionLabel(
          fill(GeziMetin.yerSayisi.of(context), {'n': _yerler.length}),
          icon: Icons.place_rounded,
        ),
        for (final y in _yerler) _GeziKart(yer: y, konum: widget.konum, onTap: () => _ac(y)),
      ],
    );
  }
}

class _GeziKart extends StatelessWidget {
  const _GeziKart({required this.yer, required this.konum, required this.onTap});

  final GeziYeri yer;
  final LatLng? konum;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        boxShadow: kInfoCardShadow,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(tag: 'gezi_${yer.id}', child: GeziIkonRozet(yer: yer)),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        yer.ad.of(context),
                        style: const TextStyle(fontSize: 16.5, fontWeight: FontWeight.w700, color: AppColors.text),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        yer.altBaslik.of(context),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 13, height: 1.35, color: AppColors.textMuted),
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 6,
                        runSpacing: 6,
                        children: [
                          InfoChip(GeziMetin.sesliRehberRozet.of(context), icon: Icons.volume_up_rounded, strong: true),
                          if (konum != null)
                            InfoChip(
                              fill(GeziMetin.sizeUzaklik.of(context),
                                  {'d': formatDistance(distanceMeters(konum!, yer.konum))}),
                              icon: Icons.near_me_rounded,
                            ),
                          if (yer.uzaklik != null)
                            InfoChip('${GeziMetin.uzak.of(context)} · ${yer.uzaklik!.of(context)}',
                                icon: Icons.route_rounded),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.only(start: 4, top: 20),
                  child: Icon(Icons.chevron_right_rounded, color: AppColors.textMuted),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

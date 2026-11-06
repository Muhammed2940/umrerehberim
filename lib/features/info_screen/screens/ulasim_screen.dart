import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../../common/widgets/osm_map.dart';
import '../../../core/theme/app_theme.dart';
import '../data/l10n_text.dart';
import '../data/ulasim_data.dart';
import '../widgets/info_widgets.dart';

/// Toplu taşıma rehberi: Mekke | Medine | Şehirlerarası & Tren | Taksi.
/// Veriler ve kaynakları `data/ulasim_data.dart` içinde (kaynaklar arayüzde gösterilmez).
class UlasimScreen extends StatefulWidget {
  const UlasimScreen({super.key});

  @override
  State<UlasimScreen> createState() => _UlasimScreenState();
}

class _UlasimScreenState extends State<UlasimScreen> {
  @override
  Widget build(BuildContext context) {
    final tabs = <(IconData, L10nText)>[
      (FlutterIslamicIcons.solidKaaba, UlasimMetin.tabMekke),
      (FlutterIslamicIcons.solidMosque, UlasimMetin.tabMedine),
      (Icons.train_rounded, UlasimMetin.tabSehirlerarasi),
      (Icons.local_taxi_rounded, UlasimMetin.tabTaksi),
    ];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(UlasimMetin.baslik.of(context)),
          // Koyu başlık çubuğunda okunur "hap" sekmeler (gezilecek_yerler_screen.dart ile aynı stil).
          // Dört sekme dar ekrana sığmayabileceği için kaydırılabilir.
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
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                labelColor: AppColors.emerald800,
                unselectedLabelColor: Colors.white,
                labelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                unselectedLabelStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                labelPadding: const EdgeInsets.symmetric(horizontal: 14),
                tabs: [
                  for (final (ikon, ad) in tabs)
                    Tab(
                      height: 40,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(ikon, size: 17),
                          const SizedBox(width: 6),
                          Text(ad.of(context)),
                        ],
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
            _Sekme(
              haritaIds: kMekkeHaritaIds,
              merkezler: const [_Merkez.kabe],
              icerik: (context, goster) => [
                _Baslik(UlasimMetin.genelBilgi, icon: Icons.info_outline_rounded),
                _MaddeKutusu(kMekkeGenel),
                _Baslik(UlasimMetin.hatlar, icon: Icons.directions_bus_rounded, sayi: kMekkeHatlari.length),
                for (final h in kMekkeHatlari) _HatKarti(hat: h, goster: goster),
                _Baslik(UlasimMetin.ekBilgi, icon: Icons.lightbulb_outline_rounded),
                for (final b in kMekkeEk) _BolumKarti(bolum: b, goster: goster),
              ],
            ),
            _Sekme(
              haritaIds: kMedineHaritaIds,
              merkezler: const [_Merkez.nebevi],
              icerik: (context, goster) => [
                _Baslik(UlasimMetin.genelBilgi, icon: Icons.info_outline_rounded),
                _MaddeKutusu(kMedineGenel),
                _Baslik(UlasimMetin.hatlar, icon: Icons.directions_bus_rounded, sayi: kMedineHatlari.length),
                for (final h in kMedineHatlari) _HatKarti(hat: h, goster: goster),
                _Baslik(UlasimMetin.ekBilgi, icon: Icons.lightbulb_outline_rounded),
                for (final b in kMedineEk) _BolumKarti(bolum: b, goster: goster),
              ],
            ),
            _Sekme(
              haritaIds: kSehirlerarasiHaritaIds,
              merkezler: const [_Merkez.kabe, _Merkez.nebevi],
              icerik: (context, goster) => [
                _Baslik(UlasimMetin.istasyonlar, icon: Icons.train_rounded),
                _MaddeKutusu(kTrenGenel),
                for (final b in kTrenIstasyonlari) _BolumKarti(bolum: b, goster: goster),
                _Baslik(UlasimMetin.otobusSirketleri, icon: Icons.directions_bus_rounded),
                for (final b in kOtobusSirketleri) _BolumKarti(bolum: b, goster: goster),
                _Baslik(UlasimMetin.havalimani, icon: Icons.flight_land_rounded),
                for (final b in kHavalimaniBolumleri) _BolumKarti(bolum: b, goster: goster),
              ],
            ),
            _Sekme(
              haritaIds: const [],
              merkezler: const [],
              icerik: (context, goster) => [
                const SizedBox(height: 6),
                for (final b in kTaksiBolumleri) _BolumKarti(bolum: b, goster: goster, acik: true),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ───────────────────────── Yardımcılar ─────────────────────────

enum _Merkez {
  kabe(kUlasimKabe, UlasimMetin.kabe, FlutterIslamicIcons.solidKaaba),
  nebevi(kUlasimNebevi, UlasimMetin.mescidiNebevi, FlutterIslamicIcons.solidMosque);

  const _Merkez(this.point, this.ad, this.ikon);

  final LatLng point;
  final L10nText ad;
  final IconData ikon;
}

typedef _Goster = void Function(UlasimNoktasi n);

IconData _noktaIkon(UlasimNoktaTur t) => switch (t) {
      UlasimNoktaTur.harem => FlutterIslamicIcons.solidKaaba,
      UlasimNoktaTur.otobus => Icons.directions_bus_rounded,
      UlasimNoktaTur.tren => Icons.train_rounded,
      UlasimNoktaTur.havalimani => Icons.flight_rounded,
      UlasimNoktaTur.otogar => Icons.departure_board_rounded,
      UlasimNoktaTur.mescid => FlutterIslamicIcons.solidMosque,
    };

IconData _bolumIkon(UlasimIkon i) => switch (i) {
      UlasimIkon.tren => Icons.train_rounded,
      UlasimIkon.otobus => Icons.directions_bus_rounded,
      UlasimIkon.taksi => Icons.local_taxi_rounded,
      UlasimIkon.ucak => Icons.flight_land_rounded,
      UlasimIkon.bilet => Icons.confirmation_number_rounded,
      UlasimIkon.uyari => Icons.warning_amber_rounded,
      UlasimIkon.uygulama => Icons.smartphone_rounded,
      UlasimIkon.konum => Icons.place_rounded,
      UlasimIkon.saat => Icons.schedule_rounded,
      UlasimIkon.harem => FlutterIslamicIcons.solidMosque,
      UlasimIkon.tur => Icons.tour_rounded,
      UlasimIkon.guvenlik => Icons.shield_outlined,
    };

/// En yakın Harem'e kuş uçuşu mesafe; 30 km'den uzaksa null (havalimanı, KAEC vb.).
double? _haremeMesafe(UlasimNoktasi n) {
  final a = distanceMeters(n.point, kUlasimKabe);
  final b = distanceMeters(n.point, kUlasimNebevi);
  final d = a < b ? a : b;
  return d <= 30000 ? d : null;
}

// ───────────────────────── Sekme (harita + liste) ─────────────────────────

class _Sekme extends StatefulWidget {
  const _Sekme({required this.haritaIds, required this.merkezler, required this.icerik});

  final List<String> haritaIds;
  final List<_Merkez> merkezler;
  final List<Widget> Function(BuildContext context, _Goster goster) icerik;

  @override
  State<_Sekme> createState() => _SekmeState();
}

class _SekmeState extends State<_Sekme> with AutomaticKeepAliveClientMixin {
  final _map = MapController();
  final _scroll = ScrollController();
  late final List<UlasimNoktasi> _noktalar = noktalar(widget.haritaIds);
  String? _secili;

  @override
  bool get wantKeepAlive => true;

  bool get _haritaVar => _noktalar.isNotEmpty;

  CameraFit get _hepsi => CameraFit.coordinates(
        coordinates: [for (final n in _noktalar) n.point, for (final m in widget.merkezler) m.point],
        padding: const EdgeInsets.fromLTRB(36, 44, 36, 36),
        maxZoom: 15,
      );

  void _goster(UlasimNoktasi n) {
    if (!_haritaVar) return;
    setState(() => _secili = n.id);
    _map.move(n.point, 15);
    if (_scroll.hasClients) {
      _scroll.animateTo(0, duration: const Duration(milliseconds: 350), curve: Curves.easeOut);
    }
  }

  void _hepsiniGoster() {
    setState(() => _secili = null);
    _map.fitCamera(_hepsi);
  }

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView(
      controller: _scroll,
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 28),
      children: [
        InfoNote(UlasimMetin.ustNot.of(context), warning: true),
        if (_haritaVar) ...[
          const SizedBox(height: 4),
          _harita(context),
        ],
        ...widget.icerik(context, _goster),
      ],
    );
  }

  Widget _harita(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
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
                    for (final n in _noktalar)
                      placeMarker(
                        point: n.point,
                        label: n.ad.of(context),
                        icon: _noktaIkon(n.tur),
                        selected: n.id == _secili,
                        onTap: () => _goster(n),
                      ),
                    for (final m in widget.merkezler)
                      placeMarker(point: m.point, label: m.ad.of(context), icon: m.ikon, main: true),
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
                  tooltip: UlasimMetin.hepsiniGoster.of(context),
                  onPressed: _hepsiniGoster,
                  icon: const Icon(Icons.zoom_out_map_rounded, color: AppColors.primary, size: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ───────────────────────── Parçalar ─────────────────────────

class _Baslik extends StatelessWidget {
  const _Baslik(this.metin, {this.icon, this.sayi});

  final L10nText metin;
  final IconData? icon;
  final int? sayi;

  @override
  Widget build(BuildContext context) {
    final t = metin.of(context);
    return InfoSectionLabel(sayi == null ? t : '$t ($sayi)', icon: icon);
  }
}

class _MaddeKutusu extends StatelessWidget {
  const _MaddeKutusu(this.maddeler);

  final List<UlasimMadde> maddeler;

  @override
  Widget build(BuildContext context) {
    return InfoCardBox(
      padding: const EdgeInsets.fromLTRB(14, 14, 14, 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (final m in maddeler) BulletText(m.metin.of(context), bold: m.baslik?.of(context)),
        ],
      ),
    );
  }
}

/// Otobüs hattı kartı: renkli numara rozeti, "A → B", çipler, açılır durak listesi, kalkış noktası.
class _HatKarti extends StatelessWidget {
  const _HatKarti({required this.hat, required this.goster});

  final OtobusHatti hat;
  final _Goster goster;

  @override
  Widget build(BuildContext context) {
    final renk = Color(hat.renk);
    final kalkis = ulasimNoktasi(hat.kalkisId);
    final mesafe = kalkis == null ? null : _haremeMesafe(kalkis);
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(18),
        boxShadow: kInfoCardShadow,
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Hat rengini gösteren ince üst şerit.
          Container(height: 4, color: renk),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 12, 14, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 54,
                  height: 54,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: renk,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [BoxShadow(color: renk.withValues(alpha: 0.35), blurRadius: 8, offset: const Offset(0, 3))],
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        hat.numara,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: hat.numara.length > 2 ? 19 : 24,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hat.nereden.of(context),
                        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: AppColors.text),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1),
                        child: Icon(Icons.arrow_downward_rounded, size: 16, color: renk),
                      ),
                      Text(
                        hat.nereye.of(context),
                        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: AppColors.text),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 10, 14, 0),
            child: Wrap(
              spacing: 6,
              runSpacing: 6,
              children: [
                if (hat.ucret != null) InfoChip(hat.ucret!.of(context), icon: Icons.payments_outlined, strong: true),
                if (hat.saat != null) InfoChip(hat.saat!.of(context), icon: Icons.schedule_rounded),
                if (hat.sefer != null) InfoChip(hat.sefer!.of(context), icon: Icons.repeat_rounded),
                if (mesafe != null)
                  InfoChip('${formatDistance(mesafe)} · ${UlasimMetin.haremeUzaklik.of(context)}',
                      icon: Icons.straighten_rounded),
              ],
            ),
          ),
          for (final n in hat.notlar)
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 10, 14, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.info_outline_rounded, size: 16, color: AppColors.textMuted),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(n.of(context),
                        style: const TextStyle(fontSize: 12.5, height: 1.4, color: AppColors.textMuted)),
                  ),
                ],
              ),
            ),
          if (hat.duraklar.isNotEmpty)
            Theme(
              data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                tilePadding: const EdgeInsets.symmetric(horizontal: 14),
                childrenPadding: const EdgeInsets.fromLTRB(14, 0, 14, 4),
                dense: true,
                iconColor: renk,
                collapsedIconColor: AppColors.textMuted,
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                title: Text(
                  '${UlasimMetin.duraklar.of(context)} (${hat.duraklar.length})',
                  style: TextStyle(fontSize: 13.5, fontWeight: FontWeight.w700, color: renk),
                ),
                children: [for (final d in hat.duraklar) _DurakSatiri(d.of(context), renk: renk)],
              ),
            )
          else
            const SizedBox(height: 12),
          if (kalkis != null)
            Padding(
              padding: EdgeInsets.fromLTRB(14, hat.duraklar.isEmpty ? 0 : 4, 14, 14),
              child: PlaceActions(point: kalkis.point, onShowOnMap: () => goster(kalkis)),
            )
          else if (hat.duraklar.isNotEmpty)
            const SizedBox(height: 6),
        ],
      ),
    );
  }
}

class _DurakSatiri extends StatelessWidget {
  const _DurakSatiri(this.ad, {required this.renk});

  final String ad;
  final Color renk;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.surface,
              border: Border.all(color: renk, width: 2.5),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(child: Text(ad, style: const TextStyle(fontSize: 14, color: AppColors.text))),
        ],
      ),
    );
  }
}

/// Açılır bilgi kartı: istasyon, operatör, ipucu grubu.
class _BolumKarti extends StatelessWidget {
  const _BolumKarti({required this.bolum, required this.goster, this.acik = false});

  final UlasimBolum bolum;
  final _Goster goster;
  final bool acik;

  @override
  Widget build(BuildContext context) {
    final nokta = ulasimNoktasi(bolum.noktaId);
    final mesafe = nokta == null ? null : _haremeMesafe(nokta);
    final chips = [
      for (final c in bolum.chips) InfoChip(c.of(context), strong: true),
      if (mesafe != null)
        InfoChip('${formatDistance(mesafe)} · ${UlasimMetin.haremeUzaklik.of(context)}', icon: Icons.straighten_rounded),
    ];
    return ExpandableInfoCard(
      icon: _bolumIkon(bolum.ikon),
      title: bolum.baslik.of(context),
      subtitle: bolum.altBaslik?.of(context),
      initiallyExpanded: acik,
      children: [
        if (chips.isNotEmpty) ...[
          Wrap(spacing: 6, runSpacing: 6, children: chips),
          const SizedBox(height: 12),
        ],
        for (final m in bolum.maddeler) BulletText(m.metin.of(context), bold: m.baslik?.of(context)),
        if (nokta != null) ...[
          const SizedBox(height: 4),
          PlaceActions(point: nokta.point, onShowOnMap: () => goster(nokta)),
        ],
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../../common/widgets/osm_map.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../data/harem_kapilari_data.dart';
import '../data/l10n_text.dart';
import '../widgets/info_widgets.dart';

/// Mescid-i Haram ve Mescid-i Nebevî kapıları: üstte harita, altta aranabilir liste.
/// Haritadaki işarete dokununca ilgili kapı kartı açılır ve listede görünür hale gelir.
class HaremKapilariScreen extends StatefulWidget {
  const HaremKapilariScreen({super.key});

  @override
  State<HaremKapilariScreen> createState() => _HaremKapilariScreenState();
}

class _HaremKapilariScreenState extends State<HaremKapilariScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(KapiMetin.baslik.of(context)),
          // Koyu başlık çubuğunda okunur "hap" sekmeler (gezilecek_yerler_screen ile aynı stil).
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
                  for (final (m, ad) in [
                    (KapiMescid.haram, KapiMetin.tabHaram),
                    (KapiMescid.nebevi, KapiMetin.tabNebevi),
                  ])
                    Tab(
                      height: 40,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text('${ad.of(context)} (${kapilarOf(m).length})'),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          // Harita kaydırması sekme değiştirmesin.
          physics: NeverScrollableScrollPhysics(),
          children: [_MescitSekmesi(KapiMescid.haram), _MescitSekmesi(KapiMescid.nebevi)],
        ),
      ),
    );
  }
}

class _MescitSekmesi extends StatefulWidget {
  const _MescitSekmesi(this.mescid);

  final KapiMescid mescid;

  @override
  State<_MescitSekmesi> createState() => _MescitSekmesiState();
}

class _MescitSekmesiState extends State<_MescitSekmesi> with AutomaticKeepAliveClientMixin {
  final _map = MapController();
  final _ara = TextEditingController();
  final _scroll = ScrollController();
  late final List<HaremKapisi> _tumu = [...kapilarOf(widget.mescid)]
    ..sort((a, b) => a.siraNo.compareTo(b.siraNo));
  late final Map<String, GlobalKey> _keys = {for (final k in _tumu) k.id: GlobalKey()};
  String _q = '';
  String? _acik;

  @override
  bool get wantKeepAlive => true;

  bool get _haram => widget.mescid == KapiMescid.haram;
  LatLng get _merkez => _haram ? kKapiKabe : kKapiRavza;

  CameraFit get _hepsi => CameraFit.coordinates(
        coordinates: [_merkez, for (final k in _tumu) k.point],
        padding: const EdgeInsets.fromLTRB(36, 44, 36, 36),
      );

  @override
  void dispose() {
    _ara.dispose();
    _scroll.dispose();
    super.dispose();
  }

  /// Türkçe harfleri ve şapkalı/kesme işaretli yazımları aramada eşitler.
  static String _norm(String s) {
    final b = StringBuffer();
    for (final r in s.replaceAll('İ', 'i').replaceAll('I', 'ı').toLowerCase().runes) {
      final c = String.fromCharCode(r);
      b.write(switch (c) {
        'â' => 'a',
        'î' => 'i',
        'û' => 'u',
        'ı' => 'i',
        'ş' => 's',
        'ğ' => 'g',
        'ç' => 'c',
        'ö' => 'o',
        'ü' => 'u',
        '’' || '‘' || '\'' || '-' || '–' || '(' || ')' => '',
        _ => c,
      });
    }
    return b.toString();
  }

  List<HaremKapisi> get _liste {
    final q = _norm(_q.trim());
    if (q.isEmpty) return _tumu;
    final sayi = int.tryParse(q);
    return _tumu.where((k) {
      if (sayi != null && k.no != null) {
        // "7–9" gibi aralıkları da yakala.
        final p = RegExp(r'\d+').allMatches(k.no!).map((m) => int.parse(m.group(0)!)).toList();
        if (p.length == 2 && sayi >= p[0] && sayi <= p[1]) return true;
        if (p.contains(sayi)) return true;
      }
      final metin = _norm([k.ad.tr, k.ad.en ?? '', k.ad.ar ?? '', k.no ?? ''].join(' '));
      return metin.contains(q);
    }).toList();
  }

  void _haritadaGoster(HaremKapisi k) {
    setState(() => _acik = k.id);
    _map.move(k.point, 18);
  }

  /// Haritadaki işarete dokunulunca: kartı aç ve listede görünür yap.
  void _isaretSecildi(HaremKapisi k) {
    setState(() {
      _acik = k.id;
      if (!_liste.contains(k)) {
        _ara.clear();
        _q = '';
      }
    });
    _map.move(k.point, 18);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final c = _keys[k.id]?.currentContext;
      if (c != null && c.mounted) {
        Scrollable.ensureVisible(c, duration: const Duration(milliseconds: 350), curve: Curves.easeOut, alignment: 0.05);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final liste = _liste;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
          child: ClipRRect(
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
                          placeMarker(
                            point: _merkez,
                            label: (_haram ? KapiMetin.kabe : KapiMetin.ravza).of(context),
                            icon: _haram ? FlutterIslamicIcons.solidKaaba : FlutterIslamicIcons.solidMosque,
                            main: true,
                          ),
                          for (final k in _tumu)
                            if (k.id != _acik) _isaret(k),
                          // Seçili işaret en üstte çizilsin.
                          for (final k in _tumu)
                            if (k.id == _acik) _isaret(k),
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
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
          child: TextField(
            controller: _ara,
            onChanged: (v) => setState(() => _q = v),
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              isDense: true,
              hintText: KapiMetin.ara.of(context),
              prefixIcon: const Icon(Icons.search_rounded),
              suffixIcon: _q.isEmpty
                  ? null
                  : IconButton(
                      icon: const Icon(Icons.close_rounded),
                      onPressed: () => setState(() {
                        _ara.clear();
                        _q = '';
                      }),
                    ),
              filled: true,
              fillColor: AppColors.surface,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide.none),
            ),
          ),
        ),
        Expanded(
          // Listede az sayıda kart var; ensureVisible için hepsi çizili kalsın diye SingleChildScrollView.
          child: SingleChildScrollView(
            controller: _scroll,
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InfoNote(KapiMetin.not.of(context), icon: Icons.info_outline_rounded),
                const SizedBox(height: 4),
                InfoSectionLabel(
                  KapiMetin.kapiSayisi.of(context).replaceAll('{n}', '${liste.length}'),
                  icon: Icons.door_front_door_rounded,
                ),
                if (liste.isEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Text(
                      KapiMetin.sonucYok.of(context),
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: AppColors.textMuted),
                    ),
                  ),
                for (final k in liste)
                  _KapiKart(
                    key: _keys[k.id],
                    kapi: k,
                    acik: k.id == _acik,
                    onTap: () => setState(() => _acik = _acik == k.id ? null : k.id),
                    onShowOnMap: () => _haritadaGoster(k),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Marker _isaret(HaremKapisi k) => placeMarker(
        point: k.point,
        label: k.no ?? k.ad.of(context),
        icon: Icons.door_front_door_rounded,
        selected: k.id == _acik,
        onTap: () => _isaretSecildi(k),
      );
}

class _KapiKart extends StatelessWidget {
  const _KapiKart({
    super.key,
    required this.kapi,
    required this.acik,
    required this.onTap,
    required this.onShowOnMap,
  });

  final HaremKapisi kapi;
  final bool acik;
  final VoidCallback onTap;
  final VoidCallback onShowOnMap;

  @override
  Widget build(BuildContext context) {
    final k = kapi;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: acik ? AppColors.primary : AppColors.surface, width: 1.5),
        boxShadow: kInfoCardShadow,
      ),
      clipBehavior: Clip.antiAlias,
      child: Material(
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 8, 12),
                child: Row(
                  children: [
                    _NoRozet(k.no),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            k.ad.of(context),
                            style: const TextStyle(fontSize: 15.5, fontWeight: FontWeight.w700, color: AppColors.text),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            k.yakin.of(context),
                            style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted),
                          ),
                        ],
                      ),
                    ),
                    AnimatedRotation(
                      turns: acik ? 0.5 : 0,
                      duration: const Duration(milliseconds: 200),
                      child: Icon(Icons.expand_more_rounded, color: acik ? AppColors.primary : AppColors.textMuted),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedSize(
              duration: const Duration(milliseconds: 220),
              curve: Curves.easeOut,
              alignment: Alignment.topCenter,
              child: acik ? _ayrinti(context) : const SizedBox(width: double.infinity),
            ),
          ],
        ),
      ),
    );
  }

  Widget _ayrinti(BuildContext context) {
    final k = kapi;
    final dil = Localizations.localeOf(context).languageCode;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(height: 1),
          const SizedBox(height: 12),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              if (k.no == null) InfoChip(KapiMetin.numarasiz.of(context), icon: Icons.signpost_rounded),
              if (dil != 'ar')
                InfoChip('${KapiMetin.arapcaAd.of(context)}: ${k.arapca}', strong: true),
            ],
          ),
          const SizedBox(height: 12),
          _Bolum(baslik: KapiMetin.anlam, icon: Icons.translate_rounded, metin: k.anlam),
          _Bolum(baslik: KapiMetin.konum, icon: Icons.place_rounded, metin: k.konum),
          if (k.tarih != null) _Bolum(baslik: KapiMetin.tarih, icon: Icons.history_edu_rounded, metin: k.tarih!),
          if (k.ipucu != null) ...[
            const SizedBox(height: 2),
            InfoNote(k.ipucu!.of(context), icon: Icons.lightbulb_outline_rounded),
          ],
          const SizedBox(height: 12),
          PlaceActions(point: k.point, onShowOnMap: onShowOnMap),
        ],
      ),
    );
  }
}

/// Kart başındaki numara rozeti. Numara yoksa kapı ikonu.
class _NoRozet extends StatelessWidget {
  const _NoRozet(this.no);

  final String? no;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 46),
      height: 46,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.accent, width: 2),
      ),
      child: no == null
          ? const Icon(Icons.door_front_door_rounded, color: Colors.white, size: 22)
          : FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                no!,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w800),
              ),
            ),
    );
  }
}

/// Ayrıntıdaki küçük başlıklı paragraf.
class _Bolum extends StatelessWidget {
  const _Bolum({required this.baslik, required this.icon, required this.metin});

  final L10nText baslik;
  final IconData icon;
  final L10nText metin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 16, color: AppColors.primary),
              const SizedBox(width: 6),
              Text(
                baslik.of(context),
                style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w800, color: AppColors.primary),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(metin.of(context), style: const TextStyle(fontSize: 14, height: 1.45, color: AppColors.text)),
        ],
      ),
    );
  }
}

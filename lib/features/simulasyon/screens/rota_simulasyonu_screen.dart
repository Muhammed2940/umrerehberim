import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../../common/widgets/osm_map.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../dualar/screens/savt_dualari_page.dart';
import '../../dualar/screens/say_dualari_page.dart';
import '../data/umre_adimlari.dart';
import '../widgets/simulasyon_widgets.dart';

/// Umre rota simülasyonu: niyetten tıraşa 8 adım, haritada hareket eden işaretçi.
class RotaSimulasyonuScreen extends StatefulWidget {
  const RotaSimulasyonuScreen({super.key});

  @override
  State<RotaSimulasyonuScreen> createState() => _RotaSimulasyonuScreenState();
}

class _RotaSimulasyonuScreenState extends State<RotaSimulasyonuScreen> with TickerProviderStateMixin {
  final _map = MapController();
  late final AnimationController _yolAnim;
  late final AnimationController _kameraAnim;
  final _kartScroll = ScrollController();

  int _adim = 0;
  bool _otomatik = false;
  bool _haritaHazir = false;
  Timer? _bekleme;

  LatLng _kameraBas = OsmMap.mekke;
  double _zoomBas = 6;
  LatLng _kameraHedef = OsmMap.mekke;
  double _zoomHedef = 6;

  UmreAdimi get _aktif => umreAdimlari[_adim];

  @override
  void initState() {
    super.initState();
    _yolAnim = AnimationController(vsync: this)
      ..addListener(() => setState(() {}))
      ..addStatusListener(_yolDurumu);
    _kameraAnim = AnimationController(vsync: this, duration: const Duration(milliseconds: 1400))
      ..addListener(_kamerayiGuncelle);
  }

  @override
  void dispose() {
    _bekleme?.cancel();
    _yolAnim.dispose();
    _kameraAnim.dispose();
    _kartScroll.dispose();
    super.dispose();
  }

  // ---------------------------------------------------------------- akış

  void _haritaHazirOldu() {
    _haritaHazir = true;
    _gitAdim(_adim, kameraAnimasyonu: false);
  }

  void _gitAdim(int i, {bool kameraAnimasyonu = true}) {
    _bekleme?.cancel();
    setState(() => _adim = i.clamp(0, umreAdimlari.length - 1));
    if (_kartScroll.hasClients) _kartScroll.jumpTo(0);

    _yolAnim.duration = Duration(milliseconds: (_aktif.animasyonSaniye * 1000).round());
    _yolAnim.forward(from: 0);

    if (!_haritaHazir) return;
    final hedef = CameraFit.coordinates(
      coordinates: _aktif.gorunum,
      padding: const EdgeInsets.fromLTRB(40, 50, 40, 40),
      maxZoom: 18,
    ).fit(_map.camera);
    _kameraHedef = hedef.center;
    _zoomHedef = hedef.zoom;
    if (!kameraAnimasyonu) {
      _map.move(_kameraHedef, _zoomHedef);
      return;
    }
    _kameraBas = _map.camera.center;
    _zoomBas = _map.camera.zoom;
    _kameraAnim.forward(from: 0);
  }

  void _kamerayiGuncelle() {
    final t = Curves.easeInOutCubic.transform(_kameraAnim.value);
    // Uzak mesafede yolda biraz uzaklaşıp yeniden yaklaşır: kısa bir "uçuş" etkisi.
    final mesafe = (_kameraBas.latitude - _kameraHedef.latitude).abs() +
        (_kameraBas.longitude - _kameraHedef.longitude).abs();
    final dalis = mesafe > 0.5 ? math.sin(t * math.pi) * 1.5 : 0.0;
    final z = _zoomBas + (_zoomHedef - _zoomBas) * t - dalis;
    final c = LatLng(
      _kameraBas.latitude + (_kameraHedef.latitude - _kameraBas.latitude) * t,
      _kameraBas.longitude + (_kameraHedef.longitude - _kameraBas.longitude) * t,
    );
    _map.move(c, z);
  }

  void _yolDurumu(AnimationStatus s) {
    if (s != AnimationStatus.completed || !_otomatik) return;
    _bekleme?.cancel();
    _bekleme = Timer(const Duration(seconds: 4), () {
      if (!mounted || !_otomatik) return;
      if (_adim < umreAdimlari.length - 1) {
        _gitAdim(_adim + 1);
      } else {
        setState(() => _otomatik = false);
      }
    });
  }

  void _otomatikDegistir() {
    setState(() => _otomatik = !_otomatik);
    if (!_otomatik) {
      _bekleme?.cancel();
      return;
    }
    if (_adim == umreAdimlari.length - 1) {
      _gitAdim(0);
    } else if (_yolAnim.isCompleted) {
      _gitAdim(_adim + 1);
    }
  }

  void _durdur() {
    _bekleme?.cancel();
    if (_otomatik) setState(() => _otomatik = false);
  }

  // ---------------------------------------------------------------- konum

  /// Aktif adımın yolu üzerinde, animasyon ilerlemesine göre işaretçi konumu.
  LatLng _isaretciKonumu() {
    final yol = _aktif.yol;
    if (yol.length == 1) return yol.first;
    final t = Curves.easeInOut.transform(_yolAnim.value);
    final parcalar = <double>[];
    var toplam = 0.0;
    for (var i = 1; i < yol.length; i++) {
      final d = _uzaklik(yol[i - 1], yol[i]);
      parcalar.add(d);
      toplam += d;
    }
    if (toplam == 0) return yol.last;
    var kalan = t * toplam;
    for (var i = 0; i < parcalar.length; i++) {
      if (kalan <= parcalar[i] || i == parcalar.length - 1) {
        final f = parcalar[i] == 0 ? 1.0 : (kalan / parcalar[i]).clamp(0.0, 1.0);
        final a = yol[i], b = yol[i + 1];
        return LatLng(a.latitude + (b.latitude - a.latitude) * f, a.longitude + (b.longitude - a.longitude) * f);
      }
      kalan -= parcalar[i];
    }
    return yol.last;
  }

  static double _uzaklik(LatLng a, LatLng b) {
    final dx = (a.longitude - b.longitude) * 0.93;
    final dy = a.latitude - b.latitude;
    return math.sqrt(dx * dx + dy * dy);
  }

  /// Sa'y adımında kaçıncı şavtta olunduğu (1-7); Safa'ya varmadan 0, başka adımda null.
  int? _sayShavti() {
    if (_aktif.yerId != YerId.safa) return null;
    final t = Curves.easeInOut.transform(_yolAnim.value);
    // İlk parça Zemzem → Safa; kalan 7 parça şavtlardır.
    final ilk = _uzaklik(_aktif.yol[0], _aktif.yol[1]);
    final savt = _uzaklik(UmreYerleri.safa, UmreYerleri.merve);
    final konum = t * (ilk + savt * 7) - ilk;
    if (konum <= 0) return 0;
    return (konum / savt).floor().clamp(0, 6) + 1;
  }

  // ---------------------------------------------------------------- arayüz

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: Text(context.l10n.simRouteTitle)),
      body: Column(
        children: [
          _ilerleme(),
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: ClipRRect(borderRadius: BorderRadius.circular(20), child: _harita()),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(flex: 11, child: _adimKarti()),
          _kontroller(),
        ],
      ),
    );
  }

  Widget _ilerleme() {
    final n = umreAdimlari.length;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 10),
      child: Column(
        children: [
          Row(
            children: [
              Text(context.l10n.simStepOf(_adim + 1, n),
                  style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.w800, fontSize: 15)),
              const SizedBox(width: 8),
              Expanded(
                child: Text(_aktif.baslik.of(context),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: AppColors.text, fontWeight: FontWeight.w600)),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: (_adim + 1) / n,
              minHeight: 6,
              backgroundColor: AppColors.divider,
              valueColor: const AlwaysStoppedAnimation(AppColors.primary),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 30,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: n,
              separatorBuilder: (_, _) => const SizedBox(width: 6),
              itemBuilder: (_, i) {
                final secili = i == _adim;
                final gecti = i < _adim;
                return GestureDetector(
                  onTap: () {
                    _durdur();
                    _gitAdim(i);
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: secili ? AppColors.primary : (gecti ? AppColors.mint : AppColors.surface),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: secili ? AppColors.primary : AppColors.divider),
                    ),
                    child: Text(
                      '${i + 1}. ${umreAdimlari[i].kisaBaslik.of(context)}',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: secili ? AppColors.surface : AppColors.text,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _harita() {
    final konum = _isaretciKonumu();
    final sayShavti = _sayShavti();
    return Stack(
      children: [
        FlutterMap(
          mapController: _map,
          options: MapOptions(
            initialCenter: const LatLng(22.9, 39.7),
            initialZoom: 6,
            onMapReady: _haritaHazirOldu,
            interactionOptions: const InteractionOptions(flags: InteractiveFlag.all & ~InteractiveFlag.rotate),
          ),
          children: [
            OsmMap.tileLayer(),
            PolylineLayer(
              polylines: [
                Polyline(
                  points: const [UmreYerleri.zulhuleyfe, UmreYerleri.yolOrtasi, UmreYerleri.mescidiHaram],
                  color: AppColors.primary.withValues(alpha: 0.7),
                  strokeWidth: 3,
                  pattern: StrokePattern.dashed(segments: const [10, 8]),
                ),
                Polyline(
                  points: umreAdimlari[3].yol.skip(1).toList(),
                  color: AppColors.primary.withValues(alpha: 0.55),
                  strokeWidth: 3,
                ),
                Polyline(
                  points: const [UmreYerleri.safa, UmreYerleri.merve],
                  color: AppColors.sage,
                  strokeWidth: 6,
                ),
              ],
            ),
            Builder(builder: (context) {
              final zoom = MapCamera.of(context).zoom;
              return MarkerLayer(markers: _yerIsaretleri(zoom));
            }),
            MarkerLayer(
              markers: [
                Marker(point: konum, width: 44, height: 44, child: const _HaciIsaretci()),
              ],
            ),
            OsmMap.attribution(),
          ],
        ),
        PositionedDirectional(
          end: 10,
          top: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: AppColors.surface.withValues(alpha: 0.95),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(color: AppColors.emerald900.withValues(alpha: 0.1), blurRadius: 6)],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.place, size: 16, color: AppColors.primary),
                const SizedBox(width: 4),
                Text(
                  sayShavti != null && sayShavti > 0 ? context.l10n.simSaiLap(sayShavti) : _aktif.yer.of(context),
                  style: const TextStyle(fontWeight: FontWeight.w700, color: AppColors.text, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  List<Marker> _yerIsaretleri(double zoom) {
    final uzak = zoom < 12;
    final markers = <Marker>[];
    for (final n in haritaNoktalari) {
      final mikat = n.konum == UmreYerleri.zulhuleyfe;
      // Uzak görünümde Harem içindeki noktalar üst üste biner; yalnız "Mekke" gösterilir.
      if (uzak && !mikat && n.konum != UmreYerleri.kabe) continue;
      final ad = uzak && !mikat ? context.l10n.commonMecca : n.ad.of(context);
      final aktif = n.id == _aktif.yerId || (_aktif.yerId == YerId.safa && n.id == YerId.merve);
      // Yakın görünümde Kâbe çevresindeki etiketler çakışmasın: aktif olan ve ana noktalar yazılır.
      final etiket = uzak || aktif || const {YerId.safa, YerId.merve, YerId.haram, YerId.kabe}.contains(n.id);
      markers.add(Marker(
        point: n.konum,
        width: 150,
        height: 46,
        alignment: Alignment.topCenter,
        child: _YerIsareti(ad: n.yaklasik ? context.l10n.simApproximate(ad) : ad, aktif: aktif, etiket: etiket),
      ));
    }
    return markers;
  }

  Widget _adimKarti() {
    final a = _aktif;
    return SimKart(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: EdgeInsets.zero,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ListView(
          controller: _kartScroll,
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 16),
          children: [
            Row(
              children: [
                Container(
                  width: 34,
                  height: 34,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(gradient: AppColors.primaryGradient, shape: BoxShape.circle),
                  child: Text('${_adim + 1}', style: const TextStyle(color: AppColors.surface, fontWeight: FontWeight.w800)),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(a.baslik.of(context),
                      style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: AppColors.text)),
                ),
              ],
            ),
            BolumBasligi(context.l10n.simWhatToDo, ikon: Icons.directions_walk),
            MaddeListesi(maddeler: [for (final m in a.yapilacaklar) m.of(context)]),
            BolumBasligi(context.l10n.simSupplicationToRecite, ikon: Icons.menu_book_outlined),
            DuaMetniGorunumu(dua: a.dua, arapcaBoyut: 20),
            BolumBasligi(context.l10n.simThingsToNote, ikon: Icons.warning_amber_rounded, renk: AppColors.warning),
            MaddeListesi(maddeler: [for (final m in a.dikkat) m.of(context)], ikon: Icons.info_outline, renk: AppColors.warning),
            if (a.baglantilar.isNotEmpty) ...[
              const SizedBox(height: 8),
              Wrap(spacing: 8, runSpacing: 8, children: [for (final b in a.baglantilar) _baglantiButonu(b)]),
            ],
          ],
        ),
      ),
    );
  }

  Widget _baglantiButonu(AdimBaglantisi b) {
    final (String etiket, IconData ikon, VoidCallback git) = switch (b) {
      AdimBaglantisi.tavafSimulasyonu => (
          context.l10n.infoCardTawafSim,
          Icons.threesixty,
          () => Navigator.of(context).pushNamed('/tavaf-simulasyonu'),
        ),
      AdimBaglantisi.tavafDualari => (
          context.l10n.simTawafDuas,
          Icons.menu_book,
          () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SavtDualariPage())),
        ),
      AdimBaglantisi.sayDualari => (
          context.l10n.simSaiDuas,
          Icons.menu_book,
          () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SayDualariPage())),
        ),
    };
    void onPressed() {
      _durdur();
      git();
    }

    if (b == AdimBaglantisi.tavafSimulasyonu) {
      return FilledButton.icon(
        onPressed: onPressed,
        icon: Icon(ikon, size: 18),
        label: Text(etiket),
        style: FilledButton.styleFrom(backgroundColor: AppColors.primary, foregroundColor: AppColors.surface),
      );
    }
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: Icon(ikon, size: 18),
      label: Text(etiket),
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        side: const BorderSide(color: AppColors.primary),
      ),
    );
  }

  Widget _kontroller() {
    final son = _adim == umreAdimlari.length - 1;
    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
        child: Row(
          children: [
            IconButton.outlined(
              tooltip: context.l10n.simPrevious,
              onPressed: _adim == 0
                  ? null
                  : () {
                      _durdur();
                      _gitAdim(_adim - 1);
                    },
              icon: const Icon(Icons.chevron_left),
              style: IconButton.styleFrom(
                foregroundColor: AppColors.primary,
                side: const BorderSide(color: AppColors.divider),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: FilledButton.icon(
                onPressed: _otomatikDegistir,
                icon: Icon(_otomatik ? Icons.pause : Icons.play_arrow),
                label: Text(_otomatik ? context.l10n.simPause : (son ? context.l10n.simReplay : context.l10n.simAutoPlay)),
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.surface,
                  minimumSize: const Size.fromHeight(48),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                ),
              ),
            ),
            const SizedBox(width: 8),
            IconButton.filled(
              tooltip: context.l10n.simNext,
              onPressed: son
                  ? null
                  : () {
                      _durdur();
                      _gitAdim(_adim + 1);
                    },
              icon: const Icon(Icons.chevron_right),
              style: IconButton.styleFrom(backgroundColor: AppColors.emerald800, foregroundColor: AppColors.surface),
            ),
          ],
        ),
      ),
    );
  }
}

class _HaciIsaretci extends StatelessWidget {
  const _HaciIsaretci();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.surface, width: 3),
        boxShadow: [BoxShadow(color: AppColors.emerald900.withValues(alpha: 0.35), blurRadius: 8)],
      ),
      child: const Icon(Icons.directions_walk, color: AppColors.surface, size: 22),
    );
  }
}

class _YerIsareti extends StatelessWidget {
  const _YerIsareti({required this.ad, required this.aktif, required this.etiket});

  final String ad;
  final bool aktif;
  final bool etiket;

  @override
  Widget build(BuildContext context) {
    // Marker alt-ortası noktaya denk gelir; nokta en alta yerleşsin.
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (etiket)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
            decoration: BoxDecoration(
              color: aktif ? AppColors.emerald800 : AppColors.surface,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: aktif ? AppColors.emerald800 : AppColors.divider),
            ),
            child: Text(
              ad,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                color: aktif ? AppColors.surface : AppColors.text,
              ),
            ),
          )
        else
          const SizedBox(height: 20),
        const SizedBox(height: 2),
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: aktif ? AppColors.emerald800 : AppColors.sage,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.surface, width: 2),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../../common/widgets/osm_map.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../data/otel_restoran_data.dart';
import '../widgets/info_widgets.dart';

/// Mekke ve Medine'de Harem çevresindeki oteller ve yeme-içme yerleri (OSM ile doğrulanmış).
class OtelRestoranScreen extends StatelessWidget {
  const OtelRestoranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.infoCardHotels),
          bottom: TabBar(
            labelColor: AppColors.surface,
            unselectedLabelColor: AppColors.mint,
            indicatorColor: AppColors.accent,
            indicatorWeight: 3,
            dividerColor: Colors.transparent,
            tabs: [Tab(text: t.commonMecca), Tab(text: t.commonMedina)],
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [_SehirSekmesi(PlaceCity.mekke), _SehirSekmesi(PlaceCity.medine)],
        ),
      ),
    );
  }
}

enum _Filtre { tumu, otel, restoran }

class _SehirSekmesi extends StatefulWidget {
  const _SehirSekmesi(this.city);

  final PlaceCity city;

  @override
  State<_SehirSekmesi> createState() => _SehirSekmesiState();
}

class _SehirSekmesiState extends State<_SehirSekmesi> with AutomaticKeepAliveClientMixin {
  final _map = MapController();
  _Filtre _filtre = _Filtre.tumu;
  CityPlace? _secili;

  @override
  bool get wantKeepAlive => true;

  String get _haremAdi => widget.city == PlaceCity.mekke ? context.l10n.infoKaaba : context.l10n.infoProphetsMosque;

  List<CityPlace> get _yerler {
    final harem = haremOf(widget.city);
    final l = kCityPlaces.where((p) {
      if (p.city != widget.city) return false;
      return switch (_filtre) {
        _Filtre.tumu => true,
        _Filtre.otel => p.kind == PlaceKind.otel,
        _Filtre.restoran => p.kind == PlaceKind.restoran,
      };
    }).toList()
      ..sort((a, b) => distanceMeters(a.point, harem).compareTo(distanceMeters(b.point, harem)));
    return l;
  }

  void _odakla(CityPlace p) {
    setState(() => _secili = p);
    _map.move(p.point, 18);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final harem = haremOf(widget.city);
    final yerler = _yerler;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: 250,
              child: FlutterMap(
                mapController: _map,
                options: MapOptions(
                  initialCenter: harem,
                  initialZoom: 16,
                  interactionOptions: const InteractionOptions(flags: InteractiveFlag.all & ~InteractiveFlag.rotate),
                ),
                children: [
                  OsmMap.tileLayer(),
                  MarkerLayer(
                    markers: [
                      for (final p in yerler)
                        placeMarker(
                          point: p.point,
                          label: p.name.of(context),
                          icon: p.kind == PlaceKind.otel ? Icons.hotel_rounded : Icons.restaurant_rounded,
                          selected: identical(p, _secili),
                          onTap: () => _odakla(p),
                        ),
                      placeMarker(
                        point: harem,
                        label: _haremAdi,
                        icon: widget.city == PlaceCity.mekke
                            ? FlutterIslamicIcons.solidKaaba
                            : FlutterIslamicIcons.solidMosque,
                        main: true,
                      ),
                    ],
                  ),
                  OsmMap.attribution(),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
          child: Row(
            children: [
              for (final f in _Filtre.values) ...[
                ChoiceChip(
                  label: Text(switch (f) {
                    _Filtre.tumu => context.l10n.infoFilterAll,
                    _Filtre.otel => context.l10n.infoFilterHotels,
                    _Filtre.restoran => context.l10n.infoFilterFood,
                  }),
                  selected: _filtre == f,
                  selectedColor: AppColors.primary,
                  labelStyle: TextStyle(
                    color: _filtre == f ? AppColors.surface : AppColors.text,
                    fontWeight: FontWeight.w600,
                  ),
                  showCheckmark: false,
                  onSelected: (_) => setState(() => _filtre = f),
                ),
                const SizedBox(width: 8),
              ],
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 24),
            children: [
              for (final p in yerler) _kart(p, harem),
              const SizedBox(height: 4),
              Text(
                widget.city == PlaceCity.mekke ? context.l10n.infoHotelsFootnoteMecca : context.l10n.infoHotelsFootnoteMedina,
                style: const TextStyle(fontSize: 11.5, color: AppColors.textMuted),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _kart(CityPlace p, LatLng harem) {
    final d = distanceMeters(p.point, harem);
    final secili = identical(p, _secili);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: secili ? AppColors.primary : AppColors.surface, width: 1.5),
        boxShadow: kInfoCardShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoIconBadge(p.kind == PlaceKind.otel ? Icons.hotel_rounded : Icons.restaurant_rounded, size: 42),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(p.name.of(context),
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.text)),
                    if (p.note != null) ...[
                      const SizedBox(height: 2),
                      Text(p.note!.of(context), style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
                    ],
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: [
              InfoChip(p.type.of(context), strong: true),
              InfoChip(formatDistance(d), icon: Icons.straighten_rounded),
              InfoChip(walkMinutes(d), icon: Icons.directions_walk_rounded),
            ],
          ),
          const SizedBox(height: 12),
          PlaceActions(point: p.point, onShowOnMap: () => _odakla(p)),
        ],
      ),
    );
  }
}

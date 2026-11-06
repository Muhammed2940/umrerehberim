import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/empty_state_widget.dart';
import '../../../common/widgets/osm_map.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../models/shop_model.dart';
import '../providers/shops_provider.dart';
import '../widgets/shop_widgets.dart';
import 'shop_detail_screen.dart';

/// Misafir: Anlaşmalı Dükkanlar (`/dukkanlar`).
class ShopsScreen extends StatelessWidget {
  const ShopsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final agencyId = context.read<AppStateProvider>().currentUser?.agencyId;
    return ChangeNotifierProvider(
      create: (_) => ShopsProvider()..load(agencyId),
      child: const _ShopsView(),
    );
  }
}

class _ShopsView extends StatefulWidget {
  const _ShopsView();

  @override
  State<_ShopsView> createState() => _ShopsViewState();
}

class _ShopsViewState extends State<_ShopsView> {
  static const _cityTabs = ['Tümü', 'Mekke', 'Medine', 'Cidde'];
  bool _mapView = false;
  final _search = TextEditingController();

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  void _open(ShopModel s) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => ShopDetailScreen(shop: s)));
  }

  @override
  Widget build(BuildContext context) {
    final p = context.watch<ShopsProvider>();
    final t = context.l10n;
    return DefaultTabController(
      length: _cityTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.shopsTitle),
          actions: [
            IconButton(
              tooltip: t.cuzdanTitle,
              icon: const Icon(Icons.account_balance_wallet_rounded),
              onPressed: () => Navigator.of(context).pushNamed('/cuzdan'),
            ),
            IconButton(
              tooltip: _mapView ? t.shopsListView : t.shopsMapView,
              icon: Icon(_mapView ? Icons.view_list_rounded : Icons.map_rounded),
              onPressed: () => setState(() => _mapView = !_mapView),
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorColor: AppColors.accent,
            indicatorWeight: 3,
            dividerColor: Colors.transparent,
            onTap: (i) => p.setCity(_cityTabs[i]),
            tabs: [for (final c in _cityTabs) Tab(text: shopCityLabel(context, c))],
          ),
        ),
        body: Column(
          children: [
            _infoBanner(),
            _searchBar(p),
            _categoryChips(p),
            Expanded(child: _body(p)),
          ],
        ),
      ),
    );
  }

  Widget _infoBanner() => Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(16, 14, 16, 4),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.primaryLight,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.accent),
        ),
        child: Row(
          children: [
            const Icon(Icons.qr_code_2_rounded, color: AppColors.primary, size: 30),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                context.l10n.shopsInfoBanner,
                style: const TextStyle(fontSize: 13, color: AppColors.text, height: 1.35),
              ),
            ),
          ],
        ),
      );

  Widget _searchBar(ShopsProvider p) => Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
        child: TextField(
          controller: _search,
          onChanged: p.setQuery,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            hintText: context.l10n.shopsSearchHint,
            prefixIcon: const Icon(Icons.search),
            suffixIcon: p.query.isEmpty
                ? null
                : IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      _search.clear();
                      p.setQuery('');
                    },
                  ),
            filled: true,
            fillColor: Colors.white,
            isDense: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide.none),
          ),
        ),
      );

  Widget _categoryChips(ShopsProvider p) {
    final cats = p.availableCategories;
    if (cats.isEmpty) return const SizedBox(height: 4);
    return SizedBox(
      height: 48,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        children: [
          _chip(context.l10n.shopsAll, p.category == null, () => p.setCategory(null)),
          for (final c in cats)
            _chip(shopCategoryLabel(context, c), p.category == c, () => p.setCategory(p.category == c ? null : c)),
        ],
      ),
    );
  }

  Widget _chip(String label, bool selected, VoidCallback onTap) => Padding(
        padding: const EdgeInsetsDirectional.only(end: 8),
        child: ChoiceChip(
          label: Text(label),
          selected: selected,
          onSelected: (_) => onTap(),
          showCheckmark: false,
          selectedColor: AppColors.primary,
          backgroundColor: Colors.white,
          side: BorderSide(color: selected ? AppColors.primary : AppColors.divider),
          labelStyle: TextStyle(
            color: selected ? Colors.white : AppColors.text,
            fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
            fontSize: 13,
          ),
        ),
      );

  Widget _body(ShopsProvider p) {
    if (p.isLoading && p.shops.isEmpty) return const Center(child: CircularProgressIndicator());
    final agencyId = context.read<AppStateProvider>().currentUser?.agencyId;
    if (p.shops.isEmpty) {
      return RefreshIndicator(
        onRefresh: () => p.load(agencyId),
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            const SizedBox(height: 60),
            EmptyStateWidget(
              icon: Icons.storefront_outlined,
              message: p.error ?? context.l10n.shopsEmpty,
            ),
          ],
        ),
      );
    }
    final list = p.filtered;
    if (_mapView) return _ShopsMap(shops: list, provider: p, onOpen: _open);
    if (list.isEmpty) {
      return EmptyStateWidget(icon: Icons.search_off_rounded, message: context.l10n.shopsNoMatch);
    }
    return RefreshIndicator(
      color: AppColors.primary,
      onRefresh: () => p.load(agencyId),
      child: ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
        itemCount: list.length,
        separatorBuilder: (_, _) => const SizedBox(height: 10),
        itemBuilder: (_, i) {
          final s = list[i];
          final d = p.distanceTo(s);
          return ShopCard(shop: s, distance: d == null ? null : formatDistance(d), onTap: () => _open(s));
        },
      ),
    );
  }
}

class _ShopsMap extends StatelessWidget {
  final List<ShopModel> shops;
  final ShopsProvider provider;
  final void Function(ShopModel) onOpen;

  const _ShopsMap({required this.shops, required this.provider, required this.onOpen});

  @override
  Widget build(BuildContext context) {
    final located = shops.where((s) => s.hasLocation).toList();
    final me = provider.position;
    final points = [for (final s in located) LatLng(s.latitude!, s.longitude!)];
    final fit = points.length >= 2
        ? CameraFit.coordinates(coordinates: points, padding: const EdgeInsets.all(60), maxZoom: 17)
        : null;
    final center = points.isNotEmpty
        ? points.first
        : (me != null ? LatLng(me.latitude, me.longitude) : OsmMap.mekke);
    return Stack(
      children: [
        FlutterMap(
          key: ValueKey('${provider.city}|${provider.category}|${provider.query}|${located.length}'),
          options: MapOptions(initialCenter: center, initialZoom: 15, initialCameraFit: fit),
          children: [
            OsmMap.tileLayer(),
            if (me != null)
              MarkerLayer(markers: [
                Marker(
                  point: LatLng(me.latitude, me.longitude),
                  width: 22,
                  height: 22,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                      boxShadow: shopCardShadow,
                    ),
                  ),
                ),
              ]),
            MarkerLayer(markers: [
              for (final s in located)
                Marker(
                  point: LatLng(s.latitude!, s.longitude!),
                  width: 120,
                  height: 78,
                  alignment: Alignment.topCenter,
                  child: GestureDetector(
                    onTap: () => _showSheet(context, s),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.primary, width: 2),
                            boxShadow: shopCardShadow,
                          ),
                          child: ShopLogo.of(s, size: 40, circle: true),
                        ),
                        const SizedBox(height: 2),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                              color: AppColors.primary, borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            s.discountPercent > 0
                                ? '${context.l10n.shopsPercent(s.discountPercent)} · ${s.name}'
                                : s.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ]),
            OsmMap.attribution(),
          ],
        ),
        if (located.length < shops.length)
          PositionedDirectional(
            top: 10,
            start: 12,
            end: 12,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12), boxShadow: shopCardShadow),
              child: Text(
                context.l10n.shopsMissingLocation(shops.length - located.length),
                style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
              ),
            ),
          ),
      ],
    );
  }

  void _showSheet(BuildContext context, ShopModel s) {
    final d = provider.distanceTo(s);
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (ctx) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ShopCard(
            shop: s,
            distance: d == null ? null : formatDistance(d),
            onTap: () {
              Navigator.pop(ctx);
              onOpen(s);
            },
          ),
        ),
      ),
    );
  }
}

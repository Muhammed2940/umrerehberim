import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/osm_map.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../models/user_location_model.dart';
import '../providers/admin_provider.dart';
import '../providers/location_tracking_provider.dart';
import 'single_user_map_view.dart';

/// Haritada gösterilen acente. Acente admini: kendi acentesi. Genel adminler:
/// "Yönet" ile seçilen acente (seçmediyse null → [NoAgencySelected]).
String? resolveAdminAgencyId(BuildContext context) {
  final app = context.read<AppStateProvider>().currentUser;
  final admin = context.read<AdminProvider>();
  if (app?.isAgencyAdmin == true) return app?.agencyId;
  if (admin.overrideAgencyId != null) return admin.overrideAgencyId;
  if (app?.isGlobalAdmin == true) return null;
  return app?.agencyId ?? admin.agencyId;
}

/// Genel admin acente seçmediyse gösterilen ekran.
class NoAgencySelected extends StatelessWidget {
  final String? title;
  const NoAgencySelected({super.key, this.title});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(title ?? context.l10n.adminMenuLiveLocation)),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.business_outlined, size: 64, color: AppColors.textMuted),
                const SizedBox(height: 16),
                Text(
                  context.l10n.adminMapSelectAgencyHint,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      );
}

/// Acentedeki herkesin canlı konumu (OpenStreetMap).
class AllLocationsMapView extends StatelessWidget {
  const AllLocationsMapView({super.key});

  @override
  Widget build(BuildContext context) {
    final agencyId = resolveAdminAgencyId(context);
    if (agencyId == null) return const NoAgencySelected();
    return ChangeNotifierProvider(
      create: (_) => LocationTrackingProvider(agencyId: agencyId),
      child: const _AllLocationsMapContent(),
    );
  }
}

class _AllLocationsMapContent extends StatefulWidget {
  const _AllLocationsMapContent();

  @override
  State<_AllLocationsMapContent> createState() => _AllLocationsMapContentState();
}

class _AllLocationsMapContentState extends State<_AllLocationsMapContent> {
  final MapController _map = MapController();
  bool _mapReady = false;
  bool _fitted = false;

  void _fitAll(List<UserLocationModel> list) {
    if (!_mapReady || list.isEmpty) return;
    _map.fitCamera(CameraFit.coordinates(
      coordinates: list.map((l) => LatLng(l.latitude, l.longitude)).toList(),
      padding: const EdgeInsets.fromLTRB(60, 80, 60, 220),
      maxZoom: 16,
    ));
  }

  void _focus(UserLocationModel l) {
    if (!_mapReady) return;
    context.read<LocationTrackingProvider>().startListeningSingleUser(l.userId);
    _map.move(LatLng(l.latitude, l.longitude), 17);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.adminMenuLiveLocation),
        actions: [
          IconButton(
            tooltip: context.l10n.adminMapShowAll,
            icon: const Icon(Icons.zoom_out_map),
            onPressed: () => _fitAll(context.read<LocationTrackingProvider>().locations.values.toList()),
          ),
          IconButton(
            tooltip: context.l10n.adminMapPeopleList,
            icon: const Icon(Icons.people_alt_outlined),
            onPressed: () => Navigator.pushNamed(context, '/admin/map/users'),
          ),
        ],
      ),
      body: Consumer<LocationTrackingProvider>(
        builder: (context, p, _) {
          final list = p.locations.values.toList();
          if (!_fitted && _mapReady && list.isNotEmpty) {
            _fitted = true;
            WidgetsBinding.instance.addPostFrameCallback((_) => _fitAll(list));
          }
          return Stack(
            children: [
              FlutterMap(
                mapController: _map,
                options: MapOptions(
                  initialCenter: OsmMap.mekke,
                  initialZoom: 14,
                  onMapReady: () {
                    _mapReady = true;
                    if (list.isNotEmpty && !_fitted) {
                      _fitted = true;
                      _fitAll(list);
                    }
                  },
                ),
                children: [
                  OsmMap.tileLayer(),
                  OsmMap.accuracyLayer([
                    for (final l in list)
                      (point: LatLng(l.latitude, l.longitude), accuracy: l.accuracy ?? 0, stale: l.isStale),
                  ]),
                  MarkerLayer(
                    markers: [
                      for (final l in list)
                        OsmMap.personMarker(
                          point: LatLng(l.latitude, l.longitude),
                          name: l.userName,
                          stale: l.isStale,
                          accuracy: l.accuracy ?? 0,
                          highlighted: l.userId == p.selectedUserId,
                          onTap: () => _focus(l),
                        ),
                    ],
                  ),
                  OsmMap.attribution(),
                ],
              ),
              if (p.isLoading) const LinearProgressIndicator(),
              if (p.error != null)
                PositionedDirectional(
                  top: 12,
                  start: 12,
                  end: 12,
                  child: Card(
                    color: AppColors.error,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(p.error!, style: const TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              _PeopleSheet(provider: p, onTap: _focus),
            ],
          );
        },
      ),
    );
  }
}

class _PeopleSheet extends StatelessWidget {
  final LocationTrackingProvider provider;
  final void Function(UserLocationModel) onTap;
  const _PeopleSheet({required this.provider, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final items = provider.filteredLocations;
    return DraggableScrollableSheet(
      initialChildSize: 0.22,
      minChildSize: 0.1,
      maxChildSize: 0.7,
      builder: (context, scroll) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: [BoxShadow(color: Color(0x33000000), blurRadius: 10)],
        ),
        child: ListView.builder(
          controller: scroll,
          padding: const EdgeInsets.only(bottom: 16),
          itemCount: items.length + 1,
          itemBuilder: (context, i) {
            if (i == 0) {
              return Column(
                children: [
                  const SizedBox(height: 8),
                  Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(color: Colors.black26, borderRadius: BorderRadius.circular(2)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      items.isEmpty ? context.l10n.adminMapNoOneSharing : context.l10n.adminMapVisiblePeople(items.length),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              );
            }
            final l = items[i - 1].value;
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: l.isStale ? Colors.grey : AppColors.primary,
                child: Text(
                  l.userName.isEmpty ? '?' : l.userName.characters.first.toUpperCase(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(l.userName),
              subtitle: Text(context.l10n.adminMapLastUpdate(formatLastSeen(l.timestamp))),
              selected: l.userId == provider.selectedUserId,
              onTap: () => onTap(l),
              trailing: IconButton(
                icon: const Icon(Icons.open_in_full),
                tooltip: context.l10n.adminDetail,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SingleUserMapView(
                      userId: l.userId,
                      agencyId: provider.agencyId,
                      userName: l.userName,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

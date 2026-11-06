import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/osm_map.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../providers/location_tracking_provider.dart';
import 'all_locations_map_view.dart';
import 'single_user_map_view.dart';

/// Konumu paylaşılan kişilerin listesi + son görülme. Rota: `/admin/map/users`.
class UserSelectionView extends StatelessWidget {
  const UserSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    final agencyId = resolveAdminAgencyId(context);
    if (agencyId == null) return NoAgencySelected(title: context.l10n.adminMapSelectPerson);
    return ChangeNotifierProvider(
      create: (_) => LocationTrackingProvider(agencyId: agencyId),
      child: const _UserSelectionContent(),
    );
  }
}

class _UserSelectionContent extends StatelessWidget {
  const _UserSelectionContent();

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(t.adminMapSelectPerson),
        actions: [
          IconButton(
            tooltip: t.adminMapEveryoneOnMap,
            icon: const Icon(Icons.map_outlined),
            onPressed: () => Navigator.pushReplacementNamed(context, '/admin/map'),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: t.adminSearchUser,
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onChanged: (v) => context.read<LocationTrackingProvider>().setSearchQuery(v),
            ),
          ),
          Expanded(
            child: Consumer<LocationTrackingProvider>(
              builder: (context, p, _) {
                if (p.isLoading && p.locations.isEmpty) return const Center(child: CircularProgressIndicator());
                if (p.error != null && p.locations.isEmpty) return Center(child: Text(p.error!));
                final items = p.filteredLocations;
                if (items.isEmpty) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Text(t.adminMapNoOneSharing, textAlign: TextAlign.center),
                    ),
                  );
                }
                return ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  itemCount: items.length,
                  itemBuilder: (context, i) {
                    final l = items[i].value;
                    return Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: l.isStale ? Colors.grey : AppColors.primary,
                          child: Text(
                            l.userName.isEmpty ? '?' : l.userName.characters.first.toUpperCase(),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        title: Text(l.userName, style: const TextStyle(fontWeight: FontWeight.w600)),
                        subtitle: Text(
                          t.adminMapLastUpdate(formatLastSeen(l.timestamp)),
                          style: TextStyle(color: l.isStale ? Colors.grey : AppColors.success),
                        ),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                SingleUserMapView(userId: l.userId, agencyId: p.agencyId, userName: l.userName),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

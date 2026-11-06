import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../providers/agency_provider.dart';
import '../widgets/agency_card.dart';

/// Acente listesi (CRUD).
class AgenciesPage extends StatefulWidget {
  const AgenciesPage({super.key});

  @override
  State<AgenciesPage> createState() => _AgenciesPageState();
}

class _AgenciesPageState extends State<AgenciesPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) context.read<AgencyProvider>().load();
    });
  }

  @override
  Widget build(BuildContext context) {
    // Acente ekleme yalnız süper admin; yönetici yalnız görür ve "Yönet" ile seçer.
    final isSuper = context.watch<AppStateProvider>().isSuperAdmin;
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.adminAgencies)),
      floatingActionButton: !isSuper
          ? null
          : FloatingActionButton.extended(
              onPressed: () => showAgencyFormDialog(context),
              icon: const Icon(Icons.add),
              label: Text(context.l10n.adminAgencyNew),
            ),
      body: Consumer<AgencyProvider>(
        builder: (context, p, _) {
          if (p.isLoading && p.agencies.isEmpty) return const Center(child: CircularProgressIndicator());
          return RefreshIndicator(
            onRefresh: p.load,
            child: p.agencies.isEmpty
                ? ListView(
                    children: [
                      const SizedBox(height: 80),
                      EmptyStateWidget(icon: Icons.business, message: context.l10n.adminAgencyEmpty),
                    ],
                  )
                : ListView(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 96),
                    children: [
                      for (final a in p.agencies)
                        AgencyCard(
                          agency: a,
                          onTap: () => Navigator.pushNamed(context, '/super-admin/agency', arguments: a),
                        ),
                    ],
                  ),
          );
        },
      ),
    );
  }
}

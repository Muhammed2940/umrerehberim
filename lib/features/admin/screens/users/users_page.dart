import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../common/widgets/empty_state_widget.dart';
import '../../../../core/providers/locale_provider.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../auth/models/user_model.dart';
import '../../providers/admin_provider.dart';
import '../../utils/admin_helpers.dart';
import '../../widgets/stat_card.dart';

enum _UserFilter { all, guest, manager }

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  final _search = TextEditingController();
  _UserFilter _filter = _UserFilter.all;

  @override
  void initState() {
    super.initState();
    ensureAdminLoaded(context);
  }

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  List<UserModel> _filtered(List<UserModel> users) {
    final q = _search.text.trim().toLowerCase();
    return users.where((u) {
      if (_filter == _UserFilter.guest && u.userType != UserType.misafir) return false;
      if (_filter == _UserFilter.manager && u.userType == UserType.misafir) return false;
      if (q.isEmpty) return true;
      return u.userName.toLowerCase().contains(q) || u.userTc.contains(q) || u.userTel.contains(q);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l.adminMenuPeople)),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pushNamed(context, '/admin/users/create'),
        icon: const Icon(Icons.person_add),
        label: Text(l.adminUserAdd),
      ),
      body: Consumer<AdminProvider>(
        builder: (context, p, _) {
          if (p.isLoading && p.users.isEmpty) return const Center(child: CircularProgressIndicator());
          final list = _filtered(p.users);
          return RefreshIndicator(
            onRefresh: p.refresh,
            child: ListView(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 96),
              children: [
                Row(
                  children: [
                    Expanded(
                        child: StatCard(title: l.adminStatPeople, value: '${p.users.length}', icon: Icons.people)),
                    const SizedBox(width: 8),
                    Expanded(
                        child: StatCard(
                            title: l.rolesStaff,
                            value: '${p.managerUsers.length}',
                            icon: Icons.badge,
                            color: const Color(0xFF235347))),
                  ],
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _search,
                  onChanged: (_) => setState(() {}),
                  decoration: InputDecoration(
                    hintText: l.adminUserSearchHint,
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: _search.text.isEmpty
                        ? null
                        : IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () => setState(_search.clear),
                          ),
                  ),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: [
                    _chip(l.adminFilterAll, _UserFilter.all),
                    _chip(l.rolesGuest, _UserFilter.guest),
                    _chip(l.rolesStaff, _UserFilter.manager),
                  ],
                ),
                const SizedBox(height: 8),
                if (list.isEmpty)
                  EmptyStateWidget(
                    icon: Icons.person_search,
                    message: p.users.isEmpty ? l.adminUserEmpty : l.adminNoResults,
                  )
                else
                  for (final u in list) _UserTile(user: u, provider: p),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _chip(String label, _UserFilter f) => ChoiceChip(
        label: Text(label),
        selected: _filter == f,
        onSelected: (_) => setState(() => _filter = f),
        selectedColor: AppColors.primaryLight,
      );
}

class _UserTile extends StatelessWidget {
  final UserModel user;
  final AdminProvider provider;
  const _UserTile({required this.user, required this.provider});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final isManager = user.userType != UserType.misafir;
    final mekke = provider.tripById(user.mekkeSeferiId);
    final medine = provider.tripById(user.medineSeferiId);
    final assigned = [if (mekke != null) mekke.name, if (medine != null) medine.name].join(' • ');
    return Card(
      child: ListTile(
        onTap: () => Navigator.pushNamed(context, '/admin/users/detail', arguments: user),
        leading: CircleAvatar(
          backgroundColor: isManager ? const Color(0xFFDAF1DE) : AppColors.primaryLight,
          child: Icon(isManager ? Icons.badge : Icons.person,
              color: isManager ? const Color(0xFF235347) : AppColors.primary),
        ),
        title: Text(user.userName.isEmpty ? l.adminUnnamed : user.userName,
            style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(
          [
            l.adminTcValue(user.userTc),
            if (assigned.isNotEmpty) assigned,
          ].join('\n'),
        ),
        isThreeLine: assigned.isNotEmpty,
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: isManager ? const Color(0xFFDAF1DE) : AppColors.primaryLight,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            userTypeLabel(context, user.userType),
            style: TextStyle(
                fontSize: 12, color: isManager ? const Color(0xFF235347) : AppColors.primary),
          ),
        ),
      ),
    );
  }
}

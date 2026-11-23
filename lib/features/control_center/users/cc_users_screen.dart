import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/services/auth_api_service.dart';
import '../../../common/widgets/auth_access_widgets.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/firestore_utils.dart';
import '../../admin/widgets/no_access_screen.dart';
import '../../auth/models/user_model.dart';
import '../../paketler/widgets/paket_sec_card.dart';
import '../audit/audit_labels.dart';
import '../packages/cc_packages_screen.dart';
import '../packages/package_service.dart';
import '../shared/cc_widgets.dart';

/// Hangi filtreyle açılacağı (Genel Bakış kartından gelir).
enum CcUserFilter { all, active24, active30 }

/// Tüm platformun kullanıcıları (süper admin, destek, muhasebe).
/// Rol çipleri, aktiflik filtresi, arama; dokununca ayrıntı kartı.
class CcUsersScreen extends StatefulWidget {
  final CcUserFilter initialFilter;
  const CcUsersScreen({super.key, this.initialFilter = CcUserFilter.all});

  @override
  State<CcUsersScreen> createState() => _CcUsersScreenState();
}

class _Row {
  final UserModel user;
  final DateTime? lastActive;
  const _Row(this.user, this.lastActive);
}

class _CcUsersScreenState extends State<CcUsersScreen> {
  late CcUserFilter _filter = widget.initialFilter;
  String? _role; // null = tüm roller
  bool _bireyselOnly = false;
  String _query = '';
  late Future<({List<_Row> rows, Map<String, String> agencies})> _future = _load();

  Future<({List<_Row> rows, Map<String, String> agencies})> _load() async {
    final db = FirebaseFirestore.instance;
    final results = await Future.wait([db.collection('users').get(), db.collection('agencies').get()]);
    final rows = [
      for (final d in results[0].docs)
        _Row(UserModel.fromFirestore(d), toDateTime(d.data()['last_active_at'])),
    ]..sort((a, b) {
        final x = a.lastActive, y = b.lastActive;
        if (x == null && y == null) return a.user.userName.compareTo(b.user.userName);
        if (x == null) return 1;
        if (y == null) return -1;
        return y.compareTo(x);
      });
    final agencies = {for (final d in results[1].docs) d.id: toStr(d.data()['name'], d.id)};
    return (rows: rows, agencies: agencies);
  }

  Future<void> _refresh() async {
    setState(() => _future = _load());
    await _future;
  }

  bool _activeWithin(DateTime? d, Duration w) => d != null && DateTime.now().difference(d) <= w;

  List<_Row> _apply(List<_Row> rows, Map<String, String> agencies) {
    final q = _query.trim().toLowerCase();
    return rows.where((r) {
      final u = r.user;
      if (_role != null && u.userType != _role) return false;
      if (_bireyselOnly && u.accountKind != AccountKind.bireysel) return false;
      if (_filter == CcUserFilter.active24 && !_activeWithin(r.lastActive, const Duration(hours: 24))) return false;
      if (_filter == CcUserFilter.active30 && !_activeWithin(r.lastActive, const Duration(days: 30))) return false;
      if (q.isEmpty) return true;
      final agency = agencies[u.agencyId] ?? '';
      return u.userName.toLowerCase().contains(q) ||
          u.userTc.contains(q) ||
          u.userTel.contains(q) ||
          (u.email ?? '').toLowerCase().contains(q) ||
          agency.toLowerCase().contains(q);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final me = context.watch<AppStateProvider>().currentUser;
    if (me == null || !(me.usesControlCenter)) return NoAccessScreen(title: t.ccUsrTitle);

    return FutureBuilder<({List<_Row> rows, Map<String, String> agencies})>(
      future: _future,
      builder: (context, snap) {
        final data = snap.data;
        final rows = data == null ? const <_Row>[] : _apply(data.rows, data.agencies);
        final all = data?.rows ?? const <_Row>[];
        final now = DateTime.now();
        final roles = <String>{for (final r in all) r.user.userType}.toList()..sort();
        return CcPage(
          title: t.ccUsrTitle,
          subtitle: t.ccUsrSubtitle,
          onRefresh: _refresh,
          body: [
            if (snap.hasError)
              CcEmpty(icon: Icons.cloud_off_rounded, message: t.ccUsrLoadFailed)
            else if (data == null)
              const Padding(padding: EdgeInsets.all(40), child: Center(child: CircularProgressIndicator()))
            else ...[
              CcKpiGrid(children: [
                CcKpiTile(
                  icon: Icons.groups_rounded,
                  value: CcFmt.num0(all.length),
                  label: t.ccUsrTotal,
                  onTap: () => setState(() => _filter = CcUserFilter.all),
                ),
                CcKpiTile(
                  icon: Icons.bolt_rounded,
                  color: CcColors.info,
                  value: CcFmt.num0(all.where((r) => _activeWithin(r.lastActive, const Duration(hours: 24))).length),
                  label: t.ccUsrDau,
                  onTap: () => setState(() => _filter = CcUserFilter.active24),
                ),
                CcKpiTile(
                  icon: Icons.calendar_month_rounded,
                  color: CcColors.gold,
                  value: CcFmt.num0(all.where((r) => _activeWithin(r.lastActive, const Duration(days: 30))).length),
                  label: t.ccUsrMau,
                  onTap: () => setState(() => _filter = CcUserFilter.active30),
                ),
                CcKpiTile(
                  icon: Icons.person_add_alt_1_rounded,
                  color: CcColors.ok,
                  value: CcFmt.num0(all
                      .where((r) => r.user.createdAt != null && now.difference(r.user.createdAt!).inDays < 30)
                      .length),
                  label: t.ccUsrNew30,
                ),
              ]),
              const SizedBox(height: 4),
              TextField(
                onChanged: (v) => setState(() => _query = v),
                decoration: InputDecoration(
                  hintText: t.ccUsrSearch,
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(height: 10),
              _chips([
                (t.ccUsrAll, _filter == CcUserFilter.all, () => setState(() => _filter = CcUserFilter.all)),
                (t.ccUsrActive24, _filter == CcUserFilter.active24, () => setState(() => _filter = CcUserFilter.active24)),
                (t.ccUsrActive30, _filter == CcUserFilter.active30, () => setState(() => _filter = CcUserFilter.active30)),
              ]),
              const SizedBox(height: 6),
              _chips([
                (t.ccUsrAll, _role == null, () => setState(() => _role = null)),
                for (final r in roles) (ccRoleLabel(context, r), _role == r, () => setState(() => _role = r)),
                (t.ccPkgFilterBireysel, _bireyselOnly, () => setState(() => _bireyselOnly = !_bireyselOnly)),
              ]),
              const SizedBox(height: 12),
              CcSection(
                title: t.ccUsrCount(rows.length),
                child: rows.isEmpty
                    ? CcEmpty(icon: Icons.person_search_rounded, message: t.ccUsrEmpty)
                    : Column(
                        children: [
                          for (final r in rows)
                            _UserTile(
                              row: r,
                              agencyName: data.agencies[r.user.agencyId],
                              onTap: () => _showDetail(r, data.agencies[r.user.agencyId], me),
                            ),
                        ],
                      ),
              ),
            ],
          ],
        );
      },
    );
  }

  Widget _chips(List<(String, bool, VoidCallback)> items) => SizedBox(
        height: 38,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            for (final (label, selected, onTap) in items)
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 8),
                child: ChoiceChip(
                  label: Text(label),
                  selected: selected,
                  onSelected: (_) => onTap(),
                  showCheckmark: false,
                  selectedColor: CcColors.mid,
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: CcColors.mint),
                  labelStyle: TextStyle(fontWeight: FontWeight.w600, color: selected ? Colors.white : CcColors.ink),
                ),
              ),
          ],
        ),
      );

  void _showDetail(_Row r, String? agencyName, UserModel me) {
    final t = context.l10n;
    final u = r.user;
    final hasAgency = (u.agencyId ?? '').isNotEmpty;
    final canReset = AuthApiService.canReset(me, u);
    showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (ctx) => SafeArea(
        child: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  _Avatar(name: u.userName, role: u.userType, radius: 28),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(u.userName,
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: CcColors.ink)),
                        const SizedBox(height: 4),
                        CcBadge(text: ccRoleLabel(context, u.userType), color: ccRoleColor(u.userType)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              _info(Icons.badge_outlined, t.ccUsrTc, u.userTc.isEmpty ? '-' : u.userTc),
              // Kullanıcı ID (kopyalanabilir); PIN/şifre hiçbir zaman gösterilmez.
              if (!u.isMerchant) LoginIdRow(loginId: u.loginId, iconColor: CcColors.mid, labelWidth: 110),
              _info(Icons.phone_outlined, t.ccUsrPhone, u.userTel.isEmpty ? '-' : u.userTel),
              _info(Icons.business_outlined, t.ccUsrAgency, hasAgency ? (agencyName ?? u.agencyId!) : t.ccUsrNoAgency),
              _info(Icons.bolt_rounded, t.ccUsrLastActive,
                  r.lastActive == null ? t.ccUsrNeverActive : CcFmt.dateTime(r.lastActive)),
              _info(Icons.event_outlined, t.ccUsrCreated, CcFmt.date(u.createdAt)),
              if (u.accountKind == AccountKind.bireysel) ...[
                if ((u.email ?? '').isNotEmpty) _info(Icons.alternate_email_rounded, t.ccPkgEmail, u.email!),
                _PackageInfo(uid: u.id, info: _info),
                if (me.isSuperAdmin) ...[
                  const SizedBox(height: 8),
                  OutlinedButton.icon(
                    onPressed: () {
                      Navigator.pop(ctx);
                      Navigator.of(context).push(MaterialPageRoute<void>(
                        builder: (_) => CcPackagesScreen(initialQuery: (u.email ?? '').isNotEmpty ? u.email! : u.userName),
                      ));
                    },
                    icon: const Icon(Icons.workspace_premium_rounded),
                    label: Text(t.ccPkgUserOpen),
                  ),
                ],
              ],
              if (hasAgency) ...[
                const SizedBox(height: 14),
                FilledButton.icon(
                  onPressed: () {
                    Navigator.pop(ctx);
                    Navigator.pushNamed(context, '/super-admin/agency', arguments: u.agencyId);
                  },
                  icon: const Icon(Icons.open_in_new_rounded),
                  label: Text(t.ccUsrOpenAgency),
                ),
              ],
              if (canReset) ...[
                const SizedBox(height: 10),
                ResetSecretButton(
                  target: u,
                  onIssued: (c) {
                    // Servis login_id üretmiş olabilir; liste yenilensin.
                    if ((u.loginId ?? '') != c.loginId && mounted) _refresh();
                  },
                ),
              ],
              // Süper admin: kullanıcının ekranını onun gözünden görme (henüz pasif).
              if (me.isSuperAdmin) ...[
                const SizedBox(height: 10),
                const ViewAsUserButton(),
              ],
            ],
          ),
          ),
        ),
      ),
    );
  }

  Widget _info(IconData icon, String label, String value) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 7),
        child: Row(
          children: [
            Icon(icon, size: 20, color: CcColors.mid),
            const SizedBox(width: 12),
            Text(label, style: const TextStyle(color: AppColors.textMuted)),
            const SizedBox(width: 12),
            Expanded(
              child: Text(value,
                  textAlign: TextAlign.end, style: const TextStyle(fontWeight: FontWeight.w600, color: CcColors.ink)),
            ),
          ],
        ),
      );
}

/// Bireysel kullanıcının paket satırı (entitlements/{uid}); okunamazsa sessizce gizlenir.
class _PackageInfo extends StatelessWidget {
  final String uid;
  final Widget Function(IconData, String, String) info;
  const _PackageInfo({required this.uid, required this.info});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return FutureBuilder<PackageRow?>(
      future: PackageService.instance.forUser(uid),
      builder: (context, snap) {
        if (snap.connectionState != ConnectionState.done) return const SizedBox(height: 4);
        if (snap.hasError) return const SizedBox.shrink();
        final p = snap.data;
        if (p == null) return info(Icons.workspace_premium_outlined, t.ccPkgUserPackage, t.ccPkgUserNoPackage);
        final status = switch (p.tabAt(DateTime.now())) {
          PackageTab.pending => t.ccPkgStatusPending,
          PackageTab.active => t.ccPkgStatusActive,
          PackageTab.expired => t.ccPkgStatusExpired,
        };
        return info(Icons.workspace_premium_rounded, t.ccPkgUserPackage,
            '${PaketSecCard.paketName(context, p.paket)} · $status · ${CcFmt.date(p.paidUntil)}');
      },
    );
  }
}

class _Avatar extends StatelessWidget {
  final String name;
  final String role;
  final double radius;
  const _Avatar({required this.name, required this.role, this.radius = 20});

  @override
  Widget build(BuildContext context) {
    final c = ccRoleColor(role);
    return CircleAvatar(
      radius: radius,
      backgroundColor: c.withValues(alpha: 0.14),
      child: Text(
        name.trim().isEmpty ? '?' : name.trim().characters.first.toUpperCase(),
        style: TextStyle(color: c, fontWeight: FontWeight.w800, fontSize: radius * 0.8),
      ),
    );
  }
}

class _UserTile extends StatelessWidget {
  final _Row row;
  final String? agencyName;
  final VoidCallback onTap;
  const _UserTile({required this.row, required this.agencyName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final u = row.user;
    final active = row.lastActive != null && DateTime.now().difference(row.lastActive!).inHours < 24;
    return CcPanel(
      onTap: onTap,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      child: Row(
        children: [
          Stack(
            children: [
              _Avatar(name: u.userName, role: u.userType),
              if (active)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 11,
                    height: 11,
                    decoration: BoxDecoration(
                      color: CcColors.ok,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(u.userName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.ink)),
                const SizedBox(height: 2),
                Text(
                  '${(u.agencyId ?? '').isEmpty ? t.ccUsrNoAgency : (agencyName ?? u.agencyId!)} · '
                  '${row.lastActive == null ? t.ccUsrNeverActive : ccRelativeTime(context, row.lastActive)}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                ),
              ],
            ),
          ),
          CcBadge(text: ccRoleLabel(context, u.userType), color: ccRoleColor(u.userType)),
        ],
      ),
    );
  }
}

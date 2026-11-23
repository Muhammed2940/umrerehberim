import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/change_secret_tile.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../admin/screens/super_admin_dashboard.dart';
import '../../admin/widgets/confirm_dialog.dart';
import '../../auth/models/user_model.dart';
import '../../auth/providers/login_provider.dart';
import '../accounts/cc_migrate_screen.dart';
import '../moderation/cc_hatim_moderation_screen.dart';
import '../moderation/cc_prayer_times_screen.dart';
import '../moderation/cc_reviews_screen.dart';
import '../packages/cc_packages_screen.dart';
import '../settings/cc_platform_settings_screen.dart';
import '../audit/audit_entry_tile.dart';
import '../audit/audit_labels.dart';
import '../shared/audit_log.dart';
import '../shared/cc_widgets.dart';
import '../users/cc_users_screen.dart';

/// Kontrol Merkezi ana ekranı: süper admin, destek ve muhasebe buraya düşer.
/// Üstte canlı KPI şeridi (count/sum toplama sorguları), altta role göre modül
/// ızgarası, süper admine son denetim kayıtları.
class ControlCenterScreen extends StatefulWidget {
  const ControlCenterScreen({super.key});

  @override
  State<ControlCenterScreen> createState() => _ControlCenterScreenState();
}

/// KPI değerleri; okunamayan/yetkisiz olanlar null kalır (kutusu gizlenir).
class _Kpis {
  int? agencies;
  int? users;
  int? activeShops;
  double? volume30;
  int? tx30;
  int? dau;
  int? openMessages;
}

class _Module {
  final String title;
  final String desc;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;
  final bool readOnly;
  const _Module(this.title, this.desc, this.icon, this.color, this.onTap, {this.readOnly = false});
}

class _ControlCenterScreenState extends State<ControlCenterScreen> {
  final _db = FirebaseFirestore.instance;
  Future<_Kpis>? _kpis;
  Future<List<AuditLogEntry>>? _recent;

  @override
  void initState() {
    super.initState();
    _reload();
  }

  UserModel? get _user => context.read<AppStateProvider>().currentUser;

  void _reload() {
    final u = _user;
    _kpis = _loadKpis(u);
    _recent = (u?.isSuperAdmin ?? false) ? _loadRecent() : null;
  }

  Future<void> _refresh() async {
    setState(_reload);
    await Future.wait<Object?>([?_kpis, ?_recent]);
  }

  static Future<T?> _safe<T>(Future<T> f) async {
    try {
      return await f;
    } catch (e) {
      debugPrint('ControlCenter KPI: $e');
      return null;
    }
  }

  Future<int> _count(Query<Map<String, dynamic>> q) async => (await q.count().get()).count ?? 0;

  Future<_Kpis> _loadKpis(UserModel? u) async {
    final k = _Kpis();
    if (u == null) return k;
    final finance = u.isSuperAdmin || u.isFinance;
    final hq = u.isSuperAdmin || u.isSupport;
    final dayAgo = Timestamp.fromDate(DateTime.now().subtract(const Duration(hours: 24)));
    await Future.wait([
      _safe(_count(_db.collection('agencies'))).then((v) => k.agencies = v),
      _safe(_count(_db.collection('users'))).then((v) => k.users = v),
      _safe(_count(_db.collection('users').where('last_active_at', isGreaterThanOrEqualTo: dayAgo)))
          .then((v) => k.dau = v),
      if (finance)
        _safe(_count(_db.collection('shops').where('is_active', isEqualTo: true))).then((v) => k.activeShops = v),
      if (finance)
        _safe(_volume30()).then((v) {
          k.volume30 = v?.sum;
          k.tx30 = v?.count;
        }),
      if (hq)
        _safe(_count(_db
                .collection('agency_messages')
                .where('from_side', isEqualTo: 'agency')
                .where('read_by_hq', isEqualTo: false)))
            .then((v) => k.openMessages = v),
    ]);
    return k;
  }

  /// Son 30 gün, iptal edilmemiş işlemlerin net toplamı ve adedi.
  /// Önce sunucu toplaması (indeks: shop_transactions status ASC + created_at ASC);
  /// indeks yoksa belgeleri okuyup istemcide toplar.
  Future<({double sum, int count})> _volume30() async {
    final since = Timestamp.fromDate(DateTime.now().subtract(const Duration(days: 30)));
    final base = _db.collection('shop_transactions').where('created_at', isGreaterThanOrEqualTo: since);
    try {
      final agg = await base.where('status', isEqualTo: 'ok').aggregate(sum('amount_net'), count()).get();
      return (sum: (agg.getSum('amount_net') ?? 0).toDouble(), count: agg.count ?? 0);
    } catch (e) {
      debugPrint('ControlCenter hacim toplaması, istemci yedeği: $e');
      final snap = await base.get();
      var total = 0.0;
      var n = 0;
      for (final d in snap.docs) {
        final m = d.data();
        if ((m['status'] ?? 'ok') != 'ok') continue;
        total += (m['amount_net'] as num?)?.toDouble() ?? 0;
        n++;
      }
      return (sum: total, count: n);
    }
  }

  Future<List<AuditLogEntry>> _loadRecent() async {
    final s = await AuditLog.collection.orderBy('created_at', descending: true).limit(5).get();
    return s.docs.map(AuditLogEntry.fromFirestore).toList();
  }

  Future<void> _logout() async {
    final t = context.l10n;
    final ok = await showConfirmDialog(
      context,
      title: t.ccLogout,
      message: t.ccLogoutConfirm,
      confirmText: t.ccLogout,
    );
    if (ok && mounted) await context.read<LoginProvider>().logout(context);
  }

  void _go(String route) => Navigator.pushNamed(context, route);

  void _openUsers(CcUserFilter filter) => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => CcUsersScreen(initialFilter: filter)),
      );

  void _openAgencies() => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const SuperAdminDashboard(pushed: true)),
      );

  List<_Module> _modules(UserModel u) {
    final t = context.l10n;
    final agencies = _Module(
      t.ccModAgencies,
      u.isSuperAdmin ? t.ccModAgenciesDesc : t.ccModAgenciesReadDesc,
      Icons.business_rounded,
      const Color(0xFFD9822B),
      _openAgencies,
      readOnly: !u.isSuperAdmin,
    );
    final shops = _Module(t.ccModShops, t.ccModShopsDesc, Icons.storefront_rounded, CcColors.mid,
        () => _go('/admin/dukkanlar'));
    final reports = _Module(t.ccModMerchantReports, t.ccModMerchantReportsDesc, Icons.receipt_long_rounded,
        CcColors.deep, () => _go('/admin/esnaf-rapor'));
    final analytics =
        _Module(t.ccModAnalytics, t.ccModAnalyticsDesc, Icons.insights_rounded, CcColors.info, () => _go('/cc/analytics'));
    final perf = _Module(t.ccModMerchantPerf, t.ccModMerchantPerfDesc, Icons.emoji_events_rounded, CcColors.gold,
        () => _go('/cc/merchant-performance'));
    final loyalty = _Module(t.ccModLoyalty, t.ccModLoyaltyDesc, Icons.stars_rounded, CcColors.gold,
        () => _go('/cc/loyalty'),
        readOnly: !u.isSuperAdmin);
    final coupons = _Module(t.ccModCoupons, t.ccModCouponsDesc, Icons.local_offer_rounded, const Color(0xFF8E5A9B),
        () => _go('/cc/coupons'),
        readOnly: !u.isSuperAdmin);
    final finance = _Module(t.ccModFinance, t.ccModFinanceDesc, Icons.account_balance_wallet_rounded, CcColors.info,
        () => _go('/cc/finance'));
    final risk =
        _Module(t.ccModRisk, t.ccModRiskDesc, Icons.shield_rounded, CcColors.danger, () => _go('/cc/risk'));
    final messages =
        _Module(t.ccModMessages, t.ccModMessagesDesc, Icons.forum_rounded, CcColors.sage, () => _go('/cc/messages'));
    final audit =
        _Module(t.ccModAudit, t.ccModAuditDesc, Icons.history_rounded, CcColors.deep, () => _go('/cc/audit'));
    final staff = _Module(t.ccModStaff, t.ccModStaffDesc, Icons.admin_panel_settings_rounded, CcColors.mid,
        () => _go('/cc/staff'));

    // Yeni giriş: eski (TC) hesapları Kullanıcı ID + PIN/şifreye taşıma (yalnız süper admin).
    final migrate = _Module(t.authApiMigrateTitle, t.authApiMigrateDesc, Icons.swap_horiz_rounded, CcColors.info,
        () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CcMigrateScreen())));

    // Platform yönetimi (yalnız süper admin): paketler, ayarlar, moderasyon, içerik.
    Widget Function() page(Widget w) => () => w;
    void open(Widget Function() b) => Navigator.push(context, MaterialPageRoute(builder: (_) => b()));
    final packages = _Module(t.ccModPackages, t.ccModPackagesDesc, Icons.workspace_premium_rounded, CcColors.gold,
        () => open(page(const CcPackagesScreen())));
    final platform = _Module(t.ccModPlatformSettings, t.ccModPlatformSettingsDesc, Icons.tune_rounded, CcColors.info,
        () => open(page(const CcPlatformSettingsScreen())));
    final hatim = _Module(t.ccModHatim, t.ccModHatimDesc, Icons.groups_rounded, CcColors.mid,
        () => open(page(const CcHatimModerationScreen())));
    final prayer = _Module(t.ccModPrayer, t.ccModPrayerDesc, Icons.access_time_filled_rounded, CcColors.gold,
        () => open(page(const CcPrayerTimesScreen())));
    final reviews = _Module(t.ccModReviews, t.ccModReviewsDesc, Icons.rate_review_rounded, CcColors.info,
        () => open(page(const CcReviewsScreen())));

    if (u.isSuperAdmin) {
      return [
        agencies, shops, packages, reports, analytics, perf, loyalty, coupons, finance, risk, reviews, messages,
        hatim, prayer, platform, audit, staff, migrate,
      ];
    }
    if (u.isSupport) return [agencies, messages, risk];
    if (u.isFinance) return [finance, reports, perf, loyalty, coupons];
    return const [];
  }

  String _greeting() {
    final t = context.l10n;
    final h = DateTime.now().hour;
    if (h < 12) return t.ccGreetingMorning;
    if (h < 18) return t.ccGreetingDay;
    return t.ccGreetingEvening;
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final u = context.watch<AppStateProvider>().currentUser;
    if (u == null) return const Scaffold(body: SizedBox.shrink());
    return Scaffold(
      backgroundColor: CcColors.bg,
      body: RefreshIndicator(
        onRefresh: _refresh,
        edgeOffset: 120,
        child: ListView(
          padding: EdgeInsets.zero,
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            _hero(u),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CcSection(title: t.ccSectionOverview, child: _kpiStrip(u)),
                  CcSection(title: t.ccSectionModules, child: _moduleGrid(_modules(u))),
                  if (u.isSuperAdmin)
                    CcSection(
                      title: t.ccSectionRecent,
                      trailing: TextButton(onPressed: () => _go('/cc/audit'), child: Text(t.ccSeeAll)),
                      child: _recentPanel(),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _hero(UserModel u) {
    final t = context.l10n;
    final top = MediaQuery.paddingOf(context).top;
    final name = u.userName.trim().isEmpty ? ccRoleLabel(context, u.userType) : u.userName.trim();
    return Container(
      padding: EdgeInsets.fromLTRB(20, top + 14, 12, 26),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [CcColors.ink, CcColors.deep, CcColors.mid],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(28)),
      ),
      child: Stack(
        children: [
          PositionedDirectional(
            end: -10,
            top: 10,
            child: Icon(Icons.hub_rounded, size: 120, color: Colors.white.withValues(alpha: 0.06)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.dashboard_customize_rounded, color: Colors.white, size: 20),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(t.ccTitle,
                        style: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w700)),
                  ),
                  // Süper admin, destek, muhasebe: Şifremi değiştir (yeni giriş).
                  IconButton(
                    tooltip: t.authApiChangePassword,
                    onPressed: () => showChangeSecretDialog(context, u.userType),
                    icon: const Icon(Icons.password_rounded, color: Colors.white),
                  ),
                  IconButton(
                    tooltip: t.ccLogout,
                    onPressed: _logout,
                    icon: const Icon(Icons.logout_rounded, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Text(_greeting(), style: const TextStyle(color: Colors.white70, fontSize: 14)),
              const SizedBox(height: 2),
              Text(name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w800)),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: ccRoleColor(u.userType).withValues(alpha: 0.25),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white24),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.verified_user_rounded, size: 14, color: Colors.white),
                        const SizedBox(width: 4),
                        Text(ccRoleLabel(context, u.userType),
                            style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(t.ccSubtitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: Colors.white70, fontSize: 12)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _kpiStrip(UserModel u) {
    final t = context.l10n;
    return FutureBuilder<_Kpis>(
      future: _kpis,
      builder: (context, snap) => CcAsync<_Kpis>(
        snapshot: snap,
        errorText: t.ccLoadFailed,
        builder: (k) {
          final tiles = <Widget>[
            if (k.agencies != null)
              CcKpiTile(
                icon: Icons.business_rounded,
                value: CcFmt.num0(k.agencies!),
                label: t.ccKpiAgencies,
                color: const Color(0xFFD9822B),
                onTap: _openAgencies,
              ),
            if (k.users != null)
              CcKpiTile(
                icon: Icons.groups_rounded,
                value: CcFmt.num0(k.users!),
                label: t.ccKpiUsers,
                onTap: () => _openUsers(CcUserFilter.all),
              ),
            if (k.dau != null)
              CcKpiTile(
                icon: Icons.bolt_rounded,
                value: CcFmt.num0(k.dau!),
                label: t.ccKpiDau,
                color: CcColors.info,
                delta: (k.users ?? 0) > 0 ? CcFmt.pct(k.dau! * 100 / k.users!) : null,
                onTap: () => _openUsers(CcUserFilter.active24),
              ),
            if (k.activeShops != null)
              CcKpiTile(
                icon: Icons.storefront_rounded,
                value: CcFmt.num0(k.activeShops!),
                label: t.ccKpiShops,
                color: CcColors.sage,
                onTap: u.isSuperAdmin ? () => _go('/admin/dukkanlar') : null,
              ),
            if (k.volume30 != null)
              CcKpiTile(
                icon: Icons.payments_rounded,
                value: CcFmt.sar(k.volume30!),
                label: t.ccKpiVolume30,
                color: CcColors.gold,
                onTap: () => _go(u.isSuperAdmin || u.isFinance ? '/cc/finance' : '/admin/esnaf-rapor'),
              ),
            if (k.tx30 != null)
              CcKpiTile(
                icon: Icons.receipt_long_rounded,
                value: CcFmt.num0(k.tx30!),
                label: t.ccKpiTx30,
                color: CcColors.deep,
                onTap: () => _go('/admin/esnaf-rapor'),
              ),
            if (k.openMessages != null)
              CcKpiTile(
                icon: Icons.mark_chat_unread_rounded,
                value: CcFmt.num0(k.openMessages!),
                label: t.ccKpiOpenMessages,
                color: k.openMessages! > 0 ? CcColors.danger : CcColors.mid,
                onTap: () => _go('/cc/messages'),
              ),
          ];
          if (tiles.isEmpty) return CcEmpty(icon: Icons.cloud_off_rounded, message: t.ccLoadFailed);
          return CcKpiGrid(children: tiles);
        },
      ),
    );
  }

  Widget _moduleGrid(List<_Module> modules) => LayoutBuilder(
        builder: (context, c) {
          final cols = c.maxWidth > 700 ? 3 : 2;
          const gap = 12.0;
          final w = (c.maxWidth - gap * (cols - 1)) / cols;
          return Wrap(
            spacing: gap,
            runSpacing: gap,
            children: [for (final m in modules) SizedBox(width: w, height: 148, child: _ModuleCard(module: m))],
          );
        },
      );

  Widget _recentPanel() {
    final t = context.l10n;
    return FutureBuilder<List<AuditLogEntry>>(
      future: _recent,
      builder: (context, snap) => CcAsync<List<AuditLogEntry>>(
        snapshot: snap,
        errorText: t.ccLoadFailed,
        builder: (list) {
          if (list.isEmpty) return CcPanel(child: CcEmpty(icon: Icons.history_rounded, message: t.ccNoRecent));
          return CcPanel(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            onTap: () => _go('/cc/audit'),
            child: Column(
              children: [
                for (var i = 0; i < list.length; i++) ...[
                  if (i > 0) const Divider(height: 1, color: AppColors.divider),
                  AuditEntryTile(entry: list[i], expandable: false),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}

class _ModuleCard extends StatelessWidget {
  final _Module module;
  const _ModuleCard({required this.module});

  @override
  Widget build(BuildContext context) {
    final m = module;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [BoxShadow(color: Color(0x14051F20), blurRadius: 14, offset: Offset(0, 4))],
      ),
      clipBehavior: Clip.antiAlias,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: m.onTap,
          child: Stack(
            children: [
              PositionedDirectional(
                top: 0,
                start: 0,
                end: 0,
                child: Container(height: 4, color: m.color),
              ),
              PositionedDirectional(
                end: -14,
                bottom: -14,
                child: Icon(m.icon, size: 72, color: m.color.withValues(alpha: 0.06)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 16, 14, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(9),
                          decoration: BoxDecoration(
                            color: m.color.withValues(alpha: 0.12),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(m.icon, color: m.color, size: 22),
                        ),
                        const Spacer(),
                        if (m.readOnly)
                          CcBadge(text: context.l10n.ccReadOnly, color: AppColors.textMuted, icon: Icons.visibility_rounded)
                        else
                          Icon(Icons.arrow_forward_ios_rounded, size: 14, color: m.color.withValues(alpha: 0.6)),
                      ],
                    ),
                    const Spacer(),
                    Text(m.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 14.5, color: CcColors.ink)),
                    const SizedBox(height: 3),
                    Text(m.desc,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 12, height: 1.25, color: AppColors.textMuted)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

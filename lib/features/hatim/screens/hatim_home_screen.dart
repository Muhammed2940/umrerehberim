import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_theme.dart';
import '../data/hatim_service.dart';
import '../models/hatim_group.dart';

/// Toplu Hatim ana ekranı: "Gruplarım" / "Keşfet" sekmeleri ve yeni grup FAB'ı.
class HatimHomeScreen extends StatefulWidget {
  const HatimHomeScreen({super.key});

  @override
  State<HatimHomeScreen> createState() => _HatimHomeScreenState();
}

class _HatimHomeScreenState extends State<HatimHomeScreen> {
  final _service = HatimService();
  Stream<List<HatimGroup>>? _mine;
  Stream<List<HatimGroup>>? _discover;
  String? _forUid;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final user = context.read<AppStateProvider>().currentUser;
    if (user != null && user.id != _forUid) {
      _forUid = user.id;
      _mine = _service.myGroups(user.id);
      _discover = _service.discover(user.id, user.agencyId);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final user = context.watch<AppStateProvider>().currentUser;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(l.hatimTitle),
          // Koyu başlık çubuğunda okunur "hap" sekmeler (gezilecek yerler ekranıyla aynı).
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
                  for (final t in [l.hatimTabMine, l.hatimTabDiscover])
                    Tab(height: 40, child: FittedBox(fit: BoxFit.scaleDown, child: Text(t))),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: user == null || user.isMerchant
            ? null
            : FloatingActionButton.extended(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                icon: const Icon(Icons.add_rounded),
                label: Text(l.hatimNewGroup),
                onPressed: () async {
                  final gid = await Navigator.pushNamed(context, '/hatim/create');
                  if (gid is String && context.mounted) {
                    Navigator.pushNamed(context, '/hatim/group', arguments: gid);
                  }
                },
              ),
        body: user == null
            ? Center(child: Text(l.hatimErrNotSignedIn))
            : TabBarView(
                children: [
                  _GroupList(stream: _mine, empty: l.hatimEmptyMine, emptyIcon: Icons.menu_book_rounded),
                  _GroupList(stream: _discover, empty: l.hatimEmptyDiscover, emptyIcon: Icons.travel_explore_rounded),
                ],
              ),
      ),
    );
  }
}

class _GroupList extends StatelessWidget {
  const _GroupList({required this.stream, required this.empty, required this.emptyIcon});

  final Stream<List<HatimGroup>>? stream;
  final String empty;
  final IconData emptyIcon;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<HatimGroup>>(
      stream: stream,
      builder: (context, snap) {
        if (snap.hasError) {
          return _Message(icon: Icons.cloud_off_rounded, text: context.l10n.hatimLoadError);
        }
        if (!snap.hasData) return const Center(child: CircularProgressIndicator());
        final groups = snap.data!;
        if (groups.isEmpty) return _Message(icon: emptyIcon, text: empty);
        return ListView.separated(
          padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 96),
          itemCount: groups.length,
          separatorBuilder: (_, _) => const SizedBox(height: 12),
          itemBuilder: (context, i) => HatimGroupCard(group: groups[i]),
        );
      },
    );
  }
}

class _Message extends StatelessWidget {
  const _Message({required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 56, color: AppColors.sage),
              const SizedBox(height: 12),
              Text(text, textAlign: TextAlign.center, style: AppTextStyles.muted.copyWith(fontSize: 14.5)),
            ],
          ),
        ),
      );
}

/// Liste kartı: ad, birim rozeti, ilerleme, üye sayısı, tur, hedef tarih.
class HatimGroupCard extends StatelessWidget {
  const HatimGroupCard({super.key, required this.group});

  final HatimGroup group;

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final g = group;
    final locale = Localizations.localeOf(context).toString();
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: () => Navigator.pushNamed(context, '/hatim/group', arguments: g.id),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: g.isCompleted ? AppColors.success.withValues(alpha: 0.5) : AppColors.divider),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(g.name, style: AppTextStyles.cardTitle, maxLines: 2, overflow: TextOverflow.ellipsis),
                  ),
                  const SizedBox(width: 8),
                  HatimBadge(
                    text: g.isCuz ? l.hatimUnitCuz : l.hatimUnitSayfa,
                    color: AppColors.primary,
                  ),
                  if (g.isCompleted) ...[
                    const SizedBox(width: 6),
                    HatimBadge(text: l.hatimCompletedBadge, color: AppColors.success, icon: Icons.check_rounded),
                  ],
                ],
              ),
              if (g.niyet.isNotEmpty) ...[
                const SizedBox(height: 4),
                Text(g.niyet, style: AppTextStyles.muted, maxLines: 1, overflow: TextOverflow.ellipsis),
              ],
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: LinearProgressIndicator(
                        value: g.progress,
                        minHeight: 9,
                        backgroundColor: AppColors.mint,
                        color: g.isCompleted ? AppColors.success : AppColors.primary,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(l.hatimProgress(g.doneCount, g.total),
                      style: const TextStyle(fontWeight: FontWeight.w700, color: AppColors.text)),
                ],
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 14,
                runSpacing: 6,
                children: [
                  _Meta(icon: Icons.people_alt_rounded, text: l.hatimMembers(g.memberCount)),
                  _Meta(icon: Icons.replay_rounded, text: l.hatimRound(g.round)),
                  _Meta(
                    icon: g.isPublic ? Icons.public_rounded : Icons.lock_rounded,
                    text: g.isPublic ? l.hatimPublicBadge : l.hatimPrivateBadge,
                  ),
                  if (g.deadline != null)
                    _Meta(
                      icon: Icons.event_rounded,
                      text: l.hatimDeadline(DateFormat.yMMMd(locale).format(g.deadline!)),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Meta extends StatelessWidget {
  const _Meta({required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 15, color: AppColors.textMuted),
          const SizedBox(width: 4),
          Text(text, style: AppTextStyles.muted.copyWith(fontSize: 12.5)),
        ],
      );
}

/// Küçük yuvarlak rozet (birim, durum).
class HatimBadge extends StatelessWidget {
  const HatimBadge({super.key, required this.text, required this.color, this.icon});
  final String text;
  final Color color;
  final IconData? icon;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsetsDirectional.fromSTEB(9, 4, 9, 4),
        decoration: BoxDecoration(color: color.withValues(alpha: 0.12), borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[Icon(icon, size: 13, color: color), const SizedBox(width: 3)],
            Text(text, style: TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.w700)),
          ],
        ),
      );
}

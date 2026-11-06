import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../admin/models/trip_model.dart';
import '../../admin/widgets/no_access_screen.dart';
import '../../auth/models/user_model.dart';
import '../../esnaf/esnaf_config.dart';
import '../../esnaf/models/point_adjustment.dart';
import '../../esnaf/models/shop_transaction.dart';
import '../shared/cc_widgets.dart';
import 'loyalty_service.dart';

/// Kontrol Merkezi › Sadakat Puanları (`/cc/loyalty`).
/// Süper admin: tam yetki (puan ver/düş, geri al, toplu yükleme). Muhasebe: salt okuma.
class CcLoyaltyScreen extends StatefulWidget {
  const CcLoyaltyScreen({super.key});

  @override
  State<CcLoyaltyScreen> createState() => _CcLoyaltyScreenState();
}

enum _AdjFilter { all, granted, deducted, bulk, reverted }

class _CcLoyaltyScreenState extends State<CcLoyaltyScreen> {
  Future<LoyaltyData>? _future;
  final _search = TextEditingController();
  String _agency = ''; // '' = tüm acenteler
  _AdjFilter _adjFilter = _AdjFilter.all;
  int _guestLimit = 25;
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    _reload();
  }

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  Future<void> _reload() {
    final f = LoyaltyService.instance.load();
    setState(() => _future = f);
    return f.then((_) {}, onError: (_) {});
  }

  UserModel? get _me => context.read<AppStateProvider>().currentUser;

  Future<bool> _run(Future<void> Function() action, String success) async {
    if (_busy) return false;
    final errText = context.l10n.ccLoyActionError;
    setState(() => _busy = true);
    try {
      await action();
      GlobalSnackbar.showSuccess(success);
      if (mounted) _reload();
      return true;
    } catch (e) {
      debugPrint('CcLoyaltyScreen: $e');
      GlobalSnackbar.showError(errText);
      return false;
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  // ------------------------------------------------------------------ eylemler
  Future<void> _adjust(UserModel guest, {required bool deduct}) async {
    final me = _me;
    if (me == null) return;
    final r = await showDialog<({int points, String reason})>(
      context: context,
      builder: (_) => _PointsDialog(guestName: guest.userName, deduct: deduct),
    );
    if (r == null || !mounted) return;
    final points = deduct ? -r.points : r.points;
    final l = context.l10n;
    await _run(
      () => LoyaltyService.instance.adjust(actor: me, guest: guest, points: points, reason: r.reason),
      deduct ? l.ccLoyDeductedOk(r.points) : l.ccLoyGrantedOk(r.points),
    );
  }

  Future<void> _revert(PointAdjustment a) async {
    final me = _me;
    if (me == null || !a.canRevert) return;
    final l = context.l10n;
    final ctrl = TextEditingController(text: l.ccLoyRevertDefaultReason(a.reason));
    final reason = await showDialog<String>(
      context: context,
      builder: (ctx) {
        String? err;
        return StatefulBuilder(
          builder: (ctx, setD) => AlertDialog(
            icon: const Icon(Icons.undo_rounded, color: CcColors.warn, size: 36),
            title: Text(l.ccLoyRevertTitle),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l.ccLoyRevertBody(a.guestName, _signed(a.points), _signed(-a.points))),
                const SizedBox(height: 12),
                TextField(
                  controller: ctrl,
                  maxLength: 200,
                  decoration: InputDecoration(labelText: l.ccLoyReason, errorText: err, border: const OutlineInputBorder()),
                ),
              ],
            ),
            actions: [
              TextButton(onPressed: () => Navigator.pop(ctx), child: Text(l.commonCancel)),
              FilledButton(
                style: FilledButton.styleFrom(backgroundColor: CcColors.warn),
                onPressed: () {
                  final v = ctrl.text.trim();
                  if (v.length < 3) {
                    setD(() => err = l.ccLoyReasonRequired);
                    return;
                  }
                  Navigator.pop(ctx, v);
                },
                child: Text(l.ccLoyRevertAction),
              ),
            ],
          ),
        );
      },
    );
    ctrl.dispose();
    if (reason == null || !mounted) return;
    await _run(() => LoyaltyService.instance.revert(actor: me, original: a, reason: reason), l.ccLoyRevertedOk);
  }

  Future<void> _bulk(LoyaltyData data) async {
    final me = _me;
    if (me == null) return;
    final plan = await showDialog<_BulkPlan>(
      context: context,
      builder: (_) => _BulkDialog(data: data),
    );
    if (plan == null || !mounted) return;
    final l = context.l10n;
    final progress = ValueNotifier<int>(0);
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => PopScope(
        canPop: false,
        child: AlertDialog(
          title: Text(l.ccLoyBulkRunning),
          content: ValueListenableBuilder<int>(
            valueListenable: progress,
            builder: (_, v, _) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                LinearProgressIndicator(value: plan.guests.isEmpty ? null : v / plan.guests.length),
                const SizedBox(height: 10),
                Text('$v / ${plan.guests.length}'),
              ],
            ),
          ),
        ),
      ),
    );
    var ok = false;
    try {
      await LoyaltyService.instance.bulkGrant(
        actor: me,
        guests: plan.guests,
        points: plan.points,
        reason: plan.reason,
        agencyId: plan.agencyId,
        agencyName: data.agencies[plan.agencyId] ?? plan.agencyId,
        tripId: plan.trip?.id ?? '',
        tripName: plan.trip?.name ?? '',
        onProgress: (d) => progress.value = d,
      );
      ok = true;
    } catch (e) {
      debugPrint('Toplu puan: $e');
    }
    if (!mounted) return;
    Navigator.of(context, rootNavigator: true).pop();
    final done = progress.value;
    progress.dispose();
    if (ok) {
      GlobalSnackbar.showSuccess(l.ccLoyBulkOk(plan.guests.length, plan.points));
    } else {
      GlobalSnackbar.showError(done > 0 ? l.ccLoyBulkPartial(done, plan.guests.length) : l.ccLoyActionError);
    }
    _reload();
  }

  void _openGuest(LoyaltyData data, UserModel g, {required bool canEdit}) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      backgroundColor: CcColors.bg,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (ctx) => _GuestSheet(
        data: data,
        guest: g,
        canEdit: canEdit,
        onAdjust: (deduct) {
          Navigator.pop(ctx);
          _adjust(g, deduct: deduct);
        },
        onRevert: (a) {
          Navigator.pop(ctx);
          _revert(a);
        },
      ),
    );
  }

  // ------------------------------------------------------------------ arayüz
  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final user = context.watch<AppStateProvider>().currentUser;
    if (user == null || !(user.isSuperAdmin || user.isFinance)) {
      return NoAccessScreen(title: l.ccLoyTitle);
    }
    final canEdit = user.isSuperAdmin;
    return FutureBuilder<LoyaltyData>(
      future: _future,
      builder: (context, snap) {
        final data = snap.data;
        return CcPage(
          title: l.ccLoyTitle,
          subtitle: canEdit ? l.ccLoySubtitle : l.ccLoyReadOnly,
          onRefresh: _reload,
          actions: [
            if (_busy)
              const Padding(
                padding: EdgeInsets.all(16),
                child: SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white)),
              )
            else
              IconButton(tooltip: l.ccLoyRefresh, onPressed: _reload, icon: const Icon(Icons.refresh_rounded)),
          ],
          floatingActionButton: canEdit && data != null
              ? FloatingActionButton.extended(
                  backgroundColor: CcColors.gold,
                  foregroundColor: Colors.white,
                  onPressed: _busy ? null : () => _bulk(data),
                  icon: const Icon(Icons.groups_rounded),
                  label: Text(l.ccLoyBulkAction),
                )
              : null,
          body: [
            CcAsync<LoyaltyData>(
              snapshot: snap,
              errorText: l.ccLoyLoadError,
              builder: (d) => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _kpis(d),
                  const SizedBox(height: 8),
                  _guests(d, canEdit: canEdit),
                  _feed(d, canEdit: canEdit),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _kpis(LoyaltyData d) {
    final l = context.l10n;
    return CcKpiGrid(
      children: [
        CcKpiTile(
          icon: Icons.stars_rounded,
          color: CcColors.gold,
          value: CcFmt.num0(d.circulation),
          label: l.ccLoyKpiCirculation,
        ),
        CcKpiTile(
          icon: Icons.card_giftcard_rounded,
          color: CcColors.mid,
          value: CcFmt.num0(d.grantedThisMonth),
          label: l.ccLoyKpiGrantedMonth,
        ),
        CcKpiTile(
          icon: Icons.shopping_bag_rounded,
          color: CcColors.info,
          value: CcFmt.num0(d.totalSpent),
          label: l.ccLoyKpiSpent,
        ),
        CcKpiTile(
          icon: Icons.payments_rounded,
          color: CcColors.ok,
          value: CcFmt.sar(d.redeemedSar),
          label: l.ccLoyKpiRedeemed,
        ),
      ],
    );
  }

  Widget _guests(LoyaltyData d, {required bool canEdit}) {
    final l = context.l10n;
    final q = _search.text.trim().toLowerCase();
    final list = d.guestPoints.where((g) {
      if (_agency.isNotEmpty && g.user.agencyId != _agency) return false;
      if (q.isEmpty) return true;
      return g.user.userName.toLowerCase().contains(q) || g.user.userTc.contains(q) || g.agencyName.toLowerCase().contains(q);
    }).toList();
    final shown = list.take(_guestLimit).toList();
    final maxBalance = list.isEmpty ? 1 : list.map((e) => e.balance).fold<int>(1, (a, b) => b > a ? b : a);
    final agencies = d.agencies.entries.toList()..sort((a, b) => a.value.compareTo(b.value));

    return CcSection(
      title: l.ccLoyGuestsTitle,
      trailing: CcBadge(text: l.ccLoyGuestCount(list.length), icon: Icons.person_rounded),
      child: CcPanel(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _search,
              onChanged: (_) => setState(() => _guestLimit = 25),
              decoration: InputDecoration(
                hintText: l.ccLoySearchHint,
                prefixIcon: const Icon(Icons.search_rounded),
                suffixIcon: _search.text.isEmpty
                    ? null
                    : IconButton(
                        icon: const Icon(Icons.clear_rounded),
                        onPressed: () => setState(() => _search.clear()),
                      ),
                isDense: true,
                filled: true,
                fillColor: CcColors.bg,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 38,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _chip(l.ccLoyAllAgencies, _agency.isEmpty, () => setState(() => _agency = '')),
                  for (final a in agencies) _chip(a.value, _agency == a.key, () => setState(() => _agency = a.key)),
                ],
              ),
            ),
            const SizedBox(height: 6),
            if (shown.isEmpty)
              CcEmpty(icon: Icons.person_search_rounded, message: l.ccLoyNoGuests)
            else
              for (final g in shown)
                _GuestRow(
                  g: g,
                  fraction: maxBalance <= 0 ? 0 : g.balance / maxBalance,
                  onTap: () => _openGuest(d, g.user, canEdit: canEdit),
                ),
            if (list.length > shown.length)
              TextButton.icon(
                onPressed: () => setState(() => _guestLimit += 25),
                icon: const Icon(Icons.expand_more_rounded),
                label: Text(l.ccLoyShowMore(list.length - shown.length)),
              ),
          ],
        ),
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
          selectedColor: CcColors.mid,
          backgroundColor: Colors.white,
          side: const BorderSide(color: CcColors.mint),
          labelStyle: TextStyle(fontWeight: FontWeight.w600, color: selected ? Colors.white : CcColors.ink),
        ),
      );

  Widget _feed(LoyaltyData d, {required bool canEdit}) {
    final l = context.l10n;
    final list = d.adjustments.where((a) {
      return switch (_adjFilter) {
        _AdjFilter.all => true,
        _AdjFilter.granted => a.points > 0 && !a.isRevert,
        _AdjFilter.deducted => a.points < 0 && !a.isRevert,
        _AdjFilter.bulk => a.isBulk,
        _AdjFilter.reverted => a.reverted || a.isRevert,
      };
    }).take(60).toList();
    final labels = {
      _AdjFilter.all: l.ccLoyFilterAll,
      _AdjFilter.granted: l.ccLoyFilterGranted,
      _AdjFilter.deducted: l.ccLoyFilterDeducted,
      _AdjFilter.bulk: l.ccLoyFilterBulk,
      _AdjFilter.reverted: l.ccLoyFilterReverted,
    };
    return CcSection(
      title: l.ccLoyFeedTitle,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 38,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (final f in _AdjFilter.values)
                  _chip(labels[f]!, _adjFilter == f, () => setState(() => _adjFilter = f)),
              ],
            ),
          ),
          const SizedBox(height: 10),
          CcPanel(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: list.isEmpty
                ? CcEmpty(icon: Icons.history_toggle_off_rounded, message: l.ccLoyFeedEmpty)
                : Column(
                    children: [
                      for (var i = 0; i < list.length; i++) ...[
                        if (i > 0) const Divider(height: 1, color: CcColors.mint),
                        AdjustmentRow(
                          a: list[i],
                          showGuest: true,
                          onRevert: canEdit && list[i].canRevert && !_busy ? () => _revert(list[i]) : null,
                        ),
                      ],
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}

String _signed(int v) => v > 0 ? '+${CcFmt.num0(v)}' : '−${CcFmt.num0(-v)}';

// ==================================================================== parçalar
class _GuestRow extends StatelessWidget {
  final GuestPoints g;
  final double fraction;
  final VoidCallback onTap;
  const _GuestRow({required this.g, required this.fraction, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final name = g.user.userName.trim();
    final initial = name.isEmpty ? '?' : String.fromCharCode(name.runes.first).toUpperCase();
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            CircleAvatar(
              radius: 19,
              backgroundColor: CcColors.mint,
              child: Text(initial, style: const TextStyle(fontWeight: FontWeight.w800, color: CcColors.deep)),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name.isEmpty ? '—' : name,
                      maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w700)),
                  Text(
                    [g.agencyName, g.user.userTc].where((e) => e.isNotEmpty).join(' · '),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 11.5, color: AppColors.textMuted),
                  ),
                  const SizedBox(height: 4),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: LinearProgressIndicator(
                      value: fraction.clamp(0, 1).toDouble(),
                      minHeight: 4,
                      backgroundColor: CcColors.mint,
                      valueColor: const AlwaysStoppedAnimation(CcColors.gold),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(CcFmt.num0(g.balance),
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: CcColors.ink)),
                Text(context.l10n.ccLoyPointsUnit, style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
              ],
            ),
            const Icon(Icons.chevron_right_rounded, color: AppColors.textMuted),
          ],
        ),
      ),
    );
  }
}

/// Elle puan hareketi satırı (akış ve misafir ayrıntısı).
class AdjustmentRow extends StatelessWidget {
  final PointAdjustment a;
  final bool showGuest;
  final VoidCallback? onRevert;
  const AdjustmentRow({super.key, required this.a, this.showGuest = false, this.onRevert});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final plus = a.points > 0;
    final color = a.isRevert ? CcColors.warn : (plus ? CcColors.ok : CcColors.danger);
    final icon = a.isRevert
        ? Icons.undo_rounded
        : a.isBulk
            ? Icons.groups_rounded
            : (plus ? Icons.card_giftcard_rounded : Icons.remove_circle_outline_rounded);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(color: color.withValues(alpha: 0.12), borderRadius: BorderRadius.circular(12)),
            child: Icon(icon, color: color, size: 18),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (showGuest)
                  Text(a.guestName.isEmpty ? '—' : a.guestName,
                      maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w700)),
                Text(a.reason.isEmpty ? '—' : a.reason,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: showGuest ? 12.5 : 13.5,
                      color: showGuest ? AppColors.textMuted : AppColors.text,
                      fontWeight: showGuest ? FontWeight.w400 : FontWeight.w600,
                    )),
                const SizedBox(height: 4),
                Wrap(
                  spacing: 6,
                  runSpacing: 4,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(CcFmt.dateTime(a.createdAt), style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
                    if (a.isBulk) CcBadge(text: l.ccLoyTagBulk, color: CcColors.info),
                    if (a.isRevert) CcBadge(text: l.ccLoyTagRevert, color: CcColors.warn),
                    if (a.reverted) CcBadge(text: l.ccLoyTagReverted, color: AppColors.textMuted),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                _signed(a.points),
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
                  color: a.reverted ? AppColors.textMuted : color,
                  decoration: a.reverted ? TextDecoration.lineThrough : null,
                ),
              ),
              if (onRevert != null)
                TextButton.icon(
                  style: TextButton.styleFrom(
                    foregroundColor: CcColors.warn,
                    visualDensity: VisualDensity.compact,
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                  ),
                  onPressed: onRevert,
                  icon: const Icon(Icons.undo_rounded, size: 16),
                  label: Text(l.ccLoyRevertAction, style: const TextStyle(fontSize: 12)),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Misafir ayrıntısı: bakiye, döküm, puan ver/düş, tüm geçmiş.
class _GuestSheet extends StatelessWidget {
  final LoyaltyData data;
  final UserModel guest;
  final bool canEdit;
  final ValueChanged<bool> onAdjust; // true = düş
  final ValueChanged<PointAdjustment> onRevert;

  const _GuestSheet({
    required this.data,
    required this.guest,
    required this.canEdit,
    required this.onAdjust,
    required this.onRevert,
  });

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = data.pointsOf(guest);
    final txs = data.txByGuest[guest.id] ?? const <ShopTransaction>[];
    final adj = data.adjByGuest[guest.id] ?? const <PointAdjustment>[];
    final entries = <({DateTime at, ShopTransaction? tx, PointAdjustment? adj})>[
      for (final t in txs) (at: t.createdAt ?? DateTime(2100), tx: t, adj: null),
      for (final a in adj) (at: a.createdAt ?? DateTime(2100), tx: null, adj: a),
    ]..sort((a, b) => b.at.compareTo(a.at));

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.85,
      maxChildSize: 0.95,
      minChildSize: 0.5,
      builder: (ctx, scroll) => ListView(
        controller: scroll,
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [CcColors.ink, CcColors.mid],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(guest.userName,
                    style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800)),
                Text([p.agencyName, guest.userTc].where((e) => e.isNotEmpty).join(' · '),
                    style: const TextStyle(color: Colors.white70, fontSize: 12.5)),
                const SizedBox(height: 14),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(CcFmt.num0(p.balance),
                        style: const TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.w900, height: 1)),
                    const SizedBox(width: 6),
                    Text(l.ccLoyPointsUnit, style: const TextStyle(color: CcColors.mint, fontWeight: FontWeight.w700)),
                    const Spacer(),
                    const Icon(Icons.stars_rounded, color: CcColors.gold, size: 32),
                  ],
                ),
                const SizedBox(height: 2),
                Text(l.ccLoyWorth(CcFmt.sar(EsnafConfig.pointsToSar(p.balance < 0 ? 0 : p.balance))),
                    style: const TextStyle(color: CcColors.mint, fontSize: 12.5)),
                const SizedBox(height: 14),
                Row(
                  children: [
                    _mini(l.ccLoyEarned, '+${CcFmt.num0(p.earned)}'),
                    _mini(l.ccLoySpentShort, '−${CcFmt.num0(p.spent)}'),
                    _mini(l.ccLoyManual, _signed(p.adjusted)),
                  ],
                ),
              ],
            ),
          ),
          if (canEdit) ...[
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    style: FilledButton.styleFrom(
                      backgroundColor: CcColors.mid,
                      minimumSize: const Size.fromHeight(48),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    ),
                    onPressed: () => onAdjust(false),
                    icon: const Icon(Icons.add_circle_outline_rounded),
                    label: Text(l.ccLoyGrant),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: CcColors.danger,
                      side: const BorderSide(color: CcColors.danger),
                      minimumSize: const Size.fromHeight(48),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    ),
                    onPressed: () => onAdjust(true),
                    icon: const Icon(Icons.remove_circle_outline_rounded),
                    label: Text(l.ccLoyDeduct),
                  ),
                ),
              ],
            ),
          ],
          const SizedBox(height: 16),
          Text(l.ccLoyHistory, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: CcColors.ink)),
          const SizedBox(height: 8),
          CcPanel(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
            child: entries.isEmpty
                ? CcEmpty(icon: Icons.receipt_long_rounded, message: l.ccLoyHistoryEmpty)
                : Column(
                    children: [
                      for (var i = 0; i < entries.length; i++) ...[
                        if (i > 0) const Divider(height: 1, color: CcColors.mint),
                        if (entries[i].tx != null)
                          _TxRow(tx: entries[i].tx!)
                        else
                          AdjustmentRow(
                            a: entries[i].adj!,
                            onRevert: canEdit && entries[i].adj!.canRevert ? () => onRevert(entries[i].adj!) : null,
                          ),
                      ],
                    ],
                  ),
          ),
        ],
      ),
    );
  }

  Widget _mini(String k, String v) => Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(k, style: const TextStyle(color: Colors.white60, fontSize: 11)),
            Text(v, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 15)),
          ],
        ),
      );
}

class _TxRow extends StatelessWidget {
  final ShopTransaction tx;
  const _TxRow({required this.tx});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final cancelled = tx.isCancelled;
    final pts = tx.pointsSpent > 0 ? -tx.pointsSpent : tx.pointsEarned;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(color: CcColors.info.withValues(alpha: 0.12), borderRadius: BorderRadius.circular(12)),
            child: const Icon(Icons.storefront_rounded, color: CcColors.info, size: 18),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tx.shopName, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w600)),
                Wrap(
                  spacing: 6,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text('${CcFmt.dateTime(tx.createdAt)} · ${CcFmt.sar(tx.amountNet)}',
                        style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
                    if (tx.hasCoupon) CcBadge(text: tx.couponId, color: CcColors.mid),
                    if (cancelled) CcBadge(text: l.ccLoyTagCancelled, color: CcColors.danger),
                  ],
                ),
              ],
            ),
          ),
          Text(
            pts == 0 ? '0' : _signed(pts),
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: cancelled ? AppColors.textMuted : (pts >= 0 ? CcColors.ok : CcColors.danger),
              decoration: cancelled ? TextDecoration.lineThrough : null,
            ),
          ),
        ],
      ),
    );
  }
}

/// Puan ver / düş: miktar + zorunlu sebep.
class _PointsDialog extends StatefulWidget {
  final String guestName;
  final bool deduct;
  const _PointsDialog({required this.guestName, required this.deduct});

  @override
  State<_PointsDialog> createState() => _PointsDialogState();
}

class _PointsDialogState extends State<_PointsDialog> {
  final _points = TextEditingController();
  final _reason = TextEditingController();
  String? _pErr;
  String? _rErr;

  @override
  void dispose() {
    _points.dispose();
    _reason.dispose();
    super.dispose();
  }

  void _submit() {
    final l = context.l10n;
    final p = int.tryParse(_points.text.trim()) ?? 0;
    final r = _reason.text.trim();
    setState(() {
      _pErr = (p < 1 || p > 100000) ? l.ccLoyPointsInvalid : null;
      _rErr = r.length < 3 ? l.ccLoyReasonRequired : null;
    });
    if (_pErr != null || _rErr != null) return;
    Navigator.pop(context, (points: p, reason: r));
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final color = widget.deduct ? CcColors.danger : CcColors.mid;
    final quick = [50, 100, 250, 500, 1000];
    return AlertDialog(
      icon: Icon(widget.deduct ? Icons.remove_circle_outline_rounded : Icons.card_giftcard_rounded, color: color, size: 36),
      title: Text(widget.deduct ? l.ccLoyDeductTitle : l.ccLoyGrantTitle),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(widget.guestName, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.w700)),
            const SizedBox(height: 12),
            TextField(
              controller: _points,
              autofocus: true,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(6)],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800, color: color),
              decoration: InputDecoration(
                prefixText: widget.deduct ? '− ' : '+ ',
                suffixText: l.ccLoyPointsUnit,
                errorText: _pErr,
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 6,
              runSpacing: 6,
              alignment: WrapAlignment.center,
              children: [
                for (final q in quick)
                  ActionChip(
                    label: Text('$q'),
                    onPressed: () => setState(() => _points.text = '$q'),
                  ),
              ],
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _reason,
              maxLength: 200,
              minLines: 1,
              maxLines: 3,
              decoration: InputDecoration(
                labelText: l.ccLoyReason,
                hintText: widget.deduct ? l.ccLoyReasonHintDeduct : l.ccLoyReasonHintGrant,
                errorText: _rErr,
                border: const OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text(l.commonCancel)),
        FilledButton(
          style: FilledButton.styleFrom(backgroundColor: color),
          onPressed: _submit,
          child: Text(widget.deduct ? l.ccLoyDeduct : l.ccLoyGrant),
        ),
      ],
    );
  }
}

class _BulkPlan {
  final String agencyId;
  final TripModel? trip;
  final List<UserModel> guests;
  final int points;
  final String reason;
  const _BulkPlan({required this.agencyId, this.trip, required this.guests, required this.points, required this.reason});
}

/// Toplu puan: acente (+ isteğe bağlı sefer), miktar, sebep, alıcı önizlemesi.
class _BulkDialog extends StatefulWidget {
  final LoyaltyData data;
  const _BulkDialog({required this.data});

  @override
  State<_BulkDialog> createState() => _BulkDialogState();
}

class _BulkDialogState extends State<_BulkDialog> {
  final _points = TextEditingController();
  final _reason = TextEditingController();
  String _agency = '';
  String _tripId = '';
  List<TripModel> _trips = const [];
  bool _tripsLoading = false;
  String? _err;

  @override
  void dispose() {
    _points.dispose();
    _reason.dispose();
    super.dispose();
  }

  Future<void> _selectAgency(String? id) async {
    setState(() {
      _agency = id ?? '';
      _tripId = '';
      _trips = const [];
      _tripsLoading = _agency.isNotEmpty;
    });
    if (_agency.isEmpty) return;
    try {
      final t = await LoyaltyService.instance.trips(_agency);
      if (mounted && id == _agency) setState(() => _trips = t);
    } catch (e) {
      debugPrint('Seferler okunamadı: $e');
    } finally {
      if (mounted) setState(() => _tripsLoading = false);
    }
  }

  List<UserModel> get _targets =>
      _agency.isEmpty ? const [] : LoyaltyService.bulkTargets(widget.data.guests, _agency, tripId: _tripId);

  void _submit() {
    final l = context.l10n;
    final p = int.tryParse(_points.text.trim()) ?? 0;
    final r = _reason.text.trim();
    String? err;
    if (_agency.isEmpty) {
      err = l.ccLoyBulkPickAgency;
    } else if (_targets.isEmpty) {
      err = l.ccLoyBulkNoTargets;
    } else if (p < 1 || p > 100000) {
      err = l.ccLoyPointsInvalid;
    } else if (r.length < 3) {
      err = l.ccLoyReasonRequired;
    }
    setState(() => _err = err);
    if (err != null) return;
    TripModel? trip;
    for (final t in _trips) {
      if (t.id == _tripId) trip = t;
    }
    Navigator.pop(context, _BulkPlan(agencyId: _agency, trip: trip, guests: _targets, points: p, reason: r));
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final agencies = widget.data.agencies.entries.toList()..sort((a, b) => a.value.compareTo(b.value));
    final p = int.tryParse(_points.text.trim()) ?? 0;
    final n = _targets.length;
    return AlertDialog(
      icon: const Icon(Icons.groups_rounded, color: CcColors.gold, size: 36),
      title: Text(l.ccLoyBulkTitle),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownButtonFormField<String>(
              initialValue: _agency.isEmpty ? null : _agency,
              isExpanded: true,
              decoration: InputDecoration(labelText: l.ccLoyBulkAgency, border: const OutlineInputBorder()),
              items: [for (final a in agencies) DropdownMenuItem(value: a.key, child: Text(a.value))],
              onChanged: _selectAgency,
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              key: ValueKey('trip_$_agency'),
              initialValue: _tripId,
              isExpanded: true,
              decoration: InputDecoration(
                labelText: l.ccLoyBulkTrip,
                border: const OutlineInputBorder(),
                suffixIcon: _tripsLoading
                    ? const Padding(
                        padding: EdgeInsets.all(14),
                        child: SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2)),
                      )
                    : null,
              ),
              items: [
                DropdownMenuItem(value: '', child: Text(l.ccLoyBulkAllTrips)),
                for (final t in _trips) DropdownMenuItem(value: t.id, child: Text(t.name.isEmpty ? t.id : t.name)),
              ],
              onChanged: _agency.isEmpty ? null : (v) => setState(() => _tripId = v ?? ''),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _points,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(6)],
              onChanged: (_) => setState(() {}),
              decoration: InputDecoration(
                labelText: l.ccLoyBulkPointsEach,
                suffixText: l.ccLoyPointsUnit,
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _reason,
              maxLength: 200,
              decoration: InputDecoration(
                labelText: l.ccLoyReason,
                hintText: l.ccLoyReasonHintBulk,
                border: const OutlineInputBorder(),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: CcColors.gold.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.info_outline_rounded, color: CcColors.gold),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      _agency.isEmpty ? l.ccLoyBulkPickAgency : l.ccLoyBulkPreview(n, CcFmt.num0(p * n)),
                      style: const TextStyle(fontWeight: FontWeight.w600, color: CcColors.ink),
                    ),
                  ),
                ],
              ),
            ),
            if (_err != null) ...[
              const SizedBox(height: 8),
              Text(_err!, style: const TextStyle(color: CcColors.danger, fontWeight: FontWeight.w600)),
            ],
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text(l.commonCancel)),
        FilledButton(
          style: FilledButton.styleFrom(backgroundColor: CcColors.gold),
          onPressed: _submit,
          child: Text(l.ccLoyBulkConfirm(n)),
        ),
      ],
    );
  }
}

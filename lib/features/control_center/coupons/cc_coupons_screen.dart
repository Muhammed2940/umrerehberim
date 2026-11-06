import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../admin/widgets/no_access_screen.dart';
import '../../auth/models/user_model.dart';
import '../../esnaf/models/coupon.dart';
import '../../shops/models/shop_model.dart';
import '../shared/cc_widgets.dart';
import 'coupon_form_screen.dart';
import 'coupon_service.dart';

/// Kontrol Merkezi › Kuponlar (`/cc/coupons`). Süper admin: tam yetki; muhasebe: salt okuma.
class CcCouponsScreen extends StatefulWidget {
  const CcCouponsScreen({super.key});

  @override
  State<CcCouponsScreen> createState() => _CcCouponsScreenState();
}

class _CcCouponsScreenState extends State<CcCouponsScreen> {
  late final Stream<List<Coupon>> _stream = CouponService.instance.watchAll();
  Future<List<CouponRedemption>>? _redemptions;
  List<({String id, String name})> _agencies = const [];
  List<ShopModel> _shops = const [];
  CouponStatus? _filter; // null = tümü
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    _loadRefs();
    _reloadRedemptions();
  }

  void _reloadRedemptions() => setState(() => _redemptions = CouponService.instance.allRedemptions());

  Future<void> _loadRefs() async {
    try {
      final r = await Future.wait([CouponService.instance.agencies(), CouponService.instance.shops()]);
      if (!mounted) return;
      setState(() {
        _agencies = r[0] as List<({String id, String name})>;
        _shops = r[1] as List<ShopModel>;
      });
    } catch (e) {
      debugPrint('CcCouponsScreen.refs: $e');
    }
  }

  UserModel? get _me => context.read<AppStateProvider>().currentUser;

  String _agencyName(String id) {
    if (id == Coupon.all) return context.l10n.ccCpnAllAgencies;
    for (final a in _agencies) {
      if (a.id == id) return a.name;
    }
    return id;
  }

  String _shopName(String id) {
    if (id == Coupon.all) return context.l10n.ccCpnAllShops;
    for (final s in _shops) {
      if (s.id == id) return s.name;
    }
    return id;
  }

  Future<void> _openForm([Coupon? c]) async {
    final saved = await Navigator.of(context).push<bool>(
      MaterialPageRoute(builder: (_) => CouponFormScreen(coupon: c, agencies: _agencies, shops: _shops)),
    );
    if (saved == true && mounted) _reloadRedemptions();
  }

  Future<void> _run(Future<void> Function() action, String ok) async {
    if (_busy) return;
    final err = context.l10n.ccCpnSaveError;
    setState(() => _busy = true);
    try {
      await action();
      GlobalSnackbar.showSuccess(ok);
    } catch (e) {
      debugPrint('CcCouponsScreen: $e');
      GlobalSnackbar.showError(err);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _toggle(Coupon c) async {
    final me = _me;
    if (me == null) return;
    final l = context.l10n;
    await _run(
      () => CouponService.instance.setActive(actor: me, coupon: c, active: !c.active),
      c.active ? l.ccCpnDeactivatedOk(c.code) : l.ccCpnActivatedOk(c.code),
    );
  }

  Future<void> _delete(Coupon c) async {
    final me = _me;
    if (me == null) return;
    final l = context.l10n;
    if (c.usedCount > 0) {
      final deactivate = await showDialog<bool>(
        context: context,
        builder: (ctx) => AlertDialog(
          icon: const Icon(Icons.info_outline_rounded, color: CcColors.warn, size: 36),
          title: Text(l.ccCpnDeleteBlockedTitle),
          content: Text(l.ccCpnDeleteBlockedBody(c.usedCount)),
          actions: [
            TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(l.commonCancel)),
            if (c.active)
              FilledButton(
                style: FilledButton.styleFrom(backgroundColor: CcColors.warn),
                onPressed: () => Navigator.pop(ctx, true),
                child: Text(l.ccCpnDeactivate),
              ),
          ],
        ),
      );
      if (deactivate == true && mounted) await _toggle(c);
      return;
    }
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        icon: const Icon(Icons.delete_outline_rounded, color: CcColors.danger, size: 36),
        title: Text(l.ccCpnDeleteTitle),
        content: Text(l.ccCpnDeleteBody(c.code)),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(l.commonCancel)),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: CcColors.danger),
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(l.ccCpnDelete),
          ),
        ],
      ),
    );
    if (ok != true || !mounted) return;
    await _run(() => CouponService.instance.delete(actor: me, coupon: c), l.ccCpnDeletedOk(c.code));
  }

  void _stats(Coupon c) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      backgroundColor: CcColors.bg,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (_) => _StatsSheet(coupon: c, agencyName: _agencyName(c.agencyId), shopName: _shopName(c.shopId)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final user = context.watch<AppStateProvider>().currentUser;
    if (user == null || !(user.isSuperAdmin || user.isFinance)) {
      return NoAccessScreen(title: l.ccCpnTitle);
    }
    final canEdit = user.isSuperAdmin;
    return StreamBuilder<List<Coupon>>(
      stream: _stream,
      builder: (context, snap) => CcPage(
        title: l.ccCpnTitle,
        subtitle: canEdit ? l.ccCpnSubtitle : l.ccCpnReadOnly,
        onRefresh: () async {
          _reloadRedemptions();
          await _loadRefs();
        },
        floatingActionButton: canEdit
            ? FloatingActionButton.extended(
                backgroundColor: CcColors.gold,
                foregroundColor: Colors.white,
                onPressed: _busy ? null : () => _openForm(),
                icon: const Icon(Icons.add_rounded),
                label: Text(l.ccCpnNew),
              )
            : null,
        body: [
          CcAsync<List<Coupon>>(
            snapshot: snap,
            errorText: l.ccCpnLoadError,
            builder: (all) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _kpis(all),
                const SizedBox(height: 8),
                _filters(all),
                const SizedBox(height: 10),
                ..._list(all, canEdit: canEdit),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _kpis(List<Coupon> all) {
    final l = context.l10n;
    final now = DateTime.now();
    final active = all.where((c) => couponStatusOf(c, now) == CouponStatus.active).length;
    final uses = all.fold<int>(0, (s, c) => s + c.usedCount);
    return FutureBuilder<List<CouponRedemption>>(
      future: _redemptions,
      builder: (context, snap) {
        final reds = snap.data ?? const <CouponRedemption>[];
        final total = reds.fold<double>(0, (s, r) => s + r.discount);
        final guests = reds.map((r) => r.guestUid).toSet().length;
        return CcKpiGrid(
          children: [
            CcKpiTile(icon: Icons.local_activity_rounded, value: '$active', label: l.ccCpnKpiActive),
            CcKpiTile(
                icon: Icons.shopping_cart_checkout_rounded, color: CcColors.info, value: CcFmt.num0(uses), label: l.ccCpnKpiUses),
            CcKpiTile(
              icon: Icons.savings_rounded,
              color: CcColors.gold,
              value: snap.hasData ? CcFmt.sar(total) : '…',
              label: l.ccCpnKpiDiscount,
            ),
            CcKpiTile(
              icon: Icons.people_alt_rounded,
              color: CcColors.ok,
              value: snap.hasData ? CcFmt.num0(guests) : '…',
              label: l.ccCpnKpiGuests,
            ),
          ],
        );
      },
    );
  }

  Widget _filters(List<Coupon> all) {
    final l = context.l10n;
    final now = DateTime.now();
    int count(CouponStatus s) => all.where((c) => couponStatusOf(c, now) == s).length;
    Widget chip(String label, CouponStatus? s, int n) {
      final sel = _filter == s;
      return Padding(
        padding: const EdgeInsetsDirectional.only(end: 8),
        child: ChoiceChip(
          label: Text('$label  $n'),
          selected: sel,
          onSelected: (_) => setState(() => _filter = s),
          showCheckmark: false,
          selectedColor: CcColors.mid,
          backgroundColor: Colors.white,
          side: const BorderSide(color: CcColors.mint),
          labelStyle: TextStyle(fontWeight: FontWeight.w600, color: sel ? Colors.white : CcColors.ink),
        ),
      );
    }

    return SizedBox(
      height: 38,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          chip(l.ccCpnFilterAll, null, all.length),
          for (final s in CouponStatus.values)
            if (s != CouponStatus.scheduled || count(s) > 0) chip(statusLabel(context, s), s, count(s)),
        ],
      ),
    );
  }

  List<Widget> _list(List<Coupon> all, {required bool canEdit}) {
    final l = context.l10n;
    final now = DateTime.now();
    final list = _filter == null ? all : all.where((c) => couponStatusOf(c, now) == _filter).toList();
    if (list.isEmpty) {
      return [CcEmpty(icon: Icons.confirmation_number_outlined, message: all.isEmpty ? l.ccCpnEmpty : l.ccCpnNoMatch)];
    }
    return [
      FutureBuilder<List<CouponRedemption>>(
        future: _redemptions,
        builder: (context, snap) {
          final totals = <String, double>{};
          for (final r in snap.data ?? const <CouponRedemption>[]) {
            totals[r.couponId] = (totals[r.couponId] ?? 0) + r.discount;
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (final c in list)
                _CouponCard(
                  coupon: c,
                  status: couponStatusOf(c, now),
                  agencyName: _agencyName(c.agencyId),
                  shopName: _shopName(c.shopId),
                  totalDiscount: totals[c.code],
                  canEdit: canEdit && !_busy,
                  onTap: () => _stats(c),
                  onToggle: () => _toggle(c),
                  onEdit: () => _openForm(c),
                  onDelete: () => _delete(c),
                ),
            ],
          );
        },
      ),
    ];
  }
}

String statusLabel(BuildContext context, CouponStatus s) {
  final l = context.l10n;
  return switch (s) {
    CouponStatus.active => l.ccCpnStatusActive,
    CouponStatus.scheduled => l.ccCpnStatusScheduled,
    CouponStatus.expired => l.ccCpnStatusExpired,
    CouponStatus.inactive => l.ccCpnStatusInactive,
    CouponStatus.exhausted => l.ccCpnStatusExhausted,
  };
}

Color statusColor(CouponStatus s) => switch (s) {
      CouponStatus.active => CcColors.ok,
      CouponStatus.scheduled => CcColors.info,
      CouponStatus.expired => CcColors.warn,
      CouponStatus.inactive => AppColors.textMuted,
      CouponStatus.exhausted => CcColors.danger,
    };

String _valueText(BuildContext context, Coupon c) {
  final l = context.l10n;
  final v = c.value == c.value.roundToDouble() ? c.value.toStringAsFixed(0) : c.value.toStringAsFixed(2);
  return [
    c.isPercent ? '%$v' : CcFmt.sar(c.value),
    if (c.isPercent && c.maxDiscount > 0) l.ccCpnUpTo(CcFmt.sar(c.maxDiscount)),
    if (c.minSpend > 0) l.ccCpnMinShort(CcFmt.sar(c.minSpend)),
  ].join(' · ');
}

class _CouponCard extends StatelessWidget {
  final Coupon coupon;
  final CouponStatus status;
  final String agencyName;
  final String shopName;
  final double? totalDiscount;
  final bool canEdit;
  final VoidCallback onTap;
  final VoidCallback onToggle;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _CouponCard({
    required this.coupon,
    required this.status,
    required this.agencyName,
    required this.shopName,
    required this.totalDiscount,
    required this.canEdit,
    required this.onTap,
    required this.onToggle,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final c = coupon;
    final color = statusColor(status);
    final dim = status == CouponStatus.inactive || status == CouponStatus.expired;
    return CcPanel(
      onTap: onTap,
      padding: EdgeInsets.zero,
      child: Stack(
        children: [
          PositionedDirectional(
            start: 0,
            top: 0,
            bottom: 0,
            width: 6,
            child: Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadiusDirectional.horizontal(start: Radius.circular(18)),
              ),
            ),
          ),
          Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 12, 6, 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: dim ? CcColors.bg : CcColors.mint,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: dim ? AppColors.divider : CcColors.sage),
                          ),
                          child: Text(c.code,
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 1.6,
                                  color: dim ? AppColors.textMuted : CcColors.deep)),
                        ),
                        const SizedBox(width: 8),
                        CcBadge(text: statusLabel(context, status), color: color),
                        const Spacer(),
                        if (canEdit) ...[
                          Switch(
                            value: c.active,
                            activeThumbColor: CcColors.mid,
                            onChanged: (_) => onToggle(),
                          ),
                          PopupMenuButton<String>(
                            icon: const Icon(Icons.more_vert_rounded, color: AppColors.textMuted),
                            onSelected: (v) => v == 'edit' ? onEdit() : onDelete(),
                            itemBuilder: (_) => [
                              PopupMenuItem(
                                value: 'edit',
                                child: ListTile(
                                  dense: true,
                                  contentPadding: EdgeInsets.zero,
                                  leading: const Icon(Icons.edit_outlined),
                                  title: Text(l.ccCpnEdit),
                                ),
                              ),
                              PopupMenuItem(
                                value: 'delete',
                                child: ListTile(
                                  dense: true,
                                  contentPadding: EdgeInsets.zero,
                                  leading: const Icon(Icons.delete_outline_rounded, color: CcColors.danger),
                                  title: Text(l.ccCpnDelete),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(c.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: CcColors.ink)),
                    const SizedBox(height: 2),
                    Text(_valueText(context, c),
                        style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.mid, fontSize: 13.5)),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 12,
                      runSpacing: 4,
                      children: [
                        _meta(Icons.date_range_rounded, '${CcFmt.date(c.validFrom)} – ${CcFmt.date(c.validUntil)}'),
                        _meta(Icons.apartment_rounded, agencyName),
                        _meta(Icons.storefront_rounded, shopName),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: LinearProgressIndicator(
                              value: c.maxUses > 0 ? c.usageFraction : (c.usedCount > 0 ? 1 : 0),
                              minHeight: 7,
                              backgroundColor: CcColors.mint,
                              valueColor: AlwaysStoppedAnimation(
                                  c.maxUses > 0 && c.usageFraction >= 0.9 ? CcColors.danger : CcColors.gold),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          c.maxUses > 0 ? '${c.usedCount} / ${c.maxUses}' : l.ccCpnUsesUnlimited(c.usedCount),
                          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: CcColors.ink),
                        ),
                      ],
                    ),
                    if ((totalDiscount ?? 0) > 0) ...[
                      const SizedBox(height: 6),
                      Text(l.ccCpnGiven(CcFmt.sar(totalDiscount!)),
                          style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                    ],
                  ],
                ),
              ),
        ],
      ),
    );
  }

  Widget _meta(IconData icon, String text) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: AppColors.textMuted),
          const SizedBox(width: 4),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 180),
            child: Text(text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
          ),
        ],
      );
}

/// Kupon başına istatistik: kullanımlar (misafir, dükkan, indirim, tarih) ve toplam indirim.
class _StatsSheet extends StatefulWidget {
  final Coupon coupon;
  final String agencyName;
  final String shopName;
  const _StatsSheet({required this.coupon, required this.agencyName, required this.shopName});

  @override
  State<_StatsSheet> createState() => _StatsSheetState();
}

class _StatsSheetState extends State<_StatsSheet> {
  late final Future<List<RedemptionView>> _future = CouponService.instance.redemptionsOf(widget.coupon.code);

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final c = widget.coupon;
    final status = couponStatusOf(c);
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.8,
      maxChildSize: 0.95,
      minChildSize: 0.4,
      builder: (ctx, scroll) => FutureBuilder<List<RedemptionView>>(
        future: _future,
        builder: (ctx, snap) {
          final list = snap.data ?? const <RedemptionView>[];
          final total = list.fold<double>(0, (s, r) => s + r.r.discount);
          final avg = list.isEmpty ? 0.0 : total / list.length;
          return ListView(
            controller: scroll,
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(c.code,
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w900, letterSpacing: 2, color: CcColors.ink)),
                        Text(c.title, style: const TextStyle(fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  CcBadge(text: statusLabel(context, status), color: statusColor(status)),
                ],
              ),
              if (c.description.isNotEmpty) ...[
                const SizedBox(height: 6),
                Text(c.description, style: const TextStyle(color: AppColors.textMuted)),
              ],
              const SizedBox(height: 6),
              Text(_valueText(context, c), style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.mid)),
              Text('${widget.agencyName} · ${widget.shopName}',
                  style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
              const SizedBox(height: 14),
              CcKpiGrid(
                children: [
                  CcKpiTile(
                    icon: Icons.shopping_cart_checkout_rounded,
                    value: c.maxUses > 0 ? '${c.usedCount}/${c.maxUses}' : '${c.usedCount}',
                    label: l.ccCpnStatUses,
                  ),
                  CcKpiTile(
                    icon: Icons.savings_rounded,
                    color: CcColors.gold,
                    value: snap.hasData ? CcFmt.sar(total) : '…',
                    label: l.ccCpnStatTotal,
                  ),
                  CcKpiTile(
                    icon: Icons.functions_rounded,
                    color: CcColors.info,
                    value: snap.hasData ? CcFmt.sar(avg) : '…',
                    label: l.ccCpnStatAvg,
                  ),
                  CcKpiTile(
                    icon: Icons.event_rounded,
                    color: CcColors.ok,
                    value: CcFmt.date(c.validUntil),
                    label: l.ccCpnStatUntil,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(l.ccCpnRedemptions,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: CcColors.ink)),
              const SizedBox(height: 8),
              CcAsync<List<RedemptionView>>(
                snapshot: snap,
                errorText: l.ccCpnLoadError,
                builder: (items) => CcPanel(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: items.isEmpty
                      ? CcEmpty(icon: Icons.hourglass_empty_rounded, message: l.ccCpnNoRedemptions)
                      : Column(
                          children: [
                            for (var i = 0; i < items.length; i++) ...[
                              if (i > 0) const Divider(height: 1, color: CcColors.mint),
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: const CircleAvatar(
                                  backgroundColor: CcColors.mint,
                                  child: Icon(Icons.person_rounded, color: CcColors.mid),
                                ),
                                title: Text(items[i].guestName.isEmpty ? '—' : items[i].guestName,
                                    style: const TextStyle(fontWeight: FontWeight.w700)),
                                subtitle: Text(
                                  '${items[i].shopName.isEmpty ? items[i].r.shopId : items[i].shopName} · '
                                  '${CcFmt.dateTime(items[i].r.createdAt)}',
                                  style: const TextStyle(fontSize: 12),
                                ),
                                trailing: Text('−${CcFmt.sar(items[i].r.discount)}',
                                    style: const TextStyle(fontWeight: FontWeight.w800, color: CcColors.ok)),
                              ),
                            ],
                          ],
                        ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

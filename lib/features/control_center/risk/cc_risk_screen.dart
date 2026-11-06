import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../../admin/widgets/no_access_screen.dart';
import '../../auth/models/user_model.dart';
import '../finance/finance_service.dart';
import '../shared/cc_widgets.dart';
import 'risk_engine.dart';
import 'risk_service.dart';

// ---------------------------------------------------------------------- metin yardımcıları

Color riskSeverityColor(RiskSeverity s) => switch (s) {
      RiskSeverity.high => CcColors.danger,
      RiskSeverity.medium => CcColors.warn,
      RiskSeverity.low => CcColors.info,
    };

String riskSeverityLabel(AppLocalizations l, RiskSeverity s) => switch (s) {
      RiskSeverity.high => l.ccRiskSevHigh,
      RiskSeverity.medium => l.ccRiskSevMedium,
      RiskSeverity.low => l.ccRiskSevLow,
    };

String riskStatusLabel(AppLocalizations l, String s) => switch (s) {
      RiskStatus.reviewed => l.ccRiskStatusReviewed,
      RiskStatus.falseAlarm => l.ccRiskStatusFalse,
      RiskStatus.confirmed => l.ccRiskStatusConfirmed,
      _ => l.ccRiskStatusNew,
    };

Color riskStatusColor(String s) => switch (s) {
      RiskStatus.reviewed => CcColors.info,
      RiskStatus.falseAlarm => AppColors.textMuted,
      RiskStatus.confirmed => CcColors.danger,
      _ => CcColors.gold,
    };

IconData riskTypeIcon(RiskType t) => switch (t) {
      RiskType.velocity => Icons.speed_rounded,
      RiskType.bigAmount => Icons.price_change_rounded,
      RiskType.basket => Icons.shopping_basket_rounded,
      RiskType.cancelRate => Icons.cancel_presentation_rounded,
      RiskType.quickCancel => Icons.timer_off_rounded,
      RiskType.bigPoints => Icons.stars_rounded,
      RiskType.pointsBurn => Icons.local_fire_department_rounded,
      RiskType.bigGrant => Icons.card_giftcard_rounded,
      RiskType.frequentGrants => Icons.repeat_rounded,
      RiskType.adminGrants => Icons.admin_panel_settings_rounded,
      RiskType.couponValue => Icons.confirmation_number_rounded,
      RiskType.couponUnlimited => Icons.all_inclusive_rounded,
      RiskType.night => Icons.nightlight_round,
      RiskType.concentration => Icons.donut_large_rounded,
    };

String riskTypeLabel(AppLocalizations l, RiskType t) => switch (t) {
      RiskType.velocity => l.ccRiskTypeVelocity,
      RiskType.bigAmount => l.ccRiskTypeBigAmount,
      RiskType.basket => l.ccRiskTypeBasket,
      RiskType.cancelRate => l.ccRiskTypeCancelRate,
      RiskType.quickCancel => l.ccRiskTypeQuickCancel,
      RiskType.bigPoints => l.ccRiskTypeBigPoints,
      RiskType.pointsBurn => l.ccRiskTypePointsBurn,
      RiskType.bigGrant => l.ccRiskTypeBigGrant,
      RiskType.frequentGrants => l.ccRiskTypeFrequentGrants,
      RiskType.adminGrants => l.ccRiskTypeAdminGrants,
      RiskType.couponValue => l.ccRiskTypeCouponValue,
      RiskType.couponUnlimited => l.ccRiskTypeCouponUnlimited,
      RiskType.night => l.ccRiskTypeNight,
      RiskType.concentration => l.ccRiskTypeConcentration,
    };

String riskExplain(AppLocalizations l, RiskAlarm a) {
  final p = a.params;
  String s(String k) => '${p[k] ?? ''}';
  int i(String k) => (p[k] as num?)?.toInt() ?? 0;
  double d(String k) => (p[k] as num?)?.toDouble() ?? 0;
  switch (a.type) {
    case RiskType.velocity:
      return l.ccRiskExpVelocity(s('guest'), s('shop'), i('count'));
    case RiskType.bigAmount:
      return l.ccRiskExpBigAmount(CcFmt.sar(d('amount')));
    case RiskType.basket:
      return l.ccRiskExpBasket(CcFmt.sar(d('amount')), CcFmt.sar(d('avg')));
    case RiskType.cancelRate:
      return l.ccRiskExpCancelRate(s('shop'), i('rate'), i('count'));
    case RiskType.quickCancel:
      return l.ccRiskExpQuickCancel(i('minutes'));
    case RiskType.bigPoints:
      return l.ccRiskExpBigPoints(CcFmt.num0(i('points')));
    case RiskType.pointsBurn:
      return l.ccRiskExpPointsBurn(s('guest'), CcFmt.num0(i('spent')), CcFmt.num0(i('earned')));
    case RiskType.bigGrant:
      return l.ccRiskExpBigGrant(s('guest'), CcFmt.num0(i('points')));
    case RiskType.frequentGrants:
      return l.ccRiskExpFrequentGrants(s('guest'), i('count'));
    case RiskType.adminGrants:
      return l.ccRiskExpAdminGrants(s('admin'), CcFmt.num0(i('points')));
    case RiskType.couponValue:
      return l.ccRiskExpCouponValue(s('code'), p['percent'] == true ? CcFmt.pct(d('value')) : CcFmt.sar(d('value')));
    case RiskType.couponUnlimited:
      return l.ccRiskExpCouponUnlimited(s('code'), i('count'));
    case RiskType.night:
      return l.ccRiskExpNight(s('time'));
    case RiskType.concentration:
      final base = l.ccRiskExpConcentration(s('guest'), s('shop'), i('share'));
      return p['sameAgency'] == true ? '$base ${l.ccRiskExpSameAgency}' : base;
  }
}

String _amountText(AppLocalizations l, RiskAlarm a) =>
    a.amountIsPoints ? l.ccRiskPointsUnit(CcFmt.num0(a.amount)) : CcFmt.sar(a.amount);

// ---------------------------------------------------------------------- ekran

/// Kontrol Merkezi › Risk ve Dolandırıcılık (`/cc/risk`). Süper admin ve destek.
class CcRiskScreen extends StatefulWidget {
  const CcRiskScreen({super.key});

  @override
  State<CcRiskScreen> createState() => _CcRiskScreenState();
}

class _CcRiskScreenState extends State<CcRiskScreen> {
  Future<RiskData>? _future;
  RiskSeverity? _severity;
  RiskType? _type;
  String? _status;

  bool get _isSuper => context.read<AppStateProvider>().currentUser?.isSuperAdmin ?? false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _reload();
    });
  }

  void _reload() => setState(() => _future = CcRiskService.instance.load(computeAlarms: _isSuper));

  String _statusOf(RiskData d, RiskAlarm a) => d.reviews[a.id]?.status ?? RiskStatus.fresh;

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final user = context.watch<AppStateProvider>().currentUser;
    if (user == null || !(user.isSuperAdmin || user.isSupport)) {
      return NoAccessScreen(title: l.ccRiskTitle);
    }
    return FutureBuilder<RiskData>(
      future: _future,
      builder: (context, snap) => CcPage(
        title: l.ccRiskTitle,
        subtitle: l.ccRiskSubtitle,
        actions: [
          IconButton(tooltip: l.ccRiskRefresh, icon: const Icon(Icons.refresh_rounded), onPressed: _reload),
        ],
        onRefresh: () async {
          _reload();
          await _future;
        },
        body: [
          CcAsync<RiskData>(
            snapshot: _future == null || snap.connectionState == ConnectionState.waiting
                ? const AsyncSnapshot.waiting()
                : snap,
            errorText: l.ccRiskLoadError,
            builder: (d) => user.isSuperAdmin ? _superContent(d, user) : _supportContent(d),
          ),
        ],
      ),
    );
  }

  // ------------------------------------------------------------------ destek
  Widget _supportContent(RiskData d) {
    final l = context.l10n;
    final reviews = d.reviews.values.toList()
      ..sort((a, b) => (b.reviewedAt ?? DateTime(2000)).compareTo(a.reviewedAt ?? DateTime(2000)));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CcPanel(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.shield_outlined, color: CcColors.info),
              const SizedBox(width: 10),
              Expanded(child: Text(l.ccRiskSupportNote, style: const TextStyle(fontSize: 13, color: CcColors.ink))),
            ],
          ),
        ),
        CcSection(
          title: l.ccRiskReviewsTitle,
          trailing: CcBadge(text: '${reviews.length}'),
          child: reviews.isEmpty
              ? CcEmpty(icon: Icons.fact_check_outlined, message: l.ccRiskReviewsEmpty)
              : Column(children: [for (final r in reviews) _reviewTile(r)]),
        ),
      ],
    );
  }

  Widget _reviewTile(RiskReview r) {
    final l = context.l10n;
    final typeName = r.alarmId.split('_').first;
    final type = RiskType.values.where((t) => t.name == typeName).firstOrNull;
    return CcPanel(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(type == null ? Icons.report_gmailerrorred_rounded : riskTypeIcon(type), color: riskStatusColor(r.status)),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(type == null ? r.alarmId : riskTypeLabel(l, type),
                    style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.ink)),
                if (r.note.isNotEmpty) Text(r.note, style: const TextStyle(fontSize: 13)),
                const SizedBox(height: 4),
                Text(l.ccRiskReviewedBy(r.reviewedByName.isEmpty ? r.reviewedBy : r.reviewedByName, CcFmt.dateTime(r.reviewedAt)),
                    style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
              ],
            ),
          ),
          CcBadge(text: riskStatusLabel(l, r.status), color: riskStatusColor(r.status)),
        ],
      ),
    );
  }

  // ------------------------------------------------------------------ süper admin
  Widget _superContent(RiskData d, UserModel user) {
    final l = context.l10n;
    final all = d.alarms;
    int count(RiskSeverity s) => all.where((a) => a.severity == s).length;
    final open = all.where((a) => _statusOf(d, a) == RiskStatus.fresh).length;
    final filtered = all
        .where((a) =>
            (_severity == null || a.severity == _severity) &&
            (_type == null || a.type == _type) &&
            (_status == null || _statusOf(d, a) == _status))
        .toList();
    final types = RiskType.values.where((t) => all.any((a) => a.type == t)).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CcKpiGrid(children: [
          CcKpiTile(
            icon: Icons.gpp_maybe_rounded,
            value: '${count(RiskSeverity.high)}',
            label: l.ccRiskSevHigh,
            color: CcColors.danger,
            onTap: () => setState(() => _severity = _severity == RiskSeverity.high ? null : RiskSeverity.high),
          ),
          CcKpiTile(
            icon: Icons.warning_amber_rounded,
            value: '${count(RiskSeverity.medium)}',
            label: l.ccRiskSevMedium,
            color: CcColors.warn,
            onTap: () => setState(() => _severity = _severity == RiskSeverity.medium ? null : RiskSeverity.medium),
          ),
          CcKpiTile(
            icon: Icons.info_outline_rounded,
            value: '${count(RiskSeverity.low)}',
            label: l.ccRiskSevLow,
            color: CcColors.info,
            onTap: () => setState(() => _severity = _severity == RiskSeverity.low ? null : RiskSeverity.low),
          ),
          CcKpiTile(
            icon: Icons.mark_email_unread_rounded,
            value: '$open',
            label: l.ccRiskKpiOpen,
            color: CcColors.gold,
            onTap: () => setState(() => _status = _status == RiskStatus.fresh ? null : RiskStatus.fresh),
          ),
        ]),
        const SizedBox(height: 4),
        _chipRow(l.ccRiskFilterSeverity, [
          _chip(l.ccRiskFilterAll, _severity == null, () => setState(() => _severity = null)),
          for (final s in RiskSeverity.values)
            _chip(riskSeverityLabel(l, s), _severity == s, () => setState(() => _severity = s), color: riskSeverityColor(s)),
        ]),
        _chipRow(l.ccRiskFilterStatus, [
          _chip(l.ccRiskFilterAll, _status == null, () => setState(() => _status = null)),
          for (final s in RiskStatus.values)
            _chip(riskStatusLabel(l, s), _status == s, () => setState(() => _status = s), color: riskStatusColor(s)),
        ]),
        if (types.length > 1)
          _chipRow(l.ccRiskFilterType, [
            _chip(l.ccRiskFilterAll, _type == null, () => setState(() => _type = null)),
            for (final t in types) _chip(riskTypeLabel(l, t), _type == t, () => setState(() => _type = t)),
          ]),
        const SizedBox(height: 8),
        CcSection(
          title: l.ccRiskAlarmsTitle,
          trailing: CcBadge(text: '${filtered.length} / ${all.length}'),
          child: filtered.isEmpty
              ? CcEmpty(icon: Icons.verified_user_rounded, message: l.ccRiskEmpty)
              : Column(children: [for (final a in filtered) _alarmCard(d, a, user)]),
        ),
      ],
    );
  }

  Widget _chipRow(String label, List<Widget> chips) => Padding(
        padding: const EdgeInsets.only(top: 6),
        child: Row(
          children: [
            SizedBox(
              width: 56,
              child: Text(label, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColors.textMuted)),
            ),
            Expanded(
              child: SizedBox(
                height: 36,
                child: ListView(scrollDirection: Axis.horizontal, children: chips),
              ),
            ),
          ],
        ),
      );

  Widget _chip(String text, bool selected, VoidCallback onTap, {Color color = CcColors.mid}) => Padding(
        padding: const EdgeInsetsDirectional.only(end: 6),
        child: ChoiceChip(
          label: Text(text),
          selected: selected,
          onSelected: (_) => onTap(),
          showCheckmark: false,
          visualDensity: VisualDensity.compact,
          selectedColor: color,
          backgroundColor: Colors.white,
          side: BorderSide(color: selected ? color : CcColors.mint),
          labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: selected ? Colors.white : CcColors.ink),
        ),
      );

  Widget _alarmCard(RiskData d, RiskAlarm a, UserModel user) {
    final l = context.l10n;
    final color = riskSeverityColor(a.severity);
    final status = _statusOf(d, a);
    return CcPanel(
      padding: EdgeInsets.zero,
      onTap: () => _openDetail(d, a, user),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 5,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadiusDirectional.horizontal(start: Radius.circular(18)).resolve(Directionality.of(context)),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(color: color.withValues(alpha: 0.12), borderRadius: BorderRadius.circular(10)),
                          child: Icon(riskTypeIcon(a.type), color: color, size: 18),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(riskTypeLabel(l, a.type),
                              style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.ink)),
                        ),
                        CcBadge(text: riskSeverityLabel(l, a.severity), color: color),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(riskExplain(l, a), style: const TextStyle(fontSize: 13, color: CcColors.ink)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.schedule_rounded, size: 14, color: AppColors.textMuted),
                        const SizedBox(width: 4),
                        Text(CcFmt.dateTime(a.time), style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
                        const SizedBox(width: 10),
                        if (a.amount > 0)
                          Text(_amountText(l, a),
                              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: CcColors.ink)),
                        const Spacer(),
                        CcBadge(text: riskStatusLabel(l, status), color: riskStatusColor(status)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _openDetail(RiskData d, RiskAlarm a, UserModel user) async {
    final changed = await showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => _AlarmDetailSheet(alarm: a, review: d.reviews[a.id], user: user),
    );
    if (changed == true && mounted) _reload();
  }
}

// ---------------------------------------------------------------------- detay

class _AlarmDetailSheet extends StatefulWidget {
  final RiskAlarm alarm;
  final RiskReview? review;
  final UserModel user;
  const _AlarmDetailSheet({required this.alarm, required this.review, required this.user});

  @override
  State<_AlarmDetailSheet> createState() => _AlarmDetailSheetState();
}

class _AlarmDetailSheetState extends State<_AlarmDetailSheet> {
  late String _status = widget.review?.status ?? RiskStatus.reviewed;
  late final _note = TextEditingController(text: widget.review?.note ?? '');
  bool _busy = false;
  bool _changed = false;
  final _cancelledIds = <String>{};

  @override
  void dispose() {
    _note.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final l = context.l10n;
    setState(() => _busy = true);
    try {
      await CcRiskService.instance.saveReview(widget.alarm, status: _status, note: _note.text.trim(), actor: widget.user);
      GlobalSnackbar.showSuccess(l.ccRiskReviewSaved);
      if (mounted) Navigator.pop(context, true);
    } catch (e) {
      debugPrint('risk review: $e');
      GlobalSnackbar.showError(l.ccRiskActionError);
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _cancelTx(FinTx t) async {
    final l = context.l10n;
    final ctrl = TextEditingController(text: l.ccRiskCancelReasonDefault);
    final reason = await showDialog<String>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l.ccRiskCancelTitle),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${t.tx.shopName} · ${t.tx.guestName}\n${CcFmt.sar(t.gross)} · ${CcFmt.dateTime(t.createdAt)}'),
            const SizedBox(height: 12),
            TextField(
              controller: ctrl,
              maxLength: 200,
              decoration: InputDecoration(labelText: l.ccRiskCancelReasonHint),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: Text(l.ccRiskCancel)),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: CcColors.danger),
            onPressed: () => Navigator.pop(ctx, ctrl.text.trim()),
            child: Text(l.ccRiskCancelTx),
          ),
        ],
      ),
    );
    ctrl.dispose();
    if (reason == null || reason.isEmpty || !mounted) return;
    setState(() => _busy = true);
    try {
      await CcRiskService.instance.cancelTransaction(t, reason: reason, actor: widget.user, alarmId: widget.alarm.id);
      GlobalSnackbar.showSuccess(l.ccRiskCancelled);
      if (mounted) {
        setState(() {
          _cancelledIds.add(t.id);
          _changed = true;
        });
      }
    } catch (e) {
      debugPrint('risk cancel: $e');
      GlobalSnackbar.showError(l.ccRiskActionError);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final a = widget.alarm;
    final color = riskSeverityColor(a.severity);
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) Navigator.pop(context, _changed);
      },
      child: DraggableScrollableSheet(
        initialChildSize: 0.85,
        minChildSize: 0.5,
        maxChildSize: 0.95,
        expand: false,
        builder: (context, scroll) => Container(
          decoration: const BoxDecoration(
            color: CcColors.bg,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: ListView(
            controller: scroll,
            padding: EdgeInsets.fromLTRB(16, 10, 16, 24 + MediaQuery.of(context).viewInsets.bottom),
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(color: AppColors.divider, borderRadius: BorderRadius.circular(2)),
                ),
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(color: color.withValues(alpha: 0.12), borderRadius: BorderRadius.circular(14)),
                    child: Icon(riskTypeIcon(a.type), color: color),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(riskTypeLabel(l, a.type),
                            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: CcColors.ink)),
                        Text(a.id, style: const TextStyle(fontSize: 10, color: AppColors.textMuted)),
                      ],
                    ),
                  ),
                  CcBadge(text: riskSeverityLabel(l, a.severity), color: color),
                ],
              ),
              const SizedBox(height: 12),
              CcPanel(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(riskExplain(l, a), style: const TextStyle(fontSize: 14, color: CcColors.ink)),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 12,
                      runSpacing: 4,
                      children: [
                        _meta(Icons.schedule_rounded, '${l.ccRiskTime}: ${CcFmt.dateTime(a.time)}'),
                        if (a.amount > 0) _meta(Icons.payments_rounded, '${l.ccRiskAmount}: ${_amountText(l, a)}'),
                      ],
                    ),
                  ],
                ),
              ),
              if (a.entities.isNotEmpty)
                CcPanel(
                  title: l.ccRiskEntities,
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [for (final e in a.entities) _entityChip(l, e)],
                  ),
                ),
              CcPanel(
                title: l.ccRiskEvidence,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (a.coupon != null) _couponEvidence(l, a.coupon!),
                    for (final t in a.txs.take(50)) _txEvidence(l, t),
                    for (final g in a.grants) _grantEvidence(l, g),
                    if (a.txs.isEmpty && a.grants.isEmpty && a.coupon == null)
                      Text('-', style: const TextStyle(color: AppColors.textMuted)),
                  ],
                ),
              ),
              CcPanel(
                title: l.ccRiskReview,
                trailing: widget.review == null
                    ? null
                    : Text(
                        l.ccRiskReviewedBy(widget.review!.reviewedByName, CcFmt.dateTime(widget.review!.reviewedAt)),
                        style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Wrap(
                      spacing: 8,
                      children: [
                        for (final s in [RiskStatus.reviewed, RiskStatus.falseAlarm, RiskStatus.confirmed])
                          ChoiceChip(
                            label: Text(riskStatusLabel(l, s)),
                            selected: _status == s,
                            showCheckmark: false,
                            selectedColor: riskStatusColor(s),
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.w600, color: _status == s ? Colors.white : CcColors.ink),
                            onSelected: _busy ? null : (_) => setState(() => _status = s),
                          ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: _note,
                      maxLines: 3,
                      maxLength: 500,
                      decoration: InputDecoration(hintText: l.ccRiskNoteHint),
                    ),
                    FilledButton.icon(
                      onPressed: _busy ? null : _save,
                      icon: const Icon(Icons.save_rounded),
                      label: Text(l.ccRiskSaveReview),
                      style: FilledButton.styleFrom(
                        backgroundColor: CcColors.deep,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _meta(IconData icon, String text) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: AppColors.textMuted),
          const SizedBox(width: 4),
          Text(text, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
        ],
      );

  Widget _entityChip(AppLocalizations l, RiskEntity e) {
    final (icon, kind) = switch (e.kind) {
      RiskEntityKind.shop => (Icons.storefront_rounded, l.ccRiskEntityShop),
      RiskEntityKind.guest => (Icons.person_rounded, l.ccRiskEntityGuest),
      RiskEntityKind.admin => (Icons.admin_panel_settings_rounded, l.ccRiskEntityAdmin),
      RiskEntityKind.coupon => (Icons.confirmation_number_rounded, l.ccRiskEntityCoupon),
    };
    return Chip(
      avatar: Icon(icon, size: 16, color: CcColors.mid),
      label: Text('$kind: ${e.label}', style: const TextStyle(fontSize: 12)),
      backgroundColor: CcColors.mint.withValues(alpha: 0.5),
      side: BorderSide.none,
      visualDensity: VisualDensity.compact,
    );
  }

  Widget _txEvidence(AppLocalizations l, FinTx t) {
    final cancelled = !t.isOk || _cancelledIds.contains(t.id);
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: CcColors.bg, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          const Icon(Icons.receipt_rounded, size: 18, color: CcColors.mid),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${t.tx.guestName} → ${t.tx.shopName}',
                    maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13)),
                Text(
                  '${CcFmt.dateTime(t.createdAt)} · ${CcFmt.sar(t.gross)}'
                  '${t.tx.pointsSpent > 0 ? ' · ${l.ccRiskPointsUnit(CcFmt.num0(t.tx.pointsSpent))}' : ''}'
                  '${t.couponId.isNotEmpty ? ' · ${t.couponId}' : ''}',
                  style: const TextStyle(fontSize: 11, color: AppColors.textMuted),
                ),
                if (t.tx.cancelReason.isNotEmpty)
                  Text(t.tx.cancelReason, style: const TextStyle(fontSize: 11, color: CcColors.danger)),
              ],
            ),
          ),
          if (cancelled)
            CcBadge(text: l.ccRiskTxCancelledBadge, color: CcColors.danger)
          else
            IconButton(
              tooltip: l.ccRiskCancelTx,
              onPressed: _busy ? null : () => _cancelTx(t),
              icon: const Icon(Icons.block_rounded, color: CcColors.danger),
            ),
        ],
      ),
    );
  }

  Widget _grantEvidence(AppLocalizations l, RiskGrant g) => Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: CcColors.bg, borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            const Icon(Icons.card_giftcard_rounded, size: 18, color: CcColors.gold),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(g.guestName.isEmpty ? g.guestUid : g.guestName,
                      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13)),
                  Text('${CcFmt.dateTime(g.createdAt)}${g.reason.isEmpty ? '' : ' · ${g.reason}'}',
                      style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
                ],
              ),
            ),
            Text('+${CcFmt.num0(g.points)}', style: const TextStyle(fontWeight: FontWeight.w800, color: CcColors.gold)),
          ],
        ),
      );

  Widget _couponEvidence(AppLocalizations l, RiskCoupon c) => Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: CcColors.bg, borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            const Icon(Icons.confirmation_number_rounded, size: 18, color: CcColors.mid),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${c.code}${c.title.isEmpty ? '' : ' · ${c.title}'}',
                      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13)),
                  Text(
                    l.ccRiskCouponInfo(
                      c.isPercent ? CcFmt.pct(c.value) : CcFmt.sar(c.value),
                      c.usedCount,
                      c.maxUses == 0 ? '∞' : '${c.maxUses}',
                    ),
                    style: const TextStyle(fontSize: 11, color: AppColors.textMuted),
                  ),
                ],
              ),
            ),
            CcBadge(
              text: c.active ? l.ccRiskCouponActive : l.ccRiskCouponPassive,
              color: c.active ? CcColors.ok : AppColors.textMuted,
            ),
          ],
        ),
      );
}

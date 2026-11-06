import 'dart:math' as math;

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../admin/widgets/no_access_screen.dart';
import '../../auth/models/user_model.dart';
import '../shared/cc_widgets.dart';
import 'finance_service.dart';
import 'settlement_statement_screen.dart';

/// Kontrol Merkezi › Finans ve Hak Ediş (`/cc/finance`). Süper admin ve muhasebe.
class CcFinanceScreen extends StatefulWidget {
  const CcFinanceScreen({super.key});

  @override
  State<CcFinanceScreen> createState() => _CcFinanceScreenState();
}

enum _View { shops, agencies }

class _CcFinanceScreenState extends State<CcFinanceScreen> {
  DateTime _month = DateTime(DateTime.now().year, DateTime.now().month);
  Future<FinanceMonth>? _future;
  _View _view = _View.shops;
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    _reload();
  }

  void _reload() => setState(() => _future = CcFinanceService.instance.loadMonth(_month));

  void _shiftMonth(int delta) {
    final next = DateTime(_month.year, _month.month + delta);
    final now = DateTime.now();
    if (next.isAfter(DateTime(now.year, now.month))) return;
    _month = next;
    _reload();
  }

  String _monthLabel(BuildContext context) {
    try {
      return DateFormat.yMMMM(Localizations.localeOf(context).toLanguageTag()).format(_month);
    } catch (_) {
      return CcFmt.month(_month);
    }
  }

  UserModel? get _user => context.read<AppStateProvider>().currentUser;

  Future<void> _run(Future<void> Function() action) async {
    if (_busy) return;
    final errorText = context.l10n.ccFinActionError;
    setState(() => _busy = true);
    try {
      await action();
    } catch (e) {
      debugPrint('CcFinanceScreen: $e');
      GlobalSnackbar.showError(errorText);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  // ------------------------------------------------------------------ eylemler
  Future<void> _editPercent(FinanceMonth m) async {
    final l = context.l10n;
    final ctrl = TextEditingController(text: '${m.platformPercent}');
    final value = await showDialog<int>(
      context: context,
      builder: (ctx) {
        String? error;
        return StatefulBuilder(
          builder: (ctx, setD) => AlertDialog(
            title: Text(l.ccFinSettingsDialogTitle),
            content: TextField(
              controller: ctrl,
              autofocus: true,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(suffixText: '%', errorText: error),
            ),
            actions: [
              TextButton(onPressed: () => Navigator.pop(ctx), child: Text(l.ccFinCancel)),
              FilledButton(
                onPressed: () {
                  final v = int.tryParse(ctrl.text.trim());
                  if (v == null || v < 0 || v > 100) {
                    setD(() => error = l.ccFinSettingsInvalid);
                    return;
                  }
                  Navigator.pop(ctx, v);
                },
                child: Text(l.ccFinSave),
              ),
            ],
          ),
        );
      },
    );
    ctrl.dispose();
    final user = _user;
    if (value == null || user == null || !mounted) return;
    await _run(() async {
      await CcFinanceService.instance.setPlatformPercent(value, actor: user, previous: m.platformPercent);
      GlobalSnackbar.showSuccess(l.ccFinSettingsSaved);
      _reload();
    });
  }

  Future<void> _generate(FinanceMonth m) async {
    final l = context.l10n;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l.ccFinGenerate),
        content: Text(l.ccFinGenerateConfirm(_monthLabel(context))),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(l.ccFinCancel)),
          FilledButton(onPressed: () => Navigator.pop(ctx, true), child: Text(l.ccFinGenerate)),
        ],
      ),
    );
    final user = _user;
    if (ok != true || user == null || !mounted) return;
    await _run(() async {
      final n = await CcFinanceService.instance.generatePeriod(m, actor: user);
      GlobalSnackbar.showSuccess(l.ccFinGenerateDone(n));
      _reload();
    });
  }

  Future<void> _markPaid(Settlement s) async {
    final l = context.l10n;
    final ctrl = TextEditingController(text: s.note);
    final note = await showDialog<String>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l.ccFinMarkPaidTitle),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${s.shopName} · ${CcFmt.sar(s.commissionTotal)}',
                style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.ink)),
            const SizedBox(height: 12),
            TextField(
              controller: ctrl,
              maxLines: 2,
              maxLength: 200,
              decoration: InputDecoration(hintText: l.ccFinNoteHint),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: Text(l.ccFinCancel)),
          FilledButton.icon(
            icon: const Icon(Icons.verified_rounded, size: 18),
            onPressed: () => Navigator.pop(ctx, ctrl.text.trim()),
            label: Text(l.ccFinMarkPaid),
          ),
        ],
      ),
    );
    ctrl.dispose();
    final user = _user;
    if (note == null || user == null || !mounted) return;
    await _run(() async {
      await CcFinanceService.instance.markPaid(s, actor: user, note: note);
      GlobalSnackbar.showSuccess(l.ccFinMarkedPaid);
      _reload();
    });
  }

  Future<void> _revert(Settlement s) async {
    final l = context.l10n;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l.ccFinRevert),
        content: Text(l.ccFinRevertConfirm),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(l.ccFinCancel)),
          FilledButton(onPressed: () => Navigator.pop(ctx, true), child: Text(l.ccFinRevert)),
        ],
      ),
    );
    final user = _user;
    if (ok != true || user == null || !mounted) return;
    await _run(() async {
      await CcFinanceService.instance.revertToPending(s, actor: user);
      GlobalSnackbar.showSuccess(l.ccFinReverted);
      _reload();
    });
  }

  Future<void> _copyAllCsv(FinanceMonth m) async {
    final l = context.l10n;
    final b = StringBuffer()
      ..writeln(FinCsv.row([
        l.ccFinColPeriod,
        l.ccFinStmtShop,
        l.ccFinColTx,
        l.ccFinColGross,
        l.ccFinColDiscount,
        l.ccFinColCoupon,
        l.ccFinColNet,
        l.ccFinColRate,
        l.ccFinColCommission,
        l.ccFinColPlatform,
        l.ccFinColAgency,
        l.ccFinColStatus,
      ]));
    for (final r in m.rows) {
      final t = r.totals;
      b.writeln(FinCsv.row([
        m.period,
        r.shopName,
        t.count,
        t.gross,
        t.discount,
        t.coupon,
        t.net,
        r.commissionPercent,
        t.commission,
        t.platformShare(m.platformPercent),
        t.agencyShare(m.platformPercent),
        _statusText(r.settlement),
      ]));
    }
    await Clipboard.setData(ClipboardData(text: b.toString()));
    GlobalSnackbar.showSuccess(l.ccFinCsvCopied);
  }

  String _statusText(Settlement? s) {
    final l = context.l10n;
    if (s == null) return l.ccFinStatusNone;
    return s.isPaid ? l.ccFinStatusPaid : l.ccFinStatusPending;
  }

  // ------------------------------------------------------------------ çizim
  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final user = context.watch<AppStateProvider>().currentUser;
    if (user == null || !(user.isSuperAdmin || user.isFinance)) {
      return NoAccessScreen(title: l.ccFinTitle);
    }
    final now = DateTime.now();
    final isCurrent = _month.year == now.year && _month.month == now.month;
    return FutureBuilder<FinanceMonth>(
      future: _future,
      builder: (context, snap) => CcPage(
        title: l.ccFinTitle,
        subtitle: l.ccFinSubtitle,
        onRefresh: () async {
          _reload();
          await _future;
        },
        actions: [
          if (snap.hasData)
            IconButton(
              tooltip: l.ccFinCopyAllCsv,
              icon: const Icon(Icons.table_view_rounded),
              onPressed: () => _copyAllCsv(snap.data!),
            ),
          IconButton(tooltip: l.ccFinRefresh, icon: const Icon(Icons.refresh_rounded), onPressed: _reload),
        ],
        headerExtra: _MonthSelector(
          label: _monthLabel(context),
          onPrev: () => _shiftMonth(-1),
          onNext: isCurrent ? null : () => _shiftMonth(1),
          prevTooltip: l.ccFinPrevMonth,
          nextTooltip: l.ccFinNextMonth,
        ),
        body: [
          if (_busy) const LinearProgressIndicator(minHeight: 2),
          CcAsync<FinanceMonth>(
            snapshot: snap.connectionState == ConnectionState.waiting
                ? const AsyncSnapshot.waiting()
                : snap,
            errorText: l.ccFinLoadError,
            builder: (m) => _content(m, user),
          ),
        ],
      ),
    );
  }

  Widget _content(FinanceMonth m, UserModel user) {
    final l = context.l10n;
    final t = m.totals;
    final p = m.platformPercent;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _ProNote(text: l.ccFinProNote),
        _settingsCard(m, user),
        CcSection(
          title: l.ccFinTotalsTitle,
          child: CcKpiGrid(children: [
            CcKpiTile(icon: Icons.payments_rounded, value: CcFmt.sar(t.gross), label: l.ccFinKpiGross, color: CcColors.gold),
            CcKpiTile(icon: Icons.account_balance_wallet_rounded, value: CcFmt.sar(t.net), label: l.ccFinKpiNet),
            CcKpiTile(icon: Icons.local_offer_rounded, value: CcFmt.sar(t.discount), label: l.ccFinKpiDiscount, color: CcColors.info),
            CcKpiTile(icon: Icons.confirmation_number_rounded, value: CcFmt.sar(t.coupon), label: l.ccFinKpiCoupon, color: const Color(0xFF8E5A9B)),
            CcKpiTile(icon: Icons.percent_rounded, value: CcFmt.sar(t.commission), label: l.ccFinKpiCommission, color: CcColors.deep),
            CcKpiTile(icon: Icons.apartment_rounded, value: CcFmt.sar(t.platformShare(p)), label: l.ccFinKpiPlatform, color: CcColors.gold),
            CcKpiTile(icon: Icons.groups_rounded, value: CcFmt.sar(t.agencyShare(p)), label: l.ccFinKpiAgency, color: CcColors.sage),
            CcKpiTile(icon: Icons.receipt_long_rounded, value: CcFmt.num0(t.count), label: l.ccFinKpiTxCount, color: CcColors.info),
          ]),
        ),
        CcPanel(
          title: l.ccFinDailyChart,
          trailing: CcBadge(text: CcFmt.sar(t.commission), color: CcColors.deep),
          child: SizedBox(height: 170, child: _DailyChart(values: m.dailyCommission)),
        ),
        const SizedBox(height: 8),
        SegmentedButton<_View>(
          segments: [
            ButtonSegment(value: _View.shops, icon: const Icon(Icons.storefront_rounded), label: Text(l.ccFinTabShops)),
            ButtonSegment(value: _View.agencies, icon: const Icon(Icons.business_rounded), label: Text(l.ccFinTabAgencies)),
          ],
          selected: {_view},
          showSelectedIcon: false,
          onSelectionChanged: (s) => setState(() => _view = s.first),
          style: SegmentedButton.styleFrom(
            selectedBackgroundColor: CcColors.mid,
            selectedForegroundColor: Colors.white,
            backgroundColor: Colors.white,
            foregroundColor: CcColors.ink,
          ),
        ),
        const SizedBox(height: 16),
        if (_view == _View.shops) _shopsSection(m) else _agenciesSection(m),
      ],
    );
  }

  Widget _settingsCard(FinanceMonth m, UserModel user) {
    final l = context.l10n;
    final p = m.platformPercent;
    return CcPanel(
      title: l.ccFinSettingsTitle,
      trailing: user.isSuperAdmin
          ? TextButton.icon(
              onPressed: _busy ? null : () => _editPercent(m),
              icon: const Icon(Icons.edit_rounded, size: 16),
              label: Text(l.ccFinSettingsEdit),
            )
          : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              height: 26,
              child: Row(
                children: [
                  if (p > 0)
                    Expanded(
                      flex: p,
                      child: Container(
                        color: CcColors.gold,
                        alignment: Alignment.center,
                        child: Text('${l.ccFinKpiPlatform} %$p',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w700)),
                      ),
                    ),
                  if (p < 100)
                    Expanded(
                      flex: 100 - p,
                      child: Container(
                        color: CcColors.mid,
                        alignment: Alignment.center,
                        child: Text('${l.ccFinKpiAgency} %${100 - p}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w700)),
                      ),
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(l.ccFinSettingsExplain(p, 100 - p), style: const TextStyle(fontSize: 13, color: AppColors.textMuted)),
          if (m.platformPercentIsDefault) ...[
            const SizedBox(height: 6),
            Text(l.ccFinSettingsDefault, style: const TextStyle(fontSize: 12, color: CcColors.warn)),
          ],
        ],
      ),
    );
  }

  Widget _shopsSection(FinanceMonth m) {
    final l = context.l10n;
    final rows = m.rows;
    final paid = rows.where((r) => r.settlement?.isPaid ?? false).length;
    return CcSection(
      title: l.ccFinTabShops,
      trailing: CcBadge(text: l.ccFinPaidCount(paid, rows.length), color: CcColors.ok),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FilledButton.icon(
            onPressed: _busy || rows.isEmpty ? null : () => _generate(m),
            icon: const Icon(Icons.playlist_add_check_rounded),
            label: Text(l.ccFinGenerate),
            style: FilledButton.styleFrom(
              backgroundColor: CcColors.deep,
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            ),
          ),
          const SizedBox(height: 12),
          if (rows.isEmpty)
            CcEmpty(icon: Icons.receipt_long_rounded, message: l.ccFinEmpty)
          else
            for (final r in rows) _shopCard(m, r),
        ],
      ),
    );
  }

  Widget _shopCard(FinanceMonth m, ShopSettlementRow r) {
    final l = context.l10n;
    final t = r.totals;
    final s = r.settlement;
    final p = m.platformPercent;
    final statusColor = s == null ? AppColors.textMuted : (s.isPaid ? CcColors.ok : CcColors.warn);
    final diff = s != null && s.isPaid && s.differsFrom(t);
    return CcPanel(
      onTap: () => _openStatement(m, r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: CcColors.mint,
                child: Text(r.shopName.isEmpty ? '?' : r.shopName.characters.first.toUpperCase(),
                    style: const TextStyle(color: CcColors.mid, fontWeight: FontWeight.w800)),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(r.shopName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.ink)),
                    Text(
                      r.shopAgencyId == 'all' || r.shopAgencyId.isEmpty
                          ? l.ccFinAllAgencies
                          : (m.agencyNames[r.shopAgencyId] ?? r.shopAgencyId),
                      style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                    ),
                  ],
                ),
              ),
              CcBadge(
                text: _statusText(s),
                color: statusColor,
                icon: s == null
                    ? Icons.hourglass_empty_rounded
                    : (s.isPaid ? Icons.verified_rounded : Icons.schedule_rounded),
              ),
            ],
          ),
          const SizedBox(height: 12),
          _MetricGrid(items: [
            (l.ccFinColTx, CcFmt.num0(t.count)),
            (l.ccFinColNet, CcFmt.sar(t.net)),
            (l.ccFinColRate, CcFmt.pct(r.commissionPercent)),
            (l.ccFinColCommission, CcFmt.sar(t.commission)),
            (l.ccFinColPlatform, CcFmt.sar(t.platformShare(p))),
            (l.ccFinColAgency, CcFmt.sar(t.agencyShare(p))),
          ]),
          if (s != null && s.isPaid && s.paidAt != null) ...[
            const SizedBox(height: 8),
            Text(l.ccFinPaidOn(CcFmt.dateTime(s.paidAt)) + (s.note.isEmpty ? '' : ' · ${s.note}'),
                style: const TextStyle(fontSize: 12, color: CcColors.ok)),
          ],
          if (diff) ...[
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: CcColors.warn.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const Icon(Icons.warning_amber_rounded, size: 18, color: CcColors.warn),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(l.ccFinPaidDiff(CcFmt.sar(s.commissionTotal), s.txCount),
                        style: const TextStyle(fontSize: 12, color: CcColors.warn)),
                  ),
                ],
              ),
            ),
          ],
          const SizedBox(height: 6),
          Row(
            children: [
              TextButton.icon(
                onPressed: () => _openStatement(m, r),
                icon: const Icon(Icons.description_rounded, size: 18),
                label: Text(l.ccFinStatement),
              ),
              const Spacer(),
              if (s == null)
                Text(l.ccFinGenerateFirst, style: const TextStyle(fontSize: 12, color: AppColors.textMuted))
              else if (s.isPaid)
                TextButton.icon(
                  onPressed: _busy ? null : () => _revert(s),
                  icon: const Icon(Icons.undo_rounded, size: 18),
                  label: Text(l.ccFinRevert),
                  style: TextButton.styleFrom(foregroundColor: CcColors.warn),
                )
              else
                FilledButton.tonalIcon(
                  onPressed: _busy ? null : () => _markPaid(s),
                  icon: const Icon(Icons.check_circle_rounded, size: 18),
                  label: Text(l.ccFinMarkPaid),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _agenciesSection(FinanceMonth m) {
    final l = context.l10n;
    final rows = m.agencyRows;
    final p = m.platformPercent;
    final maxShare = rows.isEmpty ? 0.0 : rows.map((r) => r.totals.agencyShare(p)).reduce(math.max);
    return CcSection(
      title: l.ccFinTabAgencies,
      trailing: CcBadge(text: CcFmt.sar(m.totals.agencyShare(p)), color: CcColors.mid),
      child: CcPanel(
        child: rows.isEmpty
            ? CcEmpty(icon: Icons.business_rounded, message: l.ccFinAgencyEmpty)
            : Column(
                children: [
                  Text(l.ccFinAgencyExplain, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                  const SizedBox(height: 8),
                  for (var i = 0; i < rows.length; i++)
                    CcRankBar(
                      rank: i + 1,
                      label: rows[i].agencyId.isEmpty
                          ? l.ccFinUnknownAgency
                          : (m.agencyNames[rows[i].agencyId] ?? rows[i].agencyId),
                      value: CcFmt.sar(rows[i].totals.agencyShare(p)),
                      fraction: maxShare <= 0 ? 0 : rows[i].totals.agencyShare(p) / maxShare,
                      subtitle: l.ccFinAgencySub(rows[i].totals.count, CcFmt.sar(rows[i].totals.net)),
                      color: CcColors.series[i % CcColors.series.length],
                    ),
                ],
              ),
      ),
    );
  }

  Future<void> _openStatement(FinanceMonth m, ShopSettlementRow r) async {
    await Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => SettlementStatementScreen(
        row: r,
        month: m.month,
        monthLabel: _monthLabel(context),
        platformPercent: m.platformPercent,
        agencyName: r.shopAgencyId == 'all' || r.shopAgencyId.isEmpty
            ? context.l10n.ccFinAllAgencies
            : (m.agencyNames[r.shopAgencyId] ?? r.shopAgencyId),
      ),
    ));
  }
}

// ---------------------------------------------------------------------- yardımcı widget'lar

class _MonthSelector extends StatelessWidget {
  final String label;
  final VoidCallback onPrev;
  final VoidCallback? onNext;
  final String prevTooltip;
  final String nextTooltip;
  const _MonthSelector({
    required this.label,
    required this.onPrev,
    required this.onNext,
    required this.prevTooltip,
    required this.nextTooltip,
  });

  @override
  Widget build(BuildContext context) => Container(
        height: 42,
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.white24),
        ),
        child: Row(
          children: [
            IconButton(
              tooltip: prevTooltip,
              onPressed: onPrev,
              icon: const Icon(Icons.chevron_left_rounded, color: Colors.white),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.calendar_month_rounded, color: Colors.white70, size: 18),
                  const SizedBox(width: 8),
                  Text(label, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 15)),
                ],
              ),
            ),
            IconButton(
              tooltip: nextTooltip,
              onPressed: onNext,
              icon: Icon(Icons.chevron_right_rounded, color: onNext == null ? Colors.white24 : Colors.white),
            ),
          ],
        ),
      );
}

class _ProNote extends StatelessWidget {
  final String text;
  const _ProNote({required this.text});

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: CcColors.info.withValues(alpha: 0.08),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: CcColors.info.withValues(alpha: 0.2)),
        ),
        child: Row(
          children: [
            const Icon(Icons.info_outline_rounded, size: 16, color: CcColors.info),
            const SizedBox(width: 8),
            Expanded(child: Text(text, style: const TextStyle(fontSize: 12, color: CcColors.info))),
          ],
        ),
      );
}

/// 3 sütunlu küçük etiket/değer ızgarası.
class _MetricGrid extends StatelessWidget {
  final List<(String, String)> items;
  const _MetricGrid({required this.items});

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, c) {
          const cols = 3;
          final w = (c.maxWidth - 8 * (cols - 1)) / cols;
          return Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final (label, value) in items)
                Container(
                  width: w,
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  decoration: BoxDecoration(color: CcColors.bg, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(label, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 10.5, color: AppColors.textMuted)),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(value, style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.ink, fontSize: 13)),
                      ),
                    ],
                  ),
                ),
            ],
          );
        },
      );
}

class _DailyChart extends StatelessWidget {
  final List<double> values;
  const _DailyChart({required this.values});

  @override
  Widget build(BuildContext context) {
    final maxY = values.isEmpty ? 0.0 : values.reduce(math.max);
    return BarChart(
      BarChartData(
        maxY: maxY <= 0 ? 10 : maxY * 1.2,
        gridData: const FlGridData(show: true, drawVerticalLine: false),
        borderData: FlBorderData(show: false),
        barTouchData: BarTouchData(
          enabled: true,
          touchTooltipData: BarTouchTooltipData(
            getTooltipItem: (group, _, rod, _) => BarTooltipItem(
              '${group.x + 1}\n${CcFmt.sar(rod.toY)}',
              const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        titlesData: FlTitlesData(
          topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 36,
              getTitlesWidget: (v, meta) => Text(CcFmt.compact(v),
                  style: const TextStyle(fontSize: 9, color: AppColors.textMuted)),
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 20,
              getTitlesWidget: (v, meta) {
                final d = v.toInt() + 1;
                if (d != 1 && d % 5 != 0) return const SizedBox.shrink();
                return Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text('$d', style: const TextStyle(fontSize: 10, color: AppColors.textMuted)),
                );
              },
            ),
          ),
        ),
        barGroups: [
          for (var i = 0; i < values.length; i++)
            BarChartGroupData(x: i, barRods: [
              BarChartRodData(
                toY: values[i],
                width: 6,
                color: values[i] > 0 ? CcColors.mid : CcColors.mint,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(3)),
              ),
            ]),
        ],
      ),
    );
  }
}

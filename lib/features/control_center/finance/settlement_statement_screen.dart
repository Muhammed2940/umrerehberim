import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../shared/cc_widgets.dart';
import 'finance_service.dart';

/// "Hak Ediş Dekontu": bir dükkanın bir aylık komisyon dökümü (basılı belge görünümünde).
class SettlementStatementScreen extends StatelessWidget {
  final ShopSettlementRow row;
  final DateTime month;
  final String monthLabel;
  final int platformPercent;
  final String agencyName;

  const SettlementStatementScreen({
    super.key,
    required this.row,
    required this.month,
    required this.monthLabel,
    required this.platformPercent,
    required this.agencyName,
  });

  String get _period => CcFinanceService.periodKey(month);

  Future<void> _copyCsv(BuildContext context) async {
    final l = context.l10n;
    final b = StringBuffer()
      ..writeln(FinCsv.row([
        l.ccFinColDate,
        l.ccFinColGuest,
        l.ccFinColGross,
        l.ccFinColDiscount,
        l.ccFinColCoupon,
        l.ccFinColNet,
        l.ccFinColCommission,
        'id',
      ]));
    for (final t in row.okTxs) {
      b.writeln(FinCsv.row([
        CcFmt.dateTime(t.createdAt),
        FinCsv.shortName(t.tx.guestName),
        t.gross,
        t.discount,
        t.couponDiscount,
        t.net,
        t.commission,
        t.id,
      ]));
    }
    final s = row.totals;
    b.writeln(FinCsv.row([l.ccFinStmtTotals, '', s.gross, s.discount, s.coupon, s.net, s.commission, '']));
    await Clipboard.setData(ClipboardData(text: b.toString()));
    GlobalSnackbar.showSuccess(l.ccFinCsvCopied);
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final s = row.settlement;
    final paid = s?.isPaid ?? false;
    // Ödenmiş dönemde kayıtlı tutarlar esas alınır; diğerlerinde canlı hesap.
    final live = row.totals;
    final platformPercent = paid ? (s!.platformPercent ?? this.platformPercent) : this.platformPercent;
    final commission = paid ? s!.commissionTotal : live.commission;
    final platform = paid ? s!.platformShare : live.platformShare(platformPercent);
    final agency = paid ? s!.agencyShare : live.agencyShare(platformPercent);
    final txs = row.okTxs;

    return CcPage(
      title: l.ccFinStmtTitle,
      subtitle: '${row.shopName} · $monthLabel',
      actions: [
        IconButton(
          tooltip: l.ccFinStmtCopyCsv,
          icon: const Icon(Icons.copy_all_rounded),
          onPressed: () => _copyCsv(context),
        ),
      ],
      body: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: AppColors.divider),
            boxShadow: const [BoxShadow(color: Color(0x1A051F20), blurRadius: 18, offset: Offset(0, 6))],
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Başlık
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [CcColors.ink, CcColors.mid]),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(Icons.mosque_rounded, color: Colors.white, size: 22),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(l.ccFinStmtTitle.toUpperCase(),
                                  style: const TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w800, letterSpacing: 1.2, color: CcColors.ink)),
                              Text(l.ccFinStmtPlatform, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    const Divider(height: 1, color: CcColors.ink, thickness: 1.2),
                    const SizedBox(height: 12),
                    _kv(l.ccFinStmtNo, '${row.shopId}-$_period'.toUpperCase()),
                    _kv(l.ccFinStmtShop, row.shopName),
                    if ((row.shop?.merchantCode ?? '').isNotEmpty) _kv(l.ccFinStmtMerchantCode, row.shop!.merchantCode),
                    _kv(l.ccFinStmtAgency, agencyName),
                    _kv(l.ccFinStmtPeriod, monthLabel),
                    _kv(l.ccFinStmtRate, CcFmt.pct(row.commissionPercent)),
                    _kv(l.ccFinStmtIssued, CcFmt.dateTime(DateTime.now())),
                    if (paid) _kv(l.ccFinStatusPaid, CcFmt.dateTime(s!.paidAt)),
                    if (s != null && s.note.isNotEmpty) _kv(l.ccFinStmtNote, s.note),
                    const SizedBox(height: 16),
                    Text(l.ccFinStmtLines,
                        style: const TextStyle(fontWeight: FontWeight.w800, color: CcColors.ink, letterSpacing: 0.4)),
                    const SizedBox(height: 8),
                    _LinesTable(txs: txs),
                    const SizedBox(height: 16),
                    // Toplamlar
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(color: CcColors.bg, borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          _total(l.ccFinColTx, CcFmt.num0(paid ? s!.txCount : live.count)),
                          _total(l.ccFinColGross, CcFmt.sar(paid ? s!.gross : live.gross)),
                          _total(l.ccFinColDiscount, '− ${CcFmt.sar(paid ? s!.discountTotal : live.discount)}'),
                          _total(l.ccFinColCoupon, '− ${CcFmt.sar(paid ? s!.couponTotal : live.coupon)}'),
                          _total(l.ccFinColNet, CcFmt.sar(paid ? s!.net : live.net)),
                          const Divider(),
                          _total(l.ccFinStmtPayable, CcFmt.sar(commission), strong: true),
                          _total('${l.ccFinColPlatform} (%$platformPercent)', CcFmt.sar(platform)),
                          _total('${l.ccFinColAgency} (%${100 - platformPercent})', CcFmt.sar(agency)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 14),
                    Text(l.ccFinStmtFooter,
                        textAlign: TextAlign.center, style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
                  ],
                ),
              ),
              PositionedDirectional(
                top: 70,
                end: 14,
                child: _Stamp(
                  text: paid ? l.ccFinStmtStampPaid : l.ccFinStmtStampPending,
                  color: paid ? CcColors.ok : CcColors.warn,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        FilledButton.icon(
          onPressed: () => _copyCsv(context),
          icon: const Icon(Icons.copy_all_rounded),
          label: Text(l.ccFinStmtCopyCsv),
          style: FilledButton.styleFrom(
            backgroundColor: CcColors.deep,
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          ),
        ),
      ],
    );
  }

  Widget _kv(String k, String v) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 120, child: Text(k, style: const TextStyle(fontSize: 12, color: AppColors.textMuted))),
            Expanded(child: Text(v, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: CcColors.ink))),
          ],
        ),
      );

  Widget _total(String k, String v, {bool strong = false}) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Row(
          children: [
            Expanded(
              child: Text(k,
                  style: TextStyle(
                      fontSize: strong ? 14 : 13,
                      fontWeight: strong ? FontWeight.w800 : FontWeight.w500,
                      color: strong ? CcColors.ink : AppColors.textMuted)),
            ),
            Text(v,
                style: TextStyle(
                    fontSize: strong ? 16 : 13,
                    fontWeight: strong ? FontWeight.w800 : FontWeight.w600,
                    color: strong ? CcColors.deep : CcColors.ink)),
          ],
        ),
      );
}

class _Stamp extends StatelessWidget {
  final String text;
  final Color color;
  const _Stamp({required this.text, required this.color});

  @override
  Widget build(BuildContext context) => Transform.rotate(
        angle: -math.pi / 14,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            border: Border.all(color: color.withValues(alpha: 0.75), width: 2.5),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(text,
              style: TextStyle(
                  color: color.withValues(alpha: 0.8), fontWeight: FontWeight.w900, fontSize: 18, letterSpacing: 2)),
        ),
      );
}

/// Yatay kaydırılabilir işlem tablosu.
class _LinesTable extends StatelessWidget {
  final List<FinTx> txs;
  const _LinesTable({required this.txs});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    if (txs.isEmpty) {
      return CcEmpty(icon: Icons.receipt_long_rounded, message: l.ccFinEmpty);
    }
    const head = TextStyle(fontSize: 11, fontWeight: FontWeight.w800, color: CcColors.ink);
    const cell = TextStyle(fontSize: 11.5, color: CcColors.ink);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowHeight: 34,
        dataRowMinHeight: 30,
        dataRowMaxHeight: 34,
        horizontalMargin: 6,
        columnSpacing: 14,
        headingRowColor: WidgetStatePropertyAll(CcColors.mint.withValues(alpha: 0.6)),
        columns: [
          DataColumn(label: Text(l.ccFinColDate, style: head)),
          DataColumn(label: Text(l.ccFinColGuest, style: head)),
          DataColumn(label: Text(l.ccFinColGross, style: head), numeric: true),
          DataColumn(label: Text(l.ccFinColDiscount, style: head), numeric: true),
          DataColumn(label: Text(l.ccFinColCoupon, style: head), numeric: true),
          DataColumn(label: Text(l.ccFinColNet, style: head), numeric: true),
          DataColumn(label: Text(l.ccFinColCommission, style: head), numeric: true),
        ],
        rows: [
          for (final t in txs)
            DataRow(cells: [
              DataCell(Text(CcFmt.dateTime(t.createdAt), style: cell)),
              DataCell(Text(FinCsv.shortName(t.tx.guestName), style: cell)),
              DataCell(Text(t.gross.toStringAsFixed(2), style: cell)),
              DataCell(Text(t.discount.toStringAsFixed(2), style: cell)),
              DataCell(Text(t.couponDiscount.toStringAsFixed(2), style: cell)),
              DataCell(Text(t.net.toStringAsFixed(2), style: cell)),
              DataCell(Text(t.commission.toStringAsFixed(2),
                  style: cell.copyWith(fontWeight: FontWeight.w700, color: CcColors.deep))),
            ]),
        ],
      ),
    );
  }
}

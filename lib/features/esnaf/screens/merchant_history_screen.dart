import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../shops/models/shop_model.dart';
import '../data/esnaf_service.dart';
import '../esnaf_config.dart';
import '../models/shop_review.dart';
import '../models/shop_transaction.dart';
import '../widgets/esnaf_widgets.dart';
import 'merchant_home_screen.dart';

enum _Range { today, week, month, custom }

/// Esnafın işlem geçmişi: tarih / ödeme türü filtresi, toplamlar, iptal ve gün sonu raporu.
class MerchantHistoryScreen extends StatefulWidget {
  final ShopModel shop;
  const MerchantHistoryScreen({super.key, required this.shop});

  @override
  State<MerchantHistoryScreen> createState() => _MerchantHistoryScreenState();
}

class _MerchantHistoryScreenState extends State<MerchantHistoryScreen> {
  _Range _range = _Range.today;
  DateTimeRange? _custom;
  String? _method; // null = tümü
  late Stream<List<ShopTransaction>> _stream;

  /// Misafir değerlendirmeleri (işlem id → değerlendirme). Okunamazsa boş kalır.
  Map<String, ShopReview> _reviews = const {};
  StreamSubscription<Map<String, ShopReview>>? _reviewSub;

  static DateTime _dayStart(DateTime d) => DateTime(d.year, d.month, d.day);

  DateTime get _from {
    final today = _dayStart(DateTime.now());
    return switch (_range) {
      _Range.today => today,
      _Range.week => today.subtract(const Duration(days: 6)),
      _Range.month => today.subtract(const Duration(days: 29)),
      _Range.custom => _dayStart(_custom?.start ?? today),
    };
  }

  /// Üst sınır (hariç); yalnız özel aralıkta.
  DateTime? get _to => _range == _Range.custom && _custom != null
      ? _dayStart(_custom!.end).add(const Duration(days: 1))
      : null;

  @override
  void initState() {
    super.initState();
    _subscribe();
    _reviewSub = EsnafService.instance.shopReviews(widget.shop.id).listen(
      (m) {
        if (mounted) setState(() => _reviews = m);
      },
      onError: (Object e) => debugPrint('Değerlendirmeler okunamadı: $e'),
    );
  }

  @override
  void dispose() {
    _reviewSub?.cancel();
    super.dispose();
  }

  void _subscribe() {
    _stream = EsnafService.instance.shopTransactions(widget.shop.id, from: _from, limit: 1000);
  }

  Future<void> _setRange(_Range r) async {
    if (r == _Range.custom) {
      final now = DateTime.now();
      final picked = await showDateRangePicker(
        context: context,
        firstDate: now.subtract(const Duration(days: 365)),
        lastDate: now,
        initialDateRange: _custom ?? DateTimeRange(start: now.subtract(const Duration(days: 6)), end: now),
      );
      if (picked == null || !mounted) return;
      _custom = picked;
    }
    setState(() {
      _range = r;
      _subscribe();
    });
  }

  List<ShopTransaction> _filter(List<ShopTransaction> all) {
    final to = _to;
    return all.where((t) {
      if (to != null && t.createdAt != null && !t.createdAt!.isBefore(to)) return false;
      if (_method != null && t.paymentMethod != _method) return false;
      return true;
    }).toList();
  }

  bool _canCancel(ShopTransaction t) {
    if (t.isCancelled || t.createdAt == null) return false;
    return DateTime.now().difference(t.createdAt!) < EsnafConfig.cancelWindow;
  }

  // ----------------------------------------------------------------- iptal
  Future<void> _cancel(ShopTransaction t) async {
    final reasonCtrl = TextEditingController();
    final reason = await showDialog<String>(
      context: context,
      builder: (ctx) {
        String? err;
        return StatefulBuilder(
          builder: (ctx, setD) => AlertDialog(
            title: Text(ctx.l10n.esnafCancelTitle),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(ctx.l10n.esnafCancelReasonPrompt),
                const SizedBox(height: 12),
                TextField(
                  controller: reasonCtrl,
                  autofocus: true,
                  maxLength: 120,
                  decoration: InputDecoration(
                    labelText: ctx.l10n.esnafCancelReason,
                    errorText: err,
                    border: const OutlineInputBorder(),
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(onPressed: () => Navigator.pop(ctx), child: Text(ctx.l10n.commonCancel)),
              FilledButton(
                onPressed: () {
                  final r = reasonCtrl.text.trim();
                  if (r.length < 3) {
                    setD(() => err = ctx.l10n.esnafCancelReasonRequired);
                    return;
                  }
                  Navigator.pop(ctx, r);
                },
                child: Text(ctx.l10n.esnafContinue),
              ),
            ],
          ),
        );
      },
    );
    reasonCtrl.dispose();
    if (reason == null || !mounted) return;

    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        icon: const Icon(Icons.warning_amber_rounded, color: AppColors.warning, size: 40),
        title: Text(ctx.l10n.esnafCancelConfirmTitle),
        content: Text(ctx.l10n.esnafCancelConfirmBody(t.guestName, EsnafFmt.sar(ctx, t.amountNet))),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(ctx.l10n.commonNo)),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: AppColors.error),
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(ctx.l10n.esnafCancelAction),
          ),
        ],
      ),
    );
    if (ok != true || !mounted) return;

    final l = context.l10n;
    try {
      await EsnafService.instance.cancelTransaction(t.id, reason).timeout(const Duration(seconds: 20));
      GlobalSnackbar.showSuccess(l.esnafCancelDone);
    } on FirebaseException catch (e) {
      debugPrint('İptal edilemedi: ${e.code} ${e.message}');
      GlobalSnackbar.showError(e.code == 'permission-denied' ? l.esnafCancelDenied : l.esnafErrSave);
    } catch (e) {
      debugPrint('İptal edilemedi: $e');
      GlobalSnackbar.showError(l.esnafErrNetwork);
    }
  }

  // ----------------------------------------------------------------- ayrıntı
  void _details(ShopTransaction t) {
    showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      backgroundColor: AppColors.surface,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (ctx) {
        final l = ctx.l10n;
        Widget row(String k, String v) => Padding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Text(k, style: const TextStyle(color: AppColors.textMuted))),
                  const SizedBox(width: 12),
                  Flexible(
                    child: Text(v,
                        textAlign: TextAlign.end,
                        style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.text)),
                  ),
                ],
              ),
            );
        return SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(t.guestName,
                          style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: AppColors.text)),
                    ),
                    if (t.isCancelled) EsnafTag(label: l.esnafCancelledTag, color: AppColors.error),
                  ],
                ),
                const SizedBox(height: 10),
                row(l.esnafTime, EsnafFmt.dateTime(ctx, t.createdAt)),
                row(l.esnafMethodLabel, EsnafFmt.methodLabel(ctx, t.paymentMethod)),
                row(l.esnafCalcGross, EsnafFmt.sar(ctx, t.amountGross)),
                row(l.esnafCalcDiscount(t.discountPercent), '- ${EsnafFmt.sar(ctx, t.discountAmount)}'),
                if (t.hasCoupon) row(l.esnafCalcCoupon(t.couponId), '- ${EsnafFmt.sar(ctx, t.couponDiscount)}'),
                row(l.esnafCalcPayable, EsnafFmt.sar(ctx, t.amountNet)),
                if (t.pointsSpent > 0) row(l.esnafCalcPointsSpent, EsnafFmt.integer(ctx, t.pointsSpent)),
                if (t.pointsEarned > 0) row(l.esnafCalcPointsEarned, EsnafFmt.integer(ctx, t.pointsEarned)),
                if (t.note.isNotEmpty) row(l.esnafNoteLabel, t.note),
                if (_reviews[t.id] case final rv?) ...[
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsetsDirectional.all(12),
                    decoration: BoxDecoration(
                      color: rv.complaint ? AppColors.error.withValues(alpha: 0.06) : AppColors.background,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: rv.complaint ? AppColors.error.withValues(alpha: 0.4) : AppColors.divider),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(rv.complaint ? l.esnafReviewComplaint : l.esnafReviewTitle,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: rv.complaint ? AppColors.error : AppColors.text)),
                            ),
                            RatingStars(rating: rv.rating, size: 16),
                          ],
                        ),
                        if (rv.comment.isNotEmpty) ...[
                          const SizedBox(height: 6),
                          Text(rv.comment, style: const TextStyle(color: AppColors.text)),
                        ],
                      ],
                    ),
                  ),
                ],
                if (t.isCancelled) ...[
                  row(l.esnafCancelReason, t.cancelReason.isEmpty ? '—' : t.cancelReason),
                  row(l.esnafCancelledAt, EsnafFmt.dateTime(ctx, t.cancelledAt)),
                ],
                const SizedBox(height: 16),
                if (_canCancel(t))
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColors.error,
                      side: const BorderSide(color: AppColors.error),
                      minimumSize: const Size.fromHeight(48),
                    ),
                    onPressed: () {
                      Navigator.pop(ctx);
                      _cancel(t);
                    },
                    icon: const Icon(Icons.cancel_outlined),
                    label: Text(l.esnafCancelAction),
                  )
                else if (!t.isCancelled)
                  Text(
                    l.esnafCancelWindowPassed,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  // ----------------------------------------------------------------- gün sonu
  Future<void> _dayReport() async {
    final now = DateTime.now();
    final day = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: now.subtract(const Duration(days: 365)),
      lastDate: now,
      helpText: context.l10n.esnafReportPickDay,
    );
    if (day == null || !mounted) return;
    final start = _dayStart(day);
    final end = start.add(const Duration(days: 1));
    List<ShopTransaction> list;
    try {
      final all = await EsnafService.instance
          .shopTransactions(widget.shop.id, from: start, limit: 1000)
          .first
          .timeout(const Duration(seconds: 20));
      list = all.where((t) => t.createdAt == null || t.createdAt!.isBefore(end)).toList();
    } catch (e) {
      debugPrint('Rapor alınamadı: $e');
      if (mounted) GlobalSnackbar.showError(context.l10n.esnafLoadFailed);
      return;
    }
    if (!mounted) return;
    final text = _reportText(day, list);
    await showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(ctx.l10n.esnafDayReport),
        content: SingleChildScrollView(
          child: SelectableText(text, style: const TextStyle(fontSize: 13.5, height: 1.45)),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: Text(ctx.l10n.commonClose)),
          FilledButton.icon(
            onPressed: () async {
              await Clipboard.setData(ClipboardData(text: text));
              if (ctx.mounted) {
                GlobalSnackbar.showSuccess(ctx.l10n.esnafCopied);
                Navigator.pop(ctx);
              }
            },
            icon: const Icon(Icons.copy_rounded, size: 18),
            label: Text(ctx.l10n.esnafCopy),
          ),
        ],
      ),
    );
  }

  String _reportText(DateTime day, List<ShopTransaction> list) {
    final l = context.l10n;
    final s = TransactionSummary.of(list);
    final cancelled = list.where((t) => t.isCancelled).length;
    final b = StringBuffer()
      ..writeln(l.esnafReportHeader(widget.shop.name))
      ..writeln(EsnafFmt.date(context, day))
      ..writeln('------------------------------')
      ..writeln('${l.esnafStatCount}: ${EsnafFmt.integer(context, s.count)}')
      ..writeln('${l.esnafCalcGross}: ${EsnafFmt.sar(context, s.gross)}')
      ..writeln('${l.esnafStatDiscount}: ${EsnafFmt.sar(context, s.discount)}')
      ..writeln('${l.esnafStatNet}: ${EsnafFmt.sar(context, s.net)}');
    for (final m in PaymentMethod.all) {
      b.writeln('  • ${EsnafFmt.methodLabel(context, m)}: ${EsnafFmt.sar(context, s.netByMethod[m] ?? 0)}');
    }
    if (s.pointsSpent > 0) b.writeln('${l.esnafCalcPointsSpent}: ${EsnafFmt.integer(context, s.pointsSpent)}');
    if (s.pointsEarned > 0) b.writeln('${l.esnafCalcPointsEarned}: ${EsnafFmt.integer(context, s.pointsEarned)}');
    if (cancelled > 0) b.writeln('${l.esnafReportCancelled}: ${EsnafFmt.integer(context, cancelled)}');
    if (list.isNotEmpty) {
      b.writeln('------------------------------');
      for (final t in list.reversed) {
        final mark = t.isCancelled ? ' [${l.esnafCancelledTag}]' : '';
        b.writeln('${EsnafFmt.time(context, t.createdAt)}  ${t.guestName}  '
            '${EsnafFmt.methodLabel(context, t.paymentMethod)}  ${EsnafFmt.sar(context, t.amountNet)}$mark');
      }
    }
    b.writeln('------------------------------');
    b.write(l.esnafReportFooter);
    return b.toString();
  }

  // ----------------------------------------------------------------- arayüz
  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(l.esnafHistoryTitle),
        actions: [
          IconButton(
            tooltip: l.esnafDayReport,
            icon: const Icon(Icons.summarize_outlined),
            onPressed: _dayReport,
          ),
        ],
      ),
      body: Column(
        children: [
          _filters(),
          Expanded(
            child: StreamBuilder<List<ShopTransaction>>(
              stream: _stream,
              builder: (context, snap) {
                if (snap.hasError) {
                  debugPrint('İşlem geçmişi: ${snap.error}');
                  return EsnafMessage(
                    icon: Icons.cloud_off_rounded,
                    title: l.esnafLoadFailed,
                    message: l.esnafLoadFailedBody,
                    color: AppColors.error,
                  );
                }
                if (!snap.hasData) return const Center(child: CircularProgressIndicator());
                final list = _filter(snap.data!);
                final summary = TransactionSummary.of(list);
                return ListView(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 4, 16, 32),
                  children: [
                    MerchantSummaryRow(summary: summary),
                    if (_method == null) ...[
                      const SizedBox(height: 10),
                      MerchantMethodChart(summary: summary),
                    ],
                    const SizedBox(height: 14),
                    if (list.isEmpty)
                      Padding(
                        padding: const EdgeInsetsDirectional.symmetric(vertical: 32),
                        child: Text(
                          l.esnafNoTransactions,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: AppColors.textMuted),
                        ),
                      ),
                    for (final t in list)
                      MerchantTransactionTile(
                        tx: t,
                        showDate: _range != _Range.today,
                        review: _reviews[t.id],
                        onTap: () => _details(t),
                      ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _filters() {
    final l = context.l10n;
    final customLabel = _custom == null
        ? l.esnafRangeCustom
        : '${EsnafFmt.shortDate(context, _custom!.start)} – ${EsnafFmt.shortDate(context, _custom!.end)}';
    Widget chip(String label, bool sel, VoidCallback onTap, {IconData? icon}) => Padding(
          padding: const EdgeInsetsDirectional.only(end: 8),
          child: ChoiceChip(
            label: Text(label),
            avatar: icon == null ? null : Icon(icon, size: 16, color: sel ? AppColors.surface : AppColors.primary),
            selected: sel,
            showCheckmark: false,
            selectedColor: AppColors.primary,
            backgroundColor: AppColors.surface,
            side: BorderSide(color: sel ? AppColors.primary : AppColors.divider),
            labelStyle: TextStyle(color: sel ? AppColors.surface : AppColors.text, fontWeight: FontWeight.w600),
            onSelected: (_) => onTap(),
          ),
        );
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 12, bottom: 8),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
            child: Row(
              children: [
                chip(l.esnafRangeToday, _range == _Range.today, () => _setRange(_Range.today)),
                chip(l.esnafRange7, _range == _Range.week, () => _setRange(_Range.week)),
                chip(l.esnafRange30, _range == _Range.month, () => _setRange(_Range.month)),
                chip(customLabel, _range == _Range.custom, () => _setRange(_Range.custom),
                    icon: Icons.date_range_rounded),
              ],
            ),
          ),
          const SizedBox(height: 6),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
            child: Row(
              children: [
                chip(l.esnafMethodAll, _method == null, () => setState(() => _method = null)),
                for (final m in PaymentMethod.all)
                  chip(EsnafFmt.methodLabel(context, m), _method == m, () => setState(() => _method = m),
                      icon: EsnafFmt.methodIcon(m)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

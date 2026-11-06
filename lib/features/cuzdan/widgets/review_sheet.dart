import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../esnaf/data/esnaf_service.dart';
import '../../esnaf/models/shop_review.dart';
import '../../esnaf/models/shop_transaction.dart';

/// "Değerlendir" alt sayfası: 1–5 yıldız, isteğe bağlı yorum, şikâyet anahtarı.
/// Kaydedilirse true döner. Değerlendirme bir kez yazılır ve değiştirilemez.
Future<bool?> showReviewSheet(BuildContext context, {required ShopTransaction tx, required String guestUid}) =>
    showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      backgroundColor: AppColors.surface,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (_) => _ReviewSheet(tx: tx, guestUid: guestUid),
    );

class _ReviewSheet extends StatefulWidget {
  final ShopTransaction tx;
  final String guestUid;
  const _ReviewSheet({required this.tx, required this.guestUid});

  @override
  State<_ReviewSheet> createState() => _ReviewSheetState();
}

class _ReviewSheetState extends State<_ReviewSheet> {
  final _comment = TextEditingController();
  int _rating = 0;
  bool _complaint = false;
  bool _saving = false;
  String? _error;

  @override
  void dispose() {
    _comment.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final t = context.l10n;
    if (_rating < 1) {
      setState(() => _error = t.cuzdanReviewPickStars);
      return;
    }
    setState(() {
      _saving = true;
      _error = null;
    });
    try {
      await EsnafService.instance
          .submitReview(ShopReview(
            txId: widget.tx.id,
            shopId: widget.tx.shopId,
            guestUid: widget.guestUid,
            guestAgencyId: widget.tx.guestAgencyId,
            rating: _rating,
            comment: _comment.text.trim(),
            complaint: _complaint,
          ))
          .timeout(const Duration(seconds: 20));
      if (mounted) Navigator.pop(context, true);
    } catch (e) {
      debugPrint('Değerlendirme kaydedilemedi: $e');
      if (!mounted) return;
      setState(() {
        _saving = false;
        _error = t.cuzdanReviewError;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final labels = [
      t.cuzdanReviewStar1,
      t.cuzdanReviewStar2,
      t.cuzdanReviewStar3,
      t.cuzdanReviewStar4,
      t.cuzdanReviewStar5,
    ];
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(t.cuzdanReviewTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w800, color: AppColors.text)),
              const SizedBox(height: 4),
              Text(widget.tx.shopName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.primary)),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 1; i <= 5; i++)
                    IconButton(
                      iconSize: 42,
                      padding: EdgeInsets.zero,
                      onPressed: _saving ? null : () => setState(() => _rating = i),
                      icon: Icon(
                        i <= _rating ? Icons.star_rounded : Icons.star_outline_rounded,
                        color: i <= _rating ? const Color(0xFFE0A526) : AppColors.divider,
                      ),
                    ),
                ],
              ),
              SizedBox(
                height: 20,
                child: Text(_rating == 0 ? '' : labels[_rating - 1],
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.w700, color: AppColors.text)),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _comment,
                enabled: !_saving,
                maxLength: ShopReview.maxComment,
                minLines: 2,
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: t.cuzdanReviewComment,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
                ),
              ),
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                value: _complaint,
                activeThumbColor: AppColors.error,
                onChanged: _saving ? null : (v) => setState(() => _complaint = v),
                title: Text(t.cuzdanReviewComplaint, style: const TextStyle(fontWeight: FontWeight.w700)),
                subtitle: Text(t.cuzdanReviewComplaintHint, style: const TextStyle(fontSize: 12.5)),
              ),
              if (_error != null) ...[
                Text(_error!, style: const TextStyle(color: AppColors.error, fontWeight: FontWeight.w600)),
                const SizedBox(height: 8),
              ],
              const SizedBox(height: 4),
              SizedBox(
                height: 52,
                child: FilledButton.icon(
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  ),
                  onPressed: _saving ? null : _save,
                  icon: _saving
                      ? const SizedBox(
                          width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2.5, color: AppColors.surface))
                      : const Icon(Icons.send_rounded),
                  label: Text(t.cuzdanReviewSend, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                ),
              ),
              const SizedBox(height: 6),
              Text(t.cuzdanReviewOnce,
                  textAlign: TextAlign.center, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
            ],
          ),
        ),
      ),
    );
  }
}

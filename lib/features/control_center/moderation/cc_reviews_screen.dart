import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../admin/widgets/no_access_screen.dart';
import '../shared/cc_widgets.dart';
import 'moderation_service.dart';

enum _ReviewFilter { all, low, comment }

/// Kontrol Merkezi › Değerlendirme Moderasyonu. Yalnız süper admin (okur ve siler).
class CcReviewsScreen extends StatefulWidget {
  const CcReviewsScreen({super.key});

  @override
  State<CcReviewsScreen> createState() => _CcReviewsScreenState();
}

class _CcReviewsScreenState extends State<CcReviewsScreen> {
  Future<List<CcReviewItem>>? _future;
  _ReviewFilter _filter = _ReviewFilter.all;
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _reload();
    });
  }

  void _reload() => setState(() => _future = CcModerationService.instance.loadReviews());

  bool _match(CcReviewItem r) => switch (_filter) {
        _ReviewFilter.all => true,
        _ReviewFilter.low => r.rating <= 2,
        _ReviewFilter.comment => r.comment.trim().isNotEmpty,
      };

  String _shop(CcReviewItem r) => r.shopName.isEmpty ? context.l10n.ccReviewUnknownShop : r.shopName;

  Future<void> _delete(CcReviewItem r) async {
    final me = context.read<AppStateProvider>().currentUser;
    final l = context.l10n;
    if (me == null || _busy) return;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        icon: const Icon(Icons.delete_outline_rounded, color: CcColors.danger, size: 36),
        title: Text(l.ccReviewDeleteTitle),
        content: Text(l.ccReviewDeleteBody(_shop(r))),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(l.commonCancel)),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: CcColors.danger),
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(l.ccReviewDelete),
          ),
        ],
      ),
    );
    if (ok != true || !mounted) return;
    setState(() => _busy = true);
    try {
      await CcModerationService.instance.deleteReview(actor: me, review: r);
      GlobalSnackbar.showSuccess(l.ccReviewDeletedOk);
      if (mounted) _reload();
    } catch (e) {
      debugPrint('CcReviewsScreen.delete: $e');
      GlobalSnackbar.showError(l.ccReviewDeleteError);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final user = context.watch<AppStateProvider>().currentUser;
    if (user == null || !user.isSuperAdmin) return NoAccessScreen(title: l.ccReviewTitle);
    final labels = {
      _ReviewFilter.all: l.ccReviewFilterAll,
      _ReviewFilter.low: l.ccReviewFilterLow,
      _ReviewFilter.comment: l.ccReviewFilterComment,
    };
    return FutureBuilder<List<CcReviewItem>>(
      future: _future,
      builder: (context, snap) => CcPage(
        title: l.ccReviewTitle,
        subtitle: l.ccReviewSubtitle,
        actions: [IconButton(icon: const Icon(Icons.refresh_rounded), onPressed: _reload)],
        onRefresh: () async {
          _reload();
          await _future;
        },
        body: [
          Wrap(
            spacing: 8,
            children: [
              for (final f in _ReviewFilter.values)
                ChoiceChip(
                  label: Text(labels[f]!),
                  selected: _filter == f,
                  onSelected: (_) => setState(() => _filter = f),
                ),
            ],
          ),
          const SizedBox(height: 12),
          CcAsync<List<CcReviewItem>>(
            snapshot: _future == null || snap.connectionState == ConnectionState.waiting
                ? const AsyncSnapshot.waiting()
                : snap,
            errorText: l.ccReviewLoadError,
            builder: (all) {
              final list = all.where(_match).toList();
              if (list.isEmpty) return CcEmpty(icon: Icons.rate_review_outlined, message: l.ccReviewEmpty);
              return Column(children: [for (final r in list) _tile(r)]);
            },
          ),
        ],
      ),
    );
  }

  Widget _tile(CcReviewItem r) {
    final l = context.l10n;
    final hasComment = r.comment.trim().isNotEmpty;
    return CcPanel(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(_shop(r), style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.ink)),
              ),
              if (r.complaint) ...[
                CcBadge(text: l.ccReviewComplaint, color: CcColors.danger, icon: Icons.report_gmailerrorred_rounded),
                const SizedBox(width: 6),
              ],
              IconButton(
                tooltip: l.ccReviewDelete,
                visualDensity: VisualDensity.compact,
                color: CcColors.danger,
                onPressed: _busy ? null : () => _delete(r),
                icon: const Icon(Icons.delete_outline_rounded),
              ),
            ],
          ),
          Row(
            children: [
              for (var i = 1; i <= 5; i++)
                Icon(i <= r.rating ? Icons.star_rounded : Icons.star_outline_rounded, size: 20, color: CcColors.gold),
              const SizedBox(width: 8),
              Text(CcFmt.dateTime(r.createdAt), style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            hasComment ? r.comment : l.ccReviewNoComment,
            style: TextStyle(fontSize: 13, color: hasComment ? CcColors.ink : AppColors.textMuted),
          ),
        ],
      ),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../admin/widgets/no_access_screen.dart';
import '../../hatim/models/hatim_group.dart';
import '../shared/cc_widgets.dart';
import 'moderation_service.dart';

/// Kontrol Merkezi › Toplu Hatim Moderasyonu. Yalnız süper admin.
class CcHatimModerationScreen extends StatefulWidget {
  const CcHatimModerationScreen({super.key});

  @override
  State<CcHatimModerationScreen> createState() => _CcHatimModerationScreenState();
}

class _CcHatimModerationScreenState extends State<CcHatimModerationScreen> {
  Future<List<HatimGroup>>? _future;
  String _query = '';
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _reload();
    });
  }

  void _reload() => setState(() => _future = CcModerationService.instance.loadHatimGroups());

  Future<bool> _confirm({
    required String title,
    required String body,
    required String action,
    IconData icon = Icons.delete_outline_rounded,
  }) async {
    final l = context.l10n;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        icon: Icon(icon, color: CcColors.danger, size: 36),
        title: Text(title),
        content: Text(body),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(l.commonCancel)),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: CcColors.danger),
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(action),
          ),
        ],
      ),
    );
    return ok == true;
  }

  Future<void> _delete(HatimGroup g) async {
    final me = context.read<AppStateProvider>().currentUser;
    final l = context.l10n;
    if (me == null || _busy) return;
    if (!await _confirm(title: l.ccModerDeleteTitle, body: l.ccModerDeleteBody(g.name), action: l.commonDelete)) return;
    setState(() => _busy = true);
    try {
      await CcModerationService.instance.deleteHatimGroup(actor: me, group: g);
      GlobalSnackbar.showSuccess(l.ccModerDeletedOk);
      if (mounted) _reload();
    } catch (e) {
      debugPrint('CcHatimModerationScreen.delete: $e');
      GlobalSnackbar.showError(l.ccModerDeleteError);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _cleanOrphans() async {
    final me = context.read<AppStateProvider>().currentUser;
    final l = context.l10n;
    if (me == null || _busy) return;
    final ok = await _confirm(
      title: l.ccModerOrphanTitle,
      body: l.ccModerOrphanBody,
      action: l.ccModerOrphanBtn,
      icon: Icons.cleaning_services_rounded,
    );
    if (!ok) return;
    setState(() => _busy = true);
    try {
      final r = await CcModerationService.instance.cleanOrphanParts(actor: me);
      GlobalSnackbar.showSuccess(r.deleted == 0 ? l.ccModerOrphanNone : l.ccModerOrphanDone(r.deleted, r.groups));
    } on FirebaseException catch (e) {
      debugPrint('CcHatimModerationScreen.orphans: ${e.code}');
      GlobalSnackbar.showError(e.code == 'permission-denied' ? l.ccModerOrphanNoPerm : l.ccModerOrphanError);
    } catch (e) {
      debugPrint('CcHatimModerationScreen.orphans: $e');
      GlobalSnackbar.showError(l.ccModerOrphanError);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final user = context.watch<AppStateProvider>().currentUser;
    if (user == null || !user.isSuperAdmin) return NoAccessScreen(title: l.ccModerTitle);
    return FutureBuilder<List<HatimGroup>>(
      future: _future,
      builder: (context, snap) => CcPage(
        title: l.ccModerTitle,
        subtitle: l.ccModerSubtitle,
        actions: [
          IconButton(
            tooltip: l.ccModerOrphanBtn,
            icon: const Icon(Icons.cleaning_services_rounded),
            onPressed: _busy ? null : _cleanOrphans,
          ),
          IconButton(icon: const Icon(Icons.refresh_rounded), onPressed: _reload),
        ],
        onRefresh: () async {
          _reload();
          await _future;
        },
        body: [
          TextField(
            onChanged: (v) => setState(() => _query = v.trim().toLowerCase()),
            decoration: InputDecoration(
              hintText: l.ccModerSearchHint,
              prefixIcon: const Icon(Icons.search_rounded),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide.none),
            ),
          ),
          const SizedBox(height: 12),
          CcAsync<List<HatimGroup>>(
            snapshot: _future == null || snap.connectionState == ConnectionState.waiting
                ? const AsyncSnapshot.waiting()
                : snap,
            errorText: l.ccModerLoadError,
            builder: (all) {
              final list = all.where((g) => _query.isEmpty || g.name.toLowerCase().contains(_query)).toList();
              if (list.isEmpty) return CcEmpty(icon: Icons.groups_outlined, message: l.ccModerEmpty);
              return Column(children: [for (final g in list) _tile(g)]);
            },
          ),
        ],
      ),
    );
  }

  Widget _tile(HatimGroup g) {
    final l = context.l10n;
    return CcPanel(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(g.name, style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.ink, fontSize: 15)),
              ),
              CcBadge(
                text: g.isPublic ? l.ccModerPublic : l.ccModerPrivate,
                color: g.isPublic ? CcColors.ok : CcColors.info,
                icon: g.isPublic ? Icons.public_rounded : Icons.lock_outline_rounded,
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(l.ccModerOwner(g.ownerName), style: const TextStyle(fontSize: 13)),
          Text(
            '${l.ccModerMembers(g.memberCount)}  •  ${l.ccModerRound(g.round)}  •  ${l.ccModerProgress(g.doneCount, g.total)}',
            style: const TextStyle(fontSize: 13, color: AppColors.textMuted),
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: LinearProgressIndicator(value: g.progress, minHeight: 6, color: CcColors.mid, backgroundColor: CcColors.mint),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              CcBadge(
                text: g.isCompleted ? l.ccModerCompleted : l.ccModerActive,
                color: g.isCompleted ? CcColors.gold : CcColors.mid,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(l.ccModerCreated(CcFmt.date(g.createdAt)),
                    style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
              ),
              TextButton.icon(
                style: TextButton.styleFrom(foregroundColor: CcColors.danger),
                onPressed: _busy ? null : () => _delete(g),
                icon: const Icon(Icons.delete_outline_rounded, size: 18),
                label: Text(l.ccModerDelete),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

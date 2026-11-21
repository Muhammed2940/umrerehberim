import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:provider/provider.dart';

import '../../../common/constant/surahs_info.dart' show juzIndex;
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../../auth/models/user_model.dart';
import '../../dualar/widgets/quran_reader.dart';
import '../data/hatim_service.dart';
import '../models/hatim_group.dart';
import '../models/hatim_part.dart';
import 'hatim_home_screen.dart' show HatimBadge;

/// Grup ayrıntısı (argüman: gid). Üstte başlık/ilerleme, altta parça ızgarası.
class HatimGroupScreen extends StatefulWidget {
  const HatimGroupScreen({super.key});

  @override
  State<HatimGroupScreen> createState() => _HatimGroupScreenState();
}

enum _Menu { invite, edit, newRound, leave, delete }

class _HatimGroupScreenState extends State<HatimGroupScreen> {
  final _service = HatimService();
  String? _gid;
  Stream<HatimGroup?>? _groupStream;
  Stream<Map<int, HatimPart>>? _partsStream;
  int? _partsRound;
  bool _busy = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_gid != null) return;
    final arg = ModalRoute.of(context)?.settings.arguments;
    _gid = arg is String ? arg : null;
    if (_gid != null) _groupStream = _service.group(_gid!);
  }

  /// Tur değişince parça akışı yeniden kurulur.
  Stream<Map<int, HatimPart>> _partsFor(HatimGroup g) {
    if (_partsStream == null || _partsRound != g.round) {
      _partsRound = g.round;
      _partsStream = _service.parts(g.id, g.round);
    }
    return _partsStream!;
  }

  /// İşlemi çalıştırır; hata/başarı mesajını gösterir.
  Future<bool> _run(Future<void> Function() action, {String? success}) async {
    if (_busy) return false;
    setState(() => _busy = true);
    try {
      await action();
      if (success != null) GlobalSnackbar.showSuccess(success);
      return true;
    } on HatimException catch (e) {
      GlobalSnackbar.showError(e.message);
      return false;
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<bool> _confirm(String message, {String? ok, bool danger = false}) async {
    final l = context.l10n;
    final r = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: Text(message, style: const TextStyle(fontSize: 16)),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(l.hatimCancel)),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: danger ? AppColors.error : AppColors.primary),
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(ok ?? l.hatimConfirm),
          ),
        ],
      ),
    );
    return r == true;
  }

  String _partLabel(AppLocalizations l, HatimGroup g, int n) => g.isCuz ? l.hatimPartCuz(n) : l.hatimPartSayfa(n);

  /// Okuyucuda açılacak sayfa: cüz modunda cüzün ilk sayfası.
  int _readerPage(HatimGroup g, int n) => g.isCuz ? juzIndex[(n - 1).clamp(0, 29)]['page']! : n;

  Future<void> _onTileTap(HatimGroup g, int n, HatimPart? p, UserModel me) async {
    final l = context.l10n;
    final isAdmin = me.isGlobalAdmin;
    final canModerate = g.isOwner(me.id) || isAdmin;
    if (p == null) {
      if (!g.isMember(me.id)) return GlobalSnackbar.showInfo(l.hatimNotMember);
      if (g.isCompleted) return GlobalSnackbar.showInfo(l.hatimErrNotActive);
      final ok = await _confirm(g.isCuz ? l.hatimTakeConfirmCuz(n) : l.hatimTakeConfirmSayfa(n), ok: l.hatimTake);
      if (ok) await _run(() => _service.takePart(g.id, n, me), success: l.hatimTakenToast);
      return;
    }
    if (p.isDone) return GlobalSnackbar.showInfo('${_partLabel(l, g, n)} · ${l.hatimDoneBy(p.name)}');
    if (p.uid == me.id) return _showMySheet(g, p, me);
    if (canModerate) return _showModerateSheet(g, p, me);
    GlobalSnackbar.showInfo('${_partLabel(l, g, n)} · ${l.hatimTakenBy(p.name)}');
  }

  Future<void> _showMySheet(HatimGroup g, HatimPart p, UserModel me) async {
    final l = context.l10n;
    final action = await showModalBottomSheet<String>(
      context: context,
      showDragHandle: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(_partLabel(l, g, p.n), style: AppTextStyles.sectionTitle),
            const SizedBox(height: 8),
            ListTile(
              leading: const Icon(Icons.menu_book_rounded, color: AppColors.primary),
              title: Text(l.hatimStartReading),
              onTap: () => Navigator.pop(ctx, 'read'),
            ),
            ListTile(
              leading: const Icon(Icons.check_circle_rounded, color: AppColors.success),
              title: Text(l.hatimMarkDone),
              onTap: () => Navigator.pop(ctx, 'done'),
            ),
            ListTile(
              leading: const Icon(Icons.undo_rounded, color: AppColors.error),
              title: Text(l.hatimRelease),
              onTap: () => Navigator.pop(ctx, 'release'),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
    if (!mounted) return;
    switch (action) {
      case 'read':
        QuranReaderPage.open(context, page: _readerPage(g, p.n));
      case 'done':
        await _run(() => _service.markDone(g.id, p.n, me), success: l.hatimDoneToast);
      case 'release':
        await _run(() => _service.releasePart(g, p, me));
    }
  }

  Future<void> _showModerateSheet(HatimGroup g, HatimPart p, UserModel me) async {
    final l = context.l10n;
    final ok = await _confirm(
      '${_partLabel(l, g, p.n)}\n${l.hatimReleaseOtherConfirm(p.name)}',
      ok: l.hatimReleaseOther,
      danger: true,
    );
    if (ok) await _run(() => _service.releasePart(g, p, me));
  }

  Future<void> _onMenu(_Menu m, HatimGroup g, UserModel me) async {
    final l = context.l10n;
    switch (m) {
      case _Menu.invite:
        await Clipboard.setData(ClipboardData(text: l.hatimInviteText(g.name)));
        GlobalSnackbar.showSuccess(l.hatimInviteCopied);
      case _Menu.edit:
        await Navigator.pushNamed(context, '/hatim/create', arguments: g);
      case _Menu.newRound:
        if (await _confirm(l.hatimNewRoundConfirm, ok: l.hatimNewRound)) {
          await _run(() => _service.startNewRound(g, me));
        }
      case _Menu.leave:
        if (await _confirm(l.hatimLeaveConfirm, ok: l.hatimLeave, danger: true)) {
          final ok = await _run(() => _service.leave(g, me));
          if (ok && mounted) Navigator.pop(context);
        }
      case _Menu.delete:
        if (await _confirm(l.hatimDeleteConfirm, ok: l.hatimDelete, danger: true)) {
          final ok = await _run(() => _service.delete(g));
          if (ok && mounted) Navigator.pop(context);
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final me = context.watch<AppStateProvider>().currentUser;
    if (_gid == null || me == null) {
      return Scaffold(appBar: AppBar(title: Text(l.hatimTitle)), body: Center(child: Text(l.hatimGroupNotFound)));
    }
    return StreamBuilder<HatimGroup?>(
      stream: _groupStream,
      builder: (context, snap) {
        final g = snap.data;
        if (g == null) {
          return Scaffold(
            appBar: AppBar(title: Text(l.hatimTitle)),
            body: Center(
              child: snap.connectionState == ConnectionState.waiting && !snap.hasError
                  ? const CircularProgressIndicator()
                  : Text(l.hatimGroupNotFound, style: AppTextStyles.muted),
            ),
          );
        }
        final isMember = g.isMember(me.id);
        final isOwner = g.isOwner(me.id);
        final isAdmin = me.isGlobalAdmin;
        return Scaffold(
          appBar: AppBar(
            title: Text(g.name, overflow: TextOverflow.ellipsis),
            actions: [
              IconButton(
                tooltip: l.hatimShare,
                icon: const Icon(Icons.share_rounded),
                onPressed: () => _onMenu(_Menu.invite, g, me),
              ),
              PopupMenuButton<_Menu>(
                onSelected: (m) => _onMenu(m, g, me),
                itemBuilder: (_) => [
                  if (isOwner) PopupMenuItem(value: _Menu.edit, child: Text(l.hatimEdit)),
                  if ((isOwner || isAdmin) && g.isCompleted)
                    PopupMenuItem(value: _Menu.newRound, child: Text(l.hatimNewRound)),
                  if (isMember && !isOwner) PopupMenuItem(value: _Menu.leave, child: Text(l.hatimLeave)),
                  if (isOwner || isAdmin)
                    PopupMenuItem(
                      value: _Menu.delete,
                      child: Text(l.hatimDelete, style: const TextStyle(color: AppColors.error)),
                    ),
                ],
              ),
            ],
          ),
          bottomNavigationBar: isMember || me.isMerchant
              ? null
              : SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
                    child: SizedBox(
                      height: 52,
                      child: FilledButton.icon(
                        style: FilledButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        ),
                        onPressed: _busy ? null : () => _run(() => _service.join(g, me), success: l.hatimJoined),
                        icon: const Icon(Icons.group_add_rounded),
                        label: Text(l.hatimJoin, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                      ),
                    ),
                  ),
                ),
          body: StreamBuilder<Map<int, HatimPart>>(
            stream: _partsFor(g),
            builder: (context, ps) {
              final parts = ps.data ?? const <int, HatimPart>{};
              return Stack(
                children: [
                  CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(child: _Header(group: g)),
                      if (g.isCompleted)
                        SliverToBoxAdapter(
                          child: _CompletedBanner(
                            showNewRound: isOwner || isAdmin,
                            onNewRound: () => _onMenu(_Menu.newRound, g, me),
                          ),
                        ),
                      if (g.lastEvent != null) SliverToBoxAdapter(child: _LastEventLine(group: g)),
                      const SliverToBoxAdapter(child: _Legend()),
                      if (!ps.hasData)
                        const SliverToBoxAdapter(
                          child: Padding(padding: EdgeInsets.all(32), child: Center(child: CircularProgressIndicator())),
                        )
                      else if (g.isCuz)
                        _gridSliver(g, 1, 30, parts, me, columns: 5, compact: false)
                      else
                        ..._sayfaSlivers(g, parts, me),
                      const SliverToBoxAdapter(child: SizedBox(height: 32)),
                    ],
                  ),
                  if (_busy) const LinearProgressIndicator(minHeight: 3),
                ],
              );
            },
          ),
        );
      },
    );
  }

  /// Sayfa modu: gerçek cüz sınırlarına göre (Medine mushafı) 30 bölüm.
  List<Widget> _sayfaSlivers(HatimGroup g, Map<int, HatimPart> parts, UserModel me) {
    final l = context.l10n;
    final out = <Widget>[];
    for (var k = 0; k < juzIndex.length; k++) {
      final start = juzIndex[k]['page']!;
      final end = k + 1 < juzIndex.length ? juzIndex[k + 1]['page']! - 1 : g.total;
      final done = [for (var n = start; n <= end; n++) if (parts[n]?.isDone == true) n].length;
      out.add(SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20, 14, 20, 6),
          child: Row(
            children: [
              Text(l.hatimPartCuz(k + 1), style: AppTextStyles.cardTitle.copyWith(fontSize: 14.5)),
              const Spacer(),
              Text('$done/${end - start + 1}', style: AppTextStyles.muted.copyWith(fontSize: 12.5)),
            ],
          ),
        ),
      ));
      out.add(_gridSliver(g, start, end, parts, me, columns: 7, compact: true));
    }
    return out;
  }

  Widget _gridSliver(HatimGroup g, int from, int to, Map<int, HatimPart> parts, UserModel me,
      {required int columns, required bool compact}) {
    return SliverPadding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: columns,
          mainAxisSpacing: compact ? 6 : 10,
          crossAxisSpacing: compact ? 6 : 10,
          childAspectRatio: compact ? 1 : 0.9,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, i) {
            final n = from + i;
            final p = parts[n];
            return _PartTile(
              n: n,
              part: p,
              mine: p?.uid == me.id,
              compact: compact,
              onTap: _busy ? null : () => _onTileTap(g, n, p, me),
            );
          },
          childCount: to - from + 1,
        ),
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// Parçalar
// -----------------------------------------------------------------------------

String _initials(String name) {
  final parts = name.trim().split(RegExp(r'\s+')).where((e) => e.isNotEmpty).toList();
  if (parts.isEmpty) return '?';
  final a = parts.first.characters.first;
  final b = parts.length > 1 ? parts.last.characters.first : '';
  return (a + b).toUpperCase();
}

class _PartTile extends StatelessWidget {
  const _PartTile({required this.n, required this.part, required this.mine, required this.compact, this.onTap});

  final int n;
  final HatimPart? part;
  final bool mine;
  final bool compact;
  final VoidCallback? onTap;

  static const amber = Color(0xFFF4C152);

  @override
  Widget build(BuildContext context) {
    final p = part;
    final done = p?.isDone == true;
    final taken = p != null && !done;
    final Color bg = done ? AppColors.success : (taken ? (mine ? AppColors.mint : amber.withValues(alpha: 0.85)) : Colors.white);
    final Color border = done
        ? AppColors.success
        : mine
            ? AppColors.success
            : taken
                ? amber
                : AppColors.divider;
    final Color fg = done ? Colors.white : AppColors.text;
    final radius = BorderRadius.circular(compact ? 8 : 14);
    return Material(
      color: bg,
      borderRadius: radius,
      child: InkWell(
        borderRadius: radius,
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: radius,
            border: Border.all(color: border, width: mine && !done ? 2.2 : 1.2),
          ),
          alignment: Alignment.center,
          child: compact
              ? Text(
                  '$n',
                  style: TextStyle(color: fg, fontSize: 11.5, fontWeight: done || taken ? FontWeight.w800 : FontWeight.w500),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('$n', style: TextStyle(color: fg, fontSize: 18, fontWeight: FontWeight.w800)),
                    const SizedBox(height: 2),
                    if (done)
                      const Icon(Icons.check_rounded, color: Colors.white, size: 18)
                    else if (taken)
                      Text(
                        _initials(p.name),
                        style: TextStyle(
                          color: mine ? AppColors.success : AppColors.emerald800,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    else
                      const SizedBox(height: 16),
                  ],
                ),
        ),
      ),
    );
  }
}

class _Legend extends StatelessWidget {
  const _Legend();

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    Widget item(Color bg, Color border, String text, {double width = 1.2}) => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                color: bg,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: border, width: width),
              ),
            ),
            const SizedBox(width: 5),
            Text(text, style: AppTextStyles.muted.copyWith(fontSize: 12.5)),
          ],
        );
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(20, 6, 20, 10),
      child: Wrap(
        spacing: 14,
        runSpacing: 6,
        children: [
          item(Colors.white, AppColors.divider, l.hatimLegendFree),
          item(_PartTile.amber.withValues(alpha: 0.85), _PartTile.amber, l.hatimLegendTaken),
          item(AppColors.mint, AppColors.success, l.hatimLegendMine, width: 2.2),
          item(AppColors.success, AppColors.success, l.hatimLegendDone),
        ],
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// Başlık, son hareket, tamamlandı
// -----------------------------------------------------------------------------

class _Header extends StatelessWidget {
  const _Header({required this.group});
  final HatimGroup group;

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final g = group;
    final locale = Localizations.localeOf(context).toString();
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        gradient: AppColors.primaryGradient,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: AppColors.emerald700.withValues(alpha: 0.3), blurRadius: 14, offset: const Offset(0, 6)),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: 86,
            height: 86,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: g.progress,
                  strokeWidth: 8,
                  backgroundColor: Colors.white.withValues(alpha: 0.18),
                  color: AppColors.mint,
                ),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('${(g.progress * 100).round()}%',
                          style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w800)),
                      Text(l.hatimProgress(g.doneCount, g.total),
                          style: TextStyle(color: Colors.white.withValues(alpha: 0.85), fontSize: 11.5)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(g.name, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                if (g.niyet.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(g.niyet,
                      style: TextStyle(color: Colors.white.withValues(alpha: 0.88), fontSize: 13, fontStyle: FontStyle.italic)),
                ],
                const SizedBox(height: 10),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: [
                    HatimBadge(text: g.isCuz ? l.hatimUnitCuz : l.hatimUnitSayfa, color: Colors.white),
                    HatimBadge(text: l.hatimRound(g.round), color: Colors.white, icon: Icons.replay_rounded),
                    HatimBadge(text: l.hatimMembers(g.memberCount), color: Colors.white, icon: Icons.people_alt_rounded),
                    if (g.deadline != null)
                      HatimBadge(
                        text: l.hatimDeadline(DateFormat.yMMMd(locale).format(g.deadline!)),
                        color: Colors.white,
                        icon: Icons.event_rounded,
                      ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(l.hatimOwner(g.ownerName),
                    style: TextStyle(color: Colors.white.withValues(alpha: 0.75), fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// `last_event` metni (bildirimlerle aynı ifadeler).
String hatimEventText(AppLocalizations l, HatimGroup g) {
  final e = g.lastEvent;
  if (e == null) return '';
  return switch (e.type) {
    'create' => l.hatimEvCreate(e.name),
    'join' => l.hatimEvJoin(e.name),
    'leave' => l.hatimEvLeave(e.name),
    'take' => g.isCuz ? l.hatimEvTakeCuz(e.name, e.unit) : l.hatimEvTakeSayfa(e.name, e.unit),
    'release' => l.hatimEvRelease(e.name),
    'done' => g.isCuz
        ? l.hatimEvDoneCuz(e.name, e.unit, g.doneCount, g.total)
        : l.hatimEvDoneSayfa(e.name, e.unit, g.doneCount, g.total),
    'completed' => l.hatimEvCompleted,
    'new_round' => l.hatimEvNewRound(e.round),
    _ => '',
  };
}

class _LastEventLine extends StatelessWidget {
  const _LastEventLine({required this.group});
  final HatimGroup group;

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final text = hatimEventText(l, group);
    if (text.isEmpty) return const SizedBox.shrink();
    final at = group.lastEvent?.at;
    final locale = Localizations.localeOf(context).toString();
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 4, 16, 6),
      padding: const EdgeInsetsDirectional.fromSTEB(14, 10, 14, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.divider),
      ),
      child: Row(
        children: [
          const Icon(Icons.history_rounded, color: AppColors.primary, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l.hatimLastEvent, style: AppTextStyles.muted.copyWith(fontSize: 11.5)),
                Text(text, style: AppTextStyles.body.copyWith(fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          if (at != null)
            Text(DateFormat.MMMd(locale).add_Hm().format(at), style: AppTextStyles.muted.copyWith(fontSize: 11.5)),
        ],
      ),
    );
  }
}

class _CompletedBanner extends StatelessWidget {
  const _CompletedBanner({required this.showNewRound, required this.onNewRound});
  final bool showNewRound;
  final VoidCallback onNewRound;

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 4, 16, 6),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.paper,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.paperGold, width: 1.4),
      ),
      child: Column(
        children: [
          const Icon(Icons.celebration_rounded, color: AppColors.paperGold, size: 34),
          const SizedBox(height: 6),
          Text(
            l.hatimCompletedBanner,
            textAlign: TextAlign.center,
            style: const TextStyle(color: AppColors.emerald800, fontSize: 16.5, fontWeight: FontWeight.w800),
          ),
          if (showNewRound) ...[
            const SizedBox(height: 10),
            FilledButton.icon(
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
              ),
              onPressed: onNewRound,
              icon: const Icon(Icons.replay_rounded),
              label: Text(l.hatimNewRound),
            ),
          ],
        ],
      ),
    );
  }
}

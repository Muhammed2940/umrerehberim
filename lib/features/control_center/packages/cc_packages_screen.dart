import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../admin/widgets/no_access_screen.dart';
import '../../auth/models/user_model.dart';
import '../../paketler/widgets/paket_sec_card.dart';
import '../shared/cc_widgets.dart';
import 'package_service.dart';

/// Kontrol Merkezi › Paket Onayları. Bireysel kullanıcıların paketleri (`entitlements`):
/// Full onayı (seyahat tarihleri), süre uzatma, iptal. Yalnız süper admin.
class CcPackagesScreen extends StatefulWidget {
  /// Açılışta aramaya yazılacak metin (kullanıcı kartından gelen e-posta/ad).
  final String initialQuery;
  const CcPackagesScreen({super.key, this.initialQuery = ''});

  @override
  State<CcPackagesScreen> createState() => _CcPackagesScreenState();
}

class _CcPackagesScreenState extends State<CcPackagesScreen> {
  late Future<List<PackageRow>> _future = PackageService.instance.loadAll();
  late String _query = widget.initialQuery;
  late final TextEditingController _search = TextEditingController(text: widget.initialQuery);
  PackageTab _tab = PackageTab.pending;
  bool _busy = false;

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  Future<void> _refresh() async {
    setState(() => _future = PackageService.instance.loadAll());
    await _future.catchError((_) => <PackageRow>[]);
  }

  UserModel? get _me => context.read<AppStateProvider>().currentUser;

  Future<void> _run(Future<void> Function() action, String ok) async {
    if (_busy) return;
    final err = context.l10n.ccPkgActionError;
    final gone = context.l10n.ccPkgGone;
    setState(() => _busy = true);
    try {
      await action();
      GlobalSnackbar.showSuccess(ok);
      await _refresh();
    } on PackageGoneException {
      GlobalSnackbar.showError(gone);
      await _refresh();
    } catch (e) {
      debugPrint('CcPackagesScreen: $e');
      GlobalSnackbar.showError(err);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  String _who(PackageRow r) => r.name.isEmpty ? (r.email.isEmpty ? r.uid : r.email) : r.name;

  Future<bool> _confirm(String title, String body, {Color color = CcColors.mid, IconData? icon}) async {
    final l = context.l10n;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        icon: icon == null ? null : Icon(icon, color: color, size: 36),
        title: Text(title),
        content: Text(body),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(l.commonCancel)),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: color),
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(l.ccPkgConfirm),
          ),
        ],
      ),
    );
    return ok == true;
  }

  Future<void> _extend(PackageRow r) async {
    final me = _me;
    if (me == null) return;
    final l = context.l10n;
    if (!await _confirm(l.ccPkgExtendTitle, l.ccPkgExtendBody(_who(r)), icon: Icons.update_rounded)) return;
    await _run(() => PackageService.instance.extend30(actor: me, row: r), l.ccPkgExtendedOk);
  }

  Future<void> _revoke(PackageRow r) async {
    final me = _me;
    if (me == null) return;
    final l = context.l10n;
    if (!await _confirm(l.ccPkgRevokeTitle, l.ccPkgRevokeBody(_who(r)),
        color: CcColors.danger, icon: Icons.delete_outline_rounded)) {
      return;
    }
    await _run(() => PackageService.instance.revoke(actor: me, row: r), l.ccPkgRevokedOk);
  }

  Future<void> _approve(PackageRow r) async {
    final me = _me;
    if (me == null) return;
    final l = context.l10n;
    final res = await showDialog<_ApproveResult>(context: context, builder: (_) => _ApproveDialog(row: r));
    if (res == null || !mounted) return;
    await _run(
      () => PackageService.instance.approveFull(
        actor: me,
        row: r,
        mekkeStart: res.mekkeStart,
        mekkeEnd: res.mekkeEnd,
        medineStart: res.medineStart,
        medineEnd: res.medineEnd,
        mekkeHotel: res.mekkeHotel,
        medineHotel: res.medineHotel,
      ),
      l.ccPkgApprovedOk,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final user = context.watch<AppStateProvider>().currentUser;
    if (user == null || !user.isSuperAdmin) return NoAccessScreen(title: l.ccPkgTitle);
    return FutureBuilder<List<PackageRow>>(
      future: _future,
      builder: (context, snap) {
        final all = snap.data ?? const <PackageRow>[];
        final now = DateTime.now();
        int count(PackageTab t) => all.where((r) => r.tabAt(now) == t).length;
        final q = _query.trim().toLowerCase();
        final list = all
            .where((r) => r.tabAt(now) == _tab)
            .where((r) => q.isEmpty || r.name.toLowerCase().contains(q) || r.email.toLowerCase().contains(q))
            .toList();
        return CcPage(
          title: l.ccPkgTitle,
          subtitle: l.ccPkgSubtitle,
          onRefresh: _refresh,
          body: [
            if (snap.hasError)
              CcEmpty(icon: Icons.cloud_off_rounded, message: l.ccPkgLoadError)
            else if (!snap.hasData)
              const Padding(padding: EdgeInsets.all(40), child: Center(child: CircularProgressIndicator()))
            else ...[
              CcKpiGrid(children: [
                CcKpiTile(
                  icon: Icons.hourglass_top_rounded,
                  color: CcColors.warn,
                  value: '${count(PackageTab.pending)}',
                  label: l.ccPkgKpiPending,
                  onTap: () => setState(() => _tab = PackageTab.pending),
                ),
                CcKpiTile(
                  icon: Icons.verified_rounded,
                  value: '${count(PackageTab.active)}',
                  label: l.ccPkgKpiActive,
                  onTap: () => setState(() => _tab = PackageTab.active),
                ),
                CcKpiTile(
                  icon: Icons.event_busy_rounded,
                  color: CcColors.danger,
                  value: '${count(PackageTab.expired)}',
                  label: l.ccPkgKpiExpired,
                  onTap: () => setState(() => _tab = PackageTab.expired),
                ),
                CcKpiTile(
                  icon: Icons.workspace_premium_rounded,
                  color: CcColors.gold,
                  value: '${all.length}',
                  label: l.ccPkgKpiTotal,
                ),
              ]),
              const SizedBox(height: 4),
              TextField(
                controller: _search,
                onChanged: (v) => setState(() => _query = v),
                decoration: InputDecoration(
                  hintText: l.ccPkgSearch,
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(height: 10),
              _chips([
                (l.ccPkgKpiPending, PackageTab.pending, count(PackageTab.pending)),
                (l.ccPkgKpiActive, PackageTab.active, count(PackageTab.active)),
                (l.ccPkgKpiExpired, PackageTab.expired, count(PackageTab.expired)),
              ]),
              const SizedBox(height: 12),
              if (list.isEmpty)
                CcEmpty(
                  icon: Icons.workspace_premium_outlined,
                  message: switch (_tab) {
                    PackageTab.pending => l.ccPkgEmptyPending,
                    PackageTab.active => l.ccPkgEmptyActive,
                    PackageTab.expired => l.ccPkgEmptyExpired,
                  },
                )
              else
                for (final r in list)
                  _PackageCard(
                    row: r,
                    tab: r.tabAt(now),
                    who: _who(r),
                    busy: _busy,
                    onApprove: () => _approve(r),
                    onExtend: () => _extend(r),
                    onRevoke: () => _revoke(r),
                  ),
            ],
          ],
        );
      },
    );
  }

  Widget _chips(List<(String, PackageTab, int)> items) => SizedBox(
        height: 38,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            for (final (label, tab, n) in items)
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 8),
                child: ChoiceChip(
                  label: Text('$label  $n'),
                  selected: _tab == tab,
                  onSelected: (_) => setState(() => _tab = tab),
                  showCheckmark: false,
                  selectedColor: CcColors.mid,
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: CcColors.mint),
                  labelStyle: TextStyle(fontWeight: FontWeight.w600, color: _tab == tab ? Colors.white : CcColors.ink),
                ),
              ),
          ],
        ),
      );
}

class _PackageCard extends StatelessWidget {
  final PackageRow row;
  final PackageTab tab;
  final String who;
  final bool busy;
  final VoidCallback onApprove;
  final VoidCallback onExtend;
  final VoidCallback onRevoke;

  const _PackageCard({
    required this.row,
    required this.tab,
    required this.who,
    required this.busy,
    required this.onApprove,
    required this.onExtend,
    required this.onRevoke,
  });

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final (statusText, color) = switch (tab) {
      PackageTab.pending => (l.ccPkgStatusPending, CcColors.warn),
      PackageTab.active => (l.ccPkgStatusActive, CcColors.ok),
      PackageTab.expired => (l.ccPkgStatusExpired, CcColors.danger),
    };
    Widget meta(IconData icon, String text) => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 14, color: AppColors.textMuted),
            const SizedBox(width: 4),
            Flexible(
              child: Text(text,
                  maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
            ),
          ],
        );
    String range(DateTime? a, DateTime? b) => '${CcFmt.date(a)} – ${CcFmt.date(b)}';
    final hasMekke = row.mekkeStart != null && row.mekkeEnd != null;
    final hasMedine = row.medineStart != null && row.medineEnd != null;
    return CcPanel(
      padding: const EdgeInsets.fromLTRB(14, 12, 8, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(who,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: CcColors.ink)),
              ),
              CcBadge(text: statusText, color: color),
              PopupMenuButton<String>(
                enabled: !busy,
                icon: const Icon(Icons.more_vert_rounded, color: AppColors.textMuted),
                onSelected: (v) => switch (v) {
                  'approve' => onApprove(),
                  'extend' => onExtend(),
                  _ => onRevoke(),
                },
                itemBuilder: (_) => [
                  if (row.isFull)
                    PopupMenuItem(
                      value: 'approve',
                      child: ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        leading: const Icon(Icons.edit_calendar_rounded),
                        title: Text(row.isPending ? l.ccPkgApprove : l.ccPkgEditDates),
                      ),
                    ),
                  if (!row.isPending)
                    PopupMenuItem(
                      value: 'extend',
                      child: ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        leading: const Icon(Icons.update_rounded),
                        title: Text(l.ccPkgExtend),
                      ),
                    ),
                  PopupMenuItem(
                    value: 'revoke',
                    child: ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.delete_outline_rounded, color: CcColors.danger),
                      title: Text(l.ccPkgRevoke),
                    ),
                  ),
                ],
              ),
            ],
          ),
          if (row.email.isNotEmpty)
            Text(row.email, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
          const SizedBox(height: 6),
          Text(PaketSecCard.paketName(context, row.paket),
              style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.mid, fontSize: 13.5)),
          const SizedBox(height: 6),
          Wrap(
            spacing: 12,
            runSpacing: 4,
            children: [
              meta(Icons.event_rounded, l.ccPkgUntil(CcFmt.date(row.paidUntil))),
              if (hasMekke)
                meta(Icons.location_city_rounded,
                    '${l.ccPkgMekke}: ${range(row.mekkeStart, row.mekkeEnd)}${row.mekkeHotel.isEmpty ? '' : ' · ${row.mekkeHotel}'}'),
              if (hasMedine)
                meta(Icons.mosque_rounded,
                    '${l.ccPkgMedine}: ${range(row.medineStart, row.medineEnd)}${row.medineHotel.isEmpty ? '' : ' · ${row.medineHotel}'}'),
            ],
          ),
          if (row.isPending) ...[
            const SizedBox(height: 10),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: FilledButton.icon(
                style: FilledButton.styleFrom(backgroundColor: CcColors.mid),
                onPressed: busy ? null : onApprove,
                icon: const Icon(Icons.check_rounded),
                label: Text(l.ccPkgApprove),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _ApproveResult {
  final DateTime? mekkeStart, mekkeEnd, medineStart, medineEnd;
  final String mekkeHotel, medineHotel;
  const _ApproveResult(this.mekkeStart, this.mekkeEnd, this.medineStart, this.medineEnd, this.mekkeHotel, this.medineHotel);
}

/// Full onayı: Mekke/Medine giriş-çıkış tarihleri ve (isteğe bağlı) otel adları.
class _ApproveDialog extends StatefulWidget {
  final PackageRow row;
  const _ApproveDialog({required this.row});

  @override
  State<_ApproveDialog> createState() => _ApproveDialogState();
}

class _ApproveDialogState extends State<_ApproveDialog> {
  late DateTime? _mS = widget.row.mekkeStart;
  late DateTime? _mE = widget.row.mekkeEnd;
  late DateTime? _dS = widget.row.medineStart;
  late DateTime? _dE = widget.row.medineEnd;
  late final _mHotel = TextEditingController(text: widget.row.mekkeHotel);
  late final _dHotel = TextEditingController(text: widget.row.medineHotel);
  String? _error;

  @override
  void dispose() {
    _mHotel.dispose();
    _dHotel.dispose();
    super.dispose();
  }

  Future<DateTime?> _pick(DateTime? current) {
    final now = DateTime.now();
    return showDatePicker(
      context: context,
      initialDate: current ?? now,
      firstDate: DateTime(now.year - 1),
      lastDate: DateTime(now.year + 5),
    );
  }

  Widget _dateBtn(String label, DateTime? value, ValueChanged<DateTime> onPick) => Expanded(
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(minimumSize: const Size(0, 46), padding: const EdgeInsets.symmetric(horizontal: 8)),
          onPressed: () async {
            final d = await _pick(value);
            if (d != null) setState(() => onPick(d));
          },
          child: Text(value == null ? label : CcFmt.date(value), maxLines: 1, overflow: TextOverflow.ellipsis),
        ),
      );

  Widget _city(String title, DateTime? s, DateTime? e, ValueChanged<DateTime> onS, ValueChanged<DateTime> onE,
      TextEditingController hotel) {
    final l = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.w800, color: CcColors.ink)),
        const SizedBox(height: 6),
        Row(children: [
          _dateBtn(l.ccPkgCheckIn, s, onS),
          const SizedBox(width: 8),
          _dateBtn(l.ccPkgCheckOut, e, onE),
        ]),
        const SizedBox(height: 8),
        TextField(
          controller: hotel,
          maxLength: 80,
          decoration: InputDecoration(labelText: l.ccPkgHotel, counterText: '', isDense: true),
        ),
      ],
    );
  }

  void _submit() {
    final l = context.l10n;
    bool partial(DateTime? a, DateTime? b) => (a == null) != (b == null);
    final hasM = _mS != null && _mE != null;
    final hasD = _dS != null && _dE != null;
    if (partial(_mS, _mE) || partial(_dS, _dE) || (!hasM && !hasD)) {
      setState(() => _error = l.ccPkgDatesRequired);
      return;
    }
    if ((hasM && _mE!.isBefore(_mS!)) || (hasD && _dE!.isBefore(_dS!))) {
      setState(() => _error = l.ccPkgDatesOrder);
      return;
    }
    final last = [if (hasM) _mE!, if (hasD) _dE!].reduce((a, b) => a.isAfter(b) ? a : b);
    if (!DateTime(last.year, last.month, last.day).add(const Duration(days: 2)).isAfter(DateTime.now())) {
      setState(() => _error = l.ccPkgDatesPast);
      return;
    }
    Navigator.pop(
      context,
      _ApproveResult(hasM ? _mS : null, hasM ? _mE : null, hasD ? _dS : null, hasD ? _dE : null,
          _mHotel.text, _dHotel.text),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return AlertDialog(
      icon: const Icon(Icons.verified_rounded, color: CcColors.mid, size: 36),
      title: Text(l.ccPkgApproveTitle),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(l.ccPkgApproveHint, style: const TextStyle(fontSize: 13, color: AppColors.textMuted)),
            const SizedBox(height: 14),
            _city(l.ccPkgMekke, _mS, _mE, (d) => _mS = d, (d) => _mE = d, _mHotel),
            const SizedBox(height: 14),
            _city(l.ccPkgMedine, _dS, _dE, (d) => _dS = d, (d) => _dE = d, _dHotel),
            if (_error != null) ...[
              const SizedBox(height: 10),
              Text(_error!, style: const TextStyle(color: CcColors.danger, fontWeight: FontWeight.w600)),
            ],
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text(l.commonCancel)),
        FilledButton(
          style: FilledButton.styleFrom(backgroundColor: CcColors.mid),
          onPressed: _submit,
          child: Text(l.ccPkgConfirm),
        ),
      ],
    );
  }
}

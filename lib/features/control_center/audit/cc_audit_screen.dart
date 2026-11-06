import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../shared/audit_log.dart';
import '../shared/cc_widgets.dart';
import 'audit_entry_tile.dart';
import 'audit_labels.dart';

/// Denetim kaydı (`audit_logs`): yalnız süper admin okur.
/// Sayfa başına 50 kayıt; kategori + dönem sunucuda, kişi araması istemcide süzülür.
/// İndeks: audit_logs (action ASC, created_at DESC) — kategori filtresi için.
class CcAuditScreen extends StatefulWidget {
  const CcAuditScreen({super.key});

  @override
  State<CcAuditScreen> createState() => _CcAuditScreenState();
}

class _CcAuditScreenState extends State<CcAuditScreen> {
  static const _pageSize = 50;

  final _search = TextEditingController();
  final List<AuditLogEntry> _items = [];
  DocumentSnapshot<Map<String, dynamic>>? _last;
  AuditCategory? _category;
  CcPeriod _period = CcPeriod.month;
  String _query = '';
  bool _loading = false;
  bool _hasMore = true;
  bool _error = false;
  int _generation = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && _isSuper) _reload();
    });
  }

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  bool get _isSuper => context.read<AppStateProvider>().currentUser?.isSuperAdmin ?? false;

  Query<Map<String, dynamic>> _query0() {
    Query<Map<String, dynamic>> q = AuditLog.collection;
    final c = _category;
    if (c != null) q = q.where('action', whereIn: auditCategoryActions[c]);
    final start = _period.start;
    if (start != null) q = q.where('created_at', isGreaterThanOrEqualTo: Timestamp.fromDate(start));
    return q.orderBy('created_at', descending: true).limit(_pageSize);
  }

  Future<void> _reload() async {
    _generation++;
    setState(() {
      _items.clear();
      _last = null;
      _hasMore = true;
      _error = false;
      _loading = false;
    });
    await _loadMore();
  }

  Future<void> _loadMore() async {
    if (_loading || !_hasMore) return;
    final gen = _generation;
    setState(() => _loading = true);
    try {
      var q = _query0();
      final last = _last;
      if (last != null) q = q.startAfterDocument(last);
      final snap = await q.get();
      if (!mounted || gen != _generation) return;
      setState(() {
        _items.addAll(snap.docs.map(AuditLogEntry.fromFirestore));
        if (snap.docs.isNotEmpty) _last = snap.docs.last;
        _hasMore = snap.docs.length == _pageSize;
      });
    } catch (e) {
      debugPrint('CcAuditScreen: $e');
      if (mounted && gen == _generation) setState(() => _error = true);
    } finally {
      if (mounted && gen == _generation) setState(() => _loading = false);
    }
  }

  List<AuditLogEntry> get _visible {
    if (_query.isEmpty) return _items;
    return _items
        .where((e) => '${e.actorName} ${e.targetName}'.toLowerCase().contains(_query))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final user = context.watch<AppStateProvider>().currentUser;
    if (!(user?.isSuperAdmin ?? false)) {
      return CcPage(
        title: t.ccAuditTitle,
        body: [CcEmpty(icon: Icons.lock_rounded, message: t.rolesNoAccess)],
      );
    }
    final visible = _visible;
    return CcPage(
      title: t.ccAuditTitle,
      subtitle: t.ccAuditSubtitle,
      onRefresh: _reload,
      headerExtra: CcPeriodChips(
        value: _period,
        labels: ccPeriodLabels(context),
        onDark: true,
        onChanged: (p) {
          _period = p;
          _reload();
        },
      ),
      body: [
        SizedBox(
          height: 38,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _catChip(null, t.ccAuditCatAll, Icons.all_inclusive_rounded),
              for (final c in AuditCategory.values) _catChip(c, auditCategoryLabel(context, c), auditCategoryIcon(c)),
            ],
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _search,
          onChanged: (v) => setState(() => _query = v.trim().toLowerCase()),
          decoration: InputDecoration(
            hintText: t.ccAuditSearchActor,
            prefixIcon: const Icon(Icons.search_rounded),
            suffixIcon: _query.isEmpty
                ? null
                : IconButton(
                    icon: const Icon(Icons.close_rounded),
                    onPressed: () {
                      _search.clear();
                      setState(() => _query = '');
                    },
                  ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(vertical: 12),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide.none),
          ),
        ),
        const SizedBox(height: 16),
        CcSection(
          title: t.ccAuditTitle,
          trailing: _items.isEmpty ? null : CcBadge(text: t.ccAuditShown(visible.length)),
          child: _body(visible),
        ),
      ],
    );
  }

  Widget _body(List<AuditLogEntry> visible) {
    final t = context.l10n;
    if (_error && _items.isEmpty) return CcEmpty(icon: Icons.cloud_off_rounded, message: t.ccLoadFailed);
    if (_items.isEmpty && _loading) {
      return const Padding(padding: EdgeInsets.all(40), child: Center(child: CircularProgressIndicator()));
    }
    if (visible.isEmpty && !_hasMore) return CcEmpty(icon: Icons.manage_search_rounded, message: t.ccAuditEmpty);
    return CcPanel(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      child: Column(
        children: [
          for (var i = 0; i < visible.length; i++) ...[
            if (i > 0) const Divider(height: 1, color: AppColors.divider),
            AuditEntryTile(key: ValueKey(visible[i].id), entry: visible[i]),
          ],
          if (_hasMore)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: _loading
                  ? const SizedBox(width: 22, height: 22, child: CircularProgressIndicator(strokeWidth: 2))
                  : TextButton.icon(
                      onPressed: _loadMore,
                      icon: const Icon(Icons.expand_more_rounded),
                      label: Text(t.ccAuditLoadMore),
                    ),
            ),
        ],
      ),
    );
  }

  Widget _catChip(AuditCategory? c, String label, IconData icon) {
    final selected = _category == c;
    final color = c == null ? CcColors.mid : auditCategoryColor(c);
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 8),
      child: ChoiceChip(
        avatar: Icon(icon, size: 16, color: selected ? Colors.white : color),
        label: Text(label),
        selected: selected,
        showCheckmark: false,
        selectedColor: color,
        backgroundColor: Colors.white,
        side: BorderSide(color: selected ? color : CcColors.mint),
        labelStyle: TextStyle(fontWeight: FontWeight.w600, color: selected ? Colors.white : CcColors.ink),
        onSelected: (_) {
          if (_category == c) return;
          _category = c;
          _reload();
        },
      ),
    );
  }
}

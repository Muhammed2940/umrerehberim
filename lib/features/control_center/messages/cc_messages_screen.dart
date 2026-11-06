import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/services/firestore_service.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../admin/models/agency_model.dart';
import '../../admin/widgets/no_access_screen.dart';
import '../shared/cc_widgets.dart';
import 'agency_message_service.dart';
import 'cc_broadcast_screen.dart';
import 'chat_widgets.dart';

/// Merkez (süper admin, yönetici, destek): acentelerle yazışmalar.
/// Rota: /cc/messages
class CcMessagesScreen extends StatefulWidget {
  const CcMessagesScreen({super.key});

  @override
  State<CcMessagesScreen> createState() => _CcMessagesScreenState();
}

class _AgencyRow {
  final AgencyModel agency;
  final AgencyMessage? last;
  final int unread;
  const _AgencyRow(this.agency, this.last, this.unread);
}

class _CcMessagesScreenState extends State<CcMessagesScreen> {
  late Future<List<AgencyModel>> _agencies;
  late final Stream<List<AgencyMessage>> _overview;
  final _search = TextEditingController();
  String _query = '';
  bool _unreadOnly = false;

  @override
  void initState() {
    super.initState();
    _agencies = FirestoreService.instance.getAgencies();
    _overview = AgencyMessageService.instance.streamHqOverview();
  }

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  Future<void> _reload() async {
    setState(() => _agencies = FirestoreService.instance.getAgencies());
    await _agencies;
  }

  List<_AgencyRow> _rows(List<AgencyModel> agencies, List<AgencyMessage> messages) {
    final last = <String, AgencyMessage>{};
    final unread = <String, int>{};
    // messages yeniden eskiye sıralı: ilk görülen = son mesaj.
    for (final m in messages) {
      last.putIfAbsent(m.agencyId, () => m);
      if (!m.isFromHq && !m.readByHq) unread[m.agencyId] = (unread[m.agencyId] ?? 0) + 1;
    }
    final rows = [for (final a in agencies) _AgencyRow(a, last[a.id], unread[a.id] ?? 0)];
    rows.sort((a, b) {
      final ta = a.last?.createdAt;
      final tb = b.last?.createdAt;
      if (ta == null && tb == null) return a.agency.name.toLowerCase().compareTo(b.agency.name.toLowerCase());
      if (ta == null) return 1;
      if (tb == null) return -1;
      return tb.compareTo(ta);
    });
    return rows;
  }

  void _openThread(AgencyModel a) =>
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => CcAgencyThreadScreen(agency: a)));

  Future<void> _openBroadcast(List<AgencyModel> agencies) async {
    await Navigator.of(context).push(MaterialPageRoute(builder: (_) => CcBroadcastScreen(agencies: agencies)));
  }

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AppStateProvider>().currentUser;
    final t = context.l10n;
    if (user == null || !(user.isGlobalAdmin || user.isSupport)) {
      return NoAccessScreen(title: t.ccMsgTitle);
    }
    return FutureBuilder<List<AgencyModel>>(
      future: _agencies,
      builder: (context, agencySnap) => StreamBuilder<List<AgencyMessage>>(
        stream: _overview,
        builder: (context, msgSnap) {
          final agencies = agencySnap.data ?? const <AgencyModel>[];
          final hasError = agencySnap.hasError || msgSnap.hasError;
          final loading = !hasError && (!agencySnap.hasData || !msgSnap.hasData);
          if (msgSnap.hasError) debugPrint('CcMessages overview: ${msgSnap.error}');
          final rows = loading || hasError ? <_AgencyRow>[] : _rows(agencies, msgSnap.data!);
          final totalUnread = rows.fold<int>(0, (s, r) => s + r.unread);
          final q = _query.trim().toLowerCase();
          final visible = rows
              .where((r) => q.isEmpty || r.agency.name.toLowerCase().contains(q))
              .where((r) => !_unreadOnly || r.unread > 0)
              .toList();

          return CcPage(
            title: t.ccMsgTitle,
            subtitle: t.ccMsgSubtitle,
            onRefresh: _reload,
            headerExtra: _SearchField(
              controller: _search,
              hint: t.ccMsgSearch,
              onChanged: (v) => setState(() => _query = v),
            ),
            floatingActionButton: agencies.isEmpty
                ? null
                : FloatingActionButton.extended(
                    heroTag: 'cc_msg_broadcast',
                    backgroundColor: CcColors.mid,
                    foregroundColor: Colors.white,
                    onPressed: () => _openBroadcast(agencies),
                    icon: const Icon(Icons.campaign_rounded),
                    label: Text(t.ccMsgBroadcast, style: const TextStyle(fontWeight: FontWeight.w700)),
                  ),
            body: [
              if (loading)
                const Padding(
                  padding: EdgeInsets.all(40),
                  child: Center(child: CircularProgressIndicator()),
                )
              else if (hasError)
                CcEmpty(icon: Icons.cloud_off_rounded, message: t.ccMsgLoadFailed)
              else ...[
                Row(
                  children: [
                    _FilterChip(
                      label: t.ccMsgFilterAll,
                      selected: !_unreadOnly,
                      onTap: () => setState(() => _unreadOnly = false),
                    ),
                    const SizedBox(width: 8),
                    _FilterChip(
                      label: t.ccMsgFilterUnread,
                      count: totalUnread,
                      selected: _unreadOnly,
                      onTap: () => setState(() => _unreadOnly = true),
                    ),
                    const Spacer(),
                    CcBadge(
                      text: totalUnread > 0 ? t.ccMsgUnreadTotal(totalUnread) : t.ccMsgAllRead,
                      color: totalUnread > 0 ? CcColors.gold : CcColors.ok,
                      icon: totalUnread > 0 ? Icons.mark_email_unread_rounded : Icons.done_all_rounded,
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                if (visible.isEmpty)
                  CcEmpty(icon: Icons.forum_outlined, message: t.ccMsgNoAgencies)
                else
                  CcPanel(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Column(
                      children: [
                        for (var i = 0; i < visible.length; i++) ...[
                          _AgencyTile(row: visible[i], onTap: () => _openThread(visible[i].agency)),
                          if (i < visible.length - 1)
                            const Divider(height: 1, indent: 76, endIndent: 16, color: AppColors.divider),
                        ],
                      ],
                    ),
                  ),
              ],
            ],
          );
        },
      ),
    );
  }
}

class _SearchField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final ValueChanged<String> onChanged;
  const _SearchField({required this.controller, required this.hint, required this.onChanged});

  @override
  Widget build(BuildContext context) => SizedBox(
    height: 42,
    child: TextField(
      controller: controller,
      onChanged: onChanged,
      style: const TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white60),
        prefixIcon: const Icon(Icons.search_rounded, color: Colors.white70),
        filled: true,
        fillColor: Colors.white.withValues(alpha: 0.14),
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide.none),
      ),
    ),
  );
}

class _FilterChip extends StatelessWidget {
  final String label;
  final bool selected;
  final int count;
  final VoidCallback onTap;
  const _FilterChip({required this.label, required this.selected, required this.onTap, this.count = 0});

  @override
  Widget build(BuildContext context) => ChoiceChip(
    label: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label),
        if (count > 0) ...[
          const SizedBox(width: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
            decoration: BoxDecoration(
              color: selected ? Colors.white : CcColors.mid,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              '$count',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w800,
                color: selected ? CcColors.mid : Colors.white,
              ),
            ),
          ),
        ],
      ],
    ),
    selected: selected,
    onSelected: (_) => onTap(),
    showCheckmark: false,
    selectedColor: CcColors.mid,
    backgroundColor: Colors.white,
    side: const BorderSide(color: CcColors.mint),
    labelStyle: TextStyle(fontWeight: FontWeight.w600, color: selected ? Colors.white : CcColors.ink),
  );
}

class _AgencyTile extends StatelessWidget {
  final _AgencyRow row;
  final VoidCallback onTap;
  const _AgencyTile({required this.row, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final last = row.last;
    final unread = row.unread > 0;
    String preview;
    if (last == null) {
      preview = t.ccMsgNoMessagesYet;
    } else {
      final text = last.title.isNotEmpty ? '${last.title}: ${last.body}' : last.body;
      preview = last.isFromHq ? '${t.ccMsgYou}: $text' : text;
    }
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        child: Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                CcMsgAvatar(name: row.agency.name, radius: 24),
                if (!row.agency.isActive)
                  const PositionedDirectional(
                    end: -2,
                    bottom: -2,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.pause_circle_filled_rounded, size: 15, color: AppColors.textMuted),
                    ),
                  ),
              ],
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          row.agency.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: unread ? FontWeight.w800 : FontWeight.w700,
                            color: CcColors.ink,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        ccMsgShortTime(context, last?.createdAt),
                        style: TextStyle(
                          fontSize: 11.5,
                          fontWeight: unread ? FontWeight.w700 : FontWeight.w400,
                          color: unread ? CcColors.mid : AppColors.textMuted,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      if (last != null && last.isFromHq) ...[
                        Icon(
                          last.readByAgency ? Icons.done_all_rounded : Icons.done_rounded,
                          size: 15,
                          color: last.readByAgency ? CcColors.info : AppColors.textMuted,
                        ),
                        const SizedBox(width: 3),
                      ],
                      Expanded(
                        child: Text(
                          preview,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 13,
                            fontStyle: last == null ? FontStyle.italic : FontStyle.normal,
                            fontWeight: unread ? FontWeight.w600 : FontWeight.w400,
                            color: unread ? AppColors.text : AppColors.textMuted,
                          ),
                        ),
                      ),
                      if (unread) ...[const SizedBox(width: 8), CcUnreadBadge(count: row.unread)],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Merkez tarafı: tek acenteyle yazışma.
class CcAgencyThreadScreen extends StatelessWidget {
  final AgencyModel agency;
  const CcAgencyThreadScreen({super.key, required this.agency});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final user = context.read<AppStateProvider>().currentUser;
    final subtitle = [agency.phone, agency.email].whereType<String>().where((e) => e.trim().isNotEmpty).join(' · ');
    return Scaffold(
      backgroundColor: CcColors.bg,
      appBar: ccChatAppBar(title: agency.name, subtitle: subtitle),
      body: CcChatThreadView(
        agencyId: agency.id,
        mySide: MsgSide.hq,
        onMarkRead: AgencyMessageService.instance.markReadByHq,
        onSend: (title, body) async {
          try {
            await AgencyMessageService.instance.sendFromHq(
              agencyId: agency.id,
              agencyName: agency.name,
              sender: user,
              title: title,
              body: body,
            );
            return true;
          } catch (e) {
            debugPrint('sendFromHq: $e');
            GlobalSnackbar.showError(t.ccMsgSendFailed);
            return false;
          }
        },
      ),
    );
  }
}

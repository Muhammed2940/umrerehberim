import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../shared/cc_widgets.dart';
import 'agency_message_service.dart';

/// Liste satırları için kısa zaman etiketi: bugün → 14:05, dün → "Dün", bu hafta → gün adı, sonra → 12.10.2026.
String ccMsgShortTime(BuildContext context, DateTime? d) {
  if (d == null) return '';
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final day = DateTime(d.year, d.month, d.day);
  final diff = today.difference(day).inDays;
  final locale = Localizations.localeOf(context).toLanguageTag();
  if (diff == 0) return DateFormat('HH:mm').format(d);
  if (diff == 1) return context.l10n.ccMsgYesterday;
  if (diff < 7) return DateFormat('EEEE', locale).format(d);
  return DateFormat('dd.MM.yyyy').format(d);
}

/// Yazışma içindeki gün ayracı metni.
String ccMsgDayLabel(BuildContext context, DateTime d) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final diff = today.difference(DateTime(d.year, d.month, d.day)).inDays;
  if (diff == 0) return context.l10n.ccMsgToday;
  if (diff == 1) return context.l10n.ccMsgYesterday;
  return DateFormat('d MMMM yyyy', Localizations.localeOf(context).toLanguageTag()).format(d);
}

/// Baş harflerden avatar.
class CcMsgAvatar extends StatelessWidget {
  final String name;
  final double radius;
  final bool hq;
  const CcMsgAvatar({super.key, required this.name, this.radius = 22, this.hq = false});

  @override
  Widget build(BuildContext context) {
    final parts = name.trim().split(RegExp(r'\s+')).where((e) => e.isNotEmpty).toList();
    final initials = parts.isEmpty
        ? '?'
        : (parts.length == 1 ? parts.first.substring(0, 1) : parts[0].substring(0, 1) + parts[1].substring(0, 1))
              .toUpperCase();
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: hq ? const [CcColors.gold, Color(0xFFE3C77A)] : const [CcColors.mid, CcColors.sage],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      alignment: Alignment.center,
      child: hq
          ? Icon(Icons.apartment_rounded, color: Colors.white, size: radius)
          : Text(
              initials,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: radius * 0.75),
            ),
    );
  }
}

/// Okunmamış sayısı rozeti.
class CcUnreadBadge extends StatelessWidget {
  final int count;
  const CcUnreadBadge({super.key, required this.count});

  @override
  Widget build(BuildContext context) => Container(
    constraints: const BoxConstraints(minWidth: 22),
    padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
    decoration: BoxDecoration(color: CcColors.mid, borderRadius: BorderRadius.circular(12)),
    child: Text(
      count > 99 ? '99+' : '$count',
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w800),
    ),
  );
}

/// Sohbet balonu. Kendi mesajlarım sağda (zümrüt), karşı taraf solda (beyaz).
class CcMessageBubble extends StatelessWidget {
  final AgencyMessage message;
  final bool mine;
  final bool showSender;
  const CcMessageBubble({super.key, required this.message, required this.mine, this.showSender = false});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final fg = mine ? Colors.white : AppColors.text;
    final muted = mine ? Colors.white70 : AppColors.textMuted;
    const r = Radius.circular(18);
    return Align(
      alignment: mine ? AlignmentDirectional.centerEnd : AlignmentDirectional.centerStart,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.78),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 3),
          padding: const EdgeInsets.fromLTRB(14, 10, 12, 8),
          decoration: BoxDecoration(
            gradient: mine
                ? const LinearGradient(
                    colors: [CcColors.mid, CcColors.deep],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )
                : null,
            color: mine ? null : Colors.white,
            borderRadius: BorderRadiusDirectional.only(
              topStart: r,
              topEnd: r,
              bottomStart: mine ? r : const Radius.circular(4),
              bottomEnd: mine ? const Radius.circular(4) : r,
            ),
            boxShadow: const [BoxShadow(color: Color(0x12051F20), blurRadius: 8, offset: Offset(0, 2))],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if ((showSender && message.fromName.isNotEmpty) || message.isBroadcast)
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (showSender && message.fromName.isNotEmpty)
                        Flexible(
                          child: Text(
                            message.fromName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: mine ? CcColors.mint : CcColors.mid,
                            ),
                          ),
                        ),
                      if (message.isBroadcast) ...[
                        if (showSender && message.fromName.isNotEmpty) const SizedBox(width: 6),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                          decoration: BoxDecoration(
                            color: (mine ? Colors.white : CcColors.gold).withValues(alpha: mine ? 0.18 : 0.15),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.campaign_rounded, size: 11, color: mine ? Colors.white : CcColors.gold),
                              const SizedBox(width: 3),
                              Text(
                                t.ccMsgBroadcastTag,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: mine ? Colors.white : CcColors.gold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              if (message.title.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    message.title,
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15, color: fg),
                  ),
                ),
              Text(message.body, style: TextStyle(fontSize: 14.5, height: 1.35, color: fg)),
              const SizedBox(height: 4),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    message.createdAt == null ? '' : DateFormat('HH:mm').format(message.createdAt!),
                    style: TextStyle(fontSize: 11, color: muted),
                  ),
                  if (mine) ...[
                    const SizedBox(width: 4),
                    Icon(
                      message.pending
                          ? Icons.schedule_rounded
                          : (message.readByOtherSide ? Icons.done_all_rounded : Icons.done_rounded),
                      size: 15,
                      color: message.readByOtherSide ? const Color(0xFF7FE0FF) : muted,
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Gün ayracı (ortada küçük hap).
class CcDaySeparator extends StatelessWidget {
  final String label;
  const CcDaySeparator({super.key, required this.label});

  @override
  Widget build(BuildContext context) => Center(
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(color: CcColors.mint, borderRadius: BorderRadius.circular(12)),
      child: Text(
        label,
        style: const TextStyle(fontSize: 11.5, fontWeight: FontWeight.w700, color: CcColors.deep),
      ),
    ),
  );
}

/// Mesaj yazma çubuğu: isteğe bağlı başlık + gövde + gönder.
class CcMessageComposer extends StatefulWidget {
  final Future<bool> Function(String title, String body) onSend;
  const CcMessageComposer({super.key, required this.onSend});

  @override
  State<CcMessageComposer> createState() => _CcMessageComposerState();
}

class _CcMessageComposerState extends State<CcMessageComposer> {
  final _title = TextEditingController();
  final _body = TextEditingController();
  bool _showTitle = false;
  bool _sending = false;

  @override
  void initState() {
    super.initState();
    _body.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _title.dispose();
    _body.dispose();
    super.dispose();
  }

  Future<void> _send() async {
    final body = _body.text.trim();
    if (body.isEmpty || _sending) return;
    setState(() => _sending = true);
    final ok = await widget.onSend(_showTitle ? _title.text.trim() : '', body);
    if (!mounted) return;
    setState(() {
      _sending = false;
      if (ok) {
        _body.clear();
        _title.clear();
        _showTitle = false;
      }
    });
  }

  InputDecoration _deco(String hint) => InputDecoration(
    hintText: hint,
    isDense: true,
    filled: true,
    fillColor: CcColors.bg,
    contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(22), borderSide: BorderSide.none),
  );

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final canSend = _body.text.trim().isNotEmpty && !_sending;
    return Material(
      color: Colors.white,
      elevation: 8,
      shadowColor: const Color(0x33051F20),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (_showTitle)
                Padding(
                  padding: const EdgeInsets.fromLTRB(44, 0, 52, 6),
                  child: TextField(
                    controller: _title,
                    textCapitalization: TextCapitalization.sentences,
                    style: const TextStyle(fontWeight: FontWeight.w700),
                    decoration: _deco(t.ccMsgTitleHint),
                  ),
                ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    tooltip: t.ccMsgAddTitle,
                    onPressed: () => setState(() => _showTitle = !_showTitle),
                    icon: Icon(
                      _showTitle ? Icons.title_rounded : Icons.short_text_rounded,
                      color: _showTitle ? CcColors.mid : AppColors.textMuted,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _body,
                      minLines: 1,
                      maxLines: 5,
                      textCapitalization: TextCapitalization.sentences,
                      decoration: _deco(t.ccMsgBodyHint),
                    ),
                  ),
                  const SizedBox(width: 6),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 180),
                    decoration: BoxDecoration(shape: BoxShape.circle, color: canSend ? CcColors.mid : CcColors.mint),
                    child: IconButton(
                      tooltip: t.ccMsgSend,
                      onPressed: canSend ? _send : null,
                      icon: _sending
                          ? const SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                            )
                          : const Icon(Icons.send_rounded, color: Colors.white, size: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Bir acentenin yazışması: canlı akış + balonlar + gün ayraçları + yazma çubuğu.
/// [mySide] kendi mesajlarımın tarafı (sağda gösterilir). Yeni gelen mesajlar
/// ekrandayken [onMarkRead] ile okundu işaretlenir.
class CcChatThreadView extends StatefulWidget {
  final String agencyId;
  final String mySide;
  final Future<bool> Function(String title, String body) onSend;
  final Future<void> Function(List<AgencyMessage> messages) onMarkRead;

  const CcChatThreadView({
    super.key,
    required this.agencyId,
    required this.mySide,
    required this.onSend,
    required this.onMarkRead,
  });

  @override
  State<CcChatThreadView> createState() => _CcChatThreadViewState();
}

class _CcChatThreadViewState extends State<CcChatThreadView> {
  late Stream<List<AgencyMessage>> _stream;
  final Set<String> _marked = {};

  @override
  void initState() {
    super.initState();
    _stream = AgencyMessageService.instance.streamThread(widget.agencyId);
  }

  void _markRead(List<AgencyMessage> list) {
    final otherSide = widget.mySide == MsgSide.hq ? MsgSide.agency : MsgSide.hq;
    final unread = list
        .where(
          (m) =>
              m.fromSide == otherSide &&
              !m.pending &&
              !_marked.contains(m.id) &&
              (widget.mySide == MsgSide.hq ? !m.readByHq : !m.readByAgency),
        )
        .toList();
    if (unread.isEmpty) return;
    _marked.addAll(unread.map((m) => m.id));
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onMarkRead(unread).catchError((Object e) {
        debugPrint('okundu işaretlenemedi: $e');
        _marked.removeAll(unread.map((m) => m.id));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return Column(
      children: [
        Expanded(
          child: StreamBuilder<List<AgencyMessage>>(
            stream: _stream,
            builder: (context, snap) {
              if (snap.hasError) {
                debugPrint('thread stream: ${snap.error}');
                return CcEmpty(icon: Icons.cloud_off_rounded, message: t.ccMsgLoadFailed);
              }
              if (!snap.hasData) return const Center(child: CircularProgressIndicator());
              final list = snap.data!;
              _markRead(list);
              if (list.isEmpty) {
                return Center(
                  child: CcEmpty(icon: Icons.forum_outlined, message: t.ccMsgEmptyThread),
                );
              }
              // reverse: en yeni altta, klavye açılınca kendiliğinden aşağıda kalır.
              final items = <Widget>[];
              DateTime? lastDay;
              for (final m in list) {
                final d = m.createdAt ?? DateTime.now();
                final day = DateTime(d.year, d.month, d.day);
                if (lastDay == null || day != lastDay) {
                  items.add(CcDaySeparator(label: ccMsgDayLabel(context, d)));
                  lastDay = day;
                }
                final mine = m.fromSide == widget.mySide;
                items.add(CcMessageBubble(key: ValueKey(m.id), message: m, mine: mine, showSender: true));
              }
              final reversed = items.reversed.toList();
              return ListView.builder(
                reverse: true,
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                itemCount: reversed.length,
                itemBuilder: (_, i) => reversed[i],
              );
            },
          ),
        ),
        CcMessageComposer(onSend: widget.onSend),
      ],
    );
  }
}

/// Sohbet ekranlarının üst çubuğu (avatar + ad + alt başlık).
PreferredSizeWidget ccChatAppBar({
  required String title,
  String? subtitle,
  bool hq = false,
  List<Widget> actions = const [],
}) => AppBar(
  backgroundColor: Colors.transparent,
  foregroundColor: Colors.white,
  iconTheme: const IconThemeData(color: Colors.white),
  titleSpacing: 0,
  flexibleSpace: Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [CcColors.ink, CcColors.mid],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
  ),
  title: Row(
    children: [
      CcMsgAvatar(name: title, radius: 18, hq: hq),
      const SizedBox(width: 10),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
            ),
            if (subtitle != null && subtitle.isNotEmpty)
              Text(
                subtitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.white70, fontSize: 12, fontWeight: FontWeight.w400),
              ),
          ],
        ),
      ),
    ],
  ),
  actions: actions,
);

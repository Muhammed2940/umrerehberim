import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../admin/widgets/no_access_screen.dart';
import '../shared/cc_widgets.dart';
import 'agency_message_service.dart';
import 'chat_widgets.dart';

/// Acente admini: kendi acentesinin Merkez ile yazışması.
/// Rota: /cc/agency-inbox
class AgencyInboxScreen extends StatelessWidget {
  const AgencyInboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final user = context.watch<AppStateProvider>().currentUser;
    if (user == null || !user.isAgencyAdmin) return NoAccessScreen(title: t.ccMsgMenu);
    final agencyId = user.agencyId ?? '';
    if (agencyId.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text(t.ccMsgMenu)),
        body: CcEmpty(icon: Icons.business_outlined, message: t.ccMsgNoAgency),
      );
    }
    return Scaffold(
      backgroundColor: CcColors.bg,
      appBar: ccChatAppBar(title: t.ccMsgHq, subtitle: t.ccMsgHqSub, hq: true),
      body: CcChatThreadView(
        agencyId: agencyId,
        mySide: MsgSide.agency,
        onMarkRead: AgencyMessageService.instance.markReadByAgency,
        onSend: (title, body) async {
          try {
            await AgencyMessageService.instance.sendFromAgency(
              agencyId: agencyId,
              sender: user,
              title: title,
              body: body,
            );
            return true;
          } catch (e) {
            debugPrint('sendFromAgency: $e');
            GlobalSnackbar.showError(t.ccMsgSendFailed);
            return false;
          }
        },
      ),
    );
  }
}

/// Acente admininin ana panelinde: Merkezden okunmamış mesaj varsa görünen şerit.
/// Okunmamış yoksa hiç yer kaplamaz.
class AgencyInboxBanner extends StatefulWidget {
  final String agencyId;
  const AgencyInboxBanner({super.key, required this.agencyId});

  @override
  State<AgencyInboxBanner> createState() => _AgencyInboxBannerState();
}

class _AgencyInboxBannerState extends State<AgencyInboxBanner> {
  late Stream<List<AgencyMessage>> _stream;

  @override
  void initState() {
    super.initState();
    _stream = AgencyMessageService.instance.streamThread(widget.agencyId);
  }

  @override
  void didUpdateWidget(covariant AgencyInboxBanner old) {
    super.didUpdateWidget(old);
    if (old.agencyId != widget.agencyId) {
      _stream = AgencyMessageService.instance.streamThread(widget.agencyId);
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return StreamBuilder<List<AgencyMessage>>(
      stream: _stream,
      builder: (context, snap) {
        final list = snap.data ?? const <AgencyMessage>[];
        final unread = list.where((m) => m.isFromHq && !m.readByAgency).toList();
        if (unread.isEmpty) return const SizedBox.shrink();
        final last = unread.last;
        return Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(18),
              onTap: () => Navigator.of(context).pushNamed('/cc/agency-inbox'),
              child: Ink(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [CcColors.ink, CcColors.mid],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  children: [
                    const CcMsgAvatar(name: '', radius: 22, hq: true),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            t.ccMsgInboxBannerTitle,
                            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            last.title.isNotEmpty ? last.title : last.body,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: Colors.white70, fontSize: 12.5),
                          ),
                          Text(
                            t.ccMsgInboxBannerBody(unread.length),
                            style: const TextStyle(color: CcColors.mint, fontSize: 11.5, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                      decoration: BoxDecoration(color: CcColors.gold, borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        '${unread.length}',
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 12),
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(Icons.chevron_right_rounded, color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

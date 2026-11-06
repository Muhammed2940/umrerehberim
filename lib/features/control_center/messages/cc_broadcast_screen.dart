import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../admin/models/agency_model.dart';
import '../shared/cc_widgets.dart';
import 'agency_message_service.dart';
import 'chat_widgets.dart';

/// Hazır mesaj şablonu (yerel, çevrili).
class _Template {
  final IconData icon;
  final Color color;
  final String label;
  final String title;
  final String body;
  const _Template(this.icon, this.color, this.label, this.title, this.body);
}

/// Merkez: tüm / seçili acentelere toplu mesaj.
class CcBroadcastScreen extends StatefulWidget {
  final List<AgencyModel> agencies;
  const CcBroadcastScreen({super.key, required this.agencies});

  @override
  State<CcBroadcastScreen> createState() => _CcBroadcastScreenState();
}

class _CcBroadcastScreenState extends State<CcBroadcastScreen> {
  final _title = TextEditingController();
  final _body = TextEditingController();
  final _search = TextEditingController();
  bool _toAll = true;
  final Set<String> _selected = {};
  String _query = '';
  bool _sending = false;
  int? _activeTemplate;

  @override
  void initState() {
    super.initState();
    _title.addListener(_refresh);
    _body.addListener(_refresh);
  }

  void _refresh() => setState(() {});

  @override
  void dispose() {
    _title.dispose();
    _body.dispose();
    _search.dispose();
    super.dispose();
  }

  List<_Template> _templates(BuildContext context) {
    final t = context.l10n;
    return [
      _Template(
        Icons.waving_hand_rounded,
        CcColors.mid,
        t.ccMsgTplWelcome,
        t.ccMsgTplWelcomeTitle,
        t.ccMsgTplWelcomeBody,
      ),
      _Template(
        Icons.payments_rounded,
        CcColors.gold,
        t.ccMsgTplPayment,
        t.ccMsgTplPaymentTitle,
        t.ccMsgTplPaymentBody,
      ),
      _Template(
        Icons.local_offer_rounded,
        CcColors.series[4],
        t.ccMsgTplCampaign,
        t.ccMsgTplCampaignTitle,
        t.ccMsgTplCampaignBody,
      ),
      _Template(
        Icons.build_circle_rounded,
        CcColors.info,
        t.ccMsgTplMaintenance,
        t.ccMsgTplMaintenanceTitle,
        t.ccMsgTplMaintenanceBody,
      ),
      _Template(
        Icons.description_rounded,
        CcColors.series[5],
        t.ccMsgTplDocument,
        t.ccMsgTplDocumentTitle,
        t.ccMsgTplDocumentBody,
      ),
    ];
  }

  List<String> get _recipientIds => _toAll
      ? widget.agencies.map((a) => a.id).toList()
      : widget.agencies.where((a) => _selected.contains(a.id)).map((a) => a.id).toList();

  Future<void> _send() async {
    final t = context.l10n;
    final body = _body.text.trim();
    if (body.isEmpty) {
      GlobalSnackbar.showError(t.ccMsgBodyRequired);
      return;
    }
    final ids = _recipientIds;
    if (ids.isEmpty) {
      GlobalSnackbar.showError(t.ccMsgNoRecipients);
      return;
    }
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        icon: const Icon(Icons.campaign_rounded, color: CcColors.mid, size: 32),
        title: Text(t.ccMsgBroadcast),
        content: Text(t.ccMsgBroadcastConfirm(ids.length)),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(t.ccMsgCancel)),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: CcColors.mid),
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(t.ccMsgSend),
          ),
        ],
      ),
    );
    if (ok != true || !mounted) return;
    setState(() => _sending = true);
    try {
      final n = await AgencyMessageService.instance.broadcast(
        agencyIds: ids,
        sender: context.read<AppStateProvider>().currentUser,
        title: _title.text,
        body: body,
      );
      GlobalSnackbar.showSuccess(t.ccMsgBroadcastDone(n));
      if (mounted) Navigator.of(context).pop(true);
    } catch (e) {
      debugPrint('broadcast: $e');
      GlobalSnackbar.showError(t.ccMsgSendFailed);
      if (mounted) setState(() => _sending = false);
    }
  }

  InputDecoration _deco(String label, {String? hint}) => InputDecoration(
    labelText: label,
    hintText: hint,
    alignLabelWithHint: true,
    filled: true,
    fillColor: CcColors.bg,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide.none),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: CcColors.mid, width: 1.5),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final templates = _templates(context);
    final count = _recipientIds.length;
    final q = _query.trim().toLowerCase();
    final filtered = widget.agencies.where((a) => q.isEmpty || a.name.toLowerCase().contains(q)).toList();
    final hasBody = _body.text.trim().isNotEmpty;

    return Stack(
      children: [
        CcPage(
          title: t.ccMsgBroadcast,
          subtitle: t.ccMsgBroadcastSub,
          body: [
            // ALICILAR
            CcSection(
              title: t.ccMsgRecipients,
              trailing: CcBadge(text: t.ccMsgSelectedCount(count), icon: Icons.groups_rounded),
              child: CcPanel(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SegmentedButton<bool>(
                      segments: [
                        ButtonSegment(
                          value: true,
                          label: Text(t.ccMsgAllAgencies),
                          icon: const Icon(Icons.public_rounded),
                        ),
                        ButtonSegment(
                          value: false,
                          label: Text(t.ccMsgSelectedAgencies),
                          icon: const Icon(Icons.checklist_rounded),
                        ),
                      ],
                      selected: {_toAll},
                      showSelectedIcon: false,
                      style: SegmentedButton.styleFrom(
                        selectedBackgroundColor: CcColors.mid,
                        selectedForegroundColor: Colors.white,
                        foregroundColor: CcColors.ink,
                      ),
                      onSelectionChanged: (s) => setState(() => _toAll = s.first),
                    ),
                    if (!_toAll) ...[
                      const SizedBox(height: 12),
                      TextField(
                        controller: _search,
                        onChanged: (v) => setState(() => _query = v),
                        decoration: InputDecoration(
                          hintText: t.ccMsgSearch,
                          isDense: true,
                          prefixIcon: const Icon(Icons.search_rounded),
                          filled: true,
                          fillColor: CcColors.bg,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          TextButton.icon(
                            onPressed: () => setState(() => _selected.addAll(filtered.map((a) => a.id))),
                            icon: const Icon(Icons.done_all_rounded, size: 18),
                            label: Text(t.ccMsgSelectAll),
                          ),
                          TextButton.icon(
                            onPressed: () => setState(_selected.clear),
                            icon: const Icon(Icons.clear_rounded, size: 18),
                            label: Text(t.ccMsgClearSelection),
                          ),
                        ],
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxHeight: 280),
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            for (final a in filtered)
                              CheckboxListTile(
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                controlAffinity: ListTileControlAffinity.leading,
                                activeColor: CcColors.mid,
                                value: _selected.contains(a.id),
                                onChanged: (v) =>
                                    setState(() => v == true ? _selected.add(a.id) : _selected.remove(a.id)),
                                title: Text(a.name, style: const TextStyle(fontWeight: FontWeight.w600)),
                                secondary: CcMsgAvatar(name: a.name, radius: 16),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),

            // ŞABLONLAR
            CcSection(
              title: t.ccMsgTemplates,
              child: SizedBox(
                height: 92,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: templates.length,
                  separatorBuilder: (_, _) => const SizedBox(width: 10),
                  itemBuilder: (_, i) {
                    final tpl = templates[i];
                    final active = _activeTemplate == i;
                    return InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {
                        _title.text = tpl.title;
                        _body.text = tpl.body;
                        setState(() => _activeTemplate = i);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 160),
                        width: 118,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: active ? tpl.color.withValues(alpha: 0.12) : Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: active ? tpl.color : CcColors.mint, width: active ? 1.5 : 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(tpl.icon, color: tpl.color),
                            const Spacer(),
                            Text(
                              tpl.label,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 12.5, fontWeight: FontWeight.w700, color: CcColors.ink),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            // MESAJ
            CcSection(
              title: t.ccMsgMessage,
              child: CcPanel(
                child: Column(
                  children: [
                    TextField(
                      controller: _title,
                      textCapitalization: TextCapitalization.sentences,
                      decoration: _deco(t.ccMsgTitleLabel, hint: t.ccMsgTitleHint),
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      controller: _body,
                      minLines: 5,
                      maxLines: 10,
                      textCapitalization: TextCapitalization.sentences,
                      decoration: _deco(t.ccMsgBodyLabel),
                    ),
                  ],
                ),
              ),
            ),

            // ÖNİZLEME
            if (hasBody)
              CcSection(
                title: t.ccMsgPreview,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: CcColors.mint.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: CcMessageBubble(
                    mine: true,
                    message: AgencyMessage(
                      id: 'preview',
                      agencyId: '',
                      fromSide: MsgSide.hq,
                      fromUid: '',
                      fromName: '',
                      title: _title.text.trim(),
                      body: _body.text.trim(),
                      createdAt: DateTime.now(),
                      readByHq: true,
                      readByAgency: false,
                      broadcastId: count > 1 ? 'preview' : '',
                    ),
                  ),
                ),
              ),

            SizedBox(
              height: 52,
              child: FilledButton.icon(
                style: FilledButton.styleFrom(
                  backgroundColor: CcColors.mid,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                ),
                onPressed: _sending || !hasBody || count == 0 ? null : _send,
                icon: const Icon(Icons.send_rounded),
                label: Text(
                  t.ccMsgBroadcastSend(count),
                  style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
        if (_sending)
          const Positioned.fill(
            child: ColoredBox(
              color: Color(0x55000000),
              child: Center(child: CircularProgressIndicator(color: AppColors.mint)),
            ),
          ),
      ],
    );
  }
}

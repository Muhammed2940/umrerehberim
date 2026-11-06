import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../shared/audit_log.dart';
import '../shared/cc_widgets.dart';
import 'audit_labels.dart';

/// Tek denetim kaydı satırı. [expandable] true ise dokununca ayrıntılar açılır.
class AuditEntryTile extends StatefulWidget {
  final AuditLogEntry entry;
  final bool expandable;
  const AuditEntryTile({super.key, required this.entry, this.expandable = true});

  @override
  State<AuditEntryTile> createState() => _AuditEntryTileState();
}

class _AuditEntryTileState extends State<AuditEntryTile> {
  bool _open = false;

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final e = widget.entry;
    final cat = auditCategoryOf(e.action);
    final color = auditCategoryColor(cat);
    final hasDetails = e.details.isNotEmpty || e.targetId.isNotEmpty;
    final target = e.targetName.isNotEmpty ? e.targetName : e.targetId;
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: widget.expandable && hasDetails ? () => setState(() => _open = !_open) : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(color: color.withValues(alpha: 0.12), borderRadius: BorderRadius.circular(12)),
                  child: Icon(auditCategoryIcon(cat), color: color, size: 20),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(ccAuditActionLabel(context, e.action),
                          style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.ink)),
                      if (target.isNotEmpty)
                        Text(target,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 13, color: AppColors.text)),
                      const SizedBox(height: 4),
                      Wrap(
                        spacing: 6,
                        runSpacing: 4,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(e.actorName.isEmpty ? t.ccAuditUnknownActor : e.actorName,
                              style: const TextStyle(fontSize: 12, color: AppColors.textMuted, fontWeight: FontWeight.w600)),
                          if (e.actorRole.isNotEmpty)
                            CcBadge(text: ccRoleLabel(context, e.actorRole), color: ccRoleColor(e.actorRole)),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(ccRelativeTime(context, e.createdAt),
                        style: const TextStyle(fontSize: 11, color: AppColors.textMuted, fontWeight: FontWeight.w600)),
                    if (widget.expandable && hasDetails)
                      Icon(_open ? Icons.expand_less_rounded : Icons.expand_more_rounded, color: AppColors.textMuted, size: 20),
                  ],
                ),
              ],
            ),
            if (_open) _details(context, e),
          ],
        ),
      ),
    );
  }

  Widget _details(BuildContext context, AuditLogEntry e) {
    final t = context.l10n;
    final rows = <MapEntry<String, String>>[
      MapEntry(t.ccAuditTarget, [e.targetType, e.targetId].where((s) => s.isNotEmpty).join(' · ')),
      MapEntry('', CcFmt.dateTime(e.createdAt)),
      for (final d in e.details.entries) MapEntry(d.key, '${d.value}'),
    ];
    return Container(
      margin: const EdgeInsetsDirectional.only(start: 50, top: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: CcColors.bg, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(t.ccAuditDetails, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 12, color: CcColors.ink)),
          const SizedBox(height: 6),
          for (final r in rows)
            if (r.value.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (r.key.isNotEmpty)
                      SizedBox(
                        width: 110,
                        child: Text(r.key, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                      ),
                    Expanded(
                      child: SelectableText(r.value, style: const TextStyle(fontSize: 12, color: AppColors.text)),
                    ),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}

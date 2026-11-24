import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../info_screen/widgets/info_widgets.dart';
import '../models/tracking_link.dart';

enum LinkAction { share, hide, unhide, revoke, views }

/// Bir takip bağlantısı: etiket, kalan süre, rozetler ve işlemler. Kabuk bilgi ekranlarındaki
/// [InfoCardBox] ve [InfoChip]; anahtar ve düğmeler uygulamanın standart bileşenleri.
class TrackingLinkCard extends StatelessWidget {
  final TrackingLink link;
  final ValueChanged<LinkAction> onAction;
  final ValueChanged<bool> onApprox;

  const TrackingLinkCard({super.key, required this.link, required this.onAction, required this.onApprox});

  String _remaining(BuildContext context) {
    final l = context.l10n;
    final left = link.expiresAt.difference(DateTime.now());
    if (left.inDays >= 1) return l.aileDaysLeft(left.inDays);
    return l.aileHoursLeft(left.inHours < 1 ? 1 : left.inHours);
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final active = link.isActive();
    final hidden = link.isHidden();
    final hm = DateFormat.Hm(localeProvider.locale.languageCode);
    final subtitle = !active
        ? (link.revoked ? l.aileBadgeRevoked : l.aileBadgeExpired)
        : hidden
            ? l.aileHiddenUntil(hm.format(link.hiddenUntil!))
            : _remaining(context);
    return Opacity(
      opacity: active ? 1 : 0.6,
      child: InfoCardBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                const InfoIconBadge(Icons.family_restroom_rounded),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(link.label,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.text)),
                      const SizedBox(height: 2),
                      Text(subtitle, style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
                    ],
                  ),
                ),
                if (active)
                  PopupMenuButton<LinkAction>(
                    onSelected: onAction,
                    itemBuilder: (_) => [
                      PopupMenuItem(value: LinkAction.views, child: Text(l.aileViews)),
                      PopupMenuItem(value: LinkAction.revoke, child: Text(l.aileRevoke)),
                    ],
                  ),
              ],
            ),
            if (active) ...[
              const SizedBox(height: 10),
              Wrap(
                spacing: 6,
                runSpacing: 6,
                children: [
                  if (link.approx) InfoChip(l.aileBadgeApprox, icon: Icons.blur_on_rounded),
                  if (hidden) InfoChip(l.aileBadgeHidden, icon: Icons.visibility_off_rounded, strong: true),
                ],
              ),
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                dense: true,
                title: Text(l.aileApproxTitle, style: const TextStyle(fontSize: 14, color: AppColors.text)),
                value: link.approx,
                onChanged: onApprox,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => onAction(LinkAction.share),
                      style: ElevatedButton.styleFrom(minimumSize: const Size(64, 44)),
                      icon: const Icon(Icons.share_rounded, size: 18),
                      label: Text(l.aileShare),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () => onAction(hidden ? LinkAction.unhide : LinkAction.hide),
                      style: OutlinedButton.styleFrom(minimumSize: const Size(64, 44)),
                      icon: Icon(hidden ? Icons.visibility_rounded : Icons.visibility_off_rounded, size: 18),
                      label: Text(hidden ? l.aileUnhide : l.aileHide2h, overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}

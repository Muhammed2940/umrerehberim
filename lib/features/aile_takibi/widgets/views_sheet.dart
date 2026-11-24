import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_theme.dart';
import '../models/tracking_link.dart';
import '../providers/aile_takibi_provider.dart';

/// "Kim baktı": ziyaretçi başına son bakış zamanı, cihaz ve sayı (ham IP/UA tutulmaz).
Future<void> showViewsSheet(BuildContext context, AileTakibiProvider provider, TrackingLink link) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (_) => _ViewsSheet(provider: provider, link: link),
  );
}

class _ViewsSheet extends StatelessWidget {
  final AileTakibiProvider provider;
  final TrackingLink link;

  const _ViewsSheet({required this.provider, required this.link});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final fmt = DateFormat('d MMM HH:mm', localeProvider.locale.languageCode);
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.7),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text('${l.aileViewsTitle} · ${link.label}',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppColors.text)),
            ),
          ),
          Flexible(
            child: FutureBuilder<List<TrackingView>>(
              future: provider.views(link),
              builder: (context, snap) {
                if (snap.connectionState != ConnectionState.done) {
                  return const Padding(padding: EdgeInsets.all(32), child: CircularProgressIndicator());
                }
                if (snap.hasError) {
                  return EmptyStateWidget(icon: Icons.cloud_off_rounded, message: l.aileError);
                }
                final list = snap.data ?? const <TrackingView>[];
                if (list.isEmpty) {
                  return EmptyStateWidget(icon: Icons.visibility_off_rounded, message: l.aileViewsEmpty);
                }
                return ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
                  itemCount: list.length,
                  separatorBuilder: (_, _) => const Divider(height: 1, color: AppColors.divider),
                  itemBuilder: (_, i) {
                    final v = list[i];
                    final mobile = v.device == 'mobil';
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(mobile ? Icons.smartphone_rounded : Icons.computer_rounded, color: AppColors.primary),
                      title: Text(v.lastAt == null ? '-' : fmt.format(v.lastAt!)),
                      subtitle: Text(mobile ? l.aileDeviceMobile : l.aileDeviceDesktop),
                      trailing: Text(l.aileViewsCount(v.count), style: AppTextStyles.muted),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

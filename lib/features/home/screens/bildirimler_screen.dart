import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../admin/models/notification_model.dart';
import '../providers/home_provider.dart';

/// AppBar'daki zilden açılan bildirim kutusu: acente ve rehber duyuruları.
/// Açıldığında tüm bildirimler okundu sayılır (okunmamışlar vurgulu kalır).
class BildirimlerScreen extends StatefulWidget {
  const BildirimlerScreen({super.key});

  @override
  State<BildirimlerScreen> createState() => _BildirimlerScreenState();
}

class _BildirimlerScreenState extends State<BildirimlerScreen> {
  /// Sayfa açıldığı andaki okunmamışlar (vurgu için); sonra hepsi okundu yapılır.
  Set<String> _unreadOnOpen = {};

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    final home = context.read<HomeProvider>();
    await home.loadInbox(context.read<AppStateProvider>().currentUser);
    if (!mounted) return;
    setState(() => _unreadOnOpen = {for (final n in home.inbox) if (home.isUnread(n)) n.id});
    await home.markAllRead();
  }

  @override
  Widget build(BuildContext context) {
    final home = context.watch<HomeProvider>();
    final list = home.inbox;
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.homeNotificationsTitle)),
      body: RefreshIndicator(
        color: AppColors.primary,
        onRefresh: _load,
        child: Builder(builder: (context) {
          if (home.inboxLoading && list.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          if (list.isEmpty) {
            return ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                const SizedBox(height: 120),
                EmptyStateWidget(
                  icon: Icons.notifications_none_rounded,
                  message: home.inboxError ?? context.l10n.homeNoNotifications,
                  subtitle: home.inboxError == null ? context.l10n.homeNoNotificationsHint : null,
                ),
              ],
            );
          }
          return ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
            itemCount: list.length,
            separatorBuilder: (_, _) => const SizedBox(height: 10),
            itemBuilder: (_, i) => _NotificationTile(n: list[i], unread: _unreadOnOpen.contains(list[i].id)),
          );
        }),
      ),
    );
  }
}

class _NotificationTile extends StatelessWidget {
  final NotificationModel n;
  final bool unread;

  const _NotificationTile({required this.n, required this.unread});

  String _when(BuildContext context, DateTime? d) {
    if (d == null) return '';
    final l = context.l10n;
    final local = d.toLocal();
    final diff = DateTime.now().difference(local);
    if (diff.inMinutes < 1) return l.homeJustNow;
    if (diff.inMinutes < 60) return l.homeMinutesAgo(diff.inMinutes);
    if (diff.inHours < 24) return l.homeHoursAgo(diff.inHours);
    return DateFormat('d MMMM, HH:mm').format(local);
  }

  @override
  Widget build(BuildContext context) {
    final personal = (n.userToken ?? '').isNotEmpty;
    final icon = personal ? Icons.mark_email_unread_rounded : Icons.campaign_rounded;
    return Container(
      decoration: BoxDecoration(
        color: unread ? AppColors.primaryLight : Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: unread ? AppColors.primary.withValues(alpha: 0.35) : AppColors.divider),
        boxShadow: const [BoxShadow(color: Color(0x0D000000), blurRadius: 8, offset: Offset(0, 3))],
      ),
      padding: const EdgeInsets.all(14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(gradient: AppColors.primaryGradient, borderRadius: BorderRadius.circular(12)),
            child: Icon(icon, color: Colors.white, size: 22),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(n.title,
                          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: AppColors.text)),
                    ),
                    if (unread)
                      Container(
                        width: 9,
                        height: 9,
                        decoration: const BoxDecoration(color: AppColors.accent, shape: BoxShape.circle),
                      ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(n.message, style: const TextStyle(fontSize: 13.5, color: AppColors.text, height: 1.35)),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(personal ? context.l10n.homePersonal : context.l10n.homeAnnouncement,
                        style: const TextStyle(fontSize: 11.5, color: AppColors.primary, fontWeight: FontWeight.w600)),
                    const Text('  •  ', style: TextStyle(fontSize: 11.5, color: AppColors.textMuted)),
                    Text(_when(context, n.createdAt), style: const TextStyle(fontSize: 11.5, color: AppColors.textMuted)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

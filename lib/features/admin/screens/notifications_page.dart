import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../providers/admin_provider.dart';
import '../providers/notification_provider.dart';
import '../utils/admin_helpers.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  final _formKey = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _message = TextEditingController();
  NotificationTargetType _target = NotificationTargetType.all;
  String? _tripId;

  @override
  void initState() {
    super.initState();
    ensureAdminLoaded(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      context.read<NotificationProvider>().loadHistory(adminAgencyId(context));
    });
  }

  @override
  void dispose() {
    _title.dispose();
    _message.dispose();
    super.dispose();
  }

  Future<void> _send() async {
    FocusScope.of(context).unfocus();
    if (!_formKey.currentState!.validate()) return;
    final ok = await context.read<NotificationProvider>().send(
          title: _title.text,
          message: _message.text,
          agencyId: adminAgencyId(context),
          target: _target,
          tripId: _tripId,
        );
    if (ok && mounted) {
      _title.clear();
      _message.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    final agencyId = adminAgencyId(context);
    final admin = context.watch<AdminProvider>();
    final np = context.watch<NotificationProvider>();
    final l = context.l10n;

    if (agencyId == null) {
      return Scaffold(
        appBar: AppBar(title: Text(l.adminMenuNotify)),
        body: EmptyStateWidget(
          icon: Icons.business,
          message: l.adminNoAgencySelected,
          subtitle: l.adminNotifyNoAgencyHint,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(l.adminMenuNotify)),
      body: RefreshIndicator(
        onRefresh: () => np.loadHistory(agencyId),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(l.adminNotifyTarget, style: const TextStyle(fontWeight: FontWeight.w600)),
                      const SizedBox(height: 8),
                      SegmentedButton<NotificationTargetType>(
                        segments: [
                          ButtonSegment(
                              value: NotificationTargetType.all,
                              label: Text(l.adminNotifyTargetAll),
                              icon: const Icon(Icons.groups)),
                          ButtonSegment(
                              value: NotificationTargetType.trip,
                              label: Text(l.adminTrip),
                              icon: const Icon(Icons.flight)),
                        ],
                        selected: {_target},
                        onSelectionChanged: (s) => setState(() => _target = s.first),
                      ),
                      if (_target == NotificationTargetType.trip) ...[
                        const SizedBox(height: 12),
                        DropdownButtonFormField<String>(
                          initialValue: admin.trips.any((t) => t.id == _tripId) ? _tripId : null,
                          isExpanded: true,
                          decoration: InputDecoration(labelText: l.adminTrip, prefixIcon: const Icon(Icons.flight)),
                          items: [
                            for (final t in admin.trips)
                              DropdownMenuItem(
                                  value: t.id, child: Text('${t.name} • ${cityLabel(context, t.location)}')),
                          ],
                          onChanged: (v) => setState(() => _tripId = v),
                          validator: (v) => v == null ? l.adminNotifyTargetInvalid : null,
                        ),
                      ],
                      const SizedBox(height: 12),
                      TextFormField(
                        controller: _title,
                        decoration: InputDecoration(labelText: l.adminNotifyTitle, prefixIcon: const Icon(Icons.title)),
                        validator: (v) => (v == null || v.trim().isEmpty) ? l.adminNotifyRequired : null,
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        controller: _message,
                        minLines: 3,
                        maxLines: 6,
                        decoration: InputDecoration(labelText: l.adminNotifyMessage, alignLabelWithHint: true),
                        validator: (v) => (v == null || v.trim().isEmpty) ? l.adminNotifyRequired : null,
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton.icon(
                        onPressed: np.isSending ? null : _send,
                        icon: np.isSending
                            ? const SizedBox(
                                width: 18,
                                height: 18,
                                child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                            : const Icon(Icons.send),
                        label: Text(np.isSending ? l.adminSending : l.adminSend),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(l.adminNotifySent,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.text)),
            const SizedBox(height: 8),
            if (np.isLoading && np.history.isEmpty)
              const Padding(padding: EdgeInsets.all(24), child: Center(child: CircularProgressIndicator()))
            else if (np.history.isEmpty)
              EmptyStateWidget(icon: Icons.notifications_none, message: l.adminNotifyEmpty)
            else
              for (final n in np.history)
                Card(
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: AppColors.primaryLight,
                      child: Icon(Icons.notifications, color: AppColors.primary),
                    ),
                    title: Text(n.title, style: const TextStyle(fontWeight: FontWeight.w600)),
                    subtitle: Text('${n.message}\n${formatDateTime(n.createdAt)}'),
                    isThreeLine: true,
                  ),
                ),
          ],
        ),
      ),
    );
  }
}

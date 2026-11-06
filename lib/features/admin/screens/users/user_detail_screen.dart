import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../common/widgets/empty_state_widget.dart';
import '../../../../core/providers/locale_provider.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../auth/models/user_model.dart';
import '../../providers/admin_provider.dart';
import '../../utils/admin_helpers.dart';
import '../../widgets/confirm_dialog.dart';
import '../../widgets/kisiler/user_assignment_card.dart';

/// Kişi Detayı: bilgiler + Mekke/Medine atamaları + düzenle/sil.
class UserDetailScreen extends StatefulWidget {
  const UserDetailScreen({super.key});

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  String _city = 'Mekke';

  @override
  void initState() {
    super.initState();
    ensureAdminLoaded(context);
  }

  Future<void> _delete(UserModel user) async {
    final ok = await showConfirmDialog(
      context,
      title: context.l10n.adminUserDelete,
      message: context.l10n.adminUserDeleteConfirm(user.userName),
    );
    if (!ok || !mounted) return;
    final done = await context.read<AdminProvider>().deleteUser(user.id);
    if (done && mounted) Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final arg = ModalRoute.of(context)?.settings.arguments;
    final p = context.watch<AdminProvider>();
    final argUser = arg is UserModel ? arg : null;
    final user = p.userById(argUser?.id ?? (arg is String ? arg : null)) ?? argUser;

    if (user == null) {
      return Scaffold(
        appBar: AppBar(title: Text(l.adminUserDetail)),
        body: EmptyStateWidget(icon: Icons.person_off, message: l.adminUserNotFound),
      );
    }
    final isManager = user.userType != UserType.misafir;

    return Scaffold(
      appBar: AppBar(
        title: Text(l.adminUserDetail),
        actions: [
          if (p.canManageUser(user)) ...[
            IconButton(
              tooltip: l.commonEdit,
              icon: const Icon(Icons.edit),
              onPressed: () => Navigator.pushNamed(context, '/admin/users/create', arguments: user),
            ),
            IconButton(
              tooltip: l.commonDelete,
              icon: const Icon(Icons.delete_outline),
              onPressed: p.isSaving ? null : () => _delete(user),
            ),
          ],
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 34,
                    backgroundColor: AppColors.primaryLight,
                    child: Icon(isManager ? Icons.badge : Icons.person, size: 36, color: AppColors.primary),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    user.userName.isEmpty ? l.adminUnnamedGuest : user.userName,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(userTypeLabel(context, user.userType), style: const TextStyle(color: AppColors.textMuted)),
                  const Divider(height: 24),
                  _info(
                    Icons.badge_outlined,
                    l.adminTc,
                    user.userTc.isEmpty ? l.adminTcUnspecified : user.userTc,
                    ltr: true,
                  ),
                  _info(Icons.phone, l.adminPhone, user.userTel.isEmpty ? '-' : user.userTel, ltr: true),
                  _info(Icons.wc, l.adminGender, user.cinsiyet == null ? '-' : genderLabel(context, user.cinsiyet!)),
                  _info(Icons.cake, l.adminBirthDate, user.dogumTarihi ?? '-'),
                  _info(
                    Icons.flight,
                    l.commonMecca,
                    _summary(p, user.mekkeSeferiId, user.mekkeOtelId, user.mekkeOdaId),
                  ),
                  _info(
                    Icons.flight,
                    l.commonMedina,
                    _summary(p, user.medineSeferiId, user.medineOtelId, user.medineOdaId),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          SegmentedButton<String>(
            segments: [
              ButtonSegment(value: 'Mekke', label: Text(l.commonMecca)),
              ButtonSegment(value: 'Medine', label: Text(l.commonMedina)),
            ],
            selected: {_city},
            onSelectionChanged: (s) => setState(() => _city = s.first),
          ),
          const SizedBox(height: 12),
          UserAssignmentCard(key: ValueKey('${user.id}-$_city'), user: user, city: _city),
        ],
      ),
    );
  }

  String _summary(AdminProvider p, String? tripId, String? hotelId, String? roomId) {
    final l = context.l10n;
    final parts = [
      p.tripById(tripId)?.name,
      p.hotelById(hotelId)?.name,
      if (p.roomById(roomId) != null) l.adminRoomNumber(p.roomById(roomId)!.roomNumber),
    ].whereType<String>().toList();
    return parts.isEmpty ? l.adminNotAssigned : parts.join(' • ');
  }

  Widget _info(IconData icon, String label, String value, {bool ltr = false}) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 20, color: AppColors.primary),
        const SizedBox(width: 10),
        SizedBox(
          width: 100,
          child: Text(label, style: const TextStyle(color: AppColors.textMuted)),
        ),
        Expanded(
          // TC ve telefon Arapçada da soldan sağa yazılır; satır başına hizalı kalır.
          child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              value,
              textDirection: ltr ? TextDirection.ltr : null,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    ),
  );
}

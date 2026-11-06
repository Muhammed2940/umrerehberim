import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';

/// Giriş yapan kullanıcı süper admin mi? (Dükkan ve esnaf ekranlarının ikinci savunması;
/// asıl kontrol firestore.rules.)
bool isSuperAdminUser(BuildContext context) => context.read<AppStateProvider>().isSuperAdmin;

/// Yetkisiz kullanıcı bir rotaya ulaştığında gösterilen boş durum.
class NoAccessScreen extends StatelessWidget {
  final String? title;
  const NoAccessScreen({super.key, this.title});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: title == null ? null : Text(title!)),
    body: EmptyStateWidget(icon: Icons.lock_outline, message: context.l10n.rolesNoAccess),
  );
}

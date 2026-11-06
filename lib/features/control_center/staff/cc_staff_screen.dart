import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../common/services/auth_account_service.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../admin/widgets/confirm_dialog.dart';
import '../../auth/models/user_model.dart';
import '../audit/audit_labels.dart';
import '../shared/cc_widgets.dart';
import 'staff_service.dart';

/// Yetkili personel (RBAC): süper admin, destek, muhasebe hesapları + yetki matrisi.
/// Yalnız süper admin açar; destek/muhasebe hesabı ekler, rolünü değiştirir, siler.
class CcStaffScreen extends StatefulWidget {
  const CcStaffScreen({super.key});

  @override
  State<CcStaffScreen> createState() => _CcStaffScreenState();
}

enum _Perm { full, read, none }

class _CcStaffScreenState extends State<CcStaffScreen> {
  Future<List<UserModel>>? _future;
  final Set<String> _busy = {};

  @override
  void initState() {
    super.initState();
    _future = StaffService.load();
  }

  Future<void> _reload() async {
    final f = StaffService.load();
    setState(() => _future = f);
    try {
      await f;
    } catch (_) {}
  }

  UserModel? get _me => context.read<AppStateProvider>().currentUser;

  Future<void> _create() async {
    final created = await showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => _StaffForm(actor: _me!),
    );
    if (created == true && mounted) await _reload();
  }

  Future<void> _changeRole(UserModel u, String role) async {
    final me = _me;
    if (me == null || role == u.userType) return;
    setState(() => _busy.add(u.id));
    try {
      await StaffService.changeRole(actor: me, target: u, role: role);
      GlobalSnackbar.showSuccess(l10n.ccStaffRoleChanged);
      await _reload();
    } catch (e) {
      debugPrint('CcStaff changeRole: $e');
      GlobalSnackbar.showError(l10n.ccStaffActionFailed);
    } finally {
      if (mounted) setState(() => _busy.remove(u.id));
    }
  }

  Future<void> _delete(UserModel u) async {
    final me = _me;
    if (me == null) return;
    final t = context.l10n;
    final ok = await showConfirmDialog(
      context,
      title: t.ccStaffDelete,
      message: t.ccStaffDeleteConfirm(u.userName),
    );
    if (!ok || !mounted) return;
    setState(() => _busy.add(u.id));
    try {
      await StaffService.delete(actor: me, target: u);
      GlobalSnackbar.showSuccess(l10n.ccStaffDeleted);
      await _reload();
    } catch (e) {
      debugPrint('CcStaff delete: $e');
      GlobalSnackbar.showError(l10n.ccStaffActionFailed);
    } finally {
      if (mounted) setState(() => _busy.remove(u.id));
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final me = context.watch<AppStateProvider>().currentUser;
    if (!(me?.isSuperAdmin ?? false)) {
      return CcPage(title: t.ccStaffTitle, body: [CcEmpty(icon: Icons.lock_rounded, message: t.rolesNoAccess)]);
    }
    return CcPage(
      title: t.ccStaffTitle,
      subtitle: t.ccStaffSubtitle,
      onRefresh: _reload,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _create,
        backgroundColor: CcColors.mid,
        foregroundColor: Colors.white,
        icon: const Icon(Icons.person_add_alt_1_rounded),
        label: Text(t.ccStaffAdd),
      ),
      body: [
        FutureBuilder<List<UserModel>>(
          future: _future,
          builder: (context, snap) => CcAsync<List<UserModel>>(
            snapshot: snap,
            errorText: t.ccLoadFailed,
            builder: (list) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CcSection(
                  title: t.ccSectionOverview,
                  child: CcKpiGrid(children: [
                    for (final r in StaffService.staffTypes)
                      CcKpiTile(
                        icon: _roleIcon(r),
                        value: CcFmt.num0(list.where((u) => u.userType == r).length),
                        label: ccRoleLabel(context, r),
                        color: ccRoleColor(r),
                      ),
                  ]),
                ),
                CcSection(
                  title: t.ccStaffList,
                  trailing: CcBadge(text: t.ccStaffCount(list.length)),
                  child: list.isEmpty
                      ? CcPanel(child: CcEmpty(icon: Icons.groups_rounded, message: t.ccStaffEmpty))
                      : CcPanel(
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                          child: Column(
                            children: [
                              for (var i = 0; i < list.length; i++) ...[
                                if (i > 0) const Divider(height: 1, color: AppColors.divider),
                                _staffRow(list[i], me!),
                              ],
                            ],
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
        CcSection(title: t.ccStaffMatrix, child: _matrix()),
      ],
    );
  }

  static IconData _roleIcon(String role) {
    switch (role) {
      case UserType.superAdmin:
        return Icons.workspace_premium_rounded;
      case UserType.destek:
        return Icons.support_agent_rounded;
      case UserType.muhasebe:
        return Icons.calculate_rounded;
    }
    return Icons.badge_rounded;
  }

  Widget _staffRow(UserModel u, UserModel me) {
    final t = context.l10n;
    final color = ccRoleColor(u.userType);
    final isMe = u.id == me.id;
    final editable = StaffService.editableTypes.contains(u.userType) && !isMe;
    final busy = _busy.contains(u.id);
    final initials = u.userName.trim().isEmpty
        ? '?'
        : u.userName.trim().split(RegExp(r'\s+')).take(2).map((s) => s.characters.first.toUpperCase()).join();
    final tc = u.userTc.length == 11 ? '${u.userTc.substring(0, 3)}•••••${u.userTc.substring(8)}' : u.userTc;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 21,
            backgroundColor: color.withValues(alpha: 0.15),
            child: Text(initials, style: TextStyle(color: color, fontWeight: FontWeight.w800)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(u.userName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.ink)),
                    ),
                    if (isMe) ...[const SizedBox(width: 6), CcBadge(text: t.ccStaffYou, color: CcColors.sage)],
                  ],
                ),
                const SizedBox(height: 2),
                Text([tc, u.userTel].where((s) => s.isNotEmpty).join(' • '),
                    style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
              ],
            ),
          ),
          CcBadge(text: ccRoleLabel(context, u.userType), color: color, icon: _roleIcon(u.userType)),
          if (busy)
            const Padding(
              padding: EdgeInsets.all(12),
              child: SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2)),
            )
          else if (editable)
            PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert_rounded, color: AppColors.textMuted),
              onSelected: (v) => v == 'delete' ? _delete(u) : _changeRole(u, v),
              itemBuilder: (_) => [
                for (final r in StaffService.editableTypes)
                  if (r != u.userType)
                    PopupMenuItem(
                      value: r,
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(Icons.swap_horiz_rounded, color: ccRoleColor(r)),
                        title: Text('${t.ccStaffChangeRole}: ${ccRoleLabel(context, r)}'),
                      ),
                    ),
                PopupMenuItem(
                  value: 'delete',
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(Icons.delete_outline_rounded, color: AppColors.error),
                    title: Text(t.ccStaffDelete),
                  ),
                ),
              ],
            )
          else
            const SizedBox(width: 48),
        ],
      ),
    );
  }

  Widget _matrix() {
    final t = context.l10n;
    // Satır: yetki → [süper admin, destek, muhasebe]
    final rows = <(String, List<_Perm>)>[
      (t.ccPermAgencies, [_Perm.full, _Perm.read, _Perm.none]),
      (t.ccPermAgencyEdit, [_Perm.full, _Perm.none, _Perm.none]),
      (t.ccPermShops, [_Perm.full, _Perm.none, _Perm.none]),
      (t.ccPermReports, [_Perm.full, _Perm.none, _Perm.read]),
      (t.ccPermFinance, [_Perm.full, _Perm.none, _Perm.full]),
      (t.ccPermLoyalty, [_Perm.full, _Perm.none, _Perm.read]),
      (t.ccPermCoupons, [_Perm.full, _Perm.none, _Perm.read]),
      (t.ccPermMessages, [_Perm.full, _Perm.full, _Perm.none]),
      (t.ccPermRisk, [_Perm.full, _Perm.full, _Perm.none]),
      (t.ccPermAudit, [_Perm.read, _Perm.none, _Perm.none]),
      (t.ccPermStaff, [_Perm.full, _Perm.none, _Perm.none]),
    ];
    const roles = StaffService.staffTypes;
    return CcPanel(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Rol açıklamaları
          for (final r in roles)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  Icon(_roleIcon(r), size: 18, color: ccRoleColor(r)),
                  const SizedBox(width: 8),
                  Text(ccRoleLabel(context, r), style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.ink)),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      r == UserType.superAdmin
                          ? t.ccRoleSuperDesc
                          : r == UserType.destek
                              ? t.ccRoleSupportDesc
                              : t.ccRoleFinanceDesc,
                      style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                    ),
                  ),
                ],
              ),
            ),
          const Divider(height: 20, color: AppColors.divider),
          Row(
            children: [
              const Expanded(flex: 5, child: SizedBox.shrink()),
              for (final r in roles)
                Expanded(
                  flex: 2,
                  child: Center(child: Icon(_roleIcon(r), size: 20, color: ccRoleColor(r))),
                ),
            ],
          ),
          const SizedBox(height: 6),
          for (var i = 0; i < rows.length; i++)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
              decoration: BoxDecoration(
                color: i.isEven ? CcColors.bg : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Text(rows[i].$1, style: const TextStyle(fontSize: 13, color: AppColors.text)),
                  ),
                  for (final p in rows[i].$2) Expanded(flex: 2, child: Center(child: _permIcon(p))),
                ],
              ),
            ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 14,
            runSpacing: 6,
            children: [
              _legend(_Perm.full, t.ccPermFull),
              _legend(_Perm.read, t.ccPermRead),
              _legend(_Perm.none, t.ccPermNone),
            ],
          ),
        ],
      ),
    );
  }

  Widget _permIcon(_Perm p) {
    switch (p) {
      case _Perm.full:
        return const Icon(Icons.check_circle_rounded, color: CcColors.ok, size: 20);
      case _Perm.read:
        return const Icon(Icons.visibility_rounded, color: CcColors.info, size: 19);
      case _Perm.none:
        return Icon(Icons.remove_circle_outline_rounded, color: AppColors.textMuted.withValues(alpha: 0.5), size: 18);
    }
  }

  Widget _legend(_Perm p, String label) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _permIcon(p),
          const SizedBox(width: 4),
          Text(label, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
        ],
      );
}

/// Personel ekleme formu (alt sayfa).
class _StaffForm extends StatefulWidget {
  final UserModel actor;
  const _StaffForm({required this.actor});

  @override
  State<_StaffForm> createState() => _StaffFormState();
}

class _StaffFormState extends State<_StaffForm> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _tc = TextEditingController();
  final _tel = TextEditingController();
  String _role = UserType.destek;
  bool _saving = false;

  @override
  void dispose() {
    _name.dispose();
    _tc.dispose();
    _tel.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    FocusScope.of(context).unfocus();
    if (!_formKey.currentState!.validate()) return;
    setState(() => _saving = true);
    try {
      await StaffService.create(
        actor: widget.actor,
        name: _name.text.trim(),
        tc: _tc.text.trim(),
        phone: _tel.text.trim(),
        role: _role,
      );
      GlobalSnackbar.showSuccess(l10n.ccStaffCreated);
      if (mounted) Navigator.pop(context, true);
    } on AccountExistsException {
      GlobalSnackbar.showError(l10n.ccStaffTcExists);
    } on FirebaseAuthException catch (e) {
      debugPrint('CcStaff create auth: ${e.code}');
      GlobalSnackbar.showError('${l10n.ccStaffCreateFailed} (${e.code})');
    } catch (e) {
      debugPrint('CcStaff create: $e');
      GlobalSnackbar.showError(l10n.ccStaffCreateFailed);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  InputDecoration _dec(String label, IconData icon) => InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        filled: true,
        fillColor: CcColors.bg,
        counterText: '',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide.none),
      );

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
        child: SafeArea(
          top: false,
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Container(
                      width: 40,
                      height: 4,
                      decoration: BoxDecoration(color: AppColors.divider, borderRadius: BorderRadius.circular(2)),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(t.ccStaffAdd,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: CcColors.ink)),
                  const SizedBox(height: 4),
                  Text(t.ccStaffLoginHint, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _name,
                    textCapitalization: TextCapitalization.words,
                    decoration: _dec(t.ccStaffName, Icons.person_rounded),
                    validator: (v) => (v ?? '').trim().isEmpty ? t.ccStaffNameMissing : null,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _tc,
                    keyboardType: TextInputType.number,
                    maxLength: 11,
                    textDirection: TextDirection.ltr,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: _dec(t.ccStaffTc, Icons.badge_rounded),
                    validator: (v) => (v ?? '').trim().length != 11 ? t.ccStaffTcInvalid : null,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _tel,
                    keyboardType: TextInputType.phone,
                    textDirection: TextDirection.ltr,
                    inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9+ ]'))],
                    decoration: _dec(t.ccStaffPhone, Icons.phone_rounded),
                  ),
                  const SizedBox(height: 16),
                  Text(t.ccStaffRole, style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.ink)),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      for (final r in StaffService.editableTypes) ...[
                        Expanded(child: _roleCard(r)),
                        if (r != StaffService.editableTypes.last) const SizedBox(width: 10),
                      ],
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CcColors.mid,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      ),
                      onPressed: _saving ? null : _save,
                      icon: _saving
                          ? const SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                            )
                          : const Icon(Icons.check_rounded),
                      label: Text(t.ccStaffCreate),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _roleCard(String r) {
    final t = context.l10n;
    final selected = _role == r;
    final color = ccRoleColor(r);
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: () => setState(() => _role = r),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: selected ? color.withValues(alpha: 0.10) : Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: selected ? color : AppColors.divider, width: selected ? 2 : 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(r == UserType.destek ? Icons.support_agent_rounded : Icons.calculate_rounded, color: color),
                const Spacer(),
                if (selected) Icon(Icons.check_circle_rounded, color: color, size: 18),
              ],
            ),
            const SizedBox(height: 6),
            Text(ccRoleLabel(context, r), style: const TextStyle(fontWeight: FontWeight.w800, color: CcColors.ink)),
            const SizedBox(height: 2),
            Text(r == UserType.destek ? t.ccRoleSupportDesc : t.ccRoleFinanceDesc,
                maxLines: 3, style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
          ],
        ),
      ),
    );
  }
}

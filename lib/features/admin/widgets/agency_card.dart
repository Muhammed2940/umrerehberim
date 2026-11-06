import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../models/agency_model.dart';
import '../providers/agency_provider.dart';
import 'confirm_dialog.dart';

/// Acente kartı: aktif/pasif rozeti + düzenle / aktif-pasif / sil menüsü
/// (menü yalnız süper admine görünür).
class AgencyCard extends StatelessWidget {
  final AgencyModel agency;
  final VoidCallback? onTap;

  const AgencyCard({super.key, required this.agency, this.onTap});

  Future<void> _onMenu(BuildContext context, String v) async {
    final p = context.read<AgencyProvider>();
    if (v == 'edit') {
      await showAgencyFormDialog(context, agency: agency);
    } else if (v == 'toggle') {
      await p.toggleActive(agency);
    } else if (v == 'delete') {
      final ok = await showConfirmDialog(
        context,
        title: context.l10n.adminAgencyDelete,
        message: context.l10n.adminAgencyDeleteConfirm(agency.name),
      );
      if (ok) await p.deleteAgency(agency.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final active = agency.isActive;
    final isSuper = context.watch<AppStateProvider>().isSuperAdmin;
    return Card(
      child: ListTile(
        onTap: onTap,
        leading: CircleAvatar(
          backgroundColor: AppColors.primaryLight,
          child: Text(
            agency.name.isEmpty ? 'A' : agency.name.characters.first.toUpperCase(),
            style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold),
          ),
        ),
        title: Text(agency.name, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(
          [agency.phone, agency.email].where((s) => s != null && s.isNotEmpty).join(' • ').isEmpty
              ? (agency.description ?? '')
              : [agency.phone, agency.email].where((s) => s != null && s.isNotEmpty).join(' • '),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              decoration: BoxDecoration(
                color: (active ? AppColors.success : AppColors.textMuted).withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                active ? l.adminActive : l.adminInactive,
                style: TextStyle(fontSize: 12, color: active ? AppColors.success : AppColors.textMuted),
              ),
            ),
            if (isSuper)
              PopupMenuButton<String>(
                onSelected: (v) => _onMenu(context, v),
                itemBuilder: (_) => [
                  PopupMenuItem(
                    value: 'edit',
                    child: ListTile(leading: const Icon(Icons.edit), title: Text(l.commonEdit)),
                  ),
                  PopupMenuItem(
                    value: 'toggle',
                    child: ListTile(
                      leading: Icon(active ? Icons.pause_circle : Icons.play_circle),
                      title: Text(active ? l.adminMakeInactive : l.adminMakeActive),
                    ),
                  ),
                  PopupMenuItem(
                    value: 'delete',
                    child: ListTile(
                      leading: const Icon(Icons.delete, color: AppColors.error),
                      title: Text(l.commonDelete),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

/// Acente ekle / düzenle diyaloğu.
Future<void> showAgencyFormDialog(BuildContext context, {AgencyModel? agency}) => showDialog(
  context: context,
  builder: (_) => _AgencyFormDialog(agency: agency),
);

class _AgencyFormDialog extends StatefulWidget {
  final AgencyModel? agency;
  const _AgencyFormDialog({this.agency});

  @override
  State<_AgencyFormDialog> createState() => _AgencyFormDialogState();
}

class _AgencyFormDialogState extends State<_AgencyFormDialog> {
  final _formKey = GlobalKey<FormState>();
  late final _name = TextEditingController(text: widget.agency?.name ?? '');
  late final _desc = TextEditingController(text: widget.agency?.description ?? '');
  late final _phone = TextEditingController(text: widget.agency?.phone ?? '');
  late final _email = TextEditingController(text: widget.agency?.email ?? '');
  late final _address = TextEditingController(text: widget.agency?.address ?? '');
  late bool _active = widget.agency?.isActive ?? true;

  @override
  void dispose() {
    for (final c in [_name, _desc, _phone, _email, _address]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    final p = context.read<AgencyProvider>();
    final a = AgencyModel(
      id: widget.agency?.id ?? '',
      name: _name.text.trim(),
      description: _desc.text.trim(),
      phone: _phone.text.trim(),
      email: _email.text.trim(),
      address: _address.text.trim(),
      isActive: _active,
      createdAt: widget.agency?.createdAt,
    );
    final ok = widget.agency == null ? await p.createAgency(a) : await p.updateAgency(a);
    if (ok && mounted) Navigator.pop(context);
  }

  Widget _field(
    TextEditingController c,
    String label, {
    bool required = false,
    TextInputType? type,
    int lines = 1,
    bool ltr = false,
  }) => Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: TextFormField(
      controller: c,
      keyboardType: type,
      maxLines: lines,
      textDirection: ltr ? TextDirection.ltr : null,
      decoration: InputDecoration(labelText: label),
      validator: required ? (v) => (v == null || v.trim().isEmpty) ? context.l10n.adminAgencyNameMissing : null : null,
    ),
  );

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final saving = context.watch<AgencyProvider>().isSaving;
    final isNew = widget.agency == null;
    return AlertDialog(
      title: Text(isNew ? l.adminAgencyAddTitle : l.adminAgencyEdit),
      content: SizedBox(
        width: 420,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _field(_name, l.adminAgencyNameRequired, required: true),
                _field(_desc, l.adminDescription, lines: 2),
                _field(_phone, l.adminPhone, type: TextInputType.phone, ltr: true),
                _field(_email, l.adminEmail, type: TextInputType.emailAddress, ltr: true),
                _field(_address, l.adminAddress, lines: 2),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(_active ? l.adminActive : l.adminInactive),
                  value: _active,
                  onChanged: (v) => setState(() => _active = v),
                ),
              ],
            ),
          ),
        ),
      ),
      actions: [
        TextButton(onPressed: saving ? null : () => Navigator.pop(context), child: Text(l.commonCancel)),
        ElevatedButton(
          onPressed: saving ? null : _save,
          child: Text(saving ? l.adminSaving : (isNew ? l.adminAdd : l.adminUpdate)),
        ),
      ],
    );
  }
}

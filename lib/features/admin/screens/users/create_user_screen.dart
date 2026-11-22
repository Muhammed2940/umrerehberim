import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../../common/widgets/credentials_sheet.dart';
import '../../../../core/providers/locale_provider.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/global_snackbar.dart';
import '../../../auth/models/user_model.dart';
import '../../providers/admin_provider.dart';
import '../../utils/admin_helpers.dart';
import '../../widgets/date_input_formatter.dart';

/// Kişi oluşturma / düzenleme. Argüman olarak UserModel verilirse düzenleme modu.
class CreateUserScreen extends StatefulWidget {
  const CreateUserScreen({super.key});

  @override
  State<CreateUserScreen> createState() => _CreateUserScreenState();
}

class _CreateUserScreenState extends State<CreateUserScreen> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _tc = TextEditingController();
  final _tel = TextEditingController();
  final _birth = TextEditingController();
  String? _gender;
  String _type = UserType.misafir;
  String? _agencyId;
  UserModel? _editing;
  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    ensureAdminLoaded(context);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_initialized) return;
    _initialized = true;
    final arg = ModalRoute.of(context)?.settings.arguments;
    if (arg is UserModel) {
      _editing = arg;
      _name.text = arg.userName;
      _tc.text = arg.userTc;
      _tel.text = arg.userTel;
      _birth.text = arg.dogumTarihi ?? '';
      _gender = genders.contains(arg.cinsiyet) ? arg.cinsiyet : null;
      _type = arg.userType;
      _agencyId = arg.agencyId;
    } else {
      _agencyId = adminAgencyId(context);
    }
  }

  @override
  void dispose() {
    _name.dispose();
    _tc.dispose();
    _tel.dispose();
    _birth.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    FocusScope.of(context).unfocus();
    if (!_formKey.currentState!.validate()) return;
    final p = context.read<AdminProvider>();
    if (_editing == null && p.isGlobalAdmin && _agencyId == null && !AdminProvider.isAgencyless(_type)) {
      GlobalSnackbar.showError(context.l10n.adminUserAgencyRequired);
      return;
    }
    final birth = _birth.text.trim().isEmpty ? null : _birth.text.trim();
    bool ok;
    if (_editing == null) {
      ok = await p.createUser(
        userName: _name.text.trim(),
        userTc: _tc.text.trim(),
        userTel: _tel.text.trim(),
        userType: _type,
        cinsiyet: _gender,
        dogumTarihi: birth,
        agencyIdOverride: _agencyId,
      );
      // Yeni girişte üretilen Kullanıcı ID + PIN/şifre bir kez gösterilir.
      // Hesap açılıp belge yazılamadıysa da bilgiler (bir kez döndüğü için) hata ile gösterilir.
      final docFailed = p.issuedDocWriteFailed;
      final issued = p.takeIssuedCredentials();
      if (issued != null && mounted) {
        await showCredentialsSheet(context, issued, errorText: docFailed ? context.l10n.authApiDocWriteFailed : null);
      }
    } else {
      ok = await p.updateUserDetails(
        _editing!,
        userName: _name.text.trim(),
        userTel: _tel.text.trim(),
        userTc: _tc.text.trim(),
        userType: _type,
        cinsiyet: _gender,
        dogumTarihi: birth,
      );
    }
    if (ok && mounted) Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final p = context.watch<AdminProvider>();
    final isEdit = _editing != null;
    // Acente seçici: genel adminler acente seçmeden kişi açarken. Acente admini için sabit.
    // Destek/muhasebe acentesizdir; seçici gösterilmez.
    final showAgency =
        p.isGlobalAdmin && !isEdit && p.overrideAgencyId == null && !AdminProvider.isStaffType(_type);
    // Seçilebilen türler; düzenlenen kişinin mevcut türü listede yoksa (ör. süper admin) kilitli gösterilir.
    final types = [...p.creatableUserTypes];
    final typeLocked = isEdit && !types.contains(_type);
    if (typeLocked) types.add(_type);
    if (types.isEmpty) types.add(UserType.misafir);
    return Scaffold(
      appBar: AppBar(title: Text(isEdit ? l.adminUserEdit : l.adminUserCreate)),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _name,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(labelText: l.adminUserNameRequired, prefixIcon: const Icon(Icons.person)),
              validator: (v) => (v == null || v.trim().isEmpty) ? l.adminUserNameMissing : null,
            ),
            const SizedBox(height: 12),
            // TC giriş e-postasıdır (<tc>@umrerehberim.app); düzenlemede değiştirilemez.
            TextFormField(
              controller: _tc,
              enabled: !isEdit,
              keyboardType: TextInputType.number,
              maxLength: 11,
              textDirection: TextDirection.ltr,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                labelText: l.adminUserTcRequired,
                prefixIcon: const Icon(Icons.badge),
                counterText: '',
                helperText: isEdit ? l.adminUserTcLocked : null,
              ),
              validator: (v) {
                final s = v?.trim() ?? '';
                if (s.isEmpty) return l.adminUserTcMissing;
                if (s.length != 11) return l.adminUserTcLength;
                return null;
              },
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _tel,
              keyboardType: TextInputType.phone,
              textDirection: TextDirection.ltr,
              inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9+ ]'))],
              decoration: InputDecoration(labelText: l.adminPhone, prefixIcon: const Icon(Icons.phone)),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              initialValue: _gender,
              decoration: InputDecoration(labelText: l.adminGender, prefixIcon: const Icon(Icons.wc)),
              items: [for (final g in genders) DropdownMenuItem(value: g, child: Text(genderLabel(context, g)))],
              onChanged: (v) => setState(() => _gender = v),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _birth,
              keyboardType: TextInputType.number,
              textDirection: TextDirection.ltr,
              inputFormatters: [DateInputFormatter()],
              decoration: InputDecoration(
                labelText: l.adminBirthDate,
                hintText: l.adminDateHint,
                prefixIcon: const Icon(Icons.cake),
              ),
              validator: (v) {
                final s = v?.trim() ?? '';
                if (s.isEmpty) return null;
                return DateInputFormatter.isValid(s) ? null : l.adminDateInvalid;
              },
            ),
            const SizedBox(height: 16),
            Text(l.adminUserType, style: const TextStyle(fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            // Süper adminde 5 tür olabildiğinden segment yerine sarılan çipler.
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final ty in types)
                  ChoiceChip(
                    avatar: Icon(
                      ty == UserType.misafir ? Icons.person : Icons.badge,
                      size: 18,
                      color: ty == (types.contains(_type) ? _type : types.first) ? Colors.white : AppColors.primary,
                    ),
                    label: Text(userTypeLabel(context, ty)),
                    selected: ty == (types.contains(_type) ? _type : types.first),
                    showCheckmark: false,
                    selectedColor: AppColors.primary,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: ty == (types.contains(_type) ? _type : types.first) ? Colors.white : AppColors.text,
                    ),
                    onSelected: typeLocked || types.length < 2 ? null : (_) => setState(() => _type = ty),
                  ),
              ],
            ),
            if (_type == UserType.yonetici || AdminProvider.isStaffType(_type)) ...[
              const SizedBox(height: 4),
              Text(
                _type == UserType.destek
                    ? l.ccRoleSupportDesc
                    : _type == UserType.muhasebe
                        ? l.ccRoleFinanceDesc
                        : l.rolesManagerDesc,
                style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
              ),
            ],
            if (showAgency) ...[
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                initialValue: _agencyId,
                decoration: InputDecoration(labelText: l.adminAgencyRequired, prefixIcon: const Icon(Icons.business)),
                items: [for (final a in p.agencies) DropdownMenuItem(value: a.id, child: Text(a.name))],
                onChanged: (v) => setState(() => _agencyId = v),
                validator: (v) => v == null && !AdminProvider.isAgencyless(_type) ? l.adminUserAgencyRequired : null,
              ),
            ],
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: p.isSaving ? null : _save,
              icon: p.isSaving
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                    )
                  : const Icon(Icons.save),
              label: Text(p.isSaving ? l.adminSaving : (isEdit ? l.adminUpdate : l.commonSave)),
            ),
          ],
        ),
      ),
    );
  }
}

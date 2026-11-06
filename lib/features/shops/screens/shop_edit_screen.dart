import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../admin/providers/admin_provider.dart';
import '../../admin/providers/esnaf_account_service.dart';
import '../../admin/widgets/esnaf_account_dialogs.dart';
import '../../admin/widgets/no_access_screen.dart';
import '../../../common/services/auth_account_service.dart';
import '../models/shop_model.dart';
import '../providers/logo_encoder.dart';
import '../providers/shop_service.dart';
import '../widgets/location_picker.dart';
import '../widgets/shop_widgets.dart';
import 'qr_scanner_screen.dart';

/// Yönetici: dükkan ekle/düzenle (`/admin/shops/edit`, argüman: ShopModel? ).
/// Kaydedince `true` ile kapanır.
class ShopEditScreen extends StatefulWidget {
  const ShopEditScreen({super.key});

  @override
  State<ShopEditScreen> createState() => _ShopEditScreenState();
}

class _ShopEditScreenState extends State<ShopEditScreen> {
  final _form = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _description = TextEditingController();
  final _discount = TextEditingController();
  final _commission = TextEditingController();
  final _discountNote = TextEditingController();
  final _phone = TextEditingController();
  final _whatsapp = TextEditingController();
  final _hours = TextEditingController();
  final _address = TextEditingController();
  final _lat = TextEditingController();
  final _lng = TextEditingController();
  final _qr = TextEditingController();

  ShopModel? _original;
  bool _initialized = false;
  bool _saving = false;

  String _category = ShopModel.categories.first;
  String _city = ShopModel.cities.first;
  bool _active = true;
  String _logo = '';
  Uint8List? _logoBytes;
  String _merchantCode = '';
  String? _ownerUid;
  bool _accountBusy = false;
  bool _accountChanged = false;

  // Süper admin
  bool _forAll = false;
  String? _agencyId;
  List<({String id, String name})> _agencies = [];

  bool get _isSuper => context.read<AppStateProvider>().isSuperAdmin;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_initialized) return;
    _initialized = true;
    final arg = ModalRoute.of(context)?.settings.arguments;
    final s = arg is ShopModel ? arg : null;
    _original = s;
    final adminAgency = context.read<AdminProvider>().agencyId;
    if (s != null) {
      _name.text = s.name;
      _description.text = s.description;
      _discount.text = s.discountPercent.toString();
      _commission.text = s.commissionPercent.toString();
      _ownerUid = s.ownerUid;
      _discountNote.text = s.discountNote;
      _phone.text = s.phone;
      _whatsapp.text = s.whatsapp;
      _hours.text = s.workingHours;
      _address.text = s.address;
      if (s.hasLocation) {
        _lat.text = s.latitude!.toStringAsFixed(6);
        _lng.text = s.longitude!.toStringAsFixed(6);
      }
      _qr.text = s.qrData;
      if (ShopModel.categories.contains(s.category)) _category = s.category;
      if (ShopModel.cities.contains(s.city)) _city = s.city;
      _active = s.isActive;
      _logo = s.logoBase64;
      _logoBytes = s.logoBytes;
      _merchantCode = s.merchantCode;
      _forAll = s.isForAllAgencies;
      _agencyId = s.isForAllAgencies ? adminAgency : s.agencyId;
    } else {
      _merchantCode = ShopModel.generateMerchantCode();
      _agencyId = adminAgency;
    }
    if (_merchantCode.isEmpty) _merchantCode = ShopModel.generateMerchantCode();
    if (_isSuper) _loadAgencies();
  }

  Future<void> _loadAgencies() async {
    try {
      final list = await ShopService.instance.agencies();
      if (!mounted) return;
      setState(() {
        _agencies = list;
        if (_agencyId != null && !list.any((a) => a.id == _agencyId)) _agencyId = null;
      });
    } catch (e) {
      debugPrint('ShopEditScreen._loadAgencies: $e');
    }
  }

  @override
  void dispose() {
    for (final c in [_name, _description, _discount, _commission, _discountNote, _phone, _whatsapp, _hours, _address, _lat, _lng, _qr]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _pickLogo(ImageSource source) async {
    final t = context.l10n;
    try {
      final b64 = await LogoEncoder.pick(source);
      if (b64 == null) return;
      setState(() {
        _logo = b64;
        _logoBytes = base64Decode(b64);
      });
      GlobalSnackbar.showSuccess(t.shopsLogoAdded((b64.length / 1024).round()));
    } on LogoTooLargeException catch (e) {
      GlobalSnackbar.showError(e.toString());
    } catch (e) {
      GlobalSnackbar.showError(t.shopsImagePickFailed('$e'));
    }
  }

  Future<void> _scanQr() async {
    final v = await Navigator.of(context).push<String>(MaterialPageRoute(builder: (_) => const QrScannerScreen()));
    if (v != null && mounted) {
      setState(() => _qr.text = v);
      GlobalSnackbar.showSuccess(context.l10n.shopsQrScanned);
    }
  }

  double? _parse(String v) => double.tryParse(v.trim().replaceAll(',', '.'));

  Future<void> _save() async {
    final t = context.l10n;
    if (!(_form.currentState?.validate() ?? false)) {
      GlobalSnackbar.showError(t.shopsFixFields);
      return;
    }
    final lat = _parse(_lat.text), lng = _parse(_lng.text);
    if ((lat == null) != (lng == null)) {
      GlobalSnackbar.showError(t.shopsLatLngBoth);
      return;
    }
    final String agency;
    if (_isSuper && _forAll) {
      agency = ShopModel.allAgencies;
    } else {
      final a = _agencyId ?? context.read<AppStateProvider>().currentUser?.agencyId;
      if (a == null || a.isEmpty) {
        GlobalSnackbar.showError(t.shopsSelectAgency);
        return;
      }
      agency = a;
    }
    final o = _original;
    final shop = ShopModel(
      id: o?.id ?? '',
      agencyId: agency,
      name: _name.text.trim(),
      category: _category,
      description: _description.text.trim(),
      discountPercent: int.tryParse(_discount.text.trim()) ?? 0,
      discountNote: _discountNote.text.trim(),
      city: _city,
      address: _address.text.trim(),
      latitude: lat,
      longitude: lng,
      phone: _phone.text.trim(),
      whatsapp: _whatsapp.text.trim(),
      workingHours: _hours.text.trim(),
      logoBase64: _logo,
      qrData: _qr.text.trim(),
      isActive: _active,
      sortOrder: o?.sortOrder ?? DateTime.now().millisecondsSinceEpoch ~/ 1000,
      ownerUid: _ownerUid,
      merchantCode: _merchantCode,
      commissionPercent: int.tryParse(_commission.text.trim()) ?? 0,
    );
    setState(() => _saving = true);
    try {
      await ShopService.instance.save(shop);
      GlobalSnackbar.showSuccess(o == null ? t.shopsAdded : t.shopsUpdated);
      if (mounted) Navigator.of(context).pop(true);
    } catch (e) {
      GlobalSnackbar.showError(t.shopsSaveFailed('$e'));
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  InputDecoration _dec(String label, {String? hint, IconData? icon}) => InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: icon == null ? null : Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        isDense: true,
      );

  Widget _gap() => const SizedBox(height: 12);

  @override
  Widget build(BuildContext context) {
    // Dükkan ekleme/düzenleme yalnız süper admin.
    if (!_isSuper) return const NoAccessScreen();
    // Esnaf hesabı değiştiyse liste yenilensin diye geri tuşunda `true` döner.
    return PopScope(
      canPop: !_accountChanged,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) Navigator.of(context).pop(true);
      },
      child: _scaffold(context),
    );
  }

  Widget _scaffold(BuildContext context) {
    final t = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(_original == null ? t.shopsAdd : t.shopsEdit)),
      body: Form(
        key: _form,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 120),
          children: [
            ShopSection(title: t.shopsLogo, icon: Icons.image_outlined, child: _logoSection()),
            ShopSection(
              title: t.shopsDetailsSection,
              icon: Icons.storefront_rounded,
              child: Column(
                children: [
                  TextFormField(
                    controller: _name,
                    textCapitalization: TextCapitalization.words,
                    decoration: _dec(t.shopsNameRequired, icon: Icons.store_outlined),
                    validator: (v) => (v ?? '').trim().isEmpty ? t.shopsNameMissing : null,
                  ),
                  _gap(),
                  DropdownButtonFormField<String>(
                    initialValue: _category,
                    decoration: _dec(t.shopsCategory, icon: Icons.category_outlined),
                    items: [
                      for (final c in ShopModel.categories)
                        DropdownMenuItem(value: c, child: Text(shopCategoryLabel(context, c))),
                    ],
                    onChanged: (v) => setState(() => _category = v ?? _category),
                  ),
                  _gap(),
                  DropdownButtonFormField<String>(
                    initialValue: _city,
                    decoration: _dec(t.shopsCity, icon: Icons.location_city_outlined),
                    items: [
                      for (final c in ShopModel.cities) DropdownMenuItem(value: c, child: Text(shopCityLabel(context, c))),
                    ],
                    onChanged: (v) => setState(() => _city = v ?? _city),
                  ),
                  _gap(),
                  TextFormField(
                    controller: _description,
                    maxLines: 3,
                    minLines: 2,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: _dec(t.shopsDescription, icon: Icons.notes_rounded),
                  ),
                ],
              ),
            ),
            ShopSection(
              title: t.shopsDiscountSection,
              icon: Icons.local_offer_outlined,
              child: Column(
                children: [
                  TextFormField(
                    controller: _discount,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(3)],
                    decoration: _dec(t.shopsDiscountPercentRequired, hint: t.shopsDiscountPercentHint, icon: Icons.percent_rounded),
                    validator: (v) {
                      final n = int.tryParse((v ?? '').trim());
                      if (n == null) return t.shopsDiscountNotNumber;
                      if (n < 0 || n > 100) return t.shopsDiscountRange;
                      return null;
                    },
                  ),
                  _gap(),
                  TextFormField(
                    controller: _discountNote,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: _dec(t.shopsDiscountNote, hint: t.shopsDiscountNoteHint, icon: Icons.info_outline),
                  ),
                  _gap(),
                  TextFormField(
                    controller: _commission,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(2)],
                    decoration: _dec(t.adminEsnafCommission,
                        hint: t.adminEsnafCommissionHint, icon: Icons.account_balance_wallet_outlined),
                    validator: (v) {
                      final s = (v ?? '').trim();
                      if (s.isEmpty) return null; // boş = %0
                      final n = int.tryParse(s);
                      if (n == null || n < 0 || n > 30) return t.adminEsnafCommissionRange;
                      return null;
                    },
                  ),
                ],
              ),
            ),
            ShopSection(
              title: t.shopsContactSection,
              icon: Icons.contact_phone_outlined,
              child: Column(
                children: [
                  TextFormField(
                    controller: _phone,
                    keyboardType: TextInputType.phone,
                    textDirection: TextDirection.ltr,
                    decoration: _dec(t.shopsPhone, hint: '+966 5x xxx xx xx', icon: Icons.phone_outlined),
                  ),
                  _gap(),
                  TextFormField(
                    controller: _whatsapp,
                    keyboardType: TextInputType.phone,
                    textDirection: TextDirection.ltr,
                    decoration: _dec('WhatsApp', hint: t.shopsWhatsappHint, icon: Icons.chat_outlined),
                  ),
                  _gap(),
                  TextFormField(
                    controller: _hours,
                    decoration: _dec(t.shopsWorkingHours, hint: t.shopsWorkingHoursHint, icon: Icons.schedule_rounded),
                  ),
                  _gap(),
                  TextFormField(
                    controller: _address,
                    maxLines: 2,
                    minLines: 1,
                    decoration: _dec(t.shopsAddress, icon: Icons.place_outlined),
                  ),
                ],
              ),
            ),
            ShopSection(
              title: t.shopsLocation,
              icon: Icons.map_outlined,
              child: LocationPicker(latController: _lat, lngController: _lng),
            ),
            ShopSection(title: t.shopsQrSection, icon: Icons.qr_code_2_rounded, child: _qrSection()),
            ShopSection(
              title: t.adminEsnafAccountSection,
              icon: Icons.point_of_sale_rounded,
              child: _accountSection(),
            ),
            ShopSection(title: t.shopsPublishSection, icon: Icons.tune_rounded, child: _publishSection()),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
          child: SizedBox(
            height: 52,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              onPressed: _saving ? null : _save,
              icon: _saving
                  ? const SizedBox(
                      width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                  : const Icon(Icons.save_rounded),
              label: Text(_saving ? t.shopsSaving : t.commonSave),
            ),
          ),
        ),
      ),
    );
  }

  Widget _logoSection() {
    final t = context.l10n;
    return Row(
      children: [
        ShopLogo(name: _name.text.isEmpty ? '?' : _name.text, bytes: _logoBytes, size: 84),
        const SizedBox(width: 14),
        Expanded(
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              OutlinedButton.icon(
                onPressed: () => _pickLogo(ImageSource.gallery),
                icon: const Icon(Icons.photo_library_outlined, size: 18),
                label: Text(t.shopsGallery),
              ),
              OutlinedButton.icon(
                onPressed: () => _pickLogo(ImageSource.camera),
                icon: const Icon(Icons.photo_camera_outlined, size: 18),
                label: Text(t.shopsCamera),
              ),
              if (_logo.isNotEmpty)
                TextButton.icon(
                  style: TextButton.styleFrom(foregroundColor: AppColors.error),
                  onPressed: () => setState(() {
                    _logo = '';
                    _logoBytes = null;
                  }),
                  icon: const Icon(Icons.delete_outline, size: 18),
                  label: Text(t.shopsRemove),
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _qrSection() {
    final t = context.l10n;
    final code = _qr.text.trim();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          t.shopsQrExplain,
          style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted, height: 1.35),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: _scanQr,
                icon: const Icon(Icons.qr_code_scanner_rounded),
                label: Text(t.shopsQrScanWithCamera),
              ),
            ),
          ],
        ),
        _gap(),
        TextFormField(
          controller: _qr,
          maxLines: 2,
          minLines: 1,
          textDirection: TextDirection.ltr,
          onChanged: (_) => setState(() {}),
          decoration: _dec(t.shopsQrManual, icon: Icons.edit_outlined).copyWith(
            suffixIcon: code.isEmpty
                ? null
                : IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () => setState(() => _qr.clear()),
                  ),
          ),
        ),
        if (code.isNotEmpty) ...[
          _gap(),
          Center(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.divider),
              ),
              child: QrImageView(data: code, size: 160, backgroundColor: Colors.white),
            ),
          ),
        ],
        _gap(),
        Row(
          children: [
            const Icon(Icons.vpn_key_outlined, size: 18, color: AppColors.textMuted),
            const SizedBox(width: 6),
            Expanded(
              child: Text(t.shopsMerchantCode(_merchantCode),
                  style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
            ),
          ],
        ),
      ],
    );
  }

  // ------------------------------------------------------------ esnaf hesabı
  ShopModel? get _savedShop {
    final o = _original;
    if (o == null || o.id.isEmpty) return null;
    // Hesap işlemleri kayıtlı dükkan verisiyle yapılır (acente, ad, telefon).
    return ShopModel(
      id: o.id,
      agencyId: o.agencyId,
      name: o.name,
      phone: o.phone,
      ownerUid: _ownerUid,
      merchantCode: _merchantCode,
    );
  }

  String _errorText(Object e) {
    final t = context.l10n;
    if (e is AccountExistsException) return t.adminEsnafCodeExists;
    return t.adminEsnafFailed('$e');
  }

  Future<void> _createAccount() async {
    final shop = _savedShop;
    if (shop == null) return;
    final t = context.l10n;
    final pin = await showEsnafPinDialog(context, title: t.adminEsnafCreate);
    if (pin == null || !mounted) return;
    setState(() => _accountBusy = true);
    try {
      final creds = await EsnafAccountService.instance.create(shop, pin: pin);
      if (!mounted) return;
      setState(() {
        _ownerUid = creds.uid;
        _merchantCode = creds.code;
        _accountChanged = true;
      });
      GlobalSnackbar.showSuccess(t.adminEsnafCreated);
      await showEsnafCredentialsDialog(context, creds: creds, shopName: shop.name, whatsapp: _whatsapp.text);
    } catch (e) {
      debugPrint('esnaf create: $e');
      GlobalSnackbar.showError(_errorText(e));
    } finally {
      if (mounted) setState(() => _accountBusy = false);
    }
  }

  Future<bool> _confirm(String title, String message, String action) async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(ctx.l10n.commonCancel)),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: TextButton.styleFrom(foregroundColor: AppColors.error),
            child: Text(action),
          ),
        ],
      ),
    );
    return ok == true;
  }

  Future<void> _resetPin() async {
    final shop = _savedShop;
    if (shop == null) return;
    final t = context.l10n;
    if (!await _confirm(t.adminEsnafResetPin, t.adminEsnafResetConfirm, t.adminEsnafResetPin)) return;
    if (!mounted) return;
    final pin = await showEsnafPinDialog(context, title: t.adminEsnafResetPin);
    if (pin == null || !mounted) return;
    setState(() => _accountBusy = true);
    try {
      final creds = await EsnafAccountService.instance.resetPin(shop, pin: pin);
      if (!mounted) return;
      setState(() {
        _ownerUid = creds.uid;
        _merchantCode = creds.code;
        _accountChanged = true;
      });
      await showEsnafCredentialsDialog(context, creds: creds, shopName: shop.name, whatsapp: _whatsapp.text);
    } catch (e) {
      debugPrint('esnaf resetPin: $e');
      GlobalSnackbar.showError(_errorText(e));
    } finally {
      if (mounted) setState(() => _accountBusy = false);
    }
  }

  Future<void> _closeAccount() async {
    final shop = _savedShop;
    if (shop == null) return;
    final t = context.l10n;
    if (!await _confirm(t.adminEsnafClose, t.adminEsnafCloseConfirm(shop.name), t.adminEsnafClose)) return;
    if (!mounted) return;
    setState(() => _accountBusy = true);
    try {
      await EsnafAccountService.instance.close(shop);
      if (!mounted) return;
      setState(() {
        _ownerUid = null;
        _accountChanged = true;
      });
      GlobalSnackbar.showSuccess(t.adminEsnafClosed);
    } catch (e) {
      debugPrint('esnaf close: $e');
      GlobalSnackbar.showError(_errorText(e));
    } finally {
      if (mounted) setState(() => _accountBusy = false);
    }
  }

  Widget _accountSection() {
    final t = context.l10n;
    const muted = TextStyle(fontSize: 12.5, color: AppColors.textMuted, height: 1.35);
    if (_savedShop == null) {
      return Row(
        children: [
          const Icon(Icons.info_outline, color: AppColors.textMuted, size: 18),
          const SizedBox(width: 8),
          Expanded(child: Text(t.adminEsnafSaveFirst, style: muted)),
        ],
      );
    }
    final busy = _accountBusy
        ? const Padding(
            padding: EdgeInsets.only(top: 8),
            child: LinearProgressIndicator(),
          )
        : const SizedBox.shrink();
    final has = _ownerUid != null && _ownerUid!.isNotEmpty;
    if (!has) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(t.adminEsnafAccountNone, style: muted),
          const SizedBox(height: 10),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary, foregroundColor: Colors.white),
            onPressed: _accountBusy ? null : _createAccount,
            icon: const Icon(Icons.person_add_alt_1_rounded),
            label: Text(t.adminEsnafCreate),
          ),
          busy,
        ],
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const Icon(Icons.verified_user_rounded, color: AppColors.success, size: 20),
            const SizedBox(width: 8),
            Expanded(
              child: Text(t.adminEsnafAccountActive,
                  style: const TextStyle(fontWeight: FontWeight.w700, color: AppColors.success)),
            ),
          ],
        ),
        const SizedBox(height: 6),
        SelectableText(
          t.adminEsnafCodeLabel(_merchantCode.toUpperCase()),
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, letterSpacing: 1.5, color: AppColors.text),
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            OutlinedButton.icon(
              onPressed: _accountBusy ? null : _resetPin,
              icon: const Icon(Icons.lock_reset_rounded, size: 18),
              label: Text(t.adminEsnafResetPin),
            ),
            TextButton.icon(
              style: TextButton.styleFrom(foregroundColor: AppColors.error),
              onPressed: _accountBusy ? null : _closeAccount,
              icon: const Icon(Icons.person_off_outlined, size: 18),
              label: Text(t.adminEsnafClose),
            ),
          ],
        ),
        busy,
      ],
    );
  }

  Widget _publishSection() {
    final t = context.l10n;
    return Column(
      children: [
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          value: _active,
          activeThumbColor: AppColors.primary,
          title: Text(t.shopsActive),
          subtitle: Text(t.shopsActiveSub),
          onChanged: (v) => setState(() => _active = v),
        ),
        if (_isSuper) ...[
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            value: _forAll,
            activeThumbColor: AppColors.primary,
            title: Text(t.shopsForAllAgencies),
            subtitle: Text(t.shopsForAllAgenciesSub),
            onChanged: (v) => setState(() => _forAll = v),
          ),
          if (!_forAll)
            DropdownButtonFormField<String>(
              key: ValueKey('agency_${_agencies.length}'),
              initialValue: _agencyId,
              decoration: _dec(t.shopsAgency, icon: Icons.business_outlined),
              items: [for (final a in _agencies) DropdownMenuItem(value: a.id, child: Text(a.name))],
              onChanged: (v) => setState(() => _agencyId = v),
            ),
        ],
      ],
    );
  }
}

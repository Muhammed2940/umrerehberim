import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../shops/models/shop_model.dart';
import '../../shops/providers/logo_encoder.dart';
import '../widgets/esnaf_widgets.dart';

/// "Dükkan bilgilerim": esnafın düzenleyebildiği vitrin alanları.
/// Kurallar yalnız `description`, `working_hours`, `phone`, `whatsapp`, `logo_base64`,
/// `updated_at` alanlarına izin verir; ad, indirim ve komisyon yalnız okunur.
class MerchantShopInfoScreen extends StatefulWidget {
  final ShopModel shop;
  const MerchantShopInfoScreen({super.key, required this.shop});

  @override
  State<MerchantShopInfoScreen> createState() => _MerchantShopInfoScreenState();
}

class _MerchantShopInfoScreenState extends State<MerchantShopInfoScreen> {
  late final _desc = TextEditingController(text: widget.shop.description);
  late final _hours = TextEditingController(text: widget.shop.workingHours);
  late final _phone = TextEditingController(text: widget.shop.phone);
  late final _whatsapp = TextEditingController(text: widget.shop.whatsapp);
  late String _logo = widget.shop.logoBase64;
  bool _saving = false;

  @override
  void dispose() {
    _desc.dispose();
    _hours.dispose();
    _phone.dispose();
    _whatsapp.dispose();
    super.dispose();
  }

  Future<void> _pickLogo() async {
    final source = await showModalBottomSheet<ImageSource>(
      context: context,
      showDragHandle: true,
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library_outlined, color: AppColors.primary),
              title: Text(ctx.l10n.esnafLogoGallery),
              onTap: () => Navigator.pop(ctx, ImageSource.gallery),
            ),
            ListTile(
              leading: const Icon(Icons.photo_camera_outlined, color: AppColors.primary),
              title: Text(ctx.l10n.esnafLogoCamera),
              onTap: () => Navigator.pop(ctx, ImageSource.camera),
            ),
            if (_logo.isNotEmpty)
              ListTile(
                leading: const Icon(Icons.delete_outline_rounded, color: AppColors.error),
                title: Text(ctx.l10n.esnafLogoRemove),
                onTap: () {
                  Navigator.pop(ctx);
                  setState(() => _logo = '');
                },
              ),
          ],
        ),
      ),
    );
    if (source == null) return;
    try {
      final b64 = await LogoEncoder.pick(source);
      if (b64 != null && mounted) setState(() => _logo = b64);
    } catch (e) {
      GlobalSnackbar.showError(e.toString());
    }
  }

  Future<void> _save() async {
    setState(() => _saving = true);
    final l = context.l10n;
    try {
      await FirebaseFirestore.instance.collection('shops').doc(widget.shop.id).update({
        'description': _desc.text.trim(),
        'working_hours': _hours.text.trim(),
        'phone': _phone.text.trim(),
        'whatsapp': _whatsapp.text.trim(),
        'logo_base64': _logo,
        'updated_at': FieldValue.serverTimestamp(),
      }).timeout(const Duration(seconds: 20));
      GlobalSnackbar.showSuccess(l.esnafShopSaved);
      if (mounted) Navigator.pop(context);
    } catch (e) {
      debugPrint('Dükkan kaydedilemedi: $e');
      GlobalSnackbar.showError(l.esnafErrSave);
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final shop = widget.shop;
    final preview = ShopModel(id: shop.id, agencyId: shop.agencyId, name: shop.name, logoBase64: _logo);
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: Text(l.esnafMenuShopInfo)),
      body: ListView(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 20, 16, 32),
        children: [
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                GestureDetector(onTap: _pickLogo, child: ShopLogo(shop: preview, size: 104)),
                PositionedDirectional(
                  bottom: 0,
                  end: 0,
                  child: Material(
                    color: AppColors.primary,
                    shape: const CircleBorder(),
                    child: IconButton(
                      icon: const Icon(Icons.edit_rounded, color: AppColors.surface, size: 18),
                      onPressed: _pickLogo,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Text(
            shop.name,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.text),
          ),
          const SizedBox(height: 8),
          Center(child: DiscountBadge(percent: shop.discountPercent)),
          const SizedBox(height: 6),
          Text(
            l.esnafShopReadOnlyNote,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
          ),
          const SizedBox(height: 20),
          _field(_desc, l.esnafShopDescription, Icons.notes_rounded, maxLines: 4),
          _field(_hours, l.esnafShopHours, Icons.schedule_rounded, hint: '09:00 – 23:00'),
          _field(_phone, l.esnafShopPhone, Icons.phone_outlined, phone: true),
          _field(_whatsapp, l.esnafShopWhatsapp, Icons.chat_outlined, phone: true),
          const SizedBox(height: 8),
          SizedBox(
            height: 52,
            child: FilledButton.icon(
              onPressed: _saving ? null : _save,
              icon: _saving
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2.5, color: AppColors.surface),
                    )
                  : const Icon(Icons.save_outlined),
              label: Text(l.commonSave),
            ),
          ),
        ],
      ),
    );
  }

  Widget _field(TextEditingController c, String label, IconData icon,
      {int maxLines = 1, bool phone = false, String? hint}) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 14),
      child: TextField(
        controller: c,
        maxLines: maxLines,
        maxLength: maxLines > 1 ? 500 : 60,
        keyboardType: phone ? TextInputType.phone : null,
        inputFormatters: phone ? [FilteringTextInputFormatter.allow(RegExp(r'[0-9+ ]'))] : null,
        textDirection: phone ? TextDirection.ltr : null,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          prefixIcon: Icon(icon, color: AppColors.primary),
          counterText: '',
          filled: true,
          fillColor: AppColors.surface,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
        ),
      ),
    );
  }
}

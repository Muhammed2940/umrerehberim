import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../esnaf/models/coupon.dart';
import '../../shops/models/shop_model.dart';
import '../shared/cc_widgets.dart';
import 'coupon_service.dart';

/// Kupon oluşturma / düzenleme (süper admin). Kaydedilince true ile kapanır.
class CouponFormScreen extends StatefulWidget {
  final Coupon? coupon;
  final List<({String id, String name})> agencies;
  final List<ShopModel> shops;

  const CouponFormScreen({super.key, this.coupon, required this.agencies, required this.shops});

  @override
  State<CouponFormScreen> createState() => _CouponFormScreenState();
}

class _CouponFormScreenState extends State<CouponFormScreen> {
  final _form = GlobalKey<FormState>();
  late final TextEditingController _code;
  late final TextEditingController _title;
  late final TextEditingController _desc;
  late final TextEditingController _value;
  late final TextEditingController _minSpend;
  late final TextEditingController _maxDiscount;
  late final TextEditingController _maxUses;
  late String _type;
  late DateTimeRange _range;
  late String _agency;
  late String _shop;
  late bool _active;
  bool _saving = false;

  bool get _isNew => widget.coupon == null;

  static String _n(double v) => v == 0 ? '' : (v == v.roundToDouble() ? v.toStringAsFixed(0) : v.toString());

  @override
  void initState() {
    super.initState();
    final c = widget.coupon;
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    _code = TextEditingController(text: c?.code ?? Coupon.suggestCode());
    _title = TextEditingController(text: c?.title ?? '');
    _desc = TextEditingController(text: c?.description ?? '');
    _value = TextEditingController(text: c == null ? '10' : _n(c.value));
    _minSpend = TextEditingController(text: c == null ? '' : _n(c.minSpend));
    _maxDiscount = TextEditingController(text: c == null ? '' : _n(c.maxDiscount));
    _maxUses = TextEditingController(text: c == null || c.maxUses == 0 ? '' : '${c.maxUses}');
    _type = c?.type ?? Coupon.typePercent;
    _range = DateTimeRange(
      start: c?.validFrom ?? today,
      end: c?.validUntil ?? today.add(const Duration(days: 30)),
    );
    _agency = c?.agencyId ?? Coupon.all;
    _shop = c?.shopId ?? Coupon.all;
    _active = c?.active ?? true;
  }

  @override
  void dispose() {
    for (final c in [_code, _title, _desc, _value, _minSpend, _maxDiscount, _maxUses]) {
      c.dispose();
    }
    super.dispose();
  }

  double _d(TextEditingController c) => double.tryParse(c.text.trim().replaceAll(',', '.')) ?? 0;

  /// Seçili acentenin misafirlerine açık dükkanlar (tüm acentelere açık olanlar dahil).
  List<ShopModel> get _shopsForAgency => widget.shops
      .where((s) => _agency == Coupon.all || s.isForAllAgencies || s.agencyId == _agency)
      .toList();

  Future<void> _pickRange() async {
    final now = DateTime.now();
    final picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(now.year - 1),
      lastDate: DateTime(now.year + 3),
      initialDateRange: _range,
    );
    if (picked != null) setState(() => _range = picked);
  }

  Future<void> _save() async {
    final l = context.l10n;
    if (!_form.currentState!.validate()) return;
    final me = context.read<AppStateProvider>().currentUser;
    if (me == null) return;
    final old = widget.coupon;
    final coupon = Coupon(
      code: _code.text.trim().toUpperCase(),
      title: _title.text.trim(),
      description: _desc.text.trim(),
      type: _type,
      value: _d(_value),
      minSpend: _d(_minSpend),
      maxDiscount: _type == Coupon.typePercent ? _d(_maxDiscount) : 0,
      validFrom: DateTime(_range.start.year, _range.start.month, _range.start.day),
      validUntil: DateTime(_range.end.year, _range.end.month, _range.end.day, 23, 59, 59),
      agencyId: _agency,
      shopId: _shop,
      maxUses: int.tryParse(_maxUses.text.trim()) ?? 0,
      usedCount: old?.usedCount ?? 0,
      active: _active,
    );
    setState(() => _saving = true);
    try {
      await CouponService.instance.save(actor: me, coupon: coupon, isNew: _isNew);
      GlobalSnackbar.showSuccess(_isNew ? l.ccCpnCreatedOk(coupon.code) : l.ccCpnUpdatedOk(coupon.code));
      if (mounted) Navigator.pop(context, true);
    } on CouponCodeTakenException {
      GlobalSnackbar.showError(l.ccCpnCodeTaken);
      if (mounted) setState(() => _saving = false);
    } catch (e) {
      debugPrint('Kupon kaydedilemedi: $e');
      GlobalSnackbar.showError(l.ccCpnSaveError);
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final shops = _shopsForAgency;
    // Listede olmayan (silinmiş) acente/dükkan seçiliyse değer korunur ve kimliğiyle gösterilir.
    final shopIds = shops.map((s) => s.id).toSet();
    final agencyIds = widget.agencies.map((a) => a.id).toSet();

    InputDecoration deco(String label, {String? hint, String? suffix, IconData? icon, String? helper}) => InputDecoration(
          labelText: label,
          hintText: hint,
          helperText: helper,
          helperMaxLines: 2,
          suffixText: suffix,
          prefixIcon: icon == null ? null : Icon(icon, color: CcColors.mid),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
        );

    final valueNum = _d(_value);
    final preview = Coupon(
      code: _code.text.trim().toUpperCase(),
      title: _title.text.trim(),
      type: _type,
      value: valueNum,
      maxDiscount: _type == Coupon.typePercent ? _d(_maxDiscount) : 0,
      minSpend: _d(_minSpend),
    );

    return Scaffold(
      backgroundColor: CcColors.bg,
      appBar: AppBar(
        title: Text(_isNew ? l.ccCpnNewTitle : l.ccCpnEditTitle),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [CcColors.ink, CcColors.mid]),
          ),
        ),
      ),
      body: Form(
        key: _form,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 120),
          children: [
            _PreviewCard(coupon: preview),
            const SizedBox(height: 16),
            CcPanel(
              title: l.ccCpnSectionBasics,
              child: Column(
                children: [
                  TextFormField(
                    controller: _code,
                    enabled: _isNew,
                    textCapitalization: TextCapitalization.characters,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[A-Za-z0-9]')),
                      LengthLimitingTextInputFormatter(16),
                      _UpperCaseFormatter(),
                    ],
                    style: const TextStyle(fontWeight: FontWeight.w800, letterSpacing: 2),
                    onChanged: (_) => setState(() {}),
                    decoration: deco(
                      l.ccCpnCode,
                      icon: Icons.confirmation_number_outlined,
                      helper: _isNew ? l.ccCpnCodeHelp : l.ccCpnCodeLocked,
                    ).copyWith(
                      suffixIcon: _isNew
                          ? IconButton(
                              tooltip: l.ccCpnCodeSuggest,
                              icon: const Icon(Icons.auto_awesome_rounded, color: CcColors.gold),
                              onPressed: () => setState(() => _code.text = Coupon.suggestCode(
                                  _title.text.trim().isEmpty ? 'UMRE' : _title.text.split(' ').first)),
                            )
                          : null,
                    ),
                    validator: (v) => Coupon.codePattern.hasMatch((v ?? '').trim()) ? null : l.ccCpnCodeInvalid,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _title,
                    maxLength: 60,
                    onChanged: (_) => setState(() {}),
                    decoration: deco(l.ccCpnTitleField, icon: Icons.title_rounded, hint: l.ccCpnTitleHint),
                    validator: (v) => (v ?? '').trim().isEmpty ? l.ccCpnRequired : null,
                  ),
                  const SizedBox(height: 4),
                  TextFormField(
                    controller: _desc,
                    maxLength: 200,
                    minLines: 1,
                    maxLines: 3,
                    decoration: deco(l.ccCpnDescription, icon: Icons.notes_rounded),
                  ),
                ],
              ),
            ),
            CcPanel(
              title: l.ccCpnSectionDiscount,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SegmentedButton<String>(
                    segments: [
                      ButtonSegment(
                          value: Coupon.typePercent, label: Text(l.ccCpnTypePercent), icon: const Icon(Icons.percent_rounded)),
                      ButtonSegment(
                          value: Coupon.typeFixed, label: Text(l.ccCpnTypeFixed), icon: const Icon(Icons.payments_outlined)),
                    ],
                    selected: {_type},
                    onSelectionChanged: (s) => setState(() => _type = s.first),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _value,
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9.,]'))],
                    onChanged: (_) => setState(() {}),
                    decoration: deco(l.ccCpnValue,
                        suffix: _type == Coupon.typePercent ? '%' : 'SAR', icon: Icons.local_offer_outlined),
                    validator: (_) {
                      final v = _d(_value);
                      if (v <= 0) return l.ccCpnValueInvalid;
                      if (_type == Coupon.typePercent && v > 100) return l.ccCpnPercentMax;
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: _minSpend,
                          keyboardType: const TextInputType.numberWithOptions(decimal: true),
                          inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9.,]'))],
                          onChanged: (_) => setState(() {}),
                          decoration: deco(l.ccCpnMinSpend, suffix: 'SAR', helper: l.ccCpnZeroNone),
                        ),
                      ),
                      if (_type == Coupon.typePercent) ...[
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            controller: _maxDiscount,
                            keyboardType: const TextInputType.numberWithOptions(decimal: true),
                            inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9.,]'))],
                            onChanged: (_) => setState(() {}),
                            decoration: deco(l.ccCpnMaxDiscount, suffix: 'SAR', helper: l.ccCpnZeroNoCap),
                          ),
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
            CcPanel(
              title: l.ccCpnSectionScope,
              child: Column(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(14),
                    onTap: _pickRange,
                    child: InputDecorator(
                      decoration: deco(l.ccCpnDates, icon: Icons.date_range_rounded),
                      child: Text('${CcFmt.date(_range.start)}  →  ${CcFmt.date(_range.end)}',
                          style: const TextStyle(fontWeight: FontWeight.w600)),
                    ),
                  ),
                  const SizedBox(height: 12),
                  DropdownButtonFormField<String>(
                    initialValue: _agency,
                    isExpanded: true,
                    decoration: deco(l.ccCpnAgency, icon: Icons.apartment_rounded),
                    items: [
                      DropdownMenuItem(value: Coupon.all, child: Text(l.ccCpnAllAgencies)),
                      for (final a in widget.agencies) DropdownMenuItem(value: a.id, child: Text(a.name)),
                      if (_agency != Coupon.all && !agencyIds.contains(_agency))
                        DropdownMenuItem(value: _agency, child: Text(_agency)),
                    ],
                    onChanged: (v) => setState(() {
                      _agency = v ?? Coupon.all;
                      // Dükkan yeni acenteye açık değilse "tüm dükkanlar"a dön.
                      if (_shop != Coupon.all && !_shopsForAgency.any((s) => s.id == _shop)) _shop = Coupon.all;
                    }),
                  ),
                  const SizedBox(height: 12),
                  DropdownButtonFormField<String>(
                    key: ValueKey('shop_$_agency'),
                    initialValue: _shop,
                    isExpanded: true,
                    decoration: deco(l.ccCpnShop, icon: Icons.storefront_rounded),
                    items: [
                      DropdownMenuItem(value: Coupon.all, child: Text(l.ccCpnAllShops)),
                      for (final s in shops) DropdownMenuItem(value: s.id, child: Text(s.name)),
                      if (_shop != Coupon.all && !shopIds.contains(_shop))
                        DropdownMenuItem(value: _shop, child: Text(_shop)),
                    ],
                    onChanged: (v) => setState(() => _shop = v ?? Coupon.all),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _maxUses,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(6)],
                    decoration: deco(l.ccCpnMaxUses, icon: Icons.people_alt_outlined, helper: l.ccCpnMaxUsesHelp),
                    validator: (v) {
                      final n = int.tryParse((v ?? '').trim()) ?? 0;
                      final used = widget.coupon?.usedCount ?? 0;
                      if (n > 0 && n < used) return l.ccCpnMaxUsesBelowUsed(used);
                      return null;
                    },
                  ),
                  const SizedBox(height: 4),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    value: _active,
                    activeThumbColor: CcColors.mid,
                    onChanged: (v) => setState(() => _active = v),
                    title: Text(l.ccCpnActive, style: const TextStyle(fontWeight: FontWeight.w700)),
                    subtitle: Text(l.ccCpnActiveHelp, style: const TextStyle(fontSize: 12)),
                  ),
                ],
              ),
            ),
            Text(l.ccCpnOncePerGuest,
                textAlign: TextAlign.center, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
          child: SizedBox(
            height: 54,
            child: FilledButton.icon(
              style: FilledButton.styleFrom(
                backgroundColor: CcColors.mid,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              ),
              onPressed: _saving ? null : _save,
              icon: _saving
                  ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2.5, color: Colors.white))
                  : const Icon(Icons.check_rounded),
              label: Text(_isNew ? l.ccCpnCreate : l.ccCpnSave,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
            ),
          ),
        ),
      ),
    );
  }
}

class _UpperCaseFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) =>
      newValue.copyWith(text: newValue.text.toUpperCase());
}

/// Formun üstündeki canlı kupon önizlemesi.
class _PreviewCard extends StatelessWidget {
  final Coupon coupon;
  const _PreviewCard({required this.coupon});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final c = coupon;
    final v = c.value == c.value.roundToDouble() ? c.value.toStringAsFixed(0) : c.value.toStringAsFixed(2);
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [CcColors.ink, CcColors.mid],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [BoxShadow(color: Color(0x33051F20), blurRadius: 16, offset: Offset(0, 6))],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(c.title.isEmpty ? l.ccCpnTitleHint : c.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w800)),
                const SizedBox(height: 6),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    border: Border.all(color: CcColors.gold, width: 1.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(c.code.isEmpty ? '—' : c.code,
                      style: const TextStyle(color: CcColors.gold, fontWeight: FontWeight.w800, letterSpacing: 2)),
                ),
                const SizedBox(height: 8),
                Text(
                  [
                    if (c.isPercent && c.maxDiscount > 0) l.ccCpnUpTo(CcFmt.sar(c.maxDiscount)),
                    if (c.minSpend > 0) l.ccCpnMinShort(CcFmt.sar(c.minSpend)),
                  ].join(' · '),
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Text(c.isPercent ? '%$v' : '$v\nSAR',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w900, height: 1)),
        ],
      ),
    );
  }
}

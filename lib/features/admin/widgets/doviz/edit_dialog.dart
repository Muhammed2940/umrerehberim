import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/locale_provider.dart';
import '../../models/currency_model.dart';
import '../../providers/currency_provider.dart';

/// Döviz ekle / düzenle. [currency] null ise yeni.
Future<void> showCurrencyEditDialog(BuildContext context, {CurrencyModel? currency, String? emoji, String? name}) =>
    showDialog(
      context: context,
      builder: (_) => _CurrencyEditDialog(currency: currency, emoji: emoji, name: name),
    );

class _CurrencyEditDialog extends StatefulWidget {
  final CurrencyModel? currency;
  final String? emoji;
  final String? name;
  const _CurrencyEditDialog({this.currency, this.emoji, this.name});

  @override
  State<_CurrencyEditDialog> createState() => _CurrencyEditDialogState();
}

class _CurrencyEditDialogState extends State<_CurrencyEditDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _emoji =
      TextEditingController(text: widget.currency?.emoji ?? widget.emoji ?? '💵');
  late final TextEditingController _name = TextEditingController(text: widget.currency?.name ?? widget.name ?? '');
  late final TextEditingController _value = TextEditingController(text: widget.currency?.value ?? '');

  @override
  void dispose() {
    _emoji.dispose();
    _name.dispose();
    _value.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    final base = widget.currency;
    final c = CurrencyModel(
      id: base?.id ?? '',
      emoji: _emoji.text.trim(),
      name: _name.text.trim().toUpperCase(),
      value: _value.text.trim().replaceAll(',', '.'),
      agencyId: base?.agencyId,
      createdAt: base?.createdAt,
    );
    final ok = await context.read<CurrencyProvider>().save(c);
    if (ok && mounted) Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final saving = context.watch<CurrencyProvider>().isSaving;
    final isNew = widget.currency == null;
    return AlertDialog(
      title: Text(isNew ? l.adminCurrencyAddTitle : l.adminCurrencyEdit),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: TextFormField(
                      controller: _emoji,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 22),
                      decoration: InputDecoration(labelText: l.adminCurrencyFlag),
                      validator: (v) => (v == null || v.trim().isEmpty) ? l.adminRequired : null,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      controller: _name,
                      textCapitalization: TextCapitalization.characters,
                      textDirection: TextDirection.ltr,
                      decoration: InputDecoration(labelText: l.adminCurrencyName),
                      validator: (v) => (v == null || v.trim().isEmpty) ? l.adminRequired : null,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _value,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d+[.,]?\d{0,4}')),
                ],
                textDirection: TextDirection.ltr,
                decoration: InputDecoration(labelText: l.adminCurrencyValue, suffixText: '₺'),
                validator: (v) {
                  final d = double.tryParse((v ?? '').trim().replaceAll(',', '.'));
                  return (d == null || d <= 0) ? l.adminCurrencyValueInvalid : null;
                },
              ),
            ],
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

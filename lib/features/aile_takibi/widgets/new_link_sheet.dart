import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';

/// "Yeni bağlantı" alt sayfası: etiket (1–30) + yaklaşık konum seçeneği.
/// Sonuç: `(label, approx)`; vazgeçilirse null.
Future<({String label, bool approx})?> showNewLinkSheet(BuildContext context) {
  return showModalBottomSheet<({String label, bool approx})>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (_) => const _NewLinkSheet(),
  );
}

class _NewLinkSheet extends StatefulWidget {
  const _NewLinkSheet();

  @override
  State<_NewLinkSheet> createState() => _NewLinkSheetState();
}

class _NewLinkSheetState extends State<_NewLinkSheet> {
  final _label = TextEditingController();
  bool _approx = false;

  @override
  void dispose() {
    _label.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final valid = _label.text.trim().isNotEmpty;
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, MediaQuery.of(context).viewInsets.bottom + 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(l.aileNewLink, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppColors.text)),
          const SizedBox(height: 14),
          TextField(
            controller: _label,
            maxLength: 30,
            autofocus: true,
            textCapitalization: TextCapitalization.words,
            onChanged: (_) => setState(() {}),
            decoration: InputDecoration(
              labelText: l.aileLabelField,
              prefixIcon: const Icon(Icons.person_rounded),
              counterText: '',
            ),
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(l.aileApproxTitle),
            subtitle: Text(l.aileApproxSub),
            value: _approx,
            onChanged: (v) => setState(() => _approx = v),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: valid ? () => Navigator.pop(context, (label: _label.text.trim(), approx: _approx)) : null,
            child: Text(l.aileCreateAndShare),
          ),
        ],
      ),
    );
  }
}

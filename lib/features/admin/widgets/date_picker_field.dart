import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../utils/admin_helpers.dart';

/// Dokununca tarih seçici açan salt okunur alan.
class DatePickerField extends StatelessWidget {
  final String label;
  final DateTime? value;
  final ValueChanged<DateTime> onChanged;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final String? errorText;

  const DatePickerField({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    this.firstDate,
    this.lastDate,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () async {
        final now = DateTime.now();
        final first = firstDate ?? DateTime(now.year - 2);
        final last = lastDate ?? DateTime(now.year + 5);
        var initial = value ?? now;
        if (initial.isBefore(first)) initial = first;
        if (initial.isAfter(last)) initial = last;
        final picked = await showDatePicker(
          context: context,
          initialDate: initial,
          firstDate: first,
          lastDate: last,
        );
        if (picked != null) onChanged(picked);
      },
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: label,
          errorText: errorText,
          suffixIcon: const Icon(Icons.calendar_today, size: 20),
        ),
        child: Text(value == null ? context.l10n.adminPickDate : formatDate(value)),
      ),
    );
  }
}

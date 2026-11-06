import 'package:flutter/services.dart';

/// Rakamları gg/aa/yyyy biçimine çevirir (eğik çizgileri kendisi ekler).
class DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final digits = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');
    final limited = digits.length > 8 ? digits.substring(0, 8) : digits;
    final buf = StringBuffer();
    for (var i = 0; i < limited.length; i++) {
      if (i == 2 || i == 4) buf.write('/');
      buf.write(limited[i]);
    }
    final text = buf.toString();
    return TextEditingValue(text: text, selection: TextSelection.collapsed(offset: text.length));
  }

  /// 'gg/aa/yyyy' geçerli bir tarih mi?
  static bool isValid(String s) => tryParse(s) != null;

  static DateTime? tryParse(String s) {
    final p = s.split('/');
    if (p.length != 3 || p[2].length != 4) return null;
    final d = int.tryParse(p[0]), m = int.tryParse(p[1]), y = int.tryParse(p[2]);
    if (d == null || m == null || y == null) return null;
    final dt = DateTime(y, m, d);
    if (dt.year != y || dt.month != m || dt.day != d) return null;
    if (y < 1900 || dt.isAfter(DateTime.now())) return null;
    return dt;
  }
}

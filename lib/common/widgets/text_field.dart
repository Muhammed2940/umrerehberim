import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/providers/locale_provider.dart';
import '../../core/theme/app_theme.dart';

/// Uygulama genelinde kullanılan metin alanı.
class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final IconData? icon;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final bool enabled;
  final int maxLines;

  const AppTextField({
    super.key,
    this.controller,
    this.label,
    this.hint,
    this.icon,
    this.keyboardType,
    this.inputFormatters,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    this.textInputAction,
    this.obscureText = false,
    this.enabled = true,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(14);
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      validator: validator,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      textInputAction: textInputAction,
      obscureText: obscureText,
      enabled: enabled,
      maxLines: maxLines,
      style: const TextStyle(fontSize: 16, color: AppColors.text),
      decoration: InputDecoration(
        labelText: label ?? context.l10n.authTcLabel,
        hintText: hint,
        prefixIcon: icon == null ? null : Icon(icon, color: AppColors.primary),
        border: OutlineInputBorder(borderRadius: radius, borderSide: const BorderSide(color: AppColors.divider)),
        enabledBorder:
            OutlineInputBorder(borderRadius: radius, borderSide: const BorderSide(color: AppColors.divider)),
        focusedBorder:
            OutlineInputBorder(borderRadius: radius, borderSide: const BorderSide(color: AppColors.primary, width: 2)),
      ),
    );
  }
}

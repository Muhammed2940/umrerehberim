import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/language_picker.dart';
import '../../../common/widgets/text_field.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../models/user_model.dart';
import '../providers/login_provider.dart';
import '../widgets/kvkk_dialog.dart';
import '../widgets/login_button.dart';
import '../widgets/section_title.dart';
import '../widgets/user_type_selector.dart';

/// TC kimlik no + giriş tipi + KVKK onayı ile giriş ekranı.
/// Başarılı girişten sonra AppWrapper kullanıcı tipine göre ekranı değiştirir.
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final _tcController = TextEditingController();
  final _codeController = TextEditingController();
  final _pinController = TextEditingController();
  bool _pinVisible = false;
  String _userType = UserType.misafir;
  bool _kvkkAccepted = false;

  late final AnimationController _controller;
  late final Animation<double> _fade;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 700));
    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    _tcController.dispose();
    _codeController.dispose();
    _pinController.dispose();
    super.dispose();
  }

  String? _validateTc(String? v) {
    final s = v?.trim() ?? '';
    if (s.isEmpty) return context.l10n.authFieldRequired;
    if (s.length != 11) return context.l10n.authTcLengthError;
    return null;
  }

  bool get _isMerchant => _userType == UserType.esnaf;

  String? _validateCode(String? v) {
    final s = v?.trim() ?? '';
    if (s.isEmpty) return context.l10n.authFieldRequired;
    if (!RegExp(r'^[A-Z2-9]{6}$').hasMatch(s)) return context.l10n.esnafLoginCodeError;
    return null;
  }

  String? _validatePin(String? v) {
    final s = v?.trim() ?? '';
    if (s.isEmpty) return context.l10n.authFieldRequired;
    if (!RegExp(r'^[0-9]{6}$').hasMatch(s)) return context.l10n.esnafLoginPinError;
    return null;
  }

  Future<void> _openKvkk() async {
    final accepted = await KvkkDialog.show(context);
    if (!mounted) return;
    setState(() => _kvkkAccepted = accepted);
  }

  Future<void> _submit() async {
    FocusScope.of(context).unfocus();
    if (!(_formKey.currentState?.validate() ?? false)) return;
    if (!_kvkkAccepted) {
      GlobalSnackbar.showError(context.l10n.authKvkkRequired);
      return;
    }
    if (_isMerchant) {
      await context.read<LoginProvider>().handleMerchantLogin(
            code: _codeController.text,
            pin: _pinController.text,
            appState: context.read<AppStateProvider>(),
          );
      return;
    }
    await context.read<LoginProvider>().handleLogin(
          tc: _tcController.text,
          userType: _userType,
          appState: context.read<AppStateProvider>(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: FadeTransition(
          opacity: _fade,
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(24, 8, 24, 32),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: LanguageButton(color: AppColors.primary),
                  ),
                  Center(
                    child: Container(
                      width: 120,
                      height: 120,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.primary.withValues(alpha: 0.18),
                            blurRadius: 24,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Image.asset('assets/icons/logo.png', fit: BoxFit.contain),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    context.l10n.authGreeting,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: AppColors.primary),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    context.l10n.authTagline,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16, height: 1.4, color: AppColors.textMuted),
                  ),
                  const SizedBox(height: 36),
                  SectionTitle(title: context.l10n.authLoginType),
                  const SizedBox(height: 12),
                  UserTypeSelector(
                    selectedType: _userType,
                    onChanged: (t) => setState(() => _userType = t),
                  ),
                  const SizedBox(height: 24),
                  if (_isMerchant) ...[
                    AppTextField(
                      key: const ValueKey('esnaf-code'),
                      controller: _codeController,
                      label: context.l10n.esnafLoginCodeLabel,
                      hint: 'K7P2QX',
                      icon: Icons.storefront_outlined,
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.next,
                      inputFormatters: [
                        _UpperCaseFormatter(),
                        FilteringTextInputFormatter.allow(RegExp(r'[A-Z2-9]')),
                        LengthLimitingTextInputFormatter(6),
                      ],
                      validator: _validateCode,
                    ),
                    const SizedBox(height: 14),
                    TextFormField(
                      key: const ValueKey('esnaf-pin'),
                      controller: _pinController,
                      obscureText: !_pinVisible,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(6),
                      ],
                      validator: _validatePin,
                      onFieldSubmitted: (_) => _submit(),
                      style: const TextStyle(fontSize: 16, color: AppColors.text, letterSpacing: 4),
                      decoration: InputDecoration(
                        labelText: context.l10n.esnafLoginPinLabel,
                        prefixIcon: const Icon(Icons.lock_outline, color: AppColors.primary),
                        suffixIcon: IconButton(
                          icon: Icon(_pinVisible ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                              color: AppColors.textMuted),
                          onPressed: () => setState(() => _pinVisible = !_pinVisible),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(color: AppColors.divider),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(color: AppColors.divider),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(color: AppColors.primary, width: 2),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      context.l10n.esnafLoginHint,
                      style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted, height: 1.35),
                    ),
                  ] else
                  AppTextField(
                    controller: _tcController,
                    label: context.l10n.authTcLabel,
                    icon: Icons.badge_outlined,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(11),
                    ],
                    validator: _validateTc,
                    onFieldSubmitted: (_) => _submit(),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Checkbox(
                        value: _kvkkAccepted,
                        activeColor: AppColors.primary,
                        onChanged: (v) async {
                          if (v == true) {
                            await _openKvkk();
                          } else {
                            setState(() => _kvkkAccepted = false);
                          }
                        },
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: _openKvkk,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              context.l10n.authKvkkCheckbox,
                              style: const TextStyle(
                                fontSize: 13,
                                color: AppColors.primary,
                                decoration: TextDecoration.underline,
                                decorationColor: AppColors.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  LoginButton(onPressed: _submit),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Esnaf kodunu yazarken büyük harfe çevirir.
class _UpperCaseFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) =>
      newValue.copyWith(text: newValue.text.toUpperCase());
}

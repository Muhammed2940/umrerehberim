import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/language_picker.dart';
import '../../../common/widgets/text_field.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../providers/login_provider.dart';
import '../widgets/kvkk_dialog.dart';
import '../widgets/login_button.dart';
import '../widgets/section_title.dart';

/// İlk Google girişinden sonra (users/{uid} yokken) açılır: ad soyad, KVKK aydınlatma
/// onayı (zorunlu) ve konum için açık rıza (isteğe bağlı). Görünüm giriş ekranının
/// kardeşidir: aynı zemin, logo, başlık, alan, KVKK satırı ve düğme.
/// Kaydedince normal giriş sonrası akışa geçilir ve AppWrapper MainScreen'i gösterir.
/// Geri çıkılırsa Google ve Firebase oturumları kapatılır.
class KayitTamamlaScreen extends StatefulWidget {
  final User googleUser;

  const KayitTamamlaScreen({super.key, required this.googleUser});

  @override
  State<KayitTamamlaScreen> createState() => _KayitTamamlaScreenState();
}

class _KayitTamamlaScreenState extends State<KayitTamamlaScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _name;
  bool _kvkkAccepted = false;
  bool _locationConsent = false;

  /// Kayıt bitti: ekran kapanırken oturum kapatılmasın.
  bool _completed = false;

  @override
  void initState() {
    super.initState();
    final display = (widget.googleUser.displayName ?? '').trim();
    _name = TextEditingController(text: display.length > 60 ? display.substring(0, 60) : display);
  }

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }

  String? _validateName(String? v) {
    final s = v?.trim() ?? '';
    if (s.length < 2 || s.length > 60) return context.l10n.bireyselNameError;
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
    final navigator = Navigator.of(context);
    final ok = await context.read<LoginProvider>().completeGoogleRegistration(
          userName: _name.text.trim(),
          locationConsent: _locationConsent,
          appState: context.read<AppStateProvider>(),
        );
    if (!ok) return;
    _completed = true;
    // AppWrapper kullanıcıyı gördü; kök rota MainScreen'i gösterir.
    if (navigator.mounted) navigator.popUntil((r) => r.isFirst);
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final email = widget.googleUser.email ?? '';
    // Kayıt yazılırken geri/kapat devre dışı: yarım kalan kayıtla çıkış (ve vazgeçme
    // akışının Auth kaydını silmeye çalışması) yazımla yarışmasın.
    final loading = context.select<LoginProvider, bool>((p) => p.isLoading);
    return PopScope(
      canPop: !loading,
      onPopInvokedWithResult: (didPop, _) {
        if (didPop && !_completed) context.read<LoginProvider>().cancelGoogleRegistration();
      },
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(24, 8, 24, 32),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      IconButton(
                        tooltip: l.commonCancel,
                        icon: const Icon(Icons.close_rounded, color: AppColors.primary),
                        onPressed: loading ? null : () => Navigator.of(context).maybePop(),
                      ),
                      const Spacer(),
                      const LanguageButton(color: AppColors.primary),
                    ],
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
                    l.bireyselRegisterTitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: AppColors.primary),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    l.bireyselRegisterIntro,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16, height: 1.4, color: AppColors.textMuted),
                  ),
                  const SizedBox(height: 36),
                  if (email.isNotEmpty) ...[
                    SectionTitle(title: l.bireyselSignedInAs(email)),
                    const SizedBox(height: 12),
                  ],
                  AppTextField(
                    controller: _name,
                    label: l.bireyselNameLabel,
                    icon: Icons.person_outline_rounded,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.done,
                    inputFormatters: [LengthLimitingTextInputFormatter(60)],
                    validator: _validateName,
                    onFieldSubmitted: (_) => _submit(),
                  ),
                  const SizedBox(height: 12),
                  // KVKK satırı: giriş ekranındakiyle aynı.
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
                              l.authKvkkCheckbox,
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
                  // Konum için açık rıza (isteğe bağlı): KVKK satırının düzeninde, anahtarla.
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Switch(
                        value: _locationConsent,
                        onChanged: (v) => setState(() => _locationConsent = v),
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(l.bireyselLocationConsentTitle,
                                  style: const TextStyle(fontSize: 13, color: AppColors.text, fontWeight: FontWeight.w600)),
                              const SizedBox(height: 2),
                              Text(
                                l.bireyselLocationConsentBody,
                                style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted, height: 1.35),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  LoginButton(onPressed: _submit, label: l.bireyselRegisterButton),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

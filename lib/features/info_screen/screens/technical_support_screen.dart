import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../app/app_theme.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_theme.dart';
import '../../splash/providers/splash_provider.dart';

/// Teknik servis iletişim bilgileri (orijinal uygulamadaki numaralar / adresler).
class TechnicalSupportScreen extends StatelessWidget {
  const TechnicalSupportScreen({super.key});

  static const _telefon1 = '+90 555 021 69 74';
  static const _telefon2 = '+90 530 378 09 68';
  static const _eposta1 = 'support@umrerehberim.com';
  static const _eposta2 = 'info@umrerehberim.com';

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    // Süper admin platform ayarlarında doldurduysa onlar, boşsa sabit varsayılanlar.
    final cfg = context.watch<SplashProvider>().appSettings;
    String pick(String remote, String fallback) => remote.trim().isEmpty ? fallback : remote.trim();
    final telefon1 = pick(cfg.supportPhone1, _telefon1);
    final telefon2 = pick(cfg.supportPhone2, _telefon2);
    final eposta1 = pick(cfg.supportEmail1, _eposta1);
    final eposta2 = pick(cfg.supportEmail2, _eposta2);
    final whatsapp = cfg.supportWhatsapp.trim();
    return Scaffold(
      appBar: AppBar(title: Text(t.infoTechTitle)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [AppColors.primary, AppColors.primaryDark]),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const Icon(Icons.headset_mic_rounded, color: Colors.white, size: 42),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(t.infoTechContactUs, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 4),
                        Text(t.infoTechContactUsBody,
                            style: const TextStyle(color: Colors.white70, height: 1.4)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(t.infoTechPhones, style: AppTextStyles.sectionTitle),
            const SizedBox(height: 12),
            _buildContactCard(
              context,
              icon: Icons.phone_rounded,
              label: t.infoTechPhone1,
              value: telefon1,
              onTap: () => _launchPhone(context, telefon1),
              onWhatsApp: () => _launchWhatsApp(context, whatsapp.isEmpty ? telefon1 : whatsapp),
            ),
            _buildContactCard(
              context,
              icon: Icons.phone_rounded,
              label: t.infoTechPhone2,
              value: telefon2,
              onTap: () => _launchPhone(context, telefon2),
              onWhatsApp: () => _launchWhatsApp(context, whatsapp.isEmpty ? telefon2 : whatsapp),
            ),
            const SizedBox(height: 20),
            Text(t.infoTechEmails, style: AppTextStyles.sectionTitle),
            const SizedBox(height: 12),
            _buildContactCard(
              context,
              icon: Icons.email_rounded,
              label: t.infoTechEmail1,
              value: eposta1,
              onTap: () => _launchEmail(context, eposta1),
            ),
            _buildContactCard(
              context,
              icon: Icons.email_rounded,
              label: t.infoTechEmail2,
              value: eposta2,
              onTap: () => _launchEmail(context, eposta2),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactCard(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
    required VoidCallback onTap,
    VoidCallback? onWhatsApp,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: cardDecoration,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 8, 14),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(color: AppColors.primaryLight, borderRadius: BorderRadius.circular(12)),
                  child: Icon(icon, color: AppColors.primary),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(label, style: AppTextStyles.muted),
                      const SizedBox(height: 2),
                      Text(value, style: AppTextStyles.cardTitle, textDirection: TextDirection.ltr),
                    ],
                  ),
                ),
                if (onWhatsApp != null)
                  IconButton(
                    tooltip: 'WhatsApp',
                    onPressed: onWhatsApp,
                    icon: const Icon(Icons.chat_rounded, color: Color(0xFF25D366)),
                  ),
                const Icon(Icons.chevron_right_rounded, color: AppColors.textMuted),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Future<void> _open(BuildContext context, Uri uri, String hata) async {
    final messenger = ScaffoldMessenger.of(context);
    try {
      final ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
      if (!ok) messenger.showSnackBar(SnackBar(content: Text(hata)));
    } catch (e) {
      messenger.showSnackBar(SnackBar(content: Text('$hata: $e')));
    }
  }

  static Future<void> _launchPhone(BuildContext context, String phone) =>
      _open(context, Uri(scheme: 'tel', path: phone.replaceAll(' ', '')), context.l10n.infoTechPhoneFailed);

  static Future<void> _launchEmail(BuildContext context, String email) =>
      _open(context, Uri(scheme: 'mailto', path: email, query: 'subject=Umre%20Rehberim%20Destek'), context.l10n.infoTechEmailFailed);

  static Future<void> _launchWhatsApp(BuildContext context, String phone) =>
      _open(context, Uri.parse('https://wa.me/${phone.replaceAll(RegExp(r'[^0-9]'), '')}'), context.l10n.infoTechWhatsAppFailed);
}

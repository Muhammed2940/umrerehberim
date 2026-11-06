import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_theme.dart';
import '../data/l10n_text.dart';

/// İhram yasakları listesi (metinler orijinal uygulamadan).
class IhramRestrictionsScreen extends StatelessWidget {
  const IhramRestrictionsScreen({super.key});

  static const List<L10nText> _yasaklar = [
    L10nText(tr: 'İnci ve mücevher takmak', en: 'Wearing pearls and jewellery', ar: 'لبس اللؤلؤ والمجوهرات'),
    L10nText(
        tr: 'Parfüm ve sedefli çeşitli kokular kullanmak',
        en: 'Using perfume and various fragrances',
        ar: 'استعمال العطر وأنواع الطيب'),
    L10nText(
        tr: 'Saçını tıraş veya saçından çıkarmak',
        en: 'Shaving the head or removing any of its hair',
        ar: 'حلق شعر الرأس أو إزالة شيء منه'),
    L10nText(
        tr: 'Vücudun herhangi bir yerindeki kıl çıkarmak',
        en: 'Removing hair from any part of the body',
        ar: 'إزالة الشعر من أي موضع في الجسم'),
    L10nText(tr: 'Tırnak kesmek', en: 'Clipping nails', ar: 'تقليم الأظافر'),
    L10nText(
        tr: 'Erkekler için gömlekli kıyafet giymek',
        en: 'For men: wearing shirts or stitched garments',
        ar: 'للرجال: لبس القميص والثياب المخيطة'),
    L10nText(tr: 'Erkekler için pantolon giymek', en: 'For men: wearing trousers', ar: 'للرجال: لبس السراويل'),
    L10nText(
        tr: 'Erkekler için ayakkabı giymek (ihram sandali giyilir)',
        en: 'For men: wearing shoes (ihram sandals are worn instead)',
        ar: 'للرجال: لبس الأحذية (يُلبس نعل الإحرام بدلًا منها)'),
    L10nText(
        tr: 'Erkekler için başlık veya türban takmak',
        en: 'For men: wearing a cap or turban',
        ar: 'للرجال: لبس القلنسوة أو العمامة'),
    L10nText(
        tr: 'Kadınlar için yüzü kaplayan peçe takmak',
        en: 'For women: wearing a face-covering veil (niqab)',
        ar: 'للنساء: لبس النقاب الذي يغطي الوجه'),
    L10nText(tr: 'Erkekler için eldiven takmak', en: 'For men: wearing gloves', ar: 'للرجال: لبس القفازين'),
    L10nText(
        tr: 'Tıraşlı tarakla saçı taramak',
        en: 'Combing the hair in a way that pulls hair out',
        ar: 'تمشيط الشعر بما يؤدي إلى تساقطه'),
    L10nText(tr: 'Avlanmak veya hayvan öldürmek', en: 'Hunting or killing animals', ar: 'الصيد أو قتل الحيوان'),
    L10nText(tr: 'Hayvan avlamayı dilemek', en: 'Intending to hunt an animal', ar: 'نية صيد الحيوان'),
    L10nText(
        tr: 'İhram durumunda şikarlı hayvanları işaret etmek',
        en: 'Pointing out game animals while in Ihram',
        ar: 'الدلالة على الصيد أو الإشارة إليه في حال الإحرام'),
    L10nText(
        tr: 'Mubarek ayda Mescid-i Haram sahasında ağaç budamak',
        en: 'Cutting trees within the Haram area of Masjid al-Haram during the blessed month',
        ar: 'قطع الشجر في منطقة المسجد الحرام في الشهر المبارك'),
    L10nText(
        tr: 'Mescid-i Haram alanında çiçek almak',
        en: 'Picking flowers in the Masjid al-Haram area',
        ar: 'قطف الزهور في منطقة المسجد الحرام'),
    L10nText(
        tr: 'Karı-kocanın cinsel ilişkiye girmesi',
        en: 'Sexual intercourse between husband and wife',
        ar: 'الجماع بين الزوجين'),
    L10nText(
        tr: 'Mübaşeret yapmak (dokunma seviyesinde)',
        en: 'Mubashara (intimate touching)',
        ar: 'المباشرة (الملامسة بشهوة)'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.infoCardIhram)),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
        itemCount: _yasaklar.length + 1,
        itemBuilder: (context, i) {
          if (i == 0) return _header(context);
          final index = i - 1;
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: const BorderDirectional(start: BorderSide(color: AppColors.error, width: 4)),
              boxShadow: const [BoxShadow(color: Color(0x0F000000), blurRadius: 8, offset: Offset(0, 3))],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              child: Row(
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: AppColors.error.withValues(alpha: 0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text('${index + 1}',
                          style: const TextStyle(color: AppColors.error, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Text(_yasaklar[index].of(context),
                        style: AppTextStyles.body.copyWith(fontSize: 15, height: 1.35)),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [AppColors.primary, AppColors.primaryDark]),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          const Icon(Icons.do_not_disturb_on_outlined, color: Colors.white, size: 36),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              context.l10n.infoIhramHeader,
              style: const TextStyle(color: Colors.white, fontSize: 14.5, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';

/// Modeldeki Türkçe vakit adını (`PrayerTimeModel.entries`) seçili dile çevirir.
String localizedPrayerName(BuildContext context, String key) {
  final l = context.l10n;
  return switch (key) {
    'İmsak' => l.homePrayerFajr,
    'Güneş' => l.homePrayerSunrise,
    'Öğle' => l.homePrayerDhuhr,
    'İkindi' => l.homePrayerAsr,
    'Akşam' => l.homePrayerMaghrib,
    'Yatsı' => l.homePrayerIsha,
    _ => key,
  };
}

/// Mekke / Medine ezan vakitleri kartı. Arka planda şehir fotoğrafı,
/// altta altı vakit; sıradaki vakit altın renkle vurgulanır.
class PrayerTimesCard extends StatefulWidget {
  final String city;
  final List<MapEntry<String, String>> times;
  final String? hicri;
  final String? day;

  const PrayerTimesCard({
    super.key,
    required this.city,
    required this.times,
    this.hicri,
    this.day,
  });

  bool get isMekke => city == 'Mekke';

  @override
  State<PrayerTimesCard> createState() => _PrayerTimesCardState();
}

class _PrayerTimesCardState extends State<PrayerTimesCard> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Sıradaki vakit vurgusunu güncel tutmak için dakikada bir yenile.
    _timer = Timer.periodic(const Duration(seconds: 30), (_) {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  /// "HH:mm" → gün içindeki dakika. Okunamazsa null.
  static int? _minutes(String hhmm) {
    final p = hhmm.trim().split(':');
    if (p.length < 2) return null;
    final mm = p[1].length > 2 ? p[1].substring(0, 2) : p[1];
    final h = int.tryParse(p[0]), m = int.tryParse(mm);
    if (h == null || m == null) return null;
    return h * 60 + m;
  }

  /// Sıradaki vaktin indeksi. Yatsı geçtiyse ertesi günün imsakı (0).
  int _nextIndex() {
    final now = DateTime.now();
    final nowMin = now.hour * 60 + now.minute;
    for (var i = 0; i < widget.times.length; i++) {
      final m = _minutes(widget.times[i].value);
      if (m != null && m > nowMin) return i;
    }
    return 0;
  }

  /// Sıradaki vakte kalan süre, ör. "Öğle'ye 1 sa 12 dk". Vakit okunamazsa null.
  String? _remainingText(int next) {
    if (next < 0) return null;
    final m = _minutes(widget.times[next].value);
    if (m == null) return null;
    final now = DateTime.now();
    var diff = m - (now.hour * 60 + now.minute);
    if (diff <= 0) diff += 24 * 60; // ertesi günün imsakı
    final h = diff ~/ 60, mm = diff % 60;
    final l = context.l10n;
    final name = localizedPrayerName(context, widget.times[next].key);
    final when = h > 0 ? l.homeDurationHM(h, mm) : l.homeDurationM(mm);
    return '$name: $when';
  }

  /// Hicri ay adları: Türkçe (seed verisi) → en / ar.
  static const _hijriMonths = <String, (String, String)>{
    'Muharrem': ('Muharram', 'محرم'),
    'Safer': ('Safar', 'صفر'),
    'Rebiülevvel': ('Rabi al-Awwal', 'ربيع الأول'),
    'Rebiülahir': ('Rabi al-Thani', 'ربيع الآخر'),
    'Cemaziyelevvel': ('Jumada al-Ula', 'جمادى الأولى'),
    'Cemaziyelahir': ('Jumada al-Akhirah', 'جمادى الآخرة'),
    'Recep': ('Rajab', 'رجب'),
    'Şaban': ("Sha'ban", 'شعبان'),
    'Ramazan': ('Ramadan', 'رمضان'),
    'Şevval': ('Shawwal', 'شوال'),
    'Zilkade': ("Dhu al-Qa'dah", 'ذو القعدة'),
    'Zilhicce': ('Dhu al-Hijjah', 'ذو الحجة'),
  };

  static String? _localizedHijri(String? hicri, String lang) {
    if (hicri == null || hicri.trim().isEmpty || lang == 'tr') return hicri;
    var out = hicri;
    _hijriMonths.forEach((tr, v) {
      if (out.contains(tr)) out = out.replaceAll(tr, lang == 'ar' ? v.$2 : v.$1);
    });
    return lang == 'ar' ? '$out هـ' : '$out AH';
  }

  @override
  Widget build(BuildContext context) {
    final next = widget.times.isEmpty ? -1 : _nextIndex();
    // Veritabanındaki gün/hicri metni Türkçe; seçili dile göre üret/çevir.
    final lang = localeProvider.locale.languageCode;
    final day = lang == 'tr' ? widget.day : DateFormat.EEEE().format(DateTime.now());
    final subtitle = [day, _localizedHijri(widget.hicri, lang)]
        .where((s) => s != null && s.trim().isNotEmpty)
        .join(' • ');
    final remaining = _remainingText(next);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.accent.withValues(alpha: 0.55), width: 1.5),
        boxShadow: const [BoxShadow(color: Color(0x33000000), blurRadius: 16, offset: Offset(0, 8))],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22.5),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              widget.isMekke ? 'assets/images/kabe.webp' : 'assets/images/medine.jpg',
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) => Container(color: AppColors.primaryDark),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withValues(alpha: 0.15),
                      Colors.black.withValues(alpha: 0.35),
                      AppColors.primaryDark.withValues(alpha: 0.92),
                    ],
                    stops: const [0, 0.45, 1],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on_rounded, color: Colors.white, size: 18),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          widget.isMekke ? context.l10n.commonMecca : context.l10n.commonMedina,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            shadows: [Shadow(color: Colors.black45, blurRadius: 6)],
                          ),
                        ),
                      ),
                      if (remaining != null)
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.35),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: AppColors.accent.withValues(alpha: 0.8)),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.schedule_rounded, size: 13, color: AppColors.accent),
                              const SizedBox(width: 4),
                              Text(remaining,
                                  style: const TextStyle(color: Colors.white, fontSize: 11.5, fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                    ],
                  ),
                  if (subtitle.isNotEmpty)
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 22, top: 2),
                      child: Text(
                        subtitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12.5,
                          shadows: [Shadow(color: Colors.black45, blurRadius: 6)],
                        ),
                      ),
                    ),
                  const Spacer(),
                  Row(
                    children: [
                      for (var i = 0; i < widget.times.length; i++)
                        _entry(widget.times[i], highlighted: i == next),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _entry(MapEntry<String, String> e, {required bool highlighted}) {
    return Expanded(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.symmetric(horizontal: 2),
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: highlighted ? AppColors.mint : Colors.white.withValues(alpha: 0.14),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: highlighted ? Colors.white.withValues(alpha: 0.9) : Colors.white.withValues(alpha: 0.22),
            width: highlighted ? 1.5 : 1,
          ),
          boxShadow: highlighted
              ? [BoxShadow(color: AppColors.accent.withValues(alpha: 0.6), blurRadius: 12)]
              : null,
        ),
        child: Column(
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                localizedPrayerName(context, e.key),
                style: TextStyle(
                  color: highlighted ? AppColors.emerald900 : Colors.white,
                  fontSize: 12,
                  fontWeight: highlighted ? FontWeight.bold : FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 4),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                e.value.isEmpty ? '--:--' : e.value,
                style: TextStyle(
                    color: highlighted ? AppColors.emerald900 : Colors.white,
                    fontSize: 14.5,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../common/constant/surahs_info.dart';
import '../../../core/theme/app_theme.dart';
import '../data/quran_text_repository.dart';

/// Mushaf yazı tipi (Amiri Quran, OFL). Eksik glif olursa Amiri'ye düşer.
const String quranFontFamily = 'AmiriQuran';
const List<String> quranFontFallback = ['Amiri'];

/// Mushaf renkleri: gündüz (krem kâğıt) ve gece (koyu zümrüt).
class MushafColors {
  const MushafColors._({
    required this.background,
    required this.paper,
    required this.ink,
    required this.frame,
    required this.ornament,
    required this.ornamentFill,
    required this.muted,
    required this.highlight,
    required this.spine,
  });

  static final day = MushafColors._(
    background: AppColors.paperDark,
    paper: AppColors.paper,
    ink: AppColors.paperInk,
    frame: AppColors.paperGold,
    ornament: AppColors.primary,
    ornamentFill: AppColors.paperDark,
    muted: AppColors.textMuted,
    highlight: AppColors.paperGold.withValues(alpha: 0.22),
    spine: AppColors.paperInk.withValues(alpha: 0.10),
  );

  static final night = MushafColors._(
    background: AppColors.emerald900,
    paper: AppColors.emerald800,
    ink: AppColors.paper,
    frame: AppColors.paperGold.withValues(alpha: 0.7),
    ornament: AppColors.sage,
    ornamentFill: AppColors.emerald700,
    muted: AppColors.sage,
    highlight: AppColors.sage.withValues(alpha: 0.25),
    spine: Colors.black.withValues(alpha: 0.25),
  );

  static MushafColors of(bool night) => night ? MushafColors.night : MushafColors.day;

  final Color background;
  final Color paper;
  final Color ink;
  final Color frame;
  final Color ornament;
  final Color ornamentFill;
  final Color muted;
  final Color highlight;
  final Color spine;
}

/// Tek mushaf sayfası: çift çizgili çerçeve, üst şerit (sure adı, cüz),
/// sure başlıkları, besmele, iki yana yaslı akan ayetler ve sayfa numarası.
class QuranMushafPage extends StatefulWidget {
  const QuranMushafPage({
    super.key,
    required this.page,
    required this.text,
    required this.scale,
    required this.night,
    required this.selectedKey,
    required this.onAyahTap,
  });

  final int page;
  final QuranText text;
  final double scale;
  final bool night;

  /// Vurgulanan ayet ("2:255").
  final String? selectedKey;
  final void Function(QuranAyah ayah) onAyahTap;

  @override
  State<QuranMushafPage> createState() => _QuranMushafPageState();
}

class _QuranMushafPageState extends State<QuranMushafPage> {
  final Map<String, TapGestureRecognizer> _recognizers = {};
  late List<QuranAyah> _ayahs;

  @override
  void initState() {
    super.initState();
    _ayahs = widget.text.ayahsOnPage(widget.page);
  }

  @override
  void didUpdateWidget(covariant QuranMushafPage old) {
    super.didUpdateWidget(old);
    if (old.page != widget.page || old.text != widget.text) {
      _disposeRecognizers();
      _ayahs = widget.text.ayahsOnPage(widget.page);
    }
  }

  @override
  void dispose() {
    _disposeRecognizers();
    super.dispose();
  }

  void _disposeRecognizers() {
    for (final r in _recognizers.values) {
      r.dispose();
    }
    _recognizers.clear();
  }

  TapGestureRecognizer _recognizerFor(QuranAyah a) =>
      _recognizers.putIfAbsent(a.key, () => TapGestureRecognizer()..onTap = () => widget.onAyahTap(a));

  @override
  Widget build(BuildContext context) {
    final c = MushafColors.of(widget.night);
    final page = widget.page;
    // Mushafta tek sayfalar sağda durur; cilt (gölge) tarafı solda kalır.
    final spineOnLeft = page.isOdd;
    final firstSurah = _ayahs.isEmpty ? surahIndexForPage(page) + 1 : _ayahs.first.surah;

    return Container(
      color: c.background,
      padding: const EdgeInsets.fromLTRB(10, 6, 10, 10),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          decoration: BoxDecoration(
            color: c.paper,
            borderRadius: BorderRadius.circular(4),
            boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.12), blurRadius: 10, offset: const Offset(0, 3))],
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: _DoubleFrame(
                    color: c.frame,
                    child: Column(
                      children: [
                        _topStrip(c, firstSurah, page),
                        Expanded(
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            padding: const EdgeInsets.fromLTRB(14, 6, 14, 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: _buildBody(c),
                            ),
                          ),
                        ),
                        _pageNumber(c, page),
                      ],
                    ),
                  ),
                ),
              ),
              // Cilt tarafında hafif gölge (basılı mushaf hissi).
              Positioned(
                top: 0,
                bottom: 0,
                left: spineOnLeft ? 0 : null,
                right: spineOnLeft ? null : 0,
                width: 16,
                child: IgnorePointer(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: spineOnLeft ? Alignment.centerLeft : Alignment.centerRight,
                        end: spineOnLeft ? Alignment.centerRight : Alignment.centerLeft,
                        colors: [c.spine, c.spine.withValues(alpha: 0)],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topStrip(MushafColors c, int surah, int page) {
    final style = TextStyle(fontFamily: 'Amiri', fontSize: 14, color: c.ornament, height: 1.2);
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 6, 12, 5),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: c.frame.withValues(alpha: 0.6), width: 0.8))),
      child: Row(
        children: [
          Text('${surahByNo(surah)['arabic']}', style: style),
          const Spacer(),
          Text('الجزء ${arabicDigits(juzForPage(page))}', style: style),
        ],
      ),
    );
  }

  Widget _pageNumber(MushafColors c, int page) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6, top: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _Diamond(color: c.frame, size: 5),
          const SizedBox(width: 8),
          Text(
            arabicDigits(page),
            style: TextStyle(fontFamily: 'Amiri', fontSize: 14, color: c.ornament, height: 1.2),
          ),
          const SizedBox(width: 8),
          _Diamond(color: c.frame, size: 5),
        ],
      ),
    );
  }

  List<Widget> _buildBody(MushafColors c) {
    final scale = widget.scale;
    final fontSize = 21.0 * scale;
    final textStyle = TextStyle(
      fontFamily: quranFontFamily,
      fontFamilyFallback: quranFontFallback,
      fontSize: fontSize,
      height: 2.05,
      color: c.ink,
    );
    final markStyle = TextStyle(color: c.ornament);
    // Fatiha ve Bakara'nın ilk sayfaları mushaflarda ortalı dizilir.
    final align = widget.page <= 2 ? TextAlign.center : TextAlign.justify;

    final out = <Widget>[];
    var spans = <InlineSpan>[];

    void flush() {
      if (spans.isEmpty) return;
      out.add(
        Text.rich(
          TextSpan(children: spans),
          textAlign: align,
          textDirection: TextDirection.rtl,
          style: textStyle,
          textScaler: TextScaler.noScaling,
        ),
      );
      spans = <InlineSpan>[];
    }

    for (final a in _ayahs) {
      if (a.ayah == 1) {
        flush();
        out.add(SurahHeaderBox(surah: a.surah, colors: c, scale: scale));
        // Fatiha'da besmele 1. ayettir; Tevbe'de besmele yoktur.
        if (a.surah != 1 && a.surah != 9) {
          out.add(
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Text(
                widget.text.basmala,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                textScaler: TextScaler.noScaling,
                style: textStyle.copyWith(height: 1.9),
              ),
            ),
          );
        }
      }
      final selected = a.key == widget.selectedKey;
      spans.add(
        TextSpan(
          recognizer: _recognizerFor(a),
          style: selected ? TextStyle(backgroundColor: c.highlight) : null,
          children: [
            TextSpan(text: a.text),
            // Ayet sonu: ۝ + Arapça-Hint rakamı (Amiri Quran rakamları işaretin
            // içine yerleştirir). Bölünmez boşlukla ayete bağlı kalır.
            TextSpan(text: ' ۝${arabicDigits(a.ayah)}', style: markStyle),
          ],
        ),
      );
      spans.add(const TextSpan(text: ' '));
    }
    flush();
    return out;
  }
}

/// Süslü sure başlığı: çift çizgili çerçeve içinde "سورة البقرة".
class SurahHeaderBox extends StatelessWidget {
  const SurahHeaderBox({super.key, required this.surah, required this.colors, this.scale = 1});

  final int surah;
  final MushafColors colors;
  final double scale;

  @override
  Widget build(BuildContext context) {
    final c = colors;
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 6),
      child: Container(
        padding: const EdgeInsets.all(2.5),
        decoration: BoxDecoration(
          border: Border.all(color: c.frame, width: 1.4),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          height: 40 + 6 * scale,
          decoration: BoxDecoration(
            color: c.ornamentFill,
            border: Border.all(color: c.frame.withValues(alpha: 0.7), width: 0.8),
            borderRadius: BorderRadius.circular(6),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              _Diamond(color: c.frame, size: 7),
              const SizedBox(width: 4),
              _Diamond(color: c.frame.withValues(alpha: 0.6), size: 4),
              Expanded(
                child: Text(
                  'سورة ${surahByNo(surah)['arabic']}',
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  textScaler: TextScaler.noScaling,
                  style: TextStyle(
                    fontFamily: 'Amiri',
                    fontWeight: FontWeight.w700,
                    fontSize: 19 * scale.clamp(0.9, 1.3),
                    color: c.ornament,
                    height: 1.3,
                  ),
                ),
              ),
              _Diamond(color: c.frame.withValues(alpha: 0.6), size: 4),
              const SizedBox(width: 4),
              _Diamond(color: c.frame, size: 7),
            ],
          ),
        ),
      ),
    );
  }
}

/// Dış kalın, iç ince çift çizgili sayfa çerçevesi.
class _DoubleFrame extends StatelessWidget {
  const _DoubleFrame({required this.color, required this.child});

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(border: Border.all(color: color, width: 1.8)),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: color.withValues(alpha: 0.8), width: 0.8)),
        child: child,
      ),
    );
  }
}

/// Küçük eşkenar dörtgen süs.
class _Diamond extends StatelessWidget {
  const _Diamond({required this.color, required this.size});

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 0.785398,
      child: Container(width: size, height: size, color: color),
    );
  }
}

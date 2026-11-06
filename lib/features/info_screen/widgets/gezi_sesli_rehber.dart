import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

import '../../../common/services/quran_audio_service.dart';
import '../../../core/theme/app_theme.dart';
import '../../telsiz/providers/telsiz_controller.dart';
import '../data/gezi_ui_texts.dart';
import 'info_widgets.dart';

/// Arayüz dili → TTS dili.
String ttsDilKodu(String languageCode) => switch (languageCode) {
      'en' => 'en-US',
      'ar' => 'ar-SA',
      _ => 'tr-TR',
    };

/// Paragrafı cümlelere böler; her cümle `(başlangıç, bitiş)` aralığıdır.
/// "Hz. Peygamber" gibi kısaltmalarda ve "394.5" gibi sayılarda bölmez.
List<(int, int)> cumleAraliklari(String p) {
  const kisaltmalar = {'hz', 'b', 'bk', 'vb', 'vs', 'dr', 'st', 'no', 'ö', 'mr', 'mrs'};
  final out = <(int, int)>[];
  var bas = 0;
  final son = RegExp(r'[.!?…؟]+[")”»’]*(\s+|$)');
  for (final m in son.allMatches(p)) {
    if (p[m.start] == '.') {
      final once = p.substring(bas, m.start);
      final kelime = once.split(RegExp(r'\s')).last.toLowerCase();
      if (kisaltmalar.contains(kelime) && m.end < p.length) continue;
    }
    final bitis = m.end;
    if (p.substring(bas, bitis).trim().isNotEmpty) out.add((bas, bitis));
    bas = bitis;
  }
  if (bas < p.length && p.substring(bas).trim().isNotEmpty) out.add((bas, p.length));
  if (out.isEmpty) out.add((0, p.length));
  return out;
}

enum SesliRehberDurum { hazirlaniyor, hazir, caliyor, duraklatildi, bitti, dilYok, hata }

/// Bir yerin anlatımını `flutter_tts` ile bölüm (paragraf) paragraf okur.
///
/// Duraklatma platform `pause` yerine `stop` + kaldığı cümleden yeniden
/// başlatma ile yapılır (Android/iOS'ta aynı davranış). Okunan cümle
/// `setProgressHandler` ile bulunur.
class SesliRehberController extends ChangeNotifier {
  SesliRehberController({required String metin, required this.dilKodu})
      : paragraflar = metin.split(RegExp(r'\n\s*\n')).map((e) => e.trim()).where((e) => e.isNotEmpty).toList() {
    cumleler = [for (final p in paragraflar) cumleAraliklari(p)];
    TelsizController.instance.addListener(_onTelsiz);
  }

  final List<String> paragraflar;
  late final List<List<(int, int)>> cumleler;

  /// `tr-TR`, `en-US`, `ar-SA`.
  final String dilKodu;

  final FlutterTts _tts = FlutterTts();
  bool _disposed = false;

  SesliRehberDurum durum = SesliRehberDurum.hazirlaniyor;
  int bolum = 0;
  int cumle = 0;
  double hiz = 1.0;

  /// Şu an okunan metnin paragraftaki başlangıcı (kaldığı yerden devam için).
  int _konusmaBaslangic = 0;

  bool get caliyor => durum == SesliRehberDurum.caliyor;
  bool get kullanilabilir =>
      durum != SesliRehberDurum.dilYok && durum != SesliRehberDurum.hata && durum != SesliRehberDurum.hazirlaniyor;

  /// 0..1 toplam ilerleme (bölüm + bölüm içi cümle).
  double get ilerleme {
    if (paragraflar.isEmpty) return 0;
    if (durum == SesliRehberDurum.bitti) return 1;
    final ic = cumleler[bolum].isEmpty ? 0 : cumle / cumleler[bolum].length;
    return (bolum + ic) / paragraflar.length;
  }

  /// Bölüm içi ilerleme (0..1).
  double get bolumIlerleme =>
      cumleler.isEmpty || cumleler[bolum].isEmpty ? 0 : cumle / cumleler[bolum].length;

  Future<void> init() async {
    try {
      await _tts.awaitSpeakCompletion(false);
      final sonuc = await _tts.isLanguageAvailable(dilKodu);
      final ok = sonuc == true || sonuc == 1;
      if (!ok) {
        _set(SesliRehberDurum.dilYok);
        return;
      }
      await _tts.setLanguage(dilKodu);
      await _tts.setSpeechRate(_rate);
      await _tts.setPitch(1.0);
      _tts.setProgressHandler(_onProgress);
      _tts.setCompletionHandler(_onComplete);
      _tts.setErrorHandler((msg) {
        debugPrint('SesliRehber TTS hatası: $msg');
        _set(SesliRehberDurum.hata);
      });
      _set(SesliRehberDurum.hazir);
    } catch (e) {
      debugPrint('SesliRehber init: $e');
      _set(SesliRehberDurum.hata);
    }
  }

  /// flutter_tts'te 0.5 normal hızdır (Android ve iOS).
  double get _rate => 0.5 * hiz;

  /// Oynat. Telsiz açıksa false döner (çağıran uyarı gösterir).
  Future<bool> oynat() async {
    if (!kullanilabilir) return false;
    if (TelsizController.instance.isActive) return false;
    await _kuraniSustur();
    if (durum == SesliRehberDurum.bitti) {
      bolum = 0;
      cumle = 0;
    }
    durum = SesliRehberDurum.caliyor;
    notifyListeners();
    await _konus();
    return true;
  }

  Future<void> duraklat() async {
    if (!caliyor) return;
    durum = SesliRehberDurum.duraklatildi;
    notifyListeners();
    await _tts.stop();
  }

  Future<void> bastan() async {
    await _tts.stop();
    bolum = 0;
    cumle = 0;
    if (caliyor || durum == SesliRehberDurum.duraklatildi || durum == SesliRehberDurum.bitti) {
      durum = SesliRehberDurum.duraklatildi;
    }
    notifyListeners();
    await oynat();
  }

  /// Belirli bir bölüme atlar (çalıyorsa oradan devam eder).
  Future<void> bolumeGit(int i) async {
    if (!kullanilabilir || i < 0 || i >= paragraflar.length) return;
    final calsin = caliyor;
    await _tts.stop();
    bolum = i;
    cumle = 0;
    if (durum == SesliRehberDurum.bitti) durum = SesliRehberDurum.duraklatildi;
    notifyListeners();
    if (calsin) {
      await _konus();
    } else {
      await oynat();
    }
  }

  Future<void> hizAyarla(double h) async {
    hiz = h;
    notifyListeners();
    if (!kullanilabilir) return;
    await _tts.setSpeechRate(_rate);
    if (caliyor) {
      await _tts.stop();
      await _konus();
    }
  }

  Future<void> durdur() async {
    if (caliyor) {
      durum = SesliRehberDurum.duraklatildi;
      notifyListeners();
    }
    await _tts.stop();
  }

  // ------------------------------------------------------------- dahili

  Future<void> _kuraniSustur() async {
    final q = QuranAudioService.instance;
    try {
      if (q.isPlaying) await q.pause();
      if (q.playingAyahKey != null) await q.stopAyah();
      if (q.previewingId != null) await q.stopPreview();
    } catch (e) {
      debugPrint('SesliRehber: Kur\'an duraklatılamadı: $e');
    }
  }

  Future<void> _konus() async {
    if (_disposed || paragraflar.isEmpty) return;
    final p = paragraflar[bolum];
    final c = cumleler[bolum];
    if (cumle >= c.length) cumle = 0;
    _konusmaBaslangic = c[cumle].$1;
    try {
      await _tts.speak(p.substring(_konusmaBaslangic));
    } catch (e) {
      debugPrint('SesliRehber speak: $e');
      _set(SesliRehberDurum.hata);
    }
  }

  void _onProgress(String text, int start, int end, String word) {
    if (_disposed || !caliyor) return;
    final mutlak = _konusmaBaslangic + start;
    final c = cumleler[bolum];
    for (var i = 0; i < c.length; i++) {
      if (mutlak >= c[i].$1 && mutlak < c[i].$2) {
        if (i != cumle) {
          cumle = i;
          notifyListeners();
        }
        break;
      }
    }
  }

  void _onComplete() {
    if (_disposed || !caliyor) return;
    if (bolum + 1 < paragraflar.length) {
      bolum++;
      cumle = 0;
      notifyListeners();
      _konus();
    } else {
      bolum = paragraflar.length - 1;
      cumle = cumleler[bolum].length - 1;
      _set(SesliRehberDurum.bitti);
    }
  }

  void _onTelsiz() {
    if (TelsizController.instance.isActive && caliyor) duraklat();
  }

  void _set(SesliRehberDurum d) {
    if (_disposed) return;
    durum = d;
    notifyListeners();
  }

  @override
  void dispose() {
    _disposed = true;
    TelsizController.instance.removeListener(_onTelsiz);
    _tts.stop();
    super.dispose();
  }
}

/// Detay sayfasındaki sesli rehber oynatıcısı.
class SesliRehberKart extends StatefulWidget {
  const SesliRehberKart({super.key, required this.controller});

  final SesliRehberController controller;

  @override
  State<SesliRehberKart> createState() => _SesliRehberKartState();
}

class _SesliRehberKartState extends State<SesliRehberKart> {
  bool _metinAcik = false;

  SesliRehberController get c => widget.controller;

  Future<void> _oynatDuraklat() async {
    if (c.caliyor) {
      await c.duraklat();
      return;
    }
    if (TelsizController.instance.isActive) {
      _snack(GeziMetin.telsizEngel.of(context));
      return;
    }
    final ok = await c.oynat();
    if (!ok && mounted && c.durum == SesliRehberDurum.hata) _snack(GeziMetin.ttsHata.of(context));
  }

  Future<void> _bastan() async {
    if (TelsizController.instance.isActive) {
      _snack(GeziMetin.telsizEngel.of(context));
      return;
    }
    await c.bastan();
  }

  void _snack(String s) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(s)));
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: c,
      builder: (context, _) {
        final dilYok = c.durum == SesliRehberDurum.dilYok;
        final hata = c.durum == SesliRehberDurum.hata;
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(22),
            boxShadow: kInfoCardShadow,
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 14, 12, 14),
                decoration: const BoxDecoration(gradient: AppColors.primaryGradient),
                child: Row(
                  children: [
                    _buyukButon(),
                    const SizedBox(width: 14),
                    Expanded(child: _baslik()),
                    if (!dilYok && !hata)
                      IconButton(
                        tooltip: GeziMetin.bastan.of(context),
                        onPressed: c.kullanilabilir ? _bastan : null,
                        icon: const Icon(Icons.replay_rounded, color: Colors.white),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (dilYok)
                      InfoNote(
                        fill(GeziMetin.dilYok.of(context), {'dil': GeziMetin.dilAdi.of(context)}),
                        warning: true,
                        icon: Icons.record_voice_over_rounded,
                      ),
                    if (hata) InfoNote(GeziMetin.ttsHata.of(context), warning: true),
                    if (!dilYok && !hata) ...[
                      _bolumCubugu(),
                      const SizedBox(height: 10),
                      _hizSecici(),
                      const SizedBox(height: 6),
                      if (c.durum != SesliRehberDurum.hazir && c.durum != SesliRehberDurum.hazirlaniyor)
                        _vurguluParagraf(c.bolum, aktif: true),
                    ],
                    if (dilYok || hata || _metinAcik) ...[
                      const SizedBox(height: 4),
                      for (var i = 0; i < c.paragraflar.length; i++)
                        if (dilYok || hata || i != c.bolum || c.durum == SesliRehberDurum.hazir)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: _vurguluParagraf(i, aktif: false),
                          ),
                    ],
                    if (!dilYok && !hata)
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: TextButton.icon(
                          onPressed: () => setState(() => _metinAcik = !_metinAcik),
                          icon: Icon(_metinAcik ? Icons.expand_less_rounded : Icons.notes_rounded, size: 18),
                          label: Text((_metinAcik ? GeziMetin.metniGizle : GeziMetin.metniGoster).of(context)),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buyukButon() {
    final hazirlaniyor = c.durum == SesliRehberDurum.hazirlaniyor;
    final pasif = !c.kullanilabilir;
    return Semantics(
      button: true,
      label: (c.caliyor ? GeziMetin.duraklat : GeziMetin.dinle).of(context),
      child: Material(
        color: pasif ? Colors.white24 : AppColors.accent,
        shape: const CircleBorder(),
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: pasif ? null : _oynatDuraklat,
          child: SizedBox(
            width: 60,
            height: 60,
            child: hazirlaniyor
                ? const Padding(
                    padding: EdgeInsets.all(18),
                    child: CircularProgressIndicator(strokeWidth: 2.5, color: Colors.white),
                  )
                : Icon(
                    c.caliyor ? Icons.pause_rounded : Icons.play_arrow_rounded,
                    size: 36,
                    color: pasif ? Colors.white70 : AppColors.onAccent,
                  ),
          ),
        ),
      ),
    );
  }

  Widget _baslik() {
    final String alt;
    switch (c.durum) {
      case SesliRehberDurum.hazirlaniyor:
        alt = GeziMetin.hazirlaniyor.of(context);
      case SesliRehberDurum.bitti:
        alt = GeziMetin.bitti.of(context);
      case SesliRehberDurum.dilYok:
      case SesliRehberDurum.hata:
        alt = '';
      case SesliRehberDurum.hazir:
        alt = GeziMetin.dinle.of(context);
      case SesliRehberDurum.caliyor:
      case SesliRehberDurum.duraklatildi:
        alt = fill(GeziMetin.bolum.of(context), {'n': c.bolum + 1, 't': c.paragraflar.length});
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const Icon(Icons.graphic_eq_rounded, color: AppColors.mint, size: 18),
            const SizedBox(width: 6),
            Flexible(
              child: Text(
                GeziMetin.sesliRehberBaslik.of(context),
                style: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w800),
              ),
            ),
          ],
        ),
        if (alt.isNotEmpty) ...[
          const SizedBox(height: 2),
          Text(alt, style: const TextStyle(color: Colors.white70, fontSize: 13)),
        ],
      ],
    );
  }

  /// Bölüm bölüm ilerleme: her paragraf bir dilim; dokununca o bölüme gider.
  Widget _bolumCubugu() {
    final n = c.paragraflar.length;
    return Row(
      children: [
        for (var i = 0; i < n; i++) ...[
          if (i > 0) const SizedBox(width: 4),
          Expanded(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                if (TelsizController.instance.isActive) {
                  _snack(GeziMetin.telsizEngel.of(context));
                  return;
                }
                c.bolumeGit(i);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(
                    minHeight: 6,
                    backgroundColor: AppColors.primaryLight,
                    color: AppColors.primary,
                    value: c.durum == SesliRehberDurum.bitti
                        ? 1
                        : i < c.bolum
                            ? 1
                            : i == c.bolum
                                ? c.bolumIlerleme
                                : 0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _hizSecici() {
    const hizlar = [0.75, 1.0, 1.25];
    String etiket(double h) => '${h.toString().replaceAll(RegExp(r'\.?0+$'), '')}x';
    return Row(
      children: [
        const Icon(Icons.speed_rounded, size: 18, color: AppColors.textMuted),
        const SizedBox(width: 6),
        Text(GeziMetin.hiz.of(context), style: const TextStyle(fontSize: 13, color: AppColors.textMuted)),
        const Spacer(),
        for (final h in hizlar)
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 6),
            child: ChoiceChip(
              label: Text(etiket(h)),
              selected: c.hiz == h,
              onSelected: (_) => c.hizAyarla(h),
              visualDensity: VisualDensity.compact,
              selectedColor: AppColors.primary,
              labelStyle: TextStyle(
                fontWeight: FontWeight.w700,
                color: c.hiz == h ? Colors.white : AppColors.primaryDark,
              ),
              showCheckmark: false,
            ),
          ),
      ],
    );
  }

  /// Paragraf; [aktif] ise okunan cümle vurgulanır.
  Widget _vurguluParagraf(int i, {required bool aktif}) {
    final p = c.paragraflar[i];
    const temel = TextStyle(fontSize: 15, height: 1.6, color: AppColors.text);
    if (!aktif) {
      return Text(p, style: temel.copyWith(color: AppColors.textMuted));
    }
    final aralik = c.cumleler[i][c.cumle.clamp(0, c.cumleler[i].length - 1)];
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Text.rich(
        TextSpan(
          style: temel,
          children: [
            TextSpan(text: p.substring(0, aralik.$1), style: const TextStyle(color: AppColors.textMuted)),
            TextSpan(
              text: p.substring(aralik.$1, aralik.$2),
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.emerald900,
                backgroundColor: AppColors.accent.withValues(alpha: 0.35),
              ),
            ),
            TextSpan(text: p.substring(aralik.$2), style: const TextStyle(color: AppColors.textMuted)),
          ],
        ),
      ),
    );
  }
}

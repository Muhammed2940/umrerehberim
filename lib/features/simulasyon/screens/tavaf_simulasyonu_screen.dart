import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../dualar/data/dua_models.dart';
import '../../info_screen/data/l10n_text.dart';
import '../widgets/kabe_painter.dart';
import '../widgets/simulasyon_widgets.dart';

/// Tavaf ekranındaki uzun içerik metinleri (ARB yerine veri olarak).
class _TavafMetinleri {
  _TavafMetinleri._();

  static const bittiMetin = L10nText(
    tr: 'Son şavt Hacerü\'l-Esved hizasında biter. Ardından tavaf namazı, zemzem ve sa\'y gelir.',
    en: "The last circuit ends in line with the Black Stone. Next come the Tawaf prayer, Zamzam and Sa'i.",
    ar: 'ينتهي الشوط الأخير بمحاذاة الحجر الأسود، ثم تأتي ركعتا الطواف وشرب زمزم والسعي.',
  );

  static const istilamMetin = L10nText(
    tr: 'Hacerü\'l-Esved\'e dönülür, eller kaldırılarak selamlanır (istilam):\n'
        '"Bismillâhi Allâhu ekber" (Allah\'ın adıyla, Allah en büyüktür). Yalnız "Allâhu ekber" demek de '
        'yeterlidir; bazı rivayetlerde "ve lillâhi\'l-hamd" eklenir.\n'
        'Kalabalıkta öpmek için itişmeyin; uzaktan el ile işaret yeterlidir.',
    en: 'Face the Black Stone and salute it by raising your hands (Istilam):\n'
        '"Bismillahi Allahu akbar" (In the name of Allah, Allah is the Greatest). Saying only "Allahu akbar" is also '
        'sufficient; in some narrations "wa lillahil-hamd" is added.\n'
        'Do not push in the crowd to kiss it; pointing with your hand from a distance is sufficient.',
    ar: 'يُستقبل الحجر الأسود ويُستلم برفع اليدين قائلًا:\n'
        '«بسم الله الله أكبر». ويكفي قول «الله أكبر» وحده، '
        'وفي بعض الروايات يُزاد «ولله الحمد».\n'
        'لا تزاحم لتقبيله؛ تكفي الإشارة باليد من بعيد.',
  );

  static const normalMetin = L10nText(
    tr: 'Kâbe solunuzda kalacak şekilde yürüyün. Bu bölümde dilediğiniz dua ve zikirleri okuyabilirsiniz.',
    en: 'Walk with the Kaaba on your left. In this part you may recite any supplications and dhikr you wish.',
    ar: 'امشِ والكعبة عن يسارك. ويمكنك في هذا الجزء أن تدعو وتذكر الله بما شئت.',
  );

  static const bilgiMaddeleri = <L10nText>[
    L10nText(
      tr: 'Tavaf Hacerü\'l-Esved hizasından başlar; Kâbe sola alınarak 7 şavt yapılır. Her şavt Hacerü\'l-Esved hizasında biter.',
      en: 'Tawaf starts in line with the Black Stone; 7 circuits are made with the Kaaba on your left. Each circuit ends in line with the Black Stone.',
      ar: 'يبدأ الطواف من محاذاة الحجر الأسود، ويُطاف سبعة أشواط والكعبة عن اليسار، وينتهي كل شوط بمحاذاة الحجر الأسود.',
    ),
    L10nText(
      tr: 'Hatim (Hicr-i İsmail) Kâbe\'den sayıldığı için tavaf onun dışından yapılır.',
      en: 'Since the Hatim (Hijr Ismail) is counted as part of the Kaaba, Tawaf is performed outside it.',
      ar: 'لأن الحطيم (حجر إسماعيل) من الكعبة، يكون الطواف من ورائه.',
    ),
    L10nText(
      tr: 'Iztıba: Erkekler, sa\'yi bulunan tavafta ihramın üst örtüsünü sağ koltuk altından geçirip sol omuz üzerine atar; sağ omuz açık kalır.',
      en: "Idtiba‘: In a Tawaf followed by Sa'i, men pass the upper Ihram cloth under the right armpit and throw it over the left shoulder; the right shoulder stays uncovered.",
      ar: 'الاضطباع: في الطواف الذي يعقبه سعي يجعل الرجل وسط الرداء تحت إبطه الأيمن وطرفيه على كتفه الأيسر، فيبقى الكتف الأيمن مكشوفًا.',
    ),
    L10nText(
      tr: 'Remel: Erkekler ilk 3 şavtta kısa adımlarla, omuzları silkeleyerek çalımlı yürür. Kalabalıkta yapılamazsa terk edilir.',
      en: 'Raml: In the first 3 circuits men walk briskly with short steps, moving their shoulders. If it cannot be done in the crowd, it is left.',
      ar: 'الرمل: يُسرع الرجال في الأشواط الثلاثة الأولى مع مقاربة الخطى وهز الكتفين، فإن تعذر بسبب الزحام تُرك.',
    ),
    L10nText(
      tr: 'Kadınlar ıztıba ve remel yapmaz.',
      en: 'Women do not perform Idtiba‘ or Raml.',
      ar: 'لا تضطبع النساء ولا يرملن.',
    ),
    L10nText(
      tr: 'Rükn-i Yemânî ile Hacerü\'l-Esved arasında "Rabbenâ âtinâ..." duası okunur.',
      en: 'Between Rukn al-Yamani and the Black Stone, the supplication "Rabbana atina..." is recited.',
      ar: 'يُقرأ بين الركن اليماني والحجر الأسود: «ربنا آتنا في الدنيا حسنة وفي الآخرة حسنة وقنا عذاب النار».',
    ),
    L10nText(
      tr: 'Şavt sayısında şüphe olursa az olan sayı esas alınır.',
      en: 'If in doubt about the number of circuits, go by the lower number.',
      ar: 'إذا شك في عدد الأشواط بنى على الأقل.',
    ),
    L10nText(
      tr: 'Tavafta abdestli olmak Hanefî mezhebine göre vacip, Şâfiî mezhebine göre şarttır.',
      en: 'Being in wudu during Tawaf is wajib according to the Hanafi school and a condition according to the Shafi‘i school.',
      ar: 'الطهارة في الطواف واجبة عند الحنفية وشرط عند الشافعية.',
    ),
    L10nText(
      tr: 'Tavaf esnasında abdesti bozulan kişi tavafı bırakıp abdest alır ve kaldığı şavttan devam eder. '
          'Baştan başlamak şart değildir; kalınan yerden devam etmek geçerlidir ve tercih edilen görüştür.',
      en: 'A person whose wudu breaks during Tawaf stops, renews their wudu and continues from the circuit where they left off. '
          'Starting again is not required; continuing from where one stopped is valid and is the preferred view.',
      ar: 'من انتقض وضوؤه أثناء الطواف قطعه وتوضأ ثم أكمل من الشوط الذي توقف عنده. '
          'ولا يُشترط الابتداء من جديد؛ فالبناء على ما مضى صحيح وهو القول المختار.',
    ),
  ];
}

/// Kuşbakışı tavaf: hacı Kâbe'yi soluna alarak saat yönünün tersine 7 şavt döner.
class TavafSimulasyonuScreen extends StatefulWidget {
  const TavafSimulasyonuScreen({super.key});

  @override
  State<TavafSimulasyonuScreen> createState() => _TavafSimulasyonuScreenState();
}

class _TavafSimulasyonuScreenState extends State<TavafSimulasyonuScreen> with SingleTickerProviderStateMixin {
  /// 1x hızda bir şavtın süresi (saniye).
  static const _savtSaniye = 12.0;
  static const _hizlar = [1.0, 2.0, 4.0];

  late final Ticker _ticker;
  Duration _onceki = Duration.zero;
  double _ilerleme = 0; // 0-7
  int _hizIndex = 0;
  bool _calisiyor = false;

  @override
  void initState() {
    super.initState();
    _ticker = createTicker(_tick);
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  void _tick(Duration elapsed) {
    final dt = (elapsed - _onceki).inMicroseconds / 1e6;
    _onceki = elapsed;
    setState(() {
      _ilerleme += dt * _hizlar[_hizIndex] / _savtSaniye;
      if (_ilerleme >= 7) {
        _ilerleme = 7;
        _durdur();
      }
    });
  }

  void _baslat() {
    if (_ilerleme >= 7) _ilerleme = 0;
    _onceki = Duration.zero;
    _ticker.start();
    setState(() => _calisiyor = true);
  }

  void _durdur() {
    if (_ticker.isActive) _ticker.stop();
    _calisiyor = false;
  }

  void _sifirla() {
    setState(() {
      _durdur();
      _ilerleme = 0;
    });
  }

  void _hizDegistir() => setState(() => _hizIndex = (_hizIndex + 1) % _hizlar.length);

  int get _savt => _ilerleme >= 7 ? 7 : _ilerleme.floor() + 1;
  bool get _bitti => _ilerleme >= 7;
  double get _oran => _bitti ? 0 : _ilerleme - _ilerleme.floor();

  @override
  Widget build(BuildContext context) {
    final bolge = TavafBolgesi.of(_oran);
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.infoCardTawafSim)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 14, 16, 24),
          children: [
            _durumSatiri(bolge),
            const SizedBox(height: 12),
            SimKart(
              padding: const EdgeInsets.all(8),
              child: AspectRatio(
                aspectRatio: 1,
                // Tavaf çizimi her dilde aynı (saat yönünün tersine); sağdan sola dilde aynalanmaz.
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: CustomPaint(
                    painter: KabePainter(
                      ilerleme: _ilerleme,
                      calisiyor: _calisiyor,
                      dil: Localizations.localeOf(context).languageCode,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            _uyari(bolge),
            const SizedBox(height: 12),
            _kontroller(),
            const SizedBox(height: 16),
            _bilgiKarti(),
          ],
        ),
      ),
    );
  }

  Widget _durumSatiri(TavafBolgesi bolge) {
    final remel = !_bitti && _savt <= 3;
    final t = context.l10n;
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(gradient: AppColors.primaryGradient, borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              Text(t.simCircuit, style: const TextStyle(color: AppColors.mint, fontSize: 12)),
              Text('$_savt/7',
                  style: const TextStyle(color: AppColors.surface, fontSize: 24, fontWeight: FontWeight.w800)),
            ],
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _bitti ? t.simTawafCompleted : bolge.ad.of(context),
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: AppColors.text),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  for (var i = 1; i <= 7; i++)
                    Expanded(
                      child: Container(
                        height: 6,
                        margin: const EdgeInsetsDirectional.only(end: 3),
                        decoration: BoxDecoration(
                          color: i < _savt || _bitti
                              ? AppColors.primary
                              : (i == _savt ? AppColors.accent : AppColors.divider),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 6),
              Text(
                _bitti ? t.simPrayBehindMaqam : (remel ? t.simFirstThreeRaml : t.simNormalWalk),
                style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _uyari(TavafBolgesi bolge) {
    if (_bitti) {
      return _UyariKutusu(
        ikon: Icons.check_circle_rounded,
        baslik: context.l10n.simSevenCircuitsDone,
        metin: _TavafMetinleri.bittiMetin.of(context),
      );
    }
    if (bolge == TavafBolgesi.hacerulEsved) {
      return _UyariKutusu(
        ikon: Icons.back_hand_rounded,
        baslik: context.l10n.simIstilam,
        metin: _TavafMetinleri.istilamMetin.of(context),
        vurgulu: true,
      );
    }
    if (bolge == TavafBolgesi.rabbena) {
      return Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: AppColors.primaryLight,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.accent),
        ),
        child: const DuaMetniGorunumu(dua: OrtakDualar.rabbena, arapcaBoyut: 19),
      );
    }
    return _UyariKutusu(
      ikon: Icons.rotate_left_rounded,
      baslik: bolge.ad.of(context),
      metin: _TavafMetinleri.normalMetin.of(context),
    );
  }

  Widget _kontroller() {
    final hiz = _hizlar[_hizIndex];
    final t = context.l10n;
    return Row(
      children: [
        IconButton.outlined(
          tooltip: t.simReset,
          onPressed: _sifirla,
          icon: const Icon(Icons.restart_alt_rounded),
          style: IconButton.styleFrom(
            foregroundColor: AppColors.primary,
            side: const BorderSide(color: AppColors.divider),
            minimumSize: const Size(48, 48),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: FilledButton.icon(
            onPressed: () => _calisiyor ? setState(_durdur) : _baslat(),
            icon: Icon(_calisiyor ? Icons.pause_rounded : Icons.play_arrow_rounded),
            label: Text(_calisiyor
                ? t.simStop
                : (_bitti ? t.simStartOver : (_ilerleme > 0 ? t.simContinue : t.simStart))),
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.surface,
              minimumSize: const Size.fromHeight(48),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            ),
          ),
        ),
        const SizedBox(width: 8),
        OutlinedButton.icon(
          onPressed: _hizDegistir,
          icon: const Icon(Icons.fast_forward_rounded, size: 20),
          label: Text(t.simSpeed(hiz.toStringAsFixed(0))),
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.primary,
            minimumSize: const Size(0, 48),
            side: const BorderSide(color: AppColors.divider),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          ),
        ),
      ],
    );
  }

  Widget _bilgiKarti() {
    return SimKart(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BolumBasligi(context.l10n.simTawafEssentials, ikon: Icons.info_outline_rounded),
          MaddeListesi(maddeler: [for (final m in _TavafMetinleri.bilgiMaddeleri) m.of(context)]),
        ],
      ),
    );
  }
}

class _UyariKutusu extends StatelessWidget {
  const _UyariKutusu({required this.ikon, required this.baslik, required this.metin, this.vurgulu = false});

  final IconData ikon;
  final String baslik;
  final String metin;
  final bool vurgulu;

  @override
  Widget build(BuildContext context) {
    final renk = vurgulu ? AppColors.warning : AppColors.primary;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: renk.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: renk.withValues(alpha: 0.35)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(ikon, color: renk),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(baslik, style: TextStyle(fontWeight: FontWeight.w800, color: renk, fontSize: 15)),
                const SizedBox(height: 4),
                Text(metin, style: const TextStyle(color: AppColors.text, fontSize: 13.5, height: 1.4)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

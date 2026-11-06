import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_theme.dart';
import '../data/zikir_storage.dart';
import '../models/model_zikirlerim.dart';
import 'kayitli_zikirlerim.dart';

/// Zikirmatik: büyük dokunmatik sayaç, hedef, titreşim, kaydetme.
///
/// [devamZikir] verilirse o zikrin sayısından devam edilir ve kaydedince
/// aynı kayıt güncellenir.
class ZikirCek extends StatefulWidget {
  const ZikirCek({super.key, this.devamZikir});

  final ModelZikirlerim? devamZikir;

  @override
  State<ZikirCek> createState() => _ZikirCekState();
}

class _ZikirCekState extends State<ZikirCek> with SingleTickerProviderStateMixin {
  static const int _maxSayi = 99999;
  static const List<Color> _renkler = [
    AppColors.primary,
    Color(0xFF1565C0),
    Color(0xFF163832),
    Color(0xFFC62828),
    Color(0xFFEF6C00),
    Color(0xFF00838F),
    Color(0xFF4E342E),
    Color(0xFF0B2B26),
  ];

  final TextEditingController _controller = TextEditingController();
  late final AnimationController _pulse =
      AnimationController(vsync: this, duration: const Duration(milliseconds: 120), lowerBound: 0.94, upperBound: 1)
        ..value = 1;

  int _sayi = 0;
  int _hedef = 33;
  bool _titreme = true;
  Color _tema = AppColors.primary;
  ModelZikirlerim? _aktifZikir;
  bool _yuklendi = false;

  @override
  void initState() {
    super.initState();
    _aktifZikir = widget.devamZikir;
    zikirYukle();
  }

  @override
  void dispose() {
    _controller.dispose();
    _pulse.dispose();
    super.dispose();
  }

  Future<void> zikirYukle() async {
    final prefs = await SharedPreferences.getInstance();
    if (!mounted) return;
    setState(() {
      _titreme = prefs.getBool('titreme') ?? true;
      _hedef = prefs.getInt('hedef') ?? 33;
      final renk = prefs.getInt('renk');
      if (renk != null) _tema = Color(renk);
      _sayi = _aktifZikir?.zikirSayisi ?? (prefs.getInt('kaydedilenZikir') ?? 0);
      _yuklendi = true;
    });
    if (_aktifZikir != null) {
      Fluttertoast.showToast(msg: l10n.dualarZikirContinuing(_aktifZikir!.zikirAdi));
    }
  }

  Future<void> _sayiKaydet() async {
    // Kayıtlı bir zikre devam edilmiyorsa anlık sayı bir sonraki açılışa saklanır.
    if (_aktifZikir != null) return;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('kaydedilenZikir', _sayi);
  }

  Future<void> artir() async {
    if (_sayi >= _maxSayi) {
      Fluttertoast.showToast(msg: l10n.dualarZikirMaxReached);
      return;
    }
    _pulse.reverse().then((_) => _pulse.forward());
    setState(() => _sayi++);
    final hedefeUlasti = _hedef > 0 && _sayi % _hedef == 0;
    if (_titreme) {
      if (hedefeUlasti) {
        HapticFeedback.heavyImpact();
        HapticFeedback.vibrate();
      } else {
        HapticFeedback.lightImpact();
      }
    }
    if (hedefeUlasti) Fluttertoast.showToast(msg: l10n.dualarTargetReached);
    await _sayiKaydet();
  }

  Future<void> _geriAl() async {
    if (_sayi == 0) return;
    if (_titreme) HapticFeedback.selectionClick();
    setState(() => _sayi--);
    await _sayiKaydet();
  }

  Future<void> sifirla() async {
    final onay = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(ctx.l10n.dualarReset),
        content: Text(ctx.l10n.dualarResetConfirm),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(ctx.l10n.commonCancel)),
          TextButton(onPressed: () => Navigator.pop(ctx, true), child: Text(ctx.l10n.dualarReset)),
        ],
      ),
    );
    if (onay != true) return;
    setState(() => _sayi = 0);
    await _sayiKaydet();
  }

  Future<void> titremeAcKapa() async {
    setState(() => _titreme = !_titreme);
    if (_titreme) HapticFeedback.mediumImpact();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('titreme', _titreme);
    Fluttertoast.showToast(msg: _titreme ? l10n.dualarVibrationOn : l10n.dualarVibrationOff);
  }

  Future<void> belirle(int hedef) async {
    if (hedef <= 0) {
      Fluttertoast.showToast(msg: l10n.dualarTargetZero);
      return;
    }
    if (hedef > _maxSayi) {
      Fluttertoast.showToast(msg: l10n.dualarTargetTooBig);
      return;
    }
    setState(() => _hedef = hedef);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('hedef', hedef);
    Fluttertoast.showToast(msg: l10n.dualarTargetSet(hedef));
  }

  Future<String?> _sayiDialog({required String title, required String hint, String? initial}) {
    _controller.text = initial ?? '';
    return showDialog<String>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(title, style: const TextStyle(fontSize: 17)),
        content: TextField(
          controller: _controller,
          autofocus: true,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(5)],
          decoration: InputDecoration(hintText: hint),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: Text(ctx.l10n.commonCancel)),
          TextButton(onPressed: () => Navigator.pop(ctx, _controller.text.trim()), child: Text(ctx.l10n.commonSave)),
        ],
      ),
    );
  }

  Future<void> hedefBelirle() async {
    final l = context.l10n;
    final v = await _sayiDialog(title: l.dualarSetTargetTitle, hint: l.dualarTargetHint, initial: '$_hedef');
    if (v == null) return;
    if (v.isEmpty) {
      Fluttertoast.showToast(msg: l10n.dualarEnterTarget);
      return;
    }
    await belirle(int.tryParse(v) ?? 0);
  }

  Future<void> tesbihDuzenle() async {
    final l = context.l10n;
    final v = await _sayiDialog(title: l.dualarStartFromTitle, hint: l.dualarStartNumberHint, initial: '$_sayi');
    if (v == null) return;
    final n = int.tryParse(v);
    if (n == null) {
      Fluttertoast.showToast(msg: l10n.dualarEnterNumber);
      return;
    }
    setState(() => _sayi = n.clamp(0, _maxSayi));
    await _sayiKaydet();
  }

  Future<void> zikirlerimeKaydetDialog() async {
    _controller.text = _aktifZikir?.zikirAdi ?? '';
    final ad = await showDialog<String>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(ctx.l10n.dualarSaveAsTitle, style: const TextStyle(fontSize: 17)),
        content: TextField(
          controller: _controller,
          autofocus: true,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(hintText: ctx.l10n.dualarZikirNameHint),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: Text(ctx.l10n.commonCancel)),
          TextButton(onPressed: () => Navigator.pop(ctx, _controller.text.trim()), child: Text(ctx.l10n.commonSave)),
        ],
      ),
    );
    if (ad == null) return;
    await zikirlerimeKaydet(ad);
  }

  Future<void> zikirlerimeKaydet(String ad) async {
    if (ad.isEmpty) {
      Fluttertoast.showToast(msg: l10n.dualarEnterName);
      return;
    }
    final z = ModelZikirlerim(
      id: _aktifZikir?.id ?? DateTime.now().millisecondsSinceEpoch.toString(),
      zikirAdi: ad,
      zikirSayisi: _sayi,
      zikirTarihi: DateFormat('yyyy-MM-dd - kk:mm').format(DateTime.now()),
    );
    await ZikirStorage.upsert(z);
    if (!mounted) return;
    setState(() => _aktifZikir = z);
    Fluttertoast.showToast(msg: l10n.dualarZikirSaved);
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(
        content: Text(context.l10n.dualarZikirSavedCount(ad, _sayi)),
        action: SnackBarAction(label: context.l10n.dualarViewList, onPressed: _listeyeGit),
      ));
  }

  Future<void> _listeyeGit() async {
    final secilen = await Navigator.push<ModelZikirlerim>(
      context,
      MaterialPageRoute(builder: (_) => const Zikirlerim(secimModu: true)),
    );
    if (secilen == null || !mounted) return;
    setState(() {
      _aktifZikir = secilen;
      _sayi = secilen.zikirSayisi;
    });
    Fluttertoast.showToast(msg: l10n.dualarZikirContinuing(secilen.zikirAdi));
  }

  void _yeniZikir() {
    setState(() {
      _aktifZikir = null;
      _sayi = 0;
    });
    _sayiKaydet();
  }

  Future<void> renkDegistir() async {
    final secilen = await showDialog<Color>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(ctx.l10n.dualarThemeColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            for (final c in _renkler)
              InkWell(
                onTap: () => Navigator.pop(ctx, c),
                customBorder: const CircleBorder(),
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: c,
                    shape: BoxShape.circle,
                    border: Border.all(color: c.toARGB32() == _tema.toARGB32() ? Colors.black87 : Colors.white, width: 3),
                  ),
                ),
              ),
          ],
        ),
        actions: [TextButton(onPressed: () => Navigator.pop(ctx), child: Text(ctx.l10n.commonCancel))],
      ),
    );
    if (secilen == null) return;
    setState(() => _tema = secilen);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('renk', secilen.toARGB32());
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l.dualarZikirmatik),
        backgroundColor: _tema,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        actions: [
          IconButton(
            tooltip: l.dualarSavedZikirs,
            icon: const Icon(Icons.bookmarks_outlined),
            onPressed: _listeyeGit,
          ),
          PopupMenuButton<String>(
            onSelected: (v) {
              switch (v) {
                case 'yeni':
                  _yeniZikir();
                case 'duzenle':
                  tesbihDuzenle();
                case 'renk':
                  renkDegistir();
              }
            },
            itemBuilder: (_) => [
              PopupMenuItem(
                value: 'yeni',
                child: ListTile(leading: const Icon(Icons.add), title: Text(l.dualarNewZikir)),
              ),
              PopupMenuItem(
                value: 'duzenle',
                child: ListTile(leading: const Icon(Icons.edit_outlined), title: Text(l.dualarChangeStartNumber)),
              ),
              PopupMenuItem(
                value: 'renk',
                child: ListTile(leading: const Icon(Icons.palette_outlined), title: Text(l.dualarThemeColor)),
              ),
            ],
          ),
        ],
      ),
      body: _yuklendi ? getBody() : const Center(child: CircularProgressIndicator()),
    );
  }

  Widget getBody() {
    final oran = _hedef > 0 ? (_sayi % _hedef) / _hedef : 0.0;
    final tur = _hedef > 0 ? _sayi ~/ _hedef : 0;
    final tamamlandi = _sayi > 0 && _hedef > 0 && _sayi % _hedef == 0;
    final l = context.l10n;
    return LayoutBuilder(
      builder: (context, c) {
        final size = (c.maxWidth * 0.78).clamp(200.0, 340.0);
        return SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
          child: Column(
            children: [
              if (_aktifZikir != null)
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    color: _tema.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.bookmark, size: 18, color: _tema),
                      const SizedBox(width: 6),
                      Flexible(
                        child: Text(_aktifZikir!.zikirAdi,
                            overflow: TextOverflow.ellipsis, style: TextStyle(color: _tema, fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ),
              _hedefSecici(),
              const SizedBox(height: 24),
              GestureDetector(
                onTap: artir,
                child: ScaleTransition(
                  scale: _pulse,
                  child: SizedBox(
                    width: size,
                    height: size,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox.expand(
                          child: CircularProgressIndicator(
                            value: tamamlandi ? 1 : oran,
                            strokeWidth: 12,
                            strokeCap: StrokeCap.round,
                            backgroundColor: _tema.withValues(alpha: 0.12),
                            valueColor: AlwaysStoppedAnimation(tamamlandi ? AppColors.accent : _tema),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(22),
                          child: Material(
                            color: _tema,
                            shape: const CircleBorder(),
                            elevation: 8,
                            shadowColor: _tema.withValues(alpha: 0.5),
                            clipBehavior: Clip.antiAlias,
                            child: InkWell(
                              onTap: artir,
                              splashColor: Colors.white24,
                              child: Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    FittedBox(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 24),
                                        child: Text(
                                          '$_sayi',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 72,
                                            fontWeight: FontWeight.bold,
                                            fontFeatures: [FontFeature.tabularFigures()],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(l.dualarTap, style: TextStyle(color: Colors.white.withValues(alpha: 0.8), fontSize: 14)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(l.dualarYourTarget(_hedef), style: AppTextStyles.cardTitle),
              if (tur > 0) ...[
                const SizedBox(height: 4),
                Text(l.dualarRoundsCompleted(tur), style: AppTextStyles.muted),
              ],
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _aksiyon(Icons.remove_rounded, l.dualarUndo, _geriAl),
                  _aksiyon(Icons.restart_alt_rounded, l.dualarReset, sifirla),
                  _aksiyon(_titreme ? Icons.vibration : Icons.mobile_off_outlined,
                      _titreme ? l.dualarVibration : l.dualarSilent, titremeAcKapa),
                  _aksiyon(Icons.save_alt_rounded, l.commonSave, zikirlerimeKaydetDialog),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _hedefSecici() {
    const hazir = [33, 99, 100];
    final ozel = !hazir.contains(_hedef);
    return Wrap(
      spacing: 8,
      alignment: WrapAlignment.center,
      children: [
        for (final h in hazir)
          ChoiceChip(
            label: Text('$h'),
            selected: _hedef == h,
            selectedColor: _tema.withValues(alpha: 0.18),
            onSelected: (_) => belirle(h),
          ),
        ChoiceChip(
          avatar: const Icon(Icons.tune, size: 16),
          label: Text(ozel ? context.l10n.dualarCustomValue(_hedef) : context.l10n.dualarCustom),
          selected: ozel,
          selectedColor: _tema.withValues(alpha: 0.18),
          onSelected: (_) => hedefBelirle(),
        ),
      ],
    );
  }

  Widget _aksiyon(IconData icon, String label, VoidCallback onTap) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          color: Colors.white,
          shape: const CircleBorder(),
          elevation: 2,
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: onTap,
            child: Padding(padding: const EdgeInsets.all(14), child: Icon(icon, color: _tema)),
          ),
        ),
        const SizedBox(height: 6),
        Text(label, style: AppTextStyles.muted.copyWith(fontSize: 12)),
      ],
    );
  }
}

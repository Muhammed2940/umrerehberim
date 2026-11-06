import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_theme.dart';
import '../data/dua_models.dart';
import 'content_download_dialog.dart';

/// Tavaf ve Sa'y duaları sayfalarının ortak görünümü.
///
/// Üstte bölüm seçici (Başlangıç, 1–7. şavt, Bitiş), ortada kaydırılabilir dua
/// kartları, altta şavt sayacı. "Metin" görünümü yerel veriyle çevrimdışı
/// çalışır; "Görsel" görünümü orijinal kitap sayfalarını indirip gösterir.
class DuaSayfasi extends StatefulWidget {
  const DuaSayfasi({
    super.key,
    required this.title,
    required this.bolumler,
    required this.getLocalPath,
    required this.downloadFile,
  });

  final String title;
  final List<DuaBolumu> bolumler;

  /// İndirilmiş görselin yerel yolu, yoksa null.
  final Future<String?> Function(String fileName) getLocalPath;

  /// Görseli indirir. Başarılıysa null, değilse hata mesajı döner.
  final Future<String?> Function(BuildContext context, String fileName) downloadFile;

  @override
  State<DuaSayfasi> createState() => _DuaSayfasiState();
}

class _DuaSayfasiState extends State<DuaSayfasi> {
  final PageController _pageController = PageController();
  final ScrollController _chipScroll = ScrollController();
  final Map<String, Future<String?>> _pathFutures = {};

  int _currentPage = 0;
  int _savtSayisi = 0;
  bool _gorselMod = false;
  bool _arapcaGorsel = true;
  String? _indirilen;

  int get _toplamSavt => widget.bolumler.where((b) => b.isZikirmatik).length;

  @override
  void dispose() {
    _pageController.dispose();
    _chipScroll.dispose();
    super.dispose();
  }

  void _goTo(int index) {
    _pageController.animateToPage(index, duration: const Duration(milliseconds: 350), curve: Curves.easeOutCubic);
  }

  void _onPageChanged(int i) {
    setState(() => _currentPage = i);
    if (_chipScroll.hasClients) {
      final target = (i * 92.0 - 120).clamp(0.0, _chipScroll.position.maxScrollExtent);
      _chipScroll.animateTo(target, duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
    }
  }

  String get _lang => Localizations.localeOf(context).languageCode;

  /// [index] numaralı bölüm kaçıncı şavt (şavt değilse 0).
  int _savtNo(int index) =>
      widget.bolumler[index].isZikirmatik ? widget.bolumler.take(index + 1).where((b) => b.isZikirmatik).length : 0;

  /// Dile göre kısa başlık: Başlangıç, 1. Şavt … Bitiş.
  String _kisaBaslik(int index) {
    final l = context.l10n;
    if (widget.bolumler[index].isZikirmatik) return l.dualarSavtShort(_savtNo(index));
    return index == 0 ? l.dualarStartShort : l.dualarEndShort;
  }

  void incrementCount() {
    final l = context.l10n;
    if (_savtSayisi >= _toplamSavt) {
      _showSnack(l.dualarSavtCompletedReset(_toplamSavt));
      return;
    }
    HapticFeedback.mediumImpact();
    setState(() => _savtSayisi++);
    // Tamamlanan şavttan sonraki bölüme geç.
    var next = -1;
    for (var i = 0; i < widget.bolumler.length; i++) {
      if (_savtNo(i) == _savtSayisi + 1) {
        next = i;
        break;
      }
    }
    if (next >= 0) {
      _goTo(next);
    } else {
      _goTo(widget.bolumler.length - 1);
      HapticFeedback.heavyImpact();
      _showSnack(l.dualarSavtCongrats(_toplamSavt));
    }
  }

  void _resetCount() {
    HapticFeedback.selectionClick();
    setState(() => _savtSayisi = 0);
    _goTo(0);
  }

  void _showSnack(String msg) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(msg)));
  }

  Future<String?> _pathFuture(String file) => _pathFutures.putIfAbsent(file, () => widget.getLocalPath(file));

  Future<void> _download(String file) async {
    setState(() => _indirilen = file);
    final err = await widget.downloadFile(context, file);
    if (!mounted) return;
    setState(() {
      _indirilen = null;
      _pathFutures.remove(file);
    });
    if (err != null) _showSnack(err);
  }

  @override
  Widget build(BuildContext context) {
    final bolum = widget.bolumler[_currentPage];
    final l = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          if (_gorselMod)
            Builder(
              builder: (context) => IconButton(
                tooltip: _arapcaGorsel ? l.dualarTurkishTranslation : l.dualarArabicText,
                icon: Icon(_arapcaGorsel ? Icons.translate : Icons.text_fields),
                onPressed: () {
                  if (!bolum.hasLanguageFiles) {
                    _showSnack(l.dualarNoLanguageOption);
                    return;
                  }
                  setState(() => _arapcaGorsel = !_arapcaGorsel);
                  _showSnack(_arapcaGorsel ? l.dualarArabicText : l.dualarTurkishTranslation);
                },
              ),
            ),
          IconButton(
            tooltip: _gorselMod ? l.dualarTextView : l.dualarBookPageView,
            icon: Icon(_gorselMod ? Icons.notes_rounded : Icons.image_outlined),
            onPressed: () => setState(() => _gorselMod = !_gorselMod),
          ),
        ],
      ),
      body: Column(
        children: [
          _buildSelector(),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: widget.bolumler.length,
              onPageChanged: _onPageChanged,
              itemBuilder: (context, i) => _buildDuaCard(i),
            ),
          ),
          _buildCounter(),
        ],
      ),
    );
  }

  Widget _buildSelector() {
    return Container(
      color: AppColors.primary,
      padding: const EdgeInsets.only(bottom: 12, top: 4),
      height: 56,
      child: ListView.separated(
        controller: _chipScroll,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: widget.bolumler.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (context, i) {
          final selected = i == _currentPage;
          return GestureDetector(
            onTap: () => _goTo(i),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 220),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: selected ? Colors.white : Colors.white.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                _kisaBaslik(i),
                style: TextStyle(
                  color: selected ? AppColors.primary : Colors.white,
                  fontWeight: selected ? FontWeight.bold : FontWeight.w500,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildDuaCard(int index) {
    final bolum = widget.bolumler[index];
    final rtl = Directionality.of(context) == TextDirection.rtl;
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [BoxShadow(color: Color(0x1A000000), blurRadius: 16, offset: Offset(0, 6))],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 18, 20, 18),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [AppColors.primary, AppColors.primaryDark]),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.accent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        bolum.isZikirmatik ? '${_savtNo(index)}' : (index == 0 ? (rtl ? '◀' : '▶') : '✓'),
                        style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Text(
                        bolum.titleFor(_lang),
                        style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              if (_gorselMod) _buildImageContent(bolum) else ..._buildTextContent(bolum),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildTextContent(DuaBolumu bolum) {
    final aciklama = bolum.aciklamaFor(_lang);
    return [
      if (aciklama != null)
        Container(
          margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: AppColors.primaryLight,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.info_outline, color: AppColors.primary, size: 20),
              const SizedBox(width: 10),
              Expanded(child: Text(aciklama, style: AppTextStyles.body.copyWith(height: 1.45))),
            ],
          ),
        ),
      for (var i = 0; i < bolum.dualar.length; i++) ...[
        if (i > 0) const Divider(height: 1, indent: 16, endIndent: 16),
        _buildDua(bolum.dualar[i]),
      ],
    ];
  }

  Widget _buildDua(DuaMetni dua) {
    final l = context.l10n;
    final lang = _lang;
    final baslik = dua.baslikFor(lang);
    final okunus = dua.okunusFor(lang);
    final anlam = dua.anlamFor(lang);
    final kaynak = dua.kaynakFor(lang);
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 18, 20, 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (baslik != null) ...[
            Text(baslik, style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold, fontSize: 14)),
            const SizedBox(height: 10),
          ],
          if (dua.arapca != null) ...[
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(dua.arapca!, textAlign: TextAlign.center, style: AppTextStyles.arabic.copyWith(fontSize: 26)),
            ),
            const SizedBox(height: 14),
          ],
          if (okunus != null) ...[
            _label(l.dualarReading),
            Text(
              okunus,
              style: const TextStyle(fontSize: 15.5, fontStyle: FontStyle.italic, color: AppColors.primaryDark, height: 1.5),
            ),
            const SizedBox(height: 12),
          ],
          if (anlam != null) ...[
            _label(l.dualarMeaning),
            Text(anlam, style: AppTextStyles.body.copyWith(fontSize: 15, height: 1.5)),
          ],
          if (kaynak != null) ...[
            const SizedBox(height: 8),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text('— $kaynak', style: AppTextStyles.muted.copyWith(fontSize: 12)),
            ),
          ],
        ],
      ),
    );
  }

  Widget _label(String text) => Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: Text(
          _lang == 'tr' ? text.replaceAll('i', 'İ').toUpperCase() : text.toUpperCase(),
          style: const TextStyle(fontSize: 11, letterSpacing: 1.1, fontWeight: FontWeight.w700, color: AppColors.textMuted),
        ),
      );

  Widget _buildImageContent(DuaBolumu bolum) {
    final files = bolum.files.isNotEmpty ? bolum.files : (_arapcaGorsel ? bolum.arabicFiles : bolum.turkishFiles);
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(children: [for (final f in files) _buildImage(f)]),
    );
  }

  Widget _buildImage(String file) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: FutureBuilder<String?>(
        future: _pathFuture(file),
        builder: (context, snap) {
          if (snap.connectionState != ConnectionState.done) {
            return const SizedBox(height: 200, child: Center(child: CircularProgressIndicator()));
          }
          final path = snap.data;
          if (path == null) return _buildDownloadWidget(file);
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.file(
              File(path),
              fit: BoxFit.contain,
              errorBuilder: (_, _, _) => _buildDownloadWidget(file),
            ),
          );
        },
      ),
    );
  }

  Widget _buildDownloadWidget(String file) {
    final loading = _indirilen == file;
    final l = context.l10n;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        children: [
          const Icon(Icons.cloud_download_outlined, size: 48, color: AppColors.primary),
          const SizedBox(height: 8),
          Text(l.dualarImageNotDownloaded, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
          const SizedBox(height: 4),
          Text(l.dualarTextViewOffline, style: AppTextStyles.muted, textAlign: TextAlign.center),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: loading ? null : () => _download(file),
                icon: loading
                    ? const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                    : const Icon(Icons.download_rounded),
                label: Text(loading ? l.dualarDownloading : l.dualarDownload),
              ),
              const SizedBox(width: 8),
              TextButton(
                onPressed: loading
                    ? null
                    : () async {
                        await ContentDownloadDialog.show(context);
                        if (mounted) setState(_pathFutures.clear);
                      },
                child: Text(l.dualarDownloadAll),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCounter() {
    final done = _savtSayisi >= _toplamSavt;
    final l = context.l10n;
    return SafeArea(
      top: false,
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Color(0x14000000), blurRadius: 10, offset: Offset(0, -2))],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l.dualarSavtCounter, style: AppTextStyles.muted),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      Text('$_savtSayisi / $_toplamSavt',
                          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.text)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: LinearProgressIndicator(
                            value: _toplamSavt == 0 ? 0 : _savtSayisi / _toplamSavt,
                            minHeight: 8,
                            backgroundColor: AppColors.primaryLight,
                            valueColor: AlwaysStoppedAnimation(done ? AppColors.accent : AppColors.primary),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            ElevatedButton.icon(
              onPressed: incrementCount,
              onLongPress: _resetCount,
              style: ElevatedButton.styleFrom(
                backgroundColor: done ? AppColors.emerald800 : AppColors.primary,
                padding: const EdgeInsets.symmetric(horizontal: 18),
              ),
              icon: Icon(done ? Icons.check_circle : Icons.add_circle_outline),
              label: Text(done ? l.dualarCompleted : l.dualarSavtPlusOne),
            ),
            IconButton(
              tooltip: l.dualarReset,
              onPressed: _savtSayisi == 0 ? null : _resetCount,
              icon: const Icon(Icons.restart_alt_rounded),
            ),
          ],
        ),
      ),
    );
  }
}

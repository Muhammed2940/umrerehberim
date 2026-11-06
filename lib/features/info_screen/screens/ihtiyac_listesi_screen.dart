import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../data/ihtiyac_listesi_data.dart';
import '../widgets/info_widgets.dart';

/// Kullanıcının kendi eklediği madde.
class _OzelMadde {
  _OzelMadde({required this.id, required this.title, required this.categoryId});

  final String id;
  final String title;
  final String categoryId;

  Map<String, dynamic> toJson() => {'id': id, 'title': title, 'cat': categoryId};

  static _OzelMadde fromJson(Map<String, dynamic> j) =>
      _OzelMadde(id: j['id'] as String, title: j['title'] as String, categoryId: (j['cat'] as String?) ?? _digerId);
}

const _digerId = 'diger';
const _kChecked = 'ihtiyac_listesi_checked';
const _kCustom = 'ihtiyac_listesi_custom';

/// Kategorili umre ihtiyaç listesi. İşaretler ve kullanıcı maddeleri SharedPreferences'ta saklanır.
class IhtiyacListesiScreen extends StatefulWidget {
  const IhtiyacListesiScreen({super.key});

  @override
  State<IhtiyacListesiScreen> createState() => _IhtiyacListesiScreenState();
}

class _IhtiyacListesiScreenState extends State<IhtiyacListesiScreen> {
  final Set<String> _checked = {};
  final List<_OzelMadde> _ozel = [];
  bool _yuklendi = false;

  @override
  void initState() {
    super.initState();
    _yukle();
  }

  Future<void> _yukle() async {
    final p = await SharedPreferences.getInstance();
    final checked = p.getStringList(_kChecked) ?? const [];
    final raw = p.getString(_kCustom);
    final ozel = <_OzelMadde>[];
    if (raw != null) {
      try {
        for (final e in jsonDecode(raw) as List) {
          ozel.add(_OzelMadde.fromJson(Map<String, dynamic>.from(e as Map)));
        }
      } catch (_) {
        // Bozuk kayıt: yok say.
      }
    }
    if (!mounted) return;
    setState(() {
      _checked
        ..clear()
        ..addAll(checked);
      _ozel
        ..clear()
        ..addAll(ozel);
      _yuklendi = true;
    });
  }

  Future<void> _kaydet() async {
    final p = await SharedPreferences.getInstance();
    await p.setStringList(_kChecked, _checked.toList());
    await p.setString(_kCustom, jsonEncode(_ozel.map((e) => e.toJson()).toList()));
  }

  void _degistir(String id, bool v) {
    setState(() => v ? _checked.add(id) : _checked.remove(id));
    _kaydet();
  }

  List<String> get _tumIdler => [
        for (final c in kNeedCategories)
          for (final i in c.items) i.id,
        for (final o in _ozel) o.id,
      ];

  List<({String id, String title, IconData icon})> get _kategoriler => [
        for (final c in kNeedCategories) (id: c.id, title: c.title.of(context), icon: c.icon),
        (id: _digerId, title: context.l10n.infoNeedOther, icon: Icons.more_horiz_rounded),
      ];

  Future<void> _maddeEkle() async {
    final ctrl = TextEditingController();
    var kategori = _digerId;
    final t = context.l10n;
    final sonuc = await showDialog<({String title, String cat})>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setD) => AlertDialog(
          title: Text(t.infoNeedAddItem),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: ctrl,
                autofocus: true,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(labelText: t.infoNeedItemName, hintText: t.infoNeedItemExample),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                initialValue: kategori,
                isExpanded: true,
                decoration: InputDecoration(labelText: t.infoNeedCategory),
                items: [
                  for (final k in _kategoriler)
                    DropdownMenuItem(value: k.id, child: Text(k.title, overflow: TextOverflow.ellipsis)),
                ],
                onChanged: (v) => setD(() => kategori = v ?? _digerId),
              ),
            ],
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(ctx), child: Text(t.commonCancel)),
            FilledButton(
              onPressed: () {
                final ad = ctrl.text.trim();
                if (ad.isEmpty) return;
                Navigator.pop(ctx, (title: ad, cat: kategori));
              },
              child: Text(t.infoNeedAdd),
            ),
          ],
        ),
      ),
    );
    ctrl.dispose();
    if (sonuc == null) return;
    setState(() => _ozel.add(_OzelMadde(
          id: 'ozel_${DateTime.now().microsecondsSinceEpoch}',
          title: sonuc.title,
          categoryId: sonuc.cat,
        )));
    _kaydet();
  }

  void _maddeSil(_OzelMadde m) {
    setState(() {
      _ozel.remove(m);
      _checked.remove(m.id);
    });
    _kaydet();
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(context.l10n.infoNeedItemDeleted(m.title))));
  }

  Future<void> _sifirla() async {
    final t = context.l10n;
    final onay = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(t.infoNeedResetTitle),
        content: Text(t.infoNeedResetBody),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: Text(t.commonCancel)),
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(t.infoNeedResetChecksOnly)),
          FilledButton(onPressed: () => Navigator.pop(ctx, true), child: Text(t.infoNeedResetAll)),
        ],
      ),
    );
    if (onay == null) return;
    setState(() {
      _checked.clear();
      if (onay) _ozel.clear();
    });
    _kaydet();
  }

  @override
  Widget build(BuildContext context) {
    final idler = _tumIdler;
    final hazir = idler.where(_checked.contains).length;
    final toplam = idler.length;
    final t = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(t.infoNeedListTitle),
        actions: [
          IconButton(tooltip: t.infoNeedReset, onPressed: _sifirla, icon: const Icon(Icons.restart_alt_rounded)),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _maddeEkle,
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.surface,
        icon: const Icon(Icons.add_rounded),
        label: Text(t.infoNeedAddItem),
      ),
      body: !_yuklendi
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 96),
              children: [
                _ilerlemeKarti(hazir, toplam),
                for (final k in _kategoriler) _kategoriKarti(k.id, k.title, k.icon),
                const SizedBox(height: 4),
                Text(
                  t.infoNeedDisclaimer,
                  style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                ),
              ],
            ),
    );
  }

  Widget _ilerlemeKarti(int hazir, int toplam) {
    final oran = toplam == 0 ? 0.0 : hazir / toplam;
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(gradient: AppColors.primaryGradient, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.luggage_rounded, color: AppColors.mint, size: 26),
              const SizedBox(width: 10),
              Expanded(
                child: Text(context.l10n.infoNeedReadyCount(hazir, toplam),
                    style: const TextStyle(color: AppColors.surface, fontSize: 20, fontWeight: FontWeight.w800)),
              ),
              Text(context.l10n.infoNeedPercent((oran * 100).round()),
                  style: const TextStyle(color: AppColors.mint, fontSize: 16, fontWeight: FontWeight.w700)),
            ],
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: oran,
              minHeight: 8,
              backgroundColor: AppColors.surface.withValues(alpha: 0.2),
              valueColor: const AlwaysStoppedAnimation(AppColors.accent),
            ),
          ),
          if (hazir == toplam && toplam > 0) ...[
            const SizedBox(height: 10),
            Text(context.l10n.infoNeedAllReady, style: const TextStyle(color: AppColors.mint)),
          ],
        ],
      ),
    );
  }

  Widget _kategoriKarti(String id, String title, IconData icon) {
    final hazirMaddeler = id == _digerId
        ? const <NeedItem>[]
        : kNeedCategories.firstWhere((c) => c.id == id).items;
    final ozel = _ozel.where((o) => o.categoryId == id).toList();
    if (hazirMaddeler.isEmpty && ozel.isEmpty && id != _digerId) return const SizedBox.shrink();
    final idler = [for (final i in hazirMaddeler) i.id, for (final o in ozel) o.id];
    final hazir = idler.where(_checked.contains).length;

    return ExpandableInfoCard(
      icon: icon,
      title: title,
      subtitle: idler.isEmpty ? context.l10n.infoNeedAddYourOwn : context.l10n.infoNeedReadyCount(hazir, idler.length),
      initiallyExpanded: id == kNeedCategories.first.id,
      children: [
        for (final i in hazirMaddeler) _satir(id: i.id, title: i.title.of(context), hint: i.hint?.of(context)),
        for (final o in ozel) _satir(id: o.id, title: o.title, ozel: o),
        if (idler.isEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(context.l10n.infoNeedEmpty,
                style: const TextStyle(fontSize: 13, color: AppColors.textMuted)),
          ),
      ],
    );
  }

  Widget _satir({required String id, required String title, String? hint, _OzelMadde? ozel}) {
    final secili = _checked.contains(id);
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () => _degistir(id, !secili),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Checkbox(
              value: secili,
              activeColor: AppColors.primary,
              visualDensity: VisualDensity.compact,
              onChanged: (v) => _degistir(id, v ?? false),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 14.5,
                        color: secili ? AppColors.textMuted : AppColors.text,
                        decoration: secili ? TextDecoration.lineThrough : null,
                      ),
                    ),
                    if (hint != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(hint, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                      ),
                    if (ozel != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: InfoChip(context.l10n.infoNeedMyItem, icon: Icons.person_rounded),
                      ),
                  ],
                ),
              ),
            ),
            if (ozel != null)
              IconButton(
                tooltip: context.l10n.commonDelete,
                onPressed: () => _maddeSil(ozel),
                icon: const Icon(Icons.delete_outline_rounded, color: AppColors.error),
              ),
          ],
        ),
      ),
    );
  }
}

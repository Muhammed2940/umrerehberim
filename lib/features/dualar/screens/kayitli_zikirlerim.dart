import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_theme.dart';
import '../data/zikir_storage.dart';
import '../models/model_zikirlerim.dart';
import 'zikirmatik.dart';

/// Kayıtlı zikirler listesi: devam et, düzenle, sil.
///
/// [secimModu] true ise (Zikirmatik içinden açıldığında) "Devam Et" seçilen
/// zikri geri döndürür; değilse Zikirmatik'i o zikirle açar.
class Zikirlerim extends StatefulWidget {
  const Zikirlerim({super.key, this.secimModu = false});

  final bool secimModu;

  @override
  State<Zikirlerim> createState() => _ZikirlerimState();
}

class _ZikirlerimState extends State<Zikirlerim> {
  List<ModelZikirlerim> _liste = [];
  bool _yukleniyor = true;
  final TextEditingController _adController = TextEditingController();
  final TextEditingController _sayiController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _yukle();
  }

  @override
  void dispose() {
    _adController.dispose();
    _sayiController.dispose();
    super.dispose();
  }

  Future<void> _yukle() async {
    final l = await ZikirStorage.load();
    if (!mounted) return;
    setState(() {
      _liste = l;
      _yukleniyor = false;
    });
  }

  Future<void> _devamEt(ModelZikirlerim z) async {
    if (widget.secimModu) {
      Navigator.pop(context, z);
      return;
    }
    await Navigator.push(context, MaterialPageRoute(builder: (_) => ZikirCek(devamZikir: z)));
    _yukle();
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l.dualarSavedZikirs),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        actions: [
          if (!widget.secimModu)
            IconButton(
              tooltip: l.dualarZikirmatik,
              icon: const Icon(Icons.touch_app_outlined),
              onPressed: () async {
                await Navigator.push(context, MaterialPageRoute(builder: (_) => const ZikirCek()));
                _yukle();
              },
            ),
        ],
      ),
      body: _yukleniyor ? const Center(child: CircularProgressIndicator()) : getBody(),
    );
  }

  Widget getBody() {
    final l = context.l10n;
    if (_liste.isEmpty) {
      return EmptyStateWidget(
        icon: Icons.bookmarks_outlined,
        message: l.dualarNoSavedZikir,
        subtitle: l.dualarNoSavedZikirHint,
      );
    }
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
      itemCount: _liste.length,
      itemBuilder: (context, i) {
        final z = _liste[i];
        return Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Card(
            child: ListTile(
              contentPadding: const EdgeInsetsDirectional.fromSTEB(16, 6, 4, 6),
              onTap: () => menuAc(z),
              leading: CircleAvatar(
                radius: 26,
                backgroundColor: AppColors.primaryLight,
                child: FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Text('${z.zikirSayisi}',
                        style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                ),
              ),
              title: Text(z.zikirAdi, style: AppTextStyles.cardTitle),
              subtitle: Text(z.zikirTarihi, style: AppTextStyles.muted),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    tooltip: l.dualarContinue,
                    icon: const Icon(Icons.play_circle_fill_rounded, color: AppColors.primary, size: 30),
                    onPressed: () => _devamEt(z),
                  ),
                  IconButton(
                    tooltip: l.dualarOptions,
                    icon: const Icon(Icons.more_vert),
                    onPressed: () => menuAc(z),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void menuAc(ModelZikirlerim z) {
    showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      builder: (ctx) => SafeArea(
        child: SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                child: Text(z.zikirAdi, style: AppTextStyles.sectionTitle, textAlign: TextAlign.center),
              ),
              ListTile(
                leading: const Icon(Icons.play_arrow_rounded),
                title: Text(ctx.l10n.dualarContinue),
                subtitle: Text(ctx.l10n.dualarContinueFrom(z.zikirSayisi)),
                onTap: () {
                  Navigator.pop(ctx);
                  _devamEt(z);
                },
              ),
              ListTile(
                leading: const Icon(Icons.edit_outlined),
                title: Text(ctx.l10n.commonEdit),
                onTap: () {
                  Navigator.pop(ctx);
                  zikirDuzenle(z);
                },
              ),
              ListTile(
                leading: const Icon(Icons.delete_outline, color: AppColors.error),
                title: Text(ctx.l10n.commonDelete, style: const TextStyle(color: AppColors.error)),
                onTap: () {
                  Navigator.pop(ctx);
                  silmeDialog(z);
                },
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> silmeDialog(ModelZikirlerim z) async {
    final onay = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(ctx.l10n.dualarDeleteZikirTitle),
        content: Text(ctx.l10n.dualarDeleteZikirConfirm(z.zikirAdi)),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(ctx.l10n.commonCancel)),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(ctx.l10n.commonDelete, style: const TextStyle(color: AppColors.error)),
          ),
        ],
      ),
    );
    if (onay != true) return;
    final yeni = List<ModelZikirlerim>.of(_liste)..removeWhere((e) => e.id == z.id);
    await ZikirStorage.save(yeni);
    if (!mounted) return;
    setState(() => _liste = yeni);
  }

  Future<void> zikirDuzenle(ModelZikirlerim z) async {
    _adController.text = z.zikirAdi;
    _sayiController.text = '${z.zikirSayisi}';
    final kaydet = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(ctx.l10n.dualarEditZikirTitle),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _adController,
              decoration: InputDecoration(labelText: ctx.l10n.dualarZikirName),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _sayiController,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(5)],
              decoration: InputDecoration(labelText: ctx.l10n.dualarZikirCount),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(ctx.l10n.commonCancel)),
          TextButton(onPressed: () => Navigator.pop(ctx, true), child: Text(ctx.l10n.commonSave)),
        ],
      ),
    );
    if (kaydet != true) return;
    final ad = _adController.text.trim();
    final sayi = int.tryParse(_sayiController.text.trim());
    if (ad.isEmpty || sayi == null) {
      Fluttertoast.showToast(msg: l10n.dualarFillAllFields);
      return;
    }
    final guncel = ModelZikirlerim(
      id: z.id,
      zikirAdi: ad,
      zikirSayisi: sayi,
      zikirTarihi: DateFormat('yyyy-MM-dd - kk:mm').format(DateTime.now()),
    );
    final yeni = [for (final e in _liste) e.id == z.id ? guncel : e];
    await ZikirStorage.save(yeni);
    if (!mounted) return;
    setState(() => _liste = yeni);
  }
}

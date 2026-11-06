import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_theme.dart';
import '../providers/say_dualari_download_provider.dart';
import '../providers/tavaf_dualari_download_provider.dart';

/// Sa'y ve Tavaf dua görsellerini toplu indirme diyaloğu.
/// (Kur'an metni uygulamaya gömülüdür, indirme gerektirmez.)
class ContentDownloadDialog extends StatefulWidget {
  const ContentDownloadDialog({super.key});

  static Future<void> show(BuildContext context) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (_) => const ContentDownloadDialog(),
    );
  }

  @override
  State<ContentDownloadDialog> createState() => _ContentDownloadDialogState();
}

enum _Asama { secim, indiriliyor, hata }

class _ContentDownloadDialogState extends State<ContentDownloadDialog> {
  _Asama _asama = _Asama.secim;
  bool _kontrolEdiliyor = true;
  bool _sayDone = false, _tavafDone = false;
  bool _saySec = true, _tavafSec = true;
  String? _hata;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _checkDownloadStatus());
  }

  Future<void> _checkDownloadStatus() async {
    try {
      final s = await context.read<SayDualariDownloadProvider>().areAllFilesDownloaded();
      if (!mounted) return;
      final t = await context.read<TavafDualariDownloadProvider>().areAllFilesDownloaded();
      if (!mounted) return;
      setState(() {
        _sayDone = s;
        _tavafDone = t;
        _saySec = !s;
        _tavafSec = !t;
      });
    } catch (e) {
      debugPrint('Error checking download status: $e');
    } finally {
      if (mounted) setState(() => _kontrolEdiliyor = false);
    }
  }

  bool get _secimVar => (_saySec && !_sayDone) || (_tavafSec && !_tavafDone);

  Future<void> _startDownload() async {
    final say = context.read<SayDualariDownloadProvider>();
    final tavaf = context.read<TavafDualariDownloadProvider>();
    final l = context.l10n;
    setState(() {
      _asama = _Asama.indiriliyor;
      _hata = null;
    });

    final hatalar = <String>[];
    if (_tavafSec && !_tavafDone) {
      if (await tavaf.downloadAllFiles()) {
        _tavafDone = true;
      } else {
        hatalar.add(l.dualarDownloadItemFailed(l.dualarDlTavaf, tavaf.errorMessage ?? ''));
      }
    }
    if (_saySec && !_sayDone) {
      if (await say.downloadAllFiles()) {
        _sayDone = true;
      } else {
        hatalar.add(l.dualarDownloadItemFailed(l.dualarDlSay, say.errorMessage ?? ''));
      }
    }
    if (!mounted) return;
    if (hatalar.isEmpty) {
      final messenger = ScaffoldMessenger.maybeOf(context);
      Navigator.of(context).pop();
      messenger?.showSnackBar(
        SnackBar(content: Text(l.dualarContentDownloadSuccess), backgroundColor: AppColors.success),
      );
    } else {
      setState(() {
        _asama = _Asama.hata;
        _hata = hatalar.join('\n');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Builder(
          builder: (context) => switch (_asama) {
            _Asama.indiriliyor => _buildDownloadingState(),
            _Asama.hata => _buildErrorState(),
            _Asama.secim => _buildSelectionState(),
          },
        ),
      ),
    );
  }

  Widget _baslik(IconData icon, String text) => Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: AppColors.primaryLight, borderRadius: BorderRadius.circular(12)),
            child: Icon(icon, color: AppColors.primary),
          ),
          const SizedBox(width: 12),
          Expanded(child: Text(text, style: AppTextStyles.sectionTitle)),
        ],
      );

  Widget _buildSelectionState() {
    final say = context.read<SayDualariDownloadProvider>();
    final tavaf = context.read<TavafDualariDownloadProvider>();
    final l = context.l10n;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _baslik(Icons.cloud_download_outlined, l.dualarContentDownloadTitle),
        const SizedBox(height: 8),
        Text(l.dualarDownloadDialogInfo, style: AppTextStyles.muted),
        const SizedBox(height: 12),
        if (_kontrolEdiliyor)
          const Padding(padding: EdgeInsets.all(24), child: Center(child: CircularProgressIndicator()))
        else ...[
          _buildCheckboxItem(l.dualarDlTavaf, l.dualarImageCount(tavaf.totalFiles), _tavafDone, _tavafSec,
              (v) => setState(() => _tavafSec = v ?? false)),
          _buildCheckboxItem(l.dualarDlSay, l.dualarImageCount(say.totalFiles), _sayDone, _saySec,
              (v) => setState(() => _saySec = v ?? false)),
        ],
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(l.commonClose)),
            ),
            const SizedBox(width: 8),
            Expanded(
              flex: 2,
              child: ElevatedButton.icon(
                onPressed: _kontrolEdiliyor || !_secimVar ? null : _startDownload,
                icon: const Icon(Icons.download_rounded),
                label: Text(l.dualarDownload),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCheckboxItem(String title, String subtitle, bool done, bool value, ValueChanged<bool?> onChanged) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: done ? AppColors.primaryLight : AppColors.background,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsetsDirectional.only(start: 14, end: 4),
        title: Text(title, style: AppTextStyles.cardTitle),
        subtitle: Text(done ? context.l10n.dualarDownloaded : subtitle,
            style: TextStyle(color: done ? AppColors.success : AppColors.textMuted, fontSize: 12.5)),
        trailing: done
            ? const Padding(
                padding: EdgeInsetsDirectional.only(end: 10),
                child: Icon(Icons.check_circle, color: AppColors.success),
              )
            : Checkbox(value: value, onChanged: onChanged),
        onTap: done ? null : () => onChanged(!value),
      ),
    );
  }

  Widget _buildErrorState() {
    final l = context.l10n;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.error_outline, size: 56, color: AppColors.error),
        const SizedBox(height: 12),
        Text(l.dualarDownloadFailedTitle, style: AppTextStyles.sectionTitle),
        const SizedBox(height: 8),
        Text(_hata ?? '', textAlign: TextAlign.center, style: AppTextStyles.muted),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(child: TextButton(onPressed: () => Navigator.of(context).pop(), child: Text(l.commonClose))),
            const SizedBox(width: 8),
            Expanded(child: ElevatedButton(onPressed: _startDownload, child: Text(l.commonRetry))),
          ],
        ),
      ],
    );
  }

  Widget _buildDownloadingState() {
    return Consumer2<SayDualariDownloadProvider, TavafDualariDownloadProvider>(
      builder: (context, say, tavaf, _) {
        final l = context.l10n;
        final items = <(String, double, bool)>[
          if (_tavafSec) (l.dualarDlTavaf, tavaf.progress, tavaf.isDownloading),
          if (_saySec) (l.dualarDlSay, say.progress, say.isDownloading),
        ];
        final genel = items.isEmpty ? 0.0 : items.map((e) => e.$2).reduce((a, b) => a + b) / items.length;
        final aktif = [tavaf, say].where((p) => p.isDownloading).firstOrNull;
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _baslik(Icons.downloading_rounded, l.dualarDownloadingTitle),
            const SizedBox(height: 16),
            Text(l.dualarOverallProgress((genel * 100).round()), style: AppTextStyles.cardTitle),
            const SizedBox(height: 6),
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: LinearProgressIndicator(
                value: genel,
                minHeight: 10,
                backgroundColor: AppColors.primaryLight,
                valueColor: const AlwaysStoppedAnimation(AppColors.primary),
              ),
            ),
            const SizedBox(height: 16),
            for (final it in items) ...[
              Text(it.$1, style: AppTextStyles.body.copyWith(fontWeight: it.$3 ? FontWeight.w700 : FontWeight.w400)),
              const SizedBox(height: 4),
              LinearProgressIndicator(
                value: it.$2,
                backgroundColor: AppColors.divider,
                valueColor: const AlwaysStoppedAnimation(AppColors.accent),
              ),
              const SizedBox(height: 10),
            ],
            if (aktif != null) Text(aktif.statusMessage, style: AppTextStyles.muted),
          ],
        );
      },
    );
  }
}

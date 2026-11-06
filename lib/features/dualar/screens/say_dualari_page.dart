import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/services/say_dualari_storage_service.dart';
import '../data/say_dualari_data.dart';
import '../providers/say_dualari_download_provider.dart';
import '../widgets/dua_sayfasi.dart';

/// Sa'y (Safa ile Merve arası) duaları.
class SayDualariPage extends StatelessWidget {
  const SayDualariPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DuaSayfasi(
      title: context.l10n.dualarSayPageTitle,
      bolumler: sayDualari,
      getLocalPath: SayDualariStorageService.instance.getLocalFilePathIfExists,
      downloadFile: (context, file) async {
        final p = context.read<SayDualariDownloadProvider>();
        final msg = context.l10n;
        final ok = await p.downloadSingleFile(file);
        return ok ? null : msg.dualarFileDownloadError(p.errorMessage ?? '');
      },
    );
  }
}

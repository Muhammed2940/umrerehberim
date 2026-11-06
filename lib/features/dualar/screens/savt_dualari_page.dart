import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/services/tavaf_dualari_storage_service.dart';
import '../data/tavaf_dualari_data.dart';
import '../providers/tavaf_dualari_download_provider.dart';
import '../widgets/dua_sayfasi.dart';

/// Tavaf (şavt) duaları.
class SavtDualariPage extends StatelessWidget {
  const SavtDualariPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DuaSayfasi(
      title: context.l10n.dualarTavafPageTitle,
      bolumler: tavafDualari,
      getLocalPath: TavafDualariStorageService.instance.getLocalFilePathIfExists,
      downloadFile: (context, file) async {
        final p = context.read<TavafDualariDownloadProvider>();
        final msg = context.l10n;
        final ok = await p.downloadSingleFile(file);
        return ok ? null : msg.dualarFileDownloadError(p.errorMessage ?? '');
      },
    );
  }
}

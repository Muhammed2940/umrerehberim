import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../providers/admin_provider.dart';
import '../providers/currency_provider.dart';
import '../utils/admin_helpers.dart';
import '../widgets/doviz/delete_dialog.dart';
import '../widgets/doviz/edit_dialog.dart';

class CurrencyPage extends StatefulWidget {
  const CurrencyPage({super.key});

  @override
  State<CurrencyPage> createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  @override
  void initState() {
    super.initState();
    ensureAdminLoaded(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      context.read<CurrencyProvider>().load(adminAgencyId(context));
    });
  }

  @override
  Widget build(BuildContext context) {
    context.watch<AdminProvider>();
    final agencyId = adminAgencyId(context);
    final cp = context.watch<CurrencyProvider>();

    final t = context.l10n;
    if (agencyId == null) {
      return Scaffold(
        appBar: AppBar(title: Text(t.adminMenuCurrency)),
        body: EmptyStateWidget(icon: Icons.business, message: t.adminNoAgencySelected),
      );
    }

    final existing = cp.currencies.map((c) => c.name.toUpperCase()).toSet();
    final suggestions = CurrencyProvider.defaults.where((d) => !existing.contains(d.$2)).toList();

    return Scaffold(
      appBar: AppBar(title: Text(t.adminMenuCurrency)),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCurrencyEditDialog(context),
        icon: const Icon(Icons.add),
        label: Text(t.adminCurrencyAdd),
      ),
      body: cp.isLoading && cp.currencies.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: () => cp.load(agencyId),
              child: ListView(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 96),
                children: [
                  if (suggestions.isNotEmpty) ...[
                    Text(t.adminCurrencyQuickAdd, style: const TextStyle(color: AppColors.textMuted)),
                    const SizedBox(height: 6),
                    Wrap(
                      spacing: 8,
                      children: [
                        for (final s in suggestions)
                          ActionChip(
                            avatar: Text(s.$1),
                            label: Text(s.$2),
                            onPressed: () => showCurrencyEditDialog(context, emoji: s.$1, name: s.$2),
                          ),
                      ],
                    ),
                    const SizedBox(height: 12),
                  ],
                  if (cp.currencies.isEmpty)
                    EmptyStateWidget(icon: Icons.currency_exchange, message: t.adminCurrencyEmpty)
                  else
                    for (final c in cp.currencies)
                      Card(
                        child: ListTile(
                          leading: Text(c.emoji, style: const TextStyle(fontSize: 30)),
                          title: Text(c.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                          subtitle: Text('1 ${c.name} = ${c.value} ₺'),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                tooltip: t.commonEdit,
                                icon: const Icon(Icons.edit, color: AppColors.primary),
                                onPressed: () => showCurrencyEditDialog(context, currency: c),
                              ),
                              IconButton(
                                tooltip: t.commonDelete,
                                icon: const Icon(Icons.delete, color: AppColors.error),
                                onPressed: () async {
                                  if (await showCurrencyDeleteDialog(context, c)) await cp.delete(c);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                ],
              ),
            ),
    );
  }
}

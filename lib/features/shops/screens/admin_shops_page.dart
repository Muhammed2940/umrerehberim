import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../admin/providers/admin_provider.dart';
import '../../admin/widgets/no_access_screen.dart';
import '../models/shop_model.dart';
import '../providers/shop_service.dart';
import '../widgets/shop_widgets.dart';

/// Yönetici: Anlaşmalı Dükkanlar listesi (`/admin/shops`).
/// Sürükleyerek sırala, aktif/pasif, düzenle, sil.
class ShopsAdminPage extends StatefulWidget {
  const ShopsAdminPage({super.key});

  @override
  State<ShopsAdminPage> createState() => _ShopsAdminPageState();
}

class _ShopsAdminPageState extends State<ShopsAdminPage> {
  final _service = ShopService.instance;
  List<ShopModel> _editable = [];
  List<ShopModel> _readOnly = [];
  bool _loading = true;
  bool _loadFailed = false;

  bool get _isSuper => context.read<AppStateProvider>().isSuperAdmin;
  String? get _agencyId => context.read<AdminProvider>().agencyId;

  @override
  void initState() {
    super.initState();
    // Anlaşmalı dükkanlar yalnız süper admin.
    if (_isSuper) WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    setState(() {
      _loading = true;
      _loadFailed = false;
    });
    try {
      final list = await _service.forAdmin(isSuper: _isSuper, agencyId: _agencyId);
      if (!mounted) return;
      setState(() {
        _editable = list.where((s) => _isSuper || !s.isForAllAgencies).toList();
        _readOnly = list.where((s) => !_isSuper && s.isForAllAgencies).toList();
      });
    } catch (e) {
      debugPrint('ShopsAdminPage._load: $e');
      if (mounted) setState(() => _loadFailed = true);
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _openEditor([ShopModel? shop]) async {
    final saved = await Navigator.of(context).pushNamed('/admin/shops/edit', arguments: shop);
    if (saved == true) _load();
  }

  Future<void> _toggle(ShopModel s, bool v) async {
    final t = context.l10n;
    try {
      await _service.setActive(s.id, v);
      GlobalSnackbar.showSuccess(v ? t.shopsActivated(s.name) : t.shopsDeactivated(s.name));
      _load();
    } catch (e) {
      GlobalSnackbar.showError(t.shopsUpdateFailed('$e'));
    }
  }

  Future<void> _delete(ShopModel s) async {
    final t = context.l10n;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(t.shopsDeleteTitle),
        content: Text(t.shopsDeleteConfirm(s.name)),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(t.commonCancel)),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: TextButton.styleFrom(foregroundColor: AppColors.error),
            child: Text(t.commonDelete),
          ),
        ],
      ),
    );
    if (ok != true) return;
    try {
      await _service.delete(s.id);
      GlobalSnackbar.showSuccess(t.shopsDeleted);
      _load();
    } catch (e) {
      GlobalSnackbar.showError(t.shopsDeleteFailed('$e'));
    }
  }

  /// onReorderItem: newIndex, kaldırılan öğeye göre zaten düzeltilmiş gelir.
  Future<void> _reorder(int oldIndex, int newIndex) async {
    final list = [..._editable];
    list.insert(newIndex, list.removeAt(oldIndex));
    setState(() => _editable = list);
    try {
      await _service.saveOrder(list);
    } catch (e) {
      GlobalSnackbar.showError(l10n.shopsOrderSaveFailed('$e'));
      _load();
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    if (!_isSuper) return NoAccessScreen(title: t.shopsTitle);
    return Scaffold(
      appBar: AppBar(title: Text(t.shopsTitle)),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        onPressed: () => _openEditor(),
        icon: const Icon(Icons.add_business_rounded),
        label: Text(t.shopsAdd),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    final t = context.l10n;
    if (_loading && _editable.isEmpty && _readOnly.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_loadFailed || (_editable.isEmpty && _readOnly.isEmpty)) {
      return RefreshIndicator(
        onRefresh: _load,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            const SizedBox(height: 100),
            EmptyStateWidget(
              icon: Icons.storefront_outlined,
              message: _loadFailed ? t.shopsAdminLoadFailed : t.shopsEmpty,
              subtitle: _loadFailed ? null : t.shopsEmptyAdminHint,
            ),
          ],
        ),
      );
    }
    return RefreshIndicator(
      onRefresh: _load,
      child: ReorderableListView.builder(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 100),
        buildDefaultDragHandles: false,
        header: _editable.length > 1
            ? Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(t.shopsReorderHint, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
              )
            : null,
        footer: _readOnly.isEmpty
            ? null
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 16, 4, 8),
                    child: Text(t.shopsSharedSection,
                        style: const TextStyle(fontWeight: FontWeight.w700, color: AppColors.textMuted)),
                  ),
                  for (final s in _readOnly) _tile(s, readOnly: true),
                ],
              ),
        itemCount: _editable.length,
        onReorderItem: _reorder,
        itemBuilder: (_, i) => KeyedSubtree(
          key: ValueKey(_editable[i].id),
          child: _tile(_editable[i], index: i),
        ),
      ),
    );
  }

  Widget _badge(String text, Color color, IconData icon) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 12, color: color),
            const SizedBox(width: 4),
            Text(text, style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: color)),
          ],
        ),
      );

  Widget _tile(ShopModel s, {int? index, bool readOnly = false}) {
    final t = context.l10n;
    final sub = [
      shopCityLabel(context, s.city),
      s.discountPercent > 0 ? t.shopsDiscountPercentLower(s.discountPercent) : t.shopsSpecialPriceLower,
      if (_isSuper && s.isForAllAgencies) t.shopsAllAgencies,
    ].join(' · ');
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: readOnly ? null : () => _openEditor(s),
          child: Container(
            padding: const EdgeInsetsDirectional.fromSTEB(12, 10, 4, 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), boxShadow: shopCardShadow),
            child: Row(
              children: [
                Opacity(opacity: s.isActive ? 1 : 0.45, child: ShopLogo.of(s, size: 48)),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(s.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: s.isActive ? AppColors.text : AppColors.textMuted)),
                      const SizedBox(height: 2),
                      Text(sub, style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
                      const SizedBox(height: 4),
                      Wrap(
                        spacing: 6,
                        runSpacing: 4,
                        children: [
                          _badge(
                            s.ownerUid?.isNotEmpty == true ? t.adminEsnafBadgeYes : t.adminEsnafBadgeNo,
                            s.ownerUid?.isNotEmpty == true ? AppColors.success : AppColors.textMuted,
                            s.ownerUid?.isNotEmpty == true ? Icons.verified_user_rounded : Icons.person_off_outlined,
                          ),
                          if (s.commissionPercent > 0)
                            _badge(t.adminEsnafCommissionShort(s.commissionPercent), AppColors.primary,
                                Icons.account_balance_wallet_outlined),
                        ],
                      ),
                    ],
                  ),
                ),
                if (readOnly)
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: Icon(Icons.lock_outline, color: AppColors.textMuted, size: 20),
                  )
                else ...[
                  Switch(
                    value: s.isActive,
                    activeThumbColor: AppColors.primary,
                    onChanged: (v) => _toggle(s, v),
                  ),
                  PopupMenuButton<String>(
                    onSelected: (v) => v == 'edit' ? _openEditor(s) : _delete(s),
                    itemBuilder: (_) => [
                      PopupMenuItem(value: 'edit', child: Text(t.commonEdit)),
                      PopupMenuItem(
                          value: 'delete',
                          child: Text(t.commonDelete, style: const TextStyle(color: AppColors.error))),
                    ],
                  ),
                  if (index != null && _editable.length > 1)
                    ReorderableDragStartListener(
                      index: index,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                        child: Icon(Icons.drag_handle_rounded, color: AppColors.textMuted),
                      ),
                    ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

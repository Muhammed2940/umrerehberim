import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../data/hatim_service.dart';
import '../models/hatim_group.dart';

/// Yeni hatim grubu (argüman yok) veya düzenleme (argüman: [HatimGroup]).
/// Oluşturulunca yeni gid ile `pop` eder.
class HatimCreateScreen extends StatefulWidget {
  const HatimCreateScreen({super.key});

  @override
  State<HatimCreateScreen> createState() => _HatimCreateScreenState();
}

class _HatimCreateScreenState extends State<HatimCreateScreen> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _niyet = TextEditingController();
  String _unit = HatimGroup.unitCuz;
  bool _isPublic = true;
  DateTime? _deadline;
  bool _saving = false;
  HatimGroup? _editing;
  bool _initialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_initialized) return;
    _initialized = true;
    final arg = ModalRoute.of(context)?.settings.arguments;
    if (arg is HatimGroup) {
      _editing = arg;
      _name.text = arg.name;
      _niyet.text = arg.niyet;
      _unit = arg.unit;
      _isPublic = arg.isPublic;
      _deadline = arg.deadline;
    }
  }

  @override
  void dispose() {
    _name.dispose();
    _niyet.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _deadline ?? now.add(const Duration(days: 7)),
      firstDate: DateTime(now.year, now.month, now.day),
      lastDate: now.add(const Duration(days: 730)),
    );
    if (picked != null) setState(() => _deadline = picked);
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    final me = context.read<AppStateProvider>().currentUser;
    if (me == null) return;
    final l = context.l10n;
    setState(() => _saving = true);
    try {
      final service = HatimService();
      final g = _editing;
      if (g == null) {
        final gid = await service.create(
          me: me,
          name: _name.text,
          niyet: _niyet.text,
          unit: _unit,
          isPublic: _isPublic,
          deadline: _deadline,
        );
        GlobalSnackbar.showSuccess(l.hatimCreated);
        if (mounted) Navigator.pop(context, gid);
      } else {
        await service.edit(g, name: _name.text, niyet: _niyet.text, isPublic: _isPublic, deadline: _deadline);
        if (mounted) Navigator.pop(context, g.id);
      }
    } on HatimException catch (e) {
      GlobalSnackbar.showError(e.message);
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final editing = _editing != null;
    final locale = Localizations.localeOf(context).toString();
    return Scaffold(
      appBar: AppBar(title: Text(editing ? l.hatimEditTitle : l.hatimCreateTitle)),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 32),
            children: [
              _Card(
                child: Column(
                  children: [
                    TextFormField(
                      controller: _name,
                      maxLength: 60,
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration(
                        labelText: l.hatimFieldName,
                        hintText: l.hatimFieldNameHint,
                        prefixIcon: const Icon(Icons.groups_rounded),
                      ),
                      validator: (v) {
                        final t = (v ?? '').trim();
                        return t.length < 3 || t.length > 60 ? l.hatimNameInvalid : null;
                      },
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _niyet,
                      maxLength: 300,
                      minLines: 2,
                      maxLines: 4,
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration(
                        labelText: l.hatimFieldNiyet,
                        hintText: l.hatimFieldNiyetHint,
                        prefixIcon: const Icon(Icons.favorite_border_rounded),
                        alignLabelWithHint: true,
                      ),
                      validator: (v) => (v ?? '').trim().length > 300 ? l.hatimNiyetInvalid : null,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 4, bottom: 8),
                child: Text(l.hatimUnitLabel, style: AppTextStyles.sectionTitle.copyWith(fontSize: 16)),
              ),
              _ChoiceTile(
                selected: _unit == HatimGroup.unitCuz,
                enabled: !editing,
                icon: Icons.auto_stories_rounded,
                title: '${l.hatimUnitCuz} · 30',
                subtitle: l.hatimUnitCuzDesc,
                onTap: () => setState(() => _unit = HatimGroup.unitCuz),
              ),
              const SizedBox(height: 10),
              _ChoiceTile(
                selected: _unit == HatimGroup.unitSayfa,
                enabled: !editing,
                icon: Icons.grid_view_rounded,
                title: '${l.hatimUnitSayfa} · 604',
                subtitle: l.hatimUnitSayfaDesc,
                onTap: () => setState(() => _unit = HatimGroup.unitSayfa),
              ),
              if (editing)
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 4, top: 6),
                  child: Text(l.hatimUnitLocked, style: AppTextStyles.muted.copyWith(fontSize: 12)),
                ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 4, bottom: 8),
                child: Text(l.hatimVisibilityLabel, style: AppTextStyles.sectionTitle.copyWith(fontSize: 16)),
              ),
              _ChoiceTile(
                selected: _isPublic,
                icon: Icons.public_rounded,
                title: l.hatimPublicTitle,
                subtitle: l.hatimPublicDesc,
                onTap: () => setState(() => _isPublic = true),
              ),
              const SizedBox(height: 10),
              _ChoiceTile(
                selected: !_isPublic,
                icon: Icons.lock_rounded,
                title: l.hatimPrivateTitle,
                subtitle: l.hatimPrivateDesc,
                onTap: () => setState(() => _isPublic = false),
              ),
              const SizedBox(height: 16),
              _Card(
                child: Row(
                  children: [
                    const Icon(Icons.event_rounded, color: AppColors.primary),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(l.hatimDeadlineLabel, style: AppTextStyles.cardTitle.copyWith(fontSize: 14.5)),
                          const SizedBox(height: 2),
                          Text(
                            _deadline == null ? l.hatimDeadlineNone : DateFormat.yMMMMd(locale).format(_deadline!),
                            style: AppTextStyles.muted,
                          ),
                        ],
                      ),
                    ),
                    if (_deadline != null)
                      TextButton(onPressed: () => setState(() => _deadline = null), child: Text(l.hatimDeadlineClear)),
                    IconButton(
                      onPressed: _pickDate,
                      icon: const Icon(Icons.edit_calendar_rounded, color: AppColors.primary),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 52,
                child: FilledButton.icon(
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  ),
                  onPressed: _saving ? null : _submit,
                  icon: _saving
                      ? const SizedBox(
                          width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                      : Icon(editing ? Icons.save_rounded : Icons.check_rounded),
                  label: Text(editing ? l.hatimSave : l.hatimCreateButton,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: AppColors.divider),
        ),
        child: child,
      );
}

class _ChoiceTile extends StatelessWidget {
  const _ChoiceTile({
    required this.selected,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.enabled = true,
  });

  final bool selected;
  final bool enabled;
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final fg = selected ? AppColors.primary : AppColors.textMuted;
    return Opacity(
      opacity: enabled || selected ? 1 : 0.5,
      child: Material(
        color: selected ? AppColors.mint : Colors.white,
        borderRadius: BorderRadius.circular(18),
        child: InkWell(
          borderRadius: BorderRadius.circular(18),
          onTap: enabled ? onTap : null,
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: selected ? AppColors.primary : AppColors.divider, width: selected ? 1.6 : 1),
            ),
            child: Row(
              children: [
                Icon(icon, color: fg, size: 28),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: AppTextStyles.cardTitle.copyWith(fontSize: 15)),
                      const SizedBox(height: 2),
                      Text(subtitle, style: AppTextStyles.muted.copyWith(fontSize: 12.5)),
                    ],
                  ),
                ),
                Icon(selected ? Icons.radio_button_checked_rounded : Icons.radio_button_off_rounded, color: fg),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

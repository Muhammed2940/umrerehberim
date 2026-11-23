import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../admin/widgets/no_access_screen.dart';
import '../shared/cc_widgets.dart';
import 'moderation_service.dart';

/// Kontrol Merkezi › Ezan Vakitleri düzenleme. Yalnız süper admin (kural: yazma isSuper()).
class CcPrayerTimesScreen extends StatefulWidget {
  const CcPrayerTimesScreen({super.key});

  @override
  State<CcPrayerTimesScreen> createState() => _CcPrayerTimesScreenState();
}

class _CcPrayerTimesScreenState extends State<CcPrayerTimesScreen> {
  bool _mekke = true;
  DateTime _date = DateTime.now();
  Future<CcPrayerDoc>? _future;
  CcPrayerDoc? _loaded;
  bool _failed = false;
  bool _busy = false;

  final _day = TextEditingController();
  final _hicri = TextEditingController();
  final _times = {for (final k in CcModerationService.prayerKeys) k: TextEditingController()};

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _load();
    });
  }

  @override
  void dispose() {
    _day.dispose();
    _hicri.dispose();
    for (final c in _times.values) {
      c.dispose();
    }
    super.dispose();
  }

  void _load() {
    final f = CcModerationService.instance.loadPrayer(mekke: _mekke, date: _date);
    setState(() {
      _loaded = null;
      _failed = false;
      _future = f;
    });
    f.then((d) {
      if (!mounted || _future != f) return;
      _day.text = d.day;
      _hicri.text = d.hicri;
      for (final e in _times.entries) {
        e.value.text = d.times[e.key] ?? '';
      }
      setState(() => _loaded = d);
    }).catchError((Object e) {
      debugPrint('CcPrayerTimesScreen.load: $e');
      if (mounted && _future == f) setState(() => _failed = true);
    });
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2024),
      lastDate: DateTime(2035),
    );
    if (picked == null || !mounted) return;
    _date = picked;
    _load();
  }

  Future<void> _save() async {
    final me = context.read<AppStateProvider>().currentUser;
    final l = context.l10n;
    if (me == null || _busy) return;
    final values = {for (final e in _times.entries) e.key: e.value.text.trim()};
    if (!values.values.every(CcModerationService.validTime)) {
      GlobalSnackbar.showError(l.ccPrayerInvalid);
      return;
    }
    setState(() => _busy = true);
    try {
      await CcModerationService.instance.savePrayer(
        actor: me,
        mekke: _mekke,
        date: _date,
        day: _day.text,
        hicri: _hicri.text,
        times: values,
      );
      GlobalSnackbar.showSuccess(l.ccPrayerSaved);
      if (mounted) _load();
    } catch (e) {
      debugPrint('CcPrayerTimesScreen.save: $e');
      GlobalSnackbar.showError(l.ccPrayerSaveError);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final user = context.watch<AppStateProvider>().currentUser;
    if (user == null || !user.isSuperAdmin) return NoAccessScreen(title: l.ccPrayerTitle);
    final labels = {
      'imsak': l.ccPrayerImsak,
      'gunes': l.ccPrayerGunes,
      'ogle': l.ccPrayerOgle,
      'ikindi': l.ccPrayerIkindi,
      'aksam': l.ccPrayerAksam,
      'yatsi': l.ccPrayerYatsi,
    };
    return CcPage(
      title: l.ccPrayerTitle,
      subtitle: l.ccPrayerSubtitle,
      body: [
        Wrap(
          spacing: 8,
          children: [
            ChoiceChip(
              label: Text(l.ccPrayerMekke),
              selected: _mekke,
              onSelected: (_) {
                _mekke = true;
                _load();
              },
            ),
            ChoiceChip(
              label: Text(l.ccPrayerMedine),
              selected: !_mekke,
              onSelected: (_) {
                _mekke = false;
                _load();
              },
            ),
          ],
        ),
        const SizedBox(height: 12),
        CcPanel(
          onTap: _pickDate,
          child: Row(
            children: [
              const Icon(Icons.event_rounded, color: CcColors.mid),
              const SizedBox(width: 10),
              Text(
                '${l.ccPrayerDate}: ${CcModerationService.ymd(_date)}',
                style: const TextStyle(fontWeight: FontWeight.w600, color: CcColors.ink),
              ),
            ],
          ),
        ),
        if (_failed)
          CcEmpty(icon: Icons.cloud_off_rounded, message: l.ccPrayerLoadError)
        else if (_loaded == null)
          const Padding(padding: EdgeInsets.all(40), child: Center(child: CircularProgressIndicator()))
        else ...[
          if (!_loaded!.exists)
            CcPanel(
              child: Row(
                children: [
                  const Icon(Icons.info_outline_rounded, color: CcColors.info),
                  const SizedBox(width: 10),
                  Expanded(child: Text(l.ccPrayerNewDoc, style: const TextStyle(fontSize: 13, color: CcColors.ink))),
                ],
              ),
            ),
          CcPanel(
            child: Column(
              children: [
                _field(_day, l.ccPrayerDay),
                _field(_hicri, l.ccPrayerHicri),
                for (final k in CcModerationService.prayerKeys)
                  _field(_times[k]!, labels[k]!, keyboard: TextInputType.datetime, hint: '05:12'),
              ],
            ),
          ),
          FilledButton.icon(
            onPressed: _busy ? null : _save,
            icon: const Icon(Icons.save_rounded),
            label: Text(l.ccPrayerSave),
          ),
        ],
      ],
    );
  }

  Widget _field(TextEditingController c, String label, {TextInputType? keyboard, String? hint}) => Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: TextField(
          controller: c,
          keyboardType: keyboard,
          decoration: InputDecoration(labelText: label, hintText: hint, border: const OutlineInputBorder()),
        ),
      );
}

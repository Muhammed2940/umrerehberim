import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:intl/intl.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../info_screen/widgets/info_widgets.dart';
import '../providers/personal_plan_provider.dart';

/// Paketli bireysel kullanıcının Mekke ve Medine konaklamasını kendisinin girdiği ekran.
/// Girilen bilgiler ana sayfadaki "Kutsal Yolculuk Vakti" kartlarında gösterilir.
class YolculukBilgilerimScreen extends StatefulWidget {
  const YolculukBilgilerimScreen({super.key});

  @override
  State<YolculukBilgilerimScreen> createState() => _YolculukBilgilerimScreenState();
}

class _YolculukBilgilerimScreenState extends State<YolculukBilgilerimScreen> {
  late DateTimeRange? _mekkeRange = _range(personalPlan.mekke);
  late DateTimeRange? _medineRange = _range(personalPlan.medine);
  late final _mekkeHotel = TextEditingController(text: personalPlan.mekke.hotel);
  late final _medineHotel = TextEditingController(text: personalPlan.medine.hotel);

  static DateTimeRange? _range(CityPlan p) =>
      p.start != null && p.end != null ? DateTimeRange(start: p.start!, end: p.end!) : null;

  @override
  void dispose() {
    _mekkeHotel.dispose();
    _medineHotel.dispose();
    super.dispose();
  }

  Future<DateTimeRange?> _pick(DateTimeRange? current) {
    final now = DateTime.now();
    return showDateRangePicker(
      context: context,
      firstDate: DateTime(now.year - 1),
      lastDate: DateTime(now.year + 3),
      initialDateRange: current,
    );
  }

  Future<void> _save() async {
    await personalPlan.saveCities(
      mekke: CityPlan(start: _mekkeRange?.start, end: _mekkeRange?.end, hotel: _mekkeHotel.text.trim()),
      medine: CityPlan(start: _medineRange?.start, end: _medineRange?.end, hotel: _medineHotel.text.trim()),
    );
    if (!mounted) return;
    GlobalSnackbar.showSuccess(context.l10n.paketlerPlanSaved);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l.paketlerPlanTitle)),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
        children: [
          Text(l.paketlerPlanIntro, style: const TextStyle(fontSize: 14, height: 1.45, color: AppColors.textMuted)),
          const SizedBox(height: 14),
          _CityBox(
            icon: FlutterIslamicIcons.solidKaaba,
            city: l.paketlerPlanMekke,
            range: _mekkeRange,
            hotel: _mekkeHotel,
            onPick: () async {
              final r = await _pick(_mekkeRange);
              if (r != null) setState(() => _mekkeRange = r);
            },
          ),
          _CityBox(
            icon: FlutterIslamicIcons.solidMosque,
            city: l.paketlerPlanMedine,
            range: _medineRange,
            hotel: _medineHotel,
            onPick: () async {
              final r = await _pick(_medineRange);
              if (r != null) setState(() => _medineRange = r);
            },
          ),
          const SizedBox(height: 8),
          ElevatedButton(onPressed: _save, child: Text(l.paketlerPlanSave)),
        ],
      ),
    );
  }
}

class _CityBox extends StatelessWidget {
  final IconData icon;
  final String city;
  final DateTimeRange? range;
  final TextEditingController hotel;
  final VoidCallback onPick;

  const _CityBox({
    required this.icon,
    required this.city,
    required this.range,
    required this.hotel,
    required this.onPick,
  });

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final fmt = DateFormat('d MMM yyyy', localeProvider.locale.languageCode);
    final dates = range == null ? l.paketlerPlanPickDates : '${fmt.format(range!.start)} – ${fmt.format(range!.end)}';
    return InfoCardBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              InfoIconBadge(icon),
              const SizedBox(width: 14),
              Text(city, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: AppColors.text)),
            ],
          ),
          const SizedBox(height: 14),
          OutlinedButton.icon(
            onPressed: onPick,
            style: OutlinedButton.styleFrom(minimumSize: const Size(64, 48), alignment: Alignment.centerLeft),
            icon: const Icon(Icons.date_range_rounded),
            label: Text(dates),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: hotel,
            maxLength: 60,
            textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(
              labelText: l.paketlerPlanHotel,
              prefixIcon: const Icon(Icons.hotel_rounded),
              counterText: '',
            ),
          ),
        ],
      ),
    );
  }
}

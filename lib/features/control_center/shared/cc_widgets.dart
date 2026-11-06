import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/theme/app_theme.dart';

/// KONTROL MERKEZİ TASARIM KİTİ
/// Süper admin modüllerinin hepsi bu bileşenleri kullanır; böylece panel tek elden
/// çıkmış gibi görünür. Renkler yalnız [AppColors] / [CcColors]'tan gelir.
///
/// Sayfa iskeleti:
///   CcPage(title: ..., subtitle: ..., actions: [...], body: [CcSection(...), ...])
/// KPI satırı:  CcKpiGrid(children: [CcKpiTile(...), ...])
/// Kart:        CcPanel(title: ..., child: ...)
/// Sıralama:    CcRankBar(label, value, fraction)
/// Dönem:       CcPeriodChips(value: p, onChanged: ...)

class CcColors {
  static const ink = AppColors.emerald900;
  static const deep = AppColors.emerald800;
  static const mid = AppColors.emerald600;
  static const sage = AppColors.sage;
  static const mint = AppColors.mint;
  static const bg = AppColors.background;
  static const gold = Color(0xFFC9A54C); // vurgu (ciro, puan)
  static const info = Color(0xFF2F6F8F);
  static const danger = AppColors.error;
  static const warn = AppColors.warning;
  static const ok = AppColors.success;

  /// Grafik serileri için sıralı palet.
  static const series = [mid, gold, info, sage, Color(0xFF8E5A9B), Color(0xFFD9822B)];
}

/// Para ve sayı biçimleri (SAR ana para birimi).
class CcFmt {
  static final _money = NumberFormat.decimalPattern('tr');
  static String sar(num v) => '${_money.format(double.parse(v.toStringAsFixed(2)))} SAR';
  static String num0(num v) => NumberFormat.decimalPattern('tr').format(v.round());
  static String compact(num v) => NumberFormat.compact(locale: 'tr').format(v);
  static String pct(num v) => '%${v.toStringAsFixed(v % 1 == 0 ? 0 : 1)}';
  static String date(DateTime? d) => d == null ? '-' : DateFormat('dd.MM.yyyy').format(d);
  static String dateTime(DateTime? d) => d == null ? '-' : DateFormat('dd.MM.yyyy HH:mm').format(d);
  static String month(DateTime d) => DateFormat('MMMM yyyy', 'tr').format(d);
}

/// Rapor dönemleri.
enum CcPeriod { today, week, month, quarter, year, all }

extension CcPeriodX on CcPeriod {
  /// Dönemin başlangıcı (all → null).
  DateTime? get start {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    switch (this) {
      case CcPeriod.today:
        return today;
      case CcPeriod.week:
        return today.subtract(const Duration(days: 6));
      case CcPeriod.month:
        return today.subtract(const Duration(days: 29));
      case CcPeriod.quarter:
        return today.subtract(const Duration(days: 89));
      case CcPeriod.year:
        return today.subtract(const Duration(days: 364));
      case CcPeriod.all:
        return null;
    }
  }

  bool contains(DateTime? d) {
    final s = start;
    if (d == null) return s == null;
    return s == null || !d.isBefore(s);
  }
}

/// Zümrüt geçişli başlıklı sayfa iskeleti. [body] kaydırılabilir liste olarak dizilir.
class CcPage extends StatelessWidget {
  final String title;
  final String? subtitle;
  final List<Widget> actions;
  final List<Widget> body;
  final Widget? floatingActionButton;
  final Future<void> Function()? onRefresh;
  final Widget? headerExtra;

  const CcPage({
    super.key,
    required this.title,
    this.subtitle,
    this.actions = const [],
    required this.body,
    this.floatingActionButton,
    this.onRefresh,
    this.headerExtra,
  });

  @override
  Widget build(BuildContext context) {
    final list = ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
      physics: const AlwaysScrollableScrollPhysics(),
      children: body,
    );
    return Scaffold(
      backgroundColor: CcColors.bg,
      floatingActionButton: floatingActionButton,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [CcColors.ink, CcColors.mid],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(22)),
          ),
        ),
        title: Column(
          children: [
            Text(title),
            if (subtitle != null)
              Text(subtitle!, style: const TextStyle(fontSize: 12, color: Colors.white70, fontWeight: FontWeight.w400)),
          ],
        ),
        actions: actions,
        bottom: headerExtra == null
            ? null
            : PreferredSize(
                preferredSize: const Size.fromHeight(52),
                child: Padding(padding: const EdgeInsets.fromLTRB(12, 0, 12, 10), child: headerExtra),
              ),
      ),
      body: onRefresh == null ? list : RefreshIndicator(onRefresh: onRefresh!, child: list),
    );
  }
}

/// Bölüm başlığı (+ isteğe bağlı sağ eylem).
class CcSection extends StatelessWidget {
  final String title;
  final Widget? trailing;
  final Widget child;
  const CcSection({super.key, required this.title, this.trailing, required this.child});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Container(width: 4, height: 18, decoration: BoxDecoration(color: CcColors.sage, borderRadius: BorderRadius.circular(2))),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: CcColors.ink)),
                ),
                ?trailing,
              ],
            ),
            const SizedBox(height: 10),
            child,
          ],
        ),
      );
}

/// Beyaz, yumuşak gölgeli kart.
class CcPanel extends StatelessWidget {
  final String? title;
  final Widget? trailing;
  final Widget child;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;
  const CcPanel({
    super.key,
    this.title,
    this.trailing,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: const [BoxShadow(color: Color(0x14051F20), blurRadius: 14, offset: Offset(0, 4))],
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(18),
          child: InkWell(
            borderRadius: BorderRadius.circular(18),
            onTap: onTap,
            child: Padding(
              padding: padding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (title != null) ...[
                    Row(
                      children: [
                        Expanded(
                          child: Text(title!, style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.ink)),
                        ),
                        ?trailing,
                      ],
                    ),
                    const SizedBox(height: 12),
                  ],
                  child,
                ],
              ),
            ),
          ),
        ),
      );
}

/// KPI kutusu: ikon, büyük değer, etiket, isteğe bağlı değişim (+%12 gibi).
class CcKpiTile extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final Color color;
  final String? delta;
  final bool deltaPositive;
  final VoidCallback? onTap;
  const CcKpiTile({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
    this.color = CcColors.mid,
    this.delta,
    this.deltaPositive = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) => CcPanel(
        onTap: onTap,
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(color: color.withValues(alpha: 0.12), borderRadius: BorderRadius.circular(12)),
                  child: Icon(icon, color: color, size: 20),
                ),
                const Spacer(),
                if (delta != null) CcBadge(text: delta!, color: deltaPositive ? CcColors.ok : CcColors.danger),
              ],
            ),
            const SizedBox(height: 10),
            FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(value, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: CcColors.ink)),
            ),
            const SizedBox(height: 2),
            Text(label, maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
          ],
        ),
      );
}

/// KPI kutularını 2 (dar) / 4 (geniş ekran) sütunda dizer.
class CcKpiGrid extends StatelessWidget {
  final List<Widget> children;
  const CcKpiGrid({super.key, required this.children});

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, c) {
          final cols = c.maxWidth > 700 ? 4 : 2;
          const gap = 12.0;
          final w = (c.maxWidth - gap * (cols - 1)) / cols;
          return Wrap(
            spacing: gap,
            children: [for (final k in children) SizedBox(width: w, child: k)],
          );
        },
      );
}

/// Küçük renkli etiket (durum, değişim).
class CcBadge extends StatelessWidget {
  final String text;
  final Color color;
  final IconData? icon;
  const CcBadge({super.key, required this.text, this.color = CcColors.mid, this.icon});

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        decoration: BoxDecoration(color: color.withValues(alpha: 0.12), borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[Icon(icon, size: 12, color: color), const SizedBox(width: 3)],
            Text(text, style: TextStyle(fontSize: 11, fontWeight: FontWeight.w700, color: color)),
          ],
        ),
      );
}

/// Sıralama satırı: etiket, değer, yatay çubuk (0..1).
class CcRankBar extends StatelessWidget {
  final int rank;
  final String label;
  final String value;
  final double fraction;
  final String? subtitle;
  final Color color;
  final VoidCallback? onTap;
  const CcRankBar({
    super.key,
    required this.rank,
    required this.label,
    required this.value,
    required this.fraction,
    this.subtitle,
    this.color = CcColors.mid,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              CircleAvatar(
                radius: 13,
                backgroundColor: rank <= 3 ? CcColors.gold.withValues(alpha: 0.18) : CcColors.mint,
                child: Text('$rank',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800, color: rank <= 3 ? CcColors.gold : CcColors.mid)),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(label,
                              maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w600)),
                        ),
                        Text(value, style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.ink)),
                      ],
                    ),
                    if (subtitle != null)
                      Text(subtitle!, style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
                    const SizedBox(height: 5),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: fraction.clamp(0, 1).toDouble(),
                        minHeight: 6,
                        backgroundColor: CcColors.mint,
                        valueColor: AlwaysStoppedAnimation(color),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

/// Dönem seçici (yatay kaydırılabilir çipler). [labels] sırası CcPeriod.values ile aynı.
class CcPeriodChips extends StatelessWidget {
  final CcPeriod value;
  final ValueChanged<CcPeriod> onChanged;
  final List<String> labels;
  final bool onDark;
  const CcPeriodChips({
    super.key,
    required this.value,
    required this.onChanged,
    required this.labels,
    this.onDark = false,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 38,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            for (final p in CcPeriod.values)
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 8),
                child: ChoiceChip(
                  label: Text(labels[p.index]),
                  selected: value == p,
                  onSelected: (_) => onChanged(p),
                  showCheckmark: false,
                  selectedColor: onDark ? Colors.white : CcColors.mid,
                  backgroundColor: onDark ? Colors.white.withValues(alpha: 0.12) : Colors.white,
                  side: BorderSide(color: onDark ? Colors.white24 : CcColors.mint),
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: value == p ? (onDark ? CcColors.ink : Colors.white) : (onDark ? Colors.white : CcColors.ink),
                  ),
                ),
              ),
          ],
        ),
      );
}

/// Boş durum.
class CcEmpty extends StatelessWidget {
  final IconData icon;
  final String message;
  const CcEmpty({super.key, required this.icon, required this.message});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 36),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              decoration: const BoxDecoration(color: CcColors.mint, shape: BoxShape.circle),
              child: Icon(icon, size: 34, color: CcColors.mid),
            ),
            const SizedBox(height: 12),
            Text(message, textAlign: TextAlign.center, style: const TextStyle(color: AppColors.textMuted)),
          ],
        ),
      );
}

/// Yüklenme/hata/boş durumlarını tek yerde ele alan yardımcı.
class CcAsync<T> extends StatelessWidget {
  final AsyncSnapshot<T> snapshot;
  final Widget Function(T data) builder;
  final String errorText;
  const CcAsync({super.key, required this.snapshot, required this.builder, required this.errorText});

  @override
  Widget build(BuildContext context) {
    if (snapshot.hasError) {
      return CcEmpty(icon: Icons.cloud_off_rounded, message: errorText);
    }
    if (!snapshot.hasData) {
      return const Padding(padding: EdgeInsets.all(40), child: Center(child: CircularProgressIndicator()));
    }
    return builder(snapshot.data as T);
  }
}

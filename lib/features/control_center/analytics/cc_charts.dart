import 'dart:math' as math;

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../shared/cc_widgets.dart';

/// Analiz ekranlarının ortak grafik bileşenleri (fl_chart).

const _axisStyle = TextStyle(fontSize: 10, color: AppColors.textMuted);

double _niceMax(double v) {
  if (v <= 0) return 1;
  final mag = math.pow(10, (math.log(v) / math.ln10).floor()).toDouble();
  for (final m in [1.0, 2.0, 2.5, 5.0, 10.0]) {
    if (v <= m * mag) return m * mag;
  }
  return 10 * mag;
}

/// Degrade dolgulu, yumuşak çizgi grafiği.
class CcAreaChart extends StatelessWidget {
  final List<double> values;
  final String Function(int index) bottomLabel;
  final String Function(double v) valueLabel;
  final String Function(int index)? tooltipTitle;
  final Color color;
  final double height;
  final bool compact;

  const CcAreaChart({
    super.key,
    required this.values,
    required this.bottomLabel,
    required this.valueLabel,
    this.tooltipTitle,
    this.color = CcColors.mid,
    this.height = 200,
    this.compact = false,
  });

  @override
  Widget build(BuildContext context) {
    final n = values.length;
    final maxV = _niceMax(values.fold<double>(0, math.max));
    final step = n <= 7 ? 1 : (n / 6).ceil();
    final spots = [for (var i = 0; i < n; i++) FlSpot(i.toDouble(), values[i])];
    if (spots.length == 1) spots.add(FlSpot(1, values.first));
    return SizedBox(
      height: height,
      child: LineChart(
        LineChartData(
          minY: 0,
          maxY: maxV,
          minX: 0,
          maxX: math.max(1, n - 1).toDouble(),
          gridData: FlGridData(
            show: !compact,
            drawVerticalLine: false,
            horizontalInterval: maxV / 4,
            getDrawingHorizontalLine: (_) => const FlLine(color: Color(0x1A235347), strokeWidth: 1, dashArray: [4, 4]),
          ),
          borderData: FlBorderData(show: false),
          titlesData: compact
              ? const FlTitlesData(show: false)
              : FlTitlesData(
                  topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                      interval: maxV / 4,
                      getTitlesWidget: (v, meta) => Text(CcFmt.compact(v), style: _axisStyle),
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 24,
                      interval: 1,
                      getTitlesWidget: (v, meta) {
                        final i = v.round();
                        if (v != i.toDouble() || i < 0 || i >= n || i % step != 0) return const SizedBox.shrink();
                        return Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Text(bottomLabel(i), style: _axisStyle),
                        );
                      },
                    ),
                  ),
                ),
          lineTouchData: LineTouchData(
            enabled: !compact,
            touchTooltipData: LineTouchTooltipData(
              getTooltipColor: (_) => CcColors.ink,
              fitInsideHorizontally: true,
              fitInsideVertically: true,
              getTooltipItems: (spots) => [
                for (final s in spots)
                  LineTooltipItem(
                    '${tooltipTitle?.call(s.x.round()) ?? bottomLabel(s.x.round())}\n',
                    const TextStyle(color: Colors.white70, fontSize: 11),
                    children: [
                      TextSpan(
                        text: valueLabel(s.y),
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 13),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: spots,
              isCurved: true,
              curveSmoothness: 0.3,
              preventCurveOverShooting: true,
              color: color,
              barWidth: compact ? 2.2 : 3,
              isStrokeCapRound: true,
              dotData: FlDotData(show: !compact && n <= 14),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [color.withValues(alpha: 0.35), color.withValues(alpha: 0.0)],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Yuvarlatılmış sütun grafiği.
class CcBarChart extends StatelessWidget {
  final List<double> values;
  final String Function(int index) bottomLabel;
  final String Function(int index, double v) tooltip;
  final Color color;
  final double height;
  final int labelEvery;
  final int? highlightIndex;

  const CcBarChart({
    super.key,
    required this.values,
    required this.bottomLabel,
    required this.tooltip,
    this.color = CcColors.mid,
    this.height = 180,
    this.labelEvery = 1,
    this.highlightIndex,
  });

  @override
  Widget build(BuildContext context) {
    final maxV = _niceMax(values.fold<double>(0, math.max));
    return SizedBox(
      height: height,
      child: LayoutBuilder(builder: (context, c) {
        final w = (c.maxWidth - 40) / math.max(1, values.length) * 0.6;
        return BarChart(
          BarChartData(
            maxY: maxV,
            alignment: BarChartAlignment.spaceAround,
            borderData: FlBorderData(show: false),
            gridData: FlGridData(
              drawVerticalLine: false,
              horizontalInterval: maxV / 4,
              getDrawingHorizontalLine: (_) => const FlLine(color: Color(0x1A235347), strokeWidth: 1, dashArray: [4, 4]),
            ),
            titlesData: FlTitlesData(
              topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 32,
                  interval: maxV / 4,
                  getTitlesWidget: (v, meta) => Text(CcFmt.compact(v), style: _axisStyle),
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 22,
                  getTitlesWidget: (v, meta) {
                    final i = v.toInt();
                    if (i % labelEvery != 0) return const SizedBox.shrink();
                    return Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(bottomLabel(i), style: _axisStyle),
                    );
                  },
                ),
              ),
            ),
            barTouchData: BarTouchData(
              touchTooltipData: BarTouchTooltipData(
                getTooltipColor: (_) => CcColors.ink,
                fitInsideHorizontally: true,
                fitInsideVertically: true,
                getTooltipItem: (group, gi, rod, ri) => BarTooltipItem(
                  tooltip(group.x, rod.toY),
                  const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 12),
                ),
              ),
            ),
            barGroups: [
              for (var i = 0; i < values.length; i++)
                BarChartGroupData(x: i, barRods: [
                  BarChartRodData(
                    toY: values[i],
                    width: w.clamp(4, 22).toDouble(),
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(5)),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: i == highlightIndex
                          ? [CcColors.gold.withValues(alpha: 0.7), CcColors.gold]
                          : [color.withValues(alpha: 0.55), color],
                    ),
                    backDrawRodData: BackgroundBarChartRodData(show: true, toY: maxV, color: const Color(0x0D235347)),
                  ),
                ]),
            ],
          ),
        );
      }),
    );
  }
}

class CcDonutEntry {
  final String label;
  final double value;
  final Color color;
  final String? valueText;
  const CcDonutEntry(this.label, this.value, this.color, [this.valueText]);
}

/// Halka grafik + açıklama (lejant).
class CcDonut extends StatefulWidget {
  final List<CcDonutEntry> entries;
  final String centerValue;
  final String centerLabel;
  final double size;

  const CcDonut({super.key, required this.entries, required this.centerValue, required this.centerLabel, this.size = 150});

  @override
  State<CcDonut> createState() => _CcDonutState();
}

class _CcDonutState extends State<CcDonut> {
  int _touched = -1;

  @override
  Widget build(BuildContext context) {
    final entries = widget.entries.where((e) => e.value > 0).toList();
    final total = entries.fold<double>(0, (a, e) => a + e.value);
    final chart = SizedBox(
      width: widget.size,
      height: widget.size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 2,
              centerSpaceRadius: widget.size * 0.30,
              startDegreeOffset: -90,
              pieTouchData: PieTouchData(
                touchCallback: (ev, res) {
                  final i = res?.touchedSection?.touchedSectionIndex ?? -1;
                  if (!ev.isInterestedForInteractions) {
                    if (_touched != -1) setState(() => _touched = -1);
                    return;
                  }
                  if (i != _touched) setState(() => _touched = i);
                },
              ),
              sections: [
                for (var i = 0; i < entries.length; i++)
                  PieChartSectionData(
                    value: entries[i].value,
                    color: entries[i].color,
                    radius: widget.size * (i == _touched ? 0.20 : 0.16),
                    showTitle: false,
                  ),
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FittedBox(
                child: Text(
                  _touched >= 0 && _touched < entries.length
                      ? CcFmt.pct(total == 0 ? 0 : entries[_touched].value / total * 100)
                      : widget.centerValue,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: CcColors.ink),
                ),
              ),
              SizedBox(
                width: widget.size * 0.5,
                child: Text(
                  _touched >= 0 && _touched < entries.length ? entries[_touched].label : widget.centerLabel,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 10.5, color: AppColors.textMuted),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    final legend = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final e in entries)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                Container(width: 10, height: 10, decoration: BoxDecoration(color: e.color, borderRadius: BorderRadius.circular(3))),
                const SizedBox(width: 8),
                Expanded(child: Text(e.label, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 12.5))),
                const SizedBox(width: 6),
                Text(
                  e.valueText ?? CcFmt.num0(e.value),
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: CcColors.ink),
                ),
                const SizedBox(width: 6),
                SizedBox(
                  width: 42,
                  child: Text(
                    CcFmt.pct(total == 0 ? 0 : e.value / total * 100),
                    textAlign: TextAlign.end,
                    style: const TextStyle(fontSize: 11, color: AppColors.textMuted),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
    return LayoutBuilder(builder: (context, c) {
      if (c.maxWidth < 330) {
        return Column(children: [chart, const SizedBox(height: 12), legend]);
      }
      return Row(children: [chart, const SizedBox(width: 18), Expanded(child: legend)]);
    });
  }
}

/// İki değerli karşılaştırma çubuğu (ör. kazanılan / harcanan puan).
class CcSplitBar extends StatelessWidget {
  final String leftLabel;
  final String rightLabel;
  final double left;
  final double right;
  final Color leftColor;
  final Color rightColor;
  const CcSplitBar({
    super.key,
    required this.leftLabel,
    required this.rightLabel,
    required this.left,
    required this.right,
    this.leftColor = CcColors.mid,
    this.rightColor = CcColors.gold,
  });

  @override
  Widget build(BuildContext context) {
    final total = left + right;
    final lf = total == 0 ? 0.5 : left / total;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(child: _legend(leftLabel, CcFmt.num0(left), leftColor, CrossAxisAlignment.start)),
            Expanded(child: _legend(rightLabel, CcFmt.num0(right), rightColor, CrossAxisAlignment.end)),
          ],
        ),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: SizedBox(
            height: 12,
            child: Row(
              children: [
                Expanded(flex: math.max(1, (lf * 1000).round()), child: Container(color: total == 0 ? CcColors.mint : leftColor)),
                Expanded(
                    flex: math.max(1, ((1 - lf) * 1000).round()),
                    child: Container(color: total == 0 ? CcColors.mint : rightColor)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _legend(String label, String value, Color c, CrossAxisAlignment a) => Column(
        crossAxisAlignment: a,
        children: [
          Text(label, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
          Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: c)),
        ],
      );
}

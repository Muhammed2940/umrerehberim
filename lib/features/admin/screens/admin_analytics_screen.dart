import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../providers/admin_provider.dart';
import '../utils/admin_helpers.dart';

/// Basit analiz: kayıt sayıları (çubuk grafik) + misafir cinsiyet dağılımı (pasta).
class AdminAnalyticsScreen extends StatefulWidget {
  const AdminAnalyticsScreen({super.key});

  @override
  State<AdminAnalyticsScreen> createState() => _AdminAnalyticsScreenState();
}

class _AdminAnalyticsScreenState extends State<AdminAnalyticsScreen> {
  static const _colors = [AppColors.primary, Color(0xFF3B6E5C), Color(0xFF163832), Color(0xFFE65100)];

  @override
  void initState() {
    super.initState();
    ensureAdminLoaded(context);
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l.adminMenuAnalytics)),
      body: Consumer<AdminProvider>(
        builder: (context, p, _) {
          if (p.isLoading && p.users.isEmpty) return const Center(child: CircularProgressIndicator());
          final labels = [l.adminStatPeople, l.adminStatTrip, l.adminStatHotel, l.adminStatRoom];
          final values = [p.users.length, p.trips.length, p.hotels.length, p.rooms.length];
          final maxY = values.fold<int>(0, (m, v) => v > m ? v : m);
          final guests = p.guestUsers;
          final male = guests.where((u) => u.cinsiyet == 'Erkek').length;
          final female = guests.where((u) => u.cinsiyet == 'Kadın').length;
          final unknown = guests.length - male - female;
          final assigned = guests.where((u) => u.mekkeSeferiId != null || u.medineSeferiId != null).length;

          return RefreshIndicator(
            onRefresh: p.refresh,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _section(
                  l.adminAnalyticsOverview,
                  SizedBox(
                    height: 220,
                    child: BarChart(
                      BarChartData(
                        maxY: (maxY == 0 ? 5 : maxY * 1.25).toDouble(),
                        gridData: const FlGridData(show: true, drawVerticalLine: false),
                        borderData: FlBorderData(show: false),
                        barTouchData: BarTouchData(enabled: true),
                        titlesData: FlTitlesData(
                          topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                          leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: true, reservedSize: 32)),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 28,
                              getTitlesWidget: (v, meta) {
                                final i = v.toInt();
                                if (i < 0 || i >= labels.length) return const SizedBox.shrink();
                                return Padding(
                                  padding: const EdgeInsets.only(top: 6),
                                  child: Text(labels[i], style: const TextStyle(fontSize: 11)),
                                );
                              },
                            ),
                          ),
                        ),
                        barGroups: [
                          for (var i = 0; i < values.length; i++)
                            BarChartGroupData(
                              x: i,
                              barRods: [
                                BarChartRodData(
                                  toY: values[i].toDouble(),
                                  color: _colors[i],
                                  width: 28,
                                  borderRadius: const BorderRadius.vertical(top: Radius.circular(6)),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                _section(
                  l.adminAnalyticsGender,
                  guests.isEmpty
                      ? Padding(padding: const EdgeInsets.all(24), child: Center(child: Text(l.adminNoGuestsYet)))
                      : Row(
                          children: [
                            SizedBox(
                              width: 150,
                              height: 150,
                              child: PieChart(
                                PieChartData(
                                  sectionsSpace: 2,
                                  centerSpaceRadius: 30,
                                  sections: [
                                    if (male > 0) _pie(male, const Color(0xFF235347)),
                                    if (female > 0) _pie(female, const Color(0xFF0B2B26)),
                                    if (unknown > 0) _pie(unknown, AppColors.textMuted),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _legend(const Color(0xFF235347), l.adminGenderMale, male),
                                  _legend(const Color(0xFF0B2B26), l.adminGenderFemale, female),
                                  _legend(AppColors.textMuted, l.adminGenderUnspecified, unknown),
                                ],
                              ),
                            ),
                          ],
                        ),
                ),
                const SizedBox(height: 16),
                _section(
                  l.adminAnalyticsAssignment,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(l.adminAnalyticsAssignedGuests(assigned, guests.length)),
                      const SizedBox(height: 8),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                          minHeight: 10,
                          value: guests.isEmpty ? 0 : assigned / guests.length,
                          backgroundColor: AppColors.primaryLight,
                        ),
                      ),
                      const SizedBox(height: 12),
                      for (final t in p.trips)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          child: Row(
                            children: [
                              Expanded(child: Text('${t.name} (${cityLabel(context, t.location)})')),
                              Text(
                                l.adminPersonCount(
                                    p.users.where((u) => u.mekkeSeferiId == t.id || u.medineSeferiId == t.id).length),
                                style: const TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  PieChartSectionData _pie(int v, Color c) => PieChartSectionData(
        value: v.toDouble(),
        color: c,
        title: '$v',
        radius: 40,
        titleStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      );

  Widget _legend(Color c, String label, int v) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Row(
          children: [
            Container(width: 12, height: 12, decoration: BoxDecoration(color: c, shape: BoxShape.circle)),
            const SizedBox(width: 8),
            Expanded(child: Text(label)),
            Text('$v', style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      );

  Widget _section(String title, Widget child) => Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              child,
            ],
          ),
        ),
      );
}

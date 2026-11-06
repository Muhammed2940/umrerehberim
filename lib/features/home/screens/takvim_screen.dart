import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../admin/models/event_model.dart';
import '../providers/home_provider.dart';

/// "Program Takvimi": acentenin etkinlikleri, gün seçici ve seçilen günün listesi.
class TakvimScreen extends StatefulWidget {
  const TakvimScreen({super.key});

  @override
  State<TakvimScreen> createState() => TakvimScreenState();
}

class TakvimScreenState extends State<TakvimScreen> {
  String? _requestedAgencyId;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Sekme IndexedStack içinde erkenden kurulabilir; kullanıcı (acente) belli
    // olduğunda etkinlikleri bir kez yükle.
    final agencyId = context.watch<AppStateProvider>().currentUser?.agencyId;
    if (agencyId != null && agencyId.isNotEmpty && agencyId != _requestedAgencyId) {
      _requestedAgencyId = agencyId;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) context.read<HomeProvider>().loadEvents(agencyId);
      });
    }
  }

  Future<void> _reload() =>
      context.read<HomeProvider>().loadEvents(_requestedAgencyId, force: true);

  Future<void> _showDatePicker() async {
    final home = context.read<HomeProvider>();
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: home.selectedDate,
      firstDate: DateTime(now.year - 1),
      lastDate: DateTime(now.year + 2, 12, 31),
      helpText: context.l10n.homePickDay,
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: AppColors.primary,
                onPrimary: Colors.white,
              ),
        ),
        child: child!,
      ),
    );
    if (picked != null && mounted) home.selectDate(picked);
  }

  String _formatDate(DateTime d) => DateFormat('d MMMM y').format(d);
  String _formatDayOfWeek(DateTime d) => DateFormat('EEEE').format(d);

  /// Bağımsız rota olarak açıldıysa ('/takvim') geri butonu göster.
  bool get _isStandaloneRoute => ModalRoute.of(context)?.settings.name == '/takvim';

  @override
  Widget build(BuildContext context) {
    final standalone = _isStandaloneRoute;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: standalone ? const BackButton() : null,
        title: Text(context.l10n.homeProgramCalendar),
        actions: [
          IconButton(
            tooltip: context.l10n.homePickDay,
            icon: const Icon(Icons.event_rounded),
            onPressed: _showDatePicker,
          ),
        ],
      ),
      body: SafeArea(
        child: Consumer<HomeProvider>(
          builder: (context, home, _) {
            final hasAgency = _requestedAgencyId != null;
            return Column(
              children: [
                _dateHeader(home),
                _weekStrip(home),
                const SizedBox(height: 4),
                Expanded(
                  child: RefreshIndicator(
                    color: AppColors.primary,
                    onRefresh: _reload,
                    child: _content(home, hasAgency),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // Üst kısım: tarih başlığı ve gezinme butonları
  // ---------------------------------------------------------------------------
  Widget _dateHeader(HomeProvider home) {
    final d = home.selectedDate;
    final today = DateUtils.isSameDay(d, DateTime.now());
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.primary, AppColors.primaryDark],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: AppColors.primary.withValues(alpha: 0.3), blurRadius: 12, offset: const Offset(0, 5)),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _formatDayOfWeek(d),
                      style: TextStyle(color: Colors.white.withValues(alpha: 0.85), fontSize: 14),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      _formatDate(d),
                      style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              if (today)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.accent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    context.l10n.homeToday,
                    style: const TextStyle(color: AppColors.onAccent, fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              // chevron_left/right yönlü ikonlardır; Arapçada kendiliğinden aynalanır.
              Expanded(child: _buildNavButton(Icons.chevron_left_rounded, context.l10n.homePrevious, home.previousDay)),
              const SizedBox(width: 8),
              Expanded(
                child: _buildNavButton(Icons.calendar_today_rounded, context.l10n.homePickDay, _showDatePicker),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildNavButton(Icons.chevron_right_rounded, context.l10n.homeNext, home.nextDay,
                    iconAfter: true),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavButton(IconData icon, String label, VoidCallback onTap, {bool iconAfter = false}) {
    final iconW = Icon(icon, color: Colors.white, size: 18);
    final textW = Flexible(
      child: Text(
        label,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w600),
      ),
    );
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Ink(
          padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 6),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.16),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: iconAfter
                ? [textW, const SizedBox(width: 2), iconW]
                : [iconW, const SizedBox(width: 4), textW],
          ),
        ),
      ),
    );
  }

  /// Seçili günün haftası (Pazartesi–Pazar). Etkinlik olan günlerde nokta.
  Widget _weekStrip(HomeProvider home) {
    final sel = home.selectedDate;
    final monday = sel.subtract(Duration(days: sel.weekday - 1));
    final now = DateTime.now();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: List.generate(7, (i) {
          final day = DateTime(monday.year, monday.month, monday.day + i);
          final selected = DateUtils.isSameDay(day, sel);
          final isToday = DateUtils.isSameDay(day, now);
          final hasEvents = home.hasEventsOn(day);
          return Expanded(
            child: GestureDetector(
              onTap: () => home.selectDate(day),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: const EdgeInsets.symmetric(horizontal: 3),
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: selected ? AppColors.primary : Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: isToday && !selected ? AppColors.accent : Colors.transparent,
                    width: 1.5,
                  ),
                  boxShadow: const [BoxShadow(color: Color(0x0D000000), blurRadius: 6, offset: Offset(0, 2))],
                ),
                child: Column(
                  children: [
                    Text(
                      DateFormat('EEE').format(day),
                      style: TextStyle(
                        fontSize: 11,
                        color: selected ? Colors.white70 : AppColors.textMuted,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '${day.day}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: selected ? Colors.white : AppColors.text,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: hasEvents ? (selected ? Colors.white : AppColors.accent) : Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // Liste / durumlar
  // ---------------------------------------------------------------------------
  Widget _content(HomeProvider home, bool hasAgency) {
    final l = context.l10n;
    if (home.isLoadingEvents && home.allEvents.isEmpty) {
      return const Center(child: CircularProgressIndicator(color: AppColors.primary));
    }
    if (!hasAgency) {
      return _scrollableState(_buildEmptyState(
        icon: Icons.event_busy_rounded,
        title: l.homeCalendarNotFound,
        subtitle: l.homeCalendarNoAgency,
      ));
    }
    if (home.eventsError != null && home.allEvents.isEmpty) {
      return _scrollableState(_buildEmptyState(
        icon: Icons.cloud_off_rounded,
        title: l.homeSomethingWrong,
        subtitle: home.eventsError!,
        action: TextButton.icon(
          onPressed: _reload,
          icon: const Icon(Icons.refresh_rounded),
          label: Text(l.commonRetry),
        ),
      ));
    }
    final events = home.selectedEvents;
    if (events.isEmpty) return _scrollableState(_buildEmptyState());

    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      itemCount: events.length,
      itemBuilder: (context, i) {
        final e = events[i];
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: _buildEventCard(e, home.getEndTime(e.time, e.duration), home.selectedDate),
        );
      },
    );
  }

  Widget _scrollableState(Widget child) => LayoutBuilder(
        builder: (context, c) => SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: ConstrainedBox(constraints: BoxConstraints(minHeight: c.maxHeight), child: child),
        ),
      );

  Widget _buildEmptyState({
    IconData icon = Icons.event_available_rounded,
    String? title,
    String? subtitle,
    Widget? action,
  }) {
    title ??= context.l10n.homeNoEventsToday;
    subtitle ??= context.l10n.homeNoEventsHint;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: 0.08),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 48, color: AppColors.primary),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: AppColors.text),
            ),
            const SizedBox(height: 6),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 13.5, color: AppColors.textMuted),
            ),
            if (action != null) ...[const SizedBox(height: 12), action],
          ],
        ),
      ),
    );
  }

  TimeOfDay _parseTime(String time) {
    final p = time.split(':');
    final h = int.tryParse(p.first.trim()) ?? 0;
    final m = p.length > 1 ? int.tryParse(p[1].trim()) ?? 0 : 0;
    return TimeOfDay(hour: h.clamp(0, 23), minute: m.clamp(0, 59));
  }

  /// Etkinliğin bitişi henüz gelmediyse "Yaklaşan".
  bool _isUpcoming(EventModel e, DateTime day) {
    final t = _parseTime(e.time);
    final start = DateTime(day.year, day.month, day.day, t.hour, t.minute);
    final end = start.add(Duration(minutes: e.duration));
    return end.isAfter(DateTime.now());
  }

  Widget _buildEventCard(EventModel e, String endTime, DateTime day) {
    final upcoming = _isUpcoming(e, day);
    final statusColor = upcoming ? AppColors.primary : AppColors.textMuted;
    final desc = e.description?.trim() ?? '';

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: desc.isEmpty ? null : () => _showDetails(e, endTime),
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [BoxShadow(color: Color(0x0F000000), blurRadius: 10, offset: Offset(0, 3))],
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Saat sütunu
                Container(
                  width: 62,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Text(
                        e.time,
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: statusColor),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 3),
                        width: 14,
                        height: 1.5,
                        color: statusColor.withValues(alpha: 0.5),
                      ),
                      Text(endTime, style: TextStyle(fontSize: 12.5, color: statusColor)),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              e.title,
                              style: const TextStyle(
                                fontSize: 15.5,
                                fontWeight: FontWeight.w700,
                                color: AppColors.text,
                              ),
                            ),
                          ),
                          const SizedBox(width: 6),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: upcoming ? AppColors.primaryLight : const Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              upcoming ? context.l10n.homeEventUpcoming : context.l10n.homeEventDone,
                              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: statusColor),
                            ),
                          ),
                        ],
                      ),
                      if (desc.isNotEmpty) ...[
                        const SizedBox(height: 5),
                        Text(
                          desc,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 13.5, color: AppColors.textMuted, height: 1.35),
                        ),
                      ],
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.schedule_rounded, size: 14, color: AppColors.textMuted),
                          const SizedBox(width: 4),
                          Flexible(
                            child: Text(
                              '${e.time} - $endTime • ${_durationText(e.duration)}',
                              style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _durationText(int minutes) {
    if (minutes <= 0) return '-';
    final l = context.l10n;
    final h = minutes ~/ 60, m = minutes % 60;
    if (h == 0) return l.homeDurationM(m);
    if (m == 0) return l.homeDurationH(h);
    return l.homeDurationHM(h, m);
  }

  void _showDetails(EventModel e, String endTime) {
    showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(e.title, style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Icon(Icons.schedule_rounded, size: 16, color: AppColors.primary),
                  const SizedBox(width: 6),
                  Text(
                    '${e.time} - $endTime • ${_durationText(e.duration)}',
                    style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Flexible(
                child: SingleChildScrollView(
                  child: Text(e.description ?? '', style: const TextStyle(fontSize: 15, height: 1.5)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

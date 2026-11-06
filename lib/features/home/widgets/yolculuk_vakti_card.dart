import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../admin/models/trip_model.dart';

/// "Kutsal Yolculuk Vakti" kartı (Mekke veya Medine).
///
/// - Sefer başlamadıysa: gün/saat/dakika/saniye geri sayımı (saniyede bir).
/// - Sefer sürüyorsa: dairesel ilerleme, kalan gün.
/// - Sefer bittiyse: "Allah teâlâ kabul eylesin!".
/// Altta otel ve oda bilgisi (varsa).
class ModernCountdownCard extends StatefulWidget {
  final String city;
  final TripModel? trip;
  final int totalDays;
  final int daysLeft;
  final String? hotelName;
  final String? roomNumber;

  const ModernCountdownCard({
    super.key,
    required this.city,
    required this.trip,
    required this.totalDays,
    required this.daysLeft,
    this.hotelName,
    this.roomNumber,
  });

  bool get isMekke => city == 'Mekke';

  @override
  State<ModernCountdownCard> createState() => _ModernCountdownCardState();
}

enum _Phase { none, upcoming, ongoing, done }

class _ModernCountdownCardState extends State<ModernCountdownCard> {
  Timer? _timer;
  DateTime _now = DateTime.now();

  @override
  void initState() {
    super.initState();
    _syncTimer();
  }

  @override
  void didUpdateWidget(covariant ModernCountdownCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    _syncTimer();
  }

  /// Zamanlayıcı yalnızca sefer başlamamışken (geri sayım varken) çalışır.
  void _syncTimer() {
    final start = widget.trip?.startDate;
    final needsTimer = start != null && DateTime.now().isBefore(start);
    if (needsTimer && _timer == null) {
      _timer = Timer.periodic(const Duration(seconds: 1), (_) {
        if (!mounted) return;
        setState(() => _now = DateTime.now());
        final s = widget.trip?.startDate;
        if (s == null || !_now.isBefore(s)) {
          _timer?.cancel();
          _timer = null;
        }
      });
    } else if (!needsTimer) {
      _timer?.cancel();
      _timer = null;
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  _Phase get _phase {
    final start = widget.trip?.startDate;
    if (widget.trip == null || start == null) return _Phase.none;
    if (_now.isBefore(start)) return _Phase.upcoming;
    if (widget.totalDays == 0 || widget.daysLeft <= 0) return _Phase.done;
    return _Phase.ongoing;
  }

  String _fmt(DateTime? d) => d == null ? '-' : DateFormat('d MMM y').format(d);

  /// Kısa tarih aralığı: "15–24 Kasım 2026", "28 Kas – 3 Ara 2026" veya tam biçim.
  String _range(DateTime? s, DateTime? e) {
    if (s == null || e == null) return '${_fmt(s)} – ${_fmt(e)}';
    if (s.year == e.year && s.month == e.month) {
      return '${s.day}–${DateFormat('d MMMM y').format(e)}';
    }
    if (s.year == e.year) {
      return '${DateFormat('d MMM').format(s)} – ${DateFormat('d MMM y').format(e)}';
    }
    return '${_fmt(s)} – ${_fmt(e)}';
  }

  @override
  Widget build(BuildContext context) {
    final colors = widget.isMekke
        ? const [AppColors.emerald800, AppColors.emerald600]
        : const [AppColors.emerald900, Color(0xFF2F6655)];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors, begin: Alignment.topLeft, end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [BoxShadow(color: colors.first.withValues(alpha: 0.35), blurRadius: 16, offset: const Offset(0, 8))],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          children: [
            // Dekoratif daireler
            PositionedDirectional(end: -40, top: -40, child: _circle(150, 0.08)),
            PositionedDirectional(end: 40, bottom: -60, child: _circle(120, 0.06)),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 14, 16, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _header(),
                  const Spacer(),
                  _body(),
                  const Spacer(),
                  _footer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _circle(double size, double alpha) => Container(
        width: size,
        height: size,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white.withValues(alpha: alpha)),
      );

  Widget _header() {
    final trip = widget.trip;
    final l = context.l10n;
    final (label, icon) = switch (_phase) {
      _Phase.upcoming => (l.homePhaseUpcoming, Icons.flight_takeoff_rounded),
      _Phase.ongoing => (l.homePhaseOngoing, Icons.mosque_rounded),
      _Phase.done => (l.homePhaseDone, Icons.check_circle_rounded),
      _Phase.none => (l.homePhaseNone, Icons.event_busy_rounded),
    };
    return Row(
      children: [
        Container(
          width: 46,
          height: 46,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.15), blurRadius: 6)],
          ),
          child: Image.asset(
            widget.isMekke ? 'assets/icons/kabe.png' : 'assets/icons/medine.png',
            fit: BoxFit.contain,
            errorBuilder: (_, _, _) => const Icon(Icons.mosque_rounded, color: AppColors.primary),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.isMekke ? l.commonMecca : l.commonMedina,
                  style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, height: 1.1)),
              if (trip != null && (trip.startDate != null || trip.endDate != null))
                Text(
                  _range(trip.startDate, trip.endDate),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white.withValues(alpha: 0.85), fontSize: 12),
                ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.18),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white.withValues(alpha: 0.3)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: Colors.white, size: 14),
              const SizedBox(width: 4),
              Text(label, style: const TextStyle(color: Colors.white, fontSize: 11.5, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _body() {
    final l = context.l10n;
    switch (_phase) {
      case _Phase.none:
        return _message(Icons.info_outline_rounded, l.homeTripNotDefined);
      case _Phase.done:
        return _message(Icons.volunteer_activism_rounded, l.homeTripAccepted, big: true);
      case _Phase.upcoming:
        final diff = widget.trip!.startDate!.difference(_now);
        return Row(
          children: [
            _timeBox(diff.inDays, l.homeCountdownDays, wide: diff.inDays > 99),
            _colon(),
            _timeBox(diff.inHours % 24, l.homeCountdownHours),
            _colon(),
            _timeBox(diff.inMinutes % 60, l.homeCountdownMinutes),
            _colon(),
            _timeBox(diff.inSeconds % 60, l.homeCountdownSeconds),
          ],
        );
      case _Phase.ongoing:
        final total = widget.totalDays, left = widget.daysLeft;
        final dayNo = total - left + 1;
        final progress = (dayNo / total).clamp(0.0, 1.0);
        return Row(
          children: [
            SizedBox(
              width: 62,
              height: 62,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: progress,
                    strokeWidth: 6,
                    strokeCap: StrokeCap.round,
                    backgroundColor: Colors.white.withValues(alpha: 0.25),
                    valueColor: const AlwaysStoppedAnimation(AppColors.accent),
                  ),
                  Center(
                    child: Text(NumberFormat.percentPattern().format(progress),
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('$left',
                          style: const TextStyle(color: Colors.white, fontSize: 34, fontWeight: FontWeight.bold, height: 1)),
                      const SizedBox(width: 6),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: Text(l.homeDaysLeftLabel, style: const TextStyle(color: Colors.white, fontSize: 15)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(l.homeProgramDay(dayNo, total),
                      style: TextStyle(color: Colors.white.withValues(alpha: 0.85), fontSize: 12.5)),
                ],
              ),
            ),
          ],
        );
    }
  }

  Widget _footer() {
    final hotel = widget.hotelName?.trim() ?? '';
    final room = widget.roomNumber?.trim() ?? '';
    if (hotel.isEmpty && room.isEmpty) return const SizedBox.shrink();
    return Row(
      children: [
        if (hotel.isNotEmpty) Flexible(child: _chip(Icons.hotel_rounded, hotel)),
        if (hotel.isNotEmpty && room.isNotEmpty) const SizedBox(width: 6),
        if (room.isNotEmpty) _chip(Icons.meeting_room_rounded, context.l10n.homeRoom(room)),
      ],
    );
  }

  Widget _chip(IconData icon, String text) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.15),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 14, color: Colors.white),
            const SizedBox(width: 5),
            Flexible(
              child: Text(text,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600)),
            ),
          ],
        ),
      );

  Widget _message(IconData icon, String text, {bool big = false}) => Row(
        children: [
          Icon(icon, color: Colors.white, size: big ? 30 : 22),
          const SizedBox(width: 10),
          Expanded(
            child: Text(text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: big ? 20 : 15,
                  fontWeight: big ? FontWeight.bold : FontWeight.w500,
                  height: 1.25,
                )),
          ),
        ],
      );

  Widget _colon() => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Text(':', style: TextStyle(color: Colors.white.withValues(alpha: 0.7), fontSize: 22, fontWeight: FontWeight.bold)),
      );

  Widget _timeBox(int value, String label, {bool wide = false}) {
    return Expanded(
      flex: wide ? 5 : 4,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 3),
            padding: const EdgeInsets.symmetric(vertical: 6),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.12), blurRadius: 6, offset: const Offset(0, 3))],
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                value.toString().padLeft(2, '0'),
                style: TextStyle(
                  color: widget.isMekke ? AppColors.primaryDark : const Color(0xFF163832),
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  fontFeatures: const [FontFeature.tabularFigures()],
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(label, style: TextStyle(color: Colors.white.withValues(alpha: 0.85), fontSize: 11)),
        ],
      ),
    );
  }
}

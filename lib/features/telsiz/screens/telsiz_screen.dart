import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

import '../../../common/services/firestore_service.dart';
import '../../../common/services/telsiz_status_service.dart';
import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../admin/models/trip_model.dart';
import '../../admin/providers/admin_provider.dart';
import '../../auth/models/user_model.dart';
import '../models/telsiz_broadcast.dart';
import '../providers/telsiz_controller.dart';
import '../telsiz_config.dart';
import '../widgets/telsiz_widgets.dart';

/// Telsiz: rehberden misafirlere tek yönlü canlı ses (LiveKit).
/// Kullanıcı tipine göre rehber (yayın) ya da misafir (dinleme) görünümü.
class TelsizScreen extends StatelessWidget {
  const TelsizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AppStateProvider>().currentUser;
    // Başka hesapla girildiyse eski oturumu kapat.
    TelsizController.instance.resetForUser(user?.id);

    final l = context.l10n;
    Widget body;
    if (user == null) {
      body = EmptyStateWidget(icon: Icons.lock_outline, message: l.telsizLoginRequired);
    } else if (!TelsizConfig.isConfigured) {
      body = const _NotConfigured();
    } else if (user.isGlobalAdmin) {
      // Genel admin: "Yönet" ile seçili acente; yoksa kendi acentesi.
      final admin = context.watch<AdminProvider>();
      final own = user.agencyId ?? '';
      final agency = admin.overrideAgencyId ?? (own.isNotEmpty ? own : '');
      body = agency.isEmpty
          ? EmptyStateWidget(icon: Icons.business_outlined, message: l.rolesSelectAgencyFirst)
          : _GuideView(
              key: ValueKey(agency),
              user: agency == own ? user : UserModel.fromMap(user.id, {...user.toJson(), 'agency_id': agency}),
            );
    } else if (user.agencyId == null || user.agencyId!.isEmpty) {
      body = EmptyStateWidget(icon: Icons.business_outlined, message: l.telsizNoAgency, subtitle: l.telsizNoAgencyHint);
    } else if (user.isAdmin) {
      body = _GuideView(user: user);
    } else {
      body = _ListenerView(user: user);
    }

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: Text(l.telsizTitle)),
      body: SafeArea(child: body),
    );
  }
}

class _NotConfigured extends StatelessWidget {
  const _NotConfigured();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: TelsizCard(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.settings_input_antenna_rounded, size: 56, color: AppColors.accent),
              const SizedBox(height: 16),
              Text(
                context.l10n.telsizNotConfiguredTitle,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.text),
              ),
              const SizedBox(height: 8),
              Text(
                context.l10n.telsizNotConfiguredBody,
                textAlign: TextAlign.center,
                style: const TextStyle(color: AppColors.textMuted, height: 1.4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ======================================================================
// Rehber
// ======================================================================

class _GuideView extends StatefulWidget {
  final UserModel user;
  const _GuideView({super.key, required this.user});

  @override
  State<_GuideView> createState() => _GuideViewState();
}

class _GuideViewState extends State<_GuideView> {
  final _c = TelsizController.instance;
  List<TripModel> _trips = [];
  bool _loadingTrips = true;
  String _selected = TelsizBroadcast.allTrips;

  @override
  void initState() {
    super.initState();
    if (_c.mode == TelsizMode.guide && _c.tripId != null) _selected = _c.tripId!;
    _loadTrips();
  }

  Future<void> _loadTrips() async {
    try {
      final trips = await FirestoreService.instance.getTripsByAgency(widget.user.agencyId!);
      if (!mounted) return;
      setState(() {
        _trips = trips;
        _loadingTrips = false;
        if (!_c.isGuideLive) _selected = _defaultTrip(trips)?.id ?? TelsizBroadcast.allTrips;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() => _loadingTrips = false);
    }
  }

  /// Bugün süren sefer; yoksa başlangıcı/bitişi bugüne en yakın olan.
  TripModel? _defaultTrip(List<TripModel> trips) {
    if (trips.isEmpty) return null;
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    TripModel? best;
    var bestDist = 1 << 30;
    for (final t in trips) {
      final s = t.startDate;
      if (s == null) continue;
      final e = t.endDate ?? s;
      final sd = DateTime(s.year, s.month, s.day);
      final ed = DateTime(e.year, e.month, e.day);
      int dist;
      if (!today.isBefore(sd) && !today.isAfter(ed)) {
        dist = 0;
      } else if (today.isBefore(sd)) {
        dist = sd.difference(today).inDays;
      } else {
        dist = today.difference(ed).inDays + 1; // eşitlikte gelecek sefer öne geçsin
      }
      if (dist < bestDist) {
        bestDist = dist;
        best = t;
      }
    }
    return best ?? trips.first;
  }

  String _tripLabel(String id) {
    if (id == TelsizBroadcast.allTrips) return context.l10n.telsizAllAgency;
    for (final t in _trips) {
      if (t.id == id) return t.name.isNotEmpty ? t.name : t.location;
    }
    return context.l10n.telsizTrip;
  }

  Future<void> _toggle() async {
    if (_c.isGuideLive) {
      final ok = await showDialog<bool>(
        context: context,
        builder: (ctx) => AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text(ctx.l10n.telsizEndBroadcastTitle),
          content: Text(ctx.l10n.telsizEndBroadcastConfirm),
          actions: [
            TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(ctx.l10n.commonCancel)),
            TextButton(
              onPressed: () => Navigator.pop(ctx, true),
              child: Text(ctx.l10n.telsizEnd, style: const TextStyle(color: AppColors.error)),
            ),
          ],
        ),
      );
      if (ok == true) await _c.stopBroadcast();
      return;
    }
    final ok = await _c.startBroadcast(user: widget.user, tripId: _selected);
    final msg = _c.errorMessage;
    if (!ok && msg != null) {
      GlobalSnackbar.showError(msg);
      // Mikrofon izni kalıcı reddedildiyse ayarları aç (mesaj metnine bakmadan).
      if (await Permission.microphone.isPermanentlyDenied) await openAppSettings();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _c,
      builder: (context, _) {
        final live = _c.isGuideLive;
        final busy = _c.isBusy || (_c.mode == TelsizMode.guide && _c.phase == TelsizPhase.connecting);
        final reconnecting = _c.mode == TelsizMode.guide && _c.phase == TelsizPhase.reconnecting;
        final onAir = live && !busy;
        final l = context.l10n;
        return ListView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
          children: [
            TelsizCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l.telsizBroadcastGroup,
                    style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.text),
                  ),
                  const SizedBox(height: 10),
                  if (_loadingTrips)
                    const LinearProgressIndicator(minHeight: 2)
                  else
                    DropdownButtonFormField<String>(
                      key: ValueKey('trip_$_selected'),
                      initialValue: _selected,
                      isExpanded: true,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.groups_rounded, color: AppColors.primary),
                        filled: true,
                        fillColor: AppColors.primaryLight.withValues(alpha: 0.5),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      ),
                      items: [
                        for (final t in _trips)
                          DropdownMenuItem(
                            value: t.id,
                            child: Text(_tripLabel(t.id), overflow: TextOverflow.ellipsis),
                          ),
                        DropdownMenuItem(value: TelsizBroadcast.allTrips, child: Text(l.telsizAllAgency)),
                      ],
                      onChanged: live || busy ? null : (v) => setState(() => _selected = v ?? _selected),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 28),
            Center(
              child: TelsizBigButton(
                active: live,
                busy: busy,
                icon: live ? Icons.stop_rounded : Icons.mic_rounded,
                label: busy ? l.telsizConnecting : (live ? l.telsizEndBroadcast : l.telsizStartBroadcast),
                onTap: busy ? null : _toggle,
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: TelsizStatusChip(
                text: reconnecting
                    ? l.telsizReconnecting
                    : onAir
                    ? (_c.micEnabled ? l.telsizOnAir : l.telsizOnAirMuted)
                    : l.telsizOffAir,
                color: reconnecting ? AppColors.warning : (onAir ? AppColors.error : AppColors.textMuted),
                pulsing: onAir && !reconnecting,
              ),
            ),
            const SizedBox(height: 24),
            TelsizCard(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TelsizStat(
                          icon: Icons.headphones_rounded,
                          label: l.telsizListeners,
                          value: onAir ? '${_c.listenerCount}' : '–',
                        ),
                      ),
                      Container(width: 1, height: 40, color: AppColors.divider),
                      Expanded(
                        child: TelsizStat(
                          icon: Icons.timer_outlined,
                          label: l.telsizDuration,
                          value: onAir ? formatTelsizDuration(_c.elapsed) : '00:00',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  TelsizLevelMeter(level: onAir && _c.micEnabled ? _c.level : 0, label: l.telsizMicLevel),
                  const SizedBox(height: 18),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: onAir ? _c.toggleMute : null,
                      icon: Icon(_c.micEnabled ? Icons.mic_off_rounded : Icons.mic_rounded),
                      label: Text(_c.micEnabled ? l.telsizMute : l.telsizUnmute),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: _c.micEnabled ? AppColors.error : AppColors.primary,
                        side: BorderSide(
                          color: (_c.micEnabled ? AppColors.error : AppColors.primary).withValues(alpha: 0.5),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            TelsizHint(icon: Icons.info_outline_rounded, text: l.telsizGuideHint),
          ],
        );
      },
    );
  }
}

// ======================================================================
// Misafir
// ======================================================================

class _ListenerView extends StatefulWidget {
  final UserModel user;
  const _ListenerView({required this.user});

  @override
  State<_ListenerView> createState() => _ListenerViewState();
}

class _ListenerViewState extends State<_ListenerView> {
  final _c = TelsizController.instance;
  late final Stream<List<TelsizBroadcast>> _stream;
  Timer? _staleTimer;

  @override
  void initState() {
    super.initState();
    _stream = TelsizStatusService.instance.watchAgency(widget.user.agencyId!);
    // updated_at eskiyince "yayında değil"e düşmek için arada yeniden çiz.
    _staleTimer = Timer.periodic(const Duration(seconds: 30), (_) {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _staleTimer?.cancel();
    super.dispose();
  }

  Set<String> get _myIds {
    final a = widget.user.agencyId!;
    return {
      for (final t in [widget.user.mekkeSeferiId, widget.user.medineSeferiId, TelsizBroadcast.allTrips])
        if (t != null && t.isNotEmpty) TelsizBroadcast.docId(a, t),
    };
  }

  Future<void> _listen(TelsizBroadcast b) async {
    final ok = await _c.startListening(user: widget.user, broadcast: b);
    final msg = _c.errorMessage;
    if (!ok && msg != null) GlobalSnackbar.showError(msg);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<TelsizBroadcast>>(
      stream: _stream,
      builder: (context, snap) {
        if (snap.hasError) {
          return EmptyStateWidget(
            icon: Icons.wifi_off_rounded,
            message: context.l10n.telsizStatusError,
            subtitle: context.l10n.telsizCheckInternet,
          );
        }
        if (!snap.hasData) return const Center(child: CircularProgressIndicator());
        final ids = _myIds;
        final now = DateTime.now();
        final lives = snap.data!.where((b) => ids.contains(b.id) && b.isActive(now)).toList()
          // Sefere özel yayın "Tüm acente"den önce, sonra en yeni.
          ..sort((x, y) {
            if (x.isAllAgency != y.isAllAgency) return x.isAllAgency ? 1 : -1;
            return (y.startedAt ?? now).compareTo(x.startedAt ?? now);
          });

        return ListenableBuilder(
          listenable: _c,
          builder: (context, _) {
            final mine = _c.mode == TelsizMode.listener;
            final listening = mine && _c.isActive;
            return ListView(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
              children: [
                if (mine && _c.phase == TelsizPhase.ended) ...[
                  _EndedBanner(onClose: _c.clearEnded),
                  const SizedBox(height: 16),
                ],
                if (lives.isEmpty && !listening)
                  const _NotLive()
                else ...[
                  for (final b in lives) ...[
                    _BroadcastCard(
                      broadcast: b,
                      listening: listening && _c.broadcastId == b.id,
                      controller: _c,
                      onListen: () => _listen(b),
                    ),
                    const SizedBox(height: 16),
                  ],
                  // Dinlenen yayın listeden düştüyse (ör. belge eskidi) kartı yine göster.
                  if (listening && !lives.any((b) => b.id == _c.broadcastId)) ...[
                    _BroadcastCard(broadcast: null, listening: true, controller: _c, onListen: () {}),
                    const SizedBox(height: 16),
                  ],
                ],
                TelsizHint(icon: Icons.headphones_rounded, text: context.l10n.telsizListenerHint),
              ],
            );
          },
        );
      },
    );
  }
}

class _NotLive extends StatelessWidget {
  const _NotLive();

  @override
  Widget build(BuildContext context) {
    return TelsizCard(
      child: Column(
        children: [
          const SizedBox(height: 8),
          Container(
            width: 110,
            height: 110,
            decoration: const BoxDecoration(color: AppColors.primaryLight, shape: BoxShape.circle),
            child: const Icon(Icons.settings_input_antenna_rounded, color: AppColors.primary, size: 52),
          ),
          const SizedBox(height: 18),
          Text(
            context.l10n.telsizGuideNotLive,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.text),
          ),
          const SizedBox(height: 8),
          Text(
            context.l10n.telsizGuideNotLiveBody,
            textAlign: TextAlign.center,
            style: const TextStyle(color: AppColors.textMuted, height: 1.4),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class _EndedBanner extends StatelessWidget {
  final VoidCallback onClose;
  const _EndedBanner({required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(16, 4, 4, 4),
      decoration: BoxDecoration(
        color: AppColors.accent.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.accent.withValues(alpha: 0.4)),
      ),
      child: Row(
        children: [
          const Icon(Icons.stop_circle_outlined, color: AppColors.accent),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              context.l10n.telsizEnded,
              style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.text),
            ),
          ),
          IconButton(onPressed: onClose, icon: const Icon(Icons.close, size: 20)),
        ],
      ),
    );
  }
}

class _BroadcastCard extends StatelessWidget {
  /// null: dinlenen yayının belgesi listede yok.
  final TelsizBroadcast? broadcast;
  final bool listening;
  final TelsizController controller;
  final VoidCallback onListen;

  const _BroadcastCard({
    required this.broadcast,
    required this.listening,
    required this.controller,
    required this.onListen,
  });

  @override
  Widget build(BuildContext context) {
    final c = controller;
    final l = context.l10n;
    final name = broadcast?.guideName ?? c.guideName ?? l.telsizGuide;
    final busy = listening && (c.isBusy || c.phase == TelsizPhase.connecting);
    final String status;
    final Color statusColor;
    if (!listening) {
      status = l.telsizLiveNow;
      statusColor = AppColors.error;
    } else {
      switch (c.phase) {
        case TelsizPhase.connecting:
          status = l.telsizConnecting;
          statusColor = AppColors.warning;
        case TelsizPhase.reconnecting:
          status = l.telsizConnectionLost;
          statusColor = AppColors.warning;
        case TelsizPhase.live:
          status = c.guidePresent ? l.telsizListening : l.telsizWaitingGuide;
          statusColor = c.guidePresent ? AppColors.success : AppColors.warning;
        default:
          status = l.telsizNotConnected;
          statusColor = AppColors.textMuted;
      }
    }

    return TelsizCard(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: const BoxDecoration(gradient: AppColors.primaryGradient, shape: BoxShape.circle),
                child: const Icon(Icons.record_voice_over_rounded, color: Colors.white),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: AppColors.text),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      broadcast?.isAllAgency == true ? l.telsizToAllAgency : l.telsizToYourTrip,
                      style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                    ),
                  ],
                ),
              ),
              TelsizStatusChip(text: l.telsizLiveBadge, color: AppColors.error, pulsing: true, dense: true),
            ],
          ),
          const SizedBox(height: 20),
          TelsizBigButton(
            active: listening,
            busy: busy,
            size: 150,
            icon: listening ? Icons.stop_rounded : Icons.headphones_rounded,
            label: busy ? l.telsizConnecting : (listening ? l.telsizStop : l.telsizListen),
            onTap: busy || c.isBusy
                ? null
                : listening
                ? c.stopListening
                : (broadcast == null ? null : onListen),
          ),
          const SizedBox(height: 14),
          TelsizStatusChip(text: status, color: statusColor, pulsing: listening && c.phase == TelsizPhase.live),
          if (listening) ...[
            const SizedBox(height: 18),
            TelsizLevelMeter(level: c.level, label: l.telsizGuideVoice),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.volume_down_rounded, color: AppColors.textMuted),
                Expanded(
                  child: Slider(
                    value: c.volume,
                    min: 0,
                    max: 2,
                    divisions: 20,
                    activeColor: AppColors.primary,
                    label: NumberFormat.percentPattern().format(c.volume),
                    onChanged: c.setVolume,
                  ),
                ),
                const Icon(Icons.volume_up_rounded, color: AppColors.textMuted),
              ],
            ),
            Text(l.telsizVolumeKeysHint, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
          ],
        ],
      ),
    );
  }
}

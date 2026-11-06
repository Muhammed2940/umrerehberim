import 'dart:async';
import 'dart:io' show Platform;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart' as rtc;
import 'package:livekit_client/livekit_client.dart' as lk;
import 'package:permission_handler/permission_handler.dart';

import '../../../common/services/telsiz_foreground_service.dart';
import '../../../common/services/telsiz_status_service.dart';
import '../../../common/services/telsiz_token_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../auth/models/user_model.dart';
import '../models/telsiz_broadcast.dart';
import '../telsiz_config.dart';

enum TelsizMode { none, guide, listener }

enum TelsizPhase {
  idle,
  connecting,
  live,
  reconnecting,

  /// Misafir: dinlediği yayın bitti.
  ended,
  error,
}

/// Telsiz oturumu (tek yönlü canlı ses). Ekran kapansa da yaşaması için
/// uygulama genelinde tek örnek; ekran [ListenableBuilder] ile dinler.
///
/// - Rehber: mikrofonu yayınlar, Firestore `telsiz` belgesini canlı tutar.
/// - Misafir: yalnız abone olur, hiçbir track yayınlamaz.
class TelsizController extends ChangeNotifier {
  TelsizController._();
  static final TelsizController instance = TelsizController._();

  static const Duration _heartbeatEvery = Duration(seconds: 60);
  /// Odadaki yayıncı: ses track'i yayınlayan katılımcı (yalnız rehber yayınlar).
  static bool _isPublisher(lk.RemoteParticipant p) => p.audioTrackPublications.isNotEmpty;

  TelsizMode mode = TelsizMode.none;
  TelsizPhase phase = TelsizPhase.idle;
  String? errorMessage;

  /// Oturumu açan kullanıcı (çıkış/başka hesap girişinde oturum kapatılır).
  String? ownerUid;
  String? agencyId;
  String? tripId;
  String? guideName;
  DateTime? startedAt;

  bool micEnabled = true;
  int listenerCount = 0;
  bool guidePresent = false;
  double level = 0;

  /// Misafir dinleme sesi (WebRTC kazancı, 1.0 = normal).
  double volume = 1.0;

  lk.Room? _room;
  lk.EventsListener<lk.RoomEvent>? _events;
  Timer? _heartbeat;
  Timer? _ticker;
  Timer? _reconnectTimer;
  StreamSubscription<DocumentSnapshot<Map<String, dynamic>>>? _docSub;
  bool _wantConnected = false;
  bool _busy = false;
  int _retries = 0;
  String? _identity;
  String? _displayName;
  String? _roomName;
  static bool _lkInitialized = false;

  bool get isActive =>
      mode != TelsizMode.none && const [TelsizPhase.connecting, TelsizPhase.live, TelsizPhase.reconnecting].contains(phase);
  bool get isBusy => _busy;
  bool get isGuideLive => mode == TelsizMode.guide && isActive;
  String? get broadcastId => (agencyId != null && tripId != null) ? TelsizBroadcast.docId(agencyId!, tripId!) : null;
  Duration get elapsed => startedAt == null ? Duration.zero : DateTime.now().difference(startedAt!);

  // ---------------------------------------------------------------- Rehber

  /// Yayını başlatır. Hata olursa [errorMessage] dolar ve false döner.
  Future<bool> startBroadcast({required UserModel user, required String tripId}) async {
    if (_busy || isActive) return false;
    final agency = user.agencyId;
    if (agency == null || agency.isEmpty) return _fail(l10n.telsizNoAgency);
    if (!TelsizConfig.isConfigured) return _fail(l10n.telsizNotConfiguredError);

    _busy = true;
    errorMessage = null;
    notifyListeners();
    try {
      final mic = await Permission.microphone.request();
      if (!mic.isGranted) {
        _busy = false;
        return _fail(mic.isPermanentlyDenied
            ? l10n.telsizMicPermanentlyDenied
            : l10n.telsizMicRequired);
      }
      await _requestSidePermissions();
      await _ensureLiveKit(publisher: true);

      mode = TelsizMode.guide;
      phase = TelsizPhase.connecting;
      ownerUid = user.id;
      agencyId = agency;
      this.tripId = tripId;
      guideName = user.userName;
      micEnabled = true;
      listenerCount = 0;
      _identity = user.id;
      _displayName = user.userName.isNotEmpty ? user.userName : l10n.telsizGuide;
      _roomName = TelsizBroadcast.roomName(agency, tripId);
      notifyListeners();

      // Foreground service mikrofon kullanımından ÖNCE ve uygulama ön plandayken başlamalı (Android 14+).
      await TelsizForegroundService.start(
        microphone: true,
        title: l10n.telsizNotifBroadcastTitle,
        text: l10n.telsizNotifBroadcastText,
      );

      _wantConnected = true;
      await _connect();
      await _room?.localParticipant?.setMicrophoneEnabled(true);

      await TelsizStatusService.instance.goLive(
        agencyId: agency,
        tripId: tripId,
        guideId: user.id,
        guideName: _displayName!,
      );
      startedAt = DateTime.now();
      phase = TelsizPhase.live;
      _heartbeat = Timer.periodic(_heartbeatEvery, (_) => _sendHeartbeat());
      _startTicker();
      _busy = false;
      notifyListeners();
      return true;
    } catch (e) {
      debugPrint('Telsiz yayını başlatılamadı: $e');
      await _teardown(endFirestore: true);
      _busy = false;
      return _fail(_describe(e));
    }
  }

  Future<void> stopBroadcast() async {
    if (mode != TelsizMode.guide) return;
    _busy = true;
    notifyListeners();
    await _teardown(endFirestore: true);
    _busy = false;
    notifyListeners();
  }

  Future<void> toggleMute() async {
    final p = _room?.localParticipant;
    if (mode != TelsizMode.guide || p == null) return;
    micEnabled = !micEnabled;
    notifyListeners();
    try {
      await p.setMicrophoneEnabled(micEnabled);
      await TelsizForegroundService.update(
        title: l10n.telsizNotifBroadcastTitle,
        text: micEnabled ? l10n.telsizNotifGuestsListening : l10n.telsizNotifMicOff,
      );
    } catch (e) {
      micEnabled = !micEnabled;
      notifyListeners();
    }
  }

  Future<void> _sendHeartbeat() async {
    final a = agencyId, t = tripId;
    if (mode != TelsizMode.guide || a == null || t == null) return;
    try {
      await TelsizStatusService.instance.heartbeat(a, t);
    } catch (e) {
      debugPrint('Telsiz heartbeat: $e');
    }
  }

  // ---------------------------------------------------------------- Misafir

  Future<bool> startListening({required UserModel user, required TelsizBroadcast broadcast}) async {
    if (_busy) return false;
    if (isActive) await _teardown(endFirestore: false);
    if (!TelsizConfig.isConfigured) return _fail(l10n.telsizNotConfiguredError);

    _busy = true;
    errorMessage = null;
    mode = TelsizMode.listener;
    phase = TelsizPhase.connecting;
    ownerUid = user.id;
    agencyId = broadcast.agencyId;
    tripId = broadcast.tripId;
    guideName = broadcast.guideName;
    guidePresent = false;
    _identity = user.id;
    _displayName = user.userName.isNotEmpty ? user.userName : l10n.telsizGuest;
    _roomName = broadcast.room;
    notifyListeners();
    try {
      await _requestSidePermissions();
      await _ensureLiveKit(publisher: false);
      await TelsizForegroundService.start(
        microphone: false,
        title: l10n.telsizNotifListeningTitle,
        text: l10n.telsizNotifListeningText(broadcast.guideName),
      );
      _wantConnected = true;
      await _connect();
      startedAt = DateTime.now();
      phase = TelsizPhase.live;
      _watchBroadcastDoc(broadcast.id);
      _startTicker();
      _busy = false;
      notifyListeners();
      return true;
    } catch (e) {
      debugPrint('Telsiz dinleme başlatılamadı: $e');
      await _teardown(endFirestore: false);
      _busy = false;
      return _fail(_describe(e));
    }
  }

  Future<void> stopListening() async {
    if (mode != TelsizMode.listener) return;
    await _teardown(endFirestore: false);
    notifyListeners();
  }

  Future<void> setVolume(double v) async {
    volume = v.clamp(0.0, 2.0);
    notifyListeners();
    await _applyVolume();
  }

  /// "Yayın sona erdi" uyarısını kapatır.
  void clearEnded() {
    if (phase == TelsizPhase.ended || phase == TelsizPhase.error) {
      phase = TelsizPhase.idle;
      mode = TelsizMode.none;
      errorMessage = null;
      notifyListeners();
    }
  }

  void _watchBroadcastDoc(String id) {
    _docSub?.cancel();
    _docSub = FirebaseFirestore.instance.collection('telsiz').doc(id).snapshots().listen((snap) {
      if (!snap.exists) {
        _endedByGuide();
        return;
      }
      final b = TelsizBroadcast.fromFirestore(snap);
      if (!b.live) _endedByGuide();
    }, onError: (Object e) => debugPrint('Telsiz belge dinleme: $e'));
  }

  Future<void> _endedByGuide() async {
    if (mode != TelsizMode.listener) return;
    await _teardown(endFirestore: false, keepMode: true);
    phase = TelsizPhase.ended;
    notifyListeners();
  }

  Future<void> _applyVolume() async {
    final room = _room;
    if (room == null) return;
    for (final p in room.remoteParticipants.values) {
      for (final pub in p.audioTrackPublications) {
        final t = pub.track;
        if (t == null) continue;
        try {
          await rtc.Helper.setVolume(volume, t.mediaStreamTrack);
        } catch (e) {
          debugPrint('Telsiz ses seviyesi: $e');
        }
      }
    }
  }

  // ---------------------------------------------------------------- Ortak

  /// Misafir başka hesapla girerse ya da çıkış yapılırsa çağrılır.
  Future<void> resetForUser(String? uid) async {
    if (ownerUid != null && ownerUid != uid) {
      await _teardown(endFirestore: mode == TelsizMode.guide);
      notifyListeners();
    }
  }

  Future<void> _ensureLiveKit({required bool publisher}) async {
    if (_lkInitialized) return;
    try {
      // Android'de WebRTC'nin çıkış ses özellikleri başlatılırken belirlenir:
      // rehber iki yönlü (iletişim, yankı giderme), misafir medya (kulaklık/hoparlör, medya ses tuşları).
      await lk.LiveKitClient.initialize(
        initialAudioSessionOptions: publisher
            // ignore: experimental_member_use
            ? const lk.AudioSessionOptions.communication()
            // ignore: experimental_member_use
            : const lk.AudioSessionOptions.mediaPlayback(),
      );
    } catch (e) {
      debugPrint('LiveKit initialize: $e');
    }
    _lkInitialized = true;
  }

  Future<void> _requestSidePermissions() async {
    await TelsizForegroundService.requestNotificationPermission();
    if (!kIsWeb && Platform.isAndroid) {
      try {
        await Permission.bluetoothConnect.request(); // Bluetooth kulaklık yönlendirmesi
      } catch (_) {}
    }
  }

  Future<void> _connect() async {
    final provider = TelsizTokenProvider.instance;
    if (provider == null) throw TelsizTokenException(l10n.telsizNotConfiguredError);
    final details = await provider.fetch(
      roomName: _roomName!,
      identity: _identity!,
      canPublish: mode == TelsizMode.guide,
      name: _displayName!,
    );
    final room = lk.Room(
      roomOptions: const lk.RoomOptions(
        adaptiveStream: false,
        dynacast: false,
        defaultAudioPublishOptions: lk.AudioPublishOptions(dtx: true, red: true),
      ),
    );
    final events = room.createListener();
    events
      ..on<lk.RoomReconnectingEvent>((_) {
        phase = TelsizPhase.reconnecting;
        notifyListeners();
      })
      ..on<lk.RoomReconnectedEvent>((_) {
        phase = TelsizPhase.live;
        notifyListeners();
      })
      ..on<lk.RoomDisconnectedEvent>((e) => _onDisconnected(e.reason))
      ..on<lk.ParticipantConnectedEvent>((_) => _syncParticipants())
      ..on<lk.ParticipantDisconnectedEvent>((_) => _syncParticipants())
      ..on<lk.TrackSubscribedEvent>((_) {
        _syncParticipants();
        _applyVolume();
      })
      ..on<lk.TrackUnsubscribedEvent>((_) => _syncParticipants());

    _room = room;
    _events = events;
    await room.connect(details.serverUrl, details.token);
    _retries = 0;
    _syncParticipants();
  }

  void _syncParticipants() {
    final room = _room;
    if (room == null) return;
    final remotes = room.remoteParticipants.values;
    // Rehber tarafında tüm uzak katılımcılar dinleyicidir.
    listenerCount = remotes.where((p) => !_isPublisher(p)).length;
    guidePresent = remotes.any(_isPublisher);
    notifyListeners();
  }

  void _onDisconnected(lk.DisconnectReason? reason) {
    if (!_wantConnected) return;
    if (reason == lk.DisconnectReason.clientInitiated) return;
    // Rehber başka cihazdan aynı kimlikle girdiyse yeniden bağlanma.
    if (reason == lk.DisconnectReason.duplicateIdentity) {
      _teardown(endFirestore: false, keepMode: true).then((_) {
        phase = TelsizPhase.error;
        errorMessage = l10n.telsizDuplicateIdentity;
        notifyListeners();
      });
      return;
    }
    phase = TelsizPhase.reconnecting;
    notifyListeners();
    _scheduleReconnect();
  }

  void _scheduleReconnect() {
    _reconnectTimer?.cancel();
    final seconds = [2, 4, 8, 15][_retries.clamp(0, 3)];
    _retries++;
    _reconnectTimer = Timer(Duration(seconds: seconds), () async {
      if (!_wantConnected) return;
      try {
        await _disposeRoom();
        await _connect();
        if (mode == TelsizMode.guide) {
          await _room?.localParticipant?.setMicrophoneEnabled(micEnabled);
          await _sendHeartbeat();
        }
        phase = TelsizPhase.live;
        notifyListeners();
      } catch (e) {
        debugPrint('Telsiz yeniden bağlanma: $e');
        if (_wantConnected) _scheduleReconnect();
      }
    });
  }

  void _startTicker() {
    _ticker?.cancel();
    _ticker = Timer.periodic(const Duration(milliseconds: 250), (t) {
      final room = _room;
      double l = 0;
      if (room != null) {
        if (mode == TelsizMode.guide) {
          l = micEnabled ? (room.localParticipant?.audioLevel ?? 0) : 0;
        } else {
          for (final p in room.remoteParticipants.values) {
            if (_isPublisher(p) && p.audioLevel > l) l = p.audioLevel;
          }
        }
      }
      // Yumuşatma: ani düşüşleri yavaşlat.
      level = l > level ? l : level * 0.7 + l * 0.3;
      notifyListeners();
    });
  }

  Future<void> _disposeRoom() async {
    final room = _room;
    final events = _events;
    _room = null;
    _events = null;
    await events?.dispose();
    if (room != null) {
      try {
        await room.disconnect();
      } catch (_) {}
      try {
        await room.dispose();
      } catch (_) {}
    }
  }

  Future<void> _teardown({required bool endFirestore, bool keepMode = false}) async {
    _wantConnected = false;
    _heartbeat?.cancel();
    _ticker?.cancel();
    _reconnectTimer?.cancel();
    _heartbeat = _ticker = _reconnectTimer = null;
    await _docSub?.cancel();
    _docSub = null;
    final a = agencyId, t = tripId;
    if (endFirestore && mode == TelsizMode.guide && a != null && t != null) {
      try {
        await TelsizStatusService.instance.end(a, t);
      } catch (e) {
        debugPrint('Telsiz bitiş yazılamadı: $e');
      }
    }
    await _disposeRoom();
    await TelsizForegroundService.stop();
    level = 0;
    listenerCount = 0;
    guidePresent = false;
    startedAt = null;
    if (!keepMode) {
      mode = TelsizMode.none;
      phase = TelsizPhase.idle;
      ownerUid = null;
    }
  }

  bool _fail(String message) {
    errorMessage = message;
    phase = TelsizPhase.error;
    notifyListeners();
    return false;
  }

  String _describe(Object e) {
    if (e is TelsizTokenException) {
      if (e.statusCode == 401 || e.statusCode == 403) return l10n.telsizNoPermission;
      if (e.statusCode == null) return e.message;
      return l10n.telsizServerDenied(e.statusCode!);
    }
    if (e is FirebaseException && e.code == 'permission-denied') {
      return l10n.telsizStatusSaveDenied;
    }
    final s = e.toString();
    if (s.contains('SocketException') || s.contains('ClientException')) {
      return l10n.telsizNoInternet;
    }
    return l10n.telsizConnectFailed;
  }
}

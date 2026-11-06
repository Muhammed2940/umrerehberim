import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/services/exchange_rate_service.dart';
import '../../../common/services/firestore_service.dart';
import '../../../core/providers/locale_provider.dart';
import '../../admin/models/event_model.dart';
import '../../admin/models/notification_model.dart';
import '../../admin/models/trip_model.dart';
import '../../auth/models/user_model.dart';

/// Ana sayfa ve takvim ekranının kendi verileri.
///
/// Oturum verileri (seferler, ezan vakitleri, döviz…) AppStateProvider'dadır;
/// bu sağlayıcı yalnızca ekran durumunu (seçili ezan kartı, seçili gün),
/// takvim etkinliklerini ve elle yenilenen duyuruları tutar.
class HomeProvider extends ChangeNotifier {
  HomeProvider() : _selectedDate = _onlyDate(DateTime.now());

  // ---------------------------------------------------------------------------
  // Ezan vakitleri kaydırıcısı
  // ---------------------------------------------------------------------------
  int _currentPrayerIndex = 0;
  int get currentPrayerIndex => _currentPrayerIndex;

  void setCurrentPrayerIndex(int index) {
    if (_currentPrayerIndex == index) return;
    _currentPrayerIndex = index;
    notifyListeners();
  }

  // ---------------------------------------------------------------------------
  // Sefer günleri (geri sayım kartı)
  // ---------------------------------------------------------------------------
  static DateTime _onlyDate(DateTime d) => DateTime(d.year, d.month, d.day);

  static int _inclusiveDaysBetween(DateTime a, DateTime b) =>
      _onlyDate(b).difference(_onlyDate(a)).inDays + 1;

  /// Seferin toplam gün sayısı (başlangıç ve bitiş dahil). Tarih yoksa 0.
  int totalDays(TripModel? trip) {
    final s = trip?.startDate, e = trip?.endDate;
    if (s == null || e == null) return 0;
    final d = _inclusiveDaysBetween(s, e);
    return d < 0 ? 0 : d;
  }

  /// Sefer süresince kalan gün (bugün dahil). Sefer başlamadıysa toplam gün,
  /// bittiyse 0 döner.
  int daysLeft(TripModel? trip) {
    final total = totalDays(trip);
    if (total == 0) return 0;
    final today = _onlyDate(DateTime.now());
    final start = _onlyDate(trip!.startDate!);
    if (today.isBefore(start)) return total;
    final left = _inclusiveDaysBetween(today, trip.endDate!);
    return left.clamp(0, total);
  }

  // ---------------------------------------------------------------------------
  // Takvim etkinlikleri
  // ---------------------------------------------------------------------------
  DateTime _selectedDate;
  DateTime get selectedDate => _selectedDate;

  List<EventModel> _events = [];
  List<EventModel> get allEvents => List.unmodifiable(_events);

  bool _isLoadingEvents = false;
  bool get isLoadingEvents => _isLoadingEvents;

  String? _eventsError;
  String? get eventsError => _eventsError;

  String? _loadedAgencyId;
  String? get loadedAgencyId => _loadedAgencyId;

  void selectDate(DateTime date) {
    final d = _onlyDate(date);
    if (d == _selectedDate) return;
    _selectedDate = d;
    notifyListeners();
  }

  void nextDay() => selectDate(_selectedDate.add(const Duration(days: 1)));
  void previousDay() => selectDate(_selectedDate.subtract(const Duration(days: 1)));

  /// Acentenin tüm etkinliklerini çeker; gün filtrelemesi yerelde yapılır.
  /// Aynı acente için ikinci kez çağrılırsa [force] olmadan tekrar çekmez.
  Future<void> loadEvents(String? agencyId, {bool force = false}) async {
    if (agencyId == null || agencyId.isEmpty) return;
    if (_isLoadingEvents) return;
    if (!force && _loadedAgencyId == agencyId) return;

    _isLoadingEvents = true;
    _eventsError = null;
    notifyListeners();
    try {
      _events = await FirestoreService.instance.getEventsByAgency(agencyId);
      _loadedAgencyId = agencyId;
    } catch (e) {
      debugPrint('HomeProvider.loadEvents: $e');
      _eventsError = l10n.homeEventsLoadError;
    } finally {
      _isLoadingEvents = false;
      notifyListeners();
    }
  }

  /// Verilen günün etkinlikleri, saate göre sıralı.
  List<EventModel> eventsFor(DateTime day) {
    final d = _onlyDate(day);
    return _events.where((e) => e.date != null && _onlyDate(e.date!) == d).toList()
      ..sort((a, b) => a.time.compareTo(b.time));
  }

  List<EventModel> get selectedEvents => eventsFor(_selectedDate);

  bool hasEventsOn(DateTime day) {
    final d = _onlyDate(day);
    return _events.any((e) => e.date != null && _onlyDate(e.date!) == d);
  }

  /// "HH:mm" + süre (dk) → bitiş saati "HH:mm".
  String getEndTime(String start, int duration) {
    final parts = start.split(':');
    final h = int.tryParse(parts.first.trim()) ?? 0;
    final m = parts.length > 1 ? int.tryParse(parts[1].trim()) ?? 0 : 0;
    final total = (h * 60 + m + duration) % (24 * 60);
    String two(int v) => v.toString().padLeft(2, '0');
    return '${two(total ~/ 60)}:${two(total % 60)}';
  }

  // ---------------------------------------------------------------------------
  // Duyurular (aşağı çekip yenileme)
  // ---------------------------------------------------------------------------
  /// Elle yenilendiyse en güncel duyurular; null ise AppStateProvider'dakiler gösterilir.
  List<NotificationModel>? _notifications;
  List<NotificationModel>? get notifications => _notifications;

  /// Ana sayfadaki aşağı çekip yenileme: duyurular ve takvim etkinlikleri.
  Future<void> refresh(String? agencyId, {UserModel? user}) async {
    if (agencyId == null || agencyId.isEmpty) return;
    await Future.wait([
      loadEvents(agencyId, force: true),
      _refreshNotifications(agencyId),
      loadRates(),
      if (user != null) loadInbox(user),
    ]);
  }

  Future<void> _refreshNotifications(String agencyId) async {
    try {
      _notifications = await FirestoreService.instance.getNotificationsByAgency(agencyId);
      notifyListeners();
    } catch (e) {
      debugPrint('HomeProvider.refresh notifications: $e');
    }
  }

  // ---------------------------------------------------------------------------
  // Canlı döviz (Yahoo Finance, yedek ExchangeRate-API)
  // ---------------------------------------------------------------------------
  LiveRates? _rates;
  LiveRates? get rates => _rates;
  bool _ratesLoading = false;
  bool get ratesLoading => _ratesLoading;
  String? _ratesError;
  String? get ratesError => _ratesError;
  Timer? _ratesTimer;

  /// Ana sayfa açıkken kurları hemen yükler ve 2 dakikada bir yeniler.
  void startRates() {
    if (_ratesTimer != null) return;
    loadRates();
    _ratesTimer = Timer.periodic(const Duration(minutes: 2), (_) => loadRates());
  }

  Future<void> loadRates() async {
    if (_ratesLoading) return;
    _ratesLoading = true;
    _rates ??= await ExchangeRateService.instance.loadCached();
    notifyListeners();
    try {
      _rates = await ExchangeRateService.instance.fetch();
      _ratesError = null;
    } catch (e) {
      debugPrint('HomeProvider.loadRates: $e');
      _ratesError = l10n.homeRatesError;
    } finally {
      _ratesLoading = false;
      notifyListeners();
    }
  }

  // ---------------------------------------------------------------------------
  // Bildirim kutusu (AppBar'daki zil)
  // ---------------------------------------------------------------------------
  static const _lastReadKey = 'notifications_last_read_ms';
  List<NotificationModel> _inbox = [];
  List<NotificationModel> get inbox => _inbox;
  bool _inboxLoading = false;
  bool get inboxLoading => _inboxLoading;
  String? _inboxError;
  String? get inboxError => _inboxError;
  int _lastReadMs = 0;

  int get unreadCount =>
      _inbox.where((n) => (n.createdAt?.millisecondsSinceEpoch ?? 0) > _lastReadMs).length;

  bool isUnread(NotificationModel n) => (n.createdAt?.millisecondsSinceEpoch ?? 0) > _lastReadMs;

  /// Kullanıcıya yönelik son 30 duyuru: başkasına özel olanlar ve misafirin
  /// seferine uymayan sefer duyuruları elenir.
  Future<void> loadInbox(UserModel? user) async {
    final agencyId = user?.agencyId;
    if (user == null || agencyId == null || agencyId.isEmpty) return;
    _inboxLoading = true;
    notifyListeners();
    try {
      final p = await SharedPreferences.getInstance();
      _lastReadMs = p.getInt(_lastReadKey) ?? 0;
      final list = await FirestoreService.instance.getNotificationsByAgency(agencyId, limit: 30);
      final myTrips = {user.mekkeSeferiId, user.medineSeferiId}.whereType<String>().where((s) => s.isNotEmpty);
      _inbox = list.where((n) {
        final to = n.userToken;
        if (to != null && to.isNotEmpty && to != user.id) return false;
        final trip = n.tripId;
        if (!user.isAdmin && trip != null && trip.isNotEmpty && !myTrips.contains(trip)) return false;
        return true;
      }).toList();
      _inboxError = null;
    } catch (e) {
      debugPrint('HomeProvider.loadInbox: $e');
      _inboxError = l10n.homeNotificationsLoadError;
    } finally {
      _inboxLoading = false;
      notifyListeners();
    }
  }

  Future<void> markAllRead() async {
    final newest = _inbox.fold<int>(0, (m, n) {
      final t = n.createdAt?.millisecondsSinceEpoch ?? 0;
      return t > m ? t : m;
    });
    final now = newest > 0 ? newest : DateTime.now().millisecondsSinceEpoch;
    if (now <= _lastReadMs) return;
    _lastReadMs = now;
    notifyListeners();
    try {
      final p = await SharedPreferences.getInstance();
      await p.setInt(_lastReadKey, now);
    } catch (_) {}
  }

  @override
  void dispose() {
    _ratesTimer?.cancel();
    super.dispose();
  }

  /// Çıkışta durumu sıfırlar.
  void reset() {
    _events = [];
    _loadedAgencyId = null;
    _eventsError = null;
    _notifications = null;
    _inbox = [];
    _lastReadMs = 0;
    _currentPrayerIndex = 0;
    _selectedDate = _onlyDate(DateTime.now());
    notifyListeners();
  }
}

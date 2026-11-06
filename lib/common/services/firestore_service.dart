import 'package:cloud_firestore/cloud_firestore.dart';

import '../../features/admin/models/agency_model.dart';
import '../../features/admin/models/currency_model.dart';
import '../../features/admin/models/event_model.dart';
import '../../features/admin/models/hotel_model.dart';
import '../../features/admin/models/notification_model.dart';
import '../../features/admin/models/room_model.dart';
import '../../features/admin/models/trip_model.dart';
import '../../features/auth/models/user_model.dart';
import '../../features/home/models/prayer_time_model.dart';

/// Tüm Firestore erişimi buradan geçer.
///
/// Güvenlik kuralları gereği misafir ve yönetici sorguları mutlaka
/// `agency_id` filtresi içermelidir (…ByAgency metotları). Filtresiz
/// metotlar (getTrips, getAllUsers vb.) yalnızca süper admin içindir.
class FirestoreService {
  FirestoreService._();
  static final FirestoreService instance = FirestoreService._();
  factory FirestoreService() => instance;

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // ---------------------------------------------------------------- koleksiyonlar
  CollectionReference<Map<String, dynamic>> get usersCollection => _db.collection('users');
  CollectionReference<Map<String, dynamic>> get agenciesCollection => _db.collection('agencies');
  CollectionReference<Map<String, dynamic>> get tripsCollection => _db.collection('trips');
  CollectionReference<Map<String, dynamic>> get hotelsCollection => _db.collection('hotels');
  CollectionReference<Map<String, dynamic>> get roomsCollection => _db.collection('rooms');
  CollectionReference<Map<String, dynamic>> get eventsCollection => _db.collection('events');
  CollectionReference<Map<String, dynamic>> get currenciesCollection => _db.collection('currencies');
  CollectionReference<Map<String, dynamic>> get notificationsCollection => _db.collection('notifications');
  CollectionReference<Map<String, dynamic>> get tripManagersCollection => _db.collection('trip_managers');

  // Giriş: Cloud Functions yok (Spark planı). LoginProvider doğrudan
  // FirebaseAuth e-posta/şifre ile giriş yapar (bkz. core/utils/auth_utils.dart),
  // ardından getUserByToken(uid) ile users/{uid} belgesini okur.

  // ---------------------------------------------------------------- kullanıcılar
  /// Eski uygulamada "token" kullanıcı belgesinin id'siydi; yeni yapıda uid ile aynı.
  Future<UserModel?> getUserByToken(String userId) async {
    final doc = await usersCollection.doc(userId).get();
    return doc.exists ? UserModel.fromFirestore(doc) : null;
  }

  Future<UserModel?> getUserByTc(String tc, {String? agencyId}) async {
    Query<Map<String, dynamic>> q = usersCollection.where('user_tc', isEqualTo: tc);
    if (agencyId != null) q = q.where('agency_id', isEqualTo: agencyId);
    final snap = await q.limit(1).get();
    return snap.docs.isEmpty ? null : UserModel.fromFirestore(snap.docs.first);
  }

  Future<List<UserModel>> getAllUsers() async {
    final snap = await usersCollection.get();
    return snap.docs.map(UserModel.fromFirestore).toList();
  }

  Future<List<UserModel>> getUsersByAgency(String agencyId) async {
    final snap = await usersCollection.where('agency_id', isEqualTo: agencyId).get();
    return snap.docs.map(UserModel.fromFirestore).toList();
  }

  /// [user.id] boşsa rastgele id ile yeni belge oluşturur; yeni kullanıcılarda
  /// id Auth uid'si olmalıdır ([isNew] true verilir ki created_at yazılsın).
  /// Belge id'sini döner.
  Future<String> createOrUpdateUser(UserModel user, {bool? isNew}) async {
    final create = isNew ?? user.id.isEmpty;
    final ref = user.id.isEmpty ? usersCollection.doc() : usersCollection.doc(user.id);
    await ref.set(user.toFirestore(isNew: create), SetOptions(merge: true));
    return ref.id;
  }

  Future<void> updateUserFields(String userId, Map<String, dynamic> fields) =>
      usersCollection.doc(userId).set({...fields, 'updated_at': FieldValue.serverTimestamp()}, SetOptions(merge: true));

  /// [city] 'Mekke' veya 'Medine'.
  Future<void> updateUserAssignments(
    String userId, {
    required String city,
    String? tripId,
    String? hotelId,
    String? roomId,
  }) {
    final p = city == 'Mekke' ? 'mekke' : 'medine';
    return usersCollection.doc(userId).set({
      '${p}_seferi_id': tripId,
      '${p}_otel_id': hotelId,
      '${p}_oda_id': roomId,
      'updated_at': FieldValue.serverTimestamp(),
    }, SetOptions(merge: true));
  }

  Future<void> deleteUser(String userId) => usersCollection.doc(userId).delete();

  Future<void> updateUserFcmToken(String userId, String token) => usersCollection
      .doc(userId)
      .set({'fcm_token': token, 'updated_at': FieldValue.serverTimestamp()}, SetOptions(merge: true));

  Future<void> logoutUserFcmToken(String userId) => usersCollection
      .doc(userId)
      .set({'fcm_token': null, 'updated_at': FieldValue.serverTimestamp()}, SetOptions(merge: true));

  // ---------------------------------------------------------------- acenteler
  Future<List<AgencyModel>> getAgencies() async {
    final snap = await agenciesCollection.orderBy('name').get();
    return snap.docs.map(AgencyModel.fromFirestore).toList();
  }

  Future<AgencyModel?> getAgencyById(String id) async {
    final doc = await agenciesCollection.doc(id).get();
    return doc.exists ? AgencyModel.fromFirestore(doc) : null;
  }

  Future<String> createAgency(AgencyModel agency) async {
    final ref = agenciesCollection.doc();
    await ref.set(agency.toFirestore(isNew: true));
    return ref.id;
  }

  Future<void> updateAgency(String id, Map<String, dynamic> fields) =>
      agenciesCollection.doc(id).update({...fields, 'updated_at': FieldValue.serverTimestamp()});

  Future<void> deleteAgency(String id) => agenciesCollection.doc(id).delete();

  // ---------------------------------------------------------------- seferler
  Future<List<TripModel>> getTrips() async {
    final snap = await tripsCollection.orderBy('start_date').get();
    return snap.docs.map(TripModel.fromFirestore).toList();
  }

  Future<List<TripModel>> getTripsByAgency(String agencyId) async {
    final snap = await tripsCollection.where('agency_id', isEqualTo: agencyId).orderBy('start_date').get();
    return snap.docs.map(TripModel.fromFirestore).toList();
  }

  Future<TripModel?> getTripById(String id) async {
    final doc = await tripsCollection.doc(id).get();
    return doc.exists ? TripModel.fromFirestore(doc) : null;
  }

  Future<String> createTrip(TripModel trip) async {
    final ref = tripsCollection.doc();
    await ref.set(trip.toFirestore(isNew: true));
    return ref.id;
  }

  Future<void> updateTrip(TripModel trip) => tripsCollection.doc(trip.id).update(trip.toFirestore());

  Future<void> deleteTrip(String tripId, {String? agencyId}) async {
    await _unlinkUsersFromTrip(tripId, agencyId: agencyId);
    Query<Map<String, dynamic>> q = tripManagersCollection.where('trip_id', isEqualTo: tripId);
    if (agencyId != null) q = q.where('agency_id', isEqualTo: agencyId);
    for (final d in (await q.get()).docs) {
      await d.reference.delete();
    }
    await tripsCollection.doc(tripId).delete();
  }

  Future<void> _unlinkUsersFromTrip(String tripId, {String? agencyId}) async {
    for (final city in ['mekke', 'medine']) {
      Query<Map<String, dynamic>> q = usersCollection.where('${city}_seferi_id', isEqualTo: tripId);
      if (agencyId != null) q = q.where('agency_id', isEqualTo: agencyId);
      for (final d in (await q.get()).docs) {
        await d.reference.update({
          '${city}_seferi_id': FieldValue.delete(),
          '${city}_otel_id': FieldValue.delete(),
          '${city}_oda_id': FieldValue.delete(),
        });
      }
    }
  }

  // ---------------------------------------------------------------- sefer yöneticileri
  Future<List<String>> getTripManagerIds(String tripId, {String? agencyId}) async {
    Query<Map<String, dynamic>> q = tripManagersCollection.where('trip_id', isEqualTo: tripId);
    if (agencyId != null) q = q.where('agency_id', isEqualTo: agencyId);
    final snap = await q.get();
    return snap.docs.map((d) => d.get('user_id') as String).toList();
  }

  /// trip_id -> [user_id] eşlemesi.
  Future<Map<String, List<String>>> getAllTripManagers({String? agencyId}) async {
    Query<Map<String, dynamic>> q = tripManagersCollection;
    if (agencyId != null) q = q.where('agency_id', isEqualTo: agencyId);
    final out = <String, List<String>>{};
    for (final d in (await q.get()).docs) {
      out.putIfAbsent(d.get('trip_id') as String, () => []).add(d.get('user_id') as String);
    }
    return out;
  }

  Future<void> assignTripManager(String tripId, String userId, {required String agencyId}) async {
    final existing = await tripManagersCollection
        .where('agency_id', isEqualTo: agencyId)
        .where('trip_id', isEqualTo: tripId)
        .where('user_id', isEqualTo: userId)
        .get();
    if (existing.docs.isNotEmpty) return;
    final ref = tripManagersCollection.doc();
    await ref.set({
      'id': ref.id,
      'trip_id': tripId,
      'user_id': userId,
      'agency_id': agencyId,
      'created_at': FieldValue.serverTimestamp(),
    });
  }

  Future<void> removeTripManager(String tripId, String userId, {required String agencyId}) async {
    final snap = await tripManagersCollection
        .where('agency_id', isEqualTo: agencyId)
        .where('trip_id', isEqualTo: tripId)
        .where('user_id', isEqualTo: userId)
        .get();
    for (final d in snap.docs) {
      await d.reference.delete();
    }
  }

  // ---------------------------------------------------------------- oteller
  Future<List<HotelModel>> getHotels() async {
    final snap = await hotelsCollection.orderBy('name').get();
    return snap.docs.map(HotelModel.fromFirestore).toList();
  }

  Future<List<HotelModel>> getHotelsByAgency(String agencyId) async {
    final snap = await hotelsCollection.where('agency_id', isEqualTo: agencyId).orderBy('name').get();
    return snap.docs.map(HotelModel.fromFirestore).toList();
  }

  Future<HotelModel?> getHotelById(String id) async {
    final doc = await hotelsCollection.doc(id).get();
    return doc.exists ? HotelModel.fromFirestore(doc) : null;
  }

  Future<String> createHotel(HotelModel hotel) async {
    final ref = hotelsCollection.doc();
    await ref.set(hotel.toFirestore(isNew: true));
    return ref.id;
  }

  Future<void> updateHotel(HotelModel hotel) =>
      hotelsCollection.doc(hotel.id).set(hotel.toFirestore(), SetOptions(merge: true));

  Future<void> deleteHotel(String hotelId, {String? agencyId}) async {
    await _unlinkUsersFromHotel(hotelId, agencyId: agencyId);
    Query<Map<String, dynamic>> q = roomsCollection.where('hotel_id', isEqualTo: hotelId);
    if (agencyId != null) q = q.where('agency_id', isEqualTo: agencyId);
    for (final d in (await q.get()).docs) {
      await d.reference.delete();
    }
    await hotelsCollection.doc(hotelId).delete();
  }

  Future<void> _unlinkUsersFromHotel(String hotelId, {String? agencyId}) async {
    for (final city in ['mekke', 'medine']) {
      Query<Map<String, dynamic>> q = usersCollection.where('${city}_otel_id', isEqualTo: hotelId);
      if (agencyId != null) q = q.where('agency_id', isEqualTo: agencyId);
      for (final d in (await q.get()).docs) {
        await d.reference.update({'${city}_otel_id': FieldValue.delete(), '${city}_oda_id': FieldValue.delete()});
      }
    }
  }

  // ---------------------------------------------------------------- odalar
  Future<List<RoomModel>> getRooms() async {
    final snap = await roomsCollection.orderBy('room_number').get();
    return snap.docs.map(RoomModel.fromFirestore).toList();
  }

  Future<List<RoomModel>> getRoomsByAgency(String agencyId) async {
    final snap = await roomsCollection.where('agency_id', isEqualTo: agencyId).orderBy('room_number').get();
    return snap.docs.map(RoomModel.fromFirestore).toList();
  }

  Future<RoomModel?> getRoomById(String id) async {
    final doc = await roomsCollection.doc(id).get();
    return doc.exists ? RoomModel.fromFirestore(doc) : null;
  }

  Future<String> createRoom(RoomModel room) async {
    final ref = roomsCollection.doc();
    await ref.set(room.toFirestore(isNew: true));
    return ref.id;
  }

  Future<void> updateRoom(RoomModel room) =>
      roomsCollection.doc(room.id).set(room.toFirestore(), SetOptions(merge: true));

  Future<void> deleteRoom(String roomId, {String? agencyId}) async {
    await _unlinkUsersFromRoom(roomId, agencyId: agencyId);
    await roomsCollection.doc(roomId).delete();
  }

  Future<void> _unlinkUsersFromRoom(String roomId, {String? agencyId}) async {
    for (final city in ['mekke', 'medine']) {
      Query<Map<String, dynamic>> q = usersCollection.where('${city}_oda_id', isEqualTo: roomId);
      if (agencyId != null) q = q.where('agency_id', isEqualTo: agencyId);
      for (final d in (await q.get()).docs) {
        await d.reference.update({'${city}_oda_id': FieldValue.delete()});
      }
    }
  }

  // ---------------------------------------------------------------- etkinlikler
  Future<List<EventModel>> getEventsByAgency(String agencyId, {DateTime? from, DateTime? to}) async {
    Query<Map<String, dynamic>> q = eventsCollection.where('agency_id', isEqualTo: agencyId);
    if (from != null) q = q.where('date', isGreaterThanOrEqualTo: Timestamp.fromDate(_dayStart(from)));
    if (to != null) q = q.where('date', isLessThan: Timestamp.fromDate(_dayStart(to).add(const Duration(days: 1))));
    final snap = await q.orderBy('date').get();
    final list = snap.docs.map(EventModel.fromFirestore).toList();
    list.sort(_compareEvents);
    return list;
  }

  Future<List<EventModel>> getEventsByDate(String agencyId, DateTime day) =>
      getEventsByAgency(agencyId, from: day, to: day);

  Future<String> createEvent(EventModel event) async {
    final ref = eventsCollection.doc();
    await ref.set(event.toFirestore(isNew: true));
    return ref.id;
  }

  Future<void> updateEvent(EventModel event) => eventsCollection.doc(event.id).update(event.toFirestore());

  Future<void> deleteEvent(String id) => eventsCollection.doc(id).delete();

  static DateTime _dayStart(DateTime d) => DateTime(d.year, d.month, d.day);

  static int _compareEvents(EventModel a, EventModel b) {
    final c = (a.date ?? DateTime(0)).compareTo(b.date ?? DateTime(0));
    return c != 0 ? c : a.time.compareTo(b.time);
  }

  // ---------------------------------------------------------------- döviz
  static final Map<String, dynamic> _cache = {};
  static final Map<String, DateTime> _cacheTimestamp = {};
  static const _cacheDuration = Duration(minutes: 5);

  bool _isCacheValid(String key) {
    final t = _cacheTimestamp[key];
    return t != null && DateTime.now().difference(t) < _cacheDuration;
  }

  T? _getCached<T>(String key) => _isCacheValid(key) ? _cache[key] as T? : null;

  void _setCache(String key, Object value) {
    _cache[key] = value;
    _cacheTimestamp[key] = DateTime.now();
  }

  void clearCache() {
    _cache.clear();
    _cacheTimestamp.clear();
  }

  Future<List<CurrencyModel>> getCurrencies() async {
    final cached = _getCached<List<CurrencyModel>>('currencies');
    if (cached != null) return cached;
    final snap = await currenciesCollection.orderBy('name').get();
    final list = snap.docs.map(CurrencyModel.fromFirestore).toList();
    _setCache('currencies', list);
    return list;
  }

  Future<List<CurrencyModel>> getCurrenciesByAgency(String agencyId, {bool forceRefresh = false}) async {
    final key = 'currencies_$agencyId';
    if (!forceRefresh) {
      final cached = _getCached<List<CurrencyModel>>(key);
      if (cached != null) return cached;
    }
    final snap = await currenciesCollection.where('agency_id', isEqualTo: agencyId).orderBy('name').get();
    final list = snap.docs.map(CurrencyModel.fromFirestore).toList();
    _setCache(key, list);
    return list;
  }

  Future<String> createCurrency(CurrencyModel c) async {
    final ref = currenciesCollection.doc();
    await ref.set(c.toFirestore(isNew: true));
    clearCache();
    return ref.id;
  }

  Future<void> updateCurrency(CurrencyModel c) async {
    await currenciesCollection.doc(c.id).update(c.toFirestore());
    clearCache();
  }

  Future<void> deleteCurrency(String id) async {
    await currenciesCollection.doc(id).delete();
    clearCache();
  }

  // ---------------------------------------------------------------- ezan vakitleri
  /// Belgeler: mekke_prayer_times / medine_prayer_times, alan `date` = 'yyyy-MM-dd'.
  Future<PrayerTimeModel> getPrayerTimeMekkeByToday() => _prayerByToday('mekke_prayer_times');
  Future<PrayerTimeModel> getPrayerTimeMedineByToday() => _prayerByToday('medine_prayer_times');

  Future<PrayerTimeModel> _prayerByToday(String col) async {
    final snap = await _db.collection(col).where('date', isEqualTo: formatDateToYMD(DateTime.now())).limit(1).get();
    if (snap.docs.isEmpty) throw Exception('Bugünün vakitleri bulunamadı.');
    return PrayerTimeModel.fromFirestore(snap.docs.first.data());
  }

  static String formatDateToYMD(DateTime d) =>
      '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';

  // ---------------------------------------------------------------- bildirimler
  Future<List<NotificationModel>> getNotificationsByAgency(String agencyId, {int limit = 3}) async {
    final snap = await notificationsCollection
        .where('agency_id', isEqualTo: agencyId)
        .orderBy('created_at', descending: true)
        .limit(limit)
        .get();
    return snap.docs.map(NotificationModel.fromFirestore).toList();
  }

  /// Yalnızca süper admin (acente filtresi yok).
  Future<List<NotificationModel>> getLastNotifications({int limit = 3}) async {
    final snap = await notificationsCollection.orderBy('created_at', descending: true).limit(limit).get();
    return snap.docs.map(NotificationModel.fromFirestore).toList();
  }

  /// Duyuruyu kaydeder. [userTokens] boşsa acentenin genel duyurusu olarak tek kayıt atılır.
  /// [tripId] verilirse yalnızca o seferdeki misafirlerin telefonunda bildirim olur
  /// (NotificationWatcher filtreler). Telefonlara bildirim sunucusuz, Firestore dinlenerek düşer.
  Future<void> createNotifications({
    required String title,
    required String message,
    required String agencyId,
    List<String> userTokens = const [],
    String? tripId,
  }) async {
    final batch = _db.batch();
    final targets = userTokens.isEmpty ? <String?>[null] : userTokens;
    for (final t in targets) {
      batch.set(notificationsCollection.doc(), {
        'title': title,
        'message': message,
        'user_token': t,
        'agency_id': agencyId,
        if (tripId != null && tripId.isNotEmpty) 'trip_id': tripId,
        'created_at': FieldValue.serverTimestamp(),
      });
    }
    await batch.commit();
  }
}

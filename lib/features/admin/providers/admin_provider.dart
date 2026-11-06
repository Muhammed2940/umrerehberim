import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import '../../../common/services/auth_account_service.dart';
import '../../../common/services/firestore_service.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../auth/models/user_model.dart';
import '../../control_center/shared/audit_log.dart';
import '../models/agency_model.dart';
import '../models/hotel_model.dart';
import '../models/room_model.dart';
import '../models/trip_model.dart';

/// Yönetici panelinin ana verisi: kişiler, seferler, oteller, odalar.
///
/// Acente admini yalnızca kendi acentesini görür ([agencyId] = currentUser.agencyId).
/// Genel adminler (süper admin, yönetici) bir acenteyi "Yönet" dediğinde
/// [overrideAgencyId] dolar; boşsa tüm verileri görür.
class AdminProvider extends ChangeNotifier {
  AdminProvider();

  final FirestoreService _service = FirestoreService.instance;

  UserModel? _currentUser;
  String? overrideAgencyId;

  List<UserModel> users = [];
  List<TripModel> trips = [];
  List<HotelModel> hotels = [];
  List<RoomModel> rooms = [];
  List<AgencyModel> agencies = [];

  /// trip_id -> [user_id]
  Map<String, List<String>> tripManagers = {};

  bool isLoading = false;
  bool isSaving = false;
  String? error;
  String? _loadedKey;
  final Set<String> _savingUsers = {};

  UserModel? get currentUser => _currentUser;
  bool get isSuperAdmin => _currentUser?.isSuperAdmin ?? false;

  /// Tüm acentelere erişen admin (süper admin ya da yönetici).
  bool get isGlobalAdmin => _currentUser?.isGlobalAdmin ?? false;

  /// İşlemlerde kullanılan acente. Acente admini için daima kendi acentesi;
  /// genel admin acente seçmediyse (ve kendi acentesi yoksa) null.
  String? get agencyId {
    final u = _currentUser;
    if (u != null && u.isAgencyAdmin) return u.agencyId;
    return overrideAgencyId ?? u?.agencyId;
  }

  /// Giriş yapan adminin açabileceği kişi türleri (firestore.rules ile aynı).
  List<String> get creatableUserTypes {
    final u = _currentUser;
    if (u == null) return const [];
    if (u.isSuperAdmin) {
      return const [UserType.misafir, UserType.acenteAdmin, UserType.yonetici, UserType.destek, UserType.muhasebe];
    }
    if (u.isGlobalAdmin) return const [UserType.misafir, UserType.acenteAdmin];
    if (u.isAgencyAdmin) return const [UserType.misafir];
    return const [];
  }

  /// [target] kişisini düzenleyip silebilir mi (firestore.rules ile aynı).
  bool canManageUser(UserModel target) {
    final u = _currentUser;
    if (u == null) return false;
    if (u.isSuperAdmin) return true;
    if (u.isGlobalAdmin) {
      return target.userType == UserType.misafir || target.userType == UserType.acenteAdmin;
    }
    if (u.isAgencyAdmin) {
      return target.userType == UserType.misafir && target.agencyId == u.agencyId;
    }
    return false;
  }

  /// Acentesiz açılan türler: genel yönetici ve platform personeli (destek, muhasebe).
  static bool isAgencyless(String userType) =>
      userType == UserType.yonetici || userType == UserType.destek || userType == UserType.muhasebe;

  /// Platform personeli (acente_id her zaman '').
  static bool isStaffType(String userType) => userType == UserType.destek || userType == UserType.muhasebe;

  String _key(UserModel? user) => '${user?.id}|${overrideAgencyId ?? user?.agencyId}';

  void setOverrideAgency(String? id) {
    overrideAgencyId = id;
    _loadedKey = null;
  }

  /// Veri yüklenmemişse (veya acente değiştiyse) yükler.
  Future<void> ensureLoaded(UserModel? user) async {
    if (isLoading || _loadedKey == _key(user)) return;
    await loadInitial(user);
  }

  Future<void> loadInitial(UserModel? user) async {
    _currentUser = user;
    if (user == null) return;
    isLoading = true;
    error = null;
    notifyListeners();
    try {
      final a = agencyId;
      if (isGlobalAdmin) {
        agencies = await _service.getAgencies();
      }
      if (a == null && isGlobalAdmin) {
        final r = await Future.wait([
          _service.getAllUsers(),
          _service.getTrips(),
          _service.getHotels(),
          _service.getRooms(),
        ]);
        users = r[0] as List<UserModel>;
        trips = r[1] as List<TripModel>;
        hotels = r[2] as List<HotelModel>;
        rooms = r[3] as List<RoomModel>;
        tripManagers = await _service.getAllTripManagers();
      } else if (a != null) {
        final r = await Future.wait([
          _service.getUsersByAgency(a),
          _service.getTripsByAgency(a),
          _service.getHotelsByAgency(a),
          _service.getRoomsByAgency(a),
        ]);
        users = r[0] as List<UserModel>;
        trips = r[1] as List<TripModel>;
        hotels = r[2] as List<HotelModel>;
        rooms = r[3] as List<RoomModel>;
        tripManagers = await _service.getAllTripManagers(agencyId: a);
      } else {
        users = [];
        trips = [];
        hotels = [];
        rooms = [];
        tripManagers = {};
      }
      users.sort(_compareUsers);
      _loadedKey = _key(user);
    } catch (e) {
      debugPrint('AdminProvider.loadInitial: $e');
      error = l10n.adminDataLoadFailed;
      GlobalSnackbar.showError(error!);
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refresh() => loadInitial(_currentUser);

  // ------------------------------------------------------------ yardımcılar
  /// Rehberler: yönetici ve acente adminleri.
  List<UserModel> get managerUsers =>
      users.where((u) => u.userType == UserType.yonetici || u.userType == UserType.acenteAdmin).toList();
  List<UserModel> get guestUsers => users.where((u) => u.userType == UserType.misafir).toList();

  List<UserModel> getTripManagerUsers(String tripId) {
    final ids = tripManagers[tripId] ?? const [];
    return users.where((u) => ids.contains(u.id)).toList();
  }

  TripModel? tripById(String? id) => id == null ? null : _firstWhere(trips, (t) => t.id == id);
  HotelModel? hotelById(String? id) => id == null ? null : _firstWhere(hotels, (h) => h.id == id);
  RoomModel? roomById(String? id) => id == null ? null : _firstWhere(rooms, (r) => r.id == id);
  UserModel? userById(String? id) => id == null ? null : _firstWhere(users, (u) => u.id == id);

  List<RoomModel> roomsOfHotel(String hotelId) {
    final list = rooms.where((r) => r.hotelId == hotelId).toList();
    list.sort((a, b) {
      final na = int.tryParse(a.roomNumber), nb = int.tryParse(b.roomNumber);
      if (na != null && nb != null) return na.compareTo(nb);
      return a.roomNumber.compareTo(b.roomNumber);
    });
    return list;
  }

  /// Odada kalan kişiler (Mekke veya Medine ataması).
  List<UserModel> usersInRoom(String roomId) =>
      users.where((u) => u.mekkeOdaId == roomId || u.medineOdaId == roomId).toList();

  bool isUserSaving(String userId) => _savingUsers.contains(userId);

  static T? _firstWhere<T>(List<T> list, bool Function(T) test) {
    for (final e in list) {
      if (test(e)) return e;
    }
    return null;
  }

  static int _compareUsers(UserModel x, UserModel y) => x.userName.toLowerCase().compareTo(y.userName.toLowerCase());

  void _setSaving(bool v) {
    isSaving = v;
    notifyListeners();
  }

  // ------------------------------------------------------------ seferler
  Future<bool> createTrip(TripModel trip, {List<String> managerIds = const []}) async {
    _setSaving(true);
    try {
      final t = trip.copyWith(agencyId: agencyId);
      final id = await _service.createTrip(t);
      final a = t.agencyId;
      if (a != null) {
        for (final m in managerIds) {
          await _service.assignTripManager(id, m, agencyId: a);
        }
      }
      tripManagers[id] = List.of(managerIds);
      trips = [...trips, TripModel.fromMap(id, t.toJson())]..sort(_compareTrips);
      GlobalSnackbar.showSuccess(l10n.adminTripCreated);
      return true;
    } catch (e) {
      debugPrint('createTrip: $e');
      GlobalSnackbar.showError(l10n.adminTripCreateFailed);
      return false;
    } finally {
      _setSaving(false);
    }
  }

  Future<bool> updateTrip(TripModel trip, {List<String> managerIds = const []}) async {
    _setSaving(true);
    try {
      await _service.updateTrip(trip);
      final a = trip.agencyId ?? agencyId;
      if (a != null) {
        final old = tripManagers[trip.id] ?? const <String>[];
        for (final m in old.where((m) => !managerIds.contains(m))) {
          await _service.removeTripManager(trip.id, m, agencyId: a);
        }
        for (final m in managerIds.where((m) => !old.contains(m))) {
          await _service.assignTripManager(trip.id, m, agencyId: a);
        }
      }
      tripManagers[trip.id] = List.of(managerIds);
      trips = trips.map((t) => t.id == trip.id ? trip : t).toList()..sort(_compareTrips);
      GlobalSnackbar.showSuccess(l10n.adminTripUpdated);
      return true;
    } catch (e) {
      debugPrint('updateTrip: $e');
      GlobalSnackbar.showError(l10n.adminTripUpdateFailed);
      return false;
    } finally {
      _setSaving(false);
    }
  }

  Future<bool> deleteTrip(String tripId) async {
    _setSaving(true);
    try {
      await _service.deleteTrip(tripId, agencyId: agencyId);
      trips = trips.where((t) => t.id != tripId).toList();
      tripManagers.remove(tripId);
      users = users.map((u) {
        final m = u.mekkeSeferiId == tripId, d = u.medineSeferiId == tripId;
        if (!m && !d) return u;
        return _patchUser(u, {
          if (m) ...{'mekke_seferi_id': null, 'mekke_otel_id': null, 'mekke_oda_id': null},
          if (d) ...{'medine_seferi_id': null, 'medine_otel_id': null, 'medine_oda_id': null},
        });
      }).toList();
      GlobalSnackbar.showSuccess(l10n.adminTripDeleted);
      return true;
    } catch (e) {
      debugPrint('deleteTrip: $e');
      GlobalSnackbar.showError(l10n.adminTripDeleteFailed);
      return false;
    } finally {
      _setSaving(false);
    }
  }

  static int _compareTrips(TripModel a, TripModel b) =>
      (a.startDate ?? DateTime(2100)).compareTo(b.startDate ?? DateTime(2100));

  // ------------------------------------------------------------ oteller
  Future<bool> createHotel(HotelModel hotel) async {
    _setSaving(true);
    try {
      final h = hotel.copyWith(agencyId: agencyId);
      final id = await _service.createHotel(h);
      hotels = [...hotels, HotelModel.fromMap(id, h.toJson())]..sort((a, b) => a.name.compareTo(b.name));
      GlobalSnackbar.showSuccess(l10n.adminHotelCreated);
      return true;
    } catch (e) {
      debugPrint('createHotel: $e');
      GlobalSnackbar.showError(l10n.adminHotelCreateFailed);
      return false;
    } finally {
      _setSaving(false);
    }
  }

  Future<bool> updateHotel(HotelModel hotel) async {
    _setSaving(true);
    try {
      await _service.updateHotel(hotel);
      hotels = hotels.map((h) => h.id == hotel.id ? hotel : h).toList();
      GlobalSnackbar.showSuccess(l10n.adminHotelUpdated);
      return true;
    } catch (e) {
      debugPrint('updateHotel: $e');
      GlobalSnackbar.showError(l10n.adminHotelUpdateFailed);
      return false;
    } finally {
      _setSaving(false);
    }
  }

  Future<bool> deleteHotel(String hotelId) async {
    _setSaving(true);
    try {
      await _service.deleteHotel(hotelId, agencyId: agencyId);
      hotels = hotels.where((h) => h.id != hotelId).toList();
      rooms = rooms.where((r) => r.hotelId != hotelId).toList();
      users = users.map((u) {
        final m = u.mekkeOtelId == hotelId, d = u.medineOtelId == hotelId;
        if (!m && !d) return u;
        return _patchUser(u, {
          if (m) ...{'mekke_otel_id': null, 'mekke_oda_id': null},
          if (d) ...{'medine_otel_id': null, 'medine_oda_id': null},
        });
      }).toList();
      GlobalSnackbar.showSuccess(l10n.adminHotelDeleted);
      return true;
    } catch (e) {
      debugPrint('deleteHotel: $e');
      GlobalSnackbar.showError(l10n.adminHotelDeleteFailed);
      return false;
    } finally {
      _setSaving(false);
    }
  }

  // ------------------------------------------------------------ odalar
  Future<bool> createRoom(RoomModel room) async {
    _setSaving(true);
    try {
      final r = room.copyWith(agencyId: agencyId);
      final id = await _service.createRoom(r);
      rooms = [...rooms, RoomModel.fromMap(id, r.toJson())];
      GlobalSnackbar.showSuccess(l10n.adminRoomCreated);
      return true;
    } catch (e) {
      debugPrint('createRoom: $e');
      GlobalSnackbar.showError(l10n.adminRoomCreateFailed);
      return false;
    } finally {
      _setSaving(false);
    }
  }

  Future<bool> updateRoom(RoomModel room) async {
    _setSaving(true);
    try {
      await _service.updateRoom(room);
      rooms = rooms.map((r) => r.id == room.id ? room : r).toList();
      GlobalSnackbar.showSuccess(l10n.adminRoomUpdated);
      return true;
    } catch (e) {
      debugPrint('updateRoom: $e');
      GlobalSnackbar.showError(l10n.adminRoomUpdateFailed);
      return false;
    } finally {
      _setSaving(false);
    }
  }

  Future<bool> deleteRoom(String roomId) async {
    _setSaving(true);
    try {
      await _service.deleteRoom(roomId, agencyId: agencyId);
      rooms = rooms.where((r) => r.id != roomId).toList();
      users = users.map((u) {
        final m = u.mekkeOdaId == roomId, d = u.medineOdaId == roomId;
        if (!m && !d) return u;
        return _patchUser(u, {if (m) 'mekke_oda_id': null, if (d) 'medine_oda_id': null});
      }).toList();
      GlobalSnackbar.showSuccess(l10n.adminRoomDeleted);
      return true;
    } catch (e) {
      debugPrint('deleteRoom: $e');
      GlobalSnackbar.showError(l10n.adminRoomDeleteFailed);
      return false;
    } finally {
      _setSaving(false);
    }
  }

  /// Kullanıcıyı odadan çıkarır (sefer ve otel ataması kalır).
  Future<bool> removeUserFromRoom(UserModel user, String roomId) async {
    final isMekke = user.mekkeOdaId == roomId;
    final ok = await assignUser(
      user,
      city: isMekke ? 'Mekke' : 'Medine',
      tripId: isMekke ? user.mekkeSeferiId : user.medineSeferiId,
      hotelId: isMekke ? user.mekkeOtelId : user.medineOtelId,
      roomId: null,
      silent: true,
    );
    if (ok) {
      GlobalSnackbar.showSuccess(l10n.adminRoomUserRemoved(user.userName));
    } else {
      GlobalSnackbar.showError(l10n.adminRoomUserRemoveFailed);
    }
    return ok;
  }

  // ------------------------------------------------------------ kişiler
  /// Yeni kişi oluşturur: önce Auth hesabı (ikincil FirebaseApp, e-posta
  /// `<tc>@umrerehberim.app`, şifre TC), sonra users/{uid} ve RTDB roles/{uid}.
  /// TC kayıtlıysa hata verir.
  Future<bool> createUser({
    required String userName,
    required String userTc,
    required String userTel,
    required String userType,
    String? cinsiyet,
    String? dogumTarihi,
    String? agencyIdOverride,
  }) async {
    _setSaving(true);
    try {
      if (!creatableUserTypes.contains(userType)) {
        GlobalSnackbar.showError(l10n.rolesNoAccess);
        return false;
      }
      // Acente admini yalnız kendi acentesine kişi açar.
      // Destek/muhasebe acentesizdir (agency_id '').
      final a = isStaffType(userType)
          ? ''
          : (_currentUser?.isAgencyAdmin ?? false)
              ? _currentUser!.agencyId
              : (agencyIdOverride ?? agencyId);
      // Yönetici/personel dışındaki türler (ve süper admin olmayan admin) acentesiz açılamaz.
      if ((a == null || a.isEmpty) && !(isSuperAdmin && isAgencyless(userType))) {
        GlobalSnackbar.showError(l10n.adminUserAgencyRequired);
        return false;
      }
      final existing = await _service.getUserByTc(userTc, agencyId: isGlobalAdmin ? null : a);
      if (existing != null) {
        GlobalSnackbar.showError(l10n.adminUserTcExists);
        return false;
      }
      final uid = await AuthAccountService.createAccount(userTc);
      final user = UserModel(
        id: uid,
        userName: userName,
        userType: userType,
        userTel: userTel,
        userTc: userTc,
        cinsiyet: cinsiyet,
        dogumTarihi: dogumTarihi,
        agencyId: a,
      );
      final id = await _service.createOrUpdateUser(user, isNew: true);
      await AuthAccountService.setRole(id, role: userType, agencyId: a);
      if (agencyId == null || a == agencyId) {
        final created = UserModel.fromMap(id, {...user.toJson(), 'created_at': DateTime.now().toIso8601String()});
        users = [...users, created]..sort(_compareUsers);
      }
      AuditLog.write(
        action: AuditAction.userCreate,
        actor: _currentUser,
        targetType: 'user',
        targetId: id,
        targetName: userName,
        details: {'user_type': userType, 'agency_id': a ?? ''},
      );
      GlobalSnackbar.showSuccess(l10n.adminUserCreated);
      return true;
    } on AccountExistsException {
      GlobalSnackbar.showError(l10n.adminUserTcExists);
      return false;
    } on FirebaseAuthException catch (e) {
      debugPrint('createUser auth: ${e.code} ${e.message}');
      GlobalSnackbar.showError(
        e.code == 'network-request-failed' ? l10n.adminUserCreateOffline : l10n.adminUserAccountCreateFailed(e.code),
      );
      return false;
    } catch (e) {
      debugPrint('createUser: $e');
      GlobalSnackbar.showError(l10n.adminUserCreateFailed);
      return false;
    } finally {
      _setSaving(false);
    }
  }

  /// Ad, telefon, TC, tip, cinsiyet, doğum tarihi günceller.
  Future<bool> updateUserDetails(
    UserModel user, {
    required String userName,
    required String userTel,
    required String userTc,
    required String userType,
    String? cinsiyet,
    String? dogumTarihi,
  }) async {
    if (!canManageUser(user) || (userType != user.userType && !creatableUserTypes.contains(userType))) {
      GlobalSnackbar.showError(l10n.rolesNoAccess);
      return false;
    }
    _savingUsers.add(user.id);
    _setSaving(true);
    try {
      // TC = Auth e-postası, istemciden değiştirilemez (ekranda kilitli).
      if (userTc != user.userTc) {
        GlobalSnackbar.showError(l10n.adminUserTcLocked);
        return false;
      }
      final fields = <String, dynamic>{
        'user_name': userName,
        'user_tel': userTel,
        'user_tc': userTc,
        'user_type': userType,
        'cinsiyet': cinsiyet,
        'dogum_tarihi': dogumTarihi,
      };
      await _service.updateUserFields(user.id, fields);
      if (userType != user.userType) {
        await AuthAccountService.setRole(user.id, role: userType, agencyId: user.agencyId);
      }
      users = users.map((u) => u.id == user.id ? _patchUser(u, fields) : u).toList()..sort(_compareUsers);
      final roleChanged = userType != user.userType;
      AuditLog.write(
        action: roleChanged ? AuditAction.roleChange : AuditAction.userUpdate,
        actor: _currentUser,
        targetType: 'user',
        targetId: user.id,
        targetName: userName,
        details: {
          if (roleChanged) ...{'from': user.userType, 'to': userType},
          if (userName != user.userName) 'user_name': userName,
          if (userTel != user.userTel) 'user_tel': userTel,
          'agency_id': user.agencyId ?? '',
        },
      );
      GlobalSnackbar.showSuccess(l10n.adminUserUpdated);
      return true;
    } catch (e) {
      debugPrint('updateUserDetails: $e');
      GlobalSnackbar.showError(l10n.adminUserUpdateFailed);
      return false;
    } finally {
      _savingUsers.remove(user.id);
      _setSaving(false);
    }
  }

  /// [city] 'Mekke' | 'Medine'.
  Future<bool> assignUser(
    UserModel user, {
    required String city,
    String? tripId,
    String? hotelId,
    String? roomId,
    bool silent = false,
  }) async {
    _savingUsers.add(user.id);
    notifyListeners();
    try {
      await _service.updateUserAssignments(user.id, city: city, tripId: tripId, hotelId: hotelId, roomId: roomId);
      final p = city == 'Mekke' ? 'mekke' : 'medine';
      users = users
          .map(
            (u) => u.id == user.id
                ? _patchUser(u, {'${p}_seferi_id': tripId, '${p}_otel_id': hotelId, '${p}_oda_id': roomId})
                : u,
          )
          .toList();
      if (!silent) GlobalSnackbar.showSuccess(l10n.adminAssignUpdated);
      return true;
    } catch (e) {
      debugPrint('assignUser: $e');
      if (!silent) GlobalSnackbar.showError(l10n.adminAssignFailed);
      return false;
    } finally {
      _savingUsers.remove(user.id);
      notifyListeners();
    }
  }

  /// Firestore belgesini ve RTDB roles/{uid} düğümünü siler.
  /// Not: Firebase Auth hesabı istemciden (başka kullanıcı adına) silinemez;
  /// Admin SDK / Functions gerekir. Hesap kalır ama users belgesi olmadığı
  /// için giriş "Kullanıcı bulunamadı" ile başarısız olur. Aynı TC tekrar
  /// eklenirse AuthAccountService.createAccount aynı uid'i yeniden kullanır.
  Future<bool> deleteUser(String userId) async {
    final target = userById(userId);
    if (target != null && !canManageUser(target)) {
      GlobalSnackbar.showError(l10n.rolesNoAccess);
      return false;
    }
    _setSaving(true);
    try {
      await _service.deleteUser(userId);
      await AuthAccountService.removeRole(userId);
      users = users.where((u) => u.id != userId).toList();
      for (final ids in tripManagers.values) {
        ids.remove(userId);
      }
      AuditLog.write(
        action: AuditAction.userDelete,
        actor: _currentUser,
        targetType: 'user',
        targetId: userId,
        targetName: target?.userName ?? '',
        details: {if (target != null) 'user_type': target.userType, 'agency_id': target?.agencyId ?? ''},
      );
      GlobalSnackbar.showSuccess(l10n.adminUserDeleted);
      return true;
    } catch (e) {
      debugPrint('deleteUser: $e');
      GlobalSnackbar.showError(l10n.adminUserDeleteFailed);
      return false;
    } finally {
      _setSaving(false);
    }
  }

  /// copyWith null atayamadığı için alanları map üzerinden günceller.
  static UserModel _patchUser(UserModel u, Map<String, dynamic> fields) =>
      UserModel.fromMap(u.id, {...u.toJson(), ...fields});

  void clear() {
    _currentUser = null;
    overrideAgencyId = null;
    users = [];
    trips = [];
    hotels = [];
    rooms = [];
    agencies = [];
    tripManagers = {};
    _loadedKey = null;
    notifyListeners();
  }
}

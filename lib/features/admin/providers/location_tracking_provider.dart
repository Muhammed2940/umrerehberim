import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';

import '../../../common/services/location_firebase_service.dart';
import '../../../core/providers/locale_provider.dart';
import '../models/user_location_model.dart';

/// Canlı konum verisi (Realtime DB `locations/{agencyId}`).
///
/// [listenAll] true: yönetici/süper admin, acentedeki herkesi dinler.
/// false: yalnızca [startListeningSingleUser] ile tek kişi dinlenir (misafir → rehber).
class LocationTrackingProvider extends ChangeNotifier {
  LocationTrackingProvider({required this.agencyId, bool listenAll = true}) {
    if (listenAll && agencyId != null) startListeningAllLocations();
  }

  final String? agencyId;

  Map<String, UserLocationModel> locations = {};
  bool isLoading = false;
  String? error;
  String searchQuery = '';
  String? selectedUserId;

  StreamSubscription<DatabaseEvent>? _allSub;
  StreamSubscription<DatabaseEvent>? _singleSub;
  final Map<String, String> _nameCache = {};
  bool _disposed = false;

  UserLocationModel? get selectedLocation => selectedUserId == null ? null : locations[selectedUserId];

  void _notify() {
    if (!_disposed) notifyListeners();
  }

  void startListeningAllLocations() {
    final id = agencyId;
    if (id == null) return;
    isLoading = true;
    error = null;
    _notify();
    _allSub?.cancel();
    _allSub = LocationFirebaseService.agencyRef(id).onValue.listen((event) async {
      final v = event.snapshot.value;
      final next = <String, UserLocationModel>{};
      if (v is Map) {
        for (final e in v.entries) {
          final entry = await _createLocationEntry(e.key.toString(), e.value);
          if (entry != null) next[entry.key] = entry.value;
        }
      }
      locations = next;
      isLoading = false;
      error = null;
      _notify();
    }, onError: (Object e) {
      debugPrint('LocationTrackingProvider: Konum dinleme hatası: $e');
      error = l10n.adminMapLoadFailed;
      isLoading = false;
      _notify();
    });
  }

  /// Tek kişiyi seçer. Hepsi zaten dinleniyorsa sadece seçimi değiştirir.
  void startListeningSingleUser(String uid, {String? userName}) {
    selectedUserId = uid;
    if (userName != null && userName.isNotEmpty) _nameCache[uid] = userName;
    if (_allSub != null || agencyId == null) {
      _notify();
      return;
    }
    isLoading = !locations.containsKey(uid);
    _notify();
    _singleSub?.cancel();
    _singleSub = LocationFirebaseService.userRef(agencyId!, uid).onValue.listen((event) async {
      final entry = await _createLocationEntry(uid, event.snapshot.value);
      if (entry == null) {
        locations.remove(uid);
      } else {
        locations[uid] = entry.value;
      }
      isLoading = false;
      error = null;
      _notify();
    }, onError: (Object e) {
      debugPrint('LocationTrackingProvider single: $e');
      error = l10n.adminMapReadFailed;
      isLoading = false;
      _notify();
    });
  }

  Future<MapEntry<String, UserLocationModel>?> _createLocationEntry(String uid, Object? raw) async {
    if (raw is! Map) return null;
    try {
      if (raw['latitude'] == null || raw['longitude'] == null) return null;
      final hasName = raw['userName'] is String && (raw['userName'] as String).trim().isNotEmpty;
      final name = hasName ? (raw['userName'] as String).trim() : await _getUserInfo(uid);
      return MapEntry(uid, UserLocationModel.fromRtdb(uid, raw, userName: name, agencyId: agencyId));
    } catch (e) {
      debugPrint('LocationTrackingProvider: _createLocationEntry hatası: $e');
      return null;
    }
  }

  Future<String> _getUserInfo(String uid) async {
    final cached = _nameCache[uid];
    if (cached != null) return cached;
    try {
      final doc = await FirebaseFirestore.instance.collection('users').doc(uid).get();
      final n = (doc.data()?['user_name'] as String?)?.trim();
      final name = (n == null || n.isEmpty) ? l10n.adminUnknown : n;
      _nameCache[uid] = name;
      return name;
    } catch (_) {
      return l10n.adminUnknown;
    }
  }

  /// Son güncellemeye göre sıralı, aramaya göre süzülmüş liste.
  List<MapEntry<String, UserLocationModel>> get filteredLocations {
    final q = searchQuery.trim().toLowerCase();
    final list = locations.entries
        .where((e) => q.isEmpty || e.value.userName.toLowerCase().contains(q))
        .toList()
      ..sort((a, b) => b.value.timestamp.compareTo(a.value.timestamp));
    return list;
  }

  void setSearchQuery(String q) {
    searchQuery = q;
    _notify();
  }

  void clearSelectedUser() {
    selectedUserId = null;
    _notify();
  }

  @override
  void dispose() {
    _disposed = true;
    _allSub?.cancel();
    _singleSub?.cancel();
    super.dispose();
  }
}

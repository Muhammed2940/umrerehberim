import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../common/services/firestore_service.dart';
import '../../../common/services/location_firebase_service.dart';
import '../../../common/widgets/osm_map.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_theme.dart';
import '../../admin/models/agency_model.dart';
import '../../admin/models/trip_model.dart';
import '../../admin/screens/single_user_map_view.dart';
import '../../auth/models/user_model.dart';

/// Rehberle (sefer yöneticisiyle) iletişim: aktif sefer, rehber bilgisi,
/// arama / WhatsApp ve rehberin son konumu (Realtime DB `locations/{agencyId}/{uid}`).
class RehberIletisimPage extends StatefulWidget {
  const RehberIletisimPage({super.key});

  @override
  State<RehberIletisimPage> createState() => _RehberIletisimPageState();
}

class _RehberIletisimPageState extends State<RehberIletisimPage> {
  final FirestoreService _firestore = FirestoreService.instance;

  bool _loading = true;
  TripModel? _activeTrip;
  UserModel? _manager;
  AgencyModel? _agency;
  double? _lat, _lng, _accuracy;
  DateTime? _locationUpdatedAt;
  StreamSubscription<DatabaseEvent>? _locationSub;
  String? _agencyIdForMap;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  void dispose() {
    _locationSub?.cancel();
    super.dispose();
  }

  Future<void> _loadData() async {
    try {
      final app = context.read<AppStateProvider>();
      _activeTrip = await _determineActiveTrip(app);
      final agencyId = app.currentUser?.agencyId;
      if (_activeTrip != null) await _loadTripManager(_activeTrip!.id, agencyId);
      if (_manager == null && agencyId != null) {
        try {
          _agency = await _firestore.getAgencyById(agencyId);
        } catch (e) {
          debugPrint('Acente bilgisi alınırken hata: $e');
        }
      }
      if (_manager != null && agencyId != null) _listenToManagerLocation(agencyId, _manager!.id);
    } catch (e) {
      debugPrint('Rehber bilgileri yüklenirken hata: $e');
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  /// Bugünün tarihine göre Mekke veya Medine seferini seçer.
  Future<TripModel?> _determineActiveTrip(AppStateProvider app) async {
    var mekke = app.mekkeTrip;
    var medine = app.medineTrip;
    final user = app.currentUser;
    try {
      if (mekke == null && user?.mekkeSeferiId != null) mekke = await _firestore.getTripById(user!.mekkeSeferiId!);
      if (medine == null && user?.medineSeferiId != null) medine = await _firestore.getTripById(user!.medineSeferiId!);
    } catch (e) {
      debugPrint('Sefer bilgisi alınırken hata: $e');
    }
    final trips = [mekke, medine].whereType<TripModel>().toList();
    if (trips.isEmpty) return null;

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    for (final t in trips) {
      final s = t.startDate, e = t.endDate;
      if (s != null && e != null) {
        final sd = DateTime(s.year, s.month, s.day), ed = DateTime(e.year, e.month, e.day);
        if (!today.isBefore(sd) && !today.isAfter(ed)) return t;
      }
    }
    // Aktif sefer yoksa en yakın gelecekteki, o da yoksa ilk sefer.
    final upcoming = trips.where((t) => t.startDate != null && t.startDate!.isAfter(now)).toList()
      ..sort((a, b) => a.startDate!.compareTo(b.startDate!));
    return upcoming.isNotEmpty ? upcoming.first : trips.first;
  }

  Future<void> _loadTripManager(String tripId, String? agencyId) async {
    try {
      final ids = await _firestore.getTripManagerIds(tripId, agencyId: agencyId);
      for (final id in ids) {
        final u = await _firestore.getUserByToken(id);
        if (u != null) {
          _manager = u;
          return;
        }
      }
    } catch (e) {
      debugPrint('Yönetici bilgisi alınırken hata: $e');
    }
  }

  /// RTDB `locations/{agencyId}/{rehberUid}` (misafir yalnızca kendi acentesindeki yöneticiyi okuyabilir).
  void _listenToManagerLocation(String agencyId, String uid) {
    _agencyIdForMap = agencyId;
    try {
      _locationSub = LocationFirebaseService.userRef(agencyId, uid).onValue.listen((event) {
        final v = event.snapshot.value;
        if (v is! Map) return;
        final lat = (v['latitude'] as num?)?.toDouble();
        final lng = (v['longitude'] as num?)?.toDouble();
        final ts = v['timestamp'] as num?;
        if (!mounted || lat == null || lng == null) return;
        setState(() {
          _lat = lat;
          _lng = lng;
          _accuracy = (v['accuracy'] as num?)?.toDouble();
          _locationUpdatedAt = ts == null ? null : DateTime.fromMillisecondsSinceEpoch(ts.toInt());
        });
      }, onError: (Object e) => debugPrint('Konum dinlenirken hata: $e'));
    } catch (e) {
      debugPrint('Konum dinlenirken hata: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.homeContactGuide)),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : (_manager == null ? _buildNoManagerView() : _buildContent()),
    );
  }

  Widget _buildContent() {
    final m = _manager!;
    final phone = m.userTel.trim();
    final l = context.l10n;
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (_activeTrip != null) _buildTripInfoCard(_activeTrip!),
          const SizedBox(height: 16),
          _buildManagerInfoCard(m),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _buildContactItem(
                  icon: Icons.phone_rounded,
                  title: l.homePhone,
                  value: phone.isEmpty ? l.homeNoPhone : phone,
                  color: AppColors.primary,
                  onTap: phone.isEmpty ? null : () => _makePhoneCall(phone),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildContactItem(
                  icon: Icons.chat_rounded,
                  title: 'WhatsApp',
                  value: phone.isEmpty ? l.homeNoPhone : l.homeSendMessage,
                  color: const Color(0xFF25D366),
                  onTap: phone.isEmpty ? null : () => _openWhatsApp(phone),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildMapSection(),
        ],
      ),
    );
  }

  Widget _buildTripInfoCard(TripModel trip) {
    final mekke = trip.location.toLowerCase() == 'mekke';
    final l = context.l10n;
    String detay = mekke ? l.commonMecca : l.commonMedina;
    if (trip.startDate != null) {
      final gun = DateTime.now().difference(trip.startDate!).inDays + 1;
      if (gun >= 1) detay = '${l.homeDayN(gun)} • $detay';
    }
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [AppColors.primary, AppColors.primaryDark]),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.white24, borderRadius: BorderRadius.circular(12)),
            child: Icon(mekke ? Icons.mosque_rounded : Icons.location_city_rounded, color: Colors.white, size: 28),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(trip.name, style: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)),
                const SizedBox(height: 2),
                Text(detay, style: const TextStyle(color: Colors.white70)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildManagerInfoCard(UserModel m) {
    final name = m.userName.trim();
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [BoxShadow(color: Color(0x14000000), blurRadius: 12, offset: Offset(0, 4))],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.emerald700,
            child: Text(
              name.isEmpty ? '?' : name.characters.first.toUpperCase(),
              style: const TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(context.l10n.homeYourGuide, style: AppTextStyles.muted),
                const SizedBox(height: 2),
                Text(name.isEmpty ? context.l10n.homeNoName : name, style: AppTextStyles.sectionTitle),
              ],
            ),
          ),
          const Icon(Icons.verified_rounded, color: AppColors.primary),
        ],
      ),
    );
  }

  Widget _buildContactItem({
    required IconData icon,
    required String title,
    required String value,
    required Color color,
    VoidCallback? onTap,
  }) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      elevation: 2,
      shadowColor: Colors.black12,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(color: color.withValues(alpha: 0.12), borderRadius: BorderRadius.circular(12)),
                child: Icon(icon, color: color),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: AppTextStyles.cardTitle.copyWith(fontSize: 15)),
                    Text(value, style: AppTextStyles.muted.copyWith(fontSize: 12), overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMapSection() {
    final hasLocation = _lat != null && _lng != null;
    final point = hasLocation ? LatLng(_lat!, _lng!) : null;
    final stale = _locationUpdatedAt != null &&
        DateTime.now().difference(_locationUpdatedAt!) > const Duration(minutes: 15);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [BoxShadow(color: Color(0x14000000), blurRadius: 12, offset: Offset(0, 4))],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 10),
            child: Row(
              children: [
                Icon(hasLocation ? Icons.location_on_rounded : Icons.location_searching_rounded,
                    color: hasLocation ? AppColors.error : AppColors.textMuted),
                const SizedBox(width: 6),
                Expanded(child: Text(context.l10n.homeGuideLocation, style: AppTextStyles.cardTitle)),
                Text(hasLocation ? _formatLastUpdated() : '', style: AppTextStyles.muted.copyWith(fontSize: 12)),
              ],
            ),
          ),
          SizedBox(
            height: 180,
            child: point == null
                ? Container(
                    color: const Color(0xFFDAF1DE),
                    alignment: Alignment.center,
                    child: Text(context.l10n.homeWaitingGuideLocation, style: AppTextStyles.muted),
                  )
                : Stack(
                    children: [
                      FlutterMap(
                        key: ValueKey(point),
                        options: MapOptions(
                          initialCenter: point,
                          initialZoom: 15,
                          interactionOptions: const InteractionOptions(flags: InteractiveFlag.none),
                          onTap: (_, _) => _openFullMap(),
                        ),
                        children: [
                          OsmMap.tileLayer(),
                          OsmMap.accuracyLayer([(point: point, accuracy: _accuracy ?? 0, stale: stale)]),
                          MarkerLayer(markers: [
                            OsmMap.personMarker(
                              point: point,
                              name: _manager?.userName.trim().isNotEmpty == true ? _manager!.userName.trim() : context.l10n.homeGuide,
                              stale: stale,
                              highlighted: true,
                              accuracy: _accuracy ?? 0,
                            ),
                          ]),
                          OsmMap.attribution(),
                        ],
                      ),
                    ],
                  ),
          ),
          if (hasLocation)
            InkWell(
              onTap: _openFullMap,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    const Icon(Icons.open_in_full_rounded, size: 18, color: AppColors.primary),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(context.l10n.homeOpenBigMap,
                          style: AppTextStyles.body.copyWith(color: AppColors.primary, fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _openFullMap() {
    final m = _manager;
    if (m == null) return;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SingleUserMapView(userId: m.id, agencyId: _agencyIdForMap, userName: m.userName),
      ),
    );
  }

  String _formatLastUpdated() {
    final t = _locationUpdatedAt;
    final l = context.l10n;
    if (t == null) return l.homeLocationReceived;
    final d = DateTime.now().difference(t);
    if (d.inMinutes < 1) return l.homeUpdatedJustNow;
    if (d.inMinutes < 60) return l.homeUpdatedMinutesAgo(d.inMinutes);
    if (d.inHours < 24) return l.homeUpdatedHoursAgo(d.inHours);
    return l.homeUpdatedDaysAgo(d.inDays);
  }

  Widget _buildNoManagerView() {
    final hasTrip = _activeTrip != null;
    final agencyPhone = _agency?.phone?.trim() ?? '';
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(22),
              decoration: const BoxDecoration(color: AppColors.primaryLight, shape: BoxShape.circle),
              child: const Icon(Icons.support_agent_rounded, size: 56, color: AppColors.primary),
            ),
            const SizedBox(height: 20),
            Text(
              hasTrip ? context.l10n.homeNoManagerForTrip : context.l10n.homeNoActiveTrip,
              textAlign: TextAlign.center,
              style: AppTextStyles.sectionTitle,
            ),
            const SizedBox(height: 8),
            Text(context.l10n.homeContactAgencyHint, textAlign: TextAlign.center, style: AppTextStyles.muted),
            if (_agency != null) ...[
              const SizedBox(height: 24),
              Text(_agency!.name, style: AppTextStyles.cardTitle, textAlign: TextAlign.center),
              if (agencyPhone.isNotEmpty) ...[
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () => _makePhoneCall(agencyPhone),
                      icon: const Icon(Icons.phone_rounded),
                      label: Text(context.l10n.homeCallAgency),
                    ),
                    const SizedBox(width: 8),
                    OutlinedButton.icon(
                      onPressed: () => _openWhatsApp(agencyPhone),
                      icon: const Icon(Icons.chat_rounded),
                      label: const Text('WhatsApp'),
                    ),
                  ],
                ),
              ],
            ],
            const SizedBox(height: 16),
            TextButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/technical-support'),
              icon: const Icon(Icons.headset_mic_outlined),
              label: Text(context.l10n.homeTechSupportInfo),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launch(Uri uri, String hata) async {
    final messenger = ScaffoldMessenger.of(context);
    try {
      final ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
      if (!ok) messenger.showSnackBar(SnackBar(content: Text(hata)));
    } catch (e) {
      messenger.showSnackBar(SnackBar(content: Text('$hata: $e')));
    }
  }

  Future<void> _makePhoneCall(String phone) =>
      _launch(Uri(scheme: 'tel', path: phone.replaceAll(' ', '')), context.l10n.homePhoneOpenFailed);

  Future<void> _openWhatsApp(String phone) {
    var digits = phone.replaceAll(RegExp(r'[^0-9]'), '');
    if (digits.startsWith('0')) digits = '90${digits.substring(1)}';
    if (digits.length == 10) digits = '90$digits';
    return _launch(Uri.parse('https://wa.me/$digits'), context.l10n.homeWhatsAppOpenFailed);
  }

}

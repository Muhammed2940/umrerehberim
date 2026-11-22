import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/services/auth_api_service.dart';
import '../../../common/services/firestore_service.dart';
import '../../../common/widgets/auth_access_widgets.dart';
import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../admin/models/agency_model.dart';
import '../../admin/models/currency_model.dart';
import '../../admin/models/hotel_model.dart';
import '../../admin/models/trip_model.dart';
import '../../admin/providers/admin_provider.dart';
import '../../admin/utils/admin_helpers.dart';
import '../../admin/widgets/agency_card.dart';
import '../../auth/models/user_model.dart';

/// Genel adminler (süper admin, yönetici): acente detayı (sekmeler) + "Yönet" ile
/// yönetici paneline geçiş. Acente düzenleme yalnız süper admin.
/// Argüman: AgencyModel veya acente id'si (String).
class AgencyDetailPage extends StatefulWidget {
  const AgencyDetailPage({super.key});

  @override
  State<AgencyDetailPage> createState() => _AgencyDetailPageState();
}

class _AgencyDetailPageState extends State<AgencyDetailPage> {
  final _service = FirestoreService.instance;
  AgencyModel? _agency;
  List<UserModel> _users = [];
  List<TripModel> _trips = [];
  List<HotelModel> _hotels = [];
  List<CurrencyModel> _currencies = [];
  bool _loading = true;
  String? _error;
  bool _started = false;

  /// Platform personeli (destek/muhasebe): yalnız acente + kişiler, düzenleme yok.
  bool get _readOnlyStaff => context.read<AppStateProvider>().currentUser?.isPlatformStaff ?? false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_started) return;
    _started = true;
    final arg = ModalRoute.of(context)?.settings.arguments;
    if (arg is AgencyModel) _agency = arg;
    final id = arg is String ? arg : arg is AgencyModel ? arg.id : null;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _load(id);
    });
  }

  Future<void> _load(String? id) async {
    if (id == null) {
      setState(() {
        _loading = false;
        _error = l10n.adminAgencyNotFound;
      });
      return;
    }
    setState(() => _loading = true);
    // Destek yalnız acente ve kişileri okuyabilir (sefer/otel/döviz kuralları izin vermez).
    if (_readOnlyStaff) {
      try {
        final r = await Future.wait([_service.getAgencyById(id), _service.getUsersByAgency(id)]);
        if (!mounted) return;
        setState(() {
          _agency = (r[0] as AgencyModel?) ?? _agency;
          _users = r[1] as List<UserModel>;
          _error = _agency == null ? l10n.adminAgencyNotFound : null;
          _loading = false;
        });
      } catch (e) {
        debugPrint('AgencyDetailPage._load (destek): $e');
        if (!mounted) return;
        setState(() {
          _loading = false;
          _error = l10n.adminDataLoadFailed;
        });
      }
      return;
    }
    try {
      final r = await Future.wait([
        _service.getAgencyById(id),
        _service.getUsersByAgency(id),
        _service.getTripsByAgency(id),
        _service.getHotelsByAgency(id),
        _service.getCurrenciesByAgency(id, forceRefresh: true),
      ]);
      if (!mounted) return;
      setState(() {
        _agency = (r[0] as AgencyModel?) ?? _agency;
        _users = r[1] as List<UserModel>;
        _trips = r[2] as List<TripModel>;
        _hotels = r[3] as List<HotelModel>;
        _currencies = r[4] as List<CurrencyModel>;
        _error = _agency == null ? l10n.adminAgencyNotFound : null;
        _loading = false;
      });
    } catch (e) {
      debugPrint('AgencyDetailPage._load: $e');
      if (!mounted) return;
      setState(() {
        _loading = false;
        _error = l10n.adminDataLoadFailed;
      });
    }
  }

  Future<void> _manage() async {
    final a = _agency;
    if (a == null) return;
    final admin = context.read<AdminProvider>();
    admin.setOverrideAgency(a.id);
    await Navigator.pushNamed(context, '/admin');
    if (!mounted) return;
    admin.setOverrideAgency(null);
    await _load(a.id);
  }

  /// Kişinin Kullanıcı ID'si ve (yetki varsa) "Yeni PIN ver / Yeni şifre ver".
  void _showUserAccess(UserModel u, UserModel? me) {
    final l = context.l10n;
    final canReset = AuthApiService.canReset(me, u);
    showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (ctx) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                u.userName.isEmpty ? l.adminUnnamed : u.userName,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.text),
              ),
              Text(userTypeLabel(context, u.userType), style: const TextStyle(color: AppColors.textMuted)),
              const SizedBox(height: 12),
              if (!u.isMerchant) LoginIdRow(loginId: u.loginId),
              if (canReset) ...[
                const SizedBox(height: 12),
                ResetSecretButton(
                  target: u,
                  onIssued: (c) {
                    final a = _agency;
                    if ((u.loginId ?? '') != c.loginId && a != null && mounted) _load(a.id);
                  },
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final a = _agency;
    final l = context.l10n;
    final me = context.watch<AppStateProvider>().currentUser;
    final staff = me?.isPlatformStaff ?? false;
    final userList = _list(
      _users,
      l.adminUserEmpty,
      (u) => ListTile(
        leading: Icon(u.userType == UserType.misafir ? Icons.person : Icons.badge),
        title: Text(u.userName.isEmpty ? l.adminUnnamed : u.userName),
        subtitle: Text(l.adminTcValue(u.userTc)),
        trailing: Text(userTypeLabel(context, u.userType)),
        onTap: () => _showUserAccess(u, me),
      ),
    );
    if (staff) {
      // Destek: salt okuma, yalnız kişiler.
      return Scaffold(
        appBar: AppBar(title: Text(a?.name ?? l.adminAgencyDetail)),
        body: _loading
            ? const Center(child: CircularProgressIndicator())
            : _error != null
                ? EmptyStateWidget(icon: Icons.error_outline, message: _error!)
                : Column(children: [_header(a!), Expanded(child: userList)]),
      );
    }
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(a?.name ?? l.adminAgencyDetail),
          actions: [
            if (a != null && (me?.isSuperAdmin ?? false))
              IconButton(
                tooltip: l.commonEdit,
                icon: const Icon(Icons.edit),
                onPressed: () async {
                  await showAgencyFormDialog(context, agency: a);
                  if (mounted) await _load(a.id);
                },
              ),
          ],
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: l.adminMenuPeople),
              Tab(text: l.adminMenuTrips),
              Tab(text: l.adminHotels),
              Tab(text: l.adminCurrencyTab),
            ],
          ),
        ),
        floatingActionButton: a == null || !(me?.isGlobalAdmin ?? false)
            ? null
            : FloatingActionButton.extended(
                onPressed: _manage,
                icon: const Icon(Icons.admin_panel_settings),
                label: Text(l.adminManage),
              ),
        body: _loading
            ? const Center(child: CircularProgressIndicator())
            : _error != null
                ? EmptyStateWidget(icon: Icons.error_outline, message: _error!)
                : Column(
                    children: [
                      _header(a!),
                      Expanded(
                        child: TabBarView(
                          children: [
                            userList,
                            _list(
                              _trips,
                              l.adminTripEmpty,
                              (t) => ListTile(
                                leading: const Icon(Icons.flight_takeoff),
                                title: Text(t.name),
                                subtitle: Text(
                                    '${cityLabel(context, t.location)} • ${formatDate(t.startDate)} - ${formatDate(t.endDate)}'),
                              ),
                            ),
                            _list(
                              _hotels,
                              l.adminHotelEmpty,
                              (h) => ListTile(
                                leading: const Icon(Icons.hotel),
                                title: Text(h.name),
                                subtitle:
                                    Text('${cityLabel(context, h.city)} • ${l.adminHotelCapacityShort(h.capacity)}'),
                              ),
                            ),
                            _list(
                              _currencies,
                              l.adminCurrencyEmpty,
                              (c) => ListTile(
                                leading: Text(c.emoji, style: const TextStyle(fontSize: 26)),
                                title: Text(c.name),
                                trailing: Text('${c.value} ₺', style: const TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
      ),
    );
  }

  Widget _header(AgencyModel a) {
    final l = context.l10n;
    final details = [
      if (a.phone?.isNotEmpty == true) '📞 ${a.phone}',
      if (a.email?.isNotEmpty == true) '✉️ ${a.email}',
      if (a.address?.isNotEmpty == true) '📍 ${a.address}',
    ];
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(a.description?.isNotEmpty == true ? a.description! : a.name,
                    style: const TextStyle(fontWeight: FontWeight.w600)),
              ),
              Text(a.isActive ? l.adminActive : l.adminInactive,
                  style: TextStyle(color: a.isActive ? AppColors.success : AppColors.textMuted)),
            ],
          ),
          for (final d in details) Text(d, style: const TextStyle(color: AppColors.textMuted)),
          const SizedBox(height: 6),
          if (!_readOnlyStaff)
            Text(
              l.adminAgencySummary(_users.length, _trips.length, _hotels.length, _currencies.length),
              style: const TextStyle(fontSize: 13),
            ),
        ],
      ),
    );
  }

  Widget _list<T>(List<T> items, String empty, Widget Function(T) builder) {
    final id = _agency?.id;
    return RefreshIndicator(
      onRefresh: () => _load(id),
      child: items.isEmpty
          ? ListView(children: [const SizedBox(height: 60), EmptyStateWidget(message: empty)])
          : ListView.separated(
              padding: const EdgeInsets.only(bottom: 96),
              itemCount: items.length,
              separatorBuilder: (_, _) => const Divider(height: 1),
              itemBuilder: (_, i) => builder(items[i]),
            ),
    );
  }
}

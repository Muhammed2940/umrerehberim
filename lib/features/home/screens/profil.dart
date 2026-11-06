import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/language_picker.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../admin/models/hotel_model.dart';
import '../../admin/models/room_model.dart';
import '../../admin/models/trip_model.dart';
import '../../auth/models/user_model.dart';
import '../../auth/providers/login_provider.dart';
import '../../cuzdan/widgets/wallet_profile_card.dart';
import '../providers/home_provider.dart';
import '../widgets/basliklar.dart';
import '../widgets/info_card.dart';
import '../widgets/location_button.dart';
import '../widgets/quick_action_card.dart';
import '../widgets/quote_widget.dart';

/// Kullanıcı profili: kişisel bilgiler, Mekke/Medine sefer-otel-oda bilgileri, çıkış.
class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fade;
  late final QuoteWidget _selectedQuote;
  bool _loggingOut = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 600));
    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _controller.forward();
    _selectedQuote = QuoteWidget.ofTheDay(offset: 2);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // ---------------------------------------------------------------------------
  // Biçimlendirme
  // ---------------------------------------------------------------------------
  String _formatDate(DateTime? d) {
    if (d == null) return '-';
    return DateFormat('d MMMM y').format(d.toLocal());
  }

  /// Doğum tarihi metin olarak saklanıyor (ör. "01.02.1980" veya ISO).
  String _formatBirth(String? raw) {
    if (raw == null || raw.trim().isEmpty) return '-';
    final iso = DateTime.tryParse(raw.trim());
    return iso != null ? _formatDate(iso) : raw.trim();
  }

  /// 12345678901 → 123******01
  String _maskTc(String tc) {
    final t = tc.trim();
    if (t.isEmpty) return '-';
    if (t.length < 6) return t;
    return '${t.substring(0, 3)}${'*' * (t.length - 5)}${t.substring(t.length - 2)}';
  }

  String _orDash(String? s) => (s == null || s.trim().isEmpty) ? '-' : s.trim();

  String _capitalize(String s) =>
      s.isEmpty ? s : '${s[0].toUpperCase()}${s.substring(1).toLowerCase()}';

  /// Firestore'daki cinsiyet değeri (erkek/kadın) seçili dilde; bilinmeyen değer olduğu gibi.
  String _genderLabel(String raw) {
    final v = raw.trim().toLowerCase();
    if (v == 'erkek' || v == 'e' || v == 'male') return context.l10n.homeGenderMale;
    if (v == 'kadın' || v == 'kadin' || v == 'k' || v == 'female') return context.l10n.homeGenderFemale;
    return _capitalize(raw.trim());
  }

  String _tripText(TripModel? t) {
    if (t == null) return '-';
    final dates = (t.startDate != null || t.endDate != null)
        ? '${_formatDate(t.startDate)} - ${_formatDate(t.endDate)}'
        : '';
    final name = t.name.trim();
    if (name.isEmpty) return dates.isEmpty ? '-' : dates;
    return dates.isEmpty ? name : '$name\n$dates';
  }

  String _hotelText(HotelModel? h) {
    if (h == null) return '-';
    final addr = h.address?.trim() ?? '';
    return addr.isEmpty ? _orDash(h.name) : '${_orDash(h.name)} ($addr)';
  }

  String _roomText(RoomModel? r) {
    if (r == null) return '-';
    final l = context.l10n;
    final cap = r.capacity > 0 ? ' ${l.homeRoomCapacity(r.capacity)}' : '';
    return '${l.homeRoom(_orDash(r.roomNumber))}$cap';
  }

  String _userTypeLabel(UserModel u) {
    final l = context.l10n;
    switch (u.userType) {
      case UserType.superAdmin:
        return l.homeUserTypeSuperAdmin;
      case UserType.yonetici:
        return l.homeUserTypeAdmin;
      case UserType.acenteAdmin:
        return l.rolesAgencyAdmin;
      case UserType.esnaf:
        return l.rolesMerchant;
      case UserType.destek:
        return l.rolesSupport;
      case UserType.muhasebe:
        return l.rolesFinance;
      default:
        return l.homeUserTypePilgrim;
    }
  }

  // ---------------------------------------------------------------------------
  // Eylemler
  // ---------------------------------------------------------------------------
  Future<void> _confirmLogout() async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        icon: const Icon(Icons.logout_rounded, color: AppColors.error, size: 32),
        title: Text(ctx.l10n.homeLogout),
        content: Text(ctx.l10n.homeLogoutConfirm, textAlign: TextAlign.center),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(ctx.l10n.commonCancel)),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: AppColors.error),
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(ctx.l10n.homeLogout),
          ),
        ],
      ),
    );
    if (ok != true || !mounted) return;

    setState(() => _loggingOut = true);
    final home = context.read<HomeProvider>();
    try {
      await context.read<LoginProvider>().logout(context);
      home.reset();
    } catch (e) {
      debugPrint('logout: $e');
      GlobalSnackbar.showError(l10n.homeLogoutFailed);
    } finally {
      if (mounted) setState(() => _loggingOut = false);
    }
  }

  // ---------------------------------------------------------------------------
  // Arayüz
  // ---------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppStateProvider>();
    final user = app.currentUser;
    final l = context.l10n;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(l.homeProfileTitle),
        actions: [
          IconButton(
            tooltip: l.homeLogout,
            icon: const Icon(Icons.logout_rounded),
            onPressed: _loggingOut ? null : _confirmLogout,
          ),
        ],
      ),
      body: _loggingOut
          ? const Center(child: CircularProgressIndicator(color: AppColors.primary))
          : user == null
              ? Center(
                  child: Text(
                    l.homeUserNotFound,
                    style: const TextStyle(fontSize: 16, color: AppColors.textMuted),
                  ),
                )
              : FadeTransition(
                  opacity: _fade,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _header(user),
                        SectionHeader(title: l.homeSectionQuickAccess, icon: Icons.bolt_rounded),
                        QuickActionCard(
                          title: l.homeContactGuide,
                          subtitle: l.homeContactGuideSubtitle,
                          onTap: () => Navigator.of(context).pushNamed('/rehber_iletisim'),
                        ),
                        if (user.userType == UserType.misafir) ...[
                          const SizedBox(height: 10),
                          const WalletProfileCard(),
                        ],
                        SectionHeader(title: l.homePersonalInfo, icon: Icons.badge_rounded),
                        InfoCard(icon: Icons.credit_card_rounded, title: l.homeTcNo, value: _maskTc(user.userTc)),
                        InfoCard(icon: Icons.phone_rounded, title: l.homePhone, value: _orDash(user.userTel)),
                        if ((user.cinsiyet ?? '').trim().isNotEmpty)
                          InfoCard(
                            icon: Icons.wc_rounded,
                            title: l.homeGender,
                            value: _genderLabel(user.cinsiyet!),
                          ),
                        InfoCard(icon: Icons.cake_rounded, title: l.homeBirthDate, value: _formatBirth(user.dogumTarihi)),
                        InfoCard(
                          icon: Icons.event_available_rounded,
                          title: l.homeRegistrationDate,
                          value: _formatDate(user.createdAt),
                        ),
                        SectionHeader(title: l.homeUmrahInfo, icon: FlutterIslamicIcons.solidKaaba),
                        _tripCard(
                          city: l.commonMecca,
                          asset: 'assets/icons/kabe.png',
                          trip: app.mekkeTrip,
                          hotel: app.mekkeHotel,
                          room: app.mekkeOda,
                        ),
                        const SizedBox(height: 12),
                        _tripCard(
                          city: l.commonMedina,
                          asset: 'assets/icons/medine.png',
                          trip: app.medineTrip,
                          hotel: app.medineHotel,
                          room: app.medineOda,
                        ),
                        const SizedBox(height: 16),
                        const LanguageSettingTile(),
                        SectionHeader(title: l.homeLocationTracking, icon: Icons.location_on_rounded),
                        const LocationSharingCard(),
                        const SizedBox(height: 20),
                        OutlinedButton.icon(
                          onPressed: _confirmLogout,
                          style: OutlinedButton.styleFrom(
                            foregroundColor: AppColors.error,
                            side: const BorderSide(color: AppColors.error),
                          ),
                          icon: const Icon(Icons.logout_rounded),
                          label: Text(l.homeLogout),
                        ),
                        _selectedQuote,
                      ],
                    ),
                  ),
                ),
    );
  }

  Widget _header(UserModel user) {
    final name = user.userName.trim().isEmpty ? context.l10n.homeGuest : user.userName.trim();
    final initials = name
        .split(RegExp(r'\s+'))
        .where((p) => p.isNotEmpty)
        .take(2)
        .map((p) => p[0].toUpperCase())
        .join();
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.primary, AppColors.primaryDark],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(color: AppColors.primary.withValues(alpha: 0.3), blurRadius: 14, offset: const Offset(0, 6)),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 68,
            height: 68,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.accent, width: 3),
            ),
            child: Text(
              initials.isEmpty ? '?' : initials,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.primary),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.18),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(FlutterIslamicIcons.solidHadji, color: Colors.white, size: 14),
                      const SizedBox(width: 6),
                      Text(
                        _userTypeLabel(user),
                        style: const TextStyle(color: Colors.white, fontSize: 12.5, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _tripCard({
    required String city,
    required String asset,
    required TripModel? trip,
    required HotelModel? hotel,
    required RoomModel? room,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [BoxShadow(color: Color(0x0F000000), blurRadius: 10, offset: Offset(0, 3))],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: AppColors.primaryLight,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
            ),
            child: Row(
              children: [
                Image.asset(
                  asset,
                  width: 28,
                  height: 28,
                  errorBuilder: (_, _, _) => const Icon(Icons.mosque_rounded, color: AppColors.primary),
                ),
                const SizedBox(width: 10),
                Text(
                  city,
                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: AppColors.primaryDark),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 6),
            child: Column(
              children: [
                _tripRow(Icons.flight_takeoff_rounded, context.l10n.homeTripOf(city), _tripText(trip)),
                _tripRow(Icons.hotel_rounded, context.l10n.homeHotelInfo, _hotelText(hotel)),
                _tripRow(Icons.meeting_room_rounded, context.l10n.homeRoomInfo, _roomText(room)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _tripRow(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20, color: AppColors.primary),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: const TextStyle(fontSize: 14.5, fontWeight: FontWeight.w600, color: AppColors.text, height: 1.35),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

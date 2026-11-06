import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../auth/models/user_model.dart';
import '../shared/cc_widgets.dart';

/// Analiz ekranlarına erişim düzeyi.
/// full: süper admin (her şey) · finance: muhasebe (işlem bölümleri + esnaf performansı).
enum CcAnAccess { none, finance, full }

CcAnAccess ccAnAccessOf(BuildContext context) {
  final u = context.watch<AppStateProvider>().currentUser;
  if (u == null) return CcAnAccess.none;
  if (u.isSuperAdmin) return CcAnAccess.full;
  if (u.isFinance) return CcAnAccess.finance;
  return CcAnAccess.none;
}

List<String> ccAnPeriodLabels(BuildContext context) {
  final t = context.l10n;
  return [
    t.ccAnPeriodToday,
    t.ccAnPeriodWeek,
    t.ccAnPeriodMonth,
    t.ccAnPeriodQuarter,
    t.ccAnPeriodYear,
    t.ccAnPeriodAll,
  ];
}

String ccAnRoleLabel(BuildContext context, String type) {
  final t = context.l10n;
  switch (type) {
    case UserType.superAdmin:
      return t.ccAnRoleSuperAdmin;
    case UserType.yonetici:
      return t.ccAnRoleManager;
    case UserType.acenteAdmin:
      return t.ccAnRoleAgencyAdmin;
    case UserType.misafir:
      return t.ccAnRoleGuest;
    case UserType.esnaf:
      return t.ccAnRoleMerchant;
    case UserType.destek:
      return t.ccAnRoleSupport;
    case UserType.muhasebe:
      return t.ccAnRoleFinance;
    default:
      return t.ccAnRoleOther;
  }
}

String ccAnPayLabel(BuildContext context, String method) {
  final t = context.l10n;
  switch (method) {
    case 'kart':
      return t.ccAnPayCard;
    case 'puan':
      return t.ccAnPayPoints;
    case 'nakit':
      return t.ccAnPayCash;
    default:
      return method;
  }
}

Color ccAnPayColor(String method) {
  switch (method) {
    case 'nakit':
      return CcColors.mid;
    case 'kart':
      return CcColors.info;
    case 'puan':
      return CcColors.gold;
    default:
      return CcColors.sage;
  }
}

/// "+12%" / "−5%" (null → rozet yok).
String? ccAnDelta(double? g) {
  if (g == null) return null;
  final sign = g >= 0 ? '+' : '−';
  return '$sign${CcFmt.pct(g.abs())}';
}

String ccAnLang(BuildContext context) => Localizations.localeOf(context).languageCode;

String ccAnDay(BuildContext context, DateTime d) => DateFormat('d MMM', ccAnLang(context)).format(d);
String ccAnMonthShort(BuildContext context, DateTime d) => DateFormat('MMM', ccAnLang(context)).format(d);
String ccAnMonthYear(BuildContext context, DateTime d) => DateFormat('MMM yy', ccAnLang(context)).format(d);

/// Erişim yok ekranı.
class CcAnNoAccess extends StatelessWidget {
  final String title;
  const CcAnNoAccess({super.key, required this.title});

  @override
  Widget build(BuildContext context) => CcPage(
        title: title,
        body: [CcEmpty(icon: Icons.lock_outline_rounded, message: context.l10n.ccAnNoAccess)],
      );
}

/// Yıldızlı puan gösterimi (ör. 4.6 ★).
class CcAnStars extends StatelessWidget {
  final double rating;
  final double size;
  const CcAnStars({super.key, required this.rating, this.size = 14});

  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var i = 1; i <= 5; i++)
            Icon(
              rating >= i
                  ? Icons.star_rounded
                  : rating >= i - 0.5
                      ? Icons.star_half_rounded
                      : Icons.star_outline_rounded,
              size: size,
              color: CcColors.gold,
            ),
        ],
      );
}

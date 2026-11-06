import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../app/routes.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../auth/models/user_model.dart';
import '../shared/audit_log.dart';
import '../shared/cc_widgets.dart';

/// Context olmayan servislerde (ShopService, AgencyProvider…) denetim kaydına
/// yazılacak kişi: oturumdaki kullanıcı. Bulunamazsa null (AuditLog uid ile yazar).
UserModel? currentAuditActor() {
  final ctx = AppRoutes.navigatorKey.currentContext;
  if (ctx == null) return null;
  try {
    return Provider.of<AppStateProvider>(ctx, listen: false).currentUser;
  } catch (_) {
    return null;
  }
}

/// Denetim kaydı kategorileri (filtre çipleri).
enum AuditCategory { shop, points, coupon, finance, user, agency, message, risk }

const Map<AuditCategory, List<String>> auditCategoryActions = {
  AuditCategory.shop: [
    AuditAction.shopCreate,
    AuditAction.shopUpdate,
    AuditAction.shopDelete,
    AuditAction.shopToggle,
    AuditAction.merchantCreate,
    AuditAction.txCancel,
  ],
  AuditCategory.points: [AuditAction.pointsGrant, AuditAction.pointsRevert, AuditAction.pointsBulk],
  AuditCategory.coupon: [AuditAction.couponCreate, AuditAction.couponUpdate, AuditAction.couponDelete],
  AuditCategory.finance: [AuditAction.settlementPaid, AuditAction.settlementUpdate, AuditAction.financeSettings],
  AuditCategory.user: [AuditAction.userCreate, AuditAction.userUpdate, AuditAction.userDelete, AuditAction.roleChange],
  AuditCategory.agency: [AuditAction.agencyCreate, AuditAction.agencyUpdate, AuditAction.agencyDelete],
  AuditCategory.message: [AuditAction.messageSend],
  AuditCategory.risk: [AuditAction.riskReview],
};

AuditCategory? auditCategoryOf(String action) {
  for (final e in auditCategoryActions.entries) {
    if (e.value.contains(action)) return e.key;
  }
  return null;
}

String auditCategoryLabel(BuildContext context, AuditCategory c) {
  final t = context.l10n;
  switch (c) {
    case AuditCategory.shop:
      return t.ccAuditCatShop;
    case AuditCategory.points:
      return t.ccAuditCatPoints;
    case AuditCategory.coupon:
      return t.ccAuditCatCoupon;
    case AuditCategory.finance:
      return t.ccAuditCatFinance;
    case AuditCategory.user:
      return t.ccAuditCatUser;
    case AuditCategory.agency:
      return t.ccAuditCatAgency;
    case AuditCategory.message:
      return t.ccAuditCatMessage;
    case AuditCategory.risk:
      return t.ccAuditCatRisk;
  }
}

IconData auditCategoryIcon(AuditCategory? c) {
  switch (c) {
    case AuditCategory.shop:
      return Icons.storefront_rounded;
    case AuditCategory.points:
      return Icons.stars_rounded;
    case AuditCategory.coupon:
      return Icons.local_offer_rounded;
    case AuditCategory.finance:
      return Icons.account_balance_wallet_rounded;
    case AuditCategory.user:
      return Icons.person_rounded;
    case AuditCategory.agency:
      return Icons.business_rounded;
    case AuditCategory.message:
      return Icons.forum_rounded;
    case AuditCategory.risk:
      return Icons.shield_rounded;
    case null:
      return Icons.history_rounded;
  }
}

Color auditCategoryColor(AuditCategory? c) {
  switch (c) {
    case AuditCategory.shop:
      return CcColors.mid;
    case AuditCategory.points:
      return CcColors.gold;
    case AuditCategory.coupon:
      return const Color(0xFF8E5A9B);
    case AuditCategory.finance:
      return CcColors.info;
    case AuditCategory.user:
      return CcColors.deep;
    case AuditCategory.agency:
      return const Color(0xFFD9822B);
    case AuditCategory.message:
      return CcColors.sage;
    case AuditCategory.risk:
      return CcColors.danger;
    case null:
      return CcColors.mid;
  }
}

/// Eylemin ekran etiketi. Her [AuditAction] sabiti burada karşılanır.
String ccAuditActionLabel(BuildContext context, String action) {
  final t = context.l10n;
  switch (action) {
    case AuditAction.shopCreate:
      return t.ccActShopCreate;
    case AuditAction.shopUpdate:
      return t.ccActShopUpdate;
    case AuditAction.shopDelete:
      return t.ccActShopDelete;
    case AuditAction.shopToggle:
      return t.ccActShopToggle;
    case AuditAction.merchantCreate:
      return t.ccActMerchantCreate;
    case AuditAction.pointsGrant:
      return t.ccActPointsGrant;
    case AuditAction.pointsRevert:
      return t.ccActPointsRevert;
    case AuditAction.pointsBulk:
      return t.ccActPointsBulk;
    case AuditAction.couponCreate:
      return t.ccActCouponCreate;
    case AuditAction.couponUpdate:
      return t.ccActCouponUpdate;
    case AuditAction.couponDelete:
      return t.ccActCouponDelete;
    case AuditAction.settlementPaid:
      return t.ccActSettlementPaid;
    case AuditAction.settlementUpdate:
      return t.ccActSettlementUpdate;
    case AuditAction.financeSettings:
      return t.ccActFinanceSettings;
    case AuditAction.userCreate:
      return t.ccActUserCreate;
    case AuditAction.userUpdate:
      return t.ccActUserUpdate;
    case AuditAction.userDelete:
      return t.ccActUserDelete;
    case AuditAction.roleChange:
      return t.ccActRoleChange;
    case AuditAction.agencyCreate:
      return t.ccActAgencyCreate;
    case AuditAction.agencyUpdate:
      return t.ccActAgencyUpdate;
    case AuditAction.agencyDelete:
      return t.ccActAgencyDelete;
    case AuditAction.messageSend:
      return t.ccActMessageSend;
    case AuditAction.riskReview:
      return t.ccActRiskReview;
    case AuditAction.txCancel:
      return t.ccActTxCancel;
  }
  return action;
}

/// Rol etiketi (CC rozetleri için; admin_helpers.userTypeLabel ile aynı eşleme).
String ccRoleLabel(BuildContext context, String role) {
  final t = context.l10n;
  switch (role) {
    case UserType.superAdmin:
      return t.rolesSuperAdmin;
    case UserType.yonetici:
      return t.rolesManager;
    case UserType.acenteAdmin:
      return t.rolesAgencyAdmin;
    case UserType.esnaf:
      return t.rolesMerchant;
    case UserType.destek:
      return t.rolesSupport;
    case UserType.muhasebe:
      return t.rolesFinance;
    case UserType.misafir:
      return t.rolesGuest;
  }
  return role;
}

Color ccRoleColor(String role) {
  switch (role) {
    case UserType.superAdmin:
      return CcColors.gold;
    case UserType.destek:
      return CcColors.info;
    case UserType.muhasebe:
      return const Color(0xFF8E5A9B);
    case UserType.yonetici:
      return CcColors.mid;
  }
  return CcColors.sage;
}

/// "az önce", "5 dk önce"… 7 günden eskiyse tarih.
String ccRelativeTime(BuildContext context, DateTime? d) {
  if (d == null) return '-';
  final t = context.l10n;
  final diff = DateTime.now().difference(d);
  if (diff.inMinutes < 1) return t.ccAgoNow;
  if (diff.inHours < 1) return t.ccAgoMinutes(diff.inMinutes);
  if (diff.inDays < 1) return t.ccAgoHours(diff.inHours);
  if (diff.inDays < 7) return t.ccAgoDays(diff.inDays);
  return CcFmt.dateTime(d);
}

List<String> ccPeriodLabels(BuildContext context) {
  final t = context.l10n;
  return [t.ccPeriodToday, t.ccPeriodWeek, t.ccPeriodMonth, t.ccPeriodQuarter, t.ccPeriodYear, t.ccPeriodAll];
}

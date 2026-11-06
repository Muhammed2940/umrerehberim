import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../auth/models/user_model.dart';
import '../providers/admin_provider.dart';

/// Yönetici ekranlarında işlem yapılan acente.
/// Acente admini: kendi acentesi. Genel adminler (süper admin, yönetici):
/// "Yönet" ile seçilen acente; seçilmediyse kendi acentesi (varsa) ya da null.
String? adminAgencyId(BuildContext context) {
  final admin = context.read<AdminProvider>();
  final user = context.read<AppStateProvider>().currentUser;
  if (user != null && user.isAgencyAdmin) return user.agencyId;
  return admin.overrideAgencyId ?? user?.agencyId;
}

/// Giriş yapan kullanıcının rol adı (başlıklarda gösterilir).
String currentRoleLabel(BuildContext context) {
  final user = context.read<AppStateProvider>().currentUser;
  return userTypeLabel(context, user?.userType ?? UserType.misafir);
}

/// AdminProvider verisi yüklenmemişse yükler (ekran doğrudan açıldığında).
void ensureAdminLoaded(BuildContext context) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    if (!context.mounted) return;
    final user = context.read<AppStateProvider>().currentUser;
    context.read<AdminProvider>().ensureLoaded(user);
  });
}

// Biçimler her çağrıda kurulur ki seçili dil (Intl.defaultLocale) kullanılsın.
String formatDate(DateTime? d) => d == null ? l10n.adminNoDate : DateFormat('dd.MM.yyyy').format(d);
String formatDateTime(DateTime? d) => d == null ? '' : DateFormat('dd.MM.yyyy HH:mm').format(d);
String formatLongDate(DateTime d) => DateFormat('d MMMM yyyy, EEEE').format(d);

/// Firestore'a yazılan değerler (Türkçe kalır); ekranda aşağıdaki eşlemelerle çevrilir.
const cities = ['Mekke', 'Medine'];
const genders = ['Erkek', 'Kadın'];
const roomGenders = ['Erkek', 'Kadın', 'Karma'];

/// Saklanan şehir değerinin ekran etiketi.
String cityLabel(BuildContext context, String value) {
  final t = context.l10n;
  switch (value) {
    case 'Mekke':
      return t.commonMecca;
    case 'Medine':
      return t.commonMedina;
    case 'Cidde':
      return t.adminCityJeddah;
    case 'Diğer':
      return t.adminCityOther;
  }
  return value;
}

/// Saklanan cinsiyet değerinin ekran etiketi.
String genderLabel(BuildContext context, String value) {
  final t = context.l10n;
  switch (value) {
    case 'Erkek':
      return t.adminGenderMale;
    case 'Kadın':
      return t.adminGenderFemale;
    case 'Karma':
      return t.adminGenderMixed;
  }
  return value;
}

/// Saklanan kullanıcı tipinin (`user_type`) ekran etiketi.
String userTypeLabel(BuildContext context, String value) {
  final t = context.l10n;
  switch (value) {
    case UserType.misafir:
      return t.rolesGuest;
    case UserType.yonetici:
      return t.rolesManager;
    case UserType.acenteAdmin:
      return t.rolesAgencyAdmin;
    case UserType.superAdmin:
      return t.rolesSuperAdmin;
    case UserType.esnaf:
      return t.rolesMerchant;
    case UserType.destek:
      return t.rolesSupport;
    case UserType.muhasebe:
      return t.rolesFinance;
  }
  return value;
}

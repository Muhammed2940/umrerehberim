import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/utils/firestore_utils.dart';
import '../../auth/models/user_model.dart';
import '../shared/audit_log.dart';

/// Uygulamanın derleme numarası. DİKKAT: pubspec.yaml `version: x.y.z+BUILD` içindeki BUILD
/// ile AYNI olmalı (package_info_plus projede yok). Sürüm yükseltirken ikisini birlikte
/// güncelle; `derle.ps1` eşit değilse derlemeyi durdurur.
const int kAppBuildNumber = 1;

/// `platform_settings/app`: bakım modu, zorunlu güncelleme ve destek iletişimi.
/// Okuma herkese (oturumsuz dahil) açıktır; yazma yalnız süper admin.
class PlatformAppSettings {
  final bool maintenanceMode;
  final String maintenanceMessage;
  final int minBuild;
  final String updateUrl;
  final String supportPhone1;
  final String supportPhone2;
  final String supportWhatsapp;
  final String supportEmail1;
  final String supportEmail2;

  const PlatformAppSettings({
    this.maintenanceMode = false,
    this.maintenanceMessage = '',
    this.minBuild = 0,
    this.updateUrl = '',
    this.supportPhone1 = '',
    this.supportPhone2 = '',
    this.supportWhatsapp = '',
    this.supportEmail1 = '',
    this.supportEmail2 = '',
  });

  static const empty = PlatformAppSettings();

  bool get updateRequired => minBuild > kAppBuildNumber;

  factory PlatformAppSettings.fromMap(Map<String, dynamic> d) {
    final mb = d['min_build'];
    return PlatformAppSettings(
      maintenanceMode: d['maintenance_mode'] == true,
      maintenanceMessage: toStr(d['maintenance_message']),
      minBuild: mb is num ? mb.toInt() : int.tryParse('$mb') ?? 0,
      updateUrl: toStr(d['update_url']),
      supportPhone1: toStr(d['support_phone_1']),
      supportPhone2: toStr(d['support_phone_2']),
      supportWhatsapp: toStr(d['support_whatsapp']),
      supportEmail1: toStr(d['support_email_1']),
      supportEmail2: toStr(d['support_email_2']),
    );
  }

  Map<String, dynamic> toMap() => {
        'maintenance_mode': maintenanceMode,
        'maintenance_message': maintenanceMessage,
        'min_build': minBuild,
        'update_url': updateUrl,
        'support_phone_1': supportPhone1,
        'support_phone_2': supportPhone2,
        'support_whatsapp': supportWhatsapp,
        'support_email_1': supportEmail1,
        'support_email_2': supportEmail2,
      };
}

class PlatformSettingsService {
  PlatformSettingsService._();
  static final instance = PlatformSettingsService._();

  final _col = FirebaseFirestore.instance.collection('platform_settings');

  /// Açılış okuması: hata/zaman aşımında null (engelleme yok).
  Future<PlatformAppSettings?> fetchApp({Duration timeout = const Duration(seconds: 5)}) async {
    try {
      final snap = await _col.doc('app').get().timeout(timeout);
      return PlatformAppSettings.fromMap(snap.data() ?? const {});
    } catch (_) {
      return null;
    }
  }

  /// Yönetim ekranı okuması (hata fırlatır).
  Future<PlatformAppSettings> loadApp() async {
    final snap = await _col.doc('app').get();
    return PlatformAppSettings.fromMap(snap.data() ?? const {});
  }

  Future<bool> loadDemoPayments() async {
    final snap = await _col.doc('payments').get();
    return snap.data()?['demo_payments'] == true;
  }

  Future<void> setDemoPayments(bool value, {required UserModel actor, required bool previous}) async {
    await _col.doc('payments').set({
      'demo_payments': value,
      'updated_at': FieldValue.serverTimestamp(),
    }, SetOptions(merge: true));
    await AuditLog.write(
      action: AuditAction.paymentsToggle,
      actor: actor,
      targetType: 'platform_settings',
      targetId: 'payments',
      targetName: 'demo_payments',
      details: {'from': previous, 'to': value},
    );
  }

  /// Ayarları kaydeder; değişen alanlar denetim kaydına yazılır. Değişen alan sayısını döner.
  Future<int> saveApp(PlatformAppSettings next, PlatformAppSettings prev, {required UserModel actor}) async {
    final a = prev.toMap(), b = next.toMap();
    final changed = <String, dynamic>{
      for (final k in b.keys)
        if (a[k] != b[k]) k: {'from': a[k], 'to': b[k]},
    };
    await _col.doc('app').set({...b, 'updated_at': FieldValue.serverTimestamp()}, SetOptions(merge: true));
    if (changed.isNotEmpty) {
      await AuditLog.write(
        action: AuditAction.platformSettings,
        actor: actor,
        targetType: 'platform_settings',
        targetId: 'app',
        targetName: 'app',
        details: {'changed': changed.keys.toList(), 'values': changed},
      );
    }
    return changed.length;
  }

  /// Pasif acente denetimi: yalnız misafir ve acente adminini etkiler. `is_active == false`
  /// ise true. Belge okunamazsa/yoksa false (çevrimdışı açılış bozulmasın).
  static Future<bool> isAgencyInactive(UserModel user) async {
    if (!(user.userType == UserType.misafir || user.isAgencyAdmin)) return false;
    final id = user.agencyId;
    if (id == null || id.isEmpty) return false;
    try {
      final snap = await FirebaseFirestore.instance
          .collection('agencies')
          .doc(id)
          .get()
          .timeout(const Duration(seconds: 6));
      return snap.exists && snap.data()?['is_active'] == false;
    } catch (_) {
      return false;
    }
  }
}

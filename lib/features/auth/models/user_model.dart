import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../core/utils/firestore_utils.dart';

/// Kullanıcı tipleri (eski uygulamadaki değerlerle aynı).
class UserType {
  static const misafir = 'misafir';
  static const yonetici = 'yonetici';
  static const superAdmin = 'super_admin';

  /// Yalnız kendi acentesini yöneten admin (rehber/acente yetkilisi).
  static const acenteAdmin = 'acente_admin';

  /// Anlaşmalı dükkan sahibi/kasiyeri. Kod + PIN ile girer, yalnız esnaf panelini görür.
  static const esnaf = 'esnaf';

  /// Platform destek personeli (süper admin açar; acentesi yok).
  static const destek = 'destek';

  /// Platform muhasebe personeli (süper admin açar; acentesi yok).
  static const muhasebe = 'muhasebe';
}

/// Hesap türü (`account_kind`). Eski/acente hesaplarında alan yoktur (null).
class AccountKind {
  /// Google ile kendi açtığı hesap; acentesi yok (tool/BIREYSEL_SEMA.md).
  static const bireysel = 'bireysel';
}

/// Bireysel kayıtta onaylanan KVKK aydınlatma metninin sürümü (`kvkk_version`, ≤ 20 karakter).
/// Metin değişince artırılır.
const String currentKvkkVersion = '2026-11-v1';

// ROLLER (firestore.rules ile aynı):
//   super_admin  : her şey; anlaşmalı dükkan, esnaf, esnaf raporu, acente ekle/sil yalnız onda
//   yonetici     : genel yardımcı admin; TÜM acentelerin verisini yönetir (acente seçerek),
//                  dükkan/esnaf/esnaf raporu ve acente ekle/sil YOK
//   acente_admin : yalnız kendi acentesi
//   esnaf        : yalnız kendi dükkanı
//   misafir      : kendisi + acentesi

class UserModel {
  final String id;
  final String userName;
  final String userType; // misafir | yonetici | super_admin
  final String userTel;
  final String userTc;
  final String? userToken;
  final String? fcmToken;
  final String? userLocation;
  final String? cinsiyet;
  final String? dogumTarihi;
  final String? agencyId;
  final String? mekkeSeferiId;
  final String? medineSeferiId;
  final String? mekkeOtelId;
  final String? medineOtelId;
  final String? mekkeOdaId;
  final String? medineOdaId;

  /// Esnaf hesabının bağlı olduğu dükkan (`shops/{id}`); diğer tiplerde null.
  final String? shopId;

  /// Yeni girişteki 7 haneli Kullanıcı ID (`login_id`). Eski (TC) hesaplarda null.
  final String? loginId;

  /// `account_kind`: 'bireysel' ya da null (acente/eski hesap).
  final String? accountKind;

  /// Google hesabının e-postası (yalnız bireysel).
  final String? email;

  /// `auth_provider`: 'google' (yalnız bireysel).
  final String? authProvider;

  /// Konum için açık rıza (`location_consent`, yalnız bireysel).
  final bool? locationConsent;

  /// Onaylanan KVKK metni sürümü (`kvkk_version`).
  final String? kvkkVersion;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const UserModel({
    required this.id,
    required this.userName,
    required this.userType,
    required this.userTel,
    required this.userTc,
    this.userToken,
    this.fcmToken,
    this.userLocation,
    this.cinsiyet,
    this.dogumTarihi,
    this.agencyId,
    this.mekkeSeferiId,
    this.medineSeferiId,
    this.mekkeOtelId,
    this.medineOtelId,
    this.mekkeOdaId,
    this.medineOdaId,
    this.shopId,
    this.loginId,
    this.accountKind,
    this.email,
    this.authProvider,
    this.locationConsent,
    this.kvkkVersion,
    this.createdAt,
    this.updatedAt,
  });

  /// Herhangi bir yönetim paneli (süper admin, genel yönetici, acente admini,
  /// destek, muhasebe). "Yönetici" giriş sekmesi bunlar içindir.
  bool get isAdmin => isGlobalAdmin || isAgencyAdmin || isPlatformStaff;

  /// Destek personeli: acente/kişi okuma, acente mesajları, risk alarmları.
  bool get isSupport => userType == UserType.destek;

  /// Muhasebe personeli: hak ediş, esnaf işlemleri, puan hareketleri, kuponlar.
  bool get isFinance => userType == UserType.muhasebe;

  /// Süper adminin alt hesapları (destek, muhasebe). Acente verisini yönetmezler,
  /// yalnız Kontrol Merkezi'nde yetkili oldukları modülleri görürler.
  bool get isPlatformStaff => isSupport || isFinance;

  /// Kontrol Merkezi'ni (süper admin paneli) açanlar.
  bool get usesControlCenter => isSuperAdmin || isPlatformStaff;

  /// Yalnız süper admin: dükkan/esnaf/esnaf raporu, acente ekle/sil.
  bool get isSuperAdmin => userType == UserType.superAdmin;

  /// Tüm acentelere erişen adminler (süper admin + genel yönetici); acente seçerek çalışır.
  bool get isGlobalAdmin => userType == UserType.superAdmin || userType == UserType.yonetici;

  /// Yalnız kendi acentesini yöneten admin.
  bool get isAgencyAdmin => userType == UserType.acenteAdmin;
  bool get isMerchant => userType == UserType.esnaf;

  /// Google ile kendi kaydolan, acentesi olmayan hacı. Acente özelliklerini görmez
  /// (sefer, otel/oda, duyuru, takvim, rehber, telsiz, canlı konum, esnaf).
  bool get isBireysel =>
      userType == UserType.misafir && (agencyId ?? '').isEmpty && accountKind == AccountKind.bireysel;

  factory UserModel.fromMap(String id, Map<String, dynamic> d) => UserModel(
        id: id,
        userName: toStr(d['user_name']),
        userType: toStr(d['user_type'], UserType.misafir),
        userTel: toStr(d['user_tel']),
        userTc: toStr(d['user_tc']),
        userToken: d['user_token'] as String?,
        fcmToken: d['fcm_token'] as String?,
        userLocation: d['user_location'] as String?,
        cinsiyet: d['cinsiyet'] as String?,
        dogumTarihi: d['dogum_tarihi'] as String?,
        agencyId: d['agency_id'] as String?,
        mekkeSeferiId: d['mekke_seferi_id'] as String?,
        medineSeferiId: d['medine_seferi_id'] as String?,
        mekkeOtelId: d['mekke_otel_id'] as String?,
        medineOtelId: d['medine_otel_id'] as String?,
        mekkeOdaId: d['mekke_oda_id'] as String?,
        medineOdaId: d['medine_oda_id'] as String?,
        shopId: d['shop_id'] as String?,
        loginId: _loginIdOf(d['login_id']),
        accountKind: d['account_kind'] as String?,
        email: d['email'] as String?,
        authProvider: d['auth_provider'] as String?,
        locationConsent: d['location_consent'] as bool?,
        kvkkVersion: d['kvkk_version'] as String?,
        createdAt: toDateTime(d['created_at']),
        updatedAt: toDateTime(d['updated_at']),
      );

  factory UserModel.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) =>
      UserModel.fromMap(doc.id, doc.data() ?? {});

  factory UserModel.fromJson(Map<String, dynamic> j) =>
      UserModel.fromMap(toStr(j['id']), j);

  Map<String, dynamic> _base() => {
        'user_name': userName,
        'user_type': userType,
        'user_tel': userTel,
        'user_tc': userTc,
        'user_token': userToken,
        'fcm_token': fcmToken,
        'user_location': userLocation,
        'cinsiyet': cinsiyet,
        'dogum_tarihi': dogumTarihi,
        'agency_id': agencyId,
        'mekke_seferi_id': mekkeSeferiId,
        'medine_seferi_id': medineSeferiId,
        'mekke_otel_id': mekkeOtelId,
        'medine_otel_id': medineOtelId,
        'mekke_oda_id': mekkeOdaId,
        'medine_oda_id': medineOdaId,
        if (shopId != null) 'shop_id': shopId,
        // Yalnız doluysa yazılır: merge ile kaydedilen belgelerde mevcut değeri silmez.
        if (loginId != null) 'login_id': loginId,
        // Bireysel alanlar: yalnız doluysa (acente hesaplarına null yazılmaz).
        if (accountKind != null) 'account_kind': accountKind,
        if (email != null) 'email': email,
        if (authProvider != null) 'auth_provider': authProvider,
        if (locationConsent != null) 'location_consent': locationConsent,
        if (kvkkVersion != null) 'kvkk_version': kvkkVersion,
      };

  /// İlk Google girişinde istemcinin oluşturduğu `users/{uid}` belgesi. Alanlar
  /// tool/BIREYSEL_SEMA.md'deki listeyle BİREBİR aynıdır (kural `hasOnly` ile denetler);
  /// buraya alan eklenmez. Zamanlar sunucu zamanıdır (`request.time`).
  static Map<String, dynamic> bireyselNewDoc({
    required String userName,
    required String email,
    required bool locationConsent,
  }) =>
      {
        'user_name': userName.trim(),
        'user_type': UserType.misafir,
        'account_kind': AccountKind.bireysel,
        'agency_id': '',
        'email': email,
        'auth_provider': 'google',
        'kvkk_version': currentKvkkVersion,
        'kvkk_accepted_at': FieldValue.serverTimestamp(),
        'location_consent': locationConsent,
        'created_at': FieldValue.serverTimestamp(),
        'updated_at': FieldValue.serverTimestamp(),
      };

  static String? _loginIdOf(Object? v) {
    final s = v?.toString().trim() ?? '';
    return s.isEmpty ? null : s;
  }

  Map<String, dynamic> toFirestore({bool isNew = false}) => {
        ..._base(),
        if (isNew) 'created_at': FieldValue.serverTimestamp(),
        'updated_at': FieldValue.serverTimestamp(),
      };

  Map<String, dynamic> toJson() => {
        'id': id,
        ..._base(),
        'created_at': dateToJson(createdAt),
        'updated_at': dateToJson(updatedAt),
      };

  UserModel copyWith({
    String? userName,
    String? userTel,
    String? userLocation,
    String? cinsiyet,
    String? dogumTarihi,
    String? fcmToken,
    String? mekkeSeferiId,
    String? medineSeferiId,
    String? mekkeOtelId,
    String? medineOtelId,
    String? mekkeOdaId,
    String? medineOdaId,
    String? loginId,
    bool? locationConsent,
  }) =>
      UserModel(
        id: id,
        userName: userName ?? this.userName,
        userType: userType,
        userTel: userTel ?? this.userTel,
        userTc: userTc,
        userToken: userToken,
        fcmToken: fcmToken ?? this.fcmToken,
        userLocation: userLocation ?? this.userLocation,
        cinsiyet: cinsiyet ?? this.cinsiyet,
        dogumTarihi: dogumTarihi ?? this.dogumTarihi,
        agencyId: agencyId,
        mekkeSeferiId: mekkeSeferiId ?? this.mekkeSeferiId,
        medineSeferiId: medineSeferiId ?? this.medineSeferiId,
        mekkeOtelId: mekkeOtelId ?? this.mekkeOtelId,
        medineOtelId: medineOtelId ?? this.medineOtelId,
        mekkeOdaId: mekkeOdaId ?? this.mekkeOdaId,
        medineOdaId: medineOdaId ?? this.medineOdaId,
        shopId: shopId,
        loginId: loginId ?? this.loginId,
        accountKind: accountKind,
        email: email,
        authProvider: authProvider,
        locationConsent: locationConsent ?? this.locationConsent,
        kvkkVersion: kvkkVersion,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

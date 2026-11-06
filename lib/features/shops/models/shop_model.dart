import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/utils/firestore_utils.dart';

/// Anlaşmalı (indirim yapan) dükkan / esnaf. Koleksiyon: `shops/{id}`.
///
/// `agency_id == 'all'` ise dükkan tüm acentelerin misafirlerine açıktır
/// (yalnız süper admin yazabilir).
///
/// ESNAF PANELİ (ileride): [ownerUid] dükkan sahibinin Auth uid'si olacak,
/// [merchantCode] dükkana özel kısa koddur (misafirin doğrulama kodunda kullanılır).
class ShopModel {
  static const allAgencies = 'all';

  static const categories = <String>[
    'Hediyelik',
    'Hurma & Gıda',
    'Parfüm & Misk',
    'Tekstil & İhram',
    'Kuyumcu',
    'Restoran & Kafe',
    'Kitap & Tesbih',
    'Diğer',
  ];

  static const cities = <String>['Mekke', 'Medine', 'Cidde', 'Diğer'];

  final String id;
  final String agencyId;
  final String name;
  final String category;
  final String description;
  final int discountPercent;
  final String discountNote;
  final String city;
  final String address;
  final double? latitude;
  final double? longitude;
  final String phone;
  final String whatsapp;
  final String workingHours;
  final String logoBase64;
  final String qrData;
  final bool isActive;
  final int sortOrder;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  /// ESNAF PANELİ: dükkan sahibinin uid'si. Şimdilik hep null.
  final String? ownerUid;

  /// ESNAF PANELİ: dükkana özel kısa kod (ör. "K7P2QX").
  final String merchantCode;

  /// Acentenin bu dükkandaki net satışlardan aldığı komisyon (%).
  final int commissionPercent;

  ShopModel({
    this.id = '',
    required this.agencyId,
    required this.name,
    this.category = 'Diğer',
    this.description = '',
    this.discountPercent = 0,
    this.discountNote = '',
    this.city = 'Mekke',
    this.address = '',
    this.latitude,
    this.longitude,
    this.phone = '',
    this.whatsapp = '',
    this.workingHours = '',
    this.logoBase64 = '',
    this.qrData = '',
    this.isActive = true,
    this.sortOrder = 0,
    this.createdAt,
    this.updatedAt,
    this.ownerUid,
    this.merchantCode = '',
    this.commissionPercent = 0,
  });

  bool get isForAllAgencies => agencyId == allAgencies;
  bool get hasLocation => latitude != null && longitude != null;

  /// Logo baytları (bir kez çözülür).
  late final Uint8List? logoBytes = _decodeLogo();

  Uint8List? _decodeLogo() {
    if (logoBase64.isEmpty) return null;
    try {
      final raw = logoBase64.contains(',') ? logoBase64.split(',').last : logoBase64;
      return base64Decode(raw);
    } catch (_) {
      return null;
    }
  }

  static double? _toDouble(dynamic v) {
    if (v is num) return v.toDouble();
    if (v is String) return double.tryParse(v.replaceAll(',', '.'));
    return null;
  }

  factory ShopModel.fromMap(String id, Map<String, dynamic> d) => ShopModel(
        id: id,
        agencyId: toStr(d['agency_id']),
        name: toStr(d['name']),
        category: toStr(d['category'], 'Diğer'),
        description: toStr(d['description']),
        discountPercent: toInt(d['discount_percent']),
        discountNote: toStr(d['discount_note']),
        city: toStr(d['city'], 'Diğer'),
        address: toStr(d['address']),
        latitude: _toDouble(d['latitude']),
        longitude: _toDouble(d['longitude']),
        phone: toStr(d['phone']),
        whatsapp: toStr(d['whatsapp']),
        workingHours: toStr(d['working_hours']),
        logoBase64: toStr(d['logo_base64']),
        qrData: toStr(d['qr_data']),
        isActive: d['is_active'] != false,
        sortOrder: toInt(d['sort_order']),
        createdAt: toDateTime(d['created_at']),
        updatedAt: toDateTime(d['updated_at']),
        ownerUid: d['owner_uid'] as String?,
        merchantCode: toStr(d['merchant_code']),
        commissionPercent: toInt(d['commission_percent']),
      );

  factory ShopModel.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) =>
      ShopModel.fromMap(doc.id, doc.data() ?? {});

  /// Firestore'a yazılacak alanlar (tarihler servis tarafından eklenir).
  Map<String, dynamic> toMap() => {
        'agency_id': agencyId,
        'name': name,
        'category': category,
        'description': description,
        'discount_percent': discountPercent,
        'discount_note': discountNote,
        'city': city,
        'address': address,
        'latitude': latitude,
        'longitude': longitude,
        'phone': phone,
        'whatsapp': whatsapp,
        'working_hours': workingHours,
        'logo_base64': logoBase64,
        'qr_data': qrData,
        'is_active': isActive,
        'sort_order': sortOrder,
        'owner_uid': ownerUid,
        'merchant_code': merchantCode,
        'commission_percent': commissionPercent,
      };

  /// Esnaf paneli hazır olana kadar misafire gösterilen doğrulama kodu:
  /// `UMRE-<merchant_code>-<uid'nin ilk 6 hanesi>`.
  String verificationCodeFor(String uid) {
    final code = merchantCode.isNotEmpty ? merchantCode : (id.length >= 6 ? id.substring(0, 6) : id);
    final u = uid.length >= 6 ? uid.substring(0, 6) : uid;
    return 'UMRE-${code.toUpperCase()}-${u.toUpperCase()}';
  }

  /// Karışmayan harflerden 6 haneli rastgele esnaf kodu.
  static String generateMerchantCode() {
    const chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';
    final r = Random.secure();
    return List.generate(6, (_) => chars[r.nextInt(chars.length)]).join();
  }
}

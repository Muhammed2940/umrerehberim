import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../core/utils/firestore_utils.dart';

class AgencyModel {
  final String id;
  final String name;
  final String? description;
  final String? phone;
  final String? email;
  final String? address;
  final bool isActive;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const AgencyModel({
    required this.id,
    required this.name,
    this.description,
    this.phone,
    this.email,
    this.address,
    this.isActive = true,
    this.createdAt,
    this.updatedAt,
  });

  factory AgencyModel.fromMap(String id, Map<String, dynamic> d) => AgencyModel(
        id: id,
        name: toStr(d['name'], ''),
        description: d['description']?.toString(),
        phone: d['phone']?.toString(),
        email: d['email']?.toString(),
        address: d['address']?.toString(),
        isActive: d['is_active'] == true,
        createdAt: toDateTime(d['created_at']),
        updatedAt: toDateTime(d['updated_at']),
      );

  factory AgencyModel.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) =>
      AgencyModel.fromMap(doc.id, doc.data() ?? {});

  factory AgencyModel.fromJson(Map<String, dynamic> j) => AgencyModel.fromMap(toStr(j['id']), j);

  Map<String, dynamic> toFirestore({bool isNew = false}) => {
        'name': name,
        'description': description,
        'phone': phone,
        'email': email,
        'address': address,
        'is_active': isActive,
        if (isNew) 'created_at': FieldValue.serverTimestamp(),
        'updated_at': FieldValue.serverTimestamp(),
      };

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'phone': phone,
        'email': email,
        'address': address,
        'is_active': isActive,
        'created_at': dateToJson(createdAt),
        'updated_at': dateToJson(updatedAt),
      };

  AgencyModel copyWith({
    String? name,
    String? description,
    String? phone,
    String? email,
    String? address,
    bool? isActive,
  }) =>
      AgencyModel(
        id: id,
        name: name ?? this.name,
        description: description ?? this.description,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        address: address ?? this.address,
        isActive: isActive ?? this.isActive,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

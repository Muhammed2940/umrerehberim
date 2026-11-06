import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../core/utils/firestore_utils.dart';

class CurrencyModel {
  final String id;
  final String emoji;
  final String name;
  final String value;
  final String? agencyId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const CurrencyModel({
    required this.id,
    required this.emoji,
    required this.name,
    required this.value,
    this.agencyId,
    this.createdAt,
    this.updatedAt,
  });

  factory CurrencyModel.fromMap(String id, Map<String, dynamic> d) => CurrencyModel(
        id: id,
        emoji: toStr(d['emoji'], ''),
        name: toStr(d['name'], ''),
        value: toStr(d['value'], ''),
        agencyId: d['agency_id']?.toString(),
        createdAt: toDateTime(d['created_at']),
        updatedAt: toDateTime(d['updated_at']),
      );

  factory CurrencyModel.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) =>
      CurrencyModel.fromMap(doc.id, doc.data() ?? {});

  factory CurrencyModel.fromJson(Map<String, dynamic> j) => CurrencyModel.fromMap(toStr(j['id']), j);

  Map<String, dynamic> toFirestore({bool isNew = false}) => {
        'emoji': emoji,
        'name': name,
        'value': value,
        'agency_id': agencyId,
        if (isNew) 'created_at': FieldValue.serverTimestamp(),
        'updated_at': FieldValue.serverTimestamp(),
      };

  Map<String, dynamic> toJson() => {
        'id': id,
        'emoji': emoji,
        'name': name,
        'value': value,
        'agency_id': agencyId,
        'created_at': dateToJson(createdAt),
        'updated_at': dateToJson(updatedAt),
      };

  CurrencyModel copyWith({
    String? emoji,
    String? name,
    String? value,
    String? agencyId,
  }) =>
      CurrencyModel(
        id: id,
        emoji: emoji ?? this.emoji,
        name: name ?? this.name,
        value: value ?? this.value,
        agencyId: agencyId ?? this.agencyId,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

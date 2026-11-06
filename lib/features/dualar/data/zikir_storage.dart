import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/model_zikirlerim.dart';

/// Kayıtlı zikirleri SharedPreferences'ta ('zikirlerim' anahtarı, JSON liste) saklar.
class ZikirStorage {
  static const String key = 'zikirlerim';

  static Future<List<ModelZikirlerim>> load() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(key);
    if (raw == null || raw.isEmpty) return [];
    try {
      final list = jsonDecode(raw) as List;
      return list.map((e) => ModelZikirlerim.fromJson(Map<String, dynamic>.from(e as Map))).toList();
    } catch (_) {
      return [];
    }
  }

  static Future<void> save(List<ModelZikirlerim> list) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, jsonEncode(list.map((e) => e.toJson()).toList()));
  }

  /// Aynı id varsa günceller, yoksa listenin başına ekler.
  static Future<void> upsert(ModelZikirlerim z) async {
    final list = await load();
    final i = list.indexWhere((e) => e.id == z.id);
    if (i >= 0) {
      list[i] = z;
    } else {
      list.insert(0, z);
    }
    await save(list);
  }
}

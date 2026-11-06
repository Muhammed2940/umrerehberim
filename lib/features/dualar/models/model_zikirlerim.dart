/// Cihazda (SharedPreferences) saklanan kayıtlı zikirler.
class ModelZikirlerim {
  final String id;
  final String zikirAdi;
  final int zikirSayisi;
  final String zikirTarihi;

  const ModelZikirlerim({
    required this.id,
    required this.zikirAdi,
    required this.zikirSayisi,
    required this.zikirTarihi,
  });

  factory ModelZikirlerim.fromJson(Map<String, dynamic> j) => ModelZikirlerim(
        id: '${j['id'] ?? DateTime.now().millisecondsSinceEpoch}',
        zikirAdi: '${j['zikirAdi'] ?? ''}',
        zikirSayisi: (j['zikirSayisi'] as num?)?.toInt() ?? 0,
        zikirTarihi: '${j['zikirTarihi'] ?? ''}',
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'zikirAdi': zikirAdi,
        'zikirSayisi': zikirSayisi,
        'zikirTarihi': zikirTarihi,
      };
}

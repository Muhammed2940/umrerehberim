import '../../../core/utils/firestore_utils.dart';

/// Günlük ezan vakitleri (Mekke / Medine).
class PrayerTimeModel {
  final String date;
  final String day;
  final String hicri;
  final String imsak;
  final String gunes;
  final String ogle;
  final String ikindi;
  final String aksam;
  final String yatsi;

  const PrayerTimeModel({
    required this.date,
    required this.day,
    required this.hicri,
    required this.imsak,
    required this.gunes,
    required this.ogle,
    required this.ikindi,
    required this.aksam,
    required this.yatsi,
  });

  factory PrayerTimeModel.fromJson(Map<String, dynamic> d) => PrayerTimeModel(
        date: toStr(d['date']),
        day: toStr(d['day']),
        hicri: toStr(d['hicri']),
        imsak: toStr(d['imsak']),
        gunes: toStr(d['gunes']),
        ogle: toStr(d['ogle']),
        ikindi: toStr(d['ikindi']),
        aksam: toStr(d['aksam']),
        yatsi: toStr(d['yatsi']),
      );

  factory PrayerTimeModel.fromFirestore(Map<String, dynamic> d) => PrayerTimeModel.fromJson(d);

  Map<String, dynamic> toJson() => {
        'date': date,
        'day': day,
        'hicri': hicri,
        'imsak': imsak,
        'gunes': gunes,
        'ogle': ogle,
        'ikindi': ikindi,
        'aksam': aksam,
        'yatsi': yatsi,
      };

  /// Ekranda sırayla gösterilen vakitler.
  List<MapEntry<String, String>> get entries => [
        MapEntry('İmsak', imsak),
        MapEntry('Güneş', gunes),
        MapEntry('Öğle', ogle),
        MapEntry('İkindi', ikindi),
        MapEntry('Akşam', aksam),
        MapEntry('Yatsı', yatsi),
      ];
}

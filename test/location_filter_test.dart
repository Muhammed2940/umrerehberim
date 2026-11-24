import 'package:flutter_test/flutter_test.dart';
import 'package:umrerehberim/common/services/location_filter.dart';

// Kâbe yakını; 1e-5 derece ≈ 1,1 m enlem.
const lat0 = 21.4225, lng0 = 39.8262;
final t0 = DateTime(2026, 11, 24, 12);

LocationFix fix(double dLatM, double dLngM, double acc, int sec) => LocationFix(
      lat: lat0 + dLatM / 111320,
      lng: lng0 + dLngM / 103600,
      accuracy: acc,
      time: t0.add(Duration(seconds: sec)),
    );

double errM(LocationFix f) => LocationFilter.distanceMeters(lat0, lng0, f.lat, f.lng);

void main() {
  test('ilk ölçüm kabul edilir', () {
    final f = LocationFilter();
    expect(f.add(fix(0, 0, 12, 0)), isNotNull);
  });

  test('iyi konum varken ±400 m ağ tahmini atılır', () {
    final f = LocationFilter();
    f.add(fix(0, 0, 12, 0));
    expect(f.add(fix(350, 0, 400, 30)), isNull);
    expect(errM(f.estimate!), lessThan(1));
  });

  test('iyi konum 10 dakikadan eskiyse kaba ölçüm kabul edilir', () {
    final f = LocationFilter();
    f.add(fix(0, 0, 12, 0));
    expect(f.add(fix(300, 0, 300, 11 * 60)), isNotNull);
  });

  test('imkansız hızda yansıma sıçraması atılır', () {
    final f = LocationFilter();
    f.add(fix(0, 0, 10, 0));
    // 2 sn'de 400 m (±10 m ile) → 190 m/sn, atılmalı
    expect(f.add(fix(400, 0, 10, 2)), isNull);
  });

  test('dururken titreşim söner', () {
    final f = LocationFilter();
    final noise = <double>[30, -25, 40, -35, 20, -30, 35, -20, 25, -40];
    for (var i = 0; i < noise.length; i++) {
      f.add(fix(noise[i], -noise[i], 35, i * 20));
    }
    // Ham ölçümler 30–55 m sapıyor, tahmin merkeze çok daha yakın olmalı.
    expect(errM(f.estimate!), lessThan(15));
  });

  test('gerçek yürüyüşte konum yeni yere geçer', () {
    final f = LocationFilter();
    f.add(fix(0, 0, 10, 0));
    // 1,3 m/sn yürüyüş, 20 sn'de bir ölçüm, 5 dakika
    for (var i = 1; i <= 15; i++) {
      f.add(fix(i * 26.0, 0, 10, i * 20));
    }
    final e = f.estimate!;
    final gercek = LocationFilter.distanceMeters(lat0 + 390 / 111320, lng0, e.lat, e.lng);
    expect(gercek, lessThan(30));
  });

  test('geçersiz ve eski ölçümler atılır', () {
    final f = LocationFilter();
    expect(f.add(LocationFix(lat: 0, lng: 0, accuracy: 10, time: t0)), isNull);
    expect(f.add(fix(0, 0, 0, 0)), isNull);
    f.add(fix(0, 0, 10, 60));
    expect(f.add(fix(5, 0, 5, 30)), isNull);
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:umrerehberim/features/paketler/providers/paket_fiyat_provider.dart';
import 'package:umrerehberim/features/paketler/providers/personal_plan_provider.dart';

void main() {
  group('PaketFiyatProvider', () {
    test('TL metni çözülür, TL olmayan null', () {
      expect(PaketFiyatProvider.tlCoz('349,99 TL'), 349.99);
      expect(PaketFiyatProvider.tlCoz('1.500 TL'), 1500);
      expect(PaketFiyatProvider.tlCoz('0 TL'), 0);
      expect(PaketFiyatProvider.tlCoz('1.500 \$'), isNull);
    });

    test('ödeme tutarı TL kuruş, Full (dolar) null', () {
      expect(PaketFiyatProvider.tlKurus(PaketId.umre), 34999);
      expect(PaketFiyatProvider.tlKurus(PaketId.aile), 79999);
      expect(PaketFiyatProvider.tlKurus(PaketId.ucretsiz), 0);
      expect(PaketFiyatProvider.tlKurus(PaketId.full), isNull);
    });

    test('biçim: EN €6.31, AR 6.31 €, 0 → €0', () {
      expect(PaketFiyatProvider.bicimle(6.3123, 'en'), '€6.31');
      expect(PaketFiyatProvider.bicimle(6.3123, 'ar'), '6.31 €');
      expect(PaketFiyatProvider.bicimle(0, 'en'), '€0');
      expect(PaketFiyatProvider.bicimle(1234.5, 'en'), '€1,234.50');
    });

    test('kur yokken yerel (TL) metin gösterilir', () {
      expect(paketFiyat.goster(PaketId.umre, 'en', '349.99 TL'), '349.99 TL');
      expect(paketFiyat.goster(PaketId.umre, 'tr', '349,99 TL'), '349,99 TL');
    });
  });
}

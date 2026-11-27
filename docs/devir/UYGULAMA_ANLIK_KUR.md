# Döviz fiyatları anlık kurla (web + uygulama) — YAPILDI 2026-11-25

## Kural (sahip onaylı)
- TL fiyatlar sabit; tek kaynak uygulamanın `lib/l10n/parts/paketler.json` TR metni (`349,99 TL`, `799,99 TL`).
- EN/AR'da gösterilen euro = TL fiyat ÷ güncel kur. Sabit euro fiyatı yok.
- Ödeme her zaman TL çekilir (PayTR TL hesabı). Ekranda "€5" yazsa da çekilen 799,99 TL.
  PayTR döviz hesabı açılırsa bu kural yeniden ele alınacak.
- Full Umre (`1.500 $`) çevrilmez.
- Kur hiç alınamazsa EN/AR'da TL fiyat görünür (`paketler.json` EN/AR fiyat metinleri artık TL).

## Uygulama (`C:\dev\umrerehberim`)
- `lib/features/paketler/providers/paket_fiyat_provider.dart`: hesap, biçim, `tlKurus` (PayTR tutarı).
  Kur: mevcut `ExchangeRateService` (Yahoo Finance dakikalık, yedek ExchangeRate-API, son kur cihazda).
- `paketler_screen.dart`: kartlarda döviz, kur notu. `odeme_screen.dart`: toplam `799.99 TL (≈ €14.41)`,
  ödeme düğmesi TL, PayTR TODO'su `args.tlKurus` ile.
- `paketler.json`: EN/AR fiyatlar TL, yeni `paketlerKurNot`. Test: `test/paketler/paket_fiyat_test.dart`.

## Web (`site/`)
- `tool/kur_aktar.mjs` → `src/data/kur.json` (derleme anında), `components/KurGuncelle.astro` (tarayıcıda güncel kur).
  Kaynak Frankfurter (ECB günlük). Yahoo tarayıcıdan çağrılamadığı (CORS) için web günlük kur kullanır;
  uygulamayla arada küçük fark olabilir.
- `lib/fiyat.ts`, `i18n/index.ts` `paket()` / `paketFiyat()`. Not metni `paketlerKurNot` (uygulamadan).

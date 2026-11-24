# Web sitesi: yapılacaklar

Mimari: [MIMARI.md](MIMARI.md). İşaretler: `[ ]` yapılacak, `[x]` bitti, `(SAHİP)` = sahibinin
sağlaması gereken bilgi/karar.

## Faz 0: Kurulum (alan adı beklemeden)
- [x] `site/` içine Astro + Tailwind projesi kur; `config.ts` içinde `ALAN` yer tutucusu
- [x] Tasarım belirteçleri: uygulama renkleri, yazı tipleri (Latin + Arapça), kart/köşe ölçüleri
- [x] `Base.astro`: dil seçimi, `dir="rtl"`, SEO etiketleri, Open Graph, hreflang
- [x] Header (logo, menü, dil seçici, "Uygulamayı indir"), Footer (şirket bilgisi, yasal linkler,
      "Fetva yerine geçmez" notu)
- [x] i18n altyapısı: `tr.json`, `en.json`, `ar.json`
- [x] `.htaccess`: https yönlendirme, güvenlik başlıkları, 404
- [x] `tool/paketle.ps1`: derle → `dist/www.zip`, gizli dosya taraması
- [x] Git deposu (özel) ve ilk commit

## Faz 1: Mağaza için zorunlu sayfalar (~1 hafta)
Play Store / App Store başvurusu bunları ister.
- [x] Tek sayfa tanıtım (ana sayfa taslağı): başlık, 3–4 özellik, ekran görüntüleri, mağaza rozetleri
- [x] `/yasal/gizlilik`: gizlilik politikası (konum, kamera, mikrofon/telsiz, bildirim, Google girişi)
- [x] `/yasal/kvkk`: KVKK aydınlatma metni
- [x] `/yasal/acik-riza`: konum ve sağlık (adımsayar) açık rızası
- [x] `/yasal/kullanim-kosullari`
- [x] `/hesap-silme`: uygulama içinden silme adımları + erişemeyenler için talep yolu (şimdilik e-posta;
      Google doğrulamalı form Faz 2'de `deletion-request` ile)
- [x] `/destek`: telefon, WhatsApp, e-posta (`platform_settings/app`'ten derlemede çekilir;
      belge şu an REST'te 404 veriyor → yedek değerler `config.ts`'ten)
- [ ] Uygulamadaki yasal linkleri bu URL'lere bağla (uygulama deposunda ayrı iş)
- (SAHİP) Şirket unvanı, adres, vergi no, MERSİS, KVKK irtibat e-postası
- (SAHİP) Avukat incelemesi; taslakları biz yazarız (TR+EN taslak hazır; AR sayfası EN gövdeyi gösteriyor)
- [ ] Yasal metinlerin Arapça çevirisi

## Faz 2: Pazarlama sitesi (2–3 hafta)
- [ ] Ana sayfa: üç kapı (Hacı / Acente / Esnaf), özellikler, güven şeridi, SSS
- [ ] `/paketler`: Ücretsiz · Umre 349,99 TL (30 gün) · Aile/Arkadaş 799,99 TL (6 kişi, 30 gün) ·
      Full Umre 1.500 $ (10 gün; uçak, vize, otel, yemek, ulaşım, eSIM). Sıra ve metin uygulamayla aynı;
      `paketler.json`'dan otomatik
- [ ] `/full-umre`: ayrıntı + başvuru formu (ad, telefon, e-posta, kişi sayısı, tercih edilen ay, not, KVKK)
- [ ] `/acente`: faydalar (canlı konum, telsiz, duyuru, esnaf ağı, raporlar), "teklif alın", demo formu
- [ ] `/esnaf`: QR indirim ve puan anlatımı, başvuru formu
- [ ] `/rehber`: 40 gezilecek yer, Harem kapıları, ulaşım, adım adım umre, dualar
      (`tool/rehber_aktar.mjs` ile uygulama verisinden; her mekana ayrı SEO sayfası)
- [ ] `/hakkimizda`, `/yatirimci`
- [ ] EN ve AR çeviriler, RTL kontrolü
- [ ] sitemap.xml, robots.txt, yapılandırılmış veri (Organization, FAQ)
- [ ] Çerezsiz analitik
- (SAHİP) Logo SVG, gerçek ekran görüntüleri, acente fiyatları gösterilsin mi / "teklif alın" mı
- (SAHİP) SMTP bilgileri (form e-postaları için)

### Faz 2 sunucu tarafı (umre-api deposunda, uygulama reposu `server/umre-api`)
- [ ] `POST /v1/web/lead`, `POST /v1/web/full-application`, `POST /v1/web/deletion-request`
- [ ] Honeypot, süre, IP hız sınırı, CORS, KVKK onayı denetimi
- [ ] Firestore kuralları: `leads`, `full_applications`, `deletion_requests` (istemci yazamaz) + testler
- [ ] Kontrol Merkezi'nde başvuru ve silme talepleri listesi (uygulama deposu)
- [ ] E-posta bildirimi (SMTP)

## Faz 3: Ödeme (PayTR)
- [ ] `POST /v1/paytr/token`, `POST /v1/paytr/callback` (hash doğrulama, idempotent)
- [ ] Full Umre: onaylı başvuruya ödeme bağlantısı → ödeme → `entitlements/{uid}`
- [ ] Web'den Umre/Aile satışı (Google ile giriş → aynı uid)
- [ ] `/yasal/mesafeli-satis`, `/yasal/iade`, ön bilgilendirme formu
- [ ] Fatura süreci (e-arşiv entegrasyonu veya elle)
- [ ] Canlıya geçince Platform Ayarları'nda demo ödemeyi kapat
- (SAHİP) PayTR mağaza no / anahtar / tuz (yalnız Plesk gizli klasörüne), test modu onayı

## Faz 4: Web uygulamaları
- [ ] `aile.ALAN`: Aile Takibi izleyicisi (api'den tek kullanımlık jeton, doğrudan Firestore yok)
- [ ] `panel.ALAN`: Flutter Web acente paneli denemesi (uygulama deposundan derlenir)

## Faz 5
- [ ] Tam acente web paneli, white-label

## Sahibin vereceği kararlar (özet)
Alan adı · logo · şirket bilgileri · avukat · SMTP · PayTR bilgileri · acente fiyat gösterimi ·
mağaza linkleri · pilot acente ekran görüntüsü izinleri.

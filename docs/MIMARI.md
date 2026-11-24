# Umre Rehberim web sistemi: mimari

Mobil uygulamadan **ayrı depo**. Uygulama deposu: `C:\dev\umrerehberim` (Flutter). Bu depo yalnız web.
Alan adı henüz belli değil; her yerde `ALAN` yer tutucusu kullanılır (tek ayar: `site.config` / `.env`).

## 1. Genel resim

```
                    ┌──────────────────────────┐
  Ziyaretçi ───────▶│ www.ALAN  (statik site)  │  Astro + Tailwind, TR/EN/AR
                    │ /, /paketler, /rehber …  │  Plesk'e zip ile yüklenir
                    └─────┬──────────────┬─────┘
             form POST    │              │  Google girişi (yalnız hesap silme / web ödeme)
                          ▼              ▼
                    ┌──────────────┐  ┌──────────────────────┐
                    │ api.ALAN     │  │ Firebase Auth JS SDK │
                    │ PHP servis   │  └──────────────────────┘
                    │ (umre-api)   │──── servis hesabıyla ───▶ Firestore (umrerehberim-cc99e)
                    └──────┬───────┘                            leads, full_applications,
                           │ ödeme                               deletion_requests, entitlements
                           ▼
                    ┌──────────────┐
                    │ PayTR iFrame │── callback ──▶ api.ALAN/v1/paytr/callback
                    └──────────────┘
```

- Site **statik**: sunucuda çalışan kod yok, saldırı yüzeyi yok, hızlı, ucuz.
- Dinamik her şey (form, ödeme, silme talebi) **api.ALAN** üzerinden. Bu PHP servisi uygulama
  deposunda `server/umre-api` altında yazıldı (kimlik/PIN girişi). Web uç noktaları oraya eklenir;
  aynı sunucu, aynı servis hesabı, aynı hız sınırı ve denetim kaydı altyapısı.
- Tarayıcı **Firestore'a doğrudan yazmaz.** Tek istisna: `platform_settings/app` okuması
  (destek telefonları; kurallarda herkese açık). İstenirse bu da derleme anında çekilir.

## 2. Alt alanlar

| Alt alan | Ne | Teknoloji | Faz |
|---|---|---|---|
| `www` | Tanıtım sitesi, yasal sayfalar, rehber içerik | Astro (statik) | 1–2 |
| `api` | Kimlik + form + ödeme + silme talebi | PHP 8.1+ (umre-api) | 1 (form), 3 (ödeme) |
| `aile` | Aile Takibi izleyicisi (tek kullanımlık bağlantı) | Astro sayfası + api | 4 |
| `panel` | Acente web paneli | Flutter Web (uygulama deposundan) | 4–5 |

Hepsi Plesk'te, Let's Encrypt SSL, http → https yönlendirme.

## 3. Klasör yapısı (bu depo)

```
umrerehberim-web/
├─ site/                    Astro projesi
│  ├─ src/
│  │  ├─ config.ts          ALAN, mağaza linkleri, api adresi (tek yer)
│  │  ├─ i18n/              tr.json, en.json, ar.json + yardımcılar
│  │  ├─ layouts/           Base.astro (dil, dir="rtl", SEO, altbilgi)
│  │  ├─ components/        Header, Footer, PaketKart, Form, StoreBadges …
│  │  ├─ content/           rehber (mekanlar, kapılar) — uygulama verisinden üretilir
│  │  │                     yasal metinler (markdown)
│  │  └─ pages/[lang]/      index, paketler, full-umre, acente, esnaf, rehber/…,
│  │                        destek, yasal/…, hesap-silme, hakkimizda
│  └─ public/               logo, favicon, ekran görüntüleri, robots.txt
├─ tool/
│  ├─ rehber_aktar.mjs      lib/features/info_screen/data/*.dart → content/rehber/*.json
│  └─ paketle.ps1           derle → dist/www.zip (Plesk'e yüklenecek)
└─ docs/                    bu belgeler
```

## 4. Diller

- TR varsayılan (`/`), EN `/en/`, AR `/ar/` (`dir="rtl"`, Arapça yazı tipi).
- Metinler `i18n/*.json`; anahtar adları mümkünse uygulamadaki l10n anahtarlarıyla aynı
  (örn. paket adları/fiyatları `lib/l10n/parts/paketler.json` ile birebir).
- `hreflang` etiketleri, dil başına sitemap.

## 5. Veri kaynakları (tek kaynak ilkesi)

| Veri | Kaynak | Web'e nasıl gelir |
|---|---|---|
| Paket adları, fiyatlar, içerik | `umrerehberim/lib/l10n/parts/paketler.json` | Derlemede kopyalanır (betik) |
| 40 gezilecek yer, Harem kapıları | `umrerehberim/lib/features/info_screen/data/*.dart` | `tool/rehber_aktar.mjs` |
| Destek telefon/e-posta/WhatsApp | Firestore `platform_settings/app` | Derlemede REST ile çekilir (canlı değişirse yeniden derle) |
| Yasal metinler | Bu depo `content/yasal/*.md` | Avukat onaylı; uygulama da bu URL'leri açar |

## 6. API uç noktaları (umre-api'ye eklenecek)

| Uç nokta | Ne yapar | Yazdığı yer |
|---|---|---|
| `POST /v1/web/lead` | Acente / esnaf / iletişim formu | `leads/{id}` + e-posta |
| `POST /v1/web/full-application` | Full Umre Paketi başvurusu | `full_applications/{id}` → süper admin "Paket Onayları" |
| `POST /v1/web/deletion-request` | Google ile doğrulanmış hesap silme talebi | `deletion_requests/{uid}` |
| `POST /v1/paytr/token` | Onaylı başvuru için PayTR iFrame jetonu | — |
| `POST /v1/paytr/callback` | PayTR bildirimi; hash doğrulanır | `payments/{id}`, `entitlements/{uid}` |

Form koruması: honeypot alanı, en az 3 sn doldurma süresi, IP başına hız sınırı (mevcut
`RateLimiter`), gerekirse Cloudflare Turnstile, KVKK onay kutusu zorunlu, CORS yalnız `https://www.ALAN`.

Firestore kuralları: bu üç koleksiyona istemci yazamaz (yalnız servis hesabı); okuma yalnız süper admin.
Kurallar uygulama deposundaki `firestore.rules` içinde; değişiklik orada yapılır ve testlenir.

## 7. Ödeme ayrımı

- **Full Umre Paketi (1.500 $, fiziksel hizmet):** PayTR. Başvuru → yönetici onayı ve tarih →
  e-postayla PayTR ödeme bağlantısı → callback → `entitlements/{uid}` sunucu yazar.
- **Umre (349,99 TL) ve Aile/Arkadaş (799,99 TL), dijital:** uygulama içinde Google Play / App Store
  ödemesi. Web'den PayTR ile de satılabilir (Google ile giriş → aynı uid). Uygulamada web ödemesine
  yönlendiren düğme konmaz (mağaza kuralı).
- PayTR canlıya alınınca Kontrol Merkezi > Platform Ayarları'nda **Demo ödeme kapatılır.**
- PayTR mağaza no / anahtar / tuz yalnız Plesk'teki gizli klasörde. Git'e, siteye, sohbete girmez.

## 8. Tasarım

Uygulamanın dili birebir: emerald `#235347`, koyu `#163832`, en koyu `#0B2B26`, sage `#8EB69B`,
mint `#DAF1DE`, zemin `#F3F8F4`. Yuvarlak köşeli kartlar, profil başlığındaki yeşil degrade.
Yeni bir marka dili icat edilmez. Ekran görüntüleri gerçek uygulamadan. Harem görselleri yalnız
lisanslı veya kendi çekimimiz.

## 9. Güvenlik ve gizlilik

- Statik site: sunucu tarafı kod yok. Güvenlik başlıkları `.htaccess` ile (CSP, HSTS, X-Frame-Options,
  Referrer-Policy).
- Çerezsiz analitik (Umami/Plausible). Google Analytics yok → çerez bannerı gerekmez (yalnız bilgi notu).
- Formlarda kişisel veri yalnız POST gövdesinde; URL'de asla.
- Gizli değer (servis hesabı, PayTR, SMTP) bu depoya girmez; `.gitignore` + paketleme betiği taraması.

## 10. Yayın

Yerelde `npm run build` → `tool/paketle.ps1` → `dist/www.zip` → Plesk Dosya Yöneticisi'nde
`www.ALAN` klasörüne yükle, aç. (umre-api'deki `paketle.ps1` ile aynı mantık.)

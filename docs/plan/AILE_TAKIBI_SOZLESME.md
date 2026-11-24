# Aile Takibi – sözleşme (uygulama, kurallar, PHP ve web buna uyar)

Evdeki aile uygulama kurmaz. Hacı uygulamada bir bağlantı oluşturur, WhatsApp vb. ile paylaşır.
Aile tarayıcıda `https://ALAN/t/#<token>` açar, haritada hacının **son** konumunu görür (60 sn'de bir yenilenir).
Geçmiş konum tutulmaz.

## Kimler kullanır
| Kullanıcı | Hak |
|---|---|
| Bireysel (Google), `entitlements/{uid}.paket in ['aile','full']`, `status == 'active'`, `paid_until > now` | VAR |
| Bireysel, Ücretsiz veya Umre Paketi (349,99 TL) | YOK → Paketler ekranına yönlendir |
| Acente misafiri (Google değil, `user_type == 'misafir'`, `agency_id != ''`) | VAR (acente sunar) |
| Yönetici, esnaf, destek vb. | YOK |

Hak hem bağlantı oluşturulurken (kurallar) hem her görüntülemede (PHP) kontrol edilir. Paket biterse bağlantı `410 plan_ended` döner.

## Token
- İstemci üretir: `Random.secure()` 32 bayt → base64url (dolgusuz, 43 karakter).
- Firestore belge id'si = `sha256(token)` küçük harf hex (64 karakter). **Token hiçbir sunucuda saklanmaz.**
- Uygulama token'ı yalnız cihazda tutar (`SharedPreferences`: `tracking_token_<hash>`) ki yeniden paylaşılabilsin. Uygulama silinirse yeni bağlantı oluşturulur.
- URL: `https://ALAN/t/#<token>`. Token `#` sonrasında: sunucu loglarına ve Referer'a düşmez.
- Web token'ı API'ye **POST gövdesinde** gönderir (URL'de değil).

## Firestore `tracking_links/{hash}`
| Alan | Tür | Not |
|---|---|---|
| `owner_uid` | string | = `request.auth.uid` |
| `kind` | `'bireysel'` \| `'acente'` | |
| `agency_id` | string | acente misafirinde acentesi, bireyselde `''` |
| `label` | string 1–30 | Sadece sahibin gördüğü ad ("Annem") |
| `approx` | bool | true → yaklaşık konum (~1 km) |
| `hidden_until` | timestamp \| null | "2 saat gizle" |
| `revoked` | bool | true olunca geri alınamaz |
| `created_at` | timestamp | = request.time |
| `expires_at` | timestamp | ≤ created_at + 30 gün; bireyselde ayrıca ≤ `entitlements.paid_until` |

Kurallar:
- `hash.matches('^[0-9a-f]{64}$')`.
- **read/list:** sahibi (`resource.data.owner_uid == request.auth.uid`) veya süper admin.
- **create:** sahibi + hak var + alanlar `hasOnly` yukarıdakiler + `revoked == false` + `hidden_until == null` + `created_at == request.time` + `expires_at` sınırları. `kind` ve `agency_id` kullanıcının gerçek durumuna eşit.
- **update:** sahibi; yalnız `label`, `approx`, `hidden_until`, `revoked` değişir. `revoked` yalnız false→true. `hidden_until` null veya `≤ request.time + 2 saat + 1 dk`. İptal edilmiş bağlantı güncellenemez.
- **delete:** sahibi veya süper admin.
- Alt koleksiyon `views/{visitorKey}`: sahibi okur, istemci YAZAMAZ (yalnız PHP servis hesabıyla).
- Kişi başına en çok **5 etkin** bağlantı (uygulama sınırlar, kural sayamaz).

`views/{visitorKey}` (PHP yazar): `{first_at, last_at, count, device: 'mobil'|'masaustu'}`.
`visitorKey` = `sha256(IP + UA + gün + sunucu_tuzu)` ilk 24 karakter. IP ve UA ham haliyle saklanmaz. Aynı ziyaretçi için en çok 30 dakikada bir güncellenir.

## Konumun kaynağı (Realtime DB)
- Acente misafiri: mevcut `locations/{agencyId}/{uid}` (değişmez).
- Bireysel: **yeni** `personal_locations/{uid}` = `{latitude, longitude, timestamp, accuracy}` (aynı doğrulamalar, `userName` yok).
  - write: `auth.uid == $uid` ve `sign_in_provider == 'google.com'`. read: yalnız `auth.uid == $uid`. PHP servis hesabıyla okur.
- Bireysel için arka plan konum servisi **yalnız** hak varsa ve kullanıcı Aile Takibi ekranında paylaşımı açtıysa çalışır. Kapatınca kayıt silinir.
- Hesap silmede `personal_locations/{uid}` ve kullanıcının `tracking_links` belgeleri de silinir.

## API: `POST /v1/track` (umre-api)
İstek: `Content-Type: application/json`, gövde `{"token": "<43 karakter>"}`.
CORS: `Access-Control-Allow-Origin` yalnız yapılandırmadaki web kökenleri (`web_origins`), `OPTIONS` ön isteği desteklenir.

Başarılı yanıt `200`:
```json
{
  "status": "ok",
  "name": "Ahmet",
  "approx": false,
  "hidden_until": null,
  "location": { "lat": 21.42251, "lng": 39.82620, "accuracy": 18, "updated_at": 1795600000000 },
  "place": { "city": "mekke", "harem_m": 240 },
  "expires_at": 1798200000000,
  "server_time": 1795600030000,
  "refresh_sec": 60
}
```
- `status`: `"ok"` | `"hidden"` (konum yok, `hidden_until` dolu) | `"no_location"` (paylaşım kapalı veya hiç konum yok).
- `name`: `users/{uid}.user_name` ilk kelimesi.
- `approx: true` ise lat/lng 2 ondalığa yuvarlanır, `accuracy = max(acc, 1500)`, `harem_m = null`.
- `place.city`: Mescid-i Haram (21.4225, 39.8262) veya Mescid-i Nebevi (24.4672, 39.6111) 20 km içindeyse `mekke`/`medine`, değilse `diger`. `harem_m` en yakın mescide metre (tam sayı).
- `location` null ise `place` de null.

Hatalar (gövde `{error, message}`, mevcut umre-api biçimi):
| Kod | `error` | Ne zaman |
|---|---|---|
| 400 | `bad_request` | token biçimi yanlış |
| 404 | `not_found` | bağlantı yok |
| 410 | `link_revoked` | iptal edildi |
| 410 | `link_expired` | `expires_at` geçti |
| 410 | `plan_ended` | bireyselin hakkı bitti, misafir artık acentede değil veya hesabı kapatıldı |
| 429 | `rate_limited` | IP başına dakikada 30'dan fazla istek |

Önbellek: bağlantı başına yanıt 20 sn `FileCache`. RTDB için kapsama `https://www.googleapis.com/auth/firebase.database` + `https://www.googleapis.com/auth/userinfo.email` eklenir.

## Web sayfası `/t/` (umrerehberim-web)
- Statik Astro sayfası, TR/EN/AR (AR sağdan sola). `noindex`, `<meta name="referrer" content="no-referrer">`.
- `location.hash`'ten token okur → `POST {API}/v1/track`. 60 sn'de bir (yanıttaki `refresh_sec`) ve sekme görünür olunca yeniler.
- Harita: Leaflet + OpenStreetMap karoları (atıf zorunlu). İşaretçi ve `accuracy` yarıçaplı daire. Yaklaşık konumda yalnız daire.
- Bilgi kartı: "Ahmet · Mekke · Harem'e 240 m · 3 dk önce güncellendi".
- Durumlar: `hidden` → "Ahmet konumunu 14:30'a kadar gizledi". `no_location` → "Konum paylaşımı şu an kapalı". `updated_at` 15 dk'dan eskiyse uyarı: "Telefonun interneti kapalı olabilir". 404/410 → uygun açıklama. Ağ hatası → son veriyi gösterip "bağlantı yok" rozeti.
- Demo kipi: `/t/#demo` sunucuya gitmez, yukarıdaki örnek JSON'u gösterir (API bitmeden geliştirme ve sunum için).
- Tasarım uygulamayla aynı renkler (emerald/sage/mint), yuvarlak kartlar.

## Uygulama ekranı (Flutter)
- Giriş: Profil → "Aile Takibi" kartı. Hakkı olmayan bireysel kullanıcı bu kartta `PaketGate` görür ve Paketler ekranına yönlendirilir (Aile/Full).
- Ekran: konum paylaşımı anahtarı (bireysel); bağlantı listesi (etiket, kalan süre, yaklaşık, gizli rozetleri); "Yeni bağlantı" (etiket + yaklaşık seçeneği) → paylaş (`share_plus`); her bağlantıda Paylaş, 2 saat gizle / gizlemeyi kaldır, Yaklaşık konum anahtarı, İptal et; "Kim baktı" (views: zaman, cihaz, sayı).
- Web kök adresi tek sabitten gelir (`ALAN` belli olunca değişir).

---

## ARA MOD: PHP'siz, yalnız Firebase (24 Kasım 2026)
PHP sunucusu kurulana kadar web sayfası konumu **doğrudan Realtime Database'den** okur. PHP yolu silinmez; web `config.ts` içindeki bir anahtarla (`TAKIP_KAYNAK: 'firebase' | 'api'`) seçilir.

### RTDB `tracking_public/{hash}` (hash = sha256(token) hex, 64 karakter)
| Alan | Tür | Not |
|---|---|---|
| `owner` | string | sahibin uid'si (= auth.uid) |
| `name` | string ≤ 40 | `user_name` ilk kelimesi |
| `expires_at` | number (ms) | Firestore'daki `expires_at` |
| `hidden_until` | number (ms) | 0 = gizli değil |
| `approx` | bool | true ise lat/lng zaten 2 ondalığa yuvarlanmış, accuracy ≥ 1500 |
| `lat`, `lng`, `accuracy`, `updated_at` | number | konum yoksa/gizliyken **hiç yazılmaz** |

Kurallar: `tracking_public` kökü okunamaz (liste yok). `$hash` herkese okunur (hash bilinmeden erişilemez). Yazma/silme yalnız `owner == auth.uid`. İptal edilen bağlantının düğümü **silinir**.

Yazan: uygulama. Arka plan konum servisi her konum yazışında sahibin etkin bağlantılarına (iptal edilmemiş, süresi geçmemiş) yazar; bağlantı listesi Firestore'dan canlı dinlenir. Ekrandan iptal → düğüm silinir; gizle → konum alanları silinir, `hidden_until` yazılır.

### Web
- `GET https://umrerehberim-cc99e-default-rtdb.firebaseio.com/tracking_public/<hash>.json` (hash tarayıcıda `crypto.subtle` SHA-256 ile token'dan hesaplanır; token ağa hiç çıkmaz).
- Yanıt `null` → `not_found` (iptal edilen de bu olur; metin: "Bağlantı bulunamadı ya da iptal edildi").
- `expires_at < şimdi` → `link_expired`. `hidden_until > şimdi` → `hidden`. `lat` yok → `no_location`. Aksi `ok`.
- `place` (şehir, Harem'e mesafe) tarayıcıda hesaplanır (approx'ta `harem_m` yok). `server_time` yerine yanıtın `Date` başlığı, yoksa cihaz saati.
- Bu modda "kim baktı" ve `plan_ended` YOK (paket bitince uygulama düğümleri siler; en geç 30 dk).

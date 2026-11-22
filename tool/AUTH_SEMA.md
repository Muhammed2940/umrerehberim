# Yeni giriş sistemi — sözleşme (PHP servisi, uygulama ve kurallar buna uyar)

## Model
- TC yalnız kayıtta tutulur (`users/{uid}.user_tc`), girişte KULLANILMAZ.
- Her kullanıcının (esnaf hariç) bir **Kullanıcı ID**'si (`login_id`) ve bir **gizli bilgisi** vardır:
  - misafir: **6 haneli rakam PIN** (zayıf PIN'ler reddedilir, aşağıya bakın)
  - personel (super_admin, yonetici, acente_admin, destek, muhasebe): **8-128 karakter şifre** (ilk verilen: 10 karakter, harf+rakam, karışmayan karakterler)
- `login_id`: **7 haneli rakam**, ilk hane 1-9, tekil. Kullanıcı görür, rehber/admin görür.
- Gizli bilgi yalnız özet olarak saklanır: `bcrypt(base64(HMAC-SHA256(pepper, gizli)))`, maliyet 11.
  `pepper` yalnız sunucudaki `config.php`'dedir (en az 32 rastgele bayt); veritabanı tek başına sızsa
  özetler çevrimdışı denenemez. Kimse göremez. Rehber/admin **yeni** bir tane üretebilir; üretilen değer
  yanıtta **bir kez** döner.
- Zayıf PIN (üretilmez, `change-secret` reddeder: `weak_secret`): hepsi aynı rakam, artan/azalan dizi
  (`123456`, `654321`, `890123` sarmalı dahil), `ababab` (`121212`), `abcabc` (`123123`),
  `19xx19` / `20xx20` yıl kalıbı ve kısa bir yaygın PIN listesi (`112233`, `159753` …).
- Hacı PIN değiştirmeye zorlanmaz; isterse profilinden değiştirir.
- Esnaf girişi şimdilik değişmiyor (Firebase e-posta/şifre, kod+PIN).

## Sunucu: Plesk'te PHP 8.1+ (`server/umre-api/`)
- `public/` = belge kökü (yalnız `index.php` ve `.htaccess`). `src/` kod, `bin/` komut satırı betikleri.
- **Gizli klasör** (`config.php`, `service-account.json`, `cache/`, `ratelimit/`): önerilen yer alt alan
  adının klasörü DIŞINDA, ör. `/var/www/vhosts/<alanadi>/umre-private`. Yer sırası:
  `UMRE_PRIVATE_DIR` ortam değişkeni > `<uygulama>/private-path.php` (yalnız yolu döndürür) > `<uygulama>/private`.
  `index.php` gizli klasör belge kökünün (`DOCUMENT_ROOT`) içindeyse **çalışmaz** (500 + log).
  `umask(0077)`: servisin oluşturduğu dosyalar 0600, klasörler 0700.
- Bağımlılık yok (Composer yok). JWT RS256: `openssl_sign/verify`. Google API'leri: servis hesabı JWT →
  OAuth2 erişim jetonu (önbellekli). Kapsamlar **dar**: `auth/datastore` + `auth/identitytoolkit`
  (`cloud-platform` DEĞİL; `oauth_scopes` ile değiştirilebilir, bkz. PLESK_KURULUM.md).
- Firestore REST (servis hesabıyla, kuralları baypas eder) ve Identity Toolkit REST.
- Tüm yanıtlar JSON. Hatalar: `{ "error": "<kod>", "message": "<Türkçe>" , ...}` + uygun HTTP kodu.
- **Taşıma güvenliği**: HTTPS olmayan istek `403 https_required` (yalnız `GET /v1/health` HTTP'de serbest,
  `.htaccess` yalnız GET'i HTTPS'e yönlendirir; POST asla yönlendirilmez). HTTPS yanıtlarında HSTS.
  POST gövdesi `Content-Type: application/json` olmalı (değilse `415 unsupported_media_type`).
  `Origin` başlığı taşıyan istek (tarayıcı) `403 forbidden_origin`. NUL bayt içeren gövde `400 invalid_request`.
- **Öykünücü modu** yalnız şunların HEPSİ doğruysa: `emulator === true`, servis hesabı dosyası yok,
  Firestore/Identity adresleri localhost, istek loopback'ten. Aksi hâlde servis başlamaz.

### Uç noktalar (önek `/v1`)
| Metot | Yol | Kimlik | Gövde | Yanıt |
|---|---|---|---|---|
| GET | `/v1/health` | yok | – | `{ok:true, version}` |
| POST | `/v1/auth/login` | yok | `{login_id, secret}` | `{token}` (Firebase custom token, 1 saat) |
| POST | `/v1/auth/change-secret` | Bearer ID token | `{old_secret, new_secret}` | `{ok:true, relogin:true}` |
| POST | `/v1/admin/accounts` | Bearer (yetkili), oturum ≤ 12 sa | `{user_type, agency_id}` | `{uid, login_id, secret}` |
| POST | `/v1/admin/reset-secret` | Bearer (yetkili), oturum ≤ 12 sa | `{uid}` | `{uid, login_id, secret}` |
| POST | `/v1/admin/migrate` | Bearer (super_admin), oturum ≤ 15 dk | `{dry_run?: bool, limit?: 1-100 (20), after?: uid}` | aşağıda |

- **Bearer**: Firebase ID token; servis Google'ın securetoken sertifikalarıyla doğrular (aud = proje id,
  iss = `https://securetoken.google.com/<proje>`, exp, iat, `sub` biçimi `[A-Za-z0-9_-]{1,128}`). Google'a
  ulaşılamazsa önbellekteki sertifikalar en fazla 24 saat kullanılır. Çağıranın rolü `users/{uid}.user_type`.
- **Oturum yaşı** (`auth_time`): yönetim uçları (`accounts`, `reset-secret`) için en fazla 12 saat
  (`admin_max_auth_age`), `migrate` için 15 dakika (`migrate_max_auth_age`). Eskiyse
  `401 reauth_required` → uygulama "çıkış yapıp yeniden giriş yapın" der.
- **Kök hesap**: config `root_uid` doluysa YALNIZ uid eşleşmesiyle; boşsa yedek olarak e-posta
  `10000000146@umrerehberim.app` + `firebase.sign_in_provider == 'password'` (custom token'la gelen e-posta
  iddiası yetmez). Kökün gizli bilgisini başkası `reset-secret` ile yenileyemez (403).
- **login**: login_id → `login_ids/{login_id}.uid` → `auth_secrets/{uid}`.
  - **TEK hata**: yanlış ID, yanlış gizli bilgi, kilit, `disabled`, users belgesi yok (hazır değil) → hepsi
    `401 invalid_credentials`, mesaj: "Kullanıcı ID veya PIN hatalı ya da çok fazla deneme yapıldı; biraz
    sonra tekrar deneyin." Gerçek neden yalnız sunucu loguna yazılır. Her istekte tam **bir** bcrypt
    çalışır (kayıtsız ID / kilitli hesapta, yapılandırılmış maliyetle üretilip önbelleğe alınmış sahte özete karşı).
  - **Kilit (hesap, ağ)**: (uid, IP/64) çifti başına 15 dakikalık dilimde en fazla 5 doğrulama. Sayaç
    doğrulamadan ÖNCE Firestore commit'iyle atomik artırılır (`updateTransforms.increment`, dönen değere
    bakılır); paralel isteklerde de sınır aşılmaz. Sınıra ulaşınca `locked_until` = şimdi + 15 dk.
    Saldırganın ağı kilitlenir, hesabın sahibi başka ağdan girer. Başarılı girişte sayaç sıfırlanır.
    Yeni PIN/şifre verilince (anahtar `auth_secrets.updated_at`'i içerir) eski kilitler düşer.
    Belgeler: `auth_attempts/{hmac}` (istemci erişimi yok).
  - **Kullanıcı ID sınırı**: `HMAC(pepper, login_id)` anahtarıyla, tüm IP'lerde saatte 50 deneme; kayıtlı
    olmayan ID'ler de sayılır. **Personel** (`kind == 'password'`) bu sınırdan muaftır: personel hesabı
    asla herkese kilitlenmez, yalnız (hesap, ağ) kilidi.
  - **IP sınırı**: IP (IPv6'da /64) başına 10 dk'da 30 deneme → `429 rate_limited` (+`retry_after`).
    **Genel sınır**: tüm sunucuda dakikada 600 giriş denemesi → `429 rate_limited`.
  - İstemci IP'si: `REMOTE_ADDR`. Yalnız `ip_header` yapılandırıldıysa o başlığın en SAĞINDAN
    `trusted_proxies` kadar girdi atlanıp sonraki alınır (en soldaki asla). Plesk'te `null` kalmalı.
- **change-secret**: çağıran başına 15 dk'da 5 deneme (`429 rate_limited`). Eski gizli bilgi yanlışsa
  `403 wrong_old_secret`. Başarıda önce Auth'taki **tüm oturumlar kapatılır** (`accounts:update validSince`
  = şimdi), sonra yeni özet yazılır. Uygulama yeni bilgiyle hemen sessizce yeniden giriş yapar; yapamazsa
  kullanıcıyı çıkışa yönlendirir.
- **Yetki (accounts / reset-secret)** — `Permissions.php`, `firestore.rules` (users create/update) ve
  istemcideki `AuthApiService.canManageType` AYNI tablodur:
  - super_admin / kök: herkes.
  - yonetici: yalnız `misafir` ve `acente_admin` (acentesi dolu).
  - acente_admin: yalnız kendi acentesindeki `misafir`.
  - destek, muhasebe ve diğerleri: hiçbiri.
  - `reset-secret` kendine uygulanamaz (`403`; kendi bilgisi için `change-secret`). Hedef bulunamazsa da
    yetkisizle aynı `403 forbidden` döner.
- **Çağıran başına sınırlar**: `reset-secret` saatte 60, `accounts` günde 200, `migrate` saatte 60.
- **accounts**: önce `audit_logs` kaydı (yazılamazsa işlem YAPILMAZ), sonra Identity Toolkit ile Auth
  kullanıcısı (e-posta/şifre YOK, yalnız uid), login_id + gizli bilgi; `login_ids` + `auth_secrets`
  **yanıttan önce** yazılır. `users/{uid}` belgesini **uygulama** yazar ve `login_id` alanını da koyar
  (kural, `login_ids/{login_id}.uid == uid` olmasını ister).
- **reset-secret**: önce audit. Hedefin `login_id`'si yoksa üretir. Hedefin Auth hesabında e-posta varsa
  şifresi rastgele 40 karakterle değiştirilir (eski "şifre = TC" kapısı kapanır) ve aynı çağrıda
  oturumları kapatılır; bu adım başarısızsa işlemin TAMAMI başarısızdır (gizli bilgi değişmez). Sonra yeni
  özet yazılır ve `users/{uid}.auth_migrated = true`. Çağıranın kendi oturumu etkilenmez.
- **migrate** (bir kez, partiler hâlinde): "taşındı" kararı `users/{uid}.auth_migrated == true` alanına
  bakar (`login_id`'ye DEĞİL). Bekleyen hesaplar uid sırasıyla, istek başına `limit` kadar işlenir:
  1. Auth'ta e-posta varsa şifre 40 rastgele karakter + oturumlar kapanır. Başarısızsa hesap `failed`
     listesine girer, hiçbir şey yazılmaz, "taşındı" işaretlenmez (`warnings`'e de yazılır).
  2. Zaten geçerli `login_id` + `auth_secrets` varsa (servisle açılmış hesap) yeni bilgi VERİLMEZ, yalnız
     `auth_migrated = true` (`closed` listesi).
  3. Değilse login_id + gizli bilgi üretilir, `users/{uid}` `{login_id, auth_migrated: true}`.
  - **Kök hesabın e-posta şifresi migrate'te DEĞİŞTİRİLMEZ** (acil erişim); onun için sunucuda
    `bin/root_password.php` çalıştırılır. Kökün `users` belgesi yoksa `super_admin` olarak oluşturulur.
  - Yanıt: `{dry_run, accounts:[{uid, user_name, user_type, login_id, secret}], closed:[uid], failed:[uid],
    warnings:[...], remaining, next_after, pending_total, done}`. `remaining` = bu geçişte bakılmamış
    hesap sayısı; istemci `after = next_after` ile `remaining == 0` olana dek döngü kurar ve bilgileri biriktirir.
  - `pending_total == 0` olduğunda `system/auth_migration {done: true}` yazılır; sonra (ya da config
    `migrate_enabled = false` ise) uç `410 migration_done` döner. `dry_run` yalnız listeler.
  - Sunucu `set_time_limit(0)` ve `ignore_user_abort(true)` ile çalışır.
- **Denetim**: `accounts`/`reset-secret`/`migrate` işlemden ÖNCE `audit_logs`'a `status:'started'` ile yazılır
  (yazılamazsa işlem durur), sonuç aynı kayda `status:'ok'|'failed'|'partial'` olarak işlenir.
  Şema: `tool/SUPER_ADMIN_SEMA.md`. Kilit olayları (gizli bilgi ve tam IP olmadan) `error_log`'a yazılır.

### Komut satırı (`server/umre-api/bin/`, yalnız CLI)
- `root_password.php --yes`: kök hesabın e-posta şifresini 48 rastgele karakter yapar, BİR KEZ yazdırır
  (çevrimdışı acil erişim), oturumlarını kapatır. Servis hesabı ister.
- `verify_legacy_closed.php`: `user_tc`'si olan her users belgesi için herkese açık
  `accounts:signInWithPassword(<tc>@umrerehberim.app, <tc>)` dener (config `api_key`). TC'yi hâlâ kabul
  eden hesapları uid ile listeler; gizli bilgi yazdırmaz. Çıkış kodu 0 = hepsi kapalı.
- `cleanup.php`: hız sınırı/önbellek bakımı (zamanlanmış görev; istek yolunda temizlik yok). Hız sınırı
  dosyaları 256 alt klasöre dağılır; alt klasör başına en fazla `ratelimit_max_files` (4000) dosya,
  doluysa yeni anahtar reddedilir.

## Firestore
- `login_ids/{login_id}` → `{uid, created_at}` — istemci erişimi YOK (kurallarda deny-all; kural `get()`'i okuyabilir).
- `auth_secrets/{uid}` → `{hash, kind:'pin'|'password', updated_at, updated_by}` — istemci erişimi YOK.
- `auth_attempts/{hmac}` → `{n, uid, expires_at}` / `{locked_until, uid, expires_at}` — istemci erişimi YOK.
  (İsteğe bağlı: Firestore TTL ilkesi `auth_attempts.expires_at`.)
- `system/{doc}` (ör. `system/auth_migration {done, done_at, done_by}`) — istemci erişimi YOK.
- `users/{uid}`:
  - oluştururken `auth_migrated` ve `disabled` istemciden YAZILAMAZ; `login_id` ya yoktur ya da
    `login_ids/{login_id}.uid == uid` olmalı (biçim `^[1-9][0-9]{6}$`).
  - güncellerken `login_id` ve `auth_migrated` HİÇ KİMSE tarafından (kök dahil) değiştirilemez; yalnız servis yazar.
  - misafir, kendi acentesindeki rehberin (acente_admin/yonetici) belgesini yalnız **tek tek** (`get`)
    okuyabilir, **listeleyemez** (Rehber İletişim id'yi `trip_managers`'tan alır).

## Bilinen açık maddeler
- **Misafir rehber belgesinin tamamını okuyabiliyor**: Rehber İletişim ekranı (`rehber_iletisim.dart`)
  rehberin `users` belgesini okuyor; kurallar alan bazlı gizleme yapamadığı için misafir, rehberinin
  `user_tc` ve `login_id` alanlarını da görebilir (yalnız id'sini bildiği rehber; listeleme kapalı).
  Kalıcı çözüm: ad/telefon için ayrı `public_profiles/{uid}` belgesi (personel kaydedilirken yazılır) ve
  Rehber İletişim'in oradan okuması. Kişi oluşturma/düzenleme akışlarının hepsine dokunduğu için
  sunum öncesi yapılmadı. `login_id` tek başına giriş için yetmez (PIN/şifre + kilitler gerekir).
- **İstemcinin audit_logs yazması**: kural, personelin kendi adına (`actor_uid == auth.uid`) serbest
  `action` ile kayıt eklemesine izin veriyor; bir personel sahte "işlem" kaydı ekleyebilir (başkası adına
  değil). Uygulamanın mevcut denetim yazmaları buna dayandığı için şimdilik değiştirilmedi. Servisin
  yazdığı kayıtlar `status` alanı taşır.
- **Zamanlama yan kanalı**: bilinen ID'de Firestore okuma/yazma sayısı bilinmeyen ID'den fazladır;
  ağ gecikmesi bcrypt'ten küçük olsa da tam eşit değildir. IP ve ID sınırları bu denemeyi pahalı kılar.
- **Kök kuralı**: `firestore.rules` `isRoot()` hâlâ e-postaya bakıyor (seed/bootstrap için); kök uid belli
  olunca `request.auth.uid` eşleşmesine çevrilmeli (kurallarda `TODO root uid`).

## Uygulama
- `lib/core/config/auth_api_config.dart`: `const authApiBaseUrl = String.fromEnvironment('AUTH_API', defaultValue: '');`
  - **Boşsa** eski giriş (TC) aynen çalışır; yeni düğmeler "Sunucu henüz bağlı değil" der.
  - Adres `https://` ile başlamıyorsa da **kapalı** sayılır (log'a uyarı yazılır).
- Giriş: Misafir → Kullanıcı ID + PIN (6 rakam). Yönetici → Kullanıcı ID + şifre. Esnaf aynen.
  `signInWithCustomToken(token)` ile Firebase oturumu açılır; sonrası (rol yükleme, AppWrapper) değişmez.
  Giriş hatasında sunucunun tek `invalid_credentials` mesajı gösterilir.
- PIN/şifre değiştirme: başarıdan sonra uygulama yeni bilgiyle sessizce yeniden giriş yapar; olmazsa
  "yeni PIN ile giriş yapın" der ve çıkış yaptırır.
- Taşıma ekranı partileri döngüyle çağırır, tüm bilgileri biriktirip bir kez gösterir; araya hata girse
  bile o ana kadar üretilenler ekranda kalır.

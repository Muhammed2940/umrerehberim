# Umre Rehberim kimlik servisi: Plesk kurulumu (adım adım)

Bu servis, giriş (Kullanıcı ID + PIN/şifre) kontrolünü sunucuda yapar ve uygulamaya
Firebase giriş jetonu verir. Sözleşme: `tool/AUTH_SEMA.md`.

Gerekenler: Plesk'te barındırma hesabı (PHP 8.1 veya üstü), bir alan adı, Firebase konsoluna erişim.
SSH ve Composer GEREKMEZ.

Aşağıda `alanadiniz.com` yerine kendi alan adınızı yazın. Plesk Dosya Yöneticisi'nde en üst klasör
(`/`) aboneliğin kök klasörüdür: sunucuda `/var/www/vhosts/alanadiniz.com`.

---

## 1. Paketi hazırlayın (kendi bilgisayarınızda)

1. PowerShell'i açın, şu klasöre gidin: `C:\dev\umrerehberim\server\umre-api`
2. Çalıştırın: `.\paketle.ps1`
3. `dist\umre-api.zip` oluşur. Betik gizli dosyaları (`config.php`, servis hesabı anahtarı, `.jks`,
   `key.properties` …) pakete **koymaz** ve pakete girecek her dosyada özel anahtar içeriği arar;
   bulursa paketi hazırlamadan durur.

## 2. `api` alt alan adını oluşturun

1. Plesk'te **Web Siteleri ve Alan Adları** > **Alt Alan Adı Ekle**.
2. Alt alan adı: `api` (sonuç: `api.alanadiniz.com`). Belge kökü olarak varsayılanı bırakın, **Tamam**.
3. Alan adınızın DNS kaydında `api` için A kaydı yoksa, alan adını Plesk dışında yönetiyorsanız
   `api` adına sunucunuzun IP adresini gösteren bir A kaydı ekleyin (Plesk DNS kullanıyorsanız kendiliğinden eklenir).

## 3. PHP sürümü

1. `api.alanadiniz.com` satırında **PHP Ayarları**'nı açın.
2. PHP sürümü: **8.1 veya üstü** (8.2/8.3 olabilir). **PHP desteği** ve **FPM veya FastCGI** açık olsun.
3. Aşağıdaki eklentilerin açık olduğunu görün (çoğunlukla zaten açıktır): `openssl`, `curl`, `mbstring`, `json`.
4. **Tamam**/**Uygula**.

## 4. Zip'i yükleyin ve açın

1. `api.alanadiniz.com` için **Dosyalar**'ı (File Manager) açın.
2. Alt alanın klasörüne girin (genellikle `/api.alanadiniz.com`). Varsa içindeki varsayılan `index.html`
   gibi dosyaları silin.
3. **Yükle** ile `umre-api.zip` dosyasını yükleyin, dosyaya sağ tıklayıp **Aç/Extract** deyin.
4. Şu klasörleri görmelisiniz: `public`, `src`, `bin`, `private`. Zip'i silebilirsiniz.

## 5. Belge kökünü `public` yapın (ÇOK ÖNEMLİ)

1. `api.alanadiniz.com` için **Barındırma Ayarları**'nı açın.
2. **Belge kökü** (Document root) alanına, açtığınız klasörün içindeki `public` yolunu yazın.
   Örnek: `/api.alanadiniz.com/public`.
3. **Tamam**.

Yalnız `public` internetten görünür. Servis, gizli klasörü belge kökünün içinde bulursa **çalışmayı reddeder**
(her istek 500 döner, hata günlüğüne "GÜVENLİK: gizli klasör belge kökünün içinde" yazar).

## 6. SSL (Let's Encrypt)

1. `api.alanadiniz.com` için **SSL/TLS Sertifikaları** > **Ücretsiz Let's Encrypt sertifikası**.
2. E-posta adresinizi yazın, "Redirect from http to https" seçeneğini işaretleyin, **Al/Install**.
3. Alt alan adı için bir sertifika alamazsanız: DNS'te `api` kaydının sunucunuza işaret ettiğinden emin olun,
   birkaç dakika sonra tekrar deneyin.

Not: Servis HTTP ile gelen POST isteklerini **reddeder** (`https_required`); yalnız tarayıcıda
`http://.../v1/health` açılırsa HTTPS'e yönlendirir. HTTPS yanıtlarında HSTS başlığı gönderilir.
Uygulama da `AUTH_API` adresi `https://` ile başlamıyorsa yeni girişi kapalı sayar.

## 7. Gizli klasörü alt alan adının DIŞINDA oluşturun (önerilen)

Gizli dosyalar (`config.php`, `service-account.json`) web klasörlerinin hiçbirinin içinde olmasın.

1. Dosya Yöneticisi'nde en üst klasöre (`/`, yani `/var/www/vhosts/alanadiniz.com`) çıkın.
   **`httpdocs` ya da `api.alanadiniz.com` içine DEĞİL.**
2. **Yeni** > **Klasör**: `umre-private`.
3. Klasöre sağ tıklayın > **İzinleri değiştir**: yalnız sahip için okuma/yazma/çalıştırma (**700**),
   grup ve diğerleri için hiçbiri.
4. Servisin bu klasörü bulması için `/api.alanadiniz.com` klasöründe (public'in yanında, İÇİNDE değil)
   `private-path.php` adında bir dosya oluşturun, içeriği tek satır:

   ```php
   <?php return '/var/www/vhosts/alanadiniz.com/umre-private';
   ```

   (Bu dosya gizli değildir, yalnız yolu söyler. Paketle gelmez; her kurulumda elle oluşturulur.)

İsterseniz bu adımı atlayıp paketteki `private` klasörünü kullanabilirsiniz (belge kökü `public` olduğu
sürece dışarıdan erişilemez ve `.htaccess` ile ayrıca kapalıdır), ama önerilen yol yukarıdakidir.
Aşağıda "gizli klasör" dendiğinde seçtiğiniz klasör kastedilir.

## 8. Firebase servis hesabı anahtarı

1. [Firebase konsolu](https://console.firebase.google.com) > proje **umrerehberim-cc99e**.
2. Dişli simgesi > **Proje ayarları** > **Hizmet hesapları** > **Yeni özel anahtar oluştur**. `.json` iner.
3. Dosyanın adını **`service-account.json`** yapın, gizli klasöre yükleyin.
4. Dosyaya sağ tıklayın > **İzinleri değiştir**: yalnız sahip okuma/yazma (**600**).
5. Bilgisayarınızdaki kopyayı güvenli bir yere taşıyın ya da silin.

**Bu dosya projenizin yönetici anahtarıdır.** Kimseyle paylaşmayın, e-postayla/sohbetle göndermeyin,
git'e koymayın, ekran görüntüsünü almayın. Sızdığından şüphelenirseniz Firebase konsolunda aynı sayfadan
o anahtarı silip yenisini oluşturun.

**İsteğe bağlı sertleştirme (önerilir): yalnız gereken yetkilere sahip ayrı servis hesabı.**
Firebase'in varsayılan "firebase-adminsdk" hesabı projede çok geniş yetkilidir. Bunun yerine:
1. [Google Cloud Console](https://console.cloud.google.com) > proje umrerehberim-cc99e > **IAM ve Yönetici** >
   **Hizmet Hesapları** > **Hizmet hesabı oluştur**, ad: `umre-api`.
2. Roller: **Cloud Datastore User** (`roles/datastore.user`) ve **Firebase Authentication Admin**
   (`roles/firebaseauth.admin`). Başka rol vermeyin. (Custom token bu hesabın kendi anahtarıyla
   sunucuda imzalanır; ek rol gerekmez.)
3. Hesabın **Anahtarlar** sekmesi > **Anahtar ekle** > JSON. Bunu `service-account.json` olarak kullanın.

**Kapsamlar**: servis Google'dan yalnız `datastore`, `identitytoolkit`, `firebase.database` ve
`userinfo.email` kapsamlı jeton ister (`cloud-platform` değil; son ikisi Aile Takibi'nin Realtime DB
okuması içindir). `config.php`'de `oauth_scopes`'u kendiniz tanımladıysanız bu ikisini ekleyin. Kurulumdan sonra adım 11'deki "yeni PIN ver" denemesi `upstream_error` verir ve
hata günlüğünde `ACCESS_TOKEN_SCOPE_INSUFFICIENT` / `insufficient authentication scopes` görürseniz,
`config.php`'de `oauth_scopes` satırını açıp `https://www.googleapis.com/auth/firebase` ekleyin; o da
yetmezse son çare olarak `https://www.googleapis.com/auth/cloud-platform` kullanın.

## 9. Biber (pepper) üretin ve `config.php` dosyasını oluşturun

**Biber**, tüm PIN/şifre özetlerine karışan gizli bir değerdir; veritabanı sızsa bile PIN'ler denenemesin
diye yalnız `config.php`'de durur. Kendi bilgisayarınızda PowerShell'de üretin:

```powershell
$b = New-Object byte[] 32; [Security.Cryptography.RandomNumberGenerator]::Create().GetBytes($b); [Convert]::ToBase64String($b)
```

Çıkan 44 karakterlik değeri (ör. `q3V...=`) kopyalayın. **Kâğıda yazıp çevrimdışı saklayın**: biber
kaybolur ya da değişirse herkese yeni PIN/şifre vermeniz gerekir.

1. Paketteki `private/config.example.php` dosyasını gizli klasöre kopyalayıp adını **`config.php`** yapın.
2. Düzenleyin:
   - `pepper`: yukarıda ürettiğiniz değer (**zorunlu**; boş/kısa ise servis başlamaz).
   - `project_id`: `umrerehberim-cc99e`, `root_email`: `10000000146@umrerehberim.app`.
   - `root_uid`: Firebase konsolu > **Authentication** > **Kullanıcılar**'da `10000000146@umrerehberim.app`
     satırındaki **Kullanıcı UID** (önerilir; doluysa kök hesap yalnız bu uid ile tanınır).
   - `api_key`: uygulamadaki `android/app/google-services.json` içinde `api_key` > `current_key`
     (gizli değildir; yalnız adım 14'teki doğrulama betiği kullanır).
   - `ip_header`: **`null` bırakın** (Plesk'te Apache gerçek IP'yi zaten görür; başlığa güvenmek IP
     sınırını işe yaramaz kılar).
   - `emulator`: **`false`** (canlıda asla `true` yapmayın).
3. Kaydedin. Dosya izinleri: **600**.

## 10. Yazma izni ve bakım görevi

Servis, gizli klasörde `cache` ve `ratelimit` klasörlerini kendisi oluşturur (yalnız sahibine açık, 700/600).
`/v1/auth/login` "server_error" verirse gizli klasörde sahip için **Yazma**'nın açık olduğunu kontrol edin.

Temizlik istek sırasında yapılmaz; günlük bir zamanlanmış görev ekleyin:
1. Plesk > **Zamanlanmış Görevler** (Scheduled Tasks) > **Görev Ekle**.
2. Görev türü: **PHP betiği çalıştır**; betik yolu: `/api.alanadiniz.com/bin/cleanup.php`; PHP sürümü 8.1+.
3. Çalışma: **Günlük**, ör. 04:00. Bildirim: "Bildirimde bulunma" ya da yalnız hatalarda. **Tamam**.

## 11. Deneyin

Tarayıcıda: `https://api.alanadiniz.com/v1/health` → `{"ok":true,"version":"1.1.0"}`

Ek kontroller (hepsi "404" ya da JSON hata dönmeli, dosya içeriği ASLA görünmemeli):

- `https://api.alanadiniz.com/private/config.php`
- `https://api.alanadiniz.com/src/Api.php`
- `https://api.alanadiniz.com/private-path.php`

Yanlış bir giriş (PowerShell):

```powershell
Invoke-RestMethod -Method Post -Uri https://api.alanadiniz.com/v1/auth/login `
  -ContentType 'application/json' -Body '{"login_id":"1234567","secret":"000000"}'
```

Beklenen: `invalid_credentials` ("Kullanıcı ID veya PIN hatalı ya da çok fazla deneme yapıldı; …").

Uygulamadan bir yönetici ile bir misafire **Yeni PIN ver** deneyin: çalışıyorsa OAuth kapsamları yeterli
(çalışmazsa adım 8 "Kapsamlar").

## 12. Uygulamaya bağlayın

```
flutter build apk --release --dart-define=AUTH_API=https://api.alanadiniz.com
```

(`AUTH_API` boşsa ya da `https://` ile başlamıyorsa uygulama eski TC girişiyle çalışmaya devam eder.)

## 13. Mevcut kullanıcıları taşıma (bir kez)

Süper admin olarak uygulamada **Kontrol Merkezi > Hesapları yeni girişe taşı**. Güvenlik gereği bu işlem,
**son 15 dakika içinde giriş yapılmış** bir oturum ister; gerekirse çıkış yapıp yeniden girin.

- Önce **Önizle**: hiçbir şey değiştirmez.
- **Taşımayı başlat**: uygulama hesapları 20'şerlik partiler hâlinde işler; Kullanıcı ID'si olmayan herkese
  (esnaf hariç) Kullanıcı ID ve ilk PIN/şifre üretilir, eski "şifre = TC" kapısı kapanır. Üretilen bilgiler
  **yalnız bir kez** görünür; "Tümünü kopyala (CSV)" ile hemen kaydedin. Kaybolursa yönetici "Yeni PIN ver"
  ile yenisini üretir.
- Şifresi değiştirilemeyen hesaplar **taşınmamış** sayılır ve uyarılarda görünür; taşımayı yeniden başlatın.
- Tüm hesaplar taşınınca servis taşıma ucunu kendiliğinden kapatır (`migration_done`).

## 14. Kök hesabın acil durum şifresi ve kapının kapandığının doğrulanması

**Kök hesap** (`10000000146@umrerehberim.app`) taşımada bilerek değiştirilmez. Taşımadan sonra:

1. Plesk > **Zamanlanmış Görevler** > **Görev Ekle** > **PHP betiği çalıştır**:
   betik `/api.alanadiniz.com/bin/root_password.php`, bağımsız değişken `--yes`, çalışma: **İsteğe bağlı**
   (ya da en seyrek seçenek), bildirim: **Bildirimde bulunma**. Kaydedin, **Şimdi çalıştır**.
2. Çıktıda kök hesabın yeni, uzun e-posta şifresi **bir kez** görünür. **Kâğıda yazın ve çevrimdışı
   saklayın** (acil durum erişimi: `tool/seed.js` gibi araçlar bu e-posta/şifreyle girer). Ekran görüntüsü
   almayın, kimseye göndermeyin.
3. Görevi hemen **silin** (çıktısı görev geçmişinde kalmasın).
4. Aynı şekilde `/api.alanadiniz.com/bin/verify_legacy_closed.php` görevini (bağımsız değişkensiz) **Şimdi
   çalıştır**: TC ile hâlâ girilebilen hesap varsa uid'leriyle listeler ("TC ile HÂLÂ GİRİLEBİLEN: 0"
   görmelisiniz). Listelenen hesaplara yönetici panelinden **Yeni PIN/şifre ver** yapın (bu da kapıyı kapatır)
   ve betiği tekrar çalıştırın. Görevi sonra silin.

---

## Sorun giderme

| Belirti | Olası neden / çözüm |
|---|---|
| Sayfa açılmıyor / sertifika hatası | DNS'te `api` kaydı, Let's Encrypt adımı (6). |
| `/v1/health` yerine Plesk/Apache 404 sayfası | Belge kökü `public` değil (5) ya da `.htaccess` yüklenmemiş (gizli dosya; File Manager'da "gizli dosyaları göster"). Yalnız nginx kullanıyorsanız Plesk **Apache & nginx Ayarları**'nda Apache'yi açın. |
| Her istek `server_error` "yapılandırma güvenli değil" | Gizli klasör belge kökünün içinde (5, 7). |
| `server_error` "yapılandırma eksik" | `config.php` yok, `pepper` boş/kısa ya da `service-account.json` yok/bozuk (8, 9). Ayrıntı: Plesk > **Günlükler** > hata günlüğü. `private-path.php` yolunu kontrol edin. |
| `https_required` | Uygulama/istek `http://` ile geliyor. `AUTH_API` adresi `https://` olmalı (6, 12). |
| `upstream_error` | Sunucudan Google'a çıkış engelli, servis hesabı anahtarı geçersiz ya da OAuth kapsamı yetersiz (8 "Kapsamlar"). |
| Aynı otelden çok misafir `rate_limited` alıyor | Hepsi otelin tek IP'sinden geliyor (IP başına 10 dk'da 30 deneme). Gerekirse `config.php`'de `ip_limit`'i artırın (ör. 60). **`ip_header` AYARLAMAYIN.** |
| Yönetici işlemleri `reauth_required` | Oturum 12 saatten eski (taşımada 15 dk). Çıkış yapıp yeniden girin. |
| Yönetici işlemleri `invalid_token` | Telefonun saati çok yanlış olabilir; ya da uygulamadaki Firebase projesi farklı. |

## Aile Takibi (`POST /v1/track`)

Evdeki aile `https://<web>/t/#<token>` sayfasını açar; sayfa token'ı POST gövdesinde bu servise yollar.
Kurulum için tek şey: `config.php`'ye web sayfasının kökenini yazın (tam eşleşir, sonda `/` yok):

```php
'web_origins' => ['https://umrerehberim.app'],
```

Bu, yalnız `/v1/track` için tarayıcı (CORS) isteğine izin verir; diğer uçlar tarayıcıya kapalı kalır.
`web_origins` boşsa web sayfası `forbidden_origin` alır. Servis hesabının Realtime DB okuyabilmesi için
`oauth_scopes` varsayılan kalmalı (yukarıdaki "Kapsamlar"). IP başına dakikada 30 sorgu, bağlantı başına
20 sn önbellek; `private/cache/track_*.json` ve `private/ratelimit` kendiliğinden oluşur (`bin/cleanup.php`
eski hız sınırı dosyalarını siler). Token hiçbir yerde saklanmaz, yalnız sha256 özeti belge adıdır.
Servis hesabı Firestore'a `tracking_links/{hash}/views` yazar (kurallar atlanır).

## Güvenlik özeti

- PIN/şifre yalnız `bcrypt(HMAC(biber, gizli))` özeti olarak saklanır; biber yalnız `config.php`'de.
- Girişte tek hata mesajı: yanlış ID, yanlış PIN, kilit ve devre dışı hesap ayırt edilemez.
- (Hesap, ağ) başına 15 dk'da 5 hatalı deneme (paralel isteklerde de); misafir Kullanıcı ID'si başına tüm
  ağlarda saatte 50 deneme; IP başına 10 dk'da 30, sunucu genelinde dakikada 600 deneme.
- Yönetim işlemleri: son 12 saatte giriş (taşıma 15 dk), çağıran başına sınırlar, işlemden önce denetim kaydı.
- PIN/şifre değişince/yenilenince hesabın tüm açık oturumları kapatılır.
- Gizli klasör belge kökü dışında, 700/600 izinli; servis belge kökü içindeyse çalışmaz.
- `config.php`, `service-account.json` ve `private-path.php` git'e ve pakete girmez.

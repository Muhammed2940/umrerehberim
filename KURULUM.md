# Umre Rehberim – Yeni proje kurulumu (1. aşama)

Paket adı: **com.hekzapot.umrerehberim**

Bu pakette olanlar:
- `lib/` içindeki modeller (Kullanıcı, Acente, Sefer, Otel, Oda, Etkinlik, Döviz, Bildirim, Konum, Ezan vakti, Zikir). Alan adları eski uygulamayla birebir aynı.
- `functions/`: Cloud Functions (Blaze plan gerektirir, **şimdilik kullanılmıyor**)
- `firestore.rules`, `database.rules.json`: güvenlik kuralları
- `assets/`: eski resimler ve fontlar
- `pubspec.yaml`

## Bilgisayarında bir kez yapılacaklar

1. **Flutter projesini oluştur**
   ```
   flutter create --org com.hekzapot --project-name umrerehberim umrerehberim
   ```
   Sonra bu paketteki `lib/`, `assets/`, `functions/`, `pubspec.yaml`, `firestore.rules`, `database.rules.json` dosyalarını oluşan klasörün içine kopyala (üzerine yaz).

2. **Paketleri yükle**
   ```
   flutter pub get
   flutter analyze
   ```
   `flutter analyze` çıktısında hata varsa bana gönder.

3. **Firebase projesi** ([console.firebase.google.com](https://console.firebase.google.com))
   - Proje: `umrerehberim-cc99e`. **Ücretsiz Spark planı** yeterli: Cloud Functions şimdilik kullanılmıyor, servis hesabı anahtarı da gerekmiyor.
   - Firestore Database (nam5 bölgesinde oluşturuldu).
   - Realtime Database (oluşturuldu, URL `https://umrerehberim-cc99e-default-rtdb.firebaseio.com`).
   - Authentication → Sign-in method → **E-posta/Şifre** etkin olmalı.
   - Cloud Messaging ve Crashlytics'i etkinleştir.

4. **Uygulamayı Firebase'e bağla** (yapıldı; yeniden gerekirse)
   ```
   dart pub global activate flutterfire_cli
   npm install -g firebase-tools
   firebase login
   flutterfire configure --project=umrerehberim-cc99e --platforms=android
   ```

5. **Kuralları yükle**
   ```
   firebase deploy --only firestore:rules,firestore:indexes,database --project umrerehberim-cc99e
   ```
   `functions/` klasörü duruyor ama Spark planında deploy edilmiyor.

6. **Google Maps anahtarı**: Google Cloud Console → "Maps SDK for Android" etkinleştir → API anahtarı oluştur. Anahtarı `AndroidManifest.xml`e ben ekleyeceğim, bana iletmen yeterli.

7. **İmzalama anahtarı (çok önemli: YEDEKLE)**
   ```
   keytool -genkey -v -keystore umrerehberim-upload.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
   ```
   `.jks` dosyasını ve şifresini Google Drive + bir USB belleğe kopyala. Kodun tamamını da GitHub'da **özel (private)** bir depoda tut.

## Giriş ve güvenlik (Spark planı, Functions yok)
Eski uygulamada giriş, telefondan doğrudan Firestore sorgulanarak yapılıyordu. Bu yüzden veritabanı herkese açıktı (KVKK riski).
Yeni yapıda:
- Her kullanıcının bir Firebase Auth e-posta/şifre hesabı var: e-posta `<tc>@umrerehberim.app`, şifre TC'nin kendisi. Kullanıcı yine sadece TC girer; uygulama bu eşlemeyi kendisi yapar (`lib/core/utils/auth_utils.dart`).
- `users/{uid}` belgesinin id'si Auth uid'sidir. Girişte seçilen tip (Misafir / Yönetici) belgedeki `user_type` ile uyuşmazsa giriş reddedilir.
- Yönetici yeni kişi eklediğinde hesap ikincil bir FirebaseApp üzerinden açılır (yöneticinin oturumu kapanmaz), sonra `users/{uid}` ve RTDB `roles/{uid}` yazılır. Düzenlemede TC değiştirilemez.
- Kişi silinince Firestore belgesi ve `roles` silinir. Auth hesabı istemciden silinemez, ama belge olmadığı için giriş yapamaz. Aynı TC tekrar eklenirse aynı hesap kullanılır.
- Firestore kuralları rolü isteği yapanın `users/{uid}` belgesinden okur. Misafir sadece kendini ve acentesinin verisini görür. Yönetici kendi acentesini yönetir. Süper admin her şeyi yönetir. Kimse kendi `user_type` / `agency_id` alanını değiştiremez.
- RTDB kuralları Firestore'u okuyamadığı için `roles/{uid} = {role, agencyId}` düğümü tutulur. Konumlar `locations/{agencyId}/{uid}` yoluna yazılır. Acentenin yöneticisi bütün konumları görür. Misafir sadece kendi acentesinin rehberinin konumunu görür.

## İlk süper admin
Kök süper admin TC `10000000146` (e-posta `10000000146@umrerehberim.app`). Firestore ve RTDB kuralları bu e-postayı her zaman süper admin sayar (bootstrap). `tool/seed.js` bu hesabı oluşturur ve onunla giriş yaparak bütün verileri yazar.

## Demo verisi yükleme

```
cd tool
node seed.js
```
- Node 18 veya üstü yeterli. `npm install` ya da servis hesabı anahtarı gerekmez: betik REST API'leri ve proje API anahtarıyla çalışır.
- Demo kullanıcılarının Auth hesaplarını açar (zaten varsa giriş yapıp uid'i alır). Ardından kök süper admin olarak Firestore belgelerini ve RTDB `roles` düğümlerini yazar.
- Giriş TC'lerini ekrana tablo olarak yazar ve `tool/DEMO_HESAPLARI.md` dosyasını günceller.
- Tekrar çalıştırmak veriyi çoğaltmaz: kullanıcı belgelerinin id'si uid, diğer belgeler sabit `demo_` id'li.
- `--reset`: demo belgelerini (`demo_seed == true`) ve `roles` düğümlerini silip yeniden yükler. `--reset-only` sadece siler, `--dry-run` Firebase'e bağlanmadan gösterir.
- Ezan vakitleri dünden itibaren 45 gün yazılır (`--days 60` ile değiştirilebilir). Mekke seferi betiğin çalıştığı günden 10 gün sonra başlar, bu yüzden sunumdan bir gün önce çalıştırmak en iyisi.
- `CONFIGURATION_NOT_FOUND` / `OPERATION_NOT_ALLOWED` hatası alırsan konsolda E-posta/Şifre giriş yöntemi kapalıdır.

## Bildirim testi
Misafir hesabıyla giriş yapan telefon `agency_demo_agency_hekzapot`, `trip_demo_trip_mekke`, `trip_demo_trip_medine` topic'lerine abone olur. Yönetici hesabından duyuru gönderince bildirim bu topic'lere gider. Yönetici yalnızca kendi acentesinin topic'lerine gönderebilir; süper admin hepsine.

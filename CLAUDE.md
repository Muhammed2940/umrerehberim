# Umre Rehberim – yeniden yazım projesi

Kullanıcıyla her zaman **Türkçe** konuş.

## Bağlam
- Kullanıcının Flutter ile yazdığı "Umre Rehberim" uygulamasının kaynak kodu PC sıfırlanınca kayboldu. Play Store kaydı ve eski Firebase projesi (`umrem-demo`) de silindi.
- Elde sadece release APK vardı. Bu APK blutter, jadx ve apktool ile çözümlendi. Çıkan bilgiler `_referans/` klasöründe.
- Uygulama **sıfırdan, yeni paket adıyla** yeniden yazılıyor: `com.hekzapot.umrerehberim` (bilerek değiştirildi, eski ad `com.hactapot.umrem_demo`).
- Yeni Firebase projesi açılacak. Eski veriler yok.
- **TESLİM: Cuma (6 Kasım 2026) sunumu.** Play Store'a o güne yetişmez. Hedef, telefona kurulu çalışan APK ile demo.

## Referanslar (`_referans/`)
- `lib/`: Orijinal 130 Dart dosyasının yolu ve adı, sınıf/fonksiyon adları ve her fonksiyonda kullanılan metinler, widget'lar, Firestore alanları ve çağrılar (yorum olarak). **Yeni kodu yazarken dosya yapısını ve isimleri buna göre koru.**
- `_blutter_asm/`: Ayrıntılı ARM64 çözümlemesi. Mantık belirsizse buraya bak.
- `METINLER_dosya_dosya.txt`: Tüm ekran metinleri.
- `AndroidManifest_orijinal.xml`: İzinler ve servisler.
- Kullanıcı eski ekran görüntülerini verecek. Görsel düzen için asıl kaynak onlar.

## Mimari (orijinaldeki gibi)
- State yönetimi: `provider` (ChangeNotifier). Bazı yerlerde `get` paketi (snackbar/navigasyon).
- Klasörler: `lib/app` (tema, rotalar, wrapper), `lib/common` (servisler, widget'lar), `lib/core` (provider'lar, depolama, tema, utils), `lib/features/<özellik>/{models,providers,screens,widgets}`.
- Kullanıcı tipleri: `misafir`, `yonetici`, `super_admin` (`user_type` alanı).
- Giriş: TC kimlik no (11 hane) + giriş tipi + KVKK onayı. **Yeni (Spark planı, Functions yok):** Firebase Auth e-posta/şifre, e-posta `<tc>@umrerehberim.app`, şifre TC (`core/utils/auth_utils.dart`). `users/{uid}` belge id'si = Auth uid. Custom claim yok; Firestore kuralları rolü `users/{uid}` belgesinden okur. Kök süper admin `10000000146@umrerehberim.app` kurallarda bootstrap. Yönetici kişi eklerken hesabı ikincil FirebaseApp ile açar (`common/services/auth_account_service.dart`).
- Firestore koleksiyonları: `users`, `agencies`, `trips`, `hotels`, `rooms`, `events`, `currencies`, `notifications`, `trip_managers`, `content` (ezan vakitleri vb.).
- Realtime DB (`https://umrerehberim-cc99e-default-rtdb.firebaseio.com`): `locations/{agencyId}/{uid}` → `{latitude, longitude, timestamp, userName, accuracy}`. Yetki için `roles/{uid}` → `{role, agencyId}` (seed ve kişi oluşturan yönetici yazar).
- Bildirimler: FCM topic'leri (acente/sefer bazlı) + `sendPushToTopic` / `sendPushToCondition`.
- Offline önbellek: SharedPreferences anahtarları `cached_user`, `cached_mekke_trip`, `cached_mekke_hotel`, `cached_mekke_oda`, `cached_mekke_prayer`, `cached_medine_*`, `cached_currencies`, `cached_notifications`, `last_data_update`.
- Cloud Functions (`functions/`, bölge `europe-west1`) Spark planında **şimdilik kullanılmıyor**.

## Hazır olanlar
- **Ortam:** `flutter`/`dart` komutlarını `C:\dev\umrerehberim` junction'ından çalıştır (asıl yoldaki `İ` analiz sunucusunu çökertiyor).
- **Firebase:** proje `umrerehberim-cc99e`. `google-services.json`, `firebase_options.dart`, `.firebaserc` hazır. Firestore `nam5` bölgesinde (eur3 değil, değiştirilemez), kurallar ve indeksler yüklü. Ücretsiz **Spark** planında kalınıyor. Firestore ve RTDB kuralları yüklü. E-posta/Şifre girişi açık. Seed çalıştırıldı.
- **Kod (5 Kasım):** P0 ve P1 tamam, `flutter analyze` temiz.
  - Ortak temel ve `AppWrapper`: oturum durumuna göre ekran seçer.
  - Auth ve splash: `SessionLoader`, `LocalCacheService`.
  - Ana sayfa, takvim, profil.
  - Dualar ve Kur'an: içerik `hactapot.xyz` üzerinden indiriliyor.
  - Zikirmatik ve bilgi ekranları.
  - Yönetici ve süper admin panelleri.
  - `tool/seed.js`: REST ile çalışır (Admin SDK ve servis anahtarı yok). Demo hesapları `tool/DEMO_HESAPLARI.md` içinde.
- **Eksik (P2):** arka plan konum servisi, harita ekranları, adımsayar.
- **Topic adları:** `agency_<id>` (herkes), `trip_<seferId>` (misafir). Tek kaynak `NotificationTopicService.topicsFor`.

## Cuma'ya kadar öncelik sırası
1. **P0 (sunumda mutlaka çalışmalı):** main.dart + Firebase init, splash, giriş, ana sayfa (geri sayım, ezan vakitleri, döviz, duyurular), alt menü (`salomon_bottom_bar`), profil, dualar (tavaf/say duaları, zikirmatik, kayıtlı zikirler), bilgi ekranları (ihram yasakları, gezilecek yerler, teknik destek, rehber iletişim).
2. **P1:** Yönetici paneli: kullanıcı oluşturma/listeleme, sefer, otel, oda atama, duyuru gönderme (push), etkinlik takvimi, döviz düzenleme.
3. **P2 (zaman kalırsa, yoksa sunumda ekran olarak göster):** Süper admin/acente yönetimi, analiz grafikleri (`fl_chart`), arka plan konum takibi + harita, adımsayar, Kur'an indirme.
- Demo için örnek veri yükleyen bir `tool/seed.js` (REST, Admin SDK'sız) yaz: 1 acente, 1 süper admin, 1 yönetici, 3 misafir, Mekke ve Medine seferleri, oteller, odalar, döviz, duyuru, ezan vakitleri.

## Paralel çalışma önerisi (ajanlar)
Önce ortak temel tek elden yazılsın: `main.dart`, `app/` (tema, rotalar), `core/providers/app_state_provider.dart`, `common/services/firestore_service.dart`. Sonra paralel ajanlar:
- Ajan A: auth + splash + offline önbellek
- Ajan B: home (ana sayfa ve widget'ları) + takvim + profil
- Ajan C: dualar + zikirmatik + bilgi ekranları
- Ajan D: admin ekranları (P1)
- Ajan E: seed betiği + bildirim servisi + Functions testi
Her ajan sadece kendi `features/<x>` klasörüne yazsın, ortak dosyalara dokunmasın. Ortak dosyada değişiklik gerekirse ana oturuma bildirsin.

## Kurallar
- Her değişiklikten sonra `flutter analyze` temiz olmalı. `_referans/` derlenmez, analysis_options.yaml ile hariç tutuldu; flutter create bu dosyanın üzerine yazarsa exclude satırlarını geri ekle.
- Metinler Türkçe ve orijinaldeki gibi (`METINLER_dosya_dosya.txt`).
- Keystore ve kod git'te özel depoda yedeklensin. `.jks` ve `key.properties` git'e GİRMESİN.

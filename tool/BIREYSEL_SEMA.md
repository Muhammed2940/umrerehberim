# Bireysel kullanıcı — Faz 1 sözleşmesi (uygulama, kurallar ve testler buna uyar)

## Giriş
- Bireysel kullanıcı **Google ile giriş** yapar (Firebase Auth, `GoogleAuthProvider`; paket `google_sign_in`). Sunucu (PHP) GEREKMEZ.
- iOS'ta App Store kuralı gereği ileride **Apple ile giriş** de eklenecek (Faz 1'de yalnız Android; kod `sign_in_with_apple` eklemeye hazır yapılır ama şimdi paket eklenmez).
- Acente hacısı (Kullanıcı ID + PIN), yönetici ve esnaf girişleri DEĞİŞMEZ.

## Hesap açma (ilk Google girişi)
1. Google ile oturum açılır → `users/{uid}` yoksa **Kayıt Tamamla** ekranı: ad soyad (2–60), KVKK aydınlatma onayı (zorunlu), konum için ayrı açık rıza (isteğe bağlı, sonra da verilebilir).
2. İstemci kendi belgesini OLUŞTURUR. Alanlar (hasOnly):
   `user_name` (string 2–60), `user_type: 'misafir'`, `account_kind: 'bireysel'`, `agency_id: ''`,
   `email` (= `request.auth.token.email`), `auth_provider: 'google'`, `kvkk_version` (string ≤20), `kvkk_accepted_at` (= request.time),
   `location_consent` (bool), `created_at`, `updated_at` (= request.time).
   YASAK: `login_id`, `auth_migrated`, `disabled`, `user_tc`, `shop_id`, sefer/otel/oda alanları, başka her şey.
   Koşul: `request.auth.uid == uid`, `request.auth.token.firebase.sign_in_provider == 'google.com'`, `request.auth.token.email_verified == true`.
3. Bireysel kullanıcı kendi belgesinde yalnız şunları güncelleyebilir: `user_name`, `location_consent`, `fcm_token`, `user_location`, `updated_at`, `last_active_at`. `user_type`, `account_kind`, `agency_id` DEĞİŞTİRİLEMEZ (acenteye bağlanma Faz 1'de yok; ileride sunucu yapar).

## Hesap silme (mağaza şartı)
- Profil → "Hesabımı sil": onay + yeniden Google doğrulaması (recent login) → istemci sırasıyla: kendi `users/{uid}` belgesini siler, RTDB `locations/...` kaydı varsa siler, hatim üyeliklerinden ayrılır (sahibi olduğu grupları siler), sonra `FirebaseAuth.currentUser.delete()`.
- Kural: bireysel kullanıcı (`account_kind == 'bireysel'`) kendi users belgesini silebilir. Acente hacısı kendini silemez (acentesi siler).
- Esnaf işlemleri (`shop_transactions`) silinmez (mali kayıt; zaten bireysel Faz 1'de esnaf indirimi kullanamaz).

## Bireysel kullanıcının uygulamadaki durumu
- Rol `misafir`, acentesi yok. AppWrapper onu MainScreen'e yönlendirir.
- **Görür (ücretsiz):** dualar, Kur'an, zikirmatik, ezan vakitleri, kıble, döviz, tüm bilgi ekranları (gezilecek yerler metin + harita, Harem kapıları, ulaşım, mikat, seyahat rehberi, simülasyonlar, ihtiyaç listesi), Toplu Hatim (herkese açık gruplar + kendi kurduğu gruplar), Çok Yakında alanı.
- **Görmez / boş durum gösterir:** sefer geri sayımı, otel/oda, acente duyuruları, etkinlik takvimi, rehber iletişim, telsiz, canlı konum, Harcamalarım/esnaf indirimi. Bu ekranlarda kibar bir kart: "Bu özellik anlaşmalı acentelerle seyahat eden hacılara sunulur" (fiyat/link YOK).
- Arka plan konum servisi bireysel kullanıcı için ÇALIŞMAZ (acentesi yok).
- "Acenteme katıl" düğmesi profilde görünür ama Faz 1'de pasif: "Yakında" rozeti.

## Kural düzeltmesi (zorunlu)
- `myAgency(d)` ve `agency()` ile yapılan tüm "aynı acente" karşılaştırmaları boş acenteyi EŞLEŞTİRMEMELİ: `agency() != ''` koşulu eklenir. Böylece bireyseller birbirinin verisini (ve agency_id'si boş belgeleri) göremez.
- Bildirimler: bireysel kullanıcı `notifications` okuyamaz (Faz 1'de genel duyuru yok).

## Güvenlik sertleştirmesi (inceleme bulguları)
- **Sağlayıcıya göre rol (kurallar):** `isGoogle()` = `request.auth.token.firebase.sign_in_provider == 'google.com'` (güvenli `.get()` ile; custom/password token'ları hata vermez).
  - `isRoot()` yalnız `sign_in_provider == 'password'` + kök e-postası (Google ve custom token kök sayılmaz; umrerehberim.app alan adı/posta kutusu ele geçirilse bile doğrulanmış Google hesabı kök olamaz). `root_uid` TODO'su duruyor.
  - `role()` Google token'ı için users belgesine bakmadan `'misafir'`; `agency()` Google token'ı için `''`. E-postayla hesap bağlama bir Google oturumuna yönetici/süper admin/acente admini/destek/muhasebe/esnaf belgesinin uid'sini verse bile personel yetkisi ve acente verisi açılmaz. Tüm rol fonksiyonları `role()`'den türer.
  - RTDB (`database.rules.json`): kök e-postası yalnız `password` sağlayıcısıyla; `roles/{uid}.role` karşılaştırmaları Google token'ında geçersiz.
- **İstemci ikinci savunma hattı:** Google yolu (giriş, Kayıt Tamamla, açılışta oturum geri yükleme, çevrimdışı önbellek) yalnız `account_kind == 'bireysel'` belgeyle açılır; değilse Firebase + Google çıkışı ve "kullanıcı bulunamadı". Ölçüt ID token'ın `signInProvider`'ı (kurallarla aynı).
- **Kayıtsız Google hesabı:** Kayıt Tamamla'dan vazgeçme ve açılışta belgesi olmayan Google oturumu → `users/{uid}` sunucuda yoksa `currentUser.delete()` denenir (hata yok sayılır), sonra çıkış. Kayıt yazılırken geri/kapat devre dışı.
- **Kayıt yarışı:** `set` belge zaten var diye reddedilirse belge sunucudan okunur ve girişe devam edilir.

## Hesap silme ayrıntıları
- Çevrimdışıyken reddedilir (uygulamanın ortak internet denetimi `SplashProvider.isOnline`).
- Toplu Hatim adımı SIKIDIR: gruplar ve parçalar sunucudan okunur; her grupta önce bu turdaki alınmış parçalar mevcut release işlemiyle (holds −1) bırakılır, sonra sahibiyse grup silinir, değilse ayrılır. Herhangi bir adım başarısızsa `users` belgesi SİLİNMEZ, hata gösterilir, servisler yeniden başlar; kullanıcı tekrar dener.
- `users/{uid}` silindikten sonra `waitForPendingWrites` (zaman aşımı 20 sn) ile sunucu onayı beklenir.
- `currentUser.delete()` başarısızsa bir kez yeniden denenir; yine olmazsa "Verileriniz silindi, hesap kaydı kapatılamadı; tekrar giriş yapıp vazgeçerseniz tamamen silinir" gösterilir ve çıkış yapılır (sonraki Google girişi Kayıt Tamamla'ya düşer, vazgeçince Auth kaydı silinir).
- Çıkış/silmede kullanıcıya özgü yerel anahtarlar da temizlenir (`last_active_ping_<uid>`, `last_seen_hatim_ms`, `hatim_join_notified`, `last_seen_notification_ms`, `notifications_last_read_ms`, `cuzdan_hide_balance`, `location_sharing_enabled`, `last_location_sent_ms`, `show_download_dialog_on_login`). Cihaz tercihleri (dil, Kur'an ayarları/yer imleri, zikirler, ihtiyaç listesi) kalır.
- Android yedekleme kapalı (`allowBackup="false"`, `dataExtractionRules`: bulut yedeği ve cihazdan cihaza aktarımda tüm uygulama verisi hariç).
- **Bilinen sınır:** başkasının grubunda **bitmiş** (`done`) parçalar ve grupların `last_event.name` alanı kullanıcının adını taşımaya devam eder (kurallar bitmiş parçayı değiştirmeye/silmeye izin vermez; mali/ibadet kaydı niteliğinde). Silinen grupların bitmiş parçaları sahipsiz kalır, süper admin temizler. Tam anonimleştirme için ileride sunucu tarafı bir temizlik gerekir.

## KVKK sürümü (ileride)
- `kvkk_version` kayıtta yazılır ve bireysel tarafından değiştirilemez. Aydınlatma metni değişince: uygulamada güncel sürüm sabiti artırılır; girişte belgedeki sürüm eskiyse yeniden onay ekranı gösterilir. Bunun için kurallara bireyselin yalnız `kvkk_version` + `kvkk_accepted_at == request.time` alanlarını güncelleyebildiği bir dal eklenmelidir (şimdilik YOK; Faz 1'de tek sürüm). Onay geçmişi gerekiyorsa `users/{uid}/consents/{version}` alt koleksiyonu düşünülebilir.

## Paketler (demo ödeme, 23 Kasım 2026)
- Paketler: Ücretsiz, Umre (349,99 TL, 30 gün), Aile/Arkadaş (799,99 TL, 6 kişi, 30 gün), Full Umre (1.500 $, 10 gün; uçak, vize, otel, yemek, ulaşım, eSIM). Ekran: `lib/features/paketler/`.
- Hak: `entitlements/{uid}` = `{paket: umre|aile|full, status: active|pending_approval, paid_until, source, updated_at}`. Kurallar esnaf indirimini buna göre açar (`paidBireysel()`: Google + acentesiz + `status == 'active'` + `paid_until > now`).
- Demo: `platform_settings/payments.demo_payments == true` iken bireysel kendi hakkını yazar/siler (source 'demo', en çok 31 gün; Umre/Aile `active`, Full yalnız `pending_approval`). Anahtar: `node tool/demo_odeme.js ac|kapat`. **PayTR bağlanınca kapatılır**; hak yalnız sunucu (PayTR bildirimi doğrulanınca) yazar.
- Full paket: Kontrol Merkezi → Paket Onayları'nda süper admin tarihleri (mekke_start/end, medine_start/end, otel adları) girip onaylar → `status: 'active'`, `paket: 'full'`, `paid_until` = son çıkış + 2 gün. Kullanıcı Full'deyken başka paket alamaz/ücretsize dönemez (iletişim). Demo anahtarı: Kontrol Merkezi → Platform Ayarları (betik de çalışır).
- Ücretsiz: anlaşmalı dükkan listesi (agency_id 'all'). Aktif paket: indirim QR kodu (`shop_tokens.agency_id == ''`), yalnız 'all' dükkanlarda işlem; puan ve Harcamalarım. Boş acente, agency_id'si boş dükkan/kuponla eşleşmez.
- Mekke/Medine tarih ve otel bilgisi yalnız cihazda (`personal_plan_<uid>`), çıkışta silinir. Testler: `tool/rules-test/paket_rules.test.mjs`.

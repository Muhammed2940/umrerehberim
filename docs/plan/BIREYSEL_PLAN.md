# Bireysel kullanıcı ürünü — plan (22 Kasım 2026)

## Ürün
- Ücretsiz: tüm dini içerik (dualar, Kur'an, zikirmatik, ezan, kıble), bilgi ekranları (metin), Harem kapıları, ulaşım, Toplu Hatim, acil durum kartı + temel SOS.
- **Umre Paketi** (30 gün, 349,99 TL / 9,99 €): profesyonel sesli rehber, tam çevrimdışı, kişisel umre planı, Aile Takibi, esnaf indirimleri.
- **Aile/Arkadaş Paketi** (6 kişi, 30 gün, 799,99 TL / 19,99 €): + kendi grup haritası ve internet telsizi.
- Acente hacıları Premium'u ücretsiz alır (acente öder). Paywall'da fiyatsız/linksiz bilgi: "anlaşmalı acentelerde ücretsiz".

## Kayıt ve giriş
- Bireysel: **telefon + SMS kodu** (Netgsm/İleti Merkezi, PHP servisi üzerinden). Acente hacısı: Kullanıcı ID + PIN (mevcut). Giriş ekranında iki sekme.
- Uç noktalar: `otp/start`, `otp/verify` (custom token; ilk girişte users belgesini sunucu yazar: misafir, `account_kind:'bireysel'`, `agency_id:''`), `me/delete`, `me/join-agency`.
- Hesap bağlama: acente sefer için katılım kodu üretir; bireysel kullanıcı "Acenteme katıl" der, aynı uid acenteye bağlanır.
- Kötüye kullanım: App Check, numara başına 60 sn/1 ve günde 5 SMS, IP başına saatte 10, ülke izin listesi (TR+AB), günlük/aylık SMS tavanı.
- Hesap silme uygulama içinden + web sayfası (Google Play şartı). KVKK: konum için ayrı açık rıza, rıza kayıtlarını sunucu yazar, VERBİS + yurt dışı aktarım için hukukçu.

## Veri modeli
- `agency_id:''` + `account_kind:'bireysel'`; sanal ortak acente YOK (bireyseller birbirini görmesin).
- **Kural hatası düzeltilecek:** `myAgency()` boş acenteyi eşleştiriyor → `agency() != ''` koşulu eklenecek.
- Yeni: `personal_plans/{uid}`, `entitlements/{uid}` (yalnız sahibi okur, sunucu yazar), `purchases`, `family_groups`, `family_invites`, `tracking_links`, `phone_index`, `otp_codes`, `consents`.
- Bildirim topic'leri: `bireysel` + `all`. Arka plan konum yolu parametreli hale gelecek (acente / grup / takip).

## Ödeme
- Ürünler: `umre_paketi_30g`, `aile_paketi_30g`. Google: consumable (sunucu doğrulayıp tüketir). Apple: Non-Renewing Subscription.
- `POST /v1/iap/verify` (Google purchases.products, Apple StoreKit 2 JWS doğrulama), süre üst üste eklenir.
- İade: Google için Plesk cron (Voided Purchases), Apple için Server Notifications V2 uç noktası.
- Sesli rehber/çevrimdışı dosyaları sunucunun imzaladığı süreli adreslerle verilir (istemci kapısı tek başına yetmez).

## Aile Takibi
- Evdeki aile uygulama kurmaz: `https://<alan>/t/<token>` web sayfası, 60 sn'de bir PHP'den son konum + günlük özet.
- Yalnız son konum, geçmiş yok; "2 saat gizle", yaklaşık konum, link iptali, kim baktı listesi.

## Fazlar
1. Bireysel kayıt (SMS), ücretsiz içerik, hesap silme, kurallar → ücretsiz yayın.
2. Umre Paketi, paywall, içerik kapıları, Aile Takibi.
3. Aile Paketi, grup haritası, internet telsizi.

İş paketleri: WP0 sözleşme (ana oturum) → WP1 sunucu SMS, WP2 sunucu ödeme, WP3 uygulama giriş, WP4 uygulama premium, WP5 kurallar+testler (paralel) → WP6 Aile Takibi → WP7 grup harita/telsiz.

## Sahibin yapacakları
Play Console (25 $; kişisel hesapta 12 testçiyle 14 gün kapalı test), Apple Developer (99 $/yıl), ödeme/vergi profilleri, %15 komisyon programları, SMS firması + başlık onayı, KVKK/VERBİS, alan adı.

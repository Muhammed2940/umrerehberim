<?php
// Bu dosyayı "config.php" adıyla gizli klasöre kopyalayıp doldurun. config.php git'e GİRMEZ.
// service-account.json dosyasını da aynı klasöre yükleyin. Önerilen gizli klasör, alt alan
// adının klasörü DIŞINDA: /var/www/vhosts/<alanadi>/umre-private (PLESK_KURULUM.md, adım 7).
// Dosya izinleri: config.php ve service-account.json için 600, klasör için 700.
return [
    // Firebase proje kimliği.
    'project_id' => 'umrerehberim-cc99e',

    // ZORUNLU. En az 32 baytlık rastgele "biber" (PLESK_KURULUM.md, adım 8'de nasıl üretileceği var).
    // Tüm PIN/şifre özetleri buna bağlıdır: DEĞİŞTİRİRSENİZ ya da KAYBEDERSENİZ herkese yeni PIN/şifre
    // vermeniz gerekir. Kopyasını çevrimdışı güvenli bir yerde saklayın.
    'pepper' => 'BURAYA-EN-AZ-32-BAYTLIK-RASTGELE-DEGER',

    // Boş bırakırsanız gizli klasördeki service-account.json kullanılır.
    // 'service_account_file' => __DIR__ . '/service-account.json',

    // Kök süper admin e-postası (firestore.rules ile aynı olmalı).
    'root_email' => '10000000146@umrerehberim.app',
    // Kök hesabın Auth uid'si (Firebase konsolu > Authentication > Kullanıcılar). Doluysa kök
    // YALNIZ bu uid ile tanınır; boşsa e-posta + şifreli giriş eşleşmesine geri düşülür.
    'root_uid' => null,

    // bcrypt maliyeti (11 önerilir; paylaşımlı sunucu çok yavaşsa 10).
    'bcrypt_cost' => 11,

    // (Kullanıcı, IP ağı) başına: bu kadar hatalı denemede bu kadar saniye kilit.
    'max_failed' => 5,
    'lock_seconds' => 900,

    // IP (/64) başına: pencere (sn) içinde en fazla bu kadar giriş denemesi.
    'ip_limit' => 30,
    'ip_window' => 600,

    // Ters vekil başlığı: Plesk'te null BIRAKIN (Apache gerçek IP'yi zaten REMOTE_ADDR'a koyar).
    // Yalnız kendi kurduğunuz, başlığı kendisi ekleyen bir vekil varsa doldurun; o zaman listenin
    // en sağından 'trusted_proxies' kadar girdi atlanır. Yanlış ayar IP sınırını işe yaramaz kılar.
    'ip_header' => null,
    'trusted_proxies' => 0,

    // Firebase Web API anahtarı (google-services.json > api_key > current_key). Gizli değildir;
    // yalnız bin/verify_legacy_closed.php kullanır.
    'api_key' => null,

    // OAuth kapsamları. Varsayılan en dar küme: datastore + identitytoolkit. Yönetici işlemleri
    // "ACCESS_TOKEN_SCOPE_INSUFFICIENT" ile 502 verirse önce firebase kapsamını ekleyin:
    // 'oauth_scopes' => [
    //     'https://www.googleapis.com/auth/datastore',
    //     'https://www.googleapis.com/auth/identitytoolkit',
    //     'https://www.googleapis.com/auth/firebase',
    // ],

    // Taşıma uç noktası (bir kez kullanılır). Taşıma bitince kendiliğinden kapanır.
    'migrate_enabled' => true,

    // ---- Öykünücü (yerel test) -------------------------------------------------
    // true iken gerçek OAuth yapılmaz ("Bearer owner") ve imzasız ID jetonları kabul edilir.
    // Yalnız servis hesabı dosyası YOKKEN, adresler localhost iken ve istek 127.0.0.1'den
    // geldiğinde çalışır; aksi hâlde servis başlamaz. CANLIDA ASLA true yapmayın.
    'emulator' => false,
    'firestore_base' => 'https://firestore.googleapis.com/v1',
    'identity_base' => 'https://identitytoolkit.googleapis.com',
    // Öykünücü için örnek:
    // 'emulator' => true,
    // 'firestore_base' => 'http://127.0.0.1:8080/v1',
    // 'identity_base' => 'http://127.0.0.1:9099/identitytoolkit.googleapis.com',
];

<?php
declare(strict_types=1);

namespace UmreApi;

final class Config
{
    /** En dar çalışan OAuth kapsamları (bkz. PLESK_KURULUM.md "Kapsamlar"). */
    public const DEFAULT_SCOPES = [
        'https://www.googleapis.com/auth/datastore',
        'https://www.googleapis.com/auth/identitytoolkit',
        // Aile Takibi: Realtime Database REST okuması (personal_locations, locations).
        'https://www.googleapis.com/auth/firebase.database',
        'https://www.googleapis.com/auth/userinfo.email',
    ];

    /**
     * @param array<string,mixed> $cfg private/config.php içeriği
     * @return array<string,mixed>
     */
    public static function withDefaults(array $cfg): array
    {
        return $cfg + [
            'project_id' => 'umrerehberim-cc99e',
            'service_account_file' => null, // null: <private>/service-account.json
            'root_email' => '10000000146@umrerehberim.app',
            // Doluysa kök hesap YALNIZ bu uid ile tanınır (e-posta eşleşmesi kullanılmaz).
            'root_uid' => null,
            // ZORUNLU: en az 32 baytlık rastgele değer (PLESK_KURULUM.md). Değişirse tüm PIN/şifreler geçersizleşir.
            'pepper' => null,
            'bcrypt_cost' => 11,
            // (Kullanıcı, IP/64) başına: pencere içinde en fazla bu kadar doğrulama, sonra kilit.
            'max_failed' => 5,
            'lock_seconds' => 900,
            // Kullanıcı ID başına (tüm IP'ler; bilinmeyen ID'ler dahil). Personele uygulanmaz.
            'account_limit' => 50,
            'account_window' => 3600,
            // IP (/64) başına giriş denemesi.
            'ip_limit' => 30,
            'ip_window' => 600,
            // Tüm sunucu için giriş denemesi.
            'global_limit' => 600,
            'global_window' => 60,
            // Çağıran (uid) başına yönetim işlemleri.
            'reset_limit' => 60,
            'reset_window' => 3600,
            'create_limit' => 200,
            'create_window' => 86400,
            'change_limit' => 5,
            'change_window' => 900,
            'migrate_limit' => 60,
            'migrate_window' => 3600,
            // Yönetim uçları için en eski kabul edilen oturum açma (auth_time) yaşı (sn).
            'admin_max_auth_age' => 43200,
            'migrate_max_auth_age' => 900,
            'migrate_enabled' => true,
            // Yalnız güvenilen vekil arkasında: istemci IP'sinin bulunduğu başlık ve
            // sağdan atlanacak vekil girdisi sayısı. Plesk'te null bırakın.
            'ip_header' => null,
            'trusted_proxies' => 0,
            // Firebase Web API anahtarı (herkese açık; yalnız bin/verify_legacy_closed.php kullanır).
            'api_key' => null,
            'oauth_scopes' => self::DEFAULT_SCOPES,
            // Aile Takibi (POST /v1/track). Tarayıcıdan çağrıya izin verilen web kökenleri
            // (ör. ['https://umrerehberim.app']); boşsa tarayıcı isteği reddedilir.
            'web_origins' => [],
            // Realtime DB adresi; null: https://<project_id>-default-rtdb.firebaseio.com
            'rtdb_base' => null,
            // IP (/64) başına dakikada en fazla bu kadar sorgu.
            'track_limit' => 30,
            'track_window' => 60,
            // Bağlantı başına yanıt önbelleği (sn) ve aynı ziyaretçinin views güncelleme aralığı (sn).
            'track_cache_ttl' => 20,
            'track_view_interval' => 1800,
            // Hız sınırı klasöründe alt klasör (256 adet) başına en fazla dosya.
            'ratelimit_max_files' => 4000,
            'emulator' => false,
            'firestore_base' => 'https://firestore.googleapis.com/v1',
            'identity_base' => 'https://identitytoolkit.googleapis.com',
            'certs_url' => GoogleCerts::URL,
        ];
    }
}

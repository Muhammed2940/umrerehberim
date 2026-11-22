<?php
declare(strict_types=1);

namespace UmreApi;

/**
 * Eski "şifre = TC" kapısının kapalı olduğunu dışarıdan doğrular: herkese açık Identity
 * Toolkit signInWithPassword uç noktasını (Web API anahtarıyla) e-posta <tc>@umrerehberim.app
 * ve şifre = TC ile dener. Yalnız bin/verify_legacy_closed.php kullanır.
 */
final class LegacyProbe
{
    public const OPEN = 'open';       // TC hâlâ şifre olarak kabul ediliyor (KÖTÜ)
    public const CLOSED = 'closed';   // şifre yanlış / hesap yok / devre dışı
    public const UNKNOWN = 'unknown'; // sınır, ağ hatası vb.

    public function __construct(
        private HttpTransport $http,
        private string $apiKey,
        private string $base = 'https://identitytoolkit.googleapis.com'
    ) {
    }

    public static function emailFor(string $tc): string
    {
        return $tc . '@umrerehberim.app';
    }

    /** @return array{0:string,1:string} [durum, Google hata kodu ya da ''] */
    public function probe(string $email, string $password): array
    {
        $url = rtrim($this->base, '/') . '/v1/accounts:signInWithPassword?key=' . rawurlencode($this->apiKey);
        try {
            $r = $this->http->request('POST', $url, ['Content-Type: application/json'], json_encode([
                'email' => $email,
                'password' => $password,
                'returnSecureToken' => false,
            ]));
        } catch (UpstreamException $e) {
            return [self::UNKNOWN, 'NETWORK'];
        }
        if ($r['status'] === 200) {
            return [self::OPEN, ''];
        }
        $j = json_decode($r['body'], true);
        $code = strtoupper((string)(is_array($j) ? ($j['error']['message'] ?? '') : ''));
        $code = trim(explode(':', $code)[0]);
        $closed = ['INVALID_PASSWORD', 'INVALID_LOGIN_CREDENTIALS', 'EMAIL_NOT_FOUND', 'USER_DISABLED', 'PASSWORD_LOGIN_DISABLED'];
        return [in_array($code, $closed, true) ? self::CLOSED : self::UNKNOWN, $code];
    }
}

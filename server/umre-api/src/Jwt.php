<?php
declare(strict_types=1);

namespace UmreApi;

/** Bağımlılıksız JWT (RS256) imzalama ve doğrulama; openssl kullanır. */
final class Jwt
{
    public static function b64e(string $raw): string
    {
        return rtrim(strtr(base64_encode($raw), '+/', '-_'), '=');
    }

    public static function b64d(string $s): string
    {
        if ($s !== '' && preg_match('/^[A-Za-z0-9_-]+$/', $s) !== 1) {
            throw new JwtException('Geçersiz base64url.');
        }
        $raw = base64_decode(strtr($s, '-_', '+/'), true);
        if ($raw === false) {
            throw new JwtException('Geçersiz base64url.');
        }
        return $raw;
    }

    /**
     * @param array<string,mixed> $claims
     * @param array<string,mixed> $header
     */
    public static function signRs256(array $claims, string $privateKeyPem, array $header = []): string
    {
        $header = array_merge(['alg' => 'RS256', 'typ' => 'JWT'], $header);
        $input = self::b64e(json_encode($header, JSON_UNESCAPED_SLASHES))
            . '.' . self::b64e(json_encode($claims, JSON_UNESCAPED_SLASHES));
        $key = openssl_pkey_get_private($privateKeyPem);
        if ($key === false) {
            throw new JwtException('Özel anahtar okunamadı.');
        }
        $sig = '';
        if (!openssl_sign($input, $sig, $key, OPENSSL_ALGO_SHA256)) {
            throw new JwtException('JWT imzalanamadı.');
        }
        return $input . '.' . self::b64e($sig);
    }

    /**
     * Yalnız Auth öykünücüsü için imzasız (alg=none) jeton.
     * @param array<string,mixed> $claims
     */
    public static function unsigned(array $claims): string
    {
        return self::b64e('{"alg":"none","typ":"JWT"}') . '.' . self::b64e(json_encode($claims, JSON_UNESCAPED_SLASHES)) . '.';
    }

    /**
     * Ayrıştırır (imza doğrulamaz).
     * @return array{header:array<string,mixed>,claims:array<string,mixed>,input:string,sig:string}
     */
    public static function parse(string $jwt): array
    {
        $parts = explode('.', $jwt);
        if (count($parts) !== 3) {
            throw new JwtException('JWT biçimi hatalı.');
        }
        $header = json_decode(self::b64d($parts[0]), true);
        $claims = json_decode(self::b64d($parts[1]), true);
        if (!is_array($header) || !is_array($claims)) {
            throw new JwtException('JWT içeriği çözümlenemedi.');
        }
        return [
            'header' => $header,
            'claims' => $claims,
            'input' => $parts[0] . '.' . $parts[1],
            'sig' => $parts[2] === '' ? '' : self::b64d($parts[2]),
        ];
    }

    /** İmzayı verilen genel anahtar/sertifika (PEM) ile doğrular. */
    public static function verifyRs256(string $input, string $sig, string $publicKeyOrCertPem): bool
    {
        $key = openssl_pkey_get_public($publicKeyOrCertPem);
        if ($key === false || $sig === '') {
            return false;
        }
        return openssl_verify($input, $sig, $key, OPENSSL_ALGO_SHA256) === 1;
    }
}

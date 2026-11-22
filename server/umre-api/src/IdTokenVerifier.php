<?php
declare(strict_types=1);

namespace UmreApi;

/** Firebase ID jetonunu doğrular (imza, aud, iss, exp, iat, sub). */
final class IdTokenVerifier
{
    private const LEEWAY = 300;

    public function __construct(
        private string $projectId,
        private CertSource $certs,
        private Clock $clock,
        private bool $emulator = false
    ) {
    }

    /**
     * @return array<string,mixed> jeton iddiaları (sub = uid)
     * @throws ApiException 401 invalid_token
     */
    public function verify(string $token): array
    {
        try {
            $p = Jwt::parse($token);
        } catch (JwtException $e) {
            throw $this->bad();
        }
        $alg = $p['header']['alg'] ?? '';
        if ($alg === 'none') {
            // İmzasız jeton yalnız Auth öykünücüsünde kabul edilir.
            if (!$this->emulator) {
                throw $this->bad();
            }
        } elseif ($alg === 'RS256') {
            $kid = $p['header']['kid'] ?? null;
            if (!is_string($kid) || $kid === '') {
                throw $this->bad();
            }
            try {
                $keys = $this->certs->keys();
                if (!isset($keys[$kid])) {
                    $keys = $this->certs->keys(true);
                }
            } catch (UpstreamException $e) {
                error_log('Sertifika hatası: ' . $e->getMessage());
                throw new ApiException(503, 'upstream_error', 'Kimlik doğrulama geçici olarak kullanılamıyor.');
            }
            if (!isset($keys[$kid]) || !Jwt::verifyRs256($p['input'], $p['sig'], $keys[$kid])) {
                throw $this->bad();
            }
        } else {
            throw $this->bad();
        }

        $c = $p['claims'];
        $now = $this->clock->now();
        $sub = $c['sub'] ?? null;
        $exp = $c['exp'] ?? null;
        $iat = $c['iat'] ?? null;
        if (
            !is_string($sub) || $sub === '' || strlen($sub) > 128
            || !is_int($exp) || $exp <= $now
            || !is_int($iat) || $iat > $now + self::LEEWAY
            || (isset($c['auth_time']) && (!is_int($c['auth_time']) || $c['auth_time'] > $now + self::LEEWAY))
            || ($c['aud'] ?? null) !== $this->projectId
            || ($c['iss'] ?? null) !== 'https://securetoken.google.com/' . $this->projectId
        ) {
            throw $this->bad();
        }
        return $c;
    }

    private function bad(): ApiException
    {
        return new ApiException(401, 'invalid_token', 'Oturum geçersiz ya da süresi dolmuş. Lütfen yeniden giriş yapın.');
    }
}

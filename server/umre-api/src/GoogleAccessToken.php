<?php
declare(strict_types=1);

namespace UmreApi;

/** Servis hesabı JWT'sinden OAuth2 erişim jetonu üretir; süre dolana dek dosyada saklar. */
final class GoogleAccessToken implements TokenProvider
{
    /** @param array<int,string> $scopes en dar kapsamlar (Config::DEFAULT_SCOPES) */
    public function __construct(
        private ServiceAccount $sa,
        private HttpTransport $http,
        private FileCache $cache,
        private Clock $clock,
        private array $scopes = Config::DEFAULT_SCOPES
    ) {
    }

    private function cacheKey(): string
    {
        // Kapsam değişirse eski (farklı kapsamlı) jeton kullanılmasın.
        return 'access_token_' . substr(hash('sha256', implode(' ', $this->scopes)), 0, 12);
    }

    public function token(): string
    {
        $now = $this->clock->now();
        $c = $this->cache->get($this->cacheKey());
        if ($c !== null && isset($c['token'], $c['expires_at']) && (int)$c['expires_at'] - 60 > $now) {
            return (string)$c['token'];
        }
        $assertion = $this->sa->signJwt([
            'iss' => $this->sa->clientEmail,
            'scope' => implode(' ', $this->scopes),
            'aud' => $this->sa->tokenUri,
            'iat' => $now,
            'exp' => $now + 3600,
        ]);
        $r = $this->http->request('POST', $this->sa->tokenUri, ['Content-Type: application/x-www-form-urlencoded'], http_build_query([
            'grant_type' => 'urn:ietf:params:oauth:grant-type:jwt-bearer',
            'assertion' => $assertion,
        ]));
        $j = json_decode($r['body'], true);
        if ($r['status'] !== 200 || !is_array($j) || empty($j['access_token'])) {
            throw new UpstreamException('OAuth jetonu alınamadı (HTTP ' . $r['status'] . ').');
        }
        $this->cache->put($this->cacheKey(), [
            'token' => $j['access_token'],
            'expires_at' => $now + (int)($j['expires_in'] ?? 3600),
        ]);
        return (string)$j['access_token'];
    }
}

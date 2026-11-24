<?php
declare(strict_types=1);

namespace UmreApi;

/** Realtime Database REST okuyucusu (OAuth jetonu: firebase.database + userinfo.email kapsamları). */
final class RtdbRest implements RealtimeClient
{
    public function __construct(
        private string $base,
        private TokenProvider $tokens,
        private HttpTransport $http
    ) {
    }

    public function get(string $path)
    {
        $segs = explode('/', trim($path, '/'));
        foreach ($segs as $s) {
            // Yol enjeksiyonuna (.., ?, #, .json) karşı: yalnız güvenli parçalar.
            if (preg_match('/^[A-Za-z0-9_-]{1,128}$/D', $s) !== 1) {
                throw new \InvalidArgumentException('Geçersiz Realtime Database yolu.');
            }
        }
        $url = rtrim($this->base, '/') . '/' . implode('/', $segs) . '.json';
        $r = $this->http->request('GET', $url, ['Authorization: Bearer ' . $this->tokens->token(), 'Accept: application/json']);
        if ($r['status'] === 404) {
            return null;
        }
        if ($r['status'] !== 200) {
            throw new UpstreamException('Realtime Database okuma başarısız (HTTP ' . $r['status'] . ').');
        }
        return json_decode($r['body'], true);
    }
}

<?php
declare(strict_types=1);

namespace UmreApi;

/** Google securetoken sertifikalarını çeker ve Cache-Control süresince dosyada saklar. */
final class GoogleCerts implements CertSource
{
    public const URL = 'https://www.googleapis.com/robot/v1/metadata/x509/securetoken@system.gserviceaccount.com';

    /** Bilinmeyen kid yüzünden zorla yenileme en sık bu aralıkla (sn) olabilir. */
    private const MIN_REFRESH_GAP = 300;

    /** Google'a ulaşılamazsa eski anahtarlar en fazla bu kadar (sn, çekildikleri andan) kullanılır. */
    public const MAX_STALE = 86400;

    public function __construct(
        private HttpTransport $http,
        private FileCache $cache,
        private Clock $clock,
        private string $url = self::URL
    ) {
    }

    public function keys(bool $refresh = false): array
    {
        $now = $this->clock->now();
        $c = $this->cache->get('google_certs');
        if ($c !== null && isset($c['keys'], $c['expires_at'], $c['fetched_at']) && is_array($c['keys'])) {
            $fresh = (int)$c['expires_at'] > $now;
            $mayRefresh = $refresh && (int)$c['fetched_at'] + self::MIN_REFRESH_GAP <= $now;
            if ($fresh && !$mayRefresh) {
                return $c['keys'];
            }
            if ((!$fresh || $mayRefresh) && (int)$c['fetched_at'] + self::MAX_STALE > $now) {
                // aşağıda yeniden çekilir; çekilemezse eski anahtarlara dön
                $stale = $c['keys'];
            }
        }
        try {
            $r = $this->http->request('GET', $this->url, ['Accept: application/json']);
            $j = json_decode($r['body'], true);
            if ($r['status'] !== 200 || !is_array($j) || $j === []) {
                throw new UpstreamException('Sertifikalar alınamadı (HTTP ' . $r['status'] . ').');
            }
        } catch (UpstreamException $e) {
            if (isset($stale)) {
                return $stale;
            }
            throw $e;
        }
        $maxAge = 3600;
        if (preg_match('/max-age=(\d+)/i', $r['headers']['cache-control'] ?? '', $m) === 1) {
            $maxAge = max(60, (int)$m[1]);
        }
        $keys = [];
        foreach ($j as $kid => $pem) {
            if (is_string($pem)) {
                $keys[(string)$kid] = $pem;
            }
        }
        $this->cache->put('google_certs', ['keys' => $keys, 'fetched_at' => $now, 'expires_at' => $now + $maxAge]);
        return $keys;
    }
}

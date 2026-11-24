<?php
declare(strict_types=1);

namespace UmreApi;

/**
 * Aile Takibi: POST /v1/track iş mantığı (sözleşme: docs/plan/AILE_TAKIBI_SOZLESME.md).
 * Token'ın sha256'sıyla tracking_links belgesini bulur, hakkı ve süreyi denetler, hacının son
 * konumunu Realtime DB'den okur, ziyareti views'e yazar. Token hiçbir yerde saklanmaz.
 */
final class Tracking
{
    public const REFRESH_SEC = 60;
    private const APPROX_MIN_ACCURACY = 1500;
    private const DEFAULT_ACCURACY = 50;
    private const CITY_RADIUS_M = 20000;
    /** Mescid-i Haram, Mescid-i Nebevi. */
    private const HARAM = [21.4225, 39.8262];
    private const NEBEVI = [24.4672, 39.6111];

    public function __construct(
        private FirestoreClient $db,
        private RealtimeClient $rtdb,
        private FileCache $cache,
        private Clock $clock,
        private string $pepper,
        private int $cacheTtl = 20,
        private int $viewInterval = 1800
    ) {
    }

    public static function validToken(string $token): bool
    {
        return preg_match('/^[A-Za-z0-9_-]{43}$/D', $token) === 1;
    }

    /**
     * @return array<string,mixed> 200 yanıt gövdesi
     * @throws ApiException
     */
    public function lookup(string $token, string $ip, string $userAgent): array
    {
        if (!self::validToken($token)) {
            throw new ApiException(400, 'bad_request', 'Bağlantı geçersiz.');
        }
        $hash = hash('sha256', $token);
        $now = $this->clock->now();

        $c = $this->cache->get('track_' . $hash);
        if ($c !== null && isset($c['at'], $c['body']) && is_int($c['at']) && $now - $c['at'] >= 0 && $now - $c['at'] < $this->cacheTtl && is_array($c['body'])) {
            $this->recordView($hash, $ip, $userAgent, $now);
            return array_merge($c['body'], ['server_time' => $now * 1000]);
        }

        $body = $this->build($hash, $now);
        $this->recordView($hash, $ip, $userAgent, $now);
        try {
            $this->cache->put('track_' . $hash, ['at' => $now, 'body' => $body]);
        } catch (\Throwable $e) {
            error_log('Takip önbelleği yazılamadı: ' . $e->getMessage());
        }
        return $body;
    }

    /** @return array<string,mixed> */
    private function build(string $hash, int $now): array
    {
        $link = $this->db->get('tracking_links/' . $hash);
        if ($link === null) {
            throw new ApiException(404, 'not_found', 'Bu bağlantı bulunamadı.');
        }
        if (($link['revoked'] ?? false) === true) {
            throw new ApiException(410, 'link_revoked', 'Bu bağlantı iptal edildi.');
        }
        $exp = $link['expires_at'] ?? null;
        if (!$exp instanceof Ts || $exp->t <= $now) {
            throw new ApiException(410, 'link_expired', 'Bu bağlantının süresi doldu.');
        }
        $kind = (string)($link['kind'] ?? '');
        $uid = (string)($link['owner_uid'] ?? '');
        $agency = (string)($link['agency_id'] ?? '');
        if (!in_array($kind, ['bireysel', 'acente'], true) || preg_match('/^[A-Za-z0-9_-]{1,128}$/D', $uid) !== 1) {
            throw new ApiException(404, 'not_found', 'Bu bağlantı bulunamadı.');
        }

        $user = $this->db->get('users/' . $uid);
        if ($user === null || self::isTrue($user['disabled'] ?? null)) {
            throw $this->planEnded();
        }
        if ($kind === 'bireysel') {
            $ent = $this->db->get('entitlements/' . $uid);
            $paid = $ent['paid_until'] ?? null;
            if ((string)($user['agency_id'] ?? '') !== ''
                || $ent === null
                || !in_array((string)($ent['paket'] ?? ''), ['aile', 'full'], true)
                || ($ent['status'] ?? '') !== 'active'
                || !$paid instanceof Ts || $paid->t <= $now) {
                throw $this->planEnded();
            }
            $locPath = 'personal_locations/' . $uid;
        } else {
            if ($agency === '' || ($user['user_type'] ?? '') !== 'misafir' || (string)($user['agency_id'] ?? '') !== $agency
                || preg_match('/^[A-Za-z0-9_-]{1,128}$/D', $agency) !== 1) {
                throw $this->planEnded();
            }
            $locPath = 'locations/' . $agency . '/' . $uid;
        }

        $name = trim(explode(' ', trim((string)($user['user_name'] ?? '')))[0] ?? '');
        $approx = ($link['approx'] ?? false) === true;
        $hid = $link['hidden_until'] ?? null;
        $hiddenMs = $hid instanceof Ts && $hid->t > $now ? $hid->t * 1000 : null;

        $out = [
            'status' => 'ok',
            'name' => $name,
            'approx' => $approx,
            'hidden_until' => $hiddenMs,
            'location' => null,
            'place' => null,
            'expires_at' => $exp->t * 1000,
            'server_time' => $now * 1000,
            'refresh_sec' => self::REFRESH_SEC,
        ];
        if ($hiddenMs !== null) {
            $out['status'] = 'hidden';
            return $out;
        }
        $loc = $this->readLocation($locPath);
        if ($loc === null) {
            $out['status'] = 'no_location';
            return $out;
        }
        [$lat, $lng, $acc, $updated] = $loc;
        if ($approx) {
            $lat = round($lat, 2);
            $lng = round($lng, 2);
            $acc = max($acc, self::APPROX_MIN_ACCURACY);
        } else {
            $lat = round($lat, 5);
            $lng = round($lng, 5);
        }
        $out['location'] = ['lat' => $lat, 'lng' => $lng, 'accuracy' => $acc, 'updated_at' => $updated];
        $out['place'] = self::place($lat, $lng, $approx);
        return $out;
    }

    /** @return array{0:float,1:float,2:int,3:int}|null lat, lng, accuracy, updated_at(ms) */
    private function readLocation(string $path): ?array
    {
        $v = $this->rtdb->get($path);
        if (!is_array($v) || !isset($v['latitude'], $v['longitude'], $v['timestamp'])
            || !is_numeric($v['latitude']) || !is_numeric($v['longitude']) || !is_numeric($v['timestamp'])) {
            return null;
        }
        $lat = (float)$v['latitude'];
        $lng = (float)$v['longitude'];
        if ($lat < -90 || $lat > 90 || $lng < -180 || $lng > 180) {
            return null;
        }
        $acc = isset($v['accuracy']) && is_numeric($v['accuracy']) && $v['accuracy'] >= 0
            ? (int)round((float)$v['accuracy']) : self::DEFAULT_ACCURACY;
        return [$lat, $lng, $acc, (int)$v['timestamp']];
    }

    /** @return array{city:string,harem_m:?int} */
    public static function place(float $lat, float $lng, bool $approx): array
    {
        $dh = self::distance($lat, $lng, self::HARAM[0], self::HARAM[1]);
        $dn = self::distance($lat, $lng, self::NEBEVI[0], self::NEBEVI[1]);
        $city = 'diger';
        if ($dh <= self::CITY_RADIUS_M && $dh <= $dn) {
            $city = 'mekke';
        } elseif ($dn <= self::CITY_RADIUS_M) {
            $city = 'medine';
        }
        return ['city' => $city, 'harem_m' => $approx ? null : (int)round(min($dh, $dn))];
    }

    /** Haversine, metre. */
    public static function distance(float $lat1, float $lng1, float $lat2, float $lng2): float
    {
        $r = 6371000.0;
        $p1 = deg2rad($lat1);
        $p2 = deg2rad($lat2);
        $dp = $p2 - $p1;
        $dl = deg2rad($lng2 - $lng1);
        $a = sin($dp / 2) ** 2 + cos($p1) * cos($p2) * sin($dl / 2) ** 2;
        return 2 * $r * asin(min(1.0, sqrt($a)));
    }

    /**
     * Ziyareti yazar (en iyi çaba: hata yanıtı bozmaz). Aynı ziyaretçi için en çok $viewInterval
     * sn'de bir güncellenir. IP ve UA ham saklanmaz; yalnız tuzlu özetin ilk 24 karakteri.
     */
    private function recordView(string $hash, string $ip, string $ua, int $now): void
    {
        try {
            $salt = hash_hmac('sha256', 'track-visitor-v1', $this->pepper);
            $key = substr(hash('sha256', $ip . '|' . $ua . '|' . gmdate('Y-m-d', $now) . '|' . $salt), 0, 24);
            $path = 'tracking_links/' . $hash . '/views/' . $key;
            $cur = $this->db->get($path);
            if ($cur === null) {
                $device = preg_match('/Mobi|Android|iPhone|iPad|iPod/i', $ua) === 1 ? 'mobil' : 'masaustu';
                $this->db->create($path, ['first_at' => new Ts($now), 'last_at' => new Ts($now), 'count' => 1, 'device' => $device]);
                return;
            }
            $last = $cur['last_at'] ?? null;
            if (!$last instanceof Ts || $now - $last->t >= $this->viewInterval) {
                $this->db->increment($path, 'count', 1, ['last_at' => new Ts($now)]);
            }
        } catch (\Throwable $e) {
            error_log('Ziyaret kaydı yazılamadı: ' . $e->getMessage());
        }
    }

    private function planEnded(): ApiException
    {
        return new ApiException(410, 'plan_ended', 'Bu bağlantının sahibi artık konum paylaşamıyor.');
    }

    private static function isTrue(mixed $v): bool
    {
        return $v === true || $v === 1 || (is_string($v) && strtolower(trim($v)) === 'true');
    }
}

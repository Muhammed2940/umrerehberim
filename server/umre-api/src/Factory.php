<?php
declare(strict_types=1);

namespace UmreApi;

/** Yapılandırmadan gerçek (ağa bağlı) Api nesnesini ve CLI betiklerinin parçalarını kurar. */
final class Factory
{
    private const LOOPBACK_HOSTS = ['127.0.0.1', 'localhost', '::1', '[::1]'];

    private static function isLoopbackUrl(string $url): bool
    {
        $h = strtolower((string)parse_url($url, PHP_URL_HOST));
        return in_array($h, self::LOOPBACK_HOSTS, true);
    }

    public static function isLoopbackIp(string $ip): bool
    {
        $k = Request::ipKey($ip);
        return $k === '127.0.0.1' || str_starts_with($k, '127.') || $ip === '::1';
    }

    public static function saFile(array $cfg, string $privateDir): string
    {
        return (string)($cfg['service_account_file'] ?? ($privateDir . '/service-account.json'));
    }

    /**
     * Öykünücü modu YALNIZ hepsi birden doğruysa: emulator === true, servis hesabı dosyası yok,
     * Firestore/Identity adresleri localhost ve istek loopback'ten. Aksi hâlde istisna.
     * @param array<string,mixed> $cfg
     */
    public static function emulatorMode(array $cfg, string $privateDir, string $remoteAddr): bool
    {
        if (($cfg['emulator'] ?? false) === false) {
            return false;
        }
        $ok = $cfg['emulator'] === true
            && !is_file(self::saFile($cfg, $privateDir))
            && self::isLoopbackUrl((string)$cfg['firestore_base'])
            && self::isLoopbackUrl((string)$cfg['identity_base'])
            && self::isLoopbackIp($remoteAddr);
        if (!$ok) {
            throw new \RuntimeException('emulator modu yalnız yerelde (servis hesabı yok, localhost adresleri, loopback istek) açılabilir.');
        }
        return true;
    }

    /**
     * @param array<string,mixed> $cfg Config::withDefaults() çıktısı
     * @return array{clock:Clock,http:CurlHttp,cache:FileCache,emulator:bool,sa:?ServiceAccount,db:FirestoreRest,idp:IdentityToolkit,verifier:IdTokenVerifier,minter:CustomTokenMinter,limiter:RateLimiter,rtdb:RtdbRest}
     */
    public static function parts(array $cfg, string $privateDir, string $remoteAddr): array
    {
        if (!Secrets::validPepper($cfg['pepper'] ?? null)) {
            throw new \RuntimeException('config.php: pepper eksik ya da 32 bayttan kısa.');
        }
        $clock = new Clock();
        $http = new CurlHttp();
        $cache = new FileCache($privateDir . '/cache');
        $emulator = self::emulatorMode($cfg, $privateDir, $remoteAddr);

        $saFile = self::saFile($cfg, $privateDir);
        $sa = null;
        if (!$emulator) {
            if (!is_file($saFile)) {
                throw new \RuntimeException('service-account.json bulunamadı.');
            }
            $sa = ServiceAccount::fromFile($saFile);
        }
        $project = (string)$cfg['project_id'];
        if ($sa !== null && $sa->projectId !== '' && $sa->projectId !== $project) {
            throw new \RuntimeException('Servis hesabı projesi config project_id ile uyuşmuyor.');
        }
        $scopes = array_values(array_filter((array)$cfg['oauth_scopes'], 'is_string'));
        $tokens = $sa === null ? new StaticToken('owner') : new GoogleAccessToken($sa, $http, $cache, $clock, $scopes ?: Config::DEFAULT_SCOPES);
        return [
            'clock' => $clock,
            'http' => $http,
            'cache' => $cache,
            'emulator' => $emulator,
            'sa' => $sa,
            'db' => new FirestoreRest((string)$cfg['firestore_base'], $project, $tokens, $http),
            'idp' => new IdentityToolkit((string)$cfg['identity_base'], $project, $tokens, $http),
            'verifier' => new IdTokenVerifier($project, new GoogleCerts($http, $cache, $clock, (string)$cfg['certs_url']), $clock, $emulator),
            'minter' => new CustomTokenMinter($sa, $clock),
            'limiter' => new RateLimiter($privateDir . '/ratelimit', $clock, (int)$cfg['ratelimit_max_files']),
            'rtdb' => new RtdbRest(
                (string)($cfg['rtdb_base'] ?? ('https://' . $project . '-default-rtdb.firebaseio.com')),
                $tokens,
                $http
            ),
        ];
    }

    /** @param array<string,mixed> $cfg Config::withDefaults() çıktısı */
    public static function build(array $cfg, string $privateDir, string $remoteAddr): Api
    {
        $p = self::parts($cfg, $privateDir, $remoteAddr);
        return new Api($cfg, $p['db'], $p['idp'], $p['verifier'], $p['minter'], $p['limiter'], $p['clock'], null, $p['cache'], $p['rtdb']);
    }

    /**
     * Gizli klasörün yeri: UMRE_PRIVATE_DIR ortam değişkeni > <uygulama>/private-path.php
     * (yalnız bir yol döndürür) > <uygulama>/private.
     */
    public static function privateDir(string $appRoot): string
    {
        $env = getenv('UMRE_PRIVATE_DIR');
        if (is_string($env) && $env !== '') {
            return rtrim($env, '/\\');
        }
        $pointer = $appRoot . '/private-path.php';
        if (is_file($pointer)) {
            $p = require $pointer;
            if (is_string($p) && $p !== '') {
                return rtrim($p, '/\\');
            }
        }
        return $appRoot . '/private';
    }

    /** $child, $parent'ın içinde (ya da aynısı) mı; ikisi de gerçek yola çevrilir. */
    public static function isInside(string $child, string $parent): bool
    {
        $c = realpath($child);
        $p = realpath($parent);
        if ($c === false || $p === false) {
            return false;
        }
        $norm = static fn(string $s): string => rtrim(str_replace('\\', '/', $s), '/') . '/';
        $c = $norm($c);
        $p = $norm($p);
        if (DIRECTORY_SEPARATOR === '\\') {
            $c = strtolower($c);
            $p = strtolower($p);
        }
        return strncmp($c, $p, strlen($p)) === 0;
    }
}

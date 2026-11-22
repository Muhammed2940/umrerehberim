<?php
declare(strict_types=1);

namespace UmreApi;

final class Request
{
    public const MAX_BODY = 16384;

    /**
     * @param array<string,string> $headers küçük harf başlık adları
     * @param bool $secure istek HTTPS ile mi geldi
     */
    public function __construct(
        public readonly string $method,
        public readonly string $path,
        public readonly array $headers,
        public readonly string $body,
        public readonly string $ip,
        public readonly bool $secure = true
    ) {
    }

    public function header(string $name): string
    {
        return $this->headers[strtolower($name)] ?? '';
    }

    public function hasHeader(string $name): bool
    {
        return array_key_exists(strtolower($name), $this->headers);
    }

    /**
     * Hız sınırı/kilit anahtarı için IP: IPv4 olduğu gibi, IPv6 /64 önekine indirgenir
     * (bir abonelik genelde tüm /64'ü alır; tek tek adres değiştirerek sınır aşılmasın).
     * IPv4'e eşlenmiş IPv6 (::ffff:a.b.c.d) IPv4 sayılır.
     */
    public static function ipKey(string $ip): string
    {
        $bin = @inet_pton($ip);
        if ($bin === false) {
            return 'gecersiz';
        }
        if (strlen($bin) === 4) {
            return (string)inet_ntop($bin);
        }
        if (strncmp($bin, str_repeat("\0", 10) . "\xff\xff", 12) === 0) {
            return (string)inet_ntop(substr($bin, 12));
        }
        return inet_ntop(substr($bin, 0, 8) . str_repeat("\0", 8)) . '/64';
    }

    /**
     * İstemci IP'si. ip_header yapılandırılmadıysa yalnız REMOTE_ADDR. Yapılandırıldıysa
     * başlıktaki listenin EN SAĞINDAN trusted_proxies kadar girdi atlanıp sonraki alınır
     * (soldaki girdileri istemci istediği gibi yazabilir; asla en soldaki alınmaz).
     * @param array<string,mixed> $server
     * @param array<string,mixed> $cfg
     */
    public static function clientIp(array $server, array $cfg): string
    {
        $ip = (string)($server['REMOTE_ADDR'] ?? '0.0.0.0');
        $hdr = $cfg['ip_header'] ?? null;
        if (!is_string($hdr) || $hdr === '') {
            return $ip;
        }
        $raw = (string)($server['HTTP_' . strtoupper(str_replace('-', '_', $hdr))] ?? '');
        $list = array_values(array_filter(array_map('trim', explode(',', $raw)), static fn($s) => $s !== ''));
        $idx = count($list) - 1 - max(0, (int)($cfg['trusted_proxies'] ?? 0));
        if ($idx < 0) {
            return $ip;
        }
        $v = $list[$idx];
        return filter_var($v, FILTER_VALIDATE_IP) !== false ? $v : $ip;
    }

    /**
     * @param array<string,mixed> $server
     * @param array<string,mixed> $cfg
     */
    public static function isSecure(array $server, array $cfg): bool
    {
        $https = strtolower((string)($server['HTTPS'] ?? ''));
        if ($https !== '' && $https !== 'off') {
            return true;
        }
        if ((string)($server['SERVER_PORT'] ?? '') === '443') {
            return true;
        }
        // Vekil başlığına yalnız vekil yapılandırıldıysa güvenilir.
        $hdr = $cfg['ip_header'] ?? null;
        if (is_string($hdr) && $hdr !== '') {
            return strtolower(trim(explode(',', (string)($server['HTTP_X_FORWARDED_PROTO'] ?? ''))[0])) === 'https';
        }
        return false;
    }

    /** @param array<string,mixed> $cfg */
    public static function fromGlobals(array $cfg): self
    {
        $headers = [];
        foreach ($_SERVER as $k => $v) {
            if (is_string($v) && strncmp($k, 'HTTP_', 5) === 0) {
                $headers[strtolower(str_replace('_', '-', substr($k, 5)))] = $v;
            }
        }
        if (!isset($headers['authorization']) && isset($_SERVER['REDIRECT_HTTP_AUTHORIZATION'])) {
            $headers['authorization'] = (string)$_SERVER['REDIRECT_HTTP_AUTHORIZATION'];
        }
        if (isset($_SERVER['CONTENT_TYPE'])) {
            $headers['content-type'] = (string)$_SERVER['CONTENT_TYPE'];
        }
        $path = (string)(parse_url((string)($_SERVER['REQUEST_URI'] ?? '/'), PHP_URL_PATH) ?? '/');
        $script = (string)($_SERVER['SCRIPT_NAME'] ?? '');
        if (substr($script, -9) === 'index.php') {
            $base = rtrim(str_replace('\\', '/', dirname($script)), '/');
            if ($base !== '' && strncmp($path, $base . '/', strlen($base) + 1) === 0) {
                $path = substr($path, strlen($base));
            }
        }
        $body = (string)file_get_contents('php://input', false, null, 0, self::MAX_BODY + 1);
        return new self(
            (string)($_SERVER['REQUEST_METHOD'] ?? 'GET'),
            $path,
            $headers,
            $body,
            self::clientIp($_SERVER, $cfg),
            self::isSecure($_SERVER, $cfg)
        );
    }
}

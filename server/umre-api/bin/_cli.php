<?php
declare(strict_types=1);

// bin/ betiklerinin ortak başlangıcı. Yalnız komut satırından (CLI) çalışır; web'den çağrılamaz
// (bin/ belge kökünün dışındadır, bu kontrol ek güvenlik ağıdır).

use UmreApi\Config;
use UmreApi\Factory;

if (PHP_SAPI !== 'cli') {
    http_response_code(404);
    exit;
}

require __DIR__ . '/../src/bootstrap.php';

/**
 * Yapılandırmayı ve servis parçalarını yükler.
 * @return array{cfg:array<string,mixed>,privateDir:string,parts:array<string,mixed>}
 */
function umre_cli_boot(bool $requireServiceAccount): array
{
    $privateDir = Factory::privateDir(dirname(__DIR__));
    $configFile = $privateDir . '/config.php';
    if (!is_file($configFile)) {
        fwrite(STDERR, "config.php bulunamadı: $privateDir\n");
        exit(2);
    }
    $cfg = Config::withDefaults((array)require $configFile);
    try {
        $parts = Factory::parts($cfg, $privateDir, '127.0.0.1');
    } catch (\Throwable $e) {
        fwrite(STDERR, 'Başlatılamadı: ' . $e->getMessage() . "\n");
        exit(2);
    }
    if ($requireServiceAccount && $parts['sa'] === null) {
        fwrite(STDERR, "Bu betik servis hesabı (service-account.json) ister; öykünücü modunda çalışmaz.\n");
        exit(2);
    }
    return ['cfg' => $cfg, 'privateDir' => $privateDir, 'parts' => $parts];
}

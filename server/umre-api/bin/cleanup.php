<?php
declare(strict_types=1);

// Hız sınırı ve önbellek klasörlerinin bakımı (istek yolunda temizlik yapılmaz).
// Plesk: Zamanlanmış Görevler > PHP betiği > bu dosya, her gün (ör. 04:00).
// Kullanım:  php bin/cleanup.php

use UmreApi\Clock;
use UmreApi\Config;
use UmreApi\Factory;
use UmreApi\RateLimiter;

require __DIR__ . '/_cli.php';

$privateDir = Factory::privateDir(dirname(__DIR__));
$configFile = $privateDir . '/config.php';
$cfg = Config::withDefaults(is_file($configFile) ? (array)require $configFile : []);
$now = time();

// En uzun pencere 1 gün (create_window); 2 günden eski dosyalar artık sayılmaz.
$rl = new RateLimiter($privateDir . '/ratelimit', new Clock(), (int)$cfg['ratelimit_max_files']);
$n = is_dir($privateDir . '/ratelimit') ? $rl->cleanup($now - 2 * 86400) : 0;

// Yarım kalmış önbellek geçici dosyaları.
$t = 0;
// Aile Takibi yanıt önbelleği (20 sn ömürlü) dosyaları da 1 günden sonra silinir.
foreach (array_merge(glob($privateDir . '/cache/*.tmp') ?: [], glob($privateDir . '/cache/track_*.json') ?: []) as $f) {
    $m = @filemtime($f);
    if ($m !== false && $m < $now - (str_ends_with($f, '.tmp') ? 3600 : 86400) && @unlink($f)) {
        $t++;
    }
}
echo "Silinen hız sınırı dosyası: $n, geçici/takip önbellek dosyası: $t\n";

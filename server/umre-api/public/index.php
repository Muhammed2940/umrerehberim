<?php
declare(strict_types=1);

// Umre Rehberim kimlik servisi: tek giriş noktası (yönlendirici).
// Sözleşme: tool/AUTH_SEMA.md

use UmreApi\Config;
use UmreApi\Factory;
use UmreApi\Request;
use UmreApi\Response;

require __DIR__ . '/../src/bootstrap.php';

// Hatalar tarayıcıya sızmasın; ayrıntı yalnız sunucu loguna.
ini_set('display_errors', '0');
error_reporting(E_ALL);

$privateDir = Factory::privateDir(dirname(__DIR__));

try {
    // Gizli klasör web'den görünen belge kökünün İÇİNDEYSE hiç çalışma (anahtar sızabilir).
    $docRoot = (string)($_SERVER['DOCUMENT_ROOT'] ?? '');
    if ($docRoot !== '' && Factory::isInside($privateDir, $docRoot)) {
        error_log('GÜVENLİK: gizli klasör belge kökünün içinde (' . $privateDir . '). Belge kökünü public/ yapın ya da gizli klasörü dışarı taşıyın.');
        (new Response(500, ['error' => 'server_error', 'message' => 'Sunucu yapılandırması güvenli değil.']))->send();
        exit;
    }
    $configFile = $privateDir . '/config.php';
    if (!is_file($configFile)) {
        throw new RuntimeException('config.php bulunamadı.');
    }
    $cfg = Config::withDefaults((array)require $configFile);
    $api = Factory::build($cfg, $privateDir, (string)($_SERVER['REMOTE_ADDR'] ?? ''));
    $api->handle(Request::fromGlobals($cfg))->send();
} catch (Throwable $e) {
    error_log('Başlatma hatası: ' . $e->getMessage());
    (new Response(500, ['error' => 'server_error', 'message' => 'Sunucu yapılandırması eksik ya da hatalı.']))->send();
}

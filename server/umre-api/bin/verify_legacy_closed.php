<?php
declare(strict_types=1);

// Eski "şifre = TC" girişinin kapandığını doğrular: user_tc alanı olan HER users belgesi için
// herkese açık Identity Toolkit signInWithPassword(<tc>@umrerehberim.app, <tc>) dener.
// Hâlâ kabul eden hesapları listeler. Hiçbir gizli bilgi (TC, şifre, jeton) yazdırılmaz.
// Esnaf hesapları atlanır (onların şifresi TC değildir).
//
// Kullanım:  php bin/verify_legacy_closed.php
// Çıkış kodu: 0 = hepsi kapalı, 1 = açık hesap var, 3 = bazıları belirlenemedi.
// Gerekenler: config.php'de 'api_key' (Firebase Web API anahtarı) ve servis hesabı.

use UmreApi\LegacyProbe;

require __DIR__ . '/_cli.php';

$b = umre_cli_boot(true);
$cfg = $b['cfg'];
$apiKey = (string)($cfg['api_key'] ?? '');
if ($apiKey === '') {
    fwrite(STDERR, "config.php: 'api_key' boş (google-services.json > api_key > current_key).\n");
    exit(2);
}
/** @var \UmreApi\FirestoreRest $db */
$db = $b['parts']['db'];
$probe = new LegacyProbe($b['parts']['http'], $apiKey, (string)$cfg['identity_base']);

$users = $db->listAll('users', ['user_tc', 'user_type']);
$open = [];
$unknown = [];
$closed = 0;
foreach ($users as $uid => $u) {
    $tc = (string)($u['user_tc'] ?? '');
    if ($tc === '' || ($u['user_type'] ?? '') === 'esnaf' || preg_match('/^\d{11}$/D', $tc) !== 1) {
        continue;
    }
    [$state, $code] = $probe->probe(LegacyProbe::emailFor($tc), $tc);
    if ($state === LegacyProbe::OPEN) {
        $open[] = (string)$uid;
    } elseif ($state === LegacyProbe::UNKNOWN) {
        $unknown[] = $uid . ($code !== '' ? " ($code)" : '');
    } else {
        $closed++;
    }
    usleep(200000); // Google'ın kötüye kullanım sınırına takılmamak için
}

echo "Kapalı: $closed\n";
echo 'TC ile HÂLÂ GİRİLEBİLEN: ' . count($open) . "\n";
foreach ($open as $uid) {
    echo "  AÇIK  uid=$uid\n";
}
if ($unknown !== []) {
    echo 'Belirlenemeyen: ' . count($unknown) . " (biraz sonra tekrar çalıştırın)\n";
    foreach ($unknown as $x) {
        echo "  ?     uid=$x\n";
    }
}
if ($open !== []) {
    echo "\nAçık hesaplar için: yönetici panelinden 'Yeni PIN/şifre ver' (kök için bin/root_password.php).\n";
    exit(1);
}
exit($unknown === [] ? 0 : 3);

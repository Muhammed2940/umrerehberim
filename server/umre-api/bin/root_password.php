<?php
declare(strict_types=1);

// Kök süper admin hesabının (10000000146@umrerehberim.app) Firebase e-posta şifresini uzun,
// rastgele bir değerle değiştirir ve BİR KEZ ekrana yazar. Bu değer acil durum erişimidir:
// kâğıda yazıp çevrimdışı, güvenli bir yerde saklayın. Eski "şifre = TC" kapısı kök için de kapanır.
// Kök hesabın açık oturumları da kapatılır.
//
// Kullanım:  php bin/root_password.php --yes
// (Plesk: Zamanlanmış Görevler > PHP betiği > bu dosya, bağımsız değişken "--yes" > Şimdi çalıştır.)

use UmreApi\Secrets;

require __DIR__ . '/_cli.php';

if (!in_array('--yes', $argv, true)) {
    fwrite(STDERR, "Kök hesabın şifresi değişecek. Onaylamak için --yes ile çalıştırın.\n");
    exit(1);
}

$b = umre_cli_boot(true);
$cfg = $b['cfg'];
/** @var \UmreApi\IdentityToolkit $idp */
$idp = $b['parts']['idp'];
$clock = $b['parts']['clock'];

$email = strtolower((string)$cfg['root_email']);
try {
    $uid = (string)($cfg['root_uid'] ?? '') !== '' ? (string)$cfg['root_uid'] : $idp->lookupByEmail($email);
    if ($uid === null || $uid === '') {
        fwrite(STDERR, "Kök hesap Auth'ta bulunamadı: $email\n");
        exit(1);
    }
    $acct = $idp->getUser($uid);
    if ($acct === null || $acct['email'] === null || strtolower($acct['email']) !== $email) {
        fwrite(STDERR, "Bu uid'nin e-postası kök e-postası değil; işlem yapılmadı.\n");
        exit(1);
    }
    $password = Secrets::scramble(48);
    $idp->updateAccount($uid, $password, $clock->now());
} catch (\Throwable $e) {
    fwrite(STDERR, 'Şifre değiştirilemedi: ' . $e->getMessage() . "\n");
    exit(1);
}

echo "Kök hesabın yeni e-posta şifresi değiştirildi.\n";
echo "  E-posta : $email\n";
echo "  uid     : $uid\n";
echo "  Şifre   : $password\n";
echo "\nBu şifre BİR KEZ gösterilir. Kâğıda yazıp çevrimdışı saklayın; ekran görüntüsü almayın,\n";
echo "kimseye göndermeyin. Bu çıktıyı (ör. Plesk görev günlüğü) sonra silin.\n";
echo "Öneri: config.php'de 'root_uid' => '$uid' yapın.\n";

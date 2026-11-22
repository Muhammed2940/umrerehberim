<?php
declare(strict_types=1);

// Oluşturulan dosya/klasörler (önbellek, hız sınırı) yalnız sahibine açık olsun: 0600/0700.
umask(0077);

// Bağımlılıksız yükleyici: UmreApi\Ad -> src/Ad.php
spl_autoload_register(static function (string $class): void {
    $prefix = 'UmreApi\\';
    if (strncmp($class, $prefix, strlen($prefix)) !== 0) {
        return;
    }
    $file = __DIR__ . '/' . str_replace('\\', '/', substr($class, strlen($prefix))) . '.php';
    if (is_file($file)) {
        require $file;
    }
});

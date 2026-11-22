<?php
declare(strict_types=1);

namespace UmreApi;

/**
 * Dosya tabanlı kayan pencere hız sınırı (private/ratelimit). Anahtar başına bir dosya,
 * flock ile; dosyalar sha256(anahtar) adının ilk iki hanesine göre 256 alt klasöre dağılır.
 * Bir alt klasörde $maxFiles dosya varsa YENİ anahtar reddedilir (disk doldurma saldırısı).
 * Eski dosyaların temizliği istek yolunda değil, bin/cleanup.php ile (zamanlanmış görev).
 */
final class RateLimiter
{
    public function __construct(private string $dir, private Clock $clock, private int $maxFiles = 4000)
    {
    }

    /**
     * Bir deneme kaydeder.
     * @return int 0 = izin verildi; >0 = reddedildi, bu kadar saniye sonra yeniden denenebilir
     */
    public function hit(string $key, int $limit, int $windowSeconds): int
    {
        $h = hash('sha256', $key);
        $shard = $this->dir . DIRECTORY_SEPARATOR . substr($h, 0, 2);
        if (!is_dir($shard) && !@mkdir($shard, 0700, true) && !is_dir($shard)) {
            throw new \RuntimeException('Hız sınırı klasörü oluşturulamadı.');
        }
        $now = $this->clock->now();
        $path = $shard . DIRECTORY_SEPARATOR . $h . '.json';
        if (!is_file($path)) {
            $n = count(glob($shard . DIRECTORY_SEPARATOR . '*.json', GLOB_NOSORT) ?: []);
            if ($n >= $this->maxFiles) {
                error_log('Hız sınırı klasörü dolu: ' . basename($shard));
                return $windowSeconds;
            }
        }
        $fh = fopen($path, 'c+');
        if ($fh === false) {
            throw new \RuntimeException('Hız sınırı dosyası açılamadı.');
        }
        @chmod($path, 0600);
        try {
            flock($fh, LOCK_EX);
            $times = json_decode((string)stream_get_contents($fh), true);
            $times = is_array($times) ? array_values(array_filter($times, static fn($t) => is_int($t) && $t > $now - $windowSeconds)) : [];
            $retry = 0;
            if (count($times) >= $limit) {
                $retry = max(1, min($times) + $windowSeconds - $now);
            } else {
                $times[] = $now;
            }
            ftruncate($fh, 0);
            rewind($fh);
            fwrite($fh, json_encode($times));
            fflush($fh);
            flock($fh, LOCK_UN);
        } finally {
            fclose($fh);
        }
        return $retry;
    }

    /** $olderThan'dan eski (değişmemiş) dosyaları siler; silinen sayısı. bin/cleanup.php kullanır. */
    public function cleanup(int $olderThan): int
    {
        $n = 0;
        foreach (glob($this->dir . DIRECTORY_SEPARATOR . '*', GLOB_ONLYDIR | GLOB_NOSORT) ?: [] as $shard) {
            foreach (glob($shard . DIRECTORY_SEPARATOR . '*.json', GLOB_NOSORT) ?: [] as $f) {
                $m = @filemtime($f);
                if ($m !== false && $m < $olderThan && @unlink($f)) {
                    $n++;
                }
            }
        }
        // Eski sürümün düz (alt klasörsüz) dosyaları.
        foreach (glob($this->dir . DIRECTORY_SEPARATOR . '*.json', GLOB_NOSORT) ?: [] as $f) {
            $m = @filemtime($f);
            if ($m !== false && $m < $olderThan && @unlink($f)) {
                $n++;
            }
        }
        return $n;
    }
}

<?php
declare(strict_types=1);

namespace UmreApi;

/** Küçük JSON dosya önbelleği (private/cache). Yazma atomiktir. */
final class FileCache
{
    public function __construct(private string $dir)
    {
    }

    /** @return array<string,mixed>|null */
    public function get(string $key): ?array
    {
        $raw = @file_get_contents($this->path($key));
        if ($raw === false) {
            return null;
        }
        $j = json_decode($raw, true);
        return is_array($j) ? $j : null;
    }

    /** @param array<string,mixed> $value */
    public function put(string $key, array $value): void
    {
        if (!is_dir($this->dir) && !@mkdir($this->dir, 0700, true) && !is_dir($this->dir)) {
            throw new \RuntimeException('Önbellek klasörü oluşturulamadı.');
        }
        $tmp = $this->path($key) . '.' . bin2hex(random_bytes(4)) . '.tmp';
        if (file_put_contents($tmp, json_encode($value), LOCK_EX) === false) {
            throw new \RuntimeException('Önbellek yazılamadı.');
        }
        @chmod($tmp, 0600);
        if (!@rename($tmp, $this->path($key))) {
            @unlink($tmp);
            throw new \RuntimeException('Önbellek yazılamadı.');
        }
    }

    public function dir(): string
    {
        return $this->dir;
    }

    private function path(string $key): string
    {
        return $this->dir . DIRECTORY_SEPARATOR . preg_replace('/[^a-z0-9_]/i', '_', $key) . '.json';
    }
}

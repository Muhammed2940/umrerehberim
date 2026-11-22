<?php
declare(strict_types=1);

namespace UmreApi;

/** Firestore timestamp değeri (saniye cinsinden unix zamanı). */
final class Ts
{
    public function __construct(public readonly int $t)
    {
    }

    public function toRfc3339(): string
    {
        return gmdate('Y-m-d\TH:i:s\Z', $this->t);
    }

    public static function parse(string $s): self
    {
        // Kesirli saniyeyi at (nanosaniye strtotime'ı şaşırtır).
        $s = preg_replace('/\.\d+/', '', $s) ?? $s;
        $t = strtotime($s);
        return new self($t === false ? 0 : $t);
    }
}

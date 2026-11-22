<?php
declare(strict_types=1);

namespace UmreApi;

/** Zaman kaynağı. Testlerde sabitlenip ilerletilebilsin diye ayrı sınıf. */
class Clock
{
    private ?int $fixed = null;

    public function now(): int
    {
        return $this->fixed ?? time();
    }

    /** Yalnız testler için: null verilirse gerçek zamana döner. */
    public function set(?int $t): void
    {
        $this->fixed = $t;
    }

    public function advance(int $seconds): void
    {
        $this->fixed = $this->now() + $seconds;
    }
}

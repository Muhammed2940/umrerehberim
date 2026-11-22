<?php
declare(strict_types=1);

namespace UmreApi;

/** Firebase öykünücüleri için sabit jeton ("owner"): gerçek OAuth yapılmaz. */
final class StaticToken implements TokenProvider
{
    public function __construct(private string $token = 'owner')
    {
    }

    public function token(): string
    {
        return $this->token;
    }
}

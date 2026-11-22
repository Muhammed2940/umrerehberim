<?php
declare(strict_types=1);

namespace UmreApi;

interface TokenProvider
{
    /** Google API'leri için OAuth2 erişim jetonu. */
    public function token(): string;
}

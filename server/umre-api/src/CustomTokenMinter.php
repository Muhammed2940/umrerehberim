<?php
declare(strict_types=1);

namespace UmreApi;

/** Firebase custom token üretir (signInWithCustomToken için), süre 1 saat. */
final class CustomTokenMinter
{
    public const AUD = 'https://identitytoolkit.googleapis.com/google.identity.identitytoolkit.v1.IdentityToolkit';
    public const TTL = 3600;
    private const EMULATOR_EMAIL = 'firebase-auth-emulator@example.com';

    /** $sa null ise (yalnız öykünücü modu) imzasız jeton üretilir. */
    public function __construct(private ?ServiceAccount $sa, private Clock $clock)
    {
    }

    public function mint(string $uid): string
    {
        if ($uid === '' || strlen($uid) > 128) {
            throw new \InvalidArgumentException('Geçersiz uid.');
        }
        $iat = $this->clock->now();
        $email = $this->sa->clientEmail ?? self::EMULATOR_EMAIL;
        $claims = [
            'iss' => $email,
            'sub' => $email,
            'aud' => self::AUD,
            'iat' => $iat,
            'exp' => $iat + self::TTL,
            'uid' => $uid,
        ];
        return $this->sa !== null ? $this->sa->signJwt($claims) : Jwt::unsigned($claims);
    }
}

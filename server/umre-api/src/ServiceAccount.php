<?php
declare(strict_types=1);

namespace UmreApi;

/** Firebase servis hesabı (private/service-account.json). */
final class ServiceAccount
{
    public function __construct(
        public readonly string $clientEmail,
        private string $privateKey,
        public readonly string $projectId,
        public readonly string $tokenUri = 'https://oauth2.googleapis.com/token'
    ) {
    }

    public static function fromFile(string $path): self
    {
        $raw = @file_get_contents($path);
        if ($raw === false) {
            throw new \RuntimeException('Servis hesabı dosyası okunamadı: ' . basename($path));
        }
        $j = json_decode($raw, true);
        if (!is_array($j) || empty($j['client_email']) || empty($j['private_key'])) {
            throw new \RuntimeException('Servis hesabı dosyası geçersiz (client_email/private_key yok).');
        }
        return new self(
            (string)$j['client_email'],
            (string)$j['private_key'],
            (string)($j['project_id'] ?? ''),
            (string)($j['token_uri'] ?? 'https://oauth2.googleapis.com/token')
        );
    }

    /** @param array<string,mixed> $claims */
    public function signJwt(array $claims): string
    {
        return Jwt::signRs256($claims, $this->privateKey);
    }
}

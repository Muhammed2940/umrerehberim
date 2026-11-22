<?php
declare(strict_types=1);

namespace UmreApi;

/** İstemciye JSON hata olarak dönecek, beklenen hata. */
final class ApiException extends \RuntimeException
{
    /** @param array<string,mixed> $extra Yanıta eklenecek ek alanlar (ör. retry_after) */
    public function __construct(
        public readonly int $status,
        public readonly string $errorCode,
        string $message,
        public readonly array $extra = []
    ) {
        parent::__construct($message);
    }
}

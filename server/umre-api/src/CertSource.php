<?php
declare(strict_types=1);

namespace UmreApi;

/** ID jetonu imzasını doğrulayan genel anahtarlar (kid => PEM). */
interface CertSource
{
    /**
     * @param bool $refresh bilinmeyen kid görüldüğünde (sınırlı sıklıkta) yeniden çek
     * @return array<string,string>
     */
    public function keys(bool $refresh = false): array;
}

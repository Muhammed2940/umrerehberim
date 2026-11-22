<?php
declare(strict_types=1);

namespace UmreApi;

interface HttpTransport
{
    /**
     * @param array<int,string> $headers "Ad: değer" satırları
     * @return array{status:int,headers:array<string,string>,body:string} başlık adları küçük harf
     */
    public function request(string $method, string $url, array $headers = [], ?string $body = null): array;
}

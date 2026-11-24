<?php
declare(strict_types=1);

namespace UmreApi;

/** Realtime Database okuma erişimi (servis hesabı yetkisiyle, güvenlik kurallarını baypas eder). */
interface RealtimeClient
{
    /**
     * Yoldaki değer ya da yoksa null. Yol parçaları yalnız [A-Za-z0-9_-] olmalı.
     * @return mixed
     */
    public function get(string $path);
}

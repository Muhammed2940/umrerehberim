<?php
declare(strict_types=1);

namespace UmreApi;

/** Firebase Auth yönetim işlemleri (Identity Toolkit). */
interface IdentityClient
{
    /** E-postasız, şifresiz yeni Auth kullanıcısı açar; uid (localId) döner. */
    public function createUser(): string;

    /**
     * Auth hesabını günceller. $password verilirse e-posta/şifre şifresi değişir;
     * $validSince verilirse (unix sn) bu andan önce verilmiş oturumlar (yenileme jetonları) geçersizleşir.
     */
    public function updateAccount(string $uid, ?string $password = null, ?int $validSince = null): void;

    /**
     * uid'ye göre hesap ya da yoksa null.
     * @return array{email:?string}|null
     */
    public function getUser(string $uid): ?array;

    /** E-postaya göre uid ya da yoksa null. */
    public function lookupByEmail(string $email): ?string;

    public function deleteUser(string $uid): void;
}

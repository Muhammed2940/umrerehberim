<?php
declare(strict_types=1);

namespace UmreApi;

final class IdentityToolkit implements IdentityClient
{
    public function __construct(
        private string $base,
        private string $project,
        private TokenProvider $tokens,
        private HttpTransport $http
    ) {
    }

    /**
     * @param array<string,mixed> $body
     * @return array<string,mixed>
     */
    private function post(string $suffix, array $body, string $what): array
    {
        $url = rtrim($this->base, '/') . '/v1/projects/' . $this->project . '/' . $suffix;
        $r = $this->http->request('POST', $url, [
            'Authorization: Bearer ' . $this->tokens->token(),
            'Content-Type: application/json',
            'Accept: application/json',
        ], json_encode((object)$body));
        $j = json_decode($r['body'], true);
        $j = is_array($j) ? $j : [];
        if ($r['status'] !== 200) {
            throw new UpstreamException("Identity Toolkit $what başarısız (HTTP {$r['status']}): " . (string)($j['error']['message'] ?? ''));
        }
        return $j;
    }

    public function createUser(): string
    {
        $j = $this->post('accounts', [], 'kullanıcı oluşturma');
        if (empty($j['localId'])) {
            throw new UpstreamException('Identity Toolkit uid döndürmedi.');
        }
        return (string)$j['localId'];
    }

    public function updateAccount(string $uid, ?string $password = null, ?int $validSince = null): void
    {
        $body = ['localId' => $uid];
        if ($password !== null) {
            $body['password'] = $password;
        }
        if ($validSince !== null) {
            $body['validSince'] = (string)$validSince;
        }
        $this->post('accounts:update', $body, 'hesap güncelleme');
    }

    public function getUser(string $uid): ?array
    {
        $j = $this->post('accounts:lookup', ['localId' => [$uid]], 'kullanıcı arama');
        $u = $j['users'][0] ?? null;
        if (!is_array($u)) {
            return null;
        }
        $email = $u['email'] ?? null;
        return ['email' => is_string($email) && $email !== '' ? $email : null];
    }

    public function lookupByEmail(string $email): ?string
    {
        $j = $this->post('accounts:lookup', ['email' => [$email]], 'kullanıcı arama');
        $id = $j['users'][0]['localId'] ?? null;
        return is_string($id) && $id !== '' ? $id : null;
    }

    public function deleteUser(string $uid): void
    {
        $this->post('accounts:delete', ['localId' => $uid], 'kullanıcı silme');
    }
}

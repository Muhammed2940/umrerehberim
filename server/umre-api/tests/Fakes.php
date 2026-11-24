<?php
declare(strict_types=1);

namespace UmreApi\Tests;

use UmreApi\CertSource;
use UmreApi\FirestoreClient;
use UmreApi\HttpTransport;
use UmreApi\IdentityClient;
use UmreApi\Ts;
use UmreApi\UpstreamException;

/** Bellekte çalışan sahte Firestore (aynı arayüz). */
class FakeFirestore implements FirestoreClient
{
    /** @var array<string,array<string,mixed>> */
    public array $docs = [];
    /** @var array<int,string> */
    public array $ops = [];
    private int $auto = 0;

    public function get(string $path): ?array
    {
        return $this->docs[$path] ?? null;
    }

    public function create(string $path, array $data): bool
    {
        if (isset($this->docs[$path])) {
            return false;
        }
        $this->ops[] = "create $path";
        $this->docs[$path] = $data;
        return true;
    }

    public function patch(string $path, array $data): void
    {
        $this->ops[] = "patch $path";
        $this->docs[$path] = array_merge($this->docs[$path] ?? [], $data);
    }

    public function add(string $collection, array $data): string
    {
        $id = 'auto' . (++$this->auto);
        $this->ops[] = "add $collection/$id";
        $this->docs["$collection/$id"] = $data;
        return $id;
    }

    public function delete(string $path): void
    {
        $this->ops[] = "delete $path";
        unset($this->docs[$path]);
    }

    public function increment(string $path, string $field, int $by = 1, array $set = []): int
    {
        $this->ops[] = "increment $path.$field";
        $v = (int)($this->docs[$path][$field] ?? 0) + $by;
        $this->docs[$path] = array_merge($this->docs[$path] ?? [], $set);
        $this->docs[$path][$field] = $v;
        return $v;
    }

    public function listAll(string $collection, array $fields = []): array
    {
        $out = [];
        foreach ($this->docs as $p => $d) {
            if (strncmp($p, $collection . '/', strlen($collection) + 1) === 0 && !str_contains(substr($p, strlen($collection) + 1), '/')) {
                $out[substr($p, strlen($collection) + 1)] = $d;
            }
        }
        return $out;
    }

    /** @return array<int,array<string,mixed>> */
    public function auditLogs(): array
    {
        return array_values(array_filter($this->docs, static fn($k) => str_starts_with((string)$k, 'audit_logs/'), ARRAY_FILTER_USE_KEY));
    }
}

/** Sahte Identity Toolkit. */
final class FakeIdentity implements IdentityClient
{
    /** @var array<string,array{email:?string,password:?string}> */
    public array $users = [];
    /** @var array<int,string> */
    public array $calls = [];
    private int $n = 0;

    public function createUser(): string
    {
        $uid = 'uid' . str_pad((string)(++$this->n), 10, '0', STR_PAD_LEFT);
        $this->users[$uid] = ['email' => null, 'password' => null];
        $this->calls[] = "create $uid";
        return $uid;
    }

    public function addLegacy(string $uid, string $email, string $password): void
    {
        $this->users[$uid] = ['email' => $email, 'password' => $password];
    }

    /** @var array<string,bool> bu uid'lerde güncelleme başarısız olur */
    public array $failUpdate = [];

    public function updateAccount(string $uid, ?string $password = null, ?int $validSince = null): void
    {
        $this->calls[] = 'update ' . $uid . ($password !== null ? ' password' : '') . ($validSince !== null ? ' validSince' : '');
        if (!isset($this->users[$uid]) || isset($this->failUpdate[$uid])) {
            throw new UpstreamException('USER_NOT_FOUND');
        }
        if ($password !== null) {
            $this->users[$uid]['password'] = $password;
        }
        if ($validSince !== null) {
            $this->users[$uid]['valid_since'] = $validSince;
        }
    }

    public function getUser(string $uid): ?array
    {
        $this->calls[] = "get $uid";
        return isset($this->users[$uid]) ? ['email' => $this->users[$uid]['email']] : null;
    }

    /** Yalnız uid'li (e-postasız) Auth hesabı (servisle açılmış gibi). */
    public function addPlain(string $uid): void
    {
        $this->users[$uid] = ['email' => null, 'password' => null];
    }

    public function lookupByEmail(string $email): ?string
    {
        foreach ($this->users as $uid => $u) {
            if ($u['email'] === $email) {
                return (string)$uid;
            }
        }
        return null;
    }

    public function deleteUser(string $uid): void
    {
        $this->calls[] = "delete $uid";
        unset($this->users[$uid]);
    }
}

/** Sabit "Google sertifikası" (test anahtarının genel kısmı). */
final class StaticCerts implements CertSource
{
    public int $refreshCalls = 0;

    /** @param array<string,string> $keys */
    public function __construct(public array $keys)
    {
    }

    public function keys(bool $refresh = false): array
    {
        if ($refresh) {
            $this->refreshCalls++;
        }
        return $this->keys;
    }
}

/** Betik güdümlü sahte HTTP. */
final class FakeTransport implements HttpTransport
{
    /** @var array<int,array{method:string,url:string,headers:array<int,string>,body:?string}> */
    public array $requests = [];
    /** @var callable */
    public $handler;

    public function __construct(callable $handler)
    {
        $this->handler = $handler;
    }

    public function request(string $method, string $url, array $headers = [], ?string $body = null): array
    {
        $this->requests[] = compact('method', 'url', 'headers', 'body');
        return ($this->handler)($method, $url, $headers, $body, count($this->requests));
    }
}

/** Bellekte çalışan sahte Realtime Database (yol => değer). */
final class FakeRealtime implements \UmreApi\RealtimeClient
{
    /** @var array<string,mixed> */
    public array $data = [];
    /** @var array<int,string> */
    public array $reads = [];
    public bool $fail = false;

    public function get(string $path)
    {
        $this->reads[] = $path;
        if ($this->fail) {
            throw new UpstreamException('RTDB kapalı');
        }
        return $this->data[$path] ?? null;
    }
}

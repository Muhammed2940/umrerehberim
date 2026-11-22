<?php
declare(strict_types=1);

namespace UmreApi;

final class FirestoreRest implements FirestoreClient
{
    public function __construct(
        private string $base,
        private string $project,
        private TokenProvider $tokens,
        private HttpTransport $http
    ) {
    }

    private function root(): string
    {
        return 'projects/' . $this->project . '/databases/(default)/documents';
    }

    private function name(string $path): string
    {
        return $this->root() . '/' . $path;
    }

    private function url(string $path): string
    {
        $segs = array_map('rawurlencode', explode('/', $path));
        return rtrim($this->base, '/') . '/' . $this->root() . '/' . implode('/', $segs);
    }

    private function commitUrl(): string
    {
        return rtrim($this->base, '/') . '/' . $this->root() . ':commit';
    }

    /**
     * @param array<string,mixed>|null $body
     * @return array{0:int,1:array<string,mixed>}
     */
    private function call(string $method, string $url, ?array $body = null): array
    {
        $headers = ['Authorization: Bearer ' . $this->tokens->token(), 'Accept: application/json'];
        $payload = null;
        if ($body !== null) {
            $headers[] = 'Content-Type: application/json';
            $payload = json_encode($body, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
        }
        $r = $this->http->request($method, $url, $headers, $payload);
        $j = json_decode($r['body'], true);
        return [$r['status'], is_array($j) ? $j : []];
    }

    /** @param array<string,mixed> $j */
    private function fail(int $status, array $j, string $what): never
    {
        $msg = (string)($j['error']['message'] ?? '');
        throw new UpstreamException("Firestore $what başarısız (HTTP $status): $msg");
    }

    /**
     * @param array<int,array<string,mixed>> $writes
     * @return array<string,mixed>
     */
    private function commit(array $writes, string $what): array
    {
        [$st, $j] = $this->call('POST', $this->commitUrl(), ['writes' => $writes]);
        if ($st !== 200) {
            $this->fail($st, $j, $what);
        }
        return $j;
    }

    public function get(string $path): ?array
    {
        [$st, $j] = $this->call('GET', $this->url($path));
        if ($st === 404) {
            return null;
        }
        if ($st !== 200) {
            $this->fail($st, $j, 'okuma');
        }
        return FirestoreValue::decodeFields($j['fields'] ?? []);
    }

    public function create(string $path, array $data): bool
    {
        [$st, $j] = $this->call('POST', $this->commitUrl(), ['writes' => [[
            'update' => ['name' => $this->name($path), 'fields' => FirestoreValue::encodeFields($data)],
            'currentDocument' => ['exists' => false],
        ]]]);
        if ($st === 200) {
            return true;
        }
        $status = (string)($j['error']['status'] ?? '');
        if ($st === 409 || $status === 'ALREADY_EXISTS' || $status === 'FAILED_PRECONDITION') {
            return false;
        }
        $this->fail($st, $j, 'oluşturma');
    }

    public function patch(string $path, array $data): void
    {
        if ($data === []) {
            return;
        }
        $this->commit([[
            'update' => ['name' => $this->name($path), 'fields' => FirestoreValue::encodeFields($data)],
            'updateMask' => ['fieldPaths' => array_map('strval', array_keys($data))],
        ]], 'yazma');
    }

    public function add(string $collection, array $data): string
    {
        [$st, $j] = $this->call('POST', $this->url($collection), ['fields' => FirestoreValue::encodeFields($data)]);
        if ($st !== 200) {
            $this->fail($st, $j, 'ekleme');
        }
        return basename((string)($j['name'] ?? ''));
    }

    public function delete(string $path): void
    {
        $this->commit([['delete' => $this->name($path)]], 'silme');
    }

    public function increment(string $path, string $field, int $by = 1, array $set = []): int
    {
        // update + updateTransforms: ön koşulsuz yazma, belge yoksa oluşturur; dönüşüm
        // sonucu (artırılmış değer) aynı yanıtta gelir. Paralel isteklerde her biri farklı değer görür.
        $j = $this->commit([[
            'update' => ['name' => $this->name($path), 'fields' => FirestoreValue::encodeFields($set)],
            'updateMask' => ['fieldPaths' => array_map('strval', array_keys($set))],
            'updateTransforms' => [['fieldPath' => $field, 'increment' => ['integerValue' => (string)$by]]],
        ]], 'artırma');
        return (int)($j['writeResults'][0]['transformResults'][0]['integerValue'] ?? 0);
    }

    public function listAll(string $collection, array $fields = []): array
    {
        $out = [];
        $token = '';
        do {
            $q = 'pageSize=300';
            foreach ($fields as $f) {
                $q .= '&mask.fieldPaths=' . rawurlencode($f);
            }
            if ($token !== '') {
                $q .= '&pageToken=' . rawurlencode($token);
            }
            [$st, $j] = $this->call('GET', $this->url($collection) . '?' . $q);
            if ($st !== 200) {
                $this->fail($st, $j, 'listeleme');
            }
            foreach ($j['documents'] ?? [] as $d) {
                $out[basename((string)$d['name'])] = FirestoreValue::decodeFields($d['fields'] ?? []);
            }
            $token = (string)($j['nextPageToken'] ?? '');
        } while ($token !== '');
        return $out;
    }
}

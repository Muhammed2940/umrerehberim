<?php
declare(strict_types=1);

namespace UmreApi;

/** Firestore erişimi (servis hesabı yetkisiyle, güvenlik kurallarını baypas eder). */
interface FirestoreClient
{
    /**
     * Belge alanları ya da yoksa null.
     * @return array<string,mixed>|null
     */
    public function get(string $path): ?array;

    /**
     * Yalnız belge YOKSA oluşturur (currentDocument.exists=false). Varsa false döner.
     * @param array<string,mixed> $data
     */
    public function create(string $path, array $data): bool;

    /**
     * Verilen üst düzey alanları yazar (updateMask); diğer alanlara dokunmaz; belge yoksa oluşturur.
     * @param array<string,mixed> $data
     */
    public function patch(string $path, array $data): void;

    /**
     * Otomatik id ile ekler, id döner.
     * @param array<string,mixed> $data
     */
    public function add(string $collection, array $data): string;

    public function delete(string $path): void;

    /**
     * Sayısal alanı tek commit'te atomik artırır (updateTransforms.increment) ve artırılmış
     * yeni değeri döner. Belge yoksa oluşturulur; $set alanları da aynı yazmada konur.
     * @param array<string,mixed> $set
     */
    public function increment(string $path, string $field, int $by = 1, array $set = []): int;

    /**
     * Koleksiyondaki tüm belgeler.
     * @param array<int,string> $fields boşsa hepsi
     * @return array<string,array<string,mixed>> id => alanlar
     */
    public function listAll(string $collection, array $fields = []): array;
}

<?php
declare(strict_types=1);

namespace UmreApi;

/** PHP değerleri <-> Firestore REST "Value" dönüşümü. */
final class FirestoreValue
{
    /**
     * @param mixed $v
     * @return array<string,mixed>
     */
    public static function encode($v): array
    {
        if ($v === null) {
            return ['nullValue' => null];
        }
        if (is_bool($v)) {
            return ['booleanValue' => $v];
        }
        if (is_int($v)) {
            return ['integerValue' => (string)$v];
        }
        if (is_float($v)) {
            return ['doubleValue' => $v];
        }
        if (is_string($v)) {
            return ['stringValue' => $v];
        }
        if ($v instanceof Ts) {
            return ['timestampValue' => $v->toRfc3339()];
        }
        if (is_array($v)) {
            if ($v !== [] && array_is_list($v)) {
                return ['arrayValue' => ['values' => array_map([self::class, 'encode'], $v)]];
            }
            return ['mapValue' => ['fields' => self::encodeFields($v)]];
        }
        throw new \InvalidArgumentException('Desteklenmeyen Firestore değeri.');
    }

    /**
     * @param array<string,mixed> $data
     * @return array<string,mixed>|\stdClass
     */
    public static function encodeFields(array $data)
    {
        $out = [];
        foreach ($data as $k => $v) {
            $out[(string)$k] = self::encode($v);
        }
        return $out === [] ? new \stdClass() : $out;
    }

    /**
     * @param array<string,mixed> $v
     * @return mixed
     */
    public static function decode(array $v)
    {
        if (array_key_exists('nullValue', $v)) {
            return null;
        }
        if (isset($v['booleanValue'])) {
            return (bool)$v['booleanValue'];
        }
        if (isset($v['integerValue'])) {
            return (int)$v['integerValue'];
        }
        if (isset($v['doubleValue'])) {
            return (float)$v['doubleValue'];
        }
        if (isset($v['stringValue'])) {
            return (string)$v['stringValue'];
        }
        if (isset($v['timestampValue'])) {
            return Ts::parse((string)$v['timestampValue']);
        }
        if (isset($v['mapValue'])) {
            return self::decodeFields($v['mapValue']['fields'] ?? []);
        }
        if (isset($v['arrayValue'])) {
            return array_map([self::class, 'decode'], $v['arrayValue']['values'] ?? []);
        }
        return null;
    }

    /**
     * @param array<string,mixed> $fields
     * @return array<string,mixed>
     */
    public static function decodeFields(array $fields): array
    {
        $out = [];
        foreach ($fields as $k => $v) {
            $out[$k] = is_array($v) ? self::decode($v) : null;
        }
        return $out;
    }
}

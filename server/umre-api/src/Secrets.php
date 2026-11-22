<?php
declare(strict_types=1);

namespace UmreApi;

/**
 * Güvenli rastgele üretim (random_int), biberli bcrypt ve sabit zamanlı karşılaştırma.
 * Özet: bcrypt(base64(HMAC-SHA256(pepper, gizli))). Biber yalnız config.php'dedir;
 * veritabanı tek başına sızsa bile özetler çevrimdışı denenemez.
 */
final class Secrets
{
    // Karışan karakterler (0/O, 1/l/I) yok.
    public const PW_LETTERS = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ';
    public const PW_DIGITS = '23456789';
    private const SCRAMBLE = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*-_=+';
    public const MIN_PEPPER = 32;

    /** @var array<int,string> maliyet => sahte özet (süreç içi önbellek) */
    private static array $dummy = [];

    /** Sık kullanılan, tahmini kolay PIN'ler (aşağıdaki kurallarla yakalanmayanlar). */
    private const COMMON_PINS = [
        '111222', '112233', '123321', '159753', '147258', '258369', '123654', '789456', '456123',
        '102030', '100200', '147852', '963852', '741852', '135790', '246810', '010203',
    ];

    public static function pick(string $alphabet, int $n): string
    {
        $max = strlen($alphabet) - 1;
        $s = '';
        for ($i = 0; $i < $n; $i++) {
            $s .= $alphabet[random_int(0, $max)];
        }
        return $s;
    }

    /** 6 haneli rakam PIN (baştaki 0 serbest); zayıf PIN üretilmez. */
    public static function pin(): string
    {
        do {
            $p = self::pick('0123456789', 6);
        } while (self::isWeakPin($p));
        return $p;
    }

    /**
     * Kolay tahmin edilen PIN: hepsi aynı rakam, artan/azalan dizi (9'dan 0'a sarmalı dahil),
     * "121212" / "123123" tekrarları, "19xx19" / "20xx20" yıl kalıbı ve yaygın PIN listesi.
     */
    public static function isWeakPin(string $p): bool
    {
        if (!self::isPin($p)) {
            return true;
        }
        $d = array_map('intval', str_split($p));
        $asc = $desc = true;
        for ($i = 1; $i < 6; $i++) {
            $asc = $asc && $d[$i] === ($d[$i - 1] + 1) % 10;
            $desc = $desc && $d[$i] === ($d[$i - 1] + 9) % 10;
        }
        if ($asc || $desc || count(array_unique($d)) === 1) {
            return true;
        }
        if (substr($p, 0, 2) === substr($p, 2, 2) && substr($p, 2, 2) === substr($p, 4, 2)) {
            return true; // ababab
        }
        if (substr($p, 0, 3) === substr($p, 3, 3)) {
            return true; // abcabc
        }
        $head = substr($p, 0, 2);
        if (($head === '19' || $head === '20') && substr($p, 4, 2) === $head) {
            return true; // 19xx19, 20xx20
        }
        return in_array($p, self::COMMON_PINS, true);
    }

    /** En az bir harf ve bir rakam içeren, karışmayan karakterli şifre. */
    public static function password(int $len = 10): string
    {
        do {
            $s = self::pick(self::PW_LETTERS . self::PW_DIGITS, $len);
        } while (preg_match('/[a-zA-Z]/', $s) !== 1 || preg_match('/[0-9]/', $s) !== 1);
        return $s;
    }

    /** 7 haneli, ilk hane 1-9. */
    public static function loginId(): string
    {
        return (string)random_int(1, 9) . self::pick('0123456789', 6);
    }

    /** Eski e-posta şifresini geçersiz kılmak için rastgele uzun şifre. */
    public static function scramble(int $len = 40): string
    {
        return self::pick(self::SCRAMBLE, $len);
    }

    public static function isLoginId(string $s): bool
    {
        return preg_match('/^[1-9][0-9]{6}$/D', $s) === 1;
    }

    public static function isPin(string $s): bool
    {
        return preg_match('/^[0-9]{6}$/D', $s) === 1;
    }

    public static function validPepper(mixed $p): bool
    {
        // Örnek dosyadaki yer tutucu ("BURAYA-...") kabul edilmez.
        return is_string($p) && strlen($p) >= self::MIN_PEPPER && !str_starts_with($p, 'BURAYA');
    }

    /** HMAC-SHA256 (hex): hız sınırı/kilit anahtarlarında kimlik bilgisini düz tutmamak için. */
    public static function mac(string $pepper, string $s): string
    {
        return hash_hmac('sha256', $s, $pepper);
    }

    /** bcrypt'e giden ön özet: 44 karakter base64 (NUL içermez, 72 bayt sınırının altında). */
    private static function pre(string $secret, string $pepper): string
    {
        return base64_encode(hash_hmac('sha256', $secret, $pepper, true));
    }

    public static function hash(string $secret, int $cost, string $pepper): string
    {
        return password_hash(self::pre($secret, $pepper), PASSWORD_BCRYPT, ['cost' => $cost]);
    }

    public static function verify(string $secret, string $hash, string $pepper): bool
    {
        return password_verify(self::pre($secret, $pepper), $hash);
    }

    /**
     * Kayıtsız ID / kilitli hesapta da aynı süre harcansın diye, yapılandırılmış maliyetle
     * üretilmiş sahte bcrypt özeti. Süreç içinde ve (verilirse) dosya önbelleğinde saklanır;
     * her istekte yeniden üretilmez (yoksa bilinmeyen ID iki kat yavaş olurdu).
     */
    public static function dummyHash(int $cost, ?FileCache $cache = null): string
    {
        if (isset(self::$dummy[$cost])) {
            return self::$dummy[$cost];
        }
        $ok = static function ($h) use ($cost): bool {
            if (!is_string($h)) {
                return false;
            }
            $i = password_get_info($h);
            return $i['algoName'] === 'bcrypt' && (int)($i['options']['cost'] ?? 0) === $cost;
        };
        $h = null;
        if ($cache !== null) {
            $h = $cache->get('dummy_hash_' . $cost)['hash'] ?? null;
        }
        if (!$ok($h)) {
            $h = password_hash(bin2hex(random_bytes(16)), PASSWORD_BCRYPT, ['cost' => $cost]);
            if ($cache !== null) {
                try {
                    $cache->put('dummy_hash_' . $cost, ['hash' => $h]);
                } catch (\Throwable $e) {
                    error_log('Sahte özet önbelleğe yazılamadı.');
                }
            }
        }
        return self::$dummy[$cost] = (string)$h;
    }

    /** Sabit zamanlı metin karşılaştırma. */
    public static function equals(string $a, string $b): bool
    {
        return hash_equals($a, $b);
    }
}

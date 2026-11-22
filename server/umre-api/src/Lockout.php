<?php
declare(strict_types=1);

namespace UmreApi;

/**
 * Giriş kilidi: (kullanıcı, IP/64) çifti başına. Saldırganın ağı kilitlenir, hesabın sahibi
 * başka ağdan girebilir (kilit DoS'u olmaz).
 *
 * Yarış güvenliği: deneme sayacı, doğrulamadan ÖNCE Firestore commit'iyle atomik artırılır
 * (updateTransforms.increment) ve dönen yeni değere bakılır. Sayaç belgesi zaman dilimine
 * (lock_seconds uzunluğunda) bağlıdır, sıfırlama yarışı yoktur: paralel istekler ne kadar çok
 * olursa olsun bir dilimde en fazla max_failed doğrulama yapılır. Sınıra ulaşan hatada ayrıca
 * locked_until yazılır; kilit, sınırın aşıldığı andan itibaren tam lock_seconds sürer.
 *
 * Belgeler: auth_attempts/{hmac} (istemci erişimi yok). Anahtar, gizli bilginin "kuşağını"
 * (auth_secrets.updated_at) içerir: yeni PIN/şifre verilince eski kilitler kendiliğinden düşer.
 */
final class Lockout
{
    public function __construct(
        private FirestoreClient $db,
        private Clock $clock,
        private string $pepper,
        private int $maxFailed = 5,
        private int $lockSeconds = 900
    ) {
    }

    private function path(string $kind, string $uid, string $ipKey, string $gen, ?int $slot = null): string
    {
        return 'auth_attempts/' . substr(Secrets::mac($this->pepper, "$kind|$uid|$ipKey|$gen|" . ($slot ?? '')), 0, 40);
    }

    /** @param array<string,mixed> $sec auth_secrets belgesi */
    public static function generation(array $sec): string
    {
        $u = $sec['updated_at'] ?? null;
        return $u instanceof Ts ? (string)$u->t : '0';
    }

    /**
     * Bir doğrulama hakkı ayırır (sayaç doğrulamadan önce artar).
     * @return bool true: gerçek doğrulama yapılabilir; false: kilitli (doğrulama yapılmamalı)
     */
    public function acquire(string $uid, string $ipKey, string $gen): bool
    {
        $now = $this->clock->now();
        $lock = $this->db->get($this->path('lock', $uid, $ipKey, $gen));
        $lu = ($lock['locked_until'] ?? null) instanceof Ts ? $lock['locked_until']->t : 0;
        if ($lu > $now) {
            return false;
        }
        $slot = intdiv($now, max(1, $this->lockSeconds));
        $n = $this->db->increment($this->path('n', $uid, $ipKey, $gen, $slot), 'n', 1, [
            'uid' => $uid,
            'expires_at' => new Ts(($slot + 2) * $this->lockSeconds),
        ]);
        if ($n > $this->maxFailed) {
            // Dilim dolmuş ama kilit belgesi yoksa (ör. paralel istekler) şimdi yaz.
            $this->lock($uid, $ipKey, $gen);
            return false;
        }
        return true;
    }

    /** Hatalı doğrulama: dilimdeki sayaç sınıra ulaştıysa kilitler. */
    public function failed(string $uid, string $ipKey, string $gen): void
    {
        $now = $this->clock->now();
        $slot = intdiv($now, max(1, $this->lockSeconds));
        $n = (int)($this->db->get($this->path('n', $uid, $ipKey, $gen, $slot))['n'] ?? 0);
        if ($n >= $this->maxFailed) {
            $this->lock($uid, $ipKey, $gen);
        }
    }

    /** Başarılı girişte bu (kullanıcı, ağ) çiftinin sayacı sıfırlanır. */
    public function succeeded(string $uid, string $ipKey, string $gen): void
    {
        $slot = intdiv($this->clock->now(), max(1, $this->lockSeconds));
        $this->db->delete($this->path('n', $uid, $ipKey, $gen, $slot));
    }

    private function lock(string $uid, string $ipKey, string $gen): void
    {
        $now = $this->clock->now();
        $this->db->patch($this->path('lock', $uid, $ipKey, $gen), [
            'uid' => $uid,
            'locked_until' => new Ts($now + $this->lockSeconds),
            'expires_at' => new Ts($now + 2 * $this->lockSeconds),
        ]);
        // Gizli bilgi ya da tam IP yazılmaz.
        error_log('Giriş kilidi: uid=' . $uid . ' ağ=' . substr(Secrets::mac($this->pepper, $ipKey), 0, 12) . ' süre=' . $this->lockSeconds . 'sn');
    }
}

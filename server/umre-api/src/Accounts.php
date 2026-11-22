<?php
declare(strict_types=1);

namespace UmreApi;

/** login_id ayırma, gizli bilgi üretme/saklama: accounts, reset-secret ve migrate ortak işleri. */
final class Accounts
{
    /** @var callable():string */
    private $idGen;

    /** @param callable():string|null $idGen test için login_id üreticisi */
    public function __construct(
        private FirestoreClient $db,
        private Clock $clock,
        private int $bcryptCost,
        private string $pepper,
        ?callable $idGen = null
    ) {
        $this->idGen = $idGen ?? [Secrets::class, 'loginId'];
    }

    /** misafir -> 6 haneli PIN, diğerleri -> şifre. */
    public static function kindFor(string $userType): string
    {
        return $userType === 'misafir' ? 'pin' : 'password';
    }

    public static function newSecret(string $kind): string
    {
        return $kind === 'pin' ? Secrets::pin() : Secrets::password(10);
    }

    /** Tekil login_id ayırır: login_ids/{id} yalnız yoksa oluşturulur (exists=false); çakışmada yeniden dener. */
    public function allocateLoginId(string $uid): string
    {
        for ($i = 0; $i < 20; $i++) {
            $id = ($this->idGen)();
            if (!Secrets::isLoginId($id)) {
                throw new \RuntimeException('Üretilen login_id biçimi hatalı.');
            }
            if ($this->db->create('login_ids/' . $id, ['uid' => $uid, 'created_at' => new Ts($this->clock->now())])) {
                return $id;
            }
        }
        throw new UpstreamException('Tekil login_id üretilemedi.');
    }

    /** Hash yazılır; updated_at değiştiği için o hesabın eski giriş kilitleri de düşer (Lockout::generation). */
    public function storeSecret(string $uid, string $kind, string $secret, string $by): void
    {
        $this->db->patch('auth_secrets/' . $uid, [
            'hash' => Secrets::hash($secret, $this->bcryptCost, $this->pepper),
            'kind' => $kind,
            'updated_at' => new Ts($this->clock->now()),
            'updated_by' => $by,
        ]);
    }

    public function verify(string $secret, string $hash): bool
    {
        return Secrets::verify($secret, $hash, $this->pepper);
    }
}

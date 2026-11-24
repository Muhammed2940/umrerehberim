<?php
declare(strict_types=1);

namespace UmreApi;

/**
 * HTTP uç noktaları (sözleşme: tool/AUTH_SEMA.md). Ağa bağımlı her şey enjekte edilir;
 * testlerde sahte Firestore/Identity ile uçtan uca çalıştırılır.
 */
final class Api
{
    public const VERSION = '1.1.0';
    public const MIGRATION_DOC = 'system/auth_migration';

    /** Girişte TEK hata: yanlış ID, yanlış gizli bilgi, kilit, devre dışı, hazır olmayan hesap. */
    public const MSG_INVALID = 'Kullanıcı ID veya PIN hatalı ya da çok fazla deneme yapıldı; biraz sonra tekrar deneyin.';

    private Accounts $accounts;
    private Lockout $lockout;
    private Audit $audit;
    private string $pepper;
    private int $cost;

    /** @param array<string,mixed> $cfg Config::withDefaults() çıktısı */
    public function __construct(
        private array $cfg,
        private FirestoreClient $db,
        private IdentityClient $idp,
        private IdTokenVerifier $verifier,
        private CustomTokenMinter $minter,
        private RateLimiter $limiter,
        private Clock $clock,
        ?callable $idGen = null,
        private ?FileCache $cache = null,
        private ?RealtimeClient $rtdb = null
    ) {
        if (!Secrets::validPepper($cfg['pepper'] ?? null)) {
            throw new \RuntimeException('config.php: pepper eksik ya da 32 bayttan kısa.');
        }
        $this->pepper = (string)$cfg['pepper'];
        $this->cost = (int)$cfg['bcrypt_cost'];
        $this->accounts = new Accounts($db, $clock, $this->cost, $this->pepper, $idGen);
        $this->lockout = new Lockout($db, $clock, $this->pepper, (int)$cfg['max_failed'], (int)$cfg['lock_seconds']);
        $this->audit = new Audit($db, $clock);
    }

    public function handle(Request $req): Response
    {
        try {
            $r = $this->withCors($req, $this->route($req));
        } catch (ApiException $e) {
            $h = isset($e->extra['retry_after']) ? ['Retry-After' => (string)$e->extra['retry_after']] : [];
            $r = $this->withCors($req, new Response($e->status, ['error' => $e->errorCode, 'message' => $e->getMessage()] + $e->extra, $h));
        } catch (UpstreamException $e) {
            error_log('Üst servis hatası: ' . $e->getMessage());
            $r = new Response(502, ['error' => 'upstream_error', 'message' => 'Sunucu şu an Google servislerine ulaşamıyor. Lütfen biraz sonra tekrar deneyin.']);
        } catch (\Throwable $e) {
            error_log('Beklenmeyen hata: ' . get_class($e) . ': ' . $e->getMessage() . ' @' . $e->getFile() . ':' . $e->getLine());
            $r = new Response(500, ['error' => 'server_error', 'message' => 'Beklenmeyen bir sunucu hatası oluştu.']);
        }
        if ($req->secure) {
            $r = new Response($r->status, $r->body, $r->headers + ['Strict-Transport-Security' => 'max-age=31536000']);
        }
        return $r;
    }

    private function route(Request $req): Response
    {
        $path = '/' . trim($req->path, '/');
        // Tarayıcıdan gelen (Origin taşıyan) istekler kabul edilmez: istemci yalnız mobil uygulama.
        // Tek istisna: Aile Takibi sayfası (/v1/track) için yapılandırmadaki web_origins.
        if ($req->hasHeader('origin') && !($path === '/v1/track' && $this->originAllowed($req->header('origin')))) {
            throw new ApiException(403, 'forbidden_origin', 'Bu servis tarayıcıdan kullanılamaz.');
        }
        if (!$req->secure && !($path === '/v1/health' && $req->method === 'GET')) {
            throw new ApiException(403, 'https_required', 'Yalnız HTTPS ile bağlanılabilir.');
        }
        // CORS ön isteği (başlıklar handle() içinde eklenir).
        if ($path === '/v1/track' && $req->method === 'OPTIONS') {
            return new Response(204, []);
        }
        $routes = [
            '/v1/health' => ['GET', 'health'],
            '/v1/auth/login' => ['POST', 'login'],
            '/v1/auth/change-secret' => ['POST', 'changeSecret'],
            '/v1/admin/accounts' => ['POST', 'createAccount'],
            '/v1/admin/reset-secret' => ['POST', 'resetSecret'],
            '/v1/admin/migrate' => ['POST', 'migrate'],
            '/v1/track' => ['POST', 'track'],
        ];
        if (!isset($routes[$path])) {
            throw new ApiException(404, 'not_found', 'Böyle bir adres yok.');
        }
        [$method, $fn] = $routes[$path];
        if ($req->method !== $method) {
            throw new ApiException(405, 'method_not_allowed', 'Bu adres için yöntem desteklenmiyor.');
        }
        if (strlen($req->body) > Request::MAX_BODY) {
            throw new ApiException(413, 'payload_too_large', 'İstek çok büyük.');
        }
        if ($method === 'POST') {
            $ct = strtolower(trim(explode(';', $req->header('content-type'))[0]));
            if ($ct !== 'application/json') {
                throw new ApiException(415, 'unsupported_media_type', 'İstek gövdesi application/json olmalı.');
            }
        }
        return $this->$fn($req);
    }

    // ---------------------------------------------------------------- CORS (yalnız /v1/track)

    private function originAllowed(string $origin): bool
    {
        $list = array_filter((array)($this->cfg['web_origins'] ?? []), 'is_string');
        return $origin !== '' && in_array($origin, $list, true);
    }

    /** İzinli web kökeninden gelen /v1/track isteğinin yanıtına (hata dahil) CORS başlıkları ekler. */
    private function withCors(Request $req, Response $r): Response
    {
        if ('/' . trim($req->path, '/') !== '/v1/track' || !$this->originAllowed($req->header('origin'))) {
            return $r;
        }
        $h = [
            'Access-Control-Allow-Origin' => $req->header('origin'),
            'Vary' => 'Origin',
            'Access-Control-Allow-Methods' => 'POST, OPTIONS',
            'Access-Control-Allow-Headers' => 'Content-Type',
            'Access-Control-Max-Age' => '86400',
        ];
        return new Response($r->status, $r->body, $r->headers + $h);
    }

    // ---------------------------------------------------------------- yardımcılar

    /** @return array<string,mixed> */
    private function json(Request $req): array
    {
        if ($req->body === '') {
            return [];
        }
        $j = str_contains($req->body, "\0") ? null : json_decode($req->body, true, 8);
        if (!is_array($j) || ($j !== [] && array_is_list($j)) || self::hasNul($j)) {
            throw new ApiException(400, 'invalid_request', 'İstek gövdesi geçerli bir JSON nesnesi olmalı.');
        }
        return $j;
    }

    private static function hasNul(mixed $v): bool
    {
        if (is_string($v)) {
            return str_contains($v, "\0");
        }
        if (is_array($v)) {
            foreach ($v as $k => $x) {
                if (self::hasNul((string)$k) || self::hasNul($x)) {
                    return true;
                }
            }
        }
        return false;
    }

    /** @param array<string,mixed> $data */
    private function ok(array $data): Response
    {
        return new Response(200, $data);
    }

    private static function isId(string $s): bool
    {
        return preg_match('/^[A-Za-z0-9_-]{1,128}$/D', $s) === 1;
    }

    /** Firestore'daki "disabled" alanı: true / "true" / 1 hepsi devre dışı sayılır. */
    private static function isTrue(mixed $v): bool
    {
        return $v === true || $v === 1 || (is_string($v) && strtolower(trim($v)) === 'true');
    }

    private function throttle(string $key, int $limit, int $window): void
    {
        $retry = $this->limiter->hit($key, $limit, $window);
        if ($retry > 0) {
            throw new ApiException(429, 'rate_limited', 'Çok fazla deneme yaptınız. Lütfen biraz bekleyip tekrar deneyin.', ['retry_after' => $retry]);
        }
    }

    private function rootUid(): ?string
    {
        $u = (string)($this->cfg['root_uid'] ?? '');
        return $u !== '' ? $u : null;
    }

    /** Kök hesabın uid'si: root_uid, yoksa Auth'ta root_email araması. */
    private function resolveRootUid(): ?string
    {
        return $this->rootUid() ?? $this->idp->lookupByEmail(strtolower((string)$this->cfg['root_email']));
    }

    /**
     * Bearer ID jetonunu doğrular, çağıranı users belgesinden yükler.
     * @param int|null $maxAuthAge auth_time en fazla bu kadar sn önce olmalı (null: bakılmaz)
     * @return array{uid:string,name:string,role:string,agency:string,root:bool}
     */
    private function caller(Request $req, ?int $maxAuthAge = null): array
    {
        if (preg_match('/^Bearer\s+(\S+)$/i', $req->header('authorization'), $m) !== 1) {
            throw new ApiException(401, 'unauthorized', 'Bu işlem için giriş yapmalısınız.');
        }
        $claims = $this->verifier->verify($m[1]);
        $uid = (string)$claims['sub'];
        if (!self::isId($uid)) {
            throw new ApiException(401, 'invalid_token', 'Oturum geçersiz ya da süresi dolmuş. Lütfen yeniden giriş yapın.');
        }
        if ($maxAuthAge !== null) {
            $at = $claims['auth_time'] ?? null;
            if (!is_int($at) || $this->clock->now() - $at > $maxAuthAge) {
                throw new ApiException(401, 'reauth_required', 'Güvenlik için çıkış yapıp yeniden giriş yapmanız gerekiyor.');
            }
        }
        // Kök: root_uid tanımlıysa yalnız uid eşleşmesi; değilse (yedek) e-posta + şifreli giriş.
        $rootUid = $this->rootUid();
        if ($rootUid !== null) {
            $isRoot = Secrets::equals($rootUid, $uid);
        } else {
            $email = strtolower((string)($claims['email'] ?? ''));
            $provider = (string)($claims['firebase']['sign_in_provider'] ?? '');
            $isRoot = $email !== '' && $provider === 'password'
                && Secrets::equals(strtolower((string)$this->cfg['root_email']), $email);
        }
        $doc = $this->db->get('users/' . $uid);
        if ($doc === null) {
            if (!$isRoot) {
                throw new ApiException(403, 'forbidden', 'Kullanıcı kaydınız bulunamadı.');
            }
            $doc = [];
        }
        if (self::isTrue($doc['disabled'] ?? null)) {
            throw new ApiException(403, 'account_disabled', 'Hesabınız devre dışı bırakılmış.');
        }
        return [
            'uid' => $uid,
            'name' => (string)($doc['user_name'] ?? ''),
            'role' => $isRoot ? 'super_admin' : (string)($doc['user_type'] ?? ''),
            'agency' => (string)($doc['agency_id'] ?? ''),
            'root' => $isRoot,
        ];
    }

    private function adminAge(): int
    {
        return (int)$this->cfg['admin_max_auth_age'];
    }

    /** @param array{uid:string,name:string,role:string,agency:string,root:bool} $c */
    private function requireManage(array $c, string $targetType, string $targetAgency): void
    {
        if (!Permissions::canManage($c['role'], $c['agency'], $targetType, $targetAgency)) {
            throw new ApiException(403, 'forbidden', 'Bu işlem için yetkiniz yok.');
        }
    }

    private function forbidden(): ApiException
    {
        return new ApiException(403, 'forbidden', 'Bu işlem için yetkiniz yok.');
    }

    // ---------------------------------------------------------------- uç noktalar

    /** Aile Takibi: token'la hacının son konumu (herkese açık uç; yetki token'ın bilinmesidir). */
    private function track(Request $req): Response
    {
        if ($this->cache === null || $this->rtdb === null) {
            throw new \RuntimeException('Aile Takibi için önbellek ve Realtime DB istemcisi gerekli.');
        }
        $this->throttle('track:' . Request::ipKey($req->ip), (int)$this->cfg['track_limit'], (int)$this->cfg['track_window']);
        try {
            $j = $this->json($req);
        } catch (ApiException $e) {
            throw new ApiException(400, 'bad_request', 'Bağlantı geçersiz.');
        }
        $token = $j['token'] ?? null;
        if (!is_string($token)) {
            throw new ApiException(400, 'bad_request', 'Bağlantı geçersiz.');
        }
        $svc = new Tracking($this->db, $this->rtdb, $this->cache, $this->clock, $this->pepper,
            (int)$this->cfg['track_cache_ttl'], (int)$this->cfg['track_view_interval']);
        return $this->ok($svc->lookup($token, $req->ip, $req->header('user-agent')));
    }

    private function health(Request $req): Response
    {
        return $this->ok(['ok' => true, 'version' => self::VERSION]);
    }

    private function invalidCredentials(): ApiException
    {
        return new ApiException(401, 'invalid_credentials', self::MSG_INVALID);
    }

    /** Gerçek doğrulama yapılmayan yollarda da aynı süre harcansın. */
    private function burn(string $secret): void
    {
        password_verify($secret, Secrets::dummyHash($this->cost, $this->cache));
    }

    private function login(Request $req): Response
    {
        $ipKey = Request::ipKey($req->ip);
        $this->throttle('login:global', (int)$this->cfg['global_limit'], (int)$this->cfg['global_window']);
        $this->throttle('login:ip:' . $ipKey, (int)$this->cfg['ip_limit'], (int)$this->cfg['ip_window']);
        $b = $this->json($req);
        $id = $b['login_id'] ?? null;
        $secret = $b['secret'] ?? null;
        if (!is_string($id) || !is_string($secret)) {
            throw new ApiException(400, 'invalid_request', 'Kullanıcı ID ve şifre gerekli.');
        }
        if (!Secrets::isLoginId($id) || strlen($secret) > 128) {
            $this->burn($secret);
            throw $this->invalidCredentials();
        }
        // Kullanıcı ID başına sınır: kayıtlı olsun olmasın her ID sayılır (anahtar HMAC'li).
        $idLimited = $this->limiter->hit('login:id:' . Secrets::mac($this->pepper, $id), (int)$this->cfg['account_limit'], (int)$this->cfg['account_window']) > 0;

        $row = $this->db->get('login_ids/' . $id);
        $uid = is_array($row) ? ($row['uid'] ?? null) : null;
        $sec = is_string($uid) && self::isId($uid) ? $this->db->get('auth_secrets/' . $uid) : null;
        if ($sec === null || !is_string($sec['hash'] ?? null)) {
            $this->burn($secret);
            throw $this->invalidCredentials();
        }
        $staff = ($sec['kind'] ?? '') === 'password';
        // Personel hesabı ID genelinde asla kilitlenmez (kilit DoS'u); yalnız (hesap, ağ) kilidi.
        if ($idLimited && !$staff) {
            error_log('Giriş reddi (ID sınırı): uid=' . $uid);
            $this->burn($secret);
            throw $this->invalidCredentials();
        }
        $gen = Lockout::generation($sec);
        if (!$this->lockout->acquire($uid, $ipKey, $gen)) {
            $this->burn($secret);
            throw $this->invalidCredentials();
        }
        if (!$this->accounts->verify($secret, $sec['hash'])) {
            $this->lockout->failed($uid, $ipKey, $gen);
            throw $this->invalidCredentials();
        }
        $user = $this->db->get('users/' . $uid);
        if ($user === null) {
            error_log('Giriş reddi (users belgesi yok, account_not_ready): uid=' . $uid);
            throw $this->invalidCredentials();
        }
        if (self::isTrue($user['disabled'] ?? null)) {
            error_log('Giriş reddi (account_disabled): uid=' . $uid);
            throw $this->invalidCredentials();
        }
        $this->lockout->succeeded($uid, $ipKey, $gen);
        return $this->ok(['token' => $this->minter->mint($uid)]);
    }

    private function changeSecret(Request $req): Response
    {
        $c = $this->caller($req);
        $this->throttle('act:change:' . $c['uid'], (int)$this->cfg['change_limit'], (int)$this->cfg['change_window']);
        $b = $this->json($req);
        $old = $b['old_secret'] ?? null;
        $new = $b['new_secret'] ?? null;
        if (!is_string($old) || !is_string($new)) {
            throw new ApiException(400, 'invalid_request', 'Eski ve yeni şifre gerekli.');
        }
        $sec = $this->db->get('auth_secrets/' . $c['uid']);
        if ($sec === null || !is_string($sec['hash'] ?? null)) {
            throw new ApiException(409, 'no_secret', 'Bu hesap için Kullanıcı ID ile giriş tanımlı değil.');
        }
        $kind = ($sec['kind'] ?? '') === 'pin' ? 'pin' : 'password';
        if ($kind === 'pin') {
            if (!Secrets::isPin($new)) {
                throw new ApiException(400, 'invalid_secret', 'PIN tam olarak 6 haneli rakam olmalı.');
            }
            if (Secrets::isWeakPin($new)) {
                throw new ApiException(400, 'weak_secret', 'Bu PIN kolay tahmin edilir (ör. 123456, 111111). Başka bir PIN seçin.');
            }
        } elseif (mb_strlen($new) < 8 || strlen($new) > 128) {
            throw new ApiException(400, 'invalid_secret', 'Şifre en az 8, en fazla 128 karakter olmalı.');
        }
        if (Secrets::equals($old, $new)) {
            throw new ApiException(400, 'invalid_secret', 'Yeni bilgi eskisinden farklı olmalı.');
        }
        if (strlen($old) > 128 || !$this->accounts->verify($old, $sec['hash'])) {
            throw new ApiException(403, 'wrong_old_secret', 'Mevcut ' . ($kind === 'pin' ? 'PIN' : 'şifre') . ' hatalı.');
        }
        // Önce açık oturumlar kapatılır (çalınmış cihaz); yazılamazsa hiçbir şey değişmez.
        $this->revoke($c['uid']);
        $this->accounts->storeSecret($c['uid'], $kind, $new, $c['uid']);
        return $this->ok(['ok' => true, 'relogin' => true]);
    }

    /** Auth hesabı varsa açık oturumlarını (yenileme jetonlarını) geçersiz kılar. */
    private function revoke(string $uid): void
    {
        if ($this->idp->getUser($uid) === null) {
            return; // Auth hesabı yok: kapatılacak oturum da yok
        }
        $this->idp->updateAccount($uid, null, $this->clock->now());
    }

    private function createAccount(Request $req): Response
    {
        $c = $this->caller($req, $this->adminAge());
        $b = $this->json($req);
        $type = $b['user_type'] ?? null;
        $agency = $b['agency_id'] ?? '';
        $agency = $agency === null ? '' : $agency;
        if (!is_string($type) || !in_array($type, Permissions::CREATABLE_TYPES, true) || !is_string($agency)) {
            throw new ApiException(400, 'invalid_request', 'Geçerli bir kullanıcı türü gerekli.');
        }
        if ($agency !== '' && !self::isId($agency)) {
            throw new ApiException(400, 'invalid_request', 'Acente kimliği geçersiz.');
        }
        if (in_array($type, ['misafir', 'acente_admin'], true) && $agency === '') {
            throw new ApiException(400, 'invalid_request', 'Bu kullanıcı türü için acente gerekli.');
        }
        $this->requireManage($c, $type, $agency);
        $this->throttle('act:create:' . $c['uid'], (int)$this->cfg['create_limit'], (int)$this->cfg['create_window']);
        if ($agency !== '' && $this->db->get('agencies/' . $agency) === null) {
            throw new ApiException(400, 'agency_not_found', 'Acente bulunamadı.');
        }

        $auditId = $this->audit->start($c, Audit::ACTION_USER_CREATE, 'user', '', '', [
            'via' => 'auth_api', 'user_type' => $type, 'agency_id' => $agency,
        ]);
        $uid = $this->idp->createUser();
        try {
            $loginId = $this->accounts->allocateLoginId($uid);
            $kind = Accounts::kindFor($type);
            $secret = Accounts::newSecret($kind);
            $this->accounts->storeSecret($uid, $kind, $secret, $c['uid']);
        } catch (\Throwable $e) {
            // Yarım kalan Auth kullanıcısını temizle (en iyi çaba).
            try {
                $this->idp->deleteUser($uid);
            } catch (\Throwable $e2) {
                error_log('Yarım hesap silinemedi: ' . $uid);
            }
            $this->audit->finish($auditId, ['status' => 'failed']);
            throw $e;
        }
        $this->audit->finish($auditId, [
            'status' => 'ok',
            'target_id' => $uid,
            'details' => ['via' => 'auth_api', 'user_type' => $type, 'agency_id' => $agency, 'login_id' => $loginId],
        ]);
        return $this->ok(['uid' => $uid, 'login_id' => $loginId, 'secret' => $secret]);
    }

    private function resetSecret(Request $req): Response
    {
        $c = $this->caller($req, $this->adminAge());
        $b = $this->json($req);
        $uid = $b['uid'] ?? null;
        if (!is_string($uid) || !self::isId($uid)) {
            throw new ApiException(400, 'invalid_request', 'Geçerli bir kullanıcı uid gerekli.');
        }
        if (Secrets::equals($c['uid'], $uid)) {
            throw new ApiException(403, 'forbidden', 'Kendi PIN/şifreniz için "Şifremi değiştir"i kullanın.');
        }
        $this->throttle('act:reset:' . $c['uid'], (int)$this->cfg['reset_limit'], (int)$this->cfg['reset_window']);
        // Bulunamayan ile yetkisiz aynı yanıtı verir (hesap varlığı sızmaz).
        $u = $this->db->get('users/' . $uid);
        if ($u === null) {
            throw $this->forbidden();
        }
        $type = (string)($u['user_type'] ?? '');
        $this->requireManage($c, $type, (string)($u['agency_id'] ?? ''));
        if (!in_array($type, Permissions::CREATABLE_TYPES, true)) {
            throw new ApiException(400, 'invalid_request', 'Bu hesap türü için gizli bilgi üretilemez.');
        }
        // Kök hesabın gizli bilgisi başkası tarafından yenilenemez (acil durum erişimi korunur).
        $rootUid = $this->resolveRootUid();
        if ($rootUid !== null && Secrets::equals($rootUid, $uid)) {
            throw $this->forbidden();
        }
        $auditId = $this->audit->start($c, Audit::ACTION_SECRET_RESET, 'user', $uid, (string)($u['user_name'] ?? ''), [
            'kind' => Accounts::kindFor($type),
        ]);
        try {
            $loginId = $this->ensureLoginId($uid, $u);
            // Eski "şifre = TC" kapısı: e-postalı hesapta Auth şifresi rastgele 40 karakter olur.
            // Aynı çağrıda oturumlar kapatılır. Başarısızsa işlem tümden başarısız (gizli bilgi değişmez).
            $acct = $this->idp->getUser($uid);
            if ($acct !== null) {
                $this->idp->updateAccount($uid, $acct['email'] !== null ? Secrets::scramble(40) : null, $this->clock->now());
            }
            $kind = Accounts::kindFor($type);
            $secret = Accounts::newSecret($kind);
            $this->accounts->storeSecret($uid, $kind, $secret, $c['uid']); // eski kilitler de düşer
            $this->db->patch('users/' . $uid, ['auth_migrated' => true]);
        } catch (\Throwable $e) {
            $this->audit->finish($auditId, ['status' => 'failed']);
            throw $e;
        }
        $this->audit->finish($auditId, [
            'status' => 'ok',
            'details' => ['login_id' => $loginId, 'kind' => $kind],
        ]);
        return $this->ok(['uid' => $uid, 'login_id' => $loginId, 'secret' => $secret]);
    }

    /**
     * Hedefin geçerli ve kendisine ait bir login_id'si olduğundan emin olur; yoksa üretir
     * ve users/{uid}.login_id alanına yazar.
     * @param array<string,mixed> $u users belgesi
     */
    private function ensureLoginId(string $uid, array $u): string
    {
        $lid = $this->ownedLoginId($uid, $u, true);
        if ($lid === '') {
            $lid = $this->accounts->allocateLoginId($uid);
            $this->db->patch('users/' . $uid, ['login_id' => $lid]);
        }
        return $lid;
    }

    /**
     * users.login_id geçerli ve login_ids'te bu uid'ye aitse döner, değilse ''.
     * $repair: login_ids kaydı hiç yoksa oluşturulur.
     * @param array<string,mixed> $u
     */
    private function ownedLoginId(string $uid, array $u, bool $repair): string
    {
        $lid = (string)($u['login_id'] ?? '');
        if ($lid === '' || !Secrets::isLoginId($lid)) {
            return '';
        }
        $row = $this->db->get('login_ids/' . $lid);
        if ($row === null) {
            return $repair && $this->db->create('login_ids/' . $lid, ['uid' => $uid, 'created_at' => new Ts($this->clock->now())]) ? $lid : '';
        }
        return ($row['uid'] ?? null) === $uid ? $lid : '';
    }

    private function migrate(Request $req): Response
    {
        $c = $this->caller($req, (int)$this->cfg['migrate_max_auth_age']);
        if ($c['role'] !== 'super_admin') {
            throw new ApiException(403, 'forbidden', 'Bu işlem yalnız süper admin içindir.');
        }
        $state = $this->db->get(self::MIGRATION_DOC);
        if ($this->cfg['migrate_enabled'] !== true || self::isTrue($state['done'] ?? null)) {
            throw new ApiException(410, 'migration_done', 'Taşıma tamamlanmış; bu işlem artık kapalı.');
        }
        $this->throttle('act:migrate:' . $c['uid'], (int)$this->cfg['migrate_limit'], (int)$this->cfg['migrate_window']);
        $b = $this->json($req);
        if (isset($b['dry_run']) && !is_bool($b['dry_run'])) {
            throw new ApiException(400, 'invalid_request', 'dry_run true/false olmalı.');
        }
        $limit = $b['limit'] ?? 20;
        $after = $b['after'] ?? '';
        if (!is_int($limit) || $limit < 1 || $limit > 100 || !is_string($after) || ($after !== '' && !self::isId($after))) {
            throw new ApiException(400, 'invalid_request', 'limit 1-100 arası tamsayı, after geçerli bir uid olmalı.');
        }
        $dry = ($b['dry_run'] ?? false) === true;
        if (!$dry) {
            if (function_exists('set_time_limit')) {
                @set_time_limit(0);
            }
            ignore_user_abort(true);
        }
        // Denetim kaydı her yazmadan (kök belgesi dahil) önce; yazılamazsa taşıma yapılmaz.
        $auditId = $dry ? null : $this->audit->start($c, Audit::ACTION_AUTH_MIGRATE, 'system', 'auth', '', [
            'limit' => $limit, 'after' => $after,
        ]);
        $warnings = [];
        $rootEmail = strtolower((string)$this->cfg['root_email']);

        // Kök hesabın users belgesi yoksa süper admin olarak oluştur.
        $extra = [];
        $rootUid = $this->resolveRootUid();
        if ($rootUid === null) {
            $warnings[] = 'Kök hesap Auth içinde bulunamadı: ' . $rootEmail;
        } elseif ($this->db->get('users/' . $rootUid) === null) {
            $rootDoc = [
                'user_type' => 'super_admin',
                'user_name' => 'Kök Süper Admin',
                'user_tc' => explode('@', $rootEmail)[0],
                'agency_id' => '',
                'created_at' => new Ts($this->clock->now()),
            ];
            if ($dry) {
                $extra[$rootUid] = $rootDoc;
            } else {
                $this->db->create('users/' . $rootUid, $rootDoc);
            }
        }

        $users = $this->db->listAll('users', ['user_name', 'user_type', 'login_id', 'agency_id', 'auth_migrated']) + $extra;
        ksort($users, SORT_STRING);
        $pending = [];
        foreach ($users as $uid => $u) {
            $uid = (string)$uid;
            $type = (string)($u['user_type'] ?? '');
            if ($type === 'esnaf' || self::isTrue($u['auth_migrated'] ?? null)) {
                continue;
            }
            if (!in_array($type, Permissions::CREATABLE_TYPES, true) || !self::isId($uid)) {
                $warnings[] = "Atlandı (bilinmeyen user_type '$type'): $uid";
                continue;
            }
            $pending[$uid] = $u;
        }

        if ($dry) {
            $out = [];
            foreach ($pending as $uid => $u) {
                $out[] = ['uid' => $uid, 'user_name' => (string)($u['user_name'] ?? ''), 'user_type' => (string)($u['user_type'] ?? ''), 'login_id' => null, 'secret' => null];
            }
            return $this->ok(['dry_run' => true, 'accounts' => $out, 'closed' => [], 'failed' => [], 'warnings' => $warnings,
                'remaining' => count($pending), 'next_after' => '', 'pending_total' => count($pending), 'done' => false]);
        }

        $batch = [];
        foreach ($pending as $uid => $u) {
            if ($after === '' || strcmp($uid, $after) > 0) {
                $batch[$uid] = $u;
                if (count($batch) >= $limit) {
                    break;
                }
            }
        }
        $nextAfter = $batch === [] ? $after : (string)array_key_last($batch);

        $out = [];
        $closed = [];
        $failed = [];
        foreach ($batch as $uid => $u) {
            $type = (string)($u['user_type'] ?? '');
            $name = (string)($u['user_name'] ?? '');
            $isRoot = $rootUid !== null && $uid === $rootUid;
            try {
                // 1) Eski kapıyı kapat (kök hariç: onun için bin/root_password.php). Başarısızsa
                //    hesap "taşındı" işaretlenmez ve hiçbir şey yazılmaz.
                $acct = $this->idp->getUser($uid);
                if ($acct !== null && $acct['email'] !== null && !$isRoot) {
                    try {
                        $this->idp->updateAccount($uid, Secrets::scramble(40), $this->clock->now());
                    } catch (UpstreamException $e) {
                        error_log('migrate şifre karıştırma hatası ' . $uid . ': ' . $e->getMessage());
                        $failed[] = $uid;
                        $warnings[] = "Auth şifresi değiştirilemedi, hesap taşınmadı (tekrar çalıştırın): $uid";
                        continue;
                    }
                }
                if ($isRoot && $acct !== null && $acct['email'] !== null) {
                    $warnings[] = 'Kök hesabın e-posta şifresi değiştirilmedi; sunucuda bin/root_password.php ile uzun rastgele bir şifre verin.';
                }
                // 2) Zaten Kullanıcı ID + gizli bilgisi olan (servisle açılmış / yenilenmiş) hesaba yeni bilgi verilmez.
                $sec = $this->db->get('auth_secrets/' . $uid);
                $lid = $this->ownedLoginId($uid, $u, false);
                if ($lid !== '' && is_string($sec['hash'] ?? null)) {
                    $this->db->patch('users/' . $uid, ['auth_migrated' => true]);
                    $closed[] = $uid;
                    continue;
                }
                $loginId = $this->ensureLoginId($uid, $u);
                $kind = Accounts::kindFor($type);
                $secret = Accounts::newSecret($kind);
                $this->accounts->storeSecret($uid, $kind, $secret, $c['uid']);
                $this->db->patch('users/' . $uid, ['login_id' => $loginId, 'auth_migrated' => true]); // en son: "tamamlandı"
                $out[] = ['uid' => $uid, 'user_name' => $name, 'user_type' => $type, 'login_id' => $loginId, 'secret' => $secret];
            } catch (UpstreamException $e) {
                error_log('migrate hatası ' . $uid . ': ' . $e->getMessage());
                $failed[] = $uid;
                $warnings[] = "İşlenemedi (tekrar çalıştırılabilir): $uid";
            }
        }

        $remaining = 0;
        foreach (array_keys($pending) as $uid) {
            if (strcmp((string)$uid, $nextAfter) > 0) {
                $remaining++;
            }
        }
        $pendingTotal = count($pending) - count($out) - count($closed);
        $done = $remaining === 0 && $pendingTotal === 0;
        if ($done) {
            $this->db->patch(self::MIGRATION_DOC, ['done' => true, 'done_at' => new Ts($this->clock->now()), 'done_by' => $c['uid']]);
        }
        $this->audit->finish((string)$auditId, [
            'status' => $failed === [] ? 'ok' : 'partial',
            'details' => [
                'count' => count($out), 'uids' => array_column($out, 'uid'),
                'closed' => $closed, 'failed' => $failed, 'remaining' => $remaining, 'done' => $done,
            ],
        ]);
        return $this->ok([
            'dry_run' => false, 'accounts' => $out, 'closed' => $closed, 'failed' => $failed, 'warnings' => $warnings,
            'remaining' => $remaining, 'next_after' => $nextAfter, 'pending_total' => $pendingTotal, 'done' => $done,
        ]);
    }
}

<?php
declare(strict_types=1);

// Düz PHP testleri (PHPUnit yok). Çalıştırma:  php tests/run.php
// Ağ yok: sahte Firestore/Identity/HTTP, yerel üretilmiş RSA anahtarları.

namespace UmreApi\Tests;

use UmreApi\Accounts;
use UmreApi\Api;
use UmreApi\ApiException;
use UmreApi\Clock;
use UmreApi\Config;
use UmreApi\CustomTokenMinter;
use UmreApi\Factory;
use UmreApi\FileCache;
use UmreApi\FirestoreRest;
use UmreApi\FirestoreValue;
use UmreApi\GoogleAccessToken;
use UmreApi\GoogleCerts;
use UmreApi\IdTokenVerifier;
use UmreApi\Jwt;
use UmreApi\LegacyProbe;
use UmreApi\Lockout;
use UmreApi\Permissions;
use UmreApi\RateLimiter;
use UmreApi\Request;
use UmreApi\Secrets;
use UmreApi\ServiceAccount;
use UmreApi\StaticToken;
use UmreApi\Ts;
use UmreApi\UpstreamException;

require __DIR__ . '/../src/bootstrap.php';
require __DIR__ . '/Fakes.php';

const PROJECT = 'umrerehberim-cc99e';
const ROOT_EMAIL = '10000000146@umrerehberim.app';
const T0 = 1_800_000_000;
const PEPPER = 'test-biberi-0123456789abcdef0123456789abcdef';

// ------------------------------------------------------------------ mini çerçeve
$GLOBALS['T'] = ['tests' => 0, 'asserts' => 0, 'fails' => [], 'cur' => ''];
// Beklenen hata yollarında error_log() çıktısı konsolu kirletmesin.
$errLog = sys_get_temp_dir() . DIRECTORY_SEPARATOR . 'umre-test-error.log';
ini_set('error_log', $errLog);

function test(string $name, callable $fn): void
{
    $GLOBALS['T']['tests']++;
    $GLOBALS['T']['cur'] = $name;
    try {
        $fn();
    } catch (\Throwable $e) {
        $GLOBALS['T']['fails'][] = "[$name] İSTİSNA: " . get_class($e) . ': ' . $e->getMessage() . ' @' . basename($e->getFile()) . ':' . $e->getLine();
    }
}

function ok($cond, string $msg = ''): void
{
    $GLOBALS['T']['asserts']++;
    if (!$cond) {
        $GLOBALS['T']['fails'][] = '[' . $GLOBALS['T']['cur'] . '] ' . $msg;
    }
}

/** @param mixed $exp @param mixed $act */
function same($exp, $act, string $msg = ''): void
{
    ok($exp === $act, $msg . ' beklenen=' . json_encode($exp) . ' gelen=' . json_encode($act));
}

function tmpdir(string $p): string
{
    $d = sys_get_temp_dir() . DIRECTORY_SEPARATOR . $p . bin2hex(random_bytes(6));
    $GLOBALS['TMPDIRS'][] = $d;
    return $d;
}

// ------------------------------------------------------------------ anahtarlar
function keypair(): array
{
    static $cnf = null;
    $opts = ['private_key_bits' => 2048, 'private_key_type' => OPENSSL_KEYTYPE_RSA];
    $k = @openssl_pkey_new($opts);
    if ($k === false) {
        // Windows'ta openssl.cnf bulunamazsa asgari bir dosya kullan.
        $cnf = $cnf ?? sys_get_temp_dir() . DIRECTORY_SEPARATOR . 'umre-openssl-min.cnf';
        file_put_contents($cnf, "[req]\ndistinguished_name=dn\n[dn]\n");
        $opts['config'] = $cnf;
        $k = openssl_pkey_new($opts);
    }
    if ($k === false) {
        fwrite(STDERR, "RSA anahtarı üretilemedi: " . openssl_error_string() . "\n");
        exit(2);
    }
    $priv = '';
    openssl_pkey_export($k, $priv, null, isset($opts['config']) ? ['config' => $opts['config']] : []);
    return [$priv, openssl_pkey_get_details($k)['key']];
}

[$SA_PRIV, $SA_PUB] = keypair();      // sahte servis hesabı
[$G_PRIV, $G_PUB] = keypair();        // sahte "Google securetoken" anahtarı
[$OTHER_PRIV, $OTHER_PUB] = keypair(); // yabancı anahtar

// ------------------------------------------------------------------ ortam
final class Env
{
    public Clock $clock;
    public FakeFirestore $db;
    public FakeIdentity $idp;
    public Api $api;
    public StaticCerts $certs;
    public IdTokenVerifier $verifier;
    public RateLimiter $limiter;
    public string $rlDir;
}

/** @param array<string,mixed> $cfg @param callable|null $idGen */
function env(array $cfg = [], ?callable $idGen = null, ?FakeFirestore $db = null): Env
{
    global $SA_PRIV, $G_PUB;
    $e = new Env();
    $e->clock = new Clock();
    $e->clock->set(T0);
    $e->db = $db ?? new FakeFirestore();
    $e->idp = new FakeIdentity();
    $e->certs = new StaticCerts(['k1' => $G_PUB]);
    $e->verifier = new IdTokenVerifier(PROJECT, $e->certs, $e->clock);
    $sa = new ServiceAccount('svc@' . PROJECT . '.iam.gserviceaccount.com', $SA_PRIV, PROJECT);
    $e->rlDir = tmpdir('umre-rl-');
    $e->limiter = new RateLimiter($e->rlDir, $e->clock);
    $e->api = new Api(
        Config::withDefaults($cfg + ['bcrypt_cost' => 4, 'pepper' => PEPPER]),
        $e->db,
        $e->idp,
        $e->verifier,
        new CustomTokenMinter($sa, $e->clock),
        $e->limiter,
        $e->clock,
        $idGen
    );
    $e->db->docs['agencies/A'] = ['name' => 'Acente A'];
    $e->db->docs['agencies/B'] = ['name' => 'Acente B'];
    return $e;
}

/** @param array<string,mixed> $o */
function idToken(array $o = []): string
{
    global $G_PRIV;
    $now = $o['now'] ?? T0;
    $claims = ($o['claims'] ?? []) + [
        'iss' => 'https://securetoken.google.com/' . PROJECT,
        'aud' => PROJECT,
        'sub' => $o['uid'] ?? 'someuid',
        'iat' => $now - 10,
        'auth_time' => $now - 10,
        'exp' => $now + 3000,
        'firebase' => ['sign_in_provider' => $o['provider'] ?? 'custom'],
    ];
    if (isset($o['email'])) {
        $claims['email'] = $o['email'];
    }
    foreach (($o['drop'] ?? []) as $k) {
        unset($claims[$k]);
    }
    return Jwt::signRs256($claims, $o['key'] ?? $G_PRIV, ['kid' => $o['kid'] ?? 'k1']);
}

function rootToken(array $o = []): string
{
    return idToken($o + ['uid' => 'rootuid', 'email' => ROOT_EMAIL, 'provider' => 'password']);
}

/**
 * @param array<string,mixed>|null $body
 * @param array<string,string> $headers
 * @return array{0:int,1:array<string,mixed>,2:array<string,string>}
 */
function call(Env $e, string $method, string $path, ?array $body = null, ?string $token = null, string $ip = '9.9.9.9', ?string $raw = null, array $headers = [], bool $secure = true): array
{
    $h = $method === 'POST' ? ['content-type' => 'application/json; charset=utf-8'] : [];
    if ($token !== null) {
        $h['authorization'] = 'Bearer ' . $token;
    }
    $h = $headers + $h;
    $r = $e->api->handle(new Request($method, $path, $h, $raw ?? ($body === null ? '' : json_encode($body)), $ip, $secure));
    return [$r->status, $r->body, $r->headers];
}

function seedUser(Env $e, string $uid, string $type, string $agency = '', array $extra = []): void
{
    $e->db->docs["users/$uid"] = ['user_name' => "Ad $uid", 'user_type' => $type, 'agency_id' => $agency] + $extra;
}

function seedLogin(Env $e, string $uid, string $loginId, string $secret, string $kind = 'pin'): void
{
    $e->db->docs["login_ids/$loginId"] = ['uid' => $uid, 'created_at' => new Ts(T0)];
    $e->db->docs["auth_secrets/$uid"] = [
        'hash' => Secrets::hash($secret, 4, PEPPER), 'kind' => $kind,
        'updated_at' => new Ts(T0), 'updated_by' => 'seed',
    ];
}

function login(Env $e, string $id, string $secret, string $ip = '9.9.9.9'): array
{
    return call($e, 'POST', '/v1/auth/login', ['login_id' => $id, 'secret' => $secret], null, $ip);
}

/** Bağımsız (Permissions'tan bağımsız yazılmış) beklenen yetki tablosu = firestore.rules. */
function expectedAllowed(string $role, string $callerAgency, string $type, string $agency): bool
{
    if ($role === 'super_admin' || $role === 'root') {
        return true;
    }
    if ($role === 'yonetici') {
        return ($type === 'misafir' || $type === 'acente_admin') && $agency !== '';
    }
    if ($role === 'acente_admin') {
        return $type === 'misafir' && $agency === $callerAgency && $callerAgency !== '';
    }
    return false; // destek, muhasebe, misafir, esnaf
}

const ROLES = ['super_admin', 'yonetici', 'acente_admin', 'destek', 'muhasebe', 'misafir', 'esnaf', 'root'];
const TYPES = ['super_admin', 'yonetici', 'acente_admin', 'destek', 'muhasebe', 'misafir'];

/** Rol için Bearer jetonu (root: kullanıcı belgesi yok, e-posta + şifreli giriş). */
function tokenFor(Env $e, string $role, string $agency = 'A'): string
{
    if ($role === 'root') {
        $e->idp->addLegacy('rootuid', ROOT_EMAIL, '10000000146');
        return rootToken();
    }
    seedUser($e, "c_$role", $role, $role === 'acente_admin' ? $agency : '');
    return idToken(['uid' => "c_$role"]);
}

function countPrefix(FakeFirestore $db, string $prefix): int
{
    return count(array_filter(array_keys($db->docs), static fn($k) => str_starts_with((string)$k, $prefix)));
}

// ================================================================== TESTLER

test('FirestoreValue: gidiş-dönüş', function () {
    $data = ['s' => 'çğış', 'i' => 5, 'b' => true, 'n' => null, 'f' => 1.5, 't' => new Ts(T0), 'l' => ['a', 'b'], 'm' => ['x' => 1], 'e' => []];
    $enc = FirestoreValue::encodeFields($data);
    same('5', $enc['i']['integerValue']);
    ok(isset($enc['t']['timestampValue']), 'timestamp');
    $dec = FirestoreValue::decodeFields(json_decode(json_encode($enc), true));
    same('çğış', $dec['s']);
    same(5, $dec['i']);
    same(true, $dec['b']);
    same(null, $dec['n']);
    same(T0, $dec['t']->t);
    same(['a', 'b'], $dec['l']);
    same(['x' => 1], $dec['m']);
    same('{}', json_encode(FirestoreValue::encodeFields([])), 'boş alanlar nesne olmalı');
    same(T0, Ts::parse('2027-01-15T08:00:00.123456789Z')->t - (Ts::parse('2027-01-15T08:00:00Z')->t - T0));
});

test('Gizli bilgi üretim biçimleri', function () {
    for ($i = 0; $i < 300; $i++) {
        $pin = Secrets::pin();
        ok(preg_match('/^\d{6}$/', $pin) === 1, "pin $pin");
        ok(!Secrets::isWeakPin($pin), "üretilen PIN zayıf değil $pin");
        $pw = Secrets::password();
        ok(strlen($pw) === 10, "şifre uzunluğu $pw");
        ok(preg_match('/^[abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ23456789]{10}$/', $pw) === 1, "karışan karakter yok $pw");
        ok(preg_match('/[a-zA-Z]/', $pw) === 1 && preg_match('/[0-9]/', $pw) === 1, "harf+rakam $pw");
        $id = Secrets::loginId();
        ok(preg_match('/^[1-9]\d{6}$/', $id) === 1, "login_id $id");
    }
    same(40, strlen(Secrets::scramble(40)));
    ok(Secrets::scramble() !== Secrets::scramble(), 'scramble rastgele');
    same('pin', Accounts::kindFor('misafir'));
    foreach (['super_admin', 'yonetici', 'acente_admin', 'destek', 'muhasebe'] as $t) {
        same('password', Accounts::kindFor($t));
    }
    ok(Secrets::isLoginId('1234567') && !Secrets::isLoginId('0123456') && !Secrets::isLoginId('123456') && !Secrets::isLoginId('12345678') && !Secrets::isLoginId("1234567\n") && !Secrets::isLoginId('12a4567'), 'isLoginId');
    ok(Secrets::isPin('000123') && !Secrets::isPin('12345') && !Secrets::isPin('1234567') && !Secrets::isPin('12345a'), 'isPin');
    ok(Secrets::equals('abc', 'abc') && !Secrets::equals('abc', 'abd'), 'equals');
});

test('Zayıf PIN listesi', function () {
    foreach (['000000', '999999', '123456', '234567', '456789', '789012', '890123', '654321', '987654', '210987',
        '121212', '909090', '123123', '520520', '197519', '198819', '200120', '112233', '159753'] as $p) {
        ok(Secrets::isWeakPin($p), "zayıf: $p");
    }
    foreach (['482913', '000789', '730561', '193020', '201919', '135792', '914826'] as $p) {
        ok(!Secrets::isWeakPin($p), "zayıf değil: $p");
    }
    ok(Secrets::isWeakPin('12345') && Secrets::isWeakPin('abcdef'), 'biçimsiz PIN zayıf sayılır');
});

test('Biberli bcrypt: biber olmadan/yanlış biberle doğrulanmaz, sahte özet maliyeti', function () {
    $h = Secrets::hash('482913', 4, PEPPER);
    ok(Secrets::verify('482913', $h, PEPPER), 'doğru biber');
    ok(!Secrets::verify('482913', $h, PEPPER . 'x'), 'yanlış biber');
    ok(!password_verify('482913', $h), 'düz bcrypt ile doğrulanmaz');
    same(4, password_get_info($h)['options']['cost']);
    ok(Secrets::verify(str_repeat('ğ', 100), Secrets::hash(str_repeat('ğ', 100), 4, PEPPER), PEPPER), 'uzun gizli bilgi (72 bayt üstü)');
    ok(!Secrets::verify(str_repeat('a', 80) . 'X', Secrets::hash(str_repeat('a', 80) . 'Y', 4, PEPPER), PEPPER), '72 bayttan sonrası da sayılır');
    $dir = tmpdir('umre-cache-');
    $d5 = Secrets::dummyHash(5, new FileCache($dir));
    same(5, password_get_info($d5)['options']['cost'], 'sahte özet yapılandırılmış maliyette');
    same($d5, Secrets::dummyHash(5), 'süreç içinde önbellekli');
    same($d5, (new FileCache($dir))->get('dummy_hash_5')['hash'] ?? null, 'dosyada önbellekli');
    ok(!Secrets::validPepper('kisa') && !Secrets::validPepper(null) && !Secrets::validPepper('BURAYA-EN-AZ-32-BAYTLIK-RASTGELE-DEGER') && Secrets::validPepper(PEPPER), 'biber denetimi');
    try {
        env(['pepper' => 'kisa']);
        ok(false, 'kısa biberle Api kurulmamalı');
    } catch (\RuntimeException $e) {
        ok(true);
    }
});

test('Permissions: sınıf tablosu bağımsız beklenenle (kurallarla) aynı', function () {
    foreach (ROLES as $role) {
        foreach (TYPES as $type) {
            foreach (['A', 'B', ''] as $ag) {
                same(
                    expectedAllowed($role, 'A', $type, $ag),
                    Permissions::canManage($role === 'root' ? 'super_admin' : $role, 'A', $type, $ag),
                    "$role->$type/$ag"
                );
            }
        }
    }
    ok(!Permissions::canManage('acente_admin', '', 'misafir', ''), 'acentesiz acente_admin hiçbir şey yönetemez');
    ok(!Permissions::canManage('destek', '', 'misafir', 'A'), 'destek hiçbir şey');
    ok(!Permissions::canManage('yonetici', '', 'destek', ''), 'yönetici personel açamaz');
});

test('login: başarı, custom token talepleri ve imza', function () {
    global $SA_PUB, $OTHER_PUB;
    $e = env();
    seedUser($e, 'u1', 'misafir', 'A');
    seedLogin($e, 'u1', '1234567', '482913');
    [$st, $b, $h] = login($e, '1234567', '482913');
    same(200, $st);
    same('max-age=31536000', $h['Strict-Transport-Security'] ?? null, 'HSTS');
    ok(isset($b['token']), 'token var');
    $p = Jwt::parse($b['token']);
    same('RS256', $p['header']['alg']);
    $c = $p['claims'];
    same('svc@' . PROJECT . '.iam.gserviceaccount.com', $c['iss']);
    same($c['iss'], $c['sub']);
    same(CustomTokenMinter::AUD, $c['aud']);
    same('u1', $c['uid']);
    same(T0, $c['iat']);
    same(T0 + 3600, $c['exp']);
    ok(Jwt::verifyRs256($p['input'], $p['sig'], $SA_PUB), 'imza geçerli');
    ok(!Jwt::verifyRs256($p['input'], $p['sig'], $OTHER_PUB), 'yabancı anahtarla geçersiz');
    $tampered = explode('.', $b['token']);
    $tampered[1] = Jwt::b64e(json_encode(['uid' => 'admin'] + $c));
    $t = Jwt::parse(implode('.', $tampered));
    ok(!Jwt::verifyRs256($t['input'], $t['sig'], $SA_PUB), 'değiştirilmiş yük reddedilir');
});

test('login: yanlış ID, yanlış gizli bilgi, devre dışı, hazır olmayan hesap TEK hata', function () {
    $e = env();
    seedUser($e, 'u1', 'misafir', 'A');
    seedLogin($e, 'u1', '1234567', '482913');
    $wrong = login($e, '1234567', '000000');
    same(401, $wrong[0]);
    same('invalid_credentials', $wrong[1]['error']);
    same(Api::MSG_INVALID, $wrong[1]['message']);
    same($wrong, login($e, '7654321', '000000'), 'bilinmeyen id');
    same($wrong, login($e, 'abc', '000000'), 'biçimsiz id');
    $e->db->docs['login_ids/2222222'] = ['uid' => 'ghost'];
    same($wrong, login($e, '2222222', 'x'), 'sırsız hesap');
    seedUser($e, 'd1', 'misafir', 'A', ['disabled' => true]);
    seedLogin($e, 'd1', '3333333', '730561');
    same($wrong, login($e, '3333333', '730561'), 'devre dışı (doğru PIN)');
    seedUser($e, 'd2', 'misafir', 'A', ['disabled' => 'true']);
    seedLogin($e, 'd2', '3333334', '730561');
    same($wrong, login($e, '3333334', '730561'), 'disabled "true" metni de devre dışı');
    seedLogin($e, 'u2', '1234568', '914826');
    same($wrong, login($e, '1234568', '914826'), 'users belgesi yok (account_not_ready)');
    same(401, login($e, '1234567', '')[0], 'boş secret de 401');
    same('invalid_request', call($e, 'POST', '/v1/auth/login', ['login_id' => 1234567, 'secret' => '1'])[1]['error']);
    ok(!str_contains(json_encode($wrong), 'locked') && !isset($wrong[1]['retry_after']), 'kilit bilgisi sızmaz');
});

test('kilit: (hesap, ağ) başına; kilitliyken doğru PIN de reddedilir; başka ağ etkilenmez; 15 dk sonra açılır', function () {
    $e = env();
    seedUser($e, 'u1', 'misafir', 'A');
    seedLogin($e, 'u1', '1234567', '482913');
    for ($i = 1; $i <= 5; $i++) {
        same('invalid_credentials', login($e, '1234567', '000000', '5.5.5.5')[1]['error'], "deneme $i");
    }
    ok(countPrefix($e->db, 'auth_attempts/') > 0, 'deneme belgesi var');
    $e->clock->advance(100);
    same('invalid_credentials', login($e, '1234567', '482913', '5.5.5.5')[1]['error'], 'kilitli ağda doğru PIN reddedilir');
    same(200, login($e, '1234567', '482913', '6.6.6.6')[0], 'hesabın sahibi başka ağdan girer (DoS yok)');
    $e->clock->advance(799);
    same(401, login($e, '1234567', '482913', '5.5.5.5')[0], '1 sn kala hâlâ kilitli');
    $e->clock->advance(1);
    same(200, login($e, '1234567', '482913', '5.5.5.5')[0], 'kilit açıldı');
    for ($i = 0; $i < 4; $i++) {
        same(401, login($e, '1234567', '000000', '5.5.5.5')[0]);
    }
    same(200, login($e, '1234567', '482913', '5.5.5.5')[0], '4 hata sonrası doğru giriş çalışır');
    // başarı sayacı sıfırlar: tekrar 4 hata kilitlemez
    for ($i = 0; $i < 4; $i++) {
        login($e, '1234567', '000000', '5.5.5.5');
    }
    same(200, login($e, '1234567', '482913', '5.5.5.5')[0], 'başarı sayacı sıfırladı');
    // IPv6: aynı /64 içindeki farklı adresler aynı kilidi paylaşır
    for ($i = 1; $i <= 5; $i++) {
        login($e, '1234567', '000000', "2001:db8:1:2::$i");
    }
    same(401, login($e, '1234567', '482913', '2001:db8:1:2:ffff::9')[0], 'aynı /64 kilitli');
    same(200, login($e, '1234567', '482913', '2001:db8:1:3::1')[0], 'başka /64 serbest');
});

test('kilit yarışı: paralel isteklerde pencere başına en fazla max_failed doğrulama', function () {
    $db = new FakeFirestore();
    $clock = new Clock();
    $clock->set(T0);
    $lo = new Lockout($db, $clock, PEPPER, 5, 900);
    // 30 istek AYNI ANDA kilit denetimini geçer (henüz kimse hata yazmadı), sonra doğrular.
    $granted = 0;
    for ($i = 0; $i < 30; $i++) {
        if ($lo->acquire('u1', '1.2.3.4', 'g')) {
            $granted++;
        }
    }
    same(5, $granted, 'yalnız 5 doğrulama hakkı');
    // hepsi başarısız olsun: kilit yazılır; pencere bitse bile kilit tam 900 sn sürer
    $lo->failed('u1', '1.2.3.4', 'g');
    $clock->advance(899);
    ok(!$lo->acquire('u1', '1.2.3.4', 'g'), 'kilit sürüyor');
    $clock->advance(1);
    ok($lo->acquire('u1', '1.2.3.4', 'g'), 'kilit bitti');
    // farklı kuşak (yeni PIN) farklı anahtar
    $lo2 = new Lockout($db, $clock, PEPPER, 5, 900);
    ok($lo2->acquire('u1', '1.2.3.4', 'yeni'), 'yeni gizli bilgide eski kilit yok');
    // uçtan uca: kilitli hesapta gerçek doğrulama yapılmaz (sayaç 5'i aşınca bcrypt atlanır)
    $e = env();
    seedUser($e, 'u1', 'misafir', 'A');
    seedLogin($e, 'u1', '1234567', '482913');
    for ($i = 0; $i < 12; $i++) {
        login($e, '1234567', '000000', '7.7.7.7');
    }
    $max = 0;
    foreach ($e->db->docs as $k => $d) {
        if (str_starts_with((string)$k, 'auth_attempts/') && isset($d['n'])) {
            $max = max($max, $d['n']);
        }
    }
    same(5, $max, 'kilitten sonra sayaç artmaz: 12 denemede yalnız 5 gerçek doğrulama');
});

test('Kullanıcı ID sınırı: misafir için tüm IP\'lerde saatte 50; bilinmeyen ID de sayılır; personel muaf', function () {
    $e = env();
    seedUser($e, 'g1', 'misafir', 'A');
    seedLogin($e, 'g1', '1234567', '482913');
    for ($i = 0; $i < 50; $i++) {
        login($e, '1234567', '000000', "10.0.$i.1");
    }
    same(401, login($e, '1234567', '482913', '10.9.9.9')[0], '51. deneme (doğru PIN, yeni IP) reddedilir');
    $e->clock->advance(3600);
    same(200, login($e, '1234567', '482913', '10.9.9.9')[0], 'saat dolunca açılır');
    // bilinmeyen ID'ler de sayılır
    for ($i = 0; $i < 50; $i++) {
        login($e, '7777777', '000000', "11.0.$i.1");
    }
    ok($e->limiter->hit('login:id:' . Secrets::mac(PEPPER, '7777777'), 50, 3600) > 0, 'bilinmeyen ID sınırda');
    // personel: ID sınırı yok, yalnız (hesap, ağ) kilidi
    seedUser($e, 's1', 'yonetici');
    seedLogin($e, 's1', '2222222', 'Abcdef2345', 'password');
    for ($i = 0; $i < 60; $i++) {
        login($e, '2222222', 'yanlis-sifre', "12.0.$i.1");
    }
    same(200, login($e, '2222222', 'Abcdef2345', '12.9.9.9')[0], 'personel hesabı herkese kilitlenmez');
});

test('IP hız sınırı: 10 dk\'da 30 deneme; XFF ile aşılamaz; global sınır', function () {
    $e = env();
    for ($i = 1; $i <= 30; $i++) {
        same(401, login($e, '7654321', '000000', '5.5.5.5')[0], "deneme $i");
        $e->clock->advance(1);
    }
    [$st, $b] = login($e, '7654321', '000000', '5.5.5.5');
    same(429, $st);
    same('rate_limited', $b['error']);
    ok($b['retry_after'] > 0 && $b['retry_after'] <= 600, 'retry_after ' . $b['retry_after']);
    same(401, login($e, '7654321', '000000', '6.6.6.6')[0], 'başka IP serbest');
    $e->clock->advance(600);
    same(401, login($e, '7654321', '000000', '5.5.5.5')[0], 'pencere geçti');
    // IPv6 /64
    for ($i = 1; $i <= 30; $i++) {
        login($e, '7654321', '000000', "2001:db8::$i");
    }
    same(429, login($e, '7654321', '000000', '2001:db8::ffff')[0], 'aynı /64 tek IP sayılır');
    // istemci IP'si: başlık yoksa REMOTE_ADDR; en soldaki XFF asla alınmaz
    $srv = ['REMOTE_ADDR' => '203.0.113.5', 'HTTP_X_FORWARDED_FOR' => '1.1.1.1, 198.51.100.7'];
    same('203.0.113.5', Request::clientIp($srv, ['ip_header' => null]), 'ip_header yoksa başlık yok sayılır');
    same('198.51.100.7', Request::clientIp($srv, ['ip_header' => 'X-Forwarded-For', 'trusted_proxies' => 0]), 'en sağdaki');
    same('1.1.1.1', Request::clientIp($srv, ['ip_header' => 'X-Forwarded-For', 'trusted_proxies' => 1]), 'bir vekil atlanır');
    same('203.0.113.5', Request::clientIp($srv, ['ip_header' => 'X-Forwarded-For', 'trusted_proxies' => 5]), 'liste kısa: REMOTE_ADDR');
    same('203.0.113.5', Request::clientIp(['REMOTE_ADDR' => '203.0.113.5', 'HTTP_X_FORWARDED_FOR' => 'çöp'], ['ip_header' => 'X-Forwarded-For']), 'geçersiz değer');
    same('2001:db8:1:2::/64', Request::ipKey('2001:db8:1:2:aaaa:bbbb:cccc:dddd'));
    same('192.0.2.1', Request::ipKey('::ffff:192.0.2.1'), 'IPv4 eşlemeli');
    same('192.0.2.1', Request::ipKey('192.0.2.1'));
    // global sınır
    $g = env(['global_limit' => 3, 'global_window' => 60]);
    for ($i = 0; $i < 3; $i++) {
        login($g, '7654321', '000000', "20.0.0.$i");
    }
    same('rate_limited', login($g, '7654321', '000000', '21.0.0.1')[1]['error'], 'global sınır');
    // hız sınırı gövde doğrulamasından önce uygulanır
    same(400, call($e, 'POST', '/v1/auth/login', null, null, '7.7.7.7', 'bozuk')[0]);
});

test('RateLimiter: alt klasör başına dosya sınırı, temizlik istek yolunda değil', function () {
    $clock = new Clock();
    $clock->set(T0);
    $dir = tmpdir('umre-rl-');
    $rl = new RateLimiter($dir, $clock, 1);
    // aynı alt klasöre düşen iki farklı anahtar bul
    $first = null;
    $second = null;
    for ($i = 0; $i < 5000 && $second === null; $i++) {
        $k = "k$i";
        $s = substr(hash('sha256', $k), 0, 2);
        if ($first === null) {
            $first = [$k, $s];
        } elseif ($s === $first[1]) {
            $second = $k;
        }
    }
    same(0, $rl->hit($first[0], 10, 60));
    same(0, $rl->hit($first[0], 10, 60), 'var olan anahtar çalışır');
    ok($rl->hit((string)$second, 10, 60) > 0, 'dolu klasörde yeni anahtar reddedilir');
    $f = glob($dir . '/*/*.json');
    same(1, count($f));
    touch($f[0], T0 - 3 * 86400);
    same(1, $rl->cleanup(T0 - 2 * 86400), 'cleanup eski dosyayı siler');
});

test('ID jetonu doğrulama', function () {
    global $OTHER_PRIV;
    $e = env();
    $v = $e->verifier;
    $c = $v->verify(idToken(['uid' => 'abc']));
    same('abc', $c['sub']);
    $bad = static function (string $tok) use ($v): string {
        try {
            $v->verify($tok);
            return 'kabul edildi';
        } catch (ApiException $ex) {
            return $ex->errorCode . '/' . $ex->status;
        }
    };
    same('invalid_token/401', $bad(idToken(['claims' => ['exp' => T0 - 1]])), 'süresi dolmuş');
    same('invalid_token/401', $bad(idToken(['claims' => ['aud' => 'baska']])), 'aud');
    same('invalid_token/401', $bad(idToken(['claims' => ['iss' => 'https://securetoken.google.com/baska']])), 'iss');
    same('invalid_token/401', $bad(idToken(['key' => $OTHER_PRIV])), 'yabancı imza');
    same('invalid_token/401', $bad(idToken(['kid' => 'yok'])), 'bilinmeyen kid');
    same('invalid_token/401', $bad(idToken(['drop' => ['sub']])), 'sub yok');
    same('invalid_token/401', $bad(idToken(['claims' => ['sub' => '']])), 'sub boş');
    same('invalid_token/401', $bad(idToken(['claims' => ['iat' => T0 + 10000]])), 'iat gelecekte');
    same('invalid_token/401', $bad(idToken(['claims' => ['auth_time' => T0 + 10000]])), 'auth_time gelecekte');
    same('invalid_token/401', $bad('abc.def.ghi'), 'çöp');
    same('invalid_token/401', $bad(''), 'boş');
    same('invalid_token/401', $bad(Jwt::unsigned(['sub' => 'x', 'aud' => PROJECT, 'iss' => 'https://securetoken.google.com/' . PROJECT, 'iat' => T0, 'exp' => T0 + 100])), 'alg none');
    $hs = Jwt::b64e('{"alg":"HS256","typ":"JWT","kid":"k1"}') . '.' . Jwt::b64e(json_encode(['sub' => 'x'])) . '.' . Jwt::b64e('imza');
    same('invalid_token/401', $bad($hs), 'HS256');
    $parts = explode('.', idToken());
    same('invalid_token/401', $bad($parts[0] . '.' . $parts[1] . '.'), 'imzasız');
    ok($e->certs->refreshCalls >= 1, 'bilinmeyen kid yenileme tetikledi');
    $emu = new IdTokenVerifier(PROJECT, $e->certs, $e->clock, true);
    $none = Jwt::unsigned(['sub' => 'emu', 'aud' => PROJECT, 'iss' => 'https://securetoken.google.com/' . PROJECT, 'iat' => T0, 'exp' => T0 + 100]);
    same('emu', $emu->verify($none)['sub']);
    // sub biçimi (yol enjeksiyonu) Api'de reddedilir
    same('invalid_token', call($e, 'POST', '/v1/auth/change-secret', ['old_secret' => 'a', 'new_secret' => 'b'], idToken(['uid' => '../users/x']))[1]['error'], 'sub isId');
});

test('Bearer yok/geçersiz', function () {
    $e = env();
    same('unauthorized', call($e, 'POST', '/v1/auth/change-secret', ['old_secret' => 'a', 'new_secret' => 'b'])[1]['error']);
    [$st, $b] = call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'misafir', 'agency_id' => 'A'], 'bozuk.jeton.x');
    same(401, $st);
    same('invalid_token', $b['error']);
    same('unauthorized', call($e, 'POST', '/v1/admin/accounts', [], null, '1.1.1.1', '{}', ['authorization' => 'Basic abc'])[1]['error']);
});

test('auth_time: yönetim uçları 12 saat, migrate 15 dk', function () {
    $e = env();
    $old = idToken(['uid' => 'c_super_admin', 'claims' => ['auth_time' => T0 - 13 * 3600]]);
    seedUser($e, 'c_super_admin', 'super_admin');
    same('reauth_required', call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'destek'], $old)[1]['error'], '13 saatlik oturum');
    same('reauth_required', call($e, 'POST', '/v1/admin/reset-secret', ['uid' => 'x'], $old)[1]['error']);
    same('reauth_required', call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'destek'], idToken(['uid' => 'c_super_admin', 'drop' => ['auth_time']]))[1]['error'], 'auth_time yok');
    $mid = idToken(['uid' => 'c_super_admin', 'claims' => ['auth_time' => T0 - 3600]]);
    same(200, call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'destek'], $mid)[0], '1 saatlik oturum yönetimde geçer');
    same('reauth_required', call($e, 'POST', '/v1/admin/migrate', ['dry_run' => true], $mid)[1]['error'], 'migrate için 1 saat fazla');
    $fresh = idToken(['uid' => 'c_super_admin', 'claims' => ['auth_time' => T0 - 600]]);
    same(200, call($e, 'POST', '/v1/admin/migrate', ['dry_run' => true], $fresh)[0], 'migrate 10 dk');
});

test('kök tanıma: root_uid, e-posta yalnız şifreli girişte yedek', function () {
    $e = env();
    same(200, call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'destek'], rootToken())[0], 'e-posta + password sağlayıcı');
    same('forbidden', call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'destek'], idToken(['uid' => 'sahte', 'email' => ROOT_EMAIL, 'provider' => 'custom']))[1]['error'], 'custom token e-posta taşısa da kök değil');
    $r = env(['root_uid' => 'gercekkok']);
    same('forbidden', call($r, 'POST', '/v1/admin/accounts', ['user_type' => 'destek'], rootToken())[1]['error'], 'root_uid varken e-posta yetmez');
    same(200, call($r, 'POST', '/v1/admin/accounts', ['user_type' => 'destek'], idToken(['uid' => 'gercekkok']))[0], 'root_uid eşleşmesi');
});

test('change-secret: PIN tam 6 rakam ve zayıf değil, personel 8-128 karakter, oturumlar kapanır', function () {
    $e = env();
    seedUser($e, 'g1', 'misafir', 'A');
    seedLogin($e, 'g1', '1111111', '482913', 'pin');
    $e->idp->addPlain('g1');
    $tok = fn() => idToken(['uid' => 'g1', 'now' => $e->clock->now()]);
    foreach (['12345', '1234567', '12345a', 'abcdef', '', '12 456'] as $badPin) {
        $e->clock->advance(200); // çağıran sınırı (15 dk'da 5) bu döngüyü kesmesin
        same('invalid_secret', call($e, 'POST', '/v1/auth/change-secret', ['old_secret' => '482913', 'new_secret' => $badPin], $tok())[1]['error'], "pin '$badPin'");
    }
    $e->clock->advance(900);
    foreach (['123456', '111111', '121212'] as $weak) {
        [$st, $b] = call($e, 'POST', '/v1/auth/change-secret', ['old_secret' => '482913', 'new_secret' => $weak], $tok());
        same(400, $st);
        same('weak_secret', $b['error'], "zayıf $weak");
    }
    same('invalid_secret', call($e, 'POST', '/v1/auth/change-secret', ['old_secret' => '482913', 'new_secret' => '482913'], $tok())[1]['error'], 'aynı PIN');
    $e->clock->advance(900);
    same(['ok' => true, 'relogin' => true], call($e, 'POST', '/v1/auth/change-secret', ['old_secret' => '482913', 'new_secret' => '000789'], $tok())[1]);
    same($e->clock->now(), $e->idp->users['g1']['valid_since'] ?? null, 'oturumlar kapatıldı (validSince)');
    same(200, login($e, '1111111', '000789')[0], 'yeni PIN ile giriş');
    same(401, login($e, '1111111', '482913')[0], 'eski PIN artık geçersiz');
    same('pin', $e->db->docs['auth_secrets/g1']['kind']);
    same('g1', $e->db->docs['auth_secrets/g1']['updated_by']);

    seedUser($e, 's1', 'yonetici');
    seedLogin($e, 's1', '2222222', 'Abcdef2345', 'password');
    $t2 = fn() => idToken(['uid' => 's1', 'now' => $e->clock->now()]);
    foreach (['abc1234', '1234567', ''] as $short) {
        same('invalid_secret', call($e, 'POST', '/v1/auth/change-secret', ['old_secret' => 'Abcdef2345', 'new_secret' => $short], $t2())[1]['error'], "kısa '$short'");
    }
    $e->clock->advance(900);
    same('invalid_secret', call($e, 'POST', '/v1/auth/change-secret', ['old_secret' => 'Abcdef2345', 'new_secret' => str_repeat('a', 129)], $t2())[1]['error'], '128 bayttan uzun');
    same(200, call($e, 'POST', '/v1/auth/change-secret', ['old_secret' => 'Abcdef2345', 'new_secret' => str_repeat('b', 100)], $t2())[0], '100 karakter kabul (biber 72 bayt sınırını kaldırır)');
    same(200, call($e, 'POST', '/v1/auth/change-secret', ['old_secret' => str_repeat('b', 100), 'new_secret' => 'çok güvenli parola 1'], $t2())[0], 'Türkçe/boşluk kabul');
    same(200, login($e, '2222222', 'çok güvenli parola 1')[0]);
});

test('change-secret: yanlış eski, çağıran başına 15 dk\'da 5, kayıtsız hesap, eksik alan', function () {
    $e = env();
    seedUser($e, 'g1', 'misafir', 'A');
    seedLogin($e, 'g1', '1111111', '482913');
    $tok = idToken(['uid' => 'g1']);
    for ($i = 1; $i <= 5; $i++) {
        [$st, $b] = call($e, 'POST', '/v1/auth/change-secret', ['old_secret' => '999999', 'new_secret' => '730561'], $tok);
        same(403, $st);
        same('wrong_old_secret', $b['error']);
    }
    [$st, $b] = call($e, 'POST', '/v1/auth/change-secret', ['old_secret' => '482913', 'new_secret' => '730561'], $tok);
    same(429, $st, '6. deneme doğru eski PIN ile de sınırda');
    same('rate_limited', $b['error']);
    same(200, login($e, '1111111', '482913')[0], 'girişi etkilemez');
    $e->clock->advance(900);
    same(200, call($e, 'POST', '/v1/auth/change-secret', ['old_secret' => '482913', 'new_secret' => '730561'], $tok)[0], 'pencere sonra');
    seedUser($e, 'x', 'esnaf');
    same('no_secret', call($e, 'POST', '/v1/auth/change-secret', ['old_secret' => 'a', 'new_secret' => 'b'], idToken(['uid' => 'x']))[1]['error']);
    same('invalid_request', call($e, 'POST', '/v1/auth/change-secret', ['old_secret' => 'a'], idToken(['uid' => 'x']))[1]['error']);
});

test('accounts: yetki matrisi (her rol x her hedef)', function () {
    foreach (ROLES as $role) {
        foreach (TYPES as $type) {
            $agencies = in_array($type, ['misafir', 'acente_admin'], true) ? ['A', 'B'] : [''];
            foreach ($agencies as $ag) {
                $e = env();
                $tok = tokenFor($e, $role, 'A');
                $before = count($e->idp->users);
                [$st, $b] = call($e, 'POST', '/v1/admin/accounts', ['user_type' => $type, 'agency_id' => $ag], $tok);
                $callerAgency = $role === 'acente_admin' ? 'A' : '';
                $exp = expectedAllowed($role, $callerAgency, $type, $ag);
                $label = "$role -> $type/$ag";
                if ($exp) {
                    same(200, $st, $label);
                    ok(preg_match('/^[1-9]\d{6}$/', (string)($b['login_id'] ?? '')) === 1, "$label login_id");
                    $kind = $type === 'misafir' ? 'pin' : 'password';
                    ok($kind === 'pin' ? preg_match('/^\d{6}$/', (string)$b['secret']) === 1 : strlen((string)$b['secret']) === 10, "$label secret biçimi");
                    ok(isset($e->idp->users[$b['uid']]) && $e->idp->users[$b['uid']]['email'] === null && $e->idp->users[$b['uid']]['password'] === null, "$label Auth kullanıcısı e-postasız/şifresiz");
                    same($b['uid'], $e->db->docs['login_ids/' . $b['login_id']]['uid'], "$label login_ids yanıttan önce yazıldı");
                    $sec = $e->db->docs['auth_secrets/' . $b['uid']];
                    ok(Secrets::verify($b['secret'], $sec['hash'], PEPPER), "$label hash doğrulanır");
                    ok(!str_contains(json_encode($sec), (string)$b['secret']), "$label düz metin saklanmaz");
                    same($kind, $sec['kind'], "$label kind");
                    ok(!isset($e->db->docs['users/' . $b['uid']]), "$label users belgesini servis yazmaz");
                    $logs = $e->db->auditLogs();
                    same(1, count($logs), "$label audit sayısı");
                    same('ok', $logs[0]['status'] ?? null, "$label audit tamamlandı");
                    same($b['uid'], $logs[0]['target_id'] ?? null, "$label audit hedef");
                    ok(!str_contains(json_encode($logs), (string)$b['secret']), "$label audit'te gizli bilgi yok");
                } else {
                    same(403, $st, $label);
                    same('forbidden', $b['error'] ?? null, $label);
                    same($before, count($e->idp->users), "$label Auth kullanıcısı açılmadı");
                    same([], $e->db->auditLogs(), "$label audit yok");
                    same(0, countPrefix($e->db, 'login_ids/'), "$label login_ids yazılmadı");
                }
            }
        }
    }
});

test('accounts: doğrulama, acente kontrolü, çağıran sınırı, devre dışı çağıran', function () {
    $e = env(['create_limit' => 8]);
    $tok = tokenFor($e, 'super_admin');
    same('invalid_request', call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'esnaf', 'agency_id' => 'A'], $tok)[1]['error'], 'esnaf desteklenmez');
    same('invalid_request', call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'x'], $tok)[1]['error']);
    same('invalid_request', call($e, 'POST', '/v1/admin/accounts', ['agency_id' => 'A'], $tok)[1]['error']);
    same('invalid_request', call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'misafir'], $tok)[1]['error'], 'misafir acentesiz');
    same('invalid_request', call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'misafir', 'agency_id' => '../users/x'], $tok)[1]['error'], 'yol enjeksiyonu');
    same('agency_not_found', call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'misafir', 'agency_id' => 'YOK'], $tok)[1]['error']);
    same(200, call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'destek'], $tok)[0], 'agency_id isteğe bağlı');
    [$st, $b] = call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'misafir', 'agency_id' => 'A'], $tok);
    $log = $e->db->auditLogs();
    $l = end($log);
    foreach (['actor_uid', 'actor_name', 'actor_role', 'action', 'target_type', 'target_id', 'target_name', 'details', 'created_at', 'status'] as $k) {
        ok(array_key_exists($k, $l), "audit alanı $k");
    }
    same('c_super_admin', $l['actor_uid']);
    same('user_create', $l['action']);
    same($b['uid'], $l['target_id']);
    ok($l['created_at'] instanceof Ts, 'created_at timestamp');
    for ($i = 0; $i < 6; $i++) {
        call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'destek'], $tok);
    }
    same('rate_limited', call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'destek'], $tok)[1]['error'], 'çağıran başına günlük sınır');
    $e->db->docs['users/c_super_admin']['disabled'] = true;
    same('account_disabled', call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'misafir', 'agency_id' => 'A'], $tok)[1]['error']);
    same('forbidden', call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'misafir', 'agency_id' => 'A'], idToken(['uid' => 'hayalet']))[1]['error']);
});

test('accounts: yeni hesapla giriş uçtan uca (users belgesini uygulama yazar)', function () {
    $e = env();
    $tok = tokenFor($e, 'yonetici');
    [$st, $b] = call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'misafir', 'agency_id' => 'A'], $tok);
    same(200, $st);
    same('invalid_credentials', login($e, $b['login_id'], $b['secret'])[1]['error'], 'uygulama users belgesini yazana dek giriş yok');
    seedUser($e, $b['uid'], 'misafir', 'A', ['login_id' => $b['login_id']]);
    [$st, $t] = login($e, $b['login_id'], $b['secret'], '8.8.4.4');
    same(200, $st);
    same($b['uid'], Jwt::parse($t['token'])['claims']['uid']);
});

test('denetim kaydı yazılamazsa işlem yapılmaz', function () {
    $db = new class extends FakeFirestore {
        public function add(string $collection, array $data): string
        {
            throw new UpstreamException('audit kapalı');
        }
    };
    $e = env([], null, $db);
    $tok = tokenFor($e, 'super_admin');
    [$st, $b] = call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'destek'], $tok);
    same(502, $st);
    same([], $e->idp->users, 'Auth hesabı açılmadı');
    seedUser($e, 'g1', 'misafir', 'A');
    seedLogin($e, 'g1', '1111111', '482913');
    $h = $e->db->docs['auth_secrets/g1']['hash'];
    same(502, call($e, 'POST', '/v1/admin/reset-secret', ['uid' => 'g1'], $tok)[0]);
    same($h, $e->db->docs['auth_secrets/g1']['hash'], 'gizli bilgi değişmedi');
    same(502, call($e, 'POST', '/v1/admin/migrate', [], rootToken())[0], 'migrate de durur');
    same(0, countPrefix($e->db, 'login_ids/') - 1, 'migrate yeni login_id yazmadı');
});

test('login_id: tekillik, create-if-not-exists ile yeniden deneme', function () {
    $seq = ['1000001', '1000001', '1000002', '1000003'];
    $e = env([], function () use (&$seq) {
        return array_shift($seq);
    });
    $e->db->docs['login_ids/1000001'] = ['uid' => 'baskasi'];
    $tok = tokenFor($e, 'super_admin');
    [$st, $b] = call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'misafir', 'agency_id' => 'A'], $tok);
    same(200, $st);
    same('1000002', $b['login_id'], 'çakışmada bir sonrakini aldı');
    same('baskasi', $e->db->docs['login_ids/1000001']['uid'], 'mevcut kayıt ezilmedi');
    same('1000003', call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'misafir', 'agency_id' => 'A'], $tok)[1]['login_id']);
    $e2 = env([], fn() => '1000001');
    $e2->db->docs['login_ids/1000001'] = ['uid' => 'x'];
    $t2 = tokenFor($e2, 'super_admin');
    $n = count($e2->idp->users);
    [$st, $b] = call($e2, 'POST', '/v1/admin/accounts', ['user_type' => 'misafir', 'agency_id' => 'A'], $t2);
    same(502, $st);
    same('upstream_error', $b['error']);
    same($n, count($e2->idp->users), 'yarım Auth kullanıcısı silindi');
    same('failed', $e2->db->auditLogs()[0]['status'] ?? null, 'audit başarısız işaretlendi');
    $e3 = env([], fn() => '0123456');
    [$st] = call($e3, 'POST', '/v1/admin/accounts', ['user_type' => 'misafir', 'agency_id' => 'A'], tokenFor($e3, 'super_admin'));
    same(500, $st, 'geçersiz üretilmiş id kabul edilmez');
});

test('reset-secret: yetki matrisi (her rol x her hedef)', function () {
    foreach (ROLES as $role) {
        foreach (TYPES as $type) {
            $agencies = in_array($type, ['misafir', 'acente_admin'], true) ? ['A', 'B'] : [''];
            foreach ($agencies as $ag) {
                $e = env();
                $tok = tokenFor($e, $role, 'A');
                seedUser($e, 'target', $type, $ag, ['login_id' => '5555555']);
                seedLogin($e, 'target', '5555555', 'eskisifre', 'password');
                $oldHash = $e->db->docs['auth_secrets/target']['hash'];
                [$st, $b] = call($e, 'POST', '/v1/admin/reset-secret', ['uid' => 'target'], $tok);
                $exp = expectedAllowed($role, $role === 'acente_admin' ? 'A' : '', $type, $ag);
                $label = "$role -> $type/$ag";
                if ($exp) {
                    same(200, $st, $label);
                    same('5555555', $b['login_id'], "$label login_id korunur");
                    $kind = $type === 'misafir' ? 'pin' : 'password';
                    ok($kind === 'pin' ? preg_match('/^\d{6}$/', (string)$b['secret']) === 1 : strlen((string)$b['secret']) === 10, "$label biçim");
                    $sec = $e->db->docs['auth_secrets/target'];
                    ok($sec['hash'] !== $oldHash && Secrets::verify($b['secret'], $sec['hash'], PEPPER), "$label yeni hash");
                    same($kind, $sec['kind']);
                    same($role === 'root' ? 'rootuid' : 'c_' . $role, $sec['updated_by'], "$label updated_by");
                    same(true, $e->db->docs['users/target']['auth_migrated'] ?? null, "$label auth_migrated");
                } else {
                    same(403, $st, $label);
                    same($oldHash, $e->db->docs['auth_secrets/target']['hash'], "$label hash değişmedi");
                    same([], $e->db->auditLogs(), "$label audit yok");
                }
            }
        }
    }
});

test('reset-secret: eski kapı karıştırılır, oturum kapanır, kilit düşer, login_id üretimi, hatalar', function () {
    $e = env();
    $tok = tokenFor($e, 'yonetici');
    seedUser($e, 'g1', 'misafir', 'A', ['login_id' => '1111111', 'user_tc' => '11111111111']);
    seedLogin($e, 'g1', '1111111', '482913');
    $e->idp->addLegacy('g1', '11111111111@umrerehberim.app', '11111111111');
    for ($i = 0; $i < 5; $i++) {
        login($e, '1111111', '000000');
    }
    same(401, login($e, '1111111', '482913')[0], 'kilitli');
    $e->clock->advance(5);
    [$st, $b] = call($e, 'POST', '/v1/admin/reset-secret', ['uid' => 'g1'], $tok);
    same(200, $st);
    same(40, strlen((string)$e->idp->users['g1']['password']), 'TC şifresi 40 karakterle değişti');
    same(T0 + 5, $e->idp->users['g1']['valid_since'] ?? null, 'oturumlar kapatıldı');
    same(200, login($e, '1111111', $b['secret'])[0], 'yeni PIN aynı ağdan da çalışır (eski kilit düştü)');
    same(401, login($e, '1111111', '482913', '4.4.4.4')[0], 'eski PIN çalışmaz');
    $l = $e->db->auditLogs();
    same(1, count($l));
    same('secret_reset', $l[0]['action']);
    same('ok', $l[0]['status']);
    ok(!str_contains(json_encode($l), $b['secret']), 'audit gizli bilgi içermez');

    // karıştırma başarısızsa işlem tümden başarısız
    seedUser($e, 'g9', 'misafir', 'A', ['login_id' => '9191919']);
    seedLogin($e, 'g9', '9191919', '482913');
    $e->idp->addLegacy('g9', '99999999999@umrerehberim.app', '99999999999');
    $e->idp->failUpdate['g9'] = true;
    $h9 = $e->db->docs['auth_secrets/g9']['hash'];
    same(502, call($e, 'POST', '/v1/admin/reset-secret', ['uid' => 'g9'], $tok)[0]);
    same($h9, $e->db->docs['auth_secrets/g9']['hash'], 'gizli bilgi değişmedi');
    same('99999999999', $e->idp->users['g9']['password']);
    ok(!isset($e->db->docs['users/g9']['auth_migrated']), 'taşındı işaretlenmedi');

    // login_id'si olmayan hedef
    seedUser($e, 'g2', 'misafir', 'A');
    [$st, $b2] = call($e, 'POST', '/v1/admin/reset-secret', ['uid' => 'g2'], $tok);
    same(200, $st);
    same($b2['login_id'], $e->db->docs['users/g2']['login_id'], 'users.login_id yazıldı');
    same('g2', $e->db->docs['login_ids/' . $b2['login_id']]['uid']);
    seedUser($e, 'g3', 'misafir', 'A', ['login_id' => '3333333']);
    same('3333333', call($e, 'POST', '/v1/admin/reset-secret', ['uid' => 'g3'], $tok)[1]['login_id']);
    same('g3', $e->db->docs['login_ids/3333333']['uid']);
    seedUser($e, 'g4', 'misafir', 'A', ['login_id' => '1111111']);
    ok(call($e, 'POST', '/v1/admin/reset-secret', ['uid' => 'g4'], $tok)[1]['login_id'] !== '1111111', 'çakışan login_id devralınmadı');

    // bulunamayan = yetkisiz (403), kendine 403, kök hedef 403
    [$stNf, $bNf] = call($e, 'POST', '/v1/admin/reset-secret', ['uid' => 'yok'], $tok);
    same([403, 'forbidden'], [$stNf, $bNf['error']], 'bulunamayan 403 forbidden');
    seedUser($e, 'yb', 'super_admin');
    same(403, call($e, 'POST', '/v1/admin/reset-secret', ['uid' => 'yb'], $tok)[0], 'yetkisiz de 403');
    same(403, call($e, 'POST', '/v1/admin/reset-secret', ['uid' => 'c_yonetici'], $tok)[0], 'kendine 403');
    $sa = tokenFor($e, 'super_admin');
    $e->idp->addLegacy('rootuid', ROOT_EMAIL, 'x');
    seedUser($e, 'rootuid', 'super_admin');
    same(403, call($e, 'POST', '/v1/admin/reset-secret', ['uid' => 'rootuid'], $sa)[0], 'kök hesabı başkası yenileyemez');
    same('invalid_request', call($e, 'POST', '/v1/admin/reset-secret', ['uid' => '../x'], $tok)[1]['error']);
    same('invalid_request', call($e, 'POST', '/v1/admin/reset-secret', [], $tok)[1]['error']);
    seedUser($e, 'shop', 'esnaf');
    same('invalid_request', call($e, 'POST', '/v1/admin/reset-secret', ['uid' => 'shop'], $sa)[1]['error'], 'esnaf desteklenmez');
});

test('reset-secret: çağıran başına saatte sınır', function () {
    $e = env(['reset_limit' => 3]);
    $tok = tokenFor($e, 'super_admin');
    seedUser($e, 'g1', 'misafir', 'A');
    for ($i = 0; $i < 3; $i++) {
        same(200, call($e, 'POST', '/v1/admin/reset-secret', ['uid' => 'g1'], $tok)[0]);
    }
    same('rate_limited', call($e, 'POST', '/v1/admin/reset-secret', ['uid' => 'g1'], $tok)[1]['error']);
});

test('acente_admin: yalnız kendi acentesindeki misafir', function () {
    $e = env();
    $tok = tokenFor($e, 'acente_admin', 'A');
    seedUser($e, 'ga', 'misafir', 'A');
    seedUser($e, 'gb', 'misafir', 'B');
    seedUser($e, 'ra', 'acente_admin', 'A');
    same(200, call($e, 'POST', '/v1/admin/reset-secret', ['uid' => 'ga'], $tok)[0]);
    same(403, call($e, 'POST', '/v1/admin/reset-secret', ['uid' => 'gb'], $tok)[0], 'başka acente');
    same(403, call($e, 'POST', '/v1/admin/reset-secret', ['uid' => 'ra'], $tok)[0], 'aynı acentede ama misafir değil');
    same(200, call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'misafir', 'agency_id' => 'A'], $tok)[0]);
    same(403, call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'misafir', 'agency_id' => 'B'], $tok)[0]);
    same(403, call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'acente_admin', 'agency_id' => 'A'], $tok)[0]);
    seedUser($e, 'orphan', 'acente_admin', '');
    seedUser($e, 'gnoag', 'misafir', '');
    same(403, call($e, 'POST', '/v1/admin/reset-secret', ['uid' => 'gnoag'], idToken(['uid' => 'orphan']))[0]);
});

test('migrate: yalnız süper admin; dry run yazmaz', function () {
    $e = env();
    $e->idp->addLegacy('rootuid', ROOT_EMAIL, '10000000146');
    seedUser($e, 'g1', 'misafir', 'A', ['user_tc' => '11111111111']);
    seedUser($e, 'y1', 'yonetici', '');
    seedUser($e, 'sh', 'esnaf');
    seedUser($e, 'done', 'misafir', 'A', ['login_id' => '9999999', 'auth_migrated' => true]);
    $e->idp->addLegacy('g1', '11111111111@umrerehberim.app', '11111111111');
    foreach (['yonetici', 'acente_admin', 'destek', 'muhasebe', 'misafir', 'esnaf'] as $role) {
        same(403, call($e, 'POST', '/v1/admin/migrate', [], tokenFor($e, $role))[0], "$role reddedilir");
    }
    foreach (array_keys($e->db->docs) as $k) {
        if (str_starts_with((string)$k, 'users/c_')) {
            unset($e->db->docs[$k]);
        }
    }
    $docsBefore = $e->db->docs;
    [$st, $b] = call($e, 'POST', '/v1/admin/migrate', ['dry_run' => true], rootToken());
    same(200, $st);
    same(true, $b['dry_run']);
    $uids = array_column($b['accounts'], 'uid');
    sort($uids);
    same(['g1', 'rootuid', 'y1'], $uids, 'esnaf ve auth_migrated olanlar listelenmez, kök listelenir');
    same(3, $b['remaining']);
    same($docsBefore, $e->db->docs, 'dry run hiçbir şey yazmadı');
    ok(!in_array('update g1 password validSince', $e->idp->calls, true), 'dry run Auth şifresine dokunmadı');
    same('invalid_request', call($e, 'POST', '/v1/admin/migrate', ['dry_run' => 'evet'], rootToken())[1]['error']);
    same('invalid_request', call($e, 'POST', '/v1/admin/migrate', ['limit' => 0], rootToken())[1]['error']);
});

test('migrate: gerçek çalışma (kök, karıştırma, başarısız hesap, açılmış hesaplar, partiler, bitiş)', function () {
    $e = env();
    $e->idp->addLegacy('rootuid', ROOT_EMAIL, '10000000146');
    $e->idp->addLegacy('g1', '11111111111@umrerehberim.app', '11111111111');
    $e->idp->addLegacy('y1', '22222222222@umrerehberim.app', '22222222222');
    $e->idp->addLegacy('bad', '33333333333@umrerehberim.app', '33333333333');
    $e->idp->addLegacy('sh', 'dukkan@umrerehberim.app', 'dukkansifre');
    $e->idp->failUpdate['bad'] = true;
    seedUser($e, 'g1', 'misafir', 'A');
    seedUser($e, 'y1', 'yonetici', '');
    seedUser($e, 'bad', 'misafir', 'A');
    seedUser($e, 'sh', 'esnaf');
    seedUser($e, 'weird', 'garip');
    seedUser($e, 'ghost', 'destek'); // Auth'ta yok: e-postasız sayılır
    // servisle açılmış (login_id + gizli bilgi var, e-posta yok): yeni bilgi VERİLMEZ, yalnız işaretlenir
    seedUser($e, 'newapi', 'misafir', 'A', ['login_id' => '4444444']);
    seedLogin($e, 'newapi', '4444444', '482913');
    $e->idp->addPlain('newapi');
    $newHash = $e->db->docs['auth_secrets/newapi']['hash'];
    $tok = rootToken();

    // 1. parti: 2 hesap (alfabetik: bad, g1)
    [$st, $b] = call($e, 'POST', '/v1/admin/migrate', ['limit' => 2], $tok);
    same(200, $st);
    same(false, $b['dry_run']);
    same(['bad'], $b['failed'], 'karıştırılamayan hesap failed');
    same(['g1'], array_column($b['accounts'], 'uid'));
    same('g1', $b['next_after']);
    same(4, $b['remaining'], 'ghost, newapi, rootuid, y1 kaldı');
    same(false, $b['done']);
    ok(!isset($e->db->docs['users/bad']['auth_migrated']) && !isset($e->db->docs['auth_secrets/bad']), 'bad işaretlenmedi, bilgi yazılmadı');
    same('33333333333', $e->idp->users['bad']['password'], 'bad şifresi aynı');
    ok(count($b['warnings']) >= 1, 'uyarılar: ' . json_encode($b['warnings']));
    ok(isset($e->db->docs['users/rootuid']) && $e->db->docs['users/rootuid']['user_type'] === 'super_admin', 'kök users belgesi super_admin');

    // 2. parti: kalanlar
    [$st, $b2] = call($e, 'POST', '/v1/admin/migrate', ['limit' => 20, 'after' => $b['next_after']], $tok);
    same(200, $st);
    same(0, $b2['remaining']);
    same(['newapi'], $b2['closed'], 'açılmış hesap yalnız işaretlendi');
    same($newHash, $e->db->docs['auth_secrets/newapi']['hash'], 'açılmış hesabın PIN\'i değişmedi');
    $by = [];
    foreach (array_merge($b['accounts'], $b2['accounts']) as $a) {
        $by[$a['uid']] = $a;
    }
    $uids = array_keys($by);
    sort($uids);
    same(['g1', 'ghost', 'rootuid', 'y1'], $uids);
    foreach ($by as $uid => $a) {
        ok(preg_match('/^[1-9]\d{6}$/', $a['login_id']) === 1, "$uid login_id");
        same($a['login_id'], $e->db->docs["users/$uid"]['login_id'], "$uid users.login_id");
        same(true, $e->db->docs["users/$uid"]['auth_migrated'], "$uid auth_migrated");
        same($uid, $e->db->docs['login_ids/' . $a['login_id']]['uid']);
        ok(Secrets::verify($a['secret'], $e->db->docs["auth_secrets/$uid"]['hash'], PEPPER), "$uid hash");
    }
    same(40, strlen((string)$e->idp->users['g1']['password']), 'g1 karıştırıldı');
    same(40, strlen((string)$e->idp->users['y1']['password']), 'y1 karıştırıldı');
    same('10000000146', $e->idp->users['rootuid']['password'], 'kök şifresi KARIŞTIRILMADI (root_password.php)');
    ok(count(array_filter($b2['warnings'], fn($w) => str_contains($w, 'root_password.php'))) === 1, 'kök için uyarı');
    same('dukkansifre', $e->idp->users['sh']['password'], 'esnaf dokunulmadı');
    same(1, $b2['pending_total'], 'bad hâlâ bekliyor');
    same(false, $b2['done'], 'başarısız hesap varken bitmez');
    ok(!isset($e->db->docs[Api::MIGRATION_DOC]), 'bitiş belgesi yok');

    // 3. çalışma: bad düzeldi -> biter, sonra 410
    unset($e->idp->failUpdate['bad']);
    [$st, $b3] = call($e, 'POST', '/v1/admin/migrate', [], $tok);
    same(['bad'], array_column($b3['accounts'], 'uid'));
    same(true, $b3['done']);
    same(true, $e->db->docs[Api::MIGRATION_DOC]['done'] ?? null);
    [$st, $b4] = call($e, 'POST', '/v1/admin/migrate', ['dry_run' => true], $tok);
    same(410, $st);
    same('migration_done', $b4['error']);
    same(410, call(env(['migrate_enabled' => false]), 'POST', '/v1/admin/migrate', [], $tok)[0], 'config ile kapalı');
    // audit: parti başına bir kayıt, gizli bilgi yok
    $logs = $e->db->auditLogs();
    same(3, count($logs));
    same('auth_migrate', $logs[0]['action']);
    same(1, $logs[0]['details']['count']);
    ok(!str_contains(json_encode($logs), '"' . $by['g1']['secret'] . '"'), 'audit gizli bilgi içermez');
    // üretilen bilgilerle giriş
    same(200, login($e, $by['g1']['login_id'], $by['g1']['secret'])[0], 'migrate sonrası misafir girişi');
    same('rootuid', Jwt::parse(login($e, $by['rootuid']['login_id'], $by['rootuid']['secret'], '1.2.1.2')[1]['token'])['claims']['uid']);
    // kök, belge olunca (e-postasız, custom token) rolünü users belgesinden alır
    same(200, call($e, 'POST', '/v1/admin/accounts', ['user_type' => 'destek'], idToken(['uid' => 'rootuid']))[0], 'kök, e-postasız jetonla da super_admin');
});

test('yönlendirme, HTTPS, Origin, Content-Type, NUL', function () {
    $e = env();
    [$st, $b] = call($e, 'GET', '/v1/health');
    same(200, $st);
    same(['ok' => true, 'version' => Api::VERSION], $b);
    same(200, call($e, 'GET', '/v1/health/')[0], 'sondaki eğik çizgi');
    same(404, call($e, 'GET', '/v1/yok')[0]);
    same(404, call($e, 'GET', '/private/config.php')[0]);
    same(405, call($e, 'GET', '/v1/auth/login')[0]);
    same('method_not_allowed', call($e, 'POST', '/v1/health')[1]['error']);
    same('invalid_request', call($e, 'POST', '/v1/auth/login', null, null, '3.3.3.3', 'bozuk{')[1]['error']);
    same('invalid_request', call($e, 'POST', '/v1/auth/login', null, null, '3.3.3.3', '[1,2]')[1]['error'], 'liste gövde');
    same(413, call($e, 'POST', '/v1/auth/login', null, null, '3.3.3.3', str_repeat('a', Request::MAX_BODY + 1))[0]);
    // HTTPS
    [$st, $b, $h] = call($e, 'POST', '/v1/auth/login', ['login_id' => '1234567', 'secret' => 'x'], null, '3.3.3.3', null, [], false);
    same(403, $st);
    same('https_required', $b['error']);
    ok(!isset($h['Strict-Transport-Security']), 'HTTP yanıtında HSTS yok');
    same(200, call($e, 'GET', '/v1/health', null, null, '3.3.3.3', null, [], false)[0], 'GET health HTTP\'de serbest');
    ok(Request::isSecure(['HTTPS' => 'on'], []) && !Request::isSecure(['HTTPS' => 'off'], []) && !Request::isSecure(['HTTP_X_FORWARDED_PROTO' => 'https'], []), 'isSecure');
    ok(Request::isSecure(['HTTP_X_FORWARDED_PROTO' => 'https'], ['ip_header' => 'X-Forwarded-For']), 'vekil yapılandırılınca X-Forwarded-Proto');
    // Origin
    same('forbidden_origin', call($e, 'POST', '/v1/auth/login', ['login_id' => '1234567', 'secret' => 'x'], null, '3.3.3.3', null, ['origin' => 'https://kotu.example'])[1]['error']);
    // Content-Type
    same(415, call($e, 'POST', '/v1/auth/login', ['login_id' => '1234567', 'secret' => 'x'], null, '3.3.3.3', null, ['content-type' => 'text/plain'])[0]);
    same(415, call($e, 'POST', '/v1/auth/login', ['login_id' => '1234567', 'secret' => 'x'], null, '3.3.3.3', null, ['content-type' => ''])[0], 'başlıksız');
    same(401, call($e, 'POST', '/v1/auth/login', ['login_id' => '1234567', 'secret' => 'x'], null, '3.3.3.3', null, ['content-type' => 'Application/JSON'])[0], 'büyük/küçük harf serbest');
    // NUL
    same('invalid_request', call($e, 'POST', '/v1/auth/login', null, null, '3.3.3.3', '{"login_id":"1234567","secret":"48\u00002913"}')[1]['error'], '\\u0000 kaçışlı NUL');
    same('invalid_request', call($e, 'POST', '/v1/auth/login', null, null, '3.3.3.3', "{\"login_id\":\"1234567\",\"secret\":\"a\0\"}")[1]['error'], 'ham NUL');
});

test('sunucu hatası ayrıntı sızdırmaz', function () {
    $db = new class extends FakeFirestore {
        public function get(string $path): ?array
        {
            throw new \RuntimeException('gizli ayrıntı: şifre');
        }
    };
    $e = env([], null, $db);
    [$st, $b] = login($e, '1234567', 'x', '8.8.8.8');
    same(500, $st);
    same('server_error', $b['error']);
    ok(!str_contains(json_encode($b), 'gizli'), 'ayrıntı yanıtta yok');
});

test('Factory: öykünücü koşulları, gizli klasör konumu', function () {
    $priv = tmpdir('umre-priv-');
    mkdir($priv);
    $cfg = Config::withDefaults(['pepper' => PEPPER, 'emulator' => true, 'firestore_base' => 'http://127.0.0.1:8080/v1', 'identity_base' => 'http://localhost:9099/identitytoolkit.googleapis.com']);
    same(true, Factory::emulatorMode($cfg, $priv, '127.0.0.1'), 'tüm koşullar sağlanınca');
    same(false, Factory::emulatorMode(Config::withDefaults([]), $priv, '1.2.3.4'), 'kapalıyken');
    $fails = [
        'uzak istemci' => [$cfg, '1.2.3.4'],
        'uzak firestore' => [['firestore_base' => 'https://firestore.googleapis.com/v1'] + $cfg, '127.0.0.1'],
        'metin "true"' => [['emulator' => 'true'] + $cfg, '127.0.0.1'],
    ];
    foreach ($fails as $label => [$c, $ip]) {
        try {
            Factory::emulatorMode($c, $priv, $ip);
            ok(false, "$label reddedilmeli");
        } catch (\RuntimeException $ex) {
            ok(true);
        }
    }
    file_put_contents($priv . '/service-account.json', '{}');
    try {
        Factory::emulatorMode($cfg, $priv, '127.0.0.1');
        ok(false, 'servis hesabı varken öykünücü reddedilmeli');
    } catch (\RuntimeException $ex) {
        ok(true);
    }
    unlink($priv . '/service-account.json');
    mkdir($priv . '/web');
    mkdir($priv . '/web/private');
    ok(Factory::isInside($priv . '/web/private', $priv . '/web'), 'içeride');
    ok(!Factory::isInside($priv . '/web', $priv . '/web/private'), 'dışarıda');
    ok(!Factory::isInside($priv . '/yok', $priv), 'olmayan yol içeride sayılmaz');
    rmdir($priv . '/web/private');
    rmdir($priv . '/web');
    $app = tmpdir('umre-app-');
    mkdir($app);
    same($app . '/private', Factory::privateDir($app), 'varsayılan');
    file_put_contents($app . '/private-path.php', "<?php return '/var/www/vhosts/x/umre-private/';");
    same('/var/www/vhosts/x/umre-private', Factory::privateDir($app), 'private-path.php');
    unlink($app . '/private-path.php');
});

test('LegacyProbe: TC kabul eden hesap "open"', function () {
    $tr = new FakeTransport(function ($m, $url, $h, $body) {
        $j = json_decode((string)$body, true);
        if ($j['password'] === 'acik') {
            return ['status' => 200, 'headers' => [], 'body' => '{"localId":"x"}'];
        }
        if ($j['password'] === 'sinir') {
            return ['status' => 400, 'headers' => [], 'body' => '{"error":{"message":"TOO_MANY_ATTEMPTS_TRY_LATER : bekle"}}'];
        }
        return ['status' => 400, 'headers' => [], 'body' => '{"error":{"message":"INVALID_LOGIN_CREDENTIALS"}}'];
    });
    $p = new LegacyProbe($tr, 'AIzaTEST');
    same(LegacyProbe::OPEN, $p->probe('a@b', 'acik')[0]);
    same(LegacyProbe::CLOSED, $p->probe('a@b', 'kapali')[0]);
    same([LegacyProbe::UNKNOWN, 'TOO_MANY_ATTEMPTS_TRY_LATER'], $p->probe('a@b', 'sinir'));
    ok(str_contains($tr->requests[0]['url'], 'accounts:signInWithPassword?key=AIzaTEST'), 'herkese açık uç nokta + API anahtarı');
    same('11111111111@umrerehberim.app', LegacyProbe::emailFor('11111111111'));
});

test('GoogleCerts: önbellek, max-age, throttle\'lı yenileme, eski anahtar en fazla 24 saat', function () {
    global $G_PUB;
    $clock = new Clock();
    $clock->set(T0);
    $dir = tmpdir('umre-cache-');
    $tr = new FakeTransport(fn() => ['status' => 200, 'headers' => ['cache-control' => 'public, max-age=1000, must-revalidate'], 'body' => json_encode(['k1' => $G_PUB])]);
    $g = new GoogleCerts($tr, new FileCache($dir), $clock, 'https://example.test/certs');
    same(['k1' => $G_PUB], $g->keys());
    $g->keys();
    same(1, count($tr->requests), 'ikinci çağrı önbellekten');
    $g->keys(true);
    same(1, count($tr->requests), 'sık yenileme engellendi');
    $clock->advance(301);
    $g->keys(true);
    same(2, count($tr->requests), 'bilinmeyen kid için aralıktan sonra yenilendi');
    $clock->advance(1001);
    $g->keys();
    same(3, count($tr->requests), 'max-age bitince yenilendi');
    $clock->advance(1001);
    $fail = new FakeTransport(fn() => ['status' => 500, 'headers' => [], 'body' => '']);
    $g2 = new GoogleCerts($fail, new FileCache($dir), $clock, 'https://example.test/certs');
    same(['k1' => $G_PUB], $g2->keys(), 'hata olunca eski anahtar');
    $clock->advance(GoogleCerts::MAX_STALE);
    try {
        $g2->keys();
        ok(false, '24 saatten eski anahtar kullanılmamalı');
    } catch (UpstreamException $e) {
        ok(true);
    }
});

test('GoogleAccessToken: dar kapsam, JWT ile jeton, önbellek', function () {
    global $SA_PRIV, $SA_PUB;
    $clock = new Clock();
    $clock->set(T0);
    $sa = new ServiceAccount('svc@x.iam.gserviceaccount.com', $SA_PRIV, PROJECT, 'https://oauth.test/token');
    $n = 0;
    $tr = new FakeTransport(function () use (&$n) {
        $n++;
        return ['status' => 200, 'headers' => [], 'body' => json_encode(['access_token' => 'tok' . $n, 'expires_in' => 3600])];
    });
    $dir = tmpdir('umre-cache-');
    $t = new GoogleAccessToken($sa, $tr, new FileCache($dir), $clock);
    same('tok1', $t->token());
    same('tok1', $t->token());
    same(1, count($tr->requests));
    parse_str((string)$tr->requests[0]['body'], $form);
    same('urn:ietf:params:oauth:grant-type:jwt-bearer', $form['grant_type']);
    $p = Jwt::parse($form['assertion']);
    ok(Jwt::verifyRs256($p['input'], $p['sig'], $SA_PUB), 'assertion imzası');
    same(implode(' ', Config::DEFAULT_SCOPES), $p['claims']['scope'], 'cloud-platform yok');
    ok(!str_contains($p['claims']['scope'], 'cloud-platform'), 'geniş kapsam yok');
    ok(!str_contains($p['claims']['scope'], 'cloud-platform'), 'geniş kapsam yok');
    $clock->advance(3600 - 59);
    same('tok2', $t->token());
    $other = new GoogleAccessToken($sa, $tr, new FileCache($dir), $clock, ['https://www.googleapis.com/auth/datastore']);
    same('tok3', $other->token(), 'farklı kapsam önbelleği paylaşmaz');
    foreach (glob($dir . '/*.json') ?: [] as $f) {
        if (DIRECTORY_SEPARATOR === '/') {
            same('600', decoct(fileperms($f) & 0777), 'önbellek dosyası 0600');
        }
    }
    $bad = new GoogleAccessToken($sa, new FakeTransport(fn() => ['status' => 401, 'headers' => [], 'body' => '{}']), new FileCache($dir . 'x'), $clock);
    try {
        $bad->token();
        ok(false, 'istisna bekleniyordu');
    } catch (UpstreamException $e) {
        ok(true);
    }
});

test('FirestoreRest: istek şekilleri', function () {
    $tr = new FakeTransport(function ($m, $url, $h, $body, $n) {
        if ($m === 'GET' && str_contains($url, '/users/yok')) {
            return ['status' => 404, 'headers' => [], 'body' => '{"error":{"status":"NOT_FOUND"}}'];
        }
        if ($m === 'GET' && str_contains($url, '/users/u1')) {
            return ['status' => 200, 'headers' => [], 'body' => json_encode(['name' => 'x', 'fields' => ['user_type' => ['stringValue' => 'misafir'], 'n' => ['integerValue' => '3']]])];
        }
        if ($m === 'GET' && str_contains($url, '/users?')) {
            $page = str_contains($url, 'pageToken=P2');
            return ['status' => 200, 'headers' => [], 'body' => json_encode(
                $page ? ['documents' => [['name' => 'projects/p/databases/(default)/documents/users/b', 'fields' => ['a' => ['stringValue' => '2']]]]]
                    : ['documents' => [['name' => 'projects/p/databases/(default)/documents/users/a', 'fields' => ['a' => ['stringValue' => '1']]]], 'nextPageToken' => 'P2']
            )];
        }
        if (str_contains($url, ':commit')) {
            $w = json_decode((string)$body, true)['writes'][0];
            if (isset($w['currentDocument']) && str_contains($w['update']['name'], 'login_ids/dolu')) {
                return ['status' => 409, 'headers' => [], 'body' => '{"error":{"status":"ALREADY_EXISTS"}}'];
            }
            if (isset($w['updateTransforms'])) {
                return ['status' => 200, 'headers' => [], 'body' => json_encode(['writeResults' => [['transformResults' => [['integerValue' => '4']]]]])];
            }
            return ['status' => 200, 'headers' => [], 'body' => '{"writeResults":[{}]}'];
        }
        if ($m === 'POST' && str_contains($url, '/audit_logs')) {
            return ['status' => 200, 'headers' => [], 'body' => '{"name":"projects/p/databases/(default)/documents/audit_logs/ABC123"}'];
        }
        return ['status' => 500, 'headers' => [], 'body' => '{"error":{"message":"beklenmeyen"}}'];
    });
    $fs = new FirestoreRest('http://127.0.0.1:8080/v1', 'p', new StaticToken('owner'), $tr);
    same(null, $fs->get('users/yok'));
    same(['user_type' => 'misafir', 'n' => 3], $fs->get('users/u1'));
    same('Authorization: Bearer owner', $tr->requests[0]['headers'][0], 'öykünücüde Bearer owner');
    same(true, $fs->create('login_ids/1234567', ['uid' => 'u1', 'created_at' => new Ts(T0)]));
    $w = json_decode((string)end($tr->requests)['body'], true)['writes'][0];
    same(['exists' => false], $w['currentDocument'], 'create-if-not-exists');
    same(false, $fs->create('login_ids/dolu', ['uid' => 'u']), '409 -> false');
    $fs->patch('auth_secrets/u1', ['failed' => 0, 'locked_until' => null]);
    $w = json_decode((string)end($tr->requests)['body'], true)['writes'][0];
    same(['fieldPaths' => ['failed', 'locked_until']], $w['updateMask']);
    same(4, $fs->increment('auth_attempts/x', 'n', 1, ['uid' => 'u1']));
    $w = json_decode((string)end($tr->requests)['body'], true)['writes'][0];
    same('1', $w['updateTransforms'][0]['increment']['integerValue'], 'tek commit: artırma');
    same(['fieldPaths' => ['uid']], $w['updateMask'], 've alanlar');
    ok(!isset($w['currentDocument']), 'ön koşulsuz (belge yoksa oluşur)');
    $fs->delete('login_ids/1');
    same('ABC123', $fs->add('audit_logs', ['action' => 'x']));
    same(['a' => ['a' => '1'], 'b' => ['a' => '2']], $fs->listAll('users', ['a']), 'sayfalama');
    try {
        $fs->get('other/doc');
        ok(false, 'istisna bekleniyordu');
    } catch (UpstreamException $e) {
        ok(str_contains($e->getMessage(), '500'));
    }
});

test('Öykünücü modu: imzasız custom token', function () {
    $e = env();
    $m = new CustomTokenMinter(null, $e->clock);
    $p = Jwt::parse($m->mint('u1'));
    same('none', $p['header']['alg']);
    same('u1', $p['claims']['uid']);
    same(T0 + 3600, $p['claims']['exp']);
});

// ------------------------------------------------------------------ Aile Takibi (POST /v1/track)

final class TrackEnv
{
    public Env $e;
    public FakeRealtime $rt;
    public string $cacheDir;
}

/** @param array<string,mixed> $cfg */
function trackEnv(array $cfg = []): TrackEnv
{
    global $SA_PRIV;
    $t = new TrackEnv();
    $t->e = env($cfg + ['web_origins' => ['https://umrerehberim.app']]);
    $t->rt = new FakeRealtime();
    $t->cacheDir = tmpdir('umre-tc-');
    $sa = new ServiceAccount('svc@' . PROJECT . '.iam.gserviceaccount.com', $SA_PRIV, PROJECT);
    $t->e->api = new Api(
        Config::withDefaults($cfg + ['web_origins' => ['https://umrerehberim.app'], 'bcrypt_cost' => 4, 'pepper' => PEPPER]),
        $t->e->db, $t->e->idp, $t->e->verifier, new CustomTokenMinter($sa, $t->e->clock), $t->e->limiter, $t->e->clock,
        null, new FileCache($t->cacheDir), $t->rt
    );
    return $t;
}

function newTrackToken(): string
{
    return rtrim(strtr(base64_encode(random_bytes(32)), '+/', '-_'), '=');
}

/** Bireysel (Aile paketli) bağlantı + kullanıcı + konum hazırlar; token döner. */
function seedLink(TrackEnv $t, array $link = [], string $uid = 'bir1', array $user = [], ?array $ent = [], mixed $loc = null): string
{
    $tok = newTrackToken();
    $db = $t->e->db;
    $db->docs['users/' . $uid] = $user + ['user_name' => 'Ahmet Yılmaz', 'user_type' => 'misafir', 'account_kind' => 'bireysel', 'agency_id' => ''];
    if ($ent !== null) {
        $db->docs['entitlements/' . $uid] = $ent + ['paket' => 'aile', 'status' => 'active', 'paid_until' => new Ts(T0 + 86400 * 10)];
    }
    $db->docs['tracking_links/' . hash('sha256', $tok)] = $link + [
        'owner_uid' => $uid, 'kind' => 'bireysel', 'agency_id' => '', 'label' => 'Annem', 'approx' => false,
        'hidden_until' => null, 'revoked' => false, 'created_at' => new Ts(T0 - 100), 'expires_at' => new Ts(T0 + 86400 * 5),
    ];
    $t->rt->data['personal_locations/' . $uid] = $loc ?? ['latitude' => 21.42251, 'longitude' => 39.8262, 'timestamp' => (T0 - 120) * 1000, 'accuracy' => 18.4];
    return $tok;
}

function track(TrackEnv $t, ?string $token, string $ip = '5.5.5.5', array $headers = []): array
{
    return call($t->e, 'POST', '/v1/track', ['token' => $token], null, $ip, null, $headers);
}

test('track: token biçimi ve gövde hataları 400 bad_request', function () {
    $t = trackEnv();
    foreach (['', 'kisa', str_repeat('a', 42), str_repeat('a', 44), str_repeat('a', 42) . '+', str_repeat('a', 42) . '/', str_repeat('a', 42) . '=', str_repeat('ğ', 22)] as $bad) {
        [$st, $b] = track($t, $bad);
        same(400, $st, $bad);
        same('bad_request', $b['error']);
    }
    same(400, call($t->e, 'POST', '/v1/track', ['token' => 12345])[0]);
    same(400, call($t->e, 'POST', '/v1/track', [])[0]);
    same(400, call($t->e, 'POST', '/v1/track', null, null, '5.5.5.5', 'bozuk{')[0]);
    same(400, call($t->e, 'POST', '/v1/track', ['token' => ['x']])[0]);
    same([], $t->rt->reads, 'geçersiz token RTDB okutmaz');
});

test('track: bilinmeyen bağlantı 404 not_found', function () {
    $t = trackEnv();
    [$st, $b] = track($t, newTrackToken());
    same(404, $st);
    same('not_found', $b['error']);
});

test('track: bireysel Aile paketi 200 ok, alanlar sözleşmeye uygun', function () {
    $t = trackEnv();
    $tok = seedLink($t);
    [$st, $b] = track($t, $tok);
    same(200, $st);
    same('ok', $b['status']);
    same('Ahmet', $b['name']);
    same(false, $b['approx']);
    same(null, $b['hidden_until']);
    same(21.42251, $b['location']['lat']);
    same(39.8262, $b['location']['lng']);
    same(18, $b['location']['accuracy']);
    same((T0 - 120) * 1000, $b['location']['updated_at']);
    same('mekke', $b['place']['city']);
    same((int)round(\UmreApi\Tracking::distance(21.42251, 39.8262, 21.4225, 39.8262)), $b['place']['harem_m']);
    ok(is_int($b['place']['harem_m']) && $b['place']['harem_m'] < 5);
    same((T0 + 86400 * 5) * 1000, $b['expires_at']);
    same(T0 * 1000, $b['server_time']);
    same(60, $b['refresh_sec']);
    same(['status', 'name', 'approx', 'hidden_until', 'location', 'place', 'expires_at', 'server_time', 'refresh_sec'], array_keys($b));
    same(['lat', 'lng', 'accuracy', 'updated_at'], array_keys($b['location']));
});

test('track: Full paket de çalışır; umre/biten/bekleyen/hak yok plan_ended', function () {
    $t = trackEnv();
    same(200, track($t, seedLink($t, [], 'f1', [], ['paket' => 'full']))[0]);
    foreach ([
        'umre' => ['paket' => 'umre'],
        'bitmis' => ['paid_until' => new Ts(T0 - 1)],
        'tam_simdi' => ['paid_until' => new Ts(T0)],
        'bekleyen' => ['paket' => 'full', 'status' => 'pending_approval'],
        'iptal' => ['status' => 'cancelled'],
        'bos_paket' => ['paket' => ''],
    ] as $name => $ent) {
        [$st, $b] = track($t, seedLink($t, [], 'p_' . $name, [], $ent));
        same(410, $st, $name);
        same('plan_ended', $b['error'], $name);
    }
    [$st, $b] = track($t, seedLink($t, [], 'hak_yok', [], null));
    same([410, 'plan_ended'], [$st, $b['error']], 'entitlements belgesi yok');
});

test('track: kullanıcı silinmiş/devre dışı/acentesi var -> plan_ended', function () {
    $t = trackEnv();
    $tok = seedLink($t, [], 'u1');
    unset($t->e->db->docs['users/u1']);
    same('plan_ended', track($t, $tok)[1]['error']);
    $tok = seedLink($t, [], 'u2', ['disabled' => true]);
    same('plan_ended', track($t, $tok)[1]['error']);
    $tok = seedLink($t, [], 'u3', ['agency_id' => 'A']);
    same('plan_ended', track($t, $tok)[1]['error'], 'bireysel link, sahibi acenteye bağlanmış');
});

test('track: acente misafiri locations/{acente}/{uid} okur', function () {
    $t = trackEnv();
    $tok = seedLink($t, ['kind' => 'acente', 'agency_id' => 'A'], 'g1', ['user_name' => 'Ayşe', 'agency_id' => 'A'], null);
    $t->rt->data['locations/A/g1'] = ['latitude' => 24.4672, 'longitude' => 39.6111, 'timestamp' => (T0 - 30) * 1000, 'accuracy' => 10, 'userName' => 'Ayşe K'];
    [$st, $b] = track($t, $tok);
    same(200, $st);
    same('Ayşe', $b['name']);
    same('medine', $b['place']['city']);
    same(0, $b['place']['harem_m']);
    same(['locations/A/g1'], $t->rt->reads);
});

test('track: acente misafiri artık acentede değil / misafir değil -> plan_ended', function () {
    $t = trackEnv();
    $tok = seedLink($t, ['kind' => 'acente', 'agency_id' => 'A'], 'g2', ['agency_id' => 'B'], null);
    same([410, 'plan_ended'], [($r = track($t, $tok))[0], $r[1]['error']]);
    $tok = seedLink($t, ['kind' => 'acente', 'agency_id' => 'A'], 'g3', ['agency_id' => ''], null);
    same('plan_ended', track($t, $tok)[1]['error']);
    $tok = seedLink($t, ['kind' => 'acente', 'agency_id' => 'A'], 'g4', ['agency_id' => 'A', 'user_type' => 'yonetici'], null);
    same('plan_ended', track($t, $tok)[1]['error']);
    $tok = seedLink($t, ['kind' => 'acente', 'agency_id' => ''], 'g5', ['agency_id' => ''], null);
    same('plan_ended', track($t, $tok)[1]['error'], 'agency_id boş acente bağlantısı');
    $tok = seedLink($t, ['kind' => 'acente', 'agency_id' => '../x'], 'g6', ['agency_id' => '../x'], null);
    same('plan_ended', track($t, $tok)[1]['error'], 'yol enjeksiyonu');
});

test('track: bilinmeyen kind 404', function () {
    $t = trackEnv();
    same(404, track($t, seedLink($t, ['kind' => 'baska']))[0]);
});

test('track: revoked ve expired 410', function () {
    $t = trackEnv();
    [$st, $b] = track($t, seedLink($t, ['revoked' => true]));
    same([410, 'link_revoked'], [$st, $b['error']]);
    [$st, $b] = track($t, seedLink($t, ['expires_at' => new Ts(T0 - 1)]));
    same([410, 'link_expired'], [$st, $b['error']]);
    [$st, $b] = track($t, seedLink($t, ['expires_at' => new Ts(T0)]));
    same([410, 'link_expired'], [$st, $b['error']]);
    [$st, $b] = track($t, seedLink($t, ['expires_at' => null]));
    same('link_expired', $b['error'], 'süresiz bağlantı kabul edilmez');
});

test('track: hidden_until gelecekteyse hidden, geçmişteyse ok', function () {
    $t = trackEnv();
    [$st, $b] = track($t, seedLink($t, ['hidden_until' => new Ts(T0 + 3600)]));
    same(200, $st);
    same('hidden', $b['status']);
    same((T0 + 3600) * 1000, $b['hidden_until']);
    same(null, $b['location']);
    same(null, $b['place']);
    same('Ahmet', $b['name']);
    same([], $t->rt->reads, 'gizliyken konum okunmaz');
    [$st, $b] = track($t, seedLink($t, ['hidden_until' => new Ts(T0 - 5)]));
    same('ok', $b['status']);
    same(null, $b['hidden_until']);
});

test('track: konum yoksa/bozuksa no_location', function () {
    $t = trackEnv();
    $tok = seedLink($t);
    unset($t->rt->data['personal_locations/bir1']);
    [$st, $b] = track($t, $tok);
    same(200, $st);
    same('no_location', $b['status']);
    same(null, $b['location']);
    same(null, $b['place']);
    foreach ([['latitude' => 'x', 'longitude' => 1, 'timestamp' => 1], ['latitude' => 91, 'longitude' => 1, 'timestamp' => 1], ['latitude' => 1, 'longitude' => 1], 'metin'] as $i => $bad) {
        $tok = seedLink($t, [], 'bad' . $i, [], ['paket' => 'full'], $bad);
        same('no_location', track($t, $tok)[1]['status'], 'bozuk konum ' . $i);
    }
});

test('track: approx -> 2 ondalık, accuracy>=1500, harem_m null', function () {
    $t = trackEnv();
    $tok = seedLink($t, ['approx' => true], 'ap1', [], ['paket' => 'aile'], ['latitude' => 21.42251, 'longitude' => 39.82629, 'timestamp' => (T0 - 5) * 1000, 'accuracy' => 12]);
    [$st, $b] = track($t, $tok);
    same(true, $b['approx']);
    same(21.42, $b['location']['lat']);
    same(39.83, $b['location']['lng']);
    same(1500, $b['location']['accuracy']);
    same('mekke', $b['place']['city']);
    same(null, $b['place']['harem_m']);
    $tok = seedLink($t, ['approx' => true], 'ap2', [], ['paket' => 'aile'], ['latitude' => 41.0, 'longitude' => 29.0, 'timestamp' => (T0 - 5) * 1000, 'accuracy' => 5000]);
    same(5000, track($t, $tok)[1]['location']['accuracy'], 'daha kaba doğruluk korunur');
});

test('track: yer sınıflandırma (mekke/medine/diger) ve metre', function () {
    same('mekke', \UmreApi\Tracking::place(21.4225, 39.8262, false)['city']);
    same(0, \UmreApi\Tracking::place(21.4225, 39.8262, false)['harem_m']);
    same('mekke', \UmreApi\Tracking::place(21.52, 39.8262, false)['city'], '~11 km');
    same('diger', \UmreApi\Tracking::place(21.70, 39.8262, false)['city'], '~30 km');
    same('medine', \UmreApi\Tracking::place(24.4672, 39.6111, false)['city']);
    same('diger', \UmreApi\Tracking::place(41.0082, 28.9784, false)['city']);
    $d = \UmreApi\Tracking::place(21.4247, 39.8262, false)['harem_m'];
    ok($d >= 240 && $d <= 260, "~245 m beklenir: $d");
    // Cidde yakını: Mekke'ye 70 km -> diger, harem_m en yakın mescide metre
    $p = \UmreApi\Tracking::place(21.5433, 39.1728, false);
    same('diger', $p['city']);
    ok(is_int($p['harem_m']) && $p['harem_m'] > 60000);
    same(null, \UmreApi\Tracking::place(21.4225, 39.8262, true)['harem_m']);
});

test('track: eksik accuracy varsayılan 50', function () {
    $t = trackEnv();
    $tok = seedLink($t, [], 'na1', [], ['paket' => 'aile'], ['latitude' => 21.4, 'longitude' => 39.8, 'timestamp' => (T0 - 5) * 1000]);
    same(50, track($t, $tok)[1]['location']['accuracy']);
});

test('track: yanıt 20 sn önbelleklenir, sonra yenilenir', function () {
    $t = trackEnv();
    $tok = seedLink($t);
    track($t, $tok);
    same(1, count($t->rt->reads));
    $t->e->clock->advance(10);
    [$st, $b] = track($t, $tok);
    same(1, count($t->rt->reads), '10 sn sonra önbellekten');
    same((T0 + 10) * 1000, $b['server_time'], 'server_time güncel');
    // Konum değişse de önbellek süresince eski görünür
    $t->rt->data['personal_locations/bir1']['latitude'] = 21.5;
    same(21.42251, track($t, $tok)[1]['location']['lat']);
    $t->e->clock->advance(11);
    same(21.5, track($t, $tok)[1]['location']['lat'], '21 sn sonra yeni konum');
    same(2, count($t->rt->reads));
    // İptal: önbellek bitince 410
    $t->e->db->docs['tracking_links/' . hash('sha256', $tok)]['revoked'] = true;
    $t->e->clock->advance(21);
    same('link_revoked', track($t, $tok)[1]['error']);
});

test('track: hatalar önbelleğe yazılmaz', function () {
    $t = trackEnv();
    track($t, newTrackToken());
    $tok = seedLink($t, ['revoked' => true]);
    track($t, $tok);
    same([], glob($t->cacheDir . '/track_*') ?: []);
});

test('track: token hiçbir yerde saklanmaz (belge, önbellek, views)', function () {
    $t = trackEnv();
    $tok = seedLink($t);
    track($t, $tok, '7.7.7.7', ['user-agent' => 'Mozilla/5.0 (iPhone)']);
    ok(!str_contains(json_encode(array_map(static fn($d) => array_map(static fn($v) => $v instanceof Ts ? $v->t : $v, $d), $t->e->db->docs)), $tok), 'Firestore');
    foreach (glob($t->cacheDir . '/*') ?: [] as $f) {
        ok(!str_contains((string)file_get_contents($f), $tok), $f);
    }
});

test('track: ziyaret kaydı (views): oluşur, 30 dk içinde değişmez, sonra sayaç artar', function () {
    $t = trackEnv();
    $tok = seedLink($t);
    $h = hash('sha256', $tok);
    $ua = 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0) Mobile/15E148';
    track($t, $tok, '7.7.7.7', ['user-agent' => $ua]);
    $views = array_filter($t->e->db->docs, static fn($k) => str_starts_with($k, "tracking_links/$h/views/"), ARRAY_FILTER_USE_KEY);
    same(1, count($views));
    $key = basename((string)array_key_first($views));
    ok(preg_match('/^[0-9a-f]{24}$/D', $key) === 1, 'visitorKey 24 hex');
    $v = array_values($views)[0];
    same(['first_at', 'last_at', 'count', 'device'], array_keys($v));
    same(1, $v['count']);
    same('mobil', $v['device']);
    same(T0, $v['first_at']->t);
    ok(!str_contains($key, '7.7.7.7'));
    ok(!str_contains(json_encode($v['device']), '7.7.7.7'));
    // 10 dk sonra: değişmez
    $t->e->clock->advance(600);
    track($t, $tok, '7.7.7.7', ['user-agent' => $ua]);
    same(1, $t->e->db->docs["tracking_links/$h/views/$key"]['count']);
    same(T0, $t->e->db->docs["tracking_links/$h/views/$key"]['last_at']->t);
    // 31 dk sonra: sayaç ve last_at
    $t->e->clock->advance(1260);
    track($t, $tok, '7.7.7.7', ['user-agent' => $ua]);
    same(2, $t->e->db->docs["tracking_links/$h/views/$key"]['count']);
    same(T0 + 1860, $t->e->db->docs["tracking_links/$h/views/$key"]['last_at']->t);
    same(T0, $t->e->db->docs["tracking_links/$h/views/$key"]['first_at']->t);
});

test('track: farklı ziyaretçi farklı views belgesi; masaüstü cihaz', function () {
    $t = trackEnv();
    $tok = seedLink($t);
    $h = hash('sha256', $tok);
    track($t, $tok, '7.7.7.7', ['user-agent' => 'Mozilla/5.0 (Windows NT 10.0) Chrome/120']);
    track($t, $tok, '8.8.8.8', ['user-agent' => 'Mozilla/5.0 (Windows NT 10.0) Chrome/120']);
    track($t, $tok, '8.8.8.8', ['user-agent' => 'Mozilla/5.0 (Android 14) Mobile']);
    $views = array_filter($t->e->db->docs, static fn($k) => str_starts_with($k, "tracking_links/$h/views/"), ARRAY_FILTER_USE_KEY);
    same(3, count($views));
    $dev = array_map(static fn($v) => $v['device'], array_values($views));
    sort($dev);
    same(['masaustu', 'masaustu', 'mobil'], $dev);
    // Ertesi gün aynı ziyaretçi yeni anahtar
    $t->e->clock->advance(86400);
    track($t, $tok, '7.7.7.7', ['user-agent' => 'Mozilla/5.0 (Windows NT 10.0) Chrome/120']);
    same(4, count(array_filter($t->e->db->docs, static fn($k) => str_starts_with($k, "tracking_links/$h/views/"), ARRAY_FILTER_USE_KEY)));
});

test('track: hata yanıtlarında views yazılmaz', function () {
    $t = trackEnv();
    track($t, newTrackToken());
    track($t, seedLink($t, ['revoked' => true]));
    track($t, seedLink($t, [], 'x9', [], ['paket' => 'umre']));
    same(0, count(array_filter($t->e->db->docs, static fn($k) => str_contains($k, '/views/'), ARRAY_FILTER_USE_KEY)));
});

test('track: RTDB çökerse 502 upstream_error', function () {
    $t = trackEnv();
    $tok = seedLink($t);
    $t->rt->fail = true;
    [$st, $b] = track($t, $tok);
    same([502, 'upstream_error'], [$st, $b['error']]);
});

test('track: IP başına dakikada 30, sonra 429; başka IP etkilenmez; pencere sonra açılır', function () {
    $t = trackEnv();
    $tok = seedLink($t);
    for ($i = 1; $i <= 30; $i++) {
        same(200, track($t, $tok, '6.6.6.6')[0], "istek $i");
    }
    $r = track($t, $tok, '6.6.6.6');
    same(429, $r[0]);
    same('rate_limited', $r[1]['error']);
    ok(isset($r[2]['Retry-After']), 'Retry-After');
    same(200, track($t, $tok, '6.6.6.7')[0]);
    // geçersiz token istekleri de sayılır
    $t2 = trackEnv();
    for ($i = 0; $i < 30; $i++) {
        track($t2, 'kisa', '4.4.4.4');
    }
    same(429, track($t2, 'kisa', '4.4.4.4')[0]);
    $t->e->clock->advance(61);
    same(200, track($t, $tok, '6.6.6.6')[0]);
});

test('track: CORS yalnız yapılandırılmış kökene; hata yanıtlarında da', function () {
    $t = trackEnv();
    $tok = seedLink($t);
    $o = ['origin' => 'https://umrerehberim.app'];
    [$st, , $h] = track($t, $tok, '5.5.5.5', $o);
    same(200, $st);
    same('https://umrerehberim.app', $h['Access-Control-Allow-Origin']);
    same('Origin', $h['Vary']);
    [$st, $b, $h] = track($t, 'kisa', '5.5.5.5', $o);
    same(400, $st);
    same('https://umrerehberim.app', $h['Access-Control-Allow-Origin'], 'hata yanıtında da');
    [$st, , $h] = track($t, newTrackToken(), '5.5.5.5', $o);
    same(404, $st);
    ok(isset($h['Access-Control-Allow-Origin']));
    // yabancı köken
    [$st, $b, $h] = track($t, $tok, '5.5.5.5', ['origin' => 'https://kotu.example']);
    same([403, 'forbidden_origin'], [$st, $b['error']]);
    ok(!isset($h['Access-Control-Allow-Origin']));
    // alt alan / şema / son eğik çizgi farkı eşleşmez
    foreach (['https://www.umrerehberim.app', 'http://umrerehberim.app', 'https://umrerehberim.app/', 'null', '*'] as $bad) {
        same(403, track($t, $tok, '5.5.5.5', ['origin' => $bad])[0], $bad);
    }
    // Origin yok (curl vb.): CORS başlığı yok ama çalışır
    [$st, , $h] = track($t, $tok);
    same(200, $st);
    ok(!isset($h['Access-Control-Allow-Origin']));
});

test('track: OPTIONS ön isteği 204 + CORS; yabancı köken 403; diğer uçlar tarayıcıya kapalı', function () {
    $t = trackEnv();
    $r = $t->e->api->handle(new Request('OPTIONS', '/v1/track', ['origin' => 'https://umrerehberim.app', 'access-control-request-method' => 'POST'], '', '5.5.5.5', true));
    same(204, $r->status);
    same('https://umrerehberim.app', $r->headers['Access-Control-Allow-Origin']);
    same('POST, OPTIONS', $r->headers['Access-Control-Allow-Methods']);
    same('Content-Type', $r->headers['Access-Control-Allow-Headers']);
    same([], $r->body);
    $r = $t->e->api->handle(new Request('OPTIONS', '/v1/track', ['origin' => 'https://kotu.example'], '', '5.5.5.5', true));
    same(403, $r->status);
    ok(!isset($r->headers['Access-Control-Allow-Origin']));
    // OPTIONS başka uçta hâlâ reddedilir
    $r = $t->e->api->handle(new Request('OPTIONS', '/v1/auth/login', ['origin' => 'https://umrerehberim.app'], '', '5.5.5.5', true));
    same(403, $r->status);
    same('forbidden_origin', $r->body['error']);
    same(403, call($t->e, 'POST', '/v1/auth/login', ['login_id' => '1234567', 'secret' => 'x'], null, '5.5.5.5', null, ['origin' => 'https://umrerehberim.app'])[0]);
    // web_origins boşken /v1/track tarayıcıya kapalı
    $t0 = trackEnv(['web_origins' => []]);
    same(403, track($t0, seedLink($t0), '5.5.5.5', ['origin' => 'https://umrerehberim.app'])[0]);
});

test('track: yöntem ve içerik türü denetimi', function () {
    $t = trackEnv();
    same(405, call($t->e, 'GET', '/v1/track')[0]);
    same(415, call($t->e, 'POST', '/v1/track', ['token' => newTrackToken()], null, '5.5.5.5', null, ['content-type' => 'text/plain'])[0]);
    same(403, call($t->e, 'POST', '/v1/track', ['token' => newTrackToken()], null, '5.5.5.5', null, [], false)[0], 'HTTPS şart');
});

test('track: Response 204 gövdesiz gönderilir', function () {
    $r = new \UmreApi\Response(204, [], ['X-A' => 'b']);
    same(204, $r->status);
    same([], $r->body);
});

test('RtdbRest: URL, Authorization, 404/null, hata, yol doğrulama', function () {
    $tr = new FakeTransport(static function ($m, $url) {
        if (str_contains($url, '/yok.json')) {
            return ['status' => 404, 'headers' => [], 'body' => ''];
        }
        if (str_contains($url, '/izinsiz.json')) {
            return ['status' => 401, 'headers' => [], 'body' => '{"error":"Permission denied"}'];
        }
        if (str_contains($url, '/bos.json')) {
            return ['status' => 200, 'headers' => [], 'body' => 'null'];
        }
        return ['status' => 200, 'headers' => [], 'body' => '{"latitude":21.4,"longitude":39.8,"timestamp":1}'];
    });
    $r = new \UmreApi\RtdbRest('https://x-default-rtdb.firebaseio.com/', new StaticToken('tok123'), $tr);
    same(['latitude' => 21.4, 'longitude' => 39.8, 'timestamp' => 1], $r->get('personal_locations/u1'));
    same('GET', $tr->requests[0]['method']);
    same('https://x-default-rtdb.firebaseio.com/personal_locations/u1.json', $tr->requests[0]['url']);
    ok(in_array('Authorization: Bearer tok123', $tr->requests[0]['headers'], true));
    same(null, $r->get('a/yok'));
    same(null, $r->get('a/bos'));
    $thrown = false;
    try {
        $r->get('a/izinsiz');
    } catch (UpstreamException $e) {
        $thrown = true;
    }
    ok($thrown, '401 -> UpstreamException');
    foreach (['a/../b', 'a/b.json?x=1', 'a//b', '', 'a/b#c', 'a/b?auth=1'] as $bad) {
        $threw = false;
        try {
            $r->get($bad);
        } catch (\InvalidArgumentException $e) {
            $threw = true;
        }
        ok($threw, "yol reddedilmeli: $bad");
    }
    same(4, count($tr->requests), 'geçersiz yollar ağa çıkmaz');
});

test('Config: varsayılan kapsamlar RTDB için firebase.database + userinfo.email içerir', function () {
    $s = Config::DEFAULT_SCOPES;
    ok(in_array('https://www.googleapis.com/auth/firebase.database', $s, true));
    ok(in_array('https://www.googleapis.com/auth/userinfo.email', $s, true));
    ok(in_array('https://www.googleapis.com/auth/datastore', $s, true));
    $c = Config::withDefaults([]);
    same([], $c['web_origins']);
    same(30, $c['track_limit']);
    same(20, $c['track_cache_ttl']);
});

// ------------------------------------------------------------------ sonuç
function rmrf(string $d): void
{
    if (!is_dir($d)) {
        @unlink($d);
        return;
    }
    foreach (scandir($d) ?: [] as $f) {
        if ($f !== '.' && $f !== '..') {
            rmrf($d . DIRECTORY_SEPARATOR . $f);
        }
    }
    @rmdir($d);
}
foreach ($GLOBALS['TMPDIRS'] ?? [] as $d) {
    rmrf($d);
    rmrf($d . 'x');
}
@unlink($errLog);
$T = $GLOBALS['T'];
echo "\n";
foreach ($T['fails'] as $f) {
    echo "BAŞARISIZ: $f\n";
}
printf("Test: %d, doğrulama: %d, başarısız: %d\n", $T['tests'], $T['asserts'], count($T['fails']));
echo $T['fails'] === [] ? "TÜMÜ GEÇTİ\n" : "HATA VAR\n";
exit($T['fails'] === [] ? 0 : 1);

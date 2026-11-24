// Aile Takibi kuralları: Firestore tracking_links (+views) ve RTDB personal_locations.
// docs/plan/AILE_TAKIBI_SOZLESME.md. Yerel öykünücüler; gerçek veritabanına dokunmaz.
import { readFileSync } from 'node:fs';
import { createHash } from 'node:crypto';
import { initializeTestEnvironment, assertSucceeds, assertFails } from '@firebase/rules-unit-testing';
import { doc, setDoc, getDoc, getDocs, updateDoc, deleteDoc, collection, query, where, serverTimestamp, Timestamp } from 'firebase/firestore';
import { ref, set, get, remove, serverTimestamp as rtdbNow } from 'firebase/database';

const env = await initializeTestEnvironment({
  projectId: 'demo-aile',
  firestore: { rules: readFileSync('../../firestore.rules', 'utf8'), host: '127.0.0.1', port: 8089 },
  database: { rules: readFileSync('../../database.rules.json', 'utf8'), host: '127.0.0.1', port: 9000 },
});
await env.clearFirestore();
await env.clearDatabase();

const A = 'ag_A';
const ts = new Date('2026-01-01T00:00:00Z');
const gun = (n) => Timestamp.fromMillis(Date.now() + n * 86400000);
const saat = (n) => Timestamp.fromMillis(Date.now() + n * 3600000);
const hashOf = (s) => createHash('sha256').update(s).digest('hex');
const admin = async (fn) => env.withSecurityRulesDisabled(async (ctx) => fn(ctx.firestore()));

await admin(async (db) => {
  const u = (id, d) => setDoc(doc(db, 'users', id), d);
  const bir = (name) => ({ user_name: name, user_type: 'misafir', account_kind: 'bireysel', agency_id: '',
    email: `${name}@gmail.test`, auth_provider: 'google', kvkk_version: '1', kvkk_accepted_at: ts,
    location_consent: false, created_at: ts, updated_at: ts });
  for (const id of ['baile', 'bfull', 'bumre', 'bfree', 'bexp', 'bpend', 'bother']) await u(id, bir(id));
  await u('g1', { user_type: 'misafir', agency_id: A, user_name: 'Ayşe' });
  await u('g2', { user_type: 'misafir', agency_id: '', user_name: 'Acentesiz' });
  await u('yon', { user_type: 'yonetici', agency_id: A });
  await u('esn', { user_type: 'esnaf', agency_id: A, shop_id: 'S1' });
  await u('dst', { user_type: 'destek', agency_id: '' });
  await u('sa', { user_type: 'super_admin', agency_id: '' });
  const e = (id, paket, status, paid_until) =>
    setDoc(doc(db, 'entitlements', id), { paket, status, paid_until, source: 'demo', updated_at: ts });
  await e('baile', 'aile', 'active', gun(20));
  await e('bfull', 'full', 'active', gun(20));
  await e('bumre', 'umre', 'active', gun(20));
  await e('bexp', 'aile', 'active', gun(-1));
  await e('bpend', 'full', 'pending_approval', gun(20));
  await e('bother', 'aile', 'active', gun(20));
});

const google = (uid) => env.authenticatedContext(uid, {
  email: `${uid}@gmail.test`, email_verified: true, firebase: { sign_in_provider: 'google.com' },
}).firestore();
const as = (uid) => env.authenticatedContext(uid, { email: `${uid}@x.test` }).firestore();
const anon = () => env.unauthenticatedContext().firestore();
let pass = 0, fail = 0;
async function t(name, fn) {
  try { await fn(); pass++; console.log('  OK  ', name); }
  catch (e) { fail++; console.log('  HATA', name, '→', e.message.split('\n')[0]); }
}

const link = (uid, over = {}) => ({
  owner_uid: uid, kind: 'bireysel', agency_id: '', label: 'Annem', approx: false, hidden_until: null,
  revoked: false, created_at: serverTimestamp(), expires_at: gun(10), ...over,
});
let n = 0;
const newHash = () => hashOf('token-' + (++n));
// Kurallar atlanarak hazır bağlantı yazar (sunucu/önceki durum gibi), hash döner.
const pre = async (id, over = {}) => {
  const h = newHash();
  await admin((db) => setDoc(doc(db, 'tracking_links', h), { ...link(id, { created_at: ts }), ...over }));
  return h;
};

console.log('--- Oluşturma: hak');
await t('aile paketli bireysel oluşturur', () => assertSucceeds(setDoc(doc(google('baile'), 'tracking_links', newHash()), link('baile'))));
await t('full paketli bireysel oluşturur', () => assertSucceeds(setDoc(doc(google('bfull'), 'tracking_links', newHash()), link('bfull'))));
await t('umre paketli bireysel OLUŞTURAMAZ', () => assertFails(setDoc(doc(google('bumre'), 'tracking_links', newHash()), link('bumre'))));
await t('paketsiz (ücretsiz) bireysel OLUŞTURAMAZ', () => assertFails(setDoc(doc(google('bfree'), 'tracking_links', newHash()), link('bfree'))));
await t('süresi bitmiş paketli bireysel OLUŞTURAMAZ', () => assertFails(setDoc(doc(google('bexp'), 'tracking_links', newHash()), link('bexp'))));
await t('onay bekleyen full OLUŞTURAMAZ', () => assertFails(setDoc(doc(google('bpend'), 'tracking_links', newHash()), link('bpend'))));
await t('acente misafiri kind=acente oluşturur', () => assertSucceeds(setDoc(doc(as('g1'), 'tracking_links', newHash()), link('g1', { kind: 'acente', agency_id: A }))));
await t('acente misafiri kind=bireysel OLUŞTURAMAZ', () => assertFails(setDoc(doc(as('g1'), 'tracking_links', newHash()), link('g1'))));
await t('acente misafiri başka acente kimliğiyle OLUŞTURAMAZ', () => assertFails(setDoc(doc(as('g1'), 'tracking_links', newHash()), link('g1', { kind: 'acente', agency_id: 'ag_B' }))));
await t('acentesiz misafir kind=acente OLUŞTURAMAZ', () => assertFails(setDoc(doc(as('g2'), 'tracking_links', newHash()), link('g2', { kind: 'acente', agency_id: '' }))));
await t('bireysel kind=acente diye OLUŞTURAMAZ', () => assertFails(setDoc(doc(google('baile'), 'tracking_links', newHash()), link('baile', { kind: 'acente', agency_id: A }))));
await t('yönetici OLUŞTURAMAZ', () => assertFails(setDoc(doc(as('yon'), 'tracking_links', newHash()), link('yon', { kind: 'acente', agency_id: A }))));
await t('esnaf OLUŞTURAMAZ', () => assertFails(setDoc(doc(as('esn'), 'tracking_links', newHash()), link('esn', { kind: 'acente', agency_id: A }))));
await t('destek OLUŞTURAMAZ', () => assertFails(setDoc(doc(as('dst'), 'tracking_links', newHash()), link('dst'))));
await t('süper admin OLUŞTURAMAZ (hak yok)', () => assertFails(setDoc(doc(as('sa'), 'tracking_links', newHash()), link('sa', { kind: 'acente', agency_id: '' }))));
await t('oturumsuz OLUŞTURAMAZ', () => assertFails(setDoc(doc(anon(), 'tracking_links', newHash()), link('baile'))));
await t('başkası adına (owner_uid) OLUŞTURAMAZ', () => assertFails(setDoc(doc(google('baile'), 'tracking_links', newHash()), link('bfull'))));

console.log('--- Oluşturma: alan doğrulaması');
const G = () => google('baile');
await t('yanlış hash biçimi (kısa) OLUŞTURAMAZ', () => assertFails(setDoc(doc(G(), 'tracking_links', 'abc123'), link('baile'))));
await t('yanlış hash biçimi (büyük harf) OLUŞTURAMAZ', () => assertFails(setDoc(doc(G(), 'tracking_links', newHash().toUpperCase()), link('baile'))));
await t('yanlış hash biçimi (65 hane) OLUŞTURAMAZ', () => assertFails(setDoc(doc(G(), 'tracking_links', newHash() + 'a'), link('baile'))));
await t('yanlış hash biçimi (hex dışı) OLUŞTURAMAZ', () => assertFails(setDoc(doc(G(), 'tracking_links', 'z'.repeat(64)), link('baile'))));
await t('fazladan alan OLUŞTURAMAZ', () => assertFails(setDoc(doc(G(), 'tracking_links', newHash()), { ...link('baile'), token: 'x' })));
await t('eksik alan OLUŞTURAMAZ', () => { const d = link('baile'); delete d.approx; return assertFails(setDoc(doc(G(), 'tracking_links', newHash()), d)); });
await t('revoked=true ile OLUŞTURAMAZ', () => assertFails(setDoc(doc(G(), 'tracking_links', newHash()), link('baile', { revoked: true }))));
await t('hidden_until dolu OLUŞTURAMAZ', () => assertFails(setDoc(doc(G(), 'tracking_links', newHash()), link('baile', { hidden_until: saat(1) }))));
await t('created_at istemci zamanı OLUŞTURAMAZ', () => assertFails(setDoc(doc(G(), 'tracking_links', newHash()), link('baile', { created_at: Timestamp.now() }))));
await t('etiket boş OLUŞTURAMAZ', () => assertFails(setDoc(doc(G(), 'tracking_links', newHash()), link('baile', { label: '' }))));
await t('etiket 31 karakter OLUŞTURAMAZ', () => assertFails(setDoc(doc(G(), 'tracking_links', newHash()), link('baile', { label: 'a'.repeat(31) }))));
await t('etiket 30 karakter oluşturur', () => assertSucceeds(setDoc(doc(G(), 'tracking_links', newHash()), link('baile', { label: 'a'.repeat(30) }))));
await t('approx=true oluşturur', () => assertSucceeds(setDoc(doc(G(), 'tracking_links', newHash()), link('baile', { approx: true }))));
await t('approx bool değil OLUŞTURAMAZ', () => assertFails(setDoc(doc(G(), 'tracking_links', newHash()), link('baile', { approx: 'evet' }))));
await t('expires_at 31 gün OLUŞTURAMAZ', () => assertFails(setDoc(doc(G(), 'tracking_links', newHash()), link('baile', { expires_at: gun(31) }))));
await t('expires_at geçmiş OLUŞTURAMAZ', () => assertFails(setDoc(doc(G(), 'tracking_links', newHash()), link('baile', { expires_at: gun(-1) }))));
await t('bireysel expires_at paid_until sonrası OLUŞTURAMAZ', () => assertFails(setDoc(doc(G(), 'tracking_links', newHash()), link('baile', { expires_at: gun(25) }))));
await t('bireysel expires_at paid_until içinde oluşturur', () => assertSucceeds(setDoc(doc(G(), 'tracking_links', newHash()), link('baile', { expires_at: gun(19) }))));
await t('acente misafiri 29 gün oluşturur', () => assertSucceeds(setDoc(doc(as('g1'), 'tracking_links', newHash()), link('g1', { kind: 'acente', agency_id: A, expires_at: gun(29) }))));

console.log('--- Okuma / liste');
const own = await pre('baile');
await t('sahibi okur', () => assertSucceeds(getDoc(doc(google('baile'), 'tracking_links', own))));
await t('sahibi kendi bağlantılarını listeler', () =>
  assertSucceeds(getDocs(query(collection(google('baile'), 'tracking_links'), where('owner_uid', '==', 'baile')))));
await t('başkasının bağlantısını OKUYAMAZ', () => assertFails(getDoc(doc(google('bother'), 'tracking_links', own))));
await t('başkası tümünü LİSTELEYEMEZ', () => assertFails(getDocs(collection(google('bother'), 'tracking_links'))));
await t('başkası owner_uid süzgeciyle başkasını LİSTELEYEMEZ', () =>
  assertFails(getDocs(query(collection(google('bother'), 'tracking_links'), where('owner_uid', '==', 'baile')))));
await t('yönetici başkasının bağlantısını OKUYAMAZ', () => assertFails(getDoc(doc(as('yon'), 'tracking_links', own))));
await t('oturumsuz OKUYAMAZ', () => assertFails(getDoc(doc(anon(), 'tracking_links', own))));
await t('süper admin okur', () => assertSucceeds(getDoc(doc(as('sa'), 'tracking_links', own))));
await t('süper admin listeler', () => assertSucceeds(getDocs(collection(as('sa'), 'tracking_links'))));

console.log('--- Güncelleme');
const upd = (uid, h, d, c = google) => updateDoc(doc(c(uid), 'tracking_links', h), d);
await t('sahibi etiketi değiştirir', async () => assertSucceeds(upd('baile', await pre('baile'), { label: 'Babam' })));
await t('sahibi approx değiştirir', async () => assertSucceeds(upd('baile', await pre('baile'), { approx: true })));
await t('sahibi 2 saat gizler', async () => assertSucceeds(upd('baile', await pre('baile'), { hidden_until: saat(2) })));
await t('sahibi gizlemeyi kaldırır (null)', async () => assertSucceeds(upd('baile', await pre('baile', { hidden_until: saat(1) }), { hidden_until: null })));
await t('hidden_until 3 saat OLMAZ', async () => assertFails(upd('baile', await pre('baile'), { hidden_until: saat(3) })));
await t('hidden_until 2 saat 5 dk OLMAZ', async () => assertFails(upd('baile', await pre('baile'), { hidden_until: Timestamp.fromMillis(Date.now() + 2 * 3600000 + 5 * 60000) })));
await t('hidden_until timestamp değil OLMAZ', async () => assertFails(upd('baile', await pre('baile'), { hidden_until: 'yarin' })));
await t('sahibi iptal eder (revoked=true)', async () => assertSucceeds(upd('baile', await pre('baile'), { revoked: true })));
await t('iptal geri ALINAMAZ (true→false)', async () => assertFails(upd('baile', await pre('baile', { revoked: true }), { revoked: false })));
await t('iptal edilmiş bağlantı güncellenemez (etiket)', async () => assertFails(upd('baile', await pre('baile', { revoked: true }), { label: 'Yeni' })));
await t('başkası güncelleyemez', async () => assertFails(upd('bother', await pre('baile'), { label: 'Hack' })));
await t('başkası iptal edemez', async () => assertFails(upd('bother', await pre('baile'), { revoked: true })));
await t('süper admin güncelleyemez', async () => assertFails(upd('sa', await pre('baile'), { label: 'X' }, as)));
await t('expires_at uzatılamaz', async () => assertFails(upd('baile', await pre('baile'), { expires_at: gun(30) })));
await t('owner_uid değiştirilemez', async () => assertFails(upd('baile', await pre('baile'), { owner_uid: 'bother' })));
await t('kind değiştirilemez', async () => assertFails(upd('baile', await pre('baile'), { kind: 'acente' })));
await t('agency_id değiştirilemez', async () => assertFails(upd('baile', await pre('baile'), { agency_id: A })));
await t('created_at değiştirilemez', async () => assertFails(upd('baile', await pre('baile'), { created_at: serverTimestamp() })));
await t('etiket 31 karakter OLMAZ', async () => assertFails(upd('baile', await pre('baile'), { label: 'a'.repeat(31) })));
await t('paketi biten sahibi yine de iptal edebilir', async () => assertSucceeds(upd('bexp', await pre('bexp'), { revoked: true })));

console.log('--- Silme (hesap silme akışı dahil)');
await t('sahibi siler', async () => assertSucceeds(deleteDoc(doc(google('baile'), 'tracking_links', await pre('baile')))));
await t('sahibi iptal edilmiş bağlantıyı siler', async () => assertSucceeds(deleteDoc(doc(google('baile'), 'tracking_links', await pre('baile', { revoked: true })))));
await t('paketi biten sahibi siler', async () => assertSucceeds(deleteDoc(doc(google('bexp'), 'tracking_links', await pre('bexp')))));
await t('başkası SİLEMEZ', async () => assertFails(deleteDoc(doc(google('bother'), 'tracking_links', await pre('baile')))));
await t('yönetici SİLEMEZ', async () => assertFails(deleteDoc(doc(as('yon'), 'tracking_links', await pre('baile')))));
await t('süper admin siler', async () => assertSucceeds(deleteDoc(doc(as('sa'), 'tracking_links', await pre('baile')))));
await t('oturumsuz SİLEMEZ', async () => assertFails(deleteDoc(doc(anon(), 'tracking_links', await pre('baile')))));

console.log('--- views alt koleksiyonu');
const vh = await pre('baile');
const vk = 'abcdef0123456789abcdef01';
await admin((db) => setDoc(doc(db, 'tracking_links', vh, 'views', vk), { first_at: ts, last_at: ts, count: 1, device: 'mobil' }));
const vdoc = (c) => doc(c, 'tracking_links', vh, 'views', vk);
await t('sahibi views okur', () => assertSucceeds(getDoc(vdoc(google('baile')))));
await t('sahibi views listeler', () => assertSucceeds(getDocs(collection(google('baile'), 'tracking_links', vh, 'views'))));
await t('başkası views OKUYAMAZ', () => assertFails(getDoc(vdoc(google('bother')))));
await t('başkası views LİSTELEYEMEZ', () => assertFails(getDocs(collection(google('bother'), 'tracking_links', vh, 'views'))));
await t('oturumsuz views OKUYAMAZ', () => assertFails(getDoc(vdoc(anon()))));
await t('sahibi views YAZAMAZ (create)', () => assertFails(setDoc(doc(google('baile'), 'tracking_links', vh, 'views', 'yeni0123456789abcdef0123'), { first_at: ts, last_at: ts, count: 1, device: 'mobil' })));
await t('sahibi views GÜNCELLEYEMEZ', () => assertFails(updateDoc(vdoc(google('baile')), { count: 99 })));
await t('başkası views SİLEMEZ', () => assertFails(deleteDoc(vdoc(google('bother')))));
await t('oturumsuz views SİLEMEZ', () => assertFails(deleteDoc(vdoc(anon()))));
await t('yönetici views SİLEMEZ', () => assertFails(deleteDoc(vdoc(as('yon')))));
await t('sahibi views siler, sonra bağlantıyı siler (hesap silme sırası)', async () => {
  const h2 = await pre('baile');
  const k = 'zzzzzz0123456789abcdef01';
  await admin((db) => setDoc(doc(db, 'tracking_links', h2, 'views', k), { first_at: ts, last_at: ts, count: 1, device: 'mobil' }));
  await assertSucceeds(deleteDoc(doc(google('baile'), 'tracking_links', h2, 'views', k)));
  await assertSucceeds(deleteDoc(doc(google('baile'), 'tracking_links', h2)));
});
await t('süper admin views YAZAMAZ', () => assertFails(setDoc(vdoc(as('sa')), { first_at: ts, last_at: ts, count: 5, device: 'mobil' })));
await t('başkası views YAZAMAZ', () => assertFails(setDoc(doc(google('bother'), 'tracking_links', vh, 'views', 'x0123456789abcdef0123456'), { count: 1 })));

console.log('--- RTDB personal_locations');
const rdb = (uid, provider = 'google.com') => env.authenticatedContext(uid, {
  email: `${uid}@gmail.test`, email_verified: true, firebase: { sign_in_provider: provider },
}).database();
const anonDb = () => env.unauthenticatedContext().database();
const loc = (over = {}) => ({ latitude: 21.4225, longitude: 39.8262, timestamp: Date.now(), accuracy: 18, ...over });
const P = 'personal_locations/baile';
await t('bireysel (google) kendi konumunu yazar', () => assertSucceeds(set(ref(rdb('baile'), P), loc())));
await t('bireysel kendi konumunu okur', () => assertSucceeds(get(ref(rdb('baile'), P))));
await t('bireysel kendi konumunu siler', () => assertSucceeds(remove(ref(rdb('baile'), P))));
await t('ServerValue.timestamp ile yazar (uygulamanın kullandığı biçim)', () =>
  assertSucceeds(set(ref(rdb('baile'), P), { latitude: 21.4, longitude: 39.8, accuracy: 12.5, timestamp: rtdbNow() })));
await t('accuracy olmadan da yazar', () => { const l = loc(); delete l.accuracy; return assertSucceeds(set(ref(rdb('baile'), P), l)); });
await t('başkasının konumunu YAZAMAZ', () => assertFails(set(ref(rdb('bother'), P), loc())));
await t('başkasının konumunu OKUYAMAZ', () => assertFails(get(ref(rdb('bother'), P))));
await t('google olmayan (password) YAZAMAZ', () => assertFails(set(ref(rdb('g1', 'password'), 'personal_locations/g1'), loc())));
await t('custom oturum YAZAMAZ', () => assertFails(set(ref(rdb('g1', 'custom'), 'personal_locations/g1'), loc())));
await t('yönetici (password) başkasını OKUYAMAZ', () => assertFails(get(ref(rdb('yon', 'password'), P))));
await t('süper admin (password) OKUYAMAZ', () => assertFails(get(ref(rdb('sa', 'password'), P))));
await t('oturumsuz OKUYAMAZ', () => assertFails(get(ref(anonDb(), P))));
await t('oturumsuz YAZAMAZ', () => assertFails(set(ref(anonDb(), P), loc())));
await t('kök personal_locations okunamaz', () => assertFails(get(ref(rdb('baile'), 'personal_locations'))));
await t('enlem aralık dışı OLMAZ', () => assertFails(set(ref(rdb('baile'), P), loc({ latitude: 91 }))));
await t('boylam aralık dışı OLMAZ', () => assertFails(set(ref(rdb('baile'), P), loc({ longitude: -181 }))));
await t('gelecek zaman damgası OLMAZ', () => assertFails(set(ref(rdb('baile'), P), loc({ timestamp: Date.now() + 3600000 }))));
await t('eksik alan (timestamp) OLMAZ', () => { const l = loc(); delete l.timestamp; return assertFails(set(ref(rdb('baile'), P), l)); });
await t('negatif accuracy OLMAZ', () => assertFails(set(ref(rdb('baile'), P), loc({ accuracy: -1 }))));
await t('userName alanı OLMAZ (sözleşmede yok)', () => assertFails(set(ref(rdb('baile'), P), loc({ userName: 'X' }))));
await t('bilinmeyen alan OLMAZ', () => assertFails(set(ref(rdb('baile'), P), loc({ extra: 1 }))));
await t('mevcut locations kuralı bozulmadı (rolsüz yazamaz)', () => assertFails(set(ref(rdb('g1', 'password'), 'locations/ag_A/g1'), loc({ userName: 'Ayşe' }))));

console.log(`\nAile Takibi: ${pass} geçti, ${fail} hata`);
await env.cleanup();
process.exit(fail ? 1 : 0);

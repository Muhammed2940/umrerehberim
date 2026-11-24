// Aile Takibi ARA MOD (PHP'siz): RTDB tracking_public/{hash}.
// docs/plan/AILE_TAKIBI_SOZLESME.md ("ARA MOD"). Yerel öykünücü; gerçek veritabanına dokunmaz.
import { readFileSync } from 'node:fs';
import { createHash } from 'node:crypto';
import { initializeTestEnvironment, assertSucceeds, assertFails } from '@firebase/rules-unit-testing';
import { ref, set, get, remove, update, serverTimestamp as rtdbNow } from 'firebase/database';

const env = await initializeTestEnvironment({
  projectId: 'demo-tpub',
  database: { rules: readFileSync('../../database.rules.json', 'utf8'), host: '127.0.0.1', port: 9000 },
});
await env.clearDatabase();

let pass = 0, fail = 0;
async function t(name, fn) {
  try { await fn(); pass++; console.log('  OK  ', name); }
  catch (e) { fail++; console.log('  HATA', name, '→', e.message.split('\n')[0]); }
}

const db = (uid, provider = 'password') => env.authenticatedContext(uid, { firebase: { sign_in_provider: provider } }).database();
const anon = () => env.unauthenticatedContext().database();
const H = createHash('sha256').update('token-1').digest('hex');
const H2 = createHash('sha256').update('token-2').digest('hex');
const P = `tracking_public/${H}`;
const gun = (n) => Date.now() + n * 86400000;
const node = (owner, over = {}) => ({
  owner, name: 'Ayşe', expires_at: gun(10), hidden_until: 0, approx: false,
  lat: 21.4225, lng: 39.8262, accuracy: 18, updated_at: Date.now(), ...over,
});
const meta = (owner, over = {}) => ({ owner, name: 'Ayşe', expires_at: gun(10), hidden_until: 0, approx: false, ...over });

console.log('--- tracking_public');
await t('sahibi (misafir, password) yazar', () => assertSucceeds(set(ref(db('g1'), P), node('g1'))));
await t('bireysel (google) yazar', () => assertSucceeds(set(ref(db('b1', 'google.com'), `tracking_public/${H2}`), node('b1'))));
await t('ServerValue.timestamp ile yazar', () => assertSucceeds(set(ref(db('g1'), P), node('g1', { updated_at: rtdbNow() }))));
await t('konumsuz (yalnız ayar) yazar', () => assertSucceeds(set(ref(db('g1'), P), meta('g1'))));
await t('gizli (hidden_until ≤ 2 sa) yazar', () => assertSucceeds(set(ref(db('g1'), P), meta('g1', { hidden_until: Date.now() + 7000000 }))));
await t('yaklaşık + accuracy 1500 yazar', () => assertSucceeds(set(ref(db('g1'), P), node('g1', { approx: true, lat: 21.42, lng: 39.83, accuracy: 1500 }))));
await t('oturumsuz hash ile OKUR (web)', () => assertSucceeds(get(ref(anon(), P))));
await t('kök tracking_public LİSTELENEMEZ', () => assertFails(get(ref(anon(), 'tracking_public'))));
await t('oturumlu da kökü LİSTELEYEMEZ', () => assertFails(get(ref(db('g1'), 'tracking_public'))));
await t('geçersiz hash biçimi OKUNAMAZ', () => assertFails(get(ref(anon(), 'tracking_public/abc'))));
await t('geçersiz hash biçimine YAZILAMAZ', () => assertFails(set(ref(db('g1'), 'tracking_public/ABC'), node('g1'))));
await t('başkası üzerine YAZAMAZ', () => assertFails(set(ref(db('x9'), P), node('x9'))));
await t('başkası SİLEMEZ', () => assertFails(remove(ref(db('x9'), P))));
await t('başkası alan GÜNCELLEYEMEZ', () => assertFails(update(ref(db('x9'), P), { lat: 0 })));
await t('başkası adına (owner sahte) yeni düğüm AÇAMAZ', () =>
  assertFails(set(ref(db('x9'), `tracking_public/${createHash('sha256').update('t3').digest('hex')}`), node('g1'))));
await t('oturumsuz YAZAMAZ', () => assertFails(set(ref(anon(), `tracking_public/${createHash('sha256').update('t4').digest('hex')}`), node('anon'))));
await t('owner değiştirilemez', () => assertFails(set(ref(db('g1'), P), node('x9'))));
await t('yarım konum (lat var, updated_at yok) OLMAZ', () => { const n = node('g1'); delete n.updated_at; return assertFails(set(ref(db('g1'), P), n)); });
await t('eksik ayar (expires_at) OLMAZ', () => { const n = node('g1'); delete n.expires_at; return assertFails(set(ref(db('g1'), P), n)); });
await t('31 günden uzun süre OLMAZ', () => assertFails(set(ref(db('g1'), P), node('g1', { expires_at: gun(40) }))));
await t('2 saatten uzun gizleme OLMAZ', () => assertFails(set(ref(db('g1'), P), meta('g1', { hidden_until: Date.now() + 3 * 3600000 }))));
await t('yaklaşıkta 1500 m altı doğruluk OLMAZ', () => assertFails(set(ref(db('g1'), P), node('g1', { approx: true, accuracy: 20 }))));
await t('uzun ad (41) OLMAZ', () => assertFails(set(ref(db('g1'), P), node('g1', { name: 'x'.repeat(41) }))));
await t('bilinmeyen alan OLMAZ', () => assertFails(set(ref(db('g1'), P), node('g1', { label: 'Annem' }))));
await t('enlem aralık dışı OLMAZ', () => assertFails(set(ref(db('g1'), P), node('g1', { lat: 91 }))));
await t('gelecek zaman damgası OLMAZ', () => assertFails(set(ref(db('g1'), P), node('g1', { updated_at: Date.now() + 3600000 }))));
await t('sahibi siler (iptal)', () => assertSucceeds(remove(ref(db('g1'), P))));
await t('silinince web null okur', async () => { const s = await get(ref(anon(), P)); if (s.exists()) throw new Error('düğüm duruyor'); });

console.log(`\ntracking_public: ${pass} geçti, ${fail} hata`);
await env.cleanup();
process.exit(fail ? 1 : 0);

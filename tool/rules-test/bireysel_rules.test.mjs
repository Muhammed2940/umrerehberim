// Bireysel kullanıcı (Google ile giriş, Faz 1) Firestore kuralları testi — tool/BIREYSEL_SEMA.md.
// Yerel öykünücü; gerçek veritabanına dokunmaz.
// Çalıştırma: calistir.ps1 (firebase emulators:exec ... "node bireysel_rules.test.mjs")
import { readFileSync } from 'node:fs';
import { initializeTestEnvironment, assertSucceeds, assertFails } from '@firebase/rules-unit-testing';
import {
  doc, setDoc, getDoc, updateDoc, deleteDoc, collection, query, where, getDocs, serverTimestamp,
} from 'firebase/firestore';

const env = await initializeTestEnvironment({
  projectId: 'demo-bireysel',
  firestore: { rules: readFileSync('../../firestore.rules', 'utf8'), host: '127.0.0.1', port: 8089 },
});
await env.clearFirestore();

const A = 'ag_A';
const ts = new Date('2026-01-01T00:00:00Z');
await env.withSecurityRulesDisabled(async (ctx) => {
  const db = ctx.firestore();
  const u = (id, d) => setDoc(doc(db, 'users', id), d);
  const bir = (name) => ({ user_name: name, user_type: 'misafir', account_kind: 'bireysel', agency_id: '',
    email: `${name}@gmail.test`, auth_provider: 'google', kvkk_version: '1', kvkk_accepted_at: ts,
    location_consent: false, created_at: ts, updated_at: ts });
  await u('bir1', bir('bir1'));
  await u('bir2', bir('bir2'));
  await u('g1', { user_type: 'misafir', agency_id: A, user_name: 'Ayşe' });
  await u('a1', { user_type: 'acente_admin', agency_id: A, user_name: 'Rehber A' });
  await u('ae', { user_type: 'acente_admin', agency_id: '', user_name: 'Acentesiz admin' });
  await u('mg', { user_type: 'yonetici', agency_id: '', user_name: 'Genel Yönetici' });
  await u('sa', { user_type: 'super_admin', agency_id: '' });
  await u('ds', { user_type: 'destek', agency_id: '' });
  await u('mu', { user_type: 'muhasebe', agency_id: '' });
  // Google token'ı bu uid'lerle gelirse (e-postayla hesap bağlama) personel yetkisi AÇILMAMALI.
  await u('lnk_sa', { user_type: 'super_admin', agency_id: '', user_name: 'Bağlı süper' });
  await u('lnk_mg', { user_type: 'yonetici', agency_id: '', user_name: 'Bağlı yönetici' });
  await u('lnk_aa', { user_type: 'acente_admin', agency_id: A, user_name: 'Bağlı acente admini' });
  await u('lnk_ds', { user_type: 'destek', agency_id: '', user_name: 'Bağlı destek' });
  await u('lnk_g', { user_type: 'misafir', agency_id: A, user_name: 'Bağlı hacı' });
  await setDoc(doc(db, 'agencies', A), { name: 'A' });
  // agency_id'si BOŞ belgeler: hiçbir "aynı acente" kuralı bunları bireysele açmamalı.
  for (const col of ['trips', 'hotels', 'rooms', 'events', 'currencies', 'notifications', 'trip_managers']) {
    await setDoc(doc(db, col, 'bos'), { agency_id: '', title: 'x' });
  }
  await setDoc(doc(db, 'trips', 'tA'), { agency_id: A, title: 'A seferi' });
  await setDoc(doc(db, 'telsiz', '_x'), { agency_id: '', trip_id: 'x' });
  await setDoc(doc(db, 'shops', 'sBos'), { agency_id: '', is_active: true });
  await setDoc(doc(db, 'shops', 'sAll'), { agency_id: 'all', is_active: true });
  await setDoc(doc(db, 'coupons', 'KBOS'), { agency_id: '', active: true });
  await setDoc(doc(db, 'agency_messages', 'm1'), { agency_id: '', from_side: 'agency', from_uid: 'ae' });
  await setDoc(doc(db, 'hatim_groups', 'pub'), { name: 'Açık grup', is_public: true, agency_id: '', owner_uid: 'bir1', members: ['bir1'] });
  await setDoc(doc(db, 'hatim_groups', 'priv'), { name: 'Özel grup', is_public: false, agency_id: '', owner_uid: 'bir1', members: ['bir1'] });
  await setDoc(doc(db, 'mekke_prayer_times', 'x'), { v: 1 });
  await setDoc(doc(db, 'content', 'dualar'), { v: 1 });
});

// Google ile giriş yapmış, e-postası doğrulanmış kullanıcı.
const google = (uid, over = {}) => env.authenticatedContext(uid, {
  email: `${uid}@gmail.test`, email_verified: true, firebase: { sign_in_provider: 'google.com' }, ...over,
}).firestore();
const as = (uid) => env.authenticatedContext(uid, { email: `${uid}@x.test` }).firestore();
let pass = 0, fail = 0;
async function t(name, fn) {
  try { await fn(); pass++; console.log('  OK  ', name); }
  catch (e) { fail++; console.log('  HATA', name, '→', e.message.split('\n')[0]); }
}
// Sözleşmedeki geçerli yeni belge (e-posta, uid'e göre token'dakiyle aynı).
const valid = (uid, over = {}) => ({
  user_name: 'Mehmet Yılmaz', user_type: 'misafir', account_kind: 'bireysel', agency_id: '',
  email: `${uid}@gmail.test`, auth_provider: 'google', kvkk_version: '1', kvkk_accepted_at: serverTimestamp(),
  location_consent: false, created_at: serverTimestamp(), updated_at: serverTimestamp(), ...over,
});
const withoutKey = (o, k) => { const c = { ...o }; delete c[k]; return c; };

console.log('bireysel hesap açma:');
await t('geçerli Google kaydı kendi belgesini oluşturur', () =>
  assertSucceeds(setDoc(doc(google('yeni1'), 'users', 'yeni1'), valid('yeni1'))));
await t('konum rızası true ile de oluşur', () =>
  assertSucceeds(setDoc(doc(google('yeni2'), 'users', 'yeni2'), valid('yeni2', { location_consent: true }))));
await t('oturumsuz oluşturamaz', () =>
  assertFails(setDoc(doc(env.unauthenticatedContext().firestore(), 'users', 'yeni3'), valid('yeni3'))));
await t('parola sağlayıcısıyla oluşturamaz', () =>
  assertFails(setDoc(doc(google('p1', { firebase: { sign_in_provider: 'password' } }), 'users', 'p1'), valid('p1'))));
await t('custom sağlayıcıyla oluşturamaz', () =>
  assertFails(setDoc(doc(google('p2', { firebase: { sign_in_provider: 'custom' } }), 'users', 'p2'), valid('p2'))));
await t('e-posta doğrulanmamışsa oluşturamaz', () =>
  assertFails(setDoc(doc(google('p3', { email_verified: false }), 'users', 'p3'), valid('p3'))));
await t('başkasının belgesini oluşturamaz', () =>
  assertFails(setDoc(doc(google('yeni4'), 'users', 'baskasi'), valid('yeni4'))));
await t('e-posta token ile uyuşmazsa oluşturamaz', () =>
  assertFails(setDoc(doc(google('yeni5'), 'users', 'yeni5'), valid('yeni5', { email: 'baska@gmail.test' }))));
for (const [k, v] of [
  ['login_id', '1234567'], ['auth_migrated', true], ['disabled', false], ['user_tc', '11111111111'],
  ['shop_id', 's1'], ['trip_id', 't1'], ['hotel_id', 'h1'], ['room_id', 'r1'], ['points', 100], ['fcm_token', 'x'],
]) {
  await t(`fazladan alan (${k}) ile oluşturamaz`, () =>
    assertFails(setDoc(doc(google('x1'), 'users', 'x1'), valid('x1', { [k]: v }))));
}
for (const k of ['user_name', 'user_type', 'account_kind', 'agency_id', 'email', 'auth_provider',
  'kvkk_version', 'kvkk_accepted_at', 'location_consent', 'created_at', 'updated_at']) {
  await t(`zorunlu alan (${k}) eksikse oluşturamaz`, () =>
    assertFails(setDoc(doc(google('x2'), 'users', 'x2'), withoutKey(valid('x2'), k))));
}
await t('user_type yonetici olamaz', () =>
  assertFails(setDoc(doc(google('x3'), 'users', 'x3'), valid('x3', { user_type: 'yonetici' }))));
await t('user_type super_admin olamaz', () =>
  assertFails(setDoc(doc(google('x4'), 'users', 'x4'), valid('x4', { user_type: 'super_admin' }))));
await t('account_kind acente olamaz', () =>
  assertFails(setDoc(doc(google('x5'), 'users', 'x5'), valid('x5', { account_kind: 'acente' }))));
await t('agency_id dolu olamaz (acenteye kendini bağlayamaz)', () =>
  assertFails(setDoc(doc(google('x6'), 'users', 'x6'), valid('x6', { agency_id: A }))));
await t('auth_provider google dışı olamaz', () =>
  assertFails(setDoc(doc(google('x7'), 'users', 'x7'), valid('x7', { auth_provider: 'password' }))));
await t('ad 1 karakter olamaz', () =>
  assertFails(setDoc(doc(google('x8'), 'users', 'x8'), valid('x8', { user_name: 'A' }))));
await t('ad 61 karakter olamaz', () =>
  assertFails(setDoc(doc(google('x9'), 'users', 'x9'), valid('x9', { user_name: 'A'.repeat(61) }))));
await t('kvkk_version 21 karakter olamaz', () =>
  assertFails(setDoc(doc(google('x10'), 'users', 'x10'), valid('x10', { kvkk_version: 'v'.repeat(21) }))));
await t('location_consent bool olmalı', () =>
  assertFails(setDoc(doc(google('x11'), 'users', 'x11'), valid('x11', { location_consent: 'evet' }))));
await t('istemci zamanıyla (request.time değil) oluşturamaz', () =>
  assertFails(setDoc(doc(google('x12'), 'users', 'x12'), valid('x12', { created_at: new Date() }))));
await t('kvkk_accepted_at sunucu zamanı olmalı', () =>
  assertFails(setDoc(doc(google('x13'), 'users', 'x13'), valid('x13', { kvkk_accepted_at: ts }))));
await t('acente admini bireysel işaretli belge açamaz', () =>
  assertFails(setDoc(doc(as('a1'), 'users', 'z1'), { user_type: 'misafir', agency_id: A, account_kind: 'bireysel', user_name: 'Z' })));
await t('yönetici bireysel işaretli belge açamaz', () =>
  assertFails(setDoc(doc(as('mg'), 'users', 'z2'), { user_type: 'misafir', agency_id: A, account_kind: 'bireysel', user_name: 'Z' })));
await t('acente admini normal misafir açmaya devam eder', () =>
  assertSucceeds(setDoc(doc(as('a1'), 'users', 'z3'), { user_type: 'misafir', agency_id: A, user_name: 'Z' })));
await t('acentesi boş acente admini misafir açamaz', () =>
  assertFails(setDoc(doc(as('ae'), 'users', 'z4'), { user_type: 'misafir', agency_id: '', user_name: 'Z' })));

console.log('bireysel kendi belgesini güncelleme:');
await t('user_name günceller', () =>
  assertSucceeds(updateDoc(doc(google('bir1'), 'users', 'bir1'), { user_name: 'Yeni Ad', updated_at: serverTimestamp() })));
await t('location_consent günceller', () =>
  assertSucceeds(updateDoc(doc(google('bir1'), 'users', 'bir1'), { location_consent: true, updated_at: serverTimestamp() })));
await t('fcm_token, user_location, last_active_at günceller', () =>
  assertSucceeds(updateDoc(doc(google('bir1'), 'users', 'bir1'),
    { fcm_token: 'tok', user_location: { lat: 1, lng: 2 }, last_active_at: serverTimestamp(), updated_at: serverTimestamp() })));
await t('ad 1 karaktere düşürülemez', () =>
  assertFails(updateDoc(doc(google('bir1'), 'users', 'bir1'), { user_name: 'A' })));
await t('ad 61 karaktere çıkarılamaz', () =>
  assertFails(updateDoc(doc(google('bir1'), 'users', 'bir1'), { user_name: 'A'.repeat(61) })));
await t('location_consent bool dışı olamaz', () =>
  assertFails(updateDoc(doc(google('bir1'), 'users', 'bir1'), { location_consent: 'x' })));
for (const [k, v] of [
  ['user_type', 'yonetici'], ['user_type', 'super_admin'], ['account_kind', 'acente'], ['agency_id', A],
  ['email', 'baska@gmail.test'], ['auth_provider', 'password'], ['kvkk_version', '2'], ['created_at', new Date()],
  ['login_id', '1234567'], ['auth_migrated', true], ['disabled', false], ['shop_id', 's1'], ['user_tc', '11111111111'],
]) {
  await t(`${k} değiştirilemez/eklenemez`, () =>
    assertFails(updateDoc(doc(google('bir1'), 'users', 'bir1'), { [k]: v })));
}
await t('başkasının belgesini güncelleyemez', () =>
  assertFails(updateDoc(doc(google('bir1'), 'users', 'bir2'), { user_name: 'Hack' })));
await t('acente hacısı ad/location_consent güncelleyemez (yalnız fcm_token vb.)', () =>
  assertFails(updateDoc(doc(as('g1'), 'users', 'g1'), { user_name: 'Hack' })));
await t('acente hacısı account_kind ekleyemez', () =>
  assertFails(updateDoc(doc(as('g1'), 'users', 'g1'), { account_kind: 'bireysel' })));
await t('yönetici account_kind çeviremez (bireysel belge)', () =>
  assertFails(updateDoc(doc(as('mg'), 'users', 'g1'), { account_kind: 'bireysel' })));
await t('acente admini account_kind çeviremez', () =>
  assertFails(updateDoc(doc(as('a1'), 'users', 'g1'), { account_kind: 'bireysel' })));
await t('süper admin account_kind değiştirebilir', () =>
  assertSucceeds(updateDoc(doc(as('sa'), 'users', 'g1'), { account_kind: 'acente' })));
await t('yönetici acente hacısının adını güncellemeye devam eder', () =>
  assertSucceeds(updateDoc(doc(as('mg'), 'users', 'g1'), { user_name: 'Ayşe Y.' })));

console.log('bireysel hesap silme:');
await t('bireysel kendi belgesini siler', () =>
  assertSucceeds(deleteDoc(doc(google('bir2'), 'users', 'bir2'))));
await t('bireysel başkasının belgesini silemez', () =>
  assertFails(deleteDoc(doc(google('bir1'), 'users', 'yeni1'))));
await t('acente hacısı kendini silemez', () =>
  assertFails(deleteDoc(doc(as('g1'), 'users', 'g1'))));
await t('acente admini kendini silemez', () =>
  assertFails(deleteDoc(doc(as('a1'), 'users', 'a1'))));
// bir2 silindi; okuma testleri için yeniden oluştur.
await env.withSecurityRulesDisabled(async (ctx) => {
  await setDoc(doc(ctx.firestore(), 'users', 'bir2'), { user_name: 'bir2', user_type: 'misafir', account_kind: 'bireysel',
    agency_id: '', email: 'bir2@gmail.test', auth_provider: 'google', kvkk_version: '1', kvkk_accepted_at: ts,
    location_consent: false, created_at: ts, updated_at: ts });
});

console.log('bireysel okuma sınırları:');
await t('kendi users belgesini okur', () => assertSucceeds(getDoc(doc(google('bir1'), 'users', 'bir1'))));
await t('başka bireyselin users belgesini okuyamaz', () => assertFails(getDoc(doc(google('bir1'), 'users', 'bir2'))));
await t('karşılıklı: ikinci bireysel de ilkini okuyamaz', () => assertFails(getDoc(doc(google('bir2'), 'users', 'bir1'))));
await t('acente hacısının belgesini okuyamaz', () => assertFails(getDoc(doc(google('bir1'), 'users', 'g1'))));
await t('acente admininin belgesini okuyamaz', () => assertFails(getDoc(doc(google('bir1'), 'users', 'a1'))));
await t('users listeleyemez (agency_id == \'\' ile)', () =>
  assertFails(getDocs(query(collection(google('bir1'), 'users'), where('agency_id', '==', '')))));
for (const col of ['trips', 'hotels', 'rooms', 'events', 'currencies', 'notifications', 'trip_managers']) {
  await t(`agency_id '' olan ${col} belgesini okuyamaz`, () => assertFails(getDoc(doc(google('bir1'), col, 'bos'))));
  await t(`${col} listeleyemez (agency_id == '')`, () =>
    assertFails(getDocs(query(collection(google('bir1'), col), where('agency_id', '==', '')))));
}
await t('acente seferini okuyamaz', () => assertFails(getDoc(doc(google('bir1'), 'trips', 'tA'))));
await t('telsiz (agency_id \'\') okuyamaz', () => assertFails(getDoc(doc(google('bir1'), 'telsiz', '_x'))));
await t('shops agency_id \'\' okuyamaz', () => assertFails(getDoc(doc(google('bir1'), 'shops', 'sBos'))));
await t('shops agency_id all okur', () => assertSucceeds(getDoc(doc(google('bir1'), 'shops', 'sAll'))));
await t('agency_id \'\' kuponu okuyamaz', () => assertFails(getDoc(doc(google('bir1'), 'coupons', 'KBOS'))));
await t('acente mesajı okuyamaz', () => assertFails(getDoc(doc(google('bir1'), 'agency_messages', 'm1'))));
await t('acente belgesini okuyamaz', () => assertFails(getDoc(doc(google('bir1'), 'agencies', A))));
await t('shop_token oluşturamaz (acentesi yok)', () =>
  assertFails(setDoc(doc(google('bir1'), 'shop_tokens', 'tk1'), { guest_uid: 'bir1', agency_id: '',
    created_at: serverTimestamp(), used: false, points_available: 0 })));
await t('ezan vakitlerini okur', () => assertSucceeds(getDoc(doc(google('bir1'), 'mekke_prayer_times', 'x'))));
await t('content (dualar) okur', () => assertSucceeds(getDoc(doc(google('bir1'), 'content', 'dualar'))));

console.log('acentesi boş acente admini (boş acente eşleşmemeli):');
await t('agency_id \'\' seferi okuyamaz', () => assertFails(getDoc(doc(as('ae'), 'trips', 'bos'))));
await t('agency_id \'\' seferi oluşturamaz', () =>
  assertFails(setDoc(doc(as('ae'), 'trips', 'yeni'), { agency_id: '', title: 'x' })));
await t('agency_id \'\' acente mesajını okuyamaz', () => assertFails(getDoc(doc(as('ae'), 'agency_messages', 'm1'))));
await t('agency_id \'\' misafir belgesini okuyamaz', () => assertFails(getDoc(doc(as('ae'), 'users', 'bir1'))));

console.log('hatim (herkese açık / özel):');
await t('bireysel herkese açık grubu okur', () => assertSucceeds(getDoc(doc(google('bir2'), 'hatim_groups', 'pub'))));
await t('başka bireysel özel (\'\' acente) grubu okuyamaz', () => assertFails(getDoc(doc(google('bir2'), 'hatim_groups', 'priv'))));
await t('üye kendi özel grubunu okur', () => assertSucceeds(getDoc(doc(google('bir1'), 'hatim_groups', 'priv'))));
await t('bireysel herkese açık grupları listeler', () =>
  assertSucceeds(getDocs(query(collection(google('bir2'), 'hatim_groups'), where('is_public', '==', true)))));

console.log('platform personeli (destek / muhasebe / süper admin) önceki erişimini korur:');
await t('destek users listeler', () => assertSucceeds(getDocs(collection(as('ds'), 'users'))));
await t('destek bireysel belgesini okur', () => assertSucceeds(getDoc(doc(as('ds'), 'users', 'bir1'))));
await t('destek acente belgesini okur', () => assertSucceeds(getDoc(doc(as('ds'), 'agencies', A))));
await t('destek acente mesajını okur (agency_id \'\' dahil)', () => assertSucceeds(getDoc(doc(as('ds'), 'agency_messages', 'm1'))));
await t('destek özel hatim grubunu okur', () => assertSucceeds(getDoc(doc(as('ds'), 'hatim_groups', 'priv'))));
await t('muhasebe users belgesini okur', () => assertSucceeds(getDoc(doc(as('mu'), 'users', 'g1'))));
await t('muhasebe acente belgesini okur', () => assertSucceeds(getDoc(doc(as('mu'), 'agencies', A))));
await t('muhasebe kuponu okur (agency_id \'\' dahil)', () => assertSucceeds(getDoc(doc(as('mu'), 'coupons', 'KBOS'))));
await t('muhasebe özel hatim grubunu okuyamaz', () => assertFails(getDoc(doc(as('mu'), 'hatim_groups', 'priv'))));
await t('yönetici agency_id \'\' seferi okur (genel yönetici)', () => assertSucceeds(getDoc(doc(as('mg'), 'trips', 'bos'))));
await t('süper admin agency_id \'\' seferi okur', () => assertSucceeds(getDoc(doc(as('sa'), 'trips', 'bos'))));
await t('acente admini kendi acentesinin seferini okur', () => assertSucceeds(getDoc(doc(as('a1'), 'trips', 'tA'))));
await t('acente hacısı kendi acentesinin seferini okur', () => assertSucceeds(getDoc(doc(as('g1'), 'trips', 'tA'))));

console.log('Google token rol karışıklığı (kök e-postası / bağlanmış personel uid\'si):');
const ROOT_EMAIL = '10000000146@umrerehberim.app';
// Doğrulanmış Google hesabı kök e-postasını taşıyor (alan adı/posta kutusu ele geçirilirse).
const googleRoot = () => google('gRoot', { email: ROOT_EMAIL });
// PHP servisinin custom token'ı kök e-postasını taşımaz; taşısa bile kök sayılmamalı.
const customRoot = () => env.authenticatedContext('cRoot', {
  email: ROOT_EMAIL, firebase: { sign_in_provider: 'custom' },
}).firestore();
// Asıl kök: e-posta/şifre oturumu.
const passwordRoot = () => env.authenticatedContext('pRoot', {
  email: ROOT_EMAIL, firebase: { sign_in_provider: 'password' },
}).firestore();

await t('Google + kök e-postası acente belgesini okuyamaz', () => assertFails(getDoc(doc(googleRoot(), 'agencies', A))));
await t('Google + kök e-postası acente oluşturamaz', () =>
  assertFails(setDoc(doc(googleRoot(), 'agencies', 'gHack'), { name: 'Hack' })));
await t('Google + kök e-postası users listeleyemez', () => assertFails(getDocs(collection(googleRoot(), 'users'))));
await t('Google + kök e-postası başkasının belgesini okuyamaz', () => assertFails(getDoc(doc(googleRoot(), 'users', 'g1'))));
await t('Google + kök e-postası yönetici belgesi açamaz', () =>
  assertFails(setDoc(doc(googleRoot(), 'users', 'gYeni'), { user_type: 'yonetici', agency_id: '', user_name: 'X' })));
await t('Google + kök e-postası kendine super_admin belgesi açamaz', () =>
  assertFails(setDoc(doc(googleRoot(), 'users', 'gRoot'), { user_type: 'super_admin', agency_id: '', user_name: 'X' })));
await t('Google + kök e-postası kullanıcı silemez', () => assertFails(deleteDoc(doc(googleRoot(), 'users', 'g1'))));
await t('Google + kök e-postası account_kind değiştiremez', () =>
  assertFails(updateDoc(doc(googleRoot(), 'users', 'g1'), { account_kind: 'bireysel' })));
await t('Google + kök e-postası agency_id \'\' seferi okuyamaz', () => assertFails(getDoc(doc(googleRoot(), 'trips', 'bos'))));
await t('custom token + kök e-postası acente oluşturamaz', () =>
  assertFails(setDoc(doc(customRoot(), 'agencies', 'cHack'), { name: 'Hack' })));
await t('custom token + kök e-postası users listeleyemez', () => assertFails(getDocs(collection(customRoot(), 'users'))));
await t('şifreli kök acente belgesini okur', () => assertSucceeds(getDoc(doc(passwordRoot(), 'agencies', A))));
await t('şifreli kök users listeler', () => assertSucceeds(getDocs(collection(passwordRoot(), 'users'))));
await t('şifreli kök acente oluşturur', () =>
  assertSucceeds(setDoc(doc(passwordRoot(), 'agencies', 'pYeni'), { name: 'Yeni' })));

for (const [uid, label] of [['lnk_sa', 'super_admin'], ['lnk_mg', 'yonetici'], ['lnk_aa', 'acente_admin'], ['lnk_ds', 'destek']]) {
  await t(`Google + ${label} belgeli uid users listeleyemez`, () => assertFails(getDocs(collection(google(uid), 'users'))));
  await t(`Google + ${label} belgeli uid acente hacısını okuyamaz`, () => assertFails(getDoc(doc(google(uid), 'users', 'g1'))));
  await t(`Google + ${label} belgeli uid acente belgesini okuyamaz`, () => assertFails(getDoc(doc(google(uid), 'agencies', A))));
  await t(`Google + ${label} belgeli uid acente seferini okuyamaz`, () => assertFails(getDoc(doc(google(uid), 'trips', 'tA'))));
  await t(`Google + ${label} belgeli uid sefer oluşturamaz`, () =>
    assertFails(setDoc(doc(google(uid), 'trips', `x_${uid}`), { agency_id: A, title: 'x' })));
  await t(`Google + ${label} belgeli uid misafir açamaz`, () =>
    assertFails(setDoc(doc(google(uid), 'users', `n_${uid}`), { user_type: 'misafir', agency_id: A, user_name: 'Z' })));
  await t(`Google + ${label} belgeli uid hacının adını değiştiremez`, () =>
    assertFails(updateDoc(doc(google(uid), 'users', 'g1'), { user_name: 'Hack' })));
  await t(`Google + ${label} belgeli uid hacıyı silemez`, () => assertFails(deleteDoc(doc(google(uid), 'users', 'g1'))));
  await t(`Google + ${label} belgeli uid kendi rolünü değiştiremez`, () =>
    // Değeri gerçekten değiştir (aynı değeri yazmak değişiklik sayılmaz, kural onu engellemez).
    assertFails(updateDoc(doc(google(uid), 'users', uid), { user_type: label === 'super_admin' ? 'yonetici' : 'super_admin' })));
  await t(`Google + ${label} belgeli uid kendi adını değiştiremez`, () =>
    assertFails(updateDoc(doc(google(uid), 'users', uid), { user_name: 'Değişti' })));
  await t(`Google + ${label} belgeli uid kendi (bireysel olmayan) belgesini silemez`, () =>
    assertFails(deleteDoc(doc(google(uid), 'users', uid))));
  await t(`Google + ${label} belgeli uid özel hatim grubunu okuyamaz`, () =>
    assertFails(getDoc(doc(google(uid), 'hatim_groups', 'priv'))));
}
await t('Google + acente hacısı belgeli uid acente seferini okuyamaz', () => assertFails(getDoc(doc(google('lnk_g'), 'trips', 'tA'))));
await t('Google + acente hacısı belgeli uid acente belgesini okuyamaz', () => assertFails(getDoc(doc(google('lnk_g'), 'agencies', A))));
await t('aynı uid şifreyle (custom) gelince yönetici yetkisi sürer', () => assertSucceeds(getDocs(collection(as('lnk_mg'), 'users'))));
await t('aynı uid custom token ile acente admini kendi seferini okur', () => assertSucceeds(getDoc(doc(as('lnk_aa'), 'trips', 'tA'))));
await t('Google bireysel kendi belgesini okumaya devam eder', () => assertSucceeds(getDoc(doc(google('bir1'), 'users', 'bir1'))));
await t('Google bireysel herkese açık hatim grubunu okumaya devam eder', () =>
  assertSucceeds(getDoc(doc(google('bir1'), 'hatim_groups', 'pub'))));

console.log(`\nSonuç: ${pass} geçti, ${fail} başarısız`);
await env.cleanup();
process.exit(fail === 0 ? 0 : 1);

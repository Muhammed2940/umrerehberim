// Kimlik alanları (login_id, auth_migrated, disabled) ve kimlik servisi koleksiyonları
// için Firestore kuralları testi — yerel öykünücü; gerçek veritabanına dokunmaz.
// Çalıştırma: calistir.ps1 (firebase emulators:exec ... "node auth_rules.test.mjs")
import { readFileSync } from 'node:fs';
import { initializeTestEnvironment, assertSucceeds, assertFails } from '@firebase/rules-unit-testing';
import {
  doc, setDoc, getDoc, updateDoc, collection, query, where, getDocs, serverTimestamp,
} from 'firebase/firestore';

const env = await initializeTestEnvironment({
  projectId: 'demo-auth',
  firestore: { rules: readFileSync('../../firestore.rules', 'utf8'), host: '127.0.0.1', port: 8089 },
});
await env.clearFirestore();

const A = 'ag_A', B = 'ag_B';
await env.withSecurityRulesDisabled(async (ctx) => {
  const db = ctx.firestore();
  const u = (id, d) => setDoc(doc(db, 'users', id), d);
  await u('g1', { user_type: 'misafir', agency_id: A, user_name: 'Ayşe', login_id: '1000001', auth_migrated: true });
  await u('gB', { user_type: 'misafir', agency_id: B, user_name: 'Ali' });
  await u('a1', { user_type: 'acente_admin', agency_id: A, user_name: 'Rehber A', user_tel: '555', login_id: '1000002', user_tc: '12345678901' });
  await u('mg', { user_type: 'yonetici', agency_id: A, user_name: 'Genel Yönetici' });
  await u('sa', { user_type: 'super_admin', agency_id: '' });
  await u('ds', { user_type: 'destek', agency_id: '' });
  await setDoc(doc(db, 'agencies', A), { name: 'A' });
  // Kimlik servisinin yazdığı kayıtlar (servis hesabı kuralları baypas eder).
  await setDoc(doc(db, 'login_ids', '1000001'), { uid: 'g1' });
  await setDoc(doc(db, 'login_ids', '1000002'), { uid: 'a1' });
  await setDoc(doc(db, 'login_ids', '1234567'), { uid: 'yeni1' });
  await setDoc(doc(db, 'login_ids', '7654321'), { uid: 'baskasi' });
  await setDoc(doc(db, 'login_ids', '2345678'), { uid: 'yeniSa' });
  await setDoc(doc(db, 'auth_secrets', 'g1'), { hash: '$2y$11$x', kind: 'pin' });
  await setDoc(doc(db, 'auth_attempts', 'abc'), { n: 1, uid: 'g1' });
  await setDoc(doc(db, 'system', 'auth_migration'), { done: false });
});

const as = (uid) => env.authenticatedContext(uid, { email: `${uid}@x.test` }).firestore();
const asRoot = () => env.authenticatedContext('rootuid', { email: '10000000146@umrerehberim.app' }).firestore();
let pass = 0, fail = 0;
async function t(name, fn) {
  try { await fn(); pass++; console.log('  OK  ', name); }
  catch (e) { fail++; console.log('  HATA', name, '→', e.message.split('\n')[0]); }
}
const guest = (over = {}) => ({ user_type: 'misafir', agency_id: A, user_name: 'Yeni', user_tc: '11111111111', created_at: serverTimestamp(), ...over });

console.log('users oluşturma (login_id / auth_migrated / disabled):');
await t('acente admini servisin ayırdığı login_id ile misafir açar', () =>
  assertSucceeds(setDoc(doc(as('a1'), 'users', 'yeni1'), guest({ login_id: '1234567' }))));
await t('başkasına ait login_id ile açılamaz', () =>
  assertFails(setDoc(doc(as('a1'), 'users', 'yeni2'), guest({ login_id: '7654321' }))));
await t('kayıtsız (login_ids\'te olmayan) login_id ile açılamaz', () =>
  assertFails(setDoc(doc(as('a1'), 'users', 'yeni3'), guest({ login_id: '1111111' }))));
await t('biçimsiz login_id ile açılamaz', () =>
  assertFails(setDoc(doc(as('a1'), 'users', 'yeni4'), guest({ login_id: '../x' }))));
await t('sayı tipinde login_id ile açılamaz', () =>
  assertFails(setDoc(doc(as('sa'), 'users', 'yeni5'), guest({ login_id: 1234567 }))));
await t('login_id olmadan açılır (eski akış)', () =>
  assertSucceeds(setDoc(doc(as('a1'), 'users', 'yeni6'), guest())));
await t('süper admin de başkasının login_id\'siyle AÇAMAZ', () =>
  assertFails(setDoc(doc(as('sa'), 'users', 'yeni7'), guest({ login_id: '7654321' }))));
await t('süper admin kendi ayrılmış login_id\'siyle açar', () =>
  assertSucceeds(setDoc(doc(as('sa'), 'users', 'yeniSa'), { user_type: 'destek', agency_id: '', login_id: '2345678' })));
await t('auth_migrated ile açılamaz (süper admin)', () =>
  assertFails(setDoc(doc(as('sa'), 'users', 'yeni8'), guest({ auth_migrated: true }))));
await t('auth_migrated:false ile de açılamaz', () =>
  assertFails(setDoc(doc(as('a1'), 'users', 'yeni9'), guest({ auth_migrated: false }))));
await t('disabled ile açılamaz', () =>
  assertFails(setDoc(doc(as('sa'), 'users', 'yeni10'), guest({ disabled: false }))));
await t('kök (e-posta) de başkasının login_id\'siyle açamaz', () =>
  assertFails(setDoc(doc(asRoot(), 'users', 'yeni11'), guest({ login_id: '7654321' }))));

console.log('users güncelleme (login_id / auth_migrated kimse değiştiremez):');
for (const [who, db] of [['kendisi', () => as('g1')], ['acente admini', () => as('a1')], ['yönetici', () => as('mg')], ['süper admin', () => as('sa')], ['kök', () => asRoot()]]) {
  await t(`${who} login_id değiştiremez`, () => assertFails(updateDoc(doc(db(), 'users', 'g1'), { login_id: '1234567' })));
  await t(`${who} login_id silemez`, () => assertFails(setDoc(doc(db(), 'users', 'g1'), { user_type: 'misafir', agency_id: A, user_name: 'Ayşe', auth_migrated: true })));
  await t(`${who} auth_migrated değiştiremez`, () => assertFails(updateDoc(doc(db(), 'users', 'g1'), { auth_migrated: false })));
}
await t('süper admin auth_migrated EKLEYEMEZ (gB)', () => assertFails(updateDoc(doc(as('sa'), 'users', 'gB'), { auth_migrated: true })));
await t('acente admini başka alanı değiştirir (login_id aynı kalınca serbest)', () =>
  assertSucceeds(setDoc(doc(as('a1'), 'users', 'g1'), { user_name: 'Ayşe Yılmaz', login_id: '1000001', updated_at: serverTimestamp() }, { merge: true })));
await t('misafir fcm_token yazar', () => assertSucceeds(updateDoc(doc(as('g1'), 'users', 'g1'), { fcm_token: 'x', updated_at: serverTimestamp() })));

console.log('misafir personel belgesi:');
await t('misafir rehberinin belgesini tek tek okur (Rehber İletişim)', () => assertSucceeds(getDoc(doc(as('g1'), 'users', 'a1'))));
await t('misafir acentesinin kişilerini LİSTELEYEMEZ', () =>
  assertFails(getDocs(query(collection(as('g1'), 'users'), where('agency_id', '==', A)))));
await t('misafir personeli LİSTELEYEMEZ (user_type filtresiyle de)', () =>
  assertFails(getDocs(query(collection(as('g1'), 'users'), where('agency_id', '==', A), where('user_type', 'in', ['acente_admin', 'yonetici'])))));
await t('misafir başka misafiri okuyamaz', () => assertFails(getDoc(doc(as('g1'), 'users', 'gB'))));
await t('acente admini kendi acentesini listeler', () =>
  assertSucceeds(getDocs(query(collection(as('a1'), 'users'), where('agency_id', '==', A)))));
await t('destek kullanıcıları listeler', () => assertSucceeds(getDocs(collection(as('ds'), 'users'))));

console.log('kimlik servisi koleksiyonları (deny-all):');
for (const [col, id] of [['login_ids', '1000001'], ['auth_secrets', 'g1'], ['auth_attempts', 'abc'], ['system', 'auth_migration']]) {
  await t(`süper admin ${col} OKUYAMAZ`, () => assertFails(getDoc(doc(as('sa'), col, id))));
  await t(`kök ${col} OKUYAMAZ`, () => assertFails(getDoc(doc(asRoot(), col, id))));
  await t(`kişi kendi ${col} kaydını OKUYAMAZ`, () => assertFails(getDoc(doc(as('g1'), col, id))));
  await t(`süper admin ${col} YAZAMAZ`, () => assertFails(setDoc(doc(as('sa'), col, 'yeni'), { uid: 'sa' })));
  await t(`${col} listelenemez`, () => assertFails(getDocs(collection(as('sa'), col))));
}
await t('misafir kendi login_id kaydını oluşturamaz', () => assertFails(setDoc(doc(as('g1'), 'login_ids', '9999999'), { uid: 'g1' })));

console.log(`\nSonuç: ${pass} geçti, ${fail} başarısız`);
await env.cleanup();
process.exit(fail === 0 ? 0 : 1);

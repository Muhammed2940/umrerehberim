// Bireysel paket hakkı (entitlements) ve paketli bireyselin esnaf indirimi kuralları testi.
// tool/BIREYSEL_SEMA.md "Paketler". Yerel öykünücü; gerçek veritabanına dokunmaz.
import { readFileSync } from 'node:fs';
import { initializeTestEnvironment, assertSucceeds, assertFails } from '@firebase/rules-unit-testing';
import {
  doc, setDoc, getDoc, updateDoc, deleteDoc, writeBatch, collection, serverTimestamp, Timestamp,
} from 'firebase/firestore';

const env = await initializeTestEnvironment({
  projectId: 'demo-paket',
  firestore: { rules: readFileSync('../../firestore.rules', 'utf8'), host: '127.0.0.1', port: 8089 },
});
await env.clearFirestore();

const A = 'ag_A';
const ts = new Date('2026-01-01T00:00:00Z');
const gun = (n) => Timestamp.fromMillis(Date.now() + n * 86400000);
const admin = async (fn) => env.withSecurityRulesDisabled(async (ctx) => fn(ctx.firestore()));

await admin(async (db) => {
  const u = (id, d) => setDoc(doc(db, 'users', id), d);
  const bir = (name) => ({ user_name: name, user_type: 'misafir', account_kind: 'bireysel', agency_id: '',
    email: `${name}@gmail.test`, auth_provider: 'google', kvkk_version: '1', kvkk_accepted_at: ts,
    location_consent: false, created_at: ts, updated_at: ts });
  for (const id of ['bp', 'bf', 'bx', 'bfull', 'bexp', 'bdemo']) await u(id, bir(id));
  await u('g1', { user_type: 'misafir', agency_id: A, user_name: 'Ayşe' });
  await u('sa', { user_type: 'super_admin', agency_id: '' });
  await u('m1', { user_type: 'esnaf', agency_id: A, shop_id: 'S1' });
  await u('m2', { user_type: 'esnaf', agency_id: 'all', shop_id: 'S2' });
  await u('m3', { user_type: 'esnaf', agency_id: '', shop_id: 'S3' });
  await setDoc(doc(db, 'shops', 'S1'), { agency_id: A, name: 'A', discount_percent: 10, commission_percent: 5, is_active: true });
  await setDoc(doc(db, 'shops', 'S2'), { agency_id: 'all', name: 'Herkes', discount_percent: 15, is_active: true });
  await setDoc(doc(db, 'shops', 'S3'), { agency_id: '', name: 'Boş', discount_percent: 15, is_active: true });
  await setDoc(doc(db, 'platform_settings', 'payments'), { demo_payments: true });
  // Hazır haklar (sunucu/süper admin yazmış gibi)
  await setDoc(doc(db, 'entitlements', 'bp'), { paket: 'umre', status: 'active', paid_until: gun(20), source: 'demo', updated_at: ts });
  await setDoc(doc(db, 'entitlements', 'bfull'), { paket: 'full', status: 'pending_approval', paid_until: gun(10), source: 'demo', updated_at: ts });
  await setDoc(doc(db, 'entitlements', 'bexp'), { paket: 'umre', status: 'active', paid_until: gun(-1), source: 'demo', updated_at: ts });
});

const google = (uid) => env.authenticatedContext(uid, {
  email: `${uid}@gmail.test`, email_verified: true, firebase: { sign_in_provider: 'google.com' },
}).firestore();
const as = (uid) => env.authenticatedContext(uid, { email: `${uid}@x.test` }).firestore();
let pass = 0, fail = 0;
async function t(name, fn) {
  try { await fn(); pass++; console.log('  OK  ', name); }
  catch (e) { fail++; console.log('  HATA', name, '→', e.message.split('\n')[0]); }
}
const ent = (over = {}) => ({ paket: 'umre', status: 'active', paid_until: gun(30), source: 'demo', updated_at: serverTimestamp(), ...over });
const tokenOf = (uid, agency) => ({ guest_uid: uid, guest_name: 'X', agency_id: agency, points_available: 0, created_at: serverTimestamp(), used: false });
async function newToken(db, uid, agency) {
  const ref = doc(collection(db, 'shop_tokens'));
  await setDoc(ref, tokenOf(uid, agency));
  return ref.id;
}
function tx(over = {}) {
  return {
    token_id: 'x', shop_id: 'S2', shop_name: 'Herkes', shop_agency_id: 'all', guest_uid: 'bp', guest_name: 'B.',
    guest_agency_id: '', amount_gross: 100, discount_percent: 15, discount_amount: 15, amount_net: 85,
    payment_method: 'nakit', points_earned: 85, points_spent: 0, commission_percent: 0, cashier_uid: 'm2',
    status: 'ok', note: '', created_at: serverTimestamp(), ...over,
  };
}
async function record(merchant, tokenId, data) {
  const db = as(merchant);
  const b = writeBatch(db);
  b.set(doc(db, 'shop_transactions', tokenId), data);
  b.update(doc(db, 'shop_tokens', tokenId), { used: true, used_by_shop: data.shop_id, used_by_shop_name: 'x', used_at: serverTimestamp() });
  await b.commit();
}

console.log('Paket hakkı (demo açıkken):');
await t('bireysel kendi Umre hakkını yazar', () => assertSucceeds(setDoc(doc(google('bx'), 'entitlements', 'bx'), ent())));
await t('bireysel Aile hakkını yazar', () => assertSucceeds(setDoc(doc(google('bx'), 'entitlements', 'bx'), ent({ paket: 'aile' }))));
await t('bireysel Full\'ü onay bekliyor olarak yazar', () =>
  assertSucceeds(setDoc(doc(google('bx'), 'entitlements', 'bx'), ent({ paket: 'full', status: 'pending_approval' }))));
await t('Full\'ü kendisi aktif YAPAMAZ', () =>
  assertFails(setDoc(doc(google('bx'), 'entitlements', 'bx'), ent({ paket: 'full', status: 'active' }))));
await t('Umre\'yi onay bekliyor yazamaz', () =>
  assertFails(setDoc(doc(google('bx'), 'entitlements', 'bx'), ent({ status: 'pending_approval' }))));
await t('31 günden uzun süre yazamaz', () => assertFails(setDoc(doc(google('bx'), 'entitlements', 'bx'), ent({ paid_until: gun(40) }))));
await t('geçmiş tarih yazamaz', () => assertFails(setDoc(doc(google('bx'), 'entitlements', 'bx'), ent({ paid_until: gun(-1) }))));
await t('bilinmeyen paket yazamaz', () => assertFails(setDoc(doc(google('bx'), 'entitlements', 'bx'), ent({ paket: 'vip' }))));
await t('source demo dışında yazamaz', () => assertFails(setDoc(doc(google('bx'), 'entitlements', 'bx'), ent({ source: 'paytr' }))));
await t('fazladan alan yazamaz', () => assertFails(setDoc(doc(google('bx'), 'entitlements', 'bx'), ent({ discount: 100 }))));
await t('updated_at sunucu saati olmalı', () => assertFails(setDoc(doc(google('bx'), 'entitlements', 'bx'), ent({ updated_at: ts }))));
await t('başkasının hakkını yazamaz', () => assertFails(setDoc(doc(google('bx'), 'entitlements', 'bf'), ent())));
await t('acente hacısı (şifreli) hak yazamaz', () => assertFails(setDoc(doc(as('g1'), 'entitlements', 'g1'), ent())));
await t('kendi hakkını okur', () => assertSucceeds(getDoc(doc(google('bp'), 'entitlements', 'bp'))));
await t('başkasının hakkını okuyamaz', () => assertFails(getDoc(doc(google('bx'), 'entitlements', 'bp'))));
await t('süper admin okur', () => assertSucceeds(getDoc(doc(as('sa'), 'entitlements', 'bp'))));
await t('süper admin Full\'ü onaylar', () => assertSucceeds(updateDoc(doc(as('sa'), 'entitlements', 'bfull'), { status: 'active' })));
await admin((db) => updateDoc(doc(db, 'entitlements', 'bfull'), { status: 'pending_approval' }));
await t('bireysel kendi hakkını siler (ücretsize dönüş)', () => assertSucceeds(deleteDoc(doc(google('bx'), 'entitlements', 'bx'))));
await t('başkasının hakkını silemez', () => assertFails(deleteDoc(doc(google('bx'), 'entitlements', 'bp'))));

console.log('Paket hakkı (demo KAPALI):');
await admin((db) => setDoc(doc(db, 'platform_settings', 'payments'), { demo_payments: false }));
await t('demo kapalıyken bireysel hak yazamaz', () => assertFails(setDoc(doc(google('bdemo'), 'entitlements', 'bdemo'), ent())));
await t('demo kapalıyken hakkını güncelleyemez', () => assertFails(setDoc(doc(google('bp'), 'entitlements', 'bp'), ent())));
await t('demo kapalıyken hakkını silemez', () => assertFails(deleteDoc(doc(google('bp'), 'entitlements', 'bp'))));
await t('süper admin demo kapalıyken de yazar', () => assertSucceeds(setDoc(doc(as('sa'), 'entitlements', 'bdemo'), ent({ source: 'admin' }))));
await admin((db) => deleteDoc(doc(db, 'entitlements', 'bdemo')));
await admin((db) => deleteDoc(doc(db, 'platform_settings', 'payments')));
await t('ayar belgesi yokken bireysel hak yazamaz', () => assertFails(setDoc(doc(google('bdemo'), 'entitlements', 'bdemo'), ent())));
await t('bireysel ödeme ayarını değiştiremez', () =>
  assertFails(setDoc(doc(google('bp'), 'platform_settings', 'payments'), { demo_payments: true })));
await admin((db) => setDoc(doc(db, 'platform_settings', 'payments'), { demo_payments: true }));

console.log('Esnaf indirimi (QR kodu):');
await t('paketli bireysel boş acenteyle kod oluşturur', () => newToken(google('bp'), 'bp', ''));
await t('paketli bireysel başka acente adıyla kod oluşturamaz', () =>
  assertFails(setDoc(doc(collection(google('bp'), 'shop_tokens')), tokenOf('bp', A))));
await t('ücretsiz bireysel kod oluşturamaz', () => assertFails(setDoc(doc(collection(google('bf'), 'shop_tokens')), tokenOf('bf', ''))));
await t('süresi dolmuş paketle kod oluşturamaz', () => assertFails(setDoc(doc(collection(google('bexp'), 'shop_tokens')), tokenOf('bexp', ''))));
await t('onay bekleyen Full ile kod oluşturamaz', () => assertFails(setDoc(doc(collection(google('bfull'), 'shop_tokens')), tokenOf('bfull', ''))));
await t('acente hacısı eskisi gibi kod oluşturur', () => newToken(as('g1'), 'g1', A));

console.log('Esnaf işlemi:');
{
  const id = await newToken(google('bp'), 'bp', '');
  await t('herkese açık dükkan paketli bireyselin kodunu işler', () => assertSucceeds(record('m2', id, tx({ token_id: id }))));
}
{
  const id = await newToken(google('bp'), 'bp', '');
  await t('acente dükkanı bireyselin kodunu işleyemez', () =>
    assertFails(record('m1', id, tx({ token_id: id, shop_id: 'S1', shop_agency_id: A, discount_percent: 10, commission_percent: 5, cashier_uid: 'm1' }))));
}
{
  const id = await newToken(google('bp'), 'bp', '');
  await t('agency_id boş dükkan bireyselin kodunu işleyemez', () =>
    assertFails(record('m3', id, tx({ token_id: id, shop_id: 'S3', shop_agency_id: '', cashier_uid: 'm3' }))));
}
await t('paketli bireysel kendi işlemini okur', async () => {
  const id = await newToken(google('bp'), 'bp', '');
  await record('m2', id, tx({ token_id: id }));
  await assertSucceeds(getDoc(doc(google('bp'), 'shop_transactions', id)));
});

console.log(`\nSonuç: ${pass} geçti, ${fail} başarısız`);
await env.cleanup();
process.exit(fail === 0 ? 0 : 1);

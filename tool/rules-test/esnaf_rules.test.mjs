// Esnaf paneli Firestore kuralları testi (yerel öykünücü; gerçek veritabanına dokunmaz).
// Çalıştırma: firebase emulators:exec --only firestore "node esnaf_rules.test.mjs"
import { readFileSync } from 'node:fs';
import { initializeTestEnvironment, assertSucceeds, assertFails } from '@firebase/rules-unit-testing';
import {
  doc, setDoc, getDoc, updateDoc, writeBatch, collection, query, where, getDocs, orderBy,
  serverTimestamp, Timestamp,
} from 'firebase/firestore';

const env = await initializeTestEnvironment({
  projectId: 'demo-esnaf',
  firestore: { rules: readFileSync('../../firestore.rules', 'utf8'), host: '127.0.0.1', port: 8089 },
});

const A = 'ag_A', B = 'ag_B';
await env.withSecurityRulesDisabled(async (ctx) => {
  const db = ctx.firestore();
  const u = (id, d) => setDoc(doc(db, 'users', id), d);
  await u('g1', { user_type: 'misafir', agency_id: A, user_name: 'Ayşe Demir' });
  await u('g2', { user_type: 'misafir', agency_id: B, user_name: 'Ali Veli' });
  await u('a1', { user_type: 'acente_admin', agency_id: A });   // acente admini (A)
  await u('mg', { user_type: 'yonetici' });                      // genel yönetici (acentesiz)
  await u('sa', { user_type: 'super_admin' });
  await u('gB', { user_type: 'misafir', agency_id: B, user_name: 'B misafiri' });
  await setDoc(doc(db, 'agencies', A), { name: 'A' });
  await setDoc(doc(db, 'agencies', B), { name: 'B' });
  await u('m1', { user_type: 'esnaf', agency_id: A, shop_id: 'S1' });
  await u('m2', { user_type: 'esnaf', agency_id: 'all', shop_id: 'S2' });
  await setDoc(doc(db, 'shops', 'S1'), { agency_id: A, name: 'Dükkan A', discount_percent: 10, commission_percent: 5, is_active: true, description: '' });
  await setDoc(doc(db, 'shops', 'S2'), { agency_id: 'all', name: 'Herkese Açık', discount_percent: 15, is_active: true });
});

const as = (uid) => env.authenticatedContext(uid).firestore();
let pass = 0, fail = 0;
async function t(name, fn) {
  try { await fn(); pass++; console.log('  OK  ', name); }
  catch (e) { fail++; console.log('  HATA', name, '→', e.message.split('\n')[0]); }
}

async function newToken(uid, agency, points = 0) {
  const ref = doc(collection(as(uid), 'shop_tokens'));
  await setDoc(ref, { guest_uid: uid, guest_name: 'X', agency_id: agency, points_available: points, created_at: serverTimestamp(), used: false });
  return ref.id;
}
function tx(over = {}) {
  return {
    token_id: 'x', shop_id: 'S1', shop_name: 'Dükkan A', shop_agency_id: A, guest_uid: 'g1', guest_name: 'Ayşe D.',
    guest_agency_id: A, amount_gross: 100, discount_percent: 10, discount_amount: 10, amount_net: 90,
    payment_method: 'nakit', points_earned: 90, points_spent: 0, commission_percent: 5, cashier_uid: 'm1',
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

console.log('Kod (token):');
await t('misafir kendi acentesiyle kod oluşturur', () => newToken('g1', A, 50));
await t('misafir başka acente adına kod OLUŞTURAMAZ', () => assertFails(newToken('g1', B)));
const t1 = await newToken('g1', A, 50);
await t('esnaf kodu id ile okur', () => assertSucceeds(getDoc(doc(as('m1'), 'shop_tokens', t1))));
await t('başka misafir kodu OKUYAMAZ', () => assertFails(getDoc(doc(as('g2'), 'shop_tokens', t1))));
await t('esnaf kodları LİSTELEYEMEZ', () => assertFails(getDocs(collection(as('m1'), 'shop_tokens'))));

console.log('İşlem kaydı:');
await t('esnaf geçerli kodla işlem kaydeder', () => assertSucceeds(record('m1', t1, tx({ token_id: t1 }))));
await t('aynı kod İKİNCİ KEZ kullanılamaz', () => assertFails(record('m1', t1, tx({ token_id: t1 }))));
const t2 = await newToken('g1', A, 50);
await t('yanlış indirim oranı reddedilir', () => assertFails(record('m1', t2, tx({ discount_percent: 50 }))));
await t('yanlış komisyon oranı reddedilir', () => assertFails(record('m1', t2, tx({ commission_percent: 0 }))));
await t('başka dükkan adına kayıt reddedilir', () => assertFails(record('m1', t2, tx({ shop_id: 'S2', shop_agency_id: 'all' }))));
await t('20000 SAR üstü reddedilir', () => assertFails(record('m1', t2, tx({ amount_gross: 25000, amount_net: 22500 }))));
await t('bakiye üstü puan harcaması reddedilir', () => assertFails(record('m1', t2, tx({ payment_method: 'puan', points_spent: 51, points_earned: 0 }))));
await t('bakiye içinde puanla ödeme kabul', () => assertSucceeds(record('m1', t2, tx({ payment_method: 'puan', points_spent: 50, points_earned: 0 }))));
const t3 = await newToken('g2', B);
await t('başka acentenin misafiri acente dükkanında REDDEDİLİR', () => assertFails(record('m1', t3, tx({ guest_uid: 'g2', guest_agency_id: B }))));
await t('herkese açık dükkanda başka acente misafiri KABUL', () => assertSucceeds(record('m2', t3, tx({
  guest_uid: 'g2', guest_agency_id: B, shop_id: 'S2', shop_agency_id: 'all', discount_percent: 15, commission_percent: 0,
  cashier_uid: 'm2', discount_amount: 15, amount_net: 85, points_earned: 85 }))));
const t4 = await newToken('g1', A);
await env.withSecurityRulesDisabled((ctx) =>
  updateDoc(doc(ctx.firestore(), 'shop_tokens', t4), { created_at: Timestamp.fromMillis(Date.now() - 5 * 60 * 1000) }));
await t('süresi dolmuş (5 dk) kod reddedilir', () => assertFails(record('m1', t4, tx())));
const t5 = await newToken('g1', A);
await t('misafir kendi kendine işlem açamaz', () => assertFails(setDoc(doc(as('g1'), 'shop_transactions', t5), tx({ cashier_uid: 'g1' }))));

console.log('Okuma / iptal:');
await t('misafir kendi işlemlerini listeler', () => assertSucceeds(getDocs(query(collection(as('g1'), 'shop_transactions'), where('guest_uid', '==', 'g1'), orderBy('created_at', 'desc')))));
await t('başka misafir işlemlerini LİSTELEYEMEZ', () => assertFails(getDocs(query(collection(as('g2'), 'shop_transactions'), where('guest_uid', '==', 'g1')))));
await t('esnaf kendi dükkanının işlemlerini listeler', () => assertSucceeds(getDocs(query(collection(as('m1'), 'shop_transactions'), where('shop_id', '==', 'S1')))));
await t('esnaf başka dükkanı LİSTELEYEMEZ', () => assertFails(getDocs(query(collection(as('m1'), 'shop_transactions'), where('shop_id', '==', 'S2')))));
await t('süper admin tüm esnaf işlemlerini listeler', () => assertSucceeds(getDocs(collection(as('sa'), 'shop_transactions'))));
await t('genel yönetici esnaf işlemlerini GÖREMEZ', () => assertFails(getDocs(query(collection(as('mg'), 'shop_transactions'), where('guest_agency_id', '==', A)))));
await t('acente admini esnaf işlemlerini GÖREMEZ', () => assertFails(getDocs(query(collection(as('a1'), 'shop_transactions'), where('guest_agency_id', '==', A)))));
await t('misafir işlemi İPTAL EDEMEZ', () => assertFails(updateDoc(doc(as('g1'), 'shop_transactions', t1), { status: 'iptal', cancel_reason: 'x', cancelled_at: serverTimestamp() })));
await t('esnaf 24 saat içinde iptal eder', () => assertSucceeds(updateDoc(doc(as('m1'), 'shop_transactions', t1), { status: 'iptal', cancel_reason: 'hata', cancelled_at: serverTimestamp() })));
await t('esnaf tutarı sonradan DEĞİŞTİREMEZ', () => assertFails(updateDoc(doc(as('m1'), 'shop_transactions', t2), { amount_net: 1 })));

console.log('Dükkan / kullanıcı:');
await t('esnaf kendi dükkan açıklamasını düzenler', () => assertSucceeds(updateDoc(doc(as('m1'), 'shops', 'S1'), { description: 'Yeni' })));
await t('esnaf indirim oranını DEĞİŞTİREMEZ', () => assertFails(updateDoc(doc(as('m1'), 'shops', 'S1'), { discount_percent: 90 })));
await t('süper admin esnaf hesabı açar', () => assertSucceeds(setDoc(doc(as('sa'), 'users', 'm3'), { user_type: 'esnaf', agency_id: A, shop_id: 'S1' })));
await t('genel yönetici esnaf hesabı AÇAMAZ', () => assertFails(setDoc(doc(as('mg'), 'users', 'm4'), { user_type: 'esnaf', agency_id: A, shop_id: 'S1' })));
await t('acente admini esnaf hesabı AÇAMAZ', () => assertFails(setDoc(doc(as('a1'), 'users', 'm5'), { user_type: 'esnaf', agency_id: A, shop_id: 'S1' })));
await t('esnaf kendi shop_id alanını DEĞİŞTİREMEZ', () => assertFails(updateDoc(doc(as('m1'), 'users', 'm1'), { shop_id: 'S2' })));
await t('süper admin dükkan ekler', () => assertSucceeds(setDoc(doc(as('sa'), 'shops', 'S9'), { agency_id: A, name: 'Yeni', discount_percent: 5, is_active: true })));
await t('genel yönetici dükkan EKLEYEMEZ', () => assertFails(setDoc(doc(as('mg'), 'shops', 'S8'), { agency_id: A, name: 'X', discount_percent: 5 })));
await t('acente admini dükkan EKLEYEMEZ', () => assertFails(setDoc(doc(as('a1'), 'shops', 'S7'), { agency_id: A, name: 'X', discount_percent: 5 })));
await t('genel yönetici dükkan indirimini DEĞİŞTİREMEZ', () => assertFails(updateDoc(doc(as('mg'), 'shops', 'S1'), { discount_percent: 50 })));

console.log('Roller / paneller:');
await t('genel yönetici B acentesinin kişilerini listeler', () => assertSucceeds(getDocs(query(collection(as('mg'), 'users'), where('agency_id', '==', B)))));
await t('acente admini kendi acentesinin kişilerini listeler', () => assertSucceeds(getDocs(query(collection(as('a1'), 'users'), where('agency_id', '==', A)))));
await t('acente admini B acentesinin kişilerini GÖREMEZ', () => assertFails(getDocs(query(collection(as('a1'), 'users'), where('agency_id', '==', B)))));
await t('acente admini kendi acentesine misafir ekler', () => assertSucceeds(setDoc(doc(as('a1'), 'users', 'n1'), { user_type: 'misafir', agency_id: A })));
await t('acente admini B acentesine misafir EKLEYEMEZ', () => assertFails(setDoc(doc(as('a1'), 'users', 'n2'), { user_type: 'misafir', agency_id: B })));
await t('acente admini acente admini EKLEYEMEZ', () => assertFails(setDoc(doc(as('a1'), 'users', 'n3'), { user_type: 'acente_admin', agency_id: A })));
await t('genel yönetici B acentesine acente admini ekler', () => assertSucceeds(setDoc(doc(as('mg'), 'users', 'n4'), { user_type: 'acente_admin', agency_id: B })));
await t('genel yönetici yönetici EKLEYEMEZ', () => assertFails(setDoc(doc(as('mg'), 'users', 'n5'), { user_type: 'yonetici', agency_id: B })));
await t('genel yönetici süper admin EKLEYEMEZ', () => assertFails(setDoc(doc(as('mg'), 'users', 'n6'), { user_type: 'super_admin', agency_id: B })));
await t('acente admini kendini yönetici YAPAMAZ', () => assertFails(updateDoc(doc(as('a1'), 'users', 'a1'), { user_type: 'yonetici' })));
await t('genel yönetici B acentesine sefer ekler', () => assertSucceeds(setDoc(doc(as('mg'), 'trips', 'tB'), { agency_id: B, name: 'B sefer' })));
await t('acente admini kendi acentesine sefer ekler', () => assertSucceeds(setDoc(doc(as('a1'), 'trips', 'tA'), { agency_id: A, name: 'A sefer' })));
await t('acente admini B acentesine sefer EKLEYEMEZ', () => assertFails(setDoc(doc(as('a1'), 'trips', 'tB2'), { agency_id: B, name: 'X' })));
await t('genel yönetici tüm acenteleri listeler', () => assertSucceeds(getDocs(collection(as('mg'), 'agencies'))));
await t('genel yönetici acente EKLEYEMEZ', () => assertFails(setDoc(doc(as('mg'), 'agencies', 'ag_C'), { name: 'C' })));
await t('acente admini başka acenteyi OKUYAMAZ', () => assertFails(getDoc(doc(as('a1'), 'agencies', B))));
await t('misafir acentesinin rehberini (acente admini) okur', () => assertSucceeds(getDoc(doc(as('g1'), 'users', 'a1'))));
await t('misafir B acentesinin kişilerini OKUYAMAZ', () => assertFails(getDoc(doc(as('g1'), 'users', 'gB'))));

console.log(`\nSonuç: ${pass} geçti, ${fail} başarısız`);
await env.cleanup();
process.exit(fail ? 1 : 0);

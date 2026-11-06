// Kontrol Merkezi (süper admin modülleri) Firestore kuralları testi — yerel öykünücü.
import { readFileSync } from 'node:fs';
import { initializeTestEnvironment, assertSucceeds, assertFails } from '@firebase/rules-unit-testing';
import {
  doc, setDoc, getDoc, updateDoc, deleteDoc, writeBatch, collection, query, where, getDocs, addDoc,
  serverTimestamp, Timestamp, increment,
} from 'firebase/firestore';

const env = await initializeTestEnvironment({
  projectId: 'demo-cc',
  firestore: { rules: readFileSync('../../firestore.rules', 'utf8'), host: '127.0.0.1', port: 8089 },
});
await env.clearFirestore();

const A = 'ag_A', B = 'ag_B';
const now = Date.now();
await env.withSecurityRulesDisabled(async (ctx) => {
  const db = ctx.firestore();
  const u = (id, d) => setDoc(doc(db, 'users', id), d);
  await u('g1', { user_type: 'misafir', agency_id: A, user_name: 'Ayşe Demir' });
  await u('g2', { user_type: 'misafir', agency_id: B, user_name: 'Ali Veli' });
  await u('a1', { user_type: 'acente_admin', agency_id: A });
  await u('aB', { user_type: 'acente_admin', agency_id: B });
  await u('mg', { user_type: 'yonetici', agency_id: '' });
  await u('sa', { user_type: 'super_admin', agency_id: '' });
  await u('ds', { user_type: 'destek', agency_id: '' });
  await u('mu', { user_type: 'muhasebe', agency_id: '' });
  await u('m1', { user_type: 'esnaf', agency_id: A, shop_id: 'S1' });
  await setDoc(doc(db, 'agencies', A), { name: 'A' });
  await setDoc(doc(db, 'shops', 'S1'), { agency_id: A, name: 'Dükkan A', discount_percent: 10, commission_percent: 5, is_active: true });
  await setDoc(doc(db, 'shops', 'S9'), { agency_id: B, name: 'B dükkanı', discount_percent: 0, is_active: true });
  const c = (id, over) => setDoc(doc(db, 'coupons', id), {
    code: id, title: id, type: 'percent', value: 10, min_spend: 50, max_discount: 20,
    valid_from: Timestamp.fromMillis(now - 86400000), valid_until: Timestamp.fromMillis(now + 86400000),
    agency_id: 'all', shop_id: 'all', max_uses: 0, used_count: 0, active: true, last_tx_id: '', ...over,
  });
  await c('HOS10', {});
  await c('PASIF', { active: false });
  await c('BITTI', { max_uses: 1, used_count: 1 });
  await c('ESKI', { valid_until: Timestamp.fromMillis(now - 1000) });
  await c('BACENTE', { agency_id: B });
});

const as = (uid) => env.authenticatedContext(uid, { email: `${uid}@x.test` }).firestore();
let pass = 0, fail = 0;
async function t(name, fn) {
  try { await fn(); pass++; console.log('  OK  ', name); }
  catch (e) { fail++; console.log('  HATA', name, '→', e.message.split('\n')[0]); }
}

async function newToken(uid, agency, coupon = '') {
  const ref = doc(collection(as(uid), 'shop_tokens'));
  await setDoc(ref, { guest_uid: uid, guest_name: 'X', agency_id: agency, points_available: 0, created_at: serverTimestamp(), used: false, coupon_id: coupon });
  return ref.id;
}
function tx(tokenId, over = {}) {
  return {
    token_id: tokenId, shop_id: 'S1', shop_name: 'Dükkan A', shop_agency_id: A, guest_uid: 'g1', guest_name: 'Ayşe D.',
    guest_agency_id: A, amount_gross: 100, discount_percent: 10, discount_amount: 10, amount_net: 80,
    payment_method: 'nakit', points_earned: 80, points_spent: 0, commission_percent: 5, cashier_uid: 'm1',
    status: 'ok', note: '', created_at: serverTimestamp(), coupon_id: '', coupon_discount: 0, ...over,
  };
}
async function recordCoupon(tokenId, code, { discount = 10, usedCount = 0, gross = 100, redeem = true, bump = true, guest = 'g1' } = {}) {
  const db = as('m1');
  const b = writeBatch(db);
  b.set(doc(db, 'shop_transactions', tokenId), tx(tokenId, { coupon_id: code, coupon_discount: discount, amount_gross: gross, amount_net: Math.max(0, gross * 0.9 - discount), points_earned: 0 }));
  b.update(doc(db, 'shop_tokens', tokenId), { used: true, used_by_shop: 'S1', used_by_shop_name: 'x', used_at: serverTimestamp() });
  if (redeem) b.set(doc(db, 'coupon_redemptions', `${code}_${guest}`), { coupon_id: code, guest_uid: guest, shop_id: 'S1', tx_id: tokenId, discount, created_at: serverTimestamp() });
  if (bump) b.update(doc(db, 'coupons', code), { used_count: usedCount + 1, last_tx_id: tokenId });
  await b.commit();
}

console.log('Roller:');
await t('destek acenteleri okur', () => assertSucceeds(getDoc(doc(as('ds'), 'agencies', A))));
await t('muhasebe kullanıcıları okur', () => assertSucceeds(getDocs(collection(as('mu'), 'users'))));
await t('destek seferleri OKUYAMAZ', () => assertFails(getDocs(collection(as('ds'), 'trips'))));
await t('muhasebe esnaf işlemlerini okur', () => assertSucceeds(getDocs(collection(as('mu'), 'shop_transactions'))));
await t('destek esnaf işlemlerini OKUYAMAZ', () => assertFails(getDocs(collection(as('ds'), 'shop_transactions'))));
await t('yönetici esnaf işlemlerini OKUYAMAZ', () => assertFails(getDocs(collection(as('mg'), 'shop_transactions'))));
await t('misafir last_active_at yazar', () => assertSucceeds(updateDoc(doc(as('g1'), 'users', 'g1'), { last_active_at: serverTimestamp() })));
await t('muhasebe kendini süper admin YAPAMAZ', () => assertFails(updateDoc(doc(as('mu'), 'users', 'mu'), { user_type: 'super_admin' })));
await t('süper admin destek hesabı açar', () => assertSucceeds(setDoc(doc(as('sa'), 'users', 'yeniDs'), { user_type: 'destek', agency_id: '' })));
await t('yönetici destek hesabı AÇAMAZ', () => assertFails(setDoc(doc(as('mg'), 'users', 'yeniDs2'), { user_type: 'destek', agency_id: A })));

console.log('Denetim kaydı:');
const log = (uid, over = {}) => addDoc(collection(as(uid), 'audit_logs'), { actor_uid: uid, action: 'x', created_at: serverTimestamp(), ...over });
await t('süper admin kayıt ekler', () => assertSucceeds(log('sa')));
await t('acente admini kayıt ekler', () => assertSucceeds(log('a1')));
await t('başkası adına kayıt EKLENEMEZ', () => assertFails(log('a1', { actor_uid: 'sa' })));
await t('misafir kayıt EKLEYEMEZ', () => assertFails(log('g1')));
await t('süper admin kayıtları okur', () => assertSucceeds(getDocs(collection(as('sa'), 'audit_logs'))));
await t('yönetici kayıtları OKUYAMAZ', () => assertFails(getDocs(collection(as('mg'), 'audit_logs'))));
const logRef = await log('sa');
await t('kayıt DEĞİŞTİRİLEMEZ', () => assertFails(updateDoc(doc(as('sa'), 'audit_logs', logRef.id), { action: 'y' })));
await t('kayıt SİLİNEMEZ', () => assertFails(deleteDoc(doc(as('sa'), 'audit_logs', logRef.id))));

console.log('Puan hareketleri:');
const adj = (uid, over = {}) => addDoc(collection(as(uid), 'point_adjustments'), {
  guest_uid: 'g1', guest_name: 'Ayşe', guest_agency_id: A, points: 500, reason: 'hediye', created_by: uid,
  created_at: serverTimestamp(), reverted: false, reverts_id: '', batch_id: '', ...over });
await t('süper admin puan verir', () => assertSucceeds(adj('sa')));
await t('yönetici puan VEREMEZ', () => assertFails(adj('mg')));
await t('muhasebe puan VEREMEZ', () => assertFails(adj('mu')));
await t('0 puan reddedilir', () => assertFails(adj('sa', { points: 0 })));
await t('100000 üstü reddedilir', () => assertFails(adj('sa', { points: 200000 })));
await t('ondalık puan reddedilir', () => assertFails(adj('sa', { points: 1.5 })));
const adjRef = await adj('sa');
await t('misafir kendi hareketlerini okur', () => assertSucceeds(getDocs(query(collection(as('g1'), 'point_adjustments'), where('guest_uid', '==', 'g1')))));
await t('başka misafir OKUYAMAZ', () => assertFails(getDocs(query(collection(as('g2'), 'point_adjustments'), where('guest_uid', '==', 'g1')))));
await t('muhasebe hepsini okur', () => assertSucceeds(getDocs(collection(as('mu'), 'point_adjustments'))));
await t('geri alma işareti konur', () => assertSucceeds(updateDoc(doc(as('sa'), 'point_adjustments', adjRef.id), { reverted: true, reverted_by_id: 'z', reverted_at: serverTimestamp() })));
await t('puan miktarı DEĞİŞTİRİLEMEZ', () => assertFails(updateDoc(doc(as('sa'), 'point_adjustments', adjRef.id), { points: 9 })));

console.log('Kuponlar:');
await t('misafir uygun kuponları sorgular', () => assertSucceeds(getDocs(query(collection(as('g1'), 'coupons'), where('active', '==', true), where('agency_id', 'in', ['all', A])))));
await t('misafir başka acentenin kuponunu OKUYAMAZ', () => assertFails(getDoc(doc(as('g1'), 'coupons', 'BACENTE'))));
await t('misafir kupon OLUŞTURAMAZ', () => assertFails(setDoc(doc(as('g1'), 'coupons', 'X'), { active: true, agency_id: 'all' })));
await t('esnaf kuponun kullanım sayısını keyfi ARTIRAMAZ', () => assertFails(updateDoc(doc(as('m1'), 'coupons', 'HOS10'), { used_count: 1, last_tx_id: 'yok' })));

const k1 = await newToken('g1', A, 'HOS10');
await t('kuponlu geçerli işlem kabul', () => assertSucceeds(recordCoupon(k1, 'HOS10')));
const k2 = await newToken('g1', A, 'HOS10');
await t('aynı misafir kuponu İKİNCİ KEZ kullanamaz', () => assertFails(recordCoupon(k2, 'HOS10', { usedCount: 1 })));
const k3 = await newToken('g1', A, 'PASIF');
await t('pasif kupon reddedilir', () => assertFails(recordCoupon(k3, 'PASIF')));
const k4 = await newToken('g1', A, 'BITTI');
await t('tükenen kupon reddedilir', () => assertFails(recordCoupon(k4, 'BITTI', { usedCount: 1 })));
const k5 = await newToken('g1', A, 'ESKI');
await t('süresi geçmiş kupon reddedilir', () => assertFails(recordCoupon(k5, 'ESKI')));
await env.withSecurityRulesDisabled((ctx) => setDoc(doc(ctx.firestore(), 'coupons', 'HOS20'), {
  code: 'HOS20', type: 'percent', value: 10, min_spend: 50, max_discount: 20, valid_from: Timestamp.fromMillis(now - 1000),
  valid_until: Timestamp.fromMillis(now + 86400000), agency_id: 'all', shop_id: 'all', max_uses: 0, used_count: 0, active: true }));
const k6 = await newToken('g1', A, 'HOS20');
await t('tavan üstü kupon indirimi reddedilir', () => assertFails(recordCoupon(k6, 'HOS20', { discount: 15 })));
await t('alt limit altı reddedilir', () => assertFails(recordCoupon(k6, 'HOS20', { gross: 40, discount: 4 })));
await t('kullanım kaydı olmadan reddedilir', () => assertFails(recordCoupon(k6, 'HOS20', { redeem: false })));
await t('token kuponundan farklı kupon reddedilir', async () => {
  const k7 = await newToken('g1', A, '');
  await assertFails(recordCoupon(k7, 'HOS20'));
});
const k8 = await newToken('g1', A, 'HOS10');
await t('kupon tokenı kuponsuz kayıt reddedilir', () => assertFails((async () => {
  const db = as('m1'); const b = writeBatch(db);
  b.set(doc(db, 'shop_transactions', k8), tx(k8));
  b.update(doc(db, 'shop_tokens', k8), { used: true, used_by_shop: 'S1', used_by_shop_name: 'x', used_at: serverTimestamp() });
  await b.commit();
})()));
const k9 = await newToken('g1', A, '');
await t('kuponsuz normal işlem hâlâ kabul', () => assertSucceeds((async () => {
  const db = as('m1'); const b = writeBatch(db);
  b.set(doc(db, 'shop_transactions', k9), tx(k9));
  b.update(doc(db, 'shop_tokens', k9), { used: true, used_by_shop: 'S1', used_by_shop_name: 'x', used_at: serverTimestamp() });
  await b.commit();
})()));
await t('kuponsuz işlemde indirim alanı 0 olmalı', async () => {
  const k10 = await newToken('g1', A, '');
  const db = as('m1'); const b = writeBatch(db);
  b.set(doc(db, 'shop_transactions', k10), tx(k10, { coupon_discount: 5 }));
  b.update(doc(db, 'shop_tokens', k10), { used: true, used_by_shop: 'S1', used_by_shop_name: 'x', used_at: serverTimestamp() });
  await assertFails(b.commit());
});

console.log('Değerlendirme:');
const rv = (uid, txId, over = {}) => setDoc(doc(as(uid), 'shop_reviews', txId), {
  tx_id: txId, shop_id: 'S1', guest_uid: uid, guest_agency_id: A, rating: 5, comment: 'iyi', complaint: false, created_at: serverTimestamp(), ...over });
await t('misafir kendi alışverişini değerlendirir', () => assertSucceeds(rv('g1', k9)));
await t('ikinci değerlendirme reddedilir', () => assertFails(rv('g1', k9, { rating: 1 })));
await t('başkasının alışverişi değerlendirilemez', () => assertFails(rv('g2', k1, { guest_agency_id: B })));
await t('6 yıldız reddedilir', () => assertFails(rv('g1', k1, { rating: 6 })));
await t('esnaf kendi dükkanının yorumlarını okur', () => assertSucceeds(getDoc(doc(as('m1'), 'shop_reviews', k9))));

console.log('Tıklanma sayacı:');
await t('misafir view_count +1', () => assertSucceeds(updateDoc(doc(as('g1'), 'shops', 'S1'), { view_count: increment(1) })));
await t('misafir view_count +5 YAPAMAZ', () => assertFails(updateDoc(doc(as('g1'), 'shops', 'S1'), { view_count: increment(5) })));
await t('misafir indirim oranını DEĞİŞTİREMEZ', () => assertFails(updateDoc(doc(as('g1'), 'shops', 'S1'), { view_count: increment(1), discount_percent: 90 })));
await t('başka acentenin dükkanını sayamaz', () => assertFails(updateDoc(doc(as('g1'), 'shops', 'S9'), { view_count: increment(1) })));

console.log('Finans / risk:');
await t('muhasebe hak ediş yazar', () => assertSucceeds(setDoc(doc(as('mu'), 'settlements', 'S1_2026-11'), { status: 'bekliyor' })));
await t('yönetici hak ediş OKUYAMAZ', () => assertFails(getDoc(doc(as('mg'), 'settlements', 'S1_2026-11'))));
await t('muhasebe platform payını DEĞİŞTİREMEZ', () => assertFails(setDoc(doc(as('mu'), 'platform_settings', 'finance'), { platform_share_percent: 90 })));
await t('süper admin platform payını yazar', () => assertSucceeds(setDoc(doc(as('sa'), 'platform_settings', 'finance'), { platform_share_percent: 40 })));
await t('destek risk incelemesi yazar', () => assertSucceeds(setDoc(doc(as('ds'), 'risk_reviews', 'r1'), { status: 'incelendi' })));
await t('muhasebe risk incelemesi YAZAMAZ', () => assertFails(setDoc(doc(as('mu'), 'risk_reviews', 'r2'), { status: 'incelendi' })));

console.log('Acente mesajları:');
const msg = (uid, over = {}) => addDoc(collection(as(uid), 'agency_messages'), {
  agency_id: A, from_side: 'hq', from_uid: uid, from_name: 'Merkez', title: 't', body: 'b',
  created_at: serverTimestamp(), read_by_hq: true, read_by_agency: false, broadcast_id: '', ...over });
await t('süper admin acenteye yazar', () => assertSucceeds(msg('sa')));
await t('destek acenteye yazar', () => assertSucceeds(msg('ds')));
await t('yönetici acenteye yazar', () => assertSucceeds(msg('mg')));
await t('muhasebe merkez adına YAZAMAZ', () => assertFails(msg('mu')));
await t('acente admini kendi acentesinden yazar', () => assertSucceeds(msg('a1', { from_side: 'agency', read_by_hq: false, read_by_agency: true })));
await t('acente admini merkez gibi YAZAMAZ', () => assertFails(msg('a1')));
await t('acente admini başka acente adına YAZAMAZ', () => assertFails(msg('a1', { agency_id: B, from_side: 'agency' })));
await t('acente admini kendi mesajlarını okur', () => assertSucceeds(getDocs(query(collection(as('a1'), 'agency_messages'), where('agency_id', '==', A)))));
await t('acente admini başka acenteyi OKUYAMAZ', () => assertFails(getDocs(query(collection(as('aB'), 'agency_messages'), where('agency_id', '==', A)))));
await t('misafir mesajları OKUYAMAZ', () => assertFails(getDocs(query(collection(as('g1'), 'agency_messages'), where('agency_id', '==', A)))));
const m = await msg('sa');
await t('acente okundu işaretler', () => assertSucceeds(updateDoc(doc(as('a1'), 'agency_messages', m.id), { read_by_agency: true })));
await t('acente mesaj metnini DEĞİŞTİREMEZ', () => assertFails(updateDoc(doc(as('a1'), 'agency_messages', m.id), { body: 'x' })));

console.log(`\n${pass} geçti, ${fail} başarısız`);
await env.cleanup();
process.exit(fail ? 1 : 0);

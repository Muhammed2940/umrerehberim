// Toplu Hatim Firestore kuralları testi — yerel öykünücü. Sözleşme: tool/HATIM_SEMA.md
import { readFileSync } from 'node:fs';
import { initializeTestEnvironment, assertSucceeds, assertFails } from '@firebase/rules-unit-testing';
import {
  doc, setDoc, getDoc, updateDoc, deleteDoc, writeBatch, collection, query, where, getDocs,
  serverTimestamp, Timestamp, arrayUnion, arrayRemove, deleteField,
} from 'firebase/firestore';

const env = await initializeTestEnvironment({
  projectId: 'demo-hatim',
  firestore: { rules: readFileSync('../../firestore.rules', 'utf8'), host: '127.0.0.1', port: 8089 },
});
await env.clearFirestore();

const A = 'ag_A', B = 'ag_B';
const NAMES = {
  g1: 'Ayşe Demir', g2: 'Ali Veli', g3: 'Fatma Kaya', g4: 'Mehmet Can', a1: 'Admin A', aB: 'Admin B',
  mg: 'Yönetici', sa: 'Süper', m1: 'Esnaf', mu: 'Muhasebe', de: 'Destek',
};
const past = Timestamp.fromMillis(Date.now() - 3600000);

await env.withSecurityRulesDisabled(async (ctx) => {
  const db = ctx.firestore();
  const u = (id, d) => setDoc(doc(db, 'users', id), { user_name: NAMES[id], ...d });
  await u('g1', { user_type: 'misafir', agency_id: A });
  await u('g2', { user_type: 'misafir', agency_id: B });
  await u('g3', { user_type: 'misafir', agency_id: A });
  await u('g4', { user_type: 'misafir', agency_id: A });
  await u('a1', { user_type: 'acente_admin', agency_id: A });
  await u('aB', { user_type: 'acente_admin', agency_id: B });
  await u('mg', { user_type: 'yonetici', agency_id: '' });
  await u('sa', { user_type: 'super_admin', agency_id: '' });
  await u('m1', { user_type: 'esnaf', agency_id: A, shop_id: 'S1' });
  await u('mu', { user_type: 'muhasebe', agency_id: '' });
  await u('de', { user_type: 'destek', agency_id: '' });
});

const as = (uid) => env.authenticatedContext(uid, { email: `${uid}@x.test` }).firestore();
let pass = 0, fail = 0;
async function t(name, fn) {
  try { await fn(); pass++; console.log('  OK  ', name); }
  catch (e) { fail++; console.log('  HATA', name, '→', e.message.split('\n')[0]); }
}

// --- yardımcılar -------------------------------------------------------------
const gref = (db, id) => doc(db, 'hatim_groups', id);
const pref = (db, gid, round, n) => doc(db, 'hatim_groups', gid, 'parts', `${round}_${n}`);
const partsCol = (db, gid) => collection(db, 'hatim_groups', gid, 'parts');
function ev(uid, type, { unit, round = 1, name = NAMES[uid], evUid = uid } = {}) {
  const e = { type, uid: evUid, name, round, at: serverTimestamp() };
  if (unit !== undefined) e.unit = unit;
  return e;
}
function newGroup(uid, over = {}) {
  return {
    name: 'Ramazan Hatmi', niyet: 'Hayırlı olsun', unit: 'cuz', total: 30, is_public: false,
    agency_id: uid === 'g2' ? B : A, owner_uid: uid, owner_name: NAMES[uid], members: [uid], member_count: 1,
    round: 1, done_count: 0, status: 'active', holds: {}, deadline: null,
    last_event: ev(uid, 'create'), created_at: serverTimestamp(), updated_at: serverTimestamp(), ...over,
  };
}
// Hız sınırı belgesini sıfırlar (testler aynı kullanıcıyla art arda grup kurar).
async function resetRate(uid) {
  await env.withSecurityRulesDisabled(async (ctx) => { await deleteDoc(doc(ctx.firestore(), 'hatim_rate', uid)); });
}
// Grup oluşturma batch'i: hatim_rate/{uid} + grup (istemcideki gibi).
async function createG(uid, id, data, { reset = true, rate = true } = {}) {
  if (reset) await resetRate(uid);
  const db = as(uid);
  const b = writeBatch(db);
  if (rate) b.set(doc(db, 'hatim_rate', uid), { last_create_at: serverTimestamp() });
  b.set(gref(db, id), data);
  await b.commit();
}
// Kuralları kapatıp doğrudan grup yazar.
async function seedG(id, over = {}) {
  await env.withSecurityRulesDisabled(async (ctx) => {
    await setDoc(gref(ctx.firestore(), id), {
      name: 'Tohum Grup', niyet: '', unit: 'cuz', total: 30, is_public: false, agency_id: A,
      owner_uid: 'g1', owner_name: NAMES.g1, members: ['g1'], member_count: 1, round: 1, done_count: 0,
      status: 'active', holds: {}, deadline: null,
      last_event: { type: 'create', uid: 'g1', name: NAMES.g1, unit: 0, round: 1, at: past },
      created_at: past, updated_at: past, ...over,
    });
  });
}
async function seedP(gid, n, uid, status = 'taken', round = 1, takenAt = past) {
  await env.withSecurityRulesDisabled(async (ctx) => {
    await setDoc(pref(ctx.firestore(), gid, round, n), {
      n, round, uid, name: NAMES[uid], status, taken_at: takenAt, done_at: status === 'done' ? past : null,
    });
  });
}
// Grubun holds[uid] değeri (kurallar kapalı okunur).
async function heldOf(gid, uid) {
  let v = 0;
  await env.withSecurityRulesDisabled(async (ctx) => {
    const s = await getDoc(gref(ctx.firestore(), gid));
    v = ((s.data() ?? {}).holds ?? {})[uid] ?? 0;
  });
  return v;
}
function partDoc(uid, n, over = {}) {
  return { n, round: 1, uid, name: NAMES[uid], status: 'taken', taken_at: serverTimestamp(), done_at: null, ...over };
}
// Parça al batch'i: parça oluştur + grup holds[ben]+1, last_event take (istemcideki gibi).
async function take(uid, gid, n, { round = 1, partOver = {}, groupOver = {}, held, group = true, pid } = {}) {
  const h = held ?? await heldOf(gid, uid);
  const db = as(uid);
  const b = writeBatch(db);
  b.set(pid ? doc(db, 'hatim_groups', gid, 'parts', pid) : pref(db, gid, round, n), partDoc(uid, n, { round, ...partOver }));
  if (group) {
    b.update(gref(db, gid), {
      [`holds.${uid}`]: h + 1, last_event: ev(uid, 'take', { unit: n, round }), updated_at: serverTimestamp(), ...groupOver,
    });
  }
  await b.commit();
}
// Parça bırak batch'i: parça sil + grup holds[parça sahibi]-1, last_event release.
async function release(uid, gid, n, holder, { round = 1, del = true, groupOver = {}, held } = {}) {
  const h = held ?? await heldOf(gid, holder);
  const db = as(uid);
  const b = writeBatch(db);
  if (del) b.delete(pref(db, gid, round, n));
  b.update(gref(db, gid), {
    [`holds.${holder}`]: Math.max(h - 1, 0), last_event: ev(uid, 'release', { unit: n, round }), updated_at: serverTimestamp(), ...groupOver,
  });
  await b.commit();
}
// Bitirdim batch'i.
async function finish(uid, gid, n, { count, total = 30, round = 1, groupOver = {}, partOver = {}, evType, held } = {}) {
  const h = held ?? await heldOf(gid, uid);
  const db = as(uid);
  const b = writeBatch(db);
  const completing = count + 1 === total;
  b.update(pref(db, gid, round, n), { status: 'done', done_at: serverTimestamp(), ...partOver });
  const g = {
    done_count: count + 1,
    [`holds.${uid}`]: Math.max(h - 1, 0),
    last_event: ev(uid, evType ?? (completing ? 'completed' : 'done'), { unit: n, round }),
    updated_at: serverTimestamp(),
  };
  if (completing) { g.status = 'completed'; g.completed_at = serverTimestamp(); }
  Object.assign(g, groupOver);
  b.update(gref(db, gid), g);
  await b.commit();
}
const joinUpd = (uid, gid, members, over = {}) => updateDoc(gref(as(uid), gid), {
  members: arrayUnion(uid), member_count: members + 1, last_event: ev(uid, 'join'), updated_at: serverTimestamp(), ...over,
});
const kick = (by, gid, target, members, over = {}) => updateDoc(gref(as(by), gid), {
  members: arrayRemove(target), member_count: members - 1, [`holds.${target}`]: deleteField(),
  last_event: ev(by, 'kick', { unit: 0 }), updated_at: serverTimestamp(), ...over,
});

// --- Oluşturma ---------------------------------------------------------------
console.log('Oluşturma:');
await t('misafir cüz grubu oluşturur', () => assertSucceeds(createG('g1', 'c1', newGroup('g1'))));
await t('misafir sayfa grubu (604) oluşturur', () => assertSucceeds(createG('g1', 'c2', newGroup('g1', { unit: 'sayfa', total: 604, is_public: true }))));
await t('deadline timestamp ile oluşturulur', () => assertSucceeds(createG('g1', 'c3', newGroup('g1', { deadline: Timestamp.fromMillis(Date.now() + 86400000) }))));
await t('deadline/niyet alanı olmadan oluşturulur', () => {
  const d = newGroup('g1'); delete d.deadline; delete d.niyet;
  return assertSucceeds(createG('g1', 'c4', d));
});
await t('acente admini oluşturur', () => assertSucceeds(createG('a1', 'c5', newGroup('a1'))));
await t('esnaf grup OLUŞTURAMAZ', () => assertFails(createG('m1', 'x1', newGroup('m1'))));
await t('anonim OLUŞTURAMAZ', () => assertFails(setDoc(gref(env.unauthenticatedContext().firestore(), 'x2'), newGroup('g1'))));
await t('başkası adına sahip (owner_uid) OLUŞTURULAMAZ', () => assertFails(createG('g1', 'x3', newGroup('g1', { owner_uid: 'g3' }))));
await t('members başkasını içeremez', () => assertFails(createG('g1', 'x4', newGroup('g1', { members: ['g1', 'g3'], member_count: 2 }))));
await t('member_count 1 dışı REDDEDİLİR', () => assertFails(createG('g1', 'x5', newGroup('g1', { member_count: 5 }))));
await t('done_count 5 ile başlatılamaz', () => assertFails(createG('g1', 'x6', newGroup('g1', { done_count: 5 }))));
await t('round 2 ile başlatılamaz', () => assertFails(createG('g1', 'x7', newGroup('g1', { round: 2, last_event: ev('g1', 'create', { round: 2 }) }))));
await t('status completed ile başlatılamaz', () => assertFails(createG('g1', 'x8', newGroup('g1', { status: 'completed' }))));
await t('cüz için total 604 REDDEDİLİR', () => assertFails(createG('g1', 'x9', newGroup('g1', { total: 604 }))));
await t('sayfa için total 30 REDDEDİLİR', () => assertFails(createG('g1', 'x10', newGroup('g1', { unit: 'sayfa', total: 30 }))));
await t('bilinmeyen unit REDDEDİLİR', () => assertFails(createG('g1', 'x11', newGroup('g1', { unit: 'hizb', total: 60 }))));
await t('başka acente (agency_id) REDDEDİLİR', () => assertFails(createG('g1', 'x12', newGroup('g1', { agency_id: B }))));
await t('sahte owner_name REDDEDİLİR', () => assertFails(createG('g1', 'x13', newGroup('g1', { owner_name: 'Başkası' }))));
await t('2 karakterlik ad REDDEDİLİR', () => assertFails(createG('g1', 'x14', newGroup('g1', { name: 'ab' }))));
await t('61 karakterlik ad REDDEDİLİR', () => assertFails(createG('g1', 'x15', newGroup('g1', { name: 'a'.repeat(61) }))));
await t('ad string olmalı', () => assertFails(createG('g1', 'x16', newGroup('g1', { name: 12345 }))));
await t('301 karakterlik niyet REDDEDİLİR', () => assertFails(createG('g1', 'x17', newGroup('g1', { niyet: 'a'.repeat(301) }))));
await t('300 karakterlik niyet kabul', () => assertSucceeds(createG('g1', 'c6', newGroup('g1', { niyet: 'a'.repeat(300) }))));
await t('is_public bool olmalı', () => assertFails(createG('g1', 'x18', newGroup('g1', { is_public: 'true' }))));
await t('deadline string REDDEDİLİR', () => assertFails(createG('g1', 'x19', newGroup('g1', { deadline: 'yarın' }))));
await t('fazladan alan REDDEDİLİR', () => assertFails(createG('g1', 'x20', newGroup('g1', { hack: 1 }))));
await t('completed_at ile oluşturulamaz', () => assertFails(createG('g1', 'x21', newGroup('g1', { completed_at: serverTimestamp() }))));
await t('last_event.type create olmalı', () => assertFails(createG('g1', 'x22', newGroup('g1', { last_event: ev('g1', 'done', { unit: 1 }) }))));
await t('last_event.uid sahte REDDEDİLİR', () => assertFails(createG('g1', 'x23', newGroup('g1', { last_event: ev('g1', 'create', { evUid: 'g3' }) }))));
await t('last_event.name sahte REDDEDİLİR', () => assertFails(createG('g1', 'x24', newGroup('g1', { last_event: ev('g1', 'create', { name: 'Sahte' }) }))));
await t('created_at istemci zamanı REDDEDİLİR', () => assertFails(createG('g1', 'x25', newGroup('g1', { created_at: Timestamp.fromMillis(1000) }))));
await t('updated_at istemci zamanı REDDEDİLİR', () => assertFails(createG('g1', 'x26', newGroup('g1', { updated_at: Timestamp.fromMillis(1000) }))));
await t('holds dolu başlatılamaz', () => assertFails(createG('g1', 'x27', newGroup('g1', { holds: { g1: 3 } }))));
await t('holds alanı olmadan oluşturulamaz', () => {
  const d = newGroup('g1'); delete d.holds;
  return assertFails(createG('g1', 'x28', d));
});
await t('last_event.unit dev metin (create) REDDEDİLİR', () => assertFails(createG('g1', 'x29', newGroup('g1', { last_event: ev('g1', 'create', { unit: 'x'.repeat(200000) }) }))));
// Hız sınırı
await t('hız sınırı: hatim_rate yazılmadan grup OLUŞTURULAMAZ', () => assertFails(createG('g3', 'x30', newGroup('g3'), { rate: false })));
await t('hız sınırı: ilk grup oluşturulur', () => assertSucceeds(createG('g3', 'r1', newGroup('g3'))));
await t('hız sınırı: 60 sn içinde ikinci grup OLUŞTURULAMAZ', () => assertFails(createG('g3', 'r2', newGroup('g3'), { reset: false })));
await env.withSecurityRulesDisabled(async (ctx) => { await setDoc(doc(ctx.firestore(), 'hatim_rate', 'g3'), { last_create_at: past }); });
await t('hız sınırı: 60 sn sonra yeni grup oluşturulur', () => assertSucceeds(createG('g3', 'r3', newGroup('g3'), { reset: false })));
await t('hız sınırı: başkasının hatim_rate belgesine yazılamaz', () => assertFails(setDoc(doc(as('g1'), 'hatim_rate', 'g3'), { last_create_at: serverTimestamp() })));
await t('hız sınırı: hatim_rate silinemez', () => assertFails(deleteDoc(doc(as('g3'), 'hatim_rate', 'g3'))));

// --- Okuma -------------------------------------------------------------------
console.log('Okuma:');
await seedG('pub', { is_public: true, name: 'Herkese açık' });
await seedG('privA', { name: 'Özel A' });
await seedG('privB', { name: 'Özel B', agency_id: B, owner_uid: 'g2', owner_name: NAMES.g2, members: ['g2'] });
await seedP('privB', 1, 'g2');
await t('herkese açık grubu başka acente okur', () => assertSucceeds(getDoc(gref(as('g2'), 'pub'))));
await t('özel grubu aynı acente okur', () => assertSucceeds(getDoc(gref(as('g3'), 'privA'))));
await t('özel grubu başka acente OKUYAMAZ', () => assertFails(getDoc(gref(as('g2'), 'privA'))));
await t('özel grubu üye olmayan dışarıdan OKUYAMAZ', () => assertFails(getDoc(gref(as('g1'), 'privB'))));
await t('anonim okuyamaz', () => assertFails(getDoc(gref(env.unauthenticatedContext().firestore(), 'pub'))));
await t('yönetici (genel) özel grubu okur', () => assertSucceeds(getDoc(gref(as('mg'), 'privB'))));
await t('süper admin özel grubu okur', () => assertSucceeds(getDoc(gref(as('sa'), 'privB'))));
await t('BAŞKA acentenin acente_admini özel grubu OKUYAMAZ', () => assertFails(getDoc(gref(as('a1'), 'privB'))));
await t('kendi acentesinin acente_admini özel grubu okur', () => assertSucceeds(getDoc(gref(as('aB'), 'privB'))));
await t('muhasebe özel grubu OKUYAMAZ', () => assertFails(getDoc(gref(as('mu'), 'privB'))));
await t('destek özel grubu okur', () => assertSucceeds(getDoc(gref(as('de'), 'privB'))));
await t('başka acentenin acente_admini sorgu agency_id == B REDDEDİLİR', () => assertFails(getDocs(query(collection(as('a1'), 'hatim_groups'), where('agency_id', '==', B)))));
await t('muhasebe sorgu agency_id == B REDDEDİLİR', () => assertFails(getDocs(query(collection(as('mu'), 'hatim_groups'), where('agency_id', '==', B)))));
await t('destek sorgu agency_id == B okur', () => assertSucceeds(getDocs(query(collection(as('de'), 'hatim_groups'), where('agency_id', '==', B)))));
await t('başka acentenin acente_admini parçaları OKUYAMAZ', () => assertFails(getDocs(partsCol(as('a1'), 'privB'))));
await t('muhasebe parçaları OKUYAMAZ', () => assertFails(getDoc(pref(as('mu'), 'privB', 1, 1))));
await t('destek parçaları okur', () => assertSucceeds(getDocs(partsCol(as('de'), 'privB'))));
await t('misafir sorgu: members array-contains', () => assertSucceeds(getDocs(query(collection(as('g1'), 'hatim_groups'), where('members', 'array-contains', 'g1')))));
await t('misafir sorgu: is_public == true', () => assertSucceeds(getDocs(query(collection(as('g1'), 'hatim_groups'), where('is_public', '==', true)))));
await t('misafir sorgu: agency_id == kendi acentesi', () => assertSucceeds(getDocs(query(collection(as('g1'), 'hatim_groups'), where('agency_id', '==', A)))));
await t('misafir sorgu: başka acente REDDEDİLİR', () => assertFails(getDocs(query(collection(as('g1'), 'hatim_groups'), where('agency_id', '==', B)))));
await t('misafir filtresiz sorgu REDDEDİLİR', () => assertFails(getDocs(collection(as('g1'), 'hatim_groups'))));
await t('esnaf filtresiz sorgu REDDEDİLİR', () => assertFails(getDocs(collection(as('m1'), 'hatim_groups'))));
await t('acente_admin filtresiz sorgu REDDEDİLİR', () => assertFails(getDocs(collection(as('a1'), 'hatim_groups'))));

// --- Katıl / Ayrıl -----------------------------------------------------------
console.log('Katıl / ayrıl:');
await t('aynı acente özel gruba katılır', () => assertSucceeds(joinUpd('g3', 'privA', 1)));
await t('başka acenteden herkese açık gruba katılır', () => assertSucceeds(joinUpd('g2', 'pub', 1)));
await t('başka acenteden ÖZEL gruba KATILAMAZ', () => assertFails(joinUpd('g2', 'privA', 1)));
await t('zaten üye ikinci kez katılamaz', () => assertFails(joinUpd('g3', 'privA', 2)));
await t('başkasının uid\'sini ekleyemez', () => assertFails(updateDoc(gref(as('g4'), 'privA'), {
  members: arrayUnion('g1', 'g3', 'g4', 'g2'), member_count: 4, last_event: ev('g4', 'join'), updated_at: serverTimestamp() })));
await t('yalnız başkasını ekleyemez', () => assertFails(updateDoc(gref(as('g4'), 'privA'), {
  members: arrayUnion('g2'), member_count: 3, last_event: ev('g4', 'join'), updated_at: serverTimestamp() })));
await t('member_count yanlış REDDEDİLİR', () => assertFails(joinUpd('g4', 'privA', 1, { member_count: 9 })));
await t('last_event.uid sahte katılma REDDEDİLİR', () => assertFails(joinUpd('g4', 'privA', 2, { last_event: ev('g4', 'join', { evUid: 'g1' }) })));
await t('last_event.name sahte katılma REDDEDİLİR', () => assertFails(joinUpd('g4', 'privA', 2, { last_event: ev('g4', 'join', { name: 'Sahte' }) })));
await t('katılırken ekstra alan (done_count) REDDEDİLİR', () => assertFails(joinUpd('g4', 'privA', 2, { done_count: 3 })));
await t('katılırken holds DEĞİŞTİRİLEMEZ', () => assertFails(joinUpd('g4', 'privA', 2, { 'holds.g4': 0 })));
await t('katılırken updated_at istemci zamanı REDDEDİLİR', () => assertFails(joinUpd('g4', 'privA', 2, { updated_at: past })));
await t('katılırken type done REDDEDİLİR', () => assertFails(joinUpd('g4', 'privA', 2, { last_event: ev('g4', 'done', { unit: 1 }) })));
await t('katılırken last_event.unit dev metin REDDEDİLİR', () => assertFails(joinUpd('g4', 'privA', 2, { last_event: ev('g4', 'join', { unit: 'x'.repeat(200000) }) })));
await t('katılırken last_event.unit 605 REDDEDİLİR', () => assertFails(joinUpd('g4', 'privA', 2, { last_event: ev('g4', 'join', { unit: 605 }) })));
await t('katılırken last_event.unit -1 REDDEDİLİR', () => assertFails(joinUpd('g4', 'privA', 2, { last_event: ev('g4', 'join', { unit: -1 }) })));
await t('katılırken last_event fazladan anahtar REDDEDİLİR', () => assertFails(joinUpd('g4', 'privA', 2, { last_event: { ...ev('g4', 'join'), x: 'y' } })));
await seedG('full200', { is_public: true, members: ['g1', ...Array.from({ length: 199 }, (_, i) => `u${i}`)], member_count: 200 });
await t('200 üyeli gruba katılınamaz', () => assertFails(joinUpd('g3', 'full200', 200)));
await seedG('lv', { members: ['g1', 'g3'], member_count: 2 });
await t('üye ayrılır', () => assertSucceeds(updateDoc(gref(as('g3'), 'lv'), {
  members: arrayRemove('g3'), member_count: 1, last_event: ev('g3', 'leave'), updated_at: serverTimestamp() })));
await t('ayrıldıktan hemen sonra (30 sn) tekrar KATILAMAZ', () => assertFails(joinUpd('g3', 'lv', 1)));
await t('başka biri o arada katılabilir', () => assertSucceeds(joinUpd('g4', 'lv', 1)));
await seedG('rj', { members: ['g1'], member_count: 1, last_event: { type: 'leave', uid: 'g3', name: NAMES.g3, unit: 0, round: 1, at: past } });
await t('ayrıldıktan 30 sn sonra tekrar katılır', () => assertSucceeds(joinUpd('g3', 'rj', 1)));
await seedG('lv2', { members: ['g1', 'g3'], member_count: 2 });
await t('sahip AYRILAMAZ', () => assertFails(updateDoc(gref(as('g1'), 'lv2'), {
  members: arrayRemove('g1'), member_count: 1, last_event: ev('g1', 'leave'), updated_at: serverTimestamp() })));
await t('başkasını gruptan ÇIKARAMAZ', () => assertFails(updateDoc(gref(as('g4'), 'lv2'), {
  members: arrayRemove('g3'), member_count: 1, last_event: ev('g4', 'leave'), updated_at: serverTimestamp() })));
await t('üye olmayan ayrılma ile başkasını çıkaramaz', () => assertFails(updateDoc(gref(as('g1'), 'lv2'), {
  members: arrayRemove('g3'), member_count: 1, last_event: ev('g1', 'leave'), updated_at: serverTimestamp() })));
await t('ayrılırken member_count yanlış REDDEDİLİR', () => assertFails(updateDoc(gref(as('g3'), 'lv2'), {
  members: arrayRemove('g3'), member_count: 5, last_event: ev('g3', 'leave'), updated_at: serverTimestamp() })));
await t('ayrılırken last_event.unit dev metin REDDEDİLİR', () => assertFails(updateDoc(gref(as('g3'), 'lv2'), {
  members: arrayRemove('g3'), member_count: 1, last_event: ev('g3', 'leave', { unit: 'x'.repeat(200000) }), updated_at: serverTimestamp() })));

// --- Üyeyi çıkar -------------------------------------------------------------
console.log('Üyeyi çıkar:');
await seedG('kk', { members: ['g1', 'g3', 'g4'], member_count: 3, holds: { g3: 0, g4: 0 } });
await t('sahip OLMAYAN üye çıkaramaz', () => assertFails(kick('g3', 'kk', 'g4', 3)));
await t('sahip kendini (sahibi) çıkaramaz', () => assertFails(kick('g1', 'kk', 'g1', 3)));
await t('genel yönetici sahibi çıkaramaz', () => assertFails(kick('mg', 'kk', 'g1', 3)));
await t('çıkarırken holds anahtarı kalamaz', () => assertFails(kick('g1', 'kk', 'g4', 3, { 'holds.g4': 0 })));
await t('aynı anda iki üye çıkarılamaz', () => assertFails(kick('g1', 'kk', 'g4', 3, { members: arrayRemove('g3', 'g4'), member_count: 1 })));
await t('çıkarırken member_count yanlış REDDEDİLİR', () => assertFails(kick('g1', 'kk', 'g4', 3, { member_count: 3 })));
await t('çıkarırken unit 0 olmalı', () => assertFails(kick('g1', 'kk', 'g4', 3, { last_event: ev('g1', 'kick', { unit: 5 }) })));
await t('çıkarırken sahte last_event.uid REDDEDİLİR', () => assertFails(kick('g1', 'kk', 'g4', 3, { last_event: ev('g1', 'kick', { unit: 0, evUid: 'g3' }) })));
await t('çıkarırken done_count değiştirilemez', () => assertFails(kick('g1', 'kk', 'g4', 3, { done_count: 5 })));
await t('acente admini (sahip değil) çıkaramaz', () => assertFails(kick('a1', 'kk', 'g4', 3)));
await t('sahip üyeyi çıkarır', () => assertSucceeds(kick('g1', 'kk', 'g3', 3)));
await t('genel yönetici üyeyi çıkarır', () => assertSucceeds(kick('mg', 'kk', 'g4', 2)));
await t('çıkarılan üye parça ALAMAZ', () => assertFails(take('g3', 'kk', 1)));

// --- Parça al ----------------------------------------------------------------
console.log('Parça al:');
await seedG('tk', { members: ['g1', 'g3'], member_count: 2 });
await t('üye parça alır (cüz 12)', () => assertSucceeds(take('g3', 'tk', 12)));
await t('aynı parça ikinci kişiye VERİLMEZ', () => assertFails(take('g1', 'tk', 12)));
await t('aynı kişi aynı parçayı tekrar ALAMAZ (üzerine yazma)', () => assertFails(take('g3', 'tk', 12)));
await t('üye olmayan parça ALAMAZ', () => assertFails(take('g4', 'tk', 5)));
await t('başka acenteden üye olmayan ALAMAZ', () => assertFails(take('g2', 'tk', 5)));
await t('cüz n=0 REDDEDİLİR', () => assertFails(take('g1', 'tk', 0)));
await t('cüz n=31 REDDEDİLİR', () => assertFails(take('g1', 'tk', 31)));
await t('cüz n=30 kabul', () => assertSucceeds(take('g1', 'tk', 30)));
await t('n string REDDEDİLİR', () => assertFails(take('g1', 'tk', 7, { pid: '1_7', partOver: { n: '7' } })));
await t('belge id\'si n ile uyuşmalı', () => assertFails(take('g1', 'tk', 8, { pid: '1_9' })));
await t('belge id\'si round ile uyuşmalı', () => assertFails(take('g1', 'tk', 8, { pid: '2_8', partOver: { round: 2 } })));
await t('yanlış round (2) REDDEDİLİR', () => assertFails(take('g1', 'tk', 8, { round: 2 })));
await t('başkası adına parça ALINAMAZ', () => assertFails(take('g1', 'tk', 14, { partOver: { uid: 'g3', name: NAMES.g3 } })));
await t('sahte isim REDDEDİLİR', () => assertFails(take('g1', 'tk', 15, { partOver: { name: 'Sahte' } })));
await t('status done ile OLUŞTURULAMAZ', () => assertFails(take('g1', 'tk', 16, { partOver: { status: 'done' } })));
await t('done_at dolu OLUŞTURULAMAZ', () => assertFails(take('g1', 'tk', 17, { partOver: { done_at: serverTimestamp() } })));
await t('taken_at istemci zamanı REDDEDİLİR', () => assertFails(take('g1', 'tk', 18, { partOver: { taken_at: past } })));
await t('fazladan alan REDDEDİLİR', () => assertFails(take('g1', 'tk', 19, { partOver: { bonus: 1 } })));
await seedG('comp', { status: 'completed', done_count: 30, members: ['g1', 'g3'], member_count: 2, completed_at: past });
await t('tamamlanmış grupta parça ALINAMAZ', () => assertFails(take('g3', 'comp', 3)));
await seedG('pg604', { unit: 'sayfa', total: 604, members: ['g1'] });
await t('sayfa 604 kabul', () => assertSucceeds(take('g1', 'pg604', 604)));
await t('sayfa 605 REDDEDİLİR', () => assertFails(take('g1', 'pg604', 605)));
await t('üye parçaları okur', () => assertSucceeds(getDocs(partsCol(as('g3'), 'tk'))));
await t('üye tur filtreli parça sorgusu (round == 1)', () => assertSucceeds(getDocs(query(partsCol(as('g3'), 'tk'), where('round', '==', 1)))));
await t('dışarıdan tur filtreli parça sorgusu REDDEDİLİR', () => assertFails(getDocs(query(partsCol(as('g2'), 'tk'), where('round', '==', 1)))));
await t('özel grubun parçalarını dışarıdan OKUYAMAZ', () => assertFails(getDocs(partsCol(as('g2'), 'tk'))));
await t('parça + take bildirimi + holds aynı batch\'te', () => assertSucceeds(take('g1', 'tk', 20)));
await t('grup güncellemesi (holds) olmadan parça ALINAMAZ', () => assertFails(take('g3', 'tk', 21, { group: false })));
await t('holds artırılmadan parça ALINAMAZ', async () => {
  const h = await heldOf('tk', 'g3');
  await assertFails(take('g3', 'tk', 21, { groupOver: { 'holds.g3': h } }));
});
await t('parça olmadan take bildirimi SAHTELENEMEZ', () => assertFails(updateDoc(gref(as('g1'), 'tk'), {
  'holds.g1': 3, last_event: ev('g1', 'take', { unit: 25 }), updated_at: serverTimestamp() })));
await t('take bildiriminde sahte uid REDDEDİLİR', () => assertFails(take('g1', 'tk', 21, { groupOver: { last_event: ev('g1', 'take', { unit: 21, evUid: 'g3' }) } })));
await t('take bildiriminde başka parça numarası REDDEDİLİR', () => assertFails(take('g1', 'tk', 21, { groupOver: { last_event: ev('g1', 'take', { unit: 22 }) } })));
await t('take ile başkasının holds değeri değiştirilemez', () => assertFails(take('g1', 'tk', 21, { groupOver: { 'holds.g3': 0 } })));
await t('iki parça tek holds +1 ile ALINAMAZ', async () => {
  const db = as('g3'); const b = writeBatch(db);
  const h = await heldOf('tk', 'g3');
  b.set(pref(db, 'tk', 1, 21), partDoc('g3', 21));
  b.set(pref(db, 'tk', 1, 22), partDoc('g3', 22));
  b.update(gref(db, 'tk'), { 'holds.g3': h + 1, last_event: ev('g3', 'take', { unit: 21 }), updated_at: serverTimestamp() });
  await assertFails(b.commit());
});
await t('iki parça holds +2 ile de ALINAMAZ', async () => {
  const db = as('g3'); const b = writeBatch(db);
  const h = await heldOf('tk', 'g3');
  b.set(pref(db, 'tk', 1, 21), partDoc('g3', 21));
  b.set(pref(db, 'tk', 1, 22), partDoc('g3', 22));
  b.update(gref(db, 'tk'), { 'holds.g3': h + 2, last_event: ev('g3', 'take', { unit: 21 }), updated_at: serverTimestamp() });
  await assertFails(b.commit());
});
await seedP('tk', 23, 'g1');
await t('VAR OLAN parça için take olayı (holds+1) REDDEDİLİR', async () => {
  const h = await heldOf('tk', 'g1');
  await assertFails(updateDoc(gref(as('g1'), 'tk'), { 'holds.g1': h + 1, last_event: ev('g1', 'take', { unit: 23 }), updated_at: serverTimestamp() }));
});
// Kota
await seedG('q', { members: ['g1', 'g3'], member_count: 2, holds: { g1: 3, g3: 2 } });
await t('kota: 3 cüzü olan 4. cüzü ALAMAZ', () => assertFails(take('g1', 'q', 1)));
await t('kota: holds değerini düşürerek hile REDDEDİLİR', () => assertFails(take('g1', 'q', 1, { held: 1 })));
await t('kota: 2 cüzü olan 3. cüzü alır', () => assertSucceeds(take('g3', 'q', 2)));
await t('kota: ardından 4. cüz REDDEDİLİR', () => assertFails(take('g3', 'q', 3)));
await seedG('qs', { unit: 'sayfa', total: 604, members: ['g1'], holds: { g1: 19 } });
await t('kota: 20. sayfa alınır', () => assertSucceeds(take('g1', 'qs', 100)));
await t('kota: 21. sayfa REDDEDİLİR', () => assertFails(take('g1', 'qs', 101)));

// --- Parça bırak -------------------------------------------------------------
console.log('Parça bırak:');
await seedG('rel', { members: ['g1', 'g3', 'g4'], member_count: 3, holds: { g3: 7 } });
await seedP('rel', 1, 'g3'); await seedP('rel', 2, 'g3'); await seedP('rel', 3, 'g3'); await seedP('rel', 4, 'g3');
await seedP('rel', 5, 'g3', 'done');
await t('sahibi parçayı bırakır (yalnız silme)', () => assertSucceeds(deleteDoc(pref(as('g3'), 'rel', 1, 1))));
await t('grup sahibi parçayı bırakır (yalnız silme)', () => assertSucceeds(deleteDoc(pref(as('g1'), 'rel', 1, 2))));
await t('genel yönetici parçayı bırakır (yalnız silme)', () => assertSucceeds(deleteDoc(pref(as('mg'), 'rel', 1, 3))));
await t('başka üye parçayı BIRAKAMAZ', () => assertFails(deleteDoc(pref(as('g4'), 'rel', 1, 4))));
await t('başka üye release batch\'i ile BIRAKAMAZ', () => assertFails(release('g4', 'rel', 4, 'g3')));
await t('bitmiş parça (sahibi) SİLİNEMEZ', () => assertFails(deleteDoc(pref(as('g3'), 'rel', 1, 5))));
await t('bitmiş parça (grup sahibi) SİLİNEMEZ', () => assertFails(deleteDoc(pref(as('g1'), 'rel', 1, 5))));
await t('bitmiş parça (yönetici) SİLİNEMEZ', () => assertFails(deleteDoc(pref(as('mg'), 'rel', 1, 5))));
await t('bitmiş parça (süper admin, grup duruyorken) SİLİNEMEZ', () => assertFails(deleteDoc(pref(as('sa'), 'rel', 1, 5))));
await seedP('rel', 6, 'g3'); await seedP('rel', 7, 'g3');
await t('release + silme + holds−1 aynı batch\'te (sahibi)', () => assertSucceeds(release('g3', 'rel', 6, 'g3')));
await t('grup sahibi release batch\'i (holds[parça sahibi]−1)', () => assertSucceeds(release('g1', 'rel', 7, 'g3')));
await t('hiç var olmamış parça için sahte release REDDEDİLİR', () => assertFails(release('g3', 'rel', 9, 'g3', { del: false })));
await t('silinmeyen parça için release REDDEDİLİR', () => assertFails(release('g3', 'rel', 4, 'g3', { del: false })));
await t('release\'te yanlış kişinin holds değeri düşürülemez', () => assertFails(release('g3', 'rel', 4, 'g1')));
await t('release\'te holds −2 REDDEDİLİR', async () => {
  const h = await heldOf('rel', 'g3');
  await assertFails(release('g3', 'rel', 4, 'g3', { groupOver: { 'holds.g3': h - 2 } }));
});
await t('bitmiş parça için release REDDEDİLİR', () => assertFails(release('g3', 'rel', 5, 'g3')));
await seedG('relc', { status: 'completed', done_count: 30, completed_at: past, members: ['g1', 'g3'], member_count: 2, holds: { g3: 1 } });
await seedP('relc', 1, 'g3');
await t('tamamlanmış grupta release REDDEDİLİR', () => assertFails(release('g3', 'relc', 1, 'g3')));
// Sahipsiz (grubu silinmiş) bitmiş parça: yalnız süper admin temizler.
await seedG('orph'); await seedP('orph', 1, 'g3', 'done'); await seedP('orph', 2, 'g3');
await t('sahip grubu siler (parçalar kalır)', () => assertSucceeds(deleteDoc(gref(as('g1'), 'orph'))));
await t('sahipsiz bitmiş parçayı eski grup sahibi SİLEMEZ', () => assertFails(deleteDoc(pref(as('g1'), 'orph', 1, 1))));
await t('sahipsiz parçaları süper admin okur', () => assertSucceeds(getDocs(partsCol(as('sa'), 'orph'))));
await t('sahipsiz parçaları misafir OKUYAMAZ', () => assertFails(getDocs(partsCol(as('g3'), 'orph'))));
await t('sahipsiz bitmiş parçayı süper admin siler', () => assertSucceeds(deleteDoc(pref(as('sa'), 'orph', 1, 1))));
await t('sahipsiz alınmış parçayı sahibi siler', () => assertSucceeds(deleteDoc(pref(as('g3'), 'orph', 1, 2))));

// --- Bitirdim ----------------------------------------------------------------
console.log('Bitirdim:');
await seedG('dn', { members: ['g1', 'g3', 'g4'], member_count: 3, done_count: 5, holds: { g3: 3, g4: 1 } });
await seedP('dn', 12, 'g3'); await seedP('dn', 13, 'g4'); await seedP('dn', 14, 'g3'); await seedP('dn', 15, 'g3');
await t('sahibi parçayı bitirir (done_count 5→6, holds 3→2)', () => assertSucceeds(finish('g3', 'dn', 12, { count: 5 })));
await t('aynı parça İKİNCİ KEZ sayılamaz', () => assertFails(finish('g3', 'dn', 12, { count: 6 })));
await t('aynı parça ikinci kez (başka kullanıcı) sayılamaz', () => assertFails(finish('g4', 'dn', 12, { count: 6 })));
await t('başkasının parçasını bitiremez', () => assertFails(finish('g3', 'dn', 13, { count: 6 })));
await t('başkasının parçası: yalnız parça güncellemesi', () => assertFails(updateDoc(pref(as('g3'), 'dn', 1, 13), { status: 'done', done_at: serverTimestamp() })));
await t('parçasız done_count şişirilemez', () => assertFails(updateDoc(gref(as('g3'), 'dn'), {
  done_count: 7, last_event: ev('g3', 'done', { unit: 20 }), updated_at: serverTimestamp() })));
await t('var olan başkasının parçası adına şişirme', () => assertFails(updateDoc(gref(as('g3'), 'dn'), {
  done_count: 7, last_event: ev('g3', 'done', { unit: 13 }), updated_at: serverTimestamp() })));
await t('parça güncellenmeden done_count şişirilemez (kendi taken parçası)', () => assertFails(updateDoc(gref(as('g3'), 'dn'), {
  done_count: 7, 'holds.g3': 1, last_event: ev('g3', 'done', { unit: 14 }), updated_at: serverTimestamp() })));
await t('parça done olur ama sayaç güncellenmez → REDDEDİLİR', () => assertFails(updateDoc(pref(as('g3'), 'dn', 1, 14), { status: 'done', done_at: serverTimestamp() })));
await seedP('dn', 16, 'g3'); await seedP('dn', 17, 'g3');
await t('İKİ parça TEK sayaç artışıyla done yapılamaz', async () => {
  const db = as('g3'); const b = writeBatch(db);
  const h = await heldOf('dn', 'g3');
  b.update(pref(db, 'dn', 1, 16), { status: 'done', done_at: serverTimestamp() });
  b.update(pref(db, 'dn', 1, 17), { status: 'done', done_at: serverTimestamp() });
  b.update(gref(db, 'dn'), { done_count: 7, 'holds.g3': h - 1, last_event: ev('g3', 'done', { unit: 16 }), updated_at: serverTimestamp() });
  await assertFails(b.commit());
});
await t('last_event başka parçayı gösterirken parça done yapılamaz', async () => {
  const db = as('g3'); const b = writeBatch(db);
  const h = await heldOf('dn', 'g3');
  b.update(pref(db, 'dn', 1, 17), { status: 'done', done_at: serverTimestamp() });
  b.update(gref(db, 'dn'), { done_count: 7, 'holds.g3': h - 1, last_event: ev('g3', 'done', { unit: 16 }), updated_at: serverTimestamp() });
  await assertFails(b.commit());
});
await seedP('dn', 18, 'g3', 'taken', 1, Timestamp.fromMillis(Date.now() - 10000));
await t('alındıktan 60 sn geçmeden bitirilemez', () => assertFails(finish('g3', 'dn', 18, { count: 6 })));
await t('bitirirken holds düşürülmezse REDDEDİLİR', async () => {
  const h = await heldOf('dn', 'g3');
  await assertFails(finish('g3', 'dn', 14, { count: 6, groupOver: { 'holds.g3': h } }));
});
await t('bitirirken başkasının holds değeri değiştirilemez', () => assertFails(finish('g3', 'dn', 14, { count: 6, groupOver: { 'holds.g4': 0 } })));
await t('done_count +2 REDDEDİLİR', () => assertFails(finish('g3', 'dn', 14, { count: 6, groupOver: { done_count: 9 } })));
await t('done_count geri alınamaz (-1)', () => assertFails(finish('g3', 'dn', 14, { count: 6, groupOver: { done_count: 5 } })));
await t('sahte last_event.uid ile bitirme REDDEDİLİR', () => assertFails(finish('g3', 'dn', 14, { count: 6, groupOver: { last_event: ev('g3', 'done', { unit: 14, evUid: 'g1' }) } })));
await t('sahte last_event.name ile bitirme REDDEDİLİR', () => assertFails(finish('g3', 'dn', 14, { count: 6, groupOver: { last_event: ev('g3', 'done', { unit: 14, name: 'Sahte' }) } })));
await t('type join ile done_count artırılamaz', () => assertFails(finish('g3', 'dn', 14, { count: 6, evType: 'join' })));
await t('bitirirken status completed yapılamaz (eksik sayaçla)', () => assertFails(finish('g3', 'dn', 14, { count: 6, groupOver: { status: 'completed', completed_at: serverTimestamp() } })));
await t('bitirirken total/unit değiştirilemez', () => assertFails(finish('g3', 'dn', 14, { count: 6, groupOver: { total: 29 } })));
await t('bitirirken owner_uid değiştirilemez', () => assertFails(finish('g3', 'dn', 14, { count: 6, groupOver: { owner_uid: 'g3' } })));
await t('bitirirken done_at istemci zamanı REDDEDİLİR', () => assertFails(finish('g3', 'dn', 14, { count: 6, partOver: { done_at: past } })));
await t('bitirirken parça uid değiştirilemez', () => assertFails(finish('g3', 'dn', 14, { count: 6, partOver: { uid: 'g4' } })));
await t('doğru batch hâlâ çalışır (14)', () => assertSucceeds(finish('g3', 'dn', 14, { count: 6 })));
await t('bitirdikten sonra parça tekrar taken yapılamaz', () => assertFails(updateDoc(pref(as('g3'), 'dn', 1, 14), { status: 'taken' })));
await t('bitmiş parça silinemez (bitirdikten sonra)', () => assertFails(deleteDoc(pref(as('g3'), 'dn', 1, 14))));
await t('bitmiş parça süper admince de silinemez (grup duruyor)', () => assertFails(deleteDoc(pref(as('sa'), 'dn', 1, 14))));
await t('bitmiş parçanın sahibi değiştirilemez', () => assertFails(updateDoc(pref(as('g3'), 'dn', 1, 14), { uid: 'g4' })));

// Son parça: completed
await seedG('last', { members: ['g1', 'g3'], member_count: 2, done_count: 29, holds: { g3: 1 } });
await seedP('last', 30, 'g3');
await t('son parça: completed olmadan (done) REDDEDİLİR', () => assertFails(finish('g3', 'last', 30, { count: 29, evType: 'done', groupOver: { status: 'active' } })));
await t('son parça: completed_at olmadan REDDEDİLİR', async () => {
  const db = as('g3'); const b = writeBatch(db);
  b.update(pref(db, 'last', 1, 30), { status: 'done', done_at: serverTimestamp() });
  b.update(gref(db, 'last'), { done_count: 30, 'holds.g3': 0, status: 'completed', last_event: ev('g3', 'completed', { unit: 30 }), updated_at: serverTimestamp() });
  await assertFails(b.commit());
});
await t('son parça: type done + completed REDDEDİLİR', () => assertFails(finish('g3', 'last', 30, { count: 29, evType: 'done' })));
await t('son parça: completed kabul', () => assertSucceeds(finish('g3', 'last', 30, { count: 29 })));
await seedG('over', { members: ['g1', 'g3'], member_count: 2, done_count: 30, status: 'completed', completed_at: past, holds: { g3: 1 } });
await seedP('over', 1, 'g3');
await t('total aşılamaz (done_count 31)', () => assertFails(finish('g3', 'over', 1, { count: 30, groupOver: { status: 'completed', completed_at: serverTimestamp() } })));
await seedG('cmpl2', { members: ['g1', 'g3'], member_count: 2, done_count: 29, status: 'completed', completed_at: past, holds: { g3: 1 } });
await seedP('cmpl2', 2, 'g3');
await t('tamamlanmış grupta bitirme REDDEDİLİR', () => assertFails(finish('g3', 'cmpl2', 2, { count: 29 })));

// --- Yeni tur ----------------------------------------------------------------
console.log('Yeni tur:');
const newRound = (uid, gid, over = {}, { holds = true } = {}) => updateDoc(gref(as(uid), gid), {
  round: 2, done_count: 0, status: 'active', completed_at: null, ...(holds ? { holds: {} } : {}),
  last_event: ev(uid, 'new_round', { round: 2 }), updated_at: serverTimestamp(), ...over,
});
const doneG = { status: 'completed', done_count: 30, completed_at: past, members: ['g1', 'g3'], member_count: 2, holds: { g3: 0 } };
await seedG('nr1', doneG);
await seedG('nr2', doneG);
await seedG('nr3', doneG);
await seedG('nr4', { members: ['g1', 'g3'], member_count: 2, done_count: 3 });
await t('sahip yeni tur başlatır (holds sıfırlanır)', () => assertSucceeds(newRound('g1', 'nr1')));
await t('genel yönetici yeni tur başlatır', () => assertSucceeds(newRound('mg', 'nr2')));
await t('sahip OLMAYAN yeni tur BAŞLATAMAZ', () => assertFails(newRound('g3', 'nr3')));
await t('aktif grupta yeni tur BAŞLATILAMAZ', () => assertFails(newRound('g1', 'nr4')));
await seedG('nr5', doneG);
await t('round +2 REDDEDİLİR', () => assertFails(newRound('g1', 'nr5', { round: 3, last_event: ev('g1', 'new_round', { round: 3 }) })));
await t('yeni turda done_count sıfırlanmalı', () => assertFails(newRound('g1', 'nr5', { done_count: 10 })));
await t('yeni turda status active olmalı', () => assertFails(newRound('g1', 'nr5', { status: 'completed' })));
await t('yeni turda type new_round olmalı', () => assertFails(newRound('g1', 'nr5', { last_event: ev('g1', 'create', { round: 2 }) })));
await t('yeni turda sahte last_event.uid REDDEDİLİR', () => assertFails(newRound('g1', 'nr5', { last_event: ev('g1', 'new_round', { round: 2, evUid: 'g3' }) })));
await t('yeni turda total değiştirilemez', () => assertFails(newRound('g1', 'nr5', { total: 604 })));
await t('yeni turda holds sıfırlanmazsa REDDEDİLİR', () => assertFails(newRound('g1', 'nr5', {}, { holds: false })));
await t('yeni turda holds dolu yazılamaz', () => assertFails(newRound('g1', 'nr5', { holds: { g1: 3 } })));
await t('yeni turda last_event.unit dev metin REDDEDİLİR', () => assertFails(newRound('g1', 'nr5', { last_event: ev('g1', 'new_round', { round: 2, unit: 'x'.repeat(200000) }) })));
await t('yeni turda round 2 parçası alınır', () => assertSucceeds(take('g3', 'nr1', 7, { round: 2 })));
await t('yeni turda eski round parçası ALINAMAZ', () => assertFails(take('g3', 'nr1', 8, { round: 1 })));

// --- Düzenle / değişmezler ---------------------------------------------------
console.log('Düzenle:');
await seedG('ed', { members: ['g1', 'g3'], member_count: 2 });
const edit = (uid, gid, d) => updateDoc(gref(as(uid), gid), { updated_at: serverTimestamp(), ...d });
await t('sahip ad/niyet/deadline/is_public düzenler', () => assertSucceeds(edit('g1', 'ed', { name: 'Yeni Ad', niyet: 'x', deadline: Timestamp.fromMillis(Date.now() + 1e8), is_public: true })));
await t('sahip OLMAYAN düzenleyemez', () => assertFails(edit('g3', 'ed', { name: 'Hack Ad' })));
await t('yönetici sahip değilse düzenleyemez', () => assertFails(edit('mg', 'ed', { name: 'Yönetici' })));
await t('düzenlemede kısa ad REDDEDİLİR', () => assertFails(edit('g1', 'ed', { name: 'ab' })));
await t('düzenlemede uzun niyet REDDEDİLİR', () => assertFails(edit('g1', 'ed', { niyet: 'a'.repeat(301) })));
await t('düzenlemede is_public string REDDEDİLİR', () => assertFails(edit('g1', 'ed', { is_public: 'evet' })));
await t('düzenlemede updated_at istemci zamanı REDDEDİLİR', () => assertFails(edit('g1', 'ed', { name: 'Başka Ad', updated_at: past })));
await t('owner_uid DEĞİŞTİRİLEMEZ', () => assertFails(edit('g1', 'ed', { owner_uid: 'g3' })));
await t('owner_name DEĞİŞTİRİLEMEZ', () => assertFails(edit('g1', 'ed', { owner_name: 'Sahte' })));
await t('unit DEĞİŞTİRİLEMEZ', () => assertFails(edit('g1', 'ed', { unit: 'sayfa' })));
await t('total DEĞİŞTİRİLEMEZ', () => assertFails(edit('g1', 'ed', { total: 604 })));
await t('unit+total birlikte DEĞİŞTİRİLEMEZ', () => assertFails(edit('g1', 'ed', { unit: 'sayfa', total: 604 })));
await t('agency_id DEĞİŞTİRİLEMEZ', () => assertFails(edit('g1', 'ed', { agency_id: B })));
await t('created_at DEĞİŞTİRİLEMEZ', () => assertFails(edit('g1', 'ed', { created_at: serverTimestamp() })));
await t('sahip done_count\'u elle DEĞİŞTİREMEZ', () => assertFails(edit('g1', 'ed', { done_count: 29 })));
await t('sahip status\'u elle DEĞİŞTİREMEZ', () => assertFails(edit('g1', 'ed', { status: 'completed' })));
await t('sahip round\'u elle DEĞİŞTİREMEZ', () => assertFails(edit('g1', 'ed', { round: 5 })));
await t('sahip members\'ı elle DEĞİŞTİREMEZ', () => assertFails(edit('g1', 'ed', { members: ['g1'], member_count: 1 })));
await t('sahip holds\'u elle DEĞİŞTİREMEZ', () => assertFails(edit('g1', 'ed', { 'holds.g3': 0 })));
await t('last_event\'i düzenleme ile DEĞİŞTİREMEZ', () => assertFails(edit('g1', 'ed', { last_event: ev('g1', 'completed', { unit: 1 }) })));
await t('üye olmayan kendini sahip yapamaz', () => assertFails(edit('g4', 'ed', { owner_uid: 'g4' })));
await t('üye olmayan hiçbir şeyi düzenleyemez', () => assertFails(edit('g4', 'ed', { name: 'Hack Ad' })));
await t('anonim güncelleyemez', () => assertFails(updateDoc(gref(env.unauthenticatedContext().firestore(), 'ed'), { name: 'Hack Ad' })));
await t('bilinmeyen olay tipi REDDEDİLİR', () => assertFails(updateDoc(gref(as('g1'), 'ed'), { last_event: ev('g1', 'hack'), updated_at: serverTimestamp() })));

// --- Silme -------------------------------------------------------------------
console.log('Silme:');
await seedG('d1'); await seedG('d2'); await seedG('d3', { members: ['g1', 'g3'], member_count: 2 }); await seedG('d4');
await seedG('dA'); await seedG('dB', { agency_id: B, owner_uid: 'g2', owner_name: NAMES.g2, members: ['g2'] });
await t('sahip siler', () => assertSucceeds(deleteDoc(gref(as('g1'), 'd1'))));
await t('genel yönetici siler', () => assertSucceeds(deleteDoc(gref(as('mg'), 'd2'))));
await t('süper admin siler', () => assertSucceeds(deleteDoc(gref(as('sa'), 'd4'))));
await t('sahip olmayan üye SİLEMEZ', () => assertFails(deleteDoc(gref(as('g3'), 'd3'))));
await t('acente admini BAŞKA acentenin grubunu SİLEMEZ', () => assertFails(deleteDoc(gref(as('a1'), 'dB'))));
await t('acente admini KENDİ acentesinin grubunu siler', () => assertSucceeds(deleteDoc(gref(as('a1'), 'dA'))));
await t('muhasebe SİLEMEZ', () => assertFails(deleteDoc(gref(as('mu'), 'd3'))));
await t('destek SİLEMEZ', () => assertFails(deleteDoc(gref(as('de'), 'd3'))));
await t('başka acente SİLEMEZ', () => assertFails(deleteDoc(gref(as('g2'), 'd3'))));

console.log(`\n${pass} geçti, ${fail} başarısız`);
await env.cleanup();
process.exit(fail ? 1 : 0);

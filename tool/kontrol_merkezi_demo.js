#!/usr/bin/env node
/**
 * Kontrol Merkezi için demo veri (REST, Admin SDK yok). Tekrar çalıştırılabilir.
 *   node tool/kontrol_merkezi_demo.js
 * Yazar: finans ayarı, 2 kupon, hoş geldin puanı (Ayşe), merkez↔acente mesajları.
 */
const PROJECT_ID = "umrerehberim-cc99e";
const API_KEY = "AIzaSyA8X1JQfgxHrhtnEgfqVVK8Lktw9ga7AHI";
const AGENCY_ID = "demo_agency_hekzapot";
const IDT = "https://identitytoolkit.googleapis.com/v1";
const FS_DB = `projects/${PROJECT_ID}/databases/(default)`;
const FS = `https://firestore.googleapis.com/v1/${FS_DB}`;

async function post(url, body, tok) {
  const r = await fetch(url, { method: "POST", headers: { "Content-Type": "application/json", ...(tok ? { Authorization: `Bearer ${tok}` } : {}) }, body: JSON.stringify(body) });
  const t = await r.text(); let j = null; try { j = JSON.parse(t); } catch (_) {}
  if (!r.ok) throw new Error(`${url.split("?")[0]} ${r.status}: ${t.slice(0, 300)}`);
  return j;
}
async function login(tc) {
  const j = await post(`${IDT}/accounts:signInWithPassword?key=${API_KEY}`, { email: `${tc}@umrerehberim.app`, password: tc, returnSecureToken: true });
  return { uid: j.localId, tok: j.idToken };
}
function val(v) {
  if (v === null || v === undefined) return { nullValue: null };
  if (v instanceof Date) return { timestampValue: v.toISOString() };
  if (typeof v === "boolean") return { booleanValue: v };
  if (typeof v === "number") return Number.isInteger(v) ? { integerValue: String(v) } : { doubleValue: v };
  if (typeof v === "string") return { stringValue: v };
  return { mapValue: { fields: fields(v) } };
}
function fields(o) { const f = {}; for (const [k, v] of Object.entries(o)) f[k] = val(v); return f; }
const SERVER_TS = Symbol("ts");
// Belge yaz: SERVER_TS değerli alanlar sunucu zamanı olur (kurallar request.time ister).
function write(path, data, { exists } = {}) {
  const plain = {}, ts = [];
  for (const [k, v] of Object.entries(data)) (v === SERVER_TS ? ts.push(k) : (plain[k] = v));
  const w = { update: { name: `${FS_DB}/documents/${path}`, fields: fields(plain) } };
  if (ts.length) w.updateTransforms = ts.map((k) => ({ fieldPath: k, setToServerValue: "REQUEST_TIME" }));
  if (exists === false) w.currentDocument = { exists: false };
  return w;
}
const commit = (tok, writes) => post(`${FS}/documents:commit`, { writes }, tok);
async function exists(tok, path) {
  const r = await fetch(`${FS}/documents/${path}`, { headers: { Authorization: `Bearer ${tok}` } });
  return r.ok;
}
const randId = () => Math.random().toString(36).slice(2, 12) + Date.now().toString(36);

(async () => {
  const sa = await login("10000000146");
  const ahmet = await login("20000000282");
  const ayse = await login("30000000496");
  const day = 86400000, now = Date.now();

  // Finans ayarı + kuponlar
  const coupons = [
    { code: "HOSGELDIN10", title: "Hoş geldin indirimi", description: "Tüm anlaşmalı dükkanlarda %10, en fazla 50 SAR", type: "percent", value: 10, min_spend: 50, max_discount: 50, max_uses: 0 },
    { code: "UMRE25", title: "Umre hediyelik 25 SAR", description: "200 SAR ve üzeri alışverişte 25 SAR indirim", type: "fixed", value: 25, min_spend: 200, max_discount: 0, max_uses: 100 },
  ];
  const w = [write("platform_settings/finance", { platform_share_percent: 50, updated_at: SERVER_TS })];
  for (const c of coupons) {
    if (await exists(sa.tok, `coupons/${c.code}`)) continue;
    w.push(write(`coupons/${c.code}`, {
      ...c, valid_from: new Date(now - day), valid_until: new Date(now + 60 * day), agency_id: "all", shop_id: "all",
      used_count: 0, active: true, created_by: sa.uid, created_at: SERVER_TS, last_tx_id: "", demo_seed: true,
    }));
  }
  await commit(sa.tok, w);
  console.log("finans ayarı + kuponlar tamam");

  // Ayşe'ye hoş geldin puanı (bir kez)
  const marker = `point_adjustments/demo_welcome_${ayse.uid}`;
  if (!(await exists(sa.tok, marker))) {
    await commit(sa.tok, [write(marker, {
      guest_uid: ayse.uid, guest_name: "Ayşe Demir", guest_agency_id: AGENCY_ID, points: 500, reason: "Hoş geldin hediyesi",
      created_by: sa.uid, created_at: SERVER_TS, reverted: false, reverts_id: "", batch_id: "", demo_seed: true,
    }, { exists: false }), write(`audit_logs/${randId()}`, {
      actor_uid: sa.uid, actor_name: "Süper Admin", actor_role: "super_admin", action: "points_grant", target_type: "user",
      target_id: ayse.uid, target_name: "Ayşe Demir", details: { points: 500, reason: "Hoş geldin hediyesi" }, created_at: SERVER_TS,
    })]);
    console.log("Ayşe'ye 500 puan");
  }

  // Merkez ↔ acente yazışması (bir kez)
  const thread = `agency_messages/demo_msg_1`;
  if (!(await exists(sa.tok, thread))) {
    await commit(sa.tok, [write(thread, {
      agency_id: AGENCY_ID, from_side: "hq", from_uid: sa.uid, from_name: "Umre Rehberim Merkez", title: "Hoş geldiniz",
      body: "Hekzapot Turizm, Umre Rehberim platformuna hoş geldiniz. Panel ve esnaf ağıyla ilgili sorularınızı buradan iletebilirsiniz.",
      created_at: SERVER_TS, read_by_hq: true, read_by_agency: true, broadcast_id: "",
    })]);
    await commit(ahmet.tok, [write(`agency_messages/demo_msg_2`, {
      agency_id: AGENCY_ID, from_side: "agency", from_uid: ahmet.uid, from_name: "Ahmet Yılmaz (Rehber)", title: "",
      body: "Teşekkürler. Kasım kafilemiz 40 kişi, Mekke'deki anlaşmalı dükkan sayısını artırabilir miyiz?",
      created_at: SERVER_TS, read_by_hq: false, read_by_agency: true, broadcast_id: "",
    })]);
    console.log("mesajlar tamam");
  }
  console.log("Bitti.");
})().catch((e) => { console.error("HATA:", e.message); process.exit(1); });

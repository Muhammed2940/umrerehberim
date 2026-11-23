#!/usr/bin/env node
/**
 * Esnaf paneli için demo dükkan + test esnaf hesabı (REST, Admin SDK yok).
 * Kök süper admin olarak yazar; kayıtlar demo_seed: true taşır.
 *
 *   node tool/esnaf_demo.js
 *
 * Esnaf girişi: giriş tipi "Esnaf", kod ve PIN aşağıda (tool/DEMO_HESAPLARI.md'ye de eklenir).
 */
const fs = require("fs");
const path = require("path");

const PROJECT_ID = "umrerehberim-cc99e";
const API_KEY = "AIzaSyA8X1JQfgxHrhtnEgfqVVK8Lktw9ga7AHI";
const RTDB_URL = "https://umrerehberim-cc99e-default-rtdb.firebaseio.com";
const ROOT_TC = "10000000146";
const AGENCY_ID = "demo_agency_hekzapot";

const SHOP_ID = "demo_shop_mekke";
const MERCHANT_CODE = "UMRE26";
const MERCHANT_PIN = "246810";
// lib/features/esnaf/esnaf_config.dart ile aynı
const merchantEmail = (code) => `esnaf_${code.toLowerCase()}@umrerehberim.app`;
const merchantPassword = (pin) => `esnaf-${pin}`;

const IDT = "https://identitytoolkit.googleapis.com/v1";
const FS_DB = `projects/${PROJECT_ID}/databases/(default)`;
const FS = `https://firestore.googleapis.com/v1/${FS_DB}`;

async function postJson(url, body, idToken) {
  const res = await fetch(url, {
    method: "POST",
    headers: { "Content-Type": "application/json", ...(idToken ? { Authorization: `Bearer ${idToken}` } : {}) },
    body: JSON.stringify(body),
  });
  const text = await res.text();
  let json = null;
  try { json = text ? JSON.parse(text) : null; } catch (_) {}
  return { ok: res.ok, status: res.status, json, text };
}
const errMsg = (r) => (r.json && r.json.error && (r.json.error.message || r.json.error)) || r.text;

async function ensureAccount(email, password) {
  const body = { email, password, returnSecureToken: true };
  let r = await postJson(`${IDT}/accounts:signUp?key=${API_KEY}`, body);
  if (r.ok) return { uid: r.json.localId, idToken: r.json.idToken, created: true };
  if (!String(errMsg(r)).startsWith("EMAIL_EXISTS")) throw new Error(`signUp ${email}: ${errMsg(r)}`);
  r = await postJson(`${IDT}/accounts:signInWithPassword?key=${API_KEY}`, body);
  if (!r.ok) throw new Error(`signIn ${email}: ${errMsg(r)}`);
  return { uid: r.json.localId, idToken: r.json.idToken, created: false };
}

function toValue(v) {
  if (v === null || v === undefined) return { nullValue: null };
  if (v instanceof Date) return { timestampValue: v.toISOString() };
  if (typeof v === "boolean") return { booleanValue: v };
  if (typeof v === "number") return Number.isInteger(v) ? { integerValue: String(v) } : { doubleValue: v };
  if (typeof v === "string") return { stringValue: v };
  if (typeof v === "object") return { mapValue: { fields: toFields(v) } };
  throw new Error(`Desteklenmeyen değer: ${v}`);
}
function toFields(o) {
  const out = {};
  for (const [k, v] of Object.entries(o)) if (v !== undefined) out[k] = toValue(v);
  return out;
}
const docName = (col, id) => `${FS_DB}/documents/${col}/${id}`;

async function main() {
  const root = await ensureAccount(`${ROOT_TC}@umrerehberim.app`, ROOT_TC);
  const merchant = await ensureAccount(merchantEmail(MERCHANT_CODE), merchantPassword(MERCHANT_PIN));
  const now = new Date();

  const shop = {
    agency_id: "all", // tüm acentelere ve paketli bireysellere açık
    name: "Demo Hediyelik (Test)",
    category: "Hediyelik",
    description: "Esnaf paneli denemesi için demo dükkan. Tesbih, seccade, hurma ve hediyelik eşya.",
    discount_percent: 10,
    discount_note: "Tüm ürünlerde",
    commission_percent: 5,
    city: "Mekke",
    address: "İbrahim Halil Cd., Mescid-i Haram yakını",
    latitude: 21.4196,
    longitude: 39.8257,
    phone: "",
    whatsapp: "",
    working_hours: "09:00 - 23:00",
    logo_base64: "",
    qr_data: "",
    is_active: true,
    sort_order: 0,
    owner_uid: merchant.uid,
    merchant_code: MERCHANT_CODE,
    demo_seed: true,
    created_at: now,
    updated_at: now,
  };
  const user = {
    user_name: "Demo Hediyelik",
    user_type: "esnaf",
    user_tel: "",
    user_tc: "",
    agency_id: AGENCY_ID,
    shop_id: SHOP_ID,
    demo_seed: true,
    created_at: now,
    updated_at: now,
  };

  const r = await postJson(`${FS}/documents:commit`, {
    writes: [
      { update: { name: docName("shops", SHOP_ID), fields: toFields(shop) } },
      { update: { name: docName("users", merchant.uid), fields: toFields(user) } },
    ],
  }, root.idToken);
  if (!r.ok) throw new Error(`Firestore: ${errMsg(r)}`);

  const rt = await fetch(`${RTDB_URL}/roles/${merchant.uid}.json?auth=${encodeURIComponent(root.idToken)}`, {
    method: "PUT",
    body: JSON.stringify({ role: "esnaf", agencyId: AGENCY_ID }),
  });
  if (!rt.ok) console.warn("RTDB roles yazılamadı:", rt.status, await rt.text());

  console.log(`Demo dükkan: ${shop.name} (${SHOP_ID}), indirim %${shop.discount_percent}, komisyon %${shop.commission_percent}`);
  console.log(`Esnaf hesabı ${merchant.created ? "oluşturuldu" : "zaten vardı"}: kod ${MERCHANT_CODE}, PIN ${MERCHANT_PIN}`);

  const md = path.join(__dirname, "DEMO_HESAPLARI.md");
  const block = `\n## Esnaf (demo)\n\n| Dükkan | Giriş tipi | Esnaf kodu | PIN |\n|---|---|---|---|\n| ${shop.name} | Esnaf | ${MERCHANT_CODE} | ${MERCHANT_PIN} |\n`;
  const cur = fs.existsSync(md) ? fs.readFileSync(md, "utf8") : "";
  if (!cur.includes("## Esnaf (demo)")) fs.appendFileSync(md, block);
}

main().catch((e) => { console.error("HATA:", e.message); process.exit(1); });

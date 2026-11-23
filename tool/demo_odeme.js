#!/usr/bin/env node
/**
 * Demo ödeme anahtarı: platform_settings/payments.demo_payments (REST, Admin SDK yok).
 * Açıkken bireysel kullanıcı ödeme yapmadan kendi paket hakkını (entitlements/{uid}) yazar.
 * PayTR bağlanınca KAPATILMALI: o zaman hakkı yalnız sunucu yazar.
 *
 *   node tool/demo_odeme.js ac      → açar
 *   node tool/demo_odeme.js kapat   → kapatır
 *   node tool/demo_odeme.js         → durumu ve herkese açık (agency_id 'all') dükkan sayısını yazar
 */
const PROJECT_ID = "umrerehberim-cc99e";
const API_KEY = "AIzaSyA8X1JQfgxHrhtnEgfqVVK8Lktw9ga7AHI";
const ROOT_TC = "10000000146";
const IDT = "https://identitytoolkit.googleapis.com/v1";
const FS_DB = `projects/${PROJECT_ID}/databases/(default)`;
const FS = `https://firestore.googleapis.com/v1/${FS_DB}`;

async function req(method, url, body, idToken) {
  const res = await fetch(url, {
    method,
    headers: { "Content-Type": "application/json", ...(idToken ? { Authorization: `Bearer ${idToken}` } : {}) },
    body: body ? JSON.stringify(body) : undefined,
  });
  const text = await res.text();
  let json = null;
  try { json = text ? JSON.parse(text) : null; } catch (_) {}
  if (!res.ok) throw new Error(`${method} ${url.split("?")[0]} → ${res.status} ${(json && json.error && json.error.message) || text}`);
  return json;
}

async function main() {
  const arg = (process.argv[2] || "").toLowerCase();
  const login = await req("POST", `${IDT}/accounts:signInWithPassword?key=${API_KEY}`,
    { email: `${ROOT_TC}@umrerehberim.app`, password: ROOT_TC, returnSecureToken: true });
  const tok = login.idToken;
  const url = `${FS}/documents/platform_settings/payments`;

  if (arg === "ac" || arg === "kapat") {
    const on = arg === "ac";
    await req("PATCH", `${url}?updateMask.fieldPaths=demo_payments&updateMask.fieldPaths=updated_at`, {
      fields: { demo_payments: { booleanValue: on }, updated_at: { timestampValue: new Date().toISOString() } },
    }, tok);
    console.log(`Demo ödeme ${on ? "AÇILDI" : "KAPATILDI"}.`);
  }

  let state = "(belge yok → kapalı)";
  try {
    const d = await req("GET", url, null, tok);
    state = d.fields && d.fields.demo_payments ? String(d.fields.demo_payments.booleanValue) : "false";
  } catch (_) {}
  console.log(`demo_payments = ${state}`);

  const q = await req("POST", `${FS}/documents:runQuery`, {
    structuredQuery: {
      from: [{ collectionId: "shops" }],
      where: { fieldFilter: { field: { fieldPath: "agency_id" }, op: "EQUAL", value: { stringValue: "all" } } },
    },
  }, tok);
  const shops = (q || []).filter((r) => r.document);
  console.log(`Herkese açık (agency_id 'all') dükkan: ${shops.length}`);
  for (const r of shops) {
    const f = r.document.fields || {};
    console.log(`  - ${(f.name && f.name.stringValue) || r.document.name.split("/").pop()} (aktif: ${f.is_active ? f.is_active.booleanValue : "?"})`);
  }
}

main().catch((e) => { console.error(e.message); process.exit(1); });

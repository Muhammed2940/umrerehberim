/**
 * Kimlik betikleri (seed.js, id_gecis.js) için ortak yardımcılar — Admin SDK / servis hesabı YOK.
 * Yalnız Node 18+ `fetch` ile Firebase REST API'leri kullanılır.
 *
 * Firebase kimlik modu (sunucusuz ara mod): e-posta `id<loginId>@umrerehberim.app`, şifre kullanıcının
 * şifresi. Kök süper admin e-postası DEĞİŞMEZ (`<tc>@umrerehberim.app`), sabit ID'si ROOT_LOGIN_ID.
 * lib/core/utils/auth_utils.dart ile AYNI sabitler/kurallar (rootLoginId, e-posta biçimi, şifre alfabesi).
 * TODO PHP kurulunca bu ara mod ve bu dosya kalkar (hesapları sunucu açar).
 */
"use strict";

const crypto = require("crypto");

const PROJECT_ID = "umrerehberim-cc99e";
const API_KEY = "AIzaSyA8X1JQfgxHrhtnEgfqVVK8Lktw9ga7AHI";
const EMAIL_DOMAIN = "umrerehberim.app";
const ROOT_TC = "10000000146";
/** auth_utils.dart `rootLoginId` ile aynı olmalı. */
const ROOT_LOGIN_ID = "1000146";

const IDT = "https://identitytoolkit.googleapis.com/v1";
const FS_DB = `projects/${PROJECT_ID}/databases/(default)`;
const FS = `https://firestore.googleapis.com/v1/${FS_DB}`;

const tcToEmail = (tc) => `${tc}@${EMAIL_DOMAIN}`;
const loginIdToEmail = (id) => `id${String(id).toLowerCase()}@${EMAIL_DOMAIN}`;

// ---------------------------------------------------------------------------
// Rastgele ID / şifre
// ---------------------------------------------------------------------------
/** 7 haneli, ilk hane 1-9, kök ID hariç. */
function generateLoginId() {
  for (;;) {
    let id = String(crypto.randomInt(1, 10));
    for (let i = 0; i < 6; i++) id += String(crypto.randomInt(0, 10));
    if (id !== ROOT_LOGIN_ID) return id;
  }
}

const PW_LETTERS = "ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnpqrstuvwxyz"; // I, l, O, o yok
const PW_DIGITS = "23456789"; // 0, 1 yok

/** Harf + rakam, karışan karakter yok, en az bir harf ve bir rakam. Misafir 8, personel 10. */
function generatePassword(length) {
  if (length < 8) throw new Error("Şifre en az 8 karakter olmalı");
  const all = PW_LETTERS + PW_DIGITS;
  const chars = [PW_LETTERS[crypto.randomInt(PW_LETTERS.length)], PW_DIGITS[crypto.randomInt(PW_DIGITS.length)]];
  while (chars.length < length) chars.push(all[crypto.randomInt(all.length)]);
  for (let i = chars.length - 1; i > 0; i--) {
    const j = crypto.randomInt(i + 1);
    [chars[i], chars[j]] = [chars[j], chars[i]];
  }
  return chars.join("");
}

/** Rol → şifre uzunluğu (misafir 8, diğerleri 10). */
const passwordLengthFor = (userType) => (userType === "misafir" ? 8 : 10);

// ---------------------------------------------------------------------------
// HTTP / Identity Toolkit
// ---------------------------------------------------------------------------
async function postJson(url, body, idToken) {
  const res = await fetch(url, {
    method: "POST",
    headers: { "Content-Type": "application/json", ...(idToken ? { Authorization: `Bearer ${idToken}` } : {}) },
    body: JSON.stringify(body),
  });
  const text = await res.text();
  let json = null;
  try { json = text ? JSON.parse(text) : null; } catch (_) { /* düz metin */ }
  return { ok: res.ok, status: res.status, json, text };
}
const errMsg = (r) => (r.json && r.json.error && (r.json.error.message || r.json.error)) || r.text || `HTTP ${r.status}`;

/** {ok, uid, idToken, error}; hata durumunda ok=false, error=Firebase hata kodu (ör. INVALID_LOGIN_CREDENTIALS). */
async function signInWithPassword(email, password) {
  const r = await postJson(`${IDT}/accounts:signInWithPassword?key=${API_KEY}`, { email, password, returnSecureToken: true });
  if (!r.ok) return { ok: false, error: String(errMsg(r)) };
  return { ok: true, uid: r.json.localId, idToken: r.json.idToken };
}

async function signUp(email, password) {
  const r = await postJson(`${IDT}/accounts:signUp?key=${API_KEY}`, { email, password, returnSecureToken: true });
  if (!r.ok) return { ok: false, error: String(errMsg(r)) };
  return { ok: true, uid: r.json.localId, idToken: r.json.idToken };
}

/** Oturumdaki hesabın e-posta ve/veya şifresini değiştirir (uid aynı kalır). */
async function accountsUpdate(idToken, { email, password }) {
  const body = { idToken, returnSecureToken: true };
  if (email) body.email = email;
  if (password) body.password = password;
  const r = await postJson(`${IDT}/accounts:update?key=${API_KEY}`, body);
  if (!r.ok) return { ok: false, error: String(errMsg(r)) };
  return { ok: true, idToken: r.json.idToken };
}

// ---------------------------------------------------------------------------
// Firestore REST
// ---------------------------------------------------------------------------
function toValue(v) {
  if (v === null || v === undefined) return { nullValue: null };
  if (v instanceof Date) return { timestampValue: v.toISOString() };
  if (typeof v === "boolean") return { booleanValue: v };
  if (typeof v === "number") return Number.isInteger(v) ? { integerValue: String(v) } : { doubleValue: v };
  if (typeof v === "string") return { stringValue: v };
  if (Array.isArray(v)) return { arrayValue: { values: v.map(toValue) } };
  if (typeof v === "object") return { mapValue: { fields: toFields(v) } };
  throw new Error(`Desteklenmeyen değer: ${v}`);
}
function toFields(obj) {
  const out = {};
  for (const [k, v] of Object.entries(obj)) if (v !== undefined) out[k] = toValue(v);
  return out;
}
function fromValue(v) {
  if (!v || typeof v !== "object") return null;
  if ("stringValue" in v) return v.stringValue;
  if ("booleanValue" in v) return v.booleanValue;
  if ("integerValue" in v) return Number(v.integerValue);
  if ("doubleValue" in v) return v.doubleValue;
  if ("timestampValue" in v) return v.timestampValue;
  if ("nullValue" in v) return null;
  if ("arrayValue" in v) return (v.arrayValue.values || []).map(fromValue);
  if ("mapValue" in v) return fromFields(v.mapValue.fields || {});
  return null;
}
function fromFields(fields) {
  const out = {};
  for (const [k, v] of Object.entries(fields || {})) out[k] = fromValue(v);
  return out;
}

const docName = (col, id) => `${FS_DB}/documents/${col}/${id}`;
const idOfName = (name) => String(name).split("/").pop();

async function fsRequest(method, url, idToken) {
  const res = await fetch(url, { method, headers: { Authorization: `Bearer ${idToken}` } });
  const text = await res.text();
  let json = null;
  try { json = text ? JSON.parse(text) : null; } catch (_) { /* düz metin */ }
  return { ok: res.ok, status: res.status, json, text };
}

/** Belge yoksa null, varsa {id, data}. Başka hata (ör. izin) fırlatır. */
async function getDocument(col, id, idToken) {
  const r = await fsRequest("GET", `${FS}/documents/${col}/${id}`, idToken);
  if (r.status === 404) return null;
  if (!r.ok) throw new Error(`Firestore GET ${col}/${id}: ${errMsg(r)}`);
  return { id, data: fromFields(r.json.fields) };
}

/** Koleksiyondaki tüm belgeler (sayfalı). */
async function listDocuments(col, idToken) {
  const out = [];
  let pageToken = "";
  do {
    const r = await fsRequest("GET", `${FS}/documents/${col}?pageSize=300${pageToken ? `&pageToken=${encodeURIComponent(pageToken)}` : ""}`, idToken);
    if (!r.ok) throw new Error(`Firestore liste ${col}: ${errMsg(r)}`);
    for (const d of (r.json && r.json.documents) || []) out.push({ id: idOfName(d.name), data: fromFields(d.fields) });
    pageToken = (r.json && r.json.nextPageToken) || "";
  } while (pageToken);
  return out;
}

/** structuredQuery çalıştırır; [{id, data}] döner. */
async function runQuery(structuredQuery, idToken) {
  const r = await postJson(`${FS}/documents:runQuery`, { structuredQuery }, idToken);
  if (!r.ok) throw new Error(`Firestore runQuery: ${errMsg(r)}`);
  return (r.json || []).filter((x) => x.document).map((x) => ({ id: idOfName(x.document.name), data: fromFields(x.document.fields) }));
}

async function commit(writes, idToken) {
  for (let i = 0; i < writes.length; i += 400) {
    const r = await postJson(`${FS}/documents:commit`, { writes: writes.slice(i, i + 400) }, idToken);
    if (!r.ok) throw new Error(`Firestore commit: ${errMsg(r)}`);
  }
}

/** login_ids/{id} = {uid} (yalnız yoksa; var olan kayıt üzerine yazılmaz). */
const loginIdCreateWrite = (loginId, uid) => ({
  update: { name: docName("login_ids", loginId), fields: toFields({ uid }) },
  currentDocument: { exists: false },
});

// ---------------------------------------------------------------------------
// Gizli giriş (şifre) — terminalde yankısız
// ---------------------------------------------------------------------------
function askHidden(question) {
  return new Promise((resolve) => {
    const readline = require("readline");
    const rl = readline.createInterface({ input: process.stdin, output: process.stdout, terminal: true });
    const origWrite = rl._writeToOutput;
    rl._writeToOutput = function (s) {
      if (rl.stdoutMuted) { if (s.includes("\n") || s.includes("\r")) process.stdout.write("\n"); }
      else origWrite.call(rl, s);
    };
    rl.question(question, (answer) => { rl.close(); resolve(answer); });
    rl.stdoutMuted = true;
  });
}

/** Kök süper admin şifresi: UMRE_KOK_SIFRE ortam değişkeni, yoksa (terminalse) sorulur, o da boşsa TC. */
async function rootPassword() {
  if (process.env.UMRE_KOK_SIFRE) return process.env.UMRE_KOK_SIFRE;
  if (process.stdin.isTTY) {
    const a = await askHidden("Kök süper admin şifresi (boş bırakılırsa ilk kurulumdaki TC denenir): ");
    if (a) return a;
  }
  return ROOT_TC;
}

module.exports = {
  PROJECT_ID, API_KEY, EMAIL_DOMAIN, ROOT_TC, ROOT_LOGIN_ID, FS_DB, FS, IDT,
  tcToEmail, loginIdToEmail, generateLoginId, generatePassword, passwordLengthFor,
  postJson, errMsg, signInWithPassword, signUp, accountsUpdate,
  toValue, toFields, fromValue, fromFields, docName, idOfName,
  getDocument, listDocuments, runQuery, commit, loginIdCreateWrite, rootPassword,
};

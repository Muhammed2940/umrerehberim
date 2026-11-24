/**
 * Eski TC'li hesapları Kullanıcı ID + şifreli YENİ hesaplara çevirir (Firebase kimlik ara modu).
 *
 * id_gecis.js e-postayı değiştirerek uid'yi korur; ama projede "E-posta numaralandırma koruması"
 * açıkken Firebase doğrulanmamış e-posta değişikliğine izin vermez. Bu betik o korumaya takılmaz:
 *   1) TC e-posta + TC şifreyle eski hesaba girer, users/{eskiUid} ve RTDB roles/{eskiUid}'yi okur,
 *   2) `id<ID>@umrerehberim.app` ile YENİ Auth hesabı açar (uid değişir),
 *   3) login_ids/{ID} = {uid}, users/{yeniUid} = eski belge + login_id, roles/{yeniUid} yazar,
 *   4) users/{eskiUid}, roles/{eskiUid} ve eski Auth hesabını siler.
 * Kök süper admin, esnaf, Google (bireysel) ve zaten ID'li hesaplar atlanır.
 *
 * Sabit ID/şifre: --sabit "Ad Soyad=ID:şifre" (birden çok verilebilir). Diğerlerine rastgele üretilir.
 * Kullanım:  node hesap_yenile.js                    (kuru çalıştırma)
 *            node hesap_yenile.js --uygula --sabit "Muhammed Yağız=SP294054:..."
 * Çıktı: tool/hesap_yenile_sonuc.local.md (git'e girmez). Ardından `node seed.js` (trip_managers vb. yeni uid'lere).
 * TODO PHP kurulunca bu betik kalkar.
 */
"use strict";

const fs = require("fs");
const path = require("path");
const K = require("./_kimlik_ortak");

const RTDB = "https://umrerehberim-cc99e-default-rtdb.firebaseio.com";
const ID_RE = /^(?:[1-9][0-9]{6}|[A-Z]{2}[0-9]{6})$/;
const OUT = path.join(__dirname, "hesap_yenile_sonuc.local.md");
const emailOf = (id) => `id${id.toLowerCase()}@${K.EMAIL_DOMAIN}`;

const args = process.argv.slice(2);
const APPLY = args.includes("--uygula");
const LIMIT = args.includes("--limit") ? Number(args[args.indexOf("--limit") + 1]) : Infinity;
const fixed = {};
for (let i = 0; i < args.length; i++) {
  if (args[i] !== "--sabit") continue;
  const m = /^(.+)=([A-Za-z0-9]+):(.+)$/.exec(args[i + 1] || "");
  if (!m) throw new Error(`--sabit biçimi "Ad Soyad=ID:şifre" olmalı: ${args[i + 1]}`);
  const id = m[2].toUpperCase();
  if (!ID_RE.test(id)) throw new Error(`Geçersiz ID: ${id}`);
  if (m[3].length < 8) throw new Error(`Şifre en az 8 karakter olmalı (${m[1]})`);
  fixed[m[1].trim().toLocaleLowerCase("tr")] = { id, password: m[3] };
}

async function rtdb(method, p, idToken, body) {
  const res = await fetch(`${RTDB}/${p}.json?auth=${idToken}`, {
    method, headers: { "Content-Type": "application/json" }, body: body === undefined ? undefined : JSON.stringify(body),
  });
  const t = await res.text();
  if (!res.ok) throw new Error(`RTDB ${method} ${p}: ${t}`);
  return t ? JSON.parse(t) : null;
}

async function deleteAccount(idToken) {
  const r = await K.postJson(`${K.IDT}/accounts:delete?key=${K.API_KEY}`, { idToken });
  if (!r.ok) throw new Error(`accounts:delete: ${K.errMsg(r)}`);
}

async function uniqueId(rootToken, taken) {
  for (let i = 0; i < 50; i++) {
    const id = K.generateLoginId();
    if (id === K.ROOT_LOGIN_ID || taken.has(id)) continue;
    if (!(await K.getDocument("login_ids", id, rootToken))) return id;
  }
  throw new Error("Boş Kullanıcı ID bulunamadı");
}

function writeDocWrite(col, id, data, mustNotExist) {
  const w = { update: { name: K.docName(col, id), fields: K.toFields(data) } };
  if (mustNotExist) w.currentDocument = { exists: false };
  return w;
}

async function main() {
  console.log(`Proje: ${K.PROJECT_ID}  Kip: ${APPLY ? "UYGULA (gerçek değişiklik)" : "KURU ÇALIŞTIRMA"}`);
  const root = await K.signInWithPassword(K.tcToEmail(K.ROOT_TC), await K.rootPassword());
  if (!root.ok) throw new Error(`Kök girişi başarısız: ${root.error}`);
  const rootToken = root.idToken;

  const users = await K.listDocuments("users", rootToken);
  const targets = users.filter((u) => {
    const d = u.data;
    return u.id !== root.uid && d.user_type !== "esnaf" && d.auth_provider !== "google" && d.account_kind !== "bireysel"
      && !d.login_id && /^[1-9][0-9]{10}$/.test(String(d.user_tc || ""));
  });
  console.log(`users: ${users.length} belge → ${targets.length} yenilenecek.\n`);

  const taken = new Set(Object.values(fixed).map((f) => f.id));
  const results = [];
  for (const u of targets) {
    if (results.length >= LIMIT) break;
    const name = String(u.data.user_name || "");
    const type = String(u.data.user_type || "");
    const tc = String(u.data.user_tc);
    const f = fixed[name.trim().toLocaleLowerCase("tr")];
    const old = await K.signInWithPassword(K.tcToEmail(tc), tc);
    if (!old.ok || old.uid !== u.id) {
      console.log(`  ATLA  ${name} (${type}): TC girişi ${old.ok ? "farklı uid" : old.error}`);
      continue;
    }
    if (!APPLY) {
      console.log(`  ${name} (${type}): yenilenecek${f ? ` → sabit ID ${f.id}` : " → rastgele ID"}`);
      continue;
    }
    try {
      const id = f ? f.id : await uniqueId(rootToken, taken);
      taken.add(id);
      if (await K.getDocument("login_ids", id, rootToken)) throw new Error(`ID ${id} zaten kullanımda`);
      const password = f ? f.password : K.generatePassword(K.passwordLengthFor(type));
      const role = await rtdb("GET", `roles/${u.id}`, rootToken);

      const neu = await K.signUp(emailOf(id), password);
      if (!neu.ok) throw new Error(`signUp: ${neu.error}`);
      try {
        await K.commit([K.loginIdCreateWrite(id, neu.uid)], rootToken);
        await K.commit([writeDocWrite("users", neu.uid, { ...u.data, login_id: id }, true)], rootToken);
      } catch (e) {
        await deleteAccount(neu.idToken).catch(() => {});
        throw e;
      }
      if (role) await rtdb("PUT", `roles/${neu.uid}`, rootToken, role);
      // Eskiyi temizle
      await K.commit([{ delete: K.docName("users", u.id) }], rootToken);
      if (role) await rtdb("DELETE", `roles/${u.id}`, rootToken).catch((e) => console.log(`    uyarı: ${e.message}`));
      await deleteAccount(old.idToken);

      results.push({ name, type, id, password, uid: neu.uid });
      fs.appendFileSync(OUT, `| ${name} | ${type} | \`${id}\` | \`${password}\` | ${neu.uid} |\n`);
      console.log(`  TAMAM ${name} (${type}): ID=${id}  uid ${u.id} → ${neu.uid}`);
    } catch (e) {
      console.log(`  HATA  ${name} (${type}): ${e.message}`);
    }
  }
  if (APPLY) console.log(`\n${results.length} hesap yenilendi. ID + şifreler: ${OUT}`);
}

if (APPLY && !fs.existsSync(OUT)) {
  fs.writeFileSync(OUT, "# Yenilenen hesaplar (GİZLİ, git'e girmez)\n\n| Ad | Tip | Kullanıcı ID | Şifre | uid |\n|---|---|---|---|---|\n");
}
main().catch((e) => { console.error(e.message); process.exit(1); });

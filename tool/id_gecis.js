#!/usr/bin/env node
/**
 * Umre Rehberim – mevcut hesapları "Kullanıcı ID + şifre" girişine taşır (Firebase kimlik modu).
 * Admin SDK / servis hesabı YOK: yalnız Node 18+ `fetch` ile Firebase REST API'leri.
 *
 * Ne yapar (her aday kullanıcı için):
 *   1) TC e-posta + TC şifresiyle accounts:signInWithPassword  → idToken (başarısızsa atlanır, hiçbir şey yazılmaz)
 *   2) tekil 7 haneli Kullanıcı ID seçer, login_ids/{ID} = {uid} oluşturur (kök süper admin yetkisiyle)
 *   3) AYNI idToken ile accounts:update: e-posta = id<ID>@umrerehberim.app, şifre = yeni üretilen
 *      → Auth uid'si AYNI kalır (users/{uid}, RTDB roles ve tüm veriler yerinde durur)
 *   4) users/{uid}.login_id yazar (güvenlik kuralı: yalnız süper admin ve yalnız boşken ekleyebilir)
 *
 * Adaylar: users belgesinde login_id'si OLMAYAN, user_tc'si 11 haneli, esnaf / Google (bireysel) /
 * kök süper admin OLMAYAN herkes. (Esnaf `esnaf_<kod>@`, bireysel Google hesabıdır; dokunulmaz.)
 *
 * Kullanım (tool klasöründe):
 *   node id_gecis.js                  kuru çalıştırma (varsayılan): kimin taşınacağını ve TC girişinin
 *                                     çalışıp çalışmadığını gösterir; hiçbir şey DEĞİŞTİRMEZ
 *   node id_gecis.js --dry            aynısı
 *   node id_gecis.js --uygula         gerçekten taşır
 *   node id_gecis.js --uygula --limit 1   yalnız ilk 1 adayı taşır (önce deneme için)
 *
 * Kök süper admin şifresi: UMRE_KOK_SIFRE ortam değişkeni, yoksa terminalde sorulur
 * (boş bırakılırsa ilk kurulumdaki TC denenir). Kökün e-postası/şifresi DEĞİŞTİRİLMEZ.
 *
 * ÇIKTI: --uygula ile üretilen ID + şifreler `tool/id_gecis_sonuc.local.md` dosyasına (ad, rol, ID, şifre, uid)
 * HER kullanıcıdan hemen sonra eklenir (betik yarıda kesilse bile bilgiler kaybolmaz). Dosya .gitignore'dadır;
 * bilgileri dağıtınca silin. Şifreler bir daha görüntülenemez.
 *
 * DİKKAT: Taşınan kullanıcıların açık oturumları sona erer (Firebase şifre/e-posta değişince yenileme
 * belirteçlerini iptal eder); yeni ID + şifreyle yeniden girerler. Betik tekrar çalıştırılabilir
 * (taşınanlar login_id'si olduğundan atlanır).
 * TODO PHP kurulunca: bu betik yerine sunucunun /v1/admin/migrate ucu kullanılır.
 */
"use strict";

const fs = require("fs");
const path = require("path");
const K = require("./_kimlik_ortak");

const argv = process.argv.slice(2);
const has = (f) => argv.includes(f);
const APPLY = has("--uygula");
if (has("--dry") && APPLY) {
  console.error("HATA: --dry ile --uygula birlikte verilemez.");
  process.exit(2);
}
const limitIdx = argv.indexOf("--limit");
const LIMIT = limitIdx >= 0 ? parseInt(argv[limitIdx + 1], 10) : Infinity;
if (limitIdx >= 0 && !(LIMIT > 0)) {
  console.error("HATA: --limit pozitif bir sayı almalı (ör. --limit 1).");
  process.exit(2);
}
const RESULT_FILE = path.join(__dirname, "id_gecis_sonuc.local.md");

const ROLE_ORDER = ["super_admin", "yonetici", "acente_admin", "destek", "muhasebe", "misafir"];
const ROLE_LABEL = {
  super_admin: "Süper Admin", yonetici: "Yönetici", acente_admin: "Acente Admini",
  destek: "Destek", muhasebe: "Muhasebe", misafir: "Misafir",
};
const sleep = (ms) => new Promise((r) => setTimeout(r, ms));
const isLoginFailure = (e) => /INVALID_LOGIN_CREDENTIALS|INVALID_PASSWORD|EMAIL_NOT_FOUND|USER_DISABLED/.test(e);

/** Kök idToken'ı (1 saat geçerli) gerektiğinde yeniler. */
function rootSession(email, password) {
  let token = null;
  let at = 0;
  let uid = null;
  return {
    get uid() { return uid; },
    async token() {
      if (!token || Date.now() - at > 40 * 60 * 1000) {
        const r = await K.signInWithPassword(email, password);
        if (!r.ok) throw new Error(`Kök girişi başarısız (${r.error}). Şifre için UMRE_KOK_SIFRE kullanın.`);
        token = r.idToken;
        uid = r.uid;
        at = Date.now();
      }
      return token;
    },
  };
}

/** Taşınacak adaylar ve atlananlar. */
function classify(users, rootUid) {
  const candidates = [];
  const skipped = [];
  for (const { id, data } of users) {
    const name = data.user_name || id;
    const type = data.user_type || "";
    const tc = String(data.user_tc || "").trim();
    const skip = (why) => skipped.push({ id, name, type, why });
    if (id === rootUid || tc === K.ROOT_TC) { skip("kök süper admin (dokunulmaz)"); continue; }
    if (type === "esnaf" || data.shop_id) { skip("esnaf (kod+PIN girişi)"); continue; }
    if (data.account_kind === "bireysel" || data.auth_provider === "google") { skip("bireysel (Google girişi)"); continue; }
    if (data.login_id) { skip(`zaten ID'li (${data.login_id})`); continue; }
    if (!ROLE_ORDER.includes(type)) { skip(`bilinmeyen rol (${type || "-"})`); continue; }
    if (!/^[0-9]{11}$/.test(tc)) { skip("user_tc 11 haneli değil"); continue; }
    candidates.push({ id, name, type, tc, agency: data.agency_id || "" });
  }
  candidates.sort((a, b) => ROLE_ORDER.indexOf(a.type) - ROLE_ORDER.indexOf(b.type) || a.name.localeCompare(b.name, "tr"));
  return { candidates, skipped };
}

function appendResult(row) {
  if (!fs.existsSync(RESULT_FILE)) {
    fs.writeFileSync(
      RESULT_FILE,
      "# ID geçişi sonucu (GİZLİ — git'e girmez, dağıtınca silin)\n\n" +
        "Şifreler bir daha görüntülenemez. Her satır, kullanıcı taşınır taşınmaz eklenir.\n\n" +
        "| Ad | Rol | Kullanıcı ID | Şifre | uid | Not |\n|---|---|---|---|---|---|\n",
      "utf8",
    );
  }
  const cell = (s) => String(s ?? "").replace(/\|/g, "\\|");
  fs.appendFileSync(
    RESULT_FILE,
    `| ${[row.name, ROLE_LABEL[row.type] || row.type, row.loginId, row.password, row.id, row.note || ""].map(cell).join(" | ")} |\n`,
    "utf8",
  );
}

/** Tek kullanıcıyı taşır; {ok, loginId, password, note} döner (hata fırlatmaz). */
async function migrateOne(c, root, usedIds) {
  // 1) TC girişi (başarısızsa hiçbir şey yazılmaz)
  const si = await K.signInWithPassword(K.tcToEmail(c.tc), c.tc);
  if (!si.ok) {
    return { ok: false, note: isLoginFailure(si.error) ? "TC girişi çalışmıyor (başka e-posta/şifre?) – atlandı" : `TC girişi hatası: ${si.error}` };
  }
  if (si.uid !== c.id) return { ok: false, note: `uid uyuşmuyor (Auth ${si.uid} ≠ belge ${c.id}) – atlandı` };

  const password = K.generatePassword(K.passwordLengthFor(c.type));
  let userToken = si.idToken;

  for (let attempt = 0; attempt < 20; attempt++) {
    const loginId = K.generateLoginId();
    if (usedIds.has(loginId)) continue;
    const rootToken = await root.token();
    if (await K.getDocument("login_ids", loginId, rootToken)) { usedIds.add(loginId); continue; }

    // 2) login_ids kaydı
    try {
      await K.commit([K.loginIdCreateWrite(loginId, c.id)], rootToken);
    } catch (e) {
      return { ok: false, note: `login_ids yazılamadı: ${e.message}` };
    }
    usedIds.add(loginId);

    // 3) e-posta + şifre (uid aynı kalır)
    const up = await K.accountsUpdate(userToken, { email: K.loginIdToEmail(loginId), password });
    if (!up.ok) {
      await K.commit([{ delete: K.docName("login_ids", loginId) }], rootToken).catch(() => {});
      if (/EMAIL_EXISTS/.test(up.error)) continue; // bu ID'nin e-postası Auth'ta var; başka ID dene
      let hint = "";
      if (/OPERATION_NOT_ALLOWED|ADMIN_ONLY/.test(up.error)) {
        hint = " (Authentication ayarlarında e-posta değişikliği için doğrulama zorunlu olabilir; 'E-posta numaralandırma koruması'nı kapatın)";
      }
      return { ok: false, note: `accounts:update başarısız: ${up.error}${hint}` };
    }

    // Hesap artık yeni ID/şifreyle; bilgileri HEMEN diske yaz.
    const row = { id: c.id, name: c.name, type: c.type, loginId, password };

    // 4) users/{uid}.login_id
    try {
      await K.commit([{
        update: { name: K.docName("users", c.id), fields: K.toFields({ login_id: loginId }) },
        updateMask: { fieldPaths: ["login_id"] },
        currentDocument: { exists: true },
      }], await root.token());
      appendResult(row);
      return { ok: true, loginId, password };
    } catch (e) {
      row.note = `users.login_id YAZILAMADI (elle yazın): ${e.message}`;
      appendResult(row);
      return { ok: true, loginId, password, note: row.note };
    }
  }
  return { ok: false, note: "benzersiz Kullanıcı ID bulunamadı (20 deneme)" };
}

async function main() {
  console.log(`Proje: ${K.PROJECT_ID}  Kip: ${APPLY ? "UYGULA (gerçek değişiklik)" : "KURU ÇALIŞTIRMA (hiçbir şey değişmez)"}`);
  const root = rootSession(K.tcToEmail(K.ROOT_TC), await K.rootPassword());
  const rootToken = await root.token();
  console.log(`Kök süper admin girişi tamam (uid=${root.uid}).`);

  const users = await K.listDocuments("users", rootToken);
  const { candidates, skipped } = classify(users, root.uid);
  console.log(`users: ${users.length} belge → ${candidates.length} taşınacak, ${skipped.length} atlanan.\n`);

  if (skipped.length) {
    console.log("Atlananlar:");
    for (const s of skipped) console.log(`  - ${s.name} (${ROLE_LABEL[s.type] || s.type || "-"}): ${s.why}`);
    console.log("");
  }

  const todo = candidates.slice(0, LIMIT);
  if (!todo.length) {
    console.log("Taşınacak hesap yok.");
    return;
  }

  if (!APPLY) {
    console.log("Taşınacaklar (TC girişi kontrol edilir, değişiklik yapılmaz):");
    let bad = 0;
    for (const c of todo) {
      const si = await K.signInWithPassword(K.tcToEmail(c.tc), c.tc);
      const state = si.ok ? (si.uid === c.id ? "TC girişi çalışıyor" : "UID UYUŞMUYOR") : `TC girişi ÇALIŞMIYOR (${si.error})`;
      if (!si.ok || si.uid !== c.id) bad++;
      console.log(`  - ${c.name} (${ROLE_LABEL[c.type]}): ${state}`);
      await sleep(250);
    }
    console.log(`\n${todo.length} hesap taşınabilir görünüyor${bad ? `, ${bad} tanesi sorunlu` : ""}.`);
    console.log("Gerçekten taşımak için: node id_gecis.js --uygula  (önce --limit 1 ile denemeniz önerilir)");
    return;
  }

  const usedIds = new Set();
  let ok = 0;
  const failed = [];
  for (const c of todo) {
    const r = await migrateOne(c, root, usedIds);
    if (r.ok) {
      ok++;
      console.log(`  OK    ${c.name} (${ROLE_LABEL[c.type]}) → ID ${r.loginId}${r.note ? `  UYARI: ${r.note}` : ""}`);
    } else {
      failed.push({ c, note: r.note });
      console.log(`  HATA  ${c.name} (${ROLE_LABEL[c.type]}): ${r.note}`);
    }
    await sleep(300);
  }
  console.log(`\nSonuç: ${ok} taşındı, ${failed.length} taşınamadı.`);
  if (ok) console.log(`ID ve şifreler: ${RESULT_FILE}  (gizli; dağıtınca silin)`);
  if (failed.length) process.exitCode = 1;
}

if (require.main === module) {
  main().catch((e) => {
    console.error("HATA:", e.message || e);
    if (String(e.message || "").includes("PERMISSION_DENIED")) {
      console.error("Firestore kuralları reddetti: güncel kurallar yüklü mü? (login_ids ara mod kuralları ve login_id ekleme istisnası gerekir)");
    }
    process.exit(1);
  });
}

module.exports = { classify };

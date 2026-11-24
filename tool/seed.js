#!/usr/bin/env node
/**
 * Umre Rehberim – demo verisi yükleyici (Spark planı: Admin SDK / servis hesabı YOK)
 *
 * Sadece Node 18+ `fetch` ile Firebase REST API'leri kullanılır:
 *   1) Kök süper admin (TC 10000000146, e-posta <tc>@umrerehberim.app) olarak giriş, idToken.
 *      Şifre: UMRE_KOK_SIFRE ortam değişkeni, yoksa sorulur, boşsa TC (ilk kurulum: hesap açılır).
 *      Kökün sabit Kullanıcı ID'si 1000146 (login_ids/1000146 ve users.login_id yazılır).
 *   2) Diğer demo kullanıcılar Firebase kimlik modunda (Kullanıcı ID + şifre): users belgesi TC ile
 *      bulunursa uid ve login_id oradan alınır (hesaba dokunulmaz, şifre değişmez); yoksa
 *      tekil 7 haneli ID + rastgele şifreyle `id<ID>@umrerehberim.app` hesabı açılır ve
 *      login_ids/{ID} = {uid} yazılır. Yeni şifreler yalnız konsola ve
 *      tool/seed_sonuc.local.md'ye (gizli, git'e girmez) yazılır; bir daha gösterilemez.
 *      users belgesi eski TC hesabıyla duruyorsa (login_id yok) uyarı verilir: tool/id_gecis.js çalıştırın.
 *   3) Firestore REST documents:commit ile tüm belgeler (kurallar kök süper admin e-postasını tanır).
 *      users belgelerinin id'si Auth uid'si, diğerleri sabit demo_ id'leri.
 *   4) Realtime Database REST ile roles/{uid} = {role, agencyId}  (?auth=idToken).
 *
 * Kullanım (tool klasöründe):
 *   node seed.js              yükler / üzerine yazar
 *   node seed.js --reset      önce demo belgelerini (demo_seed == true) ve roles düğümlerini siler, sonra yükler
 *   node seed.js --reset-only sadece siler
 *   node seed.js --dry-run    Firebase'e bağlanmadan ne yazılacağını gösterir
 *   node seed.js --days 45    kaç günlük ezan vakti yazılacağı (varsayılan 45)
 *
 * Auth hesapları ve users belgeleri --reset ile silinmez (aynı uid/login_id'ler tekrar kullanılır;
 * users belgeleri zaten her çalıştırmada üzerine yazılır).
 * Saatler/tarihler Suudi Arabistan ve Türkiye saati olan UTC+3'e göredir.
 */
"use strict";

const fs = require("fs");
const path = require("path");

// ---------------------------------------------------------------------------
// Argümanlar
// ---------------------------------------------------------------------------
const argv = process.argv.slice(2);
const hasFlag = (f) => argv.includes(f);
const argValue = (f) => {
  const i = argv.indexOf(f);
  return i >= 0 && argv[i + 1] && !argv[i + 1].startsWith("--") ? argv[i + 1] : null;
};
const DRY_RUN = hasFlag("--dry-run");
const RESET_ONLY = hasFlag("--reset-only");
const RESET = hasFlag("--reset") || RESET_ONLY;
const PRAYER_DAYS = Math.max(30, parseInt(argValue("--days") || "45", 10) || 45);

// Firebase projesi (lib/firebase_options.dart ile aynı)
const PROJECT_ID = "umrerehberim-cc99e";
const API_KEY = "AIzaSyA8X1JQfgxHrhtnEgfqVVK8Lktw9ga7AHI";
const RTDB_URL = "https://umrerehberim-cc99e-default-rtdb.firebaseio.com";
const EMAIL_DOMAIN = "umrerehberim.app";
const K = require("./_kimlik_ortak");
const ROOT_TC = K.ROOT_TC;
const ROOT_LOGIN_ID = K.ROOT_LOGIN_ID;
const tcToEmail = (tc) => `${tc}@${EMAIL_DOMAIN}`;

// ---------------------------------------------------------------------------
// Tarih yardımcıları (UTC+3)
// ---------------------------------------------------------------------------
const TZ_OFFSET_H = 3;
const DAY_MS = 86400000;
const pad = (n) => String(n).padStart(2, "0");

/** Bugünün UTC+3'e göre yıl/ay/gün bilgisi. */
function todayParts() {
  const d = new Date(Date.now() + TZ_OFFSET_H * 3600000);
  return { y: d.getUTCFullYear(), m: d.getUTCMonth() + 1, d: d.getUTCDate() };
}
const TODAY = todayParts();

/** Bugünden `offset` gün sonrası, UTC+3 saatiyle hh:mm. Date (mutlak an) döner. */
function dayAt(offset, hh = 0, mm = 0) {
  return new Date(Date.UTC(TODAY.y, TODAY.m - 1, TODAY.d + offset, hh - TZ_OFFSET_H, mm));
}
/** UTC+3'e göre takvim günü bilgisi. */
function localParts(date) {
  const d = new Date(date.getTime() + TZ_OFFSET_H * 3600000);
  return { y: d.getUTCFullYear(), m: d.getUTCMonth() + 1, d: d.getUTCDate(), wd: d.getUTCDay() };
}
const ymd = (date) => {
  const p = localParts(date);
  return `${p.y}-${pad(p.m)}-${pad(p.d)}`;
};
const GUNLER = ["Pazar", "Pazartesi", "Salı", "Çarşamba", "Perşembe", "Cuma", "Cumartesi"];
const AYLAR = ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran", "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"];

// ---------------------------------------------------------------------------
// Hicri tarih: önce Intl (Ümmü'l-Kurâ takvimi), yoksa aritmetik yaklaşık hesap
// ---------------------------------------------------------------------------
const HICRI_AYLAR = ["Muharrem", "Safer", "Rebiülevvel", "Rebiülahir", "Cemaziyelevvel", "Cemaziyelahir",
  "Recep", "Şaban", "Ramazan", "Şevval", "Zilkade", "Zilhicce"];

let hijriFmt = null;
try {
  hijriFmt = new Intl.DateTimeFormat("tr-TR-u-ca-islamic-umalqura", {
    day: "numeric", month: "long", year: "numeric", timeZone: "Asia/Riyadh",
  });
  if (!hijriFmt.resolvedOptions().calendar.startsWith("islamic")) hijriFmt = null;
} catch (_) {
  hijriFmt = null;
}

function hijriArithmetic(date) {
  // Kuveyt algoritması (±1 gün)
  const p = localParts(date);
  let jd = Math.floor((1461 * (p.y + 4800 + Math.floor((p.m - 14) / 12))) / 4) +
    Math.floor((367 * (p.m - 2 - 12 * Math.floor((p.m - 14) / 12))) / 12) -
    Math.floor((3 * Math.floor((p.y + 4900 + Math.floor((p.m - 14) / 12)) / 100)) / 4) + p.d - 32075;
  let l = jd - 1948440 + 10632;
  const n = Math.floor((l - 1) / 10631);
  l = l - 10631 * n + 354;
  const j = Math.floor((10985 - l) / 5316) * Math.floor((50 * l) / 17719) +
    Math.floor(l / 5670) * Math.floor((43 * l) / 15238);
  l = l - Math.floor((30 - j) / 15) * Math.floor((17719 * j) / 50) - Math.floor(j / 16) * Math.floor((15238 * j) / 43) + 29;
  const hm = Math.floor((24 * l) / 709);
  const hd = l - Math.floor((709 * hm) / 24);
  const hy = 30 * n + j - 30;
  return `${hd} ${HICRI_AYLAR[hm - 1]} ${hy}`;
}

function hijri(date) {
  if (hijriFmt) {
    try {
      const parts = hijriFmt.formatToParts(date);
      const get = (t) => (parts.find((x) => x.type === t) || {}).value;
      const s = `${get("day")} ${get("month")} ${get("year")}`;
      if (!s.includes("undefined")) return s;
    } catch (_) { /* aritmetik hesaba düş */ }
  }
  return hijriArithmetic(date);
}

// ---------------------------------------------------------------------------
// Ezan vakitleri: gerçek API'ye bağlanmadan astronomik hesap
// Ümmü'l-Kurâ yöntemi: imsak 18.5°, yatsı = akşam + 90 dk, ikindi Şafii (gölge 1x).
// Hata payı birkaç dakikadır; demo için yeterli.
// ---------------------------------------------------------------------------
const CITIES = {
  mekke: { lat: 21.4225, lng: 39.8262 },
  medine: { lat: 24.4672, lng: 39.6111 },
};
const rad = (d) => (d * Math.PI) / 180;
const deg = (r) => (r * 180) / Math.PI;

function sunPosition(jd) {
  const D = jd - 2451545.0;
  const g = (357.529 + 0.98560028 * D) % 360;
  const q = (280.459 + 0.98564736 * D) % 360;
  const L = (q + 1.915 * Math.sin(rad(g)) + 0.020 * Math.sin(rad(2 * g))) % 360;
  const e = 23.439 - 0.00000036 * D;
  const RA = deg(Math.atan2(Math.cos(rad(e)) * Math.sin(rad(L)), Math.cos(rad(L)))) / 15;
  const decl = deg(Math.asin(Math.sin(rad(e)) * Math.sin(rad(L))));
  let eqt = q / 15 - ((RA + 24) % 24);
  eqt = ((eqt + 12) % 24 + 24) % 24 - 12;
  return { decl, eqt };
}

function prayerTimes(date, city) {
  const { lat, lng } = CITIES[city];
  const p = localParts(date);
  const jd = Date.UTC(p.y, p.m - 1, p.d, 12) / DAY_MS + 2440587.5 - lng / 360;
  const { decl, eqt } = sunPosition(jd);
  const noon = 12 + TZ_OFFSET_H - lng / 15 - eqt; // yerel saat
  const hourAngle = (angle) => {
    const v = (-Math.sin(rad(angle)) - Math.sin(rad(lat)) * Math.sin(rad(decl))) /
      (Math.cos(rad(lat)) * Math.cos(rad(decl)));
    return deg(Math.acos(Math.min(1, Math.max(-1, v)))) / 15;
  };
  const asrAngle = -deg(Math.atan(1 / (1 + Math.tan(rad(Math.abs(lat - decl))))));
  const sunrise = noon - hourAngle(0.833);
  const sunset = noon + hourAngle(0.833);
  const fmt = (h) => {
    let m = Math.round(h * 60);
    m = ((m % 1440) + 1440) % 1440;
    return `${pad(Math.floor(m / 60))}:${pad(m % 60)}`;
  };
  return {
    imsak: fmt(noon - hourAngle(18.5)),
    gunes: fmt(sunrise),
    ogle: fmt(noon + 1 / 60), // zeval sonrası 1 dk temkin
    ikindi: fmt(noon + hourAngle(asrAngle)),
    aksam: fmt(sunset + 1 / 60),
    yatsi: fmt(sunset + 1 / 60 + 1.5),
  };
}

// ---------------------------------------------------------------------------
// TC kimlik numarası (geçerli algoritmaya uyan sahte test numaraları)
// ---------------------------------------------------------------------------
function tcFromPrefix(prefix9) {
  const d = prefix9.split("").map(Number);
  if (d.length !== 9 || d[0] === 0) throw new Error("TC öneki 9 hane olmalı ve 0 ile başlamamalı");
  const odd = d[0] + d[2] + d[4] + d[6] + d[8];
  const even = d[1] + d[3] + d[5] + d[7];
  const d10 = (((odd * 7 - even) % 10) + 10) % 10;
  const d11 = (d.reduce((a, b) => a + b, 0) + d10) % 10;
  return prefix9 + d10 + d11;
}
function isValidTc(tc) {
  if (!/^[1-9]\d{10}$/.test(tc)) return false;
  return tcFromPrefix(tc.slice(0, 9)) === tc;
}

// ---------------------------------------------------------------------------
// Demo verisi
// ---------------------------------------------------------------------------
const AGENCY_ID = "demo_agency_hekzapot";
const TRIP_MEKKE = "demo_trip_mekke";
const TRIP_MEDINE = "demo_trip_medine";
const HOTEL_MEKKE = "demo_hotel_mekke";
const HOTEL_MEDINE = "demo_hotel_medine";

// Mekke seferi 10 gün sonra başlar (ana sayfada geri sayım görünsün), ardından Medine.
const MEKKE_START = dayAt(10, 9, 0);
const MEKKE_END = dayAt(19, 18, 0);
const MEDINE_START = dayAt(19, 18, 0);
const MEDINE_END = dayAt(24, 12, 0);

/** [uids]: yerel kullanıcı anahtarı (demo_super_admin vb.) -> Auth uid.
 *  [loginIds]: aynı anahtar -> 7 haneli Kullanıcı ID (bilinmiyorsa belgeye yazılmaz). */
function buildData(uids = {}, loginIds = {}) {
  const uidOf = (key) => uids[key] || key;
  const now = new Date();
  const data = {}; // { koleksiyon: { id: belge } }
  const put = (col, id, doc) => {
    (data[col] = data[col] || {})[id] = { ...doc, demo_seed: true };
  };
  const stamps = { created_at: now, updated_at: now };

  // Acente
  put("agencies", AGENCY_ID, {
    name: "Hekzapot Turizm",
    description: "Umre ve hac organizasyonları (demo acente)",
    phone: "+90 212 555 00 00",
    email: "info@hekzapot-demo.com",
    address: "Fatih, İstanbul",
    is_active: true,
    ...stamps,
  });

  // Seferler
  const ayAdi = AYLAR[localParts(MEKKE_START).m - 1];
  put("trips", TRIP_MEKKE, {
    name: `${ayAdi} Umresi - Mekke`,
    location: "Mekke",
    note: "Umre ibadeti ve Mescid-i Haram ziyaretleri",
    agency_id: AGENCY_ID,
    start_date: MEKKE_START,
    end_date: MEKKE_END,
    ...stamps,
  });
  put("trips", TRIP_MEDINE, {
    name: `${ayAdi} Umresi - Medine`,
    location: "Medine",
    note: "Mescid-i Nebevi ve Medine ziyaretleri",
    agency_id: AGENCY_ID,
    start_date: MEDINE_START,
    end_date: MEDINE_END,
    ...stamps,
  });

  // Oteller
  put("hotels", HOTEL_MEKKE, {
    name: "Swissotel Al Maqam",
    city: "Mekke",
    address: "Abraj Al Bait, İbrahim Al Khalil Cd., Mekke",
    trip_id: TRIP_MEKKE,
    agency_id: AGENCY_ID,
    capacity: 40,
    ...stamps,
  });
  put("hotels", HOTEL_MEDINE, {
    name: "Pullman Zamzam Madinah",
    city: "Medine",
    address: "Amr Bin Al Jamouh Cd., Medine",
    trip_id: TRIP_MEDINE,
    agency_id: AGENCY_ID,
    capacity: 40,
    ...stamps,
  });

  // Odalar (gender: Erkek | Kadın | Karma)
  const rooms = [
    ["demo_room_mekke_101", HOTEL_MEKKE, "101", 4, "Erkek"],
    ["demo_room_mekke_102", HOTEL_MEKKE, "102", 4, "Kadın"],
    ["demo_room_mekke_103", HOTEL_MEKKE, "103", 2, "Karma"],
    ["demo_room_medine_201", HOTEL_MEDINE, "201", 4, "Erkek"],
    ["demo_room_medine_202", HOTEL_MEDINE, "202", 4, "Kadın"],
    ["demo_room_medine_203", HOTEL_MEDINE, "203", 2, "Karma"],
  ];
  for (const [id, hotelId, no, cap, gender] of rooms) {
    put("rooms", id, { hotel_id: hotelId, room_number: no, capacity: cap, gender, note: "", agency_id: AGENCY_ID, ...stamps });
  }

  // Kullanıcılar
  const noTrip = {
    mekke_seferi_id: null, medine_seferi_id: null, mekke_otel_id: null,
    medine_otel_id: null, mekke_oda_id: null, medine_oda_id: null,
  };
  const users = [
    {
      id: "demo_super_admin", user_name: "Süper Admin", user_type: "super_admin",
      tc: tcFromPrefix("100000001"), user_tel: "05550000001", cinsiyet: "Erkek", dogum_tarihi: "01.01.1985",
      ...noTrip,
    },
    {
      // Acente admini: yalnız kendi acentesini yönetir (rehber).
      id: "demo_yonetici", user_name: "Ahmet Yılmaz (Rehber)", user_type: "acente_admin",
      tc: tcFromPrefix("200000002"), user_tel: "05550000002", cinsiyet: "Erkek", dogum_tarihi: "15.03.1980",
      ...noTrip, mekke_seferi_id: TRIP_MEKKE, medine_seferi_id: TRIP_MEDINE,
    },
    {
      // Genel yönetici (yardımcı admin): tüm acenteler; dükkan/esnaf yetkisi yok.
      id: "demo_genel_yonetici", user_name: "Zeynep Arslan (Genel Yönetici)", user_type: "yonetici",
      tc: tcFromPrefix("200000003"), user_tel: "05550000006", cinsiyet: "Kadın", dogum_tarihi: "08.04.1983",
      ...noTrip,
    },
    {
      id: "demo_misafir_1", user_name: "Mehmet Demir", user_type: "misafir",
      tc: tcFromPrefix("300000003"), user_tel: "05550000003", cinsiyet: "Erkek", dogum_tarihi: "20.06.1965",
      mekke_seferi_id: TRIP_MEKKE, medine_seferi_id: TRIP_MEDINE,
      mekke_otel_id: HOTEL_MEKKE, medine_otel_id: HOTEL_MEDINE,
      mekke_oda_id: "demo_room_mekke_101", medine_oda_id: "demo_room_medine_201",
    },
    {
      id: "demo_misafir_2", user_name: "Ayşe Demir", user_type: "misafir",
      tc: tcFromPrefix("300000004"), user_tel: "05550000004", cinsiyet: "Kadın", dogum_tarihi: "02.09.1968",
      mekke_seferi_id: TRIP_MEKKE, medine_seferi_id: TRIP_MEDINE,
      mekke_otel_id: HOTEL_MEKKE, medine_otel_id: HOTEL_MEDINE,
      mekke_oda_id: "demo_room_mekke_102", medine_oda_id: "demo_room_medine_202",
    },
    {
      id: "demo_misafir_3", user_name: "Fatma Kaya", user_type: "misafir",
      tc: tcFromPrefix("300000005"), user_tel: "05550000005", cinsiyet: "Kadın", dogum_tarihi: "11.11.1972",
      mekke_seferi_id: TRIP_MEKKE, medine_seferi_id: TRIP_MEDINE,
      mekke_otel_id: HOTEL_MEKKE, medine_otel_id: HOTEL_MEDINE,
      mekke_oda_id: "demo_room_mekke_102", medine_oda_id: "demo_room_medine_202",
    },
  ];
  for (const u of users) {
    if (!isValidTc(u.tc)) throw new Error(`Geçersiz TC üretildi: ${u.tc}`);
    const { id, tc, ...rest } = u;
    put("users", uidOf(id), {
      ...rest,
      user_tc: tc,
      // Güvenlik kuralları login_id'nin sonradan değişmesine izin vermez; bilinen ID aynen korunur.
      ...(loginIds[id] ? { login_id: loginIds[id] } : {}),
      agency_id: AGENCY_ID,
      user_token: null,
      fcm_token: null,
      user_location: null,
      ...stamps,
    });
  }

  // Rehber her iki seferin yöneticisi
  for (const tripId of [TRIP_MEKKE, TRIP_MEDINE]) {
    put("trip_managers", `demo_tm_${tripId}_demo_yonetici`, {
      trip_id: tripId, user_id: uidOf("demo_yonetici"), agency_id: AGENCY_ID, created_at: now,
    });
  }

  // Döviz (value: TL karşılığı, metin)
  const currencies = [
    ["demo_cur_usd", "🇺🇸", "Amerikan Doları", "42,35"],
    ["demo_cur_eur", "🇪🇺", "Euro", "49,10"],
    ["demo_cur_sar", "🇸🇦", "Suudi Riyali", "11,29"],
    ["demo_cur_gbp", "🇬🇧", "İngiliz Sterlini", "56,40"],
  ];
  for (const [id, emoji, name, value] of currencies) {
    put("currencies", id, { emoji, name, value, agency_id: AGENCY_ID, ...stamps });
  }

  // Duyurular (en yenisi önce gelsin diye farklı saatler)
  const notifs = [
    ["demo_notif_1", "Hoş geldiniz",
      "Hekzapot Turizm ailesine hoş geldiniz. Umre yolculuğunuzla ilgili tüm duyurular buradan paylaşılacaktır.", 72],
    ["demo_notif_2", "Pasaport ve vize",
      "Pasaportlarınızın en az 6 ay geçerli olduğundan emin olunuz. Vize işlemleri için belgelerinizi rehberinize teslim ediniz.", 26],
    ["demo_notif_3", "Bilgilendirme toplantısı",
      "Umre öncesi bilgilendirme toplantımız yarın saat 20:00'de acentemizde yapılacaktır. Katılımınızı rica ederiz.", 2],
  ];
  for (const [id, title, message, hoursAgo] of notifs) {
    put("notifications", id, {
      title, message, user_token: null, agency_id: AGENCY_ID,
      created_at: new Date(now.getTime() - hoursAgo * 3600000),
    });
  }

  // Etkinlikler (date: günün başlangıcı, time: 'HH:mm', duration: dakika)
  const events = [
    ["demo_event_1", 1, "20:00", 90, "Umre öncesi bilgilendirme toplantısı", "Acente ofisinde ihram, tavaf ve sa'y uygulamalı anlatım", null],
    ["demo_event_2", 5, "14:00", 60, "Valiz ve evrak kontrolü", "Pasaport, aşı kartı ve bagaj kontrolü", null],
    ["demo_event_3", 10, "06:30", 240, "İstanbul - Cidde uçuşu", "Havalimanında uçuştan 3 saat önce buluşma", TRIP_MEKKE],
    ["demo_event_4", 11, "05:00", 180, "Umre ibadeti (ihram, tavaf, sa'y)", "Rehber eşliğinde toplu umre", TRIP_MEKKE],
    ["demo_event_5", 13, "08:00", 240, "Mekke ziyaretleri", "Arafat, Müzdelife, Mina, Sevr ve Nur dağları", TRIP_MEKKE],
    ["demo_event_6", 16, "20:30", 60, "Sohbet: Hz. Peygamber'in Mekke yılları", "Otel toplantı salonu", TRIP_MEKKE],
    ["demo_event_7", 20, "09:00", 180, "Medine ziyaretleri", "Kuba Mescidi, Uhud, Kıbleteyn Mescidi", TRIP_MEDINE],
    ["demo_event_8", 23, "21:00", 60, "Veda sohbeti", "Dönüş öncesi değerlendirme", TRIP_MEDINE],
  ];
  for (const [id, offset, time, duration, title, description, tripId] of events) {
    put("events", id, {
      title, description, date: dayAt(offset, 0, 0), time, duration,
      trip_id: tripId, agency_id: AGENCY_ID, ...stamps,
    });
  }

  // Ezan vakitleri: dünden itibaren PRAYER_DAYS gün (belge id = tarih)
  for (const city of ["mekke", "medine"]) {
    for (let i = -1; i < PRAYER_DAYS; i++) {
      const day = dayAt(i, 12, 0);
      const p = localParts(day);
      put(`${city}_prayer_times`, ymd(day), {
        date: ymd(day),
        day: GUNLER[p.wd],
        hicri: hijri(day),
        ...prayerTimes(day, city),
      });
    }
  }

  return { data, users };
}

// ---------------------------------------------------------------------------
// Çıktı
// ---------------------------------------------------------------------------
const TYPE_LABEL = { super_admin: "Süper Admin", yonetici: "Yönetici (genel)", acente_admin: "Acente Admini", misafir: "Misafir" };
const LOGIN_TAB = { super_admin: "Yönetici", yonetici: "Yönetici", acente_admin: "Yönetici", misafir: "Misafir" };

/** [loginIds]: demo anahtarı -> Kullanıcı ID (bilinmiyorsa "-"). */
function accountsTable(users, loginIds = {}) {
  const rows = users.map((u) => [
    loginIds[u.id] || "-", TYPE_LABEL[u.user_type], LOGIN_TAB[u.user_type], u.user_name, u.cinsiyet, u.tc,
  ]);
  return rows;
}

function printTable(users, loginIds = {}) {
  console.log("\nGiriş için demo hesapları (şifreler yalnız yeni açılan hesaplar için yukarıda/seed_sonuc.local.md'de):");
  console.table(
    accountsTable(users, loginIds).map(([id, tip, sekme, ad, , tc]) => ({
      "Kullanıcı ID": id, Tip: tip, "Giriş seçeneği": sekme, Ad: ad, "TC (yalnız kayıt)": tc,
    })),
  );
}

function writeAccountsMd(users, projectId, loginIds = {}) {
  const rows = accountsTable(users, loginIds)
    .map(([id, tip, sekme, ad, cins, tc]) => `| \`${id}\` | ${tip} | ${sekme} | ${ad} | ${cins} | \`${tc}\` |`)
    .join("\n");
  const md = `# Demo hesapları

\`tool/seed.js\` tarafından oluşturulur. Son yükleme: ${new Date().toISOString()}${projectId ? ` (proje: \`${projectId}\`)` : ""}

TC numaraları **sahte test numaralarıdır**, yalnızca TC doğrulama algoritmasına uyarlar; **girişte kullanılmaz**, yalnız kayıttır.

| Kullanıcı ID | Tip | Girişte seçilecek | Ad | Cinsiyet | TC (yalnız kayıt) |
|---|---|---|---|---|---|
${rows}

- Acente: **Hekzapot Turizm** (\`${AGENCY_ID}\`)
- Mekke seferi: ${ymd(MEKKE_START)} – ${ymd(MEKKE_END)} (\`${TRIP_MEKKE}\`, ana sayfada geri sayım görünür)
- Medine seferi: ${ymd(MEDINE_START)} – ${ymd(MEDINE_END)} (\`${TRIP_MEDINE}\`)
- Oteller: Swissotel Al Maqam (Mekke), Pullman Zamzam Madinah (Medine)
- Misafirlerin hepsi her iki sefere, otele ve bir odaya atanmıştır.
- Ezan vakitleri: dünden itibaren ${PRAYER_DAYS} gün (\`mekke_prayer_times\`, \`medine_prayer_times\`). Süre dolunca betiği yeniden çalıştırın.
- Bildirim topic'leri: \`agency_${AGENCY_ID}\`, \`trip_${TRIP_MEKKE}\`, \`trip_${TRIP_MEDINE}\`

Giriş: **Kullanıcı ID + şifre** (uygulama e-postayı \`id<ID>@${EMAIL_DOMAIN}\` olarak kendisi kurar). Şifreleri betik belirler ve
**bu dosyada tutulmaz**: yeni açılan hesapların şifresi \`tool/seed_sonuc.local.md\`'ye, \`tool/id_gecis.js\` ile taşınanlarınki
\`tool/id_gecis_sonuc.local.md\`'ye yazılır (ikisi de gizli, git'e girmez). Kök süper adminin ID'si sabit **${ROOT_LOGIN_ID}**,
şifresi kurulumdaki (değiştirdiyse güncel) şifredir.

Yeniden yüklemek için: \`cd tool && node seed.js --reset\`
`;
  fs.writeFileSync(path.join(__dirname, "DEMO_HESAPLARI.md"), md, "utf8");
}

// ---------------------------------------------------------------------------
// Firebase REST işlemleri
// ---------------------------------------------------------------------------
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
  try { json = text ? JSON.parse(text) : null; } catch (_) { /* düz metin */ }
  return { ok: res.ok, status: res.status, json, text };
}
const errMsg = (r) => (r.json && r.json.error && (r.json.error.message || r.json.error)) || r.text || `HTTP ${r.status}`;

/** Kök süper admin: hesap yoksa açılır (şifre = [password]), varsa giriş yapılır. {uid, idToken, created} döner. */
async function ensureRootAccount(password) {
  const body = { email: tcToEmail(ROOT_TC), password, returnSecureToken: true };
  let r = await postJson(`${IDT}/accounts:signUp?key=${API_KEY}`, body);
  if (r.ok) return { uid: r.json.localId, idToken: r.json.idToken, created: true };
  const m = String(errMsg(r));
  if (!m.startsWith("EMAIL_EXISTS")) throw new Error(`accounts:signUp (kök): ${m}`);
  r = await postJson(`${IDT}/accounts:signInWithPassword?key=${API_KEY}`, body);
  if (!r.ok) {
    throw new Error(`Kök girişi başarısız (${errMsg(r)}). Kök şifresi TC değilse UMRE_KOK_SIFRE ortam değişkenini ayarlayın.`);
  }
  return { uid: r.json.localId, idToken: r.json.idToken, created: false };
}

/** Demo kullanıcının mevcut users belgesi (TC ile): {uid, loginId} ya da null. */
async function findUserByTc(tc, idToken) {
  const rows = await K.runQuery({
    from: [{ collectionId: "users" }],
    where: { fieldFilter: { field: { fieldPath: "user_tc" }, op: "EQUAL", value: { stringValue: tc } } },
    limit: 1,
  }, idToken);
  if (!rows.length) return null;
  return { uid: rows[0].id, loginId: String(rows[0].data.login_id || "") };
}

/** Yeni demo hesabı: tekil ID + rastgele şifre, `id<ID>@` Auth hesabı, login_ids/{ID} = {uid}. */
async function createIdAccount(u, idToken) {
  const password = K.generatePassword(K.passwordLengthFor(u.user_type));
  for (let i = 0; i < 20; i++) {
    const loginId = K.generateLoginId();
    if (await K.getDocument("login_ids", loginId, idToken)) continue;
    const r = await K.signUp(K.loginIdToEmail(loginId), password);
    if (!r.ok) {
      if (r.error.startsWith("EMAIL_EXISTS")) continue;
      throw new Error(`accounts:signUp (${u.user_name}): ${r.error}`);
    }
    await K.commit([K.loginIdCreateWrite(loginId, r.uid)], idToken);
    return { uid: r.uid, loginId, password };
  }
  throw new Error(`Benzersiz Kullanıcı ID bulunamadı (${u.user_name})`);
}

/** Yeni açılan hesapların ID + şifreleri (gizli dosya; git'e girmez). */
function writeSeedSecrets(created) {
  if (!created.length) return;
  const rows = created
    .map((c) => `| ${c.name} | ${TYPE_LABEL[c.type]} | \`${c.loginId}\` | \`${c.password}\` | ${c.uid} |`)
    .join("\n");
  const md = `# seed.js ile yeni açılan hesaplar (GİZLİ — git'e girmez)

Üretim: ${new Date().toISOString()}. Şifreler bir daha görüntülenemez.

| Ad | Tip | Kullanıcı ID | Şifre | uid |
|---|---|---|---|---|
${rows}
`;
  fs.writeFileSync(path.join(__dirname, "seed_sonuc.local.md"), md, "utf8");
}

/** JS değeri -> Firestore REST Value. */
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
const docName = (col, id) => `${FS_DB}/documents/${col}/${id}`;

async function commit(writes, idToken) {
  for (let i = 0; i < writes.length; i += 400) {
    const r = await postJson(`${FS}/documents:commit`, { writes: writes.slice(i, i + 400) }, idToken);
    if (!r.ok) throw new Error(`Firestore commit: ${errMsg(r)}`);
  }
}

/** demo_seed == true olan belgelerin tam adları. */
async function findDemoDocs(col, idToken) {
  const r = await postJson(`${FS}/documents:runQuery`, {
    structuredQuery: {
      from: [{ collectionId: col }],
      where: { fieldFilter: { field: { fieldPath: "demo_seed" }, op: "EQUAL", value: { booleanValue: true } } },
      select: { fields: [{ fieldPath: "__name__" }] },
    },
  }, idToken);
  if (!r.ok) throw new Error(`Firestore runQuery (${col}): ${errMsg(r)}`);
  return (r.json || []).filter((x) => x.document).map((x) => x.document.name);
}

async function rtdb(method, pathPart, body, idToken) {
  const res = await fetch(`${RTDB_URL}/${pathPart}.json?auth=${encodeURIComponent(idToken)}`, {
    method,
    headers: { "Content-Type": "application/json" },
    body: body === undefined ? undefined : JSON.stringify(body),
  });
  const text = await res.text();
  if (!res.ok) throw new Error(`RTDB ${method} ${pathPart}: HTTP ${res.status} ${text}`);
  return text;
}

async function resetDemo(collections, idToken, uids) {
  let total = 0;
  for (const col of collections) {
    const names = await findDemoDocs(col, idToken);
    await commit(names.map((name) => ({ delete: name })), idToken);
    total += names.length;
  }
  try {
    const patch = {};
    for (const uid of uids) patch[uid] = null;
    await rtdb("PATCH", "roles", patch, idToken);
    console.log(`Silindi: ${total} belge, ${uids.length} roles düğümü.`);
  } catch (e) {
    console.log(`Silindi: ${total} belge. (roles silinemedi: ${e.message})`);
  }
}

async function main() {
  const { users: plainUsers } = buildData();
  const root = plainUsers.find((u) => u.tc === ROOT_TC);
  if (!root || root.user_type !== "super_admin") throw new Error("Kök süper admin TC'si demo listesinde yok");

  if (DRY_RUN) {
    const { data, users } = buildData();
    console.log("--dry-run: Firebase'e bağlanılmadı. Yazılacak belgeler:");
    for (const col of Object.keys(data)) console.log(`  ${col.padEnd(20)} ${Object.keys(data[col]).length}`);
    console.log("\nBugün Mekke:", data.mekke_prayer_times[ymd(dayAt(0, 12))]);
    console.log("Bugün Medine:", data.medine_prayer_times[ymd(dayAt(0, 12))]);
    printTable(users, { [root.id]: ROOT_LOGIN_ID });
    console.log("(Diğer hesapların Kullanıcı ID + şifresi gerçek çalıştırmada üretilir/okunur.)");
    return;
  }

  console.log(`Proje: ${PROJECT_ID}`);

  // (a) kök süper admin girişi (ilk kurulumda hesap açılır) ve sabit ID kaydı
  const uids = {};
  const loginIds = {};
  const created = [];
  const rootAcc = await ensureRootAccount(await K.rootPassword());
  const rootToken = rootAcc.idToken;
  uids[root.id] = rootAcc.uid;
  loginIds[root.id] = ROOT_LOGIN_ID;
  console.log(`  Auth ${rootAcc.created ? "oluşturuldu" : "mevcut     "}  kök  ${root.user_type.padEnd(11)} uid=${rootAcc.uid}  ID=${ROOT_LOGIN_ID}`);
  if (!(await K.getDocument("login_ids", ROOT_LOGIN_ID, rootToken))) {
    await K.commit([K.loginIdCreateWrite(ROOT_LOGIN_ID, rootAcc.uid)], rootToken);
  }

  // (b) diğer demo hesaplar: mevcut users belgesinden uid + login_id; yoksa ID'li hesap aç
  for (const u of plainUsers) {
    if (u.id === root.id) continue;
    const found = await findUserByTc(u.tc, rootToken);
    if (found) {
      uids[u.id] = found.uid;
      if (found.loginId) {
        loginIds[u.id] = found.loginId;
        console.log(`  Auth mevcut       ${u.user_type.padEnd(12)} uid=${found.uid}  ID=${found.loginId}`);
      } else {
        console.warn(`  UYARI ${u.user_name}: eski TC hesabı (login_id yok); uygulamada girişi için önce tool/id_gecis.js --uygula çalıştırın.`);
      }
      continue;
    }
    const acc = await createIdAccount(u, rootToken);
    uids[u.id] = acc.uid;
    loginIds[u.id] = acc.loginId;
    created.push({ name: u.user_name, type: u.user_type, loginId: acc.loginId, password: acc.password, uid: acc.uid });
    console.log(`  Auth oluşturuldu  ${u.user_type.padEnd(12)} uid=${acc.uid}  ID=${acc.loginId}  şifre=${acc.password}`);
  }
  writeSeedSecrets(created);

  const { data, users } = buildData(uids, loginIds);
  const collections = Object.keys(data);

  // users belgeleri silinmez (login_id kuralı gereği aşağıda aynı ID'lerle üzerine yazılır).
  if (RESET) await resetDemo(collections.filter((c) => c !== "users"), rootToken, Object.values(uids));
  if (RESET_ONLY) return;

  // (c) Firestore (kurallar kök süper admini e-postasından tanır)
  const writes = [];
  for (const col of collections) {
    for (const [id, doc] of Object.entries(data[col])) {
      writes.push({ update: { name: docName(col, id), fields: toFields(doc) } });
    }
  }
  await commit(writes, rootToken);
  for (const col of collections) console.log(`  ${col.padEnd(20)} ${Object.keys(data[col]).length} belge yazıldı`);

  // (d) RTDB roles
  try {
    const roles = {};
    for (const u of plainUsers) roles[uids[u.id]] = { role: u.user_type, agencyId: AGENCY_ID };
    await rtdb("PATCH", "roles", roles, rootToken);
    console.log(`  RTDB roles           ${Object.keys(roles).length} düğüm yazıldı`);
  } catch (e) {
    console.warn(`UYARI: RTDB roles yazılamadı (Realtime Database oluşturulmamış olabilir): ${e.message}`);
  }

  printTable(users, loginIds);
  writeAccountsMd(users, PROJECT_ID, loginIds);
  if (created.length) console.log("Yeni hesapların şifreleri (bir daha görünmez): " + path.join(__dirname, "seed_sonuc.local.md"));
  console.log(`\nHesap listesi: ${path.join(__dirname, "DEMO_HESAPLARI.md")}`);
}

module.exports = { tcFromPrefix, isValidTc, prayerTimes, hijri, buildData, toValue };

if (require.main === module) {
  main().then(() => process.exit(0)).catch((e) => {
    console.error("HATA:", e.message || e);
    const m = String(e.message || "");
    if (m.includes("CONFIGURATION_NOT_FOUND") || m.includes("OPERATION_NOT_ALLOWED")) {
      console.error("Firebase konsolu → Authentication → Sign-in method → E-posta/Şifre yöntemini etkinleştirin.");
    }
    if (m.includes("PERMISSION_DENIED")) {
      console.error("Firestore kuralları yazmayı reddetti. `firebase deploy --only firestore:rules` ile güncel kuralları yükleyin.");
    }
    process.exit(1);
  });
}

// Mekke–Medine rehber verisini uygulama deposundaki Dart dosyalarından web'e aktarır
// (uygulama deposu yalnız OKUNUR).
//   node tool/rehber_aktar.mjs            → site/src/data/rehber.json
//
// Kaynaklar (tek kaynak):
//   lib/features/info_screen/data/gezi_*_data.dart     → mekânlar (GeziYeri)
//   lib/features/info_screen/data/harem_kapilari_data.dart → Harem kapıları
//   lib/features/info_screen/data/ulasim_data.dart      → ulaşım özeti
//   lib/features/simulasyon/data/umre_adimlari.dart     → Adım Adım Umre + adım duaları
//
// Dart kodu çalıştırılmaz; küçük bir sözcük çözümleyici sabit (const/final) bildirimlerini
// okur: kurucu çağrıları (adlı/konumsal argüman), dizgeler (bitişik "..." "..." birleştirme,
// kaçışlar, r'' ham, ''' üçlü), sayılar, listeler, enum değerleri, L10nText.same, başka
// sabitlere başvuru (_saatMekke, OrtakDualar.rabbena, UmreYerleri.kabe ...).
// Uygulama deposu bu makinede yoksa mevcut json ile devam eder (veri_aktar.mjs ile aynı tavır).
import { existsSync } from 'node:fs';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';

const kok = join(dirname(fileURLToPath(import.meta.url)), '..');
const uygulama = process.env.UMRE_APP_DIR ?? 'C:/dev/umrerehberim';
const hedef = join(kok, 'site/src/data/rehber.json');

const VERI = 'lib/features/info_screen/data';
const DOSYALAR = [
  `${VERI}/gezilecek_yerler_data.dart`,
  `${VERI}/gezi_ui_texts.dart`,
  `${VERI}/gezi_mekke_a_data.dart`,
  `${VERI}/gezi_mekke_b_data.dart`,
  `${VERI}/gezi_mekke_c_data.dart`,
  `${VERI}/gezi_medine_data.dart`,
  `${VERI}/gezi_medine_b_data.dart`,
  `${VERI}/gezi_diger_data.dart`,
  `${VERI}/gezi_diger_b_data.dart`,
  `${VERI}/otel_restoran_data.dart`,
  `${VERI}/harem_kapilari_data.dart`,
  `${VERI}/ulasim_data.dart`,
  'lib/features/dualar/data/dua_models.dart',
  'lib/features/simulasyon/data/umre_adimlari.dart',
];

// ───────────────────────── Sözcük çözümleyici ─────────────────────────

class DartHatasi extends Error {}

function sozcukler(kaynak, dosya) {
  const t = [];
  let i = 0;
  const n = kaynak.length;
  const hata = (m) => {
    const satir = kaynak.slice(0, i).split('\n').length;
    throw new DartHatasi(`${dosya}:${satir}: ${m}`);
  };
  while (i < n) {
    const c = kaynak[i];
    if (/\s/.test(c)) { i++; continue; }
    if (kaynak.startsWith('//', i)) { while (i < n && kaynak[i] !== '\n') i++; continue; }
    if (kaynak.startsWith('/*', i)) {
      const son = kaynak.indexOf('*/', i + 2);
      i = son < 0 ? n : son + 2;
      continue;
    }
    // Dizge: isteğe bağlı r öneki, ' veya ", tekli ya da üçlü.
    const ham = (c === 'r' || c === 'R') && (kaynak[i + 1] === "'" || kaynak[i + 1] === '"');
    if (c === "'" || c === '"' || ham) {
      if (ham) i++;
      const q = kaynak[i];
      const uclu = kaynak.startsWith(q.repeat(3), i);
      const kapat = uclu ? q.repeat(3) : q;
      i += kapat.length;
      let s = '';
      let yerlesim = false;
      for (;;) {
        if (i >= n) hata('kapanmamış dizge');
        if (kaynak.startsWith(kapat, i)) { i += kapat.length; break; }
        const d = kaynak[i];
        if (!uclu && d === '\n') hata('dizge içinde satır sonu');
        if (d === '\\' && !ham) {
          const e = kaynak[i + 1];
          i += 2;
          switch (e) {
            case 'n': s += '\n'; break;
            case 'r': s += '\r'; break;
            case 't': s += '\t'; break;
            case 'b': s += '\b'; break;
            case 'f': s += '\f'; break;
            case 'v': s += '\v'; break;
            case 'x': s += String.fromCharCode(parseInt(kaynak.slice(i, i + 2), 16)); i += 2; break;
            case 'u':
              if (kaynak[i] === '{') {
                const son = kaynak.indexOf('}', i);
                s += String.fromCodePoint(parseInt(kaynak.slice(i + 1, son), 16));
                i = son + 1;
              } else {
                s += String.fromCharCode(parseInt(kaynak.slice(i, i + 4), 16));
                i += 4;
              }
              break;
            case '\n': break; // satır devamı
            default: s += e; // \' \" \\ \$ ve diğerleri
          }
          continue;
        }
        // Değişken yerleştirme ($x, ${...}) yalnız işlev gövdelerinde var; değerlendirilirse hata verilir.
        if (d === '$' && !ham) yerlesim = true;
        s += d;
        i++;
      }
      t.push({ tur: 'dizge', deger: s, yerlesim });
      continue;
    }
    if (/[0-9]/.test(c) || (c === '.' && /[0-9]/.test(kaynak[i + 1] ?? ''))) {
      const m = kaynak.slice(i).match(/^(0[xX][0-9a-fA-F]+|\d*\.?\d+(?:[eE][+-]?\d+)?)/);
      t.push({ tur: 'sayi', deger: Number(m[1]) });
      i += m[1].length;
      continue;
    }
    if (/[A-Za-z_$]/.test(c)) {
      const m = kaynak.slice(i).match(/^[A-Za-z_$][A-Za-z0-9_$]*/);
      t.push({ tur: 'ad', deger: m[0] });
      i += m[0].length;
      continue;
    }
    if (kaynak.startsWith('...', i)) { t.push({ tur: 'im', deger: '...' }); i += 3; continue; }
    if (kaynak.startsWith('=>', i)) { t.push({ tur: 'im', deger: '=>' }); i += 2; continue; }
    if (kaynak.startsWith('?.', i) || kaynak.startsWith('??', i)) { t.push({ tur: 'im', deger: kaynak.slice(i, i + 2) }); i += 2; continue; }
    t.push({ tur: 'im', deger: c });
    i++;
  }
  return t;
}

// ───────────────────────── Sabit tablosu ─────────────────────────

/** ad → { sozcukler, bas } (tembel değerlendirme); enum adları ayrı. */
const sabitler = new Map();
const enumlar = new Set();
const degerler = new Map();

function tara(t, dosya) {
  let derinlik = 0;
  let sinif = null; // { ad, derinlik }
  for (let i = 0; i < t.length; i++) {
    const s = t[i];
    if (s.tur === 'im' && s.deger === '{') { derinlik++; continue; }
    if (s.tur === 'im' && s.deger === '}') {
      derinlik--;
      if (sinif && derinlik === sinif.derinlik) sinif = null;
      continue;
    }
    if (s.tur !== 'ad') continue;
    if (derinlik === 0 && s.deger === 'enum') {
      enumlar.add(t[i + 1].deger);
      continue;
    }
    if (derinlik === 0 && s.deger === 'class') {
      sinif = { ad: t[i + 1].deger, derinlik: 0 };
      continue;
    }
    const ustDuzey = derinlik === 0 && (s.deger === 'const' || s.deger === 'final');
    const statik = sinif && derinlik === 1 && s.deger === 'static' && t[i + 1]?.deger === 'const';
    if (!ustDuzey && !statik) continue;
    // Bildirim: [static] const|final [Tür<...>] AD = ifade ;
    let j = statik ? i + 2 : i + 1;
    let ad = null;
    while (j < t.length && !(t[j].tur === 'im' && (t[j].deger === '=' || t[j].deger === ';' || t[j].deger === '('))) {
      if (t[j].tur === 'ad') ad = t[j].deger;
      j++;
    }
    if (!ad || t[j]?.deger !== '=') continue;
    const tamAd = statik ? `${sinif.ad}.${ad}` : ad;
    sabitler.set(tamAd, { t, bas: j + 1, dosya });
    // ifadenin sonuna atla (; derinlik 0)
    let d = 0;
    for (j = j + 1; j < t.length; j++) {
      const v = t[j].deger;
      if (t[j].tur !== 'im') continue;
      if (v === '(' || v === '[' || v === '{') d++;
      else if (v === ')' || v === ']' || v === '}') d--;
      else if (v === ';' && d === 0) break;
    }
    i = j;
  }
}

function sabit(ad) {
  if (degerler.has(ad)) return degerler.get(ad);
  const k = sabitler.get(ad);
  if (!k) return undefined;
  degerler.set(ad, null); // döngü koruması
  const c = new Cozumleyici(k.t, k.bas, k.dosya);
  const v = c.ifade();
  degerler.set(ad, v);
  return v;
}

// ───────────────────────── İfade çözümleyici ─────────────────────────

/** Konumsal argümanların alan adları (bilinen kurucular). */
const KONUMSAL = {
  LatLng: ['lat', 'lng'],
  'L10nText.same': ['tr'],
  GeziKaynak: ['baslik', 'url'],
  UlasimMadde: ['metin'],
  HaritaNoktasi: ['id', 'ad', 'konum'],
};

class Cozumleyici {
  constructor(t, i, dosya) { this.t = t; this.i = i; this.dosya = dosya; }
  get s() { return this.t[this.i]; }
  hata(m) {
    const yakin = this.t.slice(Math.max(0, this.i - 4), this.i + 4).map((x) => x.deger).join(' ');
    throw new DartHatasi(`${this.dosya}: ${m} (yakın: ${yakin})`);
  }
  im(v) { return this.s?.tur === 'im' && this.s.deger === v; }
  bekle(v) { if (!this.im(v)) this.hata(`'${v}' bekleniyordu`); this.i++; }
  /** <Tür<...>> genel tür argümanını atla. */
  turAtla() {
    if (!this.im('<')) return;
    let d = 0;
    do {
      if (this.im('<')) d++;
      else if (this.im('>')) d--;
      this.i++;
    } while (d > 0 && this.i < this.t.length);
  }

  ifade() {
    let v = this.birincil();
    // Bitişik dizgeler zaten birincil'de birleşti. Basit ikili işleçler (ör. a * b) desteklenmez:
    // sabit verilerde yok; çıkarsa açık hata.
    if (this.s && this.s.tur === 'im' && !/^[,)\];}:]$/.test(this.s.deger)) this.hata(`beklenmeyen '${this.s.deger}'`);
    return v;
  }

  birincil() {
    const s = this.s;
    if (!s) this.hata('ifade bitti');
    if (s.tur === 'ad' && (s.deger === 'const' || s.deger === 'final')) { this.i++; return this.birincil(); }
    if (s.tur === 'dizge') {
      let v = '';
      while (this.s?.tur === 'dizge') {
        if (this.s.yerlesim) this.hata('dizge içinde değişken yerleştirme ($) desteklenmiyor');
        v += this.s.deger;
        this.i++;
      }
      return v;
    }
    if (s.tur === 'sayi') { this.i++; return s.deger; }
    if (s.tur === 'im' && s.deger === '-') { this.i++; return -this.birincil(); }
    if (s.tur === 'im' && (s.deger === '<' || s.deger === '[')) {
      this.turAtla();
      return this.liste();
    }
    if (s.tur === 'ad') {
      if (s.deger === 'true') { this.i++; return true; }
      if (s.deger === 'false') { this.i++; return false; }
      if (s.deger === 'null') { this.i++; return null; }
      let ad = s.deger;
      this.i++;
      while (this.im('.') && this.t[this.i + 1]?.tur === 'ad') { ad += '.' + this.t[this.i + 1].deger; this.i += 2; }
      this.turAtla();
      if (this.im('(')) return this.cagri(ad);
      return this.basvuru(ad);
    }
    this.hata(`beklenmeyen sözcük '${s.deger}'`);
  }

  liste() {
    this.bekle('[');
    const v = [];
    while (!this.im(']')) {
      if (this.im('...')) {
        this.i++;
        const e = this.birincil();
        if (Array.isArray(e)) v.push(...e);
      } else {
        v.push(this.ifade());
      }
      if (this.im(',')) this.i++;
      else if (!this.im(']')) this.hata("',' ya da ']' bekleniyordu");
    }
    this.i++;
    return v;
  }

  cagri(ad) {
    this.bekle('(');
    const adli = {};
    const poz = [];
    while (!this.im(')')) {
      if (this.s.tur === 'ad' && this.t[this.i + 1]?.tur === 'im' && this.t[this.i + 1].deger === ':') {
        const k = this.s.deger;
        this.i += 2;
        adli[k] = this.ifade();
      } else {
        poz.push(this.ifade());
      }
      if (this.im(',')) this.i++;
      else if (!this.im(')')) this.hata("',' ya da ')' bekleniyordu");
    }
    this.i++;
    if (ad === 'L10nText' || ad === 'L10nText.same') {
      const o = { tr: ad === 'L10nText.same' ? poz[0] : adli.tr };
      if (adli.en != null) o.en = adli.en;
      if (adli.ar != null) o.ar = adli.ar;
      return o;
    }
    const o = { _tip: ad };
    const adlar = KONUMSAL[ad];
    poz.forEach((p, k) => { o[adlar?.[k] ?? `_${k}`] = p; });
    for (const [k, v] of Object.entries(adli)) o[k] = v;
    return o;
  }

  basvuru(ad) {
    const noktali = ad.split('.');
    if (noktali.length === 2 && enumlar.has(noktali[0])) return noktali[1];
    const v = sabit(ad);
    if (v !== undefined) return v;
    return { _bilinmeyen: ad };
  }
}

// ───────────────────────── Dönüştürme ─────────────────────────

/** Nesneden _tip ve boş alanları at (json'u sade tut). */
function sade(v) {
  if (Array.isArray(v)) return v.map(sade);
  if (v && typeof v === 'object') {
    const o = {};
    for (const [k, x] of Object.entries(v)) {
      if (k === '_tip' || x == null) continue;
      if (Array.isArray(x) && x.length === 0) continue;
      o[k] = sade(x);
    }
    return o;
  }
  return v;
}

const tekDil = (v) => (v && typeof v === 'object' && 'tr' in v ? v.tr : v);

function mekan(y) {
  return sade({
    id: y.id,
    bolge: y.bolge,
    tur: y.tur,
    ad: y.ad,
    arapcaAd: tekDil(y.arapcaAd),
    altBaslik: y.altBaslik,
    sehir: y.sehir,
    konum: { lat: y.konum.lat, lng: y.konum.lng },
    genel: y.genel,
    tarihce: y.tarihce,
    olaylar: y.olaylar,
    fazilet: y.fazilet,
    alintilar: y.alintilar,
    adab: y.adab,
    ziyaretNotu: y.ziyaretNotu,
    uygunSaat: y.uygunSaat,
    ziyaretSuresi: y.ziyaretSuresi,
    uzaklik: y.uzaklik,
    // Uygulamadaki sesli rehber bu anlatım metnini okur; web'de yalnız "var" bilgisi gerekir.
    sesliRehber: Boolean(y.anlatim?.tr),
    kaynaklar: y.kaynaklar,
  });
}

function kapi(k) {
  return sade({
    id: k.id,
    no: k.no,
    ad: k.ad,
    yakin: k.yakin,
    konum: k.konum,
    anlam: k.anlam,
    tarih: k.tarih,
    ipucu: k.ipucu,
    nokta: k.point ? { lat: k.point.lat, lng: k.point.lng } : undefined,
  });
}

const madde = (m) => sade({ baslik: m.baslik, metin: m.metin });
const hat = (h) =>
  sade({ numara: h.numara, nereden: h.nereden, nereye: h.nereye, saat: h.saat, ucret: h.ucret, sefer: h.sefer, duraklar: h.duraklar, notlar: h.notlar });
const bolum = (b) => sade({ baslik: b.baslik, altBaslik: b.altBaslik, ikon: b.ikon, maddeler: (b.maddeler ?? []).map(madde) });

function dua(d) {
  if (!d) return undefined;
  return sade({
    baslik: { tr: d.baslik, en: d.baslikEn, ar: d.baslikAr },
    arapca: d.arapca,
    okunus: { tr: d.okunus, en: d.okunusEn },
    anlam: { tr: d.anlam, en: d.anlamEn },
    kaynak: d.kaynak ? { tr: d.kaynak, en: d.kaynakEn, ar: d.kaynakAr } : undefined,
  });
}

function bilinmeyenleriBul(v, yol, liste) {
  if (Array.isArray(v)) v.forEach((x, i) => bilinmeyenleriBul(x, `${yol}[${i}]`, liste));
  else if (v && typeof v === 'object') {
    if (v._bilinmeyen) liste.push(`${yol} → ${v._bilinmeyen}`);
    for (const [k, x] of Object.entries(v)) bilinmeyenleriBul(x, `${yol}.${k}`, liste);
  }
}

// ───────────────────────── Ana akış ─────────────────────────

async function uret() {
  for (const d of DOSYALAR) {
    const yol = join(uygulama, d);
    tara(sozcukler(await readFile(yol, 'utf8'), d), d);
  }

  const gerekli = (ad) => {
    const v = sabit(ad);
    if (v === undefined) throw new DartHatasi(`sabit bulunamadı: ${ad}`);
    return v;
  };

  // Mekânlar: uygulamadaki kGeziYerleri ile aynı sıra.
  const gruplar = ['kMekkeYerleriA', 'kMekkeYerleriB', 'kMekkeYerleriC', 'kMedineYerleri', 'kMedineYerleriB', 'kDigerYerler', 'kDigerYerleriB'];
  const hamMekanlar = gruplar.flatMap(gerekli);
  const mekanlar = hamMekanlar.map(mekan);

  const km = (ad) => gerekli(`KapiMetin.${ad}`);
  const um = (ad) => gerekli(`UlasimMetin.${ad}`);

  const adimlar = gerekli('umreAdimlari').map((a) =>
    sade({ baslik: a.baslik, kisaBaslik: a.kisaBaslik, yer: a.yer, yapilacaklar: a.yapilacaklar, dikkat: a.dikkat, dua: dua(a.dua) }),
  );

  const veri = {
    _not: 'OTOMATİK ÜRETİLİR (tool/rehber_aktar.mjs). Elle düzenleme; kaynak uygulama deposundaki Dart verisidir.',
    // Uygulamanın gezi ekranı metinleri (sekme adları, bölüm başlıkları): web'de aynı adlar kullanılır.
    arayuz: Object.fromEntries([...sabitler.keys()].filter((k) => k.startsWith('GeziMetin.')).map((k) => [k.slice(10), sabit(k)])),
    mekanlar,
    haremKapilari: {
      baslik: km('baslik'),
      not: km('not'),
      haram: { baslik: km('tabHaram'), kapilar: gerekli('kHaramKapilari').map(kapi) },
      nebevi: { baslik: km('tabNebevi'), kapilar: gerekli('kNebeviKapilari').map(kapi) },
    },
    ulasim: {
      baslik: um('baslik'),
      ustNot: um('ustNot'),
      mekke: { baslik: um('tabMekke'), genel: gerekli('kMekkeGenel').map(madde), hatlar: gerekli('kMekkeHatlari').map(hat), ek: gerekli('kMekkeEk').map(bolum) },
      medine: { baslik: um('tabMedine'), genel: gerekli('kMedineGenel').map(madde), hatlar: gerekli('kMedineHatlari').map(hat), ek: gerekli('kMedineEk').map(bolum) },
      sehirlerarasi: {
        baslik: um('tabSehirlerarasi'),
        genel: gerekli('kTrenGenel').map(madde),
        istasyonlar: gerekli('kTrenIstasyonlari').map(bolum),
        otobus: gerekli('kOtobusSirketleri').map(bolum),
        havalimani: gerekli('kHavalimaniBolumleri').map(bolum),
      },
      taksi: { baslik: um('tabTaksi'), bolumler: gerekli('kTaksiBolumleri').map(bolum) },
    },
    umreAdimlari: adimlar,
  };

  const bilinmeyen = [];
  bilinmeyenleriBul(veri, 'veri', bilinmeyen);
  if (bilinmeyen.length) throw new DartHatasi(`çözülemeyen başvurular:\n  ${bilinmeyen.join('\n  ')}`);

  // Basit tutarlılık denetimleri
  const idler = new Set();
  for (const m of mekanlar) {
    if (!m.id || !m.ad?.tr || !m.konum?.lat || !m.genel?.tr) throw new DartHatasi(`eksik alanlı mekân: ${m.id}`);
    if (idler.has(m.id)) throw new DartHatasi(`yinelenen mekân kimliği: ${m.id}`);
    idler.add(m.id);
  }
  return veri;
}

const ornekDosya = join(uygulama, DOSYALAR[0]);
if (!existsSync(ornekDosya)) {
  console.warn(`[rehber_aktar] uygulama deposu bulunamadı, mevcut kopya kullanılıyor: ${hedef}`);
} else {
  const veri = await uret();
  await mkdir(dirname(hedef), { recursive: true });
  await writeFile(hedef, JSON.stringify(veri, null, 1) + '\n', 'utf8');
  const say = (b) => veri.mekanlar.filter((m) => m.bolge === b).length;
  console.log(
    `[rehber_aktar] ${veri.mekanlar.length} mekân (Mekke ${say('mekke')}, Medine ${say('medine')}, diğer ${say('diger')}), ` +
      `${veri.haremKapilari.haram.kapilar.length}+${veri.haremKapilari.nebevi.kapilar.length} kapı, ` +
      `${veri.umreAdimlari.length} umre adımı → site/src/data/rehber.json`,
  );
}

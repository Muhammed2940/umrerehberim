// Rehber mekân fotoğraflarını açık lisanslı kaynaklardan indirir, 16:9 webp'ye çevirir ve lisans bilgisini yazar.
// Girdi:  fotograflar/mekan/<mekan-adı>.jpg (kendi fotoğraflarımız, önceliklidir) ve tool/mekan_foto_liste.json
//   { "<mekan_id>": "Commons dosya adı" }                 → Wikimedia Commons
//   { "<mekan_id>": { "openverse": "<görsel uuid>" } }    → Openverse (çoğunlukla Flickr)
// Çıktı:  site/public/img/rehber/mekan/<slug>.webp  +  site/src/data/mekan-foto.json
// Çalıştırma: cd site && node ../tool/mekan_foto.mjs   (ağ gerekir; derlemede çalışmaz, sonuç depoya girer)
// Yalnız ticari kullanıma ve düzenlemeye izin veren lisanslar (CC BY, CC BY-SA, CC0, kamu malı) kabul edilir.
// Daha önce inmiş ve listede aynı kalan dosyalar atlanır; hata olan mekân atlanır, sonraki çalıştırmada denenir.
import fs from 'node:fs';
import path from 'node:path';
import { createRequire } from 'node:module';
import { fileURLToPath } from 'node:url';

const kok = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const require = createRequire(path.join(kok, 'site', 'package.json'));
const sharp = require('sharp');
sharp.cache(false);

const UA = { 'User-Agent': 'UmreRehberimSiteBuild/1.0 (static site image import)' };
const liste = JSON.parse(fs.readFileSync(path.join(kok, 'tool', 'mekan_foto_liste.json'), 'utf8'));
const hedefKlasor = path.join(kok, 'site', 'public', 'img', 'rehber', 'mekan');
const veriYolu = path.join(kok, 'site', 'src', 'data', 'mekan-foto.json');
fs.mkdirSync(hedefKlasor, { recursive: true });

const bekle = (ms) => new Promise((r) => setTimeout(r, ms));
const etiketsiz = (s = '') =>
  s
    .replace(/<[^>]*>/g, ' ')
    .replace(/&amp;/g, '&')
    .replace(/&quot;/g, '"')
    .replace(/&#0?39;/g, "'")
    .replace(/\s+/g, ' ')
    .trim();
const ozgur = (l) => /^(cc[ -]by|cc0|public domain|pd)/i.test(l) && !/nc|nd/i.test(l);
const kimlik = (g) => (typeof g === 'string' ? `commons:${g}` : `openverse:${g.openverse}`);

async function getir(url, deneme = 0) {
  const r = await fetch(url, { headers: UA });
  if (r.status === 429 || (r.headers.get('content-type') ?? '').startsWith('text/plain')) {
    if (deneme > 2) throw new Error(`istek sınırı: ${url}`);
    await bekle(20000 * (deneme + 1));
    return getir(url, deneme + 1);
  }
  if (!r.ok) throw new Error(`HTTP ${r.status}: ${url}`);
  return r;
}

/** Kaynağa göre { indir, yazar, lisans, lisansUrl, kaynak, site } döndürür. */
async function commonsBilgi(dosyalar) {
  if (!dosyalar.length) return {};
  const u =
    'https://commons.wikimedia.org/w/api.php?action=query&format=json&prop=imageinfo&iiprop=url|extmetadata&iiurlwidth=1400&titles=' +
    encodeURIComponent(dosyalar.map((d) => `File:${d}`).join('|'));
  const j = await (await getir(u)).json();
  const norm = Object.fromEntries((j.query.normalized ?? []).map((n) => [n.from, n.to]));
  const sayfalar = Object.values(j.query.pages);
  const sonuc = {};
  for (const d of dosyalar) {
    const ii = sayfalar.find((p) => p.title === (norm[`File:${d}`] ?? `File:${d}`))?.imageinfo?.[0];
    if (!ii) continue;
    const md = ii.extmetadata ?? {};
    sonuc[d] = {
      indir: ii.thumburl ?? ii.url,
      yazar: etiketsiz(md.Artist?.value) || 'Wikimedia Commons',
      lisans: etiketsiz(md.LicenseShortName?.value),
      lisansUrl: md.LicenseUrl?.value ?? '',
      kaynak: ii.descriptionurl,
      site: 'Wikimedia Commons',
    };
  }
  return sonuc;
}

async function openverseBilgi(uuid) {
  const x = await (await getir(`https://api.openverse.org/v1/images/${uuid}/`)).json();
  const lisans = x.license === 'cc0' ? 'CC0 1.0' : x.license === 'pdm' ? 'Public Domain' : `CC ${x.license.toUpperCase()} ${x.license_version}`;
  const site = { flickr: 'Flickr', wordpress: 'WordPress Photo Directory' }[x.source] ?? x.source;
  return { indir: x.url, yazar: x.creator || site, lisans, lisansUrl: x.license_url ?? '', kaynak: x.foreign_landing_url, site };
}

const girdiler = Object.entries(liste);
const onceki = fs.existsSync(veriYolu) ? JSON.parse(fs.readFileSync(veriYolu, 'utf8')) : {};
const slugYolu = (id) => path.join(hedefKlasor, `${id.replace(/_/g, '-')}.webp`);
const hazir = (id, g) => onceki[id]?.kaynakKimlik === kimlik(g) && fs.existsSync(slugYolu(id));

let commons = {};
try {
  commons = await commonsBilgi(girdiler.filter(([id, g]) => typeof g === 'string' && !hazir(id, g)).map(([, g]) => g));
} catch (e) {
  console.warn(`! Commons bilgisi alınamadı (${e.message.slice(0, 60)}); Commons girdileri atlanıyor`);
}

const sonuc = {};
const yaz = () => fs.writeFileSync(veriYolu, JSON.stringify(sonuc, null, 2) + '\n');

// 1) Kendi fotoğraflarımız: fotograflar/mekan/<mekan-adı>.jpg|jpeg|png|webp (listedeki kaynağın önüne geçer).
//    Kaynak/lisans satırı gösterilmez (hak bizde).
const yerelKlasor = path.join(kok, 'fotograflar', 'mekan');
const mekanIdleri = new Set(JSON.parse(fs.readFileSync(path.join(kok, 'site', 'src', 'data', 'rehber.json'), 'utf8')).mekanlar.map((m) => m.id));
const yerel = new Set();
for (const f of fs.existsSync(yerelKlasor) ? fs.readdirSync(yerelKlasor) : []) {
  const m = f.match(/^(.+)\.(jpe?g|png|webp)$/i);
  if (!m) continue;
  const id = m[1].toLowerCase().replace(/-/g, '_');
  if (!mekanIdleri.has(id)) {
    console.warn(`✗ ${f}: böyle bir mekân yok (fotograflar/mekan/BENIOKU.md'deki adlara bakın)`);
    continue;
  }
  const kaynakYol = path.join(yerelKlasor, f);
  const k = `yerel:${f}:${fs.statSync(kaynakYol).mtimeMs}`;
  yerel.add(id);
  if (onceki[id]?.kaynakKimlik === k && fs.existsSync(slugYolu(id))) {
    sonuc[id] = onceki[id];
    continue;
  }
  await sharp(fs.readFileSync(kaynakYol)).rotate().resize(960, 540, { fit: 'cover', position: 'attention' }).webp({ quality: 72 }).toFile(slugYolu(id));
  sonuc[id] = { dosya: `/img/rehber/mekan/${id.replace(/_/g, '-')}.webp`, yazar: '', lisans: '', lisansUrl: '', kaynak: '', site: '', kaynakKimlik: k };
  yaz();
  console.log(`✓ ${id}  kendi fotoğrafımız (${f})`);
}

// 2) Açık lisanslı kaynaklar (kendi fotoğrafı olan mekânlar atlanır)
for (const [id, g] of girdiler) {
  if (yerel.has(id)) continue;
  if (hazir(id, g)) {
    sonuc[id] = onceki[id];
    continue;
  }
  try {
    const b = typeof g === 'string' ? commons[g] : await openverseBilgi(g.openverse);
    if (!b) throw new Error('dosya bilgisi yok');
    if (!ozgur(b.lisans)) throw new Error(`uygun olmayan lisans: ${b.lisans}`);
    const ham = Buffer.from(await (await getir(b.indir)).arrayBuffer());
    await sharp(ham).rotate().resize(960, 540, { fit: 'cover', position: 'attention' }).webp({ quality: 70 }).toFile(slugYolu(id));
    sonuc[id] = {
      dosya: `/img/rehber/mekan/${id.replace(/_/g, '-')}.webp`,
      yazar: b.yazar,
      lisans: b.lisans,
      lisansUrl: b.lisansUrl,
      kaynak: b.kaynak,
      site: b.site,
      kaynakKimlik: kimlik(g),
    };
    yaz();
    console.log(`✓ ${id}  ${b.site}  ${b.lisans}  ${b.yazar.slice(0, 50)}`);
  } catch (e) {
    if (onceki[id] && fs.existsSync(slugYolu(id))) sonuc[id] = onceki[id]; // eskisi kalsın
    console.warn(`✗ ${id}: ${e.message.slice(0, 90)}`);
  }
  await bekle(typeof g === 'string' ? 6000 : 1200);
}

yaz();
console.log(`\n${Object.keys(sonuc).length}/${girdiler.length} fotoğraf hazır → ${path.relative(kok, veriYolu)}`);

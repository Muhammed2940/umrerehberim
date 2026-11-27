// GitHub Pages kopyası: site/dist → site/dist-gh, kök yollara BASE öneki eklenir.
// Plesk derlemesine dokunmaz (orada site kökte çalışır). Kullanım:
//   cd site && npm run build && node ../tool/gh_pages.mjs [/umrerehberim]
import { cp, readdir, readFile, rm, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { fileURLToPath } from 'node:url';

const BASE = (process.argv[2] || '/umrerehberim').replace(/\/$/, '');
const site = fileURLToPath(new URL('../site/', import.meta.url));
const kaynak = join(site, 'dist');
const hedef = join(site, 'dist-gh');

await rm(hedef, { recursive: true, force: true });
await cp(kaynak, hedef, { recursive: true });
await rm(join(hedef, '.htaccess'), { force: true }); // Apache'ye özgü
await writeFile(join(hedef, '.nojekyll'), ''); // _astro klasörü yayından düşmesin

const onek = (u) => (u.startsWith('/') && !u.startsWith('//') ? BASE + u : u);

function html(metin) {
  // Yalnız gezinme/varlık öznitelikleri; data-uc gibi API yollarına dokunulmaz.
  metin = metin.replace(/\b(href|src|action|poster)="(\/[^"]*)"/g, (_, a, u) => `${a}="${onek(u)}"`);
  metin = metin.replace(/\bsrcset="([^"]*)"/g, (_, v) =>
    `srcset="${v.split(',').map((p) => p.trim().replace(/^\S+/, onek)).join(', ')}"`,
  );
  return css(metin);
}

function css(metin) {
  return metin.replace(/url\((["']?)(\/[^)"']*)\1\)/g, (_, q, u) => `url(${q}${onek(u)}${q})`);
}

async function gez(dizin) {
  for (const g of await readdir(dizin, { withFileTypes: true })) {
    const yol = join(dizin, g.name);
    if (g.isDirectory()) await gez(yol);
    else if (g.name.endsWith('.html')) {
      let m = html(await readFile(yol, 'utf8'));
      // 404 sayfasının dil seçicisi /en/404/ gibi var olmayan yollara gider: dilin ana sayfasına çevir.
      if (g.name === '404.html') m = m.replace(new RegExp(`${BASE}/((?:en|ar)/)?404/`, 'g'), `${BASE}/$1`);
      await writeFile(yol, m);
    }
    else if (g.name.endsWith('.css')) await writeFile(yol, css(await readFile(yol, 'utf8')));
  }
}

await gez(hedef);
console.log(`GitHub Pages kopyası hazır: ${hedef} (BASE=${BASE})`);

// Uygulama deposundaki tek-kaynak verileri web'e kopyalar (uygulama deposu yalnız OKUNUR).
//   node tool/veri_aktar.mjs
// Uygulama deposu bu makinede yoksa sessizce mevcut kopyayla devam eder.
import { existsSync } from 'node:fs';
import { copyFile, mkdir } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';

const kok = join(dirname(fileURLToPath(import.meta.url)), '..');
const uygulama = process.env.UMRE_APP_DIR ?? 'C:/dev/umrerehberim';

const dosyalar = [
  ['lib/l10n/parts/paketler.json', 'site/src/data/paketler.json'],
];

for (const [kaynak, hedef] of dosyalar) {
  const k = join(uygulama, kaynak);
  const h = join(kok, hedef);
  if (!existsSync(k)) {
    console.warn(`[veri_aktar] bulunamadı, mevcut kopya kullanılıyor: ${k}`);
    continue;
  }
  await mkdir(dirname(h), { recursive: true });
  await copyFile(k, h);
  console.log(`[veri_aktar] ${kaynak} → ${hedef}`);
}

// Günlük döviz kurunu (TRY → EUR, USD) derleme anında site/src/data/kur.json dosyasına yazar.
//   node tool/kur_aktar.mjs
// Kaynak: Frankfurter (Avrupa Merkez Bankası referans kurları, anahtarsız). Kur her iş günü bir kez güncellenir.
// İnternet yoksa veya servis yanıt vermezse mevcut kur.json korunur, derleme durmaz.
import { existsSync } from 'node:fs';
import { mkdir, writeFile } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';

const kok = join(dirname(fileURLToPath(import.meta.url)), '..');
const hedef = join(kok, 'site/src/data/kur.json');
const URL_KUR = 'https://api.frankfurter.dev/v1/latest?base=TRY&symbols=EUR,USD';

try {
  const yanit = await fetch(URL_KUR, { signal: AbortSignal.timeout(10_000) });
  if (!yanit.ok) throw new Error(`HTTP ${yanit.status}`);
  const v = await yanit.json();
  const { EUR, USD } = v.rates ?? {};
  if (!(EUR > 0) || !(USD > 0) || !v.date) throw new Error('beklenmeyen yanıt');
  await mkdir(dirname(hedef), { recursive: true });
  await writeFile(hedef, JSON.stringify({ tarih: v.date, taban: 'TRY', kurlar: { EUR, USD } }, null, 2) + '\n');
  console.log(`[kur_aktar] ${v.date}: 1 TRY = ${EUR} EUR, ${USD} USD → site/src/data/kur.json`);
} catch (e) {
  if (!existsSync(hedef)) {
    // İlk derlemede hiç kur yoksa boş dosya: site paketler.json'daki sabit fiyatları gösterir.
    await mkdir(dirname(hedef), { recursive: true });
    await writeFile(hedef, JSON.stringify({ tarih: null, taban: 'TRY', kurlar: {} }, null, 2) + '\n');
  }
  console.warn(`[kur_aktar] kur alınamadı (${e.message}), mevcut kur.json kullanılıyor`);
}

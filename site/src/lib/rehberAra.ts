// Rehber araması: hem derlemede (kartların data-ara özniteliği) hem tarayıcıda (sorgu) aynı
// biçimde sadeleştirir. Büyük/küçük harf, Türkçe ı/İ, şapka/aksan, Arapça harekeler ve
// tire/kesme işaretleri yok sayılır. Bu dosya istemciye de gider: veri (json) İÇE AKTARMA.

export function aramaAnahtari(s: string): string {
  return s
    .toLocaleLowerCase('tr')
    .replace(/ı/g, 'i')
    .normalize('NFD')
    // Latin birleşik işaretler + Arapça hareke/tatvil (NFD ile ayrılan hemze dahil)
    .replace(/[̀-ًͯ-ٰٟۖ-ۭـ]/g, '')
    .replace(/[ىی]/g, 'ي')
    .replace(/ة/g, 'ه')
    .replace(/[^\p{L}\p{N}]+/gu, ' ')
    .trim();
}

/** Sorgunun her sözcüğü anahtarda geçiyorsa eşleşir. */
export function eslesir(anahtar: string, sorgu: string): boolean {
  const q = aramaAnahtari(sorgu);
  if (!q) return true;
  return q.split(' ').every((p) => anahtar.includes(p));
}

export const BOLGELER = ['mekke', 'medine', 'diger'] as const;
export type Bolge = (typeof BOLGELER)[number];

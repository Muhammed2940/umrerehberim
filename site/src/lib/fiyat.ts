// Paket fiyatının döviz karşılığı. Fiyatın aslı TL: paketler.json'un TR metni ("349,99 TL").
// TR sayfasında metin aynen; EN/AR'da TL tutarı günlük kurla (data/kur.json) çevrilir.
// Full Umre gibi TL olmayan fiyatlar ("1.500 $") çevrilmez, paketler.json metni aynen kalır.
// Bu dosya tarayıcıya da gider (KurGuncelle.astro): paketler.json'u İÇE AKTARMAZ.

export type ParaBirimi = 'EUR' | 'USD';
export type Kurlar = Partial<Record<ParaBirimi, number>>;

/** "349,99 TL" / "1.500 TL" / "0 TL" → 349.99 / 1500 / 0. TL değilse null. */
export function tlTutar(metin: string): number | null {
  const m = metin.trim().match(/^([\d.]+(?:,\d+)?)\s*TL$/);
  if (!m) return null;
  const n = Number(m[1].replace(/\./g, '').replace(',', '.'));
  return Number.isFinite(n) ? n : null;
}

/** Tutarı dile göre para biçimiyle yazar. AR'da rakamlar Latin (uygulamadaki gibi: "9.99 €"). */
export function dovizMetni(dil: 'en' | 'ar', tutar: number, pb: ParaBirimi): string {
  const yerel = dil === 'ar' ? 'ar-u-nu-latn' : 'en';
  const tam = tutar === 0;
  return new Intl.NumberFormat(yerel, {
    style: 'currency',
    currency: pb,
    minimumFractionDigits: tam ? 0 : 2,
    maximumFractionDigits: tam ? 0 : 2,
  })
    .format(tutar)
    .replace(/[‎‏؜]/g, ''); // yön işaretleri: metin zaten <bdi> içinde
}

/** TL tutarını kurla çevirir; kur yoksa null (çağıran sabit metne düşer). */
export function cevir(tl: number, pb: ParaBirimi, kurlar: Kurlar): number | null {
  const k = kurlar[pb];
  return k && k > 0 ? tl * k : null;
}

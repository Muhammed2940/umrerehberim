import tr from './tr.json';
import en from './en.json';
import ar from './ar.json';
import paketler from '../data/paketler.json';

export const DILLER = ['tr', 'en', 'ar'] as const;
export type Dil = (typeof DILLER)[number];
export const VARSAYILAN: Dil = 'tr';

export const DIL_ADI: Record<Dil, string> = { tr: 'Türkçe', en: 'English', ar: 'العربية' };
export const YON: Record<Dil, 'ltr' | 'rtl'> = { tr: 'ltr', en: 'ltr', ar: 'rtl' };
/** Open Graph yerel kodları */
export const OG_YEREL: Record<Dil, string> = { tr: 'tr_TR', en: 'en_US', ar: 'ar_SA' };

const sozluk = { tr, en, ar } as const;

/** Nokta yollu anahtarla metin: t('nav.destek'). Eksikse TR'ye, o da yoksa anahtara düşer. */
export function cevirmen(dil: Dil) {
  return (anahtar: string): string => {
    const bul = (kaynak: unknown) =>
      anahtar.split('.').reduce<any>((o, k) => (o == null ? undefined : o[k]), kaynak);
    const v = bul(sozluk[dil]) ?? bul(sozluk[VARSAYILAN]);
    return typeof v === 'string' ? v : anahtar;
  };
}

type PaketAnahtar = keyof typeof paketler;
/** Uygulamanın paketler.json metni (tek kaynak). */
export function paket(dil: Dil, anahtar: PaketAnahtar): string {
  const v = paketler[anahtar] as Record<Dil, string> | undefined;
  return v?.[dil] ?? v?.tr ?? String(anahtar);
}

/** Dil öneki olmayan yol ('/yasal/gizlilik') → dile göre yol ('/en/yasal/gizlilik'). */
export function yol(dil: Dil, yalin = '/'): string {
  let p = yalin.startsWith('/') ? yalin : `/${yalin}`;
  // trailingSlash: 'always' (Apache dizin yapısıyla aynı); çapalı yollara dokunma.
  if (!p.includes('#') && !p.endsWith('/')) p += '/';
  if (dil === VARSAYILAN) return p;
  return p === '/' ? `/${dil}/` : `/${dil}${p}`;
}

/** Geçerli URL yolundan dil önekini ayıklar: '/ar/destek/' → { dil: 'ar', yalin: '/destek/' } */
export function cozumle(pathname: string): { dil: Dil; yalin: string } {
  const m = pathname.match(/^\/(en|ar)(\/.*)?$/);
  if (m) return { dil: m[1] as Dil, yalin: m[2] || '/' };
  return { dil: VARSAYILAN, yalin: pathname || '/' };
}

/** [...dil] dinamik rotaları için getStaticPaths: TR kökte (undefined), EN /en, AR /ar */
export function dilYollari() {
  return DILLER.map((d) => ({ params: { dil: d === VARSAYILAN ? undefined : d }, props: { dil: d } }));
}

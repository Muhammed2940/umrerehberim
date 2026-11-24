// Mekke–Medine rehber verisi (yalnız derleme anında; istemciye gitmez).
// Kaynak: data/rehber.json ← tool/rehber_aktar.mjs ← uygulama deposundaki Dart verisi (tek kaynak).
import veri from '../data/rehber.json';
import fotoVeri from '../data/mekan-foto.json';
import type { Dil } from '../i18n';
import { aramaAnahtari, type Bolge } from './rehberAra';

export type L10n = { tr: string; en?: string; ar?: string };

export interface Mekan {
  id: string;
  bolge: Bolge;
  tur: string;
  ad: L10n;
  arapcaAd: string;
  altBaslik: L10n;
  sehir: L10n;
  konum: { lat: number; lng: number };
  genel: L10n;
  tarihce: L10n;
  olaylar?: { tarih: L10n; metin: L10n }[];
  fazilet?: L10n;
  alintilar?: { arapca: string; meal: L10n; kaynak: L10n }[];
  adab?: L10n[];
  ziyaretNotu?: L10n;
  uygunSaat?: L10n;
  ziyaretSuresi?: L10n;
  uzaklik?: L10n;
  sesliRehber: boolean;
  kaynaklar?: { baslik: string; url: string }[];
}

export const REHBER = veri as unknown as {
  arayuz: Record<string, L10n>;
  mekanlar: Mekan[];
  haremKapilari: {
    baslik: L10n;
    not: L10n;
    haram: { baslik: L10n; kapilar: Kapi[] };
    nebevi: { baslik: L10n; kapilar: Kapi[] };
  };
  ulasim: {
    baslik: L10n;
    ustNot: L10n;
    mekke: SehirUlasim;
    medine: SehirUlasim;
    sehirlerarasi: { baslik: L10n; genel: Madde[]; istasyonlar: Bolum[]; otobus: Bolum[]; havalimani: Bolum[] };
    taksi: { baslik: L10n; bolumler: Bolum[] };
  };
  umreAdimlari: Adim[];
};

export interface Kapi {
  id: string;
  no?: string;
  ad: L10n;
  yakin: L10n;
  konum: L10n;
  anlam: L10n;
  tarih?: L10n;
  ipucu?: L10n;
}
export interface Madde { baslik?: L10n; metin: L10n }
export interface Bolum { baslik: L10n; altBaslik?: L10n; maddeler: Madde[] }
export interface Hat { numara: string; nereden: L10n; nereye: L10n; saat?: L10n; ucret?: L10n; duraklar?: L10n[] }
export interface SehirUlasim { baslik: L10n; genel: Madde[]; hatlar: Hat[]; ek: Bolum[] }
export interface Dua {
  baslik?: L10n;
  arapca?: string;
  okunus: { tr: string; en?: string };
  anlam: { tr: string; en?: string };
  kaynak?: L10n;
}
export interface Adim { baslik: L10n; kisaBaslik: L10n; yer: L10n; yapilacaklar: L10n[]; dikkat?: L10n[]; dua?: Dua }

export const MEKANLAR = REHBER.mekanlar;

/** Uygulamadaki L10nText.forCode ile aynı: ar → en → tr, en → tr. */
export function m(x: L10n | undefined | null, dil: Dil): string {
  if (!x) return '';
  if (dil === 'ar') return x.ar ?? x.en ?? x.tr;
  if (dil === 'en') return x.en ?? x.tr;
  return x.tr;
}

/** Duada okunuş/anlam: Arapçada gösterilmez (uygulamadaki DuaMetni gibi), İngilizcede yoksa gizlenir. */
export function duaDil(x: { tr: string; en?: string } | undefined, dil: Dil): string | undefined {
  if (!x) return undefined;
  if (dil === 'ar') return undefined;
  return dil === 'en' ? x.en : x.tr;
}

/** Bu metnin o dilde gerçekten çevirisi var mı (yoksa lang özniteliğiyle işaretlemek için). */
export function metinDili(x: L10n | undefined, dil: Dil): Dil {
  if (!x || dil === 'tr') return 'tr';
  if (dil === 'en') return x.en ? 'en' : 'tr';
  return x.ar ? 'ar' : x.en ? 'en' : 'tr';
}

export const paragraflar = (x: L10n | undefined, dil: Dil) =>
  m(x, dil)
    .split(/\n\s*\n/)
    .map((p) => p.trim())
    .filter(Boolean);

export const arayuz = (anahtar: string, dil: Dil) => m(REHBER.arayuz[anahtar], dil);

/** URL parçası: mescid_i_haram → mescid-i-haram */
export const mekanSlug = (id: string) => id.replace(/_/g, '-');

/** Arama anahtarı: üç dildeki ad, Arapça ad, alt başlık ve şehir. */
export function mekanAramaAnahtari(y: Mekan): string {
  const parca = [y.ad, y.altBaslik, y.sehir].flatMap((x) => [x.tr, x.en ?? '', x.ar ?? '']);
  return aramaAnahtari([...parca, y.arapcaAd].join(' '));
}

/**
 * Mekân fotoğrafları: data/mekan-foto.json ← tool/mekan_foto.mjs (Wikimedia Commons, özgür lisanslı).
 * Fotoğrafı olmayan mekânda ikonlu yer tutucu gösterilir. Lisans gereği yazar ve lisans mekân sayfasında yazılır.
 */
export interface MekanFoto {
  dosya: string;
  yazar: string;
  lisans: string;
  lisansUrl: string;
  kaynak: string;
  site: string;
}
export const MEKAN_FOTO_BILGI: Record<string, MekanFoto> = fotoVeri as Record<string, MekanFoto>;
/** Onaylı referans görselden kırpılmış fotoğraflar (Commons'takilerin önüne geçer; kaynak satırı yok). */
const REFERANS_FOTO: Record<string, string> = {
  mescid_i_haram: '/img/rehber/mescid-i-haram.webp',
  mescid_i_nebevi: '/img/rehber/mescid-i-nebevi.webp',
};
export const MEKAN_FOTO: Record<string, string> = {
  ...Object.fromEntries(Object.entries(MEKAN_FOTO_BILGI).map(([id, f]) => [id, f.dosya])),
  ...REFERANS_FOTO,
};

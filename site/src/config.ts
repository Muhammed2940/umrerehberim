// Sitenin TEK ayar dosyası. Alan adı belli olunca yalnız ALAN değişir.
// Gizli bilgi (anahtar, şifre, servis hesabı) buraya GİRMEZ: bu dosya tarayıcıya giden koda da girer.

/** Alan adı yer tutucusu. Örn. 'umrerehberim.com' */
export const ALAN = 'ALAN';

export const SITE_URL = `https://www.${ALAN}`;
export const API_URL = `https://api.${ALAN}`;

export const SITE_ADI = 'Umre Rehberim';

/** Firebase projesi (yalnız herkese açık platform_settings/app okuması için, derleme anında). */
export const FIREBASE_PROJE = 'umrerehberim-cc99e';

/** Mağaza bağlantıları. Boşsa rozet "Yakında" görünür. (SAHİP) */
export const MAGAZA = {
  play: '', // https://play.google.com/store/apps/details?id=...
  appStore: '', // https://apps.apple.com/app/...
};

/**
 * Şirket bilgileri (SAHİP). Köşeli parantezli değerler yer tutucudur;
 * yasal sayfalarda ve altbilgide aynen görünür, doldurulunca her yerde güncellenir.
 */
export const SIRKET = {
  unvan: '[ŞİRKET UNVANI]',
  adres: '[ŞİRKET ADRESİ]',
  vergiDairesiNo: '[VERGİ DAİRESİ / NO]',
  mersis: '[MERSİS NO]',
  kvkkEposta: 'kvkk@umrerehberim.com', // onaylı KVKK görseli (11-kvkk)
};

/**
 * Destek bilgileri: derlemede Firestore `platform_settings/app` belgesinden çekilir
 * (src/lib/destek.ts). Çekilemezse bu yedek değerler kullanılır.
 */
export const DESTEK_YEDEK = {
  telefon1: '0555 021 6974', // kullanıcı onayı (2026-11-24)
  telefon2: '',
  whatsapp: '',
  eposta1: 'destek@umrerehberim.com', // onaylı destek görseli (09-destek)
  eposta2: '',
};

/** Yasal metinlerin son güncelleme tarihi (avukat onayından sonra güncellenir). */
export const YASAL_TARIH = '2026-11-24';

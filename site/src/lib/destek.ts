// Destek bilgileri derleme anında Firestore `platform_settings/app` belgesinden (herkese açık okuma)
// REST ile çekilir. Kimlik bilgisi gerekmez; çekilemezse config.ts'teki yedek kullanılır.
// Canlıda değişirse siteyi yeniden derleyin.
import { DESTEK_YEDEK, FIREBASE_PROJE } from '../config';

export type Destek = typeof DESTEK_YEDEK;

let onbellek: Promise<Destek> | undefined;

export function destekBilgisi(): Promise<Destek> {
  return (onbellek ??= cek());
}

async function cek(): Promise<Destek> {
  if (process.env.DESTEK_CEKME === '0') return DESTEK_YEDEK;
  const url = `https://firestore.googleapis.com/v1/projects/${FIREBASE_PROJE}/databases/(default)/documents/platform_settings/app`;
  try {
    const yanit = await fetch(url, { signal: AbortSignal.timeout(8000) });
    if (!yanit.ok) throw new Error(`HTTP ${yanit.status}`);
    const belge = (await yanit.json()) as { fields?: Record<string, { stringValue?: string }> };
    const f = belge.fields ?? {};
    const al = (k: string, yedek: string) => f[k]?.stringValue?.trim() || yedek;
    const sonuc: Destek = {
      telefon1: al('support_phone_1', DESTEK_YEDEK.telefon1),
      telefon2: al('support_phone_2', DESTEK_YEDEK.telefon2),
      whatsapp: al('support_whatsapp', DESTEK_YEDEK.whatsapp),
      eposta1: al('support_email_1', DESTEK_YEDEK.eposta1),
      eposta2: al('support_email_2', DESTEK_YEDEK.eposta2),
    };
    console.log('[destek] platform_settings/app okundu');
    return sonuc;
  } catch (e) {
    console.warn(`[destek] platform_settings/app okunamadı, yedek kullanılıyor: ${(e as Error).message}`);
    return DESTEK_YEDEK;
  }
}

/** tel: bağlantısı: yalnız rakam ve baştaki +; yurt dışından da aranabilsin diye baştaki tek 0 → +90 */
export const telHref = (n: string) => `tel:${n.replace(/[^\d+]/g, '').replace(/^0(?=[1-9])/, '+90')}`;
/** wa.me bağlantısı yalnız rakam ister */
export const waHref = (n: string) => `https://wa.me/${n.replace(/\D/g, '')}`;

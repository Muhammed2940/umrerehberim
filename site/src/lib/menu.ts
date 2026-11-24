// Ortak menü: başlık çubuğu, mobil menü ve altbilgi aynı listeden beslenir.
// Sıra onaylı ana sayfa görseliyle aynı.
import { cevirmen, yol, type Dil } from '../i18n';

export function anaMenu(dil: Dil) {
  const t = cevirmen(dil);
  return [
    { ad: t('nav.anaSayfa'), yalin: '/' },
    { ad: t('nav.paketler'), yalin: '/paketler/' },
    { ad: t('nav.rehber'), yalin: '/rehber/' },
    { ad: t('nav.acente'), yalin: '/acente/' },
    { ad: t('nav.esnaf'), yalin: '/esnaf/' },
    { ad: t('nav.destek'), yalin: '/destek/' },
    { ad: t('nav.hakkimizda'), yalin: '/hakkimizda/' },
  ].map((m) => ({ ...m, href: yol(dil, m.yalin) }));
}

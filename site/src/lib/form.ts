// Ortak form davranışı: istemci doğrulaması, umre-api'ye POST, durum gösterimi.
// Tarayıcı Firestore'a YAZMAZ; her form api.ALAN/v1/web/... uç noktasına gider (MIMARI.md §6).
// Kişisel veri yalnız POST gövdesinde gider, URL'ye konmaz.
//
// İşaretleme (Form.astro üretir):
//   <form data-form data-uc="/v1/web/lead" data-tur="acente"> ... </form>
//   alanlar: required / type=email / type=tel; hata kutusu: <p data-hata-icin="alanAdi">
//   durum kutuları: [data-durum="basari"|"hata"], gönder düğmesi: [data-gonder]
import { API_URL } from '../config';

const EN_AZ_SURE_MS = 3000; // botlara karşı: 3 sn'den hızlı doldurulan form reddedilir

type Metinler = { zorunlu: string; eposta: string; telefon: string; kvkk: string; dosya: string };

function hataGoster(form: HTMLFormElement, ad: string, mesaj: string) {
  const kutu = form.querySelector<HTMLElement>(`[data-hata-icin="${ad}"]`);
  const alan = form.elements.namedItem(ad) as HTMLInputElement | null;
  if (kutu) {
    kutu.textContent = mesaj;
    kutu.hidden = !mesaj;
  }
  if (alan && 'setAttribute' in alan) {
    if (mesaj) alan.setAttribute('aria-invalid', 'true');
    else alan.removeAttribute('aria-invalid');
  }
}

function dogrula(form: HTMLFormElement, m: Metinler): HTMLElement | null {
  let ilkHata: HTMLElement | null = null;
  const alanlar = form.querySelectorAll<HTMLInputElement | HTMLSelectElement | HTMLTextAreaElement>('input, select, textarea');
  for (const a of alanlar) {
    if (!a.name || a.name === 'hp' || a.type === 'hidden') continue;
    let mesaj = '';
    const deger = a instanceof HTMLInputElement && a.type === 'checkbox' ? (a.checked ? 'x' : '') : a.value.trim();
    if (a.required && !deger) {
      mesaj = a instanceof HTMLInputElement && a.type === 'checkbox' && a.name === 'kvkk' ? m.kvkk : m.zorunlu;
    } else if (deger && a.type === 'email' && !/^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/.test(deger)) {
      mesaj = m.eposta;
    } else if (deger && a.type === 'tel' && deger.replace(/\D/g, '').length < 10) {
      mesaj = m.telefon;
    } else if (a instanceof HTMLInputElement && a.type === 'file' && a.files?.[0]) {
      const azami = Number(a.dataset.azamiMb || 10) * 1024 * 1024;
      if (a.files[0].size > azami) mesaj = m.dosya;
    }
    hataGoster(form, a.name, mesaj);
    if (mesaj && !ilkHata) ilkHata = a;
  }
  return ilkHata;
}

export function formlariBaslat() {
  for (const form of document.querySelectorAll<HTMLFormElement>('form[data-form]')) {
    const acilis = Date.now();
    const m: Metinler = JSON.parse(form.dataset.metinler || '{}');
    const gonder = form.querySelector<HTMLButtonElement>('[data-gonder]');
    const basari = form.querySelector<HTMLElement>('[data-durum="basari"]');
    const hata = form.querySelector<HTMLElement>('[data-durum="hata"]');

    // Alan düzeltildikçe hata mesajı kalksın
    form.addEventListener('input', (e) => {
      const a = e.target as HTMLInputElement;
      if (a.name && a.getAttribute('aria-invalid')) hataGoster(form, a.name, '');
    });

    form.addEventListener('submit', async (e) => {
      e.preventDefault();
      if (basari) basari.hidden = true;
      if (hata) hata.hidden = true;

      const ilk = dogrula(form, m);
      if (ilk) {
        ilk.focus();
        return;
      }

      const veri = new FormData(form);
      veri.set('tur', form.dataset.tur || '');
      veri.set('dil', document.documentElement.lang);
      veri.set('sure', String(Date.now() - acilis));
      // Bal tuzağı doluysa ya da çok hızlıysa sessizce "başarılı" göster (bota ipucu verme).
      if (String(veri.get('hp') || '') || Date.now() - acilis < EN_AZ_SURE_MS) {
        if (basari) basari.hidden = false;
        form.reset();
        return;
      }

      const eskiMetin = gonder?.innerHTML;
      if (gonder) {
        gonder.disabled = true;
        gonder.setAttribute('aria-busy', 'true');
        gonder.textContent = form.dataset.gonderiliyor || '…';
      }
      try {
        const yanit = await fetch(API_URL + (form.dataset.uc || '/v1/web/lead'), {
          method: 'POST',
          body: veri,
          mode: 'cors',
          credentials: 'omit',
        });
        if (!yanit.ok) throw new Error(String(yanit.status));
        form.reset();
        if (basari) {
          basari.hidden = false;
          basari.focus();
        }
      } catch {
        if (hata) {
          hata.hidden = false;
          hata.focus();
        }
      } finally {
        if (gonder) {
          gonder.disabled = false;
          gonder.removeAttribute('aria-busy');
          if (eskiMetin) gonder.innerHTML = eskiMetin;
        }
      }
    });
  }
}

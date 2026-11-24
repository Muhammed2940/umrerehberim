// Aile Takibi izleyicisi (/t/). Sözleşme: umrerehberim/docs/plan/AILE_TAKIBI_SOZLESME.md
// - Token yalnız location.hash'te; API'ye POST gövdesiyle gider. URL'ye, loga, konsola yazılmaz.
// - 60 sn'de bir (refresh_sec) ve sekme görünür olunca yenilenir; gizliyken durur.
import L from 'leaflet';
import 'leaflet/dist/leaflet.css';

type Konum = { lat: number; lng: number; accuracy: number; updated_at: number };
type Yanit = {
  status: 'ok' | 'hidden' | 'no_location';
  name: string;
  approx: boolean;
  hidden_until: number | null;
  location: Konum | null;
  place: { city: 'mekke' | 'medine' | 'diger'; harem_m: number | null } | null;
  expires_at: number;
  server_time: number;
  refresh_sec: number;
};
type Ayar = { api: string; dil: string; metin: Record<string, string> };
type Hata = 'yok' | 'gecersiz' | 'bulunamadi' | 'iptal' | 'suresi' | 'bitti' | 'sik' | 'ag';

const ESKI_KONUM_MS = 15 * 60 * 1000;
const TOKEN_RE = /^[A-Za-z0-9_-]{43}$/;
const KAABE: [number, number] = [21.4225, 39.8262];
const LOCALE: Record<string, string> = { tr: 'tr', en: 'en', ar: 'ar-EG' };

const ayar: Ayar = JSON.parse(document.getElementById('takip-ayar')!.textContent || '{}');
const M = ayar.metin;
const yerel = LOCALE[ayar.dil] ?? 'tr';
const $ = <T extends HTMLElement = HTMLElement>(ad: string) => document.querySelector<T>(`[data-r="${ad}"]`)!;
const doldur = (s: string, d: Record<string, string>) => s.replace(/\{(\w+)\}/g, (_, k) => d[k] ?? '');

// ---------- Harita ----------
const harita = L.map($('harita'), {
  zoomControl: false,
  attributionControl: false,
  center: KAABE,
  zoom: 14,
  worldCopyJump: true,
});
L.control.zoom({ position: 'topleft' }).addTo(harita);
// Atıf kartın altında kalmasın diye üstte (OSM atfı zorunlu).
L.control.attribution({ position: 'topright', prefix: false }).addTo(harita);
L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
  maxZoom: 19,
  attribution: `${M.haritaAtif}: © <a href="https://www.openstreetmap.org/copyright" target="_blank" rel="noopener">OpenStreetMap</a>`,
  // Sayfa no-referrer; OSM karo politikası için yalnız köken (hash/yol yok) gönderilir.
  referrerPolicy: 'origin',
} as L.TileLayerOptions).addTo(harita);

let daire: L.Circle | null = null;
let isaret: L.Marker | null = null;
let kullaniciKaydirdi = false;
harita.on('dragstart zoomstart', (e) => {
  // Kod kaynaklı hareketlerde (flyTo/setView) animasyon bayrağı koyulur.
  if (!kodHareketi) kullaniciKaydirdi = true;
  void e;
});
let kodHareketi = false;
function git(lat: number, lng: number, yaricap: number, ilk: boolean) {
  kodHareketi = true;
  const sinir = L.latLng(lat, lng).toBounds(Math.max(yaricap, 80) * 2.4);
  harita.fitBounds(sinir, { maxZoom: 17, animate: !ilk });
  setTimeout(() => (kodHareketi = false), 700);
}

// ---------- Durum ----------
let token = '';
let demo: string | null = null;
let son: { y: Yanit; alindi: number } | null = null;
let agYok = false;
let zamanlayici: number | undefined;
let sonIstek = 0;
let calisiyor = false;
let ilkGoster = true;
let bitti = false;

function hatayiGoster(h: Hata) {
  bitti = h !== 'sik' && h !== 'ag';
  const k = ({ yok: 'Yok', gecersiz: 'Gecersiz', bulunamadi: 'Bulunamadi', iptal: 'Iptal', suresi: 'Suresi', bitti: 'Bitti', sik: 'Sik', ag: 'Ag' } as const)[h];
  $('panel-baslik').textContent = M[`hata${k}Baslik`];
  $('panel-metin').textContent = M[`hata${k}`];
  $('panel-yukleniyor').hidden = true;
  $('panel-hata').hidden = false;
  $('panel').hidden = false;
  $('kart').hidden = true;
  if (bitti) {
    clearTimeout(zamanlayici);
    sonIstek = 0;
  }
}

function panelKapat() {
  $('panel').hidden = true;
}

function yerEtiketi(y: Yanit): string {
  const p = y.place;
  if (!p || p.city === 'diger') return '';
  const sehir = p.city === 'mekke' ? M.mekke : M.medine;
  if (y.approx || p.harem_m == null) return sehir;
  const m = p.harem_m;
  const mesafe = m >= 1000 ? `${new Intl.NumberFormat(yerel, { maximumFractionDigits: 1 }).format(m / 1000)} km` : `${new Intl.NumberFormat(yerel).format(m)} m`;
  return `${sehir} · ${doldur(p.city === 'mekke' ? M.haremMekke : M.haremMedine, { m: mesafe })}`;
}

function gorece(ms: number): string {
  const rtf = new Intl.RelativeTimeFormat(yerel, { numeric: 'auto' });
  const sn = Math.max(0, Math.round(ms / 1000));
  if (sn < 45) return rtf.format(0, 'second');
  const dk = Math.round(sn / 60);
  if (dk < 60) return rtf.format(-dk, 'minute');
  const sa = Math.round(dk / 60);
  if (sa < 24) return rtf.format(-sa, 'hour');
  return rtf.format(-Math.round(sa / 24), 'day');
}

function saatYaz(ms: number): string {
  return new Date(ms).toLocaleTimeString(yerel, { hour: '2-digit', minute: '2-digit' });
}

/** Yanıtı karta ve haritaya işler. Yaşlar, sunucu saatine göre (telefon saati yanlış olabilir). */
function ciz(hareket = true) {
  if (!son) return;
  const { y, alindi } = son;
  const gecen = Date.now() - alindi;
  const adi = y.name?.trim() || M.adYok;
  $('ad').textContent = y.status === 'hidden' ? M.gizliBaslik : y.status === 'no_location' ? M.konumYok : adi;
  $('yer').textContent = y.status === 'ok' ? yerEtiketi(y) : '';
  $('yer').hidden = !$('yer').textContent;

  const uyar: { tur: 'bilgi' | 'uyari'; metin: string }[] = [];
  let guncelStr = '';
  if (y.status === 'ok' && y.location) {
    const yas = y.server_time - y.location.updated_at + gecen;
    guncelStr = doldur(M.guncellendi, { zaman: gorece(yas) });
    if (yas > ESKI_KONUM_MS) uyar.push({ tur: 'uyari', metin: `${M.eski} ${doldur(M.eskiAlt, { zaman: gorece(yas) })}` });
    if (y.approx) uyar.push({ tur: 'bilgi', metin: M.yaklasik });
    isaretiGuncelle(y.location, y.approx, hareket);
  } else {
    isaretiKaldir();
    if (y.status === 'hidden') {
      uyar.push({ tur: 'bilgi', metin: doldur(M.gizli, { ad: adi, saat: y.hidden_until ? saatYaz(y.hidden_until) : '' }) });
    } else {
      uyar.push({ tur: 'bilgi', metin: doldur(M.konumYokAlt, { ad: adi }) });
    }
  }
  $('guncel').textContent = guncelStr;
  $('guncel-satir').hidden = !guncelStr;

  const kutu = $('uyarilar');
  kutu.replaceChildren(
    ...uyar.map((u) => {
      const e = document.createElement('p');
      e.className = u.tur === 'uyari' ? 'takip-not takip-not-uyari' : 'takip-not';
      e.textContent = u.metin;
      return e;
    }),
  );
  $('ag-rozet').hidden = !agYok;
  $('konuma').hidden = !(y.status === 'ok' && y.location);
  $('kart').hidden = false;
  panelKapat();
}

function isaretiGuncelle(k: Konum, yaklasik: boolean, hareket: boolean) {
  const nokta = L.latLng(k.lat, k.lng);
  if (!daire) {
    daire = L.circle(nokta, { radius: k.accuracy, color: '#235347', weight: 2, fillColor: '#8eb69b', fillOpacity: 0.28 }).addTo(harita);
  } else {
    daire.setLatLng(nokta).setRadius(k.accuracy);
  }
  if (!yaklasik) {
    if (!isaret) {
      isaret = L.marker(nokta, {
        keyboard: false,
        icon: L.divIcon({ className: 'takip-isaret', html: '<span class="takip-isaret-nokta"></span>', iconSize: [28, 28], iconAnchor: [14, 14] }),
      }).addTo(harita);
    } else isaret.setLatLng(nokta);
  } else if (isaret) {
    isaret.remove();
    isaret = null;
  }
  if (ilkGoster || (hareket && !kullaniciKaydirdi)) git(k.lat, k.lng, k.accuracy, ilkGoster);
  ilkGoster = false;
}

function isaretiKaldir() {
  daire?.remove();
  isaret?.remove();
  daire = null;
  isaret = null;
}

// ---------- Veri ----------
const DEMO_SABLON = {
  status: 'ok',
  name: 'Ahmet',
  approx: false,
  hidden_until: null,
  location: { lat: 21.42251, lng: 39.8262, accuracy: 18, updated_at: 0 },
  place: { city: 'mekke', harem_m: 240 },
  expires_at: 0,
  server_time: 0,
  refresh_sec: 60,
} as Yanit;

function demoYanit(tur: string): Yanit | Hata {
  const simdi = Date.now();
  const y: Yanit = JSON.parse(JSON.stringify(DEMO_SABLON));
  y.server_time = simdi;
  y.expires_at = simdi + 29 * 24 * 3600 * 1000;
  // İlk açılışta 3 dk eski; yenilemede birkaç saniye eski ve işaret biraz kayar.
  const yenileme = son !== null;
  y.location!.updated_at = simdi - (yenileme ? 6000 : 3 * 60 * 1000);
  if (yenileme && son!.y.location) {
    y.location!.lat = son!.y.location.lat + (Math.random() - 0.3) * 0.00012;
    y.location!.lng = son!.y.location.lng + (Math.random() - 0.3) * 0.00012;
  }
  switch (tur) {
    case 'gizli':
      y.status = 'hidden';
      y.location = null;
      y.place = null;
      y.hidden_until = simdi + 90 * 60 * 1000;
      break;
    case 'yok':
      y.status = 'no_location';
      y.location = null;
      y.place = null;
      break;
    case 'eski':
      y.location!.updated_at = simdi - 42 * 60 * 1000;
      break;
    case 'yaklasik':
      y.approx = true;
      y.location = { lat: 21.42, lng: 39.83, accuracy: 1500, updated_at: simdi - 2 * 60 * 1000 };
      y.place = { city: 'mekke', harem_m: null };
      break;
    case 'medine':
      y.location = { lat: 24.4681, lng: 39.6118, accuracy: 12, updated_at: simdi - 60 * 1000 };
      y.place = { city: 'medine', harem_m: 130 };
      break;
    case 'iptal':
      return 'iptal';
    case 'suresi':
      return 'suresi';
    case 'bitti':
      return 'bitti';
    case 'sik':
      return 'sik';
  }
  return y;
}

async function getir(zorla = false) {
  if (calisiyor || bitti) return;
  if (!zorla && Date.now() - sonIstek < 5000) return;
  calisiyor = true;
  sonIstek = Date.now();
  let sonraki = (son?.y.refresh_sec ?? 60) * 1000;
  try {
    let sonuc: Yanit | Hata;
    if (demo !== null) {
      await new Promise((r) => setTimeout(r, 350));
      sonuc = demoYanit(demo);
    } else {
      sonuc = await istek();
    }
    if (typeof sonuc === 'string') {
      if (sonuc === 'ag') {
        agYok = true;
        if (son) ciz();
        else hatayiGoster('ag');
        sonraki = 20000;
      } else if (sonuc === 'sik') {
        if (son) {
          agYok = true;
          ciz();
        } else hatayiGoster('sik');
        sonraki = 60000;
      } else {
        hatayiGoster(sonuc);
      }
    } else {
      agYok = false;
      son = { y: sonuc, alindi: Date.now() };
      sonraki = Math.max(15, Math.min(600, sonuc.refresh_sec || 60)) * 1000;
      ciz();
    }
  } finally {
    calisiyor = false;
    planla(sonraki);
  }
}

async function istek(): Promise<Yanit | Hata> {
  const kes = new AbortController();
  const z = setTimeout(() => kes.abort(), 15000);
  try {
    const r = await fetch(`${ayar.api}/v1/track`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ token }),
      cache: 'no-store',
      credentials: 'omit',
      referrerPolicy: 'no-referrer',
      signal: kes.signal,
    });
    if (r.ok) {
      const y = (await r.json()) as Yanit;
      if (!y || !['ok', 'hidden', 'no_location'].includes(y.status)) return 'ag';
      return y;
    }
    let kod = '';
    try {
      kod = ((await r.json()) as { error?: string }).error ?? '';
    } catch {
      /* gövde yok */
    }
    if (r.status === 429 || kod === 'rate_limited') return 'sik';
    if (kod === 'link_revoked') return 'iptal';
    if (kod === 'link_expired') return 'suresi';
    if (kod === 'plan_ended') return 'bitti';
    if (r.status === 400 || kod === 'bad_request') return 'gecersiz';
    if (r.status === 404 || kod === 'not_found') return 'bulunamadi';
    if (r.status === 410) return 'bitti';
    return 'ag'; // 5xx vb.
  } catch {
    return 'ag';
  } finally {
    clearTimeout(z);
  }
}

function planla(ms: number) {
  clearTimeout(zamanlayici);
  if (bitti || document.hidden) return;
  zamanlayici = window.setTimeout(() => void getir(true), ms);
}

// ---------- Başlat ----------
function baslat() {
  // Dil bağlantılarına hash'i taşı (yalnız istemcide; sunucuya gitmez).
  document.querySelectorAll<HTMLAnchorElement>('[data-dil-link]').forEach((a) => {
    a.href = a.getAttribute('href')!.split('#')[0] + location.hash;
  });
  $('yenile').addEventListener('click', () => void getir(true));
  $('konuma').addEventListener('click', () => {
    const k = son?.y.location;
    if (k) {
      kullaniciKaydirdi = false;
      git(k.lat, k.lng, k.accuracy, false);
    }
  });

  const ham = decodeURIComponent(location.hash.replace(/^#/, '')).trim();
  if (!ham) return hatayiGoster('yok');
  if (ham === 'demo' || ham.startsWith('demo-')) {
    demo = ham === 'demo' ? '' : ham.slice(5);
    $('demo-rozet').hidden = false;
  } else {
    if (!TOKEN_RE.test(ham)) return hatayiGoster('gecersiz');
    token = ham;
  }

  document.addEventListener('visibilitychange', () => {
    if (document.hidden) clearTimeout(zamanlayici);
    else void getir(false);
  });
  // Göreli süreler yenilemeler arasında da akar.
  setInterval(() => {
    if (!document.hidden && son) ciz(false);
  }, 20000);
  // Hash değişirse (başka bağlantı yapıştırıldı) sayfayı baştan yükle.
  window.addEventListener('hashchange', () => location.reload());
  void getir(true);
}

baslat();

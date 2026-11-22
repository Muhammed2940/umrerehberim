# Web sitesi — plan (22 Kasım 2026)

## Kitleler ve hedef
| Kitle | Hedef |
|---|---|
| Hacı adayı ve ailesi | Uygulama indirme, paket satın alma |
| Acente | Demo talebi |
| Esnaf | Ağa katılma başvurusu |
| Yatırımcı/basın | Sunum talebi |

## Site haritası (TR / EN / AR, Arapça sağdan sola)
- Ana sayfa: üç kapı (Hacı / Acente / Esnaf), özellikler, ekran görüntüleri, güven şeridi, mağaza rozetleri.
- /haci: özellikler, ücretsiz vs Umre/Aile Paketi, SSS.
- /acente: faydalar, fiyat seçenekleri, demo formu, kendi markası (white-label).
- /esnaf: QR indirim/puan anlatımı, başvuru formu.
- /aile-takibi ve /guvenli-umre: bekleme listeli tanıtım.
- /rehber (SEO içerik merkezi): 40 mekan, Harem kapıları, ulaşım, dualar, adım adım umre — içerik uygulamanın veri dosyalarından otomatik üretilir.
- /hakkimizda, /yatirimci, /destek.
- /yasal: gizlilik, KVKK aydınlatma, açık rıza, kullanım koşulları, mesafeli satış/iade, çerez, **hesap silme** (mağazalar ister). Avukat incelemesi şart.

## Web uygulamaları
- **Aile Takibi izleyicisi** (`aile.` alt alanı): PHP API üzerinden, tek kullanımlık jeton; doğrudan Firestore yok. Faz 2.
- **Acente web paneli** (`panel.`): aynı kod tabanından Flutter Web. Şimdi yalnız deneme (spike), tam panel sonra.
- **Formlar**: tek PHP uç noktası, Firestore `leads` + e-posta; honeypot, süre kontrolü, hız sınırı, gerekirse Cloudflare Turnstile; KVKK onayı.

## Teknoloji
- **Astro (statik) + Tailwind**, WordPress değil (güvenlik, hız, çok dil). Blog için git tabanlı ücretsiz CMS (Decap/Pages CMS).
- Alt alanlar: `www` (site), `api` (PHP servisi), `panel` (Flutter Web), `aile`. Let's Encrypt.
- Analitik: çerezsiz (Umami veya Plausible), Google Analytics şimdilik yok.
- Yayın: yerelde derle → zip → Plesk Dosya Yöneticisi.

## Tasarım
- Sakin, manevi, güven veren; yeşil/lacivert + altın, bol beyaz alan.
- Başlık önerileri: "Umrenizde her adımda yanınızda." / "Rehberiniz cebinizde, aileniz gönül rahatlığında." / "Acenteniz için tek ekrandan umre operasyonu."
- Harem görselleri yalnız lisanslı veya kendi çekimimiz. "Fetva yerine geçmez" notu, KVKK, şirket bilgileri altbilgide.

## Fazlar
1. (2–3 hafta) Site iskeleti + pazarlama sayfaları, içerik aktarımı, yasal taslaklar, formlar. Gizlilik ve hesap silme sayfaları ilk yayına girer (mağaza başvurusu için).
2. Aile Takibi izleyicisi, Flutter Web panel denemesi.
3. Tam acente paneli, bileklik ve seyahat acentesi sayfaları.

## Sahibin sağlayacakları
Alan adı, logo (SVG), marka renkleri, şirket unvanı/vergi/MERSİS/adres, iletişim bilgileri, mağaza linkleri, SMTP, kesin fiyatlar, avukat, pilot acente izinleri.

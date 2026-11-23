# Web sistemi — plan (güncelleme: 23 Kasım 2026)

İlk taslak 22 Kasım. Bu sürüm bugünkü kararları ekler: paketler ve fiyatlar, Full Umre Paketi başvurusu, PayTR, Platform Ayarları, hesap silme, kimlik servisi (PHP) ile aynı sunucu.

## 1. Kitleler ve hedef
| Kitle | Web'de ne yapar | Ölçü |
|---|---|---|
| Hacı adayı ve ailesi | Uygulamayı indirir, paketi inceler, Full Umre Paketi başvurusu yapar, (ileride) web'den öder | indirme, başvuru, satış |
| Acente | Faydaları ve fiyatı görür, demo ister | demo talebi |
| Esnaf | QR indirim/puan sistemini görür, ağa katılmak için başvurur | başvuru |
| Mağazalar (Google/Apple) | Gizlilik politikası ve hesap silme sayfası | mağaza onayı |
| Yatırımcı/basın | Sunum ve iletişim | talep |

## 2. Site haritası (TR / EN / AR — Arapça sağdan sola)
- **Ana sayfa:** üç kapı (Hacı / Acente / Esnaf), öne çıkan özellikler, gerçek ekran görüntüleri, mağaza rozetleri, güven şeridi.
- **/paketler:** Ücretsiz · Umre Paketi (349,99 TL / 30 gün) · Aile/Arkadaş (799,99 TL / 6 kişi, 30 gün) · Full Umre Paketi (1.500 $ / 10 gün; uçak, vize, otel, yemek, ulaşım, eSIM). Uygulamadaki Paketler ekranıyla aynı içerik ve sıra. Mesafeli satış ve iade koşulları bağlantısı.
- **/full-umre:** Full paketin ayrıntısı + **başvuru formu** (ad, telefon, e-posta, kişi sayısı, tercih edilen ay, not, KVKK onayı). Başvuru süper admin panelindeki "Paket Onayları"na düşer; yönetici arayıp tarihleri belirler. Ödeme: onaydan sonra PayTR bağlantısı (bkz. 4).
- **/acente:** faydalar (canlı konum, telsiz, duyuru, esnaf ağı, raporlar), fiyat seçenekleri veya "teklif alın", demo formu, white-label.
- **/esnaf:** QR indirim ve puan anlatımı, komisyon modeli, başvuru formu.
- **/rehber (SEO içerik merkezi):** 40 gezilecek yer, Harem kapıları, ulaşım, dualar, adım adım umre. İçerik uygulamanın veri dosyalarından (lib/features/info_screen/data) otomatik üretilir; tek kaynak.
- **/destek:** Platform Ayarları'ndaki destek telefon/e-posta/WhatsApp ile aynı (platform_settings/app'ten okunur).
- **/yasal:** gizlilik, KVKK aydınlatma, açık rıza (konum), kullanım koşulları, mesafeli satış ve iade, çerez. Avukat incelemesi şart.
- **/hesap-silme:** mağaza şartı. Uygulama içinden silme anlatımı + uygulamaya erişemeyenler için talep formu (Google ile doğrulama → silme talebi süper admine düşer).
- **/hakkimizda, /yatirimci.**

## 3. Web uygulamaları (aşamalı)
- **Formlar:** tek PHP uç noktası (`api.` alt alanındaki umre-api servisine eklenir): `leads` (acente/esnaf/iletişim), `full_applications` (Full başvuru), `deletion_requests`. Firestore'a servis hesabıyla yazılır + e-posta bildirimi. Koruma: honeypot, süre kontrolü, IP hız sınırı, gerekirse Cloudflare Turnstile; KVKK onayı zorunlu.
- **Aile Takibi izleyicisi** (`aile.`): PHP API üzerinden tek kullanımlık jeton; doğrudan Firestore yok. Faz 2.
- **Acente web paneli** (`panel.`): aynı kod tabanından Flutter Web. Önce deneme, tam panel sonra.

## 4. Ödeme (PayTR) — web ve uygulama ayrımı
- **Full Umre Paketi (fiziksel hizmet):** PayTR ile ödenir; uygulama içinde de web'de de serbest. Akış: başvuru → yönetici onayı ve tarih → PayTR iFrame ödeme bağlantısı (`api.` servisi token üretir) → PayTR bildirimi (callback) sunucuda doğrulanır → `entitlements/{uid}` sunucu yazar.
- **Umre ve Aile paketleri (dijital özellik):** Mağaza kuralı gereği uygulama içinde Google Play / App Store ödemesi. Web'den PayTR ile satılabilir (kullanıcı web'de Google hesabıyla giriş yapar → aynı uid'e hak yazılır). Uygulamada web ödemesine yönlendiren bağlantı/düğme mağaza kurallarına takılabilir; uygulama içinde yalnız mağaza ödemesi gösterilir.
- PayTR canlıya alınınca Platform Ayarları'nda **Demo ödeme kapatılır**; hak yalnız sunucu yazar.
- Gereken: PayTR mağaza no/anahtar/tuz (Plesk'te gizli klasörde, git'e girmez), bildirim URL'si `https://api.<alan>/v1/paytr/callback`, test modu.

## 5. Teknoloji
- **Astro (statik) + Tailwind**, WordPress değil (güvenlik, hız, çok dil). Blog/duyuru için git tabanlı ücretsiz CMS (Decap veya Pages CMS).
- **Alt alanlar:** `www` (site), `api` (PHP kimlik + form + ödeme servisi; zaten yazıldı, kurulum bekliyor), `panel` (Flutter Web, sonra), `aile` (sonra). Hepsi Let's Encrypt.
- Web'de Google ile giriş (hesap silme ve web ödemesi için): Firebase Auth JS SDK, yalnız bu sayfalarda.
- **Analitik:** çerezsiz (Umami veya Plausible); Google Analytics yok.
- **Yayın:** yerelde derle → zip → Plesk Dosya Yöneticisi (api servisindeki paketle.ps1 gibi bir betik).

## 6. Tasarım
- Uygulamanın tasarım dili: emerald yeşili (#235347, #163832, #0B2B26), sage (#8EB69B), mint (#DAF1DE), zemin #F3F8F4; yuvarlak köşeli kartlar; profil başlığındaki yeşil degrade. Yeni bir marka dili icat edilmez.
- Başlık önerileri: "Umrenizde her adımda yanınızda." / "Rehberiniz cebinizde, aileniz gönül rahatlığında." / "Acenteniz için tek ekrandan umre operasyonu."
- Harem görselleri yalnız lisanslı veya kendi çekimimiz. "Fetva yerine geçmez" notu, KVKK, şirket bilgileri altbilgide.

## 7. Fazlar
1. **Mağaza için asgari (1 hafta):** tek sayfa tanıtım + /yasal (gizlilik, KVKK) + /hesap-silme + /destek. Play Store başvurusu bunları ister.
2. **Pazarlama sitesi (2–3 hafta):** ana sayfa, /paketler, /full-umre + başvuru formu, /acente, /esnaf, /rehber içerik aktarımı, formlar (PHP), çok dil.
3. **Ödeme:** PayTR (Full önce, sonra web'den Umre/Aile), mesafeli satış sözleşmesi, fatura süreci.
4. **Aile Takibi izleyicisi, Flutter Web panel denemesi.**
5. **Tam acente paneli.**

## 8. Sahibin sağlayacakları
Alan adı (hangi site/alan?), logo (SVG), şirket unvanı/vergi no/MERSİS/adres, destek iletişim bilgileri, mağaza linkleri, SMTP (form e-postaları), PayTR bilgileri, acente fiyatları (göster mi / "teklif alın" mı), avukat (yasal metinler), pilot acente izinleri, ekran görüntüleri için izin.

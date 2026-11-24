# Umre Rehberim web sitesi — tasarım brief'i

Bu belge web sitesinin tasarımını yapacak kişi için hazırlandı. Siteyi neden yaptığımızı, kimin için
yaptığımızı, hangi sayfaların olacağını, her sayfada ne bulunacağını ve uyulması gereken kuralları anlatır.

---

## 1. Ürün tek cümlede

**Umre Rehberim**, umreye giden kişiye cebinde bir rehber veren mobil uygulamadır (Android ve iOS).
Dualar, Kur'an-ı Kerim, ezan vakitleri ve kıble; Mekke ve Medine'de gezilecek yerler, Harem kapıları ve
ulaşım bilgileri; sesli rehber; aileye konum gösterme (Aile Takibi); grup haritası ve grup içi telsiz sunar.
Acenteler kafilelerini, esnaf ise hacılara indirimlerini uygulama üzerinden yönetir.

Web sitesi uygulamanın **vitrini**dir: uygulamayı tanıtır, indirtir, paketleri anlatır, acente ve esnaf
başvurularını toplar ve mağazaların istediği yasal sayfaları barındırır.

## 2. Kimler için?

| Kitle | Kim | Siteden beklentisi | Ana eylem |
|---|---|---|---|
| **Hacı adayı (bireysel)** | Umreye kendi planlayarak giden kişi, çoğu 40+ yaş, telefonu orta düzeyde kullanır | Uygulama ne işe yarar, ücretsiz mi, güvenilir mi? | Uygulamayı indir |
| **Aile / arkadaş grubu** | 2–6 kişilik grup | Birbirimizi kaybetmeden nasıl gezeriz? | Aile Paketi'ni incele, indir |
| **Evdeki aile** | Umredekinin yakınları | Sevdiğim kişi nerede, güvende mi? | Aile Takibi'ni anla |
| **Acente** | Umre turu düzenleyen firma | Kafilemi nasıl yönetirim, maliyeti ne? | Teklif / demo formu |
| **Esnaf** | Mekke-Medine'de otel, restoran, mağaza | Hacılara nasıl ulaşırım? | Esnaf başvuru formu |
| **Full Umre müşterisi** | Her şey dahil paket isteyen kişi | Ne dahil, nasıl başvururum? | Başvuru formu |
| **Mağaza denetçisi** | Google Play / App Store | Gizlilik, hesap silme, destek sayfaları var mı? | Yasal sayfaları okur |

**Önemli:** Kitlenin bir kısmı yaşlı ve teknolojiyle arası iyi değil. Yazılar büyük, kontrast yüksek,
düğmeler iri ve anlaşılır olmalı. Gösterişli efekt, okunabilirliğin önüne geçmemeli.

## 3. Ton ve duygu

- **Huzurlu, güven veren, saygılı.** Manevi bir yolculuk anlatıyoruz; "satış sitesi" havası olmamalı.
- Sade ve ferah; bol beyaz alan.
- Dini içerikte ölçülü: Kâbe ve Mescid-i Nebevi görselleri saygılı kullanılır, süs malzemesi yapılmaz.
- Metinler sade Türkçe, "siz" diliyle. Abartılı reklam dili yok ("en iyi", "bir numara" gibi).
- Her sayfanın altında şu not bulunur: *"Uygulamadaki dini bilgiler rehberlik amaçlıdır; fetva yerine geçmez."*

## 4. Marka dili (mobil uygulamayla birebir; yeni bir marka dili icat edilmeyecek)

### Renkler

| Ad | Kod | Kullanım |
|---|---|---|
| Emerald 900 | `#051F20` | Ana metin rengi |
| Emerald 800 | `#0B2B26` | En koyu zemin (altbilgi) |
| Emerald 700 | `#163832` | Başlıklar, koyu yüzeyler |
| Emerald 600 | `#235347` | **Ana marka rengi**, birincil düğme |
| Sage | `#8EB69B` | Vurgu: çizgi, rozet, ilerleme |
| Mint | `#DAF1DE` | Açık vurgu zemini, ikincil düğme |
| Zemin | `#F3F8F4` | Sayfa arka planı |
| Beyaz | `#FFFFFF` | Kart yüzeyi |
| Soluk metin | `#5E7A6E` | Açıklama ve ikincil metin |
| Çizgi | `#DCE8E0` | Kenarlık, ayırıcı |
| Hata | `#C0392B` | Hata ve silme |
| Uyarı | `#B7791F` | Uyarı (örn. "TASLAK" ibaresi) |

- **İmza öğe:** Uygulamanın profil başlığındaki yeşil degrade, `#235347` → `#0B2B26` (135°).
  Hero alanı, öne çıkan kartlar ve başlık çubuğunda kullanılır.
- Ek süs rengi (yalnız Kur'an/dua bölümlerinde, isteğe bağlı): krem kâğıt `#FBF5E6` ve altın `#B8963E`.

### Yazı tipleri

- **Latin (TR/EN):** Roboto (400, 500, 700); uygulamadaki varsayılan yazı tipi.
- **Arapça arayüz:** Noto Naskh Arabic (400, 600, 700).
- **Arapça dua ve ayet metni:** Amiri; uygulamada dualar bu yazı tipiyle gösteriliyor.
- Yazı tipleri sitenin kendi sunucusundan verilecek, Google Fonts'tan çekilmeyecek. Lisansı serbest
  olmayan bir yazı tipi önerirseniz bunu ayrıca belirtin.

### Biçim

- Yuvarlak köşeli kartlar: küçük kartlarda **12 px**, büyük kartlarda ve paket kartlarında **20 px**.
- Hafif gölge, ince kenarlık (`#DCE8E0`).
- İkonlar yuvarlak hatlı, dolgu ya da çizgi; tek bir set seçilip her yerde o kullanılmalı.
- Logo: uygulama ikonu (Kâbe, yeşil daire ve uçak). Vektör (SVG) logo henüz yok; tasarımcıdan
  temizlenmiş bir SVG sürümü de rica ediyoruz.

## 5. Diller ve sağdan sola

- **Türkçe** (varsayılan), **İngilizce** ve **Arapça**.
- Arapça sayfalar **sağdan sola (RTL)**: menü, ızgara, ikon yönleri (oklar), hizalar aynalanır.
  Rakamlar, telefon numaraları ve e-postalar soldan sağa kalır.
- **Lütfen ana sayfa ve en az bir iç sayfanın Arapça (RTL) tasarımını ayrıca gösterin.**
- Uygulamanın İngilizce adı "My Umrah Guide", Arapça adı "دليل العمرة".
- Metin uzunluğu dile göre değişir: Arapça genelde daha kısa ama satır yüksekliği daha fazla, İngilizce
  Türkçeden biraz kısa. Tasarım uzun metne dayanıklı olmalı.

## 6. Site haritası

### Faz 1 — mağaza başvurusu için şart (iskeleti hazır, şimdi yeniden tasarlanacak)

| Sayfa | Adres |
|---|---|
| Ana sayfa (tek sayfa tanıtım) | `/` |
| Gizlilik Politikası | `/yasal/gizlilik/` |
| KVKK Aydınlatma Metni | `/yasal/kvkk/` |
| Açık Rıza Metni | `/yasal/acik-riza/` |
| Kullanım Koşulları | `/yasal/kullanim-kosullari/` |
| Hesap silme | `/hesap-silme/` |
| Destek | `/destek/` |
| 404 | — |

### Faz 2 — pazarlama sitesi

| Sayfa | Adres |
|---|---|
| Paketler | `/paketler/` |
| Full Umre Paketi + başvuru formu | `/full-umre/` |
| Acenteler için | `/acente/` |
| Esnaf için | `/esnaf/` |
| Umre rehberi (40 gezilecek yer, Harem kapıları, ulaşım, adım adım umre, dualar) | `/rehber/` ve `/rehber/<mekan>/` |
| Hakkımızda | `/hakkimizda/` |
| Yatırımcı | `/yatirimci/` |

Dil sürümleri aynı yolun önüne `/en/` ve `/ar/` eklenerek oluşur (örn. `/ar/destek/`).

## 7. Sayfa sayfa içerik

### 7.1 Ana sayfa

1. **Başlık çubuğu:** logo ve uygulama adı · menü (Özellikler, Paketler, Rehber, Acente, Esnaf, Destek) ·
   dil seçici (Türkçe / English / العربية) · "Uygulamayı indir" düğmesi. Mobilde açılır menü.
2. **Hero (yeşil degrade):**
   - Başlık: *"Umrenizde her adımda yanınızda"*
   - Alt metin: *"Dualar, Kur'an-ı Kerim, ezan vakitleri ve kıble; Mekke ve Medine'de gezilecek yerler,
     Harem kapıları ve ulaşım bilgileri tek uygulamada. Temel özellikler her zaman ücretsiz."*
   - Google Play ve App Store rozetleri (resmî rozet görselleri; bağlantı gelene kadar "Yakında" durumu da tasarlanmalı)
   - 1–2 telefon çerçevesinde uygulama ekran görüntüsü. Gerçek görüntüler sonra gelecek, şimdilik yer tutucu.
3. **Üç kapı (Faz 2):** "Hacıyım" / "Acenteyim" / "Esnafım": her kitleyi kendi sayfasına yönlendiren üç büyük kart.
4. **Özellikler (4 kart):**
   - *İbadet:* dualar, Kur'an-ı Kerim, zikirmatik, ezan vakitleri, kıble
   - *Mekke ve Medine rehberi:* gezilecek yerler, Harem kapıları, ulaşım
   - *Sesli rehber:* profesyonel sesli anlatım, internetsiz kullanım
   - *Aile ve grup:* Aile Takibi, grup canlı haritası, grup içi internet telsizi
5. **Nasıl çalışır (Faz 2, isteğe bağlı):** 3 adım: indir → paketini seç ve yolculuk bilgilerini gir → umrende yanında.
6. **Paketler** (ayrıntı 7.2'de; ana sayfada özet)
7. **Güven şeridi (Faz 2):** anlaşmalı acente logoları, kullanıcı sayısı, mağaza puanı (veri gelince)
8. **SSS (Faz 2):** 5–8 soru, açılır-kapanır
9. **Altbilgi (koyu yeşil):** şirket unvanı ve adresi (yer tutucu) · yasal bağlantılar · destek · hesap silme ·
   fetva notu · telif satırı

### 7.2 Paketler

Paket adları, fiyatları ve sırası uygulamadakiyle **birebir aynı** olmalı (veri uygulamadan otomatik gelir).

| Paket | Fiyat (TR) | Süre | Rozet | İçerik |
|---|---|---|---|---|
| **Ücretsiz** | 0 TL | — | Herkese açık | Dualar, Kur'an-ı Kerim ve zikirmatik · Ezan vakitleri ve kıble · Gezilecek yerler, Harem kapıları ve ulaşım bilgileri · Toplu Hatim grupları |
| **Umre Paketi** | 349,99 TL | 30 gün · tek kişi | **Önerilen** (öne çıkan kart) | Profesyonel sesli rehber · İnternetsiz tam kullanım · Kişisel umre planı · Aile Takibi · Esnaf indirimleri |
| **Aile / Arkadaş Paketi** | 799,99 TL | 30 gün · 6 kişiye kadar | Kişi başı en uygun | Umre Paketi'ndeki her şey, 6 kişi için · Grubunuza özel canlı harita · Grup içi internet telsizi |
| **Full Umre Paketi** | 1.500 $ | 10 gün · kişi başı | Her şey dahil | Gidiş-dönüş uçak · Umre vizesi · Mekke ve Medine'de otel · Yemek ve içecek · Havalimanı transferi ve şehirler arası ulaşım · Suudi Arabistan eSIM · Umre Paketi'nin tüm uygulama özellikleri |

- EN ve AR fiyatları Euro: Umre €9.99, Aile €19.99; Full $1,500.
- Kartların altında iki not: *"Anlaşmalı bir acenteyle seyahat ediyorsanız bu özellikler acenteniz
  tarafından ücretsiz sunulur."* ve *"Paketler otomatik yenilenmez. Süre, satın aldığınız andan itibaren başlar."*
- Full Umre'de düğme "Başvur" olur, çünkü yönetici onayından sonra ödeme alınır. Diğer paketler
  uygulama içinden satın alınır; web'de düğme "Uygulamada satın al" ya da "Uygulamayı indir" olur.

### 7.3 Full Umre Paketi (`/full-umre/`)

- Neler dahil (ikonlu liste), örnek 10 günlük program akışı (Mekke → Medine), sık sorulanlar.
- **Başvuru formu:** ad soyad, telefon, e-posta, kişi sayısı, tercih edilen ay, not,
  KVKK onay kutusu (zorunlu, aydınlatma metnine bağlantılı) · "Başvur" düğmesi.
- Form durumları: boş, doldurulmuş, hata (alan altında kırmızı ileti), gönderiliyor, **başarılı**
  (*"Talebiniz alındı. Yöneticimiz onay ve tarih belirleme için sizinle iletişime geçecek."*), sunucu hatası.

### 7.4 Acenteler için (`/acente/`)

- Faydalar: kafilenin canlı konumu, grup telsizi, duyuru ve bildirim, esnaf ağı, raporlar, hacılara
  ücretsiz paket özellikleri.
- Panelden 1–2 ekran görüntüsü (yer tutucu).
- Fiyat gösterilip gösterilmeyeceği henüz belli değil: hem "fiyat tablosu" hem "Teklif alın" durumunu tasarlayın.
- **Demo / teklif formu:** firma adı, yetkili adı, telefon, e-posta, yıllık hacı sayısı (aralık), not, KVKK onayı.

### 7.5 Esnaf için (`/esnaf/`)

- Nasıl çalışır: hacı uygulamada QR kodu okutur → indirim uygulanır → esnaf puan kazanır.
- Esnafa faydası: hacılara görünürlük, uygulamada işletme tanıtım sayfası.
- **Başvuru formu:** işletme adı, tür (otel / restoran / mağaza / diğer), şehir (Mekke / Medine), yetkili,
  telefon, e-posta, KVKK onayı.

### 7.6 Umre rehberi (`/rehber/`)

- Bölümler: **Gezilecek yerler** (Mekke, Medine ve diğer; yaklaşık 40 mekân) · **Harem kapıları** ·
  **Ulaşım** · **Adım adım umre** · **Dualar**.
- Liste sayfası: filtre (Mekke / Medine / Diğer) ve kart ızgarası (görsel, ad, kısa açıklama).
- **Mekân detay şablonu:** büyük görsel, ad (TR ve Arapça yazılışı), konum/harita küçük görseli,
  tarihçe metni, ziyaret ipuçları, "Uygulamada sesli rehberi dinle" çağrısı.
- Dua bölümünde Arapça metin (Amiri), okunuşu ve anlamı alt alta durur.
- Bu sayfalar arama motorundan trafik getirecek; okunabilir uzun metin düzeni önemli.

### 7.7 Yasal sayfalar (Gizlilik, KVKK, Açık Rıza, Kullanım Koşulları)

- Uzun metin düzeni: başlık, "son güncelleme" tarihi, **veri sorumlusu kutusu** (unvan, adres,
  vergi no, MERSİS, KVKK e-postası), ara başlıklar, madde işaretli listeler, tablolar.
- Avukat onayına kadar sayfanın üstünde turuncu kesik çizgili bir uyarı kutusu durur:
  **"TASLAK – avukat onayı bekliyor"**. Onaydan sonra kaldırılır.
- İsteğe bağlı: masaüstünde yanda "bu sayfada" içindekiler listesi.
- Arapça sürümde metin geçici olarak İngilizce gösterilir ve üstte Arapça bir açıklama notu yer alır.

### 7.8 Hesap silme (`/hesap-silme/`)

Google Play bu sayfayı şart koşuyor. İçerik:

1. **Uygulama içinden silme**, numaralı 5 adım:
   uygulamayı aç ve Google ile giriş yap → Profil sekmesi → sayfanın altında "Hesabımı sil" →
   "Kalıcı olarak sil" ve Google ile yeniden doğrula → "Hesabınız silindi." iletisi.
2. **Neler silinir** / **Saklanabilecek kayıtlar** (iki yan yana kart)
3. **Uygulamaya erişemiyorsanız:** e-posta ile talep. İleride burada Google ile doğrulanan bir web formu olacak.
   Formun boş, gönderildi ve hata durumlarını da tasarlayın.

### 7.9 Destek (`/destek/`)

- Üç iletişim kartı: **Telefon** (1–2 numara) · **WhatsApp** (düğme) · **E-posta** (1–2 adres).
  Bilgi yoksa "Yakında eklenecek" durumu da gerekli.
- "Hızlı yardım" kutusu: izin sorunları (konum, bildirim, mikrofon), paket/ödeme soruları, hesap silme bağlantısı.
- Faz 2'de iletişim formu (ad, e-posta, konu, mesaj, KVKK onayı).

### 7.10 Hakkımızda ve Yatırımcı (Faz 2)

- Hakkımızda: hikâye, misyon, ekip (yer tutucu), şirket bilgileri.
- Yatırımcı: problem → çözüm → pazar → iş modeli (bireysel paketler, acente aboneliği, Full Umre, esnaf ağı)
  → yol haritası → iletişim. Sade, kurumsal ama aynı yeşil dil.

### 7.11 404

Sade: "Sayfa bulunamadı", kısa açıklama, "Ana sayfaya dön" düğmesi. Üç dilde kısa not.

## 8. Ortak bileşenler (bileşen kütüphanesi olarak istiyoruz)

- Başlık çubuğu (masaüstü ve mobil menü), dil seçici, altbilgi
- Düğmeler: birincil (Emerald 600), ikincil (Mint), metin bağlantısı; normal, üzerine gelme, odak ve pasif durumları
- Mağaza rozetleri (etkin ve "Yakında")
- Özellik kartı, paket kartı (normal ve öne çıkan), mekân kartı
- Form alanları: metin, telefon, e-posta, seçim, metin alanı, onay kutusu; hata ve odak durumları
- Bilgi, uyarı, başarı ve hata kutuları; "TASLAK" kutusu
- Numaralı adım listesi, SSS açılır-kapanır öğesi
- Telefon çerçevesi (ekran görüntüsü sunumu)

## 9. Teknik kısıtlar (tasarımı etkileyen)

- Site **statik**: Astro + Tailwind CSS. Tasarım Tailwind ile kolay kodlanabilir olmalı.
  Ölçüler 4/8 px ızgarasında olsun.
- **Mobil öncelikli.** Ziyaretçilerin çoğu telefondan gelecek. Kırılım noktaları: 375 (telefon),
  768 (tablet), 1280 (masaüstü). İçerik en fazla yaklaşık 1150 px genişlikte.
- **Çerez yok, Google Analytics yok:** çerez bannerı tasarlanmayacak.
- **Dış kaynak yok:** yazı tipi, ikon ve görseller sitenin kendi sunucusundan gelir. Gömülü YouTube,
  Google Maps iframe'i ya da üçüncü taraf sohbet balonu kullanılmaz. Harita gerekiyorsa statik görsel olur.
- **Performans:** ağır video arka planları, büyük animasyon kütüphaneleri ve 3D sahneler yalnız gerçekten
  değer katıyorsa ve hafif bir alternatifi de tasarlanmışsa kullanılmalı. Animasyonlar sade olmalı,
  "hareketi azalt" tercihine uymalı.
- **Erişilebilirlik:** WCAG AA kontrastı, en az 16 px gövde metni (yasal metinlerde 17–18 px tercih),
  en az 44 px dokunma alanı, görünür klavye odağı.
- Formlarda kişisel veri adres çubuğuna (URL'ye) yazılmaz. Tasarımda "e-postanızı bağlantıyla gönderin"
  gibi akışlar kullanılmamalı.

## 10. Görseller

- Uygulama ekran görüntüleri: gerçek uygulamadan alınacak (sahibi sağlayacak).
- Harem, Kâbe ve Medine görselleri: **yalnız lisanslı ya da kendi çekimimiz.** Telifli görsel kullanılmaz.
  Kaynağı belli stok görsel öneriyorsanız bağlantısıyla bildirin.
- Mekân görselleri için yer tutucu kullanılabilir.
- İllüstrasyon kullanılacaksa sade, düz (flat) ve yeşil paletle uyumlu olmalı. İnsan yüzü çizimlerinde
  kültürel hassasiyete dikkat edilmeli.

## 11. İstenen teslimler

1. **Figma dosyası:**
   - Ana sayfa: masaüstü ve mobil (TR) + **mobil AR (RTL)**
   - Yasal metin şablonu (masaüstü ve mobil)
   - Hesap silme ve Destek (mobil)
   - Faz 2 sayfaları (masaüstü ve mobil): Paketler, Full Umre (form durumlarıyla), Acente, Esnaf,
     Rehber liste ve detay, Hakkımızda
   - 404
2. **Bileşen kütüphanesi** ve renk/yazı stilleri (Figma değişkenleri veya stilleri olarak)
3. **Logo SVG** (temizlenmiş, tek renk ve renkli sürüm), favicon (32 ve 180 px)
4. **Open Graph paylaşım görseli** (1200×630, TR/EN/AR)
5. Kullanılan ikon setinin ve yazı tiplerinin adı ve lisansı

**Öncelik:** Önce Faz 1 (ana sayfa, yasal şablon, hesap silme, destek), çünkü mağaza başvurusu bunu bekliyor.
Faz 2 sonra gelecek.

## 12. Şimdilik belli olmayanlar (yer tutucu kullanın)

- Alan adı: `www.ALAN` olarak gösterin.
- Şirket unvanı, adres, vergi no, MERSİS: köşeli parantezli yer tutucu.
- Mağaza bağlantıları: "Yakında" durumu.
- Destek telefon ve WhatsApp numaraları.
- Acente fiyatları: gösterilecek mi, "teklif alın" mı?
- Gerçek ekran görüntüleri ve logo vektörü.

## 13. Yapılmaması gerekenler

- Yeni renk paleti, farklı bir ana renk veya yeni bir logo **önermeyin**; marka uygulamayla aynı kalacak.
- Kâbe veya kutsal mekânları dekor, desen ya da filigran olarak kullanmayın.
- Müzik, otomatik oynayan video, açılır pencere, geri sayımlı "kaçırma" kampanyası koymayın.
- Fiyatları uygulamadakinden farklı yazmayın; değişirse uygulamayla birlikte değişir.

---

*Sorular için: proje sahibi. Mevcut iskelet sitede renkler, metinler ve sayfa yapısı zaten var;
tasarım bunun üzerine kurulacak.*

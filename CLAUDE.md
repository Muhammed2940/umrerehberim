# Umre Rehberim – web sitesi

Kullanıcıyla her zaman **Türkçe** konuş.

## Bağlam
- "Umre Rehberim" bir Flutter umre rehberi uygulaması. **Mobil uygulama ayrı depoda:** `C:\dev\umrerehberim`.
  Bu depo **yalnız web**; uygulama deposuna web kodu yazma (şişmesin).
- Mimari: `docs/MIMARI.md`. İş listesi: `docs/YAPILACAKLAR.md` (biten maddeyi `[x]` yap).
- Alan adı henüz yok: her yerde `ALAN` yer tutucusu, tek yerden (`site/src/config.ts`) değişir.
- Firebase projesi `umrerehberim-cc99e` (Spark plan, Cloud Functions yok). Sunucu tarafı işler
  PHP servisi `umre-api` ile (uygulama deposunda `server/umre-api`, Plesk'e kurulacak).

## Uygulama deposundan okunacaklar (salt okunur kaynak)
- Paket adları/fiyatları: `C:\dev\umrerehberim\lib\l10n\parts\paketler.json`
- Gezilecek yerler, Harem kapıları: `C:\dev\umrerehberim\lib\features\info_screen\data\*.dart`
- Firestore kuralları: `C:\dev\umrerehberim\firestore.rules` (yeni koleksiyon gerekirse orada değişir,
  `tool/rules-test` ile testlenir; bunu uygulama oturumuna bildir)
- PHP servis: `C:\dev\umrerehberim\server\umre-api` (yeni web uç noktaları buraya eklenir)

## Teknoloji
- Astro (statik) + Tailwind, `site/` klasöründe. WordPress yok.
- Diller: TR (varsayılan), EN, AR (sağdan sola).
- Tasarım uygulamayla aynı: emerald `#235347`, `#163832`, `#0B2B26`, sage `#8EB69B`, mint `#DAF1DE`,
  zemin `#F3F8F4`; yuvarlak köşeli kartlar. Yeni marka dili icat etme.
- Yayın: derle → zip → Plesk Dosya Yöneticisi.

## Kurallar
- Gizli bilgi (servis hesabı, PayTR anahtar/tuz, SMTP şifresi) bu depoya, siteye ve sohbete GİRMEZ.
- Tarayıcı Firestore'a doğrudan yazmaz; formlar `api.ALAN` üzerinden.
- Kişisel veri URL'ye konmaz. Google Analytics yok, çerezsiz analitik.
- Metinler Türkçe ve uygulamadaki metinlerle tutarlı. Yasal metinler avukat onayından önce "taslak".
- Commit yalnız istenince (yedek commit serbest).

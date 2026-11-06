# Demo hesapları

`tool/seed.js` tarafından oluşturulur. Son yükleme: 2026-11-05T23:21:50.252Z (proje: `umrerehberim-cc99e`)

TC numaraları **sahte test numaralarıdır**, yalnızca TC doğrulama algoritmasına uyarlar.

| TC kimlik no | Tip | Girişte seçilecek | Ad | Cinsiyet |
|---|---|---|---|---|
| `10000000146` | Süper Admin | Yönetici | Süper Admin | Erkek |
| `20000000282` | Acente Admini | Yönetici | Ahmet Yılmaz (Rehber) | Erkek |
| `20000000350` | Yönetici (genel) | Yönetici | Zeynep Arslan (Genel Yönetici) | Kadın |
| `30000000328` | Misafir | Misafir | Mehmet Demir | Erkek |
| `30000000496` | Misafir | Misafir | Ayşe Demir | Kadın |
| `30000000564` | Misafir | Misafir | Fatma Kaya | Kadın |

- Acente: **Hekzapot Turizm** (`demo_agency_hekzapot`)
- Mekke seferi: 2026-11-16 – 2026-11-25 (`demo_trip_mekke`, ana sayfada geri sayım görünür)
- Medine seferi: 2026-11-25 – 2026-11-30 (`demo_trip_medine`)
- Oteller: Swissotel Al Maqam (Mekke), Pullman Zamzam Madinah (Medine)
- Misafirlerin hepsi her iki sefere, otele ve bir odaya atanmıştır.
- Ezan vakitleri: dünden itibaren 45 gün (`mekke_prayer_times`, `medine_prayer_times`). Süre dolunca betiği yeniden çalıştırın.
- Bildirim topic'leri: `agency_demo_agency_hekzapot`, `trip_demo_trip_mekke`, `trip_demo_trip_medine`

Giriş: e-posta `<tc>@umrerehberim.app`, şifre TC (uygulama bunu kendisi yapar, kullanıcı sadece TC girer).

Yeniden yüklemek için: `cd tool && node seed.js --reset`

## Esnaf (demo)

| Dükkan | Giriş tipi | Esnaf kodu | PIN |
|---|---|---|---|
| Demo Hediyelik (Test) | Esnaf | UMRE26 | 246810 |

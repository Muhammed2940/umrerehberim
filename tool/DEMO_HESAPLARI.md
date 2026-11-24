# Demo hesapları

`tool/seed.js` tarafından oluşturulur. Son yükleme: 2026-11-24T21:23:11.194Z (proje: `umrerehberim-cc99e`)

TC numaraları **sahte test numaralarıdır**, yalnızca TC doğrulama algoritmasına uyarlar; **girişte kullanılmaz**, yalnız kayıttır.

| Kullanıcı ID | Tip | Girişte seçilecek | Ad | Cinsiyet | TC (yalnız kayıt) |
|---|---|---|---|---|---|
| `1000146` | Süper Admin | Yönetici | Süper Admin | Erkek | `10000000146` |
| `2380412` | Acente Admini | Yönetici | Ahmet Yılmaz (Rehber) | Erkek | `20000000282` |
| `2275816` | Yönetici (genel) | Yönetici | Zeynep Arslan (Genel Yönetici) | Kadın | `20000000350` |
| `5210116` | Misafir | Misafir | Mehmet Demir | Erkek | `30000000328` |
| `3747369` | Misafir | Misafir | Ayşe Demir | Kadın | `30000000496` |
| `5528295` | Misafir | Misafir | Fatma Kaya | Kadın | `30000000564` |

- Acente: **Hekzapot Turizm** (`demo_agency_hekzapot`)
- Mekke seferi: 2026-12-05 – 2026-12-14 (`demo_trip_mekke`, ana sayfada geri sayım görünür)
- Medine seferi: 2026-12-14 – 2026-12-19 (`demo_trip_medine`)
- Oteller: Swissotel Al Maqam (Mekke), Pullman Zamzam Madinah (Medine)
- Misafirlerin hepsi her iki sefere, otele ve bir odaya atanmıştır.
- Ezan vakitleri: dünden itibaren 45 gün (`mekke_prayer_times`, `medine_prayer_times`). Süre dolunca betiği yeniden çalıştırın.
- Bildirim topic'leri: `agency_demo_agency_hekzapot`, `trip_demo_trip_mekke`, `trip_demo_trip_medine`

Giriş: **Kullanıcı ID + şifre** (uygulama e-postayı `id<ID>@umrerehberim.app` olarak kendisi kurar). Şifreleri betik belirler ve
**bu dosyada tutulmaz**: yeni açılan hesapların şifresi `tool/seed_sonuc.local.md`'ye, `tool/id_gecis.js` ile taşınanlarınki
`tool/id_gecis_sonuc.local.md`'ye yazılır (ikisi de gizli, git'e girmez). Kök süper adminin ID'si sabit **1000146**,
şifresi kurulumdaki (değiştirdiyse güncel) şifredir.

Yeniden yüklemek için: `cd tool && node seed.js --reset`

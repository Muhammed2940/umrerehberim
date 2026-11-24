# Demo hesapları

`tool/seed.js` tarafından oluşturulur (yeni sürüm: Kullanıcı ID + şifre girişi). Proje: `umrerehberim-cc99e`.

**Giriş artık TC ile DEĞİL, Kullanıcı ID (7 hane) + şifre iledir.** TC numaraları **sahte test numaralarıdır**, yalnızca
TC doğrulama algoritmasına uyarlar; girişte kullanılmaz, yalnız kayıttır.

| Kullanıcı ID | Tip | Girişte seçilecek | Ad | Şifre |
|---|---|---|---|---|
| `1000146` (sabit) | Süper Admin (kök) | Yönetici | Süper Admin | kurulumdaki şifre (TC ile açıldıysa `10000000146`; profilden değiştirilebilir) |
| betik çıktısı | Acente Admini | Yönetici | Ahmet Yılmaz (Rehber) | betik çıktısı |
| betik çıktısı | Yönetici (genel) | Yönetici | Zeynep Arslan (Genel Yönetici) | betik çıktısı |
| betik çıktısı | Misafir | Misafir | Mehmet Demir | betik çıktısı |
| betik çıktısı | Misafir | Misafir | Ayşe Demir | betik çıktısı |
| betik çıktısı | Misafir | Misafir | Fatma Kaya | betik çıktısı |

**ID'leri ve şifreleri betik belirler; bu dosyada tutulmaz** (rastgele üretilir, bir daha görüntülenemez):

- Mevcut (eski TC'li) hesaplar `node tool/id_gecis.js --uygula` ile taşınır; ID + şifreler
  `tool/id_gecis_sonuc.local.md` dosyasına yazılır (gizli, git'e girmez).
- Sıfırdan açılan hesapları `node tool/seed.js` oluşturur; ID + şifreler konsola ve `tool/seed_sonuc.local.md` dosyasına yazılır (gizli).
- Misafir şifresi 8, personel şifresi 10 karakterdir (harf + rakam, 0/O ve 1/l/I yok).
- Kök hesabın e-postası (`10000000146@umrerehberim.app`) değişmez; giriş ekranı `1000146` ID'sini bu e-postaya eşler.
- Esnaf ve Google (bireysel) girişleri değişmedi.

## Demo verisi

- Acente: **Hekzapot Turizm** (`demo_agency_hekzapot`)
- Mekke seferi (`demo_trip_mekke`, ana sayfada geri sayım görünür) ve Medine seferi (`demo_trip_medine`); tarihleri `seed.js` çalıştırıldığı güne göre ayarlanır.
- Oteller: Swissotel Al Maqam (Mekke), Pullman Zamzam Madinah (Medine)
- Misafirlerin hepsi her iki sefere, otele ve bir odaya atanmıştır.
- Ezan vakitleri: dünden itibaren 45 gün (`mekke_prayer_times`, `medine_prayer_times`). Süre dolunca betiği yeniden çalıştırın.
- Bildirim topic'leri: `agency_demo_agency_hekzapot`, `trip_demo_trip_mekke`, `trip_demo_trip_medine`

Yeniden yüklemek için: `cd tool && node seed.js --reset` (kök şifresi TC değilse önce `UMRE_KOK_SIFRE` ortam değişkenini ayarlayın).
Not: `--reset` users belgelerini silmez (login_id kuralı gereği üzerine yazar).

## Esnaf (demo)

| Dükkan | Giriş tipi | Esnaf kodu | PIN |
|---|---|---|---|
| Demo Hediyelik (Test) | Esnaf | UMRE26 | 246810 |

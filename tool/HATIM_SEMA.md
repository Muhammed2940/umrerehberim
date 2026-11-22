# Toplu Hatim — veri sözleşmesi (kurallar, servis ve testler buna uyar)

Spark planı, Cloud Functions yok. Tüm yetki `firestore.rules` içinde; istemci güvenilmez.
Bildirimler sunucusuz: uygulama üyesi olduğu grupları dinler, `last_event` değişince yerel bildirim gösterir.
Testler: `tool/rules-test/hatim_rules.test.mjs`.

## `hatim_groups/{gid}` (gid = Firestore otomatik id)
| Alan | Tip | Kural |
|---|---|---|
| name | string | 3–60 karakter |
| niyet | string | 0–300 karakter (dua/niyet notu) |
| unit | string | `cuz` (30 parça) veya `sayfa` (604 parça); oluşturulduktan sonra değişmez |
| total | int | unit `cuz` ise 30, `sayfa` ise 604; değişmez |
| is_public | bool | true: tüm giriş yapmış kullanıcılar görür/katılır. false: yalnız aynı acente |
| agency_id | string | oluşturanın acentesi (`users/{uid}.agency_id`), değişmez |
| owner_uid | string | = oluşturan uid, değişmez |
| owner_name | string | oluşturanın `user_name`'i |
| members | list<string> | uid listesi, en fazla 200; oluştururken `[owner_uid]` |
| member_count | int | = members.size() |
| round | int | kaçıncı hatim, 1'den başlar |
| done_count | int | bu turda biten parça sayısı, 0..total |
| status | string | `active` / `completed` |
| holds | map<uid,int> | kota: kişinin o an `taken` durumundaki parça sayısı. Oluştururken `{}`; yeni turda `{}` |
| deadline | timestamp? | isteğe bağlı hedef tarih |
| last_event | map | `{type, uid, name, unit, round, at}` — type: `create`,`join`,`leave`,`kick`,`take`,`release`,`done`,`completed`,`new_round`. `unit` her zaman int 0..604 (parça olaylarında 1..total, diğerlerinde 0) |
| created_at, updated_at | timestamp | request.time |
| completed_at | timestamp? | tamamlanınca |

Kota: cüz grubunda kişi başı en fazla **3**, sayfa grubunda **20** bitmemiş parça.

## `hatim_groups/{gid}/parts/{round}_{n}`
`{n, round, uid, name, status:'taken'|'done', taken_at, done_at}`. Belge yoksa parça boştur.

## `hatim_rate/{uid}` (grup kurma hız sınırı)
`{last_create_at}` = request.time. Yalnız sahibi okur/yazar, silinemez. Güncelleme son değerden 60 sn sonra.

## İşlemler (her biri istemcideki tek batch/transaction)
- **Oluştur:** giriş yapmış ve rolü `esnaf` olmayan herkes. TEK BATCH: `hatim_rate/{ben}.last_create_at = serverTimestamp` + grup.
  owner_uid = auth.uid, members = [auth.uid], member_count 1, round 1, done_count 0, status active, holds `{}`, last_event.type `create`.
  Kural grup oluştururken `getAfter(hatim_rate/{ben}).last_create_at == request.time` ister → en fazla dakikada bir grup.
- **Katıl:** üye değilse; grup is_public ya da aynı acente; member_count < 200. Yalnız `members` (kendi uid eklenir), `member_count` (+1), `last_event` (type join, uid=ben), `updated_at` değişir.
  Grubun son olayı benim `leave` olayımsa, ondan 30 sn geçmeden tekrar katılamam.
- **Ayrıl:** üye ise ve sahip değilse; kendi uid çıkar, member_count −1, last_event type leave. `holds` dokunulmaz.
- **Üyeyi çıkar (kick):** yalnız sahip veya genel admin (süper admin/yönetici). Önce o üyenin bu turdaki `taken` parçaları tek tek **Bırak** ile boşaltılır; sonra:
  tam olarak bir uid (sahip değil) `members`'tan çıkar, member_count = members.size(), `holds.<uid>` silinir, last_event `{type:'kick', uid: ben, unit: 0}`.
- **Parça al:** TEK BATCH/TRANSACTION: parça belgesi OLUŞTURULUR (batch öncesi yok; id tekil → iki kişi aynı parçayı alamaz) +
  grup `holds.<ben> = eski + 1` (≤ kota), `last_event {type:'take', unit: n}`, `updated_at`. Grup aktif, ben üyeyim, round = grubun round'u, 1 ≤ n ≤ total.
  Parça create kuralı `getAfter(grup).last_event.unit == n` ve `holds[ben] == get(grup).holds[ben] + 1` ister: grup güncellemesi atlanamaz, tek +1 ile iki parça alınamaz.
- **Bırak:** TEK BATCH/TRANSACTION: `taken` parça silinir + grup `holds.<parça sahibi> = max(eski − 1, 0)`, `last_event {type:'release', unit: n}`.
  Grup aktif; parça batch öncesi var ve `taken`; yapan parça sahibi, grup sahibi veya genel admin.
  (Parça silme tek başına da serbest — grup silerken temizlik için; o durumda holds düşmez, yalnız parça sahibinin kotası dolu kalır.)
  Bitmiş (`done`) parça kimse tarafından silinemez; yalnız grup silindikten sonra sahipsiz kalan parçayı süper admin temizler.
- **Bitirdim:** TEK BATCH/TRANSACTION: parça `taken → done` (yalnız `status`, `done_at`; sahibi ben; `taken_at`'tan en az **60 sn** sonra) + grup:
  `done_count = eski + 1`, `holds.<ben> = max(eski − 1, 0)`, `last_event = {type:'done' veya 'completed', uid: ben, unit: n, round}`, `updated_at`;
  `done_count == total` ise `status = 'completed'`, `completed_at`, type `completed`.
  Kural iki yönlü bağlar: grup tarafı `get(part)` taken/ben ve `getAfter(part)` done/ben ister; parça tarafı `getAfter(grup).last_event.unit == n`,
  aynı round, type done/completed ve `done_count == eski + 1` ister → bir sayaç artışıyla yalnız tek parça done olur.
- **Yeni tur:** yalnız sahip (veya genel admin), status `completed` iken: round +1, done_count 0, status active, completed_at null, holds `{}`, last_event type new_round.
- **Düzenle:** sahip name/niyet/deadline/is_public değiştirebilir.
- **Sil:** sahip, genel admin, veya grubun acentesinin acente admini (agency_id boş değilse). İstemci önce `taken` parçaları ≤100'lük batch'lerle siler; başarısız olsa da grubu siler.
- **Okuma:** is_public, aynı acente, üye, genel admin (süper admin/yönetici) veya destek. Muhasebe ve başka acentenin acente admini özel grubu OKUYAMAZ.
  Parçalar: grubu okuyabilen; sahipsiz (grubu silinmiş) parçalar yalnız süper admin.
- `last_event.uid` her zaman auth.uid, `last_event.name` = `users/{uid}.user_name`, `at` = `updated_at` = request.time.

## Sorgular ve indeksler
- Gruplarım: `members array-contains uid` (sıralama istemcide).
- Keşfet: `is_public == true orderBy updated_at desc limit 100` ve `agency_id == <acente> orderBy updated_at desc limit 100`
  (bileşik indeksler `firestore.indexes.json` içinde).
- Parçalar: `parts where round == n` (tek alan, otomatik indeks).

## Kural maliyeti
Grup update kuralı önce `changed()` ve `last_event.type` ile tek bir dala yönlenir; get()/getAfter() yalnız seçilen dalda en sonda çalışır.
İstek başına belge erişimi (users dahil): oluştur 2, katıl/ayrıl/kick 1, al 5, bırak 4–5, bitirdim 5 (batch sınırı 20).

## Bildirimler (istemci)
- `HatimWatcher`: `hatim_groups where members array-contains uid` dinlenir. `last_event.at` son görülenden yeniyse ve `last_event.uid != ben` ise yerel bildirim:
  join → "X gruba katıldı", done → "X 12. cüzü bitirdi (18/30)", completed → "Hatim tamamlandı! Allah kabul etsin", new_round → "2. hatim başladı".
- Başlık her zaman sabit "Toplu Hatim" (çeviri `hatimTitle`). Grup adı yalnız gövdede: kontrol/yön karakterleri (U+200E/F, U+202A–E, U+2066–9, satır sonları vb.) temizlenir, 40 karaktere kısaltılır.
- Aynı `join` (gid+uid) en fazla bir kez bildirilir: SharedPreferences `hatim_join_notified` (son 300 kayıt).
- Son görülen zaman SharedPreferences `last_seen_hatim_ms`.

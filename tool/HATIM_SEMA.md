# Toplu Hatim — veri sözleşmesi (kurallar, servis ve testler buna uyar)

Spark planı, Cloud Functions yok. Bildirimler sunucusuz: uygulama üyesi olduğu
grupları dinler, `last_event` değişince yerel bildirim gösterir.

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
| deadline | timestamp? | isteğe bağlı hedef tarih |
| last_event | map | `{type, uid, name, unit, round, at}` — type: `create`,`join`,`leave`,`take`,`release`,`done`,`completed`,`new_round` |
| created_at, updated_at | timestamp | request.time |
| completed_at | timestamp? | tamamlanınca |

### İşlemler
- **Oluştur:** giriş yapmış ve rolü `esnaf` olmayan herkes. owner_uid = auth.uid, members = [auth.uid], member_count 1, round 1, done_count 0, status active, last_event.type `create`.
- **Katıl:** üye değilse; grup is_public ya da aynı acente; member_count < 200. Yalnız `members` (kendi uid eklenir), `member_count` (+1), `last_event` (type join, uid=ben), `updated_at` değişir.
- **Ayrıl:** üye ise ve sahip değilse; kendi uid çıkar, member_count −1, last_event type leave.
- **Parça al:** `hatim_groups/{gid}/parts/{round}_{n}` belgesi OLUŞTURULUR (yoksa boş demektir). Belge id'si tekil olduğundan iki kişi aynı parçayı alamaz.
  Alanlar: `{n, round, uid, name, status:'taken', taken_at, done_at:null}`. uid = ben, üye olmalı, round = grubun round'u, 1 ≤ n ≤ total, grup status active.
  Aynı batch'te grup `last_event` (type take, unit n) + `updated_at` güncellenebilir (zorunlu değil).
- **Bırak:** parça sahibi (veya grup sahibi / admin) `taken` durumdaki parçayı SİLER. Bitmiş (`done`) parça silinemez.
- **Bitirdim:** TEK BATCH: parça `taken → done` (yalnız `status`, `done_at` değişir; sahibi ben) + grup güncellemesi:
  `done_count = eski + 1`, `last_event = {type:'done' veya 'completed', uid: ben, unit: n, round: grubun round'u}`, `updated_at`;
  eğer `done_count == total` ise `status = 'completed'`, `completed_at`, type `completed`.
  Kural: `get(part).status == 'taken'` (batch öncesi) VE `getAfter(part).status == 'done'` VE parça sahibi ben. Böylece bir parça iki kez sayılamaz.
- **Yeni tur:** yalnız sahip (veya admin), status `completed` iken: round +1, done_count 0, status active, completed_at null, last_event type new_round.
- **Düzenle:** sahip name/niyet/deadline/is_public değiştirebilir.
- **Sil:** sahip veya süper admin/yönetici.
- **Okuma:** is_public, aynı acente, üye veya personel (isStaff). Parçalar: grubu okuyabilen.
- `last_event.uid` her zaman auth.uid, `last_event.name` = `users/{uid}.user_name`.

## Bildirimler (istemci)
- `HatimWatcher`: `hatim_groups where members array-contains uid` dinlenir. `last_event.at` son görülenden yeniyse ve `last_event.uid != ben` ise yerel bildirim:
  join → "X gruba katıldı", done → "X 12. cüzü bitirdi (18/30)", completed → "Hatim tamamlandı! Allah kabul etsin", new_round → "2. hatim başladı".
- Son görülen zaman SharedPreferences `last_seen_hatim_ms`.

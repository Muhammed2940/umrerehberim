# Süper Admin (Kontrol Merkezi) veri şeması

Güvenlik `firestore.rules` içinde (SÜPER ADMİN MODÜLLERİ bölümü). Burada yazmayan alan
kurallarda reddedilebilir; alan adlarını aynen kullan. Zaman alanları `FieldValue.serverTimestamp()`
(kurallar `== request.time` ister). Para birimi SAR.

## Roller
| user_type | Kim | Panel |
|---|---|---|
| super_admin | her şey | Kontrol Merkezi (tüm modüller) |
| destek | süper adminin alt hesabı, acentesi yok | Kontrol Merkezi: Acenteler (salt okuma), Mesajlar, Risk |
| muhasebe | süper adminin alt hesabı, acentesi yok | Kontrol Merkezi: Finans/Hak ediş, Esnaf raporları, Sadakat (okuma), Kuponlar (okuma) |
| yonetici | genel yardımcı admin | mevcut SuperAdminDashboard (değişmez) + Mesajlar |
| acente_admin | kendi acentesi | mevcut AdminDashboardScreen + "Merkez Mesajları" |
Dart: `user.isSuperAdmin`, `isSupport`, `isFinance`, `isPlatformStaff`, `usesControlCenter`.

## Var olan koleksiyonlar (okunur)
- `shop_transactions/{tokenId}`: shop_id, shop_name, shop_agency_id, guest_uid, guest_name,
  guest_agency_id, amount_gross, discount_percent, discount_amount, amount_net, payment_method
  (nakit|kart|puan), points_earned, points_spent, commission_percent, cashier_uid, status (ok|iptal),
  created_at, cancelled_at, cancel_reason, **coupon_id** (yeni, '' = yok), **coupon_discount** (yeni, sayı).
  Model: `lib/features/esnaf/models/shop_transaction.dart`.
- `shops/{id}`: name, category, agency_id ('all' | acente), discount_percent, commission_percent,
  is_active, owner_uid, merchant_code, **view_count** (yeni, int; herkes yalnız +1 artırabilir).
- `users/{uid}`: user_type, agency_id, user_name, created_at, **last_active_at** (yeni; kullanıcı
  kendi belgesine yazar → DAU/MAU).
- `agencies/{id}`: name, is_active, ...

## Yeni koleksiyonlar
### audit_logs/{auto}
actor_uid (== auth.uid), actor_name, actor_role, action (AuditAction.*), target_type, target_id,
target_name, details (map), created_at. Ekleme: herhangi bir admin/personel. Okuma: süper admin.
Değiştirme/silme yok. Yazmak için: `AuditLog.write(...)` veya `AuditLog.addToBatch(...)`
(`lib/features/control_center/shared/audit_log.dart`).

### point_adjustments/{auto}
guest_uid, guest_name, guest_agency_id, points (int, ≠0, −100000..100000), reason, created_by
(== auth.uid), created_at, reverted (bool, false), reverts_id ('' veya geri alınan kaydın id'si),
batch_id ('' veya toplu yüklemenin id'si). Geri alma: ters işaretli yeni kayıt (reverts_id dolu) +
asıl kayıtta update {reverted: true, reverted_by_id, reverted_at}. Yalnız süper admin yazar;
misafir kendi kayıtlarını, muhasebe hepsini okur.
**Misafir puan bakiyesi = Σ(işlem points_earned − points_spent, iptaller hariç) + Σ(point_adjustments.points).**

### coupons/{CODE}
code (büyük harf, = belge id), title, description, type ('percent'|'fixed'), value (sayı),
min_spend (sayı, 0 = yok), max_discount (sayı, 0 = tavan yok), valid_from, valid_until (Timestamp),
agency_id ('all' | acente), shop_id ('all' | dükkan), max_uses (int, 0 = sınırsız), used_count (int),
active (bool), created_by, created_at, last_tx_id ('').
Misafir okuma sorgusu: `where active == true` + `where agency_id in ['all', <acente>]`.
Kupon misafir başına **bir kez** kullanılır.

### coupon_redemptions/{CODE}_{guestUid}
coupon_id, guest_uid, shop_id, tx_id, discount, created_at.

### Kuponlu alışveriş akışı
1. Misafir QR üretirken kupon seçer → `shop_tokens` belgesine `coupon_id` yazılır (yoksa '').
2. Esnaf işlemi kaydederken AYNI BATCH'te:
   - `shop_transactions/{tokenId}` (coupon_id = token.coupon_id, coupon_discount > 0)
   - `coupon_redemptions/{CODE}_{guestUid}` {coupon_id, guest_uid, shop_id, tx_id: tokenId, discount, created_at}
   - `coupons/{CODE}` update {used_count: used_count + 1, last_tx_id: tokenId}
   - (mevcut) `shop_tokens/{id}` used = true
3. İndirim: percent → amount_gross × value / 100; fixed → value; max_discount > 0 ise onunla sınırla;
   amount_gross < min_spend ise kupon uygulanamaz. Kupon indirimi mağaza indiriminden SONRA
   net tutardan düşülür (net ≥ 0).

### shop_reviews/{txId}
tx_id, shop_id, guest_uid, guest_agency_id, rating (int 1..5), comment (≤500), complaint (bool),
created_at. Yalnız o alışverişi yapan misafir, bir kez. Okuma: süper admin, muhasebe, o dükkanın
esnafı, misafirin kendisi.

### settlements/{shopId}_{YYYY-MM}
shop_id, shop_name, shop_agency_id, period ('2026-11'), tx_count, gross, net, discount_total,
coupon_total, commission_total, agency_share, platform_share, status ('bekliyor'|'odendi'),
paid_at, paid_by, note, updated_at. Süper admin ve muhasebe okur/yazar.

### platform_settings/finance
platform_share_percent (int 0..100; komisyonun platforma kalan kısmı, kalan acenteye),
updated_at. Okuma süper admin + muhasebe; yazma süper admin.

### risk_reviews/{alarmId}
alarm_id, status ('incelendi'|'yanlis_alarm'|'onaylandi'), note, reviewed_by, reviewed_by_name,
reviewed_at. Süper admin ve destek.

### agency_messages/{auto}
agency_id, from_side ('hq'|'agency'), from_uid (== auth.uid), from_name, title, body, created_at,
read_by_hq (bool), read_by_agency (bool), broadcast_id ('' veya toplu gönderimin id'si).
Merkez (süper admin, yönetici, destek) tümünü okur ve 'hq' olarak yazar; acente admini yalnız
kendi acentesini (`where agency_id == <acente>`) okur ve 'agency' olarak yazar.
Okundu: merkez yalnız read_by_hq, acente yalnız read_by_agency günceller.
Tüm acentelere duyuru = her acente için bir belge (aynı broadcast_id).

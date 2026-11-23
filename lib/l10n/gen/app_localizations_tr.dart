// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get adminActive => 'Aktif';

  @override
  String get adminAdd => 'Ekle';

  @override
  String get adminAddress => 'Adres';

  @override
  String get adminAgencies => 'Acentalar';

  @override
  String get adminAgencyActive => 'Aktif Acenta';

  @override
  String get adminAgencyAddTitle => 'Yeni Acenta Ekle';

  @override
  String get adminAgencyCreateFailed => 'Acenta oluşturulamadı';

  @override
  String get adminAgencyCreated => 'Acenta oluşturuldu';

  @override
  String get adminAgencyDelete => 'Acentayı Sil';

  @override
  String adminAgencyDeleteConfirm(String name) {
    return '\"$name\" acentasını silmek istediğinize emin misiniz?\n\nBu işlem geri alınamaz ve acentaya bağlı veriler etkilenebilir.';
  }

  @override
  String get adminAgencyDeleteFailed => 'Acenta silinemedi';

  @override
  String get adminAgencyDeleted => 'Acenta silindi';

  @override
  String get adminAgencyDetail => 'Acenta Detayı';

  @override
  String get adminAgencyEdit => 'Acenta Düzenle';

  @override
  String get adminAgencyEmpty => 'Henüz acenta eklenmemiş';

  @override
  String adminAgencyLabel(String name) {
    return 'Acente: $name';
  }

  @override
  String get adminAgencyLoadFailed => 'Acentalar yüklenemedi';

  @override
  String get adminAgencyNameMissing => 'Acenta adı gerekli';

  @override
  String get adminAgencyNameRequired => 'Acenta Adı *';

  @override
  String get adminAgencyNew => 'Yeni Acenta';

  @override
  String get adminAgencyNotFound => 'Acenta bulunamadı';

  @override
  String get adminAgencyRequired => 'Acenta *';

  @override
  String adminAgencySummary(int users, int trips, int hotels, int currencies) {
    return '$users kişi • $trips sefer • $hotels otel • $currencies döviz';
  }

  @override
  String get adminAgencyTotal => 'Toplam Acenta';

  @override
  String get adminAgencyUpdateFailed => 'Acenta güncellenemedi';

  @override
  String get adminAgencyUpdated => 'Acenta güncellendi';

  @override
  String get adminAllTrips => 'Tüm seferler';

  @override
  String adminAnalyticsAssignedGuests(int assigned, int total) {
    return '$assigned / $total misafir bir sefere atanmış';
  }

  @override
  String get adminAnalyticsAssignment => 'Atama Durumu';

  @override
  String get adminAnalyticsGender => 'Misafir Cinsiyet Dağılımı';

  @override
  String get adminAnalyticsOverview => 'Genel Durum';

  @override
  String get adminAreYouSure => 'Emin misiniz?';

  @override
  String get adminAssignFailed => 'Atama kaydedilemedi';

  @override
  String adminAssignGenderMismatch(String gender) {
    return 'Bu oda $gender için ayrılmış! Cinsiyet uyumsuz.';
  }

  @override
  String adminAssignHotel(String city) {
    return '$city Oteli';
  }

  @override
  String adminAssignRoom(String city) {
    return '$city Odası';
  }

  @override
  String get adminAssignRoomFull => 'Oda kapasitesi dolu! Başka bir oda seçin.';

  @override
  String get adminAssignRoomRequired =>
      'Otel seçildiğinde oda seçim zorunludur.';

  @override
  String adminAssignTitle(String city) {
    return '$city Ataması';
  }

  @override
  String adminAssignTrip(String city) {
    return '$city Seferi';
  }

  @override
  String get adminAssignUpdated => 'Atama güncellendi';

  @override
  String get adminBirthDate => 'Doğum Tarihi';

  @override
  String get adminCapacityInvalid => 'Geçerli kapasite girin';

  @override
  String get adminCapacityRequired => 'Kapasite *';

  @override
  String get adminCityJeddah => 'Cidde';

  @override
  String get adminCityOther => 'Diğer';

  @override
  String get adminCurrencyAdd => 'Döviz Ekle';

  @override
  String get adminCurrencyAddFailed => 'Döviz eklenemedi';

  @override
  String get adminCurrencyAddTitle => 'Yeni Döviz Ekle';

  @override
  String get adminCurrencyAdded => 'Döviz eklendi';

  @override
  String get adminCurrencyDelete => 'Dövizi Sil';

  @override
  String adminCurrencyDeleteConfirm(String name) {
    return '$name dövizini silmek istediğinize emin misiniz?';
  }

  @override
  String get adminCurrencyDeleteFailed => 'Döviz silinemedi';

  @override
  String get adminCurrencyDeleted => 'Döviz silindi';

  @override
  String get adminCurrencyEdit => 'Döviz Düzenle';

  @override
  String get adminCurrencyEmpty => 'Henüz döviz eklenmedi.';

  @override
  String get adminCurrencyFlag => 'Bayrak';

  @override
  String get adminCurrencyLoadFailed => 'Döviz kurları yüklenemedi';

  @override
  String get adminCurrencyName => 'Ad (USD, EUR...)';

  @override
  String get adminCurrencyQuickAdd => 'Hızlı ekle';

  @override
  String get adminCurrencyTab => 'Döviz';

  @override
  String get adminCurrencyUpdateFailed => 'Döviz güncellenemedi';

  @override
  String get adminCurrencyUpdated => 'Döviz güncellendi';

  @override
  String get adminCurrencyValue => 'Değer (₺)';

  @override
  String get adminCurrencyValueInvalid => 'Geçerli bir değer girin';

  @override
  String get adminDataLoadFailed => 'Veriler yüklenirken bir hata oluştu';

  @override
  String get adminDateHint => 'gg/aa/yyyy';

  @override
  String get adminDateInvalid => 'Geçerli bir tarih girin (gg/aa/yyyy)';

  @override
  String get adminDescription => 'Açıklama';

  @override
  String get adminDetail => 'Detay';

  @override
  String get adminDurationMin => 'Süre (dk)';

  @override
  String get adminEmail => 'E-posta';

  @override
  String get adminEndDate => 'Bitiş';

  @override
  String get adminEsnafAccountActive => 'Esnaf hesabı açık';

  @override
  String get adminEsnafAccountNone =>
      'Bu dükkanın esnaf hesabı yok. Hesap açılınca esnaf kod ve PIN ile giriş yapar, misafirin QR kodunu okutarak indirimli satışı kaydeder.';

  @override
  String get adminEsnafAccountSection => 'Esnaf Hesabı';

  @override
  String adminEsnafAlertBigTx(String guest, String shop, String amount) {
    return '$guest – $shop: tek işlemde $amount';
  }

  @override
  String adminEsnafAlertManyTx(
    String guest,
    String shop,
    String date,
    int count,
  ) {
    return '$guest – $shop: $date tarihinde $count işlem';
  }

  @override
  String adminEsnafAlertQuickCancel(String guest, String shop, String amount) {
    return '$guest – $shop: $amount tutarlı işlem 24 saat içinde iptal edildi';
  }

  @override
  String get adminEsnafAlerts => 'Uyarılar';

  @override
  String get adminEsnafBadgeNo => 'Esnaf hesabı yok';

  @override
  String get adminEsnafBadgeYes => 'Esnaf hesabı var';

  @override
  String get adminEsnafByShop => 'Dükkan bazında';

  @override
  String get adminEsnafCancelDone => 'İşlem iptal edildi';

  @override
  String get adminEsnafCancelReason => 'İptal sebebi';

  @override
  String adminEsnafCancelReasonLabel(String reason) {
    return 'Sebep: $reason';
  }

  @override
  String get adminEsnafCancelReasonRequired => 'Sebep girin';

  @override
  String get adminEsnafCancelTx => 'İşlemi iptal et';

  @override
  String get adminEsnafCancelled => 'İptal';

  @override
  String get adminEsnafClose => 'Hesabı kapat';

  @override
  String adminEsnafCloseConfirm(String name) {
    return '$name için esnaf hesabı kapatılsın mı? Esnaf artık giriş yapamaz.';
  }

  @override
  String get adminEsnafClosed => 'Esnaf hesabı kapatıldı';

  @override
  String get adminEsnafCode => 'Kod';

  @override
  String get adminEsnafCodeExists =>
      'Bu kod başka bir hesapta kullanılıyor. Tekrar deneyin.';

  @override
  String adminEsnafCodeLabel(String code) {
    return 'Esnaf kodu: $code';
  }

  @override
  String get adminEsnafCommission => 'Komisyon oranı (%)';

  @override
  String get adminEsnafCommissionHint => '0-30 arası, boş = 0';

  @override
  String get adminEsnafCommissionRange => 'Komisyon 0 ile 30 arasında olmalı';

  @override
  String adminEsnafCommissionShort(int percent) {
    return 'Komisyon %$percent';
  }

  @override
  String get adminEsnafContinue => 'Devam';

  @override
  String get adminEsnafCopied => 'Panoya kopyalandı';

  @override
  String get adminEsnafCopy => 'Kopyala';

  @override
  String get adminEsnafCreate => 'Esnaf hesabı oluştur';

  @override
  String get adminEsnafCreated => 'Esnaf hesabı oluşturuldu';

  @override
  String get adminEsnafCredsTitle => 'Esnaf giriş bilgileri';

  @override
  String get adminEsnafCredsWarning =>
      'Bu bilgileri esnafa iletin. PIN bir daha gösterilmeyecek.';

  @override
  String get adminEsnafDailyChart => 'Günlük net ciro (SAR)';

  @override
  String get adminEsnafDone => 'Tamam';

  @override
  String get adminEsnafEmpty => 'Bu dönemde anlaşmalı esnafta alışveriş yok.';

  @override
  String adminEsnafFailed(String error) {
    return 'İşlem başarısız: $error';
  }

  @override
  String get adminEsnafLoadFailed =>
      'Rapor yüklenemedi. Aşağı çekerek yenileyin.';

  @override
  String adminEsnafLoyaltyInfo(int points, String sar) {
    return 'Sadakat puanı: 1 SAR = $points puan, 100 puan = $sar SAR';
  }

  @override
  String get adminEsnafMenu => 'Esnaf Raporları';

  @override
  String get adminEsnafMenuSub => 'Anlaşmalı esnaf satışları ve komisyon';

  @override
  String get adminEsnafMethodCard => 'Kart';

  @override
  String get adminEsnafMethodCash => 'Nakit';

  @override
  String get adminEsnafMethodChart => 'Ödeme türü dağılımı';

  @override
  String get adminEsnafMethodPoints => 'Puan';

  @override
  String get adminEsnafNoAgencyHint =>
      'Raporu görmek için süper admin panelinden bir acente seçip yönetin.';

  @override
  String get adminEsnafNoAlerts => 'Şüpheli işlem yok.';

  @override
  String get adminEsnafPeriod30 => 'Son 30 gün';

  @override
  String get adminEsnafPeriodCustom => 'Özel aralık';

  @override
  String get adminEsnafPeriodLastMonth => 'Geçen ay';

  @override
  String get adminEsnafPeriodThisMonth => 'Bu ay';

  @override
  String get adminEsnafPin => 'PIN';

  @override
  String get adminEsnafPinField => '6 haneli PIN';

  @override
  String get adminEsnafPinInvalid => 'PIN 6 haneli rakam olmalı';

  @override
  String get adminEsnafPinManual => 'PIN\'i ben gireyim';

  @override
  String get adminEsnafPinRandom => 'Rastgele PIN üret';

  @override
  String adminEsnafRange(String from, String to) {
    return '$from – $to';
  }

  @override
  String get adminEsnafResetConfirm =>
      'Yeni bir kod ve PIN oluşturulacak. Eski kod ve PIN ile giriş artık çalışmaz. Devam edilsin mi?';

  @override
  String get adminEsnafResetPin => 'PIN sıfırla';

  @override
  String get adminEsnafSaveFirst =>
      'Esnaf hesabı açmak için önce dükkanı kaydedin.';

  @override
  String get adminEsnafShare => 'Komisyon dökümü paylaş';

  @override
  String get adminEsnafShareByShop => 'Dükkan bazında:';

  @override
  String get adminEsnafShareCopied => 'Komisyon dökümü panoya kopyalandı';

  @override
  String get adminEsnafShareHeader => 'Esnaf Komisyon Dökümü';

  @override
  String adminEsnafShareMessage(String shop, String code, String pin) {
    return 'السلام عليكم\nتم إنشاء حساب التاجر لمتجر $shop في تطبيق Umre Rehberim.\n1) ثبّت تطبيق Umre Rehberim على هاتفك.\n2) افتح التطبيق واختر «تاجر».\n3) الرمز: $code\n4) الرقم السري (PIN): $pin\nلا تشارك الرقم السري مع أحد.\n\nSelamün aleyküm\n$shop için Umre Rehberim esnaf hesabınız açıldı.\n1) Umre Rehberim uygulamasını telefonunuza yükleyin.\n2) Uygulamayı açıp giriş tipi olarak \"Esnaf\"ı seçin.\n3) Kod: $code\n4) PIN: $pin\nPIN\'inizi kimseyle paylaşmayın.';
  }

  @override
  String adminEsnafSharePeriod(String range) {
    return 'Dönem: $range';
  }

  @override
  String adminEsnafShareTotals(int count, String net, String commission) {
    return 'Toplam: $count işlem, net ciro $net, komisyon $commission';
  }

  @override
  String get adminEsnafShareWhatsapp => 'WhatsApp ile paylaş';

  @override
  String adminEsnafShopRow(
    int count,
    String net,
    int percent,
    String commission,
  ) {
    return '$count işlem · Net $net · %$percent → $commission';
  }

  @override
  String adminEsnafShowAll(int count) {
    return 'Tümünü göster ($count)';
  }

  @override
  String get adminEsnafSumCommission => 'Biriken komisyon';

  @override
  String get adminEsnafSumCount => 'Alışveriş sayısı';

  @override
  String get adminEsnafSumDiscount => 'Misafirlere sağlanan indirim';

  @override
  String get adminEsnafSumGross => 'Brüt ciro';

  @override
  String get adminEsnafSumNet => 'Net ciro';

  @override
  String get adminEsnafSumPointsEarned => 'Dağıtılan puan';

  @override
  String get adminEsnafSumPointsSpent => 'Harcanan puan';

  @override
  String get adminEsnafTransactions => 'İşlemler';

  @override
  String get adminEsnafWhatsappFailed =>
      'WhatsApp açılamadı; bilgiler panoya kopyalandı';

  @override
  String get adminEventAdd => 'Etkinlik Ekle';

  @override
  String get adminEventAddFailed => 'Etkinlik eklenemedi';

  @override
  String get adminEventAdded => 'Etkinlik eklendi';

  @override
  String get adminEventDelete => 'Etkinliği Sil';

  @override
  String adminEventDeleteConfirm(String title) {
    return '\"$title\" silinsin mi?';
  }

  @override
  String get adminEventDeleteFailed => 'Etkinlik silinemedi';

  @override
  String get adminEventDeleted => 'Etkinlik silindi';

  @override
  String get adminEventEdit => 'Etkinliği Düzenle';

  @override
  String get adminEventEmpty => 'Bu gün için etkinlik yok';

  @override
  String get adminEventEmptySub =>
      'Başka bir gün seçerek etkinlikleri görüntüleyin';

  @override
  String get adminEventLoadFailed => 'Etkinlikler yüklenemedi';

  @override
  String get adminEventPast => 'Gerçekleşti';

  @override
  String get adminEventUpcoming => 'Yaklaşan';

  @override
  String get adminEventUpdateFailed => 'Etkinlik güncellenemedi';

  @override
  String get adminEventUpdated => 'Etkinlik güncellendi';

  @override
  String get adminFilterAll => 'Tümü';

  @override
  String get adminGender => 'Cinsiyet';

  @override
  String get adminGenderFemale => 'Kadın';

  @override
  String get adminGenderMale => 'Erkek';

  @override
  String get adminGenderMixed => 'Karma';

  @override
  String get adminGenderRequired => 'Cinsiyet *';

  @override
  String get adminGenderUnspecified => 'Belirtilmemiş';

  @override
  String get adminHotelAdd => 'Otel Ekle';

  @override
  String adminHotelCapacityShort(int count) {
    return 'Kap. $count';
  }

  @override
  String get adminHotelCreateFailed => 'Otel oluşturulamadı';

  @override
  String get adminHotelCreated => 'Otel oluşturuldu';

  @override
  String get adminHotelDelete => 'Oteli Sil';

  @override
  String adminHotelDeleteConfirm(String name) {
    return '\"$name\" otelini ve tüm odalarını silmek istediğinize emin misiniz? Bu işlem geri alınamaz.';
  }

  @override
  String get adminHotelDeleteFailed => 'Otel silinemedi';

  @override
  String get adminHotelDeleted => 'Otel silindi';

  @override
  String get adminHotelEdit => 'Otel Düzenle';

  @override
  String get adminHotelEmpty => 'Henüz otel eklenmedi.';

  @override
  String get adminHotelNameRequired => 'Otel Adı *';

  @override
  String get adminHotelUpdateFailed => 'Otel güncellenemedi';

  @override
  String get adminHotelUpdated => 'Otel güncellendi';

  @override
  String get adminHotels => 'Oteller';

  @override
  String get adminInactive => 'Pasif';

  @override
  String get adminLiveMap => 'Canlı Konum Haritası';

  @override
  String get adminLiveMapSub => 'Acentenizdeki herkesin son konumu';

  @override
  String get adminLogout => 'Çıkış Yap';

  @override
  String get adminLogoutConfirm =>
      'Oturumu kapatmak istediğinize emin misiniz?';

  @override
  String get adminMakeActive => 'Aktif Yap';

  @override
  String get adminMakeInactive => 'Pasif Yap';

  @override
  String get adminManage => 'Yönet';

  @override
  String get adminManagement => 'Yönetim';

  @override
  String get adminMapDirections => 'Google Maps\'te yol tarifi';

  @override
  String get adminMapEveryoneOnMap => 'Haritada herkes';

  @override
  String adminMapLastUpdate(String time) {
    return 'Son güncelleme: $time';
  }

  @override
  String adminMapLatLng(String lat, String lng) {
    return 'Enlem: $lat  Boylam: $lng';
  }

  @override
  String get adminMapLoadFailed =>
      'Konumlar yüklenemedi. Yetkiniz olmayabilir.';

  @override
  String get adminMapLoading => 'Konum yükleniyor...';

  @override
  String get adminMapLocation => 'Konum';

  @override
  String get adminMapNoOneSharing => 'Henüz konum paylaşan kimse yok';

  @override
  String get adminMapNoSharedLocation => 'Bu kişinin paylaşılan konumu yok.';

  @override
  String get adminMapOpenFailed => 'Harita açılamadı';

  @override
  String get adminMapPeopleList => 'Kişi listesi';

  @override
  String get adminMapReadFailed => 'Konum okunamadı.';

  @override
  String get adminMapSelectAgencyHint =>
      'Konumları görmek için önce bir acente seçin.\nAcenteler sayfasından bir acenteyi \"Yönet\" ile açabilirsiniz.';

  @override
  String get adminMapSelectPerson => 'Kişi Seç';

  @override
  String get adminMapShowAll => 'Herkesi göster';

  @override
  String adminMapVisiblePeople(int count) {
    return 'Konumu görünen kişiler ($count)';
  }

  @override
  String get adminMenuAnalytics => 'Analiz';

  @override
  String get adminMenuAnalyticsSub => 'İstatistik ve grafikler';

  @override
  String get adminMenuCalendar => 'Takvim';

  @override
  String get adminMenuCalendarSub => 'Etkinlikleri yönet';

  @override
  String get adminMenuCurrency => 'Döviz Kurları';

  @override
  String get adminMenuCurrencySub => 'Döviz kurlarını yönet';

  @override
  String get adminMenuHome => 'Anasayfa';

  @override
  String get adminMenuHomeSub => 'Yönetim paneline dön';

  @override
  String get adminMenuHotels => 'Otel & Oda';

  @override
  String get adminMenuHotelsSub => 'Otelleri ve odaları yönet';

  @override
  String get adminMenuLiveLocation => 'Canlı Konum';

  @override
  String get adminMenuLiveLocationSub => 'Misafirleri haritada gör';

  @override
  String get adminMenuNotify => 'Bildirim Gönder';

  @override
  String get adminMenuNotifySub => 'Kullanıcılara bildirim gönder';

  @override
  String get adminMenuPeople => 'Kişiler';

  @override
  String get adminMenuPeopleSub => 'Kullanıcıları yönet';

  @override
  String get adminMenuRadio => 'Telsiz';

  @override
  String get adminMenuRadioSub => 'Misafirlere canlı sesli yayın';

  @override
  String get adminMenuShops => 'Anlaşmalı Dükkanlar';

  @override
  String get adminMenuShopsSub => 'İndirimli esnafı yönet';

  @override
  String get adminMenuTracking => 'Konum Takibi';

  @override
  String get adminMenuTrackingSub => 'Konum takibini yönet';

  @override
  String get adminMenuTrips => 'Seferler';

  @override
  String get adminMenuTripsSub => 'Seferleri yönet';

  @override
  String adminMinutes(int count) {
    return '$count dk';
  }

  @override
  String get adminNext => 'Sonraki';

  @override
  String get adminNoAgencySelected => 'Acente seçilmedi.';

  @override
  String get adminNoDate => 'Tarih yok';

  @override
  String get adminNoGuestsYet => 'Henüz misafir yok.';

  @override
  String get adminNoResults => 'Sonuç bulunamadı.';

  @override
  String get adminNotAssigned => 'Atanmadı';

  @override
  String get adminNotSelected => 'Seçilmedi';

  @override
  String get adminNote => 'Not';

  @override
  String adminNoteValue(String note) {
    return 'Not: $note';
  }

  @override
  String get adminNotifyEmpty => 'Henüz bildirim gönderilmedi.';

  @override
  String get adminNotifyHistoryLoadFailed => 'Bildirim geçmişi yüklenemedi';

  @override
  String get adminNotifyMessage => 'Mesaj';

  @override
  String get adminNotifyNoAgencyHint =>
      'Bildirim göndermek için önce bir acenteyi yönetmeye başlayın.';

  @override
  String get adminNotifyRequired => 'Başlık ve mesaj zorunlu';

  @override
  String get adminNotifySendFailed => 'Bildirim gönderilirken hata oluştu.';

  @override
  String get adminNotifySent => 'Gönderilen Bildirimler';

  @override
  String get adminNotifySentOk => 'Duyuru gönderildi';

  @override
  String get adminNotifyTarget => 'Gönderilecek Hedef';

  @override
  String get adminNotifyTargetAll => 'Tüm Acente';

  @override
  String get adminNotifyTargetInvalid => 'Lütfen geçerli bir hedef seçiniz.';

  @override
  String get adminNotifyTitle => 'Başlık';

  @override
  String get adminPanelTitle => 'Yönetim Paneli';

  @override
  String adminPeopleRatio(int count, int capacity) {
    return '$count/$capacity kişi';
  }

  @override
  String adminPersonCount(int count) {
    return '$count kişi';
  }

  @override
  String get adminPhone => 'Telefon';

  @override
  String get adminPickDate => 'Tarih Seçiniz';

  @override
  String get adminPickDay => 'Gün Seç';

  @override
  String get adminPrevious => 'Önceki';

  @override
  String get adminRemove => 'Çıkar';

  @override
  String get adminRequired => 'Gerekli';

  @override
  String get adminRequiredField => 'Zorunlu alan';

  @override
  String get adminRoleGuest => 'Misafir';

  @override
  String get adminRoleManager => 'Yönetici';

  @override
  String get adminRoleSuperAdmin => 'Süper Admin';

  @override
  String get adminRoomAdd => 'Oda Ekle';

  @override
  String adminRoomCount(int count) {
    return '$count oda';
  }

  @override
  String get adminRoomCreateFailed => 'Oda oluşturulamadı';

  @override
  String get adminRoomCreated => 'Oda oluşturuldu';

  @override
  String get adminRoomDelete => 'Odayı Sil';

  @override
  String adminRoomDeleteConfirm(String number) {
    return '$number numaralı oda silinecek. Emin misiniz?';
  }

  @override
  String get adminRoomDeleteFailed => 'Oda silinemedi';

  @override
  String get adminRoomDeleted => 'Oda silindi';

  @override
  String get adminRoomEdit => 'Oda Düzenle';

  @override
  String get adminRoomEmpty => 'Bu otele ait oda eklenmedi';

  @override
  String get adminRoomGenderMissing => 'Cinsiyet türü seçiniz';

  @override
  String get adminRoomNoOccupants => 'Bu odada kimse yok.';

  @override
  String adminRoomNumber(String number) {
    return 'Oda $number';
  }

  @override
  String get adminRoomNumberMissing => 'Oda numarası girin';

  @override
  String get adminRoomNumberRequired => 'Oda Numarası *';

  @override
  String adminRoomOccupancy(int count, int capacity) {
    return '$count/$capacity kişilik';
  }

  @override
  String adminRoomOccupantsTitle(String number) {
    return 'Oda $number - Kişiler';
  }

  @override
  String get adminRoomRemoveUser => 'Odadan Çıkar';

  @override
  String adminRoomRemoveUserConfirm(String name) {
    return '$name kullanıcısını bu odadan çıkarmak istediğinize emin misiniz?';
  }

  @override
  String get adminRoomUpdateFailed => 'Oda güncellenemedi';

  @override
  String get adminRoomUpdated => 'Oda güncellendi';

  @override
  String get adminRoomUserRemoveFailed => 'Kullanıcı odadan çıkarılamadı';

  @override
  String adminRoomUserRemoved(String name) {
    return '$name odadan çıkarıldı';
  }

  @override
  String get adminRooms => 'Odalar';

  @override
  String adminRoomsOfHotel(String name) {
    return '$name - Odalar';
  }

  @override
  String get adminSaving => 'Kaydediliyor...';

  @override
  String get adminSearchUser => 'Kullanıcı ara...';

  @override
  String get adminSend => 'Gönder';

  @override
  String get adminSending => 'Gönderiliyor...';

  @override
  String get adminStartDate => 'Başlangıç';

  @override
  String get adminStatHotel => 'Otel';

  @override
  String get adminStatPeople => 'Kayıtlı Kişi';

  @override
  String get adminStatRoom => 'Oda';

  @override
  String get adminStatTrip => 'Sefer';

  @override
  String get adminTc => 'TC';

  @override
  String get adminTcUnspecified => 'TC belirtilmemiş';

  @override
  String adminTcValue(String tc) {
    return 'TC: $tc';
  }

  @override
  String get adminTime => 'Saat';

  @override
  String get adminTitleRequired => 'Başlık *';

  @override
  String get adminTrackingDescription =>
      'Konum takibi aktif olduğunda, misafirleriniz sizin konumunuzu harita üzerinde görebilir. Bu özellik rehber olarak görev yaptığınızda faydalıdır.';

  @override
  String get adminTrip => 'Sefer';

  @override
  String adminTripAssignedCount(int count) {
    return '$count kişi atanmış';
  }

  @override
  String get adminTripCreate => 'Sefer Oluştur';

  @override
  String get adminTripCreateFailed => 'Sefer oluşturulamadı';

  @override
  String get adminTripCreated => 'Sefer oluşturuldu';

  @override
  String get adminTripDelete => 'Seferi Sil';

  @override
  String adminTripDeleteConfirm(String name) {
    return '\"$name\" seferini silmek istediğinize emin misiniz? Bu işlem geri alınamaz.';
  }

  @override
  String get adminTripDeleteFailed => 'Sefer silinemedi';

  @override
  String get adminTripDeleted => 'Sefer silindi';

  @override
  String get adminTripEdit => 'Sefer Düzenle';

  @override
  String get adminTripEmpty => 'Henüz sefer oluşturulmadı.';

  @override
  String get adminTripEmptySub => 'Sefer oluştur, düzenle ve listele.';

  @override
  String get adminTripEndBeforeStart => 'Bitiş tarihi başlangıçtan önce olamaz';

  @override
  String adminTripManagerLabel(String names) {
    return 'Yönetici: $names';
  }

  @override
  String adminTripManagersSelected(int count) {
    return 'Sefer Yöneticileri ($count seçili)';
  }

  @override
  String get adminTripNameRequired => 'Sefer Adı *';

  @override
  String get adminTripNoLocation => 'Yer belirtilmedi';

  @override
  String get adminTripNoManagers => 'Yönetici tipinde kullanıcı bulunamadı.';

  @override
  String get adminTripUpdateFailed => 'Sefer güncellenemedi';

  @override
  String get adminTripUpdated => 'Sefer güncellendi';

  @override
  String get adminUnknown => 'Bilinmeyen';

  @override
  String get adminUnnamed => 'İsimsiz';

  @override
  String get adminUnnamedGuest => 'İsimsiz Misafir';

  @override
  String get adminUpdate => 'Güncelle';

  @override
  String get adminUpdating => 'Güncelleniyor...';

  @override
  String adminUserAccountCreateFailed(String code) {
    return 'Kişi hesabı oluşturulamadı ($code)';
  }

  @override
  String get adminUserAdd => 'Kişi Ekle';

  @override
  String get adminUserAgencyRequired =>
      'Yönetici için acenta seçimi zorunludur';

  @override
  String get adminUserCreate => 'Kişi Oluştur';

  @override
  String get adminUserCreateFailed => 'Kişi oluşturulamadı';

  @override
  String get adminUserCreateOffline =>
      'İnternet bağlantısı yok. Kişi oluşturulamadı.';

  @override
  String get adminUserCreated => 'Kişi oluşturuldu';

  @override
  String get adminUserDelete => 'Kişiyi Sil';

  @override
  String adminUserDeleteConfirm(String name) {
    return '\"$name\" kişisini silmek istediğinize emin misiniz? Bu işlem geri alınamaz.';
  }

  @override
  String get adminUserDeleteFailed => 'Kişi silinemedi';

  @override
  String get adminUserDeleted => 'Kişi silindi';

  @override
  String get adminUserDetail => 'Kişi Detayı';

  @override
  String get adminUserEdit => 'Kişiyi Düzenle';

  @override
  String get adminUserEmpty => 'Henüz kullanıcı bulunmuyor.';

  @override
  String get adminUserNameMissing => 'Ad soyad gerekli';

  @override
  String get adminUserNameRequired => 'Ad Soyad *';

  @override
  String get adminUserNotFound => 'Kişi bulunamadı.';

  @override
  String get adminUserSearchHint => 'İsim veya TC ile ara';

  @override
  String get adminUserTcExists => 'Bu TC ile kayıtlı bir hesap zaten var.';

  @override
  String get adminUserTcLength => 'TC 11 haneli olmalı';

  @override
  String get adminUserTcLocked => 'TC kimlik numarası değiştirilemez';

  @override
  String get adminUserTcMissing => 'TC gerekli';

  @override
  String get adminUserTcRequired => 'TC Kimlik No *';

  @override
  String get adminUserType => 'Kullanıcı Tipi';

  @override
  String get adminUserUpdateFailed => 'Kullanıcı bilgileri kaydedilemedi';

  @override
  String get adminUserUpdated => 'Kullanıcı bilgileri güncellendi';

  @override
  String get adminWelcome => 'Hoş geldiniz';

  @override
  String adminWelcomeName(String name) {
    return 'Hoş geldiniz, $name';
  }

  @override
  String get appTitle => 'Umre Rehberim';

  @override
  String get authAccountIsAdmin => 'Bu hesap yönetici hesabıdır.';

  @override
  String get authAccountIsGuest => 'Bu hesap misafir hesabıdır.';

  @override
  String get authAdmin => 'Yönetici';

  @override
  String get authApiActMigrate => 'Hesaplar yeni girişe taşındı';

  @override
  String get authApiActSecretReset => 'PIN/şifre yenilendi';

  @override
  String get authApiCancel => 'Vazgeç';

  @override
  String get authApiChangePassword => 'Şifremi değiştir';

  @override
  String get authApiChangePin => 'PIN\'imi değiştir';

  @override
  String get authApiChangeSubtitle =>
      'Giriş için kullandığınız gizli bilgiyi yenileyin';

  @override
  String get authApiCopied => 'Panoya kopyalandı.';

  @override
  String get authApiCopy => 'Kopyala';

  @override
  String get authApiCopyAllCsv => 'Tümünü kopyala (CSV)';

  @override
  String get authApiCreate => 'Oluştur';

  @override
  String get authApiCredName => 'Ad Soyad';

  @override
  String get authApiCredTitle => 'Giriş Bilgileri';

  @override
  String get authApiCredWarningPassword =>
      'Bu şifre yalnızca şimdi görünür; kapatınca bir daha gösterilemez.';

  @override
  String get authApiCredWarningPin =>
      'Bu PIN yalnızca şimdi görünür; kapatınca bir daha gösterilemez.';

  @override
  String get authApiDocWriteFailed =>
      'Hesap açıldı ancak kişi kaydı yazılamadı. Aşağıdaki bilgileri not edin ve formu yeniden kaydedin; aynı hesap kullanılacak.';

  @override
  String get authApiErrAccountDisabled =>
      'Bu hesap devre dışı bırakılmış. Rehberinize veya acentenize başvurun.';

  @override
  String get authApiErrAccountNotReady =>
      'Hesabınızın kaydı henüz tamamlanmamış. Rehberinize veya acentenize başvurun.';

  @override
  String get authApiErrAgencyNotFound => 'Acente bulunamadı.';

  @override
  String get authApiErrForbidden => 'Bu işlem için yetkiniz yok.';

  @override
  String get authApiErrInvalidCredentials =>
      'Kullanıcı ID veya PIN hatalı ya da çok fazla deneme yapıldı; biraz sonra tekrar deneyin.';

  @override
  String get authApiErrInvalidSecret => 'Yeni PIN/şifre kurallara uymuyor.';

  @override
  String authApiErrLocked(int minutes) {
    return 'Çok fazla hatalı deneme yapıldı. Hesap geçici olarak kilitlendi; $minutes dakika sonra tekrar deneyin.';
  }

  @override
  String get authApiErrLockedShort =>
      'Çok fazla hatalı deneme yapıldı. Hesap geçici olarak kilitlendi; biraz sonra tekrar deneyin.';

  @override
  String get authApiErrMigrationDone =>
      'Taşıma tamamlanmış; bu işlem artık kapalı.';

  @override
  String get authApiErrNetwork =>
      'Sunucuya ulaşılamadı. İnternet bağlantınızı kontrol edin.';

  @override
  String get authApiErrNoSecret =>
      'Bu hesabın henüz PIN/şifresi yok. Rehberinizden yeni PIN isteyin.';

  @override
  String get authApiErrNotFound => 'Kullanıcı bulunamadı.';

  @override
  String get authApiErrRateLimited =>
      'Çok fazla deneme yapıldı. Lütfen birkaç dakika sonra tekrar deneyin.';

  @override
  String authApiErrRateLimitedWait(int minutes) {
    return 'Çok fazla deneme yapıldı. Lütfen $minutes dakika sonra tekrar deneyin.';
  }

  @override
  String get authApiErrReauth =>
      'Güvenlik için çıkış yapıp yeniden giriş yapmanız gerekiyor.';

  @override
  String get authApiErrServer =>
      'Sunucuda bir hata oluştu. Lütfen daha sonra tekrar deneyin.';

  @override
  String get authApiErrUnauthenticated =>
      'Oturumunuz doğrulanamadı. Lütfen çıkış yapıp tekrar giriş yapın.';

  @override
  String get authApiErrUnknown => 'Beklenmeyen bir hata oluştu.';

  @override
  String get authApiErrValidation => 'Girilen bilgiler geçersiz.';

  @override
  String get authApiErrWeakSecret =>
      'Bu PIN kolay tahmin edilir (ör. 123456, 111111). Başka bir PIN seçin.';

  @override
  String get authApiErrWrongOldSecret => 'Mevcut PIN/şifre hatalı.';

  @override
  String get authApiFieldRequired => 'Bu alan zorunludur.';

  @override
  String get authApiForgot => 'Kullanıcı ID veya PIN\'imi unuttum';

  @override
  String get authApiForgotBody =>
      'Kullanıcı ID ve PIN\'inizi rehberiniz veya acenteniz verir. Unuttuysanız rehberinize veya acentenize başvurun; size yeni bir PIN oluşturabilirler.';

  @override
  String get authApiForgotTitle => 'Giriş bilgilerinizi mi unuttunuz?';

  @override
  String get authApiHideSecret => 'Gizle';

  @override
  String get authApiLeave => 'Çık';

  @override
  String get authApiLoginIdError =>
      'Kullanıcı ID 7 haneli bir numara olmalıdır.';

  @override
  String get authApiLoginIdLabel => 'Kullanıcı ID';

  @override
  String get authApiLoginIdNone => 'Henüz yok';

  @override
  String authApiMigrateConfirm(int count) {
    return '$count hesap yeni girişe taşınacak ve TC ile giriş kapanacak. Bu işlem geri alınamaz. Devam edilsin mi?';
  }

  @override
  String authApiMigrateCount(int count) {
    return '$count hesap taşınacak.';
  }

  @override
  String get authApiMigrateDesc => 'Kullanıcı ID ve PIN/şifre ile girişe geçiş';

  @override
  String authApiMigrateDone(int count) {
    return '$count hesap taşındı.';
  }

  @override
  String get authApiMigrateDryRun => 'Önizle (değişiklik yapmaz)';

  @override
  String get authApiMigrateIntro =>
      'Kullanıcı ID\'si olmayan tüm hesaplara (esnaf hariç) Kullanıcı ID ve PIN/şifre üretilir ve TC ile giriş kapanır. Bu işlem bir kez yapılır. Önce önizleyin.';

  @override
  String get authApiMigrateLeaveBody =>
      'Giriş bilgileri bir daha gösterilemez. Kopyaladığınızdan emin misiniz?';

  @override
  String get authApiMigrateLeaveTitle => 'Sayfadan çıkılsın mı?';

  @override
  String get authApiMigrateNone => 'Taşınacak hesap yok.';

  @override
  String get authApiMigrateOnceWarning =>
      'DİKKAT: Bu giriş bilgileri yalnızca şimdi gösterilir ve bir daha görüntülenemez. Sayfayı kapatmadan önce \"Tümünü kopyala (CSV)\" ile kopyalayıp güvenli bir yerde saklayın.';

  @override
  String authApiMigratePartial(int count, int failed) {
    return '$count hesap taşındı, $failed hesap taşınamadı. Uyarıları okuyup taşımayı yeniden başlatın.';
  }

  @override
  String get authApiMigrateRun => 'Taşımayı başlat';

  @override
  String get authApiMigrateTitle => 'Hesapları yeni girişe taşı';

  @override
  String get authApiMigrateWarnings => 'Uyarılar';

  @override
  String get authApiMismatch => 'Yeni değerler birbiriyle aynı değil.';

  @override
  String get authApiNewPassword => 'Yeni şifre';

  @override
  String get authApiNewPin => 'Yeni PIN';

  @override
  String get authApiNotConnected => 'Sunucu henüz bağlı değil.';

  @override
  String get authApiOk => 'Tamam';

  @override
  String get authApiOldPassword => 'Mevcut şifre';

  @override
  String get authApiOldPin => 'Mevcut PIN';

  @override
  String get authApiPasswordChanged => 'Şifreniz değiştirildi.';

  @override
  String get authApiPasswordError => 'Şifre en az 8 karakter olmalıdır.';

  @override
  String get authApiPasswordLabel => 'Şifre';

  @override
  String get authApiPinChanged => 'PIN\'iniz değiştirildi.';

  @override
  String get authApiPinError => 'PIN 6 haneli bir sayı olmalıdır.';

  @override
  String get authApiPinLabel => 'PIN';

  @override
  String get authApiReloginPassword =>
      'Şifre değiştirildi. Güvenlik için tüm oturumlar kapatıldı; yeni şifre ile giriş yapın.';

  @override
  String get authApiReloginPin =>
      'PIN değiştirildi. Güvenlik için tüm oturumlar kapatıldı; yeni PIN ile giriş yapın.';

  @override
  String get authApiRepeatPassword => 'Yeni şifre (tekrar)';

  @override
  String get authApiRepeatPin => 'Yeni PIN (tekrar)';

  @override
  String get authApiResetPassword => 'Yeni şifre ver';

  @override
  String authApiResetPasswordConfirm(String name) {
    return '$name için yeni şifre oluşturulsun mu? Eski şifre geçersiz olur.';
  }

  @override
  String get authApiResetPin => 'Yeni PIN ver';

  @override
  String authApiResetPinConfirm(String name) {
    return '$name için yeni PIN oluşturulsun mu? Eski PIN geçersiz olur.';
  }

  @override
  String get authApiSameAsOld => 'Yeni değer mevcut olanla aynı olamaz.';

  @override
  String get authApiSave => 'Kaydet';

  @override
  String get authApiShareIntro => 'Umre Rehberim giriş bilgileriniz';

  @override
  String get authApiShareWhatsapp => 'WhatsApp ile paylaş';

  @override
  String get authApiShowSecret => 'Göster';

  @override
  String get authApiSoon => 'Yakında';

  @override
  String get authApiViewAs => 'Kullanıcı gözünden görüntüle';

  @override
  String get authApiViewAsSoon => 'Bu özellik yakında aktif olacak';

  @override
  String get authFieldRequired => 'Bu alan boş bırakılamaz';

  @override
  String get authGreeting => 'Selamün Aleyküm!';

  @override
  String get authGuest => 'Misafir';

  @override
  String get authKvkkAbroadBody =>
      'Google Firebase ve Cloudflare hizmetleri aracılığıyla yurt dışında bulunan güvenli sunucularda depolanabilir. Bu aktarım KVKK\'ya uygun teknik ve idari tedbirler alınarak yapılmaktadır.';

  @override
  String get authKvkkAbroadTitle => 'Yurt Dışına Veri Aktarımı:';

  @override
  String get authKvkkAccept => 'Onaylıyorum';

  @override
  String get authKvkkCheckbox =>
      'KVKK Aydınlatma Metnini okudum ve onaylıyorum';

  @override
  String get authKvkkControllerTitle => 'Veri Sorumlusu:';

  @override
  String get authKvkkDataBody =>
      'Kimlik (Ad, Soyad, T.C. Kimlik No), İletişim (Telefon No), Demografik (Cinsiyet, Yaş), Konum bilgisi (anlık ve uygulama kullanım süresince), Uygulama kullanım verileri.';

  @override
  String get authKvkkDataTitle => 'İşlenen Kişisel Veriler:';

  @override
  String get authKvkkLocationBody =>
      'Uygulama aktifken takip edilir, arka planda veya çıkıldığında izleme yapılmaz. Kullanıcının güvenliği ve rehberlik hizmeti için zorunludur. İzin verilmemesi durumunda bazı temel özellikler kullanılamayabilir.';

  @override
  String get authKvkkLocationTitle => 'Konum Bilgisi:';

  @override
  String get authKvkkMethodBody =>
      'Mobil uygulama üzerinden elektronik ortamda, kullanıcının açık rızasına dayanarak, KVKK\'nın 5. ve 6. maddeleri kapsamında toplanmakta ve işlenmektedir.';

  @override
  String get authKvkkMethodTitle => 'Toplanma Yöntemi ve Hukuki Sebebi:';

  @override
  String get authKvkkPurposeBody =>
      'Kullanıcı hesabı oluşturma ve yönetme, Umre Rehberi ile anlık iletişim, acil durumlarda kullanıcıya ulaşma, grup takibi ve rehberlik hizmetleri, bildirim gönderme, uygulama güvenliğini sağlama.';

  @override
  String get authKvkkPurposeTitle => 'İşlenme Amaçları:';

  @override
  String get authKvkkReject => 'Reddet';

  @override
  String get authKvkkRequired => 'Lütfen KVKK Aydınlatma Metnini onaylayın.';

  @override
  String get authKvkkRightsBody =>
      'Verilerinizin işlenip işlenmediğini öğrenme, bilgi talep etme, yanlış veya eksik verilerin düzeltilmesini isteme, verilerin silinmesini veya yok edilmesini talep etme. Taleplerinizi support@umrerehberim.com adresine iletebilirsiniz.';

  @override
  String get authKvkkRightsTitle => 'KVKK Kapsamındaki Haklarınız:';

  @override
  String get authKvkkTitle => 'KVKK Aydınlatma Metni';

  @override
  String get authKvkkTransferBody =>
      'Üçüncü kişilerle paylaşılmaz. Hacktapot Software\'in güvenli veri merkezlerinde saklanır. Yalnızca savcılık/adli makam kararı bulunması halinde veya ilgili tur firması ile sınırlı olarak paylaşılabilir.';

  @override
  String get authKvkkTransferTitle => 'Kişisel Verilerin Aktarılması:';

  @override
  String get authLoginButton => 'Giriş Yap';

  @override
  String get authLoginFailed => 'Giriş yapılırken bir hata oluştu.';

  @override
  String get authLoginType => 'Giriş Tipi';

  @override
  String get authNoInternet =>
      'İnternet bağlantısı yok. Lütfen bağlantınızı kontrol edip tekrar deneyin.';

  @override
  String get authSplashCheckingInternet =>
      'İnternet bağlantısı kontrol ediliyor...';

  @override
  String get authSplashDataLoadFailed =>
      'Veriler yüklenemedi. Lütfen internet bağlantınızı kontrol edin.';

  @override
  String get authSplashDataNotFound =>
      'Veriler bulunamadı. Lütfen internet bağlantınızı kontrol edin.';

  @override
  String get authSplashDataStale =>
      'Verileriniz güncel değil. Lütfen internet bağlantınızı kontrol edin.';

  @override
  String get authSplashLoadingData => 'Veriler yükleniyor...';

  @override
  String get authSplashLoadingLocal => 'Yerel veriler yükleniyor...';

  @override
  String get authSplashLoadingUser => 'Kullanıcı bilgileri yükleniyor...';

  @override
  String get authSplashNoInternetLogin =>
      'İnternet bağlantısı yok. Lütfen TC numaranız ile giriş yapın.';

  @override
  String get authSplashOfflineStart => 'Offline modda başlatılıyor...';

  @override
  String get authSplashPleaseLogin => 'Lütfen TC numaranız ile giriş yapın.';

  @override
  String get authSplashUserNotFound => 'Kullanıcı bulunamadı.';

  @override
  String get authTagline => 'Kutsal Yolculukta\nYanınızdaki Rehber';

  @override
  String get authTcLabel => 'TC Kimlik No';

  @override
  String get authTcLengthError => 'TC kimlik numarası 11 haneli olmalıdır';

  @override
  String get authTooManyRequests =>
      'Çok fazla deneme yapıldı. Lütfen biraz sonra tekrar deneyin.';

  @override
  String get authUserDisabled => 'Bu hesap devre dışı bırakılmış.';

  @override
  String get authUserNotFound => 'Kullanıcı bulunamadı. Lütfen kayıt olun.';

  @override
  String get bireyselAccountBadge => 'Bireysel hesap';

  @override
  String get bireyselAgencyOnlyBody =>
      'Bu özellik anlaşmalı acentelerle seyahat eden hacılara sunulur.';

  @override
  String get bireyselAgencyOnlyTitle => 'Acente hacılarına özel';

  @override
  String get bireyselConsentSaveFailed =>
      'Tercihiniz kaydedilemedi. Lütfen tekrar deneyin.';

  @override
  String get bireyselDeleteAccount => 'Hesabımı sil';

  @override
  String get bireyselDeleteAccountSub =>
      'Hesabınız ve bilgileriniz kalıcı olarak silinir';

  @override
  String get bireyselDeleteAuthPartial =>
      'Verileriniz silindi, hesap kaydı kapatılamadı; tekrar giriş yapıp vazgeçerseniz tamamen silinir.';

  @override
  String get bireyselDeleteConfirmBody =>
      'Hesabınız, profil bilgileriniz ve kurduğunuz Toplu Hatim grupları kalıcı olarak silinir; üyesi olduğunuz gruplardan ayrılırsınız. Bu işlem geri alınamaz.\n\nDevam etmek için Google hesabınızla yeniden doğrulama istenecek.';

  @override
  String get bireyselDeleteConfirmButton => 'Kalıcı olarak sil';

  @override
  String get bireyselDeleteConfirmTitle => 'Hesabınız silinsin mi?';

  @override
  String get bireyselDeleteFailed => 'Hesap silinemedi. Lütfen tekrar deneyin.';

  @override
  String get bireyselDeleteHatimFailed =>
      'Toplu Hatim gruplarınızdan çıkılamadı; hesabınız silinmedi. Lütfen tekrar deneyin.';

  @override
  String get bireyselDeleteOffline =>
      'Hesap silmek için internet bağlantısı gerekir. Lütfen bağlantınızı kontrol edip tekrar deneyin.';

  @override
  String get bireyselDeleteRecentLogin =>
      'Güvenlik için çıkış yapıp yeniden giriş yapın, sonra tekrar deneyin.';

  @override
  String get bireyselDeleteWrongAccount =>
      'Lütfen bu uygulamada kullandığınız Google hesabını seçin.';

  @override
  String get bireyselDeleted => 'Hesabınız silindi.';

  @override
  String get bireyselDeleting => 'Hesabınız siliniyor…';

  @override
  String get bireyselEmail => 'E-posta';

  @override
  String get bireyselErrAccountExists =>
      'Bu e-posta adresi başka bir giriş yöntemiyle kayıtlı.';

  @override
  String get bireyselErrEmailUnverified =>
      'Google hesabınızın e-posta adresi doğrulanmamış.';

  @override
  String get bireyselErrGeneric =>
      'Google ile giriş yapılamadı. Lütfen tekrar deneyin.';

  @override
  String get bireyselErrUnavailable =>
      'Google ile giriş şu anda kullanılamıyor. Lütfen daha sonra tekrar deneyin.';

  @override
  String get bireyselGoogleContinue => 'Google ile devam et';

  @override
  String get bireyselJoinAgency => 'Acenteme katıl';

  @override
  String get bireyselJoinAgencySnack =>
      'Bu özellik yakında kullanıma açılacak.';

  @override
  String get bireyselJoinAgencySub =>
      'Acentenizle eşleşin, sefer bilgileriniz uygulamaya gelsin';

  @override
  String get bireyselLocationConsentBody =>
      'İsteğe bağlı. Konum gerektiren özellikler için izin verirsiniz; dilediğiniz zaman profilden değiştirebilirsiniz.';

  @override
  String get bireyselLocationConsentTitle => 'Konum için açık rıza';

  @override
  String get bireyselNameError => 'Ad soyad 2 ile 60 karakter arasında olmalı';

  @override
  String get bireyselNameLabel => 'Ad Soyad';

  @override
  String get bireyselOrDivider => 'veya acentenizin verdiği bilgilerle girin';

  @override
  String get bireyselRegisterButton => 'Kaydı tamamla';

  @override
  String get bireyselRegisterFailed =>
      'Kayıt tamamlanamadı. Lütfen tekrar deneyin.';

  @override
  String get bireyselRegisterIntro =>
      'Hoş geldiniz! Hesabınızı oluşturmak için birkaç bilgi gerekiyor.';

  @override
  String get bireyselRegisterTitle => 'Kaydı Tamamla';

  @override
  String bireyselSignedInAs(String email) {
    return 'Google hesabı: $email';
  }

  @override
  String get ccActAgencyCreate => 'Acente eklendi';

  @override
  String get ccActAgencyDelete => 'Acente silindi';

  @override
  String get ccActAgencyUpdate => 'Acente güncellendi';

  @override
  String get ccActCouponCreate => 'Kupon oluşturuldu';

  @override
  String get ccActCouponDelete => 'Kupon silindi';

  @override
  String get ccActCouponUpdate => 'Kupon güncellendi';

  @override
  String get ccActFinanceSettings => 'Finans ayarları değişti';

  @override
  String get ccActMerchantCreate => 'Esnaf hesabı açıldı';

  @override
  String get ccActMessageSend => 'Acenteye mesaj gönderildi';

  @override
  String get ccActPointsBulk => 'Toplu puan yüklendi';

  @override
  String get ccActPointsGrant => 'Puan hareketi eklendi';

  @override
  String get ccActPointsRevert => 'Puan hareketi geri alındı';

  @override
  String get ccActRiskReview => 'Risk alarmı incelendi';

  @override
  String get ccActRoleChange => 'Rol değiştirildi';

  @override
  String get ccActSettlementPaid => 'Hak ediş ödendi';

  @override
  String get ccActSettlementUpdate => 'Hak ediş güncellendi';

  @override
  String get ccActShopCreate => 'Dükkan eklendi';

  @override
  String get ccActShopDelete => 'Dükkan silindi';

  @override
  String get ccActShopToggle => 'Dükkan aktifliği değişti';

  @override
  String get ccActShopUpdate => 'Dükkan güncellendi';

  @override
  String get ccActTxCancel => 'İşlem iptal edildi';

  @override
  String get ccActUserCreate => 'Kullanıcı oluşturuldu';

  @override
  String get ccActUserDelete => 'Kullanıcı silindi';

  @override
  String get ccActUserUpdate => 'Kullanıcı güncellendi';

  @override
  String ccAgoDays(int count) {
    return '$count gün önce';
  }

  @override
  String ccAgoHours(int count) {
    return '$count sa önce';
  }

  @override
  String ccAgoMinutes(int count) {
    return '$count dk önce';
  }

  @override
  String get ccAgoNow => 'az önce';

  @override
  String get ccAnAvgBasket => 'Ortalama sepet';

  @override
  String get ccAnAvgRating => 'Ortalama puan';

  @override
  String get ccAnBusyHours => 'Saatlere göre yoğunluk';

  @override
  String get ccAnCancelRate => 'İptal oranı';

  @override
  String get ccAnCommission => 'Komisyon';

  @override
  String get ccAnCommissionGenerated => 'Üretilen komisyon';

  @override
  String get ccAnComplaintBadge => 'Şikâyet';

  @override
  String get ccAnComplaints => 'Şikâyet';

  @override
  String get ccAnConversion => 'Dönüşüm (işlem / görüntülenme)';

  @override
  String get ccAnConversionShort => 'Dönüşüm';

  @override
  String get ccAnCouponDiscount => 'Kupon indirimi';

  @override
  String get ccAnDailySales => 'Günlük satış';

  @override
  String get ccAnDailyVolume => 'Günlük net hacim';

  @override
  String get ccAnDau => 'Günlük aktif (DAU)';

  @override
  String get ccAnDiscount => 'Esnaf indirimi';

  @override
  String get ccAnGross => 'Brüt ciro';

  @override
  String get ccAnGuest => 'Misafir';

  @override
  String get ccAnInactive => 'Pasif';

  @override
  String get ccAnLatestReviews => 'Son değerlendirmeler ve şikâyetler';

  @override
  String get ccAnLoadError => 'Veriler yüklenemedi. Aşağı çekerek yenileyin.';

  @override
  String get ccAnMau => 'Aylık aktif (MAU)';

  @override
  String get ccAnMonthlyNewUsers => 'Aylık yeni kullanıcı (son 12 ay)';

  @override
  String get ccAnMonthlyVolume => 'Aylık net hacim';

  @override
  String get ccAnMostViewed => 'En çok görüntülenen esnaf';

  @override
  String get ccAnMpAll => 'Tüm esnaf';

  @override
  String get ccAnMpPodium => 'En Popüler Esnaf';

  @override
  String get ccAnMpSubtitle => 'Satış, puan, şikâyet ve dönüşüm';

  @override
  String get ccAnMpTitle => 'Esnaf Performansı';

  @override
  String get ccAnNet => 'Net ciro';

  @override
  String get ccAnNewUsers => 'Dönemde yeni kullanıcı';

  @override
  String get ccAnNoAccess => 'Bu bölüme erişim yetkiniz yok.';

  @override
  String get ccAnNoAgency => 'Acentesiz';

  @override
  String get ccAnNoComment => '(yorum yazılmamış)';

  @override
  String get ccAnNoData => 'Bu dönemde veri yok.';

  @override
  String get ccAnNoReviews => 'Bu dönemde değerlendirme yok.';

  @override
  String get ccAnNoShops => 'Henüz anlaşmalı esnaf yok.';

  @override
  String get ccAnOpenMerchantPerf => 'Esnaf performansı';

  @override
  String get ccAnPayCard => 'Kart';

  @override
  String get ccAnPayCash => 'Nakit';

  @override
  String get ccAnPayPoints => 'Puan';

  @override
  String get ccAnPaymentSplit => 'Ödeme yöntemi dağılımı';

  @override
  String get ccAnPeriodAll => 'Tümü';

  @override
  String get ccAnPeriodMonth => '30 gün';

  @override
  String get ccAnPeriodQuarter => '90 gün';

  @override
  String get ccAnPeriodToday => 'Bugün';

  @override
  String get ccAnPeriodWeek => '7 gün';

  @override
  String get ccAnPeriodYear => '1 yıl';

  @override
  String get ccAnPointsEarned => 'Kazanılan puan';

  @override
  String get ccAnPointsFlow => 'Puan akışı';

  @override
  String get ccAnPointsNet => 'Net puan';

  @override
  String get ccAnPointsSpent => 'Harcanan puan';

  @override
  String get ccAnRatingDist => 'Puan dağılımı';

  @override
  String get ccAnRefresh => 'Yenile';

  @override
  String ccAnReviewCount(int count) {
    return '$count değerlendirme';
  }

  @override
  String get ccAnRoleAgencyAdmin => 'Acente Admini';

  @override
  String get ccAnRoleFinance => 'Muhasebe';

  @override
  String get ccAnRoleGuest => 'Misafir';

  @override
  String get ccAnRoleManager => 'Yönetici';

  @override
  String get ccAnRoleMerchant => 'Esnaf';

  @override
  String get ccAnRoleOther => 'Diğer';

  @override
  String get ccAnRoleSuperAdmin => 'Süper Admin';

  @override
  String get ccAnRoleSupport => 'Destek';

  @override
  String get ccAnSecTrends => 'Trendler';

  @override
  String get ccAnSecUsage => 'Kullanım';

  @override
  String get ccAnSecVolume => 'İşlem hacmi';

  @override
  String ccAnShopsCount(int count) {
    return '$count dükkan';
  }

  @override
  String get ccAnSortComplaints => 'Şikâyet';

  @override
  String get ccAnSortRating => 'Puan';

  @override
  String get ccAnSortRevenue => 'Ciro';

  @override
  String get ccAnSortTx => 'İşlem';

  @override
  String get ccAnSortViews => 'Görüntülenme';

  @override
  String get ccAnStickiness => 'Bağlılık (DAU/MAU)';

  @override
  String get ccAnSubtitle => 'Kullanım, işlem hacmi ve trendler';

  @override
  String get ccAnTitle => 'Analiz & BI';

  @override
  String get ccAnTopCategories => 'Kategorilere göre ciro';

  @override
  String get ccAnTopShopsByRevenue => 'En yüksek cirolu esnaf';

  @override
  String get ccAnTopShopsByTx => 'En çok işlem yapan esnaf';

  @override
  String get ccAnTotalUsers => 'Toplam kullanıcı';

  @override
  String get ccAnTxCount => 'İşlem sayısı';

  @override
  String ccAnTxCountShort(int count) {
    return '$count işlem';
  }

  @override
  String get ccAnUsersByAgency => 'Acentelere göre kullanıcılar';

  @override
  String get ccAnUsersByRole => 'Rollere göre kullanıcılar';

  @override
  String ccAnUsersCount(int count) {
    return '$count kullanıcı';
  }

  @override
  String get ccAnViews => 'Görüntülenme';

  @override
  String get ccAnViewsNote => 'Görüntülenme sayısı tüm zamanları kapsar.';

  @override
  String ccAnViewsShort(int count) {
    return '$count görüntülenme';
  }

  @override
  String get ccAnWau => 'Haftalık aktif (WAU)';

  @override
  String get ccAuditCatAgency => 'Acente';

  @override
  String get ccAuditCatAll => 'Tümü';

  @override
  String get ccAuditCatCoupon => 'Kupon';

  @override
  String get ccAuditCatFinance => 'Finans';

  @override
  String get ccAuditCatMessage => 'Mesaj';

  @override
  String get ccAuditCatPoints => 'Puan';

  @override
  String get ccAuditCatRisk => 'Risk';

  @override
  String get ccAuditCatShop => 'Esnaf/Dükkan';

  @override
  String get ccAuditCatUser => 'Kullanıcı';

  @override
  String get ccAuditDetails => 'Ayrıntılar';

  @override
  String get ccAuditEmpty => 'Bu filtrelerle kayıt bulunamadı';

  @override
  String get ccAuditLoadMore => 'Daha fazla yükle';

  @override
  String get ccAuditSearchActor => 'İşlemi yapan kişiyi ara';

  @override
  String ccAuditShown(int count) {
    return '$count kayıt';
  }

  @override
  String get ccAuditSubtitle => 'Kim, ne zaman, ne yaptı';

  @override
  String get ccAuditTarget => 'Hedef';

  @override
  String get ccAuditTitle => 'Denetim Kaydı';

  @override
  String get ccAuditUnknownActor => 'Bilinmeyen';

  @override
  String get ccCancel => 'Vazgeç';

  @override
  String ccCpnActivatedOk(String code) {
    return '$code aktif edildi.';
  }

  @override
  String get ccCpnActive => 'Aktif';

  @override
  String get ccCpnActiveHelp =>
      'Pasif kupon misafirlere görünmez ve kullanılamaz.';

  @override
  String get ccCpnAgency => 'Acente';

  @override
  String get ccCpnAllAgencies => 'Tüm acenteler';

  @override
  String get ccCpnAllShops => 'Tüm dükkanlar';

  @override
  String get ccCpnCode => 'Kupon kodu';

  @override
  String get ccCpnCodeHelp =>
      'Büyük harf ve rakam, 4–16 karakter. Sonradan değiştirilemez.';

  @override
  String get ccCpnCodeInvalid => '4–16 karakter, yalnız A–Z ve 0–9.';

  @override
  String get ccCpnCodeLocked => 'Kod kuponun kimliğidir; değiştirilemez.';

  @override
  String get ccCpnCodeSuggest => 'Kod öner';

  @override
  String get ccCpnCodeTaken =>
      'Bu kod zaten kullanılıyor. Başka bir kod seçin.';

  @override
  String get ccCpnCreate => 'Kuponu oluştur';

  @override
  String ccCpnCreatedOk(String code) {
    return '$code kuponu oluşturuldu.';
  }

  @override
  String get ccCpnDates => 'Geçerlilik tarihleri';

  @override
  String get ccCpnDeactivate => 'Pasife al';

  @override
  String ccCpnDeactivatedOk(String code) {
    return '$code pasife alındı.';
  }

  @override
  String get ccCpnDelete => 'Sil';

  @override
  String ccCpnDeleteBlockedBody(int count) {
    return 'Bu kupon $count kez kullanıldı. Raporlar bozulmasın diye silinmez; bunun yerine pasife alabilirsiniz.';
  }

  @override
  String get ccCpnDeleteBlockedTitle => 'Kullanılmış kupon silinemez';

  @override
  String ccCpnDeleteBody(String code) {
    return '$code kalıcı olarak silinecek.';
  }

  @override
  String get ccCpnDeleteTitle => 'Kupon silinsin mi?';

  @override
  String ccCpnDeletedOk(String code) {
    return '$code silindi.';
  }

  @override
  String get ccCpnDescription => 'Açıklama (isteğe bağlı)';

  @override
  String get ccCpnEdit => 'Düzenle';

  @override
  String get ccCpnEditTitle => 'Kuponu düzenle';

  @override
  String get ccCpnEmpty => 'Henüz kupon yok. İlk kampanyanı oluştur!';

  @override
  String get ccCpnFilterAll => 'Tümü';

  @override
  String ccCpnGiven(String amount) {
    return 'Verilen indirim: $amount';
  }

  @override
  String get ccCpnKpiActive => 'Aktif kupon';

  @override
  String get ccCpnKpiDiscount => 'Verilen toplam indirim';

  @override
  String get ccCpnKpiGuests => 'Kupon kullanan misafir';

  @override
  String get ccCpnKpiUses => 'Toplam kullanım';

  @override
  String get ccCpnLoadError => 'Kuponlar yüklenemedi.';

  @override
  String get ccCpnMaxDiscount => 'İndirim tavanı';

  @override
  String get ccCpnMaxUses => 'Toplam kullanım sınırı';

  @override
  String ccCpnMaxUsesBelowUsed(int used) {
    return 'Sınır, mevcut kullanımdan ($used) az olamaz.';
  }

  @override
  String get ccCpnMaxUsesHelp =>
      'Boş/0 = sınırsız. Her misafir kuponu bir kez kullanabilir.';

  @override
  String ccCpnMinShort(String amount) {
    return 'min. $amount';
  }

  @override
  String get ccCpnMinSpend => 'Alt limit';

  @override
  String get ccCpnNew => 'Yeni Kupon';

  @override
  String get ccCpnNewTitle => 'Yeni kupon';

  @override
  String get ccCpnNoMatch => 'Bu filtreye uyan kupon yok.';

  @override
  String get ccCpnNoRedemptions => 'Bu kupon henüz kullanılmadı.';

  @override
  String get ccCpnOncePerGuest =>
      'Kupon indirimi dükkan indiriminden sonra uygulanır; ödenecek tutar sıfırın altına inmez.';

  @override
  String get ccCpnPercentMax => 'Yüzde en fazla 100 olabilir.';

  @override
  String get ccCpnReadOnly => 'Salt okuma';

  @override
  String get ccCpnRedemptions => 'Kullanımlar';

  @override
  String get ccCpnRequired => 'Bu alan zorunlu.';

  @override
  String get ccCpnSave => 'Değişiklikleri kaydet';

  @override
  String get ccCpnSaveError => 'İşlem tamamlanamadı. Lütfen tekrar deneyin.';

  @override
  String get ccCpnSectionBasics => 'Kupon bilgileri';

  @override
  String get ccCpnSectionDiscount => 'İndirim';

  @override
  String get ccCpnSectionScope => 'Geçerlilik';

  @override
  String get ccCpnShop => 'Dükkan';

  @override
  String get ccCpnStatAvg => 'Ortalama indirim';

  @override
  String get ccCpnStatTotal => 'Toplam indirim';

  @override
  String get ccCpnStatUntil => 'Son geçerlilik';

  @override
  String get ccCpnStatUses => 'Kullanım';

  @override
  String get ccCpnStatusActive => 'Aktif';

  @override
  String get ccCpnStatusExhausted => 'Tükendi';

  @override
  String get ccCpnStatusExpired => 'Süresi doldu';

  @override
  String get ccCpnStatusInactive => 'Pasif';

  @override
  String get ccCpnStatusScheduled => 'Başlamadı';

  @override
  String get ccCpnSubtitle => 'Kampanya ve indirim kuponları';

  @override
  String get ccCpnTitle => 'Kuponlar';

  @override
  String get ccCpnTitleField => 'Başlık';

  @override
  String get ccCpnTitleHint => 'Örn. Hoş geldin indirimi';

  @override
  String get ccCpnTypeFixed => 'Sabit tutar';

  @override
  String get ccCpnTypePercent => 'Yüzde';

  @override
  String ccCpnUpTo(String amount) {
    return 'en fazla $amount';
  }

  @override
  String ccCpnUpdatedOk(String code) {
    return '$code kuponu güncellendi.';
  }

  @override
  String ccCpnUsesUnlimited(int count) {
    return '$count kullanım · sınırsız';
  }

  @override
  String get ccCpnValue => 'İndirim değeri';

  @override
  String get ccCpnValueInvalid => '0\'dan büyük bir değer girin.';

  @override
  String get ccCpnZeroNoCap => 'Boş/0 = tavan yok';

  @override
  String get ccCpnZeroNone => 'Boş/0 = alt limit yok';

  @override
  String get ccFinActionError => 'İşlem başarısız oldu';

  @override
  String get ccFinAgencyEmpty => 'Bu dönemde acente payı yok';

  @override
  String get ccFinAgencyExplain =>
      'Acente, kendi misafirlerinin yaptığı alışverişlerin komisyonundan pay alır.';

  @override
  String ccFinAgencySub(int count, String net) {
    return '$count işlem · net $net';
  }

  @override
  String get ccFinAllAgencies => 'Tüm acentelere açık';

  @override
  String get ccFinCancel => 'Vazgeç';

  @override
  String get ccFinColAgency => 'Acente';

  @override
  String get ccFinColCommission => 'Komisyon';

  @override
  String get ccFinColCoupon => 'Kupon';

  @override
  String get ccFinColDate => 'Tarih';

  @override
  String get ccFinColDiscount => 'İndirim';

  @override
  String get ccFinColGross => 'Brüt';

  @override
  String get ccFinColGuest => 'Misafir';

  @override
  String get ccFinColNet => 'Net';

  @override
  String get ccFinColPeriod => 'Dönem';

  @override
  String get ccFinColPlatform => 'Platform';

  @override
  String get ccFinColRate => 'Komisyon %';

  @override
  String get ccFinColStatus => 'Durum';

  @override
  String get ccFinColTx => 'İşlem';

  @override
  String get ccFinCopyAllCsv => 'Tüm dönemi CSV kopyala';

  @override
  String get ccFinCsvCopied => 'CSV panoya kopyalandı';

  @override
  String get ccFinDailyChart => 'Günlük komisyon';

  @override
  String get ccFinEmpty => 'Bu dönemde işlem yok';

  @override
  String get ccFinGenerate => 'Dönemi Oluştur/Güncelle';

  @override
  String ccFinGenerateConfirm(String month) {
    return '$month dönemi için hak ediş kayıtları oluşturulsun mu? Ödenmiş kayıtların tutarları değişmez.';
  }

  @override
  String ccFinGenerateDone(int count) {
    return '$count dükkanın hak edişi güncellendi';
  }

  @override
  String get ccFinGenerateFirst => 'Önce dönemi oluşturun';

  @override
  String get ccFinKpiAgency => 'Acente payı';

  @override
  String get ccFinKpiCommission => 'Toplam komisyon';

  @override
  String get ccFinKpiCoupon => 'Kupon indirimi';

  @override
  String get ccFinKpiDiscount => 'Esnaf indirimi';

  @override
  String get ccFinKpiGross => 'Brüt ciro';

  @override
  String get ccFinKpiNet => 'Net ciro';

  @override
  String get ccFinKpiPlatform => 'Platform payı';

  @override
  String get ccFinKpiTxCount => 'İşlem sayısı';

  @override
  String get ccFinLoadError => 'Finans verileri yüklenemedi';

  @override
  String get ccFinMarkPaid => 'Ödendi olarak işaretle';

  @override
  String get ccFinMarkPaidTitle => 'Ödeme kaydı';

  @override
  String get ccFinMarkedPaid => 'Ödendi olarak işaretlendi';

  @override
  String get ccFinNextMonth => 'Sonraki ay';

  @override
  String get ccFinNoteHint => 'Not (isteğe bağlı)';

  @override
  String ccFinPaidCount(int paid, int total) {
    return '$paid/$total ödendi';
  }

  @override
  String ccFinPaidDiff(String recorded, int count) {
    return 'Canlı tutarlar ödenmiş kayıttan farklı (kayıt: $recorded, $count işlem). Geç iptal veya geç kayıt olabilir.';
  }

  @override
  String ccFinPaidOn(String date) {
    return 'Ödendi: $date';
  }

  @override
  String get ccFinPrevMonth => 'Önceki ay';

  @override
  String get ccFinProNote =>
      'Ödeme dağıtımı ve e-fatura entegrasyonu Pro sunucu aşamasında';

  @override
  String get ccFinRefresh => 'Yenile';

  @override
  String get ccFinRevert => 'Bekliyor\'a geri al';

  @override
  String get ccFinRevertConfirm =>
      'Bu hak ediş tekrar \'Bekliyor\' durumuna alınsın mı?';

  @override
  String get ccFinReverted => 'Bekliyor durumuna alındı';

  @override
  String get ccFinSave => 'Kaydet';

  @override
  String get ccFinSettingsDefault =>
      'Ayar kaydı yok; varsayılan %50 kullanılıyor';

  @override
  String get ccFinSettingsDialogTitle => 'Platform payı (%)';

  @override
  String get ccFinSettingsEdit => 'Düzenle';

  @override
  String ccFinSettingsExplain(int platform, int agency) {
    return 'Esnaftan alınan komisyonun %$platform\'i platforma, kalan %$agency\'i acenteye aktarılır.';
  }

  @override
  String get ccFinSettingsInvalid => '0 ile 100 arasında bir sayı girin';

  @override
  String get ccFinSettingsSaved => 'Platform payı güncellendi';

  @override
  String get ccFinSettingsTitle => 'Platform payı';

  @override
  String get ccFinStatement => 'Dekont';

  @override
  String get ccFinStatusNone => 'Oluşturulmadı';

  @override
  String get ccFinStatusPaid => 'Ödendi';

  @override
  String get ccFinStatusPending => 'Bekliyor';

  @override
  String get ccFinStmtAgency => 'Acente';

  @override
  String get ccFinStmtCopyCsv => 'Kopyala (CSV)';

  @override
  String get ccFinStmtFooter =>
      'Bu belge bilgilendirme amaçlıdır; mali belge yerine geçmez.';

  @override
  String get ccFinStmtIssued => 'Düzenlenme';

  @override
  String get ccFinStmtLines => 'İşlem dökümü';

  @override
  String get ccFinStmtMerchantCode => 'Esnaf kodu';

  @override
  String get ccFinStmtNo => 'Dekont no';

  @override
  String get ccFinStmtNote => 'Not';

  @override
  String get ccFinStmtPayable => 'Esnafın ödeyeceği komisyon';

  @override
  String get ccFinStmtPeriod => 'Dönem';

  @override
  String get ccFinStmtPlatform => 'Umre Rehberim · Anlaşmalı Esnaf Programı';

  @override
  String get ccFinStmtRate => 'Komisyon oranı';

  @override
  String get ccFinStmtShop => 'Dükkan';

  @override
  String get ccFinStmtStampPaid => 'ÖDENDİ';

  @override
  String get ccFinStmtStampPending => 'BEKLİYOR';

  @override
  String get ccFinStmtTitle => 'Hak Ediş Dekontu';

  @override
  String get ccFinStmtTotals => 'Toplamlar';

  @override
  String get ccFinSubtitle => 'Esnaf komisyonları ve dönem kapanışı';

  @override
  String get ccFinTabAgencies => 'Acente payları';

  @override
  String get ccFinTabShops => 'Esnaf hak edişleri';

  @override
  String get ccFinTitle => 'Finans ve Hak Ediş';

  @override
  String get ccFinTotalsTitle => 'Dönem toplamları';

  @override
  String get ccFinUnknownAgency => 'Acentesiz';

  @override
  String get ccGreetingDay => 'İyi günler';

  @override
  String get ccGreetingEvening => 'İyi akşamlar';

  @override
  String get ccGreetingMorning => 'Günaydın';

  @override
  String get ccKpiAgencies => 'Acente';

  @override
  String get ccKpiDau => 'Günlük aktif kullanıcı';

  @override
  String get ccKpiOpenMessages => 'Okunmamış acente mesajı';

  @override
  String get ccKpiShops => 'Aktif dükkan';

  @override
  String get ccKpiTx30 => 'Son 30 gün işlem';

  @override
  String get ccKpiUsers => 'Kullanıcı';

  @override
  String get ccKpiVolume30 => 'Son 30 gün işlem hacmi';

  @override
  String get ccLoadFailed => 'Veriler yüklenemedi';

  @override
  String get ccLogout => 'Çıkış yap';

  @override
  String get ccLogoutConfirm => 'Oturumu kapatmak istediğinize emin misiniz?';

  @override
  String get ccLoyActionError => 'İşlem tamamlanamadı. Lütfen tekrar deneyin.';

  @override
  String get ccLoyAllAgencies => 'Tüm acenteler';

  @override
  String get ccLoyBulkAction => 'Toplu Puan';

  @override
  String get ccLoyBulkAgency => 'Acente';

  @override
  String get ccLoyBulkAllTrips => 'Acentenin tüm misafirleri';

  @override
  String ccLoyBulkConfirm(int count) {
    return '$count misafire yükle';
  }

  @override
  String get ccLoyBulkNoTargets => 'Seçime uyan misafir yok.';

  @override
  String ccLoyBulkOk(int count, int points) {
    return '$count misafire $points puan yüklendi.';
  }

  @override
  String ccLoyBulkPartial(int done, int total) {
    return 'Yükleme yarıda kaldı: $done/$total misafire yüklendi. Geri kalanlar için tekrar deneyin.';
  }

  @override
  String get ccLoyBulkPickAgency => 'Önce bir acente seçin.';

  @override
  String get ccLoyBulkPointsEach => 'Misafir başına puan';

  @override
  String ccLoyBulkPreview(int count, String total) {
    return '$count misafire toplam $total puan yüklenecek.';
  }

  @override
  String get ccLoyBulkRunning => 'Puanlar yükleniyor…';

  @override
  String get ccLoyBulkTitle => 'Toplu puan yükle';

  @override
  String get ccLoyBulkTrip => 'Sefer (isteğe bağlı)';

  @override
  String get ccLoyDeduct => 'Puan Düş';

  @override
  String get ccLoyDeductTitle => 'Puan düş';

  @override
  String ccLoyDeductedOk(int points) {
    return '$points puan düşüldü.';
  }

  @override
  String get ccLoyEarned => 'Kazanılan';

  @override
  String get ccLoyFeedEmpty => 'Bu filtreye uyan hareket yok.';

  @override
  String get ccLoyFeedTitle => 'Son puan hareketleri';

  @override
  String get ccLoyFilterAll => 'Tümü';

  @override
  String get ccLoyFilterBulk => 'Toplu';

  @override
  String get ccLoyFilterDeducted => 'Düşülen';

  @override
  String get ccLoyFilterGranted => 'Verilen';

  @override
  String get ccLoyFilterReverted => 'Geri alınan';

  @override
  String get ccLoyGrant => 'Puan Ver';

  @override
  String get ccLoyGrantTitle => 'Hediye puan ver';

  @override
  String ccLoyGrantedOk(int points) {
    return '$points puan verildi.';
  }

  @override
  String ccLoyGuestCount(int count) {
    return '$count misafir';
  }

  @override
  String get ccLoyGuestsTitle => 'Misafirler';

  @override
  String get ccLoyHistory => 'Puan geçmişi';

  @override
  String get ccLoyHistoryEmpty => 'Henüz puan hareketi yok.';

  @override
  String get ccLoyKpiCirculation => 'Dolaşımdaki toplam puan';

  @override
  String get ccLoyKpiGrantedMonth => 'Bu ay elle verilen puan';

  @override
  String get ccLoyKpiRedeemed => 'Puanla ödenen tutar';

  @override
  String get ccLoyKpiSpent => 'Alışverişte harcanan puan';

  @override
  String get ccLoyLoadError => 'Sadakat verileri yüklenemedi.';

  @override
  String get ccLoyManual => 'Elle';

  @override
  String get ccLoyNoGuests => 'Eşleşen misafir yok.';

  @override
  String get ccLoyPointsInvalid => '1 ile 100.000 arasında bir puan girin.';

  @override
  String get ccLoyPointsUnit => 'puan';

  @override
  String get ccLoyReadOnly => 'Salt okuma';

  @override
  String get ccLoyReason => 'Sebep (zorunlu)';

  @override
  String get ccLoyReasonHintBulk => 'Örn. Ramazan kampanyası';

  @override
  String get ccLoyReasonHintDeduct => 'Örn. Hatalı yükleme düzeltmesi';

  @override
  String get ccLoyReasonHintGrant => 'Örn. Hoş geldin hediyesi';

  @override
  String get ccLoyReasonRequired =>
      'Lütfen bir sebep yazın (en az 3 karakter).';

  @override
  String get ccLoyRefresh => 'Yenile';

  @override
  String get ccLoyRevertAction => 'Geri al';

  @override
  String ccLoyRevertBody(String guest, String points, String opposite) {
    return '$guest için yapılan $points puanlık hareket, $opposite puanlık ters kayıtla geri alınacak. Asıl kayıt silinmez.';
  }

  @override
  String ccLoyRevertDefaultReason(String reason) {
    return 'Geri alma: $reason';
  }

  @override
  String get ccLoyRevertTitle => 'Puan hareketini geri al';

  @override
  String get ccLoyRevertedOk => 'Puan hareketi geri alındı.';

  @override
  String get ccLoySearchHint => 'Ad, TC kimlik no veya acente ara';

  @override
  String ccLoyShowMore(int count) {
    return '$count misafir daha göster';
  }

  @override
  String get ccLoySpentShort => 'Harcanan';

  @override
  String get ccLoySubtitle => 'Puan ver, düş, geri al';

  @override
  String get ccLoyTagBulk => 'Toplu';

  @override
  String get ccLoyTagCancelled => 'İptal';

  @override
  String get ccLoyTagRevert => 'Geri alma';

  @override
  String get ccLoyTagReverted => 'Geri alındı';

  @override
  String get ccLoyTitle => 'Sadakat Puanları';

  @override
  String ccLoyWorth(String value) {
    return '≈ $value değerinde';
  }

  @override
  String get ccModAgencies => 'Acenteler';

  @override
  String get ccModAgenciesDesc => 'Acente listesi, kişiler ve yönetim';

  @override
  String get ccModAgenciesReadDesc => 'Acenteleri ve kişileri görüntüle';

  @override
  String get ccModAnalytics => 'Analitik';

  @override
  String get ccModAnalyticsDesc => 'Büyüme, aktiflik ve trendler';

  @override
  String get ccModAudit => 'Denetim Kaydı';

  @override
  String get ccModAuditDesc => 'Kim, ne zaman, ne yaptı';

  @override
  String get ccModCoupons => 'Kampanya & Kupon';

  @override
  String get ccModCouponsDesc => 'Kupon oluştur, kullanımı izle';

  @override
  String get ccModFinance => 'Finans & Hak Ediş';

  @override
  String get ccModFinanceDesc => 'Komisyon, hak ediş ve ödemeler';

  @override
  String get ccModLoyalty => 'Sadakat & Puan';

  @override
  String get ccModLoyaltyDesc => 'Puan bakiyeleri ve hareketleri';

  @override
  String get ccModMerchantPerf => 'Esnaf Performansı';

  @override
  String get ccModMerchantPerfDesc => 'Ciro, puan ve memnuniyet sıralaması';

  @override
  String get ccModMerchantReports => 'Esnaf Raporları';

  @override
  String get ccModMerchantReportsDesc => 'Alışveriş işlemleri ve iptaller';

  @override
  String get ccModMessages => 'Acente Mesajları';

  @override
  String get ccModMessagesDesc => 'Acentelerle yazışma ve duyuru';

  @override
  String get ccModRisk => 'Risk & Fraud';

  @override
  String get ccModRiskDesc => 'Şüpheli işlem alarmları';

  @override
  String get ccModShops => 'Anlaşmalı Dükkanlar';

  @override
  String get ccModShopsDesc => 'Dükkan, indirim ve esnaf hesapları';

  @override
  String get ccModStaff => 'Yetkili Personel';

  @override
  String get ccModStaffDesc => 'Destek ve muhasebe hesapları';

  @override
  String get ccMsgAddTitle => 'Başlık ekle';

  @override
  String get ccMsgAgencies => 'Acenteler';

  @override
  String get ccMsgAllAgencies => 'Tüm acenteler';

  @override
  String get ccMsgAllRead => 'Tümü okundu';

  @override
  String get ccMsgBodyHint => 'Mesaj yazın…';

  @override
  String get ccMsgBodyLabel => 'Mesaj metni';

  @override
  String get ccMsgBodyRequired => 'Mesaj metni boş olamaz.';

  @override
  String get ccMsgBroadcast => 'Toplu Mesaj';

  @override
  String ccMsgBroadcastConfirm(int count) {
    return 'Mesaj $count acenteye gönderilecek. Onaylıyor musunuz?';
  }

  @override
  String ccMsgBroadcastDone(int count) {
    return 'Mesaj $count acenteye gönderildi.';
  }

  @override
  String ccMsgBroadcastSend(int count) {
    return '$count acenteye gönder';
  }

  @override
  String get ccMsgBroadcastSub => 'Birden çok acenteye aynı anda gönderin';

  @override
  String get ccMsgBroadcastTag => 'Toplu';

  @override
  String get ccMsgCancel => 'Vazgeç';

  @override
  String get ccMsgClearSelection => 'Temizle';

  @override
  String get ccMsgEmptyThread => 'Henüz mesaj yok. İlk mesajı siz yazın.';

  @override
  String get ccMsgFilterAll => 'Tümü';

  @override
  String get ccMsgFilterUnread => 'Okunmamış';

  @override
  String get ccMsgHq => 'Merkez';

  @override
  String get ccMsgHqSub => 'Umre Rehberim Merkez Ofis';

  @override
  String ccMsgInboxBannerBody(int count) {
    return '$count okunmamış mesajınız var';
  }

  @override
  String get ccMsgInboxBannerTitle => 'Merkezden yeni mesaj';

  @override
  String get ccMsgLoadFailed => 'Mesajlar yüklenemedi.';

  @override
  String get ccMsgMenu => 'Merkez Mesajları';

  @override
  String get ccMsgMenuSub => 'Merkezle yazışın';

  @override
  String get ccMsgMessage => 'Mesaj';

  @override
  String get ccMsgNoAgencies => 'Acente bulunamadı.';

  @override
  String get ccMsgNoAgency => 'Hesabınıza bağlı bir acente bulunamadı.';

  @override
  String get ccMsgNoMessagesYet => 'Henüz mesaj yok';

  @override
  String get ccMsgNoRecipients => 'En az bir acente seçin.';

  @override
  String get ccMsgPreview => 'Önizleme';

  @override
  String get ccMsgRecipients => 'Alıcılar';

  @override
  String get ccMsgSearch => 'Acente ara…';

  @override
  String get ccMsgSelectAll => 'Tümünü seç';

  @override
  String get ccMsgSelectedAgencies => 'Seçili acenteler';

  @override
  String ccMsgSelectedCount(int count) {
    return '$count acente seçildi';
  }

  @override
  String get ccMsgSend => 'Gönder';

  @override
  String get ccMsgSendFailed => 'Mesaj gönderilemedi.';

  @override
  String get ccMsgSent => 'Mesaj gönderildi.';

  @override
  String get ccMsgSubtitle => 'Merkez ↔ Acente iletişimi';

  @override
  String get ccMsgTemplates => 'Hazır şablonlar';

  @override
  String get ccMsgTitle => 'Acente Mesajları';

  @override
  String get ccMsgTitleHint => 'Başlık (isteğe bağlı)';

  @override
  String get ccMsgTitleLabel => 'Başlık';

  @override
  String get ccMsgToday => 'Bugün';

  @override
  String get ccMsgTplCampaign => 'Kampanya duyurusu';

  @override
  String get ccMsgTplCampaignBody =>
      'Değerli iş ortağımız, anlaşmalı esnaf ağımızda misafirlerinize özel yeni bir puan kampanyası başlattık. Ayrıntılar için panelinizi inceleyebilir, misafirlerinizi bilgilendirebilirsiniz.';

  @override
  String get ccMsgTplCampaignTitle => 'Yeni kampanya';

  @override
  String get ccMsgTplDocument => 'Belge talebi';

  @override
  String get ccMsgTplDocumentBody =>
      'Değerli iş ortağımız, kayıtlarınızın güncellenmesi için güncel TÜRSAB belgenizi ve vergi levhanızı en kısa sürede iletmenizi rica ederiz.';

  @override
  String get ccMsgTplDocumentTitle => 'Belge talebi';

  @override
  String get ccMsgTplMaintenance => 'Sistem bakımı';

  @override
  String get ccMsgTplMaintenanceBody =>
      'Değerli iş ortağımız, sistemimizde planlı bakım çalışması yapılacaktır. Bakım süresince uygulamada kısa süreli kesintiler yaşanabilir. Anlayışınız için teşekkür ederiz.';

  @override
  String get ccMsgTplMaintenanceTitle => 'Planlı sistem bakımı';

  @override
  String get ccMsgTplPayment => 'Ödeme hatırlatma';

  @override
  String get ccMsgTplPaymentBody =>
      'Değerli iş ortağımız, dönem hizmet bedelinizin son ödeme tarihi yaklaşmaktadır. Ödemenizi zamanında yapmanızı rica eder, ödeme yaptıysanız bu mesajı dikkate almamanızı rica ederiz.';

  @override
  String get ccMsgTplPaymentTitle => 'Ödeme hatırlatması';

  @override
  String get ccMsgTplWelcome => 'Hoş geldiniz';

  @override
  String get ccMsgTplWelcomeBody =>
      'Değerli iş ortağımız, Umre Rehberim ailesine hoş geldiniz. Panelinizden misafirlerinizi, seferlerinizi ve otellerinizi yönetebilirsiniz. Her türlü sorunuz için bu kanaldan bize yazabilirsiniz.';

  @override
  String get ccMsgTplWelcomeTitle => 'Umre Rehberim\'e hoş geldiniz';

  @override
  String ccMsgUnreadTotal(int count) {
    return '$count okunmamış';
  }

  @override
  String get ccMsgYesterday => 'Dün';

  @override
  String get ccMsgYou => 'Siz';

  @override
  String get ccNoRecent => 'Henüz kayıt yok';

  @override
  String get ccPeriodAll => 'Tümü';

  @override
  String get ccPeriodMonth => '30 gün';

  @override
  String get ccPeriodQuarter => '90 gün';

  @override
  String get ccPeriodToday => 'Bugün';

  @override
  String get ccPeriodWeek => '7 gün';

  @override
  String get ccPeriodYear => '1 yıl';

  @override
  String get ccPermAgencies => 'Acenteler ve kişiler';

  @override
  String get ccPermAgencyEdit => 'Acente ekle / düzenle';

  @override
  String get ccPermAudit => 'Denetim kaydı';

  @override
  String get ccPermCoupons => 'Kampanya ve kupon';

  @override
  String get ccPermFinance => 'Finans ve hak ediş';

  @override
  String get ccPermFull => 'Tam';

  @override
  String get ccPermLoyalty => 'Puan hareketleri';

  @override
  String get ccPermMessages => 'Acente mesajları';

  @override
  String get ccPermNone => 'Yok';

  @override
  String get ccPermRead => 'Okuma';

  @override
  String get ccPermReports => 'Esnaf raporları ve performans';

  @override
  String get ccPermRisk => 'Risk ve fraud';

  @override
  String get ccPermShops => 'Dükkan ve esnaf yönetimi';

  @override
  String get ccPermStaff => 'Personel yönetimi';

  @override
  String get ccReadOnly => 'Salt okuma';

  @override
  String get ccRiskActionError => 'İşlem başarısız oldu';

  @override
  String get ccRiskAlarmsTitle => 'Alarmlar';

  @override
  String get ccRiskAmount => 'Tutar';

  @override
  String get ccRiskCancel => 'Vazgeç';

  @override
  String get ccRiskCancelReasonDefault => 'Risk incelemesi';

  @override
  String get ccRiskCancelReasonHint => 'İptal nedeni';

  @override
  String get ccRiskCancelTitle => 'İşlem iptali';

  @override
  String get ccRiskCancelTx => 'İşlemi iptal et';

  @override
  String get ccRiskCancelled => 'İşlem iptal edildi';

  @override
  String get ccRiskCouponActive => 'Aktif';

  @override
  String ccRiskCouponInfo(String value, int used, String max) {
    return 'İndirim $value · $used/$max kullanım';
  }

  @override
  String get ccRiskCouponPassive => 'Pasif';

  @override
  String get ccRiskEmpty => 'Filtreye uyan alarm yok';

  @override
  String get ccRiskEntities => 'İlgili kayıtlar';

  @override
  String get ccRiskEntityAdmin => 'Yönetici';

  @override
  String get ccRiskEntityCoupon => 'Kupon';

  @override
  String get ccRiskEntityGuest => 'Misafir';

  @override
  String get ccRiskEntityShop => 'Dükkan';

  @override
  String get ccRiskEvidence => 'Kanıtlar';

  @override
  String ccRiskExpAdminGrants(String admin, String points) {
    return '$admin 7 gün içinde toplam $points puan yükledi.';
  }

  @override
  String ccRiskExpBasket(String amount, String avg) {
    return 'İşlem $amount; dükkanın ortalama sepeti $avg (5 katından fazla).';
  }

  @override
  String ccRiskExpBigAmount(String amount) {
    return 'Tek işlem $amount; azami tutarın (20.000 SAR) %80\'ine ulaşıyor.';
  }

  @override
  String ccRiskExpBigGrant(String guest, String points) {
    return '$guest misafirine tek seferde $points puan yüklendi.';
  }

  @override
  String ccRiskExpBigPoints(String points) {
    return 'Tek işlemde $points puan harcandı.';
  }

  @override
  String ccRiskExpCancelRate(String shop, int rate, int count) {
    return '$shop son 90 günde $count işlemin %$rate\'ini iptal etti.';
  }

  @override
  String ccRiskExpConcentration(String guest, String shop, int share) {
    return '$guest, $shop dükkanının cirosunun %$share\'ini tek başına oluşturuyor.';
  }

  @override
  String ccRiskExpCouponUnlimited(String code, int count) {
    return '$code kuponunun kullanım sınırı yok ve $count kez kullanıldı.';
  }

  @override
  String ccRiskExpCouponValue(String code, String value) {
    return '$code kuponu $value indirim veriyor.';
  }

  @override
  String ccRiskExpFrequentGrants(String guest, int count) {
    return '$guest misafirine 7 gün içinde $count kez puan yüklendi.';
  }

  @override
  String ccRiskExpNight(String time) {
    return 'İşlem gece saatinde ($time) yapıldı.';
  }

  @override
  String ccRiskExpPointsBurn(String guest, String spent, String earned) {
    return '$guest 90 günde $spent puan harcadı, aynı dönemde yalnız $earned puan kazandı.';
  }

  @override
  String ccRiskExpQuickCancel(int minutes) {
    return 'İşlem oluşturulduktan $minutes dakika sonra iptal edildi.';
  }

  @override
  String get ccRiskExpSameAgency => 'Misafir ve dükkan aynı acenteye bağlı.';

  @override
  String ccRiskExpVelocity(String guest, String shop, int count) {
    return '$guest, $shop dükkanında 24 saat içinde $count işlem yaptı.';
  }

  @override
  String get ccRiskFilterAll => 'Tümü';

  @override
  String get ccRiskFilterSeverity => 'Önem';

  @override
  String get ccRiskFilterStatus => 'Durum';

  @override
  String get ccRiskFilterType => 'Tür';

  @override
  String get ccRiskKpiOpen => 'İncelenmemiş';

  @override
  String get ccRiskLoadError => 'Risk verileri yüklenemedi';

  @override
  String get ccRiskNoteHint => 'İnceleme notu';

  @override
  String ccRiskPointsUnit(String points) {
    return '$points puan';
  }

  @override
  String get ccRiskRefresh => 'Yenile';

  @override
  String get ccRiskReview => 'İnceleme';

  @override
  String get ccRiskReviewSaved => 'İnceleme kaydedildi';

  @override
  String ccRiskReviewedBy(String name, String date) {
    return '$name · $date';
  }

  @override
  String get ccRiskReviewsEmpty => 'Henüz inceleme yok';

  @override
  String get ccRiskReviewsTitle => 'İnceleme kayıtları';

  @override
  String get ccRiskSaveReview => 'İncelemeyi kaydet';

  @override
  String get ccRiskSevHigh => 'Yüksek';

  @override
  String get ccRiskSevLow => 'Düşük';

  @override
  String get ccRiskSevMedium => 'Orta';

  @override
  String get ccRiskStatusConfirmed => 'Onaylandı';

  @override
  String get ccRiskStatusFalse => 'Yanlış alarm';

  @override
  String get ccRiskStatusNew => 'Yeni';

  @override
  String get ccRiskStatusReviewed => 'İncelendi';

  @override
  String get ccRiskSubtitle => 'Son 90 günün kural tabanlı alarmları';

  @override
  String get ccRiskSupportNote =>
      'İşlem tabanlı alarmlar (alışveriş, puan ve kupon verisi) yalnız süper admin tarafından hesaplanır. Aşağıda yapılan incelemeleri görebilirsiniz.';

  @override
  String get ccRiskTime => 'Zaman';

  @override
  String get ccRiskTitle => 'Risk ve Dolandırıcılık';

  @override
  String get ccRiskTxCancelledBadge => 'İptal';

  @override
  String get ccRiskTypeAdminGrants => 'Yönetici puan hacmi';

  @override
  String get ccRiskTypeBasket => 'Olağandışı sepet';

  @override
  String get ccRiskTypeBigAmount => 'Yüksek tutarlı işlem';

  @override
  String get ccRiskTypeBigGrant => 'Büyük puan yüklemesi';

  @override
  String get ccRiskTypeBigPoints => 'Yüksek puan harcaması';

  @override
  String get ccRiskTypeCancelRate => 'Yüksek iptal oranı';

  @override
  String get ccRiskTypeConcentration => 'Ciro yoğunlaşması';

  @override
  String get ccRiskTypeCouponUnlimited => 'Sınırsız kupon, yoğun kullanım';

  @override
  String get ccRiskTypeCouponValue => 'Yüksek değerli kupon';

  @override
  String get ccRiskTypeFrequentGrants => 'Sık puan yüklemesi';

  @override
  String get ccRiskTypeNight => 'Gece işlemi';

  @override
  String get ccRiskTypePointsBurn => 'Hızlı puan tüketimi';

  @override
  String get ccRiskTypeQuickCancel => 'Hızlı iptal';

  @override
  String get ccRiskTypeVelocity => 'Kısa sürede çok işlem';

  @override
  String get ccRoleFinanceDesc =>
      'Hak ediş, esnaf raporları, puan ve kupon (okuma)';

  @override
  String get ccRoleSuperDesc => 'Tüm modüller, tam yetki';

  @override
  String get ccRoleSupportDesc => 'Acenteler (okuma), mesajlar, risk';

  @override
  String get ccSectionModules => 'Modüller';

  @override
  String get ccSectionOverview => 'Genel Bakış';

  @override
  String get ccSectionRecent => 'Son İşlemler';

  @override
  String get ccSeeAll => 'Tümü';

  @override
  String get ccStaffActionFailed => 'İşlem tamamlanamadı';

  @override
  String get ccStaffAdd => 'Personel ekle';

  @override
  String get ccStaffChangeRole => 'Rolü değiştir';

  @override
  String ccStaffCount(int count) {
    return '$count kişi';
  }

  @override
  String get ccStaffCreate => 'Hesap aç';

  @override
  String get ccStaffCreateFailed => 'Hesap açılamadı';

  @override
  String get ccStaffCreated => 'Personel hesabı açıldı';

  @override
  String get ccStaffDelete => 'Personeli sil';

  @override
  String ccStaffDeleteConfirm(String name) {
    return '$name silinsin mi? Hesap paneli kullanamaz hale gelir.';
  }

  @override
  String get ccStaffDeleted => 'Personel silindi';

  @override
  String get ccStaffEmpty => 'Henüz destek veya muhasebe personeli yok';

  @override
  String get ccStaffList => 'Personel';

  @override
  String get ccStaffLoginHint =>
      'Personel, \"Yönetici\" girişinden TC kimlik numarasıyla girer.';

  @override
  String get ccStaffMatrix => 'Yetki Matrisi';

  @override
  String get ccStaffName => 'Ad Soyad';

  @override
  String get ccStaffNameMissing => 'Ad soyad girin';

  @override
  String get ccStaffPhone => 'Telefon';

  @override
  String get ccStaffRole => 'Rol';

  @override
  String get ccStaffRoleChanged => 'Rol güncellendi';

  @override
  String get ccStaffSubtitle => 'Platform rolleri ve yetkileri';

  @override
  String get ccStaffTc => 'TC kimlik no';

  @override
  String get ccStaffTcExists => 'Bu TC ile kayıtlı bir kullanıcı var';

  @override
  String get ccStaffTcInvalid => 'TC 11 haneli olmalı';

  @override
  String get ccStaffTitle => 'Yetkili Personel';

  @override
  String get ccStaffYou => 'Sen';

  @override
  String get ccSubtitle => 'Platformun nabzı tek ekranda';

  @override
  String get ccTitle => 'Kontrol Merkezi';

  @override
  String get ccUsrActive24 => 'Son 24 saat aktif';

  @override
  String get ccUsrActive30 => 'Son 30 gün aktif';

  @override
  String get ccUsrAgency => 'Acente';

  @override
  String get ccUsrAll => 'Tümü';

  @override
  String ccUsrCount(int count) {
    return '$count kullanıcı';
  }

  @override
  String get ccUsrCreated => 'Kayıt tarihi';

  @override
  String get ccUsrDau => 'Bugün aktif';

  @override
  String get ccUsrEmpty => 'Bu filtreye uyan kullanıcı yok';

  @override
  String get ccUsrLastActive => 'Son aktiflik';

  @override
  String get ccUsrLoadFailed => 'Kullanıcılar yüklenemedi';

  @override
  String get ccUsrMau => '30 gün aktif';

  @override
  String get ccUsrNeverActive => 'Henüz aktif olmadı';

  @override
  String get ccUsrNew30 => 'Son 30 gün yeni';

  @override
  String get ccUsrNoAgency => 'Acentesiz';

  @override
  String get ccUsrOpenAgency => 'Acentesini aç';

  @override
  String get ccUsrPhone => 'Telefon';

  @override
  String get ccUsrRole => 'Rol';

  @override
  String get ccUsrSearch => 'Ad, TC veya telefon ara';

  @override
  String get ccUsrSubtitle => 'Tüm platform';

  @override
  String get ccUsrTc => 'TC Kimlik No';

  @override
  String get ccUsrTitle => 'Kullanıcılar';

  @override
  String get ccUsrTotal => 'Toplam';

  @override
  String get commonCancel => 'Vazgeç';

  @override
  String get commonClose => 'Kapat';

  @override
  String get commonComingSoon => 'Çok yakında';

  @override
  String get commonDelete => 'Sil';

  @override
  String get commonEdit => 'Düzenle';

  @override
  String get commonError => 'Bir hata oluştu.';

  @override
  String get commonLanguage => 'Dil';

  @override
  String get commonLanguageChanged => 'Dil değiştirildi';

  @override
  String get commonLoading => 'Yükleniyor...';

  @override
  String get commonMecca => 'Mekke';

  @override
  String get commonMedina => 'Medine';

  @override
  String get commonNo => 'Hayır';

  @override
  String get commonOk => 'Tamam';

  @override
  String get commonRetry => 'Tekrar Dene';

  @override
  String get commonSave => 'Kaydet';

  @override
  String get commonSearch => 'Ara';

  @override
  String get commonSelectLanguage => 'Dil seçin';

  @override
  String get commonYes => 'Evet';

  @override
  String get coreAccountExists => 'Bu TC ile kayıtlı bir hesap zaten var.';

  @override
  String get coreAnnouncement => 'Duyuru';

  @override
  String get coreAudioLoadFailed =>
      'Ses yüklenemedi. İnternet bağlantınızı kontrol edin.';

  @override
  String coreAyahCount(int count) {
    return '$count ayet';
  }

  @override
  String get coreBackgroundLocationMessage =>
      'Uygulama kapalıyken de rehberinizin sizi görebilmesi için açılacak ekranda \"Her zaman izin ver\" seçeneğini seçin.';

  @override
  String get coreBackgroundLocationTitle => 'Arka Planda Konum';

  @override
  String get coreChannelAnnouncements => 'Duyurular';

  @override
  String get coreChannelAnnouncementsDesc => 'Acente ve rehber duyuruları';

  @override
  String get coreChannelLocation => 'Konum Paylaşımı';

  @override
  String get coreChannelLocationDesc =>
      'Konumunuz rehberinizle paylaşılırken gösterilir';

  @override
  String get coreChannelQuranDesc => 'Sesli Kur\'an okuma kontrolleri';

  @override
  String get coreChannelRadio => 'Telsiz';

  @override
  String get coreChannelRadioDesc => 'Telsiz yayını sürerken görünen bildirim.';

  @override
  String get coreContinue => 'Devam';

  @override
  String get coreCurrencyEur => 'Euro';

  @override
  String get coreCurrencyGbp => 'İngiliz Sterlini';

  @override
  String get coreCurrencySar => 'Suudi Riyali';

  @override
  String get coreCurrencyTry => 'Türk Lirası';

  @override
  String get coreCurrencyUsd => 'ABD Doları';

  @override
  String get coreGoToSettings => 'Ayarlara Git';

  @override
  String coreHoursAgo(int count) {
    return '$count saat önce';
  }

  @override
  String get coreInvalidTokenResponse => 'Geçersiz token yanıtı.';

  @override
  String get coreJustNow => 'Az önce';

  @override
  String get coreLocationPermissionMessage =>
      'Konumunuzun rehberinizle paylaşılabilmesi için konum iznine ihtiyaç var. Ayarlar sayfasından izin verebilirsiniz.';

  @override
  String get coreLocationPermissionRestart =>
      'Lütfen konum iznini açın ve uygulamayı yeniden başlatın.';

  @override
  String get coreLocationPermissionTitle => 'Konum İzni Gerekli';

  @override
  String get coreLocationServiceOffMessage =>
      'Rehberinizin sizi görebilmesi için telefonunuzun konum (GPS) özelliğini açmanız gerekiyor.';

  @override
  String get coreLocationServiceOffSnack =>
      'Konum servisi kapalı. Lütfen telefonunuzun konumunu (GPS) açın.';

  @override
  String get coreLocationServiceOffTitle => 'Konum Servisi Kapalı';

  @override
  String get coreLocationServiceOpen => 'Konumu Aç';

  @override
  String get coreLocationSharingNotification =>
      'Konumunuz rehberinizle paylaşılıyor';

  @override
  String coreMinutesAgo(int count) {
    return '$count dakika önce';
  }

  @override
  String get coreNavCalendar => 'Takvim';

  @override
  String get coreNavHome => 'Ana Sayfa';

  @override
  String get coreNavInfo => 'Bilgi';

  @override
  String get coreNavPrayers => 'Dualar';

  @override
  String get coreNavProfile => 'Profil';

  @override
  String get coreNotNow => 'Şimdi Değil';

  @override
  String get coreOsmContributors => 'OpenStreetMap katkıcıları';

  @override
  String get corePageNotFound => 'Sayfa bulunamadı';

  @override
  String get coreQuranBlockedByRadio => 'Telsiz açıkken Kur\'an dinlenemez.';

  @override
  String get coreQuranTitle => 'Kur\'an-ı Kerim';

  @override
  String get coreRatesCached => 'kayıtlı';

  @override
  String get coreRatesDaily => 'günlük';

  @override
  String get coreRatesFetchFailed =>
      'Döviz kurları alınamadı. İnternet bağlantınızı kontrol edin.';

  @override
  String get coreSessionNotFound => 'Oturum bulunamadı.';

  @override
  String get coreStartFailed => 'Uygulama başlatılamadı';

  @override
  String get coreStarting => 'Başlatılıyor...';

  @override
  String get coreUnknownPage => 'Bilinmeyen sayfa';

  @override
  String get cuzdanAdjustmentReason => 'Açıklama';

  @override
  String get cuzdanAnalysisEmpty => 'Bu dönemde harcama yok.';

  @override
  String get cuzdanAnalysisTitle => 'Harcama analizi';

  @override
  String get cuzdanBalanceLabel => 'Puan bakiyem';

  @override
  String get cuzdanCancelReason => 'İptal sebebi';

  @override
  String get cuzdanCancelled => 'İptal edildi';

  @override
  String get cuzdanCancelledShort => 'İptal';

  @override
  String get cuzdanCardBrand => 'Umre Rehberim';

  @override
  String get cuzdanCardHolder => 'KART SAHİBİ';

  @override
  String get cuzdanCardPoints => 'PUAN';

  @override
  String get cuzdanCardSubtitle => 'Sadakat Kartı';

  @override
  String get cuzdanClose => 'Kapat';

  @override
  String get cuzdanCodeCreating => 'Kod hazırlanıyor…';

  @override
  String get cuzdanCodeError =>
      'Kod oluşturulamadı. İnternet bağlantınızı kontrol edip tekrar deneyin.';

  @override
  String cuzdanCodeOneTime(int minutes) {
    return 'Bu kod tek kullanımlıktır ve $minutes dakikada yenilenir.';
  }

  @override
  String get cuzdanCodeShowLive => 'Tek kullanımlık koda dön';

  @override
  String get cuzdanCodeShowStatic => 'Dükkanın kendi QR kodunu göster';

  @override
  String get cuzdanCodeTimeLeft => 'Kalan süre';

  @override
  String get cuzdanCodeWaiting => 'Kod okutuldu, işlem kaydediliyor…';

  @override
  String cuzdanCodeYourPoints(int points) {
    return 'Puanınız: $points';
  }

  @override
  String get cuzdanCouponAllShops => 'Tüm anlaşmalı dükkanlarda';

  @override
  String cuzdanCouponAtShop(String shop) {
    return 'Yalnız $shop';
  }

  @override
  String cuzdanCouponAvailable(int count) {
    return 'Bu dükkanda $count kupon kullanılabilir';
  }

  @override
  String get cuzdanCouponCode => 'Kupon kodu';

  @override
  String get cuzdanCouponDetails => 'Kupon ayrıntıları';

  @override
  String get cuzdanCouponHowTo =>
      'Kullanmak için dükkanda indirim kodunu açıp kuponu seç. Her kupon bir kez kullanılır.';

  @override
  String get cuzdanCouponNone => 'Kupon kullanma';

  @override
  String get cuzdanCouponOff => 'İNDİRİM';

  @override
  String get cuzdanCouponPickHint =>
      'Seçtiğin kupon koda eklenir; esnaf kodu okutunca indirim uygulanır.';

  @override
  String get cuzdanCouponPickTitle => 'Kupon seç';

  @override
  String cuzdanCouponSelected(String code) {
    return 'Kupon: $code';
  }

  @override
  String get cuzdanCouponTapHint => 'Ayrıntılar için dokun';

  @override
  String get cuzdanCouponUse => 'Kupon kullan';

  @override
  String cuzdanCouponUsed(String code) {
    return 'Kupon $code';
  }

  @override
  String cuzdanCouponValidUntil(String date) {
    return 'Son gün $date';
  }

  @override
  String cuzdanDaysAgo(int days) {
    return '$days gün önce';
  }

  @override
  String get cuzdanDiscount => 'İndirim';

  @override
  String get cuzdanEmpty =>
      'Henüz alışveriş yok. Anlaşmalı dükkanlarda QR kodunuzu göstererek indirim ve puan kazanın.';

  @override
  String get cuzdanFilterAll => 'Tümü';

  @override
  String get cuzdanFilterEarned => 'Puan kazanılan';

  @override
  String get cuzdanFilterSpent => 'Puanla ödenen';

  @override
  String get cuzdanGiftPoints => 'Hediye puan';

  @override
  String get cuzdanGoShops => 'Anlaşmalı Dükkanlar';

  @override
  String get cuzdanGross => 'Tutar';

  @override
  String get cuzdanHideBalance => 'Bakiyeyi gizle';

  @override
  String get cuzdanHowEarn =>
      'Anlaşmalı dükkanlarda harcadığınız her 1 SAR için 1 puan kazanırsınız.';

  @override
  String get cuzdanHowPay =>
      'Puanla ödediğinizde dükkanın indirimi yine uygulanır.';

  @override
  String get cuzdanHowRecord =>
      'Uygulama ödeme almaz; yalnızca alışverişinizi kaydeder.';

  @override
  String get cuzdanHowTitle => 'Puan nasıl çalışır?';

  @override
  String get cuzdanHowValue => '100 puan = 5 SAR değerindedir.';

  @override
  String get cuzdanLoadError =>
      'Harcamalar yüklenemedi. İnternet bağlantınızı kontrol edin.';

  @override
  String get cuzdanLoyaltyPoints => 'Sadakat Puanı';

  @override
  String get cuzdanMethodCard => 'Kredi kartı';

  @override
  String get cuzdanMethodCash => 'Nakit';

  @override
  String get cuzdanMethodPoints => 'Puan';

  @override
  String get cuzdanMyCoupons => 'Kuponlarım';

  @override
  String get cuzdanMyPurchases => 'Harcamalarım';

  @override
  String get cuzdanMyQr => 'QR\'ım';

  @override
  String get cuzdanNoFilterMatch => 'Bu filtreye uygun işlem yok.';

  @override
  String get cuzdanNoShops => 'Anlaşmalı dükkân bulunamadı.';

  @override
  String cuzdanNotifEarned(String shop, String amount, int points) {
    return '$shop: $amount SAR ödendi, $points puan kazandınız.';
  }

  @override
  String cuzdanNotifSpent(String shop, String amount, int points) {
    return '$shop: $amount SAR tutarı $points puanla ödendi.';
  }

  @override
  String get cuzdanPaid => 'Ödenen';

  @override
  String get cuzdanPaidWithPoints => 'Puanla ödenen';

  @override
  String get cuzdanPaymentMethod => 'Ödeme türü';

  @override
  String get cuzdanPickShopHint =>
      'QR kodunuz seçtiğiniz dükkân için oluşturulur.';

  @override
  String get cuzdanPickShopTitle => 'Hangi dükkândasınız?';

  @override
  String cuzdanPointsAmount(String points) {
    return '$points puan';
  }

  @override
  String get cuzdanPointsCorrection => 'Puan düzeltmesi';

  @override
  String get cuzdanPointsEarned => 'Kazanılan puan';

  @override
  String cuzdanPointsMinus(int points) {
    return '−$points puan';
  }

  @override
  String cuzdanPointsPlus(int points) {
    return '+$points puan';
  }

  @override
  String get cuzdanPointsRevert => 'Puan hareketi geri alındı';

  @override
  String get cuzdanPointsReverted => 'Geri alındı';

  @override
  String get cuzdanPointsSpent => 'Harcanan puan';

  @override
  String cuzdanPointsWorth(String value) {
    return '≈ $value SAR değerinde';
  }

  @override
  String cuzdanProfileSubtitle(int points) {
    return '$points puan · alışveriş geçmişi';
  }

  @override
  String get cuzdanPurchaseCount => 'Alışveriş';

  @override
  String get cuzdanPurchaseCountLabel => 'Alışveriş sayısı';

  @override
  String get cuzdanRetry => 'Tekrar dene';

  @override
  String get cuzdanReviewAction => 'Değerlendir';

  @override
  String get cuzdanReviewComment => 'Yorumun (isteğe bağlı)';

  @override
  String get cuzdanReviewComplaint => 'Şikâyet olarak bildir';

  @override
  String get cuzdanReviewComplaintHint =>
      'Şikâyetin platform ekibine iletilir ve incelenir.';

  @override
  String get cuzdanReviewError =>
      'Değerlendirme gönderilemedi. Lütfen tekrar dene.';

  @override
  String get cuzdanReviewOnce =>
      'Değerlendirme bir kez gönderilir ve sonradan değiştirilemez.';

  @override
  String get cuzdanReviewPickStars => 'Lütfen 1–5 arası yıldız seç.';

  @override
  String get cuzdanReviewSend => 'Gönder';

  @override
  String get cuzdanReviewStar1 => 'Çok kötü';

  @override
  String get cuzdanReviewStar2 => 'Kötü';

  @override
  String get cuzdanReviewStar3 => 'İdare eder';

  @override
  String get cuzdanReviewStar4 => 'İyi';

  @override
  String get cuzdanReviewStar5 => 'Mükemmel';

  @override
  String get cuzdanReviewThanks => 'Değerlendirmen için teşekkürler!';

  @override
  String get cuzdanReviewThis => 'Bu alışverişi değerlendir';

  @override
  String get cuzdanReviewTitle => 'Alışverişi değerlendir';

  @override
  String get cuzdanReviewYours => 'Değerlendirmen';

  @override
  String cuzdanSar(String amount) {
    return '$amount SAR';
  }

  @override
  String get cuzdanShopDiscount => 'Dükkân indirimi';

  @override
  String cuzdanShopDiscountPct(int percent) {
    return 'Dükkân indirimi %$percent';
  }

  @override
  String get cuzdanShops => 'Dükkanlar';

  @override
  String get cuzdanShowBalance => 'Bakiyeyi göster';

  @override
  String get cuzdanSuccessTitle => 'Alışveriş kaydedildi';

  @override
  String get cuzdanTitle => 'Harcamalarım ve Puanlarım';

  @override
  String get cuzdanToday => 'Bugün';

  @override
  String get cuzdanTotalDiscount => 'Kazanılan indirim';

  @override
  String get cuzdanTotalSpent => 'Toplam harcama';

  @override
  String cuzdanTxEarnedBig(int points) {
    return '+$points puan kazandınız';
  }

  @override
  String cuzdanTxSpentBig(int points) {
    return '$points puan kullandınız';
  }

  @override
  String cuzdanWorthRiyal(String value) {
    return '≈ $value riyal değerinde';
  }

  @override
  String get cuzdanYesterday => 'Dün';

  @override
  String get dualarAllFilesDownloaded => 'Tüm dosyalar başarıyla indirildi!';

  @override
  String get dualarArabicText => 'Arapça Metin';

  @override
  String get dualarBookPageView => 'Kitap sayfası görünümü';

  @override
  String get dualarChangeStartNumber => 'Başlangıç sayısını değiştir';

  @override
  String get dualarCompleted => 'Tamamlandı';

  @override
  String get dualarContentDownloadSuccess => 'İçerikler başarıyla indirildi!';

  @override
  String get dualarContentDownloadTitle => 'İçerik İndir';

  @override
  String get dualarContinue => 'Devam Et';

  @override
  String dualarContinueFrom(int count) {
    return '$count sayısından devam et';
  }

  @override
  String get dualarCustom => 'Özel';

  @override
  String dualarCustomValue(int value) {
    return 'Özel ($value)';
  }

  @override
  String dualarDeleteZikirConfirm(String name) {
    return '$name adlı zikri silmek istediğinize emin misiniz?';
  }

  @override
  String get dualarDeleteZikirTitle => 'Zikri Sil';

  @override
  String get dualarDlSay => 'Say Duaları';

  @override
  String get dualarDlTavaf => 'Tavaf Duaları';

  @override
  String get dualarDownload => 'İndir';

  @override
  String get dualarDownloadAll => 'Tümünü indir';

  @override
  String get dualarDownloadContent => 'İçerik indir';

  @override
  String get dualarDownloadDialogInfo =>
      'Kitap sayfası görsellerini indirerek internetsiz kullanabilirsiniz. Dua metinleri zaten cihazınızda.';

  @override
  String dualarDownloadErrorDetail(String error) {
    return 'İndirme sırasında bir hata oluştu: $error';
  }

  @override
  String dualarDownloadErrorGeneric(String error) {
    return 'İndirme hatası: $error';
  }

  @override
  String get dualarDownloadFailedShort => 'İndirme başarısız';

  @override
  String get dualarDownloadFailedTitle => 'İndirme başarısız!';

  @override
  String dualarDownloadItemFailed(String name, String error) {
    return '$name indirilemedi: $error';
  }

  @override
  String get dualarDownloaded => 'İndirildi ✓';

  @override
  String get dualarDownloading => 'İndiriliyor';

  @override
  String get dualarDownloadingTitle => 'İndiriliyor...';

  @override
  String get dualarEditZikirTitle => 'Zikri Düzenle';

  @override
  String get dualarEndShort => 'Bitiş';

  @override
  String get dualarEnterName => 'Lütfen bir isim giriniz!';

  @override
  String get dualarEnterNumber => 'Lütfen bir sayı giriniz!';

  @override
  String get dualarEnterTarget => 'Lütfen bir hedef belirleyin!';

  @override
  String dualarFileDownloadError(String error) {
    return 'Dosya indirme hatası: $error';
  }

  @override
  String get dualarFileDownloading => 'Dosya indiriliyor...';

  @override
  String dualarFileNotDownloaded(String name, String error) {
    return 'Dosya $name indirilemedi: $error';
  }

  @override
  String dualarFileProgress(int current, int total) {
    return 'Dosya $current/$total indiriliyor...';
  }

  @override
  String get dualarFillAllFields => 'Lütfen Boş Alan Bırakmayınız.';

  @override
  String dualarImageCount(int count) {
    return '$count resim';
  }

  @override
  String get dualarImageNotDownloaded => 'Resim henüz indirilmemiş';

  @override
  String get dualarMeaning => 'Anlamı';

  @override
  String get dualarNewZikir => 'Yeni zikir';

  @override
  String get dualarNoInternet => 'İnternet bağlantısı yok';

  @override
  String get dualarNoInternetCheck =>
      'İnternet bağlantısı yok. Lütfen bağlantınızı kontrol edin.';

  @override
  String get dualarNoLanguageOption =>
      'Bu sayfa için dil seçeneği mevcut değil';

  @override
  String get dualarNoSavedZikir => 'Henüz kayıtlı zikriniz yok';

  @override
  String get dualarNoSavedZikirHint =>
      'Zikirmatik\'te çektiğiniz zikri \"Kaydet\" ile bu listeye ekleyebilirsiniz.';

  @override
  String get dualarOptions => 'Seçenekler';

  @override
  String dualarOverallProgress(int percent) {
    return 'Genel: %$percent';
  }

  @override
  String get dualarReading => 'Okunuşu';

  @override
  String get dualarReset => 'Sıfırla';

  @override
  String get dualarResetConfirm => 'Sayaç sıfırlansın mı?';

  @override
  String dualarRoundsCompleted(int count) {
    return '$count tur tamamlandı';
  }

  @override
  String get dualarSaveAsTitle => 'Listeye hangi adla kaydedeceksiniz?';

  @override
  String get dualarSavedZikirs => 'Kayıtlı Zikirlerim';

  @override
  String dualarSavtCompletedReset(int count) {
    return '$count şavt tamamlandı. Sıfırlamak için sayaca uzun basın.';
  }

  @override
  String dualarSavtCongrats(int count) {
    return 'Tebrikler! $count şavtı tamamladınız.';
  }

  @override
  String get dualarSavtCounter => 'Şavt Sayacı';

  @override
  String get dualarSavtPlusOne => 'Şavt +1';

  @override
  String dualarSavtShort(int number) {
    return '$number. Şavt';
  }

  @override
  String get dualarSayDownloading => 'Say duaları indiriliyor...';

  @override
  String get dualarSayPageTitle => 'Sa\'y Duaları (Safa ve Merve)';

  @override
  String dualarServerError(int code) {
    return 'Sunucu hatası: $code';
  }

  @override
  String get dualarSetTargetTitle => 'Kendinize bir hedef belirleyin.';

  @override
  String get dualarSilent => 'Sessiz';

  @override
  String get dualarStartFromTitle => 'Nereden başlayıp çekmek istiyorsunuz?';

  @override
  String get dualarStartNumberHint => 'Başlangıç sayısı';

  @override
  String get dualarStartShort => 'Başlangıç';

  @override
  String get dualarTap => 'Dokun';

  @override
  String get dualarTargetHint => 'Örn. 500';

  @override
  String get dualarTargetReached => 'Hedefinize ulaştınız!';

  @override
  String dualarTargetSet(int target) {
    return 'Hedefiniz $target olarak belirlendi!';
  }

  @override
  String get dualarTargetTooBig => 'Hedefiniz 99999\'dan büyük olamaz!';

  @override
  String get dualarTargetZero => 'Hedefiniz 0 olamaz!';

  @override
  String get dualarTavafDownloading => 'Tavaf duaları indiriliyor...';

  @override
  String get dualarTavafPageTitle => 'Şavt Duaları (Tavaf)';

  @override
  String get dualarTextView => 'Metin görünümü';

  @override
  String get dualarTextViewOffline =>
      'Metin görünümü internetsiz de kullanılabilir.';

  @override
  String get dualarThemeColor => 'Tema rengi';

  @override
  String get dualarTimeout => 'Zaman aşımı';

  @override
  String get dualarTurkishTranslation => 'Türkçe Çeviri';

  @override
  String get dualarUndo => 'Geri al';

  @override
  String get dualarVibration => 'Titreşim';

  @override
  String get dualarVibrationOff => 'Titreşim kapatıldı';

  @override
  String get dualarVibrationOn => 'Titreşim açıldı';

  @override
  String get dualarViewList => 'Listeyi Gör';

  @override
  String dualarYourTarget(int target) {
    return 'Hedefiniz: $target';
  }

  @override
  String dualarZikirContinuing(String name) {
    return '$name adlı zikire devam ediyorsunuz.';
  }

  @override
  String get dualarZikirCount => 'Zikir Sayısı';

  @override
  String get dualarZikirMaxReached => 'Zikirmatik daha fazla artamaz!';

  @override
  String get dualarZikirName => 'Zikir Adı';

  @override
  String get dualarZikirNameHint => 'Örn. Sübhanallah';

  @override
  String get dualarZikirSaved => 'Zikriniz Başarıyla Kaydedildi!';

  @override
  String dualarZikirSavedCount(String name, int count) {
    return '\"$name\" kaydedildi ($count)';
  }

  @override
  String get dualarZikirmatik => 'Zikirmatik';

  @override
  String get esnafAllTransactions => 'Tüm işlemler';

  @override
  String get esnafAmountInvalid => 'Geçerli bir tutar girin.';

  @override
  String get esnafAmountLabel => 'Tutar (SAR)';

  @override
  String esnafAmountTooHigh(String max) {
    return 'Tek işlemde en fazla $max girilebilir.';
  }

  @override
  String get esnafBackHome => 'Ana sayfa';

  @override
  String get esnafByMethod => 'Ödeme türüne göre';

  @override
  String esnafCalcCoupon(String code) {
    return 'Kupon $code';
  }

  @override
  String esnafCalcDiscount(int percent) {
    return 'İndirim (%$percent)';
  }

  @override
  String get esnafCalcGross => 'Brüt tutar';

  @override
  String get esnafCalcPayable => 'Ödenecek';

  @override
  String get esnafCalcPointsBalance => 'Misafirin bakiyesi';

  @override
  String get esnafCalcPointsEarned => 'Kazanılan puan';

  @override
  String get esnafCalcPointsNeeded => 'Gereken puan';

  @override
  String get esnafCalcPointsSpent => 'Harcanan puan';

  @override
  String get esnafCancelAction => 'İptal et';

  @override
  String esnafCancelConfirmBody(String guest, String amount) {
    return '$guest adına $amount tutarındaki işlem iptal edilecek. Bu işlem geri alınamaz.';
  }

  @override
  String get esnafCancelConfirmTitle => 'Emin misiniz?';

  @override
  String get esnafCancelDenied =>
      'İptal edilemedi: 24 saatlik iptal süresi dolmuş olabilir.';

  @override
  String get esnafCancelDone => 'İşlem iptal edildi.';

  @override
  String get esnafCancelReason => 'İptal sebebi';

  @override
  String get esnafCancelReasonPrompt =>
      'İptal sebebini yazın. Acenteniz bu kaydı görür.';

  @override
  String get esnafCancelReasonRequired => 'Lütfen kısa bir sebep yazın.';

  @override
  String get esnafCancelTitle => 'İşlemi iptal et';

  @override
  String get esnafCancelWindowPassed =>
      'İşlemler yalnızca ilk 24 saat içinde iptal edilebilir.';

  @override
  String get esnafCancelledAt => 'İptal zamanı';

  @override
  String get esnafCancelledTag => 'İptal';

  @override
  String esnafCodeLabel(String code) {
    return 'Kod: $code';
  }

  @override
  String get esnafContinue => 'Devam';

  @override
  String get esnafCopied => 'Rapor panoya kopyalandı.';

  @override
  String get esnafCopy => 'Kopyala';

  @override
  String esnafCouponApplied(String amount) {
    return 'Uygulanan kupon indirimi: $amount';
  }

  @override
  String get esnafCouponEnterAmount =>
      'Tutarı girince kupon indirimi hesaplanır.';

  @override
  String get esnafCouponErrAlreadyUsed =>
      'Misafir bu kuponu daha önce kullanmış.';

  @override
  String get esnafCouponErrExhausted => 'Kupon kullanım sınırına ulaştı.';

  @override
  String get esnafCouponErrExpired => 'Kuponun süresi dolmuş.';

  @override
  String get esnafCouponErrInactive => 'Kupon pasif.';

  @override
  String esnafCouponErrMinSpend(String amount) {
    return 'Bu kupon en az $amount alışverişte geçerli.';
  }

  @override
  String get esnafCouponErrNotFound => 'Kupon bulunamadı.';

  @override
  String get esnafCouponErrNotStarted => 'Kupon henüz başlamadı.';

  @override
  String get esnafCouponErrOtherAgency =>
      'Kupon bu misafirin acentesi için geçerli değil.';

  @override
  String get esnafCouponErrOtherShop => 'Kupon bu dükkanda geçerli değil.';

  @override
  String get esnafCouponErrSave =>
      'Kupon kullanılamadı: misafir bu kuponu daha önce kullanmış ya da kupon az önce tükenmiş olabilir. Misafirden kuponsuz yeni bir kod üretmesini isteyin.';

  @override
  String get esnafCouponErrZero => 'Bu tutarda kupon indirimi uygulanamıyor.';

  @override
  String esnafCouponFixed(String amount) {
    return '$amount indirim';
  }

  @override
  String get esnafCouponInvalidHint =>
      'Bu kodla işlem kaydedilemez. Misafirden kuponsuz yeni bir kod üretmesini isteyin.';

  @override
  String get esnafCouponLoading => 'Kupon kontrol ediliyor…';

  @override
  String esnafCouponMax(String amount) {
    return 'en fazla $amount';
  }

  @override
  String esnafCouponMin(String amount) {
    return 'en az $amount alışverişte';
  }

  @override
  String esnafCouponPercent(String value) {
    return '%$value indirim';
  }

  @override
  String esnafCouponTitle(String code) {
    return 'Kupon: $code';
  }

  @override
  String get esnafDayReport => 'Gün sonu raporu';

  @override
  String esnafDiscountBadge(int percent) {
    return '%$percent indirim';
  }

  @override
  String esnafDiscountShort(String amount) {
    return 'indirim $amount';
  }

  @override
  String get esnafErrExpired => 'Kodun süresi doldu';

  @override
  String get esnafErrExpiredBody =>
      'Kodun süresi doldu. Misafirden yeni kod isteyip tekrar okutun.';

  @override
  String get esnafErrInvalidCode =>
      'Bu kod geçersiz, süresi dolmuş ya da daha önce kullanılmış.';

  @override
  String get esnafErrNetwork =>
      'Bağlantı sorunu. İnternetinizi kontrol edip tekrar deneyin.';

  @override
  String get esnafErrNotFound => 'Kod bulunamadı';

  @override
  String get esnafErrNotOurs => 'Bu bir Umre Rehberim kodu değil';

  @override
  String get esnafErrNotOursBody =>
      'Misafirden uygulamadaki esnaf kodunu açmasını isteyin.';

  @override
  String get esnafErrOtherAgency => 'Anlaşmalı acente değil';

  @override
  String get esnafErrOtherAgencyBody =>
      'Bu misafirin acentesiyle dükkanınızın indirim anlaşması yok.';

  @override
  String get esnafErrSave => 'Kaydedilemedi. Lütfen tekrar deneyin.';

  @override
  String get esnafErrTitle => 'İşlem kaydedilemedi';

  @override
  String get esnafErrUsed => 'Kod daha önce kullanılmış';

  @override
  String esnafErrUsedAt(String shop) {
    return 'Bu kod \"$shop\" dükkanında kullanıldı. Misafirden yeni kod isteyin.';
  }

  @override
  String get esnafErrUsedBody =>
      'Misafirden yeni bir kod oluşturmasını isteyin.';

  @override
  String get esnafGuest => 'Misafir';

  @override
  String get esnafGuestPoints => 'Puan bakiyesi';

  @override
  String get esnafGuestTrip => 'Sefer';

  @override
  String get esnafHistoryTitle => 'İşlem geçmişi';

  @override
  String get esnafLoadFailed => 'Veriler yüklenemedi';

  @override
  String get esnafLoadFailedBody =>
      'İnternet bağlantınızı kontrol edip tekrar deneyin.';

  @override
  String get esnafLoginCodeError => 'Esnaf kodu 6 karakter olmalı (A-Z, 2-9).';

  @override
  String get esnafLoginCodeLabel => 'Esnaf kodu';

  @override
  String get esnafLoginHint => 'Kod ve PIN size acenteniz tarafından verilir.';

  @override
  String get esnafLoginNotMerchant => 'Bu hesap bir esnaf hesabı değil.';

  @override
  String get esnafLoginPinError => 'PIN 6 haneli olmalı.';

  @override
  String get esnafLoginPinLabel => 'PIN';

  @override
  String get esnafLoginType => 'Esnaf';

  @override
  String get esnafLoginUseMerchant =>
      'Bu bir esnaf hesabı. Lütfen \"Esnaf\" girişini seçin.';

  @override
  String get esnafLoginWrong => 'Esnaf kodu ya da PIN hatalı.';

  @override
  String get esnafLogoCamera => 'Fotoğraf çek';

  @override
  String get esnafLogoGallery => 'Galeriden seç';

  @override
  String get esnafLogoRemove => 'Logoyu kaldır';

  @override
  String get esnafLogout => 'Çıkış yap';

  @override
  String get esnafLogoutConfirm => 'Oturumu kapatmak istiyor musunuz?';

  @override
  String get esnafMenuShopInfo => 'Dükkan bilgilerim';

  @override
  String get esnafMethodAll => 'Tümü';

  @override
  String get esnafMethodCard => 'Kredi kartı';

  @override
  String get esnafMethodCash => 'Nakit';

  @override
  String get esnafMethodLabel => 'Ödeme türü';

  @override
  String get esnafMethodPoints => 'Puan';

  @override
  String get esnafNewTx => 'Yeni işlem';

  @override
  String get esnafNoCollectNote =>
      'Uygulama ödeme almaz; yalnızca kaydı tutar.';

  @override
  String get esnafNoTransactions => 'Bu filtreye uygun işlem yok.';

  @override
  String get esnafNoTransactionsToday => 'Bugün henüz işlem yok.';

  @override
  String get esnafNoteLabel => 'Not (isteğe bağlı)';

  @override
  String esnafPointsInsufficient(String need, String balance) {
    return 'Puan yetersiz: $need puan gerekli, bakiye $balance.';
  }

  @override
  String get esnafPointsNone =>
      'Misafirin puan bakiyesi yok; puanla ödeme yapılamaz.';

  @override
  String get esnafRange30 => '30 gün';

  @override
  String get esnafRange7 => '7 gün';

  @override
  String get esnafRangeCustom => 'Özel';

  @override
  String get esnafRangeToday => 'Bugün';

  @override
  String get esnafRecentTransactions => 'Son işlemler';

  @override
  String get esnafReportCancelled => 'İptal edilen işlem';

  @override
  String get esnafReportFooter => 'Umre Rehberim – Esnaf Paneli';

  @override
  String esnafReportHeader(String shop) {
    return '$shop – Gün sonu raporu';
  }

  @override
  String get esnafReportPickDay => 'Rapor günü seçin';

  @override
  String get esnafReviewComplaint => 'Şikâyet';

  @override
  String get esnafReviewTitle => 'Misafir değerlendirmesi';

  @override
  String esnafSar(String amount) {
    return '$amount SAR';
  }

  @override
  String get esnafSaveTx => 'İşlemi kaydet';

  @override
  String get esnafScanAgain => 'Tekrar okut';

  @override
  String get esnafScanQr => 'QR Okut';

  @override
  String get esnafScanQrHint => 'Misafirin telefonundaki kodu okutun';

  @override
  String get esnafShopDescription => 'Açıklama';

  @override
  String get esnafShopHours => 'Çalışma saatleri';

  @override
  String get esnafShopInactive =>
      'Dükkanınız şu an pasif. İşlem yapılamaz; acentenizle görüşün.';

  @override
  String get esnafShopNotFound => 'Dükkan bulunamadı';

  @override
  String get esnafShopNotFoundBody =>
      'Hesabınıza bağlı bir dükkan yok. Lütfen acentenizle iletişime geçin.';

  @override
  String get esnafShopPhone => 'Telefon';

  @override
  String get esnafShopReadOnlyNote =>
      'Dükkan adı ve indirim oranını yalnızca acenteniz değiştirebilir.';

  @override
  String get esnafShopSaved => 'Dükkan bilgileri kaydedildi.';

  @override
  String get esnafShopWhatsapp => 'WhatsApp';

  @override
  String get esnafStatCount => 'İşlem';

  @override
  String get esnafStatDiscount => 'Verilen indirim';

  @override
  String get esnafStatNet => 'Net ciro';

  @override
  String get esnafSuccessBody =>
      'Ödemeyi kendi kasanızda ya da POS cihazınızda alın.';

  @override
  String get esnafSuccessTitle => 'İşlem kaydedildi';

  @override
  String get esnafTime => 'Zaman';

  @override
  String get esnafTitle => 'Esnaf Paneli';

  @override
  String get esnafTodaySummary => 'Bugünün özeti';

  @override
  String get esnafTxTitle => 'Yeni işlem';

  @override
  String get hatimCancel => 'Vazgeç';

  @override
  String get hatimCardSubtitle => 'Birlikte hatim indirin, cüz cüz paylaşın';

  @override
  String get hatimCompletedBadge => 'Tamamlandı';

  @override
  String get hatimCompletedBanner => 'Hatim tamamlandı, Allah kabul etsin';

  @override
  String get hatimConfirm => 'Evet';

  @override
  String get hatimCreateButton => 'Grubu oluştur';

  @override
  String get hatimCreateTitle => 'Yeni hatim grubu';

  @override
  String get hatimCreated => 'Hatim grubu oluşturuldu';

  @override
  String hatimDeadline(String date) {
    return 'Hedef: $date';
  }

  @override
  String get hatimDeadlineClear => 'Kaldır';

  @override
  String get hatimDeadlineLabel => 'Hedef tarih (isteğe bağlı)';

  @override
  String get hatimDeadlineNone => 'Tarih seçilmedi';

  @override
  String get hatimDelete => 'Grubu sil';

  @override
  String get hatimDeleteConfirm =>
      'Grup ve tüm ilerlemesi silinecek. Emin misiniz?';

  @override
  String hatimDoneBy(String name) {
    return 'Okuyan: $name';
  }

  @override
  String get hatimDoneToast => 'Allah kabul etsin!';

  @override
  String get hatimEdit => 'Düzenle';

  @override
  String get hatimEditTitle => 'Grubu düzenle';

  @override
  String get hatimEmptyDiscover => 'Şu an katılabileceğiniz başka grup yok.';

  @override
  String get hatimEmptyMine =>
      'Henüz bir hatim grubunuz yok. Yeni bir grup kurun ya da Keşfet sekmesinden bir gruba katılın.';

  @override
  String get hatimErrAlreadyDone => 'Bu parça zaten okunmuş';

  @override
  String get hatimErrCreateTooSoon =>
      'Yeni bir grup kurmak için 1 dakika bekleyin.';

  @override
  String get hatimErrFull => 'Grup dolu (en fazla 200 üye)';

  @override
  String get hatimErrGeneric => 'İşlem tamamlanamadı. Lütfen tekrar deneyin.';

  @override
  String get hatimErrNetwork => 'Bağlantı sorunu. Lütfen tekrar deneyin.';

  @override
  String get hatimErrNotActive =>
      'Bu hatim tamamlandı. Yeni hatim başlatılmasını bekleyin.';

  @override
  String get hatimErrNotSignedIn =>
      'Oturum bulunamadı. Lütfen tekrar giriş yapın.';

  @override
  String get hatimErrNotYours => 'Bu parça artık sizde değil';

  @override
  String get hatimErrPermission => 'Bu işlem için yetkiniz yok';

  @override
  String get hatimErrQuotaCuz =>
      'En fazla 3 cüz alabilirsiniz. Önce aldıklarınızı bitirin.';

  @override
  String get hatimErrQuotaSayfa =>
      'En fazla 20 sayfa alabilirsiniz. Önce aldıklarınızı bitirin.';

  @override
  String get hatimErrRejoinTooSoon =>
      'Gruba tekrar katılmak için biraz bekleyin.';

  @override
  String get hatimErrTakenCuz => 'Bu cüz az önce başkası tarafından alındı';

  @override
  String get hatimErrTakenSayfa => 'Bu sayfa az önce başkası tarafından alındı';

  @override
  String get hatimErrTooSoon =>
      'Okumak için biraz zaman tanıyın. Parçayı aldıktan en az 1 dakika sonra bitirebilirsiniz.';

  @override
  String get hatimEvCompleted => 'Hatim tamamlandı! Allah kabul etsin';

  @override
  String hatimEvCreate(String name) {
    return '$name grubu kurdu';
  }

  @override
  String hatimEvDoneCuz(String name, int n, int done, int total) {
    return '$name $n. cüzü bitirdi ($done/$total)';
  }

  @override
  String hatimEvDoneSayfa(String name, int n, int done, int total) {
    return '$name $n. sayfayı bitirdi ($done/$total)';
  }

  @override
  String hatimEvJoin(String name) {
    return '$name gruba katıldı';
  }

  @override
  String hatimEvKick(String name) {
    return '$name bir üyeyi gruptan çıkardı';
  }

  @override
  String hatimEvLeave(String name) {
    return '$name gruptan ayrıldı';
  }

  @override
  String hatimEvNewRound(int round) {
    return '$round. hatim başladı';
  }

  @override
  String hatimEvRelease(String name) {
    return '$name bir parçayı bıraktı';
  }

  @override
  String hatimEvTakeCuz(String name, int n) {
    return '$name $n. cüzü aldı';
  }

  @override
  String hatimEvTakeSayfa(String name, int n) {
    return '$name $n. sayfayı aldı';
  }

  @override
  String get hatimFieldName => 'Grup adı';

  @override
  String get hatimFieldNameHint => 'Örn: Annem için hatim';

  @override
  String get hatimFieldNiyet => 'Niyet / dua (isteğe bağlı)';

  @override
  String get hatimFieldNiyetHint => 'Hatim kimin için, hangi niyetle okunuyor?';

  @override
  String get hatimGroupNotFound => 'Grup bulunamadı ya da silinmiş.';

  @override
  String get hatimInviteCopied => 'Davet metni panoya kopyalandı';

  @override
  String hatimInviteText(String name) {
    return '\"$name\" hatim grubuna sen de katıl! Umre Rehberim uygulamasında Dualar > Toplu Hatim bölümünden gruba ulaşabilirsin.';
  }

  @override
  String get hatimJoin => 'Gruba katıl';

  @override
  String get hatimJoined => 'Gruba katıldınız';

  @override
  String get hatimKick => 'Üyeyi çıkar';

  @override
  String hatimKickConfirm(String name) {
    return '$name gruptan çıkarılsın mı? Aldığı ve bitirmediği parçalar boşa çıkarılır.';
  }

  @override
  String get hatimKicked => 'Üye gruptan çıkarıldı';

  @override
  String get hatimLastEvent => 'Son hareketler';

  @override
  String get hatimLeave => 'Gruptan ayrıl';

  @override
  String get hatimLeaveConfirm => 'Bu gruptan ayrılmak istiyor musunuz?';

  @override
  String get hatimLegendDone => 'Bitti';

  @override
  String get hatimLegendFree => 'Boş';

  @override
  String get hatimLegendMine => 'Benim';

  @override
  String get hatimLegendTaken => 'Alındı';

  @override
  String get hatimLoadError => 'Gruplar yüklenemedi';

  @override
  String get hatimMarkDone => 'Bitirdim';

  @override
  String hatimMembers(int count) {
    return '$count üye';
  }

  @override
  String get hatimNameInvalid => 'Grup adı 3 ile 60 karakter arasında olmalı';

  @override
  String get hatimNewGroup => 'Yeni hatim grubu';

  @override
  String get hatimNewRound => 'Yeni hatim başlat';

  @override
  String get hatimNewRoundConfirm =>
      'Aynı grupla yeni bir hatme başlansın mı? İlerleme sıfırlanır.';

  @override
  String get hatimNiyetInvalid => 'Niyet en fazla 300 karakter olabilir';

  @override
  String get hatimNotMember => 'Parça almak için önce gruba katılın.';

  @override
  String hatimOwner(String name) {
    return 'Grubu kuran: $name';
  }

  @override
  String hatimPartCuz(int n) {
    return '$n. cüz';
  }

  @override
  String hatimPartSayfa(int n) {
    return '$n. sayfa';
  }

  @override
  String get hatimPrivateBadge => 'Acenteye özel';

  @override
  String get hatimPrivateDesc =>
      'Grubu yalnızca sizinle aynı acentedeki kişiler görür ve katılabilir.';

  @override
  String get hatimPrivateTitle => 'Yalnız acentem';

  @override
  String hatimProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String get hatimPublicBadge => 'Herkese açık';

  @override
  String get hatimPublicDesc =>
      'Uygulamayı kullanan herkes grubu Keşfet sekmesinde görür ve katılabilir.';

  @override
  String get hatimPublicTitle => 'Herkese açık';

  @override
  String hatimQuotaInfo(int held, int max) {
    return 'Sizde $held/$max';
  }

  @override
  String get hatimRelease => 'Bırak';

  @override
  String get hatimReleaseOther => 'Parçayı boşa çıkar';

  @override
  String hatimReleaseOtherConfirm(String name) {
    return '$name adlı kişinin aldığı parça boşa çıkarılsın mı?';
  }

  @override
  String hatimRound(int round) {
    return '$round. hatim';
  }

  @override
  String get hatimSave => 'Kaydet';

  @override
  String get hatimShare => 'Davet et';

  @override
  String get hatimStartReading => 'Okumaya başla';

  @override
  String get hatimTabDiscover => 'Keşfet';

  @override
  String get hatimTabMine => 'Gruplarım';

  @override
  String get hatimTake => 'Al';

  @override
  String hatimTakeConfirmCuz(int n) {
    return '$n. cüzü almak istiyor musunuz?';
  }

  @override
  String hatimTakeConfirmSayfa(int n) {
    return '$n. sayfayı almak istiyor musunuz?';
  }

  @override
  String hatimTakenBy(String name) {
    return 'Alan: $name';
  }

  @override
  String get hatimTakenToast => 'Parça size ayrıldı. Hayırlı okumalar!';

  @override
  String get hatimTitle => 'Toplu Hatim';

  @override
  String get hatimUnitCuz => 'Cüz';

  @override
  String get hatimUnitCuzDesc => '30 cüz. Her üye bir veya birkaç cüz alır.';

  @override
  String get hatimUnitLabel => 'Nasıl paylaşılsın?';

  @override
  String get hatimUnitLocked =>
      'Paylaşım birimi grup kurulduktan sonra değiştirilemez.';

  @override
  String get hatimUnitSayfa => 'Sayfa';

  @override
  String get hatimUnitSayfaDesc =>
      '604 sayfa. Kalabalık gruplarla kısa sürede biter.';

  @override
  String get hatimVisibilityLabel => 'Kimler görebilir?';

  @override
  String get homeAnnouncement => 'Duyuru';

  @override
  String get homeBirthDate => 'Doğum Tarihi';

  @override
  String get homeCalendarNoAgency =>
      'Acente bilginiz tanımlandığında program burada görünecek.';

  @override
  String get homeCalendarNotFound => 'Takvim bilgisi bulunamadı';

  @override
  String get homeCallAgency => 'Acenteyi Ara';

  @override
  String get homeChecking => 'Kontrol ediliyor...';

  @override
  String get homeContactAgencyHint => 'Lütfen acente ile iletişime geçin.';

  @override
  String get homeContactGuide => 'Rehberle İletişim';

  @override
  String get homeContactGuideSubtitle => 'Rehberinizle iletişim kurun';

  @override
  String get homeCountdownDays => 'Gün';

  @override
  String get homeCountdownHours => 'Saat';

  @override
  String get homeCountdownMinutes => 'Dakika';

  @override
  String get homeCountdownSeconds => 'Saniye';

  @override
  String get homeCurrencySar => 'Suudi Riyali';

  @override
  String get homeCurrencyTry => 'Türk Lirası';

  @override
  String homeDayN(int day) {
    return '$day. Gün';
  }

  @override
  String get homeDaysLeftLabel => 'gün kaldı';

  @override
  String get homeDhikrSection => 'Zikir';

  @override
  String get homeDownloadContent => 'İçerik indir';

  @override
  String get homeDuaQuoteCallUpon =>
      'Rabbiniz şöyle dedi: Bana dua edin, size karşılık vereyim.';

  @override
  String get homeDuaQuoteHearts =>
      'Bilesiniz ki kalpler ancak Allah\'ı anmakla huzur bulur.';

  @override
  String get homeDuaQuoteNear =>
      'Kullarım sana beni sorarlarsa, bilsinler ki ben onlara çok yakınım. Bana dua edince, dua edenin duasına cevap veririm.';

  @override
  String get homeDuaQuoteRemember =>
      'Öyleyse yalnız beni anın ki ben de sizi anayım.';

  @override
  String get homeDuasQuranSubtitle => 'Okumak ve dinlemek için tıklayın';

  @override
  String get homeDuasSai => 'Sa\'y Duaları';

  @override
  String get homeDuasSaiSubtitle => 'Safa ile Merve arası okumak için tıklayın';

  @override
  String get homeDuasTawaf => 'Tavaf Duaları';

  @override
  String get homeDuasTitle => 'Dualar ve Kuran-ı Kerim';

  @override
  String get homeDuasUmrahSection => 'Umre Duaları';

  @override
  String homeDurationH(int hours) {
    return '$hours sa';
  }

  @override
  String homeDurationHM(int hours, int minutes) {
    return '$hours sa $minutes dk';
  }

  @override
  String homeDurationM(int minutes) {
    return '$minutes dk';
  }

  @override
  String get homeEventDone => 'Gerçekleşti';

  @override
  String get homeEventUpcoming => 'Yaklaşan';

  @override
  String get homeEventsLoadError =>
      'Etkinlikler yüklenemedi. İnternet bağlantınızı kontrol edip tekrar deneyin.';

  @override
  String get homeFixPermission => 'İzni Düzelt';

  @override
  String get homeGender => 'Cinsiyet';

  @override
  String get homeGenderFemale => 'Kadın';

  @override
  String get homeGenderMale => 'Erkek';

  @override
  String get homeGreeting => 'Selamün Aleyküm';

  @override
  String get homeGuest => 'Misafir';

  @override
  String get homeGuide => 'Rehber';

  @override
  String get homeGuideLocation => 'Rehberin Konumu';

  @override
  String get homeHotelInfo => 'Otel Bilgileri';

  @override
  String homeHoursAgo(int count) {
    return '$count sa önce';
  }

  @override
  String get homeJustNow => 'Az önce';

  @override
  String homeLastSent(String when) {
    return 'Son gönderim: $when';
  }

  @override
  String homeLastUpdate(String date) {
    return 'Son güncelleme: $date';
  }

  @override
  String get homeLocationAllow => 'Konum İznine İzin Ver';

  @override
  String get homeLocationBackgroundWarning =>
      'Arka plan konum izni yok: ekran kapalıyken konum seyrek ve yanlış güncellenir. Ayarlar > İzinler > Konum bölümünden \"Her zaman izin ver\"i seçin.';

  @override
  String get homeLocationBeingShared => 'Konumunuz paylaşılıyor';

  @override
  String get homeLocationGpsOff => 'Telefonun konum servisi (GPS) kapalı';

  @override
  String get homeLocationPermissionDenied => 'Konum izni verilmedi';

  @override
  String get homeLocationReceived => 'Konum alındı';

  @override
  String get homeLocationReducedWarning =>
      '\"Yaklaşık konum\" açık: konumunuz birkaç yüz metre ile birkaç km arasında sapabilir. Ayarlar > İzinler > Konum bölümünden \"Tam konum kullan\"ı açın.';

  @override
  String get homeLocationServiceStarting =>
      'Paylaşım açık, servis başlatılıyor...';

  @override
  String get homeLocationSharing => 'Konum Paylaşımı';

  @override
  String get homeLocationSharingDesc =>
      'Açıkken konumunuz uygulama kapalıyken de rehberinizle paylaşılır.';

  @override
  String get homeLocationSharingDisabled => 'Paylaşım kapalı';

  @override
  String get homeLocationSharingOff => 'Konum paylaşımı kapatıldı';

  @override
  String get homeLocationSharingOn => 'Konum paylaşımı açıldı';

  @override
  String get homeLocationStart => 'Konum Takibini Başlat';

  @override
  String get homeLocationStartHint => 'Rehberiniz konumunuzu görebilsin';

  @override
  String get homeLocationStop => 'Konum Takibini Durdur';

  @override
  String get homeLocationTracking => 'Konum Takibi';

  @override
  String get homeLogout => 'Çıkış Yap';

  @override
  String get homeLogoutConfirm =>
      'Hesabınızdan çıkış yapmak istediğinize emin misiniz?';

  @override
  String get homeLogoutFailed => 'Çıkış yapılamadı. Lütfen tekrar deneyin.';

  @override
  String homeMinutesAgo(int count) {
    return '$count dk önce';
  }

  @override
  String get homeNext => 'Sonraki';

  @override
  String get homeNoActiveTrip => 'Aktif bir seferiniz bulunmuyor';

  @override
  String get homeNoEventsHint =>
      'Başka bir gün seçerek etkinlikleri görüntüleyin';

  @override
  String get homeNoEventsToday => 'Bu gün için etkinlik yok';

  @override
  String get homeNoManagerForTrip => 'Bu sefere henüz yönetici atanmamış';

  @override
  String get homeNoName => 'İsim bilgisi yok';

  @override
  String get homeNoNotifications => 'Henüz bildirim yok.';

  @override
  String get homeNoNotificationsHint =>
      'Rehberinizin duyuruları burada görünecek.';

  @override
  String get homeNoPhone => 'Telefon bilgisi yok';

  @override
  String get homeNotYet => 'henüz yok';

  @override
  String get homeNotificationsLoadError => 'Bildirimler yüklenemedi.';

  @override
  String get homeNotificationsTitle => 'Bildirimler';

  @override
  String get homeOfflineMode => 'Çevrimdışı mod';

  @override
  String get homeOpenBigMap => 'Büyük haritada aç ve yol tarifi al';

  @override
  String get homePersonal => 'Size özel';

  @override
  String get homePersonalInfo => 'Kişisel Bilgiler';

  @override
  String get homePhaseDone => 'Tamamlandı';

  @override
  String get homePhaseNone => 'Planlanmadı';

  @override
  String get homePhaseOngoing => 'Devam ediyor';

  @override
  String get homePhaseUpcoming => 'Yaklaşıyor';

  @override
  String get homePhone => 'Telefon';

  @override
  String get homePhoneOpenFailed => 'Telefon açılamadı';

  @override
  String get homePickDay => 'Gün Seç';

  @override
  String get homePrayerAsr => 'İkindi';

  @override
  String get homePrayerDhuhr => 'Öğle';

  @override
  String get homePrayerFajr => 'İmsak';

  @override
  String get homePrayerIsha => 'Yatsı';

  @override
  String get homePrayerMaghrib => 'Akşam';

  @override
  String get homePrayerSunrise => 'Güneş';

  @override
  String get homePrevious => 'Önceki';

  @override
  String get homeProfileTitle => 'Profil';

  @override
  String get homeProgramCalendar => 'Program Takvimi';

  @override
  String homeProgramDay(int day, int total) {
    return 'Programın $day. günü • toplam $total gün';
  }

  @override
  String get homeQuickDuas => 'Dualar';

  @override
  String get homeQuickPlaces => 'Gezilecek Yerler';

  @override
  String get homeQuickQibla => 'Kıble';

  @override
  String get homeQuickQuran => 'Kur\'an-ı Kerim';

  @override
  String get homeQuickShops => 'Anlaşmalı Dükkanlar';

  @override
  String get homeQuoteAcceptFromUs =>
      'Rabbimiz! Bizden kabul buyur. Şüphesiz sen hakkıyla işitensin, hakkıyla bilensin.';

  @override
  String get homeQuoteCompleteHajj => 'Haccı ve umreyi Allah için tamamlayın.';

  @override
  String get homeQuoteRamadanUmrah =>
      'Ramazan ayında yapılan umre, bir hacca denktir.';

  @override
  String get homeQuoteSafaMarwah =>
      'Şüphesiz Safa ile Merve Allah\'ın nişanelerindendir.';

  @override
  String get homeQuoteUmrahExpiation =>
      'Bir umre, diğer umreye kadar arada işlenen günahlara kefarettir.';

  @override
  String get homeRatesError =>
      'Döviz kurları alınamadı. İnternet bağlantınızı kontrol edin.';

  @override
  String get homeRatesLive => 'Canlı kur';

  @override
  String get homeRefresh => 'Yenile';

  @override
  String get homeRegistrationDate => 'Kayıt Tarihi';

  @override
  String homeRoom(String room) {
    return 'Oda $room';
  }

  @override
  String homeRoomCapacity(int count) {
    return '($count kişilik)';
  }

  @override
  String get homeRoomInfo => 'Oda Bilgileri';

  @override
  String get homeSavedDhikrs => 'Kayıtlı Zikirlerim';

  @override
  String get homeSavedDhikrsSubtitle => 'Kaldığınız yerden devam edin';

  @override
  String get homeSectionCurrency => 'Döviz';

  @override
  String get homeSectionJourney => 'Kutsal Yolculuk Vakti';

  @override
  String get homeSectionPrayerTimes => 'Ezan Vakitleri';

  @override
  String get homeSectionQuickAccess => 'Hızlı Erişim';

  @override
  String get homeSendMessage => 'Mesaj gönder';

  @override
  String get homeSomethingWrong => 'Bir sorun oluştu';

  @override
  String get homeSourceBaqarah127 => 'Bakara Suresi, 127';

  @override
  String get homeSourceBaqarah152Short => 'Bakara 2/152';

  @override
  String get homeSourceBaqarah158 => 'Bakara Suresi, 158';

  @override
  String get homeSourceBaqarah186Short => 'Bakara 2/186';

  @override
  String get homeSourceBaqarah196 => 'Bakara Suresi, 196';

  @override
  String get homeSourceBaqarah196Short => 'Bakara 2/196';

  @override
  String get homeSourceBukhari => 'Hadis-i Şerif (Buhârî)';

  @override
  String get homeSourceGhafir60Short => 'Mü\'min 40/60';

  @override
  String get homeSourceRad28Short => 'Ra\'d 13/28';

  @override
  String get homeTapToRead => 'Okumak için tıklayın';

  @override
  String get homeTasbihCounter => 'Zikirmatik';

  @override
  String get homeTasbihSubtitle => 'Zikir çekmek için tıklayın';

  @override
  String get homeTcNo => 'T.C. Kimlik No';

  @override
  String get homeTechSupportInfo => 'Teknik Servis Bilgileri';

  @override
  String get homeToday => 'Bugün';

  @override
  String get homeTripAccepted => 'Allah teâlâ kabul eylesin!';

  @override
  String get homeTripNotDefined => 'Sefer bilgisi henüz tanımlanmadı.';

  @override
  String homeTripOf(String city) {
    return '$city Seferi';
  }

  @override
  String get homeUmrahInfo => 'Umre Bilgileri';

  @override
  String get homeUnknown => 'Bilinmeyen';

  @override
  String homeUpdatedDaysAgo(int count) {
    return '$count gün önce güncellendi';
  }

  @override
  String homeUpdatedHoursAgo(int count) {
    return '$count saat önce güncellendi';
  }

  @override
  String get homeUpdatedJustNow => 'Az önce güncellendi';

  @override
  String homeUpdatedMinutesAgo(int count) {
    return '$count dk önce güncellendi';
  }

  @override
  String get homeUserNotFound => 'Kullanıcı bilgisi bulunamadı';

  @override
  String get homeUserTypeAdmin => 'Yönetici';

  @override
  String get homeUserTypePilgrim => 'Umre Ziyaretçisi';

  @override
  String get homeUserTypeSuperAdmin => 'Süper Yönetici';

  @override
  String get homeWaitingGuideLocation => 'Rehber konumu bekleniyor...';

  @override
  String get homeWhatsAppOpenFailed => 'WhatsApp açılamadı';

  @override
  String get homeYourGuide => 'Rehberiniz';

  @override
  String get infoBadgeSoon => 'Yakında';

  @override
  String get infoCardContactGuide => 'Rehberle İletişime Geç';

  @override
  String get infoCardHotels => 'Otel ve Restoranlar';

  @override
  String get infoCardHotelsSub =>
      'Harem çevresindeki oteller ve yeme-içme yerleri.';

  @override
  String get infoCardIhram => 'İhram Yasakları';

  @override
  String get infoCardMiqat => 'Mikat Mahalleri';

  @override
  String get infoCardMiqatSub => 'Beş mikat, uzaklıkları ve harita konumları.';

  @override
  String get infoCardNeedList => 'İhtiyaç Listesi';

  @override
  String get infoCardNeedListSub => 'Bavulunuzu hazırlarken işaretleyin.';

  @override
  String get infoCardPedometer => 'Adım Sayar';

  @override
  String get infoCardPedometerSub => 'Günlük adım sayınızı takip edin.';

  @override
  String get infoCardPlaces => 'Gezilecek Yerler';

  @override
  String get infoCardRouteSim => 'Rota Simülasyonu';

  @override
  String get infoCardRouteSimSub => 'Mikattan tıraşa umre adımları haritada.';

  @override
  String get infoCardTawafSim => 'Tavaf Simülasyonu';

  @override
  String get infoCardTawafSimSub =>
      'Kâbe çevresinde 7 şavt, istilam ve dualar.';

  @override
  String get infoCardTechSupport => 'Teknik Servis Bilgileri';

  @override
  String get infoCardTravelGuide => 'Seyahat Rehberi';

  @override
  String get infoCardTravelGuideSub =>
      'Vize, sağlık, para, ulaşım ve önemli telefonlar.';

  @override
  String get infoCheckBeforeTravel =>
      'Yola çıkmadan önce güncelliğini kontrol edin.';

  @override
  String get infoCouldNotOpen => 'Açılamadı.';

  @override
  String get infoDirections => 'Yol tarifi';

  @override
  String infoDistanceKm(String km) {
    return '~$km km';
  }

  @override
  String infoDistanceM(int meters) {
    return '~$meters m';
  }

  @override
  String get infoEmail => 'E-posta';

  @override
  String get infoFilterAll => 'Tümü';

  @override
  String get infoFilterFood => 'Yeme-içme';

  @override
  String get infoFilterHotels => 'Oteller';

  @override
  String get infoGeneralTitle => 'Genel Bilgiler';

  @override
  String get infoGuide911Note =>
      '911, Mekke dahil bazı bölgelerde birleşik acil çağrı hattı olarak çalışır.';

  @override
  String get infoGuideJeddahConsulate => 'T.C. Cidde Başkonsolosluğu';

  @override
  String get infoGuideMfa => 'Dışişleri Bakanlığı';

  @override
  String get infoGuidePhonesSub => 'Suudi acil hatları, Türk temsilcilikleri';

  @override
  String get infoGuidePhonesTitle => 'Önemli Telefonlar';

  @override
  String get infoGuideRiyadhEmbassy => 'T.C. Riyad Büyükelçiliği';

  @override
  String get infoGuideRulesWarning =>
      'Suudi Arabistan vize, izin ve sağlık kurallarını sık günceller. Bu sayfadaki kurallar Kasım 2026 itibarıyla resmî kaynaklardan derlenmiştir. Kafilenizin ve Diyanet\'in duyurularını esas alın.';

  @override
  String get infoGuideSaudiEmergency => 'Suudi Arabistan acil';

  @override
  String get infoGuideSources =>
      'Kaynaklar: Suudi Sağlık Bakanlığı (moh.gov.sa), visa.visitsaudi.com, Nusuk, Diyanet İşleri Başkanlığı, Haremeyn Hızlı Treni (sar.hhr.sa), T.C. Dışişleri Bakanlığı (mfa.gov.tr).';

  @override
  String get infoHotelsFootnoteMecca =>
      'Mesafeler Kâbe\'ye kuş uçuşudur; yürüme süresi kalabalığa ve girilen kapıya göre değişir. Konumlar OpenStreetMap\'ten alınmıştır. Fiyat ve müsaitlik için otelle iletişime geçin.';

  @override
  String get infoHotelsFootnoteMedina =>
      'Mesafeler Mescid-i Nebevî\'ye kuş uçuşudur; yürüme süresi kalabalığa ve girilen kapıya göre değişir. Konumlar OpenStreetMap\'ten alınmıştır. Fiyat ve müsaitlik için otelle iletişime geçin.';

  @override
  String get infoIhramHeader =>
      'İhrama girdikten sonra ihramdan çıkıncaya kadar aşağıdaki davranışlar yasaktır.';

  @override
  String get infoKaaba => 'Kâbe';

  @override
  String get infoMapCouldNotOpen => 'Harita açılamadı.';

  @override
  String get infoMapOpenFailed => 'Harita uygulaması açılamadı.';

  @override
  String get infoMeccaKaaba => 'Mekke (Kâbe)';

  @override
  String get infoMiqatAlignNote =>
      'Mikat noktasının kendisinde değil, hizasında da ihrama girilebilir. Mesafeler yola göre değiştiği için kaynaklarda farklı rakamlar geçebilir.';

  @override
  String infoMiqatAsCrowFlies(String distance) {
    return 'Kuş uçuşu $distance';
  }

  @override
  String get infoMiqatFive => 'Beş mikat';

  @override
  String get infoMiqatFlightNote =>
      'Türkiye\'den uçakla doğrudan Cidde\'ye gidenler, uçakta mikat hizasına gelmeden ihrama girer. Erkekler ihram örtülerini uçağa binmeden giyebilir; niyet ve telbiye, rehberin/kabin ekibinin duyurusuyla mikat hizasından önce yapılır.';

  @override
  String get infoMiqatForWhom => 'Kimler için:';

  @override
  String infoMiqatRoad(String distance) {
    return 'Yol: $distance';
  }

  @override
  String get infoMiqatSource =>
      'Kaynak: TDV İslâm Ansiklopedisi, \"Mîkāt\" maddesi. Konumlar: OpenStreetMap.';

  @override
  String get infoNeedAdd => 'Ekle';

  @override
  String get infoNeedAddItem => 'Madde ekle';

  @override
  String get infoNeedAddYourOwn => 'Kendi maddenizi ekleyin';

  @override
  String get infoNeedAllReady => 'Bavulunuz hazır. Hayırlı yolculuklar!';

  @override
  String get infoNeedCategory => 'Kategori';

  @override
  String get infoNeedDisclaimer =>
      'Bu liste genel bir öneridir; kafilenizin ve Diyanet\'in güncel duyurularını da kontrol edin.';

  @override
  String get infoNeedEmpty =>
      'Henüz madde yok. \"Madde ekle\" ile ekleyebilirsiniz.';

  @override
  String infoNeedItemDeleted(String item) {
    return '\"$item\" silindi.';
  }

  @override
  String get infoNeedItemExample => 'Ör. Yedek gözlük';

  @override
  String get infoNeedItemName => 'Madde adı';

  @override
  String get infoNeedListTitle => 'İhtiyaç Listesi';

  @override
  String get infoNeedMyItem => 'Benim maddem';

  @override
  String get infoNeedOther => 'Diğer';

  @override
  String infoNeedPercent(int percent) {
    return '%$percent';
  }

  @override
  String infoNeedReadyCount(int done, int total) {
    return '$done/$total hazır';
  }

  @override
  String get infoNeedReset => 'Sıfırla';

  @override
  String get infoNeedResetAll => 'Hepsini sıfırla';

  @override
  String get infoNeedResetBody =>
      'Tüm işaretler kaldırılacak. Eklediğiniz maddeler de silinsin mi?';

  @override
  String get infoNeedResetChecksOnly => 'Yalnız işaretler';

  @override
  String get infoNeedResetTitle => 'Listeyi sıfırla';

  @override
  String get infoOpenInGoogleMaps => 'Google Maps\'te aç';

  @override
  String get infoPedometerNextVersion =>
      'Adım sayar bir sonraki sürümde eklenecek.';

  @override
  String get infoPlacesMeccaTitle => 'Mekke Gezilecek Yerler';

  @override
  String get infoPlacesMedinaTitle => 'Medine Gezilecek Yerler';

  @override
  String get infoProphetsMosque => 'Mescid-i Nebevî';

  @override
  String get infoShowAll => 'Hepsini göster';

  @override
  String get infoShowOnMap => 'Haritada göster';

  @override
  String get infoTapForDetails => 'Detaylar için tıklayınız.';

  @override
  String get infoTechContactUs => 'Bize Ulaşın';

  @override
  String get infoTechContactUsBody =>
      'Uygulamayla ilgili her türlü sorun ve öneriniz için bize ulaşabilirsiniz.';

  @override
  String get infoTechEmail1 => 'Birinci E-Posta';

  @override
  String get infoTechEmail2 => 'İkinci E-Posta';

  @override
  String get infoTechEmailFailed => 'Email açılamadı';

  @override
  String get infoTechEmails => 'E-Posta Adresleri';

  @override
  String get infoTechPhone1 => 'Birinci Telefon';

  @override
  String get infoTechPhone2 => 'İkinci Telefon';

  @override
  String get infoTechPhoneFailed => 'Telefon açılamadı';

  @override
  String get infoTechPhones => 'Telefon Numaraları';

  @override
  String get infoTechTitle => 'Teknik Servis';

  @override
  String get infoTechWhatsAppFailed => 'WhatsApp açılamadı';

  @override
  String infoWalkHours(String hours) {
    return '$hours saat yürüme';
  }

  @override
  String infoWalkMinutes(int minutes) {
    return '$minutes dk yürüme';
  }

  @override
  String get kibleArMode => 'AR Modu';

  @override
  String get kibleArSoon => 'AR modu yakında eklenecek';

  @override
  String get kibleCalibrate => 'Kalibre Et';

  @override
  String get kibleCalibrateStep1 =>
      'Telefonunuzu elinize alın, metal eşyalardan ve mıknatıslardan uzaklaşın.';

  @override
  String get kibleCalibrateStep2 =>
      'Telefonu havada yan yatmış bir 8 çizerek birkaç kez hareket ettirin.';

  @override
  String get kibleCalibrateStep3 =>
      'Hareket ederken telefonu bileğinizden de çevirin.';

  @override
  String get kibleCalibrateTitle => 'Pusulayı Kalibre Et';

  @override
  String get kibleCalibrationHint =>
      'telefonunuzu havada 8 çizerek hareket ettirin';

  @override
  String get kibleCalibrationNeeded => 'Pusula kalibrasyonu gerekli: ';

  @override
  String get kibleCompassE => 'D';

  @override
  String get kibleCompassN => 'K';

  @override
  String get kibleCompassS => 'G';

  @override
  String get kibleCompassW => 'B';

  @override
  String get kibleDirE => 'Doğu';

  @override
  String get kibleDirN => 'Kuzey';

  @override
  String get kibleDirNE => 'Kuzey Doğu';

  @override
  String get kibleDirNW => 'Kuzey Batı';

  @override
  String get kibleDirS => 'Güney';

  @override
  String get kibleDirSE => 'Güney Doğu';

  @override
  String get kibleDirSW => 'Güney Batı';

  @override
  String get kibleDirW => 'Batı';

  @override
  String kibleDistanceKm(String value) {
    return '$value km';
  }

  @override
  String kibleDistanceM(String value) {
    return '$value m';
  }

  @override
  String get kibleDistanceTitle => 'Kıbleye Uzaklığınız';

  @override
  String get kibleDistanceToKaaba => 'Kâbe\'ye uzaklık';

  @override
  String get kibleFacingQibla => 'Kıble yönündesiniz';

  @override
  String get kibleGettingLocation => 'Konum alınıyor…';

  @override
  String get kibleHelp => 'Yardım';

  @override
  String get kibleHelpText =>
      'Telefonunuzu yere paralel tutun ve kendi etrafınızda yavaşça dönün. İbre tam yukarıyı gösterdiğinde ve Kâbe rozeti üstteki işaretle hizalandığında kıbleye dönmüş olursunuz; telefon hafifçe titrer.\n\nMetal eşyalar, mıknatıslı kılıflar ve elektronik cihazlar pusulayı etkileyebilir. Sapma görürseniz \"Kalibre Et\" adımlarını uygulayın.\n\nKıble açısı gerçek kuzeye göre hesaplanır.';

  @override
  String get kibleLocationFailedText =>
      'Konumunuz alınamadı. Lütfen tekrar deneyin.';

  @override
  String get kibleLocationFailedTitle => 'Konum alınamadı';

  @override
  String get kibleLocationNotYet => 'Konum henüz alınamadı';

  @override
  String get kibleMeccaSaudi => 'Mekke, Suudi Arabistan';

  @override
  String get kibleNoCompass => 'Cihazınızda pusula sensörü bulunamadı';

  @override
  String get kibleOpenSettings => 'Ayarları aç';

  @override
  String get kiblePermissionDeniedForeverText =>
      'Kıble yönü ve Kâbe\'ye uzaklık, bulunduğunuz konuma göre hesaplanır. Konum izni kalıcı olarak reddedildi; lütfen ayarlardan izin verin.';

  @override
  String get kiblePermissionDeniedText =>
      'Kıble yönü ve Kâbe\'ye uzaklık, bulunduğunuz konuma göre hesaplanır. Konumunuz yalnızca bu hesap için kullanılır.';

  @override
  String get kiblePermissionTitle => 'Konum izni gerekli';

  @override
  String get kiblePreparingCompass => 'Pusula hazırlanıyor…';

  @override
  String kibleQiblaDegrees(int degrees) {
    return 'Kıble $degrees°';
  }

  @override
  String get kibleQiblaUnknown => 'Kıble —';

  @override
  String get kibleRefreshLocation => 'Konumu yenile';

  @override
  String get kibleRouteTitle => 'Kıble Rotası';

  @override
  String get kibleServiceOffText =>
      'Kıble yönünü hesaplayabilmek için cihazınızın konum servisini açın.';

  @override
  String get kibleServiceOffTitle => 'Konum servisi kapalı';

  @override
  String get kibleShowMyLocation => 'Konumumu Göster';

  @override
  String get kibleSoon => 'Yakında';

  @override
  String get kibleSubtitle => 'Kıbleye yönelin ve kalbinizi huzura çevirin.';

  @override
  String get kibleTipLabel => 'İpucu: ';

  @override
  String get kibleTipText =>
      'Cihazınızı düz bir zemine yerleştirerek daha doğru sonuçlar alabilirsiniz.';

  @override
  String get kibleTitle => 'Kıble Yönü';

  @override
  String get kibleTrueNorthNote => '(gerçek kuzeye göre, saat yönünde)';

  @override
  String get kibleTryAgain => 'Tekrar dene';

  @override
  String kibleTurnLeft(int degrees) {
    return 'Telefonu $degrees° sola çevirin';
  }

  @override
  String kibleTurnRight(int degrees) {
    return 'Telefonu $degrees° sağa çevirin';
  }

  @override
  String get quranAddBookmark => 'Yer işareti ekle';

  @override
  String quranAgoDays(int count) {
    return '$count gün önce';
  }

  @override
  String quranAgoHours(int count) {
    return '$count saat önce';
  }

  @override
  String get quranAgoJustNow => 'Az önce';

  @override
  String quranAgoMinutes(int count) {
    return '$count dk önce';
  }

  @override
  String get quranArabicFontSize => 'Arapça yazı boyutu';

  @override
  String get quranAyahActions => 'Ayet seçenekleri';

  @override
  String quranAyahBookmarkAdded(String ref) {
    return '$ref yer işaretlerine eklendi';
  }

  @override
  String quranAyahBookmarkRemoved(String ref) {
    return '$ref yer işaretlerinden çıkarıldı';
  }

  @override
  String quranAyahCount(int count) {
    return '$count ayet';
  }

  @override
  String get quranAyahsLabel => 'Ayetler';

  @override
  String get quranBack => 'Geri';

  @override
  String get quranBookmarkAyah => 'Ayeti işaretle';

  @override
  String get quranBookmarkPage => 'Sayfaya yer işareti koy';

  @override
  String get quranClear => 'Temizle';

  @override
  String get quranContinueReading => 'Okumaya Devam Et';

  @override
  String get quranCopied => 'Ayet panoya kopyalandı';

  @override
  String get quranCopy => 'Kopyala';

  @override
  String get quranDayMode => 'Gündüz modu';

  @override
  String get quranFilter => 'Filtrele';

  @override
  String get quranFilterAll => 'Tüm sureler';

  @override
  String get quranFilterMeccan => 'Mekki sureler';

  @override
  String get quranFilterMedinan => 'Medeni sureler';

  @override
  String get quranGo => 'Git';

  @override
  String get quranGoToPage => 'Sayfaya git';

  @override
  String quranJuz(int number) {
    final intl.NumberFormat numberNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String numberString = numberNumberFormat.format(number);

    return '$numberString. Cüz';
  }

  @override
  String quranJuzSubtitle(String surah, int ayah, int page) {
    return '$surah, $ayah. ayet • Sayfa $page';
  }

  @override
  String get quranLast10 => 'Son 10 kayıt';

  @override
  String get quranListen => 'Dinle';

  @override
  String get quranListenAyah => 'Bu ayeti dinle';

  @override
  String get quranListened => 'Dinlendi';

  @override
  String get quranMeal => 'Meal';

  @override
  String get quranMealFailed => 'Meal alınamadı. Daha sonra tekrar deneyin.';

  @override
  String get quranMealOffline =>
      'Meal için internet bağlantısı gerekli. Bağlantınızı kontrol edip tekrar deneyin.';

  @override
  String quranMealSource(String source) {
    return 'Kaynak: $source';
  }

  @override
  String get quranMeccanAdj => 'Mekki';

  @override
  String get quranMedinanAdj => 'Medeni';

  @override
  String get quranNextSurah => 'Sonraki sure';

  @override
  String get quranNightMode => 'Gece modu';

  @override
  String get quranNoAyahAudio => 'Bu imamın ayet kaydı yok';

  @override
  String get quranNoBookmarks => 'Yer işareti yok';

  @override
  String get quranNoBookmarksHint =>
      'Sure listesindeki ya da okuyucudaki yer işareti simgesine dokunarak ekleyebilirsiniz.';

  @override
  String get quranNoHistory => 'Henüz kayıt yok';

  @override
  String get quranNoHistoryHint =>
      'Okuduğunuz ve dinlediğiniz sureler burada görünecek.';

  @override
  String get quranNoResults => 'Sonuç bulunamadı';

  @override
  String get quranNoResultsHint =>
      'Sure adını (ör. Yasin) ya da numarasını (ör. 36 veya 2:255) yazmayı deneyin.';

  @override
  String quranPage(int page) {
    return 'Sayfa $page';
  }

  @override
  String quranPageBookmarkAdded(int page) {
    return 'Sayfa $page yer işaretlerine eklendi';
  }

  @override
  String quranPageBookmarkRemoved(int page) {
    return 'Sayfa $page yer işaretlerinden çıkarıldı';
  }

  @override
  String quranPageJuz(int page, int juz) {
    final intl.NumberFormat juzNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String juzString = juzNumberFormat.format(juz);

    return 'Sayfa $page • $juzString. Cüz';
  }

  @override
  String quranPageOfTotalJuz(int page, int total, int juz) {
    final intl.NumberFormat juzNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String juzString = juzNumberFormat.format(juz);

    return 'Sayfa $page / $total • $juzString. Cüz';
  }

  @override
  String get quranPagesLabel => 'Sayfalar';

  @override
  String quranPercent(int value) {
    return '%$value';
  }

  @override
  String get quranPlaceMeccan => 'Mekke';

  @override
  String get quranPlaceMedinan => 'Medine';

  @override
  String get quranPlayFailed => 'Ses çalınamadı. Lütfen tekrar deneyin.';

  @override
  String get quranPreparing => 'Mushaf hazırlanıyor…';

  @override
  String get quranPrevSurah => 'Önceki sure';

  @override
  String get quranReciterSelection => 'İmam seçimi';

  @override
  String get quranReciterStyleHafsMurattal => 'Hafs • Murattal';

  @override
  String get quranRemoveBookmark => 'Yer işaretini kaldır';

  @override
  String get quranSearchHint => 'Sure veya ayet ara';

  @override
  String get quranSettings => 'Ayarlar';

  @override
  String get quranStartReading => 'Okumaya Başla';

  @override
  String get quranStop => 'Durdur';

  @override
  String get quranStopAyah => 'Durdur';

  @override
  String get quranStreamingNote =>
      'Sesli okumalar internetten akış olarak çalınır.';

  @override
  String get quranSubtitle => 'Huzur bulmak için oku, anlamak için yaşa.';

  @override
  String quranSurahBookmarkAdded(String surah) {
    return '$surah yer işaretlerine eklendi';
  }

  @override
  String quranSurahBookmarkRemoved(String surah) {
    return '$surah yer işaretlerinden çıkarıldı';
  }

  @override
  String quranSurahCount(int count) {
    return '$count sure';
  }

  @override
  String quranSurahTitle(String name) {
    return '$name Suresi';
  }

  @override
  String get quranTabBookmarks => 'Yer İşaretleri';

  @override
  String get quranTabJuz => 'Cüzler';

  @override
  String get quranTabRecents => 'Son Okunanlar';

  @override
  String get quranTabSurahs => 'Sureler';

  @override
  String get quranTextLoadFailed => 'Kur\'an metni yüklenemedi.';

  @override
  String get quranTextSource => 'Metin kaynağı';

  @override
  String get quranTextSourceBody =>
      'Kur\'an metni: Tanzil Projesi (tanzil.net), Hafs rivayeti, Osmanlı hattı. Sayfa düzeni: 604 sayfalık Medine Mushafı. Yazı tipi: Amiri Quran (SIL Open Font License). Mealler: quran.com.';

  @override
  String get quranTitle => 'Kur\'an-ı Kerim';

  @override
  String get rolesAgencyAdmin => 'Acente Admini';

  @override
  String get rolesFinance => 'Muhasebe';

  @override
  String get rolesGuest => 'Misafir';

  @override
  String get rolesManager => 'Yönetici';

  @override
  String get rolesManagerDesc => 'Tüm acenteler';

  @override
  String get rolesMerchant => 'Esnaf';

  @override
  String get rolesNoAccess => 'Bu bölüme erişim yetkiniz yok';

  @override
  String get rolesSelectAgencyFirst => 'Önce bir acente seçin';

  @override
  String get rolesStaff => 'Yetkililer';

  @override
  String get rolesSuperAdmin => 'Süper Admin';

  @override
  String get rolesSupport => 'Destek';

  @override
  String get shopsAbout => 'Hakkında';

  @override
  String shopsActivated(String name) {
    return '$name aktif edildi.';
  }

  @override
  String get shopsActive => 'Aktif';

  @override
  String get shopsActiveSub => 'Pasif dükkanlar misafirlere görünmez.';

  @override
  String get shopsAdd => 'Dükkan Ekle';

  @override
  String get shopsAdded => 'Dükkan eklendi.';

  @override
  String get shopsAddress => 'Adres';

  @override
  String get shopsAdminLoadFailed => 'Dükkanlar yüklenemedi.';

  @override
  String get shopsAgency => 'Acente';

  @override
  String get shopsAll => 'Tümü';

  @override
  String get shopsAllAgencies => 'Tüm acenteler';

  @override
  String get shopsCall => 'Ara';

  @override
  String get shopsCamera => 'Kamera';

  @override
  String shopsCameraFailed(String code) {
    return 'Kamera açılamadı. Kamera iznini kontrol edin.\n($code)';
  }

  @override
  String get shopsCatBooks => 'Kitap & Tesbih';

  @override
  String get shopsCatDatesFood => 'Hurma & Gıda';

  @override
  String get shopsCatGifts => 'Hediyelik';

  @override
  String get shopsCatJeweler => 'Kuyumcu';

  @override
  String get shopsCatOther => 'Diğer';

  @override
  String get shopsCatPerfume => 'Parfüm & Misk';

  @override
  String get shopsCatRestaurant => 'Restoran & Kafe';

  @override
  String get shopsCatTextile => 'Tekstil & İhram';

  @override
  String get shopsCategory => 'Kategori';

  @override
  String get shopsCity => 'Şehir';

  @override
  String get shopsCityJeddah => 'Cidde';

  @override
  String get shopsCityOther => 'Diğer';

  @override
  String get shopsCodeGuestTitle => 'Umre Rehberim Misafiri';

  @override
  String get shopsCodeShowAtCheckout =>
      'Lütfen bu ekranı kasada esnafa gösterin.';

  @override
  String get shopsCodeVerifyLater =>
      'Esnaf paneli hazır olduğunda doğrulanacak.';

  @override
  String get shopsContactSection => 'İletişim';

  @override
  String shopsDeactivated(String name) {
    return '$name pasif yapıldı.';
  }

  @override
  String shopsDeleteConfirm(String name) {
    return '\"$name\" silinsin mi? Bu işlem geri alınamaz.';
  }

  @override
  String shopsDeleteFailed(String error) {
    return 'Silinemedi: $error';
  }

  @override
  String get shopsDeleteTitle => 'Dükkanı sil';

  @override
  String get shopsDeleted => 'Dükkan silindi.';

  @override
  String get shopsDescription => 'Açıklama';

  @override
  String get shopsDetailsSection => 'Dükkan Bilgileri';

  @override
  String get shopsDirections => 'Yol Tarifi';

  @override
  String get shopsDiscountBadge => 'İNDİRİM';

  @override
  String get shopsDiscountNotNumber => 'Bir sayı girin (0-100)';

  @override
  String get shopsDiscountNote => 'İndirim notu';

  @override
  String get shopsDiscountNoteHint => 'ör. Nakit alışverişte geçerli';

  @override
  String shopsDiscountPercent(int percent) {
    return '%$percent İNDİRİM';
  }

  @override
  String get shopsDiscountPercentHint => 'ör. 15';

  @override
  String shopsDiscountPercentLower(int percent) {
    return '%$percent indirim';
  }

  @override
  String get shopsDiscountPercentRequired => 'İndirim yüzdesi *';

  @override
  String get shopsDiscountRange => '0 ile 100 arasında olmalı';

  @override
  String get shopsDiscountSection => 'İndirim';

  @override
  String get shopsEdit => 'Dükkanı Düzenle';

  @override
  String get shopsEmpty => 'Henüz anlaşmalı dükkan eklenmedi.';

  @override
  String get shopsEmptyAdminHint => 'Sağ alttaki \"Dükkan Ekle\" ile başlayın.';

  @override
  String get shopsFixFields => 'Lütfen işaretli alanları düzeltin.';

  @override
  String get shopsForAllAgencies => 'Tüm acentelere açık';

  @override
  String get shopsForAllAgenciesSub =>
      'Bütün acentelerin misafirleri bu dükkanı görür.';

  @override
  String get shopsGallery => 'Galeri';

  @override
  String get shopsGuest => 'Misafir';

  @override
  String shopsImagePickFailed(String error) {
    return 'Görsel seçilemedi: $error';
  }

  @override
  String get shopsInfo => 'Bilgiler';

  @override
  String get shopsInfoBanner =>
      'Bu dükkanlarda Umre Rehberim misafiri olduğunuzu QR kodla gösterip indirim alabilirsiniz.';

  @override
  String get shopsInvalid => 'Geçersiz';

  @override
  String get shopsLatLngBoth =>
      'Enlem ve boylamın ikisini de girin ya da ikisini de boş bırakın.';

  @override
  String get shopsLatitude => 'Enlem';

  @override
  String get shopsLinkOpenFailed => 'Bağlantı açılamadı.';

  @override
  String get shopsListView => 'Liste';

  @override
  String get shopsLoadFailed =>
      'Dükkanlar yüklenemedi. İnternet bağlantınızı kontrol edin.';

  @override
  String get shopsLocFailed => 'Konum alınamadı.';

  @override
  String get shopsLocPermissionDenied => 'Konum izni verilmedi.';

  @override
  String get shopsLocServiceOff => 'Konum servisi kapalı.';

  @override
  String get shopsLocation => 'Konum';

  @override
  String get shopsLogo => 'Logo';

  @override
  String shopsLogoAdded(int size) {
    return 'Logo eklendi ($size KB).';
  }

  @override
  String shopsLogoTooLarge(int size) {
    return 'Logo çok büyük ($size KB). Daha küçük bir görsel seçin.';
  }

  @override
  String get shopsLongitude => 'Boylam';

  @override
  String get shopsMapView => 'Harita';

  @override
  String shopsMerchantCode(String code) {
    return 'Esnaf kodu: $code  (esnaf paneli için)';
  }

  @override
  String shopsMissingLocation(int count) {
    return '$count dükkanın konumu girilmemiş, haritada görünmüyor.';
  }

  @override
  String get shopsNameMissing => 'Ad gerekli';

  @override
  String get shopsNameRequired => 'Dükkan adı *';

  @override
  String get shopsNoMatch => 'Bu filtreye uygun dükkan yok.';

  @override
  String shopsOrderSaveFailed(String error) {
    return 'Sıralama kaydedilemedi: $error';
  }

  @override
  String shopsPercent(int percent) {
    return '%$percent';
  }

  @override
  String get shopsPhone => 'Telefon';

  @override
  String get shopsPickerHint =>
      'Haritada dükkanın yerine dokunarak iğne bırakın.';

  @override
  String get shopsPublishSection => 'Yayın';

  @override
  String get shopsQrExplain =>
      'Dükkanın \"bizden geldi\" kodu. Misafir indirim ekranında bu QR\'ı gösterir. Boş bırakılırsa misafire özel doğrulama kodu üretilir.';

  @override
  String get shopsQrManual => 'Elle gir (metin ya da bağlantı)';

  @override
  String get shopsQrScanHint => 'Dükkanın QR kodunu çerçevenin içine getirin.';

  @override
  String get shopsQrScanTitle => 'QR Kodu Okut';

  @override
  String get shopsQrScanWithCamera => 'Kameradan okut';

  @override
  String get shopsQrScanned => 'QR kodu okundu.';

  @override
  String get shopsQrSection => 'QR Kodu';

  @override
  String get shopsRemove => 'Kaldır';

  @override
  String get shopsRemoveLocation => 'Konumu kaldır';

  @override
  String get shopsReorderHint =>
      'Sıralamak için sağdaki tutamaçtan sürükleyin.';

  @override
  String shopsSaveFailed(String error) {
    return 'Kaydedilemedi: $error';
  }

  @override
  String get shopsSaving => 'Kaydediliyor...';

  @override
  String get shopsSearchHint => 'Dükkan ara';

  @override
  String get shopsSelectAgency =>
      'Bir acente seçin ya da \"Tüm acentelere açık\" seçeneğini açın.';

  @override
  String get shopsSharedSection => 'Tüm acentelere açık (süper admin yönetir)';

  @override
  String get shopsShowMyCode => 'İndirim Kodumu Göster';

  @override
  String get shopsSpecialPrice => 'ÖZEL FİYAT';

  @override
  String get shopsSpecialPriceLower => 'Özel fiyat';

  @override
  String get shopsTitle => 'Anlaşmalı Dükkanlar';

  @override
  String get shopsTorch => 'Fener';

  @override
  String shopsUpdateFailed(String error) {
    return 'Güncellenemedi: $error';
  }

  @override
  String get shopsUpdated => 'Dükkan güncellendi.';

  @override
  String get shopsUseMyLocation => 'Şu anki konumumu kullan';

  @override
  String get shopsWhatsappHint => 'Ülke koduyla, ör. 9665xxxxxxxx';

  @override
  String get shopsWorkingHours => 'Çalışma saatleri';

  @override
  String get shopsWorkingHoursHint => 'ör. 09:00 - 23:00';

  @override
  String simApproximate(String place) {
    return '$place (yaklaşık)';
  }

  @override
  String get simAutoPlay => 'Otomatik oynat';

  @override
  String get simCircuit => 'Şavt';

  @override
  String get simContinue => 'Devam et';

  @override
  String get simFirstThreeRaml => 'İlk 3 şavt: erkekler remel yapar';

  @override
  String get simIstilam => 'İstilam';

  @override
  String get simNext => 'Sonraki';

  @override
  String get simNormalWalk => 'Normal yürüyüş';

  @override
  String get simPause => 'Duraklat';

  @override
  String get simPrayBehindMaqam =>
      'Makam-ı İbrahim arkasında 2 rekât tavaf namazı kılınır.';

  @override
  String get simPrevious => 'Önceki';

  @override
  String get simReplay => 'Baştan oynat';

  @override
  String get simReset => 'Sıfırla';

  @override
  String get simRouteTitle => 'Umre Rota Simülasyonu';

  @override
  String get simSaiDuas => 'Sa\'y Duaları';

  @override
  String simSaiLap(int lap) {
    return 'Sa\'y: $lap. şavt';
  }

  @override
  String get simSevenCircuitsDone => '7 şavt tamamlandı';

  @override
  String simSpeed(String speed) {
    return '${speed}x';
  }

  @override
  String get simStart => 'Başlat';

  @override
  String get simStartOver => 'Baştan başlat';

  @override
  String simStepOf(int step, int total) {
    return 'Adım $step/$total';
  }

  @override
  String get simStop => 'Durdur';

  @override
  String get simSupplicationToRecite => 'Okunacak dua';

  @override
  String get simTawafCompleted => 'Tavaf tamamlandı';

  @override
  String get simTawafDuas => 'Tavaf Duaları';

  @override
  String get simTawafEssentials => 'Tavafta bilinmesi gerekenler';

  @override
  String get simTawafSource =>
      'Kaynak: Diyanet İşleri Başkanlığı hac ve umre yayınları; Bakara 2/201.';

  @override
  String get simThingsToNote => 'Dikkat edilecekler';

  @override
  String get simWhatToDo => 'Ne yapılır?';

  @override
  String get telsizAllAgency => 'Tüm acente';

  @override
  String get telsizBroadcastGroup => 'Yayın yapılacak grup';

  @override
  String get telsizCheckInternet => 'İnternet bağlantınızı kontrol edin.';

  @override
  String get telsizConnectFailed =>
      'Bağlantı kurulamadı. Lütfen tekrar deneyin.';

  @override
  String get telsizConnecting => 'Bağlanıyor…';

  @override
  String get telsizConnectionLost => 'Bağlantı koptu, yeniden bağlanıyor…';

  @override
  String get telsizDuplicateIdentity =>
      'Bu hesapla başka bir cihazdan bağlanıldı.';

  @override
  String get telsizDuration => 'Süre';

  @override
  String get telsizEnd => 'Bitir';

  @override
  String get telsizEndBroadcast => 'Yayını Bitir';

  @override
  String get telsizEndBroadcastConfirm =>
      'Canlı yayın sona erecek. Emin misiniz?';

  @override
  String get telsizEndBroadcastTitle => 'Yayını bitir';

  @override
  String get telsizEnded => 'Yayın sona erdi';

  @override
  String get telsizGuest => 'Misafir';

  @override
  String get telsizGuide => 'Rehber';

  @override
  String get telsizGuideHint =>
      'Ekranı kapatsanız da yayın sürer. Yayını bitirmeyi unutmayın; misafirleriniz yalnızca dinler, konuşamaz.';

  @override
  String get telsizGuideNotLive => 'Rehberiniz şu an yayında değil';

  @override
  String get telsizGuideNotLiveBody =>
      'Rehberiniz telsiz yayını başlattığında burada görünecek. Gezilerde ve kalabalık alanlarda rehberinizi buradan canlı dinleyebilirsiniz.';

  @override
  String get telsizGuideVoice => 'Rehberin sesi';

  @override
  String get telsizListen => 'Dinle';

  @override
  String get telsizListenerHint =>
      'Kulaklık takmanız önerilir. Ekran kapalıyken de dinlemeye devam edebilirsiniz.';

  @override
  String get telsizListeners => 'Dinleyici';

  @override
  String get telsizListening => 'Dinleniyor';

  @override
  String get telsizLiveBadge => 'CANLI';

  @override
  String get telsizLiveNow => 'Canlı yayında';

  @override
  String get telsizLoginRequired => 'Telsiz için giriş yapmalısınız.';

  @override
  String get telsizMicLevel => 'Mikrofon seviyesi';

  @override
  String get telsizMicPermanentlyDenied =>
      'Mikrofon izni kapalı. Ayarlardan mikrofon iznini açın.';

  @override
  String get telsizMicRequired => 'Yayın için mikrofon izni gerekli.';

  @override
  String get telsizMute => 'Sesi Kapat';

  @override
  String get telsizNoAgency => 'Acente bilgisi bulunamadı.';

  @override
  String get telsizNoAgencyHint =>
      'Telsiz, acentenize bağlı hesaplarda kullanılabilir.';

  @override
  String get telsizNoInternet =>
      'İnternet bağlantısı yok veya sunucuya ulaşılamıyor.';

  @override
  String get telsizNoPermission => 'Telsiz için yetkiniz yok.';

  @override
  String get telsizNotConfiguredBody =>
      'Canlı ses sunucusu bilgileri henüz girilmedi. Lütfen teknik destek ile iletişime geçin.';

  @override
  String get telsizNotConfiguredError => 'Telsiz yapılandırılmadı.';

  @override
  String get telsizNotConfiguredTitle => 'Telsiz yapılandırılmadı';

  @override
  String get telsizNotConnected => 'Bağlı değil';

  @override
  String get telsizNotifBroadcastText =>
      'Misafirleriniz sizi dinliyor. Bitirmek için uygulamaya dönün.';

  @override
  String get telsizNotifBroadcastTitle => 'Telsiz yayında – Rehber';

  @override
  String get telsizNotifGuestsListening => 'Misafirleriniz sizi dinliyor.';

  @override
  String telsizNotifListeningText(String name) {
    return '$name yayını. Kapatmak için uygulamaya dönün.';
  }

  @override
  String get telsizNotifListeningTitle => 'Telsiz dinleniyor';

  @override
  String get telsizNotifMicOff => 'Mikrofon kapalı.';

  @override
  String get telsizOffAir => 'Yayında değilsiniz';

  @override
  String get telsizOnAir => 'Yayındasınız';

  @override
  String get telsizOnAirMuted => 'Yayında – mikrofon kapalı';

  @override
  String get telsizReconnecting => 'Bağlantı yeniden kuruluyor…';

  @override
  String telsizServerDenied(int code) {
    return 'Telsiz sunucusundan izin alınamadı ($code).';
  }

  @override
  String get telsizStartBroadcast => 'Yayını Başlat';

  @override
  String get telsizStatusError => 'Yayın bilgisi alınamadı.';

  @override
  String get telsizStatusSaveDenied => 'Yayın durumu kaydedilemedi: yetki yok.';

  @override
  String get telsizStop => 'Durdur';

  @override
  String get telsizTitle => 'Telsiz';

  @override
  String get telsizToAllAgency => 'Tüm acenteye yayın';

  @override
  String get telsizToYourTrip => 'Seferinize yayın';

  @override
  String get telsizTrip => 'Sefer';

  @override
  String get telsizUnmute => 'Sesi Aç';

  @override
  String get telsizVolumeKeysHint =>
      'Telefonunuzun ses tuşlarını da kullanabilirsiniz.';

  @override
  String get telsizWaitingGuide => 'Bağlandı, rehberin sesi bekleniyor…';
}

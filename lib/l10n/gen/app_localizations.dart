import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_tr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('tr'),
  ];

  /// No description provided for @adminActive.
  ///
  /// In tr, this message translates to:
  /// **'Aktif'**
  String get adminActive;

  /// No description provided for @adminAdd.
  ///
  /// In tr, this message translates to:
  /// **'Ekle'**
  String get adminAdd;

  /// No description provided for @adminAddress.
  ///
  /// In tr, this message translates to:
  /// **'Adres'**
  String get adminAddress;

  /// No description provided for @adminAgencies.
  ///
  /// In tr, this message translates to:
  /// **'Acentalar'**
  String get adminAgencies;

  /// No description provided for @adminAgencyActive.
  ///
  /// In tr, this message translates to:
  /// **'Aktif Acenta'**
  String get adminAgencyActive;

  /// No description provided for @adminAgencyAddTitle.
  ///
  /// In tr, this message translates to:
  /// **'Yeni Acenta Ekle'**
  String get adminAgencyAddTitle;

  /// No description provided for @adminAgencyCreateFailed.
  ///
  /// In tr, this message translates to:
  /// **'Acenta oluşturulamadı'**
  String get adminAgencyCreateFailed;

  /// No description provided for @adminAgencyCreated.
  ///
  /// In tr, this message translates to:
  /// **'Acenta oluşturuldu'**
  String get adminAgencyCreated;

  /// No description provided for @adminAgencyDelete.
  ///
  /// In tr, this message translates to:
  /// **'Acentayı Sil'**
  String get adminAgencyDelete;

  /// No description provided for @adminAgencyDeleteConfirm.
  ///
  /// In tr, this message translates to:
  /// **'\"{name}\" acentasını silmek istediğinize emin misiniz?\n\nBu işlem geri alınamaz ve acentaya bağlı veriler etkilenebilir.'**
  String adminAgencyDeleteConfirm(String name);

  /// No description provided for @adminAgencyDeleteFailed.
  ///
  /// In tr, this message translates to:
  /// **'Acenta silinemedi'**
  String get adminAgencyDeleteFailed;

  /// No description provided for @adminAgencyDeleted.
  ///
  /// In tr, this message translates to:
  /// **'Acenta silindi'**
  String get adminAgencyDeleted;

  /// No description provided for @adminAgencyDetail.
  ///
  /// In tr, this message translates to:
  /// **'Acenta Detayı'**
  String get adminAgencyDetail;

  /// No description provided for @adminAgencyEdit.
  ///
  /// In tr, this message translates to:
  /// **'Acenta Düzenle'**
  String get adminAgencyEdit;

  /// No description provided for @adminAgencyEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Henüz acenta eklenmemiş'**
  String get adminAgencyEmpty;

  /// No description provided for @adminAgencyLabel.
  ///
  /// In tr, this message translates to:
  /// **'Acente: {name}'**
  String adminAgencyLabel(String name);

  /// No description provided for @adminAgencyLoadFailed.
  ///
  /// In tr, this message translates to:
  /// **'Acentalar yüklenemedi'**
  String get adminAgencyLoadFailed;

  /// No description provided for @adminAgencyNameMissing.
  ///
  /// In tr, this message translates to:
  /// **'Acenta adı gerekli'**
  String get adminAgencyNameMissing;

  /// No description provided for @adminAgencyNameRequired.
  ///
  /// In tr, this message translates to:
  /// **'Acenta Adı *'**
  String get adminAgencyNameRequired;

  /// No description provided for @adminAgencyNew.
  ///
  /// In tr, this message translates to:
  /// **'Yeni Acenta'**
  String get adminAgencyNew;

  /// No description provided for @adminAgencyNotFound.
  ///
  /// In tr, this message translates to:
  /// **'Acenta bulunamadı'**
  String get adminAgencyNotFound;

  /// No description provided for @adminAgencyRequired.
  ///
  /// In tr, this message translates to:
  /// **'Acenta *'**
  String get adminAgencyRequired;

  /// No description provided for @adminAgencySummary.
  ///
  /// In tr, this message translates to:
  /// **'{users} kişi • {trips} sefer • {hotels} otel • {currencies} döviz'**
  String adminAgencySummary(int users, int trips, int hotels, int currencies);

  /// No description provided for @adminAgencyTotal.
  ///
  /// In tr, this message translates to:
  /// **'Toplam Acenta'**
  String get adminAgencyTotal;

  /// No description provided for @adminAgencyUpdateFailed.
  ///
  /// In tr, this message translates to:
  /// **'Acenta güncellenemedi'**
  String get adminAgencyUpdateFailed;

  /// No description provided for @adminAgencyUpdated.
  ///
  /// In tr, this message translates to:
  /// **'Acenta güncellendi'**
  String get adminAgencyUpdated;

  /// No description provided for @adminAllTrips.
  ///
  /// In tr, this message translates to:
  /// **'Tüm seferler'**
  String get adminAllTrips;

  /// No description provided for @adminAnalyticsAssignedGuests.
  ///
  /// In tr, this message translates to:
  /// **'{assigned} / {total} misafir bir sefere atanmış'**
  String adminAnalyticsAssignedGuests(int assigned, int total);

  /// No description provided for @adminAnalyticsAssignment.
  ///
  /// In tr, this message translates to:
  /// **'Atama Durumu'**
  String get adminAnalyticsAssignment;

  /// No description provided for @adminAnalyticsGender.
  ///
  /// In tr, this message translates to:
  /// **'Misafir Cinsiyet Dağılımı'**
  String get adminAnalyticsGender;

  /// No description provided for @adminAnalyticsOverview.
  ///
  /// In tr, this message translates to:
  /// **'Genel Durum'**
  String get adminAnalyticsOverview;

  /// No description provided for @adminAreYouSure.
  ///
  /// In tr, this message translates to:
  /// **'Emin misiniz?'**
  String get adminAreYouSure;

  /// No description provided for @adminAssignFailed.
  ///
  /// In tr, this message translates to:
  /// **'Atama kaydedilemedi'**
  String get adminAssignFailed;

  /// No description provided for @adminAssignGenderMismatch.
  ///
  /// In tr, this message translates to:
  /// **'Bu oda {gender} için ayrılmış! Cinsiyet uyumsuz.'**
  String adminAssignGenderMismatch(String gender);

  /// No description provided for @adminAssignHotel.
  ///
  /// In tr, this message translates to:
  /// **'{city} Oteli'**
  String adminAssignHotel(String city);

  /// No description provided for @adminAssignRoom.
  ///
  /// In tr, this message translates to:
  /// **'{city} Odası'**
  String adminAssignRoom(String city);

  /// No description provided for @adminAssignRoomFull.
  ///
  /// In tr, this message translates to:
  /// **'Oda kapasitesi dolu! Başka bir oda seçin.'**
  String get adminAssignRoomFull;

  /// No description provided for @adminAssignRoomRequired.
  ///
  /// In tr, this message translates to:
  /// **'Otel seçildiğinde oda seçim zorunludur.'**
  String get adminAssignRoomRequired;

  /// No description provided for @adminAssignTitle.
  ///
  /// In tr, this message translates to:
  /// **'{city} Ataması'**
  String adminAssignTitle(String city);

  /// No description provided for @adminAssignTrip.
  ///
  /// In tr, this message translates to:
  /// **'{city} Seferi'**
  String adminAssignTrip(String city);

  /// No description provided for @adminAssignUpdated.
  ///
  /// In tr, this message translates to:
  /// **'Atama güncellendi'**
  String get adminAssignUpdated;

  /// No description provided for @adminBirthDate.
  ///
  /// In tr, this message translates to:
  /// **'Doğum Tarihi'**
  String get adminBirthDate;

  /// No description provided for @adminCapacityInvalid.
  ///
  /// In tr, this message translates to:
  /// **'Geçerli kapasite girin'**
  String get adminCapacityInvalid;

  /// No description provided for @adminCapacityRequired.
  ///
  /// In tr, this message translates to:
  /// **'Kapasite *'**
  String get adminCapacityRequired;

  /// No description provided for @adminCityJeddah.
  ///
  /// In tr, this message translates to:
  /// **'Cidde'**
  String get adminCityJeddah;

  /// No description provided for @adminCityOther.
  ///
  /// In tr, this message translates to:
  /// **'Diğer'**
  String get adminCityOther;

  /// No description provided for @adminCurrencyAdd.
  ///
  /// In tr, this message translates to:
  /// **'Döviz Ekle'**
  String get adminCurrencyAdd;

  /// No description provided for @adminCurrencyAddFailed.
  ///
  /// In tr, this message translates to:
  /// **'Döviz eklenemedi'**
  String get adminCurrencyAddFailed;

  /// No description provided for @adminCurrencyAddTitle.
  ///
  /// In tr, this message translates to:
  /// **'Yeni Döviz Ekle'**
  String get adminCurrencyAddTitle;

  /// No description provided for @adminCurrencyAdded.
  ///
  /// In tr, this message translates to:
  /// **'Döviz eklendi'**
  String get adminCurrencyAdded;

  /// No description provided for @adminCurrencyDelete.
  ///
  /// In tr, this message translates to:
  /// **'Dövizi Sil'**
  String get adminCurrencyDelete;

  /// No description provided for @adminCurrencyDeleteConfirm.
  ///
  /// In tr, this message translates to:
  /// **'{name} dövizini silmek istediğinize emin misiniz?'**
  String adminCurrencyDeleteConfirm(String name);

  /// No description provided for @adminCurrencyDeleteFailed.
  ///
  /// In tr, this message translates to:
  /// **'Döviz silinemedi'**
  String get adminCurrencyDeleteFailed;

  /// No description provided for @adminCurrencyDeleted.
  ///
  /// In tr, this message translates to:
  /// **'Döviz silindi'**
  String get adminCurrencyDeleted;

  /// No description provided for @adminCurrencyEdit.
  ///
  /// In tr, this message translates to:
  /// **'Döviz Düzenle'**
  String get adminCurrencyEdit;

  /// No description provided for @adminCurrencyEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Henüz döviz eklenmedi.'**
  String get adminCurrencyEmpty;

  /// No description provided for @adminCurrencyFlag.
  ///
  /// In tr, this message translates to:
  /// **'Bayrak'**
  String get adminCurrencyFlag;

  /// No description provided for @adminCurrencyLoadFailed.
  ///
  /// In tr, this message translates to:
  /// **'Döviz kurları yüklenemedi'**
  String get adminCurrencyLoadFailed;

  /// No description provided for @adminCurrencyName.
  ///
  /// In tr, this message translates to:
  /// **'Ad (USD, EUR...)'**
  String get adminCurrencyName;

  /// No description provided for @adminCurrencyQuickAdd.
  ///
  /// In tr, this message translates to:
  /// **'Hızlı ekle'**
  String get adminCurrencyQuickAdd;

  /// No description provided for @adminCurrencyTab.
  ///
  /// In tr, this message translates to:
  /// **'Döviz'**
  String get adminCurrencyTab;

  /// No description provided for @adminCurrencyUpdateFailed.
  ///
  /// In tr, this message translates to:
  /// **'Döviz güncellenemedi'**
  String get adminCurrencyUpdateFailed;

  /// No description provided for @adminCurrencyUpdated.
  ///
  /// In tr, this message translates to:
  /// **'Döviz güncellendi'**
  String get adminCurrencyUpdated;

  /// No description provided for @adminCurrencyValue.
  ///
  /// In tr, this message translates to:
  /// **'Değer (₺)'**
  String get adminCurrencyValue;

  /// No description provided for @adminCurrencyValueInvalid.
  ///
  /// In tr, this message translates to:
  /// **'Geçerli bir değer girin'**
  String get adminCurrencyValueInvalid;

  /// No description provided for @adminDataLoadFailed.
  ///
  /// In tr, this message translates to:
  /// **'Veriler yüklenirken bir hata oluştu'**
  String get adminDataLoadFailed;

  /// No description provided for @adminDateHint.
  ///
  /// In tr, this message translates to:
  /// **'gg/aa/yyyy'**
  String get adminDateHint;

  /// No description provided for @adminDateInvalid.
  ///
  /// In tr, this message translates to:
  /// **'Geçerli bir tarih girin (gg/aa/yyyy)'**
  String get adminDateInvalid;

  /// No description provided for @adminDescription.
  ///
  /// In tr, this message translates to:
  /// **'Açıklama'**
  String get adminDescription;

  /// No description provided for @adminDetail.
  ///
  /// In tr, this message translates to:
  /// **'Detay'**
  String get adminDetail;

  /// No description provided for @adminDurationMin.
  ///
  /// In tr, this message translates to:
  /// **'Süre (dk)'**
  String get adminDurationMin;

  /// No description provided for @adminEmail.
  ///
  /// In tr, this message translates to:
  /// **'E-posta'**
  String get adminEmail;

  /// No description provided for @adminEndDate.
  ///
  /// In tr, this message translates to:
  /// **'Bitiş'**
  String get adminEndDate;

  /// No description provided for @adminEsnafAccountActive.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf hesabı açık'**
  String get adminEsnafAccountActive;

  /// No description provided for @adminEsnafAccountNone.
  ///
  /// In tr, this message translates to:
  /// **'Bu dükkanın esnaf hesabı yok. Hesap açılınca esnaf kod ve PIN ile giriş yapar, misafirin QR kodunu okutarak indirimli satışı kaydeder.'**
  String get adminEsnafAccountNone;

  /// No description provided for @adminEsnafAccountSection.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf Hesabı'**
  String get adminEsnafAccountSection;

  /// No description provided for @adminEsnafAlertBigTx.
  ///
  /// In tr, this message translates to:
  /// **'{guest} – {shop}: tek işlemde {amount}'**
  String adminEsnafAlertBigTx(String guest, String shop, String amount);

  /// No description provided for @adminEsnafAlertManyTx.
  ///
  /// In tr, this message translates to:
  /// **'{guest} – {shop}: {date} tarihinde {count} işlem'**
  String adminEsnafAlertManyTx(
    String guest,
    String shop,
    String date,
    int count,
  );

  /// No description provided for @adminEsnafAlertQuickCancel.
  ///
  /// In tr, this message translates to:
  /// **'{guest} – {shop}: {amount} tutarlı işlem 24 saat içinde iptal edildi'**
  String adminEsnafAlertQuickCancel(String guest, String shop, String amount);

  /// No description provided for @adminEsnafAlerts.
  ///
  /// In tr, this message translates to:
  /// **'Uyarılar'**
  String get adminEsnafAlerts;

  /// No description provided for @adminEsnafBadgeNo.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf hesabı yok'**
  String get adminEsnafBadgeNo;

  /// No description provided for @adminEsnafBadgeYes.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf hesabı var'**
  String get adminEsnafBadgeYes;

  /// No description provided for @adminEsnafByShop.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan bazında'**
  String get adminEsnafByShop;

  /// No description provided for @adminEsnafCancelDone.
  ///
  /// In tr, this message translates to:
  /// **'İşlem iptal edildi'**
  String get adminEsnafCancelDone;

  /// No description provided for @adminEsnafCancelReason.
  ///
  /// In tr, this message translates to:
  /// **'İptal sebebi'**
  String get adminEsnafCancelReason;

  /// No description provided for @adminEsnafCancelReasonLabel.
  ///
  /// In tr, this message translates to:
  /// **'Sebep: {reason}'**
  String adminEsnafCancelReasonLabel(String reason);

  /// No description provided for @adminEsnafCancelReasonRequired.
  ///
  /// In tr, this message translates to:
  /// **'Sebep girin'**
  String get adminEsnafCancelReasonRequired;

  /// No description provided for @adminEsnafCancelTx.
  ///
  /// In tr, this message translates to:
  /// **'İşlemi iptal et'**
  String get adminEsnafCancelTx;

  /// No description provided for @adminEsnafCancelled.
  ///
  /// In tr, this message translates to:
  /// **'İptal'**
  String get adminEsnafCancelled;

  /// No description provided for @adminEsnafClose.
  ///
  /// In tr, this message translates to:
  /// **'Hesabı kapat'**
  String get adminEsnafClose;

  /// No description provided for @adminEsnafCloseConfirm.
  ///
  /// In tr, this message translates to:
  /// **'{name} için esnaf hesabı kapatılsın mı? Esnaf artık giriş yapamaz.'**
  String adminEsnafCloseConfirm(String name);

  /// No description provided for @adminEsnafClosed.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf hesabı kapatıldı'**
  String get adminEsnafClosed;

  /// No description provided for @adminEsnafCode.
  ///
  /// In tr, this message translates to:
  /// **'Kod'**
  String get adminEsnafCode;

  /// No description provided for @adminEsnafCodeExists.
  ///
  /// In tr, this message translates to:
  /// **'Bu kod başka bir hesapta kullanılıyor. Tekrar deneyin.'**
  String get adminEsnafCodeExists;

  /// No description provided for @adminEsnafCodeLabel.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf kodu: {code}'**
  String adminEsnafCodeLabel(String code);

  /// No description provided for @adminEsnafCommission.
  ///
  /// In tr, this message translates to:
  /// **'Komisyon oranı (%)'**
  String get adminEsnafCommission;

  /// No description provided for @adminEsnafCommissionHint.
  ///
  /// In tr, this message translates to:
  /// **'0-30 arası, boş = 0'**
  String get adminEsnafCommissionHint;

  /// No description provided for @adminEsnafCommissionRange.
  ///
  /// In tr, this message translates to:
  /// **'Komisyon 0 ile 30 arasında olmalı'**
  String get adminEsnafCommissionRange;

  /// No description provided for @adminEsnafCommissionShort.
  ///
  /// In tr, this message translates to:
  /// **'Komisyon %{percent}'**
  String adminEsnafCommissionShort(int percent);

  /// No description provided for @adminEsnafContinue.
  ///
  /// In tr, this message translates to:
  /// **'Devam'**
  String get adminEsnafContinue;

  /// No description provided for @adminEsnafCopied.
  ///
  /// In tr, this message translates to:
  /// **'Panoya kopyalandı'**
  String get adminEsnafCopied;

  /// No description provided for @adminEsnafCopy.
  ///
  /// In tr, this message translates to:
  /// **'Kopyala'**
  String get adminEsnafCopy;

  /// No description provided for @adminEsnafCreate.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf hesabı oluştur'**
  String get adminEsnafCreate;

  /// No description provided for @adminEsnafCreated.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf hesabı oluşturuldu'**
  String get adminEsnafCreated;

  /// No description provided for @adminEsnafCredsTitle.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf giriş bilgileri'**
  String get adminEsnafCredsTitle;

  /// No description provided for @adminEsnafCredsWarning.
  ///
  /// In tr, this message translates to:
  /// **'Bu bilgileri esnafa iletin. PIN bir daha gösterilmeyecek.'**
  String get adminEsnafCredsWarning;

  /// No description provided for @adminEsnafDailyChart.
  ///
  /// In tr, this message translates to:
  /// **'Günlük net ciro (SAR)'**
  String get adminEsnafDailyChart;

  /// No description provided for @adminEsnafDone.
  ///
  /// In tr, this message translates to:
  /// **'Tamam'**
  String get adminEsnafDone;

  /// No description provided for @adminEsnafEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Bu dönemde anlaşmalı esnafta alışveriş yok.'**
  String get adminEsnafEmpty;

  /// No description provided for @adminEsnafFailed.
  ///
  /// In tr, this message translates to:
  /// **'İşlem başarısız: {error}'**
  String adminEsnafFailed(String error);

  /// No description provided for @adminEsnafLoadFailed.
  ///
  /// In tr, this message translates to:
  /// **'Rapor yüklenemedi. Aşağı çekerek yenileyin.'**
  String get adminEsnafLoadFailed;

  /// No description provided for @adminEsnafLoyaltyInfo.
  ///
  /// In tr, this message translates to:
  /// **'Sadakat puanı: 1 SAR = {points} puan, 100 puan = {sar} SAR'**
  String adminEsnafLoyaltyInfo(int points, String sar);

  /// No description provided for @adminEsnafMenu.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf Raporları'**
  String get adminEsnafMenu;

  /// No description provided for @adminEsnafMenuSub.
  ///
  /// In tr, this message translates to:
  /// **'Anlaşmalı esnaf satışları ve komisyon'**
  String get adminEsnafMenuSub;

  /// No description provided for @adminEsnafMethodCard.
  ///
  /// In tr, this message translates to:
  /// **'Kart'**
  String get adminEsnafMethodCard;

  /// No description provided for @adminEsnafMethodCash.
  ///
  /// In tr, this message translates to:
  /// **'Nakit'**
  String get adminEsnafMethodCash;

  /// No description provided for @adminEsnafMethodChart.
  ///
  /// In tr, this message translates to:
  /// **'Ödeme türü dağılımı'**
  String get adminEsnafMethodChart;

  /// No description provided for @adminEsnafMethodPoints.
  ///
  /// In tr, this message translates to:
  /// **'Puan'**
  String get adminEsnafMethodPoints;

  /// No description provided for @adminEsnafNoAgencyHint.
  ///
  /// In tr, this message translates to:
  /// **'Raporu görmek için süper admin panelinden bir acente seçip yönetin.'**
  String get adminEsnafNoAgencyHint;

  /// No description provided for @adminEsnafNoAlerts.
  ///
  /// In tr, this message translates to:
  /// **'Şüpheli işlem yok.'**
  String get adminEsnafNoAlerts;

  /// No description provided for @adminEsnafPeriod30.
  ///
  /// In tr, this message translates to:
  /// **'Son 30 gün'**
  String get adminEsnafPeriod30;

  /// No description provided for @adminEsnafPeriodCustom.
  ///
  /// In tr, this message translates to:
  /// **'Özel aralık'**
  String get adminEsnafPeriodCustom;

  /// No description provided for @adminEsnafPeriodLastMonth.
  ///
  /// In tr, this message translates to:
  /// **'Geçen ay'**
  String get adminEsnafPeriodLastMonth;

  /// No description provided for @adminEsnafPeriodThisMonth.
  ///
  /// In tr, this message translates to:
  /// **'Bu ay'**
  String get adminEsnafPeriodThisMonth;

  /// No description provided for @adminEsnafPin.
  ///
  /// In tr, this message translates to:
  /// **'PIN'**
  String get adminEsnafPin;

  /// No description provided for @adminEsnafPinField.
  ///
  /// In tr, this message translates to:
  /// **'6 haneli PIN'**
  String get adminEsnafPinField;

  /// No description provided for @adminEsnafPinInvalid.
  ///
  /// In tr, this message translates to:
  /// **'PIN 6 haneli rakam olmalı'**
  String get adminEsnafPinInvalid;

  /// No description provided for @adminEsnafPinManual.
  ///
  /// In tr, this message translates to:
  /// **'PIN\'i ben gireyim'**
  String get adminEsnafPinManual;

  /// No description provided for @adminEsnafPinRandom.
  ///
  /// In tr, this message translates to:
  /// **'Rastgele PIN üret'**
  String get adminEsnafPinRandom;

  /// No description provided for @adminEsnafRange.
  ///
  /// In tr, this message translates to:
  /// **'{from} – {to}'**
  String adminEsnafRange(String from, String to);

  /// No description provided for @adminEsnafResetConfirm.
  ///
  /// In tr, this message translates to:
  /// **'Yeni bir kod ve PIN oluşturulacak. Eski kod ve PIN ile giriş artık çalışmaz. Devam edilsin mi?'**
  String get adminEsnafResetConfirm;

  /// No description provided for @adminEsnafResetPin.
  ///
  /// In tr, this message translates to:
  /// **'PIN sıfırla'**
  String get adminEsnafResetPin;

  /// No description provided for @adminEsnafSaveFirst.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf hesabı açmak için önce dükkanı kaydedin.'**
  String get adminEsnafSaveFirst;

  /// No description provided for @adminEsnafShare.
  ///
  /// In tr, this message translates to:
  /// **'Komisyon dökümü paylaş'**
  String get adminEsnafShare;

  /// No description provided for @adminEsnafShareByShop.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan bazında:'**
  String get adminEsnafShareByShop;

  /// No description provided for @adminEsnafShareCopied.
  ///
  /// In tr, this message translates to:
  /// **'Komisyon dökümü panoya kopyalandı'**
  String get adminEsnafShareCopied;

  /// No description provided for @adminEsnafShareHeader.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf Komisyon Dökümü'**
  String get adminEsnafShareHeader;

  /// Esnafa WhatsApp ile gönderilen giriş mesajı; her dilde Arapça + Türkçe birlikte.
  ///
  /// In tr, this message translates to:
  /// **'السلام عليكم\nتم إنشاء حساب التاجر لمتجر {shop} في تطبيق Umre Rehberim.\n1) ثبّت تطبيق Umre Rehberim على هاتفك.\n2) افتح التطبيق واختر «تاجر».\n3) الرمز: {code}\n4) الرقم السري (PIN): {pin}\nلا تشارك الرقم السري مع أحد.\n\nSelamün aleyküm\n{shop} için Umre Rehberim esnaf hesabınız açıldı.\n1) Umre Rehberim uygulamasını telefonunuza yükleyin.\n2) Uygulamayı açıp giriş tipi olarak \"Esnaf\"ı seçin.\n3) Kod: {code}\n4) PIN: {pin}\nPIN\'inizi kimseyle paylaşmayın.'**
  String adminEsnafShareMessage(String shop, String code, String pin);

  /// No description provided for @adminEsnafSharePeriod.
  ///
  /// In tr, this message translates to:
  /// **'Dönem: {range}'**
  String adminEsnafSharePeriod(String range);

  /// No description provided for @adminEsnafShareTotals.
  ///
  /// In tr, this message translates to:
  /// **'Toplam: {count} işlem, net ciro {net}, komisyon {commission}'**
  String adminEsnafShareTotals(int count, String net, String commission);

  /// No description provided for @adminEsnafShareWhatsapp.
  ///
  /// In tr, this message translates to:
  /// **'WhatsApp ile paylaş'**
  String get adminEsnafShareWhatsapp;

  /// No description provided for @adminEsnafShopRow.
  ///
  /// In tr, this message translates to:
  /// **'{count} işlem · Net {net} · %{percent} → {commission}'**
  String adminEsnafShopRow(
    int count,
    String net,
    int percent,
    String commission,
  );

  /// No description provided for @adminEsnafShowAll.
  ///
  /// In tr, this message translates to:
  /// **'Tümünü göster ({count})'**
  String adminEsnafShowAll(int count);

  /// No description provided for @adminEsnafSumCommission.
  ///
  /// In tr, this message translates to:
  /// **'Biriken komisyon'**
  String get adminEsnafSumCommission;

  /// No description provided for @adminEsnafSumCount.
  ///
  /// In tr, this message translates to:
  /// **'Alışveriş sayısı'**
  String get adminEsnafSumCount;

  /// No description provided for @adminEsnafSumDiscount.
  ///
  /// In tr, this message translates to:
  /// **'Misafirlere sağlanan indirim'**
  String get adminEsnafSumDiscount;

  /// No description provided for @adminEsnafSumGross.
  ///
  /// In tr, this message translates to:
  /// **'Brüt ciro'**
  String get adminEsnafSumGross;

  /// No description provided for @adminEsnafSumNet.
  ///
  /// In tr, this message translates to:
  /// **'Net ciro'**
  String get adminEsnafSumNet;

  /// No description provided for @adminEsnafSumPointsEarned.
  ///
  /// In tr, this message translates to:
  /// **'Dağıtılan puan'**
  String get adminEsnafSumPointsEarned;

  /// No description provided for @adminEsnafSumPointsSpent.
  ///
  /// In tr, this message translates to:
  /// **'Harcanan puan'**
  String get adminEsnafSumPointsSpent;

  /// No description provided for @adminEsnafTransactions.
  ///
  /// In tr, this message translates to:
  /// **'İşlemler'**
  String get adminEsnafTransactions;

  /// No description provided for @adminEsnafWhatsappFailed.
  ///
  /// In tr, this message translates to:
  /// **'WhatsApp açılamadı; bilgiler panoya kopyalandı'**
  String get adminEsnafWhatsappFailed;

  /// No description provided for @adminEventAdd.
  ///
  /// In tr, this message translates to:
  /// **'Etkinlik Ekle'**
  String get adminEventAdd;

  /// No description provided for @adminEventAddFailed.
  ///
  /// In tr, this message translates to:
  /// **'Etkinlik eklenemedi'**
  String get adminEventAddFailed;

  /// No description provided for @adminEventAdded.
  ///
  /// In tr, this message translates to:
  /// **'Etkinlik eklendi'**
  String get adminEventAdded;

  /// No description provided for @adminEventDelete.
  ///
  /// In tr, this message translates to:
  /// **'Etkinliği Sil'**
  String get adminEventDelete;

  /// No description provided for @adminEventDeleteConfirm.
  ///
  /// In tr, this message translates to:
  /// **'\"{title}\" silinsin mi?'**
  String adminEventDeleteConfirm(String title);

  /// No description provided for @adminEventDeleteFailed.
  ///
  /// In tr, this message translates to:
  /// **'Etkinlik silinemedi'**
  String get adminEventDeleteFailed;

  /// No description provided for @adminEventDeleted.
  ///
  /// In tr, this message translates to:
  /// **'Etkinlik silindi'**
  String get adminEventDeleted;

  /// No description provided for @adminEventEdit.
  ///
  /// In tr, this message translates to:
  /// **'Etkinliği Düzenle'**
  String get adminEventEdit;

  /// No description provided for @adminEventEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Bu gün için etkinlik yok'**
  String get adminEventEmpty;

  /// No description provided for @adminEventEmptySub.
  ///
  /// In tr, this message translates to:
  /// **'Başka bir gün seçerek etkinlikleri görüntüleyin'**
  String get adminEventEmptySub;

  /// No description provided for @adminEventLoadFailed.
  ///
  /// In tr, this message translates to:
  /// **'Etkinlikler yüklenemedi'**
  String get adminEventLoadFailed;

  /// No description provided for @adminEventPast.
  ///
  /// In tr, this message translates to:
  /// **'Gerçekleşti'**
  String get adminEventPast;

  /// No description provided for @adminEventUpcoming.
  ///
  /// In tr, this message translates to:
  /// **'Yaklaşan'**
  String get adminEventUpcoming;

  /// No description provided for @adminEventUpdateFailed.
  ///
  /// In tr, this message translates to:
  /// **'Etkinlik güncellenemedi'**
  String get adminEventUpdateFailed;

  /// No description provided for @adminEventUpdated.
  ///
  /// In tr, this message translates to:
  /// **'Etkinlik güncellendi'**
  String get adminEventUpdated;

  /// No description provided for @adminFilterAll.
  ///
  /// In tr, this message translates to:
  /// **'Tümü'**
  String get adminFilterAll;

  /// No description provided for @adminGender.
  ///
  /// In tr, this message translates to:
  /// **'Cinsiyet'**
  String get adminGender;

  /// No description provided for @adminGenderFemale.
  ///
  /// In tr, this message translates to:
  /// **'Kadın'**
  String get adminGenderFemale;

  /// No description provided for @adminGenderMale.
  ///
  /// In tr, this message translates to:
  /// **'Erkek'**
  String get adminGenderMale;

  /// No description provided for @adminGenderMixed.
  ///
  /// In tr, this message translates to:
  /// **'Karma'**
  String get adminGenderMixed;

  /// No description provided for @adminGenderRequired.
  ///
  /// In tr, this message translates to:
  /// **'Cinsiyet *'**
  String get adminGenderRequired;

  /// No description provided for @adminGenderUnspecified.
  ///
  /// In tr, this message translates to:
  /// **'Belirtilmemiş'**
  String get adminGenderUnspecified;

  /// No description provided for @adminHotelAdd.
  ///
  /// In tr, this message translates to:
  /// **'Otel Ekle'**
  String get adminHotelAdd;

  /// No description provided for @adminHotelCapacityShort.
  ///
  /// In tr, this message translates to:
  /// **'Kap. {count}'**
  String adminHotelCapacityShort(int count);

  /// No description provided for @adminHotelCreateFailed.
  ///
  /// In tr, this message translates to:
  /// **'Otel oluşturulamadı'**
  String get adminHotelCreateFailed;

  /// No description provided for @adminHotelCreated.
  ///
  /// In tr, this message translates to:
  /// **'Otel oluşturuldu'**
  String get adminHotelCreated;

  /// No description provided for @adminHotelDelete.
  ///
  /// In tr, this message translates to:
  /// **'Oteli Sil'**
  String get adminHotelDelete;

  /// No description provided for @adminHotelDeleteConfirm.
  ///
  /// In tr, this message translates to:
  /// **'\"{name}\" otelini ve tüm odalarını silmek istediğinize emin misiniz? Bu işlem geri alınamaz.'**
  String adminHotelDeleteConfirm(String name);

  /// No description provided for @adminHotelDeleteFailed.
  ///
  /// In tr, this message translates to:
  /// **'Otel silinemedi'**
  String get adminHotelDeleteFailed;

  /// No description provided for @adminHotelDeleted.
  ///
  /// In tr, this message translates to:
  /// **'Otel silindi'**
  String get adminHotelDeleted;

  /// No description provided for @adminHotelEdit.
  ///
  /// In tr, this message translates to:
  /// **'Otel Düzenle'**
  String get adminHotelEdit;

  /// No description provided for @adminHotelEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Henüz otel eklenmedi.'**
  String get adminHotelEmpty;

  /// No description provided for @adminHotelNameRequired.
  ///
  /// In tr, this message translates to:
  /// **'Otel Adı *'**
  String get adminHotelNameRequired;

  /// No description provided for @adminHotelUpdateFailed.
  ///
  /// In tr, this message translates to:
  /// **'Otel güncellenemedi'**
  String get adminHotelUpdateFailed;

  /// No description provided for @adminHotelUpdated.
  ///
  /// In tr, this message translates to:
  /// **'Otel güncellendi'**
  String get adminHotelUpdated;

  /// No description provided for @adminHotels.
  ///
  /// In tr, this message translates to:
  /// **'Oteller'**
  String get adminHotels;

  /// No description provided for @adminInactive.
  ///
  /// In tr, this message translates to:
  /// **'Pasif'**
  String get adminInactive;

  /// No description provided for @adminLiveMap.
  ///
  /// In tr, this message translates to:
  /// **'Canlı Konum Haritası'**
  String get adminLiveMap;

  /// No description provided for @adminLiveMapSub.
  ///
  /// In tr, this message translates to:
  /// **'Acentenizdeki herkesin son konumu'**
  String get adminLiveMapSub;

  /// No description provided for @adminLogout.
  ///
  /// In tr, this message translates to:
  /// **'Çıkış Yap'**
  String get adminLogout;

  /// No description provided for @adminLogoutConfirm.
  ///
  /// In tr, this message translates to:
  /// **'Oturumu kapatmak istediğinize emin misiniz?'**
  String get adminLogoutConfirm;

  /// No description provided for @adminMakeActive.
  ///
  /// In tr, this message translates to:
  /// **'Aktif Yap'**
  String get adminMakeActive;

  /// No description provided for @adminMakeInactive.
  ///
  /// In tr, this message translates to:
  /// **'Pasif Yap'**
  String get adminMakeInactive;

  /// No description provided for @adminManage.
  ///
  /// In tr, this message translates to:
  /// **'Yönet'**
  String get adminManage;

  /// No description provided for @adminManagement.
  ///
  /// In tr, this message translates to:
  /// **'Yönetim'**
  String get adminManagement;

  /// No description provided for @adminMapDirections.
  ///
  /// In tr, this message translates to:
  /// **'Google Maps\'te yol tarifi'**
  String get adminMapDirections;

  /// No description provided for @adminMapEveryoneOnMap.
  ///
  /// In tr, this message translates to:
  /// **'Haritada herkes'**
  String get adminMapEveryoneOnMap;

  /// No description provided for @adminMapLastUpdate.
  ///
  /// In tr, this message translates to:
  /// **'Son güncelleme: {time}'**
  String adminMapLastUpdate(String time);

  /// No description provided for @adminMapLatLng.
  ///
  /// In tr, this message translates to:
  /// **'Enlem: {lat}  Boylam: {lng}'**
  String adminMapLatLng(String lat, String lng);

  /// No description provided for @adminMapLoadFailed.
  ///
  /// In tr, this message translates to:
  /// **'Konumlar yüklenemedi. Yetkiniz olmayabilir.'**
  String get adminMapLoadFailed;

  /// No description provided for @adminMapLoading.
  ///
  /// In tr, this message translates to:
  /// **'Konum yükleniyor...'**
  String get adminMapLoading;

  /// No description provided for @adminMapLocation.
  ///
  /// In tr, this message translates to:
  /// **'Konum'**
  String get adminMapLocation;

  /// No description provided for @adminMapNoOneSharing.
  ///
  /// In tr, this message translates to:
  /// **'Henüz konum paylaşan kimse yok'**
  String get adminMapNoOneSharing;

  /// No description provided for @adminMapNoSharedLocation.
  ///
  /// In tr, this message translates to:
  /// **'Bu kişinin paylaşılan konumu yok.'**
  String get adminMapNoSharedLocation;

  /// No description provided for @adminMapOpenFailed.
  ///
  /// In tr, this message translates to:
  /// **'Harita açılamadı'**
  String get adminMapOpenFailed;

  /// No description provided for @adminMapPeopleList.
  ///
  /// In tr, this message translates to:
  /// **'Kişi listesi'**
  String get adminMapPeopleList;

  /// No description provided for @adminMapReadFailed.
  ///
  /// In tr, this message translates to:
  /// **'Konum okunamadı.'**
  String get adminMapReadFailed;

  /// No description provided for @adminMapSelectAgencyHint.
  ///
  /// In tr, this message translates to:
  /// **'Konumları görmek için önce bir acente seçin.\nAcenteler sayfasından bir acenteyi \"Yönet\" ile açabilirsiniz.'**
  String get adminMapSelectAgencyHint;

  /// No description provided for @adminMapSelectPerson.
  ///
  /// In tr, this message translates to:
  /// **'Kişi Seç'**
  String get adminMapSelectPerson;

  /// No description provided for @adminMapShowAll.
  ///
  /// In tr, this message translates to:
  /// **'Herkesi göster'**
  String get adminMapShowAll;

  /// No description provided for @adminMapVisiblePeople.
  ///
  /// In tr, this message translates to:
  /// **'Konumu görünen kişiler ({count})'**
  String adminMapVisiblePeople(int count);

  /// No description provided for @adminMenuAnalytics.
  ///
  /// In tr, this message translates to:
  /// **'Analiz'**
  String get adminMenuAnalytics;

  /// No description provided for @adminMenuAnalyticsSub.
  ///
  /// In tr, this message translates to:
  /// **'İstatistik ve grafikler'**
  String get adminMenuAnalyticsSub;

  /// No description provided for @adminMenuCalendar.
  ///
  /// In tr, this message translates to:
  /// **'Takvim'**
  String get adminMenuCalendar;

  /// No description provided for @adminMenuCalendarSub.
  ///
  /// In tr, this message translates to:
  /// **'Etkinlikleri yönet'**
  String get adminMenuCalendarSub;

  /// No description provided for @adminMenuCurrency.
  ///
  /// In tr, this message translates to:
  /// **'Döviz Kurları'**
  String get adminMenuCurrency;

  /// No description provided for @adminMenuCurrencySub.
  ///
  /// In tr, this message translates to:
  /// **'Döviz kurlarını yönet'**
  String get adminMenuCurrencySub;

  /// No description provided for @adminMenuHome.
  ///
  /// In tr, this message translates to:
  /// **'Anasayfa'**
  String get adminMenuHome;

  /// No description provided for @adminMenuHomeSub.
  ///
  /// In tr, this message translates to:
  /// **'Yönetim paneline dön'**
  String get adminMenuHomeSub;

  /// No description provided for @adminMenuHotels.
  ///
  /// In tr, this message translates to:
  /// **'Otel & Oda'**
  String get adminMenuHotels;

  /// No description provided for @adminMenuHotelsSub.
  ///
  /// In tr, this message translates to:
  /// **'Otelleri ve odaları yönet'**
  String get adminMenuHotelsSub;

  /// No description provided for @adminMenuLiveLocation.
  ///
  /// In tr, this message translates to:
  /// **'Canlı Konum'**
  String get adminMenuLiveLocation;

  /// No description provided for @adminMenuLiveLocationSub.
  ///
  /// In tr, this message translates to:
  /// **'Misafirleri haritada gör'**
  String get adminMenuLiveLocationSub;

  /// No description provided for @adminMenuNotify.
  ///
  /// In tr, this message translates to:
  /// **'Bildirim Gönder'**
  String get adminMenuNotify;

  /// No description provided for @adminMenuNotifySub.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcılara bildirim gönder'**
  String get adminMenuNotifySub;

  /// No description provided for @adminMenuPeople.
  ///
  /// In tr, this message translates to:
  /// **'Kişiler'**
  String get adminMenuPeople;

  /// No description provided for @adminMenuPeopleSub.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcıları yönet'**
  String get adminMenuPeopleSub;

  /// No description provided for @adminMenuRadio.
  ///
  /// In tr, this message translates to:
  /// **'Telsiz'**
  String get adminMenuRadio;

  /// No description provided for @adminMenuRadioSub.
  ///
  /// In tr, this message translates to:
  /// **'Misafirlere canlı sesli yayın'**
  String get adminMenuRadioSub;

  /// No description provided for @adminMenuShops.
  ///
  /// In tr, this message translates to:
  /// **'Anlaşmalı Dükkanlar'**
  String get adminMenuShops;

  /// No description provided for @adminMenuShopsSub.
  ///
  /// In tr, this message translates to:
  /// **'İndirimli esnafı yönet'**
  String get adminMenuShopsSub;

  /// No description provided for @adminMenuTracking.
  ///
  /// In tr, this message translates to:
  /// **'Konum Takibi'**
  String get adminMenuTracking;

  /// No description provided for @adminMenuTrackingSub.
  ///
  /// In tr, this message translates to:
  /// **'Konum takibini yönet'**
  String get adminMenuTrackingSub;

  /// No description provided for @adminMenuTrips.
  ///
  /// In tr, this message translates to:
  /// **'Seferler'**
  String get adminMenuTrips;

  /// No description provided for @adminMenuTripsSub.
  ///
  /// In tr, this message translates to:
  /// **'Seferleri yönet'**
  String get adminMenuTripsSub;

  /// No description provided for @adminMinutes.
  ///
  /// In tr, this message translates to:
  /// **'{count} dk'**
  String adminMinutes(int count);

  /// No description provided for @adminNext.
  ///
  /// In tr, this message translates to:
  /// **'Sonraki'**
  String get adminNext;

  /// No description provided for @adminNoAgencySelected.
  ///
  /// In tr, this message translates to:
  /// **'Acente seçilmedi.'**
  String get adminNoAgencySelected;

  /// No description provided for @adminNoDate.
  ///
  /// In tr, this message translates to:
  /// **'Tarih yok'**
  String get adminNoDate;

  /// No description provided for @adminNoGuestsYet.
  ///
  /// In tr, this message translates to:
  /// **'Henüz misafir yok.'**
  String get adminNoGuestsYet;

  /// No description provided for @adminNoResults.
  ///
  /// In tr, this message translates to:
  /// **'Sonuç bulunamadı.'**
  String get adminNoResults;

  /// No description provided for @adminNotAssigned.
  ///
  /// In tr, this message translates to:
  /// **'Atanmadı'**
  String get adminNotAssigned;

  /// No description provided for @adminNotSelected.
  ///
  /// In tr, this message translates to:
  /// **'Seçilmedi'**
  String get adminNotSelected;

  /// No description provided for @adminNote.
  ///
  /// In tr, this message translates to:
  /// **'Not'**
  String get adminNote;

  /// No description provided for @adminNoteValue.
  ///
  /// In tr, this message translates to:
  /// **'Not: {note}'**
  String adminNoteValue(String note);

  /// No description provided for @adminNotifyEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Henüz bildirim gönderilmedi.'**
  String get adminNotifyEmpty;

  /// No description provided for @adminNotifyHistoryLoadFailed.
  ///
  /// In tr, this message translates to:
  /// **'Bildirim geçmişi yüklenemedi'**
  String get adminNotifyHistoryLoadFailed;

  /// No description provided for @adminNotifyMessage.
  ///
  /// In tr, this message translates to:
  /// **'Mesaj'**
  String get adminNotifyMessage;

  /// No description provided for @adminNotifyNoAgencyHint.
  ///
  /// In tr, this message translates to:
  /// **'Bildirim göndermek için önce bir acenteyi yönetmeye başlayın.'**
  String get adminNotifyNoAgencyHint;

  /// No description provided for @adminNotifyRequired.
  ///
  /// In tr, this message translates to:
  /// **'Başlık ve mesaj zorunlu'**
  String get adminNotifyRequired;

  /// No description provided for @adminNotifySendFailed.
  ///
  /// In tr, this message translates to:
  /// **'Bildirim gönderilirken hata oluştu.'**
  String get adminNotifySendFailed;

  /// No description provided for @adminNotifySent.
  ///
  /// In tr, this message translates to:
  /// **'Gönderilen Bildirimler'**
  String get adminNotifySent;

  /// No description provided for @adminNotifySentOk.
  ///
  /// In tr, this message translates to:
  /// **'Duyuru gönderildi'**
  String get adminNotifySentOk;

  /// No description provided for @adminNotifyTarget.
  ///
  /// In tr, this message translates to:
  /// **'Gönderilecek Hedef'**
  String get adminNotifyTarget;

  /// No description provided for @adminNotifyTargetAll.
  ///
  /// In tr, this message translates to:
  /// **'Tüm Acente'**
  String get adminNotifyTargetAll;

  /// No description provided for @adminNotifyTargetInvalid.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen geçerli bir hedef seçiniz.'**
  String get adminNotifyTargetInvalid;

  /// No description provided for @adminNotifyTitle.
  ///
  /// In tr, this message translates to:
  /// **'Başlık'**
  String get adminNotifyTitle;

  /// No description provided for @adminPanelTitle.
  ///
  /// In tr, this message translates to:
  /// **'Yönetim Paneli'**
  String get adminPanelTitle;

  /// No description provided for @adminPeopleRatio.
  ///
  /// In tr, this message translates to:
  /// **'{count}/{capacity} kişi'**
  String adminPeopleRatio(int count, int capacity);

  /// No description provided for @adminPersonCount.
  ///
  /// In tr, this message translates to:
  /// **'{count} kişi'**
  String adminPersonCount(int count);

  /// No description provided for @adminPhone.
  ///
  /// In tr, this message translates to:
  /// **'Telefon'**
  String get adminPhone;

  /// No description provided for @adminPickDate.
  ///
  /// In tr, this message translates to:
  /// **'Tarih Seçiniz'**
  String get adminPickDate;

  /// No description provided for @adminPickDay.
  ///
  /// In tr, this message translates to:
  /// **'Gün Seç'**
  String get adminPickDay;

  /// No description provided for @adminPrevious.
  ///
  /// In tr, this message translates to:
  /// **'Önceki'**
  String get adminPrevious;

  /// No description provided for @adminRemove.
  ///
  /// In tr, this message translates to:
  /// **'Çıkar'**
  String get adminRemove;

  /// No description provided for @adminRequired.
  ///
  /// In tr, this message translates to:
  /// **'Gerekli'**
  String get adminRequired;

  /// No description provided for @adminRequiredField.
  ///
  /// In tr, this message translates to:
  /// **'Zorunlu alan'**
  String get adminRequiredField;

  /// No description provided for @adminRoleGuest.
  ///
  /// In tr, this message translates to:
  /// **'Misafir'**
  String get adminRoleGuest;

  /// No description provided for @adminRoleManager.
  ///
  /// In tr, this message translates to:
  /// **'Yönetici'**
  String get adminRoleManager;

  /// No description provided for @adminRoleSuperAdmin.
  ///
  /// In tr, this message translates to:
  /// **'Süper Admin'**
  String get adminRoleSuperAdmin;

  /// No description provided for @adminRoomAdd.
  ///
  /// In tr, this message translates to:
  /// **'Oda Ekle'**
  String get adminRoomAdd;

  /// No description provided for @adminRoomCount.
  ///
  /// In tr, this message translates to:
  /// **'{count} oda'**
  String adminRoomCount(int count);

  /// No description provided for @adminRoomCreateFailed.
  ///
  /// In tr, this message translates to:
  /// **'Oda oluşturulamadı'**
  String get adminRoomCreateFailed;

  /// No description provided for @adminRoomCreated.
  ///
  /// In tr, this message translates to:
  /// **'Oda oluşturuldu'**
  String get adminRoomCreated;

  /// No description provided for @adminRoomDelete.
  ///
  /// In tr, this message translates to:
  /// **'Odayı Sil'**
  String get adminRoomDelete;

  /// No description provided for @adminRoomDeleteConfirm.
  ///
  /// In tr, this message translates to:
  /// **'{number} numaralı oda silinecek. Emin misiniz?'**
  String adminRoomDeleteConfirm(String number);

  /// No description provided for @adminRoomDeleteFailed.
  ///
  /// In tr, this message translates to:
  /// **'Oda silinemedi'**
  String get adminRoomDeleteFailed;

  /// No description provided for @adminRoomDeleted.
  ///
  /// In tr, this message translates to:
  /// **'Oda silindi'**
  String get adminRoomDeleted;

  /// No description provided for @adminRoomEdit.
  ///
  /// In tr, this message translates to:
  /// **'Oda Düzenle'**
  String get adminRoomEdit;

  /// No description provided for @adminRoomEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Bu otele ait oda eklenmedi'**
  String get adminRoomEmpty;

  /// No description provided for @adminRoomGenderMissing.
  ///
  /// In tr, this message translates to:
  /// **'Cinsiyet türü seçiniz'**
  String get adminRoomGenderMissing;

  /// No description provided for @adminRoomNoOccupants.
  ///
  /// In tr, this message translates to:
  /// **'Bu odada kimse yok.'**
  String get adminRoomNoOccupants;

  /// No description provided for @adminRoomNumber.
  ///
  /// In tr, this message translates to:
  /// **'Oda {number}'**
  String adminRoomNumber(String number);

  /// No description provided for @adminRoomNumberMissing.
  ///
  /// In tr, this message translates to:
  /// **'Oda numarası girin'**
  String get adminRoomNumberMissing;

  /// No description provided for @adminRoomNumberRequired.
  ///
  /// In tr, this message translates to:
  /// **'Oda Numarası *'**
  String get adminRoomNumberRequired;

  /// No description provided for @adminRoomOccupancy.
  ///
  /// In tr, this message translates to:
  /// **'{count}/{capacity} kişilik'**
  String adminRoomOccupancy(int count, int capacity);

  /// No description provided for @adminRoomOccupantsTitle.
  ///
  /// In tr, this message translates to:
  /// **'Oda {number} - Kişiler'**
  String adminRoomOccupantsTitle(String number);

  /// No description provided for @adminRoomRemoveUser.
  ///
  /// In tr, this message translates to:
  /// **'Odadan Çıkar'**
  String get adminRoomRemoveUser;

  /// No description provided for @adminRoomRemoveUserConfirm.
  ///
  /// In tr, this message translates to:
  /// **'{name} kullanıcısını bu odadan çıkarmak istediğinize emin misiniz?'**
  String adminRoomRemoveUserConfirm(String name);

  /// No description provided for @adminRoomUpdateFailed.
  ///
  /// In tr, this message translates to:
  /// **'Oda güncellenemedi'**
  String get adminRoomUpdateFailed;

  /// No description provided for @adminRoomUpdated.
  ///
  /// In tr, this message translates to:
  /// **'Oda güncellendi'**
  String get adminRoomUpdated;

  /// No description provided for @adminRoomUserRemoveFailed.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı odadan çıkarılamadı'**
  String get adminRoomUserRemoveFailed;

  /// No description provided for @adminRoomUserRemoved.
  ///
  /// In tr, this message translates to:
  /// **'{name} odadan çıkarıldı'**
  String adminRoomUserRemoved(String name);

  /// No description provided for @adminRooms.
  ///
  /// In tr, this message translates to:
  /// **'Odalar'**
  String get adminRooms;

  /// No description provided for @adminRoomsOfHotel.
  ///
  /// In tr, this message translates to:
  /// **'{name} - Odalar'**
  String adminRoomsOfHotel(String name);

  /// No description provided for @adminSaving.
  ///
  /// In tr, this message translates to:
  /// **'Kaydediliyor...'**
  String get adminSaving;

  /// No description provided for @adminSearchUser.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı ara...'**
  String get adminSearchUser;

  /// No description provided for @adminSend.
  ///
  /// In tr, this message translates to:
  /// **'Gönder'**
  String get adminSend;

  /// No description provided for @adminSending.
  ///
  /// In tr, this message translates to:
  /// **'Gönderiliyor...'**
  String get adminSending;

  /// No description provided for @adminStartDate.
  ///
  /// In tr, this message translates to:
  /// **'Başlangıç'**
  String get adminStartDate;

  /// No description provided for @adminStatHotel.
  ///
  /// In tr, this message translates to:
  /// **'Otel'**
  String get adminStatHotel;

  /// No description provided for @adminStatPeople.
  ///
  /// In tr, this message translates to:
  /// **'Kayıtlı Kişi'**
  String get adminStatPeople;

  /// No description provided for @adminStatRoom.
  ///
  /// In tr, this message translates to:
  /// **'Oda'**
  String get adminStatRoom;

  /// No description provided for @adminStatTrip.
  ///
  /// In tr, this message translates to:
  /// **'Sefer'**
  String get adminStatTrip;

  /// No description provided for @adminTc.
  ///
  /// In tr, this message translates to:
  /// **'TC'**
  String get adminTc;

  /// No description provided for @adminTcUnspecified.
  ///
  /// In tr, this message translates to:
  /// **'TC belirtilmemiş'**
  String get adminTcUnspecified;

  /// No description provided for @adminTcValue.
  ///
  /// In tr, this message translates to:
  /// **'TC: {tc}'**
  String adminTcValue(String tc);

  /// No description provided for @adminTime.
  ///
  /// In tr, this message translates to:
  /// **'Saat'**
  String get adminTime;

  /// No description provided for @adminTitleRequired.
  ///
  /// In tr, this message translates to:
  /// **'Başlık *'**
  String get adminTitleRequired;

  /// No description provided for @adminTrackingDescription.
  ///
  /// In tr, this message translates to:
  /// **'Konum takibi aktif olduğunda, misafirleriniz sizin konumunuzu harita üzerinde görebilir. Bu özellik rehber olarak görev yaptığınızda faydalıdır.'**
  String get adminTrackingDescription;

  /// No description provided for @adminTrip.
  ///
  /// In tr, this message translates to:
  /// **'Sefer'**
  String get adminTrip;

  /// No description provided for @adminTripAssignedCount.
  ///
  /// In tr, this message translates to:
  /// **'{count} kişi atanmış'**
  String adminTripAssignedCount(int count);

  /// No description provided for @adminTripCreate.
  ///
  /// In tr, this message translates to:
  /// **'Sefer Oluştur'**
  String get adminTripCreate;

  /// No description provided for @adminTripCreateFailed.
  ///
  /// In tr, this message translates to:
  /// **'Sefer oluşturulamadı'**
  String get adminTripCreateFailed;

  /// No description provided for @adminTripCreated.
  ///
  /// In tr, this message translates to:
  /// **'Sefer oluşturuldu'**
  String get adminTripCreated;

  /// No description provided for @adminTripDelete.
  ///
  /// In tr, this message translates to:
  /// **'Seferi Sil'**
  String get adminTripDelete;

  /// No description provided for @adminTripDeleteConfirm.
  ///
  /// In tr, this message translates to:
  /// **'\"{name}\" seferini silmek istediğinize emin misiniz? Bu işlem geri alınamaz.'**
  String adminTripDeleteConfirm(String name);

  /// No description provided for @adminTripDeleteFailed.
  ///
  /// In tr, this message translates to:
  /// **'Sefer silinemedi'**
  String get adminTripDeleteFailed;

  /// No description provided for @adminTripDeleted.
  ///
  /// In tr, this message translates to:
  /// **'Sefer silindi'**
  String get adminTripDeleted;

  /// No description provided for @adminTripEdit.
  ///
  /// In tr, this message translates to:
  /// **'Sefer Düzenle'**
  String get adminTripEdit;

  /// No description provided for @adminTripEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Henüz sefer oluşturulmadı.'**
  String get adminTripEmpty;

  /// No description provided for @adminTripEmptySub.
  ///
  /// In tr, this message translates to:
  /// **'Sefer oluştur, düzenle ve listele.'**
  String get adminTripEmptySub;

  /// No description provided for @adminTripEndBeforeStart.
  ///
  /// In tr, this message translates to:
  /// **'Bitiş tarihi başlangıçtan önce olamaz'**
  String get adminTripEndBeforeStart;

  /// No description provided for @adminTripManagerLabel.
  ///
  /// In tr, this message translates to:
  /// **'Yönetici: {names}'**
  String adminTripManagerLabel(String names);

  /// No description provided for @adminTripManagersSelected.
  ///
  /// In tr, this message translates to:
  /// **'Sefer Yöneticileri ({count} seçili)'**
  String adminTripManagersSelected(int count);

  /// No description provided for @adminTripNameRequired.
  ///
  /// In tr, this message translates to:
  /// **'Sefer Adı *'**
  String get adminTripNameRequired;

  /// No description provided for @adminTripNoLocation.
  ///
  /// In tr, this message translates to:
  /// **'Yer belirtilmedi'**
  String get adminTripNoLocation;

  /// No description provided for @adminTripNoManagers.
  ///
  /// In tr, this message translates to:
  /// **'Yönetici tipinde kullanıcı bulunamadı.'**
  String get adminTripNoManagers;

  /// No description provided for @adminTripUpdateFailed.
  ///
  /// In tr, this message translates to:
  /// **'Sefer güncellenemedi'**
  String get adminTripUpdateFailed;

  /// No description provided for @adminTripUpdated.
  ///
  /// In tr, this message translates to:
  /// **'Sefer güncellendi'**
  String get adminTripUpdated;

  /// No description provided for @adminUnknown.
  ///
  /// In tr, this message translates to:
  /// **'Bilinmeyen'**
  String get adminUnknown;

  /// No description provided for @adminUnnamed.
  ///
  /// In tr, this message translates to:
  /// **'İsimsiz'**
  String get adminUnnamed;

  /// No description provided for @adminUnnamedGuest.
  ///
  /// In tr, this message translates to:
  /// **'İsimsiz Misafir'**
  String get adminUnnamedGuest;

  /// No description provided for @adminUpdate.
  ///
  /// In tr, this message translates to:
  /// **'Güncelle'**
  String get adminUpdate;

  /// No description provided for @adminUpdating.
  ///
  /// In tr, this message translates to:
  /// **'Güncelleniyor...'**
  String get adminUpdating;

  /// No description provided for @adminUserAccountCreateFailed.
  ///
  /// In tr, this message translates to:
  /// **'Kişi hesabı oluşturulamadı ({code})'**
  String adminUserAccountCreateFailed(String code);

  /// No description provided for @adminUserAdd.
  ///
  /// In tr, this message translates to:
  /// **'Kişi Ekle'**
  String get adminUserAdd;

  /// No description provided for @adminUserAgencyRequired.
  ///
  /// In tr, this message translates to:
  /// **'Yönetici için acenta seçimi zorunludur'**
  String get adminUserAgencyRequired;

  /// No description provided for @adminUserCreate.
  ///
  /// In tr, this message translates to:
  /// **'Kişi Oluştur'**
  String get adminUserCreate;

  /// No description provided for @adminUserCreateFailed.
  ///
  /// In tr, this message translates to:
  /// **'Kişi oluşturulamadı'**
  String get adminUserCreateFailed;

  /// No description provided for @adminUserCreateOffline.
  ///
  /// In tr, this message translates to:
  /// **'İnternet bağlantısı yok. Kişi oluşturulamadı.'**
  String get adminUserCreateOffline;

  /// No description provided for @adminUserCreated.
  ///
  /// In tr, this message translates to:
  /// **'Kişi oluşturuldu'**
  String get adminUserCreated;

  /// No description provided for @adminUserDelete.
  ///
  /// In tr, this message translates to:
  /// **'Kişiyi Sil'**
  String get adminUserDelete;

  /// No description provided for @adminUserDeleteConfirm.
  ///
  /// In tr, this message translates to:
  /// **'\"{name}\" kişisini silmek istediğinize emin misiniz? Bu işlem geri alınamaz.'**
  String adminUserDeleteConfirm(String name);

  /// No description provided for @adminUserDeleteFailed.
  ///
  /// In tr, this message translates to:
  /// **'Kişi silinemedi'**
  String get adminUserDeleteFailed;

  /// No description provided for @adminUserDeleted.
  ///
  /// In tr, this message translates to:
  /// **'Kişi silindi'**
  String get adminUserDeleted;

  /// No description provided for @adminUserDetail.
  ///
  /// In tr, this message translates to:
  /// **'Kişi Detayı'**
  String get adminUserDetail;

  /// No description provided for @adminUserEdit.
  ///
  /// In tr, this message translates to:
  /// **'Kişiyi Düzenle'**
  String get adminUserEdit;

  /// No description provided for @adminUserEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Henüz kullanıcı bulunmuyor.'**
  String get adminUserEmpty;

  /// No description provided for @adminUserNameMissing.
  ///
  /// In tr, this message translates to:
  /// **'Ad soyad gerekli'**
  String get adminUserNameMissing;

  /// No description provided for @adminUserNameRequired.
  ///
  /// In tr, this message translates to:
  /// **'Ad Soyad *'**
  String get adminUserNameRequired;

  /// No description provided for @adminUserNotFound.
  ///
  /// In tr, this message translates to:
  /// **'Kişi bulunamadı.'**
  String get adminUserNotFound;

  /// No description provided for @adminUserSearchHint.
  ///
  /// In tr, this message translates to:
  /// **'İsim veya TC ile ara'**
  String get adminUserSearchHint;

  /// No description provided for @adminUserTcExists.
  ///
  /// In tr, this message translates to:
  /// **'Bu TC ile kayıtlı bir hesap zaten var.'**
  String get adminUserTcExists;

  /// No description provided for @adminUserTcLength.
  ///
  /// In tr, this message translates to:
  /// **'TC 11 haneli olmalı'**
  String get adminUserTcLength;

  /// No description provided for @adminUserTcLocked.
  ///
  /// In tr, this message translates to:
  /// **'TC kimlik numarası değiştirilemez'**
  String get adminUserTcLocked;

  /// No description provided for @adminUserTcMissing.
  ///
  /// In tr, this message translates to:
  /// **'TC gerekli'**
  String get adminUserTcMissing;

  /// No description provided for @adminUserTcRequired.
  ///
  /// In tr, this message translates to:
  /// **'TC Kimlik No *'**
  String get adminUserTcRequired;

  /// No description provided for @adminUserType.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı Tipi'**
  String get adminUserType;

  /// No description provided for @adminUserUpdateFailed.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı bilgileri kaydedilemedi'**
  String get adminUserUpdateFailed;

  /// No description provided for @adminUserUpdated.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı bilgileri güncellendi'**
  String get adminUserUpdated;

  /// No description provided for @adminWelcome.
  ///
  /// In tr, this message translates to:
  /// **'Hoş geldiniz'**
  String get adminWelcome;

  /// No description provided for @adminWelcomeName.
  ///
  /// In tr, this message translates to:
  /// **'Hoş geldiniz, {name}'**
  String adminWelcomeName(String name);

  /// No description provided for @aileAgencyShareNote.
  ///
  /// In tr, this message translates to:
  /// **'Konum paylaşımınız Profil > Konum Takibi bölümünden yönetilir. Aşağıdan aileniz için bağlantı oluşturabilirsiniz.'**
  String get aileAgencyShareNote;

  /// No description provided for @aileApproxSub.
  ///
  /// In tr, this message translates to:
  /// **'Tam nokta yerine yaklaşık 1 km\'lik bölge gösterilir.'**
  String get aileApproxSub;

  /// No description provided for @aileApproxTitle.
  ///
  /// In tr, this message translates to:
  /// **'Yaklaşık konum'**
  String get aileApproxTitle;

  /// No description provided for @aileBadgeApprox.
  ///
  /// In tr, this message translates to:
  /// **'Yaklaşık'**
  String get aileBadgeApprox;

  /// No description provided for @aileBadgeExpired.
  ///
  /// In tr, this message translates to:
  /// **'Süresi doldu'**
  String get aileBadgeExpired;

  /// No description provided for @aileBadgeHidden.
  ///
  /// In tr, this message translates to:
  /// **'Gizli'**
  String get aileBadgeHidden;

  /// No description provided for @aileBadgeRevoked.
  ///
  /// In tr, this message translates to:
  /// **'İptal edildi'**
  String get aileBadgeRevoked;

  /// No description provided for @aileCancel.
  ///
  /// In tr, this message translates to:
  /// **'Vazgeç'**
  String get aileCancel;

  /// No description provided for @aileCreateAndShare.
  ///
  /// In tr, this message translates to:
  /// **'Oluştur ve paylaş'**
  String get aileCreateAndShare;

  /// No description provided for @aileDaysLeft.
  ///
  /// In tr, this message translates to:
  /// **'{count} gün kaldı'**
  String aileDaysLeft(int count);

  /// No description provided for @aileDeviceDesktop.
  ///
  /// In tr, this message translates to:
  /// **'Bilgisayar'**
  String get aileDeviceDesktop;

  /// No description provided for @aileDeviceMobile.
  ///
  /// In tr, this message translates to:
  /// **'Telefon'**
  String get aileDeviceMobile;

  /// No description provided for @aileEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Henüz bağlantı yok'**
  String get aileEmpty;

  /// No description provided for @aileEmptyBody.
  ///
  /// In tr, this message translates to:
  /// **'Yeni bağlantı oluşturup WhatsApp ile ailenize gönderin.'**
  String get aileEmptyBody;

  /// No description provided for @aileError.
  ///
  /// In tr, this message translates to:
  /// **'İşlem tamamlanamadı. İnternet bağlantınızı kontrol edip tekrar deneyin.'**
  String get aileError;

  /// No description provided for @aileGateBody.
  ///
  /// In tr, this message translates to:
  /// **'Konumunuzu ailenizle bağlantı üzerinden paylaşmak için Aile/Arkadaş veya Full Umre paketini seçin.'**
  String get aileGateBody;

  /// No description provided for @aileGateTitle.
  ///
  /// In tr, this message translates to:
  /// **'Aile Takibi, Aile ve Full paketlerde'**
  String get aileGateTitle;

  /// No description provided for @aileHiddenUntil.
  ///
  /// In tr, this message translates to:
  /// **'{time} saatine kadar gizli'**
  String aileHiddenUntil(String time);

  /// No description provided for @aileHide2h.
  ///
  /// In tr, this message translates to:
  /// **'2 saat gizle'**
  String get aileHide2h;

  /// No description provided for @aileHoursLeft.
  ///
  /// In tr, this message translates to:
  /// **'{count} saat kaldı'**
  String aileHoursLeft(int count);

  /// No description provided for @aileIntro.
  ///
  /// In tr, this message translates to:
  /// **'Evdeki yakınlarınız uygulama kurmadan, size özel bağlantıyla tarayıcıdan son konumunuzu görür. Geçmiş konumlar saklanmaz.'**
  String get aileIntro;

  /// No description provided for @aileLabelField.
  ///
  /// In tr, this message translates to:
  /// **'Kimin için? (ör. Annem)'**
  String get aileLabelField;

  /// No description provided for @aileLimitReached.
  ///
  /// In tr, this message translates to:
  /// **'En fazla 5 etkin bağlantınız olabilir. Yenisi için birini iptal edin.'**
  String get aileLimitReached;

  /// No description provided for @aileLinksTitle.
  ///
  /// In tr, this message translates to:
  /// **'Bağlantılar'**
  String get aileLinksTitle;

  /// No description provided for @aileLocationDenied.
  ///
  /// In tr, this message translates to:
  /// **'Konum izni verilmedi, paylaşım açılamadı.'**
  String get aileLocationDenied;

  /// No description provided for @aileNewLink.
  ///
  /// In tr, this message translates to:
  /// **'Yeni bağlantı'**
  String get aileNewLink;

  /// No description provided for @aileNoToken.
  ///
  /// In tr, this message translates to:
  /// **'Bu bağlantı başka bir cihazda oluşturulmuş; buradan yeniden paylaşılamaz. Yeni bir bağlantı oluşturun.'**
  String get aileNoToken;

  /// No description provided for @aileQuickSub.
  ///
  /// In tr, this message translates to:
  /// **'Ailenizle konumunuzu bağlantıyla paylaşın'**
  String get aileQuickSub;

  /// No description provided for @aileRevoke.
  ///
  /// In tr, this message translates to:
  /// **'İptal et'**
  String get aileRevoke;

  /// No description provided for @aileRevokeBody.
  ///
  /// In tr, this message translates to:
  /// **'Bu bağlantıyı bilen kimse artık konumunuzu göremez. Bu işlem geri alınamaz.'**
  String get aileRevokeBody;

  /// No description provided for @aileRevokeTitle.
  ///
  /// In tr, this message translates to:
  /// **'Bağlantı iptal edilsin mi?'**
  String get aileRevokeTitle;

  /// No description provided for @aileShare.
  ///
  /// In tr, this message translates to:
  /// **'Paylaş'**
  String get aileShare;

  /// No description provided for @aileShareMessage.
  ///
  /// In tr, this message translates to:
  /// **'Umre Rehberim: Konumumu bu bağlantıdan takip edebilirsin: {url}'**
  String aileShareMessage(String url);

  /// No description provided for @aileShareSwitchSub.
  ///
  /// In tr, this message translates to:
  /// **'Açıkken konumunuz arka planda güncellenir. Bağlantıyı bilenler son konumunuzu görür.'**
  String get aileShareSwitchSub;

  /// No description provided for @aileShareSwitchTitle.
  ///
  /// In tr, this message translates to:
  /// **'Konumumu paylaş'**
  String get aileShareSwitchTitle;

  /// No description provided for @aileTitle.
  ///
  /// In tr, this message translates to:
  /// **'Aile Takibi'**
  String get aileTitle;

  /// No description provided for @aileUnavailableBody.
  ///
  /// In tr, this message translates to:
  /// **'Aile Takibi, acente ile seyahat eden hacılara ve Aile/Full paket sahiplerine sunulur.'**
  String get aileUnavailableBody;

  /// No description provided for @aileUnavailableTitle.
  ///
  /// In tr, this message translates to:
  /// **'Bu özellik şu an hesabınız için kullanılamıyor'**
  String get aileUnavailableTitle;

  /// No description provided for @aileUnhide.
  ///
  /// In tr, this message translates to:
  /// **'Gizlemeyi kaldır'**
  String get aileUnhide;

  /// No description provided for @aileViews.
  ///
  /// In tr, this message translates to:
  /// **'Kim baktı'**
  String get aileViews;

  /// No description provided for @aileViewsCount.
  ///
  /// In tr, this message translates to:
  /// **'{count} kez'**
  String aileViewsCount(int count);

  /// No description provided for @aileViewsEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Henüz kimse bakmadı'**
  String get aileViewsEmpty;

  /// No description provided for @aileViewsTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kim baktı'**
  String get aileViewsTitle;

  /// No description provided for @appTitle.
  ///
  /// In tr, this message translates to:
  /// **'Umre Rehberim'**
  String get appTitle;

  /// No description provided for @authAccountIsAdmin.
  ///
  /// In tr, this message translates to:
  /// **'Bu hesap yönetici hesabıdır.'**
  String get authAccountIsAdmin;

  /// No description provided for @authAccountIsGuest.
  ///
  /// In tr, this message translates to:
  /// **'Bu hesap misafir hesabıdır.'**
  String get authAccountIsGuest;

  /// No description provided for @authAdmin.
  ///
  /// In tr, this message translates to:
  /// **'Yönetici'**
  String get authAdmin;

  /// No description provided for @authApiActMigrate.
  ///
  /// In tr, this message translates to:
  /// **'Hesaplar yeni girişe taşındı'**
  String get authApiActMigrate;

  /// No description provided for @authApiActSecretReset.
  ///
  /// In tr, this message translates to:
  /// **'PIN/şifre yenilendi'**
  String get authApiActSecretReset;

  /// No description provided for @authApiCancel.
  ///
  /// In tr, this message translates to:
  /// **'Vazgeç'**
  String get authApiCancel;

  /// No description provided for @authApiChangePassword.
  ///
  /// In tr, this message translates to:
  /// **'Şifremi değiştir'**
  String get authApiChangePassword;

  /// No description provided for @authApiChangePin.
  ///
  /// In tr, this message translates to:
  /// **'PIN\'imi değiştir'**
  String get authApiChangePin;

  /// No description provided for @authApiChangeSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Giriş için kullandığınız gizli bilgiyi yenileyin'**
  String get authApiChangeSubtitle;

  /// No description provided for @authApiCopied.
  ///
  /// In tr, this message translates to:
  /// **'Panoya kopyalandı.'**
  String get authApiCopied;

  /// No description provided for @authApiCopy.
  ///
  /// In tr, this message translates to:
  /// **'Kopyala'**
  String get authApiCopy;

  /// No description provided for @authApiCopyAllCsv.
  ///
  /// In tr, this message translates to:
  /// **'Tümünü kopyala (CSV)'**
  String get authApiCopyAllCsv;

  /// No description provided for @authApiCreate.
  ///
  /// In tr, this message translates to:
  /// **'Oluştur'**
  String get authApiCreate;

  /// No description provided for @authApiCredName.
  ///
  /// In tr, this message translates to:
  /// **'Ad Soyad'**
  String get authApiCredName;

  /// No description provided for @authApiCredTitle.
  ///
  /// In tr, this message translates to:
  /// **'Giriş Bilgileri'**
  String get authApiCredTitle;

  /// No description provided for @authApiCredWarningPassword.
  ///
  /// In tr, this message translates to:
  /// **'Bu şifre yalnızca şimdi görünür; kapatınca bir daha gösterilemez.'**
  String get authApiCredWarningPassword;

  /// No description provided for @authApiCredWarningPin.
  ///
  /// In tr, this message translates to:
  /// **'Bu PIN yalnızca şimdi görünür; kapatınca bir daha gösterilemez.'**
  String get authApiCredWarningPin;

  /// No description provided for @authApiDocWriteFailed.
  ///
  /// In tr, this message translates to:
  /// **'Hesap açıldı ancak kişi kaydı yazılamadı. Aşağıdaki bilgileri not edin ve formu yeniden kaydedin; aynı hesap kullanılacak.'**
  String get authApiDocWriteFailed;

  /// No description provided for @authApiErrAccountDisabled.
  ///
  /// In tr, this message translates to:
  /// **'Bu hesap devre dışı bırakılmış. Rehberinize veya acentenize başvurun.'**
  String get authApiErrAccountDisabled;

  /// No description provided for @authApiErrAccountNotReady.
  ///
  /// In tr, this message translates to:
  /// **'Hesabınızın kaydı henüz tamamlanmamış. Rehberinize veya acentenize başvurun.'**
  String get authApiErrAccountNotReady;

  /// No description provided for @authApiErrAgencyNotFound.
  ///
  /// In tr, this message translates to:
  /// **'Acente bulunamadı.'**
  String get authApiErrAgencyNotFound;

  /// No description provided for @authApiErrForbidden.
  ///
  /// In tr, this message translates to:
  /// **'Bu işlem için yetkiniz yok.'**
  String get authApiErrForbidden;

  /// No description provided for @authApiErrInvalidCredentials.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı ID veya PIN hatalı ya da çok fazla deneme yapıldı; biraz sonra tekrar deneyin.'**
  String get authApiErrInvalidCredentials;

  /// No description provided for @authApiErrInvalidSecret.
  ///
  /// In tr, this message translates to:
  /// **'Yeni PIN/şifre kurallara uymuyor.'**
  String get authApiErrInvalidSecret;

  /// No description provided for @authApiErrLocked.
  ///
  /// In tr, this message translates to:
  /// **'Çok fazla hatalı deneme yapıldı. Hesap geçici olarak kilitlendi; {minutes} dakika sonra tekrar deneyin.'**
  String authApiErrLocked(int minutes);

  /// No description provided for @authApiErrLockedShort.
  ///
  /// In tr, this message translates to:
  /// **'Çok fazla hatalı deneme yapıldı. Hesap geçici olarak kilitlendi; biraz sonra tekrar deneyin.'**
  String get authApiErrLockedShort;

  /// No description provided for @authApiErrMigrationDone.
  ///
  /// In tr, this message translates to:
  /// **'Taşıma tamamlanmış; bu işlem artık kapalı.'**
  String get authApiErrMigrationDone;

  /// No description provided for @authApiErrNetwork.
  ///
  /// In tr, this message translates to:
  /// **'Sunucuya ulaşılamadı. İnternet bağlantınızı kontrol edin.'**
  String get authApiErrNetwork;

  /// No description provided for @authApiErrNoSecret.
  ///
  /// In tr, this message translates to:
  /// **'Bu hesabın henüz PIN/şifresi yok. Rehberinizden yeni PIN isteyin.'**
  String get authApiErrNoSecret;

  /// No description provided for @authApiErrNotFound.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı bulunamadı.'**
  String get authApiErrNotFound;

  /// No description provided for @authApiErrRateLimited.
  ///
  /// In tr, this message translates to:
  /// **'Çok fazla deneme yapıldı. Lütfen birkaç dakika sonra tekrar deneyin.'**
  String get authApiErrRateLimited;

  /// No description provided for @authApiErrRateLimitedWait.
  ///
  /// In tr, this message translates to:
  /// **'Çok fazla deneme yapıldı. Lütfen {minutes} dakika sonra tekrar deneyin.'**
  String authApiErrRateLimitedWait(int minutes);

  /// No description provided for @authApiErrReauth.
  ///
  /// In tr, this message translates to:
  /// **'Güvenlik için çıkış yapıp yeniden giriş yapmanız gerekiyor.'**
  String get authApiErrReauth;

  /// No description provided for @authApiErrServer.
  ///
  /// In tr, this message translates to:
  /// **'Sunucuda bir hata oluştu. Lütfen daha sonra tekrar deneyin.'**
  String get authApiErrServer;

  /// No description provided for @authApiErrUnauthenticated.
  ///
  /// In tr, this message translates to:
  /// **'Oturumunuz doğrulanamadı. Lütfen çıkış yapıp tekrar giriş yapın.'**
  String get authApiErrUnauthenticated;

  /// No description provided for @authApiErrUnknown.
  ///
  /// In tr, this message translates to:
  /// **'Beklenmeyen bir hata oluştu.'**
  String get authApiErrUnknown;

  /// No description provided for @authApiErrValidation.
  ///
  /// In tr, this message translates to:
  /// **'Girilen bilgiler geçersiz.'**
  String get authApiErrValidation;

  /// No description provided for @authApiErrWeakSecret.
  ///
  /// In tr, this message translates to:
  /// **'Bu PIN kolay tahmin edilir (ör. 123456, 111111). Başka bir PIN seçin.'**
  String get authApiErrWeakSecret;

  /// No description provided for @authApiErrWrongOldSecret.
  ///
  /// In tr, this message translates to:
  /// **'Mevcut PIN/şifre hatalı.'**
  String get authApiErrWrongOldSecret;

  /// No description provided for @authApiFieldRequired.
  ///
  /// In tr, this message translates to:
  /// **'Bu alan zorunludur.'**
  String get authApiFieldRequired;

  /// No description provided for @authApiForgot.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı ID veya PIN\'imi unuttum'**
  String get authApiForgot;

  /// No description provided for @authApiForgotBody.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı ID ve PIN\'inizi rehberiniz veya acenteniz verir. Unuttuysanız rehberinize veya acentenize başvurun; size yeni bir PIN oluşturabilirler.'**
  String get authApiForgotBody;

  /// No description provided for @authApiForgotTitle.
  ///
  /// In tr, this message translates to:
  /// **'Giriş bilgilerinizi mi unuttunuz?'**
  String get authApiForgotTitle;

  /// No description provided for @authApiHideSecret.
  ///
  /// In tr, this message translates to:
  /// **'Gizle'**
  String get authApiHideSecret;

  /// No description provided for @authApiLeave.
  ///
  /// In tr, this message translates to:
  /// **'Çık'**
  String get authApiLeave;

  /// No description provided for @authApiLoginIdError.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı ID 7 haneli bir numara olmalıdır.'**
  String get authApiLoginIdError;

  /// No description provided for @authApiLoginIdLabel.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı ID'**
  String get authApiLoginIdLabel;

  /// No description provided for @authApiLoginIdNone.
  ///
  /// In tr, this message translates to:
  /// **'Henüz yok'**
  String get authApiLoginIdNone;

  /// No description provided for @authApiMigrateConfirm.
  ///
  /// In tr, this message translates to:
  /// **'{count} hesap yeni girişe taşınacak ve TC ile giriş kapanacak. Bu işlem geri alınamaz. Devam edilsin mi?'**
  String authApiMigrateConfirm(int count);

  /// No description provided for @authApiMigrateCount.
  ///
  /// In tr, this message translates to:
  /// **'{count} hesap taşınacak.'**
  String authApiMigrateCount(int count);

  /// No description provided for @authApiMigrateDesc.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı ID ve PIN/şifre ile girişe geçiş'**
  String get authApiMigrateDesc;

  /// No description provided for @authApiMigrateDone.
  ///
  /// In tr, this message translates to:
  /// **'{count} hesap taşındı.'**
  String authApiMigrateDone(int count);

  /// No description provided for @authApiMigrateDryRun.
  ///
  /// In tr, this message translates to:
  /// **'Önizle (değişiklik yapmaz)'**
  String get authApiMigrateDryRun;

  /// No description provided for @authApiMigrateIntro.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı ID\'si olmayan tüm hesaplara (esnaf hariç) Kullanıcı ID ve PIN/şifre üretilir ve TC ile giriş kapanır. Bu işlem bir kez yapılır. Önce önizleyin.'**
  String get authApiMigrateIntro;

  /// No description provided for @authApiMigrateLeaveBody.
  ///
  /// In tr, this message translates to:
  /// **'Giriş bilgileri bir daha gösterilemez. Kopyaladığınızdan emin misiniz?'**
  String get authApiMigrateLeaveBody;

  /// No description provided for @authApiMigrateLeaveTitle.
  ///
  /// In tr, this message translates to:
  /// **'Sayfadan çıkılsın mı?'**
  String get authApiMigrateLeaveTitle;

  /// No description provided for @authApiMigrateNone.
  ///
  /// In tr, this message translates to:
  /// **'Taşınacak hesap yok.'**
  String get authApiMigrateNone;

  /// No description provided for @authApiMigrateOnceWarning.
  ///
  /// In tr, this message translates to:
  /// **'DİKKAT: Bu giriş bilgileri yalnızca şimdi gösterilir ve bir daha görüntülenemez. Sayfayı kapatmadan önce \"Tümünü kopyala (CSV)\" ile kopyalayıp güvenli bir yerde saklayın.'**
  String get authApiMigrateOnceWarning;

  /// No description provided for @authApiMigratePartial.
  ///
  /// In tr, this message translates to:
  /// **'{count} hesap taşındı, {failed} hesap taşınamadı. Uyarıları okuyup taşımayı yeniden başlatın.'**
  String authApiMigratePartial(int count, int failed);

  /// No description provided for @authApiMigrateRun.
  ///
  /// In tr, this message translates to:
  /// **'Taşımayı başlat'**
  String get authApiMigrateRun;

  /// No description provided for @authApiMigrateTitle.
  ///
  /// In tr, this message translates to:
  /// **'Hesapları yeni girişe taşı'**
  String get authApiMigrateTitle;

  /// No description provided for @authApiMigrateWarnings.
  ///
  /// In tr, this message translates to:
  /// **'Uyarılar'**
  String get authApiMigrateWarnings;

  /// No description provided for @authApiMismatch.
  ///
  /// In tr, this message translates to:
  /// **'Yeni değerler birbiriyle aynı değil.'**
  String get authApiMismatch;

  /// No description provided for @authApiNewPassword.
  ///
  /// In tr, this message translates to:
  /// **'Yeni şifre'**
  String get authApiNewPassword;

  /// No description provided for @authApiNewPin.
  ///
  /// In tr, this message translates to:
  /// **'Yeni PIN'**
  String get authApiNewPin;

  /// No description provided for @authApiNotConnected.
  ///
  /// In tr, this message translates to:
  /// **'Sunucu henüz bağlı değil.'**
  String get authApiNotConnected;

  /// No description provided for @authApiOk.
  ///
  /// In tr, this message translates to:
  /// **'Tamam'**
  String get authApiOk;

  /// No description provided for @authApiOldPassword.
  ///
  /// In tr, this message translates to:
  /// **'Mevcut şifre'**
  String get authApiOldPassword;

  /// No description provided for @authApiOldPin.
  ///
  /// In tr, this message translates to:
  /// **'Mevcut PIN'**
  String get authApiOldPin;

  /// No description provided for @authApiPasswordChanged.
  ///
  /// In tr, this message translates to:
  /// **'Şifreniz değiştirildi.'**
  String get authApiPasswordChanged;

  /// No description provided for @authApiPasswordError.
  ///
  /// In tr, this message translates to:
  /// **'Şifre en az 8 karakter olmalıdır.'**
  String get authApiPasswordError;

  /// No description provided for @authApiPasswordLabel.
  ///
  /// In tr, this message translates to:
  /// **'Şifre'**
  String get authApiPasswordLabel;

  /// No description provided for @authApiPinChanged.
  ///
  /// In tr, this message translates to:
  /// **'PIN\'iniz değiştirildi.'**
  String get authApiPinChanged;

  /// No description provided for @authApiPinError.
  ///
  /// In tr, this message translates to:
  /// **'PIN 6 haneli bir sayı olmalıdır.'**
  String get authApiPinError;

  /// No description provided for @authApiPinLabel.
  ///
  /// In tr, this message translates to:
  /// **'PIN'**
  String get authApiPinLabel;

  /// No description provided for @authApiReloginPassword.
  ///
  /// In tr, this message translates to:
  /// **'Şifre değiştirildi. Güvenlik için tüm oturumlar kapatıldı; yeni şifre ile giriş yapın.'**
  String get authApiReloginPassword;

  /// No description provided for @authApiReloginPin.
  ///
  /// In tr, this message translates to:
  /// **'PIN değiştirildi. Güvenlik için tüm oturumlar kapatıldı; yeni PIN ile giriş yapın.'**
  String get authApiReloginPin;

  /// No description provided for @authApiRepeatPassword.
  ///
  /// In tr, this message translates to:
  /// **'Yeni şifre (tekrar)'**
  String get authApiRepeatPassword;

  /// No description provided for @authApiRepeatPin.
  ///
  /// In tr, this message translates to:
  /// **'Yeni PIN (tekrar)'**
  String get authApiRepeatPin;

  /// No description provided for @authApiResetPassword.
  ///
  /// In tr, this message translates to:
  /// **'Yeni şifre ver'**
  String get authApiResetPassword;

  /// No description provided for @authApiResetPasswordConfirm.
  ///
  /// In tr, this message translates to:
  /// **'{name} için yeni şifre oluşturulsun mu? Eski şifre geçersiz olur.'**
  String authApiResetPasswordConfirm(String name);

  /// No description provided for @authApiResetPin.
  ///
  /// In tr, this message translates to:
  /// **'Yeni PIN ver'**
  String get authApiResetPin;

  /// No description provided for @authApiResetPinConfirm.
  ///
  /// In tr, this message translates to:
  /// **'{name} için yeni PIN oluşturulsun mu? Eski PIN geçersiz olur.'**
  String authApiResetPinConfirm(String name);

  /// No description provided for @authApiSameAsOld.
  ///
  /// In tr, this message translates to:
  /// **'Yeni değer mevcut olanla aynı olamaz.'**
  String get authApiSameAsOld;

  /// No description provided for @authApiSave.
  ///
  /// In tr, this message translates to:
  /// **'Kaydet'**
  String get authApiSave;

  /// No description provided for @authApiShareIntro.
  ///
  /// In tr, this message translates to:
  /// **'Umre Rehberim giriş bilgileriniz'**
  String get authApiShareIntro;

  /// No description provided for @authApiShareWhatsapp.
  ///
  /// In tr, this message translates to:
  /// **'WhatsApp ile paylaş'**
  String get authApiShareWhatsapp;

  /// No description provided for @authApiShowSecret.
  ///
  /// In tr, this message translates to:
  /// **'Göster'**
  String get authApiShowSecret;

  /// No description provided for @authApiSoon.
  ///
  /// In tr, this message translates to:
  /// **'Yakında'**
  String get authApiSoon;

  /// No description provided for @authApiViewAs.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı gözünden görüntüle'**
  String get authApiViewAs;

  /// No description provided for @authApiViewAsSoon.
  ///
  /// In tr, this message translates to:
  /// **'Bu özellik yakında aktif olacak'**
  String get authApiViewAsSoon;

  /// No description provided for @authFieldRequired.
  ///
  /// In tr, this message translates to:
  /// **'Bu alan boş bırakılamaz'**
  String get authFieldRequired;

  /// No description provided for @authGreeting.
  ///
  /// In tr, this message translates to:
  /// **'Selamün Aleyküm!'**
  String get authGreeting;

  /// No description provided for @authGuest.
  ///
  /// In tr, this message translates to:
  /// **'Misafir'**
  String get authGuest;

  /// No description provided for @authKvkkAbroadBody.
  ///
  /// In tr, this message translates to:
  /// **'Google Firebase ve Cloudflare hizmetleri aracılığıyla yurt dışında bulunan güvenli sunucularda depolanabilir. Bu aktarım KVKK\'ya uygun teknik ve idari tedbirler alınarak yapılmaktadır.'**
  String get authKvkkAbroadBody;

  /// No description provided for @authKvkkAbroadTitle.
  ///
  /// In tr, this message translates to:
  /// **'Yurt Dışına Veri Aktarımı:'**
  String get authKvkkAbroadTitle;

  /// No description provided for @authKvkkAccept.
  ///
  /// In tr, this message translates to:
  /// **'Onaylıyorum'**
  String get authKvkkAccept;

  /// No description provided for @authKvkkCheckbox.
  ///
  /// In tr, this message translates to:
  /// **'KVKK Aydınlatma Metnini okudum ve onaylıyorum'**
  String get authKvkkCheckbox;

  /// No description provided for @authKvkkControllerTitle.
  ///
  /// In tr, this message translates to:
  /// **'Veri Sorumlusu:'**
  String get authKvkkControllerTitle;

  /// No description provided for @authKvkkDataBody.
  ///
  /// In tr, this message translates to:
  /// **'Kimlik (Ad, Soyad, T.C. Kimlik No), İletişim (Telefon No), Demografik (Cinsiyet, Yaş), Konum bilgisi (anlık ve uygulama kullanım süresince), Uygulama kullanım verileri.'**
  String get authKvkkDataBody;

  /// No description provided for @authKvkkDataTitle.
  ///
  /// In tr, this message translates to:
  /// **'İşlenen Kişisel Veriler:'**
  String get authKvkkDataTitle;

  /// No description provided for @authKvkkLocationBody.
  ///
  /// In tr, this message translates to:
  /// **'Uygulama aktifken takip edilir, arka planda veya çıkıldığında izleme yapılmaz. Kullanıcının güvenliği ve rehberlik hizmeti için zorunludur. İzin verilmemesi durumunda bazı temel özellikler kullanılamayabilir.'**
  String get authKvkkLocationBody;

  /// No description provided for @authKvkkLocationTitle.
  ///
  /// In tr, this message translates to:
  /// **'Konum Bilgisi:'**
  String get authKvkkLocationTitle;

  /// No description provided for @authKvkkMethodBody.
  ///
  /// In tr, this message translates to:
  /// **'Mobil uygulama üzerinden elektronik ortamda, kullanıcının açık rızasına dayanarak, KVKK\'nın 5. ve 6. maddeleri kapsamında toplanmakta ve işlenmektedir.'**
  String get authKvkkMethodBody;

  /// No description provided for @authKvkkMethodTitle.
  ///
  /// In tr, this message translates to:
  /// **'Toplanma Yöntemi ve Hukuki Sebebi:'**
  String get authKvkkMethodTitle;

  /// No description provided for @authKvkkPurposeBody.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı hesabı oluşturma ve yönetme, Umre Rehberi ile anlık iletişim, acil durumlarda kullanıcıya ulaşma, grup takibi ve rehberlik hizmetleri, bildirim gönderme, uygulama güvenliğini sağlama.'**
  String get authKvkkPurposeBody;

  /// No description provided for @authKvkkPurposeTitle.
  ///
  /// In tr, this message translates to:
  /// **'İşlenme Amaçları:'**
  String get authKvkkPurposeTitle;

  /// No description provided for @authKvkkReject.
  ///
  /// In tr, this message translates to:
  /// **'Reddet'**
  String get authKvkkReject;

  /// No description provided for @authKvkkRequired.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen KVKK Aydınlatma Metnini onaylayın.'**
  String get authKvkkRequired;

  /// No description provided for @authKvkkRightsBody.
  ///
  /// In tr, this message translates to:
  /// **'Verilerinizin işlenip işlenmediğini öğrenme, bilgi talep etme, yanlış veya eksik verilerin düzeltilmesini isteme, verilerin silinmesini veya yok edilmesini talep etme. Taleplerinizi support@umrerehberim.com adresine iletebilirsiniz.'**
  String get authKvkkRightsBody;

  /// No description provided for @authKvkkRightsTitle.
  ///
  /// In tr, this message translates to:
  /// **'KVKK Kapsamındaki Haklarınız:'**
  String get authKvkkRightsTitle;

  /// No description provided for @authKvkkTitle.
  ///
  /// In tr, this message translates to:
  /// **'KVKK Aydınlatma Metni'**
  String get authKvkkTitle;

  /// No description provided for @authKvkkTransferBody.
  ///
  /// In tr, this message translates to:
  /// **'Üçüncü kişilerle paylaşılmaz. Hacktapot Software\'in güvenli veri merkezlerinde saklanır. Yalnızca savcılık/adli makam kararı bulunması halinde veya ilgili tur firması ile sınırlı olarak paylaşılabilir.'**
  String get authKvkkTransferBody;

  /// No description provided for @authKvkkTransferTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kişisel Verilerin Aktarılması:'**
  String get authKvkkTransferTitle;

  /// No description provided for @authLoginButton.
  ///
  /// In tr, this message translates to:
  /// **'Giriş Yap'**
  String get authLoginButton;

  /// No description provided for @authLoginFailed.
  ///
  /// In tr, this message translates to:
  /// **'Giriş yapılırken bir hata oluştu.'**
  String get authLoginFailed;

  /// No description provided for @authLoginType.
  ///
  /// In tr, this message translates to:
  /// **'Giriş Tipi'**
  String get authLoginType;

  /// No description provided for @authNoInternet.
  ///
  /// In tr, this message translates to:
  /// **'İnternet bağlantısı yok. Lütfen bağlantınızı kontrol edip tekrar deneyin.'**
  String get authNoInternet;

  /// No description provided for @authSplashCheckingInternet.
  ///
  /// In tr, this message translates to:
  /// **'İnternet bağlantısı kontrol ediliyor...'**
  String get authSplashCheckingInternet;

  /// No description provided for @authSplashDataLoadFailed.
  ///
  /// In tr, this message translates to:
  /// **'Veriler yüklenemedi. Lütfen internet bağlantınızı kontrol edin.'**
  String get authSplashDataLoadFailed;

  /// No description provided for @authSplashDataNotFound.
  ///
  /// In tr, this message translates to:
  /// **'Veriler bulunamadı. Lütfen internet bağlantınızı kontrol edin.'**
  String get authSplashDataNotFound;

  /// No description provided for @authSplashDataStale.
  ///
  /// In tr, this message translates to:
  /// **'Verileriniz güncel değil. Lütfen internet bağlantınızı kontrol edin.'**
  String get authSplashDataStale;

  /// No description provided for @authSplashLoadingData.
  ///
  /// In tr, this message translates to:
  /// **'Veriler yükleniyor...'**
  String get authSplashLoadingData;

  /// No description provided for @authSplashLoadingLocal.
  ///
  /// In tr, this message translates to:
  /// **'Yerel veriler yükleniyor...'**
  String get authSplashLoadingLocal;

  /// No description provided for @authSplashLoadingUser.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı bilgileri yükleniyor...'**
  String get authSplashLoadingUser;

  /// No description provided for @authSplashNoInternetLogin.
  ///
  /// In tr, this message translates to:
  /// **'İnternet bağlantısı yok. Lütfen TC numaranız ile giriş yapın.'**
  String get authSplashNoInternetLogin;

  /// No description provided for @authSplashOfflineStart.
  ///
  /// In tr, this message translates to:
  /// **'Offline modda başlatılıyor...'**
  String get authSplashOfflineStart;

  /// No description provided for @authSplashPleaseLogin.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen TC numaranız ile giriş yapın.'**
  String get authSplashPleaseLogin;

  /// No description provided for @authSplashUserNotFound.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı bulunamadı.'**
  String get authSplashUserNotFound;

  /// No description provided for @authTagline.
  ///
  /// In tr, this message translates to:
  /// **'Kutsal Yolculukta\nYanınızdaki Rehber'**
  String get authTagline;

  /// No description provided for @authTcLabel.
  ///
  /// In tr, this message translates to:
  /// **'TC Kimlik No'**
  String get authTcLabel;

  /// No description provided for @authTcLengthError.
  ///
  /// In tr, this message translates to:
  /// **'TC kimlik numarası 11 haneli olmalıdır'**
  String get authTcLengthError;

  /// No description provided for @authTooManyRequests.
  ///
  /// In tr, this message translates to:
  /// **'Çok fazla deneme yapıldı. Lütfen biraz sonra tekrar deneyin.'**
  String get authTooManyRequests;

  /// No description provided for @authUserDisabled.
  ///
  /// In tr, this message translates to:
  /// **'Bu hesap devre dışı bırakılmış.'**
  String get authUserDisabled;

  /// No description provided for @authUserNotFound.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı bulunamadı. Lütfen kayıt olun.'**
  String get authUserNotFound;

  /// No description provided for @bireyselAccountBadge.
  ///
  /// In tr, this message translates to:
  /// **'Bireysel hesap'**
  String get bireyselAccountBadge;

  /// No description provided for @bireyselAgencyOnlyBody.
  ///
  /// In tr, this message translates to:
  /// **'Bu özellik anlaşmalı acentelerle seyahat eden hacılara sunulur.'**
  String get bireyselAgencyOnlyBody;

  /// No description provided for @bireyselAgencyOnlyTitle.
  ///
  /// In tr, this message translates to:
  /// **'Acente hacılarına özel'**
  String get bireyselAgencyOnlyTitle;

  /// No description provided for @bireyselConsentSaveFailed.
  ///
  /// In tr, this message translates to:
  /// **'Tercihiniz kaydedilemedi. Lütfen tekrar deneyin.'**
  String get bireyselConsentSaveFailed;

  /// No description provided for @bireyselDeleteAccount.
  ///
  /// In tr, this message translates to:
  /// **'Hesabımı sil'**
  String get bireyselDeleteAccount;

  /// No description provided for @bireyselDeleteAccountSub.
  ///
  /// In tr, this message translates to:
  /// **'Hesabınız ve bilgileriniz kalıcı olarak silinir'**
  String get bireyselDeleteAccountSub;

  /// No description provided for @bireyselDeleteAuthPartial.
  ///
  /// In tr, this message translates to:
  /// **'Verileriniz silindi, hesap kaydı kapatılamadı; tekrar giriş yapıp vazgeçerseniz tamamen silinir.'**
  String get bireyselDeleteAuthPartial;

  /// No description provided for @bireyselDeleteConfirmBody.
  ///
  /// In tr, this message translates to:
  /// **'Hesabınız, profil bilgileriniz ve kurduğunuz Toplu Hatim grupları kalıcı olarak silinir; üyesi olduğunuz gruplardan ayrılırsınız. Bu işlem geri alınamaz.\n\nDevam etmek için Google hesabınızla yeniden doğrulama istenecek.'**
  String get bireyselDeleteConfirmBody;

  /// No description provided for @bireyselDeleteConfirmButton.
  ///
  /// In tr, this message translates to:
  /// **'Kalıcı olarak sil'**
  String get bireyselDeleteConfirmButton;

  /// No description provided for @bireyselDeleteConfirmTitle.
  ///
  /// In tr, this message translates to:
  /// **'Hesabınız silinsin mi?'**
  String get bireyselDeleteConfirmTitle;

  /// No description provided for @bireyselDeleteFailed.
  ///
  /// In tr, this message translates to:
  /// **'Hesap silinemedi. Lütfen tekrar deneyin.'**
  String get bireyselDeleteFailed;

  /// No description provided for @bireyselDeleteHatimFailed.
  ///
  /// In tr, this message translates to:
  /// **'Toplu Hatim gruplarınızdan çıkılamadı; hesabınız silinmedi. Lütfen tekrar deneyin.'**
  String get bireyselDeleteHatimFailed;

  /// No description provided for @bireyselDeleteOffline.
  ///
  /// In tr, this message translates to:
  /// **'Hesap silmek için internet bağlantısı gerekir. Lütfen bağlantınızı kontrol edip tekrar deneyin.'**
  String get bireyselDeleteOffline;

  /// No description provided for @bireyselDeleteRecentLogin.
  ///
  /// In tr, this message translates to:
  /// **'Güvenlik için çıkış yapıp yeniden giriş yapın, sonra tekrar deneyin.'**
  String get bireyselDeleteRecentLogin;

  /// No description provided for @bireyselDeleteWrongAccount.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen bu uygulamada kullandığınız Google hesabını seçin.'**
  String get bireyselDeleteWrongAccount;

  /// No description provided for @bireyselDeleted.
  ///
  /// In tr, this message translates to:
  /// **'Hesabınız silindi.'**
  String get bireyselDeleted;

  /// No description provided for @bireyselDeleting.
  ///
  /// In tr, this message translates to:
  /// **'Hesabınız siliniyor…'**
  String get bireyselDeleting;

  /// No description provided for @bireyselEmail.
  ///
  /// In tr, this message translates to:
  /// **'E-posta'**
  String get bireyselEmail;

  /// No description provided for @bireyselErrAccountExists.
  ///
  /// In tr, this message translates to:
  /// **'Bu e-posta adresi başka bir giriş yöntemiyle kayıtlı.'**
  String get bireyselErrAccountExists;

  /// No description provided for @bireyselErrEmailUnverified.
  ///
  /// In tr, this message translates to:
  /// **'Google hesabınızın e-posta adresi doğrulanmamış.'**
  String get bireyselErrEmailUnverified;

  /// No description provided for @bireyselErrGeneric.
  ///
  /// In tr, this message translates to:
  /// **'Google ile giriş yapılamadı. Lütfen tekrar deneyin.'**
  String get bireyselErrGeneric;

  /// No description provided for @bireyselErrUnavailable.
  ///
  /// In tr, this message translates to:
  /// **'Google ile giriş şu anda kullanılamıyor. Lütfen daha sonra tekrar deneyin.'**
  String get bireyselErrUnavailable;

  /// No description provided for @bireyselGoogleContinue.
  ///
  /// In tr, this message translates to:
  /// **'Google ile devam et'**
  String get bireyselGoogleContinue;

  /// No description provided for @bireyselJoinAgency.
  ///
  /// In tr, this message translates to:
  /// **'Acenteme katıl'**
  String get bireyselJoinAgency;

  /// No description provided for @bireyselJoinAgencySnack.
  ///
  /// In tr, this message translates to:
  /// **'Bu özellik yakında kullanıma açılacak.'**
  String get bireyselJoinAgencySnack;

  /// No description provided for @bireyselJoinAgencySub.
  ///
  /// In tr, this message translates to:
  /// **'Acentenizle eşleşin, sefer bilgileriniz uygulamaya gelsin'**
  String get bireyselJoinAgencySub;

  /// No description provided for @bireyselLocationConsentBody.
  ///
  /// In tr, this message translates to:
  /// **'İsteğe bağlı. Konum gerektiren özellikler için izin verirsiniz; dilediğiniz zaman profilden değiştirebilirsiniz.'**
  String get bireyselLocationConsentBody;

  /// No description provided for @bireyselLocationConsentTitle.
  ///
  /// In tr, this message translates to:
  /// **'Konum için açık rıza'**
  String get bireyselLocationConsentTitle;

  /// No description provided for @bireyselNameError.
  ///
  /// In tr, this message translates to:
  /// **'Ad soyad 2 ile 60 karakter arasında olmalı'**
  String get bireyselNameError;

  /// No description provided for @bireyselNameLabel.
  ///
  /// In tr, this message translates to:
  /// **'Ad Soyad'**
  String get bireyselNameLabel;

  /// No description provided for @bireyselOrDivider.
  ///
  /// In tr, this message translates to:
  /// **'veya acentenizin verdiği bilgilerle girin'**
  String get bireyselOrDivider;

  /// No description provided for @bireyselRegisterButton.
  ///
  /// In tr, this message translates to:
  /// **'Kaydı tamamla'**
  String get bireyselRegisterButton;

  /// No description provided for @bireyselRegisterFailed.
  ///
  /// In tr, this message translates to:
  /// **'Kayıt tamamlanamadı. Lütfen tekrar deneyin.'**
  String get bireyselRegisterFailed;

  /// No description provided for @bireyselRegisterIntro.
  ///
  /// In tr, this message translates to:
  /// **'Hoş geldiniz! Hesabınızı oluşturmak için birkaç bilgi gerekiyor.'**
  String get bireyselRegisterIntro;

  /// No description provided for @bireyselRegisterTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kaydı Tamamla'**
  String get bireyselRegisterTitle;

  /// No description provided for @bireyselSignedInAs.
  ///
  /// In tr, this message translates to:
  /// **'Google hesabı: {email}'**
  String bireyselSignedInAs(String email);

  /// No description provided for @ccActAgencyCreate.
  ///
  /// In tr, this message translates to:
  /// **'Acente eklendi'**
  String get ccActAgencyCreate;

  /// No description provided for @ccActAgencyDelete.
  ///
  /// In tr, this message translates to:
  /// **'Acente silindi'**
  String get ccActAgencyDelete;

  /// No description provided for @ccActAgencyUpdate.
  ///
  /// In tr, this message translates to:
  /// **'Acente güncellendi'**
  String get ccActAgencyUpdate;

  /// No description provided for @ccActContentUpdate.
  ///
  /// In tr, this message translates to:
  /// **'İçerik güncelledi'**
  String get ccActContentUpdate;

  /// No description provided for @ccActCouponCreate.
  ///
  /// In tr, this message translates to:
  /// **'Kupon oluşturuldu'**
  String get ccActCouponCreate;

  /// No description provided for @ccActCouponDelete.
  ///
  /// In tr, this message translates to:
  /// **'Kupon silindi'**
  String get ccActCouponDelete;

  /// No description provided for @ccActCouponUpdate.
  ///
  /// In tr, this message translates to:
  /// **'Kupon güncellendi'**
  String get ccActCouponUpdate;

  /// No description provided for @ccActEntitlementUpdate.
  ///
  /// In tr, this message translates to:
  /// **'Paket hakkı güncelledi'**
  String get ccActEntitlementUpdate;

  /// No description provided for @ccActFinanceSettings.
  ///
  /// In tr, this message translates to:
  /// **'Finans ayarları değişti'**
  String get ccActFinanceSettings;

  /// No description provided for @ccActHatimModerate.
  ///
  /// In tr, this message translates to:
  /// **'Toplu Hatim moderasyonu'**
  String get ccActHatimModerate;

  /// No description provided for @ccActMerchantCreate.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf hesabı açıldı'**
  String get ccActMerchantCreate;

  /// No description provided for @ccActMessageSend.
  ///
  /// In tr, this message translates to:
  /// **'Acenteye mesaj gönderildi'**
  String get ccActMessageSend;

  /// No description provided for @ccActPaymentsToggle.
  ///
  /// In tr, this message translates to:
  /// **'Demo ödeme anahtarını değiştirdi'**
  String get ccActPaymentsToggle;

  /// No description provided for @ccActPlatformSettings.
  ///
  /// In tr, this message translates to:
  /// **'Platform ayarlarını güncelledi'**
  String get ccActPlatformSettings;

  /// No description provided for @ccActPointsBulk.
  ///
  /// In tr, this message translates to:
  /// **'Toplu puan yüklendi'**
  String get ccActPointsBulk;

  /// No description provided for @ccActPointsGrant.
  ///
  /// In tr, this message translates to:
  /// **'Puan hareketi eklendi'**
  String get ccActPointsGrant;

  /// No description provided for @ccActPointsRevert.
  ///
  /// In tr, this message translates to:
  /// **'Puan hareketi geri alındı'**
  String get ccActPointsRevert;

  /// No description provided for @ccActReviewModerate.
  ///
  /// In tr, this message translates to:
  /// **'Değerlendirme moderasyonu'**
  String get ccActReviewModerate;

  /// No description provided for @ccActRiskReview.
  ///
  /// In tr, this message translates to:
  /// **'Risk alarmı incelendi'**
  String get ccActRiskReview;

  /// No description provided for @ccActRoleChange.
  ///
  /// In tr, this message translates to:
  /// **'Rol değiştirildi'**
  String get ccActRoleChange;

  /// No description provided for @ccActSettlementPaid.
  ///
  /// In tr, this message translates to:
  /// **'Hak ediş ödendi'**
  String get ccActSettlementPaid;

  /// No description provided for @ccActSettlementUpdate.
  ///
  /// In tr, this message translates to:
  /// **'Hak ediş güncellendi'**
  String get ccActSettlementUpdate;

  /// No description provided for @ccActShopCreate.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan eklendi'**
  String get ccActShopCreate;

  /// No description provided for @ccActShopDelete.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan silindi'**
  String get ccActShopDelete;

  /// No description provided for @ccActShopToggle.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan aktifliği değişti'**
  String get ccActShopToggle;

  /// No description provided for @ccActShopUpdate.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan güncellendi'**
  String get ccActShopUpdate;

  /// No description provided for @ccActTxCancel.
  ///
  /// In tr, this message translates to:
  /// **'İşlem iptal edildi'**
  String get ccActTxCancel;

  /// No description provided for @ccActUserCreate.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı oluşturuldu'**
  String get ccActUserCreate;

  /// No description provided for @ccActUserDelete.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı silindi'**
  String get ccActUserDelete;

  /// No description provided for @ccActUserUpdate.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı güncellendi'**
  String get ccActUserUpdate;

  /// No description provided for @ccAgoDays.
  ///
  /// In tr, this message translates to:
  /// **'{count} gün önce'**
  String ccAgoDays(int count);

  /// No description provided for @ccAgoHours.
  ///
  /// In tr, this message translates to:
  /// **'{count} sa önce'**
  String ccAgoHours(int count);

  /// No description provided for @ccAgoMinutes.
  ///
  /// In tr, this message translates to:
  /// **'{count} dk önce'**
  String ccAgoMinutes(int count);

  /// No description provided for @ccAgoNow.
  ///
  /// In tr, this message translates to:
  /// **'az önce'**
  String get ccAgoNow;

  /// No description provided for @ccAnAvgBasket.
  ///
  /// In tr, this message translates to:
  /// **'Ortalama sepet'**
  String get ccAnAvgBasket;

  /// No description provided for @ccAnAvgRating.
  ///
  /// In tr, this message translates to:
  /// **'Ortalama puan'**
  String get ccAnAvgRating;

  /// No description provided for @ccAnBusyHours.
  ///
  /// In tr, this message translates to:
  /// **'Saatlere göre yoğunluk'**
  String get ccAnBusyHours;

  /// No description provided for @ccAnCancelRate.
  ///
  /// In tr, this message translates to:
  /// **'İptal oranı'**
  String get ccAnCancelRate;

  /// No description provided for @ccAnCommission.
  ///
  /// In tr, this message translates to:
  /// **'Komisyon'**
  String get ccAnCommission;

  /// No description provided for @ccAnCommissionGenerated.
  ///
  /// In tr, this message translates to:
  /// **'Üretilen komisyon'**
  String get ccAnCommissionGenerated;

  /// No description provided for @ccAnComplaintBadge.
  ///
  /// In tr, this message translates to:
  /// **'Şikâyet'**
  String get ccAnComplaintBadge;

  /// No description provided for @ccAnComplaints.
  ///
  /// In tr, this message translates to:
  /// **'Şikâyet'**
  String get ccAnComplaints;

  /// No description provided for @ccAnConversion.
  ///
  /// In tr, this message translates to:
  /// **'Dönüşüm (işlem / görüntülenme)'**
  String get ccAnConversion;

  /// No description provided for @ccAnConversionShort.
  ///
  /// In tr, this message translates to:
  /// **'Dönüşüm'**
  String get ccAnConversionShort;

  /// No description provided for @ccAnCouponDiscount.
  ///
  /// In tr, this message translates to:
  /// **'Kupon indirimi'**
  String get ccAnCouponDiscount;

  /// No description provided for @ccAnDailySales.
  ///
  /// In tr, this message translates to:
  /// **'Günlük satış'**
  String get ccAnDailySales;

  /// No description provided for @ccAnDailyVolume.
  ///
  /// In tr, this message translates to:
  /// **'Günlük net hacim'**
  String get ccAnDailyVolume;

  /// No description provided for @ccAnDau.
  ///
  /// In tr, this message translates to:
  /// **'Günlük aktif (DAU)'**
  String get ccAnDau;

  /// No description provided for @ccAnDiscount.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf indirimi'**
  String get ccAnDiscount;

  /// No description provided for @ccAnGross.
  ///
  /// In tr, this message translates to:
  /// **'Brüt ciro'**
  String get ccAnGross;

  /// No description provided for @ccAnGuest.
  ///
  /// In tr, this message translates to:
  /// **'Misafir'**
  String get ccAnGuest;

  /// No description provided for @ccAnInactive.
  ///
  /// In tr, this message translates to:
  /// **'Pasif'**
  String get ccAnInactive;

  /// No description provided for @ccAnLatestReviews.
  ///
  /// In tr, this message translates to:
  /// **'Son değerlendirmeler ve şikâyetler'**
  String get ccAnLatestReviews;

  /// No description provided for @ccAnLoadError.
  ///
  /// In tr, this message translates to:
  /// **'Veriler yüklenemedi. Aşağı çekerek yenileyin.'**
  String get ccAnLoadError;

  /// No description provided for @ccAnMau.
  ///
  /// In tr, this message translates to:
  /// **'Aylık aktif (MAU)'**
  String get ccAnMau;

  /// No description provided for @ccAnMonthlyNewUsers.
  ///
  /// In tr, this message translates to:
  /// **'Aylık yeni kullanıcı (son 12 ay)'**
  String get ccAnMonthlyNewUsers;

  /// No description provided for @ccAnMonthlyVolume.
  ///
  /// In tr, this message translates to:
  /// **'Aylık net hacim'**
  String get ccAnMonthlyVolume;

  /// No description provided for @ccAnMostViewed.
  ///
  /// In tr, this message translates to:
  /// **'En çok görüntülenen esnaf'**
  String get ccAnMostViewed;

  /// No description provided for @ccAnMpAll.
  ///
  /// In tr, this message translates to:
  /// **'Tüm esnaf'**
  String get ccAnMpAll;

  /// No description provided for @ccAnMpPodium.
  ///
  /// In tr, this message translates to:
  /// **'En Popüler Esnaf'**
  String get ccAnMpPodium;

  /// No description provided for @ccAnMpSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Satış, puan, şikâyet ve dönüşüm'**
  String get ccAnMpSubtitle;

  /// No description provided for @ccAnMpTitle.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf Performansı'**
  String get ccAnMpTitle;

  /// No description provided for @ccAnNet.
  ///
  /// In tr, this message translates to:
  /// **'Net ciro'**
  String get ccAnNet;

  /// No description provided for @ccAnNewUsers.
  ///
  /// In tr, this message translates to:
  /// **'Dönemde yeni kullanıcı'**
  String get ccAnNewUsers;

  /// No description provided for @ccAnNoAccess.
  ///
  /// In tr, this message translates to:
  /// **'Bu bölüme erişim yetkiniz yok.'**
  String get ccAnNoAccess;

  /// No description provided for @ccAnNoAgency.
  ///
  /// In tr, this message translates to:
  /// **'Acentesiz'**
  String get ccAnNoAgency;

  /// No description provided for @ccAnNoComment.
  ///
  /// In tr, this message translates to:
  /// **'(yorum yazılmamış)'**
  String get ccAnNoComment;

  /// No description provided for @ccAnNoData.
  ///
  /// In tr, this message translates to:
  /// **'Bu dönemde veri yok.'**
  String get ccAnNoData;

  /// No description provided for @ccAnNoReviews.
  ///
  /// In tr, this message translates to:
  /// **'Bu dönemde değerlendirme yok.'**
  String get ccAnNoReviews;

  /// No description provided for @ccAnNoShops.
  ///
  /// In tr, this message translates to:
  /// **'Henüz anlaşmalı esnaf yok.'**
  String get ccAnNoShops;

  /// No description provided for @ccAnOpenMerchantPerf.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf performansı'**
  String get ccAnOpenMerchantPerf;

  /// No description provided for @ccAnPayCard.
  ///
  /// In tr, this message translates to:
  /// **'Kart'**
  String get ccAnPayCard;

  /// No description provided for @ccAnPayCash.
  ///
  /// In tr, this message translates to:
  /// **'Nakit'**
  String get ccAnPayCash;

  /// No description provided for @ccAnPayPoints.
  ///
  /// In tr, this message translates to:
  /// **'Puan'**
  String get ccAnPayPoints;

  /// No description provided for @ccAnPaymentSplit.
  ///
  /// In tr, this message translates to:
  /// **'Ödeme yöntemi dağılımı'**
  String get ccAnPaymentSplit;

  /// No description provided for @ccAnPeriodAll.
  ///
  /// In tr, this message translates to:
  /// **'Tümü'**
  String get ccAnPeriodAll;

  /// No description provided for @ccAnPeriodMonth.
  ///
  /// In tr, this message translates to:
  /// **'30 gün'**
  String get ccAnPeriodMonth;

  /// No description provided for @ccAnPeriodQuarter.
  ///
  /// In tr, this message translates to:
  /// **'90 gün'**
  String get ccAnPeriodQuarter;

  /// No description provided for @ccAnPeriodToday.
  ///
  /// In tr, this message translates to:
  /// **'Bugün'**
  String get ccAnPeriodToday;

  /// No description provided for @ccAnPeriodWeek.
  ///
  /// In tr, this message translates to:
  /// **'7 gün'**
  String get ccAnPeriodWeek;

  /// No description provided for @ccAnPeriodYear.
  ///
  /// In tr, this message translates to:
  /// **'1 yıl'**
  String get ccAnPeriodYear;

  /// No description provided for @ccAnPointsEarned.
  ///
  /// In tr, this message translates to:
  /// **'Kazanılan puan'**
  String get ccAnPointsEarned;

  /// No description provided for @ccAnPointsFlow.
  ///
  /// In tr, this message translates to:
  /// **'Puan akışı'**
  String get ccAnPointsFlow;

  /// No description provided for @ccAnPointsNet.
  ///
  /// In tr, this message translates to:
  /// **'Net puan'**
  String get ccAnPointsNet;

  /// No description provided for @ccAnPointsSpent.
  ///
  /// In tr, this message translates to:
  /// **'Harcanan puan'**
  String get ccAnPointsSpent;

  /// No description provided for @ccAnRatingDist.
  ///
  /// In tr, this message translates to:
  /// **'Puan dağılımı'**
  String get ccAnRatingDist;

  /// No description provided for @ccAnRefresh.
  ///
  /// In tr, this message translates to:
  /// **'Yenile'**
  String get ccAnRefresh;

  /// No description provided for @ccAnReviewCount.
  ///
  /// In tr, this message translates to:
  /// **'{count} değerlendirme'**
  String ccAnReviewCount(int count);

  /// No description provided for @ccAnRoleAgencyAdmin.
  ///
  /// In tr, this message translates to:
  /// **'Acente Admini'**
  String get ccAnRoleAgencyAdmin;

  /// No description provided for @ccAnRoleFinance.
  ///
  /// In tr, this message translates to:
  /// **'Muhasebe'**
  String get ccAnRoleFinance;

  /// No description provided for @ccAnRoleGuest.
  ///
  /// In tr, this message translates to:
  /// **'Misafir'**
  String get ccAnRoleGuest;

  /// No description provided for @ccAnRoleManager.
  ///
  /// In tr, this message translates to:
  /// **'Yönetici'**
  String get ccAnRoleManager;

  /// No description provided for @ccAnRoleMerchant.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf'**
  String get ccAnRoleMerchant;

  /// No description provided for @ccAnRoleOther.
  ///
  /// In tr, this message translates to:
  /// **'Diğer'**
  String get ccAnRoleOther;

  /// No description provided for @ccAnRoleSuperAdmin.
  ///
  /// In tr, this message translates to:
  /// **'Süper Admin'**
  String get ccAnRoleSuperAdmin;

  /// No description provided for @ccAnRoleSupport.
  ///
  /// In tr, this message translates to:
  /// **'Destek'**
  String get ccAnRoleSupport;

  /// No description provided for @ccAnSecTrends.
  ///
  /// In tr, this message translates to:
  /// **'Trendler'**
  String get ccAnSecTrends;

  /// No description provided for @ccAnSecUsage.
  ///
  /// In tr, this message translates to:
  /// **'Kullanım'**
  String get ccAnSecUsage;

  /// No description provided for @ccAnSecVolume.
  ///
  /// In tr, this message translates to:
  /// **'İşlem hacmi'**
  String get ccAnSecVolume;

  /// No description provided for @ccAnShopsCount.
  ///
  /// In tr, this message translates to:
  /// **'{count} dükkan'**
  String ccAnShopsCount(int count);

  /// No description provided for @ccAnSortComplaints.
  ///
  /// In tr, this message translates to:
  /// **'Şikâyet'**
  String get ccAnSortComplaints;

  /// No description provided for @ccAnSortRating.
  ///
  /// In tr, this message translates to:
  /// **'Puan'**
  String get ccAnSortRating;

  /// No description provided for @ccAnSortRevenue.
  ///
  /// In tr, this message translates to:
  /// **'Ciro'**
  String get ccAnSortRevenue;

  /// No description provided for @ccAnSortTx.
  ///
  /// In tr, this message translates to:
  /// **'İşlem'**
  String get ccAnSortTx;

  /// No description provided for @ccAnSortViews.
  ///
  /// In tr, this message translates to:
  /// **'Görüntülenme'**
  String get ccAnSortViews;

  /// No description provided for @ccAnStickiness.
  ///
  /// In tr, this message translates to:
  /// **'Bağlılık (DAU/MAU)'**
  String get ccAnStickiness;

  /// No description provided for @ccAnSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Kullanım, işlem hacmi ve trendler'**
  String get ccAnSubtitle;

  /// No description provided for @ccAnTitle.
  ///
  /// In tr, this message translates to:
  /// **'Analiz & BI'**
  String get ccAnTitle;

  /// No description provided for @ccAnTopCategories.
  ///
  /// In tr, this message translates to:
  /// **'Kategorilere göre ciro'**
  String get ccAnTopCategories;

  /// No description provided for @ccAnTopShopsByRevenue.
  ///
  /// In tr, this message translates to:
  /// **'En yüksek cirolu esnaf'**
  String get ccAnTopShopsByRevenue;

  /// No description provided for @ccAnTopShopsByTx.
  ///
  /// In tr, this message translates to:
  /// **'En çok işlem yapan esnaf'**
  String get ccAnTopShopsByTx;

  /// No description provided for @ccAnTotalUsers.
  ///
  /// In tr, this message translates to:
  /// **'Toplam kullanıcı'**
  String get ccAnTotalUsers;

  /// No description provided for @ccAnTxCount.
  ///
  /// In tr, this message translates to:
  /// **'İşlem sayısı'**
  String get ccAnTxCount;

  /// No description provided for @ccAnTxCountShort.
  ///
  /// In tr, this message translates to:
  /// **'{count} işlem'**
  String ccAnTxCountShort(int count);

  /// No description provided for @ccAnUsersByAgency.
  ///
  /// In tr, this message translates to:
  /// **'Acentelere göre kullanıcılar'**
  String get ccAnUsersByAgency;

  /// No description provided for @ccAnUsersByRole.
  ///
  /// In tr, this message translates to:
  /// **'Rollere göre kullanıcılar'**
  String get ccAnUsersByRole;

  /// No description provided for @ccAnUsersCount.
  ///
  /// In tr, this message translates to:
  /// **'{count} kullanıcı'**
  String ccAnUsersCount(int count);

  /// No description provided for @ccAnViews.
  ///
  /// In tr, this message translates to:
  /// **'Görüntülenme'**
  String get ccAnViews;

  /// No description provided for @ccAnViewsNote.
  ///
  /// In tr, this message translates to:
  /// **'Görüntülenme sayısı tüm zamanları kapsar.'**
  String get ccAnViewsNote;

  /// No description provided for @ccAnViewsShort.
  ///
  /// In tr, this message translates to:
  /// **'{count} görüntülenme'**
  String ccAnViewsShort(int count);

  /// No description provided for @ccAnWau.
  ///
  /// In tr, this message translates to:
  /// **'Haftalık aktif (WAU)'**
  String get ccAnWau;

  /// No description provided for @ccAuditCatAgency.
  ///
  /// In tr, this message translates to:
  /// **'Acente'**
  String get ccAuditCatAgency;

  /// No description provided for @ccAuditCatAll.
  ///
  /// In tr, this message translates to:
  /// **'Tümü'**
  String get ccAuditCatAll;

  /// No description provided for @ccAuditCatCoupon.
  ///
  /// In tr, this message translates to:
  /// **'Kupon'**
  String get ccAuditCatCoupon;

  /// No description provided for @ccAuditCatFinance.
  ///
  /// In tr, this message translates to:
  /// **'Finans'**
  String get ccAuditCatFinance;

  /// No description provided for @ccAuditCatMessage.
  ///
  /// In tr, this message translates to:
  /// **'Mesaj'**
  String get ccAuditCatMessage;

  /// No description provided for @ccAuditCatPlatform.
  ///
  /// In tr, this message translates to:
  /// **'Platform'**
  String get ccAuditCatPlatform;

  /// No description provided for @ccAuditCatPoints.
  ///
  /// In tr, this message translates to:
  /// **'Puan'**
  String get ccAuditCatPoints;

  /// No description provided for @ccAuditCatRisk.
  ///
  /// In tr, this message translates to:
  /// **'Risk'**
  String get ccAuditCatRisk;

  /// No description provided for @ccAuditCatShop.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf/Dükkan'**
  String get ccAuditCatShop;

  /// No description provided for @ccAuditCatUser.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı'**
  String get ccAuditCatUser;

  /// No description provided for @ccAuditDetails.
  ///
  /// In tr, this message translates to:
  /// **'Ayrıntılar'**
  String get ccAuditDetails;

  /// No description provided for @ccAuditEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Bu filtrelerle kayıt bulunamadı'**
  String get ccAuditEmpty;

  /// No description provided for @ccAuditLoadMore.
  ///
  /// In tr, this message translates to:
  /// **'Daha fazla yükle'**
  String get ccAuditLoadMore;

  /// No description provided for @ccAuditSearchActor.
  ///
  /// In tr, this message translates to:
  /// **'İşlemi yapan kişiyi ara'**
  String get ccAuditSearchActor;

  /// No description provided for @ccAuditShown.
  ///
  /// In tr, this message translates to:
  /// **'{count} kayıt'**
  String ccAuditShown(int count);

  /// No description provided for @ccAuditSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Kim, ne zaman, ne yaptı'**
  String get ccAuditSubtitle;

  /// No description provided for @ccAuditTarget.
  ///
  /// In tr, this message translates to:
  /// **'Hedef'**
  String get ccAuditTarget;

  /// No description provided for @ccAuditTitle.
  ///
  /// In tr, this message translates to:
  /// **'Denetim Kaydı'**
  String get ccAuditTitle;

  /// No description provided for @ccAuditUnknownActor.
  ///
  /// In tr, this message translates to:
  /// **'Bilinmeyen'**
  String get ccAuditUnknownActor;

  /// No description provided for @ccCancel.
  ///
  /// In tr, this message translates to:
  /// **'Vazgeç'**
  String get ccCancel;

  /// No description provided for @ccCpnActivatedOk.
  ///
  /// In tr, this message translates to:
  /// **'{code} aktif edildi.'**
  String ccCpnActivatedOk(String code);

  /// No description provided for @ccCpnActive.
  ///
  /// In tr, this message translates to:
  /// **'Aktif'**
  String get ccCpnActive;

  /// No description provided for @ccCpnActiveHelp.
  ///
  /// In tr, this message translates to:
  /// **'Pasif kupon misafirlere görünmez ve kullanılamaz.'**
  String get ccCpnActiveHelp;

  /// No description provided for @ccCpnAgency.
  ///
  /// In tr, this message translates to:
  /// **'Acente'**
  String get ccCpnAgency;

  /// No description provided for @ccCpnAllAgencies.
  ///
  /// In tr, this message translates to:
  /// **'Tüm acenteler'**
  String get ccCpnAllAgencies;

  /// No description provided for @ccCpnAllShops.
  ///
  /// In tr, this message translates to:
  /// **'Tüm dükkanlar'**
  String get ccCpnAllShops;

  /// No description provided for @ccCpnCode.
  ///
  /// In tr, this message translates to:
  /// **'Kupon kodu'**
  String get ccCpnCode;

  /// No description provided for @ccCpnCodeHelp.
  ///
  /// In tr, this message translates to:
  /// **'Büyük harf ve rakam, 4–16 karakter. Sonradan değiştirilemez.'**
  String get ccCpnCodeHelp;

  /// No description provided for @ccCpnCodeInvalid.
  ///
  /// In tr, this message translates to:
  /// **'4–16 karakter, yalnız A–Z ve 0–9.'**
  String get ccCpnCodeInvalid;

  /// No description provided for @ccCpnCodeLocked.
  ///
  /// In tr, this message translates to:
  /// **'Kod kuponun kimliğidir; değiştirilemez.'**
  String get ccCpnCodeLocked;

  /// No description provided for @ccCpnCodeSuggest.
  ///
  /// In tr, this message translates to:
  /// **'Kod öner'**
  String get ccCpnCodeSuggest;

  /// No description provided for @ccCpnCodeTaken.
  ///
  /// In tr, this message translates to:
  /// **'Bu kod zaten kullanılıyor. Başka bir kod seçin.'**
  String get ccCpnCodeTaken;

  /// No description provided for @ccCpnCreate.
  ///
  /// In tr, this message translates to:
  /// **'Kuponu oluştur'**
  String get ccCpnCreate;

  /// No description provided for @ccCpnCreatedOk.
  ///
  /// In tr, this message translates to:
  /// **'{code} kuponu oluşturuldu.'**
  String ccCpnCreatedOk(String code);

  /// No description provided for @ccCpnDates.
  ///
  /// In tr, this message translates to:
  /// **'Geçerlilik tarihleri'**
  String get ccCpnDates;

  /// No description provided for @ccCpnDeactivate.
  ///
  /// In tr, this message translates to:
  /// **'Pasife al'**
  String get ccCpnDeactivate;

  /// No description provided for @ccCpnDeactivatedOk.
  ///
  /// In tr, this message translates to:
  /// **'{code} pasife alındı.'**
  String ccCpnDeactivatedOk(String code);

  /// No description provided for @ccCpnDelete.
  ///
  /// In tr, this message translates to:
  /// **'Sil'**
  String get ccCpnDelete;

  /// No description provided for @ccCpnDeleteBlockedBody.
  ///
  /// In tr, this message translates to:
  /// **'Bu kupon {count} kez kullanıldı. Raporlar bozulmasın diye silinmez; bunun yerine pasife alabilirsiniz.'**
  String ccCpnDeleteBlockedBody(int count);

  /// No description provided for @ccCpnDeleteBlockedTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kullanılmış kupon silinemez'**
  String get ccCpnDeleteBlockedTitle;

  /// No description provided for @ccCpnDeleteBody.
  ///
  /// In tr, this message translates to:
  /// **'{code} kalıcı olarak silinecek.'**
  String ccCpnDeleteBody(String code);

  /// No description provided for @ccCpnDeleteTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kupon silinsin mi?'**
  String get ccCpnDeleteTitle;

  /// No description provided for @ccCpnDeletedOk.
  ///
  /// In tr, this message translates to:
  /// **'{code} silindi.'**
  String ccCpnDeletedOk(String code);

  /// No description provided for @ccCpnDescription.
  ///
  /// In tr, this message translates to:
  /// **'Açıklama (isteğe bağlı)'**
  String get ccCpnDescription;

  /// No description provided for @ccCpnEdit.
  ///
  /// In tr, this message translates to:
  /// **'Düzenle'**
  String get ccCpnEdit;

  /// No description provided for @ccCpnEditTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kuponu düzenle'**
  String get ccCpnEditTitle;

  /// No description provided for @ccCpnEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Henüz kupon yok. İlk kampanyanı oluştur!'**
  String get ccCpnEmpty;

  /// No description provided for @ccCpnFilterAll.
  ///
  /// In tr, this message translates to:
  /// **'Tümü'**
  String get ccCpnFilterAll;

  /// No description provided for @ccCpnGiven.
  ///
  /// In tr, this message translates to:
  /// **'Verilen indirim: {amount}'**
  String ccCpnGiven(String amount);

  /// No description provided for @ccCpnKpiActive.
  ///
  /// In tr, this message translates to:
  /// **'Aktif kupon'**
  String get ccCpnKpiActive;

  /// No description provided for @ccCpnKpiDiscount.
  ///
  /// In tr, this message translates to:
  /// **'Verilen toplam indirim'**
  String get ccCpnKpiDiscount;

  /// No description provided for @ccCpnKpiGuests.
  ///
  /// In tr, this message translates to:
  /// **'Kupon kullanan misafir'**
  String get ccCpnKpiGuests;

  /// No description provided for @ccCpnKpiUses.
  ///
  /// In tr, this message translates to:
  /// **'Toplam kullanım'**
  String get ccCpnKpiUses;

  /// No description provided for @ccCpnLoadError.
  ///
  /// In tr, this message translates to:
  /// **'Kuponlar yüklenemedi.'**
  String get ccCpnLoadError;

  /// No description provided for @ccCpnMaxDiscount.
  ///
  /// In tr, this message translates to:
  /// **'İndirim tavanı'**
  String get ccCpnMaxDiscount;

  /// No description provided for @ccCpnMaxUses.
  ///
  /// In tr, this message translates to:
  /// **'Toplam kullanım sınırı'**
  String get ccCpnMaxUses;

  /// No description provided for @ccCpnMaxUsesBelowUsed.
  ///
  /// In tr, this message translates to:
  /// **'Sınır, mevcut kullanımdan ({used}) az olamaz.'**
  String ccCpnMaxUsesBelowUsed(int used);

  /// No description provided for @ccCpnMaxUsesHelp.
  ///
  /// In tr, this message translates to:
  /// **'Boş/0 = sınırsız. Her misafir kuponu bir kez kullanabilir.'**
  String get ccCpnMaxUsesHelp;

  /// No description provided for @ccCpnMinShort.
  ///
  /// In tr, this message translates to:
  /// **'min. {amount}'**
  String ccCpnMinShort(String amount);

  /// No description provided for @ccCpnMinSpend.
  ///
  /// In tr, this message translates to:
  /// **'Alt limit'**
  String get ccCpnMinSpend;

  /// No description provided for @ccCpnNew.
  ///
  /// In tr, this message translates to:
  /// **'Yeni Kupon'**
  String get ccCpnNew;

  /// No description provided for @ccCpnNewTitle.
  ///
  /// In tr, this message translates to:
  /// **'Yeni kupon'**
  String get ccCpnNewTitle;

  /// No description provided for @ccCpnNoMatch.
  ///
  /// In tr, this message translates to:
  /// **'Bu filtreye uyan kupon yok.'**
  String get ccCpnNoMatch;

  /// No description provided for @ccCpnNoRedemptions.
  ///
  /// In tr, this message translates to:
  /// **'Bu kupon henüz kullanılmadı.'**
  String get ccCpnNoRedemptions;

  /// No description provided for @ccCpnOncePerGuest.
  ///
  /// In tr, this message translates to:
  /// **'Kupon indirimi dükkan indiriminden sonra uygulanır; ödenecek tutar sıfırın altına inmez.'**
  String get ccCpnOncePerGuest;

  /// No description provided for @ccCpnPercentMax.
  ///
  /// In tr, this message translates to:
  /// **'Yüzde en fazla 100 olabilir.'**
  String get ccCpnPercentMax;

  /// No description provided for @ccCpnReadOnly.
  ///
  /// In tr, this message translates to:
  /// **'Salt okuma'**
  String get ccCpnReadOnly;

  /// No description provided for @ccCpnRedemptions.
  ///
  /// In tr, this message translates to:
  /// **'Kullanımlar'**
  String get ccCpnRedemptions;

  /// No description provided for @ccCpnRequired.
  ///
  /// In tr, this message translates to:
  /// **'Bu alan zorunlu.'**
  String get ccCpnRequired;

  /// No description provided for @ccCpnSave.
  ///
  /// In tr, this message translates to:
  /// **'Değişiklikleri kaydet'**
  String get ccCpnSave;

  /// No description provided for @ccCpnSaveError.
  ///
  /// In tr, this message translates to:
  /// **'İşlem tamamlanamadı. Lütfen tekrar deneyin.'**
  String get ccCpnSaveError;

  /// No description provided for @ccCpnSectionBasics.
  ///
  /// In tr, this message translates to:
  /// **'Kupon bilgileri'**
  String get ccCpnSectionBasics;

  /// No description provided for @ccCpnSectionDiscount.
  ///
  /// In tr, this message translates to:
  /// **'İndirim'**
  String get ccCpnSectionDiscount;

  /// No description provided for @ccCpnSectionScope.
  ///
  /// In tr, this message translates to:
  /// **'Geçerlilik'**
  String get ccCpnSectionScope;

  /// No description provided for @ccCpnShop.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan'**
  String get ccCpnShop;

  /// No description provided for @ccCpnStatAvg.
  ///
  /// In tr, this message translates to:
  /// **'Ortalama indirim'**
  String get ccCpnStatAvg;

  /// No description provided for @ccCpnStatTotal.
  ///
  /// In tr, this message translates to:
  /// **'Toplam indirim'**
  String get ccCpnStatTotal;

  /// No description provided for @ccCpnStatUntil.
  ///
  /// In tr, this message translates to:
  /// **'Son geçerlilik'**
  String get ccCpnStatUntil;

  /// No description provided for @ccCpnStatUses.
  ///
  /// In tr, this message translates to:
  /// **'Kullanım'**
  String get ccCpnStatUses;

  /// No description provided for @ccCpnStatusActive.
  ///
  /// In tr, this message translates to:
  /// **'Aktif'**
  String get ccCpnStatusActive;

  /// No description provided for @ccCpnStatusExhausted.
  ///
  /// In tr, this message translates to:
  /// **'Tükendi'**
  String get ccCpnStatusExhausted;

  /// No description provided for @ccCpnStatusExpired.
  ///
  /// In tr, this message translates to:
  /// **'Süresi doldu'**
  String get ccCpnStatusExpired;

  /// No description provided for @ccCpnStatusInactive.
  ///
  /// In tr, this message translates to:
  /// **'Pasif'**
  String get ccCpnStatusInactive;

  /// No description provided for @ccCpnStatusScheduled.
  ///
  /// In tr, this message translates to:
  /// **'Başlamadı'**
  String get ccCpnStatusScheduled;

  /// No description provided for @ccCpnSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Kampanya ve indirim kuponları'**
  String get ccCpnSubtitle;

  /// No description provided for @ccCpnTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kuponlar'**
  String get ccCpnTitle;

  /// No description provided for @ccCpnTitleField.
  ///
  /// In tr, this message translates to:
  /// **'Başlık'**
  String get ccCpnTitleField;

  /// No description provided for @ccCpnTitleHint.
  ///
  /// In tr, this message translates to:
  /// **'Örn. Hoş geldin indirimi'**
  String get ccCpnTitleHint;

  /// No description provided for @ccCpnTypeFixed.
  ///
  /// In tr, this message translates to:
  /// **'Sabit tutar'**
  String get ccCpnTypeFixed;

  /// No description provided for @ccCpnTypePercent.
  ///
  /// In tr, this message translates to:
  /// **'Yüzde'**
  String get ccCpnTypePercent;

  /// No description provided for @ccCpnUpTo.
  ///
  /// In tr, this message translates to:
  /// **'en fazla {amount}'**
  String ccCpnUpTo(String amount);

  /// No description provided for @ccCpnUpdatedOk.
  ///
  /// In tr, this message translates to:
  /// **'{code} kuponu güncellendi.'**
  String ccCpnUpdatedOk(String code);

  /// No description provided for @ccCpnUsesUnlimited.
  ///
  /// In tr, this message translates to:
  /// **'{count} kullanım · sınırsız'**
  String ccCpnUsesUnlimited(int count);

  /// No description provided for @ccCpnValue.
  ///
  /// In tr, this message translates to:
  /// **'İndirim değeri'**
  String get ccCpnValue;

  /// No description provided for @ccCpnValueInvalid.
  ///
  /// In tr, this message translates to:
  /// **'0\'dan büyük bir değer girin.'**
  String get ccCpnValueInvalid;

  /// No description provided for @ccCpnZeroNoCap.
  ///
  /// In tr, this message translates to:
  /// **'Boş/0 = tavan yok'**
  String get ccCpnZeroNoCap;

  /// No description provided for @ccCpnZeroNone.
  ///
  /// In tr, this message translates to:
  /// **'Boş/0 = alt limit yok'**
  String get ccCpnZeroNone;

  /// No description provided for @ccFinActionError.
  ///
  /// In tr, this message translates to:
  /// **'İşlem başarısız oldu'**
  String get ccFinActionError;

  /// No description provided for @ccFinAgencyEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Bu dönemde acente payı yok'**
  String get ccFinAgencyEmpty;

  /// No description provided for @ccFinAgencyExplain.
  ///
  /// In tr, this message translates to:
  /// **'Acente, kendi misafirlerinin yaptığı alışverişlerin komisyonundan pay alır.'**
  String get ccFinAgencyExplain;

  /// No description provided for @ccFinAgencySub.
  ///
  /// In tr, this message translates to:
  /// **'{count} işlem · net {net}'**
  String ccFinAgencySub(int count, String net);

  /// No description provided for @ccFinAllAgencies.
  ///
  /// In tr, this message translates to:
  /// **'Tüm acentelere açık'**
  String get ccFinAllAgencies;

  /// No description provided for @ccFinCancel.
  ///
  /// In tr, this message translates to:
  /// **'Vazgeç'**
  String get ccFinCancel;

  /// No description provided for @ccFinColAgency.
  ///
  /// In tr, this message translates to:
  /// **'Acente'**
  String get ccFinColAgency;

  /// No description provided for @ccFinColCommission.
  ///
  /// In tr, this message translates to:
  /// **'Komisyon'**
  String get ccFinColCommission;

  /// No description provided for @ccFinColCoupon.
  ///
  /// In tr, this message translates to:
  /// **'Kupon'**
  String get ccFinColCoupon;

  /// No description provided for @ccFinColDate.
  ///
  /// In tr, this message translates to:
  /// **'Tarih'**
  String get ccFinColDate;

  /// No description provided for @ccFinColDiscount.
  ///
  /// In tr, this message translates to:
  /// **'İndirim'**
  String get ccFinColDiscount;

  /// No description provided for @ccFinColGross.
  ///
  /// In tr, this message translates to:
  /// **'Brüt'**
  String get ccFinColGross;

  /// No description provided for @ccFinColGuest.
  ///
  /// In tr, this message translates to:
  /// **'Misafir'**
  String get ccFinColGuest;

  /// No description provided for @ccFinColNet.
  ///
  /// In tr, this message translates to:
  /// **'Net'**
  String get ccFinColNet;

  /// No description provided for @ccFinColPeriod.
  ///
  /// In tr, this message translates to:
  /// **'Dönem'**
  String get ccFinColPeriod;

  /// No description provided for @ccFinColPlatform.
  ///
  /// In tr, this message translates to:
  /// **'Platform'**
  String get ccFinColPlatform;

  /// No description provided for @ccFinColRate.
  ///
  /// In tr, this message translates to:
  /// **'Komisyon %'**
  String get ccFinColRate;

  /// No description provided for @ccFinColStatus.
  ///
  /// In tr, this message translates to:
  /// **'Durum'**
  String get ccFinColStatus;

  /// No description provided for @ccFinColTx.
  ///
  /// In tr, this message translates to:
  /// **'İşlem'**
  String get ccFinColTx;

  /// No description provided for @ccFinCopyAllCsv.
  ///
  /// In tr, this message translates to:
  /// **'Tüm dönemi CSV kopyala'**
  String get ccFinCopyAllCsv;

  /// No description provided for @ccFinCsvCopied.
  ///
  /// In tr, this message translates to:
  /// **'CSV panoya kopyalandı'**
  String get ccFinCsvCopied;

  /// No description provided for @ccFinDailyChart.
  ///
  /// In tr, this message translates to:
  /// **'Günlük komisyon'**
  String get ccFinDailyChart;

  /// No description provided for @ccFinEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Bu dönemde işlem yok'**
  String get ccFinEmpty;

  /// No description provided for @ccFinGenerate.
  ///
  /// In tr, this message translates to:
  /// **'Dönemi Oluştur/Güncelle'**
  String get ccFinGenerate;

  /// No description provided for @ccFinGenerateConfirm.
  ///
  /// In tr, this message translates to:
  /// **'{month} dönemi için hak ediş kayıtları oluşturulsun mu? Ödenmiş kayıtların tutarları değişmez.'**
  String ccFinGenerateConfirm(String month);

  /// No description provided for @ccFinGenerateDone.
  ///
  /// In tr, this message translates to:
  /// **'{count} dükkanın hak edişi güncellendi'**
  String ccFinGenerateDone(int count);

  /// No description provided for @ccFinGenerateFirst.
  ///
  /// In tr, this message translates to:
  /// **'Önce dönemi oluşturun'**
  String get ccFinGenerateFirst;

  /// No description provided for @ccFinKpiAgency.
  ///
  /// In tr, this message translates to:
  /// **'Acente payı'**
  String get ccFinKpiAgency;

  /// No description provided for @ccFinKpiCommission.
  ///
  /// In tr, this message translates to:
  /// **'Toplam komisyon'**
  String get ccFinKpiCommission;

  /// No description provided for @ccFinKpiCoupon.
  ///
  /// In tr, this message translates to:
  /// **'Kupon indirimi'**
  String get ccFinKpiCoupon;

  /// No description provided for @ccFinKpiDiscount.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf indirimi'**
  String get ccFinKpiDiscount;

  /// No description provided for @ccFinKpiGross.
  ///
  /// In tr, this message translates to:
  /// **'Brüt ciro'**
  String get ccFinKpiGross;

  /// No description provided for @ccFinKpiNet.
  ///
  /// In tr, this message translates to:
  /// **'Net ciro'**
  String get ccFinKpiNet;

  /// No description provided for @ccFinKpiPlatform.
  ///
  /// In tr, this message translates to:
  /// **'Platform payı'**
  String get ccFinKpiPlatform;

  /// No description provided for @ccFinKpiTxCount.
  ///
  /// In tr, this message translates to:
  /// **'İşlem sayısı'**
  String get ccFinKpiTxCount;

  /// No description provided for @ccFinLoadError.
  ///
  /// In tr, this message translates to:
  /// **'Finans verileri yüklenemedi'**
  String get ccFinLoadError;

  /// No description provided for @ccFinMarkPaid.
  ///
  /// In tr, this message translates to:
  /// **'Ödendi olarak işaretle'**
  String get ccFinMarkPaid;

  /// No description provided for @ccFinMarkPaidTitle.
  ///
  /// In tr, this message translates to:
  /// **'Ödeme kaydı'**
  String get ccFinMarkPaidTitle;

  /// No description provided for @ccFinMarkedPaid.
  ///
  /// In tr, this message translates to:
  /// **'Ödendi olarak işaretlendi'**
  String get ccFinMarkedPaid;

  /// No description provided for @ccFinNextMonth.
  ///
  /// In tr, this message translates to:
  /// **'Sonraki ay'**
  String get ccFinNextMonth;

  /// No description provided for @ccFinNoteHint.
  ///
  /// In tr, this message translates to:
  /// **'Not (isteğe bağlı)'**
  String get ccFinNoteHint;

  /// No description provided for @ccFinPaidCount.
  ///
  /// In tr, this message translates to:
  /// **'{paid}/{total} ödendi'**
  String ccFinPaidCount(int paid, int total);

  /// No description provided for @ccFinPaidDiff.
  ///
  /// In tr, this message translates to:
  /// **'Canlı tutarlar ödenmiş kayıttan farklı (kayıt: {recorded}, {count} işlem). Geç iptal veya geç kayıt olabilir.'**
  String ccFinPaidDiff(String recorded, int count);

  /// No description provided for @ccFinPaidOn.
  ///
  /// In tr, this message translates to:
  /// **'Ödendi: {date}'**
  String ccFinPaidOn(String date);

  /// No description provided for @ccFinPrevMonth.
  ///
  /// In tr, this message translates to:
  /// **'Önceki ay'**
  String get ccFinPrevMonth;

  /// No description provided for @ccFinProNote.
  ///
  /// In tr, this message translates to:
  /// **'Ödeme dağıtımı ve e-fatura entegrasyonu Pro sunucu aşamasında'**
  String get ccFinProNote;

  /// No description provided for @ccFinRefresh.
  ///
  /// In tr, this message translates to:
  /// **'Yenile'**
  String get ccFinRefresh;

  /// No description provided for @ccFinRevert.
  ///
  /// In tr, this message translates to:
  /// **'Bekliyor\'a geri al'**
  String get ccFinRevert;

  /// No description provided for @ccFinRevertConfirm.
  ///
  /// In tr, this message translates to:
  /// **'Bu hak ediş tekrar \'Bekliyor\' durumuna alınsın mı?'**
  String get ccFinRevertConfirm;

  /// No description provided for @ccFinReverted.
  ///
  /// In tr, this message translates to:
  /// **'Bekliyor durumuna alındı'**
  String get ccFinReverted;

  /// No description provided for @ccFinSave.
  ///
  /// In tr, this message translates to:
  /// **'Kaydet'**
  String get ccFinSave;

  /// No description provided for @ccFinSettingsDefault.
  ///
  /// In tr, this message translates to:
  /// **'Ayar kaydı yok; varsayılan %50 kullanılıyor'**
  String get ccFinSettingsDefault;

  /// No description provided for @ccFinSettingsDialogTitle.
  ///
  /// In tr, this message translates to:
  /// **'Platform payı (%)'**
  String get ccFinSettingsDialogTitle;

  /// No description provided for @ccFinSettingsEdit.
  ///
  /// In tr, this message translates to:
  /// **'Düzenle'**
  String get ccFinSettingsEdit;

  /// No description provided for @ccFinSettingsExplain.
  ///
  /// In tr, this message translates to:
  /// **'Esnaftan alınan komisyonun %{platform}\'i platforma, kalan %{agency}\'i acenteye aktarılır.'**
  String ccFinSettingsExplain(int platform, int agency);

  /// No description provided for @ccFinSettingsInvalid.
  ///
  /// In tr, this message translates to:
  /// **'0 ile 100 arasında bir sayı girin'**
  String get ccFinSettingsInvalid;

  /// No description provided for @ccFinSettingsSaved.
  ///
  /// In tr, this message translates to:
  /// **'Platform payı güncellendi'**
  String get ccFinSettingsSaved;

  /// No description provided for @ccFinSettingsTitle.
  ///
  /// In tr, this message translates to:
  /// **'Platform payı'**
  String get ccFinSettingsTitle;

  /// No description provided for @ccFinStatement.
  ///
  /// In tr, this message translates to:
  /// **'Dekont'**
  String get ccFinStatement;

  /// No description provided for @ccFinStatusNone.
  ///
  /// In tr, this message translates to:
  /// **'Oluşturulmadı'**
  String get ccFinStatusNone;

  /// No description provided for @ccFinStatusPaid.
  ///
  /// In tr, this message translates to:
  /// **'Ödendi'**
  String get ccFinStatusPaid;

  /// No description provided for @ccFinStatusPending.
  ///
  /// In tr, this message translates to:
  /// **'Bekliyor'**
  String get ccFinStatusPending;

  /// No description provided for @ccFinStmtAgency.
  ///
  /// In tr, this message translates to:
  /// **'Acente'**
  String get ccFinStmtAgency;

  /// No description provided for @ccFinStmtCopyCsv.
  ///
  /// In tr, this message translates to:
  /// **'Kopyala (CSV)'**
  String get ccFinStmtCopyCsv;

  /// No description provided for @ccFinStmtFooter.
  ///
  /// In tr, this message translates to:
  /// **'Bu belge bilgilendirme amaçlıdır; mali belge yerine geçmez.'**
  String get ccFinStmtFooter;

  /// No description provided for @ccFinStmtIssued.
  ///
  /// In tr, this message translates to:
  /// **'Düzenlenme'**
  String get ccFinStmtIssued;

  /// No description provided for @ccFinStmtLines.
  ///
  /// In tr, this message translates to:
  /// **'İşlem dökümü'**
  String get ccFinStmtLines;

  /// No description provided for @ccFinStmtMerchantCode.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf kodu'**
  String get ccFinStmtMerchantCode;

  /// No description provided for @ccFinStmtNo.
  ///
  /// In tr, this message translates to:
  /// **'Dekont no'**
  String get ccFinStmtNo;

  /// No description provided for @ccFinStmtNote.
  ///
  /// In tr, this message translates to:
  /// **'Not'**
  String get ccFinStmtNote;

  /// No description provided for @ccFinStmtPayable.
  ///
  /// In tr, this message translates to:
  /// **'Esnafın ödeyeceği komisyon'**
  String get ccFinStmtPayable;

  /// No description provided for @ccFinStmtPeriod.
  ///
  /// In tr, this message translates to:
  /// **'Dönem'**
  String get ccFinStmtPeriod;

  /// No description provided for @ccFinStmtPlatform.
  ///
  /// In tr, this message translates to:
  /// **'Umre Rehberim · Anlaşmalı Esnaf Programı'**
  String get ccFinStmtPlatform;

  /// No description provided for @ccFinStmtRate.
  ///
  /// In tr, this message translates to:
  /// **'Komisyon oranı'**
  String get ccFinStmtRate;

  /// No description provided for @ccFinStmtShop.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan'**
  String get ccFinStmtShop;

  /// No description provided for @ccFinStmtStampPaid.
  ///
  /// In tr, this message translates to:
  /// **'ÖDENDİ'**
  String get ccFinStmtStampPaid;

  /// No description provided for @ccFinStmtStampPending.
  ///
  /// In tr, this message translates to:
  /// **'BEKLİYOR'**
  String get ccFinStmtStampPending;

  /// No description provided for @ccFinStmtTitle.
  ///
  /// In tr, this message translates to:
  /// **'Hak Ediş Dekontu'**
  String get ccFinStmtTitle;

  /// No description provided for @ccFinStmtTotals.
  ///
  /// In tr, this message translates to:
  /// **'Toplamlar'**
  String get ccFinStmtTotals;

  /// No description provided for @ccFinSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf komisyonları ve dönem kapanışı'**
  String get ccFinSubtitle;

  /// No description provided for @ccFinTabAgencies.
  ///
  /// In tr, this message translates to:
  /// **'Acente payları'**
  String get ccFinTabAgencies;

  /// No description provided for @ccFinTabShops.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf hak edişleri'**
  String get ccFinTabShops;

  /// No description provided for @ccFinTitle.
  ///
  /// In tr, this message translates to:
  /// **'Finans ve Hak Ediş'**
  String get ccFinTitle;

  /// No description provided for @ccFinTotalsTitle.
  ///
  /// In tr, this message translates to:
  /// **'Dönem toplamları'**
  String get ccFinTotalsTitle;

  /// No description provided for @ccFinUnknownAgency.
  ///
  /// In tr, this message translates to:
  /// **'Acentesiz'**
  String get ccFinUnknownAgency;

  /// No description provided for @ccGreetingDay.
  ///
  /// In tr, this message translates to:
  /// **'İyi günler'**
  String get ccGreetingDay;

  /// No description provided for @ccGreetingEvening.
  ///
  /// In tr, this message translates to:
  /// **'İyi akşamlar'**
  String get ccGreetingEvening;

  /// No description provided for @ccGreetingMorning.
  ///
  /// In tr, this message translates to:
  /// **'Günaydın'**
  String get ccGreetingMorning;

  /// No description provided for @ccKpiAgencies.
  ///
  /// In tr, this message translates to:
  /// **'Acente'**
  String get ccKpiAgencies;

  /// No description provided for @ccKpiDau.
  ///
  /// In tr, this message translates to:
  /// **'Günlük aktif kullanıcı'**
  String get ccKpiDau;

  /// No description provided for @ccKpiOpenMessages.
  ///
  /// In tr, this message translates to:
  /// **'Okunmamış acente mesajı'**
  String get ccKpiOpenMessages;

  /// No description provided for @ccKpiShops.
  ///
  /// In tr, this message translates to:
  /// **'Aktif dükkan'**
  String get ccKpiShops;

  /// No description provided for @ccKpiTx30.
  ///
  /// In tr, this message translates to:
  /// **'Son 30 gün işlem'**
  String get ccKpiTx30;

  /// No description provided for @ccKpiUsers.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı'**
  String get ccKpiUsers;

  /// No description provided for @ccKpiVolume30.
  ///
  /// In tr, this message translates to:
  /// **'Son 30 gün işlem hacmi'**
  String get ccKpiVolume30;

  /// No description provided for @ccLoadFailed.
  ///
  /// In tr, this message translates to:
  /// **'Veriler yüklenemedi'**
  String get ccLoadFailed;

  /// No description provided for @ccLogout.
  ///
  /// In tr, this message translates to:
  /// **'Çıkış yap'**
  String get ccLogout;

  /// No description provided for @ccLogoutConfirm.
  ///
  /// In tr, this message translates to:
  /// **'Oturumu kapatmak istediğinize emin misiniz?'**
  String get ccLogoutConfirm;

  /// No description provided for @ccLoyActionError.
  ///
  /// In tr, this message translates to:
  /// **'İşlem tamamlanamadı. Lütfen tekrar deneyin.'**
  String get ccLoyActionError;

  /// No description provided for @ccLoyAllAgencies.
  ///
  /// In tr, this message translates to:
  /// **'Tüm acenteler'**
  String get ccLoyAllAgencies;

  /// No description provided for @ccLoyBulkAction.
  ///
  /// In tr, this message translates to:
  /// **'Toplu Puan'**
  String get ccLoyBulkAction;

  /// No description provided for @ccLoyBulkAgency.
  ///
  /// In tr, this message translates to:
  /// **'Acente'**
  String get ccLoyBulkAgency;

  /// No description provided for @ccLoyBulkAllTrips.
  ///
  /// In tr, this message translates to:
  /// **'Acentenin tüm misafirleri'**
  String get ccLoyBulkAllTrips;

  /// No description provided for @ccLoyBulkConfirm.
  ///
  /// In tr, this message translates to:
  /// **'{count} misafire yükle'**
  String ccLoyBulkConfirm(int count);

  /// No description provided for @ccLoyBulkNoTargets.
  ///
  /// In tr, this message translates to:
  /// **'Seçime uyan misafir yok.'**
  String get ccLoyBulkNoTargets;

  /// No description provided for @ccLoyBulkOk.
  ///
  /// In tr, this message translates to:
  /// **'{count} misafire {points} puan yüklendi.'**
  String ccLoyBulkOk(int count, int points);

  /// No description provided for @ccLoyBulkPartial.
  ///
  /// In tr, this message translates to:
  /// **'Yükleme yarıda kaldı: {done}/{total} misafire yüklendi. Geri kalanlar için tekrar deneyin.'**
  String ccLoyBulkPartial(int done, int total);

  /// No description provided for @ccLoyBulkPickAgency.
  ///
  /// In tr, this message translates to:
  /// **'Önce bir acente seçin.'**
  String get ccLoyBulkPickAgency;

  /// No description provided for @ccLoyBulkPointsEach.
  ///
  /// In tr, this message translates to:
  /// **'Misafir başına puan'**
  String get ccLoyBulkPointsEach;

  /// No description provided for @ccLoyBulkPreview.
  ///
  /// In tr, this message translates to:
  /// **'{count} misafire toplam {total} puan yüklenecek.'**
  String ccLoyBulkPreview(int count, String total);

  /// No description provided for @ccLoyBulkRunning.
  ///
  /// In tr, this message translates to:
  /// **'Puanlar yükleniyor…'**
  String get ccLoyBulkRunning;

  /// No description provided for @ccLoyBulkTitle.
  ///
  /// In tr, this message translates to:
  /// **'Toplu puan yükle'**
  String get ccLoyBulkTitle;

  /// No description provided for @ccLoyBulkTrip.
  ///
  /// In tr, this message translates to:
  /// **'Sefer (isteğe bağlı)'**
  String get ccLoyBulkTrip;

  /// No description provided for @ccLoyDeduct.
  ///
  /// In tr, this message translates to:
  /// **'Puan Düş'**
  String get ccLoyDeduct;

  /// No description provided for @ccLoyDeductTitle.
  ///
  /// In tr, this message translates to:
  /// **'Puan düş'**
  String get ccLoyDeductTitle;

  /// No description provided for @ccLoyDeductedOk.
  ///
  /// In tr, this message translates to:
  /// **'{points} puan düşüldü.'**
  String ccLoyDeductedOk(int points);

  /// No description provided for @ccLoyEarned.
  ///
  /// In tr, this message translates to:
  /// **'Kazanılan'**
  String get ccLoyEarned;

  /// No description provided for @ccLoyFeedEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Bu filtreye uyan hareket yok.'**
  String get ccLoyFeedEmpty;

  /// No description provided for @ccLoyFeedTitle.
  ///
  /// In tr, this message translates to:
  /// **'Son puan hareketleri'**
  String get ccLoyFeedTitle;

  /// No description provided for @ccLoyFilterAll.
  ///
  /// In tr, this message translates to:
  /// **'Tümü'**
  String get ccLoyFilterAll;

  /// No description provided for @ccLoyFilterBulk.
  ///
  /// In tr, this message translates to:
  /// **'Toplu'**
  String get ccLoyFilterBulk;

  /// No description provided for @ccLoyFilterDeducted.
  ///
  /// In tr, this message translates to:
  /// **'Düşülen'**
  String get ccLoyFilterDeducted;

  /// No description provided for @ccLoyFilterGranted.
  ///
  /// In tr, this message translates to:
  /// **'Verilen'**
  String get ccLoyFilterGranted;

  /// No description provided for @ccLoyFilterReverted.
  ///
  /// In tr, this message translates to:
  /// **'Geri alınan'**
  String get ccLoyFilterReverted;

  /// No description provided for @ccLoyGrant.
  ///
  /// In tr, this message translates to:
  /// **'Puan Ver'**
  String get ccLoyGrant;

  /// No description provided for @ccLoyGrantTitle.
  ///
  /// In tr, this message translates to:
  /// **'Hediye puan ver'**
  String get ccLoyGrantTitle;

  /// No description provided for @ccLoyGrantedOk.
  ///
  /// In tr, this message translates to:
  /// **'{points} puan verildi.'**
  String ccLoyGrantedOk(int points);

  /// No description provided for @ccLoyGuestCount.
  ///
  /// In tr, this message translates to:
  /// **'{count} misafir'**
  String ccLoyGuestCount(int count);

  /// No description provided for @ccLoyGuestsTitle.
  ///
  /// In tr, this message translates to:
  /// **'Misafirler'**
  String get ccLoyGuestsTitle;

  /// No description provided for @ccLoyHistory.
  ///
  /// In tr, this message translates to:
  /// **'Puan geçmişi'**
  String get ccLoyHistory;

  /// No description provided for @ccLoyHistoryEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Henüz puan hareketi yok.'**
  String get ccLoyHistoryEmpty;

  /// No description provided for @ccLoyKpiCirculation.
  ///
  /// In tr, this message translates to:
  /// **'Dolaşımdaki toplam puan'**
  String get ccLoyKpiCirculation;

  /// No description provided for @ccLoyKpiGrantedMonth.
  ///
  /// In tr, this message translates to:
  /// **'Bu ay elle verilen puan'**
  String get ccLoyKpiGrantedMonth;

  /// No description provided for @ccLoyKpiRedeemed.
  ///
  /// In tr, this message translates to:
  /// **'Puanla ödenen tutar'**
  String get ccLoyKpiRedeemed;

  /// No description provided for @ccLoyKpiSpent.
  ///
  /// In tr, this message translates to:
  /// **'Alışverişte harcanan puan'**
  String get ccLoyKpiSpent;

  /// No description provided for @ccLoyLoadError.
  ///
  /// In tr, this message translates to:
  /// **'Sadakat verileri yüklenemedi.'**
  String get ccLoyLoadError;

  /// No description provided for @ccLoyManual.
  ///
  /// In tr, this message translates to:
  /// **'Elle'**
  String get ccLoyManual;

  /// No description provided for @ccLoyNoGuests.
  ///
  /// In tr, this message translates to:
  /// **'Eşleşen misafir yok.'**
  String get ccLoyNoGuests;

  /// No description provided for @ccLoyPointsInvalid.
  ///
  /// In tr, this message translates to:
  /// **'1 ile 100.000 arasında bir puan girin.'**
  String get ccLoyPointsInvalid;

  /// No description provided for @ccLoyPointsUnit.
  ///
  /// In tr, this message translates to:
  /// **'puan'**
  String get ccLoyPointsUnit;

  /// No description provided for @ccLoyReadOnly.
  ///
  /// In tr, this message translates to:
  /// **'Salt okuma'**
  String get ccLoyReadOnly;

  /// No description provided for @ccLoyReason.
  ///
  /// In tr, this message translates to:
  /// **'Sebep (zorunlu)'**
  String get ccLoyReason;

  /// No description provided for @ccLoyReasonHintBulk.
  ///
  /// In tr, this message translates to:
  /// **'Örn. Ramazan kampanyası'**
  String get ccLoyReasonHintBulk;

  /// No description provided for @ccLoyReasonHintDeduct.
  ///
  /// In tr, this message translates to:
  /// **'Örn. Hatalı yükleme düzeltmesi'**
  String get ccLoyReasonHintDeduct;

  /// No description provided for @ccLoyReasonHintGrant.
  ///
  /// In tr, this message translates to:
  /// **'Örn. Hoş geldin hediyesi'**
  String get ccLoyReasonHintGrant;

  /// No description provided for @ccLoyReasonRequired.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen bir sebep yazın (en az 3 karakter).'**
  String get ccLoyReasonRequired;

  /// No description provided for @ccLoyRefresh.
  ///
  /// In tr, this message translates to:
  /// **'Yenile'**
  String get ccLoyRefresh;

  /// No description provided for @ccLoyRevertAction.
  ///
  /// In tr, this message translates to:
  /// **'Geri al'**
  String get ccLoyRevertAction;

  /// No description provided for @ccLoyRevertBody.
  ///
  /// In tr, this message translates to:
  /// **'{guest} için yapılan {points} puanlık hareket, {opposite} puanlık ters kayıtla geri alınacak. Asıl kayıt silinmez.'**
  String ccLoyRevertBody(String guest, String points, String opposite);

  /// No description provided for @ccLoyRevertDefaultReason.
  ///
  /// In tr, this message translates to:
  /// **'Geri alma: {reason}'**
  String ccLoyRevertDefaultReason(String reason);

  /// No description provided for @ccLoyRevertTitle.
  ///
  /// In tr, this message translates to:
  /// **'Puan hareketini geri al'**
  String get ccLoyRevertTitle;

  /// No description provided for @ccLoyRevertedOk.
  ///
  /// In tr, this message translates to:
  /// **'Puan hareketi geri alındı.'**
  String get ccLoyRevertedOk;

  /// No description provided for @ccLoySearchHint.
  ///
  /// In tr, this message translates to:
  /// **'Ad, TC kimlik no veya acente ara'**
  String get ccLoySearchHint;

  /// No description provided for @ccLoyShowMore.
  ///
  /// In tr, this message translates to:
  /// **'{count} misafir daha göster'**
  String ccLoyShowMore(int count);

  /// No description provided for @ccLoySpentShort.
  ///
  /// In tr, this message translates to:
  /// **'Harcanan'**
  String get ccLoySpentShort;

  /// No description provided for @ccLoySubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Puan ver, düş, geri al'**
  String get ccLoySubtitle;

  /// No description provided for @ccLoyTagBulk.
  ///
  /// In tr, this message translates to:
  /// **'Toplu'**
  String get ccLoyTagBulk;

  /// No description provided for @ccLoyTagCancelled.
  ///
  /// In tr, this message translates to:
  /// **'İptal'**
  String get ccLoyTagCancelled;

  /// No description provided for @ccLoyTagRevert.
  ///
  /// In tr, this message translates to:
  /// **'Geri alma'**
  String get ccLoyTagRevert;

  /// No description provided for @ccLoyTagReverted.
  ///
  /// In tr, this message translates to:
  /// **'Geri alındı'**
  String get ccLoyTagReverted;

  /// No description provided for @ccLoyTitle.
  ///
  /// In tr, this message translates to:
  /// **'Sadakat Puanları'**
  String get ccLoyTitle;

  /// No description provided for @ccLoyWorth.
  ///
  /// In tr, this message translates to:
  /// **'≈ {value} değerinde'**
  String ccLoyWorth(String value);

  /// No description provided for @ccModAgencies.
  ///
  /// In tr, this message translates to:
  /// **'Acenteler'**
  String get ccModAgencies;

  /// No description provided for @ccModAgenciesDesc.
  ///
  /// In tr, this message translates to:
  /// **'Acente listesi, kişiler ve yönetim'**
  String get ccModAgenciesDesc;

  /// No description provided for @ccModAgenciesReadDesc.
  ///
  /// In tr, this message translates to:
  /// **'Acenteleri ve kişileri görüntüle'**
  String get ccModAgenciesReadDesc;

  /// No description provided for @ccModAnalytics.
  ///
  /// In tr, this message translates to:
  /// **'Analitik'**
  String get ccModAnalytics;

  /// No description provided for @ccModAnalyticsDesc.
  ///
  /// In tr, this message translates to:
  /// **'Büyüme, aktiflik ve trendler'**
  String get ccModAnalyticsDesc;

  /// No description provided for @ccModAudit.
  ///
  /// In tr, this message translates to:
  /// **'Denetim Kaydı'**
  String get ccModAudit;

  /// No description provided for @ccModAuditDesc.
  ///
  /// In tr, this message translates to:
  /// **'Kim, ne zaman, ne yaptı'**
  String get ccModAuditDesc;

  /// No description provided for @ccModCoupons.
  ///
  /// In tr, this message translates to:
  /// **'Kampanya & Kupon'**
  String get ccModCoupons;

  /// No description provided for @ccModCouponsDesc.
  ///
  /// In tr, this message translates to:
  /// **'Kupon oluştur, kullanımı izle'**
  String get ccModCouponsDesc;

  /// No description provided for @ccModFinance.
  ///
  /// In tr, this message translates to:
  /// **'Finans & Hak Ediş'**
  String get ccModFinance;

  /// No description provided for @ccModFinanceDesc.
  ///
  /// In tr, this message translates to:
  /// **'Komisyon, hak ediş ve ödemeler'**
  String get ccModFinanceDesc;

  /// No description provided for @ccModHatim.
  ///
  /// In tr, this message translates to:
  /// **'Toplu Hatim Moderasyonu'**
  String get ccModHatim;

  /// No description provided for @ccModHatimDesc.
  ///
  /// In tr, this message translates to:
  /// **'Grupları incele, sil, sahipsiz parçaları temizle'**
  String get ccModHatimDesc;

  /// No description provided for @ccModLoyalty.
  ///
  /// In tr, this message translates to:
  /// **'Sadakat & Puan'**
  String get ccModLoyalty;

  /// No description provided for @ccModLoyaltyDesc.
  ///
  /// In tr, this message translates to:
  /// **'Puan bakiyeleri ve hareketleri'**
  String get ccModLoyaltyDesc;

  /// No description provided for @ccModMerchantPerf.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf Performansı'**
  String get ccModMerchantPerf;

  /// No description provided for @ccModMerchantPerfDesc.
  ///
  /// In tr, this message translates to:
  /// **'Ciro, puan ve memnuniyet sıralaması'**
  String get ccModMerchantPerfDesc;

  /// No description provided for @ccModMerchantReports.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf Raporları'**
  String get ccModMerchantReports;

  /// No description provided for @ccModMerchantReportsDesc.
  ///
  /// In tr, this message translates to:
  /// **'Alışveriş işlemleri ve iptaller'**
  String get ccModMerchantReportsDesc;

  /// No description provided for @ccModMessages.
  ///
  /// In tr, this message translates to:
  /// **'Acente Mesajları'**
  String get ccModMessages;

  /// No description provided for @ccModMessagesDesc.
  ///
  /// In tr, this message translates to:
  /// **'Acentelerle yazışma ve duyuru'**
  String get ccModMessagesDesc;

  /// No description provided for @ccModPackages.
  ///
  /// In tr, this message translates to:
  /// **'Paket Onayları'**
  String get ccModPackages;

  /// No description provided for @ccModPackagesDesc.
  ///
  /// In tr, this message translates to:
  /// **'Bireysel paketler, Full onayı ve süre yönetimi'**
  String get ccModPackagesDesc;

  /// No description provided for @ccModPlatformSettings.
  ///
  /// In tr, this message translates to:
  /// **'Platform Ayarları'**
  String get ccModPlatformSettings;

  /// No description provided for @ccModPlatformSettingsDesc.
  ///
  /// In tr, this message translates to:
  /// **'Demo ödeme, bakım modu, güncelleme ve destek iletişimi'**
  String get ccModPlatformSettingsDesc;

  /// No description provided for @ccModPrayer.
  ///
  /// In tr, this message translates to:
  /// **'Ezan Vakitleri'**
  String get ccModPrayer;

  /// No description provided for @ccModPrayerDesc.
  ///
  /// In tr, this message translates to:
  /// **'Mekke ve Medine vakitlerini düzenle'**
  String get ccModPrayerDesc;

  /// No description provided for @ccModReviews.
  ///
  /// In tr, this message translates to:
  /// **'Değerlendirme Moderasyonu'**
  String get ccModReviews;

  /// No description provided for @ccModReviewsDesc.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan puan ve yorumlarını denetle'**
  String get ccModReviewsDesc;

  /// No description provided for @ccModRisk.
  ///
  /// In tr, this message translates to:
  /// **'Risk & Fraud'**
  String get ccModRisk;

  /// No description provided for @ccModRiskDesc.
  ///
  /// In tr, this message translates to:
  /// **'Şüpheli işlem alarmları'**
  String get ccModRiskDesc;

  /// No description provided for @ccModShops.
  ///
  /// In tr, this message translates to:
  /// **'Anlaşmalı Dükkanlar'**
  String get ccModShops;

  /// No description provided for @ccModShopsDesc.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan, indirim ve esnaf hesapları'**
  String get ccModShopsDesc;

  /// No description provided for @ccModStaff.
  ///
  /// In tr, this message translates to:
  /// **'Yetkili Personel'**
  String get ccModStaff;

  /// No description provided for @ccModStaffDesc.
  ///
  /// In tr, this message translates to:
  /// **'Destek ve muhasebe hesapları'**
  String get ccModStaffDesc;

  /// No description provided for @ccModerActive.
  ///
  /// In tr, this message translates to:
  /// **'Devam ediyor'**
  String get ccModerActive;

  /// No description provided for @ccModerCompleted.
  ///
  /// In tr, this message translates to:
  /// **'Tamamlandı'**
  String get ccModerCompleted;

  /// No description provided for @ccModerCreated.
  ///
  /// In tr, this message translates to:
  /// **'Oluşturma: {date}'**
  String ccModerCreated(String date);

  /// No description provided for @ccModerDelete.
  ///
  /// In tr, this message translates to:
  /// **'Grubu sil'**
  String get ccModerDelete;

  /// No description provided for @ccModerDeleteBody.
  ///
  /// In tr, this message translates to:
  /// **'\"{name}\" grubu ve tüm parçaları kalıcı olarak silinecek.'**
  String ccModerDeleteBody(String name);

  /// No description provided for @ccModerDeleteError.
  ///
  /// In tr, this message translates to:
  /// **'Grup silinemedi'**
  String get ccModerDeleteError;

  /// No description provided for @ccModerDeleteTitle.
  ///
  /// In tr, this message translates to:
  /// **'Grup silinsin mi?'**
  String get ccModerDeleteTitle;

  /// No description provided for @ccModerDeletedOk.
  ///
  /// In tr, this message translates to:
  /// **'Grup silindi'**
  String get ccModerDeletedOk;

  /// No description provided for @ccModerEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Grup bulunamadı'**
  String get ccModerEmpty;

  /// No description provided for @ccModerLoadError.
  ///
  /// In tr, this message translates to:
  /// **'Gruplar yüklenemedi'**
  String get ccModerLoadError;

  /// No description provided for @ccModerMembers.
  ///
  /// In tr, this message translates to:
  /// **'{count} üye'**
  String ccModerMembers(int count);

  /// No description provided for @ccModerOrphanBody.
  ///
  /// In tr, this message translates to:
  /// **'Silinmiş gruplara ait kalan parça kayıtları taranıp silinecek.'**
  String get ccModerOrphanBody;

  /// No description provided for @ccModerOrphanBtn.
  ///
  /// In tr, this message translates to:
  /// **'Sahipsiz parçaları temizle'**
  String get ccModerOrphanBtn;

  /// No description provided for @ccModerOrphanDone.
  ///
  /// In tr, this message translates to:
  /// **'{count} parça silindi, {groups} grup tarandı'**
  String ccModerOrphanDone(int count, int groups);

  /// No description provided for @ccModerOrphanError.
  ///
  /// In tr, this message translates to:
  /// **'Temizlik tamamlanamadı'**
  String get ccModerOrphanError;

  /// No description provided for @ccModerOrphanNoPerm.
  ///
  /// In tr, this message translates to:
  /// **'Tarama için sunucu kuralı gerekiyor (parts koleksiyon grubu okuma izni).'**
  String get ccModerOrphanNoPerm;

  /// No description provided for @ccModerOrphanNone.
  ///
  /// In tr, this message translates to:
  /// **'Sahipsiz parça yok'**
  String get ccModerOrphanNone;

  /// No description provided for @ccModerOrphanTitle.
  ///
  /// In tr, this message translates to:
  /// **'Sahipsiz parçalar temizlensin mi?'**
  String get ccModerOrphanTitle;

  /// No description provided for @ccModerOwner.
  ///
  /// In tr, this message translates to:
  /// **'Sahip: {name}'**
  String ccModerOwner(String name);

  /// No description provided for @ccModerPrivate.
  ///
  /// In tr, this message translates to:
  /// **'Acenteye özel'**
  String get ccModerPrivate;

  /// No description provided for @ccModerProgress.
  ///
  /// In tr, this message translates to:
  /// **'{done}/{total} parça'**
  String ccModerProgress(int done, int total);

  /// No description provided for @ccModerPublic.
  ///
  /// In tr, this message translates to:
  /// **'Herkese açık'**
  String get ccModerPublic;

  /// No description provided for @ccModerRound.
  ///
  /// In tr, this message translates to:
  /// **'{round}. tur'**
  String ccModerRound(int round);

  /// No description provided for @ccModerSearchHint.
  ///
  /// In tr, this message translates to:
  /// **'Grup adına göre ara'**
  String get ccModerSearchHint;

  /// No description provided for @ccModerSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Tüm hatim grupları'**
  String get ccModerSubtitle;

  /// No description provided for @ccModerTitle.
  ///
  /// In tr, this message translates to:
  /// **'Toplu Hatim Moderasyonu'**
  String get ccModerTitle;

  /// No description provided for @ccMsgAddTitle.
  ///
  /// In tr, this message translates to:
  /// **'Başlık ekle'**
  String get ccMsgAddTitle;

  /// No description provided for @ccMsgAgencies.
  ///
  /// In tr, this message translates to:
  /// **'Acenteler'**
  String get ccMsgAgencies;

  /// No description provided for @ccMsgAllAgencies.
  ///
  /// In tr, this message translates to:
  /// **'Tüm acenteler'**
  String get ccMsgAllAgencies;

  /// No description provided for @ccMsgAllRead.
  ///
  /// In tr, this message translates to:
  /// **'Tümü okundu'**
  String get ccMsgAllRead;

  /// No description provided for @ccMsgBodyHint.
  ///
  /// In tr, this message translates to:
  /// **'Mesaj yazın…'**
  String get ccMsgBodyHint;

  /// No description provided for @ccMsgBodyLabel.
  ///
  /// In tr, this message translates to:
  /// **'Mesaj metni'**
  String get ccMsgBodyLabel;

  /// No description provided for @ccMsgBodyRequired.
  ///
  /// In tr, this message translates to:
  /// **'Mesaj metni boş olamaz.'**
  String get ccMsgBodyRequired;

  /// No description provided for @ccMsgBroadcast.
  ///
  /// In tr, this message translates to:
  /// **'Toplu Mesaj'**
  String get ccMsgBroadcast;

  /// No description provided for @ccMsgBroadcastConfirm.
  ///
  /// In tr, this message translates to:
  /// **'Mesaj {count} acenteye gönderilecek. Onaylıyor musunuz?'**
  String ccMsgBroadcastConfirm(int count);

  /// No description provided for @ccMsgBroadcastDone.
  ///
  /// In tr, this message translates to:
  /// **'Mesaj {count} acenteye gönderildi.'**
  String ccMsgBroadcastDone(int count);

  /// No description provided for @ccMsgBroadcastSend.
  ///
  /// In tr, this message translates to:
  /// **'{count} acenteye gönder'**
  String ccMsgBroadcastSend(int count);

  /// No description provided for @ccMsgBroadcastSub.
  ///
  /// In tr, this message translates to:
  /// **'Birden çok acenteye aynı anda gönderin'**
  String get ccMsgBroadcastSub;

  /// No description provided for @ccMsgBroadcastTag.
  ///
  /// In tr, this message translates to:
  /// **'Toplu'**
  String get ccMsgBroadcastTag;

  /// No description provided for @ccMsgCancel.
  ///
  /// In tr, this message translates to:
  /// **'Vazgeç'**
  String get ccMsgCancel;

  /// No description provided for @ccMsgClearSelection.
  ///
  /// In tr, this message translates to:
  /// **'Temizle'**
  String get ccMsgClearSelection;

  /// No description provided for @ccMsgEmptyThread.
  ///
  /// In tr, this message translates to:
  /// **'Henüz mesaj yok. İlk mesajı siz yazın.'**
  String get ccMsgEmptyThread;

  /// No description provided for @ccMsgFilterAll.
  ///
  /// In tr, this message translates to:
  /// **'Tümü'**
  String get ccMsgFilterAll;

  /// No description provided for @ccMsgFilterUnread.
  ///
  /// In tr, this message translates to:
  /// **'Okunmamış'**
  String get ccMsgFilterUnread;

  /// No description provided for @ccMsgHq.
  ///
  /// In tr, this message translates to:
  /// **'Merkez'**
  String get ccMsgHq;

  /// No description provided for @ccMsgHqSub.
  ///
  /// In tr, this message translates to:
  /// **'Umre Rehberim Merkez Ofis'**
  String get ccMsgHqSub;

  /// No description provided for @ccMsgInboxBannerBody.
  ///
  /// In tr, this message translates to:
  /// **'{count} okunmamış mesajınız var'**
  String ccMsgInboxBannerBody(int count);

  /// No description provided for @ccMsgInboxBannerTitle.
  ///
  /// In tr, this message translates to:
  /// **'Merkezden yeni mesaj'**
  String get ccMsgInboxBannerTitle;

  /// No description provided for @ccMsgLoadFailed.
  ///
  /// In tr, this message translates to:
  /// **'Mesajlar yüklenemedi.'**
  String get ccMsgLoadFailed;

  /// No description provided for @ccMsgMenu.
  ///
  /// In tr, this message translates to:
  /// **'Merkez Mesajları'**
  String get ccMsgMenu;

  /// No description provided for @ccMsgMenuSub.
  ///
  /// In tr, this message translates to:
  /// **'Merkezle yazışın'**
  String get ccMsgMenuSub;

  /// No description provided for @ccMsgMessage.
  ///
  /// In tr, this message translates to:
  /// **'Mesaj'**
  String get ccMsgMessage;

  /// No description provided for @ccMsgNoAgencies.
  ///
  /// In tr, this message translates to:
  /// **'Acente bulunamadı.'**
  String get ccMsgNoAgencies;

  /// No description provided for @ccMsgNoAgency.
  ///
  /// In tr, this message translates to:
  /// **'Hesabınıza bağlı bir acente bulunamadı.'**
  String get ccMsgNoAgency;

  /// No description provided for @ccMsgNoMessagesYet.
  ///
  /// In tr, this message translates to:
  /// **'Henüz mesaj yok'**
  String get ccMsgNoMessagesYet;

  /// No description provided for @ccMsgNoRecipients.
  ///
  /// In tr, this message translates to:
  /// **'En az bir acente seçin.'**
  String get ccMsgNoRecipients;

  /// No description provided for @ccMsgPreview.
  ///
  /// In tr, this message translates to:
  /// **'Önizleme'**
  String get ccMsgPreview;

  /// No description provided for @ccMsgRecipients.
  ///
  /// In tr, this message translates to:
  /// **'Alıcılar'**
  String get ccMsgRecipients;

  /// No description provided for @ccMsgSearch.
  ///
  /// In tr, this message translates to:
  /// **'Acente ara…'**
  String get ccMsgSearch;

  /// No description provided for @ccMsgSelectAll.
  ///
  /// In tr, this message translates to:
  /// **'Tümünü seç'**
  String get ccMsgSelectAll;

  /// No description provided for @ccMsgSelectedAgencies.
  ///
  /// In tr, this message translates to:
  /// **'Seçili acenteler'**
  String get ccMsgSelectedAgencies;

  /// No description provided for @ccMsgSelectedCount.
  ///
  /// In tr, this message translates to:
  /// **'{count} acente seçildi'**
  String ccMsgSelectedCount(int count);

  /// No description provided for @ccMsgSend.
  ///
  /// In tr, this message translates to:
  /// **'Gönder'**
  String get ccMsgSend;

  /// No description provided for @ccMsgSendFailed.
  ///
  /// In tr, this message translates to:
  /// **'Mesaj gönderilemedi.'**
  String get ccMsgSendFailed;

  /// No description provided for @ccMsgSent.
  ///
  /// In tr, this message translates to:
  /// **'Mesaj gönderildi.'**
  String get ccMsgSent;

  /// No description provided for @ccMsgSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Merkez ↔ Acente iletişimi'**
  String get ccMsgSubtitle;

  /// No description provided for @ccMsgTemplates.
  ///
  /// In tr, this message translates to:
  /// **'Hazır şablonlar'**
  String get ccMsgTemplates;

  /// No description provided for @ccMsgTitle.
  ///
  /// In tr, this message translates to:
  /// **'Acente Mesajları'**
  String get ccMsgTitle;

  /// No description provided for @ccMsgTitleHint.
  ///
  /// In tr, this message translates to:
  /// **'Başlık (isteğe bağlı)'**
  String get ccMsgTitleHint;

  /// No description provided for @ccMsgTitleLabel.
  ///
  /// In tr, this message translates to:
  /// **'Başlık'**
  String get ccMsgTitleLabel;

  /// No description provided for @ccMsgToday.
  ///
  /// In tr, this message translates to:
  /// **'Bugün'**
  String get ccMsgToday;

  /// No description provided for @ccMsgTplCampaign.
  ///
  /// In tr, this message translates to:
  /// **'Kampanya duyurusu'**
  String get ccMsgTplCampaign;

  /// No description provided for @ccMsgTplCampaignBody.
  ///
  /// In tr, this message translates to:
  /// **'Değerli iş ortağımız, anlaşmalı esnaf ağımızda misafirlerinize özel yeni bir puan kampanyası başlattık. Ayrıntılar için panelinizi inceleyebilir, misafirlerinizi bilgilendirebilirsiniz.'**
  String get ccMsgTplCampaignBody;

  /// No description provided for @ccMsgTplCampaignTitle.
  ///
  /// In tr, this message translates to:
  /// **'Yeni kampanya'**
  String get ccMsgTplCampaignTitle;

  /// No description provided for @ccMsgTplDocument.
  ///
  /// In tr, this message translates to:
  /// **'Belge talebi'**
  String get ccMsgTplDocument;

  /// No description provided for @ccMsgTplDocumentBody.
  ///
  /// In tr, this message translates to:
  /// **'Değerli iş ortağımız, kayıtlarınızın güncellenmesi için güncel TÜRSAB belgenizi ve vergi levhanızı en kısa sürede iletmenizi rica ederiz.'**
  String get ccMsgTplDocumentBody;

  /// No description provided for @ccMsgTplDocumentTitle.
  ///
  /// In tr, this message translates to:
  /// **'Belge talebi'**
  String get ccMsgTplDocumentTitle;

  /// No description provided for @ccMsgTplMaintenance.
  ///
  /// In tr, this message translates to:
  /// **'Sistem bakımı'**
  String get ccMsgTplMaintenance;

  /// No description provided for @ccMsgTplMaintenanceBody.
  ///
  /// In tr, this message translates to:
  /// **'Değerli iş ortağımız, sistemimizde planlı bakım çalışması yapılacaktır. Bakım süresince uygulamada kısa süreli kesintiler yaşanabilir. Anlayışınız için teşekkür ederiz.'**
  String get ccMsgTplMaintenanceBody;

  /// No description provided for @ccMsgTplMaintenanceTitle.
  ///
  /// In tr, this message translates to:
  /// **'Planlı sistem bakımı'**
  String get ccMsgTplMaintenanceTitle;

  /// No description provided for @ccMsgTplPayment.
  ///
  /// In tr, this message translates to:
  /// **'Ödeme hatırlatma'**
  String get ccMsgTplPayment;

  /// No description provided for @ccMsgTplPaymentBody.
  ///
  /// In tr, this message translates to:
  /// **'Değerli iş ortağımız, dönem hizmet bedelinizin son ödeme tarihi yaklaşmaktadır. Ödemenizi zamanında yapmanızı rica eder, ödeme yaptıysanız bu mesajı dikkate almamanızı rica ederiz.'**
  String get ccMsgTplPaymentBody;

  /// No description provided for @ccMsgTplPaymentTitle.
  ///
  /// In tr, this message translates to:
  /// **'Ödeme hatırlatması'**
  String get ccMsgTplPaymentTitle;

  /// No description provided for @ccMsgTplWelcome.
  ///
  /// In tr, this message translates to:
  /// **'Hoş geldiniz'**
  String get ccMsgTplWelcome;

  /// No description provided for @ccMsgTplWelcomeBody.
  ///
  /// In tr, this message translates to:
  /// **'Değerli iş ortağımız, Umre Rehberim ailesine hoş geldiniz. Panelinizden misafirlerinizi, seferlerinizi ve otellerinizi yönetebilirsiniz. Her türlü sorunuz için bu kanaldan bize yazabilirsiniz.'**
  String get ccMsgTplWelcomeBody;

  /// No description provided for @ccMsgTplWelcomeTitle.
  ///
  /// In tr, this message translates to:
  /// **'Umre Rehberim\'e hoş geldiniz'**
  String get ccMsgTplWelcomeTitle;

  /// No description provided for @ccMsgUnreadTotal.
  ///
  /// In tr, this message translates to:
  /// **'{count} okunmamış'**
  String ccMsgUnreadTotal(int count);

  /// No description provided for @ccMsgYesterday.
  ///
  /// In tr, this message translates to:
  /// **'Dün'**
  String get ccMsgYesterday;

  /// No description provided for @ccMsgYou.
  ///
  /// In tr, this message translates to:
  /// **'Siz'**
  String get ccMsgYou;

  /// No description provided for @ccNoRecent.
  ///
  /// In tr, this message translates to:
  /// **'Henüz kayıt yok'**
  String get ccNoRecent;

  /// No description provided for @ccPeriodAll.
  ///
  /// In tr, this message translates to:
  /// **'Tümü'**
  String get ccPeriodAll;

  /// No description provided for @ccPeriodMonth.
  ///
  /// In tr, this message translates to:
  /// **'30 gün'**
  String get ccPeriodMonth;

  /// No description provided for @ccPeriodQuarter.
  ///
  /// In tr, this message translates to:
  /// **'90 gün'**
  String get ccPeriodQuarter;

  /// No description provided for @ccPeriodToday.
  ///
  /// In tr, this message translates to:
  /// **'Bugün'**
  String get ccPeriodToday;

  /// No description provided for @ccPeriodWeek.
  ///
  /// In tr, this message translates to:
  /// **'7 gün'**
  String get ccPeriodWeek;

  /// No description provided for @ccPeriodYear.
  ///
  /// In tr, this message translates to:
  /// **'1 yıl'**
  String get ccPeriodYear;

  /// No description provided for @ccPermAgencies.
  ///
  /// In tr, this message translates to:
  /// **'Acenteler ve kişiler'**
  String get ccPermAgencies;

  /// No description provided for @ccPermAgencyEdit.
  ///
  /// In tr, this message translates to:
  /// **'Acente ekle / düzenle'**
  String get ccPermAgencyEdit;

  /// No description provided for @ccPermAudit.
  ///
  /// In tr, this message translates to:
  /// **'Denetim kaydı'**
  String get ccPermAudit;

  /// No description provided for @ccPermCoupons.
  ///
  /// In tr, this message translates to:
  /// **'Kampanya ve kupon'**
  String get ccPermCoupons;

  /// No description provided for @ccPermFinance.
  ///
  /// In tr, this message translates to:
  /// **'Finans ve hak ediş'**
  String get ccPermFinance;

  /// No description provided for @ccPermFull.
  ///
  /// In tr, this message translates to:
  /// **'Tam'**
  String get ccPermFull;

  /// No description provided for @ccPermLoyalty.
  ///
  /// In tr, this message translates to:
  /// **'Puan hareketleri'**
  String get ccPermLoyalty;

  /// No description provided for @ccPermMessages.
  ///
  /// In tr, this message translates to:
  /// **'Acente mesajları'**
  String get ccPermMessages;

  /// No description provided for @ccPermNone.
  ///
  /// In tr, this message translates to:
  /// **'Yok'**
  String get ccPermNone;

  /// No description provided for @ccPermRead.
  ///
  /// In tr, this message translates to:
  /// **'Okuma'**
  String get ccPermRead;

  /// No description provided for @ccPermReports.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf raporları ve performans'**
  String get ccPermReports;

  /// No description provided for @ccPermRisk.
  ///
  /// In tr, this message translates to:
  /// **'Risk ve fraud'**
  String get ccPermRisk;

  /// No description provided for @ccPermShops.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan ve esnaf yönetimi'**
  String get ccPermShops;

  /// No description provided for @ccPermStaff.
  ///
  /// In tr, this message translates to:
  /// **'Personel yönetimi'**
  String get ccPermStaff;

  /// No description provided for @ccPkgActionError.
  ///
  /// In tr, this message translates to:
  /// **'İşlem tamamlanamadı. Lütfen tekrar deneyin.'**
  String get ccPkgActionError;

  /// No description provided for @ccPkgApprove.
  ///
  /// In tr, this message translates to:
  /// **'Onayla'**
  String get ccPkgApprove;

  /// No description provided for @ccPkgApproveHint.
  ///
  /// In tr, this message translates to:
  /// **'Seyahat tarihlerini girin; kullanıcının ana sayfasında geri sayım bu tarihlerle çalışır.'**
  String get ccPkgApproveHint;

  /// No description provided for @ccPkgApproveTitle.
  ///
  /// In tr, this message translates to:
  /// **'Full paketi onayla'**
  String get ccPkgApproveTitle;

  /// No description provided for @ccPkgApprovedOk.
  ///
  /// In tr, this message translates to:
  /// **'Paket onaylandı.'**
  String get ccPkgApprovedOk;

  /// No description provided for @ccPkgApprovedSub.
  ///
  /// In tr, this message translates to:
  /// **'Tarihleriniz yönetici tarafından girildi · değişiklik için iletişime geçin'**
  String get ccPkgApprovedSub;

  /// No description provided for @ccPkgCheckIn.
  ///
  /// In tr, this message translates to:
  /// **'Giriş'**
  String get ccPkgCheckIn;

  /// No description provided for @ccPkgCheckOut.
  ///
  /// In tr, this message translates to:
  /// **'Çıkış'**
  String get ccPkgCheckOut;

  /// No description provided for @ccPkgConfirm.
  ///
  /// In tr, this message translates to:
  /// **'Onayla'**
  String get ccPkgConfirm;

  /// No description provided for @ccPkgDatesOrder.
  ///
  /// In tr, this message translates to:
  /// **'Çıkış tarihi girişten önce olamaz.'**
  String get ccPkgDatesOrder;

  /// No description provided for @ccPkgDatesPast.
  ///
  /// In tr, this message translates to:
  /// **'Tarihler geçmişte; paket süresi bugünden sonra bitmeli.'**
  String get ccPkgDatesPast;

  /// No description provided for @ccPkgDatesRequired.
  ///
  /// In tr, this message translates to:
  /// **'En az bir şehir için giriş ve çıkış tarihi girin.'**
  String get ccPkgDatesRequired;

  /// No description provided for @ccPkgEditDates.
  ///
  /// In tr, this message translates to:
  /// **'Tarihleri düzenle'**
  String get ccPkgEditDates;

  /// No description provided for @ccPkgEmail.
  ///
  /// In tr, this message translates to:
  /// **'E-posta'**
  String get ccPkgEmail;

  /// No description provided for @ccPkgEmptyActive.
  ///
  /// In tr, this message translates to:
  /// **'Aktif paket yok.'**
  String get ccPkgEmptyActive;

  /// No description provided for @ccPkgEmptyExpired.
  ///
  /// In tr, this message translates to:
  /// **'Süresi dolmuş paket yok.'**
  String get ccPkgEmptyExpired;

  /// No description provided for @ccPkgEmptyPending.
  ///
  /// In tr, this message translates to:
  /// **'Onay bekleyen paket yok.'**
  String get ccPkgEmptyPending;

  /// No description provided for @ccPkgExtend.
  ///
  /// In tr, this message translates to:
  /// **'+30 gün uzat'**
  String get ccPkgExtend;

  /// No description provided for @ccPkgExtendBody.
  ///
  /// In tr, this message translates to:
  /// **'{name} için paket süresi 30 gün uzatılacak.'**
  String ccPkgExtendBody(String name);

  /// No description provided for @ccPkgExtendTitle.
  ///
  /// In tr, this message translates to:
  /// **'Süre uzatılsın mı?'**
  String get ccPkgExtendTitle;

  /// No description provided for @ccPkgExtendedOk.
  ///
  /// In tr, this message translates to:
  /// **'Süre uzatıldı.'**
  String get ccPkgExtendedOk;

  /// No description provided for @ccPkgFilterBireysel.
  ///
  /// In tr, this message translates to:
  /// **'Bireysel'**
  String get ccPkgFilterBireysel;

  /// No description provided for @ccPkgFullActiveNote.
  ///
  /// In tr, this message translates to:
  /// **'Full Umre Paketiniz sürüyor; değişiklik için bizimle iletişime geçin.'**
  String get ccPkgFullActiveNote;

  /// No description provided for @ccPkgGone.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı paketi iptal etmiş; liste yenilendi.'**
  String get ccPkgGone;

  /// No description provided for @ccPkgHotel.
  ///
  /// In tr, this message translates to:
  /// **'Otel (isteğe bağlı)'**
  String get ccPkgHotel;

  /// No description provided for @ccPkgKpiActive.
  ///
  /// In tr, this message translates to:
  /// **'Aktif'**
  String get ccPkgKpiActive;

  /// No description provided for @ccPkgKpiExpired.
  ///
  /// In tr, this message translates to:
  /// **'Süresi dolmuş'**
  String get ccPkgKpiExpired;

  /// No description provided for @ccPkgKpiPending.
  ///
  /// In tr, this message translates to:
  /// **'Onay bekleyen'**
  String get ccPkgKpiPending;

  /// No description provided for @ccPkgKpiTotal.
  ///
  /// In tr, this message translates to:
  /// **'Toplam'**
  String get ccPkgKpiTotal;

  /// No description provided for @ccPkgLoadError.
  ///
  /// In tr, this message translates to:
  /// **'Paketler yüklenemedi.'**
  String get ccPkgLoadError;

  /// No description provided for @ccPkgMedine.
  ///
  /// In tr, this message translates to:
  /// **'Medine'**
  String get ccPkgMedine;

  /// No description provided for @ccPkgMekke.
  ///
  /// In tr, this message translates to:
  /// **'Mekke'**
  String get ccPkgMekke;

  /// No description provided for @ccPkgPickDate.
  ///
  /// In tr, this message translates to:
  /// **'Tarih seç'**
  String get ccPkgPickDate;

  /// No description provided for @ccPkgRevoke.
  ///
  /// In tr, this message translates to:
  /// **'İptal et'**
  String get ccPkgRevoke;

  /// No description provided for @ccPkgRevokeBody.
  ///
  /// In tr, this message translates to:
  /// **'{name} için paket hakkı silinir ve kullanıcı ücretsiz plana döner.'**
  String ccPkgRevokeBody(String name);

  /// No description provided for @ccPkgRevokeTitle.
  ///
  /// In tr, this message translates to:
  /// **'Paket iptal edilsin mi?'**
  String get ccPkgRevokeTitle;

  /// No description provided for @ccPkgRevokedOk.
  ///
  /// In tr, this message translates to:
  /// **'Paket iptal edildi.'**
  String get ccPkgRevokedOk;

  /// No description provided for @ccPkgSearch.
  ///
  /// In tr, this message translates to:
  /// **'Ad veya e-posta ara'**
  String get ccPkgSearch;

  /// No description provided for @ccPkgStatusActive.
  ///
  /// In tr, this message translates to:
  /// **'Aktif'**
  String get ccPkgStatusActive;

  /// No description provided for @ccPkgStatusExpired.
  ///
  /// In tr, this message translates to:
  /// **'Süresi doldu'**
  String get ccPkgStatusExpired;

  /// No description provided for @ccPkgStatusPending.
  ///
  /// In tr, this message translates to:
  /// **'Onay bekliyor'**
  String get ccPkgStatusPending;

  /// No description provided for @ccPkgSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Bireysel kullanıcı paketleri'**
  String get ccPkgSubtitle;

  /// No description provided for @ccPkgTitle.
  ///
  /// In tr, this message translates to:
  /// **'Paket Onayları'**
  String get ccPkgTitle;

  /// No description provided for @ccPkgUnknownUser.
  ///
  /// In tr, this message translates to:
  /// **'Bilinmeyen kullanıcı'**
  String get ccPkgUnknownUser;

  /// No description provided for @ccPkgUntil.
  ///
  /// In tr, this message translates to:
  /// **'Bitiş: {date}'**
  String ccPkgUntil(String date);

  /// No description provided for @ccPkgUserNoPackage.
  ///
  /// In tr, this message translates to:
  /// **'Paket yok'**
  String get ccPkgUserNoPackage;

  /// No description provided for @ccPkgUserOpen.
  ///
  /// In tr, this message translates to:
  /// **'Paket Onayları\'nda aç'**
  String get ccPkgUserOpen;

  /// No description provided for @ccPkgUserPackage.
  ///
  /// In tr, this message translates to:
  /// **'Paket'**
  String get ccPkgUserPackage;

  /// No description provided for @ccPrayerAksam.
  ///
  /// In tr, this message translates to:
  /// **'Akşam'**
  String get ccPrayerAksam;

  /// No description provided for @ccPrayerDate.
  ///
  /// In tr, this message translates to:
  /// **'Tarih'**
  String get ccPrayerDate;

  /// No description provided for @ccPrayerDay.
  ///
  /// In tr, this message translates to:
  /// **'Gün'**
  String get ccPrayerDay;

  /// No description provided for @ccPrayerGunes.
  ///
  /// In tr, this message translates to:
  /// **'Güneş'**
  String get ccPrayerGunes;

  /// No description provided for @ccPrayerHicri.
  ///
  /// In tr, this message translates to:
  /// **'Hicri tarih'**
  String get ccPrayerHicri;

  /// No description provided for @ccPrayerIkindi.
  ///
  /// In tr, this message translates to:
  /// **'İkindi'**
  String get ccPrayerIkindi;

  /// No description provided for @ccPrayerImsak.
  ///
  /// In tr, this message translates to:
  /// **'İmsak'**
  String get ccPrayerImsak;

  /// No description provided for @ccPrayerInvalid.
  ///
  /// In tr, this message translates to:
  /// **'Vakitleri SS:DD biçiminde girin (ör. 05:12)'**
  String get ccPrayerInvalid;

  /// No description provided for @ccPrayerLoadError.
  ///
  /// In tr, this message translates to:
  /// **'Vakitler yüklenemedi'**
  String get ccPrayerLoadError;

  /// No description provided for @ccPrayerMedine.
  ///
  /// In tr, this message translates to:
  /// **'Medine'**
  String get ccPrayerMedine;

  /// No description provided for @ccPrayerMekke.
  ///
  /// In tr, this message translates to:
  /// **'Mekke'**
  String get ccPrayerMekke;

  /// No description provided for @ccPrayerNewDoc.
  ///
  /// In tr, this message translates to:
  /// **'Bu tarih için kayıt yok; kaydedince yeni oluşturulur.'**
  String get ccPrayerNewDoc;

  /// No description provided for @ccPrayerOgle.
  ///
  /// In tr, this message translates to:
  /// **'Öğle'**
  String get ccPrayerOgle;

  /// No description provided for @ccPrayerSave.
  ///
  /// In tr, this message translates to:
  /// **'Kaydet'**
  String get ccPrayerSave;

  /// No description provided for @ccPrayerSaveError.
  ///
  /// In tr, this message translates to:
  /// **'Vakitler kaydedilemedi'**
  String get ccPrayerSaveError;

  /// No description provided for @ccPrayerSaved.
  ///
  /// In tr, this message translates to:
  /// **'Vakitler kaydedildi'**
  String get ccPrayerSaved;

  /// No description provided for @ccPrayerSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Mekke ve Medine günlük vakitleri'**
  String get ccPrayerSubtitle;

  /// No description provided for @ccPrayerTitle.
  ///
  /// In tr, this message translates to:
  /// **'Ezan Vakitleri'**
  String get ccPrayerTitle;

  /// No description provided for @ccPrayerYatsi.
  ///
  /// In tr, this message translates to:
  /// **'Yatsı'**
  String get ccPrayerYatsi;

  /// No description provided for @ccReadOnly.
  ///
  /// In tr, this message translates to:
  /// **'Salt okuma'**
  String get ccReadOnly;

  /// No description provided for @ccReviewComplaint.
  ///
  /// In tr, this message translates to:
  /// **'Şikâyet'**
  String get ccReviewComplaint;

  /// No description provided for @ccReviewDelete.
  ///
  /// In tr, this message translates to:
  /// **'Sil'**
  String get ccReviewDelete;

  /// No description provided for @ccReviewDeleteBody.
  ///
  /// In tr, this message translates to:
  /// **'\"{shop}\" dükkanına ait bu değerlendirme kalıcı olarak silinecek.'**
  String ccReviewDeleteBody(String shop);

  /// No description provided for @ccReviewDeleteError.
  ///
  /// In tr, this message translates to:
  /// **'Değerlendirme silinemedi'**
  String get ccReviewDeleteError;

  /// No description provided for @ccReviewDeleteTitle.
  ///
  /// In tr, this message translates to:
  /// **'Değerlendirme silinsin mi?'**
  String get ccReviewDeleteTitle;

  /// No description provided for @ccReviewDeletedOk.
  ///
  /// In tr, this message translates to:
  /// **'Değerlendirme silindi'**
  String get ccReviewDeletedOk;

  /// No description provided for @ccReviewEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Değerlendirme bulunamadı'**
  String get ccReviewEmpty;

  /// No description provided for @ccReviewFilterAll.
  ///
  /// In tr, this message translates to:
  /// **'Tümü'**
  String get ccReviewFilterAll;

  /// No description provided for @ccReviewFilterComment.
  ///
  /// In tr, this message translates to:
  /// **'Yorumlu'**
  String get ccReviewFilterComment;

  /// No description provided for @ccReviewFilterLow.
  ///
  /// In tr, this message translates to:
  /// **'Düşük puan'**
  String get ccReviewFilterLow;

  /// No description provided for @ccReviewLoadError.
  ///
  /// In tr, this message translates to:
  /// **'Değerlendirmeler yüklenemedi'**
  String get ccReviewLoadError;

  /// No description provided for @ccReviewNoComment.
  ///
  /// In tr, this message translates to:
  /// **'Yorum yok'**
  String get ccReviewNoComment;

  /// No description provided for @ccReviewSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan puan ve yorumları'**
  String get ccReviewSubtitle;

  /// No description provided for @ccReviewTitle.
  ///
  /// In tr, this message translates to:
  /// **'Değerlendirme Moderasyonu'**
  String get ccReviewTitle;

  /// No description provided for @ccReviewUnknownShop.
  ///
  /// In tr, this message translates to:
  /// **'Bilinmeyen dükkan'**
  String get ccReviewUnknownShop;

  /// No description provided for @ccRiskActionError.
  ///
  /// In tr, this message translates to:
  /// **'İşlem başarısız oldu'**
  String get ccRiskActionError;

  /// No description provided for @ccRiskAlarmsTitle.
  ///
  /// In tr, this message translates to:
  /// **'Alarmlar'**
  String get ccRiskAlarmsTitle;

  /// No description provided for @ccRiskAmount.
  ///
  /// In tr, this message translates to:
  /// **'Tutar'**
  String get ccRiskAmount;

  /// No description provided for @ccRiskCancel.
  ///
  /// In tr, this message translates to:
  /// **'Vazgeç'**
  String get ccRiskCancel;

  /// No description provided for @ccRiskCancelReasonDefault.
  ///
  /// In tr, this message translates to:
  /// **'Risk incelemesi'**
  String get ccRiskCancelReasonDefault;

  /// No description provided for @ccRiskCancelReasonHint.
  ///
  /// In tr, this message translates to:
  /// **'İptal nedeni'**
  String get ccRiskCancelReasonHint;

  /// No description provided for @ccRiskCancelTitle.
  ///
  /// In tr, this message translates to:
  /// **'İşlem iptali'**
  String get ccRiskCancelTitle;

  /// No description provided for @ccRiskCancelTx.
  ///
  /// In tr, this message translates to:
  /// **'İşlemi iptal et'**
  String get ccRiskCancelTx;

  /// No description provided for @ccRiskCancelled.
  ///
  /// In tr, this message translates to:
  /// **'İşlem iptal edildi'**
  String get ccRiskCancelled;

  /// No description provided for @ccRiskCouponActive.
  ///
  /// In tr, this message translates to:
  /// **'Aktif'**
  String get ccRiskCouponActive;

  /// No description provided for @ccRiskCouponInfo.
  ///
  /// In tr, this message translates to:
  /// **'İndirim {value} · {used}/{max} kullanım'**
  String ccRiskCouponInfo(String value, int used, String max);

  /// No description provided for @ccRiskCouponPassive.
  ///
  /// In tr, this message translates to:
  /// **'Pasif'**
  String get ccRiskCouponPassive;

  /// No description provided for @ccRiskEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Filtreye uyan alarm yok'**
  String get ccRiskEmpty;

  /// No description provided for @ccRiskEntities.
  ///
  /// In tr, this message translates to:
  /// **'İlgili kayıtlar'**
  String get ccRiskEntities;

  /// No description provided for @ccRiskEntityAdmin.
  ///
  /// In tr, this message translates to:
  /// **'Yönetici'**
  String get ccRiskEntityAdmin;

  /// No description provided for @ccRiskEntityCoupon.
  ///
  /// In tr, this message translates to:
  /// **'Kupon'**
  String get ccRiskEntityCoupon;

  /// No description provided for @ccRiskEntityGuest.
  ///
  /// In tr, this message translates to:
  /// **'Misafir'**
  String get ccRiskEntityGuest;

  /// No description provided for @ccRiskEntityShop.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan'**
  String get ccRiskEntityShop;

  /// No description provided for @ccRiskEvidence.
  ///
  /// In tr, this message translates to:
  /// **'Kanıtlar'**
  String get ccRiskEvidence;

  /// No description provided for @ccRiskExpAdminGrants.
  ///
  /// In tr, this message translates to:
  /// **'{admin} 7 gün içinde toplam {points} puan yükledi.'**
  String ccRiskExpAdminGrants(String admin, String points);

  /// No description provided for @ccRiskExpBasket.
  ///
  /// In tr, this message translates to:
  /// **'İşlem {amount}; dükkanın ortalama sepeti {avg} (5 katından fazla).'**
  String ccRiskExpBasket(String amount, String avg);

  /// No description provided for @ccRiskExpBigAmount.
  ///
  /// In tr, this message translates to:
  /// **'Tek işlem {amount}; azami tutarın (20.000 SAR) %80\'ine ulaşıyor.'**
  String ccRiskExpBigAmount(String amount);

  /// No description provided for @ccRiskExpBigGrant.
  ///
  /// In tr, this message translates to:
  /// **'{guest} misafirine tek seferde {points} puan yüklendi.'**
  String ccRiskExpBigGrant(String guest, String points);

  /// No description provided for @ccRiskExpBigPoints.
  ///
  /// In tr, this message translates to:
  /// **'Tek işlemde {points} puan harcandı.'**
  String ccRiskExpBigPoints(String points);

  /// No description provided for @ccRiskExpCancelRate.
  ///
  /// In tr, this message translates to:
  /// **'{shop} son 90 günde {count} işlemin %{rate}\'ini iptal etti.'**
  String ccRiskExpCancelRate(String shop, int rate, int count);

  /// No description provided for @ccRiskExpConcentration.
  ///
  /// In tr, this message translates to:
  /// **'{guest}, {shop} dükkanının cirosunun %{share}\'ini tek başına oluşturuyor.'**
  String ccRiskExpConcentration(String guest, String shop, int share);

  /// No description provided for @ccRiskExpCouponUnlimited.
  ///
  /// In tr, this message translates to:
  /// **'{code} kuponunun kullanım sınırı yok ve {count} kez kullanıldı.'**
  String ccRiskExpCouponUnlimited(String code, int count);

  /// No description provided for @ccRiskExpCouponValue.
  ///
  /// In tr, this message translates to:
  /// **'{code} kuponu {value} indirim veriyor.'**
  String ccRiskExpCouponValue(String code, String value);

  /// No description provided for @ccRiskExpFrequentGrants.
  ///
  /// In tr, this message translates to:
  /// **'{guest} misafirine 7 gün içinde {count} kez puan yüklendi.'**
  String ccRiskExpFrequentGrants(String guest, int count);

  /// No description provided for @ccRiskExpNight.
  ///
  /// In tr, this message translates to:
  /// **'İşlem gece saatinde ({time}) yapıldı.'**
  String ccRiskExpNight(String time);

  /// No description provided for @ccRiskExpPointsBurn.
  ///
  /// In tr, this message translates to:
  /// **'{guest} 90 günde {spent} puan harcadı, aynı dönemde yalnız {earned} puan kazandı.'**
  String ccRiskExpPointsBurn(String guest, String spent, String earned);

  /// No description provided for @ccRiskExpQuickCancel.
  ///
  /// In tr, this message translates to:
  /// **'İşlem oluşturulduktan {minutes} dakika sonra iptal edildi.'**
  String ccRiskExpQuickCancel(int minutes);

  /// No description provided for @ccRiskExpSameAgency.
  ///
  /// In tr, this message translates to:
  /// **'Misafir ve dükkan aynı acenteye bağlı.'**
  String get ccRiskExpSameAgency;

  /// No description provided for @ccRiskExpVelocity.
  ///
  /// In tr, this message translates to:
  /// **'{guest}, {shop} dükkanında 24 saat içinde {count} işlem yaptı.'**
  String ccRiskExpVelocity(String guest, String shop, int count);

  /// No description provided for @ccRiskFilterAll.
  ///
  /// In tr, this message translates to:
  /// **'Tümü'**
  String get ccRiskFilterAll;

  /// No description provided for @ccRiskFilterSeverity.
  ///
  /// In tr, this message translates to:
  /// **'Önem'**
  String get ccRiskFilterSeverity;

  /// No description provided for @ccRiskFilterStatus.
  ///
  /// In tr, this message translates to:
  /// **'Durum'**
  String get ccRiskFilterStatus;

  /// No description provided for @ccRiskFilterType.
  ///
  /// In tr, this message translates to:
  /// **'Tür'**
  String get ccRiskFilterType;

  /// No description provided for @ccRiskKpiOpen.
  ///
  /// In tr, this message translates to:
  /// **'İncelenmemiş'**
  String get ccRiskKpiOpen;

  /// No description provided for @ccRiskLoadError.
  ///
  /// In tr, this message translates to:
  /// **'Risk verileri yüklenemedi'**
  String get ccRiskLoadError;

  /// No description provided for @ccRiskNoteHint.
  ///
  /// In tr, this message translates to:
  /// **'İnceleme notu'**
  String get ccRiskNoteHint;

  /// No description provided for @ccRiskPointsUnit.
  ///
  /// In tr, this message translates to:
  /// **'{points} puan'**
  String ccRiskPointsUnit(String points);

  /// No description provided for @ccRiskRefresh.
  ///
  /// In tr, this message translates to:
  /// **'Yenile'**
  String get ccRiskRefresh;

  /// No description provided for @ccRiskReview.
  ///
  /// In tr, this message translates to:
  /// **'İnceleme'**
  String get ccRiskReview;

  /// No description provided for @ccRiskReviewSaved.
  ///
  /// In tr, this message translates to:
  /// **'İnceleme kaydedildi'**
  String get ccRiskReviewSaved;

  /// No description provided for @ccRiskReviewedBy.
  ///
  /// In tr, this message translates to:
  /// **'{name} · {date}'**
  String ccRiskReviewedBy(String name, String date);

  /// No description provided for @ccRiskReviewsEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Henüz inceleme yok'**
  String get ccRiskReviewsEmpty;

  /// No description provided for @ccRiskReviewsTitle.
  ///
  /// In tr, this message translates to:
  /// **'İnceleme kayıtları'**
  String get ccRiskReviewsTitle;

  /// No description provided for @ccRiskSaveReview.
  ///
  /// In tr, this message translates to:
  /// **'İncelemeyi kaydet'**
  String get ccRiskSaveReview;

  /// No description provided for @ccRiskSevHigh.
  ///
  /// In tr, this message translates to:
  /// **'Yüksek'**
  String get ccRiskSevHigh;

  /// No description provided for @ccRiskSevLow.
  ///
  /// In tr, this message translates to:
  /// **'Düşük'**
  String get ccRiskSevLow;

  /// No description provided for @ccRiskSevMedium.
  ///
  /// In tr, this message translates to:
  /// **'Orta'**
  String get ccRiskSevMedium;

  /// No description provided for @ccRiskStatusConfirmed.
  ///
  /// In tr, this message translates to:
  /// **'Onaylandı'**
  String get ccRiskStatusConfirmed;

  /// No description provided for @ccRiskStatusFalse.
  ///
  /// In tr, this message translates to:
  /// **'Yanlış alarm'**
  String get ccRiskStatusFalse;

  /// No description provided for @ccRiskStatusNew.
  ///
  /// In tr, this message translates to:
  /// **'Yeni'**
  String get ccRiskStatusNew;

  /// No description provided for @ccRiskStatusReviewed.
  ///
  /// In tr, this message translates to:
  /// **'İncelendi'**
  String get ccRiskStatusReviewed;

  /// No description provided for @ccRiskSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Son 90 günün kural tabanlı alarmları'**
  String get ccRiskSubtitle;

  /// No description provided for @ccRiskSupportNote.
  ///
  /// In tr, this message translates to:
  /// **'İşlem tabanlı alarmlar (alışveriş, puan ve kupon verisi) yalnız süper admin tarafından hesaplanır. Aşağıda yapılan incelemeleri görebilirsiniz.'**
  String get ccRiskSupportNote;

  /// No description provided for @ccRiskTime.
  ///
  /// In tr, this message translates to:
  /// **'Zaman'**
  String get ccRiskTime;

  /// No description provided for @ccRiskTitle.
  ///
  /// In tr, this message translates to:
  /// **'Risk ve Dolandırıcılık'**
  String get ccRiskTitle;

  /// No description provided for @ccRiskTxCancelledBadge.
  ///
  /// In tr, this message translates to:
  /// **'İptal'**
  String get ccRiskTxCancelledBadge;

  /// No description provided for @ccRiskTypeAdminGrants.
  ///
  /// In tr, this message translates to:
  /// **'Yönetici puan hacmi'**
  String get ccRiskTypeAdminGrants;

  /// No description provided for @ccRiskTypeBasket.
  ///
  /// In tr, this message translates to:
  /// **'Olağandışı sepet'**
  String get ccRiskTypeBasket;

  /// No description provided for @ccRiskTypeBigAmount.
  ///
  /// In tr, this message translates to:
  /// **'Yüksek tutarlı işlem'**
  String get ccRiskTypeBigAmount;

  /// No description provided for @ccRiskTypeBigGrant.
  ///
  /// In tr, this message translates to:
  /// **'Büyük puan yüklemesi'**
  String get ccRiskTypeBigGrant;

  /// No description provided for @ccRiskTypeBigPoints.
  ///
  /// In tr, this message translates to:
  /// **'Yüksek puan harcaması'**
  String get ccRiskTypeBigPoints;

  /// No description provided for @ccRiskTypeCancelRate.
  ///
  /// In tr, this message translates to:
  /// **'Yüksek iptal oranı'**
  String get ccRiskTypeCancelRate;

  /// No description provided for @ccRiskTypeConcentration.
  ///
  /// In tr, this message translates to:
  /// **'Ciro yoğunlaşması'**
  String get ccRiskTypeConcentration;

  /// No description provided for @ccRiskTypeCouponUnlimited.
  ///
  /// In tr, this message translates to:
  /// **'Sınırsız kupon, yoğun kullanım'**
  String get ccRiskTypeCouponUnlimited;

  /// No description provided for @ccRiskTypeCouponValue.
  ///
  /// In tr, this message translates to:
  /// **'Yüksek değerli kupon'**
  String get ccRiskTypeCouponValue;

  /// No description provided for @ccRiskTypeFrequentGrants.
  ///
  /// In tr, this message translates to:
  /// **'Sık puan yüklemesi'**
  String get ccRiskTypeFrequentGrants;

  /// No description provided for @ccRiskTypeNight.
  ///
  /// In tr, this message translates to:
  /// **'Gece işlemi'**
  String get ccRiskTypeNight;

  /// No description provided for @ccRiskTypePointsBurn.
  ///
  /// In tr, this message translates to:
  /// **'Hızlı puan tüketimi'**
  String get ccRiskTypePointsBurn;

  /// No description provided for @ccRiskTypeQuickCancel.
  ///
  /// In tr, this message translates to:
  /// **'Hızlı iptal'**
  String get ccRiskTypeQuickCancel;

  /// No description provided for @ccRiskTypeVelocity.
  ///
  /// In tr, this message translates to:
  /// **'Kısa sürede çok işlem'**
  String get ccRiskTypeVelocity;

  /// No description provided for @ccRoleFinanceDesc.
  ///
  /// In tr, this message translates to:
  /// **'Hak ediş, esnaf raporları, puan ve kupon (okuma)'**
  String get ccRoleFinanceDesc;

  /// No description provided for @ccRoleSuperDesc.
  ///
  /// In tr, this message translates to:
  /// **'Tüm modüller, tam yetki'**
  String get ccRoleSuperDesc;

  /// No description provided for @ccRoleSupportDesc.
  ///
  /// In tr, this message translates to:
  /// **'Acenteler (okuma), mesajlar, risk'**
  String get ccRoleSupportDesc;

  /// No description provided for @ccSectionModules.
  ///
  /// In tr, this message translates to:
  /// **'Modüller'**
  String get ccSectionModules;

  /// No description provided for @ccSectionOverview.
  ///
  /// In tr, this message translates to:
  /// **'Genel Bakış'**
  String get ccSectionOverview;

  /// No description provided for @ccSectionRecent.
  ///
  /// In tr, this message translates to:
  /// **'Son İşlemler'**
  String get ccSectionRecent;

  /// No description provided for @ccSeeAll.
  ///
  /// In tr, this message translates to:
  /// **'Tümü'**
  String get ccSeeAll;

  /// No description provided for @ccSetAppSection.
  ///
  /// In tr, this message translates to:
  /// **'Uygulama'**
  String get ccSetAppSection;

  /// No description provided for @ccSetCancel.
  ///
  /// In tr, this message translates to:
  /// **'Vazgeç'**
  String get ccSetCancel;

  /// No description provided for @ccSetConfirm.
  ///
  /// In tr, this message translates to:
  /// **'Onayla'**
  String get ccSetConfirm;

  /// No description provided for @ccSetDemoOff.
  ///
  /// In tr, this message translates to:
  /// **'Demo kapalı: gerçek ödeme'**
  String get ccSetDemoOff;

  /// No description provided for @ccSetDemoOn.
  ///
  /// In tr, this message translates to:
  /// **'Demo açık: ödeme alınmıyor'**
  String get ccSetDemoOn;

  /// No description provided for @ccSetDemoPayments.
  ///
  /// In tr, this message translates to:
  /// **'Demo ödeme'**
  String get ccSetDemoPayments;

  /// No description provided for @ccSetDemoPaymentsDesc.
  ///
  /// In tr, this message translates to:
  /// **'Açıkken bireysel kullanıcılar ödeme yapmadan paket alır. PayTR bağlanınca kapatılmalıdır.'**
  String get ccSetDemoPaymentsDesc;

  /// No description provided for @ccSetEmail1.
  ///
  /// In tr, this message translates to:
  /// **'E-posta 1'**
  String get ccSetEmail1;

  /// No description provided for @ccSetEmail2.
  ///
  /// In tr, this message translates to:
  /// **'E-posta 2'**
  String get ccSetEmail2;

  /// No description provided for @ccSetInvalidEmail.
  ///
  /// In tr, this message translates to:
  /// **'Geçerli bir e-posta girin.'**
  String get ccSetInvalidEmail;

  /// No description provided for @ccSetInvalidPhone.
  ///
  /// In tr, this message translates to:
  /// **'Geçerli bir telefon numarası girin.'**
  String get ccSetInvalidPhone;

  /// No description provided for @ccSetInvalidUrl.
  ///
  /// In tr, this message translates to:
  /// **'http/https ile başlayan geçerli bir bağlantı girin.'**
  String get ccSetInvalidUrl;

  /// No description provided for @ccSetLoadError.
  ///
  /// In tr, this message translates to:
  /// **'Ayarlar yüklenemedi.'**
  String get ccSetLoadError;

  /// No description provided for @ccSetMaintConfirmBody.
  ///
  /// In tr, this message translates to:
  /// **'Kaydedince süper admin dışındaki tüm kullanıcılar bakım ekranını görecek.'**
  String get ccSetMaintConfirmBody;

  /// No description provided for @ccSetMaintConfirmTitle.
  ///
  /// In tr, this message translates to:
  /// **'Bakım modu açılsın mı?'**
  String get ccSetMaintConfirmTitle;

  /// No description provided for @ccSetMaintenance.
  ///
  /// In tr, this message translates to:
  /// **'Bakım modu'**
  String get ccSetMaintenance;

  /// No description provided for @ccSetMaintenanceDesc.
  ///
  /// In tr, this message translates to:
  /// **'Açıkken süper admin dışındaki herkes bakım ekranını görür.'**
  String get ccSetMaintenanceDesc;

  /// No description provided for @ccSetMaintenanceMsg.
  ///
  /// In tr, this message translates to:
  /// **'Bakım mesajı (en çok 300 karakter)'**
  String get ccSetMaintenanceMsg;

  /// No description provided for @ccSetMinBuild.
  ///
  /// In tr, this message translates to:
  /// **'Asgari derleme numarası'**
  String get ccSetMinBuild;

  /// No description provided for @ccSetMinBuildHint.
  ///
  /// In tr, this message translates to:
  /// **'Mevcut derleme: {build}. Bundan küçük sürümler güncellemeye zorlanır; boş/0 = kapalı.'**
  String ccSetMinBuildHint(int build);

  /// No description provided for @ccSetNoChange.
  ///
  /// In tr, this message translates to:
  /// **'Değişiklik yok.'**
  String get ccSetNoChange;

  /// No description provided for @ccSetPayConfirmOff.
  ///
  /// In tr, this message translates to:
  /// **'Demo ödeme KAPATILACAK. Paket alımı için gerçek ödeme gerekecek.'**
  String get ccSetPayConfirmOff;

  /// No description provided for @ccSetPayConfirmOn.
  ///
  /// In tr, this message translates to:
  /// **'Demo ödeme AÇILACAK. Bireysel kullanıcılar ödeme yapmadan paket alabilecek.'**
  String get ccSetPayConfirmOn;

  /// No description provided for @ccSetPayConfirmTitle.
  ///
  /// In tr, this message translates to:
  /// **'Demo ödeme değişsin mi?'**
  String get ccSetPayConfirmTitle;

  /// No description provided for @ccSetPaymentsSection.
  ///
  /// In tr, this message translates to:
  /// **'Ödeme'**
  String get ccSetPaymentsSection;

  /// No description provided for @ccSetPhone1.
  ///
  /// In tr, this message translates to:
  /// **'Telefon 1'**
  String get ccSetPhone1;

  /// No description provided for @ccSetPhone2.
  ///
  /// In tr, this message translates to:
  /// **'Telefon 2'**
  String get ccSetPhone2;

  /// No description provided for @ccSetSave.
  ///
  /// In tr, this message translates to:
  /// **'Kaydet'**
  String get ccSetSave;

  /// No description provided for @ccSetSaveError.
  ///
  /// In tr, this message translates to:
  /// **'Kaydedilemedi. Tekrar deneyin.'**
  String get ccSetSaveError;

  /// No description provided for @ccSetSaved.
  ///
  /// In tr, this message translates to:
  /// **'Ayarlar kaydedildi.'**
  String get ccSetSaved;

  /// No description provided for @ccSetSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Ödeme, bakım ve iletişim'**
  String get ccSetSubtitle;

  /// No description provided for @ccSetSupportHint.
  ///
  /// In tr, this message translates to:
  /// **'Boş bırakılan alanlarda uygulamadaki varsayılan bilgiler gösterilir.'**
  String get ccSetSupportHint;

  /// No description provided for @ccSetSupportSection.
  ///
  /// In tr, this message translates to:
  /// **'Destek iletişimi'**
  String get ccSetSupportSection;

  /// No description provided for @ccSetTitle.
  ///
  /// In tr, this message translates to:
  /// **'Platform Ayarları'**
  String get ccSetTitle;

  /// No description provided for @ccSetUpdateConfirmBody.
  ///
  /// In tr, this message translates to:
  /// **'Asgari derleme {build} olacak. Bu sürümü kullanan herkes güncelleme ekranında kalır (süper admin hariç).'**
  String ccSetUpdateConfirmBody(int build);

  /// No description provided for @ccSetUpdateConfirmTitle.
  ///
  /// In tr, this message translates to:
  /// **'Zorunlu güncelleme açılsın mı?'**
  String get ccSetUpdateConfirmTitle;

  /// No description provided for @ccSetUpdateUrl.
  ///
  /// In tr, this message translates to:
  /// **'Güncelleme bağlantısı (Play Store/APK)'**
  String get ccSetUpdateUrl;

  /// No description provided for @ccSetWhatsapp.
  ///
  /// In tr, this message translates to:
  /// **'WhatsApp numarası'**
  String get ccSetWhatsapp;

  /// No description provided for @ccStaffActionFailed.
  ///
  /// In tr, this message translates to:
  /// **'İşlem tamamlanamadı'**
  String get ccStaffActionFailed;

  /// No description provided for @ccStaffAdd.
  ///
  /// In tr, this message translates to:
  /// **'Personel ekle'**
  String get ccStaffAdd;

  /// No description provided for @ccStaffChangeRole.
  ///
  /// In tr, this message translates to:
  /// **'Rolü değiştir'**
  String get ccStaffChangeRole;

  /// No description provided for @ccStaffCount.
  ///
  /// In tr, this message translates to:
  /// **'{count} kişi'**
  String ccStaffCount(int count);

  /// No description provided for @ccStaffCreate.
  ///
  /// In tr, this message translates to:
  /// **'Hesap aç'**
  String get ccStaffCreate;

  /// No description provided for @ccStaffCreateFailed.
  ///
  /// In tr, this message translates to:
  /// **'Hesap açılamadı'**
  String get ccStaffCreateFailed;

  /// No description provided for @ccStaffCreated.
  ///
  /// In tr, this message translates to:
  /// **'Personel hesabı açıldı'**
  String get ccStaffCreated;

  /// No description provided for @ccStaffDelete.
  ///
  /// In tr, this message translates to:
  /// **'Personeli sil'**
  String get ccStaffDelete;

  /// No description provided for @ccStaffDeleteConfirm.
  ///
  /// In tr, this message translates to:
  /// **'{name} silinsin mi? Hesap paneli kullanamaz hale gelir.'**
  String ccStaffDeleteConfirm(String name);

  /// No description provided for @ccStaffDeleted.
  ///
  /// In tr, this message translates to:
  /// **'Personel silindi'**
  String get ccStaffDeleted;

  /// No description provided for @ccStaffEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Henüz destek veya muhasebe personeli yok'**
  String get ccStaffEmpty;

  /// No description provided for @ccStaffList.
  ///
  /// In tr, this message translates to:
  /// **'Personel'**
  String get ccStaffList;

  /// No description provided for @ccStaffLoginHint.
  ///
  /// In tr, this message translates to:
  /// **'Personel, \"Yönetici\" girişinden TC kimlik numarasıyla girer.'**
  String get ccStaffLoginHint;

  /// No description provided for @ccStaffMatrix.
  ///
  /// In tr, this message translates to:
  /// **'Yetki Matrisi'**
  String get ccStaffMatrix;

  /// No description provided for @ccStaffName.
  ///
  /// In tr, this message translates to:
  /// **'Ad Soyad'**
  String get ccStaffName;

  /// No description provided for @ccStaffNameMissing.
  ///
  /// In tr, this message translates to:
  /// **'Ad soyad girin'**
  String get ccStaffNameMissing;

  /// No description provided for @ccStaffPhone.
  ///
  /// In tr, this message translates to:
  /// **'Telefon'**
  String get ccStaffPhone;

  /// No description provided for @ccStaffRole.
  ///
  /// In tr, this message translates to:
  /// **'Rol'**
  String get ccStaffRole;

  /// No description provided for @ccStaffRoleChanged.
  ///
  /// In tr, this message translates to:
  /// **'Rol güncellendi'**
  String get ccStaffRoleChanged;

  /// No description provided for @ccStaffSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Platform rolleri ve yetkileri'**
  String get ccStaffSubtitle;

  /// No description provided for @ccStaffTc.
  ///
  /// In tr, this message translates to:
  /// **'TC kimlik no'**
  String get ccStaffTc;

  /// No description provided for @ccStaffTcExists.
  ///
  /// In tr, this message translates to:
  /// **'Bu TC ile kayıtlı bir kullanıcı var'**
  String get ccStaffTcExists;

  /// No description provided for @ccStaffTcInvalid.
  ///
  /// In tr, this message translates to:
  /// **'TC 11 haneli olmalı'**
  String get ccStaffTcInvalid;

  /// No description provided for @ccStaffTitle.
  ///
  /// In tr, this message translates to:
  /// **'Yetkili Personel'**
  String get ccStaffTitle;

  /// No description provided for @ccStaffYou.
  ///
  /// In tr, this message translates to:
  /// **'Sen'**
  String get ccStaffYou;

  /// No description provided for @ccSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Platformun nabzı tek ekranda'**
  String get ccSubtitle;

  /// No description provided for @ccTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kontrol Merkezi'**
  String get ccTitle;

  /// No description provided for @ccUsrActive24.
  ///
  /// In tr, this message translates to:
  /// **'Son 24 saat aktif'**
  String get ccUsrActive24;

  /// No description provided for @ccUsrActive30.
  ///
  /// In tr, this message translates to:
  /// **'Son 30 gün aktif'**
  String get ccUsrActive30;

  /// No description provided for @ccUsrAgency.
  ///
  /// In tr, this message translates to:
  /// **'Acente'**
  String get ccUsrAgency;

  /// No description provided for @ccUsrAll.
  ///
  /// In tr, this message translates to:
  /// **'Tümü'**
  String get ccUsrAll;

  /// No description provided for @ccUsrCount.
  ///
  /// In tr, this message translates to:
  /// **'{count} kullanıcı'**
  String ccUsrCount(int count);

  /// No description provided for @ccUsrCreated.
  ///
  /// In tr, this message translates to:
  /// **'Kayıt tarihi'**
  String get ccUsrCreated;

  /// No description provided for @ccUsrDau.
  ///
  /// In tr, this message translates to:
  /// **'Bugün aktif'**
  String get ccUsrDau;

  /// No description provided for @ccUsrEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Bu filtreye uyan kullanıcı yok'**
  String get ccUsrEmpty;

  /// No description provided for @ccUsrLastActive.
  ///
  /// In tr, this message translates to:
  /// **'Son aktiflik'**
  String get ccUsrLastActive;

  /// No description provided for @ccUsrLoadFailed.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcılar yüklenemedi'**
  String get ccUsrLoadFailed;

  /// No description provided for @ccUsrMau.
  ///
  /// In tr, this message translates to:
  /// **'30 gün aktif'**
  String get ccUsrMau;

  /// No description provided for @ccUsrNeverActive.
  ///
  /// In tr, this message translates to:
  /// **'Henüz aktif olmadı'**
  String get ccUsrNeverActive;

  /// No description provided for @ccUsrNew30.
  ///
  /// In tr, this message translates to:
  /// **'Son 30 gün yeni'**
  String get ccUsrNew30;

  /// No description provided for @ccUsrNoAgency.
  ///
  /// In tr, this message translates to:
  /// **'Acentesiz'**
  String get ccUsrNoAgency;

  /// No description provided for @ccUsrOpenAgency.
  ///
  /// In tr, this message translates to:
  /// **'Acentesini aç'**
  String get ccUsrOpenAgency;

  /// No description provided for @ccUsrPhone.
  ///
  /// In tr, this message translates to:
  /// **'Telefon'**
  String get ccUsrPhone;

  /// No description provided for @ccUsrRole.
  ///
  /// In tr, this message translates to:
  /// **'Rol'**
  String get ccUsrRole;

  /// No description provided for @ccUsrSearch.
  ///
  /// In tr, this message translates to:
  /// **'Ad, TC veya telefon ara'**
  String get ccUsrSearch;

  /// No description provided for @ccUsrSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Tüm platform'**
  String get ccUsrSubtitle;

  /// No description provided for @ccUsrTc.
  ///
  /// In tr, this message translates to:
  /// **'TC Kimlik No'**
  String get ccUsrTc;

  /// No description provided for @ccUsrTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcılar'**
  String get ccUsrTitle;

  /// No description provided for @ccUsrTotal.
  ///
  /// In tr, this message translates to:
  /// **'Toplam'**
  String get ccUsrTotal;

  /// No description provided for @commonCancel.
  ///
  /// In tr, this message translates to:
  /// **'Vazgeç'**
  String get commonCancel;

  /// No description provided for @commonClose.
  ///
  /// In tr, this message translates to:
  /// **'Kapat'**
  String get commonClose;

  /// No description provided for @commonComingSoon.
  ///
  /// In tr, this message translates to:
  /// **'Çok yakında'**
  String get commonComingSoon;

  /// No description provided for @commonDelete.
  ///
  /// In tr, this message translates to:
  /// **'Sil'**
  String get commonDelete;

  /// No description provided for @commonEdit.
  ///
  /// In tr, this message translates to:
  /// **'Düzenle'**
  String get commonEdit;

  /// No description provided for @commonError.
  ///
  /// In tr, this message translates to:
  /// **'Bir hata oluştu.'**
  String get commonError;

  /// No description provided for @commonLanguage.
  ///
  /// In tr, this message translates to:
  /// **'Dil'**
  String get commonLanguage;

  /// No description provided for @commonLanguageChanged.
  ///
  /// In tr, this message translates to:
  /// **'Dil değiştirildi'**
  String get commonLanguageChanged;

  /// No description provided for @commonLoading.
  ///
  /// In tr, this message translates to:
  /// **'Yükleniyor...'**
  String get commonLoading;

  /// No description provided for @commonMecca.
  ///
  /// In tr, this message translates to:
  /// **'Mekke'**
  String get commonMecca;

  /// No description provided for @commonMedina.
  ///
  /// In tr, this message translates to:
  /// **'Medine'**
  String get commonMedina;

  /// No description provided for @commonNo.
  ///
  /// In tr, this message translates to:
  /// **'Hayır'**
  String get commonNo;

  /// No description provided for @commonOk.
  ///
  /// In tr, this message translates to:
  /// **'Tamam'**
  String get commonOk;

  /// No description provided for @commonRetry.
  ///
  /// In tr, this message translates to:
  /// **'Tekrar Dene'**
  String get commonRetry;

  /// No description provided for @commonSave.
  ///
  /// In tr, this message translates to:
  /// **'Kaydet'**
  String get commonSave;

  /// No description provided for @commonSearch.
  ///
  /// In tr, this message translates to:
  /// **'Ara'**
  String get commonSearch;

  /// No description provided for @commonSelectLanguage.
  ///
  /// In tr, this message translates to:
  /// **'Dil seçin'**
  String get commonSelectLanguage;

  /// No description provided for @commonYes.
  ///
  /// In tr, this message translates to:
  /// **'Evet'**
  String get commonYes;

  /// No description provided for @coreAccountExists.
  ///
  /// In tr, this message translates to:
  /// **'Bu TC ile kayıtlı bir hesap zaten var.'**
  String get coreAccountExists;

  /// No description provided for @coreAnnouncement.
  ///
  /// In tr, this message translates to:
  /// **'Duyuru'**
  String get coreAnnouncement;

  /// No description provided for @coreAudioLoadFailed.
  ///
  /// In tr, this message translates to:
  /// **'Ses yüklenemedi. İnternet bağlantınızı kontrol edin.'**
  String get coreAudioLoadFailed;

  /// No description provided for @coreAyahCount.
  ///
  /// In tr, this message translates to:
  /// **'{count} ayet'**
  String coreAyahCount(int count);

  /// No description provided for @coreBackgroundLocationMessage.
  ///
  /// In tr, this message translates to:
  /// **'Uygulama kapalıyken de rehberinizin sizi görebilmesi için açılacak ekranda \"Her zaman izin ver\" seçeneğini seçin.'**
  String get coreBackgroundLocationMessage;

  /// No description provided for @coreBackgroundLocationTitle.
  ///
  /// In tr, this message translates to:
  /// **'Arka Planda Konum'**
  String get coreBackgroundLocationTitle;

  /// No description provided for @coreChannelAnnouncements.
  ///
  /// In tr, this message translates to:
  /// **'Duyurular'**
  String get coreChannelAnnouncements;

  /// No description provided for @coreChannelAnnouncementsDesc.
  ///
  /// In tr, this message translates to:
  /// **'Acente ve rehber duyuruları'**
  String get coreChannelAnnouncementsDesc;

  /// No description provided for @coreChannelLocation.
  ///
  /// In tr, this message translates to:
  /// **'Konum Paylaşımı'**
  String get coreChannelLocation;

  /// No description provided for @coreChannelLocationDesc.
  ///
  /// In tr, this message translates to:
  /// **'Konumunuz rehberinizle paylaşılırken gösterilir'**
  String get coreChannelLocationDesc;

  /// No description provided for @coreChannelQuranDesc.
  ///
  /// In tr, this message translates to:
  /// **'Sesli Kur\'an okuma kontrolleri'**
  String get coreChannelQuranDesc;

  /// No description provided for @coreChannelRadio.
  ///
  /// In tr, this message translates to:
  /// **'Telsiz'**
  String get coreChannelRadio;

  /// No description provided for @coreChannelRadioDesc.
  ///
  /// In tr, this message translates to:
  /// **'Telsiz yayını sürerken görünen bildirim.'**
  String get coreChannelRadioDesc;

  /// No description provided for @coreContinue.
  ///
  /// In tr, this message translates to:
  /// **'Devam'**
  String get coreContinue;

  /// No description provided for @coreCurrencyEur.
  ///
  /// In tr, this message translates to:
  /// **'Euro'**
  String get coreCurrencyEur;

  /// No description provided for @coreCurrencyGbp.
  ///
  /// In tr, this message translates to:
  /// **'İngiliz Sterlini'**
  String get coreCurrencyGbp;

  /// No description provided for @coreCurrencySar.
  ///
  /// In tr, this message translates to:
  /// **'Suudi Riyali'**
  String get coreCurrencySar;

  /// No description provided for @coreCurrencyTry.
  ///
  /// In tr, this message translates to:
  /// **'Türk Lirası'**
  String get coreCurrencyTry;

  /// No description provided for @coreCurrencyUsd.
  ///
  /// In tr, this message translates to:
  /// **'ABD Doları'**
  String get coreCurrencyUsd;

  /// No description provided for @coreGoToSettings.
  ///
  /// In tr, this message translates to:
  /// **'Ayarlara Git'**
  String get coreGoToSettings;

  /// No description provided for @coreHoursAgo.
  ///
  /// In tr, this message translates to:
  /// **'{count} saat önce'**
  String coreHoursAgo(int count);

  /// No description provided for @coreInvalidTokenResponse.
  ///
  /// In tr, this message translates to:
  /// **'Geçersiz token yanıtı.'**
  String get coreInvalidTokenResponse;

  /// No description provided for @coreJustNow.
  ///
  /// In tr, this message translates to:
  /// **'Az önce'**
  String get coreJustNow;

  /// No description provided for @coreLocationPermissionMessage.
  ///
  /// In tr, this message translates to:
  /// **'Konumunuzun rehberinizle paylaşılabilmesi için konum iznine ihtiyaç var. Ayarlar sayfasından izin verebilirsiniz.'**
  String get coreLocationPermissionMessage;

  /// No description provided for @coreLocationPermissionRestart.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen konum iznini açın ve uygulamayı yeniden başlatın.'**
  String get coreLocationPermissionRestart;

  /// No description provided for @coreLocationPermissionTitle.
  ///
  /// In tr, this message translates to:
  /// **'Konum İzni Gerekli'**
  String get coreLocationPermissionTitle;

  /// No description provided for @coreLocationServiceOffMessage.
  ///
  /// In tr, this message translates to:
  /// **'Rehberinizin sizi görebilmesi için telefonunuzun konum (GPS) özelliğini açmanız gerekiyor.'**
  String get coreLocationServiceOffMessage;

  /// No description provided for @coreLocationServiceOffSnack.
  ///
  /// In tr, this message translates to:
  /// **'Konum servisi kapalı. Lütfen telefonunuzun konumunu (GPS) açın.'**
  String get coreLocationServiceOffSnack;

  /// No description provided for @coreLocationServiceOffTitle.
  ///
  /// In tr, this message translates to:
  /// **'Konum Servisi Kapalı'**
  String get coreLocationServiceOffTitle;

  /// No description provided for @coreLocationServiceOpen.
  ///
  /// In tr, this message translates to:
  /// **'Konumu Aç'**
  String get coreLocationServiceOpen;

  /// No description provided for @coreLocationSharingNotification.
  ///
  /// In tr, this message translates to:
  /// **'Konumunuz rehberinizle paylaşılıyor'**
  String get coreLocationSharingNotification;

  /// No description provided for @coreMinutesAgo.
  ///
  /// In tr, this message translates to:
  /// **'{count} dakika önce'**
  String coreMinutesAgo(int count);

  /// No description provided for @coreNavCalendar.
  ///
  /// In tr, this message translates to:
  /// **'Takvim'**
  String get coreNavCalendar;

  /// No description provided for @coreNavHome.
  ///
  /// In tr, this message translates to:
  /// **'Ana Sayfa'**
  String get coreNavHome;

  /// No description provided for @coreNavInfo.
  ///
  /// In tr, this message translates to:
  /// **'Bilgi'**
  String get coreNavInfo;

  /// No description provided for @coreNavPrayers.
  ///
  /// In tr, this message translates to:
  /// **'Dualar'**
  String get coreNavPrayers;

  /// No description provided for @coreNavProfile.
  ///
  /// In tr, this message translates to:
  /// **'Profil'**
  String get coreNavProfile;

  /// No description provided for @coreNotNow.
  ///
  /// In tr, this message translates to:
  /// **'Şimdi Değil'**
  String get coreNotNow;

  /// No description provided for @coreOsmContributors.
  ///
  /// In tr, this message translates to:
  /// **'OpenStreetMap katkıcıları'**
  String get coreOsmContributors;

  /// No description provided for @corePageNotFound.
  ///
  /// In tr, this message translates to:
  /// **'Sayfa bulunamadı'**
  String get corePageNotFound;

  /// No description provided for @coreQuranBlockedByRadio.
  ///
  /// In tr, this message translates to:
  /// **'Telsiz açıkken Kur\'an dinlenemez.'**
  String get coreQuranBlockedByRadio;

  /// No description provided for @coreQuranTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kur\'an-ı Kerim'**
  String get coreQuranTitle;

  /// No description provided for @coreRatesCached.
  ///
  /// In tr, this message translates to:
  /// **'kayıtlı'**
  String get coreRatesCached;

  /// No description provided for @coreRatesDaily.
  ///
  /// In tr, this message translates to:
  /// **'günlük'**
  String get coreRatesDaily;

  /// No description provided for @coreRatesFetchFailed.
  ///
  /// In tr, this message translates to:
  /// **'Döviz kurları alınamadı. İnternet bağlantınızı kontrol edin.'**
  String get coreRatesFetchFailed;

  /// No description provided for @coreSessionNotFound.
  ///
  /// In tr, this message translates to:
  /// **'Oturum bulunamadı.'**
  String get coreSessionNotFound;

  /// No description provided for @coreStartFailed.
  ///
  /// In tr, this message translates to:
  /// **'Uygulama başlatılamadı'**
  String get coreStartFailed;

  /// No description provided for @coreStarting.
  ///
  /// In tr, this message translates to:
  /// **'Başlatılıyor...'**
  String get coreStarting;

  /// No description provided for @coreUnknownPage.
  ///
  /// In tr, this message translates to:
  /// **'Bilinmeyen sayfa'**
  String get coreUnknownPage;

  /// No description provided for @cuzdanAdjustmentReason.
  ///
  /// In tr, this message translates to:
  /// **'Açıklama'**
  String get cuzdanAdjustmentReason;

  /// No description provided for @cuzdanAnalysisEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Bu dönemde harcama yok.'**
  String get cuzdanAnalysisEmpty;

  /// No description provided for @cuzdanAnalysisTitle.
  ///
  /// In tr, this message translates to:
  /// **'Harcama analizi'**
  String get cuzdanAnalysisTitle;

  /// No description provided for @cuzdanBalanceLabel.
  ///
  /// In tr, this message translates to:
  /// **'Puan bakiyem'**
  String get cuzdanBalanceLabel;

  /// No description provided for @cuzdanCancelReason.
  ///
  /// In tr, this message translates to:
  /// **'İptal sebebi'**
  String get cuzdanCancelReason;

  /// No description provided for @cuzdanCancelled.
  ///
  /// In tr, this message translates to:
  /// **'İptal edildi'**
  String get cuzdanCancelled;

  /// No description provided for @cuzdanCancelledShort.
  ///
  /// In tr, this message translates to:
  /// **'İptal'**
  String get cuzdanCancelledShort;

  /// No description provided for @cuzdanCardBrand.
  ///
  /// In tr, this message translates to:
  /// **'Umre Rehberim'**
  String get cuzdanCardBrand;

  /// No description provided for @cuzdanCardHolder.
  ///
  /// In tr, this message translates to:
  /// **'KART SAHİBİ'**
  String get cuzdanCardHolder;

  /// No description provided for @cuzdanCardPoints.
  ///
  /// In tr, this message translates to:
  /// **'PUAN'**
  String get cuzdanCardPoints;

  /// No description provided for @cuzdanCardSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Sadakat Kartı'**
  String get cuzdanCardSubtitle;

  /// No description provided for @cuzdanClose.
  ///
  /// In tr, this message translates to:
  /// **'Kapat'**
  String get cuzdanClose;

  /// No description provided for @cuzdanCodeCreating.
  ///
  /// In tr, this message translates to:
  /// **'Kod hazırlanıyor…'**
  String get cuzdanCodeCreating;

  /// No description provided for @cuzdanCodeError.
  ///
  /// In tr, this message translates to:
  /// **'Kod oluşturulamadı. İnternet bağlantınızı kontrol edip tekrar deneyin.'**
  String get cuzdanCodeError;

  /// No description provided for @cuzdanCodeOneTime.
  ///
  /// In tr, this message translates to:
  /// **'Bu kod tek kullanımlıktır ve {minutes} dakikada yenilenir.'**
  String cuzdanCodeOneTime(int minutes);

  /// No description provided for @cuzdanCodeShowLive.
  ///
  /// In tr, this message translates to:
  /// **'Tek kullanımlık koda dön'**
  String get cuzdanCodeShowLive;

  /// No description provided for @cuzdanCodeShowStatic.
  ///
  /// In tr, this message translates to:
  /// **'Dükkanın kendi QR kodunu göster'**
  String get cuzdanCodeShowStatic;

  /// No description provided for @cuzdanCodeTimeLeft.
  ///
  /// In tr, this message translates to:
  /// **'Kalan süre'**
  String get cuzdanCodeTimeLeft;

  /// No description provided for @cuzdanCodeWaiting.
  ///
  /// In tr, this message translates to:
  /// **'Kod okutuldu, işlem kaydediliyor…'**
  String get cuzdanCodeWaiting;

  /// No description provided for @cuzdanCodeYourPoints.
  ///
  /// In tr, this message translates to:
  /// **'Puanınız: {points}'**
  String cuzdanCodeYourPoints(int points);

  /// No description provided for @cuzdanCouponAllShops.
  ///
  /// In tr, this message translates to:
  /// **'Tüm anlaşmalı dükkanlarda'**
  String get cuzdanCouponAllShops;

  /// No description provided for @cuzdanCouponAtShop.
  ///
  /// In tr, this message translates to:
  /// **'Yalnız {shop}'**
  String cuzdanCouponAtShop(String shop);

  /// No description provided for @cuzdanCouponAvailable.
  ///
  /// In tr, this message translates to:
  /// **'Bu dükkanda {count} kupon kullanılabilir'**
  String cuzdanCouponAvailable(int count);

  /// No description provided for @cuzdanCouponCode.
  ///
  /// In tr, this message translates to:
  /// **'Kupon kodu'**
  String get cuzdanCouponCode;

  /// No description provided for @cuzdanCouponDetails.
  ///
  /// In tr, this message translates to:
  /// **'Kupon ayrıntıları'**
  String get cuzdanCouponDetails;

  /// No description provided for @cuzdanCouponHowTo.
  ///
  /// In tr, this message translates to:
  /// **'Kullanmak için dükkanda indirim kodunu açıp kuponu seç. Her kupon bir kez kullanılır.'**
  String get cuzdanCouponHowTo;

  /// No description provided for @cuzdanCouponNone.
  ///
  /// In tr, this message translates to:
  /// **'Kupon kullanma'**
  String get cuzdanCouponNone;

  /// No description provided for @cuzdanCouponOff.
  ///
  /// In tr, this message translates to:
  /// **'İNDİRİM'**
  String get cuzdanCouponOff;

  /// No description provided for @cuzdanCouponPickHint.
  ///
  /// In tr, this message translates to:
  /// **'Seçtiğin kupon koda eklenir; esnaf kodu okutunca indirim uygulanır.'**
  String get cuzdanCouponPickHint;

  /// No description provided for @cuzdanCouponPickTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kupon seç'**
  String get cuzdanCouponPickTitle;

  /// No description provided for @cuzdanCouponSelected.
  ///
  /// In tr, this message translates to:
  /// **'Kupon: {code}'**
  String cuzdanCouponSelected(String code);

  /// No description provided for @cuzdanCouponTapHint.
  ///
  /// In tr, this message translates to:
  /// **'Ayrıntılar için dokun'**
  String get cuzdanCouponTapHint;

  /// No description provided for @cuzdanCouponUse.
  ///
  /// In tr, this message translates to:
  /// **'Kupon kullan'**
  String get cuzdanCouponUse;

  /// No description provided for @cuzdanCouponUsed.
  ///
  /// In tr, this message translates to:
  /// **'Kupon {code}'**
  String cuzdanCouponUsed(String code);

  /// No description provided for @cuzdanCouponValidUntil.
  ///
  /// In tr, this message translates to:
  /// **'Son gün {date}'**
  String cuzdanCouponValidUntil(String date);

  /// No description provided for @cuzdanDaysAgo.
  ///
  /// In tr, this message translates to:
  /// **'{days} gün önce'**
  String cuzdanDaysAgo(int days);

  /// No description provided for @cuzdanDiscount.
  ///
  /// In tr, this message translates to:
  /// **'İndirim'**
  String get cuzdanDiscount;

  /// No description provided for @cuzdanEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Henüz alışveriş yok. Anlaşmalı dükkanlarda QR kodunuzu göstererek indirim ve puan kazanın.'**
  String get cuzdanEmpty;

  /// No description provided for @cuzdanFilterAll.
  ///
  /// In tr, this message translates to:
  /// **'Tümü'**
  String get cuzdanFilterAll;

  /// No description provided for @cuzdanFilterEarned.
  ///
  /// In tr, this message translates to:
  /// **'Puan kazanılan'**
  String get cuzdanFilterEarned;

  /// No description provided for @cuzdanFilterSpent.
  ///
  /// In tr, this message translates to:
  /// **'Puanla ödenen'**
  String get cuzdanFilterSpent;

  /// No description provided for @cuzdanGiftPoints.
  ///
  /// In tr, this message translates to:
  /// **'Hediye puan'**
  String get cuzdanGiftPoints;

  /// No description provided for @cuzdanGoShops.
  ///
  /// In tr, this message translates to:
  /// **'Anlaşmalı Dükkanlar'**
  String get cuzdanGoShops;

  /// No description provided for @cuzdanGross.
  ///
  /// In tr, this message translates to:
  /// **'Tutar'**
  String get cuzdanGross;

  /// No description provided for @cuzdanHideBalance.
  ///
  /// In tr, this message translates to:
  /// **'Bakiyeyi gizle'**
  String get cuzdanHideBalance;

  /// No description provided for @cuzdanHowEarn.
  ///
  /// In tr, this message translates to:
  /// **'Anlaşmalı dükkanlarda harcadığınız her 1 SAR için 1 puan kazanırsınız.'**
  String get cuzdanHowEarn;

  /// No description provided for @cuzdanHowPay.
  ///
  /// In tr, this message translates to:
  /// **'Puanla ödediğinizde dükkanın indirimi yine uygulanır.'**
  String get cuzdanHowPay;

  /// No description provided for @cuzdanHowRecord.
  ///
  /// In tr, this message translates to:
  /// **'Uygulama ödeme almaz; yalnızca alışverişinizi kaydeder.'**
  String get cuzdanHowRecord;

  /// No description provided for @cuzdanHowTitle.
  ///
  /// In tr, this message translates to:
  /// **'Puan nasıl çalışır?'**
  String get cuzdanHowTitle;

  /// No description provided for @cuzdanHowValue.
  ///
  /// In tr, this message translates to:
  /// **'100 puan = 5 SAR değerindedir.'**
  String get cuzdanHowValue;

  /// No description provided for @cuzdanLoadError.
  ///
  /// In tr, this message translates to:
  /// **'Harcamalar yüklenemedi. İnternet bağlantınızı kontrol edin.'**
  String get cuzdanLoadError;

  /// No description provided for @cuzdanLoyaltyPoints.
  ///
  /// In tr, this message translates to:
  /// **'Sadakat Puanı'**
  String get cuzdanLoyaltyPoints;

  /// No description provided for @cuzdanMethodCard.
  ///
  /// In tr, this message translates to:
  /// **'Kredi kartı'**
  String get cuzdanMethodCard;

  /// No description provided for @cuzdanMethodCash.
  ///
  /// In tr, this message translates to:
  /// **'Nakit'**
  String get cuzdanMethodCash;

  /// No description provided for @cuzdanMethodPoints.
  ///
  /// In tr, this message translates to:
  /// **'Puan'**
  String get cuzdanMethodPoints;

  /// No description provided for @cuzdanMyCoupons.
  ///
  /// In tr, this message translates to:
  /// **'Kuponlarım'**
  String get cuzdanMyCoupons;

  /// No description provided for @cuzdanMyPurchases.
  ///
  /// In tr, this message translates to:
  /// **'Harcamalarım'**
  String get cuzdanMyPurchases;

  /// No description provided for @cuzdanMyQr.
  ///
  /// In tr, this message translates to:
  /// **'QR\'ım'**
  String get cuzdanMyQr;

  /// No description provided for @cuzdanNoFilterMatch.
  ///
  /// In tr, this message translates to:
  /// **'Bu filtreye uygun işlem yok.'**
  String get cuzdanNoFilterMatch;

  /// No description provided for @cuzdanNoShops.
  ///
  /// In tr, this message translates to:
  /// **'Anlaşmalı dükkân bulunamadı.'**
  String get cuzdanNoShops;

  /// No description provided for @cuzdanNotifEarned.
  ///
  /// In tr, this message translates to:
  /// **'{shop}: {amount} SAR ödendi, {points} puan kazandınız.'**
  String cuzdanNotifEarned(String shop, String amount, int points);

  /// No description provided for @cuzdanNotifSpent.
  ///
  /// In tr, this message translates to:
  /// **'{shop}: {amount} SAR tutarı {points} puanla ödendi.'**
  String cuzdanNotifSpent(String shop, String amount, int points);

  /// No description provided for @cuzdanPaid.
  ///
  /// In tr, this message translates to:
  /// **'Ödenen'**
  String get cuzdanPaid;

  /// No description provided for @cuzdanPaidWithPoints.
  ///
  /// In tr, this message translates to:
  /// **'Puanla ödenen'**
  String get cuzdanPaidWithPoints;

  /// No description provided for @cuzdanPaymentMethod.
  ///
  /// In tr, this message translates to:
  /// **'Ödeme türü'**
  String get cuzdanPaymentMethod;

  /// No description provided for @cuzdanPickShopHint.
  ///
  /// In tr, this message translates to:
  /// **'QR kodunuz seçtiğiniz dükkân için oluşturulur.'**
  String get cuzdanPickShopHint;

  /// No description provided for @cuzdanPickShopTitle.
  ///
  /// In tr, this message translates to:
  /// **'Hangi dükkândasınız?'**
  String get cuzdanPickShopTitle;

  /// No description provided for @cuzdanPointsAmount.
  ///
  /// In tr, this message translates to:
  /// **'{points} puan'**
  String cuzdanPointsAmount(String points);

  /// No description provided for @cuzdanPointsCorrection.
  ///
  /// In tr, this message translates to:
  /// **'Puan düzeltmesi'**
  String get cuzdanPointsCorrection;

  /// No description provided for @cuzdanPointsEarned.
  ///
  /// In tr, this message translates to:
  /// **'Kazanılan puan'**
  String get cuzdanPointsEarned;

  /// No description provided for @cuzdanPointsMinus.
  ///
  /// In tr, this message translates to:
  /// **'−{points} puan'**
  String cuzdanPointsMinus(int points);

  /// No description provided for @cuzdanPointsPlus.
  ///
  /// In tr, this message translates to:
  /// **'+{points} puan'**
  String cuzdanPointsPlus(int points);

  /// No description provided for @cuzdanPointsRevert.
  ///
  /// In tr, this message translates to:
  /// **'Puan hareketi geri alındı'**
  String get cuzdanPointsRevert;

  /// No description provided for @cuzdanPointsReverted.
  ///
  /// In tr, this message translates to:
  /// **'Geri alındı'**
  String get cuzdanPointsReverted;

  /// No description provided for @cuzdanPointsSpent.
  ///
  /// In tr, this message translates to:
  /// **'Harcanan puan'**
  String get cuzdanPointsSpent;

  /// No description provided for @cuzdanPointsWorth.
  ///
  /// In tr, this message translates to:
  /// **'≈ {value} SAR değerinde'**
  String cuzdanPointsWorth(String value);

  /// No description provided for @cuzdanProfileSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'{points} puan · alışveriş geçmişi'**
  String cuzdanProfileSubtitle(int points);

  /// No description provided for @cuzdanPurchaseCount.
  ///
  /// In tr, this message translates to:
  /// **'Alışveriş'**
  String get cuzdanPurchaseCount;

  /// No description provided for @cuzdanPurchaseCountLabel.
  ///
  /// In tr, this message translates to:
  /// **'Alışveriş sayısı'**
  String get cuzdanPurchaseCountLabel;

  /// No description provided for @cuzdanRetry.
  ///
  /// In tr, this message translates to:
  /// **'Tekrar dene'**
  String get cuzdanRetry;

  /// No description provided for @cuzdanReviewAction.
  ///
  /// In tr, this message translates to:
  /// **'Değerlendir'**
  String get cuzdanReviewAction;

  /// No description provided for @cuzdanReviewComment.
  ///
  /// In tr, this message translates to:
  /// **'Yorumun (isteğe bağlı)'**
  String get cuzdanReviewComment;

  /// No description provided for @cuzdanReviewComplaint.
  ///
  /// In tr, this message translates to:
  /// **'Şikâyet olarak bildir'**
  String get cuzdanReviewComplaint;

  /// No description provided for @cuzdanReviewComplaintHint.
  ///
  /// In tr, this message translates to:
  /// **'Şikâyetin platform ekibine iletilir ve incelenir.'**
  String get cuzdanReviewComplaintHint;

  /// No description provided for @cuzdanReviewError.
  ///
  /// In tr, this message translates to:
  /// **'Değerlendirme gönderilemedi. Lütfen tekrar dene.'**
  String get cuzdanReviewError;

  /// No description provided for @cuzdanReviewOnce.
  ///
  /// In tr, this message translates to:
  /// **'Değerlendirme bir kez gönderilir ve sonradan değiştirilemez.'**
  String get cuzdanReviewOnce;

  /// No description provided for @cuzdanReviewPickStars.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen 1–5 arası yıldız seç.'**
  String get cuzdanReviewPickStars;

  /// No description provided for @cuzdanReviewSend.
  ///
  /// In tr, this message translates to:
  /// **'Gönder'**
  String get cuzdanReviewSend;

  /// No description provided for @cuzdanReviewStar1.
  ///
  /// In tr, this message translates to:
  /// **'Çok kötü'**
  String get cuzdanReviewStar1;

  /// No description provided for @cuzdanReviewStar2.
  ///
  /// In tr, this message translates to:
  /// **'Kötü'**
  String get cuzdanReviewStar2;

  /// No description provided for @cuzdanReviewStar3.
  ///
  /// In tr, this message translates to:
  /// **'İdare eder'**
  String get cuzdanReviewStar3;

  /// No description provided for @cuzdanReviewStar4.
  ///
  /// In tr, this message translates to:
  /// **'İyi'**
  String get cuzdanReviewStar4;

  /// No description provided for @cuzdanReviewStar5.
  ///
  /// In tr, this message translates to:
  /// **'Mükemmel'**
  String get cuzdanReviewStar5;

  /// No description provided for @cuzdanReviewThanks.
  ///
  /// In tr, this message translates to:
  /// **'Değerlendirmen için teşekkürler!'**
  String get cuzdanReviewThanks;

  /// No description provided for @cuzdanReviewThis.
  ///
  /// In tr, this message translates to:
  /// **'Bu alışverişi değerlendir'**
  String get cuzdanReviewThis;

  /// No description provided for @cuzdanReviewTitle.
  ///
  /// In tr, this message translates to:
  /// **'Alışverişi değerlendir'**
  String get cuzdanReviewTitle;

  /// No description provided for @cuzdanReviewYours.
  ///
  /// In tr, this message translates to:
  /// **'Değerlendirmen'**
  String get cuzdanReviewYours;

  /// No description provided for @cuzdanSar.
  ///
  /// In tr, this message translates to:
  /// **'{amount} SAR'**
  String cuzdanSar(String amount);

  /// No description provided for @cuzdanShopDiscount.
  ///
  /// In tr, this message translates to:
  /// **'Dükkân indirimi'**
  String get cuzdanShopDiscount;

  /// No description provided for @cuzdanShopDiscountPct.
  ///
  /// In tr, this message translates to:
  /// **'Dükkân indirimi %{percent}'**
  String cuzdanShopDiscountPct(int percent);

  /// No description provided for @cuzdanShops.
  ///
  /// In tr, this message translates to:
  /// **'Dükkanlar'**
  String get cuzdanShops;

  /// No description provided for @cuzdanShowBalance.
  ///
  /// In tr, this message translates to:
  /// **'Bakiyeyi göster'**
  String get cuzdanShowBalance;

  /// No description provided for @cuzdanSuccessTitle.
  ///
  /// In tr, this message translates to:
  /// **'Alışveriş kaydedildi'**
  String get cuzdanSuccessTitle;

  /// No description provided for @cuzdanTitle.
  ///
  /// In tr, this message translates to:
  /// **'Harcamalarım ve Puanlarım'**
  String get cuzdanTitle;

  /// No description provided for @cuzdanToday.
  ///
  /// In tr, this message translates to:
  /// **'Bugün'**
  String get cuzdanToday;

  /// No description provided for @cuzdanTotalDiscount.
  ///
  /// In tr, this message translates to:
  /// **'Kazanılan indirim'**
  String get cuzdanTotalDiscount;

  /// No description provided for @cuzdanTotalSpent.
  ///
  /// In tr, this message translates to:
  /// **'Toplam harcama'**
  String get cuzdanTotalSpent;

  /// No description provided for @cuzdanTxEarnedBig.
  ///
  /// In tr, this message translates to:
  /// **'+{points} puan kazandınız'**
  String cuzdanTxEarnedBig(int points);

  /// No description provided for @cuzdanTxSpentBig.
  ///
  /// In tr, this message translates to:
  /// **'{points} puan kullandınız'**
  String cuzdanTxSpentBig(int points);

  /// No description provided for @cuzdanWorthRiyal.
  ///
  /// In tr, this message translates to:
  /// **'≈ {value} riyal değerinde'**
  String cuzdanWorthRiyal(String value);

  /// No description provided for @cuzdanYesterday.
  ///
  /// In tr, this message translates to:
  /// **'Dün'**
  String get cuzdanYesterday;

  /// No description provided for @dualarAllFilesDownloaded.
  ///
  /// In tr, this message translates to:
  /// **'Tüm dosyalar başarıyla indirildi!'**
  String get dualarAllFilesDownloaded;

  /// No description provided for @dualarArabicText.
  ///
  /// In tr, this message translates to:
  /// **'Arapça Metin'**
  String get dualarArabicText;

  /// No description provided for @dualarBookPageView.
  ///
  /// In tr, this message translates to:
  /// **'Kitap sayfası görünümü'**
  String get dualarBookPageView;

  /// No description provided for @dualarChangeStartNumber.
  ///
  /// In tr, this message translates to:
  /// **'Başlangıç sayısını değiştir'**
  String get dualarChangeStartNumber;

  /// No description provided for @dualarCompleted.
  ///
  /// In tr, this message translates to:
  /// **'Tamamlandı'**
  String get dualarCompleted;

  /// No description provided for @dualarContentDownloadSuccess.
  ///
  /// In tr, this message translates to:
  /// **'İçerikler başarıyla indirildi!'**
  String get dualarContentDownloadSuccess;

  /// No description provided for @dualarContentDownloadTitle.
  ///
  /// In tr, this message translates to:
  /// **'İçerik İndir'**
  String get dualarContentDownloadTitle;

  /// No description provided for @dualarContinue.
  ///
  /// In tr, this message translates to:
  /// **'Devam Et'**
  String get dualarContinue;

  /// No description provided for @dualarContinueFrom.
  ///
  /// In tr, this message translates to:
  /// **'{count} sayısından devam et'**
  String dualarContinueFrom(int count);

  /// No description provided for @dualarCustom.
  ///
  /// In tr, this message translates to:
  /// **'Özel'**
  String get dualarCustom;

  /// No description provided for @dualarCustomValue.
  ///
  /// In tr, this message translates to:
  /// **'Özel ({value})'**
  String dualarCustomValue(int value);

  /// No description provided for @dualarDeleteZikirConfirm.
  ///
  /// In tr, this message translates to:
  /// **'{name} adlı zikri silmek istediğinize emin misiniz?'**
  String dualarDeleteZikirConfirm(String name);

  /// No description provided for @dualarDeleteZikirTitle.
  ///
  /// In tr, this message translates to:
  /// **'Zikri Sil'**
  String get dualarDeleteZikirTitle;

  /// No description provided for @dualarDlSay.
  ///
  /// In tr, this message translates to:
  /// **'Say Duaları'**
  String get dualarDlSay;

  /// No description provided for @dualarDlTavaf.
  ///
  /// In tr, this message translates to:
  /// **'Tavaf Duaları'**
  String get dualarDlTavaf;

  /// No description provided for @dualarDownload.
  ///
  /// In tr, this message translates to:
  /// **'İndir'**
  String get dualarDownload;

  /// No description provided for @dualarDownloadAll.
  ///
  /// In tr, this message translates to:
  /// **'Tümünü indir'**
  String get dualarDownloadAll;

  /// No description provided for @dualarDownloadContent.
  ///
  /// In tr, this message translates to:
  /// **'İçerik indir'**
  String get dualarDownloadContent;

  /// No description provided for @dualarDownloadDialogInfo.
  ///
  /// In tr, this message translates to:
  /// **'Kitap sayfası görsellerini indirerek internetsiz kullanabilirsiniz. Dua metinleri zaten cihazınızda.'**
  String get dualarDownloadDialogInfo;

  /// No description provided for @dualarDownloadErrorDetail.
  ///
  /// In tr, this message translates to:
  /// **'İndirme sırasında bir hata oluştu: {error}'**
  String dualarDownloadErrorDetail(String error);

  /// No description provided for @dualarDownloadErrorGeneric.
  ///
  /// In tr, this message translates to:
  /// **'İndirme hatası: {error}'**
  String dualarDownloadErrorGeneric(String error);

  /// No description provided for @dualarDownloadFailedShort.
  ///
  /// In tr, this message translates to:
  /// **'İndirme başarısız'**
  String get dualarDownloadFailedShort;

  /// No description provided for @dualarDownloadFailedTitle.
  ///
  /// In tr, this message translates to:
  /// **'İndirme başarısız!'**
  String get dualarDownloadFailedTitle;

  /// No description provided for @dualarDownloadItemFailed.
  ///
  /// In tr, this message translates to:
  /// **'{name} indirilemedi: {error}'**
  String dualarDownloadItemFailed(String name, String error);

  /// No description provided for @dualarDownloaded.
  ///
  /// In tr, this message translates to:
  /// **'İndirildi ✓'**
  String get dualarDownloaded;

  /// No description provided for @dualarDownloading.
  ///
  /// In tr, this message translates to:
  /// **'İndiriliyor'**
  String get dualarDownloading;

  /// No description provided for @dualarDownloadingTitle.
  ///
  /// In tr, this message translates to:
  /// **'İndiriliyor...'**
  String get dualarDownloadingTitle;

  /// No description provided for @dualarEditZikirTitle.
  ///
  /// In tr, this message translates to:
  /// **'Zikri Düzenle'**
  String get dualarEditZikirTitle;

  /// No description provided for @dualarEndShort.
  ///
  /// In tr, this message translates to:
  /// **'Bitiş'**
  String get dualarEndShort;

  /// No description provided for @dualarEnterName.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen bir isim giriniz!'**
  String get dualarEnterName;

  /// No description provided for @dualarEnterNumber.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen bir sayı giriniz!'**
  String get dualarEnterNumber;

  /// No description provided for @dualarEnterTarget.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen bir hedef belirleyin!'**
  String get dualarEnterTarget;

  /// No description provided for @dualarFileDownloadError.
  ///
  /// In tr, this message translates to:
  /// **'Dosya indirme hatası: {error}'**
  String dualarFileDownloadError(String error);

  /// No description provided for @dualarFileDownloading.
  ///
  /// In tr, this message translates to:
  /// **'Dosya indiriliyor...'**
  String get dualarFileDownloading;

  /// No description provided for @dualarFileNotDownloaded.
  ///
  /// In tr, this message translates to:
  /// **'Dosya {name} indirilemedi: {error}'**
  String dualarFileNotDownloaded(String name, String error);

  /// No description provided for @dualarFileProgress.
  ///
  /// In tr, this message translates to:
  /// **'Dosya {current}/{total} indiriliyor...'**
  String dualarFileProgress(int current, int total);

  /// No description provided for @dualarFillAllFields.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen Boş Alan Bırakmayınız.'**
  String get dualarFillAllFields;

  /// No description provided for @dualarImageCount.
  ///
  /// In tr, this message translates to:
  /// **'{count} resim'**
  String dualarImageCount(int count);

  /// No description provided for @dualarImageNotDownloaded.
  ///
  /// In tr, this message translates to:
  /// **'Resim henüz indirilmemiş'**
  String get dualarImageNotDownloaded;

  /// No description provided for @dualarMeaning.
  ///
  /// In tr, this message translates to:
  /// **'Anlamı'**
  String get dualarMeaning;

  /// No description provided for @dualarNewZikir.
  ///
  /// In tr, this message translates to:
  /// **'Yeni zikir'**
  String get dualarNewZikir;

  /// No description provided for @dualarNoInternet.
  ///
  /// In tr, this message translates to:
  /// **'İnternet bağlantısı yok'**
  String get dualarNoInternet;

  /// No description provided for @dualarNoInternetCheck.
  ///
  /// In tr, this message translates to:
  /// **'İnternet bağlantısı yok. Lütfen bağlantınızı kontrol edin.'**
  String get dualarNoInternetCheck;

  /// No description provided for @dualarNoLanguageOption.
  ///
  /// In tr, this message translates to:
  /// **'Bu sayfa için dil seçeneği mevcut değil'**
  String get dualarNoLanguageOption;

  /// No description provided for @dualarNoSavedZikir.
  ///
  /// In tr, this message translates to:
  /// **'Henüz kayıtlı zikriniz yok'**
  String get dualarNoSavedZikir;

  /// No description provided for @dualarNoSavedZikirHint.
  ///
  /// In tr, this message translates to:
  /// **'Zikirmatik\'te çektiğiniz zikri \"Kaydet\" ile bu listeye ekleyebilirsiniz.'**
  String get dualarNoSavedZikirHint;

  /// No description provided for @dualarOptions.
  ///
  /// In tr, this message translates to:
  /// **'Seçenekler'**
  String get dualarOptions;

  /// No description provided for @dualarOverallProgress.
  ///
  /// In tr, this message translates to:
  /// **'Genel: %{percent}'**
  String dualarOverallProgress(int percent);

  /// No description provided for @dualarReading.
  ///
  /// In tr, this message translates to:
  /// **'Okunuşu'**
  String get dualarReading;

  /// No description provided for @dualarReset.
  ///
  /// In tr, this message translates to:
  /// **'Sıfırla'**
  String get dualarReset;

  /// No description provided for @dualarResetConfirm.
  ///
  /// In tr, this message translates to:
  /// **'Sayaç sıfırlansın mı?'**
  String get dualarResetConfirm;

  /// No description provided for @dualarRoundsCompleted.
  ///
  /// In tr, this message translates to:
  /// **'{count} tur tamamlandı'**
  String dualarRoundsCompleted(int count);

  /// No description provided for @dualarSaveAsTitle.
  ///
  /// In tr, this message translates to:
  /// **'Listeye hangi adla kaydedeceksiniz?'**
  String get dualarSaveAsTitle;

  /// No description provided for @dualarSavedZikirs.
  ///
  /// In tr, this message translates to:
  /// **'Kayıtlı Zikirlerim'**
  String get dualarSavedZikirs;

  /// No description provided for @dualarSavtCompletedReset.
  ///
  /// In tr, this message translates to:
  /// **'{count} şavt tamamlandı. Sıfırlamak için sayaca uzun basın.'**
  String dualarSavtCompletedReset(int count);

  /// No description provided for @dualarSavtCongrats.
  ///
  /// In tr, this message translates to:
  /// **'Tebrikler! {count} şavtı tamamladınız.'**
  String dualarSavtCongrats(int count);

  /// No description provided for @dualarSavtCounter.
  ///
  /// In tr, this message translates to:
  /// **'Şavt Sayacı'**
  String get dualarSavtCounter;

  /// No description provided for @dualarSavtPlusOne.
  ///
  /// In tr, this message translates to:
  /// **'Şavt +1'**
  String get dualarSavtPlusOne;

  /// No description provided for @dualarSavtShort.
  ///
  /// In tr, this message translates to:
  /// **'{number}. Şavt'**
  String dualarSavtShort(int number);

  /// No description provided for @dualarSayDownloading.
  ///
  /// In tr, this message translates to:
  /// **'Say duaları indiriliyor...'**
  String get dualarSayDownloading;

  /// No description provided for @dualarSayPageTitle.
  ///
  /// In tr, this message translates to:
  /// **'Sa\'y Duaları (Safa ve Merve)'**
  String get dualarSayPageTitle;

  /// No description provided for @dualarServerError.
  ///
  /// In tr, this message translates to:
  /// **'Sunucu hatası: {code}'**
  String dualarServerError(int code);

  /// No description provided for @dualarSetTargetTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kendinize bir hedef belirleyin.'**
  String get dualarSetTargetTitle;

  /// No description provided for @dualarSilent.
  ///
  /// In tr, this message translates to:
  /// **'Sessiz'**
  String get dualarSilent;

  /// No description provided for @dualarStartFromTitle.
  ///
  /// In tr, this message translates to:
  /// **'Nereden başlayıp çekmek istiyorsunuz?'**
  String get dualarStartFromTitle;

  /// No description provided for @dualarStartNumberHint.
  ///
  /// In tr, this message translates to:
  /// **'Başlangıç sayısı'**
  String get dualarStartNumberHint;

  /// No description provided for @dualarStartShort.
  ///
  /// In tr, this message translates to:
  /// **'Başlangıç'**
  String get dualarStartShort;

  /// No description provided for @dualarTap.
  ///
  /// In tr, this message translates to:
  /// **'Dokun'**
  String get dualarTap;

  /// No description provided for @dualarTargetHint.
  ///
  /// In tr, this message translates to:
  /// **'Örn. 500'**
  String get dualarTargetHint;

  /// No description provided for @dualarTargetReached.
  ///
  /// In tr, this message translates to:
  /// **'Hedefinize ulaştınız!'**
  String get dualarTargetReached;

  /// No description provided for @dualarTargetSet.
  ///
  /// In tr, this message translates to:
  /// **'Hedefiniz {target} olarak belirlendi!'**
  String dualarTargetSet(int target);

  /// No description provided for @dualarTargetTooBig.
  ///
  /// In tr, this message translates to:
  /// **'Hedefiniz 99999\'dan büyük olamaz!'**
  String get dualarTargetTooBig;

  /// No description provided for @dualarTargetZero.
  ///
  /// In tr, this message translates to:
  /// **'Hedefiniz 0 olamaz!'**
  String get dualarTargetZero;

  /// No description provided for @dualarTavafDownloading.
  ///
  /// In tr, this message translates to:
  /// **'Tavaf duaları indiriliyor...'**
  String get dualarTavafDownloading;

  /// No description provided for @dualarTavafPageTitle.
  ///
  /// In tr, this message translates to:
  /// **'Şavt Duaları (Tavaf)'**
  String get dualarTavafPageTitle;

  /// No description provided for @dualarTextView.
  ///
  /// In tr, this message translates to:
  /// **'Metin görünümü'**
  String get dualarTextView;

  /// No description provided for @dualarTextViewOffline.
  ///
  /// In tr, this message translates to:
  /// **'Metin görünümü internetsiz de kullanılabilir.'**
  String get dualarTextViewOffline;

  /// No description provided for @dualarThemeColor.
  ///
  /// In tr, this message translates to:
  /// **'Tema rengi'**
  String get dualarThemeColor;

  /// No description provided for @dualarTimeout.
  ///
  /// In tr, this message translates to:
  /// **'Zaman aşımı'**
  String get dualarTimeout;

  /// No description provided for @dualarTurkishTranslation.
  ///
  /// In tr, this message translates to:
  /// **'Türkçe Çeviri'**
  String get dualarTurkishTranslation;

  /// No description provided for @dualarUndo.
  ///
  /// In tr, this message translates to:
  /// **'Geri al'**
  String get dualarUndo;

  /// No description provided for @dualarVibration.
  ///
  /// In tr, this message translates to:
  /// **'Titreşim'**
  String get dualarVibration;

  /// No description provided for @dualarVibrationOff.
  ///
  /// In tr, this message translates to:
  /// **'Titreşim kapatıldı'**
  String get dualarVibrationOff;

  /// No description provided for @dualarVibrationOn.
  ///
  /// In tr, this message translates to:
  /// **'Titreşim açıldı'**
  String get dualarVibrationOn;

  /// No description provided for @dualarViewList.
  ///
  /// In tr, this message translates to:
  /// **'Listeyi Gör'**
  String get dualarViewList;

  /// No description provided for @dualarYourTarget.
  ///
  /// In tr, this message translates to:
  /// **'Hedefiniz: {target}'**
  String dualarYourTarget(int target);

  /// No description provided for @dualarZikirContinuing.
  ///
  /// In tr, this message translates to:
  /// **'{name} adlı zikire devam ediyorsunuz.'**
  String dualarZikirContinuing(String name);

  /// No description provided for @dualarZikirCount.
  ///
  /// In tr, this message translates to:
  /// **'Zikir Sayısı'**
  String get dualarZikirCount;

  /// No description provided for @dualarZikirMaxReached.
  ///
  /// In tr, this message translates to:
  /// **'Zikirmatik daha fazla artamaz!'**
  String get dualarZikirMaxReached;

  /// No description provided for @dualarZikirName.
  ///
  /// In tr, this message translates to:
  /// **'Zikir Adı'**
  String get dualarZikirName;

  /// No description provided for @dualarZikirNameHint.
  ///
  /// In tr, this message translates to:
  /// **'Örn. Sübhanallah'**
  String get dualarZikirNameHint;

  /// No description provided for @dualarZikirSaved.
  ///
  /// In tr, this message translates to:
  /// **'Zikriniz Başarıyla Kaydedildi!'**
  String get dualarZikirSaved;

  /// No description provided for @dualarZikirSavedCount.
  ///
  /// In tr, this message translates to:
  /// **'\"{name}\" kaydedildi ({count})'**
  String dualarZikirSavedCount(String name, int count);

  /// No description provided for @dualarZikirmatik.
  ///
  /// In tr, this message translates to:
  /// **'Zikirmatik'**
  String get dualarZikirmatik;

  /// No description provided for @esnafAllTransactions.
  ///
  /// In tr, this message translates to:
  /// **'Tüm işlemler'**
  String get esnafAllTransactions;

  /// No description provided for @esnafAmountInvalid.
  ///
  /// In tr, this message translates to:
  /// **'Geçerli bir tutar girin.'**
  String get esnafAmountInvalid;

  /// No description provided for @esnafAmountLabel.
  ///
  /// In tr, this message translates to:
  /// **'Tutar (SAR)'**
  String get esnafAmountLabel;

  /// No description provided for @esnafAmountTooHigh.
  ///
  /// In tr, this message translates to:
  /// **'Tek işlemde en fazla {max} girilebilir.'**
  String esnafAmountTooHigh(String max);

  /// No description provided for @esnafBackHome.
  ///
  /// In tr, this message translates to:
  /// **'Ana sayfa'**
  String get esnafBackHome;

  /// No description provided for @esnafByMethod.
  ///
  /// In tr, this message translates to:
  /// **'Ödeme türüne göre'**
  String get esnafByMethod;

  /// No description provided for @esnafCalcCoupon.
  ///
  /// In tr, this message translates to:
  /// **'Kupon {code}'**
  String esnafCalcCoupon(String code);

  /// No description provided for @esnafCalcDiscount.
  ///
  /// In tr, this message translates to:
  /// **'İndirim (%{percent})'**
  String esnafCalcDiscount(int percent);

  /// No description provided for @esnafCalcGross.
  ///
  /// In tr, this message translates to:
  /// **'Brüt tutar'**
  String get esnafCalcGross;

  /// No description provided for @esnafCalcPayable.
  ///
  /// In tr, this message translates to:
  /// **'Ödenecek'**
  String get esnafCalcPayable;

  /// No description provided for @esnafCalcPointsBalance.
  ///
  /// In tr, this message translates to:
  /// **'Misafirin bakiyesi'**
  String get esnafCalcPointsBalance;

  /// No description provided for @esnafCalcPointsEarned.
  ///
  /// In tr, this message translates to:
  /// **'Kazanılan puan'**
  String get esnafCalcPointsEarned;

  /// No description provided for @esnafCalcPointsNeeded.
  ///
  /// In tr, this message translates to:
  /// **'Gereken puan'**
  String get esnafCalcPointsNeeded;

  /// No description provided for @esnafCalcPointsSpent.
  ///
  /// In tr, this message translates to:
  /// **'Harcanan puan'**
  String get esnafCalcPointsSpent;

  /// No description provided for @esnafCancelAction.
  ///
  /// In tr, this message translates to:
  /// **'İptal et'**
  String get esnafCancelAction;

  /// No description provided for @esnafCancelConfirmBody.
  ///
  /// In tr, this message translates to:
  /// **'{guest} adına {amount} tutarındaki işlem iptal edilecek. Bu işlem geri alınamaz.'**
  String esnafCancelConfirmBody(String guest, String amount);

  /// No description provided for @esnafCancelConfirmTitle.
  ///
  /// In tr, this message translates to:
  /// **'Emin misiniz?'**
  String get esnafCancelConfirmTitle;

  /// No description provided for @esnafCancelDenied.
  ///
  /// In tr, this message translates to:
  /// **'İptal edilemedi: 24 saatlik iptal süresi dolmuş olabilir.'**
  String get esnafCancelDenied;

  /// No description provided for @esnafCancelDone.
  ///
  /// In tr, this message translates to:
  /// **'İşlem iptal edildi.'**
  String get esnafCancelDone;

  /// No description provided for @esnafCancelReason.
  ///
  /// In tr, this message translates to:
  /// **'İptal sebebi'**
  String get esnafCancelReason;

  /// No description provided for @esnafCancelReasonPrompt.
  ///
  /// In tr, this message translates to:
  /// **'İptal sebebini yazın. Acenteniz bu kaydı görür.'**
  String get esnafCancelReasonPrompt;

  /// No description provided for @esnafCancelReasonRequired.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen kısa bir sebep yazın.'**
  String get esnafCancelReasonRequired;

  /// No description provided for @esnafCancelTitle.
  ///
  /// In tr, this message translates to:
  /// **'İşlemi iptal et'**
  String get esnafCancelTitle;

  /// No description provided for @esnafCancelWindowPassed.
  ///
  /// In tr, this message translates to:
  /// **'İşlemler yalnızca ilk 24 saat içinde iptal edilebilir.'**
  String get esnafCancelWindowPassed;

  /// No description provided for @esnafCancelledAt.
  ///
  /// In tr, this message translates to:
  /// **'İptal zamanı'**
  String get esnafCancelledAt;

  /// No description provided for @esnafCancelledTag.
  ///
  /// In tr, this message translates to:
  /// **'İptal'**
  String get esnafCancelledTag;

  /// No description provided for @esnafCodeLabel.
  ///
  /// In tr, this message translates to:
  /// **'Kod: {code}'**
  String esnafCodeLabel(String code);

  /// No description provided for @esnafContinue.
  ///
  /// In tr, this message translates to:
  /// **'Devam'**
  String get esnafContinue;

  /// No description provided for @esnafCopied.
  ///
  /// In tr, this message translates to:
  /// **'Rapor panoya kopyalandı.'**
  String get esnafCopied;

  /// No description provided for @esnafCopy.
  ///
  /// In tr, this message translates to:
  /// **'Kopyala'**
  String get esnafCopy;

  /// No description provided for @esnafCouponApplied.
  ///
  /// In tr, this message translates to:
  /// **'Uygulanan kupon indirimi: {amount}'**
  String esnafCouponApplied(String amount);

  /// No description provided for @esnafCouponEnterAmount.
  ///
  /// In tr, this message translates to:
  /// **'Tutarı girince kupon indirimi hesaplanır.'**
  String get esnafCouponEnterAmount;

  /// No description provided for @esnafCouponErrAlreadyUsed.
  ///
  /// In tr, this message translates to:
  /// **'Misafir bu kuponu daha önce kullanmış.'**
  String get esnafCouponErrAlreadyUsed;

  /// No description provided for @esnafCouponErrExhausted.
  ///
  /// In tr, this message translates to:
  /// **'Kupon kullanım sınırına ulaştı.'**
  String get esnafCouponErrExhausted;

  /// No description provided for @esnafCouponErrExpired.
  ///
  /// In tr, this message translates to:
  /// **'Kuponun süresi dolmuş.'**
  String get esnafCouponErrExpired;

  /// No description provided for @esnafCouponErrInactive.
  ///
  /// In tr, this message translates to:
  /// **'Kupon pasif.'**
  String get esnafCouponErrInactive;

  /// No description provided for @esnafCouponErrMinSpend.
  ///
  /// In tr, this message translates to:
  /// **'Bu kupon en az {amount} alışverişte geçerli.'**
  String esnafCouponErrMinSpend(String amount);

  /// No description provided for @esnafCouponErrNotFound.
  ///
  /// In tr, this message translates to:
  /// **'Kupon bulunamadı.'**
  String get esnafCouponErrNotFound;

  /// No description provided for @esnafCouponErrNotStarted.
  ///
  /// In tr, this message translates to:
  /// **'Kupon henüz başlamadı.'**
  String get esnafCouponErrNotStarted;

  /// No description provided for @esnafCouponErrOtherAgency.
  ///
  /// In tr, this message translates to:
  /// **'Kupon bu misafirin acentesi için geçerli değil.'**
  String get esnafCouponErrOtherAgency;

  /// No description provided for @esnafCouponErrOtherShop.
  ///
  /// In tr, this message translates to:
  /// **'Kupon bu dükkanda geçerli değil.'**
  String get esnafCouponErrOtherShop;

  /// No description provided for @esnafCouponErrSave.
  ///
  /// In tr, this message translates to:
  /// **'Kupon kullanılamadı: misafir bu kuponu daha önce kullanmış ya da kupon az önce tükenmiş olabilir. Misafirden kuponsuz yeni bir kod üretmesini isteyin.'**
  String get esnafCouponErrSave;

  /// No description provided for @esnafCouponErrZero.
  ///
  /// In tr, this message translates to:
  /// **'Bu tutarda kupon indirimi uygulanamıyor.'**
  String get esnafCouponErrZero;

  /// No description provided for @esnafCouponFixed.
  ///
  /// In tr, this message translates to:
  /// **'{amount} indirim'**
  String esnafCouponFixed(String amount);

  /// No description provided for @esnafCouponInvalidHint.
  ///
  /// In tr, this message translates to:
  /// **'Bu kodla işlem kaydedilemez. Misafirden kuponsuz yeni bir kod üretmesini isteyin.'**
  String get esnafCouponInvalidHint;

  /// No description provided for @esnafCouponLoading.
  ///
  /// In tr, this message translates to:
  /// **'Kupon kontrol ediliyor…'**
  String get esnafCouponLoading;

  /// No description provided for @esnafCouponMax.
  ///
  /// In tr, this message translates to:
  /// **'en fazla {amount}'**
  String esnafCouponMax(String amount);

  /// No description provided for @esnafCouponMin.
  ///
  /// In tr, this message translates to:
  /// **'en az {amount} alışverişte'**
  String esnafCouponMin(String amount);

  /// No description provided for @esnafCouponPercent.
  ///
  /// In tr, this message translates to:
  /// **'%{value} indirim'**
  String esnafCouponPercent(String value);

  /// No description provided for @esnafCouponTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kupon: {code}'**
  String esnafCouponTitle(String code);

  /// No description provided for @esnafDayReport.
  ///
  /// In tr, this message translates to:
  /// **'Gün sonu raporu'**
  String get esnafDayReport;

  /// No description provided for @esnafDiscountBadge.
  ///
  /// In tr, this message translates to:
  /// **'%{percent} indirim'**
  String esnafDiscountBadge(int percent);

  /// No description provided for @esnafDiscountShort.
  ///
  /// In tr, this message translates to:
  /// **'indirim {amount}'**
  String esnafDiscountShort(String amount);

  /// No description provided for @esnafErrExpired.
  ///
  /// In tr, this message translates to:
  /// **'Kodun süresi doldu'**
  String get esnafErrExpired;

  /// No description provided for @esnafErrExpiredBody.
  ///
  /// In tr, this message translates to:
  /// **'Kodun süresi doldu. Misafirden yeni kod isteyip tekrar okutun.'**
  String get esnafErrExpiredBody;

  /// No description provided for @esnafErrInvalidCode.
  ///
  /// In tr, this message translates to:
  /// **'Bu kod geçersiz, süresi dolmuş ya da daha önce kullanılmış.'**
  String get esnafErrInvalidCode;

  /// No description provided for @esnafErrNetwork.
  ///
  /// In tr, this message translates to:
  /// **'Bağlantı sorunu. İnternetinizi kontrol edip tekrar deneyin.'**
  String get esnafErrNetwork;

  /// No description provided for @esnafErrNotFound.
  ///
  /// In tr, this message translates to:
  /// **'Kod bulunamadı'**
  String get esnafErrNotFound;

  /// No description provided for @esnafErrNotOurs.
  ///
  /// In tr, this message translates to:
  /// **'Bu bir Umre Rehberim kodu değil'**
  String get esnafErrNotOurs;

  /// No description provided for @esnafErrNotOursBody.
  ///
  /// In tr, this message translates to:
  /// **'Misafirden uygulamadaki esnaf kodunu açmasını isteyin.'**
  String get esnafErrNotOursBody;

  /// No description provided for @esnafErrOtherAgency.
  ///
  /// In tr, this message translates to:
  /// **'Anlaşmalı acente değil'**
  String get esnafErrOtherAgency;

  /// No description provided for @esnafErrOtherAgencyBody.
  ///
  /// In tr, this message translates to:
  /// **'Bu misafirin acentesiyle dükkanınızın indirim anlaşması yok.'**
  String get esnafErrOtherAgencyBody;

  /// No description provided for @esnafErrSave.
  ///
  /// In tr, this message translates to:
  /// **'Kaydedilemedi. Lütfen tekrar deneyin.'**
  String get esnafErrSave;

  /// No description provided for @esnafErrTitle.
  ///
  /// In tr, this message translates to:
  /// **'İşlem kaydedilemedi'**
  String get esnafErrTitle;

  /// No description provided for @esnafErrUsed.
  ///
  /// In tr, this message translates to:
  /// **'Kod daha önce kullanılmış'**
  String get esnafErrUsed;

  /// No description provided for @esnafErrUsedAt.
  ///
  /// In tr, this message translates to:
  /// **'Bu kod \"{shop}\" dükkanında kullanıldı. Misafirden yeni kod isteyin.'**
  String esnafErrUsedAt(String shop);

  /// No description provided for @esnafErrUsedBody.
  ///
  /// In tr, this message translates to:
  /// **'Misafirden yeni bir kod oluşturmasını isteyin.'**
  String get esnafErrUsedBody;

  /// No description provided for @esnafGuest.
  ///
  /// In tr, this message translates to:
  /// **'Misafir'**
  String get esnafGuest;

  /// No description provided for @esnafGuestPoints.
  ///
  /// In tr, this message translates to:
  /// **'Puan bakiyesi'**
  String get esnafGuestPoints;

  /// No description provided for @esnafGuestTrip.
  ///
  /// In tr, this message translates to:
  /// **'Sefer'**
  String get esnafGuestTrip;

  /// No description provided for @esnafHistoryTitle.
  ///
  /// In tr, this message translates to:
  /// **'İşlem geçmişi'**
  String get esnafHistoryTitle;

  /// No description provided for @esnafLoadFailed.
  ///
  /// In tr, this message translates to:
  /// **'Veriler yüklenemedi'**
  String get esnafLoadFailed;

  /// No description provided for @esnafLoadFailedBody.
  ///
  /// In tr, this message translates to:
  /// **'İnternet bağlantınızı kontrol edip tekrar deneyin.'**
  String get esnafLoadFailedBody;

  /// No description provided for @esnafLoginCodeError.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf kodu 6 karakter olmalı (A-Z, 2-9).'**
  String get esnafLoginCodeError;

  /// No description provided for @esnafLoginCodeLabel.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf kodu'**
  String get esnafLoginCodeLabel;

  /// No description provided for @esnafLoginHint.
  ///
  /// In tr, this message translates to:
  /// **'Kod ve PIN size acenteniz tarafından verilir.'**
  String get esnafLoginHint;

  /// No description provided for @esnafLoginNotMerchant.
  ///
  /// In tr, this message translates to:
  /// **'Bu hesap bir esnaf hesabı değil.'**
  String get esnafLoginNotMerchant;

  /// No description provided for @esnafLoginPinError.
  ///
  /// In tr, this message translates to:
  /// **'PIN 6 haneli olmalı.'**
  String get esnafLoginPinError;

  /// No description provided for @esnafLoginPinLabel.
  ///
  /// In tr, this message translates to:
  /// **'PIN'**
  String get esnafLoginPinLabel;

  /// No description provided for @esnafLoginType.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf'**
  String get esnafLoginType;

  /// No description provided for @esnafLoginUseMerchant.
  ///
  /// In tr, this message translates to:
  /// **'Bu bir esnaf hesabı. Lütfen \"Esnaf\" girişini seçin.'**
  String get esnafLoginUseMerchant;

  /// No description provided for @esnafLoginWrong.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf kodu ya da PIN hatalı.'**
  String get esnafLoginWrong;

  /// No description provided for @esnafLogoCamera.
  ///
  /// In tr, this message translates to:
  /// **'Fotoğraf çek'**
  String get esnafLogoCamera;

  /// No description provided for @esnafLogoGallery.
  ///
  /// In tr, this message translates to:
  /// **'Galeriden seç'**
  String get esnafLogoGallery;

  /// No description provided for @esnafLogoRemove.
  ///
  /// In tr, this message translates to:
  /// **'Logoyu kaldır'**
  String get esnafLogoRemove;

  /// No description provided for @esnafLogout.
  ///
  /// In tr, this message translates to:
  /// **'Çıkış yap'**
  String get esnafLogout;

  /// No description provided for @esnafLogoutConfirm.
  ///
  /// In tr, this message translates to:
  /// **'Oturumu kapatmak istiyor musunuz?'**
  String get esnafLogoutConfirm;

  /// No description provided for @esnafMenuShopInfo.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan bilgilerim'**
  String get esnafMenuShopInfo;

  /// No description provided for @esnafMethodAll.
  ///
  /// In tr, this message translates to:
  /// **'Tümü'**
  String get esnafMethodAll;

  /// No description provided for @esnafMethodCard.
  ///
  /// In tr, this message translates to:
  /// **'Kredi kartı'**
  String get esnafMethodCard;

  /// No description provided for @esnafMethodCash.
  ///
  /// In tr, this message translates to:
  /// **'Nakit'**
  String get esnafMethodCash;

  /// No description provided for @esnafMethodLabel.
  ///
  /// In tr, this message translates to:
  /// **'Ödeme türü'**
  String get esnafMethodLabel;

  /// No description provided for @esnafMethodPoints.
  ///
  /// In tr, this message translates to:
  /// **'Puan'**
  String get esnafMethodPoints;

  /// No description provided for @esnafNewTx.
  ///
  /// In tr, this message translates to:
  /// **'Yeni işlem'**
  String get esnafNewTx;

  /// No description provided for @esnafNoCollectNote.
  ///
  /// In tr, this message translates to:
  /// **'Uygulama ödeme almaz; yalnızca kaydı tutar.'**
  String get esnafNoCollectNote;

  /// No description provided for @esnafNoTransactions.
  ///
  /// In tr, this message translates to:
  /// **'Bu filtreye uygun işlem yok.'**
  String get esnafNoTransactions;

  /// No description provided for @esnafNoTransactionsToday.
  ///
  /// In tr, this message translates to:
  /// **'Bugün henüz işlem yok.'**
  String get esnafNoTransactionsToday;

  /// No description provided for @esnafNoteLabel.
  ///
  /// In tr, this message translates to:
  /// **'Not (isteğe bağlı)'**
  String get esnafNoteLabel;

  /// No description provided for @esnafPointsInsufficient.
  ///
  /// In tr, this message translates to:
  /// **'Puan yetersiz: {need} puan gerekli, bakiye {balance}.'**
  String esnafPointsInsufficient(String need, String balance);

  /// No description provided for @esnafPointsNone.
  ///
  /// In tr, this message translates to:
  /// **'Misafirin puan bakiyesi yok; puanla ödeme yapılamaz.'**
  String get esnafPointsNone;

  /// No description provided for @esnafRange30.
  ///
  /// In tr, this message translates to:
  /// **'30 gün'**
  String get esnafRange30;

  /// No description provided for @esnafRange7.
  ///
  /// In tr, this message translates to:
  /// **'7 gün'**
  String get esnafRange7;

  /// No description provided for @esnafRangeCustom.
  ///
  /// In tr, this message translates to:
  /// **'Özel'**
  String get esnafRangeCustom;

  /// No description provided for @esnafRangeToday.
  ///
  /// In tr, this message translates to:
  /// **'Bugün'**
  String get esnafRangeToday;

  /// No description provided for @esnafRecentTransactions.
  ///
  /// In tr, this message translates to:
  /// **'Son işlemler'**
  String get esnafRecentTransactions;

  /// No description provided for @esnafReportCancelled.
  ///
  /// In tr, this message translates to:
  /// **'İptal edilen işlem'**
  String get esnafReportCancelled;

  /// No description provided for @esnafReportFooter.
  ///
  /// In tr, this message translates to:
  /// **'Umre Rehberim – Esnaf Paneli'**
  String get esnafReportFooter;

  /// No description provided for @esnafReportHeader.
  ///
  /// In tr, this message translates to:
  /// **'{shop} – Gün sonu raporu'**
  String esnafReportHeader(String shop);

  /// No description provided for @esnafReportPickDay.
  ///
  /// In tr, this message translates to:
  /// **'Rapor günü seçin'**
  String get esnafReportPickDay;

  /// No description provided for @esnafReviewComplaint.
  ///
  /// In tr, this message translates to:
  /// **'Şikâyet'**
  String get esnafReviewComplaint;

  /// No description provided for @esnafReviewTitle.
  ///
  /// In tr, this message translates to:
  /// **'Misafir değerlendirmesi'**
  String get esnafReviewTitle;

  /// No description provided for @esnafSar.
  ///
  /// In tr, this message translates to:
  /// **'{amount} SAR'**
  String esnafSar(String amount);

  /// No description provided for @esnafSaveTx.
  ///
  /// In tr, this message translates to:
  /// **'İşlemi kaydet'**
  String get esnafSaveTx;

  /// No description provided for @esnafScanAgain.
  ///
  /// In tr, this message translates to:
  /// **'Tekrar okut'**
  String get esnafScanAgain;

  /// No description provided for @esnafScanQr.
  ///
  /// In tr, this message translates to:
  /// **'QR Okut'**
  String get esnafScanQr;

  /// No description provided for @esnafScanQrHint.
  ///
  /// In tr, this message translates to:
  /// **'Misafirin telefonundaki kodu okutun'**
  String get esnafScanQrHint;

  /// No description provided for @esnafShopDescription.
  ///
  /// In tr, this message translates to:
  /// **'Açıklama'**
  String get esnafShopDescription;

  /// No description provided for @esnafShopHours.
  ///
  /// In tr, this message translates to:
  /// **'Çalışma saatleri'**
  String get esnafShopHours;

  /// No description provided for @esnafShopInactive.
  ///
  /// In tr, this message translates to:
  /// **'Dükkanınız şu an pasif. İşlem yapılamaz; acentenizle görüşün.'**
  String get esnafShopInactive;

  /// No description provided for @esnafShopNotFound.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan bulunamadı'**
  String get esnafShopNotFound;

  /// No description provided for @esnafShopNotFoundBody.
  ///
  /// In tr, this message translates to:
  /// **'Hesabınıza bağlı bir dükkan yok. Lütfen acentenizle iletişime geçin.'**
  String get esnafShopNotFoundBody;

  /// No description provided for @esnafShopPhone.
  ///
  /// In tr, this message translates to:
  /// **'Telefon'**
  String get esnafShopPhone;

  /// No description provided for @esnafShopReadOnlyNote.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan adı ve indirim oranını yalnızca acenteniz değiştirebilir.'**
  String get esnafShopReadOnlyNote;

  /// No description provided for @esnafShopSaved.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan bilgileri kaydedildi.'**
  String get esnafShopSaved;

  /// No description provided for @esnafShopWhatsapp.
  ///
  /// In tr, this message translates to:
  /// **'WhatsApp'**
  String get esnafShopWhatsapp;

  /// No description provided for @esnafStatCount.
  ///
  /// In tr, this message translates to:
  /// **'İşlem'**
  String get esnafStatCount;

  /// No description provided for @esnafStatDiscount.
  ///
  /// In tr, this message translates to:
  /// **'Verilen indirim'**
  String get esnafStatDiscount;

  /// No description provided for @esnafStatNet.
  ///
  /// In tr, this message translates to:
  /// **'Net ciro'**
  String get esnafStatNet;

  /// No description provided for @esnafSuccessBody.
  ///
  /// In tr, this message translates to:
  /// **'Ödemeyi kendi kasanızda ya da POS cihazınızda alın.'**
  String get esnafSuccessBody;

  /// No description provided for @esnafSuccessTitle.
  ///
  /// In tr, this message translates to:
  /// **'İşlem kaydedildi'**
  String get esnafSuccessTitle;

  /// No description provided for @esnafTime.
  ///
  /// In tr, this message translates to:
  /// **'Zaman'**
  String get esnafTime;

  /// No description provided for @esnafTitle.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf Paneli'**
  String get esnafTitle;

  /// No description provided for @esnafTodaySummary.
  ///
  /// In tr, this message translates to:
  /// **'Bugünün özeti'**
  String get esnafTodaySummary;

  /// No description provided for @esnafTxTitle.
  ///
  /// In tr, this message translates to:
  /// **'Yeni işlem'**
  String get esnafTxTitle;

  /// No description provided for @hatimCancel.
  ///
  /// In tr, this message translates to:
  /// **'Vazgeç'**
  String get hatimCancel;

  /// No description provided for @hatimCardSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Birlikte hatim indirin, cüz cüz paylaşın'**
  String get hatimCardSubtitle;

  /// No description provided for @hatimCompletedBadge.
  ///
  /// In tr, this message translates to:
  /// **'Tamamlandı'**
  String get hatimCompletedBadge;

  /// No description provided for @hatimCompletedBanner.
  ///
  /// In tr, this message translates to:
  /// **'Hatim tamamlandı, Allah kabul etsin'**
  String get hatimCompletedBanner;

  /// No description provided for @hatimConfirm.
  ///
  /// In tr, this message translates to:
  /// **'Evet'**
  String get hatimConfirm;

  /// No description provided for @hatimCreateButton.
  ///
  /// In tr, this message translates to:
  /// **'Grubu oluştur'**
  String get hatimCreateButton;

  /// No description provided for @hatimCreateTitle.
  ///
  /// In tr, this message translates to:
  /// **'Yeni hatim grubu'**
  String get hatimCreateTitle;

  /// No description provided for @hatimCreated.
  ///
  /// In tr, this message translates to:
  /// **'Hatim grubu oluşturuldu'**
  String get hatimCreated;

  /// No description provided for @hatimDeadline.
  ///
  /// In tr, this message translates to:
  /// **'Hedef: {date}'**
  String hatimDeadline(String date);

  /// No description provided for @hatimDeadlineClear.
  ///
  /// In tr, this message translates to:
  /// **'Kaldır'**
  String get hatimDeadlineClear;

  /// No description provided for @hatimDeadlineLabel.
  ///
  /// In tr, this message translates to:
  /// **'Hedef tarih (isteğe bağlı)'**
  String get hatimDeadlineLabel;

  /// No description provided for @hatimDeadlineNone.
  ///
  /// In tr, this message translates to:
  /// **'Tarih seçilmedi'**
  String get hatimDeadlineNone;

  /// No description provided for @hatimDelete.
  ///
  /// In tr, this message translates to:
  /// **'Grubu sil'**
  String get hatimDelete;

  /// No description provided for @hatimDeleteConfirm.
  ///
  /// In tr, this message translates to:
  /// **'Grup ve tüm ilerlemesi silinecek. Emin misiniz?'**
  String get hatimDeleteConfirm;

  /// No description provided for @hatimDoneBy.
  ///
  /// In tr, this message translates to:
  /// **'Okuyan: {name}'**
  String hatimDoneBy(String name);

  /// No description provided for @hatimDoneToast.
  ///
  /// In tr, this message translates to:
  /// **'Allah kabul etsin!'**
  String get hatimDoneToast;

  /// No description provided for @hatimEdit.
  ///
  /// In tr, this message translates to:
  /// **'Düzenle'**
  String get hatimEdit;

  /// No description provided for @hatimEditTitle.
  ///
  /// In tr, this message translates to:
  /// **'Grubu düzenle'**
  String get hatimEditTitle;

  /// No description provided for @hatimEmptyDiscover.
  ///
  /// In tr, this message translates to:
  /// **'Şu an katılabileceğiniz başka grup yok.'**
  String get hatimEmptyDiscover;

  /// No description provided for @hatimEmptyMine.
  ///
  /// In tr, this message translates to:
  /// **'Henüz bir hatim grubunuz yok. Yeni bir grup kurun ya da Keşfet sekmesinden bir gruba katılın.'**
  String get hatimEmptyMine;

  /// No description provided for @hatimErrAlreadyDone.
  ///
  /// In tr, this message translates to:
  /// **'Bu parça zaten okunmuş'**
  String get hatimErrAlreadyDone;

  /// No description provided for @hatimErrCreateTooSoon.
  ///
  /// In tr, this message translates to:
  /// **'Yeni bir grup kurmak için 1 dakika bekleyin.'**
  String get hatimErrCreateTooSoon;

  /// No description provided for @hatimErrFull.
  ///
  /// In tr, this message translates to:
  /// **'Grup dolu (en fazla 200 üye)'**
  String get hatimErrFull;

  /// No description provided for @hatimErrGeneric.
  ///
  /// In tr, this message translates to:
  /// **'İşlem tamamlanamadı. Lütfen tekrar deneyin.'**
  String get hatimErrGeneric;

  /// No description provided for @hatimErrNetwork.
  ///
  /// In tr, this message translates to:
  /// **'Bağlantı sorunu. Lütfen tekrar deneyin.'**
  String get hatimErrNetwork;

  /// No description provided for @hatimErrNotActive.
  ///
  /// In tr, this message translates to:
  /// **'Bu hatim tamamlandı. Yeni hatim başlatılmasını bekleyin.'**
  String get hatimErrNotActive;

  /// No description provided for @hatimErrNotSignedIn.
  ///
  /// In tr, this message translates to:
  /// **'Oturum bulunamadı. Lütfen tekrar giriş yapın.'**
  String get hatimErrNotSignedIn;

  /// No description provided for @hatimErrNotYours.
  ///
  /// In tr, this message translates to:
  /// **'Bu parça artık sizde değil'**
  String get hatimErrNotYours;

  /// No description provided for @hatimErrPermission.
  ///
  /// In tr, this message translates to:
  /// **'Bu işlem için yetkiniz yok'**
  String get hatimErrPermission;

  /// No description provided for @hatimErrQuotaCuz.
  ///
  /// In tr, this message translates to:
  /// **'En fazla 3 cüz alabilirsiniz. Önce aldıklarınızı bitirin.'**
  String get hatimErrQuotaCuz;

  /// No description provided for @hatimErrQuotaSayfa.
  ///
  /// In tr, this message translates to:
  /// **'En fazla 20 sayfa alabilirsiniz. Önce aldıklarınızı bitirin.'**
  String get hatimErrQuotaSayfa;

  /// No description provided for @hatimErrRejoinTooSoon.
  ///
  /// In tr, this message translates to:
  /// **'Gruba tekrar katılmak için biraz bekleyin.'**
  String get hatimErrRejoinTooSoon;

  /// No description provided for @hatimErrTakenCuz.
  ///
  /// In tr, this message translates to:
  /// **'Bu cüz az önce başkası tarafından alındı'**
  String get hatimErrTakenCuz;

  /// No description provided for @hatimErrTakenSayfa.
  ///
  /// In tr, this message translates to:
  /// **'Bu sayfa az önce başkası tarafından alındı'**
  String get hatimErrTakenSayfa;

  /// No description provided for @hatimErrTooSoon.
  ///
  /// In tr, this message translates to:
  /// **'Okumak için biraz zaman tanıyın. Parçayı aldıktan en az 1 dakika sonra bitirebilirsiniz.'**
  String get hatimErrTooSoon;

  /// No description provided for @hatimEvCompleted.
  ///
  /// In tr, this message translates to:
  /// **'Hatim tamamlandı! Allah kabul etsin'**
  String get hatimEvCompleted;

  /// No description provided for @hatimEvCreate.
  ///
  /// In tr, this message translates to:
  /// **'{name} grubu kurdu'**
  String hatimEvCreate(String name);

  /// No description provided for @hatimEvDoneCuz.
  ///
  /// In tr, this message translates to:
  /// **'{name} {n}. cüzü bitirdi ({done}/{total})'**
  String hatimEvDoneCuz(String name, int n, int done, int total);

  /// No description provided for @hatimEvDoneSayfa.
  ///
  /// In tr, this message translates to:
  /// **'{name} {n}. sayfayı bitirdi ({done}/{total})'**
  String hatimEvDoneSayfa(String name, int n, int done, int total);

  /// No description provided for @hatimEvJoin.
  ///
  /// In tr, this message translates to:
  /// **'{name} gruba katıldı'**
  String hatimEvJoin(String name);

  /// No description provided for @hatimEvKick.
  ///
  /// In tr, this message translates to:
  /// **'{name} bir üyeyi gruptan çıkardı'**
  String hatimEvKick(String name);

  /// No description provided for @hatimEvLeave.
  ///
  /// In tr, this message translates to:
  /// **'{name} gruptan ayrıldı'**
  String hatimEvLeave(String name);

  /// No description provided for @hatimEvNewRound.
  ///
  /// In tr, this message translates to:
  /// **'{round}. hatim başladı'**
  String hatimEvNewRound(int round);

  /// No description provided for @hatimEvRelease.
  ///
  /// In tr, this message translates to:
  /// **'{name} bir parçayı bıraktı'**
  String hatimEvRelease(String name);

  /// No description provided for @hatimEvTakeCuz.
  ///
  /// In tr, this message translates to:
  /// **'{name} {n}. cüzü aldı'**
  String hatimEvTakeCuz(String name, int n);

  /// No description provided for @hatimEvTakeSayfa.
  ///
  /// In tr, this message translates to:
  /// **'{name} {n}. sayfayı aldı'**
  String hatimEvTakeSayfa(String name, int n);

  /// No description provided for @hatimFieldName.
  ///
  /// In tr, this message translates to:
  /// **'Grup adı'**
  String get hatimFieldName;

  /// No description provided for @hatimFieldNameHint.
  ///
  /// In tr, this message translates to:
  /// **'Örn: Annem için hatim'**
  String get hatimFieldNameHint;

  /// No description provided for @hatimFieldNiyet.
  ///
  /// In tr, this message translates to:
  /// **'Niyet / dua (isteğe bağlı)'**
  String get hatimFieldNiyet;

  /// No description provided for @hatimFieldNiyetHint.
  ///
  /// In tr, this message translates to:
  /// **'Hatim kimin için, hangi niyetle okunuyor?'**
  String get hatimFieldNiyetHint;

  /// No description provided for @hatimGroupNotFound.
  ///
  /// In tr, this message translates to:
  /// **'Grup bulunamadı ya da silinmiş.'**
  String get hatimGroupNotFound;

  /// No description provided for @hatimInviteCopied.
  ///
  /// In tr, this message translates to:
  /// **'Davet metni panoya kopyalandı'**
  String get hatimInviteCopied;

  /// No description provided for @hatimInviteText.
  ///
  /// In tr, this message translates to:
  /// **'\"{name}\" hatim grubuna sen de katıl! Umre Rehberim uygulamasında Dualar > Toplu Hatim bölümünden gruba ulaşabilirsin.'**
  String hatimInviteText(String name);

  /// No description provided for @hatimJoin.
  ///
  /// In tr, this message translates to:
  /// **'Gruba katıl'**
  String get hatimJoin;

  /// No description provided for @hatimJoined.
  ///
  /// In tr, this message translates to:
  /// **'Gruba katıldınız'**
  String get hatimJoined;

  /// No description provided for @hatimKick.
  ///
  /// In tr, this message translates to:
  /// **'Üyeyi çıkar'**
  String get hatimKick;

  /// No description provided for @hatimKickConfirm.
  ///
  /// In tr, this message translates to:
  /// **'{name} gruptan çıkarılsın mı? Aldığı ve bitirmediği parçalar boşa çıkarılır.'**
  String hatimKickConfirm(String name);

  /// No description provided for @hatimKicked.
  ///
  /// In tr, this message translates to:
  /// **'Üye gruptan çıkarıldı'**
  String get hatimKicked;

  /// No description provided for @hatimLastEvent.
  ///
  /// In tr, this message translates to:
  /// **'Son hareketler'**
  String get hatimLastEvent;

  /// No description provided for @hatimLeave.
  ///
  /// In tr, this message translates to:
  /// **'Gruptan ayrıl'**
  String get hatimLeave;

  /// No description provided for @hatimLeaveConfirm.
  ///
  /// In tr, this message translates to:
  /// **'Bu gruptan ayrılmak istiyor musunuz?'**
  String get hatimLeaveConfirm;

  /// No description provided for @hatimLegendDone.
  ///
  /// In tr, this message translates to:
  /// **'Bitti'**
  String get hatimLegendDone;

  /// No description provided for @hatimLegendFree.
  ///
  /// In tr, this message translates to:
  /// **'Boş'**
  String get hatimLegendFree;

  /// No description provided for @hatimLegendMine.
  ///
  /// In tr, this message translates to:
  /// **'Benim'**
  String get hatimLegendMine;

  /// No description provided for @hatimLegendTaken.
  ///
  /// In tr, this message translates to:
  /// **'Alındı'**
  String get hatimLegendTaken;

  /// No description provided for @hatimLoadError.
  ///
  /// In tr, this message translates to:
  /// **'Gruplar yüklenemedi'**
  String get hatimLoadError;

  /// No description provided for @hatimMarkDone.
  ///
  /// In tr, this message translates to:
  /// **'Bitirdim'**
  String get hatimMarkDone;

  /// No description provided for @hatimMembers.
  ///
  /// In tr, this message translates to:
  /// **'{count} üye'**
  String hatimMembers(int count);

  /// No description provided for @hatimNameInvalid.
  ///
  /// In tr, this message translates to:
  /// **'Grup adı 3 ile 60 karakter arasında olmalı'**
  String get hatimNameInvalid;

  /// No description provided for @hatimNewGroup.
  ///
  /// In tr, this message translates to:
  /// **'Yeni hatim grubu'**
  String get hatimNewGroup;

  /// No description provided for @hatimNewRound.
  ///
  /// In tr, this message translates to:
  /// **'Yeni hatim başlat'**
  String get hatimNewRound;

  /// No description provided for @hatimNewRoundConfirm.
  ///
  /// In tr, this message translates to:
  /// **'Aynı grupla yeni bir hatme başlansın mı? İlerleme sıfırlanır.'**
  String get hatimNewRoundConfirm;

  /// No description provided for @hatimNiyetInvalid.
  ///
  /// In tr, this message translates to:
  /// **'Niyet en fazla 300 karakter olabilir'**
  String get hatimNiyetInvalid;

  /// No description provided for @hatimNotMember.
  ///
  /// In tr, this message translates to:
  /// **'Parça almak için önce gruba katılın.'**
  String get hatimNotMember;

  /// No description provided for @hatimOwner.
  ///
  /// In tr, this message translates to:
  /// **'Grubu kuran: {name}'**
  String hatimOwner(String name);

  /// No description provided for @hatimPartCuz.
  ///
  /// In tr, this message translates to:
  /// **'{n}. cüz'**
  String hatimPartCuz(int n);

  /// No description provided for @hatimPartSayfa.
  ///
  /// In tr, this message translates to:
  /// **'{n}. sayfa'**
  String hatimPartSayfa(int n);

  /// No description provided for @hatimPrivateBadge.
  ///
  /// In tr, this message translates to:
  /// **'Acenteye özel'**
  String get hatimPrivateBadge;

  /// No description provided for @hatimPrivateDesc.
  ///
  /// In tr, this message translates to:
  /// **'Grubu yalnızca sizinle aynı acentedeki kişiler görür ve katılabilir.'**
  String get hatimPrivateDesc;

  /// No description provided for @hatimPrivateTitle.
  ///
  /// In tr, this message translates to:
  /// **'Yalnız acentem'**
  String get hatimPrivateTitle;

  /// No description provided for @hatimProgress.
  ///
  /// In tr, this message translates to:
  /// **'{done}/{total}'**
  String hatimProgress(int done, int total);

  /// No description provided for @hatimPublicBadge.
  ///
  /// In tr, this message translates to:
  /// **'Herkese açık'**
  String get hatimPublicBadge;

  /// No description provided for @hatimPublicDesc.
  ///
  /// In tr, this message translates to:
  /// **'Uygulamayı kullanan herkes grubu Keşfet sekmesinde görür ve katılabilir.'**
  String get hatimPublicDesc;

  /// No description provided for @hatimPublicTitle.
  ///
  /// In tr, this message translates to:
  /// **'Herkese açık'**
  String get hatimPublicTitle;

  /// No description provided for @hatimQuotaInfo.
  ///
  /// In tr, this message translates to:
  /// **'Sizde {held}/{max}'**
  String hatimQuotaInfo(int held, int max);

  /// No description provided for @hatimRelease.
  ///
  /// In tr, this message translates to:
  /// **'Bırak'**
  String get hatimRelease;

  /// No description provided for @hatimReleaseOther.
  ///
  /// In tr, this message translates to:
  /// **'Parçayı boşa çıkar'**
  String get hatimReleaseOther;

  /// No description provided for @hatimReleaseOtherConfirm.
  ///
  /// In tr, this message translates to:
  /// **'{name} adlı kişinin aldığı parça boşa çıkarılsın mı?'**
  String hatimReleaseOtherConfirm(String name);

  /// No description provided for @hatimRound.
  ///
  /// In tr, this message translates to:
  /// **'{round}. hatim'**
  String hatimRound(int round);

  /// No description provided for @hatimSave.
  ///
  /// In tr, this message translates to:
  /// **'Kaydet'**
  String get hatimSave;

  /// No description provided for @hatimShare.
  ///
  /// In tr, this message translates to:
  /// **'Davet et'**
  String get hatimShare;

  /// No description provided for @hatimStartReading.
  ///
  /// In tr, this message translates to:
  /// **'Okumaya başla'**
  String get hatimStartReading;

  /// No description provided for @hatimTabDiscover.
  ///
  /// In tr, this message translates to:
  /// **'Keşfet'**
  String get hatimTabDiscover;

  /// No description provided for @hatimTabMine.
  ///
  /// In tr, this message translates to:
  /// **'Gruplarım'**
  String get hatimTabMine;

  /// No description provided for @hatimTake.
  ///
  /// In tr, this message translates to:
  /// **'Al'**
  String get hatimTake;

  /// No description provided for @hatimTakeConfirmCuz.
  ///
  /// In tr, this message translates to:
  /// **'{n}. cüzü almak istiyor musunuz?'**
  String hatimTakeConfirmCuz(int n);

  /// No description provided for @hatimTakeConfirmSayfa.
  ///
  /// In tr, this message translates to:
  /// **'{n}. sayfayı almak istiyor musunuz?'**
  String hatimTakeConfirmSayfa(int n);

  /// No description provided for @hatimTakenBy.
  ///
  /// In tr, this message translates to:
  /// **'Alan: {name}'**
  String hatimTakenBy(String name);

  /// No description provided for @hatimTakenToast.
  ///
  /// In tr, this message translates to:
  /// **'Parça size ayrıldı. Hayırlı okumalar!'**
  String get hatimTakenToast;

  /// No description provided for @hatimTitle.
  ///
  /// In tr, this message translates to:
  /// **'Toplu Hatim'**
  String get hatimTitle;

  /// No description provided for @hatimUnitCuz.
  ///
  /// In tr, this message translates to:
  /// **'Cüz'**
  String get hatimUnitCuz;

  /// No description provided for @hatimUnitCuzDesc.
  ///
  /// In tr, this message translates to:
  /// **'30 cüz. Her üye bir veya birkaç cüz alır.'**
  String get hatimUnitCuzDesc;

  /// No description provided for @hatimUnitLabel.
  ///
  /// In tr, this message translates to:
  /// **'Nasıl paylaşılsın?'**
  String get hatimUnitLabel;

  /// No description provided for @hatimUnitLocked.
  ///
  /// In tr, this message translates to:
  /// **'Paylaşım birimi grup kurulduktan sonra değiştirilemez.'**
  String get hatimUnitLocked;

  /// No description provided for @hatimUnitSayfa.
  ///
  /// In tr, this message translates to:
  /// **'Sayfa'**
  String get hatimUnitSayfa;

  /// No description provided for @hatimUnitSayfaDesc.
  ///
  /// In tr, this message translates to:
  /// **'604 sayfa. Kalabalık gruplarla kısa sürede biter.'**
  String get hatimUnitSayfaDesc;

  /// No description provided for @hatimVisibilityLabel.
  ///
  /// In tr, this message translates to:
  /// **'Kimler görebilir?'**
  String get hatimVisibilityLabel;

  /// No description provided for @homeAnnouncement.
  ///
  /// In tr, this message translates to:
  /// **'Duyuru'**
  String get homeAnnouncement;

  /// No description provided for @homeBirthDate.
  ///
  /// In tr, this message translates to:
  /// **'Doğum Tarihi'**
  String get homeBirthDate;

  /// No description provided for @homeCalendarNoAgency.
  ///
  /// In tr, this message translates to:
  /// **'Acente bilginiz tanımlandığında program burada görünecek.'**
  String get homeCalendarNoAgency;

  /// No description provided for @homeCalendarNotFound.
  ///
  /// In tr, this message translates to:
  /// **'Takvim bilgisi bulunamadı'**
  String get homeCalendarNotFound;

  /// No description provided for @homeCallAgency.
  ///
  /// In tr, this message translates to:
  /// **'Acenteyi Ara'**
  String get homeCallAgency;

  /// No description provided for @homeChecking.
  ///
  /// In tr, this message translates to:
  /// **'Kontrol ediliyor...'**
  String get homeChecking;

  /// No description provided for @homeContactAgencyHint.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen acente ile iletişime geçin.'**
  String get homeContactAgencyHint;

  /// No description provided for @homeContactGuide.
  ///
  /// In tr, this message translates to:
  /// **'Rehberle İletişim'**
  String get homeContactGuide;

  /// No description provided for @homeContactGuideSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Rehberinizle iletişim kurun'**
  String get homeContactGuideSubtitle;

  /// No description provided for @homeCountdownDays.
  ///
  /// In tr, this message translates to:
  /// **'Gün'**
  String get homeCountdownDays;

  /// No description provided for @homeCountdownHours.
  ///
  /// In tr, this message translates to:
  /// **'Saat'**
  String get homeCountdownHours;

  /// No description provided for @homeCountdownMinutes.
  ///
  /// In tr, this message translates to:
  /// **'Dakika'**
  String get homeCountdownMinutes;

  /// No description provided for @homeCountdownSeconds.
  ///
  /// In tr, this message translates to:
  /// **'Saniye'**
  String get homeCountdownSeconds;

  /// No description provided for @homeCurrencySar.
  ///
  /// In tr, this message translates to:
  /// **'Suudi Riyali'**
  String get homeCurrencySar;

  /// No description provided for @homeCurrencyTry.
  ///
  /// In tr, this message translates to:
  /// **'Türk Lirası'**
  String get homeCurrencyTry;

  /// No description provided for @homeDayN.
  ///
  /// In tr, this message translates to:
  /// **'{day}. Gün'**
  String homeDayN(int day);

  /// No description provided for @homeDaysLeftLabel.
  ///
  /// In tr, this message translates to:
  /// **'gün kaldı'**
  String get homeDaysLeftLabel;

  /// No description provided for @homeDhikrSection.
  ///
  /// In tr, this message translates to:
  /// **'Zikir'**
  String get homeDhikrSection;

  /// No description provided for @homeDownloadContent.
  ///
  /// In tr, this message translates to:
  /// **'İçerik indir'**
  String get homeDownloadContent;

  /// No description provided for @homeDuaQuoteCallUpon.
  ///
  /// In tr, this message translates to:
  /// **'Rabbiniz şöyle dedi: Bana dua edin, size karşılık vereyim.'**
  String get homeDuaQuoteCallUpon;

  /// No description provided for @homeDuaQuoteHearts.
  ///
  /// In tr, this message translates to:
  /// **'Bilesiniz ki kalpler ancak Allah\'ı anmakla huzur bulur.'**
  String get homeDuaQuoteHearts;

  /// No description provided for @homeDuaQuoteNear.
  ///
  /// In tr, this message translates to:
  /// **'Kullarım sana beni sorarlarsa, bilsinler ki ben onlara çok yakınım. Bana dua edince, dua edenin duasına cevap veririm.'**
  String get homeDuaQuoteNear;

  /// No description provided for @homeDuaQuoteRemember.
  ///
  /// In tr, this message translates to:
  /// **'Öyleyse yalnız beni anın ki ben de sizi anayım.'**
  String get homeDuaQuoteRemember;

  /// No description provided for @homeDuasQuranSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Okumak ve dinlemek için tıklayın'**
  String get homeDuasQuranSubtitle;

  /// No description provided for @homeDuasSai.
  ///
  /// In tr, this message translates to:
  /// **'Sa\'y Duaları'**
  String get homeDuasSai;

  /// No description provided for @homeDuasSaiSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Safa ile Merve arası okumak için tıklayın'**
  String get homeDuasSaiSubtitle;

  /// No description provided for @homeDuasTawaf.
  ///
  /// In tr, this message translates to:
  /// **'Tavaf Duaları'**
  String get homeDuasTawaf;

  /// No description provided for @homeDuasTitle.
  ///
  /// In tr, this message translates to:
  /// **'Dualar ve Kuran-ı Kerim'**
  String get homeDuasTitle;

  /// No description provided for @homeDuasUmrahSection.
  ///
  /// In tr, this message translates to:
  /// **'Umre Duaları'**
  String get homeDuasUmrahSection;

  /// No description provided for @homeDurationH.
  ///
  /// In tr, this message translates to:
  /// **'{hours} sa'**
  String homeDurationH(int hours);

  /// No description provided for @homeDurationHM.
  ///
  /// In tr, this message translates to:
  /// **'{hours} sa {minutes} dk'**
  String homeDurationHM(int hours, int minutes);

  /// No description provided for @homeDurationM.
  ///
  /// In tr, this message translates to:
  /// **'{minutes} dk'**
  String homeDurationM(int minutes);

  /// No description provided for @homeEventDone.
  ///
  /// In tr, this message translates to:
  /// **'Gerçekleşti'**
  String get homeEventDone;

  /// No description provided for @homeEventUpcoming.
  ///
  /// In tr, this message translates to:
  /// **'Yaklaşan'**
  String get homeEventUpcoming;

  /// No description provided for @homeEventsLoadError.
  ///
  /// In tr, this message translates to:
  /// **'Etkinlikler yüklenemedi. İnternet bağlantınızı kontrol edip tekrar deneyin.'**
  String get homeEventsLoadError;

  /// No description provided for @homeFixPermission.
  ///
  /// In tr, this message translates to:
  /// **'İzni Düzelt'**
  String get homeFixPermission;

  /// No description provided for @homeGender.
  ///
  /// In tr, this message translates to:
  /// **'Cinsiyet'**
  String get homeGender;

  /// No description provided for @homeGenderFemale.
  ///
  /// In tr, this message translates to:
  /// **'Kadın'**
  String get homeGenderFemale;

  /// No description provided for @homeGenderMale.
  ///
  /// In tr, this message translates to:
  /// **'Erkek'**
  String get homeGenderMale;

  /// No description provided for @homeGreeting.
  ///
  /// In tr, this message translates to:
  /// **'Selamün Aleyküm'**
  String get homeGreeting;

  /// No description provided for @homeGuest.
  ///
  /// In tr, this message translates to:
  /// **'Misafir'**
  String get homeGuest;

  /// No description provided for @homeGuide.
  ///
  /// In tr, this message translates to:
  /// **'Rehber'**
  String get homeGuide;

  /// No description provided for @homeGuideLocation.
  ///
  /// In tr, this message translates to:
  /// **'Rehberin Konumu'**
  String get homeGuideLocation;

  /// No description provided for @homeHotelInfo.
  ///
  /// In tr, this message translates to:
  /// **'Otel Bilgileri'**
  String get homeHotelInfo;

  /// No description provided for @homeHoursAgo.
  ///
  /// In tr, this message translates to:
  /// **'{count} sa önce'**
  String homeHoursAgo(int count);

  /// No description provided for @homeJustNow.
  ///
  /// In tr, this message translates to:
  /// **'Az önce'**
  String get homeJustNow;

  /// No description provided for @homeLastSent.
  ///
  /// In tr, this message translates to:
  /// **'Son gönderim: {when}'**
  String homeLastSent(String when);

  /// No description provided for @homeLastUpdate.
  ///
  /// In tr, this message translates to:
  /// **'Son güncelleme: {date}'**
  String homeLastUpdate(String date);

  /// No description provided for @homeLocationAllow.
  ///
  /// In tr, this message translates to:
  /// **'Konum İznine İzin Ver'**
  String get homeLocationAllow;

  /// No description provided for @homeLocationBackgroundWarning.
  ///
  /// In tr, this message translates to:
  /// **'Arka plan konum izni yok: ekran kapalıyken konum seyrek ve yanlış güncellenir. Ayarlar > İzinler > Konum bölümünden \"Her zaman izin ver\"i seçin.'**
  String get homeLocationBackgroundWarning;

  /// No description provided for @homeLocationBeingShared.
  ///
  /// In tr, this message translates to:
  /// **'Konumunuz paylaşılıyor'**
  String get homeLocationBeingShared;

  /// No description provided for @homeLocationGpsOff.
  ///
  /// In tr, this message translates to:
  /// **'Telefonun konum servisi (GPS) kapalı'**
  String get homeLocationGpsOff;

  /// No description provided for @homeLocationPermissionDenied.
  ///
  /// In tr, this message translates to:
  /// **'Konum izni verilmedi'**
  String get homeLocationPermissionDenied;

  /// No description provided for @homeLocationReceived.
  ///
  /// In tr, this message translates to:
  /// **'Konum alındı'**
  String get homeLocationReceived;

  /// No description provided for @homeLocationReducedWarning.
  ///
  /// In tr, this message translates to:
  /// **'\"Yaklaşık konum\" açık: konumunuz birkaç yüz metre ile birkaç km arasında sapabilir. Ayarlar > İzinler > Konum bölümünden \"Tam konum kullan\"ı açın.'**
  String get homeLocationReducedWarning;

  /// No description provided for @homeLocationServiceStarting.
  ///
  /// In tr, this message translates to:
  /// **'Paylaşım açık, servis başlatılıyor...'**
  String get homeLocationServiceStarting;

  /// No description provided for @homeLocationSharing.
  ///
  /// In tr, this message translates to:
  /// **'Konum Paylaşımı'**
  String get homeLocationSharing;

  /// No description provided for @homeLocationSharingDesc.
  ///
  /// In tr, this message translates to:
  /// **'Açıkken konumunuz uygulama kapalıyken de rehberinizle paylaşılır.'**
  String get homeLocationSharingDesc;

  /// No description provided for @homeLocationSharingDisabled.
  ///
  /// In tr, this message translates to:
  /// **'Paylaşım kapalı'**
  String get homeLocationSharingDisabled;

  /// No description provided for @homeLocationSharingOff.
  ///
  /// In tr, this message translates to:
  /// **'Konum paylaşımı kapatıldı'**
  String get homeLocationSharingOff;

  /// No description provided for @homeLocationSharingOn.
  ///
  /// In tr, this message translates to:
  /// **'Konum paylaşımı açıldı'**
  String get homeLocationSharingOn;

  /// No description provided for @homeLocationStart.
  ///
  /// In tr, this message translates to:
  /// **'Konum Takibini Başlat'**
  String get homeLocationStart;

  /// No description provided for @homeLocationStartHint.
  ///
  /// In tr, this message translates to:
  /// **'Rehberiniz konumunuzu görebilsin'**
  String get homeLocationStartHint;

  /// No description provided for @homeLocationStop.
  ///
  /// In tr, this message translates to:
  /// **'Konum Takibini Durdur'**
  String get homeLocationStop;

  /// No description provided for @homeLocationTracking.
  ///
  /// In tr, this message translates to:
  /// **'Konum Takibi'**
  String get homeLocationTracking;

  /// No description provided for @homeLogout.
  ///
  /// In tr, this message translates to:
  /// **'Çıkış Yap'**
  String get homeLogout;

  /// No description provided for @homeLogoutConfirm.
  ///
  /// In tr, this message translates to:
  /// **'Hesabınızdan çıkış yapmak istediğinize emin misiniz?'**
  String get homeLogoutConfirm;

  /// No description provided for @homeLogoutFailed.
  ///
  /// In tr, this message translates to:
  /// **'Çıkış yapılamadı. Lütfen tekrar deneyin.'**
  String get homeLogoutFailed;

  /// No description provided for @homeMinutesAgo.
  ///
  /// In tr, this message translates to:
  /// **'{count} dk önce'**
  String homeMinutesAgo(int count);

  /// No description provided for @homeNext.
  ///
  /// In tr, this message translates to:
  /// **'Sonraki'**
  String get homeNext;

  /// No description provided for @homeNoActiveTrip.
  ///
  /// In tr, this message translates to:
  /// **'Aktif bir seferiniz bulunmuyor'**
  String get homeNoActiveTrip;

  /// No description provided for @homeNoEventsHint.
  ///
  /// In tr, this message translates to:
  /// **'Başka bir gün seçerek etkinlikleri görüntüleyin'**
  String get homeNoEventsHint;

  /// No description provided for @homeNoEventsToday.
  ///
  /// In tr, this message translates to:
  /// **'Bu gün için etkinlik yok'**
  String get homeNoEventsToday;

  /// No description provided for @homeNoManagerForTrip.
  ///
  /// In tr, this message translates to:
  /// **'Bu sefere henüz yönetici atanmamış'**
  String get homeNoManagerForTrip;

  /// No description provided for @homeNoName.
  ///
  /// In tr, this message translates to:
  /// **'İsim bilgisi yok'**
  String get homeNoName;

  /// No description provided for @homeNoNotifications.
  ///
  /// In tr, this message translates to:
  /// **'Henüz bildirim yok.'**
  String get homeNoNotifications;

  /// No description provided for @homeNoNotificationsHint.
  ///
  /// In tr, this message translates to:
  /// **'Rehberinizin duyuruları burada görünecek.'**
  String get homeNoNotificationsHint;

  /// No description provided for @homeNoPhone.
  ///
  /// In tr, this message translates to:
  /// **'Telefon bilgisi yok'**
  String get homeNoPhone;

  /// No description provided for @homeNotYet.
  ///
  /// In tr, this message translates to:
  /// **'henüz yok'**
  String get homeNotYet;

  /// No description provided for @homeNotificationsLoadError.
  ///
  /// In tr, this message translates to:
  /// **'Bildirimler yüklenemedi.'**
  String get homeNotificationsLoadError;

  /// No description provided for @homeNotificationsTitle.
  ///
  /// In tr, this message translates to:
  /// **'Bildirimler'**
  String get homeNotificationsTitle;

  /// No description provided for @homeOfflineMode.
  ///
  /// In tr, this message translates to:
  /// **'Çevrimdışı mod'**
  String get homeOfflineMode;

  /// No description provided for @homeOpenBigMap.
  ///
  /// In tr, this message translates to:
  /// **'Büyük haritada aç ve yol tarifi al'**
  String get homeOpenBigMap;

  /// No description provided for @homePersonal.
  ///
  /// In tr, this message translates to:
  /// **'Size özel'**
  String get homePersonal;

  /// No description provided for @homePersonalInfo.
  ///
  /// In tr, this message translates to:
  /// **'Kişisel Bilgiler'**
  String get homePersonalInfo;

  /// No description provided for @homePhaseDone.
  ///
  /// In tr, this message translates to:
  /// **'Tamamlandı'**
  String get homePhaseDone;

  /// No description provided for @homePhaseNone.
  ///
  /// In tr, this message translates to:
  /// **'Planlanmadı'**
  String get homePhaseNone;

  /// No description provided for @homePhaseOngoing.
  ///
  /// In tr, this message translates to:
  /// **'Devam ediyor'**
  String get homePhaseOngoing;

  /// No description provided for @homePhaseUpcoming.
  ///
  /// In tr, this message translates to:
  /// **'Yaklaşıyor'**
  String get homePhaseUpcoming;

  /// No description provided for @homePhone.
  ///
  /// In tr, this message translates to:
  /// **'Telefon'**
  String get homePhone;

  /// No description provided for @homePhoneOpenFailed.
  ///
  /// In tr, this message translates to:
  /// **'Telefon açılamadı'**
  String get homePhoneOpenFailed;

  /// No description provided for @homePickDay.
  ///
  /// In tr, this message translates to:
  /// **'Gün Seç'**
  String get homePickDay;

  /// No description provided for @homePrayerAsr.
  ///
  /// In tr, this message translates to:
  /// **'İkindi'**
  String get homePrayerAsr;

  /// No description provided for @homePrayerDhuhr.
  ///
  /// In tr, this message translates to:
  /// **'Öğle'**
  String get homePrayerDhuhr;

  /// No description provided for @homePrayerFajr.
  ///
  /// In tr, this message translates to:
  /// **'İmsak'**
  String get homePrayerFajr;

  /// No description provided for @homePrayerIsha.
  ///
  /// In tr, this message translates to:
  /// **'Yatsı'**
  String get homePrayerIsha;

  /// No description provided for @homePrayerMaghrib.
  ///
  /// In tr, this message translates to:
  /// **'Akşam'**
  String get homePrayerMaghrib;

  /// No description provided for @homePrayerSunrise.
  ///
  /// In tr, this message translates to:
  /// **'Güneş'**
  String get homePrayerSunrise;

  /// No description provided for @homePrevious.
  ///
  /// In tr, this message translates to:
  /// **'Önceki'**
  String get homePrevious;

  /// No description provided for @homeProfileTitle.
  ///
  /// In tr, this message translates to:
  /// **'Profil'**
  String get homeProfileTitle;

  /// No description provided for @homeProgramCalendar.
  ///
  /// In tr, this message translates to:
  /// **'Program Takvimi'**
  String get homeProgramCalendar;

  /// No description provided for @homeProgramDay.
  ///
  /// In tr, this message translates to:
  /// **'Programın {day}. günü • toplam {total} gün'**
  String homeProgramDay(int day, int total);

  /// No description provided for @homeQuickDuas.
  ///
  /// In tr, this message translates to:
  /// **'Dualar'**
  String get homeQuickDuas;

  /// No description provided for @homeQuickPlaces.
  ///
  /// In tr, this message translates to:
  /// **'Gezilecek Yerler'**
  String get homeQuickPlaces;

  /// No description provided for @homeQuickQibla.
  ///
  /// In tr, this message translates to:
  /// **'Kıble'**
  String get homeQuickQibla;

  /// No description provided for @homeQuickQuran.
  ///
  /// In tr, this message translates to:
  /// **'Kur\'an-ı Kerim'**
  String get homeQuickQuran;

  /// No description provided for @homeQuickShops.
  ///
  /// In tr, this message translates to:
  /// **'Anlaşmalı Dükkanlar'**
  String get homeQuickShops;

  /// No description provided for @homeQuoteAcceptFromUs.
  ///
  /// In tr, this message translates to:
  /// **'Rabbimiz! Bizden kabul buyur. Şüphesiz sen hakkıyla işitensin, hakkıyla bilensin.'**
  String get homeQuoteAcceptFromUs;

  /// No description provided for @homeQuoteCompleteHajj.
  ///
  /// In tr, this message translates to:
  /// **'Haccı ve umreyi Allah için tamamlayın.'**
  String get homeQuoteCompleteHajj;

  /// No description provided for @homeQuoteRamadanUmrah.
  ///
  /// In tr, this message translates to:
  /// **'Ramazan ayında yapılan umre, bir hacca denktir.'**
  String get homeQuoteRamadanUmrah;

  /// No description provided for @homeQuoteSafaMarwah.
  ///
  /// In tr, this message translates to:
  /// **'Şüphesiz Safa ile Merve Allah\'ın nişanelerindendir.'**
  String get homeQuoteSafaMarwah;

  /// No description provided for @homeQuoteUmrahExpiation.
  ///
  /// In tr, this message translates to:
  /// **'Bir umre, diğer umreye kadar arada işlenen günahlara kefarettir.'**
  String get homeQuoteUmrahExpiation;

  /// No description provided for @homeRatesError.
  ///
  /// In tr, this message translates to:
  /// **'Döviz kurları alınamadı. İnternet bağlantınızı kontrol edin.'**
  String get homeRatesError;

  /// No description provided for @homeRatesLive.
  ///
  /// In tr, this message translates to:
  /// **'Canlı kur'**
  String get homeRatesLive;

  /// No description provided for @homeRefresh.
  ///
  /// In tr, this message translates to:
  /// **'Yenile'**
  String get homeRefresh;

  /// No description provided for @homeRegistrationDate.
  ///
  /// In tr, this message translates to:
  /// **'Kayıt Tarihi'**
  String get homeRegistrationDate;

  /// No description provided for @homeRoom.
  ///
  /// In tr, this message translates to:
  /// **'Oda {room}'**
  String homeRoom(String room);

  /// No description provided for @homeRoomCapacity.
  ///
  /// In tr, this message translates to:
  /// **'({count} kişilik)'**
  String homeRoomCapacity(int count);

  /// No description provided for @homeRoomInfo.
  ///
  /// In tr, this message translates to:
  /// **'Oda Bilgileri'**
  String get homeRoomInfo;

  /// No description provided for @homeSavedDhikrs.
  ///
  /// In tr, this message translates to:
  /// **'Kayıtlı Zikirlerim'**
  String get homeSavedDhikrs;

  /// No description provided for @homeSavedDhikrsSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Kaldığınız yerden devam edin'**
  String get homeSavedDhikrsSubtitle;

  /// No description provided for @homeSectionCurrency.
  ///
  /// In tr, this message translates to:
  /// **'Döviz'**
  String get homeSectionCurrency;

  /// No description provided for @homeSectionJourney.
  ///
  /// In tr, this message translates to:
  /// **'Kutsal Yolculuk Vakti'**
  String get homeSectionJourney;

  /// No description provided for @homeSectionPrayerTimes.
  ///
  /// In tr, this message translates to:
  /// **'Ezan Vakitleri'**
  String get homeSectionPrayerTimes;

  /// No description provided for @homeSectionQuickAccess.
  ///
  /// In tr, this message translates to:
  /// **'Hızlı Erişim'**
  String get homeSectionQuickAccess;

  /// No description provided for @homeSendMessage.
  ///
  /// In tr, this message translates to:
  /// **'Mesaj gönder'**
  String get homeSendMessage;

  /// No description provided for @homeSomethingWrong.
  ///
  /// In tr, this message translates to:
  /// **'Bir sorun oluştu'**
  String get homeSomethingWrong;

  /// No description provided for @homeSourceBaqarah127.
  ///
  /// In tr, this message translates to:
  /// **'Bakara Suresi, 127'**
  String get homeSourceBaqarah127;

  /// No description provided for @homeSourceBaqarah152Short.
  ///
  /// In tr, this message translates to:
  /// **'Bakara 2/152'**
  String get homeSourceBaqarah152Short;

  /// No description provided for @homeSourceBaqarah158.
  ///
  /// In tr, this message translates to:
  /// **'Bakara Suresi, 158'**
  String get homeSourceBaqarah158;

  /// No description provided for @homeSourceBaqarah186Short.
  ///
  /// In tr, this message translates to:
  /// **'Bakara 2/186'**
  String get homeSourceBaqarah186Short;

  /// No description provided for @homeSourceBaqarah196.
  ///
  /// In tr, this message translates to:
  /// **'Bakara Suresi, 196'**
  String get homeSourceBaqarah196;

  /// No description provided for @homeSourceBaqarah196Short.
  ///
  /// In tr, this message translates to:
  /// **'Bakara 2/196'**
  String get homeSourceBaqarah196Short;

  /// No description provided for @homeSourceBukhari.
  ///
  /// In tr, this message translates to:
  /// **'Hadis-i Şerif (Buhârî)'**
  String get homeSourceBukhari;

  /// No description provided for @homeSourceGhafir60Short.
  ///
  /// In tr, this message translates to:
  /// **'Mü\'min 40/60'**
  String get homeSourceGhafir60Short;

  /// No description provided for @homeSourceRad28Short.
  ///
  /// In tr, this message translates to:
  /// **'Ra\'d 13/28'**
  String get homeSourceRad28Short;

  /// No description provided for @homeTapToRead.
  ///
  /// In tr, this message translates to:
  /// **'Okumak için tıklayın'**
  String get homeTapToRead;

  /// No description provided for @homeTasbihCounter.
  ///
  /// In tr, this message translates to:
  /// **'Zikirmatik'**
  String get homeTasbihCounter;

  /// No description provided for @homeTasbihSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Zikir çekmek için tıklayın'**
  String get homeTasbihSubtitle;

  /// No description provided for @homeTcNo.
  ///
  /// In tr, this message translates to:
  /// **'T.C. Kimlik No'**
  String get homeTcNo;

  /// No description provided for @homeTechSupportInfo.
  ///
  /// In tr, this message translates to:
  /// **'Teknik Servis Bilgileri'**
  String get homeTechSupportInfo;

  /// No description provided for @homeToday.
  ///
  /// In tr, this message translates to:
  /// **'Bugün'**
  String get homeToday;

  /// No description provided for @homeTripAccepted.
  ///
  /// In tr, this message translates to:
  /// **'Allah teâlâ kabul eylesin!'**
  String get homeTripAccepted;

  /// No description provided for @homeTripNotDefined.
  ///
  /// In tr, this message translates to:
  /// **'Sefer bilgisi henüz tanımlanmadı.'**
  String get homeTripNotDefined;

  /// No description provided for @homeTripOf.
  ///
  /// In tr, this message translates to:
  /// **'{city} Seferi'**
  String homeTripOf(String city);

  /// No description provided for @homeUmrahInfo.
  ///
  /// In tr, this message translates to:
  /// **'Umre Bilgileri'**
  String get homeUmrahInfo;

  /// No description provided for @homeUnknown.
  ///
  /// In tr, this message translates to:
  /// **'Bilinmeyen'**
  String get homeUnknown;

  /// No description provided for @homeUpdatedDaysAgo.
  ///
  /// In tr, this message translates to:
  /// **'{count} gün önce güncellendi'**
  String homeUpdatedDaysAgo(int count);

  /// No description provided for @homeUpdatedHoursAgo.
  ///
  /// In tr, this message translates to:
  /// **'{count} saat önce güncellendi'**
  String homeUpdatedHoursAgo(int count);

  /// No description provided for @homeUpdatedJustNow.
  ///
  /// In tr, this message translates to:
  /// **'Az önce güncellendi'**
  String get homeUpdatedJustNow;

  /// No description provided for @homeUpdatedMinutesAgo.
  ///
  /// In tr, this message translates to:
  /// **'{count} dk önce güncellendi'**
  String homeUpdatedMinutesAgo(int count);

  /// No description provided for @homeUserNotFound.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı bilgisi bulunamadı'**
  String get homeUserNotFound;

  /// No description provided for @homeUserTypeAdmin.
  ///
  /// In tr, this message translates to:
  /// **'Yönetici'**
  String get homeUserTypeAdmin;

  /// No description provided for @homeUserTypePilgrim.
  ///
  /// In tr, this message translates to:
  /// **'Umre Ziyaretçisi'**
  String get homeUserTypePilgrim;

  /// No description provided for @homeUserTypeSuperAdmin.
  ///
  /// In tr, this message translates to:
  /// **'Süper Yönetici'**
  String get homeUserTypeSuperAdmin;

  /// No description provided for @homeWaitingGuideLocation.
  ///
  /// In tr, this message translates to:
  /// **'Rehber konumu bekleniyor...'**
  String get homeWaitingGuideLocation;

  /// No description provided for @homeWhatsAppOpenFailed.
  ///
  /// In tr, this message translates to:
  /// **'WhatsApp açılamadı'**
  String get homeWhatsAppOpenFailed;

  /// No description provided for @homeYourGuide.
  ///
  /// In tr, this message translates to:
  /// **'Rehberiniz'**
  String get homeYourGuide;

  /// No description provided for @infoBadgeSoon.
  ///
  /// In tr, this message translates to:
  /// **'Yakında'**
  String get infoBadgeSoon;

  /// No description provided for @infoCardContactGuide.
  ///
  /// In tr, this message translates to:
  /// **'Rehberle İletişime Geç'**
  String get infoCardContactGuide;

  /// No description provided for @infoCardHotels.
  ///
  /// In tr, this message translates to:
  /// **'Otel ve Restoranlar'**
  String get infoCardHotels;

  /// No description provided for @infoCardHotelsSub.
  ///
  /// In tr, this message translates to:
  /// **'Harem çevresindeki oteller ve yeme-içme yerleri.'**
  String get infoCardHotelsSub;

  /// No description provided for @infoCardIhram.
  ///
  /// In tr, this message translates to:
  /// **'İhram Yasakları'**
  String get infoCardIhram;

  /// No description provided for @infoCardMiqat.
  ///
  /// In tr, this message translates to:
  /// **'Mikat Mahalleri'**
  String get infoCardMiqat;

  /// No description provided for @infoCardMiqatSub.
  ///
  /// In tr, this message translates to:
  /// **'Beş mikat, uzaklıkları ve harita konumları.'**
  String get infoCardMiqatSub;

  /// No description provided for @infoCardNeedList.
  ///
  /// In tr, this message translates to:
  /// **'İhtiyaç Listesi'**
  String get infoCardNeedList;

  /// No description provided for @infoCardNeedListSub.
  ///
  /// In tr, this message translates to:
  /// **'Bavulunuzu hazırlarken işaretleyin.'**
  String get infoCardNeedListSub;

  /// No description provided for @infoCardPedometer.
  ///
  /// In tr, this message translates to:
  /// **'Adım Sayar'**
  String get infoCardPedometer;

  /// No description provided for @infoCardPedometerSub.
  ///
  /// In tr, this message translates to:
  /// **'Günlük adım sayınızı takip edin.'**
  String get infoCardPedometerSub;

  /// No description provided for @infoCardPlaces.
  ///
  /// In tr, this message translates to:
  /// **'Gezilecek Yerler'**
  String get infoCardPlaces;

  /// No description provided for @infoCardRouteSim.
  ///
  /// In tr, this message translates to:
  /// **'Rota Simülasyonu'**
  String get infoCardRouteSim;

  /// No description provided for @infoCardRouteSimSub.
  ///
  /// In tr, this message translates to:
  /// **'Mikattan tıraşa umre adımları haritada.'**
  String get infoCardRouteSimSub;

  /// No description provided for @infoCardTawafSim.
  ///
  /// In tr, this message translates to:
  /// **'Tavaf Simülasyonu'**
  String get infoCardTawafSim;

  /// No description provided for @infoCardTawafSimSub.
  ///
  /// In tr, this message translates to:
  /// **'Kâbe çevresinde 7 şavt, istilam ve dualar.'**
  String get infoCardTawafSimSub;

  /// No description provided for @infoCardTechSupport.
  ///
  /// In tr, this message translates to:
  /// **'Teknik Servis Bilgileri'**
  String get infoCardTechSupport;

  /// No description provided for @infoCardTravelGuide.
  ///
  /// In tr, this message translates to:
  /// **'Seyahat Rehberi'**
  String get infoCardTravelGuide;

  /// No description provided for @infoCardTravelGuideSub.
  ///
  /// In tr, this message translates to:
  /// **'Vize, sağlık, para, ulaşım ve önemli telefonlar.'**
  String get infoCardTravelGuideSub;

  /// No description provided for @infoCheckBeforeTravel.
  ///
  /// In tr, this message translates to:
  /// **'Yola çıkmadan önce güncelliğini kontrol edin.'**
  String get infoCheckBeforeTravel;

  /// No description provided for @infoCouldNotOpen.
  ///
  /// In tr, this message translates to:
  /// **'Açılamadı.'**
  String get infoCouldNotOpen;

  /// No description provided for @infoDirections.
  ///
  /// In tr, this message translates to:
  /// **'Yol tarifi'**
  String get infoDirections;

  /// No description provided for @infoDistanceKm.
  ///
  /// In tr, this message translates to:
  /// **'~{km} km'**
  String infoDistanceKm(String km);

  /// No description provided for @infoDistanceM.
  ///
  /// In tr, this message translates to:
  /// **'~{meters} m'**
  String infoDistanceM(int meters);

  /// No description provided for @infoEmail.
  ///
  /// In tr, this message translates to:
  /// **'E-posta'**
  String get infoEmail;

  /// No description provided for @infoFilterAll.
  ///
  /// In tr, this message translates to:
  /// **'Tümü'**
  String get infoFilterAll;

  /// No description provided for @infoFilterFood.
  ///
  /// In tr, this message translates to:
  /// **'Yeme-içme'**
  String get infoFilterFood;

  /// No description provided for @infoFilterHotels.
  ///
  /// In tr, this message translates to:
  /// **'Oteller'**
  String get infoFilterHotels;

  /// No description provided for @infoGeneralTitle.
  ///
  /// In tr, this message translates to:
  /// **'Genel Bilgiler'**
  String get infoGeneralTitle;

  /// No description provided for @infoGuide911Note.
  ///
  /// In tr, this message translates to:
  /// **'911, Mekke dahil bazı bölgelerde birleşik acil çağrı hattı olarak çalışır.'**
  String get infoGuide911Note;

  /// No description provided for @infoGuideJeddahConsulate.
  ///
  /// In tr, this message translates to:
  /// **'T.C. Cidde Başkonsolosluğu'**
  String get infoGuideJeddahConsulate;

  /// No description provided for @infoGuideMfa.
  ///
  /// In tr, this message translates to:
  /// **'Dışişleri Bakanlığı'**
  String get infoGuideMfa;

  /// No description provided for @infoGuidePhonesSub.
  ///
  /// In tr, this message translates to:
  /// **'Suudi acil hatları, Türk temsilcilikleri'**
  String get infoGuidePhonesSub;

  /// No description provided for @infoGuidePhonesTitle.
  ///
  /// In tr, this message translates to:
  /// **'Önemli Telefonlar'**
  String get infoGuidePhonesTitle;

  /// No description provided for @infoGuideRiyadhEmbassy.
  ///
  /// In tr, this message translates to:
  /// **'T.C. Riyad Büyükelçiliği'**
  String get infoGuideRiyadhEmbassy;

  /// No description provided for @infoGuideRulesWarning.
  ///
  /// In tr, this message translates to:
  /// **'Suudi Arabistan vize, izin ve sağlık kurallarını sık günceller. Bu sayfadaki kurallar Kasım 2026 itibarıyla resmî kaynaklardan derlenmiştir. Kafilenizin ve Diyanet\'in duyurularını esas alın.'**
  String get infoGuideRulesWarning;

  /// No description provided for @infoGuideSaudiEmergency.
  ///
  /// In tr, this message translates to:
  /// **'Suudi Arabistan acil'**
  String get infoGuideSaudiEmergency;

  /// No description provided for @infoGuideSources.
  ///
  /// In tr, this message translates to:
  /// **'Kaynaklar: Suudi Sağlık Bakanlığı (moh.gov.sa), visa.visitsaudi.com, Nusuk, Diyanet İşleri Başkanlığı, Haremeyn Hızlı Treni (sar.hhr.sa), T.C. Dışişleri Bakanlığı (mfa.gov.tr).'**
  String get infoGuideSources;

  /// No description provided for @infoHotelsFootnoteMecca.
  ///
  /// In tr, this message translates to:
  /// **'Mesafeler Kâbe\'ye kuş uçuşudur; yürüme süresi kalabalığa ve girilen kapıya göre değişir. Konumlar OpenStreetMap\'ten alınmıştır. Fiyat ve müsaitlik için otelle iletişime geçin.'**
  String get infoHotelsFootnoteMecca;

  /// No description provided for @infoHotelsFootnoteMedina.
  ///
  /// In tr, this message translates to:
  /// **'Mesafeler Mescid-i Nebevî\'ye kuş uçuşudur; yürüme süresi kalabalığa ve girilen kapıya göre değişir. Konumlar OpenStreetMap\'ten alınmıştır. Fiyat ve müsaitlik için otelle iletişime geçin.'**
  String get infoHotelsFootnoteMedina;

  /// No description provided for @infoIhramHeader.
  ///
  /// In tr, this message translates to:
  /// **'İhrama girdikten sonra ihramdan çıkıncaya kadar aşağıdaki davranışlar yasaktır.'**
  String get infoIhramHeader;

  /// No description provided for @infoKaaba.
  ///
  /// In tr, this message translates to:
  /// **'Kâbe'**
  String get infoKaaba;

  /// No description provided for @infoMapCouldNotOpen.
  ///
  /// In tr, this message translates to:
  /// **'Harita açılamadı.'**
  String get infoMapCouldNotOpen;

  /// No description provided for @infoMapOpenFailed.
  ///
  /// In tr, this message translates to:
  /// **'Harita uygulaması açılamadı.'**
  String get infoMapOpenFailed;

  /// No description provided for @infoMeccaKaaba.
  ///
  /// In tr, this message translates to:
  /// **'Mekke (Kâbe)'**
  String get infoMeccaKaaba;

  /// No description provided for @infoMiqatAlignNote.
  ///
  /// In tr, this message translates to:
  /// **'Mikat noktasının kendisinde değil, hizasında da ihrama girilebilir. Mesafeler yola göre değiştiği için kaynaklarda farklı rakamlar geçebilir.'**
  String get infoMiqatAlignNote;

  /// No description provided for @infoMiqatAsCrowFlies.
  ///
  /// In tr, this message translates to:
  /// **'Kuş uçuşu {distance}'**
  String infoMiqatAsCrowFlies(String distance);

  /// No description provided for @infoMiqatFive.
  ///
  /// In tr, this message translates to:
  /// **'Beş mikat'**
  String get infoMiqatFive;

  /// No description provided for @infoMiqatFlightNote.
  ///
  /// In tr, this message translates to:
  /// **'Türkiye\'den uçakla doğrudan Cidde\'ye gidenler, uçakta mikat hizasına gelmeden ihrama girer. Erkekler ihram örtülerini uçağa binmeden giyebilir; niyet ve telbiye, rehberin/kabin ekibinin duyurusuyla mikat hizasından önce yapılır.'**
  String get infoMiqatFlightNote;

  /// No description provided for @infoMiqatForWhom.
  ///
  /// In tr, this message translates to:
  /// **'Kimler için:'**
  String get infoMiqatForWhom;

  /// No description provided for @infoMiqatRoad.
  ///
  /// In tr, this message translates to:
  /// **'Yol: {distance}'**
  String infoMiqatRoad(String distance);

  /// No description provided for @infoMiqatSource.
  ///
  /// In tr, this message translates to:
  /// **'Kaynak: TDV İslâm Ansiklopedisi, \"Mîkāt\" maddesi. Konumlar: OpenStreetMap.'**
  String get infoMiqatSource;

  /// No description provided for @infoNeedAdd.
  ///
  /// In tr, this message translates to:
  /// **'Ekle'**
  String get infoNeedAdd;

  /// No description provided for @infoNeedAddItem.
  ///
  /// In tr, this message translates to:
  /// **'Madde ekle'**
  String get infoNeedAddItem;

  /// No description provided for @infoNeedAddYourOwn.
  ///
  /// In tr, this message translates to:
  /// **'Kendi maddenizi ekleyin'**
  String get infoNeedAddYourOwn;

  /// No description provided for @infoNeedAllReady.
  ///
  /// In tr, this message translates to:
  /// **'Bavulunuz hazır. Hayırlı yolculuklar!'**
  String get infoNeedAllReady;

  /// No description provided for @infoNeedCategory.
  ///
  /// In tr, this message translates to:
  /// **'Kategori'**
  String get infoNeedCategory;

  /// No description provided for @infoNeedDisclaimer.
  ///
  /// In tr, this message translates to:
  /// **'Bu liste genel bir öneridir; kafilenizin ve Diyanet\'in güncel duyurularını da kontrol edin.'**
  String get infoNeedDisclaimer;

  /// No description provided for @infoNeedEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Henüz madde yok. \"Madde ekle\" ile ekleyebilirsiniz.'**
  String get infoNeedEmpty;

  /// No description provided for @infoNeedItemDeleted.
  ///
  /// In tr, this message translates to:
  /// **'\"{item}\" silindi.'**
  String infoNeedItemDeleted(String item);

  /// No description provided for @infoNeedItemExample.
  ///
  /// In tr, this message translates to:
  /// **'Ör. Yedek gözlük'**
  String get infoNeedItemExample;

  /// No description provided for @infoNeedItemName.
  ///
  /// In tr, this message translates to:
  /// **'Madde adı'**
  String get infoNeedItemName;

  /// No description provided for @infoNeedListTitle.
  ///
  /// In tr, this message translates to:
  /// **'İhtiyaç Listesi'**
  String get infoNeedListTitle;

  /// No description provided for @infoNeedMyItem.
  ///
  /// In tr, this message translates to:
  /// **'Benim maddem'**
  String get infoNeedMyItem;

  /// No description provided for @infoNeedOther.
  ///
  /// In tr, this message translates to:
  /// **'Diğer'**
  String get infoNeedOther;

  /// No description provided for @infoNeedPercent.
  ///
  /// In tr, this message translates to:
  /// **'%{percent}'**
  String infoNeedPercent(int percent);

  /// No description provided for @infoNeedReadyCount.
  ///
  /// In tr, this message translates to:
  /// **'{done}/{total} hazır'**
  String infoNeedReadyCount(int done, int total);

  /// No description provided for @infoNeedReset.
  ///
  /// In tr, this message translates to:
  /// **'Sıfırla'**
  String get infoNeedReset;

  /// No description provided for @infoNeedResetAll.
  ///
  /// In tr, this message translates to:
  /// **'Hepsini sıfırla'**
  String get infoNeedResetAll;

  /// No description provided for @infoNeedResetBody.
  ///
  /// In tr, this message translates to:
  /// **'Tüm işaretler kaldırılacak. Eklediğiniz maddeler de silinsin mi?'**
  String get infoNeedResetBody;

  /// No description provided for @infoNeedResetChecksOnly.
  ///
  /// In tr, this message translates to:
  /// **'Yalnız işaretler'**
  String get infoNeedResetChecksOnly;

  /// No description provided for @infoNeedResetTitle.
  ///
  /// In tr, this message translates to:
  /// **'Listeyi sıfırla'**
  String get infoNeedResetTitle;

  /// No description provided for @infoOpenInGoogleMaps.
  ///
  /// In tr, this message translates to:
  /// **'Google Maps\'te aç'**
  String get infoOpenInGoogleMaps;

  /// No description provided for @infoPedometerNextVersion.
  ///
  /// In tr, this message translates to:
  /// **'Adım sayar bir sonraki sürümde eklenecek.'**
  String get infoPedometerNextVersion;

  /// No description provided for @infoPlacesMeccaTitle.
  ///
  /// In tr, this message translates to:
  /// **'Mekke Gezilecek Yerler'**
  String get infoPlacesMeccaTitle;

  /// No description provided for @infoPlacesMedinaTitle.
  ///
  /// In tr, this message translates to:
  /// **'Medine Gezilecek Yerler'**
  String get infoPlacesMedinaTitle;

  /// No description provided for @infoProphetsMosque.
  ///
  /// In tr, this message translates to:
  /// **'Mescid-i Nebevî'**
  String get infoProphetsMosque;

  /// No description provided for @infoShowAll.
  ///
  /// In tr, this message translates to:
  /// **'Hepsini göster'**
  String get infoShowAll;

  /// No description provided for @infoShowOnMap.
  ///
  /// In tr, this message translates to:
  /// **'Haritada göster'**
  String get infoShowOnMap;

  /// No description provided for @infoTapForDetails.
  ///
  /// In tr, this message translates to:
  /// **'Detaylar için tıklayınız.'**
  String get infoTapForDetails;

  /// No description provided for @infoTechContactUs.
  ///
  /// In tr, this message translates to:
  /// **'Bize Ulaşın'**
  String get infoTechContactUs;

  /// No description provided for @infoTechContactUsBody.
  ///
  /// In tr, this message translates to:
  /// **'Uygulamayla ilgili her türlü sorun ve öneriniz için bize ulaşabilirsiniz.'**
  String get infoTechContactUsBody;

  /// No description provided for @infoTechEmail1.
  ///
  /// In tr, this message translates to:
  /// **'Birinci E-Posta'**
  String get infoTechEmail1;

  /// No description provided for @infoTechEmail2.
  ///
  /// In tr, this message translates to:
  /// **'İkinci E-Posta'**
  String get infoTechEmail2;

  /// No description provided for @infoTechEmailFailed.
  ///
  /// In tr, this message translates to:
  /// **'Email açılamadı'**
  String get infoTechEmailFailed;

  /// No description provided for @infoTechEmails.
  ///
  /// In tr, this message translates to:
  /// **'E-Posta Adresleri'**
  String get infoTechEmails;

  /// No description provided for @infoTechPhone1.
  ///
  /// In tr, this message translates to:
  /// **'Birinci Telefon'**
  String get infoTechPhone1;

  /// No description provided for @infoTechPhone2.
  ///
  /// In tr, this message translates to:
  /// **'İkinci Telefon'**
  String get infoTechPhone2;

  /// No description provided for @infoTechPhoneFailed.
  ///
  /// In tr, this message translates to:
  /// **'Telefon açılamadı'**
  String get infoTechPhoneFailed;

  /// No description provided for @infoTechPhones.
  ///
  /// In tr, this message translates to:
  /// **'Telefon Numaraları'**
  String get infoTechPhones;

  /// No description provided for @infoTechTitle.
  ///
  /// In tr, this message translates to:
  /// **'Teknik Servis'**
  String get infoTechTitle;

  /// No description provided for @infoTechWhatsAppFailed.
  ///
  /// In tr, this message translates to:
  /// **'WhatsApp açılamadı'**
  String get infoTechWhatsAppFailed;

  /// No description provided for @infoWalkHours.
  ///
  /// In tr, this message translates to:
  /// **'{hours} saat yürüme'**
  String infoWalkHours(String hours);

  /// No description provided for @infoWalkMinutes.
  ///
  /// In tr, this message translates to:
  /// **'{minutes} dk yürüme'**
  String infoWalkMinutes(int minutes);

  /// No description provided for @kibleArMode.
  ///
  /// In tr, this message translates to:
  /// **'AR Modu'**
  String get kibleArMode;

  /// No description provided for @kibleArSoon.
  ///
  /// In tr, this message translates to:
  /// **'AR modu yakında eklenecek'**
  String get kibleArSoon;

  /// No description provided for @kibleCalibrate.
  ///
  /// In tr, this message translates to:
  /// **'Kalibre Et'**
  String get kibleCalibrate;

  /// No description provided for @kibleCalibrateStep1.
  ///
  /// In tr, this message translates to:
  /// **'Telefonunuzu elinize alın, metal eşyalardan ve mıknatıslardan uzaklaşın.'**
  String get kibleCalibrateStep1;

  /// No description provided for @kibleCalibrateStep2.
  ///
  /// In tr, this message translates to:
  /// **'Telefonu havada yan yatmış bir 8 çizerek birkaç kez hareket ettirin.'**
  String get kibleCalibrateStep2;

  /// No description provided for @kibleCalibrateStep3.
  ///
  /// In tr, this message translates to:
  /// **'Hareket ederken telefonu bileğinizden de çevirin.'**
  String get kibleCalibrateStep3;

  /// No description provided for @kibleCalibrateTitle.
  ///
  /// In tr, this message translates to:
  /// **'Pusulayı Kalibre Et'**
  String get kibleCalibrateTitle;

  /// No description provided for @kibleCalibrationHint.
  ///
  /// In tr, this message translates to:
  /// **'telefonunuzu havada 8 çizerek hareket ettirin'**
  String get kibleCalibrationHint;

  /// No description provided for @kibleCalibrationNeeded.
  ///
  /// In tr, this message translates to:
  /// **'Pusula kalibrasyonu gerekli: '**
  String get kibleCalibrationNeeded;

  /// No description provided for @kibleCompassE.
  ///
  /// In tr, this message translates to:
  /// **'D'**
  String get kibleCompassE;

  /// No description provided for @kibleCompassN.
  ///
  /// In tr, this message translates to:
  /// **'K'**
  String get kibleCompassN;

  /// No description provided for @kibleCompassS.
  ///
  /// In tr, this message translates to:
  /// **'G'**
  String get kibleCompassS;

  /// No description provided for @kibleCompassW.
  ///
  /// In tr, this message translates to:
  /// **'B'**
  String get kibleCompassW;

  /// No description provided for @kibleDirE.
  ///
  /// In tr, this message translates to:
  /// **'Doğu'**
  String get kibleDirE;

  /// No description provided for @kibleDirN.
  ///
  /// In tr, this message translates to:
  /// **'Kuzey'**
  String get kibleDirN;

  /// No description provided for @kibleDirNE.
  ///
  /// In tr, this message translates to:
  /// **'Kuzey Doğu'**
  String get kibleDirNE;

  /// No description provided for @kibleDirNW.
  ///
  /// In tr, this message translates to:
  /// **'Kuzey Batı'**
  String get kibleDirNW;

  /// No description provided for @kibleDirS.
  ///
  /// In tr, this message translates to:
  /// **'Güney'**
  String get kibleDirS;

  /// No description provided for @kibleDirSE.
  ///
  /// In tr, this message translates to:
  /// **'Güney Doğu'**
  String get kibleDirSE;

  /// No description provided for @kibleDirSW.
  ///
  /// In tr, this message translates to:
  /// **'Güney Batı'**
  String get kibleDirSW;

  /// No description provided for @kibleDirW.
  ///
  /// In tr, this message translates to:
  /// **'Batı'**
  String get kibleDirW;

  /// No description provided for @kibleDistanceKm.
  ///
  /// In tr, this message translates to:
  /// **'{value} km'**
  String kibleDistanceKm(String value);

  /// No description provided for @kibleDistanceM.
  ///
  /// In tr, this message translates to:
  /// **'{value} m'**
  String kibleDistanceM(String value);

  /// No description provided for @kibleDistanceTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kıbleye Uzaklığınız'**
  String get kibleDistanceTitle;

  /// No description provided for @kibleDistanceToKaaba.
  ///
  /// In tr, this message translates to:
  /// **'Kâbe\'ye uzaklık'**
  String get kibleDistanceToKaaba;

  /// No description provided for @kibleFacingQibla.
  ///
  /// In tr, this message translates to:
  /// **'Kıble yönündesiniz'**
  String get kibleFacingQibla;

  /// No description provided for @kibleGettingLocation.
  ///
  /// In tr, this message translates to:
  /// **'Konum alınıyor…'**
  String get kibleGettingLocation;

  /// No description provided for @kibleHelp.
  ///
  /// In tr, this message translates to:
  /// **'Yardım'**
  String get kibleHelp;

  /// No description provided for @kibleHelpText.
  ///
  /// In tr, this message translates to:
  /// **'Telefonunuzu yere paralel tutun ve kendi etrafınızda yavaşça dönün. İbre tam yukarıyı gösterdiğinde ve Kâbe rozeti üstteki işaretle hizalandığında kıbleye dönmüş olursunuz; telefon hafifçe titrer.\n\nMetal eşyalar, mıknatıslı kılıflar ve elektronik cihazlar pusulayı etkileyebilir. Sapma görürseniz \"Kalibre Et\" adımlarını uygulayın.\n\nKıble açısı gerçek kuzeye göre hesaplanır.'**
  String get kibleHelpText;

  /// No description provided for @kibleLocationFailedText.
  ///
  /// In tr, this message translates to:
  /// **'Konumunuz alınamadı. Lütfen tekrar deneyin.'**
  String get kibleLocationFailedText;

  /// No description provided for @kibleLocationFailedTitle.
  ///
  /// In tr, this message translates to:
  /// **'Konum alınamadı'**
  String get kibleLocationFailedTitle;

  /// No description provided for @kibleLocationNotYet.
  ///
  /// In tr, this message translates to:
  /// **'Konum henüz alınamadı'**
  String get kibleLocationNotYet;

  /// No description provided for @kibleMeccaSaudi.
  ///
  /// In tr, this message translates to:
  /// **'Mekke, Suudi Arabistan'**
  String get kibleMeccaSaudi;

  /// No description provided for @kibleNoCompass.
  ///
  /// In tr, this message translates to:
  /// **'Cihazınızda pusula sensörü bulunamadı'**
  String get kibleNoCompass;

  /// No description provided for @kibleOpenSettings.
  ///
  /// In tr, this message translates to:
  /// **'Ayarları aç'**
  String get kibleOpenSettings;

  /// No description provided for @kiblePermissionDeniedForeverText.
  ///
  /// In tr, this message translates to:
  /// **'Kıble yönü ve Kâbe\'ye uzaklık, bulunduğunuz konuma göre hesaplanır. Konum izni kalıcı olarak reddedildi; lütfen ayarlardan izin verin.'**
  String get kiblePermissionDeniedForeverText;

  /// No description provided for @kiblePermissionDeniedText.
  ///
  /// In tr, this message translates to:
  /// **'Kıble yönü ve Kâbe\'ye uzaklık, bulunduğunuz konuma göre hesaplanır. Konumunuz yalnızca bu hesap için kullanılır.'**
  String get kiblePermissionDeniedText;

  /// No description provided for @kiblePermissionTitle.
  ///
  /// In tr, this message translates to:
  /// **'Konum izni gerekli'**
  String get kiblePermissionTitle;

  /// No description provided for @kiblePreparingCompass.
  ///
  /// In tr, this message translates to:
  /// **'Pusula hazırlanıyor…'**
  String get kiblePreparingCompass;

  /// No description provided for @kibleQiblaDegrees.
  ///
  /// In tr, this message translates to:
  /// **'Kıble {degrees}°'**
  String kibleQiblaDegrees(int degrees);

  /// No description provided for @kibleQiblaUnknown.
  ///
  /// In tr, this message translates to:
  /// **'Kıble —'**
  String get kibleQiblaUnknown;

  /// No description provided for @kibleRefreshLocation.
  ///
  /// In tr, this message translates to:
  /// **'Konumu yenile'**
  String get kibleRefreshLocation;

  /// No description provided for @kibleRouteTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kıble Rotası'**
  String get kibleRouteTitle;

  /// No description provided for @kibleServiceOffText.
  ///
  /// In tr, this message translates to:
  /// **'Kıble yönünü hesaplayabilmek için cihazınızın konum servisini açın.'**
  String get kibleServiceOffText;

  /// No description provided for @kibleServiceOffTitle.
  ///
  /// In tr, this message translates to:
  /// **'Konum servisi kapalı'**
  String get kibleServiceOffTitle;

  /// No description provided for @kibleShowMyLocation.
  ///
  /// In tr, this message translates to:
  /// **'Konumumu Göster'**
  String get kibleShowMyLocation;

  /// No description provided for @kibleSoon.
  ///
  /// In tr, this message translates to:
  /// **'Yakında'**
  String get kibleSoon;

  /// No description provided for @kibleSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Kıbleye yönelin ve kalbinizi huzura çevirin.'**
  String get kibleSubtitle;

  /// No description provided for @kibleTipLabel.
  ///
  /// In tr, this message translates to:
  /// **'İpucu: '**
  String get kibleTipLabel;

  /// No description provided for @kibleTipText.
  ///
  /// In tr, this message translates to:
  /// **'Cihazınızı düz bir zemine yerleştirerek daha doğru sonuçlar alabilirsiniz.'**
  String get kibleTipText;

  /// No description provided for @kibleTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kıble Yönü'**
  String get kibleTitle;

  /// No description provided for @kibleTrueNorthNote.
  ///
  /// In tr, this message translates to:
  /// **'(gerçek kuzeye göre, saat yönünde)'**
  String get kibleTrueNorthNote;

  /// No description provided for @kibleTryAgain.
  ///
  /// In tr, this message translates to:
  /// **'Tekrar dene'**
  String get kibleTryAgain;

  /// No description provided for @kibleTurnLeft.
  ///
  /// In tr, this message translates to:
  /// **'Telefonu {degrees}° sola çevirin'**
  String kibleTurnLeft(int degrees);

  /// No description provided for @kibleTurnRight.
  ///
  /// In tr, this message translates to:
  /// **'Telefonu {degrees}° sağa çevirin'**
  String kibleTurnRight(int degrees);

  /// No description provided for @odemeDemoNote.
  ///
  /// In tr, this message translates to:
  /// **'Demo sürüm: ödeme alınmaz, paket bu cihazda etkinleştirilir.'**
  String get odemeDemoNote;

  /// No description provided for @odemeFailed.
  ///
  /// In tr, this message translates to:
  /// **'İşlem tamamlanamadı. İnternet bağlantınızı kontrol edip tekrar deneyin.'**
  String get odemeFailed;

  /// No description provided for @odemeFullNote.
  ///
  /// In tr, this message translates to:
  /// **'Ödemenizden sonra yöneticimiz talebinizi onaylar ve yolculuk tarihlerinizi belirlemek için sizinle iletişime geçer.'**
  String get odemeFullNote;

  /// No description provided for @odemePay.
  ///
  /// In tr, this message translates to:
  /// **'{price} öde'**
  String odemePay(String price);

  /// No description provided for @odemePoweredBy.
  ///
  /// In tr, this message translates to:
  /// **'PayTR güvenli ödeme altyapısı'**
  String get odemePoweredBy;

  /// No description provided for @odemeProcessing.
  ///
  /// In tr, this message translates to:
  /// **'Ödeme işleniyor'**
  String get odemeProcessing;

  /// No description provided for @odemeProcessingBody.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen bekleyin, sayfadan ayrılmayın.'**
  String get odemeProcessingBody;

  /// No description provided for @odemeRowPackage.
  ///
  /// In tr, this message translates to:
  /// **'Paket'**
  String get odemeRowPackage;

  /// No description provided for @odemeRowPeriod.
  ///
  /// In tr, this message translates to:
  /// **'Süre'**
  String get odemeRowPeriod;

  /// No description provided for @odemeRowTotal.
  ///
  /// In tr, this message translates to:
  /// **'Toplam'**
  String get odemeRowTotal;

  /// No description provided for @odemeSecureNote.
  ///
  /// In tr, this message translates to:
  /// **'Ödeme, PayTR güvenli ödeme sayfasında yapılır. Kart bilgileriniz uygulamada saklanmaz.'**
  String get odemeSecureNote;

  /// No description provided for @odemeSuccess.
  ///
  /// In tr, this message translates to:
  /// **'Ödeme başarılı'**
  String get odemeSuccess;

  /// No description provided for @odemeSuccessBody.
  ///
  /// In tr, this message translates to:
  /// **'Paketiniz etkinleştirildi. Şimdi yolculuk bilgilerinizi girebilirsiniz.'**
  String get odemeSuccessBody;

  /// No description provided for @odemeSuccessFull.
  ///
  /// In tr, this message translates to:
  /// **'Talebiniz alındı. Yöneticimiz onay ve tarih belirleme için sizinle iletişime geçecek.'**
  String get odemeSuccessFull;

  /// No description provided for @odemeSummary.
  ///
  /// In tr, this message translates to:
  /// **'Sipariş özeti'**
  String get odemeSummary;

  /// No description provided for @odemeTitle.
  ///
  /// In tr, this message translates to:
  /// **'Ödeme'**
  String get odemeTitle;

  /// No description provided for @paketlerAgencyNote.
  ///
  /// In tr, this message translates to:
  /// **'Anlaşmalı bir acenteyle seyahat ediyorsanız bu özellikler acenteniz tarafından ücretsiz sunulur.'**
  String get paketlerAgencyNote;

  /// No description provided for @paketlerAileF1.
  ///
  /// In tr, this message translates to:
  /// **'Umre Paketi\'ndeki her şey, 6 kişi için'**
  String get paketlerAileF1;

  /// No description provided for @paketlerAileF2.
  ///
  /// In tr, this message translates to:
  /// **'Grubunuza özel canlı harita'**
  String get paketlerAileF2;

  /// No description provided for @paketlerAileF3.
  ///
  /// In tr, this message translates to:
  /// **'Grup içi internet telsizi'**
  String get paketlerAileF3;

  /// No description provided for @paketlerAileName.
  ///
  /// In tr, this message translates to:
  /// **'Aile / Arkadaş Paketi'**
  String get paketlerAileName;

  /// No description provided for @paketlerAilePeriod.
  ///
  /// In tr, this message translates to:
  /// **'30 gün · 6 kişiye kadar'**
  String get paketlerAilePeriod;

  /// No description provided for @paketlerAilePrice.
  ///
  /// In tr, this message translates to:
  /// **'799,99 TL'**
  String get paketlerAilePrice;

  /// No description provided for @paketlerBackToFree.
  ///
  /// In tr, this message translates to:
  /// **'Ücretsiz plana dön'**
  String get paketlerBackToFree;

  /// No description provided for @paketlerBackToFreeBody.
  ///
  /// In tr, this message translates to:
  /// **'Paketiniz ve girdiğiniz yolculuk bilgileri bu cihazdan kaldırılacak.'**
  String get paketlerBackToFreeBody;

  /// No description provided for @paketlerBackToFreeDone.
  ///
  /// In tr, this message translates to:
  /// **'Ücretsiz plana geçildi.'**
  String get paketlerBackToFreeDone;

  /// No description provided for @paketlerBackToFreeTitle.
  ///
  /// In tr, this message translates to:
  /// **'Ücretsiz plana dön'**
  String get paketlerBackToFreeTitle;

  /// No description provided for @paketlerBestValue.
  ///
  /// In tr, this message translates to:
  /// **'Kişi başı en uygun'**
  String get paketlerBestValue;

  /// No description provided for @paketlerBrowse.
  ///
  /// In tr, this message translates to:
  /// **'Paketleri incele'**
  String get paketlerBrowse;

  /// No description provided for @paketlerBuy.
  ///
  /// In tr, this message translates to:
  /// **'Satın al'**
  String get paketlerBuy;

  /// No description provided for @paketlerCancel.
  ///
  /// In tr, this message translates to:
  /// **'Vazgeç'**
  String get paketlerCancel;

  /// No description provided for @paketlerChooseSub.
  ///
  /// In tr, this message translates to:
  /// **'Mekke ve Medine geri sayımı, sesli rehber ve daha fazlası'**
  String get paketlerChooseSub;

  /// No description provided for @paketlerChooseTitle.
  ///
  /// In tr, this message translates to:
  /// **'Paketinizi seçin'**
  String get paketlerChooseTitle;

  /// No description provided for @paketlerConfirm.
  ///
  /// In tr, this message translates to:
  /// **'Evet, dön'**
  String get paketlerConfirm;

  /// No description provided for @paketlerContactUs.
  ///
  /// In tr, this message translates to:
  /// **'Bizimle iletişime geçin'**
  String get paketlerContactUs;

  /// No description provided for @paketlerCurrent.
  ///
  /// In tr, this message translates to:
  /// **'Mevcut planınız'**
  String get paketlerCurrent;

  /// No description provided for @paketlerDiscountLocked.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf indirimi ücretli paketlerde kullanılabilir.'**
  String get paketlerDiscountLocked;

  /// No description provided for @paketlerEditPlan.
  ///
  /// In tr, this message translates to:
  /// **'Tarih ve otel bilgilerimi düzenle'**
  String get paketlerEditPlan;

  /// No description provided for @paketlerFootnote.
  ///
  /// In tr, this message translates to:
  /// **'Paketler otomatik yenilenmez. Süre, satın aldığınız andan itibaren başlar.'**
  String get paketlerFootnote;

  /// No description provided for @paketlerFreeBadge.
  ///
  /// In tr, this message translates to:
  /// **'Herkese açık'**
  String get paketlerFreeBadge;

  /// No description provided for @paketlerFreeF1.
  ///
  /// In tr, this message translates to:
  /// **'Dualar, Kur\'an-ı Kerim ve zikirmatik'**
  String get paketlerFreeF1;

  /// No description provided for @paketlerFreeF2.
  ///
  /// In tr, this message translates to:
  /// **'Ezan vakitleri ve kıble'**
  String get paketlerFreeF2;

  /// No description provided for @paketlerFreeF3.
  ///
  /// In tr, this message translates to:
  /// **'Gezilecek yerler, Harem kapıları ve ulaşım bilgileri'**
  String get paketlerFreeF3;

  /// No description provided for @paketlerFreeF4.
  ///
  /// In tr, this message translates to:
  /// **'Toplu Hatim grupları'**
  String get paketlerFreeF4;

  /// No description provided for @paketlerFreeName.
  ///
  /// In tr, this message translates to:
  /// **'Ücretsiz'**
  String get paketlerFreeName;

  /// No description provided for @paketlerFreePrice.
  ///
  /// In tr, this message translates to:
  /// **'0 TL'**
  String get paketlerFreePrice;

  /// No description provided for @paketlerFullBadge.
  ///
  /// In tr, this message translates to:
  /// **'Her şey dahil'**
  String get paketlerFullBadge;

  /// No description provided for @paketlerFullCta.
  ///
  /// In tr, this message translates to:
  /// **'Satın al'**
  String get paketlerFullCta;

  /// No description provided for @paketlerFullF1.
  ///
  /// In tr, this message translates to:
  /// **'Gidiş-dönüş uçak bileti'**
  String get paketlerFullF1;

  /// No description provided for @paketlerFullF2.
  ///
  /// In tr, this message translates to:
  /// **'Umre vizesi'**
  String get paketlerFullF2;

  /// No description provided for @paketlerFullF3.
  ///
  /// In tr, this message translates to:
  /// **'Mekke ve Medine\'de otel konaklaması'**
  String get paketlerFullF3;

  /// No description provided for @paketlerFullF4.
  ///
  /// In tr, this message translates to:
  /// **'Yemek ve içecek'**
  String get paketlerFullF4;

  /// No description provided for @paketlerFullF5.
  ///
  /// In tr, this message translates to:
  /// **'Havalimanı transferi ve şehirler arası ulaşım'**
  String get paketlerFullF5;

  /// No description provided for @paketlerFullF6.
  ///
  /// In tr, this message translates to:
  /// **'Suudi Arabistan eSIM (internet)'**
  String get paketlerFullF6;

  /// No description provided for @paketlerFullF7.
  ///
  /// In tr, this message translates to:
  /// **'Umre Paketi\'nin tüm uygulama özellikleri'**
  String get paketlerFullF7;

  /// No description provided for @paketlerFullName.
  ///
  /// In tr, this message translates to:
  /// **'Full Umre Paketi'**
  String get paketlerFullName;

  /// No description provided for @paketlerFullPeriod.
  ///
  /// In tr, this message translates to:
  /// **'10 gün · kişi başı'**
  String get paketlerFullPeriod;

  /// No description provided for @paketlerFullPrice.
  ///
  /// In tr, this message translates to:
  /// **'1.500 \$'**
  String get paketlerFullPrice;

  /// No description provided for @paketlerIntro.
  ///
  /// In tr, this message translates to:
  /// **'Umrenizi kendi başınıza planlıyorsanız size uygun paketi seçin. Temel özellikler her zaman ücretsiz.'**
  String get paketlerIntro;

  /// No description provided for @paketlerOnlyBody.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf indirimleri, puanlar ve harcama geçmişi Umre, Aile ve Full paketlerde açılır.'**
  String get paketlerOnlyBody;

  /// No description provided for @paketlerOnlyTitle.
  ///
  /// In tr, this message translates to:
  /// **'Ücretli paketlere özel'**
  String get paketlerOnlyTitle;

  /// No description provided for @paketlerPendingBadge.
  ///
  /// In tr, this message translates to:
  /// **'Onay bekleniyor'**
  String get paketlerPendingBadge;

  /// No description provided for @paketlerPendingBody.
  ///
  /// In tr, this message translates to:
  /// **'Full Umre Paketi talebiniz alındı. Yöneticimiz onayladıktan sonra yolculuk tarihlerinizi belirlemek için sizinle iletişime geçecek.'**
  String get paketlerPendingBody;

  /// No description provided for @paketlerPendingShort.
  ///
  /// In tr, this message translates to:
  /// **'Onay bekleniyor · bizimle iletişime geçin'**
  String get paketlerPendingShort;

  /// No description provided for @paketlerPendingTitle.
  ///
  /// In tr, this message translates to:
  /// **'Onay bekleniyor'**
  String get paketlerPendingTitle;

  /// No description provided for @paketlerPlanHotel.
  ///
  /// In tr, this message translates to:
  /// **'Otel adı'**
  String get paketlerPlanHotel;

  /// No description provided for @paketlerPlanIntro.
  ///
  /// In tr, this message translates to:
  /// **'Mekke ve Medine\'deki konaklama tarihlerinizi ve otelinizi girin. Ana sayfada geri sayım kartlarınız bu bilgilerle gösterilir.'**
  String get paketlerPlanIntro;

  /// No description provided for @paketlerPlanMedine.
  ///
  /// In tr, this message translates to:
  /// **'Medine'**
  String get paketlerPlanMedine;

  /// No description provided for @paketlerPlanMekke.
  ///
  /// In tr, this message translates to:
  /// **'Mekke'**
  String get paketlerPlanMekke;

  /// No description provided for @paketlerPlanPickDates.
  ///
  /// In tr, this message translates to:
  /// **'Giriş ve çıkış tarihi seçin'**
  String get paketlerPlanPickDates;

  /// No description provided for @paketlerPlanSave.
  ///
  /// In tr, this message translates to:
  /// **'Kaydet'**
  String get paketlerPlanSave;

  /// No description provided for @paketlerPlanSaved.
  ///
  /// In tr, this message translates to:
  /// **'Yolculuk bilgileriniz kaydedildi.'**
  String get paketlerPlanSaved;

  /// No description provided for @paketlerPlanTitle.
  ///
  /// In tr, this message translates to:
  /// **'Yolculuk Bilgilerim'**
  String get paketlerPlanTitle;

  /// No description provided for @paketlerQuickSub.
  ///
  /// In tr, this message translates to:
  /// **'Umre ve Aile paketleri'**
  String get paketlerQuickSub;

  /// No description provided for @paketlerRecommended.
  ///
  /// In tr, this message translates to:
  /// **'Önerilen'**
  String get paketlerRecommended;

  /// No description provided for @paketlerTitle.
  ///
  /// In tr, this message translates to:
  /// **'Paketler'**
  String get paketlerTitle;

  /// No description provided for @paketlerUmreF1.
  ///
  /// In tr, this message translates to:
  /// **'Profesyonel sesli rehber'**
  String get paketlerUmreF1;

  /// No description provided for @paketlerUmreF2.
  ///
  /// In tr, this message translates to:
  /// **'İnternetsiz tam kullanım'**
  String get paketlerUmreF2;

  /// No description provided for @paketlerUmreF3.
  ///
  /// In tr, this message translates to:
  /// **'Kişisel umre planı'**
  String get paketlerUmreF3;

  /// No description provided for @paketlerUmreF4.
  ///
  /// In tr, this message translates to:
  /// **'Aile Takibi: evdekiler konumunuzu bir bağlantıyla görür'**
  String get paketlerUmreF4;

  /// No description provided for @paketlerUmreF5.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf indirimleri'**
  String get paketlerUmreF5;

  /// No description provided for @paketlerUmreName.
  ///
  /// In tr, this message translates to:
  /// **'Umre Paketi'**
  String get paketlerUmreName;

  /// No description provided for @paketlerUmrePeriod.
  ///
  /// In tr, this message translates to:
  /// **'30 gün · tek kişi'**
  String get paketlerUmrePeriod;

  /// No description provided for @paketlerUmrePrice.
  ///
  /// In tr, this message translates to:
  /// **'349,99 TL'**
  String get paketlerUmrePrice;

  /// No description provided for @paketlerYourPackage.
  ///
  /// In tr, this message translates to:
  /// **'Paketiniz: {name}'**
  String paketlerYourPackage(String name);

  /// No description provided for @platformAdminLogin.
  ///
  /// In tr, this message translates to:
  /// **'Yönetici girişi'**
  String get platformAdminLogin;

  /// No description provided for @platformAgencyInactive.
  ///
  /// In tr, this message translates to:
  /// **'Acenteniz şu an pasif. Lütfen acentenizle iletişime geçin.'**
  String get platformAgencyInactive;

  /// No description provided for @platformMaintenanceDefault.
  ///
  /// In tr, this message translates to:
  /// **'Uygulama kısa süreliğine bakımda. Lütfen daha sonra tekrar deneyin.'**
  String get platformMaintenanceDefault;

  /// No description provided for @platformMaintenanceTitle.
  ///
  /// In tr, this message translates to:
  /// **'Bakımdayız'**
  String get platformMaintenanceTitle;

  /// No description provided for @platformRetryFailed.
  ///
  /// In tr, this message translates to:
  /// **'Bağlantı kurulamadı.'**
  String get platformRetryFailed;

  /// No description provided for @platformUpdateBody.
  ///
  /// In tr, this message translates to:
  /// **'Uygulamayı kullanmaya devam etmek için lütfen yeni sürüme güncelleyin.'**
  String get platformUpdateBody;

  /// No description provided for @platformUpdateButton.
  ///
  /// In tr, this message translates to:
  /// **'Güncelle'**
  String get platformUpdateButton;

  /// No description provided for @platformUpdateOpenFailed.
  ///
  /// In tr, this message translates to:
  /// **'Bağlantı açılamadı.'**
  String get platformUpdateOpenFailed;

  /// No description provided for @platformUpdateTitle.
  ///
  /// In tr, this message translates to:
  /// **'Güncelleme gerekli'**
  String get platformUpdateTitle;

  /// No description provided for @quranAddBookmark.
  ///
  /// In tr, this message translates to:
  /// **'Yer işareti ekle'**
  String get quranAddBookmark;

  /// No description provided for @quranAgoDays.
  ///
  /// In tr, this message translates to:
  /// **'{count} gün önce'**
  String quranAgoDays(int count);

  /// No description provided for @quranAgoHours.
  ///
  /// In tr, this message translates to:
  /// **'{count} saat önce'**
  String quranAgoHours(int count);

  /// No description provided for @quranAgoJustNow.
  ///
  /// In tr, this message translates to:
  /// **'Az önce'**
  String get quranAgoJustNow;

  /// No description provided for @quranAgoMinutes.
  ///
  /// In tr, this message translates to:
  /// **'{count} dk önce'**
  String quranAgoMinutes(int count);

  /// No description provided for @quranArabicFontSize.
  ///
  /// In tr, this message translates to:
  /// **'Arapça yazı boyutu'**
  String get quranArabicFontSize;

  /// No description provided for @quranAyahActions.
  ///
  /// In tr, this message translates to:
  /// **'Ayet seçenekleri'**
  String get quranAyahActions;

  /// No description provided for @quranAyahBookmarkAdded.
  ///
  /// In tr, this message translates to:
  /// **'{ref} yer işaretlerine eklendi'**
  String quranAyahBookmarkAdded(String ref);

  /// No description provided for @quranAyahBookmarkRemoved.
  ///
  /// In tr, this message translates to:
  /// **'{ref} yer işaretlerinden çıkarıldı'**
  String quranAyahBookmarkRemoved(String ref);

  /// No description provided for @quranAyahCount.
  ///
  /// In tr, this message translates to:
  /// **'{count} ayet'**
  String quranAyahCount(int count);

  /// No description provided for @quranAyahsLabel.
  ///
  /// In tr, this message translates to:
  /// **'Ayetler'**
  String get quranAyahsLabel;

  /// No description provided for @quranBack.
  ///
  /// In tr, this message translates to:
  /// **'Geri'**
  String get quranBack;

  /// No description provided for @quranBookmarkAyah.
  ///
  /// In tr, this message translates to:
  /// **'Ayeti işaretle'**
  String get quranBookmarkAyah;

  /// No description provided for @quranBookmarkPage.
  ///
  /// In tr, this message translates to:
  /// **'Sayfaya yer işareti koy'**
  String get quranBookmarkPage;

  /// No description provided for @quranClear.
  ///
  /// In tr, this message translates to:
  /// **'Temizle'**
  String get quranClear;

  /// No description provided for @quranContinueReading.
  ///
  /// In tr, this message translates to:
  /// **'Okumaya Devam Et'**
  String get quranContinueReading;

  /// No description provided for @quranCopied.
  ///
  /// In tr, this message translates to:
  /// **'Ayet panoya kopyalandı'**
  String get quranCopied;

  /// No description provided for @quranCopy.
  ///
  /// In tr, this message translates to:
  /// **'Kopyala'**
  String get quranCopy;

  /// No description provided for @quranDayMode.
  ///
  /// In tr, this message translates to:
  /// **'Gündüz modu'**
  String get quranDayMode;

  /// No description provided for @quranFilter.
  ///
  /// In tr, this message translates to:
  /// **'Filtrele'**
  String get quranFilter;

  /// No description provided for @quranFilterAll.
  ///
  /// In tr, this message translates to:
  /// **'Tüm sureler'**
  String get quranFilterAll;

  /// No description provided for @quranFilterMeccan.
  ///
  /// In tr, this message translates to:
  /// **'Mekki sureler'**
  String get quranFilterMeccan;

  /// No description provided for @quranFilterMedinan.
  ///
  /// In tr, this message translates to:
  /// **'Medeni sureler'**
  String get quranFilterMedinan;

  /// No description provided for @quranGo.
  ///
  /// In tr, this message translates to:
  /// **'Git'**
  String get quranGo;

  /// No description provided for @quranGoToPage.
  ///
  /// In tr, this message translates to:
  /// **'Sayfaya git'**
  String get quranGoToPage;

  /// No description provided for @quranJuz.
  ///
  /// In tr, this message translates to:
  /// **'{number}. Cüz'**
  String quranJuz(int number);

  /// No description provided for @quranJuzSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'{surah}, {ayah}. ayet • Sayfa {page}'**
  String quranJuzSubtitle(String surah, int ayah, int page);

  /// No description provided for @quranLast10.
  ///
  /// In tr, this message translates to:
  /// **'Son 10 kayıt'**
  String get quranLast10;

  /// No description provided for @quranListen.
  ///
  /// In tr, this message translates to:
  /// **'Dinle'**
  String get quranListen;

  /// No description provided for @quranListenAyah.
  ///
  /// In tr, this message translates to:
  /// **'Bu ayeti dinle'**
  String get quranListenAyah;

  /// No description provided for @quranListened.
  ///
  /// In tr, this message translates to:
  /// **'Dinlendi'**
  String get quranListened;

  /// No description provided for @quranMeal.
  ///
  /// In tr, this message translates to:
  /// **'Meal'**
  String get quranMeal;

  /// No description provided for @quranMealFailed.
  ///
  /// In tr, this message translates to:
  /// **'Meal alınamadı. Daha sonra tekrar deneyin.'**
  String get quranMealFailed;

  /// No description provided for @quranMealOffline.
  ///
  /// In tr, this message translates to:
  /// **'Meal için internet bağlantısı gerekli. Bağlantınızı kontrol edip tekrar deneyin.'**
  String get quranMealOffline;

  /// No description provided for @quranMealSource.
  ///
  /// In tr, this message translates to:
  /// **'Kaynak: {source}'**
  String quranMealSource(String source);

  /// No description provided for @quranMeccanAdj.
  ///
  /// In tr, this message translates to:
  /// **'Mekki'**
  String get quranMeccanAdj;

  /// No description provided for @quranMedinanAdj.
  ///
  /// In tr, this message translates to:
  /// **'Medeni'**
  String get quranMedinanAdj;

  /// No description provided for @quranNextSurah.
  ///
  /// In tr, this message translates to:
  /// **'Sonraki sure'**
  String get quranNextSurah;

  /// No description provided for @quranNightMode.
  ///
  /// In tr, this message translates to:
  /// **'Gece modu'**
  String get quranNightMode;

  /// No description provided for @quranNoAyahAudio.
  ///
  /// In tr, this message translates to:
  /// **'Bu imamın ayet kaydı yok'**
  String get quranNoAyahAudio;

  /// No description provided for @quranNoBookmarks.
  ///
  /// In tr, this message translates to:
  /// **'Yer işareti yok'**
  String get quranNoBookmarks;

  /// No description provided for @quranNoBookmarksHint.
  ///
  /// In tr, this message translates to:
  /// **'Sure listesindeki ya da okuyucudaki yer işareti simgesine dokunarak ekleyebilirsiniz.'**
  String get quranNoBookmarksHint;

  /// No description provided for @quranNoHistory.
  ///
  /// In tr, this message translates to:
  /// **'Henüz kayıt yok'**
  String get quranNoHistory;

  /// No description provided for @quranNoHistoryHint.
  ///
  /// In tr, this message translates to:
  /// **'Okuduğunuz ve dinlediğiniz sureler burada görünecek.'**
  String get quranNoHistoryHint;

  /// No description provided for @quranNoResults.
  ///
  /// In tr, this message translates to:
  /// **'Sonuç bulunamadı'**
  String get quranNoResults;

  /// No description provided for @quranNoResultsHint.
  ///
  /// In tr, this message translates to:
  /// **'Sure adını (ör. Yasin) ya da numarasını (ör. 36 veya 2:255) yazmayı deneyin.'**
  String get quranNoResultsHint;

  /// No description provided for @quranPage.
  ///
  /// In tr, this message translates to:
  /// **'Sayfa {page}'**
  String quranPage(int page);

  /// No description provided for @quranPageBookmarkAdded.
  ///
  /// In tr, this message translates to:
  /// **'Sayfa {page} yer işaretlerine eklendi'**
  String quranPageBookmarkAdded(int page);

  /// No description provided for @quranPageBookmarkRemoved.
  ///
  /// In tr, this message translates to:
  /// **'Sayfa {page} yer işaretlerinden çıkarıldı'**
  String quranPageBookmarkRemoved(int page);

  /// No description provided for @quranPageJuz.
  ///
  /// In tr, this message translates to:
  /// **'Sayfa {page} • {juz}. Cüz'**
  String quranPageJuz(int page, int juz);

  /// No description provided for @quranPageOfTotalJuz.
  ///
  /// In tr, this message translates to:
  /// **'Sayfa {page} / {total} • {juz}. Cüz'**
  String quranPageOfTotalJuz(int page, int total, int juz);

  /// No description provided for @quranPagesLabel.
  ///
  /// In tr, this message translates to:
  /// **'Sayfalar'**
  String get quranPagesLabel;

  /// No description provided for @quranPercent.
  ///
  /// In tr, this message translates to:
  /// **'%{value}'**
  String quranPercent(int value);

  /// No description provided for @quranPlaceMeccan.
  ///
  /// In tr, this message translates to:
  /// **'Mekke'**
  String get quranPlaceMeccan;

  /// No description provided for @quranPlaceMedinan.
  ///
  /// In tr, this message translates to:
  /// **'Medine'**
  String get quranPlaceMedinan;

  /// No description provided for @quranPlayFailed.
  ///
  /// In tr, this message translates to:
  /// **'Ses çalınamadı. Lütfen tekrar deneyin.'**
  String get quranPlayFailed;

  /// No description provided for @quranPreparing.
  ///
  /// In tr, this message translates to:
  /// **'Mushaf hazırlanıyor…'**
  String get quranPreparing;

  /// No description provided for @quranPrevSurah.
  ///
  /// In tr, this message translates to:
  /// **'Önceki sure'**
  String get quranPrevSurah;

  /// No description provided for @quranReciterSelection.
  ///
  /// In tr, this message translates to:
  /// **'İmam seçimi'**
  String get quranReciterSelection;

  /// No description provided for @quranReciterStyleHafsMurattal.
  ///
  /// In tr, this message translates to:
  /// **'Hafs • Murattal'**
  String get quranReciterStyleHafsMurattal;

  /// No description provided for @quranRemoveBookmark.
  ///
  /// In tr, this message translates to:
  /// **'Yer işaretini kaldır'**
  String get quranRemoveBookmark;

  /// No description provided for @quranSearchHint.
  ///
  /// In tr, this message translates to:
  /// **'Sure veya ayet ara'**
  String get quranSearchHint;

  /// No description provided for @quranSettings.
  ///
  /// In tr, this message translates to:
  /// **'Ayarlar'**
  String get quranSettings;

  /// No description provided for @quranStartReading.
  ///
  /// In tr, this message translates to:
  /// **'Okumaya Başla'**
  String get quranStartReading;

  /// No description provided for @quranStop.
  ///
  /// In tr, this message translates to:
  /// **'Durdur'**
  String get quranStop;

  /// No description provided for @quranStopAyah.
  ///
  /// In tr, this message translates to:
  /// **'Durdur'**
  String get quranStopAyah;

  /// No description provided for @quranStreamingNote.
  ///
  /// In tr, this message translates to:
  /// **'Sesli okumalar internetten akış olarak çalınır.'**
  String get quranStreamingNote;

  /// No description provided for @quranSubtitle.
  ///
  /// In tr, this message translates to:
  /// **'Huzur bulmak için oku, anlamak için yaşa.'**
  String get quranSubtitle;

  /// No description provided for @quranSurahBookmarkAdded.
  ///
  /// In tr, this message translates to:
  /// **'{surah} yer işaretlerine eklendi'**
  String quranSurahBookmarkAdded(String surah);

  /// No description provided for @quranSurahBookmarkRemoved.
  ///
  /// In tr, this message translates to:
  /// **'{surah} yer işaretlerinden çıkarıldı'**
  String quranSurahBookmarkRemoved(String surah);

  /// No description provided for @quranSurahCount.
  ///
  /// In tr, this message translates to:
  /// **'{count} sure'**
  String quranSurahCount(int count);

  /// Sure başlığı. name: tr Türkçe ad, en İngilizce transliterasyon, ar Arapça ad.
  ///
  /// In tr, this message translates to:
  /// **'{name} Suresi'**
  String quranSurahTitle(String name);

  /// No description provided for @quranTabBookmarks.
  ///
  /// In tr, this message translates to:
  /// **'Yer İşaretleri'**
  String get quranTabBookmarks;

  /// No description provided for @quranTabJuz.
  ///
  /// In tr, this message translates to:
  /// **'Cüzler'**
  String get quranTabJuz;

  /// No description provided for @quranTabRecents.
  ///
  /// In tr, this message translates to:
  /// **'Son Okunanlar'**
  String get quranTabRecents;

  /// No description provided for @quranTabSurahs.
  ///
  /// In tr, this message translates to:
  /// **'Sureler'**
  String get quranTabSurahs;

  /// No description provided for @quranTextLoadFailed.
  ///
  /// In tr, this message translates to:
  /// **'Kur\'an metni yüklenemedi.'**
  String get quranTextLoadFailed;

  /// No description provided for @quranTextSource.
  ///
  /// In tr, this message translates to:
  /// **'Metin kaynağı'**
  String get quranTextSource;

  /// No description provided for @quranTextSourceBody.
  ///
  /// In tr, this message translates to:
  /// **'Kur\'an metni: Tanzil Projesi (tanzil.net), Hafs rivayeti, Osmanlı hattı. Sayfa düzeni: 604 sayfalık Medine Mushafı. Yazı tipi: Amiri Quran (SIL Open Font License). Mealler: quran.com.'**
  String get quranTextSourceBody;

  /// No description provided for @quranTitle.
  ///
  /// In tr, this message translates to:
  /// **'Kur\'an-ı Kerim'**
  String get quranTitle;

  /// No description provided for @rolesAgencyAdmin.
  ///
  /// In tr, this message translates to:
  /// **'Acente Admini'**
  String get rolesAgencyAdmin;

  /// No description provided for @rolesFinance.
  ///
  /// In tr, this message translates to:
  /// **'Muhasebe'**
  String get rolesFinance;

  /// No description provided for @rolesGuest.
  ///
  /// In tr, this message translates to:
  /// **'Misafir'**
  String get rolesGuest;

  /// No description provided for @rolesManager.
  ///
  /// In tr, this message translates to:
  /// **'Yönetici'**
  String get rolesManager;

  /// No description provided for @rolesManagerDesc.
  ///
  /// In tr, this message translates to:
  /// **'Tüm acenteler'**
  String get rolesManagerDesc;

  /// No description provided for @rolesMerchant.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf'**
  String get rolesMerchant;

  /// No description provided for @rolesNoAccess.
  ///
  /// In tr, this message translates to:
  /// **'Bu bölüme erişim yetkiniz yok'**
  String get rolesNoAccess;

  /// No description provided for @rolesSelectAgencyFirst.
  ///
  /// In tr, this message translates to:
  /// **'Önce bir acente seçin'**
  String get rolesSelectAgencyFirst;

  /// No description provided for @rolesStaff.
  ///
  /// In tr, this message translates to:
  /// **'Yetkililer'**
  String get rolesStaff;

  /// No description provided for @rolesSuperAdmin.
  ///
  /// In tr, this message translates to:
  /// **'Süper Admin'**
  String get rolesSuperAdmin;

  /// No description provided for @rolesSupport.
  ///
  /// In tr, this message translates to:
  /// **'Destek'**
  String get rolesSupport;

  /// No description provided for @shopsAbout.
  ///
  /// In tr, this message translates to:
  /// **'Hakkında'**
  String get shopsAbout;

  /// No description provided for @shopsActivated.
  ///
  /// In tr, this message translates to:
  /// **'{name} aktif edildi.'**
  String shopsActivated(String name);

  /// No description provided for @shopsActive.
  ///
  /// In tr, this message translates to:
  /// **'Aktif'**
  String get shopsActive;

  /// No description provided for @shopsActiveSub.
  ///
  /// In tr, this message translates to:
  /// **'Pasif dükkanlar misafirlere görünmez.'**
  String get shopsActiveSub;

  /// No description provided for @shopsAdd.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan Ekle'**
  String get shopsAdd;

  /// No description provided for @shopsAdded.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan eklendi.'**
  String get shopsAdded;

  /// No description provided for @shopsAddress.
  ///
  /// In tr, this message translates to:
  /// **'Adres'**
  String get shopsAddress;

  /// No description provided for @shopsAdminLoadFailed.
  ///
  /// In tr, this message translates to:
  /// **'Dükkanlar yüklenemedi.'**
  String get shopsAdminLoadFailed;

  /// No description provided for @shopsAgency.
  ///
  /// In tr, this message translates to:
  /// **'Acente'**
  String get shopsAgency;

  /// No description provided for @shopsAll.
  ///
  /// In tr, this message translates to:
  /// **'Tümü'**
  String get shopsAll;

  /// No description provided for @shopsAllAgencies.
  ///
  /// In tr, this message translates to:
  /// **'Tüm acenteler'**
  String get shopsAllAgencies;

  /// No description provided for @shopsCall.
  ///
  /// In tr, this message translates to:
  /// **'Ara'**
  String get shopsCall;

  /// No description provided for @shopsCamera.
  ///
  /// In tr, this message translates to:
  /// **'Kamera'**
  String get shopsCamera;

  /// No description provided for @shopsCameraFailed.
  ///
  /// In tr, this message translates to:
  /// **'Kamera açılamadı. Kamera iznini kontrol edin.\n({code})'**
  String shopsCameraFailed(String code);

  /// No description provided for @shopsCatBooks.
  ///
  /// In tr, this message translates to:
  /// **'Kitap & Tesbih'**
  String get shopsCatBooks;

  /// No description provided for @shopsCatDatesFood.
  ///
  /// In tr, this message translates to:
  /// **'Hurma & Gıda'**
  String get shopsCatDatesFood;

  /// No description provided for @shopsCatGifts.
  ///
  /// In tr, this message translates to:
  /// **'Hediyelik'**
  String get shopsCatGifts;

  /// No description provided for @shopsCatJeweler.
  ///
  /// In tr, this message translates to:
  /// **'Kuyumcu'**
  String get shopsCatJeweler;

  /// No description provided for @shopsCatOther.
  ///
  /// In tr, this message translates to:
  /// **'Diğer'**
  String get shopsCatOther;

  /// No description provided for @shopsCatPerfume.
  ///
  /// In tr, this message translates to:
  /// **'Parfüm & Misk'**
  String get shopsCatPerfume;

  /// No description provided for @shopsCatRestaurant.
  ///
  /// In tr, this message translates to:
  /// **'Restoran & Kafe'**
  String get shopsCatRestaurant;

  /// No description provided for @shopsCatTextile.
  ///
  /// In tr, this message translates to:
  /// **'Tekstil & İhram'**
  String get shopsCatTextile;

  /// No description provided for @shopsCategory.
  ///
  /// In tr, this message translates to:
  /// **'Kategori'**
  String get shopsCategory;

  /// No description provided for @shopsCity.
  ///
  /// In tr, this message translates to:
  /// **'Şehir'**
  String get shopsCity;

  /// No description provided for @shopsCityJeddah.
  ///
  /// In tr, this message translates to:
  /// **'Cidde'**
  String get shopsCityJeddah;

  /// No description provided for @shopsCityOther.
  ///
  /// In tr, this message translates to:
  /// **'Diğer'**
  String get shopsCityOther;

  /// No description provided for @shopsCodeGuestTitle.
  ///
  /// In tr, this message translates to:
  /// **'Umre Rehberim Misafiri'**
  String get shopsCodeGuestTitle;

  /// No description provided for @shopsCodeShowAtCheckout.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen bu ekranı kasada esnafa gösterin.'**
  String get shopsCodeShowAtCheckout;

  /// No description provided for @shopsCodeVerifyLater.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf paneli hazır olduğunda doğrulanacak.'**
  String get shopsCodeVerifyLater;

  /// No description provided for @shopsContactSection.
  ///
  /// In tr, this message translates to:
  /// **'İletişim'**
  String get shopsContactSection;

  /// No description provided for @shopsDeactivated.
  ///
  /// In tr, this message translates to:
  /// **'{name} pasif yapıldı.'**
  String shopsDeactivated(String name);

  /// No description provided for @shopsDeleteConfirm.
  ///
  /// In tr, this message translates to:
  /// **'\"{name}\" silinsin mi? Bu işlem geri alınamaz.'**
  String shopsDeleteConfirm(String name);

  /// No description provided for @shopsDeleteFailed.
  ///
  /// In tr, this message translates to:
  /// **'Silinemedi: {error}'**
  String shopsDeleteFailed(String error);

  /// No description provided for @shopsDeleteTitle.
  ///
  /// In tr, this message translates to:
  /// **'Dükkanı sil'**
  String get shopsDeleteTitle;

  /// No description provided for @shopsDeleted.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan silindi.'**
  String get shopsDeleted;

  /// No description provided for @shopsDescription.
  ///
  /// In tr, this message translates to:
  /// **'Açıklama'**
  String get shopsDescription;

  /// No description provided for @shopsDetailsSection.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan Bilgileri'**
  String get shopsDetailsSection;

  /// No description provided for @shopsDirections.
  ///
  /// In tr, this message translates to:
  /// **'Yol Tarifi'**
  String get shopsDirections;

  /// No description provided for @shopsDiscountBadge.
  ///
  /// In tr, this message translates to:
  /// **'İNDİRİM'**
  String get shopsDiscountBadge;

  /// No description provided for @shopsDiscountNotNumber.
  ///
  /// In tr, this message translates to:
  /// **'Bir sayı girin (0-100)'**
  String get shopsDiscountNotNumber;

  /// No description provided for @shopsDiscountNote.
  ///
  /// In tr, this message translates to:
  /// **'İndirim notu'**
  String get shopsDiscountNote;

  /// No description provided for @shopsDiscountNoteHint.
  ///
  /// In tr, this message translates to:
  /// **'ör. Nakit alışverişte geçerli'**
  String get shopsDiscountNoteHint;

  /// No description provided for @shopsDiscountPercent.
  ///
  /// In tr, this message translates to:
  /// **'%{percent} İNDİRİM'**
  String shopsDiscountPercent(int percent);

  /// No description provided for @shopsDiscountPercentHint.
  ///
  /// In tr, this message translates to:
  /// **'ör. 15'**
  String get shopsDiscountPercentHint;

  /// No description provided for @shopsDiscountPercentLower.
  ///
  /// In tr, this message translates to:
  /// **'%{percent} indirim'**
  String shopsDiscountPercentLower(int percent);

  /// No description provided for @shopsDiscountPercentRequired.
  ///
  /// In tr, this message translates to:
  /// **'İndirim yüzdesi *'**
  String get shopsDiscountPercentRequired;

  /// No description provided for @shopsDiscountRange.
  ///
  /// In tr, this message translates to:
  /// **'0 ile 100 arasında olmalı'**
  String get shopsDiscountRange;

  /// No description provided for @shopsDiscountSection.
  ///
  /// In tr, this message translates to:
  /// **'İndirim'**
  String get shopsDiscountSection;

  /// No description provided for @shopsEdit.
  ///
  /// In tr, this message translates to:
  /// **'Dükkanı Düzenle'**
  String get shopsEdit;

  /// No description provided for @shopsEmpty.
  ///
  /// In tr, this message translates to:
  /// **'Henüz anlaşmalı dükkan eklenmedi.'**
  String get shopsEmpty;

  /// No description provided for @shopsEmptyAdminHint.
  ///
  /// In tr, this message translates to:
  /// **'Sağ alttaki \"Dükkan Ekle\" ile başlayın.'**
  String get shopsEmptyAdminHint;

  /// No description provided for @shopsFixFields.
  ///
  /// In tr, this message translates to:
  /// **'Lütfen işaretli alanları düzeltin.'**
  String get shopsFixFields;

  /// No description provided for @shopsForAllAgencies.
  ///
  /// In tr, this message translates to:
  /// **'Tüm acentelere açık'**
  String get shopsForAllAgencies;

  /// No description provided for @shopsForAllAgenciesSub.
  ///
  /// In tr, this message translates to:
  /// **'Bütün acentelerin misafirleri bu dükkanı görür.'**
  String get shopsForAllAgenciesSub;

  /// No description provided for @shopsGallery.
  ///
  /// In tr, this message translates to:
  /// **'Galeri'**
  String get shopsGallery;

  /// No description provided for @shopsGuest.
  ///
  /// In tr, this message translates to:
  /// **'Misafir'**
  String get shopsGuest;

  /// No description provided for @shopsImagePickFailed.
  ///
  /// In tr, this message translates to:
  /// **'Görsel seçilemedi: {error}'**
  String shopsImagePickFailed(String error);

  /// No description provided for @shopsInfo.
  ///
  /// In tr, this message translates to:
  /// **'Bilgiler'**
  String get shopsInfo;

  /// No description provided for @shopsInfoBanner.
  ///
  /// In tr, this message translates to:
  /// **'Bu dükkanlarda Umre Rehberim misafiri olduğunuzu QR kodla gösterip indirim alabilirsiniz.'**
  String get shopsInfoBanner;

  /// No description provided for @shopsInvalid.
  ///
  /// In tr, this message translates to:
  /// **'Geçersiz'**
  String get shopsInvalid;

  /// No description provided for @shopsLatLngBoth.
  ///
  /// In tr, this message translates to:
  /// **'Enlem ve boylamın ikisini de girin ya da ikisini de boş bırakın.'**
  String get shopsLatLngBoth;

  /// No description provided for @shopsLatitude.
  ///
  /// In tr, this message translates to:
  /// **'Enlem'**
  String get shopsLatitude;

  /// No description provided for @shopsLinkOpenFailed.
  ///
  /// In tr, this message translates to:
  /// **'Bağlantı açılamadı.'**
  String get shopsLinkOpenFailed;

  /// No description provided for @shopsListView.
  ///
  /// In tr, this message translates to:
  /// **'Liste'**
  String get shopsListView;

  /// No description provided for @shopsLoadFailed.
  ///
  /// In tr, this message translates to:
  /// **'Dükkanlar yüklenemedi. İnternet bağlantınızı kontrol edin.'**
  String get shopsLoadFailed;

  /// No description provided for @shopsLocFailed.
  ///
  /// In tr, this message translates to:
  /// **'Konum alınamadı.'**
  String get shopsLocFailed;

  /// No description provided for @shopsLocPermissionDenied.
  ///
  /// In tr, this message translates to:
  /// **'Konum izni verilmedi.'**
  String get shopsLocPermissionDenied;

  /// No description provided for @shopsLocServiceOff.
  ///
  /// In tr, this message translates to:
  /// **'Konum servisi kapalı.'**
  String get shopsLocServiceOff;

  /// No description provided for @shopsLocation.
  ///
  /// In tr, this message translates to:
  /// **'Konum'**
  String get shopsLocation;

  /// No description provided for @shopsLogo.
  ///
  /// In tr, this message translates to:
  /// **'Logo'**
  String get shopsLogo;

  /// No description provided for @shopsLogoAdded.
  ///
  /// In tr, this message translates to:
  /// **'Logo eklendi ({size} KB).'**
  String shopsLogoAdded(int size);

  /// No description provided for @shopsLogoTooLarge.
  ///
  /// In tr, this message translates to:
  /// **'Logo çok büyük ({size} KB). Daha küçük bir görsel seçin.'**
  String shopsLogoTooLarge(int size);

  /// No description provided for @shopsLongitude.
  ///
  /// In tr, this message translates to:
  /// **'Boylam'**
  String get shopsLongitude;

  /// No description provided for @shopsMapView.
  ///
  /// In tr, this message translates to:
  /// **'Harita'**
  String get shopsMapView;

  /// No description provided for @shopsMerchantCode.
  ///
  /// In tr, this message translates to:
  /// **'Esnaf kodu: {code}  (esnaf paneli için)'**
  String shopsMerchantCode(String code);

  /// No description provided for @shopsMissingLocation.
  ///
  /// In tr, this message translates to:
  /// **'{count} dükkanın konumu girilmemiş, haritada görünmüyor.'**
  String shopsMissingLocation(int count);

  /// No description provided for @shopsNameMissing.
  ///
  /// In tr, this message translates to:
  /// **'Ad gerekli'**
  String get shopsNameMissing;

  /// No description provided for @shopsNameRequired.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan adı *'**
  String get shopsNameRequired;

  /// No description provided for @shopsNoMatch.
  ///
  /// In tr, this message translates to:
  /// **'Bu filtreye uygun dükkan yok.'**
  String get shopsNoMatch;

  /// No description provided for @shopsOrderSaveFailed.
  ///
  /// In tr, this message translates to:
  /// **'Sıralama kaydedilemedi: {error}'**
  String shopsOrderSaveFailed(String error);

  /// No description provided for @shopsPercent.
  ///
  /// In tr, this message translates to:
  /// **'%{percent}'**
  String shopsPercent(int percent);

  /// No description provided for @shopsPhone.
  ///
  /// In tr, this message translates to:
  /// **'Telefon'**
  String get shopsPhone;

  /// No description provided for @shopsPickerHint.
  ///
  /// In tr, this message translates to:
  /// **'Haritada dükkanın yerine dokunarak iğne bırakın.'**
  String get shopsPickerHint;

  /// No description provided for @shopsPublishSection.
  ///
  /// In tr, this message translates to:
  /// **'Yayın'**
  String get shopsPublishSection;

  /// No description provided for @shopsQrExplain.
  ///
  /// In tr, this message translates to:
  /// **'Dükkanın \"bizden geldi\" kodu. Misafir indirim ekranında bu QR\'ı gösterir. Boş bırakılırsa misafire özel doğrulama kodu üretilir.'**
  String get shopsQrExplain;

  /// No description provided for @shopsQrManual.
  ///
  /// In tr, this message translates to:
  /// **'Elle gir (metin ya da bağlantı)'**
  String get shopsQrManual;

  /// No description provided for @shopsQrScanHint.
  ///
  /// In tr, this message translates to:
  /// **'Dükkanın QR kodunu çerçevenin içine getirin.'**
  String get shopsQrScanHint;

  /// No description provided for @shopsQrScanTitle.
  ///
  /// In tr, this message translates to:
  /// **'QR Kodu Okut'**
  String get shopsQrScanTitle;

  /// No description provided for @shopsQrScanWithCamera.
  ///
  /// In tr, this message translates to:
  /// **'Kameradan okut'**
  String get shopsQrScanWithCamera;

  /// No description provided for @shopsQrScanned.
  ///
  /// In tr, this message translates to:
  /// **'QR kodu okundu.'**
  String get shopsQrScanned;

  /// No description provided for @shopsQrSection.
  ///
  /// In tr, this message translates to:
  /// **'QR Kodu'**
  String get shopsQrSection;

  /// No description provided for @shopsRemove.
  ///
  /// In tr, this message translates to:
  /// **'Kaldır'**
  String get shopsRemove;

  /// No description provided for @shopsRemoveLocation.
  ///
  /// In tr, this message translates to:
  /// **'Konumu kaldır'**
  String get shopsRemoveLocation;

  /// No description provided for @shopsReorderHint.
  ///
  /// In tr, this message translates to:
  /// **'Sıralamak için sağdaki tutamaçtan sürükleyin.'**
  String get shopsReorderHint;

  /// No description provided for @shopsSaveFailed.
  ///
  /// In tr, this message translates to:
  /// **'Kaydedilemedi: {error}'**
  String shopsSaveFailed(String error);

  /// No description provided for @shopsSaving.
  ///
  /// In tr, this message translates to:
  /// **'Kaydediliyor...'**
  String get shopsSaving;

  /// No description provided for @shopsSearchHint.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan ara'**
  String get shopsSearchHint;

  /// No description provided for @shopsSelectAgency.
  ///
  /// In tr, this message translates to:
  /// **'Bir acente seçin ya da \"Tüm acentelere açık\" seçeneğini açın.'**
  String get shopsSelectAgency;

  /// No description provided for @shopsSharedSection.
  ///
  /// In tr, this message translates to:
  /// **'Tüm acentelere açık (süper admin yönetir)'**
  String get shopsSharedSection;

  /// No description provided for @shopsShowMyCode.
  ///
  /// In tr, this message translates to:
  /// **'İndirim Kodumu Göster'**
  String get shopsShowMyCode;

  /// No description provided for @shopsSpecialPrice.
  ///
  /// In tr, this message translates to:
  /// **'ÖZEL FİYAT'**
  String get shopsSpecialPrice;

  /// No description provided for @shopsSpecialPriceLower.
  ///
  /// In tr, this message translates to:
  /// **'Özel fiyat'**
  String get shopsSpecialPriceLower;

  /// No description provided for @shopsTitle.
  ///
  /// In tr, this message translates to:
  /// **'Anlaşmalı Dükkanlar'**
  String get shopsTitle;

  /// No description provided for @shopsTorch.
  ///
  /// In tr, this message translates to:
  /// **'Fener'**
  String get shopsTorch;

  /// No description provided for @shopsUpdateFailed.
  ///
  /// In tr, this message translates to:
  /// **'Güncellenemedi: {error}'**
  String shopsUpdateFailed(String error);

  /// No description provided for @shopsUpdated.
  ///
  /// In tr, this message translates to:
  /// **'Dükkan güncellendi.'**
  String get shopsUpdated;

  /// No description provided for @shopsUseMyLocation.
  ///
  /// In tr, this message translates to:
  /// **'Şu anki konumumu kullan'**
  String get shopsUseMyLocation;

  /// No description provided for @shopsWhatsappHint.
  ///
  /// In tr, this message translates to:
  /// **'Ülke koduyla, ör. 9665xxxxxxxx'**
  String get shopsWhatsappHint;

  /// No description provided for @shopsWorkingHours.
  ///
  /// In tr, this message translates to:
  /// **'Çalışma saatleri'**
  String get shopsWorkingHours;

  /// No description provided for @shopsWorkingHoursHint.
  ///
  /// In tr, this message translates to:
  /// **'ör. 09:00 - 23:00'**
  String get shopsWorkingHoursHint;

  /// No description provided for @simApproximate.
  ///
  /// In tr, this message translates to:
  /// **'{place} (yaklaşık)'**
  String simApproximate(String place);

  /// No description provided for @simAutoPlay.
  ///
  /// In tr, this message translates to:
  /// **'Otomatik oynat'**
  String get simAutoPlay;

  /// No description provided for @simCircuit.
  ///
  /// In tr, this message translates to:
  /// **'Şavt'**
  String get simCircuit;

  /// No description provided for @simContinue.
  ///
  /// In tr, this message translates to:
  /// **'Devam et'**
  String get simContinue;

  /// No description provided for @simFirstThreeRaml.
  ///
  /// In tr, this message translates to:
  /// **'İlk 3 şavt: erkekler remel yapar'**
  String get simFirstThreeRaml;

  /// No description provided for @simIstilam.
  ///
  /// In tr, this message translates to:
  /// **'İstilam'**
  String get simIstilam;

  /// No description provided for @simNext.
  ///
  /// In tr, this message translates to:
  /// **'Sonraki'**
  String get simNext;

  /// No description provided for @simNormalWalk.
  ///
  /// In tr, this message translates to:
  /// **'Normal yürüyüş'**
  String get simNormalWalk;

  /// No description provided for @simPause.
  ///
  /// In tr, this message translates to:
  /// **'Duraklat'**
  String get simPause;

  /// No description provided for @simPrayBehindMaqam.
  ///
  /// In tr, this message translates to:
  /// **'Makam-ı İbrahim arkasında 2 rekât tavaf namazı kılınır.'**
  String get simPrayBehindMaqam;

  /// No description provided for @simPrevious.
  ///
  /// In tr, this message translates to:
  /// **'Önceki'**
  String get simPrevious;

  /// No description provided for @simReplay.
  ///
  /// In tr, this message translates to:
  /// **'Baştan oynat'**
  String get simReplay;

  /// No description provided for @simReset.
  ///
  /// In tr, this message translates to:
  /// **'Sıfırla'**
  String get simReset;

  /// No description provided for @simRouteTitle.
  ///
  /// In tr, this message translates to:
  /// **'Umre Rota Simülasyonu'**
  String get simRouteTitle;

  /// No description provided for @simSaiDuas.
  ///
  /// In tr, this message translates to:
  /// **'Sa\'y Duaları'**
  String get simSaiDuas;

  /// No description provided for @simSaiLap.
  ///
  /// In tr, this message translates to:
  /// **'Sa\'y: {lap}. şavt'**
  String simSaiLap(int lap);

  /// No description provided for @simSevenCircuitsDone.
  ///
  /// In tr, this message translates to:
  /// **'7 şavt tamamlandı'**
  String get simSevenCircuitsDone;

  /// No description provided for @simSpeed.
  ///
  /// In tr, this message translates to:
  /// **'{speed}x'**
  String simSpeed(String speed);

  /// No description provided for @simStart.
  ///
  /// In tr, this message translates to:
  /// **'Başlat'**
  String get simStart;

  /// No description provided for @simStartOver.
  ///
  /// In tr, this message translates to:
  /// **'Baştan başlat'**
  String get simStartOver;

  /// No description provided for @simStepOf.
  ///
  /// In tr, this message translates to:
  /// **'Adım {step}/{total}'**
  String simStepOf(int step, int total);

  /// No description provided for @simStop.
  ///
  /// In tr, this message translates to:
  /// **'Durdur'**
  String get simStop;

  /// No description provided for @simSupplicationToRecite.
  ///
  /// In tr, this message translates to:
  /// **'Okunacak dua'**
  String get simSupplicationToRecite;

  /// No description provided for @simTawafCompleted.
  ///
  /// In tr, this message translates to:
  /// **'Tavaf tamamlandı'**
  String get simTawafCompleted;

  /// No description provided for @simTawafDuas.
  ///
  /// In tr, this message translates to:
  /// **'Tavaf Duaları'**
  String get simTawafDuas;

  /// No description provided for @simTawafEssentials.
  ///
  /// In tr, this message translates to:
  /// **'Tavafta bilinmesi gerekenler'**
  String get simTawafEssentials;

  /// No description provided for @simTawafSource.
  ///
  /// In tr, this message translates to:
  /// **'Kaynak: Diyanet İşleri Başkanlığı hac ve umre yayınları; Bakara 2/201.'**
  String get simTawafSource;

  /// No description provided for @simThingsToNote.
  ///
  /// In tr, this message translates to:
  /// **'Dikkat edilecekler'**
  String get simThingsToNote;

  /// No description provided for @simWhatToDo.
  ///
  /// In tr, this message translates to:
  /// **'Ne yapılır?'**
  String get simWhatToDo;

  /// No description provided for @telsizAllAgency.
  ///
  /// In tr, this message translates to:
  /// **'Tüm acente'**
  String get telsizAllAgency;

  /// No description provided for @telsizBroadcastGroup.
  ///
  /// In tr, this message translates to:
  /// **'Yayın yapılacak grup'**
  String get telsizBroadcastGroup;

  /// No description provided for @telsizCheckInternet.
  ///
  /// In tr, this message translates to:
  /// **'İnternet bağlantınızı kontrol edin.'**
  String get telsizCheckInternet;

  /// No description provided for @telsizConnectFailed.
  ///
  /// In tr, this message translates to:
  /// **'Bağlantı kurulamadı. Lütfen tekrar deneyin.'**
  String get telsizConnectFailed;

  /// No description provided for @telsizConnecting.
  ///
  /// In tr, this message translates to:
  /// **'Bağlanıyor…'**
  String get telsizConnecting;

  /// No description provided for @telsizConnectionLost.
  ///
  /// In tr, this message translates to:
  /// **'Bağlantı koptu, yeniden bağlanıyor…'**
  String get telsizConnectionLost;

  /// No description provided for @telsizDuplicateIdentity.
  ///
  /// In tr, this message translates to:
  /// **'Bu hesapla başka bir cihazdan bağlanıldı.'**
  String get telsizDuplicateIdentity;

  /// No description provided for @telsizDuration.
  ///
  /// In tr, this message translates to:
  /// **'Süre'**
  String get telsizDuration;

  /// No description provided for @telsizEnd.
  ///
  /// In tr, this message translates to:
  /// **'Bitir'**
  String get telsizEnd;

  /// No description provided for @telsizEndBroadcast.
  ///
  /// In tr, this message translates to:
  /// **'Yayını Bitir'**
  String get telsizEndBroadcast;

  /// No description provided for @telsizEndBroadcastConfirm.
  ///
  /// In tr, this message translates to:
  /// **'Canlı yayın sona erecek. Emin misiniz?'**
  String get telsizEndBroadcastConfirm;

  /// No description provided for @telsizEndBroadcastTitle.
  ///
  /// In tr, this message translates to:
  /// **'Yayını bitir'**
  String get telsizEndBroadcastTitle;

  /// No description provided for @telsizEnded.
  ///
  /// In tr, this message translates to:
  /// **'Yayın sona erdi'**
  String get telsizEnded;

  /// No description provided for @telsizGuest.
  ///
  /// In tr, this message translates to:
  /// **'Misafir'**
  String get telsizGuest;

  /// No description provided for @telsizGuide.
  ///
  /// In tr, this message translates to:
  /// **'Rehber'**
  String get telsizGuide;

  /// No description provided for @telsizGuideHint.
  ///
  /// In tr, this message translates to:
  /// **'Ekranı kapatsanız da yayın sürer. Yayını bitirmeyi unutmayın; misafirleriniz yalnızca dinler, konuşamaz.'**
  String get telsizGuideHint;

  /// No description provided for @telsizGuideNotLive.
  ///
  /// In tr, this message translates to:
  /// **'Rehberiniz şu an yayında değil'**
  String get telsizGuideNotLive;

  /// No description provided for @telsizGuideNotLiveBody.
  ///
  /// In tr, this message translates to:
  /// **'Rehberiniz telsiz yayını başlattığında burada görünecek. Gezilerde ve kalabalık alanlarda rehberinizi buradan canlı dinleyebilirsiniz.'**
  String get telsizGuideNotLiveBody;

  /// No description provided for @telsizGuideVoice.
  ///
  /// In tr, this message translates to:
  /// **'Rehberin sesi'**
  String get telsizGuideVoice;

  /// No description provided for @telsizListen.
  ///
  /// In tr, this message translates to:
  /// **'Dinle'**
  String get telsizListen;

  /// No description provided for @telsizListenerHint.
  ///
  /// In tr, this message translates to:
  /// **'Kulaklık takmanız önerilir. Ekran kapalıyken de dinlemeye devam edebilirsiniz.'**
  String get telsizListenerHint;

  /// No description provided for @telsizListeners.
  ///
  /// In tr, this message translates to:
  /// **'Dinleyici'**
  String get telsizListeners;

  /// No description provided for @telsizListening.
  ///
  /// In tr, this message translates to:
  /// **'Dinleniyor'**
  String get telsizListening;

  /// No description provided for @telsizLiveBadge.
  ///
  /// In tr, this message translates to:
  /// **'CANLI'**
  String get telsizLiveBadge;

  /// No description provided for @telsizLiveNow.
  ///
  /// In tr, this message translates to:
  /// **'Canlı yayında'**
  String get telsizLiveNow;

  /// No description provided for @telsizLoginRequired.
  ///
  /// In tr, this message translates to:
  /// **'Telsiz için giriş yapmalısınız.'**
  String get telsizLoginRequired;

  /// No description provided for @telsizMicLevel.
  ///
  /// In tr, this message translates to:
  /// **'Mikrofon seviyesi'**
  String get telsizMicLevel;

  /// No description provided for @telsizMicPermanentlyDenied.
  ///
  /// In tr, this message translates to:
  /// **'Mikrofon izni kapalı. Ayarlardan mikrofon iznini açın.'**
  String get telsizMicPermanentlyDenied;

  /// No description provided for @telsizMicRequired.
  ///
  /// In tr, this message translates to:
  /// **'Yayın için mikrofon izni gerekli.'**
  String get telsizMicRequired;

  /// No description provided for @telsizMute.
  ///
  /// In tr, this message translates to:
  /// **'Sesi Kapat'**
  String get telsizMute;

  /// No description provided for @telsizNoAgency.
  ///
  /// In tr, this message translates to:
  /// **'Acente bilgisi bulunamadı.'**
  String get telsizNoAgency;

  /// No description provided for @telsizNoAgencyHint.
  ///
  /// In tr, this message translates to:
  /// **'Telsiz, acentenize bağlı hesaplarda kullanılabilir.'**
  String get telsizNoAgencyHint;

  /// No description provided for @telsizNoInternet.
  ///
  /// In tr, this message translates to:
  /// **'İnternet bağlantısı yok veya sunucuya ulaşılamıyor.'**
  String get telsizNoInternet;

  /// No description provided for @telsizNoPermission.
  ///
  /// In tr, this message translates to:
  /// **'Telsiz için yetkiniz yok.'**
  String get telsizNoPermission;

  /// No description provided for @telsizNotConfiguredBody.
  ///
  /// In tr, this message translates to:
  /// **'Canlı ses sunucusu bilgileri henüz girilmedi. Lütfen teknik destek ile iletişime geçin.'**
  String get telsizNotConfiguredBody;

  /// No description provided for @telsizNotConfiguredError.
  ///
  /// In tr, this message translates to:
  /// **'Telsiz yapılandırılmadı.'**
  String get telsizNotConfiguredError;

  /// No description provided for @telsizNotConfiguredTitle.
  ///
  /// In tr, this message translates to:
  /// **'Telsiz yapılandırılmadı'**
  String get telsizNotConfiguredTitle;

  /// No description provided for @telsizNotConnected.
  ///
  /// In tr, this message translates to:
  /// **'Bağlı değil'**
  String get telsizNotConnected;

  /// No description provided for @telsizNotifBroadcastText.
  ///
  /// In tr, this message translates to:
  /// **'Misafirleriniz sizi dinliyor. Bitirmek için uygulamaya dönün.'**
  String get telsizNotifBroadcastText;

  /// No description provided for @telsizNotifBroadcastTitle.
  ///
  /// In tr, this message translates to:
  /// **'Telsiz yayında – Rehber'**
  String get telsizNotifBroadcastTitle;

  /// No description provided for @telsizNotifGuestsListening.
  ///
  /// In tr, this message translates to:
  /// **'Misafirleriniz sizi dinliyor.'**
  String get telsizNotifGuestsListening;

  /// No description provided for @telsizNotifListeningText.
  ///
  /// In tr, this message translates to:
  /// **'{name} yayını. Kapatmak için uygulamaya dönün.'**
  String telsizNotifListeningText(String name);

  /// No description provided for @telsizNotifListeningTitle.
  ///
  /// In tr, this message translates to:
  /// **'Telsiz dinleniyor'**
  String get telsizNotifListeningTitle;

  /// No description provided for @telsizNotifMicOff.
  ///
  /// In tr, this message translates to:
  /// **'Mikrofon kapalı.'**
  String get telsizNotifMicOff;

  /// No description provided for @telsizOffAir.
  ///
  /// In tr, this message translates to:
  /// **'Yayında değilsiniz'**
  String get telsizOffAir;

  /// No description provided for @telsizOnAir.
  ///
  /// In tr, this message translates to:
  /// **'Yayındasınız'**
  String get telsizOnAir;

  /// No description provided for @telsizOnAirMuted.
  ///
  /// In tr, this message translates to:
  /// **'Yayında – mikrofon kapalı'**
  String get telsizOnAirMuted;

  /// No description provided for @telsizReconnecting.
  ///
  /// In tr, this message translates to:
  /// **'Bağlantı yeniden kuruluyor…'**
  String get telsizReconnecting;

  /// No description provided for @telsizServerDenied.
  ///
  /// In tr, this message translates to:
  /// **'Telsiz sunucusundan izin alınamadı ({code}).'**
  String telsizServerDenied(int code);

  /// No description provided for @telsizStartBroadcast.
  ///
  /// In tr, this message translates to:
  /// **'Yayını Başlat'**
  String get telsizStartBroadcast;

  /// No description provided for @telsizStatusError.
  ///
  /// In tr, this message translates to:
  /// **'Yayın bilgisi alınamadı.'**
  String get telsizStatusError;

  /// No description provided for @telsizStatusSaveDenied.
  ///
  /// In tr, this message translates to:
  /// **'Yayın durumu kaydedilemedi: yetki yok.'**
  String get telsizStatusSaveDenied;

  /// No description provided for @telsizStop.
  ///
  /// In tr, this message translates to:
  /// **'Durdur'**
  String get telsizStop;

  /// No description provided for @telsizTitle.
  ///
  /// In tr, this message translates to:
  /// **'Telsiz'**
  String get telsizTitle;

  /// No description provided for @telsizToAllAgency.
  ///
  /// In tr, this message translates to:
  /// **'Tüm acenteye yayın'**
  String get telsizToAllAgency;

  /// No description provided for @telsizToYourTrip.
  ///
  /// In tr, this message translates to:
  /// **'Seferinize yayın'**
  String get telsizToYourTrip;

  /// No description provided for @telsizTrip.
  ///
  /// In tr, this message translates to:
  /// **'Sefer'**
  String get telsizTrip;

  /// No description provided for @telsizUnmute.
  ///
  /// In tr, this message translates to:
  /// **'Sesi Aç'**
  String get telsizUnmute;

  /// No description provided for @telsizVolumeKeysHint.
  ///
  /// In tr, this message translates to:
  /// **'Telefonunuzun ses tuşlarını da kullanabilirsiniz.'**
  String get telsizVolumeKeysHint;

  /// No description provided for @telsizWaitingGuide.
  ///
  /// In tr, this message translates to:
  /// **'Bağlandı, rehberin sesi bekleniyor…'**
  String get telsizWaitingGuide;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en', 'tr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'tr':
      return AppLocalizationsTr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}

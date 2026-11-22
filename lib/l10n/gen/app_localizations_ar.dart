// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get adminActive => 'نشط';

  @override
  String get adminAdd => 'إضافة';

  @override
  String get adminAddress => 'العنوان';

  @override
  String get adminAgencies => 'الوكالات';

  @override
  String get adminAgencyActive => 'الوكالات النشطة';

  @override
  String get adminAgencyAddTitle => 'إضافة وكالة جديدة';

  @override
  String get adminAgencyCreateFailed => 'تعذّر إنشاء الوكالة';

  @override
  String get adminAgencyCreated => 'تم إنشاء الوكالة';

  @override
  String get adminAgencyDelete => 'حذف الوكالة';

  @override
  String adminAgencyDeleteConfirm(String name) {
    return 'هل أنت متأكد أنك تريد حذف الوكالة \"$name\"؟\n\nلا يمكن التراجع عن هذا الإجراء وقد تتأثر البيانات المرتبطة بالوكالة.';
  }

  @override
  String get adminAgencyDeleteFailed => 'تعذّر حذف الوكالة';

  @override
  String get adminAgencyDeleted => 'تم حذف الوكالة';

  @override
  String get adminAgencyDetail => 'تفاصيل الوكالة';

  @override
  String get adminAgencyEdit => 'تعديل الوكالة';

  @override
  String get adminAgencyEmpty => 'لم تتم إضافة أي وكالة بعد';

  @override
  String adminAgencyLabel(String name) {
    return 'الوكالة: $name';
  }

  @override
  String get adminAgencyLoadFailed => 'تعذّر تحميل الوكالات';

  @override
  String get adminAgencyNameMissing => 'اسم الوكالة مطلوب';

  @override
  String get adminAgencyNameRequired => 'اسم الوكالة *';

  @override
  String get adminAgencyNew => 'وكالة جديدة';

  @override
  String get adminAgencyNotFound => 'لم يتم العثور على الوكالة';

  @override
  String get adminAgencyRequired => 'الوكالة *';

  @override
  String adminAgencySummary(int users, int trips, int hotels, int currencies) {
    return '$users أشخاص • $trips رحلات • $hotels فنادق • $currencies عملات';
  }

  @override
  String get adminAgencyTotal => 'إجمالي الوكالات';

  @override
  String get adminAgencyUpdateFailed => 'تعذّر تحديث الوكالة';

  @override
  String get adminAgencyUpdated => 'تم تحديث الوكالة';

  @override
  String get adminAllTrips => 'جميع الرحلات';

  @override
  String adminAnalyticsAssignedGuests(int assigned, int total) {
    return '$assigned / $total من الضيوف معيّنون لرحلة';
  }

  @override
  String get adminAnalyticsAssignment => 'حالة التعيين';

  @override
  String get adminAnalyticsGender => 'توزيع الضيوف حسب الجنس';

  @override
  String get adminAnalyticsOverview => 'نظرة عامة';

  @override
  String get adminAreYouSure => 'هل أنت متأكد؟';

  @override
  String get adminAssignFailed => 'تعذّر حفظ التعيين';

  @override
  String adminAssignGenderMismatch(String gender) {
    return 'هذه الغرفة مخصصة لـ$gender! الجنس غير متوافق.';
  }

  @override
  String adminAssignHotel(String city) {
    return 'فندق $city';
  }

  @override
  String adminAssignRoom(String city) {
    return 'غرفة $city';
  }

  @override
  String get adminAssignRoomFull => 'الغرفة ممتلئة! اختر غرفة أخرى.';

  @override
  String get adminAssignRoomRequired => 'يجب اختيار غرفة عند اختيار فندق.';

  @override
  String adminAssignTitle(String city) {
    return 'التعيين في $city';
  }

  @override
  String adminAssignTrip(String city) {
    return 'رحلة $city';
  }

  @override
  String get adminAssignUpdated => 'تم تحديث التعيين';

  @override
  String get adminBirthDate => 'تاريخ الميلاد';

  @override
  String get adminCapacityInvalid => 'أدخل سعة صالحة';

  @override
  String get adminCapacityRequired => 'السعة *';

  @override
  String get adminCityJeddah => 'جدة';

  @override
  String get adminCityOther => 'أخرى';

  @override
  String get adminCurrencyAdd => 'إضافة عملة';

  @override
  String get adminCurrencyAddFailed => 'تعذّرت إضافة العملة';

  @override
  String get adminCurrencyAddTitle => 'إضافة عملة جديدة';

  @override
  String get adminCurrencyAdded => 'تمت إضافة العملة';

  @override
  String get adminCurrencyDelete => 'حذف العملة';

  @override
  String adminCurrencyDeleteConfirm(String name) {
    return 'هل أنت متأكد أنك تريد حذف $name؟';
  }

  @override
  String get adminCurrencyDeleteFailed => 'تعذّر حذف العملة';

  @override
  String get adminCurrencyDeleted => 'تم حذف العملة';

  @override
  String get adminCurrencyEdit => 'تعديل العملة';

  @override
  String get adminCurrencyEmpty => 'لم تتم إضافة أي عملة بعد.';

  @override
  String get adminCurrencyFlag => 'العلم';

  @override
  String get adminCurrencyLoadFailed => 'تعذّر تحميل أسعار الصرف';

  @override
  String get adminCurrencyName => 'الرمز (USD، EUR...)';

  @override
  String get adminCurrencyQuickAdd => 'إضافة سريعة';

  @override
  String get adminCurrencyTab => 'العملات';

  @override
  String get adminCurrencyUpdateFailed => 'تعذّر تحديث العملة';

  @override
  String get adminCurrencyUpdated => 'تم تحديث العملة';

  @override
  String get adminCurrencyValue => 'القيمة (₺)';

  @override
  String get adminCurrencyValueInvalid => 'أدخل قيمة صالحة';

  @override
  String get adminDataLoadFailed => 'حدث خطأ أثناء تحميل البيانات';

  @override
  String get adminDateHint => 'يوم/شهر/سنة';

  @override
  String get adminDateInvalid => 'أدخل تاريخًا صالحًا (يوم/شهر/سنة)';

  @override
  String get adminDescription => 'الوصف';

  @override
  String get adminDetail => 'التفاصيل';

  @override
  String get adminDurationMin => 'المدة (دقيقة)';

  @override
  String get adminEmail => 'البريد الإلكتروني';

  @override
  String get adminEndDate => 'النهاية';

  @override
  String get adminEsnafAccountActive => 'حساب التاجر مفعل';

  @override
  String get adminEsnafAccountNone =>
      'لا يوجد حساب تاجر لهذا المتجر. بعد فتح الحساب يدخل التاجر بالرمز والرقم السري، ويسجل البيع المخفض بمسح رمز QR الخاص بالضيف.';

  @override
  String get adminEsnafAccountSection => 'حساب التاجر';

  @override
  String adminEsnafAlertBigTx(String guest, String shop, String amount) {
    return '$guest – $shop: $amount في عملية واحدة';
  }

  @override
  String adminEsnafAlertManyTx(
    String guest,
    String shop,
    String date,
    int count,
  ) {
    return '$guest – $shop: $count عمليات بتاريخ $date';
  }

  @override
  String adminEsnafAlertQuickCancel(String guest, String shop, String amount) {
    return '$guest – $shop: أُلغيت عملية بقيمة $amount خلال 24 ساعة';
  }

  @override
  String get adminEsnafAlerts => 'تنبيهات';

  @override
  String get adminEsnafBadgeNo => 'لا يوجد حساب تاجر';

  @override
  String get adminEsnafBadgeYes => 'حساب تاجر مفعل';

  @override
  String get adminEsnafByShop => 'حسب المتجر';

  @override
  String get adminEsnafCancelDone => 'تم إلغاء العملية';

  @override
  String get adminEsnafCancelReason => 'سبب الإلغاء';

  @override
  String adminEsnafCancelReasonLabel(String reason) {
    return 'السبب: $reason';
  }

  @override
  String get adminEsnafCancelReasonRequired => 'أدخل السبب';

  @override
  String get adminEsnafCancelTx => 'إلغاء العملية';

  @override
  String get adminEsnafCancelled => 'ملغاة';

  @override
  String get adminEsnafClose => 'إغلاق الحساب';

  @override
  String adminEsnafCloseConfirm(String name) {
    return 'هل تريد إغلاق حساب التاجر لـ $name؟ لن يتمكن التاجر من الدخول بعد ذلك.';
  }

  @override
  String get adminEsnafClosed => 'تم إغلاق حساب التاجر';

  @override
  String get adminEsnafCode => 'الرمز';

  @override
  String get adminEsnafCodeExists =>
      'هذا الرمز مستخدم في حساب آخر. حاول مرة أخرى.';

  @override
  String adminEsnafCodeLabel(String code) {
    return 'رمز التاجر: $code';
  }

  @override
  String get adminEsnafCommission => 'نسبة العمولة (%)';

  @override
  String get adminEsnafCommissionHint => 'من 0 إلى 30، الفارغ = 0';

  @override
  String get adminEsnafCommissionRange => 'يجب أن تكون العمولة بين 0 و30';

  @override
  String adminEsnafCommissionShort(int percent) {
    return 'عمولة $percent%';
  }

  @override
  String get adminEsnafContinue => 'متابعة';

  @override
  String get adminEsnafCopied => 'تم النسخ';

  @override
  String get adminEsnafCopy => 'نسخ';

  @override
  String get adminEsnafCreate => 'إنشاء حساب تاجر';

  @override
  String get adminEsnafCreated => 'تم إنشاء حساب التاجر';

  @override
  String get adminEsnafCredsTitle => 'بيانات دخول التاجر';

  @override
  String get adminEsnafCredsWarning =>
      'أرسل هذه البيانات إلى التاجر. لن يظهر الرقم السري مرة أخرى.';

  @override
  String get adminEsnafDailyChart => 'صافي المبيعات اليومية (ريال)';

  @override
  String get adminEsnafDone => 'تم';

  @override
  String get adminEsnafEmpty =>
      'لا توجد مشتريات من المتاجر المتعاقدة في هذه الفترة.';

  @override
  String adminEsnafFailed(String error) {
    return 'فشلت العملية: $error';
  }

  @override
  String get adminEsnafLoadFailed => 'تعذر تحميل التقرير. اسحب للأسفل للتحديث.';

  @override
  String adminEsnafLoyaltyInfo(int points, String sar) {
    return 'نقاط الولاء: 1 ريال = $points نقطة، 100 نقطة = $sar ريال';
  }

  @override
  String get adminEsnafMenu => 'تقارير التجار';

  @override
  String get adminEsnafMenuSub => 'مبيعات المتاجر المتعاقدة والعمولة';

  @override
  String get adminEsnafMethodCard => 'بطاقة';

  @override
  String get adminEsnafMethodCash => 'نقداً';

  @override
  String get adminEsnafMethodChart => 'توزيع طرق الدفع';

  @override
  String get adminEsnafMethodPoints => 'نقاط';

  @override
  String get adminEsnafNoAgencyHint =>
      'اختر وكالة لإدارتها من لوحة المشرف العام لعرض التقرير.';

  @override
  String get adminEsnafNoAlerts => 'لا توجد عمليات مشبوهة.';

  @override
  String get adminEsnafPeriod30 => 'آخر 30 يوماً';

  @override
  String get adminEsnafPeriodCustom => 'فترة مخصصة';

  @override
  String get adminEsnafPeriodLastMonth => 'الشهر الماضي';

  @override
  String get adminEsnafPeriodThisMonth => 'هذا الشهر';

  @override
  String get adminEsnafPin => 'الرقم السري';

  @override
  String get adminEsnafPinField => 'رقم سري من 6 أرقام';

  @override
  String get adminEsnafPinInvalid => 'يجب أن يتكون الرقم السري من 6 أرقام';

  @override
  String get adminEsnafPinManual => 'سأدخل الرقم السري بنفسي';

  @override
  String get adminEsnafPinRandom => 'إنشاء رقم سري عشوائي';

  @override
  String adminEsnafRange(String from, String to) {
    return '$from – $to';
  }

  @override
  String get adminEsnafResetConfirm =>
      'سيتم إنشاء رمز ورقم سري جديدين، ولن يعمل الرمز والرقم السري القديمان بعد ذلك. هل تريد المتابعة؟';

  @override
  String get adminEsnafResetPin => 'إعادة تعيين الرقم السري';

  @override
  String get adminEsnafSaveFirst => 'احفظ المتجر أولاً لفتح حساب تاجر.';

  @override
  String get adminEsnafShare => 'مشاركة كشف العمولة';

  @override
  String get adminEsnafShareByShop => 'حسب المتجر:';

  @override
  String get adminEsnafShareCopied => 'تم نسخ كشف العمولة';

  @override
  String get adminEsnafShareHeader => 'كشف عمولة التجار';

  @override
  String adminEsnafShareMessage(String shop, String code, String pin) {
    return 'السلام عليكم\nتم إنشاء حساب التاجر لمتجر $shop في تطبيق Umre Rehberim.\n1) ثبّت تطبيق Umre Rehberim على هاتفك.\n2) افتح التطبيق واختر «تاجر».\n3) الرمز: $code\n4) الرقم السري (PIN): $pin\nلا تشارك الرقم السري مع أحد.\n\nSelamün aleyküm\n$shop için Umre Rehberim esnaf hesabınız açıldı.\n1) Umre Rehberim uygulamasını telefonunuza yükleyin.\n2) Uygulamayı açıp giriş tipi olarak \"Esnaf\"ı seçin.\n3) Kod: $code\n4) PIN: $pin\nPIN\'inizi kimseyle paylaşmayın.';
  }

  @override
  String adminEsnafSharePeriod(String range) {
    return 'الفترة: $range';
  }

  @override
  String adminEsnafShareTotals(int count, String net, String commission) {
    return 'الإجمالي: $count عملية، الصافي $net، العمولة $commission';
  }

  @override
  String get adminEsnafShareWhatsapp => 'مشاركة عبر واتساب';

  @override
  String adminEsnafShopRow(
    int count,
    String net,
    int percent,
    String commission,
  ) {
    return '$count عملية · الصافي $net · $percent% ← $commission';
  }

  @override
  String adminEsnafShowAll(int count) {
    return 'عرض الكل ($count)';
  }

  @override
  String get adminEsnafSumCommission => 'العمولة المستحقة';

  @override
  String get adminEsnafSumCount => 'عدد المشتريات';

  @override
  String get adminEsnafSumDiscount => 'الخصم المقدم للضيوف';

  @override
  String get adminEsnafSumGross => 'إجمالي المبيعات';

  @override
  String get adminEsnafSumNet => 'صافي المبيعات';

  @override
  String get adminEsnafSumPointsEarned => 'النقاط الممنوحة';

  @override
  String get adminEsnafSumPointsSpent => 'النقاط المستخدمة';

  @override
  String get adminEsnafTransactions => 'العمليات';

  @override
  String get adminEsnafWhatsappFailed => 'تعذر فتح واتساب؛ تم نسخ البيانات';

  @override
  String get adminEventAdd => 'إضافة فعالية';

  @override
  String get adminEventAddFailed => 'تعذّرت إضافة الفعالية';

  @override
  String get adminEventAdded => 'تمت إضافة الفعالية';

  @override
  String get adminEventDelete => 'حذف الفعالية';

  @override
  String adminEventDeleteConfirm(String title) {
    return 'هل تريد حذف \"$title\"؟';
  }

  @override
  String get adminEventDeleteFailed => 'تعذّر حذف الفعالية';

  @override
  String get adminEventDeleted => 'تم حذف الفعالية';

  @override
  String get adminEventEdit => 'تعديل الفعالية';

  @override
  String get adminEventEmpty => 'لا توجد فعاليات في هذا اليوم';

  @override
  String get adminEventEmptySub => 'اختر يومًا آخر لعرض الفعاليات';

  @override
  String get adminEventLoadFailed => 'تعذّر تحميل الفعاليات';

  @override
  String get adminEventPast => 'انتهت';

  @override
  String get adminEventUpcoming => 'قادمة';

  @override
  String get adminEventUpdateFailed => 'تعذّر تحديث الفعالية';

  @override
  String get adminEventUpdated => 'تم تحديث الفعالية';

  @override
  String get adminFilterAll => 'الكل';

  @override
  String get adminGender => 'الجنس';

  @override
  String get adminGenderFemale => 'أنثى';

  @override
  String get adminGenderMale => 'ذكر';

  @override
  String get adminGenderMixed => 'مختلط';

  @override
  String get adminGenderRequired => 'الجنس *';

  @override
  String get adminGenderUnspecified => 'غير محدد';

  @override
  String get adminHotelAdd => 'إضافة فندق';

  @override
  String adminHotelCapacityShort(int count) {
    return 'السعة $count';
  }

  @override
  String get adminHotelCreateFailed => 'تعذّر إنشاء الفندق';

  @override
  String get adminHotelCreated => 'تم إنشاء الفندق';

  @override
  String get adminHotelDelete => 'حذف الفندق';

  @override
  String adminHotelDeleteConfirm(String name) {
    return 'هل أنت متأكد أنك تريد حذف الفندق \"$name\" وجميع غرفه؟ لا يمكن التراجع عن هذا الإجراء.';
  }

  @override
  String get adminHotelDeleteFailed => 'تعذّر حذف الفندق';

  @override
  String get adminHotelDeleted => 'تم حذف الفندق';

  @override
  String get adminHotelEdit => 'تعديل الفندق';

  @override
  String get adminHotelEmpty => 'لم تتم إضافة أي فندق بعد.';

  @override
  String get adminHotelNameRequired => 'اسم الفندق *';

  @override
  String get adminHotelUpdateFailed => 'تعذّر تحديث الفندق';

  @override
  String get adminHotelUpdated => 'تم تحديث الفندق';

  @override
  String get adminHotels => 'الفنادق';

  @override
  String get adminInactive => 'غير نشط';

  @override
  String get adminLiveMap => 'خريطة المواقع المباشرة';

  @override
  String get adminLiveMapSub => 'آخر موقع لجميع أفراد وكالتك';

  @override
  String get adminLogout => 'تسجيل الخروج';

  @override
  String get adminLogoutConfirm => 'هل أنت متأكد أنك تريد تسجيل الخروج؟';

  @override
  String get adminMakeActive => 'تفعيل';

  @override
  String get adminMakeInactive => 'إلغاء التفعيل';

  @override
  String get adminManage => 'إدارة';

  @override
  String get adminManagement => 'الإدارة';

  @override
  String get adminMapDirections => 'الاتجاهات في خرائط Google';

  @override
  String get adminMapEveryoneOnMap => 'الجميع على الخريطة';

  @override
  String adminMapLastUpdate(String time) {
    return 'آخر تحديث: $time';
  }

  @override
  String adminMapLatLng(String lat, String lng) {
    return 'خط العرض: $lat  خط الطول: $lng';
  }

  @override
  String get adminMapLoadFailed => 'تعذّر تحميل المواقع. قد لا تملك الصلاحية.';

  @override
  String get adminMapLoading => 'جارٍ تحميل الموقع...';

  @override
  String get adminMapLocation => 'الموقع';

  @override
  String get adminMapNoOneSharing => 'لا أحد يشارك موقعه بعد';

  @override
  String get adminMapNoSharedLocation => 'لا يوجد موقع مُشارك لهذا الشخص.';

  @override
  String get adminMapOpenFailed => 'تعذّر فتح الخريطة';

  @override
  String get adminMapPeopleList => 'قائمة الأشخاص';

  @override
  String get adminMapReadFailed => 'تعذّرت قراءة الموقع.';

  @override
  String get adminMapSelectAgencyHint =>
      'اختر وكالة أولًا لعرض المواقع.\nيمكنك فتح وكالة من صفحة الوكالات عبر زر \"إدارة\".';

  @override
  String get adminMapSelectPerson => 'اختر شخصًا';

  @override
  String get adminMapShowAll => 'عرض الجميع';

  @override
  String adminMapVisiblePeople(int count) {
    return 'الأشخاص الظاهرة مواقعهم ($count)';
  }

  @override
  String get adminMenuAnalytics => 'التحليلات';

  @override
  String get adminMenuAnalyticsSub => 'الإحصاءات والرسوم البيانية';

  @override
  String get adminMenuCalendar => 'التقويم';

  @override
  String get adminMenuCalendarSub => 'إدارة الفعاليات';

  @override
  String get adminMenuCurrency => 'أسعار الصرف';

  @override
  String get adminMenuCurrencySub => 'إدارة أسعار الصرف';

  @override
  String get adminMenuHome => 'الرئيسية';

  @override
  String get adminMenuHomeSub => 'العودة إلى لوحة الإدارة';

  @override
  String get adminMenuHotels => 'الفنادق والغرف';

  @override
  String get adminMenuHotelsSub => 'إدارة الفنادق والغرف';

  @override
  String get adminMenuLiveLocation => 'الموقع المباشر';

  @override
  String get adminMenuLiveLocationSub => 'عرض الضيوف على الخريطة';

  @override
  String get adminMenuNotify => 'إرسال إشعار';

  @override
  String get adminMenuNotifySub => 'إرسال إشعارات إلى المستخدمين';

  @override
  String get adminMenuPeople => 'الأشخاص';

  @override
  String get adminMenuPeopleSub => 'إدارة المستخدمين';

  @override
  String get adminMenuRadio => 'اللاسلكي';

  @override
  String get adminMenuRadioSub => 'بث صوتي مباشر للضيوف';

  @override
  String get adminMenuShops => 'المتاجر المتعاقدة';

  @override
  String get adminMenuShopsSub => 'إدارة المتاجر ذات الخصم';

  @override
  String get adminMenuTracking => 'تتبع الموقع';

  @override
  String get adminMenuTrackingSub => 'إدارة تتبع الموقع';

  @override
  String get adminMenuTrips => 'الرحلات';

  @override
  String get adminMenuTripsSub => 'إدارة الرحلات';

  @override
  String adminMinutes(int count) {
    return '$count د';
  }

  @override
  String get adminNext => 'التالي';

  @override
  String get adminNoAgencySelected => 'لم يتم اختيار وكالة.';

  @override
  String get adminNoDate => 'لا يوجد تاريخ';

  @override
  String get adminNoGuestsYet => 'لا يوجد ضيوف بعد.';

  @override
  String get adminNoResults => 'لا توجد نتائج.';

  @override
  String get adminNotAssigned => 'غير معيّن';

  @override
  String get adminNotSelected => 'غير محدد';

  @override
  String get adminNote => 'ملاحظة';

  @override
  String adminNoteValue(String note) {
    return 'ملاحظة: $note';
  }

  @override
  String get adminNotifyEmpty => 'لم يتم إرسال أي إشعار بعد.';

  @override
  String get adminNotifyHistoryLoadFailed => 'تعذّر تحميل سجل الإشعارات';

  @override
  String get adminNotifyMessage => 'الرسالة';

  @override
  String get adminNotifyNoAgencyHint =>
      'ابدأ بإدارة وكالة أولًا لإرسال الإشعارات.';

  @override
  String get adminNotifyRequired => 'العنوان والرسالة مطلوبان';

  @override
  String get adminNotifySendFailed => 'حدث خطأ أثناء إرسال الإشعار.';

  @override
  String get adminNotifySent => 'الإشعارات المرسلة';

  @override
  String get adminNotifySentOk => 'تم إرسال الإعلان';

  @override
  String get adminNotifyTarget => 'الجهة المستهدفة';

  @override
  String get adminNotifyTargetAll => 'كل الوكالة';

  @override
  String get adminNotifyTargetInvalid => 'يرجى اختيار جهة مستهدفة صالحة.';

  @override
  String get adminNotifyTitle => 'العنوان';

  @override
  String get adminPanelTitle => 'لوحة الإدارة';

  @override
  String adminPeopleRatio(int count, int capacity) {
    return '$count/$capacity أشخاص';
  }

  @override
  String adminPersonCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count شخص',
      many: '$count شخصًا',
      few: '$count أشخاص',
      two: 'شخصان',
      one: 'شخص واحد',
      zero: 'لا أحد',
    );
    return '$_temp0';
  }

  @override
  String get adminPhone => 'الهاتف';

  @override
  String get adminPickDate => 'اختر التاريخ';

  @override
  String get adminPickDay => 'اختر اليوم';

  @override
  String get adminPrevious => 'السابق';

  @override
  String get adminRemove => 'إزالة';

  @override
  String get adminRequired => 'مطلوب';

  @override
  String get adminRequiredField => 'حقل مطلوب';

  @override
  String get adminRoleGuest => 'ضيف';

  @override
  String get adminRoleManager => 'مشرف';

  @override
  String get adminRoleSuperAdmin => 'المشرف العام';

  @override
  String get adminRoomAdd => 'إضافة غرفة';

  @override
  String adminRoomCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count غرفة',
      many: '$count غرفة',
      few: '$count غرف',
      two: 'غرفتان',
      one: 'غرفة واحدة',
      zero: 'لا غرف',
    );
    return '$_temp0';
  }

  @override
  String get adminRoomCreateFailed => 'تعذّر إنشاء الغرفة';

  @override
  String get adminRoomCreated => 'تم إنشاء الغرفة';

  @override
  String get adminRoomDelete => 'حذف الغرفة';

  @override
  String adminRoomDeleteConfirm(String number) {
    return 'سيتم حذف الغرفة رقم $number. هل أنت متأكد؟';
  }

  @override
  String get adminRoomDeleteFailed => 'تعذّر حذف الغرفة';

  @override
  String get adminRoomDeleted => 'تم حذف الغرفة';

  @override
  String get adminRoomEdit => 'تعديل الغرفة';

  @override
  String get adminRoomEmpty => 'لم تتم إضافة غرف لهذا الفندق';

  @override
  String get adminRoomGenderMissing => 'اختر نوع الجنس';

  @override
  String get adminRoomNoOccupants => 'لا يوجد أحد في هذه الغرفة.';

  @override
  String adminRoomNumber(String number) {
    return 'غرفة $number';
  }

  @override
  String get adminRoomNumberMissing => 'أدخل رقم الغرفة';

  @override
  String get adminRoomNumberRequired => 'رقم الغرفة *';

  @override
  String adminRoomOccupancy(int count, int capacity) {
    return '$count/$capacity مشغولة';
  }

  @override
  String adminRoomOccupantsTitle(String number) {
    return 'غرفة $number - النزلاء';
  }

  @override
  String get adminRoomRemoveUser => 'إزالة من الغرفة';

  @override
  String adminRoomRemoveUserConfirm(String name) {
    return 'هل أنت متأكد أنك تريد إزالة $name من هذه الغرفة؟';
  }

  @override
  String get adminRoomUpdateFailed => 'تعذّر تحديث الغرفة';

  @override
  String get adminRoomUpdated => 'تم تحديث الغرفة';

  @override
  String get adminRoomUserRemoveFailed => 'تعذّرت إزالة المستخدم من الغرفة';

  @override
  String adminRoomUserRemoved(String name) {
    return 'تمت إزالة $name من الغرفة';
  }

  @override
  String get adminRooms => 'الغرف';

  @override
  String adminRoomsOfHotel(String name) {
    return '$name - الغرف';
  }

  @override
  String get adminSaving => 'جارٍ الحفظ...';

  @override
  String get adminSearchUser => 'ابحث عن مستخدم...';

  @override
  String get adminSend => 'إرسال';

  @override
  String get adminSending => 'جارٍ الإرسال...';

  @override
  String get adminStartDate => 'البداية';

  @override
  String get adminStatHotel => 'الفنادق';

  @override
  String get adminStatPeople => 'المسجلون';

  @override
  String get adminStatRoom => 'الغرف';

  @override
  String get adminStatTrip => 'الرحلات';

  @override
  String get adminTc => 'رقم الهوية التركية';

  @override
  String get adminTcUnspecified => 'رقم الهوية التركية غير محدد';

  @override
  String adminTcValue(String tc) {
    return 'الهوية: $tc';
  }

  @override
  String get adminTime => 'الوقت';

  @override
  String get adminTitleRequired => 'العنوان *';

  @override
  String get adminTrackingDescription =>
      'عند تفعيل تتبع الموقع، يمكن لضيوفك رؤية موقعك على الخريطة. هذه الميزة مفيدة عندما تعمل مرشدًا لهم.';

  @override
  String get adminTrip => 'الرحلة';

  @override
  String adminTripAssignedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count شخص معيّن',
      many: '$count شخصًا معيّنًا',
      few: '$count أشخاص معيّنون',
      two: 'شخصان معيّنان',
      one: 'شخص واحد معيّن',
      zero: 'لا أحد معيّن',
    );
    return '$_temp0';
  }

  @override
  String get adminTripCreate => 'إنشاء رحلة';

  @override
  String get adminTripCreateFailed => 'تعذّر إنشاء الرحلة';

  @override
  String get adminTripCreated => 'تم إنشاء الرحلة';

  @override
  String get adminTripDelete => 'حذف الرحلة';

  @override
  String adminTripDeleteConfirm(String name) {
    return 'هل أنت متأكد أنك تريد حذف الرحلة \"$name\"؟ لا يمكن التراجع عن هذا الإجراء.';
  }

  @override
  String get adminTripDeleteFailed => 'تعذّر حذف الرحلة';

  @override
  String get adminTripDeleted => 'تم حذف الرحلة';

  @override
  String get adminTripEdit => 'تعديل الرحلة';

  @override
  String get adminTripEmpty => 'لم يتم إنشاء أي رحلة بعد.';

  @override
  String get adminTripEmptySub => 'أنشئ الرحلات وعدّلها واعرضها.';

  @override
  String get adminTripEndBeforeStart =>
      'لا يمكن أن يكون تاريخ النهاية قبل تاريخ البداية';

  @override
  String adminTripManagerLabel(String names) {
    return 'المدير: $names';
  }

  @override
  String adminTripManagersSelected(int count) {
    return 'مديرو الرحلة ($count محدد)';
  }

  @override
  String get adminTripNameRequired => 'اسم الرحلة *';

  @override
  String get adminTripNoLocation => 'لم يُحدد المكان';

  @override
  String get adminTripNoManagers => 'لم يتم العثور على مستخدمين بدور المدير.';

  @override
  String get adminTripUpdateFailed => 'تعذّر تحديث الرحلة';

  @override
  String get adminTripUpdated => 'تم تحديث الرحلة';

  @override
  String get adminUnknown => 'غير معروف';

  @override
  String get adminUnnamed => 'بدون اسم';

  @override
  String get adminUnnamedGuest => 'ضيف بدون اسم';

  @override
  String get adminUpdate => 'تحديث';

  @override
  String get adminUpdating => 'جارٍ التحديث...';

  @override
  String adminUserAccountCreateFailed(String code) {
    return 'تعذّر إنشاء الحساب ($code)';
  }

  @override
  String get adminUserAdd => 'إضافة شخص';

  @override
  String get adminUserAgencyRequired => 'اختيار الوكالة إلزامي';

  @override
  String get adminUserCreate => 'إنشاء شخص';

  @override
  String get adminUserCreateFailed => 'تعذّر إنشاء الشخص';

  @override
  String get adminUserCreateOffline =>
      'لا يوجد اتصال بالإنترنت. تعذّر إنشاء الشخص.';

  @override
  String get adminUserCreated => 'تم إنشاء الشخص';

  @override
  String get adminUserDelete => 'حذف الشخص';

  @override
  String adminUserDeleteConfirm(String name) {
    return 'هل أنت متأكد أنك تريد حذف \"$name\"؟ لا يمكن التراجع عن هذا الإجراء.';
  }

  @override
  String get adminUserDeleteFailed => 'تعذّر حذف الشخص';

  @override
  String get adminUserDeleted => 'تم حذف الشخص';

  @override
  String get adminUserDetail => 'تفاصيل الشخص';

  @override
  String get adminUserEdit => 'تعديل الشخص';

  @override
  String get adminUserEmpty => 'لا يوجد مستخدمون بعد.';

  @override
  String get adminUserNameMissing => 'الاسم الكامل مطلوب';

  @override
  String get adminUserNameRequired => 'الاسم الكامل *';

  @override
  String get adminUserNotFound => 'لم يتم العثور على الشخص.';

  @override
  String get adminUserSearchHint => 'ابحث بالاسم أو رقم الهوية';

  @override
  String get adminUserTcExists => 'يوجد حساب مسجل بهذا الرقم بالفعل.';

  @override
  String get adminUserTcLength => 'يجب أن يتكون رقم الهوية من 11 رقمًا';

  @override
  String get adminUserTcLocked => 'لا يمكن تغيير رقم الهوية';

  @override
  String get adminUserTcMissing => 'رقم الهوية مطلوب';

  @override
  String get adminUserTcRequired => 'رقم الهوية التركية *';

  @override
  String get adminUserType => 'نوع المستخدم';

  @override
  String get adminUserUpdateFailed => 'تعذّر حفظ بيانات المستخدم';

  @override
  String get adminUserUpdated => 'تم تحديث بيانات المستخدم';

  @override
  String get adminWelcome => 'أهلًا بك';

  @override
  String adminWelcomeName(String name) {
    return 'أهلًا بك، $name';
  }

  @override
  String get appTitle => 'دليل العمرة';

  @override
  String get authAccountIsAdmin => 'هذا حساب مشرف.';

  @override
  String get authAccountIsGuest => 'هذا حساب معتمر.';

  @override
  String get authAdmin => 'مشرف';

  @override
  String get authFieldRequired => 'لا يمكن ترك هذا الحقل فارغًا';

  @override
  String get authGreeting => 'السلام عليكم!';

  @override
  String get authGuest => 'ضيف';

  @override
  String get authKvkkAbroadBody =>
      'قد تُخزَّن البيانات على خوادم آمنة خارج البلاد عبر خدمتي Google Firebase وCloudflare، ويتم هذا النقل مع اتخاذ التدابير الفنية والإدارية المتوافقة مع قانون KVKK.';

  @override
  String get authKvkkAbroadTitle => 'نقل البيانات إلى خارج البلاد:';

  @override
  String get authKvkkAccept => 'أوافق';

  @override
  String get authKvkkCheckbox => 'قرأت إشعار الخصوصية (KVKK) وأوافق عليه';

  @override
  String get authKvkkControllerTitle => 'المسؤول عن البيانات:';

  @override
  String get authKvkkDataBody =>
      'الهوية (الاسم، اللقب، رقم الهوية التركية)، الاتصال (رقم الهاتف)، البيانات الديموغرافية (الجنس، العمر)، الموقع (لحظيًا وطوال مدة استخدام التطبيق)، بيانات استخدام التطبيق.';

  @override
  String get authKvkkDataTitle => 'البيانات الشخصية التي تتم معالجتها:';

  @override
  String get authKvkkLocationBody =>
      'يتم تتبع الموقع أثناء تشغيل التطبيق فقط، ولا يتم التتبع في الخلفية أو بعد الخروج. وهو ضروري لسلامة المستخدم ولخدمة الإرشاد. في حال عدم منح الإذن قد لا تعمل بعض الميزات الأساسية.';

  @override
  String get authKvkkLocationTitle => 'بيانات الموقع:';

  @override
  String get authKvkkMethodBody =>
      'تُجمع البيانات وتُعالج إلكترونيًا عبر التطبيق، بناءً على الموافقة الصريحة للمستخدم، وفقًا للمادتين 5 و6 من قانون KVKK.';

  @override
  String get authKvkkMethodTitle => 'طريقة الجمع والأساس القانوني:';

  @override
  String get authKvkkPurposeBody =>
      'إنشاء حسابات المستخدمين وإدارتها، والتواصل الفوري مع مرشد العمرة، والوصول إلى المستخدم في حالات الطوارئ، ومتابعة المجموعة وخدمات الإرشاد، وإرسال الإشعارات، وضمان أمان التطبيق.';

  @override
  String get authKvkkPurposeTitle => 'أغراض المعالجة:';

  @override
  String get authKvkkReject => 'رفض';

  @override
  String get authKvkkRequired => 'يرجى الموافقة على إشعار الخصوصية (KVKK).';

  @override
  String get authKvkkRightsBody =>
      'يحق لك معرفة ما إذا كانت بياناتك تُعالج، وطلب المعلومات، وطلب تصحيح البيانات الخاطئة أو الناقصة، وطلب حذف البيانات أو إتلافها. يمكنك إرسال طلباتك إلى support@umrerehberim.com.';

  @override
  String get authKvkkRightsTitle => 'حقوقك بموجب قانون KVKK:';

  @override
  String get authKvkkTitle => 'إشعار الخصوصية (KVKK)';

  @override
  String get authKvkkTransferBody =>
      'لا تتم مشاركتها مع أطراف ثالثة، وتُحفظ في مراكز البيانات الآمنة لشركة Hacktapot Software. ولا يجوز مشاركتها إلا بقرار من النيابة العامة أو جهة قضائية، أو بشكل محدود مع شركة الرحلات المعنية.';

  @override
  String get authKvkkTransferTitle => 'نقل البيانات الشخصية:';

  @override
  String get authLoginButton => 'تسجيل الدخول';

  @override
  String get authLoginFailed => 'حدث خطأ أثناء تسجيل الدخول.';

  @override
  String get authLoginType => 'نوع الدخول';

  @override
  String get authNoInternet =>
      'لا يوجد اتصال بالإنترنت. يرجى التحقق من الاتصال والمحاولة مرة أخرى.';

  @override
  String get authSplashCheckingInternet =>
      'جارٍ التحقق من الاتصال بالإنترنت...';

  @override
  String get authSplashDataLoadFailed =>
      'تعذّر تحميل البيانات. يرجى التحقق من اتصالك بالإنترنت.';

  @override
  String get authSplashDataNotFound =>
      'لم يتم العثور على بيانات. يرجى التحقق من اتصالك بالإنترنت.';

  @override
  String get authSplashDataStale =>
      'بياناتك غير محدّثة. يرجى التحقق من اتصالك بالإنترنت.';

  @override
  String get authSplashLoadingData => 'جارٍ تحميل البيانات...';

  @override
  String get authSplashLoadingLocal => 'جارٍ تحميل البيانات المحلية...';

  @override
  String get authSplashLoadingUser => 'جارٍ تحميل بيانات المستخدم...';

  @override
  String get authSplashNoInternetLogin =>
      'لا يوجد اتصال بالإنترنت. يرجى تسجيل الدخول برقم هويتك.';

  @override
  String get authSplashOfflineStart => 'جارٍ التشغيل في وضع عدم الاتصال...';

  @override
  String get authSplashPleaseLogin => 'يرجى تسجيل الدخول برقم هويتك.';

  @override
  String get authSplashUserNotFound => 'المستخدم غير موجود.';

  @override
  String get authTagline => 'دليلك المرافق\nفي رحلتك المباركة';

  @override
  String get authTcLabel => 'رقم الهوية التركية';

  @override
  String get authTcLengthError => 'يجب أن يتكون رقم الهوية من 11 رقمًا';

  @override
  String get authTooManyRequests => 'محاولات كثيرة جدًا. يرجى المحاولة لاحقًا.';

  @override
  String get authUserDisabled => 'تم تعطيل هذا الحساب.';

  @override
  String get authUserNotFound => 'المستخدم غير موجود. يرجى التسجيل.';

  @override
  String get ccActAgencyCreate => 'تمت إضافة وكالة';

  @override
  String get ccActAgencyDelete => 'تم حذف وكالة';

  @override
  String get ccActAgencyUpdate => 'تم تحديث وكالة';

  @override
  String get ccActCouponCreate => 'تم إنشاء قسيمة';

  @override
  String get ccActCouponDelete => 'تم حذف قسيمة';

  @override
  String get ccActCouponUpdate => 'تم تحديث قسيمة';

  @override
  String get ccActFinanceSettings => 'تم تغيير إعدادات المالية';

  @override
  String get ccActMerchantCreate => 'تم إنشاء حساب تاجر';

  @override
  String get ccActMessageSend => 'تم إرسال رسالة إلى وكالة';

  @override
  String get ccActPointsBulk => 'تم تحميل نقاط بالجملة';

  @override
  String get ccActPointsGrant => 'تم تعديل النقاط';

  @override
  String get ccActPointsRevert => 'تم التراجع عن تعديل النقاط';

  @override
  String get ccActRiskReview => 'تمت مراجعة تنبيه مخاطر';

  @override
  String get ccActRoleChange => 'تم تغيير الدور';

  @override
  String get ccActSettlementPaid => 'تم دفع المستحقات';

  @override
  String get ccActSettlementUpdate => 'تم تحديث المستحقات';

  @override
  String get ccActShopCreate => 'تمت إضافة متجر';

  @override
  String get ccActShopDelete => 'تم حذف متجر';

  @override
  String get ccActShopToggle => 'تغيرت حالة المتجر';

  @override
  String get ccActShopUpdate => 'تم تحديث متجر';

  @override
  String get ccActTxCancel => 'تم إلغاء معاملة';

  @override
  String get ccActUserCreate => 'تم إنشاء مستخدم';

  @override
  String get ccActUserDelete => 'تم حذف مستخدم';

  @override
  String get ccActUserUpdate => 'تم تحديث مستخدم';

  @override
  String ccAgoDays(int count) {
    return 'قبل $count يوم';
  }

  @override
  String ccAgoHours(int count) {
    return 'قبل $count ساعة';
  }

  @override
  String ccAgoMinutes(int count) {
    return 'قبل $count دقيقة';
  }

  @override
  String get ccAgoNow => 'الآن';

  @override
  String get ccAnAvgBasket => 'متوسط السلة';

  @override
  String get ccAnAvgRating => 'متوسط التقييم';

  @override
  String get ccAnBusyHours => 'أوقات الذروة خلال اليوم';

  @override
  String get ccAnCancelRate => 'نسبة الإلغاء';

  @override
  String get ccAnCommission => 'العمولة';

  @override
  String get ccAnCommissionGenerated => 'العمولة المحققة';

  @override
  String get ccAnComplaintBadge => 'شكوى';

  @override
  String get ccAnComplaints => 'الشكاوى';

  @override
  String get ccAnConversion => 'التحويل (المعاملات / المشاهدات)';

  @override
  String get ccAnConversionShort => 'التحويل';

  @override
  String get ccAnCouponDiscount => 'خصم القسيمة';

  @override
  String get ccAnDailySales => 'المبيعات اليومية';

  @override
  String get ccAnDailyVolume => 'صافي الحجم اليومي';

  @override
  String get ccAnDau => 'النشطون يوميًا (DAU)';

  @override
  String get ccAnDiscount => 'خصم التاجر';

  @override
  String get ccAnGross => 'إجمالي المبيعات';

  @override
  String get ccAnGuest => 'ضيف';

  @override
  String get ccAnInactive => 'غير نشط';

  @override
  String get ccAnLatestReviews => 'أحدث التقييمات والشكاوى';

  @override
  String get ccAnLoadError => 'تعذر تحميل البيانات. اسحب للأسفل للتحديث.';

  @override
  String get ccAnMau => 'النشطون شهريًا (MAU)';

  @override
  String get ccAnMonthlyNewUsers => 'المستخدمون الجدد شهريًا (آخر 12 شهرًا)';

  @override
  String get ccAnMonthlyVolume => 'صافي الحجم الشهري';

  @override
  String get ccAnMostViewed => 'أكثر التجار مشاهدة';

  @override
  String get ccAnMpAll => 'جميع التجار';

  @override
  String get ccAnMpPodium => 'التجار الأكثر شعبية';

  @override
  String get ccAnMpSubtitle => 'المبيعات والتقييمات والشكاوى والتحويل';

  @override
  String get ccAnMpTitle => 'أداء التجار';

  @override
  String get ccAnNet => 'صافي المبيعات';

  @override
  String get ccAnNewUsers => 'مستخدمون جدد في الفترة';

  @override
  String get ccAnNoAccess => 'ليس لديك صلاحية الوصول إلى هذا القسم.';

  @override
  String get ccAnNoAgency => 'بدون وكالة';

  @override
  String get ccAnNoComment => '(بدون تعليق)';

  @override
  String get ccAnNoData => 'لا توجد بيانات في هذه الفترة.';

  @override
  String get ccAnNoReviews => 'لا توجد تقييمات في هذه الفترة.';

  @override
  String get ccAnNoShops => 'لا يوجد تجار متعاقدون بعد.';

  @override
  String get ccAnOpenMerchantPerf => 'أداء التجار';

  @override
  String get ccAnPayCard => 'بطاقة';

  @override
  String get ccAnPayCash => 'نقدًا';

  @override
  String get ccAnPayPoints => 'نقاط';

  @override
  String get ccAnPaymentSplit => 'توزيع طرق الدفع';

  @override
  String get ccAnPeriodAll => 'الكل';

  @override
  String get ccAnPeriodMonth => '30 يومًا';

  @override
  String get ccAnPeriodQuarter => '90 يومًا';

  @override
  String get ccAnPeriodToday => 'اليوم';

  @override
  String get ccAnPeriodWeek => '7 أيام';

  @override
  String get ccAnPeriodYear => 'سنة';

  @override
  String get ccAnPointsEarned => 'النقاط المكتسبة';

  @override
  String get ccAnPointsFlow => 'تدفق النقاط';

  @override
  String get ccAnPointsNet => 'صافي النقاط';

  @override
  String get ccAnPointsSpent => 'النقاط المستخدمة';

  @override
  String get ccAnRatingDist => 'توزيع التقييمات';

  @override
  String get ccAnRefresh => 'تحديث';

  @override
  String ccAnReviewCount(int count) {
    return '$count تقييم';
  }

  @override
  String get ccAnRoleAgencyAdmin => 'مسؤول الوكالة';

  @override
  String get ccAnRoleFinance => 'المحاسبة';

  @override
  String get ccAnRoleGuest => 'ضيف';

  @override
  String get ccAnRoleManager => 'مشرف';

  @override
  String get ccAnRoleMerchant => 'تاجر';

  @override
  String get ccAnRoleOther => 'أخرى';

  @override
  String get ccAnRoleSuperAdmin => 'المشرف العام';

  @override
  String get ccAnRoleSupport => 'الدعم';

  @override
  String get ccAnSecTrends => 'الاتجاهات';

  @override
  String get ccAnSecUsage => 'الاستخدام';

  @override
  String get ccAnSecVolume => 'حجم المعاملات';

  @override
  String ccAnShopsCount(int count) {
    return '$count متجر';
  }

  @override
  String get ccAnSortComplaints => 'الشكاوى';

  @override
  String get ccAnSortRating => 'التقييم';

  @override
  String get ccAnSortRevenue => 'الإيرادات';

  @override
  String get ccAnSortTx => 'المعاملات';

  @override
  String get ccAnSortViews => 'المشاهدات';

  @override
  String get ccAnStickiness => 'الالتزام (DAU/MAU)';

  @override
  String get ccAnSubtitle => 'الاستخدام وحجم المعاملات والاتجاهات';

  @override
  String get ccAnTitle => 'التحليلات وذكاء الأعمال';

  @override
  String get ccAnTopCategories => 'الإيرادات حسب الفئة';

  @override
  String get ccAnTopShopsByRevenue => 'أعلى التجار إيرادًا';

  @override
  String get ccAnTopShopsByTx => 'أكثر التجار معاملات';

  @override
  String get ccAnTotalUsers => 'إجمالي المستخدمين';

  @override
  String get ccAnTxCount => 'عدد المعاملات';

  @override
  String ccAnTxCountShort(int count) {
    return '$count معاملة';
  }

  @override
  String get ccAnUsersByAgency => 'المستخدمون حسب الوكالة';

  @override
  String get ccAnUsersByRole => 'المستخدمون حسب الدور';

  @override
  String ccAnUsersCount(int count) {
    return '$count مستخدم';
  }

  @override
  String get ccAnViews => 'المشاهدات';

  @override
  String get ccAnViewsNote => 'عدد المشاهدات يشمل كل الأوقات.';

  @override
  String ccAnViewsShort(int count) {
    return '$count مشاهدة';
  }

  @override
  String get ccAnWau => 'النشطون أسبوعيًا (WAU)';

  @override
  String get ccAuditCatAgency => 'الوكالات';

  @override
  String get ccAuditCatAll => 'الكل';

  @override
  String get ccAuditCatCoupon => 'القسائم';

  @override
  String get ccAuditCatFinance => 'المالية';

  @override
  String get ccAuditCatMessage => 'الرسائل';

  @override
  String get ccAuditCatPoints => 'النقاط';

  @override
  String get ccAuditCatRisk => 'المخاطر';

  @override
  String get ccAuditCatShop => 'التاجر/المتجر';

  @override
  String get ccAuditCatUser => 'المستخدمون';

  @override
  String get ccAuditDetails => 'التفاصيل';

  @override
  String get ccAuditEmpty => 'لا توجد سجلات مطابقة';

  @override
  String get ccAuditLoadMore => 'تحميل المزيد';

  @override
  String get ccAuditSearchActor => 'ابحث عن المنفذ';

  @override
  String ccAuditShown(int count) {
    return '$count سجل';
  }

  @override
  String get ccAuditSubtitle => 'من فعل ماذا ومتى';

  @override
  String get ccAuditTarget => 'الهدف';

  @override
  String get ccAuditTitle => 'سجل التدقيق';

  @override
  String get ccAuditUnknownActor => 'غير معروف';

  @override
  String get ccCancel => 'إلغاء';

  @override
  String ccCpnActivatedOk(String code) {
    return 'تم تفعيل $code.';
  }

  @override
  String get ccCpnActive => 'فعالة';

  @override
  String get ccCpnActiveHelp =>
      'القسائم غير المفعلة مخفية عن الضيوف ولا يمكن استخدامها.';

  @override
  String get ccCpnAgency => 'الوكالة';

  @override
  String get ccCpnAllAgencies => 'كل الوكالات';

  @override
  String get ccCpnAllShops => 'كل المتاجر';

  @override
  String get ccCpnCode => 'رمز القسيمة';

  @override
  String get ccCpnCodeHelp =>
      'أحرف كبيرة وأرقام، من 4 إلى 16 حرفًا. لا يمكن تغييره لاحقًا.';

  @override
  String get ccCpnCodeInvalid => 'من 4 إلى 16 حرفًا، A–Z و0–9 فقط.';

  @override
  String get ccCpnCodeLocked => 'الرمز هو معرّف القسيمة ولا يمكن تغييره.';

  @override
  String get ccCpnCodeSuggest => 'اقتراح رمز';

  @override
  String get ccCpnCodeTaken => 'هذا الرمز مستخدم بالفعل. اختر رمزًا آخر.';

  @override
  String get ccCpnCreate => 'إنشاء القسيمة';

  @override
  String ccCpnCreatedOk(String code) {
    return 'تم إنشاء القسيمة $code.';
  }

  @override
  String get ccCpnDates => 'تواريخ الصلاحية';

  @override
  String get ccCpnDeactivate => 'إلغاء التفعيل';

  @override
  String ccCpnDeactivatedOk(String code) {
    return 'تم إلغاء تفعيل $code.';
  }

  @override
  String get ccCpnDelete => 'حذف';

  @override
  String ccCpnDeleteBlockedBody(int count) {
    return 'استُخدمت هذه القسيمة $count مرة. تُحفظ لأغراض التقارير؛ يمكنك إلغاء تفعيلها بدلاً من ذلك.';
  }

  @override
  String get ccCpnDeleteBlockedTitle => 'لا يمكن حذف قسيمة مستخدمة';

  @override
  String ccCpnDeleteBody(String code) {
    return 'سيتم حذف $code نهائيًا.';
  }

  @override
  String get ccCpnDeleteTitle => 'حذف القسيمة؟';

  @override
  String ccCpnDeletedOk(String code) {
    return 'تم حذف $code.';
  }

  @override
  String get ccCpnDescription => 'الوصف (اختياري)';

  @override
  String get ccCpnEdit => 'تعديل';

  @override
  String get ccCpnEditTitle => 'تعديل القسيمة';

  @override
  String get ccCpnEmpty => 'لا توجد قسائم بعد. أنشئ حملتك الأولى!';

  @override
  String get ccCpnFilterAll => 'الكل';

  @override
  String ccCpnGiven(String amount) {
    return 'الخصم الممنوح: $amount';
  }

  @override
  String get ccCpnKpiActive => 'القسائم الفعالة';

  @override
  String get ccCpnKpiDiscount => 'إجمالي الخصم الممنوح';

  @override
  String get ccCpnKpiGuests => 'الضيوف المستخدمون';

  @override
  String get ccCpnKpiUses => 'إجمالي الاستخدام';

  @override
  String get ccCpnLoadError => 'تعذر تحميل القسائم.';

  @override
  String get ccCpnMaxDiscount => 'سقف الخصم';

  @override
  String get ccCpnMaxUses => 'حد الاستخدام الإجمالي';

  @override
  String ccCpnMaxUsesBelowUsed(int used) {
    return 'لا يمكن أن يقل الحد عن الاستخدام الحالي ($used).';
  }

  @override
  String get ccCpnMaxUsesHelp =>
      'فارغ/0 = غير محدود. يمكن لكل ضيف استخدام القسيمة مرة واحدة.';

  @override
  String ccCpnMinShort(String amount) {
    return 'الحد الأدنى $amount';
  }

  @override
  String get ccCpnMinSpend => 'الحد الأدنى للشراء';

  @override
  String get ccCpnNew => 'قسيمة جديدة';

  @override
  String get ccCpnNewTitle => 'قسيمة جديدة';

  @override
  String get ccCpnNoMatch => 'لا توجد قسائم مطابقة لهذا الفلتر.';

  @override
  String get ccCpnNoRedemptions => 'لم تُستخدم هذه القسيمة بعد.';

  @override
  String get ccCpnOncePerGuest =>
      'يُطبق خصم القسيمة بعد خصم المتجر؛ ولا ينخفض المبلغ المستحق عن الصفر.';

  @override
  String get ccCpnPercentMax => 'النسبة 100 كحد أقصى.';

  @override
  String get ccCpnReadOnly => 'للقراءة فقط';

  @override
  String get ccCpnRedemptions => 'الاستخدامات';

  @override
  String get ccCpnRequired => 'هذا الحقل إلزامي.';

  @override
  String get ccCpnSave => 'حفظ التغييرات';

  @override
  String get ccCpnSaveError => 'تعذر إتمام العملية. يرجى المحاولة مرة أخرى.';

  @override
  String get ccCpnSectionBasics => 'بيانات القسيمة';

  @override
  String get ccCpnSectionDiscount => 'الخصم';

  @override
  String get ccCpnSectionScope => 'الصلاحية';

  @override
  String get ccCpnShop => 'المتجر';

  @override
  String get ccCpnStatAvg => 'متوسط الخصم';

  @override
  String get ccCpnStatTotal => 'إجمالي الخصم';

  @override
  String get ccCpnStatUntil => 'صالحة حتى';

  @override
  String get ccCpnStatUses => 'الاستخدامات';

  @override
  String get ccCpnStatusActive => 'فعالة';

  @override
  String get ccCpnStatusExhausted => 'نفدت';

  @override
  String get ccCpnStatusExpired => 'منتهية';

  @override
  String get ccCpnStatusInactive => 'غير مفعلة';

  @override
  String get ccCpnStatusScheduled => 'لم تبدأ';

  @override
  String get ccCpnSubtitle => 'قسائم الحملات والخصومات';

  @override
  String get ccCpnTitle => 'القسائم';

  @override
  String get ccCpnTitleField => 'العنوان';

  @override
  String get ccCpnTitleHint => 'مثال: خصم الترحيب';

  @override
  String get ccCpnTypeFixed => 'مبلغ ثابت';

  @override
  String get ccCpnTypePercent => 'نسبة مئوية';

  @override
  String ccCpnUpTo(String amount) {
    return 'بحد أقصى $amount';
  }

  @override
  String ccCpnUpdatedOk(String code) {
    return 'تم تحديث القسيمة $code.';
  }

  @override
  String ccCpnUsesUnlimited(int count) {
    return '$count استخدام · غير محدود';
  }

  @override
  String get ccCpnValue => 'قيمة الخصم';

  @override
  String get ccCpnValueInvalid => 'أدخل قيمة أكبر من 0.';

  @override
  String get ccCpnZeroNoCap => 'فارغ/0 = بلا سقف';

  @override
  String get ccCpnZeroNone => 'فارغ/0 = بلا حد أدنى';

  @override
  String get ccFinActionError => 'فشلت العملية';

  @override
  String get ccFinAgencyEmpty => 'لا توجد حصة للوكالات في هذه الفترة';

  @override
  String get ccFinAgencyExplain =>
      'تحصل كل وكالة على حصتها من عمولة مشتريات ضيوفها.';

  @override
  String ccFinAgencySub(int count, String net) {
    return '$count معاملة · صافي $net';
  }

  @override
  String get ccFinAllAgencies => 'متاح لجميع الوكالات';

  @override
  String get ccFinCancel => 'إلغاء';

  @override
  String get ccFinColAgency => 'الوكالة';

  @override
  String get ccFinColCommission => 'العمولة';

  @override
  String get ccFinColCoupon => 'القسيمة';

  @override
  String get ccFinColDate => 'التاريخ';

  @override
  String get ccFinColDiscount => 'الخصم';

  @override
  String get ccFinColGross => 'الإجمالي';

  @override
  String get ccFinColGuest => 'الضيف';

  @override
  String get ccFinColNet => 'الصافي';

  @override
  String get ccFinColPeriod => 'الفترة';

  @override
  String get ccFinColPlatform => 'المنصة';

  @override
  String get ccFinColRate => 'العمولة %';

  @override
  String get ccFinColStatus => 'الحالة';

  @override
  String get ccFinColTx => 'المعاملات';

  @override
  String get ccFinCopyAllCsv => 'نسخ الفترة كاملة بصيغة CSV';

  @override
  String get ccFinCsvCopied => 'تم نسخ CSV إلى الحافظة';

  @override
  String get ccFinDailyChart => 'العمولة اليومية';

  @override
  String get ccFinEmpty => 'لا توجد معاملات في هذه الفترة';

  @override
  String get ccFinGenerate => 'إنشاء/تحديث الفترة';

  @override
  String ccFinGenerateConfirm(String month) {
    return 'هل تريد إنشاء سجلات المستحقات لفترة $month؟ لن تتغير مبالغ السجلات المدفوعة.';
  }

  @override
  String ccFinGenerateDone(int count) {
    return 'تم تحديث مستحقات $count متجر';
  }

  @override
  String get ccFinGenerateFirst => 'أنشئ الفترة أولًا';

  @override
  String get ccFinKpiAgency => 'حصة الوكالة';

  @override
  String get ccFinKpiCommission => 'إجمالي العمولة';

  @override
  String get ccFinKpiCoupon => 'خصم القسيمة';

  @override
  String get ccFinKpiDiscount => 'خصم التاجر';

  @override
  String get ccFinKpiGross => 'إجمالي المبيعات';

  @override
  String get ccFinKpiNet => 'صافي المبيعات';

  @override
  String get ccFinKpiPlatform => 'حصة المنصة';

  @override
  String get ccFinKpiTxCount => 'عدد المعاملات';

  @override
  String get ccFinLoadError => 'تعذر تحميل البيانات المالية';

  @override
  String get ccFinMarkPaid => 'تعيين كمدفوع';

  @override
  String get ccFinMarkPaidTitle => 'سجل الدفع';

  @override
  String get ccFinMarkedPaid => 'تم التعيين كمدفوع';

  @override
  String get ccFinNextMonth => 'الشهر التالي';

  @override
  String get ccFinNoteHint => 'ملاحظة (اختياري)';

  @override
  String ccFinPaidCount(int paid, int total) {
    return '$paid/$total مدفوع';
  }

  @override
  String ccFinPaidDiff(String recorded, int count) {
    return 'الإجماليات الحالية تختلف عن السجل المدفوع (السجل: $recorded، $count معاملة). قد يكون إلغاءً أو تسجيلًا متأخرًا.';
  }

  @override
  String ccFinPaidOn(String date) {
    return 'دُفع: $date';
  }

  @override
  String get ccFinPrevMonth => 'الشهر السابق';

  @override
  String get ccFinProNote =>
      'توزيع المدفوعات وتكامل الفاتورة الإلكترونية في مرحلة خادم Pro';

  @override
  String get ccFinRefresh => 'تحديث';

  @override
  String get ccFinRevert => 'إرجاع إلى قيد الانتظار';

  @override
  String get ccFinRevertConfirm =>
      'هل تريد إعادة هذا الاستحقاق إلى حالة \'قيد الانتظار\'؟';

  @override
  String get ccFinReverted => 'أُعيد إلى قيد الانتظار';

  @override
  String get ccFinSave => 'حفظ';

  @override
  String get ccFinSettingsDefault =>
      'لا يوجد إعداد محفوظ؛ تُستخدم القيمة الافتراضية 50%';

  @override
  String get ccFinSettingsDialogTitle => 'حصة المنصة (%)';

  @override
  String get ccFinSettingsEdit => 'تعديل';

  @override
  String ccFinSettingsExplain(int platform, int agency) {
    return 'يذهب $platform% من العمولة المحصلة من التجار إلى المنصة، والباقي $agency% إلى الوكالة.';
  }

  @override
  String get ccFinSettingsInvalid => 'أدخل رقمًا بين 0 و100';

  @override
  String get ccFinSettingsSaved => 'تم تحديث حصة المنصة';

  @override
  String get ccFinSettingsTitle => 'حصة المنصة';

  @override
  String get ccFinStatement => 'الكشف';

  @override
  String get ccFinStatusNone => 'لم يُنشأ';

  @override
  String get ccFinStatusPaid => 'مدفوع';

  @override
  String get ccFinStatusPending => 'قيد الانتظار';

  @override
  String get ccFinStmtAgency => 'الوكالة';

  @override
  String get ccFinStmtCopyCsv => 'نسخ (CSV)';

  @override
  String get ccFinStmtFooter =>
      'هذا المستند للعلم فقط ولا يُعد مستندًا ماليًا.';

  @override
  String get ccFinStmtIssued => 'تاريخ الإصدار';

  @override
  String get ccFinStmtLines => 'تفاصيل المعاملات';

  @override
  String get ccFinStmtMerchantCode => 'رمز التاجر';

  @override
  String get ccFinStmtNo => 'رقم الكشف';

  @override
  String get ccFinStmtNote => 'ملاحظة';

  @override
  String get ccFinStmtPayable => 'العمولة المستحقة على التاجر';

  @override
  String get ccFinStmtPeriod => 'الفترة';

  @override
  String get ccFinStmtPlatform => 'Umre Rehberim · برنامج التجار المتعاقدين';

  @override
  String get ccFinStmtRate => 'نسبة العمولة';

  @override
  String get ccFinStmtShop => 'المتجر';

  @override
  String get ccFinStmtStampPaid => 'مدفوع';

  @override
  String get ccFinStmtStampPending => 'قيد الانتظار';

  @override
  String get ccFinStmtTitle => 'كشف المستحقات';

  @override
  String get ccFinStmtTotals => 'الإجماليات';

  @override
  String get ccFinSubtitle => 'عمولات التجار وإغلاق الفترة';

  @override
  String get ccFinTabAgencies => 'حصص الوكالات';

  @override
  String get ccFinTabShops => 'مستحقات التجار';

  @override
  String get ccFinTitle => 'المالية والمستحقات';

  @override
  String get ccFinTotalsTitle => 'إجماليات الفترة';

  @override
  String get ccFinUnknownAgency => 'بدون وكالة';

  @override
  String get ccGreetingDay => 'طاب يومك';

  @override
  String get ccGreetingEvening => 'مساء الخير';

  @override
  String get ccGreetingMorning => 'صباح الخير';

  @override
  String get ccKpiAgencies => 'الوكالات';

  @override
  String get ccKpiDau => 'المستخدمون النشطون يوميًا';

  @override
  String get ccKpiOpenMessages => 'رسائل وكالات غير مقروءة';

  @override
  String get ccKpiShops => 'المتاجر النشطة';

  @override
  String get ccKpiTx30 => 'المعاملات (30 يومًا)';

  @override
  String get ccKpiUsers => 'المستخدمون';

  @override
  String get ccKpiVolume30 => 'حجم المعاملات آخر 30 يومًا';

  @override
  String get ccLoadFailed => 'تعذر تحميل البيانات';

  @override
  String get ccLogout => 'تسجيل الخروج';

  @override
  String get ccLogoutConfirm => 'هل أنت متأكد من تسجيل الخروج؟';

  @override
  String get ccLoyActionError => 'تعذر إتمام العملية. يرجى المحاولة مرة أخرى.';

  @override
  String get ccLoyAllAgencies => 'كل الوكالات';

  @override
  String get ccLoyBulkAction => 'نقاط جماعية';

  @override
  String get ccLoyBulkAgency => 'الوكالة';

  @override
  String get ccLoyBulkAllTrips => 'جميع ضيوف الوكالة';

  @override
  String ccLoyBulkConfirm(int count) {
    return 'منح $count ضيف';
  }

  @override
  String get ccLoyBulkNoTargets => 'لا يوجد ضيوف مطابقون للاختيار.';

  @override
  String ccLoyBulkOk(int count, int points) {
    return 'تم منح $points نقطة لـ $count ضيف.';
  }

  @override
  String ccLoyBulkPartial(int done, int total) {
    return 'توقف المنح الجماعي: حصل $done/$total ضيف على النقاط. حاول مرة أخرى للباقين.';
  }

  @override
  String get ccLoyBulkPickAgency => 'اختر وكالة أولاً.';

  @override
  String get ccLoyBulkPointsEach => 'النقاط لكل ضيف';

  @override
  String ccLoyBulkPreview(int count, String total) {
    return 'سيتم منح $total نقطة إجمالًا لـ $count ضيف.';
  }

  @override
  String get ccLoyBulkRunning => 'جارٍ منح النقاط…';

  @override
  String get ccLoyBulkTitle => 'منح نقاط جماعية';

  @override
  String get ccLoyBulkTrip => 'الرحلة (اختياري)';

  @override
  String get ccLoyDeduct => 'خصم نقاط';

  @override
  String get ccLoyDeductTitle => 'خصم نقاط';

  @override
  String ccLoyDeductedOk(int points) {
    return 'تم خصم $points نقطة.';
  }

  @override
  String get ccLoyEarned => 'المكتسبة';

  @override
  String get ccLoyFeedEmpty => 'لا توجد حركات مطابقة لهذا الفلتر.';

  @override
  String get ccLoyFeedTitle => 'أحدث حركات النقاط';

  @override
  String get ccLoyFilterAll => 'الكل';

  @override
  String get ccLoyFilterBulk => 'جماعية';

  @override
  String get ccLoyFilterDeducted => 'المخصومة';

  @override
  String get ccLoyFilterGranted => 'الممنوحة';

  @override
  String get ccLoyFilterReverted => 'المعكوسة';

  @override
  String get ccLoyGrant => 'منح نقاط';

  @override
  String get ccLoyGrantTitle => 'منح نقاط هدية';

  @override
  String ccLoyGrantedOk(int points) {
    return 'تم منح $points نقطة.';
  }

  @override
  String ccLoyGuestCount(int count) {
    return '$count ضيف';
  }

  @override
  String get ccLoyGuestsTitle => 'الضيوف';

  @override
  String get ccLoyHistory => 'سجل النقاط';

  @override
  String get ccLoyHistoryEmpty => 'لا توجد حركات نقاط بعد.';

  @override
  String get ccLoyKpiCirculation => 'إجمالي النقاط المتداولة';

  @override
  String get ccLoyKpiGrantedMonth => 'نقاط ممنوحة يدويًا هذا الشهر';

  @override
  String get ccLoyKpiRedeemed => 'القيمة المدفوعة بالنقاط';

  @override
  String get ccLoyKpiSpent => 'نقاط مصروفة في المتاجر';

  @override
  String get ccLoyLoadError => 'تعذر تحميل بيانات الولاء.';

  @override
  String get ccLoyManual => 'يدوي';

  @override
  String get ccLoyNoGuests => 'لا يوجد ضيوف مطابقون.';

  @override
  String get ccLoyPointsInvalid => 'أدخل عدد نقاط بين 1 و100000.';

  @override
  String get ccLoyPointsUnit => 'نقطة';

  @override
  String get ccLoyReadOnly => 'للقراءة فقط';

  @override
  String get ccLoyReason => 'السبب (إلزامي)';

  @override
  String get ccLoyReasonHintBulk => 'مثال: حملة رمضان';

  @override
  String get ccLoyReasonHintDeduct => 'مثال: تصحيح إدخال خاطئ';

  @override
  String get ccLoyReasonHintGrant => 'مثال: هدية ترحيب';

  @override
  String get ccLoyReasonRequired => 'يرجى كتابة سبب (3 أحرف على الأقل).';

  @override
  String get ccLoyRefresh => 'تحديث';

  @override
  String get ccLoyRevertAction => 'عكس';

  @override
  String ccLoyRevertBody(String guest, String points, String opposite) {
    return 'سيتم عكس حركة $points نقطة للضيف $guest بقيد معاكس قدره $opposite. لا يُحذف القيد الأصلي.';
  }

  @override
  String ccLoyRevertDefaultReason(String reason) {
    return 'عكس: $reason';
  }

  @override
  String get ccLoyRevertTitle => 'عكس حركة النقاط';

  @override
  String get ccLoyRevertedOk => 'تم عكس حركة النقاط.';

  @override
  String get ccLoySearchHint => 'ابحث بالاسم أو رقم الهوية أو الوكالة';

  @override
  String ccLoyShowMore(int count) {
    return 'عرض $count آخرين';
  }

  @override
  String get ccLoySpentShort => 'المصروفة';

  @override
  String get ccLoySubtitle => 'منح وخصم وعكس النقاط';

  @override
  String get ccLoyTagBulk => 'جماعي';

  @override
  String get ccLoyTagCancelled => 'ملغاة';

  @override
  String get ccLoyTagRevert => 'عكس';

  @override
  String get ccLoyTagReverted => 'تم العكس';

  @override
  String get ccLoyTitle => 'نقاط الولاء';

  @override
  String ccLoyWorth(String value) {
    return '≈ بقيمة $value';
  }

  @override
  String get ccModAgencies => 'الوكالات';

  @override
  String get ccModAgenciesDesc => 'قائمة الوكالات والأشخاص والإدارة';

  @override
  String get ccModAgenciesReadDesc => 'عرض الوكالات والأشخاص';

  @override
  String get ccModAnalytics => 'التحليلات';

  @override
  String get ccModAnalyticsDesc => 'النمو والنشاط والاتجاهات';

  @override
  String get ccModAudit => 'سجل التدقيق';

  @override
  String get ccModAuditDesc => 'من فعل ماذا ومتى';

  @override
  String get ccModCoupons => 'الحملات والقسائم';

  @override
  String get ccModCouponsDesc => 'إنشاء القسائم وتتبع استخدامها';

  @override
  String get ccModFinance => 'المالية والمستحقات';

  @override
  String get ccModFinanceDesc => 'العمولات والمستحقات والمدفوعات';

  @override
  String get ccModLoyalty => 'الولاء والنقاط';

  @override
  String get ccModLoyaltyDesc => 'أرصدة النقاط وحركاتها';

  @override
  String get ccModMerchantPerf => 'أداء التجار';

  @override
  String get ccModMerchantPerfDesc => 'ترتيب الإيرادات والنقاط والرضا';

  @override
  String get ccModMerchantReports => 'تقارير التجار';

  @override
  String get ccModMerchantReportsDesc => 'عمليات الشراء والإلغاءات';

  @override
  String get ccModMessages => 'رسائل الوكالات';

  @override
  String get ccModMessagesDesc => 'المراسلة والإعلانات مع الوكالات';

  @override
  String get ccModRisk => 'المخاطر والاحتيال';

  @override
  String get ccModRiskDesc => 'تنبيهات العمليات المشبوهة';

  @override
  String get ccModShops => 'المتاجر المتعاقدة';

  @override
  String get ccModShopsDesc => 'المتاجر والخصومات وحسابات التجار';

  @override
  String get ccModStaff => 'الموظفون والصلاحيات';

  @override
  String get ccModStaffDesc => 'حسابات الدعم والمحاسبة';

  @override
  String get ccMsgAddTitle => 'إضافة عنوان';

  @override
  String get ccMsgAgencies => 'الوكالات';

  @override
  String get ccMsgAllAgencies => 'جميع الوكالات';

  @override
  String get ccMsgAllRead => 'تمت قراءة الكل';

  @override
  String get ccMsgBodyHint => 'اكتب رسالة…';

  @override
  String get ccMsgBodyLabel => 'نص الرسالة';

  @override
  String get ccMsgBodyRequired => 'لا يمكن أن يكون نص الرسالة فارغًا.';

  @override
  String get ccMsgBroadcast => 'رسالة جماعية';

  @override
  String ccMsgBroadcastConfirm(int count) {
    return 'سيتم إرسال الرسالة إلى $count وكالة. هل تتابع؟';
  }

  @override
  String ccMsgBroadcastDone(int count) {
    return 'تم إرسال الرسالة إلى $count وكالة.';
  }

  @override
  String ccMsgBroadcastSend(int count) {
    return 'إرسال إلى $count وكالة';
  }

  @override
  String get ccMsgBroadcastSub => 'أرسل إلى عدة وكالات دفعة واحدة';

  @override
  String get ccMsgBroadcastTag => 'جماعية';

  @override
  String get ccMsgCancel => 'إلغاء';

  @override
  String get ccMsgClearSelection => 'مسح';

  @override
  String get ccMsgEmptyThread => 'لا توجد رسائل بعد. اكتب أول رسالة.';

  @override
  String get ccMsgFilterAll => 'الكل';

  @override
  String get ccMsgFilterUnread => 'غير مقروءة';

  @override
  String get ccMsgHq => 'المركز';

  @override
  String get ccMsgHqSub => 'المكتب الرئيسي لـ Umre Rehberim';

  @override
  String ccMsgInboxBannerBody(int count) {
    return 'لديك $count رسائل غير مقروءة';
  }

  @override
  String get ccMsgInboxBannerTitle => 'رسالة جديدة من المركز';

  @override
  String get ccMsgLoadFailed => 'تعذر تحميل الرسائل.';

  @override
  String get ccMsgMenu => 'رسائل المركز';

  @override
  String get ccMsgMenuSub => 'تواصل مع المركز';

  @override
  String get ccMsgMessage => 'الرسالة';

  @override
  String get ccMsgNoAgencies => 'لم يتم العثور على وكالات.';

  @override
  String get ccMsgNoAgency => 'لا توجد وكالة مرتبطة بحسابك.';

  @override
  String get ccMsgNoMessagesYet => 'لا توجد رسائل بعد';

  @override
  String get ccMsgNoRecipients => 'اختر وكالة واحدة على الأقل.';

  @override
  String get ccMsgPreview => 'معاينة';

  @override
  String get ccMsgRecipients => 'المستلمون';

  @override
  String get ccMsgSearch => 'ابحث عن وكالة…';

  @override
  String get ccMsgSelectAll => 'تحديد الكل';

  @override
  String get ccMsgSelectedAgencies => 'وكالات محددة';

  @override
  String ccMsgSelectedCount(int count) {
    return 'تم اختيار $count وكالة';
  }

  @override
  String get ccMsgSend => 'إرسال';

  @override
  String get ccMsgSendFailed => 'تعذر إرسال الرسالة.';

  @override
  String get ccMsgSent => 'تم إرسال الرسالة.';

  @override
  String get ccMsgSubtitle => 'التواصل بين المركز والوكالات';

  @override
  String get ccMsgTemplates => 'قوالب جاهزة';

  @override
  String get ccMsgTitle => 'رسائل الوكالات';

  @override
  String get ccMsgTitleHint => 'العنوان (اختياري)';

  @override
  String get ccMsgTitleLabel => 'العنوان';

  @override
  String get ccMsgToday => 'اليوم';

  @override
  String get ccMsgTplCampaign => 'إعلان حملة';

  @override
  String get ccMsgTplCampaignBody =>
      'شريكنا العزيز، أطلقنا حملة نقاط جديدة لضيوفكم في شبكة التجار المتعاقدين. يمكنكم الاطلاع على التفاصيل في لوحتكم وإبلاغ ضيوفكم.';

  @override
  String get ccMsgTplCampaignTitle => 'حملة جديدة';

  @override
  String get ccMsgTplDocument => 'طلب مستندات';

  @override
  String get ccMsgTplDocumentBody =>
      'شريكنا العزيز، نرجو إرسال شهادة TÜRSAB الحالية والشهادة الضريبية في أقرب وقت لتحديث سجلاتكم.';

  @override
  String get ccMsgTplDocumentTitle => 'طلب مستندات';

  @override
  String get ccMsgTplMaintenance => 'صيانة النظام';

  @override
  String get ccMsgTplMaintenanceBody =>
      'شريكنا العزيز، ستُجرى صيانة مجدولة لنظامنا. قد تحدث انقطاعات قصيرة في التطبيق خلال هذه الفترة. شكرًا لتفهمكم.';

  @override
  String get ccMsgTplMaintenanceTitle => 'صيانة مجدولة';

  @override
  String get ccMsgTplPayment => 'تذكير بالدفع';

  @override
  String get ccMsgTplPaymentBody =>
      'شريكنا العزيز، يقترب موعد سداد رسوم الخدمة لهذه الفترة. نرجو إتمام الدفع في الوقت المحدد، وإن كنتم قد دفعتم فيرجى تجاهل هذه الرسالة.';

  @override
  String get ccMsgTplPaymentTitle => 'تذكير بالدفع';

  @override
  String get ccMsgTplWelcome => 'أهلاً بكم';

  @override
  String get ccMsgTplWelcomeBody =>
      'شريكنا العزيز، أهلاً بكم في عائلة Umre Rehberim. يمكنكم إدارة الضيوف والرحلات والفنادق من لوحتكم. لا تترددوا في مراسلتنا هنا لأي استفسار.';

  @override
  String get ccMsgTplWelcomeTitle => 'مرحبًا بكم في Umre Rehberim';

  @override
  String ccMsgUnreadTotal(int count) {
    return '$count غير مقروءة';
  }

  @override
  String get ccMsgYesterday => 'أمس';

  @override
  String get ccMsgYou => 'أنت';

  @override
  String get ccNoRecent => 'لا توجد سجلات بعد';

  @override
  String get ccPeriodAll => 'الكل';

  @override
  String get ccPeriodMonth => '30 يومًا';

  @override
  String get ccPeriodQuarter => '90 يومًا';

  @override
  String get ccPeriodToday => 'اليوم';

  @override
  String get ccPeriodWeek => '7 أيام';

  @override
  String get ccPeriodYear => 'سنة';

  @override
  String get ccPermAgencies => 'الوكالات والأشخاص';

  @override
  String get ccPermAgencyEdit => 'إضافة / تعديل الوكالات';

  @override
  String get ccPermAudit => 'سجل التدقيق';

  @override
  String get ccPermCoupons => 'الحملات والقسائم';

  @override
  String get ccPermFinance => 'المالية والمستحقات';

  @override
  String get ccPermFull => 'كامل';

  @override
  String get ccPermLoyalty => 'حركات النقاط';

  @override
  String get ccPermMessages => 'رسائل الوكالات';

  @override
  String get ccPermNone => 'لا يوجد';

  @override
  String get ccPermRead => 'قراءة';

  @override
  String get ccPermReports => 'تقارير التجار والأداء';

  @override
  String get ccPermRisk => 'المخاطر والاحتيال';

  @override
  String get ccPermShops => 'إدارة المتاجر والتجار';

  @override
  String get ccPermStaff => 'إدارة الموظفين';

  @override
  String get ccReadOnly => 'قراءة فقط';

  @override
  String get ccRiskActionError => 'فشلت العملية';

  @override
  String get ccRiskAlarmsTitle => 'التنبيهات';

  @override
  String get ccRiskAmount => 'المبلغ';

  @override
  String get ccRiskCancel => 'رجوع';

  @override
  String get ccRiskCancelReasonDefault => 'مراجعة المخاطر';

  @override
  String get ccRiskCancelReasonHint => 'سبب الإلغاء';

  @override
  String get ccRiskCancelTitle => 'إلغاء المعاملة';

  @override
  String get ccRiskCancelTx => 'إلغاء المعاملة';

  @override
  String get ccRiskCancelled => 'أُلغيت المعاملة';

  @override
  String get ccRiskCouponActive => 'نشط';

  @override
  String ccRiskCouponInfo(String value, int used, String max) {
    return 'خصم $value · $used/$max استخدام';
  }

  @override
  String get ccRiskCouponPassive => 'غير نشط';

  @override
  String get ccRiskEmpty => 'لا توجد تنبيهات مطابقة';

  @override
  String get ccRiskEntities => 'الجهات المعنية';

  @override
  String get ccRiskEntityAdmin => 'المشرف';

  @override
  String get ccRiskEntityCoupon => 'القسيمة';

  @override
  String get ccRiskEntityGuest => 'الضيف';

  @override
  String get ccRiskEntityShop => 'المتجر';

  @override
  String get ccRiskEvidence => 'الأدلة';

  @override
  String ccRiskExpAdminGrants(String admin, String points) {
    return 'منح $admin ما مجموعه $points نقطة خلال 7 أيام.';
  }

  @override
  String ccRiskExpBasket(String amount, String avg) {
    return 'معاملة بقيمة $amount؛ متوسط سلة المتجر $avg (أكثر من 5 أضعاف).';
  }

  @override
  String ccRiskExpBigAmount(String amount) {
    return 'معاملة واحدة بقيمة $amount؛ تبلغ 80% من الحد الأقصى (20,000 ريال).';
  }

  @override
  String ccRiskExpBigGrant(String guest, String points) {
    return 'مُنح $guest عدد $points نقطة دفعة واحدة.';
  }

  @override
  String ccRiskExpBigPoints(String points) {
    return 'أُنفقت $points نقطة في معاملة واحدة.';
  }

  @override
  String ccRiskExpCancelRate(String shop, int rate, int count) {
    return 'ألغى $shop نسبة $rate% من $count معاملة خلال آخر 90 يومًا.';
  }

  @override
  String ccRiskExpConcentration(String guest, String shop, int share) {
    return 'يشكل $guest وحده $share% من إيرادات $shop.';
  }

  @override
  String ccRiskExpCouponUnlimited(String code, int count) {
    return 'القسيمة $code بلا حد للاستخدام واستُخدمت $count مرة.';
  }

  @override
  String ccRiskExpCouponValue(String code, String value) {
    return 'القسيمة $code تمنح خصمًا بقيمة $value.';
  }

  @override
  String ccRiskExpFrequentGrants(String guest, int count) {
    return 'مُنح $guest نقاطًا $count مرات خلال 7 أيام.';
  }

  @override
  String ccRiskExpNight(String time) {
    return 'تمت المعاملة ليلًا ($time).';
  }

  @override
  String ccRiskExpPointsBurn(String guest, String spent, String earned) {
    return 'أنفق $guest $spent نقطة خلال 90 يومًا بينما كسب $earned نقطة فقط في الفترة نفسها.';
  }

  @override
  String ccRiskExpQuickCancel(int minutes) {
    return 'أُلغيت المعاملة بعد $minutes دقيقة من إنشائها.';
  }

  @override
  String get ccRiskExpSameAgency => 'الضيف والمتجر يتبعان الوكالة نفسها.';

  @override
  String ccRiskExpVelocity(String guest, String shop, int count) {
    return 'أجرى $guest عدد $count معاملات في $shop خلال 24 ساعة.';
  }

  @override
  String get ccRiskFilterAll => 'الكل';

  @override
  String get ccRiskFilterSeverity => 'الخطورة';

  @override
  String get ccRiskFilterStatus => 'الحالة';

  @override
  String get ccRiskFilterType => 'النوع';

  @override
  String get ccRiskKpiOpen => 'غير مراجَع';

  @override
  String get ccRiskLoadError => 'تعذر تحميل بيانات المخاطر';

  @override
  String get ccRiskNoteHint => 'ملاحظة المراجعة';

  @override
  String ccRiskPointsUnit(String points) {
    return '$points نقطة';
  }

  @override
  String get ccRiskRefresh => 'تحديث';

  @override
  String get ccRiskReview => 'المراجعة';

  @override
  String get ccRiskReviewSaved => 'تم حفظ المراجعة';

  @override
  String ccRiskReviewedBy(String name, String date) {
    return '$name · $date';
  }

  @override
  String get ccRiskReviewsEmpty => 'لا توجد مراجعات بعد';

  @override
  String get ccRiskReviewsTitle => 'سجلات المراجعة';

  @override
  String get ccRiskSaveReview => 'حفظ المراجعة';

  @override
  String get ccRiskSevHigh => 'مرتفع';

  @override
  String get ccRiskSevLow => 'منخفض';

  @override
  String get ccRiskSevMedium => 'متوسط';

  @override
  String get ccRiskStatusConfirmed => 'مؤكد';

  @override
  String get ccRiskStatusFalse => 'إنذار كاذب';

  @override
  String get ccRiskStatusNew => 'جديد';

  @override
  String get ccRiskStatusReviewed => 'تمت المراجعة';

  @override
  String get ccRiskSubtitle => 'تنبيهات قائمة على القواعد لآخر 90 يومًا';

  @override
  String get ccRiskSupportNote =>
      'تُحسب التنبيهات القائمة على المعاملات (المشتريات والنقاط والقسائم) للمشرف العام فقط. يمكنك رؤية المراجعات أدناه.';

  @override
  String get ccRiskTime => 'الوقت';

  @override
  String get ccRiskTitle => 'المخاطر والاحتيال';

  @override
  String get ccRiskTxCancelledBadge => 'ملغاة';

  @override
  String get ccRiskTypeAdminGrants => 'حجم منح المشرف للنقاط';

  @override
  String get ccRiskTypeBasket => 'سلة غير معتادة';

  @override
  String get ccRiskTypeBigAmount => 'معاملة بمبلغ مرتفع';

  @override
  String get ccRiskTypeBigGrant => 'منح نقاط كبير';

  @override
  String get ccRiskTypeBigPoints => 'إنفاق نقاط كبير';

  @override
  String get ccRiskTypeCancelRate => 'نسبة إلغاء مرتفعة';

  @override
  String get ccRiskTypeConcentration => 'تركز الإيرادات';

  @override
  String get ccRiskTypeCouponUnlimited => 'قسيمة غير محدودة باستخدام كثيف';

  @override
  String get ccRiskTypeCouponValue => 'قسيمة عالية القيمة';

  @override
  String get ccRiskTypeFrequentGrants => 'منح نقاط متكرر';

  @override
  String get ccRiskTypeNight => 'معاملة ليلية';

  @override
  String get ccRiskTypePointsBurn => 'استهلاك سريع للنقاط';

  @override
  String get ccRiskTypeQuickCancel => 'إلغاء سريع';

  @override
  String get ccRiskTypeVelocity => 'معاملات كثيرة في وقت قصير';

  @override
  String get ccRoleFinanceDesc =>
      'المستحقات، تقارير التجار، النقاط والقسائم (قراءة)';

  @override
  String get ccRoleSuperDesc => 'جميع الوحدات، صلاحية كاملة';

  @override
  String get ccRoleSupportDesc => 'الوكالات (قراءة)، الرسائل، المخاطر';

  @override
  String get ccSectionModules => 'الوحدات';

  @override
  String get ccSectionOverview => 'نظرة عامة';

  @override
  String get ccSectionRecent => 'آخر العمليات';

  @override
  String get ccSeeAll => 'عرض الكل';

  @override
  String get ccStaffActionFailed => 'تعذر إكمال العملية';

  @override
  String get ccStaffAdd => 'إضافة موظف';

  @override
  String get ccStaffChangeRole => 'تغيير الدور';

  @override
  String ccStaffCount(int count) {
    return '$count أشخاص';
  }

  @override
  String get ccStaffCreate => 'إنشاء الحساب';

  @override
  String get ccStaffCreateFailed => 'تعذر إنشاء الحساب';

  @override
  String get ccStaffCreated => 'تم إنشاء حساب الموظف';

  @override
  String get ccStaffDelete => 'حذف الموظف';

  @override
  String ccStaffDeleteConfirm(String name) {
    return 'حذف $name؟ سيفقد الحساب الوصول إلى اللوحة.';
  }

  @override
  String get ccStaffDeleted => 'تم حذف الموظف';

  @override
  String get ccStaffEmpty => 'لا يوجد موظفو دعم أو محاسبة بعد';

  @override
  String get ccStaffList => 'الموظفون';

  @override
  String get ccStaffLoginHint =>
      'يسجل الموظف الدخول من تبويب \"المشرف\" برقم هويته.';

  @override
  String get ccStaffMatrix => 'مصفوفة الصلاحيات';

  @override
  String get ccStaffName => 'الاسم الكامل';

  @override
  String get ccStaffNameMissing => 'أدخل الاسم الكامل';

  @override
  String get ccStaffPhone => 'الهاتف';

  @override
  String get ccStaffRole => 'الدور';

  @override
  String get ccStaffRoleChanged => 'تم تحديث الدور';

  @override
  String get ccStaffSubtitle => 'أدوار المنصة وصلاحياتها';

  @override
  String get ccStaffTc => 'رقم الهوية';

  @override
  String get ccStaffTcExists => 'يوجد مستخدم مسجل بهذا الرقم';

  @override
  String get ccStaffTcInvalid => 'يجب أن يتكون رقم الهوية من 11 رقمًا';

  @override
  String get ccStaffTitle => 'الموظفون والصلاحيات';

  @override
  String get ccStaffYou => 'أنت';

  @override
  String get ccSubtitle => 'المنصة كاملة في شاشة واحدة';

  @override
  String get ccTitle => 'مركز التحكم';

  @override
  String get ccUsrActive24 => 'نشط خلال 24 ساعة';

  @override
  String get ccUsrActive30 => 'نشط خلال 30 يومًا';

  @override
  String get ccUsrAgency => 'الوكالة';

  @override
  String get ccUsrAll => 'الكل';

  @override
  String ccUsrCount(int count) {
    return '$count مستخدم';
  }

  @override
  String get ccUsrCreated => 'تاريخ التسجيل';

  @override
  String get ccUsrDau => 'نشط اليوم';

  @override
  String get ccUsrEmpty => 'لا يوجد مستخدمون مطابقون';

  @override
  String get ccUsrLastActive => 'آخر نشاط';

  @override
  String get ccUsrLoadFailed => 'تعذر تحميل المستخدمين';

  @override
  String get ccUsrMau => 'نشط 30 يومًا';

  @override
  String get ccUsrNeverActive => 'لم ينشط بعد';

  @override
  String get ccUsrNew30 => 'جديد خلال 30 يومًا';

  @override
  String get ccUsrNoAgency => 'بدون وكالة';

  @override
  String get ccUsrOpenAgency => 'فتح الوكالة';

  @override
  String get ccUsrPhone => 'الهاتف';

  @override
  String get ccUsrRole => 'الدور';

  @override
  String get ccUsrSearch => 'ابحث بالاسم أو الهوية أو الهاتف';

  @override
  String get ccUsrSubtitle => 'المنصة بأكملها';

  @override
  String get ccUsrTc => 'رقم الهوية';

  @override
  String get ccUsrTitle => 'المستخدمون';

  @override
  String get ccUsrTotal => 'الإجمالي';

  @override
  String get commonCancel => 'إلغاء';

  @override
  String get commonClose => 'إغلاق';

  @override
  String get commonComingSoon => 'قريبًا';

  @override
  String get commonDelete => 'حذف';

  @override
  String get commonEdit => 'تعديل';

  @override
  String get commonError => 'حدث خطأ.';

  @override
  String get commonLanguage => 'اللغة';

  @override
  String get commonLanguageChanged => 'تم تغيير اللغة';

  @override
  String get commonLoading => 'جارٍ التحميل...';

  @override
  String get commonMecca => 'مكة المكرمة';

  @override
  String get commonMedina => 'المدينة المنورة';

  @override
  String get commonNo => 'لا';

  @override
  String get commonOk => 'حسنًا';

  @override
  String get commonRetry => 'حاول مرة أخرى';

  @override
  String get commonSave => 'حفظ';

  @override
  String get commonSearch => 'بحث';

  @override
  String get commonSelectLanguage => 'اختر اللغة';

  @override
  String get commonYes => 'نعم';

  @override
  String get coreAccountExists => 'يوجد حساب مسجّل بهذا الرقم بالفعل.';

  @override
  String get coreAnnouncement => 'إعلان';

  @override
  String get coreAudioLoadFailed =>
      'تعذّر تحميل الصوت. تحقق من اتصالك بالإنترنت.';

  @override
  String coreAyahCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count آية',
      few: '$count آيات',
      two: 'آيتان',
      one: 'آية واحدة',
    );
    return '$_temp0';
  }

  @override
  String get coreBackgroundLocationMessage =>
      'لكي يتمكن مرشدك من رؤيتك حتى عند إغلاق التطبيق، اختر \"السماح طوال الوقت\" في الشاشة التالية.';

  @override
  String get coreBackgroundLocationTitle => 'الموقع في الخلفية';

  @override
  String get coreChannelAnnouncements => 'الإعلانات';

  @override
  String get coreChannelAnnouncementsDesc => 'إعلانات الوكالة والمرشد';

  @override
  String get coreChannelLocation => 'مشاركة الموقع';

  @override
  String get coreChannelLocationDesc => 'يظهر أثناء مشاركة موقعك مع مرشدك';

  @override
  String get coreChannelQuranDesc => 'أدوات التحكم في تلاوة القرآن الصوتية';

  @override
  String get coreChannelRadio => 'اللاسلكي';

  @override
  String get coreChannelRadioDesc => 'إشعار يظهر أثناء البث اللاسلكي.';

  @override
  String get coreContinue => 'متابعة';

  @override
  String get coreCurrencyEur => 'اليورو';

  @override
  String get coreCurrencyGbp => 'الجنيه الإسترليني';

  @override
  String get coreCurrencySar => 'الريال السعودي';

  @override
  String get coreCurrencyTry => 'الليرة التركية';

  @override
  String get coreCurrencyUsd => 'الدولار الأمريكي';

  @override
  String get coreGoToSettings => 'فتح الإعدادات';

  @override
  String coreHoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'منذ $count ساعة',
      few: 'منذ $count ساعات',
      two: 'منذ ساعتين',
      one: 'منذ ساعة',
    );
    return '$_temp0';
  }

  @override
  String get coreInvalidTokenResponse => 'استجابة رمز غير صالحة.';

  @override
  String get coreJustNow => 'الآن';

  @override
  String get coreLocationPermissionMessage =>
      'يلزم إذن الموقع لمشاركة موقعك مع مرشدك. يمكنك منح الإذن من صفحة الإعدادات.';

  @override
  String get coreLocationPermissionRestart =>
      'يرجى تفعيل إذن الموقع ثم إعادة تشغيل التطبيق.';

  @override
  String get coreLocationPermissionTitle => 'إذن الموقع مطلوب';

  @override
  String get coreLocationServiceOffMessage =>
      'لكي يتمكن مرشدك من رؤيتك، عليك تشغيل خاصية الموقع (GPS) في هاتفك.';

  @override
  String get coreLocationServiceOffSnack =>
      'خدمة الموقع متوقفة. يرجى تشغيل الموقع (GPS) في هاتفك.';

  @override
  String get coreLocationServiceOffTitle => 'خدمة الموقع متوقفة';

  @override
  String get coreLocationServiceOpen => 'تشغيل الموقع';

  @override
  String get coreLocationSharingNotification => 'تتم مشاركة موقعك مع مرشدك';

  @override
  String coreMinutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'منذ $count دقيقة',
      few: 'منذ $count دقائق',
      two: 'منذ دقيقتين',
      one: 'منذ دقيقة',
    );
    return '$_temp0';
  }

  @override
  String get coreNavCalendar => 'التقويم';

  @override
  String get coreNavHome => 'الرئيسية';

  @override
  String get coreNavInfo => 'معلومات';

  @override
  String get coreNavPrayers => 'الأدعية';

  @override
  String get coreNavProfile => 'الملف الشخصي';

  @override
  String get coreNotNow => 'ليس الآن';

  @override
  String get coreOsmContributors => 'مساهمو OpenStreetMap';

  @override
  String get corePageNotFound => 'الصفحة غير موجودة';

  @override
  String get coreQuranBlockedByRadio =>
      'لا يمكن الاستماع إلى القرآن أثناء تشغيل اللاسلكي.';

  @override
  String get coreQuranTitle => 'القرآن الكريم';

  @override
  String get coreRatesCached => 'محفوظ';

  @override
  String get coreRatesDaily => 'يومي';

  @override
  String get coreRatesFetchFailed =>
      'تعذّر جلب أسعار الصرف. تحقق من اتصالك بالإنترنت.';

  @override
  String get coreSessionNotFound => 'لم يتم العثور على جلسة نشطة.';

  @override
  String get coreStartFailed => 'تعذّر تشغيل التطبيق';

  @override
  String get coreStarting => 'جارٍ التشغيل...';

  @override
  String get coreUnknownPage => 'صفحة غير معروفة';

  @override
  String get cuzdanAdjustmentReason => 'ملاحظة';

  @override
  String get cuzdanAnalysisEmpty => 'لا يوجد إنفاق في هذه الفترة.';

  @override
  String get cuzdanAnalysisTitle => 'تحليل الإنفاق';

  @override
  String get cuzdanBalanceLabel => 'رصيد نقاطي';

  @override
  String get cuzdanCancelReason => 'سبب الإلغاء';

  @override
  String get cuzdanCancelled => 'أُلغيت';

  @override
  String get cuzdanCancelledShort => 'ملغى';

  @override
  String get cuzdanCardBrand => 'Umre Rehberim';

  @override
  String get cuzdanCardHolder => 'حامل البطاقة';

  @override
  String get cuzdanCardPoints => 'النقاط';

  @override
  String get cuzdanCardSubtitle => 'بطاقة الولاء';

  @override
  String get cuzdanClose => 'إغلاق';

  @override
  String get cuzdanCodeCreating => 'جارٍ تجهيز الرمز…';

  @override
  String get cuzdanCodeError =>
      'تعذر إنشاء الرمز. تحقق من اتصالك بالإنترنت ثم حاول مرة أخرى.';

  @override
  String cuzdanCodeOneTime(int minutes) {
    return 'هذا الرمز للاستخدام مرة واحدة ويتجدد كل $minutes دقيقة.';
  }

  @override
  String get cuzdanCodeShowLive => 'العودة إلى الرمز لمرة واحدة';

  @override
  String get cuzdanCodeShowStatic => 'إظهار رمز QR الخاص بالمتجر';

  @override
  String get cuzdanCodeTimeLeft => 'الوقت المتبقي';

  @override
  String get cuzdanCodeWaiting => 'تمت قراءة الرمز، جارٍ حفظ العملية…';

  @override
  String cuzdanCodeYourPoints(int points) {
    return 'نقاطك: $points';
  }

  @override
  String get cuzdanCouponAllShops => 'في جميع المتاجر المتعاقدة';

  @override
  String cuzdanCouponAtShop(String shop) {
    return 'فقط في $shop';
  }

  @override
  String cuzdanCouponAvailable(int count) {
    return '$count قسيمة متاحة في هذا المتجر';
  }

  @override
  String get cuzdanCouponCode => 'رمز القسيمة';

  @override
  String get cuzdanCouponDetails => 'تفاصيل القسيمة';

  @override
  String get cuzdanCouponHowTo =>
      'لاستخدامها افتح رمز الخصم في المتجر واختر القسيمة. تُستخدم كل قسيمة مرة واحدة.';

  @override
  String get cuzdanCouponNone => 'بدون قسيمة';

  @override
  String get cuzdanCouponOff => 'خصم';

  @override
  String get cuzdanCouponPickHint =>
      'تُضاف القسيمة إلى رمزك ويُطبق الخصم عندما يمسحه المتجر.';

  @override
  String get cuzdanCouponPickTitle => 'اختر قسيمة';

  @override
  String cuzdanCouponSelected(String code) {
    return 'القسيمة: $code';
  }

  @override
  String get cuzdanCouponTapHint => 'اضغط للتفاصيل';

  @override
  String get cuzdanCouponUse => 'استخدم قسيمة';

  @override
  String cuzdanCouponUsed(String code) {
    return 'القسيمة $code';
  }

  @override
  String cuzdanCouponValidUntil(String date) {
    return 'حتى $date';
  }

  @override
  String cuzdanDaysAgo(int days) {
    return 'قبل $days أيام';
  }

  @override
  String get cuzdanDiscount => 'الخصم';

  @override
  String get cuzdanEmpty =>
      'لا توجد مشتريات بعد. أظهر رمز QR في المتاجر المتعاقدة لتحصل على خصم وتكسب نقاطًا.';

  @override
  String get cuzdanFilterAll => 'الكل';

  @override
  String get cuzdanFilterEarned => 'نقاط مكتسبة';

  @override
  String get cuzdanFilterSpent => 'مدفوع بالنقاط';

  @override
  String get cuzdanGiftPoints => 'نقاط هدية';

  @override
  String get cuzdanGoShops => 'المتاجر المتعاقدة';

  @override
  String get cuzdanGross => 'المبلغ';

  @override
  String get cuzdanHideBalance => 'إخفاء الرصيد';

  @override
  String get cuzdanHowEarn =>
      'تكسب نقطة واحدة مقابل كل ريال تنفقه في المتاجر المتعاقدة.';

  @override
  String get cuzdanHowPay => 'عند الدفع بالنقاط يظل خصم المتجر مطبقًا.';

  @override
  String get cuzdanHowRecord =>
      'التطبيق لا يستلم أي مدفوعات؛ إنه يسجل مشترياتك فقط.';

  @override
  String get cuzdanHowTitle => 'كيف تعمل النقاط؟';

  @override
  String get cuzdanHowValue => '100 نقطة = 5 ريال.';

  @override
  String get cuzdanLoadError =>
      'تعذر تحميل المشتريات. تحقق من اتصالك بالإنترنت.';

  @override
  String get cuzdanLoyaltyPoints => 'نقاط الولاء';

  @override
  String get cuzdanMethodCard => 'بطاقة ائتمان';

  @override
  String get cuzdanMethodCash => 'نقدًا';

  @override
  String get cuzdanMethodPoints => 'نقاط';

  @override
  String get cuzdanMyCoupons => 'قسائمي';

  @override
  String get cuzdanMyPurchases => 'مشترياتي';

  @override
  String get cuzdanMyQr => 'رمزي';

  @override
  String get cuzdanNoFilterMatch => 'لا توجد عمليات تطابق هذا الفلتر.';

  @override
  String get cuzdanNoShops => 'لم يتم العثور على متاجر شريكة.';

  @override
  String cuzdanNotifEarned(String shop, String amount, int points) {
    return '$shop: تم دفع $amount ريال، وكسبت $points نقطة.';
  }

  @override
  String cuzdanNotifSpent(String shop, String amount, int points) {
    return '$shop: تم دفع $amount ريال باستخدام $points نقطة.';
  }

  @override
  String get cuzdanPaid => 'المدفوع';

  @override
  String get cuzdanPaidWithPoints => 'المدفوع بالنقاط';

  @override
  String get cuzdanPaymentMethod => 'طريقة الدفع';

  @override
  String get cuzdanPickShopHint => 'يُنشأ رمزك للمتجر الذي تختاره.';

  @override
  String get cuzdanPickShopTitle => 'في أي متجر أنت؟';

  @override
  String cuzdanPointsAmount(String points) {
    return '$points نقطة';
  }

  @override
  String get cuzdanPointsCorrection => 'تعديل النقاط';

  @override
  String get cuzdanPointsEarned => 'النقاط المكتسبة';

  @override
  String cuzdanPointsMinus(int points) {
    return '−$points نقطة';
  }

  @override
  String cuzdanPointsPlus(int points) {
    return '+$points نقطة';
  }

  @override
  String get cuzdanPointsRevert => 'تم عكس حركة النقاط';

  @override
  String get cuzdanPointsReverted => 'تم العكس';

  @override
  String get cuzdanPointsSpent => 'النقاط المستخدمة';

  @override
  String cuzdanPointsWorth(String value) {
    return '≈ بقيمة $value ريال';
  }

  @override
  String cuzdanProfileSubtitle(int points) {
    return '$points نقطة · سجل المشتريات';
  }

  @override
  String get cuzdanPurchaseCount => 'المشتريات';

  @override
  String get cuzdanPurchaseCountLabel => 'عدد المشتريات';

  @override
  String get cuzdanRetry => 'حاول مرة أخرى';

  @override
  String get cuzdanReviewAction => 'قيّم';

  @override
  String get cuzdanReviewComment => 'تعليقك (اختياري)';

  @override
  String get cuzdanReviewComplaint => 'الإبلاغ كشكوى';

  @override
  String get cuzdanReviewComplaintHint =>
      'تُرسل شكواك إلى فريق المنصة لمراجعتها.';

  @override
  String get cuzdanReviewError => 'تعذر إرسال التقييم. يرجى المحاولة مرة أخرى.';

  @override
  String get cuzdanReviewOnce =>
      'يُرسل التقييم مرة واحدة ولا يمكن تغييره لاحقًا.';

  @override
  String get cuzdanReviewPickStars => 'يرجى اختيار من 1 إلى 5 نجوم.';

  @override
  String get cuzdanReviewSend => 'إرسال';

  @override
  String get cuzdanReviewStar1 => 'سيئ جدًا';

  @override
  String get cuzdanReviewStar2 => 'سيئ';

  @override
  String get cuzdanReviewStar3 => 'مقبول';

  @override
  String get cuzdanReviewStar4 => 'جيد';

  @override
  String get cuzdanReviewStar5 => 'ممتاز';

  @override
  String get cuzdanReviewThanks => 'شكرًا على تقييمك!';

  @override
  String get cuzdanReviewThis => 'قيّم هذا الشراء';

  @override
  String get cuzdanReviewTitle => 'قيّم عملية الشراء';

  @override
  String get cuzdanReviewYours => 'تقييمك';

  @override
  String cuzdanSar(String amount) {
    return '$amount ريال';
  }

  @override
  String get cuzdanShopDiscount => 'خصم المتجر';

  @override
  String cuzdanShopDiscountPct(int percent) {
    return 'خصم المتجر $percent%';
  }

  @override
  String get cuzdanShops => 'المتاجر';

  @override
  String get cuzdanShowBalance => 'إظهار الرصيد';

  @override
  String get cuzdanSuccessTitle => 'تم تسجيل الشراء';

  @override
  String get cuzdanTitle => 'مشترياتي ونقاطي';

  @override
  String get cuzdanToday => 'اليوم';

  @override
  String get cuzdanTotalDiscount => 'الخصم المكتسب';

  @override
  String get cuzdanTotalSpent => 'إجمالي الإنفاق';

  @override
  String cuzdanTxEarnedBig(int points) {
    return 'ربحت +$points نقطة';
  }

  @override
  String cuzdanTxSpentBig(int points) {
    return 'استخدمت $points نقطة';
  }

  @override
  String cuzdanWorthRiyal(String value) {
    return '≈ بقيمة $value ريال';
  }

  @override
  String get cuzdanYesterday => 'أمس';

  @override
  String get dualarAllFilesDownloaded => 'تم تنزيل جميع الملفات بنجاح!';

  @override
  String get dualarArabicText => 'النص العربي';

  @override
  String get dualarBookPageView => 'عرض صفحة الكتاب';

  @override
  String get dualarChangeStartNumber => 'تغيير رقم البداية';

  @override
  String get dualarCompleted => 'اكتمل';

  @override
  String get dualarContentDownloadSuccess => 'تم تنزيل المحتوى بنجاح!';

  @override
  String get dualarContentDownloadTitle => 'تنزيل المحتوى';

  @override
  String get dualarContinue => 'متابعة';

  @override
  String dualarContinueFrom(int count) {
    return 'المتابعة من $count';
  }

  @override
  String get dualarCustom => 'مخصص';

  @override
  String dualarCustomValue(int value) {
    return 'مخصص ($value)';
  }

  @override
  String dualarDeleteZikirConfirm(String name) {
    return 'هل أنت متأكد من حذف ذكر «$name»؟';
  }

  @override
  String get dualarDeleteZikirTitle => 'حذف الذكر';

  @override
  String get dualarDlSay => 'أدعية السعي';

  @override
  String get dualarDlTavaf => 'أدعية الطواف';

  @override
  String get dualarDownload => 'تنزيل';

  @override
  String get dualarDownloadAll => 'تنزيل الكل';

  @override
  String get dualarDownloadContent => 'تنزيل المحتوى';

  @override
  String get dualarDownloadDialogInfo =>
      'نزّل صور صفحات الكتاب لاستخدامها دون إنترنت. نصوص الأدعية موجودة على جهازك بالفعل.';

  @override
  String dualarDownloadErrorDetail(String error) {
    return 'حدث خطأ أثناء التنزيل: $error';
  }

  @override
  String dualarDownloadErrorGeneric(String error) {
    return 'خطأ في التنزيل: $error';
  }

  @override
  String get dualarDownloadFailedShort => 'فشل التنزيل';

  @override
  String get dualarDownloadFailedTitle => 'فشل التنزيل!';

  @override
  String dualarDownloadItemFailed(String name, String error) {
    return 'تعذّر تنزيل $name: $error';
  }

  @override
  String get dualarDownloaded => 'تم التنزيل ✓';

  @override
  String get dualarDownloading => 'جارٍ التنزيل';

  @override
  String get dualarDownloadingTitle => 'جارٍ التنزيل...';

  @override
  String get dualarEditZikirTitle => 'تعديل الذكر';

  @override
  String get dualarEndShort => 'النهاية';

  @override
  String get dualarEnterName => 'يرجى إدخال اسم!';

  @override
  String get dualarEnterNumber => 'يرجى إدخال رقم!';

  @override
  String get dualarEnterTarget => 'يرجى تحديد هدف!';

  @override
  String dualarFileDownloadError(String error) {
    return 'خطأ في تنزيل الملف: $error';
  }

  @override
  String get dualarFileDownloading => 'جارٍ تنزيل الملف...';

  @override
  String dualarFileNotDownloaded(String name, String error) {
    return 'تعذّر تنزيل الملف $name: $error';
  }

  @override
  String dualarFileProgress(int current, int total) {
    return 'جارٍ تنزيل الملف $current/$total...';
  }

  @override
  String get dualarFillAllFields => 'يرجى عدم ترك أي حقل فارغ.';

  @override
  String dualarImageCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count صورة',
      many: '$count صورةً',
      few: '$count صور',
      two: 'صورتان',
      one: 'صورة واحدة',
    );
    return '$_temp0';
  }

  @override
  String get dualarImageNotDownloaded => 'لم يتم تنزيل الصورة بعد';

  @override
  String get dualarMeaning => 'المعنى';

  @override
  String get dualarNewZikir => 'ذكر جديد';

  @override
  String get dualarNoInternet => 'لا يوجد اتصال بالإنترنت';

  @override
  String get dualarNoInternetCheck =>
      'لا يوجد اتصال بالإنترنت. يرجى التحقق من اتصالك.';

  @override
  String get dualarNoLanguageOption => 'لا يتوفر خيار لغة لهذه الصفحة';

  @override
  String get dualarNoSavedZikir => 'لا توجد أذكار محفوظة بعد';

  @override
  String get dualarNoSavedZikirHint =>
      'استخدم «حفظ» في المسبحة لإضافة ذكرك إلى هذه القائمة.';

  @override
  String get dualarOptions => 'خيارات';

  @override
  String dualarOverallProgress(int percent) {
    return 'الإجمالي: $percent٪';
  }

  @override
  String get dualarReading => 'النطق';

  @override
  String get dualarReset => 'إعادة الضبط';

  @override
  String get dualarResetConfirm => 'هل تريد إعادة ضبط العداد؟';

  @override
  String dualarRoundsCompleted(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'اكتملت $count دورة',
      many: 'اكتملت $count دورةً',
      few: 'اكتملت $count دورات',
      two: 'اكتملت دورتان',
      one: 'اكتملت دورة واحدة',
    );
    return '$_temp0';
  }

  @override
  String get dualarSaveAsTitle => 'بأي اسم تريد حفظه في القائمة؟';

  @override
  String get dualarSavedZikirs => 'أذكاري المحفوظة';

  @override
  String dualarSavtCompletedReset(int count) {
    return 'اكتملت الأشواط الـ$count. اضغط مطولًا على العداد لإعادة الضبط.';
  }

  @override
  String dualarSavtCongrats(int count) {
    return 'مبارك! أتممت الأشواط الـ$count.';
  }

  @override
  String get dualarSavtCounter => 'عداد الأشواط';

  @override
  String get dualarSavtPlusOne => 'شوط +1';

  @override
  String dualarSavtShort(int number) {
    return 'الشوط $number';
  }

  @override
  String get dualarSayDownloading => 'جارٍ تنزيل أدعية السعي...';

  @override
  String get dualarSayPageTitle => 'أدعية السعي (الصفا والمروة)';

  @override
  String dualarServerError(int code) {
    return 'خطأ في الخادم: $code';
  }

  @override
  String get dualarSetTargetTitle => 'حدّد لنفسك هدفًا.';

  @override
  String get dualarSilent => 'صامت';

  @override
  String get dualarStartFromTitle => 'من أي رقم تريد أن تبدأ العد؟';

  @override
  String get dualarStartNumberHint => 'رقم البداية';

  @override
  String get dualarStartShort => 'البداية';

  @override
  String get dualarTap => 'اضغط';

  @override
  String get dualarTargetHint => 'مثال: 500';

  @override
  String get dualarTargetReached => 'لقد وصلت إلى هدفك!';

  @override
  String dualarTargetSet(int target) {
    return 'تم تحديد هدفك: $target!';
  }

  @override
  String get dualarTargetTooBig => 'لا يمكن أن يتجاوز هدفك 99999!';

  @override
  String get dualarTargetZero => 'لا يمكن أن يكون هدفك 0!';

  @override
  String get dualarTavafDownloading => 'جارٍ تنزيل أدعية الطواف...';

  @override
  String get dualarTavafPageTitle => 'أدعية أشواط الطواف';

  @override
  String get dualarTextView => 'عرض النص';

  @override
  String get dualarTextViewOffline =>
      'يعمل عرض النص دون اتصال بالإنترنت أيضًا.';

  @override
  String get dualarThemeColor => 'لون السمة';

  @override
  String get dualarTimeout => 'انتهت المهلة';

  @override
  String get dualarTurkishTranslation => 'الترجمة التركية';

  @override
  String get dualarUndo => 'تراجع';

  @override
  String get dualarVibration => 'اهتزاز';

  @override
  String get dualarVibrationOff => 'تم إيقاف الاهتزاز';

  @override
  String get dualarVibrationOn => 'تم تشغيل الاهتزاز';

  @override
  String get dualarViewList => 'عرض القائمة';

  @override
  String dualarYourTarget(int target) {
    return 'هدفك: $target';
  }

  @override
  String dualarZikirContinuing(String name) {
    return 'تواصل ذكر «$name».';
  }

  @override
  String get dualarZikirCount => 'عدد الذكر';

  @override
  String get dualarZikirMaxReached => 'لا يمكن زيادة العداد أكثر!';

  @override
  String get dualarZikirName => 'اسم الذكر';

  @override
  String get dualarZikirNameHint => 'مثال: سبحان الله';

  @override
  String get dualarZikirSaved => 'تم حفظ ذكرك بنجاح!';

  @override
  String dualarZikirSavedCount(String name, int count) {
    return 'تم حفظ «$name» ($count)';
  }

  @override
  String get dualarZikirmatik => 'المسبحة';

  @override
  String get esnafAllTransactions => 'كل العمليات';

  @override
  String get esnafAmountInvalid => 'أدخل مبلغًا صحيحًا.';

  @override
  String get esnafAmountLabel => 'المبلغ (ر.س)';

  @override
  String esnafAmountTooHigh(String max) {
    return 'الحد الأقصى للعملية الواحدة هو $max.';
  }

  @override
  String get esnafBackHome => 'الرئيسية';

  @override
  String get esnafByMethod => 'حسب طريقة الدفع';

  @override
  String esnafCalcCoupon(String code) {
    return 'القسيمة $code';
  }

  @override
  String esnafCalcDiscount(int percent) {
    return 'الخصم ($percent%)';
  }

  @override
  String get esnafCalcGross => 'المبلغ الإجمالي';

  @override
  String get esnafCalcPayable => 'المبلغ المستحق';

  @override
  String get esnafCalcPointsBalance => 'رصيد الضيف';

  @override
  String get esnafCalcPointsEarned => 'النقاط المكتسبة';

  @override
  String get esnafCalcPointsNeeded => 'النقاط المطلوبة';

  @override
  String get esnafCalcPointsSpent => 'النقاط المستخدمة';

  @override
  String get esnafCancelAction => 'إلغاء';

  @override
  String esnafCancelConfirmBody(String guest, String amount) {
    return 'سيتم إلغاء عملية $guest بمبلغ $amount. لا يمكن التراجع عن ذلك.';
  }

  @override
  String get esnafCancelConfirmTitle => 'هل أنت متأكد؟';

  @override
  String get esnafCancelDenied => 'تعذر الإلغاء: ربما انتهت مهلة الـ 24 ساعة.';

  @override
  String get esnafCancelDone => 'تم إلغاء العملية.';

  @override
  String get esnafCancelReason => 'سبب الإلغاء';

  @override
  String get esnafCancelReasonPrompt =>
      'اكتب سبب الإلغاء. ستطلع الوكالة على هذا السجل.';

  @override
  String get esnafCancelReasonRequired => 'يرجى كتابة سبب مختصر.';

  @override
  String get esnafCancelTitle => 'إلغاء العملية';

  @override
  String get esnafCancelWindowPassed => 'يمكن إلغاء العمليات خلال 24 ساعة فقط.';

  @override
  String get esnafCancelledAt => 'وقت الإلغاء';

  @override
  String get esnafCancelledTag => 'ملغاة';

  @override
  String esnafCodeLabel(String code) {
    return 'الرمز: $code';
  }

  @override
  String get esnafContinue => 'متابعة';

  @override
  String get esnafCopied => 'تم نسخ التقرير.';

  @override
  String get esnafCopy => 'نسخ';

  @override
  String esnafCouponApplied(String amount) {
    return 'خصم القسيمة المطبق: $amount';
  }

  @override
  String get esnafCouponEnterAmount => 'يُحسب خصم القسيمة بعد إدخال المبلغ.';

  @override
  String get esnafCouponErrAlreadyUsed => 'استخدم الضيف هذه القسيمة من قبل.';

  @override
  String get esnafCouponErrExhausted => 'بلغت القسيمة حد الاستخدام.';

  @override
  String get esnafCouponErrExpired => 'انتهت صلاحية القسيمة.';

  @override
  String get esnafCouponErrInactive => 'القسيمة غير مفعلة.';

  @override
  String esnafCouponErrMinSpend(String amount) {
    return 'هذه القسيمة صالحة للمشتريات من $amount فأكثر.';
  }

  @override
  String get esnafCouponErrNotFound => 'لم يتم العثور على القسيمة.';

  @override
  String get esnafCouponErrNotStarted => 'لم تبدأ القسيمة بعد.';

  @override
  String get esnafCouponErrOtherAgency => 'القسيمة غير صالحة لوكالة هذا الضيف.';

  @override
  String get esnafCouponErrOtherShop => 'القسيمة غير صالحة في هذا المتجر.';

  @override
  String get esnafCouponErrSave =>
      'تعذر استخدام القسيمة: ربما استخدمها الضيف من قبل أو نفدت للتو. اطلب من الضيف إنشاء رمز جديد بدون القسيمة.';

  @override
  String get esnafCouponErrZero => 'لا يمكن تطبيق خصم القسيمة على هذا المبلغ.';

  @override
  String esnafCouponFixed(String amount) {
    return 'خصم $amount';
  }

  @override
  String get esnafCouponInvalidHint =>
      'لا يمكن تسجيل العملية بهذا الرمز. اطلب من الضيف إنشاء رمز جديد بدون القسيمة.';

  @override
  String get esnafCouponLoading => 'جارٍ التحقق من القسيمة…';

  @override
  String esnafCouponMax(String amount) {
    return 'بحد أقصى $amount';
  }

  @override
  String esnafCouponMin(String amount) {
    return 'للمشتريات من $amount فأكثر';
  }

  @override
  String esnafCouponPercent(String value) {
    return 'خصم $value%';
  }

  @override
  String esnafCouponTitle(String code) {
    return 'القسيمة: $code';
  }

  @override
  String get esnafDayReport => 'تقرير نهاية اليوم';

  @override
  String esnafDiscountBadge(int percent) {
    return 'خصم $percent%';
  }

  @override
  String esnafDiscountShort(String amount) {
    return 'خصم $amount';
  }

  @override
  String get esnafErrExpired => 'انتهت صلاحية الرمز';

  @override
  String get esnafErrExpiredBody =>
      'انتهت صلاحية الرمز. اطلب من الضيف رمزًا جديدًا وامسحه مرة أخرى.';

  @override
  String get esnafErrInvalidCode =>
      'هذا الرمز غير صالح أو منتهي الصلاحية أو مستخدم مسبقًا.';

  @override
  String get esnafErrNetwork =>
      'مشكلة في الاتصال. تحقق من الإنترنت وحاول مرة أخرى.';

  @override
  String get esnafErrNotFound => 'لم يتم العثور على الرمز';

  @override
  String get esnafErrNotOurs => 'هذا ليس رمزًا من دليل العمرة';

  @override
  String get esnafErrNotOursBody => 'اطلب من الضيف فتح رمز المتجر في التطبيق.';

  @override
  String get esnafErrOtherAgency => 'ليست وكالة متعاقدة';

  @override
  String get esnafErrOtherAgencyBody =>
      'لا يوجد اتفاق خصم بين متجرك ووكالة هذا الضيف.';

  @override
  String get esnafErrSave => 'تعذر الحفظ. يرجى المحاولة مرة أخرى.';

  @override
  String get esnafErrTitle => 'لم يتم حفظ العملية';

  @override
  String get esnafErrUsed => 'الرمز مستخدم مسبقًا';

  @override
  String esnafErrUsedAt(String shop) {
    return 'تم استخدام هذا الرمز في متجر \"$shop\". اطلب من الضيف رمزًا جديدًا.';
  }

  @override
  String get esnafErrUsedBody => 'اطلب من الضيف إنشاء رمز جديد.';

  @override
  String get esnafGuest => 'الضيف';

  @override
  String get esnafGuestPoints => 'رصيد النقاط';

  @override
  String get esnafGuestTrip => 'الرحلة';

  @override
  String get esnafHistoryTitle => 'سجل العمليات';

  @override
  String get esnafLoadFailed => 'تعذر تحميل البيانات';

  @override
  String get esnafLoadFailedBody => 'تحقق من اتصالك بالإنترنت وحاول مرة أخرى.';

  @override
  String get esnafLoginCodeError =>
      'يجب أن يتكون رمز التاجر من 6 خانات (A-Z، 2-9).';

  @override
  String get esnafLoginCodeLabel => 'رمز التاجر';

  @override
  String get esnafLoginHint =>
      'يتم تزويدك بالرمز والرقم السري من قبل وكالة السفر.';

  @override
  String get esnafLoginNotMerchant => 'هذا الحساب ليس حساب تاجر.';

  @override
  String get esnafLoginPinError => 'يجب أن يتكون الرقم السري من 6 أرقام.';

  @override
  String get esnafLoginPinLabel => 'الرقم السري (PIN)';

  @override
  String get esnafLoginType => 'تاجر';

  @override
  String get esnafLoginUseMerchant =>
      'هذا حساب تاجر. يرجى اختيار تسجيل الدخول كـ \"تاجر\".';

  @override
  String get esnafLoginWrong => 'رمز التاجر أو الرقم السري غير صحيح.';

  @override
  String get esnafLogoCamera => 'التقط صورة';

  @override
  String get esnafLogoGallery => 'اختر من المعرض';

  @override
  String get esnafLogoRemove => 'إزالة الشعار';

  @override
  String get esnafLogout => 'تسجيل الخروج';

  @override
  String get esnafLogoutConfirm => 'هل تريد تسجيل الخروج؟';

  @override
  String get esnafMenuShopInfo => 'معلومات متجري';

  @override
  String get esnafMethodAll => 'الكل';

  @override
  String get esnafMethodCard => 'بطاقة ائتمان';

  @override
  String get esnafMethodCash => 'نقدًا';

  @override
  String get esnafMethodLabel => 'طريقة الدفع';

  @override
  String get esnafMethodPoints => 'نقاط';

  @override
  String get esnafNewTx => 'عملية جديدة';

  @override
  String get esnafNoCollectNote =>
      'التطبيق لا يحصّل الدفع، بل يسجّل العملية فقط.';

  @override
  String get esnafNoTransactions => 'لا توجد عمليات مطابقة لهذا الفلتر.';

  @override
  String get esnafNoTransactionsToday => 'لا توجد عمليات اليوم بعد.';

  @override
  String get esnafNoteLabel => 'ملاحظة (اختياري)';

  @override
  String esnafPointsInsufficient(String need, String balance) {
    return 'النقاط غير كافية: المطلوب $need، الرصيد $balance.';
  }

  @override
  String get esnafPointsNone => 'لا يملك الضيف نقاطًا، لا يمكن الدفع بالنقاط.';

  @override
  String get esnafRange30 => '30 يومًا';

  @override
  String get esnafRange7 => '7 أيام';

  @override
  String get esnafRangeCustom => 'مخصص';

  @override
  String get esnafRangeToday => 'اليوم';

  @override
  String get esnafRecentTransactions => 'آخر العمليات';

  @override
  String get esnafReportCancelled => 'العمليات الملغاة';

  @override
  String get esnafReportFooter => 'دليل العمرة – لوحة التاجر';

  @override
  String esnafReportHeader(String shop) {
    return '$shop – تقرير نهاية اليوم';
  }

  @override
  String get esnafReportPickDay => 'اختر يوم التقرير';

  @override
  String get esnafReviewComplaint => 'شكوى';

  @override
  String get esnafReviewTitle => 'تقييم الضيف';

  @override
  String esnafSar(String amount) {
    return '$amount ر.س';
  }

  @override
  String get esnafSaveTx => 'حفظ العملية';

  @override
  String get esnafScanAgain => 'امسح مرة أخرى';

  @override
  String get esnafScanQr => 'امسح رمز QR';

  @override
  String get esnafScanQrHint => 'امسح الرمز الظاهر على هاتف الضيف';

  @override
  String get esnafShopDescription => 'الوصف';

  @override
  String get esnafShopHours => 'ساعات العمل';

  @override
  String get esnafShopInactive =>
      'متجرك غير نشط حاليًا ولا يمكن تسجيل عمليات. يرجى التواصل مع الوكالة.';

  @override
  String get esnafShopNotFound => 'لم يتم العثور على المتجر';

  @override
  String get esnafShopNotFoundBody =>
      'لا يوجد متجر مرتبط بحسابك. يرجى التواصل مع وكالة السفر.';

  @override
  String get esnafShopPhone => 'الهاتف';

  @override
  String get esnafShopReadOnlyNote =>
      'يمكن للوكالة فقط تغيير اسم المتجر ونسبة الخصم.';

  @override
  String get esnafShopSaved => 'تم حفظ معلومات المتجر.';

  @override
  String get esnafShopWhatsapp => 'واتساب';

  @override
  String get esnafStatCount => 'العمليات';

  @override
  String get esnafStatDiscount => 'الخصم المقدم';

  @override
  String get esnafStatNet => 'صافي المبيعات';

  @override
  String get esnafSuccessBody =>
      'استلم المبلغ من خلال صندوقك أو جهاز نقاط البيع الخاص بك.';

  @override
  String get esnafSuccessTitle => 'تم حفظ العملية';

  @override
  String get esnafTime => 'الوقت';

  @override
  String get esnafTitle => 'لوحة التاجر';

  @override
  String get esnafTodaySummary => 'ملخص اليوم';

  @override
  String get esnafTxTitle => 'عملية جديدة';

  @override
  String get hatimCancel => 'إلغاء';

  @override
  String get hatimCardSubtitle => 'اختموا القرآن معًا وتقاسموا الأجزاء';

  @override
  String get hatimCompletedBadge => 'مكتملة';

  @override
  String get hatimCompletedBanner => 'اكتملت الختمة، تقبّل الله';

  @override
  String get hatimConfirm => 'نعم';

  @override
  String get hatimCreateButton => 'إنشاء المجموعة';

  @override
  String get hatimCreateTitle => 'مجموعة ختمة جديدة';

  @override
  String get hatimCreated => 'تم إنشاء مجموعة الختمة';

  @override
  String hatimDeadline(String date) {
    return 'الموعد: $date';
  }

  @override
  String get hatimDeadlineClear => 'إزالة';

  @override
  String get hatimDeadlineLabel => 'التاريخ المستهدف (اختياري)';

  @override
  String get hatimDeadlineNone => 'لم يُحدَّد تاريخ';

  @override
  String get hatimDelete => 'حذف المجموعة';

  @override
  String get hatimDeleteConfirm => 'ستُحذف المجموعة وكل تقدّمها. هل أنت متأكد؟';

  @override
  String hatimDoneBy(String name) {
    return 'قرأه: $name';
  }

  @override
  String get hatimDoneToast => 'تقبّل الله!';

  @override
  String get hatimEdit => 'تعديل';

  @override
  String get hatimEditTitle => 'تعديل المجموعة';

  @override
  String get hatimEmptyDiscover =>
      'لا توجد مجموعات أخرى يمكنك الانضمام إليها حاليًا.';

  @override
  String get hatimEmptyMine =>
      'ليس لديك مجموعات ختمة بعد. أنشئ مجموعة جديدة أو انضم إلى مجموعة من تبويب الاستكشاف.';

  @override
  String get hatimErrAlreadyDone => 'تمت قراءة هذا الجزء بالفعل';

  @override
  String get hatimErrCreateTooSoon =>
      'يرجى الانتظار دقيقة قبل إنشاء مجموعة أخرى.';

  @override
  String get hatimErrFull => 'المجموعة ممتلئة (200 عضو كحد أقصى)';

  @override
  String get hatimErrGeneric => 'تعذّر إتمام العملية. يرجى المحاولة مرة أخرى.';

  @override
  String get hatimErrNetwork => 'مشكلة في الاتصال. يرجى المحاولة مرة أخرى.';

  @override
  String get hatimErrNotActive => 'اكتملت هذه الختمة. انتظر بدء ختمة جديدة.';

  @override
  String get hatimErrNotSignedIn =>
      'لم يتم العثور على جلسة. يرجى تسجيل الدخول مجددًا.';

  @override
  String get hatimErrNotYours => 'لم يعد هذا الجزء لك';

  @override
  String get hatimErrPermission => 'ليست لديك صلاحية لهذا الإجراء';

  @override
  String get hatimErrQuotaCuz =>
      'يمكنك أخذ 3 أجزاء كحد أقصى. أنهِ ما لديك أولًا.';

  @override
  String get hatimErrQuotaSayfa =>
      'يمكنك أخذ 20 صفحة كحد أقصى. أنهِ ما لديك أولًا.';

  @override
  String get hatimErrRejoinTooSoon =>
      'يرجى الانتظار قليلًا قبل الانضمام إلى المجموعة مجددًا.';

  @override
  String get hatimErrTakenCuz => 'أخذ شخص آخر هذا الجزء للتو';

  @override
  String get hatimErrTakenSayfa => 'أخذ شخص آخر هذه الصفحة للتو';

  @override
  String get hatimErrTooSoon =>
      'امنح نفسك وقتًا للقراءة. يمكنك الإنهاء بعد دقيقة على الأقل من أخذ الجزء.';

  @override
  String get hatimEvCompleted => 'اكتملت الختمة! تقبّل الله';

  @override
  String hatimEvCreate(String name) {
    return 'أنشأ $name المجموعة';
  }

  @override
  String hatimEvDoneCuz(String name, int n, int done, int total) {
    return 'أنهى $name الجزء $n ($done/$total)';
  }

  @override
  String hatimEvDoneSayfa(String name, int n, int done, int total) {
    return 'أنهى $name الصفحة $n ($done/$total)';
  }

  @override
  String hatimEvJoin(String name) {
    return 'انضم $name إلى المجموعة';
  }

  @override
  String hatimEvKick(String name) {
    return 'أزال $name عضوًا من المجموعة';
  }

  @override
  String hatimEvLeave(String name) {
    return 'غادر $name المجموعة';
  }

  @override
  String hatimEvNewRound(int round) {
    return 'بدأت الختمة رقم $round';
  }

  @override
  String hatimEvRelease(String name) {
    return 'تخلّى $name عن جزء';
  }

  @override
  String hatimEvTakeCuz(String name, int n) {
    return 'أخذ $name الجزء $n';
  }

  @override
  String hatimEvTakeSayfa(String name, int n) {
    return 'أخذ $name الصفحة $n';
  }

  @override
  String get hatimFieldName => 'اسم المجموعة';

  @override
  String get hatimFieldNameHint => 'مثال: ختمة لوالدتي';

  @override
  String get hatimFieldNiyet => 'النية / الدعاء (اختياري)';

  @override
  String get hatimFieldNiyetHint => 'لمن هذه الختمة وبأي نية؟';

  @override
  String get hatimGroupNotFound => 'لم يُعثر على المجموعة أو تم حذفها.';

  @override
  String get hatimInviteCopied => 'تم نسخ نص الدعوة';

  @override
  String hatimInviteText(String name) {
    return 'انضم إلى مجموعة الختمة \"$name\"! تجدها في تطبيق Umre Rehberim ضمن الأدعية > الختمة الجماعية.';
  }

  @override
  String get hatimJoin => 'انضم إلى المجموعة';

  @override
  String get hatimJoined => 'انضممت إلى المجموعة';

  @override
  String get hatimKick => 'إزالة العضو';

  @override
  String hatimKickConfirm(String name) {
    return 'هل تريد إزالة $name من المجموعة؟ ستُحرَّر الأجزاء التي لم ينهها.';
  }

  @override
  String get hatimKicked => 'تمت إزالة العضو';

  @override
  String get hatimLastEvent => 'آخر النشاطات';

  @override
  String get hatimLeave => 'مغادرة المجموعة';

  @override
  String get hatimLeaveConfirm => 'هل تريد مغادرة هذه المجموعة؟';

  @override
  String get hatimLegendDone => 'منتهٍ';

  @override
  String get hatimLegendFree => 'متاح';

  @override
  String get hatimLegendMine => 'لي';

  @override
  String get hatimLegendTaken => 'مأخوذ';

  @override
  String get hatimLoadError => 'تعذّر تحميل المجموعات';

  @override
  String get hatimMarkDone => 'أنهيت';

  @override
  String hatimMembers(int count) {
    return '$count عضو';
  }

  @override
  String get hatimNameInvalid => 'يجب أن يكون اسم المجموعة بين 3 و60 حرفًا';

  @override
  String get hatimNewGroup => 'مجموعة ختمة جديدة';

  @override
  String get hatimNewRound => 'بدء ختمة جديدة';

  @override
  String get hatimNewRoundConfirm =>
      'هل تبدأ ختمة جديدة بالمجموعة نفسها؟ سيُعاد ضبط التقدّم.';

  @override
  String get hatimNiyetInvalid => 'يجب ألا تتجاوز النية 300 حرف';

  @override
  String get hatimNotMember => 'انضم إلى المجموعة أولًا لتأخذ جزءًا.';

  @override
  String hatimOwner(String name) {
    return 'أنشأها: $name';
  }

  @override
  String hatimPartCuz(int n) {
    return 'الجزء $n';
  }

  @override
  String hatimPartSayfa(int n) {
    return 'الصفحة $n';
  }

  @override
  String get hatimPrivateBadge => 'خاصة بالوكالة';

  @override
  String get hatimPrivateDesc =>
      'لا يرى المجموعة ولا ينضم إليها إلا من هم في وكالتك نفسها.';

  @override
  String get hatimPrivateTitle => 'وكالتي فقط';

  @override
  String hatimProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String get hatimPublicBadge => 'عامة';

  @override
  String get hatimPublicDesc =>
      'يرى جميع مستخدمي التطبيق المجموعة في الاستكشاف ويمكنهم الانضمام.';

  @override
  String get hatimPublicTitle => 'عامة';

  @override
  String hatimQuotaInfo(int held, int max) {
    return 'لديك $held/$max';
  }

  @override
  String get hatimRelease => 'تخلَّ عنه';

  @override
  String get hatimReleaseOther => 'تحرير هذا الجزء';

  @override
  String hatimReleaseOtherConfirm(String name) {
    return 'هل تريد تحرير الجزء الذي أخذه $name؟';
  }

  @override
  String hatimRound(int round) {
    return 'الختمة رقم $round';
  }

  @override
  String get hatimSave => 'حفظ';

  @override
  String get hatimShare => 'دعوة';

  @override
  String get hatimStartReading => 'ابدأ القراءة';

  @override
  String get hatimTabDiscover => 'استكشاف';

  @override
  String get hatimTabMine => 'مجموعاتي';

  @override
  String get hatimTake => 'خذ';

  @override
  String hatimTakeConfirmCuz(int n) {
    return 'هل تريد أخذ الجزء $n؟';
  }

  @override
  String hatimTakeConfirmSayfa(int n) {
    return 'هل تريد أخذ الصفحة $n؟';
  }

  @override
  String hatimTakenBy(String name) {
    return 'أخذه: $name';
  }

  @override
  String get hatimTakenToast => 'أصبح الجزء لك. قراءة مباركة!';

  @override
  String get hatimTitle => 'الختمة الجماعية';

  @override
  String get hatimUnitCuz => 'جزء';

  @override
  String get hatimUnitCuzDesc => '30 جزءًا. يأخذ كل عضو جزءًا أو أكثر.';

  @override
  String get hatimUnitLabel => 'كيف تُقسَّم الختمة؟';

  @override
  String get hatimUnitLocked =>
      'لا يمكن تغيير وحدة التقسيم بعد إنشاء المجموعة.';

  @override
  String get hatimUnitSayfa => 'صفحة';

  @override
  String get hatimUnitSayfaDesc =>
      '604 صفحات. تنتهي سريعًا مع المجموعات الكبيرة.';

  @override
  String get hatimVisibilityLabel => 'من يمكنه رؤيتها؟';

  @override
  String get homeAnnouncement => 'إعلان';

  @override
  String get homeBirthDate => 'تاريخ الميلاد';

  @override
  String get homeCalendarNoAgency => 'سيظهر البرنامج هنا عند تحديد وكالتك.';

  @override
  String get homeCalendarNotFound => 'لم يتم العثور على معلومات الجدول';

  @override
  String get homeCallAgency => 'اتصل بالوكالة';

  @override
  String get homeChecking => 'جارٍ التحقق...';

  @override
  String get homeContactAgencyHint => 'يرجى التواصل مع الوكالة.';

  @override
  String get homeContactGuide => 'التواصل مع المرشد';

  @override
  String get homeContactGuideSubtitle => 'تواصل مع مرشدك';

  @override
  String get homeCountdownDays => 'يوم';

  @override
  String get homeCountdownHours => 'ساعة';

  @override
  String get homeCountdownMinutes => 'دقيقة';

  @override
  String get homeCountdownSeconds => 'ثانية';

  @override
  String get homeCurrencySar => 'الريال السعودي';

  @override
  String get homeCurrencyTry => 'الليرة التركية';

  @override
  String homeDayN(int day) {
    return 'اليوم $day';
  }

  @override
  String get homeDaysLeftLabel => 'أيام متبقية';

  @override
  String get homeDhikrSection => 'الذكر';

  @override
  String get homeDownloadContent => 'تنزيل المحتوى';

  @override
  String get homeDuaQuoteCallUpon =>
      'وَقَالَ رَبُّكُمُ ادْعُونِي أَسْتَجِبْ لَكُمْ';

  @override
  String get homeDuaQuoteHearts =>
      'أَلَا بِذِكْرِ اللَّهِ تَطْمَئِنُّ الْقُلُوبُ';

  @override
  String get homeDuaQuoteNear =>
      'وَإِذَا سَأَلَكَ عِبَادِي عَنِّي فَإِنِّي قَرِيبٌ ۖ أُجِيبُ دَعْوَةَ الدَّاعِ إِذَا دَعَانِ';

  @override
  String get homeDuaQuoteRemember => 'فَاذْكُرُونِي أَذْكُرْكُمْ';

  @override
  String get homeDuasQuranSubtitle => 'اضغط للقراءة والاستماع';

  @override
  String get homeDuasSai => 'أدعية السعي';

  @override
  String get homeDuasSaiSubtitle => 'اضغط للقراءة بين الصفا والمروة';

  @override
  String get homeDuasTawaf => 'أدعية الطواف';

  @override
  String get homeDuasTitle => 'الأدعية والقرآن الكريم';

  @override
  String get homeDuasUmrahSection => 'أدعية العمرة';

  @override
  String homeDurationH(int hours) {
    return '$hours س';
  }

  @override
  String homeDurationHM(int hours, int minutes) {
    return '$hours س $minutes د';
  }

  @override
  String homeDurationM(int minutes) {
    return '$minutes د';
  }

  @override
  String get homeEventDone => 'انتهت';

  @override
  String get homeEventUpcoming => 'قادمة';

  @override
  String get homeEventsLoadError =>
      'تعذّر تحميل الفعاليات. تحقق من اتصالك بالإنترنت وحاول مرة أخرى.';

  @override
  String get homeFixPermission => 'إصلاح الإذن';

  @override
  String get homeGender => 'الجنس';

  @override
  String get homeGenderFemale => 'أنثى';

  @override
  String get homeGenderMale => 'ذكر';

  @override
  String get homeGreeting => 'السلام عليكم';

  @override
  String get homeGuest => 'ضيف';

  @override
  String get homeGuide => 'المرشد';

  @override
  String get homeGuideLocation => 'موقع المرشد';

  @override
  String get homeHotelInfo => 'معلومات الفندق';

  @override
  String homeHoursAgo(int count) {
    return 'منذ $count س';
  }

  @override
  String get homeJustNow => 'الآن';

  @override
  String homeLastSent(String when) {
    return 'آخر إرسال: $when';
  }

  @override
  String homeLastUpdate(String date) {
    return 'آخر تحديث: $date';
  }

  @override
  String get homeLocationAllow => 'السماح بالوصول إلى الموقع';

  @override
  String get homeLocationBackgroundWarning =>
      'لا يوجد إذن للموقع في الخلفية: عندما تكون الشاشة مغلقة يُحدَّث الموقع نادرًا وبشكل غير دقيق. اختر \"السماح طوال الوقت\" من الإعدادات > الأذونات > الموقع.';

  @override
  String get homeLocationBeingShared => 'تتم مشاركة موقعك';

  @override
  String get homeLocationGpsOff => 'خدمة الموقع (GPS) في الهاتف مغلقة';

  @override
  String get homeLocationPermissionDenied => 'لم يتم منح إذن الموقع';

  @override
  String get homeLocationReceived => 'تم استلام الموقع';

  @override
  String get homeLocationReducedWarning =>
      'خيار \"الموقع التقريبي\" مفعّل: قد ينحرف موقعك بين بضع مئات من الأمتار وعدة كيلومترات. فعّل \"استخدام الموقع الدقيق\" من الإعدادات > الأذونات > الموقع.';

  @override
  String get homeLocationServiceStarting =>
      'المشاركة مفعّلة، جارٍ تشغيل الخدمة...';

  @override
  String get homeLocationSharing => 'مشاركة الموقع';

  @override
  String get homeLocationSharingDesc =>
      'عند التفعيل، تتم مشاركة موقعك مع مرشدك حتى عندما يكون التطبيق مغلقًا.';

  @override
  String get homeLocationSharingDisabled => 'المشاركة متوقفة';

  @override
  String get homeLocationSharingOff => 'تم إيقاف مشاركة الموقع';

  @override
  String get homeLocationSharingOn => 'تم تفعيل مشاركة الموقع';

  @override
  String get homeLocationStart => 'بدء تتبع الموقع';

  @override
  String get homeLocationStartHint => 'ليتمكن مرشدك من رؤية موقعك';

  @override
  String get homeLocationStop => 'إيقاف تتبع الموقع';

  @override
  String get homeLocationTracking => 'تتبع الموقع';

  @override
  String get homeLogout => 'تسجيل الخروج';

  @override
  String get homeLogoutConfirm =>
      'هل أنت متأكد أنك تريد تسجيل الخروج من حسابك؟';

  @override
  String get homeLogoutFailed => 'تعذّر تسجيل الخروج. يرجى المحاولة مرة أخرى.';

  @override
  String homeMinutesAgo(int count) {
    return 'منذ $count د';
  }

  @override
  String get homeNext => 'التالي';

  @override
  String get homeNoActiveTrip => 'ليست لديك رحلة نشطة';

  @override
  String get homeNoEventsHint => 'اختر يومًا آخر لعرض الفعاليات';

  @override
  String get homeNoEventsToday => 'لا توجد فعاليات لهذا اليوم';

  @override
  String get homeNoManagerForTrip => 'لم يتم تعيين مسؤول لهذه الرحلة بعد';

  @override
  String get homeNoName => 'لا يوجد اسم';

  @override
  String get homeNoNotifications => 'لا توجد إشعارات بعد.';

  @override
  String get homeNoNotificationsHint => 'ستظهر إعلانات مرشدك هنا.';

  @override
  String get homeNoPhone => 'لا يوجد رقم هاتف';

  @override
  String get homeNotYet => 'لم يتم بعد';

  @override
  String get homeNotificationsLoadError => 'تعذّر تحميل الإشعارات.';

  @override
  String get homeNotificationsTitle => 'الإشعارات';

  @override
  String get homeOfflineMode => 'وضع عدم الاتصال';

  @override
  String get homeOpenBigMap => 'افتح في الخريطة الكاملة واحصل على الاتجاهات';

  @override
  String get homePersonal => 'خاص بك';

  @override
  String get homePersonalInfo => 'المعلومات الشخصية';

  @override
  String get homePhaseDone => 'اكتملت';

  @override
  String get homePhaseNone => 'غير مخططة';

  @override
  String get homePhaseOngoing => 'جارية';

  @override
  String get homePhaseUpcoming => 'قادمة';

  @override
  String get homePhone => 'الهاتف';

  @override
  String get homePhoneOpenFailed => 'تعذّر فتح تطبيق الهاتف';

  @override
  String get homePickDay => 'اختر يومًا';

  @override
  String get homePrayerAsr => 'العصر';

  @override
  String get homePrayerDhuhr => 'الظهر';

  @override
  String get homePrayerFajr => 'الفجر';

  @override
  String get homePrayerIsha => 'العشاء';

  @override
  String get homePrayerMaghrib => 'المغرب';

  @override
  String get homePrayerSunrise => 'الشروق';

  @override
  String get homePrevious => 'السابق';

  @override
  String get homeProfileTitle => 'الملف الشخصي';

  @override
  String get homeProgramCalendar => 'جدول البرنامج';

  @override
  String homeProgramDay(int day, int total) {
    return 'اليوم $day من البرنامج • المجموع $total يومًا';
  }

  @override
  String get homeQuickDuas => 'الأدعية';

  @override
  String get homeQuickPlaces => 'أماكن للزيارة';

  @override
  String get homeQuickQibla => 'القبلة';

  @override
  String get homeQuickQuran => 'القرآن الكريم';

  @override
  String get homeQuickShops => 'المتاجر المتعاقدة';

  @override
  String get homeQuoteAcceptFromUs =>
      'رَبَّنَا تَقَبَّلْ مِنَّا إِنَّكَ أَنتَ السَّمِيعُ الْعَلِيمُ';

  @override
  String get homeQuoteCompleteHajj =>
      'وَأَتِمُّوا الْحَجَّ وَالْعُمْرَةَ لِلَّهِ';

  @override
  String get homeQuoteRamadanUmrah => 'عمرة في رمضان تعدل حجة';

  @override
  String get homeQuoteSafaMarwah =>
      'إِنَّ الصَّفَا وَالْمَرْوَةَ مِن شَعَائِرِ اللَّهِ';

  @override
  String get homeQuoteUmrahExpiation => 'العمرة إلى العمرة كفارة لما بينهما';

  @override
  String get homeRatesError =>
      'تعذّر جلب أسعار الصرف. تحقق من اتصالك بالإنترنت.';

  @override
  String get homeRatesLive => 'سعر مباشر';

  @override
  String get homeRefresh => 'تحديث';

  @override
  String get homeRegistrationDate => 'تاريخ التسجيل';

  @override
  String homeRoom(String room) {
    return 'غرفة $room';
  }

  @override
  String homeRoomCapacity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count شخص',
      many: '$count شخصًا',
      few: '$count أشخاص',
      two: 'شخصان',
      one: 'شخص واحد',
    );
    return '($_temp0)';
  }

  @override
  String get homeRoomInfo => 'معلومات الغرفة';

  @override
  String get homeSavedDhikrs => 'أذكاري المحفوظة';

  @override
  String get homeSavedDhikrsSubtitle => 'تابع من حيث توقفت';

  @override
  String get homeSectionCurrency => 'أسعار الصرف';

  @override
  String get homeSectionJourney => 'موعد الرحلة المباركة';

  @override
  String get homeSectionPrayerTimes => 'مواقيت الصلاة';

  @override
  String get homeSectionQuickAccess => 'وصول سريع';

  @override
  String get homeSendMessage => 'إرسال رسالة';

  @override
  String get homeSomethingWrong => 'حدثت مشكلة';

  @override
  String get homeSourceBaqarah127 => 'سورة البقرة، 127';

  @override
  String get homeSourceBaqarah152Short => 'البقرة: 152';

  @override
  String get homeSourceBaqarah158 => 'سورة البقرة، 158';

  @override
  String get homeSourceBaqarah186Short => 'البقرة: 186';

  @override
  String get homeSourceBaqarah196 => 'سورة البقرة، 196';

  @override
  String get homeSourceBaqarah196Short => 'البقرة: 196';

  @override
  String get homeSourceBukhari => 'حديث شريف (البخاري)';

  @override
  String get homeSourceGhafir60Short => 'غافر: 60';

  @override
  String get homeSourceRad28Short => 'الرعد: 28';

  @override
  String get homeTapToRead => 'اضغط للقراءة';

  @override
  String get homeTasbihCounter => 'المسبحة الإلكترونية';

  @override
  String get homeTasbihSubtitle => 'اضغط لبدء الذكر';

  @override
  String get homeTcNo => 'رقم الهوية التركية';

  @override
  String get homeTechSupportInfo => 'معلومات الدعم الفني';

  @override
  String get homeToday => 'اليوم';

  @override
  String get homeTripAccepted => 'تقبّل الله منكم!';

  @override
  String get homeTripNotDefined => 'لم تُحدَّد معلومات الرحلة بعد.';

  @override
  String homeTripOf(String city) {
    return 'رحلة $city';
  }

  @override
  String get homeUmrahInfo => 'معلومات العمرة';

  @override
  String get homeUnknown => 'غير معروف';

  @override
  String homeUpdatedDaysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تم التحديث منذ $count يوم',
      many: 'تم التحديث منذ $count يومًا',
      few: 'تم التحديث منذ $count أيام',
      two: 'تم التحديث منذ يومين',
      one: 'تم التحديث منذ يوم',
    );
    return '$_temp0';
  }

  @override
  String homeUpdatedHoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تم التحديث منذ $count ساعة',
      many: 'تم التحديث منذ $count ساعةً',
      few: 'تم التحديث منذ $count ساعات',
      two: 'تم التحديث منذ ساعتين',
      one: 'تم التحديث منذ ساعة',
    );
    return '$_temp0';
  }

  @override
  String get homeUpdatedJustNow => 'تم التحديث الآن';

  @override
  String homeUpdatedMinutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تم التحديث منذ $count دقيقة',
      many: 'تم التحديث منذ $count دقيقةً',
      few: 'تم التحديث منذ $count دقائق',
      two: 'تم التحديث منذ دقيقتين',
      one: 'تم التحديث منذ دقيقة',
    );
    return '$_temp0';
  }

  @override
  String get homeUserNotFound => 'لم يتم العثور على معلومات المستخدم';

  @override
  String get homeUserTypeAdmin => 'مشرف';

  @override
  String get homeUserTypePilgrim => 'معتمر';

  @override
  String get homeUserTypeSuperAdmin => 'المشرف العام';

  @override
  String get homeWaitingGuideLocation => 'في انتظار موقع المرشد...';

  @override
  String get homeWhatsAppOpenFailed => 'تعذّر فتح واتساب';

  @override
  String get homeYourGuide => 'مرشدك';

  @override
  String get infoBadgeSoon => 'قريبًا';

  @override
  String get infoCardContactGuide => 'تواصل مع المرشد';

  @override
  String get infoCardHotels => 'الفنادق والمطاعم';

  @override
  String get infoCardHotelsSub => 'الفنادق وأماكن الطعام حول الحرم.';

  @override
  String get infoCardIhram => 'محظورات الإحرام';

  @override
  String get infoCardMiqat => 'المواقيت';

  @override
  String get infoCardMiqatSub =>
      'المواقيت الخمسة ومسافاتها ومواقعها على الخريطة.';

  @override
  String get infoCardNeedList => 'قائمة الاحتياجات';

  @override
  String get infoCardNeedListSub => 'ضع علامة على كل غرض أثناء تجهيز حقيبتك.';

  @override
  String get infoCardPedometer => 'عداد الخطوات';

  @override
  String get infoCardPedometerSub => 'تابع عدد خطواتك اليومية.';

  @override
  String get infoCardPlaces => 'أماكن للزيارة';

  @override
  String get infoCardRouteSim => 'محاكاة المسار';

  @override
  String get infoCardRouteSimSub =>
      'مناسك العمرة على الخريطة من الميقات إلى الحلق أو التقصير.';

  @override
  String get infoCardTawafSim => 'محاكاة الطواف';

  @override
  String get infoCardTawafSimSub => 'سبعة أشواط حول الكعبة والاستلام والأدعية.';

  @override
  String get infoCardTechSupport => 'معلومات الدعم الفني';

  @override
  String get infoCardTravelGuide => 'دليل السفر';

  @override
  String get infoCardTravelGuideSub =>
      'التأشيرة والصحة والمال والمواصلات والأرقام المهمة.';

  @override
  String get infoCheckBeforeTravel =>
      'تحقق من أن هذه المعلومات ما زالت سارية قبل السفر.';

  @override
  String get infoCouldNotOpen => 'تعذر الفتح.';

  @override
  String get infoDirections => 'الاتجاهات';

  @override
  String infoDistanceKm(String km) {
    return '~$km كم';
  }

  @override
  String infoDistanceM(int meters) {
    return '~$meters م';
  }

  @override
  String get infoEmail => 'البريد الإلكتروني';

  @override
  String get infoFilterAll => 'الكل';

  @override
  String get infoFilterFood => 'المطاعم';

  @override
  String get infoFilterHotels => 'الفنادق';

  @override
  String get infoGeneralTitle => 'معلومات عامة';

  @override
  String get infoGuide911Note =>
      'يعمل الرقم 911 رقمًا موحدًا للطوارئ في بعض المناطق ومنها مكة المكرمة.';

  @override
  String get infoGuideJeddahConsulate =>
      'القنصلية العامة لجمهورية تركيا في جدة';

  @override
  String get infoGuideMfa => 'وزارة الخارجية التركية';

  @override
  String get infoGuidePhonesSub => 'أرقام الطوارئ السعودية، البعثات التركية';

  @override
  String get infoGuidePhonesTitle => 'أرقام هواتف مهمة';

  @override
  String get infoGuideRiyadhEmbassy => 'سفارة جمهورية تركيا في الرياض';

  @override
  String get infoGuideRulesWarning =>
      'تُحدّث السعودية أنظمة التأشيرات والتصاريح والصحة كثيرًا. جُمعت الأنظمة في هذه الصفحة من مصادر رسمية حتى نوفمبر 2026. اعتمد على إعلانات مجموعتك ورئاسة الشؤون الدينية التركية.';

  @override
  String get infoGuideSaudiEmergency => 'الطوارئ في السعودية';

  @override
  String get infoGuideSources =>
      'المصادر: وزارة الصحة السعودية (moh.gov.sa)، visa.visitsaudi.com، نسك، Diyanet İşleri Başkanlığı، قطار الحرمين السريع (sar.hhr.sa)، وزارة الخارجية التركية (mfa.gov.tr).';

  @override
  String get infoHotelsFootnoteMecca =>
      'المسافات إلى الكعبة بخط مستقيم؛ ويختلف وقت المشي حسب الزحام والباب الذي تدخل منه. المواقع مأخوذة من OpenStreetMap. تواصل مع الفندق لمعرفة الأسعار والتوفر.';

  @override
  String get infoHotelsFootnoteMedina =>
      'المسافات إلى المسجد النبوي بخط مستقيم؛ ويختلف وقت المشي حسب الزحام والباب الذي تدخل منه. المواقع مأخوذة من OpenStreetMap. تواصل مع الفندق لمعرفة الأسعار والتوفر.';

  @override
  String get infoIhramHeader =>
      'تحرم الأفعال التالية من الدخول في الإحرام إلى التحلل منه.';

  @override
  String get infoKaaba => 'الكعبة';

  @override
  String get infoMapCouldNotOpen => 'تعذر فتح الخريطة.';

  @override
  String get infoMapOpenFailed => 'تعذر فتح تطبيق الخرائط.';

  @override
  String get infoMeccaKaaba => 'مكة (الكعبة)';

  @override
  String get infoMiqatAlignNote =>
      'يجوز الإحرام من محاذاة الميقات لا من الميقات نفسه فقط. ولأن المسافات تختلف باختلاف الطرق فقد تذكر المصادر أرقامًا مختلفة.';

  @override
  String infoMiqatAsCrowFlies(String distance) {
    return 'خط مستقيم $distance';
  }

  @override
  String get infoMiqatFive => 'المواقيت الخمسة';

  @override
  String get infoMiqatFlightNote =>
      'من يسافر جوًا من تركيا إلى جدة مباشرةً يُحرم في الطائرة قبل محاذاة الميقات. ويجوز للرجال لبس ثياب الإحرام قبل ركوب الطائرة؛ وتكون النية والتلبية قبل محاذاة الميقات عند إعلان المرشد أو طاقم الطائرة.';

  @override
  String get infoMiqatForWhom => 'لمن:';

  @override
  String infoMiqatRoad(String distance) {
    return 'بالطريق: $distance';
  }

  @override
  String get infoMiqatSource =>
      'المصدر: TDV İslâm Ansiklopedisi، مادة \"Mîkāt\". المواقع: OpenStreetMap.';

  @override
  String get infoNeedAdd => 'إضافة';

  @override
  String get infoNeedAddItem => 'إضافة غرض';

  @override
  String get infoNeedAddYourOwn => 'أضف أغراضك الخاصة';

  @override
  String get infoNeedAllReady => 'حقيبتك جاهزة. رحلة مباركة!';

  @override
  String get infoNeedCategory => 'الفئة';

  @override
  String get infoNeedDisclaimer =>
      'هذه القائمة اقتراح عام؛ راجع أيضًا أحدث إعلانات مجموعتك ورئاسة الشؤون الدينية التركية.';

  @override
  String get infoNeedEmpty =>
      'لا توجد أغراض بعد. يمكنك الإضافة عبر \"إضافة غرض\".';

  @override
  String infoNeedItemDeleted(String item) {
    return 'تم حذف \"$item\".';
  }

  @override
  String get infoNeedItemExample => 'مثال: نظارة احتياطية';

  @override
  String get infoNeedItemName => 'اسم الغرض';

  @override
  String get infoNeedListTitle => 'قائمة الاحتياجات';

  @override
  String get infoNeedMyItem => 'غرضي';

  @override
  String get infoNeedOther => 'أخرى';

  @override
  String infoNeedPercent(int percent) {
    return '$percent٪';
  }

  @override
  String infoNeedReadyCount(int done, int total) {
    return '$done/$total جاهز';
  }

  @override
  String get infoNeedReset => 'إعادة تعيين';

  @override
  String get infoNeedResetAll => 'إعادة تعيين الكل';

  @override
  String get infoNeedResetBody =>
      'ستُزال جميع العلامات. هل تريد حذف الأغراض التي أضفتها أيضًا؟';

  @override
  String get infoNeedResetChecksOnly => 'العلامات فقط';

  @override
  String get infoNeedResetTitle => 'إعادة تعيين القائمة';

  @override
  String get infoOpenInGoogleMaps => 'فتح في خرائط Google';

  @override
  String get infoPedometerNextVersion =>
      'ستتم إضافة عداد الخطوات في الإصدار القادم.';

  @override
  String get infoPlacesMeccaTitle => 'أماكن للزيارة في مكة المكرمة';

  @override
  String get infoPlacesMedinaTitle => 'أماكن للزيارة في المدينة المنورة';

  @override
  String get infoProphetsMosque => 'المسجد النبوي';

  @override
  String get infoShowAll => 'عرض الكل';

  @override
  String get infoShowOnMap => 'عرض على الخريطة';

  @override
  String get infoTapForDetails => 'اضغط لعرض التفاصيل.';

  @override
  String get infoTechContactUs => 'تواصل معنا';

  @override
  String get infoTechContactUsBody =>
      'يمكنك التواصل معنا بشأن أي مشكلة أو اقتراح يتعلق بالتطبيق.';

  @override
  String get infoTechEmail1 => 'البريد الإلكتروني الأول';

  @override
  String get infoTechEmail2 => 'البريد الإلكتروني الثاني';

  @override
  String get infoTechEmailFailed => 'تعذر فتح تطبيق البريد';

  @override
  String get infoTechEmails => 'عناوين البريد الإلكتروني';

  @override
  String get infoTechPhone1 => 'الهاتف الأول';

  @override
  String get infoTechPhone2 => 'الهاتف الثاني';

  @override
  String get infoTechPhoneFailed => 'تعذر فتح تطبيق الهاتف';

  @override
  String get infoTechPhones => 'أرقام الهاتف';

  @override
  String get infoTechTitle => 'الدعم الفني';

  @override
  String get infoTechWhatsAppFailed => 'تعذر فتح WhatsApp';

  @override
  String infoWalkHours(String hours) {
    return '$hours ساعة مشيًا';
  }

  @override
  String infoWalkMinutes(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes دقيقة مشيًا',
      many: '$minutes دقيقةً مشيًا',
      few: '$minutes دقائق مشيًا',
      two: 'دقيقتان مشيًا',
      one: 'دقيقة واحدة مشيًا',
    );
    return '$_temp0';
  }

  @override
  String get kibleArMode => 'الواقع المعزز';

  @override
  String get kibleArSoon => 'سيُضاف وضع الواقع المعزز قريبًا';

  @override
  String get kibleCalibrate => 'معايرة';

  @override
  String get kibleCalibrateStep1 =>
      'أمسك هاتفك وابتعد عن الأشياء المعدنية والمغناطيس.';

  @override
  String get kibleCalibrateStep2 =>
      'حرّك الهاتف في الهواء على شكل رقم 8 أفقي عدة مرات.';

  @override
  String get kibleCalibrateStep3 => 'أدر الهاتف بمعصمك أثناء تحريكه.';

  @override
  String get kibleCalibrateTitle => 'معايرة البوصلة';

  @override
  String get kibleCalibrationHint => 'حرّك هاتفك في الهواء على شكل الرقم 8';

  @override
  String get kibleCalibrationNeeded => 'يلزم معايرة البوصلة: ';

  @override
  String get kibleCompassE => 'ق';

  @override
  String get kibleCompassN => 'ش';

  @override
  String get kibleCompassS => 'ج';

  @override
  String get kibleCompassW => 'غ';

  @override
  String get kibleDirE => 'الشرق';

  @override
  String get kibleDirN => 'الشمال';

  @override
  String get kibleDirNE => 'الشمال الشرقي';

  @override
  String get kibleDirNW => 'الشمال الغربي';

  @override
  String get kibleDirS => 'الجنوب';

  @override
  String get kibleDirSE => 'الجنوب الشرقي';

  @override
  String get kibleDirSW => 'الجنوب الغربي';

  @override
  String get kibleDirW => 'الغرب';

  @override
  String kibleDistanceKm(String value) {
    return '$value كم';
  }

  @override
  String kibleDistanceM(String value) {
    return '$value م';
  }

  @override
  String get kibleDistanceTitle => 'المسافة إلى القبلة';

  @override
  String get kibleDistanceToKaaba => 'المسافة إلى الكعبة';

  @override
  String get kibleFacingQibla => 'أنت متجه إلى القبلة';

  @override
  String get kibleGettingLocation => 'جارٍ تحديد الموقع…';

  @override
  String get kibleHelp => 'مساعدة';

  @override
  String get kibleHelpText =>
      'أمسك هاتفك موازيًا للأرض واستدر حول نفسك ببطء. عندما يشير المؤشر إلى الأعلى تمامًا وتتطابق شارة الكعبة مع العلامة العلوية تكون متجهًا إلى القبلة، ويهتز الهاتف اهتزازًا خفيفًا.\n\nقد تؤثر الأشياء المعدنية والأغطية المغناطيسية والأجهزة الإلكترونية في البوصلة. إذا لاحظت انحرافًا فاتبع خطوات \"المعايرة\".\n\nتُحسب زاوية القبلة بالنسبة إلى الشمال الحقيقي.';

  @override
  String get kibleLocationFailedText =>
      'تعذّر تحديد موقعك. يرجى المحاولة مرة أخرى.';

  @override
  String get kibleLocationFailedTitle => 'تعذّر تحديد الموقع';

  @override
  String get kibleLocationNotYet => 'لم يتم تحديد الموقع بعد';

  @override
  String get kibleMeccaSaudi => 'مكة المكرمة، المملكة العربية السعودية';

  @override
  String get kibleNoCompass => 'لم يُعثر على مستشعر بوصلة في جهازك';

  @override
  String get kibleOpenSettings => 'فتح الإعدادات';

  @override
  String get kiblePermissionDeniedForeverText =>
      'يُحسب اتجاه القبلة والمسافة إلى الكعبة حسب موقعك. تم رفض إذن الموقع نهائيًا؛ يرجى السماح به من الإعدادات.';

  @override
  String get kiblePermissionDeniedText =>
      'يُحسب اتجاه القبلة والمسافة إلى الكعبة حسب موقعك. يُستخدم موقعك لهذا الحساب فقط.';

  @override
  String get kiblePermissionTitle => 'إذن الموقع مطلوب';

  @override
  String get kiblePreparingCompass => 'جارٍ تجهيز البوصلة…';

  @override
  String kibleQiblaDegrees(int degrees) {
    return 'القبلة $degrees°';
  }

  @override
  String get kibleQiblaUnknown => 'القبلة —';

  @override
  String get kibleRefreshLocation => 'تحديث الموقع';

  @override
  String get kibleRouteTitle => 'مسار القبلة';

  @override
  String get kibleServiceOffText =>
      'شغّل خدمة الموقع في جهازك لحساب اتجاه القبلة.';

  @override
  String get kibleServiceOffTitle => 'خدمة الموقع متوقفة';

  @override
  String get kibleShowMyLocation => 'إظهار موقعي';

  @override
  String get kibleSoon => 'قريبًا';

  @override
  String get kibleSubtitle => 'توجّه إلى القبلة ووجّه قلبك إلى السكينة.';

  @override
  String get kibleTipLabel => 'نصيحة: ';

  @override
  String get kibleTipText => 'ضع جهازك على سطح مستوٍ للحصول على نتائج أدق.';

  @override
  String get kibleTitle => 'اتجاه القبلة';

  @override
  String get kibleTrueNorthNote =>
      '(بالنسبة إلى الشمال الحقيقي، باتجاه عقارب الساعة)';

  @override
  String get kibleTryAgain => 'حاول مرة أخرى';

  @override
  String kibleTurnLeft(int degrees) {
    return 'أدر الهاتف $degrees° إلى اليسار';
  }

  @override
  String kibleTurnRight(int degrees) {
    return 'أدر الهاتف $degrees° إلى اليمين';
  }

  @override
  String get quranAddBookmark => 'إضافة علامة';

  @override
  String quranAgoDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'منذ $count يوم',
      many: 'منذ $count يومًا',
      few: 'منذ $count أيام',
      two: 'منذ يومين',
      one: 'منذ يوم',
    );
    return '$_temp0';
  }

  @override
  String quranAgoHours(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'منذ $count ساعة',
      many: 'منذ $count ساعةً',
      few: 'منذ $count ساعات',
      two: 'منذ ساعتين',
      one: 'منذ ساعة',
    );
    return '$_temp0';
  }

  @override
  String get quranAgoJustNow => 'الآن';

  @override
  String quranAgoMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'منذ $count دقيقة',
      many: 'منذ $count دقيقةً',
      few: 'منذ $count دقائق',
      two: 'منذ دقيقتين',
      one: 'منذ دقيقة',
    );
    return '$_temp0';
  }

  @override
  String get quranArabicFontSize => 'حجم الخط العربي';

  @override
  String get quranAyahActions => 'خيارات الآية';

  @override
  String quranAyahBookmarkAdded(String ref) {
    return 'أُضيفت $ref إلى العلامات';
  }

  @override
  String quranAyahBookmarkRemoved(String ref) {
    return 'أُزيلت $ref من العلامات';
  }

  @override
  String quranAyahCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count آية',
      many: '$count آيةً',
      few: '$count آيات',
      two: 'آيتان',
      one: 'آية واحدة',
    );
    return '$_temp0';
  }

  @override
  String get quranAyahsLabel => 'الآيات';

  @override
  String get quranBack => 'رجوع';

  @override
  String get quranBookmarkAyah => 'علامة على الآية';

  @override
  String get quranBookmarkPage => 'وضع علامة على الصفحة';

  @override
  String get quranClear => 'مسح';

  @override
  String get quranContinueReading => 'متابعة القراءة';

  @override
  String get quranCopied => 'نُسخت الآية';

  @override
  String get quranCopy => 'نسخ';

  @override
  String get quranDayMode => 'الوضع النهاري';

  @override
  String get quranFilter => 'تصفية';

  @override
  String get quranFilterAll => 'جميع السور';

  @override
  String get quranFilterMeccan => 'السور المكية';

  @override
  String get quranFilterMedinan => 'السور المدنية';

  @override
  String get quranGo => 'انتقال';

  @override
  String get quranGoToPage => 'الانتقال إلى صفحة';

  @override
  String quranJuz(int number) {
    final intl.NumberFormat numberNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String numberString = numberNumberFormat.format(number);

    return 'الجزء $numberString';
  }

  @override
  String quranJuzSubtitle(String surah, int ayah, int page) {
    return '$surah، الآية $ayah • الصفحة $page';
  }

  @override
  String get quranLast10 => 'آخر 10 سجلات';

  @override
  String get quranListen => 'استماع';

  @override
  String get quranListenAyah => 'استمع إلى هذه الآية';

  @override
  String get quranListened => 'تم الاستماع';

  @override
  String get quranMeal => 'الترجمة';

  @override
  String get quranMealFailed => 'تعذّر تحميل الترجمة. حاول لاحقًا.';

  @override
  String get quranMealOffline =>
      'يلزم اتصال بالإنترنت لعرض الترجمة. تحقق من اتصالك وحاول مرة أخرى.';

  @override
  String quranMealSource(String source) {
    return 'المصدر: $source';
  }

  @override
  String get quranMeccanAdj => 'مكية';

  @override
  String get quranMedinanAdj => 'مدنية';

  @override
  String get quranNextSurah => 'السورة التالية';

  @override
  String get quranNightMode => 'الوضع الليلي';

  @override
  String get quranNoAyahAudio => 'لا يوجد تسجيل لكل آية لهذا القارئ';

  @override
  String get quranNoBookmarks => 'لا توجد علامات';

  @override
  String get quranNoBookmarksHint =>
      'يمكنك الإضافة بالضغط على رمز العلامة في قائمة السور أو في القارئ.';

  @override
  String get quranNoHistory => 'لا يوجد سجل بعد';

  @override
  String get quranNoHistoryHint =>
      'ستظهر هنا السور التي قرأتها أو استمعت إليها.';

  @override
  String get quranNoResults => 'لا توجد نتائج';

  @override
  String get quranNoResultsHint =>
      'جرّب كتابة اسم السورة (مثل يس) أو رقمها (مثل 36 أو 2:255).';

  @override
  String quranPage(int page) {
    return 'الصفحة $page';
  }

  @override
  String quranPageBookmarkAdded(int page) {
    return 'تمت إضافة الصفحة $page إلى العلامات';
  }

  @override
  String quranPageBookmarkRemoved(int page) {
    return 'تمت إزالة الصفحة $page من العلامات';
  }

  @override
  String quranPageJuz(int page, int juz) {
    final intl.NumberFormat juzNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String juzString = juzNumberFormat.format(juz);

    return 'الصفحة $page • الجزء $juzString';
  }

  @override
  String quranPageOfTotalJuz(int page, int total, int juz) {
    final intl.NumberFormat juzNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String juzString = juzNumberFormat.format(juz);

    return 'الصفحة $page / $total • الجزء $juzString';
  }

  @override
  String get quranPagesLabel => 'الصفحات';

  @override
  String quranPercent(int value) {
    return '$value٪';
  }

  @override
  String get quranPlaceMeccan => 'مكية';

  @override
  String get quranPlaceMedinan => 'مدنية';

  @override
  String get quranPlayFailed => 'تعذّر تشغيل الصوت. يرجى المحاولة مرة أخرى.';

  @override
  String get quranPreparing => 'جارٍ تجهيز المصحف…';

  @override
  String get quranPrevSurah => 'السورة السابقة';

  @override
  String get quranReciterSelection => 'اختيار القارئ';

  @override
  String get quranReciterStyleHafsMurattal => 'حفص • مرتل';

  @override
  String get quranRemoveBookmark => 'إزالة العلامة';

  @override
  String get quranSearchHint => 'ابحث عن سورة أو آية';

  @override
  String get quranSettings => 'الإعدادات';

  @override
  String get quranStartReading => 'ابدأ القراءة';

  @override
  String get quranStop => 'إيقاف';

  @override
  String get quranStopAyah => 'إيقاف';

  @override
  String get quranStreamingNote => 'تُبث التلاوات مباشرة عبر الإنترنت.';

  @override
  String get quranSubtitle => 'اقرأ لتجد السكينة، وعِش لتفهم.';

  @override
  String quranSurahBookmarkAdded(String surah) {
    return 'تمت إضافة $surah إلى العلامات';
  }

  @override
  String quranSurahBookmarkRemoved(String surah) {
    return 'تمت إزالة $surah من العلامات';
  }

  @override
  String quranSurahCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count سورة',
      many: '$count سورةً',
      few: '$count سور',
      two: 'سورتان',
      one: 'سورة واحدة',
    );
    return '$_temp0';
  }

  @override
  String quranSurahTitle(String name) {
    return 'سورة $name';
  }

  @override
  String get quranTabBookmarks => 'العلامات';

  @override
  String get quranTabJuz => 'الأجزاء';

  @override
  String get quranTabRecents => 'آخر ما قُرئ';

  @override
  String get quranTabSurahs => 'السور';

  @override
  String get quranTextLoadFailed => 'تعذّر تحميل نص القرآن.';

  @override
  String get quranTextSource => 'مصدر النص';

  @override
  String get quranTextSourceBody =>
      'نص القرآن: مشروع تنزيل (tanzil.net)، رواية حفص، بالرسم العثماني. ترتيب الصفحات: مصحف المدينة (٦٠٤ صفحات). الخط: Amiri Quran (رخصة SIL المفتوحة). الترجمات: quran.com.';

  @override
  String get quranTitle => 'القرآن الكريم';

  @override
  String get rolesAgencyAdmin => 'مسؤول الوكالة';

  @override
  String get rolesFinance => 'المحاسبة';

  @override
  String get rolesGuest => 'ضيف';

  @override
  String get rolesManager => 'مشرف';

  @override
  String get rolesManagerDesc => 'جميع الوكالات';

  @override
  String get rolesMerchant => 'تاجر';

  @override
  String get rolesNoAccess => 'ليست لديك صلاحية للوصول إلى هذا القسم';

  @override
  String get rolesSelectAgencyFirst => 'اختر وكالة أولًا';

  @override
  String get rolesStaff => 'المسؤولون';

  @override
  String get rolesSuperAdmin => 'المشرف العام';

  @override
  String get rolesSupport => 'الدعم';

  @override
  String get shopsAbout => 'نبذة';

  @override
  String shopsActivated(String name) {
    return 'تم تفعيل $name.';
  }

  @override
  String get shopsActive => 'نشط';

  @override
  String get shopsActiveSub => 'المتاجر غير النشطة لا تظهر للضيوف.';

  @override
  String get shopsAdd => 'إضافة متجر';

  @override
  String get shopsAdded => 'تمت إضافة المتجر.';

  @override
  String get shopsAddress => 'العنوان';

  @override
  String get shopsAdminLoadFailed => 'تعذّر تحميل المتاجر.';

  @override
  String get shopsAgency => 'الوكالة';

  @override
  String get shopsAll => 'الكل';

  @override
  String get shopsAllAgencies => 'جميع الوكالات';

  @override
  String get shopsCall => 'اتصال';

  @override
  String get shopsCamera => 'الكاميرا';

  @override
  String shopsCameraFailed(String code) {
    return 'تعذّر فتح الكاميرا. تحقق من إذن الكاميرا.\n($code)';
  }

  @override
  String get shopsCatBooks => 'كتب ومسابح';

  @override
  String get shopsCatDatesFood => 'تمور وأغذية';

  @override
  String get shopsCatGifts => 'هدايا وتذكارات';

  @override
  String get shopsCatJeweler => 'مجوهرات';

  @override
  String get shopsCatOther => 'أخرى';

  @override
  String get shopsCatPerfume => 'عطور ومسك';

  @override
  String get shopsCatRestaurant => 'مطاعم ومقاهٍ';

  @override
  String get shopsCatTextile => 'منسوجات وإحرام';

  @override
  String get shopsCategory => 'الفئة';

  @override
  String get shopsCity => 'المدينة';

  @override
  String get shopsCityJeddah => 'جدة';

  @override
  String get shopsCityOther => 'أخرى';

  @override
  String get shopsCodeGuestTitle => 'ضيف دليل العمرة';

  @override
  String get shopsCodeShowAtCheckout =>
      'يرجى إظهار هذه الشاشة للبائع عند الدفع.';

  @override
  String get shopsCodeVerifyLater => 'سيتم التحقق منه عند جاهزية لوحة التاجر.';

  @override
  String get shopsContactSection => 'التواصل';

  @override
  String shopsDeactivated(String name) {
    return 'تم إلغاء تفعيل $name.';
  }

  @override
  String shopsDeleteConfirm(String name) {
    return 'هل تريد حذف \"$name\"؟ لا يمكن التراجع عن هذا الإجراء.';
  }

  @override
  String shopsDeleteFailed(String error) {
    return 'تعذّر الحذف: $error';
  }

  @override
  String get shopsDeleteTitle => 'حذف المتجر';

  @override
  String get shopsDeleted => 'تم حذف المتجر.';

  @override
  String get shopsDescription => 'الوصف';

  @override
  String get shopsDetailsSection => 'بيانات المتجر';

  @override
  String get shopsDirections => 'الاتجاهات';

  @override
  String get shopsDiscountBadge => 'خصم';

  @override
  String get shopsDiscountNotNumber => 'أدخل رقمًا (0-100)';

  @override
  String get shopsDiscountNote => 'ملاحظة الخصم';

  @override
  String get shopsDiscountNoteHint => 'مثال: صالح عند الدفع نقدًا';

  @override
  String shopsDiscountPercent(int percent) {
    return 'خصم $percent٪';
  }

  @override
  String get shopsDiscountPercentHint => 'مثال: 15';

  @override
  String shopsDiscountPercentLower(int percent) {
    return 'خصم $percent٪';
  }

  @override
  String get shopsDiscountPercentRequired => 'نسبة الخصم *';

  @override
  String get shopsDiscountRange => 'يجب أن يكون بين 0 و100';

  @override
  String get shopsDiscountSection => 'الخصم';

  @override
  String get shopsEdit => 'تعديل المتجر';

  @override
  String get shopsEmpty => 'لم تتم إضافة متاجر متعاقدة بعد.';

  @override
  String get shopsEmptyAdminHint => 'ابدأ بزر \"إضافة متجر\".';

  @override
  String get shopsFixFields => 'يرجى تصحيح الحقول المحددة.';

  @override
  String get shopsForAllAgencies => 'متاح لجميع الوكالات';

  @override
  String get shopsForAllAgenciesSub => 'سيرى ضيوف جميع الوكالات هذا المتجر.';

  @override
  String get shopsGallery => 'المعرض';

  @override
  String get shopsGuest => 'ضيف';

  @override
  String shopsImagePickFailed(String error) {
    return 'تعذّر اختيار الصورة: $error';
  }

  @override
  String get shopsInfo => 'المعلومات';

  @override
  String get shopsInfoBanner =>
      'أظهر رمز QR في هذه المتاجر لتثبت أنك ضيف في دليل العمرة واحصل على خصم.';

  @override
  String get shopsInvalid => 'غير صالح';

  @override
  String get shopsLatLngBoth =>
      'أدخل خط العرض وخط الطول معًا أو اترك كليهما فارغًا.';

  @override
  String get shopsLatitude => 'خط العرض';

  @override
  String get shopsLinkOpenFailed => 'تعذّر فتح الرابط.';

  @override
  String get shopsListView => 'قائمة';

  @override
  String get shopsLoadFailed =>
      'تعذّر تحميل المتاجر. تحقق من اتصالك بالإنترنت.';

  @override
  String get shopsLocFailed => 'تعذّر الحصول على الموقع.';

  @override
  String get shopsLocPermissionDenied => 'لم يتم منح إذن الموقع.';

  @override
  String get shopsLocServiceOff => 'خدمة الموقع متوقفة.';

  @override
  String get shopsLocation => 'الموقع';

  @override
  String get shopsLogo => 'الشعار';

  @override
  String shopsLogoAdded(int size) {
    return 'تمت إضافة الشعار ($size ك.ب).';
  }

  @override
  String shopsLogoTooLarge(int size) {
    return 'الشعار كبير جدًا ($size ك.ب). اختر صورة أصغر.';
  }

  @override
  String get shopsLongitude => 'خط الطول';

  @override
  String get shopsMapView => 'خريطة';

  @override
  String shopsMerchantCode(String code) {
    return 'رمز التاجر: $code  (للوحة التاجر)';
  }

  @override
  String shopsMissingLocation(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count متجر بلا موقع ولا تظهر على الخريطة.',
      many: '$count متجرًا بلا موقع ولا تظهر على الخريطة.',
      few: '$count متاجر بلا موقع ولا تظهر على الخريطة.',
      two: 'متجران بلا موقع ولا تظهر على الخريطة.',
      one: 'متجر واحد بلا موقع ولا تظهر على الخريطة.',
    );
    return '$_temp0';
  }

  @override
  String get shopsNameMissing => 'الاسم مطلوب';

  @override
  String get shopsNameRequired => 'اسم المتجر *';

  @override
  String get shopsNoMatch => 'لا توجد متاجر تطابق هذا الفلتر.';

  @override
  String shopsOrderSaveFailed(String error) {
    return 'تعذّر حفظ الترتيب: $error';
  }

  @override
  String shopsPercent(int percent) {
    return '$percent٪';
  }

  @override
  String get shopsPhone => 'الهاتف';

  @override
  String get shopsPickerHint => 'اضغط على مكان المتجر في الخريطة لوضع دبوس.';

  @override
  String get shopsPublishSection => 'النشر';

  @override
  String get shopsQrExplain =>
      'رمز \"قادم من طرفنا\" الخاص بالمتجر. يعرض الضيف رمز QR هذا في شاشة الخصم. إذا تُرك فارغًا يُنشأ رمز تحقق خاص بالضيف.';

  @override
  String get shopsQrManual => 'أدخل يدويًا (نص أو رابط)';

  @override
  String get shopsQrScanHint => 'ضع رمز QR الخاص بالمتجر داخل الإطار.';

  @override
  String get shopsQrScanTitle => 'امسح رمز QR';

  @override
  String get shopsQrScanWithCamera => 'امسح بالكاميرا';

  @override
  String get shopsQrScanned => 'تمت قراءة رمز QR.';

  @override
  String get shopsQrSection => 'رمز QR';

  @override
  String get shopsRemove => 'إزالة';

  @override
  String get shopsRemoveLocation => 'إزالة الموقع';

  @override
  String get shopsReorderHint => 'اسحب المقبض لإعادة الترتيب.';

  @override
  String shopsSaveFailed(String error) {
    return 'تعذّر الحفظ: $error';
  }

  @override
  String get shopsSaving => 'جارٍ الحفظ...';

  @override
  String get shopsSearchHint => 'ابحث عن متجر';

  @override
  String get shopsSelectAgency =>
      'اختر وكالة أو فعّل خيار \"متاح لجميع الوكالات\".';

  @override
  String get shopsSharedSection => 'متاحة لجميع الوكالات (يديرها المشرف العام)';

  @override
  String get shopsShowMyCode => 'اعرض رمز الخصم';

  @override
  String get shopsSpecialPrice => 'سعر خاص';

  @override
  String get shopsSpecialPriceLower => 'سعر خاص';

  @override
  String get shopsTitle => 'المتاجر المتعاقدة';

  @override
  String get shopsTorch => 'المصباح';

  @override
  String shopsUpdateFailed(String error) {
    return 'تعذّر التحديث: $error';
  }

  @override
  String get shopsUpdated => 'تم تحديث المتجر.';

  @override
  String get shopsUseMyLocation => 'استخدم موقعي الحالي';

  @override
  String get shopsWhatsappHint => 'مع رمز الدولة، مثال: 9665xxxxxxxx';

  @override
  String get shopsWorkingHours => 'ساعات العمل';

  @override
  String get shopsWorkingHoursHint => 'مثال: 09:00 - 23:00';

  @override
  String simApproximate(String place) {
    return '$place (تقريبي)';
  }

  @override
  String get simAutoPlay => 'تشغيل تلقائي';

  @override
  String get simCircuit => 'الشوط';

  @override
  String get simContinue => 'متابعة';

  @override
  String get simFirstThreeRaml => 'الأشواط الثلاثة الأولى: يرمل الرجال';

  @override
  String get simIstilam => 'الاستلام';

  @override
  String get simNext => 'التالي';

  @override
  String get simNormalWalk => 'مشي عادي';

  @override
  String get simPause => 'إيقاف مؤقت';

  @override
  String get simPrayBehindMaqam => 'تُصلّى ركعتا الطواف خلف مقام إبراهيم.';

  @override
  String get simPrevious => 'السابق';

  @override
  String get simReplay => 'إعادة التشغيل';

  @override
  String get simReset => 'إعادة تعيين';

  @override
  String get simRouteTitle => 'محاكاة مسار العمرة';

  @override
  String get simSaiDuas => 'أدعية السعي';

  @override
  String simSaiLap(int lap) {
    return 'السعي: الشوط $lap';
  }

  @override
  String get simSevenCircuitsDone => 'اكتملت الأشواط السبعة';

  @override
  String simSpeed(String speed) {
    return '${speed}x';
  }

  @override
  String get simStart => 'ابدأ';

  @override
  String get simStartOver => 'البدء من جديد';

  @override
  String simStepOf(int step, int total) {
    return 'الخطوة $step/$total';
  }

  @override
  String get simStop => 'إيقاف';

  @override
  String get simSupplicationToRecite => 'الدعاء';

  @override
  String get simTawafCompleted => 'اكتمل الطواف';

  @override
  String get simTawafDuas => 'أدعية الطواف';

  @override
  String get simTawafEssentials => 'ما ينبغي معرفته في الطواف';

  @override
  String get simTawafSource =>
      'المصدر: منشورات الحج والعمرة لرئاسة الشؤون الدينية التركية (Diyanet İşleri Başkanlığı)؛ البقرة ٢٠١.';

  @override
  String get simThingsToNote => 'تنبيهات';

  @override
  String get simWhatToDo => 'ماذا يُفعل؟';

  @override
  String get telsizAllAgency => 'الوكالة بأكملها';

  @override
  String get telsizBroadcastGroup => 'مجموعة البث';

  @override
  String get telsizCheckInternet => 'تحقق من اتصالك بالإنترنت.';

  @override
  String get telsizConnectFailed => 'تعذّر الاتصال. يرجى المحاولة مرة أخرى.';

  @override
  String get telsizConnecting => 'جارٍ الاتصال…';

  @override
  String get telsizConnectionLost => 'انقطع الاتصال، جارٍ إعادة الاتصال…';

  @override
  String get telsizDuplicateIdentity => 'تم الاتصال بهذا الحساب من جهاز آخر.';

  @override
  String get telsizDuration => 'المدة';

  @override
  String get telsizEnd => 'إنهاء';

  @override
  String get telsizEndBroadcast => 'إنهاء البث';

  @override
  String get telsizEndBroadcastConfirm => 'سينتهي البث المباشر. هل أنت متأكد؟';

  @override
  String get telsizEndBroadcastTitle => 'إنهاء البث';

  @override
  String get telsizEnded => 'انتهى البث';

  @override
  String get telsizGuest => 'ضيف';

  @override
  String get telsizGuide => 'المرشد';

  @override
  String get telsizGuideHint =>
      'يستمر البث حتى لو أطفأت الشاشة. لا تنسَ إنهاء البث؛ ضيوفك يستمعون فقط ولا يمكنهم التحدث.';

  @override
  String get telsizGuideNotLive => 'مرشدك ليس على الهواء الآن';

  @override
  String get telsizGuideNotLiveBody =>
      'عندما يبدأ مرشدك البث سيظهر هنا. يمكنك الاستماع إلى مرشدك مباشرةً من هنا أثناء الجولات وفي الأماكن المزدحمة.';

  @override
  String get telsizGuideVoice => 'صوت المرشد';

  @override
  String get telsizListen => 'استمع';

  @override
  String get telsizListenerHint =>
      'يُنصح باستخدام سماعات الأذن. يمكنك متابعة الاستماع حتى والشاشة مغلقة.';

  @override
  String get telsizListeners => 'المستمعون';

  @override
  String get telsizListening => 'جارٍ الاستماع';

  @override
  String get telsizLiveBadge => 'مباشر';

  @override
  String get telsizLiveNow => 'بث مباشر الآن';

  @override
  String get telsizLoginRequired => 'يجب تسجيل الدخول لاستخدام اللاسلكي.';

  @override
  String get telsizMicLevel => 'مستوى الميكروفون';

  @override
  String get telsizMicPermanentlyDenied =>
      'إذن الميكروفون مغلق. فعّله من الإعدادات.';

  @override
  String get telsizMicRequired => 'يلزم إذن الميكروفون للبث.';

  @override
  String get telsizMute => 'كتم الصوت';

  @override
  String get telsizNoAgency => 'لم يتم العثور على معلومات الوكالة.';

  @override
  String get telsizNoAgencyHint => 'يتوفر اللاسلكي للحسابات المرتبطة بوكالتك.';

  @override
  String get telsizNoInternet =>
      'لا يوجد اتصال بالإنترنت أو يتعذّر الوصول إلى الخادم.';

  @override
  String get telsizNoPermission => 'ليست لديك صلاحية لاستخدام اللاسلكي.';

  @override
  String get telsizNotConfiguredBody =>
      'لم يتم إدخال بيانات خادم الصوت المباشر بعد. يرجى التواصل مع الدعم الفني.';

  @override
  String get telsizNotConfiguredError => 'لم يتم إعداد اللاسلكي.';

  @override
  String get telsizNotConfiguredTitle => 'لم يتم إعداد اللاسلكي';

  @override
  String get telsizNotConnected => 'غير متصل';

  @override
  String get telsizNotifBroadcastText =>
      'ضيوفك يستمعون إليك. عد إلى التطبيق للإنهاء.';

  @override
  String get telsizNotifBroadcastTitle => 'اللاسلكي على الهواء – المرشد';

  @override
  String get telsizNotifGuestsListening => 'ضيوفك يستمعون إليك.';

  @override
  String telsizNotifListeningText(String name) {
    return 'بث $name. عد إلى التطبيق للإغلاق.';
  }

  @override
  String get telsizNotifListeningTitle => 'جارٍ الاستماع إلى اللاسلكي';

  @override
  String get telsizNotifMicOff => 'الميكروفون مغلق.';

  @override
  String get telsizOffAir => 'لست على الهواء';

  @override
  String get telsizOnAir => 'أنت على الهواء';

  @override
  String get telsizOnAirMuted => 'على الهواء – الميكروفون مغلق';

  @override
  String get telsizReconnecting => 'جارٍ إعادة الاتصال…';

  @override
  String telsizServerDenied(int code) {
    return 'تعذّر الحصول على إذن من خادم اللاسلكي ($code).';
  }

  @override
  String get telsizStartBroadcast => 'بدء البث';

  @override
  String get telsizStatusError => 'تعذّر جلب معلومات البث.';

  @override
  String get telsizStatusSaveDenied => 'تعذّر حفظ حالة البث: لا توجد صلاحية.';

  @override
  String get telsizStop => 'إيقاف';

  @override
  String get telsizTitle => 'اللاسلكي';

  @override
  String get telsizToAllAgency => 'بث لكامل الوكالة';

  @override
  String get telsizToYourTrip => 'بث لرحلتك';

  @override
  String get telsizTrip => 'رحلة';

  @override
  String get telsizUnmute => 'إلغاء الكتم';

  @override
  String get telsizVolumeKeysHint =>
      'يمكنك أيضًا استخدام أزرار الصوت في هاتفك.';

  @override
  String get telsizWaitingGuide => 'تم الاتصال، في انتظار صوت المرشد…';
}

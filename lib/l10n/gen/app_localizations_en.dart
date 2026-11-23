// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get adminActive => 'Active';

  @override
  String get adminAdd => 'Add';

  @override
  String get adminAddress => 'Address';

  @override
  String get adminAgencies => 'Agencies';

  @override
  String get adminAgencyActive => 'Active Agencies';

  @override
  String get adminAgencyAddTitle => 'Add New Agency';

  @override
  String get adminAgencyCreateFailed => 'Could not create agency';

  @override
  String get adminAgencyCreated => 'Agency created';

  @override
  String get adminAgencyDelete => 'Delete Agency';

  @override
  String adminAgencyDeleteConfirm(String name) {
    return 'Are you sure you want to delete the agency \"$name\"?\n\nThis cannot be undone and data linked to the agency may be affected.';
  }

  @override
  String get adminAgencyDeleteFailed => 'Could not delete agency';

  @override
  String get adminAgencyDeleted => 'Agency deleted';

  @override
  String get adminAgencyDetail => 'Agency Details';

  @override
  String get adminAgencyEdit => 'Edit Agency';

  @override
  String get adminAgencyEmpty => 'No agencies added yet';

  @override
  String adminAgencyLabel(String name) {
    return 'Agency: $name';
  }

  @override
  String get adminAgencyLoadFailed => 'Could not load agencies';

  @override
  String get adminAgencyNameMissing => 'Agency name is required';

  @override
  String get adminAgencyNameRequired => 'Agency Name *';

  @override
  String get adminAgencyNew => 'New Agency';

  @override
  String get adminAgencyNotFound => 'Agency not found';

  @override
  String get adminAgencyRequired => 'Agency *';

  @override
  String adminAgencySummary(int users, int trips, int hotels, int currencies) {
    return '$users people • $trips trips • $hotels hotels • $currencies currencies';
  }

  @override
  String get adminAgencyTotal => 'Total Agencies';

  @override
  String get adminAgencyUpdateFailed => 'Could not update agency';

  @override
  String get adminAgencyUpdated => 'Agency updated';

  @override
  String get adminAllTrips => 'All trips';

  @override
  String adminAnalyticsAssignedGuests(int assigned, int total) {
    return '$assigned / $total guests assigned to a trip';
  }

  @override
  String get adminAnalyticsAssignment => 'Assignment Status';

  @override
  String get adminAnalyticsGender => 'Guest Gender Distribution';

  @override
  String get adminAnalyticsOverview => 'Overview';

  @override
  String get adminAreYouSure => 'Are you sure?';

  @override
  String get adminAssignFailed => 'Could not save the assignment';

  @override
  String adminAssignGenderMismatch(String gender) {
    return 'This room is reserved for $gender! Gender mismatch.';
  }

  @override
  String adminAssignHotel(String city) {
    return '$city Hotel';
  }

  @override
  String adminAssignRoom(String city) {
    return '$city Room';
  }

  @override
  String get adminAssignRoomFull => 'The room is full! Select another room.';

  @override
  String get adminAssignRoomRequired =>
      'A room must be selected when a hotel is selected.';

  @override
  String adminAssignTitle(String city) {
    return '$city Assignment';
  }

  @override
  String adminAssignTrip(String city) {
    return '$city Trip';
  }

  @override
  String get adminAssignUpdated => 'Assignment updated';

  @override
  String get adminBirthDate => 'Date of Birth';

  @override
  String get adminCapacityInvalid => 'Enter a valid capacity';

  @override
  String get adminCapacityRequired => 'Capacity *';

  @override
  String get adminCityJeddah => 'Jeddah';

  @override
  String get adminCityOther => 'Other';

  @override
  String get adminCurrencyAdd => 'Add Currency';

  @override
  String get adminCurrencyAddFailed => 'Could not add currency';

  @override
  String get adminCurrencyAddTitle => 'Add New Currency';

  @override
  String get adminCurrencyAdded => 'Currency added';

  @override
  String get adminCurrencyDelete => 'Delete Currency';

  @override
  String adminCurrencyDeleteConfirm(String name) {
    return 'Are you sure you want to delete $name?';
  }

  @override
  String get adminCurrencyDeleteFailed => 'Could not delete currency';

  @override
  String get adminCurrencyDeleted => 'Currency deleted';

  @override
  String get adminCurrencyEdit => 'Edit Currency';

  @override
  String get adminCurrencyEmpty => 'No currencies added yet.';

  @override
  String get adminCurrencyFlag => 'Flag';

  @override
  String get adminCurrencyLoadFailed => 'Could not load exchange rates';

  @override
  String get adminCurrencyName => 'Code (USD, EUR...)';

  @override
  String get adminCurrencyQuickAdd => 'Quick add';

  @override
  String get adminCurrencyTab => 'Currency';

  @override
  String get adminCurrencyUpdateFailed => 'Could not update currency';

  @override
  String get adminCurrencyUpdated => 'Currency updated';

  @override
  String get adminCurrencyValue => 'Value (₺)';

  @override
  String get adminCurrencyValueInvalid => 'Enter a valid value';

  @override
  String get adminDataLoadFailed => 'An error occurred while loading data';

  @override
  String get adminDateHint => 'dd/mm/yyyy';

  @override
  String get adminDateInvalid => 'Enter a valid date (dd/mm/yyyy)';

  @override
  String get adminDescription => 'Description';

  @override
  String get adminDetail => 'Details';

  @override
  String get adminDurationMin => 'Duration (min)';

  @override
  String get adminEmail => 'Email';

  @override
  String get adminEndDate => 'End';

  @override
  String get adminEsnafAccountActive => 'Merchant account is active';

  @override
  String get adminEsnafAccountNone =>
      'This shop has no merchant account. Once opened, the merchant signs in with a code and PIN and records discounted sales by scanning the guest\'s QR code.';

  @override
  String get adminEsnafAccountSection => 'Merchant Account';

  @override
  String adminEsnafAlertBigTx(String guest, String shop, String amount) {
    return '$guest – $shop: $amount in a single sale';
  }

  @override
  String adminEsnafAlertManyTx(
    String guest,
    String shop,
    String date,
    int count,
  ) {
    return '$guest – $shop: $count sales on $date';
  }

  @override
  String adminEsnafAlertQuickCancel(String guest, String shop, String amount) {
    return '$guest – $shop: a $amount sale was cancelled within 24 hours';
  }

  @override
  String get adminEsnafAlerts => 'Alerts';

  @override
  String get adminEsnafBadgeNo => 'No merchant account';

  @override
  String get adminEsnafBadgeYes => 'Merchant account';

  @override
  String get adminEsnafByShop => 'By shop';

  @override
  String get adminEsnafCancelDone => 'Transaction cancelled';

  @override
  String get adminEsnafCancelReason => 'Cancellation reason';

  @override
  String adminEsnafCancelReasonLabel(String reason) {
    return 'Reason: $reason';
  }

  @override
  String get adminEsnafCancelReasonRequired => 'Enter a reason';

  @override
  String get adminEsnafCancelTx => 'Cancel transaction';

  @override
  String get adminEsnafCancelled => 'Cancelled';

  @override
  String get adminEsnafClose => 'Close account';

  @override
  String adminEsnafCloseConfirm(String name) {
    return 'Close the merchant account for $name? The merchant will no longer be able to sign in.';
  }

  @override
  String get adminEsnafClosed => 'Merchant account closed';

  @override
  String get adminEsnafCode => 'Code';

  @override
  String get adminEsnafCodeExists =>
      'This code is already used by another account. Please try again.';

  @override
  String adminEsnafCodeLabel(String code) {
    return 'Merchant code: $code';
  }

  @override
  String get adminEsnafCommission => 'Commission rate (%)';

  @override
  String get adminEsnafCommissionHint => '0-30, empty = 0';

  @override
  String get adminEsnafCommissionRange => 'Commission must be between 0 and 30';

  @override
  String adminEsnafCommissionShort(int percent) {
    return 'Commission $percent%';
  }

  @override
  String get adminEsnafContinue => 'Continue';

  @override
  String get adminEsnafCopied => 'Copied to clipboard';

  @override
  String get adminEsnafCopy => 'Copy';

  @override
  String get adminEsnafCreate => 'Create merchant account';

  @override
  String get adminEsnafCreated => 'Merchant account created';

  @override
  String get adminEsnafCredsTitle => 'Merchant sign-in details';

  @override
  String get adminEsnafCredsWarning =>
      'Send these details to the merchant. The PIN will not be shown again.';

  @override
  String get adminEsnafDailyChart => 'Daily net sales (SAR)';

  @override
  String get adminEsnafDone => 'Done';

  @override
  String get adminEsnafEmpty => 'No purchases at partner shops in this period.';

  @override
  String adminEsnafFailed(String error) {
    return 'Operation failed: $error';
  }

  @override
  String get adminEsnafLoadFailed =>
      'Report could not be loaded. Pull down to refresh.';

  @override
  String adminEsnafLoyaltyInfo(int points, String sar) {
    return 'Loyalty points: 1 SAR = $points point, 100 points = $sar SAR';
  }

  @override
  String get adminEsnafMenu => 'Merchant Reports';

  @override
  String get adminEsnafMenuSub => 'Partner shop sales and commission';

  @override
  String get adminEsnafMethodCard => 'Card';

  @override
  String get adminEsnafMethodCash => 'Cash';

  @override
  String get adminEsnafMethodChart => 'Payment method breakdown';

  @override
  String get adminEsnafMethodPoints => 'Points';

  @override
  String get adminEsnafNoAgencyHint =>
      'Select an agency to manage from the super admin panel to see the report.';

  @override
  String get adminEsnafNoAlerts => 'No suspicious transactions.';

  @override
  String get adminEsnafPeriod30 => 'Last 30 days';

  @override
  String get adminEsnafPeriodCustom => 'Custom range';

  @override
  String get adminEsnafPeriodLastMonth => 'Last month';

  @override
  String get adminEsnafPeriodThisMonth => 'This month';

  @override
  String get adminEsnafPin => 'PIN';

  @override
  String get adminEsnafPinField => '6-digit PIN';

  @override
  String get adminEsnafPinInvalid => 'PIN must be 6 digits';

  @override
  String get adminEsnafPinManual => 'I\'ll enter the PIN';

  @override
  String get adminEsnafPinRandom => 'Generate a random PIN';

  @override
  String adminEsnafRange(String from, String to) {
    return '$from – $to';
  }

  @override
  String get adminEsnafResetConfirm =>
      'A new code and PIN will be created. The old code and PIN will no longer work. Continue?';

  @override
  String get adminEsnafResetPin => 'Reset PIN';

  @override
  String get adminEsnafSaveFirst =>
      'Save the shop first to open a merchant account.';

  @override
  String get adminEsnafShare => 'Share commission statement';

  @override
  String get adminEsnafShareByShop => 'By shop:';

  @override
  String get adminEsnafShareCopied =>
      'Commission statement copied to clipboard';

  @override
  String get adminEsnafShareHeader => 'Merchant Commission Statement';

  @override
  String adminEsnafShareMessage(String shop, String code, String pin) {
    return 'السلام عليكم\nتم إنشاء حساب التاجر لمتجر $shop في تطبيق Umre Rehberim.\n1) ثبّت تطبيق Umre Rehberim على هاتفك.\n2) افتح التطبيق واختر «تاجر».\n3) الرمز: $code\n4) الرقم السري (PIN): $pin\nلا تشارك الرقم السري مع أحد.\n\nSelamün aleyküm\n$shop için Umre Rehberim esnaf hesabınız açıldı.\n1) Umre Rehberim uygulamasını telefonunuza yükleyin.\n2) Uygulamayı açıp giriş tipi olarak \"Esnaf\"ı seçin.\n3) Kod: $code\n4) PIN: $pin\nPIN\'inizi kimseyle paylaşmayın.';
  }

  @override
  String adminEsnafSharePeriod(String range) {
    return 'Period: $range';
  }

  @override
  String adminEsnafShareTotals(int count, String net, String commission) {
    return 'Total: $count sales, net $net, commission $commission';
  }

  @override
  String get adminEsnafShareWhatsapp => 'Share via WhatsApp';

  @override
  String adminEsnafShopRow(
    int count,
    String net,
    int percent,
    String commission,
  ) {
    return '$count sales · Net $net · $percent% → $commission';
  }

  @override
  String adminEsnafShowAll(int count) {
    return 'Show all ($count)';
  }

  @override
  String get adminEsnafSumCommission => 'Accrued commission';

  @override
  String get adminEsnafSumCount => 'Purchases';

  @override
  String get adminEsnafSumDiscount => 'Discount given to guests';

  @override
  String get adminEsnafSumGross => 'Gross sales';

  @override
  String get adminEsnafSumNet => 'Net sales';

  @override
  String get adminEsnafSumPointsEarned => 'Points issued';

  @override
  String get adminEsnafSumPointsSpent => 'Points redeemed';

  @override
  String get adminEsnafTransactions => 'Transactions';

  @override
  String get adminEsnafWhatsappFailed =>
      'Could not open WhatsApp; details copied to clipboard';

  @override
  String get adminEventAdd => 'Add Event';

  @override
  String get adminEventAddFailed => 'Could not add event';

  @override
  String get adminEventAdded => 'Event added';

  @override
  String get adminEventDelete => 'Delete Event';

  @override
  String adminEventDeleteConfirm(String title) {
    return 'Delete \"$title\"?';
  }

  @override
  String get adminEventDeleteFailed => 'Could not delete event';

  @override
  String get adminEventDeleted => 'Event deleted';

  @override
  String get adminEventEdit => 'Edit Event';

  @override
  String get adminEventEmpty => 'No events for this day';

  @override
  String get adminEventEmptySub => 'Select another day to view events';

  @override
  String get adminEventLoadFailed => 'Could not load events';

  @override
  String get adminEventPast => 'Completed';

  @override
  String get adminEventUpcoming => 'Upcoming';

  @override
  String get adminEventUpdateFailed => 'Could not update event';

  @override
  String get adminEventUpdated => 'Event updated';

  @override
  String get adminFilterAll => 'All';

  @override
  String get adminGender => 'Gender';

  @override
  String get adminGenderFemale => 'Female';

  @override
  String get adminGenderMale => 'Male';

  @override
  String get adminGenderMixed => 'Mixed';

  @override
  String get adminGenderRequired => 'Gender *';

  @override
  String get adminGenderUnspecified => 'Unspecified';

  @override
  String get adminHotelAdd => 'Add Hotel';

  @override
  String adminHotelCapacityShort(int count) {
    return 'Cap. $count';
  }

  @override
  String get adminHotelCreateFailed => 'Could not create hotel';

  @override
  String get adminHotelCreated => 'Hotel created';

  @override
  String get adminHotelDelete => 'Delete Hotel';

  @override
  String adminHotelDeleteConfirm(String name) {
    return 'Are you sure you want to delete the hotel \"$name\" and all its rooms? This cannot be undone.';
  }

  @override
  String get adminHotelDeleteFailed => 'Could not delete hotel';

  @override
  String get adminHotelDeleted => 'Hotel deleted';

  @override
  String get adminHotelEdit => 'Edit Hotel';

  @override
  String get adminHotelEmpty => 'No hotels added yet.';

  @override
  String get adminHotelNameRequired => 'Hotel Name *';

  @override
  String get adminHotelUpdateFailed => 'Could not update hotel';

  @override
  String get adminHotelUpdated => 'Hotel updated';

  @override
  String get adminHotels => 'Hotels';

  @override
  String get adminInactive => 'Inactive';

  @override
  String get adminLiveMap => 'Live Location Map';

  @override
  String get adminLiveMapSub => 'Latest location of everyone in your agency';

  @override
  String get adminLogout => 'Log Out';

  @override
  String get adminLogoutConfirm => 'Are you sure you want to log out?';

  @override
  String get adminMakeActive => 'Activate';

  @override
  String get adminMakeInactive => 'Deactivate';

  @override
  String get adminManage => 'Manage';

  @override
  String get adminManagement => 'Management';

  @override
  String get adminMapDirections => 'Directions in Google Maps';

  @override
  String get adminMapEveryoneOnMap => 'Everyone on map';

  @override
  String adminMapLastUpdate(String time) {
    return 'Last update: $time';
  }

  @override
  String adminMapLatLng(String lat, String lng) {
    return 'Lat: $lat  Lng: $lng';
  }

  @override
  String get adminMapLoadFailed =>
      'Could not load locations. You may not have permission.';

  @override
  String get adminMapLoading => 'Loading location...';

  @override
  String get adminMapLocation => 'Location';

  @override
  String get adminMapNoOneSharing => 'No one is sharing their location yet';

  @override
  String get adminMapNoSharedLocation => 'This person has no shared location.';

  @override
  String get adminMapOpenFailed => 'Could not open the map';

  @override
  String get adminMapPeopleList => 'People list';

  @override
  String get adminMapReadFailed => 'Could not read the location.';

  @override
  String get adminMapSelectAgencyHint =>
      'Select an agency first to see locations.\nYou can open an agency with \"Manage\" on the Agencies page.';

  @override
  String get adminMapSelectPerson => 'Select Person';

  @override
  String get adminMapShowAll => 'Show everyone';

  @override
  String adminMapVisiblePeople(int count) {
    return 'People with visible location ($count)';
  }

  @override
  String get adminMenuAnalytics => 'Analytics';

  @override
  String get adminMenuAnalyticsSub => 'Statistics and charts';

  @override
  String get adminMenuCalendar => 'Calendar';

  @override
  String get adminMenuCalendarSub => 'Manage events';

  @override
  String get adminMenuCurrency => 'Exchange Rates';

  @override
  String get adminMenuCurrencySub => 'Manage exchange rates';

  @override
  String get adminMenuHome => 'Home';

  @override
  String get adminMenuHomeSub => 'Back to the admin panel';

  @override
  String get adminMenuHotels => 'Hotels & Rooms';

  @override
  String get adminMenuHotelsSub => 'Manage hotels and rooms';

  @override
  String get adminMenuLiveLocation => 'Live Location';

  @override
  String get adminMenuLiveLocationSub => 'See guests on the map';

  @override
  String get adminMenuNotify => 'Send Notification';

  @override
  String get adminMenuNotifySub => 'Send notifications to users';

  @override
  String get adminMenuPeople => 'People';

  @override
  String get adminMenuPeopleSub => 'Manage users';

  @override
  String get adminMenuRadio => 'Radio';

  @override
  String get adminMenuRadioSub => 'Live voice broadcast to guests';

  @override
  String get adminMenuShops => 'Partner Shops';

  @override
  String get adminMenuShopsSub => 'Manage discounted shops';

  @override
  String get adminMenuTracking => 'Location Tracking';

  @override
  String get adminMenuTrackingSub => 'Manage location tracking';

  @override
  String get adminMenuTrips => 'Trips';

  @override
  String get adminMenuTripsSub => 'Manage trips';

  @override
  String adminMinutes(int count) {
    return '$count min';
  }

  @override
  String get adminNext => 'Next';

  @override
  String get adminNoAgencySelected => 'No agency selected.';

  @override
  String get adminNoDate => 'No date';

  @override
  String get adminNoGuestsYet => 'No guests yet.';

  @override
  String get adminNoResults => 'No results found.';

  @override
  String get adminNotAssigned => 'Not assigned';

  @override
  String get adminNotSelected => 'Not selected';

  @override
  String get adminNote => 'Note';

  @override
  String adminNoteValue(String note) {
    return 'Note: $note';
  }

  @override
  String get adminNotifyEmpty => 'No notifications sent yet.';

  @override
  String get adminNotifyHistoryLoadFailed =>
      'Could not load notification history';

  @override
  String get adminNotifyMessage => 'Message';

  @override
  String get adminNotifyNoAgencyHint =>
      'Start managing an agency first to send notifications.';

  @override
  String get adminNotifyRequired => 'Title and message are required';

  @override
  String get adminNotifySendFailed =>
      'An error occurred while sending the notification.';

  @override
  String get adminNotifySent => 'Sent Notifications';

  @override
  String get adminNotifySentOk => 'Announcement sent';

  @override
  String get adminNotifyTarget => 'Target Audience';

  @override
  String get adminNotifyTargetAll => 'Whole Agency';

  @override
  String get adminNotifyTargetInvalid => 'Please select a valid target.';

  @override
  String get adminNotifyTitle => 'Title';

  @override
  String get adminPanelTitle => 'Admin Panel';

  @override
  String adminPeopleRatio(int count, int capacity) {
    return '$count/$capacity people';
  }

  @override
  String adminPersonCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count people',
      one: '1 person',
    );
    return '$_temp0';
  }

  @override
  String get adminPhone => 'Phone';

  @override
  String get adminPickDate => 'Select a date';

  @override
  String get adminPickDay => 'Pick a day';

  @override
  String get adminPrevious => 'Previous';

  @override
  String get adminRemove => 'Remove';

  @override
  String get adminRequired => 'Required';

  @override
  String get adminRequiredField => 'Required field';

  @override
  String get adminRoleGuest => 'Guest';

  @override
  String get adminRoleManager => 'Manager';

  @override
  String get adminRoleSuperAdmin => 'Super Admin';

  @override
  String get adminRoomAdd => 'Add Room';

  @override
  String adminRoomCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rooms',
      one: '1 room',
    );
    return '$_temp0';
  }

  @override
  String get adminRoomCreateFailed => 'Could not create room';

  @override
  String get adminRoomCreated => 'Room created';

  @override
  String get adminRoomDelete => 'Delete Room';

  @override
  String adminRoomDeleteConfirm(String number) {
    return 'Room $number will be deleted. Are you sure?';
  }

  @override
  String get adminRoomDeleteFailed => 'Could not delete room';

  @override
  String get adminRoomDeleted => 'Room deleted';

  @override
  String get adminRoomEdit => 'Edit Room';

  @override
  String get adminRoomEmpty => 'No rooms added for this hotel';

  @override
  String get adminRoomGenderMissing => 'Select a gender type';

  @override
  String get adminRoomNoOccupants => 'No one is in this room.';

  @override
  String adminRoomNumber(String number) {
    return 'Room $number';
  }

  @override
  String get adminRoomNumberMissing => 'Enter a room number';

  @override
  String get adminRoomNumberRequired => 'Room Number *';

  @override
  String adminRoomOccupancy(int count, int capacity) {
    return '$count/$capacity occupied';
  }

  @override
  String adminRoomOccupantsTitle(String number) {
    return 'Room $number - Occupants';
  }

  @override
  String get adminRoomRemoveUser => 'Remove from Room';

  @override
  String adminRoomRemoveUserConfirm(String name) {
    return 'Are you sure you want to remove $name from this room?';
  }

  @override
  String get adminRoomUpdateFailed => 'Could not update room';

  @override
  String get adminRoomUpdated => 'Room updated';

  @override
  String get adminRoomUserRemoveFailed => 'Could not remove user from room';

  @override
  String adminRoomUserRemoved(String name) {
    return '$name was removed from the room';
  }

  @override
  String get adminRooms => 'Rooms';

  @override
  String adminRoomsOfHotel(String name) {
    return '$name - Rooms';
  }

  @override
  String get adminSaving => 'Saving...';

  @override
  String get adminSearchUser => 'Search users...';

  @override
  String get adminSend => 'Send';

  @override
  String get adminSending => 'Sending...';

  @override
  String get adminStartDate => 'Start';

  @override
  String get adminStatHotel => 'Hotels';

  @override
  String get adminStatPeople => 'Registered';

  @override
  String get adminStatRoom => 'Rooms';

  @override
  String get adminStatTrip => 'Trips';

  @override
  String get adminTc => 'Turkish ID No.';

  @override
  String get adminTcUnspecified => 'Turkish ID not specified';

  @override
  String adminTcValue(String tc) {
    return 'ID: $tc';
  }

  @override
  String get adminTime => 'Time';

  @override
  String get adminTitleRequired => 'Title *';

  @override
  String get adminTrackingDescription =>
      'When location tracking is on, your guests can see your location on the map. This is useful when you are acting as their guide.';

  @override
  String get adminTrip => 'Trip';

  @override
  String adminTripAssignedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count people assigned',
      one: '1 person assigned',
    );
    return '$_temp0';
  }

  @override
  String get adminTripCreate => 'Create Trip';

  @override
  String get adminTripCreateFailed => 'Could not create trip';

  @override
  String get adminTripCreated => 'Trip created';

  @override
  String get adminTripDelete => 'Delete Trip';

  @override
  String adminTripDeleteConfirm(String name) {
    return 'Are you sure you want to delete the trip \"$name\"? This cannot be undone.';
  }

  @override
  String get adminTripDeleteFailed => 'Could not delete trip';

  @override
  String get adminTripDeleted => 'Trip deleted';

  @override
  String get adminTripEdit => 'Edit Trip';

  @override
  String get adminTripEmpty => 'No trips created yet.';

  @override
  String get adminTripEmptySub => 'Create, edit and list trips.';

  @override
  String get adminTripEndBeforeStart =>
      'End date cannot be before the start date';

  @override
  String adminTripManagerLabel(String names) {
    return 'Manager: $names';
  }

  @override
  String adminTripManagersSelected(int count) {
    return 'Trip Managers ($count selected)';
  }

  @override
  String get adminTripNameRequired => 'Trip Name *';

  @override
  String get adminTripNoLocation => 'No location set';

  @override
  String get adminTripNoManagers => 'No users with the manager role found.';

  @override
  String get adminTripUpdateFailed => 'Could not update trip';

  @override
  String get adminTripUpdated => 'Trip updated';

  @override
  String get adminUnknown => 'Unknown';

  @override
  String get adminUnnamed => 'Unnamed';

  @override
  String get adminUnnamedGuest => 'Unnamed Guest';

  @override
  String get adminUpdate => 'Update';

  @override
  String get adminUpdating => 'Updating...';

  @override
  String adminUserAccountCreateFailed(String code) {
    return 'Could not create the account ($code)';
  }

  @override
  String get adminUserAdd => 'Add Person';

  @override
  String get adminUserAgencyRequired => 'Selecting an agency is required';

  @override
  String get adminUserCreate => 'Create Person';

  @override
  String get adminUserCreateFailed => 'Could not create person';

  @override
  String get adminUserCreateOffline =>
      'No internet connection. Could not create person.';

  @override
  String get adminUserCreated => 'Person created';

  @override
  String get adminUserDelete => 'Delete Person';

  @override
  String adminUserDeleteConfirm(String name) {
    return 'Are you sure you want to delete \"$name\"? This cannot be undone.';
  }

  @override
  String get adminUserDeleteFailed => 'Could not delete person';

  @override
  String get adminUserDeleted => 'Person deleted';

  @override
  String get adminUserDetail => 'Person Details';

  @override
  String get adminUserEdit => 'Edit Person';

  @override
  String get adminUserEmpty => 'No users yet.';

  @override
  String get adminUserNameMissing => 'Full name is required';

  @override
  String get adminUserNameRequired => 'Full Name *';

  @override
  String get adminUserNotFound => 'Person not found.';

  @override
  String get adminUserSearchHint => 'Search by name or ID';

  @override
  String get adminUserTcExists =>
      'An account with this ID number already exists.';

  @override
  String get adminUserTcLength => 'ID number must be 11 digits';

  @override
  String get adminUserTcLocked => 'The ID number cannot be changed';

  @override
  String get adminUserTcMissing => 'ID number is required';

  @override
  String get adminUserTcRequired => 'Turkish ID No. *';

  @override
  String get adminUserType => 'User Type';

  @override
  String get adminUserUpdateFailed => 'Could not save user details';

  @override
  String get adminUserUpdated => 'User details updated';

  @override
  String get adminWelcome => 'Welcome';

  @override
  String adminWelcomeName(String name) {
    return 'Welcome, $name';
  }

  @override
  String get appTitle => 'My Umrah Guide';

  @override
  String get authAccountIsAdmin => 'This is a manager account.';

  @override
  String get authAccountIsGuest => 'This is a pilgrim account.';

  @override
  String get authAdmin => 'Manager';

  @override
  String get authApiActMigrate => 'Accounts moved to new login';

  @override
  String get authApiActSecretReset => 'PIN/password renewed';

  @override
  String get authApiCancel => 'Cancel';

  @override
  String get authApiChangePassword => 'Change my password';

  @override
  String get authApiChangePin => 'Change my PIN';

  @override
  String get authApiChangeSubtitle => 'Renew the secret you use to log in';

  @override
  String get authApiCopied => 'Copied to clipboard.';

  @override
  String get authApiCopy => 'Copy';

  @override
  String get authApiCopyAllCsv => 'Copy all (CSV)';

  @override
  String get authApiCreate => 'Create';

  @override
  String get authApiCredName => 'Full name';

  @override
  String get authApiCredTitle => 'Login Details';

  @override
  String get authApiCredWarningPassword =>
      'This password is shown only now; once closed it cannot be shown again.';

  @override
  String get authApiCredWarningPin =>
      'This PIN is shown only now; once closed it cannot be shown again.';

  @override
  String get authApiDocWriteFailed =>
      'The account was created but the person record could not be saved. Note the details below and save the form again; the same account will be used.';

  @override
  String get authApiErrAccountDisabled =>
      'This account has been disabled. Please contact your guide or agency.';

  @override
  String get authApiErrAccountNotReady =>
      'Your account setup is not complete yet. Please contact your guide or agency.';

  @override
  String get authApiErrAgencyNotFound => 'Agency not found.';

  @override
  String get authApiErrForbidden => 'You are not authorized for this action.';

  @override
  String get authApiErrInvalidCredentials =>
      'The user ID or PIN is incorrect, or there were too many attempts; please try again a little later.';

  @override
  String get authApiErrInvalidSecret =>
      'The new PIN/password does not meet the rules.';

  @override
  String authApiErrLocked(int minutes) {
    return 'Too many failed attempts. The account is temporarily locked; try again in $minutes minutes.';
  }

  @override
  String get authApiErrLockedShort =>
      'Too many failed attempts. The account is temporarily locked; please try again later.';

  @override
  String get authApiErrMigrationDone =>
      'The migration is complete; this action is now closed.';

  @override
  String get authApiErrNetwork =>
      'Could not reach the server. Check your internet connection.';

  @override
  String get authApiErrNoSecret =>
      'This account has no PIN/password yet. Ask your guide for a new PIN.';

  @override
  String get authApiErrNotFound => 'User not found.';

  @override
  String get authApiErrRateLimited =>
      'Too many attempts. Please try again in a few minutes.';

  @override
  String authApiErrRateLimitedWait(int minutes) {
    return 'Too many attempts. Please try again in $minutes minutes.';
  }

  @override
  String get authApiErrReauth =>
      'For security, please sign out and sign in again.';

  @override
  String get authApiErrServer =>
      'A server error occurred. Please try again later.';

  @override
  String get authApiErrUnauthenticated =>
      'Your session could not be verified. Please log out and log in again.';

  @override
  String get authApiErrUnknown => 'An unexpected error occurred.';

  @override
  String get authApiErrValidation => 'The entered information is invalid.';

  @override
  String get authApiErrWeakSecret =>
      'This PIN is easy to guess (e.g. 123456, 111111). Please choose another PIN.';

  @override
  String get authApiErrWrongOldSecret =>
      'The current PIN/password is incorrect.';

  @override
  String get authApiFieldRequired => 'This field is required.';

  @override
  String get authApiForgot => 'I forgot my User ID or PIN';

  @override
  String get authApiForgotBody =>
      'Your User ID and PIN are given by your guide or agency. If you forgot them, please contact your guide or agency; they can create a new PIN for you.';

  @override
  String get authApiForgotTitle => 'Forgot your login details?';

  @override
  String get authApiHideSecret => 'Hide';

  @override
  String get authApiLeave => 'Leave';

  @override
  String get authApiLoginIdError => 'User ID must be a 7-digit number.';

  @override
  String get authApiLoginIdLabel => 'User ID';

  @override
  String get authApiLoginIdNone => 'Not yet';

  @override
  String authApiMigrateConfirm(int count) {
    return '$count accounts will be moved to the new login and national ID login will be closed. This cannot be undone. Continue?';
  }

  @override
  String authApiMigrateCount(int count) {
    return '$count accounts will be moved.';
  }

  @override
  String get authApiMigrateDesc => 'Switch to User ID and PIN/password login';

  @override
  String authApiMigrateDone(int count) {
    return '$count accounts moved.';
  }

  @override
  String get authApiMigrateDryRun => 'Preview (no changes)';

  @override
  String get authApiMigrateIntro =>
      'A User ID and PIN/password are generated for every account without a User ID (merchants excluded), and login with national ID is closed. This is done once. Preview first.';

  @override
  String get authApiMigrateLeaveBody =>
      'The login details cannot be shown again. Are you sure you copied them?';

  @override
  String get authApiMigrateLeaveTitle => 'Leave this page?';

  @override
  String get authApiMigrateNone => 'There are no accounts to move.';

  @override
  String get authApiMigrateOnceWarning =>
      'WARNING: These login details are shown only now and can never be displayed again. Before closing this page, copy them with \"Copy all (CSV)\" and keep them in a safe place.';

  @override
  String authApiMigratePartial(int count, int failed) {
    return '$count accounts moved, $failed could not be moved. Read the warnings and start the migration again.';
  }

  @override
  String get authApiMigrateRun => 'Start moving';

  @override
  String get authApiMigrateTitle => 'Move accounts to new login';

  @override
  String get authApiMigrateWarnings => 'Warnings';

  @override
  String get authApiMismatch => 'The new values do not match.';

  @override
  String get authApiNewPassword => 'New password';

  @override
  String get authApiNewPin => 'New PIN';

  @override
  String get authApiNotConnected => 'The server is not connected yet.';

  @override
  String get authApiOk => 'OK';

  @override
  String get authApiOldPassword => 'Current password';

  @override
  String get authApiOldPin => 'Current PIN';

  @override
  String get authApiPasswordChanged => 'Your password has been changed.';

  @override
  String get authApiPasswordError => 'Password must be at least 8 characters.';

  @override
  String get authApiPasswordLabel => 'Password';

  @override
  String get authApiPinChanged => 'Your PIN has been changed.';

  @override
  String get authApiPinError => 'PIN must be 6 digits.';

  @override
  String get authApiPinLabel => 'PIN';

  @override
  String get authApiReloginPassword =>
      'Your password was changed. For security all sessions were closed; sign in with your new password.';

  @override
  String get authApiReloginPin =>
      'Your PIN was changed. For security all sessions were closed; sign in with your new PIN.';

  @override
  String get authApiRepeatPassword => 'New password (again)';

  @override
  String get authApiRepeatPin => 'New PIN (again)';

  @override
  String get authApiResetPassword => 'Issue new password';

  @override
  String authApiResetPasswordConfirm(String name) {
    return 'Create a new password for $name? The old password will stop working.';
  }

  @override
  String get authApiResetPin => 'Issue new PIN';

  @override
  String authApiResetPinConfirm(String name) {
    return 'Create a new PIN for $name? The old PIN will stop working.';
  }

  @override
  String get authApiSameAsOld =>
      'The new value cannot be the same as the current one.';

  @override
  String get authApiSave => 'Save';

  @override
  String get authApiShareIntro => 'Your Umre Rehberim login details';

  @override
  String get authApiShareWhatsapp => 'Share via WhatsApp';

  @override
  String get authApiShowSecret => 'Show';

  @override
  String get authApiSoon => 'Soon';

  @override
  String get authApiViewAs => 'View as user';

  @override
  String get authApiViewAsSoon => 'This feature will be available soon';

  @override
  String get authFieldRequired => 'This field cannot be empty';

  @override
  String get authGreeting => 'Assalamu Alaikum!';

  @override
  String get authGuest => 'Guest';

  @override
  String get authKvkkAbroadBody =>
      'Data may be stored on secure servers abroad through Google Firebase and Cloudflare services. This transfer is carried out with technical and administrative measures in line with KVKK.';

  @override
  String get authKvkkAbroadTitle => 'Transfer of Data Abroad:';

  @override
  String get authKvkkAccept => 'I Accept';

  @override
  String get authKvkkCheckbox =>
      'I have read and accept the KVKK Privacy Notice';

  @override
  String get authKvkkControllerTitle => 'Data Controller:';

  @override
  String get authKvkkDataBody =>
      'Identity (name, surname, Turkish ID number), contact (phone number), demographic (gender, age), location (real-time and while the app is in use), app usage data.';

  @override
  String get authKvkkDataTitle => 'Personal Data Processed:';

  @override
  String get authKvkkLocationBody =>
      'Tracked while the app is active; no tracking takes place in the background or after you exit. It is required for your safety and for guidance services. If permission is not granted, some core features may be unavailable.';

  @override
  String get authKvkkLocationTitle => 'Location Data:';

  @override
  String get authKvkkMethodBody =>
      'Data is collected and processed electronically through the mobile app, based on the user\'s explicit consent, under Articles 5 and 6 of KVKK.';

  @override
  String get authKvkkMethodTitle => 'Collection Method and Legal Basis:';

  @override
  String get authKvkkPurposeBody =>
      'Creating and managing user accounts, real-time communication with the Umrah guide, reaching users in emergencies, group tracking and guidance services, sending notifications, and keeping the app secure.';

  @override
  String get authKvkkPurposeTitle => 'Purposes of Processing:';

  @override
  String get authKvkkReject => 'Decline';

  @override
  String get authKvkkRequired => 'Please accept the KVKK Privacy Notice.';

  @override
  String get authKvkkRightsBody =>
      'You may learn whether your data is processed, request information, ask for incorrect or incomplete data to be corrected, and request that your data be deleted or destroyed. You can send your requests to support@umrerehberim.com.';

  @override
  String get authKvkkRightsTitle => 'Your Rights Under KVKK:';

  @override
  String get authKvkkTitle => 'KVKK Privacy Notice';

  @override
  String get authKvkkTransferBody =>
      'It is not shared with third parties and is stored in Hacktapot Software\'s secure data centers. It may only be shared upon an order from a prosecutor or judicial authority, or to a limited extent with the relevant tour company.';

  @override
  String get authKvkkTransferTitle => 'Transfer of Personal Data:';

  @override
  String get authLoginButton => 'Log In';

  @override
  String get authLoginFailed => 'An error occurred while logging in.';

  @override
  String get authLoginType => 'Login Type';

  @override
  String get authNoInternet =>
      'No internet connection. Please check your connection and try again.';

  @override
  String get authSplashCheckingInternet => 'Checking internet connection...';

  @override
  String get authSplashDataLoadFailed =>
      'Data could not be loaded. Please check your internet connection.';

  @override
  String get authSplashDataNotFound =>
      'No data found. Please check your internet connection.';

  @override
  String get authSplashDataStale =>
      'Your data is out of date. Please check your internet connection.';

  @override
  String get authSplashLoadingData => 'Loading data...';

  @override
  String get authSplashLoadingLocal => 'Loading local data...';

  @override
  String get authSplashLoadingUser => 'Loading user information...';

  @override
  String get authSplashNoInternetLogin =>
      'No internet connection. Please log in with your ID number.';

  @override
  String get authSplashOfflineStart => 'Starting in offline mode...';

  @override
  String get authSplashPleaseLogin => 'Please log in with your ID number.';

  @override
  String get authSplashUserNotFound => 'User not found.';

  @override
  String get authTagline => 'Your Guide\non the Sacred Journey';

  @override
  String get authTcLabel => 'Turkish ID No.';

  @override
  String get authTcLengthError => 'The ID number must be 11 digits';

  @override
  String get authTooManyRequests =>
      'Too many attempts. Please try again later.';

  @override
  String get authUserDisabled => 'This account has been disabled.';

  @override
  String get authUserNotFound => 'User not found. Please register.';

  @override
  String get bireyselAccountBadge => 'Individual account';

  @override
  String get bireyselAgencyOnlyBody =>
      'This feature is offered to pilgrims travelling with our partner agencies.';

  @override
  String get bireyselAgencyOnlyTitle => 'For agency pilgrims';

  @override
  String get bireyselConsentSaveFailed =>
      'Your preference could not be saved. Please try again.';

  @override
  String get bireyselDeleteAccount => 'Delete my account';

  @override
  String get bireyselDeleteAccountSub =>
      'Your account and details are permanently deleted';

  @override
  String get bireyselDeleteAuthPartial =>
      'Your data was deleted but the account record could not be closed; sign in again and cancel to remove it completely.';

  @override
  String get bireyselDeleteConfirmBody =>
      'Your account, profile details and the Group Khatm groups you created are permanently deleted, and you leave the groups you joined. This cannot be undone.\n\nYou will be asked to verify again with your Google account to continue.';

  @override
  String get bireyselDeleteConfirmButton => 'Delete permanently';

  @override
  String get bireyselDeleteConfirmTitle => 'Delete your account?';

  @override
  String get bireyselDeleteFailed =>
      'The account could not be deleted. Please try again.';

  @override
  String get bireyselDeleteHatimFailed =>
      'Could not leave your Group Khatm groups; your account was not deleted. Please try again.';

  @override
  String get bireyselDeleteOffline =>
      'An internet connection is required to delete your account. Please check your connection and try again.';

  @override
  String get bireyselDeleteRecentLogin =>
      'For security, sign out and sign in again, then try again.';

  @override
  String get bireyselDeleteWrongAccount =>
      'Please choose the Google account you use in this app.';

  @override
  String get bireyselDeleted => 'Your account has been deleted.';

  @override
  String get bireyselDeleting => 'Deleting your account…';

  @override
  String get bireyselEmail => 'E-mail';

  @override
  String get bireyselErrAccountExists =>
      'This e-mail address is registered with another sign-in method.';

  @override
  String get bireyselErrEmailUnverified =>
      'The e-mail address of your Google account is not verified.';

  @override
  String get bireyselErrGeneric =>
      'Could not sign in with Google. Please try again.';

  @override
  String get bireyselErrUnavailable =>
      'Google sign-in is not available right now. Please try again later.';

  @override
  String get bireyselGoogleContinue => 'Continue with Google';

  @override
  String get bireyselJoinAgency => 'Join my agency';

  @override
  String get bireyselJoinAgencySnack => 'This feature will be available soon.';

  @override
  String get bireyselJoinAgencySub =>
      'Link with your agency to see your trip details in the app';

  @override
  String get bireyselLocationConsentBody =>
      'Optional. You allow features that need your location; you can change this any time in your profile.';

  @override
  String get bireyselLocationConsentTitle => 'Explicit consent for location';

  @override
  String get bireyselNameError =>
      'Full name must be between 2 and 60 characters';

  @override
  String get bireyselNameLabel => 'Full name';

  @override
  String get bireyselOrDivider =>
      'or sign in with the details from your agency';

  @override
  String get bireyselRegisterButton => 'Complete sign-up';

  @override
  String get bireyselRegisterFailed =>
      'Sign-up could not be completed. Please try again.';

  @override
  String get bireyselRegisterIntro =>
      'Welcome! We need a few details to create your account.';

  @override
  String get bireyselRegisterTitle => 'Complete Sign-up';

  @override
  String bireyselSignedInAs(String email) {
    return 'Google account: $email';
  }

  @override
  String get ccActAgencyCreate => 'Agency created';

  @override
  String get ccActAgencyDelete => 'Agency deleted';

  @override
  String get ccActAgencyUpdate => 'Agency updated';

  @override
  String get ccActContentUpdate => 'Updated content';

  @override
  String get ccActCouponCreate => 'Coupon created';

  @override
  String get ccActCouponDelete => 'Coupon deleted';

  @override
  String get ccActCouponUpdate => 'Coupon updated';

  @override
  String get ccActEntitlementUpdate => 'Updated package entitlement';

  @override
  String get ccActFinanceSettings => 'Finance settings changed';

  @override
  String get ccActHatimModerate => 'Group Khatm moderation';

  @override
  String get ccActMerchantCreate => 'Merchant account created';

  @override
  String get ccActMessageSend => 'Message sent to agency';

  @override
  String get ccActPaymentsToggle => 'Toggled demo payments';

  @override
  String get ccActPlatformSettings => 'Updated platform settings';

  @override
  String get ccActPointsBulk => 'Bulk points uploaded';

  @override
  String get ccActPointsGrant => 'Points adjusted';

  @override
  String get ccActPointsRevert => 'Point adjustment reverted';

  @override
  String get ccActReviewModerate => 'Review moderation';

  @override
  String get ccActRiskReview => 'Risk alert reviewed';

  @override
  String get ccActRoleChange => 'Role changed';

  @override
  String get ccActSettlementPaid => 'Settlement paid';

  @override
  String get ccActSettlementUpdate => 'Settlement updated';

  @override
  String get ccActShopCreate => 'Shop created';

  @override
  String get ccActShopDelete => 'Shop deleted';

  @override
  String get ccActShopToggle => 'Shop status changed';

  @override
  String get ccActShopUpdate => 'Shop updated';

  @override
  String get ccActTxCancel => 'Transaction cancelled';

  @override
  String get ccActUserCreate => 'User created';

  @override
  String get ccActUserDelete => 'User deleted';

  @override
  String get ccActUserUpdate => 'User updated';

  @override
  String ccAgoDays(int count) {
    return '$count d ago';
  }

  @override
  String ccAgoHours(int count) {
    return '$count h ago';
  }

  @override
  String ccAgoMinutes(int count) {
    return '$count min ago';
  }

  @override
  String get ccAgoNow => 'just now';

  @override
  String get ccAnAvgBasket => 'Average basket';

  @override
  String get ccAnAvgRating => 'Average rating';

  @override
  String get ccAnBusyHours => 'Busiest hours of day';

  @override
  String get ccAnCancelRate => 'Cancel rate';

  @override
  String get ccAnCommission => 'Commission';

  @override
  String get ccAnCommissionGenerated => 'Commission generated';

  @override
  String get ccAnComplaintBadge => 'Complaint';

  @override
  String get ccAnComplaints => 'Complaints';

  @override
  String get ccAnConversion => 'Conversion (transactions / views)';

  @override
  String get ccAnConversionShort => 'Conversion';

  @override
  String get ccAnCouponDiscount => 'Coupon discount';

  @override
  String get ccAnDailySales => 'Daily sales';

  @override
  String get ccAnDailyVolume => 'Daily net volume';

  @override
  String get ccAnDau => 'Daily active (DAU)';

  @override
  String get ccAnDiscount => 'Merchant discount';

  @override
  String get ccAnGross => 'Gross sales';

  @override
  String get ccAnGuest => 'Guest';

  @override
  String get ccAnInactive => 'Inactive';

  @override
  String get ccAnLatestReviews => 'Latest reviews and complaints';

  @override
  String get ccAnLoadError => 'Data could not be loaded. Pull down to refresh.';

  @override
  String get ccAnMau => 'Monthly active (MAU)';

  @override
  String get ccAnMonthlyNewUsers => 'Monthly new users (last 12 months)';

  @override
  String get ccAnMonthlyVolume => 'Monthly net volume';

  @override
  String get ccAnMostViewed => 'Most viewed merchants';

  @override
  String get ccAnMpAll => 'All merchants';

  @override
  String get ccAnMpPodium => 'Most Popular Merchants';

  @override
  String get ccAnMpSubtitle => 'Sales, ratings, complaints and conversion';

  @override
  String get ccAnMpTitle => 'Merchant Performance';

  @override
  String get ccAnNet => 'Net sales';

  @override
  String get ccAnNewUsers => 'New users in period';

  @override
  String get ccAnNoAccess => 'You don\'t have access to this section.';

  @override
  String get ccAnNoAgency => 'No agency';

  @override
  String get ccAnNoComment => '(no comment)';

  @override
  String get ccAnNoData => 'No data in this period.';

  @override
  String get ccAnNoReviews => 'No reviews in this period.';

  @override
  String get ccAnNoShops => 'No partner merchants yet.';

  @override
  String get ccAnOpenMerchantPerf => 'Merchant performance';

  @override
  String get ccAnPayCard => 'Card';

  @override
  String get ccAnPayCash => 'Cash';

  @override
  String get ccAnPayPoints => 'Points';

  @override
  String get ccAnPaymentSplit => 'Payment method split';

  @override
  String get ccAnPeriodAll => 'All';

  @override
  String get ccAnPeriodMonth => '30 days';

  @override
  String get ccAnPeriodQuarter => '90 days';

  @override
  String get ccAnPeriodToday => 'Today';

  @override
  String get ccAnPeriodWeek => '7 days';

  @override
  String get ccAnPeriodYear => '1 year';

  @override
  String get ccAnPointsEarned => 'Points earned';

  @override
  String get ccAnPointsFlow => 'Points flow';

  @override
  String get ccAnPointsNet => 'Net points';

  @override
  String get ccAnPointsSpent => 'Points spent';

  @override
  String get ccAnRatingDist => 'Rating distribution';

  @override
  String get ccAnRefresh => 'Refresh';

  @override
  String ccAnReviewCount(int count) {
    return '$count reviews';
  }

  @override
  String get ccAnRoleAgencyAdmin => 'Agency Admin';

  @override
  String get ccAnRoleFinance => 'Finance';

  @override
  String get ccAnRoleGuest => 'Guest';

  @override
  String get ccAnRoleManager => 'Manager';

  @override
  String get ccAnRoleMerchant => 'Merchant';

  @override
  String get ccAnRoleOther => 'Other';

  @override
  String get ccAnRoleSuperAdmin => 'Super Admin';

  @override
  String get ccAnRoleSupport => 'Support';

  @override
  String get ccAnSecTrends => 'Trends';

  @override
  String get ccAnSecUsage => 'Usage';

  @override
  String get ccAnSecVolume => 'Transaction volume';

  @override
  String ccAnShopsCount(int count) {
    return '$count shops';
  }

  @override
  String get ccAnSortComplaints => 'Complaints';

  @override
  String get ccAnSortRating => 'Rating';

  @override
  String get ccAnSortRevenue => 'Revenue';

  @override
  String get ccAnSortTx => 'Transactions';

  @override
  String get ccAnSortViews => 'Views';

  @override
  String get ccAnStickiness => 'Stickiness (DAU/MAU)';

  @override
  String get ccAnSubtitle => 'Usage, volume and trends';

  @override
  String get ccAnTitle => 'Analytics & BI';

  @override
  String get ccAnTopCategories => 'Revenue by category';

  @override
  String get ccAnTopShopsByRevenue => 'Top merchants by revenue';

  @override
  String get ccAnTopShopsByTx => 'Top merchants by transactions';

  @override
  String get ccAnTotalUsers => 'Total users';

  @override
  String get ccAnTxCount => 'Transactions';

  @override
  String ccAnTxCountShort(int count) {
    return '$count transactions';
  }

  @override
  String get ccAnUsersByAgency => 'Users by agency';

  @override
  String get ccAnUsersByRole => 'Users by role';

  @override
  String ccAnUsersCount(int count) {
    return '$count users';
  }

  @override
  String get ccAnViews => 'Views';

  @override
  String get ccAnViewsNote => 'View counts are all-time.';

  @override
  String ccAnViewsShort(int count) {
    return '$count views';
  }

  @override
  String get ccAnWau => 'Weekly active (WAU)';

  @override
  String get ccAuditCatAgency => 'Agency';

  @override
  String get ccAuditCatAll => 'All';

  @override
  String get ccAuditCatCoupon => 'Coupon';

  @override
  String get ccAuditCatFinance => 'Finance';

  @override
  String get ccAuditCatMessage => 'Message';

  @override
  String get ccAuditCatPlatform => 'Platform';

  @override
  String get ccAuditCatPoints => 'Points';

  @override
  String get ccAuditCatRisk => 'Risk';

  @override
  String get ccAuditCatShop => 'Merchant/Shop';

  @override
  String get ccAuditCatUser => 'User';

  @override
  String get ccAuditDetails => 'Details';

  @override
  String get ccAuditEmpty => 'No records match these filters';

  @override
  String get ccAuditLoadMore => 'Load more';

  @override
  String get ccAuditSearchActor => 'Search by actor';

  @override
  String ccAuditShown(int count) {
    return '$count records';
  }

  @override
  String get ccAuditSubtitle => 'Who did what, and when';

  @override
  String get ccAuditTarget => 'Target';

  @override
  String get ccAuditTitle => 'Audit Log';

  @override
  String get ccAuditUnknownActor => 'Unknown';

  @override
  String get ccCancel => 'Cancel';

  @override
  String ccCpnActivatedOk(String code) {
    return '$code activated.';
  }

  @override
  String get ccCpnActive => 'Active';

  @override
  String get ccCpnActiveHelp =>
      'Inactive coupons are hidden from guests and can\'t be used.';

  @override
  String get ccCpnAgency => 'Agency';

  @override
  String get ccCpnAllAgencies => 'All agencies';

  @override
  String get ccCpnAllShops => 'All shops';

  @override
  String get ccCpnCode => 'Coupon code';

  @override
  String get ccCpnCodeHelp =>
      'Capital letters and digits, 4–16 characters. Can\'t be changed later.';

  @override
  String get ccCpnCodeInvalid => '4–16 characters, A–Z and 0–9 only.';

  @override
  String get ccCpnCodeLocked =>
      'The code is the coupon\'s ID and can\'t be changed.';

  @override
  String get ccCpnCodeSuggest => 'Suggest a code';

  @override
  String get ccCpnCodeTaken =>
      'This code is already taken. Choose another one.';

  @override
  String get ccCpnCreate => 'Create coupon';

  @override
  String ccCpnCreatedOk(String code) {
    return 'Coupon $code created.';
  }

  @override
  String get ccCpnDates => 'Valid dates';

  @override
  String get ccCpnDeactivate => 'Deactivate';

  @override
  String ccCpnDeactivatedOk(String code) {
    return '$code deactivated.';
  }

  @override
  String get ccCpnDelete => 'Delete';

  @override
  String ccCpnDeleteBlockedBody(int count) {
    return 'This coupon was used $count times. It\'s kept for reporting; you can deactivate it instead.';
  }

  @override
  String get ccCpnDeleteBlockedTitle => 'A used coupon can\'t be deleted';

  @override
  String ccCpnDeleteBody(String code) {
    return '$code will be permanently deleted.';
  }

  @override
  String get ccCpnDeleteTitle => 'Delete coupon?';

  @override
  String ccCpnDeletedOk(String code) {
    return '$code deleted.';
  }

  @override
  String get ccCpnDescription => 'Description (optional)';

  @override
  String get ccCpnEdit => 'Edit';

  @override
  String get ccCpnEditTitle => 'Edit coupon';

  @override
  String get ccCpnEmpty => 'No coupons yet. Create your first campaign!';

  @override
  String get ccCpnFilterAll => 'All';

  @override
  String ccCpnGiven(String amount) {
    return 'Discount given: $amount';
  }

  @override
  String get ccCpnKpiActive => 'Active coupons';

  @override
  String get ccCpnKpiDiscount => 'Total discount given';

  @override
  String get ccCpnKpiGuests => 'Guests who redeemed';

  @override
  String get ccCpnKpiUses => 'Total redemptions';

  @override
  String get ccCpnLoadError => 'Coupons couldn\'t be loaded.';

  @override
  String get ccCpnMaxDiscount => 'Discount cap';

  @override
  String get ccCpnMaxUses => 'Total usage limit';

  @override
  String ccCpnMaxUsesBelowUsed(int used) {
    return 'The limit can\'t be below current usage ($used).';
  }

  @override
  String get ccCpnMaxUsesHelp =>
      'Empty/0 = unlimited. Each guest can use the coupon once.';

  @override
  String ccCpnMinShort(String amount) {
    return 'min. $amount';
  }

  @override
  String get ccCpnMinSpend => 'Minimum spend';

  @override
  String get ccCpnNew => 'New Coupon';

  @override
  String get ccCpnNewTitle => 'New coupon';

  @override
  String get ccCpnNoMatch => 'No coupons match this filter.';

  @override
  String get ccCpnNoRedemptions => 'This coupon hasn\'t been used yet.';

  @override
  String get ccCpnOncePerGuest =>
      'The coupon discount applies after the shop discount; the amount due never goes below zero.';

  @override
  String get ccCpnPercentMax => 'Percent can be at most 100.';

  @override
  String get ccCpnReadOnly => 'Read only';

  @override
  String get ccCpnRedemptions => 'Redemptions';

  @override
  String get ccCpnRequired => 'This field is required.';

  @override
  String get ccCpnSave => 'Save changes';

  @override
  String get ccCpnSaveError =>
      'The action couldn\'t be completed. Please try again.';

  @override
  String get ccCpnSectionBasics => 'Coupon details';

  @override
  String get ccCpnSectionDiscount => 'Discount';

  @override
  String get ccCpnSectionScope => 'Validity';

  @override
  String get ccCpnShop => 'Shop';

  @override
  String get ccCpnStatAvg => 'Average discount';

  @override
  String get ccCpnStatTotal => 'Total discount';

  @override
  String get ccCpnStatUntil => 'Valid until';

  @override
  String get ccCpnStatUses => 'Redemptions';

  @override
  String get ccCpnStatusActive => 'Active';

  @override
  String get ccCpnStatusExhausted => 'Used up';

  @override
  String get ccCpnStatusExpired => 'Expired';

  @override
  String get ccCpnStatusInactive => 'Inactive';

  @override
  String get ccCpnStatusScheduled => 'Scheduled';

  @override
  String get ccCpnSubtitle => 'Campaign and discount coupons';

  @override
  String get ccCpnTitle => 'Coupons';

  @override
  String get ccCpnTitleField => 'Title';

  @override
  String get ccCpnTitleHint => 'e.g. Welcome discount';

  @override
  String get ccCpnTypeFixed => 'Fixed amount';

  @override
  String get ccCpnTypePercent => 'Percent';

  @override
  String ccCpnUpTo(String amount) {
    return 'up to $amount';
  }

  @override
  String ccCpnUpdatedOk(String code) {
    return 'Coupon $code updated.';
  }

  @override
  String ccCpnUsesUnlimited(int count) {
    return '$count uses · unlimited';
  }

  @override
  String get ccCpnValue => 'Discount value';

  @override
  String get ccCpnValueInvalid => 'Enter a value greater than 0.';

  @override
  String get ccCpnZeroNoCap => 'Empty/0 = no cap';

  @override
  String get ccCpnZeroNone => 'Empty/0 = no minimum';

  @override
  String get ccFinActionError => 'The operation failed';

  @override
  String get ccFinAgencyEmpty => 'No agency share in this period';

  @override
  String get ccFinAgencyExplain =>
      'Each agency earns its share from the commission on purchases made by its own guests.';

  @override
  String ccFinAgencySub(int count, String net) {
    return '$count tx · net $net';
  }

  @override
  String get ccFinAllAgencies => 'Open to all agencies';

  @override
  String get ccFinCancel => 'Cancel';

  @override
  String get ccFinColAgency => 'Agency';

  @override
  String get ccFinColCommission => 'Commission';

  @override
  String get ccFinColCoupon => 'Coupon';

  @override
  String get ccFinColDate => 'Date';

  @override
  String get ccFinColDiscount => 'Discount';

  @override
  String get ccFinColGross => 'Gross';

  @override
  String get ccFinColGuest => 'Guest';

  @override
  String get ccFinColNet => 'Net';

  @override
  String get ccFinColPeriod => 'Period';

  @override
  String get ccFinColPlatform => 'Platform';

  @override
  String get ccFinColRate => 'Commission %';

  @override
  String get ccFinColStatus => 'Status';

  @override
  String get ccFinColTx => 'Tx';

  @override
  String get ccFinCopyAllCsv => 'Copy whole period as CSV';

  @override
  String get ccFinCsvCopied => 'CSV copied to clipboard';

  @override
  String get ccFinDailyChart => 'Daily commission';

  @override
  String get ccFinEmpty => 'No transactions in this period';

  @override
  String get ccFinGenerate => 'Generate/Update Period';

  @override
  String ccFinGenerateConfirm(String month) {
    return 'Create settlement records for $month? Amounts of paid records will not change.';
  }

  @override
  String ccFinGenerateDone(int count) {
    return 'Settlements updated for $count shops';
  }

  @override
  String get ccFinGenerateFirst => 'Generate the period first';

  @override
  String get ccFinKpiAgency => 'Agency share';

  @override
  String get ccFinKpiCommission => 'Total commission';

  @override
  String get ccFinKpiCoupon => 'Coupon discount';

  @override
  String get ccFinKpiDiscount => 'Merchant discount';

  @override
  String get ccFinKpiGross => 'Gross sales';

  @override
  String get ccFinKpiNet => 'Net sales';

  @override
  String get ccFinKpiPlatform => 'Platform share';

  @override
  String get ccFinKpiTxCount => 'Transactions';

  @override
  String get ccFinLoadError => 'Finance data could not be loaded';

  @override
  String get ccFinMarkPaid => 'Mark as paid';

  @override
  String get ccFinMarkPaidTitle => 'Payment record';

  @override
  String get ccFinMarkedPaid => 'Marked as paid';

  @override
  String get ccFinNextMonth => 'Next month';

  @override
  String get ccFinNoteHint => 'Note (optional)';

  @override
  String ccFinPaidCount(int paid, int total) {
    return '$paid/$total paid';
  }

  @override
  String ccFinPaidDiff(String recorded, int count) {
    return 'Live totals differ from the paid record (record: $recorded, $count tx). Possibly a late cancellation or entry.';
  }

  @override
  String ccFinPaidOn(String date) {
    return 'Paid: $date';
  }

  @override
  String get ccFinPrevMonth => 'Previous month';

  @override
  String get ccFinProNote =>
      'Payout distribution and e-invoice integration come with the Pro server phase';

  @override
  String get ccFinRefresh => 'Refresh';

  @override
  String get ccFinRevert => 'Revert to pending';

  @override
  String get ccFinRevertConfirm => 'Move this settlement back to \'Pending\'?';

  @override
  String get ccFinReverted => 'Moved back to pending';

  @override
  String get ccFinSave => 'Save';

  @override
  String get ccFinSettingsDefault => 'No setting saved; default 50% is used';

  @override
  String get ccFinSettingsDialogTitle => 'Platform share (%)';

  @override
  String get ccFinSettingsEdit => 'Edit';

  @override
  String ccFinSettingsExplain(int platform, int agency) {
    return '$platform% of the commission collected from merchants goes to the platform, the remaining $agency% to the agency.';
  }

  @override
  String get ccFinSettingsInvalid => 'Enter a number between 0 and 100';

  @override
  String get ccFinSettingsSaved => 'Platform share updated';

  @override
  String get ccFinSettingsTitle => 'Platform share';

  @override
  String get ccFinStatement => 'Statement';

  @override
  String get ccFinStatusNone => 'Not generated';

  @override
  String get ccFinStatusPaid => 'Paid';

  @override
  String get ccFinStatusPending => 'Pending';

  @override
  String get ccFinStmtAgency => 'Agency';

  @override
  String get ccFinStmtCopyCsv => 'Copy (CSV)';

  @override
  String get ccFinStmtFooter =>
      'This document is for information only and is not a fiscal document.';

  @override
  String get ccFinStmtIssued => 'Issued';

  @override
  String get ccFinStmtLines => 'Transaction details';

  @override
  String get ccFinStmtMerchantCode => 'Merchant code';

  @override
  String get ccFinStmtNo => 'Statement no';

  @override
  String get ccFinStmtNote => 'Note';

  @override
  String get ccFinStmtPayable => 'Commission payable by merchant';

  @override
  String get ccFinStmtPeriod => 'Period';

  @override
  String get ccFinStmtPlatform => 'Umre Rehberim · Partner Merchant Program';

  @override
  String get ccFinStmtRate => 'Commission rate';

  @override
  String get ccFinStmtShop => 'Shop';

  @override
  String get ccFinStmtStampPaid => 'PAID';

  @override
  String get ccFinStmtStampPending => 'PENDING';

  @override
  String get ccFinStmtTitle => 'Settlement Statement';

  @override
  String get ccFinStmtTotals => 'Totals';

  @override
  String get ccFinSubtitle => 'Merchant commissions and period close';

  @override
  String get ccFinTabAgencies => 'Agency shares';

  @override
  String get ccFinTabShops => 'Merchant settlements';

  @override
  String get ccFinTitle => 'Finance & Settlements';

  @override
  String get ccFinTotalsTitle => 'Period totals';

  @override
  String get ccFinUnknownAgency => 'No agency';

  @override
  String get ccGreetingDay => 'Good afternoon';

  @override
  String get ccGreetingEvening => 'Good evening';

  @override
  String get ccGreetingMorning => 'Good morning';

  @override
  String get ccKpiAgencies => 'Agencies';

  @override
  String get ccKpiDau => 'Daily active users';

  @override
  String get ccKpiOpenMessages => 'Unread agency messages';

  @override
  String get ccKpiShops => 'Active shops';

  @override
  String get ccKpiTx30 => 'Transactions (30 days)';

  @override
  String get ccKpiUsers => 'Users';

  @override
  String get ccKpiVolume30 => '30-day transaction volume';

  @override
  String get ccLoadFailed => 'Data could not be loaded';

  @override
  String get ccLogout => 'Log out';

  @override
  String get ccLogoutConfirm => 'Are you sure you want to log out?';

  @override
  String get ccLoyActionError =>
      'The action couldn\'t be completed. Please try again.';

  @override
  String get ccLoyAllAgencies => 'All agencies';

  @override
  String get ccLoyBulkAction => 'Bulk Points';

  @override
  String get ccLoyBulkAgency => 'Agency';

  @override
  String get ccLoyBulkAllTrips => 'All guests of the agency';

  @override
  String ccLoyBulkConfirm(int count) {
    return 'Grant to $count guests';
  }

  @override
  String get ccLoyBulkNoTargets => 'No guests match the selection.';

  @override
  String ccLoyBulkOk(int count, int points) {
    return '$points points granted to $count guests.';
  }

  @override
  String ccLoyBulkPartial(int done, int total) {
    return 'Bulk grant stopped: $done/$total guests received points. Try again for the rest.';
  }

  @override
  String get ccLoyBulkPickAgency => 'Choose an agency first.';

  @override
  String get ccLoyBulkPointsEach => 'Points per guest';

  @override
  String ccLoyBulkPreview(int count, String total) {
    return '$total points in total will go to $count guests.';
  }

  @override
  String get ccLoyBulkRunning => 'Granting points…';

  @override
  String get ccLoyBulkTitle => 'Bulk grant points';

  @override
  String get ccLoyBulkTrip => 'Trip (optional)';

  @override
  String get ccLoyDeduct => 'Deduct Points';

  @override
  String get ccLoyDeductTitle => 'Deduct points';

  @override
  String ccLoyDeductedOk(int points) {
    return '$points points deducted.';
  }

  @override
  String get ccLoyEarned => 'Earned';

  @override
  String get ccLoyFeedEmpty => 'No entries match this filter.';

  @override
  String get ccLoyFeedTitle => 'Recent adjustments';

  @override
  String get ccLoyFilterAll => 'All';

  @override
  String get ccLoyFilterBulk => 'Bulk';

  @override
  String get ccLoyFilterDeducted => 'Deducted';

  @override
  String get ccLoyFilterGranted => 'Granted';

  @override
  String get ccLoyFilterReverted => 'Reversed';

  @override
  String get ccLoyGrant => 'Grant Points';

  @override
  String get ccLoyGrantTitle => 'Grant gift points';

  @override
  String ccLoyGrantedOk(int points) {
    return '$points points granted.';
  }

  @override
  String ccLoyGuestCount(int count) {
    return '$count guests';
  }

  @override
  String get ccLoyGuestsTitle => 'Guests';

  @override
  String get ccLoyHistory => 'Points history';

  @override
  String get ccLoyHistoryEmpty => 'No points activity yet.';

  @override
  String get ccLoyKpiCirculation => 'Points in circulation';

  @override
  String get ccLoyKpiGrantedMonth => 'Granted manually this month';

  @override
  String get ccLoyKpiRedeemed => 'Value redeemed with points';

  @override
  String get ccLoyKpiSpent => 'Points spent at shops';

  @override
  String get ccLoyLoadError => 'Loyalty data couldn\'t be loaded.';

  @override
  String get ccLoyManual => 'Manual';

  @override
  String get ccLoyNoGuests => 'No matching guests.';

  @override
  String get ccLoyPointsInvalid => 'Enter between 1 and 100,000 points.';

  @override
  String get ccLoyPointsUnit => 'pts';

  @override
  String get ccLoyReadOnly => 'Read only';

  @override
  String get ccLoyReason => 'Reason (required)';

  @override
  String get ccLoyReasonHintBulk => 'e.g. Ramadan campaign';

  @override
  String get ccLoyReasonHintDeduct => 'e.g. Correction of a wrong entry';

  @override
  String get ccLoyReasonHintGrant => 'e.g. Welcome gift';

  @override
  String get ccLoyReasonRequired =>
      'Please enter a reason (at least 3 characters).';

  @override
  String get ccLoyRefresh => 'Refresh';

  @override
  String get ccLoyRevertAction => 'Reverse';

  @override
  String ccLoyRevertBody(String guest, String points, String opposite) {
    return 'The $points points entry for $guest will be reversed with an opposite entry of $opposite. The original isn\'t deleted.';
  }

  @override
  String ccLoyRevertDefaultReason(String reason) {
    return 'Reversal: $reason';
  }

  @override
  String get ccLoyRevertTitle => 'Reverse points entry';

  @override
  String get ccLoyRevertedOk => 'Points entry reversed.';

  @override
  String get ccLoySearchHint => 'Search name, ID number or agency';

  @override
  String ccLoyShowMore(int count) {
    return 'Show $count more';
  }

  @override
  String get ccLoySpentShort => 'Spent';

  @override
  String get ccLoySubtitle => 'Grant, deduct, reverse';

  @override
  String get ccLoyTagBulk => 'Bulk';

  @override
  String get ccLoyTagCancelled => 'Cancelled';

  @override
  String get ccLoyTagRevert => 'Reversal';

  @override
  String get ccLoyTagReverted => 'Reversed';

  @override
  String get ccLoyTitle => 'Loyalty Points';

  @override
  String ccLoyWorth(String value) {
    return '≈ worth $value';
  }

  @override
  String get ccModAgencies => 'Agencies';

  @override
  String get ccModAgenciesDesc => 'Agency list, people and management';

  @override
  String get ccModAgenciesReadDesc => 'View agencies and people';

  @override
  String get ccModAnalytics => 'Analytics';

  @override
  String get ccModAnalyticsDesc => 'Growth, activity and trends';

  @override
  String get ccModAudit => 'Audit Log';

  @override
  String get ccModAuditDesc => 'Who did what, and when';

  @override
  String get ccModCoupons => 'Campaigns & Coupons';

  @override
  String get ccModCouponsDesc => 'Create coupons, track usage';

  @override
  String get ccModFinance => 'Finance & Settlements';

  @override
  String get ccModFinanceDesc => 'Commission, settlements and payouts';

  @override
  String get ccModHatim => 'Group Hatim Moderation';

  @override
  String get ccModHatimDesc => 'Review groups, delete, clean orphan parts';

  @override
  String get ccModLoyalty => 'Loyalty & Points';

  @override
  String get ccModLoyaltyDesc => 'Point balances and adjustments';

  @override
  String get ccModMerchantPerf => 'Merchant Performance';

  @override
  String get ccModMerchantPerfDesc =>
      'Revenue, points and satisfaction ranking';

  @override
  String get ccModMerchantReports => 'Merchant Reports';

  @override
  String get ccModMerchantReportsDesc => 'Purchases and cancellations';

  @override
  String get ccModMessages => 'Agency Messages';

  @override
  String get ccModMessagesDesc => 'Messaging and announcements with agencies';

  @override
  String get ccModPackages => 'Package Approvals';

  @override
  String get ccModPackagesDesc =>
      'Individual packages, Full approvals and durations';

  @override
  String get ccModPlatformSettings => 'Platform Settings';

  @override
  String get ccModPlatformSettingsDesc =>
      'Demo payments, maintenance, updates and support contacts';

  @override
  String get ccModPrayer => 'Prayer Times';

  @override
  String get ccModPrayerDesc => 'Edit Makkah and Madinah times';

  @override
  String get ccModReviews => 'Review Moderation';

  @override
  String get ccModReviewsDesc => 'Moderate shop ratings and comments';

  @override
  String get ccModRisk => 'Risk & Fraud';

  @override
  String get ccModRiskDesc => 'Suspicious activity alerts';

  @override
  String get ccModShops => 'Partner Shops';

  @override
  String get ccModShopsDesc => 'Shops, discounts and merchant accounts';

  @override
  String get ccModStaff => 'Staff & Roles';

  @override
  String get ccModStaffDesc => 'Support and finance accounts';

  @override
  String get ccModerActive => 'In progress';

  @override
  String get ccModerCompleted => 'Completed';

  @override
  String ccModerCreated(String date) {
    return 'Created: $date';
  }

  @override
  String get ccModerDelete => 'Delete group';

  @override
  String ccModerDeleteBody(String name) {
    return 'The group \"$name\" and all its parts will be permanently deleted.';
  }

  @override
  String get ccModerDeleteError => 'The group could not be deleted';

  @override
  String get ccModerDeleteTitle => 'Delete this group?';

  @override
  String get ccModerDeletedOk => 'Group deleted';

  @override
  String get ccModerEmpty => 'No groups found';

  @override
  String get ccModerLoadError => 'Groups could not be loaded';

  @override
  String ccModerMembers(int count) {
    return '$count members';
  }

  @override
  String get ccModerOrphanBody =>
      'Remaining part records of deleted groups will be scanned and deleted.';

  @override
  String get ccModerOrphanBtn => 'Clean orphan parts';

  @override
  String ccModerOrphanDone(int count, int groups) {
    return '$count parts deleted, $groups groups scanned';
  }

  @override
  String get ccModerOrphanError => 'Cleanup could not be completed';

  @override
  String get ccModerOrphanNoPerm =>
      'A server rule is required for the scan (parts collection group read permission).';

  @override
  String get ccModerOrphanNone => 'No orphan parts';

  @override
  String get ccModerOrphanTitle => 'Clean orphan parts?';

  @override
  String ccModerOwner(String name) {
    return 'Owner: $name';
  }

  @override
  String get ccModerPrivate => 'Agency only';

  @override
  String ccModerProgress(int done, int total) {
    return '$done/$total parts';
  }

  @override
  String get ccModerPublic => 'Public';

  @override
  String ccModerRound(int round) {
    return 'Round $round';
  }

  @override
  String get ccModerSearchHint => 'Search by group name';

  @override
  String get ccModerSubtitle => 'All hatim groups';

  @override
  String get ccModerTitle => 'Group Hatim Moderation';

  @override
  String get ccMsgAddTitle => 'Add title';

  @override
  String get ccMsgAgencies => 'Agencies';

  @override
  String get ccMsgAllAgencies => 'All agencies';

  @override
  String get ccMsgAllRead => 'All read';

  @override
  String get ccMsgBodyHint => 'Type a message…';

  @override
  String get ccMsgBodyLabel => 'Message text';

  @override
  String get ccMsgBodyRequired => 'Message text cannot be empty.';

  @override
  String get ccMsgBroadcast => 'Broadcast';

  @override
  String ccMsgBroadcastConfirm(int count) {
    return 'The message will be sent to $count agencies. Continue?';
  }

  @override
  String ccMsgBroadcastDone(int count) {
    return 'Message sent to $count agencies.';
  }

  @override
  String ccMsgBroadcastSend(int count) {
    return 'Send to $count agencies';
  }

  @override
  String get ccMsgBroadcastSub => 'Send to several agencies at once';

  @override
  String get ccMsgBroadcastTag => 'Broadcast';

  @override
  String get ccMsgCancel => 'Cancel';

  @override
  String get ccMsgClearSelection => 'Clear';

  @override
  String get ccMsgEmptyThread => 'No messages yet. Write the first one.';

  @override
  String get ccMsgFilterAll => 'All';

  @override
  String get ccMsgFilterUnread => 'Unread';

  @override
  String get ccMsgHq => 'Headquarters';

  @override
  String get ccMsgHqSub => 'Umre Rehberim Head Office';

  @override
  String ccMsgInboxBannerBody(int count) {
    return 'You have $count unread messages';
  }

  @override
  String get ccMsgInboxBannerTitle => 'New message from HQ';

  @override
  String get ccMsgLoadFailed => 'Messages could not be loaded.';

  @override
  String get ccMsgMenu => 'HQ Messages';

  @override
  String get ccMsgMenuSub => 'Chat with headquarters';

  @override
  String get ccMsgMessage => 'Message';

  @override
  String get ccMsgNoAgencies => 'No agencies found.';

  @override
  String get ccMsgNoAgency => 'No agency is linked to your account.';

  @override
  String get ccMsgNoMessagesYet => 'No messages yet';

  @override
  String get ccMsgNoRecipients => 'Select at least one agency.';

  @override
  String get ccMsgPreview => 'Preview';

  @override
  String get ccMsgRecipients => 'Recipients';

  @override
  String get ccMsgSearch => 'Search agencies…';

  @override
  String get ccMsgSelectAll => 'Select all';

  @override
  String get ccMsgSelectedAgencies => 'Selected agencies';

  @override
  String ccMsgSelectedCount(int count) {
    return '$count agencies selected';
  }

  @override
  String get ccMsgSend => 'Send';

  @override
  String get ccMsgSendFailed => 'Message could not be sent.';

  @override
  String get ccMsgSent => 'Message sent.';

  @override
  String get ccMsgSubtitle => 'HQ ↔ Agency communication';

  @override
  String get ccMsgTemplates => 'Quick templates';

  @override
  String get ccMsgTitle => 'Agency Messages';

  @override
  String get ccMsgTitleHint => 'Title (optional)';

  @override
  String get ccMsgTitleLabel => 'Title';

  @override
  String get ccMsgToday => 'Today';

  @override
  String get ccMsgTplCampaign => 'Campaign announcement';

  @override
  String get ccMsgTplCampaignBody =>
      'Dear partner, we have launched a new points campaign for your guests across our partner merchant network. Check your panel for details and let your guests know.';

  @override
  String get ccMsgTplCampaignTitle => 'New campaign';

  @override
  String get ccMsgTplDocument => 'Document request';

  @override
  String get ccMsgTplDocumentBody =>
      'Dear partner, please send us your current TÜRSAB certificate and tax certificate as soon as possible so we can update your records.';

  @override
  String get ccMsgTplDocumentTitle => 'Document request';

  @override
  String get ccMsgTplMaintenance => 'System maintenance';

  @override
  String get ccMsgTplMaintenanceBody =>
      'Dear partner, scheduled maintenance will be performed on our system. Brief interruptions may occur in the app during this time. Thank you for your understanding.';

  @override
  String get ccMsgTplMaintenanceTitle => 'Scheduled maintenance';

  @override
  String get ccMsgTplPayment => 'Payment reminder';

  @override
  String get ccMsgTplPaymentBody =>
      'Dear partner, the due date for this period\'s service fee is approaching. Please complete your payment on time; if you have already paid, kindly disregard this message.';

  @override
  String get ccMsgTplPaymentTitle => 'Payment reminder';

  @override
  String get ccMsgTplWelcome => 'Welcome';

  @override
  String get ccMsgTplWelcomeBody =>
      'Dear partner, welcome to the Umre Rehberim family. You can manage your guests, trips and hotels from your panel. Feel free to write to us here with any questions.';

  @override
  String get ccMsgTplWelcomeTitle => 'Welcome to Umre Rehberim';

  @override
  String ccMsgUnreadTotal(int count) {
    return '$count unread';
  }

  @override
  String get ccMsgYesterday => 'Yesterday';

  @override
  String get ccMsgYou => 'You';

  @override
  String get ccNoRecent => 'No records yet';

  @override
  String get ccPeriodAll => 'All';

  @override
  String get ccPeriodMonth => '30 days';

  @override
  String get ccPeriodQuarter => '90 days';

  @override
  String get ccPeriodToday => 'Today';

  @override
  String get ccPeriodWeek => '7 days';

  @override
  String get ccPeriodYear => '1 year';

  @override
  String get ccPermAgencies => 'Agencies and people';

  @override
  String get ccPermAgencyEdit => 'Add / edit agencies';

  @override
  String get ccPermAudit => 'Audit log';

  @override
  String get ccPermCoupons => 'Campaigns and coupons';

  @override
  String get ccPermFinance => 'Finance and settlements';

  @override
  String get ccPermFull => 'Full';

  @override
  String get ccPermLoyalty => 'Point adjustments';

  @override
  String get ccPermMessages => 'Agency messages';

  @override
  String get ccPermNone => 'None';

  @override
  String get ccPermRead => 'Read';

  @override
  String get ccPermReports => 'Merchant reports and performance';

  @override
  String get ccPermRisk => 'Risk and fraud';

  @override
  String get ccPermShops => 'Shop and merchant management';

  @override
  String get ccPermStaff => 'Staff management';

  @override
  String get ccPkgActionError =>
      'The action couldn\'t be completed. Please try again.';

  @override
  String get ccPkgApprove => 'Approve';

  @override
  String get ccPkgApproveHint =>
      'Enter the travel dates; the user\'s home countdown will use them.';

  @override
  String get ccPkgApproveTitle => 'Approve Full package';

  @override
  String get ccPkgApprovedOk => 'Package approved.';

  @override
  String get ccPkgApprovedSub =>
      'Your dates were set by the admin · contact us to change';

  @override
  String get ccPkgCheckIn => 'Check-in';

  @override
  String get ccPkgCheckOut => 'Check-out';

  @override
  String get ccPkgConfirm => 'Confirm';

  @override
  String get ccPkgDatesOrder => 'Check-out can\'t be before check-in.';

  @override
  String get ccPkgDatesPast =>
      'Dates are in the past; the package must end after today.';

  @override
  String get ccPkgDatesRequired =>
      'Enter check-in and check-out for at least one city.';

  @override
  String get ccPkgEditDates => 'Edit dates';

  @override
  String get ccPkgEmail => 'Email';

  @override
  String get ccPkgEmptyActive => 'No active packages.';

  @override
  String get ccPkgEmptyExpired => 'No expired packages.';

  @override
  String get ccPkgEmptyPending => 'No packages awaiting approval.';

  @override
  String get ccPkgExtend => 'Extend 30 days';

  @override
  String ccPkgExtendBody(String name) {
    return '$name\'s package will be extended by 30 days.';
  }

  @override
  String get ccPkgExtendTitle => 'Extend duration?';

  @override
  String get ccPkgExtendedOk => 'Duration extended.';

  @override
  String get ccPkgFilterBireysel => 'Individual';

  @override
  String get ccPkgFullActiveNote =>
      'Your Full Umrah Package is in progress; contact us for changes.';

  @override
  String get ccPkgGone => 'The user cancelled the package; list refreshed.';

  @override
  String get ccPkgHotel => 'Hotel (optional)';

  @override
  String get ccPkgKpiActive => 'Active';

  @override
  String get ccPkgKpiExpired => 'Expired';

  @override
  String get ccPkgKpiPending => 'Pending';

  @override
  String get ccPkgKpiTotal => 'Total';

  @override
  String get ccPkgLoadError => 'Packages couldn\'t be loaded.';

  @override
  String get ccPkgMedine => 'Madinah';

  @override
  String get ccPkgMekke => 'Makkah';

  @override
  String get ccPkgPickDate => 'Pick date';

  @override
  String get ccPkgRevoke => 'Cancel package';

  @override
  String ccPkgRevokeBody(String name) {
    return '$name\'s package is removed and the user returns to the free plan.';
  }

  @override
  String get ccPkgRevokeTitle => 'Cancel this package?';

  @override
  String get ccPkgRevokedOk => 'Package cancelled.';

  @override
  String get ccPkgSearch => 'Search name or email';

  @override
  String get ccPkgStatusActive => 'Active';

  @override
  String get ccPkgStatusExpired => 'Expired';

  @override
  String get ccPkgStatusPending => 'Pending';

  @override
  String get ccPkgSubtitle => 'Individual user packages';

  @override
  String get ccPkgTitle => 'Package Approvals';

  @override
  String get ccPkgUnknownUser => 'Unknown user';

  @override
  String ccPkgUntil(String date) {
    return 'Until: $date';
  }

  @override
  String get ccPkgUserNoPackage => 'No package';

  @override
  String get ccPkgUserOpen => 'Open in Package Approvals';

  @override
  String get ccPkgUserPackage => 'Package';

  @override
  String get ccPrayerAksam => 'Maghrib';

  @override
  String get ccPrayerDate => 'Date';

  @override
  String get ccPrayerDay => 'Day';

  @override
  String get ccPrayerGunes => 'Sunrise';

  @override
  String get ccPrayerHicri => 'Hijri date';

  @override
  String get ccPrayerIkindi => 'Asr';

  @override
  String get ccPrayerImsak => 'Fajr (Imsak)';

  @override
  String get ccPrayerInvalid => 'Enter times as HH:mm (e.g. 05:12)';

  @override
  String get ccPrayerLoadError => 'Times could not be loaded';

  @override
  String get ccPrayerMedine => 'Madinah';

  @override
  String get ccPrayerMekke => 'Makkah';

  @override
  String get ccPrayerNewDoc =>
      'No record for this date; saving will create a new one.';

  @override
  String get ccPrayerOgle => 'Dhuhr';

  @override
  String get ccPrayerSave => 'Save';

  @override
  String get ccPrayerSaveError => 'Times could not be saved';

  @override
  String get ccPrayerSaved => 'Times saved';

  @override
  String get ccPrayerSubtitle => 'Daily times for Makkah and Madinah';

  @override
  String get ccPrayerTitle => 'Prayer Times';

  @override
  String get ccPrayerYatsi => 'Isha';

  @override
  String get ccReadOnly => 'Read only';

  @override
  String get ccReviewComplaint => 'Complaint';

  @override
  String get ccReviewDelete => 'Delete';

  @override
  String ccReviewDeleteBody(String shop) {
    return 'This review of \"$shop\" will be permanently deleted.';
  }

  @override
  String get ccReviewDeleteError => 'The review could not be deleted';

  @override
  String get ccReviewDeleteTitle => 'Delete this review?';

  @override
  String get ccReviewDeletedOk => 'Review deleted';

  @override
  String get ccReviewEmpty => 'No reviews found';

  @override
  String get ccReviewFilterAll => 'All';

  @override
  String get ccReviewFilterComment => 'With comment';

  @override
  String get ccReviewFilterLow => 'Low rating';

  @override
  String get ccReviewLoadError => 'Reviews could not be loaded';

  @override
  String get ccReviewNoComment => 'No comment';

  @override
  String get ccReviewSubtitle => 'Shop ratings and comments';

  @override
  String get ccReviewTitle => 'Review Moderation';

  @override
  String get ccReviewUnknownShop => 'Unknown shop';

  @override
  String get ccRiskActionError => 'The operation failed';

  @override
  String get ccRiskAlarmsTitle => 'Alarms';

  @override
  String get ccRiskAmount => 'Amount';

  @override
  String get ccRiskCancel => 'Back';

  @override
  String get ccRiskCancelReasonDefault => 'Risk review';

  @override
  String get ccRiskCancelReasonHint => 'Cancellation reason';

  @override
  String get ccRiskCancelTitle => 'Cancel transaction';

  @override
  String get ccRiskCancelTx => 'Cancel transaction';

  @override
  String get ccRiskCancelled => 'Transaction cancelled';

  @override
  String get ccRiskCouponActive => 'Active';

  @override
  String ccRiskCouponInfo(String value, int used, String max) {
    return 'Discount $value · $used/$max uses';
  }

  @override
  String get ccRiskCouponPassive => 'Inactive';

  @override
  String get ccRiskEmpty => 'No alarms match the filter';

  @override
  String get ccRiskEntities => 'Involved entities';

  @override
  String get ccRiskEntityAdmin => 'Admin';

  @override
  String get ccRiskEntityCoupon => 'Coupon';

  @override
  String get ccRiskEntityGuest => 'Guest';

  @override
  String get ccRiskEntityShop => 'Shop';

  @override
  String get ccRiskEvidence => 'Evidence';

  @override
  String ccRiskExpAdminGrants(String admin, String points) {
    return '$admin granted a total of $points points within 7 days.';
  }

  @override
  String ccRiskExpBasket(String amount, String avg) {
    return 'Transaction of $amount; the shop\'s average basket is $avg (over 5×).';
  }

  @override
  String ccRiskExpBigAmount(String amount) {
    return 'Single transaction of $amount; reaches 80% of the maximum (20,000 SAR).';
  }

  @override
  String ccRiskExpBigGrant(String guest, String points) {
    return '$points points were granted to $guest in a single entry.';
  }

  @override
  String ccRiskExpBigPoints(String points) {
    return '$points points were spent in a single transaction.';
  }

  @override
  String ccRiskExpCancelRate(String shop, int rate, int count) {
    return '$shop cancelled $rate% of $count transactions in the last 90 days.';
  }

  @override
  String ccRiskExpConcentration(String guest, String shop, int share) {
    return '$guest alone accounts for $share% of $shop\'s revenue.';
  }

  @override
  String ccRiskExpCouponUnlimited(String code, int count) {
    return 'Coupon $code has no usage limit and was used $count times.';
  }

  @override
  String ccRiskExpCouponValue(String code, String value) {
    return 'Coupon $code gives a $value discount.';
  }

  @override
  String ccRiskExpFrequentGrants(String guest, int count) {
    return 'Points were granted to $guest $count times within 7 days.';
  }

  @override
  String ccRiskExpNight(String time) {
    return 'The transaction was made at night ($time).';
  }

  @override
  String ccRiskExpPointsBurn(String guest, String spent, String earned) {
    return '$guest spent $spent points in 90 days but earned only $earned in the same period.';
  }

  @override
  String ccRiskExpQuickCancel(int minutes) {
    return 'The transaction was cancelled $minutes minutes after creation.';
  }

  @override
  String get ccRiskExpSameAgency =>
      'The guest and the shop belong to the same agency.';

  @override
  String ccRiskExpVelocity(String guest, String shop, int count) {
    return '$guest made $count transactions at $shop within 24 hours.';
  }

  @override
  String get ccRiskFilterAll => 'All';

  @override
  String get ccRiskFilterSeverity => 'Severity';

  @override
  String get ccRiskFilterStatus => 'Status';

  @override
  String get ccRiskFilterType => 'Type';

  @override
  String get ccRiskKpiOpen => 'Unreviewed';

  @override
  String get ccRiskLoadError => 'Risk data could not be loaded';

  @override
  String get ccRiskNoteHint => 'Review note';

  @override
  String ccRiskPointsUnit(String points) {
    return '$points points';
  }

  @override
  String get ccRiskRefresh => 'Refresh';

  @override
  String get ccRiskReview => 'Review';

  @override
  String get ccRiskReviewSaved => 'Review saved';

  @override
  String ccRiskReviewedBy(String name, String date) {
    return '$name · $date';
  }

  @override
  String get ccRiskReviewsEmpty => 'No reviews yet';

  @override
  String get ccRiskReviewsTitle => 'Review records';

  @override
  String get ccRiskSaveReview => 'Save review';

  @override
  String get ccRiskSevHigh => 'High';

  @override
  String get ccRiskSevLow => 'Low';

  @override
  String get ccRiskSevMedium => 'Medium';

  @override
  String get ccRiskStatusConfirmed => 'Confirmed';

  @override
  String get ccRiskStatusFalse => 'False alarm';

  @override
  String get ccRiskStatusNew => 'New';

  @override
  String get ccRiskStatusReviewed => 'Reviewed';

  @override
  String get ccRiskSubtitle => 'Rule-based alarms for the last 90 days';

  @override
  String get ccRiskSupportNote =>
      'Transaction-based alarms (purchase, points and coupon data) are computed only for the super admin. You can see the reviews below.';

  @override
  String get ccRiskTime => 'Time';

  @override
  String get ccRiskTitle => 'Risk & Fraud';

  @override
  String get ccRiskTxCancelledBadge => 'Cancelled';

  @override
  String get ccRiskTypeAdminGrants => 'Admin grant volume';

  @override
  String get ccRiskTypeBasket => 'Unusual basket';

  @override
  String get ccRiskTypeBigAmount => 'High-value transaction';

  @override
  String get ccRiskTypeBigGrant => 'Large points grant';

  @override
  String get ccRiskTypeBigPoints => 'Large points spend';

  @override
  String get ccRiskTypeCancelRate => 'High cancellation rate';

  @override
  String get ccRiskTypeConcentration => 'Revenue concentration';

  @override
  String get ccRiskTypeCouponUnlimited => 'Unlimited coupon, heavy use';

  @override
  String get ccRiskTypeCouponValue => 'High-value coupon';

  @override
  String get ccRiskTypeFrequentGrants => 'Frequent points grants';

  @override
  String get ccRiskTypeNight => 'Night transaction';

  @override
  String get ccRiskTypePointsBurn => 'Fast points burn';

  @override
  String get ccRiskTypeQuickCancel => 'Quick cancellation';

  @override
  String get ccRiskTypeVelocity => 'Transaction velocity';

  @override
  String get ccRoleFinanceDesc =>
      'Settlements, merchant reports, points and coupons (read)';

  @override
  String get ccRoleSuperDesc => 'All modules, full access';

  @override
  String get ccRoleSupportDesc => 'Agencies (read), messages, risk';

  @override
  String get ccSectionModules => 'Modules';

  @override
  String get ccSectionOverview => 'Overview';

  @override
  String get ccSectionRecent => 'Recent Activity';

  @override
  String get ccSeeAll => 'See all';

  @override
  String get ccSetAppSection => 'App';

  @override
  String get ccSetCancel => 'Cancel';

  @override
  String get ccSetConfirm => 'Confirm';

  @override
  String get ccSetDemoOff => 'Demo off: real payments';

  @override
  String get ccSetDemoOn => 'Demo on: no payment taken';

  @override
  String get ccSetDemoPayments => 'Demo payments';

  @override
  String get ccSetDemoPaymentsDesc =>
      'When on, individual users get packages without paying. Turn off once PayTR is connected.';

  @override
  String get ccSetEmail1 => 'Email 1';

  @override
  String get ccSetEmail2 => 'Email 2';

  @override
  String get ccSetInvalidEmail => 'Enter a valid email.';

  @override
  String get ccSetInvalidPhone => 'Enter a valid phone number.';

  @override
  String get ccSetInvalidUrl => 'Enter a valid http/https link.';

  @override
  String get ccSetLoadError => 'Settings could not be loaded.';

  @override
  String get ccSetMaintConfirmBody =>
      'After saving, all users except super admins will see the maintenance screen.';

  @override
  String get ccSetMaintConfirmTitle => 'Turn on maintenance mode?';

  @override
  String get ccSetMaintenance => 'Maintenance mode';

  @override
  String get ccSetMaintenanceDesc =>
      'When on, everyone except super admins sees the maintenance screen.';

  @override
  String get ccSetMaintenanceMsg => 'Maintenance message (max 300 characters)';

  @override
  String get ccSetMinBuild => 'Minimum build number';

  @override
  String ccSetMinBuildHint(int build) {
    return 'Current build: $build. Older builds are forced to update; empty/0 = off.';
  }

  @override
  String get ccSetNoChange => 'No changes.';

  @override
  String get ccSetPayConfirmOff =>
      'Demo payments will be turned OFF. Real payment will be required for packages.';

  @override
  String get ccSetPayConfirmOn =>
      'Demo payments will be turned ON. Individual users can get packages without paying.';

  @override
  String get ccSetPayConfirmTitle => 'Change demo payments?';

  @override
  String get ccSetPaymentsSection => 'Payments';

  @override
  String get ccSetPhone1 => 'Phone 1';

  @override
  String get ccSetPhone2 => 'Phone 2';

  @override
  String get ccSetSave => 'Save';

  @override
  String get ccSetSaveError => 'Could not save. Try again.';

  @override
  String get ccSetSaved => 'Settings saved.';

  @override
  String get ccSetSubtitle => 'Payments, maintenance and contacts';

  @override
  String get ccSetSupportHint => 'Empty fields fall back to the app defaults.';

  @override
  String get ccSetSupportSection => 'Support contacts';

  @override
  String get ccSetTitle => 'Platform Settings';

  @override
  String ccSetUpdateConfirmBody(int build) {
    return 'Minimum build will be $build. Everyone on older builds stays on the update screen (except super admins).';
  }

  @override
  String get ccSetUpdateConfirmTitle => 'Force update?';

  @override
  String get ccSetUpdateUrl => 'Update link (Play Store/APK)';

  @override
  String get ccSetWhatsapp => 'WhatsApp number';

  @override
  String get ccStaffActionFailed => 'The action could not be completed';

  @override
  String get ccStaffAdd => 'Add staff';

  @override
  String get ccStaffChangeRole => 'Change role';

  @override
  String ccStaffCount(int count) {
    return '$count people';
  }

  @override
  String get ccStaffCreate => 'Create account';

  @override
  String get ccStaffCreateFailed => 'Account could not be created';

  @override
  String get ccStaffCreated => 'Staff account created';

  @override
  String get ccStaffDelete => 'Delete staff';

  @override
  String ccStaffDeleteConfirm(String name) {
    return 'Delete $name? The account will lose panel access.';
  }

  @override
  String get ccStaffDeleted => 'Staff deleted';

  @override
  String get ccStaffEmpty => 'No support or finance staff yet';

  @override
  String get ccStaffList => 'Staff';

  @override
  String get ccStaffLoginHint =>
      'Staff sign in from the \"Admin\" tab with their ID number.';

  @override
  String get ccStaffMatrix => 'Permission Matrix';

  @override
  String get ccStaffName => 'Full name';

  @override
  String get ccStaffNameMissing => 'Enter the full name';

  @override
  String get ccStaffPhone => 'Phone';

  @override
  String get ccStaffRole => 'Role';

  @override
  String get ccStaffRoleChanged => 'Role updated';

  @override
  String get ccStaffSubtitle => 'Platform roles and permissions';

  @override
  String get ccStaffTc => 'ID number';

  @override
  String get ccStaffTcExists => 'A user with this ID number already exists';

  @override
  String get ccStaffTcInvalid => 'ID number must be 11 digits';

  @override
  String get ccStaffTitle => 'Staff & Roles';

  @override
  String get ccStaffYou => 'You';

  @override
  String get ccSubtitle => 'The whole platform at a glance';

  @override
  String get ccTitle => 'Control Center';

  @override
  String get ccUsrActive24 => 'Active in 24h';

  @override
  String get ccUsrActive30 => 'Active in 30 days';

  @override
  String get ccUsrAgency => 'Agency';

  @override
  String get ccUsrAll => 'All';

  @override
  String ccUsrCount(int count) {
    return '$count users';
  }

  @override
  String get ccUsrCreated => 'Registered';

  @override
  String get ccUsrDau => 'Active today';

  @override
  String get ccUsrEmpty => 'No users match this filter';

  @override
  String get ccUsrLastActive => 'Last active';

  @override
  String get ccUsrLoadFailed => 'Could not load users';

  @override
  String get ccUsrMau => 'Active 30 days';

  @override
  String get ccUsrNeverActive => 'Not active yet';

  @override
  String get ccUsrNew30 => 'New in 30 days';

  @override
  String get ccUsrNoAgency => 'No agency';

  @override
  String get ccUsrOpenAgency => 'Open agency';

  @override
  String get ccUsrPhone => 'Phone';

  @override
  String get ccUsrRole => 'Role';

  @override
  String get ccUsrSearch => 'Search name, ID or phone';

  @override
  String get ccUsrSubtitle => 'Entire platform';

  @override
  String get ccUsrTc => 'ID number';

  @override
  String get ccUsrTitle => 'Users';

  @override
  String get ccUsrTotal => 'Total';

  @override
  String get commonCancel => 'Cancel';

  @override
  String get commonClose => 'Close';

  @override
  String get commonComingSoon => 'Coming soon';

  @override
  String get commonDelete => 'Delete';

  @override
  String get commonEdit => 'Edit';

  @override
  String get commonError => 'An error occurred.';

  @override
  String get commonLanguage => 'Language';

  @override
  String get commonLanguageChanged => 'Language changed';

  @override
  String get commonLoading => 'Loading...';

  @override
  String get commonMecca => 'Mecca';

  @override
  String get commonMedina => 'Medina';

  @override
  String get commonNo => 'No';

  @override
  String get commonOk => 'OK';

  @override
  String get commonRetry => 'Try Again';

  @override
  String get commonSave => 'Save';

  @override
  String get commonSearch => 'Search';

  @override
  String get commonSelectLanguage => 'Select language';

  @override
  String get commonYes => 'Yes';

  @override
  String get coreAccountExists =>
      'An account with this ID number already exists.';

  @override
  String get coreAnnouncement => 'Announcement';

  @override
  String get coreAudioLoadFailed =>
      'Audio could not be loaded. Check your internet connection.';

  @override
  String coreAyahCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count verses',
      one: '1 verse',
    );
    return '$_temp0';
  }

  @override
  String get coreBackgroundLocationMessage =>
      'So your guide can see you even when the app is closed, choose \"Allow all the time\" on the next screen.';

  @override
  String get coreBackgroundLocationTitle => 'Background Location';

  @override
  String get coreChannelAnnouncements => 'Announcements';

  @override
  String get coreChannelAnnouncementsDesc =>
      'Announcements from your agency and guide';

  @override
  String get coreChannelLocation => 'Location Sharing';

  @override
  String get coreChannelLocationDesc =>
      'Shown while your location is shared with your guide';

  @override
  String get coreChannelQuranDesc => 'Quran audio playback controls';

  @override
  String get coreChannelRadio => 'Radio';

  @override
  String get coreChannelRadioDesc =>
      'Notification shown while a radio broadcast is active.';

  @override
  String get coreContinue => 'Continue';

  @override
  String get coreCurrencyEur => 'Euro';

  @override
  String get coreCurrencyGbp => 'British Pound';

  @override
  String get coreCurrencySar => 'Saudi Riyal';

  @override
  String get coreCurrencyTry => 'Turkish Lira';

  @override
  String get coreCurrencyUsd => 'US Dollar';

  @override
  String get coreGoToSettings => 'Open Settings';

  @override
  String coreHoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hours ago',
      one: '1 hour ago',
    );
    return '$_temp0';
  }

  @override
  String get coreInvalidTokenResponse => 'Invalid token response.';

  @override
  String get coreJustNow => 'Just now';

  @override
  String get coreLocationPermissionMessage =>
      'Location permission is needed to share your location with your guide. You can grant it from the Settings page.';

  @override
  String get coreLocationPermissionRestart =>
      'Please enable location permission and restart the app.';

  @override
  String get coreLocationPermissionTitle => 'Location Permission Required';

  @override
  String get coreLocationServiceOffMessage =>
      'To let your guide see you, you need to turn on your phone\'s location (GPS).';

  @override
  String get coreLocationServiceOffSnack =>
      'Location services are off. Please turn on your phone\'s location (GPS).';

  @override
  String get coreLocationServiceOffTitle => 'Location Services Off';

  @override
  String get coreLocationServiceOpen => 'Turn On Location';

  @override
  String get coreLocationSharingNotification =>
      'Your location is being shared with your guide';

  @override
  String coreMinutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutes ago',
      one: '1 minute ago',
    );
    return '$_temp0';
  }

  @override
  String get coreNavCalendar => 'Calendar';

  @override
  String get coreNavHome => 'Home';

  @override
  String get coreNavInfo => 'Info';

  @override
  String get coreNavPrayers => 'Prayers';

  @override
  String get coreNavProfile => 'Profile';

  @override
  String get coreNotNow => 'Not Now';

  @override
  String get coreOsmContributors => 'OpenStreetMap contributors';

  @override
  String get corePageNotFound => 'Page not found';

  @override
  String get coreQuranBlockedByRadio =>
      'You can\'t listen to the Quran while the radio is on.';

  @override
  String get coreQuranTitle => 'The Holy Quran';

  @override
  String get coreRatesCached => 'saved';

  @override
  String get coreRatesDaily => 'daily';

  @override
  String get coreRatesFetchFailed =>
      'Exchange rates could not be retrieved. Check your internet connection.';

  @override
  String get coreSessionNotFound => 'No active session found.';

  @override
  String get coreStartFailed => 'The app could not be started';

  @override
  String get coreStarting => 'Starting...';

  @override
  String get coreUnknownPage => 'Unknown page';

  @override
  String get cuzdanAdjustmentReason => 'Note';

  @override
  String get cuzdanAnalysisEmpty => 'No spending in this period.';

  @override
  String get cuzdanAnalysisTitle => 'Spending analysis';

  @override
  String get cuzdanBalanceLabel => 'My points balance';

  @override
  String get cuzdanCancelReason => 'Cancellation reason';

  @override
  String get cuzdanCancelled => 'Cancelled';

  @override
  String get cuzdanCancelledShort => 'Cancelled';

  @override
  String get cuzdanCardBrand => 'Umre Rehberim';

  @override
  String get cuzdanCardHolder => 'CARD HOLDER';

  @override
  String get cuzdanCardPoints => 'POINTS';

  @override
  String get cuzdanCardSubtitle => 'Loyalty Card';

  @override
  String get cuzdanClose => 'Close';

  @override
  String get cuzdanCodeCreating => 'Preparing your code…';

  @override
  String get cuzdanCodeError =>
      'The code could not be created. Check your internet connection and try again.';

  @override
  String cuzdanCodeOneTime(int minutes) {
    return 'This code can be used once and renews every $minutes minutes.';
  }

  @override
  String get cuzdanCodeShowLive => 'Back to the one-time code';

  @override
  String get cuzdanCodeShowStatic => 'Show the shop\'s own QR code';

  @override
  String get cuzdanCodeTimeLeft => 'Time left';

  @override
  String get cuzdanCodeWaiting => 'Code scanned, saving the purchase…';

  @override
  String cuzdanCodeYourPoints(int points) {
    return 'Your points: $points';
  }

  @override
  String get cuzdanCouponAllShops => 'At all partner shops';

  @override
  String cuzdanCouponAtShop(String shop) {
    return 'Only at $shop';
  }

  @override
  String cuzdanCouponAvailable(int count) {
    return '$count coupon(s) available at this shop';
  }

  @override
  String get cuzdanCouponCode => 'Coupon code';

  @override
  String get cuzdanCouponDetails => 'Coupon details';

  @override
  String get cuzdanCouponHowTo =>
      'To use one, open the discount code at the shop and pick the coupon. Each coupon can be used once.';

  @override
  String get cuzdanCouponNone => 'Don\'t use a coupon';

  @override
  String get cuzdanCouponOff => 'OFF';

  @override
  String get cuzdanCouponPickHint =>
      'The coupon is added to your code; the discount is applied when the shop scans it.';

  @override
  String get cuzdanCouponPickTitle => 'Choose a coupon';

  @override
  String cuzdanCouponSelected(String code) {
    return 'Coupon: $code';
  }

  @override
  String get cuzdanCouponTapHint => 'Tap for details';

  @override
  String get cuzdanCouponUse => 'Use a coupon';

  @override
  String cuzdanCouponUsed(String code) {
    return 'Coupon $code';
  }

  @override
  String cuzdanCouponValidUntil(String date) {
    return 'Until $date';
  }

  @override
  String cuzdanDaysAgo(int days) {
    return '$days days ago';
  }

  @override
  String get cuzdanDiscount => 'Discount';

  @override
  String get cuzdanEmpty =>
      'No purchases yet. Show your QR code at partner shops to get discounts and earn points.';

  @override
  String get cuzdanFilterAll => 'All';

  @override
  String get cuzdanFilterEarned => 'Points earned';

  @override
  String get cuzdanFilterSpent => 'Paid with points';

  @override
  String get cuzdanGiftPoints => 'Gift points';

  @override
  String get cuzdanGoShops => 'Partner Shops';

  @override
  String get cuzdanGross => 'Amount';

  @override
  String get cuzdanHideBalance => 'Hide balance';

  @override
  String get cuzdanHowEarn =>
      'You earn 1 point for every 1 SAR you spend at partner shops.';

  @override
  String get cuzdanHowPay =>
      'When you pay with points, the shop discount still applies.';

  @override
  String get cuzdanHowRecord =>
      'The app does not take payments; it only records your purchase.';

  @override
  String get cuzdanHowTitle => 'How do points work?';

  @override
  String get cuzdanHowValue => '100 points = 5 SAR.';

  @override
  String get cuzdanLoadError =>
      'Purchases could not be loaded. Check your internet connection.';

  @override
  String get cuzdanLoyaltyPoints => 'Loyalty Points';

  @override
  String get cuzdanMethodCard => 'Credit card';

  @override
  String get cuzdanMethodCash => 'Cash';

  @override
  String get cuzdanMethodPoints => 'Points';

  @override
  String get cuzdanMyCoupons => 'My Coupons';

  @override
  String get cuzdanMyPurchases => 'My Purchases';

  @override
  String get cuzdanMyQr => 'My QR';

  @override
  String get cuzdanNoFilterMatch => 'No purchases match this filter.';

  @override
  String get cuzdanNoShops => 'No partner shops found.';

  @override
  String cuzdanNotifEarned(String shop, String amount, int points) {
    return '$shop: $amount SAR paid, you earned $points points.';
  }

  @override
  String cuzdanNotifSpent(String shop, String amount, int points) {
    return '$shop: $amount SAR paid with $points points.';
  }

  @override
  String get cuzdanPaid => 'Paid';

  @override
  String get cuzdanPaidWithPoints => 'Paid with points';

  @override
  String get cuzdanPaymentMethod => 'Payment method';

  @override
  String get cuzdanPickShopHint =>
      'Your QR code is created for the shop you choose.';

  @override
  String get cuzdanPickShopTitle => 'Which shop are you at?';

  @override
  String cuzdanPointsAmount(String points) {
    return '$points points';
  }

  @override
  String get cuzdanPointsCorrection => 'Points adjustment';

  @override
  String get cuzdanPointsEarned => 'Points earned';

  @override
  String cuzdanPointsMinus(int points) {
    return '−$points pts';
  }

  @override
  String cuzdanPointsPlus(int points) {
    return '+$points pts';
  }

  @override
  String get cuzdanPointsRevert => 'Points entry reversed';

  @override
  String get cuzdanPointsReverted => 'Reversed';

  @override
  String get cuzdanPointsSpent => 'Points spent';

  @override
  String cuzdanPointsWorth(String value) {
    return '≈ worth $value SAR';
  }

  @override
  String cuzdanProfileSubtitle(int points) {
    return '$points points · purchase history';
  }

  @override
  String get cuzdanPurchaseCount => 'Purchases';

  @override
  String get cuzdanPurchaseCountLabel => 'Number of purchases';

  @override
  String get cuzdanRetry => 'Try again';

  @override
  String get cuzdanReviewAction => 'Rate';

  @override
  String get cuzdanReviewComment => 'Your comment (optional)';

  @override
  String get cuzdanReviewComplaint => 'Report as a complaint';

  @override
  String get cuzdanReviewComplaintHint =>
      'Your complaint is forwarded to the platform team for review.';

  @override
  String get cuzdanReviewError =>
      'The review couldn\'t be sent. Please try again.';

  @override
  String get cuzdanReviewOnce =>
      'A review can be sent once and can\'t be changed later.';

  @override
  String get cuzdanReviewPickStars => 'Please choose 1–5 stars.';

  @override
  String get cuzdanReviewSend => 'Send';

  @override
  String get cuzdanReviewStar1 => 'Very bad';

  @override
  String get cuzdanReviewStar2 => 'Bad';

  @override
  String get cuzdanReviewStar3 => 'Okay';

  @override
  String get cuzdanReviewStar4 => 'Good';

  @override
  String get cuzdanReviewStar5 => 'Excellent';

  @override
  String get cuzdanReviewThanks => 'Thanks for your review!';

  @override
  String get cuzdanReviewThis => 'Rate this purchase';

  @override
  String get cuzdanReviewTitle => 'Rate your purchase';

  @override
  String get cuzdanReviewYours => 'Your rating';

  @override
  String cuzdanSar(String amount) {
    return '$amount SAR';
  }

  @override
  String get cuzdanShopDiscount => 'Shop discount';

  @override
  String cuzdanShopDiscountPct(int percent) {
    return 'Shop discount $percent%';
  }

  @override
  String get cuzdanShops => 'Shops';

  @override
  String get cuzdanShowBalance => 'Show balance';

  @override
  String get cuzdanSuccessTitle => 'Purchase recorded';

  @override
  String get cuzdanTitle => 'My Purchases and Points';

  @override
  String get cuzdanToday => 'Today';

  @override
  String get cuzdanTotalDiscount => 'Discount earned';

  @override
  String get cuzdanTotalSpent => 'Total spent';

  @override
  String cuzdanTxEarnedBig(int points) {
    return 'You earned +$points points';
  }

  @override
  String cuzdanTxSpentBig(int points) {
    return 'You used $points points';
  }

  @override
  String cuzdanWorthRiyal(String value) {
    return '≈ worth $value riyals';
  }

  @override
  String get cuzdanYesterday => 'Yesterday';

  @override
  String get dualarAllFilesDownloaded => 'All files downloaded successfully!';

  @override
  String get dualarArabicText => 'Arabic Text';

  @override
  String get dualarBookPageView => 'Book page view';

  @override
  String get dualarChangeStartNumber => 'Change starting number';

  @override
  String get dualarCompleted => 'Completed';

  @override
  String get dualarContentDownloadSuccess => 'Content downloaded successfully!';

  @override
  String get dualarContentDownloadTitle => 'Download Content';

  @override
  String get dualarContinue => 'Continue';

  @override
  String dualarContinueFrom(int count) {
    return 'Continue from $count';
  }

  @override
  String get dualarCustom => 'Custom';

  @override
  String dualarCustomValue(int value) {
    return 'Custom ($value)';
  }

  @override
  String dualarDeleteZikirConfirm(String name) {
    return 'Are you sure you want to delete the dhikr \"$name\"?';
  }

  @override
  String get dualarDeleteZikirTitle => 'Delete Dhikr';

  @override
  String get dualarDlSay => 'Sa\'i Supplications';

  @override
  String get dualarDlTavaf => 'Tawaf Supplications';

  @override
  String get dualarDownload => 'Download';

  @override
  String get dualarDownloadAll => 'Download all';

  @override
  String get dualarDownloadContent => 'Download content';

  @override
  String get dualarDownloadDialogInfo =>
      'Download the book page images to use them offline. The supplication texts are already on your device.';

  @override
  String dualarDownloadErrorDetail(String error) {
    return 'An error occurred while downloading: $error';
  }

  @override
  String dualarDownloadErrorGeneric(String error) {
    return 'Download error: $error';
  }

  @override
  String get dualarDownloadFailedShort => 'Download failed';

  @override
  String get dualarDownloadFailedTitle => 'Download failed!';

  @override
  String dualarDownloadItemFailed(String name, String error) {
    return '$name could not be downloaded: $error';
  }

  @override
  String get dualarDownloaded => 'Downloaded ✓';

  @override
  String get dualarDownloading => 'Downloading';

  @override
  String get dualarDownloadingTitle => 'Downloading...';

  @override
  String get dualarEditZikirTitle => 'Edit Dhikr';

  @override
  String get dualarEndShort => 'End';

  @override
  String get dualarEnterName => 'Please enter a name!';

  @override
  String get dualarEnterNumber => 'Please enter a number!';

  @override
  String get dualarEnterTarget => 'Please set a target!';

  @override
  String dualarFileDownloadError(String error) {
    return 'File download error: $error';
  }

  @override
  String get dualarFileDownloading => 'Downloading file...';

  @override
  String dualarFileNotDownloaded(String name, String error) {
    return 'File $name could not be downloaded: $error';
  }

  @override
  String dualarFileProgress(int current, int total) {
    return 'Downloading file $current/$total...';
  }

  @override
  String get dualarFillAllFields => 'Please do not leave any field empty.';

  @override
  String dualarImageCount(int count) {
    return '$count images';
  }

  @override
  String get dualarImageNotDownloaded => 'Image not downloaded yet';

  @override
  String get dualarMeaning => 'Meaning';

  @override
  String get dualarNewZikir => 'New dhikr';

  @override
  String get dualarNoInternet => 'No internet connection';

  @override
  String get dualarNoInternetCheck =>
      'No internet connection. Please check your connection.';

  @override
  String get dualarNoLanguageOption =>
      'No language option is available for this page';

  @override
  String get dualarNoSavedZikir => 'You have no saved dhikr yet';

  @override
  String get dualarNoSavedZikirHint =>
      'Use \"Save\" in the Tasbih Counter to add your dhikr to this list.';

  @override
  String get dualarOptions => 'Options';

  @override
  String dualarOverallProgress(int percent) {
    return 'Overall: $percent%';
  }

  @override
  String get dualarReading => 'Transliteration';

  @override
  String get dualarReset => 'Reset';

  @override
  String get dualarResetConfirm => 'Reset the counter?';

  @override
  String dualarRoundsCompleted(int count) {
    return '$count rounds completed';
  }

  @override
  String get dualarSaveAsTitle => 'What name should it be saved under?';

  @override
  String get dualarSavedZikirs => 'My Saved Dhikrs';

  @override
  String dualarSavtCompletedReset(int count) {
    return '$count rounds completed. Long-press the counter to reset.';
  }

  @override
  String dualarSavtCongrats(int count) {
    return 'Congratulations! You have completed all $count rounds.';
  }

  @override
  String get dualarSavtCounter => 'Round Counter';

  @override
  String get dualarSavtPlusOne => 'Round +1';

  @override
  String dualarSavtShort(int number) {
    return 'Round $number';
  }

  @override
  String get dualarSayDownloading => 'Downloading Sa\'i supplications...';

  @override
  String get dualarSayPageTitle => 'Sa\'i Supplications (Safa and Marwah)';

  @override
  String dualarServerError(int code) {
    return 'Server error: $code';
  }

  @override
  String get dualarSetTargetTitle => 'Set yourself a target.';

  @override
  String get dualarSilent => 'Silent';

  @override
  String get dualarStartFromTitle =>
      'Which number do you want to start counting from?';

  @override
  String get dualarStartNumberHint => 'Starting number';

  @override
  String get dualarStartShort => 'Start';

  @override
  String get dualarTap => 'Tap';

  @override
  String get dualarTargetHint => 'e.g. 500';

  @override
  String get dualarTargetReached => 'You have reached your target!';

  @override
  String dualarTargetSet(int target) {
    return 'Your target is set to $target!';
  }

  @override
  String get dualarTargetTooBig => 'Your target cannot be greater than 99999!';

  @override
  String get dualarTargetZero => 'Your target cannot be 0!';

  @override
  String get dualarTavafDownloading => 'Downloading Tawaf supplications...';

  @override
  String get dualarTavafPageTitle => 'Tawaf Supplications (Rounds)';

  @override
  String get dualarTextView => 'Text view';

  @override
  String get dualarTextViewOffline => 'The text view also works offline.';

  @override
  String get dualarThemeColor => 'Theme color';

  @override
  String get dualarTimeout => 'Timed out';

  @override
  String get dualarTurkishTranslation => 'Turkish Translation';

  @override
  String get dualarUndo => 'Undo';

  @override
  String get dualarVibration => 'Vibration';

  @override
  String get dualarVibrationOff => 'Vibration off';

  @override
  String get dualarVibrationOn => 'Vibration on';

  @override
  String get dualarViewList => 'View List';

  @override
  String dualarYourTarget(int target) {
    return 'Your target: $target';
  }

  @override
  String dualarZikirContinuing(String name) {
    return 'Continuing the dhikr \"$name\".';
  }

  @override
  String get dualarZikirCount => 'Dhikr Count';

  @override
  String get dualarZikirMaxReached => 'The counter cannot go any higher!';

  @override
  String get dualarZikirName => 'Dhikr Name';

  @override
  String get dualarZikirNameHint => 'e.g. Subhanallah';

  @override
  String get dualarZikirSaved => 'Your dhikr was saved successfully!';

  @override
  String dualarZikirSavedCount(String name, int count) {
    return '\"$name\" saved ($count)';
  }

  @override
  String get dualarZikirmatik => 'Tasbih Counter';

  @override
  String get esnafAllTransactions => 'All transactions';

  @override
  String get esnafAmountInvalid => 'Enter a valid amount.';

  @override
  String get esnafAmountLabel => 'Amount (SAR)';

  @override
  String esnafAmountTooHigh(String max) {
    return 'Maximum per transaction is $max.';
  }

  @override
  String get esnafBackHome => 'Home';

  @override
  String get esnafByMethod => 'By payment type';

  @override
  String esnafCalcCoupon(String code) {
    return 'Coupon $code';
  }

  @override
  String esnafCalcDiscount(int percent) {
    return 'Discount ($percent%)';
  }

  @override
  String get esnafCalcGross => 'Gross amount';

  @override
  String get esnafCalcPayable => 'To pay';

  @override
  String get esnafCalcPointsBalance => 'Guest\'s balance';

  @override
  String get esnafCalcPointsEarned => 'Points earned';

  @override
  String get esnafCalcPointsNeeded => 'Points needed';

  @override
  String get esnafCalcPointsSpent => 'Points spent';

  @override
  String get esnafCancelAction => 'Cancel it';

  @override
  String esnafCancelConfirmBody(String guest, String amount) {
    return 'The $amount transaction for $guest will be cancelled. This cannot be undone.';
  }

  @override
  String get esnafCancelConfirmTitle => 'Are you sure?';

  @override
  String get esnafCancelDenied =>
      'Could not cancel: the 24-hour window may have passed.';

  @override
  String get esnafCancelDone => 'Transaction cancelled.';

  @override
  String get esnafCancelReason => 'Cancellation reason';

  @override
  String get esnafCancelReasonPrompt =>
      'Enter the reason for cancelling. The agency will see it.';

  @override
  String get esnafCancelReasonRequired => 'Please enter a short reason.';

  @override
  String get esnafCancelTitle => 'Cancel transaction';

  @override
  String get esnafCancelWindowPassed =>
      'Transactions can only be cancelled within 24 hours.';

  @override
  String get esnafCancelledAt => 'Cancelled at';

  @override
  String get esnafCancelledTag => 'Cancelled';

  @override
  String esnafCodeLabel(String code) {
    return 'Code: $code';
  }

  @override
  String get esnafContinue => 'Continue';

  @override
  String get esnafCopied => 'Report copied to clipboard.';

  @override
  String get esnafCopy => 'Copy';

  @override
  String esnafCouponApplied(String amount) {
    return 'Coupon discount applied: $amount';
  }

  @override
  String get esnafCouponEnterAmount =>
      'The coupon discount is calculated once you enter the amount.';

  @override
  String get esnafCouponErrAlreadyUsed =>
      'The guest has already used this coupon.';

  @override
  String get esnafCouponErrExhausted =>
      'The coupon has reached its usage limit.';

  @override
  String get esnafCouponErrExpired => 'The coupon has expired.';

  @override
  String get esnafCouponErrInactive => 'The coupon is inactive.';

  @override
  String esnafCouponErrMinSpend(String amount) {
    return 'This coupon requires a purchase of at least $amount.';
  }

  @override
  String get esnafCouponErrNotFound => 'Coupon not found.';

  @override
  String get esnafCouponErrNotStarted => 'The coupon hasn\'t started yet.';

  @override
  String get esnafCouponErrOtherAgency =>
      'The coupon isn\'t valid for this guest\'s agency.';

  @override
  String get esnafCouponErrOtherShop => 'The coupon isn\'t valid at this shop.';

  @override
  String get esnafCouponErrSave =>
      'The coupon couldn\'t be used: the guest may have used it before or it may have just run out. Ask the guest to generate a new code without the coupon.';

  @override
  String get esnafCouponErrZero =>
      'No coupon discount can be applied to this amount.';

  @override
  String esnafCouponFixed(String amount) {
    return '$amount off';
  }

  @override
  String get esnafCouponInvalidHint =>
      'This code can\'t be recorded. Ask the guest to generate a new code without the coupon.';

  @override
  String get esnafCouponLoading => 'Checking coupon…';

  @override
  String esnafCouponMax(String amount) {
    return 'up to $amount';
  }

  @override
  String esnafCouponMin(String amount) {
    return 'on purchases of at least $amount';
  }

  @override
  String esnafCouponPercent(String value) {
    return '$value% off';
  }

  @override
  String esnafCouponTitle(String code) {
    return 'Coupon: $code';
  }

  @override
  String get esnafDayReport => 'End-of-day report';

  @override
  String esnafDiscountBadge(int percent) {
    return '$percent% off';
  }

  @override
  String esnafDiscountShort(String amount) {
    return 'discount $amount';
  }

  @override
  String get esnafErrExpired => 'Code expired';

  @override
  String get esnafErrExpiredBody =>
      'The code has expired. Ask the guest for a new code and scan again.';

  @override
  String get esnafErrInvalidCode =>
      'This code is invalid, expired or already used.';

  @override
  String get esnafErrNetwork =>
      'Connection problem. Check your internet and try again.';

  @override
  String get esnafErrNotFound => 'Code not found';

  @override
  String get esnafErrNotOurs => 'This is not a My Umrah Guide code';

  @override
  String get esnafErrNotOursBody =>
      'Ask the guest to open the shop code in the app.';

  @override
  String get esnafErrOtherAgency => 'Not a partner agency';

  @override
  String get esnafErrOtherAgencyBody =>
      'Your shop has no discount agreement with this guest\'s agency.';

  @override
  String get esnafErrSave => 'Could not save. Please try again.';

  @override
  String get esnafErrTitle => 'Transaction not saved';

  @override
  String get esnafErrUsed => 'Code already used';

  @override
  String esnafErrUsedAt(String shop) {
    return 'This code was used at \"$shop\". Ask the guest for a new code.';
  }

  @override
  String get esnafErrUsedBody => 'Ask the guest to create a new code.';

  @override
  String get esnafGuest => 'Guest';

  @override
  String get esnafGuestPoints => 'Points balance';

  @override
  String get esnafGuestTrip => 'Trip';

  @override
  String get esnafHistoryTitle => 'Transaction history';

  @override
  String get esnafLoadFailed => 'Could not load data';

  @override
  String get esnafLoadFailedBody =>
      'Check your internet connection and try again.';

  @override
  String get esnafLoginCodeError =>
      'Merchant code must be 6 characters (A-Z, 2-9).';

  @override
  String get esnafLoginCodeLabel => 'Merchant code';

  @override
  String get esnafLoginHint =>
      'Your code and PIN are provided by the travel agency.';

  @override
  String get esnafLoginNotMerchant => 'This account is not a merchant account.';

  @override
  String get esnafLoginPinError => 'PIN must be 6 digits.';

  @override
  String get esnafLoginPinLabel => 'PIN';

  @override
  String get esnafLoginType => 'Merchant';

  @override
  String get esnafLoginUseMerchant =>
      'This is a merchant account. Please choose \"Merchant\" login.';

  @override
  String get esnafLoginWrong => 'Merchant code or PIN is incorrect.';

  @override
  String get esnafLogoCamera => 'Take a photo';

  @override
  String get esnafLogoGallery => 'Choose from gallery';

  @override
  String get esnafLogoRemove => 'Remove logo';

  @override
  String get esnafLogout => 'Log out';

  @override
  String get esnafLogoutConfirm => 'Do you want to log out?';

  @override
  String get esnafMenuShopInfo => 'My shop info';

  @override
  String get esnafMethodAll => 'All';

  @override
  String get esnafMethodCard => 'Credit card';

  @override
  String get esnafMethodCash => 'Cash';

  @override
  String get esnafMethodLabel => 'Payment type';

  @override
  String get esnafMethodPoints => 'Points';

  @override
  String get esnafNewTx => 'New transaction';

  @override
  String get esnafNoCollectNote =>
      'The app does not collect payment; it only records the sale.';

  @override
  String get esnafNoTransactions => 'No transactions match this filter.';

  @override
  String get esnafNoTransactionsToday => 'No transactions today yet.';

  @override
  String get esnafNoteLabel => 'Note (optional)';

  @override
  String esnafPointsInsufficient(String need, String balance) {
    return 'Not enough points: $need needed, balance $balance.';
  }

  @override
  String get esnafPointsNone =>
      'The guest has no points; paying with points is not possible.';

  @override
  String get esnafRange30 => '30 days';

  @override
  String get esnafRange7 => '7 days';

  @override
  String get esnafRangeCustom => 'Custom';

  @override
  String get esnafRangeToday => 'Today';

  @override
  String get esnafRecentTransactions => 'Recent transactions';

  @override
  String get esnafReportCancelled => 'Cancelled transactions';

  @override
  String get esnafReportFooter => 'My Umrah Guide – Merchant Panel';

  @override
  String esnafReportHeader(String shop) {
    return '$shop – End-of-day report';
  }

  @override
  String get esnafReportPickDay => 'Choose report day';

  @override
  String get esnafReviewComplaint => 'Complaint';

  @override
  String get esnafReviewTitle => 'Guest review';

  @override
  String esnafSar(String amount) {
    return 'SAR $amount';
  }

  @override
  String get esnafSaveTx => 'Save transaction';

  @override
  String get esnafScanAgain => 'Scan again';

  @override
  String get esnafScanQr => 'Scan QR';

  @override
  String get esnafScanQrHint => 'Scan the code on the guest\'s phone';

  @override
  String get esnafShopDescription => 'Description';

  @override
  String get esnafShopHours => 'Working hours';

  @override
  String get esnafShopInactive =>
      'Your shop is currently inactive. Transactions are disabled; please contact the agency.';

  @override
  String get esnafShopNotFound => 'Shop not found';

  @override
  String get esnafShopNotFoundBody =>
      'No shop is linked to your account. Please contact the travel agency.';

  @override
  String get esnafShopPhone => 'Phone';

  @override
  String get esnafShopReadOnlyNote =>
      'Only the agency can change the shop name and discount rate.';

  @override
  String get esnafShopSaved => 'Shop info saved.';

  @override
  String get esnafShopWhatsapp => 'WhatsApp';

  @override
  String get esnafStatCount => 'Transactions';

  @override
  String get esnafStatDiscount => 'Discount given';

  @override
  String get esnafStatNet => 'Net sales';

  @override
  String get esnafSuccessBody => 'Collect the payment at your own till or POS.';

  @override
  String get esnafSuccessTitle => 'Transaction saved';

  @override
  String get esnafTime => 'Time';

  @override
  String get esnafTitle => 'Merchant Panel';

  @override
  String get esnafTodaySummary => 'Today\'s summary';

  @override
  String get esnafTxTitle => 'New transaction';

  @override
  String get hatimCancel => 'Cancel';

  @override
  String get hatimCardSubtitle =>
      'Complete the Quran together, share it part by part';

  @override
  String get hatimCompletedBadge => 'Completed';

  @override
  String get hatimCompletedBanner =>
      'The khatm is complete, may Allah accept it';

  @override
  String get hatimConfirm => 'Yes';

  @override
  String get hatimCreateButton => 'Create group';

  @override
  String get hatimCreateTitle => 'New khatm group';

  @override
  String get hatimCreated => 'Khatm group created';

  @override
  String hatimDeadline(String date) {
    return 'Target: $date';
  }

  @override
  String get hatimDeadlineClear => 'Clear';

  @override
  String get hatimDeadlineLabel => 'Target date (optional)';

  @override
  String get hatimDeadlineNone => 'No date selected';

  @override
  String get hatimDelete => 'Delete group';

  @override
  String get hatimDeleteConfirm =>
      'The group and all its progress will be deleted. Are you sure?';

  @override
  String hatimDoneBy(String name) {
    return 'Read by $name';
  }

  @override
  String get hatimDoneToast => 'May Allah accept it!';

  @override
  String get hatimEdit => 'Edit';

  @override
  String get hatimEditTitle => 'Edit group';

  @override
  String get hatimEmptyDiscover =>
      'There are no other groups you can join right now.';

  @override
  String get hatimEmptyMine =>
      'You have no khatm groups yet. Create a new one or join a group from the Discover tab.';

  @override
  String get hatimErrAlreadyDone => 'This part has already been read';

  @override
  String get hatimErrCreateTooSoon =>
      'Please wait 1 minute before creating another group.';

  @override
  String get hatimErrFull => 'The group is full (200 members max)';

  @override
  String get hatimErrGeneric =>
      'The action could not be completed. Please try again.';

  @override
  String get hatimErrNetwork => 'Connection problem. Please try again.';

  @override
  String get hatimErrNotActive =>
      'This khatm is complete. Wait for a new one to start.';

  @override
  String get hatimErrNotSignedIn => 'No session found. Please sign in again.';

  @override
  String get hatimErrNotYours => 'This part is no longer yours';

  @override
  String get hatimErrPermission => 'You are not allowed to do this';

  @override
  String get hatimErrQuotaCuz =>
      'You can hold at most 3 juz. Finish the ones you have first.';

  @override
  String get hatimErrQuotaSayfa =>
      'You can hold at most 20 pages. Finish the ones you have first.';

  @override
  String get hatimErrRejoinTooSoon =>
      'Please wait a moment before rejoining the group.';

  @override
  String get hatimErrTakenCuz => 'This juz was just taken by someone else';

  @override
  String get hatimErrTakenSayfa => 'This page was just taken by someone else';

  @override
  String get hatimErrTooSoon =>
      'Give yourself some time to read. You can finish at least 1 minute after taking the part.';

  @override
  String get hatimEvCompleted => 'The khatm is complete! May Allah accept it';

  @override
  String hatimEvCreate(String name) {
    return '$name created the group';
  }

  @override
  String hatimEvDoneCuz(String name, int n, int done, int total) {
    return '$name finished juz $n ($done/$total)';
  }

  @override
  String hatimEvDoneSayfa(String name, int n, int done, int total) {
    return '$name finished page $n ($done/$total)';
  }

  @override
  String hatimEvJoin(String name) {
    return '$name joined the group';
  }

  @override
  String hatimEvKick(String name) {
    return '$name removed a member';
  }

  @override
  String hatimEvLeave(String name) {
    return '$name left the group';
  }

  @override
  String hatimEvNewRound(int round) {
    return 'Khatm #$round has started';
  }

  @override
  String hatimEvRelease(String name) {
    return '$name released a part';
  }

  @override
  String hatimEvTakeCuz(String name, int n) {
    return '$name took juz $n';
  }

  @override
  String hatimEvTakeSayfa(String name, int n) {
    return '$name took page $n';
  }

  @override
  String get hatimFieldName => 'Group name';

  @override
  String get hatimFieldNameHint => 'E.g. Khatm for my mother';

  @override
  String get hatimFieldNiyet => 'Intention / prayer (optional)';

  @override
  String get hatimFieldNiyetHint =>
      'Who is this khatm for, and with what intention?';

  @override
  String get hatimGroupNotFound =>
      'The group was not found or has been deleted.';

  @override
  String get hatimInviteCopied => 'Invitation text copied to clipboard';

  @override
  String hatimInviteText(String name) {
    return 'Join the \"$name\" khatm group! Find it in the Umre Rehberim app under Duas > Group Khatm.';
  }

  @override
  String get hatimJoin => 'Join group';

  @override
  String get hatimJoined => 'You joined the group';

  @override
  String get hatimKick => 'Remove member';

  @override
  String hatimKickConfirm(String name) {
    return 'Remove $name from the group? Their unfinished parts will be freed.';
  }

  @override
  String get hatimKicked => 'The member was removed';

  @override
  String get hatimLastEvent => 'Latest activity';

  @override
  String get hatimLeave => 'Leave group';

  @override
  String get hatimLeaveConfirm => 'Do you want to leave this group?';

  @override
  String get hatimLegendDone => 'Done';

  @override
  String get hatimLegendFree => 'Free';

  @override
  String get hatimLegendMine => 'Mine';

  @override
  String get hatimLegendTaken => 'Taken';

  @override
  String get hatimLoadError => 'Groups could not be loaded';

  @override
  String get hatimMarkDone => 'I finished';

  @override
  String hatimMembers(int count) {
    return '$count members';
  }

  @override
  String get hatimNameInvalid => 'The group name must be 3 to 60 characters';

  @override
  String get hatimNewGroup => 'New khatm group';

  @override
  String get hatimNewRound => 'Start a new khatm';

  @override
  String get hatimNewRoundConfirm =>
      'Start a new khatm with the same group? Progress will be reset.';

  @override
  String get hatimNiyetInvalid => 'The intention can be at most 300 characters';

  @override
  String get hatimNotMember => 'Join the group first to take a part.';

  @override
  String hatimOwner(String name) {
    return 'Created by $name';
  }

  @override
  String hatimPartCuz(int n) {
    return 'Juz $n';
  }

  @override
  String hatimPartSayfa(int n) {
    return 'Page $n';
  }

  @override
  String get hatimPrivateBadge => 'Agency only';

  @override
  String get hatimPrivateDesc =>
      'Only people in the same agency as you can see and join the group.';

  @override
  String get hatimPrivateTitle => 'My agency only';

  @override
  String hatimProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String get hatimPublicBadge => 'Public';

  @override
  String get hatimPublicDesc =>
      'Everyone using the app sees the group in Discover and can join.';

  @override
  String get hatimPublicTitle => 'Public';

  @override
  String hatimQuotaInfo(int held, int max) {
    return 'You hold $held/$max';
  }

  @override
  String get hatimRelease => 'Release';

  @override
  String get hatimReleaseOther => 'Free this part';

  @override
  String hatimReleaseOtherConfirm(String name) {
    return 'Free the part taken by $name?';
  }

  @override
  String hatimRound(int round) {
    return 'Khatm #$round';
  }

  @override
  String get hatimSave => 'Save';

  @override
  String get hatimShare => 'Invite';

  @override
  String get hatimStartReading => 'Start reading';

  @override
  String get hatimTabDiscover => 'Discover';

  @override
  String get hatimTabMine => 'My groups';

  @override
  String get hatimTake => 'Take';

  @override
  String hatimTakeConfirmCuz(int n) {
    return 'Do you want to take juz $n?';
  }

  @override
  String hatimTakeConfirmSayfa(int n) {
    return 'Do you want to take page $n?';
  }

  @override
  String hatimTakenBy(String name) {
    return 'Taken by $name';
  }

  @override
  String get hatimTakenToast => 'The part is yours. Blessed reading!';

  @override
  String get hatimTitle => 'Group Khatm';

  @override
  String get hatimUnitCuz => 'Juz';

  @override
  String get hatimUnitCuzDesc => '30 juz. Each member takes one or more juz.';

  @override
  String get hatimUnitLabel => 'How should it be shared?';

  @override
  String get hatimUnitLocked =>
      'The sharing unit cannot be changed after the group is created.';

  @override
  String get hatimUnitSayfa => 'Page';

  @override
  String get hatimUnitSayfaDesc =>
      '604 pages. Finishes quickly with large groups.';

  @override
  String get hatimVisibilityLabel => 'Who can see it?';

  @override
  String get homeAnnouncement => 'Announcement';

  @override
  String get homeBirthDate => 'Date of Birth';

  @override
  String get homeCalendarNoAgency =>
      'The program will appear here once your agency is set.';

  @override
  String get homeCalendarNotFound => 'Calendar not found';

  @override
  String get homeCallAgency => 'Call Agency';

  @override
  String get homeChecking => 'Checking...';

  @override
  String get homeContactAgencyHint => 'Please contact your agency.';

  @override
  String get homeContactGuide => 'Contact Your Guide';

  @override
  String get homeContactGuideSubtitle => 'Get in touch with your guide';

  @override
  String get homeCountdownDays => 'Days';

  @override
  String get homeCountdownHours => 'Hours';

  @override
  String get homeCountdownMinutes => 'Minutes';

  @override
  String get homeCountdownSeconds => 'Seconds';

  @override
  String get homeCurrencySar => 'Saudi Riyal';

  @override
  String get homeCurrencyTry => 'Turkish Lira';

  @override
  String homeDayN(int day) {
    return 'Day $day';
  }

  @override
  String get homeDaysLeftLabel => 'days left';

  @override
  String get homeDhikrSection => 'Dhikr';

  @override
  String get homeDownloadContent => 'Download content';

  @override
  String get homeDuaQuoteCallUpon =>
      'And your Lord says, \"Call upon Me; I will respond to you.\"';

  @override
  String get homeDuaQuoteHearts =>
      'Unquestionably, by the remembrance of Allah hearts are assured.';

  @override
  String get homeDuaQuoteNear =>
      'And when My servants ask you concerning Me – indeed I am near. I respond to the invocation of the supplicant when he calls upon Me.';

  @override
  String get homeDuaQuoteRemember => 'So remember Me; I will remember you.';

  @override
  String get homeDuasQuranSubtitle => 'Tap to read and listen';

  @override
  String get homeDuasSai => 'Sa\'i Supplications';

  @override
  String get homeDuasSaiSubtitle => 'Tap to read between Safa and Marwah';

  @override
  String get homeDuasTawaf => 'Tawaf Supplications';

  @override
  String get homeDuasTitle => 'Supplications and the Holy Quran';

  @override
  String get homeDuasUmrahSection => 'Umrah Supplications';

  @override
  String homeDurationH(int hours) {
    return '$hours h';
  }

  @override
  String homeDurationHM(int hours, int minutes) {
    return '$hours h $minutes min';
  }

  @override
  String homeDurationM(int minutes) {
    return '$minutes min';
  }

  @override
  String get homeEventDone => 'Completed';

  @override
  String get homeEventUpcoming => 'Upcoming';

  @override
  String get homeEventsLoadError =>
      'Events could not be loaded. Check your internet connection and try again.';

  @override
  String get homeFixPermission => 'Fix Permission';

  @override
  String get homeGender => 'Gender';

  @override
  String get homeGenderFemale => 'Female';

  @override
  String get homeGenderMale => 'Male';

  @override
  String get homeGreeting => 'Assalamu Alaikum';

  @override
  String get homeGuest => 'Guest';

  @override
  String get homeGuide => 'Guide';

  @override
  String get homeGuideLocation => 'Guide\'s Location';

  @override
  String get homeHotelInfo => 'Hotel Details';

  @override
  String homeHoursAgo(int count) {
    return '$count h ago';
  }

  @override
  String get homeJustNow => 'Just now';

  @override
  String homeLastSent(String when) {
    return 'Last sent: $when';
  }

  @override
  String homeLastUpdate(String date) {
    return 'Last update: $date';
  }

  @override
  String get homeLocationAllow => 'Allow Location Access';

  @override
  String get homeLocationBackgroundWarning =>
      'No background location permission: while the screen is off, your location is updated rarely and inaccurately. Select \"Allow all the time\" in Settings > Permissions > Location.';

  @override
  String get homeLocationBeingShared => 'Your location is being shared';

  @override
  String get homeLocationGpsOff => 'The phone\'s location service (GPS) is off';

  @override
  String get homeLocationPermissionDenied => 'Location permission not granted';

  @override
  String get homeLocationReceived => 'Location received';

  @override
  String get homeLocationReducedWarning =>
      '\"Approximate location\" is on: your location may be off by a few hundred meters to several kilometers. Turn on \"Use precise location\" in Settings > Permissions > Location.';

  @override
  String get homeLocationServiceStarting =>
      'Sharing is on, starting the service...';

  @override
  String get homeLocationSharing => 'Location Sharing';

  @override
  String get homeLocationSharingDesc =>
      'When on, your location is shared with your guide even when the app is closed.';

  @override
  String get homeLocationSharingDisabled => 'Sharing is off';

  @override
  String get homeLocationSharingOff => 'Location sharing turned off';

  @override
  String get homeLocationSharingOn => 'Location sharing turned on';

  @override
  String get homeLocationStart => 'Start Location Tracking';

  @override
  String get homeLocationStartHint => 'Let your guide see your location';

  @override
  String get homeLocationStop => 'Stop Location Tracking';

  @override
  String get homeLocationTracking => 'Location Tracking';

  @override
  String get homeLogout => 'Log Out';

  @override
  String get homeLogoutConfirm =>
      'Are you sure you want to log out of your account?';

  @override
  String get homeLogoutFailed => 'Could not log out. Please try again.';

  @override
  String homeMinutesAgo(int count) {
    return '$count min ago';
  }

  @override
  String get homeNext => 'Next';

  @override
  String get homeNoActiveTrip => 'You have no active trip';

  @override
  String get homeNoEventsHint => 'Select another day to view events';

  @override
  String get homeNoEventsToday => 'No events for this day';

  @override
  String get homeNoManagerForTrip =>
      'No manager has been assigned to this trip yet';

  @override
  String get homeNoName => 'No name available';

  @override
  String get homeNoNotifications => 'No notifications yet.';

  @override
  String get homeNoNotificationsHint =>
      'Your guide\'s announcements will appear here.';

  @override
  String get homeNoPhone => 'No phone number';

  @override
  String get homeNotYet => 'not yet';

  @override
  String get homeNotificationsLoadError => 'Notifications could not be loaded.';

  @override
  String get homeNotificationsTitle => 'Notifications';

  @override
  String get homeOfflineMode => 'Offline mode';

  @override
  String get homeOpenBigMap => 'Open in full map and get directions';

  @override
  String get homePersonal => 'Personal';

  @override
  String get homePersonalInfo => 'Personal Information';

  @override
  String get homePhaseDone => 'Completed';

  @override
  String get homePhaseNone => 'Not planned';

  @override
  String get homePhaseOngoing => 'In progress';

  @override
  String get homePhaseUpcoming => 'Upcoming';

  @override
  String get homePhone => 'Phone';

  @override
  String get homePhoneOpenFailed => 'Could not open the phone app';

  @override
  String get homePickDay => 'Pick a Day';

  @override
  String get homePrayerAsr => 'Asr';

  @override
  String get homePrayerDhuhr => 'Dhuhr';

  @override
  String get homePrayerFajr => 'Fajr';

  @override
  String get homePrayerIsha => 'Isha';

  @override
  String get homePrayerMaghrib => 'Maghrib';

  @override
  String get homePrayerSunrise => 'Sunrise';

  @override
  String get homePrevious => 'Previous';

  @override
  String get homeProfileTitle => 'Profile';

  @override
  String get homeProgramCalendar => 'Program Calendar';

  @override
  String homeProgramDay(int day, int total) {
    return 'Day $day of the program • $total days total';
  }

  @override
  String get homeQuickDuas => 'Duas';

  @override
  String get homeQuickPlaces => 'Places to Visit';

  @override
  String get homeQuickQibla => 'Qibla';

  @override
  String get homeQuickQuran => 'Holy Quran';

  @override
  String get homeQuickShops => 'Partner Shops';

  @override
  String get homeQuoteAcceptFromUs =>
      'Our Lord, accept [this] from us. Indeed You are the Hearing, the Knowing.';

  @override
  String get homeQuoteCompleteHajj =>
      'And complete the Hajj and \'umrah for Allah.';

  @override
  String get homeQuoteRamadanUmrah =>
      'An \'umrah performed in Ramadan is equal to Hajj.';

  @override
  String get homeQuoteSafaMarwah =>
      'Indeed, as-Safa and al-Marwah are among the symbols of Allah.';

  @override
  String get homeQuoteUmrahExpiation =>
      'An \'umrah is an expiation for the sins committed between it and the next.';

  @override
  String get homeRatesError =>
      'Exchange rates could not be loaded. Check your internet connection.';

  @override
  String get homeRatesLive => 'Live rate';

  @override
  String get homeRefresh => 'Refresh';

  @override
  String get homeRegistrationDate => 'Registration Date';

  @override
  String homeRoom(String room) {
    return 'Room $room';
  }

  @override
  String homeRoomCapacity(int count) {
    return '($count people)';
  }

  @override
  String get homeRoomInfo => 'Room Details';

  @override
  String get homeSavedDhikrs => 'My Saved Dhikrs';

  @override
  String get homeSavedDhikrsSubtitle => 'Continue where you left off';

  @override
  String get homeSectionCurrency => 'Exchange Rates';

  @override
  String get homeSectionJourney => 'Time for the Sacred Journey';

  @override
  String get homeSectionPrayerTimes => 'Prayer Times';

  @override
  String get homeSectionQuickAccess => 'Quick Access';

  @override
  String get homeSendMessage => 'Send message';

  @override
  String get homeSomethingWrong => 'Something went wrong';

  @override
  String get homeSourceBaqarah127 => 'Surah Al-Baqarah, 127';

  @override
  String get homeSourceBaqarah152Short => 'Al-Baqarah 2:152';

  @override
  String get homeSourceBaqarah158 => 'Surah Al-Baqarah, 158';

  @override
  String get homeSourceBaqarah186Short => 'Al-Baqarah 2:186';

  @override
  String get homeSourceBaqarah196 => 'Surah Al-Baqarah, 196';

  @override
  String get homeSourceBaqarah196Short => 'Al-Baqarah 2:196';

  @override
  String get homeSourceBukhari => 'Hadith (Bukhari)';

  @override
  String get homeSourceGhafir60Short => 'Ghafir 40:60';

  @override
  String get homeSourceRad28Short => 'Ar-Ra\'d 13:28';

  @override
  String get homeTapToRead => 'Tap to read';

  @override
  String get homeTasbihCounter => 'Tasbih Counter';

  @override
  String get homeTasbihSubtitle => 'Tap to start dhikr';

  @override
  String get homeTcNo => 'Turkish ID No.';

  @override
  String get homeTechSupportInfo => 'Technical Support Info';

  @override
  String get homeToday => 'Today';

  @override
  String get homeTripAccepted => 'May Allah accept it!';

  @override
  String get homeTripNotDefined => 'Trip details have not been set yet.';

  @override
  String homeTripOf(String city) {
    return '$city Trip';
  }

  @override
  String get homeUmrahInfo => 'Umrah Details';

  @override
  String get homeUnknown => 'Unknown';

  @override
  String homeUpdatedDaysAgo(int count) {
    return 'Updated $count days ago';
  }

  @override
  String homeUpdatedHoursAgo(int count) {
    return 'Updated $count h ago';
  }

  @override
  String get homeUpdatedJustNow => 'Updated just now';

  @override
  String homeUpdatedMinutesAgo(int count) {
    return 'Updated $count min ago';
  }

  @override
  String get homeUserNotFound => 'User information not found';

  @override
  String get homeUserTypeAdmin => 'Manager';

  @override
  String get homeUserTypePilgrim => 'Umrah Pilgrim';

  @override
  String get homeUserTypeSuperAdmin => 'Super Administrator';

  @override
  String get homeWaitingGuideLocation => 'Waiting for the guide\'s location...';

  @override
  String get homeWhatsAppOpenFailed => 'Could not open WhatsApp';

  @override
  String get homeYourGuide => 'Your Guide';

  @override
  String get infoBadgeSoon => 'Soon';

  @override
  String get infoCardContactGuide => 'Contact Your Guide';

  @override
  String get infoCardHotels => 'Hotels and Restaurants';

  @override
  String get infoCardHotelsSub => 'Hotels and places to eat around the Haram.';

  @override
  String get infoCardIhram => 'Ihram Prohibitions';

  @override
  String get infoCardMiqat => 'Miqat Stations';

  @override
  String get infoCardMiqatSub =>
      'The five Miqats, their distances and map locations.';

  @override
  String get infoCardNeedList => 'Packing List';

  @override
  String get infoCardNeedListSub => 'Tick items off as you pack.';

  @override
  String get infoCardPedometer => 'Pedometer';

  @override
  String get infoCardPedometerSub => 'Track your daily step count.';

  @override
  String get infoCardPlaces => 'Places to Visit';

  @override
  String get infoCardRouteSim => 'Route Simulation';

  @override
  String get infoCardRouteSimSub =>
      'Umrah steps on the map, from the Miqat to Halq/Taqsir.';

  @override
  String get infoCardTawafSim => 'Tawaf Simulation';

  @override
  String get infoCardTawafSimSub =>
      '7 circuits around the Kaaba, Istilam and supplications.';

  @override
  String get infoCardTechSupport => 'Technical Support';

  @override
  String get infoCardTravelGuide => 'Travel Guide';

  @override
  String get infoCardTravelGuideSub =>
      'Visa, health, money, transport and important phone numbers.';

  @override
  String get infoCheckBeforeTravel =>
      'Check that this is still current before you travel.';

  @override
  String get infoCouldNotOpen => 'Could not open.';

  @override
  String get infoDirections => 'Directions';

  @override
  String infoDistanceKm(String km) {
    return '~$km km';
  }

  @override
  String infoDistanceM(int meters) {
    return '~$meters m';
  }

  @override
  String get infoEmail => 'Email';

  @override
  String get infoFilterAll => 'All';

  @override
  String get infoFilterFood => 'Food & drink';

  @override
  String get infoFilterHotels => 'Hotels';

  @override
  String get infoGeneralTitle => 'General Information';

  @override
  String get infoGuide911Note =>
      '911 works as the unified emergency number in some regions, including Makkah.';

  @override
  String get infoGuideJeddahConsulate =>
      'Consulate General of Türkiye in Jeddah';

  @override
  String get infoGuideMfa => 'Ministry of Foreign Affairs of Türkiye';

  @override
  String get infoGuidePhonesSub => 'Saudi emergency lines, Turkish missions';

  @override
  String get infoGuidePhonesTitle => 'Important Phone Numbers';

  @override
  String get infoGuideRiyadhEmbassy => 'Embassy of Türkiye in Riyadh';

  @override
  String get infoGuideRulesWarning =>
      'Saudi Arabia frequently updates its visa, permit and health rules. The rules on this page were compiled from official sources as of November 2026. Follow the announcements of your group and the Diyanet.';

  @override
  String get infoGuideSaudiEmergency => 'Saudi Arabia emergency';

  @override
  String get infoGuideSources =>
      'Sources: Saudi Ministry of Health (moh.gov.sa), visa.visitsaudi.com, Nusuk, Diyanet İşleri Başkanlığı, Haramain High-Speed Railway (sar.hhr.sa), Republic of Türkiye Ministry of Foreign Affairs (mfa.gov.tr).';

  @override
  String get infoHotelsFootnoteMecca =>
      'Distances to the Kaaba are as the crow flies; walking time varies with crowds and the gate you enter. Locations are from OpenStreetMap. Contact the hotel for prices and availability.';

  @override
  String get infoHotelsFootnoteMedina =>
      'Distances to the Prophet\'s Mosque are as the crow flies; walking time varies with crowds and the gate you enter. Locations are from OpenStreetMap. Contact the hotel for prices and availability.';

  @override
  String get infoIhramHeader =>
      'From entering Ihram until leaving it (Tahallul), the following acts are prohibited.';

  @override
  String get infoKaaba => 'Kaaba';

  @override
  String get infoMapCouldNotOpen => 'Could not open the map.';

  @override
  String get infoMapOpenFailed => 'Could not open the maps app.';

  @override
  String get infoMeccaKaaba => 'Makkah (Kaaba)';

  @override
  String get infoMiqatAlignNote =>
      'Ihram may be entered not only at the Miqat itself but also at a point in line with it. Since distances vary by route, sources may give different figures.';

  @override
  String infoMiqatAsCrowFlies(String distance) {
    return 'As the crow flies $distance';
  }

  @override
  String get infoMiqatFive => 'The five Miqats';

  @override
  String get infoMiqatFlightNote =>
      'Those flying directly from Türkiye to Jeddah enter Ihram on the plane before reaching the line of the Miqat. Men may put on their Ihram garments before boarding; the intention (niyyah) and Talbiyah are made before the Miqat line, following the announcement of the guide/cabin crew.';

  @override
  String get infoMiqatForWhom => 'For whom:';

  @override
  String infoMiqatRoad(String distance) {
    return 'By road: $distance';
  }

  @override
  String get infoMiqatSource =>
      'Source: TDV İslâm Ansiklopedisi, \"Mîkāt\" entry. Locations: OpenStreetMap.';

  @override
  String get infoNeedAdd => 'Add';

  @override
  String get infoNeedAddItem => 'Add item';

  @override
  String get infoNeedAddYourOwn => 'Add your own items';

  @override
  String get infoNeedAllReady => 'Your bag is ready. Have a blessed journey!';

  @override
  String get infoNeedCategory => 'Category';

  @override
  String get infoNeedDisclaimer =>
      'This list is a general suggestion; also check the latest announcements from your group and the Diyanet (Turkish Presidency of Religious Affairs).';

  @override
  String get infoNeedEmpty =>
      'No items yet. You can add some with \"Add item\".';

  @override
  String infoNeedItemDeleted(String item) {
    return '\"$item\" deleted.';
  }

  @override
  String get infoNeedItemExample => 'e.g. Spare glasses';

  @override
  String get infoNeedItemName => 'Item name';

  @override
  String get infoNeedListTitle => 'Packing List';

  @override
  String get infoNeedMyItem => 'My item';

  @override
  String get infoNeedOther => 'Other';

  @override
  String infoNeedPercent(int percent) {
    return '$percent%';
  }

  @override
  String infoNeedReadyCount(int done, int total) {
    return '$done/$total ready';
  }

  @override
  String get infoNeedReset => 'Reset';

  @override
  String get infoNeedResetAll => 'Reset everything';

  @override
  String get infoNeedResetBody =>
      'All ticks will be cleared. Should the items you added be deleted too?';

  @override
  String get infoNeedResetChecksOnly => 'Ticks only';

  @override
  String get infoNeedResetTitle => 'Reset list';

  @override
  String get infoOpenInGoogleMaps => 'Open in Google Maps';

  @override
  String get infoPedometerNextVersion =>
      'The pedometer will be added in the next version.';

  @override
  String get infoPlacesMeccaTitle => 'Places to Visit in Makkah';

  @override
  String get infoPlacesMedinaTitle => 'Places to Visit in Madinah';

  @override
  String get infoProphetsMosque => 'Prophet\'s Mosque';

  @override
  String get infoShowAll => 'Show all';

  @override
  String get infoShowOnMap => 'Show on map';

  @override
  String get infoTapForDetails => 'Tap for details.';

  @override
  String get infoTechContactUs => 'Contact Us';

  @override
  String get infoTechContactUsBody =>
      'You can contact us about any problem or suggestion regarding the app.';

  @override
  String get infoTechEmail1 => 'First Email';

  @override
  String get infoTechEmail2 => 'Second Email';

  @override
  String get infoTechEmailFailed => 'Could not open the email app';

  @override
  String get infoTechEmails => 'Email Addresses';

  @override
  String get infoTechPhone1 => 'First Phone';

  @override
  String get infoTechPhone2 => 'Second Phone';

  @override
  String get infoTechPhoneFailed => 'Could not open the phone app';

  @override
  String get infoTechPhones => 'Phone Numbers';

  @override
  String get infoTechTitle => 'Technical Support';

  @override
  String get infoTechWhatsAppFailed => 'Could not open WhatsApp';

  @override
  String infoWalkHours(String hours) {
    return '$hours h walk';
  }

  @override
  String infoWalkMinutes(int minutes) {
    return '$minutes min walk';
  }

  @override
  String get kibleArMode => 'AR Mode';

  @override
  String get kibleArSoon => 'AR mode is coming soon';

  @override
  String get kibleCalibrate => 'Calibrate';

  @override
  String get kibleCalibrateStep1 =>
      'Hold your phone and move away from metal objects and magnets.';

  @override
  String get kibleCalibrateStep2 =>
      'Move the phone through the air in a sideways figure 8 several times.';

  @override
  String get kibleCalibrateStep3 =>
      'Rotate the phone with your wrist while moving it.';

  @override
  String get kibleCalibrateTitle => 'Calibrate the Compass';

  @override
  String get kibleCalibrationHint => 'move your phone in a figure 8 in the air';

  @override
  String get kibleCalibrationNeeded => 'Compass calibration needed: ';

  @override
  String get kibleCompassE => 'E';

  @override
  String get kibleCompassN => 'N';

  @override
  String get kibleCompassS => 'S';

  @override
  String get kibleCompassW => 'W';

  @override
  String get kibleDirE => 'East';

  @override
  String get kibleDirN => 'North';

  @override
  String get kibleDirNE => 'North East';

  @override
  String get kibleDirNW => 'North West';

  @override
  String get kibleDirS => 'South';

  @override
  String get kibleDirSE => 'South East';

  @override
  String get kibleDirSW => 'South West';

  @override
  String get kibleDirW => 'West';

  @override
  String kibleDistanceKm(String value) {
    return '$value km';
  }

  @override
  String kibleDistanceM(String value) {
    return '$value m';
  }

  @override
  String get kibleDistanceTitle => 'Your Distance to the Qibla';

  @override
  String get kibleDistanceToKaaba => 'Distance to the Kaaba';

  @override
  String get kibleFacingQibla => 'You are facing the Qibla';

  @override
  String get kibleGettingLocation => 'Getting location…';

  @override
  String get kibleHelp => 'Help';

  @override
  String get kibleHelpText =>
      'Hold your phone parallel to the ground and turn slowly around yourself. When the needle points straight up and the Kaaba badge lines up with the marker at the top, you are facing the Qibla; the phone vibrates gently.\n\nMetal objects, magnetic cases and electronic devices can affect the compass. If you notice a deviation, follow the \"Calibrate\" steps.\n\nThe Qibla angle is calculated relative to true north.';

  @override
  String get kibleLocationFailedText =>
      'Your location could not be determined. Please try again.';

  @override
  String get kibleLocationFailedTitle => 'Location unavailable';

  @override
  String get kibleLocationNotYet => 'Location not available yet';

  @override
  String get kibleMeccaSaudi => 'Mecca, Saudi Arabia';

  @override
  String get kibleNoCompass => 'No compass sensor was found on your device';

  @override
  String get kibleOpenSettings => 'Open settings';

  @override
  String get kiblePermissionDeniedForeverText =>
      'The Qibla direction and distance to the Kaaba are calculated from your location. Location permission was permanently denied; please allow it in settings.';

  @override
  String get kiblePermissionDeniedText =>
      'The Qibla direction and distance to the Kaaba are calculated from your location. Your location is used only for this calculation.';

  @override
  String get kiblePermissionTitle => 'Location permission required';

  @override
  String get kiblePreparingCompass => 'Preparing compass…';

  @override
  String kibleQiblaDegrees(int degrees) {
    return 'Qibla $degrees°';
  }

  @override
  String get kibleQiblaUnknown => 'Qibla —';

  @override
  String get kibleRefreshLocation => 'Refresh location';

  @override
  String get kibleRouteTitle => 'Qibla Route';

  @override
  String get kibleServiceOffText =>
      'Turn on your device\'s location service so the Qibla direction can be calculated.';

  @override
  String get kibleServiceOffTitle => 'Location service is off';

  @override
  String get kibleShowMyLocation => 'Show My Location';

  @override
  String get kibleSoon => 'Soon';

  @override
  String get kibleSubtitle => 'Face the Qibla and turn your heart to peace.';

  @override
  String get kibleTipLabel => 'Tip: ';

  @override
  String get kibleTipText =>
      'Place your device on a flat surface for more accurate results.';

  @override
  String get kibleTitle => 'Qibla Direction';

  @override
  String get kibleTrueNorthNote => '(relative to true north, clockwise)';

  @override
  String get kibleTryAgain => 'Try again';

  @override
  String kibleTurnLeft(int degrees) {
    return 'Turn the phone $degrees° to the left';
  }

  @override
  String kibleTurnRight(int degrees) {
    return 'Turn the phone $degrees° to the right';
  }

  @override
  String get odemeDemoNote =>
      'Demo version: no payment is taken; the package is activated on this device.';

  @override
  String get odemeFailed =>
      'The operation could not be completed. Check your connection and try again.';

  @override
  String get odemeFullNote =>
      'After your payment, our manager approves your request and contacts you to set your travel dates.';

  @override
  String odemePay(String price) {
    return 'Pay $price';
  }

  @override
  String get odemePoweredBy => 'Secured by PayTR';

  @override
  String get odemeProcessing => 'Processing payment';

  @override
  String get odemeProcessingBody => 'Please wait and do not leave this page.';

  @override
  String get odemeRowPackage => 'Package';

  @override
  String get odemeRowPeriod => 'Period';

  @override
  String get odemeRowTotal => 'Total';

  @override
  String get odemeSecureNote =>
      'Payment is made on the PayTR secure payment page. Your card details are not stored in the app.';

  @override
  String get odemeSuccess => 'Payment successful';

  @override
  String get odemeSuccessBody =>
      'Your package is active. You can now enter your journey details.';

  @override
  String get odemeSuccessFull =>
      'Your request has been received. Our manager will contact you for approval and dates.';

  @override
  String get odemeSummary => 'Order summary';

  @override
  String get odemeTitle => 'Payment';

  @override
  String get paketlerAgencyNote =>
      'If you travel with a partner agency, these features are provided free by your agency.';

  @override
  String get paketlerAileF1 => 'Everything in the Umrah Package, for 6 people';

  @override
  String get paketlerAileF2 => 'A live map just for your group';

  @override
  String get paketlerAileF3 => 'In-group internet walkie-talkie';

  @override
  String get paketlerAileName => 'Family / Friends Package';

  @override
  String get paketlerAilePeriod => '30 days · up to 6 people';

  @override
  String get paketlerAilePrice => '€19.99';

  @override
  String get paketlerBackToFree => 'Switch to free plan';

  @override
  String get paketlerBackToFreeBody =>
      'Your package and the journey details you entered will be removed from this device.';

  @override
  String get paketlerBackToFreeDone => 'Switched to the free plan.';

  @override
  String get paketlerBackToFreeTitle => 'Switch to free plan';

  @override
  String get paketlerBestValue => 'Best value per person';

  @override
  String get paketlerBrowse => 'View packages';

  @override
  String get paketlerBuy => 'Buy';

  @override
  String get paketlerCancel => 'Cancel';

  @override
  String get paketlerChooseSub =>
      'Makkah and Madinah countdown, audio guide and more';

  @override
  String get paketlerChooseTitle => 'Choose your package';

  @override
  String get paketlerConfirm => 'Yes, switch';

  @override
  String get paketlerContactUs => 'Contact us';

  @override
  String get paketlerCurrent => 'Your current plan';

  @override
  String get paketlerDiscountLocked =>
      'Merchant discounts are available with paid packages.';

  @override
  String get paketlerEditPlan => 'Edit my dates and hotels';

  @override
  String get paketlerFootnote =>
      'Packages do not renew automatically. The period starts when you purchase.';

  @override
  String get paketlerFreeBadge => 'For everyone';

  @override
  String get paketlerFreeF1 => 'Prayers, the Holy Quran and dhikr counter';

  @override
  String get paketlerFreeF2 => 'Prayer times and qibla';

  @override
  String get paketlerFreeF3 =>
      'Places to visit, Haram gates and transport information';

  @override
  String get paketlerFreeF4 => 'Group Khatm circles';

  @override
  String get paketlerFreeName => 'Free';

  @override
  String get paketlerFreePrice => '€0';

  @override
  String get paketlerFullBadge => 'All inclusive';

  @override
  String get paketlerFullCta => 'Buy';

  @override
  String get paketlerFullF1 => 'Return flight tickets';

  @override
  String get paketlerFullF2 => 'Umrah visa';

  @override
  String get paketlerFullF3 => 'Hotel stay in Makkah and Madinah';

  @override
  String get paketlerFullF4 => 'Food and drinks';

  @override
  String get paketlerFullF5 => 'Airport transfers and intercity transport';

  @override
  String get paketlerFullF6 => 'Saudi Arabia eSIM (data)';

  @override
  String get paketlerFullF7 => 'All app features of the Umrah Package';

  @override
  String get paketlerFullName => 'Full Umrah Package';

  @override
  String get paketlerFullPeriod => '10 days · per person';

  @override
  String get paketlerFullPrice => '\$1,500';

  @override
  String get paketlerIntro =>
      'Planning your Umrah on your own? Choose the package that suits you. The basics are always free.';

  @override
  String get paketlerOnlyBody =>
      'Merchant discounts, points and spending history are available with the Umrah, Family and Full packages.';

  @override
  String get paketlerOnlyTitle => 'For paid packages';

  @override
  String get paketlerPendingBadge => 'Awaiting approval';

  @override
  String get paketlerPendingBody =>
      'Your Full Umrah Package request has been received. After approval, our manager will contact you to set your travel dates.';

  @override
  String get paketlerPendingShort => 'Awaiting approval · contact us';

  @override
  String get paketlerPendingTitle => 'Awaiting approval';

  @override
  String get paketlerPlanHotel => 'Hotel name';

  @override
  String get paketlerPlanIntro =>
      'Enter your stay dates and hotels in Makkah and Madinah. Your countdown cards on the home page use these details.';

  @override
  String get paketlerPlanMedine => 'Madinah';

  @override
  String get paketlerPlanMekke => 'Makkah';

  @override
  String get paketlerPlanPickDates => 'Select check-in and check-out dates';

  @override
  String get paketlerPlanSave => 'Save';

  @override
  String get paketlerPlanSaved => 'Your journey details were saved.';

  @override
  String get paketlerPlanTitle => 'My Journey';

  @override
  String get paketlerQuickSub => 'Umrah and Family packages';

  @override
  String get paketlerRecommended => 'Recommended';

  @override
  String get paketlerTitle => 'Packages';

  @override
  String get paketlerUmreF1 => 'Professional audio guide';

  @override
  String get paketlerUmreF2 => 'Full offline use';

  @override
  String get paketlerUmreF3 => 'Personal Umrah plan';

  @override
  String get paketlerUmreF4 =>
      'Family Tracking: loved ones at home see your location via a link';

  @override
  String get paketlerUmreF5 => 'Merchant discounts';

  @override
  String get paketlerUmreName => 'Umrah Package';

  @override
  String get paketlerUmrePeriod => '30 days · 1 person';

  @override
  String get paketlerUmrePrice => '€9.99';

  @override
  String paketlerYourPackage(String name) {
    return 'Your package: $name';
  }

  @override
  String get platformAdminLogin => 'Admin sign-in';

  @override
  String get platformAgencyInactive =>
      'Your agency is currently inactive. Please contact your agency.';

  @override
  String get platformMaintenanceDefault =>
      'The app is briefly under maintenance. Please try again later.';

  @override
  String get platformMaintenanceTitle => 'Under maintenance';

  @override
  String get platformRetryFailed => 'Could not connect.';

  @override
  String get platformUpdateBody =>
      'Please update to the latest version to keep using the app.';

  @override
  String get platformUpdateButton => 'Update';

  @override
  String get platformUpdateOpenFailed => 'Could not open the link.';

  @override
  String get platformUpdateTitle => 'Update required';

  @override
  String get quranAddBookmark => 'Add bookmark';

  @override
  String quranAgoDays(int count) {
    return '$count days ago';
  }

  @override
  String quranAgoHours(int count) {
    return '$count h ago';
  }

  @override
  String get quranAgoJustNow => 'Just now';

  @override
  String quranAgoMinutes(int count) {
    return '$count min ago';
  }

  @override
  String get quranArabicFontSize => 'Arabic font size';

  @override
  String get quranAyahActions => 'Verse options';

  @override
  String quranAyahBookmarkAdded(String ref) {
    return '$ref added to bookmarks';
  }

  @override
  String quranAyahBookmarkRemoved(String ref) {
    return '$ref removed from bookmarks';
  }

  @override
  String quranAyahCount(int count) {
    return '$count verses';
  }

  @override
  String get quranAyahsLabel => 'Verses';

  @override
  String get quranBack => 'Back';

  @override
  String get quranBookmarkAyah => 'Bookmark verse';

  @override
  String get quranBookmarkPage => 'Bookmark this page';

  @override
  String get quranClear => 'Clear';

  @override
  String get quranContinueReading => 'Continue Reading';

  @override
  String get quranCopied => 'Verse copied to clipboard';

  @override
  String get quranCopy => 'Copy';

  @override
  String get quranDayMode => 'Day mode';

  @override
  String get quranFilter => 'Filter';

  @override
  String get quranFilterAll => 'All surahs';

  @override
  String get quranFilterMeccan => 'Meccan surahs';

  @override
  String get quranFilterMedinan => 'Medinan surahs';

  @override
  String get quranGo => 'Go';

  @override
  String get quranGoToPage => 'Go to page';

  @override
  String quranJuz(int number) {
    final intl.NumberFormat numberNumberFormat =
        intl.NumberFormat.decimalPattern(localeName);
    final String numberString = numberNumberFormat.format(number);

    return 'Juz $numberString';
  }

  @override
  String quranJuzSubtitle(String surah, int ayah, int page) {
    return '$surah, verse $ayah • Page $page';
  }

  @override
  String get quranLast10 => 'Last 10 entries';

  @override
  String get quranListen => 'Listen';

  @override
  String get quranListenAyah => 'Listen to this verse';

  @override
  String get quranListened => 'Listened';

  @override
  String get quranMeal => 'Translation';

  @override
  String get quranMealFailed =>
      'The translation could not be loaded. Please try again later.';

  @override
  String get quranMealOffline =>
      'An internet connection is needed for the translation. Check your connection and try again.';

  @override
  String quranMealSource(String source) {
    return 'Source: $source';
  }

  @override
  String get quranMeccanAdj => 'Meccan';

  @override
  String get quranMedinanAdj => 'Medinan';

  @override
  String get quranNextSurah => 'Next surah';

  @override
  String get quranNightMode => 'Night mode';

  @override
  String get quranNoAyahAudio => 'This reciter has no verse-by-verse recording';

  @override
  String get quranNoBookmarks => 'No bookmarks';

  @override
  String get quranNoBookmarksHint =>
      'Add one by tapping the bookmark icon in the surah list or in the reader.';

  @override
  String get quranNoHistory => 'No history yet';

  @override
  String get quranNoHistoryHint =>
      'Surahs you read and listen to will appear here.';

  @override
  String get quranNoResults => 'No results found';

  @override
  String get quranNoResultsHint =>
      'Try typing the surah name (e.g. Ya-Sin) or its number (e.g. 36 or 2:255).';

  @override
  String quranPage(int page) {
    return 'Page $page';
  }

  @override
  String quranPageBookmarkAdded(int page) {
    return 'Page $page added to bookmarks';
  }

  @override
  String quranPageBookmarkRemoved(int page) {
    return 'Page $page removed from bookmarks';
  }

  @override
  String quranPageJuz(int page, int juz) {
    final intl.NumberFormat juzNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String juzString = juzNumberFormat.format(juz);

    return 'Page $page • Juz $juzString';
  }

  @override
  String quranPageOfTotalJuz(int page, int total, int juz) {
    final intl.NumberFormat juzNumberFormat = intl.NumberFormat.decimalPattern(
      localeName,
    );
    final String juzString = juzNumberFormat.format(juz);

    return 'Page $page / $total • Juz $juzString';
  }

  @override
  String get quranPagesLabel => 'Pages';

  @override
  String quranPercent(int value) {
    return '$value%';
  }

  @override
  String get quranPlaceMeccan => 'Meccan';

  @override
  String get quranPlaceMedinan => 'Medinan';

  @override
  String get quranPlayFailed => 'Audio could not be played. Please try again.';

  @override
  String get quranPreparing => 'Preparing the Mushaf…';

  @override
  String get quranPrevSurah => 'Previous surah';

  @override
  String get quranReciterSelection => 'Reciter';

  @override
  String get quranReciterStyleHafsMurattal => 'Hafs • Murattal';

  @override
  String get quranRemoveBookmark => 'Remove bookmark';

  @override
  String get quranSearchHint => 'Search surah or verse';

  @override
  String get quranSettings => 'Settings';

  @override
  String get quranStartReading => 'Start Reading';

  @override
  String get quranStop => 'Stop';

  @override
  String get quranStopAyah => 'Stop';

  @override
  String get quranStreamingNote =>
      'Recitations are streamed from the internet.';

  @override
  String get quranSubtitle => 'Read to find peace, live to understand.';

  @override
  String quranSurahBookmarkAdded(String surah) {
    return '$surah added to bookmarks';
  }

  @override
  String quranSurahBookmarkRemoved(String surah) {
    return '$surah removed from bookmarks';
  }

  @override
  String quranSurahCount(int count) {
    return '$count surahs';
  }

  @override
  String quranSurahTitle(String name) {
    return '$name';
  }

  @override
  String get quranTabBookmarks => 'Bookmarks';

  @override
  String get quranTabJuz => 'Juz';

  @override
  String get quranTabRecents => 'Recent';

  @override
  String get quranTabSurahs => 'Surahs';

  @override
  String get quranTextLoadFailed => 'The Quran text could not be loaded.';

  @override
  String get quranTextSource => 'Text source';

  @override
  String get quranTextSourceBody =>
      'Quran text: Tanzil Project (tanzil.net), Hafs narration, Uthmani script. Page layout: 604-page Madinah Mushaf. Font: Amiri Quran (SIL Open Font License). Translations: quran.com.';

  @override
  String get quranTitle => 'The Holy Quran';

  @override
  String get rolesAgencyAdmin => 'Agency Admin';

  @override
  String get rolesFinance => 'Finance';

  @override
  String get rolesGuest => 'Guest';

  @override
  String get rolesManager => 'Manager';

  @override
  String get rolesManagerDesc => 'All agencies';

  @override
  String get rolesMerchant => 'Merchant';

  @override
  String get rolesNoAccess => 'You are not authorized to access this section';

  @override
  String get rolesSelectAgencyFirst => 'Select an agency first';

  @override
  String get rolesStaff => 'Staff';

  @override
  String get rolesSuperAdmin => 'Super Admin';

  @override
  String get rolesSupport => 'Support';

  @override
  String get shopsAbout => 'About';

  @override
  String shopsActivated(String name) {
    return '$name activated.';
  }

  @override
  String get shopsActive => 'Active';

  @override
  String get shopsActiveSub => 'Inactive shops are hidden from guests.';

  @override
  String get shopsAdd => 'Add Shop';

  @override
  String get shopsAdded => 'Shop added.';

  @override
  String get shopsAddress => 'Address';

  @override
  String get shopsAdminLoadFailed => 'Could not load shops.';

  @override
  String get shopsAgency => 'Agency';

  @override
  String get shopsAll => 'All';

  @override
  String get shopsAllAgencies => 'All agencies';

  @override
  String get shopsCall => 'Call';

  @override
  String get shopsCamera => 'Camera';

  @override
  String shopsCameraFailed(String code) {
    return 'Could not open the camera. Check the camera permission.\n($code)';
  }

  @override
  String get shopsCatBooks => 'Books & Prayer Beads';

  @override
  String get shopsCatDatesFood => 'Dates & Food';

  @override
  String get shopsCatGifts => 'Gifts & Souvenirs';

  @override
  String get shopsCatJeweler => 'Jeweler';

  @override
  String get shopsCatOther => 'Other';

  @override
  String get shopsCatPerfume => 'Perfume & Musk';

  @override
  String get shopsCatRestaurant => 'Restaurant & Café';

  @override
  String get shopsCatTextile => 'Textiles & Ihram';

  @override
  String get shopsCategory => 'Category';

  @override
  String get shopsCity => 'City';

  @override
  String get shopsCityJeddah => 'Jeddah';

  @override
  String get shopsCityOther => 'Other';

  @override
  String get shopsCodeGuestTitle => 'My Umrah Guide Guest';

  @override
  String get shopsCodeShowAtCheckout =>
      'Please show this screen to the shopkeeper at checkout.';

  @override
  String get shopsCodeVerifyLater =>
      'Will be verified once the merchant panel is ready.';

  @override
  String get shopsContactSection => 'Contact';

  @override
  String shopsDeactivated(String name) {
    return '$name deactivated.';
  }

  @override
  String shopsDeleteConfirm(String name) {
    return 'Delete \"$name\"? This cannot be undone.';
  }

  @override
  String shopsDeleteFailed(String error) {
    return 'Could not delete: $error';
  }

  @override
  String get shopsDeleteTitle => 'Delete shop';

  @override
  String get shopsDeleted => 'Shop deleted.';

  @override
  String get shopsDescription => 'Description';

  @override
  String get shopsDetailsSection => 'Shop Details';

  @override
  String get shopsDirections => 'Directions';

  @override
  String get shopsDiscountBadge => 'OFF';

  @override
  String get shopsDiscountNotNumber => 'Enter a number (0-100)';

  @override
  String get shopsDiscountNote => 'Discount note';

  @override
  String get shopsDiscountNoteHint => 'e.g. Valid for cash purchases';

  @override
  String shopsDiscountPercent(int percent) {
    return '$percent% OFF';
  }

  @override
  String get shopsDiscountPercentHint => 'e.g. 15';

  @override
  String shopsDiscountPercentLower(int percent) {
    return '$percent% off';
  }

  @override
  String get shopsDiscountPercentRequired => 'Discount percentage *';

  @override
  String get shopsDiscountRange => 'Must be between 0 and 100';

  @override
  String get shopsDiscountSection => 'Discount';

  @override
  String get shopsEdit => 'Edit Shop';

  @override
  String get shopsEmpty => 'No partner shops added yet.';

  @override
  String get shopsEmptyAdminHint => 'Start with the \"Add Shop\" button.';

  @override
  String get shopsFixFields => 'Please correct the highlighted fields.';

  @override
  String get shopsForAllAgencies => 'Open to all agencies';

  @override
  String get shopsForAllAgenciesSub =>
      'Guests of every agency will see this shop.';

  @override
  String get shopsGallery => 'Gallery';

  @override
  String get shopsGuest => 'Guest';

  @override
  String shopsImagePickFailed(String error) {
    return 'Could not select image: $error';
  }

  @override
  String get shopsInfo => 'Details';

  @override
  String get shopsInfoBanner =>
      'Show the QR code at these shops to prove you are a My Umrah Guide guest and get a discount.';

  @override
  String get shopsInvalid => 'Invalid';

  @override
  String get shopsLatLngBoth =>
      'Enter both latitude and longitude, or leave both empty.';

  @override
  String get shopsLatitude => 'Latitude';

  @override
  String get shopsLinkOpenFailed => 'Could not open the link.';

  @override
  String get shopsListView => 'List';

  @override
  String get shopsLoadFailed =>
      'Could not load shops. Check your internet connection.';

  @override
  String get shopsLocFailed => 'Could not get the location.';

  @override
  String get shopsLocPermissionDenied => 'Location permission was not granted.';

  @override
  String get shopsLocServiceOff => 'Location services are off.';

  @override
  String get shopsLocation => 'Location';

  @override
  String get shopsLogo => 'Logo';

  @override
  String shopsLogoAdded(int size) {
    return 'Logo added ($size KB).';
  }

  @override
  String shopsLogoTooLarge(int size) {
    return 'Logo is too large ($size KB). Choose a smaller image.';
  }

  @override
  String get shopsLongitude => 'Longitude';

  @override
  String get shopsMapView => 'Map';

  @override
  String shopsMerchantCode(String code) {
    return 'Merchant code: $code  (for the merchant panel)';
  }

  @override
  String shopsMissingLocation(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count shops have no location and are not shown on the map.',
      one: '1 shop has no location and is not shown on the map.',
    );
    return '$_temp0';
  }

  @override
  String get shopsNameMissing => 'Name is required';

  @override
  String get shopsNameRequired => 'Shop name *';

  @override
  String get shopsNoMatch => 'No shops match this filter.';

  @override
  String shopsOrderSaveFailed(String error) {
    return 'Could not save the order: $error';
  }

  @override
  String shopsPercent(int percent) {
    return '$percent%';
  }

  @override
  String get shopsPhone => 'Phone';

  @override
  String get shopsPickerHint =>
      'Tap the shop\'s spot on the map to drop a pin.';

  @override
  String get shopsPublishSection => 'Publishing';

  @override
  String get shopsQrExplain =>
      'The shop\'s \"referred by us\" code. Guests show this QR on the discount screen. If left empty, a guest-specific verification code is generated.';

  @override
  String get shopsQrManual => 'Enter manually (text or link)';

  @override
  String get shopsQrScanHint => 'Place the shop\'s QR code inside the frame.';

  @override
  String get shopsQrScanTitle => 'Scan QR Code';

  @override
  String get shopsQrScanWithCamera => 'Scan with camera';

  @override
  String get shopsQrScanned => 'QR code scanned.';

  @override
  String get shopsQrSection => 'QR Code';

  @override
  String get shopsRemove => 'Remove';

  @override
  String get shopsRemoveLocation => 'Remove location';

  @override
  String get shopsReorderHint => 'Drag the handle to reorder.';

  @override
  String shopsSaveFailed(String error) {
    return 'Could not save: $error';
  }

  @override
  String get shopsSaving => 'Saving...';

  @override
  String get shopsSearchHint => 'Search shops';

  @override
  String get shopsSelectAgency =>
      'Select an agency or turn on \"Open to all agencies\".';

  @override
  String get shopsSharedSection =>
      'Open to all agencies (managed by super admin)';

  @override
  String get shopsShowMyCode => 'Show My Discount Code';

  @override
  String get shopsSpecialPrice => 'SPECIAL PRICE';

  @override
  String get shopsSpecialPriceLower => 'Special price';

  @override
  String get shopsTitle => 'Partner Shops';

  @override
  String get shopsTorch => 'Flashlight';

  @override
  String shopsUpdateFailed(String error) {
    return 'Could not update: $error';
  }

  @override
  String get shopsUpdated => 'Shop updated.';

  @override
  String get shopsUseMyLocation => 'Use my current location';

  @override
  String get shopsWhatsappHint => 'With country code, e.g. 9665xxxxxxxx';

  @override
  String get shopsWorkingHours => 'Opening hours';

  @override
  String get shopsWorkingHoursHint => 'e.g. 09:00 - 23:00';

  @override
  String simApproximate(String place) {
    return '$place (approx.)';
  }

  @override
  String get simAutoPlay => 'Auto play';

  @override
  String get simCircuit => 'Circuit';

  @override
  String get simContinue => 'Continue';

  @override
  String get simFirstThreeRaml => 'First 3 circuits: men perform Raml';

  @override
  String get simIstilam => 'Istilam';

  @override
  String get simNext => 'Next';

  @override
  String get simNormalWalk => 'Normal walking';

  @override
  String get simPause => 'Pause';

  @override
  String get simPrayBehindMaqam =>
      'Two rak‘ahs of Tawaf prayer are performed behind Maqam Ibrahim.';

  @override
  String get simPrevious => 'Previous';

  @override
  String get simReplay => 'Play again';

  @override
  String get simReset => 'Reset';

  @override
  String get simRouteTitle => 'Umrah Route Simulation';

  @override
  String get simSaiDuas => 'Sa\'i Supplications';

  @override
  String simSaiLap(int lap) {
    return 'Sa\'i: lap $lap';
  }

  @override
  String get simSevenCircuitsDone => '7 circuits completed';

  @override
  String simSpeed(String speed) {
    return '${speed}x';
  }

  @override
  String get simStart => 'Start';

  @override
  String get simStartOver => 'Start over';

  @override
  String simStepOf(int step, int total) {
    return 'Step $step/$total';
  }

  @override
  String get simStop => 'Stop';

  @override
  String get simSupplicationToRecite => 'Supplication to recite';

  @override
  String get simTawafCompleted => 'Tawaf completed';

  @override
  String get simTawafDuas => 'Tawaf Supplications';

  @override
  String get simTawafEssentials => 'What to know about Tawaf';

  @override
  String get simTawafSource =>
      'Source: Diyanet İşleri Başkanlığı Hajj and Umrah publications; Al-Baqarah 2:201.';

  @override
  String get simThingsToNote => 'Things to note';

  @override
  String get simWhatToDo => 'What to do?';

  @override
  String get telsizAllAgency => 'Entire agency';

  @override
  String get telsizBroadcastGroup => 'Broadcast group';

  @override
  String get telsizCheckInternet => 'Check your internet connection.';

  @override
  String get telsizConnectFailed => 'Could not connect. Please try again.';

  @override
  String get telsizConnecting => 'Connecting…';

  @override
  String get telsizConnectionLost => 'Connection lost, reconnecting…';

  @override
  String get telsizDuplicateIdentity =>
      'This account has connected from another device.';

  @override
  String get telsizDuration => 'Duration';

  @override
  String get telsizEnd => 'End';

  @override
  String get telsizEndBroadcast => 'End Broadcast';

  @override
  String get telsizEndBroadcastConfirm =>
      'The live broadcast will end. Are you sure?';

  @override
  String get telsizEndBroadcastTitle => 'End broadcast';

  @override
  String get telsizEnded => 'The broadcast has ended';

  @override
  String get telsizGuest => 'Guest';

  @override
  String get telsizGuide => 'Guide';

  @override
  String get telsizGuideHint =>
      'The broadcast continues even if you turn off the screen. Don\'t forget to end it; your guests can only listen, not speak.';

  @override
  String get telsizGuideNotLive => 'Your guide is not live right now';

  @override
  String get telsizGuideNotLiveBody =>
      'When your guide starts a radio broadcast, it will appear here. On tours and in crowded areas you can listen to your guide live from here.';

  @override
  String get telsizGuideVoice => 'Guide\'s voice';

  @override
  String get telsizListen => 'Listen';

  @override
  String get telsizListenerHint =>
      'Using headphones is recommended. You can keep listening even with the screen off.';

  @override
  String get telsizListeners => 'Listeners';

  @override
  String get telsizListening => 'Listening';

  @override
  String get telsizLiveBadge => 'LIVE';

  @override
  String get telsizLiveNow => 'Live now';

  @override
  String get telsizLoginRequired => 'You must log in to use the radio.';

  @override
  String get telsizMicLevel => 'Microphone level';

  @override
  String get telsizMicPermanentlyDenied =>
      'Microphone permission is off. Enable it in Settings.';

  @override
  String get telsizMicRequired =>
      'Microphone permission is required to broadcast.';

  @override
  String get telsizMute => 'Mute';

  @override
  String get telsizNoAgency => 'Agency information not found.';

  @override
  String get telsizNoAgencyHint =>
      'The radio is available for accounts linked to your agency.';

  @override
  String get telsizNoInternet =>
      'No internet connection or the server is unreachable.';

  @override
  String get telsizNoPermission => 'You are not authorized to use the radio.';

  @override
  String get telsizNotConfiguredBody =>
      'Live audio server details have not been entered yet. Please contact technical support.';

  @override
  String get telsizNotConfiguredError => 'Radio is not configured.';

  @override
  String get telsizNotConfiguredTitle => 'Radio is not configured';

  @override
  String get telsizNotConnected => 'Not connected';

  @override
  String get telsizNotifBroadcastText =>
      'Your guests are listening. Return to the app to end.';

  @override
  String get telsizNotifBroadcastTitle => 'Radio on air – Guide';

  @override
  String get telsizNotifGuestsListening => 'Your guests are listening.';

  @override
  String telsizNotifListeningText(String name) {
    return '$name\'s broadcast. Return to the app to close.';
  }

  @override
  String get telsizNotifListeningTitle => 'Listening to radio';

  @override
  String get telsizNotifMicOff => 'Microphone is off.';

  @override
  String get telsizOffAir => 'You are not on air';

  @override
  String get telsizOnAir => 'You are on air';

  @override
  String get telsizOnAirMuted => 'On air – microphone off';

  @override
  String get telsizReconnecting => 'Reconnecting…';

  @override
  String telsizServerDenied(int code) {
    return 'Could not get authorization from the radio server ($code).';
  }

  @override
  String get telsizStartBroadcast => 'Start Broadcast';

  @override
  String get telsizStatusError => 'Could not load broadcast information.';

  @override
  String get telsizStatusSaveDenied =>
      'Could not save broadcast status: permission denied.';

  @override
  String get telsizStop => 'Stop';

  @override
  String get telsizTitle => 'Radio';

  @override
  String get telsizToAllAgency => 'Broadcast to the entire agency';

  @override
  String get telsizToYourTrip => 'Broadcast to your trip';

  @override
  String get telsizTrip => 'Trip';

  @override
  String get telsizUnmute => 'Unmute';

  @override
  String get telsizVolumeKeysHint =>
      'You can also use your phone\'s volume buttons.';

  @override
  String get telsizWaitingGuide => 'Connected, waiting for the guide\'s voice…';
}

// KURTARILAN İSKELET: lib/features/super_admin/widgets/agency_detail/calendar_tab.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class _CalendarTabState extends State<dynamic> {
  // _ initState(/* No info */)

  // [closure] void <anonymous closure>(dynamic, Duration)
  //   çağrı: _CalendarTabState._loadCalendarEvents   [umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart]

  // _ _loadCalendarEvents(/* No info */)
  //   çağrı: .ReadContext.read   [provider/src/provider.dart]
  //   çağrı: EventProvider.loadEventsByDate   [umrem_demo/features/admin/providers/event_provider.dart]

  // _ build(/* No info */)
  //   Widget/nesneler: Consumer<X0>

  // [closure] Column <anonymous closure>(dynamic, BuildContext, EventProvider, Widget?)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Text, Column, RoundedRectangleBorder, _TextButtonWithIcon, Row, Expanded, Container, Padding, ListView
  //   Metinler: 'Önceki' | 'Gün Seç' | 'Sonraki'
  //   çağrı: .formatDayOfWeek   [umrem_demo/core/utils/date_input_formatter.dart]
  //   çağrı: .formatDate   [umrem_demo/core/utils/date_input_formatter.dart]
  //   çağrı: _CalendarTabState._buildCalendarNavButton   [umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart]
  //   çağrı: _CalendarTabState._buildCalendarEmptyState   [umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart]

  // _ _buildCalendarEmptyState(/* No info */)
  //   Widget/nesneler: BoxDecoration, Icon, Container, Radius, BorderRadius, RoundedRectangleBorder, _ElevatedButtonWithIcon, Column, Center

  // _ _buildCalendarNavButton(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Icon, Text, Row, Container, InkWell, Material

  // [closure] Padding <anonymous closure>(dynamic, BuildContext, int)
  //   Widget/nesneler: Padding
  //   çağrı: EventProvider.getEndTime   [umrem_demo/features/admin/providers/event_provider.dart]
  //   çağrı: _CalendarTabState._buildCalendarEventCard   [umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart]

  // _ _buildCalendarEventCard(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Container, Text, Expanded, TextStyle, Row, Column, Padding, InkWell, Material
  //   Metinler: 'Yaklaşan' | 'Geçmiş' | ' - '
  //   çağrı: _CalendarTabState._isEventUpcoming   [umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart]

  // _ _isEventUpcoming(/* No info */)
  //   Widget/nesneler: DateTime
  //   Metinler: ':'

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: .showAddEditDialog   [umrem_demo/features/admin/widgets/events/edit_dialog.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: _CalendarTabState._loadCalendarEvents   [umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: .pickDate   [umrem_demo/features/admin/widgets/events/pick_date_dialog.dart]

  // [closure] Null <anonymous closure>(dynamic, DateTime)
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: _CalendarTabState._loadCalendarEvents   [umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: _CalendarTabState._loadCalendarEvents   [umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart]

  // [closure] void _showAddEventDialog(dynamic)
  //   çağrı: _CalendarTabState._showAddEventDialog   [umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart]

  // _ _showAddEventDialog(/* No info */)
  //   çağrı: .showAddEditDialog   [umrem_demo/features/admin/widgets/events/edit_dialog.dart]

}

class CalendarTab extends StatefulWidget {
  // _ createState(/* No info */)
  //   Widget/nesneler: DateTime, _CalendarTabState

}

// KURTARILAN İSKELET: lib/features/home/screens/takvim_screen.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class TakvimScreenState extends State<dynamic> {
  // _ initState(/* No info */)
  //   Widget/nesneler: DateTime, PageController

  // [closure] void <anonymous closure>(dynamic, Duration)
  //   çağrı: .ReadContext.read   [provider/src/provider.dart]
  //   çağrı: EventProvider.loadEventsByDate   [umrem_demo/features/admin/providers/event_provider.dart]

  // [closure] Theme <anonymous closure>(dynamic, BuildContext, Widget?)
  //   Widget/nesneler: ColorScheme, Theme

  // _ _showDatePicker(/* No info */)
  //   Widget/nesneler: DateTime
  //   çağrı: .ReadContext.read   [provider/src/provider.dart]

  // [closure] Null <anonymous closure>(dynamic, DateTime?)
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: EventProvider.selectDate   [umrem_demo/features/admin/providers/event_provider.dart]

  // [closure] void <anonymous closure>(dynamic)

  // [closure] void _showDatePicker(dynamic)
  //   çağrı: TakvimScreenState._showDatePicker   [umrem_demo/features/home/screens/takvim_screen.dart]

  // _ build(/* No info */)
  //   Widget/nesneler: TextStyle, Text, AppBar, Consumer<X0>, SafeArea, Scaffold
  //   Metinler: 'Program Takvimi'

  // [closure] Column <anonymous closure>(dynamic, BuildContext, EventProvider, Widget?)
  //   Widget/nesneler: Radius, BorderRadius, BoxShadow, BoxDecoration, TextStyle, Text, Expanded, Row, Column, Container, Padding, CircularProgressIndicator, Center, ListView
  //   Metinler: 'Önceki' | 'Gün Seç' | 'Sonraki'
  //   çağrı: TakvimScreenState._formatDayOfWeek   [umrem_demo/features/home/screens/takvim_screen.dart]
  //   çağrı: TakvimScreenState._formatDate   [umrem_demo/features/home/screens/takvim_screen.dart]
  //   çağrı: TakvimScreenState._buildNavButton   [umrem_demo/features/home/screens/takvim_screen.dart]
  //   çağrı: TakvimScreenState._buildEmptyState   [umrem_demo/features/home/screens/takvim_screen.dart]

  // _ _buildEmptyState(/* No info */)
  //   Widget/nesneler: BoxDecoration, Icon, Container, TextStyle, Text, Column, Center
  //   Metinler: 'Bu gün için etkinlik yok' | 'Başka bir gün seçerek etkinlikleri görüntüleyin'

  // _ _buildNavButton(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Icon, Text, Row, Container, InkWell

  // _ _formatDate(/* No info */)
  //   Widget/nesneler: DateFormat
  //   Metinler: 'tr_TR' | 'd MMMM y'
  //   çağrı: DateFormat.DateFormat   [intl/src/intl/date_format.dart]
  //   çağrı: DateFormat.format   [intl/src/intl/date_format.dart]

  // _ _formatDayOfWeek(/* No info */)
  //   Widget/nesneler: DateFormat
  //   Metinler: 'tr_TR' | 'EEEE'
  //   çağrı: DateFormat.DateFormat   [intl/src/intl/date_format.dart]
  //   çağrı: DateFormat.format   [intl/src/intl/date_format.dart]

  // [closure] Padding <anonymous closure>(dynamic, BuildContext, int)
  //   Widget/nesneler: Padding
  //   çağrı: EventProvider.getEndTime   [umrem_demo/features/admin/providers/event_provider.dart]
  //   çağrı: TakvimScreenState._buildEventCard   [umrem_demo/features/home/screens/takvim_screen.dart]

  // _ _buildEventCard(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BoxShadow, BoxDecoration, Container, Text, Expanded, Icon, TextStyle, Row, Flexible, Column, Padding, InkWell, Material
  //   Metinler: ' - ' | 'Yaklaşan' | 'Gerçekleşti'
  //   çağrı: TakvimScreenState._isUpcoming   [umrem_demo/features/home/screens/takvim_screen.dart]

  // _ _isUpcoming(/* No info */)
  //   Widget/nesneler: DateTime
  //   çağrı: TakvimScreenState._parseTime   [umrem_demo/features/home/screens/takvim_screen.dart]

  // _ _parseTime(/* No info */)
  //   Widget/nesneler: TimeOfDay
  //   Metinler: ':'

  // [closure] void _nextDay(dynamic)
  //   çağrı: TakvimScreenState._nextDay   [umrem_demo/features/home/screens/takvim_screen.dart]

  // _ _nextDay(/* No info */)
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: .ReadContext.read   [provider/src/provider.dart]
  //   çağrı: EventProvider.selectDate   [umrem_demo/features/admin/providers/event_provider.dart]

  // [closure] void <anonymous closure>(dynamic)

  // [closure] void _previousDay(dynamic)
  //   çağrı: TakvimScreenState._previousDay   [umrem_demo/features/home/screens/takvim_screen.dart]

  // _ _previousDay(/* No info */)
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: .ReadContext.read   [provider/src/provider.dart]
  //   çağrı: EventProvider.selectDate   [umrem_demo/features/admin/providers/event_provider.dart]

  // [closure] void <anonymous closure>(dynamic)

  // dynamic dispose(dynamic)

  // [closure] void dispose(dynamic)
  //   çağrı: TakvimScreenState.dispose   [umrem_demo/features/home/screens/takvim_screen.dart]

  // _ dispose(/* No info */)

}

class TakvimScreen extends StatefulWidget {
  // _ createState(/* No info */)
  //   Widget/nesneler: TakvimScreenState

}

// KURTARILAN İSKELET: lib/features/adimsayar/step_counter_view.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class _StepCounterViewState extends State<dynamic> {
  // _ initState(/* No info */)
  //   çağrı: _StepCounterViewState.init   [umrem_demo/features/adimsayar/step_counter_view.dart]

  // _ init(/* No info */) async
  //   Widget/nesneler: StepController
  //   çağrı: CacheHelper.init   [umrem_demo/features/adimsayar/cash_helper.dart]
  //   çağrı: .Inst.isRegistered   [get/get_instance/src/extension_instance.dart]
  //   çağrı: StepController.StepController   [umrem_demo/features/adimsayar/step_controller.dart]
  //   çağrı: .Inst.put   [get/get_instance/src/extension_instance.dart]
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: _StepCounterViewState.checkAndRequestStepPermission   [umrem_demo/features/adimsayar/step_counter_view.dart]
  //   çağrı: StepController.initPlatformState   [umrem_demo/features/adimsayar/step_controller.dart]

  // _ checkAndRequestStepPermission(/* No info */) async
  //   çağrı: .PermissionActions.status   [permission_handler/permission_handler.dart]
  //   çağrı: .PermissionActions.request   [permission_handler/permission_handler.dart]

  // [closure] void <anonymous closure>(dynamic)
  //   çağrı: .Inst.find   [get/get_instance/src/extension_instance.dart]

  // _ build(/* No info */)
  //   Widget/nesneler: ScreenUtilInit

  // [closure] Scaffold <anonymous closure>(dynamic, BuildContext, Widget?)
  //   Widget/nesneler: BoxDecoration, Icon, IconButton, Container, Radius, BorderRadius, TextStyle, Text, AppBar, EdgeInsets, Obx, SizedBox, Offset, BoxShadow, Align, Center, Row, Stack, Padding, Expanded, Column, SingleChildScrollView, Scaffold
  //   Metinler: 'Adım Sayar' | 'Mesafe' | 'km' | 'Kalori' | 'kcal' | 'Süre' | 'Son 7 Gün' | 'Günlük Ortalama'
  //   çağrı: .SizeExtension.w   [flutter_screenutil/src/size_extension.dart]
  //   çağrı: .SizeExtension.h   [flutter_screenutil/src/size_extension.dart]
  //   çağrı: .SizeExtension.r   [flutter_screenutil/src/size_extension.dart]
  //   çağrı: .SizeExtension.sp   [flutter_screenutil/src/size_extension.dart]
  //   çağrı: Theme.of   [flutter/src/material/theme.dart]

  // [closure] BarChart <anonymous closure>(dynamic)
  //   Widget/nesneler: BarTouchTooltipData, BarTouchData, FlBorderData, FlGridData, SideTitles, AxisTitles, FlTitlesData, BarChartData, BarChart
  //   çağrı: _StepCounterViewState.buildBarGroups   [umrem_demo/features/adimsayar/step_counter_view.dart]
  //   çağrı: BarChartData.BarChartData   [fl_chart/src/chart/bar_chart/bar_chart_data.dart]

  // _ buildBarGroups(/* No info */)
  //   Widget/nesneler: DateTime
  //   Tipler: BarChartGroupData

  // [closure] BarChartGroupData <anonymous closure>(dynamic, int)
  //   Widget/nesneler: _CompactKeysIterable<X0>
  //   çağrı: RxMap.value   [get/get_rx/src/rx_types/rx_types.dart]
  //   çağrı: _GrowableList._GrowableList._ofEfficientLengthIterable   [dart:core]
  //   çağrı: RxMap.[]   [get/get_rx/src/rx_types/rx_types.dart]
  //   çağrı: _StepCounterViewState.makeGroup   [umrem_demo/features/adimsayar/step_counter_view.dart]

  // _ makeGroup(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BarChartRodData, BarChartGroupData
  //   çağrı: .SizeExtension.w   [flutter_screenutil/src/size_extension.dart]
  //   çağrı: .SizeExtension.r   [flutter_screenutil/src/size_extension.dart]
  //   çağrı: Theme.of   [flutter/src/material/theme.dart]
  //   çağrı: BarChartRodData.BarChartRodData   [fl_chart/src/chart/bar_chart/bar_chart_data.dart]
  //   çağrı: BarChartGroupData.BarChartGroupData   [fl_chart/src/chart/bar_chart/bar_chart_data.dart]

  // [closure] Text <anonymous closure>(dynamic, double, TitleMeta)
  //   Widget/nesneler: _CompactKeysIterable<X0>, Text
  //   çağrı: RxMap.value   [get/get_rx/src/rx_types/rx_types.dart]
  //   çağrı: _GrowableList._GrowableList._ofEfficientLengthIterable   [dart:core]

  // [closure] BarTooltipItem <anonymous closure>(dynamic, BarChartGroupData, int, BarChartRodData, int)
  //   Widget/nesneler: BarTooltipItem

  // [closure] RichText <anonymous closure>(dynamic)
  //   Widget/nesneler: _MapBaseValueIterable<C1X0,, TextStyle, TextSpan, RichText
  //   Metinler: '  ' | 'adım'
  //   çağrı: _GrowableList._GrowableList._ofEfficientLengthIterable   [dart:core]
  //   çağrı: .SizeExtension.sp   [flutter_screenutil/src/size_extension.dart]

  // [closure] int <anonymous closure>(dynamic, int, int)

  // [closure] Text <anonymous closure>(dynamic)
  //   Widget/nesneler: TextStyle, Text
  //   çağrı: StepController.walkingTimeText   [umrem_demo/features/adimsayar/step_controller.dart]
  //   çağrı: .SizeExtension.sp   [flutter_screenutil/src/size_extension.dart]

  // [closure] Text <anonymous closure>(dynamic)
  //   Widget/nesneler: TextStyle, Text
  //   çağrı: __RxImpl&RxNotifier&RxObjectMixin.value   [get/get_rx/src/rx_types/rx_types.dart]
  //   çağrı: .SizeExtension.sp   [flutter_screenutil/src/size_extension.dart]

  // [closure] Text <anonymous closure>(dynamic)
  //   Widget/nesneler: TextStyle, Text
  //   çağrı: __RxImpl&RxNotifier&RxObjectMixin.value   [get/get_rx/src/rx_types/rx_types.dart]
  //   çağrı: .SizeExtension.sp   [flutter_screenutil/src/size_extension.dart]

  // [closure] Text <anonymous closure>(dynamic)
  //   Widget/nesneler: TextStyle, Text
  //   çağrı: __RxImpl&RxNotifier&RxObjectMixin.value   [get/get_rx/src/rx_types/rx_types.dart]
  //   çağrı: .SizeExtension.sp   [flutter_screenutil/src/size_extension.dart]

}

class StepCounterView extends StatefulWidget {
  // _ createState(/* No info */)
  //   Widget/nesneler: _StepCounterViewState

}

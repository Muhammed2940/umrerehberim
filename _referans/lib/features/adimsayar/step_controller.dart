// KURTARILAN İSKELET: lib/features/adimsayar/step_controller.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class StepController extends GetxController {
  // _ initPlatformState(/* No info */) async
  //   çağrı: StepController.getBaseStep   [umrem_demo/features/adimsayar/step_controller.dart]
  //   çağrı: StepController.getWalkingTime   [umrem_demo/features/adimsayar/step_controller.dart]
  //   çağrı: StepController.getLast7DaysSteps   [umrem_demo/features/adimsayar/step_controller.dart]
  //   çağrı: Pedometer.pedestrianStatusStream   [pedometer/pedometer.dart]
  //   çağrı: Pedometer.stepCountStream   [pedometer/pedometer.dart]

  // _ getLast7DaysSteps(/* No info */) async
  //   Widget/nesneler: DateTime
  //   Metinler: 'sp'
  //   çağrı: CacheHelper.getInt   [umrem_demo/features/adimsayar/cash_helper.dart]
  //   çağrı: _RxMap&MapMixin&NotifyManager&RxObjectMixin.value=   [get/get_rx/src/rx_types/rx_types.dart]

  // _ getWalkingTime(/* No info */) async
  //   Widget/nesneler: DateTime, Duration
  //   Metinler: 'wt'
  //   çağrı: CacheHelper.getInt   [umrem_demo/features/adimsayar/cash_helper.dart]
  //   çağrı: __RxImpl&RxNotifier&RxObjectMixin.value=   [get/get_rx/src/rx_types/rx_types.dart]

  // _ getBaseStep(/* No info */) async
  //   Widget/nesneler: DateTime
  //   Metinler: 'bsp'
  //   çağrı: CacheHelper.getInt   [umrem_demo/features/adimsayar/cash_helper.dart]

  // [closure] void onPedestrianStatusChanged(dynamic, PedestrianStatus)
  //   çağrı: StepController.onPedestrianStatusChanged   [umrem_demo/features/adimsayar/step_controller.dart]

  // _ onPedestrianStatusChanged(/* No info */)
  //   Widget/nesneler: DateTime
  //   Metinler: 'walking'
  //   çağrı: __RxImpl&RxNotifier&RxObjectMixin.value=   [get/get_rx/src/rx_types/rx_types.dart]
  //   çağrı: StepController._startWalkingTimer   [umrem_demo/features/adimsayar/step_controller.dart]
  //   çağrı: StepController._stopWalkingTimer   [umrem_demo/features/adimsayar/step_controller.dart]

  // _ _stopWalkingTimer(/* No info */)

  // _ _startWalkingTimer(/* No info */)

  // [closure] void <anonymous closure>(dynamic, Timer)
  //   Widget/nesneler: Duration
  //   çağrı: __RxImpl&RxNotifier&RxObjectMixin.value   [get/get_rx/src/rx_types/rx_types.dart]
  //   çağrı: __RxImpl&RxNotifier&RxObjectMixin.value=   [get/get_rx/src/rx_types/rx_types.dart]
  //   çağrı: StepController.saveWalkingTime   [umrem_demo/features/adimsayar/step_controller.dart]

  // _ saveWalkingTime(/* No info */) async
  //   Widget/nesneler: DateTime
  //   Metinler: 'wt'
  //   çağrı: CacheHelper.saveInt   [umrem_demo/features/adimsayar/cash_helper.dart]

  // [closure] void onStepCount(dynamic, StepCount)
  //   çağrı: StepController.onStepCount   [umrem_demo/features/adimsayar/step_controller.dart]

  // _ onStepCount(/* No info */)
  //   Widget/nesneler: DateTime
  //   Metinler: 'sp'
  //   çağrı: StepController.saveBaseStep   [umrem_demo/features/adimsayar/step_controller.dart]
  //   çağrı: __RxImpl&RxNotifier&RxObjectMixin.value=   [get/get_rx/src/rx_types/rx_types.dart]
  //   çağrı: __RxImpl&RxNotifier&RxObjectMixin.value   [get/get_rx/src/rx_types/rx_types.dart]
  //   çağrı: CacheHelper.saveInt   [umrem_demo/features/adimsayar/cash_helper.dart]

  // _ saveBaseStep(/* No info */) async
  //   Widget/nesneler: DateTime
  //   Metinler: 'bsp'
  //   çağrı: CacheHelper.saveInt   [umrem_demo/features/adimsayar/cash_helper.dart]

  // _ StepController(/* No info */)
  //   Widget/nesneler: DateTime
  //   çağrı: .IntExtension.obs   [get/get_rx/src/rx_types/rx_types.dart]
  //   çağrı: .StringExtension.obs   [get/get_rx/src/rx_types/rx_types.dart]
  //   çağrı: .RxT.obs   [get/get_rx/src/rx_types/rx_types.dart]
  //   çağrı: .DoubleExtension.obs   [get/get_rx/src/rx_types/rx_types.dart]
  //   çağrı: .MapExtension.obs   [get/get_rx/src/rx_types/rx_types.dart]
  //   çağrı: GetLifeCycle.GetLifeCycle   [get/get_instance/src/lifecycle.dart]

  // get _ walkingTimeText(/* No info */)
  //   Metinler: ' sa ' | ' dk'
  //   çağrı: __RxImpl&RxNotifier&RxObjectMixin.value   [get/get_rx/src/rx_types/rx_types.dart]

}

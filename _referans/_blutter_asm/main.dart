// lib: , url: package:umrem_demo/main.dart

// class id: 1049611, size: 0x8
class :: {

  static Future<void> main() async {
    // ** addr: 0x92ccfc, size: 0x194
    // 0x92ccfc: EnterFrame
    //     0x92ccfc: stp             fp, lr, [SP, #-0x10]!
    //     0x92cd00: mov             fp, SP
    // 0x92cd04: AllocStack(0x68)
    //     0x92cd04: sub             SP, SP, #0x68
    // 0x92cd08: SetupParameters()
    //     0x92cd08: stur            NULL, [fp, #-8]
    // 0x92cd0c: CheckStackOverflow
    //     0x92cd0c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x92cd10: cmp             SP, x16
    //     0x92cd14: b.ls            #0x92ce88
    // 0x92cd18: InitAsync() -> Future<void?>
    //     0x92cd18: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x92cd1c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x92cd20: r0 = ensureInitialized()
    //     0x92cd20: bl              #0x589e48  ; [package:flutter/src/widgets/binding.dart] WidgetsFlutterBinding::ensureInitialized
    // 0x92cd24: r0 = initializeDateFormatting()
    //     0x92cd24: bl              #0x92ef98  ; [package:intl/date_symbol_data_local.dart] ::initializeDateFormatting
    // 0x92cd28: mov             x1, x0
    // 0x92cd2c: stur            x1, [fp, #-0x60]
    // 0x92cd30: r0 = Await()
    //     0x92cd30: bl              #0x3dd188  ; AwaitStub
    // 0x92cd34: r0 = initializeApp()
    //     0x92cd34: bl              #0x92a65c  ; [package:firebase_core/firebase_core.dart] Firebase::initializeApp
    // 0x92cd38: mov             x1, x0
    // 0x92cd3c: stur            x1, [fp, #-0x60]
    // 0x92cd40: r0 = Await()
    //     0x92cd40: bl              #0x3dd188  ; AwaitStub
    // 0x92cd44: b               #0x92cd4c
    // 0x92cd48: sub             SP, fp, #0x68
    // 0x92cd4c: r1 = Function '<anonymous closure>': static.
    //     0x92cd4c: add             x1, PP, #9, lsl #12  ; [pp+0x9060] AnonymousClosure: static (0x938a18), in [package:umrem_demo/main.dart] ::main (0x92ccfc)
    //     0x92cd50: ldr             x1, [x1, #0x60]
    // 0x92cd54: r2 = Null
    //     0x92cd54: mov             x2, NULL
    // 0x92cd58: r0 = AllocateClosure()
    //     0x92cd58: bl              #0x9273d4  ; AllocateClosureStub
    // 0x92cd5c: StoreStaticField(0x62c, r0)
    //     0x92cd5c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x92cd60: str             x0, [x1, #0xc58]
    // 0x92cd64: r0 = InitLateStaticField(0x53c) // [dart:ui] PlatformDispatcher::_instance
    //     0x92cd64: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x92cd68: ldr             x0, [x0, #0xa78]
    //     0x92cd6c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x92cd70: cmp             w0, w16
    //     0x92cd74: b.ne            #0x92cd80
    //     0x92cd78: ldr             x2, [PP, #0x2f8]  ; [pp+0x2f8] Field <PlatformDispatcher._instance@17065589>: static late final (offset: 0x53c)
    //     0x92cd7c: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x92cd80: r1 = Function '<anonymous closure>': static.
    //     0x92cd80: add             x1, PP, #9, lsl #12  ; [pp+0x9068] AnonymousClosure: static (0x937984), in [package:umrem_demo/main.dart] ::main (0x92ccfc)
    //     0x92cd84: ldr             x1, [x1, #0x68]
    // 0x92cd88: r2 = Null
    //     0x92cd88: mov             x2, NULL
    // 0x92cd8c: stur            x0, [fp, #-0x60]
    // 0x92cd90: r0 = AllocateClosure()
    //     0x92cd90: bl              #0x9273d4  ; AllocateClosureStub
    // 0x92cd94: ldur            x1, [fp, #-0x60]
    // 0x92cd98: mov             x2, x0
    // 0x92cd9c: r0 = onError=()
    //     0x92cd9c: bl              #0x92ef08  ; [dart:ui] PlatformDispatcher::onError=
    // 0x92cda0: r4 = const [0, 0, 0, 0, null]
    //     0x92cda0: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x92cda4: r0 = app()
    //     0x92cda4: bl              #0x5d81cc  ; [package:firebase_core/firebase_core.dart] Firebase::app
    // 0x92cda8: mov             x2, x0
    // 0x92cdac: r1 = Null
    //     0x92cdac: mov             x1, NULL
    // 0x92cdb0: r0 = FirebaseMessaging._instanceFor()
    //     0x92cdb0: bl              #0x5f16d8  ; [package:firebase_messaging/firebase_messaging.dart] FirebaseMessaging::FirebaseMessaging._instanceFor
    // 0x92cdb4: stur            x0, [fp, #-0x60]
    // 0x92cdb8: r0 = FirebaseApi()
    //     0x92cdb8: bl              #0x5f1848  ; AllocateFirebaseApiStub -> FirebaseApi (size=0xc)
    // 0x92cdbc: mov             x1, x0
    // 0x92cdc0: ldur            x0, [fp, #-0x60]
    // 0x92cdc4: StoreField: r1->field_7 = r0
    //     0x92cdc4: stur            w0, [x1, #7]
    // 0x92cdc8: r0 = initNotifications()
    //     0x92cdc8: bl              #0x92e198  ; [package:umrem_demo/common/services/firebase_messaging_service.dart] FirebaseApi::initNotifications
    // 0x92cdcc: mov             x1, x0
    // 0x92cdd0: stur            x1, [fp, #-0x60]
    // 0x92cdd4: r0 = Await()
    //     0x92cdd4: bl              #0x3dd188  ; AwaitStub
    // 0x92cdd8: r0 = onBackgroundMessage()
    //     0x92cdd8: bl              #0x92dfec  ; [package:firebase_messaging/firebase_messaging.dart] FirebaseMessaging::onBackgroundMessage
    // 0x92cddc: r0 = checkLocationPermission()
    //     0x92cddc: bl              #0x92df38  ; [package:umrem_demo/common/services/location_permission.dart] ::checkLocationPermission
    // 0x92cde0: mov             x1, x0
    // 0x92cde4: stur            x1, [fp, #-0x60]
    // 0x92cde8: r0 = Await()
    //     0x92cde8: bl              #0x3dd188  ; AwaitStub
    // 0x92cdec: r0 = InitLateStaticField(0xd14) // [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::_instance
    //     0x92cdec: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x92cdf0: ldr             x0, [x0, #0x1a28]
    //     0x92cdf4: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x92cdf8: cmp             w0, w16
    //     0x92cdfc: b.ne            #0x92ce0c
    //     0x92ce00: add             x2, PP, #9, lsl #12  ; [pp+0x9070] Field <FlutterBackgroundService._instance@737261802>: static late (offset: 0xd14)
    //     0x92ce04: ldr             x2, [x2, #0x70]
    //     0x92ce08: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x92ce0c: stur            x0, [fp, #-0x60]
    // 0x92ce10: r0 = AndroidConfiguration()
    //     0x92ce10: bl              #0x92df2c  ; AllocateAndroidConfigurationStub -> AndroidConfiguration (size=0x30)
    // 0x92ce14: mov             x1, x0
    // 0x92ce18: r0 = Closure: (ServiceInstance) => Future<void> from Function 'onStart': static.
    //     0x92ce18: add             x0, PP, #9, lsl #12  ; [pp+0x9078] Closure: (ServiceInstance) => Future<void> from Function 'onStart': static. (0x7f229092bfcc)
    //     0x92ce1c: ldr             x0, [x0, #0x78]
    // 0x92ce20: StoreField: r1->field_7 = r0
    //     0x92ce20: stur            w0, [x1, #7]
    // 0x92ce24: r0 = true
    //     0x92ce24: add             x0, NULL, #0x20  ; true
    // 0x92ce28: StoreField: r1->field_b = r0
    //     0x92ce28: stur            w0, [x1, #0xb]
    // 0x92ce2c: StoreField: r1->field_f = r0
    //     0x92ce2c: stur            w0, [x1, #0xf]
    // 0x92ce30: r0 = false
    //     0x92ce30: add             x0, NULL, #0x30  ; false
    // 0x92ce34: StoreField: r1->field_13 = r0
    //     0x92ce34: stur            w0, [x1, #0x13]
    // 0x92ce38: r0 = "Preparing"
    //     0x92ce38: add             x0, PP, #9, lsl #12  ; [pp+0x9080] "Preparing"
    //     0x92ce3c: ldr             x0, [x0, #0x80]
    // 0x92ce40: ArrayStore: r1[0] = r0  ; List_4
    //     0x92ce40: stur            w0, [x1, #0x17]
    // 0x92ce44: r0 = "Background Service"
    //     0x92ce44: add             x0, PP, #9, lsl #12  ; [pp+0x9088] "Background Service"
    //     0x92ce48: ldr             x0, [x0, #0x88]
    // 0x92ce4c: StoreField: r1->field_1b = r0
    //     0x92ce4c: stur            w0, [x1, #0x1b]
    // 0x92ce50: r0 = 112233
    //     0x92ce50: mov             x0, #0xb669
    //     0x92ce54: movk            x0, #1, lsl #16
    // 0x92ce58: StoreField: r1->field_23 = r0
    //     0x92ce58: stur            x0, [x1, #0x23]
    // 0x92ce5c: mov             x2, x1
    // 0x92ce60: ldur            x1, [fp, #-0x60]
    // 0x92ce64: r0 = configure()
    //     0x92ce64: bl              #0x92da34  ; [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::configure
    // 0x92ce68: mov             x1, x0
    // 0x92ce6c: stur            x1, [fp, #-0x68]
    // 0x92ce70: r0 = Await()
    //     0x92ce70: bl              #0x3dd188  ; AwaitStub
    // 0x92ce74: ldur            x1, [fp, #-0x60]
    // 0x92ce78: r0 = startService()
    //     0x92ce78: bl              #0x5ecf58  ; [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::startService
    // 0x92ce7c: r0 = runApp()
    //     0x92ce7c: bl              #0x92ce90  ; [package:flutter/src/widgets/binding.dart] ::runApp
    // 0x92ce80: r0 = Null
    //     0x92ce80: mov             x0, NULL
    // 0x92ce84: r0 = ReturnAsyncNotFuture()
    //     0x92ce84: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x92ce88: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x92ce88: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x92ce8c: b               #0x92cd18
  }
  [closure] static bool <anonymous closure>(dynamic, Object, StackTrace) {
    // ** addr: 0x937984, size: 0x44
    // 0x937984: EnterFrame
    //     0x937984: stp             fp, lr, [SP, #-0x10]!
    //     0x937988: mov             fp, SP
    // 0x93798c: CheckStackOverflow
    //     0x93798c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x937990: cmp             SP, x16
    //     0x937994: b.ls            #0x9379c0
    // 0x937998: r0 = instance()
    //     0x937998: bl              #0x938980  ; [package:firebase_crashlytics/firebase_crashlytics.dart] FirebaseCrashlytics::instance
    // 0x93799c: mov             x1, x0
    // 0x9379a0: ldr             x2, [fp, #0x18]
    // 0x9379a4: ldr             x3, [fp, #0x10]
    // 0x9379a8: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x9379a8: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x9379ac: r0 = recordError()
    //     0x9379ac: bl              #0x9379c8  ; [package:firebase_crashlytics/firebase_crashlytics.dart] FirebaseCrashlytics::recordError
    // 0x9379b0: r0 = true
    //     0x9379b0: add             x0, NULL, #0x20  ; true
    // 0x9379b4: LeaveFrame
    //     0x9379b4: mov             SP, fp
    //     0x9379b8: ldp             fp, lr, [SP], #0x10
    // 0x9379bc: ret
    //     0x9379bc: ret             
    // 0x9379c0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x9379c0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x9379c4: b               #0x937998
  }
  [closure] static void <anonymous closure>(dynamic, FlutterErrorDetails) {
    // ** addr: 0x938a18, size: 0x3c
    // 0x938a18: EnterFrame
    //     0x938a18: stp             fp, lr, [SP, #-0x10]!
    //     0x938a1c: mov             fp, SP
    // 0x938a20: CheckStackOverflow
    //     0x938a20: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x938a24: cmp             SP, x16
    //     0x938a28: b.ls            #0x938a4c
    // 0x938a2c: r0 = instance()
    //     0x938a2c: bl              #0x938980  ; [package:firebase_crashlytics/firebase_crashlytics.dart] FirebaseCrashlytics::instance
    // 0x938a30: mov             x1, x0
    // 0x938a34: ldr             x2, [fp, #0x10]
    // 0x938a38: r0 = recordFlutterError()
    //     0x938a38: bl              #0x938a54  ; [package:firebase_crashlytics/firebase_crashlytics.dart] FirebaseCrashlytics::recordFlutterError
    // 0x938a3c: r0 = Null
    //     0x938a3c: mov             x0, NULL
    // 0x938a40: LeaveFrame
    //     0x938a40: mov             SP, fp
    //     0x938a44: ldp             fp, lr, [SP], #0x10
    // 0x938a48: ret
    //     0x938a48: ret             
    // 0x938a4c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x938a4c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x938a50: b               #0x938a2c
  }
  [closure] static Future<void> main(dynamic) {
    // ** addr: 0x938b7c, size: 0x2c
    // 0x938b7c: EnterFrame
    //     0x938b7c: stp             fp, lr, [SP, #-0x10]!
    //     0x938b80: mov             fp, SP
    // 0x938b84: CheckStackOverflow
    //     0x938b84: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x938b88: cmp             SP, x16
    //     0x938b8c: b.ls            #0x938ba0
    // 0x938b90: r0 = main()
    //     0x938b90: bl              #0x92ccfc  ; [package:umrem_demo/main.dart] ::main
    // 0x938b94: LeaveFrame
    //     0x938b94: mov             SP, fp
    //     0x938b98: ldp             fp, lr, [SP], #0x10
    // 0x938b9c: ret
    //     0x938b9c: ret             
    // 0x938ba0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x938ba0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x938ba4: b               #0x938b90
  }
}

// class id: 2888, size: 0xc, field offset: 0xc
//   const constructor, 
class _AppContent extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7f10e8, size: 0x108
    // 0x7f10e8: EnterFrame
    //     0x7f10e8: stp             fp, lr, [SP, #-0x10]!
    //     0x7f10ec: mov             fp, SP
    // 0x7f10f0: AllocStack(0x20)
    //     0x7f10f0: sub             SP, SP, #0x20
    // 0x7f10f4: CheckStackOverflow
    //     0x7f10f4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f10f8: cmp             SP, x16
    //     0x7f10fc: b.ls            #0x7f11e8
    // 0x7f1100: r0 = routes()
    //     0x7f1100: bl              #0x732404  ; [package:umrem_demo/app/routes.dart] AppRoutes::routes
    // 0x7f1104: stur            x0, [fp, #-8]
    // 0x7f1108: r0 = light()
    //     0x7f1108: bl              #0x7f11fc  ; [package:umrem_demo/core/theme/app_theme.dart] AppTheme::light
    // 0x7f110c: stur            x0, [fp, #-0x10]
    // 0x7f1110: r0 = InitLateStaticField(0x1024) // [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::_messengerKey
    //     0x7f1110: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7f1114: ldr             x0, [x0, #0x2048]
    //     0x7f1118: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7f111c: cmp             w0, w16
    //     0x7f1120: b.ne            #0x7f1130
    //     0x7f1124: add             x2, PP, #0x11, lsl #12  ; [pp+0x112a0] Field <GlobalSnackBar._messengerKey@972197353>: static late final (offset: 0x1024)
    //     0x7f1128: ldr             x2, [x2, #0x2a0]
    //     0x7f112c: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x7f1130: stur            x0, [fp, #-0x18]
    // 0x7f1134: r0 = MaterialApp()
    //     0x7f1134: bl              #0x7f11f0  ; AllocateMaterialAppStub -> MaterialApp (size=0x9c)
    // 0x7f1138: mov             x3, x0
    // 0x7f113c: ldur            x0, [fp, #-0x18]
    // 0x7f1140: stur            x3, [fp, #-0x20]
    // 0x7f1144: StoreField: r3->field_f = r0
    //     0x7f1144: stur            w0, [x3, #0xf]
    // 0x7f1148: ldur            x0, [fp, #-8]
    // 0x7f114c: ArrayStore: r3[0] = r0  ; List_4
    //     0x7f114c: stur            w0, [x3, #0x17]
    // 0x7f1150: r0 = "/"
    //     0x7f1150: ldr             x0, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x7f1154: StoreField: r3->field_1b = r0
    //     0x7f1154: stur            w0, [x3, #0x1b]
    // 0x7f1158: r1 = Function '<anonymous closure>':.
    //     0x7f1158: add             x1, PP, #0x11, lsl #12  ; [pp+0x112a8] AnonymousClosure: (0x7f1918), in [package:umrem_demo/main.dart] _AppContent::build (0x7f10e8)
    //     0x7f115c: ldr             x1, [x1, #0x2a8]
    // 0x7f1160: r2 = Null
    //     0x7f1160: mov             x2, NULL
    // 0x7f1164: r0 = AllocateClosure()
    //     0x7f1164: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7f1168: mov             x1, x0
    // 0x7f116c: ldur            x0, [fp, #-0x20]
    // 0x7f1170: StoreField: r0->field_27 = r1
    //     0x7f1170: stur            w1, [x0, #0x27]
    // 0x7f1174: r1 = const []
    //     0x7f1174: add             x1, PP, #0x11, lsl #12  ; [pp+0x112b0] List<NavigatorObserver>(0)
    //     0x7f1178: ldr             x1, [x1, #0x2b0]
    // 0x7f117c: StoreField: r0->field_2f = r1
    //     0x7f117c: stur            w1, [x0, #0x2f]
    // 0x7f1180: r1 = "Umre Rehberim"
    //     0x7f1180: add             x1, PP, #0x11, lsl #12  ; [pp+0x112b8] "Umre Rehberim"
    //     0x7f1184: ldr             x1, [x1, #0x2b8]
    // 0x7f1188: StoreField: r0->field_3f = r1
    //     0x7f1188: stur            w1, [x0, #0x3f]
    // 0x7f118c: ldur            x1, [fp, #-0x10]
    // 0x7f1190: StoreField: r0->field_47 = r1
    //     0x7f1190: stur            w1, [x0, #0x47]
    // 0x7f1194: r1 = Instance_ThemeMode
    //     0x7f1194: add             x1, PP, #0x11, lsl #12  ; [pp+0x112c0] Obj!ThemeMode@a2bd91
    //     0x7f1198: ldr             x1, [x1, #0x2c0]
    // 0x7f119c: StoreField: r0->field_57 = r1
    //     0x7f119c: stur            w1, [x0, #0x57]
    // 0x7f11a0: r1 = Instance_Duration
    //     0x7f11a0: add             x1, PP, #0x11, lsl #12  ; [pp+0x112c8] Obj!Duration@a2dc71
    //     0x7f11a4: ldr             x1, [x1, #0x2c8]
    // 0x7f11a8: StoreField: r0->field_5b = r1
    //     0x7f11a8: stur            w1, [x0, #0x5b]
    // 0x7f11ac: r1 = Instance__Linear
    //     0x7f11ac: ldr             x1, [PP, #0x5000]  ; [pp+0x5000] Obj!_Linear@a0fe91
    // 0x7f11b0: StoreField: r0->field_5f = r1
    //     0x7f11b0: stur            w1, [x0, #0x5f]
    // 0x7f11b4: r1 = const [Instance of '_MaterialLocalizationsDelegate', Instance of '_WidgetsLocalizationsDelegate', Instance of '_GlobalCupertinoLocalizationsDelegate']
    //     0x7f11b4: add             x1, PP, #0x11, lsl #12  ; [pp+0x112d0] List<LocalizationsDelegate>(3)
    //     0x7f11b8: ldr             x1, [x1, #0x2d0]
    // 0x7f11bc: StoreField: r0->field_6b = r1
    //     0x7f11bc: stur            w1, [x0, #0x6b]
    // 0x7f11c0: r1 = const [Instance of 'Locale']
    //     0x7f11c0: add             x1, PP, #0x11, lsl #12  ; [pp+0x112d8] List<Locale>(1)
    //     0x7f11c4: ldr             x1, [x1, #0x2d8]
    // 0x7f11c8: StoreField: r0->field_77 = r1
    //     0x7f11c8: stur            w1, [x0, #0x77]
    // 0x7f11cc: r1 = false
    //     0x7f11cc: add             x1, NULL, #0x30  ; false
    // 0x7f11d0: StoreField: r0->field_7b = r1
    //     0x7f11d0: stur            w1, [x0, #0x7b]
    // 0x7f11d4: StoreField: r0->field_7f = r1
    //     0x7f11d4: stur            w1, [x0, #0x7f]
    // 0x7f11d8: StoreField: r0->field_83 = r1
    //     0x7f11d8: stur            w1, [x0, #0x83]
    // 0x7f11dc: LeaveFrame
    //     0x7f11dc: mov             SP, fp
    //     0x7f11e0: ldp             fp, lr, [SP], #0x10
    // 0x7f11e4: ret
    //     0x7f11e4: ret             
    // 0x7f11e8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f11e8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f11ec: b               #0x7f1100
  }
  [closure] MaterialPageRoute<dynamic> <anonymous closure>(dynamic, RouteSettings) {
    // ** addr: 0x7f1918, size: 0xb0
    // 0x7f1918: EnterFrame
    //     0x7f1918: stp             fp, lr, [SP, #-0x10]!
    //     0x7f191c: mov             fp, SP
    // 0x7f1920: AllocStack(0x10)
    //     0x7f1920: sub             SP, SP, #0x10
    // 0x7f1924: SetupParameters([dynamic _ /* r0 */])
    //     0x7f1924: ldr             x0, [fp, #0x18]
    //     0x7f1928: ldur            w1, [x0, #0x17]
    //     0x7f192c: add             x1, x1, HEAP, lsl #32
    //     0x7f1930: stur            x1, [fp, #-8]
    // 0x7f1934: CheckStackOverflow
    //     0x7f1934: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f1938: cmp             SP, x16
    //     0x7f193c: b.ls            #0x7f19c0
    // 0x7f1940: r1 = 1
    //     0x7f1940: mov             x1, #1
    // 0x7f1944: r0 = AllocateContext()
    //     0x7f1944: bl              #0x927010  ; AllocateContextStub
    // 0x7f1948: mov             x1, x0
    // 0x7f194c: ldur            x0, [fp, #-8]
    // 0x7f1950: StoreField: r1->field_b = r0
    //     0x7f1950: stur            w0, [x1, #0xb]
    // 0x7f1954: ldr             x0, [fp, #0x10]
    // 0x7f1958: StoreField: r1->field_f = r0
    //     0x7f1958: stur            w0, [x1, #0xf]
    // 0x7f195c: mov             x2, x1
    // 0x7f1960: r1 = Function '<anonymous closure>':.
    //     0x7f1960: add             x1, PP, #0x11, lsl #12  ; [pp+0x112e0] AnonymousClosure: (0x7f19c8), in [package:umrem_demo/main.dart] _AppContent::build (0x7f10e8)
    //     0x7f1964: ldr             x1, [x1, #0x2e0]
    // 0x7f1968: r0 = AllocateClosure()
    //     0x7f1968: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7f196c: r1 = Null
    //     0x7f196c: mov             x1, NULL
    // 0x7f1970: stur            x0, [fp, #-8]
    // 0x7f1974: r0 = MaterialPageRoute()
    //     0x7f1974: bl              #0x66166c  ; AllocateMaterialPageRouteStub -> MaterialPageRoute<X0> (size=0xac)
    // 0x7f1978: mov             x4, x0
    // 0x7f197c: ldur            x0, [fp, #-8]
    // 0x7f1980: stur            x4, [fp, #-0x10]
    // 0x7f1984: StoreField: r4->field_a3 = r0
    //     0x7f1984: stur            w0, [x4, #0xa3]
    // 0x7f1988: r0 = true
    //     0x7f1988: add             x0, NULL, #0x20  ; true
    // 0x7f198c: StoreField: r4->field_a7 = r0
    //     0x7f198c: stur            w0, [x4, #0xa7]
    // 0x7f1990: r1 = false
    //     0x7f1990: add             x1, NULL, #0x30  ; false
    // 0x7f1994: StoreField: r4->field_97 = r1
    //     0x7f1994: stur            w1, [x4, #0x97]
    // 0x7f1998: StoreField: r4->field_9b = r0
    //     0x7f1998: stur            w0, [x4, #0x9b]
    // 0x7f199c: StoreField: r4->field_9f = r1
    //     0x7f199c: stur            w1, [x4, #0x9f]
    // 0x7f19a0: mov             x1, x4
    // 0x7f19a4: r2 = Null
    //     0x7f19a4: mov             x2, NULL
    // 0x7f19a8: r3 = Null
    //     0x7f19a8: mov             x3, NULL
    // 0x7f19ac: r0 = ModalRoute()
    //     0x7f19ac: bl              #0x57cd40  ; [package:flutter/src/widgets/routes.dart] ModalRoute::ModalRoute
    // 0x7f19b0: ldur            x0, [fp, #-0x10]
    // 0x7f19b4: LeaveFrame
    //     0x7f19b4: mov             SP, fp
    //     0x7f19b8: ldp             fp, lr, [SP], #0x10
    // 0x7f19bc: ret
    //     0x7f19bc: ret             
    // 0x7f19c0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f19c0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f19c4: b               #0x7f1940
  }
  [closure] Scaffold <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7f19c8, size: 0x254
    // 0x7f19c8: EnterFrame
    //     0x7f19c8: stp             fp, lr, [SP, #-0x10]!
    //     0x7f19cc: mov             fp, SP
    // 0x7f19d0: AllocStack(0x20)
    //     0x7f19d0: sub             SP, SP, #0x20
    // 0x7f19d4: SetupParameters([dynamic _ /* r0 */])
    //     0x7f19d4: ldr             x0, [fp, #0x18]
    //     0x7f19d8: ldur            w1, [x0, #0x17]
    //     0x7f19dc: add             x1, x1, HEAP, lsl #32
    //     0x7f19e0: stur            x1, [fp, #-8]
    // 0x7f19e4: CheckStackOverflow
    //     0x7f19e4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f19e8: cmp             SP, x16
    //     0x7f19ec: b.ls            #0x7f1c14
    // 0x7f19f0: r1 = 1
    //     0x7f19f0: mov             x1, #1
    // 0x7f19f4: r0 = AllocateContext()
    //     0x7f19f4: bl              #0x927010  ; AllocateContextStub
    // 0x7f19f8: mov             x2, x0
    // 0x7f19fc: ldur            x0, [fp, #-8]
    // 0x7f1a00: stur            x2, [fp, #-0x10]
    // 0x7f1a04: StoreField: r2->field_b = r0
    //     0x7f1a04: stur            w0, [x2, #0xb]
    // 0x7f1a08: ldr             x1, [fp, #0x10]
    // 0x7f1a0c: StoreField: r2->field_f = r1
    //     0x7f1a0c: stur            w1, [x2, #0xf]
    // 0x7f1a10: r0 = of()
    //     0x7f1a10: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x7f1a14: LoadField: r1 = r0->field_87
    //     0x7f1a14: ldur            w1, [x0, #0x87]
    // 0x7f1a18: DecompressPointer r1
    //     0x7f1a18: add             x1, x1, HEAP, lsl #32
    // 0x7f1a1c: LoadField: r0 = r1->field_1b
    //     0x7f1a1c: ldur            w0, [x1, #0x1b]
    // 0x7f1a20: DecompressPointer r0
    //     0x7f1a20: add             x0, x0, HEAP, lsl #32
    // 0x7f1a24: stur            x0, [fp, #-0x18]
    // 0x7f1a28: r0 = Text()
    //     0x7f1a28: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7f1a2c: mov             x1, x0
    // 0x7f1a30: r0 = "Sayfa bulunamadı"
    //     0x7f1a30: add             x0, PP, #0x11, lsl #12  ; [pp+0x112e8] "Sayfa bulunamadı"
    //     0x7f1a34: ldr             x0, [x0, #0x2e8]
    // 0x7f1a38: stur            x1, [fp, #-0x20]
    // 0x7f1a3c: StoreField: r1->field_b = r0
    //     0x7f1a3c: stur            w0, [x1, #0xb]
    // 0x7f1a40: ldur            x0, [fp, #-0x18]
    // 0x7f1a44: StoreField: r1->field_13 = r0
    //     0x7f1a44: stur            w0, [x1, #0x13]
    // 0x7f1a48: ldur            x0, [fp, #-8]
    // 0x7f1a4c: LoadField: r2 = r0->field_f
    //     0x7f1a4c: ldur            w2, [x0, #0xf]
    // 0x7f1a50: DecompressPointer r2
    //     0x7f1a50: add             x2, x2, HEAP, lsl #32
    // 0x7f1a54: LoadField: r0 = r2->field_7
    //     0x7f1a54: ldur            w0, [x2, #7]
    // 0x7f1a58: DecompressPointer r0
    //     0x7f1a58: add             x0, x0, HEAP, lsl #32
    // 0x7f1a5c: cmp             w0, NULL
    // 0x7f1a60: b.ne            #0x7f1a6c
    // 0x7f1a64: r0 = "Bilinmeyen sayfa"
    //     0x7f1a64: add             x0, PP, #0x11, lsl #12  ; [pp+0x112f0] "Bilinmeyen sayfa"
    //     0x7f1a68: ldr             x0, [x0, #0x2f0]
    // 0x7f1a6c: stur            x0, [fp, #-8]
    // 0x7f1a70: r0 = Text()
    //     0x7f1a70: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7f1a74: mov             x3, x0
    // 0x7f1a78: ldur            x0, [fp, #-8]
    // 0x7f1a7c: stur            x3, [fp, #-0x18]
    // 0x7f1a80: StoreField: r3->field_b = r0
    //     0x7f1a80: stur            w0, [x3, #0xb]
    // 0x7f1a84: ldur            x2, [fp, #-0x10]
    // 0x7f1a88: r1 = Function '<anonymous closure>':.
    //     0x7f1a88: add             x1, PP, #0x11, lsl #12  ; [pp+0x112f8] AnonymousClosure: (0x7f1c1c), in [package:umrem_demo/main.dart] _AppContent::build (0x7f10e8)
    //     0x7f1a8c: ldr             x1, [x1, #0x2f8]
    // 0x7f1a90: r0 = AllocateClosure()
    //     0x7f1a90: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7f1a94: stur            x0, [fp, #-8]
    // 0x7f1a98: r0 = ElevatedButton()
    //     0x7f1a98: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x7f1a9c: mov             x3, x0
    // 0x7f1aa0: ldur            x0, [fp, #-8]
    // 0x7f1aa4: stur            x3, [fp, #-0x10]
    // 0x7f1aa8: StoreField: r3->field_b = r0
    //     0x7f1aa8: stur            w0, [x3, #0xb]
    // 0x7f1aac: r0 = false
    //     0x7f1aac: add             x0, NULL, #0x30  ; false
    // 0x7f1ab0: StoreField: r3->field_27 = r0
    //     0x7f1ab0: stur            w0, [x3, #0x27]
    // 0x7f1ab4: r4 = true
    //     0x7f1ab4: add             x4, NULL, #0x20  ; true
    // 0x7f1ab8: StoreField: r3->field_2f = r4
    //     0x7f1ab8: stur            w4, [x3, #0x2f]
    // 0x7f1abc: r1 = Instance_Text
    //     0x7f1abc: add             x1, PP, #0x11, lsl #12  ; [pp+0x11300] Obj!Text@a1dde1
    //     0x7f1ac0: ldr             x1, [x1, #0x300]
    // 0x7f1ac4: StoreField: r3->field_37 = r1
    //     0x7f1ac4: stur            w1, [x3, #0x37]
    // 0x7f1ac8: r1 = Null
    //     0x7f1ac8: mov             x1, NULL
    // 0x7f1acc: r2 = 14
    //     0x7f1acc: mov             x2, #0xe
    // 0x7f1ad0: r0 = AllocateArray()
    //     0x7f1ad0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7f1ad4: stur            x0, [fp, #-8]
    // 0x7f1ad8: r16 = Instance_Icon
    //     0x7f1ad8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11308] Obj!Icon@a1f2f1
    //     0x7f1adc: ldr             x16, [x16, #0x308]
    // 0x7f1ae0: StoreField: r0->field_f = r16
    //     0x7f1ae0: stur            w16, [x0, #0xf]
    // 0x7f1ae4: r16 = Instance_SizedBox
    //     0x7f1ae4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x7f1ae8: ldr             x16, [x16, #0x310]
    // 0x7f1aec: StoreField: r0->field_13 = r16
    //     0x7f1aec: stur            w16, [x0, #0x13]
    // 0x7f1af0: ldur            x1, [fp, #-0x20]
    // 0x7f1af4: ArrayStore: r0[0] = r1  ; List_4
    //     0x7f1af4: stur            w1, [x0, #0x17]
    // 0x7f1af8: r16 = Instance_SizedBox
    //     0x7f1af8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x7f1afc: ldr             x16, [x16, #0x318]
    // 0x7f1b00: StoreField: r0->field_1b = r16
    //     0x7f1b00: stur            w16, [x0, #0x1b]
    // 0x7f1b04: ldur            x1, [fp, #-0x18]
    // 0x7f1b08: StoreField: r0->field_1f = r1
    //     0x7f1b08: stur            w1, [x0, #0x1f]
    // 0x7f1b0c: r16 = Instance_SizedBox
    //     0x7f1b0c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11320] Obj!SizedBox@a1fb31
    //     0x7f1b10: ldr             x16, [x16, #0x320]
    // 0x7f1b14: StoreField: r0->field_23 = r16
    //     0x7f1b14: stur            w16, [x0, #0x23]
    // 0x7f1b18: ldur            x1, [fp, #-0x10]
    // 0x7f1b1c: StoreField: r0->field_27 = r1
    //     0x7f1b1c: stur            w1, [x0, #0x27]
    // 0x7f1b20: r1 = <Widget>
    //     0x7f1b20: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7f1b24: r0 = AllocateGrowableArray()
    //     0x7f1b24: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7f1b28: mov             x1, x0
    // 0x7f1b2c: ldur            x0, [fp, #-8]
    // 0x7f1b30: stur            x1, [fp, #-0x10]
    // 0x7f1b34: StoreField: r1->field_f = r0
    //     0x7f1b34: stur            w0, [x1, #0xf]
    // 0x7f1b38: r0 = 14
    //     0x7f1b38: mov             x0, #0xe
    // 0x7f1b3c: StoreField: r1->field_b = r0
    //     0x7f1b3c: stur            w0, [x1, #0xb]
    // 0x7f1b40: r0 = Column()
    //     0x7f1b40: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7f1b44: mov             x1, x0
    // 0x7f1b48: r0 = Instance_Axis
    //     0x7f1b48: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7f1b4c: stur            x1, [fp, #-8]
    // 0x7f1b50: StoreField: r1->field_f = r0
    //     0x7f1b50: stur            w0, [x1, #0xf]
    // 0x7f1b54: r0 = Instance_MainAxisAlignment
    //     0x7f1b54: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x7f1b58: ldr             x0, [x0, #0x328]
    // 0x7f1b5c: StoreField: r1->field_13 = r0
    //     0x7f1b5c: stur            w0, [x1, #0x13]
    // 0x7f1b60: r0 = Instance_MainAxisSize
    //     0x7f1b60: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7f1b64: ldr             x0, [x0, #0x330]
    // 0x7f1b68: ArrayStore: r1[0] = r0  ; List_4
    //     0x7f1b68: stur            w0, [x1, #0x17]
    // 0x7f1b6c: r0 = Instance_CrossAxisAlignment
    //     0x7f1b6c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7f1b70: ldr             x0, [x0, #0x338]
    // 0x7f1b74: StoreField: r1->field_1b = r0
    //     0x7f1b74: stur            w0, [x1, #0x1b]
    // 0x7f1b78: r0 = Instance_VerticalDirection
    //     0x7f1b78: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7f1b7c: ldr             x0, [x0, #0x340]
    // 0x7f1b80: StoreField: r1->field_23 = r0
    //     0x7f1b80: stur            w0, [x1, #0x23]
    // 0x7f1b84: r0 = Instance_Clip
    //     0x7f1b84: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7f1b88: ldr             x0, [x0, #0x348]
    // 0x7f1b8c: StoreField: r1->field_2b = r0
    //     0x7f1b8c: stur            w0, [x1, #0x2b]
    // 0x7f1b90: StoreField: r1->field_2f = rZR
    //     0x7f1b90: stur            xzr, [x1, #0x2f]
    // 0x7f1b94: ldur            x0, [fp, #-0x10]
    // 0x7f1b98: StoreField: r1->field_b = r0
    //     0x7f1b98: stur            w0, [x1, #0xb]
    // 0x7f1b9c: r0 = Center()
    //     0x7f1b9c: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x7f1ba0: mov             x1, x0
    // 0x7f1ba4: r0 = Instance_Alignment
    //     0x7f1ba4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x7f1ba8: ldr             x0, [x0, #0x60]
    // 0x7f1bac: stur            x1, [fp, #-0x10]
    // 0x7f1bb0: StoreField: r1->field_f = r0
    //     0x7f1bb0: stur            w0, [x1, #0xf]
    // 0x7f1bb4: ldur            x0, [fp, #-8]
    // 0x7f1bb8: StoreField: r1->field_b = r0
    //     0x7f1bb8: stur            w0, [x1, #0xb]
    // 0x7f1bbc: r0 = Scaffold()
    //     0x7f1bbc: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x7f1bc0: ldur            x1, [fp, #-0x10]
    // 0x7f1bc4: StoreField: r0->field_1b = r1
    //     0x7f1bc4: stur            w1, [x0, #0x1b]
    // 0x7f1bc8: r1 = Instance_AlignmentDirectional
    //     0x7f1bc8: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x7f1bcc: ldr             x1, [x1, #0x350]
    // 0x7f1bd0: StoreField: r0->field_2f = r1
    //     0x7f1bd0: stur            w1, [x0, #0x2f]
    // 0x7f1bd4: r1 = true
    //     0x7f1bd4: add             x1, NULL, #0x20  ; true
    // 0x7f1bd8: StoreField: r0->field_5f = r1
    //     0x7f1bd8: stur            w1, [x0, #0x5f]
    // 0x7f1bdc: r2 = Instance_DragStartBehavior
    //     0x7f1bdc: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7f1be0: StoreField: r0->field_63 = r2
    //     0x7f1be0: stur            w2, [x0, #0x63]
    // 0x7f1be4: r2 = false
    //     0x7f1be4: add             x2, NULL, #0x30  ; false
    // 0x7f1be8: StoreField: r0->field_b = r2
    //     0x7f1be8: stur            w2, [x0, #0xb]
    // 0x7f1bec: StoreField: r0->field_f = r1
    //     0x7f1bec: stur            w1, [x0, #0xf]
    // 0x7f1bf0: StoreField: r0->field_13 = r2
    //     0x7f1bf0: stur            w2, [x0, #0x13]
    // 0x7f1bf4: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x7f1bf4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x7f1bf8: ldr             x2, [x2, #0x358]
    // 0x7f1bfc: StoreField: r0->field_4b = r2
    //     0x7f1bfc: stur            w2, [x0, #0x4b]
    // 0x7f1c00: StoreField: r0->field_6b = r1
    //     0x7f1c00: stur            w1, [x0, #0x6b]
    // 0x7f1c04: StoreField: r0->field_6f = r1
    //     0x7f1c04: stur            w1, [x0, #0x6f]
    // 0x7f1c08: LeaveFrame
    //     0x7f1c08: mov             SP, fp
    //     0x7f1c0c: ldp             fp, lr, [SP], #0x10
    // 0x7f1c10: ret
    //     0x7f1c10: ret             
    // 0x7f1c14: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f1c14: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f1c18: b               #0x7f19f0
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7f1c1c, size: 0x5c
    // 0x7f1c1c: EnterFrame
    //     0x7f1c1c: stp             fp, lr, [SP, #-0x10]!
    //     0x7f1c20: mov             fp, SP
    // 0x7f1c24: AllocStack(0x18)
    //     0x7f1c24: sub             SP, SP, #0x18
    // 0x7f1c28: SetupParameters([dynamic _ /* r0 */])
    //     0x7f1c28: ldr             x0, [fp, #0x10]
    //     0x7f1c2c: ldur            w1, [x0, #0x17]
    //     0x7f1c30: add             x1, x1, HEAP, lsl #32
    // 0x7f1c34: CheckStackOverflow
    //     0x7f1c34: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f1c38: cmp             SP, x16
    //     0x7f1c3c: b.ls            #0x7f1c70
    // 0x7f1c40: LoadField: r0 = r1->field_f
    //     0x7f1c40: ldur            w0, [x1, #0xf]
    // 0x7f1c44: DecompressPointer r0
    //     0x7f1c44: add             x0, x0, HEAP, lsl #32
    // 0x7f1c48: r16 = <Object?, Object?>
    //     0x7f1c48: ldr             x16, [PP, #0x4120]  ; [pp+0x4120] TypeArguments: <Object?, Object?>
    // 0x7f1c4c: stp             x0, x16, [SP, #8]
    // 0x7f1c50: r16 = "/main"
    //     0x7f1c50: add             x16, PP, #0x11, lsl #12  ; [pp+0x11368] "/main"
    //     0x7f1c54: ldr             x16, [x16, #0x368]
    // 0x7f1c58: str             x16, [SP]
    // 0x7f1c5c: r4 = const [0x2, 0x2, 0x2, 0x2, null]
    //     0x7f1c5c: ldr             x4, [PP, #0x3fe8]  ; [pp+0x3fe8] List(5) [0x2, 0x2, 0x2, 0x2, Null]
    // 0x7f1c60: r0 = pushReplacementNamed()
    //     0x7f1c60: bl              #0x5ec818  ; [package:flutter/src/widgets/navigator.dart] Navigator::pushReplacementNamed
    // 0x7f1c64: LeaveFrame
    //     0x7f1c64: mov             SP, fp
    //     0x7f1c68: ldp             fp, lr, [SP], #0x10
    // 0x7f1c6c: ret
    //     0x7f1c6c: ret             
    // 0x7f1c70: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f1c70: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f1c74: b               #0x7f1c40
  }
}

// class id: 2889, size: 0xc, field offset: 0xc
//   const constructor, 
class MyApp extends StatelessWidget {

  static late List<CurrencyModel> currencies; // offset: 0x1004
  static late List<NotificationModel> notifications; // offset: 0x1010

  [closure] TavafDualariDownloadProvider <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x5ea98c, size: 0x40
    // 0x5ea98c: EnterFrame
    //     0x5ea98c: stp             fp, lr, [SP, #-0x10]!
    //     0x5ea990: mov             fp, SP
    // 0x5ea994: AllocStack(0x8)
    //     0x5ea994: sub             SP, SP, #8
    // 0x5ea998: CheckStackOverflow
    //     0x5ea998: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ea99c: cmp             SP, x16
    //     0x5ea9a0: b.ls            #0x5ea9c4
    // 0x5ea9a4: r0 = TavafDualariDownloadProvider()
    //     0x5ea9a4: bl              #0x5eaac8  ; AllocateTavafDualariDownloadProviderStub -> TavafDualariDownloadProvider (size=0x3c)
    // 0x5ea9a8: mov             x1, x0
    // 0x5ea9ac: stur            x0, [fp, #-8]
    // 0x5ea9b0: r0 = TavafDualariDownloadProvider()
    //     0x5ea9b0: bl              #0x5ea9cc  ; [package:umrem_demo/features/dualar/providers/tavaf_dualari_download_provider.dart] TavafDualariDownloadProvider::TavafDualariDownloadProvider
    // 0x5ea9b4: ldur            x0, [fp, #-8]
    // 0x5ea9b8: LeaveFrame
    //     0x5ea9b8: mov             SP, fp
    //     0x5ea9bc: ldp             fp, lr, [SP], #0x10
    // 0x5ea9c0: ret
    //     0x5ea9c0: ret             
    // 0x5ea9c4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ea9c4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ea9c8: b               #0x5ea9a4
  }
  [closure] SayDualariDownloadProvider <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x5eaad4, size: 0x40
    // 0x5eaad4: EnterFrame
    //     0x5eaad4: stp             fp, lr, [SP, #-0x10]!
    //     0x5eaad8: mov             fp, SP
    // 0x5eaadc: AllocStack(0x8)
    //     0x5eaadc: sub             SP, SP, #8
    // 0x5eaae0: CheckStackOverflow
    //     0x5eaae0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5eaae4: cmp             SP, x16
    //     0x5eaae8: b.ls            #0x5eab0c
    // 0x5eaaec: r0 = SayDualariDownloadProvider()
    //     0x5eaaec: bl              #0x5eac04  ; AllocateSayDualariDownloadProviderStub -> SayDualariDownloadProvider (size=0x3c)
    // 0x5eaaf0: mov             x1, x0
    // 0x5eaaf4: stur            x0, [fp, #-8]
    // 0x5eaaf8: r0 = SayDualariDownloadProvider()
    //     0x5eaaf8: bl              #0x5eab14  ; [package:umrem_demo/features/dualar/providers/say_dualari_download_provider.dart] SayDualariDownloadProvider::SayDualariDownloadProvider
    // 0x5eaafc: ldur            x0, [fp, #-8]
    // 0x5eab00: LeaveFrame
    //     0x5eab00: mov             SP, fp
    //     0x5eab04: ldp             fp, lr, [SP], #0x10
    // 0x5eab08: ret
    //     0x5eab08: ret             
    // 0x5eab0c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5eab0c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5eab10: b               #0x5eaaec
  }
  [closure] QuranDownloadProvider <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x5eac10, size: 0x40
    // 0x5eac10: EnterFrame
    //     0x5eac10: stp             fp, lr, [SP, #-0x10]!
    //     0x5eac14: mov             fp, SP
    // 0x5eac18: AllocStack(0x8)
    //     0x5eac18: sub             SP, SP, #8
    // 0x5eac1c: CheckStackOverflow
    //     0x5eac1c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5eac20: cmp             SP, x16
    //     0x5eac24: b.ls            #0x5eac48
    // 0x5eac28: r0 = QuranDownloadProvider()
    //     0x5eac28: bl              #0x5ead40  ; AllocateQuranDownloadProviderStub -> QuranDownloadProvider (size=0x3c)
    // 0x5eac2c: mov             x1, x0
    // 0x5eac30: stur            x0, [fp, #-8]
    // 0x5eac34: r0 = QuranDownloadProvider()
    //     0x5eac34: bl              #0x5eac50  ; [package:umrem_demo/features/dualar/providers/quran_download_provider.dart] QuranDownloadProvider::QuranDownloadProvider
    // 0x5eac38: ldur            x0, [fp, #-8]
    // 0x5eac3c: LeaveFrame
    //     0x5eac3c: mov             SP, fp
    //     0x5eac40: ldp             fp, lr, [SP], #0x10
    // 0x5eac44: ret
    //     0x5eac44: ret             
    // 0x5eac48: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5eac48: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5eac4c: b               #0x5eac28
  }
  static List<NotificationModel> notifications() {
    // ** addr: 0x5edb24, size: 0x38
    // 0x5edb24: EnterFrame
    //     0x5edb24: stp             fp, lr, [SP, #-0x10]!
    //     0x5edb28: mov             fp, SP
    // 0x5edb2c: CheckStackOverflow
    //     0x5edb2c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5edb30: cmp             SP, x16
    //     0x5edb34: b.ls            #0x5edb54
    // 0x5edb38: r1 = <NotificationModel>
    //     0x5edb38: add             x1, PP, #0x10, lsl #12  ; [pp+0x10db8] TypeArguments: <NotificationModel>
    //     0x5edb3c: ldr             x1, [x1, #0xdb8]
    // 0x5edb40: r2 = 0
    //     0x5edb40: mov             x2, #0
    // 0x5edb44: r0 = _GrowableList()
    //     0x5edb44: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5edb48: LeaveFrame
    //     0x5edb48: mov             SP, fp
    //     0x5edb4c: ldp             fp, lr, [SP], #0x10
    // 0x5edb50: ret
    //     0x5edb50: ret             
    // 0x5edb54: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5edb54: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5edb58: b               #0x5edb38
  }
  static List<CurrencyModel> currencies() {
    // ** addr: 0x5edb5c, size: 0x38
    // 0x5edb5c: EnterFrame
    //     0x5edb5c: stp             fp, lr, [SP, #-0x10]!
    //     0x5edb60: mov             fp, SP
    // 0x5edb64: CheckStackOverflow
    //     0x5edb64: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5edb68: cmp             SP, x16
    //     0x5edb6c: b.ls            #0x5edb8c
    // 0x5edb70: r1 = <CurrencyModel>
    //     0x5edb70: add             x1, PP, #0x10, lsl #12  ; [pp+0x10d88] TypeArguments: <CurrencyModel>
    //     0x5edb74: ldr             x1, [x1, #0xd88]
    // 0x5edb78: r2 = 0
    //     0x5edb78: mov             x2, #0
    // 0x5edb7c: r0 = _GrowableList()
    //     0x5edb7c: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5edb80: LeaveFrame
    //     0x5edb80: mov             SP, fp
    //     0x5edb84: ldp             fp, lr, [SP], #0x10
    // 0x5edb88: ret
    //     0x5edb88: ret             
    // 0x5edb8c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5edb8c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5edb90: b               #0x5edb70
  }
  _ build(/* No info */) {
    // ** addr: 0x7effa0, size: 0x540
    // 0x7effa0: EnterFrame
    //     0x7effa0: stp             fp, lr, [SP, #-0x10]!
    //     0x7effa4: mov             fp, SP
    // 0x7effa8: AllocStack(0x10)
    //     0x7effa8: sub             SP, SP, #0x10
    // 0x7effac: CheckStackOverflow
    //     0x7effac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7effb0: cmp             SP, x16
    //     0x7effb4: b.ls            #0x7f04d8
    // 0x7effb8: r1 = Function '<anonymous closure>':.
    //     0x7effb8: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b10] AnonymousClosure: (0x7f0ff0), in [package:umrem_demo/main.dart] MyApp::build (0x7effa0)
    //     0x7effbc: ldr             x1, [x1, #0xb10]
    // 0x7effc0: r2 = Null
    //     0x7effc0: mov             x2, NULL
    // 0x7effc4: r0 = AllocateClosure()
    //     0x7effc4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7effc8: r1 = <AppStateProvider>
    //     0x7effc8: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b18] TypeArguments: <AppStateProvider>
    //     0x7effcc: ldr             x1, [x1, #0xb18]
    // 0x7effd0: stur            x0, [fp, #-8]
    // 0x7effd4: r0 = ChangeNotifierProvider()
    //     0x7effd4: bl              #0x5ea974  ; AllocateChangeNotifierProviderStub -> ChangeNotifierProvider<X0 bound ChangeNotifier?> (size=0x20)
    // 0x7effd8: mov             x1, x0
    // 0x7effdc: ldur            x3, [fp, #-8]
    // 0x7effe0: r2 = Null
    //     0x7effe0: mov             x2, NULL
    // 0x7effe4: stur            x0, [fp, #-8]
    // 0x7effe8: r0 = InheritedProvider()
    //     0x7effe8: bl              #0x5ea488  ; [package:provider/src/provider.dart] InheritedProvider::InheritedProvider
    // 0x7effec: r1 = <SingleChildWidget>
    //     0x7effec: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b20] TypeArguments: <SingleChildWidget>
    //     0x7efff0: ldr             x1, [x1, #0xb20]
    // 0x7efff4: r2 = 26
    //     0x7efff4: mov             x2, #0x1a
    // 0x7efff8: r0 = AllocateArray()
    //     0x7efff8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7efffc: mov             x3, x0
    // 0x7f0000: ldur            x0, [fp, #-8]
    // 0x7f0004: stur            x3, [fp, #-0x10]
    // 0x7f0008: StoreField: r3->field_f = r0
    //     0x7f0008: stur            w0, [x3, #0xf]
    // 0x7f000c: r1 = Function '<anonymous closure>':.
    //     0x7f000c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b28] AnonymousClosure: (0x7f0fb0), in [package:umrem_demo/main.dart] MyApp::build (0x7effa0)
    //     0x7f0010: ldr             x1, [x1, #0xb28]
    // 0x7f0014: r2 = Null
    //     0x7f0014: mov             x2, NULL
    // 0x7f0018: r0 = AllocateClosure()
    //     0x7f0018: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7f001c: r1 = <SplashProvider>
    //     0x7f001c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b30] TypeArguments: <SplashProvider>
    //     0x7f0020: ldr             x1, [x1, #0xb30]
    // 0x7f0024: stur            x0, [fp, #-8]
    // 0x7f0028: r0 = ChangeNotifierProvider()
    //     0x7f0028: bl              #0x5ea974  ; AllocateChangeNotifierProviderStub -> ChangeNotifierProvider<X0 bound ChangeNotifier?> (size=0x20)
    // 0x7f002c: mov             x1, x0
    // 0x7f0030: ldur            x3, [fp, #-8]
    // 0x7f0034: r2 = Null
    //     0x7f0034: mov             x2, NULL
    // 0x7f0038: stur            x0, [fp, #-8]
    // 0x7f003c: r0 = InheritedProvider()
    //     0x7f003c: bl              #0x5ea488  ; [package:provider/src/provider.dart] InheritedProvider::InheritedProvider
    // 0x7f0040: ldur            x1, [fp, #-0x10]
    // 0x7f0044: ldur            x0, [fp, #-8]
    // 0x7f0048: ArrayStore: r1[1] = r0  ; List_4
    //     0x7f0048: add             x25, x1, #0x13
    //     0x7f004c: str             w0, [x25]
    //     0x7f0050: tbz             w0, #0, #0x7f006c
    //     0x7f0054: ldurb           w16, [x1, #-1]
    //     0x7f0058: ldurb           w17, [x0, #-1]
    //     0x7f005c: and             x16, x17, x16, lsr #2
    //     0x7f0060: tst             x16, HEAP, lsr #32
    //     0x7f0064: b.eq            #0x7f006c
    //     0x7f0068: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7f006c: r1 = Function '<anonymous closure>':.
    //     0x7f006c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b38] AnonymousClosure: (0x7f0f3c), in [package:umrem_demo/main.dart] MyApp::build (0x7effa0)
    //     0x7f0070: ldr             x1, [x1, #0xb38]
    // 0x7f0074: r2 = Null
    //     0x7f0074: mov             x2, NULL
    // 0x7f0078: r0 = AllocateClosure()
    //     0x7f0078: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7f007c: r1 = <LoginProvider>
    //     0x7f007c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b40] TypeArguments: <LoginProvider>
    //     0x7f0080: ldr             x1, [x1, #0xb40]
    // 0x7f0084: stur            x0, [fp, #-8]
    // 0x7f0088: r0 = ChangeNotifierProvider()
    //     0x7f0088: bl              #0x5ea974  ; AllocateChangeNotifierProviderStub -> ChangeNotifierProvider<X0 bound ChangeNotifier?> (size=0x20)
    // 0x7f008c: mov             x1, x0
    // 0x7f0090: ldur            x3, [fp, #-8]
    // 0x7f0094: r2 = Null
    //     0x7f0094: mov             x2, NULL
    // 0x7f0098: stur            x0, [fp, #-8]
    // 0x7f009c: r0 = InheritedProvider()
    //     0x7f009c: bl              #0x5ea488  ; [package:provider/src/provider.dart] InheritedProvider::InheritedProvider
    // 0x7f00a0: ldur            x1, [fp, #-0x10]
    // 0x7f00a4: ldur            x0, [fp, #-8]
    // 0x7f00a8: ArrayStore: r1[2] = r0  ; List_4
    //     0x7f00a8: add             x25, x1, #0x17
    //     0x7f00ac: str             w0, [x25]
    //     0x7f00b0: tbz             w0, #0, #0x7f00cc
    //     0x7f00b4: ldurb           w16, [x1, #-1]
    //     0x7f00b8: ldurb           w17, [x0, #-1]
    //     0x7f00bc: and             x16, x17, x16, lsr #2
    //     0x7f00c0: tst             x16, HEAP, lsr #32
    //     0x7f00c4: b.eq            #0x7f00cc
    //     0x7f00c8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7f00cc: r1 = Function '<anonymous closure>':.
    //     0x7f00cc: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b48] AnonymousClosure: (0x7f0cac), in [package:umrem_demo/main.dart] MyApp::build (0x7effa0)
    //     0x7f00d0: ldr             x1, [x1, #0xb48]
    // 0x7f00d4: r2 = Null
    //     0x7f00d4: mov             x2, NULL
    // 0x7f00d8: r0 = AllocateClosure()
    //     0x7f00d8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7f00dc: r1 = <AdminProvider>
    //     0x7f00dc: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b50] TypeArguments: <AdminProvider>
    //     0x7f00e0: ldr             x1, [x1, #0xb50]
    // 0x7f00e4: stur            x0, [fp, #-8]
    // 0x7f00e8: r0 = ChangeNotifierProvider()
    //     0x7f00e8: bl              #0x5ea974  ; AllocateChangeNotifierProviderStub -> ChangeNotifierProvider<X0 bound ChangeNotifier?> (size=0x20)
    // 0x7f00ec: mov             x1, x0
    // 0x7f00f0: ldur            x3, [fp, #-8]
    // 0x7f00f4: r2 = Null
    //     0x7f00f4: mov             x2, NULL
    // 0x7f00f8: stur            x0, [fp, #-8]
    // 0x7f00fc: r0 = InheritedProvider()
    //     0x7f00fc: bl              #0x5ea488  ; [package:provider/src/provider.dart] InheritedProvider::InheritedProvider
    // 0x7f0100: ldur            x1, [fp, #-0x10]
    // 0x7f0104: ldur            x0, [fp, #-8]
    // 0x7f0108: ArrayStore: r1[3] = r0  ; List_4
    //     0x7f0108: add             x25, x1, #0x1b
    //     0x7f010c: str             w0, [x25]
    //     0x7f0110: tbz             w0, #0, #0x7f012c
    //     0x7f0114: ldurb           w16, [x1, #-1]
    //     0x7f0118: ldurb           w17, [x0, #-1]
    //     0x7f011c: and             x16, x17, x16, lsr #2
    //     0x7f0120: tst             x16, HEAP, lsr #32
    //     0x7f0124: b.eq            #0x7f012c
    //     0x7f0128: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7f012c: r1 = Function '<anonymous closure>':.
    //     0x7f012c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b58] AnonymousClosure: (0x7f0b60), in [package:umrem_demo/main.dart] MyApp::build (0x7effa0)
    //     0x7f0130: ldr             x1, [x1, #0xb58]
    // 0x7f0134: r2 = Null
    //     0x7f0134: mov             x2, NULL
    // 0x7f0138: r0 = AllocateClosure()
    //     0x7f0138: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7f013c: r1 = <AgencyProvider>
    //     0x7f013c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b60] TypeArguments: <AgencyProvider>
    //     0x7f0140: ldr             x1, [x1, #0xb60]
    // 0x7f0144: stur            x0, [fp, #-8]
    // 0x7f0148: r0 = ChangeNotifierProvider()
    //     0x7f0148: bl              #0x5ea974  ; AllocateChangeNotifierProviderStub -> ChangeNotifierProvider<X0 bound ChangeNotifier?> (size=0x20)
    // 0x7f014c: mov             x1, x0
    // 0x7f0150: ldur            x3, [fp, #-8]
    // 0x7f0154: r2 = Null
    //     0x7f0154: mov             x2, NULL
    // 0x7f0158: stur            x0, [fp, #-8]
    // 0x7f015c: r0 = InheritedProvider()
    //     0x7f015c: bl              #0x5ea488  ; [package:provider/src/provider.dart] InheritedProvider::InheritedProvider
    // 0x7f0160: ldur            x1, [fp, #-0x10]
    // 0x7f0164: ldur            x0, [fp, #-8]
    // 0x7f0168: ArrayStore: r1[4] = r0  ; List_4
    //     0x7f0168: add             x25, x1, #0x1f
    //     0x7f016c: str             w0, [x25]
    //     0x7f0170: tbz             w0, #0, #0x7f018c
    //     0x7f0174: ldurb           w16, [x1, #-1]
    //     0x7f0178: ldurb           w17, [x0, #-1]
    //     0x7f017c: and             x16, x17, x16, lsr #2
    //     0x7f0180: tst             x16, HEAP, lsr #32
    //     0x7f0184: b.eq            #0x7f018c
    //     0x7f0188: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7f018c: r1 = Function '<anonymous closure>':.
    //     0x7f018c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b68] AnonymousClosure: (0x7f0a18), in [package:umrem_demo/main.dart] MyApp::build (0x7effa0)
    //     0x7f0190: ldr             x1, [x1, #0xb68]
    // 0x7f0194: r2 = Null
    //     0x7f0194: mov             x2, NULL
    // 0x7f0198: r0 = AllocateClosure()
    //     0x7f0198: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7f019c: r1 = <CurrencyProvider>
    //     0x7f019c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b70] TypeArguments: <CurrencyProvider>
    //     0x7f01a0: ldr             x1, [x1, #0xb70]
    // 0x7f01a4: stur            x0, [fp, #-8]
    // 0x7f01a8: r0 = ChangeNotifierProvider()
    //     0x7f01a8: bl              #0x5ea974  ; AllocateChangeNotifierProviderStub -> ChangeNotifierProvider<X0 bound ChangeNotifier?> (size=0x20)
    // 0x7f01ac: mov             x1, x0
    // 0x7f01b0: ldur            x3, [fp, #-8]
    // 0x7f01b4: r2 = Null
    //     0x7f01b4: mov             x2, NULL
    // 0x7f01b8: stur            x0, [fp, #-8]
    // 0x7f01bc: r0 = InheritedProvider()
    //     0x7f01bc: bl              #0x5ea488  ; [package:provider/src/provider.dart] InheritedProvider::InheritedProvider
    // 0x7f01c0: ldur            x1, [fp, #-0x10]
    // 0x7f01c4: ldur            x0, [fp, #-8]
    // 0x7f01c8: ArrayStore: r1[5] = r0  ; List_4
    //     0x7f01c8: add             x25, x1, #0x23
    //     0x7f01cc: str             w0, [x25]
    //     0x7f01d0: tbz             w0, #0, #0x7f01ec
    //     0x7f01d4: ldurb           w16, [x1, #-1]
    //     0x7f01d8: ldurb           w17, [x0, #-1]
    //     0x7f01dc: and             x16, x17, x16, lsr #2
    //     0x7f01e0: tst             x16, HEAP, lsr #32
    //     0x7f01e4: b.eq            #0x7f01ec
    //     0x7f01e8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7f01ec: r1 = Function '<anonymous closure>':.
    //     0x7f01ec: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b78] AnonymousClosure: (0x7f0884), in [package:umrem_demo/main.dart] MyApp::build (0x7effa0)
    //     0x7f01f0: ldr             x1, [x1, #0xb78]
    // 0x7f01f4: r2 = Null
    //     0x7f01f4: mov             x2, NULL
    // 0x7f01f8: r0 = AllocateClosure()
    //     0x7f01f8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7f01fc: r1 = <EventProvider>
    //     0x7f01fc: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b80] TypeArguments: <EventProvider>
    //     0x7f0200: ldr             x1, [x1, #0xb80]
    // 0x7f0204: stur            x0, [fp, #-8]
    // 0x7f0208: r0 = ChangeNotifierProvider()
    //     0x7f0208: bl              #0x5ea974  ; AllocateChangeNotifierProviderStub -> ChangeNotifierProvider<X0 bound ChangeNotifier?> (size=0x20)
    // 0x7f020c: mov             x1, x0
    // 0x7f0210: ldur            x3, [fp, #-8]
    // 0x7f0214: r2 = Null
    //     0x7f0214: mov             x2, NULL
    // 0x7f0218: stur            x0, [fp, #-8]
    // 0x7f021c: r0 = InheritedProvider()
    //     0x7f021c: bl              #0x5ea488  ; [package:provider/src/provider.dart] InheritedProvider::InheritedProvider
    // 0x7f0220: ldur            x1, [fp, #-0x10]
    // 0x7f0224: ldur            x0, [fp, #-8]
    // 0x7f0228: ArrayStore: r1[6] = r0  ; List_4
    //     0x7f0228: add             x25, x1, #0x27
    //     0x7f022c: str             w0, [x25]
    //     0x7f0230: tbz             w0, #0, #0x7f024c
    //     0x7f0234: ldurb           w16, [x1, #-1]
    //     0x7f0238: ldurb           w17, [x0, #-1]
    //     0x7f023c: and             x16, x17, x16, lsr #2
    //     0x7f0240: tst             x16, HEAP, lsr #32
    //     0x7f0244: b.eq            #0x7f024c
    //     0x7f0248: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7f024c: r1 = Function '<anonymous closure>':.
    //     0x7f024c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b88] AnonymousClosure: (0x7f0760), in [package:umrem_demo/main.dart] MyApp::build (0x7effa0)
    //     0x7f0250: ldr             x1, [x1, #0xb88]
    // 0x7f0254: r2 = Null
    //     0x7f0254: mov             x2, NULL
    // 0x7f0258: r0 = AllocateClosure()
    //     0x7f0258: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7f025c: r1 = <NotificationProvider>
    //     0x7f025c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b90] TypeArguments: <NotificationProvider>
    //     0x7f0260: ldr             x1, [x1, #0xb90]
    // 0x7f0264: stur            x0, [fp, #-8]
    // 0x7f0268: r0 = ChangeNotifierProvider()
    //     0x7f0268: bl              #0x5ea974  ; AllocateChangeNotifierProviderStub -> ChangeNotifierProvider<X0 bound ChangeNotifier?> (size=0x20)
    // 0x7f026c: mov             x1, x0
    // 0x7f0270: ldur            x3, [fp, #-8]
    // 0x7f0274: r2 = Null
    //     0x7f0274: mov             x2, NULL
    // 0x7f0278: stur            x0, [fp, #-8]
    // 0x7f027c: r0 = InheritedProvider()
    //     0x7f027c: bl              #0x5ea488  ; [package:provider/src/provider.dart] InheritedProvider::InheritedProvider
    // 0x7f0280: ldur            x1, [fp, #-0x10]
    // 0x7f0284: ldur            x0, [fp, #-8]
    // 0x7f0288: ArrayStore: r1[7] = r0  ; List_4
    //     0x7f0288: add             x25, x1, #0x2b
    //     0x7f028c: str             w0, [x25]
    //     0x7f0290: tbz             w0, #0, #0x7f02ac
    //     0x7f0294: ldurb           w16, [x1, #-1]
    //     0x7f0298: ldurb           w17, [x0, #-1]
    //     0x7f029c: and             x16, x17, x16, lsr #2
    //     0x7f02a0: tst             x16, HEAP, lsr #32
    //     0x7f02a4: b.eq            #0x7f02ac
    //     0x7f02a8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7f02ac: r1 = Function '<anonymous closure>':.
    //     0x7f02ac: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b98] AnonymousClosure: (0x7f0648), in [package:umrem_demo/main.dart] MyApp::build (0x7effa0)
    //     0x7f02b0: ldr             x1, [x1, #0xb98]
    // 0x7f02b4: r2 = Null
    //     0x7f02b4: mov             x2, NULL
    // 0x7f02b8: r0 = AllocateClosure()
    //     0x7f02b8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7f02bc: r1 = <HomeProvider>
    //     0x7f02bc: add             x1, PP, #0x10, lsl #12  ; [pp+0x10ba0] TypeArguments: <HomeProvider>
    //     0x7f02c0: ldr             x1, [x1, #0xba0]
    // 0x7f02c4: stur            x0, [fp, #-8]
    // 0x7f02c8: r0 = ChangeNotifierProvider()
    //     0x7f02c8: bl              #0x5ea974  ; AllocateChangeNotifierProviderStub -> ChangeNotifierProvider<X0 bound ChangeNotifier?> (size=0x20)
    // 0x7f02cc: mov             x1, x0
    // 0x7f02d0: ldur            x3, [fp, #-8]
    // 0x7f02d4: r2 = Null
    //     0x7f02d4: mov             x2, NULL
    // 0x7f02d8: stur            x0, [fp, #-8]
    // 0x7f02dc: r0 = InheritedProvider()
    //     0x7f02dc: bl              #0x5ea488  ; [package:provider/src/provider.dart] InheritedProvider::InheritedProvider
    // 0x7f02e0: ldur            x1, [fp, #-0x10]
    // 0x7f02e4: ldur            x0, [fp, #-8]
    // 0x7f02e8: ArrayStore: r1[8] = r0  ; List_4
    //     0x7f02e8: add             x25, x1, #0x2f
    //     0x7f02ec: str             w0, [x25]
    //     0x7f02f0: tbz             w0, #0, #0x7f030c
    //     0x7f02f4: ldurb           w16, [x1, #-1]
    //     0x7f02f8: ldurb           w17, [x0, #-1]
    //     0x7f02fc: and             x16, x17, x16, lsr #2
    //     0x7f0300: tst             x16, HEAP, lsr #32
    //     0x7f0304: b.eq            #0x7f030c
    //     0x7f0308: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7f030c: r1 = Function '<anonymous closure>':.
    //     0x7f030c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10ba8] AnonymousClosure: (0x7f04e0), in [package:umrem_demo/main.dart] MyApp::build (0x7effa0)
    //     0x7f0310: ldr             x1, [x1, #0xba8]
    // 0x7f0314: r2 = Null
    //     0x7f0314: mov             x2, NULL
    // 0x7f0318: r0 = AllocateClosure()
    //     0x7f0318: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7f031c: r1 = <QuranProvider>
    //     0x7f031c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10bb0] TypeArguments: <QuranProvider>
    //     0x7f0320: ldr             x1, [x1, #0xbb0]
    // 0x7f0324: stur            x0, [fp, #-8]
    // 0x7f0328: r0 = ChangeNotifierProvider()
    //     0x7f0328: bl              #0x5ea974  ; AllocateChangeNotifierProviderStub -> ChangeNotifierProvider<X0 bound ChangeNotifier?> (size=0x20)
    // 0x7f032c: mov             x1, x0
    // 0x7f0330: ldur            x3, [fp, #-8]
    // 0x7f0334: r2 = Null
    //     0x7f0334: mov             x2, NULL
    // 0x7f0338: stur            x0, [fp, #-8]
    // 0x7f033c: r0 = InheritedProvider()
    //     0x7f033c: bl              #0x5ea488  ; [package:provider/src/provider.dart] InheritedProvider::InheritedProvider
    // 0x7f0340: ldur            x1, [fp, #-0x10]
    // 0x7f0344: ldur            x0, [fp, #-8]
    // 0x7f0348: ArrayStore: r1[9] = r0  ; List_4
    //     0x7f0348: add             x25, x1, #0x33
    //     0x7f034c: str             w0, [x25]
    //     0x7f0350: tbz             w0, #0, #0x7f036c
    //     0x7f0354: ldurb           w16, [x1, #-1]
    //     0x7f0358: ldurb           w17, [x0, #-1]
    //     0x7f035c: and             x16, x17, x16, lsr #2
    //     0x7f0360: tst             x16, HEAP, lsr #32
    //     0x7f0364: b.eq            #0x7f036c
    //     0x7f0368: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7f036c: r1 = Function '<anonymous closure>':.
    //     0x7f036c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10bb8] AnonymousClosure: (0x5eac10), in [package:umrem_demo/main.dart] MyApp::build (0x7effa0)
    //     0x7f0370: ldr             x1, [x1, #0xbb8]
    // 0x7f0374: r2 = Null
    //     0x7f0374: mov             x2, NULL
    // 0x7f0378: r0 = AllocateClosure()
    //     0x7f0378: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7f037c: r1 = <QuranDownloadProvider>
    //     0x7f037c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10bc0] TypeArguments: <QuranDownloadProvider>
    //     0x7f0380: ldr             x1, [x1, #0xbc0]
    // 0x7f0384: stur            x0, [fp, #-8]
    // 0x7f0388: r0 = ChangeNotifierProvider()
    //     0x7f0388: bl              #0x5ea974  ; AllocateChangeNotifierProviderStub -> ChangeNotifierProvider<X0 bound ChangeNotifier?> (size=0x20)
    // 0x7f038c: mov             x1, x0
    // 0x7f0390: ldur            x3, [fp, #-8]
    // 0x7f0394: r2 = Null
    //     0x7f0394: mov             x2, NULL
    // 0x7f0398: stur            x0, [fp, #-8]
    // 0x7f039c: r0 = InheritedProvider()
    //     0x7f039c: bl              #0x5ea488  ; [package:provider/src/provider.dart] InheritedProvider::InheritedProvider
    // 0x7f03a0: ldur            x1, [fp, #-0x10]
    // 0x7f03a4: ldur            x0, [fp, #-8]
    // 0x7f03a8: ArrayStore: r1[10] = r0  ; List_4
    //     0x7f03a8: add             x25, x1, #0x37
    //     0x7f03ac: str             w0, [x25]
    //     0x7f03b0: tbz             w0, #0, #0x7f03cc
    //     0x7f03b4: ldurb           w16, [x1, #-1]
    //     0x7f03b8: ldurb           w17, [x0, #-1]
    //     0x7f03bc: and             x16, x17, x16, lsr #2
    //     0x7f03c0: tst             x16, HEAP, lsr #32
    //     0x7f03c4: b.eq            #0x7f03cc
    //     0x7f03c8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7f03cc: r1 = Function '<anonymous closure>':.
    //     0x7f03cc: add             x1, PP, #0x10, lsl #12  ; [pp+0x10bc8] AnonymousClosure: (0x5eaad4), in [package:umrem_demo/main.dart] MyApp::build (0x7effa0)
    //     0x7f03d0: ldr             x1, [x1, #0xbc8]
    // 0x7f03d4: r2 = Null
    //     0x7f03d4: mov             x2, NULL
    // 0x7f03d8: r0 = AllocateClosure()
    //     0x7f03d8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7f03dc: r1 = <SayDualariDownloadProvider>
    //     0x7f03dc: add             x1, PP, #0x10, lsl #12  ; [pp+0x10bd0] TypeArguments: <SayDualariDownloadProvider>
    //     0x7f03e0: ldr             x1, [x1, #0xbd0]
    // 0x7f03e4: stur            x0, [fp, #-8]
    // 0x7f03e8: r0 = ChangeNotifierProvider()
    //     0x7f03e8: bl              #0x5ea974  ; AllocateChangeNotifierProviderStub -> ChangeNotifierProvider<X0 bound ChangeNotifier?> (size=0x20)
    // 0x7f03ec: mov             x1, x0
    // 0x7f03f0: ldur            x3, [fp, #-8]
    // 0x7f03f4: r2 = Null
    //     0x7f03f4: mov             x2, NULL
    // 0x7f03f8: stur            x0, [fp, #-8]
    // 0x7f03fc: r0 = InheritedProvider()
    //     0x7f03fc: bl              #0x5ea488  ; [package:provider/src/provider.dart] InheritedProvider::InheritedProvider
    // 0x7f0400: ldur            x1, [fp, #-0x10]
    // 0x7f0404: ldur            x0, [fp, #-8]
    // 0x7f0408: ArrayStore: r1[11] = r0  ; List_4
    //     0x7f0408: add             x25, x1, #0x3b
    //     0x7f040c: str             w0, [x25]
    //     0x7f0410: tbz             w0, #0, #0x7f042c
    //     0x7f0414: ldurb           w16, [x1, #-1]
    //     0x7f0418: ldurb           w17, [x0, #-1]
    //     0x7f041c: and             x16, x17, x16, lsr #2
    //     0x7f0420: tst             x16, HEAP, lsr #32
    //     0x7f0424: b.eq            #0x7f042c
    //     0x7f0428: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7f042c: r1 = Function '<anonymous closure>':.
    //     0x7f042c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10bd8] AnonymousClosure: (0x5ea98c), in [package:umrem_demo/main.dart] MyApp::build (0x7effa0)
    //     0x7f0430: ldr             x1, [x1, #0xbd8]
    // 0x7f0434: r2 = Null
    //     0x7f0434: mov             x2, NULL
    // 0x7f0438: r0 = AllocateClosure()
    //     0x7f0438: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7f043c: r1 = <TavafDualariDownloadProvider>
    //     0x7f043c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10be0] TypeArguments: <TavafDualariDownloadProvider>
    //     0x7f0440: ldr             x1, [x1, #0xbe0]
    // 0x7f0444: stur            x0, [fp, #-8]
    // 0x7f0448: r0 = ChangeNotifierProvider()
    //     0x7f0448: bl              #0x5ea974  ; AllocateChangeNotifierProviderStub -> ChangeNotifierProvider<X0 bound ChangeNotifier?> (size=0x20)
    // 0x7f044c: mov             x1, x0
    // 0x7f0450: ldur            x3, [fp, #-8]
    // 0x7f0454: r2 = Null
    //     0x7f0454: mov             x2, NULL
    // 0x7f0458: stur            x0, [fp, #-8]
    // 0x7f045c: r0 = InheritedProvider()
    //     0x7f045c: bl              #0x5ea488  ; [package:provider/src/provider.dart] InheritedProvider::InheritedProvider
    // 0x7f0460: ldur            x1, [fp, #-0x10]
    // 0x7f0464: ldur            x0, [fp, #-8]
    // 0x7f0468: ArrayStore: r1[12] = r0  ; List_4
    //     0x7f0468: add             x25, x1, #0x3f
    //     0x7f046c: str             w0, [x25]
    //     0x7f0470: tbz             w0, #0, #0x7f048c
    //     0x7f0474: ldurb           w16, [x1, #-1]
    //     0x7f0478: ldurb           w17, [x0, #-1]
    //     0x7f047c: and             x16, x17, x16, lsr #2
    //     0x7f0480: tst             x16, HEAP, lsr #32
    //     0x7f0484: b.eq            #0x7f048c
    //     0x7f0488: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7f048c: r1 = <SingleChildWidget>
    //     0x7f048c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b20] TypeArguments: <SingleChildWidget>
    //     0x7f0490: ldr             x1, [x1, #0xb20]
    // 0x7f0494: r0 = AllocateGrowableArray()
    //     0x7f0494: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7f0498: mov             x1, x0
    // 0x7f049c: ldur            x0, [fp, #-0x10]
    // 0x7f04a0: StoreField: r1->field_f = r0
    //     0x7f04a0: stur            w0, [x1, #0xf]
    // 0x7f04a4: r0 = 26
    //     0x7f04a4: mov             x0, #0x1a
    // 0x7f04a8: StoreField: r1->field_b = r0
    //     0x7f04a8: stur            w0, [x1, #0xb]
    // 0x7f04ac: r0 = _collapseProviders()
    //     0x7f04ac: bl              #0x5ea530  ; [package:provider/src/provider.dart] MultiProvider::_collapseProviders
    // 0x7f04b0: stur            x0, [fp, #-8]
    // 0x7f04b4: r0 = MultiProvider()
    //     0x7f04b4: bl              #0x5ea524  ; AllocateMultiProviderStub -> MultiProvider (size=0x14)
    // 0x7f04b8: ldur            x1, [fp, #-8]
    // 0x7f04bc: StoreField: r0->field_b = r1
    //     0x7f04bc: stur            w1, [x0, #0xb]
    // 0x7f04c0: r1 = Instance__AppContent
    //     0x7f04c0: add             x1, PP, #0x10, lsl #12  ; [pp+0x10be8] Obj!_AppContent@a1ade1
    //     0x7f04c4: ldr             x1, [x1, #0xbe8]
    // 0x7f04c8: StoreField: r0->field_f = r1
    //     0x7f04c8: stur            w1, [x0, #0xf]
    // 0x7f04cc: LeaveFrame
    //     0x7f04cc: mov             SP, fp
    //     0x7f04d0: ldp             fp, lr, [SP], #0x10
    // 0x7f04d4: ret
    //     0x7f04d4: ret             
    // 0x7f04d8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f04d8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f04dc: b               #0x7effb8
  }
  [closure] QuranProvider <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7f04e0, size: 0x40
    // 0x7f04e0: EnterFrame
    //     0x7f04e0: stp             fp, lr, [SP, #-0x10]!
    //     0x7f04e4: mov             fp, SP
    // 0x7f04e8: AllocStack(0x8)
    //     0x7f04e8: sub             SP, SP, #8
    // 0x7f04ec: CheckStackOverflow
    //     0x7f04ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f04f0: cmp             SP, x16
    //     0x7f04f4: b.ls            #0x7f0518
    // 0x7f04f8: r0 = QuranProvider()
    //     0x7f04f8: bl              #0x7f063c  ; AllocateQuranProviderStub -> QuranProvider (size=0x3c)
    // 0x7f04fc: mov             x1, x0
    // 0x7f0500: stur            x0, [fp, #-8]
    // 0x7f0504: r0 = QuranProvider()
    //     0x7f0504: bl              #0x7f0520  ; [package:umrem_demo/features/dualar/providers/quran_provider.dart] QuranProvider::QuranProvider
    // 0x7f0508: ldur            x0, [fp, #-8]
    // 0x7f050c: LeaveFrame
    //     0x7f050c: mov             SP, fp
    //     0x7f0510: ldp             fp, lr, [SP], #0x10
    // 0x7f0514: ret
    //     0x7f0514: ret             
    // 0x7f0518: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f0518: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f051c: b               #0x7f04f8
  }
  [closure] HomeProvider <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7f0648, size: 0x40
    // 0x7f0648: EnterFrame
    //     0x7f0648: stp             fp, lr, [SP, #-0x10]!
    //     0x7f064c: mov             fp, SP
    // 0x7f0650: AllocStack(0x8)
    //     0x7f0650: sub             SP, SP, #8
    // 0x7f0654: CheckStackOverflow
    //     0x7f0654: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f0658: cmp             SP, x16
    //     0x7f065c: b.ls            #0x7f0680
    // 0x7f0660: r0 = HomeProvider()
    //     0x7f0660: bl              #0x7f0754  ; AllocateHomeProviderStub -> HomeProvider (size=0x30)
    // 0x7f0664: mov             x1, x0
    // 0x7f0668: stur            x0, [fp, #-8]
    // 0x7f066c: r0 = HomeProvider()
    //     0x7f066c: bl              #0x7f0688  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::HomeProvider
    // 0x7f0670: ldur            x0, [fp, #-8]
    // 0x7f0674: LeaveFrame
    //     0x7f0674: mov             SP, fp
    //     0x7f0678: ldp             fp, lr, [SP], #0x10
    // 0x7f067c: ret
    //     0x7f067c: ret             
    // 0x7f0680: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f0680: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f0684: b               #0x7f0660
  }
  [closure] NotificationProvider <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7f0760, size: 0x40
    // 0x7f0760: EnterFrame
    //     0x7f0760: stp             fp, lr, [SP, #-0x10]!
    //     0x7f0764: mov             fp, SP
    // 0x7f0768: AllocStack(0x8)
    //     0x7f0768: sub             SP, SP, #8
    // 0x7f076c: CheckStackOverflow
    //     0x7f076c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f0770: cmp             SP, x16
    //     0x7f0774: b.ls            #0x7f0798
    // 0x7f0778: r0 = NotificationProvider()
    //     0x7f0778: bl              #0x7f0878  ; AllocateNotificationProviderStub -> NotificationProvider (size=0x3c)
    // 0x7f077c: mov             x1, x0
    // 0x7f0780: stur            x0, [fp, #-8]
    // 0x7f0784: r0 = NotificationProvider()
    //     0x7f0784: bl              #0x7f07a0  ; [package:umrem_demo/features/admin/providers/notification_provider.dart] NotificationProvider::NotificationProvider
    // 0x7f0788: ldur            x0, [fp, #-8]
    // 0x7f078c: LeaveFrame
    //     0x7f078c: mov             SP, fp
    //     0x7f0790: ldp             fp, lr, [SP], #0x10
    // 0x7f0794: ret
    //     0x7f0794: ret             
    // 0x7f0798: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f0798: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f079c: b               #0x7f0778
  }
  [closure] EventProvider <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7f0884, size: 0x40
    // 0x7f0884: EnterFrame
    //     0x7f0884: stp             fp, lr, [SP, #-0x10]!
    //     0x7f0888: mov             fp, SP
    // 0x7f088c: AllocStack(0x8)
    //     0x7f088c: sub             SP, SP, #8
    // 0x7f0890: CheckStackOverflow
    //     0x7f0890: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f0894: cmp             SP, x16
    //     0x7f0898: b.ls            #0x7f08bc
    // 0x7f089c: r0 = EventProvider()
    //     0x7f089c: bl              #0x7f0a0c  ; AllocateEventProviderStub -> EventProvider (size=0x34)
    // 0x7f08a0: mov             x1, x0
    // 0x7f08a4: stur            x0, [fp, #-8]
    // 0x7f08a8: r0 = EventProvider()
    //     0x7f08a8: bl              #0x7f08c4  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::EventProvider
    // 0x7f08ac: ldur            x0, [fp, #-8]
    // 0x7f08b0: LeaveFrame
    //     0x7f08b0: mov             SP, fp
    //     0x7f08b4: ldp             fp, lr, [SP], #0x10
    // 0x7f08b8: ret
    //     0x7f08b8: ret             
    // 0x7f08bc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f08bc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f08c0: b               #0x7f089c
  }
  [closure] CurrencyProvider <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7f0a18, size: 0x40
    // 0x7f0a18: EnterFrame
    //     0x7f0a18: stp             fp, lr, [SP, #-0x10]!
    //     0x7f0a1c: mov             fp, SP
    // 0x7f0a20: AllocStack(0x8)
    //     0x7f0a20: sub             SP, SP, #8
    // 0x7f0a24: CheckStackOverflow
    //     0x7f0a24: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f0a28: cmp             SP, x16
    //     0x7f0a2c: b.ls            #0x7f0a50
    // 0x7f0a30: r0 = CurrencyProvider()
    //     0x7f0a30: bl              #0x7f0b54  ; AllocateCurrencyProviderStub -> CurrencyProvider (size=0x30)
    // 0x7f0a34: mov             x1, x0
    // 0x7f0a38: stur            x0, [fp, #-8]
    // 0x7f0a3c: r0 = CurrencyProvider()
    //     0x7f0a3c: bl              #0x7f0a58  ; [package:umrem_demo/features/admin/providers/currency_provider.dart] CurrencyProvider::CurrencyProvider
    // 0x7f0a40: ldur            x0, [fp, #-8]
    // 0x7f0a44: LeaveFrame
    //     0x7f0a44: mov             SP, fp
    //     0x7f0a48: ldp             fp, lr, [SP], #0x10
    // 0x7f0a4c: ret
    //     0x7f0a4c: ret             
    // 0x7f0a50: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f0a50: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f0a54: b               #0x7f0a30
  }
  [closure] AgencyProvider <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7f0b60, size: 0x40
    // 0x7f0b60: EnterFrame
    //     0x7f0b60: stp             fp, lr, [SP, #-0x10]!
    //     0x7f0b64: mov             fp, SP
    // 0x7f0b68: AllocStack(0x8)
    //     0x7f0b68: sub             SP, SP, #8
    // 0x7f0b6c: CheckStackOverflow
    //     0x7f0b6c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f0b70: cmp             SP, x16
    //     0x7f0b74: b.ls            #0x7f0b98
    // 0x7f0b78: r0 = AgencyProvider()
    //     0x7f0b78: bl              #0x7f0ca0  ; AllocateAgencyProviderStub -> AgencyProvider (size=0x34)
    // 0x7f0b7c: mov             x1, x0
    // 0x7f0b80: stur            x0, [fp, #-8]
    // 0x7f0b84: r0 = AgencyProvider()
    //     0x7f0b84: bl              #0x7f0ba0  ; [package:umrem_demo/features/admin/providers/agency_provider.dart] AgencyProvider::AgencyProvider
    // 0x7f0b88: ldur            x0, [fp, #-8]
    // 0x7f0b8c: LeaveFrame
    //     0x7f0b8c: mov             SP, fp
    //     0x7f0b90: ldp             fp, lr, [SP], #0x10
    // 0x7f0b94: ret
    //     0x7f0b94: ret             
    // 0x7f0b98: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f0b98: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f0b9c: b               #0x7f0b78
  }
  [closure] AdminProvider <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7f0cac, size: 0x40
    // 0x7f0cac: EnterFrame
    //     0x7f0cac: stp             fp, lr, [SP, #-0x10]!
    //     0x7f0cb0: mov             fp, SP
    // 0x7f0cb4: AllocStack(0x8)
    //     0x7f0cb4: sub             SP, SP, #8
    // 0x7f0cb8: CheckStackOverflow
    //     0x7f0cb8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f0cbc: cmp             SP, x16
    //     0x7f0cc0: b.ls            #0x7f0ce4
    // 0x7f0cc4: r0 = AdminProvider()
    //     0x7f0cc4: bl              #0x7f0f30  ; AllocateAdminProviderStub -> AdminProvider (size=0x50)
    // 0x7f0cc8: mov             x1, x0
    // 0x7f0ccc: stur            x0, [fp, #-8]
    // 0x7f0cd0: r0 = AdminProvider()
    //     0x7f0cd0: bl              #0x7f0cec  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::AdminProvider
    // 0x7f0cd4: ldur            x0, [fp, #-8]
    // 0x7f0cd8: LeaveFrame
    //     0x7f0cd8: mov             SP, fp
    //     0x7f0cdc: ldp             fp, lr, [SP], #0x10
    // 0x7f0ce0: ret
    //     0x7f0ce0: ret             
    // 0x7f0ce4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f0ce4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f0ce8: b               #0x7f0cc4
  }
  [closure] LoginProvider <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7f0f3c, size: 0x68
    // 0x7f0f3c: EnterFrame
    //     0x7f0f3c: stp             fp, lr, [SP, #-0x10]!
    //     0x7f0f40: mov             fp, SP
    // 0x7f0f44: AllocStack(0x8)
    //     0x7f0f44: sub             SP, SP, #8
    // 0x7f0f48: CheckStackOverflow
    //     0x7f0f48: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f0f4c: cmp             SP, x16
    //     0x7f0f50: b.ls            #0x7f0f9c
    // 0x7f0f54: r0 = LoginProvider()
    //     0x7f0f54: bl              #0x7f0fa4  ; AllocateLoginProviderStub -> LoginProvider (size=0x24)
    // 0x7f0f58: stur            x0, [fp, #-8]
    // 0x7f0f5c: StoreField: r0->field_7 = rZR
    //     0x7f0f5c: stur            xzr, [x0, #7]
    // 0x7f0f60: StoreField: r0->field_13 = rZR
    //     0x7f0f60: stur            xzr, [x0, #0x13]
    // 0x7f0f64: StoreField: r0->field_1b = rZR
    //     0x7f0f64: stur            xzr, [x0, #0x1b]
    // 0x7f0f68: r0 = InitLateStaticField(0x5e0) // [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::_emptyListeners
    //     0x7f0f68: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7f0f6c: ldr             x0, [x0, #0xbc0]
    //     0x7f0f70: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7f0f74: cmp             w0, w16
    //     0x7f0f78: b.ne            #0x7f0f84
    //     0x7f0f7c: ldr             x2, [PP, #0x1c28]  ; [pp+0x1c28] Field <ChangeNotifier._emptyListeners@88329750>: static late final (offset: 0x5e0)
    //     0x7f0f80: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x7f0f84: mov             x1, x0
    // 0x7f0f88: ldur            x0, [fp, #-8]
    // 0x7f0f8c: StoreField: r0->field_f = r1
    //     0x7f0f8c: stur            w1, [x0, #0xf]
    // 0x7f0f90: LeaveFrame
    //     0x7f0f90: mov             SP, fp
    //     0x7f0f94: ldp             fp, lr, [SP], #0x10
    // 0x7f0f98: ret
    //     0x7f0f98: ret             
    // 0x7f0f9c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f0f9c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f0fa0: b               #0x7f0f54
  }
  [closure] SplashProvider <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7f0fb0, size: 0x40
    // 0x7f0fb0: EnterFrame
    //     0x7f0fb0: stp             fp, lr, [SP, #-0x10]!
    //     0x7f0fb4: mov             fp, SP
    // 0x7f0fb8: AllocStack(0x8)
    //     0x7f0fb8: sub             SP, SP, #8
    // 0x7f0fbc: CheckStackOverflow
    //     0x7f0fbc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f0fc0: cmp             SP, x16
    //     0x7f0fc4: b.ls            #0x7f0fe8
    // 0x7f0fc8: r0 = SplashProvider()
    //     0x7f0fc8: bl              #0x7ea338  ; AllocateSplashProviderStub -> SplashProvider (size=0x38)
    // 0x7f0fcc: mov             x1, x0
    // 0x7f0fd0: stur            x0, [fp, #-8]
    // 0x7f0fd4: r0 = SplashProvider()
    //     0x7f0fd4: bl              #0x7ea240  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::SplashProvider
    // 0x7f0fd8: ldur            x0, [fp, #-8]
    // 0x7f0fdc: LeaveFrame
    //     0x7f0fdc: mov             SP, fp
    //     0x7f0fe0: ldp             fp, lr, [SP], #0x10
    // 0x7f0fe4: ret
    //     0x7f0fe4: ret             
    // 0x7f0fe8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f0fe8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f0fec: b               #0x7f0fc8
  }
  [closure] AppStateProvider <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7f0ff0, size: 0x40
    // 0x7f0ff0: EnterFrame
    //     0x7f0ff0: stp             fp, lr, [SP, #-0x10]!
    //     0x7f0ff4: mov             fp, SP
    // 0x7f0ff8: AllocStack(0x8)
    //     0x7f0ff8: sub             SP, SP, #8
    // 0x7f0ffc: CheckStackOverflow
    //     0x7f0ffc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f1000: cmp             SP, x16
    //     0x7f1004: b.ls            #0x7f1028
    // 0x7f1008: r0 = AppStateProvider()
    //     0x7f1008: bl              #0x7f10dc  ; AllocateAppStateProviderStub -> AppStateProvider (size=0x2c)
    // 0x7f100c: mov             x1, x0
    // 0x7f1010: stur            x0, [fp, #-8]
    // 0x7f1014: r0 = AppStateProvider()
    //     0x7f1014: bl              #0x7f1030  ; [package:umrem_demo/core/providers/app_state_provider.dart] AppStateProvider::AppStateProvider
    // 0x7f1018: ldur            x0, [fp, #-8]
    // 0x7f101c: LeaveFrame
    //     0x7f101c: mov             SP, fp
    //     0x7f1020: ldp             fp, lr, [SP], #0x10
    // 0x7f1024: ret
    //     0x7f1024: ret             
    // 0x7f1028: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f1028: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f102c: b               #0x7f1008
  }
}

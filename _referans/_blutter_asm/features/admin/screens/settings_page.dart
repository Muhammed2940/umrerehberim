// lib: , url: package:umrem_demo/features/admin/screens/settings_page.dart

// class id: 1049533, size: 0x8
class :: {
}

// class id: 2487, size: 0x20, field offset: 0x14
class _SettingsPageState extends State<dynamic> {

  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x589720, size: 0x24
    // 0x589720: r1 = false
    //     0x589720: add             x1, NULL, #0x30  ; false
    // 0x589724: ldr             x2, [SP]
    // 0x589728: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x589728: ldur            w3, [x2, #0x17]
    // 0x58972c: DecompressPointer r3
    //     0x58972c: add             x3, x3, HEAP, lsl #32
    // 0x589730: LoadField: r2 = r3->field_f
    //     0x589730: ldur            w2, [x3, #0xf]
    // 0x589734: DecompressPointer r2
    //     0x589734: add             x2, x2, HEAP, lsl #32
    // 0x589738: StoreField: r2->field_1b = r1
    //     0x589738: stur            w1, [x2, #0x1b]
    // 0x58973c: r0 = Null
    //     0x58973c: mov             x0, NULL
    // 0x589740: ret
    //     0x589740: ret             
  }
  _ _checkLocationPermission(/* No info */) async {
    // ** addr: 0x589744, size: 0x158
    // 0x589744: EnterFrame
    //     0x589744: stp             fp, lr, [SP, #-0x10]!
    //     0x589748: mov             fp, SP
    // 0x58974c: AllocStack(0x80)
    //     0x58974c: sub             SP, SP, #0x80
    // 0x589750: SetupParameters(_SettingsPageState this /* r1 => r1, fp-0x68 */)
    //     0x589750: stur            NULL, [fp, #-8]
    //     0x589754: stur            x1, [fp, #-0x68]
    // 0x589758: CheckStackOverflow
    //     0x589758: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x58975c: cmp             SP, x16
    //     0x589760: b.ls            #0x589894
    // 0x589764: r1 = 4
    //     0x589764: mov             x1, #4
    // 0x589768: r0 = AllocateContext()
    //     0x589768: bl              #0x927010  ; AllocateContextStub
    // 0x58976c: mov             x2, x0
    // 0x589770: ldur            x1, [fp, #-0x68]
    // 0x589774: stur            x2, [fp, #-0x70]
    // 0x589778: StoreField: r2->field_f = r1
    //     0x589778: stur            w1, [x2, #0xf]
    // 0x58977c: InitAsync() -> Future<void?>
    //     0x58977c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x589780: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x589784: ldur            x2, [fp, #-0x70]
    // 0x589788: r0 = checkPermission()
    //     0x589788: bl              #0x5ab570  ; [package:geolocator/geolocator.dart] Geolocator::checkPermission
    // 0x58978c: mov             x1, x0
    // 0x589790: stur            x1, [fp, #-0x78]
    // 0x589794: r0 = Await()
    //     0x589794: bl              #0x3dd188  ; AwaitStub
    // 0x589798: ldur            x2, [fp, #-0x70]
    // 0x58979c: StoreField: r2->field_13 = r0
    //     0x58979c: stur            w0, [x2, #0x13]
    //     0x5897a0: tbz             w0, #0, #0x5897bc
    //     0x5897a4: ldurb           w16, [x2, #-1]
    //     0x5897a8: ldurb           w17, [x0, #-1]
    //     0x5897ac: and             x16, x17, x16, lsr #2
    //     0x5897b0: tst             x16, HEAP, lsr #32
    //     0x5897b4: b.eq            #0x5897bc
    //     0x5897b8: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5897bc: r0 = isLocationServiceEnabled()
    //     0x5897bc: bl              #0x5ab438  ; [package:geolocator/geolocator.dart] Geolocator::isLocationServiceEnabled
    // 0x5897c0: mov             x1, x0
    // 0x5897c4: stur            x1, [fp, #-0x78]
    // 0x5897c8: r0 = Await()
    //     0x5897c8: bl              #0x3dd188  ; AwaitStub
    // 0x5897cc: ldur            x2, [fp, #-0x70]
    // 0x5897d0: ArrayStore: r2[0] = r0  ; List_4
    //     0x5897d0: stur            w0, [x2, #0x17]
    //     0x5897d4: tbz             w0, #0, #0x5897f0
    //     0x5897d8: ldurb           w16, [x2, #-1]
    //     0x5897dc: ldurb           w17, [x0, #-1]
    //     0x5897e0: and             x16, x17, x16, lsr #2
    //     0x5897e4: tst             x16, HEAP, lsr #32
    //     0x5897e8: b.eq            #0x5897f0
    //     0x5897ec: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5897f0: r0 = InitLateStaticField(0xd14) // [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::_instance
    //     0x5897f0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5897f4: ldr             x0, [x0, #0x1a28]
    //     0x5897f8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5897fc: cmp             w0, w16
    //     0x589800: b.ne            #0x589810
    //     0x589804: add             x2, PP, #9, lsl #12  ; [pp+0x9070] Field <FlutterBackgroundService._instance@737261802>: static late (offset: 0xd14)
    //     0x589808: ldr             x2, [x2, #0x70]
    //     0x58980c: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x589810: mov             x1, x0
    // 0x589814: stur            x0, [fp, #-0x78]
    // 0x589818: r0 = isRunning()
    //     0x589818: bl              #0x58989c  ; [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::isRunning
    // 0x58981c: mov             x1, x0
    // 0x589820: stur            x1, [fp, #-0x80]
    // 0x589824: r0 = Await()
    //     0x589824: bl              #0x3dd188  ; AwaitStub
    // 0x589828: ldur            x3, [fp, #-0x70]
    // 0x58982c: StoreField: r3->field_1b = r0
    //     0x58982c: stur            w0, [x3, #0x1b]
    //     0x589830: tbz             w0, #0, #0x58984c
    //     0x589834: ldurb           w16, [x3, #-1]
    //     0x589838: ldurb           w17, [x0, #-1]
    //     0x58983c: and             x16, x17, x16, lsr #2
    //     0x589840: tst             x16, HEAP, lsr #32
    //     0x589844: b.eq            #0x58984c
    //     0x589848: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x58984c: mov             x2, x3
    // 0x589850: r1 = Function '<anonymous closure>':.
    //     0x589850: add             x1, PP, #0x18, lsl #12  ; [pp+0x18938] AnonymousClosure: (0x5ab5d4), in [package:umrem_demo/features/admin/screens/settings_page.dart] _SettingsPageState::_checkLocationPermission (0x589744)
    //     0x589854: ldr             x1, [x1, #0x938]
    // 0x589858: r0 = AllocateClosure()
    //     0x589858: bl              #0x9273d4  ; AllocateClosureStub
    // 0x58985c: ldur            x1, [fp, #-0x68]
    // 0x589860: mov             x2, x0
    // 0x589864: r0 = setState()
    //     0x589864: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x589868: b               #0x58988c
    // 0x58986c: sub             SP, fp, #0x80
    // 0x589870: ldur            x2, [fp, #-0x70]
    // 0x589874: r1 = Function '<anonymous closure>':.
    //     0x589874: add             x1, PP, #0x18, lsl #12  ; [pp+0x18940] AnonymousClosure: (0x589720), in [package:umrem_demo/features/admin/screens/settings_page.dart] _SettingsPageState::_checkLocationPermission (0x589744)
    //     0x589878: ldr             x1, [x1, #0x940]
    // 0x58987c: r0 = AllocateClosure()
    //     0x58987c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x589880: ldur            x1, [fp, #-0x68]
    // 0x589884: mov             x2, x0
    // 0x589888: r0 = setState()
    //     0x589888: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x58988c: r0 = Null
    //     0x58988c: mov             x0, NULL
    // 0x589890: r0 = ReturnAsyncNotFuture()
    //     0x589890: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x589894: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x589894: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x589898: b               #0x589764
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5ab5d4, size: 0x84
    // 0x5ab5d4: ldr             x1, [SP]
    // 0x5ab5d8: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x5ab5d8: ldur            w2, [x1, #0x17]
    // 0x5ab5dc: DecompressPointer r2
    //     0x5ab5dc: add             x2, x2, HEAP, lsl #32
    // 0x5ab5e0: LoadField: r1 = r2->field_f
    //     0x5ab5e0: ldur            w1, [x2, #0xf]
    // 0x5ab5e4: DecompressPointer r1
    //     0x5ab5e4: add             x1, x1, HEAP, lsl #32
    // 0x5ab5e8: LoadField: r3 = r2->field_13
    //     0x5ab5e8: ldur            w3, [x2, #0x13]
    // 0x5ab5ec: DecompressPointer r3
    //     0x5ab5ec: add             x3, x3, HEAP, lsl #32
    // 0x5ab5f0: r16 = Instance_LocationPermission
    //     0x5ab5f0: add             x16, PP, #0xb, lsl #12  ; [pp+0xbc98] Obj!LocationPermission@a27c01
    //     0x5ab5f4: ldr             x16, [x16, #0xc98]
    // 0x5ab5f8: cmp             w3, w16
    // 0x5ab5fc: b.ne            #0x5ab608
    // 0x5ab600: r3 = true
    //     0x5ab600: add             x3, NULL, #0x20  ; true
    // 0x5ab604: b               #0x5ab624
    // 0x5ab608: r16 = Instance_LocationPermission
    //     0x5ab608: add             x16, PP, #0xb, lsl #12  ; [pp+0xbc90] Obj!LocationPermission@a27be1
    //     0x5ab60c: ldr             x16, [x16, #0xc90]
    // 0x5ab610: cmp             w3, w16
    // 0x5ab614: r16 = true
    //     0x5ab614: add             x16, NULL, #0x20  ; true
    // 0x5ab618: r17 = false
    //     0x5ab618: add             x17, NULL, #0x30  ; false
    // 0x5ab61c: csel            x4, x16, x17, eq
    // 0x5ab620: mov             x3, x4
    // 0x5ab624: ArrayStore: r1[0] = r3  ; List_4
    //     0x5ab624: stur            w3, [x1, #0x17]
    // 0x5ab628: LoadField: r3 = r2->field_1b
    //     0x5ab628: ldur            w3, [x2, #0x1b]
    // 0x5ab62c: DecompressPointer r3
    //     0x5ab62c: add             x3, x3, HEAP, lsl #32
    // 0x5ab630: tbnz            w3, #4, #0x5ab640
    // 0x5ab634: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x5ab634: ldur            w3, [x2, #0x17]
    // 0x5ab638: DecompressPointer r3
    //     0x5ab638: add             x3, x3, HEAP, lsl #32
    // 0x5ab63c: b               #0x5ab644
    // 0x5ab640: r3 = false
    //     0x5ab640: add             x3, NULL, #0x30  ; false
    // 0x5ab644: r2 = false
    //     0x5ab644: add             x2, NULL, #0x30  ; false
    // 0x5ab648: StoreField: r1->field_13 = r3
    //     0x5ab648: stur            w3, [x1, #0x13]
    // 0x5ab64c: StoreField: r1->field_1b = r2
    //     0x5ab64c: stur            w2, [x1, #0x1b]
    // 0x5ab650: r0 = Null
    //     0x5ab650: mov             x0, NULL
    // 0x5ab654: ret
    //     0x5ab654: ret             
  }
  _ initState(/* No info */) {
    // ** addr: 0x5e1854, size: 0x30
    // 0x5e1854: EnterFrame
    //     0x5e1854: stp             fp, lr, [SP, #-0x10]!
    //     0x5e1858: mov             fp, SP
    // 0x5e185c: CheckStackOverflow
    //     0x5e185c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e1860: cmp             SP, x16
    //     0x5e1864: b.ls            #0x5e187c
    // 0x5e1868: r0 = _checkLocationPermission()
    //     0x5e1868: bl              #0x589744  ; [package:umrem_demo/features/admin/screens/settings_page.dart] _SettingsPageState::_checkLocationPermission
    // 0x5e186c: r0 = Null
    //     0x5e186c: mov             x0, NULL
    // 0x5e1870: LeaveFrame
    //     0x5e1870: mov             SP, fp
    //     0x5e1874: ldp             fp, lr, [SP], #0x10
    // 0x5e1878: ret
    //     0x5e1878: ret             
    // 0x5e187c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e187c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e1880: b               #0x5e1868
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x65abec, size: 0x24
    // 0x65abec: r1 = false
    //     0x65abec: add             x1, NULL, #0x30  ; false
    // 0x65abf0: ldr             x2, [SP]
    // 0x65abf4: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x65abf4: ldur            w3, [x2, #0x17]
    // 0x65abf8: DecompressPointer r3
    //     0x65abf8: add             x3, x3, HEAP, lsl #32
    // 0x65abfc: LoadField: r2 = r3->field_f
    //     0x65abfc: ldur            w2, [x3, #0xf]
    // 0x65ac00: DecompressPointer r2
    //     0x65ac00: add             x2, x2, HEAP, lsl #32
    // 0x65ac04: StoreField: r2->field_13 = r1
    //     0x65ac04: stur            w1, [x2, #0x13]
    // 0x65ac08: r0 = Null
    //     0x65ac08: mov             x0, NULL
    // 0x65ac0c: ret
    //     0x65ac0c: ret             
  }
  _ _stopLocationTracking(/* No info */) async {
    // ** addr: 0x65ac10, size: 0xc0
    // 0x65ac10: EnterFrame
    //     0x65ac10: stp             fp, lr, [SP, #-0x10]!
    //     0x65ac14: mov             fp, SP
    // 0x65ac18: AllocStack(0x70)
    //     0x65ac18: sub             SP, SP, #0x70
    // 0x65ac1c: SetupParameters(_SettingsPageState this /* r1 => r1, fp-0x60 */)
    //     0x65ac1c: stur            NULL, [fp, #-8]
    //     0x65ac20: stur            x1, [fp, #-0x60]
    // 0x65ac24: CheckStackOverflow
    //     0x65ac24: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x65ac28: cmp             SP, x16
    //     0x65ac2c: b.ls            #0x65acc8
    // 0x65ac30: r1 = 1
    //     0x65ac30: mov             x1, #1
    // 0x65ac34: r0 = AllocateContext()
    //     0x65ac34: bl              #0x927010  ; AllocateContextStub
    // 0x65ac38: mov             x2, x0
    // 0x65ac3c: ldur            x1, [fp, #-0x60]
    // 0x65ac40: stur            x2, [fp, #-0x68]
    // 0x65ac44: StoreField: r2->field_f = r1
    //     0x65ac44: stur            w1, [x2, #0xf]
    // 0x65ac48: InitAsync() -> Future<void?>
    //     0x65ac48: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x65ac4c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x65ac50: r0 = InitLateStaticField(0xd14) // [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::_instance
    //     0x65ac50: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x65ac54: ldr             x0, [x0, #0x1a28]
    //     0x65ac58: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x65ac5c: cmp             w0, w16
    //     0x65ac60: b.ne            #0x65ac70
    //     0x65ac64: add             x2, PP, #9, lsl #12  ; [pp+0x9070] Field <FlutterBackgroundService._instance@737261802>: static late (offset: 0xd14)
    //     0x65ac68: ldr             x2, [x2, #0x70]
    //     0x65ac6c: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x65ac70: mov             x1, x0
    // 0x65ac74: r2 = "stopService"
    //     0x65ac74: ldr             x2, [PP, #0x60]  ; [pp+0x60] "stopService"
    // 0x65ac78: stur            x0, [fp, #-0x70]
    // 0x65ac7c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x65ac7c: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x65ac80: r0 = invoke()
    //     0x65ac80: bl              #0x5ed040  ; [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::invoke
    // 0x65ac84: ldur            x2, [fp, #-0x68]
    // 0x65ac88: r1 = Function '<anonymous closure>':.
    //     0x65ac88: add             x1, PP, #0x18, lsl #12  ; [pp+0x18948] AnonymousClosure: (0x65abec), in [package:umrem_demo/features/admin/screens/settings_page.dart] _SettingsPageState::_stopLocationTracking (0x65ac10)
    //     0x65ac8c: ldr             x1, [x1, #0x948]
    // 0x65ac90: r0 = AllocateClosure()
    //     0x65ac90: bl              #0x9273d4  ; AllocateClosureStub
    // 0x65ac94: ldur            x1, [fp, #-0x60]
    // 0x65ac98: mov             x2, x0
    // 0x65ac9c: r0 = setState()
    //     0x65ac9c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x65aca0: r1 = "Konum takibi durduruldu."
    //     0x65aca0: add             x1, PP, #0x15, lsl #12  ; [pp+0x15b20] "Konum takibi durduruldu."
    //     0x65aca4: ldr             x1, [x1, #0xb20]
    // 0x65aca8: r0 = showSuccess()
    //     0x65aca8: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x65acac: b               #0x65acc0
    // 0x65acb0: sub             SP, fp, #0x70
    // 0x65acb4: r1 = "Konum takibi durdurulamadı."
    //     0x65acb4: add             x1, PP, #0x15, lsl #12  ; [pp+0x15b28] "Konum takibi durdurulamadı."
    //     0x65acb8: ldr             x1, [x1, #0xb28]
    // 0x65acbc: r0 = showError()
    //     0x65acbc: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x65acc0: r0 = Null
    //     0x65acc0: mov             x0, NULL
    // 0x65acc4: r0 = ReturnAsyncNotFuture()
    //     0x65acc4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x65acc8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x65acc8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x65accc: b               #0x65ac30
  }
  [closure] Future<void> _stopLocationTracking(dynamic) {
    // ** addr: 0x65acd0, size: 0x38
    // 0x65acd0: EnterFrame
    //     0x65acd0: stp             fp, lr, [SP, #-0x10]!
    //     0x65acd4: mov             fp, SP
    // 0x65acd8: ldr             x0, [fp, #0x10]
    // 0x65acdc: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x65acdc: ldur            w1, [x0, #0x17]
    // 0x65ace0: DecompressPointer r1
    //     0x65ace0: add             x1, x1, HEAP, lsl #32
    // 0x65ace4: CheckStackOverflow
    //     0x65ace4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x65ace8: cmp             SP, x16
    //     0x65acec: b.ls            #0x65ad00
    // 0x65acf0: r0 = _stopLocationTracking()
    //     0x65acf0: bl              #0x65ac10  ; [package:umrem_demo/features/admin/screens/settings_page.dart] _SettingsPageState::_stopLocationTracking
    // 0x65acf4: LeaveFrame
    //     0x65acf4: mov             SP, fp
    //     0x65acf8: ldp             fp, lr, [SP], #0x10
    // 0x65acfc: ret
    //     0x65acfc: ret             
    // 0x65ad00: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x65ad00: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x65ad04: b               #0x65acf0
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x65ada8, size: 0x24
    // 0x65ada8: r1 = true
    //     0x65ada8: add             x1, NULL, #0x20  ; true
    // 0x65adac: ldr             x2, [SP]
    // 0x65adb0: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x65adb0: ldur            w3, [x2, #0x17]
    // 0x65adb4: DecompressPointer r3
    //     0x65adb4: add             x3, x3, HEAP, lsl #32
    // 0x65adb8: LoadField: r2 = r3->field_f
    //     0x65adb8: ldur            w2, [x3, #0xf]
    // 0x65adbc: DecompressPointer r2
    //     0x65adbc: add             x2, x2, HEAP, lsl #32
    // 0x65adc0: StoreField: r2->field_13 = r1
    //     0x65adc0: stur            w1, [x2, #0x13]
    // 0x65adc4: r0 = Null
    //     0x65adc4: mov             x0, NULL
    // 0x65adc8: ret
    //     0x65adc8: ret             
  }
  _ _startLocationTracking(/* No info */) async {
    // ** addr: 0x65adcc, size: 0x224
    // 0x65adcc: EnterFrame
    //     0x65adcc: stp             fp, lr, [SP, #-0x10]!
    //     0x65add0: mov             fp, SP
    // 0x65add4: AllocStack(0x90)
    //     0x65add4: sub             SP, SP, #0x90
    // 0x65add8: SetupParameters(_SettingsPageState this /* r1 => r1, fp-0x70 */)
    //     0x65add8: stur            NULL, [fp, #-8]
    //     0x65addc: stur            x1, [fp, #-0x70]
    // 0x65ade0: CheckStackOverflow
    //     0x65ade0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x65ade4: cmp             SP, x16
    //     0x65ade8: b.ls            #0x65afe8
    // 0x65adec: r1 = 1
    //     0x65adec: mov             x1, #1
    // 0x65adf0: r0 = AllocateContext()
    //     0x65adf0: bl              #0x927010  ; AllocateContextStub
    // 0x65adf4: mov             x2, x0
    // 0x65adf8: ldur            x1, [fp, #-0x70]
    // 0x65adfc: stur            x2, [fp, #-0x78]
    // 0x65ae00: StoreField: r2->field_f = r1
    //     0x65ae00: stur            w1, [x2, #0xf]
    // 0x65ae04: InitAsync() -> Future<void?>
    //     0x65ae04: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x65ae08: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x65ae0c: r0 = isLocationServiceEnabled()
    //     0x65ae0c: bl              #0x5ab438  ; [package:geolocator/geolocator.dart] Geolocator::isLocationServiceEnabled
    // 0x65ae10: mov             x1, x0
    // 0x65ae14: stur            x1, [fp, #-0x80]
    // 0x65ae18: r0 = Await()
    //     0x65ae18: bl              #0x3dd188  ; AwaitStub
    // 0x65ae1c: r16 = true
    //     0x65ae1c: add             x16, NULL, #0x20  ; true
    // 0x65ae20: cmp             w0, w16
    // 0x65ae24: b.eq            #0x65ae4c
    // 0x65ae28: r1 = "Konum servisi kapalı. Lütfen telefonunuzun konum ayarlarını açın."
    //     0x65ae28: add             x1, PP, #0x15, lsl #12  ; [pp+0x15aa8] "Konum servisi kapalı. Lütfen telefonunuzun konum ayarlarını açın."
    //     0x65ae2c: ldr             x1, [x1, #0xaa8]
    // 0x65ae30: r0 = showError()
    //     0x65ae30: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x65ae34: r0 = openLocationSettings()
    //     0x65ae34: bl              #0x65b0b8  ; [package:geolocator/geolocator.dart] Geolocator::openLocationSettings
    // 0x65ae38: mov             x1, x0
    // 0x65ae3c: stur            x1, [fp, #-0x80]
    // 0x65ae40: r0 = Await()
    //     0x65ae40: bl              #0x3dd188  ; AwaitStub
    // 0x65ae44: r0 = Null
    //     0x65ae44: mov             x0, NULL
    // 0x65ae48: r0 = ReturnAsyncNotFuture()
    //     0x65ae48: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x65ae4c: r0 = checkPermission()
    //     0x65ae4c: bl              #0x5ab570  ; [package:geolocator/geolocator.dart] Geolocator::checkPermission
    // 0x65ae50: mov             x1, x0
    // 0x65ae54: stur            x1, [fp, #-0x80]
    // 0x65ae58: r0 = Await()
    //     0x65ae58: bl              #0x3dd188  ; AwaitStub
    // 0x65ae5c: r16 = Instance_LocationPermission
    //     0x65ae5c: add             x16, PP, #9, lsl #12  ; [pp+0x95d8] Obj!LocationPermission@a27c41
    //     0x65ae60: ldr             x16, [x16, #0x5d8]
    // 0x65ae64: cmp             w0, w16
    // 0x65ae68: b.ne            #0x65aeb4
    // 0x65ae6c: r0 = requestPermission()
    //     0x65ae6c: bl              #0x65b054  ; [package:geolocator/geolocator.dart] Geolocator::requestPermission
    // 0x65ae70: mov             x1, x0
    // 0x65ae74: stur            x1, [fp, #-0x80]
    // 0x65ae78: r0 = Await()
    //     0x65ae78: bl              #0x3dd188  ; AwaitStub
    // 0x65ae7c: r16 = Instance_LocationPermission
    //     0x65ae7c: add             x16, PP, #9, lsl #12  ; [pp+0x95d8] Obj!LocationPermission@a27c41
    //     0x65ae80: ldr             x16, [x16, #0x5d8]
    // 0x65ae84: cmp             w0, w16
    // 0x65ae88: b.ne            #0x65aea0
    // 0x65ae8c: r1 = "Konum izni reddedildi."
    //     0x65ae8c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15ab0] "Konum izni reddedildi."
    //     0x65ae90: ldr             x1, [x1, #0xab0]
    // 0x65ae94: r0 = showError()
    //     0x65ae94: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x65ae98: r0 = Null
    //     0x65ae98: mov             x0, NULL
    // 0x65ae9c: r0 = ReturnAsyncNotFuture()
    //     0x65ae9c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x65aea0: r16 = Instance_LocationPermission
    //     0x65aea0: add             x16, PP, #9, lsl #12  ; [pp+0x95e0] Obj!LocationPermission@a27c21
    //     0x65aea4: ldr             x16, [x16, #0x5e0]
    // 0x65aea8: cmp             w0, w16
    // 0x65aeac: b.ne            #0x65aee8
    // 0x65aeb0: b               #0x65aec4
    // 0x65aeb4: r16 = Instance_LocationPermission
    //     0x65aeb4: add             x16, PP, #9, lsl #12  ; [pp+0x95e0] Obj!LocationPermission@a27c21
    //     0x65aeb8: ldr             x16, [x16, #0x5e0]
    // 0x65aebc: cmp             w0, w16
    // 0x65aec0: b.ne            #0x65aee8
    // 0x65aec4: r1 = "Konum izni kalıcı olarak reddedildi. Lütfen ayarlardan izin verin."
    //     0x65aec4: add             x1, PP, #0x15, lsl #12  ; [pp+0x15ab8] "Konum izni kalıcı olarak reddedildi. Lütfen ayarlardan izin verin."
    //     0x65aec8: ldr             x1, [x1, #0xab8]
    // 0x65aecc: r0 = showError()
    //     0x65aecc: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x65aed0: r0 = openAppSettings()
    //     0x65aed0: bl              #0x65aff0  ; [package:geolocator/geolocator.dart] Geolocator::openAppSettings
    // 0x65aed4: mov             x1, x0
    // 0x65aed8: stur            x1, [fp, #-0x80]
    // 0x65aedc: r0 = Await()
    //     0x65aedc: bl              #0x3dd188  ; AwaitStub
    // 0x65aee0: r0 = Null
    //     0x65aee0: mov             x0, NULL
    // 0x65aee4: r0 = ReturnAsyncNotFuture()
    //     0x65aee4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x65aee8: r0 = InitLateStaticField(0xd14) // [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::_instance
    //     0x65aee8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x65aeec: ldr             x0, [x0, #0x1a28]
    //     0x65aef0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x65aef4: cmp             w0, w16
    //     0x65aef8: b.ne            #0x65af08
    //     0x65aefc: add             x2, PP, #9, lsl #12  ; [pp+0x9070] Field <FlutterBackgroundService._instance@737261802>: static late (offset: 0xd14)
    //     0x65af00: ldr             x2, [x2, #0x70]
    //     0x65af04: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x65af08: mov             x1, x0
    // 0x65af0c: stur            x0, [fp, #-0x80]
    // 0x65af10: r0 = startService()
    //     0x65af10: bl              #0x5ecf58  ; [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::startService
    // 0x65af14: mov             x1, x0
    // 0x65af18: stur            x1, [fp, #-0x88]
    // 0x65af1c: r0 = Await()
    //     0x65af1c: bl              #0x3dd188  ; AwaitStub
    // 0x65af20: ldur            x2, [fp, #-0x78]
    // 0x65af24: r1 = Function '<anonymous closure>':.
    //     0x65af24: add             x1, PP, #0x18, lsl #12  ; [pp+0x18930] AnonymousClosure: (0x65ada8), in [package:umrem_demo/features/admin/screens/settings_page.dart] _SettingsPageState::_startLocationTracking (0x65adcc)
    //     0x65af28: ldr             x1, [x1, #0x930]
    // 0x65af2c: r0 = AllocateClosure()
    //     0x65af2c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x65af30: ldur            x1, [fp, #-0x70]
    // 0x65af34: mov             x2, x0
    // 0x65af38: r0 = setState()
    //     0x65af38: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x65af3c: r1 = "Konum takibi başlatıldı."
    //     0x65af3c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15ac8] "Konum takibi başlatıldı."
    //     0x65af40: ldr             x1, [x1, #0xac8]
    // 0x65af44: r0 = showSuccess()
    //     0x65af44: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x65af48: b               #0x65afe0
    // 0x65af4c: sub             SP, fp, #0x90
    // 0x65af50: stur            x0, [fp, #-0x70]
    // 0x65af54: r1 = Null
    //     0x65af54: mov             x1, NULL
    // 0x65af58: r2 = 4
    //     0x65af58: mov             x2, #4
    // 0x65af5c: r0 = AllocateArray()
    //     0x65af5c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x65af60: mov             x1, x0
    // 0x65af64: stur            x1, [fp, #-0x78]
    // 0x65af68: r16 = "Konum takibi başlatılamadı: "
    //     0x65af68: add             x16, PP, #0x15, lsl #12  ; [pp+0x15ad0] "Konum takibi başlatılamadı: "
    //     0x65af6c: ldr             x16, [x16, #0xad0]
    // 0x65af70: StoreField: r1->field_f = r16
    //     0x65af70: stur            w16, [x1, #0xf]
    // 0x65af74: ldur            x0, [fp, #-0x70]
    // 0x65af78: r2 = 60
    //     0x65af78: mov             x2, #0x3c
    // 0x65af7c: branchIfSmi(r0, 0x65af88)
    //     0x65af7c: tbz             w0, #0, #0x65af88
    // 0x65af80: r2 = LoadClassIdInstr(r0)
    //     0x65af80: ldur            x2, [x0, #-1]
    //     0x65af84: ubfx            x2, x2, #0xc, #0x14
    // 0x65af88: str             x0, [SP]
    // 0x65af8c: mov             x0, x2
    // 0x65af90: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x65af90: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x65af94: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x65af94: mov             x17, #0x21f6
    //     0x65af98: add             lr, x0, x17
    //     0x65af9c: ldr             lr, [x21, lr, lsl #3]
    //     0x65afa0: blr             lr
    // 0x65afa4: ldur            x1, [fp, #-0x78]
    // 0x65afa8: ArrayStore: r1[1] = r0  ; List_4
    //     0x65afa8: add             x25, x1, #0x13
    //     0x65afac: str             w0, [x25]
    //     0x65afb0: tbz             w0, #0, #0x65afcc
    //     0x65afb4: ldurb           w16, [x1, #-1]
    //     0x65afb8: ldurb           w17, [x0, #-1]
    //     0x65afbc: and             x16, x17, x16, lsr #2
    //     0x65afc0: tst             x16, HEAP, lsr #32
    //     0x65afc4: b.eq            #0x65afcc
    //     0x65afc8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x65afcc: ldur            x16, [fp, #-0x78]
    // 0x65afd0: str             x16, [SP]
    // 0x65afd4: r0 = _interpolate()
    //     0x65afd4: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x65afd8: mov             x1, x0
    // 0x65afdc: r0 = showError()
    //     0x65afdc: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x65afe0: r0 = Null
    //     0x65afe0: mov             x0, NULL
    // 0x65afe4: r0 = ReturnAsyncNotFuture()
    //     0x65afe4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x65afe8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x65afe8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x65afec: b               #0x65adec
  }
  [closure] Future<void> _startLocationTracking(dynamic) {
    // ** addr: 0x65b11c, size: 0x38
    // 0x65b11c: EnterFrame
    //     0x65b11c: stp             fp, lr, [SP, #-0x10]!
    //     0x65b120: mov             fp, SP
    // 0x65b124: ldr             x0, [fp, #0x10]
    // 0x65b128: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x65b128: ldur            w1, [x0, #0x17]
    // 0x65b12c: DecompressPointer r1
    //     0x65b12c: add             x1, x1, HEAP, lsl #32
    // 0x65b130: CheckStackOverflow
    //     0x65b130: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x65b134: cmp             SP, x16
    //     0x65b138: b.ls            #0x65b14c
    // 0x65b13c: r0 = _startLocationTracking()
    //     0x65b13c: bl              #0x65adcc  ; [package:umrem_demo/features/admin/screens/settings_page.dart] _SettingsPageState::_startLocationTracking
    // 0x65b140: LeaveFrame
    //     0x65b140: mov             SP, fp
    //     0x65b144: ldp             fp, lr, [SP], #0x10
    // 0x65b148: ret
    //     0x65b148: ret             
    // 0x65b14c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x65b14c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x65b150: b               #0x65b13c
  }
  _ build(/* No info */) {
    // ** addr: 0x6e6f3c, size: 0xe98
    // 0x6e6f3c: EnterFrame
    //     0x6e6f3c: stp             fp, lr, [SP, #-0x10]!
    //     0x6e6f40: mov             fp, SP
    // 0x6e6f44: AllocStack(0x68)
    //     0x6e6f44: sub             SP, SP, #0x68
    // 0x6e6f48: SetupParameters(_SettingsPageState this /* r1 => r0, fp-0x8 */)
    //     0x6e6f48: mov             x0, x1
    //     0x6e6f4c: stur            x1, [fp, #-8]
    // 0x6e6f50: CheckStackOverflow
    //     0x6e6f50: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e6f54: cmp             SP, x16
    //     0x6e6f58: b.ls            #0x6e7db0
    // 0x6e6f5c: r0 = IconThemeData()
    //     0x6e6f5c: bl              #0x4144cc  ; AllocateIconThemeDataStub -> IconThemeData (size=0x2c)
    // 0x6e6f60: mov             x1, x0
    // 0x6e6f64: r0 = Instance_Color
    //     0x6e6f64: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x6e6f68: ldr             x0, [x0, #0xb88]
    // 0x6e6f6c: stur            x1, [fp, #-0x10]
    // 0x6e6f70: StoreField: r1->field_1b = r0
    //     0x6e6f70: stur            w0, [x1, #0x1b]
    // 0x6e6f74: r0 = TextStyle()
    //     0x6e6f74: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6e6f78: mov             x1, x0
    // 0x6e6f7c: r0 = true
    //     0x6e6f7c: add             x0, NULL, #0x20  ; true
    // 0x6e6f80: stur            x1, [fp, #-0x18]
    // 0x6e6f84: StoreField: r1->field_7 = r0
    //     0x6e6f84: stur            w0, [x1, #7]
    // 0x6e6f88: r2 = Instance_Color
    //     0x6e6f88: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x6e6f8c: ldr             x2, [x2, #0xb88]
    // 0x6e6f90: StoreField: r1->field_b = r2
    //     0x6e6f90: stur            w2, [x1, #0xb]
    // 0x6e6f94: r3 = Instance_FontWeight
    //     0x6e6f94: add             x3, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6e6f98: ldr             x3, [x3, #0x1d0]
    // 0x6e6f9c: StoreField: r1->field_23 = r3
    //     0x6e6f9c: stur            w3, [x1, #0x23]
    // 0x6e6fa0: r0 = Text()
    //     0x6e6fa0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6e6fa4: mov             x1, x0
    // 0x6e6fa8: r0 = "Konum Takibi"
    //     0x6e6fa8: add             x0, PP, #0x15, lsl #12  ; [pp+0x15a68] "Konum Takibi"
    //     0x6e6fac: ldr             x0, [x0, #0xa68]
    // 0x6e6fb0: stur            x1, [fp, #-0x20]
    // 0x6e6fb4: StoreField: r1->field_b = r0
    //     0x6e6fb4: stur            w0, [x1, #0xb]
    // 0x6e6fb8: ldur            x0, [fp, #-0x18]
    // 0x6e6fbc: StoreField: r1->field_13 = r0
    //     0x6e6fbc: stur            w0, [x1, #0x13]
    // 0x6e6fc0: r0 = AppBar()
    //     0x6e6fc0: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x6e6fc4: stur            x0, [fp, #-0x18]
    // 0x6e6fc8: r16 = Instance_Color
    //     0x6e6fc8: ldr             x16, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6e6fcc: r30 = 0.000000
    //     0x6e6fcc: ldr             lr, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x6e6fd0: stp             lr, x16, [SP, #8]
    // 0x6e6fd4: ldur            x16, [fp, #-0x10]
    // 0x6e6fd8: str             x16, [SP]
    // 0x6e6fdc: mov             x1, x0
    // 0x6e6fe0: ldur            x2, [fp, #-0x20]
    // 0x6e6fe4: r4 = const [0, 0x5, 0x3, 0x2, backgroundColor, 0x2, elevation, 0x3, iconTheme, 0x4, null]
    //     0x6e6fe4: add             x4, PP, #0x18, lsl #12  ; [pp+0x188d8] List(11) [0, 0x5, 0x3, 0x2, "backgroundColor", 0x2, "elevation", 0x3, "iconTheme", 0x4, Null]
    //     0x6e6fe8: ldr             x4, [x4, #0x8d8]
    // 0x6e6fec: r0 = AppBar()
    //     0x6e6fec: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x6e6ff0: r0 = Radius()
    //     0x6e6ff0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6e6ff4: d0 = 16.000000
    //     0x6e6ff4: fmov            d0, #16.00000000
    // 0x6e6ff8: stur            x0, [fp, #-0x10]
    // 0x6e6ffc: StoreField: r0->field_7 = d0
    //     0x6e6ffc: stur            d0, [x0, #7]
    // 0x6e7000: StoreField: r0->field_f = d0
    //     0x6e7000: stur            d0, [x0, #0xf]
    // 0x6e7004: r0 = BorderRadius()
    //     0x6e7004: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6e7008: mov             x2, x0
    // 0x6e700c: ldur            x0, [fp, #-0x10]
    // 0x6e7010: stur            x2, [fp, #-0x20]
    // 0x6e7014: StoreField: r2->field_7 = r0
    //     0x6e7014: stur            w0, [x2, #7]
    // 0x6e7018: StoreField: r2->field_b = r0
    //     0x6e7018: stur            w0, [x2, #0xb]
    // 0x6e701c: StoreField: r2->field_f = r0
    //     0x6e701c: stur            w0, [x2, #0xf]
    // 0x6e7020: StoreField: r2->field_13 = r0
    //     0x6e7020: stur            w0, [x2, #0x13]
    // 0x6e7024: r16 = 0.050000
    //     0x6e7024: ldr             x16, [PP, #0x5020]  ; [pp+0x5020] 0.05
    // 0x6e7028: str             x16, [SP]
    // 0x6e702c: r1 = Instance_Color
    //     0x6e702c: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x6e7030: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6e7030: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6e7034: ldr             x4, [x4, #0x198]
    // 0x6e7038: r0 = withValues()
    //     0x6e7038: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6e703c: stur            x0, [fp, #-0x10]
    // 0x6e7040: r0 = BoxShadow()
    //     0x6e7040: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x6e7044: stur            x0, [fp, #-0x28]
    // 0x6e7048: ArrayStore: r0[0] = rZR  ; List_8
    //     0x6e7048: stur            xzr, [x0, #0x17]
    // 0x6e704c: r1 = Instance_BlurStyle
    //     0x6e704c: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x6e7050: ldr             x1, [x1, #0x9b0]
    // 0x6e7054: StoreField: r0->field_1f = r1
    //     0x6e7054: stur            w1, [x0, #0x1f]
    // 0x6e7058: ldur            x1, [fp, #-0x10]
    // 0x6e705c: StoreField: r0->field_7 = r1
    //     0x6e705c: stur            w1, [x0, #7]
    // 0x6e7060: r1 = Instance_Offset
    //     0x6e7060: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b8] Obj!Offset@a26af1
    //     0x6e7064: ldr             x1, [x1, #0x9b8]
    // 0x6e7068: StoreField: r0->field_b = r1
    //     0x6e7068: stur            w1, [x0, #0xb]
    // 0x6e706c: d0 = 10.000000
    //     0x6e706c: fmov            d0, #10.00000000
    // 0x6e7070: StoreField: r0->field_f = d0
    //     0x6e7070: stur            d0, [x0, #0xf]
    // 0x6e7074: r1 = Null
    //     0x6e7074: mov             x1, NULL
    // 0x6e7078: r2 = 2
    //     0x6e7078: mov             x2, #2
    // 0x6e707c: r0 = AllocateArray()
    //     0x6e707c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e7080: mov             x2, x0
    // 0x6e7084: ldur            x0, [fp, #-0x28]
    // 0x6e7088: stur            x2, [fp, #-0x10]
    // 0x6e708c: StoreField: r2->field_f = r0
    //     0x6e708c: stur            w0, [x2, #0xf]
    // 0x6e7090: r1 = <BoxShadow>
    //     0x6e7090: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x6e7094: ldr             x1, [x1, #0x9c0]
    // 0x6e7098: r0 = AllocateGrowableArray()
    //     0x6e7098: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6e709c: mov             x1, x0
    // 0x6e70a0: ldur            x0, [fp, #-0x10]
    // 0x6e70a4: stur            x1, [fp, #-0x28]
    // 0x6e70a8: StoreField: r1->field_f = r0
    //     0x6e70a8: stur            w0, [x1, #0xf]
    // 0x6e70ac: r2 = 2
    //     0x6e70ac: mov             x2, #2
    // 0x6e70b0: StoreField: r1->field_b = r2
    //     0x6e70b0: stur            w2, [x1, #0xb]
    // 0x6e70b4: r0 = BoxDecoration()
    //     0x6e70b4: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6e70b8: mov             x2, x0
    // 0x6e70bc: r0 = Instance_Color
    //     0x6e70bc: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6e70c0: stur            x2, [fp, #-0x10]
    // 0x6e70c4: StoreField: r2->field_7 = r0
    //     0x6e70c4: stur            w0, [x2, #7]
    // 0x6e70c8: ldur            x1, [fp, #-0x20]
    // 0x6e70cc: StoreField: r2->field_13 = r1
    //     0x6e70cc: stur            w1, [x2, #0x13]
    // 0x6e70d0: ldur            x1, [fp, #-0x28]
    // 0x6e70d4: ArrayStore: r2[0] = r1  ; List_4
    //     0x6e70d4: stur            w1, [x2, #0x17]
    // 0x6e70d8: r3 = Instance_BoxShape
    //     0x6e70d8: add             x3, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6e70dc: ldr             x3, [x3, #0x1c8]
    // 0x6e70e0: StoreField: r2->field_23 = r3
    //     0x6e70e0: stur            w3, [x2, #0x23]
    // 0x6e70e4: r16 = 0.100000
    //     0x6e70e4: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x6e70e8: ldr             x16, [x16, #0x1f8]
    // 0x6e70ec: str             x16, [SP]
    // 0x6e70f0: r1 = Instance_Color
    //     0x6e70f0: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6e70f4: ldr             x1, [x1, #0xb78]
    // 0x6e70f8: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6e70f8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6e70fc: ldr             x4, [x4, #0x198]
    // 0x6e7100: r0 = withValues()
    //     0x6e7100: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6e7104: stur            x0, [fp, #-0x20]
    // 0x6e7108: r0 = Radius()
    //     0x6e7108: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6e710c: d0 = 12.000000
    //     0x6e710c: fmov            d0, #12.00000000
    // 0x6e7110: stur            x0, [fp, #-0x28]
    // 0x6e7114: StoreField: r0->field_7 = d0
    //     0x6e7114: stur            d0, [x0, #7]
    // 0x6e7118: StoreField: r0->field_f = d0
    //     0x6e7118: stur            d0, [x0, #0xf]
    // 0x6e711c: r0 = BorderRadius()
    //     0x6e711c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6e7120: mov             x1, x0
    // 0x6e7124: ldur            x0, [fp, #-0x28]
    // 0x6e7128: stur            x1, [fp, #-0x30]
    // 0x6e712c: StoreField: r1->field_7 = r0
    //     0x6e712c: stur            w0, [x1, #7]
    // 0x6e7130: StoreField: r1->field_b = r0
    //     0x6e7130: stur            w0, [x1, #0xb]
    // 0x6e7134: StoreField: r1->field_f = r0
    //     0x6e7134: stur            w0, [x1, #0xf]
    // 0x6e7138: StoreField: r1->field_13 = r0
    //     0x6e7138: stur            w0, [x1, #0x13]
    // 0x6e713c: r0 = BoxDecoration()
    //     0x6e713c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6e7140: mov             x1, x0
    // 0x6e7144: ldur            x0, [fp, #-0x20]
    // 0x6e7148: stur            x1, [fp, #-0x28]
    // 0x6e714c: StoreField: r1->field_7 = r0
    //     0x6e714c: stur            w0, [x1, #7]
    // 0x6e7150: ldur            x0, [fp, #-0x30]
    // 0x6e7154: StoreField: r1->field_13 = r0
    //     0x6e7154: stur            w0, [x1, #0x13]
    // 0x6e7158: r0 = Instance_BoxShape
    //     0x6e7158: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6e715c: ldr             x0, [x0, #0x1c8]
    // 0x6e7160: StoreField: r1->field_23 = r0
    //     0x6e7160: stur            w0, [x1, #0x23]
    // 0x6e7164: r0 = Icon()
    //     0x6e7164: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x6e7168: mov             x1, x0
    // 0x6e716c: r0 = Instance_IconData
    //     0x6e716c: add             x0, PP, #0x15, lsl #12  ; [pp+0x15528] Obj!IconData@a09ae1
    //     0x6e7170: ldr             x0, [x0, #0x528]
    // 0x6e7174: stur            x1, [fp, #-0x20]
    // 0x6e7178: StoreField: r1->field_b = r0
    //     0x6e7178: stur            w0, [x1, #0xb]
    // 0x6e717c: r2 = 24.000000
    //     0x6e717c: add             x2, PP, #0xc, lsl #12  ; [pp+0xcf28] 24
    //     0x6e7180: ldr             x2, [x2, #0xf28]
    // 0x6e7184: StoreField: r1->field_f = r2
    //     0x6e7184: stur            w2, [x1, #0xf]
    // 0x6e7188: r2 = Instance_Color
    //     0x6e7188: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6e718c: ldr             x2, [x2, #0xb78]
    // 0x6e7190: StoreField: r1->field_23 = r2
    //     0x6e7190: stur            w2, [x1, #0x23]
    // 0x6e7194: r0 = Container()
    //     0x6e7194: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6e7198: stur            x0, [fp, #-0x30]
    // 0x6e719c: r16 = Instance_EdgeInsets
    //     0x6e719c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15480] Obj!EdgeInsets@a0c321
    //     0x6e71a0: ldr             x16, [x16, #0x480]
    // 0x6e71a4: ldur            lr, [fp, #-0x28]
    // 0x6e71a8: stp             lr, x16, [SP, #8]
    // 0x6e71ac: ldur            x16, [fp, #-0x20]
    // 0x6e71b0: str             x16, [SP]
    // 0x6e71b4: mov             x1, x0
    // 0x6e71b8: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x6e71b8: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x6e71bc: ldr             x4, [x4, #0x1e8]
    // 0x6e71c0: r0 = Container()
    //     0x6e71c0: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6e71c4: r0 = TextStyle()
    //     0x6e71c4: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6e71c8: mov             x1, x0
    // 0x6e71cc: r0 = true
    //     0x6e71cc: add             x0, NULL, #0x20  ; true
    // 0x6e71d0: stur            x1, [fp, #-0x20]
    // 0x6e71d4: StoreField: r1->field_7 = r0
    //     0x6e71d4: stur            w0, [x1, #7]
    // 0x6e71d8: r2 = Instance_Color
    //     0x6e71d8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x6e71dc: ldr             x2, [x2, #0xb88]
    // 0x6e71e0: StoreField: r1->field_b = r2
    //     0x6e71e0: stur            w2, [x1, #0xb]
    // 0x6e71e4: r3 = 16.000000
    //     0x6e71e4: add             x3, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x6e71e8: ldr             x3, [x3, #0x358]
    // 0x6e71ec: StoreField: r1->field_1f = r3
    //     0x6e71ec: stur            w3, [x1, #0x1f]
    // 0x6e71f0: r4 = Instance_FontWeight
    //     0x6e71f0: add             x4, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6e71f4: ldr             x4, [x4, #0x1d0]
    // 0x6e71f8: StoreField: r1->field_23 = r4
    //     0x6e71f8: stur            w4, [x1, #0x23]
    // 0x6e71fc: r0 = Text()
    //     0x6e71fc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6e7200: mov             x3, x0
    // 0x6e7204: r0 = "Konum Servisi"
    //     0x6e7204: add             x0, PP, #0x18, lsl #12  ; [pp+0x188e0] "Konum Servisi"
    //     0x6e7208: ldr             x0, [x0, #0x8e0]
    // 0x6e720c: stur            x3, [fp, #-0x28]
    // 0x6e7210: StoreField: r3->field_b = r0
    //     0x6e7210: stur            w0, [x3, #0xb]
    // 0x6e7214: ldur            x0, [fp, #-0x20]
    // 0x6e7218: StoreField: r3->field_13 = r0
    //     0x6e7218: stur            w0, [x3, #0x13]
    // 0x6e721c: ldur            x0, [fp, #-8]
    // 0x6e7220: LoadField: r1 = r0->field_1b
    //     0x6e7220: ldur            w1, [x0, #0x1b]
    // 0x6e7224: DecompressPointer r1
    //     0x6e7224: add             x1, x1, HEAP, lsl #32
    // 0x6e7228: tbnz            w1, #4, #0x6e7238
    // 0x6e722c: r4 = "Kontrol ediliyor..."
    //     0x6e722c: add             x4, PP, #0x18, lsl #12  ; [pp+0x188e8] "Kontrol ediliyor..."
    //     0x6e7230: ldr             x4, [x4, #0x8e8]
    // 0x6e7234: b               #0x6e725c
    // 0x6e7238: LoadField: r1 = r0->field_13
    //     0x6e7238: ldur            w1, [x0, #0x13]
    // 0x6e723c: DecompressPointer r1
    //     0x6e723c: add             x1, x1, HEAP, lsl #32
    // 0x6e7240: tbnz            w1, #4, #0x6e7250
    // 0x6e7244: r1 = "Aktif - Konumunuz paylaşılıyor"
    //     0x6e7244: add             x1, PP, #0x18, lsl #12  ; [pp+0x188f0] "Aktif - Konumunuz paylaşılıyor"
    //     0x6e7248: ldr             x1, [x1, #0x8f0]
    // 0x6e724c: b               #0x6e7258
    // 0x6e7250: r1 = "Pasif - Konumunuz paylaşılmıyor"
    //     0x6e7250: add             x1, PP, #0x18, lsl #12  ; [pp+0x188f8] "Pasif - Konumunuz paylaşılmıyor"
    //     0x6e7254: ldr             x1, [x1, #0x8f8]
    // 0x6e7258: mov             x4, x1
    // 0x6e725c: stur            x4, [fp, #-0x20]
    // 0x6e7260: LoadField: r1 = r0->field_13
    //     0x6e7260: ldur            w1, [x0, #0x13]
    // 0x6e7264: DecompressPointer r1
    //     0x6e7264: add             x1, x1, HEAP, lsl #32
    // 0x6e7268: tbnz            w1, #4, #0x6e728c
    // 0x6e726c: r1 = _ConstMap len:10
    //     0x6e726c: add             x1, PP, #0x14, lsl #12  ; [pp+0x14918] Map<int, Color>(10)
    //     0x6e7270: ldr             x1, [x1, #0x918]
    // 0x6e7274: r2 = 1200
    //     0x6e7274: mov             x2, #0x4b0
    // 0x6e7278: r0 = []()
    //     0x6e7278: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6e727c: cmp             w0, NULL
    // 0x6e7280: b.eq            #0x6e7db8
    // 0x6e7284: mov             x4, x0
    // 0x6e7288: b               #0x6e72a8
    // 0x6e728c: r1 = _ConstMap len:10
    //     0x6e728c: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f30] Map<int, Color>(10)
    //     0x6e7290: ldr             x1, [x1, #0xf30]
    // 0x6e7294: r2 = 1200
    //     0x6e7294: mov             x2, #0x4b0
    // 0x6e7298: r0 = []()
    //     0x6e7298: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6e729c: cmp             w0, NULL
    // 0x6e72a0: b.eq            #0x6e7dbc
    // 0x6e72a4: mov             x4, x0
    // 0x6e72a8: ldur            x2, [fp, #-8]
    // 0x6e72ac: ldur            x3, [fp, #-0x30]
    // 0x6e72b0: ldur            x0, [fp, #-0x28]
    // 0x6e72b4: ldur            x1, [fp, #-0x20]
    // 0x6e72b8: stur            x4, [fp, #-0x38]
    // 0x6e72bc: r0 = TextStyle()
    //     0x6e72bc: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6e72c0: mov             x1, x0
    // 0x6e72c4: r0 = true
    //     0x6e72c4: add             x0, NULL, #0x20  ; true
    // 0x6e72c8: stur            x1, [fp, #-0x40]
    // 0x6e72cc: StoreField: r1->field_7 = r0
    //     0x6e72cc: stur            w0, [x1, #7]
    // 0x6e72d0: ldur            x2, [fp, #-0x38]
    // 0x6e72d4: StoreField: r1->field_b = r2
    //     0x6e72d4: stur            w2, [x1, #0xb]
    // 0x6e72d8: r2 = 13.000000
    //     0x6e72d8: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b00] 13
    //     0x6e72dc: ldr             x2, [x2, #0xb00]
    // 0x6e72e0: StoreField: r1->field_1f = r2
    //     0x6e72e0: stur            w2, [x1, #0x1f]
    // 0x6e72e4: r0 = Text()
    //     0x6e72e4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6e72e8: mov             x3, x0
    // 0x6e72ec: ldur            x0, [fp, #-0x20]
    // 0x6e72f0: stur            x3, [fp, #-0x38]
    // 0x6e72f4: StoreField: r3->field_b = r0
    //     0x6e72f4: stur            w0, [x3, #0xb]
    // 0x6e72f8: ldur            x0, [fp, #-0x40]
    // 0x6e72fc: StoreField: r3->field_13 = r0
    //     0x6e72fc: stur            w0, [x3, #0x13]
    // 0x6e7300: r1 = Null
    //     0x6e7300: mov             x1, NULL
    // 0x6e7304: r2 = 6
    //     0x6e7304: mov             x2, #6
    // 0x6e7308: r0 = AllocateArray()
    //     0x6e7308: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e730c: mov             x2, x0
    // 0x6e7310: ldur            x0, [fp, #-0x28]
    // 0x6e7314: stur            x2, [fp, #-0x20]
    // 0x6e7318: StoreField: r2->field_f = r0
    //     0x6e7318: stur            w0, [x2, #0xf]
    // 0x6e731c: r16 = Instance_SizedBox
    //     0x6e731c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x6e7320: ldr             x16, [x16, #0x338]
    // 0x6e7324: StoreField: r2->field_13 = r16
    //     0x6e7324: stur            w16, [x2, #0x13]
    // 0x6e7328: ldur            x0, [fp, #-0x38]
    // 0x6e732c: ArrayStore: r2[0] = r0  ; List_4
    //     0x6e732c: stur            w0, [x2, #0x17]
    // 0x6e7330: r1 = <Widget>
    //     0x6e7330: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6e7334: r0 = AllocateGrowableArray()
    //     0x6e7334: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6e7338: mov             x1, x0
    // 0x6e733c: ldur            x0, [fp, #-0x20]
    // 0x6e7340: stur            x1, [fp, #-0x28]
    // 0x6e7344: StoreField: r1->field_f = r0
    //     0x6e7344: stur            w0, [x1, #0xf]
    // 0x6e7348: r2 = 6
    //     0x6e7348: mov             x2, #6
    // 0x6e734c: StoreField: r1->field_b = r2
    //     0x6e734c: stur            w2, [x1, #0xb]
    // 0x6e7350: r0 = Column()
    //     0x6e7350: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6e7354: mov             x2, x0
    // 0x6e7358: r0 = Instance_Axis
    //     0x6e7358: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6e735c: stur            x2, [fp, #-0x20]
    // 0x6e7360: StoreField: r2->field_f = r0
    //     0x6e7360: stur            w0, [x2, #0xf]
    // 0x6e7364: r3 = Instance_MainAxisAlignment
    //     0x6e7364: add             x3, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6e7368: ldr             x3, [x3, #0x230]
    // 0x6e736c: StoreField: r2->field_13 = r3
    //     0x6e736c: stur            w3, [x2, #0x13]
    // 0x6e7370: r4 = Instance_MainAxisSize
    //     0x6e7370: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6e7374: ldr             x4, [x4, #0x330]
    // 0x6e7378: ArrayStore: r2[0] = r4  ; List_4
    //     0x6e7378: stur            w4, [x2, #0x17]
    // 0x6e737c: r5 = Instance_CrossAxisAlignment
    //     0x6e737c: add             x5, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x6e7380: ldr             x5, [x5, #0x238]
    // 0x6e7384: StoreField: r2->field_1b = r5
    //     0x6e7384: stur            w5, [x2, #0x1b]
    // 0x6e7388: r6 = Instance_VerticalDirection
    //     0x6e7388: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6e738c: ldr             x6, [x6, #0x340]
    // 0x6e7390: StoreField: r2->field_23 = r6
    //     0x6e7390: stur            w6, [x2, #0x23]
    // 0x6e7394: r7 = Instance_Clip
    //     0x6e7394: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6e7398: ldr             x7, [x7, #0x348]
    // 0x6e739c: StoreField: r2->field_2b = r7
    //     0x6e739c: stur            w7, [x2, #0x2b]
    // 0x6e73a0: StoreField: r2->field_2f = rZR
    //     0x6e73a0: stur            xzr, [x2, #0x2f]
    // 0x6e73a4: ldur            x1, [fp, #-0x28]
    // 0x6e73a8: StoreField: r2->field_b = r1
    //     0x6e73a8: stur            w1, [x2, #0xb]
    // 0x6e73ac: r1 = <FlexParentData>
    //     0x6e73ac: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6e73b0: ldr             x1, [x1, #0x340]
    // 0x6e73b4: r0 = Expanded()
    //     0x6e73b4: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6e73b8: mov             x3, x0
    // 0x6e73bc: r0 = 1
    //     0x6e73bc: mov             x0, #1
    // 0x6e73c0: stur            x3, [fp, #-0x28]
    // 0x6e73c4: StoreField: r3->field_13 = r0
    //     0x6e73c4: stur            x0, [x3, #0x13]
    // 0x6e73c8: r4 = Instance_FlexFit
    //     0x6e73c8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6e73cc: ldr             x4, [x4, #0x348]
    // 0x6e73d0: StoreField: r3->field_1b = r4
    //     0x6e73d0: stur            w4, [x3, #0x1b]
    // 0x6e73d4: ldur            x1, [fp, #-0x20]
    // 0x6e73d8: StoreField: r3->field_b = r1
    //     0x6e73d8: stur            w1, [x3, #0xb]
    // 0x6e73dc: r1 = Null
    //     0x6e73dc: mov             x1, NULL
    // 0x6e73e0: r2 = 6
    //     0x6e73e0: mov             x2, #6
    // 0x6e73e4: r0 = AllocateArray()
    //     0x6e73e4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e73e8: mov             x2, x0
    // 0x6e73ec: ldur            x0, [fp, #-0x30]
    // 0x6e73f0: stur            x2, [fp, #-0x20]
    // 0x6e73f4: StoreField: r2->field_f = r0
    //     0x6e73f4: stur            w0, [x2, #0xf]
    // 0x6e73f8: r16 = Instance_SizedBox
    //     0x6e73f8: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x6e73fc: ldr             x16, [x16, #0x360]
    // 0x6e7400: StoreField: r2->field_13 = r16
    //     0x6e7400: stur            w16, [x2, #0x13]
    // 0x6e7404: ldur            x0, [fp, #-0x28]
    // 0x6e7408: ArrayStore: r2[0] = r0  ; List_4
    //     0x6e7408: stur            w0, [x2, #0x17]
    // 0x6e740c: r1 = <Widget>
    //     0x6e740c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6e7410: r0 = AllocateGrowableArray()
    //     0x6e7410: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6e7414: mov             x1, x0
    // 0x6e7418: ldur            x0, [fp, #-0x20]
    // 0x6e741c: stur            x1, [fp, #-0x28]
    // 0x6e7420: StoreField: r1->field_f = r0
    //     0x6e7420: stur            w0, [x1, #0xf]
    // 0x6e7424: r2 = 6
    //     0x6e7424: mov             x2, #6
    // 0x6e7428: StoreField: r1->field_b = r2
    //     0x6e7428: stur            w2, [x1, #0xb]
    // 0x6e742c: ldur            x0, [fp, #-8]
    // 0x6e7430: LoadField: r3 = r0->field_1b
    //     0x6e7430: ldur            w3, [x0, #0x1b]
    // 0x6e7434: DecompressPointer r3
    //     0x6e7434: add             x3, x3, HEAP, lsl #32
    // 0x6e7438: tbz             w3, #4, #0x6e7530
    // 0x6e743c: LoadField: r3 = r0->field_13
    //     0x6e743c: ldur            w3, [x0, #0x13]
    // 0x6e7440: DecompressPointer r3
    //     0x6e7440: add             x3, x3, HEAP, lsl #32
    // 0x6e7444: tbnz            w3, #4, #0x6e7454
    // 0x6e7448: r3 = Instance_MaterialColor
    //     0x6e7448: add             x3, PP, #0x12, lsl #12  ; [pp+0x125d8] Obj!MaterialColor@a25ce1
    //     0x6e744c: ldr             x3, [x3, #0x5d8]
    // 0x6e7450: b               #0x6e745c
    // 0x6e7454: r3 = Instance_MaterialColor
    //     0x6e7454: add             x3, PP, #0x14, lsl #12  ; [pp+0x141f8] Obj!MaterialColor@a25ba1
    //     0x6e7458: ldr             x3, [x3, #0x1f8]
    // 0x6e745c: stur            x3, [fp, #-0x20]
    // 0x6e7460: r0 = BoxDecoration()
    //     0x6e7460: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6e7464: mov             x1, x0
    // 0x6e7468: ldur            x0, [fp, #-0x20]
    // 0x6e746c: stur            x1, [fp, #-0x30]
    // 0x6e7470: StoreField: r1->field_7 = r0
    //     0x6e7470: stur            w0, [x1, #7]
    // 0x6e7474: r0 = Instance_BoxShape
    //     0x6e7474: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x6e7478: ldr             x0, [x0, #0x1a0]
    // 0x6e747c: StoreField: r1->field_23 = r0
    //     0x6e747c: stur            w0, [x1, #0x23]
    // 0x6e7480: r0 = Container()
    //     0x6e7480: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6e7484: stur            x0, [fp, #-0x20]
    // 0x6e7488: r16 = 12.000000
    //     0x6e7488: add             x16, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x6e748c: ldr             x16, [x16, #0xae0]
    // 0x6e7490: r30 = 12.000000
    //     0x6e7490: add             lr, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x6e7494: ldr             lr, [lr, #0xae0]
    // 0x6e7498: stp             lr, x16, [SP, #8]
    // 0x6e749c: ldur            x16, [fp, #-0x30]
    // 0x6e74a0: str             x16, [SP]
    // 0x6e74a4: mov             x1, x0
    // 0x6e74a8: r4 = const [0, 0x4, 0x3, 0x1, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x6e74a8: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a58] List(11) [0, 0x4, 0x3, 0x1, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x6e74ac: ldr             x4, [x4, #0xa58]
    // 0x6e74b0: r0 = Container()
    //     0x6e74b0: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6e74b4: ldur            x0, [fp, #-0x28]
    // 0x6e74b8: LoadField: r1 = r0->field_b
    //     0x6e74b8: ldur            w1, [x0, #0xb]
    // 0x6e74bc: LoadField: r2 = r0->field_f
    //     0x6e74bc: ldur            w2, [x0, #0xf]
    // 0x6e74c0: DecompressPointer r2
    //     0x6e74c0: add             x2, x2, HEAP, lsl #32
    // 0x6e74c4: LoadField: r3 = r2->field_b
    //     0x6e74c4: ldur            w3, [x2, #0xb]
    // 0x6e74c8: r2 = LoadInt32Instr(r1)
    //     0x6e74c8: sbfx            x2, x1, #1, #0x1f
    // 0x6e74cc: stur            x2, [fp, #-0x48]
    // 0x6e74d0: r1 = LoadInt32Instr(r3)
    //     0x6e74d0: sbfx            x1, x3, #1, #0x1f
    // 0x6e74d4: cmp             x2, x1
    // 0x6e74d8: b.ne            #0x6e74e4
    // 0x6e74dc: mov             x1, x0
    // 0x6e74e0: r0 = _growToNextCapacity()
    //     0x6e74e0: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6e74e4: ldur            x2, [fp, #-0x28]
    // 0x6e74e8: ldur            x3, [fp, #-0x48]
    // 0x6e74ec: add             x0, x3, #1
    // 0x6e74f0: lsl             x1, x0, #1
    // 0x6e74f4: StoreField: r2->field_b = r1
    //     0x6e74f4: stur            w1, [x2, #0xb]
    // 0x6e74f8: LoadField: r1 = r2->field_f
    //     0x6e74f8: ldur            w1, [x2, #0xf]
    // 0x6e74fc: DecompressPointer r1
    //     0x6e74fc: add             x1, x1, HEAP, lsl #32
    // 0x6e7500: ldur            x0, [fp, #-0x20]
    // 0x6e7504: ArrayStore: r1[r3] = r0  ; List_4
    //     0x6e7504: add             x25, x1, x3, lsl #2
    //     0x6e7508: add             x25, x25, #0xf
    //     0x6e750c: str             w0, [x25]
    //     0x6e7510: tbz             w0, #0, #0x6e752c
    //     0x6e7514: ldurb           w16, [x1, #-1]
    //     0x6e7518: ldurb           w17, [x0, #-1]
    //     0x6e751c: and             x16, x17, x16, lsr #2
    //     0x6e7520: tst             x16, HEAP, lsr #32
    //     0x6e7524: b.eq            #0x6e752c
    //     0x6e7528: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e752c: b               #0x6e7534
    // 0x6e7530: mov             x2, x1
    // 0x6e7534: ldur            x0, [fp, #-8]
    // 0x6e7538: r0 = Row()
    //     0x6e7538: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6e753c: mov             x3, x0
    // 0x6e7540: r0 = Instance_Axis
    //     0x6e7540: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6e7544: stur            x3, [fp, #-0x20]
    // 0x6e7548: StoreField: r3->field_f = r0
    //     0x6e7548: stur            w0, [x3, #0xf]
    // 0x6e754c: r4 = Instance_MainAxisAlignment
    //     0x6e754c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6e7550: ldr             x4, [x4, #0x230]
    // 0x6e7554: StoreField: r3->field_13 = r4
    //     0x6e7554: stur            w4, [x3, #0x13]
    // 0x6e7558: r5 = Instance_MainAxisSize
    //     0x6e7558: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6e755c: ldr             x5, [x5, #0x330]
    // 0x6e7560: ArrayStore: r3[0] = r5  ; List_4
    //     0x6e7560: stur            w5, [x3, #0x17]
    // 0x6e7564: r1 = Instance_CrossAxisAlignment
    //     0x6e7564: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6e7568: ldr             x1, [x1, #0x338]
    // 0x6e756c: StoreField: r3->field_1b = r1
    //     0x6e756c: stur            w1, [x3, #0x1b]
    // 0x6e7570: r6 = Instance_VerticalDirection
    //     0x6e7570: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6e7574: ldr             x6, [x6, #0x340]
    // 0x6e7578: StoreField: r3->field_23 = r6
    //     0x6e7578: stur            w6, [x3, #0x23]
    // 0x6e757c: r7 = Instance_Clip
    //     0x6e757c: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6e7580: ldr             x7, [x7, #0x348]
    // 0x6e7584: StoreField: r3->field_2b = r7
    //     0x6e7584: stur            w7, [x3, #0x2b]
    // 0x6e7588: StoreField: r3->field_2f = rZR
    //     0x6e7588: stur            xzr, [x3, #0x2f]
    // 0x6e758c: ldur            x1, [fp, #-0x28]
    // 0x6e7590: StoreField: r3->field_b = r1
    //     0x6e7590: stur            w1, [x3, #0xb]
    // 0x6e7594: r1 = Null
    //     0x6e7594: mov             x1, NULL
    // 0x6e7598: r2 = 2
    //     0x6e7598: mov             x2, #2
    // 0x6e759c: r0 = AllocateArray()
    //     0x6e759c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e75a0: mov             x2, x0
    // 0x6e75a4: ldur            x0, [fp, #-0x20]
    // 0x6e75a8: stur            x2, [fp, #-0x28]
    // 0x6e75ac: StoreField: r2->field_f = r0
    //     0x6e75ac: stur            w0, [x2, #0xf]
    // 0x6e75b0: r1 = <Widget>
    //     0x6e75b0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6e75b4: r0 = AllocateGrowableArray()
    //     0x6e75b4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6e75b8: mov             x1, x0
    // 0x6e75bc: ldur            x0, [fp, #-0x28]
    // 0x6e75c0: stur            x1, [fp, #-0x20]
    // 0x6e75c4: StoreField: r1->field_f = r0
    //     0x6e75c4: stur            w0, [x1, #0xf]
    // 0x6e75c8: r0 = 2
    //     0x6e75c8: mov             x0, #2
    // 0x6e75cc: StoreField: r1->field_b = r0
    //     0x6e75cc: stur            w0, [x1, #0xb]
    // 0x6e75d0: r0 = Column()
    //     0x6e75d0: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6e75d4: mov             x1, x0
    // 0x6e75d8: r0 = Instance_Axis
    //     0x6e75d8: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6e75dc: stur            x1, [fp, #-0x28]
    // 0x6e75e0: StoreField: r1->field_f = r0
    //     0x6e75e0: stur            w0, [x1, #0xf]
    // 0x6e75e4: r2 = Instance_MainAxisAlignment
    //     0x6e75e4: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6e75e8: ldr             x2, [x2, #0x230]
    // 0x6e75ec: StoreField: r1->field_13 = r2
    //     0x6e75ec: stur            w2, [x1, #0x13]
    // 0x6e75f0: r3 = Instance_MainAxisSize
    //     0x6e75f0: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6e75f4: ldr             x3, [x3, #0x330]
    // 0x6e75f8: ArrayStore: r1[0] = r3  ; List_4
    //     0x6e75f8: stur            w3, [x1, #0x17]
    // 0x6e75fc: r4 = Instance_CrossAxisAlignment
    //     0x6e75fc: add             x4, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x6e7600: ldr             x4, [x4, #0x238]
    // 0x6e7604: StoreField: r1->field_1b = r4
    //     0x6e7604: stur            w4, [x1, #0x1b]
    // 0x6e7608: r5 = Instance_VerticalDirection
    //     0x6e7608: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6e760c: ldr             x5, [x5, #0x340]
    // 0x6e7610: StoreField: r1->field_23 = r5
    //     0x6e7610: stur            w5, [x1, #0x23]
    // 0x6e7614: r6 = Instance_Clip
    //     0x6e7614: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6e7618: ldr             x6, [x6, #0x348]
    // 0x6e761c: StoreField: r1->field_2b = r6
    //     0x6e761c: stur            w6, [x1, #0x2b]
    // 0x6e7620: StoreField: r1->field_2f = rZR
    //     0x6e7620: stur            xzr, [x1, #0x2f]
    // 0x6e7624: ldur            x7, [fp, #-0x20]
    // 0x6e7628: StoreField: r1->field_b = r7
    //     0x6e7628: stur            w7, [x1, #0xb]
    // 0x6e762c: r0 = Container()
    //     0x6e762c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6e7630: stur            x0, [fp, #-0x20]
    // 0x6e7634: r16 = inf
    //     0x6e7634: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x6e7638: ldr             x16, [x16, #0xb20]
    // 0x6e763c: r30 = Instance_EdgeInsets
    //     0x6e763c: add             lr, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x6e7640: ldr             lr, [lr, #0x240]
    // 0x6e7644: stp             lr, x16, [SP, #0x10]
    // 0x6e7648: ldur            x16, [fp, #-0x10]
    // 0x6e764c: ldur            lr, [fp, #-0x28]
    // 0x6e7650: stp             lr, x16, [SP]
    // 0x6e7654: mov             x1, x0
    // 0x6e7658: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, padding, 0x2, width, 0x1, null]
    //     0x6e7658: add             x4, PP, #0x13, lsl #12  ; [pp+0x13b28] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "padding", 0x2, "width", 0x1, Null]
    //     0x6e765c: ldr             x4, [x4, #0xb28]
    // 0x6e7660: r0 = Container()
    //     0x6e7660: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6e7664: r0 = TextStyle()
    //     0x6e7664: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6e7668: mov             x1, x0
    // 0x6e766c: r0 = true
    //     0x6e766c: add             x0, NULL, #0x20  ; true
    // 0x6e7670: stur            x1, [fp, #-0x10]
    // 0x6e7674: StoreField: r1->field_7 = r0
    //     0x6e7674: stur            w0, [x1, #7]
    // 0x6e7678: r2 = Instance_Color
    //     0x6e7678: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x6e767c: ldr             x2, [x2, #0xb88]
    // 0x6e7680: StoreField: r1->field_b = r2
    //     0x6e7680: stur            w2, [x1, #0xb]
    // 0x6e7684: r2 = 16.000000
    //     0x6e7684: add             x2, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x6e7688: ldr             x2, [x2, #0x358]
    // 0x6e768c: StoreField: r1->field_1f = r2
    //     0x6e768c: stur            w2, [x1, #0x1f]
    // 0x6e7690: r2 = Instance_FontWeight
    //     0x6e7690: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6e7694: ldr             x2, [x2, #0x1d0]
    // 0x6e7698: StoreField: r1->field_23 = r2
    //     0x6e7698: stur            w2, [x1, #0x23]
    // 0x6e769c: r2 = 0.500000
    //     0x6e769c: ldr             x2, [PP, #0x4af8]  ; [pp+0x4af8] 0.5
    // 0x6e76a0: StoreField: r1->field_2b = r2
    //     0x6e76a0: stur            w2, [x1, #0x2b]
    // 0x6e76a4: r0 = Text()
    //     0x6e76a4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6e76a8: mov             x3, x0
    // 0x6e76ac: r0 = "Konum Takibi Kontrolü"
    //     0x6e76ac: add             x0, PP, #0x18, lsl #12  ; [pp+0x18900] "Konum Takibi Kontrolü"
    //     0x6e76b0: ldr             x0, [x0, #0x900]
    // 0x6e76b4: stur            x3, [fp, #-0x28]
    // 0x6e76b8: StoreField: r3->field_b = r0
    //     0x6e76b8: stur            w0, [x3, #0xb]
    // 0x6e76bc: ldur            x0, [fp, #-0x10]
    // 0x6e76c0: StoreField: r3->field_13 = r0
    //     0x6e76c0: stur            w0, [x3, #0x13]
    // 0x6e76c4: r1 = Null
    //     0x6e76c4: mov             x1, NULL
    // 0x6e76c8: r2 = 8
    //     0x6e76c8: mov             x2, #8
    // 0x6e76cc: r0 = AllocateArray()
    //     0x6e76cc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e76d0: mov             x2, x0
    // 0x6e76d4: ldur            x0, [fp, #-0x20]
    // 0x6e76d8: stur            x2, [fp, #-0x10]
    // 0x6e76dc: StoreField: r2->field_f = r0
    //     0x6e76dc: stur            w0, [x2, #0xf]
    // 0x6e76e0: r16 = Instance_SizedBox
    //     0x6e76e0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11320] Obj!SizedBox@a1fb31
    //     0x6e76e4: ldr             x16, [x16, #0x320]
    // 0x6e76e8: StoreField: r2->field_13 = r16
    //     0x6e76e8: stur            w16, [x2, #0x13]
    // 0x6e76ec: ldur            x0, [fp, #-0x28]
    // 0x6e76f0: ArrayStore: r2[0] = r0  ; List_4
    //     0x6e76f0: stur            w0, [x2, #0x17]
    // 0x6e76f4: r16 = Instance_SizedBox
    //     0x6e76f4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6e76f8: ldr             x16, [x16, #0x220]
    // 0x6e76fc: StoreField: r2->field_1b = r16
    //     0x6e76fc: stur            w16, [x2, #0x1b]
    // 0x6e7700: r1 = <Widget>
    //     0x6e7700: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6e7704: r0 = AllocateGrowableArray()
    //     0x6e7704: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6e7708: mov             x2, x0
    // 0x6e770c: ldur            x0, [fp, #-0x10]
    // 0x6e7710: stur            x2, [fp, #-0x20]
    // 0x6e7714: StoreField: r2->field_f = r0
    //     0x6e7714: stur            w0, [x2, #0xf]
    // 0x6e7718: r0 = 8
    //     0x6e7718: mov             x0, #8
    // 0x6e771c: StoreField: r2->field_b = r0
    //     0x6e771c: stur            w0, [x2, #0xb]
    // 0x6e7720: ldur            x0, [fp, #-8]
    // 0x6e7724: LoadField: r1 = r0->field_1b
    //     0x6e7724: ldur            w1, [x0, #0x1b]
    // 0x6e7728: DecompressPointer r1
    //     0x6e7728: add             x1, x1, HEAP, lsl #32
    // 0x6e772c: tbnz            w1, #4, #0x6e7764
    // 0x6e7730: mov             x1, x2
    // 0x6e7734: r0 = _growToNextCapacity()
    //     0x6e7734: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6e7738: ldur            x3, [fp, #-0x20]
    // 0x6e773c: r1 = 10
    //     0x6e773c: mov             x1, #0xa
    // 0x6e7740: StoreField: r3->field_b = r1
    //     0x6e7740: stur            w1, [x3, #0xb]
    // 0x6e7744: LoadField: r0 = r3->field_f
    //     0x6e7744: ldur            w0, [x3, #0xf]
    // 0x6e7748: DecompressPointer r0
    //     0x6e7748: add             x0, x0, HEAP, lsl #32
    // 0x6e774c: r16 = Instance_Center
    //     0x6e774c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12710] Obj!Center@a1fdb1
    //     0x6e7750: ldr             x16, [x16, #0x710]
    // 0x6e7754: StoreField: r0->field_1f = r16
    //     0x6e7754: stur            w16, [x0, #0x1f]
    // 0x6e7758: mov             x2, x3
    // 0x6e775c: r3 = 5
    //     0x6e775c: mov             x3, #5
    // 0x6e7760: b               #0x6e7994
    // 0x6e7764: mov             x3, x2
    // 0x6e7768: r1 = 10
    //     0x6e7768: mov             x1, #0xa
    // 0x6e776c: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x6e776c: ldur            w2, [x0, #0x17]
    // 0x6e7770: DecompressPointer r2
    //     0x6e7770: add             x2, x2, HEAP, lsl #32
    // 0x6e7774: tbnz            w2, #4, #0x6e7834
    // 0x6e7778: LoadField: r4 = r0->field_13
    //     0x6e7778: ldur            w4, [x0, #0x13]
    // 0x6e777c: DecompressPointer r4
    //     0x6e777c: add             x4, x4, HEAP, lsl #32
    // 0x6e7780: tbnz            w4, #4, #0x6e7834
    // 0x6e7784: mov             x2, x0
    // 0x6e7788: r1 = Function '_stopLocationTracking@926437194':.
    //     0x6e7788: add             x1, PP, #0x18, lsl #12  ; [pp+0x18908] AnonymousClosure: (0x65acd0), in [package:umrem_demo/features/admin/screens/settings_page.dart] _SettingsPageState::_stopLocationTracking (0x65ac10)
    //     0x6e778c: ldr             x1, [x1, #0x908]
    // 0x6e7790: r0 = AllocateClosure()
    //     0x6e7790: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e7794: mov             x2, x0
    // 0x6e7798: r1 = Null
    //     0x6e7798: mov             x1, NULL
    // 0x6e779c: r0 = LocationButton.stop()
    //     0x6e779c: bl              #0x6e7e78  ; [package:umrem_demo/features/home/widgets/location_button.dart] LocationButton::LocationButton.stop
    // 0x6e77a0: mov             x2, x0
    // 0x6e77a4: ldur            x0, [fp, #-0x20]
    // 0x6e77a8: stur            x2, [fp, #-0x10]
    // 0x6e77ac: LoadField: r1 = r0->field_b
    //     0x6e77ac: ldur            w1, [x0, #0xb]
    // 0x6e77b0: LoadField: r3 = r0->field_f
    //     0x6e77b0: ldur            w3, [x0, #0xf]
    // 0x6e77b4: DecompressPointer r3
    //     0x6e77b4: add             x3, x3, HEAP, lsl #32
    // 0x6e77b8: LoadField: r4 = r3->field_b
    //     0x6e77b8: ldur            w4, [x3, #0xb]
    // 0x6e77bc: r3 = LoadInt32Instr(r1)
    //     0x6e77bc: sbfx            x3, x1, #1, #0x1f
    // 0x6e77c0: stur            x3, [fp, #-0x48]
    // 0x6e77c4: r1 = LoadInt32Instr(r4)
    //     0x6e77c4: sbfx            x1, x4, #1, #0x1f
    // 0x6e77c8: cmp             x3, x1
    // 0x6e77cc: b.ne            #0x6e77d8
    // 0x6e77d0: mov             x1, x0
    // 0x6e77d4: r0 = _growToNextCapacity()
    //     0x6e77d4: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6e77d8: ldur            x3, [fp, #-0x20]
    // 0x6e77dc: ldur            x2, [fp, #-0x48]
    // 0x6e77e0: add             x4, x2, #1
    // 0x6e77e4: lsl             x0, x4, #1
    // 0x6e77e8: StoreField: r3->field_b = r0
    //     0x6e77e8: stur            w0, [x3, #0xb]
    // 0x6e77ec: LoadField: r5 = r3->field_f
    //     0x6e77ec: ldur            w5, [x3, #0xf]
    // 0x6e77f0: DecompressPointer r5
    //     0x6e77f0: add             x5, x5, HEAP, lsl #32
    // 0x6e77f4: mov             x1, x5
    // 0x6e77f8: ldur            x0, [fp, #-0x10]
    // 0x6e77fc: ArrayStore: r1[r2] = r0  ; List_4
    //     0x6e77fc: add             x25, x1, x2, lsl #2
    //     0x6e7800: add             x25, x25, #0xf
    //     0x6e7804: str             w0, [x25]
    //     0x6e7808: tbz             w0, #0, #0x6e7824
    //     0x6e780c: ldurb           w16, [x1, #-1]
    //     0x6e7810: ldurb           w17, [x0, #-1]
    //     0x6e7814: and             x16, x17, x16, lsr #2
    //     0x6e7818: tst             x16, HEAP, lsr #32
    //     0x6e781c: b.eq            #0x6e7824
    //     0x6e7820: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e7824: mov             x1, x5
    // 0x6e7828: mov             x0, x4
    // 0x6e782c: mov             x2, x3
    // 0x6e7830: b               #0x6e798c
    // 0x6e7834: tbz             w2, #4, #0x6e78d8
    // 0x6e7838: r0 = LocationButton()
    //     0x6e7838: bl              #0x6e7e6c  ; AllocateLocationButtonStub -> LocationButton (size=0x20)
    // 0x6e783c: mov             x3, x0
    // 0x6e7840: r0 = Instance_IconData
    //     0x6e7840: add             x0, PP, #0x15, lsl #12  ; [pp+0x15528] Obj!IconData@a09ae1
    //     0x6e7844: ldr             x0, [x0, #0x528]
    // 0x6e7848: stur            x3, [fp, #-0x10]
    // 0x6e784c: StoreField: r3->field_b = r0
    //     0x6e784c: stur            w0, [x3, #0xb]
    // 0x6e7850: r0 = "Konum İznine İzin Ver"
    //     0x6e7850: add             x0, PP, #0x15, lsl #12  ; [pp+0x15c28] "Konum İznine İzin Ver"
    //     0x6e7854: ldr             x0, [x0, #0xc28]
    // 0x6e7858: StoreField: r3->field_f = r0
    //     0x6e7858: stur            w0, [x3, #0xf]
    // 0x6e785c: r1 = Instance_Color
    //     0x6e785c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6e7860: ldr             x1, [x1, #0xb78]
    // 0x6e7864: StoreField: r3->field_13 = r1
    //     0x6e7864: stur            w1, [x3, #0x13]
    // 0x6e7868: ldur            x2, [fp, #-8]
    // 0x6e786c: r1 = Function '_requestLocationPermission@926437194':.
    //     0x6e786c: add             x1, PP, #0x18, lsl #12  ; [pp+0x18910] AnonymousClosure: (0x6e7ef4), in [package:umrem_demo/features/admin/screens/settings_page.dart] _SettingsPageState::_requestLocationPermission (0x6e7f2c)
    //     0x6e7870: ldr             x1, [x1, #0x910]
    // 0x6e7874: r0 = AllocateClosure()
    //     0x6e7874: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e7878: mov             x1, x0
    // 0x6e787c: ldur            x0, [fp, #-0x10]
    // 0x6e7880: ArrayStore: r0[0] = r1  ; List_4
    //     0x6e7880: stur            w1, [x0, #0x17]
    // 0x6e7884: ldur            x1, [fp, #-0x20]
    // 0x6e7888: r0 = _growToNextCapacity()
    //     0x6e7888: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6e788c: ldur            x3, [fp, #-0x20]
    // 0x6e7890: r2 = 10
    //     0x6e7890: mov             x2, #0xa
    // 0x6e7894: StoreField: r3->field_b = r2
    //     0x6e7894: stur            w2, [x3, #0xb]
    // 0x6e7898: LoadField: r2 = r3->field_f
    //     0x6e7898: ldur            w2, [x3, #0xf]
    // 0x6e789c: DecompressPointer r2
    //     0x6e789c: add             x2, x2, HEAP, lsl #32
    // 0x6e78a0: mov             x1, x2
    // 0x6e78a4: ldur            x0, [fp, #-0x10]
    // 0x6e78a8: ArrayStore: r1[4] = r0  ; List_4
    //     0x6e78a8: add             x25, x1, #0x1f
    //     0x6e78ac: str             w0, [x25]
    //     0x6e78b0: tbz             w0, #0, #0x6e78cc
    //     0x6e78b4: ldurb           w16, [x1, #-1]
    //     0x6e78b8: ldurb           w17, [x0, #-1]
    //     0x6e78bc: and             x16, x17, x16, lsr #2
    //     0x6e78c0: tst             x16, HEAP, lsr #32
    //     0x6e78c4: b.eq            #0x6e78cc
    //     0x6e78c8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e78cc: mov             x0, x2
    // 0x6e78d0: mov             x2, x3
    // 0x6e78d4: b               #0x6e7984
    // 0x6e78d8: mov             x2, x1
    // 0x6e78dc: r1 = Instance_Color
    //     0x6e78dc: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6e78e0: ldr             x1, [x1, #0xb78]
    // 0x6e78e4: r0 = Instance_IconData
    //     0x6e78e4: add             x0, PP, #0x15, lsl #12  ; [pp+0x15528] Obj!IconData@a09ae1
    //     0x6e78e8: ldr             x0, [x0, #0x528]
    // 0x6e78ec: r0 = LocationButton()
    //     0x6e78ec: bl              #0x6e7e6c  ; AllocateLocationButtonStub -> LocationButton (size=0x20)
    // 0x6e78f0: mov             x3, x0
    // 0x6e78f4: r0 = Instance_IconData
    //     0x6e78f4: add             x0, PP, #0x15, lsl #12  ; [pp+0x15528] Obj!IconData@a09ae1
    //     0x6e78f8: ldr             x0, [x0, #0x528]
    // 0x6e78fc: stur            x3, [fp, #-0x10]
    // 0x6e7900: StoreField: r3->field_b = r0
    //     0x6e7900: stur            w0, [x3, #0xb]
    // 0x6e7904: r0 = "Konum Takibini Başlat"
    //     0x6e7904: add             x0, PP, #0x15, lsl #12  ; [pp+0x15c20] "Konum Takibini Başlat"
    //     0x6e7908: ldr             x0, [x0, #0xc20]
    // 0x6e790c: StoreField: r3->field_f = r0
    //     0x6e790c: stur            w0, [x3, #0xf]
    // 0x6e7910: r0 = Instance_Color
    //     0x6e7910: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6e7914: ldr             x0, [x0, #0xb78]
    // 0x6e7918: StoreField: r3->field_13 = r0
    //     0x6e7918: stur            w0, [x3, #0x13]
    // 0x6e791c: ldur            x2, [fp, #-8]
    // 0x6e7920: r1 = Function '_startLocationTracking@926437194':.
    //     0x6e7920: add             x1, PP, #0x18, lsl #12  ; [pp+0x18918] AnonymousClosure: (0x65b11c), in [package:umrem_demo/features/admin/screens/settings_page.dart] _SettingsPageState::_startLocationTracking (0x65adcc)
    //     0x6e7924: ldr             x1, [x1, #0x918]
    // 0x6e7928: r0 = AllocateClosure()
    //     0x6e7928: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e792c: mov             x1, x0
    // 0x6e7930: ldur            x0, [fp, #-0x10]
    // 0x6e7934: ArrayStore: r0[0] = r1  ; List_4
    //     0x6e7934: stur            w1, [x0, #0x17]
    // 0x6e7938: ldur            x1, [fp, #-0x20]
    // 0x6e793c: r0 = _growToNextCapacity()
    //     0x6e793c: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6e7940: ldur            x2, [fp, #-0x20]
    // 0x6e7944: r0 = 10
    //     0x6e7944: mov             x0, #0xa
    // 0x6e7948: StoreField: r2->field_b = r0
    //     0x6e7948: stur            w0, [x2, #0xb]
    // 0x6e794c: LoadField: r3 = r2->field_f
    //     0x6e794c: ldur            w3, [x2, #0xf]
    // 0x6e7950: DecompressPointer r3
    //     0x6e7950: add             x3, x3, HEAP, lsl #32
    // 0x6e7954: mov             x1, x3
    // 0x6e7958: ldur            x0, [fp, #-0x10]
    // 0x6e795c: ArrayStore: r1[4] = r0  ; List_4
    //     0x6e795c: add             x25, x1, #0x1f
    //     0x6e7960: str             w0, [x25]
    //     0x6e7964: tbz             w0, #0, #0x6e7980
    //     0x6e7968: ldurb           w16, [x1, #-1]
    //     0x6e796c: ldurb           w17, [x0, #-1]
    //     0x6e7970: and             x16, x17, x16, lsr #2
    //     0x6e7974: tst             x16, HEAP, lsr #32
    //     0x6e7978: b.eq            #0x6e7980
    //     0x6e797c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e7980: mov             x0, x3
    // 0x6e7984: mov             x1, x0
    // 0x6e7988: r0 = 5
    //     0x6e7988: mov             x0, #5
    // 0x6e798c: mov             x3, x0
    // 0x6e7990: mov             x0, x1
    // 0x6e7994: stur            x3, [fp, #-0x48]
    // 0x6e7998: LoadField: r1 = r0->field_b
    //     0x6e7998: ldur            w1, [x0, #0xb]
    // 0x6e799c: r0 = LoadInt32Instr(r1)
    //     0x6e799c: sbfx            x0, x1, #1, #0x1f
    // 0x6e79a0: cmp             x3, x0
    // 0x6e79a4: b.ne            #0x6e79b0
    // 0x6e79a8: mov             x1, x2
    // 0x6e79ac: r0 = _growToNextCapacity()
    //     0x6e79ac: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6e79b0: ldur            x3, [fp, #-0x20]
    // 0x6e79b4: ldur            x2, [fp, #-0x48]
    // 0x6e79b8: add             x0, x2, #1
    // 0x6e79bc: lsl             x1, x0, #1
    // 0x6e79c0: StoreField: r3->field_b = r1
    //     0x6e79c0: stur            w1, [x3, #0xb]
    // 0x6e79c4: mov             x1, x2
    // 0x6e79c8: cmp             x1, x0
    // 0x6e79cc: b.hs            #0x6e7dc0
    // 0x6e79d0: LoadField: r0 = r3->field_f
    //     0x6e79d0: ldur            w0, [x3, #0xf]
    // 0x6e79d4: DecompressPointer r0
    //     0x6e79d4: add             x0, x0, HEAP, lsl #32
    // 0x6e79d8: add             x1, x0, x2, lsl #2
    // 0x6e79dc: r16 = Instance_SizedBox
    //     0x6e79dc: add             x16, PP, #0x11, lsl #12  ; [pp+0x11320] Obj!SizedBox@a1fb31
    //     0x6e79e0: ldr             x16, [x16, #0x320]
    // 0x6e79e4: StoreField: r1->field_f = r16
    //     0x6e79e4: stur            w16, [x1, #0xf]
    // 0x6e79e8: r1 = _ConstMap len:10
    //     0x6e79e8: ldr             x1, [PP, #0x5728]  ; [pp+0x5728] Map<int, Color>(10)
    // 0x6e79ec: r2 = 100
    //     0x6e79ec: mov             x2, #0x64
    // 0x6e79f0: r0 = []()
    //     0x6e79f0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6e79f4: stur            x0, [fp, #-8]
    // 0x6e79f8: cmp             w0, NULL
    // 0x6e79fc: b.eq            #0x6e7dc4
    // 0x6e7a00: r0 = Radius()
    //     0x6e7a00: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6e7a04: d0 = 12.000000
    //     0x6e7a04: fmov            d0, #12.00000000
    // 0x6e7a08: stur            x0, [fp, #-0x10]
    // 0x6e7a0c: StoreField: r0->field_7 = d0
    //     0x6e7a0c: stur            d0, [x0, #7]
    // 0x6e7a10: StoreField: r0->field_f = d0
    //     0x6e7a10: stur            d0, [x0, #0xf]
    // 0x6e7a14: r0 = BorderRadius()
    //     0x6e7a14: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6e7a18: mov             x3, x0
    // 0x6e7a1c: ldur            x0, [fp, #-0x10]
    // 0x6e7a20: stur            x3, [fp, #-0x28]
    // 0x6e7a24: StoreField: r3->field_7 = r0
    //     0x6e7a24: stur            w0, [x3, #7]
    // 0x6e7a28: StoreField: r3->field_b = r0
    //     0x6e7a28: stur            w0, [x3, #0xb]
    // 0x6e7a2c: StoreField: r3->field_f = r0
    //     0x6e7a2c: stur            w0, [x3, #0xf]
    // 0x6e7a30: StoreField: r3->field_13 = r0
    //     0x6e7a30: stur            w0, [x3, #0x13]
    // 0x6e7a34: r1 = _ConstMap len:10
    //     0x6e7a34: ldr             x1, [PP, #0x5728]  ; [pp+0x5728] Map<int, Color>(10)
    // 0x6e7a38: r2 = 200
    //     0x6e7a38: mov             x2, #0xc8
    // 0x6e7a3c: r0 = []()
    //     0x6e7a3c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6e7a40: cmp             w0, NULL
    // 0x6e7a44: b.eq            #0x6e7dc8
    // 0x6e7a48: str             x0, [SP]
    // 0x6e7a4c: r1 = Null
    //     0x6e7a4c: mov             x1, NULL
    // 0x6e7a50: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x6e7a50: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x6e7a54: ldr             x4, [x4, #0x788]
    // 0x6e7a58: r0 = Border.all()
    //     0x6e7a58: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x6e7a5c: stur            x0, [fp, #-0x10]
    // 0x6e7a60: r0 = BoxDecoration()
    //     0x6e7a60: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6e7a64: mov             x3, x0
    // 0x6e7a68: ldur            x0, [fp, #-8]
    // 0x6e7a6c: stur            x3, [fp, #-0x30]
    // 0x6e7a70: StoreField: r3->field_7 = r0
    //     0x6e7a70: stur            w0, [x3, #7]
    // 0x6e7a74: ldur            x0, [fp, #-0x10]
    // 0x6e7a78: StoreField: r3->field_f = r0
    //     0x6e7a78: stur            w0, [x3, #0xf]
    // 0x6e7a7c: ldur            x0, [fp, #-0x28]
    // 0x6e7a80: StoreField: r3->field_13 = r0
    //     0x6e7a80: stur            w0, [x3, #0x13]
    // 0x6e7a84: r0 = Instance_BoxShape
    //     0x6e7a84: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6e7a88: ldr             x0, [x0, #0x1c8]
    // 0x6e7a8c: StoreField: r3->field_23 = r0
    //     0x6e7a8c: stur            w0, [x3, #0x23]
    // 0x6e7a90: r1 = _ConstMap len:10
    //     0x6e7a90: ldr             x1, [PP, #0x5728]  ; [pp+0x5728] Map<int, Color>(10)
    // 0x6e7a94: r2 = 1400
    //     0x6e7a94: mov             x2, #0x578
    // 0x6e7a98: r0 = []()
    //     0x6e7a98: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6e7a9c: stur            x0, [fp, #-8]
    // 0x6e7aa0: cmp             w0, NULL
    // 0x6e7aa4: b.eq            #0x6e7dcc
    // 0x6e7aa8: r0 = Icon()
    //     0x6e7aa8: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x6e7aac: mov             x3, x0
    // 0x6e7ab0: r0 = Instance_IconData
    //     0x6e7ab0: add             x0, PP, #0x18, lsl #12  ; [pp+0x18920] Obj!IconData@a09f81
    //     0x6e7ab4: ldr             x0, [x0, #0x920]
    // 0x6e7ab8: stur            x3, [fp, #-0x10]
    // 0x6e7abc: StoreField: r3->field_b = r0
    //     0x6e7abc: stur            w0, [x3, #0xb]
    // 0x6e7ac0: r0 = 20.000000
    //     0x6e7ac0: add             x0, PP, #0xc, lsl #12  ; [pp+0xce48] 20
    //     0x6e7ac4: ldr             x0, [x0, #0xe48]
    // 0x6e7ac8: StoreField: r3->field_f = r0
    //     0x6e7ac8: stur            w0, [x3, #0xf]
    // 0x6e7acc: ldur            x0, [fp, #-8]
    // 0x6e7ad0: StoreField: r3->field_23 = r0
    //     0x6e7ad0: stur            w0, [x3, #0x23]
    // 0x6e7ad4: r1 = _ConstMap len:10
    //     0x6e7ad4: ldr             x1, [PP, #0x5728]  ; [pp+0x5728] Map<int, Color>(10)
    // 0x6e7ad8: r2 = 1600
    //     0x6e7ad8: mov             x2, #0x640
    // 0x6e7adc: r0 = []()
    //     0x6e7adc: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6e7ae0: stur            x0, [fp, #-8]
    // 0x6e7ae4: cmp             w0, NULL
    // 0x6e7ae8: b.eq            #0x6e7dd0
    // 0x6e7aec: r0 = TextStyle()
    //     0x6e7aec: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6e7af0: mov             x1, x0
    // 0x6e7af4: r0 = true
    //     0x6e7af4: add             x0, NULL, #0x20  ; true
    // 0x6e7af8: stur            x1, [fp, #-0x28]
    // 0x6e7afc: StoreField: r1->field_7 = r0
    //     0x6e7afc: stur            w0, [x1, #7]
    // 0x6e7b00: ldur            x2, [fp, #-8]
    // 0x6e7b04: StoreField: r1->field_b = r2
    //     0x6e7b04: stur            w2, [x1, #0xb]
    // 0x6e7b08: r2 = 13.000000
    //     0x6e7b08: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b00] 13
    //     0x6e7b0c: ldr             x2, [x2, #0xb00]
    // 0x6e7b10: StoreField: r1->field_1f = r2
    //     0x6e7b10: stur            w2, [x1, #0x1f]
    // 0x6e7b14: r2 = 1.400000
    //     0x6e7b14: add             x2, PP, #0x15, lsl #12  ; [pp+0x15fa8] 1.4
    //     0x6e7b18: ldr             x2, [x2, #0xfa8]
    // 0x6e7b1c: StoreField: r1->field_37 = r2
    //     0x6e7b1c: stur            w2, [x1, #0x37]
    // 0x6e7b20: r0 = Text()
    //     0x6e7b20: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6e7b24: mov             x2, x0
    // 0x6e7b28: r0 = "Konum takibi aktif olduğunda, misafirleriniz sizin konumunuzu harita üzerinde görebilir. Bu özellik rehber olarak görev yaptığınızda faydalıdır."
    //     0x6e7b28: add             x0, PP, #0x18, lsl #12  ; [pp+0x18928] "Konum takibi aktif olduğunda, misafirleriniz sizin konumunuzu harita üzerinde görebilir. Bu özellik rehber olarak görev yaptığınızda faydalıdır."
    //     0x6e7b2c: ldr             x0, [x0, #0x928]
    // 0x6e7b30: stur            x2, [fp, #-8]
    // 0x6e7b34: StoreField: r2->field_b = r0
    //     0x6e7b34: stur            w0, [x2, #0xb]
    // 0x6e7b38: ldur            x0, [fp, #-0x28]
    // 0x6e7b3c: StoreField: r2->field_13 = r0
    //     0x6e7b3c: stur            w0, [x2, #0x13]
    // 0x6e7b40: r1 = <FlexParentData>
    //     0x6e7b40: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6e7b44: ldr             x1, [x1, #0x340]
    // 0x6e7b48: r0 = Expanded()
    //     0x6e7b48: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6e7b4c: mov             x3, x0
    // 0x6e7b50: r0 = 1
    //     0x6e7b50: mov             x0, #1
    // 0x6e7b54: stur            x3, [fp, #-0x28]
    // 0x6e7b58: StoreField: r3->field_13 = r0
    //     0x6e7b58: stur            x0, [x3, #0x13]
    // 0x6e7b5c: r0 = Instance_FlexFit
    //     0x6e7b5c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6e7b60: ldr             x0, [x0, #0x348]
    // 0x6e7b64: StoreField: r3->field_1b = r0
    //     0x6e7b64: stur            w0, [x3, #0x1b]
    // 0x6e7b68: ldur            x0, [fp, #-8]
    // 0x6e7b6c: StoreField: r3->field_b = r0
    //     0x6e7b6c: stur            w0, [x3, #0xb]
    // 0x6e7b70: r1 = Null
    //     0x6e7b70: mov             x1, NULL
    // 0x6e7b74: r2 = 6
    //     0x6e7b74: mov             x2, #6
    // 0x6e7b78: r0 = AllocateArray()
    //     0x6e7b78: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e7b7c: mov             x2, x0
    // 0x6e7b80: ldur            x0, [fp, #-0x10]
    // 0x6e7b84: stur            x2, [fp, #-8]
    // 0x6e7b88: StoreField: r2->field_f = r0
    //     0x6e7b88: stur            w0, [x2, #0xf]
    // 0x6e7b8c: r16 = Instance_SizedBox
    //     0x6e7b8c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x6e7b90: ldr             x16, [x16, #0x360]
    // 0x6e7b94: StoreField: r2->field_13 = r16
    //     0x6e7b94: stur            w16, [x2, #0x13]
    // 0x6e7b98: ldur            x0, [fp, #-0x28]
    // 0x6e7b9c: ArrayStore: r2[0] = r0  ; List_4
    //     0x6e7b9c: stur            w0, [x2, #0x17]
    // 0x6e7ba0: r1 = <Widget>
    //     0x6e7ba0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6e7ba4: r0 = AllocateGrowableArray()
    //     0x6e7ba4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6e7ba8: mov             x1, x0
    // 0x6e7bac: ldur            x0, [fp, #-8]
    // 0x6e7bb0: stur            x1, [fp, #-0x10]
    // 0x6e7bb4: StoreField: r1->field_f = r0
    //     0x6e7bb4: stur            w0, [x1, #0xf]
    // 0x6e7bb8: r0 = 6
    //     0x6e7bb8: mov             x0, #6
    // 0x6e7bbc: StoreField: r1->field_b = r0
    //     0x6e7bbc: stur            w0, [x1, #0xb]
    // 0x6e7bc0: r0 = Row()
    //     0x6e7bc0: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6e7bc4: mov             x1, x0
    // 0x6e7bc8: r0 = Instance_Axis
    //     0x6e7bc8: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6e7bcc: stur            x1, [fp, #-8]
    // 0x6e7bd0: StoreField: r1->field_f = r0
    //     0x6e7bd0: stur            w0, [x1, #0xf]
    // 0x6e7bd4: r0 = Instance_MainAxisAlignment
    //     0x6e7bd4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6e7bd8: ldr             x0, [x0, #0x230]
    // 0x6e7bdc: StoreField: r1->field_13 = r0
    //     0x6e7bdc: stur            w0, [x1, #0x13]
    // 0x6e7be0: r2 = Instance_MainAxisSize
    //     0x6e7be0: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6e7be4: ldr             x2, [x2, #0x330]
    // 0x6e7be8: ArrayStore: r1[0] = r2  ; List_4
    //     0x6e7be8: stur            w2, [x1, #0x17]
    // 0x6e7bec: r3 = Instance_CrossAxisAlignment
    //     0x6e7bec: add             x3, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x6e7bf0: ldr             x3, [x3, #0x238]
    // 0x6e7bf4: StoreField: r1->field_1b = r3
    //     0x6e7bf4: stur            w3, [x1, #0x1b]
    // 0x6e7bf8: r4 = Instance_VerticalDirection
    //     0x6e7bf8: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6e7bfc: ldr             x4, [x4, #0x340]
    // 0x6e7c00: StoreField: r1->field_23 = r4
    //     0x6e7c00: stur            w4, [x1, #0x23]
    // 0x6e7c04: r5 = Instance_Clip
    //     0x6e7c04: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6e7c08: ldr             x5, [x5, #0x348]
    // 0x6e7c0c: StoreField: r1->field_2b = r5
    //     0x6e7c0c: stur            w5, [x1, #0x2b]
    // 0x6e7c10: StoreField: r1->field_2f = rZR
    //     0x6e7c10: stur            xzr, [x1, #0x2f]
    // 0x6e7c14: ldur            x6, [fp, #-0x10]
    // 0x6e7c18: StoreField: r1->field_b = r6
    //     0x6e7c18: stur            w6, [x1, #0xb]
    // 0x6e7c1c: r0 = Container()
    //     0x6e7c1c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6e7c20: stur            x0, [fp, #-0x10]
    // 0x6e7c24: r16 = inf
    //     0x6e7c24: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x6e7c28: ldr             x16, [x16, #0xb20]
    // 0x6e7c2c: r30 = Instance_EdgeInsets
    //     0x6e7c2c: add             lr, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x6e7c30: ldr             lr, [lr, #0x240]
    // 0x6e7c34: stp             lr, x16, [SP, #0x10]
    // 0x6e7c38: ldur            x16, [fp, #-0x30]
    // 0x6e7c3c: ldur            lr, [fp, #-8]
    // 0x6e7c40: stp             lr, x16, [SP]
    // 0x6e7c44: mov             x1, x0
    // 0x6e7c48: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, padding, 0x2, width, 0x1, null]
    //     0x6e7c48: add             x4, PP, #0x13, lsl #12  ; [pp+0x13b28] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "padding", 0x2, "width", 0x1, Null]
    //     0x6e7c4c: ldr             x4, [x4, #0xb28]
    // 0x6e7c50: r0 = Container()
    //     0x6e7c50: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6e7c54: ldur            x0, [fp, #-0x20]
    // 0x6e7c58: LoadField: r1 = r0->field_b
    //     0x6e7c58: ldur            w1, [x0, #0xb]
    // 0x6e7c5c: LoadField: r2 = r0->field_f
    //     0x6e7c5c: ldur            w2, [x0, #0xf]
    // 0x6e7c60: DecompressPointer r2
    //     0x6e7c60: add             x2, x2, HEAP, lsl #32
    // 0x6e7c64: LoadField: r3 = r2->field_b
    //     0x6e7c64: ldur            w3, [x2, #0xb]
    // 0x6e7c68: r2 = LoadInt32Instr(r1)
    //     0x6e7c68: sbfx            x2, x1, #1, #0x1f
    // 0x6e7c6c: stur            x2, [fp, #-0x48]
    // 0x6e7c70: r1 = LoadInt32Instr(r3)
    //     0x6e7c70: sbfx            x1, x3, #1, #0x1f
    // 0x6e7c74: cmp             x2, x1
    // 0x6e7c78: b.ne            #0x6e7c84
    // 0x6e7c7c: mov             x1, x0
    // 0x6e7c80: r0 = _growToNextCapacity()
    //     0x6e7c80: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6e7c84: ldur            x4, [fp, #-0x18]
    // 0x6e7c88: ldur            x2, [fp, #-0x20]
    // 0x6e7c8c: ldur            x3, [fp, #-0x48]
    // 0x6e7c90: add             x0, x3, #1
    // 0x6e7c94: lsl             x1, x0, #1
    // 0x6e7c98: StoreField: r2->field_b = r1
    //     0x6e7c98: stur            w1, [x2, #0xb]
    // 0x6e7c9c: LoadField: r1 = r2->field_f
    //     0x6e7c9c: ldur            w1, [x2, #0xf]
    // 0x6e7ca0: DecompressPointer r1
    //     0x6e7ca0: add             x1, x1, HEAP, lsl #32
    // 0x6e7ca4: ldur            x0, [fp, #-0x10]
    // 0x6e7ca8: ArrayStore: r1[r3] = r0  ; List_4
    //     0x6e7ca8: add             x25, x1, x3, lsl #2
    //     0x6e7cac: add             x25, x25, #0xf
    //     0x6e7cb0: str             w0, [x25]
    //     0x6e7cb4: tbz             w0, #0, #0x6e7cd0
    //     0x6e7cb8: ldurb           w16, [x1, #-1]
    //     0x6e7cbc: ldurb           w17, [x0, #-1]
    //     0x6e7cc0: and             x16, x17, x16, lsr #2
    //     0x6e7cc4: tst             x16, HEAP, lsr #32
    //     0x6e7cc8: b.eq            #0x6e7cd0
    //     0x6e7ccc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e7cd0: r0 = Column()
    //     0x6e7cd0: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6e7cd4: mov             x1, x0
    // 0x6e7cd8: r0 = Instance_Axis
    //     0x6e7cd8: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6e7cdc: stur            x1, [fp, #-8]
    // 0x6e7ce0: StoreField: r1->field_f = r0
    //     0x6e7ce0: stur            w0, [x1, #0xf]
    // 0x6e7ce4: r0 = Instance_MainAxisAlignment
    //     0x6e7ce4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6e7ce8: ldr             x0, [x0, #0x230]
    // 0x6e7cec: StoreField: r1->field_13 = r0
    //     0x6e7cec: stur            w0, [x1, #0x13]
    // 0x6e7cf0: r0 = Instance_MainAxisSize
    //     0x6e7cf0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6e7cf4: ldr             x0, [x0, #0x330]
    // 0x6e7cf8: ArrayStore: r1[0] = r0  ; List_4
    //     0x6e7cf8: stur            w0, [x1, #0x17]
    // 0x6e7cfc: r0 = Instance_CrossAxisAlignment
    //     0x6e7cfc: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x6e7d00: ldr             x0, [x0, #0x238]
    // 0x6e7d04: StoreField: r1->field_1b = r0
    //     0x6e7d04: stur            w0, [x1, #0x1b]
    // 0x6e7d08: r0 = Instance_VerticalDirection
    //     0x6e7d08: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6e7d0c: ldr             x0, [x0, #0x340]
    // 0x6e7d10: StoreField: r1->field_23 = r0
    //     0x6e7d10: stur            w0, [x1, #0x23]
    // 0x6e7d14: r0 = Instance_Clip
    //     0x6e7d14: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6e7d18: ldr             x0, [x0, #0x348]
    // 0x6e7d1c: StoreField: r1->field_2b = r0
    //     0x6e7d1c: stur            w0, [x1, #0x2b]
    // 0x6e7d20: StoreField: r1->field_2f = rZR
    //     0x6e7d20: stur            xzr, [x1, #0x2f]
    // 0x6e7d24: ldur            x0, [fp, #-0x20]
    // 0x6e7d28: StoreField: r1->field_b = r0
    //     0x6e7d28: stur            w0, [x1, #0xb]
    // 0x6e7d2c: r0 = Padding()
    //     0x6e7d2c: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6e7d30: mov             x1, x0
    // 0x6e7d34: r0 = Instance_EdgeInsets
    //     0x6e7d34: ldr             x0, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x6e7d38: stur            x1, [fp, #-0x10]
    // 0x6e7d3c: StoreField: r1->field_f = r0
    //     0x6e7d3c: stur            w0, [x1, #0xf]
    // 0x6e7d40: ldur            x0, [fp, #-8]
    // 0x6e7d44: StoreField: r1->field_b = r0
    //     0x6e7d44: stur            w0, [x1, #0xb]
    // 0x6e7d48: r0 = Scaffold()
    //     0x6e7d48: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x6e7d4c: ldur            x1, [fp, #-0x18]
    // 0x6e7d50: ArrayStore: r0[0] = r1  ; List_4
    //     0x6e7d50: stur            w1, [x0, #0x17]
    // 0x6e7d54: ldur            x1, [fp, #-0x10]
    // 0x6e7d58: StoreField: r0->field_1b = r1
    //     0x6e7d58: stur            w1, [x0, #0x1b]
    // 0x6e7d5c: r1 = Instance_AlignmentDirectional
    //     0x6e7d5c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x6e7d60: ldr             x1, [x1, #0x350]
    // 0x6e7d64: StoreField: r0->field_2f = r1
    //     0x6e7d64: stur            w1, [x0, #0x2f]
    // 0x6e7d68: r1 = Instance_Color
    //     0x6e7d68: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6e7d6c: StoreField: r0->field_4f = r1
    //     0x6e7d6c: stur            w1, [x0, #0x4f]
    // 0x6e7d70: r1 = true
    //     0x6e7d70: add             x1, NULL, #0x20  ; true
    // 0x6e7d74: StoreField: r0->field_5f = r1
    //     0x6e7d74: stur            w1, [x0, #0x5f]
    // 0x6e7d78: r2 = Instance_DragStartBehavior
    //     0x6e7d78: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6e7d7c: StoreField: r0->field_63 = r2
    //     0x6e7d7c: stur            w2, [x0, #0x63]
    // 0x6e7d80: r2 = false
    //     0x6e7d80: add             x2, NULL, #0x30  ; false
    // 0x6e7d84: StoreField: r0->field_b = r2
    //     0x6e7d84: stur            w2, [x0, #0xb]
    // 0x6e7d88: StoreField: r0->field_f = r1
    //     0x6e7d88: stur            w1, [x0, #0xf]
    // 0x6e7d8c: StoreField: r0->field_13 = r2
    //     0x6e7d8c: stur            w2, [x0, #0x13]
    // 0x6e7d90: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x6e7d90: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x6e7d94: ldr             x2, [x2, #0x358]
    // 0x6e7d98: StoreField: r0->field_4b = r2
    //     0x6e7d98: stur            w2, [x0, #0x4b]
    // 0x6e7d9c: StoreField: r0->field_6b = r1
    //     0x6e7d9c: stur            w1, [x0, #0x6b]
    // 0x6e7da0: StoreField: r0->field_6f = r1
    //     0x6e7da0: stur            w1, [x0, #0x6f]
    // 0x6e7da4: LeaveFrame
    //     0x6e7da4: mov             SP, fp
    //     0x6e7da8: ldp             fp, lr, [SP], #0x10
    // 0x6e7dac: ret
    //     0x6e7dac: ret             
    // 0x6e7db0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e7db0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e7db4: b               #0x6e6f5c
    // 0x6e7db8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e7db8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6e7dbc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e7dbc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6e7dc0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6e7dc0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6e7dc4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e7dc4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6e7dc8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e7dc8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6e7dcc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e7dcc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6e7dd0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e7dd0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> _requestLocationPermission(dynamic) {
    // ** addr: 0x6e7ef4, size: 0x38
    // 0x6e7ef4: EnterFrame
    //     0x6e7ef4: stp             fp, lr, [SP, #-0x10]!
    //     0x6e7ef8: mov             fp, SP
    // 0x6e7efc: ldr             x0, [fp, #0x10]
    // 0x6e7f00: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6e7f00: ldur            w1, [x0, #0x17]
    // 0x6e7f04: DecompressPointer r1
    //     0x6e7f04: add             x1, x1, HEAP, lsl #32
    // 0x6e7f08: CheckStackOverflow
    //     0x6e7f08: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e7f0c: cmp             SP, x16
    //     0x6e7f10: b.ls            #0x6e7f24
    // 0x6e7f14: r0 = _requestLocationPermission()
    //     0x6e7f14: bl              #0x6e7f2c  ; [package:umrem_demo/features/admin/screens/settings_page.dart] _SettingsPageState::_requestLocationPermission
    // 0x6e7f18: LeaveFrame
    //     0x6e7f18: mov             SP, fp
    //     0x6e7f1c: ldp             fp, lr, [SP], #0x10
    // 0x6e7f20: ret
    //     0x6e7f20: ret             
    // 0x6e7f24: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e7f24: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e7f28: b               #0x6e7f14
  }
  _ _requestLocationPermission(/* No info */) async {
    // ** addr: 0x6e7f2c, size: 0xdc
    // 0x6e7f2c: EnterFrame
    //     0x6e7f2c: stp             fp, lr, [SP, #-0x10]!
    //     0x6e7f30: mov             fp, SP
    // 0x6e7f34: AllocStack(0x18)
    //     0x6e7f34: sub             SP, SP, #0x18
    // 0x6e7f38: SetupParameters(_SettingsPageState this /* r1 => r1, fp-0x10 */)
    //     0x6e7f38: stur            NULL, [fp, #-8]
    //     0x6e7f3c: stur            x1, [fp, #-0x10]
    // 0x6e7f40: CheckStackOverflow
    //     0x6e7f40: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e7f44: cmp             SP, x16
    //     0x6e7f48: b.ls            #0x6e8000
    // 0x6e7f4c: InitAsync() -> Future<void?>
    //     0x6e7f4c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6e7f50: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6e7f54: r0 = checkPermission()
    //     0x6e7f54: bl              #0x5ab570  ; [package:geolocator/geolocator.dart] Geolocator::checkPermission
    // 0x6e7f58: mov             x1, x0
    // 0x6e7f5c: stur            x1, [fp, #-0x18]
    // 0x6e7f60: r0 = Await()
    //     0x6e7f60: bl              #0x3dd188  ; AwaitStub
    // 0x6e7f64: r16 = Instance_LocationPermission
    //     0x6e7f64: add             x16, PP, #9, lsl #12  ; [pp+0x95e0] Obj!LocationPermission@a27c21
    //     0x6e7f68: ldr             x16, [x16, #0x5e0]
    // 0x6e7f6c: cmp             w0, w16
    // 0x6e7f70: b.ne            #0x6e7f98
    // 0x6e7f74: r0 = openLocationSettings()
    //     0x6e7f74: bl              #0x65b0b8  ; [package:geolocator/geolocator.dart] Geolocator::openLocationSettings
    // 0x6e7f78: mov             x1, x0
    // 0x6e7f7c: stur            x1, [fp, #-0x18]
    // 0x6e7f80: r0 = Await()
    //     0x6e7f80: bl              #0x3dd188  ; AwaitStub
    // 0x6e7f84: r16 = true
    //     0x6e7f84: add             x16, NULL, #0x20  ; true
    // 0x6e7f88: cmp             w0, w16
    // 0x6e7f8c: b.ne            #0x6e7ff8
    // 0x6e7f90: r0 = showInfo()
    //     0x6e7f90: bl              #0x6e8008  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showInfo
    // 0x6e7f94: b               #0x6e7ff8
    // 0x6e7f98: r0 = requestPermission()
    //     0x6e7f98: bl              #0x65b054  ; [package:geolocator/geolocator.dart] Geolocator::requestPermission
    // 0x6e7f9c: mov             x1, x0
    // 0x6e7fa0: stur            x1, [fp, #-0x18]
    // 0x6e7fa4: r0 = Await()
    //     0x6e7fa4: bl              #0x3dd188  ; AwaitStub
    // 0x6e7fa8: r16 = Instance_LocationPermission
    //     0x6e7fa8: add             x16, PP, #0xb, lsl #12  ; [pp+0xbc98] Obj!LocationPermission@a27c01
    //     0x6e7fac: ldr             x16, [x16, #0xc98]
    // 0x6e7fb0: cmp             w0, w16
    // 0x6e7fb4: b.eq            #0x6e7fc8
    // 0x6e7fb8: r16 = Instance_LocationPermission
    //     0x6e7fb8: add             x16, PP, #0xb, lsl #12  ; [pp+0xbc90] Obj!LocationPermission@a27be1
    //     0x6e7fbc: ldr             x16, [x16, #0xc90]
    // 0x6e7fc0: cmp             w0, w16
    // 0x6e7fc4: b.ne            #0x6e7fec
    // 0x6e7fc8: r1 = "Konum izni verildi."
    //     0x6e7fc8: add             x1, PP, #0x15, lsl #12  ; [pp+0x15ad8] "Konum izni verildi."
    //     0x6e7fcc: ldr             x1, [x1, #0xad8]
    // 0x6e7fd0: r0 = showSuccess()
    //     0x6e7fd0: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x6e7fd4: ldur            x1, [fp, #-0x10]
    // 0x6e7fd8: r0 = _checkLocationPermission()
    //     0x6e7fd8: bl              #0x589744  ; [package:umrem_demo/features/admin/screens/settings_page.dart] _SettingsPageState::_checkLocationPermission
    // 0x6e7fdc: mov             x1, x0
    // 0x6e7fe0: stur            x1, [fp, #-0x10]
    // 0x6e7fe4: r0 = Await()
    //     0x6e7fe4: bl              #0x3dd188  ; AwaitStub
    // 0x6e7fe8: b               #0x6e7ff8
    // 0x6e7fec: r1 = "Konum izni reddedildi."
    //     0x6e7fec: add             x1, PP, #0x15, lsl #12  ; [pp+0x15ab0] "Konum izni reddedildi."
    //     0x6e7ff0: ldr             x1, [x1, #0xab0]
    // 0x6e7ff4: r0 = showError()
    //     0x6e7ff4: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6e7ff8: r0 = Null
    //     0x6e7ff8: mov             x0, NULL
    // 0x6e7ffc: r0 = ReturnAsyncNotFuture()
    //     0x6e7ffc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e8000: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e8000: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e8004: b               #0x6e7f4c
  }
}

// class id: 3213, size: 0xc, field offset: 0xc
//   const constructor, 
class SettingsPage extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bd54c, size: 0x34
    // 0x7bd54c: EnterFrame
    //     0x7bd54c: stp             fp, lr, [SP, #-0x10]!
    //     0x7bd550: mov             fp, SP
    // 0x7bd554: mov             x0, x1
    // 0x7bd558: r1 = <SettingsPage>
    //     0x7bd558: add             x1, PP, #0x12, lsl #12  ; [pp+0x12698] TypeArguments: <SettingsPage>
    //     0x7bd55c: ldr             x1, [x1, #0x698]
    // 0x7bd560: r0 = _SettingsPageState()
    //     0x7bd560: bl              #0x7bd580  ; Allocate_SettingsPageStateStub -> _SettingsPageState (size=0x20)
    // 0x7bd564: r1 = true
    //     0x7bd564: add             x1, NULL, #0x20  ; true
    // 0x7bd568: StoreField: r0->field_13 = r1
    //     0x7bd568: stur            w1, [x0, #0x13]
    // 0x7bd56c: ArrayStore: r0[0] = r1  ; List_4
    //     0x7bd56c: stur            w1, [x0, #0x17]
    // 0x7bd570: StoreField: r0->field_1b = r1
    //     0x7bd570: stur            w1, [x0, #0x1b]
    // 0x7bd574: LeaveFrame
    //     0x7bd574: mov             SP, fp
    //     0x7bd578: ldp             fp, lr, [SP], #0x10
    // 0x7bd57c: ret
    //     0x7bd57c: ret             
  }
}

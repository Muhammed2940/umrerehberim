// lib: , url: package:umrem_demo/features/dualar/providers/tavaf_dualari_download_provider.dart

// class id: 1049573, size: 0x8
class :: {
}

// class id: 3862, size: 0x3c, field offset: 0x24
class TavafDualariDownloadProvider extends ChangeNotifier {

  _ areAllFilesDownloaded(/* No info */) async {
    // ** addr: 0x5e6d84, size: 0x50
    // 0x5e6d84: EnterFrame
    //     0x5e6d84: stp             fp, lr, [SP, #-0x10]!
    //     0x5e6d88: mov             fp, SP
    // 0x5e6d8c: AllocStack(0x10)
    //     0x5e6d8c: sub             SP, SP, #0x10
    // 0x5e6d90: SetupParameters(TavafDualariDownloadProvider this /* r1 => r1, fp-0x10 */)
    //     0x5e6d90: stur            NULL, [fp, #-8]
    //     0x5e6d94: stur            x1, [fp, #-0x10]
    // 0x5e6d98: CheckStackOverflow
    //     0x5e6d98: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e6d9c: cmp             SP, x16
    //     0x5e6da0: b.ls            #0x5e6dcc
    // 0x5e6da4: InitAsync() -> Future<bool>
    //     0x5e6da4: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x5e6da8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e6dac: ldur            x0, [fp, #-0x10]
    // 0x5e6db0: LoadField: r1 = r0->field_23
    //     0x5e6db0: ldur            w1, [x0, #0x23]
    // 0x5e6db4: DecompressPointer r1
    //     0x5e6db4: add             x1, x1, HEAP, lsl #32
    // 0x5e6db8: r0 = areAllFilesDownloaded()
    //     0x5e6db8: bl              #0x5e6df4  ; [package:umrem_demo/core/services/tavaf_dualari_storage_service.dart] TavafDualariStorageService::areAllFilesDownloaded
    // 0x5e6dbc: mov             x1, x0
    // 0x5e6dc0: stur            x1, [fp, #-0x10]
    // 0x5e6dc4: r0 = Await()
    //     0x5e6dc4: bl              #0x3dd188  ; AwaitStub
    // 0x5e6dc8: r0 = ReturnAsync()
    //     0x5e6dc8: b               #0x427094  ; ReturnAsyncStub
    // 0x5e6dcc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e6dcc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e6dd0: b               #0x5e6da4
  }
  _ TavafDualariDownloadProvider(/* No info */) {
    // ** addr: 0x5ea9cc, size: 0xf0
    // 0x5ea9cc: EnterFrame
    //     0x5ea9cc: stp             fp, lr, [SP, #-0x10]!
    //     0x5ea9d0: mov             fp, SP
    // 0x5ea9d4: AllocStack(0x8)
    //     0x5ea9d4: sub             SP, SP, #8
    // 0x5ea9d8: r0 = ""
    //     0x5ea9d8: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5ea9dc: stur            x1, [fp, #-8]
    // 0x5ea9e0: CheckStackOverflow
    //     0x5ea9e0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ea9e4: cmp             SP, x16
    //     0x5ea9e8: b.ls            #0x5eaab4
    // 0x5ea9ec: StoreField: r1->field_2b = rZR
    //     0x5ea9ec: stur            xzr, [x1, #0x2b]
    // 0x5ea9f0: StoreField: r1->field_33 = r0
    //     0x5ea9f0: stur            w0, [x1, #0x33]
    // 0x5ea9f4: StoreField: r1->field_37 = r0
    //     0x5ea9f4: stur            w0, [x1, #0x37]
    // 0x5ea9f8: r0 = InitLateStaticField(0x101c) // [package:umrem_demo/core/services/tavaf_dualari_storage_service.dart] TavafDualariStorageService::_instance
    //     0x5ea9f8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5ea9fc: ldr             x0, [x0, #0x2038]
    //     0x5eaa00: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5eaa04: cmp             w0, w16
    //     0x5eaa08: b.ne            #0x5eaa18
    //     0x5eaa0c: add             x2, PP, #0x10, lsl #12  ; [pp+0x10bf0] Field <TavafDualariStorageService._instance@968405978>: static late final (offset: 0x101c)
    //     0x5eaa10: ldr             x2, [x2, #0xbf0]
    //     0x5eaa14: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5eaa18: ldur            x1, [fp, #-8]
    // 0x5eaa1c: StoreField: r1->field_23 = r0
    //     0x5eaa1c: stur            w0, [x1, #0x23]
    //     0x5eaa20: ldurb           w16, [x1, #-1]
    //     0x5eaa24: ldurb           w17, [x0, #-1]
    //     0x5eaa28: and             x16, x17, x16, lsr #2
    //     0x5eaa2c: tst             x16, HEAP, lsr #32
    //     0x5eaa30: b.eq            #0x5eaa38
    //     0x5eaa34: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5eaa38: r0 = CommonService()
    //     0x5eaa38: bl              #0x5eaabc  ; AllocateCommonServiceStub -> CommonService (size=0x8)
    // 0x5eaa3c: ldur            x1, [fp, #-8]
    // 0x5eaa40: StoreField: r1->field_27 = r0
    //     0x5eaa40: stur            w0, [x1, #0x27]
    //     0x5eaa44: ldurb           w16, [x1, #-1]
    //     0x5eaa48: ldurb           w17, [x0, #-1]
    //     0x5eaa4c: and             x16, x17, x16, lsr #2
    //     0x5eaa50: tst             x16, HEAP, lsr #32
    //     0x5eaa54: b.eq            #0x5eaa5c
    //     0x5eaa58: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5eaa5c: StoreField: r1->field_7 = rZR
    //     0x5eaa5c: stur            xzr, [x1, #7]
    // 0x5eaa60: StoreField: r1->field_13 = rZR
    //     0x5eaa60: stur            xzr, [x1, #0x13]
    // 0x5eaa64: StoreField: r1->field_1b = rZR
    //     0x5eaa64: stur            xzr, [x1, #0x1b]
    // 0x5eaa68: r0 = InitLateStaticField(0x5e0) // [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::_emptyListeners
    //     0x5eaa68: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5eaa6c: ldr             x0, [x0, #0xbc0]
    //     0x5eaa70: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5eaa74: cmp             w0, w16
    //     0x5eaa78: b.ne            #0x5eaa84
    //     0x5eaa7c: ldr             x2, [PP, #0x1c28]  ; [pp+0x1c28] Field <ChangeNotifier._emptyListeners@88329750>: static late final (offset: 0x5e0)
    //     0x5eaa80: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5eaa84: ldur            x1, [fp, #-8]
    // 0x5eaa88: StoreField: r1->field_f = r0
    //     0x5eaa88: stur            w0, [x1, #0xf]
    //     0x5eaa8c: ldurb           w16, [x1, #-1]
    //     0x5eaa90: ldurb           w17, [x0, #-1]
    //     0x5eaa94: and             x16, x17, x16, lsr #2
    //     0x5eaa98: tst             x16, HEAP, lsr #32
    //     0x5eaa9c: b.eq            #0x5eaaa4
    //     0x5eaaa0: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5eaaa4: r0 = Null
    //     0x5eaaa4: mov             x0, NULL
    // 0x5eaaa8: LeaveFrame
    //     0x5eaaa8: mov             SP, fp
    //     0x5eaaac: ldp             fp, lr, [SP], #0x10
    // 0x5eaab0: ret
    //     0x5eaab0: ret             
    // 0x5eaab4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5eaab4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5eaab8: b               #0x5ea9ec
  }
  _ downloadSingleFile(/* No info */) async {
    // ** addr: 0x722200, size: 0x140
    // 0x722200: EnterFrame
    //     0x722200: stp             fp, lr, [SP, #-0x10]!
    //     0x722204: mov             fp, SP
    // 0x722208: AllocStack(0x88)
    //     0x722208: sub             SP, SP, #0x88
    // 0x72220c: SetupParameters(TavafDualariDownloadProvider this /* r1 => r1, fp-0x68 */, dynamic _ /* r2 => r2, fp-0x70 */)
    //     0x72220c: stur            NULL, [fp, #-8]
    //     0x722210: stur            x1, [fp, #-0x68]
    //     0x722214: stur            x2, [fp, #-0x70]
    // 0x722218: CheckStackOverflow
    //     0x722218: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72221c: cmp             SP, x16
    //     0x722220: b.ls            #0x722338
    // 0x722224: r1 = 1
    //     0x722224: mov             x1, #1
    // 0x722228: r0 = AllocateContext()
    //     0x722228: bl              #0x927010  ; AllocateContextStub
    // 0x72222c: mov             x2, x0
    // 0x722230: ldur            x1, [fp, #-0x68]
    // 0x722234: stur            x2, [fp, #-0x78]
    // 0x722238: StoreField: r2->field_f = r1
    //     0x722238: stur            w1, [x2, #0xf]
    // 0x72223c: InitAsync() -> Future<String?>
    //     0x72223c: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x722240: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x722244: ldur            x0, [fp, #-0x68]
    // 0x722248: LoadField: r1 = r0->field_27
    //     0x722248: ldur            w1, [x0, #0x27]
    // 0x72224c: DecompressPointer r1
    //     0x72224c: add             x1, x1, HEAP, lsl #32
    // 0x722250: r0 = hasInternetConnection()
    //     0x722250: bl              #0x5f529c  ; [package:umrem_demo/common/services/common_service.dart] CommonService::hasInternetConnection
    // 0x722254: mov             x1, x0
    // 0x722258: stur            x1, [fp, #-0x80]
    // 0x72225c: r0 = Await()
    //     0x72225c: bl              #0x3dd188  ; AwaitStub
    // 0x722260: r16 = true
    //     0x722260: add             x16, NULL, #0x20  ; true
    // 0x722264: cmp             w0, w16
    // 0x722268: b.eq            #0x722274
    // 0x72226c: r0 = Null
    //     0x72226c: mov             x0, NULL
    // 0x722270: r0 = ReturnAsyncNotFuture()
    //     0x722270: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x722274: ldur            x0, [fp, #-0x68]
    // 0x722278: r1 = "Dosya indiriliyor..."
    //     0x722278: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fff8] "Dosya indiriliyor..."
    //     0x72227c: ldr             x1, [x1, #0xff8]
    // 0x722280: StoreField: r0->field_33 = r1
    //     0x722280: stur            w1, [x0, #0x33]
    // 0x722284: mov             x1, x0
    // 0x722288: r0 = notifyListeners()
    //     0x722288: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72228c: ldur            x0, [fp, #-0x68]
    // 0x722290: LoadField: r3 = r0->field_23
    //     0x722290: ldur            w3, [x0, #0x23]
    // 0x722294: DecompressPointer r3
    //     0x722294: add             x3, x3, HEAP, lsl #32
    // 0x722298: ldur            x2, [fp, #-0x78]
    // 0x72229c: stur            x3, [fp, #-0x80]
    // 0x7222a0: r1 = Function '<anonymous closure>':.
    //     0x7222a0: add             x1, PP, #0x20, lsl #12  ; [pp+0x20178] AnonymousClosure: (0x71a8b0), in [package:umrem_demo/features/dualar/providers/quran_download_provider.dart] QuranDownloadProvider::downloadSinglePage (0x6fd5d8)
    //     0x7222a4: ldr             x1, [x1, #0x178]
    // 0x7222a8: r0 = AllocateClosure()
    //     0x7222a8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7222ac: str             x0, [SP]
    // 0x7222b0: ldur            x1, [fp, #-0x80]
    // 0x7222b4: ldur            x2, [fp, #-0x70]
    // 0x7222b8: r4 = const [0, 0x3, 0x1, 0x2, onProgress, 0x2, null]
    //     0x7222b8: add             x4, PP, #0x16, lsl #12  ; [pp+0x16118] List(7) [0, 0x3, 0x1, 0x2, "onProgress", 0x2, Null]
    //     0x7222bc: ldr             x4, [x4, #0x118]
    // 0x7222c0: r0 = downloadFile()
    //     0x7222c0: bl              #0x722340  ; [package:umrem_demo/core/services/tavaf_dualari_storage_service.dart] TavafDualariStorageService::downloadFile
    // 0x7222c4: mov             x1, x0
    // 0x7222c8: stur            x1, [fp, #-0x80]
    // 0x7222cc: r0 = Await()
    //     0x7222cc: bl              #0x3dd188  ; AwaitStub
    // 0x7222d0: r0 = ReturnAsync()
    //     0x7222d0: b               #0x427094  ; ReturnAsyncStub
    // 0x7222d4: sub             SP, fp, #0x88
    // 0x7222d8: stur            x0, [fp, #-0x68]
    // 0x7222dc: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x7222dc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7222e0: ldr             x0, [x0, #0xcb8]
    //     0x7222e4: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7222e8: cmp             w0, w16
    //     0x7222ec: b.ne            #0x7222f8
    //     0x7222f0: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x7222f4: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7222f8: r1 = Null
    //     0x7222f8: mov             x1, NULL
    // 0x7222fc: r2 = 4
    //     0x7222fc: mov             x2, #4
    // 0x722300: r0 = AllocateArray()
    //     0x722300: bl              #0x9280a0  ; AllocateArrayStub
    // 0x722304: r16 = "Dosya indirme hatası: "
    //     0x722304: add             x16, PP, #0x20, lsl #12  ; [pp+0x20008] "Dosya indirme hatası: "
    //     0x722308: ldr             x16, [x16, #8]
    // 0x72230c: StoreField: r0->field_f = r16
    //     0x72230c: stur            w16, [x0, #0xf]
    // 0x722310: ldur            x1, [fp, #-0x68]
    // 0x722314: StoreField: r0->field_13 = r1
    //     0x722314: stur            w1, [x0, #0x13]
    // 0x722318: str             x0, [SP]
    // 0x72231c: r0 = _interpolate()
    //     0x72231c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x722320: str             NULL, [SP]
    // 0x722324: mov             x1, x0
    // 0x722328: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x722328: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x72232c: r0 = debugPrintThrottled()
    //     0x72232c: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x722330: r0 = Null
    //     0x722330: mov             x0, NULL
    // 0x722334: r0 = ReturnAsyncNotFuture()
    //     0x722334: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x722338: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x722338: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72233c: b               #0x722224
  }
  _ downloadAllFiles(/* No info */) async {
    // ** addr: 0x72a6fc, size: 0x238
    // 0x72a6fc: EnterFrame
    //     0x72a6fc: stp             fp, lr, [SP, #-0x10]!
    //     0x72a700: mov             fp, SP
    // 0x72a704: AllocStack(0xa0)
    //     0x72a704: sub             SP, SP, #0xa0
    // 0x72a708: SetupParameters(TavafDualariDownloadProvider this /* r1 => r1, fp-0x78 */)
    //     0x72a708: stur            NULL, [fp, #-8]
    //     0x72a70c: stur            x1, [fp, #-0x78]
    // 0x72a710: CheckStackOverflow
    //     0x72a710: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72a714: cmp             SP, x16
    //     0x72a718: b.ls            #0x72a92c
    // 0x72a71c: r1 = 1
    //     0x72a71c: mov             x1, #1
    // 0x72a720: r0 = AllocateContext()
    //     0x72a720: bl              #0x927010  ; AllocateContextStub
    // 0x72a724: mov             x2, x0
    // 0x72a728: ldur            x1, [fp, #-0x78]
    // 0x72a72c: stur            x2, [fp, #-0x80]
    // 0x72a730: StoreField: r2->field_f = r1
    //     0x72a730: stur            w1, [x2, #0xf]
    // 0x72a734: InitAsync() -> Future<bool>
    //     0x72a734: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x72a738: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x72a73c: ldur            x0, [fp, #-0x78]
    // 0x72a740: r1 = ""
    //     0x72a740: ldr             x1, [PP, #0x128]  ; [pp+0x128] ""
    // 0x72a744: StoreField: r0->field_37 = r1
    //     0x72a744: stur            w1, [x0, #0x37]
    // 0x72a748: StoreField: r0->field_2b = rZR
    //     0x72a748: stur            xzr, [x0, #0x2b]
    // 0x72a74c: mov             x1, x0
    // 0x72a750: r0 = notifyListeners()
    //     0x72a750: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72a754: ldur            x0, [fp, #-0x78]
    // 0x72a758: LoadField: r1 = r0->field_27
    //     0x72a758: ldur            w1, [x0, #0x27]
    // 0x72a75c: DecompressPointer r1
    //     0x72a75c: add             x1, x1, HEAP, lsl #32
    // 0x72a760: r0 = hasInternetConnection()
    //     0x72a760: bl              #0x5f529c  ; [package:umrem_demo/common/services/common_service.dart] CommonService::hasInternetConnection
    // 0x72a764: mov             x1, x0
    // 0x72a768: stur            x1, [fp, #-0x88]
    // 0x72a76c: r0 = Await()
    //     0x72a76c: bl              #0x3dd188  ; AwaitStub
    // 0x72a770: r16 = true
    //     0x72a770: add             x16, NULL, #0x20  ; true
    // 0x72a774: cmp             w0, w16
    // 0x72a778: b.eq            #0x72a79c
    // 0x72a77c: ldur            x0, [fp, #-0x78]
    // 0x72a780: r1 = "İnternet bağlantısı yok. Lütfen bağlantınızı kontrol edin."
    //     0x72a780: add             x1, PP, #0x20, lsl #12  ; [pp+0x202f8] "İnternet bağlantısı yok. Lütfen bağlantınızı kontrol edin."
    //     0x72a784: ldr             x1, [x1, #0x2f8]
    // 0x72a788: StoreField: r0->field_37 = r1
    //     0x72a788: stur            w1, [x0, #0x37]
    // 0x72a78c: mov             x1, x0
    // 0x72a790: r0 = notifyListeners()
    //     0x72a790: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72a794: r0 = false
    //     0x72a794: add             x0, NULL, #0x30  ; false
    // 0x72a798: r0 = ReturnAsyncNotFuture()
    //     0x72a798: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72a79c: ldur            x0, [fp, #-0x78]
    // 0x72a7a0: r1 = "Tavaf duaları indiriliyor..."
    //     0x72a7a0: add             x1, PP, #0x20, lsl #12  ; [pp+0x20300] "Tavaf duaları indiriliyor..."
    //     0x72a7a4: ldr             x1, [x1, #0x300]
    // 0x72a7a8: StoreField: r0->field_33 = r1
    //     0x72a7a8: stur            w1, [x0, #0x33]
    // 0x72a7ac: mov             x1, x0
    // 0x72a7b0: r0 = notifyListeners()
    //     0x72a7b0: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72a7b4: ldur            x0, [fp, #-0x78]
    // 0x72a7b8: LoadField: r3 = r0->field_23
    //     0x72a7b8: ldur            w3, [x0, #0x23]
    // 0x72a7bc: DecompressPointer r3
    //     0x72a7bc: add             x3, x3, HEAP, lsl #32
    // 0x72a7c0: ldur            x2, [fp, #-0x80]
    // 0x72a7c4: stur            x3, [fp, #-0x88]
    // 0x72a7c8: r1 = Function '<anonymous closure>':.
    //     0x72a7c8: add             x1, PP, #0x20, lsl #12  ; [pp+0x20308] AnonymousClosure: (0x72abfc), in [package:umrem_demo/features/dualar/providers/tavaf_dualari_download_provider.dart] TavafDualariDownloadProvider::downloadAllFiles (0x72a6fc)
    //     0x72a7cc: ldr             x1, [x1, #0x308]
    // 0x72a7d0: r0 = AllocateClosure()
    //     0x72a7d0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72a7d4: ldur            x1, [fp, #-0x88]
    // 0x72a7d8: mov             x2, x0
    // 0x72a7dc: stur            x0, [fp, #-0x90]
    // 0x72a7e0: r0 = downloadAllFiles()
    //     0x72a7e0: bl              #0x72a934  ; [package:umrem_demo/core/services/tavaf_dualari_storage_service.dart] TavafDualariStorageService::downloadAllFiles
    // 0x72a7e4: mov             x1, x0
    // 0x72a7e8: stur            x1, [fp, #-0x98]
    // 0x72a7ec: r0 = Await()
    //     0x72a7ec: bl              #0x3dd188  ; AwaitStub
    // 0x72a7f0: stur            x0, [fp, #-0x88]
    // 0x72a7f4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x72a7f4: ldur            w1, [x0, #0x17]
    // 0x72a7f8: DecompressPointer r1
    //     0x72a7f8: add             x1, x1, HEAP, lsl #32
    // 0x72a7fc: r16 = true
    //     0x72a7fc: add             x16, NULL, #0x20  ; true
    // 0x72a800: cmp             w1, w16
    // 0x72a804: b.ne            #0x72a830
    // 0x72a808: ldur            x0, [fp, #-0x78]
    // 0x72a80c: r1 = "Tüm dosyalar başarıyla indirildi!"
    //     0x72a80c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20310] "Tüm dosyalar başarıyla indirildi!"
    //     0x72a810: ldr             x1, [x1, #0x310]
    // 0x72a814: d0 = 1.000000
    //     0x72a814: fmov            d0, #1.00000000
    // 0x72a818: StoreField: r0->field_33 = r1
    //     0x72a818: stur            w1, [x0, #0x33]
    // 0x72a81c: StoreField: r0->field_2b = d0
    //     0x72a81c: stur            d0, [x0, #0x2b]
    // 0x72a820: mov             x1, x0
    // 0x72a824: r0 = notifyListeners()
    //     0x72a824: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72a828: r0 = true
    //     0x72a828: add             x0, NULL, #0x20  ; true
    // 0x72a82c: r0 = ReturnAsyncNotFuture()
    //     0x72a82c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72a830: LoadField: r1 = r0->field_f
    //     0x72a830: ldur            w1, [x0, #0xf]
    // 0x72a834: DecompressPointer r1
    //     0x72a834: add             x1, x1, HEAP, lsl #32
    // 0x72a838: cmp             w1, NULL
    // 0x72a83c: b.ne            #0x72a884
    // 0x72a840: r1 = Null
    //     0x72a840: mov             x1, NULL
    // 0x72a844: r2 = 6
    //     0x72a844: mov             x2, #6
    // 0x72a848: r0 = AllocateArray()
    //     0x72a848: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72a84c: r16 = "Dosya "
    //     0x72a84c: add             x16, PP, #0x20, lsl #12  ; [pp+0x20318] "Dosya "
    //     0x72a850: ldr             x16, [x16, #0x318]
    // 0x72a854: StoreField: r0->field_f = r16
    //     0x72a854: stur            w16, [x0, #0xf]
    // 0x72a858: ldur            x1, [fp, #-0x88]
    // 0x72a85c: LoadField: r2 = r1->field_13
    //     0x72a85c: ldur            w2, [x1, #0x13]
    // 0x72a860: DecompressPointer r2
    //     0x72a860: add             x2, x2, HEAP, lsl #32
    // 0x72a864: StoreField: r0->field_13 = r2
    //     0x72a864: stur            w2, [x0, #0x13]
    // 0x72a868: r16 = " indirilemedi. Lütfen tekrar deneyin."
    //     0x72a868: add             x16, PP, #0x20, lsl #12  ; [pp+0x20320] " indirilemedi. Lütfen tekrar deneyin."
    //     0x72a86c: ldr             x16, [x16, #0x320]
    // 0x72a870: ArrayStore: r0[0] = r16  ; List_4
    //     0x72a870: stur            w16, [x0, #0x17]
    // 0x72a874: str             x0, [SP]
    // 0x72a878: r0 = _interpolate()
    //     0x72a878: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72a87c: mov             x3, x0
    // 0x72a880: b               #0x72a888
    // 0x72a884: mov             x3, x1
    // 0x72a888: ldur            x2, [fp, #-0x78]
    // 0x72a88c: r1 = "İndirme başarısız!"
    //     0x72a88c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20328] "İndirme başarısız!"
    //     0x72a890: ldr             x1, [x1, #0x328]
    // 0x72a894: mov             x0, x3
    // 0x72a898: stur            x3, [fp, #-0x88]
    // 0x72a89c: StoreField: r2->field_37 = r0
    //     0x72a89c: stur            w0, [x2, #0x37]
    //     0x72a8a0: ldurb           w16, [x2, #-1]
    //     0x72a8a4: ldurb           w17, [x0, #-1]
    //     0x72a8a8: and             x16, x17, x16, lsr #2
    //     0x72a8ac: tst             x16, HEAP, lsr #32
    //     0x72a8b0: b.eq            #0x72a8b8
    //     0x72a8b4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x72a8b8: StoreField: r2->field_33 = r1
    //     0x72a8b8: stur            w1, [x2, #0x33]
    // 0x72a8bc: mov             x1, x2
    // 0x72a8c0: r0 = notifyListeners()
    //     0x72a8c0: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72a8c4: r0 = false
    //     0x72a8c4: add             x0, NULL, #0x30  ; false
    // 0x72a8c8: r0 = ReturnAsyncNotFuture()
    //     0x72a8c8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72a8cc: sub             SP, fp, #0xa0
    // 0x72a8d0: ldur            x3, [fp, #-0x78]
    // 0x72a8d4: stur            x0, [fp, #-0x80]
    // 0x72a8d8: r1 = Null
    //     0x72a8d8: mov             x1, NULL
    // 0x72a8dc: r2 = 4
    //     0x72a8dc: mov             x2, #4
    // 0x72a8e0: r0 = AllocateArray()
    //     0x72a8e0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72a8e4: r16 = "İndirme sırasında bir hata oluştu: "
    //     0x72a8e4: add             x16, PP, #0x20, lsl #12  ; [pp+0x20330] "İndirme sırasında bir hata oluştu: "
    //     0x72a8e8: ldr             x16, [x16, #0x330]
    // 0x72a8ec: StoreField: r0->field_f = r16
    //     0x72a8ec: stur            w16, [x0, #0xf]
    // 0x72a8f0: ldur            x1, [fp, #-0x80]
    // 0x72a8f4: StoreField: r0->field_13 = r1
    //     0x72a8f4: stur            w1, [x0, #0x13]
    // 0x72a8f8: str             x0, [SP]
    // 0x72a8fc: r0 = _interpolate()
    //     0x72a8fc: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72a900: ldur            x1, [fp, #-0x78]
    // 0x72a904: StoreField: r1->field_37 = r0
    //     0x72a904: stur            w0, [x1, #0x37]
    //     0x72a908: ldurb           w16, [x1, #-1]
    //     0x72a90c: ldurb           w17, [x0, #-1]
    //     0x72a910: and             x16, x17, x16, lsr #2
    //     0x72a914: tst             x16, HEAP, lsr #32
    //     0x72a918: b.eq            #0x72a920
    //     0x72a91c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x72a920: r0 = notifyListeners()
    //     0x72a920: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72a924: r0 = false
    //     0x72a924: add             x0, NULL, #0x30  ; false
    // 0x72a928: r0 = ReturnAsyncNotFuture()
    //     0x72a928: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72a92c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72a92c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72a930: b               #0x72a71c
  }
  [closure] Null <anonymous closure>(dynamic, int, int) {
    // ** addr: 0x72abfc, size: 0xf0
    // 0x72abfc: EnterFrame
    //     0x72abfc: stp             fp, lr, [SP, #-0x10]!
    //     0x72ac00: mov             fp, SP
    // 0x72ac04: AllocStack(0x18)
    //     0x72ac04: sub             SP, SP, #0x18
    // 0x72ac08: SetupParameters([dynamic _ /* r0 */])
    //     0x72ac08: ldr             x0, [fp, #0x20]
    //     0x72ac0c: ldur            w3, [x0, #0x17]
    //     0x72ac10: add             x3, x3, HEAP, lsl #32
    //     0x72ac14: stur            x3, [fp, #-0x10]
    // 0x72ac18: CheckStackOverflow
    //     0x72ac18: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72ac1c: cmp             SP, x16
    //     0x72ac20: b.ls            #0x72ace4
    // 0x72ac24: LoadField: r0 = r3->field_f
    //     0x72ac24: ldur            w0, [x3, #0xf]
    // 0x72ac28: DecompressPointer r0
    //     0x72ac28: add             x0, x0, HEAP, lsl #32
    // 0x72ac2c: ldr             x4, [fp, #0x18]
    // 0x72ac30: stur            x0, [fp, #-8]
    // 0x72ac34: r1 = LoadInt32Instr(r4)
    //     0x72ac34: sbfx            x1, x4, #1, #0x1f
    //     0x72ac38: tbz             w4, #0, #0x72ac40
    //     0x72ac3c: ldur            x1, [x4, #7]
    // 0x72ac40: scvtf           d0, x1
    // 0x72ac44: ldr             x5, [fp, #0x10]
    // 0x72ac48: r1 = LoadInt32Instr(r5)
    //     0x72ac48: sbfx            x1, x5, #1, #0x1f
    //     0x72ac4c: tbz             w5, #0, #0x72ac54
    //     0x72ac50: ldur            x1, [x5, #7]
    // 0x72ac54: scvtf           d1, x1
    // 0x72ac58: fdiv            d2, d0, d1
    // 0x72ac5c: StoreField: r0->field_2b = d2
    //     0x72ac5c: stur            d2, [x0, #0x2b]
    // 0x72ac60: r1 = Null
    //     0x72ac60: mov             x1, NULL
    // 0x72ac64: r2 = 10
    //     0x72ac64: mov             x2, #0xa
    // 0x72ac68: r0 = AllocateArray()
    //     0x72ac68: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72ac6c: r16 = "Dosya "
    //     0x72ac6c: add             x16, PP, #0x20, lsl #12  ; [pp+0x20318] "Dosya "
    //     0x72ac70: ldr             x16, [x16, #0x318]
    // 0x72ac74: StoreField: r0->field_f = r16
    //     0x72ac74: stur            w16, [x0, #0xf]
    // 0x72ac78: ldr             x1, [fp, #0x18]
    // 0x72ac7c: StoreField: r0->field_13 = r1
    //     0x72ac7c: stur            w1, [x0, #0x13]
    // 0x72ac80: r16 = "/"
    //     0x72ac80: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x72ac84: ArrayStore: r0[0] = r16  ; List_4
    //     0x72ac84: stur            w16, [x0, #0x17]
    // 0x72ac88: ldr             x1, [fp, #0x10]
    // 0x72ac8c: StoreField: r0->field_1b = r1
    //     0x72ac8c: stur            w1, [x0, #0x1b]
    // 0x72ac90: r16 = " indiriliyor..."
    //     0x72ac90: add             x16, PP, #0x16, lsl #12  ; [pp+0x16108] " indiriliyor..."
    //     0x72ac94: ldr             x16, [x16, #0x108]
    // 0x72ac98: StoreField: r0->field_1f = r16
    //     0x72ac98: stur            w16, [x0, #0x1f]
    // 0x72ac9c: str             x0, [SP]
    // 0x72aca0: r0 = _interpolate()
    //     0x72aca0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72aca4: ldur            x1, [fp, #-8]
    // 0x72aca8: StoreField: r1->field_33 = r0
    //     0x72aca8: stur            w0, [x1, #0x33]
    //     0x72acac: ldurb           w16, [x1, #-1]
    //     0x72acb0: ldurb           w17, [x0, #-1]
    //     0x72acb4: and             x16, x17, x16, lsr #2
    //     0x72acb8: tst             x16, HEAP, lsr #32
    //     0x72acbc: b.eq            #0x72acc4
    //     0x72acc0: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x72acc4: ldur            x0, [fp, #-0x10]
    // 0x72acc8: LoadField: r1 = r0->field_f
    //     0x72acc8: ldur            w1, [x0, #0xf]
    // 0x72accc: DecompressPointer r1
    //     0x72accc: add             x1, x1, HEAP, lsl #32
    // 0x72acd0: r0 = notifyListeners()
    //     0x72acd0: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72acd4: r0 = Null
    //     0x72acd4: mov             x0, NULL
    // 0x72acd8: LeaveFrame
    //     0x72acd8: mov             SP, fp
    //     0x72acdc: ldp             fp, lr, [SP], #0x10
    // 0x72ace0: ret
    //     0x72ace0: ret             
    // 0x72ace4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72ace4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72ace8: b               #0x72ac24
  }
}

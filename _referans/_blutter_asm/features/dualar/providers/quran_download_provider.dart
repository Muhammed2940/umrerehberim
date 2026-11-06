// lib: , url: package:umrem_demo/features/dualar/providers/quran_download_provider.dart

// class id: 1049570, size: 0x8
class :: {
}

// class id: 3865, size: 0x3c, field offset: 0x24
class QuranDownloadProvider extends ChangeNotifier {

  _ areAllPagesDownloaded(/* No info */) async {
    // ** addr: 0x5e6f24, size: 0x50
    // 0x5e6f24: EnterFrame
    //     0x5e6f24: stp             fp, lr, [SP, #-0x10]!
    //     0x5e6f28: mov             fp, SP
    // 0x5e6f2c: AllocStack(0x10)
    //     0x5e6f2c: sub             SP, SP, #0x10
    // 0x5e6f30: SetupParameters(QuranDownloadProvider this /* r1 => r1, fp-0x10 */)
    //     0x5e6f30: stur            NULL, [fp, #-8]
    //     0x5e6f34: stur            x1, [fp, #-0x10]
    // 0x5e6f38: CheckStackOverflow
    //     0x5e6f38: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e6f3c: cmp             SP, x16
    //     0x5e6f40: b.ls            #0x5e6f6c
    // 0x5e6f44: InitAsync() -> Future<bool>
    //     0x5e6f44: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x5e6f48: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e6f4c: ldur            x0, [fp, #-0x10]
    // 0x5e6f50: LoadField: r1 = r0->field_23
    //     0x5e6f50: ldur            w1, [x0, #0x23]
    // 0x5e6f54: DecompressPointer r1
    //     0x5e6f54: add             x1, x1, HEAP, lsl #32
    // 0x5e6f58: r0 = areAllPagesDownloaded()
    //     0x5e6f58: bl              #0x5e6f94  ; [package:umrem_demo/core/services/quran_storage_service.dart] QuranStorageService::areAllPagesDownloaded
    // 0x5e6f5c: mov             x1, x0
    // 0x5e6f60: stur            x1, [fp, #-0x10]
    // 0x5e6f64: r0 = Await()
    //     0x5e6f64: bl              #0x3dd188  ; AwaitStub
    // 0x5e6f68: r0 = ReturnAsync()
    //     0x5e6f68: b               #0x427094  ; ReturnAsyncStub
    // 0x5e6f6c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e6f6c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e6f70: b               #0x5e6f44
  }
  _ QuranDownloadProvider(/* No info */) {
    // ** addr: 0x5eac50, size: 0xf0
    // 0x5eac50: EnterFrame
    //     0x5eac50: stp             fp, lr, [SP, #-0x10]!
    //     0x5eac54: mov             fp, SP
    // 0x5eac58: AllocStack(0x8)
    //     0x5eac58: sub             SP, SP, #8
    // 0x5eac5c: r0 = ""
    //     0x5eac5c: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5eac60: stur            x1, [fp, #-8]
    // 0x5eac64: CheckStackOverflow
    //     0x5eac64: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5eac68: cmp             SP, x16
    //     0x5eac6c: b.ls            #0x5ead38
    // 0x5eac70: StoreField: r1->field_2b = rZR
    //     0x5eac70: stur            xzr, [x1, #0x2b]
    // 0x5eac74: StoreField: r1->field_33 = r0
    //     0x5eac74: stur            w0, [x1, #0x33]
    // 0x5eac78: StoreField: r1->field_37 = r0
    //     0x5eac78: stur            w0, [x1, #0x37]
    // 0x5eac7c: r0 = InitLateStaticField(0x1014) // [package:umrem_demo/core/services/quran_storage_service.dart] QuranStorageService::_instance
    //     0x5eac7c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5eac80: ldr             x0, [x0, #0x2028]
    //     0x5eac84: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5eac88: cmp             w0, w16
    //     0x5eac8c: b.ne            #0x5eac9c
    //     0x5eac90: add             x2, PP, #0x10, lsl #12  ; [pp+0x10d50] Field <QuranStorageService._instance@966040762>: static late final (offset: 0x1014)
    //     0x5eac94: ldr             x2, [x2, #0xd50]
    //     0x5eac98: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5eac9c: ldur            x1, [fp, #-8]
    // 0x5eaca0: StoreField: r1->field_23 = r0
    //     0x5eaca0: stur            w0, [x1, #0x23]
    //     0x5eaca4: ldurb           w16, [x1, #-1]
    //     0x5eaca8: ldurb           w17, [x0, #-1]
    //     0x5eacac: and             x16, x17, x16, lsr #2
    //     0x5eacb0: tst             x16, HEAP, lsr #32
    //     0x5eacb4: b.eq            #0x5eacbc
    //     0x5eacb8: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5eacbc: r0 = CommonService()
    //     0x5eacbc: bl              #0x5eaabc  ; AllocateCommonServiceStub -> CommonService (size=0x8)
    // 0x5eacc0: ldur            x1, [fp, #-8]
    // 0x5eacc4: StoreField: r1->field_27 = r0
    //     0x5eacc4: stur            w0, [x1, #0x27]
    //     0x5eacc8: ldurb           w16, [x1, #-1]
    //     0x5eaccc: ldurb           w17, [x0, #-1]
    //     0x5eacd0: and             x16, x17, x16, lsr #2
    //     0x5eacd4: tst             x16, HEAP, lsr #32
    //     0x5eacd8: b.eq            #0x5eace0
    //     0x5eacdc: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5eace0: StoreField: r1->field_7 = rZR
    //     0x5eace0: stur            xzr, [x1, #7]
    // 0x5eace4: StoreField: r1->field_13 = rZR
    //     0x5eace4: stur            xzr, [x1, #0x13]
    // 0x5eace8: StoreField: r1->field_1b = rZR
    //     0x5eace8: stur            xzr, [x1, #0x1b]
    // 0x5eacec: r0 = InitLateStaticField(0x5e0) // [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::_emptyListeners
    //     0x5eacec: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5eacf0: ldr             x0, [x0, #0xbc0]
    //     0x5eacf4: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5eacf8: cmp             w0, w16
    //     0x5eacfc: b.ne            #0x5ead08
    //     0x5ead00: ldr             x2, [PP, #0x1c28]  ; [pp+0x1c28] Field <ChangeNotifier._emptyListeners@88329750>: static late final (offset: 0x5e0)
    //     0x5ead04: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5ead08: ldur            x1, [fp, #-8]
    // 0x5ead0c: StoreField: r1->field_f = r0
    //     0x5ead0c: stur            w0, [x1, #0xf]
    //     0x5ead10: ldurb           w16, [x1, #-1]
    //     0x5ead14: ldurb           w17, [x0, #-1]
    //     0x5ead18: and             x16, x17, x16, lsr #2
    //     0x5ead1c: tst             x16, HEAP, lsr #32
    //     0x5ead20: b.eq            #0x5ead28
    //     0x5ead24: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5ead28: r0 = Null
    //     0x5ead28: mov             x0, NULL
    // 0x5ead2c: LeaveFrame
    //     0x5ead2c: mov             SP, fp
    //     0x5ead30: ldp             fp, lr, [SP], #0x10
    // 0x5ead34: ret
    //     0x5ead34: ret             
    // 0x5ead38: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ead38: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ead3c: b               #0x5eac70
  }
  _ downloadSinglePage(/* No info */) async {
    // ** addr: 0x6fd5d8, size: 0x1a4
    // 0x6fd5d8: EnterFrame
    //     0x6fd5d8: stp             fp, lr, [SP, #-0x10]!
    //     0x6fd5dc: mov             fp, SP
    // 0x6fd5e0: AllocStack(0x88)
    //     0x6fd5e0: sub             SP, SP, #0x88
    // 0x6fd5e4: SetupParameters(QuranDownloadProvider this /* r1 => r1, fp-0x68 */, dynamic _ /* r2 => r2, fp-0x70 */)
    //     0x6fd5e4: stur            NULL, [fp, #-8]
    //     0x6fd5e8: stur            x1, [fp, #-0x68]
    //     0x6fd5ec: stur            x2, [fp, #-0x70]
    // 0x6fd5f0: CheckStackOverflow
    //     0x6fd5f0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fd5f4: cmp             SP, x16
    //     0x6fd5f8: b.ls            #0x6fd774
    // 0x6fd5fc: r1 = 1
    //     0x6fd5fc: mov             x1, #1
    // 0x6fd600: r0 = AllocateContext()
    //     0x6fd600: bl              #0x927010  ; AllocateContextStub
    // 0x6fd604: mov             x2, x0
    // 0x6fd608: ldur            x1, [fp, #-0x68]
    // 0x6fd60c: stur            x2, [fp, #-0x78]
    // 0x6fd610: StoreField: r2->field_f = r1
    //     0x6fd610: stur            w1, [x2, #0xf]
    // 0x6fd614: InitAsync() -> Future<String?>
    //     0x6fd614: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x6fd618: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6fd61c: ldur            x0, [fp, #-0x68]
    // 0x6fd620: LoadField: r1 = r0->field_27
    //     0x6fd620: ldur            w1, [x0, #0x27]
    // 0x6fd624: DecompressPointer r1
    //     0x6fd624: add             x1, x1, HEAP, lsl #32
    // 0x6fd628: r0 = hasInternetConnection()
    //     0x6fd628: bl              #0x5f529c  ; [package:umrem_demo/common/services/common_service.dart] CommonService::hasInternetConnection
    // 0x6fd62c: mov             x1, x0
    // 0x6fd630: stur            x1, [fp, #-0x80]
    // 0x6fd634: r0 = Await()
    //     0x6fd634: bl              #0x3dd188  ; AwaitStub
    // 0x6fd638: r16 = true
    //     0x6fd638: add             x16, NULL, #0x20  ; true
    // 0x6fd63c: cmp             w0, w16
    // 0x6fd640: b.eq            #0x6fd64c
    // 0x6fd644: r0 = Null
    //     0x6fd644: mov             x0, NULL
    // 0x6fd648: r0 = ReturnAsyncNotFuture()
    //     0x6fd648: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6fd64c: ldur            x0, [fp, #-0x68]
    // 0x6fd650: ldur            x3, [fp, #-0x70]
    // 0x6fd654: r1 = Null
    //     0x6fd654: mov             x1, NULL
    // 0x6fd658: r2 = 6
    //     0x6fd658: mov             x2, #6
    // 0x6fd65c: r0 = AllocateArray()
    //     0x6fd65c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6fd660: mov             x2, x0
    // 0x6fd664: r16 = "Sayfa "
    //     0x6fd664: add             x16, PP, #0x16, lsl #12  ; [pp+0x16098] "Sayfa "
    //     0x6fd668: ldr             x16, [x16, #0x98]
    // 0x6fd66c: StoreField: r2->field_f = r16
    //     0x6fd66c: stur            w16, [x2, #0xf]
    // 0x6fd670: ldur            x3, [fp, #-0x70]
    // 0x6fd674: r0 = BoxInt64Instr(r3)
    //     0x6fd674: sbfiz           x0, x3, #1, #0x1f
    //     0x6fd678: cmp             x3, x0, asr #1
    //     0x6fd67c: b.eq            #0x6fd688
    //     0x6fd680: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6fd684: stur            x3, [x0, #7]
    // 0x6fd688: StoreField: r2->field_13 = r0
    //     0x6fd688: stur            w0, [x2, #0x13]
    // 0x6fd68c: r16 = " indiriliyor..."
    //     0x6fd68c: add             x16, PP, #0x16, lsl #12  ; [pp+0x16108] " indiriliyor..."
    //     0x6fd690: ldr             x16, [x16, #0x108]
    // 0x6fd694: ArrayStore: r2[0] = r16  ; List_4
    //     0x6fd694: stur            w16, [x2, #0x17]
    // 0x6fd698: str             x2, [SP]
    // 0x6fd69c: r0 = _interpolate()
    //     0x6fd69c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6fd6a0: ldur            x2, [fp, #-0x68]
    // 0x6fd6a4: StoreField: r2->field_33 = r0
    //     0x6fd6a4: stur            w0, [x2, #0x33]
    //     0x6fd6a8: ldurb           w16, [x2, #-1]
    //     0x6fd6ac: ldurb           w17, [x0, #-1]
    //     0x6fd6b0: and             x16, x17, x16, lsr #2
    //     0x6fd6b4: tst             x16, HEAP, lsr #32
    //     0x6fd6b8: b.eq            #0x6fd6c0
    //     0x6fd6bc: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6fd6c0: mov             x1, x2
    // 0x6fd6c4: r0 = notifyListeners()
    //     0x6fd6c4: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6fd6c8: ldur            x0, [fp, #-0x68]
    // 0x6fd6cc: LoadField: r3 = r0->field_23
    //     0x6fd6cc: ldur            w3, [x0, #0x23]
    // 0x6fd6d0: DecompressPointer r3
    //     0x6fd6d0: add             x3, x3, HEAP, lsl #32
    // 0x6fd6d4: ldur            x2, [fp, #-0x78]
    // 0x6fd6d8: stur            x3, [fp, #-0x80]
    // 0x6fd6dc: r1 = Function '<anonymous closure>':.
    //     0x6fd6dc: add             x1, PP, #0x16, lsl #12  ; [pp+0x16110] AnonymousClosure: (0x71a8b0), in [package:umrem_demo/features/dualar/providers/quran_download_provider.dart] QuranDownloadProvider::downloadSinglePage (0x6fd5d8)
    //     0x6fd6e0: ldr             x1, [x1, #0x110]
    // 0x6fd6e4: r0 = AllocateClosure()
    //     0x6fd6e4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fd6e8: str             x0, [SP]
    // 0x6fd6ec: ldur            x1, [fp, #-0x80]
    // 0x6fd6f0: ldur            x2, [fp, #-0x70]
    // 0x6fd6f4: r4 = const [0, 0x3, 0x1, 0x2, onProgress, 0x2, null]
    //     0x6fd6f4: add             x4, PP, #0x16, lsl #12  ; [pp+0x16118] List(7) [0, 0x3, 0x1, 0x2, "onProgress", 0x2, Null]
    //     0x6fd6f8: ldr             x4, [x4, #0x118]
    // 0x6fd6fc: r0 = downloadPage()
    //     0x6fd6fc: bl              #0x6fd77c  ; [package:umrem_demo/core/services/quran_storage_service.dart] QuranStorageService::downloadPage
    // 0x6fd700: mov             x1, x0
    // 0x6fd704: stur            x1, [fp, #-0x80]
    // 0x6fd708: r0 = Await()
    //     0x6fd708: bl              #0x3dd188  ; AwaitStub
    // 0x6fd70c: r0 = ReturnAsync()
    //     0x6fd70c: b               #0x427094  ; ReturnAsyncStub
    // 0x6fd710: sub             SP, fp, #0x88
    // 0x6fd714: stur            x0, [fp, #-0x68]
    // 0x6fd718: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x6fd718: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fd71c: ldr             x0, [x0, #0xcb8]
    //     0x6fd720: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fd724: cmp             w0, w16
    //     0x6fd728: b.ne            #0x6fd734
    //     0x6fd72c: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x6fd730: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6fd734: r1 = Null
    //     0x6fd734: mov             x1, NULL
    // 0x6fd738: r2 = 4
    //     0x6fd738: mov             x2, #4
    // 0x6fd73c: r0 = AllocateArray()
    //     0x6fd73c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6fd740: r16 = "Sayfa indirme hatası: "
    //     0x6fd740: add             x16, PP, #0x16, lsl #12  ; [pp+0x16120] "Sayfa indirme hatası: "
    //     0x6fd744: ldr             x16, [x16, #0x120]
    // 0x6fd748: StoreField: r0->field_f = r16
    //     0x6fd748: stur            w16, [x0, #0xf]
    // 0x6fd74c: ldur            x1, [fp, #-0x68]
    // 0x6fd750: StoreField: r0->field_13 = r1
    //     0x6fd750: stur            w1, [x0, #0x13]
    // 0x6fd754: str             x0, [SP]
    // 0x6fd758: r0 = _interpolate()
    //     0x6fd758: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6fd75c: str             NULL, [SP]
    // 0x6fd760: mov             x1, x0
    // 0x6fd764: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x6fd764: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x6fd768: r0 = debugPrintThrottled()
    //     0x6fd768: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x6fd76c: r0 = Null
    //     0x6fd76c: mov             x0, NULL
    // 0x6fd770: r0 = ReturnAsyncNotFuture()
    //     0x6fd770: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6fd774: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fd774: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fd778: b               #0x6fd5fc
  }
  [closure] Null <anonymous closure>(dynamic, double) {
    // ** addr: 0x71a8b0, size: 0x54
    // 0x71a8b0: EnterFrame
    //     0x71a8b0: stp             fp, lr, [SP, #-0x10]!
    //     0x71a8b4: mov             fp, SP
    // 0x71a8b8: ldr             x0, [fp, #0x18]
    // 0x71a8bc: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x71a8bc: ldur            w1, [x0, #0x17]
    // 0x71a8c0: DecompressPointer r1
    //     0x71a8c0: add             x1, x1, HEAP, lsl #32
    // 0x71a8c4: CheckStackOverflow
    //     0x71a8c4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71a8c8: cmp             SP, x16
    //     0x71a8cc: b.ls            #0x71a8fc
    // 0x71a8d0: LoadField: r0 = r1->field_f
    //     0x71a8d0: ldur            w0, [x1, #0xf]
    // 0x71a8d4: DecompressPointer r0
    //     0x71a8d4: add             x0, x0, HEAP, lsl #32
    // 0x71a8d8: ldr             x1, [fp, #0x10]
    // 0x71a8dc: LoadField: d0 = r1->field_7
    //     0x71a8dc: ldur            d0, [x1, #7]
    // 0x71a8e0: StoreField: r0->field_2b = d0
    //     0x71a8e0: stur            d0, [x0, #0x2b]
    // 0x71a8e4: mov             x1, x0
    // 0x71a8e8: r0 = notifyListeners()
    //     0x71a8e8: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x71a8ec: r0 = Null
    //     0x71a8ec: mov             x0, NULL
    // 0x71a8f0: LeaveFrame
    //     0x71a8f0: mov             SP, fp
    //     0x71a8f4: ldp             fp, lr, [SP], #0x10
    // 0x71a8f8: ret
    //     0x71a8f8: ret             
    // 0x71a8fc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71a8fc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71a900: b               #0x71a8d0
  }
  _ downloadAllPages(/* No info */) async {
    // ** addr: 0x72b1ec, size: 0x238
    // 0x72b1ec: EnterFrame
    //     0x72b1ec: stp             fp, lr, [SP, #-0x10]!
    //     0x72b1f0: mov             fp, SP
    // 0x72b1f4: AllocStack(0xa0)
    //     0x72b1f4: sub             SP, SP, #0xa0
    // 0x72b1f8: SetupParameters(QuranDownloadProvider this /* r1 => r1, fp-0x78 */)
    //     0x72b1f8: stur            NULL, [fp, #-8]
    //     0x72b1fc: stur            x1, [fp, #-0x78]
    // 0x72b200: CheckStackOverflow
    //     0x72b200: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72b204: cmp             SP, x16
    //     0x72b208: b.ls            #0x72b41c
    // 0x72b20c: r1 = 1
    //     0x72b20c: mov             x1, #1
    // 0x72b210: r0 = AllocateContext()
    //     0x72b210: bl              #0x927010  ; AllocateContextStub
    // 0x72b214: mov             x2, x0
    // 0x72b218: ldur            x1, [fp, #-0x78]
    // 0x72b21c: stur            x2, [fp, #-0x80]
    // 0x72b220: StoreField: r2->field_f = r1
    //     0x72b220: stur            w1, [x2, #0xf]
    // 0x72b224: InitAsync() -> Future<bool>
    //     0x72b224: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x72b228: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x72b22c: ldur            x0, [fp, #-0x78]
    // 0x72b230: r1 = ""
    //     0x72b230: ldr             x1, [PP, #0x128]  ; [pp+0x128] ""
    // 0x72b234: StoreField: r0->field_37 = r1
    //     0x72b234: stur            w1, [x0, #0x37]
    // 0x72b238: StoreField: r0->field_2b = rZR
    //     0x72b238: stur            xzr, [x0, #0x2b]
    // 0x72b23c: mov             x1, x0
    // 0x72b240: r0 = notifyListeners()
    //     0x72b240: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72b244: ldur            x0, [fp, #-0x78]
    // 0x72b248: LoadField: r1 = r0->field_27
    //     0x72b248: ldur            w1, [x0, #0x27]
    // 0x72b24c: DecompressPointer r1
    //     0x72b24c: add             x1, x1, HEAP, lsl #32
    // 0x72b250: r0 = hasInternetConnection()
    //     0x72b250: bl              #0x5f529c  ; [package:umrem_demo/common/services/common_service.dart] CommonService::hasInternetConnection
    // 0x72b254: mov             x1, x0
    // 0x72b258: stur            x1, [fp, #-0x88]
    // 0x72b25c: r0 = Await()
    //     0x72b25c: bl              #0x3dd188  ; AwaitStub
    // 0x72b260: r16 = true
    //     0x72b260: add             x16, NULL, #0x20  ; true
    // 0x72b264: cmp             w0, w16
    // 0x72b268: b.eq            #0x72b28c
    // 0x72b26c: ldur            x0, [fp, #-0x78]
    // 0x72b270: r1 = "İnternet bağlantısı yok. Lütfen bağlantınızı kontrol edin."
    //     0x72b270: add             x1, PP, #0x20, lsl #12  ; [pp+0x202f8] "İnternet bağlantısı yok. Lütfen bağlantınızı kontrol edin."
    //     0x72b274: ldr             x1, [x1, #0x2f8]
    // 0x72b278: StoreField: r0->field_37 = r1
    //     0x72b278: stur            w1, [x0, #0x37]
    // 0x72b27c: mov             x1, x0
    // 0x72b280: r0 = notifyListeners()
    //     0x72b280: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72b284: r0 = false
    //     0x72b284: add             x0, NULL, #0x30  ; false
    // 0x72b288: r0 = ReturnAsyncNotFuture()
    //     0x72b288: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72b28c: ldur            x0, [fp, #-0x78]
    // 0x72b290: r1 = "Kuran sayfaları indiriliyor..."
    //     0x72b290: add             x1, PP, #0x20, lsl #12  ; [pp+0x20370] "Kuran sayfaları indiriliyor..."
    //     0x72b294: ldr             x1, [x1, #0x370]
    // 0x72b298: StoreField: r0->field_33 = r1
    //     0x72b298: stur            w1, [x0, #0x33]
    // 0x72b29c: mov             x1, x0
    // 0x72b2a0: r0 = notifyListeners()
    //     0x72b2a0: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72b2a4: ldur            x0, [fp, #-0x78]
    // 0x72b2a8: LoadField: r3 = r0->field_23
    //     0x72b2a8: ldur            w3, [x0, #0x23]
    // 0x72b2ac: DecompressPointer r3
    //     0x72b2ac: add             x3, x3, HEAP, lsl #32
    // 0x72b2b0: ldur            x2, [fp, #-0x80]
    // 0x72b2b4: stur            x3, [fp, #-0x88]
    // 0x72b2b8: r1 = Function '<anonymous closure>':.
    //     0x72b2b8: add             x1, PP, #0x20, lsl #12  ; [pp+0x20378] AnonymousClosure: (0x72b71c), in [package:umrem_demo/features/dualar/providers/quran_download_provider.dart] QuranDownloadProvider::downloadAllPages (0x72b1ec)
    //     0x72b2bc: ldr             x1, [x1, #0x378]
    // 0x72b2c0: r0 = AllocateClosure()
    //     0x72b2c0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72b2c4: ldur            x1, [fp, #-0x88]
    // 0x72b2c8: mov             x2, x0
    // 0x72b2cc: stur            x0, [fp, #-0x90]
    // 0x72b2d0: r0 = downloadAllPages()
    //     0x72b2d0: bl              #0x72b424  ; [package:umrem_demo/core/services/quran_storage_service.dart] QuranStorageService::downloadAllPages
    // 0x72b2d4: mov             x1, x0
    // 0x72b2d8: stur            x1, [fp, #-0x98]
    // 0x72b2dc: r0 = Await()
    //     0x72b2dc: bl              #0x3dd188  ; AwaitStub
    // 0x72b2e0: stur            x0, [fp, #-0x88]
    // 0x72b2e4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x72b2e4: ldur            w1, [x0, #0x17]
    // 0x72b2e8: DecompressPointer r1
    //     0x72b2e8: add             x1, x1, HEAP, lsl #32
    // 0x72b2ec: r16 = true
    //     0x72b2ec: add             x16, NULL, #0x20  ; true
    // 0x72b2f0: cmp             w1, w16
    // 0x72b2f4: b.ne            #0x72b320
    // 0x72b2f8: ldur            x0, [fp, #-0x78]
    // 0x72b2fc: r1 = "Tüm sayfalar başarıyla indirildi!"
    //     0x72b2fc: add             x1, PP, #0x20, lsl #12  ; [pp+0x20380] "Tüm sayfalar başarıyla indirildi!"
    //     0x72b300: ldr             x1, [x1, #0x380]
    // 0x72b304: d0 = 1.000000
    //     0x72b304: fmov            d0, #1.00000000
    // 0x72b308: StoreField: r0->field_33 = r1
    //     0x72b308: stur            w1, [x0, #0x33]
    // 0x72b30c: StoreField: r0->field_2b = d0
    //     0x72b30c: stur            d0, [x0, #0x2b]
    // 0x72b310: mov             x1, x0
    // 0x72b314: r0 = notifyListeners()
    //     0x72b314: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72b318: r0 = true
    //     0x72b318: add             x0, NULL, #0x20  ; true
    // 0x72b31c: r0 = ReturnAsyncNotFuture()
    //     0x72b31c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72b320: LoadField: r1 = r0->field_f
    //     0x72b320: ldur            w1, [x0, #0xf]
    // 0x72b324: DecompressPointer r1
    //     0x72b324: add             x1, x1, HEAP, lsl #32
    // 0x72b328: cmp             w1, NULL
    // 0x72b32c: b.ne            #0x72b374
    // 0x72b330: r1 = Null
    //     0x72b330: mov             x1, NULL
    // 0x72b334: r2 = 6
    //     0x72b334: mov             x2, #6
    // 0x72b338: r0 = AllocateArray()
    //     0x72b338: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72b33c: r16 = "Sayfa "
    //     0x72b33c: add             x16, PP, #0x16, lsl #12  ; [pp+0x16098] "Sayfa "
    //     0x72b340: ldr             x16, [x16, #0x98]
    // 0x72b344: StoreField: r0->field_f = r16
    //     0x72b344: stur            w16, [x0, #0xf]
    // 0x72b348: ldur            x1, [fp, #-0x88]
    // 0x72b34c: LoadField: r2 = r1->field_13
    //     0x72b34c: ldur            w2, [x1, #0x13]
    // 0x72b350: DecompressPointer r2
    //     0x72b350: add             x2, x2, HEAP, lsl #32
    // 0x72b354: StoreField: r0->field_13 = r2
    //     0x72b354: stur            w2, [x0, #0x13]
    // 0x72b358: r16 = " indirilemedi. Lütfen tekrar deneyin."
    //     0x72b358: add             x16, PP, #0x20, lsl #12  ; [pp+0x20320] " indirilemedi. Lütfen tekrar deneyin."
    //     0x72b35c: ldr             x16, [x16, #0x320]
    // 0x72b360: ArrayStore: r0[0] = r16  ; List_4
    //     0x72b360: stur            w16, [x0, #0x17]
    // 0x72b364: str             x0, [SP]
    // 0x72b368: r0 = _interpolate()
    //     0x72b368: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72b36c: mov             x3, x0
    // 0x72b370: b               #0x72b378
    // 0x72b374: mov             x3, x1
    // 0x72b378: ldur            x2, [fp, #-0x78]
    // 0x72b37c: r1 = "İndirme başarısız!"
    //     0x72b37c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20328] "İndirme başarısız!"
    //     0x72b380: ldr             x1, [x1, #0x328]
    // 0x72b384: mov             x0, x3
    // 0x72b388: stur            x3, [fp, #-0x88]
    // 0x72b38c: StoreField: r2->field_37 = r0
    //     0x72b38c: stur            w0, [x2, #0x37]
    //     0x72b390: ldurb           w16, [x2, #-1]
    //     0x72b394: ldurb           w17, [x0, #-1]
    //     0x72b398: and             x16, x17, x16, lsr #2
    //     0x72b39c: tst             x16, HEAP, lsr #32
    //     0x72b3a0: b.eq            #0x72b3a8
    //     0x72b3a4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x72b3a8: StoreField: r2->field_33 = r1
    //     0x72b3a8: stur            w1, [x2, #0x33]
    // 0x72b3ac: mov             x1, x2
    // 0x72b3b0: r0 = notifyListeners()
    //     0x72b3b0: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72b3b4: r0 = false
    //     0x72b3b4: add             x0, NULL, #0x30  ; false
    // 0x72b3b8: r0 = ReturnAsyncNotFuture()
    //     0x72b3b8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72b3bc: sub             SP, fp, #0xa0
    // 0x72b3c0: ldur            x3, [fp, #-0x78]
    // 0x72b3c4: stur            x0, [fp, #-0x80]
    // 0x72b3c8: r1 = Null
    //     0x72b3c8: mov             x1, NULL
    // 0x72b3cc: r2 = 4
    //     0x72b3cc: mov             x2, #4
    // 0x72b3d0: r0 = AllocateArray()
    //     0x72b3d0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72b3d4: r16 = "İndirme sırasında bir hata oluştu: "
    //     0x72b3d4: add             x16, PP, #0x20, lsl #12  ; [pp+0x20330] "İndirme sırasında bir hata oluştu: "
    //     0x72b3d8: ldr             x16, [x16, #0x330]
    // 0x72b3dc: StoreField: r0->field_f = r16
    //     0x72b3dc: stur            w16, [x0, #0xf]
    // 0x72b3e0: ldur            x1, [fp, #-0x80]
    // 0x72b3e4: StoreField: r0->field_13 = r1
    //     0x72b3e4: stur            w1, [x0, #0x13]
    // 0x72b3e8: str             x0, [SP]
    // 0x72b3ec: r0 = _interpolate()
    //     0x72b3ec: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72b3f0: ldur            x1, [fp, #-0x78]
    // 0x72b3f4: StoreField: r1->field_37 = r0
    //     0x72b3f4: stur            w0, [x1, #0x37]
    //     0x72b3f8: ldurb           w16, [x1, #-1]
    //     0x72b3fc: ldurb           w17, [x0, #-1]
    //     0x72b400: and             x16, x17, x16, lsr #2
    //     0x72b404: tst             x16, HEAP, lsr #32
    //     0x72b408: b.eq            #0x72b410
    //     0x72b40c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x72b410: r0 = notifyListeners()
    //     0x72b410: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72b414: r0 = false
    //     0x72b414: add             x0, NULL, #0x30  ; false
    // 0x72b418: r0 = ReturnAsyncNotFuture()
    //     0x72b418: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72b41c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72b41c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72b420: b               #0x72b20c
  }
  [closure] Null <anonymous closure>(dynamic, int, int) {
    // ** addr: 0x72b71c, size: 0xf0
    // 0x72b71c: EnterFrame
    //     0x72b71c: stp             fp, lr, [SP, #-0x10]!
    //     0x72b720: mov             fp, SP
    // 0x72b724: AllocStack(0x18)
    //     0x72b724: sub             SP, SP, #0x18
    // 0x72b728: SetupParameters([dynamic _ /* r0 */])
    //     0x72b728: ldr             x0, [fp, #0x20]
    //     0x72b72c: ldur            w3, [x0, #0x17]
    //     0x72b730: add             x3, x3, HEAP, lsl #32
    //     0x72b734: stur            x3, [fp, #-0x10]
    // 0x72b738: CheckStackOverflow
    //     0x72b738: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72b73c: cmp             SP, x16
    //     0x72b740: b.ls            #0x72b804
    // 0x72b744: LoadField: r0 = r3->field_f
    //     0x72b744: ldur            w0, [x3, #0xf]
    // 0x72b748: DecompressPointer r0
    //     0x72b748: add             x0, x0, HEAP, lsl #32
    // 0x72b74c: ldr             x4, [fp, #0x18]
    // 0x72b750: stur            x0, [fp, #-8]
    // 0x72b754: r1 = LoadInt32Instr(r4)
    //     0x72b754: sbfx            x1, x4, #1, #0x1f
    //     0x72b758: tbz             w4, #0, #0x72b760
    //     0x72b75c: ldur            x1, [x4, #7]
    // 0x72b760: scvtf           d0, x1
    // 0x72b764: ldr             x5, [fp, #0x10]
    // 0x72b768: r1 = LoadInt32Instr(r5)
    //     0x72b768: sbfx            x1, x5, #1, #0x1f
    //     0x72b76c: tbz             w5, #0, #0x72b774
    //     0x72b770: ldur            x1, [x5, #7]
    // 0x72b774: scvtf           d1, x1
    // 0x72b778: fdiv            d2, d0, d1
    // 0x72b77c: StoreField: r0->field_2b = d2
    //     0x72b77c: stur            d2, [x0, #0x2b]
    // 0x72b780: r1 = Null
    //     0x72b780: mov             x1, NULL
    // 0x72b784: r2 = 10
    //     0x72b784: mov             x2, #0xa
    // 0x72b788: r0 = AllocateArray()
    //     0x72b788: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72b78c: r16 = "Sayfa "
    //     0x72b78c: add             x16, PP, #0x16, lsl #12  ; [pp+0x16098] "Sayfa "
    //     0x72b790: ldr             x16, [x16, #0x98]
    // 0x72b794: StoreField: r0->field_f = r16
    //     0x72b794: stur            w16, [x0, #0xf]
    // 0x72b798: ldr             x1, [fp, #0x18]
    // 0x72b79c: StoreField: r0->field_13 = r1
    //     0x72b79c: stur            w1, [x0, #0x13]
    // 0x72b7a0: r16 = "/"
    //     0x72b7a0: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x72b7a4: ArrayStore: r0[0] = r16  ; List_4
    //     0x72b7a4: stur            w16, [x0, #0x17]
    // 0x72b7a8: ldr             x1, [fp, #0x10]
    // 0x72b7ac: StoreField: r0->field_1b = r1
    //     0x72b7ac: stur            w1, [x0, #0x1b]
    // 0x72b7b0: r16 = " indiriliyor..."
    //     0x72b7b0: add             x16, PP, #0x16, lsl #12  ; [pp+0x16108] " indiriliyor..."
    //     0x72b7b4: ldr             x16, [x16, #0x108]
    // 0x72b7b8: StoreField: r0->field_1f = r16
    //     0x72b7b8: stur            w16, [x0, #0x1f]
    // 0x72b7bc: str             x0, [SP]
    // 0x72b7c0: r0 = _interpolate()
    //     0x72b7c0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72b7c4: ldur            x1, [fp, #-8]
    // 0x72b7c8: StoreField: r1->field_33 = r0
    //     0x72b7c8: stur            w0, [x1, #0x33]
    //     0x72b7cc: ldurb           w16, [x1, #-1]
    //     0x72b7d0: ldurb           w17, [x0, #-1]
    //     0x72b7d4: and             x16, x17, x16, lsr #2
    //     0x72b7d8: tst             x16, HEAP, lsr #32
    //     0x72b7dc: b.eq            #0x72b7e4
    //     0x72b7e0: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x72b7e4: ldur            x0, [fp, #-0x10]
    // 0x72b7e8: LoadField: r1 = r0->field_f
    //     0x72b7e8: ldur            w1, [x0, #0xf]
    // 0x72b7ec: DecompressPointer r1
    //     0x72b7ec: add             x1, x1, HEAP, lsl #32
    // 0x72b7f0: r0 = notifyListeners()
    //     0x72b7f0: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72b7f4: r0 = Null
    //     0x72b7f4: mov             x0, NULL
    // 0x72b7f8: LeaveFrame
    //     0x72b7f8: mov             SP, fp
    //     0x72b7fc: ldp             fp, lr, [SP], #0x10
    // 0x72b800: ret
    //     0x72b800: ret             
    // 0x72b804: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72b804: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72b808: b               #0x72b744
  }
}

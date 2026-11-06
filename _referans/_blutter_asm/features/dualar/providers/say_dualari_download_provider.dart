// lib: , url: package:umrem_demo/features/dualar/providers/say_dualari_download_provider.dart

// class id: 1049572, size: 0x8
class :: {
}

// class id: 3863, size: 0x3c, field offset: 0x24
class SayDualariDownloadProvider extends ChangeNotifier {

  _ areAllFilesDownloaded(/* No info */) async {
    // ** addr: 0x5e6e54, size: 0x50
    // 0x5e6e54: EnterFrame
    //     0x5e6e54: stp             fp, lr, [SP, #-0x10]!
    //     0x5e6e58: mov             fp, SP
    // 0x5e6e5c: AllocStack(0x10)
    //     0x5e6e5c: sub             SP, SP, #0x10
    // 0x5e6e60: SetupParameters(SayDualariDownloadProvider this /* r1 => r1, fp-0x10 */)
    //     0x5e6e60: stur            NULL, [fp, #-8]
    //     0x5e6e64: stur            x1, [fp, #-0x10]
    // 0x5e6e68: CheckStackOverflow
    //     0x5e6e68: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e6e6c: cmp             SP, x16
    //     0x5e6e70: b.ls            #0x5e6e9c
    // 0x5e6e74: InitAsync() -> Future<bool>
    //     0x5e6e74: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x5e6e78: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e6e7c: ldur            x0, [fp, #-0x10]
    // 0x5e6e80: LoadField: r1 = r0->field_23
    //     0x5e6e80: ldur            w1, [x0, #0x23]
    // 0x5e6e84: DecompressPointer r1
    //     0x5e6e84: add             x1, x1, HEAP, lsl #32
    // 0x5e6e88: r0 = areAllFilesDownloaded()
    //     0x5e6e88: bl              #0x5e6ec4  ; [package:umrem_demo/core/services/say_dualari_storage_service.dart] SayDualariStorageService::areAllFilesDownloaded
    // 0x5e6e8c: mov             x1, x0
    // 0x5e6e90: stur            x1, [fp, #-0x10]
    // 0x5e6e94: r0 = Await()
    //     0x5e6e94: bl              #0x3dd188  ; AwaitStub
    // 0x5e6e98: r0 = ReturnAsync()
    //     0x5e6e98: b               #0x427094  ; ReturnAsyncStub
    // 0x5e6e9c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e6e9c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e6ea0: b               #0x5e6e74
  }
  _ SayDualariDownloadProvider(/* No info */) {
    // ** addr: 0x5eab14, size: 0xf0
    // 0x5eab14: EnterFrame
    //     0x5eab14: stp             fp, lr, [SP, #-0x10]!
    //     0x5eab18: mov             fp, SP
    // 0x5eab1c: AllocStack(0x8)
    //     0x5eab1c: sub             SP, SP, #8
    // 0x5eab20: r0 = ""
    //     0x5eab20: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5eab24: stur            x1, [fp, #-8]
    // 0x5eab28: CheckStackOverflow
    //     0x5eab28: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5eab2c: cmp             SP, x16
    //     0x5eab30: b.ls            #0x5eabfc
    // 0x5eab34: StoreField: r1->field_2b = rZR
    //     0x5eab34: stur            xzr, [x1, #0x2b]
    // 0x5eab38: StoreField: r1->field_33 = r0
    //     0x5eab38: stur            w0, [x1, #0x33]
    // 0x5eab3c: StoreField: r1->field_37 = r0
    //     0x5eab3c: stur            w0, [x1, #0x37]
    // 0x5eab40: r0 = InitLateStaticField(0x1018) // [package:umrem_demo/core/services/say_dualari_storage_service.dart] SayDualariStorageService::_instance
    //     0x5eab40: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5eab44: ldr             x0, [x0, #0x2030]
    //     0x5eab48: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5eab4c: cmp             w0, w16
    //     0x5eab50: b.ne            #0x5eab60
    //     0x5eab54: add             x2, PP, #0x10, lsl #12  ; [pp+0x10d48] Field <SayDualariStorageService._instance@967415537>: static late final (offset: 0x1018)
    //     0x5eab58: ldr             x2, [x2, #0xd48]
    //     0x5eab5c: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5eab60: ldur            x1, [fp, #-8]
    // 0x5eab64: StoreField: r1->field_23 = r0
    //     0x5eab64: stur            w0, [x1, #0x23]
    //     0x5eab68: ldurb           w16, [x1, #-1]
    //     0x5eab6c: ldurb           w17, [x0, #-1]
    //     0x5eab70: and             x16, x17, x16, lsr #2
    //     0x5eab74: tst             x16, HEAP, lsr #32
    //     0x5eab78: b.eq            #0x5eab80
    //     0x5eab7c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5eab80: r0 = CommonService()
    //     0x5eab80: bl              #0x5eaabc  ; AllocateCommonServiceStub -> CommonService (size=0x8)
    // 0x5eab84: ldur            x1, [fp, #-8]
    // 0x5eab88: StoreField: r1->field_27 = r0
    //     0x5eab88: stur            w0, [x1, #0x27]
    //     0x5eab8c: ldurb           w16, [x1, #-1]
    //     0x5eab90: ldurb           w17, [x0, #-1]
    //     0x5eab94: and             x16, x17, x16, lsr #2
    //     0x5eab98: tst             x16, HEAP, lsr #32
    //     0x5eab9c: b.eq            #0x5eaba4
    //     0x5eaba0: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5eaba4: StoreField: r1->field_7 = rZR
    //     0x5eaba4: stur            xzr, [x1, #7]
    // 0x5eaba8: StoreField: r1->field_13 = rZR
    //     0x5eaba8: stur            xzr, [x1, #0x13]
    // 0x5eabac: StoreField: r1->field_1b = rZR
    //     0x5eabac: stur            xzr, [x1, #0x1b]
    // 0x5eabb0: r0 = InitLateStaticField(0x5e0) // [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::_emptyListeners
    //     0x5eabb0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5eabb4: ldr             x0, [x0, #0xbc0]
    //     0x5eabb8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5eabbc: cmp             w0, w16
    //     0x5eabc0: b.ne            #0x5eabcc
    //     0x5eabc4: ldr             x2, [PP, #0x1c28]  ; [pp+0x1c28] Field <ChangeNotifier._emptyListeners@88329750>: static late final (offset: 0x5e0)
    //     0x5eabc8: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5eabcc: ldur            x1, [fp, #-8]
    // 0x5eabd0: StoreField: r1->field_f = r0
    //     0x5eabd0: stur            w0, [x1, #0xf]
    //     0x5eabd4: ldurb           w16, [x1, #-1]
    //     0x5eabd8: ldurb           w17, [x0, #-1]
    //     0x5eabdc: and             x16, x17, x16, lsr #2
    //     0x5eabe0: tst             x16, HEAP, lsr #32
    //     0x5eabe4: b.eq            #0x5eabec
    //     0x5eabe8: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5eabec: r0 = Null
    //     0x5eabec: mov             x0, NULL
    // 0x5eabf0: LeaveFrame
    //     0x5eabf0: mov             SP, fp
    //     0x5eabf4: ldp             fp, lr, [SP], #0x10
    // 0x5eabf8: ret
    //     0x5eabf8: ret             
    // 0x5eabfc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5eabfc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5eac00: b               #0x5eab34
  }
  _ downloadSingleFile(/* No info */) async {
    // ** addr: 0x725180, size: 0x140
    // 0x725180: EnterFrame
    //     0x725180: stp             fp, lr, [SP, #-0x10]!
    //     0x725184: mov             fp, SP
    // 0x725188: AllocStack(0x88)
    //     0x725188: sub             SP, SP, #0x88
    // 0x72518c: SetupParameters(SayDualariDownloadProvider this /* r1 => r1, fp-0x68 */, dynamic _ /* r2 => r2, fp-0x70 */)
    //     0x72518c: stur            NULL, [fp, #-8]
    //     0x725190: stur            x1, [fp, #-0x68]
    //     0x725194: stur            x2, [fp, #-0x70]
    // 0x725198: CheckStackOverflow
    //     0x725198: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72519c: cmp             SP, x16
    //     0x7251a0: b.ls            #0x7252b8
    // 0x7251a4: r1 = 1
    //     0x7251a4: mov             x1, #1
    // 0x7251a8: r0 = AllocateContext()
    //     0x7251a8: bl              #0x927010  ; AllocateContextStub
    // 0x7251ac: mov             x2, x0
    // 0x7251b0: ldur            x1, [fp, #-0x68]
    // 0x7251b4: stur            x2, [fp, #-0x78]
    // 0x7251b8: StoreField: r2->field_f = r1
    //     0x7251b8: stur            w1, [x2, #0xf]
    // 0x7251bc: InitAsync() -> Future<String?>
    //     0x7251bc: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x7251c0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7251c4: ldur            x0, [fp, #-0x68]
    // 0x7251c8: LoadField: r1 = r0->field_27
    //     0x7251c8: ldur            w1, [x0, #0x27]
    // 0x7251cc: DecompressPointer r1
    //     0x7251cc: add             x1, x1, HEAP, lsl #32
    // 0x7251d0: r0 = hasInternetConnection()
    //     0x7251d0: bl              #0x5f529c  ; [package:umrem_demo/common/services/common_service.dart] CommonService::hasInternetConnection
    // 0x7251d4: mov             x1, x0
    // 0x7251d8: stur            x1, [fp, #-0x80]
    // 0x7251dc: r0 = Await()
    //     0x7251dc: bl              #0x3dd188  ; AwaitStub
    // 0x7251e0: r16 = true
    //     0x7251e0: add             x16, NULL, #0x20  ; true
    // 0x7251e4: cmp             w0, w16
    // 0x7251e8: b.eq            #0x7251f4
    // 0x7251ec: r0 = Null
    //     0x7251ec: mov             x0, NULL
    // 0x7251f0: r0 = ReturnAsyncNotFuture()
    //     0x7251f0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7251f4: ldur            x0, [fp, #-0x68]
    // 0x7251f8: r1 = "Dosya indiriliyor..."
    //     0x7251f8: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fff8] "Dosya indiriliyor..."
    //     0x7251fc: ldr             x1, [x1, #0xff8]
    // 0x725200: StoreField: r0->field_33 = r1
    //     0x725200: stur            w1, [x0, #0x33]
    // 0x725204: mov             x1, x0
    // 0x725208: r0 = notifyListeners()
    //     0x725208: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72520c: ldur            x0, [fp, #-0x68]
    // 0x725210: LoadField: r3 = r0->field_23
    //     0x725210: ldur            w3, [x0, #0x23]
    // 0x725214: DecompressPointer r3
    //     0x725214: add             x3, x3, HEAP, lsl #32
    // 0x725218: ldur            x2, [fp, #-0x78]
    // 0x72521c: stur            x3, [fp, #-0x80]
    // 0x725220: r1 = Function '<anonymous closure>':.
    //     0x725220: add             x1, PP, #0x20, lsl #12  ; [pp+0x20000] AnonymousClosure: (0x71a8b0), in [package:umrem_demo/features/dualar/providers/quran_download_provider.dart] QuranDownloadProvider::downloadSinglePage (0x6fd5d8)
    //     0x725224: ldr             x1, [x1]
    // 0x725228: r0 = AllocateClosure()
    //     0x725228: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72522c: str             x0, [SP]
    // 0x725230: ldur            x1, [fp, #-0x80]
    // 0x725234: ldur            x2, [fp, #-0x70]
    // 0x725238: r4 = const [0, 0x3, 0x1, 0x2, onProgress, 0x2, null]
    //     0x725238: add             x4, PP, #0x16, lsl #12  ; [pp+0x16118] List(7) [0, 0x3, 0x1, 0x2, "onProgress", 0x2, Null]
    //     0x72523c: ldr             x4, [x4, #0x118]
    // 0x725240: r0 = downloadFile()
    //     0x725240: bl              #0x7252c0  ; [package:umrem_demo/core/services/say_dualari_storage_service.dart] SayDualariStorageService::downloadFile
    // 0x725244: mov             x1, x0
    // 0x725248: stur            x1, [fp, #-0x80]
    // 0x72524c: r0 = Await()
    //     0x72524c: bl              #0x3dd188  ; AwaitStub
    // 0x725250: r0 = ReturnAsync()
    //     0x725250: b               #0x427094  ; ReturnAsyncStub
    // 0x725254: sub             SP, fp, #0x88
    // 0x725258: stur            x0, [fp, #-0x68]
    // 0x72525c: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x72525c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x725260: ldr             x0, [x0, #0xcb8]
    //     0x725264: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x725268: cmp             w0, w16
    //     0x72526c: b.ne            #0x725278
    //     0x725270: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x725274: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x725278: r1 = Null
    //     0x725278: mov             x1, NULL
    // 0x72527c: r2 = 4
    //     0x72527c: mov             x2, #4
    // 0x725280: r0 = AllocateArray()
    //     0x725280: bl              #0x9280a0  ; AllocateArrayStub
    // 0x725284: r16 = "Dosya indirme hatası: "
    //     0x725284: add             x16, PP, #0x20, lsl #12  ; [pp+0x20008] "Dosya indirme hatası: "
    //     0x725288: ldr             x16, [x16, #8]
    // 0x72528c: StoreField: r0->field_f = r16
    //     0x72528c: stur            w16, [x0, #0xf]
    // 0x725290: ldur            x1, [fp, #-0x68]
    // 0x725294: StoreField: r0->field_13 = r1
    //     0x725294: stur            w1, [x0, #0x13]
    // 0x725298: str             x0, [SP]
    // 0x72529c: r0 = _interpolate()
    //     0x72529c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7252a0: str             NULL, [SP]
    // 0x7252a4: mov             x1, x0
    // 0x7252a8: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x7252a8: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x7252ac: r0 = debugPrintThrottled()
    //     0x7252ac: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x7252b0: r0 = Null
    //     0x7252b0: mov             x0, NULL
    // 0x7252b4: r0 = ReturnAsyncNotFuture()
    //     0x7252b4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7252b8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7252b8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7252bc: b               #0x7251a4
  }
  _ downloadAllFiles(/* No info */) async {
    // ** addr: 0x72acec, size: 0x238
    // 0x72acec: EnterFrame
    //     0x72acec: stp             fp, lr, [SP, #-0x10]!
    //     0x72acf0: mov             fp, SP
    // 0x72acf4: AllocStack(0xa0)
    //     0x72acf4: sub             SP, SP, #0xa0
    // 0x72acf8: SetupParameters(SayDualariDownloadProvider this /* r1 => r1, fp-0x78 */)
    //     0x72acf8: stur            NULL, [fp, #-8]
    //     0x72acfc: stur            x1, [fp, #-0x78]
    // 0x72ad00: CheckStackOverflow
    //     0x72ad00: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72ad04: cmp             SP, x16
    //     0x72ad08: b.ls            #0x72af1c
    // 0x72ad0c: r1 = 1
    //     0x72ad0c: mov             x1, #1
    // 0x72ad10: r0 = AllocateContext()
    //     0x72ad10: bl              #0x927010  ; AllocateContextStub
    // 0x72ad14: mov             x2, x0
    // 0x72ad18: ldur            x1, [fp, #-0x78]
    // 0x72ad1c: stur            x2, [fp, #-0x80]
    // 0x72ad20: StoreField: r2->field_f = r1
    //     0x72ad20: stur            w1, [x2, #0xf]
    // 0x72ad24: InitAsync() -> Future<bool>
    //     0x72ad24: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x72ad28: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x72ad2c: ldur            x0, [fp, #-0x78]
    // 0x72ad30: r1 = ""
    //     0x72ad30: ldr             x1, [PP, #0x128]  ; [pp+0x128] ""
    // 0x72ad34: StoreField: r0->field_37 = r1
    //     0x72ad34: stur            w1, [x0, #0x37]
    // 0x72ad38: StoreField: r0->field_2b = rZR
    //     0x72ad38: stur            xzr, [x0, #0x2b]
    // 0x72ad3c: mov             x1, x0
    // 0x72ad40: r0 = notifyListeners()
    //     0x72ad40: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72ad44: ldur            x0, [fp, #-0x78]
    // 0x72ad48: LoadField: r1 = r0->field_27
    //     0x72ad48: ldur            w1, [x0, #0x27]
    // 0x72ad4c: DecompressPointer r1
    //     0x72ad4c: add             x1, x1, HEAP, lsl #32
    // 0x72ad50: r0 = hasInternetConnection()
    //     0x72ad50: bl              #0x5f529c  ; [package:umrem_demo/common/services/common_service.dart] CommonService::hasInternetConnection
    // 0x72ad54: mov             x1, x0
    // 0x72ad58: stur            x1, [fp, #-0x88]
    // 0x72ad5c: r0 = Await()
    //     0x72ad5c: bl              #0x3dd188  ; AwaitStub
    // 0x72ad60: r16 = true
    //     0x72ad60: add             x16, NULL, #0x20  ; true
    // 0x72ad64: cmp             w0, w16
    // 0x72ad68: b.eq            #0x72ad8c
    // 0x72ad6c: ldur            x0, [fp, #-0x78]
    // 0x72ad70: r1 = "İnternet bağlantısı yok. Lütfen bağlantınızı kontrol edin."
    //     0x72ad70: add             x1, PP, #0x20, lsl #12  ; [pp+0x202f8] "İnternet bağlantısı yok. Lütfen bağlantınızı kontrol edin."
    //     0x72ad74: ldr             x1, [x1, #0x2f8]
    // 0x72ad78: StoreField: r0->field_37 = r1
    //     0x72ad78: stur            w1, [x0, #0x37]
    // 0x72ad7c: mov             x1, x0
    // 0x72ad80: r0 = notifyListeners()
    //     0x72ad80: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72ad84: r0 = false
    //     0x72ad84: add             x0, NULL, #0x30  ; false
    // 0x72ad88: r0 = ReturnAsyncNotFuture()
    //     0x72ad88: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72ad8c: ldur            x0, [fp, #-0x78]
    // 0x72ad90: r1 = "Say duaları indiriliyor..."
    //     0x72ad90: add             x1, PP, #0x20, lsl #12  ; [pp+0x20358] "Say duaları indiriliyor..."
    //     0x72ad94: ldr             x1, [x1, #0x358]
    // 0x72ad98: StoreField: r0->field_33 = r1
    //     0x72ad98: stur            w1, [x0, #0x33]
    // 0x72ad9c: mov             x1, x0
    // 0x72ada0: r0 = notifyListeners()
    //     0x72ada0: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72ada4: ldur            x0, [fp, #-0x78]
    // 0x72ada8: LoadField: r3 = r0->field_23
    //     0x72ada8: ldur            w3, [x0, #0x23]
    // 0x72adac: DecompressPointer r3
    //     0x72adac: add             x3, x3, HEAP, lsl #32
    // 0x72adb0: ldur            x2, [fp, #-0x80]
    // 0x72adb4: stur            x3, [fp, #-0x88]
    // 0x72adb8: r1 = Function '<anonymous closure>':.
    //     0x72adb8: add             x1, PP, #0x20, lsl #12  ; [pp+0x20360] AnonymousClosure: (0x72abfc), in [package:umrem_demo/features/dualar/providers/tavaf_dualari_download_provider.dart] TavafDualariDownloadProvider::downloadAllFiles (0x72a6fc)
    //     0x72adbc: ldr             x1, [x1, #0x360]
    // 0x72adc0: r0 = AllocateClosure()
    //     0x72adc0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72adc4: ldur            x1, [fp, #-0x88]
    // 0x72adc8: mov             x2, x0
    // 0x72adcc: stur            x0, [fp, #-0x90]
    // 0x72add0: r0 = downloadAllFiles()
    //     0x72add0: bl              #0x72af24  ; [package:umrem_demo/core/services/say_dualari_storage_service.dart] SayDualariStorageService::downloadAllFiles
    // 0x72add4: mov             x1, x0
    // 0x72add8: stur            x1, [fp, #-0x98]
    // 0x72addc: r0 = Await()
    //     0x72addc: bl              #0x3dd188  ; AwaitStub
    // 0x72ade0: stur            x0, [fp, #-0x88]
    // 0x72ade4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x72ade4: ldur            w1, [x0, #0x17]
    // 0x72ade8: DecompressPointer r1
    //     0x72ade8: add             x1, x1, HEAP, lsl #32
    // 0x72adec: r16 = true
    //     0x72adec: add             x16, NULL, #0x20  ; true
    // 0x72adf0: cmp             w1, w16
    // 0x72adf4: b.ne            #0x72ae20
    // 0x72adf8: ldur            x0, [fp, #-0x78]
    // 0x72adfc: r1 = "Tüm dosyalar başarıyla indirildi!"
    //     0x72adfc: add             x1, PP, #0x20, lsl #12  ; [pp+0x20310] "Tüm dosyalar başarıyla indirildi!"
    //     0x72ae00: ldr             x1, [x1, #0x310]
    // 0x72ae04: d0 = 1.000000
    //     0x72ae04: fmov            d0, #1.00000000
    // 0x72ae08: StoreField: r0->field_33 = r1
    //     0x72ae08: stur            w1, [x0, #0x33]
    // 0x72ae0c: StoreField: r0->field_2b = d0
    //     0x72ae0c: stur            d0, [x0, #0x2b]
    // 0x72ae10: mov             x1, x0
    // 0x72ae14: r0 = notifyListeners()
    //     0x72ae14: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72ae18: r0 = true
    //     0x72ae18: add             x0, NULL, #0x20  ; true
    // 0x72ae1c: r0 = ReturnAsyncNotFuture()
    //     0x72ae1c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72ae20: LoadField: r1 = r0->field_f
    //     0x72ae20: ldur            w1, [x0, #0xf]
    // 0x72ae24: DecompressPointer r1
    //     0x72ae24: add             x1, x1, HEAP, lsl #32
    // 0x72ae28: cmp             w1, NULL
    // 0x72ae2c: b.ne            #0x72ae74
    // 0x72ae30: r1 = Null
    //     0x72ae30: mov             x1, NULL
    // 0x72ae34: r2 = 6
    //     0x72ae34: mov             x2, #6
    // 0x72ae38: r0 = AllocateArray()
    //     0x72ae38: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72ae3c: r16 = "Dosya "
    //     0x72ae3c: add             x16, PP, #0x20, lsl #12  ; [pp+0x20318] "Dosya "
    //     0x72ae40: ldr             x16, [x16, #0x318]
    // 0x72ae44: StoreField: r0->field_f = r16
    //     0x72ae44: stur            w16, [x0, #0xf]
    // 0x72ae48: ldur            x1, [fp, #-0x88]
    // 0x72ae4c: LoadField: r2 = r1->field_13
    //     0x72ae4c: ldur            w2, [x1, #0x13]
    // 0x72ae50: DecompressPointer r2
    //     0x72ae50: add             x2, x2, HEAP, lsl #32
    // 0x72ae54: StoreField: r0->field_13 = r2
    //     0x72ae54: stur            w2, [x0, #0x13]
    // 0x72ae58: r16 = " indirilemedi. Lütfen tekrar deneyin."
    //     0x72ae58: add             x16, PP, #0x20, lsl #12  ; [pp+0x20320] " indirilemedi. Lütfen tekrar deneyin."
    //     0x72ae5c: ldr             x16, [x16, #0x320]
    // 0x72ae60: ArrayStore: r0[0] = r16  ; List_4
    //     0x72ae60: stur            w16, [x0, #0x17]
    // 0x72ae64: str             x0, [SP]
    // 0x72ae68: r0 = _interpolate()
    //     0x72ae68: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72ae6c: mov             x3, x0
    // 0x72ae70: b               #0x72ae78
    // 0x72ae74: mov             x3, x1
    // 0x72ae78: ldur            x2, [fp, #-0x78]
    // 0x72ae7c: r1 = "İndirme başarısız!"
    //     0x72ae7c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20328] "İndirme başarısız!"
    //     0x72ae80: ldr             x1, [x1, #0x328]
    // 0x72ae84: mov             x0, x3
    // 0x72ae88: stur            x3, [fp, #-0x88]
    // 0x72ae8c: StoreField: r2->field_37 = r0
    //     0x72ae8c: stur            w0, [x2, #0x37]
    //     0x72ae90: ldurb           w16, [x2, #-1]
    //     0x72ae94: ldurb           w17, [x0, #-1]
    //     0x72ae98: and             x16, x17, x16, lsr #2
    //     0x72ae9c: tst             x16, HEAP, lsr #32
    //     0x72aea0: b.eq            #0x72aea8
    //     0x72aea4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x72aea8: StoreField: r2->field_33 = r1
    //     0x72aea8: stur            w1, [x2, #0x33]
    // 0x72aeac: mov             x1, x2
    // 0x72aeb0: r0 = notifyListeners()
    //     0x72aeb0: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72aeb4: r0 = false
    //     0x72aeb4: add             x0, NULL, #0x30  ; false
    // 0x72aeb8: r0 = ReturnAsyncNotFuture()
    //     0x72aeb8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72aebc: sub             SP, fp, #0xa0
    // 0x72aec0: ldur            x3, [fp, #-0x78]
    // 0x72aec4: stur            x0, [fp, #-0x80]
    // 0x72aec8: r1 = Null
    //     0x72aec8: mov             x1, NULL
    // 0x72aecc: r2 = 4
    //     0x72aecc: mov             x2, #4
    // 0x72aed0: r0 = AllocateArray()
    //     0x72aed0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72aed4: r16 = "İndirme sırasında bir hata oluştu: "
    //     0x72aed4: add             x16, PP, #0x20, lsl #12  ; [pp+0x20330] "İndirme sırasında bir hata oluştu: "
    //     0x72aed8: ldr             x16, [x16, #0x330]
    // 0x72aedc: StoreField: r0->field_f = r16
    //     0x72aedc: stur            w16, [x0, #0xf]
    // 0x72aee0: ldur            x1, [fp, #-0x80]
    // 0x72aee4: StoreField: r0->field_13 = r1
    //     0x72aee4: stur            w1, [x0, #0x13]
    // 0x72aee8: str             x0, [SP]
    // 0x72aeec: r0 = _interpolate()
    //     0x72aeec: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72aef0: ldur            x1, [fp, #-0x78]
    // 0x72aef4: StoreField: r1->field_37 = r0
    //     0x72aef4: stur            w0, [x1, #0x37]
    //     0x72aef8: ldurb           w16, [x1, #-1]
    //     0x72aefc: ldurb           w17, [x0, #-1]
    //     0x72af00: and             x16, x17, x16, lsr #2
    //     0x72af04: tst             x16, HEAP, lsr #32
    //     0x72af08: b.eq            #0x72af10
    //     0x72af0c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x72af10: r0 = notifyListeners()
    //     0x72af10: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72af14: r0 = false
    //     0x72af14: add             x0, NULL, #0x30  ; false
    // 0x72af18: r0 = ReturnAsyncNotFuture()
    //     0x72af18: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72af1c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72af1c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72af20: b               #0x72ad0c
  }
}

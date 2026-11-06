// lib: , url: package:umrem_demo/features/dualar/providers/quran_provider.dart

// class id: 1049571, size: 0x8
class :: {
}

// class id: 3864, size: 0x3c, field offset: 0x24
class QuranProvider extends ChangeNotifier {

  _ getTranslations(/* No info */) async {
    // ** addr: 0x71b444, size: 0x188
    // 0x71b444: EnterFrame
    //     0x71b444: stp             fp, lr, [SP, #-0x10]!
    //     0x71b448: mov             fp, SP
    // 0x71b44c: AllocStack(0xb0)
    //     0x71b44c: sub             SP, SP, #0xb0
    // 0x71b450: SetupParameters(QuranProvider this /* r1 => r1, fp-0x78 */, dynamic _ /* r2 => r2, fp-0x80 */)
    //     0x71b450: stur            NULL, [fp, #-8]
    //     0x71b454: stur            x1, [fp, #-0x78]
    //     0x71b458: stur            x2, [fp, #-0x80]
    // 0x71b45c: CheckStackOverflow
    //     0x71b45c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71b460: cmp             SP, x16
    //     0x71b464: b.ls            #0x71b5c4
    // 0x71b468: InitAsync() -> Future<void?>
    //     0x71b468: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x71b46c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x71b470: ldur            x1, [fp, #-0x78]
    // 0x71b474: r0 = notifyListeners()
    //     0x71b474: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x71b478: ldur            x0, [fp, #-0x78]
    // 0x71b47c: LoadField: r4 = r0->field_23
    //     0x71b47c: ldur            w4, [x0, #0x23]
    // 0x71b480: DecompressPointer r4
    //     0x71b480: add             x4, x4, HEAP, lsl #32
    // 0x71b484: stur            x4, [fp, #-0x90]
    // 0x71b488: LoadField: r5 = r0->field_27
    //     0x71b488: ldur            x5, [x0, #0x27]
    // 0x71b48c: mov             x1, x4
    // 0x71b490: ldur            x2, [fp, #-0x80]
    // 0x71b494: mov             x3, x5
    // 0x71b498: stur            x5, [fp, #-0x88]
    // 0x71b49c: r0 = getPageTranslations()
    //     0x71b49c: bl              #0x71b5cc  ; [package:umrem_demo/common/network/api_service.dart] ApiService::getPageTranslations
    // 0x71b4a0: mov             x1, x0
    // 0x71b4a4: stur            x1, [fp, #-0x98]
    // 0x71b4a8: r0 = Await()
    //     0x71b4a8: bl              #0x3dd188  ; AwaitStub
    // 0x71b4ac: ldur            x2, [fp, #-0x78]
    // 0x71b4b0: StoreField: r2->field_37 = r0
    //     0x71b4b0: stur            w0, [x2, #0x37]
    //     0x71b4b4: ldurb           w16, [x2, #-1]
    //     0x71b4b8: ldurb           w17, [x0, #-1]
    //     0x71b4bc: and             x16, x17, x16, lsr #2
    //     0x71b4c0: tst             x16, HEAP, lsr #32
    //     0x71b4c4: b.eq            #0x71b4cc
    //     0x71b4c8: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x71b4cc: b               #0x71b578
    // 0x71b4d0: sub             SP, fp, #0xb0
    // 0x71b4d4: ldur            x2, [fp, #-0x78]
    // 0x71b4d8: stur            x0, [fp, #-0x90]
    // 0x71b4dc: stur            x1, [fp, #-0x98]
    // 0x71b4e0: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x71b4e0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x71b4e4: ldr             x0, [x0, #0xcb8]
    //     0x71b4e8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x71b4ec: cmp             w0, w16
    //     0x71b4f0: b.ne            #0x71b4fc
    //     0x71b4f4: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x71b4f8: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x71b4fc: r1 = Null
    //     0x71b4fc: mov             x1, NULL
    // 0x71b500: r2 = 4
    //     0x71b500: mov             x2, #4
    // 0x71b504: r0 = AllocateArray()
    //     0x71b504: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71b508: r16 = "Error getting translations: "
    //     0x71b508: add             x16, PP, #0x17, lsl #12  ; [pp+0x17aa0] "Error getting translations: "
    //     0x71b50c: ldr             x16, [x16, #0xaa0]
    // 0x71b510: StoreField: r0->field_f = r16
    //     0x71b510: stur            w16, [x0, #0xf]
    // 0x71b514: ldur            x1, [fp, #-0x90]
    // 0x71b518: StoreField: r0->field_13 = r1
    //     0x71b518: stur            w1, [x0, #0x13]
    // 0x71b51c: str             x0, [SP]
    // 0x71b520: r0 = _interpolate()
    //     0x71b520: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x71b524: mov             x2, x0
    // 0x71b528: r0 = Closure: (String?, {int? wrapWidth}) => void from Function 'debugPrintThrottled': static.
    //     0x71b528: ldr             x0, [PP, #0x1010]  ; [pp+0x1010] Closure: (String?, {int? wrapWidth}) => void from Function 'debugPrintThrottled': static. (0x7f22903cb80c)
    // 0x71b52c: stur            x2, [fp, #-0xa8]
    // 0x71b530: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x71b530: ldur            w3, [x0, #0x17]
    // 0x71b534: DecompressPointer r3
    //     0x71b534: add             x3, x3, HEAP, lsl #32
    // 0x71b538: stur            x3, [fp, #-0xa0]
    // 0x71b53c: str             NULL, [SP]
    // 0x71b540: mov             x1, x2
    // 0x71b544: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x71b544: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x71b548: r0 = debugPrintThrottled()
    //     0x71b548: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x71b54c: r1 = <Map<String, dynamic>>
    //     0x71b54c: ldr             x1, [PP, #0x3918]  ; [pp+0x3918] TypeArguments: <Map<String, dynamic>>
    // 0x71b550: r2 = 0
    //     0x71b550: mov             x2, #0
    // 0x71b554: r0 = _GrowableList()
    //     0x71b554: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x71b558: ldur            x2, [fp, #-0x78]
    // 0x71b55c: StoreField: r2->field_37 = r0
    //     0x71b55c: stur            w0, [x2, #0x37]
    //     0x71b560: ldurb           w16, [x2, #-1]
    //     0x71b564: ldurb           w17, [x0, #-1]
    //     0x71b568: and             x16, x17, x16, lsr #2
    //     0x71b56c: tst             x16, HEAP, lsr #32
    //     0x71b570: b.eq            #0x71b578
    //     0x71b574: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x71b578: mov             x1, x2
    // 0x71b57c: r0 = notifyListeners()
    //     0x71b57c: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x71b580: r0 = Null
    //     0x71b580: mov             x0, NULL
    // 0x71b584: r0 = ReturnAsyncNotFuture()
    //     0x71b584: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x71b588: sub             SP, fp, #0xb0
    // 0x71b58c: ldur            x2, [fp, #-0x78]
    // 0x71b590: mov             x16, x0
    // 0x71b594: mov             x0, x2
    // 0x71b598: mov             x2, x16
    // 0x71b59c: mov             x16, x1
    // 0x71b5a0: mov             x1, x0
    // 0x71b5a4: mov             x0, x16
    // 0x71b5a8: stur            x2, [fp, #-0x90]
    // 0x71b5ac: stur            x0, [fp, #-0x98]
    // 0x71b5b0: r0 = notifyListeners()
    //     0x71b5b0: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x71b5b4: ldur            x0, [fp, #-0x90]
    // 0x71b5b8: ldur            x1, [fp, #-0x98]
    // 0x71b5bc: r0 = ReThrow()
    //     0x71b5bc: bl              #0x9262fc  ; ReThrowStub
    // 0x71b5c0: brk             #0
    // 0x71b5c4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71b5c4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71b5c8: b               #0x71b468
  }
  _ setTranslationId(/* No info */) {
    // ** addr: 0x71db2c, size: 0x34
    // 0x71db2c: EnterFrame
    //     0x71db2c: stp             fp, lr, [SP, #-0x10]!
    //     0x71db30: mov             fp, SP
    // 0x71db34: CheckStackOverflow
    //     0x71db34: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71db38: cmp             SP, x16
    //     0x71db3c: b.ls            #0x71db58
    // 0x71db40: StoreField: r1->field_27 = r2
    //     0x71db40: stur            x2, [x1, #0x27]
    // 0x71db44: r0 = notifyListeners()
    //     0x71db44: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x71db48: r0 = Null
    //     0x71db48: mov             x0, NULL
    // 0x71db4c: LeaveFrame
    //     0x71db4c: mov             SP, fp
    //     0x71db50: ldp             fp, lr, [SP], #0x10
    // 0x71db54: ret
    //     0x71db54: ret             
    // 0x71db58: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71db58: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71db5c: b               #0x71db40
  }
  _ QuranProvider(/* No info */) {
    // ** addr: 0x7f0520, size: 0x110
    // 0x7f0520: EnterFrame
    //     0x7f0520: stp             fp, lr, [SP, #-0x10]!
    //     0x7f0524: mov             fp, SP
    // 0x7f0528: AllocStack(0x10)
    //     0x7f0528: sub             SP, SP, #0x10
    // 0x7f052c: r2 = 77
    //     0x7f052c: mov             x2, #0x4d
    // 0x7f0530: r0 = 1
    //     0x7f0530: mov             x0, #1
    // 0x7f0534: stur            x1, [fp, #-8]
    // 0x7f0538: CheckStackOverflow
    //     0x7f0538: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f053c: cmp             SP, x16
    //     0x7f0540: b.ls            #0x7f0628
    // 0x7f0544: StoreField: r1->field_27 = r2
    //     0x7f0544: stur            x2, [x1, #0x27]
    // 0x7f0548: StoreField: r1->field_2f = r0
    //     0x7f0548: stur            x0, [x1, #0x2f]
    // 0x7f054c: r0 = InitLateStaticField(0x36c) // [dart:async] Zone::_current
    //     0x7f054c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7f0550: ldr             x0, [x0, #0x6d8]
    //     0x7f0554: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7f0558: cmp             w0, w16
    //     0x7f055c: b.ne            #0x7f0568
    //     0x7f0560: ldr             x2, [PP, #0x2f0]  ; [pp+0x2f0] Field <Zone._current@5048458>: static late (offset: 0x36c)
    //     0x7f0564: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7f0568: r0 = createClient()
    //     0x7f0568: bl              #0x5eb07c  ; [package:http/src/io_client.dart] ::createClient
    // 0x7f056c: stur            x0, [fp, #-0x10]
    // 0x7f0570: r0 = ApiService()
    //     0x7f0570: bl              #0x7f0630  ; AllocateApiServiceStub -> ApiService (size=0xc)
    // 0x7f0574: mov             x1, x0
    // 0x7f0578: ldur            x0, [fp, #-0x10]
    // 0x7f057c: StoreField: r1->field_7 = r0
    //     0x7f057c: stur            w0, [x1, #7]
    // 0x7f0580: mov             x0, x1
    // 0x7f0584: ldur            x3, [fp, #-8]
    // 0x7f0588: StoreField: r3->field_23 = r0
    //     0x7f0588: stur            w0, [x3, #0x23]
    //     0x7f058c: ldurb           w16, [x3, #-1]
    //     0x7f0590: ldurb           w17, [x0, #-1]
    //     0x7f0594: and             x16, x17, x16, lsr #2
    //     0x7f0598: tst             x16, HEAP, lsr #32
    //     0x7f059c: b.eq            #0x7f05a4
    //     0x7f05a0: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x7f05a4: r1 = <Map<String, dynamic>>
    //     0x7f05a4: ldr             x1, [PP, #0x3918]  ; [pp+0x3918] TypeArguments: <Map<String, dynamic>>
    // 0x7f05a8: r2 = 0
    //     0x7f05a8: mov             x2, #0
    // 0x7f05ac: r0 = _GrowableList()
    //     0x7f05ac: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7f05b0: ldur            x1, [fp, #-8]
    // 0x7f05b4: StoreField: r1->field_37 = r0
    //     0x7f05b4: stur            w0, [x1, #0x37]
    //     0x7f05b8: ldurb           w16, [x1, #-1]
    //     0x7f05bc: ldurb           w17, [x0, #-1]
    //     0x7f05c0: and             x16, x17, x16, lsr #2
    //     0x7f05c4: tst             x16, HEAP, lsr #32
    //     0x7f05c8: b.eq            #0x7f05d0
    //     0x7f05cc: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7f05d0: StoreField: r1->field_7 = rZR
    //     0x7f05d0: stur            xzr, [x1, #7]
    // 0x7f05d4: StoreField: r1->field_13 = rZR
    //     0x7f05d4: stur            xzr, [x1, #0x13]
    // 0x7f05d8: StoreField: r1->field_1b = rZR
    //     0x7f05d8: stur            xzr, [x1, #0x1b]
    // 0x7f05dc: r0 = InitLateStaticField(0x5e0) // [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::_emptyListeners
    //     0x7f05dc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7f05e0: ldr             x0, [x0, #0xbc0]
    //     0x7f05e4: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7f05e8: cmp             w0, w16
    //     0x7f05ec: b.ne            #0x7f05f8
    //     0x7f05f0: ldr             x2, [PP, #0x1c28]  ; [pp+0x1c28] Field <ChangeNotifier._emptyListeners@88329750>: static late final (offset: 0x5e0)
    //     0x7f05f4: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x7f05f8: ldur            x1, [fp, #-8]
    // 0x7f05fc: StoreField: r1->field_f = r0
    //     0x7f05fc: stur            w0, [x1, #0xf]
    //     0x7f0600: ldurb           w16, [x1, #-1]
    //     0x7f0604: ldurb           w17, [x0, #-1]
    //     0x7f0608: and             x16, x17, x16, lsr #2
    //     0x7f060c: tst             x16, HEAP, lsr #32
    //     0x7f0610: b.eq            #0x7f0618
    //     0x7f0614: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7f0618: r0 = Null
    //     0x7f0618: mov             x0, NULL
    // 0x7f061c: LeaveFrame
    //     0x7f061c: mov             SP, fp
    //     0x7f0620: ldp             fp, lr, [SP], #0x10
    // 0x7f0624: ret
    //     0x7f0624: ret             
    // 0x7f0628: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f0628: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f062c: b               #0x7f0544
  }
}

// lib: , url: package:umrem_demo/features/home/screens/takvim_screen.dart

// class id: 1049587, size: 0x8
class :: {
}

// class id: 2465, size: 0x1c, field offset: 0x14
class TakvimScreenState extends State<dynamic> {

  late DateTime _currentDate; // offset: 0x14
  late PageController _pageController; // offset: 0x18

  _ initState(/* No info */) {
    // ** addr: 0x5e9714, size: 0x1cc
    // 0x5e9714: EnterFrame
    //     0x5e9714: stp             fp, lr, [SP, #-0x10]!
    //     0x5e9718: mov             fp, SP
    // 0x5e971c: AllocStack(0x20)
    //     0x5e971c: sub             SP, SP, #0x20
    // 0x5e9720: SetupParameters(TakvimScreenState this /* r1 => r1, fp-0x8 */)
    //     0x5e9720: stur            x1, [fp, #-8]
    // 0x5e9724: CheckStackOverflow
    //     0x5e9724: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e9728: cmp             SP, x16
    //     0x5e972c: b.ls            #0x5e98d4
    // 0x5e9730: r1 = 1
    //     0x5e9730: mov             x1, #1
    // 0x5e9734: r0 = AllocateContext()
    //     0x5e9734: bl              #0x927010  ; AllocateContextStub
    // 0x5e9738: mov             x1, x0
    // 0x5e973c: ldur            x0, [fp, #-8]
    // 0x5e9740: stur            x1, [fp, #-0x10]
    // 0x5e9744: StoreField: r1->field_f = r0
    //     0x5e9744: stur            w0, [x1, #0xf]
    // 0x5e9748: r0 = DateTime()
    //     0x5e9748: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5e974c: mov             x1, x0
    // 0x5e9750: r0 = false
    //     0x5e9750: add             x0, NULL, #0x30  ; false
    // 0x5e9754: stur            x1, [fp, #-0x18]
    // 0x5e9758: StoreField: r1->field_7 = r0
    //     0x5e9758: stur            w0, [x1, #7]
    // 0x5e975c: r0 = _getCurrentMicros()
    //     0x5e975c: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x5e9760: r1 = LoadInt32Instr(r0)
    //     0x5e9760: sbfx            x1, x0, #1, #0x1f
    //     0x5e9764: tbz             w0, #0, #0x5e976c
    //     0x5e9768: ldur            x1, [x0, #7]
    // 0x5e976c: ldur            x0, [fp, #-0x18]
    // 0x5e9770: StoreField: r0->field_b = r1
    //     0x5e9770: stur            x1, [x0, #0xb]
    // 0x5e9774: ldur            x1, [fp, #-8]
    // 0x5e9778: StoreField: r1->field_13 = r0
    //     0x5e9778: stur            w0, [x1, #0x13]
    //     0x5e977c: ldurb           w16, [x1, #-1]
    //     0x5e9780: ldurb           w17, [x0, #-1]
    //     0x5e9784: and             x16, x17, x16, lsr #2
    //     0x5e9788: tst             x16, HEAP, lsr #32
    //     0x5e978c: b.eq            #0x5e9794
    //     0x5e9790: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5e9794: r0 = PageController()
    //     0x5e9794: bl              #0x578c78  ; AllocatePageControllerStub -> PageController (size=0x54)
    // 0x5e9798: stur            x0, [fp, #-0x18]
    // 0x5e979c: StoreField: r0->field_3f = rZR
    //     0x5e979c: stur            xzr, [x0, #0x3f]
    // 0x5e97a0: r1 = true
    //     0x5e97a0: add             x1, NULL, #0x20  ; true
    // 0x5e97a4: StoreField: r0->field_47 = r1
    //     0x5e97a4: stur            w1, [x0, #0x47]
    // 0x5e97a8: d0 = 1.000000
    //     0x5e97a8: fmov            d0, #1.00000000
    // 0x5e97ac: StoreField: r0->field_4b = d0
    //     0x5e97ac: stur            d0, [x0, #0x4b]
    // 0x5e97b0: mov             x1, x0
    // 0x5e97b4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x5e97b4: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x5e97b8: r0 = ScrollController()
    //     0x5e97b8: bl              #0x437694  ; [package:flutter/src/widgets/scroll_controller.dart] ScrollController::ScrollController
    // 0x5e97bc: ldur            x0, [fp, #-0x18]
    // 0x5e97c0: ldur            x1, [fp, #-8]
    // 0x5e97c4: ArrayStore: r1[0] = r0  ; List_4
    //     0x5e97c4: stur            w0, [x1, #0x17]
    //     0x5e97c8: ldurb           w16, [x1, #-1]
    //     0x5e97cc: ldurb           w17, [x0, #-1]
    //     0x5e97d0: and             x16, x17, x16, lsr #2
    //     0x5e97d4: tst             x16, HEAP, lsr #32
    //     0x5e97d8: b.eq            #0x5e97e0
    //     0x5e97dc: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5e97e0: r0 = LoadStaticField(0x834)
    //     0x5e97e0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e97e4: ldr             x0, [x0, #0x1068]
    // 0x5e97e8: cmp             w0, NULL
    // 0x5e97ec: b.eq            #0x5e98dc
    // 0x5e97f0: LoadField: r3 = r0->field_53
    //     0x5e97f0: ldur            w3, [x0, #0x53]
    // 0x5e97f4: DecompressPointer r3
    //     0x5e97f4: add             x3, x3, HEAP, lsl #32
    // 0x5e97f8: stur            x3, [fp, #-0x18]
    // 0x5e97fc: LoadField: r0 = r3->field_7
    //     0x5e97fc: ldur            w0, [x3, #7]
    // 0x5e9800: DecompressPointer r0
    //     0x5e9800: add             x0, x0, HEAP, lsl #32
    // 0x5e9804: ldur            x2, [fp, #-0x10]
    // 0x5e9808: stur            x0, [fp, #-8]
    // 0x5e980c: r1 = Function '<anonymous closure>':.
    //     0x5e980c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15438] AnonymousClosure: (0x5e9900), in [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::initState (0x5e9714)
    //     0x5e9810: ldr             x1, [x1, #0x438]
    // 0x5e9814: r0 = AllocateClosure()
    //     0x5e9814: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e9818: ldur            x2, [fp, #-8]
    // 0x5e981c: mov             x3, x0
    // 0x5e9820: r1 = Null
    //     0x5e9820: mov             x1, NULL
    // 0x5e9824: stur            x3, [fp, #-8]
    // 0x5e9828: cmp             w2, NULL
    // 0x5e982c: b.eq            #0x5e984c
    // 0x5e9830: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x5e9830: ldur            w4, [x2, #0x17]
    // 0x5e9834: DecompressPointer r4
    //     0x5e9834: add             x4, x4, HEAP, lsl #32
    // 0x5e9838: r8 = X0
    //     0x5e9838: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x5e983c: LoadField: r9 = r4->field_7
    //     0x5e983c: ldur            x9, [x4, #7]
    // 0x5e9840: r3 = Null
    //     0x5e9840: add             x3, PP, #0x15, lsl #12  ; [pp+0x15440] Null
    //     0x5e9844: ldr             x3, [x3, #0x440]
    // 0x5e9848: blr             x9
    // 0x5e984c: ldur            x0, [fp, #-0x18]
    // 0x5e9850: LoadField: r1 = r0->field_b
    //     0x5e9850: ldur            w1, [x0, #0xb]
    // 0x5e9854: LoadField: r2 = r0->field_f
    //     0x5e9854: ldur            w2, [x0, #0xf]
    // 0x5e9858: DecompressPointer r2
    //     0x5e9858: add             x2, x2, HEAP, lsl #32
    // 0x5e985c: LoadField: r3 = r2->field_b
    //     0x5e985c: ldur            w3, [x2, #0xb]
    // 0x5e9860: r2 = LoadInt32Instr(r1)
    //     0x5e9860: sbfx            x2, x1, #1, #0x1f
    // 0x5e9864: stur            x2, [fp, #-0x20]
    // 0x5e9868: r1 = LoadInt32Instr(r3)
    //     0x5e9868: sbfx            x1, x3, #1, #0x1f
    // 0x5e986c: cmp             x2, x1
    // 0x5e9870: b.ne            #0x5e987c
    // 0x5e9874: mov             x1, x0
    // 0x5e9878: r0 = _growToNextCapacity()
    //     0x5e9878: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x5e987c: ldur            x2, [fp, #-0x18]
    // 0x5e9880: ldur            x3, [fp, #-0x20]
    // 0x5e9884: add             x4, x3, #1
    // 0x5e9888: lsl             x5, x4, #1
    // 0x5e988c: StoreField: r2->field_b = r5
    //     0x5e988c: stur            w5, [x2, #0xb]
    // 0x5e9890: LoadField: r1 = r2->field_f
    //     0x5e9890: ldur            w1, [x2, #0xf]
    // 0x5e9894: DecompressPointer r1
    //     0x5e9894: add             x1, x1, HEAP, lsl #32
    // 0x5e9898: ldur            x0, [fp, #-8]
    // 0x5e989c: ArrayStore: r1[r3] = r0  ; List_4
    //     0x5e989c: add             x25, x1, x3, lsl #2
    //     0x5e98a0: add             x25, x25, #0xf
    //     0x5e98a4: str             w0, [x25]
    //     0x5e98a8: tbz             w0, #0, #0x5e98c4
    //     0x5e98ac: ldurb           w16, [x1, #-1]
    //     0x5e98b0: ldurb           w17, [x0, #-1]
    //     0x5e98b4: and             x16, x17, x16, lsr #2
    //     0x5e98b8: tst             x16, HEAP, lsr #32
    //     0x5e98bc: b.eq            #0x5e98c4
    //     0x5e98c0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5e98c4: r0 = Null
    //     0x5e98c4: mov             x0, NULL
    // 0x5e98c8: LeaveFrame
    //     0x5e98c8: mov             SP, fp
    //     0x5e98cc: ldp             fp, lr, [SP], #0x10
    // 0x5e98d0: ret
    //     0x5e98d0: ret             
    // 0x5e98d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e98d4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e98d8: b               #0x5e9730
    // 0x5e98dc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e98dc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, Duration) {
    // ** addr: 0x5e9900, size: 0xac
    // 0x5e9900: EnterFrame
    //     0x5e9900: stp             fp, lr, [SP, #-0x10]!
    //     0x5e9904: mov             fp, SP
    // 0x5e9908: AllocStack(0x18)
    //     0x5e9908: sub             SP, SP, #0x18
    // 0x5e990c: SetupParameters([dynamic _ /* r0 */])
    //     0x5e990c: ldr             x0, [fp, #0x18]
    //     0x5e9910: ldur            w1, [x0, #0x17]
    //     0x5e9914: add             x1, x1, HEAP, lsl #32
    //     0x5e9918: stur            x1, [fp, #-8]
    // 0x5e991c: CheckStackOverflow
    //     0x5e991c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e9920: cmp             SP, x16
    //     0x5e9924: b.ls            #0x5e9994
    // 0x5e9928: LoadField: r0 = r1->field_f
    //     0x5e9928: ldur            w0, [x1, #0xf]
    // 0x5e992c: DecompressPointer r0
    //     0x5e992c: add             x0, x0, HEAP, lsl #32
    // 0x5e9930: LoadField: r2 = r0->field_f
    //     0x5e9930: ldur            w2, [x0, #0xf]
    // 0x5e9934: DecompressPointer r2
    //     0x5e9934: add             x2, x2, HEAP, lsl #32
    // 0x5e9938: cmp             w2, NULL
    // 0x5e993c: b.eq            #0x5e999c
    // 0x5e9940: r16 = <EventProvider>
    //     0x5e9940: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b80] TypeArguments: <EventProvider>
    //     0x5e9944: ldr             x16, [x16, #0xb80]
    // 0x5e9948: stp             x2, x16, [SP]
    // 0x5e994c: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x5e994c: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x5e9950: r0 = ReadContext.read()
    //     0x5e9950: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x5e9954: mov             x1, x0
    // 0x5e9958: ldur            x0, [fp, #-8]
    // 0x5e995c: LoadField: r2 = r0->field_f
    //     0x5e995c: ldur            w2, [x0, #0xf]
    // 0x5e9960: DecompressPointer r2
    //     0x5e9960: add             x2, x2, HEAP, lsl #32
    // 0x5e9964: LoadField: r0 = r2->field_13
    //     0x5e9964: ldur            w0, [x2, #0x13]
    // 0x5e9968: DecompressPointer r0
    //     0x5e9968: add             x0, x0, HEAP, lsl #32
    // 0x5e996c: r16 = Sentinel
    //     0x5e996c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x5e9970: cmp             w0, w16
    // 0x5e9974: b.eq            #0x5e99a0
    // 0x5e9978: mov             x2, x0
    // 0x5e997c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5e997c: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5e9980: r0 = loadEventsByDate()
    //     0x5e9980: bl              #0x5df1d8  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::loadEventsByDate
    // 0x5e9984: r0 = Null
    //     0x5e9984: mov             x0, NULL
    // 0x5e9988: LeaveFrame
    //     0x5e9988: mov             SP, fp
    //     0x5e998c: ldp             fp, lr, [SP], #0x10
    // 0x5e9990: ret
    //     0x5e9990: ret             
    // 0x5e9994: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e9994: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e9998: b               #0x5e9928
    // 0x5e999c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e999c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5e99a0: r9 = _currentDate
    //     0x5e99a0: add             x9, PP, #0x14, lsl #12  ; [pp+0x14f10] Field <TakvimScreenState._currentDate@938372397>: late (offset: 0x14)
    //     0x5e99a4: ldr             x9, [x9, #0xf10]
    // 0x5e99a8: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x5e99a8: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  [closure] Theme <anonymous closure>(dynamic, BuildContext, Widget?) {
    // ** addr: 0x6d25c0, size: 0xd8
    // 0x6d25c0: EnterFrame
    //     0x6d25c0: stp             fp, lr, [SP, #-0x10]!
    //     0x6d25c4: mov             fp, SP
    // 0x6d25c8: AllocStack(0x18)
    //     0x6d25c8: sub             SP, SP, #0x18
    // 0x6d25cc: CheckStackOverflow
    //     0x6d25cc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d25d0: cmp             SP, x16
    //     0x6d25d4: b.ls            #0x6d268c
    // 0x6d25d8: r16 = Instance_Brightness
    //     0x6d25d8: ldr             x16, [PP, #0x56f8]  ; [pp+0x56f8] Obj!Brightness@a2cbd1
    // 0x6d25dc: stp             NULL, x16, [SP]
    // 0x6d25e0: r1 = Null
    //     0x6d25e0: mov             x1, NULL
    // 0x6d25e4: r4 = const [0, 0x3, 0x2, 0x1, brightness, 0x1, useMaterial3, 0x2, null]
    //     0x6d25e4: ldr             x4, [PP, #0x6ef8]  ; [pp+0x6ef8] List(9) [0, 0x3, 0x2, 0x1, "brightness", 0x1, "useMaterial3", 0x2, Null]
    // 0x6d25e8: r0 = ThemeData()
    //     0x6d25e8: bl              #0x411fe8  ; [package:flutter/src/material/theme_data.dart] ThemeData::ThemeData
    // 0x6d25ec: stur            x0, [fp, #-8]
    // 0x6d25f0: r0 = ColorScheme()
    //     0x6d25f0: bl              #0x410b80  ; AllocateColorSchemeStub -> ColorScheme (size=0xd0)
    // 0x6d25f4: mov             x1, x0
    // 0x6d25f8: r0 = Instance_Brightness
    //     0x6d25f8: ldr             x0, [PP, #0x56f8]  ; [pp+0x56f8] Obj!Brightness@a2cbd1
    // 0x6d25fc: StoreField: r1->field_7 = r0
    //     0x6d25fc: stur            w0, [x1, #7]
    // 0x6d2600: r0 = Instance_Color
    //     0x6d2600: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6d2604: ldr             x0, [x0, #0xb78]
    // 0x6d2608: StoreField: r1->field_b = r0
    //     0x6d2608: stur            w0, [x1, #0xb]
    // 0x6d260c: r0 = Instance_Color
    //     0x6d260c: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6d2610: StoreField: r1->field_f = r0
    //     0x6d2610: stur            w0, [x1, #0xf]
    // 0x6d2614: r2 = Instance_Color
    //     0x6d2614: add             x2, PP, #0x15, lsl #12  ; [pp+0x15208] Obj!Color@a25271
    //     0x6d2618: ldr             x2, [x2, #0x208]
    // 0x6d261c: StoreField: r1->field_2b = r2
    //     0x6d261c: stur            w2, [x1, #0x2b]
    // 0x6d2620: r2 = Instance_Color
    //     0x6d2620: ldr             x2, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x6d2624: StoreField: r1->field_2f = r2
    //     0x6d2624: stur            w2, [x1, #0x2f]
    // 0x6d2628: r3 = Instance_Color
    //     0x6d2628: add             x3, PP, #0x15, lsl #12  ; [pp+0x15210] Obj!Color@a25241
    //     0x6d262c: ldr             x3, [x3, #0x210]
    // 0x6d2630: StoreField: r1->field_6b = r3
    //     0x6d2630: stur            w3, [x1, #0x6b]
    // 0x6d2634: StoreField: r1->field_6f = r0
    //     0x6d2634: stur            w0, [x1, #0x6f]
    // 0x6d2638: StoreField: r1->field_7b = r0
    //     0x6d2638: stur            w0, [x1, #0x7b]
    // 0x6d263c: StoreField: r1->field_7f = r2
    //     0x6d263c: stur            w2, [x1, #0x7f]
    // 0x6d2640: StoreField: r1->field_c7 = r0
    //     0x6d2640: stur            w0, [x1, #0xc7]
    // 0x6d2644: StoreField: r1->field_cb = r2
    //     0x6d2644: stur            w2, [x1, #0xcb]
    // 0x6d2648: str             x1, [SP]
    // 0x6d264c: ldur            x1, [fp, #-8]
    // 0x6d2650: r4 = const [0, 0x2, 0x1, 0x1, colorScheme, 0x1, null]
    //     0x6d2650: ldr             x4, [PP, #0x5458]  ; [pp+0x5458] List(7) [0, 0x2, 0x1, 0x1, "colorScheme", 0x1, Null]
    // 0x6d2654: r0 = copyWith()
    //     0x6d2654: bl              #0x40f870  ; [package:flutter/src/material/theme_data.dart] ThemeData::copyWith
    // 0x6d2658: mov             x1, x0
    // 0x6d265c: ldr             x0, [fp, #0x10]
    // 0x6d2660: stur            x1, [fp, #-8]
    // 0x6d2664: cmp             w0, NULL
    // 0x6d2668: b.eq            #0x6d2694
    // 0x6d266c: r0 = Theme()
    //     0x6d266c: bl              #0x65091c  ; AllocateThemeStub -> Theme (size=0x14)
    // 0x6d2670: ldur            x1, [fp, #-8]
    // 0x6d2674: StoreField: r0->field_b = r1
    //     0x6d2674: stur            w1, [x0, #0xb]
    // 0x6d2678: ldr             x1, [fp, #0x10]
    // 0x6d267c: StoreField: r0->field_f = r1
    //     0x6d267c: stur            w1, [x0, #0xf]
    // 0x6d2680: LeaveFrame
    //     0x6d2680: mov             SP, fp
    //     0x6d2684: ldp             fp, lr, [SP], #0x10
    // 0x6d2688: ret
    //     0x6d2688: ret             
    // 0x6d268c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d268c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d2690: b               #0x6d25d8
    // 0x6d2694: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6d2694: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _showDatePicker(/* No info */) {
    // ** addr: 0x6d2698, size: 0x244
    // 0x6d2698: EnterFrame
    //     0x6d2698: stp             fp, lr, [SP, #-0x10]!
    //     0x6d269c: mov             fp, SP
    // 0x6d26a0: AllocStack(0x48)
    //     0x6d26a0: sub             SP, SP, #0x48
    // 0x6d26a4: SetupParameters(TakvimScreenState this /* r1 => r1, fp-0x8 */)
    //     0x6d26a4: stur            x1, [fp, #-8]
    // 0x6d26a8: CheckStackOverflow
    //     0x6d26a8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d26ac: cmp             SP, x16
    //     0x6d26b0: b.ls            #0x6d28b8
    // 0x6d26b4: r1 = 2
    //     0x6d26b4: mov             x1, #2
    // 0x6d26b8: r0 = AllocateContext()
    //     0x6d26b8: bl              #0x927010  ; AllocateContextStub
    // 0x6d26bc: mov             x1, x0
    // 0x6d26c0: ldur            x0, [fp, #-8]
    // 0x6d26c4: stur            x1, [fp, #-0x10]
    // 0x6d26c8: StoreField: r1->field_f = r0
    //     0x6d26c8: stur            w0, [x1, #0xf]
    // 0x6d26cc: LoadField: r2 = r0->field_f
    //     0x6d26cc: ldur            w2, [x0, #0xf]
    // 0x6d26d0: DecompressPointer r2
    //     0x6d26d0: add             x2, x2, HEAP, lsl #32
    // 0x6d26d4: cmp             w2, NULL
    // 0x6d26d8: b.eq            #0x6d28c0
    // 0x6d26dc: r16 = <EventProvider>
    //     0x6d26dc: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b80] TypeArguments: <EventProvider>
    //     0x6d26e0: ldr             x16, [x16, #0xb80]
    // 0x6d26e4: stp             x2, x16, [SP]
    // 0x6d26e8: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6d26e8: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6d26ec: r0 = ReadContext.read()
    //     0x6d26ec: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x6d26f0: ldur            x2, [fp, #-0x10]
    // 0x6d26f4: StoreField: r2->field_13 = r0
    //     0x6d26f4: stur            w0, [x2, #0x13]
    //     0x6d26f8: ldurb           w16, [x2, #-1]
    //     0x6d26fc: ldurb           w17, [x0, #-1]
    //     0x6d2700: and             x16, x17, x16, lsr #2
    //     0x6d2704: tst             x16, HEAP, lsr #32
    //     0x6d2708: b.eq            #0x6d2710
    //     0x6d270c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6d2710: ldur            x0, [fp, #-8]
    // 0x6d2714: LoadField: r1 = r0->field_f
    //     0x6d2714: ldur            w1, [x0, #0xf]
    // 0x6d2718: DecompressPointer r1
    //     0x6d2718: add             x1, x1, HEAP, lsl #32
    // 0x6d271c: stur            x1, [fp, #-0x20]
    // 0x6d2720: cmp             w1, NULL
    // 0x6d2724: b.eq            #0x6d28c4
    // 0x6d2728: LoadField: r3 = r0->field_13
    //     0x6d2728: ldur            w3, [x0, #0x13]
    // 0x6d272c: DecompressPointer r3
    //     0x6d272c: add             x3, x3, HEAP, lsl #32
    // 0x6d2730: r16 = Sentinel
    //     0x6d2730: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x6d2734: cmp             w3, w16
    // 0x6d2738: b.eq            #0x6d28c8
    // 0x6d273c: stur            x3, [fp, #-0x18]
    // 0x6d2740: r0 = DateTime()
    //     0x6d2740: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6d2744: mov             x1, x0
    // 0x6d2748: r0 = false
    //     0x6d2748: add             x0, NULL, #0x30  ; false
    // 0x6d274c: stur            x1, [fp, #-8]
    // 0x6d2750: StoreField: r1->field_7 = r0
    //     0x6d2750: stur            w0, [x1, #7]
    // 0x6d2754: r0 = _getCurrentMicros()
    //     0x6d2754: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x6d2758: r1 = LoadInt32Instr(r0)
    //     0x6d2758: sbfx            x1, x0, #1, #0x1f
    //     0x6d275c: tbz             w0, #0, #0x6d2764
    //     0x6d2760: ldur            x1, [x0, #7]
    // 0x6d2764: ldur            x0, [fp, #-8]
    // 0x6d2768: StoreField: r0->field_b = r1
    //     0x6d2768: stur            x1, [x0, #0xb]
    // 0x6d276c: mov             x1, x0
    // 0x6d2770: r0 = _parts()
    //     0x6d2770: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6d2774: mov             x2, x0
    // 0x6d2778: LoadField: r0 = r2->field_b
    //     0x6d2778: ldur            w0, [x2, #0xb]
    // 0x6d277c: r1 = LoadInt32Instr(r0)
    //     0x6d277c: sbfx            x1, x0, #1, #0x1f
    // 0x6d2780: mov             x0, x1
    // 0x6d2784: r1 = 8
    //     0x6d2784: mov             x1, #8
    // 0x6d2788: cmp             x1, x0
    // 0x6d278c: b.hs            #0x6d28d4
    // 0x6d2790: LoadField: r0 = r2->field_2f
    //     0x6d2790: ldur            w0, [x2, #0x2f]
    // 0x6d2794: DecompressPointer r0
    //     0x6d2794: add             x0, x0, HEAP, lsl #32
    // 0x6d2798: r2 = LoadInt32Instr(r0)
    //     0x6d2798: sbfx            x2, x0, #1, #0x1f
    //     0x6d279c: tbz             w0, #0, #0x6d27a4
    //     0x6d27a0: ldur            x2, [x0, #7]
    // 0x6d27a4: stur            x2, [fp, #-0x28]
    // 0x6d27a8: r0 = DateTime()
    //     0x6d27a8: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6d27ac: mov             x1, x0
    // 0x6d27b0: ldur            x2, [fp, #-0x28]
    // 0x6d27b4: stur            x0, [fp, #-8]
    // 0x6d27b8: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6d27b8: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6d27bc: r0 = DateTime()
    //     0x6d27bc: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x6d27c0: r0 = DateTime()
    //     0x6d27c0: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6d27c4: mov             x1, x0
    // 0x6d27c8: r0 = false
    //     0x6d27c8: add             x0, NULL, #0x30  ; false
    // 0x6d27cc: stur            x1, [fp, #-0x30]
    // 0x6d27d0: StoreField: r1->field_7 = r0
    //     0x6d27d0: stur            w0, [x1, #7]
    // 0x6d27d4: r0 = _getCurrentMicros()
    //     0x6d27d4: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x6d27d8: r1 = LoadInt32Instr(r0)
    //     0x6d27d8: sbfx            x1, x0, #1, #0x1f
    //     0x6d27dc: tbz             w0, #0, #0x6d27e4
    //     0x6d27e0: ldur            x1, [x0, #7]
    // 0x6d27e4: ldur            x0, [fp, #-0x30]
    // 0x6d27e8: StoreField: r0->field_b = r1
    //     0x6d27e8: stur            x1, [x0, #0xb]
    // 0x6d27ec: mov             x1, x0
    // 0x6d27f0: r0 = _parts()
    //     0x6d27f0: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6d27f4: mov             x2, x0
    // 0x6d27f8: LoadField: r0 = r2->field_b
    //     0x6d27f8: ldur            w0, [x2, #0xb]
    // 0x6d27fc: r1 = LoadInt32Instr(r0)
    //     0x6d27fc: sbfx            x1, x0, #1, #0x1f
    // 0x6d2800: mov             x0, x1
    // 0x6d2804: r1 = 8
    //     0x6d2804: mov             x1, #8
    // 0x6d2808: cmp             x1, x0
    // 0x6d280c: b.hs            #0x6d28d8
    // 0x6d2810: LoadField: r0 = r2->field_2f
    //     0x6d2810: ldur            w0, [x2, #0x2f]
    // 0x6d2814: DecompressPointer r0
    //     0x6d2814: add             x0, x0, HEAP, lsl #32
    // 0x6d2818: r1 = LoadInt32Instr(r0)
    //     0x6d2818: sbfx            x1, x0, #1, #0x1f
    //     0x6d281c: tbz             w0, #0, #0x6d2824
    //     0x6d2820: ldur            x1, [x0, #7]
    // 0x6d2824: add             x2, x1, #1
    // 0x6d2828: stur            x2, [fp, #-0x28]
    // 0x6d282c: r0 = DateTime()
    //     0x6d282c: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6d2830: mov             x1, x0
    // 0x6d2834: ldur            x2, [fp, #-0x28]
    // 0x6d2838: stur            x0, [fp, #-0x30]
    // 0x6d283c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6d283c: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6d2840: r0 = DateTime()
    //     0x6d2840: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x6d2844: r1 = Function '<anonymous closure>':.
    //     0x6d2844: add             x1, PP, #0x15, lsl #12  ; [pp+0x151e0] AnonymousClosure: (0x6d25c0), in [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_showDatePicker (0x6d2698)
    //     0x6d2848: ldr             x1, [x1, #0x1e0]
    // 0x6d284c: r2 = Null
    //     0x6d284c: mov             x2, NULL
    // 0x6d2850: r0 = AllocateClosure()
    //     0x6d2850: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d2854: r16 = Instance_Locale
    //     0x6d2854: add             x16, PP, #0x15, lsl #12  ; [pp+0x151e8] Obj!Locale@a21421
    //     0x6d2858: ldr             x16, [x16, #0x1e8]
    // 0x6d285c: stp             x0, x16, [SP]
    // 0x6d2860: ldur            x1, [fp, #-0x20]
    // 0x6d2864: ldur            x2, [fp, #-8]
    // 0x6d2868: ldur            x3, [fp, #-0x18]
    // 0x6d286c: ldur            x5, [fp, #-0x30]
    // 0x6d2870: r4 = const [0, 0x6, 0x2, 0x4, builder, 0x5, locale, 0x4, null]
    //     0x6d2870: add             x4, PP, #0x15, lsl #12  ; [pp+0x151f0] List(9) [0, 0x6, 0x2, 0x4, "builder", 0x5, "locale", 0x4, Null]
    //     0x6d2874: ldr             x4, [x4, #0x1f0]
    // 0x6d2878: r0 = showDatePicker()
    //     0x6d2878: bl              #0x6d2148  ; [package:flutter/src/material/date_picker.dart] ::showDatePicker
    // 0x6d287c: ldur            x2, [fp, #-0x10]
    // 0x6d2880: r1 = Function '<anonymous closure>':.
    //     0x6d2880: add             x1, PP, #0x15, lsl #12  ; [pp+0x151f8] AnonymousClosure: (0x6d28dc), in [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_showDatePicker (0x6d2698)
    //     0x6d2884: ldr             x1, [x1, #0x1f8]
    // 0x6d2888: stur            x0, [fp, #-8]
    // 0x6d288c: r0 = AllocateClosure()
    //     0x6d288c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d2890: r16 = <Null?>
    //     0x6d2890: ldr             x16, [PP, #0x12a8]  ; [pp+0x12a8] TypeArguments: <Null?>
    // 0x6d2894: ldur            lr, [fp, #-8]
    // 0x6d2898: stp             lr, x16, [SP, #8]
    // 0x6d289c: str             x0, [SP]
    // 0x6d28a0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6d28a0: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6d28a4: r0 = then()
    //     0x6d28a4: bl              #0x8bebc4  ; [dart:async] _Future::then
    // 0x6d28a8: r0 = Null
    //     0x6d28a8: mov             x0, NULL
    // 0x6d28ac: LeaveFrame
    //     0x6d28ac: mov             SP, fp
    //     0x6d28b0: ldp             fp, lr, [SP], #0x10
    // 0x6d28b4: ret
    //     0x6d28b4: ret             
    // 0x6d28b8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d28b8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d28bc: b               #0x6d26b4
    // 0x6d28c0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6d28c0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6d28c4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6d28c4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6d28c8: r9 = _currentDate
    //     0x6d28c8: add             x9, PP, #0x14, lsl #12  ; [pp+0x14f10] Field <TakvimScreenState._currentDate@938372397>: late (offset: 0x14)
    //     0x6d28cc: ldr             x9, [x9, #0xf10]
    // 0x6d28d0: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x6d28d0: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x6d28d4: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6d28d4: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6d28d8: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6d28d8: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] Null <anonymous closure>(dynamic, DateTime?) {
    // ** addr: 0x6d28dc, size: 0xac
    // 0x6d28dc: EnterFrame
    //     0x6d28dc: stp             fp, lr, [SP, #-0x10]!
    //     0x6d28e0: mov             fp, SP
    // 0x6d28e4: AllocStack(0x18)
    //     0x6d28e4: sub             SP, SP, #0x18
    // 0x6d28e8: SetupParameters([dynamic _ /* r0 */])
    //     0x6d28e8: ldr             x0, [fp, #0x18]
    //     0x6d28ec: ldur            w1, [x0, #0x17]
    //     0x6d28f0: add             x1, x1, HEAP, lsl #32
    //     0x6d28f4: stur            x1, [fp, #-8]
    // 0x6d28f8: CheckStackOverflow
    //     0x6d28f8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d28fc: cmp             SP, x16
    //     0x6d2900: b.ls            #0x6d2980
    // 0x6d2904: r1 = 1
    //     0x6d2904: mov             x1, #1
    // 0x6d2908: r0 = AllocateContext()
    //     0x6d2908: bl              #0x927010  ; AllocateContextStub
    // 0x6d290c: mov             x3, x0
    // 0x6d2910: ldur            x0, [fp, #-8]
    // 0x6d2914: stur            x3, [fp, #-0x18]
    // 0x6d2918: StoreField: r3->field_b = r0
    //     0x6d2918: stur            w0, [x3, #0xb]
    // 0x6d291c: ldr             x1, [fp, #0x10]
    // 0x6d2920: StoreField: r3->field_f = r1
    //     0x6d2920: stur            w1, [x3, #0xf]
    // 0x6d2924: cmp             w1, NULL
    // 0x6d2928: b.eq            #0x6d2970
    // 0x6d292c: LoadField: r4 = r0->field_f
    //     0x6d292c: ldur            w4, [x0, #0xf]
    // 0x6d2930: DecompressPointer r4
    //     0x6d2930: add             x4, x4, HEAP, lsl #32
    // 0x6d2934: mov             x2, x3
    // 0x6d2938: stur            x4, [fp, #-0x10]
    // 0x6d293c: r1 = Function '<anonymous closure>':.
    //     0x6d293c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15200] AnonymousClosure: (0x6d2988), in [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_showDatePicker (0x6d2698)
    //     0x6d2940: ldr             x1, [x1, #0x200]
    // 0x6d2944: r0 = AllocateClosure()
    //     0x6d2944: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d2948: ldur            x1, [fp, #-0x10]
    // 0x6d294c: mov             x2, x0
    // 0x6d2950: r0 = setState()
    //     0x6d2950: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6d2954: ldur            x0, [fp, #-8]
    // 0x6d2958: LoadField: r1 = r0->field_13
    //     0x6d2958: ldur            w1, [x0, #0x13]
    // 0x6d295c: DecompressPointer r1
    //     0x6d295c: add             x1, x1, HEAP, lsl #32
    // 0x6d2960: ldur            x0, [fp, #-0x18]
    // 0x6d2964: LoadField: r2 = r0->field_f
    //     0x6d2964: ldur            w2, [x0, #0xf]
    // 0x6d2968: DecompressPointer r2
    //     0x6d2968: add             x2, x2, HEAP, lsl #32
    // 0x6d296c: r0 = selectDate()
    //     0x6d296c: bl              #0x6d1f1c  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::selectDate
    // 0x6d2970: r0 = Null
    //     0x6d2970: mov             x0, NULL
    // 0x6d2974: LeaveFrame
    //     0x6d2974: mov             SP, fp
    //     0x6d2978: ldp             fp, lr, [SP], #0x10
    // 0x6d297c: ret
    //     0x6d297c: ret             
    // 0x6d2980: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d2980: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d2984: b               #0x6d2904
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6d2988, size: 0x50
    // 0x6d2988: ldr             x1, [SP]
    // 0x6d298c: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6d298c: ldur            w2, [x1, #0x17]
    // 0x6d2990: DecompressPointer r2
    //     0x6d2990: add             x2, x2, HEAP, lsl #32
    // 0x6d2994: LoadField: r1 = r2->field_b
    //     0x6d2994: ldur            w1, [x2, #0xb]
    // 0x6d2998: DecompressPointer r1
    //     0x6d2998: add             x1, x1, HEAP, lsl #32
    // 0x6d299c: LoadField: r3 = r1->field_f
    //     0x6d299c: ldur            w3, [x1, #0xf]
    // 0x6d29a0: DecompressPointer r3
    //     0x6d29a0: add             x3, x3, HEAP, lsl #32
    // 0x6d29a4: LoadField: r0 = r2->field_f
    //     0x6d29a4: ldur            w0, [x2, #0xf]
    // 0x6d29a8: DecompressPointer r0
    //     0x6d29a8: add             x0, x0, HEAP, lsl #32
    // 0x6d29ac: StoreField: r3->field_13 = r0
    //     0x6d29ac: stur            w0, [x3, #0x13]
    //     0x6d29b0: ldurb           w16, [x3, #-1]
    //     0x6d29b4: ldurb           w17, [x0, #-1]
    //     0x6d29b8: and             x16, x17, x16, lsr #2
    //     0x6d29bc: tst             x16, HEAP, lsr #32
    //     0x6d29c0: b.eq            #0x6d29d0
    //     0x6d29c4: str             lr, [SP, #-8]!
    //     0x6d29c8: bl              #0x9267d0  ; WriteBarrierWrappersStub
    //     0x6d29cc: ldr             lr, [SP], #8
    // 0x6d29d0: r0 = Null
    //     0x6d29d0: mov             x0, NULL
    // 0x6d29d4: ret
    //     0x6d29d4: ret             
  }
  [closure] void _showDatePicker(dynamic) {
    // ** addr: 0x6d29d8, size: 0x38
    // 0x6d29d8: EnterFrame
    //     0x6d29d8: stp             fp, lr, [SP, #-0x10]!
    //     0x6d29dc: mov             fp, SP
    // 0x6d29e0: ldr             x0, [fp, #0x10]
    // 0x6d29e4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6d29e4: ldur            w1, [x0, #0x17]
    // 0x6d29e8: DecompressPointer r1
    //     0x6d29e8: add             x1, x1, HEAP, lsl #32
    // 0x6d29ec: CheckStackOverflow
    //     0x6d29ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d29f0: cmp             SP, x16
    //     0x6d29f4: b.ls            #0x6d2a08
    // 0x6d29f8: r0 = _showDatePicker()
    //     0x6d29f8: bl              #0x6d2698  ; [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_showDatePicker
    // 0x6d29fc: LeaveFrame
    //     0x6d29fc: mov             SP, fp
    //     0x6d2a00: ldp             fp, lr, [SP], #0x10
    // 0x6d2a04: ret
    //     0x6d2a04: ret             
    // 0x6d2a08: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d2a08: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d2a0c: b               #0x6d29f8
  }
  _ build(/* No info */) {
    // ** addr: 0x7360b8, size: 0x198
    // 0x7360b8: EnterFrame
    //     0x7360b8: stp             fp, lr, [SP, #-0x10]!
    //     0x7360bc: mov             fp, SP
    // 0x7360c0: AllocStack(0x30)
    //     0x7360c0: sub             SP, SP, #0x30
    // 0x7360c4: SetupParameters(TakvimScreenState this /* r1 => r1, fp-0x8 */)
    //     0x7360c4: stur            x1, [fp, #-8]
    // 0x7360c8: CheckStackOverflow
    //     0x7360c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7360cc: cmp             SP, x16
    //     0x7360d0: b.ls            #0x736248
    // 0x7360d4: r1 = 1
    //     0x7360d4: mov             x1, #1
    // 0x7360d8: r0 = AllocateContext()
    //     0x7360d8: bl              #0x927010  ; AllocateContextStub
    // 0x7360dc: mov             x1, x0
    // 0x7360e0: ldur            x0, [fp, #-8]
    // 0x7360e4: stur            x1, [fp, #-0x10]
    // 0x7360e8: StoreField: r1->field_f = r0
    //     0x7360e8: stur            w0, [x1, #0xf]
    // 0x7360ec: r0 = TextStyle()
    //     0x7360ec: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7360f0: mov             x1, x0
    // 0x7360f4: r0 = true
    //     0x7360f4: add             x0, NULL, #0x20  ; true
    // 0x7360f8: stur            x1, [fp, #-8]
    // 0x7360fc: StoreField: r1->field_7 = r0
    //     0x7360fc: stur            w0, [x1, #7]
    // 0x736100: r2 = Instance_Color
    //     0x736100: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x736104: ldr             x2, [x2, #0xb88]
    // 0x736108: StoreField: r1->field_b = r2
    //     0x736108: stur            w2, [x1, #0xb]
    // 0x73610c: r2 = 24.000000
    //     0x73610c: add             x2, PP, #0xc, lsl #12  ; [pp+0xcf28] 24
    //     0x736110: ldr             x2, [x2, #0xf28]
    // 0x736114: StoreField: r1->field_1f = r2
    //     0x736114: stur            w2, [x1, #0x1f]
    // 0x736118: r2 = Instance_FontWeight
    //     0x736118: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x73611c: ldr             x2, [x2, #0x1d0]
    // 0x736120: StoreField: r1->field_23 = r2
    //     0x736120: stur            w2, [x1, #0x23]
    // 0x736124: r0 = Text()
    //     0x736124: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x736128: mov             x1, x0
    // 0x73612c: r0 = "Program Takvimi"
    //     0x73612c: add             x0, PP, #0x14, lsl #12  ; [pp+0x14e78] "Program Takvimi"
    //     0x736130: ldr             x0, [x0, #0xe78]
    // 0x736134: stur            x1, [fp, #-0x18]
    // 0x736138: StoreField: r1->field_b = r0
    //     0x736138: stur            w0, [x1, #0xb]
    // 0x73613c: ldur            x0, [fp, #-8]
    // 0x736140: StoreField: r1->field_13 = r0
    //     0x736140: stur            w0, [x1, #0x13]
    // 0x736144: r0 = AppBar()
    //     0x736144: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x736148: stur            x0, [fp, #-8]
    // 0x73614c: r16 = 0.000000
    //     0x73614c: ldr             x16, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x736150: r30 = Instance_Color
    //     0x736150: add             lr, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x736154: ldr             lr, [lr, #0x860]
    // 0x736158: stp             lr, x16, [SP, #8]
    // 0x73615c: r16 = false
    //     0x73615c: add             x16, NULL, #0x30  ; false
    // 0x736160: str             x16, [SP]
    // 0x736164: mov             x1, x0
    // 0x736168: ldur            x2, [fp, #-0x18]
    // 0x73616c: r4 = const [0, 0x5, 0x3, 0x2, backgroundColor, 0x3, centerTitle, 0x4, elevation, 0x2, null]
    //     0x73616c: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e80] List(11) [0, 0x5, 0x3, 0x2, "backgroundColor", 0x3, "centerTitle", 0x4, "elevation", 0x2, Null]
    //     0x736170: ldr             x4, [x4, #0xe80]
    // 0x736174: r0 = AppBar()
    //     0x736174: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x736178: ldur            x2, [fp, #-0x10]
    // 0x73617c: r1 = Function '<anonymous closure>':.
    //     0x73617c: add             x1, PP, #0x14, lsl #12  ; [pp+0x14e88] AnonymousClosure: (0x736250), in [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::build (0x7360b8)
    //     0x736180: ldr             x1, [x1, #0xe88]
    // 0x736184: r0 = AllocateClosure()
    //     0x736184: bl              #0x9273d4  ; AllocateClosureStub
    // 0x736188: r1 = <EventProvider>
    //     0x736188: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b80] TypeArguments: <EventProvider>
    //     0x73618c: ldr             x1, [x1, #0xb80]
    // 0x736190: stur            x0, [fp, #-0x10]
    // 0x736194: r0 = Consumer()
    //     0x736194: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x736198: mov             x1, x0
    // 0x73619c: ldur            x0, [fp, #-0x10]
    // 0x7361a0: stur            x1, [fp, #-0x18]
    // 0x7361a4: StoreField: r1->field_13 = r0
    //     0x7361a4: stur            w0, [x1, #0x13]
    // 0x7361a8: r0 = SafeArea()
    //     0x7361a8: bl              #0x5ea210  ; AllocateSafeAreaStub -> SafeArea (size=0x28)
    // 0x7361ac: mov             x1, x0
    // 0x7361b0: r0 = true
    //     0x7361b0: add             x0, NULL, #0x20  ; true
    // 0x7361b4: stur            x1, [fp, #-0x10]
    // 0x7361b8: StoreField: r1->field_b = r0
    //     0x7361b8: stur            w0, [x1, #0xb]
    // 0x7361bc: StoreField: r1->field_f = r0
    //     0x7361bc: stur            w0, [x1, #0xf]
    // 0x7361c0: StoreField: r1->field_13 = r0
    //     0x7361c0: stur            w0, [x1, #0x13]
    // 0x7361c4: ArrayStore: r1[0] = r0  ; List_4
    //     0x7361c4: stur            w0, [x1, #0x17]
    // 0x7361c8: r2 = Instance_EdgeInsets
    //     0x7361c8: ldr             x2, [PP, #0x5140]  ; [pp+0x5140] Obj!EdgeInsets@a0bcc1
    // 0x7361cc: StoreField: r1->field_1b = r2
    //     0x7361cc: stur            w2, [x1, #0x1b]
    // 0x7361d0: r2 = false
    //     0x7361d0: add             x2, NULL, #0x30  ; false
    // 0x7361d4: StoreField: r1->field_1f = r2
    //     0x7361d4: stur            w2, [x1, #0x1f]
    // 0x7361d8: ldur            x3, [fp, #-0x18]
    // 0x7361dc: StoreField: r1->field_23 = r3
    //     0x7361dc: stur            w3, [x1, #0x23]
    // 0x7361e0: r0 = Scaffold()
    //     0x7361e0: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x7361e4: ldur            x1, [fp, #-8]
    // 0x7361e8: ArrayStore: r0[0] = r1  ; List_4
    //     0x7361e8: stur            w1, [x0, #0x17]
    // 0x7361ec: ldur            x1, [fp, #-0x10]
    // 0x7361f0: StoreField: r0->field_1b = r1
    //     0x7361f0: stur            w1, [x0, #0x1b]
    // 0x7361f4: r1 = Instance_AlignmentDirectional
    //     0x7361f4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x7361f8: ldr             x1, [x1, #0x350]
    // 0x7361fc: StoreField: r0->field_2f = r1
    //     0x7361fc: stur            w1, [x0, #0x2f]
    // 0x736200: r1 = Instance_Color
    //     0x736200: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x736204: StoreField: r0->field_4f = r1
    //     0x736204: stur            w1, [x0, #0x4f]
    // 0x736208: r1 = true
    //     0x736208: add             x1, NULL, #0x20  ; true
    // 0x73620c: StoreField: r0->field_5f = r1
    //     0x73620c: stur            w1, [x0, #0x5f]
    // 0x736210: r2 = Instance_DragStartBehavior
    //     0x736210: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x736214: StoreField: r0->field_63 = r2
    //     0x736214: stur            w2, [x0, #0x63]
    // 0x736218: r2 = false
    //     0x736218: add             x2, NULL, #0x30  ; false
    // 0x73621c: StoreField: r0->field_b = r2
    //     0x73621c: stur            w2, [x0, #0xb]
    // 0x736220: StoreField: r0->field_f = r1
    //     0x736220: stur            w1, [x0, #0xf]
    // 0x736224: StoreField: r0->field_13 = r2
    //     0x736224: stur            w2, [x0, #0x13]
    // 0x736228: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x736228: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x73622c: ldr             x2, [x2, #0x358]
    // 0x736230: StoreField: r0->field_4b = r2
    //     0x736230: stur            w2, [x0, #0x4b]
    // 0x736234: StoreField: r0->field_6b = r1
    //     0x736234: stur            w1, [x0, #0x6b]
    // 0x736238: StoreField: r0->field_6f = r1
    //     0x736238: stur            w1, [x0, #0x6f]
    // 0x73623c: LeaveFrame
    //     0x73623c: mov             SP, fp
    //     0x736240: ldp             fp, lr, [SP], #0x10
    // 0x736244: ret
    //     0x736244: ret             
    // 0x736248: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x736248: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73624c: b               #0x7360d4
  }
  [closure] Column <anonymous closure>(dynamic, BuildContext, EventProvider, Widget?) {
    // ** addr: 0x736250, size: 0x804
    // 0x736250: EnterFrame
    //     0x736250: stp             fp, lr, [SP, #-0x10]!
    //     0x736254: mov             fp, SP
    // 0x736258: AllocStack(0x68)
    //     0x736258: sub             SP, SP, #0x68
    // 0x73625c: SetupParameters([dynamic _ /* r0 */])
    //     0x73625c: ldr             x0, [fp, #0x28]
    //     0x736260: ldur            w1, [x0, #0x17]
    //     0x736264: add             x1, x1, HEAP, lsl #32
    //     0x736268: stur            x1, [fp, #-8]
    // 0x73626c: CheckStackOverflow
    //     0x73626c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x736270: cmp             SP, x16
    //     0x736274: b.ls            #0x736a2c
    // 0x736278: r1 = 1
    //     0x736278: mov             x1, #1
    // 0x73627c: r0 = AllocateContext()
    //     0x73627c: bl              #0x927010  ; AllocateContextStub
    // 0x736280: mov             x1, x0
    // 0x736284: ldur            x0, [fp, #-8]
    // 0x736288: stur            x1, [fp, #-0x10]
    // 0x73628c: StoreField: r1->field_b = r0
    //     0x73628c: stur            w0, [x1, #0xb]
    // 0x736290: ldr             x2, [fp, #0x18]
    // 0x736294: StoreField: r1->field_f = r2
    //     0x736294: stur            w2, [x1, #0xf]
    // 0x736298: r0 = Radius()
    //     0x736298: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x73629c: d0 = 16.000000
    //     0x73629c: fmov            d0, #16.00000000
    // 0x7362a0: stur            x0, [fp, #-0x18]
    // 0x7362a4: StoreField: r0->field_7 = d0
    //     0x7362a4: stur            d0, [x0, #7]
    // 0x7362a8: StoreField: r0->field_f = d0
    //     0x7362a8: stur            d0, [x0, #0xf]
    // 0x7362ac: r0 = BorderRadius()
    //     0x7362ac: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7362b0: mov             x3, x0
    // 0x7362b4: ldur            x0, [fp, #-0x18]
    // 0x7362b8: stur            x3, [fp, #-0x20]
    // 0x7362bc: StoreField: r3->field_7 = r0
    //     0x7362bc: stur            w0, [x3, #7]
    // 0x7362c0: StoreField: r3->field_b = r0
    //     0x7362c0: stur            w0, [x3, #0xb]
    // 0x7362c4: StoreField: r3->field_f = r0
    //     0x7362c4: stur            w0, [x3, #0xf]
    // 0x7362c8: StoreField: r3->field_13 = r0
    //     0x7362c8: stur            w0, [x3, #0x13]
    // 0x7362cc: r1 = _ConstMap len:12
    //     0x7362cc: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7362d0: r2 = 400
    //     0x7362d0: mov             x2, #0x190
    // 0x7362d4: r0 = []()
    //     0x7362d4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7362d8: cmp             w0, NULL
    // 0x7362dc: b.eq            #0x736a34
    // 0x7362e0: r16 = 1.000000
    //     0x7362e0: ldr             x16, [PP, #0x4ae8]  ; [pp+0x4ae8] 1
    // 0x7362e4: stp             x16, x0, [SP]
    // 0x7362e8: r1 = Null
    //     0x7362e8: mov             x1, NULL
    // 0x7362ec: r4 = const [0, 0x3, 0x2, 0x1, color, 0x1, width, 0x2, null]
    //     0x7362ec: add             x4, PP, #0x12, lsl #12  ; [pp+0x12208] List(9) [0, 0x3, 0x2, 0x1, "color", 0x1, "width", 0x2, Null]
    //     0x7362f0: ldr             x4, [x4, #0x208]
    // 0x7362f4: r0 = Border.all()
    //     0x7362f4: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x7362f8: stur            x0, [fp, #-0x18]
    // 0x7362fc: r16 = 0.080000
    //     0x7362fc: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e30] 0.08
    //     0x736300: ldr             x16, [x16, #0xe30]
    // 0x736304: str             x16, [SP]
    // 0x736308: r1 = Instance_Color
    //     0x736308: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x73630c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x73630c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x736310: ldr             x4, [x4, #0x198]
    // 0x736314: r0 = withValues()
    //     0x736314: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x736318: stur            x0, [fp, #-0x28]
    // 0x73631c: r0 = BoxShadow()
    //     0x73631c: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x736320: d0 = 2.000000
    //     0x736320: fmov            d0, #2.00000000
    // 0x736324: stur            x0, [fp, #-0x30]
    // 0x736328: ArrayStore: r0[0] = d0  ; List_8
    //     0x736328: stur            d0, [x0, #0x17]
    // 0x73632c: r2 = Instance_BlurStyle
    //     0x73632c: add             x2, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x736330: ldr             x2, [x2, #0x9b0]
    // 0x736334: StoreField: r0->field_1f = r2
    //     0x736334: stur            w2, [x0, #0x1f]
    // 0x736338: ldur            x1, [fp, #-0x28]
    // 0x73633c: StoreField: r0->field_7 = r1
    //     0x73633c: stur            w1, [x0, #7]
    // 0x736340: r1 = Instance_Offset
    //     0x736340: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b8] Obj!Offset@a26af1
    //     0x736344: ldr             x1, [x1, #0x9b8]
    // 0x736348: StoreField: r0->field_b = r1
    //     0x736348: stur            w1, [x0, #0xb]
    // 0x73634c: d0 = 16.000000
    //     0x73634c: fmov            d0, #16.00000000
    // 0x736350: StoreField: r0->field_f = d0
    //     0x736350: stur            d0, [x0, #0xf]
    // 0x736354: r16 = 0.150000
    //     0x736354: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e38] 0.15
    //     0x736358: ldr             x16, [x16, #0xe38]
    // 0x73635c: str             x16, [SP]
    // 0x736360: r1 = Instance_Color
    //     0x736360: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x736364: ldr             x1, [x1, #0xb78]
    // 0x736368: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x736368: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x73636c: ldr             x4, [x4, #0x198]
    // 0x736370: r0 = withValues()
    //     0x736370: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x736374: stur            x0, [fp, #-0x28]
    // 0x736378: r0 = BoxShadow()
    //     0x736378: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x73637c: stur            x0, [fp, #-0x38]
    // 0x736380: ArrayStore: r0[0] = rZR  ; List_8
    //     0x736380: stur            xzr, [x0, #0x17]
    // 0x736384: r1 = Instance_BlurStyle
    //     0x736384: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x736388: ldr             x1, [x1, #0x9b0]
    // 0x73638c: StoreField: r0->field_1f = r1
    //     0x73638c: stur            w1, [x0, #0x1f]
    // 0x736390: ldur            x1, [fp, #-0x28]
    // 0x736394: StoreField: r0->field_7 = r1
    //     0x736394: stur            w1, [x0, #7]
    // 0x736398: r1 = Instance_Offset
    //     0x736398: add             x1, PP, #0x14, lsl #12  ; [pp+0x14e40] Obj!Offset@a26a51
    //     0x73639c: ldr             x1, [x1, #0xe40]
    // 0x7363a0: StoreField: r0->field_b = r1
    //     0x7363a0: stur            w1, [x0, #0xb]
    // 0x7363a4: d0 = 24.000000
    //     0x7363a4: fmov            d0, #24.00000000
    // 0x7363a8: StoreField: r0->field_f = d0
    //     0x7363a8: stur            d0, [x0, #0xf]
    // 0x7363ac: r1 = Null
    //     0x7363ac: mov             x1, NULL
    // 0x7363b0: r2 = 4
    //     0x7363b0: mov             x2, #4
    // 0x7363b4: r0 = AllocateArray()
    //     0x7363b4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7363b8: mov             x2, x0
    // 0x7363bc: ldur            x0, [fp, #-0x30]
    // 0x7363c0: stur            x2, [fp, #-0x28]
    // 0x7363c4: StoreField: r2->field_f = r0
    //     0x7363c4: stur            w0, [x2, #0xf]
    // 0x7363c8: ldur            x0, [fp, #-0x38]
    // 0x7363cc: StoreField: r2->field_13 = r0
    //     0x7363cc: stur            w0, [x2, #0x13]
    // 0x7363d0: r1 = <BoxShadow>
    //     0x7363d0: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x7363d4: ldr             x1, [x1, #0x9c0]
    // 0x7363d8: r0 = AllocateGrowableArray()
    //     0x7363d8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7363dc: mov             x1, x0
    // 0x7363e0: ldur            x0, [fp, #-0x28]
    // 0x7363e4: stur            x1, [fp, #-0x30]
    // 0x7363e8: StoreField: r1->field_f = r0
    //     0x7363e8: stur            w0, [x1, #0xf]
    // 0x7363ec: r2 = 4
    //     0x7363ec: mov             x2, #4
    // 0x7363f0: StoreField: r1->field_b = r2
    //     0x7363f0: stur            w2, [x1, #0xb]
    // 0x7363f4: r0 = BoxDecoration()
    //     0x7363f4: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7363f8: mov             x3, x0
    // 0x7363fc: r0 = Instance_Color
    //     0x7363fc: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x736400: stur            x3, [fp, #-0x28]
    // 0x736404: StoreField: r3->field_7 = r0
    //     0x736404: stur            w0, [x3, #7]
    // 0x736408: ldur            x0, [fp, #-0x18]
    // 0x73640c: StoreField: r3->field_f = r0
    //     0x73640c: stur            w0, [x3, #0xf]
    // 0x736410: ldur            x0, [fp, #-0x20]
    // 0x736414: StoreField: r3->field_13 = r0
    //     0x736414: stur            w0, [x3, #0x13]
    // 0x736418: ldur            x0, [fp, #-0x30]
    // 0x73641c: ArrayStore: r3[0] = r0  ; List_4
    //     0x73641c: stur            w0, [x3, #0x17]
    // 0x736420: r0 = Instance_BoxShape
    //     0x736420: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x736424: ldr             x0, [x0, #0x1c8]
    // 0x736428: StoreField: r3->field_23 = r0
    //     0x736428: stur            w0, [x3, #0x23]
    // 0x73642c: ldur            x0, [fp, #-8]
    // 0x736430: LoadField: r1 = r0->field_f
    //     0x736430: ldur            w1, [x0, #0xf]
    // 0x736434: DecompressPointer r1
    //     0x736434: add             x1, x1, HEAP, lsl #32
    // 0x736438: LoadField: r2 = r1->field_13
    //     0x736438: ldur            w2, [x1, #0x13]
    // 0x73643c: DecompressPointer r2
    //     0x73643c: add             x2, x2, HEAP, lsl #32
    // 0x736440: r16 = Sentinel
    //     0x736440: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x736444: cmp             w2, w16
    // 0x736448: b.eq            #0x736a38
    // 0x73644c: r0 = _formatDayOfWeek()
    //     0x73644c: bl              #0x7370dc  ; [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_formatDayOfWeek
    // 0x736450: r1 = _ConstMap len:12
    //     0x736450: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x736454: r2 = 1200
    //     0x736454: mov             x2, #0x4b0
    // 0x736458: stur            x0, [fp, #-0x18]
    // 0x73645c: r0 = []()
    //     0x73645c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x736460: stur            x0, [fp, #-0x20]
    // 0x736464: cmp             w0, NULL
    // 0x736468: b.eq            #0x736a44
    // 0x73646c: r0 = TextStyle()
    //     0x73646c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x736470: r3 = true
    //     0x736470: add             x3, NULL, #0x20  ; true
    // 0x736474: stur            x0, [fp, #-0x30]
    // 0x736478: StoreField: r0->field_7 = r3
    //     0x736478: stur            w3, [x0, #7]
    // 0x73647c: ldur            x1, [fp, #-0x20]
    // 0x736480: StoreField: r0->field_b = r1
    //     0x736480: stur            w1, [x0, #0xb]
    // 0x736484: r1 = 13.000000
    //     0x736484: add             x1, PP, #0x13, lsl #12  ; [pp+0x13b00] 13
    //     0x736488: ldr             x1, [x1, #0xb00]
    // 0x73648c: StoreField: r0->field_1f = r1
    //     0x73648c: stur            w1, [x0, #0x1f]
    // 0x736490: r1 = Instance_FontWeight
    //     0x736490: add             x1, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x736494: ldr             x1, [x1, #0x990]
    // 0x736498: StoreField: r0->field_23 = r1
    //     0x736498: stur            w1, [x0, #0x23]
    // 0x73649c: r1 = 0.400000
    //     0x73649c: add             x1, PP, #0x14, lsl #12  ; [pp+0x14e90] 0.4
    //     0x7364a0: ldr             x1, [x1, #0xe90]
    // 0x7364a4: StoreField: r0->field_2b = r1
    //     0x7364a4: stur            w1, [x0, #0x2b]
    // 0x7364a8: r0 = Text()
    //     0x7364a8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7364ac: mov             x3, x0
    // 0x7364b0: ldur            x0, [fp, #-0x18]
    // 0x7364b4: stur            x3, [fp, #-0x20]
    // 0x7364b8: StoreField: r3->field_b = r0
    //     0x7364b8: stur            w0, [x3, #0xb]
    // 0x7364bc: ldur            x0, [fp, #-0x30]
    // 0x7364c0: StoreField: r3->field_13 = r0
    //     0x7364c0: stur            w0, [x3, #0x13]
    // 0x7364c4: ldur            x0, [fp, #-8]
    // 0x7364c8: LoadField: r1 = r0->field_f
    //     0x7364c8: ldur            w1, [x0, #0xf]
    // 0x7364cc: DecompressPointer r1
    //     0x7364cc: add             x1, x1, HEAP, lsl #32
    // 0x7364d0: LoadField: r2 = r1->field_13
    //     0x7364d0: ldur            w2, [x1, #0x13]
    // 0x7364d4: DecompressPointer r2
    //     0x7364d4: add             x2, x2, HEAP, lsl #32
    // 0x7364d8: r16 = Sentinel
    //     0x7364d8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x7364dc: cmp             w2, w16
    // 0x7364e0: b.eq            #0x736a48
    // 0x7364e4: r0 = _formatDate()
    //     0x7364e4: bl              #0x737078  ; [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_formatDate
    // 0x7364e8: stur            x0, [fp, #-0x18]
    // 0x7364ec: r0 = Text()
    //     0x7364ec: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7364f0: mov             x3, x0
    // 0x7364f4: ldur            x0, [fp, #-0x18]
    // 0x7364f8: stur            x3, [fp, #-0x30]
    // 0x7364fc: StoreField: r3->field_b = r0
    //     0x7364fc: stur            w0, [x3, #0xb]
    // 0x736500: r0 = Instance_TextStyle
    //     0x736500: add             x0, PP, #0x14, lsl #12  ; [pp+0x14e98] Obj!TextStyle@a17591
    //     0x736504: ldr             x0, [x0, #0xe98]
    // 0x736508: StoreField: r3->field_13 = r0
    //     0x736508: stur            w0, [x3, #0x13]
    // 0x73650c: ldur            x0, [fp, #-8]
    // 0x736510: LoadField: r4 = r0->field_f
    //     0x736510: ldur            w4, [x0, #0xf]
    // 0x736514: DecompressPointer r4
    //     0x736514: add             x4, x4, HEAP, lsl #32
    // 0x736518: mov             x2, x4
    // 0x73651c: stur            x4, [fp, #-0x18]
    // 0x736520: r1 = Function '_previousDay@938372397':.
    //     0x736520: add             x1, PP, #0x14, lsl #12  ; [pp+0x14ea0] AnonymousClosure: (0x738074), in [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_previousDay (0x7380ac)
    //     0x736524: ldr             x1, [x1, #0xea0]
    // 0x736528: r0 = AllocateClosure()
    //     0x736528: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73652c: ldur            x1, [fp, #-0x18]
    // 0x736530: mov             x6, x0
    // 0x736534: r2 = Instance_IconData
    //     0x736534: add             x2, PP, #0x14, lsl #12  ; [pp+0x14ea8] Obj!IconData@a09b41
    //     0x736538: ldr             x2, [x2, #0xea8]
    // 0x73653c: r3 = false
    //     0x73653c: add             x3, NULL, #0x30  ; false
    // 0x736540: r5 = "Önceki"
    //     0x736540: add             x5, PP, #0x14, lsl #12  ; [pp+0x14eb0] "Önceki"
    //     0x736544: ldr             x5, [x5, #0xeb0]
    // 0x736548: r0 = _buildNavButton()
    //     0x736548: bl              #0x736cec  ; [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_buildNavButton
    // 0x73654c: r1 = <FlexParentData>
    //     0x73654c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x736550: ldr             x1, [x1, #0x340]
    // 0x736554: stur            x0, [fp, #-0x18]
    // 0x736558: r0 = Expanded()
    //     0x736558: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x73655c: mov             x3, x0
    // 0x736560: r0 = 1
    //     0x736560: mov             x0, #1
    // 0x736564: stur            x3, [fp, #-0x38]
    // 0x736568: StoreField: r3->field_13 = r0
    //     0x736568: stur            x0, [x3, #0x13]
    // 0x73656c: r4 = Instance_FlexFit
    //     0x73656c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x736570: ldr             x4, [x4, #0x348]
    // 0x736574: StoreField: r3->field_1b = r4
    //     0x736574: stur            w4, [x3, #0x1b]
    // 0x736578: ldur            x1, [fp, #-0x18]
    // 0x73657c: StoreField: r3->field_b = r1
    //     0x73657c: stur            w1, [x3, #0xb]
    // 0x736580: ldur            x5, [fp, #-8]
    // 0x736584: LoadField: r6 = r5->field_f
    //     0x736584: ldur            w6, [x5, #0xf]
    // 0x736588: DecompressPointer r6
    //     0x736588: add             x6, x6, HEAP, lsl #32
    // 0x73658c: mov             x2, x6
    // 0x736590: stur            x6, [fp, #-0x18]
    // 0x736594: r1 = Function '_showDatePicker@938372397':.
    //     0x736594: add             x1, PP, #0x14, lsl #12  ; [pp+0x14eb8] AnonymousClosure: (0x6d29d8), in [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_showDatePicker (0x6d2698)
    //     0x736598: ldr             x1, [x1, #0xeb8]
    // 0x73659c: r0 = AllocateClosure()
    //     0x73659c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7365a0: ldur            x1, [fp, #-0x18]
    // 0x7365a4: mov             x6, x0
    // 0x7365a8: r2 = Instance_IconData
    //     0x7365a8: add             x2, PP, #0x14, lsl #12  ; [pp+0x14ec0] Obj!IconData@a09e41
    //     0x7365ac: ldr             x2, [x2, #0xec0]
    // 0x7365b0: r3 = false
    //     0x7365b0: add             x3, NULL, #0x30  ; false
    // 0x7365b4: r5 = "Gün Seç"
    //     0x7365b4: add             x5, PP, #0x14, lsl #12  ; [pp+0x14ec8] "Gün Seç"
    //     0x7365b8: ldr             x5, [x5, #0xec8]
    // 0x7365bc: r0 = _buildNavButton()
    //     0x7365bc: bl              #0x736cec  ; [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_buildNavButton
    // 0x7365c0: r1 = <FlexParentData>
    //     0x7365c0: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7365c4: ldr             x1, [x1, #0x340]
    // 0x7365c8: stur            x0, [fp, #-0x18]
    // 0x7365cc: r0 = Expanded()
    //     0x7365cc: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7365d0: mov             x3, x0
    // 0x7365d4: r0 = 1
    //     0x7365d4: mov             x0, #1
    // 0x7365d8: stur            x3, [fp, #-0x40]
    // 0x7365dc: StoreField: r3->field_13 = r0
    //     0x7365dc: stur            x0, [x3, #0x13]
    // 0x7365e0: r4 = Instance_FlexFit
    //     0x7365e0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7365e4: ldr             x4, [x4, #0x348]
    // 0x7365e8: StoreField: r3->field_1b = r4
    //     0x7365e8: stur            w4, [x3, #0x1b]
    // 0x7365ec: ldur            x1, [fp, #-0x18]
    // 0x7365f0: StoreField: r3->field_b = r1
    //     0x7365f0: stur            w1, [x3, #0xb]
    // 0x7365f4: ldur            x5, [fp, #-8]
    // 0x7365f8: LoadField: r6 = r5->field_f
    //     0x7365f8: ldur            w6, [x5, #0xf]
    // 0x7365fc: DecompressPointer r6
    //     0x7365fc: add             x6, x6, HEAP, lsl #32
    // 0x736600: mov             x2, x6
    // 0x736604: stur            x6, [fp, #-0x18]
    // 0x736608: r1 = Function '_nextDay@938372397':.
    //     0x736608: add             x1, PP, #0x14, lsl #12  ; [pp+0x14ed0] AnonymousClosure: (0x737eec), in [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_nextDay (0x737f24)
    //     0x73660c: ldr             x1, [x1, #0xed0]
    // 0x736610: r0 = AllocateClosure()
    //     0x736610: bl              #0x9273d4  ; AllocateClosureStub
    // 0x736614: ldur            x1, [fp, #-0x18]
    // 0x736618: mov             x6, x0
    // 0x73661c: r2 = Instance_IconData
    //     0x73661c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14ed8] Obj!IconData@a09b21
    //     0x736620: ldr             x2, [x2, #0xed8]
    // 0x736624: r3 = true
    //     0x736624: add             x3, NULL, #0x20  ; true
    // 0x736628: r5 = "Sonraki"
    //     0x736628: add             x5, PP, #0x14, lsl #12  ; [pp+0x14ee0] "Sonraki"
    //     0x73662c: ldr             x5, [x5, #0xee0]
    // 0x736630: r0 = _buildNavButton()
    //     0x736630: bl              #0x736cec  ; [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_buildNavButton
    // 0x736634: r1 = <FlexParentData>
    //     0x736634: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x736638: ldr             x1, [x1, #0x340]
    // 0x73663c: stur            x0, [fp, #-0x18]
    // 0x736640: r0 = Expanded()
    //     0x736640: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x736644: mov             x3, x0
    // 0x736648: r0 = 1
    //     0x736648: mov             x0, #1
    // 0x73664c: stur            x3, [fp, #-0x48]
    // 0x736650: StoreField: r3->field_13 = r0
    //     0x736650: stur            x0, [x3, #0x13]
    // 0x736654: r4 = Instance_FlexFit
    //     0x736654: add             x4, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x736658: ldr             x4, [x4, #0x348]
    // 0x73665c: StoreField: r3->field_1b = r4
    //     0x73665c: stur            w4, [x3, #0x1b]
    // 0x736660: ldur            x1, [fp, #-0x18]
    // 0x736664: StoreField: r3->field_b = r1
    //     0x736664: stur            w1, [x3, #0xb]
    // 0x736668: r1 = Null
    //     0x736668: mov             x1, NULL
    // 0x73666c: r2 = 10
    //     0x73666c: mov             x2, #0xa
    // 0x736670: r0 = AllocateArray()
    //     0x736670: bl              #0x9280a0  ; AllocateArrayStub
    // 0x736674: mov             x2, x0
    // 0x736678: ldur            x0, [fp, #-0x38]
    // 0x73667c: stur            x2, [fp, #-0x18]
    // 0x736680: StoreField: r2->field_f = r0
    //     0x736680: stur            w0, [x2, #0xf]
    // 0x736684: r16 = Instance_SizedBox
    //     0x736684: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ee8] Obj!SizedBox@a1fa31
    //     0x736688: ldr             x16, [x16, #0xee8]
    // 0x73668c: StoreField: r2->field_13 = r16
    //     0x73668c: stur            w16, [x2, #0x13]
    // 0x736690: ldur            x0, [fp, #-0x40]
    // 0x736694: ArrayStore: r2[0] = r0  ; List_4
    //     0x736694: stur            w0, [x2, #0x17]
    // 0x736698: r16 = Instance_SizedBox
    //     0x736698: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ee8] Obj!SizedBox@a1fa31
    //     0x73669c: ldr             x16, [x16, #0xee8]
    // 0x7366a0: StoreField: r2->field_1b = r16
    //     0x7366a0: stur            w16, [x2, #0x1b]
    // 0x7366a4: ldur            x0, [fp, #-0x48]
    // 0x7366a8: StoreField: r2->field_1f = r0
    //     0x7366a8: stur            w0, [x2, #0x1f]
    // 0x7366ac: r1 = <Widget>
    //     0x7366ac: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7366b0: r0 = AllocateGrowableArray()
    //     0x7366b0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7366b4: mov             x1, x0
    // 0x7366b8: ldur            x0, [fp, #-0x18]
    // 0x7366bc: stur            x1, [fp, #-0x38]
    // 0x7366c0: StoreField: r1->field_f = r0
    //     0x7366c0: stur            w0, [x1, #0xf]
    // 0x7366c4: r2 = 10
    //     0x7366c4: mov             x2, #0xa
    // 0x7366c8: StoreField: r1->field_b = r2
    //     0x7366c8: stur            w2, [x1, #0xb]
    // 0x7366cc: r0 = Row()
    //     0x7366cc: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7366d0: mov             x3, x0
    // 0x7366d4: r0 = Instance_Axis
    //     0x7366d4: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7366d8: stur            x3, [fp, #-0x18]
    // 0x7366dc: StoreField: r3->field_f = r0
    //     0x7366dc: stur            w0, [x3, #0xf]
    // 0x7366e0: r0 = Instance_MainAxisAlignment
    //     0x7366e0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7366e4: ldr             x0, [x0, #0x230]
    // 0x7366e8: StoreField: r3->field_13 = r0
    //     0x7366e8: stur            w0, [x3, #0x13]
    // 0x7366ec: r4 = Instance_MainAxisSize
    //     0x7366ec: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7366f0: ldr             x4, [x4, #0x330]
    // 0x7366f4: ArrayStore: r3[0] = r4  ; List_4
    //     0x7366f4: stur            w4, [x3, #0x17]
    // 0x7366f8: r5 = Instance_CrossAxisAlignment
    //     0x7366f8: add             x5, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7366fc: ldr             x5, [x5, #0x338]
    // 0x736700: StoreField: r3->field_1b = r5
    //     0x736700: stur            w5, [x3, #0x1b]
    // 0x736704: r6 = Instance_VerticalDirection
    //     0x736704: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x736708: ldr             x6, [x6, #0x340]
    // 0x73670c: StoreField: r3->field_23 = r6
    //     0x73670c: stur            w6, [x3, #0x23]
    // 0x736710: r7 = Instance_Clip
    //     0x736710: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x736714: ldr             x7, [x7, #0x348]
    // 0x736718: StoreField: r3->field_2b = r7
    //     0x736718: stur            w7, [x3, #0x2b]
    // 0x73671c: StoreField: r3->field_2f = rZR
    //     0x73671c: stur            xzr, [x3, #0x2f]
    // 0x736720: ldur            x1, [fp, #-0x38]
    // 0x736724: StoreField: r3->field_b = r1
    //     0x736724: stur            w1, [x3, #0xb]
    // 0x736728: r1 = Null
    //     0x736728: mov             x1, NULL
    // 0x73672c: r2 = 10
    //     0x73672c: mov             x2, #0xa
    // 0x736730: r0 = AllocateArray()
    //     0x736730: bl              #0x9280a0  ; AllocateArrayStub
    // 0x736734: mov             x2, x0
    // 0x736738: ldur            x0, [fp, #-0x20]
    // 0x73673c: stur            x2, [fp, #-0x38]
    // 0x736740: StoreField: r2->field_f = r0
    //     0x736740: stur            w0, [x2, #0xf]
    // 0x736744: r16 = Instance_SizedBox
    //     0x736744: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x736748: ldr             x16, [x16, #0x338]
    // 0x73674c: StoreField: r2->field_13 = r16
    //     0x73674c: stur            w16, [x2, #0x13]
    // 0x736750: ldur            x0, [fp, #-0x30]
    // 0x736754: ArrayStore: r2[0] = r0  ; List_4
    //     0x736754: stur            w0, [x2, #0x17]
    // 0x736758: r16 = Instance_SizedBox
    //     0x736758: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ef0] Obj!SizedBox@a1fa11
    //     0x73675c: ldr             x16, [x16, #0xef0]
    // 0x736760: StoreField: r2->field_1b = r16
    //     0x736760: stur            w16, [x2, #0x1b]
    // 0x736764: ldur            x0, [fp, #-0x18]
    // 0x736768: StoreField: r2->field_1f = r0
    //     0x736768: stur            w0, [x2, #0x1f]
    // 0x73676c: r1 = <Widget>
    //     0x73676c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x736770: r0 = AllocateGrowableArray()
    //     0x736770: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x736774: mov             x1, x0
    // 0x736778: ldur            x0, [fp, #-0x38]
    // 0x73677c: stur            x1, [fp, #-0x18]
    // 0x736780: StoreField: r1->field_f = r0
    //     0x736780: stur            w0, [x1, #0xf]
    // 0x736784: r0 = 10
    //     0x736784: mov             x0, #0xa
    // 0x736788: StoreField: r1->field_b = r0
    //     0x736788: stur            w0, [x1, #0xb]
    // 0x73678c: r0 = Column()
    //     0x73678c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x736790: mov             x1, x0
    // 0x736794: r0 = Instance_Axis
    //     0x736794: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x736798: stur            x1, [fp, #-0x20]
    // 0x73679c: StoreField: r1->field_f = r0
    //     0x73679c: stur            w0, [x1, #0xf]
    // 0x7367a0: r2 = Instance_MainAxisAlignment
    //     0x7367a0: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7367a4: ldr             x2, [x2, #0x230]
    // 0x7367a8: StoreField: r1->field_13 = r2
    //     0x7367a8: stur            w2, [x1, #0x13]
    // 0x7367ac: r3 = Instance_MainAxisSize
    //     0x7367ac: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7367b0: ldr             x3, [x3, #0x330]
    // 0x7367b4: ArrayStore: r1[0] = r3  ; List_4
    //     0x7367b4: stur            w3, [x1, #0x17]
    // 0x7367b8: r4 = Instance_CrossAxisAlignment
    //     0x7367b8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7367bc: ldr             x4, [x4, #0x238]
    // 0x7367c0: StoreField: r1->field_1b = r4
    //     0x7367c0: stur            w4, [x1, #0x1b]
    // 0x7367c4: r4 = Instance_VerticalDirection
    //     0x7367c4: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7367c8: ldr             x4, [x4, #0x340]
    // 0x7367cc: StoreField: r1->field_23 = r4
    //     0x7367cc: stur            w4, [x1, #0x23]
    // 0x7367d0: r5 = Instance_Clip
    //     0x7367d0: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7367d4: ldr             x5, [x5, #0x348]
    // 0x7367d8: StoreField: r1->field_2b = r5
    //     0x7367d8: stur            w5, [x1, #0x2b]
    // 0x7367dc: StoreField: r1->field_2f = rZR
    //     0x7367dc: stur            xzr, [x1, #0x2f]
    // 0x7367e0: ldur            x6, [fp, #-0x18]
    // 0x7367e4: StoreField: r1->field_b = r6
    //     0x7367e4: stur            w6, [x1, #0xb]
    // 0x7367e8: r0 = Container()
    //     0x7367e8: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7367ec: stur            x0, [fp, #-0x18]
    // 0x7367f0: r16 = Instance_EdgeInsets
    //     0x7367f0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x7367f4: ldr             x16, [x16, #0x240]
    // 0x7367f8: ldur            lr, [fp, #-0x28]
    // 0x7367fc: stp             lr, x16, [SP, #8]
    // 0x736800: ldur            x16, [fp, #-0x20]
    // 0x736804: str             x16, [SP]
    // 0x736808: mov             x1, x0
    // 0x73680c: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x73680c: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x736810: ldr             x4, [x4, #0x1e8]
    // 0x736814: r0 = Container()
    //     0x736814: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x736818: r0 = Padding()
    //     0x736818: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x73681c: mov             x1, x0
    // 0x736820: r0 = Instance_EdgeInsets
    //     0x736820: add             x0, PP, #0x14, lsl #12  ; [pp+0x14ef8] Obj!EdgeInsets@a0c2c1
    //     0x736824: ldr             x0, [x0, #0xef8]
    // 0x736828: stur            x1, [fp, #-0x20]
    // 0x73682c: StoreField: r1->field_f = r0
    //     0x73682c: stur            w0, [x1, #0xf]
    // 0x736830: ldur            x0, [fp, #-0x18]
    // 0x736834: StoreField: r1->field_b = r0
    //     0x736834: stur            w0, [x1, #0xb]
    // 0x736838: ldur            x2, [fp, #-0x10]
    // 0x73683c: LoadField: r0 = r2->field_f
    //     0x73683c: ldur            w0, [x2, #0xf]
    // 0x736840: DecompressPointer r0
    //     0x736840: add             x0, x0, HEAP, lsl #32
    // 0x736844: LoadField: r3 = r0->field_27
    //     0x736844: ldur            w3, [x0, #0x27]
    // 0x736848: DecompressPointer r3
    //     0x736848: add             x3, x3, HEAP, lsl #32
    // 0x73684c: tbnz            w3, #4, #0x736898
    // 0x736850: r0 = CircularProgressIndicator()
    //     0x736850: bl              #0x6d15e8  ; AllocateCircularProgressIndicatorStub -> CircularProgressIndicator (size=0x48)
    // 0x736854: mov             x1, x0
    // 0x736858: r0 = Instance__ActivityIndicatorType
    //     0x736858: add             x0, PP, #0x14, lsl #12  ; [pp+0x14f00] Obj!_ActivityIndicatorType@a2b551
    //     0x73685c: ldr             x0, [x0, #0xf00]
    // 0x736860: stur            x1, [fp, #-0x18]
    // 0x736864: StoreField: r1->field_23 = r0
    //     0x736864: stur            w0, [x1, #0x23]
    // 0x736868: r0 = Instance_Color
    //     0x736868: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x73686c: ldr             x0, [x0, #0xb78]
    // 0x736870: StoreField: r1->field_13 = r0
    //     0x736870: stur            w0, [x1, #0x13]
    // 0x736874: r0 = Center()
    //     0x736874: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x736878: mov             x1, x0
    // 0x73687c: r0 = Instance_Alignment
    //     0x73687c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x736880: ldr             x0, [x0, #0x60]
    // 0x736884: StoreField: r1->field_f = r0
    //     0x736884: stur            w0, [x1, #0xf]
    // 0x736888: ldur            x0, [fp, #-0x18]
    // 0x73688c: StoreField: r1->field_b = r0
    //     0x73688c: stur            w0, [x1, #0xb]
    // 0x736890: mov             x2, x1
    // 0x736894: b               #0x736950
    // 0x736898: LoadField: r1 = r0->field_2b
    //     0x736898: ldur            w1, [x0, #0x2b]
    // 0x73689c: DecompressPointer r1
    //     0x73689c: add             x1, x1, HEAP, lsl #32
    // 0x7368a0: r0 = LoadClassIdInstr(r1)
    //     0x7368a0: ldur            x0, [x1, #-1]
    //     0x7368a4: ubfx            x0, x0, #0xc, #0x14
    // 0x7368a8: r0 = GDT[cid_x0 + 0xcda7]()
    //     0x7368a8: mov             x17, #0xcda7
    //     0x7368ac: add             lr, x0, x17
    //     0x7368b0: ldr             lr, [x21, lr, lsl #3]
    //     0x7368b4: blr             lr
    // 0x7368b8: tbnz            w0, #4, #0x7368d0
    // 0x7368bc: ldur            x0, [fp, #-8]
    // 0x7368c0: LoadField: r1 = r0->field_f
    //     0x7368c0: ldur            w1, [x0, #0xf]
    // 0x7368c4: DecompressPointer r1
    //     0x7368c4: add             x1, x1, HEAP, lsl #32
    // 0x7368c8: r0 = _buildEmptyState()
    //     0x7368c8: bl              #0x736a54  ; [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_buildEmptyState
    // 0x7368cc: b               #0x73694c
    // 0x7368d0: ldur            x2, [fp, #-0x10]
    // 0x7368d4: LoadField: r0 = r2->field_f
    //     0x7368d4: ldur            w0, [x2, #0xf]
    // 0x7368d8: DecompressPointer r0
    //     0x7368d8: add             x0, x0, HEAP, lsl #32
    // 0x7368dc: LoadField: r1 = r0->field_2b
    //     0x7368dc: ldur            w1, [x0, #0x2b]
    // 0x7368e0: DecompressPointer r1
    //     0x7368e0: add             x1, x1, HEAP, lsl #32
    // 0x7368e4: r0 = LoadClassIdInstr(r1)
    //     0x7368e4: ldur            x0, [x1, #-1]
    //     0x7368e8: ubfx            x0, x0, #0xc, #0x14
    // 0x7368ec: str             x1, [SP]
    // 0x7368f0: r0 = GDT[cid_x0 + 0x879f]()
    //     0x7368f0: mov             x17, #0x879f
    //     0x7368f4: add             lr, x0, x17
    //     0x7368f8: ldr             lr, [x21, lr, lsl #3]
    //     0x7368fc: blr             lr
    // 0x736900: r3 = LoadInt32Instr(r0)
    //     0x736900: sbfx            x3, x0, #1, #0x1f
    // 0x736904: ldur            x2, [fp, #-0x10]
    // 0x736908: stur            x3, [fp, #-0x50]
    // 0x73690c: r1 = Function '<anonymous closure>':.
    //     0x73690c: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f08] AnonymousClosure: (0x737140), in [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::build (0x7360b8)
    //     0x736910: ldr             x1, [x1, #0xf08]
    // 0x736914: r0 = AllocateClosure()
    //     0x736914: bl              #0x9273d4  ; AllocateClosureStub
    // 0x736918: stur            x0, [fp, #-8]
    // 0x73691c: r0 = ListView()
    //     0x73691c: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x736920: stur            x0, [fp, #-0x10]
    // 0x736924: r16 = Instance_EdgeInsets
    //     0x736924: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x736928: ldr             x16, [x16, #0x240]
    // 0x73692c: str             x16, [SP]
    // 0x736930: mov             x1, x0
    // 0x736934: ldur            x2, [fp, #-8]
    // 0x736938: ldur            x3, [fp, #-0x50]
    // 0x73693c: r4 = const [0, 0x4, 0x1, 0x3, padding, 0x3, null]
    //     0x73693c: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e60] List(7) [0, 0x4, 0x1, 0x3, "padding", 0x3, Null]
    //     0x736940: ldr             x4, [x4, #0xe60]
    // 0x736944: r0 = ListView.builder()
    //     0x736944: bl              #0x6ce4a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.builder
    // 0x736948: ldur            x0, [fp, #-0x10]
    // 0x73694c: mov             x2, x0
    // 0x736950: ldur            x0, [fp, #-0x20]
    // 0x736954: stur            x2, [fp, #-8]
    // 0x736958: r1 = <FlexParentData>
    //     0x736958: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x73695c: ldr             x1, [x1, #0x340]
    // 0x736960: r0 = Expanded()
    //     0x736960: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x736964: mov             x3, x0
    // 0x736968: r0 = 1
    //     0x736968: mov             x0, #1
    // 0x73696c: stur            x3, [fp, #-0x10]
    // 0x736970: StoreField: r3->field_13 = r0
    //     0x736970: stur            x0, [x3, #0x13]
    // 0x736974: r0 = Instance_FlexFit
    //     0x736974: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x736978: ldr             x0, [x0, #0x348]
    // 0x73697c: StoreField: r3->field_1b = r0
    //     0x73697c: stur            w0, [x3, #0x1b]
    // 0x736980: ldur            x0, [fp, #-8]
    // 0x736984: StoreField: r3->field_b = r0
    //     0x736984: stur            w0, [x3, #0xb]
    // 0x736988: r1 = Null
    //     0x736988: mov             x1, NULL
    // 0x73698c: r2 = 4
    //     0x73698c: mov             x2, #4
    // 0x736990: r0 = AllocateArray()
    //     0x736990: bl              #0x9280a0  ; AllocateArrayStub
    // 0x736994: mov             x2, x0
    // 0x736998: ldur            x0, [fp, #-0x20]
    // 0x73699c: stur            x2, [fp, #-8]
    // 0x7369a0: StoreField: r2->field_f = r0
    //     0x7369a0: stur            w0, [x2, #0xf]
    // 0x7369a4: ldur            x0, [fp, #-0x10]
    // 0x7369a8: StoreField: r2->field_13 = r0
    //     0x7369a8: stur            w0, [x2, #0x13]
    // 0x7369ac: r1 = <Widget>
    //     0x7369ac: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7369b0: r0 = AllocateGrowableArray()
    //     0x7369b0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7369b4: mov             x1, x0
    // 0x7369b8: ldur            x0, [fp, #-8]
    // 0x7369bc: stur            x1, [fp, #-0x10]
    // 0x7369c0: StoreField: r1->field_f = r0
    //     0x7369c0: stur            w0, [x1, #0xf]
    // 0x7369c4: r0 = 4
    //     0x7369c4: mov             x0, #4
    // 0x7369c8: StoreField: r1->field_b = r0
    //     0x7369c8: stur            w0, [x1, #0xb]
    // 0x7369cc: r0 = Column()
    //     0x7369cc: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7369d0: r1 = Instance_Axis
    //     0x7369d0: ldr             x1, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7369d4: StoreField: r0->field_f = r1
    //     0x7369d4: stur            w1, [x0, #0xf]
    // 0x7369d8: r1 = Instance_MainAxisAlignment
    //     0x7369d8: add             x1, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7369dc: ldr             x1, [x1, #0x230]
    // 0x7369e0: StoreField: r0->field_13 = r1
    //     0x7369e0: stur            w1, [x0, #0x13]
    // 0x7369e4: r1 = Instance_MainAxisSize
    //     0x7369e4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7369e8: ldr             x1, [x1, #0x330]
    // 0x7369ec: ArrayStore: r0[0] = r1  ; List_4
    //     0x7369ec: stur            w1, [x0, #0x17]
    // 0x7369f0: r1 = Instance_CrossAxisAlignment
    //     0x7369f0: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7369f4: ldr             x1, [x1, #0x338]
    // 0x7369f8: StoreField: r0->field_1b = r1
    //     0x7369f8: stur            w1, [x0, #0x1b]
    // 0x7369fc: r1 = Instance_VerticalDirection
    //     0x7369fc: add             x1, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x736a00: ldr             x1, [x1, #0x340]
    // 0x736a04: StoreField: r0->field_23 = r1
    //     0x736a04: stur            w1, [x0, #0x23]
    // 0x736a08: r1 = Instance_Clip
    //     0x736a08: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x736a0c: ldr             x1, [x1, #0x348]
    // 0x736a10: StoreField: r0->field_2b = r1
    //     0x736a10: stur            w1, [x0, #0x2b]
    // 0x736a14: StoreField: r0->field_2f = rZR
    //     0x736a14: stur            xzr, [x0, #0x2f]
    // 0x736a18: ldur            x1, [fp, #-0x10]
    // 0x736a1c: StoreField: r0->field_b = r1
    //     0x736a1c: stur            w1, [x0, #0xb]
    // 0x736a20: LeaveFrame
    //     0x736a20: mov             SP, fp
    //     0x736a24: ldp             fp, lr, [SP], #0x10
    // 0x736a28: ret
    //     0x736a28: ret             
    // 0x736a2c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x736a2c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x736a30: b               #0x736278
    // 0x736a34: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x736a34: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x736a38: r9 = _currentDate
    //     0x736a38: add             x9, PP, #0x14, lsl #12  ; [pp+0x14f10] Field <TakvimScreenState._currentDate@938372397>: late (offset: 0x14)
    //     0x736a3c: ldr             x9, [x9, #0xf10]
    // 0x736a40: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x736a40: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x736a44: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x736a44: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x736a48: r9 = _currentDate
    //     0x736a48: add             x9, PP, #0x14, lsl #12  ; [pp+0x14f10] Field <TakvimScreenState._currentDate@938372397>: late (offset: 0x14)
    //     0x736a4c: ldr             x9, [x9, #0xf10]
    // 0x736a50: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x736a50: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  _ _buildEmptyState(/* No info */) {
    // ** addr: 0x736a54, size: 0x298
    // 0x736a54: EnterFrame
    //     0x736a54: stp             fp, lr, [SP, #-0x10]!
    //     0x736a58: mov             fp, SP
    // 0x736a5c: AllocStack(0x38)
    //     0x736a5c: sub             SP, SP, #0x38
    // 0x736a60: CheckStackOverflow
    //     0x736a60: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x736a64: cmp             SP, x16
    //     0x736a68: b.ls            #0x736cdc
    // 0x736a6c: r16 = 0.100000
    //     0x736a6c: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x736a70: ldr             x16, [x16, #0x1f8]
    // 0x736a74: str             x16, [SP]
    // 0x736a78: r1 = Instance_Color
    //     0x736a78: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x736a7c: ldr             x1, [x1, #0xb78]
    // 0x736a80: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x736a80: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x736a84: ldr             x4, [x4, #0x198]
    // 0x736a88: r0 = withValues()
    //     0x736a88: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x736a8c: stur            x0, [fp, #-8]
    // 0x736a90: r0 = BoxDecoration()
    //     0x736a90: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x736a94: mov             x2, x0
    // 0x736a98: ldur            x0, [fp, #-8]
    // 0x736a9c: stur            x2, [fp, #-0x10]
    // 0x736aa0: StoreField: r2->field_7 = r0
    //     0x736aa0: stur            w0, [x2, #7]
    // 0x736aa4: r0 = Instance_BoxShape
    //     0x736aa4: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x736aa8: ldr             x0, [x0, #0x1a0]
    // 0x736aac: StoreField: r2->field_23 = r0
    //     0x736aac: stur            w0, [x2, #0x23]
    // 0x736ab0: r16 = 0.400000
    //     0x736ab0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e90] 0.4
    //     0x736ab4: ldr             x16, [x16, #0xe90]
    // 0x736ab8: str             x16, [SP]
    // 0x736abc: r1 = Instance_Color
    //     0x736abc: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x736ac0: ldr             x1, [x1, #0xb78]
    // 0x736ac4: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x736ac4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x736ac8: ldr             x4, [x4, #0x198]
    // 0x736acc: r0 = withValues()
    //     0x736acc: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x736ad0: stur            x0, [fp, #-8]
    // 0x736ad4: r0 = Icon()
    //     0x736ad4: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x736ad8: mov             x1, x0
    // 0x736adc: r0 = Instance_IconData
    //     0x736adc: add             x0, PP, #0x15, lsl #12  ; [pp+0x15278] Obj!IconData@a0a681
    //     0x736ae0: ldr             x0, [x0, #0x278]
    // 0x736ae4: stur            x1, [fp, #-0x18]
    // 0x736ae8: StoreField: r1->field_b = r0
    //     0x736ae8: stur            w0, [x1, #0xb]
    // 0x736aec: r0 = 56.000000
    //     0x736aec: add             x0, PP, #0x12, lsl #12  ; [pp+0x123a0] 56
    //     0x736af0: ldr             x0, [x0, #0x3a0]
    // 0x736af4: StoreField: r1->field_f = r0
    //     0x736af4: stur            w0, [x1, #0xf]
    // 0x736af8: ldur            x0, [fp, #-8]
    // 0x736afc: StoreField: r1->field_23 = r0
    //     0x736afc: stur            w0, [x1, #0x23]
    // 0x736b00: r0 = Container()
    //     0x736b00: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x736b04: stur            x0, [fp, #-8]
    // 0x736b08: r16 = Instance_EdgeInsets
    //     0x736b08: ldr             x16, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x736b0c: ldur            lr, [fp, #-0x10]
    // 0x736b10: stp             lr, x16, [SP, #8]
    // 0x736b14: ldur            x16, [fp, #-0x18]
    // 0x736b18: str             x16, [SP]
    // 0x736b1c: mov             x1, x0
    // 0x736b20: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x736b20: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x736b24: ldr             x4, [x4, #0x1e8]
    // 0x736b28: r0 = Container()
    //     0x736b28: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x736b2c: r1 = _ConstMap len:12
    //     0x736b2c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x736b30: r2 = 1400
    //     0x736b30: mov             x2, #0x578
    // 0x736b34: r0 = []()
    //     0x736b34: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x736b38: stur            x0, [fp, #-0x10]
    // 0x736b3c: cmp             w0, NULL
    // 0x736b40: b.eq            #0x736ce4
    // 0x736b44: r0 = TextStyle()
    //     0x736b44: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x736b48: mov             x1, x0
    // 0x736b4c: r0 = true
    //     0x736b4c: add             x0, NULL, #0x20  ; true
    // 0x736b50: stur            x1, [fp, #-0x18]
    // 0x736b54: StoreField: r1->field_7 = r0
    //     0x736b54: stur            w0, [x1, #7]
    // 0x736b58: ldur            x2, [fp, #-0x10]
    // 0x736b5c: StoreField: r1->field_b = r2
    //     0x736b5c: stur            w2, [x1, #0xb]
    // 0x736b60: r2 = 16.000000
    //     0x736b60: add             x2, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x736b64: ldr             x2, [x2, #0x358]
    // 0x736b68: StoreField: r1->field_1f = r2
    //     0x736b68: stur            w2, [x1, #0x1f]
    // 0x736b6c: r2 = Instance_FontWeight
    //     0x736b6c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x736b70: ldr             x2, [x2, #0x990]
    // 0x736b74: StoreField: r1->field_23 = r2
    //     0x736b74: stur            w2, [x1, #0x23]
    // 0x736b78: r0 = Text()
    //     0x736b78: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x736b7c: mov             x3, x0
    // 0x736b80: r0 = "Bu gün için etkinlik yok"
    //     0x736b80: add             x0, PP, #0x15, lsl #12  ; [pp+0x15280] "Bu gün için etkinlik yok"
    //     0x736b84: ldr             x0, [x0, #0x280]
    // 0x736b88: stur            x3, [fp, #-0x10]
    // 0x736b8c: StoreField: r3->field_b = r0
    //     0x736b8c: stur            w0, [x3, #0xb]
    // 0x736b90: ldur            x0, [fp, #-0x18]
    // 0x736b94: StoreField: r3->field_13 = r0
    //     0x736b94: stur            w0, [x3, #0x13]
    // 0x736b98: r1 = _ConstMap len:12
    //     0x736b98: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x736b9c: r2 = 1000
    //     0x736b9c: mov             x2, #0x3e8
    // 0x736ba0: r0 = []()
    //     0x736ba0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x736ba4: stur            x0, [fp, #-0x18]
    // 0x736ba8: cmp             w0, NULL
    // 0x736bac: b.eq            #0x736ce8
    // 0x736bb0: r0 = TextStyle()
    //     0x736bb0: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x736bb4: mov             x1, x0
    // 0x736bb8: r0 = true
    //     0x736bb8: add             x0, NULL, #0x20  ; true
    // 0x736bbc: stur            x1, [fp, #-0x20]
    // 0x736bc0: StoreField: r1->field_7 = r0
    //     0x736bc0: stur            w0, [x1, #7]
    // 0x736bc4: ldur            x0, [fp, #-0x18]
    // 0x736bc8: StoreField: r1->field_b = r0
    //     0x736bc8: stur            w0, [x1, #0xb]
    // 0x736bcc: r0 = 13.000000
    //     0x736bcc: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b00] 13
    //     0x736bd0: ldr             x0, [x0, #0xb00]
    // 0x736bd4: StoreField: r1->field_1f = r0
    //     0x736bd4: stur            w0, [x1, #0x1f]
    // 0x736bd8: r0 = Text()
    //     0x736bd8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x736bdc: mov             x3, x0
    // 0x736be0: r0 = "Başka bir gün seçerek etkinlikleri görüntüleyin"
    //     0x736be0: add             x0, PP, #0x15, lsl #12  ; [pp+0x15288] "Başka bir gün seçerek etkinlikleri görüntüleyin"
    //     0x736be4: ldr             x0, [x0, #0x288]
    // 0x736be8: stur            x3, [fp, #-0x18]
    // 0x736bec: StoreField: r3->field_b = r0
    //     0x736bec: stur            w0, [x3, #0xb]
    // 0x736bf0: ldur            x0, [fp, #-0x20]
    // 0x736bf4: StoreField: r3->field_13 = r0
    //     0x736bf4: stur            w0, [x3, #0x13]
    // 0x736bf8: r1 = Null
    //     0x736bf8: mov             x1, NULL
    // 0x736bfc: r2 = 10
    //     0x736bfc: mov             x2, #0xa
    // 0x736c00: r0 = AllocateArray()
    //     0x736c00: bl              #0x9280a0  ; AllocateArrayStub
    // 0x736c04: mov             x2, x0
    // 0x736c08: ldur            x0, [fp, #-8]
    // 0x736c0c: stur            x2, [fp, #-0x20]
    // 0x736c10: StoreField: r2->field_f = r0
    //     0x736c10: stur            w0, [x2, #0xf]
    // 0x736c14: r16 = Instance_SizedBox
    //     0x736c14: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x736c18: ldr             x16, [x16, #0x310]
    // 0x736c1c: StoreField: r2->field_13 = r16
    //     0x736c1c: stur            w16, [x2, #0x13]
    // 0x736c20: ldur            x0, [fp, #-0x10]
    // 0x736c24: ArrayStore: r2[0] = r0  ; List_4
    //     0x736c24: stur            w0, [x2, #0x17]
    // 0x736c28: r16 = Instance_SizedBox
    //     0x736c28: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x736c2c: ldr             x16, [x16, #0x318]
    // 0x736c30: StoreField: r2->field_1b = r16
    //     0x736c30: stur            w16, [x2, #0x1b]
    // 0x736c34: ldur            x0, [fp, #-0x18]
    // 0x736c38: StoreField: r2->field_1f = r0
    //     0x736c38: stur            w0, [x2, #0x1f]
    // 0x736c3c: r1 = <Widget>
    //     0x736c3c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x736c40: r0 = AllocateGrowableArray()
    //     0x736c40: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x736c44: mov             x1, x0
    // 0x736c48: ldur            x0, [fp, #-0x20]
    // 0x736c4c: stur            x1, [fp, #-8]
    // 0x736c50: StoreField: r1->field_f = r0
    //     0x736c50: stur            w0, [x1, #0xf]
    // 0x736c54: r0 = 10
    //     0x736c54: mov             x0, #0xa
    // 0x736c58: StoreField: r1->field_b = r0
    //     0x736c58: stur            w0, [x1, #0xb]
    // 0x736c5c: r0 = Column()
    //     0x736c5c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x736c60: mov             x1, x0
    // 0x736c64: r0 = Instance_Axis
    //     0x736c64: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x736c68: stur            x1, [fp, #-0x10]
    // 0x736c6c: StoreField: r1->field_f = r0
    //     0x736c6c: stur            w0, [x1, #0xf]
    // 0x736c70: r0 = Instance_MainAxisAlignment
    //     0x736c70: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x736c74: ldr             x0, [x0, #0x328]
    // 0x736c78: StoreField: r1->field_13 = r0
    //     0x736c78: stur            w0, [x1, #0x13]
    // 0x736c7c: r0 = Instance_MainAxisSize
    //     0x736c7c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x736c80: ldr             x0, [x0, #0x330]
    // 0x736c84: ArrayStore: r1[0] = r0  ; List_4
    //     0x736c84: stur            w0, [x1, #0x17]
    // 0x736c88: r0 = Instance_CrossAxisAlignment
    //     0x736c88: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x736c8c: ldr             x0, [x0, #0x338]
    // 0x736c90: StoreField: r1->field_1b = r0
    //     0x736c90: stur            w0, [x1, #0x1b]
    // 0x736c94: r0 = Instance_VerticalDirection
    //     0x736c94: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x736c98: ldr             x0, [x0, #0x340]
    // 0x736c9c: StoreField: r1->field_23 = r0
    //     0x736c9c: stur            w0, [x1, #0x23]
    // 0x736ca0: r0 = Instance_Clip
    //     0x736ca0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x736ca4: ldr             x0, [x0, #0x348]
    // 0x736ca8: StoreField: r1->field_2b = r0
    //     0x736ca8: stur            w0, [x1, #0x2b]
    // 0x736cac: StoreField: r1->field_2f = rZR
    //     0x736cac: stur            xzr, [x1, #0x2f]
    // 0x736cb0: ldur            x0, [fp, #-8]
    // 0x736cb4: StoreField: r1->field_b = r0
    //     0x736cb4: stur            w0, [x1, #0xb]
    // 0x736cb8: r0 = Center()
    //     0x736cb8: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x736cbc: r1 = Instance_Alignment
    //     0x736cbc: add             x1, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x736cc0: ldr             x1, [x1, #0x60]
    // 0x736cc4: StoreField: r0->field_f = r1
    //     0x736cc4: stur            w1, [x0, #0xf]
    // 0x736cc8: ldur            x1, [fp, #-0x10]
    // 0x736ccc: StoreField: r0->field_b = r1
    //     0x736ccc: stur            w1, [x0, #0xb]
    // 0x736cd0: LeaveFrame
    //     0x736cd0: mov             SP, fp
    //     0x736cd4: ldp             fp, lr, [SP], #0x10
    // 0x736cd8: ret
    //     0x736cd8: ret             
    // 0x736cdc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x736cdc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x736ce0: b               #0x736a6c
    // 0x736ce4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x736ce4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x736ce8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x736ce8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _buildNavButton(/* No info */) {
    // ** addr: 0x736cec, size: 0x38c
    // 0x736cec: EnterFrame
    //     0x736cec: stp             fp, lr, [SP, #-0x10]!
    //     0x736cf0: mov             fp, SP
    // 0x736cf4: AllocStack(0x60)
    //     0x736cf4: sub             SP, SP, #0x60
    // 0x736cf8: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */, dynamic _ /* r3 => r3, fp-0x10 */, dynamic _ /* r5 => r5, fp-0x18 */, dynamic _ /* r6 => r6, fp-0x20 */)
    //     0x736cf8: stur            x2, [fp, #-8]
    //     0x736cfc: stur            x3, [fp, #-0x10]
    //     0x736d00: stur            x5, [fp, #-0x18]
    //     0x736d04: stur            x6, [fp, #-0x20]
    // 0x736d08: CheckStackOverflow
    //     0x736d08: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x736d0c: cmp             SP, x16
    //     0x736d10: b.ls            #0x737068
    // 0x736d14: r0 = Radius()
    //     0x736d14: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x736d18: d0 = 12.000000
    //     0x736d18: fmov            d0, #12.00000000
    // 0x736d1c: stur            x0, [fp, #-0x28]
    // 0x736d20: StoreField: r0->field_7 = d0
    //     0x736d20: stur            d0, [x0, #7]
    // 0x736d24: StoreField: r0->field_f = d0
    //     0x736d24: stur            d0, [x0, #0xf]
    // 0x736d28: r0 = BorderRadius()
    //     0x736d28: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x736d2c: mov             x1, x0
    // 0x736d30: ldur            x0, [fp, #-0x28]
    // 0x736d34: stur            x1, [fp, #-0x30]
    // 0x736d38: StoreField: r1->field_7 = r0
    //     0x736d38: stur            w0, [x1, #7]
    // 0x736d3c: StoreField: r1->field_b = r0
    //     0x736d3c: stur            w0, [x1, #0xb]
    // 0x736d40: StoreField: r1->field_f = r0
    //     0x736d40: stur            w0, [x1, #0xf]
    // 0x736d44: StoreField: r1->field_13 = r0
    //     0x736d44: stur            w0, [x1, #0x13]
    // 0x736d48: r0 = Radius()
    //     0x736d48: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x736d4c: d0 = 12.000000
    //     0x736d4c: fmov            d0, #12.00000000
    // 0x736d50: stur            x0, [fp, #-0x28]
    // 0x736d54: StoreField: r0->field_7 = d0
    //     0x736d54: stur            d0, [x0, #7]
    // 0x736d58: StoreField: r0->field_f = d0
    //     0x736d58: stur            d0, [x0, #0xf]
    // 0x736d5c: r0 = BorderRadius()
    //     0x736d5c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x736d60: mov             x3, x0
    // 0x736d64: ldur            x0, [fp, #-0x28]
    // 0x736d68: stur            x3, [fp, #-0x38]
    // 0x736d6c: StoreField: r3->field_7 = r0
    //     0x736d6c: stur            w0, [x3, #7]
    // 0x736d70: StoreField: r3->field_b = r0
    //     0x736d70: stur            w0, [x3, #0xb]
    // 0x736d74: StoreField: r3->field_f = r0
    //     0x736d74: stur            w0, [x3, #0xf]
    // 0x736d78: StoreField: r3->field_13 = r0
    //     0x736d78: stur            w0, [x3, #0x13]
    // 0x736d7c: r1 = _ConstMap len:12
    //     0x736d7c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x736d80: r2 = 600
    //     0x736d80: mov             x2, #0x258
    // 0x736d84: r0 = []()
    //     0x736d84: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x736d88: cmp             w0, NULL
    // 0x736d8c: b.eq            #0x737070
    // 0x736d90: str             x0, [SP]
    // 0x736d94: r1 = Null
    //     0x736d94: mov             x1, NULL
    // 0x736d98: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x736d98: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x736d9c: ldr             x4, [x4, #0x788]
    // 0x736da0: r0 = Border.all()
    //     0x736da0: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x736da4: r1 = _ConstMap len:12
    //     0x736da4: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x736da8: r2 = 200
    //     0x736da8: mov             x2, #0xc8
    // 0x736dac: stur            x0, [fp, #-0x28]
    // 0x736db0: r0 = []()
    //     0x736db0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x736db4: stur            x0, [fp, #-0x40]
    // 0x736db8: cmp             w0, NULL
    // 0x736dbc: b.eq            #0x737074
    // 0x736dc0: r0 = BoxDecoration()
    //     0x736dc0: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x736dc4: mov             x3, x0
    // 0x736dc8: ldur            x0, [fp, #-0x40]
    // 0x736dcc: stur            x3, [fp, #-0x48]
    // 0x736dd0: StoreField: r3->field_7 = r0
    //     0x736dd0: stur            w0, [x3, #7]
    // 0x736dd4: ldur            x0, [fp, #-0x28]
    // 0x736dd8: StoreField: r3->field_f = r0
    //     0x736dd8: stur            w0, [x3, #0xf]
    // 0x736ddc: ldur            x0, [fp, #-0x38]
    // 0x736de0: StoreField: r3->field_13 = r0
    //     0x736de0: stur            w0, [x3, #0x13]
    // 0x736de4: r0 = Instance_BoxShape
    //     0x736de4: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x736de8: ldr             x0, [x0, #0x1c8]
    // 0x736dec: StoreField: r3->field_23 = r0
    //     0x736dec: stur            w0, [x3, #0x23]
    // 0x736df0: r1 = <Widget>
    //     0x736df0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x736df4: r2 = 0
    //     0x736df4: mov             x2, #0
    // 0x736df8: r0 = _GrowableList()
    //     0x736df8: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x736dfc: mov             x1, x0
    // 0x736e00: ldur            x0, [fp, #-0x10]
    // 0x736e04: stur            x1, [fp, #-0x28]
    // 0x736e08: tbz             w0, #4, #0x736eb8
    // 0x736e0c: ldur            x2, [fp, #-8]
    // 0x736e10: ldur            x0, [fp, #-0x18]
    // 0x736e14: r0 = Icon()
    //     0x736e14: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x736e18: mov             x1, x0
    // 0x736e1c: ldur            x0, [fp, #-8]
    // 0x736e20: stur            x1, [fp, #-0x10]
    // 0x736e24: StoreField: r1->field_b = r0
    //     0x736e24: stur            w0, [x1, #0xb]
    // 0x736e28: r2 = 22.000000
    //     0x736e28: add             x2, PP, #0x15, lsl #12  ; [pp+0x15290] 22
    //     0x736e2c: ldr             x2, [x2, #0x290]
    // 0x736e30: StoreField: r1->field_f = r2
    //     0x736e30: stur            w2, [x1, #0xf]
    // 0x736e34: r3 = Instance_Color
    //     0x736e34: add             x3, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x736e38: ldr             x3, [x3, #0xb78]
    // 0x736e3c: StoreField: r1->field_23 = r3
    //     0x736e3c: stur            w3, [x1, #0x23]
    // 0x736e40: r0 = Text()
    //     0x736e40: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x736e44: ldur            x1, [fp, #-0x18]
    // 0x736e48: stur            x0, [fp, #-0x38]
    // 0x736e4c: StoreField: r0->field_b = r1
    //     0x736e4c: stur            w1, [x0, #0xb]
    // 0x736e50: r4 = Instance_TextStyle
    //     0x736e50: add             x4, PP, #0x15, lsl #12  ; [pp+0x15298] Obj!TextStyle@a18321
    //     0x736e54: ldr             x4, [x4, #0x298]
    // 0x736e58: StoreField: r0->field_13 = r4
    //     0x736e58: stur            w4, [x0, #0x13]
    // 0x736e5c: r1 = Null
    //     0x736e5c: mov             x1, NULL
    // 0x736e60: r2 = 6
    //     0x736e60: mov             x2, #6
    // 0x736e64: r0 = AllocateArray()
    //     0x736e64: bl              #0x9280a0  ; AllocateArrayStub
    // 0x736e68: mov             x2, x0
    // 0x736e6c: ldur            x0, [fp, #-0x10]
    // 0x736e70: stur            x2, [fp, #-0x40]
    // 0x736e74: StoreField: r2->field_f = r0
    //     0x736e74: stur            w0, [x2, #0xf]
    // 0x736e78: r16 = Instance_SizedBox
    //     0x736e78: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x736e7c: ldr             x16, [x16, #0x368]
    // 0x736e80: StoreField: r2->field_13 = r16
    //     0x736e80: stur            w16, [x2, #0x13]
    // 0x736e84: ldur            x0, [fp, #-0x38]
    // 0x736e88: ArrayStore: r2[0] = r0  ; List_4
    //     0x736e88: stur            w0, [x2, #0x17]
    // 0x736e8c: r1 = <Widget>
    //     0x736e8c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x736e90: r0 = AllocateGrowableArray()
    //     0x736e90: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x736e94: mov             x1, x0
    // 0x736e98: ldur            x0, [fp, #-0x40]
    // 0x736e9c: StoreField: r1->field_f = r0
    //     0x736e9c: stur            w0, [x1, #0xf]
    // 0x736ea0: r5 = 6
    //     0x736ea0: mov             x5, #6
    // 0x736ea4: StoreField: r1->field_b = r5
    //     0x736ea4: stur            w5, [x1, #0xb]
    // 0x736ea8: mov             x2, x1
    // 0x736eac: ldur            x1, [fp, #-0x28]
    // 0x736eb0: r0 = addAll()
    //     0x736eb0: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x736eb4: b               #0x736f80
    // 0x736eb8: ldur            x0, [fp, #-8]
    // 0x736ebc: ldur            x1, [fp, #-0x18]
    // 0x736ec0: r4 = Instance_TextStyle
    //     0x736ec0: add             x4, PP, #0x15, lsl #12  ; [pp+0x15298] Obj!TextStyle@a18321
    //     0x736ec4: ldr             x4, [x4, #0x298]
    // 0x736ec8: r3 = Instance_Color
    //     0x736ec8: add             x3, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x736ecc: ldr             x3, [x3, #0xb78]
    // 0x736ed0: r2 = 22.000000
    //     0x736ed0: add             x2, PP, #0x15, lsl #12  ; [pp+0x15290] 22
    //     0x736ed4: ldr             x2, [x2, #0x290]
    // 0x736ed8: r5 = 6
    //     0x736ed8: mov             x5, #6
    // 0x736edc: r0 = Text()
    //     0x736edc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x736ee0: mov             x1, x0
    // 0x736ee4: ldur            x0, [fp, #-0x18]
    // 0x736ee8: stur            x1, [fp, #-0x10]
    // 0x736eec: StoreField: r1->field_b = r0
    //     0x736eec: stur            w0, [x1, #0xb]
    // 0x736ef0: r0 = Instance_TextStyle
    //     0x736ef0: add             x0, PP, #0x15, lsl #12  ; [pp+0x15298] Obj!TextStyle@a18321
    //     0x736ef4: ldr             x0, [x0, #0x298]
    // 0x736ef8: StoreField: r1->field_13 = r0
    //     0x736ef8: stur            w0, [x1, #0x13]
    // 0x736efc: r0 = Icon()
    //     0x736efc: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x736f00: mov             x3, x0
    // 0x736f04: ldur            x0, [fp, #-8]
    // 0x736f08: stur            x3, [fp, #-0x18]
    // 0x736f0c: StoreField: r3->field_b = r0
    //     0x736f0c: stur            w0, [x3, #0xb]
    // 0x736f10: r0 = 22.000000
    //     0x736f10: add             x0, PP, #0x15, lsl #12  ; [pp+0x15290] 22
    //     0x736f14: ldr             x0, [x0, #0x290]
    // 0x736f18: StoreField: r3->field_f = r0
    //     0x736f18: stur            w0, [x3, #0xf]
    // 0x736f1c: r0 = Instance_Color
    //     0x736f1c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x736f20: ldr             x0, [x0, #0xb78]
    // 0x736f24: StoreField: r3->field_23 = r0
    //     0x736f24: stur            w0, [x3, #0x23]
    // 0x736f28: r1 = Null
    //     0x736f28: mov             x1, NULL
    // 0x736f2c: r2 = 6
    //     0x736f2c: mov             x2, #6
    // 0x736f30: r0 = AllocateArray()
    //     0x736f30: bl              #0x9280a0  ; AllocateArrayStub
    // 0x736f34: mov             x2, x0
    // 0x736f38: ldur            x0, [fp, #-0x10]
    // 0x736f3c: stur            x2, [fp, #-8]
    // 0x736f40: StoreField: r2->field_f = r0
    //     0x736f40: stur            w0, [x2, #0xf]
    // 0x736f44: r16 = Instance_SizedBox
    //     0x736f44: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x736f48: ldr             x16, [x16, #0x368]
    // 0x736f4c: StoreField: r2->field_13 = r16
    //     0x736f4c: stur            w16, [x2, #0x13]
    // 0x736f50: ldur            x0, [fp, #-0x18]
    // 0x736f54: ArrayStore: r2[0] = r0  ; List_4
    //     0x736f54: stur            w0, [x2, #0x17]
    // 0x736f58: r1 = <Widget>
    //     0x736f58: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x736f5c: r0 = AllocateGrowableArray()
    //     0x736f5c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x736f60: mov             x1, x0
    // 0x736f64: ldur            x0, [fp, #-8]
    // 0x736f68: StoreField: r1->field_f = r0
    //     0x736f68: stur            w0, [x1, #0xf]
    // 0x736f6c: r0 = 6
    //     0x736f6c: mov             x0, #6
    // 0x736f70: StoreField: r1->field_b = r0
    //     0x736f70: stur            w0, [x1, #0xb]
    // 0x736f74: mov             x2, x1
    // 0x736f78: ldur            x1, [fp, #-0x28]
    // 0x736f7c: r0 = addAll()
    //     0x736f7c: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x736f80: ldur            x2, [fp, #-0x20]
    // 0x736f84: ldur            x1, [fp, #-0x30]
    // 0x736f88: ldur            x0, [fp, #-0x28]
    // 0x736f8c: r0 = Row()
    //     0x736f8c: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x736f90: mov             x1, x0
    // 0x736f94: r0 = Instance_Axis
    //     0x736f94: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x736f98: stur            x1, [fp, #-8]
    // 0x736f9c: StoreField: r1->field_f = r0
    //     0x736f9c: stur            w0, [x1, #0xf]
    // 0x736fa0: r0 = Instance_MainAxisAlignment
    //     0x736fa0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x736fa4: ldr             x0, [x0, #0x328]
    // 0x736fa8: StoreField: r1->field_13 = r0
    //     0x736fa8: stur            w0, [x1, #0x13]
    // 0x736fac: r0 = Instance_MainAxisSize
    //     0x736fac: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x736fb0: ldr             x0, [x0, #0x330]
    // 0x736fb4: ArrayStore: r1[0] = r0  ; List_4
    //     0x736fb4: stur            w0, [x1, #0x17]
    // 0x736fb8: r0 = Instance_CrossAxisAlignment
    //     0x736fb8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x736fbc: ldr             x0, [x0, #0x338]
    // 0x736fc0: StoreField: r1->field_1b = r0
    //     0x736fc0: stur            w0, [x1, #0x1b]
    // 0x736fc4: r0 = Instance_VerticalDirection
    //     0x736fc4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x736fc8: ldr             x0, [x0, #0x340]
    // 0x736fcc: StoreField: r1->field_23 = r0
    //     0x736fcc: stur            w0, [x1, #0x23]
    // 0x736fd0: r0 = Instance_Clip
    //     0x736fd0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x736fd4: ldr             x0, [x0, #0x348]
    // 0x736fd8: StoreField: r1->field_2b = r0
    //     0x736fd8: stur            w0, [x1, #0x2b]
    // 0x736fdc: StoreField: r1->field_2f = rZR
    //     0x736fdc: stur            xzr, [x1, #0x2f]
    // 0x736fe0: ldur            x0, [fp, #-0x28]
    // 0x736fe4: StoreField: r1->field_b = r0
    //     0x736fe4: stur            w0, [x1, #0xb]
    // 0x736fe8: r0 = Container()
    //     0x736fe8: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x736fec: stur            x0, [fp, #-0x10]
    // 0x736ff0: r16 = Instance_EdgeInsets
    //     0x736ff0: add             x16, PP, #0x15, lsl #12  ; [pp+0x152a0] Obj!EdgeInsets@a0c771
    //     0x736ff4: ldr             x16, [x16, #0x2a0]
    // 0x736ff8: ldur            lr, [fp, #-0x48]
    // 0x736ffc: stp             lr, x16, [SP, #8]
    // 0x737000: ldur            x16, [fp, #-8]
    // 0x737004: str             x16, [SP]
    // 0x737008: mov             x1, x0
    // 0x73700c: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x73700c: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x737010: ldr             x4, [x4, #0x1e8]
    // 0x737014: r0 = Container()
    //     0x737014: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x737018: r0 = InkWell()
    //     0x737018: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x73701c: ldur            x1, [fp, #-0x10]
    // 0x737020: StoreField: r0->field_b = r1
    //     0x737020: stur            w1, [x0, #0xb]
    // 0x737024: ldur            x1, [fp, #-0x20]
    // 0x737028: StoreField: r0->field_f = r1
    //     0x737028: stur            w1, [x0, #0xf]
    // 0x73702c: r1 = true
    //     0x73702c: add             x1, NULL, #0x20  ; true
    // 0x737030: StoreField: r0->field_47 = r1
    //     0x737030: stur            w1, [x0, #0x47]
    // 0x737034: r2 = Instance_BoxShape
    //     0x737034: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x737038: ldr             x2, [x2, #0x1c8]
    // 0x73703c: StoreField: r0->field_4b = r2
    //     0x73703c: stur            w2, [x0, #0x4b]
    // 0x737040: ldur            x2, [fp, #-0x30]
    // 0x737044: StoreField: r0->field_53 = r2
    //     0x737044: stur            w2, [x0, #0x53]
    // 0x737048: StoreField: r0->field_73 = r1
    //     0x737048: stur            w1, [x0, #0x73]
    // 0x73704c: r2 = false
    //     0x73704c: add             x2, NULL, #0x30  ; false
    // 0x737050: StoreField: r0->field_77 = r2
    //     0x737050: stur            w2, [x0, #0x77]
    // 0x737054: StoreField: r0->field_87 = r1
    //     0x737054: stur            w1, [x0, #0x87]
    // 0x737058: StoreField: r0->field_7f = r2
    //     0x737058: stur            w2, [x0, #0x7f]
    // 0x73705c: LeaveFrame
    //     0x73705c: mov             SP, fp
    //     0x737060: ldp             fp, lr, [SP], #0x10
    // 0x737064: ret
    //     0x737064: ret             
    // 0x737068: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x737068: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73706c: b               #0x736d14
    // 0x737070: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x737070: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x737074: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x737074: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _formatDate(/* No info */) {
    // ** addr: 0x737078, size: 0x64
    // 0x737078: EnterFrame
    //     0x737078: stp             fp, lr, [SP, #-0x10]!
    //     0x73707c: mov             fp, SP
    // 0x737080: AllocStack(0x18)
    //     0x737080: sub             SP, SP, #0x18
    // 0x737084: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */)
    //     0x737084: stur            x2, [fp, #-8]
    // 0x737088: CheckStackOverflow
    //     0x737088: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73708c: cmp             SP, x16
    //     0x737090: b.ls            #0x7370d4
    // 0x737094: r0 = DateFormat()
    //     0x737094: bl              #0x6d1b08  ; AllocateDateFormatStub -> DateFormat (size=0x2c)
    // 0x737098: stur            x0, [fp, #-0x10]
    // 0x73709c: r16 = "tr_TR"
    //     0x73709c: add             x16, PP, #0x15, lsl #12  ; [pp+0x152a8] "tr_TR"
    //     0x7370a0: ldr             x16, [x16, #0x2a8]
    // 0x7370a4: str             x16, [SP]
    // 0x7370a8: mov             x1, x0
    // 0x7370ac: r2 = "d MMMM y"
    //     0x7370ac: add             x2, PP, #0x15, lsl #12  ; [pp+0x152b0] "d MMMM y"
    //     0x7370b0: ldr             x2, [x2, #0x2b0]
    // 0x7370b4: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x7370b4: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x7370b8: r0 = DateFormat()
    //     0x7370b8: bl              #0x6d17bc  ; [package:intl/src/intl/date_format.dart] DateFormat::DateFormat
    // 0x7370bc: ldur            x1, [fp, #-0x10]
    // 0x7370c0: ldur            x2, [fp, #-8]
    // 0x7370c4: r0 = format()
    //     0x7370c4: bl              #0x4eadac  ; [package:intl/src/intl/date_format.dart] DateFormat::format
    // 0x7370c8: LeaveFrame
    //     0x7370c8: mov             SP, fp
    //     0x7370cc: ldp             fp, lr, [SP], #0x10
    // 0x7370d0: ret
    //     0x7370d0: ret             
    // 0x7370d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7370d4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7370d8: b               #0x737094
  }
  _ _formatDayOfWeek(/* No info */) {
    // ** addr: 0x7370dc, size: 0x64
    // 0x7370dc: EnterFrame
    //     0x7370dc: stp             fp, lr, [SP, #-0x10]!
    //     0x7370e0: mov             fp, SP
    // 0x7370e4: AllocStack(0x18)
    //     0x7370e4: sub             SP, SP, #0x18
    // 0x7370e8: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */)
    //     0x7370e8: stur            x2, [fp, #-8]
    // 0x7370ec: CheckStackOverflow
    //     0x7370ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7370f0: cmp             SP, x16
    //     0x7370f4: b.ls            #0x737138
    // 0x7370f8: r0 = DateFormat()
    //     0x7370f8: bl              #0x6d1b08  ; AllocateDateFormatStub -> DateFormat (size=0x2c)
    // 0x7370fc: stur            x0, [fp, #-0x10]
    // 0x737100: r16 = "tr_TR"
    //     0x737100: add             x16, PP, #0x15, lsl #12  ; [pp+0x152a8] "tr_TR"
    //     0x737104: ldr             x16, [x16, #0x2a8]
    // 0x737108: str             x16, [SP]
    // 0x73710c: mov             x1, x0
    // 0x737110: r2 = "EEEE"
    //     0x737110: add             x2, PP, #0x15, lsl #12  ; [pp+0x15428] "EEEE"
    //     0x737114: ldr             x2, [x2, #0x428]
    // 0x737118: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x737118: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x73711c: r0 = DateFormat()
    //     0x73711c: bl              #0x6d17bc  ; [package:intl/src/intl/date_format.dart] DateFormat::DateFormat
    // 0x737120: ldur            x1, [fp, #-0x10]
    // 0x737124: ldur            x2, [fp, #-8]
    // 0x737128: r0 = format()
    //     0x737128: bl              #0x4eadac  ; [package:intl/src/intl/date_format.dart] DateFormat::format
    // 0x73712c: LeaveFrame
    //     0x73712c: mov             SP, fp
    //     0x737130: ldp             fp, lr, [SP], #0x10
    // 0x737134: ret
    //     0x737134: ret             
    // 0x737138: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x737138: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73713c: b               #0x7370f8
  }
  [closure] Padding <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x737140, size: 0xf0
    // 0x737140: EnterFrame
    //     0x737140: stp             fp, lr, [SP, #-0x10]!
    //     0x737144: mov             fp, SP
    // 0x737148: AllocStack(0x20)
    //     0x737148: sub             SP, SP, #0x20
    // 0x73714c: SetupParameters([dynamic _ /* r0 */])
    //     0x73714c: ldr             x0, [fp, #0x20]
    //     0x737150: ldur            w1, [x0, #0x17]
    //     0x737154: add             x1, x1, HEAP, lsl #32
    //     0x737158: stur            x1, [fp, #-8]
    // 0x73715c: CheckStackOverflow
    //     0x73715c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x737160: cmp             SP, x16
    //     0x737164: b.ls            #0x73721c
    // 0x737168: LoadField: r0 = r1->field_f
    //     0x737168: ldur            w0, [x1, #0xf]
    // 0x73716c: DecompressPointer r0
    //     0x73716c: add             x0, x0, HEAP, lsl #32
    // 0x737170: LoadField: r2 = r0->field_2b
    //     0x737170: ldur            w2, [x0, #0x2b]
    // 0x737174: DecompressPointer r2
    //     0x737174: add             x2, x2, HEAP, lsl #32
    // 0x737178: r0 = LoadClassIdInstr(r2)
    //     0x737178: ldur            x0, [x2, #-1]
    //     0x73717c: ubfx            x0, x0, #0xc, #0x14
    // 0x737180: ldr             x16, [fp, #0x10]
    // 0x737184: stp             x16, x2, [SP]
    // 0x737188: r0 = GDT[cid_x0 + -0xdfc]()
    //     0x737188: sub             lr, x0, #0xdfc
    //     0x73718c: ldr             lr, [x21, lr, lsl #3]
    //     0x737190: blr             lr
    // 0x737194: mov             x4, x0
    // 0x737198: ldur            x0, [fp, #-8]
    // 0x73719c: stur            x4, [fp, #-0x10]
    // 0x7371a0: LoadField: r1 = r0->field_f
    //     0x7371a0: ldur            w1, [x0, #0xf]
    // 0x7371a4: DecompressPointer r1
    //     0x7371a4: add             x1, x1, HEAP, lsl #32
    // 0x7371a8: ArrayLoad: r2 = r4[0]  ; List_4
    //     0x7371a8: ldur            w2, [x4, #0x17]
    // 0x7371ac: DecompressPointer r2
    //     0x7371ac: add             x2, x2, HEAP, lsl #32
    // 0x7371b0: LoadField: r3 = r4->field_1b
    //     0x7371b0: ldur            x3, [x4, #0x1b]
    // 0x7371b4: r0 = getEndTime()
    //     0x7371b4: bl              #0x6d1c78  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::getEndTime
    // 0x7371b8: mov             x1, x0
    // 0x7371bc: ldur            x0, [fp, #-8]
    // 0x7371c0: LoadField: r2 = r0->field_b
    //     0x7371c0: ldur            w2, [x0, #0xb]
    // 0x7371c4: DecompressPointer r2
    //     0x7371c4: add             x2, x2, HEAP, lsl #32
    // 0x7371c8: LoadField: r0 = r2->field_f
    //     0x7371c8: ldur            w0, [x2, #0xf]
    // 0x7371cc: DecompressPointer r0
    //     0x7371cc: add             x0, x0, HEAP, lsl #32
    // 0x7371d0: LoadField: r5 = r0->field_13
    //     0x7371d0: ldur            w5, [x0, #0x13]
    // 0x7371d4: DecompressPointer r5
    //     0x7371d4: add             x5, x5, HEAP, lsl #32
    // 0x7371d8: r16 = Sentinel
    //     0x7371d8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x7371dc: cmp             w5, w16
    // 0x7371e0: b.eq            #0x737224
    // 0x7371e4: mov             x2, x1
    // 0x7371e8: mov             x1, x0
    // 0x7371ec: ldur            x3, [fp, #-0x10]
    // 0x7371f0: r0 = _buildEventCard()
    //     0x7371f0: bl              #0x737230  ; [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_buildEventCard
    // 0x7371f4: stur            x0, [fp, #-8]
    // 0x7371f8: r0 = Padding()
    //     0x7371f8: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x7371fc: r1 = Instance_EdgeInsets
    //     0x7371fc: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f18] Obj!EdgeInsets@a0c261
    //     0x737200: ldr             x1, [x1, #0xf18]
    // 0x737204: StoreField: r0->field_f = r1
    //     0x737204: stur            w1, [x0, #0xf]
    // 0x737208: ldur            x1, [fp, #-8]
    // 0x73720c: StoreField: r0->field_b = r1
    //     0x73720c: stur            w1, [x0, #0xb]
    // 0x737210: LeaveFrame
    //     0x737210: mov             SP, fp
    //     0x737214: ldp             fp, lr, [SP], #0x10
    // 0x737218: ret
    //     0x737218: ret             
    // 0x73721c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73721c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x737220: b               #0x737168
    // 0x737224: r9 = _currentDate
    //     0x737224: add             x9, PP, #0x14, lsl #12  ; [pp+0x14f10] Field <TakvimScreenState._currentDate@938372397>: late (offset: 0x14)
    //     0x737228: ldr             x9, [x9, #0xf10]
    // 0x73722c: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x73722c: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  _ _buildEventCard(/* No info */) {
    // ** addr: 0x737230, size: 0xa44
    // 0x737230: EnterFrame
    //     0x737230: stp             fp, lr, [SP, #-0x10]!
    //     0x737234: mov             fp, SP
    // 0x737238: AllocStack(0x70)
    //     0x737238: sub             SP, SP, #0x70
    // 0x73723c: SetupParameters(dynamic _ /* r2 => r4, fp-0x10 */, dynamic _ /* r3 => r0, fp-0x18 */, dynamic _ /* r5 => r2 */)
    //     0x73723c: mov             x4, x2
    //     0x737240: mov             x0, x3
    //     0x737244: stur            x2, [fp, #-0x10]
    //     0x737248: mov             x2, x5
    //     0x73724c: stur            x3, [fp, #-0x18]
    // 0x737250: CheckStackOverflow
    //     0x737250: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x737254: cmp             SP, x16
    //     0x737258: b.ls            #0x737c54
    // 0x73725c: ArrayLoad: r5 = r0[0]  ; List_4
    //     0x73725c: ldur            w5, [x0, #0x17]
    // 0x737260: DecompressPointer r5
    //     0x737260: add             x5, x5, HEAP, lsl #32
    // 0x737264: mov             x3, x5
    // 0x737268: stur            x5, [fp, #-8]
    // 0x73726c: r0 = _isUpcoming()
    //     0x73726c: bl              #0x737c74  ; [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_isUpcoming
    // 0x737270: stur            x0, [fp, #-0x20]
    // 0x737274: r0 = Radius()
    //     0x737274: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x737278: d0 = 14.000000
    //     0x737278: fmov            d0, #14.00000000
    // 0x73727c: stur            x0, [fp, #-0x28]
    // 0x737280: StoreField: r0->field_7 = d0
    //     0x737280: stur            d0, [x0, #7]
    // 0x737284: StoreField: r0->field_f = d0
    //     0x737284: stur            d0, [x0, #0xf]
    // 0x737288: r0 = BorderRadius()
    //     0x737288: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x73728c: mov             x3, x0
    // 0x737290: ldur            x0, [fp, #-0x28]
    // 0x737294: stur            x3, [fp, #-0x30]
    // 0x737298: StoreField: r3->field_7 = r0
    //     0x737298: stur            w0, [x3, #7]
    // 0x73729c: StoreField: r3->field_b = r0
    //     0x73729c: stur            w0, [x3, #0xb]
    // 0x7372a0: StoreField: r3->field_f = r0
    //     0x7372a0: stur            w0, [x3, #0xf]
    // 0x7372a4: StoreField: r3->field_13 = r0
    //     0x7372a4: stur            w0, [x3, #0x13]
    // 0x7372a8: r1 = _ConstMap len:12
    //     0x7372a8: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7372ac: r2 = 400
    //     0x7372ac: mov             x2, #0x190
    // 0x7372b0: r0 = []()
    //     0x7372b0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7372b4: cmp             w0, NULL
    // 0x7372b8: b.eq            #0x737c5c
    // 0x7372bc: str             x0, [SP]
    // 0x7372c0: r1 = Null
    //     0x7372c0: mov             x1, NULL
    // 0x7372c4: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x7372c4: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x7372c8: ldr             x4, [x4, #0x788]
    // 0x7372cc: r0 = Border.all()
    //     0x7372cc: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x7372d0: stur            x0, [fp, #-0x28]
    // 0x7372d4: r16 = 0.020000
    //     0x7372d4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f20] 0.02
    //     0x7372d8: ldr             x16, [x16, #0xf20]
    // 0x7372dc: str             x16, [SP]
    // 0x7372e0: r1 = Instance_Color
    //     0x7372e0: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x7372e4: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7372e4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7372e8: ldr             x4, [x4, #0x198]
    // 0x7372ec: r0 = withValues()
    //     0x7372ec: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7372f0: stur            x0, [fp, #-0x38]
    // 0x7372f4: r0 = BoxShadow()
    //     0x7372f4: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7372f8: stur            x0, [fp, #-0x40]
    // 0x7372fc: ArrayStore: r0[0] = rZR  ; List_8
    //     0x7372fc: stur            xzr, [x0, #0x17]
    // 0x737300: r1 = Instance_BlurStyle
    //     0x737300: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x737304: ldr             x1, [x1, #0x9b0]
    // 0x737308: StoreField: r0->field_1f = r1
    //     0x737308: stur            w1, [x0, #0x1f]
    // 0x73730c: ldur            x1, [fp, #-0x38]
    // 0x737310: StoreField: r0->field_7 = r1
    //     0x737310: stur            w1, [x0, #7]
    // 0x737314: r1 = Instance_Offset
    //     0x737314: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f28] Obj!Offset@a26a11
    //     0x737318: ldr             x1, [x1, #0xf28]
    // 0x73731c: StoreField: r0->field_b = r1
    //     0x73731c: stur            w1, [x0, #0xb]
    // 0x737320: d0 = 10.000000
    //     0x737320: fmov            d0, #10.00000000
    // 0x737324: StoreField: r0->field_f = d0
    //     0x737324: stur            d0, [x0, #0xf]
    // 0x737328: r1 = Null
    //     0x737328: mov             x1, NULL
    // 0x73732c: r2 = 2
    //     0x73732c: mov             x2, #2
    // 0x737330: r0 = AllocateArray()
    //     0x737330: bl              #0x9280a0  ; AllocateArrayStub
    // 0x737334: mov             x2, x0
    // 0x737338: ldur            x0, [fp, #-0x40]
    // 0x73733c: stur            x2, [fp, #-0x38]
    // 0x737340: StoreField: r2->field_f = r0
    //     0x737340: stur            w0, [x2, #0xf]
    // 0x737344: r1 = <BoxShadow>
    //     0x737344: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x737348: ldr             x1, [x1, #0x9c0]
    // 0x73734c: r0 = AllocateGrowableArray()
    //     0x73734c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x737350: mov             x1, x0
    // 0x737354: ldur            x0, [fp, #-0x38]
    // 0x737358: stur            x1, [fp, #-0x40]
    // 0x73735c: StoreField: r1->field_f = r0
    //     0x73735c: stur            w0, [x1, #0xf]
    // 0x737360: r0 = 2
    //     0x737360: mov             x0, #2
    // 0x737364: StoreField: r1->field_b = r0
    //     0x737364: stur            w0, [x1, #0xb]
    // 0x737368: r0 = BoxDecoration()
    //     0x737368: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x73736c: mov             x1, x0
    // 0x737370: r0 = Instance_Color
    //     0x737370: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x737374: stur            x1, [fp, #-0x38]
    // 0x737378: StoreField: r1->field_7 = r0
    //     0x737378: stur            w0, [x1, #7]
    // 0x73737c: ldur            x0, [fp, #-0x28]
    // 0x737380: StoreField: r1->field_f = r0
    //     0x737380: stur            w0, [x1, #0xf]
    // 0x737384: ldur            x0, [fp, #-0x30]
    // 0x737388: StoreField: r1->field_13 = r0
    //     0x737388: stur            w0, [x1, #0x13]
    // 0x73738c: ldur            x0, [fp, #-0x40]
    // 0x737390: ArrayStore: r1[0] = r0  ; List_4
    //     0x737390: stur            w0, [x1, #0x17]
    // 0x737394: r0 = Instance_BoxShape
    //     0x737394: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x737398: ldr             x0, [x0, #0x1c8]
    // 0x73739c: StoreField: r1->field_23 = r0
    //     0x73739c: stur            w0, [x1, #0x23]
    // 0x7373a0: r0 = Radius()
    //     0x7373a0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7373a4: d0 = 14.000000
    //     0x7373a4: fmov            d0, #14.00000000
    // 0x7373a8: stur            x0, [fp, #-0x28]
    // 0x7373ac: StoreField: r0->field_7 = d0
    //     0x7373ac: stur            d0, [x0, #7]
    // 0x7373b0: StoreField: r0->field_f = d0
    //     0x7373b0: stur            d0, [x0, #0xf]
    // 0x7373b4: r0 = BorderRadius()
    //     0x7373b4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7373b8: mov             x3, x0
    // 0x7373bc: ldur            x0, [fp, #-0x28]
    // 0x7373c0: stur            x3, [fp, #-0x30]
    // 0x7373c4: StoreField: r3->field_7 = r0
    //     0x7373c4: stur            w0, [x3, #7]
    // 0x7373c8: StoreField: r3->field_b = r0
    //     0x7373c8: stur            w0, [x3, #0xb]
    // 0x7373cc: StoreField: r3->field_f = r0
    //     0x7373cc: stur            w0, [x3, #0xf]
    // 0x7373d0: StoreField: r3->field_13 = r0
    //     0x7373d0: stur            w0, [x3, #0x13]
    // 0x7373d4: ldur            x0, [fp, #-0x20]
    // 0x7373d8: tbnz            w0, #4, #0x7373e8
    // 0x7373dc: r4 = Instance_Color
    //     0x7373dc: add             x4, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7373e0: ldr             x4, [x4, #0xb78]
    // 0x7373e4: b               #0x737408
    // 0x7373e8: r1 = _ConstMap len:10
    //     0x7373e8: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f30] Map<int, Color>(10)
    //     0x7373ec: ldr             x1, [x1, #0xf30]
    // 0x7373f0: r2 = 1400
    //     0x7373f0: mov             x2, #0x578
    // 0x7373f4: r0 = []()
    //     0x7373f4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7373f8: cmp             w0, NULL
    // 0x7373fc: b.eq            #0x737c60
    // 0x737400: mov             x4, x0
    // 0x737404: ldur            x0, [fp, #-0x20]
    // 0x737408: ldur            x2, [fp, #-0x10]
    // 0x73740c: ldur            x1, [fp, #-0x18]
    // 0x737410: ldur            x3, [fp, #-8]
    // 0x737414: stur            x4, [fp, #-0x28]
    // 0x737418: r0 = Radius()
    //     0x737418: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x73741c: d0 = 4.000000
    //     0x73741c: fmov            d0, #4.00000000
    // 0x737420: stur            x0, [fp, #-0x40]
    // 0x737424: StoreField: r0->field_7 = d0
    //     0x737424: stur            d0, [x0, #7]
    // 0x737428: StoreField: r0->field_f = d0
    //     0x737428: stur            d0, [x0, #0xf]
    // 0x73742c: r0 = BorderRadius()
    //     0x73742c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x737430: mov             x1, x0
    // 0x737434: ldur            x0, [fp, #-0x40]
    // 0x737438: stur            x1, [fp, #-0x48]
    // 0x73743c: StoreField: r1->field_7 = r0
    //     0x73743c: stur            w0, [x1, #7]
    // 0x737440: StoreField: r1->field_b = r0
    //     0x737440: stur            w0, [x1, #0xb]
    // 0x737444: StoreField: r1->field_f = r0
    //     0x737444: stur            w0, [x1, #0xf]
    // 0x737448: StoreField: r1->field_13 = r0
    //     0x737448: stur            w0, [x1, #0x13]
    // 0x73744c: r0 = BoxDecoration()
    //     0x73744c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x737450: mov             x1, x0
    // 0x737454: ldur            x0, [fp, #-0x28]
    // 0x737458: stur            x1, [fp, #-0x40]
    // 0x73745c: StoreField: r1->field_7 = r0
    //     0x73745c: stur            w0, [x1, #7]
    // 0x737460: ldur            x0, [fp, #-0x48]
    // 0x737464: StoreField: r1->field_13 = r0
    //     0x737464: stur            w0, [x1, #0x13]
    // 0x737468: r0 = Instance_BoxShape
    //     0x737468: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x73746c: ldr             x0, [x0, #0x1c8]
    // 0x737470: StoreField: r1->field_23 = r0
    //     0x737470: stur            w0, [x1, #0x23]
    // 0x737474: r0 = Container()
    //     0x737474: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x737478: stur            x0, [fp, #-0x28]
    // 0x73747c: r16 = 4.000000
    //     0x73747c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f38] 4
    //     0x737480: ldr             x16, [x16, #0xf38]
    // 0x737484: r30 = 64.000000
    //     0x737484: add             lr, PP, #0x14, lsl #12  ; [pp+0x14f40] 64
    //     0x737488: ldr             lr, [lr, #0xf40]
    // 0x73748c: stp             lr, x16, [SP, #8]
    // 0x737490: ldur            x16, [fp, #-0x40]
    // 0x737494: str             x16, [SP]
    // 0x737498: mov             x1, x0
    // 0x73749c: r4 = const [0, 0x4, 0x3, 0x1, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x73749c: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a58] List(11) [0, 0x4, 0x3, 0x1, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x7374a0: ldr             x4, [x4, #0xa58]
    // 0x7374a4: r0 = Container()
    //     0x7374a4: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7374a8: ldur            x0, [fp, #-0x18]
    // 0x7374ac: LoadField: r1 = r0->field_b
    //     0x7374ac: ldur            w1, [x0, #0xb]
    // 0x7374b0: DecompressPointer r1
    //     0x7374b0: add             x1, x1, HEAP, lsl #32
    // 0x7374b4: stur            x1, [fp, #-0x40]
    // 0x7374b8: r0 = Text()
    //     0x7374b8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7374bc: mov             x2, x0
    // 0x7374c0: ldur            x0, [fp, #-0x40]
    // 0x7374c4: stur            x2, [fp, #-0x48]
    // 0x7374c8: StoreField: r2->field_b = r0
    //     0x7374c8: stur            w0, [x2, #0xb]
    // 0x7374cc: r0 = Instance_TextStyle
    //     0x7374cc: add             x0, PP, #0x14, lsl #12  ; [pp+0x14f48] Obj!TextStyle@a182b1
    //     0x7374d0: ldr             x0, [x0, #0xf48]
    // 0x7374d4: StoreField: r2->field_13 = r0
    //     0x7374d4: stur            w0, [x2, #0x13]
    // 0x7374d8: r0 = Instance_TextOverflow
    //     0x7374d8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12068] Obj!TextOverflow@a2a871
    //     0x7374dc: ldr             x0, [x0, #0x68]
    // 0x7374e0: StoreField: r2->field_2b = r0
    //     0x7374e0: stur            w0, [x2, #0x2b]
    // 0x7374e4: r1 = <FlexParentData>
    //     0x7374e4: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7374e8: ldr             x1, [x1, #0x340]
    // 0x7374ec: r0 = Expanded()
    //     0x7374ec: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7374f0: mov             x2, x0
    // 0x7374f4: r0 = 1
    //     0x7374f4: mov             x0, #1
    // 0x7374f8: stur            x2, [fp, #-0x40]
    // 0x7374fc: StoreField: r2->field_13 = r0
    //     0x7374fc: stur            x0, [x2, #0x13]
    // 0x737500: r3 = Instance_FlexFit
    //     0x737500: add             x3, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x737504: ldr             x3, [x3, #0x348]
    // 0x737508: StoreField: r2->field_1b = r3
    //     0x737508: stur            w3, [x2, #0x1b]
    // 0x73750c: ldur            x1, [fp, #-0x48]
    // 0x737510: StoreField: r2->field_b = r1
    //     0x737510: stur            w1, [x2, #0xb]
    // 0x737514: r1 = Instance_MaterialColor
    //     0x737514: add             x1, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x737518: ldr             x1, [x1, #0xbc8]
    // 0x73751c: r0 = shade100()
    //     0x73751c: bl              #0x6dee80  ; [package:flutter/src/material/colors.dart] MaterialColor::shade100
    // 0x737520: stur            x0, [fp, #-0x48]
    // 0x737524: r0 = Radius()
    //     0x737524: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x737528: d0 = 999.000000
    //     0x737528: add             x17, PP, #0x14, lsl #12  ; [pp+0x14f50] IMM: double(999) from 0x408f380000000000
    //     0x73752c: ldr             d0, [x17, #0xf50]
    // 0x737530: stur            x0, [fp, #-0x50]
    // 0x737534: StoreField: r0->field_7 = d0
    //     0x737534: stur            d0, [x0, #7]
    // 0x737538: StoreField: r0->field_f = d0
    //     0x737538: stur            d0, [x0, #0xf]
    // 0x73753c: r0 = BorderRadius()
    //     0x73753c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x737540: mov             x1, x0
    // 0x737544: ldur            x0, [fp, #-0x50]
    // 0x737548: stur            x1, [fp, #-0x58]
    // 0x73754c: StoreField: r1->field_7 = r0
    //     0x73754c: stur            w0, [x1, #7]
    // 0x737550: StoreField: r1->field_b = r0
    //     0x737550: stur            w0, [x1, #0xb]
    // 0x737554: StoreField: r1->field_f = r0
    //     0x737554: stur            w0, [x1, #0xf]
    // 0x737558: StoreField: r1->field_13 = r0
    //     0x737558: stur            w0, [x1, #0x13]
    // 0x73755c: r0 = BoxDecoration()
    //     0x73755c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x737560: mov             x3, x0
    // 0x737564: ldur            x0, [fp, #-0x48]
    // 0x737568: stur            x3, [fp, #-0x50]
    // 0x73756c: StoreField: r3->field_7 = r0
    //     0x73756c: stur            w0, [x3, #7]
    // 0x737570: ldur            x0, [fp, #-0x58]
    // 0x737574: StoreField: r3->field_13 = r0
    //     0x737574: stur            w0, [x3, #0x13]
    // 0x737578: r0 = Instance_BoxShape
    //     0x737578: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x73757c: ldr             x0, [x0, #0x1c8]
    // 0x737580: StoreField: r3->field_23 = r0
    //     0x737580: stur            w0, [x3, #0x23]
    // 0x737584: r1 = _ConstMap len:12
    //     0x737584: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x737588: r2 = 1400
    //     0x737588: mov             x2, #0x578
    // 0x73758c: r0 = []()
    //     0x73758c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x737590: stur            x0, [fp, #-0x48]
    // 0x737594: cmp             w0, NULL
    // 0x737598: b.eq            #0x737c64
    // 0x73759c: r0 = Icon()
    //     0x73759c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7375a0: mov             x3, x0
    // 0x7375a4: r0 = Instance_IconData
    //     0x7375a4: add             x0, PP, #0x14, lsl #12  ; [pp+0x14f58] Obj!IconData@a0a6a1
    //     0x7375a8: ldr             x0, [x0, #0xf58]
    // 0x7375ac: stur            x3, [fp, #-0x58]
    // 0x7375b0: StoreField: r3->field_b = r0
    //     0x7375b0: stur            w0, [x3, #0xb]
    // 0x7375b4: r0 = 14.000000
    //     0x7375b4: add             x0, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x7375b8: ldr             x0, [x0, #0x1c8]
    // 0x7375bc: StoreField: r3->field_f = r0
    //     0x7375bc: stur            w0, [x3, #0xf]
    // 0x7375c0: ldur            x0, [fp, #-0x48]
    // 0x7375c4: StoreField: r3->field_23 = r0
    //     0x7375c4: stur            w0, [x3, #0x23]
    // 0x7375c8: r1 = Null
    //     0x7375c8: mov             x1, NULL
    // 0x7375cc: r2 = 6
    //     0x7375cc: mov             x2, #6
    // 0x7375d0: r0 = AllocateArray()
    //     0x7375d0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7375d4: mov             x1, x0
    // 0x7375d8: ldur            x0, [fp, #-8]
    // 0x7375dc: StoreField: r1->field_f = r0
    //     0x7375dc: stur            w0, [x1, #0xf]
    // 0x7375e0: r16 = " - "
    //     0x7375e0: add             x16, PP, #0x13, lsl #12  ; [pp+0x139e8] " - "
    //     0x7375e4: ldr             x16, [x16, #0x9e8]
    // 0x7375e8: StoreField: r1->field_13 = r16
    //     0x7375e8: stur            w16, [x1, #0x13]
    // 0x7375ec: ldur            x0, [fp, #-0x10]
    // 0x7375f0: ArrayStore: r1[0] = r0  ; List_4
    //     0x7375f0: stur            w0, [x1, #0x17]
    // 0x7375f4: str             x1, [SP]
    // 0x7375f8: r0 = _interpolate()
    //     0x7375f8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7375fc: r1 = _ConstMap len:12
    //     0x7375fc: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x737600: r2 = 1600
    //     0x737600: mov             x2, #0x640
    // 0x737604: stur            x0, [fp, #-8]
    // 0x737608: r0 = []()
    //     0x737608: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x73760c: stur            x0, [fp, #-0x10]
    // 0x737610: cmp             w0, NULL
    // 0x737614: b.eq            #0x737c68
    // 0x737618: r0 = TextStyle()
    //     0x737618: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x73761c: mov             x1, x0
    // 0x737620: r0 = true
    //     0x737620: add             x0, NULL, #0x20  ; true
    // 0x737624: stur            x1, [fp, #-0x48]
    // 0x737628: StoreField: r1->field_7 = r0
    //     0x737628: stur            w0, [x1, #7]
    // 0x73762c: ldur            x2, [fp, #-0x10]
    // 0x737630: StoreField: r1->field_b = r2
    //     0x737630: stur            w2, [x1, #0xb]
    // 0x737634: r2 = 11.000000
    //     0x737634: add             x2, PP, #0x14, lsl #12  ; [pp+0x14f60] 11
    //     0x737638: ldr             x2, [x2, #0xf60]
    // 0x73763c: StoreField: r1->field_1f = r2
    //     0x73763c: stur            w2, [x1, #0x1f]
    // 0x737640: r2 = Instance_FontWeight
    //     0x737640: add             x2, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x737644: ldr             x2, [x2, #0x990]
    // 0x737648: StoreField: r1->field_23 = r2
    //     0x737648: stur            w2, [x1, #0x23]
    // 0x73764c: r0 = Text()
    //     0x73764c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x737650: mov             x3, x0
    // 0x737654: ldur            x0, [fp, #-8]
    // 0x737658: stur            x3, [fp, #-0x10]
    // 0x73765c: StoreField: r3->field_b = r0
    //     0x73765c: stur            w0, [x3, #0xb]
    // 0x737660: ldur            x0, [fp, #-0x48]
    // 0x737664: StoreField: r3->field_13 = r0
    //     0x737664: stur            w0, [x3, #0x13]
    // 0x737668: r1 = Null
    //     0x737668: mov             x1, NULL
    // 0x73766c: r2 = 6
    //     0x73766c: mov             x2, #6
    // 0x737670: r0 = AllocateArray()
    //     0x737670: bl              #0x9280a0  ; AllocateArrayStub
    // 0x737674: mov             x2, x0
    // 0x737678: ldur            x0, [fp, #-0x58]
    // 0x73767c: stur            x2, [fp, #-8]
    // 0x737680: StoreField: r2->field_f = r0
    //     0x737680: stur            w0, [x2, #0xf]
    // 0x737684: r16 = Instance_SizedBox
    //     0x737684: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f68] Obj!SizedBox@a1fb51
    //     0x737688: ldr             x16, [x16, #0xf68]
    // 0x73768c: StoreField: r2->field_13 = r16
    //     0x73768c: stur            w16, [x2, #0x13]
    // 0x737690: ldur            x0, [fp, #-0x10]
    // 0x737694: ArrayStore: r2[0] = r0  ; List_4
    //     0x737694: stur            w0, [x2, #0x17]
    // 0x737698: r1 = <Widget>
    //     0x737698: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73769c: r0 = AllocateGrowableArray()
    //     0x73769c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7376a0: mov             x1, x0
    // 0x7376a4: ldur            x0, [fp, #-8]
    // 0x7376a8: stur            x1, [fp, #-0x10]
    // 0x7376ac: StoreField: r1->field_f = r0
    //     0x7376ac: stur            w0, [x1, #0xf]
    // 0x7376b0: r2 = 6
    //     0x7376b0: mov             x2, #6
    // 0x7376b4: StoreField: r1->field_b = r2
    //     0x7376b4: stur            w2, [x1, #0xb]
    // 0x7376b8: r0 = Row()
    //     0x7376b8: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7376bc: mov             x1, x0
    // 0x7376c0: r0 = Instance_Axis
    //     0x7376c0: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7376c4: stur            x1, [fp, #-8]
    // 0x7376c8: StoreField: r1->field_f = r0
    //     0x7376c8: stur            w0, [x1, #0xf]
    // 0x7376cc: r2 = Instance_MainAxisAlignment
    //     0x7376cc: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7376d0: ldr             x2, [x2, #0x230]
    // 0x7376d4: StoreField: r1->field_13 = r2
    //     0x7376d4: stur            w2, [x1, #0x13]
    // 0x7376d8: r3 = Instance_MainAxisSize
    //     0x7376d8: add             x3, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x7376dc: ldr             x3, [x3, #0xb60]
    // 0x7376e0: ArrayStore: r1[0] = r3  ; List_4
    //     0x7376e0: stur            w3, [x1, #0x17]
    // 0x7376e4: r3 = Instance_CrossAxisAlignment
    //     0x7376e4: add             x3, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7376e8: ldr             x3, [x3, #0x338]
    // 0x7376ec: StoreField: r1->field_1b = r3
    //     0x7376ec: stur            w3, [x1, #0x1b]
    // 0x7376f0: r4 = Instance_VerticalDirection
    //     0x7376f0: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7376f4: ldr             x4, [x4, #0x340]
    // 0x7376f8: StoreField: r1->field_23 = r4
    //     0x7376f8: stur            w4, [x1, #0x23]
    // 0x7376fc: r5 = Instance_Clip
    //     0x7376fc: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x737700: ldr             x5, [x5, #0x348]
    // 0x737704: StoreField: r1->field_2b = r5
    //     0x737704: stur            w5, [x1, #0x2b]
    // 0x737708: StoreField: r1->field_2f = rZR
    //     0x737708: stur            xzr, [x1, #0x2f]
    // 0x73770c: ldur            x6, [fp, #-0x10]
    // 0x737710: StoreField: r1->field_b = r6
    //     0x737710: stur            w6, [x1, #0xb]
    // 0x737714: r0 = Container()
    //     0x737714: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x737718: stur            x0, [fp, #-0x10]
    // 0x73771c: r16 = Instance_EdgeInsets
    //     0x73771c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f70] Obj!EdgeInsets@a0c4d1
    //     0x737720: ldr             x16, [x16, #0xf70]
    // 0x737724: ldur            lr, [fp, #-0x50]
    // 0x737728: stp             lr, x16, [SP, #8]
    // 0x73772c: ldur            x16, [fp, #-8]
    // 0x737730: str             x16, [SP]
    // 0x737734: mov             x1, x0
    // 0x737738: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x737738: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x73773c: ldr             x4, [x4, #0x1e8]
    // 0x737740: r0 = Container()
    //     0x737740: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x737744: r1 = <FlexParentData>
    //     0x737744: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x737748: ldr             x1, [x1, #0x340]
    // 0x73774c: r0 = Flexible()
    //     0x73774c: bl              #0x663444  ; AllocateFlexibleStub -> Flexible (size=0x20)
    // 0x737750: mov             x3, x0
    // 0x737754: r0 = 1
    //     0x737754: mov             x0, #1
    // 0x737758: stur            x3, [fp, #-8]
    // 0x73775c: StoreField: r3->field_13 = r0
    //     0x73775c: stur            x0, [x3, #0x13]
    // 0x737760: r1 = Instance_FlexFit
    //     0x737760: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f78] Obj!FlexFit@a2a731
    //     0x737764: ldr             x1, [x1, #0xf78]
    // 0x737768: StoreField: r3->field_1b = r1
    //     0x737768: stur            w1, [x3, #0x1b]
    // 0x73776c: ldur            x1, [fp, #-0x10]
    // 0x737770: StoreField: r3->field_b = r1
    //     0x737770: stur            w1, [x3, #0xb]
    // 0x737774: r1 = Null
    //     0x737774: mov             x1, NULL
    // 0x737778: r2 = 6
    //     0x737778: mov             x2, #6
    // 0x73777c: r0 = AllocateArray()
    //     0x73777c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x737780: mov             x2, x0
    // 0x737784: ldur            x0, [fp, #-0x40]
    // 0x737788: stur            x2, [fp, #-0x10]
    // 0x73778c: StoreField: r2->field_f = r0
    //     0x73778c: stur            w0, [x2, #0xf]
    // 0x737790: r16 = Instance_SizedBox
    //     0x737790: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x737794: ldr             x16, [x16, #0x368]
    // 0x737798: StoreField: r2->field_13 = r16
    //     0x737798: stur            w16, [x2, #0x13]
    // 0x73779c: ldur            x0, [fp, #-8]
    // 0x7377a0: ArrayStore: r2[0] = r0  ; List_4
    //     0x7377a0: stur            w0, [x2, #0x17]
    // 0x7377a4: r1 = <Widget>
    //     0x7377a4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7377a8: r0 = AllocateGrowableArray()
    //     0x7377a8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7377ac: mov             x1, x0
    // 0x7377b0: ldur            x0, [fp, #-0x10]
    // 0x7377b4: stur            x1, [fp, #-8]
    // 0x7377b8: StoreField: r1->field_f = r0
    //     0x7377b8: stur            w0, [x1, #0xf]
    // 0x7377bc: r2 = 6
    //     0x7377bc: mov             x2, #6
    // 0x7377c0: StoreField: r1->field_b = r2
    //     0x7377c0: stur            w2, [x1, #0xb]
    // 0x7377c4: r0 = Row()
    //     0x7377c4: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7377c8: mov             x3, x0
    // 0x7377cc: r0 = Instance_Axis
    //     0x7377cc: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7377d0: stur            x3, [fp, #-0x10]
    // 0x7377d4: StoreField: r3->field_f = r0
    //     0x7377d4: stur            w0, [x3, #0xf]
    // 0x7377d8: r4 = Instance_MainAxisAlignment
    //     0x7377d8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7377dc: ldr             x4, [x4, #0x230]
    // 0x7377e0: StoreField: r3->field_13 = r4
    //     0x7377e0: stur            w4, [x3, #0x13]
    // 0x7377e4: r5 = Instance_MainAxisSize
    //     0x7377e4: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7377e8: ldr             x5, [x5, #0x330]
    // 0x7377ec: ArrayStore: r3[0] = r5  ; List_4
    //     0x7377ec: stur            w5, [x3, #0x17]
    // 0x7377f0: r1 = Instance_CrossAxisAlignment
    //     0x7377f0: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7377f4: ldr             x1, [x1, #0x338]
    // 0x7377f8: StoreField: r3->field_1b = r1
    //     0x7377f8: stur            w1, [x3, #0x1b]
    // 0x7377fc: r6 = Instance_VerticalDirection
    //     0x7377fc: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x737800: ldr             x6, [x6, #0x340]
    // 0x737804: StoreField: r3->field_23 = r6
    //     0x737804: stur            w6, [x3, #0x23]
    // 0x737808: r7 = Instance_Clip
    //     0x737808: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x73780c: ldr             x7, [x7, #0x348]
    // 0x737810: StoreField: r3->field_2b = r7
    //     0x737810: stur            w7, [x3, #0x2b]
    // 0x737814: StoreField: r3->field_2f = rZR
    //     0x737814: stur            xzr, [x3, #0x2f]
    // 0x737818: ldur            x1, [fp, #-8]
    // 0x73781c: StoreField: r3->field_b = r1
    //     0x73781c: stur            w1, [x3, #0xb]
    // 0x737820: ldur            x1, [fp, #-0x20]
    // 0x737824: tbnz            w1, #4, #0x737834
    // 0x737828: r8 = "Yaklaşan"
    //     0x737828: add             x8, PP, #0x14, lsl #12  ; [pp+0x14f80] "Yaklaşan"
    //     0x73782c: ldr             x8, [x8, #0xf80]
    // 0x737830: b               #0x73783c
    // 0x737834: r8 = "Gerçekleşti"
    //     0x737834: add             x8, PP, #0x14, lsl #12  ; [pp+0x14f88] "Gerçekleşti"
    //     0x737838: ldr             x8, [x8, #0xf88]
    // 0x73783c: stur            x8, [fp, #-8]
    // 0x737840: tbnz            w1, #4, #0x737858
    // 0x737844: mov             x0, x3
    // 0x737848: mov             x1, x8
    // 0x73784c: r3 = Instance_Color
    //     0x73784c: add             x3, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x737850: ldr             x3, [x3, #0xb78]
    // 0x737854: b               #0x73787c
    // 0x737858: r1 = _ConstMap len:10
    //     0x737858: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f30] Map<int, Color>(10)
    //     0x73785c: ldr             x1, [x1, #0xf30]
    // 0x737860: r2 = 1400
    //     0x737860: mov             x2, #0x578
    // 0x737864: r0 = []()
    //     0x737864: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x737868: cmp             w0, NULL
    // 0x73786c: b.eq            #0x737c6c
    // 0x737870: mov             x3, x0
    // 0x737874: ldur            x0, [fp, #-0x10]
    // 0x737878: ldur            x1, [fp, #-8]
    // 0x73787c: ldur            x2, [fp, #-0x18]
    // 0x737880: stur            x3, [fp, #-0x20]
    // 0x737884: r0 = TextStyle()
    //     0x737884: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x737888: mov             x1, x0
    // 0x73788c: r0 = true
    //     0x73788c: add             x0, NULL, #0x20  ; true
    // 0x737890: stur            x1, [fp, #-0x40]
    // 0x737894: StoreField: r1->field_7 = r0
    //     0x737894: stur            w0, [x1, #7]
    // 0x737898: ldur            x2, [fp, #-0x20]
    // 0x73789c: StoreField: r1->field_b = r2
    //     0x73789c: stur            w2, [x1, #0xb]
    // 0x7378a0: r2 = 12.000000
    //     0x7378a0: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x7378a4: ldr             x2, [x2, #0xae0]
    // 0x7378a8: StoreField: r1->field_1f = r2
    //     0x7378a8: stur            w2, [x1, #0x1f]
    // 0x7378ac: r2 = Instance_FontWeight
    //     0x7378ac: add             x2, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x7378b0: ldr             x2, [x2, #0x990]
    // 0x7378b4: StoreField: r1->field_23 = r2
    //     0x7378b4: stur            w2, [x1, #0x23]
    // 0x7378b8: r0 = Text()
    //     0x7378b8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7378bc: mov             x3, x0
    // 0x7378c0: ldur            x0, [fp, #-8]
    // 0x7378c4: stur            x3, [fp, #-0x20]
    // 0x7378c8: StoreField: r3->field_b = r0
    //     0x7378c8: stur            w0, [x3, #0xb]
    // 0x7378cc: ldur            x0, [fp, #-0x40]
    // 0x7378d0: StoreField: r3->field_13 = r0
    //     0x7378d0: stur            w0, [x3, #0x13]
    // 0x7378d4: r1 = Null
    //     0x7378d4: mov             x1, NULL
    // 0x7378d8: r2 = 6
    //     0x7378d8: mov             x2, #6
    // 0x7378dc: r0 = AllocateArray()
    //     0x7378dc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7378e0: mov             x2, x0
    // 0x7378e4: ldur            x0, [fp, #-0x10]
    // 0x7378e8: stur            x2, [fp, #-8]
    // 0x7378ec: StoreField: r2->field_f = r0
    //     0x7378ec: stur            w0, [x2, #0xf]
    // 0x7378f0: r16 = Instance_SizedBox
    //     0x7378f0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x7378f4: ldr             x16, [x16, #0x318]
    // 0x7378f8: StoreField: r2->field_13 = r16
    //     0x7378f8: stur            w16, [x2, #0x13]
    // 0x7378fc: ldur            x0, [fp, #-0x20]
    // 0x737900: ArrayStore: r2[0] = r0  ; List_4
    //     0x737900: stur            w0, [x2, #0x17]
    // 0x737904: r1 = <Widget>
    //     0x737904: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x737908: r0 = AllocateGrowableArray()
    //     0x737908: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x73790c: mov             x3, x0
    // 0x737910: ldur            x0, [fp, #-8]
    // 0x737914: stur            x3, [fp, #-0x10]
    // 0x737918: StoreField: r3->field_f = r0
    //     0x737918: stur            w0, [x3, #0xf]
    // 0x73791c: r0 = 6
    //     0x73791c: mov             x0, #6
    // 0x737920: StoreField: r3->field_b = r0
    //     0x737920: stur            w0, [x3, #0xb]
    // 0x737924: ldur            x1, [fp, #-0x18]
    // 0x737928: LoadField: r4 = r1->field_f
    //     0x737928: ldur            w4, [x1, #0xf]
    // 0x73792c: DecompressPointer r4
    //     0x73792c: add             x4, x4, HEAP, lsl #32
    // 0x737930: stur            x4, [fp, #-8]
    // 0x737934: cmp             w4, NULL
    // 0x737938: b.eq            #0x737a04
    // 0x73793c: r1 = _ConstMap len:12
    //     0x73793c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x737940: r2 = 1400
    //     0x737940: mov             x2, #0x578
    // 0x737944: r0 = []()
    //     0x737944: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x737948: stur            x0, [fp, #-0x18]
    // 0x73794c: cmp             w0, NULL
    // 0x737950: b.eq            #0x737c70
    // 0x737954: r0 = TextStyle()
    //     0x737954: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x737958: mov             x1, x0
    // 0x73795c: r0 = true
    //     0x73795c: add             x0, NULL, #0x20  ; true
    // 0x737960: stur            x1, [fp, #-0x20]
    // 0x737964: StoreField: r1->field_7 = r0
    //     0x737964: stur            w0, [x1, #7]
    // 0x737968: ldur            x2, [fp, #-0x18]
    // 0x73796c: StoreField: r1->field_b = r2
    //     0x73796c: stur            w2, [x1, #0xb]
    // 0x737970: r2 = 13.000000
    //     0x737970: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b00] 13
    //     0x737974: ldr             x2, [x2, #0xb00]
    // 0x737978: StoreField: r1->field_1f = r2
    //     0x737978: stur            w2, [x1, #0x1f]
    // 0x73797c: r2 = 1.450000
    //     0x73797c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14f90] 1.45
    //     0x737980: ldr             x2, [x2, #0xf90]
    // 0x737984: StoreField: r1->field_37 = r2
    //     0x737984: stur            w2, [x1, #0x37]
    // 0x737988: r0 = Text()
    //     0x737988: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x73798c: mov             x3, x0
    // 0x737990: ldur            x0, [fp, #-8]
    // 0x737994: stur            x3, [fp, #-0x18]
    // 0x737998: StoreField: r3->field_b = r0
    //     0x737998: stur            w0, [x3, #0xb]
    // 0x73799c: ldur            x0, [fp, #-0x20]
    // 0x7379a0: StoreField: r3->field_13 = r0
    //     0x7379a0: stur            w0, [x3, #0x13]
    // 0x7379a4: r0 = Instance_TextOverflow
    //     0x7379a4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12068] Obj!TextOverflow@a2a871
    //     0x7379a8: ldr             x0, [x0, #0x68]
    // 0x7379ac: StoreField: r3->field_2b = r0
    //     0x7379ac: stur            w0, [x3, #0x2b]
    // 0x7379b0: r0 = 6
    //     0x7379b0: mov             x0, #6
    // 0x7379b4: StoreField: r3->field_37 = r0
    //     0x7379b4: stur            w0, [x3, #0x37]
    // 0x7379b8: r1 = Null
    //     0x7379b8: mov             x1, NULL
    // 0x7379bc: r2 = 4
    //     0x7379bc: mov             x2, #4
    // 0x7379c0: r0 = AllocateArray()
    //     0x7379c0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7379c4: stur            x0, [fp, #-8]
    // 0x7379c8: r16 = Instance_SizedBox
    //     0x7379c8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x7379cc: ldr             x16, [x16, #0x318]
    // 0x7379d0: StoreField: r0->field_f = r16
    //     0x7379d0: stur            w16, [x0, #0xf]
    // 0x7379d4: ldur            x1, [fp, #-0x18]
    // 0x7379d8: StoreField: r0->field_13 = r1
    //     0x7379d8: stur            w1, [x0, #0x13]
    // 0x7379dc: r1 = <Widget>
    //     0x7379dc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7379e0: r0 = AllocateGrowableArray()
    //     0x7379e0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7379e4: mov             x1, x0
    // 0x7379e8: ldur            x0, [fp, #-8]
    // 0x7379ec: StoreField: r1->field_f = r0
    //     0x7379ec: stur            w0, [x1, #0xf]
    // 0x7379f0: r0 = 4
    //     0x7379f0: mov             x0, #4
    // 0x7379f4: StoreField: r1->field_b = r0
    //     0x7379f4: stur            w0, [x1, #0xb]
    // 0x7379f8: mov             x2, x1
    // 0x7379fc: ldur            x1, [fp, #-0x10]
    // 0x737a00: r0 = addAll()
    //     0x737a00: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x737a04: ldur            x2, [fp, #-0x30]
    // 0x737a08: ldur            x1, [fp, #-0x28]
    // 0x737a0c: ldur            x0, [fp, #-0x10]
    // 0x737a10: r0 = Column()
    //     0x737a10: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x737a14: mov             x2, x0
    // 0x737a18: r0 = Instance_Axis
    //     0x737a18: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x737a1c: stur            x2, [fp, #-8]
    // 0x737a20: StoreField: r2->field_f = r0
    //     0x737a20: stur            w0, [x2, #0xf]
    // 0x737a24: r0 = Instance_MainAxisAlignment
    //     0x737a24: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x737a28: ldr             x0, [x0, #0x230]
    // 0x737a2c: StoreField: r2->field_13 = r0
    //     0x737a2c: stur            w0, [x2, #0x13]
    // 0x737a30: r3 = Instance_MainAxisSize
    //     0x737a30: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x737a34: ldr             x3, [x3, #0x330]
    // 0x737a38: ArrayStore: r2[0] = r3  ; List_4
    //     0x737a38: stur            w3, [x2, #0x17]
    // 0x737a3c: r4 = Instance_CrossAxisAlignment
    //     0x737a3c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x737a40: ldr             x4, [x4, #0x238]
    // 0x737a44: StoreField: r2->field_1b = r4
    //     0x737a44: stur            w4, [x2, #0x1b]
    // 0x737a48: r5 = Instance_VerticalDirection
    //     0x737a48: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x737a4c: ldr             x5, [x5, #0x340]
    // 0x737a50: StoreField: r2->field_23 = r5
    //     0x737a50: stur            w5, [x2, #0x23]
    // 0x737a54: r6 = Instance_Clip
    //     0x737a54: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x737a58: ldr             x6, [x6, #0x348]
    // 0x737a5c: StoreField: r2->field_2b = r6
    //     0x737a5c: stur            w6, [x2, #0x2b]
    // 0x737a60: StoreField: r2->field_2f = rZR
    //     0x737a60: stur            xzr, [x2, #0x2f]
    // 0x737a64: ldur            x1, [fp, #-0x10]
    // 0x737a68: StoreField: r2->field_b = r1
    //     0x737a68: stur            w1, [x2, #0xb]
    // 0x737a6c: r1 = <FlexParentData>
    //     0x737a6c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x737a70: ldr             x1, [x1, #0x340]
    // 0x737a74: r0 = Expanded()
    //     0x737a74: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x737a78: mov             x3, x0
    // 0x737a7c: r0 = 1
    //     0x737a7c: mov             x0, #1
    // 0x737a80: stur            x3, [fp, #-0x10]
    // 0x737a84: StoreField: r3->field_13 = r0
    //     0x737a84: stur            x0, [x3, #0x13]
    // 0x737a88: r0 = Instance_FlexFit
    //     0x737a88: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x737a8c: ldr             x0, [x0, #0x348]
    // 0x737a90: StoreField: r3->field_1b = r0
    //     0x737a90: stur            w0, [x3, #0x1b]
    // 0x737a94: ldur            x0, [fp, #-8]
    // 0x737a98: StoreField: r3->field_b = r0
    //     0x737a98: stur            w0, [x3, #0xb]
    // 0x737a9c: r1 = Null
    //     0x737a9c: mov             x1, NULL
    // 0x737aa0: r2 = 6
    //     0x737aa0: mov             x2, #6
    // 0x737aa4: r0 = AllocateArray()
    //     0x737aa4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x737aa8: mov             x2, x0
    // 0x737aac: ldur            x0, [fp, #-0x28]
    // 0x737ab0: stur            x2, [fp, #-8]
    // 0x737ab4: StoreField: r2->field_f = r0
    //     0x737ab4: stur            w0, [x2, #0xf]
    // 0x737ab8: r16 = Instance_SizedBox
    //     0x737ab8: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x737abc: ldr             x16, [x16, #0x360]
    // 0x737ac0: StoreField: r2->field_13 = r16
    //     0x737ac0: stur            w16, [x2, #0x13]
    // 0x737ac4: ldur            x0, [fp, #-0x10]
    // 0x737ac8: ArrayStore: r2[0] = r0  ; List_4
    //     0x737ac8: stur            w0, [x2, #0x17]
    // 0x737acc: r1 = <Widget>
    //     0x737acc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x737ad0: r0 = AllocateGrowableArray()
    //     0x737ad0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x737ad4: mov             x1, x0
    // 0x737ad8: ldur            x0, [fp, #-8]
    // 0x737adc: stur            x1, [fp, #-0x10]
    // 0x737ae0: StoreField: r1->field_f = r0
    //     0x737ae0: stur            w0, [x1, #0xf]
    // 0x737ae4: r0 = 6
    //     0x737ae4: mov             x0, #6
    // 0x737ae8: StoreField: r1->field_b = r0
    //     0x737ae8: stur            w0, [x1, #0xb]
    // 0x737aec: r0 = Row()
    //     0x737aec: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x737af0: mov             x1, x0
    // 0x737af4: r0 = Instance_Axis
    //     0x737af4: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x737af8: stur            x1, [fp, #-8]
    // 0x737afc: StoreField: r1->field_f = r0
    //     0x737afc: stur            w0, [x1, #0xf]
    // 0x737b00: r0 = Instance_MainAxisAlignment
    //     0x737b00: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x737b04: ldr             x0, [x0, #0x230]
    // 0x737b08: StoreField: r1->field_13 = r0
    //     0x737b08: stur            w0, [x1, #0x13]
    // 0x737b0c: r0 = Instance_MainAxisSize
    //     0x737b0c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x737b10: ldr             x0, [x0, #0x330]
    // 0x737b14: ArrayStore: r1[0] = r0  ; List_4
    //     0x737b14: stur            w0, [x1, #0x17]
    // 0x737b18: r0 = Instance_CrossAxisAlignment
    //     0x737b18: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x737b1c: ldr             x0, [x0, #0x238]
    // 0x737b20: StoreField: r1->field_1b = r0
    //     0x737b20: stur            w0, [x1, #0x1b]
    // 0x737b24: r0 = Instance_VerticalDirection
    //     0x737b24: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x737b28: ldr             x0, [x0, #0x340]
    // 0x737b2c: StoreField: r1->field_23 = r0
    //     0x737b2c: stur            w0, [x1, #0x23]
    // 0x737b30: r0 = Instance_Clip
    //     0x737b30: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x737b34: ldr             x0, [x0, #0x348]
    // 0x737b38: StoreField: r1->field_2b = r0
    //     0x737b38: stur            w0, [x1, #0x2b]
    // 0x737b3c: StoreField: r1->field_2f = rZR
    //     0x737b3c: stur            xzr, [x1, #0x2f]
    // 0x737b40: ldur            x2, [fp, #-0x10]
    // 0x737b44: StoreField: r1->field_b = r2
    //     0x737b44: stur            w2, [x1, #0xb]
    // 0x737b48: r0 = Padding()
    //     0x737b48: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x737b4c: mov             x1, x0
    // 0x737b50: r0 = Instance_EdgeInsets
    //     0x737b50: add             x0, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x737b54: ldr             x0, [x0, #0x240]
    // 0x737b58: stur            x1, [fp, #-0x10]
    // 0x737b5c: StoreField: r1->field_f = r0
    //     0x737b5c: stur            w0, [x1, #0xf]
    // 0x737b60: ldur            x0, [fp, #-8]
    // 0x737b64: StoreField: r1->field_b = r0
    //     0x737b64: stur            w0, [x1, #0xb]
    // 0x737b68: r0 = InkWell()
    //     0x737b68: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x737b6c: mov             x3, x0
    // 0x737b70: ldur            x0, [fp, #-0x10]
    // 0x737b74: stur            x3, [fp, #-8]
    // 0x737b78: StoreField: r3->field_b = r0
    //     0x737b78: stur            w0, [x3, #0xb]
    // 0x737b7c: r1 = Function '<anonymous closure>':.
    //     0x737b7c: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f98] Function: [dart:ui] _NativeScene::_NativeScene._ (0x921cc4)
    //     0x737b80: ldr             x1, [x1, #0xf98]
    // 0x737b84: r2 = Null
    //     0x737b84: mov             x2, NULL
    // 0x737b88: r0 = AllocateClosure()
    //     0x737b88: bl              #0x9273d4  ; AllocateClosureStub
    // 0x737b8c: mov             x1, x0
    // 0x737b90: ldur            x0, [fp, #-8]
    // 0x737b94: StoreField: r0->field_f = r1
    //     0x737b94: stur            w1, [x0, #0xf]
    // 0x737b98: r1 = true
    //     0x737b98: add             x1, NULL, #0x20  ; true
    // 0x737b9c: StoreField: r0->field_47 = r1
    //     0x737b9c: stur            w1, [x0, #0x47]
    // 0x737ba0: r2 = Instance_BoxShape
    //     0x737ba0: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x737ba4: ldr             x2, [x2, #0x1c8]
    // 0x737ba8: StoreField: r0->field_4b = r2
    //     0x737ba8: stur            w2, [x0, #0x4b]
    // 0x737bac: ldur            x2, [fp, #-0x30]
    // 0x737bb0: StoreField: r0->field_53 = r2
    //     0x737bb0: stur            w2, [x0, #0x53]
    // 0x737bb4: StoreField: r0->field_73 = r1
    //     0x737bb4: stur            w1, [x0, #0x73]
    // 0x737bb8: r2 = false
    //     0x737bb8: add             x2, NULL, #0x30  ; false
    // 0x737bbc: StoreField: r0->field_77 = r2
    //     0x737bbc: stur            w2, [x0, #0x77]
    // 0x737bc0: StoreField: r0->field_87 = r1
    //     0x737bc0: stur            w1, [x0, #0x87]
    // 0x737bc4: StoreField: r0->field_7f = r2
    //     0x737bc4: stur            w2, [x0, #0x7f]
    // 0x737bc8: r0 = Material()
    //     0x737bc8: bl              #0x6633b0  ; AllocateMaterialStub -> Material (size=0x44)
    // 0x737bcc: mov             x1, x0
    // 0x737bd0: r0 = Instance_MaterialType
    //     0x737bd0: add             x0, PP, #0x14, lsl #12  ; [pp+0x14fa0] Obj!MaterialType@a2b611
    //     0x737bd4: ldr             x0, [x0, #0xfa0]
    // 0x737bd8: stur            x1, [fp, #-0x10]
    // 0x737bdc: StoreField: r1->field_f = r0
    //     0x737bdc: stur            w0, [x1, #0xf]
    // 0x737be0: ArrayStore: r1[0] = rZR  ; List_8
    //     0x737be0: stur            xzr, [x1, #0x17]
    // 0x737be4: r0 = Instance_Color
    //     0x737be4: add             x0, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x737be8: ldr             x0, [x0, #0x860]
    // 0x737bec: StoreField: r1->field_1f = r0
    //     0x737bec: stur            w0, [x1, #0x1f]
    // 0x737bf0: r0 = true
    //     0x737bf0: add             x0, NULL, #0x20  ; true
    // 0x737bf4: StoreField: r1->field_33 = r0
    //     0x737bf4: stur            w0, [x1, #0x33]
    // 0x737bf8: r0 = Instance_Clip
    //     0x737bf8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x737bfc: ldr             x0, [x0, #0x348]
    // 0x737c00: StoreField: r1->field_37 = r0
    //     0x737c00: stur            w0, [x1, #0x37]
    // 0x737c04: r0 = Instance_Duration
    //     0x737c04: add             x0, PP, #0x11, lsl #12  ; [pp+0x112c8] Obj!Duration@a2dc71
    //     0x737c08: ldr             x0, [x0, #0x2c8]
    // 0x737c0c: StoreField: r1->field_3b = r0
    //     0x737c0c: stur            w0, [x1, #0x3b]
    // 0x737c10: ldur            x0, [fp, #-8]
    // 0x737c14: StoreField: r1->field_b = r0
    //     0x737c14: stur            w0, [x1, #0xb]
    // 0x737c18: r0 = false
    //     0x737c18: add             x0, NULL, #0x30  ; false
    // 0x737c1c: StoreField: r1->field_13 = r0
    //     0x737c1c: stur            w0, [x1, #0x13]
    // 0x737c20: r0 = Container()
    //     0x737c20: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x737c24: stur            x0, [fp, #-8]
    // 0x737c28: ldur            x16, [fp, #-0x38]
    // 0x737c2c: ldur            lr, [fp, #-0x10]
    // 0x737c30: stp             lr, x16, [SP]
    // 0x737c34: mov             x1, x0
    // 0x737c38: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, decoration, 0x1, null]
    //     0x737c38: add             x4, PP, #0x14, lsl #12  ; [pp+0x14fa8] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "decoration", 0x1, Null]
    //     0x737c3c: ldr             x4, [x4, #0xfa8]
    // 0x737c40: r0 = Container()
    //     0x737c40: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x737c44: ldur            x0, [fp, #-8]
    // 0x737c48: LeaveFrame
    //     0x737c48: mov             SP, fp
    //     0x737c4c: ldp             fp, lr, [SP], #0x10
    // 0x737c50: ret
    //     0x737c50: ret             
    // 0x737c54: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x737c54: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x737c58: b               #0x73725c
    // 0x737c5c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x737c5c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x737c60: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x737c60: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x737c64: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x737c64: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x737c68: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x737c68: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x737c6c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x737c6c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x737c70: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x737c70: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _isUpcoming(/* No info */) {
    // ** addr: 0x737c74, size: 0x198
    // 0x737c74: EnterFrame
    //     0x737c74: stp             fp, lr, [SP, #-0x10]!
    //     0x737c78: mov             fp, SP
    // 0x737c7c: AllocStack(0x50)
    //     0x737c7c: sub             SP, SP, #0x50
    // 0x737c80: SetupParameters(dynamic _ /* r2 => r0, fp-0x8 */, dynamic _ /* r3 => r2 */)
    //     0x737c80: mov             x0, x2
    //     0x737c84: stur            x2, [fp, #-8]
    //     0x737c88: mov             x2, x3
    // 0x737c8c: CheckStackOverflow
    //     0x737c8c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x737c90: cmp             SP, x16
    //     0x737c94: b.ls            #0x737df8
    // 0x737c98: r0 = _parseTime()
    //     0x737c98: bl              #0x737e0c  ; [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_parseTime
    // 0x737c9c: ldur            x1, [fp, #-8]
    // 0x737ca0: stur            x0, [fp, #-0x10]
    // 0x737ca4: r0 = _parts()
    //     0x737ca4: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x737ca8: mov             x2, x0
    // 0x737cac: LoadField: r0 = r2->field_b
    //     0x737cac: ldur            w0, [x2, #0xb]
    // 0x737cb0: r1 = LoadInt32Instr(r0)
    //     0x737cb0: sbfx            x1, x0, #1, #0x1f
    // 0x737cb4: mov             x0, x1
    // 0x737cb8: r1 = 8
    //     0x737cb8: mov             x1, #8
    // 0x737cbc: cmp             x1, x0
    // 0x737cc0: b.hs            #0x737e00
    // 0x737cc4: LoadField: r0 = r2->field_2f
    //     0x737cc4: ldur            w0, [x2, #0x2f]
    // 0x737cc8: DecompressPointer r0
    //     0x737cc8: add             x0, x0, HEAP, lsl #32
    // 0x737ccc: ldur            x1, [fp, #-8]
    // 0x737cd0: stur            x0, [fp, #-0x18]
    // 0x737cd4: r0 = _parts()
    //     0x737cd4: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x737cd8: mov             x2, x0
    // 0x737cdc: LoadField: r0 = r2->field_b
    //     0x737cdc: ldur            w0, [x2, #0xb]
    // 0x737ce0: r1 = LoadInt32Instr(r0)
    //     0x737ce0: sbfx            x1, x0, #1, #0x1f
    // 0x737ce4: mov             x0, x1
    // 0x737ce8: r1 = 7
    //     0x737ce8: mov             x1, #7
    // 0x737cec: cmp             x1, x0
    // 0x737cf0: b.hs            #0x737e04
    // 0x737cf4: LoadField: r0 = r2->field_2b
    //     0x737cf4: ldur            w0, [x2, #0x2b]
    // 0x737cf8: DecompressPointer r0
    //     0x737cf8: add             x0, x0, HEAP, lsl #32
    // 0x737cfc: ldur            x1, [fp, #-8]
    // 0x737d00: stur            x0, [fp, #-0x20]
    // 0x737d04: r0 = _parts()
    //     0x737d04: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x737d08: mov             x2, x0
    // 0x737d0c: LoadField: r0 = r2->field_b
    //     0x737d0c: ldur            w0, [x2, #0xb]
    // 0x737d10: r1 = LoadInt32Instr(r0)
    //     0x737d10: sbfx            x1, x0, #1, #0x1f
    // 0x737d14: mov             x0, x1
    // 0x737d18: r1 = 5
    //     0x737d18: mov             x1, #5
    // 0x737d1c: cmp             x1, x0
    // 0x737d20: b.hs            #0x737e08
    // 0x737d24: LoadField: r3 = r2->field_23
    //     0x737d24: ldur            w3, [x2, #0x23]
    // 0x737d28: DecompressPointer r3
    //     0x737d28: add             x3, x3, HEAP, lsl #32
    // 0x737d2c: ldur            x0, [fp, #-0x10]
    // 0x737d30: stur            x3, [fp, #-0x30]
    // 0x737d34: LoadField: r2 = r0->field_7
    //     0x737d34: ldur            x2, [x0, #7]
    // 0x737d38: LoadField: r4 = r0->field_f
    //     0x737d38: ldur            x4, [x0, #0xf]
    // 0x737d3c: ldur            x0, [fp, #-0x18]
    // 0x737d40: r5 = LoadInt32Instr(r0)
    //     0x737d40: sbfx            x5, x0, #1, #0x1f
    //     0x737d44: tbz             w0, #0, #0x737d4c
    //     0x737d48: ldur            x5, [x0, #7]
    // 0x737d4c: stur            x5, [fp, #-0x28]
    // 0x737d50: r0 = BoxInt64Instr(r2)
    //     0x737d50: sbfiz           x0, x2, #1, #0x1f
    //     0x737d54: cmp             x2, x0, asr #1
    //     0x737d58: b.eq            #0x737d64
    //     0x737d5c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x737d60: stur            x2, [x0, #7]
    // 0x737d64: mov             x2, x0
    // 0x737d68: stur            x2, [fp, #-0x10]
    // 0x737d6c: r0 = BoxInt64Instr(r4)
    //     0x737d6c: sbfiz           x0, x4, #1, #0x1f
    //     0x737d70: cmp             x4, x0, asr #1
    //     0x737d74: b.eq            #0x737d80
    //     0x737d78: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x737d7c: stur            x4, [x0, #7]
    // 0x737d80: stur            x0, [fp, #-8]
    // 0x737d84: r0 = DateTime()
    //     0x737d84: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x737d88: stur            x0, [fp, #-0x18]
    // 0x737d8c: ldur            x16, [fp, #-0x20]
    // 0x737d90: ldur            lr, [fp, #-0x30]
    // 0x737d94: stp             lr, x16, [SP, #0x10]
    // 0x737d98: ldur            x16, [fp, #-0x10]
    // 0x737d9c: ldur            lr, [fp, #-8]
    // 0x737da0: stp             lr, x16, [SP]
    // 0x737da4: mov             x1, x0
    // 0x737da8: ldur            x2, [fp, #-0x28]
    // 0x737dac: r4 = const [0, 0x6, 0x4, 0x6, null]
    //     0x737dac: add             x4, PP, #0xc, lsl #12  ; [pp+0xc410] List(5) [0, 0x6, 0x4, 0x6, Null]
    //     0x737db0: ldr             x4, [x4, #0x410]
    // 0x737db4: r0 = DateTime()
    //     0x737db4: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x737db8: r0 = DateTime()
    //     0x737db8: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x737dbc: mov             x1, x0
    // 0x737dc0: r0 = false
    //     0x737dc0: add             x0, NULL, #0x30  ; false
    // 0x737dc4: stur            x1, [fp, #-8]
    // 0x737dc8: StoreField: r1->field_7 = r0
    //     0x737dc8: stur            w0, [x1, #7]
    // 0x737dcc: r0 = _getCurrentMicros()
    //     0x737dcc: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x737dd0: r1 = LoadInt32Instr(r0)
    //     0x737dd0: sbfx            x1, x0, #1, #0x1f
    //     0x737dd4: tbz             w0, #0, #0x737ddc
    //     0x737dd8: ldur            x1, [x0, #7]
    // 0x737ddc: ldur            x2, [fp, #-8]
    // 0x737de0: StoreField: r2->field_b = r1
    //     0x737de0: stur            x1, [x2, #0xb]
    // 0x737de4: ldur            x1, [fp, #-0x18]
    // 0x737de8: r0 = isAfter()
    //     0x737de8: bl              #0x5793ac  ; [dart:core] DateTime::isAfter
    // 0x737dec: LeaveFrame
    //     0x737dec: mov             SP, fp
    //     0x737df0: ldp             fp, lr, [SP], #0x10
    // 0x737df4: ret
    //     0x737df4: ret             
    // 0x737df8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x737df8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x737dfc: b               #0x737c98
    // 0x737e00: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x737e00: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x737e04: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x737e04: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x737e08: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x737e08: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  _ _parseTime(/* No info */) {
    // ** addr: 0x737e0c, size: 0xe0
    // 0x737e0c: EnterFrame
    //     0x737e0c: stp             fp, lr, [SP, #-0x10]!
    //     0x737e10: mov             fp, SP
    // 0x737e14: AllocStack(0x18)
    //     0x737e14: sub             SP, SP, #0x18
    // 0x737e18: SetupParameters(TakvimScreenState this /* r1 => r0 */, dynamic _ /* r2 => r1 */)
    //     0x737e18: mov             x0, x1
    //     0x737e1c: mov             x1, x2
    // 0x737e20: CheckStackOverflow
    //     0x737e20: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x737e24: cmp             SP, x16
    //     0x737e28: b.ls            #0x737edc
    // 0x737e2c: r0 = LoadClassIdInstr(r1)
    //     0x737e2c: ldur            x0, [x1, #-1]
    //     0x737e30: ubfx            x0, x0, #0xc, #0x14
    // 0x737e34: r2 = ":"
    //     0x737e34: ldr             x2, [PP, #0x990]  ; [pp+0x990] ":"
    // 0x737e38: r0 = GDT[cid_x0 + -0x1000]()
    //     0x737e38: sub             lr, x0, #1, lsl #12
    //     0x737e3c: ldr             lr, [x21, lr, lsl #3]
    //     0x737e40: blr             lr
    // 0x737e44: mov             x2, x0
    // 0x737e48: stur            x2, [fp, #-8]
    // 0x737e4c: LoadField: r0 = r2->field_b
    //     0x737e4c: ldur            w0, [x2, #0xb]
    // 0x737e50: r1 = LoadInt32Instr(r0)
    //     0x737e50: sbfx            x1, x0, #1, #0x1f
    // 0x737e54: mov             x0, x1
    // 0x737e58: r1 = 0
    //     0x737e58: mov             x1, #0
    // 0x737e5c: cmp             x1, x0
    // 0x737e60: b.hs            #0x737ee4
    // 0x737e64: LoadField: r0 = r2->field_f
    //     0x737e64: ldur            w0, [x2, #0xf]
    // 0x737e68: DecompressPointer r0
    //     0x737e68: add             x0, x0, HEAP, lsl #32
    // 0x737e6c: LoadField: r1 = r0->field_f
    //     0x737e6c: ldur            w1, [x0, #0xf]
    // 0x737e70: DecompressPointer r1
    //     0x737e70: add             x1, x1, HEAP, lsl #32
    // 0x737e74: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x737e74: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x737e78: r0 = parse()
    //     0x737e78: bl              #0x3e9298  ; [dart:core] int::parse
    // 0x737e7c: mov             x3, x0
    // 0x737e80: ldur            x2, [fp, #-8]
    // 0x737e84: stur            x3, [fp, #-0x10]
    // 0x737e88: LoadField: r0 = r2->field_b
    //     0x737e88: ldur            w0, [x2, #0xb]
    // 0x737e8c: r1 = LoadInt32Instr(r0)
    //     0x737e8c: sbfx            x1, x0, #1, #0x1f
    // 0x737e90: mov             x0, x1
    // 0x737e94: r1 = 1
    //     0x737e94: mov             x1, #1
    // 0x737e98: cmp             x1, x0
    // 0x737e9c: b.hs            #0x737ee8
    // 0x737ea0: LoadField: r0 = r2->field_f
    //     0x737ea0: ldur            w0, [x2, #0xf]
    // 0x737ea4: DecompressPointer r0
    //     0x737ea4: add             x0, x0, HEAP, lsl #32
    // 0x737ea8: LoadField: r1 = r0->field_13
    //     0x737ea8: ldur            w1, [x0, #0x13]
    // 0x737eac: DecompressPointer r1
    //     0x737eac: add             x1, x1, HEAP, lsl #32
    // 0x737eb0: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x737eb0: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x737eb4: r0 = parse()
    //     0x737eb4: bl              #0x3e9298  ; [dart:core] int::parse
    // 0x737eb8: stur            x0, [fp, #-0x18]
    // 0x737ebc: r0 = TimeOfDay()
    //     0x737ebc: bl              #0x6a3024  ; AllocateTimeOfDayStub -> TimeOfDay (size=0x18)
    // 0x737ec0: ldur            x1, [fp, #-0x10]
    // 0x737ec4: StoreField: r0->field_7 = r1
    //     0x737ec4: stur            x1, [x0, #7]
    // 0x737ec8: ldur            x1, [fp, #-0x18]
    // 0x737ecc: StoreField: r0->field_f = r1
    //     0x737ecc: stur            x1, [x0, #0xf]
    // 0x737ed0: LeaveFrame
    //     0x737ed0: mov             SP, fp
    //     0x737ed4: ldp             fp, lr, [SP], #0x10
    // 0x737ed8: ret
    //     0x737ed8: ret             
    // 0x737edc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x737edc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x737ee0: b               #0x737e2c
    // 0x737ee4: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x737ee4: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x737ee8: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x737ee8: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] void _nextDay(dynamic) {
    // ** addr: 0x737eec, size: 0x38
    // 0x737eec: EnterFrame
    //     0x737eec: stp             fp, lr, [SP, #-0x10]!
    //     0x737ef0: mov             fp, SP
    // 0x737ef4: ldr             x0, [fp, #0x10]
    // 0x737ef8: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x737ef8: ldur            w1, [x0, #0x17]
    // 0x737efc: DecompressPointer r1
    //     0x737efc: add             x1, x1, HEAP, lsl #32
    // 0x737f00: CheckStackOverflow
    //     0x737f00: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x737f04: cmp             SP, x16
    //     0x737f08: b.ls            #0x737f1c
    // 0x737f0c: r0 = _nextDay()
    //     0x737f0c: bl              #0x737f24  ; [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_nextDay
    // 0x737f10: LeaveFrame
    //     0x737f10: mov             SP, fp
    //     0x737f14: ldp             fp, lr, [SP], #0x10
    // 0x737f18: ret
    //     0x737f18: ret             
    // 0x737f1c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x737f1c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x737f20: b               #0x737f0c
  }
  _ _nextDay(/* No info */) {
    // ** addr: 0x737f24, size: 0xbc
    // 0x737f24: EnterFrame
    //     0x737f24: stp             fp, lr, [SP, #-0x10]!
    //     0x737f28: mov             fp, SP
    // 0x737f2c: AllocStack(0x18)
    //     0x737f2c: sub             SP, SP, #0x18
    // 0x737f30: SetupParameters(TakvimScreenState this /* r1 => r1, fp-0x8 */)
    //     0x737f30: stur            x1, [fp, #-8]
    // 0x737f34: CheckStackOverflow
    //     0x737f34: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x737f38: cmp             SP, x16
    //     0x737f3c: b.ls            #0x737fc8
    // 0x737f40: r1 = 1
    //     0x737f40: mov             x1, #1
    // 0x737f44: r0 = AllocateContext()
    //     0x737f44: bl              #0x927010  ; AllocateContextStub
    // 0x737f48: mov             x1, x0
    // 0x737f4c: ldur            x0, [fp, #-8]
    // 0x737f50: StoreField: r1->field_f = r0
    //     0x737f50: stur            w0, [x1, #0xf]
    // 0x737f54: mov             x2, x1
    // 0x737f58: r1 = Function '<anonymous closure>':.
    //     0x737f58: add             x1, PP, #0x14, lsl #12  ; [pp+0x14fd0] AnonymousClosure: (0x737fe0), in [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_nextDay (0x737f24)
    //     0x737f5c: ldr             x1, [x1, #0xfd0]
    // 0x737f60: r0 = AllocateClosure()
    //     0x737f60: bl              #0x9273d4  ; AllocateClosureStub
    // 0x737f64: ldur            x1, [fp, #-8]
    // 0x737f68: mov             x2, x0
    // 0x737f6c: r0 = setState()
    //     0x737f6c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x737f70: ldur            x0, [fp, #-8]
    // 0x737f74: LoadField: r1 = r0->field_f
    //     0x737f74: ldur            w1, [x0, #0xf]
    // 0x737f78: DecompressPointer r1
    //     0x737f78: add             x1, x1, HEAP, lsl #32
    // 0x737f7c: cmp             w1, NULL
    // 0x737f80: b.eq            #0x737fd0
    // 0x737f84: r16 = <EventProvider>
    //     0x737f84: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b80] TypeArguments: <EventProvider>
    //     0x737f88: ldr             x16, [x16, #0xb80]
    // 0x737f8c: stp             x1, x16, [SP]
    // 0x737f90: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x737f90: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x737f94: r0 = ReadContext.read()
    //     0x737f94: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x737f98: mov             x1, x0
    // 0x737f9c: ldur            x0, [fp, #-8]
    // 0x737fa0: LoadField: r2 = r0->field_13
    //     0x737fa0: ldur            w2, [x0, #0x13]
    // 0x737fa4: DecompressPointer r2
    //     0x737fa4: add             x2, x2, HEAP, lsl #32
    // 0x737fa8: r16 = Sentinel
    //     0x737fa8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x737fac: cmp             w2, w16
    // 0x737fb0: b.eq            #0x737fd4
    // 0x737fb4: r0 = selectDate()
    //     0x737fb4: bl              #0x6d1f1c  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::selectDate
    // 0x737fb8: r0 = Null
    //     0x737fb8: mov             x0, NULL
    // 0x737fbc: LeaveFrame
    //     0x737fbc: mov             SP, fp
    //     0x737fc0: ldp             fp, lr, [SP], #0x10
    // 0x737fc4: ret
    //     0x737fc4: ret             
    // 0x737fc8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x737fc8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x737fcc: b               #0x737f40
    // 0x737fd0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x737fd0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x737fd4: r9 = _currentDate
    //     0x737fd4: add             x9, PP, #0x14, lsl #12  ; [pp+0x14f10] Field <TakvimScreenState._currentDate@938372397>: late (offset: 0x14)
    //     0x737fd8: ldr             x9, [x9, #0xf10]
    // 0x737fdc: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x737fdc: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x737fe0, size: 0x94
    // 0x737fe0: EnterFrame
    //     0x737fe0: stp             fp, lr, [SP, #-0x10]!
    //     0x737fe4: mov             fp, SP
    // 0x737fe8: AllocStack(0x8)
    //     0x737fe8: sub             SP, SP, #8
    // 0x737fec: SetupParameters([dynamic _ /* r0 */])
    //     0x737fec: ldr             x0, [fp, #0x10]
    //     0x737ff0: ldur            w1, [x0, #0x17]
    //     0x737ff4: add             x1, x1, HEAP, lsl #32
    // 0x737ff8: CheckStackOverflow
    //     0x737ff8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x737ffc: cmp             SP, x16
    //     0x738000: b.ls            #0x738060
    // 0x738004: LoadField: r0 = r1->field_f
    //     0x738004: ldur            w0, [x1, #0xf]
    // 0x738008: DecompressPointer r0
    //     0x738008: add             x0, x0, HEAP, lsl #32
    // 0x73800c: stur            x0, [fp, #-8]
    // 0x738010: LoadField: r1 = r0->field_13
    //     0x738010: ldur            w1, [x0, #0x13]
    // 0x738014: DecompressPointer r1
    //     0x738014: add             x1, x1, HEAP, lsl #32
    // 0x738018: r16 = Sentinel
    //     0x738018: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x73801c: cmp             w1, w16
    // 0x738020: b.eq            #0x738068
    // 0x738024: r2 = Instance_Duration
    //     0x738024: add             x2, PP, #0x14, lsl #12  ; [pp+0x14fd8] Obj!Duration@a2de61
    //     0x738028: ldr             x2, [x2, #0xfd8]
    // 0x73802c: r0 = add()
    //     0x73802c: bl              #0x4e712c  ; [dart:core] DateTime::add
    // 0x738030: ldur            x1, [fp, #-8]
    // 0x738034: StoreField: r1->field_13 = r0
    //     0x738034: stur            w0, [x1, #0x13]
    //     0x738038: ldurb           w16, [x1, #-1]
    //     0x73803c: ldurb           w17, [x0, #-1]
    //     0x738040: and             x16, x17, x16, lsr #2
    //     0x738044: tst             x16, HEAP, lsr #32
    //     0x738048: b.eq            #0x738050
    //     0x73804c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x738050: r0 = Null
    //     0x738050: mov             x0, NULL
    // 0x738054: LeaveFrame
    //     0x738054: mov             SP, fp
    //     0x738058: ldp             fp, lr, [SP], #0x10
    // 0x73805c: ret
    //     0x73805c: ret             
    // 0x738060: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x738060: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x738064: b               #0x738004
    // 0x738068: r9 = _currentDate
    //     0x738068: add             x9, PP, #0x14, lsl #12  ; [pp+0x14f10] Field <TakvimScreenState._currentDate@938372397>: late (offset: 0x14)
    //     0x73806c: ldr             x9, [x9, #0xf10]
    // 0x738070: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x738070: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  [closure] void _previousDay(dynamic) {
    // ** addr: 0x738074, size: 0x38
    // 0x738074: EnterFrame
    //     0x738074: stp             fp, lr, [SP, #-0x10]!
    //     0x738078: mov             fp, SP
    // 0x73807c: ldr             x0, [fp, #0x10]
    // 0x738080: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x738080: ldur            w1, [x0, #0x17]
    // 0x738084: DecompressPointer r1
    //     0x738084: add             x1, x1, HEAP, lsl #32
    // 0x738088: CheckStackOverflow
    //     0x738088: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73808c: cmp             SP, x16
    //     0x738090: b.ls            #0x7380a4
    // 0x738094: r0 = _previousDay()
    //     0x738094: bl              #0x7380ac  ; [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_previousDay
    // 0x738098: LeaveFrame
    //     0x738098: mov             SP, fp
    //     0x73809c: ldp             fp, lr, [SP], #0x10
    // 0x7380a0: ret
    //     0x7380a0: ret             
    // 0x7380a4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7380a4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7380a8: b               #0x738094
  }
  _ _previousDay(/* No info */) {
    // ** addr: 0x7380ac, size: 0xbc
    // 0x7380ac: EnterFrame
    //     0x7380ac: stp             fp, lr, [SP, #-0x10]!
    //     0x7380b0: mov             fp, SP
    // 0x7380b4: AllocStack(0x18)
    //     0x7380b4: sub             SP, SP, #0x18
    // 0x7380b8: SetupParameters(TakvimScreenState this /* r1 => r1, fp-0x8 */)
    //     0x7380b8: stur            x1, [fp, #-8]
    // 0x7380bc: CheckStackOverflow
    //     0x7380bc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7380c0: cmp             SP, x16
    //     0x7380c4: b.ls            #0x738150
    // 0x7380c8: r1 = 1
    //     0x7380c8: mov             x1, #1
    // 0x7380cc: r0 = AllocateContext()
    //     0x7380cc: bl              #0x927010  ; AllocateContextStub
    // 0x7380d0: mov             x1, x0
    // 0x7380d4: ldur            x0, [fp, #-8]
    // 0x7380d8: StoreField: r1->field_f = r0
    //     0x7380d8: stur            w0, [x1, #0xf]
    // 0x7380dc: mov             x2, x1
    // 0x7380e0: r1 = Function '<anonymous closure>':.
    //     0x7380e0: add             x1, PP, #0x15, lsl #12  ; [pp+0x15270] AnonymousClosure: (0x738168), in [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_previousDay (0x7380ac)
    //     0x7380e4: ldr             x1, [x1, #0x270]
    // 0x7380e8: r0 = AllocateClosure()
    //     0x7380e8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7380ec: ldur            x1, [fp, #-8]
    // 0x7380f0: mov             x2, x0
    // 0x7380f4: r0 = setState()
    //     0x7380f4: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x7380f8: ldur            x0, [fp, #-8]
    // 0x7380fc: LoadField: r1 = r0->field_f
    //     0x7380fc: ldur            w1, [x0, #0xf]
    // 0x738100: DecompressPointer r1
    //     0x738100: add             x1, x1, HEAP, lsl #32
    // 0x738104: cmp             w1, NULL
    // 0x738108: b.eq            #0x738158
    // 0x73810c: r16 = <EventProvider>
    //     0x73810c: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b80] TypeArguments: <EventProvider>
    //     0x738110: ldr             x16, [x16, #0xb80]
    // 0x738114: stp             x1, x16, [SP]
    // 0x738118: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x738118: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x73811c: r0 = ReadContext.read()
    //     0x73811c: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x738120: mov             x1, x0
    // 0x738124: ldur            x0, [fp, #-8]
    // 0x738128: LoadField: r2 = r0->field_13
    //     0x738128: ldur            w2, [x0, #0x13]
    // 0x73812c: DecompressPointer r2
    //     0x73812c: add             x2, x2, HEAP, lsl #32
    // 0x738130: r16 = Sentinel
    //     0x738130: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x738134: cmp             w2, w16
    // 0x738138: b.eq            #0x73815c
    // 0x73813c: r0 = selectDate()
    //     0x73813c: bl              #0x6d1f1c  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::selectDate
    // 0x738140: r0 = Null
    //     0x738140: mov             x0, NULL
    // 0x738144: LeaveFrame
    //     0x738144: mov             SP, fp
    //     0x738148: ldp             fp, lr, [SP], #0x10
    // 0x73814c: ret
    //     0x73814c: ret             
    // 0x738150: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x738150: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x738154: b               #0x7380c8
    // 0x738158: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x738158: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x73815c: r9 = _currentDate
    //     0x73815c: add             x9, PP, #0x14, lsl #12  ; [pp+0x14f10] Field <TakvimScreenState._currentDate@938372397>: late (offset: 0x14)
    //     0x738160: ldr             x9, [x9, #0xf10]
    // 0x738164: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x738164: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x738168, size: 0x94
    // 0x738168: EnterFrame
    //     0x738168: stp             fp, lr, [SP, #-0x10]!
    //     0x73816c: mov             fp, SP
    // 0x738170: AllocStack(0x8)
    //     0x738170: sub             SP, SP, #8
    // 0x738174: SetupParameters([dynamic _ /* r0 */])
    //     0x738174: ldr             x0, [fp, #0x10]
    //     0x738178: ldur            w1, [x0, #0x17]
    //     0x73817c: add             x1, x1, HEAP, lsl #32
    // 0x738180: CheckStackOverflow
    //     0x738180: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x738184: cmp             SP, x16
    //     0x738188: b.ls            #0x7381e8
    // 0x73818c: LoadField: r0 = r1->field_f
    //     0x73818c: ldur            w0, [x1, #0xf]
    // 0x738190: DecompressPointer r0
    //     0x738190: add             x0, x0, HEAP, lsl #32
    // 0x738194: stur            x0, [fp, #-8]
    // 0x738198: LoadField: r1 = r0->field_13
    //     0x738198: ldur            w1, [x0, #0x13]
    // 0x73819c: DecompressPointer r1
    //     0x73819c: add             x1, x1, HEAP, lsl #32
    // 0x7381a0: r16 = Sentinel
    //     0x7381a0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x7381a4: cmp             w1, w16
    // 0x7381a8: b.eq            #0x7381f0
    // 0x7381ac: r2 = Instance_Duration
    //     0x7381ac: add             x2, PP, #0x14, lsl #12  ; [pp+0x14fd8] Obj!Duration@a2de61
    //     0x7381b0: ldr             x2, [x2, #0xfd8]
    // 0x7381b4: r0 = subtract()
    //     0x7381b4: bl              #0x5ce6d0  ; [dart:core] DateTime::subtract
    // 0x7381b8: ldur            x1, [fp, #-8]
    // 0x7381bc: StoreField: r1->field_13 = r0
    //     0x7381bc: stur            w0, [x1, #0x13]
    //     0x7381c0: ldurb           w16, [x1, #-1]
    //     0x7381c4: ldurb           w17, [x0, #-1]
    //     0x7381c8: and             x16, x17, x16, lsr #2
    //     0x7381cc: tst             x16, HEAP, lsr #32
    //     0x7381d0: b.eq            #0x7381d8
    //     0x7381d4: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7381d8: r0 = Null
    //     0x7381d8: mov             x0, NULL
    // 0x7381dc: LeaveFrame
    //     0x7381dc: mov             SP, fp
    //     0x7381e0: ldp             fp, lr, [SP], #0x10
    // 0x7381e4: ret
    //     0x7381e4: ret             
    // 0x7381e8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7381e8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7381ec: b               #0x73818c
    // 0x7381f0: r9 = _currentDate
    //     0x7381f0: add             x9, PP, #0x14, lsl #12  ; [pp+0x14f10] Field <TakvimScreenState._currentDate@938372397>: late (offset: 0x14)
    //     0x7381f4: ldr             x9, [x9, #0xf10]
    // 0x7381f8: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x7381f8: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  dynamic dispose(dynamic) {
    // ** addr: 0x74c764, size: 0x24
    // 0x74c764: EnterFrame
    //     0x74c764: stp             fp, lr, [SP, #-0x10]!
    //     0x74c768: mov             fp, SP
    // 0x74c76c: ldr             x2, [fp, #0x10]
    // 0x74c770: r1 = Function 'dispose':.
    //     0x74c770: add             x1, PP, #0x27, lsl #12  ; [pp+0x27548] AnonymousClosure: (0x74c788), in [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::dispose (0x754190)
    //     0x74c774: ldr             x1, [x1, #0x548]
    // 0x74c778: r0 = AllocateClosure()
    //     0x74c778: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74c77c: LeaveFrame
    //     0x74c77c: mov             SP, fp
    //     0x74c780: ldp             fp, lr, [SP], #0x10
    // 0x74c784: ret
    //     0x74c784: ret             
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x74c788, size: 0x38
    // 0x74c788: EnterFrame
    //     0x74c788: stp             fp, lr, [SP, #-0x10]!
    //     0x74c78c: mov             fp, SP
    // 0x74c790: ldr             x0, [fp, #0x10]
    // 0x74c794: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74c794: ldur            w1, [x0, #0x17]
    // 0x74c798: DecompressPointer r1
    //     0x74c798: add             x1, x1, HEAP, lsl #32
    // 0x74c79c: CheckStackOverflow
    //     0x74c79c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74c7a0: cmp             SP, x16
    //     0x74c7a4: b.ls            #0x74c7b8
    // 0x74c7a8: r0 = dispose()
    //     0x74c7a8: bl              #0x754190  ; [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::dispose
    // 0x74c7ac: LeaveFrame
    //     0x74c7ac: mov             SP, fp
    //     0x74c7b0: ldp             fp, lr, [SP], #0x10
    // 0x74c7b4: ret
    //     0x74c7b4: ret             
    // 0x74c7b8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74c7b8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74c7bc: b               #0x74c7a8
  }
  _ dispose(/* No info */) {
    // ** addr: 0x754190, size: 0x54
    // 0x754190: EnterFrame
    //     0x754190: stp             fp, lr, [SP, #-0x10]!
    //     0x754194: mov             fp, SP
    // 0x754198: CheckStackOverflow
    //     0x754198: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x75419c: cmp             SP, x16
    //     0x7541a0: b.ls            #0x7541d0
    // 0x7541a4: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x7541a4: ldur            w0, [x1, #0x17]
    // 0x7541a8: DecompressPointer r0
    //     0x7541a8: add             x0, x0, HEAP, lsl #32
    // 0x7541ac: r16 = Sentinel
    //     0x7541ac: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x7541b0: cmp             w0, w16
    // 0x7541b4: b.eq            #0x7541d8
    // 0x7541b8: mov             x1, x0
    // 0x7541bc: r0 = dispose()
    //     0x7541bc: bl              #0x63cc58  ; [package:flutter/src/widgets/scroll_controller.dart] ScrollController::dispose
    // 0x7541c0: r0 = Null
    //     0x7541c0: mov             x0, NULL
    // 0x7541c4: LeaveFrame
    //     0x7541c4: mov             SP, fp
    //     0x7541c8: ldp             fp, lr, [SP], #0x10
    // 0x7541cc: ret
    //     0x7541cc: ret             
    // 0x7541d0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7541d0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7541d4: b               #0x7541a4
    // 0x7541d8: r9 = _pageController
    //     0x7541d8: add             x9, PP, #0x15, lsl #12  ; [pp+0x15430] Field <TakvimScreenState._pageController@938372397>: late (offset: 0x18)
    //     0x7541dc: ldr             x9, [x9, #0x430]
    // 0x7541e0: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x7541e0: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
}

// class id: 3194, size: 0xc, field offset: 0xc
//   const constructor, 
class TakvimScreen extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bf1f0, size: 0x30
    // 0x7bf1f0: EnterFrame
    //     0x7bf1f0: stp             fp, lr, [SP, #-0x10]!
    //     0x7bf1f4: mov             fp, SP
    // 0x7bf1f8: mov             x0, x1
    // 0x7bf1fc: r1 = <TakvimScreen>
    //     0x7bf1fc: add             x1, PP, #0x12, lsl #12  ; [pp+0x12548] TypeArguments: <TakvimScreen>
    //     0x7bf200: ldr             x1, [x1, #0x548]
    // 0x7bf204: r0 = TakvimScreenState()
    //     0x7bf204: bl              #0x7bf220  ; AllocateTakvimScreenStateStub -> TakvimScreenState (size=0x1c)
    // 0x7bf208: r1 = Sentinel
    //     0x7bf208: ldr             x1, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x7bf20c: StoreField: r0->field_13 = r1
    //     0x7bf20c: stur            w1, [x0, #0x13]
    // 0x7bf210: ArrayStore: r0[0] = r1  ; List_4
    //     0x7bf210: stur            w1, [x0, #0x17]
    // 0x7bf214: LeaveFrame
    //     0x7bf214: mov             SP, fp
    //     0x7bf218: ldp             fp, lr, [SP], #0x10
    // 0x7bf21c: ret
    //     0x7bf21c: ret             
  }
}

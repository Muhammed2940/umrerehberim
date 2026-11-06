// lib: , url: package:umrem_demo/features/home/screens/rehber_iletisim.dart

// class id: 1049586, size: 0x8
class :: {
}

// class id: 2466, size: 0x3c, field offset: 0x14
class _RehberIletisimPageState extends State<dynamic> {

  _ initState(/* No info */) {
    // ** addr: 0x5e7590, size: 0x30
    // 0x5e7590: EnterFrame
    //     0x5e7590: stp             fp, lr, [SP, #-0x10]!
    //     0x5e7594: mov             fp, SP
    // 0x5e7598: CheckStackOverflow
    //     0x5e7598: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e759c: cmp             SP, x16
    //     0x5e75a0: b.ls            #0x5e75b8
    // 0x5e75a4: r0 = _loadData()
    //     0x5e75a4: bl              #0x5e75e0  ; [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_loadData
    // 0x5e75a8: r0 = Null
    //     0x5e75a8: mov             x0, NULL
    // 0x5e75ac: LeaveFrame
    //     0x5e75ac: mov             SP, fp
    //     0x5e75b0: ldp             fp, lr, [SP], #0x10
    // 0x5e75b4: ret
    //     0x5e75b4: ret             
    // 0x5e75b8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e75b8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e75bc: b               #0x5e75a4
  }
  _ _loadData(/* No info */) async {
    // ** addr: 0x5e75e0, size: 0x158
    // 0x5e75e0: EnterFrame
    //     0x5e75e0: stp             fp, lr, [SP, #-0x10]!
    //     0x5e75e4: mov             fp, SP
    // 0x5e75e8: AllocStack(0x78)
    //     0x5e75e8: sub             SP, SP, #0x78
    // 0x5e75ec: SetupParameters(_RehberIletisimPageState this /* r1 => r1, fp-0x60 */)
    //     0x5e75ec: stur            NULL, [fp, #-8]
    //     0x5e75f0: stur            x1, [fp, #-0x60]
    // 0x5e75f4: CheckStackOverflow
    //     0x5e75f4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e75f8: cmp             SP, x16
    //     0x5e75fc: b.ls            #0x5e7730
    // 0x5e7600: r1 = 1
    //     0x5e7600: mov             x1, #1
    // 0x5e7604: r0 = AllocateContext()
    //     0x5e7604: bl              #0x927010  ; AllocateContextStub
    // 0x5e7608: mov             x2, x0
    // 0x5e760c: ldur            x1, [fp, #-0x60]
    // 0x5e7610: stur            x2, [fp, #-0x68]
    // 0x5e7614: StoreField: r2->field_f = r1
    //     0x5e7614: stur            w1, [x2, #0xf]
    // 0x5e7618: InitAsync() -> Future<void?>
    //     0x5e7618: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5e761c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e7620: ldur            x2, [fp, #-0x68]
    // 0x5e7624: r1 = Function '<anonymous closure>':.
    //     0x5e7624: add             x1, PP, #0x15, lsl #12  ; [pp+0x15660] AnonymousClosure: (0x5e96f4), in [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_loadData (0x5e75e0)
    //     0x5e7628: ldr             x1, [x1, #0x660]
    // 0x5e762c: r0 = AllocateClosure()
    //     0x5e762c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e7630: ldur            x1, [fp, #-0x60]
    // 0x5e7634: mov             x2, x0
    // 0x5e7638: r0 = setState()
    //     0x5e7638: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x5e763c: ldur            x0, [fp, #-0x60]
    // 0x5e7640: mov             x1, x0
    // 0x5e7644: r0 = _determineActiveTrip()
    //     0x5e7644: bl              #0x5e8b88  ; [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_determineActiveTrip
    // 0x5e7648: mov             x1, x0
    // 0x5e764c: stur            x1, [fp, #-0x70]
    // 0x5e7650: r0 = Await()
    //     0x5e7650: bl              #0x3dd188  ; AwaitStub
    // 0x5e7654: ldur            x0, [fp, #-0x60]
    // 0x5e7658: LoadField: r1 = r0->field_1b
    //     0x5e7658: ldur            w1, [x0, #0x1b]
    // 0x5e765c: DecompressPointer r1
    //     0x5e765c: add             x1, x1, HEAP, lsl #32
    // 0x5e7660: cmp             w1, NULL
    // 0x5e7664: b.eq            #0x5e767c
    // 0x5e7668: mov             x1, x0
    // 0x5e766c: r0 = _loadTripManager()
    //     0x5e766c: bl              #0x5e8800  ; [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_loadTripManager
    // 0x5e7670: mov             x1, x0
    // 0x5e7674: stur            x1, [fp, #-0x70]
    // 0x5e7678: r0 = Await()
    //     0x5e7678: bl              #0x3dd188  ; AwaitStub
    // 0x5e767c: ldur            x0, [fp, #-0x60]
    // 0x5e7680: LoadField: r1 = r0->field_27
    //     0x5e7680: ldur            w1, [x0, #0x27]
    // 0x5e7684: DecompressPointer r1
    //     0x5e7684: add             x1, x1, HEAP, lsl #32
    // 0x5e7688: cmp             w1, NULL
    // 0x5e768c: b.eq            #0x5e76f8
    // 0x5e7690: mov             x1, x0
    // 0x5e7694: r0 = _listenToManagerLocation()
    //     0x5e7694: bl              #0x5e7738  ; [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_listenToManagerLocation
    // 0x5e7698: b               #0x5e76f8
    // 0x5e769c: sub             SP, fp, #0x78
    // 0x5e76a0: stur            x0, [fp, #-0x70]
    // 0x5e76a4: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x5e76a4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e76a8: ldr             x0, [x0, #0xcb8]
    //     0x5e76ac: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5e76b0: cmp             w0, w16
    //     0x5e76b4: b.ne            #0x5e76c0
    //     0x5e76b8: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x5e76bc: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x5e76c0: r1 = Null
    //     0x5e76c0: mov             x1, NULL
    // 0x5e76c4: r2 = 4
    //     0x5e76c4: mov             x2, #4
    // 0x5e76c8: r0 = AllocateArray()
    //     0x5e76c8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5e76cc: r16 = "Rehber bilgileri yüklenirken hata: "
    //     0x5e76cc: add             x16, PP, #0x15, lsl #12  ; [pp+0x15668] "Rehber bilgileri yüklenirken hata: "
    //     0x5e76d0: ldr             x16, [x16, #0x668]
    // 0x5e76d4: StoreField: r0->field_f = r16
    //     0x5e76d4: stur            w16, [x0, #0xf]
    // 0x5e76d8: ldur            x1, [fp, #-0x70]
    // 0x5e76dc: StoreField: r0->field_13 = r1
    //     0x5e76dc: stur            w1, [x0, #0x13]
    // 0x5e76e0: str             x0, [SP]
    // 0x5e76e4: r0 = _interpolate()
    //     0x5e76e4: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x5e76e8: str             NULL, [SP]
    // 0x5e76ec: mov             x1, x0
    // 0x5e76f0: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x5e76f0: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x5e76f4: r0 = debugPrintThrottled()
    //     0x5e76f4: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x5e76f8: ldur            x0, [fp, #-0x60]
    // 0x5e76fc: LoadField: r1 = r0->field_f
    //     0x5e76fc: ldur            w1, [x0, #0xf]
    // 0x5e7700: DecompressPointer r1
    //     0x5e7700: add             x1, x1, HEAP, lsl #32
    // 0x5e7704: cmp             w1, NULL
    // 0x5e7708: b.eq            #0x5e7728
    // 0x5e770c: ldur            x2, [fp, #-0x68]
    // 0x5e7710: r1 = Function '<anonymous closure>':.
    //     0x5e7710: add             x1, PP, #0x15, lsl #12  ; [pp+0x15670] AnonymousClosure: (0x5e96d4), in [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_loadData (0x5e75e0)
    //     0x5e7714: ldr             x1, [x1, #0x670]
    // 0x5e7718: r0 = AllocateClosure()
    //     0x5e7718: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e771c: ldur            x1, [fp, #-0x60]
    // 0x5e7720: mov             x2, x0
    // 0x5e7724: r0 = setState()
    //     0x5e7724: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x5e7728: r0 = Null
    //     0x5e7728: mov             x0, NULL
    // 0x5e772c: r0 = ReturnAsyncNotFuture()
    //     0x5e772c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e7730: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e7730: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e7734: b               #0x5e7600
  }
  _ _listenToManagerLocation(/* No info */) {
    // ** addr: 0x5e7738, size: 0x11c
    // 0x5e7738: EnterFrame
    //     0x5e7738: stp             fp, lr, [SP, #-0x10]!
    //     0x5e773c: mov             fp, SP
    // 0x5e7740: AllocStack(0x20)
    //     0x5e7740: sub             SP, SP, #0x20
    // 0x5e7744: SetupParameters(_RehberIletisimPageState this /* r1 => r1, fp-0x8 */)
    //     0x5e7744: stur            x1, [fp, #-8]
    // 0x5e7748: CheckStackOverflow
    //     0x5e7748: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e774c: cmp             SP, x16
    //     0x5e7750: b.ls            #0x5e7848
    // 0x5e7754: r1 = 1
    //     0x5e7754: mov             x1, #1
    // 0x5e7758: r0 = AllocateContext()
    //     0x5e7758: bl              #0x927010  ; AllocateContextStub
    // 0x5e775c: mov             x1, x0
    // 0x5e7760: ldur            x0, [fp, #-8]
    // 0x5e7764: stur            x1, [fp, #-0x10]
    // 0x5e7768: StoreField: r1->field_f = r0
    //     0x5e7768: stur            w0, [x1, #0xf]
    // 0x5e776c: LoadField: r2 = r0->field_27
    //     0x5e776c: ldur            w2, [x0, #0x27]
    // 0x5e7770: DecompressPointer r2
    //     0x5e7770: add             x2, x2, HEAP, lsl #32
    // 0x5e7774: cmp             w2, NULL
    // 0x5e7778: b.ne            #0x5e778c
    // 0x5e777c: r0 = Null
    //     0x5e777c: mov             x0, NULL
    // 0x5e7780: LeaveFrame
    //     0x5e7780: mov             SP, fp
    //     0x5e7784: ldp             fp, lr, [SP], #0x10
    // 0x5e7788: ret
    //     0x5e7788: ret             
    // 0x5e778c: r4 = const [0, 0, 0, 0, null]
    //     0x5e778c: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x5e7790: r0 = app()
    //     0x5e7790: bl              #0x5d81cc  ; [package:firebase_core/firebase_core.dart] Firebase::app
    // 0x5e7794: mov             x1, x0
    // 0x5e7798: r0 = instanceFor()
    //     0x5e7798: bl              #0x5e81b4  ; [package:firebase_database/firebase_database.dart] FirebaseDatabase::instanceFor
    // 0x5e779c: r1 = Null
    //     0x5e779c: mov             x1, NULL
    // 0x5e77a0: r2 = 4
    //     0x5e77a0: mov             x2, #4
    // 0x5e77a4: stur            x0, [fp, #-0x18]
    // 0x5e77a8: r0 = AllocateArray()
    //     0x5e77a8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5e77ac: r16 = "locations/"
    //     0x5e77ac: add             x16, PP, #0x15, lsl #12  ; [pp+0x15678] "locations/"
    //     0x5e77b0: ldr             x16, [x16, #0x678]
    // 0x5e77b4: StoreField: r0->field_f = r16
    //     0x5e77b4: stur            w16, [x0, #0xf]
    // 0x5e77b8: ldur            x1, [fp, #-8]
    // 0x5e77bc: LoadField: r2 = r1->field_27
    //     0x5e77bc: ldur            w2, [x1, #0x27]
    // 0x5e77c0: DecompressPointer r2
    //     0x5e77c0: add             x2, x2, HEAP, lsl #32
    // 0x5e77c4: cmp             w2, NULL
    // 0x5e77c8: b.eq            #0x5e7850
    // 0x5e77cc: LoadField: r3 = r2->field_7
    //     0x5e77cc: ldur            w3, [x2, #7]
    // 0x5e77d0: DecompressPointer r3
    //     0x5e77d0: add             x3, x3, HEAP, lsl #32
    // 0x5e77d4: StoreField: r0->field_13 = r3
    //     0x5e77d4: stur            w3, [x0, #0x13]
    // 0x5e77d8: str             x0, [SP]
    // 0x5e77dc: r0 = _interpolate()
    //     0x5e77dc: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x5e77e0: ldur            x1, [fp, #-0x18]
    // 0x5e77e4: mov             x2, x0
    // 0x5e77e8: r0 = ref()
    //     0x5e77e8: bl              #0x5e7874  ; [package:firebase_database/firebase_database.dart] FirebaseDatabase::ref
    // 0x5e77ec: mov             x1, x0
    // 0x5e77f0: r0 = onValue()
    //     0x5e77f0: bl              #0x5e1b8c  ; [package:firebase_database/firebase_database.dart] Query::onValue
    // 0x5e77f4: ldur            x2, [fp, #-0x10]
    // 0x5e77f8: r1 = Function '<anonymous closure>':.
    //     0x5e77f8: add             x1, PP, #0x15, lsl #12  ; [pp+0x15680] AnonymousClosure: (0x5e83e8), in [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_listenToManagerLocation (0x5e7738)
    //     0x5e77fc: ldr             x1, [x1, #0x680]
    // 0x5e7800: stur            x0, [fp, #-0x10]
    // 0x5e7804: r0 = AllocateClosure()
    //     0x5e7804: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e7808: ldur            x1, [fp, #-0x10]
    // 0x5e780c: mov             x2, x0
    // 0x5e7810: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5e7810: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5e7814: r0 = listen()
    //     0x5e7814: bl              #0x87bcb8  ; [dart:async] _ForwardingStream::listen
    // 0x5e7818: ldur            x1, [fp, #-8]
    // 0x5e781c: StoreField: r1->field_37 = r0
    //     0x5e781c: stur            w0, [x1, #0x37]
    //     0x5e7820: ldurb           w16, [x1, #-1]
    //     0x5e7824: ldurb           w17, [x0, #-1]
    //     0x5e7828: and             x16, x17, x16, lsr #2
    //     0x5e782c: tst             x16, HEAP, lsr #32
    //     0x5e7830: b.eq            #0x5e7838
    //     0x5e7834: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5e7838: r0 = Null
    //     0x5e7838: mov             x0, NULL
    // 0x5e783c: LeaveFrame
    //     0x5e783c: mov             SP, fp
    //     0x5e7840: ldp             fp, lr, [SP], #0x10
    // 0x5e7844: ret
    //     0x5e7844: ret             
    // 0x5e7848: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e7848: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e784c: b               #0x5e7754
    // 0x5e7850: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e7850: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, DatabaseEvent) {
    // ** addr: 0x5e83e8, size: 0x110
    // 0x5e83e8: EnterFrame
    //     0x5e83e8: stp             fp, lr, [SP, #-0x10]!
    //     0x5e83ec: mov             fp, SP
    // 0x5e83f0: AllocStack(0x18)
    //     0x5e83f0: sub             SP, SP, #0x18
    // 0x5e83f4: SetupParameters([dynamic _ /* r0 */])
    //     0x5e83f4: ldr             x0, [fp, #0x18]
    //     0x5e83f8: ldur            w1, [x0, #0x17]
    //     0x5e83fc: add             x1, x1, HEAP, lsl #32
    //     0x5e8400: stur            x1, [fp, #-8]
    // 0x5e8404: CheckStackOverflow
    //     0x5e8404: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e8408: cmp             SP, x16
    //     0x5e840c: b.ls            #0x5e84f0
    // 0x5e8410: r1 = 1
    //     0x5e8410: mov             x1, #1
    // 0x5e8414: r0 = AllocateContext()
    //     0x5e8414: bl              #0x927010  ; AllocateContextStub
    // 0x5e8418: mov             x2, x0
    // 0x5e841c: ldur            x0, [fp, #-8]
    // 0x5e8420: stur            x2, [fp, #-0x10]
    // 0x5e8424: StoreField: r2->field_b = r0
    //     0x5e8424: stur            w0, [x2, #0xb]
    // 0x5e8428: LoadField: r1 = r0->field_f
    //     0x5e8428: ldur            w1, [x0, #0xf]
    // 0x5e842c: DecompressPointer r1
    //     0x5e842c: add             x1, x1, HEAP, lsl #32
    // 0x5e8430: LoadField: r3 = r1->field_f
    //     0x5e8430: ldur            w3, [x1, #0xf]
    // 0x5e8434: DecompressPointer r3
    //     0x5e8434: add             x3, x3, HEAP, lsl #32
    // 0x5e8438: cmp             w3, NULL
    // 0x5e843c: b.ne            #0x5e8450
    // 0x5e8440: r0 = Null
    //     0x5e8440: mov             x0, NULL
    // 0x5e8444: LeaveFrame
    //     0x5e8444: mov             SP, fp
    //     0x5e8448: ldp             fp, lr, [SP], #0x10
    // 0x5e844c: ret
    //     0x5e844c: ret             
    // 0x5e8450: ldr             x1, [fp, #0x10]
    // 0x5e8454: r0 = snapshot()
    //     0x5e8454: bl              #0x5e4184  ; [package:firebase_database/firebase_database.dart] DatabaseEvent::snapshot
    // 0x5e8458: LoadField: r1 = r0->field_7
    //     0x5e8458: ldur            w1, [x0, #7]
    // 0x5e845c: DecompressPointer r1
    //     0x5e845c: add             x1, x1, HEAP, lsl #32
    // 0x5e8460: r0 = value()
    //     0x5e8460: bl              #0x5e4128  ; [package:firebase_database_platform_interface/src/platform_interface/platform_interface_data_snapshot.dart] DataSnapshotPlatform::value
    // 0x5e8464: mov             x3, x0
    // 0x5e8468: r2 = Null
    //     0x5e8468: mov             x2, NULL
    // 0x5e846c: r1 = Null
    //     0x5e846c: mov             x1, NULL
    // 0x5e8470: stur            x3, [fp, #-0x18]
    // 0x5e8474: r8 = Map?
    //     0x5e8474: add             x8, PP, #0x15, lsl #12  ; [pp+0x15688] Type: Map?
    //     0x5e8478: ldr             x8, [x8, #0x688]
    // 0x5e847c: r3 = Null
    //     0x5e847c: add             x3, PP, #0x15, lsl #12  ; [pp+0x15690] Null
    //     0x5e8480: ldr             x3, [x3, #0x690]
    // 0x5e8484: r0 = Map?()
    //     0x5e8484: bl              #0x5e8794  ; IsType_Map?_Stub
    // 0x5e8488: ldur            x0, [fp, #-0x18]
    // 0x5e848c: ldur            x2, [fp, #-0x10]
    // 0x5e8490: StoreField: r2->field_f = r0
    //     0x5e8490: stur            w0, [x2, #0xf]
    //     0x5e8494: ldurb           w16, [x2, #-1]
    //     0x5e8498: ldurb           w17, [x0, #-1]
    //     0x5e849c: and             x16, x17, x16, lsr #2
    //     0x5e84a0: tst             x16, HEAP, lsr #32
    //     0x5e84a4: b.eq            #0x5e84ac
    //     0x5e84a8: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e84ac: ldur            x0, [fp, #-0x18]
    // 0x5e84b0: cmp             w0, NULL
    // 0x5e84b4: b.eq            #0x5e84e0
    // 0x5e84b8: ldur            x0, [fp, #-8]
    // 0x5e84bc: LoadField: r3 = r0->field_f
    //     0x5e84bc: ldur            w3, [x0, #0xf]
    // 0x5e84c0: DecompressPointer r3
    //     0x5e84c0: add             x3, x3, HEAP, lsl #32
    // 0x5e84c4: stur            x3, [fp, #-0x18]
    // 0x5e84c8: r1 = Function '<anonymous closure>':.
    //     0x5e84c8: add             x1, PP, #0x15, lsl #12  ; [pp+0x156a0] AnonymousClosure: (0x5e84f8), in [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_listenToManagerLocation (0x5e7738)
    //     0x5e84cc: ldr             x1, [x1, #0x6a0]
    // 0x5e84d0: r0 = AllocateClosure()
    //     0x5e84d0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e84d4: ldur            x1, [fp, #-0x18]
    // 0x5e84d8: mov             x2, x0
    // 0x5e84dc: r0 = setState()
    //     0x5e84dc: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x5e84e0: r0 = Null
    //     0x5e84e0: mov             x0, NULL
    // 0x5e84e4: LeaveFrame
    //     0x5e84e4: mov             SP, fp
    //     0x5e84e8: ldp             fp, lr, [SP], #0x10
    // 0x5e84ec: ret
    //     0x5e84ec: ret             
    // 0x5e84f0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e84f0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e84f4: b               #0x5e8410
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5e84f8, size: 0x29c
    // 0x5e84f8: EnterFrame
    //     0x5e84f8: stp             fp, lr, [SP, #-0x10]!
    //     0x5e84fc: mov             fp, SP
    // 0x5e8500: AllocStack(0x30)
    //     0x5e8500: sub             SP, SP, #0x30
    // 0x5e8504: SetupParameters([dynamic _ /* r0 */])
    //     0x5e8504: ldr             x0, [fp, #0x10]
    //     0x5e8508: ldur            w1, [x0, #0x17]
    //     0x5e850c: add             x1, x1, HEAP, lsl #32
    // 0x5e8510: CheckStackOverflow
    //     0x5e8510: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e8514: cmp             SP, x16
    //     0x5e8518: b.ls            #0x5e878c
    // 0x5e851c: LoadField: r3 = r1->field_b
    //     0x5e851c: ldur            w3, [x1, #0xb]
    // 0x5e8520: DecompressPointer r3
    //     0x5e8520: add             x3, x3, HEAP, lsl #32
    // 0x5e8524: stur            x3, [fp, #-0x18]
    // 0x5e8528: LoadField: r4 = r3->field_f
    //     0x5e8528: ldur            w4, [x3, #0xf]
    // 0x5e852c: DecompressPointer r4
    //     0x5e852c: add             x4, x4, HEAP, lsl #32
    // 0x5e8530: stur            x4, [fp, #-0x10]
    // 0x5e8534: LoadField: r5 = r1->field_f
    //     0x5e8534: ldur            w5, [x1, #0xf]
    // 0x5e8538: DecompressPointer r5
    //     0x5e8538: add             x5, x5, HEAP, lsl #32
    // 0x5e853c: stur            x5, [fp, #-8]
    // 0x5e8540: r0 = LoadClassIdInstr(r5)
    //     0x5e8540: ldur            x0, [x5, #-1]
    //     0x5e8544: ubfx            x0, x0, #0xc, #0x14
    // 0x5e8548: mov             x1, x5
    // 0x5e854c: r2 = "latitude"
    //     0x5e854c: ldr             x2, [PP, #0xb8]  ; [pp+0xb8] "latitude"
    // 0x5e8550: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5e8550: add             lr, x0, #0x36e
    //     0x5e8554: ldr             lr, [x21, lr, lsl #3]
    //     0x5e8558: blr             lr
    // 0x5e855c: mov             x3, x0
    // 0x5e8560: r2 = Null
    //     0x5e8560: mov             x2, NULL
    // 0x5e8564: r1 = Null
    //     0x5e8564: mov             x1, NULL
    // 0x5e8568: stur            x3, [fp, #-0x20]
    // 0x5e856c: branchIfSmi(r0, 0x5e8598)
    //     0x5e856c: tbz             w0, #0, #0x5e8598
    // 0x5e8570: r4 = LoadClassIdInstr(r0)
    //     0x5e8570: ldur            x4, [x0, #-1]
    //     0x5e8574: ubfx            x4, x4, #0xc, #0x14
    // 0x5e8578: sub             x4, x4, #0x3c
    // 0x5e857c: cmp             x4, #2
    // 0x5e8580: b.ls            #0x5e8598
    // 0x5e8584: r8 = num?
    //     0x5e8584: add             x8, PP, #0xe, lsl #12  ; [pp+0xecb8] Type: num?
    //     0x5e8588: ldr             x8, [x8, #0xcb8]
    // 0x5e858c: r3 = Null
    //     0x5e858c: add             x3, PP, #0x15, lsl #12  ; [pp+0x156a8] Null
    //     0x5e8590: ldr             x3, [x3, #0x6a8]
    // 0x5e8594: r0 = DefaultNullableTypeTest()
    //     0x5e8594: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x5e8598: ldur            x0, [fp, #-0x20]
    // 0x5e859c: cmp             w0, NULL
    // 0x5e85a0: b.ne            #0x5e85ac
    // 0x5e85a4: r0 = Null
    //     0x5e85a4: mov             x0, NULL
    // 0x5e85a8: b               #0x5e85d0
    // 0x5e85ac: r1 = 60
    //     0x5e85ac: mov             x1, #0x3c
    // 0x5e85b0: branchIfSmi(r0, 0x5e85bc)
    //     0x5e85b0: tbz             w0, #0, #0x5e85bc
    // 0x5e85b4: r1 = LoadClassIdInstr(r0)
    //     0x5e85b4: ldur            x1, [x0, #-1]
    //     0x5e85b8: ubfx            x1, x1, #0xc, #0x14
    // 0x5e85bc: str             x0, [SP]
    // 0x5e85c0: mov             x0, x1
    // 0x5e85c4: r0 = GDT[cid_x0 + -0x1000]()
    //     0x5e85c4: sub             lr, x0, #1, lsl #12
    //     0x5e85c8: ldr             lr, [x21, lr, lsl #3]
    //     0x5e85cc: blr             lr
    // 0x5e85d0: ldur            x3, [fp, #-0x18]
    // 0x5e85d4: ldur            x1, [fp, #-0x10]
    // 0x5e85d8: ldur            x4, [fp, #-8]
    // 0x5e85dc: StoreField: r1->field_2b = r0
    //     0x5e85dc: stur            w0, [x1, #0x2b]
    //     0x5e85e0: ldurb           w16, [x1, #-1]
    //     0x5e85e4: ldurb           w17, [x0, #-1]
    //     0x5e85e8: and             x16, x17, x16, lsr #2
    //     0x5e85ec: tst             x16, HEAP, lsr #32
    //     0x5e85f0: b.eq            #0x5e85f8
    //     0x5e85f4: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5e85f8: LoadField: r5 = r3->field_f
    //     0x5e85f8: ldur            w5, [x3, #0xf]
    // 0x5e85fc: DecompressPointer r5
    //     0x5e85fc: add             x5, x5, HEAP, lsl #32
    // 0x5e8600: stur            x5, [fp, #-0x10]
    // 0x5e8604: r0 = LoadClassIdInstr(r4)
    //     0x5e8604: ldur            x0, [x4, #-1]
    //     0x5e8608: ubfx            x0, x0, #0xc, #0x14
    // 0x5e860c: mov             x1, x4
    // 0x5e8610: r2 = "longitude"
    //     0x5e8610: ldr             x2, [PP, #0xc0]  ; [pp+0xc0] "longitude"
    // 0x5e8614: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5e8614: add             lr, x0, #0x36e
    //     0x5e8618: ldr             lr, [x21, lr, lsl #3]
    //     0x5e861c: blr             lr
    // 0x5e8620: mov             x3, x0
    // 0x5e8624: r2 = Null
    //     0x5e8624: mov             x2, NULL
    // 0x5e8628: r1 = Null
    //     0x5e8628: mov             x1, NULL
    // 0x5e862c: stur            x3, [fp, #-0x20]
    // 0x5e8630: branchIfSmi(r0, 0x5e865c)
    //     0x5e8630: tbz             w0, #0, #0x5e865c
    // 0x5e8634: r4 = LoadClassIdInstr(r0)
    //     0x5e8634: ldur            x4, [x0, #-1]
    //     0x5e8638: ubfx            x4, x4, #0xc, #0x14
    // 0x5e863c: sub             x4, x4, #0x3c
    // 0x5e8640: cmp             x4, #2
    // 0x5e8644: b.ls            #0x5e865c
    // 0x5e8648: r8 = num?
    //     0x5e8648: add             x8, PP, #0xe, lsl #12  ; [pp+0xecb8] Type: num?
    //     0x5e864c: ldr             x8, [x8, #0xcb8]
    // 0x5e8650: r3 = Null
    //     0x5e8650: add             x3, PP, #0x15, lsl #12  ; [pp+0x156b8] Null
    //     0x5e8654: ldr             x3, [x3, #0x6b8]
    // 0x5e8658: r0 = DefaultNullableTypeTest()
    //     0x5e8658: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x5e865c: ldur            x0, [fp, #-0x20]
    // 0x5e8660: cmp             w0, NULL
    // 0x5e8664: b.ne            #0x5e8670
    // 0x5e8668: r0 = Null
    //     0x5e8668: mov             x0, NULL
    // 0x5e866c: b               #0x5e8694
    // 0x5e8670: r1 = 60
    //     0x5e8670: mov             x1, #0x3c
    // 0x5e8674: branchIfSmi(r0, 0x5e8680)
    //     0x5e8674: tbz             w0, #0, #0x5e8680
    // 0x5e8678: r1 = LoadClassIdInstr(r0)
    //     0x5e8678: ldur            x1, [x0, #-1]
    //     0x5e867c: ubfx            x1, x1, #0xc, #0x14
    // 0x5e8680: str             x0, [SP]
    // 0x5e8684: mov             x0, x1
    // 0x5e8688: r0 = GDT[cid_x0 + -0x1000]()
    //     0x5e8688: sub             lr, x0, #1, lsl #12
    //     0x5e868c: ldr             lr, [x21, lr, lsl #3]
    //     0x5e8690: blr             lr
    // 0x5e8694: ldur            x1, [fp, #-8]
    // 0x5e8698: ldur            x2, [fp, #-0x10]
    // 0x5e869c: StoreField: r2->field_2f = r0
    //     0x5e869c: stur            w0, [x2, #0x2f]
    //     0x5e86a0: ldurb           w16, [x2, #-1]
    //     0x5e86a4: ldurb           w17, [x0, #-1]
    //     0x5e86a8: and             x16, x17, x16, lsr #2
    //     0x5e86ac: tst             x16, HEAP, lsr #32
    //     0x5e86b0: b.eq            #0x5e86b8
    //     0x5e86b4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e86b8: r0 = LoadClassIdInstr(r1)
    //     0x5e86b8: ldur            x0, [x1, #-1]
    //     0x5e86bc: ubfx            x0, x0, #0xc, #0x14
    // 0x5e86c0: r2 = "updatedAt"
    //     0x5e86c0: ldr             x2, [PP, #0xd8]  ; [pp+0xd8] "updatedAt"
    // 0x5e86c4: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5e86c4: add             lr, x0, #0x36e
    //     0x5e86c8: ldr             lr, [x21, lr, lsl #3]
    //     0x5e86cc: blr             lr
    // 0x5e86d0: mov             x3, x0
    // 0x5e86d4: r2 = Null
    //     0x5e86d4: mov             x2, NULL
    // 0x5e86d8: r1 = Null
    //     0x5e86d8: mov             x1, NULL
    // 0x5e86dc: stur            x3, [fp, #-8]
    // 0x5e86e0: branchIfSmi(r0, 0x5e8708)
    //     0x5e86e0: tbz             w0, #0, #0x5e8708
    // 0x5e86e4: r4 = LoadClassIdInstr(r0)
    //     0x5e86e4: ldur            x4, [x0, #-1]
    //     0x5e86e8: ubfx            x4, x4, #0xc, #0x14
    // 0x5e86ec: sub             x4, x4, #0x3c
    // 0x5e86f0: cmp             x4, #1
    // 0x5e86f4: b.ls            #0x5e8708
    // 0x5e86f8: r8 = int?
    //     0x5e86f8: ldr             x8, [PP, #0x1668]  ; [pp+0x1668] Type: int?
    // 0x5e86fc: r3 = Null
    //     0x5e86fc: add             x3, PP, #0x15, lsl #12  ; [pp+0x156c8] Null
    //     0x5e8700: ldr             x3, [x3, #0x6c8]
    // 0x5e8704: r0 = int?()
    //     0x5e8704: bl              #0x93a468  ; IsType_int?_Stub
    // 0x5e8708: ldur            x0, [fp, #-8]
    // 0x5e870c: cmp             w0, NULL
    // 0x5e8710: b.eq            #0x5e877c
    // 0x5e8714: ldur            x1, [fp, #-0x18]
    // 0x5e8718: LoadField: r2 = r1->field_f
    //     0x5e8718: ldur            w2, [x1, #0xf]
    // 0x5e871c: DecompressPointer r2
    //     0x5e871c: add             x2, x2, HEAP, lsl #32
    // 0x5e8720: stur            x2, [fp, #-0x10]
    // 0x5e8724: r1 = LoadInt32Instr(r0)
    //     0x5e8724: sbfx            x1, x0, #1, #0x1f
    //     0x5e8728: tbz             w0, #0, #0x5e8730
    //     0x5e872c: ldur            x1, [x0, #7]
    // 0x5e8730: r0 = _validateMilliseconds()
    //     0x5e8730: bl              #0x5e3748  ; [dart:core] DateTime::_validateMilliseconds
    // 0x5e8734: r16 = 1000
    //     0x5e8734: mov             x16, #0x3e8
    // 0x5e8738: mul             x2, x0, x16
    // 0x5e873c: stur            x2, [fp, #-0x28]
    // 0x5e8740: r0 = DateTime()
    //     0x5e8740: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5e8744: mov             x1, x0
    // 0x5e8748: ldur            x2, [fp, #-0x28]
    // 0x5e874c: r3 = false
    //     0x5e874c: add             x3, NULL, #0x30  ; false
    // 0x5e8750: stur            x0, [fp, #-8]
    // 0x5e8754: r0 = DateTime._withValue()
    //     0x5e8754: bl              #0x4e7190  ; [dart:core] DateTime::DateTime._withValue
    // 0x5e8758: ldur            x0, [fp, #-8]
    // 0x5e875c: ldur            x1, [fp, #-0x10]
    // 0x5e8760: StoreField: r1->field_33 = r0
    //     0x5e8760: stur            w0, [x1, #0x33]
    //     0x5e8764: ldurb           w16, [x1, #-1]
    //     0x5e8768: ldurb           w17, [x0, #-1]
    //     0x5e876c: and             x16, x17, x16, lsr #2
    //     0x5e8770: tst             x16, HEAP, lsr #32
    //     0x5e8774: b.eq            #0x5e877c
    //     0x5e8778: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5e877c: r0 = Null
    //     0x5e877c: mov             x0, NULL
    // 0x5e8780: LeaveFrame
    //     0x5e8780: mov             SP, fp
    //     0x5e8784: ldp             fp, lr, [SP], #0x10
    // 0x5e8788: ret
    //     0x5e8788: ret             
    // 0x5e878c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e878c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e8790: b               #0x5e851c
  }
  _ _loadTripManager(/* No info */) async {
    // ** addr: 0x5e8800, size: 0x164
    // 0x5e8800: EnterFrame
    //     0x5e8800: stp             fp, lr, [SP, #-0x10]!
    //     0x5e8804: mov             fp, SP
    // 0x5e8808: AllocStack(0x78)
    //     0x5e8808: sub             SP, SP, #0x78
    // 0x5e880c: SetupParameters(_RehberIletisimPageState this /* r1 => r1, fp-0x60 */)
    //     0x5e880c: stur            NULL, [fp, #-8]
    //     0x5e8810: stur            x1, [fp, #-0x60]
    // 0x5e8814: CheckStackOverflow
    //     0x5e8814: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e8818: cmp             SP, x16
    //     0x5e881c: b.ls            #0x5e895c
    // 0x5e8820: InitAsync() -> Future<void?>
    //     0x5e8820: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5e8824: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e8828: ldur            x0, [fp, #-0x60]
    // 0x5e882c: LoadField: r1 = r0->field_1b
    //     0x5e882c: ldur            w1, [x0, #0x1b]
    // 0x5e8830: DecompressPointer r1
    //     0x5e8830: add             x1, x1, HEAP, lsl #32
    // 0x5e8834: cmp             w1, NULL
    // 0x5e8838: b.ne            #0x5e8844
    // 0x5e883c: r0 = Null
    //     0x5e883c: mov             x0, NULL
    // 0x5e8840: r0 = ReturnAsyncNotFuture()
    //     0x5e8840: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e8844: LoadField: r3 = r0->field_13
    //     0x5e8844: ldur            w3, [x0, #0x13]
    // 0x5e8848: DecompressPointer r3
    //     0x5e8848: add             x3, x3, HEAP, lsl #32
    // 0x5e884c: stur            x3, [fp, #-0x68]
    // 0x5e8850: LoadField: r2 = r1->field_7
    //     0x5e8850: ldur            w2, [x1, #7]
    // 0x5e8854: DecompressPointer r2
    //     0x5e8854: add             x2, x2, HEAP, lsl #32
    // 0x5e8858: mov             x1, x3
    // 0x5e885c: r0 = getTripManagerIds()
    //     0x5e885c: bl              #0x5e8a24  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getTripManagerIds
    // 0x5e8860: mov             x1, x0
    // 0x5e8864: stur            x1, [fp, #-0x70]
    // 0x5e8868: r0 = Await()
    //     0x5e8868: bl              #0x3dd188  ; AwaitStub
    // 0x5e886c: mov             x2, x0
    // 0x5e8870: stur            x2, [fp, #-0x70]
    // 0x5e8874: r0 = LoadClassIdInstr(r2)
    //     0x5e8874: ldur            x0, [x2, #-1]
    //     0x5e8878: ubfx            x0, x0, #0xc, #0x14
    // 0x5e887c: mov             x1, x2
    // 0x5e8880: r0 = GDT[cid_x0 + 0xd3a8]()
    //     0x5e8880: mov             x17, #0xd3a8
    //     0x5e8884: add             lr, x0, x17
    //     0x5e8888: ldr             lr, [x21, lr, lsl #3]
    //     0x5e888c: blr             lr
    // 0x5e8890: tbnz            w0, #4, #0x5e8954
    // 0x5e8894: ldur            x2, [fp, #-0x70]
    // 0x5e8898: r0 = LoadClassIdInstr(r2)
    //     0x5e8898: ldur            x0, [x2, #-1]
    //     0x5e889c: ubfx            x0, x0, #0xc, #0x14
    // 0x5e88a0: mov             x1, x2
    // 0x5e88a4: r0 = GDT[cid_x0 + 0xcc1d]()
    //     0x5e88a4: mov             x17, #0xcc1d
    //     0x5e88a8: add             lr, x0, x17
    //     0x5e88ac: ldr             lr, [x21, lr, lsl #3]
    //     0x5e88b0: blr             lr
    // 0x5e88b4: ldur            x1, [fp, #-0x68]
    // 0x5e88b8: mov             x2, x0
    // 0x5e88bc: r0 = getUserByToken()
    //     0x5e88bc: bl              #0x5e8964  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getUserByToken
    // 0x5e88c0: mov             x1, x0
    // 0x5e88c4: stur            x1, [fp, #-0x68]
    // 0x5e88c8: r0 = Await()
    //     0x5e88c8: bl              #0x3dd188  ; AwaitStub
    // 0x5e88cc: cmp             w0, NULL
    // 0x5e88d0: b.eq            #0x5e8954
    // 0x5e88d4: ldur            x1, [fp, #-0x60]
    // 0x5e88d8: StoreField: r1->field_27 = r0
    //     0x5e88d8: stur            w0, [x1, #0x27]
    //     0x5e88dc: ldurb           w16, [x1, #-1]
    //     0x5e88e0: ldurb           w17, [x0, #-1]
    //     0x5e88e4: and             x16, x17, x16, lsr #2
    //     0x5e88e8: tst             x16, HEAP, lsr #32
    //     0x5e88ec: b.eq            #0x5e88f4
    //     0x5e88f0: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5e88f4: b               #0x5e8954
    // 0x5e88f8: sub             SP, fp, #0x78
    // 0x5e88fc: stur            x0, [fp, #-0x60]
    // 0x5e8900: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x5e8900: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e8904: ldr             x0, [x0, #0xcb8]
    //     0x5e8908: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5e890c: cmp             w0, w16
    //     0x5e8910: b.ne            #0x5e891c
    //     0x5e8914: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x5e8918: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x5e891c: r1 = Null
    //     0x5e891c: mov             x1, NULL
    // 0x5e8920: r2 = 4
    //     0x5e8920: mov             x2, #4
    // 0x5e8924: r0 = AllocateArray()
    //     0x5e8924: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5e8928: r16 = "Yönetici bilgisi alınırken hata: "
    //     0x5e8928: add             x16, PP, #0x15, lsl #12  ; [pp+0x156d8] "Yönetici bilgisi alınırken hata: "
    //     0x5e892c: ldr             x16, [x16, #0x6d8]
    // 0x5e8930: StoreField: r0->field_f = r16
    //     0x5e8930: stur            w16, [x0, #0xf]
    // 0x5e8934: ldur            x1, [fp, #-0x60]
    // 0x5e8938: StoreField: r0->field_13 = r1
    //     0x5e8938: stur            w1, [x0, #0x13]
    // 0x5e893c: str             x0, [SP]
    // 0x5e8940: r0 = _interpolate()
    //     0x5e8940: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x5e8944: str             NULL, [SP]
    // 0x5e8948: mov             x1, x0
    // 0x5e894c: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x5e894c: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x5e8950: r0 = debugPrintThrottled()
    //     0x5e8950: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x5e8954: r0 = Null
    //     0x5e8954: mov             x0, NULL
    // 0x5e8958: r0 = ReturnAsyncNotFuture()
    //     0x5e8958: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e895c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e895c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e8960: b               #0x5e8820
  }
  _ _determineActiveTrip(/* No info */) async {
    // ** addr: 0x5e8b88, size: 0xa78
    // 0x5e8b88: EnterFrame
    //     0x5e8b88: stp             fp, lr, [SP, #-0x10]!
    //     0x5e8b8c: mov             fp, SP
    // 0x5e8b90: AllocStack(0x70)
    //     0x5e8b90: sub             SP, SP, #0x70
    // 0x5e8b94: SetupParameters(_RehberIletisimPageState this /* r1 => r1, fp-0x10 */)
    //     0x5e8b94: stur            NULL, [fp, #-8]
    //     0x5e8b98: stur            x1, [fp, #-0x10]
    // 0x5e8b9c: CheckStackOverflow
    //     0x5e8b9c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e8ba0: cmp             SP, x16
    //     0x5e8ba4: b.ls            #0x5e95a4
    // 0x5e8ba8: InitAsync() -> Future<void?>
    //     0x5e8ba8: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5e8bac: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e8bb0: r0 = LoadStaticField(0xfe4)
    //     0x5e8bb0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e8bb4: ldr             x0, [x0, #0x1fc8]
    // 0x5e8bb8: stur            x0, [fp, #-0x18]
    // 0x5e8bbc: cmp             w0, NULL
    // 0x5e8bc0: b.ne            #0x5e8bcc
    // 0x5e8bc4: r0 = Null
    //     0x5e8bc4: mov             x0, NULL
    // 0x5e8bc8: r0 = ReturnAsyncNotFuture()
    //     0x5e8bc8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e8bcc: r0 = DateTime()
    //     0x5e8bcc: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5e8bd0: mov             x1, x0
    // 0x5e8bd4: r0 = false
    //     0x5e8bd4: add             x0, NULL, #0x30  ; false
    // 0x5e8bd8: stur            x1, [fp, #-0x20]
    // 0x5e8bdc: StoreField: r1->field_7 = r0
    //     0x5e8bdc: stur            w0, [x1, #7]
    // 0x5e8be0: r0 = _getCurrentMicros()
    //     0x5e8be0: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x5e8be4: r1 = LoadInt32Instr(r0)
    //     0x5e8be4: sbfx            x1, x0, #1, #0x1f
    //     0x5e8be8: tbz             w0, #0, #0x5e8bf0
    //     0x5e8bec: ldur            x1, [x0, #7]
    // 0x5e8bf0: ldur            x0, [fp, #-0x20]
    // 0x5e8bf4: StoreField: r0->field_b = r1
    //     0x5e8bf4: stur            x1, [x0, #0xb]
    // 0x5e8bf8: mov             x1, x0
    // 0x5e8bfc: r0 = _parts()
    //     0x5e8bfc: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5e8c00: mov             x2, x0
    // 0x5e8c04: LoadField: r0 = r2->field_b
    //     0x5e8c04: ldur            w0, [x2, #0xb]
    // 0x5e8c08: r1 = LoadInt32Instr(r0)
    //     0x5e8c08: sbfx            x1, x0, #1, #0x1f
    // 0x5e8c0c: mov             x0, x1
    // 0x5e8c10: r1 = 8
    //     0x5e8c10: mov             x1, #8
    // 0x5e8c14: cmp             x1, x0
    // 0x5e8c18: b.hs            #0x5e95ac
    // 0x5e8c1c: LoadField: r0 = r2->field_2f
    //     0x5e8c1c: ldur            w0, [x2, #0x2f]
    // 0x5e8c20: DecompressPointer r0
    //     0x5e8c20: add             x0, x0, HEAP, lsl #32
    // 0x5e8c24: ldur            x1, [fp, #-0x20]
    // 0x5e8c28: stur            x0, [fp, #-0x28]
    // 0x5e8c2c: r0 = _parts()
    //     0x5e8c2c: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5e8c30: mov             x2, x0
    // 0x5e8c34: LoadField: r0 = r2->field_b
    //     0x5e8c34: ldur            w0, [x2, #0xb]
    // 0x5e8c38: r1 = LoadInt32Instr(r0)
    //     0x5e8c38: sbfx            x1, x0, #1, #0x1f
    // 0x5e8c3c: mov             x0, x1
    // 0x5e8c40: r1 = 7
    //     0x5e8c40: mov             x1, #7
    // 0x5e8c44: cmp             x1, x0
    // 0x5e8c48: b.hs            #0x5e95b0
    // 0x5e8c4c: LoadField: r0 = r2->field_2b
    //     0x5e8c4c: ldur            w0, [x2, #0x2b]
    // 0x5e8c50: DecompressPointer r0
    //     0x5e8c50: add             x0, x0, HEAP, lsl #32
    // 0x5e8c54: ldur            x1, [fp, #-0x20]
    // 0x5e8c58: stur            x0, [fp, #-0x30]
    // 0x5e8c5c: r0 = _parts()
    //     0x5e8c5c: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5e8c60: mov             x2, x0
    // 0x5e8c64: LoadField: r0 = r2->field_b
    //     0x5e8c64: ldur            w0, [x2, #0xb]
    // 0x5e8c68: r1 = LoadInt32Instr(r0)
    //     0x5e8c68: sbfx            x1, x0, #1, #0x1f
    // 0x5e8c6c: mov             x0, x1
    // 0x5e8c70: r1 = 5
    //     0x5e8c70: mov             x1, #5
    // 0x5e8c74: cmp             x1, x0
    // 0x5e8c78: b.hs            #0x5e95b4
    // 0x5e8c7c: LoadField: r0 = r2->field_23
    //     0x5e8c7c: ldur            w0, [x2, #0x23]
    // 0x5e8c80: DecompressPointer r0
    //     0x5e8c80: add             x0, x0, HEAP, lsl #32
    // 0x5e8c84: ldur            x1, [fp, #-0x28]
    // 0x5e8c88: stur            x0, [fp, #-0x20]
    // 0x5e8c8c: r2 = LoadInt32Instr(r1)
    //     0x5e8c8c: sbfx            x2, x1, #1, #0x1f
    //     0x5e8c90: tbz             w1, #0, #0x5e8c98
    //     0x5e8c94: ldur            x2, [x1, #7]
    // 0x5e8c98: stur            x2, [fp, #-0x38]
    // 0x5e8c9c: r0 = DateTime()
    //     0x5e8c9c: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5e8ca0: stur            x0, [fp, #-0x28]
    // 0x5e8ca4: ldur            x16, [fp, #-0x30]
    // 0x5e8ca8: ldur            lr, [fp, #-0x20]
    // 0x5e8cac: stp             lr, x16, [SP]
    // 0x5e8cb0: mov             x1, x0
    // 0x5e8cb4: ldur            x2, [fp, #-0x38]
    // 0x5e8cb8: r4 = const [0, 0x4, 0x2, 0x4, null]
    //     0x5e8cb8: add             x4, PP, #8, lsl #12  ; [pp+0x8808] List(5) [0, 0x4, 0x2, 0x4, Null]
    //     0x5e8cbc: ldr             x4, [x4, #0x808]
    // 0x5e8cc0: r0 = DateTime()
    //     0x5e8cc0: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x5e8cc4: ldur            x0, [fp, #-0x18]
    // 0x5e8cc8: LoadField: r3 = r0->field_1b
    //     0x5e8cc8: ldur            w3, [x0, #0x1b]
    // 0x5e8ccc: DecompressPointer r3
    //     0x5e8ccc: add             x3, x3, HEAP, lsl #32
    // 0x5e8cd0: stur            x3, [fp, #-0x20]
    // 0x5e8cd4: cmp             w3, NULL
    // 0x5e8cd8: b.ne            #0x5e8ce4
    // 0x5e8cdc: r1 = Null
    //     0x5e8cdc: mov             x1, NULL
    // 0x5e8ce0: b               #0x5e8cfc
    // 0x5e8ce4: LoadField: r1 = r3->field_7
    //     0x5e8ce4: ldur            w1, [x3, #7]
    // 0x5e8ce8: cbnz            w1, #0x5e8cf4
    // 0x5e8cec: r2 = false
    //     0x5e8cec: add             x2, NULL, #0x30  ; false
    // 0x5e8cf0: b               #0x5e8cf8
    // 0x5e8cf4: r2 = true
    //     0x5e8cf4: add             x2, NULL, #0x20  ; true
    // 0x5e8cf8: mov             x1, x2
    // 0x5e8cfc: cmp             w1, NULL
    // 0x5e8d00: b.ne            #0x5e8d18
    // 0x5e8d04: ldur            x3, [fp, #-0x10]
    // 0x5e8d08: r4 = "mekke"
    //     0x5e8d08: add             x4, PP, #0x15, lsl #12  ; [pp+0x155f8] "mekke"
    //     0x5e8d0c: ldr             x4, [x4, #0x5f8]
    // 0x5e8d10: r0 = 86400000000
    //     0x5e8d10: ldr             x0, [PP, #0x7d78]  ; [pp+0x7d78] IMM: 0x141dd76000
    // 0x5e8d14: b               #0x5e9048
    // 0x5e8d18: tbnz            w1, #4, #0x5e9038
    // 0x5e8d1c: r1 = LoadStaticField(0xfec)
    //     0x5e8d1c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5e8d20: ldr             x1, [x1, #0x1fd8]
    // 0x5e8d24: cmp             w1, NULL
    // 0x5e8d28: b.ne            #0x5e8d58
    // 0x5e8d2c: ldur            x4, [fp, #-0x10]
    // 0x5e8d30: LoadField: r1 = r4->field_13
    //     0x5e8d30: ldur            w1, [x4, #0x13]
    // 0x5e8d34: DecompressPointer r1
    //     0x5e8d34: add             x1, x1, HEAP, lsl #32
    // 0x5e8d38: cmp             w3, NULL
    // 0x5e8d3c: b.eq            #0x5e95b8
    // 0x5e8d40: mov             x2, x3
    // 0x5e8d44: r0 = getTripById()
    //     0x5e8d44: bl              #0x5e9600  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getTripById
    // 0x5e8d48: mov             x1, x0
    // 0x5e8d4c: stur            x1, [fp, #-0x30]
    // 0x5e8d50: r0 = Await()
    //     0x5e8d50: bl              #0x3dd188  ; AwaitStub
    // 0x5e8d54: b               #0x5e8d5c
    // 0x5e8d58: mov             x0, x1
    // 0x5e8d5c: stur            x0, [fp, #-0x48]
    // 0x5e8d60: cmp             w0, NULL
    // 0x5e8d64: b.eq            #0x5e9024
    // 0x5e8d68: LoadField: r2 = r0->field_13
    //     0x5e8d68: ldur            w2, [x0, #0x13]
    // 0x5e8d6c: DecompressPointer r2
    //     0x5e8d6c: add             x2, x2, HEAP, lsl #32
    // 0x5e8d70: stur            x2, [fp, #-0x40]
    // 0x5e8d74: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x5e8d74: ldur            w3, [x0, #0x17]
    // 0x5e8d78: DecompressPointer r3
    //     0x5e8d78: add             x3, x3, HEAP, lsl #32
    // 0x5e8d7c: stur            x3, [fp, #-0x30]
    // 0x5e8d80: cmp             w2, NULL
    // 0x5e8d84: b.eq            #0x5e9010
    // 0x5e8d88: cmp             w3, NULL
    // 0x5e8d8c: b.eq            #0x5e8ffc
    // 0x5e8d90: mov             x1, x2
    // 0x5e8d94: r0 = _parts()
    //     0x5e8d94: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5e8d98: mov             x2, x0
    // 0x5e8d9c: LoadField: r0 = r2->field_b
    //     0x5e8d9c: ldur            w0, [x2, #0xb]
    // 0x5e8da0: r1 = LoadInt32Instr(r0)
    //     0x5e8da0: sbfx            x1, x0, #1, #0x1f
    // 0x5e8da4: mov             x0, x1
    // 0x5e8da8: r1 = 8
    //     0x5e8da8: mov             x1, #8
    // 0x5e8dac: cmp             x1, x0
    // 0x5e8db0: b.hs            #0x5e95bc
    // 0x5e8db4: LoadField: r0 = r2->field_2f
    //     0x5e8db4: ldur            w0, [x2, #0x2f]
    // 0x5e8db8: DecompressPointer r0
    //     0x5e8db8: add             x0, x0, HEAP, lsl #32
    // 0x5e8dbc: ldur            x1, [fp, #-0x40]
    // 0x5e8dc0: stur            x0, [fp, #-0x50]
    // 0x5e8dc4: r0 = _parts()
    //     0x5e8dc4: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5e8dc8: mov             x2, x0
    // 0x5e8dcc: LoadField: r0 = r2->field_b
    //     0x5e8dcc: ldur            w0, [x2, #0xb]
    // 0x5e8dd0: r1 = LoadInt32Instr(r0)
    //     0x5e8dd0: sbfx            x1, x0, #1, #0x1f
    // 0x5e8dd4: mov             x0, x1
    // 0x5e8dd8: r1 = 7
    //     0x5e8dd8: mov             x1, #7
    // 0x5e8ddc: cmp             x1, x0
    // 0x5e8de0: b.hs            #0x5e95c0
    // 0x5e8de4: LoadField: r0 = r2->field_2b
    //     0x5e8de4: ldur            w0, [x2, #0x2b]
    // 0x5e8de8: DecompressPointer r0
    //     0x5e8de8: add             x0, x0, HEAP, lsl #32
    // 0x5e8dec: ldur            x1, [fp, #-0x40]
    // 0x5e8df0: stur            x0, [fp, #-0x58]
    // 0x5e8df4: r0 = _parts()
    //     0x5e8df4: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5e8df8: mov             x2, x0
    // 0x5e8dfc: LoadField: r0 = r2->field_b
    //     0x5e8dfc: ldur            w0, [x2, #0xb]
    // 0x5e8e00: r1 = LoadInt32Instr(r0)
    //     0x5e8e00: sbfx            x1, x0, #1, #0x1f
    // 0x5e8e04: mov             x0, x1
    // 0x5e8e08: r1 = 5
    //     0x5e8e08: mov             x1, #5
    // 0x5e8e0c: cmp             x1, x0
    // 0x5e8e10: b.hs            #0x5e95c4
    // 0x5e8e14: LoadField: r0 = r2->field_23
    //     0x5e8e14: ldur            w0, [x2, #0x23]
    // 0x5e8e18: DecompressPointer r0
    //     0x5e8e18: add             x0, x0, HEAP, lsl #32
    // 0x5e8e1c: ldur            x1, [fp, #-0x50]
    // 0x5e8e20: stur            x0, [fp, #-0x40]
    // 0x5e8e24: r2 = LoadInt32Instr(r1)
    //     0x5e8e24: sbfx            x2, x1, #1, #0x1f
    //     0x5e8e28: tbz             w1, #0, #0x5e8e30
    //     0x5e8e2c: ldur            x2, [x1, #7]
    // 0x5e8e30: stur            x2, [fp, #-0x38]
    // 0x5e8e34: r0 = DateTime()
    //     0x5e8e34: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5e8e38: stur            x0, [fp, #-0x50]
    // 0x5e8e3c: ldur            x16, [fp, #-0x58]
    // 0x5e8e40: ldur            lr, [fp, #-0x40]
    // 0x5e8e44: stp             lr, x16, [SP]
    // 0x5e8e48: mov             x1, x0
    // 0x5e8e4c: ldur            x2, [fp, #-0x38]
    // 0x5e8e50: r4 = const [0, 0x4, 0x2, 0x4, null]
    //     0x5e8e50: add             x4, PP, #8, lsl #12  ; [pp+0x8808] List(5) [0, 0x4, 0x2, 0x4, Null]
    //     0x5e8e54: ldr             x4, [x4, #0x808]
    // 0x5e8e58: r0 = DateTime()
    //     0x5e8e58: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x5e8e5c: ldur            x1, [fp, #-0x30]
    // 0x5e8e60: r0 = _parts()
    //     0x5e8e60: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5e8e64: mov             x2, x0
    // 0x5e8e68: LoadField: r0 = r2->field_b
    //     0x5e8e68: ldur            w0, [x2, #0xb]
    // 0x5e8e6c: r1 = LoadInt32Instr(r0)
    //     0x5e8e6c: sbfx            x1, x0, #1, #0x1f
    // 0x5e8e70: mov             x0, x1
    // 0x5e8e74: r1 = 8
    //     0x5e8e74: mov             x1, #8
    // 0x5e8e78: cmp             x1, x0
    // 0x5e8e7c: b.hs            #0x5e95c8
    // 0x5e8e80: LoadField: r0 = r2->field_2f
    //     0x5e8e80: ldur            w0, [x2, #0x2f]
    // 0x5e8e84: DecompressPointer r0
    //     0x5e8e84: add             x0, x0, HEAP, lsl #32
    // 0x5e8e88: ldur            x1, [fp, #-0x30]
    // 0x5e8e8c: stur            x0, [fp, #-0x40]
    // 0x5e8e90: r0 = _parts()
    //     0x5e8e90: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5e8e94: mov             x2, x0
    // 0x5e8e98: LoadField: r0 = r2->field_b
    //     0x5e8e98: ldur            w0, [x2, #0xb]
    // 0x5e8e9c: r1 = LoadInt32Instr(r0)
    //     0x5e8e9c: sbfx            x1, x0, #1, #0x1f
    // 0x5e8ea0: mov             x0, x1
    // 0x5e8ea4: r1 = 7
    //     0x5e8ea4: mov             x1, #7
    // 0x5e8ea8: cmp             x1, x0
    // 0x5e8eac: b.hs            #0x5e95cc
    // 0x5e8eb0: LoadField: r0 = r2->field_2b
    //     0x5e8eb0: ldur            w0, [x2, #0x2b]
    // 0x5e8eb4: DecompressPointer r0
    //     0x5e8eb4: add             x0, x0, HEAP, lsl #32
    // 0x5e8eb8: ldur            x1, [fp, #-0x30]
    // 0x5e8ebc: stur            x0, [fp, #-0x58]
    // 0x5e8ec0: r0 = _parts()
    //     0x5e8ec0: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5e8ec4: mov             x2, x0
    // 0x5e8ec8: LoadField: r0 = r2->field_b
    //     0x5e8ec8: ldur            w0, [x2, #0xb]
    // 0x5e8ecc: r1 = LoadInt32Instr(r0)
    //     0x5e8ecc: sbfx            x1, x0, #1, #0x1f
    // 0x5e8ed0: mov             x0, x1
    // 0x5e8ed4: r1 = 5
    //     0x5e8ed4: mov             x1, #5
    // 0x5e8ed8: cmp             x1, x0
    // 0x5e8edc: b.hs            #0x5e95d0
    // 0x5e8ee0: LoadField: r0 = r2->field_23
    //     0x5e8ee0: ldur            w0, [x2, #0x23]
    // 0x5e8ee4: DecompressPointer r0
    //     0x5e8ee4: add             x0, x0, HEAP, lsl #32
    // 0x5e8ee8: ldur            x1, [fp, #-0x40]
    // 0x5e8eec: stur            x0, [fp, #-0x30]
    // 0x5e8ef0: r2 = LoadInt32Instr(r1)
    //     0x5e8ef0: sbfx            x2, x1, #1, #0x1f
    //     0x5e8ef4: tbz             w1, #0, #0x5e8efc
    //     0x5e8ef8: ldur            x2, [x1, #7]
    // 0x5e8efc: stur            x2, [fp, #-0x38]
    // 0x5e8f00: r0 = DateTime()
    //     0x5e8f00: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5e8f04: stur            x0, [fp, #-0x40]
    // 0x5e8f08: ldur            x16, [fp, #-0x58]
    // 0x5e8f0c: ldur            lr, [fp, #-0x30]
    // 0x5e8f10: stp             lr, x16, [SP]
    // 0x5e8f14: mov             x1, x0
    // 0x5e8f18: ldur            x2, [fp, #-0x38]
    // 0x5e8f1c: r4 = const [0, 0x4, 0x2, 0x4, null]
    //     0x5e8f1c: add             x4, PP, #8, lsl #12  ; [pp+0x8808] List(5) [0, 0x4, 0x2, 0x4, Null]
    //     0x5e8f20: ldr             x4, [x4, #0x808]
    // 0x5e8f24: r0 = DateTime()
    //     0x5e8f24: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x5e8f28: ldur            x1, [fp, #-0x28]
    // 0x5e8f2c: ldur            x2, [fp, #-0x50]
    // 0x5e8f30: r0 = isBefore()
    //     0x5e8f30: bl              #0x5793c8  ; [dart:core] DateTime::isBefore
    // 0x5e8f34: tbz             w0, #4, #0x5e8fe8
    // 0x5e8f38: ldur            x1, [fp, #-0x28]
    // 0x5e8f3c: ldur            x2, [fp, #-0x40]
    // 0x5e8f40: r0 = isAfter()
    //     0x5e8f40: bl              #0x5793ac  ; [dart:core] DateTime::isAfter
    // 0x5e8f44: tbz             w0, #4, #0x5e8fd4
    // 0x5e8f48: ldur            x3, [fp, #-0x10]
    // 0x5e8f4c: r4 = "mekke"
    //     0x5e8f4c: add             x4, PP, #0x15, lsl #12  ; [pp+0x155f8] "mekke"
    //     0x5e8f50: ldr             x4, [x4, #0x5f8]
    // 0x5e8f54: ldur            x0, [fp, #-0x48]
    // 0x5e8f58: StoreField: r3->field_1b = r0
    //     0x5e8f58: stur            w0, [x3, #0x1b]
    //     0x5e8f5c: ldurb           w16, [x3, #-1]
    //     0x5e8f60: ldurb           w17, [x0, #-1]
    //     0x5e8f64: and             x16, x17, x16, lsr #2
    //     0x5e8f68: tst             x16, HEAP, lsr #32
    //     0x5e8f6c: b.eq            #0x5e8f74
    //     0x5e8f70: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5e8f74: StoreField: r3->field_1f = r4
    //     0x5e8f74: stur            w4, [x3, #0x1f]
    // 0x5e8f78: ldur            x1, [fp, #-0x28]
    // 0x5e8f7c: ldur            x2, [fp, #-0x50]
    // 0x5e8f80: r0 = difference()
    //     0x5e8f80: bl              #0x5e099c  ; [dart:core] DateTime::difference
    // 0x5e8f84: LoadField: r1 = r0->field_7
    //     0x5e8f84: ldur            x1, [x0, #7]
    // 0x5e8f88: r0 = 86400000000
    //     0x5e8f88: ldr             x0, [PP, #0x7d78]  ; [pp+0x7d78] IMM: 0x141dd76000
    // 0x5e8f8c: sdiv            x2, x1, x0
    // 0x5e8f90: add             x3, x2, #1
    // 0x5e8f94: r0 = BoxInt64Instr(r3)
    //     0x5e8f94: sbfiz           x0, x3, #1, #0x1f
    //     0x5e8f98: cmp             x3, x0, asr #1
    //     0x5e8f9c: b.eq            #0x5e8fa8
    //     0x5e8fa0: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x5e8fa4: stur            x3, [x0, #7]
    // 0x5e8fa8: ldur            x3, [fp, #-0x10]
    // 0x5e8fac: StoreField: r3->field_23 = r0
    //     0x5e8fac: stur            w0, [x3, #0x23]
    //     0x5e8fb0: tbz             w0, #0, #0x5e8fcc
    //     0x5e8fb4: ldurb           w16, [x3, #-1]
    //     0x5e8fb8: ldurb           w17, [x0, #-1]
    //     0x5e8fbc: and             x16, x17, x16, lsr #2
    //     0x5e8fc0: tst             x16, HEAP, lsr #32
    //     0x5e8fc4: b.eq            #0x5e8fcc
    //     0x5e8fc8: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5e8fcc: r0 = Null
    //     0x5e8fcc: mov             x0, NULL
    // 0x5e8fd0: r0 = ReturnAsyncNotFuture()
    //     0x5e8fd0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e8fd4: ldur            x3, [fp, #-0x10]
    // 0x5e8fd8: r4 = "mekke"
    //     0x5e8fd8: add             x4, PP, #0x15, lsl #12  ; [pp+0x155f8] "mekke"
    //     0x5e8fdc: ldr             x4, [x4, #0x5f8]
    // 0x5e8fe0: r0 = 86400000000
    //     0x5e8fe0: ldr             x0, [PP, #0x7d78]  ; [pp+0x7d78] IMM: 0x141dd76000
    // 0x5e8fe4: b               #0x5e9048
    // 0x5e8fe8: ldur            x3, [fp, #-0x10]
    // 0x5e8fec: r4 = "mekke"
    //     0x5e8fec: add             x4, PP, #0x15, lsl #12  ; [pp+0x155f8] "mekke"
    //     0x5e8ff0: ldr             x4, [x4, #0x5f8]
    // 0x5e8ff4: r0 = 86400000000
    //     0x5e8ff4: ldr             x0, [PP, #0x7d78]  ; [pp+0x7d78] IMM: 0x141dd76000
    // 0x5e8ff8: b               #0x5e9048
    // 0x5e8ffc: ldur            x3, [fp, #-0x10]
    // 0x5e9000: r4 = "mekke"
    //     0x5e9000: add             x4, PP, #0x15, lsl #12  ; [pp+0x155f8] "mekke"
    //     0x5e9004: ldr             x4, [x4, #0x5f8]
    // 0x5e9008: r0 = 86400000000
    //     0x5e9008: ldr             x0, [PP, #0x7d78]  ; [pp+0x7d78] IMM: 0x141dd76000
    // 0x5e900c: b               #0x5e9048
    // 0x5e9010: ldur            x3, [fp, #-0x10]
    // 0x5e9014: r4 = "mekke"
    //     0x5e9014: add             x4, PP, #0x15, lsl #12  ; [pp+0x155f8] "mekke"
    //     0x5e9018: ldr             x4, [x4, #0x5f8]
    // 0x5e901c: r0 = 86400000000
    //     0x5e901c: ldr             x0, [PP, #0x7d78]  ; [pp+0x7d78] IMM: 0x141dd76000
    // 0x5e9020: b               #0x5e9048
    // 0x5e9024: ldur            x3, [fp, #-0x10]
    // 0x5e9028: r4 = "mekke"
    //     0x5e9028: add             x4, PP, #0x15, lsl #12  ; [pp+0x155f8] "mekke"
    //     0x5e902c: ldr             x4, [x4, #0x5f8]
    // 0x5e9030: r0 = 86400000000
    //     0x5e9030: ldr             x0, [PP, #0x7d78]  ; [pp+0x7d78] IMM: 0x141dd76000
    // 0x5e9034: b               #0x5e9048
    // 0x5e9038: ldur            x3, [fp, #-0x10]
    // 0x5e903c: r4 = "mekke"
    //     0x5e903c: add             x4, PP, #0x15, lsl #12  ; [pp+0x155f8] "mekke"
    //     0x5e9040: ldr             x4, [x4, #0x5f8]
    // 0x5e9044: r0 = 86400000000
    //     0x5e9044: ldr             x0, [PP, #0x7d78]  ; [pp+0x7d78] IMM: 0x141dd76000
    // 0x5e9048: ldur            x5, [fp, #-0x18]
    // 0x5e904c: LoadField: r6 = r5->field_1f
    //     0x5e904c: ldur            w6, [x5, #0x1f]
    // 0x5e9050: DecompressPointer r6
    //     0x5e9050: add             x6, x6, HEAP, lsl #32
    // 0x5e9054: stur            x6, [fp, #-0x30]
    // 0x5e9058: cmp             w6, NULL
    // 0x5e905c: b.ne            #0x5e9068
    // 0x5e9060: r1 = Null
    //     0x5e9060: mov             x1, NULL
    // 0x5e9064: b               #0x5e9080
    // 0x5e9068: LoadField: r1 = r6->field_7
    //     0x5e9068: ldur            w1, [x6, #7]
    // 0x5e906c: cbnz            w1, #0x5e9078
    // 0x5e9070: r2 = false
    //     0x5e9070: add             x2, NULL, #0x30  ; false
    // 0x5e9074: b               #0x5e907c
    // 0x5e9078: r2 = true
    //     0x5e9078: add             x2, NULL, #0x20  ; true
    // 0x5e907c: mov             x1, x2
    // 0x5e9080: cmp             w1, NULL
    // 0x5e9084: b.ne            #0x5e9094
    // 0x5e9088: r4 = "medine"
    //     0x5e9088: add             x4, PP, #0x15, lsl #12  ; [pp+0x15880] "medine"
    //     0x5e908c: ldr             x4, [x4, #0x880]
    // 0x5e9090: b               #0x5e93a4
    // 0x5e9094: tbnz            w1, #4, #0x5e939c
    // 0x5e9098: r1 = LoadStaticField(0xff0)
    //     0x5e9098: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5e909c: ldr             x1, [x1, #0x1fe0]
    // 0x5e90a0: cmp             w1, NULL
    // 0x5e90a4: b.ne            #0x5e90d0
    // 0x5e90a8: LoadField: r1 = r3->field_13
    //     0x5e90a8: ldur            w1, [x3, #0x13]
    // 0x5e90ac: DecompressPointer r1
    //     0x5e90ac: add             x1, x1, HEAP, lsl #32
    // 0x5e90b0: cmp             w6, NULL
    // 0x5e90b4: b.eq            #0x5e95d4
    // 0x5e90b8: mov             x2, x6
    // 0x5e90bc: r0 = getTripById()
    //     0x5e90bc: bl              #0x5e9600  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getTripById
    // 0x5e90c0: mov             x1, x0
    // 0x5e90c4: stur            x1, [fp, #-0x40]
    // 0x5e90c8: r0 = Await()
    //     0x5e90c8: bl              #0x3dd188  ; AwaitStub
    // 0x5e90cc: b               #0x5e90d4
    // 0x5e90d0: mov             x0, x1
    // 0x5e90d4: stur            x0, [fp, #-0x50]
    // 0x5e90d8: cmp             w0, NULL
    // 0x5e90dc: b.eq            #0x5e938c
    // 0x5e90e0: LoadField: r2 = r0->field_13
    //     0x5e90e0: ldur            w2, [x0, #0x13]
    // 0x5e90e4: DecompressPointer r2
    //     0x5e90e4: add             x2, x2, HEAP, lsl #32
    // 0x5e90e8: stur            x2, [fp, #-0x48]
    // 0x5e90ec: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x5e90ec: ldur            w3, [x0, #0x17]
    // 0x5e90f0: DecompressPointer r3
    //     0x5e90f0: add             x3, x3, HEAP, lsl #32
    // 0x5e90f4: stur            x3, [fp, #-0x40]
    // 0x5e90f8: cmp             w2, NULL
    // 0x5e90fc: b.eq            #0x5e937c
    // 0x5e9100: cmp             w3, NULL
    // 0x5e9104: b.eq            #0x5e936c
    // 0x5e9108: mov             x1, x2
    // 0x5e910c: r0 = _parts()
    //     0x5e910c: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5e9110: mov             x2, x0
    // 0x5e9114: LoadField: r0 = r2->field_b
    //     0x5e9114: ldur            w0, [x2, #0xb]
    // 0x5e9118: r1 = LoadInt32Instr(r0)
    //     0x5e9118: sbfx            x1, x0, #1, #0x1f
    // 0x5e911c: mov             x0, x1
    // 0x5e9120: r1 = 8
    //     0x5e9120: mov             x1, #8
    // 0x5e9124: cmp             x1, x0
    // 0x5e9128: b.hs            #0x5e95d8
    // 0x5e912c: LoadField: r0 = r2->field_2f
    //     0x5e912c: ldur            w0, [x2, #0x2f]
    // 0x5e9130: DecompressPointer r0
    //     0x5e9130: add             x0, x0, HEAP, lsl #32
    // 0x5e9134: ldur            x1, [fp, #-0x48]
    // 0x5e9138: stur            x0, [fp, #-0x58]
    // 0x5e913c: r0 = _parts()
    //     0x5e913c: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5e9140: mov             x2, x0
    // 0x5e9144: LoadField: r0 = r2->field_b
    //     0x5e9144: ldur            w0, [x2, #0xb]
    // 0x5e9148: r1 = LoadInt32Instr(r0)
    //     0x5e9148: sbfx            x1, x0, #1, #0x1f
    // 0x5e914c: mov             x0, x1
    // 0x5e9150: r1 = 7
    //     0x5e9150: mov             x1, #7
    // 0x5e9154: cmp             x1, x0
    // 0x5e9158: b.hs            #0x5e95dc
    // 0x5e915c: LoadField: r0 = r2->field_2b
    //     0x5e915c: ldur            w0, [x2, #0x2b]
    // 0x5e9160: DecompressPointer r0
    //     0x5e9160: add             x0, x0, HEAP, lsl #32
    // 0x5e9164: ldur            x1, [fp, #-0x48]
    // 0x5e9168: stur            x0, [fp, #-0x60]
    // 0x5e916c: r0 = _parts()
    //     0x5e916c: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5e9170: mov             x2, x0
    // 0x5e9174: LoadField: r0 = r2->field_b
    //     0x5e9174: ldur            w0, [x2, #0xb]
    // 0x5e9178: r1 = LoadInt32Instr(r0)
    //     0x5e9178: sbfx            x1, x0, #1, #0x1f
    // 0x5e917c: mov             x0, x1
    // 0x5e9180: r1 = 5
    //     0x5e9180: mov             x1, #5
    // 0x5e9184: cmp             x1, x0
    // 0x5e9188: b.hs            #0x5e95e0
    // 0x5e918c: LoadField: r0 = r2->field_23
    //     0x5e918c: ldur            w0, [x2, #0x23]
    // 0x5e9190: DecompressPointer r0
    //     0x5e9190: add             x0, x0, HEAP, lsl #32
    // 0x5e9194: ldur            x1, [fp, #-0x58]
    // 0x5e9198: stur            x0, [fp, #-0x48]
    // 0x5e919c: r2 = LoadInt32Instr(r1)
    //     0x5e919c: sbfx            x2, x1, #1, #0x1f
    //     0x5e91a0: tbz             w1, #0, #0x5e91a8
    //     0x5e91a4: ldur            x2, [x1, #7]
    // 0x5e91a8: stur            x2, [fp, #-0x38]
    // 0x5e91ac: r0 = DateTime()
    //     0x5e91ac: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5e91b0: stur            x0, [fp, #-0x58]
    // 0x5e91b4: ldur            x16, [fp, #-0x60]
    // 0x5e91b8: ldur            lr, [fp, #-0x48]
    // 0x5e91bc: stp             lr, x16, [SP]
    // 0x5e91c0: mov             x1, x0
    // 0x5e91c4: ldur            x2, [fp, #-0x38]
    // 0x5e91c8: r4 = const [0, 0x4, 0x2, 0x4, null]
    //     0x5e91c8: add             x4, PP, #8, lsl #12  ; [pp+0x8808] List(5) [0, 0x4, 0x2, 0x4, Null]
    //     0x5e91cc: ldr             x4, [x4, #0x808]
    // 0x5e91d0: r0 = DateTime()
    //     0x5e91d0: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x5e91d4: ldur            x1, [fp, #-0x40]
    // 0x5e91d8: r0 = _parts()
    //     0x5e91d8: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5e91dc: mov             x2, x0
    // 0x5e91e0: LoadField: r0 = r2->field_b
    //     0x5e91e0: ldur            w0, [x2, #0xb]
    // 0x5e91e4: r1 = LoadInt32Instr(r0)
    //     0x5e91e4: sbfx            x1, x0, #1, #0x1f
    // 0x5e91e8: mov             x0, x1
    // 0x5e91ec: r1 = 8
    //     0x5e91ec: mov             x1, #8
    // 0x5e91f0: cmp             x1, x0
    // 0x5e91f4: b.hs            #0x5e95e4
    // 0x5e91f8: LoadField: r0 = r2->field_2f
    //     0x5e91f8: ldur            w0, [x2, #0x2f]
    // 0x5e91fc: DecompressPointer r0
    //     0x5e91fc: add             x0, x0, HEAP, lsl #32
    // 0x5e9200: ldur            x1, [fp, #-0x40]
    // 0x5e9204: stur            x0, [fp, #-0x48]
    // 0x5e9208: r0 = _parts()
    //     0x5e9208: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5e920c: mov             x2, x0
    // 0x5e9210: LoadField: r0 = r2->field_b
    //     0x5e9210: ldur            w0, [x2, #0xb]
    // 0x5e9214: r1 = LoadInt32Instr(r0)
    //     0x5e9214: sbfx            x1, x0, #1, #0x1f
    // 0x5e9218: mov             x0, x1
    // 0x5e921c: r1 = 7
    //     0x5e921c: mov             x1, #7
    // 0x5e9220: cmp             x1, x0
    // 0x5e9224: b.hs            #0x5e95e8
    // 0x5e9228: LoadField: r0 = r2->field_2b
    //     0x5e9228: ldur            w0, [x2, #0x2b]
    // 0x5e922c: DecompressPointer r0
    //     0x5e922c: add             x0, x0, HEAP, lsl #32
    // 0x5e9230: ldur            x1, [fp, #-0x40]
    // 0x5e9234: stur            x0, [fp, #-0x60]
    // 0x5e9238: r0 = _parts()
    //     0x5e9238: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5e923c: mov             x2, x0
    // 0x5e9240: LoadField: r0 = r2->field_b
    //     0x5e9240: ldur            w0, [x2, #0xb]
    // 0x5e9244: r1 = LoadInt32Instr(r0)
    //     0x5e9244: sbfx            x1, x0, #1, #0x1f
    // 0x5e9248: mov             x0, x1
    // 0x5e924c: r1 = 5
    //     0x5e924c: mov             x1, #5
    // 0x5e9250: cmp             x1, x0
    // 0x5e9254: b.hs            #0x5e95ec
    // 0x5e9258: LoadField: r0 = r2->field_23
    //     0x5e9258: ldur            w0, [x2, #0x23]
    // 0x5e925c: DecompressPointer r0
    //     0x5e925c: add             x0, x0, HEAP, lsl #32
    // 0x5e9260: ldur            x1, [fp, #-0x48]
    // 0x5e9264: stur            x0, [fp, #-0x40]
    // 0x5e9268: r2 = LoadInt32Instr(r1)
    //     0x5e9268: sbfx            x2, x1, #1, #0x1f
    //     0x5e926c: tbz             w1, #0, #0x5e9274
    //     0x5e9270: ldur            x2, [x1, #7]
    // 0x5e9274: stur            x2, [fp, #-0x38]
    // 0x5e9278: r0 = DateTime()
    //     0x5e9278: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5e927c: stur            x0, [fp, #-0x48]
    // 0x5e9280: ldur            x16, [fp, #-0x60]
    // 0x5e9284: ldur            lr, [fp, #-0x40]
    // 0x5e9288: stp             lr, x16, [SP]
    // 0x5e928c: mov             x1, x0
    // 0x5e9290: ldur            x2, [fp, #-0x38]
    // 0x5e9294: r4 = const [0, 0x4, 0x2, 0x4, null]
    //     0x5e9294: add             x4, PP, #8, lsl #12  ; [pp+0x8808] List(5) [0, 0x4, 0x2, 0x4, Null]
    //     0x5e9298: ldr             x4, [x4, #0x808]
    // 0x5e929c: r0 = DateTime()
    //     0x5e929c: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x5e92a0: ldur            x1, [fp, #-0x28]
    // 0x5e92a4: ldur            x2, [fp, #-0x58]
    // 0x5e92a8: r0 = isBefore()
    //     0x5e92a8: bl              #0x5793c8  ; [dart:core] DateTime::isBefore
    // 0x5e92ac: tbz             w0, #4, #0x5e935c
    // 0x5e92b0: ldur            x1, [fp, #-0x28]
    // 0x5e92b4: ldur            x2, [fp, #-0x48]
    // 0x5e92b8: r0 = isAfter()
    //     0x5e92b8: bl              #0x5793ac  ; [dart:core] DateTime::isAfter
    // 0x5e92bc: tbz             w0, #4, #0x5e934c
    // 0x5e92c0: ldur            x3, [fp, #-0x10]
    // 0x5e92c4: r4 = "medine"
    //     0x5e92c4: add             x4, PP, #0x15, lsl #12  ; [pp+0x15880] "medine"
    //     0x5e92c8: ldr             x4, [x4, #0x880]
    // 0x5e92cc: ldur            x0, [fp, #-0x50]
    // 0x5e92d0: StoreField: r3->field_1b = r0
    //     0x5e92d0: stur            w0, [x3, #0x1b]
    //     0x5e92d4: ldurb           w16, [x3, #-1]
    //     0x5e92d8: ldurb           w17, [x0, #-1]
    //     0x5e92dc: and             x16, x17, x16, lsr #2
    //     0x5e92e0: tst             x16, HEAP, lsr #32
    //     0x5e92e4: b.eq            #0x5e92ec
    //     0x5e92e8: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5e92ec: StoreField: r3->field_1f = r4
    //     0x5e92ec: stur            w4, [x3, #0x1f]
    // 0x5e92f0: ldur            x1, [fp, #-0x28]
    // 0x5e92f4: ldur            x2, [fp, #-0x58]
    // 0x5e92f8: r0 = difference()
    //     0x5e92f8: bl              #0x5e099c  ; [dart:core] DateTime::difference
    // 0x5e92fc: LoadField: r1 = r0->field_7
    //     0x5e92fc: ldur            x1, [x0, #7]
    // 0x5e9300: r0 = 86400000000
    //     0x5e9300: ldr             x0, [PP, #0x7d78]  ; [pp+0x7d78] IMM: 0x141dd76000
    // 0x5e9304: sdiv            x2, x1, x0
    // 0x5e9308: add             x3, x2, #1
    // 0x5e930c: r0 = BoxInt64Instr(r3)
    //     0x5e930c: sbfiz           x0, x3, #1, #0x1f
    //     0x5e9310: cmp             x3, x0, asr #1
    //     0x5e9314: b.eq            #0x5e9320
    //     0x5e9318: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x5e931c: stur            x3, [x0, #7]
    // 0x5e9320: ldur            x3, [fp, #-0x10]
    // 0x5e9324: StoreField: r3->field_23 = r0
    //     0x5e9324: stur            w0, [x3, #0x23]
    //     0x5e9328: tbz             w0, #0, #0x5e9344
    //     0x5e932c: ldurb           w16, [x3, #-1]
    //     0x5e9330: ldurb           w17, [x0, #-1]
    //     0x5e9334: and             x16, x17, x16, lsr #2
    //     0x5e9338: tst             x16, HEAP, lsr #32
    //     0x5e933c: b.eq            #0x5e9344
    //     0x5e9340: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5e9344: r0 = Null
    //     0x5e9344: mov             x0, NULL
    // 0x5e9348: r0 = ReturnAsyncNotFuture()
    //     0x5e9348: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e934c: ldur            x3, [fp, #-0x10]
    // 0x5e9350: r4 = "medine"
    //     0x5e9350: add             x4, PP, #0x15, lsl #12  ; [pp+0x15880] "medine"
    //     0x5e9354: ldr             x4, [x4, #0x880]
    // 0x5e9358: b               #0x5e93a4
    // 0x5e935c: ldur            x3, [fp, #-0x10]
    // 0x5e9360: r4 = "medine"
    //     0x5e9360: add             x4, PP, #0x15, lsl #12  ; [pp+0x15880] "medine"
    //     0x5e9364: ldr             x4, [x4, #0x880]
    // 0x5e9368: b               #0x5e93a4
    // 0x5e936c: ldur            x3, [fp, #-0x10]
    // 0x5e9370: r4 = "medine"
    //     0x5e9370: add             x4, PP, #0x15, lsl #12  ; [pp+0x15880] "medine"
    //     0x5e9374: ldr             x4, [x4, #0x880]
    // 0x5e9378: b               #0x5e93a4
    // 0x5e937c: ldur            x3, [fp, #-0x10]
    // 0x5e9380: r4 = "medine"
    //     0x5e9380: add             x4, PP, #0x15, lsl #12  ; [pp+0x15880] "medine"
    //     0x5e9384: ldr             x4, [x4, #0x880]
    // 0x5e9388: b               #0x5e93a4
    // 0x5e938c: ldur            x3, [fp, #-0x10]
    // 0x5e9390: r4 = "medine"
    //     0x5e9390: add             x4, PP, #0x15, lsl #12  ; [pp+0x15880] "medine"
    //     0x5e9394: ldr             x4, [x4, #0x880]
    // 0x5e9398: b               #0x5e93a4
    // 0x5e939c: r4 = "medine"
    //     0x5e939c: add             x4, PP, #0x15, lsl #12  ; [pp+0x15880] "medine"
    //     0x5e93a0: ldr             x4, [x4, #0x880]
    // 0x5e93a4: LoadField: r0 = r3->field_1b
    //     0x5e93a4: ldur            w0, [x3, #0x1b]
    // 0x5e93a8: DecompressPointer r0
    //     0x5e93a8: add             x0, x0, HEAP, lsl #32
    // 0x5e93ac: cmp             w0, NULL
    // 0x5e93b0: b.ne            #0x5e959c
    // 0x5e93b4: ldur            x2, [fp, #-0x20]
    // 0x5e93b8: cmp             w2, NULL
    // 0x5e93bc: b.ne            #0x5e93c8
    // 0x5e93c0: r0 = Null
    //     0x5e93c0: mov             x0, NULL
    // 0x5e93c4: b               #0x5e93e0
    // 0x5e93c8: LoadField: r0 = r2->field_7
    //     0x5e93c8: ldur            w0, [x2, #7]
    // 0x5e93cc: cbnz            w0, #0x5e93d8
    // 0x5e93d0: r1 = false
    //     0x5e93d0: add             x1, NULL, #0x30  ; false
    // 0x5e93d4: b               #0x5e93dc
    // 0x5e93d8: r1 = true
    //     0x5e93d8: add             x1, NULL, #0x20  ; true
    // 0x5e93dc: mov             x0, x1
    // 0x5e93e0: cmp             w0, NULL
    // 0x5e93e4: b.eq            #0x5e94b0
    // 0x5e93e8: tbnz            w0, #4, #0x5e94b0
    // 0x5e93ec: r0 = LoadStaticField(0xfec)
    //     0x5e93ec: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e93f0: ldr             x0, [x0, #0x1fd8]
    // 0x5e93f4: cmp             w0, NULL
    // 0x5e93f8: b.ne            #0x5e941c
    // 0x5e93fc: LoadField: r1 = r3->field_13
    //     0x5e93fc: ldur            w1, [x3, #0x13]
    // 0x5e9400: DecompressPointer r1
    //     0x5e9400: add             x1, x1, HEAP, lsl #32
    // 0x5e9404: cmp             w2, NULL
    // 0x5e9408: b.eq            #0x5e95f0
    // 0x5e940c: r0 = getTripById()
    //     0x5e940c: bl              #0x5e9600  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getTripById
    // 0x5e9410: mov             x1, x0
    // 0x5e9414: stur            x1, [fp, #-0x20]
    // 0x5e9418: r0 = Await()
    //     0x5e9418: bl              #0x3dd188  ; AwaitStub
    // 0x5e941c: stur            x0, [fp, #-0x18]
    // 0x5e9420: cmp             w0, NULL
    // 0x5e9424: b.ne            #0x5e9430
    // 0x5e9428: ldur            x3, [fp, #-0x10]
    // 0x5e942c: b               #0x5e94b0
    // 0x5e9430: LoadField: r1 = r0->field_13
    //     0x5e9430: ldur            w1, [x0, #0x13]
    // 0x5e9434: DecompressPointer r1
    //     0x5e9434: add             x1, x1, HEAP, lsl #32
    // 0x5e9438: cmp             w1, NULL
    // 0x5e943c: b.eq            #0x5e94ac
    // 0x5e9440: ldur            x3, [fp, #-0x10]
    // 0x5e9444: LoadField: r2 = r3->field_1b
    //     0x5e9444: ldur            w2, [x3, #0x1b]
    // 0x5e9448: DecompressPointer r2
    //     0x5e9448: add             x2, x2, HEAP, lsl #32
    // 0x5e944c: cmp             w2, NULL
    // 0x5e9450: b.eq            #0x5e9474
    // 0x5e9454: LoadField: r4 = r2->field_13
    //     0x5e9454: ldur            w4, [x2, #0x13]
    // 0x5e9458: DecompressPointer r4
    //     0x5e9458: add             x4, x4, HEAP, lsl #32
    // 0x5e945c: cmp             w4, NULL
    // 0x5e9460: b.eq            #0x5e95f4
    // 0x5e9464: mov             x2, x4
    // 0x5e9468: r0 = isBefore()
    //     0x5e9468: bl              #0x5793c8  ; [dart:core] DateTime::isBefore
    // 0x5e946c: tbnz            w0, #4, #0x5e94a4
    // 0x5e9470: ldur            x3, [fp, #-0x10]
    // 0x5e9474: r1 = "mekke"
    //     0x5e9474: add             x1, PP, #0x15, lsl #12  ; [pp+0x155f8] "mekke"
    //     0x5e9478: ldr             x1, [x1, #0x5f8]
    // 0x5e947c: ldur            x0, [fp, #-0x18]
    // 0x5e9480: StoreField: r3->field_1b = r0
    //     0x5e9480: stur            w0, [x3, #0x1b]
    //     0x5e9484: ldurb           w16, [x3, #-1]
    //     0x5e9488: ldurb           w17, [x0, #-1]
    //     0x5e948c: and             x16, x17, x16, lsr #2
    //     0x5e9490: tst             x16, HEAP, lsr #32
    //     0x5e9494: b.eq            #0x5e949c
    //     0x5e9498: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5e949c: StoreField: r3->field_1f = r1
    //     0x5e949c: stur            w1, [x3, #0x1f]
    // 0x5e94a0: b               #0x5e94b0
    // 0x5e94a4: ldur            x3, [fp, #-0x10]
    // 0x5e94a8: b               #0x5e94b0
    // 0x5e94ac: ldur            x3, [fp, #-0x10]
    // 0x5e94b0: ldur            x2, [fp, #-0x30]
    // 0x5e94b4: cmp             w2, NULL
    // 0x5e94b8: b.ne            #0x5e94c4
    // 0x5e94bc: r0 = Null
    //     0x5e94bc: mov             x0, NULL
    // 0x5e94c0: b               #0x5e94dc
    // 0x5e94c4: LoadField: r0 = r2->field_7
    //     0x5e94c4: ldur            w0, [x2, #7]
    // 0x5e94c8: cbnz            w0, #0x5e94d4
    // 0x5e94cc: r1 = false
    //     0x5e94cc: add             x1, NULL, #0x30  ; false
    // 0x5e94d0: b               #0x5e94d8
    // 0x5e94d4: r1 = true
    //     0x5e94d4: add             x1, NULL, #0x20  ; true
    // 0x5e94d8: mov             x0, x1
    // 0x5e94dc: cmp             w0, NULL
    // 0x5e94e0: b.eq            #0x5e959c
    // 0x5e94e4: tbnz            w0, #4, #0x5e959c
    // 0x5e94e8: r0 = LoadStaticField(0xff0)
    //     0x5e94e8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e94ec: ldr             x0, [x0, #0x1fe0]
    // 0x5e94f0: cmp             w0, NULL
    // 0x5e94f4: b.ne            #0x5e9518
    // 0x5e94f8: LoadField: r1 = r3->field_13
    //     0x5e94f8: ldur            w1, [x3, #0x13]
    // 0x5e94fc: DecompressPointer r1
    //     0x5e94fc: add             x1, x1, HEAP, lsl #32
    // 0x5e9500: cmp             w2, NULL
    // 0x5e9504: b.eq            #0x5e95f8
    // 0x5e9508: r0 = getTripById()
    //     0x5e9508: bl              #0x5e9600  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getTripById
    // 0x5e950c: mov             x1, x0
    // 0x5e9510: stur            x1, [fp, #-0x18]
    // 0x5e9514: r0 = Await()
    //     0x5e9514: bl              #0x3dd188  ; AwaitStub
    // 0x5e9518: stur            x0, [fp, #-0x18]
    // 0x5e951c: cmp             w0, NULL
    // 0x5e9520: b.eq            #0x5e959c
    // 0x5e9524: LoadField: r1 = r0->field_13
    //     0x5e9524: ldur            w1, [x0, #0x13]
    // 0x5e9528: DecompressPointer r1
    //     0x5e9528: add             x1, x1, HEAP, lsl #32
    // 0x5e952c: cmp             w1, NULL
    // 0x5e9530: b.eq            #0x5e959c
    // 0x5e9534: ldur            x3, [fp, #-0x10]
    // 0x5e9538: LoadField: r2 = r3->field_1b
    //     0x5e9538: ldur            w2, [x3, #0x1b]
    // 0x5e953c: DecompressPointer r2
    //     0x5e953c: add             x2, x2, HEAP, lsl #32
    // 0x5e9540: cmp             w2, NULL
    // 0x5e9544: b.ne            #0x5e9550
    // 0x5e9548: mov             x1, x3
    // 0x5e954c: b               #0x5e9570
    // 0x5e9550: LoadField: r4 = r2->field_13
    //     0x5e9550: ldur            w4, [x2, #0x13]
    // 0x5e9554: DecompressPointer r4
    //     0x5e9554: add             x4, x4, HEAP, lsl #32
    // 0x5e9558: cmp             w4, NULL
    // 0x5e955c: b.eq            #0x5e95fc
    // 0x5e9560: mov             x2, x4
    // 0x5e9564: r0 = isBefore()
    //     0x5e9564: bl              #0x5793c8  ; [dart:core] DateTime::isBefore
    // 0x5e9568: tbnz            w0, #4, #0x5e959c
    // 0x5e956c: ldur            x1, [fp, #-0x10]
    // 0x5e9570: r2 = "medine"
    //     0x5e9570: add             x2, PP, #0x15, lsl #12  ; [pp+0x15880] "medine"
    //     0x5e9574: ldr             x2, [x2, #0x880]
    // 0x5e9578: ldur            x0, [fp, #-0x18]
    // 0x5e957c: StoreField: r1->field_1b = r0
    //     0x5e957c: stur            w0, [x1, #0x1b]
    //     0x5e9580: ldurb           w16, [x1, #-1]
    //     0x5e9584: ldurb           w17, [x0, #-1]
    //     0x5e9588: and             x16, x17, x16, lsr #2
    //     0x5e958c: tst             x16, HEAP, lsr #32
    //     0x5e9590: b.eq            #0x5e9598
    //     0x5e9594: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5e9598: StoreField: r1->field_1f = r2
    //     0x5e9598: stur            w2, [x1, #0x1f]
    // 0x5e959c: r0 = Null
    //     0x5e959c: mov             x0, NULL
    // 0x5e95a0: r0 = ReturnAsyncNotFuture()
    //     0x5e95a0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e95a4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e95a4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e95a8: b               #0x5e8ba8
    // 0x5e95ac: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5e95ac: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5e95b0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5e95b0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5e95b4: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5e95b4: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5e95b8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e95b8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5e95bc: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5e95bc: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5e95c0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5e95c0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5e95c4: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5e95c4: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5e95c8: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5e95c8: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5e95cc: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5e95cc: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5e95d0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5e95d0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5e95d4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e95d4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5e95d8: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5e95d8: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5e95dc: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5e95dc: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5e95e0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5e95e0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5e95e4: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5e95e4: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5e95e8: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5e95e8: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5e95ec: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5e95ec: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5e95f0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e95f0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5e95f4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e95f4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5e95f8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e95f8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5e95fc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e95fc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5e96d4, size: 0x20
    // 0x5e96d4: r0 = false
    //     0x5e96d4: add             x0, NULL, #0x30  ; false
    // 0x5e96d8: ldr             x1, [SP]
    // 0x5e96dc: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x5e96dc: ldur            w2, [x1, #0x17]
    // 0x5e96e0: DecompressPointer r2
    //     0x5e96e0: add             x2, x2, HEAP, lsl #32
    // 0x5e96e4: LoadField: r1 = r2->field_f
    //     0x5e96e4: ldur            w1, [x2, #0xf]
    // 0x5e96e8: DecompressPointer r1
    //     0x5e96e8: add             x1, x1, HEAP, lsl #32
    // 0x5e96ec: ArrayStore: r1[0] = r0  ; List_4
    //     0x5e96ec: stur            w0, [x1, #0x17]
    // 0x5e96f0: ret
    //     0x5e96f0: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5e96f4, size: 0x20
    // 0x5e96f4: r0 = true
    //     0x5e96f4: add             x0, NULL, #0x20  ; true
    // 0x5e96f8: ldr             x1, [SP]
    // 0x5e96fc: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x5e96fc: ldur            w2, [x1, #0x17]
    // 0x5e9700: DecompressPointer r2
    //     0x5e9700: add             x2, x2, HEAP, lsl #32
    // 0x5e9704: LoadField: r1 = r2->field_f
    //     0x5e9704: ldur            w1, [x2, #0xf]
    // 0x5e9708: DecompressPointer r1
    //     0x5e9708: add             x1, x1, HEAP, lsl #32
    // 0x5e970c: ArrayStore: r1[0] = r0  ; List_4
    //     0x5e970c: stur            w0, [x1, #0x17]
    // 0x5e9710: ret
    //     0x5e9710: ret             
  }
  _ build(/* No info */) {
    // ** addr: 0x733040, size: 0x2f8
    // 0x733040: EnterFrame
    //     0x733040: stp             fp, lr, [SP, #-0x10]!
    //     0x733044: mov             fp, SP
    // 0x733048: AllocStack(0x48)
    //     0x733048: sub             SP, SP, #0x48
    // 0x73304c: SetupParameters(_RehberIletisimPageState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x73304c: stur            x1, [fp, #-8]
    //     0x733050: stur            x2, [fp, #-0x10]
    // 0x733054: CheckStackOverflow
    //     0x733054: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x733058: cmp             SP, x16
    //     0x73305c: b.ls            #0x733330
    // 0x733060: r1 = 1
    //     0x733060: mov             x1, #1
    // 0x733064: r0 = AllocateContext()
    //     0x733064: bl              #0x927010  ; AllocateContextStub
    // 0x733068: mov             x2, x0
    // 0x73306c: ldur            x0, [fp, #-0x10]
    // 0x733070: stur            x2, [fp, #-0x18]
    // 0x733074: StoreField: r2->field_f = r0
    //     0x733074: stur            w0, [x2, #0xf]
    // 0x733078: r16 = 0.900000
    //     0x733078: add             x16, PP, #0x12, lsl #12  ; [pp+0x12190] 0.9
    //     0x73307c: ldr             x16, [x16, #0x190]
    // 0x733080: str             x16, [SP]
    // 0x733084: r1 = Instance_Color
    //     0x733084: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x733088: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x733088: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x73308c: ldr             x4, [x4, #0x198]
    // 0x733090: r0 = withValues()
    //     0x733090: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x733094: stur            x0, [fp, #-0x10]
    // 0x733098: r0 = BoxDecoration()
    //     0x733098: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x73309c: mov             x1, x0
    // 0x7330a0: ldur            x0, [fp, #-0x10]
    // 0x7330a4: stur            x1, [fp, #-0x20]
    // 0x7330a8: StoreField: r1->field_7 = r0
    //     0x7330a8: stur            w0, [x1, #7]
    // 0x7330ac: r0 = Instance_BoxShape
    //     0x7330ac: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x7330b0: ldr             x0, [x0, #0x1a0]
    // 0x7330b4: StoreField: r1->field_23 = r0
    //     0x7330b4: stur            w0, [x1, #0x23]
    // 0x7330b8: r0 = Icon()
    //     0x7330b8: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7330bc: mov             x3, x0
    // 0x7330c0: r0 = Instance_IconData
    //     0x7330c0: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a8] Obj!IconData@a09ce1
    //     0x7330c4: ldr             x0, [x0, #0x1a8]
    // 0x7330c8: stur            x3, [fp, #-0x10]
    // 0x7330cc: StoreField: r3->field_b = r0
    //     0x7330cc: stur            w0, [x3, #0xb]
    // 0x7330d0: r0 = Instance_Color
    //     0x7330d0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7330d4: ldr             x0, [x0, #0xb88]
    // 0x7330d8: StoreField: r3->field_23 = r0
    //     0x7330d8: stur            w0, [x3, #0x23]
    // 0x7330dc: ldur            x2, [fp, #-0x18]
    // 0x7330e0: r1 = Function '<anonymous closure>':.
    //     0x7330e0: add             x1, PP, #0x15, lsl #12  ; [pp+0x15450] AnonymousClosure: static (0x6ce104), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x7330e4: ldr             x1, [x1, #0x450]
    // 0x7330e8: r0 = AllocateClosure()
    //     0x7330e8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7330ec: stur            x0, [fp, #-0x18]
    // 0x7330f0: r0 = IconButton()
    //     0x7330f0: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x7330f4: mov             x1, x0
    // 0x7330f8: ldur            x0, [fp, #-0x18]
    // 0x7330fc: stur            x1, [fp, #-0x28]
    // 0x733100: StoreField: r1->field_3b = r0
    //     0x733100: stur            w0, [x1, #0x3b]
    // 0x733104: r0 = false
    //     0x733104: add             x0, NULL, #0x30  ; false
    // 0x733108: StoreField: r1->field_4f = r0
    //     0x733108: stur            w0, [x1, #0x4f]
    // 0x73310c: ldur            x2, [fp, #-0x10]
    // 0x733110: StoreField: r1->field_1f = r2
    //     0x733110: stur            w2, [x1, #0x1f]
    // 0x733114: r2 = Instance__IconButtonVariant
    //     0x733114: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x733118: ldr             x2, [x2, #0x1b8]
    // 0x73311c: StoreField: r1->field_6f = r2
    //     0x73311c: stur            w2, [x1, #0x6f]
    // 0x733120: r0 = Container()
    //     0x733120: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x733124: stur            x0, [fp, #-0x10]
    // 0x733128: r16 = Instance_EdgeInsets
    //     0x733128: add             x16, PP, #0xc, lsl #12  ; [pp+0xcde8] Obj!EdgeInsets@a0bf31
    //     0x73312c: ldr             x16, [x16, #0xde8]
    // 0x733130: ldur            lr, [fp, #-0x20]
    // 0x733134: stp             lr, x16, [SP, #8]
    // 0x733138: ldur            x16, [fp, #-0x28]
    // 0x73313c: str             x16, [SP]
    // 0x733140: mov             x1, x0
    // 0x733144: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, margin, 0x1, null]
    //     0x733144: add             x4, PP, #0x12, lsl #12  ; [pp+0x121c0] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "margin", 0x1, Null]
    //     0x733148: ldr             x4, [x4, #0x1c0]
    // 0x73314c: r0 = Container()
    //     0x73314c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x733150: r16 = 0.900000
    //     0x733150: add             x16, PP, #0x12, lsl #12  ; [pp+0x12190] 0.9
    //     0x733154: ldr             x16, [x16, #0x190]
    // 0x733158: str             x16, [SP]
    // 0x73315c: r1 = Instance_Color
    //     0x73315c: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x733160: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x733160: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x733164: ldr             x4, [x4, #0x198]
    // 0x733168: r0 = withValues()
    //     0x733168: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x73316c: stur            x0, [fp, #-0x18]
    // 0x733170: r0 = Radius()
    //     0x733170: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x733174: d0 = 20.000000
    //     0x733174: fmov            d0, #20.00000000
    // 0x733178: stur            x0, [fp, #-0x20]
    // 0x73317c: StoreField: r0->field_7 = d0
    //     0x73317c: stur            d0, [x0, #7]
    // 0x733180: StoreField: r0->field_f = d0
    //     0x733180: stur            d0, [x0, #0xf]
    // 0x733184: r0 = BorderRadius()
    //     0x733184: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x733188: mov             x1, x0
    // 0x73318c: ldur            x0, [fp, #-0x20]
    // 0x733190: stur            x1, [fp, #-0x28]
    // 0x733194: StoreField: r1->field_7 = r0
    //     0x733194: stur            w0, [x1, #7]
    // 0x733198: StoreField: r1->field_b = r0
    //     0x733198: stur            w0, [x1, #0xb]
    // 0x73319c: StoreField: r1->field_f = r0
    //     0x73319c: stur            w0, [x1, #0xf]
    // 0x7331a0: StoreField: r1->field_13 = r0
    //     0x7331a0: stur            w0, [x1, #0x13]
    // 0x7331a4: r0 = BoxDecoration()
    //     0x7331a4: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7331a8: mov             x1, x0
    // 0x7331ac: ldur            x0, [fp, #-0x18]
    // 0x7331b0: stur            x1, [fp, #-0x20]
    // 0x7331b4: StoreField: r1->field_7 = r0
    //     0x7331b4: stur            w0, [x1, #7]
    // 0x7331b8: ldur            x0, [fp, #-0x28]
    // 0x7331bc: StoreField: r1->field_13 = r0
    //     0x7331bc: stur            w0, [x1, #0x13]
    // 0x7331c0: r0 = Instance_BoxShape
    //     0x7331c0: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7331c4: ldr             x0, [x0, #0x1c8]
    // 0x7331c8: StoreField: r1->field_23 = r0
    //     0x7331c8: stur            w0, [x1, #0x23]
    // 0x7331cc: r0 = TextStyle()
    //     0x7331cc: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7331d0: mov             x1, x0
    // 0x7331d4: r0 = true
    //     0x7331d4: add             x0, NULL, #0x20  ; true
    // 0x7331d8: stur            x1, [fp, #-0x18]
    // 0x7331dc: StoreField: r1->field_7 = r0
    //     0x7331dc: stur            w0, [x1, #7]
    // 0x7331e0: r2 = Instance_Color
    //     0x7331e0: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7331e4: ldr             x2, [x2, #0xb88]
    // 0x7331e8: StoreField: r1->field_b = r2
    //     0x7331e8: stur            w2, [x1, #0xb]
    // 0x7331ec: r2 = 18.000000
    //     0x7331ec: add             x2, PP, #0xc, lsl #12  ; [pp+0xce08] 18
    //     0x7331f0: ldr             x2, [x2, #0xe08]
    // 0x7331f4: StoreField: r1->field_1f = r2
    //     0x7331f4: stur            w2, [x1, #0x1f]
    // 0x7331f8: r2 = Instance_FontWeight
    //     0x7331f8: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x7331fc: ldr             x2, [x2, #0x1d0]
    // 0x733200: StoreField: r1->field_23 = r2
    //     0x733200: stur            w2, [x1, #0x23]
    // 0x733204: r0 = Text()
    //     0x733204: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x733208: mov             x1, x0
    // 0x73320c: r0 = "Rehberle İletişim"
    //     0x73320c: add             x0, PP, #0x15, lsl #12  ; [pp+0x15458] "Rehberle İletişim"
    //     0x733210: ldr             x0, [x0, #0x458]
    // 0x733214: stur            x1, [fp, #-0x28]
    // 0x733218: StoreField: r1->field_b = r0
    //     0x733218: stur            w0, [x1, #0xb]
    // 0x73321c: ldur            x0, [fp, #-0x18]
    // 0x733220: StoreField: r1->field_13 = r0
    //     0x733220: stur            w0, [x1, #0x13]
    // 0x733224: r0 = Container()
    //     0x733224: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x733228: stur            x0, [fp, #-0x18]
    // 0x73322c: r16 = Instance_EdgeInsets
    //     0x73322c: add             x16, PP, #0x12, lsl #12  ; [pp+0x121e0] Obj!EdgeInsets@a0bd51
    //     0x733230: ldr             x16, [x16, #0x1e0]
    // 0x733234: ldur            lr, [fp, #-0x20]
    // 0x733238: stp             lr, x16, [SP, #8]
    // 0x73323c: ldur            x16, [fp, #-0x28]
    // 0x733240: str             x16, [SP]
    // 0x733244: mov             x1, x0
    // 0x733248: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x733248: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x73324c: ldr             x4, [x4, #0x1e8]
    // 0x733250: r0 = Container()
    //     0x733250: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x733254: r0 = AppBar()
    //     0x733254: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x733258: stur            x0, [fp, #-0x20]
    // 0x73325c: r16 = Instance_Color
    //     0x73325c: add             x16, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x733260: ldr             x16, [x16, #0x860]
    // 0x733264: r30 = 0.000000
    //     0x733264: ldr             lr, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x733268: stp             lr, x16, [SP, #0x10]
    // 0x73326c: ldur            x16, [fp, #-0x10]
    // 0x733270: r30 = true
    //     0x733270: add             lr, NULL, #0x20  ; true
    // 0x733274: stp             lr, x16, [SP]
    // 0x733278: mov             x1, x0
    // 0x73327c: ldur            x2, [fp, #-0x18]
    // 0x733280: r4 = const [0, 0x6, 0x4, 0x2, backgroundColor, 0x2, centerTitle, 0x5, elevation, 0x3, leading, 0x4, null]
    //     0x733280: add             x4, PP, #0x12, lsl #12  ; [pp+0x121f0] List(13) [0, 0x6, 0x4, 0x2, "backgroundColor", 0x2, "centerTitle", 0x5, "elevation", 0x3, "leading", 0x4, Null]
    //     0x733284: ldr             x4, [x4, #0x1f0]
    // 0x733288: r0 = AppBar()
    //     0x733288: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x73328c: ldur            x1, [fp, #-8]
    // 0x733290: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x733290: ldur            w0, [x1, #0x17]
    // 0x733294: DecompressPointer r0
    //     0x733294: add             x0, x0, HEAP, lsl #32
    // 0x733298: tbnz            w0, #4, #0x7332a8
    // 0x73329c: r1 = Instance_Center
    //     0x73329c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12710] Obj!Center@a1fdb1
    //     0x7332a0: ldr             x1, [x1, #0x710]
    // 0x7332a4: b               #0x7332c8
    // 0x7332a8: LoadField: r0 = r1->field_27
    //     0x7332a8: ldur            w0, [x1, #0x27]
    // 0x7332ac: DecompressPointer r0
    //     0x7332ac: add             x0, x0, HEAP, lsl #32
    // 0x7332b0: cmp             w0, NULL
    // 0x7332b4: b.ne            #0x7332c0
    // 0x7332b8: r0 = _buildNoManagerView()
    //     0x7332b8: bl              #0x735e38  ; [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_buildNoManagerView
    // 0x7332bc: b               #0x7332c4
    // 0x7332c0: r0 = _buildContent()
    //     0x7332c0: bl              #0x733338  ; [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_buildContent
    // 0x7332c4: mov             x1, x0
    // 0x7332c8: ldur            x0, [fp, #-0x20]
    // 0x7332cc: stur            x1, [fp, #-8]
    // 0x7332d0: r0 = Scaffold()
    //     0x7332d0: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x7332d4: ldur            x1, [fp, #-0x20]
    // 0x7332d8: ArrayStore: r0[0] = r1  ; List_4
    //     0x7332d8: stur            w1, [x0, #0x17]
    // 0x7332dc: ldur            x1, [fp, #-8]
    // 0x7332e0: StoreField: r0->field_1b = r1
    //     0x7332e0: stur            w1, [x0, #0x1b]
    // 0x7332e4: r1 = Instance_AlignmentDirectional
    //     0x7332e4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x7332e8: ldr             x1, [x1, #0x350]
    // 0x7332ec: StoreField: r0->field_2f = r1
    //     0x7332ec: stur            w1, [x0, #0x2f]
    // 0x7332f0: r1 = true
    //     0x7332f0: add             x1, NULL, #0x20  ; true
    // 0x7332f4: StoreField: r0->field_5f = r1
    //     0x7332f4: stur            w1, [x0, #0x5f]
    // 0x7332f8: r2 = Instance_DragStartBehavior
    //     0x7332f8: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7332fc: StoreField: r0->field_63 = r2
    //     0x7332fc: stur            w2, [x0, #0x63]
    // 0x733300: r2 = false
    //     0x733300: add             x2, NULL, #0x30  ; false
    // 0x733304: StoreField: r0->field_b = r2
    //     0x733304: stur            w2, [x0, #0xb]
    // 0x733308: StoreField: r0->field_f = r1
    //     0x733308: stur            w1, [x0, #0xf]
    // 0x73330c: StoreField: r0->field_13 = r2
    //     0x73330c: stur            w2, [x0, #0x13]
    // 0x733310: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x733310: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x733314: ldr             x2, [x2, #0x358]
    // 0x733318: StoreField: r0->field_4b = r2
    //     0x733318: stur            w2, [x0, #0x4b]
    // 0x73331c: StoreField: r0->field_6b = r1
    //     0x73331c: stur            w1, [x0, #0x6b]
    // 0x733320: StoreField: r0->field_6f = r1
    //     0x733320: stur            w1, [x0, #0x6f]
    // 0x733324: LeaveFrame
    //     0x733324: mov             SP, fp
    //     0x733328: ldp             fp, lr, [SP], #0x10
    // 0x73332c: ret
    //     0x73332c: ret             
    // 0x733330: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x733330: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x733334: b               #0x733060
  }
  _ _buildContent(/* No info */) {
    // ** addr: 0x733338, size: 0x3f4
    // 0x733338: EnterFrame
    //     0x733338: stp             fp, lr, [SP, #-0x10]!
    //     0x73333c: mov             fp, SP
    // 0x733340: AllocStack(0x28)
    //     0x733340: sub             SP, SP, #0x28
    // 0x733344: SetupParameters(_RehberIletisimPageState this /* r1 => r0, fp-0x8 */)
    //     0x733344: mov             x0, x1
    //     0x733348: stur            x1, [fp, #-8]
    // 0x73334c: CheckStackOverflow
    //     0x73334c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x733350: cmp             SP, x16
    //     0x733354: b.ls            #0x733724
    // 0x733358: r1 = <Widget>
    //     0x733358: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73335c: r2 = 0
    //     0x73335c: mov             x2, #0
    // 0x733360: r0 = _GrowableList()
    //     0x733360: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x733364: mov             x2, x0
    // 0x733368: ldur            x0, [fp, #-8]
    // 0x73336c: stur            x2, [fp, #-0x10]
    // 0x733370: LoadField: r1 = r0->field_1b
    //     0x733370: ldur            w1, [x0, #0x1b]
    // 0x733374: DecompressPointer r1
    //     0x733374: add             x1, x1, HEAP, lsl #32
    // 0x733378: cmp             w1, NULL
    // 0x73337c: b.eq            #0x733408
    // 0x733380: mov             x1, x0
    // 0x733384: r0 = _buildTripInfoCard()
    //     0x733384: bl              #0x735758  ; [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_buildTripInfoCard
    // 0x733388: mov             x2, x0
    // 0x73338c: ldur            x0, [fp, #-0x10]
    // 0x733390: stur            x2, [fp, #-0x20]
    // 0x733394: LoadField: r1 = r0->field_b
    //     0x733394: ldur            w1, [x0, #0xb]
    // 0x733398: LoadField: r3 = r0->field_f
    //     0x733398: ldur            w3, [x0, #0xf]
    // 0x73339c: DecompressPointer r3
    //     0x73339c: add             x3, x3, HEAP, lsl #32
    // 0x7333a0: LoadField: r4 = r3->field_b
    //     0x7333a0: ldur            w4, [x3, #0xb]
    // 0x7333a4: r3 = LoadInt32Instr(r1)
    //     0x7333a4: sbfx            x3, x1, #1, #0x1f
    // 0x7333a8: stur            x3, [fp, #-0x18]
    // 0x7333ac: r1 = LoadInt32Instr(r4)
    //     0x7333ac: sbfx            x1, x4, #1, #0x1f
    // 0x7333b0: cmp             x3, x1
    // 0x7333b4: b.ne            #0x7333c0
    // 0x7333b8: mov             x1, x0
    // 0x7333bc: r0 = _growToNextCapacity()
    //     0x7333bc: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7333c0: ldur            x2, [fp, #-0x10]
    // 0x7333c4: ldur            x3, [fp, #-0x18]
    // 0x7333c8: add             x0, x3, #1
    // 0x7333cc: lsl             x1, x0, #1
    // 0x7333d0: StoreField: r2->field_b = r1
    //     0x7333d0: stur            w1, [x2, #0xb]
    // 0x7333d4: LoadField: r1 = r2->field_f
    //     0x7333d4: ldur            w1, [x2, #0xf]
    // 0x7333d8: DecompressPointer r1
    //     0x7333d8: add             x1, x1, HEAP, lsl #32
    // 0x7333dc: ldur            x0, [fp, #-0x20]
    // 0x7333e0: ArrayStore: r1[r3] = r0  ; List_4
    //     0x7333e0: add             x25, x1, x3, lsl #2
    //     0x7333e4: add             x25, x25, #0xf
    //     0x7333e8: str             w0, [x25]
    //     0x7333ec: tbz             w0, #0, #0x733408
    //     0x7333f0: ldurb           w16, [x1, #-1]
    //     0x7333f4: ldurb           w17, [x0, #-1]
    //     0x7333f8: and             x16, x17, x16, lsr #2
    //     0x7333fc: tst             x16, HEAP, lsr #32
    //     0x733400: b.eq            #0x733408
    //     0x733404: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x733408: ldur            x1, [fp, #-8]
    // 0x73340c: r0 = _buildMapSection()
    //     0x73340c: bl              #0x7345b4  ; [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_buildMapSection
    // 0x733410: mov             x2, x0
    // 0x733414: ldur            x0, [fp, #-0x10]
    // 0x733418: stur            x2, [fp, #-0x20]
    // 0x73341c: LoadField: r1 = r0->field_b
    //     0x73341c: ldur            w1, [x0, #0xb]
    // 0x733420: LoadField: r3 = r0->field_f
    //     0x733420: ldur            w3, [x0, #0xf]
    // 0x733424: DecompressPointer r3
    //     0x733424: add             x3, x3, HEAP, lsl #32
    // 0x733428: LoadField: r4 = r3->field_b
    //     0x733428: ldur            w4, [x3, #0xb]
    // 0x73342c: r3 = LoadInt32Instr(r1)
    //     0x73342c: sbfx            x3, x1, #1, #0x1f
    // 0x733430: stur            x3, [fp, #-0x18]
    // 0x733434: r1 = LoadInt32Instr(r4)
    //     0x733434: sbfx            x1, x4, #1, #0x1f
    // 0x733438: cmp             x3, x1
    // 0x73343c: b.ne            #0x733448
    // 0x733440: mov             x1, x0
    // 0x733444: r0 = _growToNextCapacity()
    //     0x733444: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x733448: ldur            x4, [fp, #-8]
    // 0x73344c: ldur            x2, [fp, #-0x10]
    // 0x733450: ldur            x3, [fp, #-0x18]
    // 0x733454: add             x0, x3, #1
    // 0x733458: lsl             x1, x0, #1
    // 0x73345c: StoreField: r2->field_b = r1
    //     0x73345c: stur            w1, [x2, #0xb]
    // 0x733460: LoadField: r1 = r2->field_f
    //     0x733460: ldur            w1, [x2, #0xf]
    // 0x733464: DecompressPointer r1
    //     0x733464: add             x1, x1, HEAP, lsl #32
    // 0x733468: ldur            x0, [fp, #-0x20]
    // 0x73346c: ArrayStore: r1[r3] = r0  ; List_4
    //     0x73346c: add             x25, x1, x3, lsl #2
    //     0x733470: add             x25, x25, #0xf
    //     0x733474: str             w0, [x25]
    //     0x733478: tbz             w0, #0, #0x733494
    //     0x73347c: ldurb           w16, [x1, #-1]
    //     0x733480: ldurb           w17, [x0, #-1]
    //     0x733484: and             x16, x17, x16, lsr #2
    //     0x733488: tst             x16, HEAP, lsr #32
    //     0x73348c: b.eq            #0x733494
    //     0x733490: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x733494: mov             x1, x4
    // 0x733498: r0 = _buildManagerInfoCard()
    //     0x733498: bl              #0x733c7c  ; [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_buildManagerInfoCard
    // 0x73349c: mov             x3, x0
    // 0x7334a0: ldur            x0, [fp, #-8]
    // 0x7334a4: stur            x3, [fp, #-0x28]
    // 0x7334a8: LoadField: r1 = r0->field_27
    //     0x7334a8: ldur            w1, [x0, #0x27]
    // 0x7334ac: DecompressPointer r1
    //     0x7334ac: add             x1, x1, HEAP, lsl #32
    // 0x7334b0: cmp             w1, NULL
    // 0x7334b4: b.ne            #0x7334c0
    // 0x7334b8: r1 = Null
    //     0x7334b8: mov             x1, NULL
    // 0x7334bc: b               #0x7334cc
    // 0x7334c0: LoadField: r2 = r1->field_13
    //     0x7334c0: ldur            w2, [x1, #0x13]
    // 0x7334c4: DecompressPointer r2
    //     0x7334c4: add             x2, x2, HEAP, lsl #32
    // 0x7334c8: mov             x1, x2
    // 0x7334cc: cmp             w1, NULL
    // 0x7334d0: b.ne            #0x7334e0
    // 0x7334d4: r5 = "Telefon bilgisi yok"
    //     0x7334d4: add             x5, PP, #0x15, lsl #12  ; [pp+0x15460] "Telefon bilgisi yok"
    //     0x7334d8: ldr             x5, [x5, #0x460]
    // 0x7334dc: b               #0x7334e4
    // 0x7334e0: mov             x5, x1
    // 0x7334e4: ldur            x4, [fp, #-0x10]
    // 0x7334e8: mov             x2, x0
    // 0x7334ec: stur            x5, [fp, #-0x20]
    // 0x7334f0: r1 = Function '_makePhoneCall@937031693':.
    //     0x7334f0: add             x1, PP, #0x15, lsl #12  ; [pp+0x15468] AnonymousClosure: (0x735cdc), in [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_makePhoneCall (0x735d14)
    //     0x7334f4: ldr             x1, [x1, #0x468]
    // 0x7334f8: r0 = AllocateClosure()
    //     0x7334f8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7334fc: ldur            x1, [fp, #-8]
    // 0x733500: mov             x2, x0
    // 0x733504: ldur            x3, [fp, #-0x20]
    // 0x733508: r0 = _buildContactItem()
    //     0x733508: bl              #0x73372c  ; [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_buildContactItem
    // 0x73350c: r1 = Null
    //     0x73350c: mov             x1, NULL
    // 0x733510: r2 = 14
    //     0x733510: mov             x2, #0xe
    // 0x733514: stur            x0, [fp, #-8]
    // 0x733518: r0 = AllocateArray()
    //     0x733518: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73351c: stur            x0, [fp, #-0x20]
    // 0x733520: r16 = Instance_SizedBox
    //     0x733520: add             x16, PP, #0x15, lsl #12  ; [pp+0x15470] Obj!SizedBox@a1fb71
    //     0x733524: ldr             x16, [x16, #0x470]
    // 0x733528: StoreField: r0->field_f = r16
    //     0x733528: stur            w16, [x0, #0xf]
    // 0x73352c: ldur            x1, [fp, #-0x28]
    // 0x733530: StoreField: r0->field_13 = r1
    //     0x733530: stur            w1, [x0, #0x13]
    // 0x733534: r16 = Instance_SizedBox
    //     0x733534: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x733538: ldr             x16, [x16, #0x310]
    // 0x73353c: ArrayStore: r0[0] = r16  ; List_4
    //     0x73353c: stur            w16, [x0, #0x17]
    // 0x733540: r16 = Instance_Text
    //     0x733540: add             x16, PP, #0x15, lsl #12  ; [pp+0x15478] Obj!Text@a1ccb1
    //     0x733544: ldr             x16, [x16, #0x478]
    // 0x733548: StoreField: r0->field_1b = r16
    //     0x733548: stur            w16, [x0, #0x1b]
    // 0x73354c: r16 = Instance_SizedBox
    //     0x73354c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x733550: ldr             x16, [x16, #0x220]
    // 0x733554: StoreField: r0->field_1f = r16
    //     0x733554: stur            w16, [x0, #0x1f]
    // 0x733558: ldur            x1, [fp, #-8]
    // 0x73355c: StoreField: r0->field_23 = r1
    //     0x73355c: stur            w1, [x0, #0x23]
    // 0x733560: r16 = Instance_SizedBox
    //     0x733560: add             x16, PP, #0x15, lsl #12  ; [pp+0x15470] Obj!SizedBox@a1fb71
    //     0x733564: ldr             x16, [x16, #0x470]
    // 0x733568: StoreField: r0->field_27 = r16
    //     0x733568: stur            w16, [x0, #0x27]
    // 0x73356c: r1 = <Widget>
    //     0x73356c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x733570: r0 = AllocateGrowableArray()
    //     0x733570: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x733574: mov             x1, x0
    // 0x733578: ldur            x0, [fp, #-0x20]
    // 0x73357c: stur            x1, [fp, #-8]
    // 0x733580: StoreField: r1->field_f = r0
    //     0x733580: stur            w0, [x1, #0xf]
    // 0x733584: r0 = 14
    //     0x733584: mov             x0, #0xe
    // 0x733588: StoreField: r1->field_b = r0
    //     0x733588: stur            w0, [x1, #0xb]
    // 0x73358c: r0 = Column()
    //     0x73358c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x733590: mov             x1, x0
    // 0x733594: r0 = Instance_Axis
    //     0x733594: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x733598: stur            x1, [fp, #-0x20]
    // 0x73359c: StoreField: r1->field_f = r0
    //     0x73359c: stur            w0, [x1, #0xf]
    // 0x7335a0: r2 = Instance_MainAxisAlignment
    //     0x7335a0: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7335a4: ldr             x2, [x2, #0x230]
    // 0x7335a8: StoreField: r1->field_13 = r2
    //     0x7335a8: stur            w2, [x1, #0x13]
    // 0x7335ac: r3 = Instance_MainAxisSize
    //     0x7335ac: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7335b0: ldr             x3, [x3, #0x330]
    // 0x7335b4: ArrayStore: r1[0] = r3  ; List_4
    //     0x7335b4: stur            w3, [x1, #0x17]
    // 0x7335b8: r4 = Instance_CrossAxisAlignment
    //     0x7335b8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7335bc: ldr             x4, [x4, #0x238]
    // 0x7335c0: StoreField: r1->field_1b = r4
    //     0x7335c0: stur            w4, [x1, #0x1b]
    // 0x7335c4: r4 = Instance_VerticalDirection
    //     0x7335c4: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7335c8: ldr             x4, [x4, #0x340]
    // 0x7335cc: StoreField: r1->field_23 = r4
    //     0x7335cc: stur            w4, [x1, #0x23]
    // 0x7335d0: r5 = Instance_Clip
    //     0x7335d0: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7335d4: ldr             x5, [x5, #0x348]
    // 0x7335d8: StoreField: r1->field_2b = r5
    //     0x7335d8: stur            w5, [x1, #0x2b]
    // 0x7335dc: StoreField: r1->field_2f = rZR
    //     0x7335dc: stur            xzr, [x1, #0x2f]
    // 0x7335e0: ldur            x6, [fp, #-8]
    // 0x7335e4: StoreField: r1->field_b = r6
    //     0x7335e4: stur            w6, [x1, #0xb]
    // 0x7335e8: r0 = Padding()
    //     0x7335e8: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x7335ec: mov             x2, x0
    // 0x7335f0: r0 = Instance_EdgeInsets
    //     0x7335f0: add             x0, PP, #0xc, lsl #12  ; [pp+0xce88] Obj!EdgeInsets@a0be11
    //     0x7335f4: ldr             x0, [x0, #0xe88]
    // 0x7335f8: stur            x2, [fp, #-8]
    // 0x7335fc: StoreField: r2->field_f = r0
    //     0x7335fc: stur            w0, [x2, #0xf]
    // 0x733600: ldur            x0, [fp, #-0x20]
    // 0x733604: StoreField: r2->field_b = r0
    //     0x733604: stur            w0, [x2, #0xb]
    // 0x733608: ldur            x0, [fp, #-0x10]
    // 0x73360c: LoadField: r1 = r0->field_b
    //     0x73360c: ldur            w1, [x0, #0xb]
    // 0x733610: LoadField: r3 = r0->field_f
    //     0x733610: ldur            w3, [x0, #0xf]
    // 0x733614: DecompressPointer r3
    //     0x733614: add             x3, x3, HEAP, lsl #32
    // 0x733618: LoadField: r4 = r3->field_b
    //     0x733618: ldur            w4, [x3, #0xb]
    // 0x73361c: r3 = LoadInt32Instr(r1)
    //     0x73361c: sbfx            x3, x1, #1, #0x1f
    // 0x733620: stur            x3, [fp, #-0x18]
    // 0x733624: r1 = LoadInt32Instr(r4)
    //     0x733624: sbfx            x1, x4, #1, #0x1f
    // 0x733628: cmp             x3, x1
    // 0x73362c: b.ne            #0x733638
    // 0x733630: mov             x1, x0
    // 0x733634: r0 = _growToNextCapacity()
    //     0x733634: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x733638: ldur            x2, [fp, #-0x10]
    // 0x73363c: ldur            x3, [fp, #-0x18]
    // 0x733640: add             x0, x3, #1
    // 0x733644: lsl             x1, x0, #1
    // 0x733648: StoreField: r2->field_b = r1
    //     0x733648: stur            w1, [x2, #0xb]
    // 0x73364c: LoadField: r1 = r2->field_f
    //     0x73364c: ldur            w1, [x2, #0xf]
    // 0x733650: DecompressPointer r1
    //     0x733650: add             x1, x1, HEAP, lsl #32
    // 0x733654: ldur            x0, [fp, #-8]
    // 0x733658: ArrayStore: r1[r3] = r0  ; List_4
    //     0x733658: add             x25, x1, x3, lsl #2
    //     0x73365c: add             x25, x25, #0xf
    //     0x733660: str             w0, [x25]
    //     0x733664: tbz             w0, #0, #0x733680
    //     0x733668: ldurb           w16, [x1, #-1]
    //     0x73366c: ldurb           w17, [x0, #-1]
    //     0x733670: and             x16, x17, x16, lsr #2
    //     0x733674: tst             x16, HEAP, lsr #32
    //     0x733678: b.eq            #0x733680
    //     0x73367c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x733680: r0 = Column()
    //     0x733680: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x733684: mov             x1, x0
    // 0x733688: r0 = Instance_Axis
    //     0x733688: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x73368c: stur            x1, [fp, #-8]
    // 0x733690: StoreField: r1->field_f = r0
    //     0x733690: stur            w0, [x1, #0xf]
    // 0x733694: r2 = Instance_MainAxisAlignment
    //     0x733694: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x733698: ldr             x2, [x2, #0x230]
    // 0x73369c: StoreField: r1->field_13 = r2
    //     0x73369c: stur            w2, [x1, #0x13]
    // 0x7336a0: r2 = Instance_MainAxisSize
    //     0x7336a0: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7336a4: ldr             x2, [x2, #0x330]
    // 0x7336a8: ArrayStore: r1[0] = r2  ; List_4
    //     0x7336a8: stur            w2, [x1, #0x17]
    // 0x7336ac: r2 = Instance_CrossAxisAlignment
    //     0x7336ac: add             x2, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7336b0: ldr             x2, [x2, #0x338]
    // 0x7336b4: StoreField: r1->field_1b = r2
    //     0x7336b4: stur            w2, [x1, #0x1b]
    // 0x7336b8: r2 = Instance_VerticalDirection
    //     0x7336b8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7336bc: ldr             x2, [x2, #0x340]
    // 0x7336c0: StoreField: r1->field_23 = r2
    //     0x7336c0: stur            w2, [x1, #0x23]
    // 0x7336c4: r2 = Instance_Clip
    //     0x7336c4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7336c8: ldr             x2, [x2, #0x348]
    // 0x7336cc: StoreField: r1->field_2b = r2
    //     0x7336cc: stur            w2, [x1, #0x2b]
    // 0x7336d0: StoreField: r1->field_2f = rZR
    //     0x7336d0: stur            xzr, [x1, #0x2f]
    // 0x7336d4: ldur            x2, [fp, #-0x10]
    // 0x7336d8: StoreField: r1->field_b = r2
    //     0x7336d8: stur            w2, [x1, #0xb]
    // 0x7336dc: r0 = SingleChildScrollView()
    //     0x7336dc: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x7336e0: r1 = Instance_Axis
    //     0x7336e0: ldr             x1, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7336e4: StoreField: r0->field_b = r1
    //     0x7336e4: stur            w1, [x0, #0xb]
    // 0x7336e8: r1 = false
    //     0x7336e8: add             x1, NULL, #0x30  ; false
    // 0x7336ec: StoreField: r0->field_f = r1
    //     0x7336ec: stur            w1, [x0, #0xf]
    // 0x7336f0: ldur            x1, [fp, #-8]
    // 0x7336f4: StoreField: r0->field_23 = r1
    //     0x7336f4: stur            w1, [x0, #0x23]
    // 0x7336f8: r1 = Instance_DragStartBehavior
    //     0x7336f8: ldr             x1, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7336fc: StoreField: r0->field_27 = r1
    //     0x7336fc: stur            w1, [x0, #0x27]
    // 0x733700: r1 = Instance_Clip
    //     0x733700: add             x1, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x733704: ldr             x1, [x1, #0x2d8]
    // 0x733708: StoreField: r0->field_2b = r1
    //     0x733708: stur            w1, [x0, #0x2b]
    // 0x73370c: r1 = Instance_HitTestBehavior
    //     0x73370c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x733710: ldr             x1, [x1, #0xe20]
    // 0x733714: StoreField: r0->field_2f = r1
    //     0x733714: stur            w1, [x0, #0x2f]
    // 0x733718: LeaveFrame
    //     0x733718: mov             SP, fp
    //     0x73371c: ldp             fp, lr, [SP], #0x10
    // 0x733720: ret
    //     0x733720: ret             
    // 0x733724: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x733724: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x733728: b               #0x733358
  }
  _ _buildContactItem(/* No info */) {
    // ** addr: 0x73372c, size: 0x550
    // 0x73372c: EnterFrame
    //     0x73372c: stp             fp, lr, [SP, #-0x10]!
    //     0x733730: mov             fp, SP
    // 0x733734: AllocStack(0x58)
    //     0x733734: sub             SP, SP, #0x58
    // 0x733738: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */, dynamic _ /* r3 => r3, fp-0x10 */)
    //     0x733738: stur            x2, [fp, #-8]
    //     0x73373c: stur            x3, [fp, #-0x10]
    // 0x733740: CheckStackOverflow
    //     0x733740: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x733744: cmp             SP, x16
    //     0x733748: b.ls            #0x733c60
    // 0x73374c: r0 = Radius()
    //     0x73374c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x733750: d0 = 10.000000
    //     0x733750: fmov            d0, #10.00000000
    // 0x733754: stur            x0, [fp, #-0x18]
    // 0x733758: StoreField: r0->field_7 = d0
    //     0x733758: stur            d0, [x0, #7]
    // 0x73375c: StoreField: r0->field_f = d0
    //     0x73375c: stur            d0, [x0, #0xf]
    // 0x733760: r0 = BorderRadius()
    //     0x733760: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x733764: mov             x3, x0
    // 0x733768: ldur            x0, [fp, #-0x18]
    // 0x73376c: stur            x3, [fp, #-0x20]
    // 0x733770: StoreField: r3->field_7 = r0
    //     0x733770: stur            w0, [x3, #7]
    // 0x733774: StoreField: r3->field_b = r0
    //     0x733774: stur            w0, [x3, #0xb]
    // 0x733778: StoreField: r3->field_f = r0
    //     0x733778: stur            w0, [x3, #0xf]
    // 0x73377c: StoreField: r3->field_13 = r0
    //     0x73377c: stur            w0, [x3, #0x13]
    // 0x733780: r1 = _ConstMap len:12
    //     0x733780: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x733784: r2 = 100
    //     0x733784: mov             x2, #0x64
    // 0x733788: r0 = []()
    //     0x733788: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x73378c: stur            x0, [fp, #-0x18]
    // 0x733790: cmp             w0, NULL
    // 0x733794: b.eq            #0x733c68
    // 0x733798: r0 = Radius()
    //     0x733798: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x73379c: d0 = 10.000000
    //     0x73379c: fmov            d0, #10.00000000
    // 0x7337a0: stur            x0, [fp, #-0x28]
    // 0x7337a4: StoreField: r0->field_7 = d0
    //     0x7337a4: stur            d0, [x0, #7]
    // 0x7337a8: StoreField: r0->field_f = d0
    //     0x7337a8: stur            d0, [x0, #0xf]
    // 0x7337ac: r0 = BorderRadius()
    //     0x7337ac: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7337b0: mov             x3, x0
    // 0x7337b4: ldur            x0, [fp, #-0x28]
    // 0x7337b8: stur            x3, [fp, #-0x30]
    // 0x7337bc: StoreField: r3->field_7 = r0
    //     0x7337bc: stur            w0, [x3, #7]
    // 0x7337c0: StoreField: r3->field_b = r0
    //     0x7337c0: stur            w0, [x3, #0xb]
    // 0x7337c4: StoreField: r3->field_f = r0
    //     0x7337c4: stur            w0, [x3, #0xf]
    // 0x7337c8: StoreField: r3->field_13 = r0
    //     0x7337c8: stur            w0, [x3, #0x13]
    // 0x7337cc: r1 = _ConstMap len:12
    //     0x7337cc: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7337d0: r2 = 400
    //     0x7337d0: mov             x2, #0x190
    // 0x7337d4: r0 = []()
    //     0x7337d4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7337d8: cmp             w0, NULL
    // 0x7337dc: b.eq            #0x733c6c
    // 0x7337e0: r16 = 1.000000
    //     0x7337e0: ldr             x16, [PP, #0x4ae8]  ; [pp+0x4ae8] 1
    // 0x7337e4: stp             x16, x0, [SP]
    // 0x7337e8: r1 = Null
    //     0x7337e8: mov             x1, NULL
    // 0x7337ec: r4 = const [0, 0x3, 0x2, 0x1, color, 0x1, width, 0x2, null]
    //     0x7337ec: add             x4, PP, #0x12, lsl #12  ; [pp+0x12208] List(9) [0, 0x3, 0x2, 0x1, "color", 0x1, "width", 0x2, Null]
    //     0x7337f0: ldr             x4, [x4, #0x208]
    // 0x7337f4: r0 = Border.all()
    //     0x7337f4: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x7337f8: stur            x0, [fp, #-0x28]
    // 0x7337fc: r0 = BoxDecoration()
    //     0x7337fc: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x733800: mov             x3, x0
    // 0x733804: ldur            x0, [fp, #-0x18]
    // 0x733808: stur            x3, [fp, #-0x38]
    // 0x73380c: StoreField: r3->field_7 = r0
    //     0x73380c: stur            w0, [x3, #7]
    // 0x733810: ldur            x0, [fp, #-0x28]
    // 0x733814: StoreField: r3->field_f = r0
    //     0x733814: stur            w0, [x3, #0xf]
    // 0x733818: ldur            x0, [fp, #-0x30]
    // 0x73381c: StoreField: r3->field_13 = r0
    //     0x73381c: stur            w0, [x3, #0x13]
    // 0x733820: r0 = Instance_BoxShape
    //     0x733820: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x733824: ldr             x0, [x0, #0x1c8]
    // 0x733828: StoreField: r3->field_23 = r0
    //     0x733828: stur            w0, [x3, #0x23]
    // 0x73382c: r1 = _ConstMap len:10
    //     0x73382c: add             x1, PP, #0x14, lsl #12  ; [pp+0x14918] Map<int, Color>(10)
    //     0x733830: ldr             x1, [x1, #0x918]
    // 0x733834: r2 = 200
    //     0x733834: mov             x2, #0xc8
    // 0x733838: r0 = []()
    //     0x733838: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x73383c: stur            x0, [fp, #-0x18]
    // 0x733840: cmp             w0, NULL
    // 0x733844: b.eq            #0x733c70
    // 0x733848: r0 = Radius()
    //     0x733848: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x73384c: d0 = 8.000000
    //     0x73384c: fmov            d0, #8.00000000
    // 0x733850: stur            x0, [fp, #-0x28]
    // 0x733854: StoreField: r0->field_7 = d0
    //     0x733854: stur            d0, [x0, #7]
    // 0x733858: StoreField: r0->field_f = d0
    //     0x733858: stur            d0, [x0, #0xf]
    // 0x73385c: r0 = BorderRadius()
    //     0x73385c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x733860: mov             x1, x0
    // 0x733864: ldur            x0, [fp, #-0x28]
    // 0x733868: stur            x1, [fp, #-0x30]
    // 0x73386c: StoreField: r1->field_7 = r0
    //     0x73386c: stur            w0, [x1, #7]
    // 0x733870: StoreField: r1->field_b = r0
    //     0x733870: stur            w0, [x1, #0xb]
    // 0x733874: StoreField: r1->field_f = r0
    //     0x733874: stur            w0, [x1, #0xf]
    // 0x733878: StoreField: r1->field_13 = r0
    //     0x733878: stur            w0, [x1, #0x13]
    // 0x73387c: r0 = BoxDecoration()
    //     0x73387c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x733880: mov             x3, x0
    // 0x733884: ldur            x0, [fp, #-0x18]
    // 0x733888: stur            x3, [fp, #-0x28]
    // 0x73388c: StoreField: r3->field_7 = r0
    //     0x73388c: stur            w0, [x3, #7]
    // 0x733890: ldur            x0, [fp, #-0x30]
    // 0x733894: StoreField: r3->field_13 = r0
    //     0x733894: stur            w0, [x3, #0x13]
    // 0x733898: r0 = Instance_BoxShape
    //     0x733898: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x73389c: ldr             x0, [x0, #0x1c8]
    // 0x7338a0: StoreField: r3->field_23 = r0
    //     0x7338a0: stur            w0, [x3, #0x23]
    // 0x7338a4: r1 = _ConstMap len:10
    //     0x7338a4: add             x1, PP, #0x14, lsl #12  ; [pp+0x14918] Map<int, Color>(10)
    //     0x7338a8: ldr             x1, [x1, #0x918]
    // 0x7338ac: r2 = 1400
    //     0x7338ac: mov             x2, #0x578
    // 0x7338b0: r0 = []()
    //     0x7338b0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7338b4: stur            x0, [fp, #-0x18]
    // 0x7338b8: cmp             w0, NULL
    // 0x7338bc: b.eq            #0x733c74
    // 0x7338c0: r0 = Icon()
    //     0x7338c0: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7338c4: mov             x1, x0
    // 0x7338c8: r0 = Instance_IconData
    //     0x7338c8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12268] Obj!IconData@a09ea1
    //     0x7338cc: ldr             x0, [x0, #0x268]
    // 0x7338d0: stur            x1, [fp, #-0x30]
    // 0x7338d4: StoreField: r1->field_b = r0
    //     0x7338d4: stur            w0, [x1, #0xb]
    // 0x7338d8: r0 = 20.000000
    //     0x7338d8: add             x0, PP, #0xc, lsl #12  ; [pp+0xce48] 20
    //     0x7338dc: ldr             x0, [x0, #0xe48]
    // 0x7338e0: StoreField: r1->field_f = r0
    //     0x7338e0: stur            w0, [x1, #0xf]
    // 0x7338e4: ldur            x0, [fp, #-0x18]
    // 0x7338e8: StoreField: r1->field_23 = r0
    //     0x7338e8: stur            w0, [x1, #0x23]
    // 0x7338ec: r0 = Container()
    //     0x7338ec: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7338f0: stur            x0, [fp, #-0x18]
    // 0x7338f4: r16 = Instance_EdgeInsets
    //     0x7338f4: add             x16, PP, #0x15, lsl #12  ; [pp+0x15480] Obj!EdgeInsets@a0c321
    //     0x7338f8: ldr             x16, [x16, #0x480]
    // 0x7338fc: ldur            lr, [fp, #-0x28]
    // 0x733900: stp             lr, x16, [SP, #8]
    // 0x733904: ldur            x16, [fp, #-0x30]
    // 0x733908: str             x16, [SP]
    // 0x73390c: mov             x1, x0
    // 0x733910: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x733910: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x733914: ldr             x4, [x4, #0x1e8]
    // 0x733918: r0 = Container()
    //     0x733918: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x73391c: r1 = _ConstMap len:12
    //     0x73391c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x733920: r2 = 1200
    //     0x733920: mov             x2, #0x4b0
    // 0x733924: r0 = []()
    //     0x733924: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x733928: stur            x0, [fp, #-0x28]
    // 0x73392c: cmp             w0, NULL
    // 0x733930: b.eq            #0x733c78
    // 0x733934: r0 = TextStyle()
    //     0x733934: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x733938: mov             x1, x0
    // 0x73393c: r0 = true
    //     0x73393c: add             x0, NULL, #0x20  ; true
    // 0x733940: stur            x1, [fp, #-0x30]
    // 0x733944: StoreField: r1->field_7 = r0
    //     0x733944: stur            w0, [x1, #7]
    // 0x733948: ldur            x2, [fp, #-0x28]
    // 0x73394c: StoreField: r1->field_b = r2
    //     0x73394c: stur            w2, [x1, #0xb]
    // 0x733950: r2 = 12.000000
    //     0x733950: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x733954: ldr             x2, [x2, #0xae0]
    // 0x733958: StoreField: r1->field_1f = r2
    //     0x733958: stur            w2, [x1, #0x1f]
    // 0x73395c: r0 = Text()
    //     0x73395c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x733960: mov             x1, x0
    // 0x733964: r0 = "Telefon"
    //     0x733964: add             x0, PP, #0x15, lsl #12  ; [pp+0x15488] "Telefon"
    //     0x733968: ldr             x0, [x0, #0x488]
    // 0x73396c: stur            x1, [fp, #-0x28]
    // 0x733970: StoreField: r1->field_b = r0
    //     0x733970: stur            w0, [x1, #0xb]
    // 0x733974: ldur            x0, [fp, #-0x30]
    // 0x733978: StoreField: r1->field_13 = r0
    //     0x733978: stur            w0, [x1, #0x13]
    // 0x73397c: r0 = Text()
    //     0x73397c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x733980: mov             x3, x0
    // 0x733984: ldur            x0, [fp, #-0x10]
    // 0x733988: stur            x3, [fp, #-0x30]
    // 0x73398c: StoreField: r3->field_b = r0
    //     0x73398c: stur            w0, [x3, #0xb]
    // 0x733990: r0 = Instance_TextStyle
    //     0x733990: add             x0, PP, #0x12, lsl #12  ; [pp+0x12330] Obj!TextStyle@a181d1
    //     0x733994: ldr             x0, [x0, #0x330]
    // 0x733998: StoreField: r3->field_13 = r0
    //     0x733998: stur            w0, [x3, #0x13]
    // 0x73399c: r1 = Null
    //     0x73399c: mov             x1, NULL
    // 0x7339a0: r2 = 6
    //     0x7339a0: mov             x2, #6
    // 0x7339a4: r0 = AllocateArray()
    //     0x7339a4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7339a8: mov             x2, x0
    // 0x7339ac: ldur            x0, [fp, #-0x28]
    // 0x7339b0: stur            x2, [fp, #-0x10]
    // 0x7339b4: StoreField: r2->field_f = r0
    //     0x7339b4: stur            w0, [x2, #0xf]
    // 0x7339b8: r16 = Instance_SizedBox
    //     0x7339b8: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x7339bc: ldr             x16, [x16, #0x338]
    // 0x7339c0: StoreField: r2->field_13 = r16
    //     0x7339c0: stur            w16, [x2, #0x13]
    // 0x7339c4: ldur            x0, [fp, #-0x30]
    // 0x7339c8: ArrayStore: r2[0] = r0  ; List_4
    //     0x7339c8: stur            w0, [x2, #0x17]
    // 0x7339cc: r1 = <Widget>
    //     0x7339cc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7339d0: r0 = AllocateGrowableArray()
    //     0x7339d0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7339d4: mov             x1, x0
    // 0x7339d8: ldur            x0, [fp, #-0x10]
    // 0x7339dc: stur            x1, [fp, #-0x28]
    // 0x7339e0: StoreField: r1->field_f = r0
    //     0x7339e0: stur            w0, [x1, #0xf]
    // 0x7339e4: r2 = 6
    //     0x7339e4: mov             x2, #6
    // 0x7339e8: StoreField: r1->field_b = r2
    //     0x7339e8: stur            w2, [x1, #0xb]
    // 0x7339ec: r0 = Column()
    //     0x7339ec: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7339f0: mov             x2, x0
    // 0x7339f4: r0 = Instance_Axis
    //     0x7339f4: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7339f8: stur            x2, [fp, #-0x10]
    // 0x7339fc: StoreField: r2->field_f = r0
    //     0x7339fc: stur            w0, [x2, #0xf]
    // 0x733a00: r0 = Instance_MainAxisAlignment
    //     0x733a00: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x733a04: ldr             x0, [x0, #0x230]
    // 0x733a08: StoreField: r2->field_13 = r0
    //     0x733a08: stur            w0, [x2, #0x13]
    // 0x733a0c: r3 = Instance_MainAxisSize
    //     0x733a0c: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x733a10: ldr             x3, [x3, #0x330]
    // 0x733a14: ArrayStore: r2[0] = r3  ; List_4
    //     0x733a14: stur            w3, [x2, #0x17]
    // 0x733a18: r1 = Instance_CrossAxisAlignment
    //     0x733a18: add             x1, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x733a1c: ldr             x1, [x1, #0x238]
    // 0x733a20: StoreField: r2->field_1b = r1
    //     0x733a20: stur            w1, [x2, #0x1b]
    // 0x733a24: r4 = Instance_VerticalDirection
    //     0x733a24: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x733a28: ldr             x4, [x4, #0x340]
    // 0x733a2c: StoreField: r2->field_23 = r4
    //     0x733a2c: stur            w4, [x2, #0x23]
    // 0x733a30: r5 = Instance_Clip
    //     0x733a30: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x733a34: ldr             x5, [x5, #0x348]
    // 0x733a38: StoreField: r2->field_2b = r5
    //     0x733a38: stur            w5, [x2, #0x2b]
    // 0x733a3c: StoreField: r2->field_2f = rZR
    //     0x733a3c: stur            xzr, [x2, #0x2f]
    // 0x733a40: ldur            x1, [fp, #-0x28]
    // 0x733a44: StoreField: r2->field_b = r1
    //     0x733a44: stur            w1, [x2, #0xb]
    // 0x733a48: r1 = <FlexParentData>
    //     0x733a48: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x733a4c: ldr             x1, [x1, #0x340]
    // 0x733a50: r0 = Expanded()
    //     0x733a50: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x733a54: mov             x3, x0
    // 0x733a58: r0 = 1
    //     0x733a58: mov             x0, #1
    // 0x733a5c: stur            x3, [fp, #-0x28]
    // 0x733a60: StoreField: r3->field_13 = r0
    //     0x733a60: stur            x0, [x3, #0x13]
    // 0x733a64: r0 = Instance_FlexFit
    //     0x733a64: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x733a68: ldr             x0, [x0, #0x348]
    // 0x733a6c: StoreField: r3->field_1b = r0
    //     0x733a6c: stur            w0, [x3, #0x1b]
    // 0x733a70: ldur            x0, [fp, #-0x10]
    // 0x733a74: StoreField: r3->field_b = r0
    //     0x733a74: stur            w0, [x3, #0xb]
    // 0x733a78: r1 = Null
    //     0x733a78: mov             x1, NULL
    // 0x733a7c: r2 = 6
    //     0x733a7c: mov             x2, #6
    // 0x733a80: r0 = AllocateArray()
    //     0x733a80: bl              #0x9280a0  ; AllocateArrayStub
    // 0x733a84: mov             x2, x0
    // 0x733a88: ldur            x0, [fp, #-0x18]
    // 0x733a8c: stur            x2, [fp, #-0x10]
    // 0x733a90: StoreField: r2->field_f = r0
    //     0x733a90: stur            w0, [x2, #0xf]
    // 0x733a94: r16 = Instance_SizedBox
    //     0x733a94: add             x16, PP, #0x15, lsl #12  ; [pp+0x15490] Obj!SizedBox@a1fd31
    //     0x733a98: ldr             x16, [x16, #0x490]
    // 0x733a9c: StoreField: r2->field_13 = r16
    //     0x733a9c: stur            w16, [x2, #0x13]
    // 0x733aa0: ldur            x0, [fp, #-0x28]
    // 0x733aa4: ArrayStore: r2[0] = r0  ; List_4
    //     0x733aa4: stur            w0, [x2, #0x17]
    // 0x733aa8: r1 = <Widget>
    //     0x733aa8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x733aac: r0 = AllocateGrowableArray()
    //     0x733aac: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x733ab0: mov             x2, x0
    // 0x733ab4: ldur            x0, [fp, #-0x10]
    // 0x733ab8: stur            x2, [fp, #-0x18]
    // 0x733abc: StoreField: r2->field_f = r0
    //     0x733abc: stur            w0, [x2, #0xf]
    // 0x733ac0: r0 = 6
    //     0x733ac0: mov             x0, #6
    // 0x733ac4: StoreField: r2->field_b = r0
    //     0x733ac4: stur            w0, [x2, #0xb]
    // 0x733ac8: r1 = Instance_MaterialColor
    //     0x733ac8: add             x1, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x733acc: ldr             x1, [x1, #0xbc8]
    // 0x733ad0: r0 = shade400()
    //     0x733ad0: bl              #0x67eab4  ; [package:flutter/src/material/colors.dart] MaterialColor::shade400
    // 0x733ad4: stur            x0, [fp, #-0x10]
    // 0x733ad8: r0 = Icon()
    //     0x733ad8: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x733adc: mov             x2, x0
    // 0x733ae0: r0 = Instance_IconData
    //     0x733ae0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12350] Obj!IconData@a0a421
    //     0x733ae4: ldr             x0, [x0, #0x350]
    // 0x733ae8: stur            x2, [fp, #-0x28]
    // 0x733aec: StoreField: r2->field_b = r0
    //     0x733aec: stur            w0, [x2, #0xb]
    // 0x733af0: r0 = 16.000000
    //     0x733af0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x733af4: ldr             x0, [x0, #0x358]
    // 0x733af8: StoreField: r2->field_f = r0
    //     0x733af8: stur            w0, [x2, #0xf]
    // 0x733afc: ldur            x0, [fp, #-0x10]
    // 0x733b00: StoreField: r2->field_23 = r0
    //     0x733b00: stur            w0, [x2, #0x23]
    // 0x733b04: ldur            x0, [fp, #-0x18]
    // 0x733b08: LoadField: r1 = r0->field_b
    //     0x733b08: ldur            w1, [x0, #0xb]
    // 0x733b0c: LoadField: r3 = r0->field_f
    //     0x733b0c: ldur            w3, [x0, #0xf]
    // 0x733b10: DecompressPointer r3
    //     0x733b10: add             x3, x3, HEAP, lsl #32
    // 0x733b14: LoadField: r4 = r3->field_b
    //     0x733b14: ldur            w4, [x3, #0xb]
    // 0x733b18: r3 = LoadInt32Instr(r1)
    //     0x733b18: sbfx            x3, x1, #1, #0x1f
    // 0x733b1c: stur            x3, [fp, #-0x40]
    // 0x733b20: r1 = LoadInt32Instr(r4)
    //     0x733b20: sbfx            x1, x4, #1, #0x1f
    // 0x733b24: cmp             x3, x1
    // 0x733b28: b.ne            #0x733b34
    // 0x733b2c: mov             x1, x0
    // 0x733b30: r0 = _growToNextCapacity()
    //     0x733b30: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x733b34: ldur            x5, [fp, #-8]
    // 0x733b38: ldur            x4, [fp, #-0x20]
    // 0x733b3c: ldur            x2, [fp, #-0x18]
    // 0x733b40: ldur            x3, [fp, #-0x40]
    // 0x733b44: add             x0, x3, #1
    // 0x733b48: lsl             x1, x0, #1
    // 0x733b4c: StoreField: r2->field_b = r1
    //     0x733b4c: stur            w1, [x2, #0xb]
    // 0x733b50: LoadField: r1 = r2->field_f
    //     0x733b50: ldur            w1, [x2, #0xf]
    // 0x733b54: DecompressPointer r1
    //     0x733b54: add             x1, x1, HEAP, lsl #32
    // 0x733b58: ldur            x0, [fp, #-0x28]
    // 0x733b5c: ArrayStore: r1[r3] = r0  ; List_4
    //     0x733b5c: add             x25, x1, x3, lsl #2
    //     0x733b60: add             x25, x25, #0xf
    //     0x733b64: str             w0, [x25]
    //     0x733b68: tbz             w0, #0, #0x733b84
    //     0x733b6c: ldurb           w16, [x1, #-1]
    //     0x733b70: ldurb           w17, [x0, #-1]
    //     0x733b74: and             x16, x17, x16, lsr #2
    //     0x733b78: tst             x16, HEAP, lsr #32
    //     0x733b7c: b.eq            #0x733b84
    //     0x733b80: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x733b84: r0 = Row()
    //     0x733b84: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x733b88: mov             x1, x0
    // 0x733b8c: r0 = Instance_Axis
    //     0x733b8c: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x733b90: stur            x1, [fp, #-0x10]
    // 0x733b94: StoreField: r1->field_f = r0
    //     0x733b94: stur            w0, [x1, #0xf]
    // 0x733b98: r0 = Instance_MainAxisAlignment
    //     0x733b98: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x733b9c: ldr             x0, [x0, #0x230]
    // 0x733ba0: StoreField: r1->field_13 = r0
    //     0x733ba0: stur            w0, [x1, #0x13]
    // 0x733ba4: r0 = Instance_MainAxisSize
    //     0x733ba4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x733ba8: ldr             x0, [x0, #0x330]
    // 0x733bac: ArrayStore: r1[0] = r0  ; List_4
    //     0x733bac: stur            w0, [x1, #0x17]
    // 0x733bb0: r0 = Instance_CrossAxisAlignment
    //     0x733bb0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x733bb4: ldr             x0, [x0, #0x338]
    // 0x733bb8: StoreField: r1->field_1b = r0
    //     0x733bb8: stur            w0, [x1, #0x1b]
    // 0x733bbc: r0 = Instance_VerticalDirection
    //     0x733bbc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x733bc0: ldr             x0, [x0, #0x340]
    // 0x733bc4: StoreField: r1->field_23 = r0
    //     0x733bc4: stur            w0, [x1, #0x23]
    // 0x733bc8: r0 = Instance_Clip
    //     0x733bc8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x733bcc: ldr             x0, [x0, #0x348]
    // 0x733bd0: StoreField: r1->field_2b = r0
    //     0x733bd0: stur            w0, [x1, #0x2b]
    // 0x733bd4: StoreField: r1->field_2f = rZR
    //     0x733bd4: stur            xzr, [x1, #0x2f]
    // 0x733bd8: ldur            x0, [fp, #-0x18]
    // 0x733bdc: StoreField: r1->field_b = r0
    //     0x733bdc: stur            w0, [x1, #0xb]
    // 0x733be0: r0 = Container()
    //     0x733be0: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x733be4: stur            x0, [fp, #-0x18]
    // 0x733be8: r16 = Instance_EdgeInsets
    //     0x733be8: add             x16, PP, #0x15, lsl #12  ; [pp+0x15498] Obj!EdgeInsets@a0c6e1
    //     0x733bec: ldr             x16, [x16, #0x498]
    // 0x733bf0: ldur            lr, [fp, #-0x38]
    // 0x733bf4: stp             lr, x16, [SP, #8]
    // 0x733bf8: ldur            x16, [fp, #-0x10]
    // 0x733bfc: str             x16, [SP]
    // 0x733c00: mov             x1, x0
    // 0x733c04: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x733c04: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x733c08: ldr             x4, [x4, #0x1e8]
    // 0x733c0c: r0 = Container()
    //     0x733c0c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x733c10: r0 = InkWell()
    //     0x733c10: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x733c14: ldur            x1, [fp, #-0x18]
    // 0x733c18: StoreField: r0->field_b = r1
    //     0x733c18: stur            w1, [x0, #0xb]
    // 0x733c1c: ldur            x1, [fp, #-8]
    // 0x733c20: StoreField: r0->field_f = r1
    //     0x733c20: stur            w1, [x0, #0xf]
    // 0x733c24: r1 = true
    //     0x733c24: add             x1, NULL, #0x20  ; true
    // 0x733c28: StoreField: r0->field_47 = r1
    //     0x733c28: stur            w1, [x0, #0x47]
    // 0x733c2c: r2 = Instance_BoxShape
    //     0x733c2c: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x733c30: ldr             x2, [x2, #0x1c8]
    // 0x733c34: StoreField: r0->field_4b = r2
    //     0x733c34: stur            w2, [x0, #0x4b]
    // 0x733c38: ldur            x2, [fp, #-0x20]
    // 0x733c3c: StoreField: r0->field_53 = r2
    //     0x733c3c: stur            w2, [x0, #0x53]
    // 0x733c40: StoreField: r0->field_73 = r1
    //     0x733c40: stur            w1, [x0, #0x73]
    // 0x733c44: r2 = false
    //     0x733c44: add             x2, NULL, #0x30  ; false
    // 0x733c48: StoreField: r0->field_77 = r2
    //     0x733c48: stur            w2, [x0, #0x77]
    // 0x733c4c: StoreField: r0->field_87 = r1
    //     0x733c4c: stur            w1, [x0, #0x87]
    // 0x733c50: StoreField: r0->field_7f = r2
    //     0x733c50: stur            w2, [x0, #0x7f]
    // 0x733c54: LeaveFrame
    //     0x733c54: mov             SP, fp
    //     0x733c58: ldp             fp, lr, [SP], #0x10
    // 0x733c5c: ret
    //     0x733c5c: ret             
    // 0x733c60: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x733c60: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x733c64: b               #0x73374c
    // 0x733c68: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x733c68: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x733c6c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x733c6c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x733c70: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x733c70: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x733c74: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x733c74: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x733c78: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x733c78: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _buildManagerInfoCard(/* No info */) {
    // ** addr: 0x733c7c, size: 0x5e4
    // 0x733c7c: EnterFrame
    //     0x733c7c: stp             fp, lr, [SP, #-0x10]!
    //     0x733c80: mov             fp, SP
    // 0x733c84: AllocStack(0x60)
    //     0x733c84: sub             SP, SP, #0x60
    // 0x733c88: SetupParameters(_RehberIletisimPageState this /* r1 => r0, fp-0x10 */)
    //     0x733c88: mov             x0, x1
    //     0x733c8c: stur            x1, [fp, #-0x10]
    // 0x733c90: CheckStackOverflow
    //     0x733c90: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x733c94: cmp             SP, x16
    //     0x733c98: b.ls            #0x734254
    // 0x733c9c: LoadField: r1 = r0->field_2b
    //     0x733c9c: ldur            w1, [x0, #0x2b]
    // 0x733ca0: DecompressPointer r1
    //     0x733ca0: add             x1, x1, HEAP, lsl #32
    // 0x733ca4: cmp             w1, NULL
    // 0x733ca8: b.eq            #0x733ccc
    // 0x733cac: LoadField: r1 = r0->field_2f
    //     0x733cac: ldur            w1, [x0, #0x2f]
    // 0x733cb0: DecompressPointer r1
    //     0x733cb0: add             x1, x1, HEAP, lsl #32
    // 0x733cb4: cmp             w1, NULL
    // 0x733cb8: r16 = true
    //     0x733cb8: add             x16, NULL, #0x20  ; true
    // 0x733cbc: r17 = false
    //     0x733cbc: add             x17, NULL, #0x30  ; false
    // 0x733cc0: csel            x2, x16, x17, ne
    // 0x733cc4: mov             x3, x2
    // 0x733cc8: b               #0x733cd0
    // 0x733ccc: r3 = false
    //     0x733ccc: add             x3, NULL, #0x30  ; false
    // 0x733cd0: stur            x3, [fp, #-8]
    // 0x733cd4: tbnz            w3, #4, #0x733cf0
    // 0x733cd8: mov             x2, x0
    // 0x733cdc: r1 = Function '_openMaps@937031693':.
    //     0x733cdc: add             x1, PP, #0x15, lsl #12  ; [pp+0x154a0] AnonymousClosure: (0x734260), in [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_openMaps (0x734298)
    //     0x733ce0: ldr             x1, [x1, #0x4a0]
    // 0x733ce4: r0 = AllocateClosure()
    //     0x733ce4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x733ce8: mov             x1, x0
    // 0x733cec: b               #0x733cf4
    // 0x733cf0: r1 = Null
    //     0x733cf0: mov             x1, NULL
    // 0x733cf4: ldur            x0, [fp, #-0x10]
    // 0x733cf8: stur            x1, [fp, #-0x18]
    // 0x733cfc: r0 = Radius()
    //     0x733cfc: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x733d00: d0 = 12.000000
    //     0x733d00: fmov            d0, #12.00000000
    // 0x733d04: stur            x0, [fp, #-0x20]
    // 0x733d08: StoreField: r0->field_7 = d0
    //     0x733d08: stur            d0, [x0, #7]
    // 0x733d0c: StoreField: r0->field_f = d0
    //     0x733d0c: stur            d0, [x0, #0xf]
    // 0x733d10: r0 = BorderRadius()
    //     0x733d10: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x733d14: mov             x2, x0
    // 0x733d18: ldur            x0, [fp, #-0x20]
    // 0x733d1c: stur            x2, [fp, #-0x28]
    // 0x733d20: StoreField: r2->field_7 = r0
    //     0x733d20: stur            w0, [x2, #7]
    // 0x733d24: StoreField: r2->field_b = r0
    //     0x733d24: stur            w0, [x2, #0xb]
    // 0x733d28: StoreField: r2->field_f = r0
    //     0x733d28: stur            w0, [x2, #0xf]
    // 0x733d2c: StoreField: r2->field_13 = r0
    //     0x733d2c: stur            w0, [x2, #0x13]
    // 0x733d30: r16 = 0.100000
    //     0x733d30: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x733d34: ldr             x16, [x16, #0x1f8]
    // 0x733d38: str             x16, [SP]
    // 0x733d3c: r1 = Instance_Color
    //     0x733d3c: add             x1, PP, #0x15, lsl #12  ; [pp+0x154a8] Obj!Color@a23c51
    //     0x733d40: ldr             x1, [x1, #0x4a8]
    // 0x733d44: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x733d44: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x733d48: ldr             x4, [x4, #0x198]
    // 0x733d4c: r0 = withValues()
    //     0x733d4c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x733d50: stur            x0, [fp, #-0x20]
    // 0x733d54: r0 = Radius()
    //     0x733d54: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x733d58: d0 = 12.000000
    //     0x733d58: fmov            d0, #12.00000000
    // 0x733d5c: stur            x0, [fp, #-0x30]
    // 0x733d60: StoreField: r0->field_7 = d0
    //     0x733d60: stur            d0, [x0, #7]
    // 0x733d64: StoreField: r0->field_f = d0
    //     0x733d64: stur            d0, [x0, #0xf]
    // 0x733d68: r0 = BorderRadius()
    //     0x733d68: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x733d6c: mov             x2, x0
    // 0x733d70: ldur            x0, [fp, #-0x30]
    // 0x733d74: stur            x2, [fp, #-0x38]
    // 0x733d78: StoreField: r2->field_7 = r0
    //     0x733d78: stur            w0, [x2, #7]
    // 0x733d7c: StoreField: r2->field_b = r0
    //     0x733d7c: stur            w0, [x2, #0xb]
    // 0x733d80: StoreField: r2->field_f = r0
    //     0x733d80: stur            w0, [x2, #0xf]
    // 0x733d84: StoreField: r2->field_13 = r0
    //     0x733d84: stur            w0, [x2, #0x13]
    // 0x733d88: r16 = Instance_Color
    //     0x733d88: add             x16, PP, #0x15, lsl #12  ; [pp+0x154a8] Obj!Color@a23c51
    //     0x733d8c: ldr             x16, [x16, #0x4a8]
    // 0x733d90: r30 = 1.500000
    //     0x733d90: add             lr, PP, #0x15, lsl #12  ; [pp+0x154b0] 1.5
    //     0x733d94: ldr             lr, [lr, #0x4b0]
    // 0x733d98: stp             lr, x16, [SP]
    // 0x733d9c: r1 = Null
    //     0x733d9c: mov             x1, NULL
    // 0x733da0: r4 = const [0, 0x3, 0x2, 0x1, color, 0x1, width, 0x2, null]
    //     0x733da0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12208] List(9) [0, 0x3, 0x2, 0x1, "color", 0x1, "width", 0x2, Null]
    //     0x733da4: ldr             x4, [x4, #0x208]
    // 0x733da8: r0 = Border.all()
    //     0x733da8: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x733dac: stur            x0, [fp, #-0x30]
    // 0x733db0: r0 = BoxDecoration()
    //     0x733db0: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x733db4: mov             x1, x0
    // 0x733db8: ldur            x0, [fp, #-0x20]
    // 0x733dbc: stur            x1, [fp, #-0x40]
    // 0x733dc0: StoreField: r1->field_7 = r0
    //     0x733dc0: stur            w0, [x1, #7]
    // 0x733dc4: ldur            x0, [fp, #-0x30]
    // 0x733dc8: StoreField: r1->field_f = r0
    //     0x733dc8: stur            w0, [x1, #0xf]
    // 0x733dcc: ldur            x0, [fp, #-0x38]
    // 0x733dd0: StoreField: r1->field_13 = r0
    //     0x733dd0: stur            w0, [x1, #0x13]
    // 0x733dd4: r0 = Instance_BoxShape
    //     0x733dd4: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x733dd8: ldr             x0, [x0, #0x1c8]
    // 0x733ddc: StoreField: r1->field_23 = r0
    //     0x733ddc: stur            w0, [x1, #0x23]
    // 0x733de0: ldur            x2, [fp, #-0x10]
    // 0x733de4: LoadField: r3 = r2->field_27
    //     0x733de4: ldur            w3, [x2, #0x27]
    // 0x733de8: DecompressPointer r3
    //     0x733de8: add             x3, x3, HEAP, lsl #32
    // 0x733dec: cmp             w3, NULL
    // 0x733df0: b.eq            #0x733e30
    // 0x733df4: LoadField: r4 = r3->field_b
    //     0x733df4: ldur            w4, [x3, #0xb]
    // 0x733df8: DecompressPointer r4
    //     0x733df8: add             x4, x4, HEAP, lsl #32
    // 0x733dfc: LoadField: r3 = r4->field_7
    //     0x733dfc: ldur            w3, [x4, #7]
    // 0x733e00: cbz             w3, #0x733e30
    // 0x733e04: stp             xzr, x4, [SP]
    // 0x733e08: r0 = []()
    //     0x733e08: bl              #0x3ca950  ; [dart:core] _StringBase::[]
    // 0x733e0c: r1 = LoadClassIdInstr(r0)
    //     0x733e0c: ldur            x1, [x0, #-1]
    //     0x733e10: ubfx            x1, x1, #0xc, #0x14
    // 0x733e14: str             x0, [SP]
    // 0x733e18: mov             x0, x1
    // 0x733e1c: r0 = GDT[cid_x0 + -0xff6]()
    //     0x733e1c: sub             lr, x0, #0xff6
    //     0x733e20: ldr             lr, [x21, lr, lsl #3]
    //     0x733e24: blr             lr
    // 0x733e28: mov             x1, x0
    // 0x733e2c: b               #0x733e34
    // 0x733e30: r1 = "\?"
    //     0x733e30: ldr             x1, [PP, #0xf08]  ; [pp+0xf08] "\?"
    // 0x733e34: ldur            x0, [fp, #-0x10]
    // 0x733e38: stur            x1, [fp, #-0x20]
    // 0x733e3c: r0 = Text()
    //     0x733e3c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x733e40: mov             x1, x0
    // 0x733e44: ldur            x0, [fp, #-0x20]
    // 0x733e48: stur            x1, [fp, #-0x30]
    // 0x733e4c: StoreField: r1->field_b = r0
    //     0x733e4c: stur            w0, [x1, #0xb]
    // 0x733e50: r0 = Instance_TextStyle
    //     0x733e50: add             x0, PP, #0x15, lsl #12  ; [pp+0x154b8] Obj!TextStyle@a17521
    //     0x733e54: ldr             x0, [x0, #0x4b8]
    // 0x733e58: StoreField: r1->field_13 = r0
    //     0x733e58: stur            w0, [x1, #0x13]
    // 0x733e5c: r0 = CircleAvatar()
    //     0x733e5c: bl              #0x6e4350  ; AllocateCircleAvatarStub -> CircleAvatar (size=0x2c)
    // 0x733e60: mov             x1, x0
    // 0x733e64: ldur            x0, [fp, #-0x30]
    // 0x733e68: stur            x1, [fp, #-0x20]
    // 0x733e6c: StoreField: r1->field_b = r0
    //     0x733e6c: stur            w0, [x1, #0xb]
    // 0x733e70: r0 = Instance_Color
    //     0x733e70: add             x0, PP, #0x15, lsl #12  ; [pp+0x154a8] Obj!Color@a23c51
    //     0x733e74: ldr             x0, [x0, #0x4a8]
    // 0x733e78: StoreField: r1->field_f = r0
    //     0x733e78: stur            w0, [x1, #0xf]
    // 0x733e7c: r0 = 24.000000
    //     0x733e7c: add             x0, PP, #0xc, lsl #12  ; [pp+0xcf28] 24
    //     0x733e80: ldr             x0, [x0, #0xf28]
    // 0x733e84: StoreField: r1->field_1f = r0
    //     0x733e84: stur            w0, [x1, #0x1f]
    // 0x733e88: ldur            x0, [fp, #-0x10]
    // 0x733e8c: LoadField: r2 = r0->field_27
    //     0x733e8c: ldur            w2, [x0, #0x27]
    // 0x733e90: DecompressPointer r2
    //     0x733e90: add             x2, x2, HEAP, lsl #32
    // 0x733e94: cmp             w2, NULL
    // 0x733e98: b.ne            #0x733ea4
    // 0x733e9c: r0 = Null
    //     0x733e9c: mov             x0, NULL
    // 0x733ea0: b               #0x733eac
    // 0x733ea4: LoadField: r0 = r2->field_b
    //     0x733ea4: ldur            w0, [x2, #0xb]
    // 0x733ea8: DecompressPointer r0
    //     0x733ea8: add             x0, x0, HEAP, lsl #32
    // 0x733eac: cmp             w0, NULL
    // 0x733eb0: b.ne            #0x733ec0
    // 0x733eb4: r2 = "İsim bilgisi yok"
    //     0x733eb4: add             x2, PP, #0x15, lsl #12  ; [pp+0x154c0] "İsim bilgisi yok"
    //     0x733eb8: ldr             x2, [x2, #0x4c0]
    // 0x733ebc: b               #0x733ec4
    // 0x733ec0: mov             x2, x0
    // 0x733ec4: ldur            x0, [fp, #-8]
    // 0x733ec8: stur            x2, [fp, #-0x10]
    // 0x733ecc: r0 = Text()
    //     0x733ecc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x733ed0: mov             x3, x0
    // 0x733ed4: ldur            x0, [fp, #-0x10]
    // 0x733ed8: stur            x3, [fp, #-0x30]
    // 0x733edc: StoreField: r3->field_b = r0
    //     0x733edc: stur            w0, [x3, #0xb]
    // 0x733ee0: r0 = Instance_TextStyle
    //     0x733ee0: add             x0, PP, #0x14, lsl #12  ; [pp+0x14f48] Obj!TextStyle@a182b1
    //     0x733ee4: ldr             x0, [x0, #0xf48]
    // 0x733ee8: StoreField: r3->field_13 = r0
    //     0x733ee8: stur            w0, [x3, #0x13]
    // 0x733eec: r1 = Null
    //     0x733eec: mov             x1, NULL
    // 0x733ef0: r2 = 4
    //     0x733ef0: mov             x2, #4
    // 0x733ef4: r0 = AllocateArray()
    //     0x733ef4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x733ef8: stur            x0, [fp, #-0x10]
    // 0x733efc: r16 = Instance_Text
    //     0x733efc: add             x16, PP, #0x15, lsl #12  ; [pp+0x154c8] Obj!Text@a1cc61
    //     0x733f00: ldr             x16, [x16, #0x4c8]
    // 0x733f04: StoreField: r0->field_f = r16
    //     0x733f04: stur            w16, [x0, #0xf]
    // 0x733f08: ldur            x1, [fp, #-0x30]
    // 0x733f0c: StoreField: r0->field_13 = r1
    //     0x733f0c: stur            w1, [x0, #0x13]
    // 0x733f10: r1 = <Widget>
    //     0x733f10: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x733f14: r0 = AllocateGrowableArray()
    //     0x733f14: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x733f18: mov             x1, x0
    // 0x733f1c: ldur            x0, [fp, #-0x10]
    // 0x733f20: stur            x1, [fp, #-0x30]
    // 0x733f24: StoreField: r1->field_f = r0
    //     0x733f24: stur            w0, [x1, #0xf]
    // 0x733f28: r0 = 4
    //     0x733f28: mov             x0, #4
    // 0x733f2c: StoreField: r1->field_b = r0
    //     0x733f2c: stur            w0, [x1, #0xb]
    // 0x733f30: r0 = Column()
    //     0x733f30: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x733f34: mov             x2, x0
    // 0x733f38: r0 = Instance_Axis
    //     0x733f38: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x733f3c: stur            x2, [fp, #-0x10]
    // 0x733f40: StoreField: r2->field_f = r0
    //     0x733f40: stur            w0, [x2, #0xf]
    // 0x733f44: r3 = Instance_MainAxisAlignment
    //     0x733f44: add             x3, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x733f48: ldr             x3, [x3, #0x230]
    // 0x733f4c: StoreField: r2->field_13 = r3
    //     0x733f4c: stur            w3, [x2, #0x13]
    // 0x733f50: r4 = Instance_MainAxisSize
    //     0x733f50: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x733f54: ldr             x4, [x4, #0x330]
    // 0x733f58: ArrayStore: r2[0] = r4  ; List_4
    //     0x733f58: stur            w4, [x2, #0x17]
    // 0x733f5c: r5 = Instance_CrossAxisAlignment
    //     0x733f5c: add             x5, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x733f60: ldr             x5, [x5, #0x238]
    // 0x733f64: StoreField: r2->field_1b = r5
    //     0x733f64: stur            w5, [x2, #0x1b]
    // 0x733f68: r6 = Instance_VerticalDirection
    //     0x733f68: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x733f6c: ldr             x6, [x6, #0x340]
    // 0x733f70: StoreField: r2->field_23 = r6
    //     0x733f70: stur            w6, [x2, #0x23]
    // 0x733f74: r7 = Instance_Clip
    //     0x733f74: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x733f78: ldr             x7, [x7, #0x348]
    // 0x733f7c: StoreField: r2->field_2b = r7
    //     0x733f7c: stur            w7, [x2, #0x2b]
    // 0x733f80: StoreField: r2->field_2f = rZR
    //     0x733f80: stur            xzr, [x2, #0x2f]
    // 0x733f84: ldur            x1, [fp, #-0x30]
    // 0x733f88: StoreField: r2->field_b = r1
    //     0x733f88: stur            w1, [x2, #0xb]
    // 0x733f8c: r1 = <FlexParentData>
    //     0x733f8c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x733f90: ldr             x1, [x1, #0x340]
    // 0x733f94: r0 = Expanded()
    //     0x733f94: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x733f98: mov             x3, x0
    // 0x733f9c: r0 = 1
    //     0x733f9c: mov             x0, #1
    // 0x733fa0: stur            x3, [fp, #-0x30]
    // 0x733fa4: StoreField: r3->field_13 = r0
    //     0x733fa4: stur            x0, [x3, #0x13]
    // 0x733fa8: r0 = Instance_FlexFit
    //     0x733fa8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x733fac: ldr             x0, [x0, #0x348]
    // 0x733fb0: StoreField: r3->field_1b = r0
    //     0x733fb0: stur            w0, [x3, #0x1b]
    // 0x733fb4: ldur            x0, [fp, #-0x10]
    // 0x733fb8: StoreField: r3->field_b = r0
    //     0x733fb8: stur            w0, [x3, #0xb]
    // 0x733fbc: r1 = Null
    //     0x733fbc: mov             x1, NULL
    // 0x733fc0: r2 = 6
    //     0x733fc0: mov             x2, #6
    // 0x733fc4: r0 = AllocateArray()
    //     0x733fc4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x733fc8: mov             x2, x0
    // 0x733fcc: ldur            x0, [fp, #-0x20]
    // 0x733fd0: stur            x2, [fp, #-0x10]
    // 0x733fd4: StoreField: r2->field_f = r0
    //     0x733fd4: stur            w0, [x2, #0xf]
    // 0x733fd8: r16 = Instance_SizedBox
    //     0x733fd8: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x733fdc: ldr             x16, [x16, #0x360]
    // 0x733fe0: StoreField: r2->field_13 = r16
    //     0x733fe0: stur            w16, [x2, #0x13]
    // 0x733fe4: ldur            x0, [fp, #-0x30]
    // 0x733fe8: ArrayStore: r2[0] = r0  ; List_4
    //     0x733fe8: stur            w0, [x2, #0x17]
    // 0x733fec: r1 = <Widget>
    //     0x733fec: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x733ff0: r0 = AllocateGrowableArray()
    //     0x733ff0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x733ff4: mov             x3, x0
    // 0x733ff8: ldur            x0, [fp, #-0x10]
    // 0x733ffc: stur            x3, [fp, #-0x20]
    // 0x734000: StoreField: r3->field_f = r0
    //     0x734000: stur            w0, [x3, #0xf]
    // 0x734004: r0 = 6
    //     0x734004: mov             x0, #6
    // 0x734008: StoreField: r3->field_b = r0
    //     0x734008: stur            w0, [x3, #0xb]
    // 0x73400c: ldur            x0, [fp, #-8]
    // 0x734010: tbnz            w0, #4, #0x7340d4
    // 0x734014: r1 = _ConstMap len:12
    //     0x734014: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x734018: r2 = 1200
    //     0x734018: mov             x2, #0x4b0
    // 0x73401c: r0 = []()
    //     0x73401c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x734020: stur            x0, [fp, #-8]
    // 0x734024: cmp             w0, NULL
    // 0x734028: b.eq            #0x73425c
    // 0x73402c: r0 = Icon()
    //     0x73402c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x734030: mov             x2, x0
    // 0x734034: r0 = Instance_IconData
    //     0x734034: add             x0, PP, #0x15, lsl #12  ; [pp+0x154d0] Obj!IconData@a0a601
    //     0x734038: ldr             x0, [x0, #0x4d0]
    // 0x73403c: stur            x2, [fp, #-0x10]
    // 0x734040: StoreField: r2->field_b = r0
    //     0x734040: stur            w0, [x2, #0xb]
    // 0x734044: r0 = 18.000000
    //     0x734044: add             x0, PP, #0xc, lsl #12  ; [pp+0xce08] 18
    //     0x734048: ldr             x0, [x0, #0xe08]
    // 0x73404c: StoreField: r2->field_f = r0
    //     0x73404c: stur            w0, [x2, #0xf]
    // 0x734050: ldur            x0, [fp, #-8]
    // 0x734054: StoreField: r2->field_23 = r0
    //     0x734054: stur            w0, [x2, #0x23]
    // 0x734058: ldur            x0, [fp, #-0x20]
    // 0x73405c: LoadField: r1 = r0->field_b
    //     0x73405c: ldur            w1, [x0, #0xb]
    // 0x734060: LoadField: r3 = r0->field_f
    //     0x734060: ldur            w3, [x0, #0xf]
    // 0x734064: DecompressPointer r3
    //     0x734064: add             x3, x3, HEAP, lsl #32
    // 0x734068: LoadField: r4 = r3->field_b
    //     0x734068: ldur            w4, [x3, #0xb]
    // 0x73406c: r3 = LoadInt32Instr(r1)
    //     0x73406c: sbfx            x3, x1, #1, #0x1f
    // 0x734070: stur            x3, [fp, #-0x48]
    // 0x734074: r1 = LoadInt32Instr(r4)
    //     0x734074: sbfx            x1, x4, #1, #0x1f
    // 0x734078: cmp             x3, x1
    // 0x73407c: b.ne            #0x734088
    // 0x734080: mov             x1, x0
    // 0x734084: r0 = _growToNextCapacity()
    //     0x734084: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x734088: ldur            x2, [fp, #-0x20]
    // 0x73408c: ldur            x3, [fp, #-0x48]
    // 0x734090: add             x0, x3, #1
    // 0x734094: lsl             x1, x0, #1
    // 0x734098: StoreField: r2->field_b = r1
    //     0x734098: stur            w1, [x2, #0xb]
    // 0x73409c: LoadField: r1 = r2->field_f
    //     0x73409c: ldur            w1, [x2, #0xf]
    // 0x7340a0: DecompressPointer r1
    //     0x7340a0: add             x1, x1, HEAP, lsl #32
    // 0x7340a4: ldur            x0, [fp, #-0x10]
    // 0x7340a8: ArrayStore: r1[r3] = r0  ; List_4
    //     0x7340a8: add             x25, x1, x3, lsl #2
    //     0x7340ac: add             x25, x25, #0xf
    //     0x7340b0: str             w0, [x25]
    //     0x7340b4: tbz             w0, #0, #0x7340d0
    //     0x7340b8: ldurb           w16, [x1, #-1]
    //     0x7340bc: ldurb           w17, [x0, #-1]
    //     0x7340c0: and             x16, x17, x16, lsr #2
    //     0x7340c4: tst             x16, HEAP, lsr #32
    //     0x7340c8: b.eq            #0x7340d0
    //     0x7340cc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7340d0: b               #0x7340d8
    // 0x7340d4: mov             x2, x3
    // 0x7340d8: ldur            x1, [fp, #-0x18]
    // 0x7340dc: ldur            x0, [fp, #-0x28]
    // 0x7340e0: r0 = Row()
    //     0x7340e0: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7340e4: mov             x3, x0
    // 0x7340e8: r0 = Instance_Axis
    //     0x7340e8: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7340ec: stur            x3, [fp, #-8]
    // 0x7340f0: StoreField: r3->field_f = r0
    //     0x7340f0: stur            w0, [x3, #0xf]
    // 0x7340f4: r0 = Instance_MainAxisAlignment
    //     0x7340f4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7340f8: ldr             x0, [x0, #0x230]
    // 0x7340fc: StoreField: r3->field_13 = r0
    //     0x7340fc: stur            w0, [x3, #0x13]
    // 0x734100: r4 = Instance_MainAxisSize
    //     0x734100: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x734104: ldr             x4, [x4, #0x330]
    // 0x734108: ArrayStore: r3[0] = r4  ; List_4
    //     0x734108: stur            w4, [x3, #0x17]
    // 0x73410c: r1 = Instance_CrossAxisAlignment
    //     0x73410c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x734110: ldr             x1, [x1, #0x338]
    // 0x734114: StoreField: r3->field_1b = r1
    //     0x734114: stur            w1, [x3, #0x1b]
    // 0x734118: r5 = Instance_VerticalDirection
    //     0x734118: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x73411c: ldr             x5, [x5, #0x340]
    // 0x734120: StoreField: r3->field_23 = r5
    //     0x734120: stur            w5, [x3, #0x23]
    // 0x734124: r6 = Instance_Clip
    //     0x734124: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x734128: ldr             x6, [x6, #0x348]
    // 0x73412c: StoreField: r3->field_2b = r6
    //     0x73412c: stur            w6, [x3, #0x2b]
    // 0x734130: StoreField: r3->field_2f = rZR
    //     0x734130: stur            xzr, [x3, #0x2f]
    // 0x734134: ldur            x1, [fp, #-0x20]
    // 0x734138: StoreField: r3->field_b = r1
    //     0x734138: stur            w1, [x3, #0xb]
    // 0x73413c: r1 = Null
    //     0x73413c: mov             x1, NULL
    // 0x734140: r2 = 2
    //     0x734140: mov             x2, #2
    // 0x734144: r0 = AllocateArray()
    //     0x734144: bl              #0x9280a0  ; AllocateArrayStub
    // 0x734148: mov             x2, x0
    // 0x73414c: ldur            x0, [fp, #-8]
    // 0x734150: stur            x2, [fp, #-0x10]
    // 0x734154: StoreField: r2->field_f = r0
    //     0x734154: stur            w0, [x2, #0xf]
    // 0x734158: r1 = <Widget>
    //     0x734158: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73415c: r0 = AllocateGrowableArray()
    //     0x73415c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x734160: mov             x1, x0
    // 0x734164: ldur            x0, [fp, #-0x10]
    // 0x734168: stur            x1, [fp, #-8]
    // 0x73416c: StoreField: r1->field_f = r0
    //     0x73416c: stur            w0, [x1, #0xf]
    // 0x734170: r0 = 2
    //     0x734170: mov             x0, #2
    // 0x734174: StoreField: r1->field_b = r0
    //     0x734174: stur            w0, [x1, #0xb]
    // 0x734178: r0 = Column()
    //     0x734178: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x73417c: mov             x1, x0
    // 0x734180: r0 = Instance_Axis
    //     0x734180: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x734184: stur            x1, [fp, #-0x10]
    // 0x734188: StoreField: r1->field_f = r0
    //     0x734188: stur            w0, [x1, #0xf]
    // 0x73418c: r0 = Instance_MainAxisAlignment
    //     0x73418c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x734190: ldr             x0, [x0, #0x230]
    // 0x734194: StoreField: r1->field_13 = r0
    //     0x734194: stur            w0, [x1, #0x13]
    // 0x734198: r0 = Instance_MainAxisSize
    //     0x734198: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x73419c: ldr             x0, [x0, #0x330]
    // 0x7341a0: ArrayStore: r1[0] = r0  ; List_4
    //     0x7341a0: stur            w0, [x1, #0x17]
    // 0x7341a4: r0 = Instance_CrossAxisAlignment
    //     0x7341a4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7341a8: ldr             x0, [x0, #0x238]
    // 0x7341ac: StoreField: r1->field_1b = r0
    //     0x7341ac: stur            w0, [x1, #0x1b]
    // 0x7341b0: r0 = Instance_VerticalDirection
    //     0x7341b0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7341b4: ldr             x0, [x0, #0x340]
    // 0x7341b8: StoreField: r1->field_23 = r0
    //     0x7341b8: stur            w0, [x1, #0x23]
    // 0x7341bc: r0 = Instance_Clip
    //     0x7341bc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7341c0: ldr             x0, [x0, #0x348]
    // 0x7341c4: StoreField: r1->field_2b = r0
    //     0x7341c4: stur            w0, [x1, #0x2b]
    // 0x7341c8: StoreField: r1->field_2f = rZR
    //     0x7341c8: stur            xzr, [x1, #0x2f]
    // 0x7341cc: ldur            x0, [fp, #-8]
    // 0x7341d0: StoreField: r1->field_b = r0
    //     0x7341d0: stur            w0, [x1, #0xb]
    // 0x7341d4: r0 = Container()
    //     0x7341d4: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7341d8: stur            x0, [fp, #-8]
    // 0x7341dc: r16 = Instance_EdgeInsets
    //     0x7341dc: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x7341e0: ldr             x16, [x16, #0x240]
    // 0x7341e4: ldur            lr, [fp, #-0x40]
    // 0x7341e8: stp             lr, x16, [SP, #8]
    // 0x7341ec: ldur            x16, [fp, #-0x10]
    // 0x7341f0: str             x16, [SP]
    // 0x7341f4: mov             x1, x0
    // 0x7341f8: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7341f8: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7341fc: ldr             x4, [x4, #0x1e8]
    // 0x734200: r0 = Container()
    //     0x734200: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x734204: r0 = InkWell()
    //     0x734204: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x734208: ldur            x1, [fp, #-8]
    // 0x73420c: StoreField: r0->field_b = r1
    //     0x73420c: stur            w1, [x0, #0xb]
    // 0x734210: ldur            x1, [fp, #-0x18]
    // 0x734214: StoreField: r0->field_f = r1
    //     0x734214: stur            w1, [x0, #0xf]
    // 0x734218: r1 = true
    //     0x734218: add             x1, NULL, #0x20  ; true
    // 0x73421c: StoreField: r0->field_47 = r1
    //     0x73421c: stur            w1, [x0, #0x47]
    // 0x734220: r2 = Instance_BoxShape
    //     0x734220: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x734224: ldr             x2, [x2, #0x1c8]
    // 0x734228: StoreField: r0->field_4b = r2
    //     0x734228: stur            w2, [x0, #0x4b]
    // 0x73422c: ldur            x2, [fp, #-0x28]
    // 0x734230: StoreField: r0->field_53 = r2
    //     0x734230: stur            w2, [x0, #0x53]
    // 0x734234: StoreField: r0->field_73 = r1
    //     0x734234: stur            w1, [x0, #0x73]
    // 0x734238: r2 = false
    //     0x734238: add             x2, NULL, #0x30  ; false
    // 0x73423c: StoreField: r0->field_77 = r2
    //     0x73423c: stur            w2, [x0, #0x77]
    // 0x734240: StoreField: r0->field_87 = r1
    //     0x734240: stur            w1, [x0, #0x87]
    // 0x734244: StoreField: r0->field_7f = r2
    //     0x734244: stur            w2, [x0, #0x7f]
    // 0x734248: LeaveFrame
    //     0x734248: mov             SP, fp
    //     0x73424c: ldp             fp, lr, [SP], #0x10
    // 0x734250: ret
    //     0x734250: ret             
    // 0x734254: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x734254: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x734258: b               #0x733c9c
    // 0x73425c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73425c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> _openMaps(dynamic) {
    // ** addr: 0x734260, size: 0x38
    // 0x734260: EnterFrame
    //     0x734260: stp             fp, lr, [SP, #-0x10]!
    //     0x734264: mov             fp, SP
    // 0x734268: ldr             x0, [fp, #0x10]
    // 0x73426c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x73426c: ldur            w1, [x0, #0x17]
    // 0x734270: DecompressPointer r1
    //     0x734270: add             x1, x1, HEAP, lsl #32
    // 0x734274: CheckStackOverflow
    //     0x734274: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x734278: cmp             SP, x16
    //     0x73427c: b.ls            #0x734290
    // 0x734280: r0 = _openMaps()
    //     0x734280: bl              #0x734298  ; [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_openMaps
    // 0x734284: LeaveFrame
    //     0x734284: mov             SP, fp
    //     0x734288: ldp             fp, lr, [SP], #0x10
    // 0x73428c: ret
    //     0x73428c: ret             
    // 0x734290: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x734290: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x734294: b               #0x734280
  }
  _ _openMaps(/* No info */) async {
    // ** addr: 0x734298, size: 0x12c
    // 0x734298: EnterFrame
    //     0x734298: stp             fp, lr, [SP, #-0x10]!
    //     0x73429c: mov             fp, SP
    // 0x7342a0: AllocStack(0x80)
    //     0x7342a0: sub             SP, SP, #0x80
    // 0x7342a4: SetupParameters(_RehberIletisimPageState this /* r1 => r1, fp-0x68 */)
    //     0x7342a4: stur            NULL, [fp, #-8]
    //     0x7342a8: stur            x1, [fp, #-0x68]
    // 0x7342ac: CheckStackOverflow
    //     0x7342ac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7342b0: cmp             SP, x16
    //     0x7342b4: b.ls            #0x7343bc
    // 0x7342b8: InitAsync() -> Future<void?>
    //     0x7342b8: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x7342bc: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7342c0: ldur            x0, [fp, #-0x68]
    // 0x7342c4: LoadField: r3 = r0->field_2b
    //     0x7342c4: ldur            w3, [x0, #0x2b]
    // 0x7342c8: DecompressPointer r3
    //     0x7342c8: add             x3, x3, HEAP, lsl #32
    // 0x7342cc: stur            x3, [fp, #-0x78]
    // 0x7342d0: cmp             w3, NULL
    // 0x7342d4: b.eq            #0x7342ec
    // 0x7342d8: LoadField: r4 = r0->field_2f
    //     0x7342d8: ldur            w4, [x0, #0x2f]
    // 0x7342dc: DecompressPointer r4
    //     0x7342dc: add             x4, x4, HEAP, lsl #32
    // 0x7342e0: stur            x4, [fp, #-0x70]
    // 0x7342e4: cmp             w4, NULL
    // 0x7342e8: b.ne            #0x7342f4
    // 0x7342ec: r0 = Null
    //     0x7342ec: mov             x0, NULL
    // 0x7342f0: r0 = ReturnAsyncNotFuture()
    //     0x7342f0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7342f4: r1 = Null
    //     0x7342f4: mov             x1, NULL
    // 0x7342f8: r2 = 8
    //     0x7342f8: mov             x2, #8
    // 0x7342fc: r0 = AllocateArray()
    //     0x7342fc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x734300: r16 = "https://www.google.com/maps/search/\?api=1&query="
    //     0x734300: add             x16, PP, #0x15, lsl #12  ; [pp+0x154d8] "https://www.google.com/maps/search/\?api=1&query="
    //     0x734304: ldr             x16, [x16, #0x4d8]
    // 0x734308: StoreField: r0->field_f = r16
    //     0x734308: stur            w16, [x0, #0xf]
    // 0x73430c: ldur            x1, [fp, #-0x78]
    // 0x734310: StoreField: r0->field_13 = r1
    //     0x734310: stur            w1, [x0, #0x13]
    // 0x734314: r16 = ","
    //     0x734314: add             x16, PP, #9, lsl #12  ; [pp+0x9230] ","
    //     0x734318: ldr             x16, [x16, #0x230]
    // 0x73431c: ArrayStore: r0[0] = r16  ; List_4
    //     0x73431c: stur            w16, [x0, #0x17]
    // 0x734320: ldur            x1, [fp, #-0x70]
    // 0x734324: StoreField: r0->field_1b = r1
    //     0x734324: stur            w1, [x0, #0x1b]
    // 0x734328: str             x0, [SP]
    // 0x73432c: r0 = _interpolate()
    //     0x73432c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x734330: mov             x1, x0
    // 0x734334: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x734334: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x734338: r0 = parse()
    //     0x734338: bl              #0x3de4e4  ; [dart:core] Uri::parse
    // 0x73433c: stur            x0, [fp, #-0x68]
    // 0x734340: mov             x1, x0
    // 0x734344: r0 = launchUrl()
    //     0x734344: bl              #0x7343c4  ; [package:url_launcher/src/url_launcher_uri.dart] ::launchUrl
    // 0x734348: mov             x1, x0
    // 0x73434c: stur            x1, [fp, #-0x70]
    // 0x734350: r0 = Await()
    //     0x734350: bl              #0x3dd188  ; AwaitStub
    // 0x734354: b               #0x7343b4
    // 0x734358: sub             SP, fp, #0x80
    // 0x73435c: stur            x0, [fp, #-0x68]
    // 0x734360: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x734360: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x734364: ldr             x0, [x0, #0xcb8]
    //     0x734368: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x73436c: cmp             w0, w16
    //     0x734370: b.ne            #0x73437c
    //     0x734374: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x734378: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x73437c: r1 = Null
    //     0x73437c: mov             x1, NULL
    // 0x734380: r2 = 4
    //     0x734380: mov             x2, #4
    // 0x734384: r0 = AllocateArray()
    //     0x734384: bl              #0x9280a0  ; AllocateArrayStub
    // 0x734388: r16 = "Harita açılamadı: "
    //     0x734388: add             x16, PP, #0x15, lsl #12  ; [pp+0x154e0] "Harita açılamadı: "
    //     0x73438c: ldr             x16, [x16, #0x4e0]
    // 0x734390: StoreField: r0->field_f = r16
    //     0x734390: stur            w16, [x0, #0xf]
    // 0x734394: ldur            x1, [fp, #-0x68]
    // 0x734398: StoreField: r0->field_13 = r1
    //     0x734398: stur            w1, [x0, #0x13]
    // 0x73439c: str             x0, [SP]
    // 0x7343a0: r0 = _interpolate()
    //     0x7343a0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7343a4: str             NULL, [SP]
    // 0x7343a8: mov             x1, x0
    // 0x7343ac: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x7343ac: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x7343b0: r0 = debugPrintThrottled()
    //     0x7343b0: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x7343b4: r0 = Null
    //     0x7343b4: mov             x0, NULL
    // 0x7343b8: r0 = ReturnAsyncNotFuture()
    //     0x7343b8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7343bc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7343bc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7343c0: b               #0x7342b8
  }
  _ _buildMapSection(/* No info */) {
    // ** addr: 0x7345b4, size: 0x970
    // 0x7345b4: EnterFrame
    //     0x7345b4: stp             fp, lr, [SP, #-0x10]!
    //     0x7345b8: mov             fp, SP
    // 0x7345bc: AllocStack(0x78)
    //     0x7345bc: sub             SP, SP, #0x78
    // 0x7345c0: SetupParameters(_RehberIletisimPageState this /* r1 => r2, fp-0x8 */)
    //     0x7345c0: mov             x2, x1
    //     0x7345c4: stur            x1, [fp, #-8]
    // 0x7345c8: CheckStackOverflow
    //     0x7345c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7345cc: cmp             SP, x16
    //     0x7345d0: b.ls            #0x734f0c
    // 0x7345d4: r1 = 1
    //     0x7345d4: mov             x1, #1
    // 0x7345d8: r0 = AllocateContext()
    //     0x7345d8: bl              #0x927010  ; AllocateContextStub
    // 0x7345dc: mov             x3, x0
    // 0x7345e0: ldur            x0, [fp, #-8]
    // 0x7345e4: stur            x3, [fp, #-0x18]
    // 0x7345e8: StoreField: r3->field_f = r0
    //     0x7345e8: stur            w0, [x3, #0xf]
    // 0x7345ec: LoadField: r1 = r0->field_2b
    //     0x7345ec: ldur            w1, [x0, #0x2b]
    // 0x7345f0: DecompressPointer r1
    //     0x7345f0: add             x1, x1, HEAP, lsl #32
    // 0x7345f4: cmp             w1, NULL
    // 0x7345f8: b.eq            #0x73461c
    // 0x7345fc: LoadField: r1 = r0->field_2f
    //     0x7345fc: ldur            w1, [x0, #0x2f]
    // 0x734600: DecompressPointer r1
    //     0x734600: add             x1, x1, HEAP, lsl #32
    // 0x734604: cmp             w1, NULL
    // 0x734608: r16 = true
    //     0x734608: add             x16, NULL, #0x20  ; true
    // 0x73460c: r17 = false
    //     0x73460c: add             x17, NULL, #0x30  ; false
    // 0x734610: csel            x2, x16, x17, ne
    // 0x734614: mov             x4, x2
    // 0x734618: b               #0x734620
    // 0x73461c: r4 = false
    //     0x73461c: add             x4, NULL, #0x30  ; false
    // 0x734620: stur            x4, [fp, #-0x10]
    // 0x734624: tbnz            w4, #4, #0x734640
    // 0x734628: mov             x2, x0
    // 0x73462c: r1 = Function '_openMaps@937031693':.
    //     0x73462c: add             x1, PP, #0x15, lsl #12  ; [pp+0x154a0] AnonymousClosure: (0x734260), in [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_openMaps (0x734298)
    //     0x734630: ldr             x1, [x1, #0x4a0]
    // 0x734634: r0 = AllocateClosure()
    //     0x734634: bl              #0x9273d4  ; AllocateClosureStub
    // 0x734638: mov             x1, x0
    // 0x73463c: b               #0x734644
    // 0x734640: r1 = Null
    //     0x734640: mov             x1, NULL
    // 0x734644: ldur            x0, [fp, #-0x10]
    // 0x734648: stur            x1, [fp, #-0x20]
    // 0x73464c: r0 = Radius()
    //     0x73464c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x734650: d0 = 12.000000
    //     0x734650: fmov            d0, #12.00000000
    // 0x734654: stur            x0, [fp, #-0x28]
    // 0x734658: StoreField: r0->field_7 = d0
    //     0x734658: stur            d0, [x0, #7]
    // 0x73465c: StoreField: r0->field_f = d0
    //     0x73465c: stur            d0, [x0, #0xf]
    // 0x734660: r0 = BorderRadius()
    //     0x734660: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x734664: mov             x2, x0
    // 0x734668: ldur            x0, [fp, #-0x28]
    // 0x73466c: stur            x2, [fp, #-0x30]
    // 0x734670: StoreField: r2->field_7 = r0
    //     0x734670: stur            w0, [x2, #7]
    // 0x734674: StoreField: r2->field_b = r0
    //     0x734674: stur            w0, [x2, #0xb]
    // 0x734678: StoreField: r2->field_f = r0
    //     0x734678: stur            w0, [x2, #0xf]
    // 0x73467c: StoreField: r2->field_13 = r0
    //     0x73467c: stur            w0, [x2, #0x13]
    // 0x734680: r16 = 0.100000
    //     0x734680: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x734684: ldr             x16, [x16, #0x1f8]
    // 0x734688: str             x16, [SP]
    // 0x73468c: r1 = Instance_Color
    //     0x73468c: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x734690: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x734690: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x734694: ldr             x4, [x4, #0x198]
    // 0x734698: r0 = withValues()
    //     0x734698: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x73469c: stur            x0, [fp, #-0x28]
    // 0x7346a0: r0 = BoxShadow()
    //     0x7346a0: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7346a4: stur            x0, [fp, #-0x38]
    // 0x7346a8: ArrayStore: r0[0] = rZR  ; List_8
    //     0x7346a8: stur            xzr, [x0, #0x17]
    // 0x7346ac: r1 = Instance_BlurStyle
    //     0x7346ac: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x7346b0: ldr             x1, [x1, #0x9b0]
    // 0x7346b4: StoreField: r0->field_1f = r1
    //     0x7346b4: stur            w1, [x0, #0x1f]
    // 0x7346b8: ldur            x1, [fp, #-0x28]
    // 0x7346bc: StoreField: r0->field_7 = r1
    //     0x7346bc: stur            w1, [x0, #7]
    // 0x7346c0: r1 = Instance_Offset
    //     0x7346c0: add             x1, PP, #0x15, lsl #12  ; [pp+0x154e8] Obj!Offset@a26b11
    //     0x7346c4: ldr             x1, [x1, #0x4e8]
    // 0x7346c8: StoreField: r0->field_b = r1
    //     0x7346c8: stur            w1, [x0, #0xb]
    // 0x7346cc: d0 = 8.000000
    //     0x7346cc: fmov            d0, #8.00000000
    // 0x7346d0: StoreField: r0->field_f = d0
    //     0x7346d0: stur            d0, [x0, #0xf]
    // 0x7346d4: r1 = Null
    //     0x7346d4: mov             x1, NULL
    // 0x7346d8: r2 = 2
    //     0x7346d8: mov             x2, #2
    // 0x7346dc: r0 = AllocateArray()
    //     0x7346dc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7346e0: mov             x2, x0
    // 0x7346e4: ldur            x0, [fp, #-0x38]
    // 0x7346e8: stur            x2, [fp, #-0x28]
    // 0x7346ec: StoreField: r2->field_f = r0
    //     0x7346ec: stur            w0, [x2, #0xf]
    // 0x7346f0: r1 = <BoxShadow>
    //     0x7346f0: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x7346f4: ldr             x1, [x1, #0x9c0]
    // 0x7346f8: r0 = AllocateGrowableArray()
    //     0x7346f8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7346fc: mov             x1, x0
    // 0x734700: ldur            x0, [fp, #-0x28]
    // 0x734704: stur            x1, [fp, #-0x38]
    // 0x734708: StoreField: r1->field_f = r0
    //     0x734708: stur            w0, [x1, #0xf]
    // 0x73470c: r2 = 2
    //     0x73470c: mov             x2, #2
    // 0x734710: StoreField: r1->field_b = r2
    //     0x734710: stur            w2, [x1, #0xb]
    // 0x734714: r0 = BoxDecoration()
    //     0x734714: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x734718: mov             x1, x0
    // 0x73471c: ldur            x0, [fp, #-0x30]
    // 0x734720: stur            x1, [fp, #-0x28]
    // 0x734724: StoreField: r1->field_13 = r0
    //     0x734724: stur            w0, [x1, #0x13]
    // 0x734728: ldur            x0, [fp, #-0x38]
    // 0x73472c: ArrayStore: r1[0] = r0  ; List_4
    //     0x73472c: stur            w0, [x1, #0x17]
    // 0x734730: r0 = Instance_BoxShape
    //     0x734730: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x734734: ldr             x0, [x0, #0x1c8]
    // 0x734738: StoreField: r1->field_23 = r0
    //     0x734738: stur            w0, [x1, #0x23]
    // 0x73473c: r0 = Radius()
    //     0x73473c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x734740: d0 = 12.000000
    //     0x734740: fmov            d0, #12.00000000
    // 0x734744: stur            x0, [fp, #-0x30]
    // 0x734748: StoreField: r0->field_7 = d0
    //     0x734748: stur            d0, [x0, #7]
    // 0x73474c: StoreField: r0->field_f = d0
    //     0x73474c: stur            d0, [x0, #0xf]
    // 0x734750: r0 = BorderRadius()
    //     0x734750: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x734754: mov             x3, x0
    // 0x734758: ldur            x0, [fp, #-0x30]
    // 0x73475c: stur            x3, [fp, #-0x38]
    // 0x734760: StoreField: r3->field_7 = r0
    //     0x734760: stur            w0, [x3, #7]
    // 0x734764: StoreField: r3->field_b = r0
    //     0x734764: stur            w0, [x3, #0xb]
    // 0x734768: StoreField: r3->field_f = r0
    //     0x734768: stur            w0, [x3, #0xf]
    // 0x73476c: StoreField: r3->field_13 = r0
    //     0x73476c: stur            w0, [x3, #0x13]
    // 0x734770: r1 = <Widget>
    //     0x734770: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x734774: r2 = 0
    //     0x734774: mov             x2, #0
    // 0x734778: r0 = _GrowableList()
    //     0x734778: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x73477c: mov             x3, x0
    // 0x734780: ldur            x0, [fp, #-0x10]
    // 0x734784: stur            x3, [fp, #-0x30]
    // 0x734788: tbnz            w0, #4, #0x7348f0
    // 0x73478c: ldur            x4, [fp, #-8]
    // 0x734790: r1 = Null
    //     0x734790: mov             x1, NULL
    // 0x734794: r2 = 18
    //     0x734794: mov             x2, #0x12
    // 0x734798: r0 = AllocateArray()
    //     0x734798: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73479c: r16 = "https://maps.googleapis.com/maps/api/staticmap\?center="
    //     0x73479c: add             x16, PP, #0x15, lsl #12  ; [pp+0x154f0] "https://maps.googleapis.com/maps/api/staticmap\?center="
    //     0x7347a0: ldr             x16, [x16, #0x4f0]
    // 0x7347a4: StoreField: r0->field_f = r16
    //     0x7347a4: stur            w16, [x0, #0xf]
    // 0x7347a8: ldur            x1, [fp, #-8]
    // 0x7347ac: LoadField: r2 = r1->field_2b
    //     0x7347ac: ldur            w2, [x1, #0x2b]
    // 0x7347b0: DecompressPointer r2
    //     0x7347b0: add             x2, x2, HEAP, lsl #32
    // 0x7347b4: StoreField: r0->field_13 = r2
    //     0x7347b4: stur            w2, [x0, #0x13]
    // 0x7347b8: r16 = ","
    //     0x7347b8: add             x16, PP, #9, lsl #12  ; [pp+0x9230] ","
    //     0x7347bc: ldr             x16, [x16, #0x230]
    // 0x7347c0: ArrayStore: r0[0] = r16  ; List_4
    //     0x7347c0: stur            w16, [x0, #0x17]
    // 0x7347c4: LoadField: r3 = r1->field_2f
    //     0x7347c4: ldur            w3, [x1, #0x2f]
    // 0x7347c8: DecompressPointer r3
    //     0x7347c8: add             x3, x3, HEAP, lsl #32
    // 0x7347cc: StoreField: r0->field_1b = r3
    //     0x7347cc: stur            w3, [x0, #0x1b]
    // 0x7347d0: r16 = "&zoom=15&size=600x300&scale=2&maptype=roadmap&markers=color:red%7Clabel:R%7C"
    //     0x7347d0: add             x16, PP, #0x15, lsl #12  ; [pp+0x154f8] "&zoom=15&size=600x300&scale=2&maptype=roadmap&markers=color:red%7Clabel:R%7C"
    //     0x7347d4: ldr             x16, [x16, #0x4f8]
    // 0x7347d8: StoreField: r0->field_1f = r16
    //     0x7347d8: stur            w16, [x0, #0x1f]
    // 0x7347dc: StoreField: r0->field_23 = r2
    //     0x7347dc: stur            w2, [x0, #0x23]
    // 0x7347e0: r16 = ","
    //     0x7347e0: add             x16, PP, #9, lsl #12  ; [pp+0x9230] ","
    //     0x7347e4: ldr             x16, [x16, #0x230]
    // 0x7347e8: StoreField: r0->field_27 = r16
    //     0x7347e8: stur            w16, [x0, #0x27]
    // 0x7347ec: StoreField: r0->field_2b = r3
    //     0x7347ec: stur            w3, [x0, #0x2b]
    // 0x7347f0: r16 = "&key=AIzaSyAKYVbWruYnNmvIxFRTY0SxByrf356KiUA"
    //     0x7347f0: add             x16, PP, #0x15, lsl #12  ; [pp+0x15500] "&key=AIzaSyAKYVbWruYnNmvIxFRTY0SxByrf356KiUA"
    //     0x7347f4: ldr             x16, [x16, #0x500]
    // 0x7347f8: StoreField: r0->field_2f = r16
    //     0x7347f8: stur            w16, [x0, #0x2f]
    // 0x7347fc: str             x0, [SP]
    // 0x734800: r0 = _interpolate()
    //     0x734800: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x734804: ldur            x2, [fp, #-0x18]
    // 0x734808: r1 = Function '<anonymous closure>':.
    //     0x734808: add             x1, PP, #0x15, lsl #12  ; [pp+0x15508] AnonymousClosure: (0x7356a8), in [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_buildMapSection (0x7345b4)
    //     0x73480c: ldr             x1, [x1, #0x508]
    // 0x734810: stur            x0, [fp, #-0x40]
    // 0x734814: r0 = AllocateClosure()
    //     0x734814: bl              #0x9273d4  ; AllocateClosureStub
    // 0x734818: ldur            x2, [fp, #-0x18]
    // 0x73481c: r1 = Function '<anonymous closure>':.
    //     0x73481c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15510] AnonymousClosure: (0x735644), in [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_buildMapSection (0x7345b4)
    //     0x734820: ldr             x1, [x1, #0x510]
    // 0x734824: stur            x0, [fp, #-0x18]
    // 0x734828: r0 = AllocateClosure()
    //     0x734828: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73482c: stur            x0, [fp, #-0x48]
    // 0x734830: r0 = Image()
    //     0x734830: bl              #0x6bf938  ; AllocateImageStub -> Image (size=0x58)
    // 0x734834: stur            x0, [fp, #-0x50]
    // 0x734838: r16 = Instance_BoxFit
    //     0x734838: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ce0] Obj!BoxFit@a2a971
    //     0x73483c: ldr             x16, [x16, #0xce0]
    // 0x734840: r30 = inf
    //     0x734840: add             lr, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x734844: ldr             lr, [lr, #0xb20]
    // 0x734848: stp             lr, x16, [SP, #0x10]
    // 0x73484c: r16 = inf
    //     0x73484c: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x734850: ldr             x16, [x16, #0xb20]
    // 0x734854: ldur            lr, [fp, #-0x48]
    // 0x734858: stp             lr, x16, [SP]
    // 0x73485c: mov             x1, x0
    // 0x734860: ldur            x2, [fp, #-0x40]
    // 0x734864: ldur            x3, [fp, #-0x18]
    // 0x734868: r4 = const [0, 0x7, 0x4, 0x3, fit, 0x3, height, 0x5, loadingBuilder, 0x6, width, 0x4, null]
    //     0x734868: add             x4, PP, #0x15, lsl #12  ; [pp+0x15518] List(13) [0, 0x7, 0x4, 0x3, "fit", 0x3, "height", 0x5, "loadingBuilder", 0x6, "width", 0x4, Null]
    //     0x73486c: ldr             x4, [x4, #0x518]
    // 0x734870: r0 = Image.network()
    //     0x734870: bl              #0x6bf664  ; [package:flutter/src/widgets/image.dart] Image::Image.network
    // 0x734874: ldur            x0, [fp, #-0x30]
    // 0x734878: LoadField: r1 = r0->field_b
    //     0x734878: ldur            w1, [x0, #0xb]
    // 0x73487c: LoadField: r2 = r0->field_f
    //     0x73487c: ldur            w2, [x0, #0xf]
    // 0x734880: DecompressPointer r2
    //     0x734880: add             x2, x2, HEAP, lsl #32
    // 0x734884: LoadField: r3 = r2->field_b
    //     0x734884: ldur            w3, [x2, #0xb]
    // 0x734888: r2 = LoadInt32Instr(r1)
    //     0x734888: sbfx            x2, x1, #1, #0x1f
    // 0x73488c: stur            x2, [fp, #-0x58]
    // 0x734890: r1 = LoadInt32Instr(r3)
    //     0x734890: sbfx            x1, x3, #1, #0x1f
    // 0x734894: cmp             x2, x1
    // 0x734898: b.ne            #0x7348a4
    // 0x73489c: mov             x1, x0
    // 0x7348a0: r0 = _growToNextCapacity()
    //     0x7348a0: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7348a4: ldur            x2, [fp, #-0x30]
    // 0x7348a8: ldur            x3, [fp, #-0x58]
    // 0x7348ac: add             x0, x3, #1
    // 0x7348b0: lsl             x1, x0, #1
    // 0x7348b4: StoreField: r2->field_b = r1
    //     0x7348b4: stur            w1, [x2, #0xb]
    // 0x7348b8: LoadField: r1 = r2->field_f
    //     0x7348b8: ldur            w1, [x2, #0xf]
    // 0x7348bc: DecompressPointer r1
    //     0x7348bc: add             x1, x1, HEAP, lsl #32
    // 0x7348c0: ldur            x0, [fp, #-0x50]
    // 0x7348c4: ArrayStore: r1[r3] = r0  ; List_4
    //     0x7348c4: add             x25, x1, x3, lsl #2
    //     0x7348c8: add             x25, x25, #0xf
    //     0x7348cc: str             w0, [x25]
    //     0x7348d0: tbz             w0, #0, #0x7348ec
    //     0x7348d4: ldurb           w16, [x1, #-1]
    //     0x7348d8: ldurb           w17, [x0, #-1]
    //     0x7348dc: and             x16, x17, x16, lsr #2
    //     0x7348e0: tst             x16, HEAP, lsr #32
    //     0x7348e4: b.eq            #0x7348ec
    //     0x7348e8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7348ec: b               #0x734980
    // 0x7348f0: mov             x2, x3
    // 0x7348f4: ldur            x1, [fp, #-8]
    // 0x7348f8: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7348f8: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7348fc: r0 = _buildMapPlaceholder()
    //     0x7348fc: bl              #0x7350f4  ; [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_buildMapPlaceholder
    // 0x734900: mov             x2, x0
    // 0x734904: ldur            x0, [fp, #-0x30]
    // 0x734908: stur            x2, [fp, #-0x18]
    // 0x73490c: LoadField: r1 = r0->field_b
    //     0x73490c: ldur            w1, [x0, #0xb]
    // 0x734910: LoadField: r3 = r0->field_f
    //     0x734910: ldur            w3, [x0, #0xf]
    // 0x734914: DecompressPointer r3
    //     0x734914: add             x3, x3, HEAP, lsl #32
    // 0x734918: LoadField: r4 = r3->field_b
    //     0x734918: ldur            w4, [x3, #0xb]
    // 0x73491c: r3 = LoadInt32Instr(r1)
    //     0x73491c: sbfx            x3, x1, #1, #0x1f
    // 0x734920: stur            x3, [fp, #-0x58]
    // 0x734924: r1 = LoadInt32Instr(r4)
    //     0x734924: sbfx            x1, x4, #1, #0x1f
    // 0x734928: cmp             x3, x1
    // 0x73492c: b.ne            #0x734938
    // 0x734930: mov             x1, x0
    // 0x734934: r0 = _growToNextCapacity()
    //     0x734934: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x734938: ldur            x2, [fp, #-0x30]
    // 0x73493c: ldur            x3, [fp, #-0x58]
    // 0x734940: add             x0, x3, #1
    // 0x734944: lsl             x1, x0, #1
    // 0x734948: StoreField: r2->field_b = r1
    //     0x734948: stur            w1, [x2, #0xb]
    // 0x73494c: LoadField: r1 = r2->field_f
    //     0x73494c: ldur            w1, [x2, #0xf]
    // 0x734950: DecompressPointer r1
    //     0x734950: add             x1, x1, HEAP, lsl #32
    // 0x734954: ldur            x0, [fp, #-0x18]
    // 0x734958: ArrayStore: r1[r3] = r0  ; List_4
    //     0x734958: add             x25, x1, x3, lsl #2
    //     0x73495c: add             x25, x25, #0xf
    //     0x734960: str             w0, [x25]
    //     0x734964: tbz             w0, #0, #0x734980
    //     0x734968: ldurb           w16, [x1, #-1]
    //     0x73496c: ldurb           w17, [x0, #-1]
    //     0x734970: and             x16, x17, x16, lsr #2
    //     0x734974: tst             x16, HEAP, lsr #32
    //     0x734978: b.eq            #0x734980
    //     0x73497c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x734980: ldur            x0, [fp, #-0x10]
    // 0x734984: tbnz            w0, #4, #0x734e3c
    // 0x734988: ldur            x0, [fp, #-8]
    // 0x73498c: r16 = 0.950000
    //     0x73498c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15520] 0.95
    //     0x734990: ldr             x16, [x16, #0x520]
    // 0x734994: str             x16, [SP]
    // 0x734998: r1 = Instance_Color
    //     0x734998: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73499c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x73499c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7349a0: ldr             x4, [x4, #0x198]
    // 0x7349a4: r0 = withValues()
    //     0x7349a4: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7349a8: stur            x0, [fp, #-0x10]
    // 0x7349ac: r0 = Radius()
    //     0x7349ac: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7349b0: d0 = 8.000000
    //     0x7349b0: fmov            d0, #8.00000000
    // 0x7349b4: stur            x0, [fp, #-0x18]
    // 0x7349b8: StoreField: r0->field_7 = d0
    //     0x7349b8: stur            d0, [x0, #7]
    // 0x7349bc: StoreField: r0->field_f = d0
    //     0x7349bc: stur            d0, [x0, #0xf]
    // 0x7349c0: r0 = BorderRadius()
    //     0x7349c0: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7349c4: mov             x1, x0
    // 0x7349c8: ldur            x0, [fp, #-0x18]
    // 0x7349cc: stur            x1, [fp, #-0x40]
    // 0x7349d0: StoreField: r1->field_7 = r0
    //     0x7349d0: stur            w0, [x1, #7]
    // 0x7349d4: StoreField: r1->field_b = r0
    //     0x7349d4: stur            w0, [x1, #0xb]
    // 0x7349d8: StoreField: r1->field_f = r0
    //     0x7349d8: stur            w0, [x1, #0xf]
    // 0x7349dc: StoreField: r1->field_13 = r0
    //     0x7349dc: stur            w0, [x1, #0x13]
    // 0x7349e0: r0 = BoxDecoration()
    //     0x7349e0: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7349e4: mov             x3, x0
    // 0x7349e8: ldur            x0, [fp, #-0x10]
    // 0x7349ec: stur            x3, [fp, #-0x18]
    // 0x7349f0: StoreField: r3->field_7 = r0
    //     0x7349f0: stur            w0, [x3, #7]
    // 0x7349f4: ldur            x0, [fp, #-0x40]
    // 0x7349f8: StoreField: r3->field_13 = r0
    //     0x7349f8: stur            w0, [x3, #0x13]
    // 0x7349fc: r0 = Instance_BoxShape
    //     0x7349fc: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x734a00: ldr             x0, [x0, #0x1c8]
    // 0x734a04: StoreField: r3->field_23 = r0
    //     0x734a04: stur            w0, [x3, #0x23]
    // 0x734a08: r1 = _ConstMap len:10
    //     0x734a08: ldr             x1, [PP, #0x5760]  ; [pp+0x5760] Map<int, Color>(10)
    // 0x734a0c: r2 = 800
    //     0x734a0c: mov             x2, #0x320
    // 0x734a10: r0 = []()
    //     0x734a10: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x734a14: stur            x0, [fp, #-0x10]
    // 0x734a18: cmp             w0, NULL
    // 0x734a1c: b.eq            #0x734f14
    // 0x734a20: r0 = Icon()
    //     0x734a20: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x734a24: mov             x3, x0
    // 0x734a28: r0 = Instance_IconData
    //     0x734a28: add             x0, PP, #0x15, lsl #12  ; [pp+0x15528] Obj!IconData@a09ae1
    //     0x734a2c: ldr             x0, [x0, #0x528]
    // 0x734a30: stur            x3, [fp, #-0x40]
    // 0x734a34: StoreField: r3->field_b = r0
    //     0x734a34: stur            w0, [x3, #0xb]
    // 0x734a38: r0 = 18.000000
    //     0x734a38: add             x0, PP, #0xc, lsl #12  ; [pp+0xce08] 18
    //     0x734a3c: ldr             x0, [x0, #0xe08]
    // 0x734a40: StoreField: r3->field_f = r0
    //     0x734a40: stur            w0, [x3, #0xf]
    // 0x734a44: ldur            x0, [fp, #-0x10]
    // 0x734a48: StoreField: r3->field_23 = r0
    //     0x734a48: stur            w0, [x3, #0x23]
    // 0x734a4c: r1 = _ConstMap len:12
    //     0x734a4c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x734a50: r2 = 1200
    //     0x734a50: mov             x2, #0x4b0
    // 0x734a54: r0 = []()
    //     0x734a54: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x734a58: stur            x0, [fp, #-0x10]
    // 0x734a5c: cmp             w0, NULL
    // 0x734a60: b.eq            #0x734f18
    // 0x734a64: r0 = TextStyle()
    //     0x734a64: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x734a68: mov             x1, x0
    // 0x734a6c: r0 = true
    //     0x734a6c: add             x0, NULL, #0x20  ; true
    // 0x734a70: stur            x1, [fp, #-0x48]
    // 0x734a74: StoreField: r1->field_7 = r0
    //     0x734a74: stur            w0, [x1, #7]
    // 0x734a78: ldur            x2, [fp, #-0x10]
    // 0x734a7c: StoreField: r1->field_b = r2
    //     0x734a7c: stur            w2, [x1, #0xb]
    // 0x734a80: r2 = 12.000000
    //     0x734a80: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x734a84: ldr             x2, [x2, #0xae0]
    // 0x734a88: StoreField: r1->field_1f = r2
    //     0x734a88: stur            w2, [x1, #0x1f]
    // 0x734a8c: r0 = Text()
    //     0x734a8c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x734a90: mov             x3, x0
    // 0x734a94: r0 = "Rehberin Konumu"
    //     0x734a94: add             x0, PP, #0x15, lsl #12  ; [pp+0x15530] "Rehberin Konumu"
    //     0x734a98: ldr             x0, [x0, #0x530]
    // 0x734a9c: stur            x3, [fp, #-0x10]
    // 0x734aa0: StoreField: r3->field_b = r0
    //     0x734aa0: stur            w0, [x3, #0xb]
    // 0x734aa4: ldur            x0, [fp, #-0x48]
    // 0x734aa8: StoreField: r3->field_13 = r0
    //     0x734aa8: stur            w0, [x3, #0x13]
    // 0x734aac: r1 = Null
    //     0x734aac: mov             x1, NULL
    // 0x734ab0: r2 = 2
    //     0x734ab0: mov             x2, #2
    // 0x734ab4: r0 = AllocateArray()
    //     0x734ab4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x734ab8: mov             x2, x0
    // 0x734abc: ldur            x0, [fp, #-0x10]
    // 0x734ac0: stur            x2, [fp, #-0x48]
    // 0x734ac4: StoreField: r2->field_f = r0
    //     0x734ac4: stur            w0, [x2, #0xf]
    // 0x734ac8: r1 = <Widget>
    //     0x734ac8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x734acc: r0 = AllocateGrowableArray()
    //     0x734acc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x734ad0: mov             x2, x0
    // 0x734ad4: ldur            x0, [fp, #-0x48]
    // 0x734ad8: stur            x2, [fp, #-0x10]
    // 0x734adc: StoreField: r2->field_f = r0
    //     0x734adc: stur            w0, [x2, #0xf]
    // 0x734ae0: r0 = 2
    //     0x734ae0: mov             x0, #2
    // 0x734ae4: StoreField: r2->field_b = r0
    //     0x734ae4: stur            w0, [x2, #0xb]
    // 0x734ae8: ldur            x1, [fp, #-8]
    // 0x734aec: LoadField: r0 = r1->field_33
    //     0x734aec: ldur            w0, [x1, #0x33]
    // 0x734af0: DecompressPointer r0
    //     0x734af0: add             x0, x0, HEAP, lsl #32
    // 0x734af4: cmp             w0, NULL
    // 0x734af8: b.eq            #0x734bd8
    // 0x734afc: r0 = _formatLastUpdated()
    //     0x734afc: bl              #0x734f24  ; [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_formatLastUpdated
    // 0x734b00: r1 = _ConstMap len:12
    //     0x734b00: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x734b04: r2 = 1000
    //     0x734b04: mov             x2, #0x3e8
    // 0x734b08: stur            x0, [fp, #-8]
    // 0x734b0c: r0 = []()
    //     0x734b0c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x734b10: stur            x0, [fp, #-0x48]
    // 0x734b14: cmp             w0, NULL
    // 0x734b18: b.eq            #0x734f1c
    // 0x734b1c: r0 = TextStyle()
    //     0x734b1c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x734b20: mov             x1, x0
    // 0x734b24: r0 = true
    //     0x734b24: add             x0, NULL, #0x20  ; true
    // 0x734b28: stur            x1, [fp, #-0x50]
    // 0x734b2c: StoreField: r1->field_7 = r0
    //     0x734b2c: stur            w0, [x1, #7]
    // 0x734b30: ldur            x0, [fp, #-0x48]
    // 0x734b34: StoreField: r1->field_b = r0
    //     0x734b34: stur            w0, [x1, #0xb]
    // 0x734b38: r0 = 11.000000
    //     0x734b38: add             x0, PP, #0x14, lsl #12  ; [pp+0x14f60] 11
    //     0x734b3c: ldr             x0, [x0, #0xf60]
    // 0x734b40: StoreField: r1->field_1f = r0
    //     0x734b40: stur            w0, [x1, #0x1f]
    // 0x734b44: r0 = Text()
    //     0x734b44: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x734b48: mov             x2, x0
    // 0x734b4c: ldur            x0, [fp, #-8]
    // 0x734b50: stur            x2, [fp, #-0x48]
    // 0x734b54: StoreField: r2->field_b = r0
    //     0x734b54: stur            w0, [x2, #0xb]
    // 0x734b58: ldur            x0, [fp, #-0x50]
    // 0x734b5c: StoreField: r2->field_13 = r0
    //     0x734b5c: stur            w0, [x2, #0x13]
    // 0x734b60: ldur            x0, [fp, #-0x10]
    // 0x734b64: LoadField: r1 = r0->field_b
    //     0x734b64: ldur            w1, [x0, #0xb]
    // 0x734b68: LoadField: r3 = r0->field_f
    //     0x734b68: ldur            w3, [x0, #0xf]
    // 0x734b6c: DecompressPointer r3
    //     0x734b6c: add             x3, x3, HEAP, lsl #32
    // 0x734b70: LoadField: r4 = r3->field_b
    //     0x734b70: ldur            w4, [x3, #0xb]
    // 0x734b74: r3 = LoadInt32Instr(r1)
    //     0x734b74: sbfx            x3, x1, #1, #0x1f
    // 0x734b78: stur            x3, [fp, #-0x58]
    // 0x734b7c: r1 = LoadInt32Instr(r4)
    //     0x734b7c: sbfx            x1, x4, #1, #0x1f
    // 0x734b80: cmp             x3, x1
    // 0x734b84: b.ne            #0x734b90
    // 0x734b88: mov             x1, x0
    // 0x734b8c: r0 = _growToNextCapacity()
    //     0x734b8c: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x734b90: ldur            x2, [fp, #-0x10]
    // 0x734b94: ldur            x3, [fp, #-0x58]
    // 0x734b98: add             x0, x3, #1
    // 0x734b9c: lsl             x1, x0, #1
    // 0x734ba0: StoreField: r2->field_b = r1
    //     0x734ba0: stur            w1, [x2, #0xb]
    // 0x734ba4: LoadField: r1 = r2->field_f
    //     0x734ba4: ldur            w1, [x2, #0xf]
    // 0x734ba8: DecompressPointer r1
    //     0x734ba8: add             x1, x1, HEAP, lsl #32
    // 0x734bac: ldur            x0, [fp, #-0x48]
    // 0x734bb0: ArrayStore: r1[r3] = r0  ; List_4
    //     0x734bb0: add             x25, x1, x3, lsl #2
    //     0x734bb4: add             x25, x25, #0xf
    //     0x734bb8: str             w0, [x25]
    //     0x734bbc: tbz             w0, #0, #0x734bd8
    //     0x734bc0: ldurb           w16, [x1, #-1]
    //     0x734bc4: ldurb           w17, [x0, #-1]
    //     0x734bc8: and             x16, x17, x16, lsr #2
    //     0x734bcc: tst             x16, HEAP, lsr #32
    //     0x734bd0: b.eq            #0x734bd8
    //     0x734bd4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x734bd8: ldur            x1, [fp, #-0x30]
    // 0x734bdc: ldur            x0, [fp, #-0x40]
    // 0x734be0: r0 = Column()
    //     0x734be0: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x734be4: mov             x2, x0
    // 0x734be8: r0 = Instance_Axis
    //     0x734be8: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x734bec: stur            x2, [fp, #-8]
    // 0x734bf0: StoreField: r2->field_f = r0
    //     0x734bf0: stur            w0, [x2, #0xf]
    // 0x734bf4: r0 = Instance_MainAxisAlignment
    //     0x734bf4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x734bf8: ldr             x0, [x0, #0x230]
    // 0x734bfc: StoreField: r2->field_13 = r0
    //     0x734bfc: stur            w0, [x2, #0x13]
    // 0x734c00: r1 = Instance_MainAxisSize
    //     0x734c00: add             x1, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x734c04: ldr             x1, [x1, #0xb60]
    // 0x734c08: ArrayStore: r2[0] = r1  ; List_4
    //     0x734c08: stur            w1, [x2, #0x17]
    // 0x734c0c: r1 = Instance_CrossAxisAlignment
    //     0x734c0c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x734c10: ldr             x1, [x1, #0x238]
    // 0x734c14: StoreField: r2->field_1b = r1
    //     0x734c14: stur            w1, [x2, #0x1b]
    // 0x734c18: r3 = Instance_VerticalDirection
    //     0x734c18: add             x3, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x734c1c: ldr             x3, [x3, #0x340]
    // 0x734c20: StoreField: r2->field_23 = r3
    //     0x734c20: stur            w3, [x2, #0x23]
    // 0x734c24: r4 = Instance_Clip
    //     0x734c24: add             x4, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x734c28: ldr             x4, [x4, #0x348]
    // 0x734c2c: StoreField: r2->field_2b = r4
    //     0x734c2c: stur            w4, [x2, #0x2b]
    // 0x734c30: StoreField: r2->field_2f = rZR
    //     0x734c30: stur            xzr, [x2, #0x2f]
    // 0x734c34: ldur            x1, [fp, #-0x10]
    // 0x734c38: StoreField: r2->field_b = r1
    //     0x734c38: stur            w1, [x2, #0xb]
    // 0x734c3c: r1 = <FlexParentData>
    //     0x734c3c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x734c40: ldr             x1, [x1, #0x340]
    // 0x734c44: r0 = Expanded()
    //     0x734c44: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x734c48: mov             x3, x0
    // 0x734c4c: r0 = 1
    //     0x734c4c: mov             x0, #1
    // 0x734c50: stur            x3, [fp, #-0x10]
    // 0x734c54: StoreField: r3->field_13 = r0
    //     0x734c54: stur            x0, [x3, #0x13]
    // 0x734c58: r0 = Instance_FlexFit
    //     0x734c58: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x734c5c: ldr             x0, [x0, #0x348]
    // 0x734c60: StoreField: r3->field_1b = r0
    //     0x734c60: stur            w0, [x3, #0x1b]
    // 0x734c64: ldur            x0, [fp, #-8]
    // 0x734c68: StoreField: r3->field_b = r0
    //     0x734c68: stur            w0, [x3, #0xb]
    // 0x734c6c: r1 = _ConstMap len:12
    //     0x734c6c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x734c70: r2 = 1200
    //     0x734c70: mov             x2, #0x4b0
    // 0x734c74: r0 = []()
    //     0x734c74: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x734c78: stur            x0, [fp, #-8]
    // 0x734c7c: cmp             w0, NULL
    // 0x734c80: b.eq            #0x734f20
    // 0x734c84: r0 = Icon()
    //     0x734c84: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x734c88: mov             x3, x0
    // 0x734c8c: r0 = Instance_IconData
    //     0x734c8c: add             x0, PP, #0x15, lsl #12  ; [pp+0x154d0] Obj!IconData@a0a601
    //     0x734c90: ldr             x0, [x0, #0x4d0]
    // 0x734c94: stur            x3, [fp, #-0x48]
    // 0x734c98: StoreField: r3->field_b = r0
    //     0x734c98: stur            w0, [x3, #0xb]
    // 0x734c9c: r0 = 16.000000
    //     0x734c9c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x734ca0: ldr             x0, [x0, #0x358]
    // 0x734ca4: StoreField: r3->field_f = r0
    //     0x734ca4: stur            w0, [x3, #0xf]
    // 0x734ca8: ldur            x0, [fp, #-8]
    // 0x734cac: StoreField: r3->field_23 = r0
    //     0x734cac: stur            w0, [x3, #0x23]
    // 0x734cb0: r1 = Null
    //     0x734cb0: mov             x1, NULL
    // 0x734cb4: r2 = 8
    //     0x734cb4: mov             x2, #8
    // 0x734cb8: r0 = AllocateArray()
    //     0x734cb8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x734cbc: mov             x2, x0
    // 0x734cc0: ldur            x0, [fp, #-0x40]
    // 0x734cc4: stur            x2, [fp, #-8]
    // 0x734cc8: StoreField: r2->field_f = r0
    //     0x734cc8: stur            w0, [x2, #0xf]
    // 0x734ccc: r16 = Instance_SizedBox
    //     0x734ccc: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x734cd0: ldr             x16, [x16, #0x368]
    // 0x734cd4: StoreField: r2->field_13 = r16
    //     0x734cd4: stur            w16, [x2, #0x13]
    // 0x734cd8: ldur            x0, [fp, #-0x10]
    // 0x734cdc: ArrayStore: r2[0] = r0  ; List_4
    //     0x734cdc: stur            w0, [x2, #0x17]
    // 0x734ce0: ldur            x0, [fp, #-0x48]
    // 0x734ce4: StoreField: r2->field_1b = r0
    //     0x734ce4: stur            w0, [x2, #0x1b]
    // 0x734ce8: r1 = <Widget>
    //     0x734ce8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x734cec: r0 = AllocateGrowableArray()
    //     0x734cec: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x734cf0: mov             x1, x0
    // 0x734cf4: ldur            x0, [fp, #-8]
    // 0x734cf8: stur            x1, [fp, #-0x10]
    // 0x734cfc: StoreField: r1->field_f = r0
    //     0x734cfc: stur            w0, [x1, #0xf]
    // 0x734d00: r0 = 8
    //     0x734d00: mov             x0, #8
    // 0x734d04: StoreField: r1->field_b = r0
    //     0x734d04: stur            w0, [x1, #0xb]
    // 0x734d08: r0 = Row()
    //     0x734d08: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x734d0c: mov             x1, x0
    // 0x734d10: r0 = Instance_Axis
    //     0x734d10: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x734d14: stur            x1, [fp, #-8]
    // 0x734d18: StoreField: r1->field_f = r0
    //     0x734d18: stur            w0, [x1, #0xf]
    // 0x734d1c: r0 = Instance_MainAxisAlignment
    //     0x734d1c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x734d20: ldr             x0, [x0, #0x230]
    // 0x734d24: StoreField: r1->field_13 = r0
    //     0x734d24: stur            w0, [x1, #0x13]
    // 0x734d28: r0 = Instance_MainAxisSize
    //     0x734d28: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x734d2c: ldr             x0, [x0, #0x330]
    // 0x734d30: ArrayStore: r1[0] = r0  ; List_4
    //     0x734d30: stur            w0, [x1, #0x17]
    // 0x734d34: r0 = Instance_CrossAxisAlignment
    //     0x734d34: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x734d38: ldr             x0, [x0, #0x338]
    // 0x734d3c: StoreField: r1->field_1b = r0
    //     0x734d3c: stur            w0, [x1, #0x1b]
    // 0x734d40: r0 = Instance_VerticalDirection
    //     0x734d40: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x734d44: ldr             x0, [x0, #0x340]
    // 0x734d48: StoreField: r1->field_23 = r0
    //     0x734d48: stur            w0, [x1, #0x23]
    // 0x734d4c: r0 = Instance_Clip
    //     0x734d4c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x734d50: ldr             x0, [x0, #0x348]
    // 0x734d54: StoreField: r1->field_2b = r0
    //     0x734d54: stur            w0, [x1, #0x2b]
    // 0x734d58: StoreField: r1->field_2f = rZR
    //     0x734d58: stur            xzr, [x1, #0x2f]
    // 0x734d5c: ldur            x0, [fp, #-0x10]
    // 0x734d60: StoreField: r1->field_b = r0
    //     0x734d60: stur            w0, [x1, #0xb]
    // 0x734d64: r0 = Container()
    //     0x734d64: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x734d68: stur            x0, [fp, #-0x10]
    // 0x734d6c: r16 = Instance_EdgeInsets
    //     0x734d6c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15538] Obj!EdgeInsets@a0c741
    //     0x734d70: ldr             x16, [x16, #0x538]
    // 0x734d74: ldur            lr, [fp, #-0x18]
    // 0x734d78: stp             lr, x16, [SP, #8]
    // 0x734d7c: ldur            x16, [fp, #-8]
    // 0x734d80: str             x16, [SP]
    // 0x734d84: mov             x1, x0
    // 0x734d88: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x734d88: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x734d8c: ldr             x4, [x4, #0x1e8]
    // 0x734d90: r0 = Container()
    //     0x734d90: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x734d94: r1 = <StackParentData>
    //     0x734d94: add             x1, PP, #0x11, lsl #12  ; [pp+0x116a8] TypeArguments: <StackParentData>
    //     0x734d98: ldr             x1, [x1, #0x6a8]
    // 0x734d9c: r0 = Positioned()
    //     0x734d9c: bl              #0x40a1ec  ; AllocatePositionedStub -> Positioned (size=0x2c)
    // 0x734da0: mov             x2, x0
    // 0x734da4: r0 = 8.000000
    //     0x734da4: add             x0, PP, #0x15, lsl #12  ; [pp+0x15540] 8
    //     0x734da8: ldr             x0, [x0, #0x540]
    // 0x734dac: stur            x2, [fp, #-8]
    // 0x734db0: StoreField: r2->field_13 = r0
    //     0x734db0: stur            w0, [x2, #0x13]
    // 0x734db4: StoreField: r2->field_1b = r0
    //     0x734db4: stur            w0, [x2, #0x1b]
    // 0x734db8: StoreField: r2->field_1f = r0
    //     0x734db8: stur            w0, [x2, #0x1f]
    // 0x734dbc: ldur            x0, [fp, #-0x10]
    // 0x734dc0: StoreField: r2->field_b = r0
    //     0x734dc0: stur            w0, [x2, #0xb]
    // 0x734dc4: ldur            x0, [fp, #-0x30]
    // 0x734dc8: LoadField: r1 = r0->field_b
    //     0x734dc8: ldur            w1, [x0, #0xb]
    // 0x734dcc: LoadField: r3 = r0->field_f
    //     0x734dcc: ldur            w3, [x0, #0xf]
    // 0x734dd0: DecompressPointer r3
    //     0x734dd0: add             x3, x3, HEAP, lsl #32
    // 0x734dd4: LoadField: r4 = r3->field_b
    //     0x734dd4: ldur            w4, [x3, #0xb]
    // 0x734dd8: r3 = LoadInt32Instr(r1)
    //     0x734dd8: sbfx            x3, x1, #1, #0x1f
    // 0x734ddc: stur            x3, [fp, #-0x58]
    // 0x734de0: r1 = LoadInt32Instr(r4)
    //     0x734de0: sbfx            x1, x4, #1, #0x1f
    // 0x734de4: cmp             x3, x1
    // 0x734de8: b.ne            #0x734df4
    // 0x734dec: mov             x1, x0
    // 0x734df0: r0 = _growToNextCapacity()
    //     0x734df0: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x734df4: ldur            x2, [fp, #-0x30]
    // 0x734df8: ldur            x3, [fp, #-0x58]
    // 0x734dfc: add             x0, x3, #1
    // 0x734e00: lsl             x1, x0, #1
    // 0x734e04: StoreField: r2->field_b = r1
    //     0x734e04: stur            w1, [x2, #0xb]
    // 0x734e08: LoadField: r1 = r2->field_f
    //     0x734e08: ldur            w1, [x2, #0xf]
    // 0x734e0c: DecompressPointer r1
    //     0x734e0c: add             x1, x1, HEAP, lsl #32
    // 0x734e10: ldur            x0, [fp, #-8]
    // 0x734e14: ArrayStore: r1[r3] = r0  ; List_4
    //     0x734e14: add             x25, x1, x3, lsl #2
    //     0x734e18: add             x25, x25, #0xf
    //     0x734e1c: str             w0, [x25]
    //     0x734e20: tbz             w0, #0, #0x734e3c
    //     0x734e24: ldurb           w16, [x1, #-1]
    //     0x734e28: ldurb           w17, [x0, #-1]
    //     0x734e2c: and             x16, x17, x16, lsr #2
    //     0x734e30: tst             x16, HEAP, lsr #32
    //     0x734e34: b.eq            #0x734e3c
    //     0x734e38: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x734e3c: ldur            x0, [fp, #-0x38]
    // 0x734e40: r0 = Stack()
    //     0x734e40: bl              #0x651268  ; AllocateStackStub -> Stack (size=0x20)
    // 0x734e44: mov             x1, x0
    // 0x734e48: r0 = Instance_AlignmentDirectional
    //     0x734e48: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d28] Obj!AlignmentDirectional@a0cdd1
    //     0x734e4c: ldr             x0, [x0, #0xd28]
    // 0x734e50: stur            x1, [fp, #-8]
    // 0x734e54: StoreField: r1->field_f = r0
    //     0x734e54: stur            w0, [x1, #0xf]
    // 0x734e58: r0 = Instance_StackFit
    //     0x734e58: add             x0, PP, #0x15, lsl #12  ; [pp+0x15548] Obj!StackFit@a2a351
    //     0x734e5c: ldr             x0, [x0, #0x548]
    // 0x734e60: ArrayStore: r1[0] = r0  ; List_4
    //     0x734e60: stur            w0, [x1, #0x17]
    // 0x734e64: r0 = Instance_Clip
    //     0x734e64: add             x0, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x734e68: ldr             x0, [x0, #0x2d8]
    // 0x734e6c: StoreField: r1->field_1b = r0
    //     0x734e6c: stur            w0, [x1, #0x1b]
    // 0x734e70: ldur            x0, [fp, #-0x30]
    // 0x734e74: StoreField: r1->field_b = r0
    //     0x734e74: stur            w0, [x1, #0xb]
    // 0x734e78: r0 = ClipRRect()
    //     0x734e78: bl              #0x67cabc  ; AllocateClipRRectStub -> ClipRRect (size=0x1c)
    // 0x734e7c: mov             x1, x0
    // 0x734e80: ldur            x0, [fp, #-0x38]
    // 0x734e84: stur            x1, [fp, #-0x10]
    // 0x734e88: StoreField: r1->field_f = r0
    //     0x734e88: stur            w0, [x1, #0xf]
    // 0x734e8c: r0 = Instance_Clip
    //     0x734e8c: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d38] Obj!Clip@a2d931
    //     0x734e90: ldr             x0, [x0, #0xd38]
    // 0x734e94: ArrayStore: r1[0] = r0  ; List_4
    //     0x734e94: stur            w0, [x1, #0x17]
    // 0x734e98: ldur            x0, [fp, #-8]
    // 0x734e9c: StoreField: r1->field_b = r0
    //     0x734e9c: stur            w0, [x1, #0xb]
    // 0x734ea0: r0 = Container()
    //     0x734ea0: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x734ea4: stur            x0, [fp, #-8]
    // 0x734ea8: r16 = 250.000000
    //     0x734ea8: add             x16, PP, #0x15, lsl #12  ; [pp+0x15550] 250
    //     0x734eac: ldr             x16, [x16, #0x550]
    // 0x734eb0: r30 = Instance_EdgeInsets
    //     0x734eb0: add             lr, PP, #0xc, lsl #12  ; [pp+0xce88] Obj!EdgeInsets@a0be11
    //     0x734eb4: ldr             lr, [lr, #0xe88]
    // 0x734eb8: stp             lr, x16, [SP, #0x10]
    // 0x734ebc: ldur            x16, [fp, #-0x28]
    // 0x734ec0: ldur            lr, [fp, #-0x10]
    // 0x734ec4: stp             lr, x16, [SP]
    // 0x734ec8: mov             x1, x0
    // 0x734ecc: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, height, 0x1, margin, 0x2, null]
    //     0x734ecc: add             x4, PP, #0x15, lsl #12  ; [pp+0x15558] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "height", 0x1, "margin", 0x2, Null]
    //     0x734ed0: ldr             x4, [x4, #0x558]
    // 0x734ed4: r0 = Container()
    //     0x734ed4: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x734ed8: r0 = GestureDetector()
    //     0x734ed8: bl              #0x658e60  ; AllocateGestureDetectorStub -> GestureDetector (size=0x10c)
    // 0x734edc: stur            x0, [fp, #-0x10]
    // 0x734ee0: ldur            x16, [fp, #-0x20]
    // 0x734ee4: ldur            lr, [fp, #-8]
    // 0x734ee8: stp             lr, x16, [SP]
    // 0x734eec: mov             x1, x0
    // 0x734ef0: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, onTap, 0x1, null]
    //     0x734ef0: add             x4, PP, #0x14, lsl #12  ; [pp+0x14d50] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "onTap", 0x1, Null]
    //     0x734ef4: ldr             x4, [x4, #0xd50]
    // 0x734ef8: r0 = GestureDetector()
    //     0x734ef8: bl              #0x6582a4  ; [package:flutter/src/widgets/gesture_detector.dart] GestureDetector::GestureDetector
    // 0x734efc: ldur            x0, [fp, #-0x10]
    // 0x734f00: LeaveFrame
    //     0x734f00: mov             SP, fp
    //     0x734f04: ldp             fp, lr, [SP], #0x10
    // 0x734f08: ret
    //     0x734f08: ret             
    // 0x734f0c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x734f0c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x734f10: b               #0x7345d4
    // 0x734f14: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x734f14: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x734f18: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x734f18: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x734f1c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x734f1c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x734f20: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x734f20: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _formatLastUpdated(/* No info */) {
    // ** addr: 0x734f24, size: 0x1d0
    // 0x734f24: EnterFrame
    //     0x734f24: stp             fp, lr, [SP, #-0x10]!
    //     0x734f28: mov             fp, SP
    // 0x734f2c: AllocStack(0x18)
    //     0x734f2c: sub             SP, SP, #0x18
    // 0x734f30: SetupParameters(_RehberIletisimPageState this /* r1 => r1, fp-0x8 */)
    //     0x734f30: stur            x1, [fp, #-8]
    // 0x734f34: CheckStackOverflow
    //     0x734f34: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x734f38: cmp             SP, x16
    //     0x734f3c: b.ls            #0x7350e8
    // 0x734f40: LoadField: r0 = r1->field_33
    //     0x734f40: ldur            w0, [x1, #0x33]
    // 0x734f44: DecompressPointer r0
    //     0x734f44: add             x0, x0, HEAP, lsl #32
    // 0x734f48: cmp             w0, NULL
    // 0x734f4c: b.ne            #0x734f60
    // 0x734f50: r0 = ""
    //     0x734f50: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x734f54: LeaveFrame
    //     0x734f54: mov             SP, fp
    //     0x734f58: ldp             fp, lr, [SP], #0x10
    // 0x734f5c: ret
    //     0x734f5c: ret             
    // 0x734f60: r0 = DateTime()
    //     0x734f60: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x734f64: mov             x1, x0
    // 0x734f68: r0 = false
    //     0x734f68: add             x0, NULL, #0x30  ; false
    // 0x734f6c: stur            x1, [fp, #-0x10]
    // 0x734f70: StoreField: r1->field_7 = r0
    //     0x734f70: stur            w0, [x1, #7]
    // 0x734f74: r0 = _getCurrentMicros()
    //     0x734f74: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x734f78: r1 = LoadInt32Instr(r0)
    //     0x734f78: sbfx            x1, x0, #1, #0x1f
    //     0x734f7c: tbz             w0, #0, #0x734f84
    //     0x734f80: ldur            x1, [x0, #7]
    // 0x734f84: ldur            x0, [fp, #-0x10]
    // 0x734f88: StoreField: r0->field_b = r1
    //     0x734f88: stur            x1, [x0, #0xb]
    // 0x734f8c: ldur            x1, [fp, #-8]
    // 0x734f90: LoadField: r2 = r1->field_33
    //     0x734f90: ldur            w2, [x1, #0x33]
    // 0x734f94: DecompressPointer r2
    //     0x734f94: add             x2, x2, HEAP, lsl #32
    // 0x734f98: cmp             w2, NULL
    // 0x734f9c: b.eq            #0x7350f0
    // 0x734fa0: mov             x1, x0
    // 0x734fa4: r0 = difference()
    //     0x734fa4: bl              #0x5e099c  ; [dart:core] DateTime::difference
    // 0x734fa8: LoadField: r1 = r0->field_7
    //     0x734fa8: ldur            x1, [x0, #7]
    // 0x734fac: r0 = 60000000
    //     0x734fac: mov             x0, #0x8700
    //     0x734fb0: movk            x0, #0x393, lsl #16
    // 0x734fb4: sdiv            x2, x1, x0
    // 0x734fb8: cmp             x2, #1
    // 0x734fbc: b.ge            #0x734fd4
    // 0x734fc0: r0 = "Az önce güncellendi"
    //     0x734fc0: add             x0, PP, #0x15, lsl #12  ; [pp+0x15570] "Az önce güncellendi"
    //     0x734fc4: ldr             x0, [x0, #0x570]
    // 0x734fc8: LeaveFrame
    //     0x734fc8: mov             SP, fp
    //     0x734fcc: ldp             fp, lr, [SP], #0x10
    // 0x734fd0: ret
    //     0x734fd0: ret             
    // 0x734fd4: cmp             x2, #0x3c
    // 0x734fd8: b.ge            #0x73502c
    // 0x734fdc: r0 = BoxInt64Instr(r2)
    //     0x734fdc: sbfiz           x0, x2, #1, #0x1f
    //     0x734fe0: cmp             x2, x0, asr #1
    //     0x734fe4: b.eq            #0x734ff0
    //     0x734fe8: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x734fec: stur            x2, [x0, #7]
    // 0x734ff0: r1 = Null
    //     0x734ff0: mov             x1, NULL
    // 0x734ff4: r2 = 4
    //     0x734ff4: mov             x2, #4
    // 0x734ff8: stur            x0, [fp, #-8]
    // 0x734ffc: r0 = AllocateArray()
    //     0x734ffc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x735000: mov             x1, x0
    // 0x735004: ldur            x0, [fp, #-8]
    // 0x735008: StoreField: r1->field_f = r0
    //     0x735008: stur            w0, [x1, #0xf]
    // 0x73500c: r16 = " dk önce güncellendi"
    //     0x73500c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15578] " dk önce güncellendi"
    //     0x735010: ldr             x16, [x16, #0x578]
    // 0x735014: StoreField: r1->field_13 = r16
    //     0x735014: stur            w16, [x1, #0x13]
    // 0x735018: str             x1, [SP]
    // 0x73501c: r0 = _interpolate()
    //     0x73501c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x735020: LeaveFrame
    //     0x735020: mov             SP, fp
    //     0x735024: ldp             fp, lr, [SP], #0x10
    // 0x735028: ret
    //     0x735028: ret             
    // 0x73502c: r0 = 3600000000
    //     0x73502c: mov             x0, #0xa400
    //     0x735030: movk            x0, #0xd693, lsl #16
    // 0x735034: sdiv            x2, x1, x0
    // 0x735038: cmp             x2, #0x18
    // 0x73503c: b.ge            #0x735090
    // 0x735040: r0 = BoxInt64Instr(r2)
    //     0x735040: sbfiz           x0, x2, #1, #0x1f
    //     0x735044: cmp             x2, x0, asr #1
    //     0x735048: b.eq            #0x735054
    //     0x73504c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x735050: stur            x2, [x0, #7]
    // 0x735054: r1 = Null
    //     0x735054: mov             x1, NULL
    // 0x735058: r2 = 4
    //     0x735058: mov             x2, #4
    // 0x73505c: stur            x0, [fp, #-8]
    // 0x735060: r0 = AllocateArray()
    //     0x735060: bl              #0x9280a0  ; AllocateArrayStub
    // 0x735064: mov             x1, x0
    // 0x735068: ldur            x0, [fp, #-8]
    // 0x73506c: StoreField: r1->field_f = r0
    //     0x73506c: stur            w0, [x1, #0xf]
    // 0x735070: r16 = " saat önce güncellendi"
    //     0x735070: add             x16, PP, #0x15, lsl #12  ; [pp+0x15580] " saat önce güncellendi"
    //     0x735074: ldr             x16, [x16, #0x580]
    // 0x735078: StoreField: r1->field_13 = r16
    //     0x735078: stur            w16, [x1, #0x13]
    // 0x73507c: str             x1, [SP]
    // 0x735080: r0 = _interpolate()
    //     0x735080: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x735084: LeaveFrame
    //     0x735084: mov             SP, fp
    //     0x735088: ldp             fp, lr, [SP], #0x10
    // 0x73508c: ret
    //     0x73508c: ret             
    // 0x735090: r0 = 86400000000
    //     0x735090: ldr             x0, [PP, #0x7d78]  ; [pp+0x7d78] IMM: 0x141dd76000
    // 0x735094: sdiv            x2, x1, x0
    // 0x735098: r0 = BoxInt64Instr(r2)
    //     0x735098: sbfiz           x0, x2, #1, #0x1f
    //     0x73509c: cmp             x2, x0, asr #1
    //     0x7350a0: b.eq            #0x7350ac
    //     0x7350a4: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7350a8: stur            x2, [x0, #7]
    // 0x7350ac: r1 = Null
    //     0x7350ac: mov             x1, NULL
    // 0x7350b0: r2 = 4
    //     0x7350b0: mov             x2, #4
    // 0x7350b4: stur            x0, [fp, #-8]
    // 0x7350b8: r0 = AllocateArray()
    //     0x7350b8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7350bc: mov             x1, x0
    // 0x7350c0: ldur            x0, [fp, #-8]
    // 0x7350c4: StoreField: r1->field_f = r0
    //     0x7350c4: stur            w0, [x1, #0xf]
    // 0x7350c8: r16 = " gün önce güncellendi"
    //     0x7350c8: add             x16, PP, #0x15, lsl #12  ; [pp+0x15588] " gün önce güncellendi"
    //     0x7350cc: ldr             x16, [x16, #0x588]
    // 0x7350d0: StoreField: r1->field_13 = r16
    //     0x7350d0: stur            w16, [x1, #0x13]
    // 0x7350d4: str             x1, [SP]
    // 0x7350d8: r0 = _interpolate()
    //     0x7350d8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7350dc: LeaveFrame
    //     0x7350dc: mov             SP, fp
    //     0x7350e0: ldp             fp, lr, [SP], #0x10
    // 0x7350e4: ret
    //     0x7350e4: ret             
    // 0x7350e8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7350e8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7350ec: b               #0x734f40
    // 0x7350f0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7350f0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _buildMapPlaceholder(/* No info */) {
    // ** addr: 0x7350f4, size: 0x550
    // 0x7350f4: EnterFrame
    //     0x7350f4: stp             fp, lr, [SP, #-0x10]!
    //     0x7350f8: mov             fp, SP
    // 0x7350fc: AllocStack(0x48)
    //     0x7350fc: sub             SP, SP, #0x48
    // 0x735100: SetupParameters(_RehberIletisimPageState this /* r1 => r0, fp-0x10 */, {dynamic isError = false /* r3, fp-0x8 */})
    //     0x735100: mov             x0, x1
    //     0x735104: stur            x1, [fp, #-0x10]
    //     0x735108: ldur            w1, [x4, #0x13]
    //     0x73510c: ldur            w2, [x4, #0x1f]
    //     0x735110: add             x2, x2, HEAP, lsl #32
    //     0x735114: add             x16, PP, #0x15, lsl #12  ; [pp+0x15590] "isError"
    //     0x735118: ldr             x16, [x16, #0x590]
    //     0x73511c: cmp             w2, w16
    //     0x735120: b.ne            #0x735140
    //     0x735124: ldur            w2, [x4, #0x23]
    //     0x735128: add             x2, x2, HEAP, lsl #32
    //     0x73512c: sub             w3, w1, w2
    //     0x735130: add             x1, fp, w3, sxtw #2
    //     0x735134: ldr             x1, [x1, #8]
    //     0x735138: mov             x3, x1
    //     0x73513c: b               #0x735144
    //     0x735140: add             x3, NULL, #0x30  ; false
    //     0x735144: stur            x3, [fp, #-8]
    // 0x735148: CheckStackOverflow
    //     0x735148: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73514c: cmp             SP, x16
    //     0x735150: b.ls            #0x735618
    // 0x735154: tbnz            w3, #4, #0x7351d0
    // 0x735158: r1 = _ConstMap len:10
    //     0x735158: ldr             x1, [PP, #0x5760]  ; [pp+0x5760] Map<int, Color>(10)
    // 0x73515c: r2 = 200
    //     0x73515c: mov             x2, #0xc8
    // 0x735160: r0 = []()
    //     0x735160: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x735164: stur            x0, [fp, #-0x18]
    // 0x735168: cmp             w0, NULL
    // 0x73516c: b.eq            #0x735620
    // 0x735170: r1 = _ConstMap len:10
    //     0x735170: ldr             x1, [PP, #0x5760]  ; [pp+0x5760] Map<int, Color>(10)
    // 0x735174: r2 = 100
    //     0x735174: mov             x2, #0x64
    // 0x735178: r0 = []()
    //     0x735178: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x73517c: stur            x0, [fp, #-0x20]
    // 0x735180: cmp             w0, NULL
    // 0x735184: b.eq            #0x735624
    // 0x735188: r1 = Null
    //     0x735188: mov             x1, NULL
    // 0x73518c: r2 = 4
    //     0x73518c: mov             x2, #4
    // 0x735190: r0 = AllocateArray()
    //     0x735190: bl              #0x9280a0  ; AllocateArrayStub
    // 0x735194: mov             x2, x0
    // 0x735198: ldur            x0, [fp, #-0x18]
    // 0x73519c: stur            x2, [fp, #-0x28]
    // 0x7351a0: StoreField: r2->field_f = r0
    //     0x7351a0: stur            w0, [x2, #0xf]
    // 0x7351a4: ldur            x0, [fp, #-0x20]
    // 0x7351a8: StoreField: r2->field_13 = r0
    //     0x7351a8: stur            w0, [x2, #0x13]
    // 0x7351ac: r1 = <Color>
    //     0x7351ac: add             x1, PP, #0xc, lsl #12  ; [pp+0xc800] TypeArguments: <Color>
    //     0x7351b0: ldr             x1, [x1, #0x800]
    // 0x7351b4: r0 = AllocateGrowableArray()
    //     0x7351b4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7351b8: mov             x1, x0
    // 0x7351bc: ldur            x0, [fp, #-0x28]
    // 0x7351c0: StoreField: r1->field_f = r0
    //     0x7351c0: stur            w0, [x1, #0xf]
    // 0x7351c4: r0 = 4
    //     0x7351c4: mov             x0, #4
    // 0x7351c8: StoreField: r1->field_b = r0
    //     0x7351c8: stur            w0, [x1, #0xb]
    // 0x7351cc: b               #0x735248
    // 0x7351d0: r0 = 4
    //     0x7351d0: mov             x0, #4
    // 0x7351d4: r1 = _ConstMap len:10
    //     0x7351d4: ldr             x1, [PP, #0x5728]  ; [pp+0x5728] Map<int, Color>(10)
    // 0x7351d8: r2 = 200
    //     0x7351d8: mov             x2, #0xc8
    // 0x7351dc: r0 = []()
    //     0x7351dc: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7351e0: stur            x0, [fp, #-0x18]
    // 0x7351e4: cmp             w0, NULL
    // 0x7351e8: b.eq            #0x735628
    // 0x7351ec: r1 = _ConstMap len:10
    //     0x7351ec: ldr             x1, [PP, #0x5728]  ; [pp+0x5728] Map<int, Color>(10)
    // 0x7351f0: r2 = 100
    //     0x7351f0: mov             x2, #0x64
    // 0x7351f4: r0 = []()
    //     0x7351f4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7351f8: stur            x0, [fp, #-0x20]
    // 0x7351fc: cmp             w0, NULL
    // 0x735200: b.eq            #0x73562c
    // 0x735204: r1 = Null
    //     0x735204: mov             x1, NULL
    // 0x735208: r2 = 4
    //     0x735208: mov             x2, #4
    // 0x73520c: r0 = AllocateArray()
    //     0x73520c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x735210: mov             x2, x0
    // 0x735214: ldur            x0, [fp, #-0x18]
    // 0x735218: stur            x2, [fp, #-0x28]
    // 0x73521c: StoreField: r2->field_f = r0
    //     0x73521c: stur            w0, [x2, #0xf]
    // 0x735220: ldur            x0, [fp, #-0x20]
    // 0x735224: StoreField: r2->field_13 = r0
    //     0x735224: stur            w0, [x2, #0x13]
    // 0x735228: r1 = <Color>
    //     0x735228: add             x1, PP, #0xc, lsl #12  ; [pp+0xc800] TypeArguments: <Color>
    //     0x73522c: ldr             x1, [x1, #0x800]
    // 0x735230: r0 = AllocateGrowableArray()
    //     0x735230: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x735234: mov             x1, x0
    // 0x735238: ldur            x0, [fp, #-0x28]
    // 0x73523c: StoreField: r1->field_f = r0
    //     0x73523c: stur            w0, [x1, #0xf]
    // 0x735240: r0 = 4
    //     0x735240: mov             x0, #4
    // 0x735244: StoreField: r1->field_b = r0
    //     0x735244: stur            w0, [x1, #0xb]
    // 0x735248: ldur            x0, [fp, #-8]
    // 0x73524c: stur            x1, [fp, #-0x18]
    // 0x735250: r0 = LinearGradient()
    //     0x735250: bl              #0x55ed60  ; AllocateLinearGradientStub -> LinearGradient (size=0x20)
    // 0x735254: mov             x1, x0
    // 0x735258: r0 = Instance_Alignment
    //     0x735258: add             x0, PP, #0x10, lsl #12  ; [pp+0x10f58] Obj!Alignment@a0ceb1
    //     0x73525c: ldr             x0, [x0, #0xf58]
    // 0x735260: stur            x1, [fp, #-0x20]
    // 0x735264: StoreField: r1->field_13 = r0
    //     0x735264: stur            w0, [x1, #0x13]
    // 0x735268: r0 = Instance_Alignment
    //     0x735268: add             x0, PP, #0x15, lsl #12  ; [pp+0x15598] Obj!Alignment@a0cf71
    //     0x73526c: ldr             x0, [x0, #0x598]
    // 0x735270: ArrayStore: r1[0] = r0  ; List_4
    //     0x735270: stur            w0, [x1, #0x17]
    // 0x735274: r0 = Instance_TileMode
    //     0x735274: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d08] Obj!TileMode@a2d831
    //     0x735278: ldr             x0, [x0, #0xd08]
    // 0x73527c: StoreField: r1->field_1b = r0
    //     0x73527c: stur            w0, [x1, #0x1b]
    // 0x735280: ldur            x0, [fp, #-0x18]
    // 0x735284: StoreField: r1->field_7 = r0
    //     0x735284: stur            w0, [x1, #7]
    // 0x735288: r0 = BoxDecoration()
    //     0x735288: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x73528c: mov             x3, x0
    // 0x735290: ldur            x0, [fp, #-0x20]
    // 0x735294: stur            x3, [fp, #-0x28]
    // 0x735298: StoreField: r3->field_1b = r0
    //     0x735298: stur            w0, [x3, #0x1b]
    // 0x73529c: r0 = Instance_BoxShape
    //     0x73529c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7352a0: ldr             x0, [x0, #0x1c8]
    // 0x7352a4: StoreField: r3->field_23 = r0
    //     0x7352a4: stur            w0, [x3, #0x23]
    // 0x7352a8: ldur            x0, [fp, #-8]
    // 0x7352ac: tbnz            w0, #4, #0x7352bc
    // 0x7352b0: r4 = Instance_IconData
    //     0x7352b0: add             x4, PP, #0x15, lsl #12  ; [pp+0x155a0] Obj!IconData@a0a201
    //     0x7352b4: ldr             x4, [x4, #0x5a0]
    // 0x7352b8: b               #0x7352c4
    // 0x7352bc: r4 = Instance_IconData
    //     0x7352bc: add             x4, PP, #0x15, lsl #12  ; [pp+0x155a8] Obj!IconData@a0a621
    //     0x7352c0: ldr             x4, [x4, #0x5a8]
    // 0x7352c4: stur            x4, [fp, #-0x18]
    // 0x7352c8: tbnz            w0, #4, #0x7352e8
    // 0x7352cc: r1 = _ConstMap len:10
    //     0x7352cc: ldr             x1, [PP, #0x5760]  ; [pp+0x5760] Map<int, Color>(10)
    // 0x7352d0: r2 = 600
    //     0x7352d0: mov             x2, #0x258
    // 0x7352d4: r0 = []()
    //     0x7352d4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7352d8: cmp             w0, NULL
    // 0x7352dc: b.eq            #0x735630
    // 0x7352e0: mov             x2, x0
    // 0x7352e4: b               #0x735300
    // 0x7352e8: r1 = _ConstMap len:10
    //     0x7352e8: ldr             x1, [PP, #0x5728]  ; [pp+0x5728] Map<int, Color>(10)
    // 0x7352ec: r2 = 600
    //     0x7352ec: mov             x2, #0x258
    // 0x7352f0: r0 = []()
    //     0x7352f0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7352f4: cmp             w0, NULL
    // 0x7352f8: b.eq            #0x735634
    // 0x7352fc: mov             x2, x0
    // 0x735300: ldur            x0, [fp, #-8]
    // 0x735304: ldur            x1, [fp, #-0x18]
    // 0x735308: stur            x2, [fp, #-0x20]
    // 0x73530c: r0 = Icon()
    //     0x73530c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x735310: mov             x3, x0
    // 0x735314: ldur            x0, [fp, #-0x18]
    // 0x735318: stur            x3, [fp, #-0x30]
    // 0x73531c: StoreField: r3->field_b = r0
    //     0x73531c: stur            w0, [x3, #0xb]
    // 0x735320: r0 = 60.000000
    //     0x735320: add             x0, PP, #0x15, lsl #12  ; [pp+0x155b0] 60
    //     0x735324: ldr             x0, [x0, #0x5b0]
    // 0x735328: StoreField: r3->field_f = r0
    //     0x735328: stur            w0, [x3, #0xf]
    // 0x73532c: ldur            x0, [fp, #-0x20]
    // 0x735330: StoreField: r3->field_23 = r0
    //     0x735330: stur            w0, [x3, #0x23]
    // 0x735334: ldur            x0, [fp, #-8]
    // 0x735338: tbnz            w0, #4, #0x735348
    // 0x73533c: r4 = "Harita yüklenemedi"
    //     0x73533c: add             x4, PP, #0x15, lsl #12  ; [pp+0x155b8] "Harita yüklenemedi"
    //     0x735340: ldr             x4, [x4, #0x5b8]
    // 0x735344: b               #0x735374
    // 0x735348: ldur            x1, [fp, #-0x10]
    // 0x73534c: LoadField: r2 = r1->field_2b
    //     0x73534c: ldur            w2, [x1, #0x2b]
    // 0x735350: DecompressPointer r2
    //     0x735350: add             x2, x2, HEAP, lsl #32
    // 0x735354: cmp             w2, NULL
    // 0x735358: b.ne            #0x735368
    // 0x73535c: r1 = "Rehber konumu bekleniyor..."
    //     0x73535c: add             x1, PP, #0x15, lsl #12  ; [pp+0x155c0] "Rehber konumu bekleniyor..."
    //     0x735360: ldr             x1, [x1, #0x5c0]
    // 0x735364: b               #0x735370
    // 0x735368: r1 = "Harita yükleniyor..."
    //     0x735368: add             x1, PP, #0x15, lsl #12  ; [pp+0x155c8] "Harita yükleniyor..."
    //     0x73536c: ldr             x1, [x1, #0x5c8]
    // 0x735370: mov             x4, x1
    // 0x735374: stur            x4, [fp, #-0x10]
    // 0x735378: tbnz            w0, #4, #0x735398
    // 0x73537c: r1 = _ConstMap len:10
    //     0x73537c: ldr             x1, [PP, #0x5760]  ; [pp+0x5760] Map<int, Color>(10)
    // 0x735380: r2 = 1400
    //     0x735380: mov             x2, #0x578
    // 0x735384: r0 = []()
    //     0x735384: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x735388: cmp             w0, NULL
    // 0x73538c: b.eq            #0x735638
    // 0x735390: mov             x3, x0
    // 0x735394: b               #0x7353b0
    // 0x735398: r1 = _ConstMap len:10
    //     0x735398: ldr             x1, [PP, #0x5728]  ; [pp+0x5728] Map<int, Color>(10)
    // 0x73539c: r2 = 1400
    //     0x73539c: mov             x2, #0x578
    // 0x7353a0: r0 = []()
    //     0x7353a0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7353a4: cmp             w0, NULL
    // 0x7353a8: b.eq            #0x73563c
    // 0x7353ac: mov             x3, x0
    // 0x7353b0: ldur            x1, [fp, #-8]
    // 0x7353b4: ldur            x0, [fp, #-0x30]
    // 0x7353b8: ldur            x2, [fp, #-0x10]
    // 0x7353bc: stur            x3, [fp, #-0x18]
    // 0x7353c0: r0 = TextStyle()
    //     0x7353c0: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7353c4: mov             x1, x0
    // 0x7353c8: r0 = true
    //     0x7353c8: add             x0, NULL, #0x20  ; true
    // 0x7353cc: stur            x1, [fp, #-0x20]
    // 0x7353d0: StoreField: r1->field_7 = r0
    //     0x7353d0: stur            w0, [x1, #7]
    // 0x7353d4: ldur            x2, [fp, #-0x18]
    // 0x7353d8: StoreField: r1->field_b = r2
    //     0x7353d8: stur            w2, [x1, #0xb]
    // 0x7353dc: r2 = 14.000000
    //     0x7353dc: add             x2, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x7353e0: ldr             x2, [x2, #0x1c8]
    // 0x7353e4: StoreField: r1->field_1f = r2
    //     0x7353e4: stur            w2, [x1, #0x1f]
    // 0x7353e8: r2 = Instance_FontWeight
    //     0x7353e8: add             x2, PP, #0x15, lsl #12  ; [pp+0x155d0] Obj!FontWeight@a20fe1
    //     0x7353ec: ldr             x2, [x2, #0x5d0]
    // 0x7353f0: StoreField: r1->field_23 = r2
    //     0x7353f0: stur            w2, [x1, #0x23]
    // 0x7353f4: r0 = Text()
    //     0x7353f4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7353f8: mov             x3, x0
    // 0x7353fc: ldur            x0, [fp, #-0x10]
    // 0x735400: stur            x3, [fp, #-0x18]
    // 0x735404: StoreField: r3->field_b = r0
    //     0x735404: stur            w0, [x3, #0xb]
    // 0x735408: ldur            x0, [fp, #-0x20]
    // 0x73540c: StoreField: r3->field_13 = r0
    //     0x73540c: stur            w0, [x3, #0x13]
    // 0x735410: r1 = Null
    //     0x735410: mov             x1, NULL
    // 0x735414: r2 = 6
    //     0x735414: mov             x2, #6
    // 0x735418: r0 = AllocateArray()
    //     0x735418: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73541c: mov             x2, x0
    // 0x735420: ldur            x0, [fp, #-0x30]
    // 0x735424: stur            x2, [fp, #-0x10]
    // 0x735428: StoreField: r2->field_f = r0
    //     0x735428: stur            w0, [x2, #0xf]
    // 0x73542c: r16 = Instance_SizedBox
    //     0x73542c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x735430: ldr             x16, [x16, #0x220]
    // 0x735434: StoreField: r2->field_13 = r16
    //     0x735434: stur            w16, [x2, #0x13]
    // 0x735438: ldur            x0, [fp, #-0x18]
    // 0x73543c: ArrayStore: r2[0] = r0  ; List_4
    //     0x73543c: stur            w0, [x2, #0x17]
    // 0x735440: r1 = <Widget>
    //     0x735440: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x735444: r0 = AllocateGrowableArray()
    //     0x735444: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x735448: mov             x3, x0
    // 0x73544c: ldur            x0, [fp, #-0x10]
    // 0x735450: stur            x3, [fp, #-0x18]
    // 0x735454: StoreField: r3->field_f = r0
    //     0x735454: stur            w0, [x3, #0xf]
    // 0x735458: r0 = 6
    //     0x735458: mov             x0, #6
    // 0x73545c: StoreField: r3->field_b = r0
    //     0x73545c: stur            w0, [x3, #0xb]
    // 0x735460: ldur            x0, [fp, #-8]
    // 0x735464: tbnz            w0, #4, #0x735564
    // 0x735468: r1 = _ConstMap len:10
    //     0x735468: ldr             x1, [PP, #0x5760]  ; [pp+0x5760] Map<int, Color>(10)
    // 0x73546c: r2 = 1200
    //     0x73546c: mov             x2, #0x4b0
    // 0x735470: r0 = []()
    //     0x735470: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x735474: stur            x0, [fp, #-8]
    // 0x735478: cmp             w0, NULL
    // 0x73547c: b.eq            #0x735640
    // 0x735480: r0 = TextStyle()
    //     0x735480: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x735484: mov             x1, x0
    // 0x735488: r0 = true
    //     0x735488: add             x0, NULL, #0x20  ; true
    // 0x73548c: stur            x1, [fp, #-0x10]
    // 0x735490: StoreField: r1->field_7 = r0
    //     0x735490: stur            w0, [x1, #7]
    // 0x735494: ldur            x0, [fp, #-8]
    // 0x735498: StoreField: r1->field_b = r0
    //     0x735498: stur            w0, [x1, #0xb]
    // 0x73549c: r0 = 12.000000
    //     0x73549c: add             x0, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x7354a0: ldr             x0, [x0, #0xae0]
    // 0x7354a4: StoreField: r1->field_1f = r0
    //     0x7354a4: stur            w0, [x1, #0x1f]
    // 0x7354a8: r0 = Text()
    //     0x7354a8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7354ac: mov             x1, x0
    // 0x7354b0: r0 = "Haritayı Google Maps\'te açmak için tıklayın"
    //     0x7354b0: add             x0, PP, #0x15, lsl #12  ; [pp+0x155d8] "Haritayı Google Maps\'te açmak için tıklayın"
    //     0x7354b4: ldr             x0, [x0, #0x5d8]
    // 0x7354b8: stur            x1, [fp, #-8]
    // 0x7354bc: StoreField: r1->field_b = r0
    //     0x7354bc: stur            w0, [x1, #0xb]
    // 0x7354c0: ldur            x0, [fp, #-0x10]
    // 0x7354c4: StoreField: r1->field_13 = r0
    //     0x7354c4: stur            w0, [x1, #0x13]
    // 0x7354c8: r0 = Padding()
    //     0x7354c8: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x7354cc: mov             x2, x0
    // 0x7354d0: r0 = Instance_EdgeInsets
    //     0x7354d0: add             x0, PP, #0x15, lsl #12  ; [pp+0x155e0] Obj!EdgeInsets@a0c711
    //     0x7354d4: ldr             x0, [x0, #0x5e0]
    // 0x7354d8: stur            x2, [fp, #-0x10]
    // 0x7354dc: StoreField: r2->field_f = r0
    //     0x7354dc: stur            w0, [x2, #0xf]
    // 0x7354e0: ldur            x0, [fp, #-8]
    // 0x7354e4: StoreField: r2->field_b = r0
    //     0x7354e4: stur            w0, [x2, #0xb]
    // 0x7354e8: ldur            x0, [fp, #-0x18]
    // 0x7354ec: LoadField: r1 = r0->field_b
    //     0x7354ec: ldur            w1, [x0, #0xb]
    // 0x7354f0: LoadField: r3 = r0->field_f
    //     0x7354f0: ldur            w3, [x0, #0xf]
    // 0x7354f4: DecompressPointer r3
    //     0x7354f4: add             x3, x3, HEAP, lsl #32
    // 0x7354f8: LoadField: r4 = r3->field_b
    //     0x7354f8: ldur            w4, [x3, #0xb]
    // 0x7354fc: r3 = LoadInt32Instr(r1)
    //     0x7354fc: sbfx            x3, x1, #1, #0x1f
    // 0x735500: stur            x3, [fp, #-0x38]
    // 0x735504: r1 = LoadInt32Instr(r4)
    //     0x735504: sbfx            x1, x4, #1, #0x1f
    // 0x735508: cmp             x3, x1
    // 0x73550c: b.ne            #0x735518
    // 0x735510: mov             x1, x0
    // 0x735514: r0 = _growToNextCapacity()
    //     0x735514: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x735518: ldur            x2, [fp, #-0x18]
    // 0x73551c: ldur            x3, [fp, #-0x38]
    // 0x735520: add             x0, x3, #1
    // 0x735524: lsl             x1, x0, #1
    // 0x735528: StoreField: r2->field_b = r1
    //     0x735528: stur            w1, [x2, #0xb]
    // 0x73552c: LoadField: r1 = r2->field_f
    //     0x73552c: ldur            w1, [x2, #0xf]
    // 0x735530: DecompressPointer r1
    //     0x735530: add             x1, x1, HEAP, lsl #32
    // 0x735534: ldur            x0, [fp, #-0x10]
    // 0x735538: ArrayStore: r1[r3] = r0  ; List_4
    //     0x735538: add             x25, x1, x3, lsl #2
    //     0x73553c: add             x25, x25, #0xf
    //     0x735540: str             w0, [x25]
    //     0x735544: tbz             w0, #0, #0x735560
    //     0x735548: ldurb           w16, [x1, #-1]
    //     0x73554c: ldurb           w17, [x0, #-1]
    //     0x735550: and             x16, x17, x16, lsr #2
    //     0x735554: tst             x16, HEAP, lsr #32
    //     0x735558: b.eq            #0x735560
    //     0x73555c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x735560: b               #0x735568
    // 0x735564: mov             x2, x3
    // 0x735568: r0 = Column()
    //     0x735568: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x73556c: mov             x1, x0
    // 0x735570: r0 = Instance_Axis
    //     0x735570: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x735574: stur            x1, [fp, #-8]
    // 0x735578: StoreField: r1->field_f = r0
    //     0x735578: stur            w0, [x1, #0xf]
    // 0x73557c: r0 = Instance_MainAxisAlignment
    //     0x73557c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x735580: ldr             x0, [x0, #0x328]
    // 0x735584: StoreField: r1->field_13 = r0
    //     0x735584: stur            w0, [x1, #0x13]
    // 0x735588: r0 = Instance_MainAxisSize
    //     0x735588: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x73558c: ldr             x0, [x0, #0x330]
    // 0x735590: ArrayStore: r1[0] = r0  ; List_4
    //     0x735590: stur            w0, [x1, #0x17]
    // 0x735594: r0 = Instance_CrossAxisAlignment
    //     0x735594: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x735598: ldr             x0, [x0, #0x338]
    // 0x73559c: StoreField: r1->field_1b = r0
    //     0x73559c: stur            w0, [x1, #0x1b]
    // 0x7355a0: r0 = Instance_VerticalDirection
    //     0x7355a0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7355a4: ldr             x0, [x0, #0x340]
    // 0x7355a8: StoreField: r1->field_23 = r0
    //     0x7355a8: stur            w0, [x1, #0x23]
    // 0x7355ac: r0 = Instance_Clip
    //     0x7355ac: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7355b0: ldr             x0, [x0, #0x348]
    // 0x7355b4: StoreField: r1->field_2b = r0
    //     0x7355b4: stur            w0, [x1, #0x2b]
    // 0x7355b8: StoreField: r1->field_2f = rZR
    //     0x7355b8: stur            xzr, [x1, #0x2f]
    // 0x7355bc: ldur            x0, [fp, #-0x18]
    // 0x7355c0: StoreField: r1->field_b = r0
    //     0x7355c0: stur            w0, [x1, #0xb]
    // 0x7355c4: r0 = Center()
    //     0x7355c4: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x7355c8: mov             x1, x0
    // 0x7355cc: r0 = Instance_Alignment
    //     0x7355cc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x7355d0: ldr             x0, [x0, #0x60]
    // 0x7355d4: stur            x1, [fp, #-0x10]
    // 0x7355d8: StoreField: r1->field_f = r0
    //     0x7355d8: stur            w0, [x1, #0xf]
    // 0x7355dc: ldur            x0, [fp, #-8]
    // 0x7355e0: StoreField: r1->field_b = r0
    //     0x7355e0: stur            w0, [x1, #0xb]
    // 0x7355e4: r0 = Container()
    //     0x7355e4: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7355e8: stur            x0, [fp, #-8]
    // 0x7355ec: ldur            x16, [fp, #-0x28]
    // 0x7355f0: ldur            lr, [fp, #-0x10]
    // 0x7355f4: stp             lr, x16, [SP]
    // 0x7355f8: mov             x1, x0
    // 0x7355fc: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, decoration, 0x1, null]
    //     0x7355fc: add             x4, PP, #0x14, lsl #12  ; [pp+0x14fa8] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "decoration", 0x1, Null]
    //     0x735600: ldr             x4, [x4, #0xfa8]
    // 0x735604: r0 = Container()
    //     0x735604: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x735608: ldur            x0, [fp, #-8]
    // 0x73560c: LeaveFrame
    //     0x73560c: mov             SP, fp
    //     0x735610: ldp             fp, lr, [SP], #0x10
    // 0x735614: ret
    //     0x735614: ret             
    // 0x735618: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x735618: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73561c: b               #0x735154
    // 0x735620: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x735620: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x735624: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x735624: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x735628: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x735628: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x73562c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73562c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x735630: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x735630: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x735634: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x735634: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x735638: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x735638: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x73563c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73563c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x735640: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x735640: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, Widget, ImageChunkEvent?) {
    // ** addr: 0x735644, size: 0x64
    // 0x735644: EnterFrame
    //     0x735644: stp             fp, lr, [SP, #-0x10]!
    //     0x735648: mov             fp, SP
    // 0x73564c: ldr             x0, [fp, #0x28]
    // 0x735650: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x735650: ldur            w1, [x0, #0x17]
    // 0x735654: DecompressPointer r1
    //     0x735654: add             x1, x1, HEAP, lsl #32
    // 0x735658: CheckStackOverflow
    //     0x735658: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73565c: cmp             SP, x16
    //     0x735660: b.ls            #0x7356a0
    // 0x735664: ldr             x0, [fp, #0x10]
    // 0x735668: cmp             w0, NULL
    // 0x73566c: b.ne            #0x735680
    // 0x735670: ldr             x0, [fp, #0x18]
    // 0x735674: LeaveFrame
    //     0x735674: mov             SP, fp
    //     0x735678: ldp             fp, lr, [SP], #0x10
    // 0x73567c: ret
    //     0x73567c: ret             
    // 0x735680: LoadField: r0 = r1->field_f
    //     0x735680: ldur            w0, [x1, #0xf]
    // 0x735684: DecompressPointer r0
    //     0x735684: add             x0, x0, HEAP, lsl #32
    // 0x735688: mov             x1, x0
    // 0x73568c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x73568c: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x735690: r0 = _buildMapPlaceholder()
    //     0x735690: bl              #0x7350f4  ; [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_buildMapPlaceholder
    // 0x735694: LeaveFrame
    //     0x735694: mov             SP, fp
    //     0x735698: ldp             fp, lr, [SP], #0x10
    // 0x73569c: ret
    //     0x73569c: ret             
    // 0x7356a0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7356a0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7356a4: b               #0x735664
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, Object, StackTrace?) {
    // ** addr: 0x7356a8, size: 0xb0
    // 0x7356a8: EnterFrame
    //     0x7356a8: stp             fp, lr, [SP, #-0x10]!
    //     0x7356ac: mov             fp, SP
    // 0x7356b0: AllocStack(0x10)
    //     0x7356b0: sub             SP, SP, #0x10
    // 0x7356b4: SetupParameters([dynamic _ /* r0 */])
    //     0x7356b4: ldr             x0, [fp, #0x28]
    //     0x7356b8: ldur            w1, [x0, #0x17]
    //     0x7356bc: add             x1, x1, HEAP, lsl #32
    //     0x7356c0: stur            x1, [fp, #-8]
    // 0x7356c4: CheckStackOverflow
    //     0x7356c4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7356c8: cmp             SP, x16
    //     0x7356cc: b.ls            #0x735750
    // 0x7356d0: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x7356d0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7356d4: ldr             x0, [x0, #0xcb8]
    //     0x7356d8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7356dc: cmp             w0, w16
    //     0x7356e0: b.ne            #0x7356ec
    //     0x7356e4: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x7356e8: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7356ec: r1 = Null
    //     0x7356ec: mov             x1, NULL
    // 0x7356f0: r2 = 4
    //     0x7356f0: mov             x2, #4
    // 0x7356f4: r0 = AllocateArray()
    //     0x7356f4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7356f8: r16 = "Harita yükleme hatası: "
    //     0x7356f8: add             x16, PP, #0x15, lsl #12  ; [pp+0x15560] "Harita yükleme hatası: "
    //     0x7356fc: ldr             x16, [x16, #0x560]
    // 0x735700: StoreField: r0->field_f = r16
    //     0x735700: stur            w16, [x0, #0xf]
    // 0x735704: ldr             x1, [fp, #0x18]
    // 0x735708: StoreField: r0->field_13 = r1
    //     0x735708: stur            w1, [x0, #0x13]
    // 0x73570c: str             x0, [SP]
    // 0x735710: r0 = _interpolate()
    //     0x735710: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x735714: str             NULL, [SP]
    // 0x735718: mov             x1, x0
    // 0x73571c: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x73571c: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x735720: r0 = debugPrintThrottled()
    //     0x735720: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x735724: ldur            x0, [fp, #-8]
    // 0x735728: LoadField: r1 = r0->field_f
    //     0x735728: ldur            w1, [x0, #0xf]
    // 0x73572c: DecompressPointer r1
    //     0x73572c: add             x1, x1, HEAP, lsl #32
    // 0x735730: r16 = true
    //     0x735730: add             x16, NULL, #0x20  ; true
    // 0x735734: str             x16, [SP]
    // 0x735738: r4 = const [0, 0x2, 0x1, 0x1, isError, 0x1, null]
    //     0x735738: add             x4, PP, #0x15, lsl #12  ; [pp+0x15568] List(7) [0, 0x2, 0x1, 0x1, "isError", 0x1, Null]
    //     0x73573c: ldr             x4, [x4, #0x568]
    // 0x735740: r0 = _buildMapPlaceholder()
    //     0x735740: bl              #0x7350f4  ; [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_buildMapPlaceholder
    // 0x735744: LeaveFrame
    //     0x735744: mov             SP, fp
    //     0x735748: ldp             fp, lr, [SP], #0x10
    // 0x73574c: ret
    //     0x73574c: ret             
    // 0x735750: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x735750: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x735754: b               #0x7356d0
  }
  _ _buildTripInfoCard(/* No info */) {
    // ** addr: 0x735758, size: 0x584
    // 0x735758: EnterFrame
    //     0x735758: stp             fp, lr, [SP, #-0x10]!
    //     0x73575c: mov             fp, SP
    // 0x735760: AllocStack(0x50)
    //     0x735760: sub             SP, SP, #0x50
    // 0x735764: SetupParameters(_RehberIletisimPageState this /* r1 => r1, fp-0x8 */)
    //     0x735764: stur            x1, [fp, #-8]
    // 0x735768: CheckStackOverflow
    //     0x735768: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73576c: cmp             SP, x16
    //     0x735770: b.ls            #0x735cb8
    // 0x735774: LoadField: r0 = r1->field_1f
    //     0x735774: ldur            w0, [x1, #0x1f]
    // 0x735778: DecompressPointer r0
    //     0x735778: add             x0, x0, HEAP, lsl #32
    // 0x73577c: r2 = LoadClassIdInstr(r0)
    //     0x73577c: ldur            x2, [x0, #-1]
    //     0x735780: ubfx            x2, x2, #0xc, #0x14
    // 0x735784: r16 = "mekke"
    //     0x735784: add             x16, PP, #0x15, lsl #12  ; [pp+0x155f8] "mekke"
    //     0x735788: ldr             x16, [x16, #0x5f8]
    // 0x73578c: stp             x16, x0, [SP]
    // 0x735790: mov             x0, x2
    // 0x735794: mov             lr, x0
    // 0x735798: ldr             lr, [x21, lr, lsl #3]
    // 0x73579c: blr             lr
    // 0x7357a0: tbnz            w0, #4, #0x7357c4
    // 0x7357a4: r1 = _ConstMap len:10
    //     0x7357a4: add             x1, PP, #0x15, lsl #12  ; [pp+0x15600] Map<int, Color>(10)
    //     0x7357a8: ldr             x1, [x1, #0x600]
    // 0x7357ac: r2 = 100
    //     0x7357ac: mov             x2, #0x64
    // 0x7357b0: r0 = []()
    //     0x7357b0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7357b4: cmp             w0, NULL
    // 0x7357b8: b.eq            #0x735cc0
    // 0x7357bc: mov             x1, x0
    // 0x7357c0: b               #0x7357e0
    // 0x7357c4: r1 = _ConstMap len:10
    //     0x7357c4: add             x1, PP, #0x14, lsl #12  ; [pp+0x14918] Map<int, Color>(10)
    //     0x7357c8: ldr             x1, [x1, #0x918]
    // 0x7357cc: r2 = 100
    //     0x7357cc: mov             x2, #0x64
    // 0x7357d0: r0 = []()
    //     0x7357d0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7357d4: cmp             w0, NULL
    // 0x7357d8: b.eq            #0x735cc4
    // 0x7357dc: mov             x1, x0
    // 0x7357e0: ldur            x0, [fp, #-8]
    // 0x7357e4: stur            x1, [fp, #-0x10]
    // 0x7357e8: r0 = Radius()
    //     0x7357e8: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7357ec: d0 = 12.000000
    //     0x7357ec: fmov            d0, #12.00000000
    // 0x7357f0: stur            x0, [fp, #-0x18]
    // 0x7357f4: StoreField: r0->field_7 = d0
    //     0x7357f4: stur            d0, [x0, #7]
    // 0x7357f8: StoreField: r0->field_f = d0
    //     0x7357f8: stur            d0, [x0, #0xf]
    // 0x7357fc: r0 = BorderRadius()
    //     0x7357fc: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x735800: mov             x1, x0
    // 0x735804: ldur            x0, [fp, #-0x18]
    // 0x735808: stur            x1, [fp, #-0x20]
    // 0x73580c: StoreField: r1->field_7 = r0
    //     0x73580c: stur            w0, [x1, #7]
    // 0x735810: StoreField: r1->field_b = r0
    //     0x735810: stur            w0, [x1, #0xb]
    // 0x735814: StoreField: r1->field_f = r0
    //     0x735814: stur            w0, [x1, #0xf]
    // 0x735818: StoreField: r1->field_13 = r0
    //     0x735818: stur            w0, [x1, #0x13]
    // 0x73581c: ldur            x2, [fp, #-8]
    // 0x735820: LoadField: r0 = r2->field_1f
    //     0x735820: ldur            w0, [x2, #0x1f]
    // 0x735824: DecompressPointer r0
    //     0x735824: add             x0, x0, HEAP, lsl #32
    // 0x735828: r3 = LoadClassIdInstr(r0)
    //     0x735828: ldur            x3, [x0, #-1]
    //     0x73582c: ubfx            x3, x3, #0xc, #0x14
    // 0x735830: r16 = "mekke"
    //     0x735830: add             x16, PP, #0x15, lsl #12  ; [pp+0x155f8] "mekke"
    //     0x735834: ldr             x16, [x16, #0x5f8]
    // 0x735838: stp             x16, x0, [SP]
    // 0x73583c: mov             x0, x3
    // 0x735840: mov             lr, x0
    // 0x735844: ldr             lr, [x21, lr, lsl #3]
    // 0x735848: blr             lr
    // 0x73584c: tbnz            w0, #4, #0x735870
    // 0x735850: r1 = _ConstMap len:10
    //     0x735850: add             x1, PP, #0x15, lsl #12  ; [pp+0x15600] Map<int, Color>(10)
    //     0x735854: ldr             x1, [x1, #0x600]
    // 0x735858: r2 = 400
    //     0x735858: mov             x2, #0x190
    // 0x73585c: r0 = []()
    //     0x73585c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x735860: cmp             w0, NULL
    // 0x735864: b.eq            #0x735cc8
    // 0x735868: mov             x1, x0
    // 0x73586c: b               #0x73588c
    // 0x735870: r1 = _ConstMap len:10
    //     0x735870: add             x1, PP, #0x14, lsl #12  ; [pp+0x14918] Map<int, Color>(10)
    //     0x735874: ldr             x1, [x1, #0x918]
    // 0x735878: r2 = 400
    //     0x735878: mov             x2, #0x190
    // 0x73587c: r0 = []()
    //     0x73587c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x735880: cmp             w0, NULL
    // 0x735884: b.eq            #0x735ccc
    // 0x735888: mov             x1, x0
    // 0x73588c: ldur            x2, [fp, #-8]
    // 0x735890: ldur            x3, [fp, #-0x10]
    // 0x735894: ldur            x0, [fp, #-0x20]
    // 0x735898: str             x1, [SP]
    // 0x73589c: r1 = Null
    //     0x73589c: mov             x1, NULL
    // 0x7358a0: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x7358a0: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x7358a4: ldr             x4, [x4, #0x788]
    // 0x7358a8: r0 = Border.all()
    //     0x7358a8: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x7358ac: stur            x0, [fp, #-0x18]
    // 0x7358b0: r0 = BoxDecoration()
    //     0x7358b0: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7358b4: mov             x1, x0
    // 0x7358b8: ldur            x0, [fp, #-0x10]
    // 0x7358bc: stur            x1, [fp, #-0x28]
    // 0x7358c0: StoreField: r1->field_7 = r0
    //     0x7358c0: stur            w0, [x1, #7]
    // 0x7358c4: ldur            x0, [fp, #-0x18]
    // 0x7358c8: StoreField: r1->field_f = r0
    //     0x7358c8: stur            w0, [x1, #0xf]
    // 0x7358cc: ldur            x0, [fp, #-0x20]
    // 0x7358d0: StoreField: r1->field_13 = r0
    //     0x7358d0: stur            w0, [x1, #0x13]
    // 0x7358d4: r0 = Instance_BoxShape
    //     0x7358d4: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7358d8: ldr             x0, [x0, #0x1c8]
    // 0x7358dc: StoreField: r1->field_23 = r0
    //     0x7358dc: stur            w0, [x1, #0x23]
    // 0x7358e0: ldur            x2, [fp, #-8]
    // 0x7358e4: LoadField: r0 = r2->field_1f
    //     0x7358e4: ldur            w0, [x2, #0x1f]
    // 0x7358e8: DecompressPointer r0
    //     0x7358e8: add             x0, x0, HEAP, lsl #32
    // 0x7358ec: r3 = LoadClassIdInstr(r0)
    //     0x7358ec: ldur            x3, [x0, #-1]
    //     0x7358f0: ubfx            x3, x3, #0xc, #0x14
    // 0x7358f4: r16 = "mekke"
    //     0x7358f4: add             x16, PP, #0x15, lsl #12  ; [pp+0x155f8] "mekke"
    //     0x7358f8: ldr             x16, [x16, #0x5f8]
    // 0x7358fc: stp             x16, x0, [SP]
    // 0x735900: mov             x0, x3
    // 0x735904: mov             lr, x0
    // 0x735908: ldr             lr, [x21, lr, lsl #3]
    // 0x73590c: blr             lr
    // 0x735910: tbnz            w0, #4, #0x735934
    // 0x735914: r1 = _ConstMap len:10
    //     0x735914: add             x1, PP, #0x15, lsl #12  ; [pp+0x15600] Map<int, Color>(10)
    //     0x735918: ldr             x1, [x1, #0x600]
    // 0x73591c: r2 = 1400
    //     0x73591c: mov             x2, #0x578
    // 0x735920: r0 = []()
    //     0x735920: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x735924: cmp             w0, NULL
    // 0x735928: b.eq            #0x735cd0
    // 0x73592c: mov             x1, x0
    // 0x735930: b               #0x735950
    // 0x735934: r1 = _ConstMap len:10
    //     0x735934: add             x1, PP, #0x14, lsl #12  ; [pp+0x14918] Map<int, Color>(10)
    //     0x735938: ldr             x1, [x1, #0x918]
    // 0x73593c: r2 = 1400
    //     0x73593c: mov             x2, #0x578
    // 0x735940: r0 = []()
    //     0x735940: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x735944: cmp             w0, NULL
    // 0x735948: b.eq            #0x735cd4
    // 0x73594c: mov             x1, x0
    // 0x735950: ldur            x0, [fp, #-8]
    // 0x735954: stur            x1, [fp, #-0x10]
    // 0x735958: r0 = Icon()
    //     0x735958: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x73595c: mov             x1, x0
    // 0x735960: r0 = Instance_IconData
    //     0x735960: add             x0, PP, #0x15, lsl #12  ; [pp+0x15608] Obj!IconData@a0a641
    //     0x735964: ldr             x0, [x0, #0x608]
    // 0x735968: stur            x1, [fp, #-0x20]
    // 0x73596c: StoreField: r1->field_b = r0
    //     0x73596c: stur            w0, [x1, #0xb]
    // 0x735970: ldur            x0, [fp, #-0x10]
    // 0x735974: StoreField: r1->field_23 = r0
    //     0x735974: stur            w0, [x1, #0x23]
    // 0x735978: ldur            x0, [fp, #-8]
    // 0x73597c: LoadField: r2 = r0->field_1b
    //     0x73597c: ldur            w2, [x0, #0x1b]
    // 0x735980: DecompressPointer r2
    //     0x735980: add             x2, x2, HEAP, lsl #32
    // 0x735984: stur            x2, [fp, #-0x18]
    // 0x735988: cmp             w2, NULL
    // 0x73598c: b.ne            #0x735998
    // 0x735990: r3 = Null
    //     0x735990: mov             x3, NULL
    // 0x735994: b               #0x7359a0
    // 0x735998: LoadField: r3 = r2->field_b
    //     0x735998: ldur            w3, [x2, #0xb]
    // 0x73599c: DecompressPointer r3
    //     0x73599c: add             x3, x3, HEAP, lsl #32
    // 0x7359a0: cmp             w3, NULL
    // 0x7359a4: b.ne            #0x7359ac
    // 0x7359a8: r3 = ""
    //     0x7359a8: ldr             x3, [PP, #0x128]  ; [pp+0x128] ""
    // 0x7359ac: stur            x3, [fp, #-0x10]
    // 0x7359b0: r0 = Text()
    //     0x7359b0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7359b4: mov             x3, x0
    // 0x7359b8: ldur            x0, [fp, #-0x10]
    // 0x7359bc: stur            x3, [fp, #-0x30]
    // 0x7359c0: StoreField: r3->field_b = r0
    //     0x7359c0: stur            w0, [x3, #0xb]
    // 0x7359c4: r0 = Instance_TextStyle
    //     0x7359c4: add             x0, PP, #0x15, lsl #12  ; [pp+0x15610] Obj!TextStyle@a177c1
    //     0x7359c8: ldr             x0, [x0, #0x610]
    // 0x7359cc: StoreField: r3->field_13 = r0
    //     0x7359cc: stur            w0, [x3, #0x13]
    // 0x7359d0: ldur            x0, [fp, #-8]
    // 0x7359d4: LoadField: r4 = r0->field_23
    //     0x7359d4: ldur            w4, [x0, #0x23]
    // 0x7359d8: DecompressPointer r4
    //     0x7359d8: add             x4, x4, HEAP, lsl #32
    // 0x7359dc: stur            x4, [fp, #-0x10]
    // 0x7359e0: cmp             w4, NULL
    // 0x7359e4: b.eq            #0x735a50
    // 0x7359e8: ldur            x0, [fp, #-0x18]
    // 0x7359ec: r1 = Null
    //     0x7359ec: mov             x1, NULL
    // 0x7359f0: r2 = 6
    //     0x7359f0: mov             x2, #6
    // 0x7359f4: r0 = AllocateArray()
    //     0x7359f4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7359f8: mov             x1, x0
    // 0x7359fc: ldur            x0, [fp, #-0x10]
    // 0x735a00: StoreField: r1->field_f = r0
    //     0x735a00: stur            w0, [x1, #0xf]
    // 0x735a04: r16 = ". Gün • "
    //     0x735a04: add             x16, PP, #0x15, lsl #12  ; [pp+0x15618] ". Gün • "
    //     0x735a08: ldr             x16, [x16, #0x618]
    // 0x735a0c: StoreField: r1->field_13 = r16
    //     0x735a0c: stur            w16, [x1, #0x13]
    // 0x735a10: ldur            x0, [fp, #-0x18]
    // 0x735a14: cmp             w0, NULL
    // 0x735a18: b.ne            #0x735a24
    // 0x735a1c: r0 = Null
    //     0x735a1c: mov             x0, NULL
    // 0x735a20: b               #0x735a30
    // 0x735a24: LoadField: r2 = r0->field_f
    //     0x735a24: ldur            w2, [x0, #0xf]
    // 0x735a28: DecompressPointer r2
    //     0x735a28: add             x2, x2, HEAP, lsl #32
    // 0x735a2c: mov             x0, x2
    // 0x735a30: cmp             w0, NULL
    // 0x735a34: b.ne            #0x735a3c
    // 0x735a38: r0 = ""
    //     0x735a38: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x735a3c: ArrayStore: r1[0] = r0  ; List_4
    //     0x735a3c: stur            w0, [x1, #0x17]
    // 0x735a40: str             x1, [SP]
    // 0x735a44: r0 = _interpolate()
    //     0x735a44: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x735a48: mov             x4, x0
    // 0x735a4c: b               #0x735a80
    // 0x735a50: ldur            x0, [fp, #-0x18]
    // 0x735a54: cmp             w0, NULL
    // 0x735a58: b.ne            #0x735a64
    // 0x735a5c: r0 = Null
    //     0x735a5c: mov             x0, NULL
    // 0x735a60: b               #0x735a70
    // 0x735a64: LoadField: r1 = r0->field_f
    //     0x735a64: ldur            w1, [x0, #0xf]
    // 0x735a68: DecompressPointer r1
    //     0x735a68: add             x1, x1, HEAP, lsl #32
    // 0x735a6c: mov             x0, x1
    // 0x735a70: cmp             w0, NULL
    // 0x735a74: b.ne            #0x735a7c
    // 0x735a78: r0 = ""
    //     0x735a78: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x735a7c: mov             x4, x0
    // 0x735a80: ldur            x3, [fp, #-0x20]
    // 0x735a84: ldur            x0, [fp, #-0x30]
    // 0x735a88: stur            x4, [fp, #-8]
    // 0x735a8c: r1 = _ConstMap len:12
    //     0x735a8c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x735a90: r2 = 1200
    //     0x735a90: mov             x2, #0x4b0
    // 0x735a94: r0 = []()
    //     0x735a94: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x735a98: stur            x0, [fp, #-0x10]
    // 0x735a9c: cmp             w0, NULL
    // 0x735aa0: b.eq            #0x735cd8
    // 0x735aa4: r0 = TextStyle()
    //     0x735aa4: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x735aa8: mov             x1, x0
    // 0x735aac: r0 = true
    //     0x735aac: add             x0, NULL, #0x20  ; true
    // 0x735ab0: stur            x1, [fp, #-0x18]
    // 0x735ab4: StoreField: r1->field_7 = r0
    //     0x735ab4: stur            w0, [x1, #7]
    // 0x735ab8: ldur            x0, [fp, #-0x10]
    // 0x735abc: StoreField: r1->field_b = r0
    //     0x735abc: stur            w0, [x1, #0xb]
    // 0x735ac0: r0 = 12.000000
    //     0x735ac0: add             x0, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x735ac4: ldr             x0, [x0, #0xae0]
    // 0x735ac8: StoreField: r1->field_1f = r0
    //     0x735ac8: stur            w0, [x1, #0x1f]
    // 0x735acc: r0 = Text()
    //     0x735acc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x735ad0: mov             x3, x0
    // 0x735ad4: ldur            x0, [fp, #-8]
    // 0x735ad8: stur            x3, [fp, #-0x10]
    // 0x735adc: StoreField: r3->field_b = r0
    //     0x735adc: stur            w0, [x3, #0xb]
    // 0x735ae0: ldur            x0, [fp, #-0x18]
    // 0x735ae4: StoreField: r3->field_13 = r0
    //     0x735ae4: stur            w0, [x3, #0x13]
    // 0x735ae8: r1 = Null
    //     0x735ae8: mov             x1, NULL
    // 0x735aec: r2 = 6
    //     0x735aec: mov             x2, #6
    // 0x735af0: r0 = AllocateArray()
    //     0x735af0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x735af4: mov             x2, x0
    // 0x735af8: ldur            x0, [fp, #-0x30]
    // 0x735afc: stur            x2, [fp, #-8]
    // 0x735b00: StoreField: r2->field_f = r0
    //     0x735b00: stur            w0, [x2, #0xf]
    // 0x735b04: r16 = Instance_SizedBox
    //     0x735b04: add             x16, PP, #0x15, lsl #12  ; [pp+0x15620] Obj!SizedBox@a1f9b1
    //     0x735b08: ldr             x16, [x16, #0x620]
    // 0x735b0c: StoreField: r2->field_13 = r16
    //     0x735b0c: stur            w16, [x2, #0x13]
    // 0x735b10: ldur            x0, [fp, #-0x10]
    // 0x735b14: ArrayStore: r2[0] = r0  ; List_4
    //     0x735b14: stur            w0, [x2, #0x17]
    // 0x735b18: r1 = <Widget>
    //     0x735b18: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x735b1c: r0 = AllocateGrowableArray()
    //     0x735b1c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x735b20: mov             x1, x0
    // 0x735b24: ldur            x0, [fp, #-8]
    // 0x735b28: stur            x1, [fp, #-0x10]
    // 0x735b2c: StoreField: r1->field_f = r0
    //     0x735b2c: stur            w0, [x1, #0xf]
    // 0x735b30: r2 = 6
    //     0x735b30: mov             x2, #6
    // 0x735b34: StoreField: r1->field_b = r2
    //     0x735b34: stur            w2, [x1, #0xb]
    // 0x735b38: r0 = Column()
    //     0x735b38: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x735b3c: mov             x2, x0
    // 0x735b40: r0 = Instance_Axis
    //     0x735b40: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x735b44: stur            x2, [fp, #-8]
    // 0x735b48: StoreField: r2->field_f = r0
    //     0x735b48: stur            w0, [x2, #0xf]
    // 0x735b4c: r0 = Instance_MainAxisAlignment
    //     0x735b4c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x735b50: ldr             x0, [x0, #0x230]
    // 0x735b54: StoreField: r2->field_13 = r0
    //     0x735b54: stur            w0, [x2, #0x13]
    // 0x735b58: r3 = Instance_MainAxisSize
    //     0x735b58: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x735b5c: ldr             x3, [x3, #0x330]
    // 0x735b60: ArrayStore: r2[0] = r3  ; List_4
    //     0x735b60: stur            w3, [x2, #0x17]
    // 0x735b64: r1 = Instance_CrossAxisAlignment
    //     0x735b64: add             x1, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x735b68: ldr             x1, [x1, #0x238]
    // 0x735b6c: StoreField: r2->field_1b = r1
    //     0x735b6c: stur            w1, [x2, #0x1b]
    // 0x735b70: r4 = Instance_VerticalDirection
    //     0x735b70: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x735b74: ldr             x4, [x4, #0x340]
    // 0x735b78: StoreField: r2->field_23 = r4
    //     0x735b78: stur            w4, [x2, #0x23]
    // 0x735b7c: r5 = Instance_Clip
    //     0x735b7c: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x735b80: ldr             x5, [x5, #0x348]
    // 0x735b84: StoreField: r2->field_2b = r5
    //     0x735b84: stur            w5, [x2, #0x2b]
    // 0x735b88: StoreField: r2->field_2f = rZR
    //     0x735b88: stur            xzr, [x2, #0x2f]
    // 0x735b8c: ldur            x1, [fp, #-0x10]
    // 0x735b90: StoreField: r2->field_b = r1
    //     0x735b90: stur            w1, [x2, #0xb]
    // 0x735b94: r1 = <FlexParentData>
    //     0x735b94: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x735b98: ldr             x1, [x1, #0x340]
    // 0x735b9c: r0 = Expanded()
    //     0x735b9c: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x735ba0: mov             x3, x0
    // 0x735ba4: r0 = 1
    //     0x735ba4: mov             x0, #1
    // 0x735ba8: stur            x3, [fp, #-0x10]
    // 0x735bac: StoreField: r3->field_13 = r0
    //     0x735bac: stur            x0, [x3, #0x13]
    // 0x735bb0: r0 = Instance_FlexFit
    //     0x735bb0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x735bb4: ldr             x0, [x0, #0x348]
    // 0x735bb8: StoreField: r3->field_1b = r0
    //     0x735bb8: stur            w0, [x3, #0x1b]
    // 0x735bbc: ldur            x0, [fp, #-8]
    // 0x735bc0: StoreField: r3->field_b = r0
    //     0x735bc0: stur            w0, [x3, #0xb]
    // 0x735bc4: r1 = Null
    //     0x735bc4: mov             x1, NULL
    // 0x735bc8: r2 = 6
    //     0x735bc8: mov             x2, #6
    // 0x735bcc: r0 = AllocateArray()
    //     0x735bcc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x735bd0: mov             x2, x0
    // 0x735bd4: ldur            x0, [fp, #-0x20]
    // 0x735bd8: stur            x2, [fp, #-8]
    // 0x735bdc: StoreField: r2->field_f = r0
    //     0x735bdc: stur            w0, [x2, #0xf]
    // 0x735be0: r16 = Instance_SizedBox
    //     0x735be0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x735be4: ldr             x16, [x16, #0x360]
    // 0x735be8: StoreField: r2->field_13 = r16
    //     0x735be8: stur            w16, [x2, #0x13]
    // 0x735bec: ldur            x0, [fp, #-0x10]
    // 0x735bf0: ArrayStore: r2[0] = r0  ; List_4
    //     0x735bf0: stur            w0, [x2, #0x17]
    // 0x735bf4: r1 = <Widget>
    //     0x735bf4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x735bf8: r0 = AllocateGrowableArray()
    //     0x735bf8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x735bfc: mov             x1, x0
    // 0x735c00: ldur            x0, [fp, #-8]
    // 0x735c04: stur            x1, [fp, #-0x10]
    // 0x735c08: StoreField: r1->field_f = r0
    //     0x735c08: stur            w0, [x1, #0xf]
    // 0x735c0c: r0 = 6
    //     0x735c0c: mov             x0, #6
    // 0x735c10: StoreField: r1->field_b = r0
    //     0x735c10: stur            w0, [x1, #0xb]
    // 0x735c14: r0 = Row()
    //     0x735c14: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x735c18: mov             x1, x0
    // 0x735c1c: r0 = Instance_Axis
    //     0x735c1c: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x735c20: stur            x1, [fp, #-8]
    // 0x735c24: StoreField: r1->field_f = r0
    //     0x735c24: stur            w0, [x1, #0xf]
    // 0x735c28: r0 = Instance_MainAxisAlignment
    //     0x735c28: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x735c2c: ldr             x0, [x0, #0x230]
    // 0x735c30: StoreField: r1->field_13 = r0
    //     0x735c30: stur            w0, [x1, #0x13]
    // 0x735c34: r0 = Instance_MainAxisSize
    //     0x735c34: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x735c38: ldr             x0, [x0, #0x330]
    // 0x735c3c: ArrayStore: r1[0] = r0  ; List_4
    //     0x735c3c: stur            w0, [x1, #0x17]
    // 0x735c40: r0 = Instance_CrossAxisAlignment
    //     0x735c40: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x735c44: ldr             x0, [x0, #0x338]
    // 0x735c48: StoreField: r1->field_1b = r0
    //     0x735c48: stur            w0, [x1, #0x1b]
    // 0x735c4c: r0 = Instance_VerticalDirection
    //     0x735c4c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x735c50: ldr             x0, [x0, #0x340]
    // 0x735c54: StoreField: r1->field_23 = r0
    //     0x735c54: stur            w0, [x1, #0x23]
    // 0x735c58: r0 = Instance_Clip
    //     0x735c58: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x735c5c: ldr             x0, [x0, #0x348]
    // 0x735c60: StoreField: r1->field_2b = r0
    //     0x735c60: stur            w0, [x1, #0x2b]
    // 0x735c64: StoreField: r1->field_2f = rZR
    //     0x735c64: stur            xzr, [x1, #0x2f]
    // 0x735c68: ldur            x0, [fp, #-0x10]
    // 0x735c6c: StoreField: r1->field_b = r0
    //     0x735c6c: stur            w0, [x1, #0xb]
    // 0x735c70: r0 = Container()
    //     0x735c70: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x735c74: stur            x0, [fp, #-0x10]
    // 0x735c78: r16 = Instance_EdgeInsets
    //     0x735c78: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x735c7c: ldr             x16, [x16, #0x240]
    // 0x735c80: r30 = Instance_EdgeInsets
    //     0x735c80: add             lr, PP, #0x12, lsl #12  ; [pp+0x12370] Obj!EdgeInsets@a0bff1
    //     0x735c84: ldr             lr, [lr, #0x370]
    // 0x735c88: stp             lr, x16, [SP, #0x10]
    // 0x735c8c: ldur            x16, [fp, #-0x28]
    // 0x735c90: ldur            lr, [fp, #-8]
    // 0x735c94: stp             lr, x16, [SP]
    // 0x735c98: mov             x1, x0
    // 0x735c9c: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, margin, 0x1, padding, 0x2, null]
    //     0x735c9c: add             x4, PP, #0x15, lsl #12  ; [pp+0x15628] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "margin", 0x1, "padding", 0x2, Null]
    //     0x735ca0: ldr             x4, [x4, #0x628]
    // 0x735ca4: r0 = Container()
    //     0x735ca4: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x735ca8: ldur            x0, [fp, #-0x10]
    // 0x735cac: LeaveFrame
    //     0x735cac: mov             SP, fp
    //     0x735cb0: ldp             fp, lr, [SP], #0x10
    // 0x735cb4: ret
    //     0x735cb4: ret             
    // 0x735cb8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x735cb8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x735cbc: b               #0x735774
    // 0x735cc0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x735cc0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x735cc4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x735cc4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x735cc8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x735cc8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x735ccc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x735ccc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x735cd0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x735cd0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x735cd4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x735cd4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x735cd8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x735cd8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> _makePhoneCall(dynamic) {
    // ** addr: 0x735cdc, size: 0x38
    // 0x735cdc: EnterFrame
    //     0x735cdc: stp             fp, lr, [SP, #-0x10]!
    //     0x735ce0: mov             fp, SP
    // 0x735ce4: ldr             x0, [fp, #0x10]
    // 0x735ce8: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x735ce8: ldur            w1, [x0, #0x17]
    // 0x735cec: DecompressPointer r1
    //     0x735cec: add             x1, x1, HEAP, lsl #32
    // 0x735cf0: CheckStackOverflow
    //     0x735cf0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x735cf4: cmp             SP, x16
    //     0x735cf8: b.ls            #0x735d0c
    // 0x735cfc: r0 = _makePhoneCall()
    //     0x735cfc: bl              #0x735d14  ; [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::_makePhoneCall
    // 0x735d00: LeaveFrame
    //     0x735d00: mov             SP, fp
    //     0x735d04: ldp             fp, lr, [SP], #0x10
    // 0x735d08: ret
    //     0x735d08: ret             
    // 0x735d0c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x735d0c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x735d10: b               #0x735cfc
  }
  _ _makePhoneCall(/* No info */) async {
    // ** addr: 0x735d14, size: 0x124
    // 0x735d14: EnterFrame
    //     0x735d14: stp             fp, lr, [SP, #-0x10]!
    //     0x735d18: mov             fp, SP
    // 0x735d1c: AllocStack(0x80)
    //     0x735d1c: sub             SP, SP, #0x80
    // 0x735d20: SetupParameters(_RehberIletisimPageState this /* r1 => r1, fp-0x70 */)
    //     0x735d20: stur            NULL, [fp, #-8]
    //     0x735d24: stur            x1, [fp, #-0x70]
    // 0x735d28: CheckStackOverflow
    //     0x735d28: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x735d2c: cmp             SP, x16
    //     0x735d30: b.ls            #0x735e30
    // 0x735d34: InitAsync() -> Future<void?>
    //     0x735d34: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x735d38: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x735d3c: ldur            x0, [fp, #-0x70]
    // 0x735d40: LoadField: r1 = r0->field_27
    //     0x735d40: ldur            w1, [x0, #0x27]
    // 0x735d44: DecompressPointer r1
    //     0x735d44: add             x1, x1, HEAP, lsl #32
    // 0x735d48: cmp             w1, NULL
    // 0x735d4c: b.eq            #0x735d60
    // 0x735d50: LoadField: r0 = r1->field_13
    //     0x735d50: ldur            w0, [x1, #0x13]
    // 0x735d54: DecompressPointer r0
    //     0x735d54: add             x0, x0, HEAP, lsl #32
    // 0x735d58: LoadField: r1 = r0->field_7
    //     0x735d58: ldur            w1, [x0, #7]
    // 0x735d5c: cbnz            w1, #0x735d68
    // 0x735d60: r0 = Null
    //     0x735d60: mov             x0, NULL
    // 0x735d64: r0 = ReturnAsyncNotFuture()
    //     0x735d64: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x735d68: mov             x1, x0
    // 0x735d6c: r2 = " "
    //     0x735d6c: ldr             x2, [PP, #0x3b8]  ; [pp+0x3b8] " "
    // 0x735d70: r3 = ""
    //     0x735d70: ldr             x3, [PP, #0x128]  ; [pp+0x128] ""
    // 0x735d74: r0 = replaceAll()
    //     0x735d74: bl              #0x3d9940  ; [dart:core] _StringBase::replaceAll
    // 0x735d78: r1 = Null
    //     0x735d78: mov             x1, NULL
    // 0x735d7c: r2 = 4
    //     0x735d7c: mov             x2, #4
    // 0x735d80: stur            x0, [fp, #-0x70]
    // 0x735d84: r0 = AllocateArray()
    //     0x735d84: bl              #0x9280a0  ; AllocateArrayStub
    // 0x735d88: r16 = "tel:"
    //     0x735d88: add             x16, PP, #0x12, lsl #12  ; [pp+0x12308] "tel:"
    //     0x735d8c: ldr             x16, [x16, #0x308]
    // 0x735d90: StoreField: r0->field_f = r16
    //     0x735d90: stur            w16, [x0, #0xf]
    // 0x735d94: ldur            x1, [fp, #-0x70]
    // 0x735d98: StoreField: r0->field_13 = r1
    //     0x735d98: stur            w1, [x0, #0x13]
    // 0x735d9c: str             x0, [SP]
    // 0x735da0: r0 = _interpolate()
    //     0x735da0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x735da4: mov             x1, x0
    // 0x735da8: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x735da8: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x735dac: r0 = parse()
    //     0x735dac: bl              #0x3de4e4  ; [dart:core] Uri::parse
    // 0x735db0: stur            x0, [fp, #-0x70]
    // 0x735db4: mov             x1, x0
    // 0x735db8: r0 = launchUrl()
    //     0x735db8: bl              #0x7343c4  ; [package:url_launcher/src/url_launcher_uri.dart] ::launchUrl
    // 0x735dbc: mov             x1, x0
    // 0x735dc0: stur            x1, [fp, #-0x78]
    // 0x735dc4: r0 = Await()
    //     0x735dc4: bl              #0x3dd188  ; AwaitStub
    // 0x735dc8: b               #0x735e28
    // 0x735dcc: sub             SP, fp, #0x80
    // 0x735dd0: stur            x0, [fp, #-0x70]
    // 0x735dd4: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x735dd4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x735dd8: ldr             x0, [x0, #0xcb8]
    //     0x735ddc: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x735de0: cmp             w0, w16
    //     0x735de4: b.ne            #0x735df0
    //     0x735de8: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x735dec: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x735df0: r1 = Null
    //     0x735df0: mov             x1, NULL
    // 0x735df4: r2 = 4
    //     0x735df4: mov             x2, #4
    // 0x735df8: r0 = AllocateArray()
    //     0x735df8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x735dfc: r16 = "Telefon açılamadı: "
    //     0x735dfc: add             x16, PP, #0x12, lsl #12  ; [pp+0x12310] "Telefon açılamadı: "
    //     0x735e00: ldr             x16, [x16, #0x310]
    // 0x735e04: StoreField: r0->field_f = r16
    //     0x735e04: stur            w16, [x0, #0xf]
    // 0x735e08: ldur            x1, [fp, #-0x70]
    // 0x735e0c: StoreField: r0->field_13 = r1
    //     0x735e0c: stur            w1, [x0, #0x13]
    // 0x735e10: str             x0, [SP]
    // 0x735e14: r0 = _interpolate()
    //     0x735e14: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x735e18: str             NULL, [SP]
    // 0x735e1c: mov             x1, x0
    // 0x735e20: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x735e20: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x735e24: r0 = debugPrintThrottled()
    //     0x735e24: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x735e28: r0 = Null
    //     0x735e28: mov             x0, NULL
    // 0x735e2c: r0 = ReturnAsyncNotFuture()
    //     0x735e2c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x735e30: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x735e30: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x735e34: b               #0x735d34
  }
  _ _buildNoManagerView(/* No info */) {
    // ** addr: 0x735e38, size: 0x280
    // 0x735e38: EnterFrame
    //     0x735e38: stp             fp, lr, [SP, #-0x10]!
    //     0x735e3c: mov             fp, SP
    // 0x735e40: AllocStack(0x20)
    //     0x735e40: sub             SP, SP, #0x20
    // 0x735e44: SetupParameters(_RehberIletisimPageState this /* r1 => r0, fp-0x8 */)
    //     0x735e44: mov             x0, x1
    //     0x735e48: stur            x1, [fp, #-8]
    // 0x735e4c: CheckStackOverflow
    //     0x735e4c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x735e50: cmp             SP, x16
    //     0x735e54: b.ls            #0x7360a4
    // 0x735e58: r1 = _ConstMap len:12
    //     0x735e58: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x735e5c: r2 = 800
    //     0x735e5c: mov             x2, #0x320
    // 0x735e60: r0 = []()
    //     0x735e60: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x735e64: stur            x0, [fp, #-0x10]
    // 0x735e68: cmp             w0, NULL
    // 0x735e6c: b.eq            #0x7360ac
    // 0x735e70: r0 = Icon()
    //     0x735e70: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x735e74: mov             x3, x0
    // 0x735e78: r0 = Instance_IconData
    //     0x735e78: add             x0, PP, #0x15, lsl #12  ; [pp+0x15630] Obj!IconData@a0a661
    //     0x735e7c: ldr             x0, [x0, #0x630]
    // 0x735e80: stur            x3, [fp, #-0x18]
    // 0x735e84: StoreField: r3->field_b = r0
    //     0x735e84: stur            w0, [x3, #0xb]
    // 0x735e88: r0 = 80.000000
    //     0x735e88: add             x0, PP, #0x15, lsl #12  ; [pp+0x15638] 80
    //     0x735e8c: ldr             x0, [x0, #0x638]
    // 0x735e90: StoreField: r3->field_f = r0
    //     0x735e90: stur            w0, [x3, #0xf]
    // 0x735e94: ldur            x0, [fp, #-0x10]
    // 0x735e98: StoreField: r3->field_23 = r0
    //     0x735e98: stur            w0, [x3, #0x23]
    // 0x735e9c: ldur            x0, [fp, #-8]
    // 0x735ea0: LoadField: r1 = r0->field_1b
    //     0x735ea0: ldur            w1, [x0, #0x1b]
    // 0x735ea4: DecompressPointer r1
    //     0x735ea4: add             x1, x1, HEAP, lsl #32
    // 0x735ea8: cmp             w1, NULL
    // 0x735eac: b.ne            #0x735ebc
    // 0x735eb0: r0 = "Aktif bir seferiniz bulunmuyor"
    //     0x735eb0: add             x0, PP, #0x15, lsl #12  ; [pp+0x15640] "Aktif bir seferiniz bulunmuyor"
    //     0x735eb4: ldr             x0, [x0, #0x640]
    // 0x735eb8: b               #0x735ec4
    // 0x735ebc: r0 = "Bu sefere henüz yönetici atanmamış"
    //     0x735ebc: add             x0, PP, #0x15, lsl #12  ; [pp+0x15648] "Bu sefere henüz yönetici atanmamış"
    //     0x735ec0: ldr             x0, [x0, #0x648]
    // 0x735ec4: stur            x0, [fp, #-8]
    // 0x735ec8: r1 = _ConstMap len:12
    //     0x735ec8: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x735ecc: r2 = 1200
    //     0x735ecc: mov             x2, #0x4b0
    // 0x735ed0: r0 = []()
    //     0x735ed0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x735ed4: stur            x0, [fp, #-0x10]
    // 0x735ed8: cmp             w0, NULL
    // 0x735edc: b.eq            #0x7360b0
    // 0x735ee0: r0 = TextStyle()
    //     0x735ee0: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x735ee4: mov             x1, x0
    // 0x735ee8: r0 = true
    //     0x735ee8: add             x0, NULL, #0x20  ; true
    // 0x735eec: stur            x1, [fp, #-0x20]
    // 0x735ef0: StoreField: r1->field_7 = r0
    //     0x735ef0: stur            w0, [x1, #7]
    // 0x735ef4: ldur            x2, [fp, #-0x10]
    // 0x735ef8: StoreField: r1->field_b = r2
    //     0x735ef8: stur            w2, [x1, #0xb]
    // 0x735efc: r2 = 16.000000
    //     0x735efc: add             x2, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x735f00: ldr             x2, [x2, #0x358]
    // 0x735f04: StoreField: r1->field_1f = r2
    //     0x735f04: stur            w2, [x1, #0x1f]
    // 0x735f08: r2 = Instance_FontWeight
    //     0x735f08: add             x2, PP, #0x15, lsl #12  ; [pp+0x155d0] Obj!FontWeight@a20fe1
    //     0x735f0c: ldr             x2, [x2, #0x5d0]
    // 0x735f10: StoreField: r1->field_23 = r2
    //     0x735f10: stur            w2, [x1, #0x23]
    // 0x735f14: r0 = Text()
    //     0x735f14: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x735f18: mov             x3, x0
    // 0x735f1c: ldur            x0, [fp, #-8]
    // 0x735f20: stur            x3, [fp, #-0x10]
    // 0x735f24: StoreField: r3->field_b = r0
    //     0x735f24: stur            w0, [x3, #0xb]
    // 0x735f28: ldur            x0, [fp, #-0x20]
    // 0x735f2c: StoreField: r3->field_13 = r0
    //     0x735f2c: stur            w0, [x3, #0x13]
    // 0x735f30: r0 = Instance_TextAlign
    //     0x735f30: ldr             x0, [PP, #0x4af0]  ; [pp+0x4af0] Obj!TextAlign@a2cf51
    // 0x735f34: StoreField: r3->field_1b = r0
    //     0x735f34: stur            w0, [x3, #0x1b]
    // 0x735f38: r1 = _ConstMap len:12
    //     0x735f38: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x735f3c: r2 = 1000
    //     0x735f3c: mov             x2, #0x3e8
    // 0x735f40: r0 = []()
    //     0x735f40: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x735f44: stur            x0, [fp, #-8]
    // 0x735f48: cmp             w0, NULL
    // 0x735f4c: b.eq            #0x7360b4
    // 0x735f50: r0 = TextStyle()
    //     0x735f50: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x735f54: mov             x1, x0
    // 0x735f58: r0 = true
    //     0x735f58: add             x0, NULL, #0x20  ; true
    // 0x735f5c: stur            x1, [fp, #-0x20]
    // 0x735f60: StoreField: r1->field_7 = r0
    //     0x735f60: stur            w0, [x1, #7]
    // 0x735f64: ldur            x0, [fp, #-8]
    // 0x735f68: StoreField: r1->field_b = r0
    //     0x735f68: stur            w0, [x1, #0xb]
    // 0x735f6c: r0 = 14.000000
    //     0x735f6c: add             x0, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x735f70: ldr             x0, [x0, #0x1c8]
    // 0x735f74: StoreField: r1->field_1f = r0
    //     0x735f74: stur            w0, [x1, #0x1f]
    // 0x735f78: r0 = Text()
    //     0x735f78: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x735f7c: mov             x3, x0
    // 0x735f80: r0 = "Lütfen acente ile iletişime geçin."
    //     0x735f80: add             x0, PP, #0x15, lsl #12  ; [pp+0x15650] "Lütfen acente ile iletişime geçin."
    //     0x735f84: ldr             x0, [x0, #0x650]
    // 0x735f88: stur            x3, [fp, #-8]
    // 0x735f8c: StoreField: r3->field_b = r0
    //     0x735f8c: stur            w0, [x3, #0xb]
    // 0x735f90: ldur            x0, [fp, #-0x20]
    // 0x735f94: StoreField: r3->field_13 = r0
    //     0x735f94: stur            w0, [x3, #0x13]
    // 0x735f98: r0 = Instance_TextAlign
    //     0x735f98: ldr             x0, [PP, #0x4af0]  ; [pp+0x4af0] Obj!TextAlign@a2cf51
    // 0x735f9c: StoreField: r3->field_1b = r0
    //     0x735f9c: stur            w0, [x3, #0x1b]
    // 0x735fa0: r1 = Null
    //     0x735fa0: mov             x1, NULL
    // 0x735fa4: r2 = 10
    //     0x735fa4: mov             x2, #0xa
    // 0x735fa8: r0 = AllocateArray()
    //     0x735fa8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x735fac: mov             x2, x0
    // 0x735fb0: ldur            x0, [fp, #-0x18]
    // 0x735fb4: stur            x2, [fp, #-0x20]
    // 0x735fb8: StoreField: r2->field_f = r0
    //     0x735fb8: stur            w0, [x2, #0xf]
    // 0x735fbc: r16 = Instance_SizedBox
    //     0x735fbc: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x735fc0: ldr             x16, [x16, #0x310]
    // 0x735fc4: StoreField: r2->field_13 = r16
    //     0x735fc4: stur            w16, [x2, #0x13]
    // 0x735fc8: ldur            x0, [fp, #-0x10]
    // 0x735fcc: ArrayStore: r2[0] = r0  ; List_4
    //     0x735fcc: stur            w0, [x2, #0x17]
    // 0x735fd0: r16 = Instance_SizedBox
    //     0x735fd0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x735fd4: ldr             x16, [x16, #0x318]
    // 0x735fd8: StoreField: r2->field_1b = r16
    //     0x735fd8: stur            w16, [x2, #0x1b]
    // 0x735fdc: ldur            x0, [fp, #-8]
    // 0x735fe0: StoreField: r2->field_1f = r0
    //     0x735fe0: stur            w0, [x2, #0x1f]
    // 0x735fe4: r1 = <Widget>
    //     0x735fe4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x735fe8: r0 = AllocateGrowableArray()
    //     0x735fe8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x735fec: mov             x1, x0
    // 0x735ff0: ldur            x0, [fp, #-0x20]
    // 0x735ff4: stur            x1, [fp, #-8]
    // 0x735ff8: StoreField: r1->field_f = r0
    //     0x735ff8: stur            w0, [x1, #0xf]
    // 0x735ffc: r0 = 10
    //     0x735ffc: mov             x0, #0xa
    // 0x736000: StoreField: r1->field_b = r0
    //     0x736000: stur            w0, [x1, #0xb]
    // 0x736004: r0 = Column()
    //     0x736004: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x736008: mov             x1, x0
    // 0x73600c: r0 = Instance_Axis
    //     0x73600c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x736010: stur            x1, [fp, #-0x10]
    // 0x736014: StoreField: r1->field_f = r0
    //     0x736014: stur            w0, [x1, #0xf]
    // 0x736018: r0 = Instance_MainAxisAlignment
    //     0x736018: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x73601c: ldr             x0, [x0, #0x328]
    // 0x736020: StoreField: r1->field_13 = r0
    //     0x736020: stur            w0, [x1, #0x13]
    // 0x736024: r0 = Instance_MainAxisSize
    //     0x736024: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x736028: ldr             x0, [x0, #0x330]
    // 0x73602c: ArrayStore: r1[0] = r0  ; List_4
    //     0x73602c: stur            w0, [x1, #0x17]
    // 0x736030: r0 = Instance_CrossAxisAlignment
    //     0x736030: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x736034: ldr             x0, [x0, #0x338]
    // 0x736038: StoreField: r1->field_1b = r0
    //     0x736038: stur            w0, [x1, #0x1b]
    // 0x73603c: r0 = Instance_VerticalDirection
    //     0x73603c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x736040: ldr             x0, [x0, #0x340]
    // 0x736044: StoreField: r1->field_23 = r0
    //     0x736044: stur            w0, [x1, #0x23]
    // 0x736048: r0 = Instance_Clip
    //     0x736048: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x73604c: ldr             x0, [x0, #0x348]
    // 0x736050: StoreField: r1->field_2b = r0
    //     0x736050: stur            w0, [x1, #0x2b]
    // 0x736054: StoreField: r1->field_2f = rZR
    //     0x736054: stur            xzr, [x1, #0x2f]
    // 0x736058: ldur            x0, [fp, #-8]
    // 0x73605c: StoreField: r1->field_b = r0
    //     0x73605c: stur            w0, [x1, #0xb]
    // 0x736060: r0 = Padding()
    //     0x736060: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x736064: mov             x1, x0
    // 0x736068: r0 = Instance_EdgeInsets
    //     0x736068: add             x0, PP, #0x15, lsl #12  ; [pp+0x15658] Obj!EdgeInsets@a0c561
    //     0x73606c: ldr             x0, [x0, #0x658]
    // 0x736070: stur            x1, [fp, #-8]
    // 0x736074: StoreField: r1->field_f = r0
    //     0x736074: stur            w0, [x1, #0xf]
    // 0x736078: ldur            x0, [fp, #-0x10]
    // 0x73607c: StoreField: r1->field_b = r0
    //     0x73607c: stur            w0, [x1, #0xb]
    // 0x736080: r0 = Center()
    //     0x736080: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x736084: r1 = Instance_Alignment
    //     0x736084: add             x1, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x736088: ldr             x1, [x1, #0x60]
    // 0x73608c: StoreField: r0->field_f = r1
    //     0x73608c: stur            w1, [x0, #0xf]
    // 0x736090: ldur            x1, [fp, #-8]
    // 0x736094: StoreField: r0->field_b = r1
    //     0x736094: stur            w1, [x0, #0xb]
    // 0x736098: LeaveFrame
    //     0x736098: mov             SP, fp
    //     0x73609c: ldp             fp, lr, [SP], #0x10
    // 0x7360a0: ret
    //     0x7360a0: ret             
    // 0x7360a4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7360a4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7360a8: b               #0x735e58
    // 0x7360ac: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7360ac: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7360b0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7360b0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7360b4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7360b4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  dynamic dispose(dynamic) {
    // ** addr: 0x74c708, size: 0x24
    // 0x74c708: EnterFrame
    //     0x74c708: stp             fp, lr, [SP, #-0x10]!
    //     0x74c70c: mov             fp, SP
    // 0x74c710: ldr             x2, [fp, #0x10]
    // 0x74c714: r1 = Function 'dispose':.
    //     0x74c714: add             x1, PP, #0x27, lsl #12  ; [pp+0x27550] AnonymousClosure: (0x74c72c), in [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::dispose (0x75414c)
    //     0x74c718: ldr             x1, [x1, #0x550]
    // 0x74c71c: r0 = AllocateClosure()
    //     0x74c71c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74c720: LeaveFrame
    //     0x74c720: mov             SP, fp
    //     0x74c724: ldp             fp, lr, [SP], #0x10
    // 0x74c728: ret
    //     0x74c728: ret             
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x74c72c, size: 0x38
    // 0x74c72c: EnterFrame
    //     0x74c72c: stp             fp, lr, [SP, #-0x10]!
    //     0x74c730: mov             fp, SP
    // 0x74c734: ldr             x0, [fp, #0x10]
    // 0x74c738: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74c738: ldur            w1, [x0, #0x17]
    // 0x74c73c: DecompressPointer r1
    //     0x74c73c: add             x1, x1, HEAP, lsl #32
    // 0x74c740: CheckStackOverflow
    //     0x74c740: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74c744: cmp             SP, x16
    //     0x74c748: b.ls            #0x74c75c
    // 0x74c74c: r0 = dispose()
    //     0x74c74c: bl              #0x75414c  ; [package:umrem_demo/features/home/screens/rehber_iletisim.dart] _RehberIletisimPageState::dispose
    // 0x74c750: LeaveFrame
    //     0x74c750: mov             SP, fp
    //     0x74c754: ldp             fp, lr, [SP], #0x10
    // 0x74c758: ret
    //     0x74c758: ret             
    // 0x74c75c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74c75c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74c760: b               #0x74c74c
  }
  _ dispose(/* No info */) {
    // ** addr: 0x75414c, size: 0x44
    // 0x75414c: EnterFrame
    //     0x75414c: stp             fp, lr, [SP, #-0x10]!
    //     0x754150: mov             fp, SP
    // 0x754154: CheckStackOverflow
    //     0x754154: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x754158: cmp             SP, x16
    //     0x75415c: b.ls            #0x754188
    // 0x754160: LoadField: r0 = r1->field_37
    //     0x754160: ldur            w0, [x1, #0x37]
    // 0x754164: DecompressPointer r0
    //     0x754164: add             x0, x0, HEAP, lsl #32
    // 0x754168: cmp             w0, NULL
    // 0x75416c: b.eq            #0x754178
    // 0x754170: mov             x1, x0
    // 0x754174: r0 = cancel()
    //     0x754174: bl              #0x88cff4  ; [dart:async] _BufferingStreamSubscription::cancel
    // 0x754178: r0 = Null
    //     0x754178: mov             x0, NULL
    // 0x75417c: LeaveFrame
    //     0x75417c: mov             SP, fp
    //     0x754180: ldp             fp, lr, [SP], #0x10
    // 0x754184: ret
    //     0x754184: ret             
    // 0x754188: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x754188: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x75418c: b               #0x754160
  }
}

// class id: 3195, size: 0xc, field offset: 0xc
//   const constructor, 
class RehberIletisimPage extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bf158, size: 0x8c
    // 0x7bf158: EnterFrame
    //     0x7bf158: stp             fp, lr, [SP, #-0x10]!
    //     0x7bf15c: mov             fp, SP
    // 0x7bf160: AllocStack(0x10)
    //     0x7bf160: sub             SP, SP, #0x10
    // 0x7bf164: CheckStackOverflow
    //     0x7bf164: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bf168: cmp             SP, x16
    //     0x7bf16c: b.ls            #0x7bf1dc
    // 0x7bf170: r1 = <RehberIletisimPage>
    //     0x7bf170: add             x1, PP, #0x12, lsl #12  ; [pp+0x12550] TypeArguments: <RehberIletisimPage>
    //     0x7bf174: ldr             x1, [x1, #0x550]
    // 0x7bf178: r0 = _RehberIletisimPageState()
    //     0x7bf178: bl              #0x7bf1e4  ; Allocate_RehberIletisimPageStateStub -> _RehberIletisimPageState (size=0x3c)
    // 0x7bf17c: mov             x1, x0
    // 0x7bf180: r0 = true
    //     0x7bf180: add             x0, NULL, #0x20  ; true
    // 0x7bf184: stur            x1, [fp, #-8]
    // 0x7bf188: ArrayStore: r1[0] = r0  ; List_4
    //     0x7bf188: stur            w0, [x1, #0x17]
    // 0x7bf18c: r4 = const [0, 0, 0, 0, null]
    //     0x7bf18c: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x7bf190: r0 = app()
    //     0x7bf190: bl              #0x5d81cc  ; [package:firebase_core/firebase_core.dart] Firebase::app
    // 0x7bf194: mov             x1, x0
    // 0x7bf198: r0 = instanceFor()
    //     0x7bf198: bl              #0x6d022c  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::instanceFor
    // 0x7bf19c: stur            x0, [fp, #-0x10]
    // 0x7bf1a0: r0 = FirestoreService()
    //     0x7bf1a0: bl              #0x6d0220  ; AllocateFirestoreServiceStub -> FirestoreService (size=0xc)
    // 0x7bf1a4: ldur            x1, [fp, #-0x10]
    // 0x7bf1a8: StoreField: r0->field_7 = r1
    //     0x7bf1a8: stur            w1, [x0, #7]
    // 0x7bf1ac: ldur            x1, [fp, #-8]
    // 0x7bf1b0: StoreField: r1->field_13 = r0
    //     0x7bf1b0: stur            w0, [x1, #0x13]
    //     0x7bf1b4: ldurb           w16, [x1, #-1]
    //     0x7bf1b8: ldurb           w17, [x0, #-1]
    //     0x7bf1bc: and             x16, x17, x16, lsr #2
    //     0x7bf1c0: tst             x16, HEAP, lsr #32
    //     0x7bf1c4: b.eq            #0x7bf1cc
    //     0x7bf1c8: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7bf1cc: mov             x0, x1
    // 0x7bf1d0: LeaveFrame
    //     0x7bf1d0: mov             SP, fp
    //     0x7bf1d4: ldp             fp, lr, [SP], #0x10
    // 0x7bf1d8: ret
    //     0x7bf1d8: ret             
    // 0x7bf1dc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bf1dc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bf1e0: b               #0x7bf170
  }
}

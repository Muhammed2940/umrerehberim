// lib: , url: package:umrem_demo/features/dualar/screens/kuran.dart

// class id: 1049575, size: 0x8
class :: {
}

// class id: 2477, size: 0x30, field offset: 0x14
class _QuranPageState extends State<dynamic> {

  late final QuranDownloadProvider downloadController; // offset: 0x24
  late final QuranProvider controller; // offset: 0x20

  _ initState(/* No info */) {
    // ** addr: 0x5e4d98, size: 0x30
    // 0x5e4d98: EnterFrame
    //     0x5e4d98: stp             fp, lr, [SP, #-0x10]!
    //     0x5e4d9c: mov             fp, SP
    // 0x5e4da0: CheckStackOverflow
    //     0x5e4da0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e4da4: cmp             SP, x16
    //     0x5e4da8: b.ls            #0x5e4dc0
    // 0x5e4dac: r0 = _loadLastPage()
    //     0x5e4dac: bl              #0x5e4de8  ; [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_loadLastPage
    // 0x5e4db0: r0 = Null
    //     0x5e4db0: mov             x0, NULL
    // 0x5e4db4: LeaveFrame
    //     0x5e4db4: mov             SP, fp
    //     0x5e4db8: ldp             fp, lr, [SP], #0x10
    // 0x5e4dbc: ret
    //     0x5e4dbc: ret             
    // 0x5e4dc0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e4dc0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e4dc4: b               #0x5e4dac
  }
  _ _loadLastPage(/* No info */) async {
    // ** addr: 0x5e4de8, size: 0x1d8
    // 0x5e4de8: EnterFrame
    //     0x5e4de8: stp             fp, lr, [SP, #-0x10]!
    //     0x5e4dec: mov             fp, SP
    // 0x5e4df0: AllocStack(0x28)
    //     0x5e4df0: sub             SP, SP, #0x28
    // 0x5e4df4: SetupParameters(_QuranPageState this /* r1 => r1, fp-0x10 */)
    //     0x5e4df4: stur            NULL, [fp, #-8]
    //     0x5e4df8: stur            x1, [fp, #-0x10]
    // 0x5e4dfc: CheckStackOverflow
    //     0x5e4dfc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e4e00: cmp             SP, x16
    //     0x5e4e04: b.ls            #0x5e4fb4
    // 0x5e4e08: r1 = 2
    //     0x5e4e08: mov             x1, #2
    // 0x5e4e0c: r0 = AllocateContext()
    //     0x5e4e0c: bl              #0x927010  ; AllocateContextStub
    // 0x5e4e10: mov             x2, x0
    // 0x5e4e14: ldur            x1, [fp, #-0x10]
    // 0x5e4e18: stur            x2, [fp, #-0x18]
    // 0x5e4e1c: StoreField: r2->field_f = r1
    //     0x5e4e1c: stur            w1, [x2, #0xf]
    // 0x5e4e20: InitAsync() -> Future<void?>
    //     0x5e4e20: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5e4e24: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e4e28: r0 = getInstance()
    //     0x5e4e28: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x5e4e2c: mov             x1, x0
    // 0x5e4e30: stur            x1, [fp, #-0x20]
    // 0x5e4e34: r0 = Await()
    //     0x5e4e34: bl              #0x3dd188  ; AwaitStub
    // 0x5e4e38: mov             x1, x0
    // 0x5e4e3c: r2 = "quran_last_page"
    //     0x5e4e3c: add             x2, PP, #0x17, lsl #12  ; [pp+0x17a90] "quran_last_page"
    //     0x5e4e40: ldr             x2, [x2, #0xa90]
    // 0x5e4e44: r0 = getInt()
    //     0x5e4e44: bl              #0x5cea8c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInt
    // 0x5e4e48: cmp             w0, NULL
    // 0x5e4e4c: b.ne            #0x5e4e58
    // 0x5e4e50: r4 = 0
    //     0x5e4e50: mov             x4, #0
    // 0x5e4e54: b               #0x5e4e68
    // 0x5e4e58: r1 = LoadInt32Instr(r0)
    //     0x5e4e58: sbfx            x1, x0, #1, #0x1f
    //     0x5e4e5c: tbz             w0, #0, #0x5e4e64
    //     0x5e4e60: ldur            x1, [x0, #7]
    // 0x5e4e64: mov             x4, x1
    // 0x5e4e68: ldur            x2, [fp, #-0x10]
    // 0x5e4e6c: ldur            x3, [fp, #-0x18]
    // 0x5e4e70: r0 = BoxInt64Instr(r4)
    //     0x5e4e70: sbfiz           x0, x4, #1, #0x1f
    //     0x5e4e74: cmp             x4, x0, asr #1
    //     0x5e4e78: b.eq            #0x5e4e84
    //     0x5e4e7c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x5e4e80: stur            x4, [x0, #7]
    // 0x5e4e84: StoreField: r3->field_13 = r0
    //     0x5e4e84: stur            w0, [x3, #0x13]
    //     0x5e4e88: tbz             w0, #0, #0x5e4ea4
    //     0x5e4e8c: ldurb           w16, [x3, #-1]
    //     0x5e4e90: ldurb           w17, [x0, #-1]
    //     0x5e4e94: and             x16, x17, x16, lsr #2
    //     0x5e4e98: tst             x16, HEAP, lsr #32
    //     0x5e4e9c: b.eq            #0x5e4ea4
    //     0x5e4ea0: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5e4ea4: LoadField: r1 = r2->field_1b
    //     0x5e4ea4: ldur            w1, [x2, #0x1b]
    // 0x5e4ea8: DecompressPointer r1
    //     0x5e4ea8: add             x1, x1, HEAP, lsl #32
    // 0x5e4eac: LoadField: r0 = r1->field_3b
    //     0x5e4eac: ldur            w0, [x1, #0x3b]
    // 0x5e4eb0: DecompressPointer r0
    //     0x5e4eb0: add             x0, x0, HEAP, lsl #32
    // 0x5e4eb4: LoadField: r2 = r0->field_b
    //     0x5e4eb4: ldur            w2, [x0, #0xb]
    // 0x5e4eb8: cbz             w2, #0x5e4ec8
    // 0x5e4ebc: mov             x2, x4
    // 0x5e4ec0: r0 = jumpToPage()
    //     0x5e4ec0: bl              #0x5e4fc0  ; [package:flutter/src/widgets/page_view.dart] PageController::jumpToPage
    // 0x5e4ec4: b               #0x5e4fac
    // 0x5e4ec8: r0 = LoadStaticField(0x834)
    //     0x5e4ec8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e4ecc: ldr             x0, [x0, #0x1068]
    // 0x5e4ed0: cmp             w0, NULL
    // 0x5e4ed4: b.eq            #0x5e4fbc
    // 0x5e4ed8: LoadField: r4 = r0->field_53
    //     0x5e4ed8: ldur            w4, [x0, #0x53]
    // 0x5e4edc: DecompressPointer r4
    //     0x5e4edc: add             x4, x4, HEAP, lsl #32
    // 0x5e4ee0: stur            x4, [fp, #-0x20]
    // 0x5e4ee4: LoadField: r0 = r4->field_7
    //     0x5e4ee4: ldur            w0, [x4, #7]
    // 0x5e4ee8: DecompressPointer r0
    //     0x5e4ee8: add             x0, x0, HEAP, lsl #32
    // 0x5e4eec: mov             x2, x3
    // 0x5e4ef0: stur            x0, [fp, #-0x10]
    // 0x5e4ef4: r1 = Function '<anonymous closure>':.
    //     0x5e4ef4: add             x1, PP, #0x18, lsl #12  ; [pp+0x18618] AnonymousClosure: (0x5e5120), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_loadLastPage (0x5e4de8)
    //     0x5e4ef8: ldr             x1, [x1, #0x618]
    // 0x5e4efc: r0 = AllocateClosure()
    //     0x5e4efc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e4f00: ldur            x2, [fp, #-0x10]
    // 0x5e4f04: mov             x3, x0
    // 0x5e4f08: r1 = Null
    //     0x5e4f08: mov             x1, NULL
    // 0x5e4f0c: stur            x3, [fp, #-0x10]
    // 0x5e4f10: cmp             w2, NULL
    // 0x5e4f14: b.eq            #0x5e4f34
    // 0x5e4f18: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x5e4f18: ldur            w4, [x2, #0x17]
    // 0x5e4f1c: DecompressPointer r4
    //     0x5e4f1c: add             x4, x4, HEAP, lsl #32
    // 0x5e4f20: r8 = X0
    //     0x5e4f20: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x5e4f24: LoadField: r9 = r4->field_7
    //     0x5e4f24: ldur            x9, [x4, #7]
    // 0x5e4f28: r3 = Null
    //     0x5e4f28: add             x3, PP, #0x18, lsl #12  ; [pp+0x18620] Null
    //     0x5e4f2c: ldr             x3, [x3, #0x620]
    // 0x5e4f30: blr             x9
    // 0x5e4f34: ldur            x0, [fp, #-0x20]
    // 0x5e4f38: LoadField: r1 = r0->field_b
    //     0x5e4f38: ldur            w1, [x0, #0xb]
    // 0x5e4f3c: LoadField: r2 = r0->field_f
    //     0x5e4f3c: ldur            w2, [x0, #0xf]
    // 0x5e4f40: DecompressPointer r2
    //     0x5e4f40: add             x2, x2, HEAP, lsl #32
    // 0x5e4f44: LoadField: r3 = r2->field_b
    //     0x5e4f44: ldur            w3, [x2, #0xb]
    // 0x5e4f48: r2 = LoadInt32Instr(r1)
    //     0x5e4f48: sbfx            x2, x1, #1, #0x1f
    // 0x5e4f4c: stur            x2, [fp, #-0x28]
    // 0x5e4f50: r1 = LoadInt32Instr(r3)
    //     0x5e4f50: sbfx            x1, x3, #1, #0x1f
    // 0x5e4f54: cmp             x2, x1
    // 0x5e4f58: b.ne            #0x5e4f64
    // 0x5e4f5c: mov             x1, x0
    // 0x5e4f60: r0 = _growToNextCapacity()
    //     0x5e4f60: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x5e4f64: ldur            x2, [fp, #-0x20]
    // 0x5e4f68: ldur            x3, [fp, #-0x28]
    // 0x5e4f6c: add             x4, x3, #1
    // 0x5e4f70: lsl             x5, x4, #1
    // 0x5e4f74: StoreField: r2->field_b = r5
    //     0x5e4f74: stur            w5, [x2, #0xb]
    // 0x5e4f78: LoadField: r1 = r2->field_f
    //     0x5e4f78: ldur            w1, [x2, #0xf]
    // 0x5e4f7c: DecompressPointer r1
    //     0x5e4f7c: add             x1, x1, HEAP, lsl #32
    // 0x5e4f80: ldur            x0, [fp, #-0x10]
    // 0x5e4f84: ArrayStore: r1[r3] = r0  ; List_4
    //     0x5e4f84: add             x25, x1, x3, lsl #2
    //     0x5e4f88: add             x25, x25, #0xf
    //     0x5e4f8c: str             w0, [x25]
    //     0x5e4f90: tbz             w0, #0, #0x5e4fac
    //     0x5e4f94: ldurb           w16, [x1, #-1]
    //     0x5e4f98: ldurb           w17, [x0, #-1]
    //     0x5e4f9c: and             x16, x17, x16, lsr #2
    //     0x5e4fa0: tst             x16, HEAP, lsr #32
    //     0x5e4fa4: b.eq            #0x5e4fac
    //     0x5e4fa8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5e4fac: r0 = Null
    //     0x5e4fac: mov             x0, NULL
    // 0x5e4fb0: r0 = ReturnAsyncNotFuture()
    //     0x5e4fb0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e4fb4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e4fb4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e4fb8: b               #0x5e4e08
    // 0x5e4fbc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e4fbc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, Duration) {
    // ** addr: 0x5e5120, size: 0x7c
    // 0x5e5120: EnterFrame
    //     0x5e5120: stp             fp, lr, [SP, #-0x10]!
    //     0x5e5124: mov             fp, SP
    // 0x5e5128: ldr             x0, [fp, #0x18]
    // 0x5e512c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x5e512c: ldur            w1, [x0, #0x17]
    // 0x5e5130: DecompressPointer r1
    //     0x5e5130: add             x1, x1, HEAP, lsl #32
    // 0x5e5134: CheckStackOverflow
    //     0x5e5134: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e5138: cmp             SP, x16
    //     0x5e513c: b.ls            #0x5e5194
    // 0x5e5140: LoadField: r0 = r1->field_f
    //     0x5e5140: ldur            w0, [x1, #0xf]
    // 0x5e5144: DecompressPointer r0
    //     0x5e5144: add             x0, x0, HEAP, lsl #32
    // 0x5e5148: LoadField: r2 = r0->field_1b
    //     0x5e5148: ldur            w2, [x0, #0x1b]
    // 0x5e514c: DecompressPointer r2
    //     0x5e514c: add             x2, x2, HEAP, lsl #32
    // 0x5e5150: LoadField: r0 = r2->field_3b
    //     0x5e5150: ldur            w0, [x2, #0x3b]
    // 0x5e5154: DecompressPointer r0
    //     0x5e5154: add             x0, x0, HEAP, lsl #32
    // 0x5e5158: LoadField: r3 = r0->field_b
    //     0x5e5158: ldur            w3, [x0, #0xb]
    // 0x5e515c: cbz             w3, #0x5e5184
    // 0x5e5160: LoadField: r0 = r1->field_13
    //     0x5e5160: ldur            w0, [x1, #0x13]
    // 0x5e5164: DecompressPointer r0
    //     0x5e5164: add             x0, x0, HEAP, lsl #32
    // 0x5e5168: r1 = LoadInt32Instr(r0)
    //     0x5e5168: sbfx            x1, x0, #1, #0x1f
    //     0x5e516c: tbz             w0, #0, #0x5e5174
    //     0x5e5170: ldur            x1, [x0, #7]
    // 0x5e5174: mov             x16, x1
    // 0x5e5178: mov             x1, x2
    // 0x5e517c: mov             x2, x16
    // 0x5e5180: r0 = jumpToPage()
    //     0x5e5180: bl              #0x5e4fc0  ; [package:flutter/src/widgets/page_view.dart] PageController::jumpToPage
    // 0x5e5184: r0 = Null
    //     0x5e5184: mov             x0, NULL
    // 0x5e5188: LeaveFrame
    //     0x5e5188: mov             SP, fp
    //     0x5e518c: ldp             fp, lr, [SP], #0x10
    // 0x5e5190: ret
    //     0x5e5190: ret             
    // 0x5e5194: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e5194: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e5198: b               #0x5e5140
  }
  _ didChangeDependencies(/* No info */) {
    // ** addr: 0x6365e4, size: 0x238
    // 0x6365e4: EnterFrame
    //     0x6365e4: stp             fp, lr, [SP, #-0x10]!
    //     0x6365e8: mov             fp, SP
    // 0x6365ec: AllocStack(0x20)
    //     0x6365ec: sub             SP, SP, #0x20
    // 0x6365f0: SetupParameters(_QuranPageState this /* r1 => r1, fp-0x8 */)
    //     0x6365f0: stur            x1, [fp, #-8]
    // 0x6365f4: CheckStackOverflow
    //     0x6365f4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6365f8: cmp             SP, x16
    //     0x6365fc: b.ls            #0x636808
    // 0x636600: LoadField: r0 = r1->field_2b
    //     0x636600: ldur            w0, [x1, #0x2b]
    // 0x636604: DecompressPointer r0
    //     0x636604: add             x0, x0, HEAP, lsl #32
    // 0x636608: tbz             w0, #4, #0x6367d4
    // 0x63660c: LoadField: r0 = r1->field_f
    //     0x63660c: ldur            w0, [x1, #0xf]
    // 0x636610: DecompressPointer r0
    //     0x636610: add             x0, x0, HEAP, lsl #32
    // 0x636614: cmp             w0, NULL
    // 0x636618: b.eq            #0x636810
    // 0x63661c: r16 = <QuranProvider>
    //     0x63661c: add             x16, PP, #0x10, lsl #12  ; [pp+0x10bb0] TypeArguments: <QuranProvider>
    //     0x636620: ldr             x16, [x16, #0xbb0]
    // 0x636624: stp             x0, x16, [SP]
    // 0x636628: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x636628: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x63662c: r0 = ReadContext.read()
    //     0x63662c: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x636630: ldur            x1, [fp, #-8]
    // 0x636634: LoadField: r2 = r1->field_1f
    //     0x636634: ldur            w2, [x1, #0x1f]
    // 0x636638: DecompressPointer r2
    //     0x636638: add             x2, x2, HEAP, lsl #32
    // 0x63663c: r16 = Sentinel
    //     0x63663c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x636640: cmp             w2, w16
    // 0x636644: b.ne            #0x6367f8
    // 0x636648: StoreField: r1->field_1f = r0
    //     0x636648: stur            w0, [x1, #0x1f]
    //     0x63664c: ldurb           w16, [x1, #-1]
    //     0x636650: ldurb           w17, [x0, #-1]
    //     0x636654: and             x16, x17, x16, lsr #2
    //     0x636658: tst             x16, HEAP, lsr #32
    //     0x63665c: b.eq            #0x636664
    //     0x636660: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x636664: LoadField: r0 = r1->field_f
    //     0x636664: ldur            w0, [x1, #0xf]
    // 0x636668: DecompressPointer r0
    //     0x636668: add             x0, x0, HEAP, lsl #32
    // 0x63666c: cmp             w0, NULL
    // 0x636670: b.eq            #0x636814
    // 0x636674: r16 = <QuranDownloadProvider>
    //     0x636674: add             x16, PP, #0x10, lsl #12  ; [pp+0x10bc0] TypeArguments: <QuranDownloadProvider>
    //     0x636678: ldr             x16, [x16, #0xbc0]
    // 0x63667c: stp             x0, x16, [SP]
    // 0x636680: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x636680: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x636684: r0 = ReadContext.read()
    //     0x636684: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x636688: ldur            x2, [fp, #-8]
    // 0x63668c: LoadField: r1 = r2->field_23
    //     0x63668c: ldur            w1, [x2, #0x23]
    // 0x636690: DecompressPointer r1
    //     0x636690: add             x1, x1, HEAP, lsl #32
    // 0x636694: r16 = Sentinel
    //     0x636694: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x636698: cmp             w1, w16
    // 0x63669c: b.ne            #0x6367e4
    // 0x6366a0: StoreField: r2->field_23 = r0
    //     0x6366a0: stur            w0, [x2, #0x23]
    //     0x6366a4: ldurb           w16, [x2, #-1]
    //     0x6366a8: ldurb           w17, [x0, #-1]
    //     0x6366ac: and             x16, x17, x16, lsr #2
    //     0x6366b0: tst             x16, HEAP, lsr #32
    //     0x6366b4: b.eq            #0x6366bc
    //     0x6366b8: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6366bc: LoadField: r0 = r2->field_1f
    //     0x6366bc: ldur            w0, [x2, #0x1f]
    // 0x6366c0: DecompressPointer r0
    //     0x6366c0: add             x0, x0, HEAP, lsl #32
    // 0x6366c4: LoadField: r3 = r0->field_27
    //     0x6366c4: ldur            x3, [x0, #0x27]
    // 0x6366c8: r0 = BoxInt64Instr(r3)
    //     0x6366c8: sbfiz           x0, x3, #1, #0x1f
    //     0x6366cc: cmp             x3, x0, asr #1
    //     0x6366d0: b.eq            #0x6366dc
    //     0x6366d4: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6366d8: stur            x3, [x0, #7]
    // 0x6366dc: ArrayStore: r2[0] = r0  ; List_4
    //     0x6366dc: stur            w0, [x2, #0x17]
    //     0x6366e0: tbz             w0, #0, #0x6366fc
    //     0x6366e4: ldurb           w16, [x2, #-1]
    //     0x6366e8: ldurb           w17, [x0, #-1]
    //     0x6366ec: and             x16, x17, x16, lsr #2
    //     0x6366f0: tst             x16, HEAP, lsr #32
    //     0x6366f4: b.eq            #0x6366fc
    //     0x6366f8: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6366fc: r0 = InitLateStaticField(0xfc0) // [package:umrem_demo/common/constant/surahs_info.dart] ::quranIndex
    //     0x6366fc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x636700: ldr             x0, [x0, #0x1f80]
    //     0x636704: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x636708: cmp             w0, w16
    //     0x63670c: b.ne            #0x63671c
    //     0x636710: add             x2, PP, #0x16, lsl #12  ; [pp+0x16030] Field <::.quranIndex>: static late final (offset: 0xfc0)
    //     0x636714: ldr             x2, [x2, #0x30]
    //     0x636718: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x63671c: mov             x2, x0
    // 0x636720: LoadField: r0 = r2->field_b
    //     0x636720: ldur            w0, [x2, #0xb]
    // 0x636724: r1 = LoadInt32Instr(r0)
    //     0x636724: sbfx            x1, x0, #1, #0x1f
    // 0x636728: mov             x0, x1
    // 0x63672c: r1 = 0
    //     0x63672c: mov             x1, #0
    // 0x636730: cmp             x1, x0
    // 0x636734: b.hs            #0x636818
    // 0x636738: LoadField: r0 = r2->field_f
    //     0x636738: ldur            w0, [x2, #0xf]
    // 0x63673c: DecompressPointer r0
    //     0x63673c: add             x0, x0, HEAP, lsl #32
    // 0x636740: LoadField: r1 = r0->field_f
    //     0x636740: ldur            w1, [x0, #0xf]
    // 0x636744: DecompressPointer r1
    //     0x636744: add             x1, x1, HEAP, lsl #32
    // 0x636748: r0 = LoadClassIdInstr(r1)
    //     0x636748: ldur            x0, [x1, #-1]
    //     0x63674c: ubfx            x0, x0, #0xc, #0x14
    // 0x636750: r2 = "name"
    //     0x636750: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x636754: r0 = GDT[cid_x0 + 0x36e]()
    //     0x636754: add             lr, x0, #0x36e
    //     0x636758: ldr             lr, [x21, lr, lsl #3]
    //     0x63675c: blr             lr
    // 0x636760: mov             x3, x0
    // 0x636764: r2 = Null
    //     0x636764: mov             x2, NULL
    // 0x636768: r1 = Null
    //     0x636768: mov             x1, NULL
    // 0x63676c: stur            x3, [fp, #-0x10]
    // 0x636770: r4 = 60
    //     0x636770: mov             x4, #0x3c
    // 0x636774: branchIfSmi(r0, 0x636780)
    //     0x636774: tbz             w0, #0, #0x636780
    // 0x636778: r4 = LoadClassIdInstr(r0)
    //     0x636778: ldur            x4, [x0, #-1]
    //     0x63677c: ubfx            x4, x4, #0xc, #0x14
    // 0x636780: sub             x4, x4, #0x5e
    // 0x636784: cmp             x4, #1
    // 0x636788: b.ls            #0x63679c
    // 0x63678c: r8 = String?
    //     0x63678c: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x636790: r3 = Null
    //     0x636790: add             x3, PP, #0x18, lsl #12  ; [pp+0x185c0] Null
    //     0x636794: ldr             x3, [x3, #0x5c0]
    // 0x636798: r0 = String?()
    //     0x636798: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x63679c: ldur            x0, [fp, #-0x10]
    // 0x6367a0: ldur            x2, [fp, #-8]
    // 0x6367a4: StoreField: r2->field_13 = r0
    //     0x6367a4: stur            w0, [x2, #0x13]
    //     0x6367a8: ldurb           w16, [x2, #-1]
    //     0x6367ac: ldurb           w17, [x0, #-1]
    //     0x6367b0: and             x16, x17, x16, lsr #2
    //     0x6367b4: tst             x16, HEAP, lsr #32
    //     0x6367b8: b.eq            #0x6367c0
    //     0x6367bc: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6367c0: mov             x1, x2
    // 0x6367c4: r0 = _checkAndShowDownloadDialog()
    //     0x6367c4: bl              #0x63683c  ; [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_checkAndShowDownloadDialog
    // 0x6367c8: ldur            x0, [fp, #-8]
    // 0x6367cc: r1 = true
    //     0x6367cc: add             x1, NULL, #0x20  ; true
    // 0x6367d0: StoreField: r0->field_2b = r1
    //     0x6367d0: stur            w1, [x0, #0x2b]
    // 0x6367d4: r0 = Null
    //     0x6367d4: mov             x0, NULL
    // 0x6367d8: LeaveFrame
    //     0x6367d8: mov             SP, fp
    //     0x6367dc: ldp             fp, lr, [SP], #0x10
    // 0x6367e0: ret
    //     0x6367e0: ret             
    // 0x6367e4: r16 = "downloadController"
    //     0x6367e4: add             x16, PP, #0x18, lsl #12  ; [pp+0x185d0] "downloadController"
    //     0x6367e8: ldr             x16, [x16, #0x5d0]
    // 0x6367ec: str             x16, [SP]
    // 0x6367f0: r0 = _throwFieldAlreadyInitialized()
    //     0x6367f0: bl              #0x3e637c  ; [dart:_internal] LateError::_throwFieldAlreadyInitialized
    // 0x6367f4: brk             #0
    // 0x6367f8: r16 = "controller"
    //     0x6367f8: ldr             x16, [PP, #0x33a8]  ; [pp+0x33a8] "controller"
    // 0x6367fc: str             x16, [SP]
    // 0x636800: r0 = _throwFieldAlreadyInitialized()
    //     0x636800: bl              #0x3e637c  ; [dart:_internal] LateError::_throwFieldAlreadyInitialized
    // 0x636804: brk             #0
    // 0x636808: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x636808: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x63680c: b               #0x636600
    // 0x636810: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x636810: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x636814: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x636814: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x636818: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x636818: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  _ _checkAndShowDownloadDialog(/* No info */) async {
    // ** addr: 0x63683c, size: 0x1e0
    // 0x63683c: EnterFrame
    //     0x63683c: stp             fp, lr, [SP, #-0x10]!
    //     0x636840: mov             fp, SP
    // 0x636844: AllocStack(0x28)
    //     0x636844: sub             SP, SP, #0x28
    // 0x636848: SetupParameters(_QuranPageState this /* r1 => r1, fp-0x10 */)
    //     0x636848: stur            NULL, [fp, #-8]
    //     0x63684c: stur            x1, [fp, #-0x10]
    // 0x636850: CheckStackOverflow
    //     0x636850: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x636854: cmp             SP, x16
    //     0x636858: b.ls            #0x636a04
    // 0x63685c: r1 = 2
    //     0x63685c: mov             x1, #2
    // 0x636860: r0 = AllocateContext()
    //     0x636860: bl              #0x927010  ; AllocateContextStub
    // 0x636864: mov             x2, x0
    // 0x636868: ldur            x1, [fp, #-0x10]
    // 0x63686c: stur            x2, [fp, #-0x18]
    // 0x636870: StoreField: r2->field_f = r1
    //     0x636870: stur            w1, [x2, #0xf]
    // 0x636874: InitAsync() -> Future<void?>
    //     0x636874: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x636878: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x63687c: r0 = getInstance()
    //     0x63687c: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x636880: mov             x1, x0
    // 0x636884: stur            x1, [fp, #-0x20]
    // 0x636888: r0 = Await()
    //     0x636888: bl              #0x3dd188  ; AwaitStub
    // 0x63688c: mov             x3, x0
    // 0x636890: ldur            x2, [fp, #-0x18]
    // 0x636894: stur            x3, [fp, #-0x20]
    // 0x636898: StoreField: r2->field_13 = r0
    //     0x636898: stur            w0, [x2, #0x13]
    //     0x63689c: tbz             w0, #0, #0x6368b8
    //     0x6368a0: ldurb           w16, [x2, #-1]
    //     0x6368a4: ldurb           w17, [x0, #-1]
    //     0x6368a8: and             x16, x17, x16, lsr #2
    //     0x6368ac: tst             x16, HEAP, lsr #32
    //     0x6368b0: b.eq            #0x6368b8
    //     0x6368b4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6368b8: ldur            x0, [fp, #-0x10]
    // 0x6368bc: LoadField: r1 = r0->field_23
    //     0x6368bc: ldur            w1, [x0, #0x23]
    // 0x6368c0: DecompressPointer r1
    //     0x6368c0: add             x1, x1, HEAP, lsl #32
    // 0x6368c4: r16 = Sentinel
    //     0x6368c4: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x6368c8: cmp             w1, w16
    // 0x6368cc: b.eq            #0x636a0c
    // 0x6368d0: r0 = areAllPagesDownloaded()
    //     0x6368d0: bl              #0x5e6f24  ; [package:umrem_demo/features/dualar/providers/quran_download_provider.dart] QuranDownloadProvider::areAllPagesDownloaded
    // 0x6368d4: mov             x1, x0
    // 0x6368d8: stur            x1, [fp, #-0x10]
    // 0x6368dc: r0 = Await()
    //     0x6368dc: bl              #0x3dd188  ; AwaitStub
    // 0x6368e0: r16 = true
    //     0x6368e0: add             x16, NULL, #0x20  ; true
    // 0x6368e4: cmp             w0, w16
    // 0x6368e8: b.ne            #0x6368f4
    // 0x6368ec: r0 = Null
    //     0x6368ec: mov             x0, NULL
    // 0x6368f0: r0 = ReturnAsyncNotFuture()
    //     0x6368f0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6368f4: ldur            x1, [fp, #-0x20]
    // 0x6368f8: r2 = "quran_download_dialog_shown"
    //     0x6368f8: add             x2, PP, #0x18, lsl #12  ; [pp+0x185d8] "quran_download_dialog_shown"
    //     0x6368fc: ldr             x2, [x2, #0x5d8]
    // 0x636900: r0 = getBool()
    //     0x636900: bl              #0x5e60a4  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getBool
    // 0x636904: cmp             w0, NULL
    // 0x636908: b.eq            #0x636918
    // 0x63690c: tbnz            w0, #4, #0x636918
    // 0x636910: r0 = Null
    //     0x636910: mov             x0, NULL
    // 0x636914: r0 = ReturnAsyncNotFuture()
    //     0x636914: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x636918: r0 = LoadStaticField(0x834)
    //     0x636918: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x63691c: ldr             x0, [x0, #0x1068]
    // 0x636920: cmp             w0, NULL
    // 0x636924: b.eq            #0x636a18
    // 0x636928: LoadField: r3 = r0->field_53
    //     0x636928: ldur            w3, [x0, #0x53]
    // 0x63692c: DecompressPointer r3
    //     0x63692c: add             x3, x3, HEAP, lsl #32
    // 0x636930: stur            x3, [fp, #-0x20]
    // 0x636934: LoadField: r0 = r3->field_7
    //     0x636934: ldur            w0, [x3, #7]
    // 0x636938: DecompressPointer r0
    //     0x636938: add             x0, x0, HEAP, lsl #32
    // 0x63693c: ldur            x2, [fp, #-0x18]
    // 0x636940: stur            x0, [fp, #-0x10]
    // 0x636944: r1 = Function '<anonymous closure>':.
    //     0x636944: add             x1, PP, #0x18, lsl #12  ; [pp+0x185e0] AnonymousClosure: (0x636a1c), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_checkAndShowDownloadDialog (0x63683c)
    //     0x636948: ldr             x1, [x1, #0x5e0]
    // 0x63694c: r0 = AllocateClosure()
    //     0x63694c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x636950: ldur            x2, [fp, #-0x10]
    // 0x636954: mov             x3, x0
    // 0x636958: r1 = Null
    //     0x636958: mov             x1, NULL
    // 0x63695c: stur            x3, [fp, #-0x10]
    // 0x636960: cmp             w2, NULL
    // 0x636964: b.eq            #0x636984
    // 0x636968: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x636968: ldur            w4, [x2, #0x17]
    // 0x63696c: DecompressPointer r4
    //     0x63696c: add             x4, x4, HEAP, lsl #32
    // 0x636970: r8 = X0
    //     0x636970: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x636974: LoadField: r9 = r4->field_7
    //     0x636974: ldur            x9, [x4, #7]
    // 0x636978: r3 = Null
    //     0x636978: add             x3, PP, #0x18, lsl #12  ; [pp+0x185e8] Null
    //     0x63697c: ldr             x3, [x3, #0x5e8]
    // 0x636980: blr             x9
    // 0x636984: ldur            x0, [fp, #-0x20]
    // 0x636988: LoadField: r1 = r0->field_b
    //     0x636988: ldur            w1, [x0, #0xb]
    // 0x63698c: LoadField: r2 = r0->field_f
    //     0x63698c: ldur            w2, [x0, #0xf]
    // 0x636990: DecompressPointer r2
    //     0x636990: add             x2, x2, HEAP, lsl #32
    // 0x636994: LoadField: r3 = r2->field_b
    //     0x636994: ldur            w3, [x2, #0xb]
    // 0x636998: r2 = LoadInt32Instr(r1)
    //     0x636998: sbfx            x2, x1, #1, #0x1f
    // 0x63699c: stur            x2, [fp, #-0x28]
    // 0x6369a0: r1 = LoadInt32Instr(r3)
    //     0x6369a0: sbfx            x1, x3, #1, #0x1f
    // 0x6369a4: cmp             x2, x1
    // 0x6369a8: b.ne            #0x6369b4
    // 0x6369ac: mov             x1, x0
    // 0x6369b0: r0 = _growToNextCapacity()
    //     0x6369b0: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6369b4: ldur            x2, [fp, #-0x20]
    // 0x6369b8: ldur            x3, [fp, #-0x28]
    // 0x6369bc: add             x4, x3, #1
    // 0x6369c0: lsl             x5, x4, #1
    // 0x6369c4: StoreField: r2->field_b = r5
    //     0x6369c4: stur            w5, [x2, #0xb]
    // 0x6369c8: LoadField: r1 = r2->field_f
    //     0x6369c8: ldur            w1, [x2, #0xf]
    // 0x6369cc: DecompressPointer r1
    //     0x6369cc: add             x1, x1, HEAP, lsl #32
    // 0x6369d0: ldur            x0, [fp, #-0x10]
    // 0x6369d4: ArrayStore: r1[r3] = r0  ; List_4
    //     0x6369d4: add             x25, x1, x3, lsl #2
    //     0x6369d8: add             x25, x25, #0xf
    //     0x6369dc: str             w0, [x25]
    //     0x6369e0: tbz             w0, #0, #0x6369fc
    //     0x6369e4: ldurb           w16, [x1, #-1]
    //     0x6369e8: ldurb           w17, [x0, #-1]
    //     0x6369ec: and             x16, x17, x16, lsr #2
    //     0x6369f0: tst             x16, HEAP, lsr #32
    //     0x6369f4: b.eq            #0x6369fc
    //     0x6369f8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6369fc: r0 = Null
    //     0x6369fc: mov             x0, NULL
    // 0x636a00: r0 = ReturnAsyncNotFuture()
    //     0x636a00: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x636a04: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x636a04: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x636a08: b               #0x63685c
    // 0x636a0c: r9 = downloadController
    //     0x636a0c: add             x9, PP, #0x16, lsl #12  ; [pp+0x160f8] Field <_QuranPageState@932390076.downloadController>: late final (offset: 0x24)
    //     0x636a10: ldr             x9, [x9, #0xf8]
    // 0x636a14: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x636a14: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x636a18: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x636a18: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic, Duration) async {
    // ** addr: 0x636a1c, size: 0xb4
    // 0x636a1c: EnterFrame
    //     0x636a1c: stp             fp, lr, [SP, #-0x10]!
    //     0x636a20: mov             fp, SP
    // 0x636a24: AllocStack(0x18)
    //     0x636a24: sub             SP, SP, #0x18
    // 0x636a28: SetupParameters(_QuranPageState this /* r1 */)
    //     0x636a28: stur            NULL, [fp, #-8]
    //     0x636a2c: mov             x0, #0
    //     0x636a30: add             x1, fp, w0, sxtw #2
    //     0x636a34: ldr             x1, [x1, #0x18]
    //     0x636a38: ldur            w2, [x1, #0x17]
    //     0x636a3c: add             x2, x2, HEAP, lsl #32
    //     0x636a40: stur            x2, [fp, #-0x10]
    // 0x636a44: CheckStackOverflow
    //     0x636a44: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x636a48: cmp             SP, x16
    //     0x636a4c: b.ls            #0x636ac4
    // 0x636a50: InitAsync() -> Future<void?>
    //     0x636a50: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x636a54: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x636a58: ldur            x0, [fp, #-0x10]
    // 0x636a5c: LoadField: r1 = r0->field_f
    //     0x636a5c: ldur            w1, [x0, #0xf]
    // 0x636a60: DecompressPointer r1
    //     0x636a60: add             x1, x1, HEAP, lsl #32
    // 0x636a64: LoadField: r2 = r1->field_f
    //     0x636a64: ldur            w2, [x1, #0xf]
    // 0x636a68: DecompressPointer r2
    //     0x636a68: add             x2, x2, HEAP, lsl #32
    // 0x636a6c: cmp             w2, NULL
    // 0x636a70: b.eq            #0x636abc
    // 0x636a74: LoadField: r1 = r0->field_13
    //     0x636a74: ldur            w1, [x0, #0x13]
    // 0x636a78: DecompressPointer r1
    //     0x636a78: add             x1, x1, HEAP, lsl #32
    // 0x636a7c: r2 = "quran_download_dialog_shown"
    //     0x636a7c: add             x2, PP, #0x18, lsl #12  ; [pp+0x185d8] "quran_download_dialog_shown"
    //     0x636a80: ldr             x2, [x2, #0x5d8]
    // 0x636a84: r3 = true
    //     0x636a84: add             x3, NULL, #0x20  ; true
    // 0x636a88: r0 = setBool()
    //     0x636a88: bl              #0x636ad0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setBool
    // 0x636a8c: mov             x1, x0
    // 0x636a90: stur            x1, [fp, #-0x18]
    // 0x636a94: r0 = Await()
    //     0x636a94: bl              #0x3dd188  ; AwaitStub
    // 0x636a98: ldur            x0, [fp, #-0x10]
    // 0x636a9c: LoadField: r1 = r0->field_f
    //     0x636a9c: ldur            w1, [x0, #0xf]
    // 0x636aa0: DecompressPointer r1
    //     0x636aa0: add             x1, x1, HEAP, lsl #32
    // 0x636aa4: LoadField: r0 = r1->field_f
    //     0x636aa4: ldur            w0, [x1, #0xf]
    // 0x636aa8: DecompressPointer r0
    //     0x636aa8: add             x0, x0, HEAP, lsl #32
    // 0x636aac: cmp             w0, NULL
    // 0x636ab0: b.eq            #0x636acc
    // 0x636ab4: mov             x1, x0
    // 0x636ab8: r0 = show()
    //     0x636ab8: bl              #0x5e9e3c  ; [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] ContentDownloadDialog::show
    // 0x636abc: r0 = Null
    //     0x636abc: mov             x0, NULL
    // 0x636ac0: r0 = ReturnAsyncNotFuture()
    //     0x636ac0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x636ac4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x636ac4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x636ac8: b               #0x636a50
    // 0x636acc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x636acc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ build(/* No info */) {
    // ** addr: 0x6fc4a4, size: 0x884
    // 0x6fc4a4: EnterFrame
    //     0x6fc4a4: stp             fp, lr, [SP, #-0x10]!
    //     0x6fc4a8: mov             fp, SP
    // 0x6fc4ac: AllocStack(0x60)
    //     0x6fc4ac: sub             SP, SP, #0x60
    // 0x6fc4b0: SetupParameters(_QuranPageState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x6fc4b0: stur            x1, [fp, #-8]
    //     0x6fc4b4: stur            x2, [fp, #-0x10]
    // 0x6fc4b8: CheckStackOverflow
    //     0x6fc4b8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fc4bc: cmp             SP, x16
    //     0x6fc4c0: b.ls            #0x6fcd20
    // 0x6fc4c4: r1 = 2
    //     0x6fc4c4: mov             x1, #2
    // 0x6fc4c8: r0 = AllocateContext()
    //     0x6fc4c8: bl              #0x927010  ; AllocateContextStub
    // 0x6fc4cc: mov             x1, x0
    // 0x6fc4d0: ldur            x0, [fp, #-8]
    // 0x6fc4d4: stur            x1, [fp, #-0x18]
    // 0x6fc4d8: StoreField: r1->field_f = r0
    //     0x6fc4d8: stur            w0, [x1, #0xf]
    // 0x6fc4dc: ldur            x2, [fp, #-0x10]
    // 0x6fc4e0: StoreField: r1->field_13 = r2
    //     0x6fc4e0: stur            w2, [x1, #0x13]
    // 0x6fc4e4: r0 = TextStyle()
    //     0x6fc4e4: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6fc4e8: mov             x1, x0
    // 0x6fc4ec: r0 = true
    //     0x6fc4ec: add             x0, NULL, #0x20  ; true
    // 0x6fc4f0: stur            x1, [fp, #-0x10]
    // 0x6fc4f4: StoreField: r1->field_7 = r0
    //     0x6fc4f4: stur            w0, [x1, #7]
    // 0x6fc4f8: r2 = Instance_Color
    //     0x6fc4f8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x6fc4fc: ldr             x2, [x2, #0xb88]
    // 0x6fc500: StoreField: r1->field_b = r2
    //     0x6fc500: stur            w2, [x1, #0xb]
    // 0x6fc504: r2 = 24.000000
    //     0x6fc504: add             x2, PP, #0xc, lsl #12  ; [pp+0xcf28] 24
    //     0x6fc508: ldr             x2, [x2, #0xf28]
    // 0x6fc50c: StoreField: r1->field_1f = r2
    //     0x6fc50c: stur            w2, [x1, #0x1f]
    // 0x6fc510: r2 = Instance_FontWeight
    //     0x6fc510: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6fc514: ldr             x2, [x2, #0x1d0]
    // 0x6fc518: StoreField: r1->field_23 = r2
    //     0x6fc518: stur            w2, [x1, #0x23]
    // 0x6fc51c: r0 = Text()
    //     0x6fc51c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6fc520: mov             x1, x0
    // 0x6fc524: r0 = "Kuran-ı Kerim"
    //     0x6fc524: add             x0, PP, #0x15, lsl #12  ; [pp+0x15f28] "Kuran-ı Kerim"
    //     0x6fc528: ldr             x0, [x0, #0xf28]
    // 0x6fc52c: stur            x1, [fp, #-0x20]
    // 0x6fc530: StoreField: r1->field_b = r0
    //     0x6fc530: stur            w0, [x1, #0xb]
    // 0x6fc534: ldur            x0, [fp, #-0x10]
    // 0x6fc538: StoreField: r1->field_13 = r0
    //     0x6fc538: stur            w0, [x1, #0x13]
    // 0x6fc53c: r0 = AppBar()
    //     0x6fc53c: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x6fc540: stur            x0, [fp, #-0x10]
    // 0x6fc544: r16 = 0.000000
    //     0x6fc544: ldr             x16, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x6fc548: r30 = Instance_Color
    //     0x6fc548: add             lr, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x6fc54c: ldr             lr, [lr, #0x860]
    // 0x6fc550: stp             lr, x16, [SP, #8]
    // 0x6fc554: r16 = false
    //     0x6fc554: add             x16, NULL, #0x30  ; false
    // 0x6fc558: str             x16, [SP]
    // 0x6fc55c: mov             x1, x0
    // 0x6fc560: ldur            x2, [fp, #-0x20]
    // 0x6fc564: r4 = const [0, 0x5, 0x3, 0x2, backgroundColor, 0x3, centerTitle, 0x4, elevation, 0x2, null]
    //     0x6fc564: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e80] List(11) [0, 0x5, 0x3, 0x2, "backgroundColor", 0x3, "centerTitle", 0x4, "elevation", 0x2, Null]
    //     0x6fc568: ldr             x4, [x4, #0xe80]
    // 0x6fc56c: r0 = AppBar()
    //     0x6fc56c: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x6fc570: ldur            x2, [fp, #-0x18]
    // 0x6fc574: LoadField: r1 = r2->field_13
    //     0x6fc574: ldur            w1, [x2, #0x13]
    // 0x6fc578: DecompressPointer r1
    //     0x6fc578: add             x1, x1, HEAP, lsl #32
    // 0x6fc57c: r0 = of()
    //     0x6fc57c: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x6fc580: LoadField: r1 = r0->field_5b
    //     0x6fc580: ldur            w1, [x0, #0x5b]
    // 0x6fc584: DecompressPointer r1
    //     0x6fc584: add             x1, x1, HEAP, lsl #32
    // 0x6fc588: r0 = LoadClassIdInstr(r1)
    //     0x6fc588: ldur            x0, [x1, #-1]
    //     0x6fc58c: ubfx            x0, x0, #0xc, #0x14
    // 0x6fc590: r16 = 0.100000
    //     0x6fc590: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x6fc594: ldr             x16, [x16, #0x1f8]
    // 0x6fc598: str             x16, [SP]
    // 0x6fc59c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6fc59c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6fc5a0: ldr             x4, [x4, #0x198]
    // 0x6fc5a4: r0 = GDT[cid_x0 + -0xfe8]()
    //     0x6fc5a4: sub             lr, x0, #0xfe8
    //     0x6fc5a8: ldr             lr, [x21, lr, lsl #3]
    //     0x6fc5ac: blr             lr
    // 0x6fc5b0: stur            x0, [fp, #-0x20]
    // 0x6fc5b4: r0 = Radius()
    //     0x6fc5b4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6fc5b8: d0 = 8.000000
    //     0x6fc5b8: fmov            d0, #8.00000000
    // 0x6fc5bc: stur            x0, [fp, #-0x28]
    // 0x6fc5c0: StoreField: r0->field_7 = d0
    //     0x6fc5c0: stur            d0, [x0, #7]
    // 0x6fc5c4: StoreField: r0->field_f = d0
    //     0x6fc5c4: stur            d0, [x0, #0xf]
    // 0x6fc5c8: r0 = BorderRadius()
    //     0x6fc5c8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6fc5cc: mov             x1, x0
    // 0x6fc5d0: ldur            x0, [fp, #-0x28]
    // 0x6fc5d4: stur            x1, [fp, #-0x30]
    // 0x6fc5d8: StoreField: r1->field_7 = r0
    //     0x6fc5d8: stur            w0, [x1, #7]
    // 0x6fc5dc: StoreField: r1->field_b = r0
    //     0x6fc5dc: stur            w0, [x1, #0xb]
    // 0x6fc5e0: StoreField: r1->field_f = r0
    //     0x6fc5e0: stur            w0, [x1, #0xf]
    // 0x6fc5e4: StoreField: r1->field_13 = r0
    //     0x6fc5e4: stur            w0, [x1, #0x13]
    // 0x6fc5e8: r0 = BoxDecoration()
    //     0x6fc5e8: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6fc5ec: mov             x1, x0
    // 0x6fc5f0: ldur            x0, [fp, #-0x20]
    // 0x6fc5f4: stur            x1, [fp, #-0x28]
    // 0x6fc5f8: StoreField: r1->field_7 = r0
    //     0x6fc5f8: stur            w0, [x1, #7]
    // 0x6fc5fc: ldur            x0, [fp, #-0x30]
    // 0x6fc600: StoreField: r1->field_13 = r0
    //     0x6fc600: stur            w0, [x1, #0x13]
    // 0x6fc604: r0 = Instance_BoxShape
    //     0x6fc604: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6fc608: ldr             x0, [x0, #0x1c8]
    // 0x6fc60c: StoreField: r1->field_23 = r0
    //     0x6fc60c: stur            w0, [x1, #0x23]
    // 0x6fc610: r0 = Container()
    //     0x6fc610: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6fc614: stur            x0, [fp, #-0x20]
    // 0x6fc618: r16 = 50.000000
    //     0x6fc618: add             x16, PP, #0x13, lsl #12  ; [pp+0x13a48] 50
    //     0x6fc61c: ldr             x16, [x16, #0xa48]
    // 0x6fc620: r30 = 50.000000
    //     0x6fc620: add             lr, PP, #0x13, lsl #12  ; [pp+0x13a48] 50
    //     0x6fc624: ldr             lr, [lr, #0xa48]
    // 0x6fc628: stp             lr, x16, [SP, #0x10]
    // 0x6fc62c: ldur            x16, [fp, #-0x28]
    // 0x6fc630: r30 = Instance_Icon
    //     0x6fc630: add             lr, PP, #0x15, lsl #12  ; [pp+0x15ff8] Obj!Icon@a1e931
    //     0x6fc634: ldr             lr, [lr, #0xff8]
    // 0x6fc638: stp             lr, x16, [SP]
    // 0x6fc63c: mov             x1, x0
    // 0x6fc640: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x6fc640: add             x4, PP, #0x15, lsl #12  ; [pp+0x15990] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x6fc644: ldr             x4, [x4, #0x990]
    // 0x6fc648: r0 = Container()
    //     0x6fc648: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6fc64c: r0 = GestureDetector()
    //     0x6fc64c: bl              #0x658e60  ; AllocateGestureDetectorStub -> GestureDetector (size=0x10c)
    // 0x6fc650: ldur            x2, [fp, #-0x18]
    // 0x6fc654: r1 = Function '<anonymous closure>':.
    //     0x6fc654: add             x1, PP, #0x16, lsl #12  ; [pp+0x16000] AnonymousClosure: (0x71f5f4), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x6fc658: ldr             x1, [x1]
    // 0x6fc65c: stur            x0, [fp, #-0x28]
    // 0x6fc660: r0 = AllocateClosure()
    //     0x6fc660: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fc664: ldur            x16, [fp, #-0x20]
    // 0x6fc668: stp             x16, x0, [SP]
    // 0x6fc66c: ldur            x1, [fp, #-0x28]
    // 0x6fc670: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, onTap, 0x1, null]
    //     0x6fc670: add             x4, PP, #0x14, lsl #12  ; [pp+0x14d50] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "onTap", 0x1, Null]
    //     0x6fc674: ldr             x4, [x4, #0xd50]
    // 0x6fc678: r0 = GestureDetector()
    //     0x6fc678: bl              #0x6582a4  ; [package:flutter/src/widgets/gesture_detector.dart] GestureDetector::GestureDetector
    // 0x6fc67c: ldur            x2, [fp, #-0x18]
    // 0x6fc680: LoadField: r1 = r2->field_13
    //     0x6fc680: ldur            w1, [x2, #0x13]
    // 0x6fc684: DecompressPointer r1
    //     0x6fc684: add             x1, x1, HEAP, lsl #32
    // 0x6fc688: r0 = of()
    //     0x6fc688: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x6fc68c: LoadField: r1 = r0->field_5b
    //     0x6fc68c: ldur            w1, [x0, #0x5b]
    // 0x6fc690: DecompressPointer r1
    //     0x6fc690: add             x1, x1, HEAP, lsl #32
    // 0x6fc694: r0 = LoadClassIdInstr(r1)
    //     0x6fc694: ldur            x0, [x1, #-1]
    //     0x6fc698: ubfx            x0, x0, #0xc, #0x14
    // 0x6fc69c: r16 = 0.100000
    //     0x6fc69c: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x6fc6a0: ldr             x16, [x16, #0x1f8]
    // 0x6fc6a4: str             x16, [SP]
    // 0x6fc6a8: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6fc6a8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6fc6ac: ldr             x4, [x4, #0x198]
    // 0x6fc6b0: r0 = GDT[cid_x0 + -0xfe8]()
    //     0x6fc6b0: sub             lr, x0, #0xfe8
    //     0x6fc6b4: ldr             lr, [x21, lr, lsl #3]
    //     0x6fc6b8: blr             lr
    // 0x6fc6bc: stur            x0, [fp, #-0x20]
    // 0x6fc6c0: r0 = Radius()
    //     0x6fc6c0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6fc6c4: d0 = 8.000000
    //     0x6fc6c4: fmov            d0, #8.00000000
    // 0x6fc6c8: stur            x0, [fp, #-0x30]
    // 0x6fc6cc: StoreField: r0->field_7 = d0
    //     0x6fc6cc: stur            d0, [x0, #7]
    // 0x6fc6d0: StoreField: r0->field_f = d0
    //     0x6fc6d0: stur            d0, [x0, #0xf]
    // 0x6fc6d4: r0 = BorderRadius()
    //     0x6fc6d4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6fc6d8: mov             x1, x0
    // 0x6fc6dc: ldur            x0, [fp, #-0x30]
    // 0x6fc6e0: stur            x1, [fp, #-0x38]
    // 0x6fc6e4: StoreField: r1->field_7 = r0
    //     0x6fc6e4: stur            w0, [x1, #7]
    // 0x6fc6e8: StoreField: r1->field_b = r0
    //     0x6fc6e8: stur            w0, [x1, #0xb]
    // 0x6fc6ec: StoreField: r1->field_f = r0
    //     0x6fc6ec: stur            w0, [x1, #0xf]
    // 0x6fc6f0: StoreField: r1->field_13 = r0
    //     0x6fc6f0: stur            w0, [x1, #0x13]
    // 0x6fc6f4: r0 = BoxDecoration()
    //     0x6fc6f4: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6fc6f8: mov             x1, x0
    // 0x6fc6fc: ldur            x0, [fp, #-0x20]
    // 0x6fc700: stur            x1, [fp, #-0x30]
    // 0x6fc704: StoreField: r1->field_7 = r0
    //     0x6fc704: stur            w0, [x1, #7]
    // 0x6fc708: ldur            x0, [fp, #-0x38]
    // 0x6fc70c: StoreField: r1->field_13 = r0
    //     0x6fc70c: stur            w0, [x1, #0x13]
    // 0x6fc710: r0 = Instance_BoxShape
    //     0x6fc710: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6fc714: ldr             x0, [x0, #0x1c8]
    // 0x6fc718: StoreField: r1->field_23 = r0
    //     0x6fc718: stur            w0, [x1, #0x23]
    // 0x6fc71c: ldur            x2, [fp, #-8]
    // 0x6fc720: ArrayLoad: r5 = r2[0]  ; List_4
    //     0x6fc720: ldur            w5, [x2, #0x17]
    // 0x6fc724: DecompressPointer r5
    //     0x6fc724: add             x5, x5, HEAP, lsl #32
    // 0x6fc728: stur            x5, [fp, #-0x20]
    // 0x6fc72c: r0 = InitLateStaticField(0xfc4) // [package:umrem_demo/common/constant/surahs_info.dart] ::translations
    //     0x6fc72c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fc730: ldr             x0, [x0, #0x1f88]
    //     0x6fc734: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fc738: cmp             w0, w16
    //     0x6fc73c: b.ne            #0x6fc74c
    //     0x6fc740: add             x2, PP, #0x16, lsl #12  ; [pp+0x16008] Field <::.translations>: static late (offset: 0xfc4)
    //     0x6fc744: ldr             x2, [x2, #8]
    //     0x6fc748: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6fc74c: r1 = Function '<anonymous closure>':.
    //     0x6fc74c: add             x1, PP, #0x16, lsl #12  ; [pp+0x16010] AnonymousClosure: (0x71dbb4), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x6fc750: ldr             x1, [x1, #0x10]
    // 0x6fc754: r2 = Null
    //     0x6fc754: mov             x2, NULL
    // 0x6fc758: stur            x0, [fp, #-0x38]
    // 0x6fc75c: r0 = AllocateClosure()
    //     0x6fc75c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fc760: r16 = <DropdownMenuItem<int>>
    //     0x6fc760: add             x16, PP, #0x16, lsl #12  ; [pp+0x16018] TypeArguments: <DropdownMenuItem<int>>
    //     0x6fc764: ldr             x16, [x16, #0x18]
    // 0x6fc768: ldur            lr, [fp, #-0x38]
    // 0x6fc76c: stp             lr, x16, [SP, #8]
    // 0x6fc770: str             x0, [SP]
    // 0x6fc774: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6fc774: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6fc778: r0 = map()
    //     0x6fc778: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x6fc77c: LoadField: r1 = r0->field_7
    //     0x6fc77c: ldur            w1, [x0, #7]
    // 0x6fc780: DecompressPointer r1
    //     0x6fc780: add             x1, x1, HEAP, lsl #32
    // 0x6fc784: mov             x2, x0
    // 0x6fc788: r0 = _GrowableList.of()
    //     0x6fc788: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x6fc78c: ldur            x2, [fp, #-0x18]
    // 0x6fc790: r1 = Function '<anonymous closure>':.
    //     0x6fc790: add             x1, PP, #0x16, lsl #12  ; [pp+0x16020] AnonymousClosure: (0x71da48), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x6fc794: ldr             x1, [x1, #0x20]
    // 0x6fc798: stur            x0, [fp, #-0x38]
    // 0x6fc79c: r0 = AllocateClosure()
    //     0x6fc79c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fc7a0: r1 = <int>
    //     0x6fc7a0: ldr             x1, [PP, #0xc20]  ; [pp+0xc20] TypeArguments: <int>
    // 0x6fc7a4: stur            x0, [fp, #-0x40]
    // 0x6fc7a8: r0 = DropdownButton()
    //     0x6fc7a8: bl              #0x6db8ec  ; AllocateDropdownButtonStub -> DropdownButton<X0> (size=0x90)
    // 0x6fc7ac: mov             x1, x0
    // 0x6fc7b0: ldur            x2, [fp, #-0x38]
    // 0x6fc7b4: ldur            x3, [fp, #-0x40]
    // 0x6fc7b8: ldur            x5, [fp, #-0x20]
    // 0x6fc7bc: stur            x0, [fp, #-0x20]
    // 0x6fc7c0: r0 = DropdownButton()
    //     0x6fc7c0: bl              #0x6fcd28  ; [package:flutter/src/material/dropdown.dart] DropdownButton::DropdownButton
    // 0x6fc7c4: r0 = DropdownButtonHideUnderline()
    //     0x6fc7c4: bl              #0x6db770  ; AllocateDropdownButtonHideUnderlineStub -> DropdownButtonHideUnderline (size=0x10)
    // 0x6fc7c8: mov             x1, x0
    // 0x6fc7cc: ldur            x0, [fp, #-0x20]
    // 0x6fc7d0: stur            x1, [fp, #-0x38]
    // 0x6fc7d4: StoreField: r1->field_b = r0
    //     0x6fc7d4: stur            w0, [x1, #0xb]
    // 0x6fc7d8: r0 = Container()
    //     0x6fc7d8: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6fc7dc: stur            x0, [fp, #-0x20]
    // 0x6fc7e0: ldur            x16, [fp, #-0x30]
    // 0x6fc7e4: r30 = Instance_EdgeInsets
    //     0x6fc7e4: add             lr, PP, #0xc, lsl #12  ; [pp+0xcdd8] Obj!EdgeInsets@a0bed1
    //     0x6fc7e8: ldr             lr, [lr, #0xdd8]
    // 0x6fc7ec: stp             lr, x16, [SP, #8]
    // 0x6fc7f0: ldur            x16, [fp, #-0x38]
    // 0x6fc7f4: str             x16, [SP]
    // 0x6fc7f8: mov             x1, x0
    // 0x6fc7fc: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x1, padding, 0x2, null]
    //     0x6fc7fc: add             x4, PP, #0x16, lsl #12  ; [pp+0x16028] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x1, "padding", 0x2, Null]
    //     0x6fc800: ldr             x4, [x4, #0x28]
    // 0x6fc804: r0 = Container()
    //     0x6fc804: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6fc808: r1 = Null
    //     0x6fc808: mov             x1, NULL
    // 0x6fc80c: r2 = 4
    //     0x6fc80c: mov             x2, #4
    // 0x6fc810: r0 = AllocateArray()
    //     0x6fc810: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6fc814: mov             x2, x0
    // 0x6fc818: ldur            x0, [fp, #-0x28]
    // 0x6fc81c: stur            x2, [fp, #-0x30]
    // 0x6fc820: StoreField: r2->field_f = r0
    //     0x6fc820: stur            w0, [x2, #0xf]
    // 0x6fc824: ldur            x0, [fp, #-0x20]
    // 0x6fc828: StoreField: r2->field_13 = r0
    //     0x6fc828: stur            w0, [x2, #0x13]
    // 0x6fc82c: r1 = <Widget>
    //     0x6fc82c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6fc830: r0 = AllocateGrowableArray()
    //     0x6fc830: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6fc834: mov             x1, x0
    // 0x6fc838: ldur            x0, [fp, #-0x30]
    // 0x6fc83c: stur            x1, [fp, #-0x20]
    // 0x6fc840: StoreField: r1->field_f = r0
    //     0x6fc840: stur            w0, [x1, #0xf]
    // 0x6fc844: r2 = 4
    //     0x6fc844: mov             x2, #4
    // 0x6fc848: StoreField: r1->field_b = r2
    //     0x6fc848: stur            w2, [x1, #0xb]
    // 0x6fc84c: r0 = Row()
    //     0x6fc84c: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6fc850: mov             x2, x0
    // 0x6fc854: r0 = Instance_Axis
    //     0x6fc854: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6fc858: stur            x2, [fp, #-0x28]
    // 0x6fc85c: StoreField: r2->field_f = r0
    //     0x6fc85c: stur            w0, [x2, #0xf]
    // 0x6fc860: r3 = Instance_MainAxisAlignment
    //     0x6fc860: add             x3, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6fc864: ldr             x3, [x3, #0x230]
    // 0x6fc868: StoreField: r2->field_13 = r3
    //     0x6fc868: stur            w3, [x2, #0x13]
    // 0x6fc86c: r4 = Instance_MainAxisSize
    //     0x6fc86c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6fc870: ldr             x4, [x4, #0x330]
    // 0x6fc874: ArrayStore: r2[0] = r4  ; List_4
    //     0x6fc874: stur            w4, [x2, #0x17]
    // 0x6fc878: r5 = Instance_CrossAxisAlignment
    //     0x6fc878: add             x5, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6fc87c: ldr             x5, [x5, #0x338]
    // 0x6fc880: StoreField: r2->field_1b = r5
    //     0x6fc880: stur            w5, [x2, #0x1b]
    // 0x6fc884: r6 = Instance_VerticalDirection
    //     0x6fc884: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6fc888: ldr             x6, [x6, #0x340]
    // 0x6fc88c: StoreField: r2->field_23 = r6
    //     0x6fc88c: stur            w6, [x2, #0x23]
    // 0x6fc890: r7 = Instance_Clip
    //     0x6fc890: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6fc894: ldr             x7, [x7, #0x348]
    // 0x6fc898: StoreField: r2->field_2b = r7
    //     0x6fc898: stur            w7, [x2, #0x2b]
    // 0x6fc89c: d0 = 4.000000
    //     0x6fc89c: fmov            d0, #4.00000000
    // 0x6fc8a0: StoreField: r2->field_2f = d0
    //     0x6fc8a0: stur            d0, [x2, #0x2f]
    // 0x6fc8a4: ldur            x1, [fp, #-0x20]
    // 0x6fc8a8: StoreField: r2->field_b = r1
    //     0x6fc8a8: stur            w1, [x2, #0xb]
    // 0x6fc8ac: ldur            x8, [fp, #-0x18]
    // 0x6fc8b0: LoadField: r1 = r8->field_13
    //     0x6fc8b0: ldur            w1, [x8, #0x13]
    // 0x6fc8b4: DecompressPointer r1
    //     0x6fc8b4: add             x1, x1, HEAP, lsl #32
    // 0x6fc8b8: r0 = of()
    //     0x6fc8b8: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x6fc8bc: LoadField: r1 = r0->field_5b
    //     0x6fc8bc: ldur            w1, [x0, #0x5b]
    // 0x6fc8c0: DecompressPointer r1
    //     0x6fc8c0: add             x1, x1, HEAP, lsl #32
    // 0x6fc8c4: r0 = LoadClassIdInstr(r1)
    //     0x6fc8c4: ldur            x0, [x1, #-1]
    //     0x6fc8c8: ubfx            x0, x0, #0xc, #0x14
    // 0x6fc8cc: r16 = 0.100000
    //     0x6fc8cc: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x6fc8d0: ldr             x16, [x16, #0x1f8]
    // 0x6fc8d4: str             x16, [SP]
    // 0x6fc8d8: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6fc8d8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6fc8dc: ldr             x4, [x4, #0x198]
    // 0x6fc8e0: r0 = GDT[cid_x0 + -0xfe8]()
    //     0x6fc8e0: sub             lr, x0, #0xfe8
    //     0x6fc8e4: ldr             lr, [x21, lr, lsl #3]
    //     0x6fc8e8: blr             lr
    // 0x6fc8ec: stur            x0, [fp, #-0x20]
    // 0x6fc8f0: r0 = Radius()
    //     0x6fc8f0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6fc8f4: d0 = 8.000000
    //     0x6fc8f4: fmov            d0, #8.00000000
    // 0x6fc8f8: stur            x0, [fp, #-0x30]
    // 0x6fc8fc: StoreField: r0->field_7 = d0
    //     0x6fc8fc: stur            d0, [x0, #7]
    // 0x6fc900: StoreField: r0->field_f = d0
    //     0x6fc900: stur            d0, [x0, #0xf]
    // 0x6fc904: r0 = BorderRadius()
    //     0x6fc904: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6fc908: mov             x1, x0
    // 0x6fc90c: ldur            x0, [fp, #-0x30]
    // 0x6fc910: stur            x1, [fp, #-0x38]
    // 0x6fc914: StoreField: r1->field_7 = r0
    //     0x6fc914: stur            w0, [x1, #7]
    // 0x6fc918: StoreField: r1->field_b = r0
    //     0x6fc918: stur            w0, [x1, #0xb]
    // 0x6fc91c: StoreField: r1->field_f = r0
    //     0x6fc91c: stur            w0, [x1, #0xf]
    // 0x6fc920: StoreField: r1->field_13 = r0
    //     0x6fc920: stur            w0, [x1, #0x13]
    // 0x6fc924: r0 = BoxDecoration()
    //     0x6fc924: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6fc928: mov             x1, x0
    // 0x6fc92c: ldur            x0, [fp, #-0x20]
    // 0x6fc930: stur            x1, [fp, #-0x30]
    // 0x6fc934: StoreField: r1->field_7 = r0
    //     0x6fc934: stur            w0, [x1, #7]
    // 0x6fc938: ldur            x0, [fp, #-0x38]
    // 0x6fc93c: StoreField: r1->field_13 = r0
    //     0x6fc93c: stur            w0, [x1, #0x13]
    // 0x6fc940: r0 = Instance_BoxShape
    //     0x6fc940: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6fc944: ldr             x0, [x0, #0x1c8]
    // 0x6fc948: StoreField: r1->field_23 = r0
    //     0x6fc948: stur            w0, [x1, #0x23]
    // 0x6fc94c: ldur            x0, [fp, #-8]
    // 0x6fc950: LoadField: r5 = r0->field_13
    //     0x6fc950: ldur            w5, [x0, #0x13]
    // 0x6fc954: DecompressPointer r5
    //     0x6fc954: add             x5, x5, HEAP, lsl #32
    // 0x6fc958: stur            x5, [fp, #-0x20]
    // 0x6fc95c: r0 = InitLateStaticField(0xfc0) // [package:umrem_demo/common/constant/surahs_info.dart] ::quranIndex
    //     0x6fc95c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fc960: ldr             x0, [x0, #0x1f80]
    //     0x6fc964: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fc968: cmp             w0, w16
    //     0x6fc96c: b.ne            #0x6fc97c
    //     0x6fc970: add             x2, PP, #0x16, lsl #12  ; [pp+0x16030] Field <::.quranIndex>: static late final (offset: 0xfc0)
    //     0x6fc974: ldr             x2, [x2, #0x30]
    //     0x6fc978: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x6fc97c: r1 = Function '<anonymous closure>':.
    //     0x6fc97c: add             x1, PP, #0x16, lsl #12  ; [pp+0x16038] AnonymousClosure: (0x71d930), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x6fc980: ldr             x1, [x1, #0x38]
    // 0x6fc984: r2 = Null
    //     0x6fc984: mov             x2, NULL
    // 0x6fc988: stur            x0, [fp, #-0x38]
    // 0x6fc98c: r0 = AllocateClosure()
    //     0x6fc98c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fc990: r16 = <DropdownMenuItem<String>>
    //     0x6fc990: add             x16, PP, #0x16, lsl #12  ; [pp+0x16040] TypeArguments: <DropdownMenuItem<String>>
    //     0x6fc994: ldr             x16, [x16, #0x40]
    // 0x6fc998: ldur            lr, [fp, #-0x38]
    // 0x6fc99c: stp             lr, x16, [SP, #8]
    // 0x6fc9a0: str             x0, [SP]
    // 0x6fc9a4: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6fc9a4: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6fc9a8: r0 = map()
    //     0x6fc9a8: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x6fc9ac: LoadField: r1 = r0->field_7
    //     0x6fc9ac: ldur            w1, [x0, #7]
    // 0x6fc9b0: DecompressPointer r1
    //     0x6fc9b0: add             x1, x1, HEAP, lsl #32
    // 0x6fc9b4: mov             x2, x0
    // 0x6fc9b8: r0 = _GrowableList.of()
    //     0x6fc9b8: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x6fc9bc: ldur            x2, [fp, #-0x18]
    // 0x6fc9c0: r1 = Function '<anonymous closure>':.
    //     0x6fc9c0: add             x1, PP, #0x16, lsl #12  ; [pp+0x16048] AnonymousClosure: (0x71d748), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x6fc9c4: ldr             x1, [x1, #0x48]
    // 0x6fc9c8: stur            x0, [fp, #-0x38]
    // 0x6fc9cc: r0 = AllocateClosure()
    //     0x6fc9cc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fc9d0: r1 = <String>
    //     0x6fc9d0: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6fc9d4: stur            x0, [fp, #-0x40]
    // 0x6fc9d8: r0 = DropdownButton()
    //     0x6fc9d8: bl              #0x6db8ec  ; AllocateDropdownButtonStub -> DropdownButton<X0> (size=0x90)
    // 0x6fc9dc: mov             x1, x0
    // 0x6fc9e0: ldur            x2, [fp, #-0x38]
    // 0x6fc9e4: ldur            x3, [fp, #-0x40]
    // 0x6fc9e8: ldur            x5, [fp, #-0x20]
    // 0x6fc9ec: stur            x0, [fp, #-0x20]
    // 0x6fc9f0: r0 = DropdownButton()
    //     0x6fc9f0: bl              #0x6fcd28  ; [package:flutter/src/material/dropdown.dart] DropdownButton::DropdownButton
    // 0x6fc9f4: r0 = DropdownButtonHideUnderline()
    //     0x6fc9f4: bl              #0x6db770  ; AllocateDropdownButtonHideUnderlineStub -> DropdownButtonHideUnderline (size=0x10)
    // 0x6fc9f8: mov             x1, x0
    // 0x6fc9fc: ldur            x0, [fp, #-0x20]
    // 0x6fca00: stur            x1, [fp, #-0x38]
    // 0x6fca04: StoreField: r1->field_b = r0
    //     0x6fca04: stur            w0, [x1, #0xb]
    // 0x6fca08: r0 = Container()
    //     0x6fca08: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6fca0c: stur            x0, [fp, #-0x20]
    // 0x6fca10: ldur            x16, [fp, #-0x30]
    // 0x6fca14: r30 = Instance_EdgeInsets
    //     0x6fca14: add             lr, PP, #0xc, lsl #12  ; [pp+0xcdd8] Obj!EdgeInsets@a0bed1
    //     0x6fca18: ldr             lr, [lr, #0xdd8]
    // 0x6fca1c: stp             lr, x16, [SP, #8]
    // 0x6fca20: ldur            x16, [fp, #-0x38]
    // 0x6fca24: str             x16, [SP]
    // 0x6fca28: mov             x1, x0
    // 0x6fca2c: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x1, padding, 0x2, null]
    //     0x6fca2c: add             x4, PP, #0x16, lsl #12  ; [pp+0x16028] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x1, "padding", 0x2, Null]
    //     0x6fca30: ldr             x4, [x4, #0x28]
    // 0x6fca34: r0 = Container()
    //     0x6fca34: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6fca38: r1 = Null
    //     0x6fca38: mov             x1, NULL
    // 0x6fca3c: r2 = 4
    //     0x6fca3c: mov             x2, #4
    // 0x6fca40: r0 = AllocateArray()
    //     0x6fca40: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6fca44: mov             x2, x0
    // 0x6fca48: ldur            x0, [fp, #-0x28]
    // 0x6fca4c: stur            x2, [fp, #-0x30]
    // 0x6fca50: StoreField: r2->field_f = r0
    //     0x6fca50: stur            w0, [x2, #0xf]
    // 0x6fca54: ldur            x0, [fp, #-0x20]
    // 0x6fca58: StoreField: r2->field_13 = r0
    //     0x6fca58: stur            w0, [x2, #0x13]
    // 0x6fca5c: r1 = <Widget>
    //     0x6fca5c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6fca60: r0 = AllocateGrowableArray()
    //     0x6fca60: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6fca64: mov             x1, x0
    // 0x6fca68: ldur            x0, [fp, #-0x30]
    // 0x6fca6c: stur            x1, [fp, #-0x20]
    // 0x6fca70: StoreField: r1->field_f = r0
    //     0x6fca70: stur            w0, [x1, #0xf]
    // 0x6fca74: r2 = 4
    //     0x6fca74: mov             x2, #4
    // 0x6fca78: StoreField: r1->field_b = r2
    //     0x6fca78: stur            w2, [x1, #0xb]
    // 0x6fca7c: r0 = Row()
    //     0x6fca7c: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6fca80: mov             x1, x0
    // 0x6fca84: r0 = Instance_Axis
    //     0x6fca84: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6fca88: stur            x1, [fp, #-0x28]
    // 0x6fca8c: StoreField: r1->field_f = r0
    //     0x6fca8c: stur            w0, [x1, #0xf]
    // 0x6fca90: r0 = Instance_MainAxisAlignment
    //     0x6fca90: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d20] Obj!MainAxisAlignment@a2a691
    //     0x6fca94: ldr             x0, [x0, #0xd20]
    // 0x6fca98: StoreField: r1->field_13 = r0
    //     0x6fca98: stur            w0, [x1, #0x13]
    // 0x6fca9c: r0 = Instance_MainAxisSize
    //     0x6fca9c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6fcaa0: ldr             x0, [x0, #0x330]
    // 0x6fcaa4: ArrayStore: r1[0] = r0  ; List_4
    //     0x6fcaa4: stur            w0, [x1, #0x17]
    // 0x6fcaa8: r2 = Instance_CrossAxisAlignment
    //     0x6fcaa8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6fcaac: ldr             x2, [x2, #0x338]
    // 0x6fcab0: StoreField: r1->field_1b = r2
    //     0x6fcab0: stur            w2, [x1, #0x1b]
    // 0x6fcab4: r3 = Instance_VerticalDirection
    //     0x6fcab4: add             x3, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6fcab8: ldr             x3, [x3, #0x340]
    // 0x6fcabc: StoreField: r1->field_23 = r3
    //     0x6fcabc: stur            w3, [x1, #0x23]
    // 0x6fcac0: r4 = Instance_Clip
    //     0x6fcac0: add             x4, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6fcac4: ldr             x4, [x4, #0x348]
    // 0x6fcac8: StoreField: r1->field_2b = r4
    //     0x6fcac8: stur            w4, [x1, #0x2b]
    // 0x6fcacc: StoreField: r1->field_2f = rZR
    //     0x6fcacc: stur            xzr, [x1, #0x2f]
    // 0x6fcad0: ldur            x5, [fp, #-0x20]
    // 0x6fcad4: StoreField: r1->field_b = r5
    //     0x6fcad4: stur            w5, [x1, #0xb]
    // 0x6fcad8: r0 = Container()
    //     0x6fcad8: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6fcadc: stur            x0, [fp, #-0x20]
    // 0x6fcae0: r16 = Instance_EdgeInsets
    //     0x6fcae0: add             x16, PP, #0x16, lsl #12  ; [pp+0x16050] Obj!EdgeInsets@a0c501
    //     0x6fcae4: ldr             x16, [x16, #0x50]
    // 0x6fcae8: ldur            lr, [fp, #-0x28]
    // 0x6fcaec: stp             lr, x16, [SP]
    // 0x6fcaf0: mov             x1, x0
    // 0x6fcaf4: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, padding, 0x1, null]
    //     0x6fcaf4: add             x4, PP, #0x16, lsl #12  ; [pp+0x16058] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "padding", 0x1, Null]
    //     0x6fcaf8: ldr             x4, [x4, #0x58]
    // 0x6fcafc: r0 = Container()
    //     0x6fcafc: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6fcb00: ldur            x0, [fp, #-8]
    // 0x6fcb04: LoadField: r3 = r0->field_1b
    //     0x6fcb04: ldur            w3, [x0, #0x1b]
    // 0x6fcb08: DecompressPointer r3
    //     0x6fcb08: add             x3, x3, HEAP, lsl #32
    // 0x6fcb0c: ldur            x2, [fp, #-0x18]
    // 0x6fcb10: stur            x3, [fp, #-0x28]
    // 0x6fcb14: r1 = Function '<anonymous closure>':.
    //     0x6fcb14: add             x1, PP, #0x16, lsl #12  ; [pp+0x16060] AnonymousClosure: (0x71b240), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x6fcb18: ldr             x1, [x1, #0x60]
    // 0x6fcb1c: r0 = AllocateClosure()
    //     0x6fcb1c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fcb20: ldur            x2, [fp, #-0x18]
    // 0x6fcb24: r1 = Function '<anonymous closure>':.
    //     0x6fcb24: add             x1, PP, #0x16, lsl #12  ; [pp+0x16068] AnonymousClosure: (0x6fce60), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x6fcb28: ldr             x1, [x1, #0x68]
    // 0x6fcb2c: stur            x0, [fp, #-8]
    // 0x6fcb30: r0 = AllocateClosure()
    //     0x6fcb30: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fcb34: stur            x0, [fp, #-0x30]
    // 0x6fcb38: r0 = PageView()
    //     0x6fcb38: bl              #0x64e704  ; AllocatePageViewStub -> PageView (size=0x44)
    // 0x6fcb3c: stur            x0, [fp, #-0x38]
    // 0x6fcb40: ldur            x16, [fp, #-8]
    // 0x6fcb44: str             x16, [SP]
    // 0x6fcb48: mov             x1, x0
    // 0x6fcb4c: ldur            x2, [fp, #-0x28]
    // 0x6fcb50: ldur            x3, [fp, #-0x30]
    // 0x6fcb54: r5 = 605
    //     0x6fcb54: mov             x5, #0x25d
    // 0x6fcb58: r4 = const [0, 0x5, 0x1, 0x4, onPageChanged, 0x4, null]
    //     0x6fcb58: add             x4, PP, #0x16, lsl #12  ; [pp+0x16070] List(7) [0, 0x5, 0x1, 0x4, "onPageChanged", 0x4, Null]
    //     0x6fcb5c: ldr             x4, [x4, #0x70]
    // 0x6fcb60: r0 = PageView.builder()
    //     0x6fcb60: bl              #0x64e4d0  ; [package:flutter/src/widgets/page_view.dart] PageView::PageView.builder
    // 0x6fcb64: r0 = GestureDetector()
    //     0x6fcb64: bl              #0x658e60  ; AllocateGestureDetectorStub -> GestureDetector (size=0x10c)
    // 0x6fcb68: ldur            x2, [fp, #-0x18]
    // 0x6fcb6c: r1 = Function '<anonymous closure>':.
    //     0x6fcb6c: add             x1, PP, #0x16, lsl #12  ; [pp+0x16078] AnonymousClosure: (0x6fce00), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x6fcb70: ldr             x1, [x1, #0x78]
    // 0x6fcb74: stur            x0, [fp, #-8]
    // 0x6fcb78: r0 = AllocateClosure()
    //     0x6fcb78: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fcb7c: ldur            x16, [fp, #-0x38]
    // 0x6fcb80: stp             x16, x0, [SP]
    // 0x6fcb84: ldur            x1, [fp, #-8]
    // 0x6fcb88: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, onTap, 0x1, null]
    //     0x6fcb88: add             x4, PP, #0x14, lsl #12  ; [pp+0x14d50] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "onTap", 0x1, Null]
    //     0x6fcb8c: ldr             x4, [x4, #0xd50]
    // 0x6fcb90: r0 = GestureDetector()
    //     0x6fcb90: bl              #0x6582a4  ; [package:flutter/src/widgets/gesture_detector.dart] GestureDetector::GestureDetector
    // 0x6fcb94: r0 = Directionality()
    //     0x6fcb94: bl              #0x6b406c  ; AllocateDirectionalityStub -> Directionality (size=0x14)
    // 0x6fcb98: mov             x1, x0
    // 0x6fcb9c: r0 = Instance_TextDirection
    //     0x6fcb9c: ldr             x0, [PP, #0x2750]  ; [pp+0x2750] Obj!TextDirection@a2cdb1
    // 0x6fcba0: stur            x1, [fp, #-0x18]
    // 0x6fcba4: StoreField: r1->field_f = r0
    //     0x6fcba4: stur            w0, [x1, #0xf]
    // 0x6fcba8: ldur            x0, [fp, #-8]
    // 0x6fcbac: StoreField: r1->field_b = r0
    //     0x6fcbac: stur            w0, [x1, #0xb]
    // 0x6fcbb0: r0 = Padding()
    //     0x6fcbb0: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6fcbb4: mov             x1, x0
    // 0x6fcbb8: r0 = Instance_EdgeInsets
    //     0x6fcbb8: add             x0, PP, #0xc, lsl #12  ; [pp+0xcdd8] Obj!EdgeInsets@a0bed1
    //     0x6fcbbc: ldr             x0, [x0, #0xdd8]
    // 0x6fcbc0: stur            x1, [fp, #-8]
    // 0x6fcbc4: StoreField: r1->field_f = r0
    //     0x6fcbc4: stur            w0, [x1, #0xf]
    // 0x6fcbc8: ldur            x0, [fp, #-0x18]
    // 0x6fcbcc: StoreField: r1->field_b = r0
    //     0x6fcbcc: stur            w0, [x1, #0xb]
    // 0x6fcbd0: r0 = Center()
    //     0x6fcbd0: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x6fcbd4: mov             x2, x0
    // 0x6fcbd8: r0 = Instance_Alignment
    //     0x6fcbd8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x6fcbdc: ldr             x0, [x0, #0x60]
    // 0x6fcbe0: stur            x2, [fp, #-0x18]
    // 0x6fcbe4: StoreField: r2->field_f = r0
    //     0x6fcbe4: stur            w0, [x2, #0xf]
    // 0x6fcbe8: ldur            x0, [fp, #-8]
    // 0x6fcbec: StoreField: r2->field_b = r0
    //     0x6fcbec: stur            w0, [x2, #0xb]
    // 0x6fcbf0: r1 = <FlexParentData>
    //     0x6fcbf0: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6fcbf4: ldr             x1, [x1, #0x340]
    // 0x6fcbf8: r0 = Expanded()
    //     0x6fcbf8: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6fcbfc: mov             x3, x0
    // 0x6fcc00: r0 = 1
    //     0x6fcc00: mov             x0, #1
    // 0x6fcc04: stur            x3, [fp, #-8]
    // 0x6fcc08: StoreField: r3->field_13 = r0
    //     0x6fcc08: stur            x0, [x3, #0x13]
    // 0x6fcc0c: r0 = Instance_FlexFit
    //     0x6fcc0c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6fcc10: ldr             x0, [x0, #0x348]
    // 0x6fcc14: StoreField: r3->field_1b = r0
    //     0x6fcc14: stur            w0, [x3, #0x1b]
    // 0x6fcc18: ldur            x0, [fp, #-0x18]
    // 0x6fcc1c: StoreField: r3->field_b = r0
    //     0x6fcc1c: stur            w0, [x3, #0xb]
    // 0x6fcc20: r1 = Null
    //     0x6fcc20: mov             x1, NULL
    // 0x6fcc24: r2 = 4
    //     0x6fcc24: mov             x2, #4
    // 0x6fcc28: r0 = AllocateArray()
    //     0x6fcc28: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6fcc2c: mov             x2, x0
    // 0x6fcc30: ldur            x0, [fp, #-0x20]
    // 0x6fcc34: stur            x2, [fp, #-0x18]
    // 0x6fcc38: StoreField: r2->field_f = r0
    //     0x6fcc38: stur            w0, [x2, #0xf]
    // 0x6fcc3c: ldur            x0, [fp, #-8]
    // 0x6fcc40: StoreField: r2->field_13 = r0
    //     0x6fcc40: stur            w0, [x2, #0x13]
    // 0x6fcc44: r1 = <Widget>
    //     0x6fcc44: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6fcc48: r0 = AllocateGrowableArray()
    //     0x6fcc48: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6fcc4c: mov             x1, x0
    // 0x6fcc50: ldur            x0, [fp, #-0x18]
    // 0x6fcc54: stur            x1, [fp, #-8]
    // 0x6fcc58: StoreField: r1->field_f = r0
    //     0x6fcc58: stur            w0, [x1, #0xf]
    // 0x6fcc5c: r0 = 4
    //     0x6fcc5c: mov             x0, #4
    // 0x6fcc60: StoreField: r1->field_b = r0
    //     0x6fcc60: stur            w0, [x1, #0xb]
    // 0x6fcc64: r0 = Column()
    //     0x6fcc64: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6fcc68: mov             x1, x0
    // 0x6fcc6c: r0 = Instance_Axis
    //     0x6fcc6c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6fcc70: stur            x1, [fp, #-0x18]
    // 0x6fcc74: StoreField: r1->field_f = r0
    //     0x6fcc74: stur            w0, [x1, #0xf]
    // 0x6fcc78: r0 = Instance_MainAxisAlignment
    //     0x6fcc78: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6fcc7c: ldr             x0, [x0, #0x230]
    // 0x6fcc80: StoreField: r1->field_13 = r0
    //     0x6fcc80: stur            w0, [x1, #0x13]
    // 0x6fcc84: r0 = Instance_MainAxisSize
    //     0x6fcc84: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6fcc88: ldr             x0, [x0, #0x330]
    // 0x6fcc8c: ArrayStore: r1[0] = r0  ; List_4
    //     0x6fcc8c: stur            w0, [x1, #0x17]
    // 0x6fcc90: r0 = Instance_CrossAxisAlignment
    //     0x6fcc90: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6fcc94: ldr             x0, [x0, #0x338]
    // 0x6fcc98: StoreField: r1->field_1b = r0
    //     0x6fcc98: stur            w0, [x1, #0x1b]
    // 0x6fcc9c: r0 = Instance_VerticalDirection
    //     0x6fcc9c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6fcca0: ldr             x0, [x0, #0x340]
    // 0x6fcca4: StoreField: r1->field_23 = r0
    //     0x6fcca4: stur            w0, [x1, #0x23]
    // 0x6fcca8: r0 = Instance_Clip
    //     0x6fcca8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6fccac: ldr             x0, [x0, #0x348]
    // 0x6fccb0: StoreField: r1->field_2b = r0
    //     0x6fccb0: stur            w0, [x1, #0x2b]
    // 0x6fccb4: StoreField: r1->field_2f = rZR
    //     0x6fccb4: stur            xzr, [x1, #0x2f]
    // 0x6fccb8: ldur            x0, [fp, #-8]
    // 0x6fccbc: StoreField: r1->field_b = r0
    //     0x6fccbc: stur            w0, [x1, #0xb]
    // 0x6fccc0: r0 = Scaffold()
    //     0x6fccc0: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x6fccc4: ldur            x1, [fp, #-0x10]
    // 0x6fccc8: ArrayStore: r0[0] = r1  ; List_4
    //     0x6fccc8: stur            w1, [x0, #0x17]
    // 0x6fcccc: ldur            x1, [fp, #-0x18]
    // 0x6fccd0: StoreField: r0->field_1b = r1
    //     0x6fccd0: stur            w1, [x0, #0x1b]
    // 0x6fccd4: r1 = Instance_AlignmentDirectional
    //     0x6fccd4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x6fccd8: ldr             x1, [x1, #0x350]
    // 0x6fccdc: StoreField: r0->field_2f = r1
    //     0x6fccdc: stur            w1, [x0, #0x2f]
    // 0x6fcce0: r1 = true
    //     0x6fcce0: add             x1, NULL, #0x20  ; true
    // 0x6fcce4: StoreField: r0->field_5f = r1
    //     0x6fcce4: stur            w1, [x0, #0x5f]
    // 0x6fcce8: r2 = Instance_DragStartBehavior
    //     0x6fcce8: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6fccec: StoreField: r0->field_63 = r2
    //     0x6fccec: stur            w2, [x0, #0x63]
    // 0x6fccf0: r2 = false
    //     0x6fccf0: add             x2, NULL, #0x30  ; false
    // 0x6fccf4: StoreField: r0->field_b = r2
    //     0x6fccf4: stur            w2, [x0, #0xb]
    // 0x6fccf8: StoreField: r0->field_f = r1
    //     0x6fccf8: stur            w1, [x0, #0xf]
    // 0x6fccfc: StoreField: r0->field_13 = r2
    //     0x6fccfc: stur            w2, [x0, #0x13]
    // 0x6fcd00: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x6fcd00: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x6fcd04: ldr             x2, [x2, #0x358]
    // 0x6fcd08: StoreField: r0->field_4b = r2
    //     0x6fcd08: stur            w2, [x0, #0x4b]
    // 0x6fcd0c: StoreField: r0->field_6b = r1
    //     0x6fcd0c: stur            w1, [x0, #0x6b]
    // 0x6fcd10: StoreField: r0->field_6f = r1
    //     0x6fcd10: stur            w1, [x0, #0x6f]
    // 0x6fcd14: LeaveFrame
    //     0x6fcd14: mov             SP, fp
    //     0x6fcd18: ldp             fp, lr, [SP], #0x10
    // 0x6fcd1c: ret
    //     0x6fcd1c: ret             
    // 0x6fcd20: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fcd20: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fcd24: b               #0x6fc4c4
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6fce00, size: 0x60
    // 0x6fce00: EnterFrame
    //     0x6fce00: stp             fp, lr, [SP, #-0x10]!
    //     0x6fce04: mov             fp, SP
    // 0x6fce08: AllocStack(0x8)
    //     0x6fce08: sub             SP, SP, #8
    // 0x6fce0c: SetupParameters([dynamic _ /* r0 */])
    //     0x6fce0c: ldr             x0, [fp, #0x10]
    //     0x6fce10: ldur            w2, [x0, #0x17]
    //     0x6fce14: add             x2, x2, HEAP, lsl #32
    // 0x6fce18: CheckStackOverflow
    //     0x6fce18: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fce1c: cmp             SP, x16
    //     0x6fce20: b.ls            #0x6fce58
    // 0x6fce24: LoadField: r0 = r2->field_f
    //     0x6fce24: ldur            w0, [x2, #0xf]
    // 0x6fce28: DecompressPointer r0
    //     0x6fce28: add             x0, x0, HEAP, lsl #32
    // 0x6fce2c: stur            x0, [fp, #-8]
    // 0x6fce30: r1 = Function '<anonymous closure>':.
    //     0x6fce30: add             x1, PP, #0x16, lsl #12  ; [pp+0x16080] Function: [dart:core] Object::_simpleInstanceOfFalse (0x924db0)
    //     0x6fce34: ldr             x1, [x1, #0x80]
    // 0x6fce38: r0 = AllocateClosure()
    //     0x6fce38: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fce3c: ldur            x1, [fp, #-8]
    // 0x6fce40: mov             x2, x0
    // 0x6fce44: r0 = setState()
    //     0x6fce44: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6fce48: r0 = Null
    //     0x6fce48: mov             x0, NULL
    // 0x6fce4c: LeaveFrame
    //     0x6fce4c: mov             SP, fp
    //     0x6fce50: ldp             fp, lr, [SP], #0x10
    // 0x6fce54: ret
    //     0x6fce54: ret             
    // 0x6fce58: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fce58: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fce5c: b               #0x6fce24
  }
  [closure] FutureBuilder<Widget> <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x6fce60, size: 0xc8
    // 0x6fce60: EnterFrame
    //     0x6fce60: stp             fp, lr, [SP, #-0x10]!
    //     0x6fce64: mov             fp, SP
    // 0x6fce68: AllocStack(0x18)
    //     0x6fce68: sub             SP, SP, #0x18
    // 0x6fce6c: SetupParameters([dynamic _ /* r0 */])
    //     0x6fce6c: ldr             x0, [fp, #0x20]
    //     0x6fce70: ldur            w1, [x0, #0x17]
    //     0x6fce74: add             x1, x1, HEAP, lsl #32
    //     0x6fce78: stur            x1, [fp, #-8]
    // 0x6fce7c: CheckStackOverflow
    //     0x6fce7c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fce80: cmp             SP, x16
    //     0x6fce84: b.ls            #0x6fcf20
    // 0x6fce88: r1 = 1
    //     0x6fce88: mov             x1, #1
    // 0x6fce8c: r0 = AllocateContext()
    //     0x6fce8c: bl              #0x927010  ; AllocateContextStub
    // 0x6fce90: mov             x3, x0
    // 0x6fce94: ldur            x2, [fp, #-8]
    // 0x6fce98: stur            x3, [fp, #-0x10]
    // 0x6fce9c: StoreField: r3->field_b = r2
    //     0x6fce9c: stur            w2, [x3, #0xb]
    // 0x6fcea0: ldr             x0, [fp, #0x10]
    // 0x6fcea4: r1 = LoadInt32Instr(r0)
    //     0x6fcea4: sbfx            x1, x0, #1, #0x1f
    //     0x6fcea8: tbz             w0, #0, #0x6fceb0
    //     0x6fceac: ldur            x1, [x0, #7]
    // 0x6fceb0: add             x4, x1, #1
    // 0x6fceb4: r0 = BoxInt64Instr(r4)
    //     0x6fceb4: sbfiz           x0, x4, #1, #0x1f
    //     0x6fceb8: cmp             x4, x0, asr #1
    //     0x6fcebc: b.eq            #0x6fcec8
    //     0x6fcec0: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6fcec4: stur            x4, [x0, #7]
    // 0x6fcec8: StoreField: r3->field_f = r0
    //     0x6fcec8: stur            w0, [x3, #0xf]
    // 0x6fcecc: LoadField: r1 = r2->field_f
    //     0x6fcecc: ldur            w1, [x2, #0xf]
    // 0x6fced0: DecompressPointer r1
    //     0x6fced0: add             x1, x1, HEAP, lsl #32
    // 0x6fced4: mov             x2, x4
    // 0x6fced8: r0 = _buildPageImage()
    //     0x6fced8: bl              #0x6fcf34  ; [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_buildPageImage
    // 0x6fcedc: r1 = <Widget>
    //     0x6fcedc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6fcee0: stur            x0, [fp, #-8]
    // 0x6fcee4: r0 = FutureBuilder()
    //     0x6fcee4: bl              #0x6fcf28  ; AllocateFutureBuilderStub -> FutureBuilder<X0> (size=0x1c)
    // 0x6fcee8: mov             x3, x0
    // 0x6fceec: ldur            x0, [fp, #-8]
    // 0x6fcef0: stur            x3, [fp, #-0x18]
    // 0x6fcef4: StoreField: r3->field_f = r0
    //     0x6fcef4: stur            w0, [x3, #0xf]
    // 0x6fcef8: ldur            x2, [fp, #-0x10]
    // 0x6fcefc: r1 = Function '<anonymous closure>':.
    //     0x6fcefc: add             x1, PP, #0x16, lsl #12  ; [pp+0x16088] AnonymousClosure: (0x71b0e8), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x6fcf00: ldr             x1, [x1, #0x88]
    // 0x6fcf04: r0 = AllocateClosure()
    //     0x6fcf04: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fcf08: mov             x1, x0
    // 0x6fcf0c: ldur            x0, [fp, #-0x18]
    // 0x6fcf10: StoreField: r0->field_13 = r1
    //     0x6fcf10: stur            w1, [x0, #0x13]
    // 0x6fcf14: LeaveFrame
    //     0x6fcf14: mov             SP, fp
    //     0x6fcf18: ldp             fp, lr, [SP], #0x10
    // 0x6fcf1c: ret
    //     0x6fcf1c: ret             
    // 0x6fcf20: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fcf20: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fcf24: b               #0x6fce88
  }
  _ _buildPageImage(/* No info */) async {
    // ** addr: 0x6fcf34, size: 0x228
    // 0x6fcf34: EnterFrame
    //     0x6fcf34: stp             fp, lr, [SP, #-0x10]!
    //     0x6fcf38: mov             fp, SP
    // 0x6fcf3c: AllocStack(0xc0)
    //     0x6fcf3c: sub             SP, SP, #0xc0
    // 0x6fcf40: SetupParameters(_QuranPageState this /* r1 => r1, fp-0x88 */, dynamic _ /* r2 => r2, fp-0x90 */)
    //     0x6fcf40: stur            NULL, [fp, #-8]
    //     0x6fcf44: stur            x1, [fp, #-0x88]
    //     0x6fcf48: stur            x2, [fp, #-0x90]
    // 0x6fcf4c: CheckStackOverflow
    //     0x6fcf4c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fcf50: cmp             SP, x16
    //     0x6fcf54: b.ls            #0x6fd154
    // 0x6fcf58: r1 = 2
    //     0x6fcf58: mov             x1, #2
    // 0x6fcf5c: r0 = AllocateContext()
    //     0x6fcf5c: bl              #0x927010  ; AllocateContextStub
    // 0x6fcf60: mov             x3, x0
    // 0x6fcf64: ldur            x2, [fp, #-0x88]
    // 0x6fcf68: stur            x3, [fp, #-0x98]
    // 0x6fcf6c: StoreField: r3->field_f = r2
    //     0x6fcf6c: stur            w2, [x3, #0xf]
    // 0x6fcf70: ldur            x4, [fp, #-0x90]
    // 0x6fcf74: r0 = BoxInt64Instr(r4)
    //     0x6fcf74: sbfiz           x0, x4, #1, #0x1f
    //     0x6fcf78: cmp             x4, x0, asr #1
    //     0x6fcf7c: b.eq            #0x6fcf88
    //     0x6fcf80: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6fcf84: stur            x4, [x0, #7]
    // 0x6fcf88: StoreField: r3->field_13 = r0
    //     0x6fcf88: stur            w0, [x3, #0x13]
    // 0x6fcf8c: InitAsync() -> Future<Widget>
    //     0x6fcf8c: ldr             x0, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    //     0x6fcf90: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6fcf94: ldur            x0, [fp, #-0x88]
    // 0x6fcf98: ldur            x3, [fp, #-0x98]
    // 0x6fcf9c: LoadField: r4 = r0->field_27
    //     0x6fcf9c: ldur            w4, [x0, #0x27]
    // 0x6fcfa0: DecompressPointer r4
    //     0x6fcfa0: add             x4, x4, HEAP, lsl #32
    // 0x6fcfa4: stur            x4, [fp, #-0xa0]
    // 0x6fcfa8: LoadField: r1 = r3->field_13
    //     0x6fcfa8: ldur            w1, [x3, #0x13]
    // 0x6fcfac: DecompressPointer r1
    //     0x6fcfac: add             x1, x1, HEAP, lsl #32
    // 0x6fcfb0: r2 = LoadInt32Instr(r1)
    //     0x6fcfb0: sbfx            x2, x1, #1, #0x1f
    //     0x6fcfb4: tbz             w1, #0, #0x6fcfbc
    //     0x6fcfb8: ldur            x2, [x1, #7]
    // 0x6fcfbc: mov             x1, x4
    // 0x6fcfc0: r0 = isPageDownloaded()
    //     0x6fcfc0: bl              #0x71afb0  ; [package:umrem_demo/core/services/quran_storage_service.dart] QuranStorageService::isPageDownloaded
    // 0x6fcfc4: mov             x1, x0
    // 0x6fcfc8: stur            x1, [fp, #-0xa8]
    // 0x6fcfcc: r0 = Await()
    //     0x6fcfcc: bl              #0x3dd188  ; AwaitStub
    // 0x6fcfd0: r16 = true
    //     0x6fcfd0: add             x16, NULL, #0x20  ; true
    // 0x6fcfd4: cmp             w0, w16
    // 0x6fcfd8: b.ne            #0x6fd0cc
    // 0x6fcfdc: ldur            x0, [fp, #-0x98]
    // 0x6fcfe0: LoadField: r1 = r0->field_13
    //     0x6fcfe0: ldur            w1, [x0, #0x13]
    // 0x6fcfe4: DecompressPointer r1
    //     0x6fcfe4: add             x1, x1, HEAP, lsl #32
    // 0x6fcfe8: r2 = LoadInt32Instr(r1)
    //     0x6fcfe8: sbfx            x2, x1, #1, #0x1f
    //     0x6fcfec: tbz             w1, #0, #0x6fcff4
    //     0x6fcff0: ldur            x2, [x1, #7]
    // 0x6fcff4: ldur            x1, [fp, #-0xa0]
    // 0x6fcff8: r0 = getLocalPagePathIfExists()
    //     0x6fcff8: bl              #0x71af34  ; [package:umrem_demo/core/services/quran_storage_service.dart] QuranStorageService::getLocalPagePathIfExists
    // 0x6fcffc: mov             x1, x0
    // 0x6fd000: stur            x1, [fp, #-0xa0]
    // 0x6fd004: r0 = Await()
    //     0x6fd004: bl              #0x3dd188  ; AwaitStub
    // 0x6fd008: stur            x0, [fp, #-0xa0]
    // 0x6fd00c: cmp             w0, NULL
    // 0x6fd010: b.eq            #0x6fd0cc
    // 0x6fd014: r0 = InitLateStaticField(0x36c) // [dart:async] Zone::_current
    //     0x6fd014: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fd018: ldr             x0, [x0, #0x6d8]
    //     0x6fd01c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fd020: cmp             w0, w16
    //     0x6fd024: b.ne            #0x6fd030
    //     0x6fd028: ldr             x2, [PP, #0x2f0]  ; [pp+0x2f0] Field <Zone._current@5048458>: static late (offset: 0x36c)
    //     0x6fd02c: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6fd030: stur            x0, [fp, #-0xa8]
    // 0x6fd034: r0 = InitLateStaticField(0x428) // [dart:io] ::_ioOverridesToken
    //     0x6fd034: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fd038: ldr             x0, [x0, #0x850]
    //     0x6fd03c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fd040: cmp             w0, w16
    //     0x6fd044: b.ne            #0x6fd054
    //     0x6fd048: add             x2, PP, #8, lsl #12  ; [pp+0x8918] Field <::._ioOverridesToken@15069316>: static late final (offset: 0x428)
    //     0x6fd04c: ldr             x2, [x2, #0x918]
    //     0x6fd050: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x6fd054: r0 = _File()
    //     0x6fd054: bl              #0x3e1ea0  ; Allocate_FileStub -> _File (size=0x10)
    // 0x6fd058: mov             x2, x0
    // 0x6fd05c: ldur            x0, [fp, #-0xa0]
    // 0x6fd060: stur            x2, [fp, #-0xa8]
    // 0x6fd064: StoreField: r2->field_7 = r0
    //     0x6fd064: stur            w0, [x2, #7]
    // 0x6fd068: mov             x1, x0
    // 0x6fd06c: r0 = _toUtf8Array()
    //     0x6fd06c: bl              #0x3db2f4  ; [dart:io] FileSystemEntity::_toUtf8Array
    // 0x6fd070: ldur            x3, [fp, #-0xa8]
    // 0x6fd074: StoreField: r3->field_b = r0
    //     0x6fd074: stur            w0, [x3, #0xb]
    //     0x6fd078: ldurb           w16, [x3, #-1]
    //     0x6fd07c: ldurb           w17, [x0, #-1]
    //     0x6fd080: and             x16, x17, x16, lsr #2
    //     0x6fd084: tst             x16, HEAP, lsr #32
    //     0x6fd088: b.eq            #0x6fd090
    //     0x6fd08c: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x6fd090: ldur            x2, [fp, #-0x98]
    // 0x6fd094: r1 = Function '<anonymous closure>':.
    //     0x6fd094: add             x1, PP, #0x17, lsl #12  ; [pp+0x179a8] AnonymousClosure: (0x71b084), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_buildPageImage (0x6fcf34)
    //     0x6fd098: ldr             x1, [x1, #0x9a8]
    // 0x6fd09c: r0 = AllocateClosure()
    //     0x6fd09c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fd0a0: stur            x0, [fp, #-0xb0]
    // 0x6fd0a4: r0 = Image()
    //     0x6fd0a4: bl              #0x6bf938  ; AllocateImageStub -> Image (size=0x58)
    // 0x6fd0a8: mov             x1, x0
    // 0x6fd0ac: ldur            x2, [fp, #-0xa8]
    // 0x6fd0b0: ldur            x3, [fp, #-0xb0]
    // 0x6fd0b4: r5 = Instance_BoxFit
    //     0x6fd0b4: add             x5, PP, #0x17, lsl #12  ; [pp+0x179b0] Obj!BoxFit@a2a931
    //     0x6fd0b8: ldr             x5, [x5, #0x9b0]
    // 0x6fd0bc: stur            x0, [fp, #-0xb8]
    // 0x6fd0c0: r0 = Image.file()
    //     0x6fd0c0: bl              #0x71ae24  ; [package:flutter/src/widgets/image.dart] Image::Image.file
    // 0x6fd0c4: ldur            x0, [fp, #-0xb8]
    // 0x6fd0c8: r0 = ReturnAsyncNotFuture()
    //     0x6fd0c8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6fd0cc: ldur            x0, [fp, #-0x98]
    // 0x6fd0d0: LoadField: r1 = r0->field_13
    //     0x6fd0d0: ldur            w1, [x0, #0x13]
    // 0x6fd0d4: DecompressPointer r1
    //     0x6fd0d4: add             x1, x1, HEAP, lsl #32
    // 0x6fd0d8: r2 = LoadInt32Instr(r1)
    //     0x6fd0d8: sbfx            x2, x1, #1, #0x1f
    //     0x6fd0dc: tbz             w1, #0, #0x6fd0e4
    //     0x6fd0e0: ldur            x2, [x1, #7]
    // 0x6fd0e4: ldur            x1, [fp, #-0x88]
    // 0x6fd0e8: r0 = _buildDownloadWidget()
    //     0x6fd0e8: bl              #0x71a910  ; [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_buildDownloadWidget
    // 0x6fd0ec: r0 = ReturnAsyncNotFuture()
    //     0x6fd0ec: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6fd0f0: sub             SP, fp, #0xc0
    // 0x6fd0f4: ldur            x2, [fp, #-0x98]
    // 0x6fd0f8: LoadField: r1 = r2->field_13
    //     0x6fd0f8: ldur            w1, [x2, #0x13]
    // 0x6fd0fc: DecompressPointer r1
    //     0x6fd0fc: add             x1, x1, HEAP, lsl #32
    // 0x6fd100: stur            x1, [fp, #-0xa0]
    // 0x6fd104: r2 = 60
    //     0x6fd104: mov             x2, #0x3c
    // 0x6fd108: branchIfSmi(r0, 0x6fd114)
    //     0x6fd108: tbz             w0, #0, #0x6fd114
    // 0x6fd10c: r2 = LoadClassIdInstr(r0)
    //     0x6fd10c: ldur            x2, [x0, #-1]
    //     0x6fd110: ubfx            x2, x2, #0xc, #0x14
    // 0x6fd114: str             x0, [SP]
    // 0x6fd118: mov             x0, x2
    // 0x6fd11c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6fd11c: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6fd120: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6fd120: mov             x17, #0x21f6
    //     0x6fd124: add             lr, x0, x17
    //     0x6fd128: ldr             lr, [x21, lr, lsl #3]
    //     0x6fd12c: blr             lr
    // 0x6fd130: mov             x1, x0
    // 0x6fd134: ldur            x0, [fp, #-0xa0]
    // 0x6fd138: r2 = LoadInt32Instr(r0)
    //     0x6fd138: sbfx            x2, x0, #1, #0x1f
    //     0x6fd13c: tbz             w0, #0, #0x6fd144
    //     0x6fd140: ldur            x2, [x0, #7]
    // 0x6fd144: mov             x3, x1
    // 0x6fd148: ldur            x1, [fp, #-0x88]
    // 0x6fd14c: r0 = _buildErrorWidget()
    //     0x6fd14c: bl              #0x6fd15c  ; [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_buildErrorWidget
    // 0x6fd150: r0 = ReturnAsyncNotFuture()
    //     0x6fd150: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6fd154: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fd154: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fd158: b               #0x6fcf58
  }
  _ _buildErrorWidget(/* No info */) {
    // ** addr: 0x6fd15c, size: 0x2c8
    // 0x6fd15c: EnterFrame
    //     0x6fd15c: stp             fp, lr, [SP, #-0x10]!
    //     0x6fd160: mov             fp, SP
    // 0x6fd164: AllocStack(0x40)
    //     0x6fd164: sub             SP, SP, #0x40
    // 0x6fd168: SetupParameters(_QuranPageState this /* r1 => r0, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r1, fp-0x18 */)
    //     0x6fd168: mov             x0, x1
    //     0x6fd16c: stur            x1, [fp, #-8]
    //     0x6fd170: mov             x1, x3
    //     0x6fd174: stur            x2, [fp, #-0x10]
    //     0x6fd178: stur            x3, [fp, #-0x18]
    // 0x6fd17c: CheckStackOverflow
    //     0x6fd17c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fd180: cmp             SP, x16
    //     0x6fd184: b.ls            #0x6fd418
    // 0x6fd188: r1 = 2
    //     0x6fd188: mov             x1, #2
    // 0x6fd18c: r0 = AllocateContext()
    //     0x6fd18c: bl              #0x927010  ; AllocateContextStub
    // 0x6fd190: mov             x3, x0
    // 0x6fd194: ldur            x0, [fp, #-8]
    // 0x6fd198: stur            x3, [fp, #-0x20]
    // 0x6fd19c: StoreField: r3->field_f = r0
    //     0x6fd19c: stur            w0, [x3, #0xf]
    // 0x6fd1a0: ldur            x2, [fp, #-0x10]
    // 0x6fd1a4: r0 = BoxInt64Instr(r2)
    //     0x6fd1a4: sbfiz           x0, x2, #1, #0x1f
    //     0x6fd1a8: cmp             x2, x0, asr #1
    //     0x6fd1ac: b.eq            #0x6fd1b8
    //     0x6fd1b0: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6fd1b4: stur            x2, [x0, #7]
    // 0x6fd1b8: StoreField: r3->field_13 = r0
    //     0x6fd1b8: stur            w0, [x3, #0x13]
    // 0x6fd1bc: r1 = _ConstMap len:10
    //     0x6fd1bc: ldr             x1, [PP, #0x5760]  ; [pp+0x5760] Map<int, Color>(10)
    // 0x6fd1c0: r2 = 800
    //     0x6fd1c0: mov             x2, #0x320
    // 0x6fd1c4: r0 = []()
    //     0x6fd1c4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6fd1c8: stur            x0, [fp, #-8]
    // 0x6fd1cc: cmp             w0, NULL
    // 0x6fd1d0: b.eq            #0x6fd420
    // 0x6fd1d4: r0 = Icon()
    //     0x6fd1d4: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x6fd1d8: mov             x3, x0
    // 0x6fd1dc: r0 = Instance_IconData
    //     0x6fd1dc: add             x0, PP, #0x15, lsl #12  ; [pp+0x155a0] Obj!IconData@a0a201
    //     0x6fd1e0: ldr             x0, [x0, #0x5a0]
    // 0x6fd1e4: stur            x3, [fp, #-0x28]
    // 0x6fd1e8: StoreField: r3->field_b = r0
    //     0x6fd1e8: stur            w0, [x3, #0xb]
    // 0x6fd1ec: r0 = 64.000000
    //     0x6fd1ec: add             x0, PP, #0x14, lsl #12  ; [pp+0x14f40] 64
    //     0x6fd1f0: ldr             x0, [x0, #0xf40]
    // 0x6fd1f4: StoreField: r3->field_f = r0
    //     0x6fd1f4: stur            w0, [x3, #0xf]
    // 0x6fd1f8: ldur            x0, [fp, #-8]
    // 0x6fd1fc: StoreField: r3->field_23 = r0
    //     0x6fd1fc: stur            w0, [x3, #0x23]
    // 0x6fd200: r1 = Null
    //     0x6fd200: mov             x1, NULL
    // 0x6fd204: r2 = 6
    //     0x6fd204: mov             x2, #6
    // 0x6fd208: r0 = AllocateArray()
    //     0x6fd208: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6fd20c: r16 = "Sayfa "
    //     0x6fd20c: add             x16, PP, #0x16, lsl #12  ; [pp+0x16098] "Sayfa "
    //     0x6fd210: ldr             x16, [x16, #0x98]
    // 0x6fd214: StoreField: r0->field_f = r16
    //     0x6fd214: stur            w16, [x0, #0xf]
    // 0x6fd218: ldur            x2, [fp, #-0x20]
    // 0x6fd21c: LoadField: r1 = r2->field_13
    //     0x6fd21c: ldur            w1, [x2, #0x13]
    // 0x6fd220: DecompressPointer r1
    //     0x6fd220: add             x1, x1, HEAP, lsl #32
    // 0x6fd224: StoreField: r0->field_13 = r1
    //     0x6fd224: stur            w1, [x0, #0x13]
    // 0x6fd228: r16 = " Yüklenemedi"
    //     0x6fd228: add             x16, PP, #0x16, lsl #12  ; [pp+0x160a0] " Yüklenemedi"
    //     0x6fd22c: ldr             x16, [x16, #0xa0]
    // 0x6fd230: ArrayStore: r0[0] = r16  ; List_4
    //     0x6fd230: stur            w16, [x0, #0x17]
    // 0x6fd234: str             x0, [SP]
    // 0x6fd238: r0 = _interpolate()
    //     0x6fd238: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6fd23c: stur            x0, [fp, #-8]
    // 0x6fd240: r0 = Text()
    //     0x6fd240: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6fd244: mov             x3, x0
    // 0x6fd248: ldur            x0, [fp, #-8]
    // 0x6fd24c: stur            x3, [fp, #-0x30]
    // 0x6fd250: StoreField: r3->field_b = r0
    //     0x6fd250: stur            w0, [x3, #0xb]
    // 0x6fd254: r0 = Instance_TextStyle
    //     0x6fd254: add             x0, PP, #0x13, lsl #12  ; [pp+0x13a70] Obj!TextStyle@a17831
    //     0x6fd258: ldr             x0, [x0, #0xa70]
    // 0x6fd25c: StoreField: r3->field_13 = r0
    //     0x6fd25c: stur            w0, [x3, #0x13]
    // 0x6fd260: ldur            x1, [fp, #-0x18]
    // 0x6fd264: r0 = LoadClassIdInstr(r1)
    //     0x6fd264: ldur            x0, [x1, #-1]
    //     0x6fd268: ubfx            x0, x0, #0xc, #0x14
    // 0x6fd26c: r2 = "İnternet"
    //     0x6fd26c: add             x2, PP, #0x16, lsl #12  ; [pp+0x160a8] "İnternet"
    //     0x6fd270: ldr             x2, [x2, #0xa8]
    // 0x6fd274: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6fd274: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6fd278: r0 = GDT[cid_x0 + -0xff8]()
    //     0x6fd278: sub             lr, x0, #0xff8
    //     0x6fd27c: ldr             lr, [x21, lr, lsl #3]
    //     0x6fd280: blr             lr
    // 0x6fd284: tbnz            w0, #4, #0x6fd294
    // 0x6fd288: r2 = "İnternet bağlantınızı kontrol edin veya\nsayfayı önceden indirin"
    //     0x6fd288: add             x2, PP, #0x16, lsl #12  ; [pp+0x160b0] "İnternet bağlantınızı kontrol edin veya\nsayfayı önceden indirin"
    //     0x6fd28c: ldr             x2, [x2, #0xb0]
    // 0x6fd290: b               #0x6fd29c
    // 0x6fd294: r2 = "Lütfen daha sonra tekrar deneyin"
    //     0x6fd294: add             x2, PP, #0x16, lsl #12  ; [pp+0x160b8] "Lütfen daha sonra tekrar deneyin"
    //     0x6fd298: ldr             x2, [x2, #0xb8]
    // 0x6fd29c: ldur            x1, [fp, #-0x28]
    // 0x6fd2a0: ldur            x0, [fp, #-0x30]
    // 0x6fd2a4: stur            x2, [fp, #-8]
    // 0x6fd2a8: r0 = Text()
    //     0x6fd2a8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6fd2ac: mov             x3, x0
    // 0x6fd2b0: ldur            x0, [fp, #-8]
    // 0x6fd2b4: stur            x3, [fp, #-0x18]
    // 0x6fd2b8: StoreField: r3->field_b = r0
    //     0x6fd2b8: stur            w0, [x3, #0xb]
    // 0x6fd2bc: r0 = Instance_TextStyle
    //     0x6fd2bc: add             x0, PP, #0x16, lsl #12  ; [pp+0x160c0] Obj!TextStyle@a17de1
    //     0x6fd2c0: ldr             x0, [x0, #0xc0]
    // 0x6fd2c4: StoreField: r3->field_13 = r0
    //     0x6fd2c4: stur            w0, [x3, #0x13]
    // 0x6fd2c8: r0 = Instance_TextAlign
    //     0x6fd2c8: ldr             x0, [PP, #0x4af0]  ; [pp+0x4af0] Obj!TextAlign@a2cf51
    // 0x6fd2cc: StoreField: r3->field_1b = r0
    //     0x6fd2cc: stur            w0, [x3, #0x1b]
    // 0x6fd2d0: ldur            x2, [fp, #-0x20]
    // 0x6fd2d4: r1 = Function '<anonymous closure>':.
    //     0x6fd2d4: add             x1, PP, #0x16, lsl #12  ; [pp+0x160c8] AnonymousClosure: (0x6fd424), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_buildErrorWidget (0x6fd15c)
    //     0x6fd2d8: ldr             x1, [x1, #0xc8]
    // 0x6fd2dc: r0 = AllocateClosure()
    //     0x6fd2dc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fd2e0: stur            x0, [fp, #-8]
    // 0x6fd2e4: r0 = _ElevatedButtonWithIcon()
    //     0x6fd2e4: bl              #0x6d5508  ; Allocate_ElevatedButtonWithIconStub -> _ElevatedButtonWithIcon (size=0x3c)
    // 0x6fd2e8: mov             x1, x0
    // 0x6fd2ec: ldur            x5, [fp, #-8]
    // 0x6fd2f0: r2 = Instance_Icon
    //     0x6fd2f0: add             x2, PP, #0x16, lsl #12  ; [pp+0x160d0] Obj!Icon@a1e8b1
    //     0x6fd2f4: ldr             x2, [x2, #0xd0]
    // 0x6fd2f8: r3 = Instance_Text
    //     0x6fd2f8: add             x3, PP, #0x16, lsl #12  ; [pp+0x160d8] Obj!Text@a1c531
    //     0x6fd2fc: ldr             x3, [x3, #0xd8]
    // 0x6fd300: r6 = Null
    //     0x6fd300: mov             x6, NULL
    // 0x6fd304: stur            x0, [fp, #-8]
    // 0x6fd308: r0 = _ElevatedButtonWithIcon()
    //     0x6fd308: bl              #0x6d5420  ; [package:flutter/src/material/elevated_button.dart] _ElevatedButtonWithIcon::_ElevatedButtonWithIcon
    // 0x6fd30c: r1 = Null
    //     0x6fd30c: mov             x1, NULL
    // 0x6fd310: r2 = 14
    //     0x6fd310: mov             x2, #0xe
    // 0x6fd314: r0 = AllocateArray()
    //     0x6fd314: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6fd318: mov             x2, x0
    // 0x6fd31c: ldur            x0, [fp, #-0x28]
    // 0x6fd320: stur            x2, [fp, #-0x20]
    // 0x6fd324: StoreField: r2->field_f = r0
    //     0x6fd324: stur            w0, [x2, #0xf]
    // 0x6fd328: r16 = Instance_SizedBox
    //     0x6fd328: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6fd32c: ldr             x16, [x16, #0x310]
    // 0x6fd330: StoreField: r2->field_13 = r16
    //     0x6fd330: stur            w16, [x2, #0x13]
    // 0x6fd334: ldur            x0, [fp, #-0x30]
    // 0x6fd338: ArrayStore: r2[0] = r0  ; List_4
    //     0x6fd338: stur            w0, [x2, #0x17]
    // 0x6fd33c: r16 = Instance_SizedBox
    //     0x6fd33c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x6fd340: ldr             x16, [x16, #0x318]
    // 0x6fd344: StoreField: r2->field_1b = r16
    //     0x6fd344: stur            w16, [x2, #0x1b]
    // 0x6fd348: ldur            x0, [fp, #-0x18]
    // 0x6fd34c: StoreField: r2->field_1f = r0
    //     0x6fd34c: stur            w0, [x2, #0x1f]
    // 0x6fd350: r16 = Instance_SizedBox
    //     0x6fd350: add             x16, PP, #0x11, lsl #12  ; [pp+0x11320] Obj!SizedBox@a1fb31
    //     0x6fd354: ldr             x16, [x16, #0x320]
    // 0x6fd358: StoreField: r2->field_23 = r16
    //     0x6fd358: stur            w16, [x2, #0x23]
    // 0x6fd35c: ldur            x0, [fp, #-8]
    // 0x6fd360: StoreField: r2->field_27 = r0
    //     0x6fd360: stur            w0, [x2, #0x27]
    // 0x6fd364: r1 = <Widget>
    //     0x6fd364: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6fd368: r0 = AllocateGrowableArray()
    //     0x6fd368: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6fd36c: mov             x1, x0
    // 0x6fd370: ldur            x0, [fp, #-0x20]
    // 0x6fd374: stur            x1, [fp, #-8]
    // 0x6fd378: StoreField: r1->field_f = r0
    //     0x6fd378: stur            w0, [x1, #0xf]
    // 0x6fd37c: r0 = 14
    //     0x6fd37c: mov             x0, #0xe
    // 0x6fd380: StoreField: r1->field_b = r0
    //     0x6fd380: stur            w0, [x1, #0xb]
    // 0x6fd384: r0 = Column()
    //     0x6fd384: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6fd388: mov             x1, x0
    // 0x6fd38c: r0 = Instance_Axis
    //     0x6fd38c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6fd390: stur            x1, [fp, #-0x18]
    // 0x6fd394: StoreField: r1->field_f = r0
    //     0x6fd394: stur            w0, [x1, #0xf]
    // 0x6fd398: r0 = Instance_MainAxisAlignment
    //     0x6fd398: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x6fd39c: ldr             x0, [x0, #0x328]
    // 0x6fd3a0: StoreField: r1->field_13 = r0
    //     0x6fd3a0: stur            w0, [x1, #0x13]
    // 0x6fd3a4: r0 = Instance_MainAxisSize
    //     0x6fd3a4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6fd3a8: ldr             x0, [x0, #0x330]
    // 0x6fd3ac: ArrayStore: r1[0] = r0  ; List_4
    //     0x6fd3ac: stur            w0, [x1, #0x17]
    // 0x6fd3b0: r0 = Instance_CrossAxisAlignment
    //     0x6fd3b0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6fd3b4: ldr             x0, [x0, #0x338]
    // 0x6fd3b8: StoreField: r1->field_1b = r0
    //     0x6fd3b8: stur            w0, [x1, #0x1b]
    // 0x6fd3bc: r0 = Instance_VerticalDirection
    //     0x6fd3bc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6fd3c0: ldr             x0, [x0, #0x340]
    // 0x6fd3c4: StoreField: r1->field_23 = r0
    //     0x6fd3c4: stur            w0, [x1, #0x23]
    // 0x6fd3c8: r0 = Instance_Clip
    //     0x6fd3c8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6fd3cc: ldr             x0, [x0, #0x348]
    // 0x6fd3d0: StoreField: r1->field_2b = r0
    //     0x6fd3d0: stur            w0, [x1, #0x2b]
    // 0x6fd3d4: StoreField: r1->field_2f = rZR
    //     0x6fd3d4: stur            xzr, [x1, #0x2f]
    // 0x6fd3d8: ldur            x0, [fp, #-8]
    // 0x6fd3dc: StoreField: r1->field_b = r0
    //     0x6fd3dc: stur            w0, [x1, #0xb]
    // 0x6fd3e0: r0 = Container()
    //     0x6fd3e0: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6fd3e4: stur            x0, [fp, #-8]
    // 0x6fd3e8: r16 = Instance_EdgeInsets
    //     0x6fd3e8: add             x16, PP, #0xc, lsl #12  ; [pp+0xc7e8] Obj!EdgeInsets@a0c141
    //     0x6fd3ec: ldr             x16, [x16, #0x7e8]
    // 0x6fd3f0: ldur            lr, [fp, #-0x18]
    // 0x6fd3f4: stp             lr, x16, [SP]
    // 0x6fd3f8: mov             x1, x0
    // 0x6fd3fc: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, padding, 0x1, null]
    //     0x6fd3fc: add             x4, PP, #0x16, lsl #12  ; [pp+0x16058] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "padding", 0x1, Null]
    //     0x6fd400: ldr             x4, [x4, #0x58]
    // 0x6fd404: r0 = Container()
    //     0x6fd404: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6fd408: ldur            x0, [fp, #-8]
    // 0x6fd40c: LeaveFrame
    //     0x6fd40c: mov             SP, fp
    //     0x6fd410: ldp             fp, lr, [SP], #0x10
    // 0x6fd414: ret
    //     0x6fd414: ret             
    // 0x6fd418: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fd418: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fd41c: b               #0x6fd188
    // 0x6fd420: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6fd420: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6fd424, size: 0x1b4
    // 0x6fd424: EnterFrame
    //     0x6fd424: stp             fp, lr, [SP, #-0x10]!
    //     0x6fd428: mov             fp, SP
    // 0x6fd42c: AllocStack(0x38)
    //     0x6fd42c: sub             SP, SP, #0x38
    // 0x6fd430: SetupParameters(_QuranPageState this /* r1 */)
    //     0x6fd430: stur            NULL, [fp, #-8]
    //     0x6fd434: mov             x0, #0
    //     0x6fd438: add             x1, fp, w0, sxtw #2
    //     0x6fd43c: ldr             x1, [x1, #0x10]
    //     0x6fd440: ldur            w2, [x1, #0x17]
    //     0x6fd444: add             x2, x2, HEAP, lsl #32
    //     0x6fd448: stur            x2, [fp, #-0x10]
    // 0x6fd44c: CheckStackOverflow
    //     0x6fd44c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fd450: cmp             SP, x16
    //     0x6fd454: b.ls            #0x6fd5c0
    // 0x6fd458: InitAsync() -> Future<void?>
    //     0x6fd458: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6fd45c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6fd460: ldur            x0, [fp, #-0x10]
    // 0x6fd464: LoadField: r1 = r0->field_f
    //     0x6fd464: ldur            w1, [x0, #0xf]
    // 0x6fd468: DecompressPointer r1
    //     0x6fd468: add             x1, x1, HEAP, lsl #32
    // 0x6fd46c: LoadField: r3 = r1->field_f
    //     0x6fd46c: ldur            w3, [x1, #0xf]
    // 0x6fd470: DecompressPointer r3
    //     0x6fd470: add             x3, x3, HEAP, lsl #32
    // 0x6fd474: stur            x3, [fp, #-0x18]
    // 0x6fd478: cmp             w3, NULL
    // 0x6fd47c: b.eq            #0x6fd5c8
    // 0x6fd480: r1 = Function '<anonymous closure>':.
    //     0x6fd480: add             x1, PP, #0x16, lsl #12  ; [pp+0x160e0] AnonymousClosure: (0x71a904), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_buildErrorWidget (0x6fd15c)
    //     0x6fd484: ldr             x1, [x1, #0xe0]
    // 0x6fd488: r2 = Null
    //     0x6fd488: mov             x2, NULL
    // 0x6fd48c: r0 = AllocateClosure()
    //     0x6fd48c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fd490: stp             x0, NULL, [SP, #0x10]
    // 0x6fd494: ldur            x16, [fp, #-0x18]
    // 0x6fd498: r30 = false
    //     0x6fd498: add             lr, NULL, #0x30  ; false
    // 0x6fd49c: stp             lr, x16, [SP]
    // 0x6fd4a0: r4 = const [0x1, 0x3, 0x3, 0x2, barrierDismissible, 0x2, null]
    //     0x6fd4a0: add             x4, PP, #0x15, lsl #12  ; [pp+0x15238] List(7) [0x1, 0x3, 0x3, 0x2, "barrierDismissible", 0x2, Null]
    //     0x6fd4a4: ldr             x4, [x4, #0x238]
    // 0x6fd4a8: r0 = showDialog()
    //     0x6fd4a8: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x6fd4ac: ldur            x0, [fp, #-0x10]
    // 0x6fd4b0: LoadField: r1 = r0->field_f
    //     0x6fd4b0: ldur            w1, [x0, #0xf]
    // 0x6fd4b4: DecompressPointer r1
    //     0x6fd4b4: add             x1, x1, HEAP, lsl #32
    // 0x6fd4b8: LoadField: r2 = r1->field_23
    //     0x6fd4b8: ldur            w2, [x1, #0x23]
    // 0x6fd4bc: DecompressPointer r2
    //     0x6fd4bc: add             x2, x2, HEAP, lsl #32
    // 0x6fd4c0: r16 = Sentinel
    //     0x6fd4c0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x6fd4c4: cmp             w2, w16
    // 0x6fd4c8: b.eq            #0x6fd5cc
    // 0x6fd4cc: LoadField: r1 = r0->field_13
    //     0x6fd4cc: ldur            w1, [x0, #0x13]
    // 0x6fd4d0: DecompressPointer r1
    //     0x6fd4d0: add             x1, x1, HEAP, lsl #32
    // 0x6fd4d4: r3 = LoadInt32Instr(r1)
    //     0x6fd4d4: sbfx            x3, x1, #1, #0x1f
    //     0x6fd4d8: tbz             w1, #0, #0x6fd4e0
    //     0x6fd4dc: ldur            x3, [x1, #7]
    // 0x6fd4e0: mov             x1, x2
    // 0x6fd4e4: mov             x2, x3
    // 0x6fd4e8: r0 = downloadSinglePage()
    //     0x6fd4e8: bl              #0x6fd5d8  ; [package:umrem_demo/features/dualar/providers/quran_download_provider.dart] QuranDownloadProvider::downloadSinglePage
    // 0x6fd4ec: mov             x1, x0
    // 0x6fd4f0: stur            x1, [fp, #-0x18]
    // 0x6fd4f4: r0 = Await()
    //     0x6fd4f4: bl              #0x3dd188  ; AwaitStub
    // 0x6fd4f8: mov             x2, x0
    // 0x6fd4fc: ldur            x0, [fp, #-0x10]
    // 0x6fd500: stur            x2, [fp, #-0x18]
    // 0x6fd504: LoadField: r1 = r0->field_f
    //     0x6fd504: ldur            w1, [x0, #0xf]
    // 0x6fd508: DecompressPointer r1
    //     0x6fd508: add             x1, x1, HEAP, lsl #32
    // 0x6fd50c: LoadField: r3 = r1->field_f
    //     0x6fd50c: ldur            w3, [x1, #0xf]
    // 0x6fd510: DecompressPointer r3
    //     0x6fd510: add             x3, x3, HEAP, lsl #32
    // 0x6fd514: cmp             w3, NULL
    // 0x6fd518: b.eq            #0x6fd538
    // 0x6fd51c: mov             x1, x3
    // 0x6fd520: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6fd520: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6fd524: r0 = of()
    //     0x6fd524: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x6fd528: r16 = <Object?>
    //     0x6fd528: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6fd52c: stp             x0, x16, [SP]
    // 0x6fd530: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6fd530: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6fd534: r0 = pop()
    //     0x6fd534: bl              #0x3fc2bc  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pop
    // 0x6fd538: ldur            x0, [fp, #-0x18]
    // 0x6fd53c: cmp             w0, NULL
    // 0x6fd540: b.eq            #0x6fd584
    // 0x6fd544: ldur            x0, [fp, #-0x10]
    // 0x6fd548: LoadField: r3 = r0->field_f
    //     0x6fd548: ldur            w3, [x0, #0xf]
    // 0x6fd54c: DecompressPointer r3
    //     0x6fd54c: add             x3, x3, HEAP, lsl #32
    // 0x6fd550: stur            x3, [fp, #-0x18]
    // 0x6fd554: LoadField: r1 = r3->field_f
    //     0x6fd554: ldur            w1, [x3, #0xf]
    // 0x6fd558: DecompressPointer r1
    //     0x6fd558: add             x1, x1, HEAP, lsl #32
    // 0x6fd55c: cmp             w1, NULL
    // 0x6fd560: b.eq            #0x6fd588
    // 0x6fd564: r1 = Function '<anonymous closure>':.
    //     0x6fd564: add             x1, PP, #0x16, lsl #12  ; [pp+0x160e8] Function: [dart:ui] _NativeScene::_NativeScene._ (0x921cc4)
    //     0x6fd568: ldr             x1, [x1, #0xe8]
    // 0x6fd56c: r2 = Null
    //     0x6fd56c: mov             x2, NULL
    // 0x6fd570: r0 = AllocateClosure()
    //     0x6fd570: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fd574: ldur            x1, [fp, #-0x18]
    // 0x6fd578: mov             x2, x0
    // 0x6fd57c: r0 = setState()
    //     0x6fd57c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6fd580: b               #0x6fd5b8
    // 0x6fd584: ldur            x0, [fp, #-0x10]
    // 0x6fd588: LoadField: r1 = r0->field_f
    //     0x6fd588: ldur            w1, [x0, #0xf]
    // 0x6fd58c: DecompressPointer r1
    //     0x6fd58c: add             x1, x1, HEAP, lsl #32
    // 0x6fd590: LoadField: r0 = r1->field_f
    //     0x6fd590: ldur            w0, [x1, #0xf]
    // 0x6fd594: DecompressPointer r0
    //     0x6fd594: add             x0, x0, HEAP, lsl #32
    // 0x6fd598: cmp             w0, NULL
    // 0x6fd59c: b.eq            #0x6fd5b8
    // 0x6fd5a0: mov             x1, x0
    // 0x6fd5a4: r0 = of()
    //     0x6fd5a4: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x6fd5a8: mov             x1, x0
    // 0x6fd5ac: r2 = Instance_SnackBar
    //     0x6fd5ac: add             x2, PP, #0x16, lsl #12  ; [pp+0x160f0] Obj!SnackBar@a20571
    //     0x6fd5b0: ldr             x2, [x2, #0xf0]
    // 0x6fd5b4: r0 = showSnackBar()
    //     0x6fd5b4: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x6fd5b8: r0 = Null
    //     0x6fd5b8: mov             x0, NULL
    // 0x6fd5bc: r0 = ReturnAsyncNotFuture()
    //     0x6fd5bc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6fd5c0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fd5c0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fd5c4: b               #0x6fd458
    // 0x6fd5c8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6fd5c8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6fd5cc: r9 = downloadController
    //     0x6fd5cc: add             x9, PP, #0x16, lsl #12  ; [pp+0x160f8] Field <_QuranPageState@932390076.downloadController>: late final (offset: 0x24)
    //     0x6fd5d0: ldr             x9, [x9, #0xf8]
    // 0x6fd5d4: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x6fd5d4: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  [closure] Center <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x71a904, size: 0xc
    // 0x71a904: r0 = Instance_Center
    //     0x71a904: add             x0, PP, #0x12, lsl #12  ; [pp+0x12710] Obj!Center@a1fdb1
    //     0x71a908: ldr             x0, [x0, #0x710]
    // 0x71a90c: ret
    //     0x71a90c: ret             
  }
  _ _buildDownloadWidget(/* No info */) {
    // ** addr: 0x71a910, size: 0x308
    // 0x71a910: EnterFrame
    //     0x71a910: stp             fp, lr, [SP, #-0x10]!
    //     0x71a914: mov             fp, SP
    // 0x71a918: AllocStack(0x30)
    //     0x71a918: sub             SP, SP, #0x30
    // 0x71a91c: SetupParameters(_QuranPageState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x71a91c: stur            x1, [fp, #-8]
    //     0x71a920: stur            x2, [fp, #-0x10]
    // 0x71a924: CheckStackOverflow
    //     0x71a924: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71a928: cmp             SP, x16
    //     0x71a92c: b.ls            #0x71ac0c
    // 0x71a930: r1 = 2
    //     0x71a930: mov             x1, #2
    // 0x71a934: r0 = AllocateContext()
    //     0x71a934: bl              #0x927010  ; AllocateContextStub
    // 0x71a938: mov             x3, x0
    // 0x71a93c: ldur            x0, [fp, #-8]
    // 0x71a940: stur            x3, [fp, #-0x18]
    // 0x71a944: StoreField: r3->field_f = r0
    //     0x71a944: stur            w0, [x3, #0xf]
    // 0x71a948: ldur            x2, [fp, #-0x10]
    // 0x71a94c: r0 = BoxInt64Instr(r2)
    //     0x71a94c: sbfiz           x0, x2, #1, #0x1f
    //     0x71a950: cmp             x2, x0, asr #1
    //     0x71a954: b.eq            #0x71a960
    //     0x71a958: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x71a95c: stur            x2, [x0, #7]
    // 0x71a960: StoreField: r3->field_13 = r0
    //     0x71a960: stur            w0, [x3, #0x13]
    // 0x71a964: r1 = _ConstMap len:12
    //     0x71a964: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x71a968: r2 = 800
    //     0x71a968: mov             x2, #0x320
    // 0x71a96c: r0 = []()
    //     0x71a96c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x71a970: stur            x0, [fp, #-8]
    // 0x71a974: cmp             w0, NULL
    // 0x71a978: b.eq            #0x71ac14
    // 0x71a97c: r0 = Icon()
    //     0x71a97c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x71a980: mov             x3, x0
    // 0x71a984: r0 = Instance_IconData
    //     0x71a984: add             x0, PP, #0x17, lsl #12  ; [pp+0x179c0] Obj!IconData@a0a241
    //     0x71a988: ldr             x0, [x0, #0x9c0]
    // 0x71a98c: stur            x3, [fp, #-0x20]
    // 0x71a990: StoreField: r3->field_b = r0
    //     0x71a990: stur            w0, [x3, #0xb]
    // 0x71a994: r0 = 64.000000
    //     0x71a994: add             x0, PP, #0x14, lsl #12  ; [pp+0x14f40] 64
    //     0x71a998: ldr             x0, [x0, #0xf40]
    // 0x71a99c: StoreField: r3->field_f = r0
    //     0x71a99c: stur            w0, [x3, #0xf]
    // 0x71a9a0: ldur            x0, [fp, #-8]
    // 0x71a9a4: StoreField: r3->field_23 = r0
    //     0x71a9a4: stur            w0, [x3, #0x23]
    // 0x71a9a8: r1 = <Widget>
    //     0x71a9a8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x71a9ac: r2 = 18
    //     0x71a9ac: mov             x2, #0x12
    // 0x71a9b0: r0 = AllocateArray()
    //     0x71a9b0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71a9b4: mov             x3, x0
    // 0x71a9b8: ldur            x0, [fp, #-0x20]
    // 0x71a9bc: stur            x3, [fp, #-8]
    // 0x71a9c0: StoreField: r3->field_f = r0
    //     0x71a9c0: stur            w0, [x3, #0xf]
    // 0x71a9c4: r16 = Instance_SizedBox
    //     0x71a9c4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x71a9c8: ldr             x16, [x16, #0x310]
    // 0x71a9cc: StoreField: r3->field_13 = r16
    //     0x71a9cc: stur            w16, [x3, #0x13]
    // 0x71a9d0: r1 = Null
    //     0x71a9d0: mov             x1, NULL
    // 0x71a9d4: r2 = 4
    //     0x71a9d4: mov             x2, #4
    // 0x71a9d8: r0 = AllocateArray()
    //     0x71a9d8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71a9dc: r16 = "Sayfa "
    //     0x71a9dc: add             x16, PP, #0x16, lsl #12  ; [pp+0x16098] "Sayfa "
    //     0x71a9e0: ldr             x16, [x16, #0x98]
    // 0x71a9e4: StoreField: r0->field_f = r16
    //     0x71a9e4: stur            w16, [x0, #0xf]
    // 0x71a9e8: ldur            x2, [fp, #-0x18]
    // 0x71a9ec: LoadField: r1 = r2->field_13
    //     0x71a9ec: ldur            w1, [x2, #0x13]
    // 0x71a9f0: DecompressPointer r1
    //     0x71a9f0: add             x1, x1, HEAP, lsl #32
    // 0x71a9f4: StoreField: r0->field_13 = r1
    //     0x71a9f4: stur            w1, [x0, #0x13]
    // 0x71a9f8: str             x0, [SP]
    // 0x71a9fc: r0 = _interpolate()
    //     0x71a9fc: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x71aa00: stur            x0, [fp, #-0x20]
    // 0x71aa04: r0 = Text()
    //     0x71aa04: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x71aa08: mov             x1, x0
    // 0x71aa0c: ldur            x0, [fp, #-0x20]
    // 0x71aa10: StoreField: r1->field_b = r0
    //     0x71aa10: stur            w0, [x1, #0xb]
    // 0x71aa14: r0 = Instance_TextStyle
    //     0x71aa14: add             x0, PP, #0x13, lsl #12  ; [pp+0x13a70] Obj!TextStyle@a17831
    //     0x71aa18: ldr             x0, [x0, #0xa70]
    // 0x71aa1c: StoreField: r1->field_13 = r0
    //     0x71aa1c: stur            w0, [x1, #0x13]
    // 0x71aa20: mov             x0, x1
    // 0x71aa24: ldur            x1, [fp, #-8]
    // 0x71aa28: ArrayStore: r1[2] = r0  ; List_4
    //     0x71aa28: add             x25, x1, #0x17
    //     0x71aa2c: str             w0, [x25]
    //     0x71aa30: tbz             w0, #0, #0x71aa4c
    //     0x71aa34: ldurb           w16, [x1, #-1]
    //     0x71aa38: ldurb           w17, [x0, #-1]
    //     0x71aa3c: and             x16, x17, x16, lsr #2
    //     0x71aa40: tst             x16, HEAP, lsr #32
    //     0x71aa44: b.eq            #0x71aa4c
    //     0x71aa48: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71aa4c: ldur            x0, [fp, #-8]
    // 0x71aa50: r16 = Instance_SizedBox
    //     0x71aa50: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x71aa54: ldr             x16, [x16, #0x318]
    // 0x71aa58: StoreField: r0->field_1b = r16
    //     0x71aa58: stur            w16, [x0, #0x1b]
    // 0x71aa5c: r16 = Instance_Text
    //     0x71aa5c: add             x16, PP, #0x17, lsl #12  ; [pp+0x179c8] Obj!Text@a1c671
    //     0x71aa60: ldr             x16, [x16, #0x9c8]
    // 0x71aa64: StoreField: r0->field_1f = r16
    //     0x71aa64: stur            w16, [x0, #0x1f]
    // 0x71aa68: r16 = Instance_SizedBox
    //     0x71aa68: add             x16, PP, #0x11, lsl #12  ; [pp+0x11320] Obj!SizedBox@a1fb31
    //     0x71aa6c: ldr             x16, [x16, #0x320]
    // 0x71aa70: StoreField: r0->field_23 = r16
    //     0x71aa70: stur            w16, [x0, #0x23]
    // 0x71aa74: ldur            x2, [fp, #-0x18]
    // 0x71aa78: r1 = Function '<anonymous closure>':.
    //     0x71aa78: add             x1, PP, #0x17, lsl #12  ; [pp+0x179d0] AnonymousClosure: (0x71ac70), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_buildDownloadWidget (0x71a910)
    //     0x71aa7c: ldr             x1, [x1, #0x9d0]
    // 0x71aa80: r0 = AllocateClosure()
    //     0x71aa80: bl              #0x9273d4  ; AllocateClosureStub
    // 0x71aa84: stur            x0, [fp, #-0x20]
    // 0x71aa88: r0 = _ElevatedButtonWithIcon()
    //     0x71aa88: bl              #0x6d5508  ; Allocate_ElevatedButtonWithIconStub -> _ElevatedButtonWithIcon (size=0x3c)
    // 0x71aa8c: mov             x1, x0
    // 0x71aa90: ldur            x5, [fp, #-0x20]
    // 0x71aa94: r2 = Instance_Icon
    //     0x71aa94: add             x2, PP, #0x17, lsl #12  ; [pp+0x179d8] Obj!Icon@a1e8f1
    //     0x71aa98: ldr             x2, [x2, #0x9d8]
    // 0x71aa9c: r3 = Instance_Text
    //     0x71aa9c: add             x3, PP, #0x17, lsl #12  ; [pp+0x179e0] Obj!Text@a1c621
    //     0x71aaa0: ldr             x3, [x3, #0x9e0]
    // 0x71aaa4: r6 = Null
    //     0x71aaa4: mov             x6, NULL
    // 0x71aaa8: stur            x0, [fp, #-0x20]
    // 0x71aaac: r0 = _ElevatedButtonWithIcon()
    //     0x71aaac: bl              #0x6d5420  ; [package:flutter/src/material/elevated_button.dart] _ElevatedButtonWithIcon::_ElevatedButtonWithIcon
    // 0x71aab0: ldur            x1, [fp, #-8]
    // 0x71aab4: ldur            x0, [fp, #-0x20]
    // 0x71aab8: ArrayStore: r1[6] = r0  ; List_4
    //     0x71aab8: add             x25, x1, #0x27
    //     0x71aabc: str             w0, [x25]
    //     0x71aac0: tbz             w0, #0, #0x71aadc
    //     0x71aac4: ldurb           w16, [x1, #-1]
    //     0x71aac8: ldurb           w17, [x0, #-1]
    //     0x71aacc: and             x16, x17, x16, lsr #2
    //     0x71aad0: tst             x16, HEAP, lsr #32
    //     0x71aad4: b.eq            #0x71aadc
    //     0x71aad8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71aadc: ldur            x0, [fp, #-8]
    // 0x71aae0: r16 = Instance_SizedBox
    //     0x71aae0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x71aae4: ldr             x16, [x16, #0x310]
    // 0x71aae8: StoreField: r0->field_2b = r16
    //     0x71aae8: stur            w16, [x0, #0x2b]
    // 0x71aaec: ldur            x2, [fp, #-0x18]
    // 0x71aaf0: r1 = Function '<anonymous closure>':.
    //     0x71aaf0: add             x1, PP, #0x17, lsl #12  ; [pp+0x179e8] AnonymousClosure: (0x71ac18), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_buildDownloadWidget (0x71a910)
    //     0x71aaf4: ldr             x1, [x1, #0x9e8]
    // 0x71aaf8: r0 = AllocateClosure()
    //     0x71aaf8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x71aafc: stur            x0, [fp, #-0x18]
    // 0x71ab00: r0 = TextButton()
    //     0x71ab00: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x71ab04: mov             x1, x0
    // 0x71ab08: ldur            x0, [fp, #-0x18]
    // 0x71ab0c: StoreField: r1->field_b = r0
    //     0x71ab0c: stur            w0, [x1, #0xb]
    // 0x71ab10: r0 = false
    //     0x71ab10: add             x0, NULL, #0x30  ; false
    // 0x71ab14: StoreField: r1->field_27 = r0
    //     0x71ab14: stur            w0, [x1, #0x27]
    // 0x71ab18: r0 = true
    //     0x71ab18: add             x0, NULL, #0x20  ; true
    // 0x71ab1c: StoreField: r1->field_2f = r0
    //     0x71ab1c: stur            w0, [x1, #0x2f]
    // 0x71ab20: r0 = Instance_Text
    //     0x71ab20: add             x0, PP, #0x17, lsl #12  ; [pp+0x179f0] Obj!Text@a1c5d1
    //     0x71ab24: ldr             x0, [x0, #0x9f0]
    // 0x71ab28: StoreField: r1->field_37 = r0
    //     0x71ab28: stur            w0, [x1, #0x37]
    // 0x71ab2c: mov             x0, x1
    // 0x71ab30: ldur            x1, [fp, #-8]
    // 0x71ab34: ArrayStore: r1[8] = r0  ; List_4
    //     0x71ab34: add             x25, x1, #0x2f
    //     0x71ab38: str             w0, [x25]
    //     0x71ab3c: tbz             w0, #0, #0x71ab58
    //     0x71ab40: ldurb           w16, [x1, #-1]
    //     0x71ab44: ldurb           w17, [x0, #-1]
    //     0x71ab48: and             x16, x17, x16, lsr #2
    //     0x71ab4c: tst             x16, HEAP, lsr #32
    //     0x71ab50: b.eq            #0x71ab58
    //     0x71ab54: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71ab58: r1 = <Widget>
    //     0x71ab58: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x71ab5c: r0 = AllocateGrowableArray()
    //     0x71ab5c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x71ab60: mov             x1, x0
    // 0x71ab64: ldur            x0, [fp, #-8]
    // 0x71ab68: stur            x1, [fp, #-0x18]
    // 0x71ab6c: StoreField: r1->field_f = r0
    //     0x71ab6c: stur            w0, [x1, #0xf]
    // 0x71ab70: r0 = 18
    //     0x71ab70: mov             x0, #0x12
    // 0x71ab74: StoreField: r1->field_b = r0
    //     0x71ab74: stur            w0, [x1, #0xb]
    // 0x71ab78: r0 = Column()
    //     0x71ab78: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x71ab7c: mov             x1, x0
    // 0x71ab80: r0 = Instance_Axis
    //     0x71ab80: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x71ab84: stur            x1, [fp, #-8]
    // 0x71ab88: StoreField: r1->field_f = r0
    //     0x71ab88: stur            w0, [x1, #0xf]
    // 0x71ab8c: r0 = Instance_MainAxisAlignment
    //     0x71ab8c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x71ab90: ldr             x0, [x0, #0x328]
    // 0x71ab94: StoreField: r1->field_13 = r0
    //     0x71ab94: stur            w0, [x1, #0x13]
    // 0x71ab98: r0 = Instance_MainAxisSize
    //     0x71ab98: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x71ab9c: ldr             x0, [x0, #0x330]
    // 0x71aba0: ArrayStore: r1[0] = r0  ; List_4
    //     0x71aba0: stur            w0, [x1, #0x17]
    // 0x71aba4: r0 = Instance_CrossAxisAlignment
    //     0x71aba4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x71aba8: ldr             x0, [x0, #0x338]
    // 0x71abac: StoreField: r1->field_1b = r0
    //     0x71abac: stur            w0, [x1, #0x1b]
    // 0x71abb0: r0 = Instance_VerticalDirection
    //     0x71abb0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x71abb4: ldr             x0, [x0, #0x340]
    // 0x71abb8: StoreField: r1->field_23 = r0
    //     0x71abb8: stur            w0, [x1, #0x23]
    // 0x71abbc: r0 = Instance_Clip
    //     0x71abbc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x71abc0: ldr             x0, [x0, #0x348]
    // 0x71abc4: StoreField: r1->field_2b = r0
    //     0x71abc4: stur            w0, [x1, #0x2b]
    // 0x71abc8: StoreField: r1->field_2f = rZR
    //     0x71abc8: stur            xzr, [x1, #0x2f]
    // 0x71abcc: ldur            x0, [fp, #-0x18]
    // 0x71abd0: StoreField: r1->field_b = r0
    //     0x71abd0: stur            w0, [x1, #0xb]
    // 0x71abd4: r0 = Container()
    //     0x71abd4: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x71abd8: stur            x0, [fp, #-0x18]
    // 0x71abdc: r16 = Instance_EdgeInsets
    //     0x71abdc: add             x16, PP, #0xc, lsl #12  ; [pp+0xc7e8] Obj!EdgeInsets@a0c141
    //     0x71abe0: ldr             x16, [x16, #0x7e8]
    // 0x71abe4: ldur            lr, [fp, #-8]
    // 0x71abe8: stp             lr, x16, [SP]
    // 0x71abec: mov             x1, x0
    // 0x71abf0: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, padding, 0x1, null]
    //     0x71abf0: add             x4, PP, #0x16, lsl #12  ; [pp+0x16058] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "padding", 0x1, Null]
    //     0x71abf4: ldr             x4, [x4, #0x58]
    // 0x71abf8: r0 = Container()
    //     0x71abf8: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x71abfc: ldur            x0, [fp, #-0x18]
    // 0x71ac00: LeaveFrame
    //     0x71ac00: mov             SP, fp
    //     0x71ac04: ldp             fp, lr, [SP], #0x10
    // 0x71ac08: ret
    //     0x71ac08: ret             
    // 0x71ac0c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71ac0c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71ac10: b               #0x71a930
    // 0x71ac14: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x71ac14: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x71ac18, size: 0x58
    // 0x71ac18: EnterFrame
    //     0x71ac18: stp             fp, lr, [SP, #-0x10]!
    //     0x71ac1c: mov             fp, SP
    // 0x71ac20: ldr             x0, [fp, #0x10]
    // 0x71ac24: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x71ac24: ldur            w1, [x0, #0x17]
    // 0x71ac28: DecompressPointer r1
    //     0x71ac28: add             x1, x1, HEAP, lsl #32
    // 0x71ac2c: CheckStackOverflow
    //     0x71ac2c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71ac30: cmp             SP, x16
    //     0x71ac34: b.ls            #0x71ac64
    // 0x71ac38: LoadField: r0 = r1->field_f
    //     0x71ac38: ldur            w0, [x1, #0xf]
    // 0x71ac3c: DecompressPointer r0
    //     0x71ac3c: add             x0, x0, HEAP, lsl #32
    // 0x71ac40: LoadField: r1 = r0->field_f
    //     0x71ac40: ldur            w1, [x0, #0xf]
    // 0x71ac44: DecompressPointer r1
    //     0x71ac44: add             x1, x1, HEAP, lsl #32
    // 0x71ac48: cmp             w1, NULL
    // 0x71ac4c: b.eq            #0x71ac6c
    // 0x71ac50: r0 = show()
    //     0x71ac50: bl              #0x5e9e3c  ; [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] ContentDownloadDialog::show
    // 0x71ac54: r0 = Null
    //     0x71ac54: mov             x0, NULL
    // 0x71ac58: LeaveFrame
    //     0x71ac58: mov             SP, fp
    //     0x71ac5c: ldp             fp, lr, [SP], #0x10
    // 0x71ac60: ret
    //     0x71ac60: ret             
    // 0x71ac64: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71ac64: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71ac68: b               #0x71ac38
    // 0x71ac6c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x71ac6c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x71ac70, size: 0x1b4
    // 0x71ac70: EnterFrame
    //     0x71ac70: stp             fp, lr, [SP, #-0x10]!
    //     0x71ac74: mov             fp, SP
    // 0x71ac78: AllocStack(0x38)
    //     0x71ac78: sub             SP, SP, #0x38
    // 0x71ac7c: SetupParameters(_QuranPageState this /* r1 */)
    //     0x71ac7c: stur            NULL, [fp, #-8]
    //     0x71ac80: mov             x0, #0
    //     0x71ac84: add             x1, fp, w0, sxtw #2
    //     0x71ac88: ldr             x1, [x1, #0x10]
    //     0x71ac8c: ldur            w2, [x1, #0x17]
    //     0x71ac90: add             x2, x2, HEAP, lsl #32
    //     0x71ac94: stur            x2, [fp, #-0x10]
    // 0x71ac98: CheckStackOverflow
    //     0x71ac98: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71ac9c: cmp             SP, x16
    //     0x71aca0: b.ls            #0x71ae0c
    // 0x71aca4: InitAsync() -> Future<void?>
    //     0x71aca4: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x71aca8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x71acac: ldur            x0, [fp, #-0x10]
    // 0x71acb0: LoadField: r1 = r0->field_f
    //     0x71acb0: ldur            w1, [x0, #0xf]
    // 0x71acb4: DecompressPointer r1
    //     0x71acb4: add             x1, x1, HEAP, lsl #32
    // 0x71acb8: LoadField: r3 = r1->field_f
    //     0x71acb8: ldur            w3, [x1, #0xf]
    // 0x71acbc: DecompressPointer r3
    //     0x71acbc: add             x3, x3, HEAP, lsl #32
    // 0x71acc0: stur            x3, [fp, #-0x18]
    // 0x71acc4: cmp             w3, NULL
    // 0x71acc8: b.eq            #0x71ae14
    // 0x71accc: r1 = Function '<anonymous closure>':.
    //     0x71accc: add             x1, PP, #0x17, lsl #12  ; [pp+0x17a20] AnonymousClosure: (0x71a904), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_buildErrorWidget (0x6fd15c)
    //     0x71acd0: ldr             x1, [x1, #0xa20]
    // 0x71acd4: r2 = Null
    //     0x71acd4: mov             x2, NULL
    // 0x71acd8: r0 = AllocateClosure()
    //     0x71acd8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x71acdc: stp             x0, NULL, [SP, #0x10]
    // 0x71ace0: ldur            x16, [fp, #-0x18]
    // 0x71ace4: r30 = false
    //     0x71ace4: add             lr, NULL, #0x30  ; false
    // 0x71ace8: stp             lr, x16, [SP]
    // 0x71acec: r4 = const [0x1, 0x3, 0x3, 0x2, barrierDismissible, 0x2, null]
    //     0x71acec: add             x4, PP, #0x15, lsl #12  ; [pp+0x15238] List(7) [0x1, 0x3, 0x3, 0x2, "barrierDismissible", 0x2, Null]
    //     0x71acf0: ldr             x4, [x4, #0x238]
    // 0x71acf4: r0 = showDialog()
    //     0x71acf4: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x71acf8: ldur            x0, [fp, #-0x10]
    // 0x71acfc: LoadField: r1 = r0->field_f
    //     0x71acfc: ldur            w1, [x0, #0xf]
    // 0x71ad00: DecompressPointer r1
    //     0x71ad00: add             x1, x1, HEAP, lsl #32
    // 0x71ad04: LoadField: r2 = r1->field_23
    //     0x71ad04: ldur            w2, [x1, #0x23]
    // 0x71ad08: DecompressPointer r2
    //     0x71ad08: add             x2, x2, HEAP, lsl #32
    // 0x71ad0c: r16 = Sentinel
    //     0x71ad0c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x71ad10: cmp             w2, w16
    // 0x71ad14: b.eq            #0x71ae18
    // 0x71ad18: LoadField: r1 = r0->field_13
    //     0x71ad18: ldur            w1, [x0, #0x13]
    // 0x71ad1c: DecompressPointer r1
    //     0x71ad1c: add             x1, x1, HEAP, lsl #32
    // 0x71ad20: r3 = LoadInt32Instr(r1)
    //     0x71ad20: sbfx            x3, x1, #1, #0x1f
    //     0x71ad24: tbz             w1, #0, #0x71ad2c
    //     0x71ad28: ldur            x3, [x1, #7]
    // 0x71ad2c: mov             x1, x2
    // 0x71ad30: mov             x2, x3
    // 0x71ad34: r0 = downloadSinglePage()
    //     0x71ad34: bl              #0x6fd5d8  ; [package:umrem_demo/features/dualar/providers/quran_download_provider.dart] QuranDownloadProvider::downloadSinglePage
    // 0x71ad38: mov             x1, x0
    // 0x71ad3c: stur            x1, [fp, #-0x18]
    // 0x71ad40: r0 = Await()
    //     0x71ad40: bl              #0x3dd188  ; AwaitStub
    // 0x71ad44: mov             x2, x0
    // 0x71ad48: ldur            x0, [fp, #-0x10]
    // 0x71ad4c: stur            x2, [fp, #-0x18]
    // 0x71ad50: LoadField: r1 = r0->field_f
    //     0x71ad50: ldur            w1, [x0, #0xf]
    // 0x71ad54: DecompressPointer r1
    //     0x71ad54: add             x1, x1, HEAP, lsl #32
    // 0x71ad58: LoadField: r3 = r1->field_f
    //     0x71ad58: ldur            w3, [x1, #0xf]
    // 0x71ad5c: DecompressPointer r3
    //     0x71ad5c: add             x3, x3, HEAP, lsl #32
    // 0x71ad60: cmp             w3, NULL
    // 0x71ad64: b.eq            #0x71ad84
    // 0x71ad68: mov             x1, x3
    // 0x71ad6c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x71ad6c: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x71ad70: r0 = of()
    //     0x71ad70: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x71ad74: r16 = <Object?>
    //     0x71ad74: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x71ad78: stp             x0, x16, [SP]
    // 0x71ad7c: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x71ad7c: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x71ad80: r0 = pop()
    //     0x71ad80: bl              #0x3fc2bc  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pop
    // 0x71ad84: ldur            x0, [fp, #-0x18]
    // 0x71ad88: cmp             w0, NULL
    // 0x71ad8c: b.eq            #0x71add0
    // 0x71ad90: ldur            x0, [fp, #-0x10]
    // 0x71ad94: LoadField: r3 = r0->field_f
    //     0x71ad94: ldur            w3, [x0, #0xf]
    // 0x71ad98: DecompressPointer r3
    //     0x71ad98: add             x3, x3, HEAP, lsl #32
    // 0x71ad9c: stur            x3, [fp, #-0x18]
    // 0x71ada0: LoadField: r1 = r3->field_f
    //     0x71ada0: ldur            w1, [x3, #0xf]
    // 0x71ada4: DecompressPointer r1
    //     0x71ada4: add             x1, x1, HEAP, lsl #32
    // 0x71ada8: cmp             w1, NULL
    // 0x71adac: b.eq            #0x71add4
    // 0x71adb0: r1 = Function '<anonymous closure>':.
    //     0x71adb0: add             x1, PP, #0x17, lsl #12  ; [pp+0x17a28] Function: [dart:ui] _NativeScene::_NativeScene._ (0x921cc4)
    //     0x71adb4: ldr             x1, [x1, #0xa28]
    // 0x71adb8: r2 = Null
    //     0x71adb8: mov             x2, NULL
    // 0x71adbc: r0 = AllocateClosure()
    //     0x71adbc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x71adc0: ldur            x1, [fp, #-0x18]
    // 0x71adc4: mov             x2, x0
    // 0x71adc8: r0 = setState()
    //     0x71adc8: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x71adcc: b               #0x71ae04
    // 0x71add0: ldur            x0, [fp, #-0x10]
    // 0x71add4: LoadField: r1 = r0->field_f
    //     0x71add4: ldur            w1, [x0, #0xf]
    // 0x71add8: DecompressPointer r1
    //     0x71add8: add             x1, x1, HEAP, lsl #32
    // 0x71addc: LoadField: r0 = r1->field_f
    //     0x71addc: ldur            w0, [x1, #0xf]
    // 0x71ade0: DecompressPointer r0
    //     0x71ade0: add             x0, x0, HEAP, lsl #32
    // 0x71ade4: cmp             w0, NULL
    // 0x71ade8: b.eq            #0x71ae04
    // 0x71adec: mov             x1, x0
    // 0x71adf0: r0 = of()
    //     0x71adf0: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x71adf4: mov             x1, x0
    // 0x71adf8: r2 = Instance_SnackBar
    //     0x71adf8: add             x2, PP, #0x16, lsl #12  ; [pp+0x160f0] Obj!SnackBar@a20571
    //     0x71adfc: ldr             x2, [x2, #0xf0]
    // 0x71ae00: r0 = showSnackBar()
    //     0x71ae00: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x71ae04: r0 = Null
    //     0x71ae04: mov             x0, NULL
    // 0x71ae08: r0 = ReturnAsyncNotFuture()
    //     0x71ae08: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x71ae0c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71ae0c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71ae10: b               #0x71aca4
    // 0x71ae14: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x71ae14: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x71ae18: r9 = downloadController
    //     0x71ae18: add             x9, PP, #0x16, lsl #12  ; [pp+0x160f8] Field <_QuranPageState@932390076.downloadController>: late final (offset: 0x24)
    //     0x71ae1c: ldr             x9, [x9, #0xf8]
    // 0x71ae20: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x71ae20: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, Object, StackTrace?) {
    // ** addr: 0x71b084, size: 0x64
    // 0x71b084: EnterFrame
    //     0x71b084: stp             fp, lr, [SP, #-0x10]!
    //     0x71b088: mov             fp, SP
    // 0x71b08c: ldr             x0, [fp, #0x28]
    // 0x71b090: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x71b090: ldur            w1, [x0, #0x17]
    // 0x71b094: DecompressPointer r1
    //     0x71b094: add             x1, x1, HEAP, lsl #32
    // 0x71b098: CheckStackOverflow
    //     0x71b098: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71b09c: cmp             SP, x16
    //     0x71b0a0: b.ls            #0x71b0e0
    // 0x71b0a4: LoadField: r0 = r1->field_f
    //     0x71b0a4: ldur            w0, [x1, #0xf]
    // 0x71b0a8: DecompressPointer r0
    //     0x71b0a8: add             x0, x0, HEAP, lsl #32
    // 0x71b0ac: LoadField: r2 = r1->field_13
    //     0x71b0ac: ldur            w2, [x1, #0x13]
    // 0x71b0b0: DecompressPointer r2
    //     0x71b0b0: add             x2, x2, HEAP, lsl #32
    // 0x71b0b4: r1 = LoadInt32Instr(r2)
    //     0x71b0b4: sbfx            x1, x2, #1, #0x1f
    //     0x71b0b8: tbz             w2, #0, #0x71b0c0
    //     0x71b0bc: ldur            x1, [x2, #7]
    // 0x71b0c0: mov             x2, x1
    // 0x71b0c4: mov             x1, x0
    // 0x71b0c8: r3 = "Dosya yüklenemedi"
    //     0x71b0c8: add             x3, PP, #0x17, lsl #12  ; [pp+0x179b8] "Dosya yüklenemedi"
    //     0x71b0cc: ldr             x3, [x3, #0x9b8]
    // 0x71b0d0: r0 = _buildErrorWidget()
    //     0x71b0d0: bl              #0x6fd15c  ; [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_buildErrorWidget
    // 0x71b0d4: LeaveFrame
    //     0x71b0d4: mov             SP, fp
    //     0x71b0d8: ldp             fp, lr, [SP], #0x10
    // 0x71b0dc: ret
    //     0x71b0dc: ret             
    // 0x71b0e0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71b0e0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71b0e4: b               #0x71b0a4
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, AsyncSnapshot<Widget>) {
    // ** addr: 0x71b0e8, size: 0x158
    // 0x71b0e8: EnterFrame
    //     0x71b0e8: stp             fp, lr, [SP, #-0x10]!
    //     0x71b0ec: mov             fp, SP
    // 0x71b0f0: AllocStack(0x18)
    //     0x71b0f0: sub             SP, SP, #0x18
    // 0x71b0f4: SetupParameters([dynamic _ /* r0 */])
    //     0x71b0f4: ldr             x0, [fp, #0x20]
    //     0x71b0f8: ldur            w1, [x0, #0x17]
    //     0x71b0fc: add             x1, x1, HEAP, lsl #32
    // 0x71b100: CheckStackOverflow
    //     0x71b100: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71b104: cmp             SP, x16
    //     0x71b108: b.ls            #0x71b238
    // 0x71b10c: ldr             x0, [fp, #0x10]
    // 0x71b110: LoadField: r2 = r0->field_b
    //     0x71b110: ldur            w2, [x0, #0xb]
    // 0x71b114: DecompressPointer r2
    //     0x71b114: add             x2, x2, HEAP, lsl #32
    // 0x71b118: r16 = Instance_ConnectionState
    //     0x71b118: add             x16, PP, #0x16, lsl #12  ; [pp+0x16090] Obj!ConnectionState@a29911
    //     0x71b11c: ldr             x16, [x16, #0x90]
    // 0x71b120: cmp             w2, w16
    // 0x71b124: b.ne            #0x71b188
    // 0x71b128: ldr             x1, [fp, #0x18]
    // 0x71b12c: r0 = of()
    //     0x71b12c: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x71b130: LoadField: r1 = r0->field_5b
    //     0x71b130: ldur            w1, [x0, #0x5b]
    // 0x71b134: DecompressPointer r1
    //     0x71b134: add             x1, x1, HEAP, lsl #32
    // 0x71b138: stur            x1, [fp, #-8]
    // 0x71b13c: r0 = CircularProgressIndicator()
    //     0x71b13c: bl              #0x6d15e8  ; AllocateCircularProgressIndicatorStub -> CircularProgressIndicator (size=0x48)
    // 0x71b140: mov             x1, x0
    // 0x71b144: r0 = Instance__ActivityIndicatorType
    //     0x71b144: add             x0, PP, #0x14, lsl #12  ; [pp+0x14f00] Obj!_ActivityIndicatorType@a2b551
    //     0x71b148: ldr             x0, [x0, #0xf00]
    // 0x71b14c: stur            x1, [fp, #-0x10]
    // 0x71b150: StoreField: r1->field_23 = r0
    //     0x71b150: stur            w0, [x1, #0x23]
    // 0x71b154: ldur            x0, [fp, #-8]
    // 0x71b158: StoreField: r1->field_13 = r0
    //     0x71b158: stur            w0, [x1, #0x13]
    // 0x71b15c: r0 = Center()
    //     0x71b15c: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x71b160: mov             x1, x0
    // 0x71b164: r0 = Instance_Alignment
    //     0x71b164: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x71b168: ldr             x0, [x0, #0x60]
    // 0x71b16c: StoreField: r1->field_f = r0
    //     0x71b16c: stur            w0, [x1, #0xf]
    // 0x71b170: ldur            x0, [fp, #-0x10]
    // 0x71b174: StoreField: r1->field_b = r0
    //     0x71b174: stur            w0, [x1, #0xb]
    // 0x71b178: mov             x0, x1
    // 0x71b17c: LeaveFrame
    //     0x71b17c: mov             SP, fp
    //     0x71b180: ldp             fp, lr, [SP], #0x10
    // 0x71b184: ret
    //     0x71b184: ret             
    // 0x71b188: LoadField: r2 = r0->field_13
    //     0x71b188: ldur            w2, [x0, #0x13]
    // 0x71b18c: DecompressPointer r2
    //     0x71b18c: add             x2, x2, HEAP, lsl #32
    // 0x71b190: cmp             w2, NULL
    // 0x71b194: b.eq            #0x71b20c
    // 0x71b198: LoadField: r0 = r1->field_b
    //     0x71b198: ldur            w0, [x1, #0xb]
    // 0x71b19c: DecompressPointer r0
    //     0x71b19c: add             x0, x0, HEAP, lsl #32
    // 0x71b1a0: LoadField: r3 = r0->field_f
    //     0x71b1a0: ldur            w3, [x0, #0xf]
    // 0x71b1a4: DecompressPointer r3
    //     0x71b1a4: add             x3, x3, HEAP, lsl #32
    // 0x71b1a8: stur            x3, [fp, #-0x10]
    // 0x71b1ac: LoadField: r4 = r1->field_f
    //     0x71b1ac: ldur            w4, [x1, #0xf]
    // 0x71b1b0: DecompressPointer r4
    //     0x71b1b0: add             x4, x4, HEAP, lsl #32
    // 0x71b1b4: stur            x4, [fp, #-8]
    // 0x71b1b8: r0 = 60
    //     0x71b1b8: mov             x0, #0x3c
    // 0x71b1bc: branchIfSmi(r2, 0x71b1c8)
    //     0x71b1bc: tbz             w2, #0, #0x71b1c8
    // 0x71b1c0: r0 = LoadClassIdInstr(r2)
    //     0x71b1c0: ldur            x0, [x2, #-1]
    //     0x71b1c4: ubfx            x0, x0, #0xc, #0x14
    // 0x71b1c8: str             x2, [SP]
    // 0x71b1cc: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x71b1cc: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x71b1d0: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x71b1d0: mov             x17, #0x21f6
    //     0x71b1d4: add             lr, x0, x17
    //     0x71b1d8: ldr             lr, [x21, lr, lsl #3]
    //     0x71b1dc: blr             lr
    // 0x71b1e0: mov             x1, x0
    // 0x71b1e4: ldur            x0, [fp, #-8]
    // 0x71b1e8: r2 = LoadInt32Instr(r0)
    //     0x71b1e8: sbfx            x2, x0, #1, #0x1f
    //     0x71b1ec: tbz             w0, #0, #0x71b1f4
    //     0x71b1f0: ldur            x2, [x0, #7]
    // 0x71b1f4: mov             x3, x1
    // 0x71b1f8: ldur            x1, [fp, #-0x10]
    // 0x71b1fc: r0 = _buildErrorWidget()
    //     0x71b1fc: bl              #0x6fd15c  ; [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_buildErrorWidget
    // 0x71b200: LeaveFrame
    //     0x71b200: mov             SP, fp
    //     0x71b204: ldp             fp, lr, [SP], #0x10
    // 0x71b208: ret
    //     0x71b208: ret             
    // 0x71b20c: LoadField: r1 = r0->field_f
    //     0x71b20c: ldur            w1, [x0, #0xf]
    // 0x71b210: DecompressPointer r1
    //     0x71b210: add             x1, x1, HEAP, lsl #32
    // 0x71b214: cmp             w1, NULL
    // 0x71b218: b.ne            #0x71b228
    // 0x71b21c: r0 = Instance_SizedBox
    //     0x71b21c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b98] Obj!SizedBox@a1fc51
    //     0x71b220: ldr             x0, [x0, #0xb98]
    // 0x71b224: b               #0x71b22c
    // 0x71b228: mov             x0, x1
    // 0x71b22c: LeaveFrame
    //     0x71b22c: mov             SP, fp
    //     0x71b230: ldp             fp, lr, [SP], #0x10
    // 0x71b234: ret
    //     0x71b234: ret             
    // 0x71b238: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71b238: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71b23c: b               #0x71b10c
  }
  [closure] void <anonymous closure>(dynamic, int) {
    // ** addr: 0x71b240, size: 0x194
    // 0x71b240: EnterFrame
    //     0x71b240: stp             fp, lr, [SP, #-0x10]!
    //     0x71b244: mov             fp, SP
    // 0x71b248: AllocStack(0x18)
    //     0x71b248: sub             SP, SP, #0x18
    // 0x71b24c: SetupParameters([dynamic _ /* r0 */])
    //     0x71b24c: ldr             x0, [fp, #0x18]
    //     0x71b250: ldur            w1, [x0, #0x17]
    //     0x71b254: add             x1, x1, HEAP, lsl #32
    //     0x71b258: stur            x1, [fp, #-8]
    // 0x71b25c: CheckStackOverflow
    //     0x71b25c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71b260: cmp             SP, x16
    //     0x71b264: b.ls            #0x71b3c0
    // 0x71b268: r1 = 2
    //     0x71b268: mov             x1, #2
    // 0x71b26c: r0 = AllocateContext()
    //     0x71b26c: bl              #0x927010  ; AllocateContextStub
    // 0x71b270: mov             x1, x0
    // 0x71b274: ldur            x0, [fp, #-8]
    // 0x71b278: stur            x1, [fp, #-0x10]
    // 0x71b27c: StoreField: r1->field_b = r0
    //     0x71b27c: stur            w0, [x1, #0xb]
    // 0x71b280: ldr             x2, [fp, #0x10]
    // 0x71b284: StoreField: r1->field_f = r2
    //     0x71b284: stur            w2, [x1, #0xf]
    // 0x71b288: r0 = InitLateStaticField(0xfc0) // [package:umrem_demo/common/constant/surahs_info.dart] ::quranIndex
    //     0x71b288: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x71b28c: ldr             x0, [x0, #0x1f80]
    //     0x71b290: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x71b294: cmp             w0, w16
    //     0x71b298: b.ne            #0x71b2a8
    //     0x71b29c: add             x2, PP, #0x16, lsl #12  ; [pp+0x16030] Field <::.quranIndex>: static late final (offset: 0xfc0)
    //     0x71b2a0: ldr             x2, [x2, #0x30]
    //     0x71b2a4: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x71b2a8: ldur            x2, [fp, #-0x10]
    // 0x71b2ac: r1 = Function '<anonymous closure>':.
    //     0x71b2ac: add             x1, PP, #0x17, lsl #12  ; [pp+0x17a38] AnonymousClosure: (0x71d6c0), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x71b2b0: ldr             x1, [x1, #0xa38]
    // 0x71b2b4: stur            x0, [fp, #-0x18]
    // 0x71b2b8: r0 = AllocateClosure()
    //     0x71b2b8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x71b2bc: ldur            x1, [fp, #-0x18]
    // 0x71b2c0: mov             x2, x0
    // 0x71b2c4: r0 = where()
    //     0x71b2c4: bl              #0x4e4048  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin::where
    // 0x71b2c8: r1 = Function '<anonymous closure>':.
    //     0x71b2c8: add             x1, PP, #0x17, lsl #12  ; [pp+0x17a40] AnonymousClosure: (0x71d614), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x71b2cc: ldr             x1, [x1, #0xa40]
    // 0x71b2d0: r2 = Null
    //     0x71b2d0: mov             x2, NULL
    // 0x71b2d4: stur            x0, [fp, #-0x18]
    // 0x71b2d8: r0 = AllocateClosure()
    //     0x71b2d8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x71b2dc: ldur            x1, [fp, #-0x18]
    // 0x71b2e0: mov             x2, x0
    // 0x71b2e4: r0 = reduce()
    //     0x71b2e4: bl              #0x7b64e8  ; [dart:core] Iterable::reduce
    // 0x71b2e8: ldur            x3, [fp, #-0x10]
    // 0x71b2ec: StoreField: r3->field_13 = r0
    //     0x71b2ec: stur            w0, [x3, #0x13]
    //     0x71b2f0: tbz             w0, #0, #0x71b30c
    //     0x71b2f4: ldurb           w16, [x3, #-1]
    //     0x71b2f8: ldurb           w17, [x0, #-1]
    //     0x71b2fc: and             x16, x17, x16, lsr #2
    //     0x71b300: tst             x16, HEAP, lsr #32
    //     0x71b304: b.eq            #0x71b30c
    //     0x71b308: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x71b30c: ldur            x0, [fp, #-8]
    // 0x71b310: LoadField: r4 = r0->field_f
    //     0x71b310: ldur            w4, [x0, #0xf]
    // 0x71b314: DecompressPointer r4
    //     0x71b314: add             x4, x4, HEAP, lsl #32
    // 0x71b318: mov             x2, x3
    // 0x71b31c: stur            x4, [fp, #-0x18]
    // 0x71b320: r1 = Function '<anonymous closure>':.
    //     0x71b320: add             x1, PP, #0x17, lsl #12  ; [pp+0x17a48] AnonymousClosure: (0x71d538), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x71b324: ldr             x1, [x1, #0xa48]
    // 0x71b328: r0 = AllocateClosure()
    //     0x71b328: bl              #0x9273d4  ; AllocateClosureStub
    // 0x71b32c: ldur            x1, [fp, #-0x18]
    // 0x71b330: mov             x2, x0
    // 0x71b334: r0 = setState()
    //     0x71b334: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x71b338: ldur            x0, [fp, #-8]
    // 0x71b33c: LoadField: r1 = r0->field_f
    //     0x71b33c: ldur            w1, [x0, #0xf]
    // 0x71b340: DecompressPointer r1
    //     0x71b340: add             x1, x1, HEAP, lsl #32
    // 0x71b344: LoadField: r2 = r1->field_1f
    //     0x71b344: ldur            w2, [x1, #0x1f]
    // 0x71b348: DecompressPointer r2
    //     0x71b348: add             x2, x2, HEAP, lsl #32
    // 0x71b34c: r16 = Sentinel
    //     0x71b34c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x71b350: cmp             w2, w16
    // 0x71b354: b.eq            #0x71b3c8
    // 0x71b358: ldur            x3, [fp, #-0x10]
    // 0x71b35c: LoadField: r1 = r3->field_f
    //     0x71b35c: ldur            w1, [x3, #0xf]
    // 0x71b360: DecompressPointer r1
    //     0x71b360: add             x1, x1, HEAP, lsl #32
    // 0x71b364: r4 = LoadInt32Instr(r1)
    //     0x71b364: sbfx            x4, x1, #1, #0x1f
    //     0x71b368: tbz             w1, #0, #0x71b370
    //     0x71b36c: ldur            x4, [x1, #7]
    // 0x71b370: add             x1, x4, #1
    // 0x71b374: mov             x16, x1
    // 0x71b378: mov             x1, x2
    // 0x71b37c: mov             x2, x16
    // 0x71b380: r0 = getTranslations()
    //     0x71b380: bl              #0x71b444  ; [package:umrem_demo/features/dualar/providers/quran_provider.dart] QuranProvider::getTranslations
    // 0x71b384: ldur            x0, [fp, #-8]
    // 0x71b388: LoadField: r1 = r0->field_f
    //     0x71b388: ldur            w1, [x0, #0xf]
    // 0x71b38c: DecompressPointer r1
    //     0x71b38c: add             x1, x1, HEAP, lsl #32
    // 0x71b390: ldur            x0, [fp, #-0x10]
    // 0x71b394: LoadField: r2 = r0->field_f
    //     0x71b394: ldur            w2, [x0, #0xf]
    // 0x71b398: DecompressPointer r2
    //     0x71b398: add             x2, x2, HEAP, lsl #32
    // 0x71b39c: r0 = LoadInt32Instr(r2)
    //     0x71b39c: sbfx            x0, x2, #1, #0x1f
    //     0x71b3a0: tbz             w2, #0, #0x71b3a8
    //     0x71b3a4: ldur            x0, [x2, #7]
    // 0x71b3a8: mov             x2, x0
    // 0x71b3ac: r0 = _saveCurrentPage()
    //     0x71b3ac: bl              #0x71b3d4  ; [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_saveCurrentPage
    // 0x71b3b0: r0 = Null
    //     0x71b3b0: mov             x0, NULL
    // 0x71b3b4: LeaveFrame
    //     0x71b3b4: mov             SP, fp
    //     0x71b3b8: ldp             fp, lr, [SP], #0x10
    // 0x71b3bc: ret
    //     0x71b3bc: ret             
    // 0x71b3c0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71b3c0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71b3c4: b               #0x71b268
    // 0x71b3c8: r9 = controller
    //     0x71b3c8: add             x9, PP, #0x17, lsl #12  ; [pp+0x17a50] Field <_QuranPageState@932390076.controller>: late final (offset: 0x20)
    //     0x71b3cc: ldr             x9, [x9, #0xa50]
    // 0x71b3d0: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x71b3d0: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  _ _saveCurrentPage(/* No info */) async {
    // ** addr: 0x71b3d4, size: 0x70
    // 0x71b3d4: EnterFrame
    //     0x71b3d4: stp             fp, lr, [SP, #-0x10]!
    //     0x71b3d8: mov             fp, SP
    // 0x71b3dc: AllocStack(0x20)
    //     0x71b3dc: sub             SP, SP, #0x20
    // 0x71b3e0: SetupParameters(_QuranPageState this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r3, fp-0x18 */)
    //     0x71b3e0: stur            NULL, [fp, #-8]
    //     0x71b3e4: mov             x3, x2
    //     0x71b3e8: stur            x1, [fp, #-0x10]
    //     0x71b3ec: stur            x2, [fp, #-0x18]
    // 0x71b3f0: CheckStackOverflow
    //     0x71b3f0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71b3f4: cmp             SP, x16
    //     0x71b3f8: b.ls            #0x71b43c
    // 0x71b3fc: InitAsync() -> Future<void?>
    //     0x71b3fc: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x71b400: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x71b404: r0 = getInstance()
    //     0x71b404: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x71b408: mov             x1, x0
    // 0x71b40c: stur            x1, [fp, #-0x20]
    // 0x71b410: r0 = Await()
    //     0x71b410: bl              #0x3dd188  ; AwaitStub
    // 0x71b414: mov             x1, x0
    // 0x71b418: ldur            x3, [fp, #-0x18]
    // 0x71b41c: r2 = "quran_last_page"
    //     0x71b41c: add             x2, PP, #0x17, lsl #12  ; [pp+0x17a90] "quran_last_page"
    //     0x71b420: ldr             x2, [x2, #0xa90]
    // 0x71b424: r0 = setInt()
    //     0x71b424: bl              #0x5cfc14  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setInt
    // 0x71b428: mov             x1, x0
    // 0x71b42c: stur            x1, [fp, #-0x20]
    // 0x71b430: r0 = Await()
    //     0x71b430: bl              #0x3dd188  ; AwaitStub
    // 0x71b434: r0 = Null
    //     0x71b434: mov             x0, NULL
    // 0x71b438: r0 = ReturnAsyncNotFuture()
    //     0x71b438: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x71b43c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71b43c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71b440: b               #0x71b3fc
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x71d538, size: 0xdc
    // 0x71d538: EnterFrame
    //     0x71d538: stp             fp, lr, [SP, #-0x10]!
    //     0x71d53c: mov             fp, SP
    // 0x71d540: AllocStack(0x10)
    //     0x71d540: sub             SP, SP, #0x10
    // 0x71d544: SetupParameters([dynamic _ /* r0 */])
    //     0x71d544: ldr             x0, [fp, #0x10]
    //     0x71d548: ldur            w1, [x0, #0x17]
    //     0x71d54c: add             x1, x1, HEAP, lsl #32
    // 0x71d550: CheckStackOverflow
    //     0x71d550: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71d554: cmp             SP, x16
    //     0x71d558: b.ls            #0x71d60c
    // 0x71d55c: LoadField: r0 = r1->field_b
    //     0x71d55c: ldur            w0, [x1, #0xb]
    // 0x71d560: DecompressPointer r0
    //     0x71d560: add             x0, x0, HEAP, lsl #32
    // 0x71d564: LoadField: r3 = r0->field_f
    //     0x71d564: ldur            w3, [x0, #0xf]
    // 0x71d568: DecompressPointer r3
    //     0x71d568: add             x3, x3, HEAP, lsl #32
    // 0x71d56c: stur            x3, [fp, #-8]
    // 0x71d570: LoadField: r0 = r1->field_13
    //     0x71d570: ldur            w0, [x1, #0x13]
    // 0x71d574: DecompressPointer r0
    //     0x71d574: add             x0, x0, HEAP, lsl #32
    // 0x71d578: r1 = LoadClassIdInstr(r0)
    //     0x71d578: ldur            x1, [x0, #-1]
    //     0x71d57c: ubfx            x1, x1, #0xc, #0x14
    // 0x71d580: mov             x16, x0
    // 0x71d584: mov             x0, x1
    // 0x71d588: mov             x1, x16
    // 0x71d58c: r2 = "name"
    //     0x71d58c: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71d590: r0 = GDT[cid_x0 + 0x36e]()
    //     0x71d590: add             lr, x0, #0x36e
    //     0x71d594: ldr             lr, [x21, lr, lsl #3]
    //     0x71d598: blr             lr
    // 0x71d59c: mov             x3, x0
    // 0x71d5a0: r2 = Null
    //     0x71d5a0: mov             x2, NULL
    // 0x71d5a4: r1 = Null
    //     0x71d5a4: mov             x1, NULL
    // 0x71d5a8: stur            x3, [fp, #-0x10]
    // 0x71d5ac: r4 = 60
    //     0x71d5ac: mov             x4, #0x3c
    // 0x71d5b0: branchIfSmi(r0, 0x71d5bc)
    //     0x71d5b0: tbz             w0, #0, #0x71d5bc
    // 0x71d5b4: r4 = LoadClassIdInstr(r0)
    //     0x71d5b4: ldur            x4, [x0, #-1]
    //     0x71d5b8: ubfx            x4, x4, #0xc, #0x14
    // 0x71d5bc: sub             x4, x4, #0x5e
    // 0x71d5c0: cmp             x4, #1
    // 0x71d5c4: b.ls            #0x71d5d8
    // 0x71d5c8: r8 = String
    //     0x71d5c8: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x71d5cc: r3 = Null
    //     0x71d5cc: add             x3, PP, #0x17, lsl #12  ; [pp+0x17a58] Null
    //     0x71d5d0: ldr             x3, [x3, #0xa58]
    // 0x71d5d4: r0 = String()
    //     0x71d5d4: bl              #0x939a58  ; IsType_String_Stub
    // 0x71d5d8: ldur            x0, [fp, #-0x10]
    // 0x71d5dc: ldur            x1, [fp, #-8]
    // 0x71d5e0: StoreField: r1->field_13 = r0
    //     0x71d5e0: stur            w0, [x1, #0x13]
    //     0x71d5e4: ldurb           w16, [x1, #-1]
    //     0x71d5e8: ldurb           w17, [x0, #-1]
    //     0x71d5ec: and             x16, x17, x16, lsr #2
    //     0x71d5f0: tst             x16, HEAP, lsr #32
    //     0x71d5f4: b.eq            #0x71d5fc
    //     0x71d5f8: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x71d5fc: r0 = Null
    //     0x71d5fc: mov             x0, NULL
    // 0x71d600: LeaveFrame
    //     0x71d600: mov             SP, fp
    //     0x71d604: ldp             fp, lr, [SP], #0x10
    // 0x71d608: ret
    //     0x71d608: ret             
    // 0x71d60c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71d60c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71d610: b               #0x71d55c
  }
  [closure] Map<String, dynamic> <anonymous closure>(dynamic, Map<String, dynamic>, Map<String, dynamic>) {
    // ** addr: 0x71d614, size: 0xac
    // 0x71d614: EnterFrame
    //     0x71d614: stp             fp, lr, [SP, #-0x10]!
    //     0x71d618: mov             fp, SP
    // 0x71d61c: AllocStack(0x18)
    //     0x71d61c: sub             SP, SP, #0x18
    // 0x71d620: CheckStackOverflow
    //     0x71d620: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71d624: cmp             SP, x16
    //     0x71d628: b.ls            #0x71d6b8
    // 0x71d62c: ldr             x3, [fp, #0x18]
    // 0x71d630: r0 = LoadClassIdInstr(r3)
    //     0x71d630: ldur            x0, [x3, #-1]
    //     0x71d634: ubfx            x0, x0, #0xc, #0x14
    // 0x71d638: mov             x1, x3
    // 0x71d63c: r2 = "page"
    //     0x71d63c: add             x2, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x71d640: ldr             x2, [x2, #0xa68]
    // 0x71d644: r0 = GDT[cid_x0 + 0x36e]()
    //     0x71d644: add             lr, x0, #0x36e
    //     0x71d648: ldr             lr, [x21, lr, lsl #3]
    //     0x71d64c: blr             lr
    // 0x71d650: mov             x4, x0
    // 0x71d654: ldr             x3, [fp, #0x10]
    // 0x71d658: stur            x4, [fp, #-8]
    // 0x71d65c: r0 = LoadClassIdInstr(r3)
    //     0x71d65c: ldur            x0, [x3, #-1]
    //     0x71d660: ubfx            x0, x0, #0xc, #0x14
    // 0x71d664: mov             x1, x3
    // 0x71d668: r2 = "page"
    //     0x71d668: add             x2, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x71d66c: ldr             x2, [x2, #0xa68]
    // 0x71d670: r0 = GDT[cid_x0 + 0x36e]()
    //     0x71d670: add             lr, x0, #0x36e
    //     0x71d674: ldr             lr, [x21, lr, lsl #3]
    //     0x71d678: blr             lr
    // 0x71d67c: ldur            x16, [fp, #-8]
    // 0x71d680: stp             x0, x16, [SP]
    // 0x71d684: r4 = 0
    //     0x71d684: mov             x4, #0
    // 0x71d688: ldr             x0, [SP, #8]
    // 0x71d68c: r16 = 139786425482080
    //     0x71d68c: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a70] IMM: 0x7f22903c3b60
    //     0x71d690: add             x16, x16, #0xa70
    // 0x71d694: ldp             lr, x5, [x16]
    // 0x71d698: blr             lr
    // 0x71d69c: tbnz            w0, #4, #0x71d6a8
    // 0x71d6a0: ldr             x0, [fp, #0x18]
    // 0x71d6a4: b               #0x71d6ac
    // 0x71d6a8: ldr             x0, [fp, #0x10]
    // 0x71d6ac: LeaveFrame
    //     0x71d6ac: mov             SP, fp
    //     0x71d6b0: ldp             fp, lr, [SP], #0x10
    // 0x71d6b4: ret
    //     0x71d6b4: ret             
    // 0x71d6b8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71d6b8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71d6bc: b               #0x71d62c
  }
  [closure] bool <anonymous closure>(dynamic, Map<String, dynamic>) {
    // ** addr: 0x71d6c0, size: 0x88
    // 0x71d6c0: EnterFrame
    //     0x71d6c0: stp             fp, lr, [SP, #-0x10]!
    //     0x71d6c4: mov             fp, SP
    // 0x71d6c8: AllocStack(0x18)
    //     0x71d6c8: sub             SP, SP, #0x18
    // 0x71d6cc: SetupParameters([dynamic _ /* r0 */])
    //     0x71d6cc: ldr             x0, [fp, #0x18]
    //     0x71d6d0: ldur            w3, [x0, #0x17]
    //     0x71d6d4: add             x3, x3, HEAP, lsl #32
    //     0x71d6d8: stur            x3, [fp, #-8]
    // 0x71d6dc: CheckStackOverflow
    //     0x71d6dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71d6e0: cmp             SP, x16
    //     0x71d6e4: b.ls            #0x71d740
    // 0x71d6e8: ldr             x1, [fp, #0x10]
    // 0x71d6ec: r0 = LoadClassIdInstr(r1)
    //     0x71d6ec: ldur            x0, [x1, #-1]
    //     0x71d6f0: ubfx            x0, x0, #0xc, #0x14
    // 0x71d6f4: r2 = "page"
    //     0x71d6f4: add             x2, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x71d6f8: ldr             x2, [x2, #0xa68]
    // 0x71d6fc: r0 = GDT[cid_x0 + 0x36e]()
    //     0x71d6fc: add             lr, x0, #0x36e
    //     0x71d700: ldr             lr, [x21, lr, lsl #3]
    //     0x71d704: blr             lr
    // 0x71d708: mov             x1, x0
    // 0x71d70c: ldur            x0, [fp, #-8]
    // 0x71d710: LoadField: r2 = r0->field_f
    //     0x71d710: ldur            w2, [x0, #0xf]
    // 0x71d714: DecompressPointer r2
    //     0x71d714: add             x2, x2, HEAP, lsl #32
    // 0x71d718: stp             x2, x1, [SP]
    // 0x71d71c: r4 = 0
    //     0x71d71c: mov             x4, #0
    // 0x71d720: ldr             x0, [SP, #8]
    // 0x71d724: r16 = 139786425482080
    //     0x71d724: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a80] IMM: 0x7f22903c3b60
    //     0x71d728: add             x16, x16, #0xa80
    // 0x71d72c: ldp             lr, x5, [x16]
    // 0x71d730: blr             lr
    // 0x71d734: LeaveFrame
    //     0x71d734: mov             SP, fp
    //     0x71d738: ldp             fp, lr, [SP], #0x10
    // 0x71d73c: ret
    //     0x71d73c: ret             
    // 0x71d740: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71d740: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71d744: b               #0x71d6e8
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x71d748, size: 0x160
    // 0x71d748: EnterFrame
    //     0x71d748: stp             fp, lr, [SP, #-0x10]!
    //     0x71d74c: mov             fp, SP
    // 0x71d750: AllocStack(0x18)
    //     0x71d750: sub             SP, SP, #0x18
    // 0x71d754: SetupParameters([dynamic _ /* r0 */])
    //     0x71d754: ldr             x0, [fp, #0x18]
    //     0x71d758: ldur            w1, [x0, #0x17]
    //     0x71d75c: add             x1, x1, HEAP, lsl #32
    //     0x71d760: stur            x1, [fp, #-8]
    // 0x71d764: CheckStackOverflow
    //     0x71d764: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71d768: cmp             SP, x16
    //     0x71d76c: b.ls            #0x71d8a0
    // 0x71d770: r1 = 1
    //     0x71d770: mov             x1, #1
    // 0x71d774: r0 = AllocateContext()
    //     0x71d774: bl              #0x927010  ; AllocateContextStub
    // 0x71d778: mov             x3, x0
    // 0x71d77c: ldur            x0, [fp, #-8]
    // 0x71d780: stur            x3, [fp, #-0x18]
    // 0x71d784: StoreField: r3->field_b = r0
    //     0x71d784: stur            w0, [x3, #0xb]
    // 0x71d788: ldr             x1, [fp, #0x10]
    // 0x71d78c: StoreField: r3->field_f = r1
    //     0x71d78c: stur            w1, [x3, #0xf]
    // 0x71d790: LoadField: r4 = r0->field_f
    //     0x71d790: ldur            w4, [x0, #0xf]
    // 0x71d794: DecompressPointer r4
    //     0x71d794: add             x4, x4, HEAP, lsl #32
    // 0x71d798: mov             x2, x3
    // 0x71d79c: stur            x4, [fp, #-0x10]
    // 0x71d7a0: r1 = Function '<anonymous closure>':.
    //     0x71d7a0: add             x1, PP, #0x17, lsl #12  ; [pp+0x17de8] AnonymousClosure: (0x6d2988), in [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_showDatePicker (0x6d2698)
    //     0x71d7a4: ldr             x1, [x1, #0xde8]
    // 0x71d7a8: r0 = AllocateClosure()
    //     0x71d7a8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x71d7ac: ldur            x1, [fp, #-0x10]
    // 0x71d7b0: mov             x2, x0
    // 0x71d7b4: r0 = setState()
    //     0x71d7b4: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x71d7b8: r0 = InitLateStaticField(0xfc0) // [package:umrem_demo/common/constant/surahs_info.dart] ::quranIndex
    //     0x71d7b8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x71d7bc: ldr             x0, [x0, #0x1f80]
    //     0x71d7c0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x71d7c4: cmp             w0, w16
    //     0x71d7c8: b.ne            #0x71d7d8
    //     0x71d7cc: add             x2, PP, #0x16, lsl #12  ; [pp+0x16030] Field <::.quranIndex>: static late final (offset: 0xfc0)
    //     0x71d7d0: ldr             x2, [x2, #0x30]
    //     0x71d7d4: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x71d7d8: ldur            x2, [fp, #-0x18]
    // 0x71d7dc: r1 = Function '<anonymous closure>':.
    //     0x71d7dc: add             x1, PP, #0x17, lsl #12  ; [pp+0x17df0] AnonymousClosure: (0x71d8a8), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x71d7e0: ldr             x1, [x1, #0xdf0]
    // 0x71d7e4: stur            x0, [fp, #-0x10]
    // 0x71d7e8: r0 = AllocateClosure()
    //     0x71d7e8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x71d7ec: ldur            x1, [fp, #-0x10]
    // 0x71d7f0: mov             x2, x0
    // 0x71d7f4: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x71d7f4: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x71d7f8: r0 = firstWhere()
    //     0x71d7f8: bl              #0x4d1c6c  ; [dart:collection] ListBase::firstWhere
    // 0x71d7fc: r1 = LoadClassIdInstr(r0)
    //     0x71d7fc: ldur            x1, [x0, #-1]
    //     0x71d800: ubfx            x1, x1, #0xc, #0x14
    // 0x71d804: mov             x16, x0
    // 0x71d808: mov             x0, x1
    // 0x71d80c: mov             x1, x16
    // 0x71d810: r2 = "page"
    //     0x71d810: add             x2, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x71d814: ldr             x2, [x2, #0xa68]
    // 0x71d818: r0 = GDT[cid_x0 + 0x36e]()
    //     0x71d818: add             lr, x0, #0x36e
    //     0x71d81c: ldr             lr, [x21, lr, lsl #3]
    //     0x71d820: blr             lr
    // 0x71d824: mov             x3, x0
    // 0x71d828: ldur            x0, [fp, #-8]
    // 0x71d82c: stur            x3, [fp, #-0x10]
    // 0x71d830: LoadField: r1 = r0->field_f
    //     0x71d830: ldur            w1, [x0, #0xf]
    // 0x71d834: DecompressPointer r1
    //     0x71d834: add             x1, x1, HEAP, lsl #32
    // 0x71d838: LoadField: r4 = r1->field_1b
    //     0x71d838: ldur            w4, [x1, #0x1b]
    // 0x71d83c: DecompressPointer r4
    //     0x71d83c: add             x4, x4, HEAP, lsl #32
    // 0x71d840: mov             x0, x3
    // 0x71d844: stur            x4, [fp, #-8]
    // 0x71d848: r2 = Null
    //     0x71d848: mov             x2, NULL
    // 0x71d84c: r1 = Null
    //     0x71d84c: mov             x1, NULL
    // 0x71d850: branchIfSmi(r0, 0x71d878)
    //     0x71d850: tbz             w0, #0, #0x71d878
    // 0x71d854: r4 = LoadClassIdInstr(r0)
    //     0x71d854: ldur            x4, [x0, #-1]
    //     0x71d858: ubfx            x4, x4, #0xc, #0x14
    // 0x71d85c: sub             x4, x4, #0x3c
    // 0x71d860: cmp             x4, #1
    // 0x71d864: b.ls            #0x71d878
    // 0x71d868: r8 = int
    //     0x71d868: ldr             x8, [PP, #0x478]  ; [pp+0x478] Type: int
    // 0x71d86c: r3 = Null
    //     0x71d86c: add             x3, PP, #0x17, lsl #12  ; [pp+0x17df8] Null
    //     0x71d870: ldr             x3, [x3, #0xdf8]
    // 0x71d874: r0 = int()
    //     0x71d874: bl              #0x93a4a4  ; IsType_int_Stub
    // 0x71d878: ldur            x0, [fp, #-0x10]
    // 0x71d87c: r2 = LoadInt32Instr(r0)
    //     0x71d87c: sbfx            x2, x0, #1, #0x1f
    //     0x71d880: tbz             w0, #0, #0x71d888
    //     0x71d884: ldur            x2, [x0, #7]
    // 0x71d888: ldur            x1, [fp, #-8]
    // 0x71d88c: r0 = jumpToPage()
    //     0x71d88c: bl              #0x5e4fc0  ; [package:flutter/src/widgets/page_view.dart] PageController::jumpToPage
    // 0x71d890: r0 = Null
    //     0x71d890: mov             x0, NULL
    // 0x71d894: LeaveFrame
    //     0x71d894: mov             SP, fp
    //     0x71d898: ldp             fp, lr, [SP], #0x10
    // 0x71d89c: ret
    //     0x71d89c: ret             
    // 0x71d8a0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71d8a0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71d8a4: b               #0x71d770
  }
  [closure] bool <anonymous closure>(dynamic, Map<String, dynamic>) {
    // ** addr: 0x71d8a8, size: 0x88
    // 0x71d8a8: EnterFrame
    //     0x71d8a8: stp             fp, lr, [SP, #-0x10]!
    //     0x71d8ac: mov             fp, SP
    // 0x71d8b0: AllocStack(0x18)
    //     0x71d8b0: sub             SP, SP, #0x18
    // 0x71d8b4: SetupParameters([dynamic _ /* r0 */])
    //     0x71d8b4: ldr             x0, [fp, #0x18]
    //     0x71d8b8: ldur            w3, [x0, #0x17]
    //     0x71d8bc: add             x3, x3, HEAP, lsl #32
    //     0x71d8c0: stur            x3, [fp, #-8]
    // 0x71d8c4: CheckStackOverflow
    //     0x71d8c4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71d8c8: cmp             SP, x16
    //     0x71d8cc: b.ls            #0x71d928
    // 0x71d8d0: ldr             x1, [fp, #0x10]
    // 0x71d8d4: r0 = LoadClassIdInstr(r1)
    //     0x71d8d4: ldur            x0, [x1, #-1]
    //     0x71d8d8: ubfx            x0, x0, #0xc, #0x14
    // 0x71d8dc: r2 = "name"
    //     0x71d8dc: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71d8e0: r0 = GDT[cid_x0 + 0x36e]()
    //     0x71d8e0: add             lr, x0, #0x36e
    //     0x71d8e4: ldr             lr, [x21, lr, lsl #3]
    //     0x71d8e8: blr             lr
    // 0x71d8ec: mov             x1, x0
    // 0x71d8f0: ldur            x0, [fp, #-8]
    // 0x71d8f4: LoadField: r2 = r0->field_f
    //     0x71d8f4: ldur            w2, [x0, #0xf]
    // 0x71d8f8: DecompressPointer r2
    //     0x71d8f8: add             x2, x2, HEAP, lsl #32
    // 0x71d8fc: r0 = 60
    //     0x71d8fc: mov             x0, #0x3c
    // 0x71d900: branchIfSmi(r1, 0x71d90c)
    //     0x71d900: tbz             w1, #0, #0x71d90c
    // 0x71d904: r0 = LoadClassIdInstr(r1)
    //     0x71d904: ldur            x0, [x1, #-1]
    //     0x71d908: ubfx            x0, x0, #0xc, #0x14
    // 0x71d90c: stp             x2, x1, [SP]
    // 0x71d910: mov             lr, x0
    // 0x71d914: ldr             lr, [x21, lr, lsl #3]
    // 0x71d918: blr             lr
    // 0x71d91c: LeaveFrame
    //     0x71d91c: mov             SP, fp
    //     0x71d920: ldp             fp, lr, [SP], #0x10
    // 0x71d924: ret
    //     0x71d924: ret             
    // 0x71d928: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71d928: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71d92c: b               #0x71d8d0
  }
  [closure] DropdownMenuItem<String> <anonymous closure>(dynamic, Map<String, dynamic>) {
    // ** addr: 0x71d930, size: 0x118
    // 0x71d930: EnterFrame
    //     0x71d930: stp             fp, lr, [SP, #-0x10]!
    //     0x71d934: mov             fp, SP
    // 0x71d938: AllocStack(0x20)
    //     0x71d938: sub             SP, SP, #0x20
    // 0x71d93c: CheckStackOverflow
    //     0x71d93c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71d940: cmp             SP, x16
    //     0x71d944: b.ls            #0x71da40
    // 0x71d948: ldr             x3, [fp, #0x10]
    // 0x71d94c: r0 = LoadClassIdInstr(r3)
    //     0x71d94c: ldur            x0, [x3, #-1]
    //     0x71d950: ubfx            x0, x0, #0xc, #0x14
    // 0x71d954: mov             x1, x3
    // 0x71d958: r2 = "name"
    //     0x71d958: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71d95c: r0 = GDT[cid_x0 + 0x36e]()
    //     0x71d95c: add             lr, x0, #0x36e
    //     0x71d960: ldr             lr, [x21, lr, lsl #3]
    //     0x71d964: blr             lr
    // 0x71d968: mov             x3, x0
    // 0x71d96c: r2 = Null
    //     0x71d96c: mov             x2, NULL
    // 0x71d970: r1 = Null
    //     0x71d970: mov             x1, NULL
    // 0x71d974: stur            x3, [fp, #-8]
    // 0x71d978: r4 = 60
    //     0x71d978: mov             x4, #0x3c
    // 0x71d97c: branchIfSmi(r0, 0x71d988)
    //     0x71d97c: tbz             w0, #0, #0x71d988
    // 0x71d980: r4 = LoadClassIdInstr(r0)
    //     0x71d980: ldur            x4, [x0, #-1]
    //     0x71d984: ubfx            x4, x4, #0xc, #0x14
    // 0x71d988: sub             x4, x4, #0x5e
    // 0x71d98c: cmp             x4, #1
    // 0x71d990: b.ls            #0x71d9a4
    // 0x71d994: r8 = String
    //     0x71d994: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x71d998: r3 = Null
    //     0x71d998: add             x3, PP, #0x17, lsl #12  ; [pp+0x17e20] Null
    //     0x71d99c: ldr             x3, [x3, #0xe20]
    // 0x71d9a0: r0 = String()
    //     0x71d9a0: bl              #0x939a58  ; IsType_String_Stub
    // 0x71d9a4: ldr             x1, [fp, #0x10]
    // 0x71d9a8: r0 = LoadClassIdInstr(r1)
    //     0x71d9a8: ldur            x0, [x1, #-1]
    //     0x71d9ac: ubfx            x0, x0, #0xc, #0x14
    // 0x71d9b0: r2 = "name"
    //     0x71d9b0: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71d9b4: r0 = GDT[cid_x0 + 0x36e]()
    //     0x71d9b4: add             lr, x0, #0x36e
    //     0x71d9b8: ldr             lr, [x21, lr, lsl #3]
    //     0x71d9bc: blr             lr
    // 0x71d9c0: r1 = Null
    //     0x71d9c0: mov             x1, NULL
    // 0x71d9c4: r2 = 4
    //     0x71d9c4: mov             x2, #4
    // 0x71d9c8: stur            x0, [fp, #-0x10]
    // 0x71d9cc: r0 = AllocateArray()
    //     0x71d9cc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71d9d0: mov             x1, x0
    // 0x71d9d4: ldur            x0, [fp, #-0x10]
    // 0x71d9d8: StoreField: r1->field_f = r0
    //     0x71d9d8: stur            w0, [x1, #0xf]
    // 0x71d9dc: r16 = " Suresi"
    //     0x71d9dc: add             x16, PP, #0x17, lsl #12  ; [pp+0x17e30] " Suresi"
    //     0x71d9e0: ldr             x16, [x16, #0xe30]
    // 0x71d9e4: StoreField: r1->field_13 = r16
    //     0x71d9e4: stur            w16, [x1, #0x13]
    // 0x71d9e8: str             x1, [SP]
    // 0x71d9ec: r0 = _interpolate()
    //     0x71d9ec: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x71d9f0: stur            x0, [fp, #-0x10]
    // 0x71d9f4: r0 = Text()
    //     0x71d9f4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x71d9f8: mov             x2, x0
    // 0x71d9fc: ldur            x0, [fp, #-0x10]
    // 0x71da00: stur            x2, [fp, #-0x18]
    // 0x71da04: StoreField: r2->field_b = r0
    //     0x71da04: stur            w0, [x2, #0xb]
    // 0x71da08: r1 = <String>
    //     0x71da08: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x71da0c: r0 = DropdownMenuItem()
    //     0x71da0c: bl              #0x6de55c  ; AllocateDropdownMenuItemStub -> DropdownMenuItem<X0> (size=0x24)
    // 0x71da10: ldur            x1, [fp, #-8]
    // 0x71da14: StoreField: r0->field_1b = r1
    //     0x71da14: stur            w1, [x0, #0x1b]
    // 0x71da18: r1 = true
    //     0x71da18: add             x1, NULL, #0x20  ; true
    // 0x71da1c: StoreField: r0->field_1f = r1
    //     0x71da1c: stur            w1, [x0, #0x1f]
    // 0x71da20: r1 = Instance_AlignmentDirectional
    //     0x71da20: add             x1, PP, #0x14, lsl #12  ; [pp+0x14330] Obj!AlignmentDirectional@a0ce11
    //     0x71da24: ldr             x1, [x1, #0x330]
    // 0x71da28: StoreField: r0->field_f = r1
    //     0x71da28: stur            w1, [x0, #0xf]
    // 0x71da2c: ldur            x1, [fp, #-0x18]
    // 0x71da30: StoreField: r0->field_b = r1
    //     0x71da30: stur            w1, [x0, #0xb]
    // 0x71da34: LeaveFrame
    //     0x71da34: mov             SP, fp
    //     0x71da38: ldp             fp, lr, [SP], #0x10
    // 0x71da3c: ret
    //     0x71da3c: ret             
    // 0x71da40: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71da40: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71da44: b               #0x71d948
  }
  [closure] void <anonymous closure>(dynamic, int?) {
    // ** addr: 0x71da48, size: 0xe4
    // 0x71da48: EnterFrame
    //     0x71da48: stp             fp, lr, [SP, #-0x10]!
    //     0x71da4c: mov             fp, SP
    // 0x71da50: AllocStack(0x18)
    //     0x71da50: sub             SP, SP, #0x18
    // 0x71da54: SetupParameters([dynamic _ /* r0 */])
    //     0x71da54: ldr             x0, [fp, #0x18]
    //     0x71da58: ldur            w1, [x0, #0x17]
    //     0x71da5c: add             x1, x1, HEAP, lsl #32
    //     0x71da60: stur            x1, [fp, #-8]
    // 0x71da64: CheckStackOverflow
    //     0x71da64: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71da68: cmp             SP, x16
    //     0x71da6c: b.ls            #0x71db14
    // 0x71da70: r1 = 1
    //     0x71da70: mov             x1, #1
    // 0x71da74: r0 = AllocateContext()
    //     0x71da74: bl              #0x927010  ; AllocateContextStub
    // 0x71da78: mov             x3, x0
    // 0x71da7c: ldur            x0, [fp, #-8]
    // 0x71da80: stur            x3, [fp, #-0x18]
    // 0x71da84: StoreField: r3->field_b = r0
    //     0x71da84: stur            w0, [x3, #0xb]
    // 0x71da88: ldr             x1, [fp, #0x10]
    // 0x71da8c: StoreField: r3->field_f = r1
    //     0x71da8c: stur            w1, [x3, #0xf]
    // 0x71da90: LoadField: r4 = r0->field_f
    //     0x71da90: ldur            w4, [x0, #0xf]
    // 0x71da94: DecompressPointer r4
    //     0x71da94: add             x4, x4, HEAP, lsl #32
    // 0x71da98: mov             x2, x3
    // 0x71da9c: stur            x4, [fp, #-0x10]
    // 0x71daa0: r1 = Function '<anonymous closure>':.
    //     0x71daa0: add             x1, PP, #0x17, lsl #12  ; [pp+0x17e38] AnonymousClosure: (0x71db60), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x71daa4: ldr             x1, [x1, #0xe38]
    // 0x71daa8: r0 = AllocateClosure()
    //     0x71daa8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x71daac: ldur            x1, [fp, #-0x10]
    // 0x71dab0: mov             x2, x0
    // 0x71dab4: r0 = setState()
    //     0x71dab4: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x71dab8: ldur            x0, [fp, #-8]
    // 0x71dabc: LoadField: r1 = r0->field_f
    //     0x71dabc: ldur            w1, [x0, #0xf]
    // 0x71dac0: DecompressPointer r1
    //     0x71dac0: add             x1, x1, HEAP, lsl #32
    // 0x71dac4: LoadField: r0 = r1->field_1f
    //     0x71dac4: ldur            w0, [x1, #0x1f]
    // 0x71dac8: DecompressPointer r0
    //     0x71dac8: add             x0, x0, HEAP, lsl #32
    // 0x71dacc: r16 = Sentinel
    //     0x71dacc: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x71dad0: cmp             w0, w16
    // 0x71dad4: b.eq            #0x71db1c
    // 0x71dad8: ldur            x1, [fp, #-0x18]
    // 0x71dadc: LoadField: r2 = r1->field_f
    //     0x71dadc: ldur            w2, [x1, #0xf]
    // 0x71dae0: DecompressPointer r2
    //     0x71dae0: add             x2, x2, HEAP, lsl #32
    // 0x71dae4: cmp             w2, NULL
    // 0x71dae8: b.eq            #0x71db28
    // 0x71daec: r1 = LoadInt32Instr(r2)
    //     0x71daec: sbfx            x1, x2, #1, #0x1f
    //     0x71daf0: tbz             w2, #0, #0x71daf8
    //     0x71daf4: ldur            x1, [x2, #7]
    // 0x71daf8: mov             x2, x1
    // 0x71dafc: mov             x1, x0
    // 0x71db00: r0 = setTranslationId()
    //     0x71db00: bl              #0x71db2c  ; [package:umrem_demo/features/dualar/providers/quran_provider.dart] QuranProvider::setTranslationId
    // 0x71db04: r0 = Null
    //     0x71db04: mov             x0, NULL
    // 0x71db08: LeaveFrame
    //     0x71db08: mov             SP, fp
    //     0x71db0c: ldp             fp, lr, [SP], #0x10
    // 0x71db10: ret
    //     0x71db10: ret             
    // 0x71db14: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71db14: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71db18: b               #0x71da70
    // 0x71db1c: r9 = controller
    //     0x71db1c: add             x9, PP, #0x17, lsl #12  ; [pp+0x17a50] Field <_QuranPageState@932390076.controller>: late final (offset: 0x20)
    //     0x71db20: ldr             x9, [x9, #0xa50]
    // 0x71db24: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x71db24: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x71db28: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x71db28: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x71db60, size: 0x54
    // 0x71db60: ldr             x1, [SP]
    // 0x71db64: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x71db64: ldur            w2, [x1, #0x17]
    // 0x71db68: DecompressPointer r2
    //     0x71db68: add             x2, x2, HEAP, lsl #32
    // 0x71db6c: LoadField: r1 = r2->field_b
    //     0x71db6c: ldur            w1, [x2, #0xb]
    // 0x71db70: DecompressPointer r1
    //     0x71db70: add             x1, x1, HEAP, lsl #32
    // 0x71db74: LoadField: r3 = r1->field_f
    //     0x71db74: ldur            w3, [x1, #0xf]
    // 0x71db78: DecompressPointer r3
    //     0x71db78: add             x3, x3, HEAP, lsl #32
    // 0x71db7c: LoadField: r0 = r2->field_f
    //     0x71db7c: ldur            w0, [x2, #0xf]
    // 0x71db80: DecompressPointer r0
    //     0x71db80: add             x0, x0, HEAP, lsl #32
    // 0x71db84: ArrayStore: r3[0] = r0  ; List_4
    //     0x71db84: stur            w0, [x3, #0x17]
    //     0x71db88: tbz             w0, #0, #0x71dbac
    //     0x71db8c: ldurb           w16, [x3, #-1]
    //     0x71db90: ldurb           w17, [x0, #-1]
    //     0x71db94: and             x16, x17, x16, lsr #2
    //     0x71db98: tst             x16, HEAP, lsr #32
    //     0x71db9c: b.eq            #0x71dbac
    //     0x71dba0: str             lr, [SP, #-8]!
    //     0x71dba4: bl              #0x9267d0  ; WriteBarrierWrappersStub
    //     0x71dba8: ldr             lr, [SP], #8
    // 0x71dbac: r0 = Null
    //     0x71dbac: mov             x0, NULL
    // 0x71dbb0: ret
    //     0x71dbb0: ret             
  }
  [closure] DropdownMenuItem<int> <anonymous closure>(dynamic, Map<String, dynamic>) {
    // ** addr: 0x71dbb4, size: 0xec
    // 0x71dbb4: EnterFrame
    //     0x71dbb4: stp             fp, lr, [SP, #-0x10]!
    //     0x71dbb8: mov             fp, SP
    // 0x71dbbc: AllocStack(0x20)
    //     0x71dbbc: sub             SP, SP, #0x20
    // 0x71dbc0: CheckStackOverflow
    //     0x71dbc0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71dbc4: cmp             SP, x16
    //     0x71dbc8: b.ls            #0x71dc98
    // 0x71dbcc: ldr             x3, [fp, #0x10]
    // 0x71dbd0: r0 = LoadClassIdInstr(r3)
    //     0x71dbd0: ldur            x0, [x3, #-1]
    //     0x71dbd4: ubfx            x0, x0, #0xc, #0x14
    // 0x71dbd8: mov             x1, x3
    // 0x71dbdc: r2 = "value"
    //     0x71dbdc: ldr             x2, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71dbe0: r0 = GDT[cid_x0 + 0x36e]()
    //     0x71dbe0: add             lr, x0, #0x36e
    //     0x71dbe4: ldr             lr, [x21, lr, lsl #3]
    //     0x71dbe8: blr             lr
    // 0x71dbec: mov             x3, x0
    // 0x71dbf0: r2 = Null
    //     0x71dbf0: mov             x2, NULL
    // 0x71dbf4: r1 = Null
    //     0x71dbf4: mov             x1, NULL
    // 0x71dbf8: stur            x3, [fp, #-8]
    // 0x71dbfc: branchIfSmi(r0, 0x71dc24)
    //     0x71dbfc: tbz             w0, #0, #0x71dc24
    // 0x71dc00: r4 = LoadClassIdInstr(r0)
    //     0x71dc00: ldur            x4, [x0, #-1]
    //     0x71dc04: ubfx            x4, x4, #0xc, #0x14
    // 0x71dc08: sub             x4, x4, #0x3c
    // 0x71dc0c: cmp             x4, #1
    // 0x71dc10: b.ls            #0x71dc24
    // 0x71dc14: r8 = int
    //     0x71dc14: ldr             x8, [PP, #0x478]  ; [pp+0x478] Type: int
    // 0x71dc18: r3 = Null
    //     0x71dc18: add             x3, PP, #0x17, lsl #12  ; [pp+0x17e40] Null
    //     0x71dc1c: ldr             x3, [x3, #0xe40]
    // 0x71dc20: r0 = int()
    //     0x71dc20: bl              #0x93a4a4  ; IsType_int_Stub
    // 0x71dc24: ldr             x1, [fp, #0x10]
    // 0x71dc28: r0 = LoadClassIdInstr(r1)
    //     0x71dc28: ldur            x0, [x1, #-1]
    //     0x71dc2c: ubfx            x0, x0, #0xc, #0x14
    // 0x71dc30: r2 = "name"
    //     0x71dc30: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71dc34: r0 = GDT[cid_x0 + 0x36e]()
    //     0x71dc34: add             lr, x0, #0x36e
    //     0x71dc38: ldr             lr, [x21, lr, lsl #3]
    //     0x71dc3c: blr             lr
    // 0x71dc40: str             x0, [SP]
    // 0x71dc44: r0 = _interpolateSingle()
    //     0x71dc44: bl              #0x3caa44  ; [dart:core] _StringBase::_interpolateSingle
    // 0x71dc48: stur            x0, [fp, #-0x10]
    // 0x71dc4c: r0 = Text()
    //     0x71dc4c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x71dc50: mov             x2, x0
    // 0x71dc54: ldur            x0, [fp, #-0x10]
    // 0x71dc58: stur            x2, [fp, #-0x18]
    // 0x71dc5c: StoreField: r2->field_b = r0
    //     0x71dc5c: stur            w0, [x2, #0xb]
    // 0x71dc60: r1 = <int>
    //     0x71dc60: ldr             x1, [PP, #0xc20]  ; [pp+0xc20] TypeArguments: <int>
    // 0x71dc64: r0 = DropdownMenuItem()
    //     0x71dc64: bl              #0x6de55c  ; AllocateDropdownMenuItemStub -> DropdownMenuItem<X0> (size=0x24)
    // 0x71dc68: ldur            x1, [fp, #-8]
    // 0x71dc6c: StoreField: r0->field_1b = r1
    //     0x71dc6c: stur            w1, [x0, #0x1b]
    // 0x71dc70: r1 = true
    //     0x71dc70: add             x1, NULL, #0x20  ; true
    // 0x71dc74: StoreField: r0->field_1f = r1
    //     0x71dc74: stur            w1, [x0, #0x1f]
    // 0x71dc78: r1 = Instance_AlignmentDirectional
    //     0x71dc78: add             x1, PP, #0x14, lsl #12  ; [pp+0x14330] Obj!AlignmentDirectional@a0ce11
    //     0x71dc7c: ldr             x1, [x1, #0x330]
    // 0x71dc80: StoreField: r0->field_f = r1
    //     0x71dc80: stur            w1, [x0, #0xf]
    // 0x71dc84: ldur            x1, [fp, #-0x18]
    // 0x71dc88: StoreField: r0->field_b = r1
    //     0x71dc88: stur            w1, [x0, #0xb]
    // 0x71dc8c: LeaveFrame
    //     0x71dc8c: mov             SP, fp
    //     0x71dc90: ldp             fp, lr, [SP], #0x10
    // 0x71dc94: ret
    //     0x71dc94: ret             
    // 0x71dc98: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71dc98: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71dc9c: b               #0x71dbcc
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x71f5f4, size: 0x114
    // 0x71f5f4: EnterFrame
    //     0x71f5f4: stp             fp, lr, [SP, #-0x10]!
    //     0x71f5f8: mov             fp, SP
    // 0x71f5fc: AllocStack(0x30)
    //     0x71f5fc: sub             SP, SP, #0x30
    // 0x71f600: SetupParameters([dynamic _ /* r0 */])
    //     0x71f600: ldr             x0, [fp, #0x10]
    //     0x71f604: ldur            w2, [x0, #0x17]
    //     0x71f608: add             x2, x2, HEAP, lsl #32
    //     0x71f60c: stur            x2, [fp, #-0x10]
    // 0x71f610: CheckStackOverflow
    //     0x71f610: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71f614: cmp             SP, x16
    //     0x71f618: b.ls            #0x71f6d4
    // 0x71f61c: LoadField: r0 = r2->field_f
    //     0x71f61c: ldur            w0, [x2, #0xf]
    // 0x71f620: DecompressPointer r0
    //     0x71f620: add             x0, x0, HEAP, lsl #32
    // 0x71f624: LoadField: r3 = r0->field_1f
    //     0x71f624: ldur            w3, [x0, #0x1f]
    // 0x71f628: DecompressPointer r3
    //     0x71f628: add             x3, x3, HEAP, lsl #32
    // 0x71f62c: r16 = Sentinel
    //     0x71f62c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x71f630: cmp             w3, w16
    // 0x71f634: b.eq            #0x71f6dc
    // 0x71f638: stur            x3, [fp, #-8]
    // 0x71f63c: LoadField: r1 = r0->field_1b
    //     0x71f63c: ldur            w1, [x0, #0x1b]
    // 0x71f640: DecompressPointer r1
    //     0x71f640: add             x1, x1, HEAP, lsl #32
    // 0x71f644: r0 = page()
    //     0x71f644: bl              #0x5e53f4  ; [package:flutter/src/widgets/page_view.dart] PageController::page
    // 0x71f648: cmp             w0, NULL
    // 0x71f64c: b.eq            #0x71f6e8
    // 0x71f650: LoadField: d0 = r0->field_7
    //     0x71f650: ldur            d0, [x0, #7]
    // 0x71f654: fcmp            d0, d0
    // 0x71f658: b.vs            #0x71f6ec
    // 0x71f65c: fcvtzs          x0, d0
    // 0x71f660: asr             x16, x0, #0x1e
    // 0x71f664: cmp             x16, x0, asr #63
    // 0x71f668: b.ne            #0x71f6ec
    // 0x71f66c: lsl             x0, x0, #1
    // 0x71f670: r1 = LoadInt32Instr(r0)
    //     0x71f670: sbfx            x1, x0, #1, #0x1f
    //     0x71f674: tbz             w0, #0, #0x71f67c
    //     0x71f678: ldur            x1, [x0, #7]
    // 0x71f67c: add             x2, x1, #1
    // 0x71f680: ldur            x1, [fp, #-8]
    // 0x71f684: r0 = getTranslations()
    //     0x71f684: bl              #0x71b444  ; [package:umrem_demo/features/dualar/providers/quran_provider.dart] QuranProvider::getTranslations
    // 0x71f688: ldur            x0, [fp, #-0x10]
    // 0x71f68c: LoadField: r3 = r0->field_13
    //     0x71f68c: ldur            w3, [x0, #0x13]
    // 0x71f690: DecompressPointer r3
    //     0x71f690: add             x3, x3, HEAP, lsl #32
    // 0x71f694: stur            x3, [fp, #-8]
    // 0x71f698: r1 = Function '<anonymous closure>':.
    //     0x71f698: add             x1, PP, #0x17, lsl #12  ; [pp+0x17e50] AnonymousClosure: (0x71f708), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x71f69c: ldr             x1, [x1, #0xe50]
    // 0x71f6a0: r2 = Null
    //     0x71f6a0: mov             x2, NULL
    // 0x71f6a4: r0 = AllocateClosure()
    //     0x71f6a4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x71f6a8: stp             x0, NULL, [SP, #0x10]
    // 0x71f6ac: ldur            x16, [fp, #-8]
    // 0x71f6b0: r30 = true
    //     0x71f6b0: add             lr, NULL, #0x20  ; true
    // 0x71f6b4: stp             lr, x16, [SP]
    // 0x71f6b8: r4 = const [0x1, 0x3, 0x3, 0x2, isScrollControlled, 0x2, null]
    //     0x71f6b8: add             x4, PP, #0x17, lsl #12  ; [pp+0x17e58] List(7) [0x1, 0x3, 0x3, 0x2, "isScrollControlled", 0x2, Null]
    //     0x71f6bc: ldr             x4, [x4, #0xe58]
    // 0x71f6c0: r0 = showModalBottomSheet()
    //     0x71f6c0: bl              #0x6e0074  ; [package:flutter/src/material/bottom_sheet.dart] ::showModalBottomSheet
    // 0x71f6c4: r0 = Null
    //     0x71f6c4: mov             x0, NULL
    // 0x71f6c8: LeaveFrame
    //     0x71f6c8: mov             SP, fp
    //     0x71f6cc: ldp             fp, lr, [SP], #0x10
    // 0x71f6d0: ret
    //     0x71f6d0: ret             
    // 0x71f6d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71f6d4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71f6d8: b               #0x71f61c
    // 0x71f6dc: r9 = controller
    //     0x71f6dc: add             x9, PP, #0x17, lsl #12  ; [pp+0x17a50] Field <_QuranPageState@932390076.controller>: late final (offset: 0x20)
    //     0x71f6e0: ldr             x9, [x9, #0xa50]
    // 0x71f6e4: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x71f6e4: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x71f6e8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x71f6e8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x71f6ec: SaveReg d0
    //     0x71f6ec: str             q0, [SP, #-0x10]!
    // 0x71f6f0: r0 = 76
    //     0x71f6f0: mov             x0, #0x4c
    // 0x71f6f4: r30 = DoubleToIntegerStub
    //     0x71f6f4: ldr             lr, [PP, #0x1f38]  ; [pp+0x1f38] Stub: DoubleToInteger (0x3c184c)
    // 0x71f6f8: LoadField: r30 = r30->field_7
    //     0x71f6f8: ldur            lr, [lr, #7]
    // 0x71f6fc: blr             lr
    // 0x71f700: RestoreReg d0
    //     0x71f700: ldr             q0, [SP], #0x10
    // 0x71f704: b               #0x71f670
  }
  [closure] DraggableScrollableSheet <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x71f708, size: 0x70
    // 0x71f708: EnterFrame
    //     0x71f708: stp             fp, lr, [SP, #-0x10]!
    //     0x71f70c: mov             fp, SP
    // 0x71f710: AllocStack(0x8)
    //     0x71f710: sub             SP, SP, #8
    // 0x71f714: r0 = DraggableScrollableSheet()
    //     0x71f714: bl              #0x71f778  ; AllocateDraggableScrollableSheetStub -> DraggableScrollableSheet (size=0x40)
    // 0x71f718: d0 = 0.550000
    //     0x71f718: add             x17, PP, #0x17, lsl #12  ; [pp+0x17e60] IMM: double(0.55) from 0x3fe199999999999a
    //     0x71f71c: ldr             d0, [x17, #0xe60]
    // 0x71f720: stur            x0, [fp, #-8]
    // 0x71f724: StoreField: r0->field_b = d0
    //     0x71f724: stur            d0, [x0, #0xb]
    // 0x71f728: d0 = 0.330000
    //     0x71f728: add             x17, PP, #0x17, lsl #12  ; [pp+0x17e68] IMM: double(0.33) from 0x3fd51eb851eb851f
    //     0x71f72c: ldr             d0, [x17, #0xe68]
    // 0x71f730: StoreField: r0->field_13 = d0
    //     0x71f730: stur            d0, [x0, #0x13]
    // 0x71f734: d0 = 0.900000
    //     0x71f734: ldr             d0, [PP, #0x5d60]  ; [pp+0x5d60] IMM: double(0.9) from 0x3feccccccccccccd
    // 0x71f738: StoreField: r0->field_1b = d0
    //     0x71f738: stur            d0, [x0, #0x1b]
    // 0x71f73c: r1 = false
    //     0x71f73c: add             x1, NULL, #0x30  ; false
    // 0x71f740: StoreField: r0->field_23 = r1
    //     0x71f740: stur            w1, [x0, #0x23]
    // 0x71f744: StoreField: r0->field_27 = r1
    //     0x71f744: stur            w1, [x0, #0x27]
    // 0x71f748: r1 = true
    //     0x71f748: add             x1, NULL, #0x20  ; true
    // 0x71f74c: StoreField: r0->field_37 = r1
    //     0x71f74c: stur            w1, [x0, #0x37]
    // 0x71f750: r1 = Function '<anonymous closure>':.
    //     0x71f750: add             x1, PP, #0x17, lsl #12  ; [pp+0x17e70] AnonymousClosure: (0x71f784), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x71f754: ldr             x1, [x1, #0xe70]
    // 0x71f758: r2 = Null
    //     0x71f758: mov             x2, NULL
    // 0x71f75c: r0 = AllocateClosure()
    //     0x71f75c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x71f760: mov             x1, x0
    // 0x71f764: ldur            x0, [fp, #-8]
    // 0x71f768: StoreField: r0->field_3b = r1
    //     0x71f768: stur            w1, [x0, #0x3b]
    // 0x71f76c: LeaveFrame
    //     0x71f76c: mov             SP, fp
    //     0x71f770: ldp             fp, lr, [SP], #0x10
    // 0x71f774: ret
    //     0x71f774: ret             
  }
  [closure] Padding <anonymous closure>(dynamic, BuildContext, ScrollController) {
    // ** addr: 0x71f784, size: 0x18c
    // 0x71f784: EnterFrame
    //     0x71f784: stp             fp, lr, [SP, #-0x10]!
    //     0x71f788: mov             fp, SP
    // 0x71f78c: AllocStack(0x28)
    //     0x71f78c: sub             SP, SP, #0x28
    // 0x71f790: CheckStackOverflow
    //     0x71f790: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71f794: cmp             SP, x16
    //     0x71f798: b.ls            #0x71f908
    // 0x71f79c: r1 = Function '<anonymous closure>':.
    //     0x71f79c: add             x1, PP, #0x17, lsl #12  ; [pp+0x17e78] AnonymousClosure: (0x7204c0), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x71f7a0: ldr             x1, [x1, #0xe78]
    // 0x71f7a4: r2 = Null
    //     0x71f7a4: mov             x2, NULL
    // 0x71f7a8: r0 = AllocateClosure()
    //     0x71f7a8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x71f7ac: r1 = Function '<anonymous closure>':.
    //     0x71f7ac: add             x1, PP, #0x17, lsl #12  ; [pp+0x17e80] AnonymousClosure: (0x7203c0), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x71f7b0: ldr             x1, [x1, #0xe80]
    // 0x71f7b4: r2 = Null
    //     0x71f7b4: mov             x2, NULL
    // 0x71f7b8: stur            x0, [fp, #-8]
    // 0x71f7bc: r0 = AllocateClosure()
    //     0x71f7bc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x71f7c0: stur            x0, [fp, #-0x10]
    // 0x71f7c4: r0 = ListView()
    //     0x71f7c4: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x71f7c8: stur            x0, [fp, #-0x18]
    // 0x71f7cc: r16 = true
    //     0x71f7cc: add             x16, NULL, #0x20  ; true
    // 0x71f7d0: ldr             lr, [fp, #0x10]
    // 0x71f7d4: stp             lr, x16, [SP]
    // 0x71f7d8: mov             x1, x0
    // 0x71f7dc: ldur            x2, [fp, #-0x10]
    // 0x71f7e0: ldur            x5, [fp, #-8]
    // 0x71f7e4: r3 = 1
    //     0x71f7e4: mov             x3, #1
    // 0x71f7e8: r4 = const [0, 0x6, 0x2, 0x4, controller, 0x5, shrinkWrap, 0x4, null]
    //     0x71f7e8: add             x4, PP, #0x17, lsl #12  ; [pp+0x17e88] List(9) [0, 0x6, 0x2, 0x4, "controller", 0x5, "shrinkWrap", 0x4, Null]
    //     0x71f7ec: ldr             x4, [x4, #0xe88]
    // 0x71f7f0: r0 = ListView.separated()
    //     0x71f7f0: bl              #0x71f910  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.separated
    // 0x71f7f4: r0 = SizedBox()
    //     0x71f7f4: bl              #0x654794  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x71f7f8: mov             x3, x0
    // 0x71f7fc: r0 = 32.000000
    //     0x71f7fc: add             x0, PP, #0x15, lsl #12  ; [pp+0x15fe0] 32
    //     0x71f800: ldr             x0, [x0, #0xfe0]
    // 0x71f804: stur            x3, [fp, #-8]
    // 0x71f808: StoreField: r3->field_13 = r0
    //     0x71f808: stur            w0, [x3, #0x13]
    // 0x71f80c: ldur            x0, [fp, #-0x18]
    // 0x71f810: StoreField: r3->field_b = r0
    //     0x71f810: stur            w0, [x3, #0xb]
    // 0x71f814: r1 = Function '<anonymous closure>':.
    //     0x71f814: add             x1, PP, #0x17, lsl #12  ; [pp+0x17e90] AnonymousClosure: (0x71fc50), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x71f818: ldr             x1, [x1, #0xe90]
    // 0x71f81c: r2 = Null
    //     0x71f81c: mov             x2, NULL
    // 0x71f820: r0 = AllocateClosure()
    //     0x71f820: bl              #0x9273d4  ; AllocateClosureStub
    // 0x71f824: r1 = <QuranProvider>
    //     0x71f824: add             x1, PP, #0x10, lsl #12  ; [pp+0x10bb0] TypeArguments: <QuranProvider>
    //     0x71f828: ldr             x1, [x1, #0xbb0]
    // 0x71f82c: stur            x0, [fp, #-0x10]
    // 0x71f830: r0 = Consumer()
    //     0x71f830: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x71f834: mov             x3, x0
    // 0x71f838: ldur            x0, [fp, #-0x10]
    // 0x71f83c: stur            x3, [fp, #-0x18]
    // 0x71f840: StoreField: r3->field_13 = r0
    //     0x71f840: stur            w0, [x3, #0x13]
    // 0x71f844: r1 = Null
    //     0x71f844: mov             x1, NULL
    // 0x71f848: r2 = 4
    //     0x71f848: mov             x2, #4
    // 0x71f84c: r0 = AllocateArray()
    //     0x71f84c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71f850: mov             x2, x0
    // 0x71f854: ldur            x0, [fp, #-8]
    // 0x71f858: stur            x2, [fp, #-0x10]
    // 0x71f85c: StoreField: r2->field_f = r0
    //     0x71f85c: stur            w0, [x2, #0xf]
    // 0x71f860: ldur            x0, [fp, #-0x18]
    // 0x71f864: StoreField: r2->field_13 = r0
    //     0x71f864: stur            w0, [x2, #0x13]
    // 0x71f868: r1 = <Widget>
    //     0x71f868: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x71f86c: r0 = AllocateGrowableArray()
    //     0x71f86c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x71f870: mov             x1, x0
    // 0x71f874: ldur            x0, [fp, #-0x10]
    // 0x71f878: stur            x1, [fp, #-8]
    // 0x71f87c: StoreField: r1->field_f = r0
    //     0x71f87c: stur            w0, [x1, #0xf]
    // 0x71f880: r0 = 4
    //     0x71f880: mov             x0, #4
    // 0x71f884: StoreField: r1->field_b = r0
    //     0x71f884: stur            w0, [x1, #0xb]
    // 0x71f888: r0 = Column()
    //     0x71f888: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x71f88c: mov             x1, x0
    // 0x71f890: r0 = Instance_Axis
    //     0x71f890: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x71f894: stur            x1, [fp, #-0x10]
    // 0x71f898: StoreField: r1->field_f = r0
    //     0x71f898: stur            w0, [x1, #0xf]
    // 0x71f89c: r0 = Instance_MainAxisAlignment
    //     0x71f89c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x71f8a0: ldr             x0, [x0, #0x230]
    // 0x71f8a4: StoreField: r1->field_13 = r0
    //     0x71f8a4: stur            w0, [x1, #0x13]
    // 0x71f8a8: r0 = Instance_MainAxisSize
    //     0x71f8a8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x71f8ac: ldr             x0, [x0, #0x330]
    // 0x71f8b0: ArrayStore: r1[0] = r0  ; List_4
    //     0x71f8b0: stur            w0, [x1, #0x17]
    // 0x71f8b4: r0 = Instance_CrossAxisAlignment
    //     0x71f8b4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x71f8b8: ldr             x0, [x0, #0x238]
    // 0x71f8bc: StoreField: r1->field_1b = r0
    //     0x71f8bc: stur            w0, [x1, #0x1b]
    // 0x71f8c0: r0 = Instance_VerticalDirection
    //     0x71f8c0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x71f8c4: ldr             x0, [x0, #0x340]
    // 0x71f8c8: StoreField: r1->field_23 = r0
    //     0x71f8c8: stur            w0, [x1, #0x23]
    // 0x71f8cc: r0 = Instance_Clip
    //     0x71f8cc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x71f8d0: ldr             x0, [x0, #0x348]
    // 0x71f8d4: StoreField: r1->field_2b = r0
    //     0x71f8d4: stur            w0, [x1, #0x2b]
    // 0x71f8d8: StoreField: r1->field_2f = rZR
    //     0x71f8d8: stur            xzr, [x1, #0x2f]
    // 0x71f8dc: ldur            x0, [fp, #-8]
    // 0x71f8e0: StoreField: r1->field_b = r0
    //     0x71f8e0: stur            w0, [x1, #0xb]
    // 0x71f8e4: r0 = Padding()
    //     0x71f8e4: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x71f8e8: r1 = Instance_EdgeInsets
    //     0x71f8e8: add             x1, PP, #0x17, lsl #12  ; [pp+0x17e98] Obj!EdgeInsets@a0c531
    //     0x71f8ec: ldr             x1, [x1, #0xe98]
    // 0x71f8f0: StoreField: r0->field_f = r1
    //     0x71f8f0: stur            w1, [x0, #0xf]
    // 0x71f8f4: ldur            x1, [fp, #-0x10]
    // 0x71f8f8: StoreField: r0->field_b = r1
    //     0x71f8f8: stur            w1, [x0, #0xb]
    // 0x71f8fc: LeaveFrame
    //     0x71f8fc: mov             SP, fp
    //     0x71f900: ldp             fp, lr, [SP], #0x10
    // 0x71f904: ret
    //     0x71f904: ret             
    // 0x71f908: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71f908: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71f90c: b               #0x71f79c
  }
  [closure] Expanded <anonymous closure>(dynamic, BuildContext, QuranProvider, Widget?) {
    // ** addr: 0x71fc50, size: 0xf8
    // 0x71fc50: EnterFrame
    //     0x71fc50: stp             fp, lr, [SP, #-0x10]!
    //     0x71fc54: mov             fp, SP
    // 0x71fc58: AllocStack(0x20)
    //     0x71fc58: sub             SP, SP, #0x20
    // 0x71fc5c: SetupParameters([dynamic _ /* r0 */])
    //     0x71fc5c: ldr             x0, [fp, #0x28]
    //     0x71fc60: ldur            w1, [x0, #0x17]
    //     0x71fc64: add             x1, x1, HEAP, lsl #32
    //     0x71fc68: stur            x1, [fp, #-8]
    // 0x71fc6c: CheckStackOverflow
    //     0x71fc6c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71fc70: cmp             SP, x16
    //     0x71fc74: b.ls            #0x71fd40
    // 0x71fc78: r1 = 1
    //     0x71fc78: mov             x1, #1
    // 0x71fc7c: r0 = AllocateContext()
    //     0x71fc7c: bl              #0x927010  ; AllocateContextStub
    // 0x71fc80: mov             x1, x0
    // 0x71fc84: ldur            x0, [fp, #-8]
    // 0x71fc88: stur            x1, [fp, #-0x10]
    // 0x71fc8c: StoreField: r1->field_b = r0
    //     0x71fc8c: stur            w0, [x1, #0xb]
    // 0x71fc90: ldr             x0, [fp, #0x18]
    // 0x71fc94: StoreField: r1->field_f = r0
    //     0x71fc94: stur            w0, [x1, #0xf]
    // 0x71fc98: LoadField: r2 = r0->field_37
    //     0x71fc98: ldur            w2, [x0, #0x37]
    // 0x71fc9c: DecompressPointer r2
    //     0x71fc9c: add             x2, x2, HEAP, lsl #32
    // 0x71fca0: r0 = LoadClassIdInstr(r2)
    //     0x71fca0: ldur            x0, [x2, #-1]
    //     0x71fca4: ubfx            x0, x0, #0xc, #0x14
    // 0x71fca8: str             x2, [SP]
    // 0x71fcac: r0 = GDT[cid_x0 + 0x879f]()
    //     0x71fcac: mov             x17, #0x879f
    //     0x71fcb0: add             lr, x0, x17
    //     0x71fcb4: ldr             lr, [x21, lr, lsl #3]
    //     0x71fcb8: blr             lr
    // 0x71fcbc: r3 = LoadInt32Instr(r0)
    //     0x71fcbc: sbfx            x3, x0, #1, #0x1f
    // 0x71fcc0: stur            x3, [fp, #-0x18]
    // 0x71fcc4: r1 = Function '<anonymous closure>':.
    //     0x71fcc4: add             x1, PP, #0x17, lsl #12  ; [pp+0x17ea0] AnonymousClosure: (0x7203b4), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x71fcc8: ldr             x1, [x1, #0xea0]
    // 0x71fccc: r2 = Null
    //     0x71fccc: mov             x2, NULL
    // 0x71fcd0: r0 = AllocateClosure()
    //     0x71fcd0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x71fcd4: ldur            x2, [fp, #-0x10]
    // 0x71fcd8: r1 = Function '<anonymous closure>':.
    //     0x71fcd8: add             x1, PP, #0x17, lsl #12  ; [pp+0x17ea8] AnonymousClosure: (0x71fd48), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::build (0x6fc4a4)
    //     0x71fcdc: ldr             x1, [x1, #0xea8]
    // 0x71fce0: stur            x0, [fp, #-8]
    // 0x71fce4: r0 = AllocateClosure()
    //     0x71fce4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x71fce8: stur            x0, [fp, #-0x10]
    // 0x71fcec: r0 = ListView()
    //     0x71fcec: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x71fcf0: mov             x1, x0
    // 0x71fcf4: ldur            x2, [fp, #-0x10]
    // 0x71fcf8: ldur            x3, [fp, #-0x18]
    // 0x71fcfc: ldur            x5, [fp, #-8]
    // 0x71fd00: stur            x0, [fp, #-8]
    // 0x71fd04: r4 = const [0, 0x4, 0, 0x4, null]
    //     0x71fd04: ldr             x4, [PP, #0x6e0]  ; [pp+0x6e0] List(5) [0, 0x4, 0, 0x4, Null]
    // 0x71fd08: r0 = ListView.separated()
    //     0x71fd08: bl              #0x71f910  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.separated
    // 0x71fd0c: r1 = <FlexParentData>
    //     0x71fd0c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x71fd10: ldr             x1, [x1, #0x340]
    // 0x71fd14: r0 = Expanded()
    //     0x71fd14: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x71fd18: r1 = 1
    //     0x71fd18: mov             x1, #1
    // 0x71fd1c: StoreField: r0->field_13 = r1
    //     0x71fd1c: stur            x1, [x0, #0x13]
    // 0x71fd20: r1 = Instance_FlexFit
    //     0x71fd20: add             x1, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x71fd24: ldr             x1, [x1, #0x348]
    // 0x71fd28: StoreField: r0->field_1b = r1
    //     0x71fd28: stur            w1, [x0, #0x1b]
    // 0x71fd2c: ldur            x1, [fp, #-8]
    // 0x71fd30: StoreField: r0->field_b = r1
    //     0x71fd30: stur            w1, [x0, #0xb]
    // 0x71fd34: LeaveFrame
    //     0x71fd34: mov             SP, fp
    //     0x71fd38: ldp             fp, lr, [SP], #0x10
    // 0x71fd3c: ret
    //     0x71fd3c: ret             
    // 0x71fd40: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71fd40: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71fd44: b               #0x71fc78
  }
  [closure] Padding <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x71fd48, size: 0x500
    // 0x71fd48: EnterFrame
    //     0x71fd48: stp             fp, lr, [SP, #-0x10]!
    //     0x71fd4c: mov             fp, SP
    // 0x71fd50: AllocStack(0x58)
    //     0x71fd50: sub             SP, SP, #0x58
    // 0x71fd54: SetupParameters([dynamic _ /* r0 */])
    //     0x71fd54: ldr             x0, [fp, #0x20]
    //     0x71fd58: ldur            w2, [x0, #0x17]
    //     0x71fd5c: add             x2, x2, HEAP, lsl #32
    //     0x71fd60: stur            x2, [fp, #-8]
    // 0x71fd64: CheckStackOverflow
    //     0x71fd64: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71fd68: cmp             SP, x16
    //     0x71fd6c: b.ls            #0x720240
    // 0x71fd70: ldr             x1, [fp, #0x18]
    // 0x71fd74: r0 = of()
    //     0x71fd74: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x71fd78: LoadField: r1 = r0->field_5b
    //     0x71fd78: ldur            w1, [x0, #0x5b]
    // 0x71fd7c: DecompressPointer r1
    //     0x71fd7c: add             x1, x1, HEAP, lsl #32
    // 0x71fd80: r0 = LoadClassIdInstr(r1)
    //     0x71fd80: ldur            x0, [x1, #-1]
    //     0x71fd84: ubfx            x0, x0, #0xc, #0x14
    // 0x71fd88: r16 = 0.100000
    //     0x71fd88: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x71fd8c: ldr             x16, [x16, #0x1f8]
    // 0x71fd90: str             x16, [SP]
    // 0x71fd94: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x71fd94: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x71fd98: ldr             x4, [x4, #0x198]
    // 0x71fd9c: r0 = GDT[cid_x0 + -0xfe8]()
    //     0x71fd9c: sub             lr, x0, #0xfe8
    //     0x71fda0: ldr             lr, [x21, lr, lsl #3]
    //     0x71fda4: blr             lr
    // 0x71fda8: stur            x0, [fp, #-0x10]
    // 0x71fdac: r0 = Radius()
    //     0x71fdac: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x71fdb0: d0 = 6.000000
    //     0x71fdb0: fmov            d0, #6.00000000
    // 0x71fdb4: stur            x0, [fp, #-0x18]
    // 0x71fdb8: StoreField: r0->field_7 = d0
    //     0x71fdb8: stur            d0, [x0, #7]
    // 0x71fdbc: StoreField: r0->field_f = d0
    //     0x71fdbc: stur            d0, [x0, #0xf]
    // 0x71fdc0: r0 = BorderRadius()
    //     0x71fdc0: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x71fdc4: mov             x1, x0
    // 0x71fdc8: ldur            x0, [fp, #-0x18]
    // 0x71fdcc: stur            x1, [fp, #-0x20]
    // 0x71fdd0: StoreField: r1->field_7 = r0
    //     0x71fdd0: stur            w0, [x1, #7]
    // 0x71fdd4: StoreField: r1->field_b = r0
    //     0x71fdd4: stur            w0, [x1, #0xb]
    // 0x71fdd8: StoreField: r1->field_f = r0
    //     0x71fdd8: stur            w0, [x1, #0xf]
    // 0x71fddc: StoreField: r1->field_13 = r0
    //     0x71fddc: stur            w0, [x1, #0x13]
    // 0x71fde0: r0 = BoxDecoration()
    //     0x71fde0: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x71fde4: mov             x1, x0
    // 0x71fde8: ldur            x0, [fp, #-0x10]
    // 0x71fdec: stur            x1, [fp, #-0x18]
    // 0x71fdf0: StoreField: r1->field_7 = r0
    //     0x71fdf0: stur            w0, [x1, #7]
    // 0x71fdf4: ldur            x0, [fp, #-0x20]
    // 0x71fdf8: StoreField: r1->field_13 = r0
    //     0x71fdf8: stur            w0, [x1, #0x13]
    // 0x71fdfc: r0 = Instance_BoxShape
    //     0x71fdfc: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x71fe00: ldr             x0, [x0, #0x1c8]
    // 0x71fe04: StoreField: r1->field_23 = r0
    //     0x71fe04: stur            w0, [x1, #0x23]
    // 0x71fe08: ldur            x2, [fp, #-8]
    // 0x71fe0c: LoadField: r0 = r2->field_f
    //     0x71fe0c: ldur            w0, [x2, #0xf]
    // 0x71fe10: DecompressPointer r0
    //     0x71fe10: add             x0, x0, HEAP, lsl #32
    // 0x71fe14: LoadField: r3 = r0->field_37
    //     0x71fe14: ldur            w3, [x0, #0x37]
    // 0x71fe18: DecompressPointer r3
    //     0x71fe18: add             x3, x3, HEAP, lsl #32
    // 0x71fe1c: r0 = LoadClassIdInstr(r3)
    //     0x71fe1c: ldur            x0, [x3, #-1]
    //     0x71fe20: ubfx            x0, x0, #0xc, #0x14
    // 0x71fe24: ldr             x16, [fp, #0x10]
    // 0x71fe28: stp             x16, x3, [SP]
    // 0x71fe2c: r0 = GDT[cid_x0 + -0xdfc]()
    //     0x71fe2c: sub             lr, x0, #0xdfc
    //     0x71fe30: ldr             lr, [x21, lr, lsl #3]
    //     0x71fe34: blr             lr
    // 0x71fe38: r1 = LoadClassIdInstr(r0)
    //     0x71fe38: ldur            x1, [x0, #-1]
    //     0x71fe3c: ubfx            x1, x1, #0xc, #0x14
    // 0x71fe40: mov             x16, x0
    // 0x71fe44: mov             x0, x1
    // 0x71fe48: mov             x1, x16
    // 0x71fe4c: r2 = "no"
    //     0x71fe4c: add             x2, PP, #9, lsl #12  ; [pp+0x9c88] "no"
    //     0x71fe50: ldr             x2, [x2, #0xc88]
    // 0x71fe54: r0 = GDT[cid_x0 + 0x36e]()
    //     0x71fe54: add             lr, x0, #0x36e
    //     0x71fe58: ldr             lr, [x21, lr, lsl #3]
    //     0x71fe5c: blr             lr
    // 0x71fe60: r1 = 60
    //     0x71fe60: mov             x1, #0x3c
    // 0x71fe64: branchIfSmi(r0, 0x71fe70)
    //     0x71fe64: tbz             w0, #0, #0x71fe70
    // 0x71fe68: r1 = LoadClassIdInstr(r0)
    //     0x71fe68: ldur            x1, [x0, #-1]
    //     0x71fe6c: ubfx            x1, x1, #0xc, #0x14
    // 0x71fe70: str             x0, [SP]
    // 0x71fe74: mov             x0, x1
    // 0x71fe78: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x71fe78: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x71fe7c: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x71fe7c: mov             x17, #0x21f6
    //     0x71fe80: add             lr, x0, x17
    //     0x71fe84: ldr             lr, [x21, lr, lsl #3]
    //     0x71fe88: blr             lr
    // 0x71fe8c: ldr             x1, [fp, #0x18]
    // 0x71fe90: stur            x0, [fp, #-0x10]
    // 0x71fe94: r0 = of()
    //     0x71fe94: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x71fe98: LoadField: r1 = r0->field_5b
    //     0x71fe98: ldur            w1, [x0, #0x5b]
    // 0x71fe9c: DecompressPointer r1
    //     0x71fe9c: add             x1, x1, HEAP, lsl #32
    // 0x71fea0: stur            x1, [fp, #-0x20]
    // 0x71fea4: r0 = TextStyle()
    //     0x71fea4: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x71fea8: mov             x1, x0
    // 0x71feac: r0 = true
    //     0x71feac: add             x0, NULL, #0x20  ; true
    // 0x71feb0: stur            x1, [fp, #-0x28]
    // 0x71feb4: StoreField: r1->field_7 = r0
    //     0x71feb4: stur            w0, [x1, #7]
    // 0x71feb8: ldur            x0, [fp, #-0x20]
    // 0x71febc: StoreField: r1->field_b = r0
    //     0x71febc: stur            w0, [x1, #0xb]
    // 0x71fec0: r0 = Text()
    //     0x71fec0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x71fec4: mov             x1, x0
    // 0x71fec8: ldur            x0, [fp, #-0x10]
    // 0x71fecc: stur            x1, [fp, #-0x20]
    // 0x71fed0: StoreField: r1->field_b = r0
    //     0x71fed0: stur            w0, [x1, #0xb]
    // 0x71fed4: ldur            x0, [fp, #-0x28]
    // 0x71fed8: StoreField: r1->field_13 = r0
    //     0x71fed8: stur            w0, [x1, #0x13]
    // 0x71fedc: r0 = Center()
    //     0x71fedc: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x71fee0: mov             x1, x0
    // 0x71fee4: r0 = Instance_Alignment
    //     0x71fee4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x71fee8: ldr             x0, [x0, #0x60]
    // 0x71feec: stur            x1, [fp, #-0x10]
    // 0x71fef0: StoreField: r1->field_f = r0
    //     0x71fef0: stur            w0, [x1, #0xf]
    // 0x71fef4: ldur            x0, [fp, #-0x20]
    // 0x71fef8: StoreField: r1->field_b = r0
    //     0x71fef8: stur            w0, [x1, #0xb]
    // 0x71fefc: r0 = Container()
    //     0x71fefc: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x71ff00: stur            x0, [fp, #-0x20]
    // 0x71ff04: r16 = 25.000000
    //     0x71ff04: add             x16, PP, #0x17, lsl #12  ; [pp+0x17eb0] 25
    //     0x71ff08: ldr             x16, [x16, #0xeb0]
    // 0x71ff0c: r30 = 25.000000
    //     0x71ff0c: add             lr, PP, #0x17, lsl #12  ; [pp+0x17eb0] 25
    //     0x71ff10: ldr             lr, [lr, #0xeb0]
    // 0x71ff14: stp             lr, x16, [SP, #0x10]
    // 0x71ff18: ldur            x16, [fp, #-0x18]
    // 0x71ff1c: ldur            lr, [fp, #-0x10]
    // 0x71ff20: stp             lr, x16, [SP]
    // 0x71ff24: mov             x1, x0
    // 0x71ff28: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x71ff28: add             x4, PP, #0x15, lsl #12  ; [pp+0x15990] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x71ff2c: ldr             x4, [x4, #0x990]
    // 0x71ff30: r0 = Container()
    //     0x71ff30: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x71ff34: ldur            x0, [fp, #-8]
    // 0x71ff38: LoadField: r1 = r0->field_f
    //     0x71ff38: ldur            w1, [x0, #0xf]
    // 0x71ff3c: DecompressPointer r1
    //     0x71ff3c: add             x1, x1, HEAP, lsl #32
    // 0x71ff40: LoadField: r0 = r1->field_37
    //     0x71ff40: ldur            w0, [x1, #0x37]
    // 0x71ff44: DecompressPointer r0
    //     0x71ff44: add             x0, x0, HEAP, lsl #32
    // 0x71ff48: r1 = LoadClassIdInstr(r0)
    //     0x71ff48: ldur            x1, [x0, #-1]
    //     0x71ff4c: ubfx            x1, x1, #0xc, #0x14
    // 0x71ff50: ldr             x16, [fp, #0x10]
    // 0x71ff54: stp             x16, x0, [SP]
    // 0x71ff58: mov             x0, x1
    // 0x71ff5c: r0 = GDT[cid_x0 + -0xdfc]()
    //     0x71ff5c: sub             lr, x0, #0xdfc
    //     0x71ff60: ldr             lr, [x21, lr, lsl #3]
    //     0x71ff64: blr             lr
    // 0x71ff68: r1 = LoadClassIdInstr(r0)
    //     0x71ff68: ldur            x1, [x0, #-1]
    //     0x71ff6c: ubfx            x1, x1, #0xc, #0x14
    // 0x71ff70: mov             x16, x0
    // 0x71ff74: mov             x0, x1
    // 0x71ff78: mov             x1, x16
    // 0x71ff7c: r2 = "text"
    //     0x71ff7c: ldr             x2, [PP, #0x7178]  ; [pp+0x7178] "text"
    // 0x71ff80: r0 = GDT[cid_x0 + 0x36e]()
    //     0x71ff80: add             lr, x0, #0x36e
    //     0x71ff84: ldr             lr, [x21, lr, lsl #3]
    //     0x71ff88: blr             lr
    // 0x71ff8c: mov             x3, x0
    // 0x71ff90: r2 = Null
    //     0x71ff90: mov             x2, NULL
    // 0x71ff94: r1 = Null
    //     0x71ff94: mov             x1, NULL
    // 0x71ff98: stur            x3, [fp, #-8]
    // 0x71ff9c: r4 = 60
    //     0x71ff9c: mov             x4, #0x3c
    // 0x71ffa0: branchIfSmi(r0, 0x71ffac)
    //     0x71ffa0: tbz             w0, #0, #0x71ffac
    // 0x71ffa4: r4 = LoadClassIdInstr(r0)
    //     0x71ffa4: ldur            x4, [x0, #-1]
    //     0x71ffa8: ubfx            x4, x4, #0xc, #0x14
    // 0x71ffac: sub             x4, x4, #0x5e
    // 0x71ffb0: cmp             x4, #1
    // 0x71ffb4: b.ls            #0x71ffc8
    // 0x71ffb8: r8 = String?
    //     0x71ffb8: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x71ffbc: r3 = Null
    //     0x71ffbc: add             x3, PP, #0x17, lsl #12  ; [pp+0x17eb8] Null
    //     0x71ffc0: ldr             x3, [x3, #0xeb8]
    // 0x71ffc4: r0 = String?()
    //     0x71ffc4: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x71ffc8: r1 = Null
    //     0x71ffc8: mov             x1, NULL
    // 0x71ffcc: r2 = 8
    //     0x71ffcc: mov             x2, #8
    // 0x71ffd0: r0 = AllocateArray()
    //     0x71ffd0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71ffd4: stur            x0, [fp, #-0x10]
    // 0x71ffd8: r16 = "body"
    //     0x71ffd8: ldr             x16, [PP, #0x7de0]  ; [pp+0x7de0] "body"
    // 0x71ffdc: StoreField: r0->field_f = r16
    //     0x71ffdc: stur            w16, [x0, #0xf]
    // 0x71ffe0: r0 = FontSize()
    //     0x71ffe0: bl              #0x6187b8  ; AllocateFontSizeStub -> FontSize (size=0x14)
    // 0x71ffe4: d0 = 20.000000
    //     0x71ffe4: fmov            d0, #20.00000000
    // 0x71ffe8: stur            x0, [fp, #-0x18]
    // 0x71ffec: StoreField: r0->field_7 = d0
    //     0x71ffec: stur            d0, [x0, #7]
    // 0x71fff0: r1 = Instance_Unit
    //     0x71fff0: add             x1, PP, #0x17, lsl #12  ; [pp+0x17ec8] Obj!Unit@a27c81
    //     0x71fff4: ldr             x1, [x1, #0xec8]
    // 0x71fff8: StoreField: r0->field_f = r1
    //     0x71fff8: stur            w1, [x0, #0xf]
    // 0x71fffc: r0 = zero()
    //     0x71fffc: bl              #0x60af14  ; [package:flutter_html/src/style/margin.dart] Margins::zero
    // 0x720000: stur            x0, [fp, #-0x28]
    // 0x720004: r0 = zero()
    //     0x720004: bl              #0x720254  ; [package:flutter_html/src/style/padding.dart] HtmlPaddings::zero
    // 0x720008: stur            x0, [fp, #-0x30]
    // 0x72000c: r0 = Style()
    //     0x72000c: bl              #0x60e628  ; AllocateStyleStub -> Style (size=0xa0)
    // 0x720010: stur            x0, [fp, #-0x38]
    // 0x720014: ldur            x16, [fp, #-0x18]
    // 0x720018: ldur            lr, [fp, #-0x28]
    // 0x72001c: stp             lr, x16, [SP, #8]
    // 0x720020: ldur            x16, [fp, #-0x30]
    // 0x720024: str             x16, [SP]
    // 0x720028: mov             x1, x0
    // 0x72002c: r4 = const [0, 0x4, 0x3, 0x1, fontSize, 0x1, margin, 0x2, padding, 0x3, null]
    //     0x72002c: add             x4, PP, #0x17, lsl #12  ; [pp+0x17ed0] List(11) [0, 0x4, 0x3, 0x1, "fontSize", 0x1, "margin", 0x2, "padding", 0x3, Null]
    //     0x720030: ldr             x4, [x4, #0xed0]
    // 0x720034: r0 = Style()
    //     0x720034: bl              #0x60d43c  ; [package:flutter_html/src/style.dart] Style::Style
    // 0x720038: ldur            x1, [fp, #-0x10]
    // 0x72003c: ldur            x0, [fp, #-0x38]
    // 0x720040: ArrayStore: r1[1] = r0  ; List_4
    //     0x720040: add             x25, x1, #0x13
    //     0x720044: str             w0, [x25]
    //     0x720048: tbz             w0, #0, #0x720064
    //     0x72004c: ldurb           w16, [x1, #-1]
    //     0x720050: ldurb           w17, [x0, #-1]
    //     0x720054: and             x16, x17, x16, lsr #2
    //     0x720058: tst             x16, HEAP, lsr #32
    //     0x72005c: b.eq            #0x720064
    //     0x720060: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x720064: ldur            x1, [fp, #-0x10]
    // 0x720068: r16 = "sup"
    //     0x720068: add             x16, PP, #0x17, lsl #12  ; [pp+0x17ed8] "sup"
    //     0x72006c: ldr             x16, [x16, #0xed8]
    // 0x720070: ArrayStore: r1[0] = r16  ; List_4
    //     0x720070: stur            w16, [x1, #0x17]
    // 0x720074: r0 = InitLateStaticField(0xe54) // [package:flutter_html/src/style/fontsize.dart] FontSize::smaller
    //     0x720074: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x720078: ldr             x0, [x0, #0x1ca8]
    //     0x72007c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x720080: cmp             w0, w16
    //     0x720084: b.ne            #0x720094
    //     0x720088: add             x2, PP, #0x17, lsl #12  ; [pp+0x17ee0] Field <FontSize.smaller>: static late final (offset: 0xe54)
    //     0x72008c: ldr             x2, [x2, #0xee0]
    //     0x720090: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x720094: stur            x0, [fp, #-0x18]
    // 0x720098: r0 = Style()
    //     0x720098: bl              #0x60e628  ; AllocateStyleStub -> Style (size=0xa0)
    // 0x72009c: stur            x0, [fp, #-0x28]
    // 0x7200a0: ldur            x16, [fp, #-0x18]
    // 0x7200a4: r30 = Instance_VerticalAlign
    //     0x7200a4: add             lr, PP, #0x17, lsl #12  ; [pp+0x17ee8] Obj!VerticalAlign@a27fd1
    //     0x7200a8: ldr             lr, [lr, #0xee8]
    // 0x7200ac: stp             lr, x16, [SP]
    // 0x7200b0: mov             x1, x0
    // 0x7200b4: r4 = const [0, 0x3, 0x2, 0x1, fontSize, 0x1, verticalAlign, 0x2, null]
    //     0x7200b4: add             x4, PP, #0x17, lsl #12  ; [pp+0x17ef0] List(9) [0, 0x3, 0x2, 0x1, "fontSize", 0x1, "verticalAlign", 0x2, Null]
    //     0x7200b8: ldr             x4, [x4, #0xef0]
    // 0x7200bc: r0 = Style()
    //     0x7200bc: bl              #0x60d43c  ; [package:flutter_html/src/style.dart] Style::Style
    // 0x7200c0: ldur            x1, [fp, #-0x10]
    // 0x7200c4: ldur            x0, [fp, #-0x28]
    // 0x7200c8: ArrayStore: r1[3] = r0  ; List_4
    //     0x7200c8: add             x25, x1, #0x1b
    //     0x7200cc: str             w0, [x25]
    //     0x7200d0: tbz             w0, #0, #0x7200ec
    //     0x7200d4: ldurb           w16, [x1, #-1]
    //     0x7200d8: ldurb           w17, [x0, #-1]
    //     0x7200dc: and             x16, x17, x16, lsr #2
    //     0x7200e0: tst             x16, HEAP, lsr #32
    //     0x7200e4: b.eq            #0x7200ec
    //     0x7200e8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7200ec: r16 = <String, Style>
    //     0x7200ec: add             x16, PP, #0x17, lsl #12  ; [pp+0x17ef8] TypeArguments: <String, Style>
    //     0x7200f0: ldr             x16, [x16, #0xef8]
    // 0x7200f4: ldur            lr, [fp, #-0x10]
    // 0x7200f8: stp             lr, x16, [SP]
    // 0x7200fc: r0 = Map._fromLiteral()
    //     0x7200fc: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x720100: stur            x0, [fp, #-0x10]
    // 0x720104: r0 = Html()
    //     0x720104: bl              #0x720248  ; AllocateHtmlStub -> Html (size=0x38)
    // 0x720108: mov             x2, x0
    // 0x72010c: ldur            x0, [fp, #-8]
    // 0x720110: stur            x2, [fp, #-0x18]
    // 0x720114: StoreField: r2->field_f = r0
    //     0x720114: stur            w0, [x2, #0xf]
    // 0x720118: r0 = const []
    //     0x720118: add             x0, PP, #0x17, lsl #12  ; [pp+0x17f00] List<HtmlExtension>(0)
    //     0x72011c: ldr             x0, [x0, #0xf00]
    // 0x720120: StoreField: r2->field_2f = r0
    //     0x720120: stur            w0, [x2, #0x2f]
    // 0x720124: r0 = false
    //     0x720124: add             x0, NULL, #0x30  ; false
    // 0x720128: StoreField: r2->field_23 = r0
    //     0x720128: stur            w0, [x2, #0x23]
    // 0x72012c: ldur            x0, [fp, #-0x10]
    // 0x720130: StoreField: r2->field_33 = r0
    //     0x720130: stur            w0, [x2, #0x33]
    // 0x720134: r1 = <State<StatefulWidget>>
    //     0x720134: ldr             x1, [PP, #0x4c98]  ; [pp+0x4c98] TypeArguments: <State<StatefulWidget>>
    // 0x720138: r0 = LabeledGlobalKey()
    //     0x720138: bl              #0x408748  ; AllocateLabeledGlobalKeyStub -> LabeledGlobalKey<X0 bound State> (size=0x10)
    // 0x72013c: mov             x1, x0
    // 0x720140: ldur            x0, [fp, #-0x18]
    // 0x720144: StoreField: r0->field_b = r1
    //     0x720144: stur            w1, [x0, #0xb]
    // 0x720148: r1 = <FlexParentData>
    //     0x720148: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x72014c: ldr             x1, [x1, #0x340]
    // 0x720150: r0 = Expanded()
    //     0x720150: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x720154: mov             x3, x0
    // 0x720158: r0 = 1
    //     0x720158: mov             x0, #1
    // 0x72015c: stur            x3, [fp, #-8]
    // 0x720160: StoreField: r3->field_13 = r0
    //     0x720160: stur            x0, [x3, #0x13]
    // 0x720164: r0 = Instance_FlexFit
    //     0x720164: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x720168: ldr             x0, [x0, #0x348]
    // 0x72016c: StoreField: r3->field_1b = r0
    //     0x72016c: stur            w0, [x3, #0x1b]
    // 0x720170: ldur            x0, [fp, #-0x18]
    // 0x720174: StoreField: r3->field_b = r0
    //     0x720174: stur            w0, [x3, #0xb]
    // 0x720178: r1 = Null
    //     0x720178: mov             x1, NULL
    // 0x72017c: r2 = 4
    //     0x72017c: mov             x2, #4
    // 0x720180: r0 = AllocateArray()
    //     0x720180: bl              #0x9280a0  ; AllocateArrayStub
    // 0x720184: mov             x2, x0
    // 0x720188: ldur            x0, [fp, #-0x20]
    // 0x72018c: stur            x2, [fp, #-0x10]
    // 0x720190: StoreField: r2->field_f = r0
    //     0x720190: stur            w0, [x2, #0xf]
    // 0x720194: ldur            x0, [fp, #-8]
    // 0x720198: StoreField: r2->field_13 = r0
    //     0x720198: stur            w0, [x2, #0x13]
    // 0x72019c: r1 = <Widget>
    //     0x72019c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7201a0: r0 = AllocateGrowableArray()
    //     0x7201a0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7201a4: mov             x1, x0
    // 0x7201a8: ldur            x0, [fp, #-0x10]
    // 0x7201ac: stur            x1, [fp, #-8]
    // 0x7201b0: StoreField: r1->field_f = r0
    //     0x7201b0: stur            w0, [x1, #0xf]
    // 0x7201b4: r0 = 4
    //     0x7201b4: mov             x0, #4
    // 0x7201b8: StoreField: r1->field_b = r0
    //     0x7201b8: stur            w0, [x1, #0xb]
    // 0x7201bc: r0 = Row()
    //     0x7201bc: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7201c0: mov             x1, x0
    // 0x7201c4: r0 = Instance_Axis
    //     0x7201c4: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7201c8: stur            x1, [fp, #-0x10]
    // 0x7201cc: StoreField: r1->field_f = r0
    //     0x7201cc: stur            w0, [x1, #0xf]
    // 0x7201d0: r0 = Instance_MainAxisAlignment
    //     0x7201d0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7201d4: ldr             x0, [x0, #0x230]
    // 0x7201d8: StoreField: r1->field_13 = r0
    //     0x7201d8: stur            w0, [x1, #0x13]
    // 0x7201dc: r0 = Instance_MainAxisSize
    //     0x7201dc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7201e0: ldr             x0, [x0, #0x330]
    // 0x7201e4: ArrayStore: r1[0] = r0  ; List_4
    //     0x7201e4: stur            w0, [x1, #0x17]
    // 0x7201e8: r0 = Instance_CrossAxisAlignment
    //     0x7201e8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7201ec: ldr             x0, [x0, #0x338]
    // 0x7201f0: StoreField: r1->field_1b = r0
    //     0x7201f0: stur            w0, [x1, #0x1b]
    // 0x7201f4: r0 = Instance_VerticalDirection
    //     0x7201f4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7201f8: ldr             x0, [x0, #0x340]
    // 0x7201fc: StoreField: r1->field_23 = r0
    //     0x7201fc: stur            w0, [x1, #0x23]
    // 0x720200: r0 = Instance_Clip
    //     0x720200: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x720204: ldr             x0, [x0, #0x348]
    // 0x720208: StoreField: r1->field_2b = r0
    //     0x720208: stur            w0, [x1, #0x2b]
    // 0x72020c: d0 = 16.000000
    //     0x72020c: fmov            d0, #16.00000000
    // 0x720210: StoreField: r1->field_2f = d0
    //     0x720210: stur            d0, [x1, #0x2f]
    // 0x720214: ldur            x0, [fp, #-8]
    // 0x720218: StoreField: r1->field_b = r0
    //     0x720218: stur            w0, [x1, #0xb]
    // 0x72021c: r0 = Padding()
    //     0x72021c: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x720220: r1 = Instance_EdgeInsets
    //     0x720220: add             x1, PP, #0xc, lsl #12  ; [pp+0xca98] Obj!EdgeInsets@a0bde1
    //     0x720224: ldr             x1, [x1, #0xa98]
    // 0x720228: StoreField: r0->field_f = r1
    //     0x720228: stur            w1, [x0, #0xf]
    // 0x72022c: ldur            x1, [fp, #-0x10]
    // 0x720230: StoreField: r0->field_b = r1
    //     0x720230: stur            w1, [x0, #0xb]
    // 0x720234: LeaveFrame
    //     0x720234: mov             SP, fp
    //     0x720238: ldp             fp, lr, [SP], #0x10
    // 0x72023c: ret
    //     0x72023c: ret             
    // 0x720240: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x720240: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x720244: b               #0x71fd70
  }
  [closure] Divider <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x7203b4, size: 0xc
    // 0x7203b4: r0 = Instance_Divider
    //     0x7203b4: add             x0, PP, #0x17, lsl #12  ; [pp+0x17fd8] Obj!Divider@a1f711
    //     0x7203b8: ldr             x0, [x0, #0xfd8]
    // 0x7203bc: ret
    //     0x7203bc: ret             
  }
  [closure] SizedBox <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x7203c0, size: 0x100
    // 0x7203c0: EnterFrame
    //     0x7203c0: stp             fp, lr, [SP, #-0x10]!
    //     0x7203c4: mov             fp, SP
    // 0x7203c8: AllocStack(0x28)
    //     0x7203c8: sub             SP, SP, #0x28
    // 0x7203cc: CheckStackOverflow
    //     0x7203cc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7203d0: cmp             SP, x16
    //     0x7203d4: b.ls            #0x7204b8
    // 0x7203d8: r0 = Radius()
    //     0x7203d8: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7203dc: d0 = 20.000000
    //     0x7203dc: fmov            d0, #20.00000000
    // 0x7203e0: stur            x0, [fp, #-8]
    // 0x7203e4: StoreField: r0->field_7 = d0
    //     0x7203e4: stur            d0, [x0, #7]
    // 0x7203e8: StoreField: r0->field_f = d0
    //     0x7203e8: stur            d0, [x0, #0xf]
    // 0x7203ec: r0 = BorderRadius()
    //     0x7203ec: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7203f0: mov             x1, x0
    // 0x7203f4: ldur            x0, [fp, #-8]
    // 0x7203f8: stur            x1, [fp, #-0x10]
    // 0x7203fc: StoreField: r1->field_7 = r0
    //     0x7203fc: stur            w0, [x1, #7]
    // 0x720400: StoreField: r1->field_b = r0
    //     0x720400: stur            w0, [x1, #0xb]
    // 0x720404: StoreField: r1->field_f = r0
    //     0x720404: stur            w0, [x1, #0xf]
    // 0x720408: StoreField: r1->field_13 = r0
    //     0x720408: stur            w0, [x1, #0x13]
    // 0x72040c: r0 = BoxDecoration()
    //     0x72040c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x720410: mov             x1, x0
    // 0x720414: r0 = Instance_MaterialColor
    //     0x720414: add             x0, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x720418: ldr             x0, [x0, #0xbc8]
    // 0x72041c: stur            x1, [fp, #-8]
    // 0x720420: StoreField: r1->field_7 = r0
    //     0x720420: stur            w0, [x1, #7]
    // 0x720424: ldur            x0, [fp, #-0x10]
    // 0x720428: StoreField: r1->field_13 = r0
    //     0x720428: stur            w0, [x1, #0x13]
    // 0x72042c: r0 = Instance_BoxShape
    //     0x72042c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x720430: ldr             x0, [x0, #0x1c8]
    // 0x720434: StoreField: r1->field_23 = r0
    //     0x720434: stur            w0, [x1, #0x23]
    // 0x720438: r0 = Container()
    //     0x720438: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x72043c: stur            x0, [fp, #-0x10]
    // 0x720440: r16 = 70.000000
    //     0x720440: add             x16, PP, #0x17, lsl #12  ; [pp+0x17fe0] 70
    //     0x720444: ldr             x16, [x16, #0xfe0]
    // 0x720448: r30 = 10.000000
    //     0x720448: ldr             lr, [PP, #0x6cc0]  ; [pp+0x6cc0] 10
    // 0x72044c: stp             lr, x16, [SP, #8]
    // 0x720450: ldur            x16, [fp, #-8]
    // 0x720454: str             x16, [SP]
    // 0x720458: mov             x1, x0
    // 0x72045c: r4 = const [0, 0x4, 0x3, 0x1, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x72045c: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a58] List(11) [0, 0x4, 0x3, 0x1, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x720460: ldr             x4, [x4, #0xa58]
    // 0x720464: r0 = Container()
    //     0x720464: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x720468: r0 = Center()
    //     0x720468: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x72046c: mov             x1, x0
    // 0x720470: r0 = Instance_Alignment
    //     0x720470: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x720474: ldr             x0, [x0, #0x60]
    // 0x720478: stur            x1, [fp, #-8]
    // 0x72047c: StoreField: r1->field_f = r0
    //     0x72047c: stur            w0, [x1, #0xf]
    // 0x720480: ldur            x0, [fp, #-0x10]
    // 0x720484: StoreField: r1->field_b = r0
    //     0x720484: stur            w0, [x1, #0xb]
    // 0x720488: r0 = SizedBox()
    //     0x720488: bl              #0x654794  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x72048c: r1 = inf
    //     0x72048c: add             x1, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x720490: ldr             x1, [x1, #0xb20]
    // 0x720494: StoreField: r0->field_f = r1
    //     0x720494: stur            w1, [x0, #0xf]
    // 0x720498: r1 = 30.000000
    //     0x720498: add             x1, PP, #0x17, lsl #12  ; [pp+0x17fe8] 30
    //     0x72049c: ldr             x1, [x1, #0xfe8]
    // 0x7204a0: StoreField: r0->field_13 = r1
    //     0x7204a0: stur            w1, [x0, #0x13]
    // 0x7204a4: ldur            x1, [fp, #-8]
    // 0x7204a8: StoreField: r0->field_b = r1
    //     0x7204a8: stur            w1, [x0, #0xb]
    // 0x7204ac: LeaveFrame
    //     0x7204ac: mov             SP, fp
    //     0x7204b0: ldp             fp, lr, [SP], #0x10
    // 0x7204b4: ret
    //     0x7204b4: ret             
    // 0x7204b8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7204b8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7204bc: b               #0x7203d8
  }
  [closure] Divider <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x7204c0, size: 0xc
    // 0x7204c0: r0 = Instance_Divider
    //     0x7204c0: add             x0, PP, #0x17, lsl #12  ; [pp+0x17ff0] Obj!Divider@a1f741
    //     0x7204c4: ldr             x0, [x0, #0xff0]
    // 0x7204c8: ret
    //     0x7204c8: ret             
  }
  dynamic dispose(dynamic) {
    // ** addr: 0x74c53c, size: 0x24
    // 0x74c53c: EnterFrame
    //     0x74c53c: stp             fp, lr, [SP, #-0x10]!
    //     0x74c540: mov             fp, SP
    // 0x74c544: ldr             x2, [fp, #0x10]
    // 0x74c548: r1 = Function 'dispose':.
    //     0x74c548: add             x1, PP, #0x27, lsl #12  ; [pp+0x27578] AnonymousClosure: (0x74c560), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::dispose (0x753e7c)
    //     0x74c54c: ldr             x1, [x1, #0x578]
    // 0x74c550: r0 = AllocateClosure()
    //     0x74c550: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74c554: LeaveFrame
    //     0x74c554: mov             SP, fp
    //     0x74c558: ldp             fp, lr, [SP], #0x10
    // 0x74c55c: ret
    //     0x74c55c: ret             
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x74c560, size: 0x38
    // 0x74c560: EnterFrame
    //     0x74c560: stp             fp, lr, [SP, #-0x10]!
    //     0x74c564: mov             fp, SP
    // 0x74c568: ldr             x0, [fp, #0x10]
    // 0x74c56c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74c56c: ldur            w1, [x0, #0x17]
    // 0x74c570: DecompressPointer r1
    //     0x74c570: add             x1, x1, HEAP, lsl #32
    // 0x74c574: CheckStackOverflow
    //     0x74c574: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74c578: cmp             SP, x16
    //     0x74c57c: b.ls            #0x74c590
    // 0x74c580: r0 = dispose()
    //     0x74c580: bl              #0x753e7c  ; [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::dispose
    // 0x74c584: LeaveFrame
    //     0x74c584: mov             SP, fp
    //     0x74c588: ldp             fp, lr, [SP], #0x10
    // 0x74c58c: ret
    //     0x74c58c: ret             
    // 0x74c590: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74c590: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74c594: b               #0x74c580
  }
  _ dispose(/* No info */) {
    // ** addr: 0x753e7c, size: 0x3c
    // 0x753e7c: EnterFrame
    //     0x753e7c: stp             fp, lr, [SP, #-0x10]!
    //     0x753e80: mov             fp, SP
    // 0x753e84: CheckStackOverflow
    //     0x753e84: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x753e88: cmp             SP, x16
    //     0x753e8c: b.ls            #0x753eb0
    // 0x753e90: LoadField: r0 = r1->field_1b
    //     0x753e90: ldur            w0, [x1, #0x1b]
    // 0x753e94: DecompressPointer r0
    //     0x753e94: add             x0, x0, HEAP, lsl #32
    // 0x753e98: mov             x1, x0
    // 0x753e9c: r0 = dispose()
    //     0x753e9c: bl              #0x63cc58  ; [package:flutter/src/widgets/scroll_controller.dart] ScrollController::dispose
    // 0x753ea0: r0 = Null
    //     0x753ea0: mov             x0, NULL
    // 0x753ea4: LeaveFrame
    //     0x753ea4: mov             SP, fp
    //     0x753ea8: ldp             fp, lr, [SP], #0x10
    // 0x753eac: ret
    //     0x753eac: ret             
    // 0x753eb0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x753eb0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x753eb4: b               #0x753e90
  }
  _ _QuranPageState(/* No info */) {
    // ** addr: 0x7bda6c, size: 0xd4
    // 0x7bda6c: EnterFrame
    //     0x7bda6c: stp             fp, lr, [SP, #-0x10]!
    //     0x7bda70: mov             fp, SP
    // 0x7bda74: AllocStack(0x10)
    //     0x7bda74: sub             SP, SP, #0x10
    // 0x7bda78: r2 = Sentinel
    //     0x7bda78: ldr             x2, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x7bda7c: r0 = false
    //     0x7bda7c: add             x0, NULL, #0x30  ; false
    // 0x7bda80: stur            x1, [fp, #-8]
    // 0x7bda84: CheckStackOverflow
    //     0x7bda84: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bda88: cmp             SP, x16
    //     0x7bda8c: b.ls            #0x7bdb38
    // 0x7bda90: StoreField: r1->field_1f = r2
    //     0x7bda90: stur            w2, [x1, #0x1f]
    // 0x7bda94: StoreField: r1->field_23 = r2
    //     0x7bda94: stur            w2, [x1, #0x23]
    // 0x7bda98: StoreField: r1->field_2b = r0
    //     0x7bda98: stur            w0, [x1, #0x2b]
    // 0x7bda9c: r0 = PageController()
    //     0x7bda9c: bl              #0x578c78  ; AllocatePageControllerStub -> PageController (size=0x54)
    // 0x7bdaa0: stur            x0, [fp, #-0x10]
    // 0x7bdaa4: StoreField: r0->field_3f = rZR
    //     0x7bdaa4: stur            xzr, [x0, #0x3f]
    // 0x7bdaa8: r1 = true
    //     0x7bdaa8: add             x1, NULL, #0x20  ; true
    // 0x7bdaac: StoreField: r0->field_47 = r1
    //     0x7bdaac: stur            w1, [x0, #0x47]
    // 0x7bdab0: d0 = 1.000000
    //     0x7bdab0: fmov            d0, #1.00000000
    // 0x7bdab4: StoreField: r0->field_4b = d0
    //     0x7bdab4: stur            d0, [x0, #0x4b]
    // 0x7bdab8: mov             x1, x0
    // 0x7bdabc: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7bdabc: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7bdac0: r0 = ScrollController()
    //     0x7bdac0: bl              #0x437694  ; [package:flutter/src/widgets/scroll_controller.dart] ScrollController::ScrollController
    // 0x7bdac4: ldur            x0, [fp, #-0x10]
    // 0x7bdac8: ldur            x1, [fp, #-8]
    // 0x7bdacc: StoreField: r1->field_1b = r0
    //     0x7bdacc: stur            w0, [x1, #0x1b]
    //     0x7bdad0: ldurb           w16, [x1, #-1]
    //     0x7bdad4: ldurb           w17, [x0, #-1]
    //     0x7bdad8: and             x16, x17, x16, lsr #2
    //     0x7bdadc: tst             x16, HEAP, lsr #32
    //     0x7bdae0: b.eq            #0x7bdae8
    //     0x7bdae4: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7bdae8: r0 = InitLateStaticField(0x1014) // [package:umrem_demo/core/services/quran_storage_service.dart] QuranStorageService::_instance
    //     0x7bdae8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7bdaec: ldr             x0, [x0, #0x2028]
    //     0x7bdaf0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7bdaf4: cmp             w0, w16
    //     0x7bdaf8: b.ne            #0x7bdb08
    //     0x7bdafc: add             x2, PP, #0x10, lsl #12  ; [pp+0x10d50] Field <QuranStorageService._instance@966040762>: static late final (offset: 0x1014)
    //     0x7bdb00: ldr             x2, [x2, #0xd50]
    //     0x7bdb04: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x7bdb08: ldur            x1, [fp, #-8]
    // 0x7bdb0c: StoreField: r1->field_27 = r0
    //     0x7bdb0c: stur            w0, [x1, #0x27]
    //     0x7bdb10: ldurb           w16, [x1, #-1]
    //     0x7bdb14: ldurb           w17, [x0, #-1]
    //     0x7bdb18: and             x16, x17, x16, lsr #2
    //     0x7bdb1c: tst             x16, HEAP, lsr #32
    //     0x7bdb20: b.eq            #0x7bdb28
    //     0x7bdb24: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7bdb28: r0 = Null
    //     0x7bdb28: mov             x0, NULL
    // 0x7bdb2c: LeaveFrame
    //     0x7bdb2c: mov             SP, fp
    //     0x7bdb30: ldp             fp, lr, [SP], #0x10
    // 0x7bdb34: ret
    //     0x7bdb34: ret             
    // 0x7bdb38: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bdb38: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bdb3c: b               #0x7bda90
  }
}

// class id: 3204, size: 0xc, field offset: 0xc
//   const constructor, 
class QuranPage extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bda24, size: 0x48
    // 0x7bda24: EnterFrame
    //     0x7bda24: stp             fp, lr, [SP, #-0x10]!
    //     0x7bda28: mov             fp, SP
    // 0x7bda2c: AllocStack(0x8)
    //     0x7bda2c: sub             SP, SP, #8
    // 0x7bda30: CheckStackOverflow
    //     0x7bda30: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bda34: cmp             SP, x16
    //     0x7bda38: b.ls            #0x7bda64
    // 0x7bda3c: r1 = <QuranPage>
    //     0x7bda3c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12578] TypeArguments: <QuranPage>
    //     0x7bda40: ldr             x1, [x1, #0x578]
    // 0x7bda44: r0 = _QuranPageState()
    //     0x7bda44: bl              #0x7bdb40  ; Allocate_QuranPageStateStub -> _QuranPageState (size=0x30)
    // 0x7bda48: mov             x1, x0
    // 0x7bda4c: stur            x0, [fp, #-8]
    // 0x7bda50: r0 = _QuranPageState()
    //     0x7bda50: bl              #0x7bda6c  ; [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_QuranPageState
    // 0x7bda54: ldur            x0, [fp, #-8]
    // 0x7bda58: LeaveFrame
    //     0x7bda58: mov             SP, fp
    //     0x7bda5c: ldp             fp, lr, [SP], #0x10
    // 0x7bda60: ret
    //     0x7bda60: ret             
    // 0x7bda64: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bda64: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bda68: b               #0x7bda3c
  }
}

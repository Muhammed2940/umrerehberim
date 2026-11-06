// lib: , url: package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart

// class id: 1049604, size: 0x8
class :: {
}

// class id: 2459, size: 0x18, field offset: 0x14
class _CalendarTabState extends State<dynamic> {

  _ initState(/* No info */) {
    // ** addr: 0x5f6788, size: 0x130
    // 0x5f6788: EnterFrame
    //     0x5f6788: stp             fp, lr, [SP, #-0x10]!
    //     0x5f678c: mov             fp, SP
    // 0x5f6790: AllocStack(0x18)
    //     0x5f6790: sub             SP, SP, #0x18
    // 0x5f6794: SetupParameters(_CalendarTabState this /* r1 => r1, fp-0x8 */)
    //     0x5f6794: stur            x1, [fp, #-8]
    // 0x5f6798: CheckStackOverflow
    //     0x5f6798: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f679c: cmp             SP, x16
    //     0x5f67a0: b.ls            #0x5f68ac
    // 0x5f67a4: r1 = 1
    //     0x5f67a4: mov             x1, #1
    // 0x5f67a8: r0 = AllocateContext()
    //     0x5f67a8: bl              #0x927010  ; AllocateContextStub
    // 0x5f67ac: mov             x1, x0
    // 0x5f67b0: ldur            x0, [fp, #-8]
    // 0x5f67b4: StoreField: r1->field_f = r0
    //     0x5f67b4: stur            w0, [x1, #0xf]
    // 0x5f67b8: r0 = LoadStaticField(0x834)
    //     0x5f67b8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5f67bc: ldr             x0, [x0, #0x1068]
    // 0x5f67c0: cmp             w0, NULL
    // 0x5f67c4: b.eq            #0x5f68b4
    // 0x5f67c8: LoadField: r3 = r0->field_53
    //     0x5f67c8: ldur            w3, [x0, #0x53]
    // 0x5f67cc: DecompressPointer r3
    //     0x5f67cc: add             x3, x3, HEAP, lsl #32
    // 0x5f67d0: stur            x3, [fp, #-0x10]
    // 0x5f67d4: LoadField: r0 = r3->field_7
    //     0x5f67d4: ldur            w0, [x3, #7]
    // 0x5f67d8: DecompressPointer r0
    //     0x5f67d8: add             x0, x0, HEAP, lsl #32
    // 0x5f67dc: mov             x2, x1
    // 0x5f67e0: stur            x0, [fp, #-8]
    // 0x5f67e4: r1 = Function '<anonymous closure>':.
    //     0x5f67e4: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fe90] AnonymousClosure: (0x5f68d8), in [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::initState (0x5f6788)
    //     0x5f67e8: ldr             x1, [x1, #0xe90]
    // 0x5f67ec: r0 = AllocateClosure()
    //     0x5f67ec: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5f67f0: ldur            x2, [fp, #-8]
    // 0x5f67f4: mov             x3, x0
    // 0x5f67f8: r1 = Null
    //     0x5f67f8: mov             x1, NULL
    // 0x5f67fc: stur            x3, [fp, #-8]
    // 0x5f6800: cmp             w2, NULL
    // 0x5f6804: b.eq            #0x5f6824
    // 0x5f6808: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x5f6808: ldur            w4, [x2, #0x17]
    // 0x5f680c: DecompressPointer r4
    //     0x5f680c: add             x4, x4, HEAP, lsl #32
    // 0x5f6810: r8 = X0
    //     0x5f6810: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x5f6814: LoadField: r9 = r4->field_7
    //     0x5f6814: ldur            x9, [x4, #7]
    // 0x5f6818: r3 = Null
    //     0x5f6818: add             x3, PP, #0x1f, lsl #12  ; [pp+0x1fe98] Null
    //     0x5f681c: ldr             x3, [x3, #0xe98]
    // 0x5f6820: blr             x9
    // 0x5f6824: ldur            x0, [fp, #-0x10]
    // 0x5f6828: LoadField: r1 = r0->field_b
    //     0x5f6828: ldur            w1, [x0, #0xb]
    // 0x5f682c: LoadField: r2 = r0->field_f
    //     0x5f682c: ldur            w2, [x0, #0xf]
    // 0x5f6830: DecompressPointer r2
    //     0x5f6830: add             x2, x2, HEAP, lsl #32
    // 0x5f6834: LoadField: r3 = r2->field_b
    //     0x5f6834: ldur            w3, [x2, #0xb]
    // 0x5f6838: r2 = LoadInt32Instr(r1)
    //     0x5f6838: sbfx            x2, x1, #1, #0x1f
    // 0x5f683c: stur            x2, [fp, #-0x18]
    // 0x5f6840: r1 = LoadInt32Instr(r3)
    //     0x5f6840: sbfx            x1, x3, #1, #0x1f
    // 0x5f6844: cmp             x2, x1
    // 0x5f6848: b.ne            #0x5f6854
    // 0x5f684c: mov             x1, x0
    // 0x5f6850: r0 = _growToNextCapacity()
    //     0x5f6850: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x5f6854: ldur            x2, [fp, #-0x10]
    // 0x5f6858: ldur            x3, [fp, #-0x18]
    // 0x5f685c: add             x4, x3, #1
    // 0x5f6860: lsl             x5, x4, #1
    // 0x5f6864: StoreField: r2->field_b = r5
    //     0x5f6864: stur            w5, [x2, #0xb]
    // 0x5f6868: LoadField: r1 = r2->field_f
    //     0x5f6868: ldur            w1, [x2, #0xf]
    // 0x5f686c: DecompressPointer r1
    //     0x5f686c: add             x1, x1, HEAP, lsl #32
    // 0x5f6870: ldur            x0, [fp, #-8]
    // 0x5f6874: ArrayStore: r1[r3] = r0  ; List_4
    //     0x5f6874: add             x25, x1, x3, lsl #2
    //     0x5f6878: add             x25, x25, #0xf
    //     0x5f687c: str             w0, [x25]
    //     0x5f6880: tbz             w0, #0, #0x5f689c
    //     0x5f6884: ldurb           w16, [x1, #-1]
    //     0x5f6888: ldurb           w17, [x0, #-1]
    //     0x5f688c: and             x16, x17, x16, lsr #2
    //     0x5f6890: tst             x16, HEAP, lsr #32
    //     0x5f6894: b.eq            #0x5f689c
    //     0x5f6898: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5f689c: r0 = Null
    //     0x5f689c: mov             x0, NULL
    // 0x5f68a0: LeaveFrame
    //     0x5f68a0: mov             SP, fp
    //     0x5f68a4: ldp             fp, lr, [SP], #0x10
    // 0x5f68a8: ret
    //     0x5f68a8: ret             
    // 0x5f68ac: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f68ac: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f68b0: b               #0x5f67a4
    // 0x5f68b4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5f68b4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, Duration) {
    // ** addr: 0x5f68d8, size: 0x48
    // 0x5f68d8: EnterFrame
    //     0x5f68d8: stp             fp, lr, [SP, #-0x10]!
    //     0x5f68dc: mov             fp, SP
    // 0x5f68e0: ldr             x0, [fp, #0x18]
    // 0x5f68e4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x5f68e4: ldur            w1, [x0, #0x17]
    // 0x5f68e8: DecompressPointer r1
    //     0x5f68e8: add             x1, x1, HEAP, lsl #32
    // 0x5f68ec: CheckStackOverflow
    //     0x5f68ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f68f0: cmp             SP, x16
    //     0x5f68f4: b.ls            #0x5f6918
    // 0x5f68f8: LoadField: r0 = r1->field_f
    //     0x5f68f8: ldur            w0, [x1, #0xf]
    // 0x5f68fc: DecompressPointer r0
    //     0x5f68fc: add             x0, x0, HEAP, lsl #32
    // 0x5f6900: mov             x1, x0
    // 0x5f6904: r0 = _loadCalendarEvents()
    //     0x5f6904: bl              #0x5f6920  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::_loadCalendarEvents
    // 0x5f6908: r0 = Null
    //     0x5f6908: mov             x0, NULL
    // 0x5f690c: LeaveFrame
    //     0x5f690c: mov             SP, fp
    //     0x5f6910: ldp             fp, lr, [SP], #0x10
    // 0x5f6914: ret
    //     0x5f6914: ret             
    // 0x5f6918: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f6918: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f691c: b               #0x5f68f8
  }
  _ _loadCalendarEvents(/* No info */) {
    // ** addr: 0x5f6920, size: 0xa0
    // 0x5f6920: EnterFrame
    //     0x5f6920: stp             fp, lr, [SP, #-0x10]!
    //     0x5f6924: mov             fp, SP
    // 0x5f6928: AllocStack(0x18)
    //     0x5f6928: sub             SP, SP, #0x18
    // 0x5f692c: SetupParameters(_CalendarTabState this /* r1 => r1, fp-0x8 */)
    //     0x5f692c: stur            x1, [fp, #-8]
    // 0x5f6930: CheckStackOverflow
    //     0x5f6930: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f6934: cmp             SP, x16
    //     0x5f6938: b.ls            #0x5f69b0
    // 0x5f693c: LoadField: r0 = r1->field_f
    //     0x5f693c: ldur            w0, [x1, #0xf]
    // 0x5f6940: DecompressPointer r0
    //     0x5f6940: add             x0, x0, HEAP, lsl #32
    // 0x5f6944: cmp             w0, NULL
    // 0x5f6948: b.eq            #0x5f69b8
    // 0x5f694c: r16 = <EventProvider>
    //     0x5f694c: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b80] TypeArguments: <EventProvider>
    //     0x5f6950: ldr             x16, [x16, #0xb80]
    // 0x5f6954: stp             x0, x16, [SP]
    // 0x5f6958: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x5f6958: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x5f695c: r0 = ReadContext.read()
    //     0x5f695c: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x5f6960: mov             x1, x0
    // 0x5f6964: ldur            x0, [fp, #-8]
    // 0x5f6968: LoadField: r2 = r0->field_13
    //     0x5f6968: ldur            w2, [x0, #0x13]
    // 0x5f696c: DecompressPointer r2
    //     0x5f696c: add             x2, x2, HEAP, lsl #32
    // 0x5f6970: LoadField: r3 = r0->field_b
    //     0x5f6970: ldur            w3, [x0, #0xb]
    // 0x5f6974: DecompressPointer r3
    //     0x5f6974: add             x3, x3, HEAP, lsl #32
    // 0x5f6978: cmp             w3, NULL
    // 0x5f697c: b.eq            #0x5f69bc
    // 0x5f6980: LoadField: r0 = r3->field_b
    //     0x5f6980: ldur            w0, [x3, #0xb]
    // 0x5f6984: DecompressPointer r0
    //     0x5f6984: add             x0, x0, HEAP, lsl #32
    // 0x5f6988: LoadField: r3 = r0->field_7
    //     0x5f6988: ldur            w3, [x0, #7]
    // 0x5f698c: DecompressPointer r3
    //     0x5f698c: add             x3, x3, HEAP, lsl #32
    // 0x5f6990: str             x3, [SP]
    // 0x5f6994: r4 = const [0, 0x3, 0x1, 0x2, agencyId, 0x2, null]
    //     0x5f6994: add             x4, PP, #0x14, lsl #12  ; [pp+0x14fe0] List(7) [0, 0x3, 0x1, 0x2, "agencyId", 0x2, Null]
    //     0x5f6998: ldr             x4, [x4, #0xfe0]
    // 0x5f699c: r0 = loadEventsByDate()
    //     0x5f699c: bl              #0x5df1d8  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::loadEventsByDate
    // 0x5f69a0: r0 = Null
    //     0x5f69a0: mov             x0, NULL
    // 0x5f69a4: LeaveFrame
    //     0x5f69a4: mov             SP, fp
    //     0x5f69a8: ldp             fp, lr, [SP], #0x10
    // 0x5f69ac: ret
    //     0x5f69ac: ret             
    // 0x5f69b0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f69b0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f69b4: b               #0x5f693c
    // 0x5f69b8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5f69b8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5f69bc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5f69bc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ build(/* No info */) {
    // ** addr: 0x7417e8, size: 0x58
    // 0x7417e8: EnterFrame
    //     0x7417e8: stp             fp, lr, [SP, #-0x10]!
    //     0x7417ec: mov             fp, SP
    // 0x7417f0: AllocStack(0x8)
    //     0x7417f0: sub             SP, SP, #8
    // 0x7417f4: SetupParameters(_CalendarTabState this /* r1 => r1, fp-0x8 */)
    //     0x7417f4: stur            x1, [fp, #-8]
    // 0x7417f8: r1 = 1
    //     0x7417f8: mov             x1, #1
    // 0x7417fc: r0 = AllocateContext()
    //     0x7417fc: bl              #0x927010  ; AllocateContextStub
    // 0x741800: mov             x1, x0
    // 0x741804: ldur            x0, [fp, #-8]
    // 0x741808: StoreField: r1->field_f = r0
    //     0x741808: stur            w0, [x1, #0xf]
    // 0x74180c: mov             x2, x1
    // 0x741810: r1 = Function '<anonymous closure>':.
    //     0x741810: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fdf0] AnonymousClosure: (0x741840), in [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::build (0x7417e8)
    //     0x741814: ldr             x1, [x1, #0xdf0]
    // 0x741818: r0 = AllocateClosure()
    //     0x741818: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74181c: r1 = <EventProvider>
    //     0x74181c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b80] TypeArguments: <EventProvider>
    //     0x741820: ldr             x1, [x1, #0xb80]
    // 0x741824: stur            x0, [fp, #-8]
    // 0x741828: r0 = Consumer()
    //     0x741828: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x74182c: ldur            x1, [fp, #-8]
    // 0x741830: StoreField: r0->field_13 = r1
    //     0x741830: stur            w1, [x0, #0x13]
    // 0x741834: LeaveFrame
    //     0x741834: mov             SP, fp
    //     0x741838: ldp             fp, lr, [SP], #0x10
    // 0x74183c: ret
    //     0x74183c: ret             
  }
  [closure] Column <anonymous closure>(dynamic, BuildContext, EventProvider, Widget?) {
    // ** addr: 0x741840, size: 0x86c
    // 0x741840: EnterFrame
    //     0x741840: stp             fp, lr, [SP, #-0x10]!
    //     0x741844: mov             fp, SP
    // 0x741848: AllocStack(0x68)
    //     0x741848: sub             SP, SP, #0x68
    // 0x74184c: SetupParameters([dynamic _ /* r0 */])
    //     0x74184c: ldr             x0, [fp, #0x28]
    //     0x741850: ldur            w1, [x0, #0x17]
    //     0x741854: add             x1, x1, HEAP, lsl #32
    //     0x741858: stur            x1, [fp, #-8]
    // 0x74185c: CheckStackOverflow
    //     0x74185c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x741860: cmp             SP, x16
    //     0x741864: b.ls            #0x7420a4
    // 0x741868: r1 = 2
    //     0x741868: mov             x1, #2
    // 0x74186c: r0 = AllocateContext()
    //     0x74186c: bl              #0x927010  ; AllocateContextStub
    // 0x741870: mov             x2, x0
    // 0x741874: ldur            x0, [fp, #-8]
    // 0x741878: stur            x2, [fp, #-0x10]
    // 0x74187c: StoreField: r2->field_b = r0
    //     0x74187c: stur            w0, [x2, #0xb]
    // 0x741880: ldr             x1, [fp, #0x20]
    // 0x741884: StoreField: r2->field_f = r1
    //     0x741884: stur            w1, [x2, #0xf]
    // 0x741888: ldr             x1, [fp, #0x18]
    // 0x74188c: StoreField: r2->field_13 = r1
    //     0x74188c: stur            w1, [x2, #0x13]
    // 0x741890: r16 = 0.080000
    //     0x741890: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e30] 0.08
    //     0x741894: ldr             x16, [x16, #0xe30]
    // 0x741898: str             x16, [SP]
    // 0x74189c: r1 = Instance_Color
    //     0x74189c: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7418a0: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7418a0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7418a4: ldr             x4, [x4, #0x198]
    // 0x7418a8: r0 = withValues()
    //     0x7418a8: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7418ac: stur            x0, [fp, #-0x18]
    // 0x7418b0: r0 = Radius()
    //     0x7418b0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7418b4: d0 = 16.000000
    //     0x7418b4: fmov            d0, #16.00000000
    // 0x7418b8: stur            x0, [fp, #-0x20]
    // 0x7418bc: StoreField: r0->field_7 = d0
    //     0x7418bc: stur            d0, [x0, #7]
    // 0x7418c0: StoreField: r0->field_f = d0
    //     0x7418c0: stur            d0, [x0, #0xf]
    // 0x7418c4: r0 = BorderRadius()
    //     0x7418c4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7418c8: mov             x2, x0
    // 0x7418cc: ldur            x0, [fp, #-0x20]
    // 0x7418d0: stur            x2, [fp, #-0x28]
    // 0x7418d4: StoreField: r2->field_7 = r0
    //     0x7418d4: stur            w0, [x2, #7]
    // 0x7418d8: StoreField: r2->field_b = r0
    //     0x7418d8: stur            w0, [x2, #0xb]
    // 0x7418dc: StoreField: r2->field_f = r0
    //     0x7418dc: stur            w0, [x2, #0xf]
    // 0x7418e0: StoreField: r2->field_13 = r0
    //     0x7418e0: stur            w0, [x2, #0x13]
    // 0x7418e4: r16 = 0.100000
    //     0x7418e4: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x7418e8: ldr             x16, [x16, #0x1f8]
    // 0x7418ec: str             x16, [SP]
    // 0x7418f0: r1 = Instance_Color
    //     0x7418f0: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7418f4: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7418f4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7418f8: ldr             x4, [x4, #0x198]
    // 0x7418fc: r0 = withValues()
    //     0x7418fc: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x741900: str             x0, [SP]
    // 0x741904: r1 = Null
    //     0x741904: mov             x1, NULL
    // 0x741908: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x741908: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x74190c: ldr             x4, [x4, #0x788]
    // 0x741910: r0 = Border.all()
    //     0x741910: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x741914: stur            x0, [fp, #-0x20]
    // 0x741918: r0 = BoxDecoration()
    //     0x741918: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x74191c: mov             x2, x0
    // 0x741920: ldur            x0, [fp, #-0x18]
    // 0x741924: stur            x2, [fp, #-0x30]
    // 0x741928: StoreField: r2->field_7 = r0
    //     0x741928: stur            w0, [x2, #7]
    // 0x74192c: ldur            x0, [fp, #-0x20]
    // 0x741930: StoreField: r2->field_f = r0
    //     0x741930: stur            w0, [x2, #0xf]
    // 0x741934: ldur            x0, [fp, #-0x28]
    // 0x741938: StoreField: r2->field_13 = r0
    //     0x741938: stur            w0, [x2, #0x13]
    // 0x74193c: r0 = Instance_BoxShape
    //     0x74193c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x741940: ldr             x0, [x0, #0x1c8]
    // 0x741944: StoreField: r2->field_23 = r0
    //     0x741944: stur            w0, [x2, #0x23]
    // 0x741948: ldur            x0, [fp, #-8]
    // 0x74194c: LoadField: r1 = r0->field_f
    //     0x74194c: ldur            w1, [x0, #0xf]
    // 0x741950: DecompressPointer r1
    //     0x741950: add             x1, x1, HEAP, lsl #32
    // 0x741954: LoadField: r3 = r1->field_13
    //     0x741954: ldur            w3, [x1, #0x13]
    // 0x741958: DecompressPointer r3
    //     0x741958: add             x3, x3, HEAP, lsl #32
    // 0x74195c: mov             x1, x3
    // 0x741960: r0 = formatDayOfWeek()
    //     0x741960: bl              #0x6d1b14  ; [package:umrem_demo/core/utils/date_input_formatter.dart] ::formatDayOfWeek
    // 0x741964: stur            x0, [fp, #-0x18]
    // 0x741968: r0 = Text()
    //     0x741968: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x74196c: mov             x2, x0
    // 0x741970: ldur            x0, [fp, #-0x18]
    // 0x741974: stur            x2, [fp, #-0x20]
    // 0x741978: StoreField: r2->field_b = r0
    //     0x741978: stur            w0, [x2, #0xb]
    // 0x74197c: r0 = Instance_TextStyle
    //     0x74197c: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fdf8] Obj!TextStyle@a188d1
    //     0x741980: ldr             x0, [x0, #0xdf8]
    // 0x741984: StoreField: r2->field_13 = r0
    //     0x741984: stur            w0, [x2, #0x13]
    // 0x741988: ldur            x0, [fp, #-8]
    // 0x74198c: LoadField: r1 = r0->field_f
    //     0x74198c: ldur            w1, [x0, #0xf]
    // 0x741990: DecompressPointer r1
    //     0x741990: add             x1, x1, HEAP, lsl #32
    // 0x741994: LoadField: r3 = r1->field_13
    //     0x741994: ldur            w3, [x1, #0x13]
    // 0x741998: DecompressPointer r3
    //     0x741998: add             x3, x3, HEAP, lsl #32
    // 0x74199c: mov             x1, x3
    // 0x7419a0: r0 = formatDate()
    //     0x7419a0: bl              #0x6d1754  ; [package:umrem_demo/core/utils/date_input_formatter.dart] ::formatDate
    // 0x7419a4: stur            x0, [fp, #-0x18]
    // 0x7419a8: r0 = Text()
    //     0x7419a8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7419ac: mov             x3, x0
    // 0x7419b0: ldur            x0, [fp, #-0x18]
    // 0x7419b4: stur            x3, [fp, #-0x28]
    // 0x7419b8: StoreField: r3->field_b = r0
    //     0x7419b8: stur            w0, [x3, #0xb]
    // 0x7419bc: r0 = Instance_TextStyle
    //     0x7419bc: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fe00] Obj!TextStyle@a18861
    //     0x7419c0: ldr             x0, [x0, #0xe00]
    // 0x7419c4: StoreField: r3->field_13 = r0
    //     0x7419c4: stur            w0, [x3, #0x13]
    // 0x7419c8: r1 = Null
    //     0x7419c8: mov             x1, NULL
    // 0x7419cc: r2 = 6
    //     0x7419cc: mov             x2, #6
    // 0x7419d0: r0 = AllocateArray()
    //     0x7419d0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7419d4: mov             x2, x0
    // 0x7419d8: ldur            x0, [fp, #-0x20]
    // 0x7419dc: stur            x2, [fp, #-0x18]
    // 0x7419e0: StoreField: r2->field_f = r0
    //     0x7419e0: stur            w0, [x2, #0xf]
    // 0x7419e4: r16 = Instance_SizedBox
    //     0x7419e4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x7419e8: ldr             x16, [x16, #0x338]
    // 0x7419ec: StoreField: r2->field_13 = r16
    //     0x7419ec: stur            w16, [x2, #0x13]
    // 0x7419f0: ldur            x0, [fp, #-0x28]
    // 0x7419f4: ArrayStore: r2[0] = r0  ; List_4
    //     0x7419f4: stur            w0, [x2, #0x17]
    // 0x7419f8: r1 = <Widget>
    //     0x7419f8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7419fc: r0 = AllocateGrowableArray()
    //     0x7419fc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x741a00: mov             x1, x0
    // 0x741a04: ldur            x0, [fp, #-0x18]
    // 0x741a08: stur            x1, [fp, #-0x20]
    // 0x741a0c: StoreField: r1->field_f = r0
    //     0x741a0c: stur            w0, [x1, #0xf]
    // 0x741a10: r2 = 6
    //     0x741a10: mov             x2, #6
    // 0x741a14: StoreField: r1->field_b = r2
    //     0x741a14: stur            w2, [x1, #0xb]
    // 0x741a18: r0 = Column()
    //     0x741a18: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x741a1c: mov             x1, x0
    // 0x741a20: r0 = Instance_Axis
    //     0x741a20: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x741a24: stur            x1, [fp, #-0x28]
    // 0x741a28: StoreField: r1->field_f = r0
    //     0x741a28: stur            w0, [x1, #0xf]
    // 0x741a2c: r2 = Instance_MainAxisAlignment
    //     0x741a2c: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x741a30: ldr             x2, [x2, #0x230]
    // 0x741a34: StoreField: r1->field_13 = r2
    //     0x741a34: stur            w2, [x1, #0x13]
    // 0x741a38: r3 = Instance_MainAxisSize
    //     0x741a38: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x741a3c: ldr             x3, [x3, #0x330]
    // 0x741a40: ArrayStore: r1[0] = r3  ; List_4
    //     0x741a40: stur            w3, [x1, #0x17]
    // 0x741a44: r4 = Instance_CrossAxisAlignment
    //     0x741a44: add             x4, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x741a48: ldr             x4, [x4, #0x238]
    // 0x741a4c: StoreField: r1->field_1b = r4
    //     0x741a4c: stur            w4, [x1, #0x1b]
    // 0x741a50: r5 = Instance_VerticalDirection
    //     0x741a50: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x741a54: ldr             x5, [x5, #0x340]
    // 0x741a58: StoreField: r1->field_23 = r5
    //     0x741a58: stur            w5, [x1, #0x23]
    // 0x741a5c: r6 = Instance_Clip
    //     0x741a5c: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x741a60: ldr             x6, [x6, #0x348]
    // 0x741a64: StoreField: r1->field_2b = r6
    //     0x741a64: stur            w6, [x1, #0x2b]
    // 0x741a68: StoreField: r1->field_2f = rZR
    //     0x741a68: stur            xzr, [x1, #0x2f]
    // 0x741a6c: ldur            x7, [fp, #-0x20]
    // 0x741a70: StoreField: r1->field_b = r7
    //     0x741a70: stur            w7, [x1, #0xb]
    // 0x741a74: ldur            x7, [fp, #-8]
    // 0x741a78: LoadField: r8 = r7->field_f
    //     0x741a78: ldur            w8, [x7, #0xf]
    // 0x741a7c: DecompressPointer r8
    //     0x741a7c: add             x8, x8, HEAP, lsl #32
    // 0x741a80: stur            x8, [fp, #-0x18]
    // 0x741a84: r0 = Radius()
    //     0x741a84: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x741a88: d0 = 12.000000
    //     0x741a88: fmov            d0, #12.00000000
    // 0x741a8c: stur            x0, [fp, #-0x20]
    // 0x741a90: StoreField: r0->field_7 = d0
    //     0x741a90: stur            d0, [x0, #7]
    // 0x741a94: StoreField: r0->field_f = d0
    //     0x741a94: stur            d0, [x0, #0xf]
    // 0x741a98: r0 = BorderRadius()
    //     0x741a98: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x741a9c: mov             x1, x0
    // 0x741aa0: ldur            x0, [fp, #-0x20]
    // 0x741aa4: stur            x1, [fp, #-0x38]
    // 0x741aa8: StoreField: r1->field_7 = r0
    //     0x741aa8: stur            w0, [x1, #7]
    // 0x741aac: StoreField: r1->field_b = r0
    //     0x741aac: stur            w0, [x1, #0xb]
    // 0x741ab0: StoreField: r1->field_f = r0
    //     0x741ab0: stur            w0, [x1, #0xf]
    // 0x741ab4: StoreField: r1->field_13 = r0
    //     0x741ab4: stur            w0, [x1, #0x13]
    // 0x741ab8: r0 = RoundedRectangleBorder()
    //     0x741ab8: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x741abc: mov             x1, x0
    // 0x741ac0: ldur            x0, [fp, #-0x38]
    // 0x741ac4: StoreField: r1->field_b = r0
    //     0x741ac4: stur            w0, [x1, #0xb]
    // 0x741ac8: r0 = Instance_BorderSide
    //     0x741ac8: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x741acc: ldr             x0, [x0, #0xcb8]
    // 0x741ad0: StoreField: r1->field_7 = r0
    //     0x741ad0: stur            w0, [x1, #7]
    // 0x741ad4: r16 = Instance_EdgeInsets
    //     0x741ad4: add             x16, PP, #0x19, lsl #12  ; [pp+0x19928] Obj!EdgeInsets@a0c291
    //     0x741ad8: ldr             x16, [x16, #0x928]
    // 0x741adc: r30 = Instance_Color
    //     0x741adc: add             lr, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x741ae0: ldr             lr, [lr, #0xf30]
    // 0x741ae4: stp             lr, x16, [SP, #0x10]
    // 0x741ae8: r16 = Instance_Color
    //     0x741ae8: ldr             x16, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x741aec: stp             x1, x16, [SP]
    // 0x741af0: r4 = const [0, 0x4, 0x4, 0, backgroundColor, 0x1, foregroundColor, 0x2, padding, 0, shape, 0x3, null]
    //     0x741af0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19930] List(13) [0, 0x4, 0x4, 0, "backgroundColor", 0x1, "foregroundColor", 0x2, "padding", 0, "shape", 0x3, Null]
    //     0x741af4: ldr             x4, [x4, #0x930]
    // 0x741af8: r0 = styleFrom()
    //     0x741af8: bl              #0x678590  ; [package:flutter/src/material/text_button.dart] TextButton::styleFrom
    // 0x741afc: ldur            x2, [fp, #-0x18]
    // 0x741b00: r1 = Function '_showAddEventDialog@1036384510':.
    //     0x741b00: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fe08] AnonymousClosure: (0x7436b4), in [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::_showAddEventDialog (0x7436ec)
    //     0x741b04: ldr             x1, [x1, #0xe08]
    // 0x741b08: stur            x0, [fp, #-0x18]
    // 0x741b0c: r0 = AllocateClosure()
    //     0x741b0c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x741b10: stur            x0, [fp, #-0x20]
    // 0x741b14: r0 = _TextButtonWithIcon()
    //     0x741b14: bl              #0x6d1748  ; Allocate_TextButtonWithIconStub -> _TextButtonWithIcon (size=0x3c)
    // 0x741b18: mov             x1, x0
    // 0x741b1c: ldur            x5, [fp, #-0x20]
    // 0x741b20: ldur            x6, [fp, #-0x18]
    // 0x741b24: r2 = Instance_Icon
    //     0x741b24: add             x2, PP, #0x19, lsl #12  ; [pp+0x19940] Obj!Icon@a1e131
    //     0x741b28: ldr             x2, [x2, #0x940]
    // 0x741b2c: r3 = Instance_Text
    //     0x741b2c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19948] Obj!Text@a1b041
    //     0x741b30: ldr             x3, [x3, #0x948]
    // 0x741b34: stur            x0, [fp, #-0x18]
    // 0x741b38: r0 = _TextButtonWithIcon()
    //     0x741b38: bl              #0x6d1660  ; [package:flutter/src/material/text_button.dart] _TextButtonWithIcon::_TextButtonWithIcon
    // 0x741b3c: r1 = Null
    //     0x741b3c: mov             x1, NULL
    // 0x741b40: r2 = 4
    //     0x741b40: mov             x2, #4
    // 0x741b44: r0 = AllocateArray()
    //     0x741b44: bl              #0x9280a0  ; AllocateArrayStub
    // 0x741b48: mov             x2, x0
    // 0x741b4c: ldur            x0, [fp, #-0x28]
    // 0x741b50: stur            x2, [fp, #-0x20]
    // 0x741b54: StoreField: r2->field_f = r0
    //     0x741b54: stur            w0, [x2, #0xf]
    // 0x741b58: ldur            x0, [fp, #-0x18]
    // 0x741b5c: StoreField: r2->field_13 = r0
    //     0x741b5c: stur            w0, [x2, #0x13]
    // 0x741b60: r1 = <Widget>
    //     0x741b60: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x741b64: r0 = AllocateGrowableArray()
    //     0x741b64: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x741b68: mov             x1, x0
    // 0x741b6c: ldur            x0, [fp, #-0x20]
    // 0x741b70: stur            x1, [fp, #-0x18]
    // 0x741b74: StoreField: r1->field_f = r0
    //     0x741b74: stur            w0, [x1, #0xf]
    // 0x741b78: r2 = 4
    //     0x741b78: mov             x2, #4
    // 0x741b7c: StoreField: r1->field_b = r2
    //     0x741b7c: stur            w2, [x1, #0xb]
    // 0x741b80: r0 = Row()
    //     0x741b80: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x741b84: mov             x3, x0
    // 0x741b88: r0 = Instance_Axis
    //     0x741b88: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x741b8c: stur            x3, [fp, #-0x20]
    // 0x741b90: StoreField: r3->field_f = r0
    //     0x741b90: stur            w0, [x3, #0xf]
    // 0x741b94: r1 = Instance_MainAxisAlignment
    //     0x741b94: add             x1, PP, #0x14, lsl #12  ; [pp+0x14d20] Obj!MainAxisAlignment@a2a691
    //     0x741b98: ldr             x1, [x1, #0xd20]
    // 0x741b9c: StoreField: r3->field_13 = r1
    //     0x741b9c: stur            w1, [x3, #0x13]
    // 0x741ba0: r4 = Instance_MainAxisSize
    //     0x741ba0: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x741ba4: ldr             x4, [x4, #0x330]
    // 0x741ba8: ArrayStore: r3[0] = r4  ; List_4
    //     0x741ba8: stur            w4, [x3, #0x17]
    // 0x741bac: r5 = Instance_CrossAxisAlignment
    //     0x741bac: add             x5, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x741bb0: ldr             x5, [x5, #0x238]
    // 0x741bb4: StoreField: r3->field_1b = r5
    //     0x741bb4: stur            w5, [x3, #0x1b]
    // 0x741bb8: r6 = Instance_VerticalDirection
    //     0x741bb8: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x741bbc: ldr             x6, [x6, #0x340]
    // 0x741bc0: StoreField: r3->field_23 = r6
    //     0x741bc0: stur            w6, [x3, #0x23]
    // 0x741bc4: r7 = Instance_Clip
    //     0x741bc4: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x741bc8: ldr             x7, [x7, #0x348]
    // 0x741bcc: StoreField: r3->field_2b = r7
    //     0x741bcc: stur            w7, [x3, #0x2b]
    // 0x741bd0: StoreField: r3->field_2f = rZR
    //     0x741bd0: stur            xzr, [x3, #0x2f]
    // 0x741bd4: ldur            x1, [fp, #-0x18]
    // 0x741bd8: StoreField: r3->field_b = r1
    //     0x741bd8: stur            w1, [x3, #0xb]
    // 0x741bdc: ldur            x8, [fp, #-8]
    // 0x741be0: LoadField: r9 = r8->field_f
    //     0x741be0: ldur            w9, [x8, #0xf]
    // 0x741be4: DecompressPointer r9
    //     0x741be4: add             x9, x9, HEAP, lsl #32
    // 0x741be8: ldur            x2, [fp, #-0x10]
    // 0x741bec: stur            x9, [fp, #-0x18]
    // 0x741bf0: r1 = Function '<anonymous closure>':.
    //     0x741bf0: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fe10] AnonymousClosure: (0x743638), in [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::build (0x7417e8)
    //     0x741bf4: ldr             x1, [x1, #0xe10]
    // 0x741bf8: r0 = AllocateClosure()
    //     0x741bf8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x741bfc: ldur            x1, [fp, #-0x18]
    // 0x741c00: mov             x5, x0
    // 0x741c04: r2 = Instance_IconData
    //     0x741c04: add             x2, PP, #0x14, lsl #12  ; [pp+0x14ea8] Obj!IconData@a09b41
    //     0x741c08: ldr             x2, [x2, #0xea8]
    // 0x741c0c: r3 = "Önceki"
    //     0x741c0c: add             x3, PP, #0x14, lsl #12  ; [pp+0x14eb0] "Önceki"
    //     0x741c10: ldr             x3, [x3, #0xeb0]
    // 0x741c14: r0 = _buildCalendarNavButton()
    //     0x741c14: bl              #0x74234c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::_buildCalendarNavButton
    // 0x741c18: r1 = <FlexParentData>
    //     0x741c18: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x741c1c: ldr             x1, [x1, #0x340]
    // 0x741c20: stur            x0, [fp, #-0x18]
    // 0x741c24: r0 = Expanded()
    //     0x741c24: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x741c28: mov             x3, x0
    // 0x741c2c: r0 = 1
    //     0x741c2c: mov             x0, #1
    // 0x741c30: stur            x3, [fp, #-0x28]
    // 0x741c34: StoreField: r3->field_13 = r0
    //     0x741c34: stur            x0, [x3, #0x13]
    // 0x741c38: r4 = Instance_FlexFit
    //     0x741c38: add             x4, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x741c3c: ldr             x4, [x4, #0x348]
    // 0x741c40: StoreField: r3->field_1b = r4
    //     0x741c40: stur            w4, [x3, #0x1b]
    // 0x741c44: ldur            x1, [fp, #-0x18]
    // 0x741c48: StoreField: r3->field_b = r1
    //     0x741c48: stur            w1, [x3, #0xb]
    // 0x741c4c: ldur            x5, [fp, #-8]
    // 0x741c50: LoadField: r6 = r5->field_f
    //     0x741c50: ldur            w6, [x5, #0xf]
    // 0x741c54: DecompressPointer r6
    //     0x741c54: add             x6, x6, HEAP, lsl #32
    // 0x741c58: ldur            x2, [fp, #-0x10]
    // 0x741c5c: stur            x6, [fp, #-0x18]
    // 0x741c60: r1 = Function '<anonymous closure>':.
    //     0x741c60: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fe18] AnonymousClosure: (0x74351c), in [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::build (0x7417e8)
    //     0x741c64: ldr             x1, [x1, #0xe18]
    // 0x741c68: r0 = AllocateClosure()
    //     0x741c68: bl              #0x9273d4  ; AllocateClosureStub
    // 0x741c6c: ldur            x1, [fp, #-0x18]
    // 0x741c70: mov             x5, x0
    // 0x741c74: r2 = Instance_IconData
    //     0x741c74: add             x2, PP, #0x14, lsl #12  ; [pp+0x14ec0] Obj!IconData@a09e41
    //     0x741c78: ldr             x2, [x2, #0xec0]
    // 0x741c7c: r3 = "Gün Seç"
    //     0x741c7c: add             x3, PP, #0x14, lsl #12  ; [pp+0x14ec8] "Gün Seç"
    //     0x741c80: ldr             x3, [x3, #0xec8]
    // 0x741c84: r0 = _buildCalendarNavButton()
    //     0x741c84: bl              #0x74234c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::_buildCalendarNavButton
    // 0x741c88: r1 = <FlexParentData>
    //     0x741c88: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x741c8c: ldr             x1, [x1, #0x340]
    // 0x741c90: stur            x0, [fp, #-0x18]
    // 0x741c94: r0 = Expanded()
    //     0x741c94: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x741c98: mov             x3, x0
    // 0x741c9c: r0 = 1
    //     0x741c9c: mov             x0, #1
    // 0x741ca0: stur            x3, [fp, #-0x38]
    // 0x741ca4: StoreField: r3->field_13 = r0
    //     0x741ca4: stur            x0, [x3, #0x13]
    // 0x741ca8: r4 = Instance_FlexFit
    //     0x741ca8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x741cac: ldr             x4, [x4, #0x348]
    // 0x741cb0: StoreField: r3->field_1b = r4
    //     0x741cb0: stur            w4, [x3, #0x1b]
    // 0x741cb4: ldur            x1, [fp, #-0x18]
    // 0x741cb8: StoreField: r3->field_b = r1
    //     0x741cb8: stur            w1, [x3, #0xb]
    // 0x741cbc: ldur            x5, [fp, #-8]
    // 0x741cc0: LoadField: r6 = r5->field_f
    //     0x741cc0: ldur            w6, [x5, #0xf]
    // 0x741cc4: DecompressPointer r6
    //     0x741cc4: add             x6, x6, HEAP, lsl #32
    // 0x741cc8: ldur            x2, [fp, #-0x10]
    // 0x741ccc: stur            x6, [fp, #-0x18]
    // 0x741cd0: r1 = Function '<anonymous closure>':.
    //     0x741cd0: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fe20] AnonymousClosure: (0x7434a0), in [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::build (0x7417e8)
    //     0x741cd4: ldr             x1, [x1, #0xe20]
    // 0x741cd8: r0 = AllocateClosure()
    //     0x741cd8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x741cdc: ldur            x1, [fp, #-0x18]
    // 0x741ce0: mov             x5, x0
    // 0x741ce4: r2 = Instance_IconData
    //     0x741ce4: add             x2, PP, #0x14, lsl #12  ; [pp+0x14ed8] Obj!IconData@a09b21
    //     0x741ce8: ldr             x2, [x2, #0xed8]
    // 0x741cec: r3 = "Sonraki"
    //     0x741cec: add             x3, PP, #0x14, lsl #12  ; [pp+0x14ee0] "Sonraki"
    //     0x741cf0: ldr             x3, [x3, #0xee0]
    // 0x741cf4: r0 = _buildCalendarNavButton()
    //     0x741cf4: bl              #0x74234c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::_buildCalendarNavButton
    // 0x741cf8: r1 = <FlexParentData>
    //     0x741cf8: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x741cfc: ldr             x1, [x1, #0x340]
    // 0x741d00: stur            x0, [fp, #-0x18]
    // 0x741d04: r0 = Expanded()
    //     0x741d04: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x741d08: mov             x3, x0
    // 0x741d0c: r0 = 1
    //     0x741d0c: mov             x0, #1
    // 0x741d10: stur            x3, [fp, #-0x40]
    // 0x741d14: StoreField: r3->field_13 = r0
    //     0x741d14: stur            x0, [x3, #0x13]
    // 0x741d18: r4 = Instance_FlexFit
    //     0x741d18: add             x4, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x741d1c: ldr             x4, [x4, #0x348]
    // 0x741d20: StoreField: r3->field_1b = r4
    //     0x741d20: stur            w4, [x3, #0x1b]
    // 0x741d24: ldur            x1, [fp, #-0x18]
    // 0x741d28: StoreField: r3->field_b = r1
    //     0x741d28: stur            w1, [x3, #0xb]
    // 0x741d2c: r1 = Null
    //     0x741d2c: mov             x1, NULL
    // 0x741d30: r2 = 10
    //     0x741d30: mov             x2, #0xa
    // 0x741d34: r0 = AllocateArray()
    //     0x741d34: bl              #0x9280a0  ; AllocateArrayStub
    // 0x741d38: mov             x2, x0
    // 0x741d3c: ldur            x0, [fp, #-0x28]
    // 0x741d40: stur            x2, [fp, #-0x18]
    // 0x741d44: StoreField: r2->field_f = r0
    //     0x741d44: stur            w0, [x2, #0xf]
    // 0x741d48: r16 = Instance_SizedBox
    //     0x741d48: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ee8] Obj!SizedBox@a1fa31
    //     0x741d4c: ldr             x16, [x16, #0xee8]
    // 0x741d50: StoreField: r2->field_13 = r16
    //     0x741d50: stur            w16, [x2, #0x13]
    // 0x741d54: ldur            x0, [fp, #-0x38]
    // 0x741d58: ArrayStore: r2[0] = r0  ; List_4
    //     0x741d58: stur            w0, [x2, #0x17]
    // 0x741d5c: r16 = Instance_SizedBox
    //     0x741d5c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ee8] Obj!SizedBox@a1fa31
    //     0x741d60: ldr             x16, [x16, #0xee8]
    // 0x741d64: StoreField: r2->field_1b = r16
    //     0x741d64: stur            w16, [x2, #0x1b]
    // 0x741d68: ldur            x0, [fp, #-0x40]
    // 0x741d6c: StoreField: r2->field_1f = r0
    //     0x741d6c: stur            w0, [x2, #0x1f]
    // 0x741d70: r1 = <Widget>
    //     0x741d70: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x741d74: r0 = AllocateGrowableArray()
    //     0x741d74: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x741d78: mov             x1, x0
    // 0x741d7c: ldur            x0, [fp, #-0x18]
    // 0x741d80: stur            x1, [fp, #-0x28]
    // 0x741d84: StoreField: r1->field_f = r0
    //     0x741d84: stur            w0, [x1, #0xf]
    // 0x741d88: r0 = 10
    //     0x741d88: mov             x0, #0xa
    // 0x741d8c: StoreField: r1->field_b = r0
    //     0x741d8c: stur            w0, [x1, #0xb]
    // 0x741d90: r0 = Row()
    //     0x741d90: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x741d94: mov             x3, x0
    // 0x741d98: r0 = Instance_Axis
    //     0x741d98: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x741d9c: stur            x3, [fp, #-0x18]
    // 0x741da0: StoreField: r3->field_f = r0
    //     0x741da0: stur            w0, [x3, #0xf]
    // 0x741da4: r0 = Instance_MainAxisAlignment
    //     0x741da4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x741da8: ldr             x0, [x0, #0x230]
    // 0x741dac: StoreField: r3->field_13 = r0
    //     0x741dac: stur            w0, [x3, #0x13]
    // 0x741db0: r4 = Instance_MainAxisSize
    //     0x741db0: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x741db4: ldr             x4, [x4, #0x330]
    // 0x741db8: ArrayStore: r3[0] = r4  ; List_4
    //     0x741db8: stur            w4, [x3, #0x17]
    // 0x741dbc: r5 = Instance_CrossAxisAlignment
    //     0x741dbc: add             x5, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x741dc0: ldr             x5, [x5, #0x338]
    // 0x741dc4: StoreField: r3->field_1b = r5
    //     0x741dc4: stur            w5, [x3, #0x1b]
    // 0x741dc8: r6 = Instance_VerticalDirection
    //     0x741dc8: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x741dcc: ldr             x6, [x6, #0x340]
    // 0x741dd0: StoreField: r3->field_23 = r6
    //     0x741dd0: stur            w6, [x3, #0x23]
    // 0x741dd4: r7 = Instance_Clip
    //     0x741dd4: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x741dd8: ldr             x7, [x7, #0x348]
    // 0x741ddc: StoreField: r3->field_2b = r7
    //     0x741ddc: stur            w7, [x3, #0x2b]
    // 0x741de0: StoreField: r3->field_2f = rZR
    //     0x741de0: stur            xzr, [x3, #0x2f]
    // 0x741de4: ldur            x1, [fp, #-0x28]
    // 0x741de8: StoreField: r3->field_b = r1
    //     0x741de8: stur            w1, [x3, #0xb]
    // 0x741dec: r1 = Null
    //     0x741dec: mov             x1, NULL
    // 0x741df0: r2 = 6
    //     0x741df0: mov             x2, #6
    // 0x741df4: r0 = AllocateArray()
    //     0x741df4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x741df8: mov             x2, x0
    // 0x741dfc: ldur            x0, [fp, #-0x20]
    // 0x741e00: stur            x2, [fp, #-0x28]
    // 0x741e04: StoreField: r2->field_f = r0
    //     0x741e04: stur            w0, [x2, #0xf]
    // 0x741e08: r16 = Instance_SizedBox
    //     0x741e08: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ef0] Obj!SizedBox@a1fa11
    //     0x741e0c: ldr             x16, [x16, #0xef0]
    // 0x741e10: StoreField: r2->field_13 = r16
    //     0x741e10: stur            w16, [x2, #0x13]
    // 0x741e14: ldur            x0, [fp, #-0x18]
    // 0x741e18: ArrayStore: r2[0] = r0  ; List_4
    //     0x741e18: stur            w0, [x2, #0x17]
    // 0x741e1c: r1 = <Widget>
    //     0x741e1c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x741e20: r0 = AllocateGrowableArray()
    //     0x741e20: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x741e24: mov             x1, x0
    // 0x741e28: ldur            x0, [fp, #-0x28]
    // 0x741e2c: stur            x1, [fp, #-0x18]
    // 0x741e30: StoreField: r1->field_f = r0
    //     0x741e30: stur            w0, [x1, #0xf]
    // 0x741e34: r0 = 6
    //     0x741e34: mov             x0, #6
    // 0x741e38: StoreField: r1->field_b = r0
    //     0x741e38: stur            w0, [x1, #0xb]
    // 0x741e3c: r0 = Column()
    //     0x741e3c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x741e40: mov             x1, x0
    // 0x741e44: r0 = Instance_Axis
    //     0x741e44: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x741e48: stur            x1, [fp, #-0x20]
    // 0x741e4c: StoreField: r1->field_f = r0
    //     0x741e4c: stur            w0, [x1, #0xf]
    // 0x741e50: r2 = Instance_MainAxisAlignment
    //     0x741e50: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x741e54: ldr             x2, [x2, #0x230]
    // 0x741e58: StoreField: r1->field_13 = r2
    //     0x741e58: stur            w2, [x1, #0x13]
    // 0x741e5c: r3 = Instance_MainAxisSize
    //     0x741e5c: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x741e60: ldr             x3, [x3, #0x330]
    // 0x741e64: ArrayStore: r1[0] = r3  ; List_4
    //     0x741e64: stur            w3, [x1, #0x17]
    // 0x741e68: r4 = Instance_CrossAxisAlignment
    //     0x741e68: add             x4, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x741e6c: ldr             x4, [x4, #0x238]
    // 0x741e70: StoreField: r1->field_1b = r4
    //     0x741e70: stur            w4, [x1, #0x1b]
    // 0x741e74: r4 = Instance_VerticalDirection
    //     0x741e74: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x741e78: ldr             x4, [x4, #0x340]
    // 0x741e7c: StoreField: r1->field_23 = r4
    //     0x741e7c: stur            w4, [x1, #0x23]
    // 0x741e80: r5 = Instance_Clip
    //     0x741e80: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x741e84: ldr             x5, [x5, #0x348]
    // 0x741e88: StoreField: r1->field_2b = r5
    //     0x741e88: stur            w5, [x1, #0x2b]
    // 0x741e8c: StoreField: r1->field_2f = rZR
    //     0x741e8c: stur            xzr, [x1, #0x2f]
    // 0x741e90: ldur            x6, [fp, #-0x18]
    // 0x741e94: StoreField: r1->field_b = r6
    //     0x741e94: stur            w6, [x1, #0xb]
    // 0x741e98: r0 = Container()
    //     0x741e98: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x741e9c: stur            x0, [fp, #-0x18]
    // 0x741ea0: r16 = Instance_EdgeInsets
    //     0x741ea0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x741ea4: ldr             x16, [x16, #0x240]
    // 0x741ea8: ldur            lr, [fp, #-0x30]
    // 0x741eac: stp             lr, x16, [SP, #8]
    // 0x741eb0: ldur            x16, [fp, #-0x20]
    // 0x741eb4: str             x16, [SP]
    // 0x741eb8: mov             x1, x0
    // 0x741ebc: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x741ebc: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x741ec0: ldr             x4, [x4, #0x1e8]
    // 0x741ec4: r0 = Container()
    //     0x741ec4: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x741ec8: r0 = Padding()
    //     0x741ec8: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x741ecc: mov             x2, x0
    // 0x741ed0: r0 = Instance_EdgeInsets
    //     0x741ed0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x741ed4: ldr             x0, [x0, #0x240]
    // 0x741ed8: stur            x2, [fp, #-0x20]
    // 0x741edc: StoreField: r2->field_f = r0
    //     0x741edc: stur            w0, [x2, #0xf]
    // 0x741ee0: ldur            x0, [fp, #-0x18]
    // 0x741ee4: StoreField: r2->field_b = r0
    //     0x741ee4: stur            w0, [x2, #0xb]
    // 0x741ee8: ldur            x3, [fp, #-0x10]
    // 0x741eec: LoadField: r0 = r3->field_13
    //     0x741eec: ldur            w0, [x3, #0x13]
    // 0x741ef0: DecompressPointer r0
    //     0x741ef0: add             x0, x0, HEAP, lsl #32
    // 0x741ef4: LoadField: r1 = r0->field_27
    //     0x741ef4: ldur            w1, [x0, #0x27]
    // 0x741ef8: DecompressPointer r1
    //     0x741ef8: add             x1, x1, HEAP, lsl #32
    // 0x741efc: tbnz            w1, #4, #0x741f10
    // 0x741f00: mov             x0, x2
    // 0x741f04: r2 = Instance_Center
    //     0x741f04: add             x2, PP, #0x18, lsl #12  ; [pp+0x18f40] Obj!Center@a1fe11
    //     0x741f08: ldr             x2, [x2, #0xf40]
    // 0x741f0c: b               #0x741fcc
    // 0x741f10: LoadField: r1 = r0->field_2b
    //     0x741f10: ldur            w1, [x0, #0x2b]
    // 0x741f14: DecompressPointer r1
    //     0x741f14: add             x1, x1, HEAP, lsl #32
    // 0x741f18: r0 = LoadClassIdInstr(r1)
    //     0x741f18: ldur            x0, [x1, #-1]
    //     0x741f1c: ubfx            x0, x0, #0xc, #0x14
    // 0x741f20: r0 = GDT[cid_x0 + 0xcda7]()
    //     0x741f20: mov             x17, #0xcda7
    //     0x741f24: add             lr, x0, x17
    //     0x741f28: ldr             lr, [x21, lr, lsl #3]
    //     0x741f2c: blr             lr
    // 0x741f30: tbnz            w0, #4, #0x741f48
    // 0x741f34: ldur            x0, [fp, #-8]
    // 0x741f38: LoadField: r1 = r0->field_f
    //     0x741f38: ldur            w1, [x0, #0xf]
    // 0x741f3c: DecompressPointer r1
    //     0x741f3c: add             x1, x1, HEAP, lsl #32
    // 0x741f40: r0 = _buildCalendarEmptyState()
    //     0x741f40: bl              #0x7420ac  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::_buildCalendarEmptyState
    // 0x741f44: b               #0x741fc4
    // 0x741f48: ldur            x2, [fp, #-0x10]
    // 0x741f4c: LoadField: r0 = r2->field_13
    //     0x741f4c: ldur            w0, [x2, #0x13]
    // 0x741f50: DecompressPointer r0
    //     0x741f50: add             x0, x0, HEAP, lsl #32
    // 0x741f54: LoadField: r1 = r0->field_2b
    //     0x741f54: ldur            w1, [x0, #0x2b]
    // 0x741f58: DecompressPointer r1
    //     0x741f58: add             x1, x1, HEAP, lsl #32
    // 0x741f5c: r0 = LoadClassIdInstr(r1)
    //     0x741f5c: ldur            x0, [x1, #-1]
    //     0x741f60: ubfx            x0, x0, #0xc, #0x14
    // 0x741f64: str             x1, [SP]
    // 0x741f68: r0 = GDT[cid_x0 + 0x879f]()
    //     0x741f68: mov             x17, #0x879f
    //     0x741f6c: add             lr, x0, x17
    //     0x741f70: ldr             lr, [x21, lr, lsl #3]
    //     0x741f74: blr             lr
    // 0x741f78: r3 = LoadInt32Instr(r0)
    //     0x741f78: sbfx            x3, x0, #1, #0x1f
    // 0x741f7c: ldur            x2, [fp, #-0x10]
    // 0x741f80: stur            x3, [fp, #-0x48]
    // 0x741f84: r1 = Function '<anonymous closure>':.
    //     0x741f84: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fe28] AnonymousClosure: (0x74262c), in [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::build (0x7417e8)
    //     0x741f88: ldr             x1, [x1, #0xe28]
    // 0x741f8c: r0 = AllocateClosure()
    //     0x741f8c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x741f90: stur            x0, [fp, #-8]
    // 0x741f94: r0 = ListView()
    //     0x741f94: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x741f98: stur            x0, [fp, #-0x10]
    // 0x741f9c: r16 = Instance_EdgeInsets
    //     0x741f9c: add             x16, PP, #0xc, lsl #12  ; [pp+0xce88] Obj!EdgeInsets@a0be11
    //     0x741fa0: ldr             x16, [x16, #0xe88]
    // 0x741fa4: str             x16, [SP]
    // 0x741fa8: mov             x1, x0
    // 0x741fac: ldur            x2, [fp, #-8]
    // 0x741fb0: ldur            x3, [fp, #-0x48]
    // 0x741fb4: r4 = const [0, 0x4, 0x1, 0x3, padding, 0x3, null]
    //     0x741fb4: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e60] List(7) [0, 0x4, 0x1, 0x3, "padding", 0x3, Null]
    //     0x741fb8: ldr             x4, [x4, #0xe60]
    // 0x741fbc: r0 = ListView.builder()
    //     0x741fbc: bl              #0x6ce4a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.builder
    // 0x741fc0: ldur            x0, [fp, #-0x10]
    // 0x741fc4: mov             x2, x0
    // 0x741fc8: ldur            x0, [fp, #-0x20]
    // 0x741fcc: stur            x2, [fp, #-8]
    // 0x741fd0: r1 = <FlexParentData>
    //     0x741fd0: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x741fd4: ldr             x1, [x1, #0x340]
    // 0x741fd8: r0 = Expanded()
    //     0x741fd8: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x741fdc: mov             x3, x0
    // 0x741fe0: r0 = 1
    //     0x741fe0: mov             x0, #1
    // 0x741fe4: stur            x3, [fp, #-0x10]
    // 0x741fe8: StoreField: r3->field_13 = r0
    //     0x741fe8: stur            x0, [x3, #0x13]
    // 0x741fec: r0 = Instance_FlexFit
    //     0x741fec: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x741ff0: ldr             x0, [x0, #0x348]
    // 0x741ff4: StoreField: r3->field_1b = r0
    //     0x741ff4: stur            w0, [x3, #0x1b]
    // 0x741ff8: ldur            x0, [fp, #-8]
    // 0x741ffc: StoreField: r3->field_b = r0
    //     0x741ffc: stur            w0, [x3, #0xb]
    // 0x742000: r1 = Null
    //     0x742000: mov             x1, NULL
    // 0x742004: r2 = 4
    //     0x742004: mov             x2, #4
    // 0x742008: r0 = AllocateArray()
    //     0x742008: bl              #0x9280a0  ; AllocateArrayStub
    // 0x74200c: mov             x2, x0
    // 0x742010: ldur            x0, [fp, #-0x20]
    // 0x742014: stur            x2, [fp, #-8]
    // 0x742018: StoreField: r2->field_f = r0
    //     0x742018: stur            w0, [x2, #0xf]
    // 0x74201c: ldur            x0, [fp, #-0x10]
    // 0x742020: StoreField: r2->field_13 = r0
    //     0x742020: stur            w0, [x2, #0x13]
    // 0x742024: r1 = <Widget>
    //     0x742024: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x742028: r0 = AllocateGrowableArray()
    //     0x742028: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x74202c: mov             x1, x0
    // 0x742030: ldur            x0, [fp, #-8]
    // 0x742034: stur            x1, [fp, #-0x10]
    // 0x742038: StoreField: r1->field_f = r0
    //     0x742038: stur            w0, [x1, #0xf]
    // 0x74203c: r0 = 4
    //     0x74203c: mov             x0, #4
    // 0x742040: StoreField: r1->field_b = r0
    //     0x742040: stur            w0, [x1, #0xb]
    // 0x742044: r0 = Column()
    //     0x742044: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x742048: r1 = Instance_Axis
    //     0x742048: ldr             x1, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x74204c: StoreField: r0->field_f = r1
    //     0x74204c: stur            w1, [x0, #0xf]
    // 0x742050: r1 = Instance_MainAxisAlignment
    //     0x742050: add             x1, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x742054: ldr             x1, [x1, #0x230]
    // 0x742058: StoreField: r0->field_13 = r1
    //     0x742058: stur            w1, [x0, #0x13]
    // 0x74205c: r1 = Instance_MainAxisSize
    //     0x74205c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x742060: ldr             x1, [x1, #0x330]
    // 0x742064: ArrayStore: r0[0] = r1  ; List_4
    //     0x742064: stur            w1, [x0, #0x17]
    // 0x742068: r1 = Instance_CrossAxisAlignment
    //     0x742068: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x74206c: ldr             x1, [x1, #0x338]
    // 0x742070: StoreField: r0->field_1b = r1
    //     0x742070: stur            w1, [x0, #0x1b]
    // 0x742074: r1 = Instance_VerticalDirection
    //     0x742074: add             x1, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x742078: ldr             x1, [x1, #0x340]
    // 0x74207c: StoreField: r0->field_23 = r1
    //     0x74207c: stur            w1, [x0, #0x23]
    // 0x742080: r1 = Instance_Clip
    //     0x742080: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x742084: ldr             x1, [x1, #0x348]
    // 0x742088: StoreField: r0->field_2b = r1
    //     0x742088: stur            w1, [x0, #0x2b]
    // 0x74208c: StoreField: r0->field_2f = rZR
    //     0x74208c: stur            xzr, [x0, #0x2f]
    // 0x742090: ldur            x1, [fp, #-0x10]
    // 0x742094: StoreField: r0->field_b = r1
    //     0x742094: stur            w1, [x0, #0xb]
    // 0x742098: LeaveFrame
    //     0x742098: mov             SP, fp
    //     0x74209c: ldp             fp, lr, [SP], #0x10
    // 0x7420a0: ret
    //     0x7420a0: ret             
    // 0x7420a4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7420a4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7420a8: b               #0x741868
  }
  _ _buildCalendarEmptyState(/* No info */) {
    // ** addr: 0x7420ac, size: 0x2a0
    // 0x7420ac: EnterFrame
    //     0x7420ac: stp             fp, lr, [SP, #-0x10]!
    //     0x7420b0: mov             fp, SP
    // 0x7420b4: AllocStack(0x40)
    //     0x7420b4: sub             SP, SP, #0x40
    // 0x7420b8: SetupParameters(_CalendarTabState this /* r1 => r2, fp-0x8 */)
    //     0x7420b8: mov             x2, x1
    //     0x7420bc: stur            x1, [fp, #-8]
    // 0x7420c0: CheckStackOverflow
    //     0x7420c0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7420c4: cmp             SP, x16
    //     0x7420c8: b.ls            #0x742344
    // 0x7420cc: r16 = 0.200000
    //     0x7420cc: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x7420d0: ldr             x16, [x16, #0x1f0]
    // 0x7420d4: str             x16, [SP]
    // 0x7420d8: r1 = Instance_Color
    //     0x7420d8: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x7420dc: ldr             x1, [x1, #0xf30]
    // 0x7420e0: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7420e0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7420e4: ldr             x4, [x4, #0x198]
    // 0x7420e8: r0 = withValues()
    //     0x7420e8: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7420ec: stur            x0, [fp, #-0x10]
    // 0x7420f0: r0 = BoxDecoration()
    //     0x7420f0: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7420f4: mov             x2, x0
    // 0x7420f8: ldur            x0, [fp, #-0x10]
    // 0x7420fc: stur            x2, [fp, #-0x18]
    // 0x742100: StoreField: r2->field_7 = r0
    //     0x742100: stur            w0, [x2, #7]
    // 0x742104: r0 = Instance_BoxShape
    //     0x742104: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x742108: ldr             x0, [x0, #0x1a0]
    // 0x74210c: StoreField: r2->field_23 = r0
    //     0x74210c: stur            w0, [x2, #0x23]
    // 0x742110: r16 = 0.600000
    //     0x742110: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bc38] 0.6
    //     0x742114: ldr             x16, [x16, #0xc38]
    // 0x742118: str             x16, [SP]
    // 0x74211c: r1 = Instance_Color
    //     0x74211c: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x742120: ldr             x1, [x1, #0xf30]
    // 0x742124: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x742124: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x742128: ldr             x4, [x4, #0x198]
    // 0x74212c: r0 = withValues()
    //     0x74212c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x742130: stur            x0, [fp, #-0x10]
    // 0x742134: r0 = Icon()
    //     0x742134: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x742138: mov             x1, x0
    // 0x74213c: r0 = Instance_IconData
    //     0x74213c: add             x0, PP, #0x15, lsl #12  ; [pp+0x15278] Obj!IconData@a0a681
    //     0x742140: ldr             x0, [x0, #0x278]
    // 0x742144: stur            x1, [fp, #-0x20]
    // 0x742148: StoreField: r1->field_b = r0
    //     0x742148: stur            w0, [x1, #0xb]
    // 0x74214c: r0 = 56.000000
    //     0x74214c: add             x0, PP, #0x12, lsl #12  ; [pp+0x123a0] 56
    //     0x742150: ldr             x0, [x0, #0x3a0]
    // 0x742154: StoreField: r1->field_f = r0
    //     0x742154: stur            w0, [x1, #0xf]
    // 0x742158: ldur            x0, [fp, #-0x10]
    // 0x74215c: StoreField: r1->field_23 = r0
    //     0x74215c: stur            w0, [x1, #0x23]
    // 0x742160: r0 = Container()
    //     0x742160: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x742164: stur            x0, [fp, #-0x10]
    // 0x742168: r16 = Instance_EdgeInsets
    //     0x742168: ldr             x16, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x74216c: ldur            lr, [fp, #-0x18]
    // 0x742170: stp             lr, x16, [SP, #8]
    // 0x742174: ldur            x16, [fp, #-0x20]
    // 0x742178: str             x16, [SP]
    // 0x74217c: mov             x1, x0
    // 0x742180: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x742180: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x742184: ldr             x4, [x4, #0x1e8]
    // 0x742188: r0 = Container()
    //     0x742188: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x74218c: r0 = Radius()
    //     0x74218c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x742190: d0 = 12.000000
    //     0x742190: fmov            d0, #12.00000000
    // 0x742194: stur            x0, [fp, #-0x18]
    // 0x742198: StoreField: r0->field_7 = d0
    //     0x742198: stur            d0, [x0, #7]
    // 0x74219c: StoreField: r0->field_f = d0
    //     0x74219c: stur            d0, [x0, #0xf]
    // 0x7421a0: r0 = BorderRadius()
    //     0x7421a0: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7421a4: mov             x1, x0
    // 0x7421a8: ldur            x0, [fp, #-0x18]
    // 0x7421ac: stur            x1, [fp, #-0x20]
    // 0x7421b0: StoreField: r1->field_7 = r0
    //     0x7421b0: stur            w0, [x1, #7]
    // 0x7421b4: StoreField: r1->field_b = r0
    //     0x7421b4: stur            w0, [x1, #0xb]
    // 0x7421b8: StoreField: r1->field_f = r0
    //     0x7421b8: stur            w0, [x1, #0xf]
    // 0x7421bc: StoreField: r1->field_13 = r0
    //     0x7421bc: stur            w0, [x1, #0x13]
    // 0x7421c0: r0 = RoundedRectangleBorder()
    //     0x7421c0: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x7421c4: mov             x1, x0
    // 0x7421c8: ldur            x0, [fp, #-0x20]
    // 0x7421cc: StoreField: r1->field_b = r0
    //     0x7421cc: stur            w0, [x1, #0xb]
    // 0x7421d0: r0 = Instance_BorderSide
    //     0x7421d0: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x7421d4: ldr             x0, [x0, #0xcb8]
    // 0x7421d8: StoreField: r1->field_7 = r0
    //     0x7421d8: stur            w0, [x1, #7]
    // 0x7421dc: r16 = Instance_Color
    //     0x7421dc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x7421e0: ldr             x16, [x16, #0xf30]
    // 0x7421e4: r30 = Instance_Color
    //     0x7421e4: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7421e8: stp             lr, x16, [SP, #0x10]
    // 0x7421ec: r16 = Instance_EdgeInsets
    //     0x7421ec: add             x16, PP, #0x13, lsl #12  ; [pp+0x139a0] Obj!EdgeInsets@a0c4a1
    //     0x7421f0: ldr             x16, [x16, #0x9a0]
    // 0x7421f4: stp             x1, x16, [SP]
    // 0x7421f8: r4 = const [0, 0x4, 0x4, 0, backgroundColor, 0, foregroundColor, 0x1, padding, 0x2, shape, 0x3, null]
    //     0x7421f8: add             x4, PP, #0x11, lsl #12  ; [pp+0x11bb0] List(13) [0, 0x4, 0x4, 0, "backgroundColor", 0, "foregroundColor", 0x1, "padding", 0x2, "shape", 0x3, Null]
    //     0x7421fc: ldr             x4, [x4, #0xbb0]
    // 0x742200: r0 = styleFrom()
    //     0x742200: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x742204: ldur            x2, [fp, #-8]
    // 0x742208: r1 = Function '_showAddEventDialog@1036384510':.
    //     0x742208: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fe08] AnonymousClosure: (0x7436b4), in [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::_showAddEventDialog (0x7436ec)
    //     0x74220c: ldr             x1, [x1, #0xe08]
    // 0x742210: stur            x0, [fp, #-8]
    // 0x742214: r0 = AllocateClosure()
    //     0x742214: bl              #0x9273d4  ; AllocateClosureStub
    // 0x742218: stur            x0, [fp, #-0x18]
    // 0x74221c: r0 = _ElevatedButtonWithIcon()
    //     0x74221c: bl              #0x6d5508  ; Allocate_ElevatedButtonWithIconStub -> _ElevatedButtonWithIcon (size=0x3c)
    // 0x742220: mov             x1, x0
    // 0x742224: ldur            x5, [fp, #-0x18]
    // 0x742228: ldur            x6, [fp, #-8]
    // 0x74222c: r2 = Instance_Icon
    //     0x74222c: add             x2, PP, #0x12, lsl #12  ; [pp+0x125b0] Obj!Icon@a1e1b1
    //     0x742230: ldr             x2, [x2, #0x5b0]
    // 0x742234: r3 = Instance_Text
    //     0x742234: add             x3, PP, #0x1c, lsl #12  ; [pp+0x1c4c8] Obj!Text@a1d251
    //     0x742238: ldr             x3, [x3, #0x4c8]
    // 0x74223c: stur            x0, [fp, #-8]
    // 0x742240: r0 = _ElevatedButtonWithIcon()
    //     0x742240: bl              #0x6d5420  ; [package:flutter/src/material/elevated_button.dart] _ElevatedButtonWithIcon::_ElevatedButtonWithIcon
    // 0x742244: r1 = Null
    //     0x742244: mov             x1, NULL
    // 0x742248: r2 = 14
    //     0x742248: mov             x2, #0xe
    // 0x74224c: r0 = AllocateArray()
    //     0x74224c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x742250: mov             x2, x0
    // 0x742254: ldur            x0, [fp, #-0x10]
    // 0x742258: stur            x2, [fp, #-0x18]
    // 0x74225c: StoreField: r2->field_f = r0
    //     0x74225c: stur            w0, [x2, #0xf]
    // 0x742260: r16 = Instance_SizedBox
    //     0x742260: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x742264: ldr             x16, [x16, #0x310]
    // 0x742268: StoreField: r2->field_13 = r16
    //     0x742268: stur            w16, [x2, #0x13]
    // 0x74226c: r16 = Instance_Text
    //     0x74226c: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fe80] Obj!Text@a1d201
    //     0x742270: ldr             x16, [x16, #0xe80]
    // 0x742274: ArrayStore: r2[0] = r16  ; List_4
    //     0x742274: stur            w16, [x2, #0x17]
    // 0x742278: r16 = Instance_SizedBox
    //     0x742278: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x74227c: ldr             x16, [x16, #0x318]
    // 0x742280: StoreField: r2->field_1b = r16
    //     0x742280: stur            w16, [x2, #0x1b]
    // 0x742284: r16 = Instance_Text
    //     0x742284: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fe88] Obj!Text@a1d1b1
    //     0x742288: ldr             x16, [x16, #0xe88]
    // 0x74228c: StoreField: r2->field_1f = r16
    //     0x74228c: stur            w16, [x2, #0x1f]
    // 0x742290: r16 = Instance_SizedBox
    //     0x742290: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x742294: ldr             x16, [x16, #0x220]
    // 0x742298: StoreField: r2->field_23 = r16
    //     0x742298: stur            w16, [x2, #0x23]
    // 0x74229c: ldur            x0, [fp, #-8]
    // 0x7422a0: StoreField: r2->field_27 = r0
    //     0x7422a0: stur            w0, [x2, #0x27]
    // 0x7422a4: r1 = <Widget>
    //     0x7422a4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7422a8: r0 = AllocateGrowableArray()
    //     0x7422a8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7422ac: mov             x1, x0
    // 0x7422b0: ldur            x0, [fp, #-0x18]
    // 0x7422b4: stur            x1, [fp, #-8]
    // 0x7422b8: StoreField: r1->field_f = r0
    //     0x7422b8: stur            w0, [x1, #0xf]
    // 0x7422bc: r0 = 14
    //     0x7422bc: mov             x0, #0xe
    // 0x7422c0: StoreField: r1->field_b = r0
    //     0x7422c0: stur            w0, [x1, #0xb]
    // 0x7422c4: r0 = Column()
    //     0x7422c4: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7422c8: mov             x1, x0
    // 0x7422cc: r0 = Instance_Axis
    //     0x7422cc: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7422d0: stur            x1, [fp, #-0x10]
    // 0x7422d4: StoreField: r1->field_f = r0
    //     0x7422d4: stur            w0, [x1, #0xf]
    // 0x7422d8: r0 = Instance_MainAxisAlignment
    //     0x7422d8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x7422dc: ldr             x0, [x0, #0x328]
    // 0x7422e0: StoreField: r1->field_13 = r0
    //     0x7422e0: stur            w0, [x1, #0x13]
    // 0x7422e4: r0 = Instance_MainAxisSize
    //     0x7422e4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7422e8: ldr             x0, [x0, #0x330]
    // 0x7422ec: ArrayStore: r1[0] = r0  ; List_4
    //     0x7422ec: stur            w0, [x1, #0x17]
    // 0x7422f0: r0 = Instance_CrossAxisAlignment
    //     0x7422f0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7422f4: ldr             x0, [x0, #0x338]
    // 0x7422f8: StoreField: r1->field_1b = r0
    //     0x7422f8: stur            w0, [x1, #0x1b]
    // 0x7422fc: r0 = Instance_VerticalDirection
    //     0x7422fc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x742300: ldr             x0, [x0, #0x340]
    // 0x742304: StoreField: r1->field_23 = r0
    //     0x742304: stur            w0, [x1, #0x23]
    // 0x742308: r0 = Instance_Clip
    //     0x742308: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x74230c: ldr             x0, [x0, #0x348]
    // 0x742310: StoreField: r1->field_2b = r0
    //     0x742310: stur            w0, [x1, #0x2b]
    // 0x742314: StoreField: r1->field_2f = rZR
    //     0x742314: stur            xzr, [x1, #0x2f]
    // 0x742318: ldur            x0, [fp, #-8]
    // 0x74231c: StoreField: r1->field_b = r0
    //     0x74231c: stur            w0, [x1, #0xb]
    // 0x742320: r0 = Center()
    //     0x742320: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x742324: r1 = Instance_Alignment
    //     0x742324: add             x1, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x742328: ldr             x1, [x1, #0x60]
    // 0x74232c: StoreField: r0->field_f = r1
    //     0x74232c: stur            w1, [x0, #0xf]
    // 0x742330: ldur            x1, [fp, #-0x10]
    // 0x742334: StoreField: r0->field_b = r1
    //     0x742334: stur            w1, [x0, #0xb]
    // 0x742338: LeaveFrame
    //     0x742338: mov             SP, fp
    //     0x74233c: ldp             fp, lr, [SP], #0x10
    // 0x742340: ret
    //     0x742340: ret             
    // 0x742344: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x742344: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x742348: b               #0x7420cc
  }
  _ _buildCalendarNavButton(/* No info */) {
    // ** addr: 0x74234c, size: 0x2e0
    // 0x74234c: EnterFrame
    //     0x74234c: stp             fp, lr, [SP, #-0x10]!
    //     0x742350: mov             fp, SP
    // 0x742354: AllocStack(0x58)
    //     0x742354: sub             SP, SP, #0x58
    // 0x742358: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */, dynamic _ /* r3 => r3, fp-0x10 */, dynamic _ /* r5 => r5, fp-0x18 */)
    //     0x742358: stur            x2, [fp, #-8]
    //     0x74235c: stur            x3, [fp, #-0x10]
    //     0x742360: stur            x5, [fp, #-0x18]
    // 0x742364: CheckStackOverflow
    //     0x742364: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x742368: cmp             SP, x16
    //     0x74236c: b.ls            #0x742624
    // 0x742370: r0 = Radius()
    //     0x742370: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x742374: d0 = 10.000000
    //     0x742374: fmov            d0, #10.00000000
    // 0x742378: stur            x0, [fp, #-0x20]
    // 0x74237c: StoreField: r0->field_7 = d0
    //     0x74237c: stur            d0, [x0, #7]
    // 0x742380: StoreField: r0->field_f = d0
    //     0x742380: stur            d0, [x0, #0xf]
    // 0x742384: r0 = BorderRadius()
    //     0x742384: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x742388: mov             x2, x0
    // 0x74238c: ldur            x0, [fp, #-0x20]
    // 0x742390: stur            x2, [fp, #-0x28]
    // 0x742394: StoreField: r2->field_7 = r0
    //     0x742394: stur            w0, [x2, #7]
    // 0x742398: StoreField: r2->field_b = r0
    //     0x742398: stur            w0, [x2, #0xb]
    // 0x74239c: StoreField: r2->field_f = r0
    //     0x74239c: stur            w0, [x2, #0xf]
    // 0x7423a0: StoreField: r2->field_13 = r0
    //     0x7423a0: stur            w0, [x2, #0x13]
    // 0x7423a4: r16 = 0.050000
    //     0x7423a4: ldr             x16, [PP, #0x5020]  ; [pp+0x5020] 0.05
    // 0x7423a8: str             x16, [SP]
    // 0x7423ac: r1 = Instance_Color
    //     0x7423ac: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7423b0: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7423b0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7423b4: ldr             x4, [x4, #0x198]
    // 0x7423b8: r0 = withValues()
    //     0x7423b8: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7423bc: stur            x0, [fp, #-0x20]
    // 0x7423c0: r0 = Radius()
    //     0x7423c0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7423c4: d0 = 10.000000
    //     0x7423c4: fmov            d0, #10.00000000
    // 0x7423c8: stur            x0, [fp, #-0x30]
    // 0x7423cc: StoreField: r0->field_7 = d0
    //     0x7423cc: stur            d0, [x0, #7]
    // 0x7423d0: StoreField: r0->field_f = d0
    //     0x7423d0: stur            d0, [x0, #0xf]
    // 0x7423d4: r0 = BorderRadius()
    //     0x7423d4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7423d8: mov             x2, x0
    // 0x7423dc: ldur            x0, [fp, #-0x30]
    // 0x7423e0: stur            x2, [fp, #-0x38]
    // 0x7423e4: StoreField: r2->field_7 = r0
    //     0x7423e4: stur            w0, [x2, #7]
    // 0x7423e8: StoreField: r2->field_b = r0
    //     0x7423e8: stur            w0, [x2, #0xb]
    // 0x7423ec: StoreField: r2->field_f = r0
    //     0x7423ec: stur            w0, [x2, #0xf]
    // 0x7423f0: StoreField: r2->field_13 = r0
    //     0x7423f0: stur            w0, [x2, #0x13]
    // 0x7423f4: r16 = 0.100000
    //     0x7423f4: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x7423f8: ldr             x16, [x16, #0x1f8]
    // 0x7423fc: str             x16, [SP]
    // 0x742400: r1 = Instance_Color
    //     0x742400: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x742404: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x742404: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x742408: ldr             x4, [x4, #0x198]
    // 0x74240c: r0 = withValues()
    //     0x74240c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x742410: str             x0, [SP]
    // 0x742414: r1 = Null
    //     0x742414: mov             x1, NULL
    // 0x742418: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x742418: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x74241c: ldr             x4, [x4, #0x788]
    // 0x742420: r0 = Border.all()
    //     0x742420: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x742424: stur            x0, [fp, #-0x30]
    // 0x742428: r0 = BoxDecoration()
    //     0x742428: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x74242c: mov             x1, x0
    // 0x742430: ldur            x0, [fp, #-0x20]
    // 0x742434: stur            x1, [fp, #-0x40]
    // 0x742438: StoreField: r1->field_7 = r0
    //     0x742438: stur            w0, [x1, #7]
    // 0x74243c: ldur            x0, [fp, #-0x30]
    // 0x742440: StoreField: r1->field_f = r0
    //     0x742440: stur            w0, [x1, #0xf]
    // 0x742444: ldur            x0, [fp, #-0x38]
    // 0x742448: StoreField: r1->field_13 = r0
    //     0x742448: stur            w0, [x1, #0x13]
    // 0x74244c: r0 = Instance_BoxShape
    //     0x74244c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x742450: ldr             x0, [x0, #0x1c8]
    // 0x742454: StoreField: r1->field_23 = r0
    //     0x742454: stur            w0, [x1, #0x23]
    // 0x742458: r0 = Icon()
    //     0x742458: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x74245c: mov             x1, x0
    // 0x742460: ldur            x0, [fp, #-8]
    // 0x742464: stur            x1, [fp, #-0x20]
    // 0x742468: StoreField: r1->field_b = r0
    //     0x742468: stur            w0, [x1, #0xb]
    // 0x74246c: r0 = 18.000000
    //     0x74246c: add             x0, PP, #0xc, lsl #12  ; [pp+0xce08] 18
    //     0x742470: ldr             x0, [x0, #0xe08]
    // 0x742474: StoreField: r1->field_f = r0
    //     0x742474: stur            w0, [x1, #0xf]
    // 0x742478: r0 = Instance_Color
    //     0x742478: ldr             x0, [PP, #0x5768]  ; [pp+0x5768] Obj!Color@a21c71
    // 0x74247c: StoreField: r1->field_23 = r0
    //     0x74247c: stur            w0, [x1, #0x23]
    // 0x742480: r0 = Text()
    //     0x742480: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x742484: mov             x3, x0
    // 0x742488: ldur            x0, [fp, #-0x10]
    // 0x74248c: stur            x3, [fp, #-8]
    // 0x742490: StoreField: r3->field_b = r0
    //     0x742490: stur            w0, [x3, #0xb]
    // 0x742494: r0 = Instance_TextStyle
    //     0x742494: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fe40] Obj!TextStyle@a18781
    //     0x742498: ldr             x0, [x0, #0xe40]
    // 0x74249c: StoreField: r3->field_13 = r0
    //     0x74249c: stur            w0, [x3, #0x13]
    // 0x7424a0: r1 = Null
    //     0x7424a0: mov             x1, NULL
    // 0x7424a4: r2 = 6
    //     0x7424a4: mov             x2, #6
    // 0x7424a8: r0 = AllocateArray()
    //     0x7424a8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7424ac: mov             x2, x0
    // 0x7424b0: ldur            x0, [fp, #-0x20]
    // 0x7424b4: stur            x2, [fp, #-0x10]
    // 0x7424b8: StoreField: r2->field_f = r0
    //     0x7424b8: stur            w0, [x2, #0xf]
    // 0x7424bc: r16 = Instance_SizedBox
    //     0x7424bc: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c100] Obj!SizedBox@a1fbf1
    //     0x7424c0: ldr             x16, [x16, #0x100]
    // 0x7424c4: StoreField: r2->field_13 = r16
    //     0x7424c4: stur            w16, [x2, #0x13]
    // 0x7424c8: ldur            x0, [fp, #-8]
    // 0x7424cc: ArrayStore: r2[0] = r0  ; List_4
    //     0x7424cc: stur            w0, [x2, #0x17]
    // 0x7424d0: r1 = <Widget>
    //     0x7424d0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7424d4: r0 = AllocateGrowableArray()
    //     0x7424d4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7424d8: mov             x1, x0
    // 0x7424dc: ldur            x0, [fp, #-0x10]
    // 0x7424e0: stur            x1, [fp, #-8]
    // 0x7424e4: StoreField: r1->field_f = r0
    //     0x7424e4: stur            w0, [x1, #0xf]
    // 0x7424e8: r0 = 6
    //     0x7424e8: mov             x0, #6
    // 0x7424ec: StoreField: r1->field_b = r0
    //     0x7424ec: stur            w0, [x1, #0xb]
    // 0x7424f0: r0 = Row()
    //     0x7424f0: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7424f4: mov             x1, x0
    // 0x7424f8: r0 = Instance_Axis
    //     0x7424f8: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7424fc: stur            x1, [fp, #-0x10]
    // 0x742500: StoreField: r1->field_f = r0
    //     0x742500: stur            w0, [x1, #0xf]
    // 0x742504: r0 = Instance_MainAxisAlignment
    //     0x742504: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x742508: ldr             x0, [x0, #0x328]
    // 0x74250c: StoreField: r1->field_13 = r0
    //     0x74250c: stur            w0, [x1, #0x13]
    // 0x742510: r0 = Instance_MainAxisSize
    //     0x742510: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x742514: ldr             x0, [x0, #0x330]
    // 0x742518: ArrayStore: r1[0] = r0  ; List_4
    //     0x742518: stur            w0, [x1, #0x17]
    // 0x74251c: r0 = Instance_CrossAxisAlignment
    //     0x74251c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x742520: ldr             x0, [x0, #0x338]
    // 0x742524: StoreField: r1->field_1b = r0
    //     0x742524: stur            w0, [x1, #0x1b]
    // 0x742528: r0 = Instance_VerticalDirection
    //     0x742528: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x74252c: ldr             x0, [x0, #0x340]
    // 0x742530: StoreField: r1->field_23 = r0
    //     0x742530: stur            w0, [x1, #0x23]
    // 0x742534: r0 = Instance_Clip
    //     0x742534: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x742538: ldr             x0, [x0, #0x348]
    // 0x74253c: StoreField: r1->field_2b = r0
    //     0x74253c: stur            w0, [x1, #0x2b]
    // 0x742540: StoreField: r1->field_2f = rZR
    //     0x742540: stur            xzr, [x1, #0x2f]
    // 0x742544: ldur            x2, [fp, #-8]
    // 0x742548: StoreField: r1->field_b = r2
    //     0x742548: stur            w2, [x1, #0xb]
    // 0x74254c: r0 = Container()
    //     0x74254c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x742550: stur            x0, [fp, #-8]
    // 0x742554: r16 = Instance_EdgeInsets
    //     0x742554: add             x16, PP, #0x19, lsl #12  ; [pp+0x196a8] Obj!EdgeInsets@a0c831
    //     0x742558: ldr             x16, [x16, #0x6a8]
    // 0x74255c: ldur            lr, [fp, #-0x40]
    // 0x742560: stp             lr, x16, [SP, #8]
    // 0x742564: ldur            x16, [fp, #-0x10]
    // 0x742568: str             x16, [SP]
    // 0x74256c: mov             x1, x0
    // 0x742570: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x742570: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x742574: ldr             x4, [x4, #0x1e8]
    // 0x742578: r0 = Container()
    //     0x742578: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x74257c: r0 = InkWell()
    //     0x74257c: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x742580: mov             x1, x0
    // 0x742584: ldur            x0, [fp, #-8]
    // 0x742588: stur            x1, [fp, #-0x10]
    // 0x74258c: StoreField: r1->field_b = r0
    //     0x74258c: stur            w0, [x1, #0xb]
    // 0x742590: ldur            x0, [fp, #-0x18]
    // 0x742594: StoreField: r1->field_f = r0
    //     0x742594: stur            w0, [x1, #0xf]
    // 0x742598: r0 = true
    //     0x742598: add             x0, NULL, #0x20  ; true
    // 0x74259c: StoreField: r1->field_47 = r0
    //     0x74259c: stur            w0, [x1, #0x47]
    // 0x7425a0: r2 = Instance_BoxShape
    //     0x7425a0: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7425a4: ldr             x2, [x2, #0x1c8]
    // 0x7425a8: StoreField: r1->field_4b = r2
    //     0x7425a8: stur            w2, [x1, #0x4b]
    // 0x7425ac: ldur            x2, [fp, #-0x28]
    // 0x7425b0: StoreField: r1->field_53 = r2
    //     0x7425b0: stur            w2, [x1, #0x53]
    // 0x7425b4: StoreField: r1->field_73 = r0
    //     0x7425b4: stur            w0, [x1, #0x73]
    // 0x7425b8: r2 = false
    //     0x7425b8: add             x2, NULL, #0x30  ; false
    // 0x7425bc: StoreField: r1->field_77 = r2
    //     0x7425bc: stur            w2, [x1, #0x77]
    // 0x7425c0: StoreField: r1->field_87 = r0
    //     0x7425c0: stur            w0, [x1, #0x87]
    // 0x7425c4: StoreField: r1->field_7f = r2
    //     0x7425c4: stur            w2, [x1, #0x7f]
    // 0x7425c8: r0 = Material()
    //     0x7425c8: bl              #0x6633b0  ; AllocateMaterialStub -> Material (size=0x44)
    // 0x7425cc: r1 = Instance_MaterialType
    //     0x7425cc: add             x1, PP, #0x14, lsl #12  ; [pp+0x14fa0] Obj!MaterialType@a2b611
    //     0x7425d0: ldr             x1, [x1, #0xfa0]
    // 0x7425d4: StoreField: r0->field_f = r1
    //     0x7425d4: stur            w1, [x0, #0xf]
    // 0x7425d8: ArrayStore: r0[0] = rZR  ; List_8
    //     0x7425d8: stur            xzr, [x0, #0x17]
    // 0x7425dc: r1 = Instance_Color
    //     0x7425dc: add             x1, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x7425e0: ldr             x1, [x1, #0x860]
    // 0x7425e4: StoreField: r0->field_1f = r1
    //     0x7425e4: stur            w1, [x0, #0x1f]
    // 0x7425e8: r1 = true
    //     0x7425e8: add             x1, NULL, #0x20  ; true
    // 0x7425ec: StoreField: r0->field_33 = r1
    //     0x7425ec: stur            w1, [x0, #0x33]
    // 0x7425f0: r1 = Instance_Clip
    //     0x7425f0: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7425f4: ldr             x1, [x1, #0x348]
    // 0x7425f8: StoreField: r0->field_37 = r1
    //     0x7425f8: stur            w1, [x0, #0x37]
    // 0x7425fc: r1 = Instance_Duration
    //     0x7425fc: add             x1, PP, #0x11, lsl #12  ; [pp+0x112c8] Obj!Duration@a2dc71
    //     0x742600: ldr             x1, [x1, #0x2c8]
    // 0x742604: StoreField: r0->field_3b = r1
    //     0x742604: stur            w1, [x0, #0x3b]
    // 0x742608: ldur            x1, [fp, #-0x10]
    // 0x74260c: StoreField: r0->field_b = r1
    //     0x74260c: stur            w1, [x0, #0xb]
    // 0x742610: r1 = false
    //     0x742610: add             x1, NULL, #0x30  ; false
    // 0x742614: StoreField: r0->field_13 = r1
    //     0x742614: stur            w1, [x0, #0x13]
    // 0x742618: LeaveFrame
    //     0x742618: mov             SP, fp
    //     0x74261c: ldp             fp, lr, [SP], #0x10
    // 0x742620: ret
    //     0x742620: ret             
    // 0x742624: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x742624: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x742628: b               #0x742370
  }
  [closure] Padding <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x74262c, size: 0xd0
    // 0x74262c: EnterFrame
    //     0x74262c: stp             fp, lr, [SP, #-0x10]!
    //     0x742630: mov             fp, SP
    // 0x742634: AllocStack(0x20)
    //     0x742634: sub             SP, SP, #0x20
    // 0x742638: SetupParameters([dynamic _ /* r0 */])
    //     0x742638: ldr             x0, [fp, #0x20]
    //     0x74263c: ldur            w1, [x0, #0x17]
    //     0x742640: add             x1, x1, HEAP, lsl #32
    //     0x742644: stur            x1, [fp, #-8]
    // 0x742648: CheckStackOverflow
    //     0x742648: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74264c: cmp             SP, x16
    //     0x742650: b.ls            #0x7426f4
    // 0x742654: LoadField: r0 = r1->field_13
    //     0x742654: ldur            w0, [x1, #0x13]
    // 0x742658: DecompressPointer r0
    //     0x742658: add             x0, x0, HEAP, lsl #32
    // 0x74265c: LoadField: r2 = r0->field_2b
    //     0x74265c: ldur            w2, [x0, #0x2b]
    // 0x742660: DecompressPointer r2
    //     0x742660: add             x2, x2, HEAP, lsl #32
    // 0x742664: r0 = LoadClassIdInstr(r2)
    //     0x742664: ldur            x0, [x2, #-1]
    //     0x742668: ubfx            x0, x0, #0xc, #0x14
    // 0x74266c: ldr             x16, [fp, #0x10]
    // 0x742670: stp             x16, x2, [SP]
    // 0x742674: r0 = GDT[cid_x0 + -0xdfc]()
    //     0x742674: sub             lr, x0, #0xdfc
    //     0x742678: ldr             lr, [x21, lr, lsl #3]
    //     0x74267c: blr             lr
    // 0x742680: mov             x4, x0
    // 0x742684: ldur            x0, [fp, #-8]
    // 0x742688: stur            x4, [fp, #-0x10]
    // 0x74268c: LoadField: r1 = r0->field_13
    //     0x74268c: ldur            w1, [x0, #0x13]
    // 0x742690: DecompressPointer r1
    //     0x742690: add             x1, x1, HEAP, lsl #32
    // 0x742694: ArrayLoad: r2 = r4[0]  ; List_4
    //     0x742694: ldur            w2, [x4, #0x17]
    // 0x742698: DecompressPointer r2
    //     0x742698: add             x2, x2, HEAP, lsl #32
    // 0x74269c: LoadField: r3 = r4->field_1b
    //     0x74269c: ldur            x3, [x4, #0x1b]
    // 0x7426a0: r0 = getEndTime()
    //     0x7426a0: bl              #0x6d1c78  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::getEndTime
    // 0x7426a4: mov             x1, x0
    // 0x7426a8: ldur            x0, [fp, #-8]
    // 0x7426ac: LoadField: r2 = r0->field_b
    //     0x7426ac: ldur            w2, [x0, #0xb]
    // 0x7426b0: DecompressPointer r2
    //     0x7426b0: add             x2, x2, HEAP, lsl #32
    // 0x7426b4: LoadField: r0 = r2->field_f
    //     0x7426b4: ldur            w0, [x2, #0xf]
    // 0x7426b8: DecompressPointer r0
    //     0x7426b8: add             x0, x0, HEAP, lsl #32
    // 0x7426bc: mov             x2, x1
    // 0x7426c0: mov             x1, x0
    // 0x7426c4: ldur            x3, [fp, #-0x10]
    // 0x7426c8: r0 = _buildCalendarEventCard()
    //     0x7426c8: bl              #0x7426fc  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::_buildCalendarEventCard
    // 0x7426cc: stur            x0, [fp, #-8]
    // 0x7426d0: r0 = Padding()
    //     0x7426d0: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x7426d4: r1 = Instance_EdgeInsets
    //     0x7426d4: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f18] Obj!EdgeInsets@a0c261
    //     0x7426d8: ldr             x1, [x1, #0xf18]
    // 0x7426dc: StoreField: r0->field_f = r1
    //     0x7426dc: stur            w1, [x0, #0xf]
    // 0x7426e0: ldur            x1, [fp, #-8]
    // 0x7426e4: StoreField: r0->field_b = r1
    //     0x7426e4: stur            w1, [x0, #0xb]
    // 0x7426e8: LeaveFrame
    //     0x7426e8: mov             SP, fp
    //     0x7426ec: ldp             fp, lr, [SP], #0x10
    // 0x7426f0: ret
    //     0x7426f0: ret             
    // 0x7426f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7426f4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7426f8: b               #0x742654
  }
  _ _buildCalendarEventCard(/* No info */) {
    // ** addr: 0x7426fc, size: 0xab8
    // 0x7426fc: EnterFrame
    //     0x7426fc: stp             fp, lr, [SP, #-0x10]!
    //     0x742700: mov             fp, SP
    // 0x742704: AllocStack(0x70)
    //     0x742704: sub             SP, SP, #0x70
    // 0x742708: SetupParameters(_CalendarTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x742708: stur            x1, [fp, #-8]
    //     0x74270c: stur            x2, [fp, #-0x10]
    //     0x742710: stur            x3, [fp, #-0x18]
    // 0x742714: CheckStackOverflow
    //     0x742714: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x742718: cmp             SP, x16
    //     0x74271c: b.ls            #0x7431a8
    // 0x742720: r1 = 2
    //     0x742720: mov             x1, #2
    // 0x742724: r0 = AllocateContext()
    //     0x742724: bl              #0x927010  ; AllocateContextStub
    // 0x742728: ldur            x1, [fp, #-8]
    // 0x74272c: stur            x0, [fp, #-0x20]
    // 0x742730: StoreField: r0->field_f = r1
    //     0x742730: stur            w1, [x0, #0xf]
    // 0x742734: ldur            x2, [fp, #-0x18]
    // 0x742738: StoreField: r0->field_13 = r2
    //     0x742738: stur            w2, [x0, #0x13]
    // 0x74273c: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x74273c: ldur            w3, [x2, #0x17]
    // 0x742740: DecompressPointer r3
    //     0x742740: add             x3, x3, HEAP, lsl #32
    // 0x742744: mov             x2, x3
    // 0x742748: r0 = _isEventUpcoming()
    //     0x742748: bl              #0x7431b4  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::_isEventUpcoming
    // 0x74274c: stur            x0, [fp, #-8]
    // 0x742750: r16 = 0.080000
    //     0x742750: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e30] 0.08
    //     0x742754: ldr             x16, [x16, #0xe30]
    // 0x742758: str             x16, [SP]
    // 0x74275c: r1 = Instance_Color
    //     0x74275c: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x742760: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x742760: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x742764: ldr             x4, [x4, #0x198]
    // 0x742768: r0 = withValues()
    //     0x742768: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x74276c: stur            x0, [fp, #-0x18]
    // 0x742770: r0 = Radius()
    //     0x742770: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x742774: d0 = 14.000000
    //     0x742774: fmov            d0, #14.00000000
    // 0x742778: stur            x0, [fp, #-0x28]
    // 0x74277c: StoreField: r0->field_7 = d0
    //     0x74277c: stur            d0, [x0, #7]
    // 0x742780: StoreField: r0->field_f = d0
    //     0x742780: stur            d0, [x0, #0xf]
    // 0x742784: r0 = BorderRadius()
    //     0x742784: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x742788: mov             x2, x0
    // 0x74278c: ldur            x0, [fp, #-0x28]
    // 0x742790: stur            x2, [fp, #-0x30]
    // 0x742794: StoreField: r2->field_7 = r0
    //     0x742794: stur            w0, [x2, #7]
    // 0x742798: StoreField: r2->field_b = r0
    //     0x742798: stur            w0, [x2, #0xb]
    // 0x74279c: StoreField: r2->field_f = r0
    //     0x74279c: stur            w0, [x2, #0xf]
    // 0x7427a0: StoreField: r2->field_13 = r0
    //     0x7427a0: stur            w0, [x2, #0x13]
    // 0x7427a4: ldur            x0, [fp, #-8]
    // 0x7427a8: tbnz            w0, #4, #0x7427d4
    // 0x7427ac: r16 = 0.300000
    //     0x7427ac: add             x16, PP, #0x12, lsl #12  ; [pp+0x12320] 0.3
    //     0x7427b0: ldr             x16, [x16, #0x320]
    // 0x7427b4: str             x16, [SP]
    // 0x7427b8: r1 = Instance_Color
    //     0x7427b8: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x7427bc: ldr             x1, [x1, #0xf30]
    // 0x7427c0: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7427c0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7427c4: ldr             x4, [x4, #0x198]
    // 0x7427c8: r0 = withValues()
    //     0x7427c8: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7427cc: mov             x1, x0
    // 0x7427d0: b               #0x7427f8
    // 0x7427d4: r16 = 0.300000
    //     0x7427d4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12320] 0.3
    //     0x7427d8: ldr             x16, [x16, #0x320]
    // 0x7427dc: str             x16, [SP]
    // 0x7427e0: r1 = Instance_MaterialColor
    //     0x7427e0: add             x1, PP, #0x14, lsl #12  ; [pp+0x141f8] Obj!MaterialColor@a25ba1
    //     0x7427e4: ldr             x1, [x1, #0x1f8]
    // 0x7427e8: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7427e8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7427ec: ldr             x4, [x4, #0x198]
    // 0x7427f0: r0 = withValues()
    //     0x7427f0: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7427f4: mov             x1, x0
    // 0x7427f8: ldur            x2, [fp, #-8]
    // 0x7427fc: ldur            x3, [fp, #-0x18]
    // 0x742800: ldur            x0, [fp, #-0x30]
    // 0x742804: str             x1, [SP]
    // 0x742808: r1 = Null
    //     0x742808: mov             x1, NULL
    // 0x74280c: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x74280c: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x742810: ldr             x4, [x4, #0x788]
    // 0x742814: r0 = Border.all()
    //     0x742814: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x742818: stur            x0, [fp, #-0x28]
    // 0x74281c: r0 = BoxDecoration()
    //     0x74281c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x742820: mov             x1, x0
    // 0x742824: ldur            x0, [fp, #-0x18]
    // 0x742828: stur            x1, [fp, #-0x38]
    // 0x74282c: StoreField: r1->field_7 = r0
    //     0x74282c: stur            w0, [x1, #7]
    // 0x742830: ldur            x0, [fp, #-0x28]
    // 0x742834: StoreField: r1->field_f = r0
    //     0x742834: stur            w0, [x1, #0xf]
    // 0x742838: ldur            x0, [fp, #-0x30]
    // 0x74283c: StoreField: r1->field_13 = r0
    //     0x74283c: stur            w0, [x1, #0x13]
    // 0x742840: r0 = Instance_BoxShape
    //     0x742840: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x742844: ldr             x0, [x0, #0x1c8]
    // 0x742848: StoreField: r1->field_23 = r0
    //     0x742848: stur            w0, [x1, #0x23]
    // 0x74284c: r0 = Radius()
    //     0x74284c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x742850: d0 = 14.000000
    //     0x742850: fmov            d0, #14.00000000
    // 0x742854: stur            x0, [fp, #-0x18]
    // 0x742858: StoreField: r0->field_7 = d0
    //     0x742858: stur            d0, [x0, #7]
    // 0x74285c: StoreField: r0->field_f = d0
    //     0x74285c: stur            d0, [x0, #0xf]
    // 0x742860: r0 = BorderRadius()
    //     0x742860: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x742864: mov             x3, x0
    // 0x742868: ldur            x0, [fp, #-0x18]
    // 0x74286c: stur            x3, [fp, #-0x28]
    // 0x742870: StoreField: r3->field_7 = r0
    //     0x742870: stur            w0, [x3, #7]
    // 0x742874: StoreField: r3->field_b = r0
    //     0x742874: stur            w0, [x3, #0xb]
    // 0x742878: StoreField: r3->field_f = r0
    //     0x742878: stur            w0, [x3, #0xf]
    // 0x74287c: StoreField: r3->field_13 = r0
    //     0x74287c: stur            w0, [x3, #0x13]
    // 0x742880: ldur            x0, [fp, #-8]
    // 0x742884: tbnz            w0, #4, #0x742894
    // 0x742888: r1 = Instance_Color
    //     0x742888: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x74288c: ldr             x1, [x1, #0xf30]
    // 0x742890: b               #0x7428b4
    // 0x742894: r1 = _ConstMap len:10
    //     0x742894: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f30] Map<int, Color>(10)
    //     0x742898: ldr             x1, [x1, #0xf30]
    // 0x74289c: r2 = 1200
    //     0x74289c: mov             x2, #0x4b0
    // 0x7428a0: r0 = []()
    //     0x7428a0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7428a4: cmp             w0, NULL
    // 0x7428a8: b.eq            #0x7431b0
    // 0x7428ac: mov             x1, x0
    // 0x7428b0: ldur            x0, [fp, #-8]
    // 0x7428b4: ldur            x2, [fp, #-0x20]
    // 0x7428b8: stur            x1, [fp, #-0x18]
    // 0x7428bc: r0 = Radius()
    //     0x7428bc: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7428c0: d0 = 4.000000
    //     0x7428c0: fmov            d0, #4.00000000
    // 0x7428c4: stur            x0, [fp, #-0x30]
    // 0x7428c8: StoreField: r0->field_7 = d0
    //     0x7428c8: stur            d0, [x0, #7]
    // 0x7428cc: StoreField: r0->field_f = d0
    //     0x7428cc: stur            d0, [x0, #0xf]
    // 0x7428d0: r0 = BorderRadius()
    //     0x7428d0: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7428d4: mov             x1, x0
    // 0x7428d8: ldur            x0, [fp, #-0x30]
    // 0x7428dc: stur            x1, [fp, #-0x40]
    // 0x7428e0: StoreField: r1->field_7 = r0
    //     0x7428e0: stur            w0, [x1, #7]
    // 0x7428e4: StoreField: r1->field_b = r0
    //     0x7428e4: stur            w0, [x1, #0xb]
    // 0x7428e8: StoreField: r1->field_f = r0
    //     0x7428e8: stur            w0, [x1, #0xf]
    // 0x7428ec: StoreField: r1->field_13 = r0
    //     0x7428ec: stur            w0, [x1, #0x13]
    // 0x7428f0: r0 = BoxDecoration()
    //     0x7428f0: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7428f4: mov             x1, x0
    // 0x7428f8: ldur            x0, [fp, #-0x18]
    // 0x7428fc: stur            x1, [fp, #-0x30]
    // 0x742900: StoreField: r1->field_7 = r0
    //     0x742900: stur            w0, [x1, #7]
    // 0x742904: ldur            x0, [fp, #-0x40]
    // 0x742908: StoreField: r1->field_13 = r0
    //     0x742908: stur            w0, [x1, #0x13]
    // 0x74290c: r0 = Instance_BoxShape
    //     0x74290c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x742910: ldr             x0, [x0, #0x1c8]
    // 0x742914: StoreField: r1->field_23 = r0
    //     0x742914: stur            w0, [x1, #0x23]
    // 0x742918: r0 = Container()
    //     0x742918: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x74291c: stur            x0, [fp, #-0x18]
    // 0x742920: r16 = 4.000000
    //     0x742920: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f38] 4
    //     0x742924: ldr             x16, [x16, #0xf38]
    // 0x742928: r30 = 64.000000
    //     0x742928: add             lr, PP, #0x14, lsl #12  ; [pp+0x14f40] 64
    //     0x74292c: ldr             lr, [lr, #0xf40]
    // 0x742930: stp             lr, x16, [SP, #8]
    // 0x742934: ldur            x16, [fp, #-0x30]
    // 0x742938: str             x16, [SP]
    // 0x74293c: mov             x1, x0
    // 0x742940: r4 = const [0, 0x4, 0x3, 0x1, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x742940: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a58] List(11) [0, 0x4, 0x3, 0x1, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x742944: ldr             x4, [x4, #0xa58]
    // 0x742948: r0 = Container()
    //     0x742948: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x74294c: ldur            x2, [fp, #-0x20]
    // 0x742950: LoadField: r0 = r2->field_13
    //     0x742950: ldur            w0, [x2, #0x13]
    // 0x742954: DecompressPointer r0
    //     0x742954: add             x0, x0, HEAP, lsl #32
    // 0x742958: LoadField: r1 = r0->field_b
    //     0x742958: ldur            w1, [x0, #0xb]
    // 0x74295c: DecompressPointer r1
    //     0x74295c: add             x1, x1, HEAP, lsl #32
    // 0x742960: stur            x1, [fp, #-0x30]
    // 0x742964: r0 = Text()
    //     0x742964: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x742968: mov             x2, x0
    // 0x74296c: ldur            x0, [fp, #-0x30]
    // 0x742970: stur            x2, [fp, #-0x40]
    // 0x742974: StoreField: r2->field_b = r0
    //     0x742974: stur            w0, [x2, #0xb]
    // 0x742978: r0 = Instance_TextStyle
    //     0x742978: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1faf0] Obj!TextStyle@a17ec1
    //     0x74297c: ldr             x0, [x0, #0xaf0]
    // 0x742980: StoreField: r2->field_13 = r0
    //     0x742980: stur            w0, [x2, #0x13]
    // 0x742984: r1 = <FlexParentData>
    //     0x742984: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x742988: ldr             x1, [x1, #0x340]
    // 0x74298c: r0 = Expanded()
    //     0x74298c: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x742990: mov             x2, x0
    // 0x742994: r0 = 1
    //     0x742994: mov             x0, #1
    // 0x742998: stur            x2, [fp, #-0x30]
    // 0x74299c: StoreField: r2->field_13 = r0
    //     0x74299c: stur            x0, [x2, #0x13]
    // 0x7429a0: r3 = Instance_FlexFit
    //     0x7429a0: add             x3, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7429a4: ldr             x3, [x3, #0x348]
    // 0x7429a8: StoreField: r2->field_1b = r3
    //     0x7429a8: stur            w3, [x2, #0x1b]
    // 0x7429ac: ldur            x1, [fp, #-0x40]
    // 0x7429b0: StoreField: r2->field_b = r1
    //     0x7429b0: stur            w1, [x2, #0xb]
    // 0x7429b4: ldur            x4, [fp, #-8]
    // 0x7429b8: tbnz            w4, #4, #0x7429e4
    // 0x7429bc: r16 = 0.200000
    //     0x7429bc: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x7429c0: ldr             x16, [x16, #0x1f0]
    // 0x7429c4: str             x16, [SP]
    // 0x7429c8: r1 = Instance_Color
    //     0x7429c8: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x7429cc: ldr             x1, [x1, #0xf30]
    // 0x7429d0: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7429d0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7429d4: ldr             x4, [x4, #0x198]
    // 0x7429d8: r0 = withValues()
    //     0x7429d8: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7429dc: mov             x1, x0
    // 0x7429e0: b               #0x742a08
    // 0x7429e4: r16 = 0.200000
    //     0x7429e4: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x7429e8: ldr             x16, [x16, #0x1f0]
    // 0x7429ec: str             x16, [SP]
    // 0x7429f0: r1 = Instance_MaterialColor
    //     0x7429f0: add             x1, PP, #0x14, lsl #12  ; [pp+0x141f8] Obj!MaterialColor@a25ba1
    //     0x7429f4: ldr             x1, [x1, #0x1f8]
    // 0x7429f8: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7429f8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7429fc: ldr             x4, [x4, #0x198]
    // 0x742a00: r0 = withValues()
    //     0x742a00: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x742a04: mov             x1, x0
    // 0x742a08: ldur            x0, [fp, #-8]
    // 0x742a0c: stur            x1, [fp, #-0x40]
    // 0x742a10: r0 = Radius()
    //     0x742a10: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x742a14: d0 = 8.000000
    //     0x742a14: fmov            d0, #8.00000000
    // 0x742a18: stur            x0, [fp, #-0x48]
    // 0x742a1c: StoreField: r0->field_7 = d0
    //     0x742a1c: stur            d0, [x0, #7]
    // 0x742a20: StoreField: r0->field_f = d0
    //     0x742a20: stur            d0, [x0, #0xf]
    // 0x742a24: r0 = BorderRadius()
    //     0x742a24: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x742a28: mov             x1, x0
    // 0x742a2c: ldur            x0, [fp, #-0x48]
    // 0x742a30: stur            x1, [fp, #-0x50]
    // 0x742a34: StoreField: r1->field_7 = r0
    //     0x742a34: stur            w0, [x1, #7]
    // 0x742a38: StoreField: r1->field_b = r0
    //     0x742a38: stur            w0, [x1, #0xb]
    // 0x742a3c: StoreField: r1->field_f = r0
    //     0x742a3c: stur            w0, [x1, #0xf]
    // 0x742a40: StoreField: r1->field_13 = r0
    //     0x742a40: stur            w0, [x1, #0x13]
    // 0x742a44: r0 = BoxDecoration()
    //     0x742a44: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x742a48: mov             x1, x0
    // 0x742a4c: ldur            x0, [fp, #-0x40]
    // 0x742a50: stur            x1, [fp, #-0x48]
    // 0x742a54: StoreField: r1->field_7 = r0
    //     0x742a54: stur            w0, [x1, #7]
    // 0x742a58: ldur            x0, [fp, #-0x50]
    // 0x742a5c: StoreField: r1->field_13 = r0
    //     0x742a5c: stur            w0, [x1, #0x13]
    // 0x742a60: r0 = Instance_BoxShape
    //     0x742a60: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x742a64: ldr             x0, [x0, #0x1c8]
    // 0x742a68: StoreField: r1->field_23 = r0
    //     0x742a68: stur            w0, [x1, #0x23]
    // 0x742a6c: ldur            x2, [fp, #-8]
    // 0x742a70: tbnz            w2, #4, #0x742a80
    // 0x742a74: r3 = "Yaklaşan"
    //     0x742a74: add             x3, PP, #0x14, lsl #12  ; [pp+0x14f80] "Yaklaşan"
    //     0x742a78: ldr             x3, [x3, #0xf80]
    // 0x742a7c: b               #0x742a88
    // 0x742a80: r3 = "Geçmiş"
    //     0x742a80: add             x3, PP, #0x1f, lsl #12  ; [pp+0x1fe30] "Geçmiş"
    //     0x742a84: ldr             x3, [x3, #0xe30]
    // 0x742a88: stur            x3, [fp, #-0x40]
    // 0x742a8c: tbnz            w2, #4, #0x742a9c
    // 0x742a90: r5 = Instance_Color
    //     0x742a90: add             x5, PP, #0x1a, lsl #12  ; [pp+0x1a388] Obj!Color@a254b1
    //     0x742a94: ldr             x5, [x5, #0x388]
    // 0x742a98: b               #0x742aa4
    // 0x742a9c: r5 = Instance_MaterialColor
    //     0x742a9c: add             x5, PP, #0x14, lsl #12  ; [pp+0x141f8] Obj!MaterialColor@a25ba1
    //     0x742aa0: ldr             x5, [x5, #0x1f8]
    // 0x742aa4: ldur            x4, [fp, #-0x20]
    // 0x742aa8: ldur            x2, [fp, #-0x30]
    // 0x742aac: stur            x5, [fp, #-8]
    // 0x742ab0: r0 = TextStyle()
    //     0x742ab0: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x742ab4: mov             x1, x0
    // 0x742ab8: r0 = true
    //     0x742ab8: add             x0, NULL, #0x20  ; true
    // 0x742abc: stur            x1, [fp, #-0x50]
    // 0x742ac0: StoreField: r1->field_7 = r0
    //     0x742ac0: stur            w0, [x1, #7]
    // 0x742ac4: ldur            x2, [fp, #-8]
    // 0x742ac8: StoreField: r1->field_b = r2
    //     0x742ac8: stur            w2, [x1, #0xb]
    // 0x742acc: r2 = 11.000000
    //     0x742acc: add             x2, PP, #0x14, lsl #12  ; [pp+0x14f60] 11
    //     0x742ad0: ldr             x2, [x2, #0xf60]
    // 0x742ad4: StoreField: r1->field_1f = r2
    //     0x742ad4: stur            w2, [x1, #0x1f]
    // 0x742ad8: r2 = Instance_FontWeight
    //     0x742ad8: add             x2, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x742adc: ldr             x2, [x2, #0x990]
    // 0x742ae0: StoreField: r1->field_23 = r2
    //     0x742ae0: stur            w2, [x1, #0x23]
    // 0x742ae4: r0 = Text()
    //     0x742ae4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x742ae8: mov             x1, x0
    // 0x742aec: ldur            x0, [fp, #-0x40]
    // 0x742af0: stur            x1, [fp, #-8]
    // 0x742af4: StoreField: r1->field_b = r0
    //     0x742af4: stur            w0, [x1, #0xb]
    // 0x742af8: ldur            x0, [fp, #-0x50]
    // 0x742afc: StoreField: r1->field_13 = r0
    //     0x742afc: stur            w0, [x1, #0x13]
    // 0x742b00: r0 = Container()
    //     0x742b00: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x742b04: stur            x0, [fp, #-0x40]
    // 0x742b08: r16 = Instance_EdgeInsets
    //     0x742b08: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a508] Obj!EdgeInsets@a0c351
    //     0x742b0c: ldr             x16, [x16, #0x508]
    // 0x742b10: ldur            lr, [fp, #-0x48]
    // 0x742b14: stp             lr, x16, [SP, #8]
    // 0x742b18: ldur            x16, [fp, #-8]
    // 0x742b1c: str             x16, [SP]
    // 0x742b20: mov             x1, x0
    // 0x742b24: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x742b24: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x742b28: ldr             x4, [x4, #0x1e8]
    // 0x742b2c: r0 = Container()
    //     0x742b2c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x742b30: r1 = Null
    //     0x742b30: mov             x1, NULL
    // 0x742b34: r2 = 4
    //     0x742b34: mov             x2, #4
    // 0x742b38: r0 = AllocateArray()
    //     0x742b38: bl              #0x9280a0  ; AllocateArrayStub
    // 0x742b3c: mov             x2, x0
    // 0x742b40: ldur            x0, [fp, #-0x30]
    // 0x742b44: stur            x2, [fp, #-8]
    // 0x742b48: StoreField: r2->field_f = r0
    //     0x742b48: stur            w0, [x2, #0xf]
    // 0x742b4c: ldur            x0, [fp, #-0x40]
    // 0x742b50: StoreField: r2->field_13 = r0
    //     0x742b50: stur            w0, [x2, #0x13]
    // 0x742b54: r1 = <Widget>
    //     0x742b54: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x742b58: r0 = AllocateGrowableArray()
    //     0x742b58: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x742b5c: mov             x1, x0
    // 0x742b60: ldur            x0, [fp, #-8]
    // 0x742b64: stur            x1, [fp, #-0x30]
    // 0x742b68: StoreField: r1->field_f = r0
    //     0x742b68: stur            w0, [x1, #0xf]
    // 0x742b6c: r2 = 4
    //     0x742b6c: mov             x2, #4
    // 0x742b70: StoreField: r1->field_b = r2
    //     0x742b70: stur            w2, [x1, #0xb]
    // 0x742b74: r0 = Row()
    //     0x742b74: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x742b78: mov             x3, x0
    // 0x742b7c: r0 = Instance_Axis
    //     0x742b7c: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x742b80: stur            x3, [fp, #-8]
    // 0x742b84: StoreField: r3->field_f = r0
    //     0x742b84: stur            w0, [x3, #0xf]
    // 0x742b88: r1 = Instance_MainAxisAlignment
    //     0x742b88: add             x1, PP, #0x14, lsl #12  ; [pp+0x14d20] Obj!MainAxisAlignment@a2a691
    //     0x742b8c: ldr             x1, [x1, #0xd20]
    // 0x742b90: StoreField: r3->field_13 = r1
    //     0x742b90: stur            w1, [x3, #0x13]
    // 0x742b94: r4 = Instance_MainAxisSize
    //     0x742b94: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x742b98: ldr             x4, [x4, #0x330]
    // 0x742b9c: ArrayStore: r3[0] = r4  ; List_4
    //     0x742b9c: stur            w4, [x3, #0x17]
    // 0x742ba0: r5 = Instance_CrossAxisAlignment
    //     0x742ba0: add             x5, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x742ba4: ldr             x5, [x5, #0x238]
    // 0x742ba8: StoreField: r3->field_1b = r5
    //     0x742ba8: stur            w5, [x3, #0x1b]
    // 0x742bac: r6 = Instance_VerticalDirection
    //     0x742bac: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x742bb0: ldr             x6, [x6, #0x340]
    // 0x742bb4: StoreField: r3->field_23 = r6
    //     0x742bb4: stur            w6, [x3, #0x23]
    // 0x742bb8: r7 = Instance_Clip
    //     0x742bb8: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x742bbc: ldr             x7, [x7, #0x348]
    // 0x742bc0: StoreField: r3->field_2b = r7
    //     0x742bc0: stur            w7, [x3, #0x2b]
    // 0x742bc4: StoreField: r3->field_2f = rZR
    //     0x742bc4: stur            xzr, [x3, #0x2f]
    // 0x742bc8: ldur            x1, [fp, #-0x30]
    // 0x742bcc: StoreField: r3->field_b = r1
    //     0x742bcc: stur            w1, [x3, #0xb]
    // 0x742bd0: r1 = Null
    //     0x742bd0: mov             x1, NULL
    // 0x742bd4: r2 = 2
    //     0x742bd4: mov             x2, #2
    // 0x742bd8: r0 = AllocateArray()
    //     0x742bd8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x742bdc: mov             x2, x0
    // 0x742be0: ldur            x0, [fp, #-8]
    // 0x742be4: stur            x2, [fp, #-0x30]
    // 0x742be8: StoreField: r2->field_f = r0
    //     0x742be8: stur            w0, [x2, #0xf]
    // 0x742bec: r1 = <Widget>
    //     0x742bec: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x742bf0: r0 = AllocateGrowableArray()
    //     0x742bf0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x742bf4: mov             x1, x0
    // 0x742bf8: ldur            x0, [fp, #-0x30]
    // 0x742bfc: stur            x1, [fp, #-0x40]
    // 0x742c00: StoreField: r1->field_f = r0
    //     0x742c00: stur            w0, [x1, #0xf]
    // 0x742c04: r0 = 2
    //     0x742c04: mov             x0, #2
    // 0x742c08: StoreField: r1->field_b = r0
    //     0x742c08: stur            w0, [x1, #0xb]
    // 0x742c0c: ldur            x2, [fp, #-0x20]
    // 0x742c10: LoadField: r0 = r2->field_13
    //     0x742c10: ldur            w0, [x2, #0x13]
    // 0x742c14: DecompressPointer r0
    //     0x742c14: add             x0, x0, HEAP, lsl #32
    // 0x742c18: LoadField: r3 = r0->field_f
    //     0x742c18: ldur            w3, [x0, #0xf]
    // 0x742c1c: DecompressPointer r3
    //     0x742c1c: add             x3, x3, HEAP, lsl #32
    // 0x742c20: stur            x3, [fp, #-8]
    // 0x742c24: cmp             w3, NULL
    // 0x742c28: b.eq            #0x742cb4
    // 0x742c2c: LoadField: r0 = r3->field_7
    //     0x742c2c: ldur            w0, [x3, #7]
    // 0x742c30: cbz             w0, #0x742cb4
    // 0x742c34: r0 = Text()
    //     0x742c34: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x742c38: mov             x3, x0
    // 0x742c3c: ldur            x0, [fp, #-8]
    // 0x742c40: stur            x3, [fp, #-0x30]
    // 0x742c44: StoreField: r3->field_b = r0
    //     0x742c44: stur            w0, [x3, #0xb]
    // 0x742c48: r0 = Instance_TextStyle
    //     0x742c48: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fe38] Obj!TextStyle@a187f1
    //     0x742c4c: ldr             x0, [x0, #0xe38]
    // 0x742c50: StoreField: r3->field_13 = r0
    //     0x742c50: stur            w0, [x3, #0x13]
    // 0x742c54: r0 = Instance_TextOverflow
    //     0x742c54: add             x0, PP, #0x12, lsl #12  ; [pp+0x12068] Obj!TextOverflow@a2a871
    //     0x742c58: ldr             x0, [x0, #0x68]
    // 0x742c5c: StoreField: r3->field_2b = r0
    //     0x742c5c: stur            w0, [x3, #0x2b]
    // 0x742c60: r0 = 4
    //     0x742c60: mov             x0, #4
    // 0x742c64: StoreField: r3->field_37 = r0
    //     0x742c64: stur            w0, [x3, #0x37]
    // 0x742c68: mov             x2, x0
    // 0x742c6c: r1 = Null
    //     0x742c6c: mov             x1, NULL
    // 0x742c70: r0 = AllocateArray()
    //     0x742c70: bl              #0x9280a0  ; AllocateArrayStub
    // 0x742c74: stur            x0, [fp, #-8]
    // 0x742c78: r16 = Instance_SizedBox
    //     0x742c78: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bc80] Obj!SizedBox@a1fd51
    //     0x742c7c: ldr             x16, [x16, #0xc80]
    // 0x742c80: StoreField: r0->field_f = r16
    //     0x742c80: stur            w16, [x0, #0xf]
    // 0x742c84: ldur            x1, [fp, #-0x30]
    // 0x742c88: StoreField: r0->field_13 = r1
    //     0x742c88: stur            w1, [x0, #0x13]
    // 0x742c8c: r1 = <Widget>
    //     0x742c8c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x742c90: r0 = AllocateGrowableArray()
    //     0x742c90: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x742c94: mov             x1, x0
    // 0x742c98: ldur            x0, [fp, #-8]
    // 0x742c9c: StoreField: r1->field_f = r0
    //     0x742c9c: stur            w0, [x1, #0xf]
    // 0x742ca0: r0 = 4
    //     0x742ca0: mov             x0, #4
    // 0x742ca4: StoreField: r1->field_b = r0
    //     0x742ca4: stur            w0, [x1, #0xb]
    // 0x742ca8: mov             x2, x1
    // 0x742cac: ldur            x1, [fp, #-0x40]
    // 0x742cb0: r0 = addAll()
    //     0x742cb0: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x742cb4: ldur            x0, [fp, #-0x40]
    // 0x742cb8: LoadField: r1 = r0->field_b
    //     0x742cb8: ldur            w1, [x0, #0xb]
    // 0x742cbc: LoadField: r2 = r0->field_f
    //     0x742cbc: ldur            w2, [x0, #0xf]
    // 0x742cc0: DecompressPointer r2
    //     0x742cc0: add             x2, x2, HEAP, lsl #32
    // 0x742cc4: LoadField: r3 = r2->field_b
    //     0x742cc4: ldur            w3, [x2, #0xb]
    // 0x742cc8: r2 = LoadInt32Instr(r1)
    //     0x742cc8: sbfx            x2, x1, #1, #0x1f
    // 0x742ccc: stur            x2, [fp, #-0x58]
    // 0x742cd0: r1 = LoadInt32Instr(r3)
    //     0x742cd0: sbfx            x1, x3, #1, #0x1f
    // 0x742cd4: cmp             x2, x1
    // 0x742cd8: b.ne            #0x742ce4
    // 0x742cdc: mov             x1, x0
    // 0x742ce0: r0 = _growToNextCapacity()
    //     0x742ce0: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x742ce4: ldur            x3, [fp, #-0x10]
    // 0x742ce8: ldur            x2, [fp, #-0x20]
    // 0x742cec: ldur            x0, [fp, #-0x40]
    // 0x742cf0: ldur            x1, [fp, #-0x58]
    // 0x742cf4: add             x4, x1, #1
    // 0x742cf8: lsl             x5, x4, #1
    // 0x742cfc: StoreField: r0->field_b = r5
    //     0x742cfc: stur            w5, [x0, #0xb]
    // 0x742d00: LoadField: r4 = r0->field_f
    //     0x742d00: ldur            w4, [x0, #0xf]
    // 0x742d04: DecompressPointer r4
    //     0x742d04: add             x4, x4, HEAP, lsl #32
    // 0x742d08: add             x5, x4, x1, lsl #2
    // 0x742d0c: r16 = Instance_SizedBox
    //     0x742d0c: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b58] Obj!SizedBox@a1faf1
    //     0x742d10: ldr             x16, [x16, #0xb58]
    // 0x742d14: StoreField: r5->field_f = r16
    //     0x742d14: stur            w16, [x5, #0xf]
    // 0x742d18: r16 = 0.100000
    //     0x742d18: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x742d1c: ldr             x16, [x16, #0x1f8]
    // 0x742d20: str             x16, [SP]
    // 0x742d24: r1 = Instance_Color
    //     0x742d24: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x742d28: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x742d28: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x742d2c: ldr             x4, [x4, #0x198]
    // 0x742d30: r0 = withValues()
    //     0x742d30: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x742d34: stur            x0, [fp, #-8]
    // 0x742d38: r0 = Radius()
    //     0x742d38: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x742d3c: d0 = 999.000000
    //     0x742d3c: add             x17, PP, #0x14, lsl #12  ; [pp+0x14f50] IMM: double(999) from 0x408f380000000000
    //     0x742d40: ldr             d0, [x17, #0xf50]
    // 0x742d44: stur            x0, [fp, #-0x30]
    // 0x742d48: StoreField: r0->field_7 = d0
    //     0x742d48: stur            d0, [x0, #7]
    // 0x742d4c: StoreField: r0->field_f = d0
    //     0x742d4c: stur            d0, [x0, #0xf]
    // 0x742d50: r0 = BorderRadius()
    //     0x742d50: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x742d54: mov             x1, x0
    // 0x742d58: ldur            x0, [fp, #-0x30]
    // 0x742d5c: stur            x1, [fp, #-0x48]
    // 0x742d60: StoreField: r1->field_7 = r0
    //     0x742d60: stur            w0, [x1, #7]
    // 0x742d64: StoreField: r1->field_b = r0
    //     0x742d64: stur            w0, [x1, #0xb]
    // 0x742d68: StoreField: r1->field_f = r0
    //     0x742d68: stur            w0, [x1, #0xf]
    // 0x742d6c: StoreField: r1->field_13 = r0
    //     0x742d6c: stur            w0, [x1, #0x13]
    // 0x742d70: r0 = BoxDecoration()
    //     0x742d70: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x742d74: mov             x3, x0
    // 0x742d78: ldur            x0, [fp, #-8]
    // 0x742d7c: stur            x3, [fp, #-0x30]
    // 0x742d80: StoreField: r3->field_7 = r0
    //     0x742d80: stur            w0, [x3, #7]
    // 0x742d84: ldur            x0, [fp, #-0x48]
    // 0x742d88: StoreField: r3->field_13 = r0
    //     0x742d88: stur            w0, [x3, #0x13]
    // 0x742d8c: r0 = Instance_BoxShape
    //     0x742d8c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x742d90: ldr             x0, [x0, #0x1c8]
    // 0x742d94: StoreField: r3->field_23 = r0
    //     0x742d94: stur            w0, [x3, #0x23]
    // 0x742d98: ldur            x4, [fp, #-0x20]
    // 0x742d9c: LoadField: r1 = r4->field_13
    //     0x742d9c: ldur            w1, [x4, #0x13]
    // 0x742da0: DecompressPointer r1
    //     0x742da0: add             x1, x1, HEAP, lsl #32
    // 0x742da4: ArrayLoad: r5 = r1[0]  ; List_4
    //     0x742da4: ldur            w5, [x1, #0x17]
    // 0x742da8: DecompressPointer r5
    //     0x742da8: add             x5, x5, HEAP, lsl #32
    // 0x742dac: stur            x5, [fp, #-8]
    // 0x742db0: r1 = Null
    //     0x742db0: mov             x1, NULL
    // 0x742db4: r2 = 6
    //     0x742db4: mov             x2, #6
    // 0x742db8: r0 = AllocateArray()
    //     0x742db8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x742dbc: mov             x1, x0
    // 0x742dc0: ldur            x0, [fp, #-8]
    // 0x742dc4: StoreField: r1->field_f = r0
    //     0x742dc4: stur            w0, [x1, #0xf]
    // 0x742dc8: r16 = " - "
    //     0x742dc8: add             x16, PP, #0x13, lsl #12  ; [pp+0x139e8] " - "
    //     0x742dcc: ldr             x16, [x16, #0x9e8]
    // 0x742dd0: StoreField: r1->field_13 = r16
    //     0x742dd0: stur            w16, [x1, #0x13]
    // 0x742dd4: ldur            x0, [fp, #-0x10]
    // 0x742dd8: ArrayStore: r1[0] = r0  ; List_4
    //     0x742dd8: stur            w0, [x1, #0x17]
    // 0x742ddc: str             x1, [SP]
    // 0x742de0: r0 = _interpolate()
    //     0x742de0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x742de4: stur            x0, [fp, #-8]
    // 0x742de8: r0 = Text()
    //     0x742de8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x742dec: mov             x3, x0
    // 0x742df0: ldur            x0, [fp, #-8]
    // 0x742df4: stur            x3, [fp, #-0x10]
    // 0x742df8: StoreField: r3->field_b = r0
    //     0x742df8: stur            w0, [x3, #0xb]
    // 0x742dfc: r0 = Instance_TextStyle
    //     0x742dfc: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fe40] Obj!TextStyle@a18781
    //     0x742e00: ldr             x0, [x0, #0xe40]
    // 0x742e04: StoreField: r3->field_13 = r0
    //     0x742e04: stur            w0, [x3, #0x13]
    // 0x742e08: r1 = Null
    //     0x742e08: mov             x1, NULL
    // 0x742e0c: r2 = 6
    //     0x742e0c: mov             x2, #6
    // 0x742e10: r0 = AllocateArray()
    //     0x742e10: bl              #0x9280a0  ; AllocateArrayStub
    // 0x742e14: stur            x0, [fp, #-8]
    // 0x742e18: r16 = Instance_Icon
    //     0x742e18: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fe48] Obj!Icon@a1ed31
    //     0x742e1c: ldr             x16, [x16, #0xe48]
    // 0x742e20: StoreField: r0->field_f = r16
    //     0x742e20: stur            w16, [x0, #0xf]
    // 0x742e24: r16 = Instance_SizedBox
    //     0x742e24: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c100] Obj!SizedBox@a1fbf1
    //     0x742e28: ldr             x16, [x16, #0x100]
    // 0x742e2c: StoreField: r0->field_13 = r16
    //     0x742e2c: stur            w16, [x0, #0x13]
    // 0x742e30: ldur            x1, [fp, #-0x10]
    // 0x742e34: ArrayStore: r0[0] = r1  ; List_4
    //     0x742e34: stur            w1, [x0, #0x17]
    // 0x742e38: r1 = <Widget>
    //     0x742e38: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x742e3c: r0 = AllocateGrowableArray()
    //     0x742e3c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x742e40: mov             x1, x0
    // 0x742e44: ldur            x0, [fp, #-8]
    // 0x742e48: stur            x1, [fp, #-0x10]
    // 0x742e4c: StoreField: r1->field_f = r0
    //     0x742e4c: stur            w0, [x1, #0xf]
    // 0x742e50: r2 = 6
    //     0x742e50: mov             x2, #6
    // 0x742e54: StoreField: r1->field_b = r2
    //     0x742e54: stur            w2, [x1, #0xb]
    // 0x742e58: r0 = Row()
    //     0x742e58: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x742e5c: mov             x1, x0
    // 0x742e60: r0 = Instance_Axis
    //     0x742e60: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x742e64: stur            x1, [fp, #-8]
    // 0x742e68: StoreField: r1->field_f = r0
    //     0x742e68: stur            w0, [x1, #0xf]
    // 0x742e6c: r2 = Instance_MainAxisAlignment
    //     0x742e6c: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x742e70: ldr             x2, [x2, #0x230]
    // 0x742e74: StoreField: r1->field_13 = r2
    //     0x742e74: stur            w2, [x1, #0x13]
    // 0x742e78: r3 = Instance_MainAxisSize
    //     0x742e78: add             x3, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x742e7c: ldr             x3, [x3, #0xb60]
    // 0x742e80: ArrayStore: r1[0] = r3  ; List_4
    //     0x742e80: stur            w3, [x1, #0x17]
    // 0x742e84: r3 = Instance_CrossAxisAlignment
    //     0x742e84: add             x3, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x742e88: ldr             x3, [x3, #0x338]
    // 0x742e8c: StoreField: r1->field_1b = r3
    //     0x742e8c: stur            w3, [x1, #0x1b]
    // 0x742e90: r3 = Instance_VerticalDirection
    //     0x742e90: add             x3, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x742e94: ldr             x3, [x3, #0x340]
    // 0x742e98: StoreField: r1->field_23 = r3
    //     0x742e98: stur            w3, [x1, #0x23]
    // 0x742e9c: r4 = Instance_Clip
    //     0x742e9c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x742ea0: ldr             x4, [x4, #0x348]
    // 0x742ea4: StoreField: r1->field_2b = r4
    //     0x742ea4: stur            w4, [x1, #0x2b]
    // 0x742ea8: StoreField: r1->field_2f = rZR
    //     0x742ea8: stur            xzr, [x1, #0x2f]
    // 0x742eac: ldur            x5, [fp, #-0x10]
    // 0x742eb0: StoreField: r1->field_b = r5
    //     0x742eb0: stur            w5, [x1, #0xb]
    // 0x742eb4: r0 = Container()
    //     0x742eb4: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x742eb8: stur            x0, [fp, #-0x10]
    // 0x742ebc: r16 = Instance_EdgeInsets
    //     0x742ebc: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f70] Obj!EdgeInsets@a0c4d1
    //     0x742ec0: ldr             x16, [x16, #0xf70]
    // 0x742ec4: ldur            lr, [fp, #-0x30]
    // 0x742ec8: stp             lr, x16, [SP, #8]
    // 0x742ecc: ldur            x16, [fp, #-8]
    // 0x742ed0: str             x16, [SP]
    // 0x742ed4: mov             x1, x0
    // 0x742ed8: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x742ed8: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x742edc: ldr             x4, [x4, #0x1e8]
    // 0x742ee0: r0 = Container()
    //     0x742ee0: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x742ee4: ldur            x0, [fp, #-0x40]
    // 0x742ee8: LoadField: r1 = r0->field_b
    //     0x742ee8: ldur            w1, [x0, #0xb]
    // 0x742eec: LoadField: r2 = r0->field_f
    //     0x742eec: ldur            w2, [x0, #0xf]
    // 0x742ef0: DecompressPointer r2
    //     0x742ef0: add             x2, x2, HEAP, lsl #32
    // 0x742ef4: LoadField: r3 = r2->field_b
    //     0x742ef4: ldur            w3, [x2, #0xb]
    // 0x742ef8: r2 = LoadInt32Instr(r1)
    //     0x742ef8: sbfx            x2, x1, #1, #0x1f
    // 0x742efc: stur            x2, [fp, #-0x58]
    // 0x742f00: r1 = LoadInt32Instr(r3)
    //     0x742f00: sbfx            x1, x3, #1, #0x1f
    // 0x742f04: cmp             x2, x1
    // 0x742f08: b.ne            #0x742f14
    // 0x742f0c: mov             x1, x0
    // 0x742f10: r0 = _growToNextCapacity()
    //     0x742f10: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x742f14: ldur            x5, [fp, #-0x28]
    // 0x742f18: ldur            x4, [fp, #-0x18]
    // 0x742f1c: ldur            x2, [fp, #-0x40]
    // 0x742f20: ldur            x3, [fp, #-0x58]
    // 0x742f24: add             x0, x3, #1
    // 0x742f28: lsl             x1, x0, #1
    // 0x742f2c: StoreField: r2->field_b = r1
    //     0x742f2c: stur            w1, [x2, #0xb]
    // 0x742f30: LoadField: r1 = r2->field_f
    //     0x742f30: ldur            w1, [x2, #0xf]
    // 0x742f34: DecompressPointer r1
    //     0x742f34: add             x1, x1, HEAP, lsl #32
    // 0x742f38: ldur            x0, [fp, #-0x10]
    // 0x742f3c: ArrayStore: r1[r3] = r0  ; List_4
    //     0x742f3c: add             x25, x1, x3, lsl #2
    //     0x742f40: add             x25, x25, #0xf
    //     0x742f44: str             w0, [x25]
    //     0x742f48: tbz             w0, #0, #0x742f64
    //     0x742f4c: ldurb           w16, [x1, #-1]
    //     0x742f50: ldurb           w17, [x0, #-1]
    //     0x742f54: and             x16, x17, x16, lsr #2
    //     0x742f58: tst             x16, HEAP, lsr #32
    //     0x742f5c: b.eq            #0x742f64
    //     0x742f60: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x742f64: r0 = Column()
    //     0x742f64: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x742f68: mov             x2, x0
    // 0x742f6c: r0 = Instance_Axis
    //     0x742f6c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x742f70: stur            x2, [fp, #-8]
    // 0x742f74: StoreField: r2->field_f = r0
    //     0x742f74: stur            w0, [x2, #0xf]
    // 0x742f78: r0 = Instance_MainAxisAlignment
    //     0x742f78: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x742f7c: ldr             x0, [x0, #0x230]
    // 0x742f80: StoreField: r2->field_13 = r0
    //     0x742f80: stur            w0, [x2, #0x13]
    // 0x742f84: r3 = Instance_MainAxisSize
    //     0x742f84: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x742f88: ldr             x3, [x3, #0x330]
    // 0x742f8c: ArrayStore: r2[0] = r3  ; List_4
    //     0x742f8c: stur            w3, [x2, #0x17]
    // 0x742f90: r4 = Instance_CrossAxisAlignment
    //     0x742f90: add             x4, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x742f94: ldr             x4, [x4, #0x238]
    // 0x742f98: StoreField: r2->field_1b = r4
    //     0x742f98: stur            w4, [x2, #0x1b]
    // 0x742f9c: r5 = Instance_VerticalDirection
    //     0x742f9c: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x742fa0: ldr             x5, [x5, #0x340]
    // 0x742fa4: StoreField: r2->field_23 = r5
    //     0x742fa4: stur            w5, [x2, #0x23]
    // 0x742fa8: r6 = Instance_Clip
    //     0x742fa8: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x742fac: ldr             x6, [x6, #0x348]
    // 0x742fb0: StoreField: r2->field_2b = r6
    //     0x742fb0: stur            w6, [x2, #0x2b]
    // 0x742fb4: StoreField: r2->field_2f = rZR
    //     0x742fb4: stur            xzr, [x2, #0x2f]
    // 0x742fb8: ldur            x1, [fp, #-0x40]
    // 0x742fbc: StoreField: r2->field_b = r1
    //     0x742fbc: stur            w1, [x2, #0xb]
    // 0x742fc0: r1 = <FlexParentData>
    //     0x742fc0: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x742fc4: ldr             x1, [x1, #0x340]
    // 0x742fc8: r0 = Expanded()
    //     0x742fc8: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x742fcc: mov             x3, x0
    // 0x742fd0: r0 = 1
    //     0x742fd0: mov             x0, #1
    // 0x742fd4: stur            x3, [fp, #-0x10]
    // 0x742fd8: StoreField: r3->field_13 = r0
    //     0x742fd8: stur            x0, [x3, #0x13]
    // 0x742fdc: r0 = Instance_FlexFit
    //     0x742fdc: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x742fe0: ldr             x0, [x0, #0x348]
    // 0x742fe4: StoreField: r3->field_1b = r0
    //     0x742fe4: stur            w0, [x3, #0x1b]
    // 0x742fe8: ldur            x0, [fp, #-8]
    // 0x742fec: StoreField: r3->field_b = r0
    //     0x742fec: stur            w0, [x3, #0xb]
    // 0x742ff0: r1 = Null
    //     0x742ff0: mov             x1, NULL
    // 0x742ff4: r2 = 6
    //     0x742ff4: mov             x2, #6
    // 0x742ff8: r0 = AllocateArray()
    //     0x742ff8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x742ffc: mov             x2, x0
    // 0x743000: ldur            x0, [fp, #-0x18]
    // 0x743004: stur            x2, [fp, #-8]
    // 0x743008: StoreField: r2->field_f = r0
    //     0x743008: stur            w0, [x2, #0xf]
    // 0x74300c: r16 = Instance_SizedBox
    //     0x74300c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x743010: ldr             x16, [x16, #0x360]
    // 0x743014: StoreField: r2->field_13 = r16
    //     0x743014: stur            w16, [x2, #0x13]
    // 0x743018: ldur            x0, [fp, #-0x10]
    // 0x74301c: ArrayStore: r2[0] = r0  ; List_4
    //     0x74301c: stur            w0, [x2, #0x17]
    // 0x743020: r1 = <Widget>
    //     0x743020: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x743024: r0 = AllocateGrowableArray()
    //     0x743024: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x743028: mov             x1, x0
    // 0x74302c: ldur            x0, [fp, #-8]
    // 0x743030: stur            x1, [fp, #-0x10]
    // 0x743034: StoreField: r1->field_f = r0
    //     0x743034: stur            w0, [x1, #0xf]
    // 0x743038: r0 = 6
    //     0x743038: mov             x0, #6
    // 0x74303c: StoreField: r1->field_b = r0
    //     0x74303c: stur            w0, [x1, #0xb]
    // 0x743040: r0 = Row()
    //     0x743040: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x743044: mov             x1, x0
    // 0x743048: r0 = Instance_Axis
    //     0x743048: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x74304c: stur            x1, [fp, #-8]
    // 0x743050: StoreField: r1->field_f = r0
    //     0x743050: stur            w0, [x1, #0xf]
    // 0x743054: r0 = Instance_MainAxisAlignment
    //     0x743054: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x743058: ldr             x0, [x0, #0x230]
    // 0x74305c: StoreField: r1->field_13 = r0
    //     0x74305c: stur            w0, [x1, #0x13]
    // 0x743060: r0 = Instance_MainAxisSize
    //     0x743060: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x743064: ldr             x0, [x0, #0x330]
    // 0x743068: ArrayStore: r1[0] = r0  ; List_4
    //     0x743068: stur            w0, [x1, #0x17]
    // 0x74306c: r0 = Instance_CrossAxisAlignment
    //     0x74306c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x743070: ldr             x0, [x0, #0x238]
    // 0x743074: StoreField: r1->field_1b = r0
    //     0x743074: stur            w0, [x1, #0x1b]
    // 0x743078: r0 = Instance_VerticalDirection
    //     0x743078: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x74307c: ldr             x0, [x0, #0x340]
    // 0x743080: StoreField: r1->field_23 = r0
    //     0x743080: stur            w0, [x1, #0x23]
    // 0x743084: r0 = Instance_Clip
    //     0x743084: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x743088: ldr             x0, [x0, #0x348]
    // 0x74308c: StoreField: r1->field_2b = r0
    //     0x74308c: stur            w0, [x1, #0x2b]
    // 0x743090: StoreField: r1->field_2f = rZR
    //     0x743090: stur            xzr, [x1, #0x2f]
    // 0x743094: ldur            x2, [fp, #-0x10]
    // 0x743098: StoreField: r1->field_b = r2
    //     0x743098: stur            w2, [x1, #0xb]
    // 0x74309c: r0 = Padding()
    //     0x74309c: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x7430a0: mov             x1, x0
    // 0x7430a4: r0 = Instance_EdgeInsets
    //     0x7430a4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x7430a8: ldr             x0, [x0, #0x240]
    // 0x7430ac: stur            x1, [fp, #-0x10]
    // 0x7430b0: StoreField: r1->field_f = r0
    //     0x7430b0: stur            w0, [x1, #0xf]
    // 0x7430b4: ldur            x0, [fp, #-8]
    // 0x7430b8: StoreField: r1->field_b = r0
    //     0x7430b8: stur            w0, [x1, #0xb]
    // 0x7430bc: r0 = InkWell()
    //     0x7430bc: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x7430c0: mov             x3, x0
    // 0x7430c4: ldur            x0, [fp, #-0x10]
    // 0x7430c8: stur            x3, [fp, #-8]
    // 0x7430cc: StoreField: r3->field_b = r0
    //     0x7430cc: stur            w0, [x3, #0xb]
    // 0x7430d0: ldur            x2, [fp, #-0x20]
    // 0x7430d4: r1 = Function '<anonymous closure>':.
    //     0x7430d4: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fe50] AnonymousClosure: (0x7433fc), in [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::_buildCalendarEventCard (0x7426fc)
    //     0x7430d8: ldr             x1, [x1, #0xe50]
    // 0x7430dc: r0 = AllocateClosure()
    //     0x7430dc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7430e0: mov             x1, x0
    // 0x7430e4: ldur            x0, [fp, #-8]
    // 0x7430e8: StoreField: r0->field_f = r1
    //     0x7430e8: stur            w1, [x0, #0xf]
    // 0x7430ec: r1 = true
    //     0x7430ec: add             x1, NULL, #0x20  ; true
    // 0x7430f0: StoreField: r0->field_47 = r1
    //     0x7430f0: stur            w1, [x0, #0x47]
    // 0x7430f4: r2 = Instance_BoxShape
    //     0x7430f4: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7430f8: ldr             x2, [x2, #0x1c8]
    // 0x7430fc: StoreField: r0->field_4b = r2
    //     0x7430fc: stur            w2, [x0, #0x4b]
    // 0x743100: ldur            x2, [fp, #-0x28]
    // 0x743104: StoreField: r0->field_53 = r2
    //     0x743104: stur            w2, [x0, #0x53]
    // 0x743108: StoreField: r0->field_73 = r1
    //     0x743108: stur            w1, [x0, #0x73]
    // 0x74310c: r2 = false
    //     0x74310c: add             x2, NULL, #0x30  ; false
    // 0x743110: StoreField: r0->field_77 = r2
    //     0x743110: stur            w2, [x0, #0x77]
    // 0x743114: StoreField: r0->field_87 = r1
    //     0x743114: stur            w1, [x0, #0x87]
    // 0x743118: StoreField: r0->field_7f = r2
    //     0x743118: stur            w2, [x0, #0x7f]
    // 0x74311c: r0 = Material()
    //     0x74311c: bl              #0x6633b0  ; AllocateMaterialStub -> Material (size=0x44)
    // 0x743120: mov             x1, x0
    // 0x743124: r0 = Instance_MaterialType
    //     0x743124: add             x0, PP, #0x14, lsl #12  ; [pp+0x14fa0] Obj!MaterialType@a2b611
    //     0x743128: ldr             x0, [x0, #0xfa0]
    // 0x74312c: stur            x1, [fp, #-0x10]
    // 0x743130: StoreField: r1->field_f = r0
    //     0x743130: stur            w0, [x1, #0xf]
    // 0x743134: ArrayStore: r1[0] = rZR  ; List_8
    //     0x743134: stur            xzr, [x1, #0x17]
    // 0x743138: r0 = Instance_Color
    //     0x743138: add             x0, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x74313c: ldr             x0, [x0, #0x860]
    // 0x743140: StoreField: r1->field_1f = r0
    //     0x743140: stur            w0, [x1, #0x1f]
    // 0x743144: r0 = true
    //     0x743144: add             x0, NULL, #0x20  ; true
    // 0x743148: StoreField: r1->field_33 = r0
    //     0x743148: stur            w0, [x1, #0x33]
    // 0x74314c: r0 = Instance_Clip
    //     0x74314c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x743150: ldr             x0, [x0, #0x348]
    // 0x743154: StoreField: r1->field_37 = r0
    //     0x743154: stur            w0, [x1, #0x37]
    // 0x743158: r0 = Instance_Duration
    //     0x743158: add             x0, PP, #0x11, lsl #12  ; [pp+0x112c8] Obj!Duration@a2dc71
    //     0x74315c: ldr             x0, [x0, #0x2c8]
    // 0x743160: StoreField: r1->field_3b = r0
    //     0x743160: stur            w0, [x1, #0x3b]
    // 0x743164: ldur            x0, [fp, #-8]
    // 0x743168: StoreField: r1->field_b = r0
    //     0x743168: stur            w0, [x1, #0xb]
    // 0x74316c: r0 = false
    //     0x74316c: add             x0, NULL, #0x30  ; false
    // 0x743170: StoreField: r1->field_13 = r0
    //     0x743170: stur            w0, [x1, #0x13]
    // 0x743174: r0 = Container()
    //     0x743174: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x743178: stur            x0, [fp, #-8]
    // 0x74317c: ldur            x16, [fp, #-0x38]
    // 0x743180: ldur            lr, [fp, #-0x10]
    // 0x743184: stp             lr, x16, [SP]
    // 0x743188: mov             x1, x0
    // 0x74318c: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, decoration, 0x1, null]
    //     0x74318c: add             x4, PP, #0x14, lsl #12  ; [pp+0x14fa8] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "decoration", 0x1, Null]
    //     0x743190: ldr             x4, [x4, #0xfa8]
    // 0x743194: r0 = Container()
    //     0x743194: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x743198: ldur            x0, [fp, #-8]
    // 0x74319c: LeaveFrame
    //     0x74319c: mov             SP, fp
    //     0x7431a0: ldp             fp, lr, [SP], #0x10
    // 0x7431a4: ret
    //     0x7431a4: ret             
    // 0x7431a8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7431a8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7431ac: b               #0x742720
    // 0x7431b0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7431b0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _isEventUpcoming(/* No info */) {
    // ** addr: 0x7431b4, size: 0x248
    // 0x7431b4: EnterFrame
    //     0x7431b4: stp             fp, lr, [SP, #-0x10]!
    //     0x7431b8: mov             fp, SP
    // 0x7431bc: AllocStack(0x58)
    //     0x7431bc: sub             SP, SP, #0x58
    // 0x7431c0: SetupParameters(_CalendarTabState this /* r1 => r3, fp-0x8 */, dynamic _ /* r2 => r1 */)
    //     0x7431c0: mov             x3, x1
    //     0x7431c4: stur            x1, [fp, #-8]
    //     0x7431c8: mov             x1, x2
    // 0x7431cc: CheckStackOverflow
    //     0x7431cc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7431d0: cmp             SP, x16
    //     0x7431d4: b.ls            #0x7433e0
    // 0x7431d8: r0 = LoadClassIdInstr(r1)
    //     0x7431d8: ldur            x0, [x1, #-1]
    //     0x7431dc: ubfx            x0, x0, #0xc, #0x14
    // 0x7431e0: r2 = ":"
    //     0x7431e0: ldr             x2, [PP, #0x990]  ; [pp+0x990] ":"
    // 0x7431e4: r0 = GDT[cid_x0 + -0x1000]()
    //     0x7431e4: sub             lr, x0, #1, lsl #12
    //     0x7431e8: ldr             lr, [x21, lr, lsl #3]
    //     0x7431ec: blr             lr
    // 0x7431f0: mov             x2, x0
    // 0x7431f4: stur            x2, [fp, #-0x10]
    // 0x7431f8: LoadField: r0 = r2->field_b
    //     0x7431f8: ldur            w0, [x2, #0xb]
    // 0x7431fc: r1 = LoadInt32Instr(r0)
    //     0x7431fc: sbfx            x1, x0, #1, #0x1f
    // 0x743200: mov             x0, x1
    // 0x743204: r1 = 0
    //     0x743204: mov             x1, #0
    // 0x743208: cmp             x1, x0
    // 0x74320c: b.hs            #0x7433e8
    // 0x743210: LoadField: r0 = r2->field_f
    //     0x743210: ldur            w0, [x2, #0xf]
    // 0x743214: DecompressPointer r0
    //     0x743214: add             x0, x0, HEAP, lsl #32
    // 0x743218: LoadField: r1 = r0->field_f
    //     0x743218: ldur            w1, [x0, #0xf]
    // 0x74321c: DecompressPointer r1
    //     0x74321c: add             x1, x1, HEAP, lsl #32
    // 0x743220: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x743220: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x743224: r0 = parse()
    //     0x743224: bl              #0x3e9298  ; [dart:core] int::parse
    // 0x743228: mov             x3, x0
    // 0x74322c: ldur            x2, [fp, #-0x10]
    // 0x743230: stur            x3, [fp, #-0x18]
    // 0x743234: LoadField: r0 = r2->field_b
    //     0x743234: ldur            w0, [x2, #0xb]
    // 0x743238: r1 = LoadInt32Instr(r0)
    //     0x743238: sbfx            x1, x0, #1, #0x1f
    // 0x74323c: mov             x0, x1
    // 0x743240: r1 = 1
    //     0x743240: mov             x1, #1
    // 0x743244: cmp             x1, x0
    // 0x743248: b.hs            #0x7433ec
    // 0x74324c: LoadField: r0 = r2->field_f
    //     0x74324c: ldur            w0, [x2, #0xf]
    // 0x743250: DecompressPointer r0
    //     0x743250: add             x0, x0, HEAP, lsl #32
    // 0x743254: LoadField: r1 = r0->field_13
    //     0x743254: ldur            w1, [x0, #0x13]
    // 0x743258: DecompressPointer r1
    //     0x743258: add             x1, x1, HEAP, lsl #32
    // 0x74325c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x74325c: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x743260: r0 = parse()
    //     0x743260: bl              #0x3e9298  ; [dart:core] int::parse
    // 0x743264: mov             x2, x0
    // 0x743268: ldur            x0, [fp, #-8]
    // 0x74326c: stur            x2, [fp, #-0x20]
    // 0x743270: LoadField: r1 = r0->field_13
    //     0x743270: ldur            w1, [x0, #0x13]
    // 0x743274: DecompressPointer r1
    //     0x743274: add             x1, x1, HEAP, lsl #32
    // 0x743278: r0 = _parts()
    //     0x743278: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x74327c: mov             x2, x0
    // 0x743280: LoadField: r0 = r2->field_b
    //     0x743280: ldur            w0, [x2, #0xb]
    // 0x743284: r1 = LoadInt32Instr(r0)
    //     0x743284: sbfx            x1, x0, #1, #0x1f
    // 0x743288: mov             x0, x1
    // 0x74328c: r1 = 8
    //     0x74328c: mov             x1, #8
    // 0x743290: cmp             x1, x0
    // 0x743294: b.hs            #0x7433f0
    // 0x743298: LoadField: r0 = r2->field_2f
    //     0x743298: ldur            w0, [x2, #0x2f]
    // 0x74329c: DecompressPointer r0
    //     0x74329c: add             x0, x0, HEAP, lsl #32
    // 0x7432a0: ldur            x2, [fp, #-8]
    // 0x7432a4: stur            x0, [fp, #-0x10]
    // 0x7432a8: LoadField: r1 = r2->field_13
    //     0x7432a8: ldur            w1, [x2, #0x13]
    // 0x7432ac: DecompressPointer r1
    //     0x7432ac: add             x1, x1, HEAP, lsl #32
    // 0x7432b0: r0 = _parts()
    //     0x7432b0: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x7432b4: mov             x2, x0
    // 0x7432b8: LoadField: r0 = r2->field_b
    //     0x7432b8: ldur            w0, [x2, #0xb]
    // 0x7432bc: r1 = LoadInt32Instr(r0)
    //     0x7432bc: sbfx            x1, x0, #1, #0x1f
    // 0x7432c0: mov             x0, x1
    // 0x7432c4: r1 = 7
    //     0x7432c4: mov             x1, #7
    // 0x7432c8: cmp             x1, x0
    // 0x7432cc: b.hs            #0x7433f4
    // 0x7432d0: LoadField: r0 = r2->field_2b
    //     0x7432d0: ldur            w0, [x2, #0x2b]
    // 0x7432d4: DecompressPointer r0
    //     0x7432d4: add             x0, x0, HEAP, lsl #32
    // 0x7432d8: ldur            x1, [fp, #-8]
    // 0x7432dc: stur            x0, [fp, #-0x28]
    // 0x7432e0: LoadField: r2 = r1->field_13
    //     0x7432e0: ldur            w2, [x1, #0x13]
    // 0x7432e4: DecompressPointer r2
    //     0x7432e4: add             x2, x2, HEAP, lsl #32
    // 0x7432e8: mov             x1, x2
    // 0x7432ec: r0 = _parts()
    //     0x7432ec: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x7432f0: mov             x2, x0
    // 0x7432f4: LoadField: r0 = r2->field_b
    //     0x7432f4: ldur            w0, [x2, #0xb]
    // 0x7432f8: r1 = LoadInt32Instr(r0)
    //     0x7432f8: sbfx            x1, x0, #1, #0x1f
    // 0x7432fc: mov             x0, x1
    // 0x743300: r1 = 5
    //     0x743300: mov             x1, #5
    // 0x743304: cmp             x1, x0
    // 0x743308: b.hs            #0x7433f8
    // 0x74330c: LoadField: r3 = r2->field_23
    //     0x74330c: ldur            w3, [x2, #0x23]
    // 0x743310: DecompressPointer r3
    //     0x743310: add             x3, x3, HEAP, lsl #32
    // 0x743314: ldur            x2, [fp, #-0x18]
    // 0x743318: stur            x3, [fp, #-0x38]
    // 0x74331c: r0 = BoxInt64Instr(r2)
    //     0x74331c: sbfiz           x0, x2, #1, #0x1f
    //     0x743320: cmp             x2, x0, asr #1
    //     0x743324: b.eq            #0x743330
    //     0x743328: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x74332c: stur            x2, [x0, #7]
    // 0x743330: mov             x4, x0
    // 0x743334: ldur            x2, [fp, #-0x20]
    // 0x743338: stur            x4, [fp, #-0x30]
    // 0x74333c: r0 = BoxInt64Instr(r2)
    //     0x74333c: sbfiz           x0, x2, #1, #0x1f
    //     0x743340: cmp             x2, x0, asr #1
    //     0x743344: b.eq            #0x743350
    //     0x743348: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x74334c: stur            x2, [x0, #7]
    // 0x743350: mov             x1, x0
    // 0x743354: ldur            x0, [fp, #-0x10]
    // 0x743358: stur            x1, [fp, #-8]
    // 0x74335c: r2 = LoadInt32Instr(r0)
    //     0x74335c: sbfx            x2, x0, #1, #0x1f
    //     0x743360: tbz             w0, #0, #0x743368
    //     0x743364: ldur            x2, [x0, #7]
    // 0x743368: stur            x2, [fp, #-0x18]
    // 0x74336c: r0 = DateTime()
    //     0x74336c: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x743370: stur            x0, [fp, #-0x10]
    // 0x743374: ldur            x16, [fp, #-0x28]
    // 0x743378: ldur            lr, [fp, #-0x38]
    // 0x74337c: stp             lr, x16, [SP, #0x10]
    // 0x743380: ldur            x16, [fp, #-0x30]
    // 0x743384: ldur            lr, [fp, #-8]
    // 0x743388: stp             lr, x16, [SP]
    // 0x74338c: mov             x1, x0
    // 0x743390: ldur            x2, [fp, #-0x18]
    // 0x743394: r4 = const [0, 0x6, 0x4, 0x6, null]
    //     0x743394: add             x4, PP, #0xc, lsl #12  ; [pp+0xc410] List(5) [0, 0x6, 0x4, 0x6, Null]
    //     0x743398: ldr             x4, [x4, #0x410]
    // 0x74339c: r0 = DateTime()
    //     0x74339c: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x7433a0: r0 = DateTime()
    //     0x7433a0: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x7433a4: mov             x1, x0
    // 0x7433a8: r0 = false
    //     0x7433a8: add             x0, NULL, #0x30  ; false
    // 0x7433ac: stur            x1, [fp, #-8]
    // 0x7433b0: StoreField: r1->field_7 = r0
    //     0x7433b0: stur            w0, [x1, #7]
    // 0x7433b4: r0 = _getCurrentMicros()
    //     0x7433b4: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x7433b8: r1 = LoadInt32Instr(r0)
    //     0x7433b8: sbfx            x1, x0, #1, #0x1f
    //     0x7433bc: tbz             w0, #0, #0x7433c4
    //     0x7433c0: ldur            x1, [x0, #7]
    // 0x7433c4: ldur            x2, [fp, #-8]
    // 0x7433c8: StoreField: r2->field_b = r1
    //     0x7433c8: stur            x1, [x2, #0xb]
    // 0x7433cc: ldur            x1, [fp, #-0x10]
    // 0x7433d0: r0 = isAfter()
    //     0x7433d0: bl              #0x5793ac  ; [dart:core] DateTime::isAfter
    // 0x7433d4: LeaveFrame
    //     0x7433d4: mov             SP, fp
    //     0x7433d8: ldp             fp, lr, [SP], #0x10
    // 0x7433dc: ret
    //     0x7433dc: ret             
    // 0x7433e0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7433e0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7433e4: b               #0x7431d8
    // 0x7433e8: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7433e8: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7433ec: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7433ec: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7433f0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7433f0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7433f4: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7433f4: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7433f8: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7433f8: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7433fc, size: 0xa4
    // 0x7433fc: EnterFrame
    //     0x7433fc: stp             fp, lr, [SP, #-0x10]!
    //     0x743400: mov             fp, SP
    // 0x743404: AllocStack(0x8)
    //     0x743404: sub             SP, SP, #8
    // 0x743408: SetupParameters([dynamic _ /* r0 */])
    //     0x743408: ldr             x0, [fp, #0x10]
    //     0x74340c: ldur            w1, [x0, #0x17]
    //     0x743410: add             x1, x1, HEAP, lsl #32
    // 0x743414: CheckStackOverflow
    //     0x743414: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x743418: cmp             SP, x16
    //     0x74341c: b.ls            #0x743490
    // 0x743420: LoadField: r0 = r1->field_13
    //     0x743420: ldur            w0, [x1, #0x13]
    // 0x743424: DecompressPointer r0
    //     0x743424: add             x0, x0, HEAP, lsl #32
    // 0x743428: LoadField: r2 = r1->field_f
    //     0x743428: ldur            w2, [x1, #0xf]
    // 0x74342c: DecompressPointer r2
    //     0x74342c: add             x2, x2, HEAP, lsl #32
    // 0x743430: LoadField: r1 = r2->field_f
    //     0x743430: ldur            w1, [x2, #0xf]
    // 0x743434: DecompressPointer r1
    //     0x743434: add             x1, x1, HEAP, lsl #32
    // 0x743438: cmp             w1, NULL
    // 0x74343c: b.eq            #0x743498
    // 0x743440: LoadField: r3 = r2->field_13
    //     0x743440: ldur            w3, [x2, #0x13]
    // 0x743444: DecompressPointer r3
    //     0x743444: add             x3, x3, HEAP, lsl #32
    // 0x743448: LoadField: r4 = r2->field_b
    //     0x743448: ldur            w4, [x2, #0xb]
    // 0x74344c: DecompressPointer r4
    //     0x74344c: add             x4, x4, HEAP, lsl #32
    // 0x743450: cmp             w4, NULL
    // 0x743454: b.eq            #0x74349c
    // 0x743458: LoadField: r2 = r4->field_b
    //     0x743458: ldur            w2, [x4, #0xb]
    // 0x74345c: DecompressPointer r2
    //     0x74345c: add             x2, x2, HEAP, lsl #32
    // 0x743460: LoadField: r4 = r2->field_7
    //     0x743460: ldur            w4, [x2, #7]
    // 0x743464: DecompressPointer r4
    //     0x743464: add             x4, x4, HEAP, lsl #32
    // 0x743468: str             x4, [SP]
    // 0x74346c: mov             x2, x1
    // 0x743470: mov             x1, x0
    // 0x743474: r4 = const [0, 0x4, 0x1, 0x3, agencyId, 0x3, null]
    //     0x743474: add             x4, PP, #0x1f, lsl #12  ; [pp+0x1fe58] List(7) [0, 0x4, 0x1, 0x3, "agencyId", 0x3, Null]
    //     0x743478: ldr             x4, [x4, #0xe58]
    // 0x74347c: r0 = showAddEditDialog()
    //     0x74347c: bl              #0x6d2cc8  ; [package:umrem_demo/features/admin/widgets/events/edit_dialog.dart] ::showAddEditDialog
    // 0x743480: r0 = Null
    //     0x743480: mov             x0, NULL
    // 0x743484: LeaveFrame
    //     0x743484: mov             SP, fp
    //     0x743488: ldp             fp, lr, [SP], #0x10
    // 0x74348c: ret
    //     0x74348c: ret             
    // 0x743490: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x743490: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x743494: b               #0x743420
    // 0x743498: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x743498: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x74349c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x74349c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7434a0, size: 0x7c
    // 0x7434a0: EnterFrame
    //     0x7434a0: stp             fp, lr, [SP, #-0x10]!
    //     0x7434a4: mov             fp, SP
    // 0x7434a8: AllocStack(0x10)
    //     0x7434a8: sub             SP, SP, #0x10
    // 0x7434ac: SetupParameters([dynamic _ /* r0 */])
    //     0x7434ac: ldr             x0, [fp, #0x10]
    //     0x7434b0: ldur            w2, [x0, #0x17]
    //     0x7434b4: add             x2, x2, HEAP, lsl #32
    // 0x7434b8: CheckStackOverflow
    //     0x7434b8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7434bc: cmp             SP, x16
    //     0x7434c0: b.ls            #0x743514
    // 0x7434c4: LoadField: r0 = r2->field_b
    //     0x7434c4: ldur            w0, [x2, #0xb]
    // 0x7434c8: DecompressPointer r0
    //     0x7434c8: add             x0, x0, HEAP, lsl #32
    // 0x7434cc: stur            x0, [fp, #-0x10]
    // 0x7434d0: LoadField: r3 = r0->field_f
    //     0x7434d0: ldur            w3, [x0, #0xf]
    // 0x7434d4: DecompressPointer r3
    //     0x7434d4: add             x3, x3, HEAP, lsl #32
    // 0x7434d8: stur            x3, [fp, #-8]
    // 0x7434dc: r1 = Function '<anonymous closure>':.
    //     0x7434dc: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fe60] AnonymousClosure: (0x6d1f5c), in [package:umrem_demo/features/admin/screens/admin_events_screen.dart] _AdminEventsScreenState::build (0x6d0980)
    //     0x7434e0: ldr             x1, [x1, #0xe60]
    // 0x7434e4: r0 = AllocateClosure()
    //     0x7434e4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7434e8: ldur            x1, [fp, #-8]
    // 0x7434ec: mov             x2, x0
    // 0x7434f0: r0 = setState()
    //     0x7434f0: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x7434f4: ldur            x0, [fp, #-0x10]
    // 0x7434f8: LoadField: r1 = r0->field_f
    //     0x7434f8: ldur            w1, [x0, #0xf]
    // 0x7434fc: DecompressPointer r1
    //     0x7434fc: add             x1, x1, HEAP, lsl #32
    // 0x743500: r0 = _loadCalendarEvents()
    //     0x743500: bl              #0x5f6920  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::_loadCalendarEvents
    // 0x743504: r0 = Null
    //     0x743504: mov             x0, NULL
    // 0x743508: LeaveFrame
    //     0x743508: mov             SP, fp
    //     0x74350c: ldp             fp, lr, [SP], #0x10
    // 0x743510: ret
    //     0x743510: ret             
    // 0x743514: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x743514: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x743518: b               #0x7434c4
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x74351c, size: 0x7c
    // 0x74351c: EnterFrame
    //     0x74351c: stp             fp, lr, [SP, #-0x10]!
    //     0x743520: mov             fp, SP
    // 0x743524: AllocStack(0x10)
    //     0x743524: sub             SP, SP, #0x10
    // 0x743528: SetupParameters([dynamic _ /* r0 */])
    //     0x743528: ldr             x0, [fp, #0x10]
    //     0x74352c: ldur            w2, [x0, #0x17]
    //     0x743530: add             x2, x2, HEAP, lsl #32
    // 0x743534: CheckStackOverflow
    //     0x743534: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x743538: cmp             SP, x16
    //     0x74353c: b.ls            #0x743590
    // 0x743540: LoadField: r0 = r2->field_f
    //     0x743540: ldur            w0, [x2, #0xf]
    // 0x743544: DecompressPointer r0
    //     0x743544: add             x0, x0, HEAP, lsl #32
    // 0x743548: stur            x0, [fp, #-0x10]
    // 0x74354c: LoadField: r1 = r2->field_b
    //     0x74354c: ldur            w1, [x2, #0xb]
    // 0x743550: DecompressPointer r1
    //     0x743550: add             x1, x1, HEAP, lsl #32
    // 0x743554: LoadField: r3 = r1->field_f
    //     0x743554: ldur            w3, [x1, #0xf]
    // 0x743558: DecompressPointer r3
    //     0x743558: add             x3, x3, HEAP, lsl #32
    // 0x74355c: LoadField: r4 = r3->field_13
    //     0x74355c: ldur            w4, [x3, #0x13]
    // 0x743560: DecompressPointer r4
    //     0x743560: add             x4, x4, HEAP, lsl #32
    // 0x743564: stur            x4, [fp, #-8]
    // 0x743568: r1 = Function '<anonymous closure>':.
    //     0x743568: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fe68] AnonymousClosure: (0x743598), in [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::build (0x7417e8)
    //     0x74356c: ldr             x1, [x1, #0xe68]
    // 0x743570: r0 = AllocateClosure()
    //     0x743570: bl              #0x9273d4  ; AllocateClosureStub
    // 0x743574: ldur            x1, [fp, #-0x10]
    // 0x743578: ldur            x2, [fp, #-8]
    // 0x74357c: mov             x3, x0
    // 0x743580: r0 = pickDate()
    //     0x743580: bl              #0x6d205c  ; [package:umrem_demo/features/admin/widgets/events/pick_date_dialog.dart] ::pickDate
    // 0x743584: LeaveFrame
    //     0x743584: mov             SP, fp
    //     0x743588: ldp             fp, lr, [SP], #0x10
    // 0x74358c: ret
    //     0x74358c: ret             
    // 0x743590: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x743590: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x743594: b               #0x743540
  }
  [closure] Null <anonymous closure>(dynamic, DateTime) {
    // ** addr: 0x743598, size: 0xa0
    // 0x743598: EnterFrame
    //     0x743598: stp             fp, lr, [SP, #-0x10]!
    //     0x74359c: mov             fp, SP
    // 0x7435a0: AllocStack(0x10)
    //     0x7435a0: sub             SP, SP, #0x10
    // 0x7435a4: SetupParameters([dynamic _ /* r0 */])
    //     0x7435a4: ldr             x0, [fp, #0x18]
    //     0x7435a8: ldur            w1, [x0, #0x17]
    //     0x7435ac: add             x1, x1, HEAP, lsl #32
    //     0x7435b0: stur            x1, [fp, #-8]
    // 0x7435b4: CheckStackOverflow
    //     0x7435b4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7435b8: cmp             SP, x16
    //     0x7435bc: b.ls            #0x743630
    // 0x7435c0: r1 = 1
    //     0x7435c0: mov             x1, #1
    // 0x7435c4: r0 = AllocateContext()
    //     0x7435c4: bl              #0x927010  ; AllocateContextStub
    // 0x7435c8: mov             x1, x0
    // 0x7435cc: ldur            x0, [fp, #-8]
    // 0x7435d0: StoreField: r1->field_b = r0
    //     0x7435d0: stur            w0, [x1, #0xb]
    // 0x7435d4: ldr             x2, [fp, #0x10]
    // 0x7435d8: StoreField: r1->field_f = r2
    //     0x7435d8: stur            w2, [x1, #0xf]
    // 0x7435dc: LoadField: r3 = r0->field_b
    //     0x7435dc: ldur            w3, [x0, #0xb]
    // 0x7435e0: DecompressPointer r3
    //     0x7435e0: add             x3, x3, HEAP, lsl #32
    // 0x7435e4: stur            x3, [fp, #-0x10]
    // 0x7435e8: LoadField: r0 = r3->field_f
    //     0x7435e8: ldur            w0, [x3, #0xf]
    // 0x7435ec: DecompressPointer r0
    //     0x7435ec: add             x0, x0, HEAP, lsl #32
    // 0x7435f0: mov             x2, x1
    // 0x7435f4: stur            x0, [fp, #-8]
    // 0x7435f8: r1 = Function '<anonymous closure>':.
    //     0x7435f8: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fe70] AnonymousClosure: (0x6d2ad4), in [package:umrem_demo/features/admin/screens/admin_events_screen.dart] _AdminEventsScreenState::build (0x6d0980)
    //     0x7435fc: ldr             x1, [x1, #0xe70]
    // 0x743600: r0 = AllocateClosure()
    //     0x743600: bl              #0x9273d4  ; AllocateClosureStub
    // 0x743604: ldur            x1, [fp, #-8]
    // 0x743608: mov             x2, x0
    // 0x74360c: r0 = setState()
    //     0x74360c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x743610: ldur            x0, [fp, #-0x10]
    // 0x743614: LoadField: r1 = r0->field_f
    //     0x743614: ldur            w1, [x0, #0xf]
    // 0x743618: DecompressPointer r1
    //     0x743618: add             x1, x1, HEAP, lsl #32
    // 0x74361c: r0 = _loadCalendarEvents()
    //     0x74361c: bl              #0x5f6920  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::_loadCalendarEvents
    // 0x743620: r0 = Null
    //     0x743620: mov             x0, NULL
    // 0x743624: LeaveFrame
    //     0x743624: mov             SP, fp
    //     0x743628: ldp             fp, lr, [SP], #0x10
    // 0x74362c: ret
    //     0x74362c: ret             
    // 0x743630: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x743630: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x743634: b               #0x7435c0
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x743638, size: 0x7c
    // 0x743638: EnterFrame
    //     0x743638: stp             fp, lr, [SP, #-0x10]!
    //     0x74363c: mov             fp, SP
    // 0x743640: AllocStack(0x10)
    //     0x743640: sub             SP, SP, #0x10
    // 0x743644: SetupParameters([dynamic _ /* r0 */])
    //     0x743644: ldr             x0, [fp, #0x10]
    //     0x743648: ldur            w2, [x0, #0x17]
    //     0x74364c: add             x2, x2, HEAP, lsl #32
    // 0x743650: CheckStackOverflow
    //     0x743650: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x743654: cmp             SP, x16
    //     0x743658: b.ls            #0x7436ac
    // 0x74365c: LoadField: r0 = r2->field_b
    //     0x74365c: ldur            w0, [x2, #0xb]
    // 0x743660: DecompressPointer r0
    //     0x743660: add             x0, x0, HEAP, lsl #32
    // 0x743664: stur            x0, [fp, #-0x10]
    // 0x743668: LoadField: r3 = r0->field_f
    //     0x743668: ldur            w3, [x0, #0xf]
    // 0x74366c: DecompressPointer r3
    //     0x74366c: add             x3, x3, HEAP, lsl #32
    // 0x743670: stur            x3, [fp, #-8]
    // 0x743674: r1 = Function '<anonymous closure>':.
    //     0x743674: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fe78] AnonymousClosure: (0x6d2be0), in [package:umrem_demo/features/admin/screens/admin_events_screen.dart] _AdminEventsScreenState::build (0x6d0980)
    //     0x743678: ldr             x1, [x1, #0xe78]
    // 0x74367c: r0 = AllocateClosure()
    //     0x74367c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x743680: ldur            x1, [fp, #-8]
    // 0x743684: mov             x2, x0
    // 0x743688: r0 = setState()
    //     0x743688: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x74368c: ldur            x0, [fp, #-0x10]
    // 0x743690: LoadField: r1 = r0->field_f
    //     0x743690: ldur            w1, [x0, #0xf]
    // 0x743694: DecompressPointer r1
    //     0x743694: add             x1, x1, HEAP, lsl #32
    // 0x743698: r0 = _loadCalendarEvents()
    //     0x743698: bl              #0x5f6920  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::_loadCalendarEvents
    // 0x74369c: r0 = Null
    //     0x74369c: mov             x0, NULL
    // 0x7436a0: LeaveFrame
    //     0x7436a0: mov             SP, fp
    //     0x7436a4: ldp             fp, lr, [SP], #0x10
    // 0x7436a8: ret
    //     0x7436a8: ret             
    // 0x7436ac: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7436ac: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7436b0: b               #0x74365c
  }
  [closure] void _showAddEventDialog(dynamic) {
    // ** addr: 0x7436b4, size: 0x38
    // 0x7436b4: EnterFrame
    //     0x7436b4: stp             fp, lr, [SP, #-0x10]!
    //     0x7436b8: mov             fp, SP
    // 0x7436bc: ldr             x0, [fp, #0x10]
    // 0x7436c0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7436c0: ldur            w1, [x0, #0x17]
    // 0x7436c4: DecompressPointer r1
    //     0x7436c4: add             x1, x1, HEAP, lsl #32
    // 0x7436c8: CheckStackOverflow
    //     0x7436c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7436cc: cmp             SP, x16
    //     0x7436d0: b.ls            #0x7436e4
    // 0x7436d4: r0 = _showAddEventDialog()
    //     0x7436d4: bl              #0x7436ec  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/calendar_tab.dart] _CalendarTabState::_showAddEventDialog
    // 0x7436d8: LeaveFrame
    //     0x7436d8: mov             SP, fp
    //     0x7436dc: ldp             fp, lr, [SP], #0x10
    // 0x7436e0: ret
    //     0x7436e0: ret             
    // 0x7436e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7436e4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7436e8: b               #0x7436d4
  }
  _ _showAddEventDialog(/* No info */) {
    // ** addr: 0x7436ec, size: 0x84
    // 0x7436ec: EnterFrame
    //     0x7436ec: stp             fp, lr, [SP, #-0x10]!
    //     0x7436f0: mov             fp, SP
    // 0x7436f4: AllocStack(0x8)
    //     0x7436f4: sub             SP, SP, #8
    // 0x7436f8: CheckStackOverflow
    //     0x7436f8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7436fc: cmp             SP, x16
    //     0x743700: b.ls            #0x743760
    // 0x743704: LoadField: r2 = r1->field_f
    //     0x743704: ldur            w2, [x1, #0xf]
    // 0x743708: DecompressPointer r2
    //     0x743708: add             x2, x2, HEAP, lsl #32
    // 0x74370c: cmp             w2, NULL
    // 0x743710: b.eq            #0x743768
    // 0x743714: LoadField: r3 = r1->field_13
    //     0x743714: ldur            w3, [x1, #0x13]
    // 0x743718: DecompressPointer r3
    //     0x743718: add             x3, x3, HEAP, lsl #32
    // 0x74371c: LoadField: r0 = r1->field_b
    //     0x74371c: ldur            w0, [x1, #0xb]
    // 0x743720: DecompressPointer r0
    //     0x743720: add             x0, x0, HEAP, lsl #32
    // 0x743724: cmp             w0, NULL
    // 0x743728: b.eq            #0x74376c
    // 0x74372c: LoadField: r1 = r0->field_b
    //     0x74372c: ldur            w1, [x0, #0xb]
    // 0x743730: DecompressPointer r1
    //     0x743730: add             x1, x1, HEAP, lsl #32
    // 0x743734: LoadField: r0 = r1->field_7
    //     0x743734: ldur            w0, [x1, #7]
    // 0x743738: DecompressPointer r0
    //     0x743738: add             x0, x0, HEAP, lsl #32
    // 0x74373c: str             x0, [SP]
    // 0x743740: r1 = Null
    //     0x743740: mov             x1, NULL
    // 0x743744: r4 = const [0, 0x4, 0x1, 0x3, agencyId, 0x3, null]
    //     0x743744: add             x4, PP, #0x1f, lsl #12  ; [pp+0x1fe58] List(7) [0, 0x4, 0x1, 0x3, "agencyId", 0x3, Null]
    //     0x743748: ldr             x4, [x4, #0xe58]
    // 0x74374c: r0 = showAddEditDialog()
    //     0x74374c: bl              #0x6d2cc8  ; [package:umrem_demo/features/admin/widgets/events/edit_dialog.dart] ::showAddEditDialog
    // 0x743750: r0 = Null
    //     0x743750: mov             x0, NULL
    // 0x743754: LeaveFrame
    //     0x743754: mov             SP, fp
    //     0x743758: ldp             fp, lr, [SP], #0x10
    // 0x74375c: ret
    //     0x74375c: ret             
    // 0x743760: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x743760: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x743764: b               #0x743704
    // 0x743768: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x743768: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x74376c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x74376c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 3190, size: 0x10, field offset: 0xc
//   const constructor, 
class CalendarTab extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bf5a4, size: 0x6c
    // 0x7bf5a4: EnterFrame
    //     0x7bf5a4: stp             fp, lr, [SP, #-0x10]!
    //     0x7bf5a8: mov             fp, SP
    // 0x7bf5ac: AllocStack(0x8)
    //     0x7bf5ac: sub             SP, SP, #8
    // 0x7bf5b0: CheckStackOverflow
    //     0x7bf5b0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bf5b4: cmp             SP, x16
    //     0x7bf5b8: b.ls            #0x7bf608
    // 0x7bf5bc: r0 = DateTime()
    //     0x7bf5bc: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x7bf5c0: mov             x1, x0
    // 0x7bf5c4: r0 = false
    //     0x7bf5c4: add             x0, NULL, #0x30  ; false
    // 0x7bf5c8: stur            x1, [fp, #-8]
    // 0x7bf5cc: StoreField: r1->field_7 = r0
    //     0x7bf5cc: stur            w0, [x1, #7]
    // 0x7bf5d0: r0 = _getCurrentMicros()
    //     0x7bf5d0: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x7bf5d4: r1 = LoadInt32Instr(r0)
    //     0x7bf5d4: sbfx            x1, x0, #1, #0x1f
    //     0x7bf5d8: tbz             w0, #0, #0x7bf5e0
    //     0x7bf5dc: ldur            x1, [x0, #7]
    // 0x7bf5e0: ldur            x0, [fp, #-8]
    // 0x7bf5e4: StoreField: r0->field_b = r1
    //     0x7bf5e4: stur            x1, [x0, #0xb]
    // 0x7bf5e8: r1 = <CalendarTab>
    //     0x7bf5e8: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bb40] TypeArguments: <CalendarTab>
    //     0x7bf5ec: ldr             x1, [x1, #0xb40]
    // 0x7bf5f0: r0 = _CalendarTabState()
    //     0x7bf5f0: bl              #0x7bf610  ; Allocate_CalendarTabStateStub -> _CalendarTabState (size=0x18)
    // 0x7bf5f4: ldur            x1, [fp, #-8]
    // 0x7bf5f8: StoreField: r0->field_13 = r1
    //     0x7bf5f8: stur            w1, [x0, #0x13]
    // 0x7bf5fc: LeaveFrame
    //     0x7bf5fc: mov             SP, fp
    //     0x7bf600: ldp             fp, lr, [SP], #0x10
    // 0x7bf604: ret
    //     0x7bf604: ret             
    // 0x7bf608: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bf608: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bf60c: b               #0x7bf5bc
  }
}

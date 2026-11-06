// lib: , url: package:umrem_demo/features/dualar/screens/say_dualari_page.dart

// class id: 1049577, size: 0x8
class :: {
}

// class id: 2475, size: 0x40, field offset: 0x14
class _SayDualariPageState extends State<dynamic> {

  late final SayDualariDownloadProvider _downloadController; // offset: 0x1c

  _ initState(/* No info */) {
    // ** addr: 0x5e55f8, size: 0x70
    // 0x5e55f8: EnterFrame
    //     0x5e55f8: stp             fp, lr, [SP, #-0x10]!
    //     0x5e55fc: mov             fp, SP
    // 0x5e5600: AllocStack(0x10)
    //     0x5e5600: sub             SP, SP, #0x10
    // 0x5e5604: SetupParameters(_SayDualariPageState this /* r1 => r1, fp-0x8 */)
    //     0x5e5604: stur            x1, [fp, #-8]
    // 0x5e5608: CheckStackOverflow
    //     0x5e5608: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e560c: cmp             SP, x16
    //     0x5e5610: b.ls            #0x5e5660
    // 0x5e5614: r1 = 1
    //     0x5e5614: mov             x1, #1
    // 0x5e5618: r0 = AllocateContext()
    //     0x5e5618: bl              #0x927010  ; AllocateContextStub
    // 0x5e561c: mov             x1, x0
    // 0x5e5620: ldur            x0, [fp, #-8]
    // 0x5e5624: StoreField: r1->field_f = r0
    //     0x5e5624: stur            w0, [x1, #0xf]
    // 0x5e5628: LoadField: r3 = r0->field_13
    //     0x5e5628: ldur            w3, [x0, #0x13]
    // 0x5e562c: DecompressPointer r3
    //     0x5e562c: add             x3, x3, HEAP, lsl #32
    // 0x5e5630: mov             x2, x1
    // 0x5e5634: stur            x3, [fp, #-0x10]
    // 0x5e5638: r1 = Function '<anonymous closure>':.
    //     0x5e5638: add             x1, PP, #0x20, lsl #12  ; [pp+0x20098] AnonymousClosure: (0x5e5688), in [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::initState (0x5e55f8)
    //     0x5e563c: ldr             x1, [x1, #0x98]
    // 0x5e5640: r0 = AllocateClosure()
    //     0x5e5640: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e5644: ldur            x1, [fp, #-0x10]
    // 0x5e5648: mov             x2, x0
    // 0x5e564c: r0 = addListener()
    //     0x5e564c: bl              #0x552d08  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::addListener
    // 0x5e5650: r0 = Null
    //     0x5e5650: mov             x0, NULL
    // 0x5e5654: LeaveFrame
    //     0x5e5654: mov             SP, fp
    //     0x5e5658: ldp             fp, lr, [SP], #0x10
    // 0x5e565c: ret
    //     0x5e565c: ret             
    // 0x5e5660: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e5660: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e5664: b               #0x5e5614
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5e5688, size: 0x1c8
    // 0x5e5688: EnterFrame
    //     0x5e5688: stp             fp, lr, [SP, #-0x10]!
    //     0x5e568c: mov             fp, SP
    // 0x5e5690: AllocStack(0x18)
    //     0x5e5690: sub             SP, SP, #0x18
    // 0x5e5694: SetupParameters([dynamic _ /* r0 */])
    //     0x5e5694: ldr             x0, [fp, #0x10]
    //     0x5e5698: ldur            w1, [x0, #0x17]
    //     0x5e569c: add             x1, x1, HEAP, lsl #32
    //     0x5e56a0: stur            x1, [fp, #-8]
    // 0x5e56a4: CheckStackOverflow
    //     0x5e56a4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e56a8: cmp             SP, x16
    //     0x5e56ac: b.ls            #0x5e582c
    // 0x5e56b0: r1 = 1
    //     0x5e56b0: mov             x1, #1
    // 0x5e56b4: r0 = AllocateContext()
    //     0x5e56b4: bl              #0x927010  ; AllocateContextStub
    // 0x5e56b8: mov             x2, x0
    // 0x5e56bc: ldur            x0, [fp, #-8]
    // 0x5e56c0: stur            x2, [fp, #-0x10]
    // 0x5e56c4: StoreField: r2->field_b = r0
    //     0x5e56c4: stur            w0, [x2, #0xb]
    // 0x5e56c8: LoadField: r1 = r0->field_f
    //     0x5e56c8: ldur            w1, [x0, #0xf]
    // 0x5e56cc: DecompressPointer r1
    //     0x5e56cc: add             x1, x1, HEAP, lsl #32
    // 0x5e56d0: LoadField: r3 = r1->field_13
    //     0x5e56d0: ldur            w3, [x1, #0x13]
    // 0x5e56d4: DecompressPointer r3
    //     0x5e56d4: add             x3, x3, HEAP, lsl #32
    // 0x5e56d8: LoadField: r1 = r3->field_3b
    //     0x5e56d8: ldur            w1, [x3, #0x3b]
    // 0x5e56dc: DecompressPointer r1
    //     0x5e56dc: add             x1, x1, HEAP, lsl #32
    // 0x5e56e0: r0 = single()
    //     0x5e56e0: bl              #0x3e8890  ; [dart:core] _GrowableList::single
    // 0x5e56e4: mov             x3, x0
    // 0x5e56e8: r2 = Null
    //     0x5e56e8: mov             x2, NULL
    // 0x5e56ec: r1 = Null
    //     0x5e56ec: mov             x1, NULL
    // 0x5e56f0: stur            x3, [fp, #-0x18]
    // 0x5e56f4: r4 = 60
    //     0x5e56f4: mov             x4, #0x3c
    // 0x5e56f8: branchIfSmi(r0, 0x5e5704)
    //     0x5e56f8: tbz             w0, #0, #0x5e5704
    // 0x5e56fc: r4 = LoadClassIdInstr(r0)
    //     0x5e56fc: ldur            x4, [x0, #-1]
    //     0x5e5700: ubfx            x4, x4, #0xc, #0x14
    // 0x5e5704: cmp             x4, #0xf38
    // 0x5e5708: b.eq            #0x5e5720
    // 0x5e570c: r8 = _PagePosition
    //     0x5e570c: add             x8, PP, #0x17, lsl #12  ; [pp+0x17e08] Type: _PagePosition
    //     0x5e5710: ldr             x8, [x8, #0xe08]
    // 0x5e5714: r3 = Null
    //     0x5e5714: add             x3, PP, #0x20, lsl #12  ; [pp+0x200a0] Null
    //     0x5e5718: ldr             x3, [x3, #0xa0]
    // 0x5e571c: r0 = DefaultTypeTest()
    //     0x5e571c: bl              #0x925f98  ; DefaultTypeTestStub
    // 0x5e5720: ldur            x1, [fp, #-0x18]
    // 0x5e5724: r0 = page()
    //     0x5e5724: bl              #0x5e5474  ; [package:flutter/src/widgets/page_view.dart] _PagePosition::page
    // 0x5e5728: cmp             w0, NULL
    // 0x5e572c: b.ne            #0x5e5738
    // 0x5e5730: r0 = Null
    //     0x5e5730: mov             x0, NULL
    // 0x5e5734: b               #0x5e578c
    // 0x5e5738: LoadField: d0 = r0->field_7
    //     0x5e5738: ldur            d0, [x0, #7]
    // 0x5e573c: stp             fp, lr, [SP, #-0x10]!
    // 0x5e5740: mov             fp, SP
    // 0x5e5744: CallRuntime_LibcRound(double) -> double
    //     0x5e5744: and             SP, SP, #0xfffffffffffffff0
    //     0x5e5748: mov             sp, SP
    //     0x5e574c: ldr             x16, [THR, #0x758]  ; THR::LibcRound
    //     0x5e5750: str             x16, [THR, #0x6b0]  ; THR::vm_tag
    //     0x5e5754: blr             x16
    //     0x5e5758: mov             x16, #8
    //     0x5e575c: str             x16, [THR, #0x6b0]  ; THR::vm_tag
    //     0x5e5760: ldr             x16, [THR, #0x678]  ; THR::saved_stack_limit
    //     0x5e5764: sub             sp, x16, #1, lsl #12
    //     0x5e5768: mov             SP, fp
    //     0x5e576c: ldp             fp, lr, [SP], #0x10
    // 0x5e5770: fcmp            d0, d0
    // 0x5e5774: b.vs            #0x5e5834
    // 0x5e5778: fcvtzs          x0, d0
    // 0x5e577c: asr             x16, x0, #0x1e
    // 0x5e5780: cmp             x16, x0, asr #63
    // 0x5e5784: b.ne            #0x5e5834
    // 0x5e5788: lsl             x0, x0, #1
    // 0x5e578c: cmp             w0, NULL
    // 0x5e5790: b.ne            #0x5e579c
    // 0x5e5794: r4 = 0
    //     0x5e5794: mov             x4, #0
    // 0x5e5798: b               #0x5e57ac
    // 0x5e579c: r1 = LoadInt32Instr(r0)
    //     0x5e579c: sbfx            x1, x0, #1, #0x1f
    //     0x5e57a0: tbz             w0, #0, #0x5e57a8
    //     0x5e57a4: ldur            x1, [x0, #7]
    // 0x5e57a8: mov             x4, x1
    // 0x5e57ac: ldur            x2, [fp, #-8]
    // 0x5e57b0: ldur            x3, [fp, #-0x10]
    // 0x5e57b4: r0 = BoxInt64Instr(r4)
    //     0x5e57b4: sbfiz           x0, x4, #1, #0x1f
    //     0x5e57b8: cmp             x4, x0, asr #1
    //     0x5e57bc: b.eq            #0x5e57c8
    //     0x5e57c0: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x5e57c4: stur            x4, [x0, #7]
    // 0x5e57c8: StoreField: r3->field_f = r0
    //     0x5e57c8: stur            w0, [x3, #0xf]
    //     0x5e57cc: tbz             w0, #0, #0x5e57e8
    //     0x5e57d0: ldurb           w16, [x3, #-1]
    //     0x5e57d4: ldurb           w17, [x0, #-1]
    //     0x5e57d8: and             x16, x17, x16, lsr #2
    //     0x5e57dc: tst             x16, HEAP, lsr #32
    //     0x5e57e0: b.eq            #0x5e57e8
    //     0x5e57e4: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5e57e8: LoadField: r0 = r2->field_f
    //     0x5e57e8: ldur            w0, [x2, #0xf]
    // 0x5e57ec: DecompressPointer r0
    //     0x5e57ec: add             x0, x0, HEAP, lsl #32
    // 0x5e57f0: stur            x0, [fp, #-0x18]
    // 0x5e57f4: LoadField: r1 = r0->field_2f
    //     0x5e57f4: ldur            x1, [x0, #0x2f]
    // 0x5e57f8: cmp             x4, x1
    // 0x5e57fc: b.eq            #0x5e581c
    // 0x5e5800: mov             x2, x3
    // 0x5e5804: r1 = Function '<anonymous closure>':.
    //     0x5e5804: add             x1, PP, #0x20, lsl #12  ; [pp+0x200b0] AnonymousClosure: (0x5e5850), in [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::initState (0x5e55f8)
    //     0x5e5808: ldr             x1, [x1, #0xb0]
    // 0x5e580c: r0 = AllocateClosure()
    //     0x5e580c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e5810: ldur            x1, [fp, #-0x18]
    // 0x5e5814: mov             x2, x0
    // 0x5e5818: r0 = setState()
    //     0x5e5818: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x5e581c: r0 = Null
    //     0x5e581c: mov             x0, NULL
    // 0x5e5820: LeaveFrame
    //     0x5e5820: mov             SP, fp
    //     0x5e5824: ldp             fp, lr, [SP], #0x10
    // 0x5e5828: ret
    //     0x5e5828: ret             
    // 0x5e582c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e582c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e5830: b               #0x5e56b0
    // 0x5e5834: SaveReg d0
    //     0x5e5834: str             q0, [SP, #-0x10]!
    // 0x5e5838: r0 = 76
    //     0x5e5838: mov             x0, #0x4c
    // 0x5e583c: r30 = DoubleToIntegerStub
    //     0x5e583c: ldr             lr, [PP, #0x1f38]  ; [pp+0x1f38] Stub: DoubleToInteger (0x3c184c)
    // 0x5e5840: LoadField: r30 = r30->field_7
    //     0x5e5840: ldur            lr, [lr, #7]
    // 0x5e5844: blr             lr
    // 0x5e5848: RestoreReg d0
    //     0x5e5848: ldr             q0, [SP], #0x10
    // 0x5e584c: b               #0x5e578c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5e5850, size: 0x50
    // 0x5e5850: ldr             x1, [SP]
    // 0x5e5854: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x5e5854: ldur            w2, [x1, #0x17]
    // 0x5e5858: DecompressPointer r2
    //     0x5e5858: add             x2, x2, HEAP, lsl #32
    // 0x5e585c: LoadField: r1 = r2->field_b
    //     0x5e585c: ldur            w1, [x2, #0xb]
    // 0x5e5860: DecompressPointer r1
    //     0x5e5860: add             x1, x1, HEAP, lsl #32
    // 0x5e5864: LoadField: r3 = r1->field_f
    //     0x5e5864: ldur            w3, [x1, #0xf]
    // 0x5e5868: DecompressPointer r3
    //     0x5e5868: add             x3, x3, HEAP, lsl #32
    // 0x5e586c: LoadField: r1 = r2->field_f
    //     0x5e586c: ldur            w1, [x2, #0xf]
    // 0x5e5870: DecompressPointer r1
    //     0x5e5870: add             x1, x1, HEAP, lsl #32
    // 0x5e5874: r2 = LoadInt32Instr(r1)
    //     0x5e5874: sbfx            x2, x1, #1, #0x1f
    //     0x5e5878: tbz             w1, #0, #0x5e5880
    //     0x5e587c: ldur            x2, [x1, #7]
    // 0x5e5880: StoreField: r3->field_2f = r2
    //     0x5e5880: stur            x2, [x3, #0x2f]
    // 0x5e5884: tbnz            x2, #0x3f, #0x5e5898
    // 0x5e5888: cmp             x2, #7
    // 0x5e588c: b.ge            #0x5e5898
    // 0x5e5890: add             x1, x2, #1
    // 0x5e5894: StoreField: r3->field_27 = r1
    //     0x5e5894: stur            x1, [x3, #0x27]
    // 0x5e5898: r0 = Null
    //     0x5e5898: mov             x0, NULL
    // 0x5e589c: ret
    //     0x5e589c: ret             
  }
  _ didChangeDependencies(/* No info */) {
    // ** addr: 0x63a4dc, size: 0xb8
    // 0x63a4dc: EnterFrame
    //     0x63a4dc: stp             fp, lr, [SP, #-0x10]!
    //     0x63a4e0: mov             fp, SP
    // 0x63a4e4: AllocStack(0x18)
    //     0x63a4e4: sub             SP, SP, #0x18
    // 0x63a4e8: SetupParameters(_SayDualariPageState this /* r1 => r1, fp-0x8 */)
    //     0x63a4e8: stur            x1, [fp, #-8]
    // 0x63a4ec: CheckStackOverflow
    //     0x63a4ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x63a4f0: cmp             SP, x16
    //     0x63a4f4: b.ls            #0x63a588
    // 0x63a4f8: LoadField: r0 = r1->field_37
    //     0x63a4f8: ldur            w0, [x1, #0x37]
    // 0x63a4fc: DecompressPointer r0
    //     0x63a4fc: add             x0, x0, HEAP, lsl #32
    // 0x63a500: tbz             w0, #4, #0x63a564
    // 0x63a504: LoadField: r0 = r1->field_f
    //     0x63a504: ldur            w0, [x1, #0xf]
    // 0x63a508: DecompressPointer r0
    //     0x63a508: add             x0, x0, HEAP, lsl #32
    // 0x63a50c: cmp             w0, NULL
    // 0x63a510: b.eq            #0x63a590
    // 0x63a514: r16 = <SayDualariDownloadProvider>
    //     0x63a514: add             x16, PP, #0x10, lsl #12  ; [pp+0x10bd0] TypeArguments: <SayDualariDownloadProvider>
    //     0x63a518: ldr             x16, [x16, #0xbd0]
    // 0x63a51c: stp             x0, x16, [SP]
    // 0x63a520: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x63a520: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x63a524: r0 = ReadContext.read()
    //     0x63a524: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x63a528: ldur            x1, [fp, #-8]
    // 0x63a52c: LoadField: r2 = r1->field_1b
    //     0x63a52c: ldur            w2, [x1, #0x1b]
    // 0x63a530: DecompressPointer r2
    //     0x63a530: add             x2, x2, HEAP, lsl #32
    // 0x63a534: r16 = Sentinel
    //     0x63a534: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x63a538: cmp             w2, w16
    // 0x63a53c: b.ne            #0x63a574
    // 0x63a540: r2 = true
    //     0x63a540: add             x2, NULL, #0x20  ; true
    // 0x63a544: StoreField: r1->field_1b = r0
    //     0x63a544: stur            w0, [x1, #0x1b]
    //     0x63a548: ldurb           w16, [x1, #-1]
    //     0x63a54c: ldurb           w17, [x0, #-1]
    //     0x63a550: and             x16, x17, x16, lsr #2
    //     0x63a554: tst             x16, HEAP, lsr #32
    //     0x63a558: b.eq            #0x63a560
    //     0x63a55c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x63a560: StoreField: r1->field_37 = r2
    //     0x63a560: stur            w2, [x1, #0x37]
    // 0x63a564: r0 = Null
    //     0x63a564: mov             x0, NULL
    // 0x63a568: LeaveFrame
    //     0x63a568: mov             SP, fp
    //     0x63a56c: ldp             fp, lr, [SP], #0x10
    // 0x63a570: ret
    //     0x63a570: ret             
    // 0x63a574: r16 = "_downloadController@1023509472"
    //     0x63a574: add             x16, PP, #0x20, lsl #12  ; [pp+0x20090] "_downloadController@1023509472"
    //     0x63a578: ldr             x16, [x16, #0x90]
    // 0x63a57c: str             x16, [SP]
    // 0x63a580: r0 = _throwFieldAlreadyInitialized()
    //     0x63a580: bl              #0x3e637c  ; [dart:_internal] LateError::_throwFieldAlreadyInitialized
    // 0x63a584: brk             #0
    // 0x63a588: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x63a588: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x63a58c: b               #0x63a4f8
    // 0x63a590: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x63a590: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x722ed4, size: 0x28
    // 0x722ed4: ldr             x1, [SP]
    // 0x722ed8: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x722ed8: ldur            w2, [x1, #0x17]
    // 0x722edc: DecompressPointer r2
    //     0x722edc: add             x2, x2, HEAP, lsl #32
    // 0x722ee0: LoadField: r1 = r2->field_f
    //     0x722ee0: ldur            w1, [x2, #0xf]
    // 0x722ee4: DecompressPointer r1
    //     0x722ee4: add             x1, x1, HEAP, lsl #32
    // 0x722ee8: LoadField: r2 = r1->field_27
    //     0x722ee8: ldur            x2, [x1, #0x27]
    // 0x722eec: add             x3, x2, #1
    // 0x722ef0: StoreField: r1->field_27 = r3
    //     0x722ef0: stur            x3, [x1, #0x27]
    // 0x722ef4: r0 = Null
    //     0x722ef4: mov             x0, NULL
    // 0x722ef8: ret
    //     0x722ef8: ret             
  }
  _ incrementCount(/* No info */) {
    // ** addr: 0x722efc, size: 0x9c
    // 0x722efc: EnterFrame
    //     0x722efc: stp             fp, lr, [SP, #-0x10]!
    //     0x722f00: mov             fp, SP
    // 0x722f04: AllocStack(0x8)
    //     0x722f04: sub             SP, SP, #8
    // 0x722f08: SetupParameters(_SayDualariPageState this /* r1 => r1, fp-0x8 */)
    //     0x722f08: stur            x1, [fp, #-8]
    // 0x722f0c: CheckStackOverflow
    //     0x722f0c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x722f10: cmp             SP, x16
    //     0x722f14: b.ls            #0x722f90
    // 0x722f18: r1 = 1
    //     0x722f18: mov             x1, #1
    // 0x722f1c: r0 = AllocateContext()
    //     0x722f1c: bl              #0x927010  ; AllocateContextStub
    // 0x722f20: mov             x1, x0
    // 0x722f24: ldur            x0, [fp, #-8]
    // 0x722f28: StoreField: r1->field_f = r0
    //     0x722f28: stur            w0, [x1, #0xf]
    // 0x722f2c: LoadField: r2 = r0->field_27
    //     0x722f2c: ldur            x2, [x0, #0x27]
    // 0x722f30: cmp             x2, #7
    // 0x722f34: b.ge            #0x722f80
    // 0x722f38: mov             x2, x1
    // 0x722f3c: r1 = Function '<anonymous closure>':.
    //     0x722f3c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20040] AnonymousClosure: (0x722ed4), in [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::incrementCount (0x722efc)
    //     0x722f40: ldr             x1, [x1, #0x40]
    // 0x722f44: r0 = AllocateClosure()
    //     0x722f44: bl              #0x9273d4  ; AllocateClosureStub
    // 0x722f48: ldur            x1, [fp, #-8]
    // 0x722f4c: mov             x2, x0
    // 0x722f50: r0 = setState()
    //     0x722f50: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x722f54: ldur            x0, [fp, #-8]
    // 0x722f58: LoadField: r1 = r0->field_13
    //     0x722f58: ldur            w1, [x0, #0x13]
    // 0x722f5c: DecompressPointer r1
    //     0x722f5c: add             x1, x1, HEAP, lsl #32
    // 0x722f60: LoadField: r2 = r0->field_27
    //     0x722f60: ldur            x2, [x0, #0x27]
    // 0x722f64: sub             x0, x2, #1
    // 0x722f68: mov             x2, x0
    // 0x722f6c: r3 = Instance_Cubic
    //     0x722f6c: add             x3, PP, #0x20, lsl #12  ; [pp+0x20048] Obj!Cubic@a0f991
    //     0x722f70: ldr             x3, [x3, #0x48]
    // 0x722f74: r5 = Instance_Duration
    //     0x722f74: add             x5, PP, #0x11, lsl #12  ; [pp+0x119e0] Obj!Duration@a2dc51
    //     0x722f78: ldr             x5, [x5, #0x9e0]
    // 0x722f7c: r0 = animateToPage()
    //     0x722f7c: bl              #0x575304  ; [package:flutter/src/widgets/page_view.dart] PageController::animateToPage
    // 0x722f80: r0 = Null
    //     0x722f80: mov             x0, NULL
    // 0x722f84: LeaveFrame
    //     0x722f84: mov             SP, fp
    //     0x722f88: ldp             fp, lr, [SP], #0x10
    // 0x722f8c: ret
    //     0x722f8c: ret             
    // 0x722f90: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x722f90: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x722f94: b               #0x722f18
  }
  [closure] void incrementCount(dynamic) {
    // ** addr: 0x722f98, size: 0x38
    // 0x722f98: EnterFrame
    //     0x722f98: stp             fp, lr, [SP, #-0x10]!
    //     0x722f9c: mov             fp, SP
    // 0x722fa0: ldr             x0, [fp, #0x10]
    // 0x722fa4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x722fa4: ldur            w1, [x0, #0x17]
    // 0x722fa8: DecompressPointer r1
    //     0x722fa8: add             x1, x1, HEAP, lsl #32
    // 0x722fac: CheckStackOverflow
    //     0x722fac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x722fb0: cmp             SP, x16
    //     0x722fb4: b.ls            #0x722fc8
    // 0x722fb8: r0 = incrementCount()
    //     0x722fb8: bl              #0x722efc  ; [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::incrementCount
    // 0x722fbc: LeaveFrame
    //     0x722fbc: mov             SP, fp
    //     0x722fc0: ldp             fp, lr, [SP], #0x10
    // 0x722fc4: ret
    //     0x722fc4: ret             
    // 0x722fc8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x722fc8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x722fcc: b               #0x722fb8
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7231c0, size: 0x4c
    // 0x7231c0: r2 = 1
    //     0x7231c0: mov             x2, #1
    // 0x7231c4: ldr             x3, [SP]
    // 0x7231c8: ArrayLoad: r4 = r3[0]  ; List_4
    //     0x7231c8: ldur            w4, [x3, #0x17]
    // 0x7231cc: DecompressPointer r4
    //     0x7231cc: add             x4, x4, HEAP, lsl #32
    // 0x7231d0: LoadField: r3 = r4->field_f
    //     0x7231d0: ldur            w3, [x4, #0xf]
    // 0x7231d4: DecompressPointer r3
    //     0x7231d4: add             x3, x3, HEAP, lsl #32
    // 0x7231d8: LoadField: r4 = r3->field_1f
    //     0x7231d8: ldur            x4, [x3, #0x1f]
    // 0x7231dc: sub             x5, x2, x4
    // 0x7231e0: StoreField: r3->field_1f = r5
    //     0x7231e0: stur            x5, [x3, #0x1f]
    // 0x7231e4: r0 = BoxInt64Instr(r5)
    //     0x7231e4: sbfiz           x0, x5, #1, #0x1f
    //     0x7231e8: cmp             x5, x0, asr #1
    //     0x7231ec: b.eq            #0x723208
    //     0x7231f0: stp             fp, lr, [SP, #-0x10]!
    //     0x7231f4: mov             fp, SP
    //     0x7231f8: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7231fc: mov             SP, fp
    //     0x723200: ldp             fp, lr, [SP], #0x10
    //     0x723204: stur            x5, [x0, #7]
    // 0x723208: ret
    //     0x723208: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72320c, size: 0x60
    // 0x72320c: EnterFrame
    //     0x72320c: stp             fp, lr, [SP, #-0x10]!
    //     0x723210: mov             fp, SP
    // 0x723214: AllocStack(0x8)
    //     0x723214: sub             SP, SP, #8
    // 0x723218: SetupParameters([dynamic _ /* r0 */])
    //     0x723218: ldr             x0, [fp, #0x10]
    //     0x72321c: ldur            w2, [x0, #0x17]
    //     0x723220: add             x2, x2, HEAP, lsl #32
    // 0x723224: CheckStackOverflow
    //     0x723224: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x723228: cmp             SP, x16
    //     0x72322c: b.ls            #0x723264
    // 0x723230: LoadField: r0 = r2->field_f
    //     0x723230: ldur            w0, [x2, #0xf]
    // 0x723234: DecompressPointer r0
    //     0x723234: add             x0, x0, HEAP, lsl #32
    // 0x723238: stur            x0, [fp, #-8]
    // 0x72323c: r1 = Function '<anonymous closure>':.
    //     0x72323c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20088] AnonymousClosure: (0x7231c0), in [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::build (0x72344c)
    //     0x723240: ldr             x1, [x1, #0x88]
    // 0x723244: r0 = AllocateClosure()
    //     0x723244: bl              #0x9273d4  ; AllocateClosureStub
    // 0x723248: ldur            x1, [fp, #-8]
    // 0x72324c: mov             x2, x0
    // 0x723250: r0 = setState()
    //     0x723250: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x723254: r0 = Null
    //     0x723254: mov             x0, NULL
    // 0x723258: LeaveFrame
    //     0x723258: mov             SP, fp
    //     0x72325c: ldp             fp, lr, [SP], #0x10
    // 0x723260: ret
    //     0x723260: ret             
    // 0x723264: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x723264: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x723268: b               #0x723230
  }
  [closure] IconButton <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x72326c, size: 0x18c
    // 0x72326c: EnterFrame
    //     0x72326c: stp             fp, lr, [SP, #-0x10]!
    //     0x723270: mov             fp, SP
    // 0x723274: AllocStack(0x20)
    //     0x723274: sub             SP, SP, #0x20
    // 0x723278: SetupParameters([dynamic _ /* r0 */])
    //     0x723278: ldr             x0, [fp, #0x18]
    //     0x72327c: ldur            w3, [x0, #0x17]
    //     0x723280: add             x3, x3, HEAP, lsl #32
    //     0x723284: stur            x3, [fp, #-0x10]
    // 0x723288: CheckStackOverflow
    //     0x723288: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72328c: cmp             SP, x16
    //     0x723290: b.ls            #0x7233e8
    // 0x723294: LoadField: r0 = r3->field_f
    //     0x723294: ldur            w0, [x3, #0xf]
    // 0x723298: DecompressPointer r0
    //     0x723298: add             x0, x0, HEAP, lsl #32
    // 0x72329c: LoadField: r1 = r0->field_2f
    //     0x72329c: ldur            x1, [x0, #0x2f]
    // 0x7232a0: tbnz            x1, #0x3f, #0x7232bc
    // 0x7232a4: cmp             x1, #6
    // 0x7232a8: r16 = true
    //     0x7232a8: add             x16, NULL, #0x20  ; true
    // 0x7232ac: r17 = false
    //     0x7232ac: add             x17, NULL, #0x30  ; false
    // 0x7232b0: csel            x2, x16, x17, le
    // 0x7232b4: mov             x4, x2
    // 0x7232b8: b               #0x7232c0
    // 0x7232bc: r4 = false
    //     0x7232bc: add             x4, NULL, #0x30  ; false
    // 0x7232c0: stur            x4, [fp, #-8]
    // 0x7232c4: tbz             w4, #4, #0x7232e4
    // 0x7232c8: r1 = _ConstMap len:12
    //     0x7232c8: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7232cc: r2 = 600
    //     0x7232cc: mov             x2, #0x258
    // 0x7232d0: r0 = []()
    //     0x7232d0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7232d4: cmp             w0, NULL
    // 0x7232d8: b.eq            #0x7233f0
    // 0x7232dc: mov             x1, x0
    // 0x7232e0: b               #0x723314
    // 0x7232e4: LoadField: r1 = r0->field_1f
    //     0x7232e4: ldur            x1, [x0, #0x1f]
    // 0x7232e8: cmp             x1, #1
    // 0x7232ec: b.ne            #0x7232fc
    // 0x7232f0: r0 = Instance_Color
    //     0x7232f0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7232f4: ldr             x0, [x0, #0xb78]
    // 0x7232f8: b               #0x723310
    // 0x7232fc: r1 = _ConstMap len:12
    //     0x7232fc: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x723300: r2 = 1200
    //     0x723300: mov             x2, #0x4b0
    // 0x723304: r0 = []()
    //     0x723304: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x723308: cmp             w0, NULL
    // 0x72330c: b.eq            #0x7233f4
    // 0x723310: mov             x1, x0
    // 0x723314: ldur            x0, [fp, #-8]
    // 0x723318: stur            x1, [fp, #-0x18]
    // 0x72331c: r0 = Icon()
    //     0x72331c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x723320: mov             x3, x0
    // 0x723324: r0 = Instance_IconData
    //     0x723324: add             x0, PP, #0x20, lsl #12  ; [pp+0x20060] Obj!IconData@a0a261
    //     0x723328: ldr             x0, [x0, #0x60]
    // 0x72332c: stur            x3, [fp, #-0x20]
    // 0x723330: StoreField: r3->field_b = r0
    //     0x723330: stur            w0, [x3, #0xb]
    // 0x723334: ldur            x0, [fp, #-0x18]
    // 0x723338: StoreField: r3->field_23 = r0
    //     0x723338: stur            w0, [x3, #0x23]
    // 0x72333c: ldur            x0, [fp, #-8]
    // 0x723340: tbnz            w0, #4, #0x72335c
    // 0x723344: ldur            x2, [fp, #-0x10]
    // 0x723348: r1 = Function '<anonymous closure>':.
    //     0x723348: add             x1, PP, #0x20, lsl #12  ; [pp+0x20068] AnonymousClosure: (0x72320c), in [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::build (0x72344c)
    //     0x72334c: ldr             x1, [x1, #0x68]
    // 0x723350: r0 = AllocateClosure()
    //     0x723350: bl              #0x9273d4  ; AllocateClosureStub
    // 0x723354: mov             x1, x0
    // 0x723358: b               #0x723360
    // 0x72335c: r1 = Null
    //     0x72335c: mov             x1, NULL
    // 0x723360: ldur            x0, [fp, #-8]
    // 0x723364: stur            x1, [fp, #-0x18]
    // 0x723368: tbz             w0, #4, #0x723378
    // 0x72336c: r2 = "Bu sayfa için dil seçeneği mevcut değil"
    //     0x72336c: add             x2, PP, #0x20, lsl #12  ; [pp+0x20070] "Bu sayfa için dil seçeneği mevcut değil"
    //     0x723370: ldr             x2, [x2, #0x70]
    // 0x723374: b               #0x7233a4
    // 0x723378: ldur            x0, [fp, #-0x10]
    // 0x72337c: LoadField: r2 = r0->field_f
    //     0x72337c: ldur            w2, [x0, #0xf]
    // 0x723380: DecompressPointer r2
    //     0x723380: add             x2, x2, HEAP, lsl #32
    // 0x723384: LoadField: r0 = r2->field_1f
    //     0x723384: ldur            x0, [x2, #0x1f]
    // 0x723388: cbnz            x0, #0x723398
    // 0x72338c: r0 = "Türkçe Çeviri"
    //     0x72338c: add             x0, PP, #0x20, lsl #12  ; [pp+0x20078] "Türkçe Çeviri"
    //     0x723390: ldr             x0, [x0, #0x78]
    // 0x723394: b               #0x7233a0
    // 0x723398: r0 = "Arapça Metin"
    //     0x723398: add             x0, PP, #0x20, lsl #12  ; [pp+0x20080] "Arapça Metin"
    //     0x72339c: ldr             x0, [x0, #0x80]
    // 0x7233a0: mov             x2, x0
    // 0x7233a4: ldur            x0, [fp, #-0x20]
    // 0x7233a8: stur            x2, [fp, #-8]
    // 0x7233ac: r0 = IconButton()
    //     0x7233ac: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x7233b0: ldur            x1, [fp, #-0x18]
    // 0x7233b4: StoreField: r0->field_3b = r1
    //     0x7233b4: stur            w1, [x0, #0x3b]
    // 0x7233b8: r1 = false
    //     0x7233b8: add             x1, NULL, #0x30  ; false
    // 0x7233bc: StoreField: r0->field_4f = r1
    //     0x7233bc: stur            w1, [x0, #0x4f]
    // 0x7233c0: ldur            x1, [fp, #-8]
    // 0x7233c4: StoreField: r0->field_53 = r1
    //     0x7233c4: stur            w1, [x0, #0x53]
    // 0x7233c8: ldur            x1, [fp, #-0x20]
    // 0x7233cc: StoreField: r0->field_1f = r1
    //     0x7233cc: stur            w1, [x0, #0x1f]
    // 0x7233d0: r1 = Instance__IconButtonVariant
    //     0x7233d0: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x7233d4: ldr             x1, [x1, #0x1b8]
    // 0x7233d8: StoreField: r0->field_6f = r1
    //     0x7233d8: stur            w1, [x0, #0x6f]
    // 0x7233dc: LeaveFrame
    //     0x7233dc: mov             SP, fp
    //     0x7233e0: ldp             fp, lr, [SP], #0x10
    // 0x7233e4: ret
    //     0x7233e4: ret             
    // 0x7233e8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7233e8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7233ec: b               #0x723294
    // 0x7233f0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7233f0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7233f4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7233f4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ build(/* No info */) {
    // ** addr: 0x72344c, size: 0x874
    // 0x72344c: EnterFrame
    //     0x72344c: stp             fp, lr, [SP, #-0x10]!
    //     0x723450: mov             fp, SP
    // 0x723454: AllocStack(0x80)
    //     0x723454: sub             SP, SP, #0x80
    // 0x723458: SetupParameters(_SayDualariPageState this /* r1 => r0, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x723458: mov             x0, x1
    //     0x72345c: stur            x1, [fp, #-8]
    //     0x723460: stur            x2, [fp, #-0x10]
    // 0x723464: CheckStackOverflow
    //     0x723464: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x723468: cmp             SP, x16
    //     0x72346c: b.ls            #0x723cb0
    // 0x723470: r1 = 2
    //     0x723470: mov             x1, #2
    // 0x723474: r0 = AllocateContext()
    //     0x723474: bl              #0x927010  ; AllocateContextStub
    // 0x723478: mov             x3, x0
    // 0x72347c: ldur            x0, [fp, #-8]
    // 0x723480: stur            x3, [fp, #-0x18]
    // 0x723484: StoreField: r3->field_f = r0
    //     0x723484: stur            w0, [x3, #0xf]
    // 0x723488: ldur            x1, [fp, #-0x10]
    // 0x72348c: StoreField: r3->field_13 = r1
    //     0x72348c: stur            w1, [x3, #0x13]
    // 0x723490: r1 = _ConstMap len:12
    //     0x723490: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x723494: r2 = 200
    //     0x723494: mov             x2, #0xc8
    // 0x723498: r0 = []()
    //     0x723498: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x72349c: stur            x0, [fp, #-0x10]
    // 0x7234a0: cmp             w0, NULL
    // 0x7234a4: b.eq            #0x723cb8
    // 0x7234a8: r0 = Icon()
    //     0x7234a8: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7234ac: mov             x3, x0
    // 0x7234b0: r0 = Instance_IconData
    //     0x7234b0: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fea8] Obj!IconData@a09c21
    //     0x7234b4: ldr             x0, [x0, #0xea8]
    // 0x7234b8: stur            x3, [fp, #-0x20]
    // 0x7234bc: StoreField: r3->field_b = r0
    //     0x7234bc: stur            w0, [x3, #0xb]
    // 0x7234c0: r0 = Instance_Color
    //     0x7234c0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7234c4: ldr             x0, [x0, #0xb88]
    // 0x7234c8: StoreField: r3->field_23 = r0
    //     0x7234c8: stur            w0, [x3, #0x23]
    // 0x7234cc: ldur            x2, [fp, #-0x18]
    // 0x7234d0: r1 = Function '<anonymous closure>':.
    //     0x7234d0: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1feb0] AnonymousClosure: (0x7233f8), in [package:umrem_demo/features/info_screen/screens/technical_support_screen.dart] TechnicalSupportScreen::build (0x7eef84)
    //     0x7234d4: ldr             x1, [x1, #0xeb0]
    // 0x7234d8: r0 = AllocateClosure()
    //     0x7234d8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7234dc: stur            x0, [fp, #-0x28]
    // 0x7234e0: r0 = IconButton()
    //     0x7234e0: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x7234e4: mov             x1, x0
    // 0x7234e8: ldur            x0, [fp, #-0x28]
    // 0x7234ec: stur            x1, [fp, #-0x30]
    // 0x7234f0: StoreField: r1->field_3b = r0
    //     0x7234f0: stur            w0, [x1, #0x3b]
    // 0x7234f4: r0 = false
    //     0x7234f4: add             x0, NULL, #0x30  ; false
    // 0x7234f8: StoreField: r1->field_4f = r0
    //     0x7234f8: stur            w0, [x1, #0x4f]
    // 0x7234fc: ldur            x2, [fp, #-0x20]
    // 0x723500: StoreField: r1->field_1f = r2
    //     0x723500: stur            w2, [x1, #0x1f]
    // 0x723504: r2 = Instance__IconButtonVariant
    //     0x723504: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x723508: ldr             x2, [x2, #0x1b8]
    // 0x72350c: StoreField: r1->field_6f = r2
    //     0x72350c: stur            w2, [x1, #0x6f]
    // 0x723510: r0 = TextStyle()
    //     0x723510: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x723514: mov             x1, x0
    // 0x723518: r0 = true
    //     0x723518: add             x0, NULL, #0x20  ; true
    // 0x72351c: stur            x1, [fp, #-0x20]
    // 0x723520: StoreField: r1->field_7 = r0
    //     0x723520: stur            w0, [x1, #7]
    // 0x723524: r2 = Instance_Color
    //     0x723524: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x723528: ldr             x2, [x2, #0xb88]
    // 0x72352c: StoreField: r1->field_b = r2
    //     0x72352c: stur            w2, [x1, #0xb]
    // 0x723530: r3 = 20.000000
    //     0x723530: add             x3, PP, #0xc, lsl #12  ; [pp+0xce48] 20
    //     0x723534: ldr             x3, [x3, #0xe48]
    // 0x723538: StoreField: r1->field_1f = r3
    //     0x723538: stur            w3, [x1, #0x1f]
    // 0x72353c: r3 = Instance_FontWeight
    //     0x72353c: add             x3, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x723540: ldr             x3, [x3, #0x1d0]
    // 0x723544: StoreField: r1->field_23 = r3
    //     0x723544: stur            w3, [x1, #0x23]
    // 0x723548: r0 = Text()
    //     0x723548: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x72354c: mov             x3, x0
    // 0x723550: r0 = "Sa\'y Duaları (Safa ve Merve)"
    //     0x723550: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1feb8] "Sa\'y Duaları (Safa ve Merve)"
    //     0x723554: ldr             x0, [x0, #0xeb8]
    // 0x723558: stur            x3, [fp, #-0x28]
    // 0x72355c: StoreField: r3->field_b = r0
    //     0x72355c: stur            w0, [x3, #0xb]
    // 0x723560: ldur            x0, [fp, #-0x20]
    // 0x723564: StoreField: r3->field_13 = r0
    //     0x723564: stur            w0, [x3, #0x13]
    // 0x723568: ldur            x2, [fp, #-0x18]
    // 0x72356c: r1 = Function '<anonymous closure>':.
    //     0x72356c: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fec0] AnonymousClosure: (0x72326c), in [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::build (0x72344c)
    //     0x723570: ldr             x1, [x1, #0xec0]
    // 0x723574: r0 = AllocateClosure()
    //     0x723574: bl              #0x9273d4  ; AllocateClosureStub
    // 0x723578: stur            x0, [fp, #-0x20]
    // 0x72357c: r0 = Builder()
    //     0x72357c: bl              #0x4847d8  ; AllocateBuilderStub -> Builder (size=0x10)
    // 0x723580: mov             x3, x0
    // 0x723584: ldur            x0, [fp, #-0x20]
    // 0x723588: stur            x3, [fp, #-0x38]
    // 0x72358c: StoreField: r3->field_b = r0
    //     0x72358c: stur            w0, [x3, #0xb]
    // 0x723590: r1 = Null
    //     0x723590: mov             x1, NULL
    // 0x723594: r2 = 4
    //     0x723594: mov             x2, #4
    // 0x723598: r0 = AllocateArray()
    //     0x723598: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72359c: mov             x2, x0
    // 0x7235a0: ldur            x0, [fp, #-0x38]
    // 0x7235a4: stur            x2, [fp, #-0x20]
    // 0x7235a8: StoreField: r2->field_f = r0
    //     0x7235a8: stur            w0, [x2, #0xf]
    // 0x7235ac: r16 = Instance_SizedBox
    //     0x7235ac: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x7235b0: ldr             x16, [x16, #0x368]
    // 0x7235b4: StoreField: r2->field_13 = r16
    //     0x7235b4: stur            w16, [x2, #0x13]
    // 0x7235b8: r1 = <Widget>
    //     0x7235b8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7235bc: r0 = AllocateGrowableArray()
    //     0x7235bc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7235c0: mov             x1, x0
    // 0x7235c4: ldur            x0, [fp, #-0x20]
    // 0x7235c8: stur            x1, [fp, #-0x38]
    // 0x7235cc: StoreField: r1->field_f = r0
    //     0x7235cc: stur            w0, [x1, #0xf]
    // 0x7235d0: r2 = 4
    //     0x7235d0: mov             x2, #4
    // 0x7235d4: StoreField: r1->field_b = r2
    //     0x7235d4: stur            w2, [x1, #0xb]
    // 0x7235d8: r0 = AppBar()
    //     0x7235d8: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x7235dc: stur            x0, [fp, #-0x20]
    // 0x7235e0: r16 = 0.000000
    //     0x7235e0: ldr             x16, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x7235e4: r30 = Instance_Color
    //     0x7235e4: add             lr, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x7235e8: ldr             lr, [lr, #0x860]
    // 0x7235ec: stp             lr, x16, [SP, #0x18]
    // 0x7235f0: ldur            x16, [fp, #-0x30]
    // 0x7235f4: r30 = false
    //     0x7235f4: add             lr, NULL, #0x30  ; false
    // 0x7235f8: stp             lr, x16, [SP, #8]
    // 0x7235fc: ldur            x16, [fp, #-0x38]
    // 0x723600: str             x16, [SP]
    // 0x723604: mov             x1, x0
    // 0x723608: ldur            x2, [fp, #-0x28]
    // 0x72360c: r4 = const [0, 0x7, 0x5, 0x2, actions, 0x6, backgroundColor, 0x3, centerTitle, 0x5, elevation, 0x2, leading, 0x4, null]
    //     0x72360c: add             x4, PP, #0x1f, lsl #12  ; [pp+0x1fec8] List(15) [0, 0x7, 0x5, 0x2, "actions", 0x6, "backgroundColor", 0x3, "centerTitle", 0x5, "elevation", 0x2, "leading", 0x4, Null]
    //     0x723610: ldr             x4, [x4, #0xec8]
    // 0x723614: r0 = AppBar()
    //     0x723614: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x723618: r0 = Radius()
    //     0x723618: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x72361c: d0 = 16.000000
    //     0x72361c: fmov            d0, #16.00000000
    // 0x723620: stur            x0, [fp, #-0x28]
    // 0x723624: StoreField: r0->field_7 = d0
    //     0x723624: stur            d0, [x0, #7]
    // 0x723628: StoreField: r0->field_f = d0
    //     0x723628: stur            d0, [x0, #0xf]
    // 0x72362c: r0 = BorderRadius()
    //     0x72362c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x723630: mov             x2, x0
    // 0x723634: ldur            x0, [fp, #-0x28]
    // 0x723638: stur            x2, [fp, #-0x30]
    // 0x72363c: StoreField: r2->field_7 = r0
    //     0x72363c: stur            w0, [x2, #7]
    // 0x723640: StoreField: r2->field_b = r0
    //     0x723640: stur            w0, [x2, #0xb]
    // 0x723644: StoreField: r2->field_f = r0
    //     0x723644: stur            w0, [x2, #0xf]
    // 0x723648: StoreField: r2->field_13 = r0
    //     0x723648: stur            w0, [x2, #0x13]
    // 0x72364c: r16 = 0.050000
    //     0x72364c: ldr             x16, [PP, #0x5020]  ; [pp+0x5020] 0.05
    // 0x723650: str             x16, [SP]
    // 0x723654: r1 = Instance_Color
    //     0x723654: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x723658: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x723658: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x72365c: ldr             x4, [x4, #0x198]
    // 0x723660: r0 = withValues()
    //     0x723660: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x723664: stur            x0, [fp, #-0x28]
    // 0x723668: r0 = BoxShadow()
    //     0x723668: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x72366c: stur            x0, [fp, #-0x38]
    // 0x723670: ArrayStore: r0[0] = rZR  ; List_8
    //     0x723670: stur            xzr, [x0, #0x17]
    // 0x723674: r3 = Instance_BlurStyle
    //     0x723674: add             x3, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x723678: ldr             x3, [x3, #0x9b0]
    // 0x72367c: StoreField: r0->field_1f = r3
    //     0x72367c: stur            w3, [x0, #0x1f]
    // 0x723680: ldur            x1, [fp, #-0x28]
    // 0x723684: StoreField: r0->field_7 = r1
    //     0x723684: stur            w1, [x0, #7]
    // 0x723688: r1 = Instance_Offset
    //     0x723688: add             x1, PP, #0x15, lsl #12  ; [pp+0x154e8] Obj!Offset@a26b11
    //     0x72368c: ldr             x1, [x1, #0x4e8]
    // 0x723690: StoreField: r0->field_b = r1
    //     0x723690: stur            w1, [x0, #0xb]
    // 0x723694: d0 = 10.000000
    //     0x723694: fmov            d0, #10.00000000
    // 0x723698: StoreField: r0->field_f = d0
    //     0x723698: stur            d0, [x0, #0xf]
    // 0x72369c: r1 = Null
    //     0x72369c: mov             x1, NULL
    // 0x7236a0: r2 = 2
    //     0x7236a0: mov             x2, #2
    // 0x7236a4: r0 = AllocateArray()
    //     0x7236a4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7236a8: mov             x2, x0
    // 0x7236ac: ldur            x0, [fp, #-0x38]
    // 0x7236b0: stur            x2, [fp, #-0x28]
    // 0x7236b4: StoreField: r2->field_f = r0
    //     0x7236b4: stur            w0, [x2, #0xf]
    // 0x7236b8: r1 = <BoxShadow>
    //     0x7236b8: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x7236bc: ldr             x1, [x1, #0x9c0]
    // 0x7236c0: r0 = AllocateGrowableArray()
    //     0x7236c0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7236c4: mov             x1, x0
    // 0x7236c8: ldur            x0, [fp, #-0x28]
    // 0x7236cc: stur            x1, [fp, #-0x38]
    // 0x7236d0: StoreField: r1->field_f = r0
    //     0x7236d0: stur            w0, [x1, #0xf]
    // 0x7236d4: r2 = 2
    //     0x7236d4: mov             x2, #2
    // 0x7236d8: StoreField: r1->field_b = r2
    //     0x7236d8: stur            w2, [x1, #0xb]
    // 0x7236dc: r0 = BoxDecoration()
    //     0x7236dc: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7236e0: mov             x2, x0
    // 0x7236e4: r0 = Instance_Color
    //     0x7236e4: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7236e8: stur            x2, [fp, #-0x28]
    // 0x7236ec: StoreField: r2->field_7 = r0
    //     0x7236ec: stur            w0, [x2, #7]
    // 0x7236f0: ldur            x0, [fp, #-0x30]
    // 0x7236f4: StoreField: r2->field_13 = r0
    //     0x7236f4: stur            w0, [x2, #0x13]
    // 0x7236f8: ldur            x0, [fp, #-0x38]
    // 0x7236fc: ArrayStore: r2[0] = r0  ; List_4
    //     0x7236fc: stur            w0, [x2, #0x17]
    // 0x723700: r0 = Instance_BoxShape
    //     0x723700: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x723704: ldr             x0, [x0, #0x1c8]
    // 0x723708: StoreField: r2->field_23 = r0
    //     0x723708: stur            w0, [x2, #0x23]
    // 0x72370c: r16 = 0.300000
    //     0x72370c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12320] 0.3
    //     0x723710: ldr             x16, [x16, #0x320]
    // 0x723714: str             x16, [SP]
    // 0x723718: r1 = Instance_Color
    //     0x723718: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x72371c: ldr             x1, [x1, #0xb78]
    // 0x723720: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x723720: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x723724: ldr             x4, [x4, #0x198]
    // 0x723728: r0 = withValues()
    //     0x723728: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x72372c: stur            x0, [fp, #-0x30]
    // 0x723730: r0 = BoxShadow()
    //     0x723730: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x723734: stur            x0, [fp, #-0x38]
    // 0x723738: ArrayStore: r0[0] = rZR  ; List_8
    //     0x723738: stur            xzr, [x0, #0x17]
    // 0x72373c: r1 = Instance_BlurStyle
    //     0x72373c: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x723740: ldr             x1, [x1, #0x9b0]
    // 0x723744: StoreField: r0->field_1f = r1
    //     0x723744: stur            w1, [x0, #0x1f]
    // 0x723748: ldur            x1, [fp, #-0x30]
    // 0x72374c: StoreField: r0->field_7 = r1
    //     0x72374c: stur            w1, [x0, #7]
    // 0x723750: r1 = Instance_Offset
    //     0x723750: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b8] Obj!Offset@a26af1
    //     0x723754: ldr             x1, [x1, #0x9b8]
    // 0x723758: StoreField: r0->field_b = r1
    //     0x723758: stur            w1, [x0, #0xb]
    // 0x72375c: d0 = 12.000000
    //     0x72375c: fmov            d0, #12.00000000
    // 0x723760: StoreField: r0->field_f = d0
    //     0x723760: stur            d0, [x0, #0xf]
    // 0x723764: r1 = Null
    //     0x723764: mov             x1, NULL
    // 0x723768: r2 = 2
    //     0x723768: mov             x2, #2
    // 0x72376c: r0 = AllocateArray()
    //     0x72376c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x723770: mov             x2, x0
    // 0x723774: ldur            x0, [fp, #-0x38]
    // 0x723778: stur            x2, [fp, #-0x30]
    // 0x72377c: StoreField: r2->field_f = r0
    //     0x72377c: stur            w0, [x2, #0xf]
    // 0x723780: r1 = <BoxShadow>
    //     0x723780: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x723784: ldr             x1, [x1, #0x9c0]
    // 0x723788: r0 = AllocateGrowableArray()
    //     0x723788: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72378c: mov             x1, x0
    // 0x723790: ldur            x0, [fp, #-0x30]
    // 0x723794: stur            x1, [fp, #-0x38]
    // 0x723798: StoreField: r1->field_f = r0
    //     0x723798: stur            w0, [x1, #0xf]
    // 0x72379c: r0 = 2
    //     0x72379c: mov             x0, #2
    // 0x7237a0: StoreField: r1->field_b = r0
    //     0x7237a0: stur            w0, [x1, #0xb]
    // 0x7237a4: r0 = BoxDecoration()
    //     0x7237a4: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7237a8: mov             x1, x0
    // 0x7237ac: r0 = Instance_Color
    //     0x7237ac: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7237b0: ldr             x0, [x0, #0xb78]
    // 0x7237b4: stur            x1, [fp, #-0x30]
    // 0x7237b8: StoreField: r1->field_7 = r0
    //     0x7237b8: stur            w0, [x1, #7]
    // 0x7237bc: ldur            x0, [fp, #-0x38]
    // 0x7237c0: ArrayStore: r1[0] = r0  ; List_4
    //     0x7237c0: stur            w0, [x1, #0x17]
    // 0x7237c4: r0 = Instance_BoxShape
    //     0x7237c4: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x7237c8: ldr             x0, [x0, #0x1a0]
    // 0x7237cc: StoreField: r1->field_23 = r0
    //     0x7237cc: stur            w0, [x1, #0x23]
    // 0x7237d0: r0 = Container()
    //     0x7237d0: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7237d4: stur            x0, [fp, #-0x38]
    // 0x7237d8: r16 = 70.000000
    //     0x7237d8: add             x16, PP, #0x17, lsl #12  ; [pp+0x17fe0] 70
    //     0x7237dc: ldr             x16, [x16, #0xfe0]
    // 0x7237e0: r30 = 70.000000
    //     0x7237e0: add             lr, PP, #0x17, lsl #12  ; [pp+0x17fe0] 70
    //     0x7237e4: ldr             lr, [lr, #0xfe0]
    // 0x7237e8: stp             lr, x16, [SP, #0x10]
    // 0x7237ec: ldur            x16, [fp, #-0x30]
    // 0x7237f0: r30 = Instance_Icon
    //     0x7237f0: add             lr, PP, #0x1f, lsl #12  ; [pp+0x1fed0] Obj!Icon@a1e9b1
    //     0x7237f4: ldr             lr, [lr, #0xed0]
    // 0x7237f8: stp             lr, x16, [SP]
    // 0x7237fc: mov             x1, x0
    // 0x723800: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x723800: add             x4, PP, #0x15, lsl #12  ; [pp+0x15990] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x723804: ldr             x4, [x4, #0x990]
    // 0x723808: r0 = Container()
    //     0x723808: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x72380c: r0 = GestureDetector()
    //     0x72380c: bl              #0x658e60  ; AllocateGestureDetectorStub -> GestureDetector (size=0x10c)
    // 0x723810: ldur            x2, [fp, #-8]
    // 0x723814: r1 = Function 'incrementCount':.
    //     0x723814: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fed8] AnonymousClosure: (0x722f98), in [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::incrementCount (0x722efc)
    //     0x723818: ldr             x1, [x1, #0xed8]
    // 0x72381c: stur            x0, [fp, #-0x30]
    // 0x723820: r0 = AllocateClosure()
    //     0x723820: bl              #0x9273d4  ; AllocateClosureStub
    // 0x723824: ldur            x16, [fp, #-0x38]
    // 0x723828: stp             x16, x0, [SP]
    // 0x72382c: ldur            x1, [fp, #-0x30]
    // 0x723830: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, onTap, 0x1, null]
    //     0x723830: add             x4, PP, #0x14, lsl #12  ; [pp+0x14d50] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "onTap", 0x1, Null]
    //     0x723834: ldr             x4, [x4, #0xd50]
    // 0x723838: r0 = GestureDetector()
    //     0x723838: bl              #0x6582a4  ; [package:flutter/src/widgets/gesture_detector.dart] GestureDetector::GestureDetector
    // 0x72383c: r1 = _ConstMap len:12
    //     0x72383c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x723840: r2 = 1200
    //     0x723840: mov             x2, #0x4b0
    // 0x723844: r0 = []()
    //     0x723844: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x723848: stur            x0, [fp, #-0x38]
    // 0x72384c: cmp             w0, NULL
    // 0x723850: b.eq            #0x723cbc
    // 0x723854: r0 = TextStyle()
    //     0x723854: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x723858: mov             x1, x0
    // 0x72385c: r0 = true
    //     0x72385c: add             x0, NULL, #0x20  ; true
    // 0x723860: stur            x1, [fp, #-0x40]
    // 0x723864: StoreField: r1->field_7 = r0
    //     0x723864: stur            w0, [x1, #7]
    // 0x723868: ldur            x2, [fp, #-0x38]
    // 0x72386c: StoreField: r1->field_b = r2
    //     0x72386c: stur            w2, [x1, #0xb]
    // 0x723870: r2 = 14.000000
    //     0x723870: add             x2, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x723874: ldr             x2, [x2, #0x1c8]
    // 0x723878: StoreField: r1->field_1f = r2
    //     0x723878: stur            w2, [x1, #0x1f]
    // 0x72387c: r2 = Instance_FontWeight
    //     0x72387c: add             x2, PP, #0x15, lsl #12  ; [pp+0x155d0] Obj!FontWeight@a20fe1
    //     0x723880: ldr             x2, [x2, #0x5d0]
    // 0x723884: StoreField: r1->field_23 = r2
    //     0x723884: stur            w2, [x1, #0x23]
    // 0x723888: r0 = Text()
    //     0x723888: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x72388c: mov             x3, x0
    // 0x723890: r0 = "Zikirmatik"
    //     0x723890: add             x0, PP, #0x15, lsl #12  ; [pp+0x15f90] "Zikirmatik"
    //     0x723894: ldr             x0, [x0, #0xf90]
    // 0x723898: stur            x3, [fp, #-0x48]
    // 0x72389c: StoreField: r3->field_b = r0
    //     0x72389c: stur            w0, [x3, #0xb]
    // 0x7238a0: ldur            x0, [fp, #-0x40]
    // 0x7238a4: StoreField: r3->field_13 = r0
    //     0x7238a4: stur            w0, [x3, #0x13]
    // 0x7238a8: ldur            x4, [fp, #-8]
    // 0x7238ac: LoadField: r2 = r4->field_27
    //     0x7238ac: ldur            x2, [x4, #0x27]
    // 0x7238b0: r0 = BoxInt64Instr(r2)
    //     0x7238b0: sbfiz           x0, x2, #1, #0x1f
    //     0x7238b4: cmp             x2, x0, asr #1
    //     0x7238b8: b.eq            #0x7238c4
    //     0x7238bc: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7238c0: stur            x2, [x0, #7]
    // 0x7238c4: r1 = Null
    //     0x7238c4: mov             x1, NULL
    // 0x7238c8: r2 = 6
    //     0x7238c8: mov             x2, #6
    // 0x7238cc: stur            x0, [fp, #-0x38]
    // 0x7238d0: r0 = AllocateArray()
    //     0x7238d0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7238d4: mov             x1, x0
    // 0x7238d8: ldur            x0, [fp, #-0x38]
    // 0x7238dc: StoreField: r1->field_f = r0
    //     0x7238dc: stur            w0, [x1, #0xf]
    // 0x7238e0: r16 = " / "
    //     0x7238e0: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fee0] " / "
    //     0x7238e4: ldr             x16, [x16, #0xee0]
    // 0x7238e8: StoreField: r1->field_13 = r16
    //     0x7238e8: stur            w16, [x1, #0x13]
    // 0x7238ec: r16 = 14
    //     0x7238ec: mov             x16, #0xe
    // 0x7238f0: ArrayStore: r1[0] = r16  ; List_4
    //     0x7238f0: stur            w16, [x1, #0x17]
    // 0x7238f4: str             x1, [SP]
    // 0x7238f8: r0 = _interpolate()
    //     0x7238f8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7238fc: stur            x0, [fp, #-0x38]
    // 0x723900: r0 = TextStyle()
    //     0x723900: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x723904: mov             x1, x0
    // 0x723908: r0 = true
    //     0x723908: add             x0, NULL, #0x20  ; true
    // 0x72390c: stur            x1, [fp, #-0x40]
    // 0x723910: StoreField: r1->field_7 = r0
    //     0x723910: stur            w0, [x1, #7]
    // 0x723914: r2 = Instance_Color
    //     0x723914: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x723918: ldr             x2, [x2, #0xb88]
    // 0x72391c: StoreField: r1->field_b = r2
    //     0x72391c: stur            w2, [x1, #0xb]
    // 0x723920: r2 = 24.000000
    //     0x723920: add             x2, PP, #0xc, lsl #12  ; [pp+0xcf28] 24
    //     0x723924: ldr             x2, [x2, #0xf28]
    // 0x723928: StoreField: r1->field_1f = r2
    //     0x723928: stur            w2, [x1, #0x1f]
    // 0x72392c: r2 = Instance_FontWeight
    //     0x72392c: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x723930: ldr             x2, [x2, #0x1d0]
    // 0x723934: StoreField: r1->field_23 = r2
    //     0x723934: stur            w2, [x1, #0x23]
    // 0x723938: r0 = Text()
    //     0x723938: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x72393c: mov             x3, x0
    // 0x723940: ldur            x0, [fp, #-0x38]
    // 0x723944: stur            x3, [fp, #-0x50]
    // 0x723948: StoreField: r3->field_b = r0
    //     0x723948: stur            w0, [x3, #0xb]
    // 0x72394c: ldur            x0, [fp, #-0x40]
    // 0x723950: StoreField: r3->field_13 = r0
    //     0x723950: stur            w0, [x3, #0x13]
    // 0x723954: r1 = Null
    //     0x723954: mov             x1, NULL
    // 0x723958: r2 = 6
    //     0x723958: mov             x2, #6
    // 0x72395c: r0 = AllocateArray()
    //     0x72395c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x723960: mov             x2, x0
    // 0x723964: ldur            x0, [fp, #-0x48]
    // 0x723968: stur            x2, [fp, #-0x38]
    // 0x72396c: StoreField: r2->field_f = r0
    //     0x72396c: stur            w0, [x2, #0xf]
    // 0x723970: r16 = Instance_SizedBox
    //     0x723970: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x723974: ldr             x16, [x16, #0x338]
    // 0x723978: StoreField: r2->field_13 = r16
    //     0x723978: stur            w16, [x2, #0x13]
    // 0x72397c: ldur            x0, [fp, #-0x50]
    // 0x723980: ArrayStore: r2[0] = r0  ; List_4
    //     0x723980: stur            w0, [x2, #0x17]
    // 0x723984: r1 = <Widget>
    //     0x723984: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x723988: r0 = AllocateGrowableArray()
    //     0x723988: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72398c: mov             x1, x0
    // 0x723990: ldur            x0, [fp, #-0x38]
    // 0x723994: stur            x1, [fp, #-0x40]
    // 0x723998: StoreField: r1->field_f = r0
    //     0x723998: stur            w0, [x1, #0xf]
    // 0x72399c: r2 = 6
    //     0x72399c: mov             x2, #6
    // 0x7239a0: StoreField: r1->field_b = r2
    //     0x7239a0: stur            w2, [x1, #0xb]
    // 0x7239a4: r0 = Column()
    //     0x7239a4: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7239a8: mov             x2, x0
    // 0x7239ac: r0 = Instance_Axis
    //     0x7239ac: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7239b0: stur            x2, [fp, #-0x38]
    // 0x7239b4: StoreField: r2->field_f = r0
    //     0x7239b4: stur            w0, [x2, #0xf]
    // 0x7239b8: r3 = Instance_MainAxisAlignment
    //     0x7239b8: add             x3, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7239bc: ldr             x3, [x3, #0x230]
    // 0x7239c0: StoreField: r2->field_13 = r3
    //     0x7239c0: stur            w3, [x2, #0x13]
    // 0x7239c4: r1 = Instance_MainAxisSize
    //     0x7239c4: add             x1, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x7239c8: ldr             x1, [x1, #0xb60]
    // 0x7239cc: ArrayStore: r2[0] = r1  ; List_4
    //     0x7239cc: stur            w1, [x2, #0x17]
    // 0x7239d0: r1 = Instance_CrossAxisAlignment
    //     0x7239d0: add             x1, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7239d4: ldr             x1, [x1, #0x238]
    // 0x7239d8: StoreField: r2->field_1b = r1
    //     0x7239d8: stur            w1, [x2, #0x1b]
    // 0x7239dc: r4 = Instance_VerticalDirection
    //     0x7239dc: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7239e0: ldr             x4, [x4, #0x340]
    // 0x7239e4: StoreField: r2->field_23 = r4
    //     0x7239e4: stur            w4, [x2, #0x23]
    // 0x7239e8: r5 = Instance_Clip
    //     0x7239e8: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7239ec: ldr             x5, [x5, #0x348]
    // 0x7239f0: StoreField: r2->field_2b = r5
    //     0x7239f0: stur            w5, [x2, #0x2b]
    // 0x7239f4: StoreField: r2->field_2f = rZR
    //     0x7239f4: stur            xzr, [x2, #0x2f]
    // 0x7239f8: ldur            x1, [fp, #-0x40]
    // 0x7239fc: StoreField: r2->field_b = r1
    //     0x7239fc: stur            w1, [x2, #0xb]
    // 0x723a00: r1 = <FlexParentData>
    //     0x723a00: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x723a04: ldr             x1, [x1, #0x340]
    // 0x723a08: r0 = Expanded()
    //     0x723a08: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x723a0c: mov             x3, x0
    // 0x723a10: r0 = 1
    //     0x723a10: mov             x0, #1
    // 0x723a14: stur            x3, [fp, #-0x40]
    // 0x723a18: StoreField: r3->field_13 = r0
    //     0x723a18: stur            x0, [x3, #0x13]
    // 0x723a1c: r4 = Instance_FlexFit
    //     0x723a1c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x723a20: ldr             x4, [x4, #0x348]
    // 0x723a24: StoreField: r3->field_1b = r4
    //     0x723a24: stur            w4, [x3, #0x1b]
    // 0x723a28: ldur            x1, [fp, #-0x38]
    // 0x723a2c: StoreField: r3->field_b = r1
    //     0x723a2c: stur            w1, [x3, #0xb]
    // 0x723a30: r1 = Null
    //     0x723a30: mov             x1, NULL
    // 0x723a34: r2 = 6
    //     0x723a34: mov             x2, #6
    // 0x723a38: r0 = AllocateArray()
    //     0x723a38: bl              #0x9280a0  ; AllocateArrayStub
    // 0x723a3c: mov             x2, x0
    // 0x723a40: ldur            x0, [fp, #-0x30]
    // 0x723a44: stur            x2, [fp, #-0x38]
    // 0x723a48: StoreField: r2->field_f = r0
    //     0x723a48: stur            w0, [x2, #0xf]
    // 0x723a4c: r16 = Instance_SizedBox
    //     0x723a4c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15e48] Obj!SizedBox@a1fc71
    //     0x723a50: ldr             x16, [x16, #0xe48]
    // 0x723a54: StoreField: r2->field_13 = r16
    //     0x723a54: stur            w16, [x2, #0x13]
    // 0x723a58: ldur            x0, [fp, #-0x40]
    // 0x723a5c: ArrayStore: r2[0] = r0  ; List_4
    //     0x723a5c: stur            w0, [x2, #0x17]
    // 0x723a60: r1 = <Widget>
    //     0x723a60: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x723a64: r0 = AllocateGrowableArray()
    //     0x723a64: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x723a68: mov             x1, x0
    // 0x723a6c: ldur            x0, [fp, #-0x38]
    // 0x723a70: stur            x1, [fp, #-0x30]
    // 0x723a74: StoreField: r1->field_f = r0
    //     0x723a74: stur            w0, [x1, #0xf]
    // 0x723a78: r0 = 6
    //     0x723a78: mov             x0, #6
    // 0x723a7c: StoreField: r1->field_b = r0
    //     0x723a7c: stur            w0, [x1, #0xb]
    // 0x723a80: r0 = Row()
    //     0x723a80: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x723a84: mov             x1, x0
    // 0x723a88: r0 = Instance_Axis
    //     0x723a88: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x723a8c: stur            x1, [fp, #-0x38]
    // 0x723a90: StoreField: r1->field_f = r0
    //     0x723a90: stur            w0, [x1, #0xf]
    // 0x723a94: r0 = Instance_MainAxisAlignment
    //     0x723a94: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x723a98: ldr             x0, [x0, #0x230]
    // 0x723a9c: StoreField: r1->field_13 = r0
    //     0x723a9c: stur            w0, [x1, #0x13]
    // 0x723aa0: r2 = Instance_MainAxisSize
    //     0x723aa0: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x723aa4: ldr             x2, [x2, #0x330]
    // 0x723aa8: ArrayStore: r1[0] = r2  ; List_4
    //     0x723aa8: stur            w2, [x1, #0x17]
    // 0x723aac: r3 = Instance_CrossAxisAlignment
    //     0x723aac: add             x3, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x723ab0: ldr             x3, [x3, #0x338]
    // 0x723ab4: StoreField: r1->field_1b = r3
    //     0x723ab4: stur            w3, [x1, #0x1b]
    // 0x723ab8: r4 = Instance_VerticalDirection
    //     0x723ab8: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x723abc: ldr             x4, [x4, #0x340]
    // 0x723ac0: StoreField: r1->field_23 = r4
    //     0x723ac0: stur            w4, [x1, #0x23]
    // 0x723ac4: r5 = Instance_Clip
    //     0x723ac4: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x723ac8: ldr             x5, [x5, #0x348]
    // 0x723acc: StoreField: r1->field_2b = r5
    //     0x723acc: stur            w5, [x1, #0x2b]
    // 0x723ad0: StoreField: r1->field_2f = rZR
    //     0x723ad0: stur            xzr, [x1, #0x2f]
    // 0x723ad4: ldur            x6, [fp, #-0x30]
    // 0x723ad8: StoreField: r1->field_b = r6
    //     0x723ad8: stur            w6, [x1, #0xb]
    // 0x723adc: r0 = Container()
    //     0x723adc: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x723ae0: stur            x0, [fp, #-0x30]
    // 0x723ae4: r16 = Instance_EdgeInsets
    //     0x723ae4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x723ae8: ldr             x16, [x16, #0x240]
    // 0x723aec: r30 = Instance_EdgeInsets
    //     0x723aec: add             lr, PP, #0x15, lsl #12  ; [pp+0x15a88] Obj!EdgeInsets@a0c591
    //     0x723af0: ldr             lr, [lr, #0xa88]
    // 0x723af4: stp             lr, x16, [SP, #0x10]
    // 0x723af8: ldur            x16, [fp, #-0x28]
    // 0x723afc: ldur            lr, [fp, #-0x38]
    // 0x723b00: stp             lr, x16, [SP]
    // 0x723b04: mov             x1, x0
    // 0x723b08: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, margin, 0x1, padding, 0x2, null]
    //     0x723b08: add             x4, PP, #0x15, lsl #12  ; [pp+0x15628] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "margin", 0x1, "padding", 0x2, Null]
    //     0x723b0c: ldr             x4, [x4, #0x628]
    // 0x723b10: r0 = Container()
    //     0x723b10: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x723b14: ldur            x0, [fp, #-8]
    // 0x723b18: LoadField: r3 = r0->field_13
    //     0x723b18: ldur            w3, [x0, #0x13]
    // 0x723b1c: DecompressPointer r3
    //     0x723b1c: add             x3, x3, HEAP, lsl #32
    // 0x723b20: stur            x3, [fp, #-0x28]
    // 0x723b24: LoadField: r1 = r0->field_3b
    //     0x723b24: ldur            w1, [x0, #0x3b]
    // 0x723b28: DecompressPointer r1
    //     0x723b28: add             x1, x1, HEAP, lsl #32
    // 0x723b2c: LoadField: r0 = r1->field_b
    //     0x723b2c: ldur            w0, [x1, #0xb]
    // 0x723b30: r5 = LoadInt32Instr(r0)
    //     0x723b30: sbfx            x5, x0, #1, #0x1f
    // 0x723b34: ldur            x2, [fp, #-0x18]
    // 0x723b38: stur            x5, [fp, #-0x58]
    // 0x723b3c: r1 = Function '<anonymous closure>':.
    //     0x723b3c: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fee8] AnonymousClosure: (0x723cc0), in [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::build (0x72344c)
    //     0x723b40: ldr             x1, [x1, #0xee8]
    // 0x723b44: r0 = AllocateClosure()
    //     0x723b44: bl              #0x9273d4  ; AllocateClosureStub
    // 0x723b48: stur            x0, [fp, #-8]
    // 0x723b4c: r0 = PageView()
    //     0x723b4c: bl              #0x64e704  ; AllocatePageViewStub -> PageView (size=0x44)
    // 0x723b50: stur            x0, [fp, #-0x18]
    // 0x723b54: r16 = Instance_Axis
    //     0x723b54: ldr             x16, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x723b58: str             x16, [SP]
    // 0x723b5c: mov             x1, x0
    // 0x723b60: ldur            x2, [fp, #-0x28]
    // 0x723b64: ldur            x3, [fp, #-8]
    // 0x723b68: ldur            x5, [fp, #-0x58]
    // 0x723b6c: r4 = const [0, 0x5, 0x1, 0x4, scrollDirection, 0x4, null]
    //     0x723b6c: add             x4, PP, #0x1f, lsl #12  ; [pp+0x1fef0] List(7) [0, 0x5, 0x1, 0x4, "scrollDirection", 0x4, Null]
    //     0x723b70: ldr             x4, [x4, #0xef0]
    // 0x723b74: r0 = PageView.builder()
    //     0x723b74: bl              #0x64e4d0  ; [package:flutter/src/widgets/page_view.dart] PageView::PageView.builder
    // 0x723b78: r1 = <FlexParentData>
    //     0x723b78: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x723b7c: ldr             x1, [x1, #0x340]
    // 0x723b80: r0 = Expanded()
    //     0x723b80: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x723b84: mov             x3, x0
    // 0x723b88: r0 = 1
    //     0x723b88: mov             x0, #1
    // 0x723b8c: stur            x3, [fp, #-8]
    // 0x723b90: StoreField: r3->field_13 = r0
    //     0x723b90: stur            x0, [x3, #0x13]
    // 0x723b94: r0 = Instance_FlexFit
    //     0x723b94: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x723b98: ldr             x0, [x0, #0x348]
    // 0x723b9c: StoreField: r3->field_1b = r0
    //     0x723b9c: stur            w0, [x3, #0x1b]
    // 0x723ba0: ldur            x0, [fp, #-0x18]
    // 0x723ba4: StoreField: r3->field_b = r0
    //     0x723ba4: stur            w0, [x3, #0xb]
    // 0x723ba8: r1 = Null
    //     0x723ba8: mov             x1, NULL
    // 0x723bac: r2 = 4
    //     0x723bac: mov             x2, #4
    // 0x723bb0: r0 = AllocateArray()
    //     0x723bb0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x723bb4: mov             x2, x0
    // 0x723bb8: ldur            x0, [fp, #-0x30]
    // 0x723bbc: stur            x2, [fp, #-0x18]
    // 0x723bc0: StoreField: r2->field_f = r0
    //     0x723bc0: stur            w0, [x2, #0xf]
    // 0x723bc4: ldur            x0, [fp, #-8]
    // 0x723bc8: StoreField: r2->field_13 = r0
    //     0x723bc8: stur            w0, [x2, #0x13]
    // 0x723bcc: r1 = <Widget>
    //     0x723bcc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x723bd0: r0 = AllocateGrowableArray()
    //     0x723bd0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x723bd4: mov             x1, x0
    // 0x723bd8: ldur            x0, [fp, #-0x18]
    // 0x723bdc: stur            x1, [fp, #-8]
    // 0x723be0: StoreField: r1->field_f = r0
    //     0x723be0: stur            w0, [x1, #0xf]
    // 0x723be4: r0 = 4
    //     0x723be4: mov             x0, #4
    // 0x723be8: StoreField: r1->field_b = r0
    //     0x723be8: stur            w0, [x1, #0xb]
    // 0x723bec: r0 = Column()
    //     0x723bec: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x723bf0: mov             x1, x0
    // 0x723bf4: r0 = Instance_Axis
    //     0x723bf4: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x723bf8: stur            x1, [fp, #-0x18]
    // 0x723bfc: StoreField: r1->field_f = r0
    //     0x723bfc: stur            w0, [x1, #0xf]
    // 0x723c00: r0 = Instance_MainAxisAlignment
    //     0x723c00: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x723c04: ldr             x0, [x0, #0x230]
    // 0x723c08: StoreField: r1->field_13 = r0
    //     0x723c08: stur            w0, [x1, #0x13]
    // 0x723c0c: r0 = Instance_MainAxisSize
    //     0x723c0c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x723c10: ldr             x0, [x0, #0x330]
    // 0x723c14: ArrayStore: r1[0] = r0  ; List_4
    //     0x723c14: stur            w0, [x1, #0x17]
    // 0x723c18: r0 = Instance_CrossAxisAlignment
    //     0x723c18: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x723c1c: ldr             x0, [x0, #0x338]
    // 0x723c20: StoreField: r1->field_1b = r0
    //     0x723c20: stur            w0, [x1, #0x1b]
    // 0x723c24: r0 = Instance_VerticalDirection
    //     0x723c24: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x723c28: ldr             x0, [x0, #0x340]
    // 0x723c2c: StoreField: r1->field_23 = r0
    //     0x723c2c: stur            w0, [x1, #0x23]
    // 0x723c30: r0 = Instance_Clip
    //     0x723c30: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x723c34: ldr             x0, [x0, #0x348]
    // 0x723c38: StoreField: r1->field_2b = r0
    //     0x723c38: stur            w0, [x1, #0x2b]
    // 0x723c3c: StoreField: r1->field_2f = rZR
    //     0x723c3c: stur            xzr, [x1, #0x2f]
    // 0x723c40: ldur            x0, [fp, #-8]
    // 0x723c44: StoreField: r1->field_b = r0
    //     0x723c44: stur            w0, [x1, #0xb]
    // 0x723c48: r0 = Scaffold()
    //     0x723c48: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x723c4c: ldur            x1, [fp, #-0x20]
    // 0x723c50: ArrayStore: r0[0] = r1  ; List_4
    //     0x723c50: stur            w1, [x0, #0x17]
    // 0x723c54: ldur            x1, [fp, #-0x18]
    // 0x723c58: StoreField: r0->field_1b = r1
    //     0x723c58: stur            w1, [x0, #0x1b]
    // 0x723c5c: r1 = Instance_AlignmentDirectional
    //     0x723c5c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x723c60: ldr             x1, [x1, #0x350]
    // 0x723c64: StoreField: r0->field_2f = r1
    //     0x723c64: stur            w1, [x0, #0x2f]
    // 0x723c68: ldur            x1, [fp, #-0x10]
    // 0x723c6c: StoreField: r0->field_4f = r1
    //     0x723c6c: stur            w1, [x0, #0x4f]
    // 0x723c70: r1 = true
    //     0x723c70: add             x1, NULL, #0x20  ; true
    // 0x723c74: StoreField: r0->field_5f = r1
    //     0x723c74: stur            w1, [x0, #0x5f]
    // 0x723c78: r2 = Instance_DragStartBehavior
    //     0x723c78: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x723c7c: StoreField: r0->field_63 = r2
    //     0x723c7c: stur            w2, [x0, #0x63]
    // 0x723c80: r2 = false
    //     0x723c80: add             x2, NULL, #0x30  ; false
    // 0x723c84: StoreField: r0->field_b = r2
    //     0x723c84: stur            w2, [x0, #0xb]
    // 0x723c88: StoreField: r0->field_f = r1
    //     0x723c88: stur            w1, [x0, #0xf]
    // 0x723c8c: StoreField: r0->field_13 = r2
    //     0x723c8c: stur            w2, [x0, #0x13]
    // 0x723c90: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x723c90: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x723c94: ldr             x2, [x2, #0x358]
    // 0x723c98: StoreField: r0->field_4b = r2
    //     0x723c98: stur            w2, [x0, #0x4b]
    // 0x723c9c: StoreField: r0->field_6b = r1
    //     0x723c9c: stur            w1, [x0, #0x6b]
    // 0x723ca0: StoreField: r0->field_6f = r1
    //     0x723ca0: stur            w1, [x0, #0x6f]
    // 0x723ca4: LeaveFrame
    //     0x723ca4: mov             SP, fp
    //     0x723ca8: ldp             fp, lr, [SP], #0x10
    // 0x723cac: ret
    //     0x723cac: ret             
    // 0x723cb0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x723cb0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x723cb4: b               #0x723470
    // 0x723cb8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x723cb8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x723cbc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x723cbc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x723cc0, size: 0x98
    // 0x723cc0: EnterFrame
    //     0x723cc0: stp             fp, lr, [SP, #-0x10]!
    //     0x723cc4: mov             fp, SP
    // 0x723cc8: ldr             x0, [fp, #0x20]
    // 0x723ccc: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x723ccc: ldur            w1, [x0, #0x17]
    // 0x723cd0: DecompressPointer r1
    //     0x723cd0: add             x1, x1, HEAP, lsl #32
    // 0x723cd4: CheckStackOverflow
    //     0x723cd4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x723cd8: cmp             SP, x16
    //     0x723cdc: b.ls            #0x723d4c
    // 0x723ce0: LoadField: r2 = r1->field_f
    //     0x723ce0: ldur            w2, [x1, #0xf]
    // 0x723ce4: DecompressPointer r2
    //     0x723ce4: add             x2, x2, HEAP, lsl #32
    // 0x723ce8: LoadField: r3 = r2->field_3b
    //     0x723ce8: ldur            w3, [x2, #0x3b]
    // 0x723cec: DecompressPointer r3
    //     0x723cec: add             x3, x3, HEAP, lsl #32
    // 0x723cf0: LoadField: r0 = r3->field_b
    //     0x723cf0: ldur            w0, [x3, #0xb]
    // 0x723cf4: ldr             x1, [fp, #0x10]
    // 0x723cf8: r4 = LoadInt32Instr(r1)
    //     0x723cf8: sbfx            x4, x1, #1, #0x1f
    //     0x723cfc: tbz             w1, #0, #0x723d04
    //     0x723d00: ldur            x4, [x1, #7]
    // 0x723d04: r1 = LoadInt32Instr(r0)
    //     0x723d04: sbfx            x1, x0, #1, #0x1f
    // 0x723d08: mov             x0, x1
    // 0x723d0c: mov             x1, x4
    // 0x723d10: cmp             x1, x0
    // 0x723d14: b.hs            #0x723d54
    // 0x723d18: LoadField: r0 = r3->field_f
    //     0x723d18: ldur            w0, [x3, #0xf]
    // 0x723d1c: DecompressPointer r0
    //     0x723d1c: add             x0, x0, HEAP, lsl #32
    // 0x723d20: ArrayLoad: r1 = r0[r4]  ; Unknown_4
    //     0x723d20: add             x16, x0, x4, lsl #2
    //     0x723d24: ldur            w1, [x16, #0xf]
    // 0x723d28: DecompressPointer r1
    //     0x723d28: add             x1, x1, HEAP, lsl #32
    // 0x723d2c: mov             x16, x1
    // 0x723d30: mov             x1, x2
    // 0x723d34: mov             x2, x16
    // 0x723d38: mov             x3, x4
    // 0x723d3c: r0 = _buildDuaCard()
    //     0x723d3c: bl              #0x723d58  ; [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::_buildDuaCard
    // 0x723d40: LeaveFrame
    //     0x723d40: mov             SP, fp
    //     0x723d44: ldp             fp, lr, [SP], #0x10
    // 0x723d48: ret
    //     0x723d48: ret             
    // 0x723d4c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x723d4c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x723d50: b               #0x723ce0
    // 0x723d54: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x723d54: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  _ _buildDuaCard(/* No info */) {
    // ** addr: 0x723d58, size: 0x614
    // 0x723d58: EnterFrame
    //     0x723d58: stp             fp, lr, [SP, #-0x10]!
    //     0x723d5c: mov             fp, SP
    // 0x723d60: AllocStack(0x60)
    //     0x723d60: sub             SP, SP, #0x60
    // 0x723d64: SetupParameters(_SayDualariPageState this /* r1 => r5, fp-0x8 */, dynamic _ /* r2 => r4, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x723d64: mov             x5, x1
    //     0x723d68: mov             x4, x2
    //     0x723d6c: stur            x1, [fp, #-8]
    //     0x723d70: stur            x2, [fp, #-0x10]
    //     0x723d74: stur            x3, [fp, #-0x18]
    // 0x723d78: CheckStackOverflow
    //     0x723d78: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x723d7c: cmp             SP, x16
    //     0x723d80: b.ls            #0x724364
    // 0x723d84: r0 = LoadClassIdInstr(r4)
    //     0x723d84: ldur            x0, [x4, #-1]
    //     0x723d88: ubfx            x0, x0, #0xc, #0x14
    // 0x723d8c: mov             x1, x4
    // 0x723d90: r2 = "isZikirmatik"
    //     0x723d90: add             x2, PP, #0x1b, lsl #12  ; [pp+0x1bcf0] "isZikirmatik"
    //     0x723d94: ldr             x2, [x2, #0xcf0]
    // 0x723d98: r0 = GDT[cid_x0 + 0x36e]()
    //     0x723d98: add             lr, x0, #0x36e
    //     0x723d9c: ldr             lr, [x21, lr, lsl #3]
    //     0x723da0: blr             lr
    // 0x723da4: cmp             w0, NULL
    // 0x723da8: b.ne            #0x723db4
    // 0x723dac: r4 = true
    //     0x723dac: add             x4, NULL, #0x20  ; true
    // 0x723db0: b               #0x723db8
    // 0x723db4: mov             x4, x0
    // 0x723db8: ldur            x3, [fp, #-0x10]
    // 0x723dbc: mov             x0, x4
    // 0x723dc0: stur            x4, [fp, #-0x20]
    // 0x723dc4: r2 = Null
    //     0x723dc4: mov             x2, NULL
    // 0x723dc8: r1 = Null
    //     0x723dc8: mov             x1, NULL
    // 0x723dcc: r4 = 60
    //     0x723dcc: mov             x4, #0x3c
    // 0x723dd0: branchIfSmi(r0, 0x723ddc)
    //     0x723dd0: tbz             w0, #0, #0x723ddc
    // 0x723dd4: r4 = LoadClassIdInstr(r0)
    //     0x723dd4: ldur            x4, [x0, #-1]
    //     0x723dd8: ubfx            x4, x4, #0xc, #0x14
    // 0x723ddc: cmp             x4, #0x3f
    // 0x723de0: b.eq            #0x723df4
    // 0x723de4: r8 = bool
    //     0x723de4: ldr             x8, [PP, #0x29b0]  ; [pp+0x29b0] Type: bool
    // 0x723de8: r3 = Null
    //     0x723de8: add             x3, PP, #0x1f, lsl #12  ; [pp+0x1fef8] Null
    //     0x723dec: ldr             x3, [x3, #0xef8]
    // 0x723df0: r0 = bool()
    //     0x723df0: bl              #0x939a38  ; IsType_bool_Stub
    // 0x723df4: ldur            x3, [fp, #-0x10]
    // 0x723df8: r0 = LoadClassIdInstr(r3)
    //     0x723df8: ldur            x0, [x3, #-1]
    //     0x723dfc: ubfx            x0, x0, #0xc, #0x14
    // 0x723e00: mov             x1, x3
    // 0x723e04: r2 = "title"
    //     0x723e04: ldr             x2, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x723e08: r0 = GDT[cid_x0 + 0x36e]()
    //     0x723e08: add             lr, x0, #0x36e
    //     0x723e0c: ldr             lr, [x21, lr, lsl #3]
    //     0x723e10: blr             lr
    // 0x723e14: cmp             w0, NULL
    // 0x723e18: b.ne            #0x723e24
    // 0x723e1c: r4 = ""
    //     0x723e1c: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x723e20: b               #0x723e28
    // 0x723e24: mov             x4, x0
    // 0x723e28: ldur            x3, [fp, #-0x20]
    // 0x723e2c: mov             x0, x4
    // 0x723e30: stur            x4, [fp, #-0x28]
    // 0x723e34: r2 = Null
    //     0x723e34: mov             x2, NULL
    // 0x723e38: r1 = Null
    //     0x723e38: mov             x1, NULL
    // 0x723e3c: r4 = 60
    //     0x723e3c: mov             x4, #0x3c
    // 0x723e40: branchIfSmi(r0, 0x723e4c)
    //     0x723e40: tbz             w0, #0, #0x723e4c
    // 0x723e44: r4 = LoadClassIdInstr(r0)
    //     0x723e44: ldur            x4, [x0, #-1]
    //     0x723e48: ubfx            x4, x4, #0xc, #0x14
    // 0x723e4c: sub             x4, x4, #0x5e
    // 0x723e50: cmp             x4, #1
    // 0x723e54: b.ls            #0x723e68
    // 0x723e58: r8 = String
    //     0x723e58: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x723e5c: r3 = Null
    //     0x723e5c: add             x3, PP, #0x1f, lsl #12  ; [pp+0x1ff08] Null
    //     0x723e60: ldr             x3, [x3, #0xf08]
    // 0x723e64: r0 = String()
    //     0x723e64: bl              #0x939a58  ; IsType_String_Stub
    // 0x723e68: r0 = BoxDecoration()
    //     0x723e68: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x723e6c: mov             x1, x0
    // 0x723e70: r0 = Instance_Color
    //     0x723e70: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x723e74: ldr             x0, [x0, #0xb78]
    // 0x723e78: stur            x1, [fp, #-0x30]
    // 0x723e7c: StoreField: r1->field_7 = r0
    //     0x723e7c: stur            w0, [x1, #7]
    // 0x723e80: r0 = Instance_BorderRadius
    //     0x723e80: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1ff18] Obj!BorderRadius@a0ccd1
    //     0x723e84: ldr             x0, [x0, #0xf18]
    // 0x723e88: StoreField: r1->field_13 = r0
    //     0x723e88: stur            w0, [x1, #0x13]
    // 0x723e8c: r0 = Instance_BoxShape
    //     0x723e8c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x723e90: ldr             x0, [x0, #0x1c8]
    // 0x723e94: StoreField: r1->field_23 = r0
    //     0x723e94: stur            w0, [x1, #0x23]
    // 0x723e98: r0 = Text()
    //     0x723e98: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x723e9c: mov             x2, x0
    // 0x723ea0: ldur            x0, [fp, #-0x28]
    // 0x723ea4: stur            x2, [fp, #-0x38]
    // 0x723ea8: StoreField: r2->field_b = r0
    //     0x723ea8: stur            w0, [x2, #0xb]
    // 0x723eac: r0 = Instance_TextStyle
    //     0x723eac: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1faf0] Obj!TextStyle@a17ec1
    //     0x723eb0: ldr             x0, [x0, #0xaf0]
    // 0x723eb4: StoreField: r2->field_13 = r0
    //     0x723eb4: stur            w0, [x2, #0x13]
    // 0x723eb8: r1 = <FlexParentData>
    //     0x723eb8: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x723ebc: ldr             x1, [x1, #0x340]
    // 0x723ec0: r0 = Expanded()
    //     0x723ec0: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x723ec4: mov             x3, x0
    // 0x723ec8: r0 = 1
    //     0x723ec8: mov             x0, #1
    // 0x723ecc: stur            x3, [fp, #-0x28]
    // 0x723ed0: StoreField: r3->field_13 = r0
    //     0x723ed0: stur            x0, [x3, #0x13]
    // 0x723ed4: r4 = Instance_FlexFit
    //     0x723ed4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x723ed8: ldr             x4, [x4, #0x348]
    // 0x723edc: StoreField: r3->field_1b = r4
    //     0x723edc: stur            w4, [x3, #0x1b]
    // 0x723ee0: ldur            x1, [fp, #-0x38]
    // 0x723ee4: StoreField: r3->field_b = r1
    //     0x723ee4: stur            w1, [x3, #0xb]
    // 0x723ee8: r1 = Null
    //     0x723ee8: mov             x1, NULL
    // 0x723eec: r2 = 2
    //     0x723eec: mov             x2, #2
    // 0x723ef0: r0 = AllocateArray()
    //     0x723ef0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x723ef4: mov             x2, x0
    // 0x723ef8: ldur            x0, [fp, #-0x28]
    // 0x723efc: stur            x2, [fp, #-0x38]
    // 0x723f00: StoreField: r2->field_f = r0
    //     0x723f00: stur            w0, [x2, #0xf]
    // 0x723f04: r1 = <Widget>
    //     0x723f04: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x723f08: r0 = AllocateGrowableArray()
    //     0x723f08: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x723f0c: mov             x2, x0
    // 0x723f10: ldur            x0, [fp, #-0x38]
    // 0x723f14: stur            x2, [fp, #-0x28]
    // 0x723f18: StoreField: r2->field_f = r0
    //     0x723f18: stur            w0, [x2, #0xf]
    // 0x723f1c: r0 = 2
    //     0x723f1c: mov             x0, #2
    // 0x723f20: StoreField: r2->field_b = r0
    //     0x723f20: stur            w0, [x2, #0xb]
    // 0x723f24: ldur            x1, [fp, #-0x20]
    // 0x723f28: tbz             w1, #4, #0x724098
    // 0x723f2c: ldur            x3, [fp, #-0x18]
    // 0x723f30: r16 = 0.200000
    //     0x723f30: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x723f34: ldr             x16, [x16, #0x1f0]
    // 0x723f38: str             x16, [SP]
    // 0x723f3c: r1 = Instance_Color
    //     0x723f3c: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x723f40: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x723f40: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x723f44: ldr             x4, [x4, #0x198]
    // 0x723f48: r0 = withValues()
    //     0x723f48: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x723f4c: stur            x0, [fp, #-0x20]
    // 0x723f50: r0 = Radius()
    //     0x723f50: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x723f54: d0 = 12.000000
    //     0x723f54: fmov            d0, #12.00000000
    // 0x723f58: stur            x0, [fp, #-0x38]
    // 0x723f5c: StoreField: r0->field_7 = d0
    //     0x723f5c: stur            d0, [x0, #7]
    // 0x723f60: StoreField: r0->field_f = d0
    //     0x723f60: stur            d0, [x0, #0xf]
    // 0x723f64: r0 = BorderRadius()
    //     0x723f64: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x723f68: mov             x1, x0
    // 0x723f6c: ldur            x0, [fp, #-0x38]
    // 0x723f70: stur            x1, [fp, #-0x40]
    // 0x723f74: StoreField: r1->field_7 = r0
    //     0x723f74: stur            w0, [x1, #7]
    // 0x723f78: StoreField: r1->field_b = r0
    //     0x723f78: stur            w0, [x1, #0xb]
    // 0x723f7c: StoreField: r1->field_f = r0
    //     0x723f7c: stur            w0, [x1, #0xf]
    // 0x723f80: StoreField: r1->field_13 = r0
    //     0x723f80: stur            w0, [x1, #0x13]
    // 0x723f84: r0 = BoxDecoration()
    //     0x723f84: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x723f88: mov             x1, x0
    // 0x723f8c: ldur            x0, [fp, #-0x20]
    // 0x723f90: stur            x1, [fp, #-0x38]
    // 0x723f94: StoreField: r1->field_7 = r0
    //     0x723f94: stur            w0, [x1, #7]
    // 0x723f98: ldur            x0, [fp, #-0x40]
    // 0x723f9c: StoreField: r1->field_13 = r0
    //     0x723f9c: stur            w0, [x1, #0x13]
    // 0x723fa0: r0 = Instance_BoxShape
    //     0x723fa0: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x723fa4: ldr             x0, [x0, #0x1c8]
    // 0x723fa8: StoreField: r1->field_23 = r0
    //     0x723fa8: stur            w0, [x1, #0x23]
    // 0x723fac: ldur            x2, [fp, #-0x18]
    // 0x723fb0: cbnz            x2, #0x723fc0
    // 0x723fb4: r3 = "Başlangıç"
    //     0x723fb4: add             x3, PP, #0x13, lsl #12  ; [pp+0x13aa8] "Başlangıç"
    //     0x723fb8: ldr             x3, [x3, #0xaa8]
    // 0x723fbc: b               #0x723fc8
    // 0x723fc0: r3 = "Bitiş"
    //     0x723fc0: add             x3, PP, #0x13, lsl #12  ; [pp+0x13ab8] "Bitiş"
    //     0x723fc4: ldr             x3, [x3, #0xab8]
    // 0x723fc8: ldur            x2, [fp, #-0x28]
    // 0x723fcc: stur            x3, [fp, #-0x20]
    // 0x723fd0: r0 = Text()
    //     0x723fd0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x723fd4: mov             x1, x0
    // 0x723fd8: ldur            x0, [fp, #-0x20]
    // 0x723fdc: stur            x1, [fp, #-0x40]
    // 0x723fe0: StoreField: r1->field_b = r0
    //     0x723fe0: stur            w0, [x1, #0xb]
    // 0x723fe4: r0 = Instance_TextStyle
    //     0x723fe4: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1ff20] Obj!TextStyle@a17e51
    //     0x723fe8: ldr             x0, [x0, #0xf20]
    // 0x723fec: StoreField: r1->field_13 = r0
    //     0x723fec: stur            w0, [x1, #0x13]
    // 0x723ff0: r0 = Container()
    //     0x723ff0: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x723ff4: stur            x0, [fp, #-0x20]
    // 0x723ff8: r16 = Instance_EdgeInsets
    //     0x723ff8: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a508] Obj!EdgeInsets@a0c351
    //     0x723ffc: ldr             x16, [x16, #0x508]
    // 0x724000: ldur            lr, [fp, #-0x38]
    // 0x724004: stp             lr, x16, [SP, #8]
    // 0x724008: ldur            x16, [fp, #-0x40]
    // 0x72400c: str             x16, [SP]
    // 0x724010: mov             x1, x0
    // 0x724014: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x724014: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x724018: ldr             x4, [x4, #0x1e8]
    // 0x72401c: r0 = Container()
    //     0x72401c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x724020: ldur            x0, [fp, #-0x28]
    // 0x724024: LoadField: r1 = r0->field_b
    //     0x724024: ldur            w1, [x0, #0xb]
    // 0x724028: LoadField: r2 = r0->field_f
    //     0x724028: ldur            w2, [x0, #0xf]
    // 0x72402c: DecompressPointer r2
    //     0x72402c: add             x2, x2, HEAP, lsl #32
    // 0x724030: LoadField: r3 = r2->field_b
    //     0x724030: ldur            w3, [x2, #0xb]
    // 0x724034: r2 = LoadInt32Instr(r1)
    //     0x724034: sbfx            x2, x1, #1, #0x1f
    // 0x724038: stur            x2, [fp, #-0x18]
    // 0x72403c: r1 = LoadInt32Instr(r3)
    //     0x72403c: sbfx            x1, x3, #1, #0x1f
    // 0x724040: cmp             x2, x1
    // 0x724044: b.ne            #0x724050
    // 0x724048: mov             x1, x0
    // 0x72404c: r0 = _growToNextCapacity()
    //     0x72404c: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x724050: ldur            x2, [fp, #-0x28]
    // 0x724054: ldur            x3, [fp, #-0x18]
    // 0x724058: add             x0, x3, #1
    // 0x72405c: lsl             x1, x0, #1
    // 0x724060: StoreField: r2->field_b = r1
    //     0x724060: stur            w1, [x2, #0xb]
    // 0x724064: LoadField: r1 = r2->field_f
    //     0x724064: ldur            w1, [x2, #0xf]
    // 0x724068: DecompressPointer r1
    //     0x724068: add             x1, x1, HEAP, lsl #32
    // 0x72406c: ldur            x0, [fp, #-0x20]
    // 0x724070: ArrayStore: r1[r3] = r0  ; List_4
    //     0x724070: add             x25, x1, x3, lsl #2
    //     0x724074: add             x25, x25, #0xf
    //     0x724078: str             w0, [x25]
    //     0x72407c: tbz             w0, #0, #0x724098
    //     0x724080: ldurb           w16, [x1, #-1]
    //     0x724084: ldurb           w17, [x0, #-1]
    //     0x724088: and             x16, x17, x16, lsr #2
    //     0x72408c: tst             x16, HEAP, lsr #32
    //     0x724090: b.eq            #0x724098
    //     0x724094: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x724098: r0 = Row()
    //     0x724098: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x72409c: mov             x1, x0
    // 0x7240a0: r0 = Instance_Axis
    //     0x7240a0: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7240a4: stur            x1, [fp, #-0x20]
    // 0x7240a8: StoreField: r1->field_f = r0
    //     0x7240a8: stur            w0, [x1, #0xf]
    // 0x7240ac: r0 = Instance_MainAxisAlignment
    //     0x7240ac: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7240b0: ldr             x0, [x0, #0x230]
    // 0x7240b4: StoreField: r1->field_13 = r0
    //     0x7240b4: stur            w0, [x1, #0x13]
    // 0x7240b8: r2 = Instance_MainAxisSize
    //     0x7240b8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7240bc: ldr             x2, [x2, #0x330]
    // 0x7240c0: ArrayStore: r1[0] = r2  ; List_4
    //     0x7240c0: stur            w2, [x1, #0x17]
    // 0x7240c4: r3 = Instance_CrossAxisAlignment
    //     0x7240c4: add             x3, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7240c8: ldr             x3, [x3, #0x338]
    // 0x7240cc: StoreField: r1->field_1b = r3
    //     0x7240cc: stur            w3, [x1, #0x1b]
    // 0x7240d0: r4 = Instance_VerticalDirection
    //     0x7240d0: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7240d4: ldr             x4, [x4, #0x340]
    // 0x7240d8: StoreField: r1->field_23 = r4
    //     0x7240d8: stur            w4, [x1, #0x23]
    // 0x7240dc: r5 = Instance_Clip
    //     0x7240dc: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7240e0: ldr             x5, [x5, #0x348]
    // 0x7240e4: StoreField: r1->field_2b = r5
    //     0x7240e4: stur            w5, [x1, #0x2b]
    // 0x7240e8: StoreField: r1->field_2f = rZR
    //     0x7240e8: stur            xzr, [x1, #0x2f]
    // 0x7240ec: ldur            x6, [fp, #-0x28]
    // 0x7240f0: StoreField: r1->field_b = r6
    //     0x7240f0: stur            w6, [x1, #0xb]
    // 0x7240f4: r0 = Container()
    //     0x7240f4: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7240f8: stur            x0, [fp, #-0x28]
    // 0x7240fc: r16 = inf
    //     0x7240fc: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x724100: ldr             x16, [x16, #0xb20]
    // 0x724104: r30 = Instance_EdgeInsets
    //     0x724104: add             lr, PP, #0x13, lsl #12  ; [pp+0x139a0] Obj!EdgeInsets@a0c4a1
    //     0x724108: ldr             lr, [lr, #0x9a0]
    // 0x72410c: stp             lr, x16, [SP, #0x10]
    // 0x724110: ldur            x16, [fp, #-0x30]
    // 0x724114: ldur            lr, [fp, #-0x20]
    // 0x724118: stp             lr, x16, [SP]
    // 0x72411c: mov             x1, x0
    // 0x724120: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, padding, 0x2, width, 0x1, null]
    //     0x724120: add             x4, PP, #0x13, lsl #12  ; [pp+0x13b28] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "padding", 0x2, "width", 0x1, Null]
    //     0x724124: ldr             x4, [x4, #0xb28]
    // 0x724128: r0 = Container()
    //     0x724128: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x72412c: r16 = 0.050000
    //     0x72412c: ldr             x16, [PP, #0x5020]  ; [pp+0x5020] 0.05
    // 0x724130: str             x16, [SP]
    // 0x724134: r1 = Instance_Color
    //     0x724134: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x724138: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x724138: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x72413c: ldr             x4, [x4, #0x198]
    // 0x724140: r0 = withValues()
    //     0x724140: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x724144: stur            x0, [fp, #-0x20]
    // 0x724148: r0 = BoxShadow()
    //     0x724148: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x72414c: stur            x0, [fp, #-0x30]
    // 0x724150: ArrayStore: r0[0] = rZR  ; List_8
    //     0x724150: stur            xzr, [x0, #0x17]
    // 0x724154: r1 = Instance_BlurStyle
    //     0x724154: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x724158: ldr             x1, [x1, #0x9b0]
    // 0x72415c: StoreField: r0->field_1f = r1
    //     0x72415c: stur            w1, [x0, #0x1f]
    // 0x724160: ldur            x1, [fp, #-0x20]
    // 0x724164: StoreField: r0->field_7 = r1
    //     0x724164: stur            w1, [x0, #7]
    // 0x724168: r1 = Instance_Offset
    //     0x724168: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b8] Obj!Offset@a26af1
    //     0x72416c: ldr             x1, [x1, #0x9b8]
    // 0x724170: StoreField: r0->field_b = r1
    //     0x724170: stur            w1, [x0, #0xb]
    // 0x724174: d0 = 10.000000
    //     0x724174: fmov            d0, #10.00000000
    // 0x724178: StoreField: r0->field_f = d0
    //     0x724178: stur            d0, [x0, #0xf]
    // 0x72417c: r1 = Null
    //     0x72417c: mov             x1, NULL
    // 0x724180: r2 = 2
    //     0x724180: mov             x2, #2
    // 0x724184: r0 = AllocateArray()
    //     0x724184: bl              #0x9280a0  ; AllocateArrayStub
    // 0x724188: mov             x2, x0
    // 0x72418c: ldur            x0, [fp, #-0x30]
    // 0x724190: stur            x2, [fp, #-0x20]
    // 0x724194: StoreField: r2->field_f = r0
    //     0x724194: stur            w0, [x2, #0xf]
    // 0x724198: r1 = <BoxShadow>
    //     0x724198: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x72419c: ldr             x1, [x1, #0x9c0]
    // 0x7241a0: r0 = AllocateGrowableArray()
    //     0x7241a0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7241a4: mov             x1, x0
    // 0x7241a8: ldur            x0, [fp, #-0x20]
    // 0x7241ac: stur            x1, [fp, #-0x30]
    // 0x7241b0: StoreField: r1->field_f = r0
    //     0x7241b0: stur            w0, [x1, #0xf]
    // 0x7241b4: r0 = 2
    //     0x7241b4: mov             x0, #2
    // 0x7241b8: StoreField: r1->field_b = r0
    //     0x7241b8: stur            w0, [x1, #0xb]
    // 0x7241bc: r0 = BoxDecoration()
    //     0x7241bc: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7241c0: mov             x3, x0
    // 0x7241c4: r0 = Instance_Color
    //     0x7241c4: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7241c8: stur            x3, [fp, #-0x20]
    // 0x7241cc: StoreField: r3->field_7 = r0
    //     0x7241cc: stur            w0, [x3, #7]
    // 0x7241d0: r0 = Instance_BorderRadius
    //     0x7241d0: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1ff28] Obj!BorderRadius@a0ccb1
    //     0x7241d4: ldr             x0, [x0, #0xf28]
    // 0x7241d8: StoreField: r3->field_13 = r0
    //     0x7241d8: stur            w0, [x3, #0x13]
    // 0x7241dc: ldur            x1, [fp, #-0x30]
    // 0x7241e0: ArrayStore: r3[0] = r1  ; List_4
    //     0x7241e0: stur            w1, [x3, #0x17]
    // 0x7241e4: r1 = Instance_BoxShape
    //     0x7241e4: add             x1, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7241e8: ldr             x1, [x1, #0x1c8]
    // 0x7241ec: StoreField: r3->field_23 = r1
    //     0x7241ec: stur            w1, [x3, #0x23]
    // 0x7241f0: ldur            x1, [fp, #-8]
    // 0x7241f4: ldur            x2, [fp, #-0x10]
    // 0x7241f8: r0 = _buildImageContent()
    //     0x7241f8: bl              #0x72436c  ; [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::_buildImageContent
    // 0x7241fc: stur            x0, [fp, #-8]
    // 0x724200: r0 = ClipRRect()
    //     0x724200: bl              #0x67cabc  ; AllocateClipRRectStub -> ClipRRect (size=0x1c)
    // 0x724204: mov             x1, x0
    // 0x724208: r0 = Instance_BorderRadius
    //     0x724208: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1ff28] Obj!BorderRadius@a0ccb1
    //     0x72420c: ldr             x0, [x0, #0xf28]
    // 0x724210: stur            x1, [fp, #-0x10]
    // 0x724214: StoreField: r1->field_f = r0
    //     0x724214: stur            w0, [x1, #0xf]
    // 0x724218: r0 = Instance_Clip
    //     0x724218: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d38] Obj!Clip@a2d931
    //     0x72421c: ldr             x0, [x0, #0xd38]
    // 0x724220: ArrayStore: r1[0] = r0  ; List_4
    //     0x724220: stur            w0, [x1, #0x17]
    // 0x724224: ldur            x0, [fp, #-8]
    // 0x724228: StoreField: r1->field_b = r0
    //     0x724228: stur            w0, [x1, #0xb]
    // 0x72422c: r0 = Container()
    //     0x72422c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x724230: stur            x0, [fp, #-8]
    // 0x724234: r16 = inf
    //     0x724234: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x724238: ldr             x16, [x16, #0xb20]
    // 0x72423c: ldur            lr, [fp, #-0x20]
    // 0x724240: stp             lr, x16, [SP, #8]
    // 0x724244: ldur            x16, [fp, #-0x10]
    // 0x724248: str             x16, [SP]
    // 0x72424c: mov             x1, x0
    // 0x724250: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, width, 0x1, null]
    //     0x724250: add             x4, PP, #0x1f, lsl #12  ; [pp+0x1ff30] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "width", 0x1, Null]
    //     0x724254: ldr             x4, [x4, #0xf30]
    // 0x724258: r0 = Container()
    //     0x724258: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x72425c: r1 = <FlexParentData>
    //     0x72425c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x724260: ldr             x1, [x1, #0x340]
    // 0x724264: r0 = Expanded()
    //     0x724264: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x724268: mov             x3, x0
    // 0x72426c: r0 = 1
    //     0x72426c: mov             x0, #1
    // 0x724270: stur            x3, [fp, #-0x10]
    // 0x724274: StoreField: r3->field_13 = r0
    //     0x724274: stur            x0, [x3, #0x13]
    // 0x724278: r0 = Instance_FlexFit
    //     0x724278: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x72427c: ldr             x0, [x0, #0x348]
    // 0x724280: StoreField: r3->field_1b = r0
    //     0x724280: stur            w0, [x3, #0x1b]
    // 0x724284: ldur            x0, [fp, #-8]
    // 0x724288: StoreField: r3->field_b = r0
    //     0x724288: stur            w0, [x3, #0xb]
    // 0x72428c: r1 = Null
    //     0x72428c: mov             x1, NULL
    // 0x724290: r2 = 4
    //     0x724290: mov             x2, #4
    // 0x724294: r0 = AllocateArray()
    //     0x724294: bl              #0x9280a0  ; AllocateArrayStub
    // 0x724298: mov             x2, x0
    // 0x72429c: ldur            x0, [fp, #-0x28]
    // 0x7242a0: stur            x2, [fp, #-8]
    // 0x7242a4: StoreField: r2->field_f = r0
    //     0x7242a4: stur            w0, [x2, #0xf]
    // 0x7242a8: ldur            x0, [fp, #-0x10]
    // 0x7242ac: StoreField: r2->field_13 = r0
    //     0x7242ac: stur            w0, [x2, #0x13]
    // 0x7242b0: r1 = <Widget>
    //     0x7242b0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7242b4: r0 = AllocateGrowableArray()
    //     0x7242b4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7242b8: mov             x1, x0
    // 0x7242bc: ldur            x0, [fp, #-8]
    // 0x7242c0: stur            x1, [fp, #-0x10]
    // 0x7242c4: StoreField: r1->field_f = r0
    //     0x7242c4: stur            w0, [x1, #0xf]
    // 0x7242c8: r0 = 4
    //     0x7242c8: mov             x0, #4
    // 0x7242cc: StoreField: r1->field_b = r0
    //     0x7242cc: stur            w0, [x1, #0xb]
    // 0x7242d0: r0 = Column()
    //     0x7242d0: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7242d4: mov             x1, x0
    // 0x7242d8: r0 = Instance_Axis
    //     0x7242d8: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7242dc: stur            x1, [fp, #-8]
    // 0x7242e0: StoreField: r1->field_f = r0
    //     0x7242e0: stur            w0, [x1, #0xf]
    // 0x7242e4: r0 = Instance_MainAxisAlignment
    //     0x7242e4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7242e8: ldr             x0, [x0, #0x230]
    // 0x7242ec: StoreField: r1->field_13 = r0
    //     0x7242ec: stur            w0, [x1, #0x13]
    // 0x7242f0: r0 = Instance_MainAxisSize
    //     0x7242f0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7242f4: ldr             x0, [x0, #0x330]
    // 0x7242f8: ArrayStore: r1[0] = r0  ; List_4
    //     0x7242f8: stur            w0, [x1, #0x17]
    // 0x7242fc: r0 = Instance_CrossAxisAlignment
    //     0x7242fc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x724300: ldr             x0, [x0, #0x338]
    // 0x724304: StoreField: r1->field_1b = r0
    //     0x724304: stur            w0, [x1, #0x1b]
    // 0x724308: r0 = Instance_VerticalDirection
    //     0x724308: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72430c: ldr             x0, [x0, #0x340]
    // 0x724310: StoreField: r1->field_23 = r0
    //     0x724310: stur            w0, [x1, #0x23]
    // 0x724314: r0 = Instance_Clip
    //     0x724314: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x724318: ldr             x0, [x0, #0x348]
    // 0x72431c: StoreField: r1->field_2b = r0
    //     0x72431c: stur            w0, [x1, #0x2b]
    // 0x724320: StoreField: r1->field_2f = rZR
    //     0x724320: stur            xzr, [x1, #0x2f]
    // 0x724324: ldur            x0, [fp, #-0x10]
    // 0x724328: StoreField: r1->field_b = r0
    //     0x724328: stur            w0, [x1, #0xb]
    // 0x72432c: r0 = Container()
    //     0x72432c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x724330: stur            x0, [fp, #-0x10]
    // 0x724334: r16 = Instance_EdgeInsets
    //     0x724334: add             x16, PP, #0x12, lsl #12  ; [pp+0x121e0] Obj!EdgeInsets@a0bd51
    //     0x724338: ldr             x16, [x16, #0x1e0]
    // 0x72433c: ldur            lr, [fp, #-8]
    // 0x724340: stp             lr, x16, [SP]
    // 0x724344: mov             x1, x0
    // 0x724348: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, margin, 0x1, null]
    //     0x724348: add             x4, PP, #0x1a, lsl #12  ; [pp+0x1a668] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "margin", 0x1, Null]
    //     0x72434c: ldr             x4, [x4, #0x668]
    // 0x724350: r0 = Container()
    //     0x724350: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x724354: ldur            x0, [fp, #-0x10]
    // 0x724358: LeaveFrame
    //     0x724358: mov             SP, fp
    //     0x72435c: ldp             fp, lr, [SP], #0x10
    // 0x724360: ret
    //     0x724360: ret             
    // 0x724364: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x724364: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x724368: b               #0x723d84
  }
  _ _buildImageContent(/* No info */) {
    // ** addr: 0x72436c, size: 0x434
    // 0x72436c: EnterFrame
    //     0x72436c: stp             fp, lr, [SP, #-0x10]!
    //     0x724370: mov             fp, SP
    // 0x724374: AllocStack(0x38)
    //     0x724374: sub             SP, SP, #0x38
    // 0x724378: SetupParameters(_SayDualariPageState this /* r1 => r0, fp-0x8 */, dynamic _ /* r2 => r1, fp-0x10 */)
    //     0x724378: mov             x0, x1
    //     0x72437c: stur            x1, [fp, #-8]
    //     0x724380: mov             x1, x2
    //     0x724384: stur            x2, [fp, #-0x10]
    // 0x724388: CheckStackOverflow
    //     0x724388: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72438c: cmp             SP, x16
    //     0x724390: b.ls            #0x724798
    // 0x724394: r1 = 1
    //     0x724394: mov             x1, #1
    // 0x724398: r0 = AllocateContext()
    //     0x724398: bl              #0x927010  ; AllocateContextStub
    // 0x72439c: mov             x4, x0
    // 0x7243a0: ldur            x3, [fp, #-8]
    // 0x7243a4: stur            x4, [fp, #-0x18]
    // 0x7243a8: StoreField: r4->field_f = r3
    //     0x7243a8: stur            w3, [x4, #0xf]
    // 0x7243ac: ldur            x5, [fp, #-0x10]
    // 0x7243b0: r0 = LoadClassIdInstr(r5)
    //     0x7243b0: ldur            x0, [x5, #-1]
    //     0x7243b4: ubfx            x0, x0, #0xc, #0x14
    // 0x7243b8: mov             x1, x5
    // 0x7243bc: r2 = "arabicFiles"
    //     0x7243bc: add             x2, PP, #0x1b, lsl #12  ; [pp+0x1bcc0] "arabicFiles"
    //     0x7243c0: ldr             x2, [x2, #0xcc0]
    // 0x7243c4: r0 = GDT[cid_x0 + 0x361]()
    //     0x7243c4: add             lr, x0, #0x361
    //     0x7243c8: ldr             lr, [x21, lr, lsl #3]
    //     0x7243cc: blr             lr
    // 0x7243d0: tbnz            w0, #4, #0x7245e4
    // 0x7243d4: ldur            x3, [fp, #-0x10]
    // 0x7243d8: r0 = LoadClassIdInstr(r3)
    //     0x7243d8: ldur            x0, [x3, #-1]
    //     0x7243dc: ubfx            x0, x0, #0xc, #0x14
    // 0x7243e0: mov             x1, x3
    // 0x7243e4: r2 = "turkishFiles"
    //     0x7243e4: add             x2, PP, #0x1b, lsl #12  ; [pp+0x1bcd8] "turkishFiles"
    //     0x7243e8: ldr             x2, [x2, #0xcd8]
    // 0x7243ec: r0 = GDT[cid_x0 + 0x361]()
    //     0x7243ec: add             lr, x0, #0x361
    //     0x7243f0: ldr             lr, [x21, lr, lsl #3]
    //     0x7243f4: blr             lr
    // 0x7243f8: tbnz            w0, #4, #0x724598
    // 0x7243fc: ldur            x0, [fp, #-8]
    // 0x724400: LoadField: r1 = r0->field_1f
    //     0x724400: ldur            x1, [x0, #0x1f]
    // 0x724404: cbnz            x1, #0x724460
    // 0x724408: ldur            x3, [fp, #-0x10]
    // 0x72440c: r0 = LoadClassIdInstr(r3)
    //     0x72440c: ldur            x0, [x3, #-1]
    //     0x724410: ubfx            x0, x0, #0xc, #0x14
    // 0x724414: mov             x1, x3
    // 0x724418: r2 = "arabicFiles"
    //     0x724418: add             x2, PP, #0x1b, lsl #12  ; [pp+0x1bcc0] "arabicFiles"
    //     0x72441c: ldr             x2, [x2, #0xcc0]
    // 0x724420: r0 = GDT[cid_x0 + 0x36e]()
    //     0x724420: add             lr, x0, #0x36e
    //     0x724424: ldr             lr, [x21, lr, lsl #3]
    //     0x724428: blr             lr
    // 0x72442c: mov             x3, x0
    // 0x724430: r2 = Null
    //     0x724430: mov             x2, NULL
    // 0x724434: r1 = Null
    //     0x724434: mov             x1, NULL
    // 0x724438: stur            x3, [fp, #-8]
    // 0x72443c: r8 = Iterable
    //     0x72443c: ldr             x8, [PP, #0xda0]  ; [pp+0xda0] Type: Iterable
    // 0x724440: r3 = Null
    //     0x724440: add             x3, PP, #0x1f, lsl #12  ; [pp+0x1ff38] Null
    //     0x724444: ldr             x3, [x3, #0xf38]
    // 0x724448: r0 = Iterable()
    //     0x724448: bl              #0x3d59fc  ; IsType_Iterable_Stub
    // 0x72444c: ldur            x2, [fp, #-8]
    // 0x724450: r1 = <String>
    //     0x724450: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x724454: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x724454: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x724458: r0 = List.from()
    //     0x724458: bl              #0x490278  ; [dart:core] List::List.from
    // 0x72445c: b               #0x7244b4
    // 0x724460: ldur            x3, [fp, #-0x10]
    // 0x724464: r0 = LoadClassIdInstr(r3)
    //     0x724464: ldur            x0, [x3, #-1]
    //     0x724468: ubfx            x0, x0, #0xc, #0x14
    // 0x72446c: mov             x1, x3
    // 0x724470: r2 = "turkishFiles"
    //     0x724470: add             x2, PP, #0x1b, lsl #12  ; [pp+0x1bcd8] "turkishFiles"
    //     0x724474: ldr             x2, [x2, #0xcd8]
    // 0x724478: r0 = GDT[cid_x0 + 0x36e]()
    //     0x724478: add             lr, x0, #0x36e
    //     0x72447c: ldr             lr, [x21, lr, lsl #3]
    //     0x724480: blr             lr
    // 0x724484: mov             x3, x0
    // 0x724488: r2 = Null
    //     0x724488: mov             x2, NULL
    // 0x72448c: r1 = Null
    //     0x72448c: mov             x1, NULL
    // 0x724490: stur            x3, [fp, #-8]
    // 0x724494: r8 = Iterable
    //     0x724494: ldr             x8, [PP, #0xda0]  ; [pp+0xda0] Type: Iterable
    // 0x724498: r3 = Null
    //     0x724498: add             x3, PP, #0x1f, lsl #12  ; [pp+0x1ff48] Null
    //     0x72449c: ldr             x3, [x3, #0xf48]
    // 0x7244a0: r0 = Iterable()
    //     0x7244a0: bl              #0x3d59fc  ; IsType_Iterable_Stub
    // 0x7244a4: ldur            x2, [fp, #-8]
    // 0x7244a8: r1 = <String>
    //     0x7244a8: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7244ac: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7244ac: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7244b0: r0 = List.from()
    //     0x7244b0: bl              #0x490278  ; [dart:core] List::List.from
    // 0x7244b4: ldur            x2, [fp, #-0x18]
    // 0x7244b8: stur            x0, [fp, #-8]
    // 0x7244bc: r1 = Function '<anonymous closure>':.
    //     0x7244bc: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1ff58] AnonymousClosure: (0x7247a0), in [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::_buildImageContent (0x72436c)
    //     0x7244c0: ldr             x1, [x1, #0xf58]
    // 0x7244c4: r0 = AllocateClosure()
    //     0x7244c4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7244c8: r16 = <Widget>
    //     0x7244c8: ldr             x16, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7244cc: ldur            lr, [fp, #-8]
    // 0x7244d0: stp             lr, x16, [SP, #8]
    // 0x7244d4: str             x0, [SP]
    // 0x7244d8: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7244d8: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7244dc: r0 = map()
    //     0x7244dc: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x7244e0: LoadField: r1 = r0->field_7
    //     0x7244e0: ldur            w1, [x0, #7]
    // 0x7244e4: DecompressPointer r1
    //     0x7244e4: add             x1, x1, HEAP, lsl #32
    // 0x7244e8: mov             x2, x0
    // 0x7244ec: r0 = _GrowableList.of()
    //     0x7244ec: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x7244f0: stur            x0, [fp, #-8]
    // 0x7244f4: r0 = Column()
    //     0x7244f4: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7244f8: mov             x1, x0
    // 0x7244fc: r0 = Instance_Axis
    //     0x7244fc: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x724500: stur            x1, [fp, #-0x20]
    // 0x724504: StoreField: r1->field_f = r0
    //     0x724504: stur            w0, [x1, #0xf]
    // 0x724508: r4 = Instance_MainAxisAlignment
    //     0x724508: add             x4, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x72450c: ldr             x4, [x4, #0x230]
    // 0x724510: StoreField: r1->field_13 = r4
    //     0x724510: stur            w4, [x1, #0x13]
    // 0x724514: r5 = Instance_MainAxisSize
    //     0x724514: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x724518: ldr             x5, [x5, #0x330]
    // 0x72451c: ArrayStore: r1[0] = r5  ; List_4
    //     0x72451c: stur            w5, [x1, #0x17]
    // 0x724520: r6 = Instance_CrossAxisAlignment
    //     0x724520: add             x6, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x724524: ldr             x6, [x6, #0x338]
    // 0x724528: StoreField: r1->field_1b = r6
    //     0x724528: stur            w6, [x1, #0x1b]
    // 0x72452c: r7 = Instance_VerticalDirection
    //     0x72452c: add             x7, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x724530: ldr             x7, [x7, #0x340]
    // 0x724534: StoreField: r1->field_23 = r7
    //     0x724534: stur            w7, [x1, #0x23]
    // 0x724538: r8 = Instance_Clip
    //     0x724538: add             x8, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72453c: ldr             x8, [x8, #0x348]
    // 0x724540: StoreField: r1->field_2b = r8
    //     0x724540: stur            w8, [x1, #0x2b]
    // 0x724544: StoreField: r1->field_2f = rZR
    //     0x724544: stur            xzr, [x1, #0x2f]
    // 0x724548: ldur            x2, [fp, #-8]
    // 0x72454c: StoreField: r1->field_b = r2
    //     0x72454c: stur            w2, [x1, #0xb]
    // 0x724550: r0 = SingleChildScrollView()
    //     0x724550: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x724554: r9 = Instance_Axis
    //     0x724554: ldr             x9, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x724558: StoreField: r0->field_b = r9
    //     0x724558: stur            w9, [x0, #0xb]
    // 0x72455c: r10 = false
    //     0x72455c: add             x10, NULL, #0x30  ; false
    // 0x724560: StoreField: r0->field_f = r10
    //     0x724560: stur            w10, [x0, #0xf]
    // 0x724564: ldur            x1, [fp, #-0x20]
    // 0x724568: StoreField: r0->field_23 = r1
    //     0x724568: stur            w1, [x0, #0x23]
    // 0x72456c: r11 = Instance_DragStartBehavior
    //     0x72456c: ldr             x11, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x724570: StoreField: r0->field_27 = r11
    //     0x724570: stur            w11, [x0, #0x27]
    // 0x724574: r12 = Instance_Clip
    //     0x724574: add             x12, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x724578: ldr             x12, [x12, #0x2d8]
    // 0x72457c: StoreField: r0->field_2b = r12
    //     0x72457c: stur            w12, [x0, #0x2b]
    // 0x724580: r13 = Instance_HitTestBehavior
    //     0x724580: add             x13, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x724584: ldr             x13, [x13, #0xe20]
    // 0x724588: StoreField: r0->field_2f = r13
    //     0x724588: stur            w13, [x0, #0x2f]
    // 0x72458c: LeaveFrame
    //     0x72458c: mov             SP, fp
    //     0x724590: ldp             fp, lr, [SP], #0x10
    // 0x724594: ret
    //     0x724594: ret             
    // 0x724598: ldur            x3, [fp, #-0x10]
    // 0x72459c: r6 = Instance_CrossAxisAlignment
    //     0x72459c: add             x6, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7245a0: ldr             x6, [x6, #0x338]
    // 0x7245a4: r4 = Instance_MainAxisAlignment
    //     0x7245a4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7245a8: ldr             x4, [x4, #0x230]
    // 0x7245ac: r5 = Instance_MainAxisSize
    //     0x7245ac: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7245b0: ldr             x5, [x5, #0x330]
    // 0x7245b4: r7 = Instance_VerticalDirection
    //     0x7245b4: add             x7, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7245b8: ldr             x7, [x7, #0x340]
    // 0x7245bc: r9 = Instance_Axis
    //     0x7245bc: ldr             x9, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7245c0: r10 = false
    //     0x7245c0: add             x10, NULL, #0x30  ; false
    // 0x7245c4: r11 = Instance_DragStartBehavior
    //     0x7245c4: ldr             x11, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7245c8: r12 = Instance_Clip
    //     0x7245c8: add             x12, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x7245cc: ldr             x12, [x12, #0x2d8]
    // 0x7245d0: r13 = Instance_HitTestBehavior
    //     0x7245d0: add             x13, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x7245d4: ldr             x13, [x13, #0xe20]
    // 0x7245d8: r8 = Instance_Clip
    //     0x7245d8: add             x8, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7245dc: ldr             x8, [x8, #0x348]
    // 0x7245e0: b               #0x72462c
    // 0x7245e4: ldur            x3, [fp, #-0x10]
    // 0x7245e8: r6 = Instance_CrossAxisAlignment
    //     0x7245e8: add             x6, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7245ec: ldr             x6, [x6, #0x338]
    // 0x7245f0: r4 = Instance_MainAxisAlignment
    //     0x7245f0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7245f4: ldr             x4, [x4, #0x230]
    // 0x7245f8: r5 = Instance_MainAxisSize
    //     0x7245f8: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7245fc: ldr             x5, [x5, #0x330]
    // 0x724600: r7 = Instance_VerticalDirection
    //     0x724600: add             x7, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x724604: ldr             x7, [x7, #0x340]
    // 0x724608: r9 = Instance_Axis
    //     0x724608: ldr             x9, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72460c: r10 = false
    //     0x72460c: add             x10, NULL, #0x30  ; false
    // 0x724610: r11 = Instance_DragStartBehavior
    //     0x724610: ldr             x11, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x724614: r12 = Instance_Clip
    //     0x724614: add             x12, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x724618: ldr             x12, [x12, #0x2d8]
    // 0x72461c: r13 = Instance_HitTestBehavior
    //     0x72461c: add             x13, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x724620: ldr             x13, [x13, #0xe20]
    // 0x724624: r8 = Instance_Clip
    //     0x724624: add             x8, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x724628: ldr             x8, [x8, #0x348]
    // 0x72462c: r0 = LoadClassIdInstr(r3)
    //     0x72462c: ldur            x0, [x3, #-1]
    //     0x724630: ubfx            x0, x0, #0xc, #0x14
    // 0x724634: mov             x1, x3
    // 0x724638: r2 = "files"
    //     0x724638: add             x2, PP, #0x1b, lsl #12  ; [pp+0x1bdf0] "files"
    //     0x72463c: ldr             x2, [x2, #0xdf0]
    // 0x724640: r0 = GDT[cid_x0 + 0x361]()
    //     0x724640: add             lr, x0, #0x361
    //     0x724644: ldr             lr, [x21, lr, lsl #3]
    //     0x724648: blr             lr
    // 0x72464c: tbnz            w0, #4, #0x724784
    // 0x724650: ldur            x1, [fp, #-0x10]
    // 0x724654: r0 = LoadClassIdInstr(r1)
    //     0x724654: ldur            x0, [x1, #-1]
    //     0x724658: ubfx            x0, x0, #0xc, #0x14
    // 0x72465c: r2 = "files"
    //     0x72465c: add             x2, PP, #0x1b, lsl #12  ; [pp+0x1bdf0] "files"
    //     0x724660: ldr             x2, [x2, #0xdf0]
    // 0x724664: r0 = GDT[cid_x0 + 0x36e]()
    //     0x724664: add             lr, x0, #0x36e
    //     0x724668: ldr             lr, [x21, lr, lsl #3]
    //     0x72466c: blr             lr
    // 0x724670: mov             x3, x0
    // 0x724674: r2 = Null
    //     0x724674: mov             x2, NULL
    // 0x724678: r1 = Null
    //     0x724678: mov             x1, NULL
    // 0x72467c: stur            x3, [fp, #-8]
    // 0x724680: r8 = Iterable
    //     0x724680: ldr             x8, [PP, #0xda0]  ; [pp+0xda0] Type: Iterable
    // 0x724684: r3 = Null
    //     0x724684: add             x3, PP, #0x1f, lsl #12  ; [pp+0x1ff60] Null
    //     0x724688: ldr             x3, [x3, #0xf60]
    // 0x72468c: r0 = Iterable()
    //     0x72468c: bl              #0x3d59fc  ; IsType_Iterable_Stub
    // 0x724690: ldur            x2, [fp, #-8]
    // 0x724694: r1 = <String>
    //     0x724694: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x724698: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x724698: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x72469c: r0 = List.from()
    //     0x72469c: bl              #0x490278  ; [dart:core] List::List.from
    // 0x7246a0: ldur            x2, [fp, #-0x18]
    // 0x7246a4: r1 = Function '<anonymous closure>':.
    //     0x7246a4: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1ff70] AnonymousClosure: (0x7247a0), in [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::_buildImageContent (0x72436c)
    //     0x7246a8: ldr             x1, [x1, #0xf70]
    // 0x7246ac: stur            x0, [fp, #-8]
    // 0x7246b0: r0 = AllocateClosure()
    //     0x7246b0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7246b4: r16 = <Widget>
    //     0x7246b4: ldr             x16, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7246b8: ldur            lr, [fp, #-8]
    // 0x7246bc: stp             lr, x16, [SP, #8]
    // 0x7246c0: str             x0, [SP]
    // 0x7246c4: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7246c4: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7246c8: r0 = map()
    //     0x7246c8: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x7246cc: LoadField: r1 = r0->field_7
    //     0x7246cc: ldur            w1, [x0, #7]
    // 0x7246d0: DecompressPointer r1
    //     0x7246d0: add             x1, x1, HEAP, lsl #32
    // 0x7246d4: mov             x2, x0
    // 0x7246d8: r0 = _GrowableList.of()
    //     0x7246d8: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x7246dc: stur            x0, [fp, #-8]
    // 0x7246e0: r0 = Column()
    //     0x7246e0: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7246e4: mov             x1, x0
    // 0x7246e8: r0 = Instance_Axis
    //     0x7246e8: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7246ec: stur            x1, [fp, #-0x10]
    // 0x7246f0: StoreField: r1->field_f = r0
    //     0x7246f0: stur            w0, [x1, #0xf]
    // 0x7246f4: r2 = Instance_MainAxisAlignment
    //     0x7246f4: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7246f8: ldr             x2, [x2, #0x230]
    // 0x7246fc: StoreField: r1->field_13 = r2
    //     0x7246fc: stur            w2, [x1, #0x13]
    // 0x724700: r2 = Instance_MainAxisSize
    //     0x724700: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x724704: ldr             x2, [x2, #0x330]
    // 0x724708: ArrayStore: r1[0] = r2  ; List_4
    //     0x724708: stur            w2, [x1, #0x17]
    // 0x72470c: r2 = Instance_CrossAxisAlignment
    //     0x72470c: add             x2, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x724710: ldr             x2, [x2, #0x338]
    // 0x724714: StoreField: r1->field_1b = r2
    //     0x724714: stur            w2, [x1, #0x1b]
    // 0x724718: r2 = Instance_VerticalDirection
    //     0x724718: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72471c: ldr             x2, [x2, #0x340]
    // 0x724720: StoreField: r1->field_23 = r2
    //     0x724720: stur            w2, [x1, #0x23]
    // 0x724724: r2 = Instance_Clip
    //     0x724724: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x724728: ldr             x2, [x2, #0x348]
    // 0x72472c: StoreField: r1->field_2b = r2
    //     0x72472c: stur            w2, [x1, #0x2b]
    // 0x724730: StoreField: r1->field_2f = rZR
    //     0x724730: stur            xzr, [x1, #0x2f]
    // 0x724734: ldur            x2, [fp, #-8]
    // 0x724738: StoreField: r1->field_b = r2
    //     0x724738: stur            w2, [x1, #0xb]
    // 0x72473c: r0 = SingleChildScrollView()
    //     0x72473c: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x724740: r1 = Instance_Axis
    //     0x724740: ldr             x1, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x724744: StoreField: r0->field_b = r1
    //     0x724744: stur            w1, [x0, #0xb]
    // 0x724748: r1 = false
    //     0x724748: add             x1, NULL, #0x30  ; false
    // 0x72474c: StoreField: r0->field_f = r1
    //     0x72474c: stur            w1, [x0, #0xf]
    // 0x724750: ldur            x1, [fp, #-0x10]
    // 0x724754: StoreField: r0->field_23 = r1
    //     0x724754: stur            w1, [x0, #0x23]
    // 0x724758: r1 = Instance_DragStartBehavior
    //     0x724758: ldr             x1, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x72475c: StoreField: r0->field_27 = r1
    //     0x72475c: stur            w1, [x0, #0x27]
    // 0x724760: r1 = Instance_Clip
    //     0x724760: add             x1, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x724764: ldr             x1, [x1, #0x2d8]
    // 0x724768: StoreField: r0->field_2b = r1
    //     0x724768: stur            w1, [x0, #0x2b]
    // 0x72476c: r1 = Instance_HitTestBehavior
    //     0x72476c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x724770: ldr             x1, [x1, #0xe20]
    // 0x724774: StoreField: r0->field_2f = r1
    //     0x724774: stur            w1, [x0, #0x2f]
    // 0x724778: LeaveFrame
    //     0x724778: mov             SP, fp
    //     0x72477c: ldp             fp, lr, [SP], #0x10
    // 0x724780: ret
    //     0x724780: ret             
    // 0x724784: r0 = Instance_Center
    //     0x724784: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1ff78] Obj!Center@a1fe51
    //     0x724788: ldr             x0, [x0, #0xf78]
    // 0x72478c: LeaveFrame
    //     0x72478c: mov             SP, fp
    //     0x724790: ldp             fp, lr, [SP], #0x10
    // 0x724794: ret
    //     0x724794: ret             
    // 0x724798: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x724798: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72479c: b               #0x724394
  }
  [closure] Widget <anonymous closure>(dynamic, String) {
    // ** addr: 0x7247a0, size: 0x48
    // 0x7247a0: EnterFrame
    //     0x7247a0: stp             fp, lr, [SP, #-0x10]!
    //     0x7247a4: mov             fp, SP
    // 0x7247a8: ldr             x0, [fp, #0x18]
    // 0x7247ac: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7247ac: ldur            w1, [x0, #0x17]
    // 0x7247b0: DecompressPointer r1
    //     0x7247b0: add             x1, x1, HEAP, lsl #32
    // 0x7247b4: CheckStackOverflow
    //     0x7247b4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7247b8: cmp             SP, x16
    //     0x7247bc: b.ls            #0x7247e0
    // 0x7247c0: LoadField: r0 = r1->field_f
    //     0x7247c0: ldur            w0, [x1, #0xf]
    // 0x7247c4: DecompressPointer r0
    //     0x7247c4: add             x0, x0, HEAP, lsl #32
    // 0x7247c8: mov             x1, x0
    // 0x7247cc: ldr             x2, [fp, #0x10]
    // 0x7247d0: r0 = _buildImage()
    //     0x7247d0: bl              #0x7247e8  ; [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::_buildImage
    // 0x7247d4: LeaveFrame
    //     0x7247d4: mov             SP, fp
    //     0x7247d8: ldp             fp, lr, [SP], #0x10
    // 0x7247dc: ret
    //     0x7247dc: ret             
    // 0x7247e0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7247e0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7247e4: b               #0x7247c0
  }
  _ _buildImage(/* No info */) {
    // ** addr: 0x7247e8, size: 0x98
    // 0x7247e8: EnterFrame
    //     0x7247e8: stp             fp, lr, [SP, #-0x10]!
    //     0x7247ec: mov             fp, SP
    // 0x7247f0: AllocStack(0x18)
    //     0x7247f0: sub             SP, SP, #0x18
    // 0x7247f4: SetupParameters(_SayDualariPageState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x7247f4: stur            x1, [fp, #-8]
    //     0x7247f8: stur            x2, [fp, #-0x10]
    // 0x7247fc: CheckStackOverflow
    //     0x7247fc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x724800: cmp             SP, x16
    //     0x724804: b.ls            #0x724878
    // 0x724808: r1 = 2
    //     0x724808: mov             x1, #2
    // 0x72480c: r0 = AllocateContext()
    //     0x72480c: bl              #0x927010  ; AllocateContextStub
    // 0x724810: mov             x3, x0
    // 0x724814: ldur            x0, [fp, #-8]
    // 0x724818: stur            x3, [fp, #-0x18]
    // 0x72481c: StoreField: r3->field_f = r0
    //     0x72481c: stur            w0, [x3, #0xf]
    // 0x724820: ldur            x2, [fp, #-0x10]
    // 0x724824: StoreField: r3->field_13 = r2
    //     0x724824: stur            w2, [x3, #0x13]
    // 0x724828: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x724828: ldur            w1, [x0, #0x17]
    // 0x72482c: DecompressPointer r1
    //     0x72482c: add             x1, x1, HEAP, lsl #32
    // 0x724830: r0 = getLocalFilePathIfExists()
    //     0x724830: bl              #0x724880  ; [package:umrem_demo/core/services/say_dualari_storage_service.dart] SayDualariStorageService::getLocalFilePathIfExists
    // 0x724834: r1 = <String?>
    //     0x724834: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x724838: stur            x0, [fp, #-8]
    // 0x72483c: r0 = FutureBuilder()
    //     0x72483c: bl              #0x6fcf28  ; AllocateFutureBuilderStub -> FutureBuilder<X0> (size=0x1c)
    // 0x724840: mov             x3, x0
    // 0x724844: ldur            x0, [fp, #-8]
    // 0x724848: stur            x3, [fp, #-0x10]
    // 0x72484c: StoreField: r3->field_f = r0
    //     0x72484c: stur            w0, [x3, #0xf]
    // 0x724850: ldur            x2, [fp, #-0x18]
    // 0x724854: r1 = Function '<anonymous closure>':.
    //     0x724854: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1ff80] AnonymousClosure: (0x724b48), in [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::_buildImage (0x7247e8)
    //     0x724858: ldr             x1, [x1, #0xf80]
    // 0x72485c: r0 = AllocateClosure()
    //     0x72485c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x724860: mov             x1, x0
    // 0x724864: ldur            x0, [fp, #-0x10]
    // 0x724868: StoreField: r0->field_13 = r1
    //     0x724868: stur            w1, [x0, #0x13]
    // 0x72486c: LeaveFrame
    //     0x72486c: mov             SP, fp
    //     0x724870: ldp             fp, lr, [SP], #0x10
    // 0x724874: ret
    //     0x724874: ret             
    // 0x724878: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x724878: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72487c: b               #0x724808
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, AsyncSnapshot<String?>) {
    // ** addr: 0x724b48, size: 0x14c
    // 0x724b48: EnterFrame
    //     0x724b48: stp             fp, lr, [SP, #-0x10]!
    //     0x724b4c: mov             fp, SP
    // 0x724b50: AllocStack(0x18)
    //     0x724b50: sub             SP, SP, #0x18
    // 0x724b54: SetupParameters([dynamic _ /* r0 */])
    //     0x724b54: ldr             x0, [fp, #0x20]
    //     0x724b58: ldur            w2, [x0, #0x17]
    //     0x724b5c: add             x2, x2, HEAP, lsl #32
    //     0x724b60: stur            x2, [fp, #-0x10]
    // 0x724b64: CheckStackOverflow
    //     0x724b64: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x724b68: cmp             SP, x16
    //     0x724b6c: b.ls            #0x724c8c
    // 0x724b70: ldr             x0, [fp, #0x10]
    // 0x724b74: LoadField: r1 = r0->field_b
    //     0x724b74: ldur            w1, [x0, #0xb]
    // 0x724b78: DecompressPointer r1
    //     0x724b78: add             x1, x1, HEAP, lsl #32
    // 0x724b7c: r16 = Instance_ConnectionState
    //     0x724b7c: add             x16, PP, #0x16, lsl #12  ; [pp+0x16090] Obj!ConnectionState@a29911
    //     0x724b80: ldr             x16, [x16, #0x90]
    // 0x724b84: cmp             w1, w16
    // 0x724b88: b.ne            #0x724ba0
    // 0x724b8c: r0 = Instance_Padding
    //     0x724b8c: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1ff88] Obj!Padding@a1ff11
    //     0x724b90: ldr             x0, [x0, #0xf88]
    // 0x724b94: LeaveFrame
    //     0x724b94: mov             SP, fp
    //     0x724b98: ldp             fp, lr, [SP], #0x10
    // 0x724b9c: ret
    //     0x724b9c: ret             
    // 0x724ba0: LoadField: r1 = r0->field_f
    //     0x724ba0: ldur            w1, [x0, #0xf]
    // 0x724ba4: DecompressPointer r1
    //     0x724ba4: add             x1, x1, HEAP, lsl #32
    // 0x724ba8: stur            x1, [fp, #-8]
    // 0x724bac: cmp             w1, NULL
    // 0x724bb0: b.eq            #0x724c68
    // 0x724bb4: r0 = InitLateStaticField(0x36c) // [dart:async] Zone::_current
    //     0x724bb4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x724bb8: ldr             x0, [x0, #0x6d8]
    //     0x724bbc: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x724bc0: cmp             w0, w16
    //     0x724bc4: b.ne            #0x724bd0
    //     0x724bc8: ldr             x2, [PP, #0x2f0]  ; [pp+0x2f0] Field <Zone._current@5048458>: static late (offset: 0x36c)
    //     0x724bcc: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x724bd0: r0 = InitLateStaticField(0x428) // [dart:io] ::_ioOverridesToken
    //     0x724bd0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x724bd4: ldr             x0, [x0, #0x850]
    //     0x724bd8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x724bdc: cmp             w0, w16
    //     0x724be0: b.ne            #0x724bf0
    //     0x724be4: add             x2, PP, #8, lsl #12  ; [pp+0x8918] Field <::._ioOverridesToken@15069316>: static late final (offset: 0x428)
    //     0x724be8: ldr             x2, [x2, #0x918]
    //     0x724bec: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x724bf0: r0 = _File()
    //     0x724bf0: bl              #0x3e1ea0  ; Allocate_FileStub -> _File (size=0x10)
    // 0x724bf4: ldur            x1, [fp, #-8]
    // 0x724bf8: stur            x0, [fp, #-0x18]
    // 0x724bfc: StoreField: r0->field_7 = r1
    //     0x724bfc: stur            w1, [x0, #7]
    // 0x724c00: r0 = _toUtf8Array()
    //     0x724c00: bl              #0x3db2f4  ; [dart:io] FileSystemEntity::_toUtf8Array
    // 0x724c04: ldur            x3, [fp, #-0x18]
    // 0x724c08: StoreField: r3->field_b = r0
    //     0x724c08: stur            w0, [x3, #0xb]
    //     0x724c0c: ldurb           w16, [x3, #-1]
    //     0x724c10: ldurb           w17, [x0, #-1]
    //     0x724c14: and             x16, x17, x16, lsr #2
    //     0x724c18: tst             x16, HEAP, lsr #32
    //     0x724c1c: b.eq            #0x724c24
    //     0x724c20: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x724c24: ldur            x2, [fp, #-0x10]
    // 0x724c28: r1 = Function '<anonymous closure>':.
    //     0x724c28: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1ff90] AnonymousClosure: (0x725d3c), in [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::_buildImage (0x7247e8)
    //     0x724c2c: ldr             x1, [x1, #0xf90]
    // 0x724c30: r0 = AllocateClosure()
    //     0x724c30: bl              #0x9273d4  ; AllocateClosureStub
    // 0x724c34: stur            x0, [fp, #-8]
    // 0x724c38: r0 = Image()
    //     0x724c38: bl              #0x6bf938  ; AllocateImageStub -> Image (size=0x58)
    // 0x724c3c: mov             x1, x0
    // 0x724c40: ldur            x2, [fp, #-0x18]
    // 0x724c44: ldur            x3, [fp, #-8]
    // 0x724c48: r5 = Instance_BoxFit
    //     0x724c48: add             x5, PP, #0x1f, lsl #12  ; [pp+0x1ff98] Obj!BoxFit@a2a951
    //     0x724c4c: ldr             x5, [x5, #0xf98]
    // 0x724c50: stur            x0, [fp, #-8]
    // 0x724c54: r0 = Image.file()
    //     0x724c54: bl              #0x71ae24  ; [package:flutter/src/widgets/image.dart] Image::Image.file
    // 0x724c58: ldur            x0, [fp, #-8]
    // 0x724c5c: LeaveFrame
    //     0x724c5c: mov             SP, fp
    //     0x724c60: ldp             fp, lr, [SP], #0x10
    // 0x724c64: ret
    //     0x724c64: ret             
    // 0x724c68: mov             x0, x2
    // 0x724c6c: LoadField: r1 = r0->field_f
    //     0x724c6c: ldur            w1, [x0, #0xf]
    // 0x724c70: DecompressPointer r1
    //     0x724c70: add             x1, x1, HEAP, lsl #32
    // 0x724c74: LoadField: r2 = r0->field_13
    //     0x724c74: ldur            w2, [x0, #0x13]
    // 0x724c78: DecompressPointer r2
    //     0x724c78: add             x2, x2, HEAP, lsl #32
    // 0x724c7c: r0 = _buildDownloadWidget()
    //     0x724c7c: bl              #0x724c94  ; [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::_buildDownloadWidget
    // 0x724c80: LeaveFrame
    //     0x724c80: mov             SP, fp
    //     0x724c84: ldp             fp, lr, [SP], #0x10
    // 0x724c88: ret
    //     0x724c88: ret             
    // 0x724c8c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x724c8c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x724c90: b               #0x724b70
  }
  _ _buildDownloadWidget(/* No info */) {
    // ** addr: 0x724c94, size: 0x340
    // 0x724c94: EnterFrame
    //     0x724c94: stp             fp, lr, [SP, #-0x10]!
    //     0x724c98: mov             fp, SP
    // 0x724c9c: AllocStack(0x38)
    //     0x724c9c: sub             SP, SP, #0x38
    // 0x724ca0: SetupParameters(_SayDualariPageState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x724ca0: stur            x1, [fp, #-8]
    //     0x724ca4: stur            x2, [fp, #-0x10]
    // 0x724ca8: CheckStackOverflow
    //     0x724ca8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x724cac: cmp             SP, x16
    //     0x724cb0: b.ls            #0x724fc4
    // 0x724cb4: r1 = 2
    //     0x724cb4: mov             x1, #2
    // 0x724cb8: r0 = AllocateContext()
    //     0x724cb8: bl              #0x927010  ; AllocateContextStub
    // 0x724cbc: mov             x3, x0
    // 0x724cc0: ldur            x0, [fp, #-8]
    // 0x724cc4: stur            x3, [fp, #-0x18]
    // 0x724cc8: StoreField: r3->field_f = r0
    //     0x724cc8: stur            w0, [x3, #0xf]
    // 0x724ccc: ldur            x0, [fp, #-0x10]
    // 0x724cd0: StoreField: r3->field_13 = r0
    //     0x724cd0: stur            w0, [x3, #0x13]
    // 0x724cd4: r1 = _ConstMap len:12
    //     0x724cd4: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x724cd8: r2 = 800
    //     0x724cd8: mov             x2, #0x320
    // 0x724cdc: r0 = []()
    //     0x724cdc: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x724ce0: stur            x0, [fp, #-8]
    // 0x724ce4: cmp             w0, NULL
    // 0x724ce8: b.eq            #0x724fcc
    // 0x724cec: r0 = Icon()
    //     0x724cec: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x724cf0: mov             x3, x0
    // 0x724cf4: r0 = Instance_IconData
    //     0x724cf4: add             x0, PP, #0x17, lsl #12  ; [pp+0x179c0] Obj!IconData@a0a241
    //     0x724cf8: ldr             x0, [x0, #0x9c0]
    // 0x724cfc: stur            x3, [fp, #-0x10]
    // 0x724d00: StoreField: r3->field_b = r0
    //     0x724d00: stur            w0, [x3, #0xb]
    // 0x724d04: r0 = 48.000000
    //     0x724d04: add             x0, PP, #0x15, lsl #12  ; [pp+0x15948] 48
    //     0x724d08: ldr             x0, [x0, #0x948]
    // 0x724d0c: StoreField: r3->field_f = r0
    //     0x724d0c: stur            w0, [x3, #0xf]
    // 0x724d10: ldur            x0, [fp, #-8]
    // 0x724d14: StoreField: r3->field_23 = r0
    //     0x724d14: stur            w0, [x3, #0x23]
    // 0x724d18: r1 = _ConstMap len:12
    //     0x724d18: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x724d1c: r2 = 1400
    //     0x724d1c: mov             x2, #0x578
    // 0x724d20: r0 = []()
    //     0x724d20: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x724d24: stur            x0, [fp, #-8]
    // 0x724d28: cmp             w0, NULL
    // 0x724d2c: b.eq            #0x724fd0
    // 0x724d30: r0 = TextStyle()
    //     0x724d30: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x724d34: mov             x1, x0
    // 0x724d38: r0 = true
    //     0x724d38: add             x0, NULL, #0x20  ; true
    // 0x724d3c: stur            x1, [fp, #-0x20]
    // 0x724d40: StoreField: r1->field_7 = r0
    //     0x724d40: stur            w0, [x1, #7]
    // 0x724d44: ldur            x2, [fp, #-8]
    // 0x724d48: StoreField: r1->field_b = r2
    //     0x724d48: stur            w2, [x1, #0xb]
    // 0x724d4c: r2 = 14.000000
    //     0x724d4c: add             x2, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x724d50: ldr             x2, [x2, #0x1c8]
    // 0x724d54: StoreField: r1->field_1f = r2
    //     0x724d54: stur            w2, [x1, #0x1f]
    // 0x724d58: r2 = Instance_FontWeight
    //     0x724d58: add             x2, PP, #0x15, lsl #12  ; [pp+0x155d0] Obj!FontWeight@a20fe1
    //     0x724d5c: ldr             x2, [x2, #0x5d0]
    // 0x724d60: StoreField: r1->field_23 = r2
    //     0x724d60: stur            w2, [x1, #0x23]
    // 0x724d64: r0 = Text()
    //     0x724d64: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x724d68: mov             x1, x0
    // 0x724d6c: r0 = "Resim henüz indirilmemiş"
    //     0x724d6c: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1ffa0] "Resim henüz indirilmemiş"
    //     0x724d70: ldr             x0, [x0, #0xfa0]
    // 0x724d74: stur            x1, [fp, #-8]
    // 0x724d78: StoreField: r1->field_b = r0
    //     0x724d78: stur            w0, [x1, #0xb]
    // 0x724d7c: ldur            x0, [fp, #-0x20]
    // 0x724d80: StoreField: r1->field_13 = r0
    //     0x724d80: stur            w0, [x1, #0x13]
    // 0x724d84: r16 = Instance_EdgeInsets
    //     0x724d84: add             x16, PP, #0x12, lsl #12  ; [pp+0x121e0] Obj!EdgeInsets@a0bd51
    //     0x724d88: ldr             x16, [x16, #0x1e0]
    // 0x724d8c: str             x16, [SP]
    // 0x724d90: r4 = const [0, 0x1, 0x1, 0, padding, 0, null]
    //     0x724d90: add             x4, PP, #0x1f, lsl #12  ; [pp+0x1ffa8] List(7) [0, 0x1, 0x1, 0, "padding", 0, Null]
    //     0x724d94: ldr             x4, [x4, #0xfa8]
    // 0x724d98: r0 = styleFrom()
    //     0x724d98: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x724d9c: ldur            x2, [fp, #-0x18]
    // 0x724da0: r1 = Function '<anonymous closure>':.
    //     0x724da0: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1ffb0] AnonymousClosure: (0x724fd4), in [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::_buildDownloadWidget (0x724c94)
    //     0x724da4: ldr             x1, [x1, #0xfb0]
    // 0x724da8: stur            x0, [fp, #-0x20]
    // 0x724dac: r0 = AllocateClosure()
    //     0x724dac: bl              #0x9273d4  ; AllocateClosureStub
    // 0x724db0: stur            x0, [fp, #-0x28]
    // 0x724db4: r0 = _ElevatedButtonWithIcon()
    //     0x724db4: bl              #0x6d5508  ; Allocate_ElevatedButtonWithIconStub -> _ElevatedButtonWithIcon (size=0x3c)
    // 0x724db8: mov             x1, x0
    // 0x724dbc: ldur            x5, [fp, #-0x28]
    // 0x724dc0: ldur            x6, [fp, #-0x20]
    // 0x724dc4: r2 = Instance_Icon
    //     0x724dc4: add             x2, PP, #0x1f, lsl #12  ; [pp+0x1ffb8] Obj!Icon@a1e971
    //     0x724dc8: ldr             x2, [x2, #0xfb8]
    // 0x724dcc: r3 = Instance_Text
    //     0x724dcc: add             x3, PP, #0x1f, lsl #12  ; [pp+0x1ffc0] Obj!Text@a1c761
    //     0x724dd0: ldr             x3, [x3, #0xfc0]
    // 0x724dd4: stur            x0, [fp, #-0x20]
    // 0x724dd8: r0 = _ElevatedButtonWithIcon()
    //     0x724dd8: bl              #0x6d5420  ; [package:flutter/src/material/elevated_button.dart] _ElevatedButtonWithIcon::_ElevatedButtonWithIcon
    // 0x724ddc: ldur            x2, [fp, #-0x18]
    // 0x724de0: r1 = Function '<anonymous closure>':.
    //     0x724de0: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1ffc8] AnonymousClosure: (0x71ac18), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_buildDownloadWidget (0x71a910)
    //     0x724de4: ldr             x1, [x1, #0xfc8]
    // 0x724de8: r0 = AllocateClosure()
    //     0x724de8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x724dec: stur            x0, [fp, #-0x18]
    // 0x724df0: r0 = TextButton()
    //     0x724df0: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x724df4: mov             x3, x0
    // 0x724df8: ldur            x0, [fp, #-0x18]
    // 0x724dfc: stur            x3, [fp, #-0x28]
    // 0x724e00: StoreField: r3->field_b = r0
    //     0x724e00: stur            w0, [x3, #0xb]
    // 0x724e04: r0 = false
    //     0x724e04: add             x0, NULL, #0x30  ; false
    // 0x724e08: StoreField: r3->field_27 = r0
    //     0x724e08: stur            w0, [x3, #0x27]
    // 0x724e0c: r0 = true
    //     0x724e0c: add             x0, NULL, #0x20  ; true
    // 0x724e10: StoreField: r3->field_2f = r0
    //     0x724e10: stur            w0, [x3, #0x2f]
    // 0x724e14: r0 = Instance_Text
    //     0x724e14: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1ffd0] Obj!Text@a1c711
    //     0x724e18: ldr             x0, [x0, #0xfd0]
    // 0x724e1c: StoreField: r3->field_37 = r0
    //     0x724e1c: stur            w0, [x3, #0x37]
    // 0x724e20: r1 = Null
    //     0x724e20: mov             x1, NULL
    // 0x724e24: r2 = 6
    //     0x724e24: mov             x2, #6
    // 0x724e28: r0 = AllocateArray()
    //     0x724e28: bl              #0x9280a0  ; AllocateArrayStub
    // 0x724e2c: mov             x2, x0
    // 0x724e30: ldur            x0, [fp, #-0x20]
    // 0x724e34: stur            x2, [fp, #-0x18]
    // 0x724e38: StoreField: r2->field_f = r0
    //     0x724e38: stur            w0, [x2, #0xf]
    // 0x724e3c: r16 = Instance_SizedBox
    //     0x724e3c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x724e40: ldr             x16, [x16, #0x360]
    // 0x724e44: StoreField: r2->field_13 = r16
    //     0x724e44: stur            w16, [x2, #0x13]
    // 0x724e48: ldur            x0, [fp, #-0x28]
    // 0x724e4c: ArrayStore: r2[0] = r0  ; List_4
    //     0x724e4c: stur            w0, [x2, #0x17]
    // 0x724e50: r1 = <Widget>
    //     0x724e50: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x724e54: r0 = AllocateGrowableArray()
    //     0x724e54: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x724e58: mov             x1, x0
    // 0x724e5c: ldur            x0, [fp, #-0x18]
    // 0x724e60: stur            x1, [fp, #-0x20]
    // 0x724e64: StoreField: r1->field_f = r0
    //     0x724e64: stur            w0, [x1, #0xf]
    // 0x724e68: r0 = 6
    //     0x724e68: mov             x0, #6
    // 0x724e6c: StoreField: r1->field_b = r0
    //     0x724e6c: stur            w0, [x1, #0xb]
    // 0x724e70: r0 = Row()
    //     0x724e70: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x724e74: mov             x3, x0
    // 0x724e78: r0 = Instance_Axis
    //     0x724e78: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x724e7c: stur            x3, [fp, #-0x18]
    // 0x724e80: StoreField: r3->field_f = r0
    //     0x724e80: stur            w0, [x3, #0xf]
    // 0x724e84: r0 = Instance_MainAxisAlignment
    //     0x724e84: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x724e88: ldr             x0, [x0, #0x328]
    // 0x724e8c: StoreField: r3->field_13 = r0
    //     0x724e8c: stur            w0, [x3, #0x13]
    // 0x724e90: r1 = Instance_MainAxisSize
    //     0x724e90: add             x1, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x724e94: ldr             x1, [x1, #0x330]
    // 0x724e98: ArrayStore: r3[0] = r1  ; List_4
    //     0x724e98: stur            w1, [x3, #0x17]
    // 0x724e9c: r4 = Instance_CrossAxisAlignment
    //     0x724e9c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x724ea0: ldr             x4, [x4, #0x338]
    // 0x724ea4: StoreField: r3->field_1b = r4
    //     0x724ea4: stur            w4, [x3, #0x1b]
    // 0x724ea8: r5 = Instance_VerticalDirection
    //     0x724ea8: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x724eac: ldr             x5, [x5, #0x340]
    // 0x724eb0: StoreField: r3->field_23 = r5
    //     0x724eb0: stur            w5, [x3, #0x23]
    // 0x724eb4: r6 = Instance_Clip
    //     0x724eb4: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x724eb8: ldr             x6, [x6, #0x348]
    // 0x724ebc: StoreField: r3->field_2b = r6
    //     0x724ebc: stur            w6, [x3, #0x2b]
    // 0x724ec0: StoreField: r3->field_2f = rZR
    //     0x724ec0: stur            xzr, [x3, #0x2f]
    // 0x724ec4: ldur            x1, [fp, #-0x20]
    // 0x724ec8: StoreField: r3->field_b = r1
    //     0x724ec8: stur            w1, [x3, #0xb]
    // 0x724ecc: r1 = Null
    //     0x724ecc: mov             x1, NULL
    // 0x724ed0: r2 = 10
    //     0x724ed0: mov             x2, #0xa
    // 0x724ed4: r0 = AllocateArray()
    //     0x724ed4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x724ed8: mov             x2, x0
    // 0x724edc: ldur            x0, [fp, #-0x10]
    // 0x724ee0: stur            x2, [fp, #-0x20]
    // 0x724ee4: StoreField: r2->field_f = r0
    //     0x724ee4: stur            w0, [x2, #0xf]
    // 0x724ee8: r16 = Instance_SizedBox
    //     0x724ee8: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x724eec: ldr             x16, [x16, #0x220]
    // 0x724ef0: StoreField: r2->field_13 = r16
    //     0x724ef0: stur            w16, [x2, #0x13]
    // 0x724ef4: ldur            x0, [fp, #-8]
    // 0x724ef8: ArrayStore: r2[0] = r0  ; List_4
    //     0x724ef8: stur            w0, [x2, #0x17]
    // 0x724efc: r16 = Instance_SizedBox
    //     0x724efc: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x724f00: ldr             x16, [x16, #0x310]
    // 0x724f04: StoreField: r2->field_1b = r16
    //     0x724f04: stur            w16, [x2, #0x1b]
    // 0x724f08: ldur            x0, [fp, #-0x18]
    // 0x724f0c: StoreField: r2->field_1f = r0
    //     0x724f0c: stur            w0, [x2, #0x1f]
    // 0x724f10: r1 = <Widget>
    //     0x724f10: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x724f14: r0 = AllocateGrowableArray()
    //     0x724f14: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x724f18: mov             x1, x0
    // 0x724f1c: ldur            x0, [fp, #-0x20]
    // 0x724f20: stur            x1, [fp, #-8]
    // 0x724f24: StoreField: r1->field_f = r0
    //     0x724f24: stur            w0, [x1, #0xf]
    // 0x724f28: r0 = 10
    //     0x724f28: mov             x0, #0xa
    // 0x724f2c: StoreField: r1->field_b = r0
    //     0x724f2c: stur            w0, [x1, #0xb]
    // 0x724f30: r0 = Column()
    //     0x724f30: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x724f34: mov             x1, x0
    // 0x724f38: r0 = Instance_Axis
    //     0x724f38: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x724f3c: stur            x1, [fp, #-0x10]
    // 0x724f40: StoreField: r1->field_f = r0
    //     0x724f40: stur            w0, [x1, #0xf]
    // 0x724f44: r0 = Instance_MainAxisAlignment
    //     0x724f44: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x724f48: ldr             x0, [x0, #0x328]
    // 0x724f4c: StoreField: r1->field_13 = r0
    //     0x724f4c: stur            w0, [x1, #0x13]
    // 0x724f50: r0 = Instance_MainAxisSize
    //     0x724f50: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x724f54: ldr             x0, [x0, #0xb60]
    // 0x724f58: ArrayStore: r1[0] = r0  ; List_4
    //     0x724f58: stur            w0, [x1, #0x17]
    // 0x724f5c: r0 = Instance_CrossAxisAlignment
    //     0x724f5c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x724f60: ldr             x0, [x0, #0x338]
    // 0x724f64: StoreField: r1->field_1b = r0
    //     0x724f64: stur            w0, [x1, #0x1b]
    // 0x724f68: r0 = Instance_VerticalDirection
    //     0x724f68: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x724f6c: ldr             x0, [x0, #0x340]
    // 0x724f70: StoreField: r1->field_23 = r0
    //     0x724f70: stur            w0, [x1, #0x23]
    // 0x724f74: r0 = Instance_Clip
    //     0x724f74: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x724f78: ldr             x0, [x0, #0x348]
    // 0x724f7c: StoreField: r1->field_2b = r0
    //     0x724f7c: stur            w0, [x1, #0x2b]
    // 0x724f80: StoreField: r1->field_2f = rZR
    //     0x724f80: stur            xzr, [x1, #0x2f]
    // 0x724f84: ldur            x0, [fp, #-8]
    // 0x724f88: StoreField: r1->field_b = r0
    //     0x724f88: stur            w0, [x1, #0xb]
    // 0x724f8c: r0 = Container()
    //     0x724f8c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x724f90: stur            x0, [fp, #-8]
    // 0x724f94: r16 = Instance_EdgeInsets
    //     0x724f94: add             x16, PP, #0xc, lsl #12  ; [pp+0xc7e8] Obj!EdgeInsets@a0c141
    //     0x724f98: ldr             x16, [x16, #0x7e8]
    // 0x724f9c: ldur            lr, [fp, #-0x10]
    // 0x724fa0: stp             lr, x16, [SP]
    // 0x724fa4: mov             x1, x0
    // 0x724fa8: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, padding, 0x1, null]
    //     0x724fa8: add             x4, PP, #0x16, lsl #12  ; [pp+0x16058] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "padding", 0x1, Null]
    //     0x724fac: ldr             x4, [x4, #0x58]
    // 0x724fb0: r0 = Container()
    //     0x724fb0: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x724fb4: ldur            x0, [fp, #-8]
    // 0x724fb8: LeaveFrame
    //     0x724fb8: mov             SP, fp
    //     0x724fbc: ldp             fp, lr, [SP], #0x10
    // 0x724fc0: ret
    //     0x724fc0: ret             
    // 0x724fc4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x724fc4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x724fc8: b               #0x724cb4
    // 0x724fcc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x724fcc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x724fd0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x724fd0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x724fd4, size: 0x1ac
    // 0x724fd4: EnterFrame
    //     0x724fd4: stp             fp, lr, [SP, #-0x10]!
    //     0x724fd8: mov             fp, SP
    // 0x724fdc: AllocStack(0x38)
    //     0x724fdc: sub             SP, SP, #0x38
    // 0x724fe0: SetupParameters(_SayDualariPageState this /* r1 */)
    //     0x724fe0: stur            NULL, [fp, #-8]
    //     0x724fe4: mov             x0, #0
    //     0x724fe8: add             x1, fp, w0, sxtw #2
    //     0x724fec: ldr             x1, [x1, #0x10]
    //     0x724ff0: ldur            w2, [x1, #0x17]
    //     0x724ff4: add             x2, x2, HEAP, lsl #32
    //     0x724ff8: stur            x2, [fp, #-0x10]
    // 0x724ffc: CheckStackOverflow
    //     0x724ffc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x725000: cmp             SP, x16
    //     0x725004: b.ls            #0x725168
    // 0x725008: InitAsync() -> Future<void?>
    //     0x725008: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x72500c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x725010: ldur            x0, [fp, #-0x10]
    // 0x725014: LoadField: r1 = r0->field_f
    //     0x725014: ldur            w1, [x0, #0xf]
    // 0x725018: DecompressPointer r1
    //     0x725018: add             x1, x1, HEAP, lsl #32
    // 0x72501c: LoadField: r3 = r1->field_f
    //     0x72501c: ldur            w3, [x1, #0xf]
    // 0x725020: DecompressPointer r3
    //     0x725020: add             x3, x3, HEAP, lsl #32
    // 0x725024: stur            x3, [fp, #-0x18]
    // 0x725028: cmp             w3, NULL
    // 0x72502c: b.eq            #0x725170
    // 0x725030: r1 = Function '<anonymous closure>':.
    //     0x725030: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1ffd8] AnonymousClosure: (0x71a904), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_buildErrorWidget (0x6fd15c)
    //     0x725034: ldr             x1, [x1, #0xfd8]
    // 0x725038: r2 = Null
    //     0x725038: mov             x2, NULL
    // 0x72503c: r0 = AllocateClosure()
    //     0x72503c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x725040: stp             x0, NULL, [SP, #0x10]
    // 0x725044: ldur            x16, [fp, #-0x18]
    // 0x725048: r30 = false
    //     0x725048: add             lr, NULL, #0x30  ; false
    // 0x72504c: stp             lr, x16, [SP]
    // 0x725050: r4 = const [0x1, 0x3, 0x3, 0x2, barrierDismissible, 0x2, null]
    //     0x725050: add             x4, PP, #0x15, lsl #12  ; [pp+0x15238] List(7) [0x1, 0x3, 0x3, 0x2, "barrierDismissible", 0x2, Null]
    //     0x725054: ldr             x4, [x4, #0x238]
    // 0x725058: r0 = showDialog()
    //     0x725058: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x72505c: ldur            x0, [fp, #-0x10]
    // 0x725060: LoadField: r1 = r0->field_f
    //     0x725060: ldur            w1, [x0, #0xf]
    // 0x725064: DecompressPointer r1
    //     0x725064: add             x1, x1, HEAP, lsl #32
    // 0x725068: LoadField: r2 = r1->field_1b
    //     0x725068: ldur            w2, [x1, #0x1b]
    // 0x72506c: DecompressPointer r2
    //     0x72506c: add             x2, x2, HEAP, lsl #32
    // 0x725070: r16 = Sentinel
    //     0x725070: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x725074: cmp             w2, w16
    // 0x725078: b.eq            #0x725174
    // 0x72507c: LoadField: r1 = r0->field_13
    //     0x72507c: ldur            w1, [x0, #0x13]
    // 0x725080: DecompressPointer r1
    //     0x725080: add             x1, x1, HEAP, lsl #32
    // 0x725084: mov             x16, x1
    // 0x725088: mov             x1, x2
    // 0x72508c: mov             x2, x16
    // 0x725090: r0 = downloadSingleFile()
    //     0x725090: bl              #0x725180  ; [package:umrem_demo/features/dualar/providers/say_dualari_download_provider.dart] SayDualariDownloadProvider::downloadSingleFile
    // 0x725094: mov             x1, x0
    // 0x725098: stur            x1, [fp, #-0x18]
    // 0x72509c: r0 = Await()
    //     0x72509c: bl              #0x3dd188  ; AwaitStub
    // 0x7250a0: mov             x2, x0
    // 0x7250a4: ldur            x0, [fp, #-0x10]
    // 0x7250a8: stur            x2, [fp, #-0x18]
    // 0x7250ac: LoadField: r1 = r0->field_f
    //     0x7250ac: ldur            w1, [x0, #0xf]
    // 0x7250b0: DecompressPointer r1
    //     0x7250b0: add             x1, x1, HEAP, lsl #32
    // 0x7250b4: LoadField: r3 = r1->field_f
    //     0x7250b4: ldur            w3, [x1, #0xf]
    // 0x7250b8: DecompressPointer r3
    //     0x7250b8: add             x3, x3, HEAP, lsl #32
    // 0x7250bc: cmp             w3, NULL
    // 0x7250c0: b.eq            #0x7250e0
    // 0x7250c4: mov             x1, x3
    // 0x7250c8: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7250c8: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7250cc: r0 = of()
    //     0x7250cc: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x7250d0: r16 = <Object?>
    //     0x7250d0: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x7250d4: stp             x0, x16, [SP]
    // 0x7250d8: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7250d8: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7250dc: r0 = pop()
    //     0x7250dc: bl              #0x3fc2bc  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pop
    // 0x7250e0: ldur            x0, [fp, #-0x18]
    // 0x7250e4: cmp             w0, NULL
    // 0x7250e8: b.eq            #0x72512c
    // 0x7250ec: ldur            x0, [fp, #-0x10]
    // 0x7250f0: LoadField: r3 = r0->field_f
    //     0x7250f0: ldur            w3, [x0, #0xf]
    // 0x7250f4: DecompressPointer r3
    //     0x7250f4: add             x3, x3, HEAP, lsl #32
    // 0x7250f8: stur            x3, [fp, #-0x18]
    // 0x7250fc: LoadField: r1 = r3->field_f
    //     0x7250fc: ldur            w1, [x3, #0xf]
    // 0x725100: DecompressPointer r1
    //     0x725100: add             x1, x1, HEAP, lsl #32
    // 0x725104: cmp             w1, NULL
    // 0x725108: b.eq            #0x725130
    // 0x72510c: r1 = Function '<anonymous closure>':.
    //     0x72510c: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1ffe0] Function: [dart:ui] _NativeScene::_NativeScene._ (0x921cc4)
    //     0x725110: ldr             x1, [x1, #0xfe0]
    // 0x725114: r2 = Null
    //     0x725114: mov             x2, NULL
    // 0x725118: r0 = AllocateClosure()
    //     0x725118: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72511c: ldur            x1, [fp, #-0x18]
    // 0x725120: mov             x2, x0
    // 0x725124: r0 = setState()
    //     0x725124: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x725128: b               #0x725160
    // 0x72512c: ldur            x0, [fp, #-0x10]
    // 0x725130: LoadField: r1 = r0->field_f
    //     0x725130: ldur            w1, [x0, #0xf]
    // 0x725134: DecompressPointer r1
    //     0x725134: add             x1, x1, HEAP, lsl #32
    // 0x725138: LoadField: r0 = r1->field_f
    //     0x725138: ldur            w0, [x1, #0xf]
    // 0x72513c: DecompressPointer r0
    //     0x72513c: add             x0, x0, HEAP, lsl #32
    // 0x725140: cmp             w0, NULL
    // 0x725144: b.eq            #0x725160
    // 0x725148: mov             x1, x0
    // 0x72514c: r0 = of()
    //     0x72514c: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x725150: mov             x1, x0
    // 0x725154: r2 = Instance_SnackBar
    //     0x725154: add             x2, PP, #0x1f, lsl #12  ; [pp+0x1ffe8] Obj!SnackBar@a205d1
    //     0x725158: ldr             x2, [x2, #0xfe8]
    // 0x72515c: r0 = showSnackBar()
    //     0x72515c: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x725160: r0 = Null
    //     0x725160: mov             x0, NULL
    // 0x725164: r0 = ReturnAsyncNotFuture()
    //     0x725164: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x725168: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x725168: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72516c: b               #0x725008
    // 0x725170: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x725170: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x725174: r9 = _downloadController
    //     0x725174: add             x9, PP, #0x1f, lsl #12  ; [pp+0x1fff0] Field <_SayDualariPageState@1023509472._downloadController@1023509472>: late final (offset: 0x1c)
    //     0x725178: ldr             x9, [x9, #0xff0]
    // 0x72517c: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x72517c: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, Object, StackTrace?) {
    // ** addr: 0x725d3c, size: 0x4c
    // 0x725d3c: EnterFrame
    //     0x725d3c: stp             fp, lr, [SP, #-0x10]!
    //     0x725d40: mov             fp, SP
    // 0x725d44: ldr             x0, [fp, #0x28]
    // 0x725d48: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x725d48: ldur            w1, [x0, #0x17]
    // 0x725d4c: DecompressPointer r1
    //     0x725d4c: add             x1, x1, HEAP, lsl #32
    // 0x725d50: CheckStackOverflow
    //     0x725d50: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x725d54: cmp             SP, x16
    //     0x725d58: b.ls            #0x725d80
    // 0x725d5c: LoadField: r0 = r1->field_f
    //     0x725d5c: ldur            w0, [x1, #0xf]
    // 0x725d60: DecompressPointer r0
    //     0x725d60: add             x0, x0, HEAP, lsl #32
    // 0x725d64: LoadField: r2 = r1->field_13
    //     0x725d64: ldur            w2, [x1, #0x13]
    // 0x725d68: DecompressPointer r2
    //     0x725d68: add             x2, x2, HEAP, lsl #32
    // 0x725d6c: mov             x1, x0
    // 0x725d70: r0 = _buildDownloadWidget()
    //     0x725d70: bl              #0x724c94  ; [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::_buildDownloadWidget
    // 0x725d74: LeaveFrame
    //     0x725d74: mov             SP, fp
    //     0x725d78: ldp             fp, lr, [SP], #0x10
    // 0x725d7c: ret
    //     0x725d7c: ret             
    // 0x725d80: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x725d80: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x725d84: b               #0x725d5c
  }
  dynamic dispose(dynamic) {
    // ** addr: 0x74c5f4, size: 0x24
    // 0x74c5f4: EnterFrame
    //     0x74c5f4: stp             fp, lr, [SP, #-0x10]!
    //     0x74c5f8: mov             fp, SP
    // 0x74c5fc: ldr             x2, [fp, #0x10]
    // 0x74c600: r1 = Function 'dispose':.
    //     0x74c600: add             x1, PP, #0x27, lsl #12  ; [pp+0x27280] AnonymousClosure: (0x74c618), in [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::dispose (0x753eb8)
    //     0x74c604: ldr             x1, [x1, #0x280]
    // 0x74c608: r0 = AllocateClosure()
    //     0x74c608: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74c60c: LeaveFrame
    //     0x74c60c: mov             SP, fp
    //     0x74c610: ldp             fp, lr, [SP], #0x10
    // 0x74c614: ret
    //     0x74c614: ret             
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x74c618, size: 0x38
    // 0x74c618: EnterFrame
    //     0x74c618: stp             fp, lr, [SP, #-0x10]!
    //     0x74c61c: mov             fp, SP
    // 0x74c620: ldr             x0, [fp, #0x10]
    // 0x74c624: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74c624: ldur            w1, [x0, #0x17]
    // 0x74c628: DecompressPointer r1
    //     0x74c628: add             x1, x1, HEAP, lsl #32
    // 0x74c62c: CheckStackOverflow
    //     0x74c62c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74c630: cmp             SP, x16
    //     0x74c634: b.ls            #0x74c648
    // 0x74c638: r0 = dispose()
    //     0x74c638: bl              #0x753eb8  ; [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::dispose
    // 0x74c63c: LeaveFrame
    //     0x74c63c: mov             SP, fp
    //     0x74c640: ldp             fp, lr, [SP], #0x10
    // 0x74c644: ret
    //     0x74c644: ret             
    // 0x74c648: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74c648: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74c64c: b               #0x74c638
  }
  _ dispose(/* No info */) {
    // ** addr: 0x753eb8, size: 0x3c
    // 0x753eb8: EnterFrame
    //     0x753eb8: stp             fp, lr, [SP, #-0x10]!
    //     0x753ebc: mov             fp, SP
    // 0x753ec0: CheckStackOverflow
    //     0x753ec0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x753ec4: cmp             SP, x16
    //     0x753ec8: b.ls            #0x753eec
    // 0x753ecc: LoadField: r0 = r1->field_13
    //     0x753ecc: ldur            w0, [x1, #0x13]
    // 0x753ed0: DecompressPointer r0
    //     0x753ed0: add             x0, x0, HEAP, lsl #32
    // 0x753ed4: mov             x1, x0
    // 0x753ed8: r0 = dispose()
    //     0x753ed8: bl              #0x63cc58  ; [package:flutter/src/widgets/scroll_controller.dart] ScrollController::dispose
    // 0x753edc: r0 = Null
    //     0x753edc: mov             x0, NULL
    // 0x753ee0: LeaveFrame
    //     0x753ee0: mov             SP, fp
    //     0x753ee4: ldp             fp, lr, [SP], #0x10
    // 0x753ee8: ret
    //     0x753ee8: ret             
    // 0x753eec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x753eec: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x753ef0: b               #0x753ecc
  }
  _ _SayDualariPageState(/* No info */) {
    // ** addr: 0x7be58c, size: 0x8d4
    // 0x7be58c: EnterFrame
    //     0x7be58c: stp             fp, lr, [SP, #-0x10]!
    //     0x7be590: mov             fp, SP
    // 0x7be594: AllocStack(0x60)
    //     0x7be594: sub             SP, SP, #0x60
    // 0x7be598: r3 = Sentinel
    //     0x7be598: ldr             x3, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x7be59c: r2 = false
    //     0x7be59c: add             x2, NULL, #0x30  ; false
    // 0x7be5a0: r0 = 1
    //     0x7be5a0: mov             x0, #1
    // 0x7be5a4: stur            x1, [fp, #-8]
    // 0x7be5a8: CheckStackOverflow
    //     0x7be5a8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7be5ac: cmp             SP, x16
    //     0x7be5b0: b.ls            #0x7bee58
    // 0x7be5b4: StoreField: r1->field_1b = r3
    //     0x7be5b4: stur            w3, [x1, #0x1b]
    // 0x7be5b8: StoreField: r1->field_1f = rZR
    //     0x7be5b8: stur            xzr, [x1, #0x1f]
    // 0x7be5bc: StoreField: r1->field_27 = r0
    //     0x7be5bc: stur            x0, [x1, #0x27]
    // 0x7be5c0: StoreField: r1->field_2f = rZR
    //     0x7be5c0: stur            xzr, [x1, #0x2f]
    // 0x7be5c4: StoreField: r1->field_37 = r2
    //     0x7be5c4: stur            w2, [x1, #0x37]
    // 0x7be5c8: r0 = PageController()
    //     0x7be5c8: bl              #0x578c78  ; AllocatePageControllerStub -> PageController (size=0x54)
    // 0x7be5cc: stur            x0, [fp, #-0x10]
    // 0x7be5d0: StoreField: r0->field_3f = rZR
    //     0x7be5d0: stur            xzr, [x0, #0x3f]
    // 0x7be5d4: r1 = true
    //     0x7be5d4: add             x1, NULL, #0x20  ; true
    // 0x7be5d8: StoreField: r0->field_47 = r1
    //     0x7be5d8: stur            w1, [x0, #0x47]
    // 0x7be5dc: d0 = 1.000000
    //     0x7be5dc: fmov            d0, #1.00000000
    // 0x7be5e0: StoreField: r0->field_4b = d0
    //     0x7be5e0: stur            d0, [x0, #0x4b]
    // 0x7be5e4: mov             x1, x0
    // 0x7be5e8: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7be5e8: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7be5ec: r0 = ScrollController()
    //     0x7be5ec: bl              #0x437694  ; [package:flutter/src/widgets/scroll_controller.dart] ScrollController::ScrollController
    // 0x7be5f0: ldur            x0, [fp, #-0x10]
    // 0x7be5f4: ldur            x1, [fp, #-8]
    // 0x7be5f8: StoreField: r1->field_13 = r0
    //     0x7be5f8: stur            w0, [x1, #0x13]
    //     0x7be5fc: ldurb           w16, [x1, #-1]
    //     0x7be600: ldurb           w17, [x0, #-1]
    //     0x7be604: and             x16, x17, x16, lsr #2
    //     0x7be608: tst             x16, HEAP, lsr #32
    //     0x7be60c: b.eq            #0x7be614
    //     0x7be610: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7be614: r0 = InitLateStaticField(0x1018) // [package:umrem_demo/core/services/say_dualari_storage_service.dart] SayDualariStorageService::_instance
    //     0x7be614: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7be618: ldr             x0, [x0, #0x2030]
    //     0x7be61c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7be620: cmp             w0, w16
    //     0x7be624: b.ne            #0x7be634
    //     0x7be628: add             x2, PP, #0x10, lsl #12  ; [pp+0x10d48] Field <SayDualariStorageService._instance@967415537>: static late final (offset: 0x1018)
    //     0x7be62c: ldr             x2, [x2, #0xd48]
    //     0x7be630: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x7be634: ldur            x3, [fp, #-8]
    // 0x7be638: ArrayStore: r3[0] = r0  ; List_4
    //     0x7be638: stur            w0, [x3, #0x17]
    //     0x7be63c: ldurb           w16, [x3, #-1]
    //     0x7be640: ldurb           w17, [x0, #-1]
    //     0x7be644: and             x16, x17, x16, lsr #2
    //     0x7be648: tst             x16, HEAP, lsr #32
    //     0x7be64c: b.eq            #0x7be654
    //     0x7be650: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x7be654: r1 = Null
    //     0x7be654: mov             x1, NULL
    // 0x7be658: r2 = 16
    //     0x7be658: mov             x2, #0x10
    // 0x7be65c: r0 = AllocateArray()
    //     0x7be65c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be660: stur            x0, [fp, #-0x10]
    // 0x7be664: r16 = "title"
    //     0x7be664: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x7be668: StoreField: r0->field_f = r16
    //     0x7be668: stur            w16, [x0, #0xf]
    // 0x7be66c: r16 = "Sa\'yin 1. Şavtının Duası"
    //     0x7be66c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcb8] "Sa\'yin 1. Şavtının Duası"
    //     0x7be670: ldr             x16, [x16, #0xcb8]
    // 0x7be674: StoreField: r0->field_13 = r16
    //     0x7be674: stur            w16, [x0, #0x13]
    // 0x7be678: r16 = "arabicFiles"
    //     0x7be678: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcc0] "arabicFiles"
    //     0x7be67c: ldr             x16, [x16, #0xcc0]
    // 0x7be680: ArrayStore: r0[0] = r16  ; List_4
    //     0x7be680: stur            w16, [x0, #0x17]
    // 0x7be684: r1 = Null
    //     0x7be684: mov             x1, NULL
    // 0x7be688: r2 = 4
    //     0x7be688: mov             x2, #4
    // 0x7be68c: r0 = AllocateArray()
    //     0x7be68c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be690: stur            x0, [fp, #-0x18]
    // 0x7be694: r16 = "say-arabic-1.png"
    //     0x7be694: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcc8] "say-arabic-1.png"
    //     0x7be698: ldr             x16, [x16, #0xcc8]
    // 0x7be69c: StoreField: r0->field_f = r16
    //     0x7be69c: stur            w16, [x0, #0xf]
    // 0x7be6a0: r16 = "say-arabic-1-1.png"
    //     0x7be6a0: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcd0] "say-arabic-1-1.png"
    //     0x7be6a4: ldr             x16, [x16, #0xcd0]
    // 0x7be6a8: StoreField: r0->field_13 = r16
    //     0x7be6a8: stur            w16, [x0, #0x13]
    // 0x7be6ac: r1 = <String>
    //     0x7be6ac: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7be6b0: r0 = AllocateGrowableArray()
    //     0x7be6b0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7be6b4: mov             x1, x0
    // 0x7be6b8: ldur            x0, [fp, #-0x18]
    // 0x7be6bc: StoreField: r1->field_f = r0
    //     0x7be6bc: stur            w0, [x1, #0xf]
    // 0x7be6c0: r0 = 4
    //     0x7be6c0: mov             x0, #4
    // 0x7be6c4: StoreField: r1->field_b = r0
    //     0x7be6c4: stur            w0, [x1, #0xb]
    // 0x7be6c8: ldur            x3, [fp, #-0x10]
    // 0x7be6cc: StoreField: r3->field_1b = r1
    //     0x7be6cc: stur            w1, [x3, #0x1b]
    // 0x7be6d0: r16 = "turkishFiles"
    //     0x7be6d0: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcd8] "turkishFiles"
    //     0x7be6d4: ldr             x16, [x16, #0xcd8]
    // 0x7be6d8: StoreField: r3->field_1f = r16
    //     0x7be6d8: stur            w16, [x3, #0x1f]
    // 0x7be6dc: mov             x2, x0
    // 0x7be6e0: r1 = Null
    //     0x7be6e0: mov             x1, NULL
    // 0x7be6e4: r0 = AllocateArray()
    //     0x7be6e4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be6e8: stur            x0, [fp, #-0x18]
    // 0x7be6ec: r16 = "say-turkish-1.png"
    //     0x7be6ec: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bce0] "say-turkish-1.png"
    //     0x7be6f0: ldr             x16, [x16, #0xce0]
    // 0x7be6f4: StoreField: r0->field_f = r16
    //     0x7be6f4: stur            w16, [x0, #0xf]
    // 0x7be6f8: r16 = "say-turkish-1-1.png"
    //     0x7be6f8: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bce8] "say-turkish-1-1.png"
    //     0x7be6fc: ldr             x16, [x16, #0xce8]
    // 0x7be700: StoreField: r0->field_13 = r16
    //     0x7be700: stur            w16, [x0, #0x13]
    // 0x7be704: r1 = <String>
    //     0x7be704: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7be708: r0 = AllocateGrowableArray()
    //     0x7be708: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7be70c: mov             x1, x0
    // 0x7be710: ldur            x0, [fp, #-0x18]
    // 0x7be714: StoreField: r1->field_f = r0
    //     0x7be714: stur            w0, [x1, #0xf]
    // 0x7be718: r2 = 4
    //     0x7be718: mov             x2, #4
    // 0x7be71c: StoreField: r1->field_b = r2
    //     0x7be71c: stur            w2, [x1, #0xb]
    // 0x7be720: ldur            x0, [fp, #-0x10]
    // 0x7be724: StoreField: r0->field_23 = r1
    //     0x7be724: stur            w1, [x0, #0x23]
    // 0x7be728: r16 = "isZikirmatik"
    //     0x7be728: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcf0] "isZikirmatik"
    //     0x7be72c: ldr             x16, [x16, #0xcf0]
    // 0x7be730: StoreField: r0->field_27 = r16
    //     0x7be730: stur            w16, [x0, #0x27]
    // 0x7be734: r16 = true
    //     0x7be734: add             x16, NULL, #0x20  ; true
    // 0x7be738: StoreField: r0->field_2b = r16
    //     0x7be738: stur            w16, [x0, #0x2b]
    // 0x7be73c: r16 = <String, dynamic>
    //     0x7be73c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x7be740: stp             x0, x16, [SP]
    // 0x7be744: r0 = Map._fromLiteral()
    //     0x7be744: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7be748: r1 = Null
    //     0x7be748: mov             x1, NULL
    // 0x7be74c: r2 = 16
    //     0x7be74c: mov             x2, #0x10
    // 0x7be750: stur            x0, [fp, #-0x10]
    // 0x7be754: r0 = AllocateArray()
    //     0x7be754: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be758: stur            x0, [fp, #-0x18]
    // 0x7be75c: r16 = "title"
    //     0x7be75c: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x7be760: StoreField: r0->field_f = r16
    //     0x7be760: stur            w16, [x0, #0xf]
    // 0x7be764: r16 = "Sa\'yin 2. Şavtının Duası"
    //     0x7be764: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcf8] "Sa\'yin 2. Şavtının Duası"
    //     0x7be768: ldr             x16, [x16, #0xcf8]
    // 0x7be76c: StoreField: r0->field_13 = r16
    //     0x7be76c: stur            w16, [x0, #0x13]
    // 0x7be770: r16 = "arabicFiles"
    //     0x7be770: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcc0] "arabicFiles"
    //     0x7be774: ldr             x16, [x16, #0xcc0]
    // 0x7be778: ArrayStore: r0[0] = r16  ; List_4
    //     0x7be778: stur            w16, [x0, #0x17]
    // 0x7be77c: r1 = Null
    //     0x7be77c: mov             x1, NULL
    // 0x7be780: r2 = 4
    //     0x7be780: mov             x2, #4
    // 0x7be784: r0 = AllocateArray()
    //     0x7be784: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be788: stur            x0, [fp, #-0x20]
    // 0x7be78c: r16 = "say-arabic-2.png"
    //     0x7be78c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd00] "say-arabic-2.png"
    //     0x7be790: ldr             x16, [x16, #0xd00]
    // 0x7be794: StoreField: r0->field_f = r16
    //     0x7be794: stur            w16, [x0, #0xf]
    // 0x7be798: r16 = "say-arabic-2-1.png"
    //     0x7be798: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd08] "say-arabic-2-1.png"
    //     0x7be79c: ldr             x16, [x16, #0xd08]
    // 0x7be7a0: StoreField: r0->field_13 = r16
    //     0x7be7a0: stur            w16, [x0, #0x13]
    // 0x7be7a4: r1 = <String>
    //     0x7be7a4: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7be7a8: r0 = AllocateGrowableArray()
    //     0x7be7a8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7be7ac: mov             x1, x0
    // 0x7be7b0: ldur            x0, [fp, #-0x20]
    // 0x7be7b4: StoreField: r1->field_f = r0
    //     0x7be7b4: stur            w0, [x1, #0xf]
    // 0x7be7b8: r0 = 4
    //     0x7be7b8: mov             x0, #4
    // 0x7be7bc: StoreField: r1->field_b = r0
    //     0x7be7bc: stur            w0, [x1, #0xb]
    // 0x7be7c0: ldur            x3, [fp, #-0x18]
    // 0x7be7c4: StoreField: r3->field_1b = r1
    //     0x7be7c4: stur            w1, [x3, #0x1b]
    // 0x7be7c8: r16 = "turkishFiles"
    //     0x7be7c8: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcd8] "turkishFiles"
    //     0x7be7cc: ldr             x16, [x16, #0xcd8]
    // 0x7be7d0: StoreField: r3->field_1f = r16
    //     0x7be7d0: stur            w16, [x3, #0x1f]
    // 0x7be7d4: mov             x2, x0
    // 0x7be7d8: r1 = Null
    //     0x7be7d8: mov             x1, NULL
    // 0x7be7dc: r0 = AllocateArray()
    //     0x7be7dc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be7e0: stur            x0, [fp, #-0x20]
    // 0x7be7e4: r16 = "say-turkish-2.png"
    //     0x7be7e4: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd10] "say-turkish-2.png"
    //     0x7be7e8: ldr             x16, [x16, #0xd10]
    // 0x7be7ec: StoreField: r0->field_f = r16
    //     0x7be7ec: stur            w16, [x0, #0xf]
    // 0x7be7f0: r16 = "say-turkish-2-1.png"
    //     0x7be7f0: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd18] "say-turkish-2-1.png"
    //     0x7be7f4: ldr             x16, [x16, #0xd18]
    // 0x7be7f8: StoreField: r0->field_13 = r16
    //     0x7be7f8: stur            w16, [x0, #0x13]
    // 0x7be7fc: r1 = <String>
    //     0x7be7fc: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7be800: r0 = AllocateGrowableArray()
    //     0x7be800: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7be804: mov             x1, x0
    // 0x7be808: ldur            x0, [fp, #-0x20]
    // 0x7be80c: StoreField: r1->field_f = r0
    //     0x7be80c: stur            w0, [x1, #0xf]
    // 0x7be810: r2 = 4
    //     0x7be810: mov             x2, #4
    // 0x7be814: StoreField: r1->field_b = r2
    //     0x7be814: stur            w2, [x1, #0xb]
    // 0x7be818: ldur            x0, [fp, #-0x18]
    // 0x7be81c: StoreField: r0->field_23 = r1
    //     0x7be81c: stur            w1, [x0, #0x23]
    // 0x7be820: r16 = "isZikirmatik"
    //     0x7be820: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcf0] "isZikirmatik"
    //     0x7be824: ldr             x16, [x16, #0xcf0]
    // 0x7be828: StoreField: r0->field_27 = r16
    //     0x7be828: stur            w16, [x0, #0x27]
    // 0x7be82c: r16 = true
    //     0x7be82c: add             x16, NULL, #0x20  ; true
    // 0x7be830: StoreField: r0->field_2b = r16
    //     0x7be830: stur            w16, [x0, #0x2b]
    // 0x7be834: r16 = <String, dynamic>
    //     0x7be834: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x7be838: stp             x0, x16, [SP]
    // 0x7be83c: r0 = Map._fromLiteral()
    //     0x7be83c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7be840: r1 = Null
    //     0x7be840: mov             x1, NULL
    // 0x7be844: r2 = 16
    //     0x7be844: mov             x2, #0x10
    // 0x7be848: stur            x0, [fp, #-0x18]
    // 0x7be84c: r0 = AllocateArray()
    //     0x7be84c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be850: stur            x0, [fp, #-0x20]
    // 0x7be854: r16 = "title"
    //     0x7be854: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x7be858: StoreField: r0->field_f = r16
    //     0x7be858: stur            w16, [x0, #0xf]
    // 0x7be85c: r16 = "Sa\'yin 3. Şavtının Duası"
    //     0x7be85c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd20] "Sa\'yin 3. Şavtının Duası"
    //     0x7be860: ldr             x16, [x16, #0xd20]
    // 0x7be864: StoreField: r0->field_13 = r16
    //     0x7be864: stur            w16, [x0, #0x13]
    // 0x7be868: r16 = "arabicFiles"
    //     0x7be868: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcc0] "arabicFiles"
    //     0x7be86c: ldr             x16, [x16, #0xcc0]
    // 0x7be870: ArrayStore: r0[0] = r16  ; List_4
    //     0x7be870: stur            w16, [x0, #0x17]
    // 0x7be874: r1 = Null
    //     0x7be874: mov             x1, NULL
    // 0x7be878: r2 = 4
    //     0x7be878: mov             x2, #4
    // 0x7be87c: r0 = AllocateArray()
    //     0x7be87c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be880: stur            x0, [fp, #-0x28]
    // 0x7be884: r16 = "say-arabic-3.png"
    //     0x7be884: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd28] "say-arabic-3.png"
    //     0x7be888: ldr             x16, [x16, #0xd28]
    // 0x7be88c: StoreField: r0->field_f = r16
    //     0x7be88c: stur            w16, [x0, #0xf]
    // 0x7be890: r16 = "say-arabic-3-1.png"
    //     0x7be890: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd30] "say-arabic-3-1.png"
    //     0x7be894: ldr             x16, [x16, #0xd30]
    // 0x7be898: StoreField: r0->field_13 = r16
    //     0x7be898: stur            w16, [x0, #0x13]
    // 0x7be89c: r1 = <String>
    //     0x7be89c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7be8a0: r0 = AllocateGrowableArray()
    //     0x7be8a0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7be8a4: mov             x1, x0
    // 0x7be8a8: ldur            x0, [fp, #-0x28]
    // 0x7be8ac: StoreField: r1->field_f = r0
    //     0x7be8ac: stur            w0, [x1, #0xf]
    // 0x7be8b0: r0 = 4
    //     0x7be8b0: mov             x0, #4
    // 0x7be8b4: StoreField: r1->field_b = r0
    //     0x7be8b4: stur            w0, [x1, #0xb]
    // 0x7be8b8: ldur            x3, [fp, #-0x20]
    // 0x7be8bc: StoreField: r3->field_1b = r1
    //     0x7be8bc: stur            w1, [x3, #0x1b]
    // 0x7be8c0: r16 = "turkishFiles"
    //     0x7be8c0: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcd8] "turkishFiles"
    //     0x7be8c4: ldr             x16, [x16, #0xcd8]
    // 0x7be8c8: StoreField: r3->field_1f = r16
    //     0x7be8c8: stur            w16, [x3, #0x1f]
    // 0x7be8cc: mov             x2, x0
    // 0x7be8d0: r1 = Null
    //     0x7be8d0: mov             x1, NULL
    // 0x7be8d4: r0 = AllocateArray()
    //     0x7be8d4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be8d8: stur            x0, [fp, #-0x28]
    // 0x7be8dc: r16 = "say-turkish-3.png"
    //     0x7be8dc: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd38] "say-turkish-3.png"
    //     0x7be8e0: ldr             x16, [x16, #0xd38]
    // 0x7be8e4: StoreField: r0->field_f = r16
    //     0x7be8e4: stur            w16, [x0, #0xf]
    // 0x7be8e8: r16 = "say-turkish-3-1.png"
    //     0x7be8e8: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd40] "say-turkish-3-1.png"
    //     0x7be8ec: ldr             x16, [x16, #0xd40]
    // 0x7be8f0: StoreField: r0->field_13 = r16
    //     0x7be8f0: stur            w16, [x0, #0x13]
    // 0x7be8f4: r1 = <String>
    //     0x7be8f4: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7be8f8: r0 = AllocateGrowableArray()
    //     0x7be8f8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7be8fc: mov             x1, x0
    // 0x7be900: ldur            x0, [fp, #-0x28]
    // 0x7be904: StoreField: r1->field_f = r0
    //     0x7be904: stur            w0, [x1, #0xf]
    // 0x7be908: r2 = 4
    //     0x7be908: mov             x2, #4
    // 0x7be90c: StoreField: r1->field_b = r2
    //     0x7be90c: stur            w2, [x1, #0xb]
    // 0x7be910: ldur            x0, [fp, #-0x20]
    // 0x7be914: StoreField: r0->field_23 = r1
    //     0x7be914: stur            w1, [x0, #0x23]
    // 0x7be918: r16 = "isZikirmatik"
    //     0x7be918: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcf0] "isZikirmatik"
    //     0x7be91c: ldr             x16, [x16, #0xcf0]
    // 0x7be920: StoreField: r0->field_27 = r16
    //     0x7be920: stur            w16, [x0, #0x27]
    // 0x7be924: r16 = true
    //     0x7be924: add             x16, NULL, #0x20  ; true
    // 0x7be928: StoreField: r0->field_2b = r16
    //     0x7be928: stur            w16, [x0, #0x2b]
    // 0x7be92c: r16 = <String, dynamic>
    //     0x7be92c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x7be930: stp             x0, x16, [SP]
    // 0x7be934: r0 = Map._fromLiteral()
    //     0x7be934: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7be938: r1 = Null
    //     0x7be938: mov             x1, NULL
    // 0x7be93c: r2 = 16
    //     0x7be93c: mov             x2, #0x10
    // 0x7be940: stur            x0, [fp, #-0x20]
    // 0x7be944: r0 = AllocateArray()
    //     0x7be944: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be948: stur            x0, [fp, #-0x28]
    // 0x7be94c: r16 = "title"
    //     0x7be94c: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x7be950: StoreField: r0->field_f = r16
    //     0x7be950: stur            w16, [x0, #0xf]
    // 0x7be954: r16 = "Sa\'yin 4. Şavtının Duası"
    //     0x7be954: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd48] "Sa\'yin 4. Şavtının Duası"
    //     0x7be958: ldr             x16, [x16, #0xd48]
    // 0x7be95c: StoreField: r0->field_13 = r16
    //     0x7be95c: stur            w16, [x0, #0x13]
    // 0x7be960: r16 = "arabicFiles"
    //     0x7be960: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcc0] "arabicFiles"
    //     0x7be964: ldr             x16, [x16, #0xcc0]
    // 0x7be968: ArrayStore: r0[0] = r16  ; List_4
    //     0x7be968: stur            w16, [x0, #0x17]
    // 0x7be96c: r1 = Null
    //     0x7be96c: mov             x1, NULL
    // 0x7be970: r2 = 4
    //     0x7be970: mov             x2, #4
    // 0x7be974: r0 = AllocateArray()
    //     0x7be974: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be978: stur            x0, [fp, #-0x30]
    // 0x7be97c: r16 = "say-arabic-4.jpg"
    //     0x7be97c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd50] "say-arabic-4.jpg"
    //     0x7be980: ldr             x16, [x16, #0xd50]
    // 0x7be984: StoreField: r0->field_f = r16
    //     0x7be984: stur            w16, [x0, #0xf]
    // 0x7be988: r16 = "say-arabic-4-1.jpg"
    //     0x7be988: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd58] "say-arabic-4-1.jpg"
    //     0x7be98c: ldr             x16, [x16, #0xd58]
    // 0x7be990: StoreField: r0->field_13 = r16
    //     0x7be990: stur            w16, [x0, #0x13]
    // 0x7be994: r1 = <String>
    //     0x7be994: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7be998: r0 = AllocateGrowableArray()
    //     0x7be998: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7be99c: mov             x1, x0
    // 0x7be9a0: ldur            x0, [fp, #-0x30]
    // 0x7be9a4: StoreField: r1->field_f = r0
    //     0x7be9a4: stur            w0, [x1, #0xf]
    // 0x7be9a8: r0 = 4
    //     0x7be9a8: mov             x0, #4
    // 0x7be9ac: StoreField: r1->field_b = r0
    //     0x7be9ac: stur            w0, [x1, #0xb]
    // 0x7be9b0: ldur            x3, [fp, #-0x28]
    // 0x7be9b4: StoreField: r3->field_1b = r1
    //     0x7be9b4: stur            w1, [x3, #0x1b]
    // 0x7be9b8: r16 = "turkishFiles"
    //     0x7be9b8: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcd8] "turkishFiles"
    //     0x7be9bc: ldr             x16, [x16, #0xcd8]
    // 0x7be9c0: StoreField: r3->field_1f = r16
    //     0x7be9c0: stur            w16, [x3, #0x1f]
    // 0x7be9c4: mov             x2, x0
    // 0x7be9c8: r1 = Null
    //     0x7be9c8: mov             x1, NULL
    // 0x7be9cc: r0 = AllocateArray()
    //     0x7be9cc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be9d0: stur            x0, [fp, #-0x30]
    // 0x7be9d4: r16 = "say-turkish-4.jpg"
    //     0x7be9d4: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd60] "say-turkish-4.jpg"
    //     0x7be9d8: ldr             x16, [x16, #0xd60]
    // 0x7be9dc: StoreField: r0->field_f = r16
    //     0x7be9dc: stur            w16, [x0, #0xf]
    // 0x7be9e0: r16 = "say-turkish-4-1.jpg"
    //     0x7be9e0: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd68] "say-turkish-4-1.jpg"
    //     0x7be9e4: ldr             x16, [x16, #0xd68]
    // 0x7be9e8: StoreField: r0->field_13 = r16
    //     0x7be9e8: stur            w16, [x0, #0x13]
    // 0x7be9ec: r1 = <String>
    //     0x7be9ec: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7be9f0: r0 = AllocateGrowableArray()
    //     0x7be9f0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7be9f4: mov             x1, x0
    // 0x7be9f8: ldur            x0, [fp, #-0x30]
    // 0x7be9fc: StoreField: r1->field_f = r0
    //     0x7be9fc: stur            w0, [x1, #0xf]
    // 0x7bea00: r2 = 4
    //     0x7bea00: mov             x2, #4
    // 0x7bea04: StoreField: r1->field_b = r2
    //     0x7bea04: stur            w2, [x1, #0xb]
    // 0x7bea08: ldur            x0, [fp, #-0x28]
    // 0x7bea0c: StoreField: r0->field_23 = r1
    //     0x7bea0c: stur            w1, [x0, #0x23]
    // 0x7bea10: r16 = "isZikirmatik"
    //     0x7bea10: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcf0] "isZikirmatik"
    //     0x7bea14: ldr             x16, [x16, #0xcf0]
    // 0x7bea18: StoreField: r0->field_27 = r16
    //     0x7bea18: stur            w16, [x0, #0x27]
    // 0x7bea1c: r16 = true
    //     0x7bea1c: add             x16, NULL, #0x20  ; true
    // 0x7bea20: StoreField: r0->field_2b = r16
    //     0x7bea20: stur            w16, [x0, #0x2b]
    // 0x7bea24: r16 = <String, dynamic>
    //     0x7bea24: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x7bea28: stp             x0, x16, [SP]
    // 0x7bea2c: r0 = Map._fromLiteral()
    //     0x7bea2c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7bea30: r1 = Null
    //     0x7bea30: mov             x1, NULL
    // 0x7bea34: r2 = 16
    //     0x7bea34: mov             x2, #0x10
    // 0x7bea38: stur            x0, [fp, #-0x28]
    // 0x7bea3c: r0 = AllocateArray()
    //     0x7bea3c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bea40: stur            x0, [fp, #-0x30]
    // 0x7bea44: r16 = "title"
    //     0x7bea44: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x7bea48: StoreField: r0->field_f = r16
    //     0x7bea48: stur            w16, [x0, #0xf]
    // 0x7bea4c: r16 = "Sa\'yin 5. Şavtının Duası"
    //     0x7bea4c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd70] "Sa\'yin 5. Şavtının Duası"
    //     0x7bea50: ldr             x16, [x16, #0xd70]
    // 0x7bea54: StoreField: r0->field_13 = r16
    //     0x7bea54: stur            w16, [x0, #0x13]
    // 0x7bea58: r16 = "arabicFiles"
    //     0x7bea58: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcc0] "arabicFiles"
    //     0x7bea5c: ldr             x16, [x16, #0xcc0]
    // 0x7bea60: ArrayStore: r0[0] = r16  ; List_4
    //     0x7bea60: stur            w16, [x0, #0x17]
    // 0x7bea64: r1 = Null
    //     0x7bea64: mov             x1, NULL
    // 0x7bea68: r2 = 4
    //     0x7bea68: mov             x2, #4
    // 0x7bea6c: r0 = AllocateArray()
    //     0x7bea6c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bea70: stur            x0, [fp, #-0x38]
    // 0x7bea74: r16 = "say-arabic-5.jpg"
    //     0x7bea74: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd78] "say-arabic-5.jpg"
    //     0x7bea78: ldr             x16, [x16, #0xd78]
    // 0x7bea7c: StoreField: r0->field_f = r16
    //     0x7bea7c: stur            w16, [x0, #0xf]
    // 0x7bea80: r16 = "say-arabic-5-1.jpg"
    //     0x7bea80: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd80] "say-arabic-5-1.jpg"
    //     0x7bea84: ldr             x16, [x16, #0xd80]
    // 0x7bea88: StoreField: r0->field_13 = r16
    //     0x7bea88: stur            w16, [x0, #0x13]
    // 0x7bea8c: r1 = <String>
    //     0x7bea8c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7bea90: r0 = AllocateGrowableArray()
    //     0x7bea90: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7bea94: mov             x1, x0
    // 0x7bea98: ldur            x0, [fp, #-0x38]
    // 0x7bea9c: StoreField: r1->field_f = r0
    //     0x7bea9c: stur            w0, [x1, #0xf]
    // 0x7beaa0: r0 = 4
    //     0x7beaa0: mov             x0, #4
    // 0x7beaa4: StoreField: r1->field_b = r0
    //     0x7beaa4: stur            w0, [x1, #0xb]
    // 0x7beaa8: ldur            x3, [fp, #-0x30]
    // 0x7beaac: StoreField: r3->field_1b = r1
    //     0x7beaac: stur            w1, [x3, #0x1b]
    // 0x7beab0: r16 = "turkishFiles"
    //     0x7beab0: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcd8] "turkishFiles"
    //     0x7beab4: ldr             x16, [x16, #0xcd8]
    // 0x7beab8: StoreField: r3->field_1f = r16
    //     0x7beab8: stur            w16, [x3, #0x1f]
    // 0x7beabc: mov             x2, x0
    // 0x7beac0: r1 = Null
    //     0x7beac0: mov             x1, NULL
    // 0x7beac4: r0 = AllocateArray()
    //     0x7beac4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7beac8: stur            x0, [fp, #-0x38]
    // 0x7beacc: r16 = "say-turkish-5.jpg"
    //     0x7beacc: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd88] "say-turkish-5.jpg"
    //     0x7bead0: ldr             x16, [x16, #0xd88]
    // 0x7bead4: StoreField: r0->field_f = r16
    //     0x7bead4: stur            w16, [x0, #0xf]
    // 0x7bead8: r16 = "say-turkish-5-1.jpg"
    //     0x7bead8: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd90] "say-turkish-5-1.jpg"
    //     0x7beadc: ldr             x16, [x16, #0xd90]
    // 0x7beae0: StoreField: r0->field_13 = r16
    //     0x7beae0: stur            w16, [x0, #0x13]
    // 0x7beae4: r1 = <String>
    //     0x7beae4: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7beae8: r0 = AllocateGrowableArray()
    //     0x7beae8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7beaec: mov             x1, x0
    // 0x7beaf0: ldur            x0, [fp, #-0x38]
    // 0x7beaf4: StoreField: r1->field_f = r0
    //     0x7beaf4: stur            w0, [x1, #0xf]
    // 0x7beaf8: r2 = 4
    //     0x7beaf8: mov             x2, #4
    // 0x7beafc: StoreField: r1->field_b = r2
    //     0x7beafc: stur            w2, [x1, #0xb]
    // 0x7beb00: ldur            x0, [fp, #-0x30]
    // 0x7beb04: StoreField: r0->field_23 = r1
    //     0x7beb04: stur            w1, [x0, #0x23]
    // 0x7beb08: r16 = "isZikirmatik"
    //     0x7beb08: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcf0] "isZikirmatik"
    //     0x7beb0c: ldr             x16, [x16, #0xcf0]
    // 0x7beb10: StoreField: r0->field_27 = r16
    //     0x7beb10: stur            w16, [x0, #0x27]
    // 0x7beb14: r16 = true
    //     0x7beb14: add             x16, NULL, #0x20  ; true
    // 0x7beb18: StoreField: r0->field_2b = r16
    //     0x7beb18: stur            w16, [x0, #0x2b]
    // 0x7beb1c: r16 = <String, dynamic>
    //     0x7beb1c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x7beb20: stp             x0, x16, [SP]
    // 0x7beb24: r0 = Map._fromLiteral()
    //     0x7beb24: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7beb28: r1 = Null
    //     0x7beb28: mov             x1, NULL
    // 0x7beb2c: r2 = 16
    //     0x7beb2c: mov             x2, #0x10
    // 0x7beb30: stur            x0, [fp, #-0x30]
    // 0x7beb34: r0 = AllocateArray()
    //     0x7beb34: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7beb38: stur            x0, [fp, #-0x38]
    // 0x7beb3c: r16 = "title"
    //     0x7beb3c: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x7beb40: StoreField: r0->field_f = r16
    //     0x7beb40: stur            w16, [x0, #0xf]
    // 0x7beb44: r16 = "Sa\'yin 6. Şavtının Duası"
    //     0x7beb44: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bd98] "Sa\'yin 6. Şavtının Duası"
    //     0x7beb48: ldr             x16, [x16, #0xd98]
    // 0x7beb4c: StoreField: r0->field_13 = r16
    //     0x7beb4c: stur            w16, [x0, #0x13]
    // 0x7beb50: r16 = "arabicFiles"
    //     0x7beb50: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcc0] "arabicFiles"
    //     0x7beb54: ldr             x16, [x16, #0xcc0]
    // 0x7beb58: ArrayStore: r0[0] = r16  ; List_4
    //     0x7beb58: stur            w16, [x0, #0x17]
    // 0x7beb5c: r1 = Null
    //     0x7beb5c: mov             x1, NULL
    // 0x7beb60: r2 = 4
    //     0x7beb60: mov             x2, #4
    // 0x7beb64: r0 = AllocateArray()
    //     0x7beb64: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7beb68: stur            x0, [fp, #-0x40]
    // 0x7beb6c: r16 = "say-arabic-6.jpg"
    //     0x7beb6c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bda0] "say-arabic-6.jpg"
    //     0x7beb70: ldr             x16, [x16, #0xda0]
    // 0x7beb74: StoreField: r0->field_f = r16
    //     0x7beb74: stur            w16, [x0, #0xf]
    // 0x7beb78: r16 = "say-arabic-6-1.jpg"
    //     0x7beb78: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bda8] "say-arabic-6-1.jpg"
    //     0x7beb7c: ldr             x16, [x16, #0xda8]
    // 0x7beb80: StoreField: r0->field_13 = r16
    //     0x7beb80: stur            w16, [x0, #0x13]
    // 0x7beb84: r1 = <String>
    //     0x7beb84: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7beb88: r0 = AllocateGrowableArray()
    //     0x7beb88: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7beb8c: mov             x1, x0
    // 0x7beb90: ldur            x0, [fp, #-0x40]
    // 0x7beb94: StoreField: r1->field_f = r0
    //     0x7beb94: stur            w0, [x1, #0xf]
    // 0x7beb98: r0 = 4
    //     0x7beb98: mov             x0, #4
    // 0x7beb9c: StoreField: r1->field_b = r0
    //     0x7beb9c: stur            w0, [x1, #0xb]
    // 0x7beba0: ldur            x3, [fp, #-0x38]
    // 0x7beba4: StoreField: r3->field_1b = r1
    //     0x7beba4: stur            w1, [x3, #0x1b]
    // 0x7beba8: r16 = "turkishFiles"
    //     0x7beba8: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcd8] "turkishFiles"
    //     0x7bebac: ldr             x16, [x16, #0xcd8]
    // 0x7bebb0: StoreField: r3->field_1f = r16
    //     0x7bebb0: stur            w16, [x3, #0x1f]
    // 0x7bebb4: mov             x2, x0
    // 0x7bebb8: r1 = Null
    //     0x7bebb8: mov             x1, NULL
    // 0x7bebbc: r0 = AllocateArray()
    //     0x7bebbc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bebc0: stur            x0, [fp, #-0x40]
    // 0x7bebc4: r16 = "say-turkish-6.jpg"
    //     0x7bebc4: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bdb0] "say-turkish-6.jpg"
    //     0x7bebc8: ldr             x16, [x16, #0xdb0]
    // 0x7bebcc: StoreField: r0->field_f = r16
    //     0x7bebcc: stur            w16, [x0, #0xf]
    // 0x7bebd0: r16 = "say-turkish-6-1.jpg"
    //     0x7bebd0: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bdb8] "say-turkish-6-1.jpg"
    //     0x7bebd4: ldr             x16, [x16, #0xdb8]
    // 0x7bebd8: StoreField: r0->field_13 = r16
    //     0x7bebd8: stur            w16, [x0, #0x13]
    // 0x7bebdc: r1 = <String>
    //     0x7bebdc: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7bebe0: r0 = AllocateGrowableArray()
    //     0x7bebe0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7bebe4: mov             x1, x0
    // 0x7bebe8: ldur            x0, [fp, #-0x40]
    // 0x7bebec: StoreField: r1->field_f = r0
    //     0x7bebec: stur            w0, [x1, #0xf]
    // 0x7bebf0: r2 = 4
    //     0x7bebf0: mov             x2, #4
    // 0x7bebf4: StoreField: r1->field_b = r2
    //     0x7bebf4: stur            w2, [x1, #0xb]
    // 0x7bebf8: ldur            x0, [fp, #-0x38]
    // 0x7bebfc: StoreField: r0->field_23 = r1
    //     0x7bebfc: stur            w1, [x0, #0x23]
    // 0x7bec00: r16 = "isZikirmatik"
    //     0x7bec00: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcf0] "isZikirmatik"
    //     0x7bec04: ldr             x16, [x16, #0xcf0]
    // 0x7bec08: StoreField: r0->field_27 = r16
    //     0x7bec08: stur            w16, [x0, #0x27]
    // 0x7bec0c: r16 = true
    //     0x7bec0c: add             x16, NULL, #0x20  ; true
    // 0x7bec10: StoreField: r0->field_2b = r16
    //     0x7bec10: stur            w16, [x0, #0x2b]
    // 0x7bec14: r16 = <String, dynamic>
    //     0x7bec14: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x7bec18: stp             x0, x16, [SP]
    // 0x7bec1c: r0 = Map._fromLiteral()
    //     0x7bec1c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7bec20: r1 = Null
    //     0x7bec20: mov             x1, NULL
    // 0x7bec24: r2 = 16
    //     0x7bec24: mov             x2, #0x10
    // 0x7bec28: stur            x0, [fp, #-0x38]
    // 0x7bec2c: r0 = AllocateArray()
    //     0x7bec2c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bec30: stur            x0, [fp, #-0x40]
    // 0x7bec34: r16 = "title"
    //     0x7bec34: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x7bec38: StoreField: r0->field_f = r16
    //     0x7bec38: stur            w16, [x0, #0xf]
    // 0x7bec3c: r16 = "Sa\'yin 7. Şavtının Duası"
    //     0x7bec3c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bdc0] "Sa\'yin 7. Şavtının Duası"
    //     0x7bec40: ldr             x16, [x16, #0xdc0]
    // 0x7bec44: StoreField: r0->field_13 = r16
    //     0x7bec44: stur            w16, [x0, #0x13]
    // 0x7bec48: r16 = "arabicFiles"
    //     0x7bec48: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcc0] "arabicFiles"
    //     0x7bec4c: ldr             x16, [x16, #0xcc0]
    // 0x7bec50: ArrayStore: r0[0] = r16  ; List_4
    //     0x7bec50: stur            w16, [x0, #0x17]
    // 0x7bec54: r1 = Null
    //     0x7bec54: mov             x1, NULL
    // 0x7bec58: r2 = 4
    //     0x7bec58: mov             x2, #4
    // 0x7bec5c: r0 = AllocateArray()
    //     0x7bec5c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bec60: stur            x0, [fp, #-0x48]
    // 0x7bec64: r16 = "say-arabic-7.jpg"
    //     0x7bec64: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bdc8] "say-arabic-7.jpg"
    //     0x7bec68: ldr             x16, [x16, #0xdc8]
    // 0x7bec6c: StoreField: r0->field_f = r16
    //     0x7bec6c: stur            w16, [x0, #0xf]
    // 0x7bec70: r16 = "say-arabic-7-1.jpg"
    //     0x7bec70: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bdd0] "say-arabic-7-1.jpg"
    //     0x7bec74: ldr             x16, [x16, #0xdd0]
    // 0x7bec78: StoreField: r0->field_13 = r16
    //     0x7bec78: stur            w16, [x0, #0x13]
    // 0x7bec7c: r1 = <String>
    //     0x7bec7c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7bec80: r0 = AllocateGrowableArray()
    //     0x7bec80: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7bec84: mov             x1, x0
    // 0x7bec88: ldur            x0, [fp, #-0x48]
    // 0x7bec8c: StoreField: r1->field_f = r0
    //     0x7bec8c: stur            w0, [x1, #0xf]
    // 0x7bec90: r0 = 4
    //     0x7bec90: mov             x0, #4
    // 0x7bec94: StoreField: r1->field_b = r0
    //     0x7bec94: stur            w0, [x1, #0xb]
    // 0x7bec98: ldur            x3, [fp, #-0x40]
    // 0x7bec9c: StoreField: r3->field_1b = r1
    //     0x7bec9c: stur            w1, [x3, #0x1b]
    // 0x7beca0: r16 = "turkishFiles"
    //     0x7beca0: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcd8] "turkishFiles"
    //     0x7beca4: ldr             x16, [x16, #0xcd8]
    // 0x7beca8: StoreField: r3->field_1f = r16
    //     0x7beca8: stur            w16, [x3, #0x1f]
    // 0x7becac: mov             x2, x0
    // 0x7becb0: r1 = Null
    //     0x7becb0: mov             x1, NULL
    // 0x7becb4: r0 = AllocateArray()
    //     0x7becb4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7becb8: stur            x0, [fp, #-0x48]
    // 0x7becbc: r16 = "say-turkish-7.jpg"
    //     0x7becbc: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bdd8] "say-turkish-7.jpg"
    //     0x7becc0: ldr             x16, [x16, #0xdd8]
    // 0x7becc4: StoreField: r0->field_f = r16
    //     0x7becc4: stur            w16, [x0, #0xf]
    // 0x7becc8: r16 = "say-turkish-7-1.jpg"
    //     0x7becc8: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bde0] "say-turkish-7-1.jpg"
    //     0x7beccc: ldr             x16, [x16, #0xde0]
    // 0x7becd0: StoreField: r0->field_13 = r16
    //     0x7becd0: stur            w16, [x0, #0x13]
    // 0x7becd4: r1 = <String>
    //     0x7becd4: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7becd8: r0 = AllocateGrowableArray()
    //     0x7becd8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7becdc: mov             x1, x0
    // 0x7bece0: ldur            x0, [fp, #-0x48]
    // 0x7bece4: StoreField: r1->field_f = r0
    //     0x7bece4: stur            w0, [x1, #0xf]
    // 0x7bece8: r2 = 4
    //     0x7bece8: mov             x2, #4
    // 0x7becec: StoreField: r1->field_b = r2
    //     0x7becec: stur            w2, [x1, #0xb]
    // 0x7becf0: ldur            x0, [fp, #-0x40]
    // 0x7becf4: StoreField: r0->field_23 = r1
    //     0x7becf4: stur            w1, [x0, #0x23]
    // 0x7becf8: r16 = "isZikirmatik"
    //     0x7becf8: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcf0] "isZikirmatik"
    //     0x7becfc: ldr             x16, [x16, #0xcf0]
    // 0x7bed00: StoreField: r0->field_27 = r16
    //     0x7bed00: stur            w16, [x0, #0x27]
    // 0x7bed04: r16 = true
    //     0x7bed04: add             x16, NULL, #0x20  ; true
    // 0x7bed08: StoreField: r0->field_2b = r16
    //     0x7bed08: stur            w16, [x0, #0x2b]
    // 0x7bed0c: r16 = <String, dynamic>
    //     0x7bed0c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x7bed10: stp             x0, x16, [SP]
    // 0x7bed14: r0 = Map._fromLiteral()
    //     0x7bed14: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7bed18: r1 = Null
    //     0x7bed18: mov             x1, NULL
    // 0x7bed1c: r2 = 12
    //     0x7bed1c: mov             x2, #0xc
    // 0x7bed20: stur            x0, [fp, #-0x40]
    // 0x7bed24: r0 = AllocateArray()
    //     0x7bed24: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bed28: stur            x0, [fp, #-0x48]
    // 0x7bed2c: r16 = "title"
    //     0x7bed2c: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x7bed30: StoreField: r0->field_f = r16
    //     0x7bed30: stur            w16, [x0, #0xf]
    // 0x7bed34: r16 = "Sa\'y Sonunda Merve\'de Dua"
    //     0x7bed34: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bde8] "Sa\'y Sonunda Merve\'de Dua"
    //     0x7bed38: ldr             x16, [x16, #0xde8]
    // 0x7bed3c: StoreField: r0->field_13 = r16
    //     0x7bed3c: stur            w16, [x0, #0x13]
    // 0x7bed40: r16 = "files"
    //     0x7bed40: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bdf0] "files"
    //     0x7bed44: ldr             x16, [x16, #0xdf0]
    // 0x7bed48: ArrayStore: r0[0] = r16  ; List_4
    //     0x7bed48: stur            w16, [x0, #0x17]
    // 0x7bed4c: r1 = Null
    //     0x7bed4c: mov             x1, NULL
    // 0x7bed50: r2 = 4
    //     0x7bed50: mov             x2, #4
    // 0x7bed54: r0 = AllocateArray()
    //     0x7bed54: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bed58: stur            x0, [fp, #-0x50]
    // 0x7bed5c: r16 = "say-bitis-1.jpg"
    //     0x7bed5c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bdf8] "say-bitis-1.jpg"
    //     0x7bed60: ldr             x16, [x16, #0xdf8]
    // 0x7bed64: StoreField: r0->field_f = r16
    //     0x7bed64: stur            w16, [x0, #0xf]
    // 0x7bed68: r16 = "say-bitis-2.jpg"
    //     0x7bed68: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1be00] "say-bitis-2.jpg"
    //     0x7bed6c: ldr             x16, [x16, #0xe00]
    // 0x7bed70: StoreField: r0->field_13 = r16
    //     0x7bed70: stur            w16, [x0, #0x13]
    // 0x7bed74: r1 = <String>
    //     0x7bed74: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7bed78: r0 = AllocateGrowableArray()
    //     0x7bed78: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7bed7c: mov             x1, x0
    // 0x7bed80: ldur            x0, [fp, #-0x50]
    // 0x7bed84: StoreField: r1->field_f = r0
    //     0x7bed84: stur            w0, [x1, #0xf]
    // 0x7bed88: r0 = 4
    //     0x7bed88: mov             x0, #4
    // 0x7bed8c: StoreField: r1->field_b = r0
    //     0x7bed8c: stur            w0, [x1, #0xb]
    // 0x7bed90: ldur            x0, [fp, #-0x48]
    // 0x7bed94: StoreField: r0->field_1b = r1
    //     0x7bed94: stur            w1, [x0, #0x1b]
    // 0x7bed98: r16 = "isZikirmatik"
    //     0x7bed98: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcf0] "isZikirmatik"
    //     0x7bed9c: ldr             x16, [x16, #0xcf0]
    // 0x7beda0: StoreField: r0->field_1f = r16
    //     0x7beda0: stur            w16, [x0, #0x1f]
    // 0x7beda4: r16 = false
    //     0x7beda4: add             x16, NULL, #0x30  ; false
    // 0x7beda8: StoreField: r0->field_23 = r16
    //     0x7beda8: stur            w16, [x0, #0x23]
    // 0x7bedac: r16 = <String, dynamic>
    //     0x7bedac: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x7bedb0: stp             x0, x16, [SP]
    // 0x7bedb4: r0 = Map._fromLiteral()
    //     0x7bedb4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7bedb8: r1 = Null
    //     0x7bedb8: mov             x1, NULL
    // 0x7bedbc: r2 = 16
    //     0x7bedbc: mov             x2, #0x10
    // 0x7bedc0: stur            x0, [fp, #-0x48]
    // 0x7bedc4: r0 = AllocateArray()
    //     0x7bedc4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bedc8: mov             x2, x0
    // 0x7bedcc: ldur            x0, [fp, #-0x10]
    // 0x7bedd0: stur            x2, [fp, #-0x50]
    // 0x7bedd4: StoreField: r2->field_f = r0
    //     0x7bedd4: stur            w0, [x2, #0xf]
    // 0x7bedd8: ldur            x0, [fp, #-0x18]
    // 0x7beddc: StoreField: r2->field_13 = r0
    //     0x7beddc: stur            w0, [x2, #0x13]
    // 0x7bede0: ldur            x0, [fp, #-0x20]
    // 0x7bede4: ArrayStore: r2[0] = r0  ; List_4
    //     0x7bede4: stur            w0, [x2, #0x17]
    // 0x7bede8: ldur            x0, [fp, #-0x28]
    // 0x7bedec: StoreField: r2->field_1b = r0
    //     0x7bedec: stur            w0, [x2, #0x1b]
    // 0x7bedf0: ldur            x0, [fp, #-0x30]
    // 0x7bedf4: StoreField: r2->field_1f = r0
    //     0x7bedf4: stur            w0, [x2, #0x1f]
    // 0x7bedf8: ldur            x0, [fp, #-0x38]
    // 0x7bedfc: StoreField: r2->field_23 = r0
    //     0x7bedfc: stur            w0, [x2, #0x23]
    // 0x7bee00: ldur            x0, [fp, #-0x40]
    // 0x7bee04: StoreField: r2->field_27 = r0
    //     0x7bee04: stur            w0, [x2, #0x27]
    // 0x7bee08: ldur            x0, [fp, #-0x48]
    // 0x7bee0c: StoreField: r2->field_2b = r0
    //     0x7bee0c: stur            w0, [x2, #0x2b]
    // 0x7bee10: r1 = <Map<String, dynamic>>
    //     0x7bee10: ldr             x1, [PP, #0x3918]  ; [pp+0x3918] TypeArguments: <Map<String, dynamic>>
    // 0x7bee14: r0 = AllocateGrowableArray()
    //     0x7bee14: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7bee18: ldur            x1, [fp, #-0x50]
    // 0x7bee1c: StoreField: r0->field_f = r1
    //     0x7bee1c: stur            w1, [x0, #0xf]
    // 0x7bee20: r1 = 16
    //     0x7bee20: mov             x1, #0x10
    // 0x7bee24: StoreField: r0->field_b = r1
    //     0x7bee24: stur            w1, [x0, #0xb]
    // 0x7bee28: ldur            x1, [fp, #-8]
    // 0x7bee2c: StoreField: r1->field_3b = r0
    //     0x7bee2c: stur            w0, [x1, #0x3b]
    //     0x7bee30: ldurb           w16, [x1, #-1]
    //     0x7bee34: ldurb           w17, [x0, #-1]
    //     0x7bee38: and             x16, x17, x16, lsr #2
    //     0x7bee3c: tst             x16, HEAP, lsr #32
    //     0x7bee40: b.eq            #0x7bee48
    //     0x7bee44: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7bee48: r0 = Null
    //     0x7bee48: mov             x0, NULL
    // 0x7bee4c: LeaveFrame
    //     0x7bee4c: mov             SP, fp
    //     0x7bee50: ldp             fp, lr, [SP], #0x10
    // 0x7bee54: ret
    //     0x7bee54: ret             
    // 0x7bee58: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bee58: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bee5c: b               #0x7be5b4
  }
}

// class id: 3202, size: 0xc, field offset: 0xc
//   const constructor, 
class SayDualariPage extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7be544, size: 0x48
    // 0x7be544: EnterFrame
    //     0x7be544: stp             fp, lr, [SP, #-0x10]!
    //     0x7be548: mov             fp, SP
    // 0x7be54c: AllocStack(0x8)
    //     0x7be54c: sub             SP, SP, #8
    // 0x7be550: CheckStackOverflow
    //     0x7be550: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7be554: cmp             SP, x16
    //     0x7be558: b.ls            #0x7be584
    // 0x7be55c: r1 = <SayDualariPage>
    //     0x7be55c: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bcb0] TypeArguments: <SayDualariPage>
    //     0x7be560: ldr             x1, [x1, #0xcb0]
    // 0x7be564: r0 = _SayDualariPageState()
    //     0x7be564: bl              #0x7bee60  ; Allocate_SayDualariPageStateStub -> _SayDualariPageState (size=0x40)
    // 0x7be568: mov             x1, x0
    // 0x7be56c: stur            x0, [fp, #-8]
    // 0x7be570: r0 = _SayDualariPageState()
    //     0x7be570: bl              #0x7be58c  ; [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::_SayDualariPageState
    // 0x7be574: ldur            x0, [fp, #-8]
    // 0x7be578: LeaveFrame
    //     0x7be578: mov             SP, fp
    //     0x7be57c: ldp             fp, lr, [SP], #0x10
    // 0x7be580: ret
    //     0x7be580: ret             
    // 0x7be584: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7be584: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7be588: b               #0x7be55c
  }
}

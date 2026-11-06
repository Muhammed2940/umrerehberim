// lib: , url: package:umrem_demo/features/dualar/screens/savt_dualari_page.dart

// class id: 1049576, size: 0x8
class :: {
}

// class id: 2476, size: 0x40, field offset: 0x14
class _SavtDualariPageState extends State<dynamic> {

  late final TavafDualariDownloadProvider _downloadController; // offset: 0x1c

  _ initState(/* No info */) {
    // ** addr: 0x5e519c, size: 0x70
    // 0x5e519c: EnterFrame
    //     0x5e519c: stp             fp, lr, [SP, #-0x10]!
    //     0x5e51a0: mov             fp, SP
    // 0x5e51a4: AllocStack(0x10)
    //     0x5e51a4: sub             SP, SP, #0x10
    // 0x5e51a8: SetupParameters(_SavtDualariPageState this /* r1 => r1, fp-0x8 */)
    //     0x5e51a8: stur            x1, [fp, #-8]
    // 0x5e51ac: CheckStackOverflow
    //     0x5e51ac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e51b0: cmp             SP, x16
    //     0x5e51b4: b.ls            #0x5e5204
    // 0x5e51b8: r1 = 1
    //     0x5e51b8: mov             x1, #1
    // 0x5e51bc: r0 = AllocateContext()
    //     0x5e51bc: bl              #0x927010  ; AllocateContextStub
    // 0x5e51c0: mov             x1, x0
    // 0x5e51c4: ldur            x0, [fp, #-8]
    // 0x5e51c8: StoreField: r1->field_f = r0
    //     0x5e51c8: stur            w0, [x1, #0xf]
    // 0x5e51cc: LoadField: r3 = r0->field_13
    //     0x5e51cc: ldur            w3, [x0, #0x13]
    // 0x5e51d0: DecompressPointer r3
    //     0x5e51d0: add             x3, x3, HEAP, lsl #32
    // 0x5e51d4: mov             x2, x1
    // 0x5e51d8: stur            x3, [fp, #-0x10]
    // 0x5e51dc: r1 = Function '<anonymous closure>':.
    //     0x5e51dc: add             x1, PP, #0x20, lsl #12  ; [pp+0x201c8] AnonymousClosure: (0x5e522c), in [package:umrem_demo/features/dualar/screens/savt_dualari_page.dart] _SavtDualariPageState::initState (0x5e519c)
    //     0x5e51e0: ldr             x1, [x1, #0x1c8]
    // 0x5e51e4: r0 = AllocateClosure()
    //     0x5e51e4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e51e8: ldur            x1, [fp, #-0x10]
    // 0x5e51ec: mov             x2, x0
    // 0x5e51f0: r0 = addListener()
    //     0x5e51f0: bl              #0x552d08  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::addListener
    // 0x5e51f4: r0 = Null
    //     0x5e51f4: mov             x0, NULL
    // 0x5e51f8: LeaveFrame
    //     0x5e51f8: mov             SP, fp
    //     0x5e51fc: ldp             fp, lr, [SP], #0x10
    // 0x5e5200: ret
    //     0x5e5200: ret             
    // 0x5e5204: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e5204: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e5208: b               #0x5e51b8
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5e522c, size: 0x1c8
    // 0x5e522c: EnterFrame
    //     0x5e522c: stp             fp, lr, [SP, #-0x10]!
    //     0x5e5230: mov             fp, SP
    // 0x5e5234: AllocStack(0x18)
    //     0x5e5234: sub             SP, SP, #0x18
    // 0x5e5238: SetupParameters([dynamic _ /* r0 */])
    //     0x5e5238: ldr             x0, [fp, #0x10]
    //     0x5e523c: ldur            w1, [x0, #0x17]
    //     0x5e5240: add             x1, x1, HEAP, lsl #32
    //     0x5e5244: stur            x1, [fp, #-8]
    // 0x5e5248: CheckStackOverflow
    //     0x5e5248: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e524c: cmp             SP, x16
    //     0x5e5250: b.ls            #0x5e53d0
    // 0x5e5254: r1 = 1
    //     0x5e5254: mov             x1, #1
    // 0x5e5258: r0 = AllocateContext()
    //     0x5e5258: bl              #0x927010  ; AllocateContextStub
    // 0x5e525c: mov             x2, x0
    // 0x5e5260: ldur            x0, [fp, #-8]
    // 0x5e5264: stur            x2, [fp, #-0x10]
    // 0x5e5268: StoreField: r2->field_b = r0
    //     0x5e5268: stur            w0, [x2, #0xb]
    // 0x5e526c: LoadField: r1 = r0->field_f
    //     0x5e526c: ldur            w1, [x0, #0xf]
    // 0x5e5270: DecompressPointer r1
    //     0x5e5270: add             x1, x1, HEAP, lsl #32
    // 0x5e5274: LoadField: r3 = r1->field_13
    //     0x5e5274: ldur            w3, [x1, #0x13]
    // 0x5e5278: DecompressPointer r3
    //     0x5e5278: add             x3, x3, HEAP, lsl #32
    // 0x5e527c: LoadField: r1 = r3->field_3b
    //     0x5e527c: ldur            w1, [x3, #0x3b]
    // 0x5e5280: DecompressPointer r1
    //     0x5e5280: add             x1, x1, HEAP, lsl #32
    // 0x5e5284: r0 = single()
    //     0x5e5284: bl              #0x3e8890  ; [dart:core] _GrowableList::single
    // 0x5e5288: mov             x3, x0
    // 0x5e528c: r2 = Null
    //     0x5e528c: mov             x2, NULL
    // 0x5e5290: r1 = Null
    //     0x5e5290: mov             x1, NULL
    // 0x5e5294: stur            x3, [fp, #-0x18]
    // 0x5e5298: r4 = 60
    //     0x5e5298: mov             x4, #0x3c
    // 0x5e529c: branchIfSmi(r0, 0x5e52a8)
    //     0x5e529c: tbz             w0, #0, #0x5e52a8
    // 0x5e52a0: r4 = LoadClassIdInstr(r0)
    //     0x5e52a0: ldur            x4, [x0, #-1]
    //     0x5e52a4: ubfx            x4, x4, #0xc, #0x14
    // 0x5e52a8: cmp             x4, #0xf38
    // 0x5e52ac: b.eq            #0x5e52c4
    // 0x5e52b0: r8 = _PagePosition
    //     0x5e52b0: add             x8, PP, #0x17, lsl #12  ; [pp+0x17e08] Type: _PagePosition
    //     0x5e52b4: ldr             x8, [x8, #0xe08]
    // 0x5e52b8: r3 = Null
    //     0x5e52b8: add             x3, PP, #0x20, lsl #12  ; [pp+0x201d0] Null
    //     0x5e52bc: ldr             x3, [x3, #0x1d0]
    // 0x5e52c0: r0 = DefaultTypeTest()
    //     0x5e52c0: bl              #0x925f98  ; DefaultTypeTestStub
    // 0x5e52c4: ldur            x1, [fp, #-0x18]
    // 0x5e52c8: r0 = page()
    //     0x5e52c8: bl              #0x5e5474  ; [package:flutter/src/widgets/page_view.dart] _PagePosition::page
    // 0x5e52cc: cmp             w0, NULL
    // 0x5e52d0: b.ne            #0x5e52dc
    // 0x5e52d4: r0 = Null
    //     0x5e52d4: mov             x0, NULL
    // 0x5e52d8: b               #0x5e5330
    // 0x5e52dc: LoadField: d0 = r0->field_7
    //     0x5e52dc: ldur            d0, [x0, #7]
    // 0x5e52e0: stp             fp, lr, [SP, #-0x10]!
    // 0x5e52e4: mov             fp, SP
    // 0x5e52e8: CallRuntime_LibcRound(double) -> double
    //     0x5e52e8: and             SP, SP, #0xfffffffffffffff0
    //     0x5e52ec: mov             sp, SP
    //     0x5e52f0: ldr             x16, [THR, #0x758]  ; THR::LibcRound
    //     0x5e52f4: str             x16, [THR, #0x6b0]  ; THR::vm_tag
    //     0x5e52f8: blr             x16
    //     0x5e52fc: mov             x16, #8
    //     0x5e5300: str             x16, [THR, #0x6b0]  ; THR::vm_tag
    //     0x5e5304: ldr             x16, [THR, #0x678]  ; THR::saved_stack_limit
    //     0x5e5308: sub             sp, x16, #1, lsl #12
    //     0x5e530c: mov             SP, fp
    //     0x5e5310: ldp             fp, lr, [SP], #0x10
    // 0x5e5314: fcmp            d0, d0
    // 0x5e5318: b.vs            #0x5e53d8
    // 0x5e531c: fcvtzs          x0, d0
    // 0x5e5320: asr             x16, x0, #0x1e
    // 0x5e5324: cmp             x16, x0, asr #63
    // 0x5e5328: b.ne            #0x5e53d8
    // 0x5e532c: lsl             x0, x0, #1
    // 0x5e5330: cmp             w0, NULL
    // 0x5e5334: b.ne            #0x5e5340
    // 0x5e5338: r4 = 0
    //     0x5e5338: mov             x4, #0
    // 0x5e533c: b               #0x5e5350
    // 0x5e5340: r1 = LoadInt32Instr(r0)
    //     0x5e5340: sbfx            x1, x0, #1, #0x1f
    //     0x5e5344: tbz             w0, #0, #0x5e534c
    //     0x5e5348: ldur            x1, [x0, #7]
    // 0x5e534c: mov             x4, x1
    // 0x5e5350: ldur            x2, [fp, #-8]
    // 0x5e5354: ldur            x3, [fp, #-0x10]
    // 0x5e5358: r0 = BoxInt64Instr(r4)
    //     0x5e5358: sbfiz           x0, x4, #1, #0x1f
    //     0x5e535c: cmp             x4, x0, asr #1
    //     0x5e5360: b.eq            #0x5e536c
    //     0x5e5364: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x5e5368: stur            x4, [x0, #7]
    // 0x5e536c: StoreField: r3->field_f = r0
    //     0x5e536c: stur            w0, [x3, #0xf]
    //     0x5e5370: tbz             w0, #0, #0x5e538c
    //     0x5e5374: ldurb           w16, [x3, #-1]
    //     0x5e5378: ldurb           w17, [x0, #-1]
    //     0x5e537c: and             x16, x17, x16, lsr #2
    //     0x5e5380: tst             x16, HEAP, lsr #32
    //     0x5e5384: b.eq            #0x5e538c
    //     0x5e5388: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5e538c: LoadField: r0 = r2->field_f
    //     0x5e538c: ldur            w0, [x2, #0xf]
    // 0x5e5390: DecompressPointer r0
    //     0x5e5390: add             x0, x0, HEAP, lsl #32
    // 0x5e5394: stur            x0, [fp, #-0x18]
    // 0x5e5398: LoadField: r1 = r0->field_2f
    //     0x5e5398: ldur            x1, [x0, #0x2f]
    // 0x5e539c: cmp             x4, x1
    // 0x5e53a0: b.eq            #0x5e53c0
    // 0x5e53a4: mov             x2, x3
    // 0x5e53a8: r1 = Function '<anonymous closure>':.
    //     0x5e53a8: add             x1, PP, #0x20, lsl #12  ; [pp+0x201e0] AnonymousClosure: (0x5e55bc), in [package:umrem_demo/features/dualar/screens/savt_dualari_page.dart] _SavtDualariPageState::initState (0x5e519c)
    //     0x5e53ac: ldr             x1, [x1, #0x1e0]
    // 0x5e53b0: r0 = AllocateClosure()
    //     0x5e53b0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e53b4: ldur            x1, [fp, #-0x18]
    // 0x5e53b8: mov             x2, x0
    // 0x5e53bc: r0 = setState()
    //     0x5e53bc: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x5e53c0: r0 = Null
    //     0x5e53c0: mov             x0, NULL
    // 0x5e53c4: LeaveFrame
    //     0x5e53c4: mov             SP, fp
    //     0x5e53c8: ldp             fp, lr, [SP], #0x10
    // 0x5e53cc: ret
    //     0x5e53cc: ret             
    // 0x5e53d0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e53d0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e53d4: b               #0x5e5254
    // 0x5e53d8: SaveReg d0
    //     0x5e53d8: str             q0, [SP, #-0x10]!
    // 0x5e53dc: r0 = 76
    //     0x5e53dc: mov             x0, #0x4c
    // 0x5e53e0: r30 = DoubleToIntegerStub
    //     0x5e53e0: ldr             lr, [PP, #0x1f38]  ; [pp+0x1f38] Stub: DoubleToInteger (0x3c184c)
    // 0x5e53e4: LoadField: r30 = r30->field_7
    //     0x5e53e4: ldur            lr, [lr, #7]
    // 0x5e53e8: blr             lr
    // 0x5e53ec: RestoreReg d0
    //     0x5e53ec: ldr             q0, [SP], #0x10
    // 0x5e53f0: b               #0x5e5330
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5e55bc, size: 0x3c
    // 0x5e55bc: ldr             x1, [SP]
    // 0x5e55c0: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x5e55c0: ldur            w2, [x1, #0x17]
    // 0x5e55c4: DecompressPointer r2
    //     0x5e55c4: add             x2, x2, HEAP, lsl #32
    // 0x5e55c8: LoadField: r1 = r2->field_b
    //     0x5e55c8: ldur            w1, [x2, #0xb]
    // 0x5e55cc: DecompressPointer r1
    //     0x5e55cc: add             x1, x1, HEAP, lsl #32
    // 0x5e55d0: LoadField: r3 = r1->field_f
    //     0x5e55d0: ldur            w3, [x1, #0xf]
    // 0x5e55d4: DecompressPointer r3
    //     0x5e55d4: add             x3, x3, HEAP, lsl #32
    // 0x5e55d8: LoadField: r1 = r2->field_f
    //     0x5e55d8: ldur            w1, [x2, #0xf]
    // 0x5e55dc: DecompressPointer r1
    //     0x5e55dc: add             x1, x1, HEAP, lsl #32
    // 0x5e55e0: r2 = LoadInt32Instr(r1)
    //     0x5e55e0: sbfx            x2, x1, #1, #0x1f
    //     0x5e55e4: tbz             w1, #0, #0x5e55ec
    //     0x5e55e8: ldur            x2, [x1, #7]
    // 0x5e55ec: StoreField: r3->field_2f = r2
    //     0x5e55ec: stur            x2, [x3, #0x2f]
    // 0x5e55f0: r0 = Null
    //     0x5e55f0: mov             x0, NULL
    // 0x5e55f4: ret
    //     0x5e55f4: ret             
  }
  _ didChangeDependencies(/* No info */) {
    // ** addr: 0x63a424, size: 0xb8
    // 0x63a424: EnterFrame
    //     0x63a424: stp             fp, lr, [SP, #-0x10]!
    //     0x63a428: mov             fp, SP
    // 0x63a42c: AllocStack(0x18)
    //     0x63a42c: sub             SP, SP, #0x18
    // 0x63a430: SetupParameters(_SavtDualariPageState this /* r1 => r1, fp-0x8 */)
    //     0x63a430: stur            x1, [fp, #-8]
    // 0x63a434: CheckStackOverflow
    //     0x63a434: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x63a438: cmp             SP, x16
    //     0x63a43c: b.ls            #0x63a4d0
    // 0x63a440: LoadField: r0 = r1->field_37
    //     0x63a440: ldur            w0, [x1, #0x37]
    // 0x63a444: DecompressPointer r0
    //     0x63a444: add             x0, x0, HEAP, lsl #32
    // 0x63a448: tbz             w0, #4, #0x63a4ac
    // 0x63a44c: LoadField: r0 = r1->field_f
    //     0x63a44c: ldur            w0, [x1, #0xf]
    // 0x63a450: DecompressPointer r0
    //     0x63a450: add             x0, x0, HEAP, lsl #32
    // 0x63a454: cmp             w0, NULL
    // 0x63a458: b.eq            #0x63a4d8
    // 0x63a45c: r16 = <TavafDualariDownloadProvider>
    //     0x63a45c: add             x16, PP, #0x10, lsl #12  ; [pp+0x10be0] TypeArguments: <TavafDualariDownloadProvider>
    //     0x63a460: ldr             x16, [x16, #0xbe0]
    // 0x63a464: stp             x0, x16, [SP]
    // 0x63a468: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x63a468: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x63a46c: r0 = ReadContext.read()
    //     0x63a46c: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x63a470: ldur            x1, [fp, #-8]
    // 0x63a474: LoadField: r2 = r1->field_1b
    //     0x63a474: ldur            w2, [x1, #0x1b]
    // 0x63a478: DecompressPointer r2
    //     0x63a478: add             x2, x2, HEAP, lsl #32
    // 0x63a47c: r16 = Sentinel
    //     0x63a47c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x63a480: cmp             w2, w16
    // 0x63a484: b.ne            #0x63a4bc
    // 0x63a488: r2 = true
    //     0x63a488: add             x2, NULL, #0x20  ; true
    // 0x63a48c: StoreField: r1->field_1b = r0
    //     0x63a48c: stur            w0, [x1, #0x1b]
    //     0x63a490: ldurb           w16, [x1, #-1]
    //     0x63a494: ldurb           w17, [x0, #-1]
    //     0x63a498: and             x16, x17, x16, lsr #2
    //     0x63a49c: tst             x16, HEAP, lsr #32
    //     0x63a4a0: b.eq            #0x63a4a8
    //     0x63a4a4: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x63a4a8: StoreField: r1->field_37 = r2
    //     0x63a4a8: stur            w2, [x1, #0x37]
    // 0x63a4ac: r0 = Null
    //     0x63a4ac: mov             x0, NULL
    // 0x63a4b0: LeaveFrame
    //     0x63a4b0: mov             SP, fp
    //     0x63a4b4: ldp             fp, lr, [SP], #0x10
    // 0x63a4b8: ret
    //     0x63a4b8: ret             
    // 0x63a4bc: r16 = "_downloadController@1022035749"
    //     0x63a4bc: add             x16, PP, #0x20, lsl #12  ; [pp+0x201c0] "_downloadController@1022035749"
    //     0x63a4c0: ldr             x16, [x16, #0x1c0]
    // 0x63a4c4: str             x16, [SP]
    // 0x63a4c8: r0 = _throwFieldAlreadyInitialized()
    //     0x63a4c8: bl              #0x3e637c  ; [dart:_internal] LateError::_throwFieldAlreadyInitialized
    // 0x63a4cc: brk             #0
    // 0x63a4d0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x63a4d0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x63a4d4: b               #0x63a440
    // 0x63a4d8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x63a4d8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ build(/* No info */) {
    // ** addr: 0x7204cc, size: 0x874
    // 0x7204cc: EnterFrame
    //     0x7204cc: stp             fp, lr, [SP, #-0x10]!
    //     0x7204d0: mov             fp, SP
    // 0x7204d4: AllocStack(0x80)
    //     0x7204d4: sub             SP, SP, #0x80
    // 0x7204d8: SetupParameters(_SavtDualariPageState this /* r1 => r0, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x7204d8: mov             x0, x1
    //     0x7204dc: stur            x1, [fp, #-8]
    //     0x7204e0: stur            x2, [fp, #-0x10]
    // 0x7204e4: CheckStackOverflow
    //     0x7204e4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7204e8: cmp             SP, x16
    //     0x7204ec: b.ls            #0x720d30
    // 0x7204f0: r1 = 2
    //     0x7204f0: mov             x1, #2
    // 0x7204f4: r0 = AllocateContext()
    //     0x7204f4: bl              #0x927010  ; AllocateContextStub
    // 0x7204f8: mov             x3, x0
    // 0x7204fc: ldur            x0, [fp, #-8]
    // 0x720500: stur            x3, [fp, #-0x18]
    // 0x720504: StoreField: r3->field_f = r0
    //     0x720504: stur            w0, [x3, #0xf]
    // 0x720508: ldur            x1, [fp, #-0x10]
    // 0x72050c: StoreField: r3->field_13 = r1
    //     0x72050c: stur            w1, [x3, #0x13]
    // 0x720510: r1 = _ConstMap len:12
    //     0x720510: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x720514: r2 = 200
    //     0x720514: mov             x2, #0xc8
    // 0x720518: r0 = []()
    //     0x720518: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x72051c: stur            x0, [fp, #-0x10]
    // 0x720520: cmp             w0, NULL
    // 0x720524: b.eq            #0x720d38
    // 0x720528: r0 = Icon()
    //     0x720528: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x72052c: mov             x3, x0
    // 0x720530: r0 = Instance_IconData
    //     0x720530: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fea8] Obj!IconData@a09c21
    //     0x720534: ldr             x0, [x0, #0xea8]
    // 0x720538: stur            x3, [fp, #-0x20]
    // 0x72053c: StoreField: r3->field_b = r0
    //     0x72053c: stur            w0, [x3, #0xb]
    // 0x720540: r0 = Instance_Color
    //     0x720540: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x720544: ldr             x0, [x0, #0xb88]
    // 0x720548: StoreField: r3->field_23 = r0
    //     0x720548: stur            w0, [x3, #0x23]
    // 0x72054c: ldur            x2, [fp, #-0x18]
    // 0x720550: r1 = Function '<anonymous closure>':.
    //     0x720550: add             x1, PP, #0x20, lsl #12  ; [pp+0x200b8] AnonymousClosure: (0x7233f8), in [package:umrem_demo/features/info_screen/screens/technical_support_screen.dart] TechnicalSupportScreen::build (0x7eef84)
    //     0x720554: ldr             x1, [x1, #0xb8]
    // 0x720558: r0 = AllocateClosure()
    //     0x720558: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72055c: stur            x0, [fp, #-0x28]
    // 0x720560: r0 = IconButton()
    //     0x720560: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x720564: mov             x1, x0
    // 0x720568: ldur            x0, [fp, #-0x28]
    // 0x72056c: stur            x1, [fp, #-0x30]
    // 0x720570: StoreField: r1->field_3b = r0
    //     0x720570: stur            w0, [x1, #0x3b]
    // 0x720574: r0 = false
    //     0x720574: add             x0, NULL, #0x30  ; false
    // 0x720578: StoreField: r1->field_4f = r0
    //     0x720578: stur            w0, [x1, #0x4f]
    // 0x72057c: ldur            x2, [fp, #-0x20]
    // 0x720580: StoreField: r1->field_1f = r2
    //     0x720580: stur            w2, [x1, #0x1f]
    // 0x720584: r2 = Instance__IconButtonVariant
    //     0x720584: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x720588: ldr             x2, [x2, #0x1b8]
    // 0x72058c: StoreField: r1->field_6f = r2
    //     0x72058c: stur            w2, [x1, #0x6f]
    // 0x720590: r0 = TextStyle()
    //     0x720590: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x720594: mov             x1, x0
    // 0x720598: r0 = true
    //     0x720598: add             x0, NULL, #0x20  ; true
    // 0x72059c: stur            x1, [fp, #-0x20]
    // 0x7205a0: StoreField: r1->field_7 = r0
    //     0x7205a0: stur            w0, [x1, #7]
    // 0x7205a4: r2 = Instance_Color
    //     0x7205a4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7205a8: ldr             x2, [x2, #0xb88]
    // 0x7205ac: StoreField: r1->field_b = r2
    //     0x7205ac: stur            w2, [x1, #0xb]
    // 0x7205b0: r3 = 20.000000
    //     0x7205b0: add             x3, PP, #0xc, lsl #12  ; [pp+0xce48] 20
    //     0x7205b4: ldr             x3, [x3, #0xe48]
    // 0x7205b8: StoreField: r1->field_1f = r3
    //     0x7205b8: stur            w3, [x1, #0x1f]
    // 0x7205bc: r3 = Instance_FontWeight
    //     0x7205bc: add             x3, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x7205c0: ldr             x3, [x3, #0x1d0]
    // 0x7205c4: StoreField: r1->field_23 = r3
    //     0x7205c4: stur            w3, [x1, #0x23]
    // 0x7205c8: r0 = Text()
    //     0x7205c8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7205cc: mov             x3, x0
    // 0x7205d0: r0 = "Şavt Duaları (Tavaf)"
    //     0x7205d0: add             x0, PP, #0x20, lsl #12  ; [pp+0x200c0] "Şavt Duaları (Tavaf)"
    //     0x7205d4: ldr             x0, [x0, #0xc0]
    // 0x7205d8: stur            x3, [fp, #-0x28]
    // 0x7205dc: StoreField: r3->field_b = r0
    //     0x7205dc: stur            w0, [x3, #0xb]
    // 0x7205e0: ldur            x0, [fp, #-0x20]
    // 0x7205e4: StoreField: r3->field_13 = r0
    //     0x7205e4: stur            w0, [x3, #0x13]
    // 0x7205e8: ldur            x2, [fp, #-0x18]
    // 0x7205ec: r1 = Function '<anonymous closure>':.
    //     0x7205ec: add             x1, PP, #0x20, lsl #12  ; [pp+0x200c8] AnonymousClosure: (0x722fd0), in [package:umrem_demo/features/dualar/screens/savt_dualari_page.dart] _SavtDualariPageState::build (0x7204cc)
    //     0x7205f0: ldr             x1, [x1, #0xc8]
    // 0x7205f4: r0 = AllocateClosure()
    //     0x7205f4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7205f8: stur            x0, [fp, #-0x20]
    // 0x7205fc: r0 = Builder()
    //     0x7205fc: bl              #0x4847d8  ; AllocateBuilderStub -> Builder (size=0x10)
    // 0x720600: mov             x3, x0
    // 0x720604: ldur            x0, [fp, #-0x20]
    // 0x720608: stur            x3, [fp, #-0x38]
    // 0x72060c: StoreField: r3->field_b = r0
    //     0x72060c: stur            w0, [x3, #0xb]
    // 0x720610: r1 = Null
    //     0x720610: mov             x1, NULL
    // 0x720614: r2 = 4
    //     0x720614: mov             x2, #4
    // 0x720618: r0 = AllocateArray()
    //     0x720618: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72061c: mov             x2, x0
    // 0x720620: ldur            x0, [fp, #-0x38]
    // 0x720624: stur            x2, [fp, #-0x20]
    // 0x720628: StoreField: r2->field_f = r0
    //     0x720628: stur            w0, [x2, #0xf]
    // 0x72062c: r16 = Instance_SizedBox
    //     0x72062c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x720630: ldr             x16, [x16, #0x368]
    // 0x720634: StoreField: r2->field_13 = r16
    //     0x720634: stur            w16, [x2, #0x13]
    // 0x720638: r1 = <Widget>
    //     0x720638: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72063c: r0 = AllocateGrowableArray()
    //     0x72063c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x720640: mov             x1, x0
    // 0x720644: ldur            x0, [fp, #-0x20]
    // 0x720648: stur            x1, [fp, #-0x38]
    // 0x72064c: StoreField: r1->field_f = r0
    //     0x72064c: stur            w0, [x1, #0xf]
    // 0x720650: r2 = 4
    //     0x720650: mov             x2, #4
    // 0x720654: StoreField: r1->field_b = r2
    //     0x720654: stur            w2, [x1, #0xb]
    // 0x720658: r0 = AppBar()
    //     0x720658: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x72065c: stur            x0, [fp, #-0x20]
    // 0x720660: r16 = 0.000000
    //     0x720660: ldr             x16, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x720664: r30 = Instance_Color
    //     0x720664: add             lr, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x720668: ldr             lr, [lr, #0x860]
    // 0x72066c: stp             lr, x16, [SP, #0x18]
    // 0x720670: ldur            x16, [fp, #-0x30]
    // 0x720674: r30 = false
    //     0x720674: add             lr, NULL, #0x30  ; false
    // 0x720678: stp             lr, x16, [SP, #8]
    // 0x72067c: ldur            x16, [fp, #-0x38]
    // 0x720680: str             x16, [SP]
    // 0x720684: mov             x1, x0
    // 0x720688: ldur            x2, [fp, #-0x28]
    // 0x72068c: r4 = const [0, 0x7, 0x5, 0x2, actions, 0x6, backgroundColor, 0x3, centerTitle, 0x5, elevation, 0x2, leading, 0x4, null]
    //     0x72068c: add             x4, PP, #0x1f, lsl #12  ; [pp+0x1fec8] List(15) [0, 0x7, 0x5, 0x2, "actions", 0x6, "backgroundColor", 0x3, "centerTitle", 0x5, "elevation", 0x2, "leading", 0x4, Null]
    //     0x720690: ldr             x4, [x4, #0xec8]
    // 0x720694: r0 = AppBar()
    //     0x720694: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x720698: r0 = Radius()
    //     0x720698: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x72069c: d0 = 16.000000
    //     0x72069c: fmov            d0, #16.00000000
    // 0x7206a0: stur            x0, [fp, #-0x28]
    // 0x7206a4: StoreField: r0->field_7 = d0
    //     0x7206a4: stur            d0, [x0, #7]
    // 0x7206a8: StoreField: r0->field_f = d0
    //     0x7206a8: stur            d0, [x0, #0xf]
    // 0x7206ac: r0 = BorderRadius()
    //     0x7206ac: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7206b0: mov             x2, x0
    // 0x7206b4: ldur            x0, [fp, #-0x28]
    // 0x7206b8: stur            x2, [fp, #-0x30]
    // 0x7206bc: StoreField: r2->field_7 = r0
    //     0x7206bc: stur            w0, [x2, #7]
    // 0x7206c0: StoreField: r2->field_b = r0
    //     0x7206c0: stur            w0, [x2, #0xb]
    // 0x7206c4: StoreField: r2->field_f = r0
    //     0x7206c4: stur            w0, [x2, #0xf]
    // 0x7206c8: StoreField: r2->field_13 = r0
    //     0x7206c8: stur            w0, [x2, #0x13]
    // 0x7206cc: r16 = 0.050000
    //     0x7206cc: ldr             x16, [PP, #0x5020]  ; [pp+0x5020] 0.05
    // 0x7206d0: str             x16, [SP]
    // 0x7206d4: r1 = Instance_Color
    //     0x7206d4: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x7206d8: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7206d8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7206dc: ldr             x4, [x4, #0x198]
    // 0x7206e0: r0 = withValues()
    //     0x7206e0: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7206e4: stur            x0, [fp, #-0x28]
    // 0x7206e8: r0 = BoxShadow()
    //     0x7206e8: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7206ec: stur            x0, [fp, #-0x38]
    // 0x7206f0: ArrayStore: r0[0] = rZR  ; List_8
    //     0x7206f0: stur            xzr, [x0, #0x17]
    // 0x7206f4: r3 = Instance_BlurStyle
    //     0x7206f4: add             x3, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x7206f8: ldr             x3, [x3, #0x9b0]
    // 0x7206fc: StoreField: r0->field_1f = r3
    //     0x7206fc: stur            w3, [x0, #0x1f]
    // 0x720700: ldur            x1, [fp, #-0x28]
    // 0x720704: StoreField: r0->field_7 = r1
    //     0x720704: stur            w1, [x0, #7]
    // 0x720708: r1 = Instance_Offset
    //     0x720708: add             x1, PP, #0x15, lsl #12  ; [pp+0x154e8] Obj!Offset@a26b11
    //     0x72070c: ldr             x1, [x1, #0x4e8]
    // 0x720710: StoreField: r0->field_b = r1
    //     0x720710: stur            w1, [x0, #0xb]
    // 0x720714: d0 = 10.000000
    //     0x720714: fmov            d0, #10.00000000
    // 0x720718: StoreField: r0->field_f = d0
    //     0x720718: stur            d0, [x0, #0xf]
    // 0x72071c: r1 = Null
    //     0x72071c: mov             x1, NULL
    // 0x720720: r2 = 2
    //     0x720720: mov             x2, #2
    // 0x720724: r0 = AllocateArray()
    //     0x720724: bl              #0x9280a0  ; AllocateArrayStub
    // 0x720728: mov             x2, x0
    // 0x72072c: ldur            x0, [fp, #-0x38]
    // 0x720730: stur            x2, [fp, #-0x28]
    // 0x720734: StoreField: r2->field_f = r0
    //     0x720734: stur            w0, [x2, #0xf]
    // 0x720738: r1 = <BoxShadow>
    //     0x720738: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x72073c: ldr             x1, [x1, #0x9c0]
    // 0x720740: r0 = AllocateGrowableArray()
    //     0x720740: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x720744: mov             x1, x0
    // 0x720748: ldur            x0, [fp, #-0x28]
    // 0x72074c: stur            x1, [fp, #-0x38]
    // 0x720750: StoreField: r1->field_f = r0
    //     0x720750: stur            w0, [x1, #0xf]
    // 0x720754: r2 = 2
    //     0x720754: mov             x2, #2
    // 0x720758: StoreField: r1->field_b = r2
    //     0x720758: stur            w2, [x1, #0xb]
    // 0x72075c: r0 = BoxDecoration()
    //     0x72075c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x720760: mov             x2, x0
    // 0x720764: r0 = Instance_Color
    //     0x720764: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x720768: stur            x2, [fp, #-0x28]
    // 0x72076c: StoreField: r2->field_7 = r0
    //     0x72076c: stur            w0, [x2, #7]
    // 0x720770: ldur            x0, [fp, #-0x30]
    // 0x720774: StoreField: r2->field_13 = r0
    //     0x720774: stur            w0, [x2, #0x13]
    // 0x720778: ldur            x0, [fp, #-0x38]
    // 0x72077c: ArrayStore: r2[0] = r0  ; List_4
    //     0x72077c: stur            w0, [x2, #0x17]
    // 0x720780: r0 = Instance_BoxShape
    //     0x720780: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x720784: ldr             x0, [x0, #0x1c8]
    // 0x720788: StoreField: r2->field_23 = r0
    //     0x720788: stur            w0, [x2, #0x23]
    // 0x72078c: r16 = 0.300000
    //     0x72078c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12320] 0.3
    //     0x720790: ldr             x16, [x16, #0x320]
    // 0x720794: str             x16, [SP]
    // 0x720798: r1 = Instance_Color
    //     0x720798: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x72079c: ldr             x1, [x1, #0xb78]
    // 0x7207a0: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7207a0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7207a4: ldr             x4, [x4, #0x198]
    // 0x7207a8: r0 = withValues()
    //     0x7207a8: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7207ac: stur            x0, [fp, #-0x30]
    // 0x7207b0: r0 = BoxShadow()
    //     0x7207b0: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7207b4: stur            x0, [fp, #-0x38]
    // 0x7207b8: ArrayStore: r0[0] = rZR  ; List_8
    //     0x7207b8: stur            xzr, [x0, #0x17]
    // 0x7207bc: r1 = Instance_BlurStyle
    //     0x7207bc: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x7207c0: ldr             x1, [x1, #0x9b0]
    // 0x7207c4: StoreField: r0->field_1f = r1
    //     0x7207c4: stur            w1, [x0, #0x1f]
    // 0x7207c8: ldur            x1, [fp, #-0x30]
    // 0x7207cc: StoreField: r0->field_7 = r1
    //     0x7207cc: stur            w1, [x0, #7]
    // 0x7207d0: r1 = Instance_Offset
    //     0x7207d0: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b8] Obj!Offset@a26af1
    //     0x7207d4: ldr             x1, [x1, #0x9b8]
    // 0x7207d8: StoreField: r0->field_b = r1
    //     0x7207d8: stur            w1, [x0, #0xb]
    // 0x7207dc: d0 = 12.000000
    //     0x7207dc: fmov            d0, #12.00000000
    // 0x7207e0: StoreField: r0->field_f = d0
    //     0x7207e0: stur            d0, [x0, #0xf]
    // 0x7207e4: r1 = Null
    //     0x7207e4: mov             x1, NULL
    // 0x7207e8: r2 = 2
    //     0x7207e8: mov             x2, #2
    // 0x7207ec: r0 = AllocateArray()
    //     0x7207ec: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7207f0: mov             x2, x0
    // 0x7207f4: ldur            x0, [fp, #-0x38]
    // 0x7207f8: stur            x2, [fp, #-0x30]
    // 0x7207fc: StoreField: r2->field_f = r0
    //     0x7207fc: stur            w0, [x2, #0xf]
    // 0x720800: r1 = <BoxShadow>
    //     0x720800: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x720804: ldr             x1, [x1, #0x9c0]
    // 0x720808: r0 = AllocateGrowableArray()
    //     0x720808: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72080c: mov             x1, x0
    // 0x720810: ldur            x0, [fp, #-0x30]
    // 0x720814: stur            x1, [fp, #-0x38]
    // 0x720818: StoreField: r1->field_f = r0
    //     0x720818: stur            w0, [x1, #0xf]
    // 0x72081c: r0 = 2
    //     0x72081c: mov             x0, #2
    // 0x720820: StoreField: r1->field_b = r0
    //     0x720820: stur            w0, [x1, #0xb]
    // 0x720824: r0 = BoxDecoration()
    //     0x720824: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x720828: mov             x1, x0
    // 0x72082c: r0 = Instance_Color
    //     0x72082c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x720830: ldr             x0, [x0, #0xb78]
    // 0x720834: stur            x1, [fp, #-0x30]
    // 0x720838: StoreField: r1->field_7 = r0
    //     0x720838: stur            w0, [x1, #7]
    // 0x72083c: ldur            x0, [fp, #-0x38]
    // 0x720840: ArrayStore: r1[0] = r0  ; List_4
    //     0x720840: stur            w0, [x1, #0x17]
    // 0x720844: r0 = Instance_BoxShape
    //     0x720844: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x720848: ldr             x0, [x0, #0x1a0]
    // 0x72084c: StoreField: r1->field_23 = r0
    //     0x72084c: stur            w0, [x1, #0x23]
    // 0x720850: r0 = Container()
    //     0x720850: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x720854: stur            x0, [fp, #-0x38]
    // 0x720858: r16 = 70.000000
    //     0x720858: add             x16, PP, #0x17, lsl #12  ; [pp+0x17fe0] 70
    //     0x72085c: ldr             x16, [x16, #0xfe0]
    // 0x720860: r30 = 70.000000
    //     0x720860: add             lr, PP, #0x17, lsl #12  ; [pp+0x17fe0] 70
    //     0x720864: ldr             lr, [lr, #0xfe0]
    // 0x720868: stp             lr, x16, [SP, #0x10]
    // 0x72086c: ldur            x16, [fp, #-0x30]
    // 0x720870: r30 = Instance_Icon
    //     0x720870: add             lr, PP, #0x1f, lsl #12  ; [pp+0x1fed0] Obj!Icon@a1e9b1
    //     0x720874: ldr             lr, [lr, #0xed0]
    // 0x720878: stp             lr, x16, [SP]
    // 0x72087c: mov             x1, x0
    // 0x720880: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x720880: add             x4, PP, #0x15, lsl #12  ; [pp+0x15990] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x720884: ldr             x4, [x4, #0x990]
    // 0x720888: r0 = Container()
    //     0x720888: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x72088c: r0 = GestureDetector()
    //     0x72088c: bl              #0x658e60  ; AllocateGestureDetectorStub -> GestureDetector (size=0x10c)
    // 0x720890: ldur            x2, [fp, #-8]
    // 0x720894: r1 = Function 'incrementCount':.
    //     0x720894: add             x1, PP, #0x20, lsl #12  ; [pp+0x200d0] AnonymousClosure: (0x722e08), in [package:umrem_demo/features/dualar/screens/savt_dualari_page.dart] _SavtDualariPageState::incrementCount (0x722e40)
    //     0x720898: ldr             x1, [x1, #0xd0]
    // 0x72089c: stur            x0, [fp, #-0x30]
    // 0x7208a0: r0 = AllocateClosure()
    //     0x7208a0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7208a4: ldur            x16, [fp, #-0x38]
    // 0x7208a8: stp             x16, x0, [SP]
    // 0x7208ac: ldur            x1, [fp, #-0x30]
    // 0x7208b0: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, onTap, 0x1, null]
    //     0x7208b0: add             x4, PP, #0x14, lsl #12  ; [pp+0x14d50] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "onTap", 0x1, Null]
    //     0x7208b4: ldr             x4, [x4, #0xd50]
    // 0x7208b8: r0 = GestureDetector()
    //     0x7208b8: bl              #0x6582a4  ; [package:flutter/src/widgets/gesture_detector.dart] GestureDetector::GestureDetector
    // 0x7208bc: r1 = _ConstMap len:12
    //     0x7208bc: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7208c0: r2 = 1200
    //     0x7208c0: mov             x2, #0x4b0
    // 0x7208c4: r0 = []()
    //     0x7208c4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7208c8: stur            x0, [fp, #-0x38]
    // 0x7208cc: cmp             w0, NULL
    // 0x7208d0: b.eq            #0x720d3c
    // 0x7208d4: r0 = TextStyle()
    //     0x7208d4: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7208d8: mov             x1, x0
    // 0x7208dc: r0 = true
    //     0x7208dc: add             x0, NULL, #0x20  ; true
    // 0x7208e0: stur            x1, [fp, #-0x40]
    // 0x7208e4: StoreField: r1->field_7 = r0
    //     0x7208e4: stur            w0, [x1, #7]
    // 0x7208e8: ldur            x2, [fp, #-0x38]
    // 0x7208ec: StoreField: r1->field_b = r2
    //     0x7208ec: stur            w2, [x1, #0xb]
    // 0x7208f0: r2 = 14.000000
    //     0x7208f0: add             x2, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x7208f4: ldr             x2, [x2, #0x1c8]
    // 0x7208f8: StoreField: r1->field_1f = r2
    //     0x7208f8: stur            w2, [x1, #0x1f]
    // 0x7208fc: r2 = Instance_FontWeight
    //     0x7208fc: add             x2, PP, #0x15, lsl #12  ; [pp+0x155d0] Obj!FontWeight@a20fe1
    //     0x720900: ldr             x2, [x2, #0x5d0]
    // 0x720904: StoreField: r1->field_23 = r2
    //     0x720904: stur            w2, [x1, #0x23]
    // 0x720908: r0 = Text()
    //     0x720908: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x72090c: mov             x3, x0
    // 0x720910: r0 = "Zikirmatik"
    //     0x720910: add             x0, PP, #0x15, lsl #12  ; [pp+0x15f90] "Zikirmatik"
    //     0x720914: ldr             x0, [x0, #0xf90]
    // 0x720918: stur            x3, [fp, #-0x48]
    // 0x72091c: StoreField: r3->field_b = r0
    //     0x72091c: stur            w0, [x3, #0xb]
    // 0x720920: ldur            x0, [fp, #-0x40]
    // 0x720924: StoreField: r3->field_13 = r0
    //     0x720924: stur            w0, [x3, #0x13]
    // 0x720928: ldur            x4, [fp, #-8]
    // 0x72092c: LoadField: r2 = r4->field_27
    //     0x72092c: ldur            x2, [x4, #0x27]
    // 0x720930: r0 = BoxInt64Instr(r2)
    //     0x720930: sbfiz           x0, x2, #1, #0x1f
    //     0x720934: cmp             x2, x0, asr #1
    //     0x720938: b.eq            #0x720944
    //     0x72093c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x720940: stur            x2, [x0, #7]
    // 0x720944: r1 = Null
    //     0x720944: mov             x1, NULL
    // 0x720948: r2 = 6
    //     0x720948: mov             x2, #6
    // 0x72094c: stur            x0, [fp, #-0x38]
    // 0x720950: r0 = AllocateArray()
    //     0x720950: bl              #0x9280a0  ; AllocateArrayStub
    // 0x720954: mov             x1, x0
    // 0x720958: ldur            x0, [fp, #-0x38]
    // 0x72095c: StoreField: r1->field_f = r0
    //     0x72095c: stur            w0, [x1, #0xf]
    // 0x720960: r16 = " / "
    //     0x720960: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fee0] " / "
    //     0x720964: ldr             x16, [x16, #0xee0]
    // 0x720968: StoreField: r1->field_13 = r16
    //     0x720968: stur            w16, [x1, #0x13]
    // 0x72096c: r16 = 14
    //     0x72096c: mov             x16, #0xe
    // 0x720970: ArrayStore: r1[0] = r16  ; List_4
    //     0x720970: stur            w16, [x1, #0x17]
    // 0x720974: str             x1, [SP]
    // 0x720978: r0 = _interpolate()
    //     0x720978: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72097c: stur            x0, [fp, #-0x38]
    // 0x720980: r0 = TextStyle()
    //     0x720980: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x720984: mov             x1, x0
    // 0x720988: r0 = true
    //     0x720988: add             x0, NULL, #0x20  ; true
    // 0x72098c: stur            x1, [fp, #-0x40]
    // 0x720990: StoreField: r1->field_7 = r0
    //     0x720990: stur            w0, [x1, #7]
    // 0x720994: r2 = Instance_Color
    //     0x720994: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x720998: ldr             x2, [x2, #0xb88]
    // 0x72099c: StoreField: r1->field_b = r2
    //     0x72099c: stur            w2, [x1, #0xb]
    // 0x7209a0: r2 = 24.000000
    //     0x7209a0: add             x2, PP, #0xc, lsl #12  ; [pp+0xcf28] 24
    //     0x7209a4: ldr             x2, [x2, #0xf28]
    // 0x7209a8: StoreField: r1->field_1f = r2
    //     0x7209a8: stur            w2, [x1, #0x1f]
    // 0x7209ac: r2 = Instance_FontWeight
    //     0x7209ac: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x7209b0: ldr             x2, [x2, #0x1d0]
    // 0x7209b4: StoreField: r1->field_23 = r2
    //     0x7209b4: stur            w2, [x1, #0x23]
    // 0x7209b8: r0 = Text()
    //     0x7209b8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7209bc: mov             x3, x0
    // 0x7209c0: ldur            x0, [fp, #-0x38]
    // 0x7209c4: stur            x3, [fp, #-0x50]
    // 0x7209c8: StoreField: r3->field_b = r0
    //     0x7209c8: stur            w0, [x3, #0xb]
    // 0x7209cc: ldur            x0, [fp, #-0x40]
    // 0x7209d0: StoreField: r3->field_13 = r0
    //     0x7209d0: stur            w0, [x3, #0x13]
    // 0x7209d4: r1 = Null
    //     0x7209d4: mov             x1, NULL
    // 0x7209d8: r2 = 6
    //     0x7209d8: mov             x2, #6
    // 0x7209dc: r0 = AllocateArray()
    //     0x7209dc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7209e0: mov             x2, x0
    // 0x7209e4: ldur            x0, [fp, #-0x48]
    // 0x7209e8: stur            x2, [fp, #-0x38]
    // 0x7209ec: StoreField: r2->field_f = r0
    //     0x7209ec: stur            w0, [x2, #0xf]
    // 0x7209f0: r16 = Instance_SizedBox
    //     0x7209f0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x7209f4: ldr             x16, [x16, #0x338]
    // 0x7209f8: StoreField: r2->field_13 = r16
    //     0x7209f8: stur            w16, [x2, #0x13]
    // 0x7209fc: ldur            x0, [fp, #-0x50]
    // 0x720a00: ArrayStore: r2[0] = r0  ; List_4
    //     0x720a00: stur            w0, [x2, #0x17]
    // 0x720a04: r1 = <Widget>
    //     0x720a04: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x720a08: r0 = AllocateGrowableArray()
    //     0x720a08: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x720a0c: mov             x1, x0
    // 0x720a10: ldur            x0, [fp, #-0x38]
    // 0x720a14: stur            x1, [fp, #-0x40]
    // 0x720a18: StoreField: r1->field_f = r0
    //     0x720a18: stur            w0, [x1, #0xf]
    // 0x720a1c: r2 = 6
    //     0x720a1c: mov             x2, #6
    // 0x720a20: StoreField: r1->field_b = r2
    //     0x720a20: stur            w2, [x1, #0xb]
    // 0x720a24: r0 = Column()
    //     0x720a24: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x720a28: mov             x2, x0
    // 0x720a2c: r0 = Instance_Axis
    //     0x720a2c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x720a30: stur            x2, [fp, #-0x38]
    // 0x720a34: StoreField: r2->field_f = r0
    //     0x720a34: stur            w0, [x2, #0xf]
    // 0x720a38: r3 = Instance_MainAxisAlignment
    //     0x720a38: add             x3, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x720a3c: ldr             x3, [x3, #0x230]
    // 0x720a40: StoreField: r2->field_13 = r3
    //     0x720a40: stur            w3, [x2, #0x13]
    // 0x720a44: r1 = Instance_MainAxisSize
    //     0x720a44: add             x1, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x720a48: ldr             x1, [x1, #0xb60]
    // 0x720a4c: ArrayStore: r2[0] = r1  ; List_4
    //     0x720a4c: stur            w1, [x2, #0x17]
    // 0x720a50: r1 = Instance_CrossAxisAlignment
    //     0x720a50: add             x1, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x720a54: ldr             x1, [x1, #0x238]
    // 0x720a58: StoreField: r2->field_1b = r1
    //     0x720a58: stur            w1, [x2, #0x1b]
    // 0x720a5c: r4 = Instance_VerticalDirection
    //     0x720a5c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x720a60: ldr             x4, [x4, #0x340]
    // 0x720a64: StoreField: r2->field_23 = r4
    //     0x720a64: stur            w4, [x2, #0x23]
    // 0x720a68: r5 = Instance_Clip
    //     0x720a68: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x720a6c: ldr             x5, [x5, #0x348]
    // 0x720a70: StoreField: r2->field_2b = r5
    //     0x720a70: stur            w5, [x2, #0x2b]
    // 0x720a74: StoreField: r2->field_2f = rZR
    //     0x720a74: stur            xzr, [x2, #0x2f]
    // 0x720a78: ldur            x1, [fp, #-0x40]
    // 0x720a7c: StoreField: r2->field_b = r1
    //     0x720a7c: stur            w1, [x2, #0xb]
    // 0x720a80: r1 = <FlexParentData>
    //     0x720a80: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x720a84: ldr             x1, [x1, #0x340]
    // 0x720a88: r0 = Expanded()
    //     0x720a88: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x720a8c: mov             x3, x0
    // 0x720a90: r0 = 1
    //     0x720a90: mov             x0, #1
    // 0x720a94: stur            x3, [fp, #-0x40]
    // 0x720a98: StoreField: r3->field_13 = r0
    //     0x720a98: stur            x0, [x3, #0x13]
    // 0x720a9c: r4 = Instance_FlexFit
    //     0x720a9c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x720aa0: ldr             x4, [x4, #0x348]
    // 0x720aa4: StoreField: r3->field_1b = r4
    //     0x720aa4: stur            w4, [x3, #0x1b]
    // 0x720aa8: ldur            x1, [fp, #-0x38]
    // 0x720aac: StoreField: r3->field_b = r1
    //     0x720aac: stur            w1, [x3, #0xb]
    // 0x720ab0: r1 = Null
    //     0x720ab0: mov             x1, NULL
    // 0x720ab4: r2 = 6
    //     0x720ab4: mov             x2, #6
    // 0x720ab8: r0 = AllocateArray()
    //     0x720ab8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x720abc: mov             x2, x0
    // 0x720ac0: ldur            x0, [fp, #-0x30]
    // 0x720ac4: stur            x2, [fp, #-0x38]
    // 0x720ac8: StoreField: r2->field_f = r0
    //     0x720ac8: stur            w0, [x2, #0xf]
    // 0x720acc: r16 = Instance_SizedBox
    //     0x720acc: add             x16, PP, #0x15, lsl #12  ; [pp+0x15e48] Obj!SizedBox@a1fc71
    //     0x720ad0: ldr             x16, [x16, #0xe48]
    // 0x720ad4: StoreField: r2->field_13 = r16
    //     0x720ad4: stur            w16, [x2, #0x13]
    // 0x720ad8: ldur            x0, [fp, #-0x40]
    // 0x720adc: ArrayStore: r2[0] = r0  ; List_4
    //     0x720adc: stur            w0, [x2, #0x17]
    // 0x720ae0: r1 = <Widget>
    //     0x720ae0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x720ae4: r0 = AllocateGrowableArray()
    //     0x720ae4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x720ae8: mov             x1, x0
    // 0x720aec: ldur            x0, [fp, #-0x38]
    // 0x720af0: stur            x1, [fp, #-0x30]
    // 0x720af4: StoreField: r1->field_f = r0
    //     0x720af4: stur            w0, [x1, #0xf]
    // 0x720af8: r0 = 6
    //     0x720af8: mov             x0, #6
    // 0x720afc: StoreField: r1->field_b = r0
    //     0x720afc: stur            w0, [x1, #0xb]
    // 0x720b00: r0 = Row()
    //     0x720b00: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x720b04: mov             x1, x0
    // 0x720b08: r0 = Instance_Axis
    //     0x720b08: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x720b0c: stur            x1, [fp, #-0x38]
    // 0x720b10: StoreField: r1->field_f = r0
    //     0x720b10: stur            w0, [x1, #0xf]
    // 0x720b14: r0 = Instance_MainAxisAlignment
    //     0x720b14: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x720b18: ldr             x0, [x0, #0x230]
    // 0x720b1c: StoreField: r1->field_13 = r0
    //     0x720b1c: stur            w0, [x1, #0x13]
    // 0x720b20: r2 = Instance_MainAxisSize
    //     0x720b20: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x720b24: ldr             x2, [x2, #0x330]
    // 0x720b28: ArrayStore: r1[0] = r2  ; List_4
    //     0x720b28: stur            w2, [x1, #0x17]
    // 0x720b2c: r3 = Instance_CrossAxisAlignment
    //     0x720b2c: add             x3, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x720b30: ldr             x3, [x3, #0x338]
    // 0x720b34: StoreField: r1->field_1b = r3
    //     0x720b34: stur            w3, [x1, #0x1b]
    // 0x720b38: r4 = Instance_VerticalDirection
    //     0x720b38: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x720b3c: ldr             x4, [x4, #0x340]
    // 0x720b40: StoreField: r1->field_23 = r4
    //     0x720b40: stur            w4, [x1, #0x23]
    // 0x720b44: r5 = Instance_Clip
    //     0x720b44: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x720b48: ldr             x5, [x5, #0x348]
    // 0x720b4c: StoreField: r1->field_2b = r5
    //     0x720b4c: stur            w5, [x1, #0x2b]
    // 0x720b50: StoreField: r1->field_2f = rZR
    //     0x720b50: stur            xzr, [x1, #0x2f]
    // 0x720b54: ldur            x6, [fp, #-0x30]
    // 0x720b58: StoreField: r1->field_b = r6
    //     0x720b58: stur            w6, [x1, #0xb]
    // 0x720b5c: r0 = Container()
    //     0x720b5c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x720b60: stur            x0, [fp, #-0x30]
    // 0x720b64: r16 = Instance_EdgeInsets
    //     0x720b64: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x720b68: ldr             x16, [x16, #0x240]
    // 0x720b6c: r30 = Instance_EdgeInsets
    //     0x720b6c: add             lr, PP, #0x15, lsl #12  ; [pp+0x15a88] Obj!EdgeInsets@a0c591
    //     0x720b70: ldr             lr, [lr, #0xa88]
    // 0x720b74: stp             lr, x16, [SP, #0x10]
    // 0x720b78: ldur            x16, [fp, #-0x28]
    // 0x720b7c: ldur            lr, [fp, #-0x38]
    // 0x720b80: stp             lr, x16, [SP]
    // 0x720b84: mov             x1, x0
    // 0x720b88: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, margin, 0x1, padding, 0x2, null]
    //     0x720b88: add             x4, PP, #0x15, lsl #12  ; [pp+0x15628] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "margin", 0x1, "padding", 0x2, Null]
    //     0x720b8c: ldr             x4, [x4, #0x628]
    // 0x720b90: r0 = Container()
    //     0x720b90: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x720b94: ldur            x0, [fp, #-8]
    // 0x720b98: LoadField: r3 = r0->field_13
    //     0x720b98: ldur            w3, [x0, #0x13]
    // 0x720b9c: DecompressPointer r3
    //     0x720b9c: add             x3, x3, HEAP, lsl #32
    // 0x720ba0: stur            x3, [fp, #-0x28]
    // 0x720ba4: LoadField: r1 = r0->field_3b
    //     0x720ba4: ldur            w1, [x0, #0x3b]
    // 0x720ba8: DecompressPointer r1
    //     0x720ba8: add             x1, x1, HEAP, lsl #32
    // 0x720bac: LoadField: r0 = r1->field_b
    //     0x720bac: ldur            w0, [x1, #0xb]
    // 0x720bb0: r5 = LoadInt32Instr(r0)
    //     0x720bb0: sbfx            x5, x0, #1, #0x1f
    // 0x720bb4: ldur            x2, [fp, #-0x18]
    // 0x720bb8: stur            x5, [fp, #-0x58]
    // 0x720bbc: r1 = Function '<anonymous closure>':.
    //     0x720bbc: add             x1, PP, #0x20, lsl #12  ; [pp+0x200d8] AnonymousClosure: (0x720d40), in [package:umrem_demo/features/dualar/screens/savt_dualari_page.dart] _SavtDualariPageState::build (0x7204cc)
    //     0x720bc0: ldr             x1, [x1, #0xd8]
    // 0x720bc4: r0 = AllocateClosure()
    //     0x720bc4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x720bc8: stur            x0, [fp, #-8]
    // 0x720bcc: r0 = PageView()
    //     0x720bcc: bl              #0x64e704  ; AllocatePageViewStub -> PageView (size=0x44)
    // 0x720bd0: stur            x0, [fp, #-0x18]
    // 0x720bd4: r16 = Instance_Axis
    //     0x720bd4: ldr             x16, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x720bd8: str             x16, [SP]
    // 0x720bdc: mov             x1, x0
    // 0x720be0: ldur            x2, [fp, #-0x28]
    // 0x720be4: ldur            x3, [fp, #-8]
    // 0x720be8: ldur            x5, [fp, #-0x58]
    // 0x720bec: r4 = const [0, 0x5, 0x1, 0x4, scrollDirection, 0x4, null]
    //     0x720bec: add             x4, PP, #0x1f, lsl #12  ; [pp+0x1fef0] List(7) [0, 0x5, 0x1, 0x4, "scrollDirection", 0x4, Null]
    //     0x720bf0: ldr             x4, [x4, #0xef0]
    // 0x720bf4: r0 = PageView.builder()
    //     0x720bf4: bl              #0x64e4d0  ; [package:flutter/src/widgets/page_view.dart] PageView::PageView.builder
    // 0x720bf8: r1 = <FlexParentData>
    //     0x720bf8: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x720bfc: ldr             x1, [x1, #0x340]
    // 0x720c00: r0 = Expanded()
    //     0x720c00: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x720c04: mov             x3, x0
    // 0x720c08: r0 = 1
    //     0x720c08: mov             x0, #1
    // 0x720c0c: stur            x3, [fp, #-8]
    // 0x720c10: StoreField: r3->field_13 = r0
    //     0x720c10: stur            x0, [x3, #0x13]
    // 0x720c14: r0 = Instance_FlexFit
    //     0x720c14: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x720c18: ldr             x0, [x0, #0x348]
    // 0x720c1c: StoreField: r3->field_1b = r0
    //     0x720c1c: stur            w0, [x3, #0x1b]
    // 0x720c20: ldur            x0, [fp, #-0x18]
    // 0x720c24: StoreField: r3->field_b = r0
    //     0x720c24: stur            w0, [x3, #0xb]
    // 0x720c28: r1 = Null
    //     0x720c28: mov             x1, NULL
    // 0x720c2c: r2 = 4
    //     0x720c2c: mov             x2, #4
    // 0x720c30: r0 = AllocateArray()
    //     0x720c30: bl              #0x9280a0  ; AllocateArrayStub
    // 0x720c34: mov             x2, x0
    // 0x720c38: ldur            x0, [fp, #-0x30]
    // 0x720c3c: stur            x2, [fp, #-0x18]
    // 0x720c40: StoreField: r2->field_f = r0
    //     0x720c40: stur            w0, [x2, #0xf]
    // 0x720c44: ldur            x0, [fp, #-8]
    // 0x720c48: StoreField: r2->field_13 = r0
    //     0x720c48: stur            w0, [x2, #0x13]
    // 0x720c4c: r1 = <Widget>
    //     0x720c4c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x720c50: r0 = AllocateGrowableArray()
    //     0x720c50: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x720c54: mov             x1, x0
    // 0x720c58: ldur            x0, [fp, #-0x18]
    // 0x720c5c: stur            x1, [fp, #-8]
    // 0x720c60: StoreField: r1->field_f = r0
    //     0x720c60: stur            w0, [x1, #0xf]
    // 0x720c64: r0 = 4
    //     0x720c64: mov             x0, #4
    // 0x720c68: StoreField: r1->field_b = r0
    //     0x720c68: stur            w0, [x1, #0xb]
    // 0x720c6c: r0 = Column()
    //     0x720c6c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x720c70: mov             x1, x0
    // 0x720c74: r0 = Instance_Axis
    //     0x720c74: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x720c78: stur            x1, [fp, #-0x18]
    // 0x720c7c: StoreField: r1->field_f = r0
    //     0x720c7c: stur            w0, [x1, #0xf]
    // 0x720c80: r0 = Instance_MainAxisAlignment
    //     0x720c80: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x720c84: ldr             x0, [x0, #0x230]
    // 0x720c88: StoreField: r1->field_13 = r0
    //     0x720c88: stur            w0, [x1, #0x13]
    // 0x720c8c: r0 = Instance_MainAxisSize
    //     0x720c8c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x720c90: ldr             x0, [x0, #0x330]
    // 0x720c94: ArrayStore: r1[0] = r0  ; List_4
    //     0x720c94: stur            w0, [x1, #0x17]
    // 0x720c98: r0 = Instance_CrossAxisAlignment
    //     0x720c98: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x720c9c: ldr             x0, [x0, #0x338]
    // 0x720ca0: StoreField: r1->field_1b = r0
    //     0x720ca0: stur            w0, [x1, #0x1b]
    // 0x720ca4: r0 = Instance_VerticalDirection
    //     0x720ca4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x720ca8: ldr             x0, [x0, #0x340]
    // 0x720cac: StoreField: r1->field_23 = r0
    //     0x720cac: stur            w0, [x1, #0x23]
    // 0x720cb0: r0 = Instance_Clip
    //     0x720cb0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x720cb4: ldr             x0, [x0, #0x348]
    // 0x720cb8: StoreField: r1->field_2b = r0
    //     0x720cb8: stur            w0, [x1, #0x2b]
    // 0x720cbc: StoreField: r1->field_2f = rZR
    //     0x720cbc: stur            xzr, [x1, #0x2f]
    // 0x720cc0: ldur            x0, [fp, #-8]
    // 0x720cc4: StoreField: r1->field_b = r0
    //     0x720cc4: stur            w0, [x1, #0xb]
    // 0x720cc8: r0 = Scaffold()
    //     0x720cc8: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x720ccc: ldur            x1, [fp, #-0x20]
    // 0x720cd0: ArrayStore: r0[0] = r1  ; List_4
    //     0x720cd0: stur            w1, [x0, #0x17]
    // 0x720cd4: ldur            x1, [fp, #-0x18]
    // 0x720cd8: StoreField: r0->field_1b = r1
    //     0x720cd8: stur            w1, [x0, #0x1b]
    // 0x720cdc: r1 = Instance_AlignmentDirectional
    //     0x720cdc: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x720ce0: ldr             x1, [x1, #0x350]
    // 0x720ce4: StoreField: r0->field_2f = r1
    //     0x720ce4: stur            w1, [x0, #0x2f]
    // 0x720ce8: ldur            x1, [fp, #-0x10]
    // 0x720cec: StoreField: r0->field_4f = r1
    //     0x720cec: stur            w1, [x0, #0x4f]
    // 0x720cf0: r1 = true
    //     0x720cf0: add             x1, NULL, #0x20  ; true
    // 0x720cf4: StoreField: r0->field_5f = r1
    //     0x720cf4: stur            w1, [x0, #0x5f]
    // 0x720cf8: r2 = Instance_DragStartBehavior
    //     0x720cf8: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x720cfc: StoreField: r0->field_63 = r2
    //     0x720cfc: stur            w2, [x0, #0x63]
    // 0x720d00: r2 = false
    //     0x720d00: add             x2, NULL, #0x30  ; false
    // 0x720d04: StoreField: r0->field_b = r2
    //     0x720d04: stur            w2, [x0, #0xb]
    // 0x720d08: StoreField: r0->field_f = r1
    //     0x720d08: stur            w1, [x0, #0xf]
    // 0x720d0c: StoreField: r0->field_13 = r2
    //     0x720d0c: stur            w2, [x0, #0x13]
    // 0x720d10: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x720d10: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x720d14: ldr             x2, [x2, #0x358]
    // 0x720d18: StoreField: r0->field_4b = r2
    //     0x720d18: stur            w2, [x0, #0x4b]
    // 0x720d1c: StoreField: r0->field_6b = r1
    //     0x720d1c: stur            w1, [x0, #0x6b]
    // 0x720d20: StoreField: r0->field_6f = r1
    //     0x720d20: stur            w1, [x0, #0x6f]
    // 0x720d24: LeaveFrame
    //     0x720d24: mov             SP, fp
    //     0x720d28: ldp             fp, lr, [SP], #0x10
    // 0x720d2c: ret
    //     0x720d2c: ret             
    // 0x720d30: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x720d30: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x720d34: b               #0x7204f0
    // 0x720d38: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x720d38: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x720d3c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x720d3c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x720d40, size: 0x98
    // 0x720d40: EnterFrame
    //     0x720d40: stp             fp, lr, [SP, #-0x10]!
    //     0x720d44: mov             fp, SP
    // 0x720d48: ldr             x0, [fp, #0x20]
    // 0x720d4c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x720d4c: ldur            w1, [x0, #0x17]
    // 0x720d50: DecompressPointer r1
    //     0x720d50: add             x1, x1, HEAP, lsl #32
    // 0x720d54: CheckStackOverflow
    //     0x720d54: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x720d58: cmp             SP, x16
    //     0x720d5c: b.ls            #0x720dcc
    // 0x720d60: LoadField: r2 = r1->field_f
    //     0x720d60: ldur            w2, [x1, #0xf]
    // 0x720d64: DecompressPointer r2
    //     0x720d64: add             x2, x2, HEAP, lsl #32
    // 0x720d68: LoadField: r3 = r2->field_3b
    //     0x720d68: ldur            w3, [x2, #0x3b]
    // 0x720d6c: DecompressPointer r3
    //     0x720d6c: add             x3, x3, HEAP, lsl #32
    // 0x720d70: LoadField: r0 = r3->field_b
    //     0x720d70: ldur            w0, [x3, #0xb]
    // 0x720d74: ldr             x1, [fp, #0x10]
    // 0x720d78: r4 = LoadInt32Instr(r1)
    //     0x720d78: sbfx            x4, x1, #1, #0x1f
    //     0x720d7c: tbz             w1, #0, #0x720d84
    //     0x720d80: ldur            x4, [x1, #7]
    // 0x720d84: r1 = LoadInt32Instr(r0)
    //     0x720d84: sbfx            x1, x0, #1, #0x1f
    // 0x720d88: mov             x0, x1
    // 0x720d8c: mov             x1, x4
    // 0x720d90: cmp             x1, x0
    // 0x720d94: b.hs            #0x720dd4
    // 0x720d98: LoadField: r0 = r3->field_f
    //     0x720d98: ldur            w0, [x3, #0xf]
    // 0x720d9c: DecompressPointer r0
    //     0x720d9c: add             x0, x0, HEAP, lsl #32
    // 0x720da0: ArrayLoad: r1 = r0[r4]  ; Unknown_4
    //     0x720da0: add             x16, x0, x4, lsl #2
    //     0x720da4: ldur            w1, [x16, #0xf]
    // 0x720da8: DecompressPointer r1
    //     0x720da8: add             x1, x1, HEAP, lsl #32
    // 0x720dac: mov             x16, x1
    // 0x720db0: mov             x1, x2
    // 0x720db4: mov             x2, x16
    // 0x720db8: mov             x3, x4
    // 0x720dbc: r0 = _buildDuaCard()
    //     0x720dbc: bl              #0x720dd8  ; [package:umrem_demo/features/dualar/screens/savt_dualari_page.dart] _SavtDualariPageState::_buildDuaCard
    // 0x720dc0: LeaveFrame
    //     0x720dc0: mov             SP, fp
    //     0x720dc4: ldp             fp, lr, [SP], #0x10
    // 0x720dc8: ret
    //     0x720dc8: ret             
    // 0x720dcc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x720dcc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x720dd0: b               #0x720d60
    // 0x720dd4: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x720dd4: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  _ _buildDuaCard(/* No info */) {
    // ** addr: 0x720dd8, size: 0x614
    // 0x720dd8: EnterFrame
    //     0x720dd8: stp             fp, lr, [SP, #-0x10]!
    //     0x720ddc: mov             fp, SP
    // 0x720de0: AllocStack(0x60)
    //     0x720de0: sub             SP, SP, #0x60
    // 0x720de4: SetupParameters(_SavtDualariPageState this /* r1 => r5, fp-0x8 */, dynamic _ /* r2 => r4, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x720de4: mov             x5, x1
    //     0x720de8: mov             x4, x2
    //     0x720dec: stur            x1, [fp, #-8]
    //     0x720df0: stur            x2, [fp, #-0x10]
    //     0x720df4: stur            x3, [fp, #-0x18]
    // 0x720df8: CheckStackOverflow
    //     0x720df8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x720dfc: cmp             SP, x16
    //     0x720e00: b.ls            #0x7213e4
    // 0x720e04: r0 = LoadClassIdInstr(r4)
    //     0x720e04: ldur            x0, [x4, #-1]
    //     0x720e08: ubfx            x0, x0, #0xc, #0x14
    // 0x720e0c: mov             x1, x4
    // 0x720e10: r2 = "isZikirmatik"
    //     0x720e10: add             x2, PP, #0x1b, lsl #12  ; [pp+0x1bcf0] "isZikirmatik"
    //     0x720e14: ldr             x2, [x2, #0xcf0]
    // 0x720e18: r0 = GDT[cid_x0 + 0x36e]()
    //     0x720e18: add             lr, x0, #0x36e
    //     0x720e1c: ldr             lr, [x21, lr, lsl #3]
    //     0x720e20: blr             lr
    // 0x720e24: cmp             w0, NULL
    // 0x720e28: b.ne            #0x720e34
    // 0x720e2c: r4 = true
    //     0x720e2c: add             x4, NULL, #0x20  ; true
    // 0x720e30: b               #0x720e38
    // 0x720e34: mov             x4, x0
    // 0x720e38: ldur            x3, [fp, #-0x10]
    // 0x720e3c: mov             x0, x4
    // 0x720e40: stur            x4, [fp, #-0x20]
    // 0x720e44: r2 = Null
    //     0x720e44: mov             x2, NULL
    // 0x720e48: r1 = Null
    //     0x720e48: mov             x1, NULL
    // 0x720e4c: r4 = 60
    //     0x720e4c: mov             x4, #0x3c
    // 0x720e50: branchIfSmi(r0, 0x720e5c)
    //     0x720e50: tbz             w0, #0, #0x720e5c
    // 0x720e54: r4 = LoadClassIdInstr(r0)
    //     0x720e54: ldur            x4, [x0, #-1]
    //     0x720e58: ubfx            x4, x4, #0xc, #0x14
    // 0x720e5c: cmp             x4, #0x3f
    // 0x720e60: b.eq            #0x720e74
    // 0x720e64: r8 = bool
    //     0x720e64: ldr             x8, [PP, #0x29b0]  ; [pp+0x29b0] Type: bool
    // 0x720e68: r3 = Null
    //     0x720e68: add             x3, PP, #0x20, lsl #12  ; [pp+0x200e0] Null
    //     0x720e6c: ldr             x3, [x3, #0xe0]
    // 0x720e70: r0 = bool()
    //     0x720e70: bl              #0x939a38  ; IsType_bool_Stub
    // 0x720e74: ldur            x3, [fp, #-0x10]
    // 0x720e78: r0 = LoadClassIdInstr(r3)
    //     0x720e78: ldur            x0, [x3, #-1]
    //     0x720e7c: ubfx            x0, x0, #0xc, #0x14
    // 0x720e80: mov             x1, x3
    // 0x720e84: r2 = "title"
    //     0x720e84: ldr             x2, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x720e88: r0 = GDT[cid_x0 + 0x36e]()
    //     0x720e88: add             lr, x0, #0x36e
    //     0x720e8c: ldr             lr, [x21, lr, lsl #3]
    //     0x720e90: blr             lr
    // 0x720e94: cmp             w0, NULL
    // 0x720e98: b.ne            #0x720ea4
    // 0x720e9c: r4 = ""
    //     0x720e9c: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x720ea0: b               #0x720ea8
    // 0x720ea4: mov             x4, x0
    // 0x720ea8: ldur            x3, [fp, #-0x20]
    // 0x720eac: mov             x0, x4
    // 0x720eb0: stur            x4, [fp, #-0x28]
    // 0x720eb4: r2 = Null
    //     0x720eb4: mov             x2, NULL
    // 0x720eb8: r1 = Null
    //     0x720eb8: mov             x1, NULL
    // 0x720ebc: r4 = 60
    //     0x720ebc: mov             x4, #0x3c
    // 0x720ec0: branchIfSmi(r0, 0x720ecc)
    //     0x720ec0: tbz             w0, #0, #0x720ecc
    // 0x720ec4: r4 = LoadClassIdInstr(r0)
    //     0x720ec4: ldur            x4, [x0, #-1]
    //     0x720ec8: ubfx            x4, x4, #0xc, #0x14
    // 0x720ecc: sub             x4, x4, #0x5e
    // 0x720ed0: cmp             x4, #1
    // 0x720ed4: b.ls            #0x720ee8
    // 0x720ed8: r8 = String
    //     0x720ed8: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x720edc: r3 = Null
    //     0x720edc: add             x3, PP, #0x20, lsl #12  ; [pp+0x200f0] Null
    //     0x720ee0: ldr             x3, [x3, #0xf0]
    // 0x720ee4: r0 = String()
    //     0x720ee4: bl              #0x939a58  ; IsType_String_Stub
    // 0x720ee8: r0 = BoxDecoration()
    //     0x720ee8: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x720eec: mov             x1, x0
    // 0x720ef0: r0 = Instance_Color
    //     0x720ef0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x720ef4: ldr             x0, [x0, #0xb78]
    // 0x720ef8: stur            x1, [fp, #-0x30]
    // 0x720efc: StoreField: r1->field_7 = r0
    //     0x720efc: stur            w0, [x1, #7]
    // 0x720f00: r0 = Instance_BorderRadius
    //     0x720f00: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1ff18] Obj!BorderRadius@a0ccd1
    //     0x720f04: ldr             x0, [x0, #0xf18]
    // 0x720f08: StoreField: r1->field_13 = r0
    //     0x720f08: stur            w0, [x1, #0x13]
    // 0x720f0c: r0 = Instance_BoxShape
    //     0x720f0c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x720f10: ldr             x0, [x0, #0x1c8]
    // 0x720f14: StoreField: r1->field_23 = r0
    //     0x720f14: stur            w0, [x1, #0x23]
    // 0x720f18: r0 = Text()
    //     0x720f18: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x720f1c: mov             x2, x0
    // 0x720f20: ldur            x0, [fp, #-0x28]
    // 0x720f24: stur            x2, [fp, #-0x38]
    // 0x720f28: StoreField: r2->field_b = r0
    //     0x720f28: stur            w0, [x2, #0xb]
    // 0x720f2c: r0 = Instance_TextStyle
    //     0x720f2c: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1faf0] Obj!TextStyle@a17ec1
    //     0x720f30: ldr             x0, [x0, #0xaf0]
    // 0x720f34: StoreField: r2->field_13 = r0
    //     0x720f34: stur            w0, [x2, #0x13]
    // 0x720f38: r1 = <FlexParentData>
    //     0x720f38: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x720f3c: ldr             x1, [x1, #0x340]
    // 0x720f40: r0 = Expanded()
    //     0x720f40: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x720f44: mov             x3, x0
    // 0x720f48: r0 = 1
    //     0x720f48: mov             x0, #1
    // 0x720f4c: stur            x3, [fp, #-0x28]
    // 0x720f50: StoreField: r3->field_13 = r0
    //     0x720f50: stur            x0, [x3, #0x13]
    // 0x720f54: r4 = Instance_FlexFit
    //     0x720f54: add             x4, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x720f58: ldr             x4, [x4, #0x348]
    // 0x720f5c: StoreField: r3->field_1b = r4
    //     0x720f5c: stur            w4, [x3, #0x1b]
    // 0x720f60: ldur            x1, [fp, #-0x38]
    // 0x720f64: StoreField: r3->field_b = r1
    //     0x720f64: stur            w1, [x3, #0xb]
    // 0x720f68: r1 = Null
    //     0x720f68: mov             x1, NULL
    // 0x720f6c: r2 = 2
    //     0x720f6c: mov             x2, #2
    // 0x720f70: r0 = AllocateArray()
    //     0x720f70: bl              #0x9280a0  ; AllocateArrayStub
    // 0x720f74: mov             x2, x0
    // 0x720f78: ldur            x0, [fp, #-0x28]
    // 0x720f7c: stur            x2, [fp, #-0x38]
    // 0x720f80: StoreField: r2->field_f = r0
    //     0x720f80: stur            w0, [x2, #0xf]
    // 0x720f84: r1 = <Widget>
    //     0x720f84: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x720f88: r0 = AllocateGrowableArray()
    //     0x720f88: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x720f8c: mov             x2, x0
    // 0x720f90: ldur            x0, [fp, #-0x38]
    // 0x720f94: stur            x2, [fp, #-0x28]
    // 0x720f98: StoreField: r2->field_f = r0
    //     0x720f98: stur            w0, [x2, #0xf]
    // 0x720f9c: r0 = 2
    //     0x720f9c: mov             x0, #2
    // 0x720fa0: StoreField: r2->field_b = r0
    //     0x720fa0: stur            w0, [x2, #0xb]
    // 0x720fa4: ldur            x1, [fp, #-0x20]
    // 0x720fa8: tbz             w1, #4, #0x721118
    // 0x720fac: ldur            x3, [fp, #-0x18]
    // 0x720fb0: r16 = 0.200000
    //     0x720fb0: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x720fb4: ldr             x16, [x16, #0x1f0]
    // 0x720fb8: str             x16, [SP]
    // 0x720fbc: r1 = Instance_Color
    //     0x720fbc: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x720fc0: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x720fc0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x720fc4: ldr             x4, [x4, #0x198]
    // 0x720fc8: r0 = withValues()
    //     0x720fc8: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x720fcc: stur            x0, [fp, #-0x20]
    // 0x720fd0: r0 = Radius()
    //     0x720fd0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x720fd4: d0 = 12.000000
    //     0x720fd4: fmov            d0, #12.00000000
    // 0x720fd8: stur            x0, [fp, #-0x38]
    // 0x720fdc: StoreField: r0->field_7 = d0
    //     0x720fdc: stur            d0, [x0, #7]
    // 0x720fe0: StoreField: r0->field_f = d0
    //     0x720fe0: stur            d0, [x0, #0xf]
    // 0x720fe4: r0 = BorderRadius()
    //     0x720fe4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x720fe8: mov             x1, x0
    // 0x720fec: ldur            x0, [fp, #-0x38]
    // 0x720ff0: stur            x1, [fp, #-0x40]
    // 0x720ff4: StoreField: r1->field_7 = r0
    //     0x720ff4: stur            w0, [x1, #7]
    // 0x720ff8: StoreField: r1->field_b = r0
    //     0x720ff8: stur            w0, [x1, #0xb]
    // 0x720ffc: StoreField: r1->field_f = r0
    //     0x720ffc: stur            w0, [x1, #0xf]
    // 0x721000: StoreField: r1->field_13 = r0
    //     0x721000: stur            w0, [x1, #0x13]
    // 0x721004: r0 = BoxDecoration()
    //     0x721004: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x721008: mov             x1, x0
    // 0x72100c: ldur            x0, [fp, #-0x20]
    // 0x721010: stur            x1, [fp, #-0x38]
    // 0x721014: StoreField: r1->field_7 = r0
    //     0x721014: stur            w0, [x1, #7]
    // 0x721018: ldur            x0, [fp, #-0x40]
    // 0x72101c: StoreField: r1->field_13 = r0
    //     0x72101c: stur            w0, [x1, #0x13]
    // 0x721020: r0 = Instance_BoxShape
    //     0x721020: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x721024: ldr             x0, [x0, #0x1c8]
    // 0x721028: StoreField: r1->field_23 = r0
    //     0x721028: stur            w0, [x1, #0x23]
    // 0x72102c: ldur            x2, [fp, #-0x18]
    // 0x721030: cbnz            x2, #0x721040
    // 0x721034: r3 = "Başlangıç"
    //     0x721034: add             x3, PP, #0x13, lsl #12  ; [pp+0x13aa8] "Başlangıç"
    //     0x721038: ldr             x3, [x3, #0xaa8]
    // 0x72103c: b               #0x721048
    // 0x721040: r3 = "Bitiş"
    //     0x721040: add             x3, PP, #0x13, lsl #12  ; [pp+0x13ab8] "Bitiş"
    //     0x721044: ldr             x3, [x3, #0xab8]
    // 0x721048: ldur            x2, [fp, #-0x28]
    // 0x72104c: stur            x3, [fp, #-0x20]
    // 0x721050: r0 = Text()
    //     0x721050: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x721054: mov             x1, x0
    // 0x721058: ldur            x0, [fp, #-0x20]
    // 0x72105c: stur            x1, [fp, #-0x40]
    // 0x721060: StoreField: r1->field_b = r0
    //     0x721060: stur            w0, [x1, #0xb]
    // 0x721064: r0 = Instance_TextStyle
    //     0x721064: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1ff20] Obj!TextStyle@a17e51
    //     0x721068: ldr             x0, [x0, #0xf20]
    // 0x72106c: StoreField: r1->field_13 = r0
    //     0x72106c: stur            w0, [x1, #0x13]
    // 0x721070: r0 = Container()
    //     0x721070: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x721074: stur            x0, [fp, #-0x20]
    // 0x721078: r16 = Instance_EdgeInsets
    //     0x721078: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a508] Obj!EdgeInsets@a0c351
    //     0x72107c: ldr             x16, [x16, #0x508]
    // 0x721080: ldur            lr, [fp, #-0x38]
    // 0x721084: stp             lr, x16, [SP, #8]
    // 0x721088: ldur            x16, [fp, #-0x40]
    // 0x72108c: str             x16, [SP]
    // 0x721090: mov             x1, x0
    // 0x721094: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x721094: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x721098: ldr             x4, [x4, #0x1e8]
    // 0x72109c: r0 = Container()
    //     0x72109c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7210a0: ldur            x0, [fp, #-0x28]
    // 0x7210a4: LoadField: r1 = r0->field_b
    //     0x7210a4: ldur            w1, [x0, #0xb]
    // 0x7210a8: LoadField: r2 = r0->field_f
    //     0x7210a8: ldur            w2, [x0, #0xf]
    // 0x7210ac: DecompressPointer r2
    //     0x7210ac: add             x2, x2, HEAP, lsl #32
    // 0x7210b0: LoadField: r3 = r2->field_b
    //     0x7210b0: ldur            w3, [x2, #0xb]
    // 0x7210b4: r2 = LoadInt32Instr(r1)
    //     0x7210b4: sbfx            x2, x1, #1, #0x1f
    // 0x7210b8: stur            x2, [fp, #-0x18]
    // 0x7210bc: r1 = LoadInt32Instr(r3)
    //     0x7210bc: sbfx            x1, x3, #1, #0x1f
    // 0x7210c0: cmp             x2, x1
    // 0x7210c4: b.ne            #0x7210d0
    // 0x7210c8: mov             x1, x0
    // 0x7210cc: r0 = _growToNextCapacity()
    //     0x7210cc: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7210d0: ldur            x2, [fp, #-0x28]
    // 0x7210d4: ldur            x3, [fp, #-0x18]
    // 0x7210d8: add             x0, x3, #1
    // 0x7210dc: lsl             x1, x0, #1
    // 0x7210e0: StoreField: r2->field_b = r1
    //     0x7210e0: stur            w1, [x2, #0xb]
    // 0x7210e4: LoadField: r1 = r2->field_f
    //     0x7210e4: ldur            w1, [x2, #0xf]
    // 0x7210e8: DecompressPointer r1
    //     0x7210e8: add             x1, x1, HEAP, lsl #32
    // 0x7210ec: ldur            x0, [fp, #-0x20]
    // 0x7210f0: ArrayStore: r1[r3] = r0  ; List_4
    //     0x7210f0: add             x25, x1, x3, lsl #2
    //     0x7210f4: add             x25, x25, #0xf
    //     0x7210f8: str             w0, [x25]
    //     0x7210fc: tbz             w0, #0, #0x721118
    //     0x721100: ldurb           w16, [x1, #-1]
    //     0x721104: ldurb           w17, [x0, #-1]
    //     0x721108: and             x16, x17, x16, lsr #2
    //     0x72110c: tst             x16, HEAP, lsr #32
    //     0x721110: b.eq            #0x721118
    //     0x721114: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x721118: r0 = Row()
    //     0x721118: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x72111c: mov             x1, x0
    // 0x721120: r0 = Instance_Axis
    //     0x721120: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x721124: stur            x1, [fp, #-0x20]
    // 0x721128: StoreField: r1->field_f = r0
    //     0x721128: stur            w0, [x1, #0xf]
    // 0x72112c: r0 = Instance_MainAxisAlignment
    //     0x72112c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x721130: ldr             x0, [x0, #0x230]
    // 0x721134: StoreField: r1->field_13 = r0
    //     0x721134: stur            w0, [x1, #0x13]
    // 0x721138: r2 = Instance_MainAxisSize
    //     0x721138: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x72113c: ldr             x2, [x2, #0x330]
    // 0x721140: ArrayStore: r1[0] = r2  ; List_4
    //     0x721140: stur            w2, [x1, #0x17]
    // 0x721144: r3 = Instance_CrossAxisAlignment
    //     0x721144: add             x3, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x721148: ldr             x3, [x3, #0x338]
    // 0x72114c: StoreField: r1->field_1b = r3
    //     0x72114c: stur            w3, [x1, #0x1b]
    // 0x721150: r4 = Instance_VerticalDirection
    //     0x721150: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x721154: ldr             x4, [x4, #0x340]
    // 0x721158: StoreField: r1->field_23 = r4
    //     0x721158: stur            w4, [x1, #0x23]
    // 0x72115c: r5 = Instance_Clip
    //     0x72115c: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x721160: ldr             x5, [x5, #0x348]
    // 0x721164: StoreField: r1->field_2b = r5
    //     0x721164: stur            w5, [x1, #0x2b]
    // 0x721168: StoreField: r1->field_2f = rZR
    //     0x721168: stur            xzr, [x1, #0x2f]
    // 0x72116c: ldur            x6, [fp, #-0x28]
    // 0x721170: StoreField: r1->field_b = r6
    //     0x721170: stur            w6, [x1, #0xb]
    // 0x721174: r0 = Container()
    //     0x721174: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x721178: stur            x0, [fp, #-0x28]
    // 0x72117c: r16 = inf
    //     0x72117c: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x721180: ldr             x16, [x16, #0xb20]
    // 0x721184: r30 = Instance_EdgeInsets
    //     0x721184: add             lr, PP, #0x13, lsl #12  ; [pp+0x139a0] Obj!EdgeInsets@a0c4a1
    //     0x721188: ldr             lr, [lr, #0x9a0]
    // 0x72118c: stp             lr, x16, [SP, #0x10]
    // 0x721190: ldur            x16, [fp, #-0x30]
    // 0x721194: ldur            lr, [fp, #-0x20]
    // 0x721198: stp             lr, x16, [SP]
    // 0x72119c: mov             x1, x0
    // 0x7211a0: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, padding, 0x2, width, 0x1, null]
    //     0x7211a0: add             x4, PP, #0x13, lsl #12  ; [pp+0x13b28] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "padding", 0x2, "width", 0x1, Null]
    //     0x7211a4: ldr             x4, [x4, #0xb28]
    // 0x7211a8: r0 = Container()
    //     0x7211a8: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7211ac: r16 = 0.050000
    //     0x7211ac: ldr             x16, [PP, #0x5020]  ; [pp+0x5020] 0.05
    // 0x7211b0: str             x16, [SP]
    // 0x7211b4: r1 = Instance_Color
    //     0x7211b4: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x7211b8: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7211b8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7211bc: ldr             x4, [x4, #0x198]
    // 0x7211c0: r0 = withValues()
    //     0x7211c0: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7211c4: stur            x0, [fp, #-0x20]
    // 0x7211c8: r0 = BoxShadow()
    //     0x7211c8: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7211cc: stur            x0, [fp, #-0x30]
    // 0x7211d0: ArrayStore: r0[0] = rZR  ; List_8
    //     0x7211d0: stur            xzr, [x0, #0x17]
    // 0x7211d4: r1 = Instance_BlurStyle
    //     0x7211d4: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x7211d8: ldr             x1, [x1, #0x9b0]
    // 0x7211dc: StoreField: r0->field_1f = r1
    //     0x7211dc: stur            w1, [x0, #0x1f]
    // 0x7211e0: ldur            x1, [fp, #-0x20]
    // 0x7211e4: StoreField: r0->field_7 = r1
    //     0x7211e4: stur            w1, [x0, #7]
    // 0x7211e8: r1 = Instance_Offset
    //     0x7211e8: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b8] Obj!Offset@a26af1
    //     0x7211ec: ldr             x1, [x1, #0x9b8]
    // 0x7211f0: StoreField: r0->field_b = r1
    //     0x7211f0: stur            w1, [x0, #0xb]
    // 0x7211f4: d0 = 10.000000
    //     0x7211f4: fmov            d0, #10.00000000
    // 0x7211f8: StoreField: r0->field_f = d0
    //     0x7211f8: stur            d0, [x0, #0xf]
    // 0x7211fc: r1 = Null
    //     0x7211fc: mov             x1, NULL
    // 0x721200: r2 = 2
    //     0x721200: mov             x2, #2
    // 0x721204: r0 = AllocateArray()
    //     0x721204: bl              #0x9280a0  ; AllocateArrayStub
    // 0x721208: mov             x2, x0
    // 0x72120c: ldur            x0, [fp, #-0x30]
    // 0x721210: stur            x2, [fp, #-0x20]
    // 0x721214: StoreField: r2->field_f = r0
    //     0x721214: stur            w0, [x2, #0xf]
    // 0x721218: r1 = <BoxShadow>
    //     0x721218: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x72121c: ldr             x1, [x1, #0x9c0]
    // 0x721220: r0 = AllocateGrowableArray()
    //     0x721220: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x721224: mov             x1, x0
    // 0x721228: ldur            x0, [fp, #-0x20]
    // 0x72122c: stur            x1, [fp, #-0x30]
    // 0x721230: StoreField: r1->field_f = r0
    //     0x721230: stur            w0, [x1, #0xf]
    // 0x721234: r0 = 2
    //     0x721234: mov             x0, #2
    // 0x721238: StoreField: r1->field_b = r0
    //     0x721238: stur            w0, [x1, #0xb]
    // 0x72123c: r0 = BoxDecoration()
    //     0x72123c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x721240: mov             x3, x0
    // 0x721244: r0 = Instance_Color
    //     0x721244: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x721248: stur            x3, [fp, #-0x20]
    // 0x72124c: StoreField: r3->field_7 = r0
    //     0x72124c: stur            w0, [x3, #7]
    // 0x721250: r0 = Instance_BorderRadius
    //     0x721250: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1ff28] Obj!BorderRadius@a0ccb1
    //     0x721254: ldr             x0, [x0, #0xf28]
    // 0x721258: StoreField: r3->field_13 = r0
    //     0x721258: stur            w0, [x3, #0x13]
    // 0x72125c: ldur            x1, [fp, #-0x30]
    // 0x721260: ArrayStore: r3[0] = r1  ; List_4
    //     0x721260: stur            w1, [x3, #0x17]
    // 0x721264: r1 = Instance_BoxShape
    //     0x721264: add             x1, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x721268: ldr             x1, [x1, #0x1c8]
    // 0x72126c: StoreField: r3->field_23 = r1
    //     0x72126c: stur            w1, [x3, #0x23]
    // 0x721270: ldur            x1, [fp, #-8]
    // 0x721274: ldur            x2, [fp, #-0x10]
    // 0x721278: r0 = _buildImageContent()
    //     0x721278: bl              #0x7213ec  ; [package:umrem_demo/features/dualar/screens/savt_dualari_page.dart] _SavtDualariPageState::_buildImageContent
    // 0x72127c: stur            x0, [fp, #-8]
    // 0x721280: r0 = ClipRRect()
    //     0x721280: bl              #0x67cabc  ; AllocateClipRRectStub -> ClipRRect (size=0x1c)
    // 0x721284: mov             x1, x0
    // 0x721288: r0 = Instance_BorderRadius
    //     0x721288: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1ff28] Obj!BorderRadius@a0ccb1
    //     0x72128c: ldr             x0, [x0, #0xf28]
    // 0x721290: stur            x1, [fp, #-0x10]
    // 0x721294: StoreField: r1->field_f = r0
    //     0x721294: stur            w0, [x1, #0xf]
    // 0x721298: r0 = Instance_Clip
    //     0x721298: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d38] Obj!Clip@a2d931
    //     0x72129c: ldr             x0, [x0, #0xd38]
    // 0x7212a0: ArrayStore: r1[0] = r0  ; List_4
    //     0x7212a0: stur            w0, [x1, #0x17]
    // 0x7212a4: ldur            x0, [fp, #-8]
    // 0x7212a8: StoreField: r1->field_b = r0
    //     0x7212a8: stur            w0, [x1, #0xb]
    // 0x7212ac: r0 = Container()
    //     0x7212ac: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7212b0: stur            x0, [fp, #-8]
    // 0x7212b4: r16 = inf
    //     0x7212b4: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x7212b8: ldr             x16, [x16, #0xb20]
    // 0x7212bc: ldur            lr, [fp, #-0x20]
    // 0x7212c0: stp             lr, x16, [SP, #8]
    // 0x7212c4: ldur            x16, [fp, #-0x10]
    // 0x7212c8: str             x16, [SP]
    // 0x7212cc: mov             x1, x0
    // 0x7212d0: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, width, 0x1, null]
    //     0x7212d0: add             x4, PP, #0x1f, lsl #12  ; [pp+0x1ff30] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "width", 0x1, Null]
    //     0x7212d4: ldr             x4, [x4, #0xf30]
    // 0x7212d8: r0 = Container()
    //     0x7212d8: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7212dc: r1 = <FlexParentData>
    //     0x7212dc: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7212e0: ldr             x1, [x1, #0x340]
    // 0x7212e4: r0 = Expanded()
    //     0x7212e4: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7212e8: mov             x3, x0
    // 0x7212ec: r0 = 1
    //     0x7212ec: mov             x0, #1
    // 0x7212f0: stur            x3, [fp, #-0x10]
    // 0x7212f4: StoreField: r3->field_13 = r0
    //     0x7212f4: stur            x0, [x3, #0x13]
    // 0x7212f8: r0 = Instance_FlexFit
    //     0x7212f8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7212fc: ldr             x0, [x0, #0x348]
    // 0x721300: StoreField: r3->field_1b = r0
    //     0x721300: stur            w0, [x3, #0x1b]
    // 0x721304: ldur            x0, [fp, #-8]
    // 0x721308: StoreField: r3->field_b = r0
    //     0x721308: stur            w0, [x3, #0xb]
    // 0x72130c: r1 = Null
    //     0x72130c: mov             x1, NULL
    // 0x721310: r2 = 4
    //     0x721310: mov             x2, #4
    // 0x721314: r0 = AllocateArray()
    //     0x721314: bl              #0x9280a0  ; AllocateArrayStub
    // 0x721318: mov             x2, x0
    // 0x72131c: ldur            x0, [fp, #-0x28]
    // 0x721320: stur            x2, [fp, #-8]
    // 0x721324: StoreField: r2->field_f = r0
    //     0x721324: stur            w0, [x2, #0xf]
    // 0x721328: ldur            x0, [fp, #-0x10]
    // 0x72132c: StoreField: r2->field_13 = r0
    //     0x72132c: stur            w0, [x2, #0x13]
    // 0x721330: r1 = <Widget>
    //     0x721330: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x721334: r0 = AllocateGrowableArray()
    //     0x721334: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x721338: mov             x1, x0
    // 0x72133c: ldur            x0, [fp, #-8]
    // 0x721340: stur            x1, [fp, #-0x10]
    // 0x721344: StoreField: r1->field_f = r0
    //     0x721344: stur            w0, [x1, #0xf]
    // 0x721348: r0 = 4
    //     0x721348: mov             x0, #4
    // 0x72134c: StoreField: r1->field_b = r0
    //     0x72134c: stur            w0, [x1, #0xb]
    // 0x721350: r0 = Column()
    //     0x721350: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x721354: mov             x1, x0
    // 0x721358: r0 = Instance_Axis
    //     0x721358: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72135c: stur            x1, [fp, #-8]
    // 0x721360: StoreField: r1->field_f = r0
    //     0x721360: stur            w0, [x1, #0xf]
    // 0x721364: r0 = Instance_MainAxisAlignment
    //     0x721364: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x721368: ldr             x0, [x0, #0x230]
    // 0x72136c: StoreField: r1->field_13 = r0
    //     0x72136c: stur            w0, [x1, #0x13]
    // 0x721370: r0 = Instance_MainAxisSize
    //     0x721370: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x721374: ldr             x0, [x0, #0x330]
    // 0x721378: ArrayStore: r1[0] = r0  ; List_4
    //     0x721378: stur            w0, [x1, #0x17]
    // 0x72137c: r0 = Instance_CrossAxisAlignment
    //     0x72137c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x721380: ldr             x0, [x0, #0x338]
    // 0x721384: StoreField: r1->field_1b = r0
    //     0x721384: stur            w0, [x1, #0x1b]
    // 0x721388: r0 = Instance_VerticalDirection
    //     0x721388: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72138c: ldr             x0, [x0, #0x340]
    // 0x721390: StoreField: r1->field_23 = r0
    //     0x721390: stur            w0, [x1, #0x23]
    // 0x721394: r0 = Instance_Clip
    //     0x721394: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x721398: ldr             x0, [x0, #0x348]
    // 0x72139c: StoreField: r1->field_2b = r0
    //     0x72139c: stur            w0, [x1, #0x2b]
    // 0x7213a0: StoreField: r1->field_2f = rZR
    //     0x7213a0: stur            xzr, [x1, #0x2f]
    // 0x7213a4: ldur            x0, [fp, #-0x10]
    // 0x7213a8: StoreField: r1->field_b = r0
    //     0x7213a8: stur            w0, [x1, #0xb]
    // 0x7213ac: r0 = Container()
    //     0x7213ac: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7213b0: stur            x0, [fp, #-0x10]
    // 0x7213b4: r16 = Instance_EdgeInsets
    //     0x7213b4: add             x16, PP, #0x12, lsl #12  ; [pp+0x121e0] Obj!EdgeInsets@a0bd51
    //     0x7213b8: ldr             x16, [x16, #0x1e0]
    // 0x7213bc: ldur            lr, [fp, #-8]
    // 0x7213c0: stp             lr, x16, [SP]
    // 0x7213c4: mov             x1, x0
    // 0x7213c8: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, margin, 0x1, null]
    //     0x7213c8: add             x4, PP, #0x1a, lsl #12  ; [pp+0x1a668] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "margin", 0x1, Null]
    //     0x7213cc: ldr             x4, [x4, #0x668]
    // 0x7213d0: r0 = Container()
    //     0x7213d0: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7213d4: ldur            x0, [fp, #-0x10]
    // 0x7213d8: LeaveFrame
    //     0x7213d8: mov             SP, fp
    //     0x7213dc: ldp             fp, lr, [SP], #0x10
    // 0x7213e0: ret
    //     0x7213e0: ret             
    // 0x7213e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7213e4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7213e8: b               #0x720e04
  }
  _ _buildImageContent(/* No info */) {
    // ** addr: 0x7213ec, size: 0x434
    // 0x7213ec: EnterFrame
    //     0x7213ec: stp             fp, lr, [SP, #-0x10]!
    //     0x7213f0: mov             fp, SP
    // 0x7213f4: AllocStack(0x38)
    //     0x7213f4: sub             SP, SP, #0x38
    // 0x7213f8: SetupParameters(_SavtDualariPageState this /* r1 => r0, fp-0x8 */, dynamic _ /* r2 => r1, fp-0x10 */)
    //     0x7213f8: mov             x0, x1
    //     0x7213fc: stur            x1, [fp, #-8]
    //     0x721400: mov             x1, x2
    //     0x721404: stur            x2, [fp, #-0x10]
    // 0x721408: CheckStackOverflow
    //     0x721408: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72140c: cmp             SP, x16
    //     0x721410: b.ls            #0x721818
    // 0x721414: r1 = 1
    //     0x721414: mov             x1, #1
    // 0x721418: r0 = AllocateContext()
    //     0x721418: bl              #0x927010  ; AllocateContextStub
    // 0x72141c: mov             x4, x0
    // 0x721420: ldur            x3, [fp, #-8]
    // 0x721424: stur            x4, [fp, #-0x18]
    // 0x721428: StoreField: r4->field_f = r3
    //     0x721428: stur            w3, [x4, #0xf]
    // 0x72142c: ldur            x5, [fp, #-0x10]
    // 0x721430: r0 = LoadClassIdInstr(r5)
    //     0x721430: ldur            x0, [x5, #-1]
    //     0x721434: ubfx            x0, x0, #0xc, #0x14
    // 0x721438: mov             x1, x5
    // 0x72143c: r2 = "arabicFiles"
    //     0x72143c: add             x2, PP, #0x1b, lsl #12  ; [pp+0x1bcc0] "arabicFiles"
    //     0x721440: ldr             x2, [x2, #0xcc0]
    // 0x721444: r0 = GDT[cid_x0 + 0x361]()
    //     0x721444: add             lr, x0, #0x361
    //     0x721448: ldr             lr, [x21, lr, lsl #3]
    //     0x72144c: blr             lr
    // 0x721450: tbnz            w0, #4, #0x721664
    // 0x721454: ldur            x3, [fp, #-0x10]
    // 0x721458: r0 = LoadClassIdInstr(r3)
    //     0x721458: ldur            x0, [x3, #-1]
    //     0x72145c: ubfx            x0, x0, #0xc, #0x14
    // 0x721460: mov             x1, x3
    // 0x721464: r2 = "turkishFiles"
    //     0x721464: add             x2, PP, #0x1b, lsl #12  ; [pp+0x1bcd8] "turkishFiles"
    //     0x721468: ldr             x2, [x2, #0xcd8]
    // 0x72146c: r0 = GDT[cid_x0 + 0x361]()
    //     0x72146c: add             lr, x0, #0x361
    //     0x721470: ldr             lr, [x21, lr, lsl #3]
    //     0x721474: blr             lr
    // 0x721478: tbnz            w0, #4, #0x721618
    // 0x72147c: ldur            x0, [fp, #-8]
    // 0x721480: LoadField: r1 = r0->field_1f
    //     0x721480: ldur            x1, [x0, #0x1f]
    // 0x721484: cbnz            x1, #0x7214e0
    // 0x721488: ldur            x3, [fp, #-0x10]
    // 0x72148c: r0 = LoadClassIdInstr(r3)
    //     0x72148c: ldur            x0, [x3, #-1]
    //     0x721490: ubfx            x0, x0, #0xc, #0x14
    // 0x721494: mov             x1, x3
    // 0x721498: r2 = "arabicFiles"
    //     0x721498: add             x2, PP, #0x1b, lsl #12  ; [pp+0x1bcc0] "arabicFiles"
    //     0x72149c: ldr             x2, [x2, #0xcc0]
    // 0x7214a0: r0 = GDT[cid_x0 + 0x36e]()
    //     0x7214a0: add             lr, x0, #0x36e
    //     0x7214a4: ldr             lr, [x21, lr, lsl #3]
    //     0x7214a8: blr             lr
    // 0x7214ac: mov             x3, x0
    // 0x7214b0: r2 = Null
    //     0x7214b0: mov             x2, NULL
    // 0x7214b4: r1 = Null
    //     0x7214b4: mov             x1, NULL
    // 0x7214b8: stur            x3, [fp, #-8]
    // 0x7214bc: r8 = Iterable
    //     0x7214bc: ldr             x8, [PP, #0xda0]  ; [pp+0xda0] Type: Iterable
    // 0x7214c0: r3 = Null
    //     0x7214c0: add             x3, PP, #0x20, lsl #12  ; [pp+0x20100] Null
    //     0x7214c4: ldr             x3, [x3, #0x100]
    // 0x7214c8: r0 = Iterable()
    //     0x7214c8: bl              #0x3d59fc  ; IsType_Iterable_Stub
    // 0x7214cc: ldur            x2, [fp, #-8]
    // 0x7214d0: r1 = <String>
    //     0x7214d0: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7214d4: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7214d4: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7214d8: r0 = List.from()
    //     0x7214d8: bl              #0x490278  ; [dart:core] List::List.from
    // 0x7214dc: b               #0x721534
    // 0x7214e0: ldur            x3, [fp, #-0x10]
    // 0x7214e4: r0 = LoadClassIdInstr(r3)
    //     0x7214e4: ldur            x0, [x3, #-1]
    //     0x7214e8: ubfx            x0, x0, #0xc, #0x14
    // 0x7214ec: mov             x1, x3
    // 0x7214f0: r2 = "turkishFiles"
    //     0x7214f0: add             x2, PP, #0x1b, lsl #12  ; [pp+0x1bcd8] "turkishFiles"
    //     0x7214f4: ldr             x2, [x2, #0xcd8]
    // 0x7214f8: r0 = GDT[cid_x0 + 0x36e]()
    //     0x7214f8: add             lr, x0, #0x36e
    //     0x7214fc: ldr             lr, [x21, lr, lsl #3]
    //     0x721500: blr             lr
    // 0x721504: mov             x3, x0
    // 0x721508: r2 = Null
    //     0x721508: mov             x2, NULL
    // 0x72150c: r1 = Null
    //     0x72150c: mov             x1, NULL
    // 0x721510: stur            x3, [fp, #-8]
    // 0x721514: r8 = Iterable
    //     0x721514: ldr             x8, [PP, #0xda0]  ; [pp+0xda0] Type: Iterable
    // 0x721518: r3 = Null
    //     0x721518: add             x3, PP, #0x20, lsl #12  ; [pp+0x20110] Null
    //     0x72151c: ldr             x3, [x3, #0x110]
    // 0x721520: r0 = Iterable()
    //     0x721520: bl              #0x3d59fc  ; IsType_Iterable_Stub
    // 0x721524: ldur            x2, [fp, #-8]
    // 0x721528: r1 = <String>
    //     0x721528: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x72152c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x72152c: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x721530: r0 = List.from()
    //     0x721530: bl              #0x490278  ; [dart:core] List::List.from
    // 0x721534: ldur            x2, [fp, #-0x18]
    // 0x721538: stur            x0, [fp, #-8]
    // 0x72153c: r1 = Function '<anonymous closure>':.
    //     0x72153c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20120] AnonymousClosure: (0x721820), in [package:umrem_demo/features/dualar/screens/savt_dualari_page.dart] _SavtDualariPageState::_buildImageContent (0x7213ec)
    //     0x721540: ldr             x1, [x1, #0x120]
    // 0x721544: r0 = AllocateClosure()
    //     0x721544: bl              #0x9273d4  ; AllocateClosureStub
    // 0x721548: r16 = <Widget>
    //     0x721548: ldr             x16, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72154c: ldur            lr, [fp, #-8]
    // 0x721550: stp             lr, x16, [SP, #8]
    // 0x721554: str             x0, [SP]
    // 0x721558: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x721558: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x72155c: r0 = map()
    //     0x72155c: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x721560: LoadField: r1 = r0->field_7
    //     0x721560: ldur            w1, [x0, #7]
    // 0x721564: DecompressPointer r1
    //     0x721564: add             x1, x1, HEAP, lsl #32
    // 0x721568: mov             x2, x0
    // 0x72156c: r0 = _GrowableList.of()
    //     0x72156c: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x721570: stur            x0, [fp, #-8]
    // 0x721574: r0 = Column()
    //     0x721574: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x721578: mov             x1, x0
    // 0x72157c: r0 = Instance_Axis
    //     0x72157c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x721580: stur            x1, [fp, #-0x20]
    // 0x721584: StoreField: r1->field_f = r0
    //     0x721584: stur            w0, [x1, #0xf]
    // 0x721588: r4 = Instance_MainAxisAlignment
    //     0x721588: add             x4, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x72158c: ldr             x4, [x4, #0x230]
    // 0x721590: StoreField: r1->field_13 = r4
    //     0x721590: stur            w4, [x1, #0x13]
    // 0x721594: r5 = Instance_MainAxisSize
    //     0x721594: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x721598: ldr             x5, [x5, #0x330]
    // 0x72159c: ArrayStore: r1[0] = r5  ; List_4
    //     0x72159c: stur            w5, [x1, #0x17]
    // 0x7215a0: r6 = Instance_CrossAxisAlignment
    //     0x7215a0: add             x6, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7215a4: ldr             x6, [x6, #0x338]
    // 0x7215a8: StoreField: r1->field_1b = r6
    //     0x7215a8: stur            w6, [x1, #0x1b]
    // 0x7215ac: r7 = Instance_VerticalDirection
    //     0x7215ac: add             x7, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7215b0: ldr             x7, [x7, #0x340]
    // 0x7215b4: StoreField: r1->field_23 = r7
    //     0x7215b4: stur            w7, [x1, #0x23]
    // 0x7215b8: r8 = Instance_Clip
    //     0x7215b8: add             x8, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7215bc: ldr             x8, [x8, #0x348]
    // 0x7215c0: StoreField: r1->field_2b = r8
    //     0x7215c0: stur            w8, [x1, #0x2b]
    // 0x7215c4: StoreField: r1->field_2f = rZR
    //     0x7215c4: stur            xzr, [x1, #0x2f]
    // 0x7215c8: ldur            x2, [fp, #-8]
    // 0x7215cc: StoreField: r1->field_b = r2
    //     0x7215cc: stur            w2, [x1, #0xb]
    // 0x7215d0: r0 = SingleChildScrollView()
    //     0x7215d0: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x7215d4: r9 = Instance_Axis
    //     0x7215d4: ldr             x9, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7215d8: StoreField: r0->field_b = r9
    //     0x7215d8: stur            w9, [x0, #0xb]
    // 0x7215dc: r10 = false
    //     0x7215dc: add             x10, NULL, #0x30  ; false
    // 0x7215e0: StoreField: r0->field_f = r10
    //     0x7215e0: stur            w10, [x0, #0xf]
    // 0x7215e4: ldur            x1, [fp, #-0x20]
    // 0x7215e8: StoreField: r0->field_23 = r1
    //     0x7215e8: stur            w1, [x0, #0x23]
    // 0x7215ec: r11 = Instance_DragStartBehavior
    //     0x7215ec: ldr             x11, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7215f0: StoreField: r0->field_27 = r11
    //     0x7215f0: stur            w11, [x0, #0x27]
    // 0x7215f4: r12 = Instance_Clip
    //     0x7215f4: add             x12, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x7215f8: ldr             x12, [x12, #0x2d8]
    // 0x7215fc: StoreField: r0->field_2b = r12
    //     0x7215fc: stur            w12, [x0, #0x2b]
    // 0x721600: r13 = Instance_HitTestBehavior
    //     0x721600: add             x13, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x721604: ldr             x13, [x13, #0xe20]
    // 0x721608: StoreField: r0->field_2f = r13
    //     0x721608: stur            w13, [x0, #0x2f]
    // 0x72160c: LeaveFrame
    //     0x72160c: mov             SP, fp
    //     0x721610: ldp             fp, lr, [SP], #0x10
    // 0x721614: ret
    //     0x721614: ret             
    // 0x721618: ldur            x3, [fp, #-0x10]
    // 0x72161c: r6 = Instance_CrossAxisAlignment
    //     0x72161c: add             x6, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x721620: ldr             x6, [x6, #0x338]
    // 0x721624: r4 = Instance_MainAxisAlignment
    //     0x721624: add             x4, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x721628: ldr             x4, [x4, #0x230]
    // 0x72162c: r5 = Instance_MainAxisSize
    //     0x72162c: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x721630: ldr             x5, [x5, #0x330]
    // 0x721634: r7 = Instance_VerticalDirection
    //     0x721634: add             x7, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x721638: ldr             x7, [x7, #0x340]
    // 0x72163c: r9 = Instance_Axis
    //     0x72163c: ldr             x9, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x721640: r10 = false
    //     0x721640: add             x10, NULL, #0x30  ; false
    // 0x721644: r11 = Instance_DragStartBehavior
    //     0x721644: ldr             x11, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x721648: r12 = Instance_Clip
    //     0x721648: add             x12, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x72164c: ldr             x12, [x12, #0x2d8]
    // 0x721650: r13 = Instance_HitTestBehavior
    //     0x721650: add             x13, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x721654: ldr             x13, [x13, #0xe20]
    // 0x721658: r8 = Instance_Clip
    //     0x721658: add             x8, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72165c: ldr             x8, [x8, #0x348]
    // 0x721660: b               #0x7216ac
    // 0x721664: ldur            x3, [fp, #-0x10]
    // 0x721668: r6 = Instance_CrossAxisAlignment
    //     0x721668: add             x6, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x72166c: ldr             x6, [x6, #0x338]
    // 0x721670: r4 = Instance_MainAxisAlignment
    //     0x721670: add             x4, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x721674: ldr             x4, [x4, #0x230]
    // 0x721678: r5 = Instance_MainAxisSize
    //     0x721678: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x72167c: ldr             x5, [x5, #0x330]
    // 0x721680: r7 = Instance_VerticalDirection
    //     0x721680: add             x7, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x721684: ldr             x7, [x7, #0x340]
    // 0x721688: r9 = Instance_Axis
    //     0x721688: ldr             x9, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72168c: r10 = false
    //     0x72168c: add             x10, NULL, #0x30  ; false
    // 0x721690: r11 = Instance_DragStartBehavior
    //     0x721690: ldr             x11, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x721694: r12 = Instance_Clip
    //     0x721694: add             x12, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x721698: ldr             x12, [x12, #0x2d8]
    // 0x72169c: r13 = Instance_HitTestBehavior
    //     0x72169c: add             x13, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x7216a0: ldr             x13, [x13, #0xe20]
    // 0x7216a4: r8 = Instance_Clip
    //     0x7216a4: add             x8, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7216a8: ldr             x8, [x8, #0x348]
    // 0x7216ac: r0 = LoadClassIdInstr(r3)
    //     0x7216ac: ldur            x0, [x3, #-1]
    //     0x7216b0: ubfx            x0, x0, #0xc, #0x14
    // 0x7216b4: mov             x1, x3
    // 0x7216b8: r2 = "files"
    //     0x7216b8: add             x2, PP, #0x1b, lsl #12  ; [pp+0x1bdf0] "files"
    //     0x7216bc: ldr             x2, [x2, #0xdf0]
    // 0x7216c0: r0 = GDT[cid_x0 + 0x361]()
    //     0x7216c0: add             lr, x0, #0x361
    //     0x7216c4: ldr             lr, [x21, lr, lsl #3]
    //     0x7216c8: blr             lr
    // 0x7216cc: tbnz            w0, #4, #0x721804
    // 0x7216d0: ldur            x1, [fp, #-0x10]
    // 0x7216d4: r0 = LoadClassIdInstr(r1)
    //     0x7216d4: ldur            x0, [x1, #-1]
    //     0x7216d8: ubfx            x0, x0, #0xc, #0x14
    // 0x7216dc: r2 = "files"
    //     0x7216dc: add             x2, PP, #0x1b, lsl #12  ; [pp+0x1bdf0] "files"
    //     0x7216e0: ldr             x2, [x2, #0xdf0]
    // 0x7216e4: r0 = GDT[cid_x0 + 0x36e]()
    //     0x7216e4: add             lr, x0, #0x36e
    //     0x7216e8: ldr             lr, [x21, lr, lsl #3]
    //     0x7216ec: blr             lr
    // 0x7216f0: mov             x3, x0
    // 0x7216f4: r2 = Null
    //     0x7216f4: mov             x2, NULL
    // 0x7216f8: r1 = Null
    //     0x7216f8: mov             x1, NULL
    // 0x7216fc: stur            x3, [fp, #-8]
    // 0x721700: r8 = Iterable
    //     0x721700: ldr             x8, [PP, #0xda0]  ; [pp+0xda0] Type: Iterable
    // 0x721704: r3 = Null
    //     0x721704: add             x3, PP, #0x20, lsl #12  ; [pp+0x20128] Null
    //     0x721708: ldr             x3, [x3, #0x128]
    // 0x72170c: r0 = Iterable()
    //     0x72170c: bl              #0x3d59fc  ; IsType_Iterable_Stub
    // 0x721710: ldur            x2, [fp, #-8]
    // 0x721714: r1 = <String>
    //     0x721714: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x721718: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x721718: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x72171c: r0 = List.from()
    //     0x72171c: bl              #0x490278  ; [dart:core] List::List.from
    // 0x721720: ldur            x2, [fp, #-0x18]
    // 0x721724: r1 = Function '<anonymous closure>':.
    //     0x721724: add             x1, PP, #0x20, lsl #12  ; [pp+0x20138] AnonymousClosure: (0x721820), in [package:umrem_demo/features/dualar/screens/savt_dualari_page.dart] _SavtDualariPageState::_buildImageContent (0x7213ec)
    //     0x721728: ldr             x1, [x1, #0x138]
    // 0x72172c: stur            x0, [fp, #-8]
    // 0x721730: r0 = AllocateClosure()
    //     0x721730: bl              #0x9273d4  ; AllocateClosureStub
    // 0x721734: r16 = <Widget>
    //     0x721734: ldr             x16, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x721738: ldur            lr, [fp, #-8]
    // 0x72173c: stp             lr, x16, [SP, #8]
    // 0x721740: str             x0, [SP]
    // 0x721744: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x721744: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x721748: r0 = map()
    //     0x721748: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x72174c: LoadField: r1 = r0->field_7
    //     0x72174c: ldur            w1, [x0, #7]
    // 0x721750: DecompressPointer r1
    //     0x721750: add             x1, x1, HEAP, lsl #32
    // 0x721754: mov             x2, x0
    // 0x721758: r0 = _GrowableList.of()
    //     0x721758: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x72175c: stur            x0, [fp, #-8]
    // 0x721760: r0 = Column()
    //     0x721760: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x721764: mov             x1, x0
    // 0x721768: r0 = Instance_Axis
    //     0x721768: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72176c: stur            x1, [fp, #-0x10]
    // 0x721770: StoreField: r1->field_f = r0
    //     0x721770: stur            w0, [x1, #0xf]
    // 0x721774: r2 = Instance_MainAxisAlignment
    //     0x721774: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x721778: ldr             x2, [x2, #0x230]
    // 0x72177c: StoreField: r1->field_13 = r2
    //     0x72177c: stur            w2, [x1, #0x13]
    // 0x721780: r2 = Instance_MainAxisSize
    //     0x721780: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x721784: ldr             x2, [x2, #0x330]
    // 0x721788: ArrayStore: r1[0] = r2  ; List_4
    //     0x721788: stur            w2, [x1, #0x17]
    // 0x72178c: r2 = Instance_CrossAxisAlignment
    //     0x72178c: add             x2, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x721790: ldr             x2, [x2, #0x338]
    // 0x721794: StoreField: r1->field_1b = r2
    //     0x721794: stur            w2, [x1, #0x1b]
    // 0x721798: r2 = Instance_VerticalDirection
    //     0x721798: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72179c: ldr             x2, [x2, #0x340]
    // 0x7217a0: StoreField: r1->field_23 = r2
    //     0x7217a0: stur            w2, [x1, #0x23]
    // 0x7217a4: r2 = Instance_Clip
    //     0x7217a4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7217a8: ldr             x2, [x2, #0x348]
    // 0x7217ac: StoreField: r1->field_2b = r2
    //     0x7217ac: stur            w2, [x1, #0x2b]
    // 0x7217b0: StoreField: r1->field_2f = rZR
    //     0x7217b0: stur            xzr, [x1, #0x2f]
    // 0x7217b4: ldur            x2, [fp, #-8]
    // 0x7217b8: StoreField: r1->field_b = r2
    //     0x7217b8: stur            w2, [x1, #0xb]
    // 0x7217bc: r0 = SingleChildScrollView()
    //     0x7217bc: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x7217c0: r1 = Instance_Axis
    //     0x7217c0: ldr             x1, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7217c4: StoreField: r0->field_b = r1
    //     0x7217c4: stur            w1, [x0, #0xb]
    // 0x7217c8: r1 = false
    //     0x7217c8: add             x1, NULL, #0x30  ; false
    // 0x7217cc: StoreField: r0->field_f = r1
    //     0x7217cc: stur            w1, [x0, #0xf]
    // 0x7217d0: ldur            x1, [fp, #-0x10]
    // 0x7217d4: StoreField: r0->field_23 = r1
    //     0x7217d4: stur            w1, [x0, #0x23]
    // 0x7217d8: r1 = Instance_DragStartBehavior
    //     0x7217d8: ldr             x1, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7217dc: StoreField: r0->field_27 = r1
    //     0x7217dc: stur            w1, [x0, #0x27]
    // 0x7217e0: r1 = Instance_Clip
    //     0x7217e0: add             x1, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x7217e4: ldr             x1, [x1, #0x2d8]
    // 0x7217e8: StoreField: r0->field_2b = r1
    //     0x7217e8: stur            w1, [x0, #0x2b]
    // 0x7217ec: r1 = Instance_HitTestBehavior
    //     0x7217ec: add             x1, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x7217f0: ldr             x1, [x1, #0xe20]
    // 0x7217f4: StoreField: r0->field_2f = r1
    //     0x7217f4: stur            w1, [x0, #0x2f]
    // 0x7217f8: LeaveFrame
    //     0x7217f8: mov             SP, fp
    //     0x7217fc: ldp             fp, lr, [SP], #0x10
    // 0x721800: ret
    //     0x721800: ret             
    // 0x721804: r0 = Instance_Center
    //     0x721804: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1ff78] Obj!Center@a1fe51
    //     0x721808: ldr             x0, [x0, #0xf78]
    // 0x72180c: LeaveFrame
    //     0x72180c: mov             SP, fp
    //     0x721810: ldp             fp, lr, [SP], #0x10
    // 0x721814: ret
    //     0x721814: ret             
    // 0x721818: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x721818: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72181c: b               #0x721414
  }
  [closure] Widget <anonymous closure>(dynamic, String) {
    // ** addr: 0x721820, size: 0x48
    // 0x721820: EnterFrame
    //     0x721820: stp             fp, lr, [SP, #-0x10]!
    //     0x721824: mov             fp, SP
    // 0x721828: ldr             x0, [fp, #0x18]
    // 0x72182c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x72182c: ldur            w1, [x0, #0x17]
    // 0x721830: DecompressPointer r1
    //     0x721830: add             x1, x1, HEAP, lsl #32
    // 0x721834: CheckStackOverflow
    //     0x721834: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x721838: cmp             SP, x16
    //     0x72183c: b.ls            #0x721860
    // 0x721840: LoadField: r0 = r1->field_f
    //     0x721840: ldur            w0, [x1, #0xf]
    // 0x721844: DecompressPointer r0
    //     0x721844: add             x0, x0, HEAP, lsl #32
    // 0x721848: mov             x1, x0
    // 0x72184c: ldr             x2, [fp, #0x10]
    // 0x721850: r0 = _buildImage()
    //     0x721850: bl              #0x721868  ; [package:umrem_demo/features/dualar/screens/savt_dualari_page.dart] _SavtDualariPageState::_buildImage
    // 0x721854: LeaveFrame
    //     0x721854: mov             SP, fp
    //     0x721858: ldp             fp, lr, [SP], #0x10
    // 0x72185c: ret
    //     0x72185c: ret             
    // 0x721860: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x721860: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x721864: b               #0x721840
  }
  _ _buildImage(/* No info */) {
    // ** addr: 0x721868, size: 0x98
    // 0x721868: EnterFrame
    //     0x721868: stp             fp, lr, [SP, #-0x10]!
    //     0x72186c: mov             fp, SP
    // 0x721870: AllocStack(0x18)
    //     0x721870: sub             SP, SP, #0x18
    // 0x721874: SetupParameters(_SavtDualariPageState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x721874: stur            x1, [fp, #-8]
    //     0x721878: stur            x2, [fp, #-0x10]
    // 0x72187c: CheckStackOverflow
    //     0x72187c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x721880: cmp             SP, x16
    //     0x721884: b.ls            #0x7218f8
    // 0x721888: r1 = 2
    //     0x721888: mov             x1, #2
    // 0x72188c: r0 = AllocateContext()
    //     0x72188c: bl              #0x927010  ; AllocateContextStub
    // 0x721890: mov             x3, x0
    // 0x721894: ldur            x0, [fp, #-8]
    // 0x721898: stur            x3, [fp, #-0x18]
    // 0x72189c: StoreField: r3->field_f = r0
    //     0x72189c: stur            w0, [x3, #0xf]
    // 0x7218a0: ldur            x2, [fp, #-0x10]
    // 0x7218a4: StoreField: r3->field_13 = r2
    //     0x7218a4: stur            w2, [x3, #0x13]
    // 0x7218a8: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7218a8: ldur            w1, [x0, #0x17]
    // 0x7218ac: DecompressPointer r1
    //     0x7218ac: add             x1, x1, HEAP, lsl #32
    // 0x7218b0: r0 = getLocalFilePathIfExists()
    //     0x7218b0: bl              #0x721900  ; [package:umrem_demo/core/services/tavaf_dualari_storage_service.dart] TavafDualariStorageService::getLocalFilePathIfExists
    // 0x7218b4: r1 = <String?>
    //     0x7218b4: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x7218b8: stur            x0, [fp, #-8]
    // 0x7218bc: r0 = FutureBuilder()
    //     0x7218bc: bl              #0x6fcf28  ; AllocateFutureBuilderStub -> FutureBuilder<X0> (size=0x1c)
    // 0x7218c0: mov             x3, x0
    // 0x7218c4: ldur            x0, [fp, #-8]
    // 0x7218c8: stur            x3, [fp, #-0x10]
    // 0x7218cc: StoreField: r3->field_f = r0
    //     0x7218cc: stur            w0, [x3, #0xf]
    // 0x7218d0: ldur            x2, [fp, #-0x18]
    // 0x7218d4: r1 = Function '<anonymous closure>':.
    //     0x7218d4: add             x1, PP, #0x20, lsl #12  ; [pp+0x20140] AnonymousClosure: (0x721bc8), in [package:umrem_demo/features/dualar/screens/savt_dualari_page.dart] _SavtDualariPageState::_buildImage (0x721868)
    //     0x7218d8: ldr             x1, [x1, #0x140]
    // 0x7218dc: r0 = AllocateClosure()
    //     0x7218dc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7218e0: mov             x1, x0
    // 0x7218e4: ldur            x0, [fp, #-0x10]
    // 0x7218e8: StoreField: r0->field_13 = r1
    //     0x7218e8: stur            w1, [x0, #0x13]
    // 0x7218ec: LeaveFrame
    //     0x7218ec: mov             SP, fp
    //     0x7218f0: ldp             fp, lr, [SP], #0x10
    // 0x7218f4: ret
    //     0x7218f4: ret             
    // 0x7218f8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7218f8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7218fc: b               #0x721888
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, AsyncSnapshot<String?>) {
    // ** addr: 0x721bc8, size: 0x14c
    // 0x721bc8: EnterFrame
    //     0x721bc8: stp             fp, lr, [SP, #-0x10]!
    //     0x721bcc: mov             fp, SP
    // 0x721bd0: AllocStack(0x18)
    //     0x721bd0: sub             SP, SP, #0x18
    // 0x721bd4: SetupParameters([dynamic _ /* r0 */])
    //     0x721bd4: ldr             x0, [fp, #0x20]
    //     0x721bd8: ldur            w2, [x0, #0x17]
    //     0x721bdc: add             x2, x2, HEAP, lsl #32
    //     0x721be0: stur            x2, [fp, #-0x10]
    // 0x721be4: CheckStackOverflow
    //     0x721be4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x721be8: cmp             SP, x16
    //     0x721bec: b.ls            #0x721d0c
    // 0x721bf0: ldr             x0, [fp, #0x10]
    // 0x721bf4: LoadField: r1 = r0->field_b
    //     0x721bf4: ldur            w1, [x0, #0xb]
    // 0x721bf8: DecompressPointer r1
    //     0x721bf8: add             x1, x1, HEAP, lsl #32
    // 0x721bfc: r16 = Instance_ConnectionState
    //     0x721bfc: add             x16, PP, #0x16, lsl #12  ; [pp+0x16090] Obj!ConnectionState@a29911
    //     0x721c00: ldr             x16, [x16, #0x90]
    // 0x721c04: cmp             w1, w16
    // 0x721c08: b.ne            #0x721c20
    // 0x721c0c: r0 = Instance_Padding
    //     0x721c0c: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1ff88] Obj!Padding@a1ff11
    //     0x721c10: ldr             x0, [x0, #0xf88]
    // 0x721c14: LeaveFrame
    //     0x721c14: mov             SP, fp
    //     0x721c18: ldp             fp, lr, [SP], #0x10
    // 0x721c1c: ret
    //     0x721c1c: ret             
    // 0x721c20: LoadField: r1 = r0->field_f
    //     0x721c20: ldur            w1, [x0, #0xf]
    // 0x721c24: DecompressPointer r1
    //     0x721c24: add             x1, x1, HEAP, lsl #32
    // 0x721c28: stur            x1, [fp, #-8]
    // 0x721c2c: cmp             w1, NULL
    // 0x721c30: b.eq            #0x721ce8
    // 0x721c34: r0 = InitLateStaticField(0x36c) // [dart:async] Zone::_current
    //     0x721c34: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x721c38: ldr             x0, [x0, #0x6d8]
    //     0x721c3c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x721c40: cmp             w0, w16
    //     0x721c44: b.ne            #0x721c50
    //     0x721c48: ldr             x2, [PP, #0x2f0]  ; [pp+0x2f0] Field <Zone._current@5048458>: static late (offset: 0x36c)
    //     0x721c4c: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x721c50: r0 = InitLateStaticField(0x428) // [dart:io] ::_ioOverridesToken
    //     0x721c50: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x721c54: ldr             x0, [x0, #0x850]
    //     0x721c58: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x721c5c: cmp             w0, w16
    //     0x721c60: b.ne            #0x721c70
    //     0x721c64: add             x2, PP, #8, lsl #12  ; [pp+0x8918] Field <::._ioOverridesToken@15069316>: static late final (offset: 0x428)
    //     0x721c68: ldr             x2, [x2, #0x918]
    //     0x721c6c: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x721c70: r0 = _File()
    //     0x721c70: bl              #0x3e1ea0  ; Allocate_FileStub -> _File (size=0x10)
    // 0x721c74: ldur            x1, [fp, #-8]
    // 0x721c78: stur            x0, [fp, #-0x18]
    // 0x721c7c: StoreField: r0->field_7 = r1
    //     0x721c7c: stur            w1, [x0, #7]
    // 0x721c80: r0 = _toUtf8Array()
    //     0x721c80: bl              #0x3db2f4  ; [dart:io] FileSystemEntity::_toUtf8Array
    // 0x721c84: ldur            x3, [fp, #-0x18]
    // 0x721c88: StoreField: r3->field_b = r0
    //     0x721c88: stur            w0, [x3, #0xb]
    //     0x721c8c: ldurb           w16, [x3, #-1]
    //     0x721c90: ldurb           w17, [x0, #-1]
    //     0x721c94: and             x16, x17, x16, lsr #2
    //     0x721c98: tst             x16, HEAP, lsr #32
    //     0x721c9c: b.eq            #0x721ca4
    //     0x721ca0: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x721ca4: ldur            x2, [fp, #-0x10]
    // 0x721ca8: r1 = Function '<anonymous closure>':.
    //     0x721ca8: add             x1, PP, #0x20, lsl #12  ; [pp+0x20148] AnonymousClosure: (0x722dbc), in [package:umrem_demo/features/dualar/screens/savt_dualari_page.dart] _SavtDualariPageState::_buildImage (0x721868)
    //     0x721cac: ldr             x1, [x1, #0x148]
    // 0x721cb0: r0 = AllocateClosure()
    //     0x721cb0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x721cb4: stur            x0, [fp, #-8]
    // 0x721cb8: r0 = Image()
    //     0x721cb8: bl              #0x6bf938  ; AllocateImageStub -> Image (size=0x58)
    // 0x721cbc: mov             x1, x0
    // 0x721cc0: ldur            x2, [fp, #-0x18]
    // 0x721cc4: ldur            x3, [fp, #-8]
    // 0x721cc8: r5 = Instance_BoxFit
    //     0x721cc8: add             x5, PP, #0x1f, lsl #12  ; [pp+0x1ff98] Obj!BoxFit@a2a951
    //     0x721ccc: ldr             x5, [x5, #0xf98]
    // 0x721cd0: stur            x0, [fp, #-8]
    // 0x721cd4: r0 = Image.file()
    //     0x721cd4: bl              #0x71ae24  ; [package:flutter/src/widgets/image.dart] Image::Image.file
    // 0x721cd8: ldur            x0, [fp, #-8]
    // 0x721cdc: LeaveFrame
    //     0x721cdc: mov             SP, fp
    //     0x721ce0: ldp             fp, lr, [SP], #0x10
    // 0x721ce4: ret
    //     0x721ce4: ret             
    // 0x721ce8: mov             x0, x2
    // 0x721cec: LoadField: r1 = r0->field_f
    //     0x721cec: ldur            w1, [x0, #0xf]
    // 0x721cf0: DecompressPointer r1
    //     0x721cf0: add             x1, x1, HEAP, lsl #32
    // 0x721cf4: LoadField: r2 = r0->field_13
    //     0x721cf4: ldur            w2, [x0, #0x13]
    // 0x721cf8: DecompressPointer r2
    //     0x721cf8: add             x2, x2, HEAP, lsl #32
    // 0x721cfc: r0 = _buildDownloadWidget()
    //     0x721cfc: bl              #0x721d14  ; [package:umrem_demo/features/dualar/screens/savt_dualari_page.dart] _SavtDualariPageState::_buildDownloadWidget
    // 0x721d00: LeaveFrame
    //     0x721d00: mov             SP, fp
    //     0x721d04: ldp             fp, lr, [SP], #0x10
    // 0x721d08: ret
    //     0x721d08: ret             
    // 0x721d0c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x721d0c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x721d10: b               #0x721bf0
  }
  _ _buildDownloadWidget(/* No info */) {
    // ** addr: 0x721d14, size: 0x340
    // 0x721d14: EnterFrame
    //     0x721d14: stp             fp, lr, [SP, #-0x10]!
    //     0x721d18: mov             fp, SP
    // 0x721d1c: AllocStack(0x38)
    //     0x721d1c: sub             SP, SP, #0x38
    // 0x721d20: SetupParameters(_SavtDualariPageState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x721d20: stur            x1, [fp, #-8]
    //     0x721d24: stur            x2, [fp, #-0x10]
    // 0x721d28: CheckStackOverflow
    //     0x721d28: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x721d2c: cmp             SP, x16
    //     0x721d30: b.ls            #0x722044
    // 0x721d34: r1 = 2
    //     0x721d34: mov             x1, #2
    // 0x721d38: r0 = AllocateContext()
    //     0x721d38: bl              #0x927010  ; AllocateContextStub
    // 0x721d3c: mov             x3, x0
    // 0x721d40: ldur            x0, [fp, #-8]
    // 0x721d44: stur            x3, [fp, #-0x18]
    // 0x721d48: StoreField: r3->field_f = r0
    //     0x721d48: stur            w0, [x3, #0xf]
    // 0x721d4c: ldur            x0, [fp, #-0x10]
    // 0x721d50: StoreField: r3->field_13 = r0
    //     0x721d50: stur            w0, [x3, #0x13]
    // 0x721d54: r1 = _ConstMap len:12
    //     0x721d54: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x721d58: r2 = 800
    //     0x721d58: mov             x2, #0x320
    // 0x721d5c: r0 = []()
    //     0x721d5c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x721d60: stur            x0, [fp, #-8]
    // 0x721d64: cmp             w0, NULL
    // 0x721d68: b.eq            #0x72204c
    // 0x721d6c: r0 = Icon()
    //     0x721d6c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x721d70: mov             x3, x0
    // 0x721d74: r0 = Instance_IconData
    //     0x721d74: add             x0, PP, #0x17, lsl #12  ; [pp+0x179c0] Obj!IconData@a0a241
    //     0x721d78: ldr             x0, [x0, #0x9c0]
    // 0x721d7c: stur            x3, [fp, #-0x10]
    // 0x721d80: StoreField: r3->field_b = r0
    //     0x721d80: stur            w0, [x3, #0xb]
    // 0x721d84: r0 = 48.000000
    //     0x721d84: add             x0, PP, #0x15, lsl #12  ; [pp+0x15948] 48
    //     0x721d88: ldr             x0, [x0, #0x948]
    // 0x721d8c: StoreField: r3->field_f = r0
    //     0x721d8c: stur            w0, [x3, #0xf]
    // 0x721d90: ldur            x0, [fp, #-8]
    // 0x721d94: StoreField: r3->field_23 = r0
    //     0x721d94: stur            w0, [x3, #0x23]
    // 0x721d98: r1 = _ConstMap len:12
    //     0x721d98: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x721d9c: r2 = 1400
    //     0x721d9c: mov             x2, #0x578
    // 0x721da0: r0 = []()
    //     0x721da0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x721da4: stur            x0, [fp, #-8]
    // 0x721da8: cmp             w0, NULL
    // 0x721dac: b.eq            #0x722050
    // 0x721db0: r0 = TextStyle()
    //     0x721db0: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x721db4: mov             x1, x0
    // 0x721db8: r0 = true
    //     0x721db8: add             x0, NULL, #0x20  ; true
    // 0x721dbc: stur            x1, [fp, #-0x20]
    // 0x721dc0: StoreField: r1->field_7 = r0
    //     0x721dc0: stur            w0, [x1, #7]
    // 0x721dc4: ldur            x2, [fp, #-8]
    // 0x721dc8: StoreField: r1->field_b = r2
    //     0x721dc8: stur            w2, [x1, #0xb]
    // 0x721dcc: r2 = 14.000000
    //     0x721dcc: add             x2, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x721dd0: ldr             x2, [x2, #0x1c8]
    // 0x721dd4: StoreField: r1->field_1f = r2
    //     0x721dd4: stur            w2, [x1, #0x1f]
    // 0x721dd8: r2 = Instance_FontWeight
    //     0x721dd8: add             x2, PP, #0x15, lsl #12  ; [pp+0x155d0] Obj!FontWeight@a20fe1
    //     0x721ddc: ldr             x2, [x2, #0x5d0]
    // 0x721de0: StoreField: r1->field_23 = r2
    //     0x721de0: stur            w2, [x1, #0x23]
    // 0x721de4: r0 = Text()
    //     0x721de4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x721de8: mov             x1, x0
    // 0x721dec: r0 = "Resim henüz indirilmemiş"
    //     0x721dec: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1ffa0] "Resim henüz indirilmemiş"
    //     0x721df0: ldr             x0, [x0, #0xfa0]
    // 0x721df4: stur            x1, [fp, #-8]
    // 0x721df8: StoreField: r1->field_b = r0
    //     0x721df8: stur            w0, [x1, #0xb]
    // 0x721dfc: ldur            x0, [fp, #-0x20]
    // 0x721e00: StoreField: r1->field_13 = r0
    //     0x721e00: stur            w0, [x1, #0x13]
    // 0x721e04: r16 = Instance_EdgeInsets
    //     0x721e04: add             x16, PP, #0x12, lsl #12  ; [pp+0x121e0] Obj!EdgeInsets@a0bd51
    //     0x721e08: ldr             x16, [x16, #0x1e0]
    // 0x721e0c: str             x16, [SP]
    // 0x721e10: r4 = const [0, 0x1, 0x1, 0, padding, 0, null]
    //     0x721e10: add             x4, PP, #0x1f, lsl #12  ; [pp+0x1ffa8] List(7) [0, 0x1, 0x1, 0, "padding", 0, Null]
    //     0x721e14: ldr             x4, [x4, #0xfa8]
    // 0x721e18: r0 = styleFrom()
    //     0x721e18: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x721e1c: ldur            x2, [fp, #-0x18]
    // 0x721e20: r1 = Function '<anonymous closure>':.
    //     0x721e20: add             x1, PP, #0x20, lsl #12  ; [pp+0x20150] AnonymousClosure: (0x722054), in [package:umrem_demo/features/dualar/screens/savt_dualari_page.dart] _SavtDualariPageState::_buildDownloadWidget (0x721d14)
    //     0x721e24: ldr             x1, [x1, #0x150]
    // 0x721e28: stur            x0, [fp, #-0x20]
    // 0x721e2c: r0 = AllocateClosure()
    //     0x721e2c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x721e30: stur            x0, [fp, #-0x28]
    // 0x721e34: r0 = _ElevatedButtonWithIcon()
    //     0x721e34: bl              #0x6d5508  ; Allocate_ElevatedButtonWithIconStub -> _ElevatedButtonWithIcon (size=0x3c)
    // 0x721e38: mov             x1, x0
    // 0x721e3c: ldur            x5, [fp, #-0x28]
    // 0x721e40: ldur            x6, [fp, #-0x20]
    // 0x721e44: r2 = Instance_Icon
    //     0x721e44: add             x2, PP, #0x1f, lsl #12  ; [pp+0x1ffb8] Obj!Icon@a1e971
    //     0x721e48: ldr             x2, [x2, #0xfb8]
    // 0x721e4c: r3 = Instance_Text
    //     0x721e4c: add             x3, PP, #0x1f, lsl #12  ; [pp+0x1ffc0] Obj!Text@a1c761
    //     0x721e50: ldr             x3, [x3, #0xfc0]
    // 0x721e54: stur            x0, [fp, #-0x20]
    // 0x721e58: r0 = _ElevatedButtonWithIcon()
    //     0x721e58: bl              #0x6d5420  ; [package:flutter/src/material/elevated_button.dart] _ElevatedButtonWithIcon::_ElevatedButtonWithIcon
    // 0x721e5c: ldur            x2, [fp, #-0x18]
    // 0x721e60: r1 = Function '<anonymous closure>':.
    //     0x721e60: add             x1, PP, #0x20, lsl #12  ; [pp+0x20158] AnonymousClosure: (0x71ac18), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_buildDownloadWidget (0x71a910)
    //     0x721e64: ldr             x1, [x1, #0x158]
    // 0x721e68: r0 = AllocateClosure()
    //     0x721e68: bl              #0x9273d4  ; AllocateClosureStub
    // 0x721e6c: stur            x0, [fp, #-0x18]
    // 0x721e70: r0 = TextButton()
    //     0x721e70: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x721e74: mov             x3, x0
    // 0x721e78: ldur            x0, [fp, #-0x18]
    // 0x721e7c: stur            x3, [fp, #-0x28]
    // 0x721e80: StoreField: r3->field_b = r0
    //     0x721e80: stur            w0, [x3, #0xb]
    // 0x721e84: r0 = false
    //     0x721e84: add             x0, NULL, #0x30  ; false
    // 0x721e88: StoreField: r3->field_27 = r0
    //     0x721e88: stur            w0, [x3, #0x27]
    // 0x721e8c: r0 = true
    //     0x721e8c: add             x0, NULL, #0x20  ; true
    // 0x721e90: StoreField: r3->field_2f = r0
    //     0x721e90: stur            w0, [x3, #0x2f]
    // 0x721e94: r0 = Instance_Text
    //     0x721e94: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1ffd0] Obj!Text@a1c711
    //     0x721e98: ldr             x0, [x0, #0xfd0]
    // 0x721e9c: StoreField: r3->field_37 = r0
    //     0x721e9c: stur            w0, [x3, #0x37]
    // 0x721ea0: r1 = Null
    //     0x721ea0: mov             x1, NULL
    // 0x721ea4: r2 = 6
    //     0x721ea4: mov             x2, #6
    // 0x721ea8: r0 = AllocateArray()
    //     0x721ea8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x721eac: mov             x2, x0
    // 0x721eb0: ldur            x0, [fp, #-0x20]
    // 0x721eb4: stur            x2, [fp, #-0x18]
    // 0x721eb8: StoreField: r2->field_f = r0
    //     0x721eb8: stur            w0, [x2, #0xf]
    // 0x721ebc: r16 = Instance_SizedBox
    //     0x721ebc: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x721ec0: ldr             x16, [x16, #0x360]
    // 0x721ec4: StoreField: r2->field_13 = r16
    //     0x721ec4: stur            w16, [x2, #0x13]
    // 0x721ec8: ldur            x0, [fp, #-0x28]
    // 0x721ecc: ArrayStore: r2[0] = r0  ; List_4
    //     0x721ecc: stur            w0, [x2, #0x17]
    // 0x721ed0: r1 = <Widget>
    //     0x721ed0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x721ed4: r0 = AllocateGrowableArray()
    //     0x721ed4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x721ed8: mov             x1, x0
    // 0x721edc: ldur            x0, [fp, #-0x18]
    // 0x721ee0: stur            x1, [fp, #-0x20]
    // 0x721ee4: StoreField: r1->field_f = r0
    //     0x721ee4: stur            w0, [x1, #0xf]
    // 0x721ee8: r0 = 6
    //     0x721ee8: mov             x0, #6
    // 0x721eec: StoreField: r1->field_b = r0
    //     0x721eec: stur            w0, [x1, #0xb]
    // 0x721ef0: r0 = Row()
    //     0x721ef0: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x721ef4: mov             x3, x0
    // 0x721ef8: r0 = Instance_Axis
    //     0x721ef8: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x721efc: stur            x3, [fp, #-0x18]
    // 0x721f00: StoreField: r3->field_f = r0
    //     0x721f00: stur            w0, [x3, #0xf]
    // 0x721f04: r0 = Instance_MainAxisAlignment
    //     0x721f04: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x721f08: ldr             x0, [x0, #0x328]
    // 0x721f0c: StoreField: r3->field_13 = r0
    //     0x721f0c: stur            w0, [x3, #0x13]
    // 0x721f10: r1 = Instance_MainAxisSize
    //     0x721f10: add             x1, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x721f14: ldr             x1, [x1, #0x330]
    // 0x721f18: ArrayStore: r3[0] = r1  ; List_4
    //     0x721f18: stur            w1, [x3, #0x17]
    // 0x721f1c: r4 = Instance_CrossAxisAlignment
    //     0x721f1c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x721f20: ldr             x4, [x4, #0x338]
    // 0x721f24: StoreField: r3->field_1b = r4
    //     0x721f24: stur            w4, [x3, #0x1b]
    // 0x721f28: r5 = Instance_VerticalDirection
    //     0x721f28: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x721f2c: ldr             x5, [x5, #0x340]
    // 0x721f30: StoreField: r3->field_23 = r5
    //     0x721f30: stur            w5, [x3, #0x23]
    // 0x721f34: r6 = Instance_Clip
    //     0x721f34: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x721f38: ldr             x6, [x6, #0x348]
    // 0x721f3c: StoreField: r3->field_2b = r6
    //     0x721f3c: stur            w6, [x3, #0x2b]
    // 0x721f40: StoreField: r3->field_2f = rZR
    //     0x721f40: stur            xzr, [x3, #0x2f]
    // 0x721f44: ldur            x1, [fp, #-0x20]
    // 0x721f48: StoreField: r3->field_b = r1
    //     0x721f48: stur            w1, [x3, #0xb]
    // 0x721f4c: r1 = Null
    //     0x721f4c: mov             x1, NULL
    // 0x721f50: r2 = 10
    //     0x721f50: mov             x2, #0xa
    // 0x721f54: r0 = AllocateArray()
    //     0x721f54: bl              #0x9280a0  ; AllocateArrayStub
    // 0x721f58: mov             x2, x0
    // 0x721f5c: ldur            x0, [fp, #-0x10]
    // 0x721f60: stur            x2, [fp, #-0x20]
    // 0x721f64: StoreField: r2->field_f = r0
    //     0x721f64: stur            w0, [x2, #0xf]
    // 0x721f68: r16 = Instance_SizedBox
    //     0x721f68: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x721f6c: ldr             x16, [x16, #0x220]
    // 0x721f70: StoreField: r2->field_13 = r16
    //     0x721f70: stur            w16, [x2, #0x13]
    // 0x721f74: ldur            x0, [fp, #-8]
    // 0x721f78: ArrayStore: r2[0] = r0  ; List_4
    //     0x721f78: stur            w0, [x2, #0x17]
    // 0x721f7c: r16 = Instance_SizedBox
    //     0x721f7c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x721f80: ldr             x16, [x16, #0x310]
    // 0x721f84: StoreField: r2->field_1b = r16
    //     0x721f84: stur            w16, [x2, #0x1b]
    // 0x721f88: ldur            x0, [fp, #-0x18]
    // 0x721f8c: StoreField: r2->field_1f = r0
    //     0x721f8c: stur            w0, [x2, #0x1f]
    // 0x721f90: r1 = <Widget>
    //     0x721f90: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x721f94: r0 = AllocateGrowableArray()
    //     0x721f94: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x721f98: mov             x1, x0
    // 0x721f9c: ldur            x0, [fp, #-0x20]
    // 0x721fa0: stur            x1, [fp, #-8]
    // 0x721fa4: StoreField: r1->field_f = r0
    //     0x721fa4: stur            w0, [x1, #0xf]
    // 0x721fa8: r0 = 10
    //     0x721fa8: mov             x0, #0xa
    // 0x721fac: StoreField: r1->field_b = r0
    //     0x721fac: stur            w0, [x1, #0xb]
    // 0x721fb0: r0 = Column()
    //     0x721fb0: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x721fb4: mov             x1, x0
    // 0x721fb8: r0 = Instance_Axis
    //     0x721fb8: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x721fbc: stur            x1, [fp, #-0x10]
    // 0x721fc0: StoreField: r1->field_f = r0
    //     0x721fc0: stur            w0, [x1, #0xf]
    // 0x721fc4: r0 = Instance_MainAxisAlignment
    //     0x721fc4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x721fc8: ldr             x0, [x0, #0x328]
    // 0x721fcc: StoreField: r1->field_13 = r0
    //     0x721fcc: stur            w0, [x1, #0x13]
    // 0x721fd0: r0 = Instance_MainAxisSize
    //     0x721fd0: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x721fd4: ldr             x0, [x0, #0xb60]
    // 0x721fd8: ArrayStore: r1[0] = r0  ; List_4
    //     0x721fd8: stur            w0, [x1, #0x17]
    // 0x721fdc: r0 = Instance_CrossAxisAlignment
    //     0x721fdc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x721fe0: ldr             x0, [x0, #0x338]
    // 0x721fe4: StoreField: r1->field_1b = r0
    //     0x721fe4: stur            w0, [x1, #0x1b]
    // 0x721fe8: r0 = Instance_VerticalDirection
    //     0x721fe8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x721fec: ldr             x0, [x0, #0x340]
    // 0x721ff0: StoreField: r1->field_23 = r0
    //     0x721ff0: stur            w0, [x1, #0x23]
    // 0x721ff4: r0 = Instance_Clip
    //     0x721ff4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x721ff8: ldr             x0, [x0, #0x348]
    // 0x721ffc: StoreField: r1->field_2b = r0
    //     0x721ffc: stur            w0, [x1, #0x2b]
    // 0x722000: StoreField: r1->field_2f = rZR
    //     0x722000: stur            xzr, [x1, #0x2f]
    // 0x722004: ldur            x0, [fp, #-8]
    // 0x722008: StoreField: r1->field_b = r0
    //     0x722008: stur            w0, [x1, #0xb]
    // 0x72200c: r0 = Container()
    //     0x72200c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x722010: stur            x0, [fp, #-8]
    // 0x722014: r16 = Instance_EdgeInsets
    //     0x722014: add             x16, PP, #0xc, lsl #12  ; [pp+0xc7e8] Obj!EdgeInsets@a0c141
    //     0x722018: ldr             x16, [x16, #0x7e8]
    // 0x72201c: ldur            lr, [fp, #-0x10]
    // 0x722020: stp             lr, x16, [SP]
    // 0x722024: mov             x1, x0
    // 0x722028: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, padding, 0x1, null]
    //     0x722028: add             x4, PP, #0x16, lsl #12  ; [pp+0x16058] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "padding", 0x1, Null]
    //     0x72202c: ldr             x4, [x4, #0x58]
    // 0x722030: r0 = Container()
    //     0x722030: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x722034: ldur            x0, [fp, #-8]
    // 0x722038: LeaveFrame
    //     0x722038: mov             SP, fp
    //     0x72203c: ldp             fp, lr, [SP], #0x10
    // 0x722040: ret
    //     0x722040: ret             
    // 0x722044: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x722044: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x722048: b               #0x721d34
    // 0x72204c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72204c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x722050: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x722050: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x722054, size: 0x1ac
    // 0x722054: EnterFrame
    //     0x722054: stp             fp, lr, [SP, #-0x10]!
    //     0x722058: mov             fp, SP
    // 0x72205c: AllocStack(0x38)
    //     0x72205c: sub             SP, SP, #0x38
    // 0x722060: SetupParameters(_SavtDualariPageState this /* r1 */)
    //     0x722060: stur            NULL, [fp, #-8]
    //     0x722064: mov             x0, #0
    //     0x722068: add             x1, fp, w0, sxtw #2
    //     0x72206c: ldr             x1, [x1, #0x10]
    //     0x722070: ldur            w2, [x1, #0x17]
    //     0x722074: add             x2, x2, HEAP, lsl #32
    //     0x722078: stur            x2, [fp, #-0x10]
    // 0x72207c: CheckStackOverflow
    //     0x72207c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x722080: cmp             SP, x16
    //     0x722084: b.ls            #0x7221e8
    // 0x722088: InitAsync() -> Future<void?>
    //     0x722088: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x72208c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x722090: ldur            x0, [fp, #-0x10]
    // 0x722094: LoadField: r1 = r0->field_f
    //     0x722094: ldur            w1, [x0, #0xf]
    // 0x722098: DecompressPointer r1
    //     0x722098: add             x1, x1, HEAP, lsl #32
    // 0x72209c: LoadField: r3 = r1->field_f
    //     0x72209c: ldur            w3, [x1, #0xf]
    // 0x7220a0: DecompressPointer r3
    //     0x7220a0: add             x3, x3, HEAP, lsl #32
    // 0x7220a4: stur            x3, [fp, #-0x18]
    // 0x7220a8: cmp             w3, NULL
    // 0x7220ac: b.eq            #0x7221f0
    // 0x7220b0: r1 = Function '<anonymous closure>':.
    //     0x7220b0: add             x1, PP, #0x20, lsl #12  ; [pp+0x20160] AnonymousClosure: (0x71a904), in [package:umrem_demo/features/dualar/screens/kuran.dart] _QuranPageState::_buildErrorWidget (0x6fd15c)
    //     0x7220b4: ldr             x1, [x1, #0x160]
    // 0x7220b8: r2 = Null
    //     0x7220b8: mov             x2, NULL
    // 0x7220bc: r0 = AllocateClosure()
    //     0x7220bc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7220c0: stp             x0, NULL, [SP, #0x10]
    // 0x7220c4: ldur            x16, [fp, #-0x18]
    // 0x7220c8: r30 = false
    //     0x7220c8: add             lr, NULL, #0x30  ; false
    // 0x7220cc: stp             lr, x16, [SP]
    // 0x7220d0: r4 = const [0x1, 0x3, 0x3, 0x2, barrierDismissible, 0x2, null]
    //     0x7220d0: add             x4, PP, #0x15, lsl #12  ; [pp+0x15238] List(7) [0x1, 0x3, 0x3, 0x2, "barrierDismissible", 0x2, Null]
    //     0x7220d4: ldr             x4, [x4, #0x238]
    // 0x7220d8: r0 = showDialog()
    //     0x7220d8: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x7220dc: ldur            x0, [fp, #-0x10]
    // 0x7220e0: LoadField: r1 = r0->field_f
    //     0x7220e0: ldur            w1, [x0, #0xf]
    // 0x7220e4: DecompressPointer r1
    //     0x7220e4: add             x1, x1, HEAP, lsl #32
    // 0x7220e8: LoadField: r2 = r1->field_1b
    //     0x7220e8: ldur            w2, [x1, #0x1b]
    // 0x7220ec: DecompressPointer r2
    //     0x7220ec: add             x2, x2, HEAP, lsl #32
    // 0x7220f0: r16 = Sentinel
    //     0x7220f0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x7220f4: cmp             w2, w16
    // 0x7220f8: b.eq            #0x7221f4
    // 0x7220fc: LoadField: r1 = r0->field_13
    //     0x7220fc: ldur            w1, [x0, #0x13]
    // 0x722100: DecompressPointer r1
    //     0x722100: add             x1, x1, HEAP, lsl #32
    // 0x722104: mov             x16, x1
    // 0x722108: mov             x1, x2
    // 0x72210c: mov             x2, x16
    // 0x722110: r0 = downloadSingleFile()
    //     0x722110: bl              #0x722200  ; [package:umrem_demo/features/dualar/providers/tavaf_dualari_download_provider.dart] TavafDualariDownloadProvider::downloadSingleFile
    // 0x722114: mov             x1, x0
    // 0x722118: stur            x1, [fp, #-0x18]
    // 0x72211c: r0 = Await()
    //     0x72211c: bl              #0x3dd188  ; AwaitStub
    // 0x722120: mov             x2, x0
    // 0x722124: ldur            x0, [fp, #-0x10]
    // 0x722128: stur            x2, [fp, #-0x18]
    // 0x72212c: LoadField: r1 = r0->field_f
    //     0x72212c: ldur            w1, [x0, #0xf]
    // 0x722130: DecompressPointer r1
    //     0x722130: add             x1, x1, HEAP, lsl #32
    // 0x722134: LoadField: r3 = r1->field_f
    //     0x722134: ldur            w3, [x1, #0xf]
    // 0x722138: DecompressPointer r3
    //     0x722138: add             x3, x3, HEAP, lsl #32
    // 0x72213c: cmp             w3, NULL
    // 0x722140: b.eq            #0x722160
    // 0x722144: mov             x1, x3
    // 0x722148: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x722148: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x72214c: r0 = of()
    //     0x72214c: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x722150: r16 = <Object?>
    //     0x722150: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x722154: stp             x0, x16, [SP]
    // 0x722158: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x722158: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x72215c: r0 = pop()
    //     0x72215c: bl              #0x3fc2bc  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pop
    // 0x722160: ldur            x0, [fp, #-0x18]
    // 0x722164: cmp             w0, NULL
    // 0x722168: b.eq            #0x7221ac
    // 0x72216c: ldur            x0, [fp, #-0x10]
    // 0x722170: LoadField: r3 = r0->field_f
    //     0x722170: ldur            w3, [x0, #0xf]
    // 0x722174: DecompressPointer r3
    //     0x722174: add             x3, x3, HEAP, lsl #32
    // 0x722178: stur            x3, [fp, #-0x18]
    // 0x72217c: LoadField: r1 = r3->field_f
    //     0x72217c: ldur            w1, [x3, #0xf]
    // 0x722180: DecompressPointer r1
    //     0x722180: add             x1, x1, HEAP, lsl #32
    // 0x722184: cmp             w1, NULL
    // 0x722188: b.eq            #0x7221b0
    // 0x72218c: r1 = Function '<anonymous closure>':.
    //     0x72218c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20168] Function: [dart:ui] _NativeScene::_NativeScene._ (0x921cc4)
    //     0x722190: ldr             x1, [x1, #0x168]
    // 0x722194: r2 = Null
    //     0x722194: mov             x2, NULL
    // 0x722198: r0 = AllocateClosure()
    //     0x722198: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72219c: ldur            x1, [fp, #-0x18]
    // 0x7221a0: mov             x2, x0
    // 0x7221a4: r0 = setState()
    //     0x7221a4: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x7221a8: b               #0x7221e0
    // 0x7221ac: ldur            x0, [fp, #-0x10]
    // 0x7221b0: LoadField: r1 = r0->field_f
    //     0x7221b0: ldur            w1, [x0, #0xf]
    // 0x7221b4: DecompressPointer r1
    //     0x7221b4: add             x1, x1, HEAP, lsl #32
    // 0x7221b8: LoadField: r0 = r1->field_f
    //     0x7221b8: ldur            w0, [x1, #0xf]
    // 0x7221bc: DecompressPointer r0
    //     0x7221bc: add             x0, x0, HEAP, lsl #32
    // 0x7221c0: cmp             w0, NULL
    // 0x7221c4: b.eq            #0x7221e0
    // 0x7221c8: mov             x1, x0
    // 0x7221cc: r0 = of()
    //     0x7221cc: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x7221d0: mov             x1, x0
    // 0x7221d4: r2 = Instance_SnackBar
    //     0x7221d4: add             x2, PP, #0x1f, lsl #12  ; [pp+0x1ffe8] Obj!SnackBar@a205d1
    //     0x7221d8: ldr             x2, [x2, #0xfe8]
    // 0x7221dc: r0 = showSnackBar()
    //     0x7221dc: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x7221e0: r0 = Null
    //     0x7221e0: mov             x0, NULL
    // 0x7221e4: r0 = ReturnAsyncNotFuture()
    //     0x7221e4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7221e8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7221e8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7221ec: b               #0x722088
    // 0x7221f0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7221f0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7221f4: r9 = _downloadController
    //     0x7221f4: add             x9, PP, #0x20, lsl #12  ; [pp+0x20170] Field <_SavtDualariPageState@1022035749._downloadController@1022035749>: late final (offset: 0x1c)
    //     0x7221f8: ldr             x9, [x9, #0x170]
    // 0x7221fc: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x7221fc: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, Object, StackTrace?) {
    // ** addr: 0x722dbc, size: 0x4c
    // 0x722dbc: EnterFrame
    //     0x722dbc: stp             fp, lr, [SP, #-0x10]!
    //     0x722dc0: mov             fp, SP
    // 0x722dc4: ldr             x0, [fp, #0x28]
    // 0x722dc8: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x722dc8: ldur            w1, [x0, #0x17]
    // 0x722dcc: DecompressPointer r1
    //     0x722dcc: add             x1, x1, HEAP, lsl #32
    // 0x722dd0: CheckStackOverflow
    //     0x722dd0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x722dd4: cmp             SP, x16
    //     0x722dd8: b.ls            #0x722e00
    // 0x722ddc: LoadField: r0 = r1->field_f
    //     0x722ddc: ldur            w0, [x1, #0xf]
    // 0x722de0: DecompressPointer r0
    //     0x722de0: add             x0, x0, HEAP, lsl #32
    // 0x722de4: LoadField: r2 = r1->field_13
    //     0x722de4: ldur            w2, [x1, #0x13]
    // 0x722de8: DecompressPointer r2
    //     0x722de8: add             x2, x2, HEAP, lsl #32
    // 0x722dec: mov             x1, x0
    // 0x722df0: r0 = _buildDownloadWidget()
    //     0x722df0: bl              #0x721d14  ; [package:umrem_demo/features/dualar/screens/savt_dualari_page.dart] _SavtDualariPageState::_buildDownloadWidget
    // 0x722df4: LeaveFrame
    //     0x722df4: mov             SP, fp
    //     0x722df8: ldp             fp, lr, [SP], #0x10
    // 0x722dfc: ret
    //     0x722dfc: ret             
    // 0x722e00: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x722e00: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x722e04: b               #0x722ddc
  }
  [closure] void incrementCount(dynamic) {
    // ** addr: 0x722e08, size: 0x38
    // 0x722e08: EnterFrame
    //     0x722e08: stp             fp, lr, [SP, #-0x10]!
    //     0x722e0c: mov             fp, SP
    // 0x722e10: ldr             x0, [fp, #0x10]
    // 0x722e14: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x722e14: ldur            w1, [x0, #0x17]
    // 0x722e18: DecompressPointer r1
    //     0x722e18: add             x1, x1, HEAP, lsl #32
    // 0x722e1c: CheckStackOverflow
    //     0x722e1c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x722e20: cmp             SP, x16
    //     0x722e24: b.ls            #0x722e38
    // 0x722e28: r0 = incrementCount()
    //     0x722e28: bl              #0x722e40  ; [package:umrem_demo/features/dualar/screens/savt_dualari_page.dart] _SavtDualariPageState::incrementCount
    // 0x722e2c: LeaveFrame
    //     0x722e2c: mov             SP, fp
    //     0x722e30: ldp             fp, lr, [SP], #0x10
    // 0x722e34: ret
    //     0x722e34: ret             
    // 0x722e38: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x722e38: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x722e3c: b               #0x722e28
  }
  _ incrementCount(/* No info */) {
    // ** addr: 0x722e40, size: 0x94
    // 0x722e40: EnterFrame
    //     0x722e40: stp             fp, lr, [SP, #-0x10]!
    //     0x722e44: mov             fp, SP
    // 0x722e48: AllocStack(0x8)
    //     0x722e48: sub             SP, SP, #8
    // 0x722e4c: SetupParameters(_SavtDualariPageState this /* r1 => r1, fp-0x8 */)
    //     0x722e4c: stur            x1, [fp, #-8]
    // 0x722e50: CheckStackOverflow
    //     0x722e50: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x722e54: cmp             SP, x16
    //     0x722e58: b.ls            #0x722ecc
    // 0x722e5c: r1 = 1
    //     0x722e5c: mov             x1, #1
    // 0x722e60: r0 = AllocateContext()
    //     0x722e60: bl              #0x927010  ; AllocateContextStub
    // 0x722e64: mov             x1, x0
    // 0x722e68: ldur            x0, [fp, #-8]
    // 0x722e6c: StoreField: r1->field_f = r0
    //     0x722e6c: stur            w0, [x1, #0xf]
    // 0x722e70: LoadField: r2 = r0->field_27
    //     0x722e70: ldur            x2, [x0, #0x27]
    // 0x722e74: cmp             x2, #7
    // 0x722e78: b.ge            #0x722ebc
    // 0x722e7c: mov             x2, x1
    // 0x722e80: r1 = Function '<anonymous closure>':.
    //     0x722e80: add             x1, PP, #0x20, lsl #12  ; [pp+0x201a8] AnonymousClosure: (0x722ed4), in [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::incrementCount (0x722efc)
    //     0x722e84: ldr             x1, [x1, #0x1a8]
    // 0x722e88: r0 = AllocateClosure()
    //     0x722e88: bl              #0x9273d4  ; AllocateClosureStub
    // 0x722e8c: ldur            x1, [fp, #-8]
    // 0x722e90: mov             x2, x0
    // 0x722e94: r0 = setState()
    //     0x722e94: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x722e98: ldur            x0, [fp, #-8]
    // 0x722e9c: LoadField: r1 = r0->field_13
    //     0x722e9c: ldur            w1, [x0, #0x13]
    // 0x722ea0: DecompressPointer r1
    //     0x722ea0: add             x1, x1, HEAP, lsl #32
    // 0x722ea4: LoadField: r2 = r0->field_27
    //     0x722ea4: ldur            x2, [x0, #0x27]
    // 0x722ea8: r3 = Instance_Cubic
    //     0x722ea8: add             x3, PP, #0x20, lsl #12  ; [pp+0x20048] Obj!Cubic@a0f991
    //     0x722eac: ldr             x3, [x3, #0x48]
    // 0x722eb0: r5 = Instance_Duration
    //     0x722eb0: add             x5, PP, #0x11, lsl #12  ; [pp+0x119e0] Obj!Duration@a2dc51
    //     0x722eb4: ldr             x5, [x5, #0x9e0]
    // 0x722eb8: r0 = animateToPage()
    //     0x722eb8: bl              #0x575304  ; [package:flutter/src/widgets/page_view.dart] PageController::animateToPage
    // 0x722ebc: r0 = Null
    //     0x722ebc: mov             x0, NULL
    // 0x722ec0: LeaveFrame
    //     0x722ec0: mov             SP, fp
    //     0x722ec4: ldp             fp, lr, [SP], #0x10
    // 0x722ec8: ret
    //     0x722ec8: ret             
    // 0x722ecc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x722ecc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x722ed0: b               #0x722e5c
  }
  [closure] IconButton <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x722fd0, size: 0x190
    // 0x722fd0: EnterFrame
    //     0x722fd0: stp             fp, lr, [SP, #-0x10]!
    //     0x722fd4: mov             fp, SP
    // 0x722fd8: AllocStack(0x20)
    //     0x722fd8: sub             SP, SP, #0x20
    // 0x722fdc: SetupParameters([dynamic _ /* r0 */])
    //     0x722fdc: ldr             x0, [fp, #0x18]
    //     0x722fe0: ldur            w3, [x0, #0x17]
    //     0x722fe4: add             x3, x3, HEAP, lsl #32
    //     0x722fe8: stur            x3, [fp, #-0x10]
    // 0x722fec: CheckStackOverflow
    //     0x722fec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x722ff0: cmp             SP, x16
    //     0x722ff4: b.ls            #0x723150
    // 0x722ff8: LoadField: r0 = r3->field_f
    //     0x722ff8: ldur            w0, [x3, #0xf]
    // 0x722ffc: DecompressPointer r0
    //     0x722ffc: add             x0, x0, HEAP, lsl #32
    // 0x723000: LoadField: r1 = r0->field_2f
    //     0x723000: ldur            x1, [x0, #0x2f]
    // 0x723004: cmp             x1, #1
    // 0x723008: b.lt            #0x723024
    // 0x72300c: cmp             x1, #7
    // 0x723010: r16 = true
    //     0x723010: add             x16, NULL, #0x20  ; true
    // 0x723014: r17 = false
    //     0x723014: add             x17, NULL, #0x30  ; false
    // 0x723018: csel            x2, x16, x17, le
    // 0x72301c: mov             x4, x2
    // 0x723020: b               #0x723028
    // 0x723024: r4 = false
    //     0x723024: add             x4, NULL, #0x30  ; false
    // 0x723028: stur            x4, [fp, #-8]
    // 0x72302c: tbz             w4, #4, #0x72304c
    // 0x723030: r1 = _ConstMap len:12
    //     0x723030: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x723034: r2 = 600
    //     0x723034: mov             x2, #0x258
    // 0x723038: r0 = []()
    //     0x723038: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x72303c: cmp             w0, NULL
    // 0x723040: b.eq            #0x723158
    // 0x723044: mov             x1, x0
    // 0x723048: b               #0x72307c
    // 0x72304c: LoadField: r1 = r0->field_1f
    //     0x72304c: ldur            x1, [x0, #0x1f]
    // 0x723050: cmp             x1, #1
    // 0x723054: b.ne            #0x723064
    // 0x723058: r0 = Instance_Color
    //     0x723058: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x72305c: ldr             x0, [x0, #0xb78]
    // 0x723060: b               #0x723078
    // 0x723064: r1 = _ConstMap len:12
    //     0x723064: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x723068: r2 = 1200
    //     0x723068: mov             x2, #0x4b0
    // 0x72306c: r0 = []()
    //     0x72306c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x723070: cmp             w0, NULL
    // 0x723074: b.eq            #0x72315c
    // 0x723078: mov             x1, x0
    // 0x72307c: ldur            x0, [fp, #-8]
    // 0x723080: stur            x1, [fp, #-0x18]
    // 0x723084: r0 = Icon()
    //     0x723084: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x723088: mov             x3, x0
    // 0x72308c: r0 = Instance_IconData
    //     0x72308c: add             x0, PP, #0x20, lsl #12  ; [pp+0x20060] Obj!IconData@a0a261
    //     0x723090: ldr             x0, [x0, #0x60]
    // 0x723094: stur            x3, [fp, #-0x20]
    // 0x723098: StoreField: r3->field_b = r0
    //     0x723098: stur            w0, [x3, #0xb]
    // 0x72309c: ldur            x0, [fp, #-0x18]
    // 0x7230a0: StoreField: r3->field_23 = r0
    //     0x7230a0: stur            w0, [x3, #0x23]
    // 0x7230a4: ldur            x0, [fp, #-8]
    // 0x7230a8: tbnz            w0, #4, #0x7230c4
    // 0x7230ac: ldur            x2, [fp, #-0x10]
    // 0x7230b0: r1 = Function '<anonymous closure>':.
    //     0x7230b0: add             x1, PP, #0x20, lsl #12  ; [pp+0x201b0] AnonymousClosure: (0x723160), in [package:umrem_demo/features/dualar/screens/savt_dualari_page.dart] _SavtDualariPageState::build (0x7204cc)
    //     0x7230b4: ldr             x1, [x1, #0x1b0]
    // 0x7230b8: r0 = AllocateClosure()
    //     0x7230b8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7230bc: mov             x1, x0
    // 0x7230c0: b               #0x7230c8
    // 0x7230c4: r1 = Null
    //     0x7230c4: mov             x1, NULL
    // 0x7230c8: ldur            x0, [fp, #-8]
    // 0x7230cc: stur            x1, [fp, #-0x18]
    // 0x7230d0: tbz             w0, #4, #0x7230e0
    // 0x7230d4: r2 = "Bu sayfa için dil seçeneği mevcut değil"
    //     0x7230d4: add             x2, PP, #0x20, lsl #12  ; [pp+0x20070] "Bu sayfa için dil seçeneği mevcut değil"
    //     0x7230d8: ldr             x2, [x2, #0x70]
    // 0x7230dc: b               #0x72310c
    // 0x7230e0: ldur            x0, [fp, #-0x10]
    // 0x7230e4: LoadField: r2 = r0->field_f
    //     0x7230e4: ldur            w2, [x0, #0xf]
    // 0x7230e8: DecompressPointer r2
    //     0x7230e8: add             x2, x2, HEAP, lsl #32
    // 0x7230ec: LoadField: r0 = r2->field_1f
    //     0x7230ec: ldur            x0, [x2, #0x1f]
    // 0x7230f0: cbnz            x0, #0x723100
    // 0x7230f4: r0 = "Türkçe Çeviri"
    //     0x7230f4: add             x0, PP, #0x20, lsl #12  ; [pp+0x20078] "Türkçe Çeviri"
    //     0x7230f8: ldr             x0, [x0, #0x78]
    // 0x7230fc: b               #0x723108
    // 0x723100: r0 = "Arapça Metin"
    //     0x723100: add             x0, PP, #0x20, lsl #12  ; [pp+0x20080] "Arapça Metin"
    //     0x723104: ldr             x0, [x0, #0x80]
    // 0x723108: mov             x2, x0
    // 0x72310c: ldur            x0, [fp, #-0x20]
    // 0x723110: stur            x2, [fp, #-8]
    // 0x723114: r0 = IconButton()
    //     0x723114: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x723118: ldur            x1, [fp, #-0x18]
    // 0x72311c: StoreField: r0->field_3b = r1
    //     0x72311c: stur            w1, [x0, #0x3b]
    // 0x723120: r1 = false
    //     0x723120: add             x1, NULL, #0x30  ; false
    // 0x723124: StoreField: r0->field_4f = r1
    //     0x723124: stur            w1, [x0, #0x4f]
    // 0x723128: ldur            x1, [fp, #-8]
    // 0x72312c: StoreField: r0->field_53 = r1
    //     0x72312c: stur            w1, [x0, #0x53]
    // 0x723130: ldur            x1, [fp, #-0x20]
    // 0x723134: StoreField: r0->field_1f = r1
    //     0x723134: stur            w1, [x0, #0x1f]
    // 0x723138: r1 = Instance__IconButtonVariant
    //     0x723138: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x72313c: ldr             x1, [x1, #0x1b8]
    // 0x723140: StoreField: r0->field_6f = r1
    //     0x723140: stur            w1, [x0, #0x6f]
    // 0x723144: LeaveFrame
    //     0x723144: mov             SP, fp
    //     0x723148: ldp             fp, lr, [SP], #0x10
    // 0x72314c: ret
    //     0x72314c: ret             
    // 0x723150: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x723150: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x723154: b               #0x722ff8
    // 0x723158: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x723158: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x72315c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72315c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x723160, size: 0x60
    // 0x723160: EnterFrame
    //     0x723160: stp             fp, lr, [SP, #-0x10]!
    //     0x723164: mov             fp, SP
    // 0x723168: AllocStack(0x8)
    //     0x723168: sub             SP, SP, #8
    // 0x72316c: SetupParameters([dynamic _ /* r0 */])
    //     0x72316c: ldr             x0, [fp, #0x10]
    //     0x723170: ldur            w2, [x0, #0x17]
    //     0x723174: add             x2, x2, HEAP, lsl #32
    // 0x723178: CheckStackOverflow
    //     0x723178: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72317c: cmp             SP, x16
    //     0x723180: b.ls            #0x7231b8
    // 0x723184: LoadField: r0 = r2->field_f
    //     0x723184: ldur            w0, [x2, #0xf]
    // 0x723188: DecompressPointer r0
    //     0x723188: add             x0, x0, HEAP, lsl #32
    // 0x72318c: stur            x0, [fp, #-8]
    // 0x723190: r1 = Function '<anonymous closure>':.
    //     0x723190: add             x1, PP, #0x20, lsl #12  ; [pp+0x201b8] AnonymousClosure: (0x7231c0), in [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::build (0x72344c)
    //     0x723194: ldr             x1, [x1, #0x1b8]
    // 0x723198: r0 = AllocateClosure()
    //     0x723198: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72319c: ldur            x1, [fp, #-8]
    // 0x7231a0: mov             x2, x0
    // 0x7231a4: r0 = setState()
    //     0x7231a4: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x7231a8: r0 = Null
    //     0x7231a8: mov             x0, NULL
    // 0x7231ac: LeaveFrame
    //     0x7231ac: mov             SP, fp
    //     0x7231b0: ldp             fp, lr, [SP], #0x10
    // 0x7231b4: ret
    //     0x7231b4: ret             
    // 0x7231b8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7231b8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7231bc: b               #0x723184
  }
  dynamic dispose(dynamic) {
    // ** addr: 0x74c598, size: 0x24
    // 0x74c598: EnterFrame
    //     0x74c598: stp             fp, lr, [SP, #-0x10]!
    //     0x74c59c: mov             fp, SP
    // 0x74c5a0: ldr             x2, [fp, #0x10]
    // 0x74c5a4: r1 = Function 'dispose':.
    //     0x74c5a4: add             x1, PP, #0x27, lsl #12  ; [pp+0x27288] AnonymousClosure: (0x74c5bc), in [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::dispose (0x753eb8)
    //     0x74c5a8: ldr             x1, [x1, #0x288]
    // 0x74c5ac: r0 = AllocateClosure()
    //     0x74c5ac: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74c5b0: LeaveFrame
    //     0x74c5b0: mov             SP, fp
    //     0x74c5b4: ldp             fp, lr, [SP], #0x10
    // 0x74c5b8: ret
    //     0x74c5b8: ret             
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x74c5bc, size: 0x38
    // 0x74c5bc: EnterFrame
    //     0x74c5bc: stp             fp, lr, [SP, #-0x10]!
    //     0x74c5c0: mov             fp, SP
    // 0x74c5c4: ldr             x0, [fp, #0x10]
    // 0x74c5c8: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74c5c8: ldur            w1, [x0, #0x17]
    // 0x74c5cc: DecompressPointer r1
    //     0x74c5cc: add             x1, x1, HEAP, lsl #32
    // 0x74c5d0: CheckStackOverflow
    //     0x74c5d0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74c5d4: cmp             SP, x16
    //     0x74c5d8: b.ls            #0x74c5ec
    // 0x74c5dc: r0 = dispose()
    //     0x74c5dc: bl              #0x753eb8  ; [package:umrem_demo/features/dualar/screens/say_dualari_page.dart] _SayDualariPageState::dispose
    // 0x74c5e0: LeaveFrame
    //     0x74c5e0: mov             SP, fp
    //     0x74c5e4: ldp             fp, lr, [SP], #0x10
    // 0x74c5e8: ret
    //     0x74c5e8: ret             
    // 0x74c5ec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74c5ec: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74c5f0: b               #0x74c5dc
  }
  _ _SavtDualariPageState(/* No info */) {
    // ** addr: 0x7bdb94, size: 0x9a4
    // 0x7bdb94: EnterFrame
    //     0x7bdb94: stp             fp, lr, [SP, #-0x10]!
    //     0x7bdb98: mov             fp, SP
    // 0x7bdb9c: AllocStack(0x30)
    //     0x7bdb9c: sub             SP, SP, #0x30
    // 0x7bdba0: r2 = Sentinel
    //     0x7bdba0: ldr             x2, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x7bdba4: r0 = false
    //     0x7bdba4: add             x0, NULL, #0x30  ; false
    // 0x7bdba8: stur            x1, [fp, #-8]
    // 0x7bdbac: CheckStackOverflow
    //     0x7bdbac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bdbb0: cmp             SP, x16
    //     0x7bdbb4: b.ls            #0x7be530
    // 0x7bdbb8: StoreField: r1->field_1b = r2
    //     0x7bdbb8: stur            w2, [x1, #0x1b]
    // 0x7bdbbc: StoreField: r1->field_1f = rZR
    //     0x7bdbbc: stur            xzr, [x1, #0x1f]
    // 0x7bdbc0: StoreField: r1->field_27 = rZR
    //     0x7bdbc0: stur            xzr, [x1, #0x27]
    // 0x7bdbc4: StoreField: r1->field_2f = rZR
    //     0x7bdbc4: stur            xzr, [x1, #0x2f]
    // 0x7bdbc8: StoreField: r1->field_37 = r0
    //     0x7bdbc8: stur            w0, [x1, #0x37]
    // 0x7bdbcc: r0 = PageController()
    //     0x7bdbcc: bl              #0x578c78  ; AllocatePageControllerStub -> PageController (size=0x54)
    // 0x7bdbd0: stur            x0, [fp, #-0x10]
    // 0x7bdbd4: StoreField: r0->field_3f = rZR
    //     0x7bdbd4: stur            xzr, [x0, #0x3f]
    // 0x7bdbd8: r1 = true
    //     0x7bdbd8: add             x1, NULL, #0x20  ; true
    // 0x7bdbdc: StoreField: r0->field_47 = r1
    //     0x7bdbdc: stur            w1, [x0, #0x47]
    // 0x7bdbe0: d0 = 1.000000
    //     0x7bdbe0: fmov            d0, #1.00000000
    // 0x7bdbe4: StoreField: r0->field_4b = d0
    //     0x7bdbe4: stur            d0, [x0, #0x4b]
    // 0x7bdbe8: mov             x1, x0
    // 0x7bdbec: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7bdbec: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7bdbf0: r0 = ScrollController()
    //     0x7bdbf0: bl              #0x437694  ; [package:flutter/src/widgets/scroll_controller.dart] ScrollController::ScrollController
    // 0x7bdbf4: ldur            x0, [fp, #-0x10]
    // 0x7bdbf8: ldur            x1, [fp, #-8]
    // 0x7bdbfc: StoreField: r1->field_13 = r0
    //     0x7bdbfc: stur            w0, [x1, #0x13]
    //     0x7bdc00: ldurb           w16, [x1, #-1]
    //     0x7bdc04: ldurb           w17, [x0, #-1]
    //     0x7bdc08: and             x16, x17, x16, lsr #2
    //     0x7bdc0c: tst             x16, HEAP, lsr #32
    //     0x7bdc10: b.eq            #0x7bdc18
    //     0x7bdc14: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7bdc18: r0 = InitLateStaticField(0x101c) // [package:umrem_demo/core/services/tavaf_dualari_storage_service.dart] TavafDualariStorageService::_instance
    //     0x7bdc18: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7bdc1c: ldr             x0, [x0, #0x2038]
    //     0x7bdc20: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7bdc24: cmp             w0, w16
    //     0x7bdc28: b.ne            #0x7bdc38
    //     0x7bdc2c: add             x2, PP, #0x10, lsl #12  ; [pp+0x10bf0] Field <TavafDualariStorageService._instance@968405978>: static late final (offset: 0x101c)
    //     0x7bdc30: ldr             x2, [x2, #0xbf0]
    //     0x7bdc34: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x7bdc38: ldur            x3, [fp, #-8]
    // 0x7bdc3c: ArrayStore: r3[0] = r0  ; List_4
    //     0x7bdc3c: stur            w0, [x3, #0x17]
    //     0x7bdc40: ldurb           w16, [x3, #-1]
    //     0x7bdc44: ldurb           w17, [x0, #-1]
    //     0x7bdc48: and             x16, x17, x16, lsr #2
    //     0x7bdc4c: tst             x16, HEAP, lsr #32
    //     0x7bdc50: b.eq            #0x7bdc58
    //     0x7bdc54: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x7bdc58: r1 = Null
    //     0x7bdc58: mov             x1, NULL
    // 0x7bdc5c: r2 = 12
    //     0x7bdc5c: mov             x2, #0xc
    // 0x7bdc60: r0 = AllocateArray()
    //     0x7bdc60: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bdc64: stur            x0, [fp, #-0x10]
    // 0x7bdc68: r16 = "title"
    //     0x7bdc68: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x7bdc6c: StoreField: r0->field_f = r16
    //     0x7bdc6c: stur            w16, [x0, #0xf]
    // 0x7bdc70: r16 = "Tavafa Başlarken Dua"
    //     0x7bdc70: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1be10] "Tavafa Başlarken Dua"
    //     0x7bdc74: ldr             x16, [x16, #0xe10]
    // 0x7bdc78: StoreField: r0->field_13 = r16
    //     0x7bdc78: stur            w16, [x0, #0x13]
    // 0x7bdc7c: r16 = "files"
    //     0x7bdc7c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bdf0] "files"
    //     0x7bdc80: ldr             x16, [x16, #0xdf0]
    // 0x7bdc84: ArrayStore: r0[0] = r16  ; List_4
    //     0x7bdc84: stur            w16, [x0, #0x17]
    // 0x7bdc88: r1 = Null
    //     0x7bdc88: mov             x1, NULL
    // 0x7bdc8c: r2 = 2
    //     0x7bdc8c: mov             x2, #2
    // 0x7bdc90: r0 = AllocateArray()
    //     0x7bdc90: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bdc94: stur            x0, [fp, #-0x18]
    // 0x7bdc98: r16 = "tavaf-baslangic.jpg"
    //     0x7bdc98: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1be18] "tavaf-baslangic.jpg"
    //     0x7bdc9c: ldr             x16, [x16, #0xe18]
    // 0x7bdca0: StoreField: r0->field_f = r16
    //     0x7bdca0: stur            w16, [x0, #0xf]
    // 0x7bdca4: r1 = <String>
    //     0x7bdca4: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7bdca8: r0 = AllocateGrowableArray()
    //     0x7bdca8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7bdcac: mov             x1, x0
    // 0x7bdcb0: ldur            x0, [fp, #-0x18]
    // 0x7bdcb4: StoreField: r1->field_f = r0
    //     0x7bdcb4: stur            w0, [x1, #0xf]
    // 0x7bdcb8: r2 = 2
    //     0x7bdcb8: mov             x2, #2
    // 0x7bdcbc: StoreField: r1->field_b = r2
    //     0x7bdcbc: stur            w2, [x1, #0xb]
    // 0x7bdcc0: ldur            x0, [fp, #-0x10]
    // 0x7bdcc4: StoreField: r0->field_1b = r1
    //     0x7bdcc4: stur            w1, [x0, #0x1b]
    // 0x7bdcc8: r16 = "isZikirmatik"
    //     0x7bdcc8: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcf0] "isZikirmatik"
    //     0x7bdccc: ldr             x16, [x16, #0xcf0]
    // 0x7bdcd0: StoreField: r0->field_1f = r16
    //     0x7bdcd0: stur            w16, [x0, #0x1f]
    // 0x7bdcd4: r16 = false
    //     0x7bdcd4: add             x16, NULL, #0x30  ; false
    // 0x7bdcd8: StoreField: r0->field_23 = r16
    //     0x7bdcd8: stur            w16, [x0, #0x23]
    // 0x7bdcdc: r16 = <String, dynamic>
    //     0x7bdcdc: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x7bdce0: stp             x0, x16, [SP]
    // 0x7bdce4: r0 = Map._fromLiteral()
    //     0x7bdce4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7bdce8: r1 = <Map<String, dynamic>>
    //     0x7bdce8: ldr             x1, [PP, #0x3918]  ; [pp+0x3918] TypeArguments: <Map<String, dynamic>>
    // 0x7bdcec: r2 = 18
    //     0x7bdcec: mov             x2, #0x12
    // 0x7bdcf0: stur            x0, [fp, #-0x10]
    // 0x7bdcf4: r0 = AllocateArray()
    //     0x7bdcf4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bdcf8: mov             x3, x0
    // 0x7bdcfc: ldur            x0, [fp, #-0x10]
    // 0x7bdd00: stur            x3, [fp, #-0x18]
    // 0x7bdd04: StoreField: r3->field_f = r0
    //     0x7bdd04: stur            w0, [x3, #0xf]
    // 0x7bdd08: r1 = Null
    //     0x7bdd08: mov             x1, NULL
    // 0x7bdd0c: r2 = 16
    //     0x7bdd0c: mov             x2, #0x10
    // 0x7bdd10: r0 = AllocateArray()
    //     0x7bdd10: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bdd14: stur            x0, [fp, #-0x10]
    // 0x7bdd18: r16 = "title"
    //     0x7bdd18: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x7bdd1c: StoreField: r0->field_f = r16
    //     0x7bdd1c: stur            w16, [x0, #0xf]
    // 0x7bdd20: r16 = "Tavafın 1. Şavtının Duası"
    //     0x7bdd20: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1be20] "Tavafın 1. Şavtının Duası"
    //     0x7bdd24: ldr             x16, [x16, #0xe20]
    // 0x7bdd28: StoreField: r0->field_13 = r16
    //     0x7bdd28: stur            w16, [x0, #0x13]
    // 0x7bdd2c: r16 = "arabicFiles"
    //     0x7bdd2c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcc0] "arabicFiles"
    //     0x7bdd30: ldr             x16, [x16, #0xcc0]
    // 0x7bdd34: ArrayStore: r0[0] = r16  ; List_4
    //     0x7bdd34: stur            w16, [x0, #0x17]
    // 0x7bdd38: r1 = Null
    //     0x7bdd38: mov             x1, NULL
    // 0x7bdd3c: r2 = 2
    //     0x7bdd3c: mov             x2, #2
    // 0x7bdd40: r0 = AllocateArray()
    //     0x7bdd40: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bdd44: stur            x0, [fp, #-0x20]
    // 0x7bdd48: r16 = "tavaf-arabic-1.png"
    //     0x7bdd48: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1be28] "tavaf-arabic-1.png"
    //     0x7bdd4c: ldr             x16, [x16, #0xe28]
    // 0x7bdd50: StoreField: r0->field_f = r16
    //     0x7bdd50: stur            w16, [x0, #0xf]
    // 0x7bdd54: r1 = <String>
    //     0x7bdd54: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7bdd58: r0 = AllocateGrowableArray()
    //     0x7bdd58: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7bdd5c: mov             x1, x0
    // 0x7bdd60: ldur            x0, [fp, #-0x20]
    // 0x7bdd64: StoreField: r1->field_f = r0
    //     0x7bdd64: stur            w0, [x1, #0xf]
    // 0x7bdd68: r0 = 2
    //     0x7bdd68: mov             x0, #2
    // 0x7bdd6c: StoreField: r1->field_b = r0
    //     0x7bdd6c: stur            w0, [x1, #0xb]
    // 0x7bdd70: ldur            x3, [fp, #-0x10]
    // 0x7bdd74: StoreField: r3->field_1b = r1
    //     0x7bdd74: stur            w1, [x3, #0x1b]
    // 0x7bdd78: r16 = "turkishFiles"
    //     0x7bdd78: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcd8] "turkishFiles"
    //     0x7bdd7c: ldr             x16, [x16, #0xcd8]
    // 0x7bdd80: StoreField: r3->field_1f = r16
    //     0x7bdd80: stur            w16, [x3, #0x1f]
    // 0x7bdd84: mov             x2, x0
    // 0x7bdd88: r1 = Null
    //     0x7bdd88: mov             x1, NULL
    // 0x7bdd8c: r0 = AllocateArray()
    //     0x7bdd8c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bdd90: stur            x0, [fp, #-0x20]
    // 0x7bdd94: r16 = "tavaf-turkish-1.png"
    //     0x7bdd94: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1be30] "tavaf-turkish-1.png"
    //     0x7bdd98: ldr             x16, [x16, #0xe30]
    // 0x7bdd9c: StoreField: r0->field_f = r16
    //     0x7bdd9c: stur            w16, [x0, #0xf]
    // 0x7bdda0: r1 = <String>
    //     0x7bdda0: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7bdda4: r0 = AllocateGrowableArray()
    //     0x7bdda4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7bdda8: mov             x1, x0
    // 0x7bddac: ldur            x0, [fp, #-0x20]
    // 0x7bddb0: StoreField: r1->field_f = r0
    //     0x7bddb0: stur            w0, [x1, #0xf]
    // 0x7bddb4: r2 = 2
    //     0x7bddb4: mov             x2, #2
    // 0x7bddb8: StoreField: r1->field_b = r2
    //     0x7bddb8: stur            w2, [x1, #0xb]
    // 0x7bddbc: ldur            x0, [fp, #-0x10]
    // 0x7bddc0: StoreField: r0->field_23 = r1
    //     0x7bddc0: stur            w1, [x0, #0x23]
    // 0x7bddc4: r16 = "isZikirmatik"
    //     0x7bddc4: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcf0] "isZikirmatik"
    //     0x7bddc8: ldr             x16, [x16, #0xcf0]
    // 0x7bddcc: StoreField: r0->field_27 = r16
    //     0x7bddcc: stur            w16, [x0, #0x27]
    // 0x7bddd0: r16 = true
    //     0x7bddd0: add             x16, NULL, #0x20  ; true
    // 0x7bddd4: StoreField: r0->field_2b = r16
    //     0x7bddd4: stur            w16, [x0, #0x2b]
    // 0x7bddd8: r16 = <String, dynamic>
    //     0x7bddd8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x7bdddc: stp             x0, x16, [SP]
    // 0x7bdde0: r0 = Map._fromLiteral()
    //     0x7bdde0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7bdde4: ldur            x1, [fp, #-0x18]
    // 0x7bdde8: ArrayStore: r1[1] = r0  ; List_4
    //     0x7bdde8: add             x25, x1, #0x13
    //     0x7bddec: str             w0, [x25]
    //     0x7bddf0: tbz             w0, #0, #0x7bde0c
    //     0x7bddf4: ldurb           w16, [x1, #-1]
    //     0x7bddf8: ldurb           w17, [x0, #-1]
    //     0x7bddfc: and             x16, x17, x16, lsr #2
    //     0x7bde00: tst             x16, HEAP, lsr #32
    //     0x7bde04: b.eq            #0x7bde0c
    //     0x7bde08: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7bde0c: r1 = Null
    //     0x7bde0c: mov             x1, NULL
    // 0x7bde10: r2 = 16
    //     0x7bde10: mov             x2, #0x10
    // 0x7bde14: r0 = AllocateArray()
    //     0x7bde14: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bde18: stur            x0, [fp, #-0x10]
    // 0x7bde1c: r16 = "title"
    //     0x7bde1c: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x7bde20: StoreField: r0->field_f = r16
    //     0x7bde20: stur            w16, [x0, #0xf]
    // 0x7bde24: r16 = "Tavafın 2. Şavtının Duası"
    //     0x7bde24: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1be38] "Tavafın 2. Şavtının Duası"
    //     0x7bde28: ldr             x16, [x16, #0xe38]
    // 0x7bde2c: StoreField: r0->field_13 = r16
    //     0x7bde2c: stur            w16, [x0, #0x13]
    // 0x7bde30: r16 = "arabicFiles"
    //     0x7bde30: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcc0] "arabicFiles"
    //     0x7bde34: ldr             x16, [x16, #0xcc0]
    // 0x7bde38: ArrayStore: r0[0] = r16  ; List_4
    //     0x7bde38: stur            w16, [x0, #0x17]
    // 0x7bde3c: r1 = Null
    //     0x7bde3c: mov             x1, NULL
    // 0x7bde40: r2 = 2
    //     0x7bde40: mov             x2, #2
    // 0x7bde44: r0 = AllocateArray()
    //     0x7bde44: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bde48: stur            x0, [fp, #-0x20]
    // 0x7bde4c: r16 = "tavaf-arabic-2.png"
    //     0x7bde4c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1be40] "tavaf-arabic-2.png"
    //     0x7bde50: ldr             x16, [x16, #0xe40]
    // 0x7bde54: StoreField: r0->field_f = r16
    //     0x7bde54: stur            w16, [x0, #0xf]
    // 0x7bde58: r1 = <String>
    //     0x7bde58: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7bde5c: r0 = AllocateGrowableArray()
    //     0x7bde5c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7bde60: mov             x1, x0
    // 0x7bde64: ldur            x0, [fp, #-0x20]
    // 0x7bde68: StoreField: r1->field_f = r0
    //     0x7bde68: stur            w0, [x1, #0xf]
    // 0x7bde6c: r0 = 2
    //     0x7bde6c: mov             x0, #2
    // 0x7bde70: StoreField: r1->field_b = r0
    //     0x7bde70: stur            w0, [x1, #0xb]
    // 0x7bde74: ldur            x3, [fp, #-0x10]
    // 0x7bde78: StoreField: r3->field_1b = r1
    //     0x7bde78: stur            w1, [x3, #0x1b]
    // 0x7bde7c: r16 = "turkishFiles"
    //     0x7bde7c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcd8] "turkishFiles"
    //     0x7bde80: ldr             x16, [x16, #0xcd8]
    // 0x7bde84: StoreField: r3->field_1f = r16
    //     0x7bde84: stur            w16, [x3, #0x1f]
    // 0x7bde88: mov             x2, x0
    // 0x7bde8c: r1 = Null
    //     0x7bde8c: mov             x1, NULL
    // 0x7bde90: r0 = AllocateArray()
    //     0x7bde90: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bde94: stur            x0, [fp, #-0x20]
    // 0x7bde98: r16 = "tavaf-turkish-2.png"
    //     0x7bde98: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1be48] "tavaf-turkish-2.png"
    //     0x7bde9c: ldr             x16, [x16, #0xe48]
    // 0x7bdea0: StoreField: r0->field_f = r16
    //     0x7bdea0: stur            w16, [x0, #0xf]
    // 0x7bdea4: r1 = <String>
    //     0x7bdea4: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7bdea8: r0 = AllocateGrowableArray()
    //     0x7bdea8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7bdeac: mov             x1, x0
    // 0x7bdeb0: ldur            x0, [fp, #-0x20]
    // 0x7bdeb4: StoreField: r1->field_f = r0
    //     0x7bdeb4: stur            w0, [x1, #0xf]
    // 0x7bdeb8: r2 = 2
    //     0x7bdeb8: mov             x2, #2
    // 0x7bdebc: StoreField: r1->field_b = r2
    //     0x7bdebc: stur            w2, [x1, #0xb]
    // 0x7bdec0: ldur            x0, [fp, #-0x10]
    // 0x7bdec4: StoreField: r0->field_23 = r1
    //     0x7bdec4: stur            w1, [x0, #0x23]
    // 0x7bdec8: r16 = "isZikirmatik"
    //     0x7bdec8: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcf0] "isZikirmatik"
    //     0x7bdecc: ldr             x16, [x16, #0xcf0]
    // 0x7bded0: StoreField: r0->field_27 = r16
    //     0x7bded0: stur            w16, [x0, #0x27]
    // 0x7bded4: r16 = true
    //     0x7bded4: add             x16, NULL, #0x20  ; true
    // 0x7bded8: StoreField: r0->field_2b = r16
    //     0x7bded8: stur            w16, [x0, #0x2b]
    // 0x7bdedc: r16 = <String, dynamic>
    //     0x7bdedc: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x7bdee0: stp             x0, x16, [SP]
    // 0x7bdee4: r0 = Map._fromLiteral()
    //     0x7bdee4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7bdee8: ldur            x1, [fp, #-0x18]
    // 0x7bdeec: ArrayStore: r1[2] = r0  ; List_4
    //     0x7bdeec: add             x25, x1, #0x17
    //     0x7bdef0: str             w0, [x25]
    //     0x7bdef4: tbz             w0, #0, #0x7bdf10
    //     0x7bdef8: ldurb           w16, [x1, #-1]
    //     0x7bdefc: ldurb           w17, [x0, #-1]
    //     0x7bdf00: and             x16, x17, x16, lsr #2
    //     0x7bdf04: tst             x16, HEAP, lsr #32
    //     0x7bdf08: b.eq            #0x7bdf10
    //     0x7bdf0c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7bdf10: r1 = Null
    //     0x7bdf10: mov             x1, NULL
    // 0x7bdf14: r2 = 16
    //     0x7bdf14: mov             x2, #0x10
    // 0x7bdf18: r0 = AllocateArray()
    //     0x7bdf18: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bdf1c: stur            x0, [fp, #-0x10]
    // 0x7bdf20: r16 = "title"
    //     0x7bdf20: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x7bdf24: StoreField: r0->field_f = r16
    //     0x7bdf24: stur            w16, [x0, #0xf]
    // 0x7bdf28: r16 = "Tavafın 3. Şavtının Duası"
    //     0x7bdf28: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1be50] "Tavafın 3. Şavtının Duası"
    //     0x7bdf2c: ldr             x16, [x16, #0xe50]
    // 0x7bdf30: StoreField: r0->field_13 = r16
    //     0x7bdf30: stur            w16, [x0, #0x13]
    // 0x7bdf34: r16 = "arabicFiles"
    //     0x7bdf34: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcc0] "arabicFiles"
    //     0x7bdf38: ldr             x16, [x16, #0xcc0]
    // 0x7bdf3c: ArrayStore: r0[0] = r16  ; List_4
    //     0x7bdf3c: stur            w16, [x0, #0x17]
    // 0x7bdf40: r1 = Null
    //     0x7bdf40: mov             x1, NULL
    // 0x7bdf44: r2 = 2
    //     0x7bdf44: mov             x2, #2
    // 0x7bdf48: r0 = AllocateArray()
    //     0x7bdf48: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bdf4c: stur            x0, [fp, #-0x20]
    // 0x7bdf50: r16 = "tavaf-arabic-3.png"
    //     0x7bdf50: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1be58] "tavaf-arabic-3.png"
    //     0x7bdf54: ldr             x16, [x16, #0xe58]
    // 0x7bdf58: StoreField: r0->field_f = r16
    //     0x7bdf58: stur            w16, [x0, #0xf]
    // 0x7bdf5c: r1 = <String>
    //     0x7bdf5c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7bdf60: r0 = AllocateGrowableArray()
    //     0x7bdf60: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7bdf64: mov             x1, x0
    // 0x7bdf68: ldur            x0, [fp, #-0x20]
    // 0x7bdf6c: StoreField: r1->field_f = r0
    //     0x7bdf6c: stur            w0, [x1, #0xf]
    // 0x7bdf70: r0 = 2
    //     0x7bdf70: mov             x0, #2
    // 0x7bdf74: StoreField: r1->field_b = r0
    //     0x7bdf74: stur            w0, [x1, #0xb]
    // 0x7bdf78: ldur            x3, [fp, #-0x10]
    // 0x7bdf7c: StoreField: r3->field_1b = r1
    //     0x7bdf7c: stur            w1, [x3, #0x1b]
    // 0x7bdf80: r16 = "turkishFiles"
    //     0x7bdf80: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcd8] "turkishFiles"
    //     0x7bdf84: ldr             x16, [x16, #0xcd8]
    // 0x7bdf88: StoreField: r3->field_1f = r16
    //     0x7bdf88: stur            w16, [x3, #0x1f]
    // 0x7bdf8c: mov             x2, x0
    // 0x7bdf90: r1 = Null
    //     0x7bdf90: mov             x1, NULL
    // 0x7bdf94: r0 = AllocateArray()
    //     0x7bdf94: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7bdf98: stur            x0, [fp, #-0x20]
    // 0x7bdf9c: r16 = "tavaf-turkish-3.png"
    //     0x7bdf9c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1be60] "tavaf-turkish-3.png"
    //     0x7bdfa0: ldr             x16, [x16, #0xe60]
    // 0x7bdfa4: StoreField: r0->field_f = r16
    //     0x7bdfa4: stur            w16, [x0, #0xf]
    // 0x7bdfa8: r1 = <String>
    //     0x7bdfa8: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7bdfac: r0 = AllocateGrowableArray()
    //     0x7bdfac: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7bdfb0: mov             x1, x0
    // 0x7bdfb4: ldur            x0, [fp, #-0x20]
    // 0x7bdfb8: StoreField: r1->field_f = r0
    //     0x7bdfb8: stur            w0, [x1, #0xf]
    // 0x7bdfbc: r2 = 2
    //     0x7bdfbc: mov             x2, #2
    // 0x7bdfc0: StoreField: r1->field_b = r2
    //     0x7bdfc0: stur            w2, [x1, #0xb]
    // 0x7bdfc4: ldur            x0, [fp, #-0x10]
    // 0x7bdfc8: StoreField: r0->field_23 = r1
    //     0x7bdfc8: stur            w1, [x0, #0x23]
    // 0x7bdfcc: r16 = "isZikirmatik"
    //     0x7bdfcc: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcf0] "isZikirmatik"
    //     0x7bdfd0: ldr             x16, [x16, #0xcf0]
    // 0x7bdfd4: StoreField: r0->field_27 = r16
    //     0x7bdfd4: stur            w16, [x0, #0x27]
    // 0x7bdfd8: r16 = true
    //     0x7bdfd8: add             x16, NULL, #0x20  ; true
    // 0x7bdfdc: StoreField: r0->field_2b = r16
    //     0x7bdfdc: stur            w16, [x0, #0x2b]
    // 0x7bdfe0: r16 = <String, dynamic>
    //     0x7bdfe0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x7bdfe4: stp             x0, x16, [SP]
    // 0x7bdfe8: r0 = Map._fromLiteral()
    //     0x7bdfe8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7bdfec: ldur            x1, [fp, #-0x18]
    // 0x7bdff0: ArrayStore: r1[3] = r0  ; List_4
    //     0x7bdff0: add             x25, x1, #0x1b
    //     0x7bdff4: str             w0, [x25]
    //     0x7bdff8: tbz             w0, #0, #0x7be014
    //     0x7bdffc: ldurb           w16, [x1, #-1]
    //     0x7be000: ldurb           w17, [x0, #-1]
    //     0x7be004: and             x16, x17, x16, lsr #2
    //     0x7be008: tst             x16, HEAP, lsr #32
    //     0x7be00c: b.eq            #0x7be014
    //     0x7be010: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7be014: r1 = Null
    //     0x7be014: mov             x1, NULL
    // 0x7be018: r2 = 16
    //     0x7be018: mov             x2, #0x10
    // 0x7be01c: r0 = AllocateArray()
    //     0x7be01c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be020: stur            x0, [fp, #-0x10]
    // 0x7be024: r16 = "title"
    //     0x7be024: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x7be028: StoreField: r0->field_f = r16
    //     0x7be028: stur            w16, [x0, #0xf]
    // 0x7be02c: r16 = "Tavafın 4. Şavtının Duası"
    //     0x7be02c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1be68] "Tavafın 4. Şavtının Duası"
    //     0x7be030: ldr             x16, [x16, #0xe68]
    // 0x7be034: StoreField: r0->field_13 = r16
    //     0x7be034: stur            w16, [x0, #0x13]
    // 0x7be038: r16 = "arabicFiles"
    //     0x7be038: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcc0] "arabicFiles"
    //     0x7be03c: ldr             x16, [x16, #0xcc0]
    // 0x7be040: ArrayStore: r0[0] = r16  ; List_4
    //     0x7be040: stur            w16, [x0, #0x17]
    // 0x7be044: r1 = Null
    //     0x7be044: mov             x1, NULL
    // 0x7be048: r2 = 2
    //     0x7be048: mov             x2, #2
    // 0x7be04c: r0 = AllocateArray()
    //     0x7be04c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be050: stur            x0, [fp, #-0x20]
    // 0x7be054: r16 = "tavaf-arabic-4.png"
    //     0x7be054: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1be70] "tavaf-arabic-4.png"
    //     0x7be058: ldr             x16, [x16, #0xe70]
    // 0x7be05c: StoreField: r0->field_f = r16
    //     0x7be05c: stur            w16, [x0, #0xf]
    // 0x7be060: r1 = <String>
    //     0x7be060: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7be064: r0 = AllocateGrowableArray()
    //     0x7be064: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7be068: mov             x1, x0
    // 0x7be06c: ldur            x0, [fp, #-0x20]
    // 0x7be070: StoreField: r1->field_f = r0
    //     0x7be070: stur            w0, [x1, #0xf]
    // 0x7be074: r0 = 2
    //     0x7be074: mov             x0, #2
    // 0x7be078: StoreField: r1->field_b = r0
    //     0x7be078: stur            w0, [x1, #0xb]
    // 0x7be07c: ldur            x3, [fp, #-0x10]
    // 0x7be080: StoreField: r3->field_1b = r1
    //     0x7be080: stur            w1, [x3, #0x1b]
    // 0x7be084: r16 = "turkishFiles"
    //     0x7be084: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcd8] "turkishFiles"
    //     0x7be088: ldr             x16, [x16, #0xcd8]
    // 0x7be08c: StoreField: r3->field_1f = r16
    //     0x7be08c: stur            w16, [x3, #0x1f]
    // 0x7be090: mov             x2, x0
    // 0x7be094: r1 = Null
    //     0x7be094: mov             x1, NULL
    // 0x7be098: r0 = AllocateArray()
    //     0x7be098: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be09c: stur            x0, [fp, #-0x20]
    // 0x7be0a0: r16 = "tavaf-turkish-4.png"
    //     0x7be0a0: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1be78] "tavaf-turkish-4.png"
    //     0x7be0a4: ldr             x16, [x16, #0xe78]
    // 0x7be0a8: StoreField: r0->field_f = r16
    //     0x7be0a8: stur            w16, [x0, #0xf]
    // 0x7be0ac: r1 = <String>
    //     0x7be0ac: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7be0b0: r0 = AllocateGrowableArray()
    //     0x7be0b0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7be0b4: mov             x1, x0
    // 0x7be0b8: ldur            x0, [fp, #-0x20]
    // 0x7be0bc: StoreField: r1->field_f = r0
    //     0x7be0bc: stur            w0, [x1, #0xf]
    // 0x7be0c0: r2 = 2
    //     0x7be0c0: mov             x2, #2
    // 0x7be0c4: StoreField: r1->field_b = r2
    //     0x7be0c4: stur            w2, [x1, #0xb]
    // 0x7be0c8: ldur            x0, [fp, #-0x10]
    // 0x7be0cc: StoreField: r0->field_23 = r1
    //     0x7be0cc: stur            w1, [x0, #0x23]
    // 0x7be0d0: r16 = "isZikirmatik"
    //     0x7be0d0: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcf0] "isZikirmatik"
    //     0x7be0d4: ldr             x16, [x16, #0xcf0]
    // 0x7be0d8: StoreField: r0->field_27 = r16
    //     0x7be0d8: stur            w16, [x0, #0x27]
    // 0x7be0dc: r16 = true
    //     0x7be0dc: add             x16, NULL, #0x20  ; true
    // 0x7be0e0: StoreField: r0->field_2b = r16
    //     0x7be0e0: stur            w16, [x0, #0x2b]
    // 0x7be0e4: r16 = <String, dynamic>
    //     0x7be0e4: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x7be0e8: stp             x0, x16, [SP]
    // 0x7be0ec: r0 = Map._fromLiteral()
    //     0x7be0ec: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7be0f0: ldur            x1, [fp, #-0x18]
    // 0x7be0f4: ArrayStore: r1[4] = r0  ; List_4
    //     0x7be0f4: add             x25, x1, #0x1f
    //     0x7be0f8: str             w0, [x25]
    //     0x7be0fc: tbz             w0, #0, #0x7be118
    //     0x7be100: ldurb           w16, [x1, #-1]
    //     0x7be104: ldurb           w17, [x0, #-1]
    //     0x7be108: and             x16, x17, x16, lsr #2
    //     0x7be10c: tst             x16, HEAP, lsr #32
    //     0x7be110: b.eq            #0x7be118
    //     0x7be114: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7be118: r1 = Null
    //     0x7be118: mov             x1, NULL
    // 0x7be11c: r2 = 16
    //     0x7be11c: mov             x2, #0x10
    // 0x7be120: r0 = AllocateArray()
    //     0x7be120: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be124: stur            x0, [fp, #-0x10]
    // 0x7be128: r16 = "title"
    //     0x7be128: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x7be12c: StoreField: r0->field_f = r16
    //     0x7be12c: stur            w16, [x0, #0xf]
    // 0x7be130: r16 = "Tavafın 5. Şavtının Duası"
    //     0x7be130: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1be80] "Tavafın 5. Şavtının Duası"
    //     0x7be134: ldr             x16, [x16, #0xe80]
    // 0x7be138: StoreField: r0->field_13 = r16
    //     0x7be138: stur            w16, [x0, #0x13]
    // 0x7be13c: r16 = "arabicFiles"
    //     0x7be13c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcc0] "arabicFiles"
    //     0x7be140: ldr             x16, [x16, #0xcc0]
    // 0x7be144: ArrayStore: r0[0] = r16  ; List_4
    //     0x7be144: stur            w16, [x0, #0x17]
    // 0x7be148: r1 = Null
    //     0x7be148: mov             x1, NULL
    // 0x7be14c: r2 = 2
    //     0x7be14c: mov             x2, #2
    // 0x7be150: r0 = AllocateArray()
    //     0x7be150: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be154: stur            x0, [fp, #-0x20]
    // 0x7be158: r16 = "tavaf-arabic-5.png"
    //     0x7be158: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1be88] "tavaf-arabic-5.png"
    //     0x7be15c: ldr             x16, [x16, #0xe88]
    // 0x7be160: StoreField: r0->field_f = r16
    //     0x7be160: stur            w16, [x0, #0xf]
    // 0x7be164: r1 = <String>
    //     0x7be164: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7be168: r0 = AllocateGrowableArray()
    //     0x7be168: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7be16c: mov             x1, x0
    // 0x7be170: ldur            x0, [fp, #-0x20]
    // 0x7be174: StoreField: r1->field_f = r0
    //     0x7be174: stur            w0, [x1, #0xf]
    // 0x7be178: r0 = 2
    //     0x7be178: mov             x0, #2
    // 0x7be17c: StoreField: r1->field_b = r0
    //     0x7be17c: stur            w0, [x1, #0xb]
    // 0x7be180: ldur            x3, [fp, #-0x10]
    // 0x7be184: StoreField: r3->field_1b = r1
    //     0x7be184: stur            w1, [x3, #0x1b]
    // 0x7be188: r16 = "turkishFiles"
    //     0x7be188: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcd8] "turkishFiles"
    //     0x7be18c: ldr             x16, [x16, #0xcd8]
    // 0x7be190: StoreField: r3->field_1f = r16
    //     0x7be190: stur            w16, [x3, #0x1f]
    // 0x7be194: mov             x2, x0
    // 0x7be198: r1 = Null
    //     0x7be198: mov             x1, NULL
    // 0x7be19c: r0 = AllocateArray()
    //     0x7be19c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be1a0: stur            x0, [fp, #-0x20]
    // 0x7be1a4: r16 = "tavaf-turkish-5.png"
    //     0x7be1a4: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1be90] "tavaf-turkish-5.png"
    //     0x7be1a8: ldr             x16, [x16, #0xe90]
    // 0x7be1ac: StoreField: r0->field_f = r16
    //     0x7be1ac: stur            w16, [x0, #0xf]
    // 0x7be1b0: r1 = <String>
    //     0x7be1b0: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7be1b4: r0 = AllocateGrowableArray()
    //     0x7be1b4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7be1b8: mov             x1, x0
    // 0x7be1bc: ldur            x0, [fp, #-0x20]
    // 0x7be1c0: StoreField: r1->field_f = r0
    //     0x7be1c0: stur            w0, [x1, #0xf]
    // 0x7be1c4: r2 = 2
    //     0x7be1c4: mov             x2, #2
    // 0x7be1c8: StoreField: r1->field_b = r2
    //     0x7be1c8: stur            w2, [x1, #0xb]
    // 0x7be1cc: ldur            x0, [fp, #-0x10]
    // 0x7be1d0: StoreField: r0->field_23 = r1
    //     0x7be1d0: stur            w1, [x0, #0x23]
    // 0x7be1d4: r16 = "isZikirmatik"
    //     0x7be1d4: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcf0] "isZikirmatik"
    //     0x7be1d8: ldr             x16, [x16, #0xcf0]
    // 0x7be1dc: StoreField: r0->field_27 = r16
    //     0x7be1dc: stur            w16, [x0, #0x27]
    // 0x7be1e0: r16 = true
    //     0x7be1e0: add             x16, NULL, #0x20  ; true
    // 0x7be1e4: StoreField: r0->field_2b = r16
    //     0x7be1e4: stur            w16, [x0, #0x2b]
    // 0x7be1e8: r16 = <String, dynamic>
    //     0x7be1e8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x7be1ec: stp             x0, x16, [SP]
    // 0x7be1f0: r0 = Map._fromLiteral()
    //     0x7be1f0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7be1f4: ldur            x1, [fp, #-0x18]
    // 0x7be1f8: ArrayStore: r1[5] = r0  ; List_4
    //     0x7be1f8: add             x25, x1, #0x23
    //     0x7be1fc: str             w0, [x25]
    //     0x7be200: tbz             w0, #0, #0x7be21c
    //     0x7be204: ldurb           w16, [x1, #-1]
    //     0x7be208: ldurb           w17, [x0, #-1]
    //     0x7be20c: and             x16, x17, x16, lsr #2
    //     0x7be210: tst             x16, HEAP, lsr #32
    //     0x7be214: b.eq            #0x7be21c
    //     0x7be218: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7be21c: r1 = Null
    //     0x7be21c: mov             x1, NULL
    // 0x7be220: r2 = 16
    //     0x7be220: mov             x2, #0x10
    // 0x7be224: r0 = AllocateArray()
    //     0x7be224: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be228: stur            x0, [fp, #-0x10]
    // 0x7be22c: r16 = "title"
    //     0x7be22c: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x7be230: StoreField: r0->field_f = r16
    //     0x7be230: stur            w16, [x0, #0xf]
    // 0x7be234: r16 = "Tavafın 6. Şavtının Duası"
    //     0x7be234: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1be98] "Tavafın 6. Şavtının Duası"
    //     0x7be238: ldr             x16, [x16, #0xe98]
    // 0x7be23c: StoreField: r0->field_13 = r16
    //     0x7be23c: stur            w16, [x0, #0x13]
    // 0x7be240: r16 = "arabicFiles"
    //     0x7be240: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcc0] "arabicFiles"
    //     0x7be244: ldr             x16, [x16, #0xcc0]
    // 0x7be248: ArrayStore: r0[0] = r16  ; List_4
    //     0x7be248: stur            w16, [x0, #0x17]
    // 0x7be24c: r1 = Null
    //     0x7be24c: mov             x1, NULL
    // 0x7be250: r2 = 2
    //     0x7be250: mov             x2, #2
    // 0x7be254: r0 = AllocateArray()
    //     0x7be254: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be258: stur            x0, [fp, #-0x20]
    // 0x7be25c: r16 = "tavaf-arabic-6.png"
    //     0x7be25c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bea0] "tavaf-arabic-6.png"
    //     0x7be260: ldr             x16, [x16, #0xea0]
    // 0x7be264: StoreField: r0->field_f = r16
    //     0x7be264: stur            w16, [x0, #0xf]
    // 0x7be268: r1 = <String>
    //     0x7be268: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7be26c: r0 = AllocateGrowableArray()
    //     0x7be26c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7be270: mov             x1, x0
    // 0x7be274: ldur            x0, [fp, #-0x20]
    // 0x7be278: StoreField: r1->field_f = r0
    //     0x7be278: stur            w0, [x1, #0xf]
    // 0x7be27c: r0 = 2
    //     0x7be27c: mov             x0, #2
    // 0x7be280: StoreField: r1->field_b = r0
    //     0x7be280: stur            w0, [x1, #0xb]
    // 0x7be284: ldur            x3, [fp, #-0x10]
    // 0x7be288: StoreField: r3->field_1b = r1
    //     0x7be288: stur            w1, [x3, #0x1b]
    // 0x7be28c: r16 = "turkishFiles"
    //     0x7be28c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcd8] "turkishFiles"
    //     0x7be290: ldr             x16, [x16, #0xcd8]
    // 0x7be294: StoreField: r3->field_1f = r16
    //     0x7be294: stur            w16, [x3, #0x1f]
    // 0x7be298: mov             x2, x0
    // 0x7be29c: r1 = Null
    //     0x7be29c: mov             x1, NULL
    // 0x7be2a0: r0 = AllocateArray()
    //     0x7be2a0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be2a4: stur            x0, [fp, #-0x20]
    // 0x7be2a8: r16 = "tavaf-turkish-6.png"
    //     0x7be2a8: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bea8] "tavaf-turkish-6.png"
    //     0x7be2ac: ldr             x16, [x16, #0xea8]
    // 0x7be2b0: StoreField: r0->field_f = r16
    //     0x7be2b0: stur            w16, [x0, #0xf]
    // 0x7be2b4: r1 = <String>
    //     0x7be2b4: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7be2b8: r0 = AllocateGrowableArray()
    //     0x7be2b8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7be2bc: mov             x1, x0
    // 0x7be2c0: ldur            x0, [fp, #-0x20]
    // 0x7be2c4: StoreField: r1->field_f = r0
    //     0x7be2c4: stur            w0, [x1, #0xf]
    // 0x7be2c8: r2 = 2
    //     0x7be2c8: mov             x2, #2
    // 0x7be2cc: StoreField: r1->field_b = r2
    //     0x7be2cc: stur            w2, [x1, #0xb]
    // 0x7be2d0: ldur            x0, [fp, #-0x10]
    // 0x7be2d4: StoreField: r0->field_23 = r1
    //     0x7be2d4: stur            w1, [x0, #0x23]
    // 0x7be2d8: r16 = "isZikirmatik"
    //     0x7be2d8: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcf0] "isZikirmatik"
    //     0x7be2dc: ldr             x16, [x16, #0xcf0]
    // 0x7be2e0: StoreField: r0->field_27 = r16
    //     0x7be2e0: stur            w16, [x0, #0x27]
    // 0x7be2e4: r16 = true
    //     0x7be2e4: add             x16, NULL, #0x20  ; true
    // 0x7be2e8: StoreField: r0->field_2b = r16
    //     0x7be2e8: stur            w16, [x0, #0x2b]
    // 0x7be2ec: r16 = <String, dynamic>
    //     0x7be2ec: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x7be2f0: stp             x0, x16, [SP]
    // 0x7be2f4: r0 = Map._fromLiteral()
    //     0x7be2f4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7be2f8: ldur            x1, [fp, #-0x18]
    // 0x7be2fc: ArrayStore: r1[6] = r0  ; List_4
    //     0x7be2fc: add             x25, x1, #0x27
    //     0x7be300: str             w0, [x25]
    //     0x7be304: tbz             w0, #0, #0x7be320
    //     0x7be308: ldurb           w16, [x1, #-1]
    //     0x7be30c: ldurb           w17, [x0, #-1]
    //     0x7be310: and             x16, x17, x16, lsr #2
    //     0x7be314: tst             x16, HEAP, lsr #32
    //     0x7be318: b.eq            #0x7be320
    //     0x7be31c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7be320: r1 = Null
    //     0x7be320: mov             x1, NULL
    // 0x7be324: r2 = 16
    //     0x7be324: mov             x2, #0x10
    // 0x7be328: r0 = AllocateArray()
    //     0x7be328: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be32c: stur            x0, [fp, #-0x10]
    // 0x7be330: r16 = "title"
    //     0x7be330: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x7be334: StoreField: r0->field_f = r16
    //     0x7be334: stur            w16, [x0, #0xf]
    // 0x7be338: r16 = "Tavafın 7. Şavtının Duası"
    //     0x7be338: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1beb0] "Tavafın 7. Şavtının Duası"
    //     0x7be33c: ldr             x16, [x16, #0xeb0]
    // 0x7be340: StoreField: r0->field_13 = r16
    //     0x7be340: stur            w16, [x0, #0x13]
    // 0x7be344: r16 = "arabicFiles"
    //     0x7be344: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcc0] "arabicFiles"
    //     0x7be348: ldr             x16, [x16, #0xcc0]
    // 0x7be34c: ArrayStore: r0[0] = r16  ; List_4
    //     0x7be34c: stur            w16, [x0, #0x17]
    // 0x7be350: r1 = Null
    //     0x7be350: mov             x1, NULL
    // 0x7be354: r2 = 2
    //     0x7be354: mov             x2, #2
    // 0x7be358: r0 = AllocateArray()
    //     0x7be358: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be35c: stur            x0, [fp, #-0x20]
    // 0x7be360: r16 = "tavaf-arabic-7.png"
    //     0x7be360: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1beb8] "tavaf-arabic-7.png"
    //     0x7be364: ldr             x16, [x16, #0xeb8]
    // 0x7be368: StoreField: r0->field_f = r16
    //     0x7be368: stur            w16, [x0, #0xf]
    // 0x7be36c: r1 = <String>
    //     0x7be36c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7be370: r0 = AllocateGrowableArray()
    //     0x7be370: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7be374: mov             x1, x0
    // 0x7be378: ldur            x0, [fp, #-0x20]
    // 0x7be37c: StoreField: r1->field_f = r0
    //     0x7be37c: stur            w0, [x1, #0xf]
    // 0x7be380: r0 = 2
    //     0x7be380: mov             x0, #2
    // 0x7be384: StoreField: r1->field_b = r0
    //     0x7be384: stur            w0, [x1, #0xb]
    // 0x7be388: ldur            x3, [fp, #-0x10]
    // 0x7be38c: StoreField: r3->field_1b = r1
    //     0x7be38c: stur            w1, [x3, #0x1b]
    // 0x7be390: r16 = "turkishFiles"
    //     0x7be390: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcd8] "turkishFiles"
    //     0x7be394: ldr             x16, [x16, #0xcd8]
    // 0x7be398: StoreField: r3->field_1f = r16
    //     0x7be398: stur            w16, [x3, #0x1f]
    // 0x7be39c: mov             x2, x0
    // 0x7be3a0: r1 = Null
    //     0x7be3a0: mov             x1, NULL
    // 0x7be3a4: r0 = AllocateArray()
    //     0x7be3a4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be3a8: stur            x0, [fp, #-0x20]
    // 0x7be3ac: r16 = "tavaf-turkish-7.png"
    //     0x7be3ac: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bec0] "tavaf-turkish-7.png"
    //     0x7be3b0: ldr             x16, [x16, #0xec0]
    // 0x7be3b4: StoreField: r0->field_f = r16
    //     0x7be3b4: stur            w16, [x0, #0xf]
    // 0x7be3b8: r1 = <String>
    //     0x7be3b8: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7be3bc: r0 = AllocateGrowableArray()
    //     0x7be3bc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7be3c0: mov             x1, x0
    // 0x7be3c4: ldur            x0, [fp, #-0x20]
    // 0x7be3c8: StoreField: r1->field_f = r0
    //     0x7be3c8: stur            w0, [x1, #0xf]
    // 0x7be3cc: r0 = 2
    //     0x7be3cc: mov             x0, #2
    // 0x7be3d0: StoreField: r1->field_b = r0
    //     0x7be3d0: stur            w0, [x1, #0xb]
    // 0x7be3d4: ldur            x0, [fp, #-0x10]
    // 0x7be3d8: StoreField: r0->field_23 = r1
    //     0x7be3d8: stur            w1, [x0, #0x23]
    // 0x7be3dc: r16 = "isZikirmatik"
    //     0x7be3dc: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcf0] "isZikirmatik"
    //     0x7be3e0: ldr             x16, [x16, #0xcf0]
    // 0x7be3e4: StoreField: r0->field_27 = r16
    //     0x7be3e4: stur            w16, [x0, #0x27]
    // 0x7be3e8: r16 = true
    //     0x7be3e8: add             x16, NULL, #0x20  ; true
    // 0x7be3ec: StoreField: r0->field_2b = r16
    //     0x7be3ec: stur            w16, [x0, #0x2b]
    // 0x7be3f0: r16 = <String, dynamic>
    //     0x7be3f0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x7be3f4: stp             x0, x16, [SP]
    // 0x7be3f8: r0 = Map._fromLiteral()
    //     0x7be3f8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7be3fc: ldur            x1, [fp, #-0x18]
    // 0x7be400: ArrayStore: r1[7] = r0  ; List_4
    //     0x7be400: add             x25, x1, #0x2b
    //     0x7be404: str             w0, [x25]
    //     0x7be408: tbz             w0, #0, #0x7be424
    //     0x7be40c: ldurb           w16, [x1, #-1]
    //     0x7be410: ldurb           w17, [x0, #-1]
    //     0x7be414: and             x16, x17, x16, lsr #2
    //     0x7be418: tst             x16, HEAP, lsr #32
    //     0x7be41c: b.eq            #0x7be424
    //     0x7be420: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7be424: r1 = Null
    //     0x7be424: mov             x1, NULL
    // 0x7be428: r2 = 12
    //     0x7be428: mov             x2, #0xc
    // 0x7be42c: r0 = AllocateArray()
    //     0x7be42c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be430: stur            x0, [fp, #-0x10]
    // 0x7be434: r16 = "title"
    //     0x7be434: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x7be438: StoreField: r0->field_f = r16
    //     0x7be438: stur            w16, [x0, #0xf]
    // 0x7be43c: r16 = "Tavaf Namazından Sonra Dua"
    //     0x7be43c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bec8] "Tavaf Namazından Sonra Dua"
    //     0x7be440: ldr             x16, [x16, #0xec8]
    // 0x7be444: StoreField: r0->field_13 = r16
    //     0x7be444: stur            w16, [x0, #0x13]
    // 0x7be448: r16 = "files"
    //     0x7be448: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bdf0] "files"
    //     0x7be44c: ldr             x16, [x16, #0xdf0]
    // 0x7be450: ArrayStore: r0[0] = r16  ; List_4
    //     0x7be450: stur            w16, [x0, #0x17]
    // 0x7be454: r1 = Null
    //     0x7be454: mov             x1, NULL
    // 0x7be458: r2 = 4
    //     0x7be458: mov             x2, #4
    // 0x7be45c: r0 = AllocateArray()
    //     0x7be45c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7be460: stur            x0, [fp, #-0x20]
    // 0x7be464: r16 = "tavaf-bitis-1.jpg"
    //     0x7be464: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bed0] "tavaf-bitis-1.jpg"
    //     0x7be468: ldr             x16, [x16, #0xed0]
    // 0x7be46c: StoreField: r0->field_f = r16
    //     0x7be46c: stur            w16, [x0, #0xf]
    // 0x7be470: r16 = "tavaf-bitis-2.jpg"
    //     0x7be470: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bed8] "tavaf-bitis-2.jpg"
    //     0x7be474: ldr             x16, [x16, #0xed8]
    // 0x7be478: StoreField: r0->field_13 = r16
    //     0x7be478: stur            w16, [x0, #0x13]
    // 0x7be47c: r1 = <String>
    //     0x7be47c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7be480: r0 = AllocateGrowableArray()
    //     0x7be480: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7be484: mov             x1, x0
    // 0x7be488: ldur            x0, [fp, #-0x20]
    // 0x7be48c: StoreField: r1->field_f = r0
    //     0x7be48c: stur            w0, [x1, #0xf]
    // 0x7be490: r0 = 4
    //     0x7be490: mov             x0, #4
    // 0x7be494: StoreField: r1->field_b = r0
    //     0x7be494: stur            w0, [x1, #0xb]
    // 0x7be498: ldur            x0, [fp, #-0x10]
    // 0x7be49c: StoreField: r0->field_1b = r1
    //     0x7be49c: stur            w1, [x0, #0x1b]
    // 0x7be4a0: r16 = "isZikirmatik"
    //     0x7be4a0: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bcf0] "isZikirmatik"
    //     0x7be4a4: ldr             x16, [x16, #0xcf0]
    // 0x7be4a8: StoreField: r0->field_1f = r16
    //     0x7be4a8: stur            w16, [x0, #0x1f]
    // 0x7be4ac: r16 = false
    //     0x7be4ac: add             x16, NULL, #0x30  ; false
    // 0x7be4b0: StoreField: r0->field_23 = r16
    //     0x7be4b0: stur            w16, [x0, #0x23]
    // 0x7be4b4: r16 = <String, dynamic>
    //     0x7be4b4: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x7be4b8: stp             x0, x16, [SP]
    // 0x7be4bc: r0 = Map._fromLiteral()
    //     0x7be4bc: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7be4c0: ldur            x1, [fp, #-0x18]
    // 0x7be4c4: ArrayStore: r1[8] = r0  ; List_4
    //     0x7be4c4: add             x25, x1, #0x2f
    //     0x7be4c8: str             w0, [x25]
    //     0x7be4cc: tbz             w0, #0, #0x7be4e8
    //     0x7be4d0: ldurb           w16, [x1, #-1]
    //     0x7be4d4: ldurb           w17, [x0, #-1]
    //     0x7be4d8: and             x16, x17, x16, lsr #2
    //     0x7be4dc: tst             x16, HEAP, lsr #32
    //     0x7be4e0: b.eq            #0x7be4e8
    //     0x7be4e4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7be4e8: r1 = <Map<String, dynamic>>
    //     0x7be4e8: ldr             x1, [PP, #0x3918]  ; [pp+0x3918] TypeArguments: <Map<String, dynamic>>
    // 0x7be4ec: r0 = AllocateGrowableArray()
    //     0x7be4ec: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7be4f0: ldur            x1, [fp, #-0x18]
    // 0x7be4f4: StoreField: r0->field_f = r1
    //     0x7be4f4: stur            w1, [x0, #0xf]
    // 0x7be4f8: r1 = 18
    //     0x7be4f8: mov             x1, #0x12
    // 0x7be4fc: StoreField: r0->field_b = r1
    //     0x7be4fc: stur            w1, [x0, #0xb]
    // 0x7be500: ldur            x1, [fp, #-8]
    // 0x7be504: StoreField: r1->field_3b = r0
    //     0x7be504: stur            w0, [x1, #0x3b]
    //     0x7be508: ldurb           w16, [x1, #-1]
    //     0x7be50c: ldurb           w17, [x0, #-1]
    //     0x7be510: and             x16, x17, x16, lsr #2
    //     0x7be514: tst             x16, HEAP, lsr #32
    //     0x7be518: b.eq            #0x7be520
    //     0x7be51c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7be520: r0 = Null
    //     0x7be520: mov             x0, NULL
    // 0x7be524: LeaveFrame
    //     0x7be524: mov             SP, fp
    //     0x7be528: ldp             fp, lr, [SP], #0x10
    // 0x7be52c: ret
    //     0x7be52c: ret             
    // 0x7be530: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7be530: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7be534: b               #0x7bdbb8
  }
}

// class id: 3203, size: 0xc, field offset: 0xc
//   const constructor, 
class SavtDualariPage extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bdb4c, size: 0x48
    // 0x7bdb4c: EnterFrame
    //     0x7bdb4c: stp             fp, lr, [SP, #-0x10]!
    //     0x7bdb50: mov             fp, SP
    // 0x7bdb54: AllocStack(0x8)
    //     0x7bdb54: sub             SP, SP, #8
    // 0x7bdb58: CheckStackOverflow
    //     0x7bdb58: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bdb5c: cmp             SP, x16
    //     0x7bdb60: b.ls            #0x7bdb8c
    // 0x7bdb64: r1 = <SavtDualariPage>
    //     0x7bdb64: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1be08] TypeArguments: <SavtDualariPage>
    //     0x7bdb68: ldr             x1, [x1, #0xe08]
    // 0x7bdb6c: r0 = _SavtDualariPageState()
    //     0x7bdb6c: bl              #0x7be538  ; Allocate_SavtDualariPageStateStub -> _SavtDualariPageState (size=0x40)
    // 0x7bdb70: mov             x1, x0
    // 0x7bdb74: stur            x0, [fp, #-8]
    // 0x7bdb78: r0 = _SavtDualariPageState()
    //     0x7bdb78: bl              #0x7bdb94  ; [package:umrem_demo/features/dualar/screens/savt_dualari_page.dart] _SavtDualariPageState::_SavtDualariPageState
    // 0x7bdb7c: ldur            x0, [fp, #-8]
    // 0x7bdb80: LeaveFrame
    //     0x7bdb80: mov             SP, fp
    //     0x7bdb84: ldp             fp, lr, [SP], #0x10
    // 0x7bdb88: ret
    //     0x7bdb88: ret             
    // 0x7bdb8c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bdb8c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bdb90: b               #0x7bdb64
  }
}

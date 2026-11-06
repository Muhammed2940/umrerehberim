// lib: , url: package:umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart

// class id: 1049606, size: 0x8
class :: {
}

// class id: 2457, size: 0x14, field offset: 0x14
class HotelsTabState extends State<dynamic> {

  _ showHotelDialog(/* No info */) {
    // ** addr: 0x7397a0, size: 0x1c8
    // 0x7397a0: EnterFrame
    //     0x7397a0: stp             fp, lr, [SP, #-0x10]!
    //     0x7397a4: mov             fp, SP
    // 0x7397a8: AllocStack(0x38)
    //     0x7397a8: sub             SP, SP, #0x38
    // 0x7397ac: SetupParameters(HotelsTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x7397ac: stur            x1, [fp, #-8]
    //     0x7397b0: stur            x2, [fp, #-0x10]
    //     0x7397b4: stur            x3, [fp, #-0x18]
    // 0x7397b8: CheckStackOverflow
    //     0x7397b8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7397bc: cmp             SP, x16
    //     0x7397c0: b.ls            #0x739960
    // 0x7397c4: r1 = 7
    //     0x7397c4: mov             x1, #7
    // 0x7397c8: r0 = AllocateContext()
    //     0x7397c8: bl              #0x927010  ; AllocateContextStub
    // 0x7397cc: mov             x2, x0
    // 0x7397d0: ldur            x0, [fp, #-8]
    // 0x7397d4: stur            x2, [fp, #-0x20]
    // 0x7397d8: StoreField: r2->field_f = r0
    //     0x7397d8: stur            w0, [x2, #0xf]
    // 0x7397dc: ldur            x0, [fp, #-0x18]
    // 0x7397e0: StoreField: r2->field_13 = r0
    //     0x7397e0: stur            w0, [x2, #0x13]
    // 0x7397e4: cmp             w0, NULL
    // 0x7397e8: r16 = true
    //     0x7397e8: add             x16, NULL, #0x20  ; true
    // 0x7397ec: r17 = false
    //     0x7397ec: add             x17, NULL, #0x30  ; false
    // 0x7397f0: csel            x1, x16, x17, ne
    // 0x7397f4: ArrayStore: r2[0] = r1  ; List_4
    //     0x7397f4: stur            w1, [x2, #0x17]
    // 0x7397f8: cmp             w0, NULL
    // 0x7397fc: b.ne            #0x739808
    // 0x739800: r0 = Null
    //     0x739800: mov             x0, NULL
    // 0x739804: b               #0x739814
    // 0x739808: LoadField: r1 = r0->field_b
    //     0x739808: ldur            w1, [x0, #0xb]
    // 0x73980c: DecompressPointer r1
    //     0x73980c: add             x1, x1, HEAP, lsl #32
    // 0x739810: mov             x0, x1
    // 0x739814: cmp             w0, NULL
    // 0x739818: b.ne            #0x739820
    // 0x73981c: r0 = ""
    //     0x73981c: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x739820: stur            x0, [fp, #-8]
    // 0x739824: r1 = <TextEditingValue>
    //     0x739824: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x739828: r0 = TextEditingController()
    //     0x739828: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x73982c: stur            x0, [fp, #-0x18]
    // 0x739830: ldur            x16, [fp, #-8]
    // 0x739834: str             x16, [SP]
    // 0x739838: mov             x1, x0
    // 0x73983c: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x73983c: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x739840: ldr             x4, [x4, #0xa20]
    // 0x739844: r0 = TextEditingController()
    //     0x739844: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x739848: ldur            x0, [fp, #-0x18]
    // 0x73984c: ldur            x2, [fp, #-0x20]
    // 0x739850: StoreField: r2->field_1b = r0
    //     0x739850: stur            w0, [x2, #0x1b]
    //     0x739854: ldurb           w16, [x2, #-1]
    //     0x739858: ldurb           w17, [x0, #-1]
    //     0x73985c: and             x16, x17, x16, lsr #2
    //     0x739860: tst             x16, HEAP, lsr #32
    //     0x739864: b.eq            #0x73986c
    //     0x739868: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73986c: LoadField: r0 = r2->field_13
    //     0x73986c: ldur            w0, [x2, #0x13]
    // 0x739870: DecompressPointer r0
    //     0x739870: add             x0, x0, HEAP, lsl #32
    // 0x739874: cmp             w0, NULL
    // 0x739878: b.ne            #0x739884
    // 0x73987c: r0 = Null
    //     0x73987c: mov             x0, NULL
    // 0x739880: b               #0x739890
    // 0x739884: LoadField: r1 = r0->field_13
    //     0x739884: ldur            w1, [x0, #0x13]
    // 0x739888: DecompressPointer r1
    //     0x739888: add             x1, x1, HEAP, lsl #32
    // 0x73988c: mov             x0, x1
    // 0x739890: cmp             w0, NULL
    // 0x739894: b.ne            #0x73989c
    // 0x739898: r0 = ""
    //     0x739898: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x73989c: stur            x0, [fp, #-8]
    // 0x7398a0: r1 = <TextEditingValue>
    //     0x7398a0: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x7398a4: r0 = TextEditingController()
    //     0x7398a4: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x7398a8: stur            x0, [fp, #-0x18]
    // 0x7398ac: ldur            x16, [fp, #-8]
    // 0x7398b0: str             x16, [SP]
    // 0x7398b4: mov             x1, x0
    // 0x7398b8: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x7398b8: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x7398bc: ldr             x4, [x4, #0xa20]
    // 0x7398c0: r0 = TextEditingController()
    //     0x7398c0: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x7398c4: ldur            x0, [fp, #-0x18]
    // 0x7398c8: ldur            x2, [fp, #-0x20]
    // 0x7398cc: StoreField: r2->field_1f = r0
    //     0x7398cc: stur            w0, [x2, #0x1f]
    //     0x7398d0: ldurb           w16, [x2, #-1]
    //     0x7398d4: ldurb           w17, [x0, #-1]
    //     0x7398d8: and             x16, x17, x16, lsr #2
    //     0x7398dc: tst             x16, HEAP, lsr #32
    //     0x7398e0: b.eq            #0x7398e8
    //     0x7398e4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7398e8: LoadField: r0 = r2->field_13
    //     0x7398e8: ldur            w0, [x2, #0x13]
    // 0x7398ec: DecompressPointer r0
    //     0x7398ec: add             x0, x0, HEAP, lsl #32
    // 0x7398f0: cmp             w0, NULL
    // 0x7398f4: b.ne            #0x739900
    // 0x7398f8: r0 = Null
    //     0x7398f8: mov             x0, NULL
    // 0x7398fc: b               #0x73990c
    // 0x739900: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x739900: ldur            w1, [x0, #0x17]
    // 0x739904: DecompressPointer r1
    //     0x739904: add             x1, x1, HEAP, lsl #32
    // 0x739908: mov             x0, x1
    // 0x73990c: r1 = false
    //     0x73990c: add             x1, NULL, #0x30  ; false
    // 0x739910: StoreField: r2->field_23 = r0
    //     0x739910: stur            w0, [x2, #0x23]
    //     0x739914: ldurb           w16, [x2, #-1]
    //     0x739918: ldurb           w17, [x0, #-1]
    //     0x73991c: and             x16, x17, x16, lsr #2
    //     0x739920: tst             x16, HEAP, lsr #32
    //     0x739924: b.eq            #0x73992c
    //     0x739928: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73992c: StoreField: r2->field_27 = r1
    //     0x73992c: stur            w1, [x2, #0x27]
    // 0x739930: r1 = Function '<anonymous closure>':.
    //     0x739930: add             x1, PP, #0x19, lsl #12  ; [pp+0x19308] AnonymousClosure: (0x739968), in [package:umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart] HotelsTabState::showHotelDialog (0x7397a0)
    //     0x739934: ldr             x1, [x1, #0x308]
    // 0x739938: r0 = AllocateClosure()
    //     0x739938: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73993c: stp             x0, NULL, [SP, #8]
    // 0x739940: ldur            x16, [fp, #-0x10]
    // 0x739944: str             x16, [SP]
    // 0x739948: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x739948: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x73994c: r0 = showDialog()
    //     0x73994c: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x739950: r0 = Null
    //     0x739950: mov             x0, NULL
    // 0x739954: LeaveFrame
    //     0x739954: mov             SP, fp
    //     0x739958: ldp             fp, lr, [SP], #0x10
    // 0x73995c: ret
    //     0x73995c: ret             
    // 0x739960: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x739960: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x739964: b               #0x7397c4
  }
  [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x739968, size: 0x64
    // 0x739968: EnterFrame
    //     0x739968: stp             fp, lr, [SP, #-0x10]!
    //     0x73996c: mov             fp, SP
    // 0x739970: AllocStack(0x8)
    //     0x739970: sub             SP, SP, #8
    // 0x739974: SetupParameters([dynamic _ /* r0 */])
    //     0x739974: ldr             x0, [fp, #0x18]
    //     0x739978: ldur            w1, [x0, #0x17]
    //     0x73997c: add             x1, x1, HEAP, lsl #32
    //     0x739980: stur            x1, [fp, #-8]
    // 0x739984: r1 = 1
    //     0x739984: mov             x1, #1
    // 0x739988: r0 = AllocateContext()
    //     0x739988: bl              #0x927010  ; AllocateContextStub
    // 0x73998c: mov             x1, x0
    // 0x739990: ldur            x0, [fp, #-8]
    // 0x739994: StoreField: r1->field_b = r0
    //     0x739994: stur            w0, [x1, #0xb]
    // 0x739998: ldr             x0, [fp, #0x10]
    // 0x73999c: StoreField: r1->field_f = r0
    //     0x73999c: stur            w0, [x1, #0xf]
    // 0x7399a0: mov             x2, x1
    // 0x7399a4: r1 = Function '<anonymous closure>':.
    //     0x7399a4: add             x1, PP, #0x19, lsl #12  ; [pp+0x19310] AnonymousClosure: (0x7399cc), in [package:umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart] HotelsTabState::showHotelDialog (0x7397a0)
    //     0x7399a8: ldr             x1, [x1, #0x310]
    // 0x7399ac: r0 = AllocateClosure()
    //     0x7399ac: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7399b0: stur            x0, [fp, #-8]
    // 0x7399b4: r0 = StatefulBuilder()
    //     0x7399b4: bl              #0x6d2fbc  ; AllocateStatefulBuilderStub -> StatefulBuilder (size=0x10)
    // 0x7399b8: ldur            x1, [fp, #-8]
    // 0x7399bc: StoreField: r0->field_b = r1
    //     0x7399bc: stur            w1, [x0, #0xb]
    // 0x7399c0: LeaveFrame
    //     0x7399c0: mov             SP, fp
    //     0x7399c4: ldp             fp, lr, [SP], #0x10
    // 0x7399c8: ret
    //     0x7399c8: ret             
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void) {
    // ** addr: 0x7399cc, size: 0x9f8
    // 0x7399cc: EnterFrame
    //     0x7399cc: stp             fp, lr, [SP, #-0x10]!
    //     0x7399d0: mov             fp, SP
    // 0x7399d4: AllocStack(0x80)
    //     0x7399d4: sub             SP, SP, #0x80
    // 0x7399d8: SetupParameters([dynamic _ /* r0 */])
    //     0x7399d8: ldr             x0, [fp, #0x20]
    //     0x7399dc: ldur            w1, [x0, #0x17]
    //     0x7399e0: add             x1, x1, HEAP, lsl #32
    //     0x7399e4: stur            x1, [fp, #-8]
    // 0x7399e8: CheckStackOverflow
    //     0x7399e8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7399ec: cmp             SP, x16
    //     0x7399f0: b.ls            #0x73a3b8
    // 0x7399f4: r1 = 3
    //     0x7399f4: mov             x1, #3
    // 0x7399f8: r0 = AllocateContext()
    //     0x7399f8: bl              #0x927010  ; AllocateContextStub
    // 0x7399fc: mov             x3, x0
    // 0x739a00: ldur            x0, [fp, #-8]
    // 0x739a04: stur            x3, [fp, #-0x18]
    // 0x739a08: StoreField: r3->field_b = r0
    //     0x739a08: stur            w0, [x3, #0xb]
    // 0x739a0c: ldr             x1, [fp, #0x18]
    // 0x739a10: StoreField: r3->field_f = r1
    //     0x739a10: stur            w1, [x3, #0xf]
    // 0x739a14: ldr             x1, [fp, #0x10]
    // 0x739a18: StoreField: r3->field_13 = r1
    //     0x739a18: stur            w1, [x3, #0x13]
    // 0x739a1c: LoadField: r4 = r0->field_b
    //     0x739a1c: ldur            w4, [x0, #0xb]
    // 0x739a20: DecompressPointer r4
    //     0x739a20: add             x4, x4, HEAP, lsl #32
    // 0x739a24: stur            x4, [fp, #-0x10]
    // 0x739a28: LoadField: r0 = r4->field_23
    //     0x739a28: ldur            w0, [x4, #0x23]
    // 0x739a2c: DecompressPointer r0
    //     0x739a2c: add             x0, x0, HEAP, lsl #32
    // 0x739a30: cmp             w0, NULL
    // 0x739a34: b.eq            #0x739aac
    // 0x739a38: LoadField: r0 = r4->field_f
    //     0x739a38: ldur            w0, [x4, #0xf]
    // 0x739a3c: DecompressPointer r0
    //     0x739a3c: add             x0, x0, HEAP, lsl #32
    // 0x739a40: LoadField: r1 = r0->field_b
    //     0x739a40: ldur            w1, [x0, #0xb]
    // 0x739a44: DecompressPointer r1
    //     0x739a44: add             x1, x1, HEAP, lsl #32
    // 0x739a48: cmp             w1, NULL
    // 0x739a4c: b.eq            #0x73a3c0
    // 0x739a50: LoadField: r0 = r1->field_f
    //     0x739a50: ldur            w0, [x1, #0xf]
    // 0x739a54: DecompressPointer r0
    //     0x739a54: add             x0, x0, HEAP, lsl #32
    // 0x739a58: mov             x2, x3
    // 0x739a5c: stur            x0, [fp, #-8]
    // 0x739a60: r1 = Function '<anonymous closure>':.
    //     0x739a60: add             x1, PP, #0x19, lsl #12  ; [pp+0x19318] AnonymousClosure: (0x6e6ce0), in [package:umrem_demo/features/admin/widgets/hotel/hotels_tab.dart] HotelsTab::_openCreateHotelSheet (0x6e6dbc)
    //     0x739a64: ldr             x1, [x1, #0x318]
    // 0x739a68: r0 = AllocateClosure()
    //     0x739a68: bl              #0x9273d4  ; AllocateClosureStub
    // 0x739a6c: ldur            x1, [fp, #-8]
    // 0x739a70: r2 = LoadClassIdInstr(r1)
    //     0x739a70: ldur            x2, [x1, #-1]
    //     0x739a74: ubfx            x2, x2, #0xc, #0x14
    // 0x739a78: mov             x16, x0
    // 0x739a7c: mov             x0, x2
    // 0x739a80: mov             x2, x16
    // 0x739a84: r0 = GDT[cid_x0 + 0xd348]()
    //     0x739a84: mov             x17, #0xd348
    //     0x739a88: add             lr, x0, x17
    //     0x739a8c: ldr             lr, [x21, lr, lsl #3]
    //     0x739a90: blr             lr
    // 0x739a94: r16 = <TripModel>
    //     0x739a94: add             x16, PP, #0x10, lsl #12  ; [pp+0x10da0] TypeArguments: <TripModel>
    //     0x739a98: ldr             x16, [x16, #0xda0]
    // 0x739a9c: stp             x0, x16, [SP]
    // 0x739aa0: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x739aa0: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x739aa4: r0 = IterableExtensions.firstOrNull()
    //     0x739aa4: bl              #0x617ba4  ; [dart:collection] ::IterableExtensions.firstOrNull
    // 0x739aa8: b               #0x739ab0
    // 0x739aac: r0 = Null
    //     0x739aac: mov             x0, NULL
    // 0x739ab0: cmp             w0, NULL
    // 0x739ab4: b.ne            #0x739ac0
    // 0x739ab8: r0 = Null
    //     0x739ab8: mov             x0, NULL
    // 0x739abc: b               #0x739acc
    // 0x739ac0: LoadField: r1 = r0->field_f
    //     0x739ac0: ldur            w1, [x0, #0xf]
    // 0x739ac4: DecompressPointer r1
    //     0x739ac4: add             x1, x1, HEAP, lsl #32
    // 0x739ac8: mov             x0, x1
    // 0x739acc: cmp             w0, NULL
    // 0x739ad0: b.ne            #0x739adc
    // 0x739ad4: r3 = ""
    //     0x739ad4: ldr             x3, [PP, #0x128]  ; [pp+0x128] ""
    // 0x739ad8: b               #0x739ae0
    // 0x739adc: mov             x3, x0
    // 0x739ae0: ldur            x2, [fp, #-0x18]
    // 0x739ae4: ldur            x1, [fp, #-0x10]
    // 0x739ae8: mov             x0, x3
    // 0x739aec: stur            x3, [fp, #-8]
    // 0x739af0: ArrayStore: r2[0] = r0  ; List_4
    //     0x739af0: stur            w0, [x2, #0x17]
    //     0x739af4: ldurb           w16, [x2, #-1]
    //     0x739af8: ldurb           w17, [x0, #-1]
    //     0x739afc: and             x16, x17, x16, lsr #2
    //     0x739b00: tst             x16, HEAP, lsr #32
    //     0x739b04: b.eq            #0x739b0c
    //     0x739b08: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x739b0c: r0 = Radius()
    //     0x739b0c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x739b10: d0 = 16.000000
    //     0x739b10: fmov            d0, #16.00000000
    // 0x739b14: stur            x0, [fp, #-0x20]
    // 0x739b18: StoreField: r0->field_7 = d0
    //     0x739b18: stur            d0, [x0, #7]
    // 0x739b1c: StoreField: r0->field_f = d0
    //     0x739b1c: stur            d0, [x0, #0xf]
    // 0x739b20: r0 = BorderRadius()
    //     0x739b20: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x739b24: mov             x1, x0
    // 0x739b28: ldur            x0, [fp, #-0x20]
    // 0x739b2c: stur            x1, [fp, #-0x28]
    // 0x739b30: StoreField: r1->field_7 = r0
    //     0x739b30: stur            w0, [x1, #7]
    // 0x739b34: StoreField: r1->field_b = r0
    //     0x739b34: stur            w0, [x1, #0xb]
    // 0x739b38: StoreField: r1->field_f = r0
    //     0x739b38: stur            w0, [x1, #0xf]
    // 0x739b3c: StoreField: r1->field_13 = r0
    //     0x739b3c: stur            w0, [x1, #0x13]
    // 0x739b40: r0 = RoundedRectangleBorder()
    //     0x739b40: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x739b44: mov             x1, x0
    // 0x739b48: ldur            x0, [fp, #-0x28]
    // 0x739b4c: stur            x1, [fp, #-0x30]
    // 0x739b50: StoreField: r1->field_b = r0
    //     0x739b50: stur            w0, [x1, #0xb]
    // 0x739b54: r0 = Instance_BorderSide
    //     0x739b54: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x739b58: ldr             x0, [x0, #0xcb8]
    // 0x739b5c: StoreField: r1->field_7 = r0
    //     0x739b5c: stur            w0, [x1, #7]
    // 0x739b60: ldur            x0, [fp, #-0x10]
    // 0x739b64: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x739b64: ldur            w2, [x0, #0x17]
    // 0x739b68: DecompressPointer r2
    //     0x739b68: add             x2, x2, HEAP, lsl #32
    // 0x739b6c: stur            x2, [fp, #-0x28]
    // 0x739b70: tbnz            w2, #4, #0x739b80
    // 0x739b74: r3 = "Otel Düzenle"
    //     0x739b74: add             x3, PP, #0x19, lsl #12  ; [pp+0x19320] "Otel Düzenle"
    //     0x739b78: ldr             x3, [x3, #0x320]
    // 0x739b7c: b               #0x739b88
    // 0x739b80: r3 = "Yeni Otel"
    //     0x739b80: add             x3, PP, #0x19, lsl #12  ; [pp+0x19328] "Yeni Otel"
    //     0x739b84: ldr             x3, [x3, #0x328]
    // 0x739b88: stur            x3, [fp, #-0x20]
    // 0x739b8c: r0 = Text()
    //     0x739b8c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x739b90: mov             x2, x0
    // 0x739b94: ldur            x0, [fp, #-0x20]
    // 0x739b98: stur            x2, [fp, #-0x38]
    // 0x739b9c: StoreField: r2->field_b = r0
    //     0x739b9c: stur            w0, [x2, #0xb]
    // 0x739ba0: r0 = Instance_TextStyle
    //     0x739ba0: add             x0, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x739ba4: ldr             x0, [x0, #0x158]
    // 0x739ba8: StoreField: r2->field_13 = r0
    //     0x739ba8: stur            w0, [x2, #0x13]
    // 0x739bac: ldur            x0, [fp, #-0x10]
    // 0x739bb0: LoadField: r3 = r0->field_23
    //     0x739bb0: ldur            w3, [x0, #0x23]
    // 0x739bb4: DecompressPointer r3
    //     0x739bb4: add             x3, x3, HEAP, lsl #32
    // 0x739bb8: stur            x3, [fp, #-0x20]
    // 0x739bbc: r1 = "Bağlı Sefer *"
    //     0x739bbc: add             x1, PP, #0x19, lsl #12  ; [pp+0x19330] "Bağlı Sefer *"
    //     0x739bc0: ldr             x1, [x1, #0x330]
    // 0x739bc4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x739bc4: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x739bc8: r0 = buildDropdownDecoration()
    //     0x739bc8: bl              #0x6f4f28  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDropdownDecoration
    // 0x739bcc: r1 = Null
    //     0x739bcc: mov             x1, NULL
    // 0x739bd0: r2 = 2
    //     0x739bd0: mov             x2, #2
    // 0x739bd4: stur            x0, [fp, #-0x40]
    // 0x739bd8: r0 = AllocateArray()
    //     0x739bd8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x739bdc: stur            x0, [fp, #-0x48]
    // 0x739be0: r16 = Instance_DropdownMenuItem
    //     0x739be0: add             x16, PP, #0x14, lsl #12  ; [pp+0x148d8] Obj!DropdownMenuItem<String?>@a1f561
    //     0x739be4: ldr             x16, [x16, #0x8d8]
    // 0x739be8: StoreField: r0->field_f = r16
    //     0x739be8: stur            w16, [x0, #0xf]
    // 0x739bec: r1 = <DropdownMenuItem<String?>>
    //     0x739bec: add             x1, PP, #0x14, lsl #12  ; [pp+0x148e0] TypeArguments: <DropdownMenuItem<String?>>
    //     0x739bf0: ldr             x1, [x1, #0x8e0]
    // 0x739bf4: r0 = AllocateGrowableArray()
    //     0x739bf4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x739bf8: mov             x2, x0
    // 0x739bfc: ldur            x0, [fp, #-0x48]
    // 0x739c00: stur            x2, [fp, #-0x50]
    // 0x739c04: StoreField: r2->field_f = r0
    //     0x739c04: stur            w0, [x2, #0xf]
    // 0x739c08: r0 = 2
    //     0x739c08: mov             x0, #2
    // 0x739c0c: StoreField: r2->field_b = r0
    //     0x739c0c: stur            w0, [x2, #0xb]
    // 0x739c10: ldur            x3, [fp, #-0x10]
    // 0x739c14: LoadField: r1 = r3->field_f
    //     0x739c14: ldur            w1, [x3, #0xf]
    // 0x739c18: DecompressPointer r1
    //     0x739c18: add             x1, x1, HEAP, lsl #32
    // 0x739c1c: r0 = onChanged()
    //     0x739c1c: bl              #0x582f8c  ; [package:flutter/src/material/checkbox.dart] _CheckboxState::onChanged
    // 0x739c20: r1 = Function '<anonymous closure>':.
    //     0x739c20: add             x1, PP, #0x19, lsl #12  ; [pp+0x19338] AnonymousClosure: (0x6e6bb4), in [package:umrem_demo/features/admin/widgets/hotel/hotels_tab.dart] HotelsTab::_openCreateHotelSheet (0x6e6dbc)
    //     0x739c24: ldr             x1, [x1, #0x338]
    // 0x739c28: r2 = Null
    //     0x739c28: mov             x2, NULL
    // 0x739c2c: stur            x0, [fp, #-0x48]
    // 0x739c30: r0 = AllocateClosure()
    //     0x739c30: bl              #0x9273d4  ; AllocateClosureStub
    // 0x739c34: mov             x1, x0
    // 0x739c38: ldur            x0, [fp, #-0x48]
    // 0x739c3c: r2 = LoadClassIdInstr(r0)
    //     0x739c3c: ldur            x2, [x0, #-1]
    //     0x739c40: ubfx            x2, x2, #0xc, #0x14
    // 0x739c44: r16 = <DropdownMenuItem<String?>>
    //     0x739c44: add             x16, PP, #0x14, lsl #12  ; [pp+0x148e0] TypeArguments: <DropdownMenuItem<String?>>
    //     0x739c48: ldr             x16, [x16, #0x8e0]
    // 0x739c4c: stp             x0, x16, [SP, #8]
    // 0x739c50: str             x1, [SP]
    // 0x739c54: mov             x0, x2
    // 0x739c58: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x739c58: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x739c5c: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x739c5c: mov             x17, #0xd1d6
    //     0x739c60: add             lr, x0, x17
    //     0x739c64: ldr             lr, [x21, lr, lsl #3]
    //     0x739c68: blr             lr
    // 0x739c6c: ldur            x1, [fp, #-0x50]
    // 0x739c70: mov             x2, x0
    // 0x739c74: r0 = addAll()
    //     0x739c74: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x739c78: ldur            x2, [fp, #-0x18]
    // 0x739c7c: r1 = Function '<anonymous closure>':.
    //     0x739c7c: add             x1, PP, #0x19, lsl #12  ; [pp+0x19340] AnonymousClosure: (0x73aa58), in [package:umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart] HotelsTabState::showHotelDialog (0x7397a0)
    //     0x739c80: ldr             x1, [x1, #0x340]
    // 0x739c84: r0 = AllocateClosure()
    //     0x739c84: bl              #0x9273d4  ; AllocateClosureStub
    // 0x739c88: r1 = <String?>
    //     0x739c88: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x739c8c: stur            x0, [fp, #-0x48]
    // 0x739c90: r0 = DropdownButtonFormField()
    //     0x739c90: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x739c94: stur            x0, [fp, #-0x58]
    // 0x739c98: r16 = Instance_Color
    //     0x739c98: add             x16, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x739c9c: ldr             x16, [x16, #0x1c0]
    // 0x739ca0: r30 = Instance_TextStyle
    //     0x739ca0: add             lr, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x739ca4: ldr             lr, [lr, #0x158]
    // 0x739ca8: stp             lr, x16, [SP]
    // 0x739cac: mov             x1, x0
    // 0x739cb0: ldur            x2, [fp, #-0x40]
    // 0x739cb4: ldur            x3, [fp, #-0x20]
    // 0x739cb8: ldur            x5, [fp, #-0x50]
    // 0x739cbc: ldur            x6, [fp, #-0x48]
    // 0x739cc0: r4 = const [0, 0x7, 0x2, 0x5, dropdownColor, 0x5, style, 0x6, null]
    //     0x739cc0: add             x4, PP, #0x19, lsl #12  ; [pp+0x19250] List(9) [0, 0x7, 0x2, 0x5, "dropdownColor", 0x5, "style", 0x6, Null]
    //     0x739cc4: ldr             x4, [x4, #0x250]
    // 0x739cc8: r0 = DropdownButtonFormField()
    //     0x739cc8: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x739ccc: r1 = Null
    //     0x739ccc: mov             x1, NULL
    // 0x739cd0: r2 = 2
    //     0x739cd0: mov             x2, #2
    // 0x739cd4: r0 = AllocateArray()
    //     0x739cd4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x739cd8: mov             x2, x0
    // 0x739cdc: ldur            x0, [fp, #-0x58]
    // 0x739ce0: stur            x2, [fp, #-0x20]
    // 0x739ce4: StoreField: r2->field_f = r0
    //     0x739ce4: stur            w0, [x2, #0xf]
    // 0x739ce8: r1 = <Widget>
    //     0x739ce8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x739cec: r0 = AllocateGrowableArray()
    //     0x739cec: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x739cf0: mov             x2, x0
    // 0x739cf4: ldur            x0, [fp, #-0x20]
    // 0x739cf8: stur            x2, [fp, #-0x40]
    // 0x739cfc: StoreField: r2->field_f = r0
    //     0x739cfc: stur            w0, [x2, #0xf]
    // 0x739d00: r0 = 2
    //     0x739d00: mov             x0, #2
    // 0x739d04: StoreField: r2->field_b = r0
    //     0x739d04: stur            w0, [x2, #0xb]
    // 0x739d08: ldur            x0, [fp, #-0x10]
    // 0x739d0c: LoadField: r1 = r0->field_23
    //     0x739d0c: ldur            w1, [x0, #0x23]
    // 0x739d10: DecompressPointer r1
    //     0x739d10: add             x1, x1, HEAP, lsl #32
    // 0x739d14: cmp             w1, NULL
    // 0x739d18: b.eq            #0x739f58
    // 0x739d1c: ldur            x3, [fp, #-8]
    // 0x739d20: LoadField: r1 = r3->field_7
    //     0x739d20: ldur            w1, [x3, #7]
    // 0x739d24: cbz             w1, #0x739f58
    // 0x739d28: r16 = 0.200000
    //     0x739d28: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x739d2c: ldr             x16, [x16, #0x1f0]
    // 0x739d30: str             x16, [SP]
    // 0x739d34: r1 = Instance_MaterialColor
    //     0x739d34: add             x1, PP, #0x12, lsl #12  ; [pp+0x125d8] Obj!MaterialColor@a25ce1
    //     0x739d38: ldr             x1, [x1, #0x5d8]
    // 0x739d3c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x739d3c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x739d40: ldr             x4, [x4, #0x198]
    // 0x739d44: r0 = withValues()
    //     0x739d44: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x739d48: stur            x0, [fp, #-0x20]
    // 0x739d4c: r0 = Radius()
    //     0x739d4c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x739d50: d0 = 8.000000
    //     0x739d50: fmov            d0, #8.00000000
    // 0x739d54: stur            x0, [fp, #-0x48]
    // 0x739d58: StoreField: r0->field_7 = d0
    //     0x739d58: stur            d0, [x0, #7]
    // 0x739d5c: StoreField: r0->field_f = d0
    //     0x739d5c: stur            d0, [x0, #0xf]
    // 0x739d60: r0 = BorderRadius()
    //     0x739d60: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x739d64: mov             x2, x0
    // 0x739d68: ldur            x0, [fp, #-0x48]
    // 0x739d6c: stur            x2, [fp, #-0x50]
    // 0x739d70: StoreField: r2->field_7 = r0
    //     0x739d70: stur            w0, [x2, #7]
    // 0x739d74: StoreField: r2->field_b = r0
    //     0x739d74: stur            w0, [x2, #0xb]
    // 0x739d78: StoreField: r2->field_f = r0
    //     0x739d78: stur            w0, [x2, #0xf]
    // 0x739d7c: StoreField: r2->field_13 = r0
    //     0x739d7c: stur            w0, [x2, #0x13]
    // 0x739d80: r16 = 0.500000
    //     0x739d80: ldr             x16, [PP, #0x4af8]  ; [pp+0x4af8] 0.5
    // 0x739d84: str             x16, [SP]
    // 0x739d88: r1 = Instance_MaterialColor
    //     0x739d88: add             x1, PP, #0x12, lsl #12  ; [pp+0x125d8] Obj!MaterialColor@a25ce1
    //     0x739d8c: ldr             x1, [x1, #0x5d8]
    // 0x739d90: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x739d90: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x739d94: ldr             x4, [x4, #0x198]
    // 0x739d98: r0 = withValues()
    //     0x739d98: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x739d9c: str             x0, [SP]
    // 0x739da0: r1 = Null
    //     0x739da0: mov             x1, NULL
    // 0x739da4: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x739da4: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x739da8: ldr             x4, [x4, #0x788]
    // 0x739dac: r0 = Border.all()
    //     0x739dac: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x739db0: stur            x0, [fp, #-0x48]
    // 0x739db4: r0 = BoxDecoration()
    //     0x739db4: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x739db8: mov             x3, x0
    // 0x739dbc: ldur            x0, [fp, #-0x20]
    // 0x739dc0: stur            x3, [fp, #-0x58]
    // 0x739dc4: StoreField: r3->field_7 = r0
    //     0x739dc4: stur            w0, [x3, #7]
    // 0x739dc8: ldur            x0, [fp, #-0x48]
    // 0x739dcc: StoreField: r3->field_f = r0
    //     0x739dcc: stur            w0, [x3, #0xf]
    // 0x739dd0: ldur            x0, [fp, #-0x50]
    // 0x739dd4: StoreField: r3->field_13 = r0
    //     0x739dd4: stur            w0, [x3, #0x13]
    // 0x739dd8: r0 = Instance_BoxShape
    //     0x739dd8: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x739ddc: ldr             x0, [x0, #0x1c8]
    // 0x739de0: StoreField: r3->field_23 = r0
    //     0x739de0: stur            w0, [x3, #0x23]
    // 0x739de4: r1 = Null
    //     0x739de4: mov             x1, NULL
    // 0x739de8: r2 = 4
    //     0x739de8: mov             x2, #4
    // 0x739dec: r0 = AllocateArray()
    //     0x739dec: bl              #0x9280a0  ; AllocateArrayStub
    // 0x739df0: r16 = "Şehir: "
    //     0x739df0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14928] "Şehir: "
    //     0x739df4: ldr             x16, [x16, #0x928]
    // 0x739df8: StoreField: r0->field_f = r16
    //     0x739df8: stur            w16, [x0, #0xf]
    // 0x739dfc: ldur            x1, [fp, #-8]
    // 0x739e00: StoreField: r0->field_13 = r1
    //     0x739e00: stur            w1, [x0, #0x13]
    // 0x739e04: str             x0, [SP]
    // 0x739e08: r0 = _interpolate()
    //     0x739e08: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x739e0c: stur            x0, [fp, #-8]
    // 0x739e10: r0 = Text()
    //     0x739e10: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x739e14: mov             x3, x0
    // 0x739e18: ldur            x0, [fp, #-8]
    // 0x739e1c: stur            x3, [fp, #-0x20]
    // 0x739e20: StoreField: r3->field_b = r0
    //     0x739e20: stur            w0, [x3, #0xb]
    // 0x739e24: r0 = Instance_TextStyle
    //     0x739e24: add             x0, PP, #0x19, lsl #12  ; [pp+0x19348] Obj!TextStyle@a18391
    //     0x739e28: ldr             x0, [x0, #0x348]
    // 0x739e2c: StoreField: r3->field_13 = r0
    //     0x739e2c: stur            w0, [x3, #0x13]
    // 0x739e30: r1 = Null
    //     0x739e30: mov             x1, NULL
    // 0x739e34: r2 = 6
    //     0x739e34: mov             x2, #6
    // 0x739e38: r0 = AllocateArray()
    //     0x739e38: bl              #0x9280a0  ; AllocateArrayStub
    // 0x739e3c: stur            x0, [fp, #-8]
    // 0x739e40: r16 = Instance_Icon
    //     0x739e40: add             x16, PP, #0x19, lsl #12  ; [pp+0x19350] Obj!Icon@a1ec71
    //     0x739e44: ldr             x16, [x16, #0x350]
    // 0x739e48: StoreField: r0->field_f = r16
    //     0x739e48: stur            w16, [x0, #0xf]
    // 0x739e4c: r16 = Instance_SizedBox
    //     0x739e4c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x739e50: ldr             x16, [x16, #0x368]
    // 0x739e54: StoreField: r0->field_13 = r16
    //     0x739e54: stur            w16, [x0, #0x13]
    // 0x739e58: ldur            x1, [fp, #-0x20]
    // 0x739e5c: ArrayStore: r0[0] = r1  ; List_4
    //     0x739e5c: stur            w1, [x0, #0x17]
    // 0x739e60: r1 = <Widget>
    //     0x739e60: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x739e64: r0 = AllocateGrowableArray()
    //     0x739e64: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x739e68: mov             x1, x0
    // 0x739e6c: ldur            x0, [fp, #-8]
    // 0x739e70: stur            x1, [fp, #-0x20]
    // 0x739e74: StoreField: r1->field_f = r0
    //     0x739e74: stur            w0, [x1, #0xf]
    // 0x739e78: r0 = 6
    //     0x739e78: mov             x0, #6
    // 0x739e7c: StoreField: r1->field_b = r0
    //     0x739e7c: stur            w0, [x1, #0xb]
    // 0x739e80: r0 = Row()
    //     0x739e80: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x739e84: mov             x1, x0
    // 0x739e88: r0 = Instance_Axis
    //     0x739e88: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x739e8c: stur            x1, [fp, #-8]
    // 0x739e90: StoreField: r1->field_f = r0
    //     0x739e90: stur            w0, [x1, #0xf]
    // 0x739e94: r0 = Instance_MainAxisAlignment
    //     0x739e94: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x739e98: ldr             x0, [x0, #0x230]
    // 0x739e9c: StoreField: r1->field_13 = r0
    //     0x739e9c: stur            w0, [x1, #0x13]
    // 0x739ea0: r2 = Instance_MainAxisSize
    //     0x739ea0: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x739ea4: ldr             x2, [x2, #0x330]
    // 0x739ea8: ArrayStore: r1[0] = r2  ; List_4
    //     0x739ea8: stur            w2, [x1, #0x17]
    // 0x739eac: r2 = Instance_CrossAxisAlignment
    //     0x739eac: add             x2, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x739eb0: ldr             x2, [x2, #0x338]
    // 0x739eb4: StoreField: r1->field_1b = r2
    //     0x739eb4: stur            w2, [x1, #0x1b]
    // 0x739eb8: r3 = Instance_VerticalDirection
    //     0x739eb8: add             x3, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x739ebc: ldr             x3, [x3, #0x340]
    // 0x739ec0: StoreField: r1->field_23 = r3
    //     0x739ec0: stur            w3, [x1, #0x23]
    // 0x739ec4: r4 = Instance_Clip
    //     0x739ec4: add             x4, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x739ec8: ldr             x4, [x4, #0x348]
    // 0x739ecc: StoreField: r1->field_2b = r4
    //     0x739ecc: stur            w4, [x1, #0x2b]
    // 0x739ed0: StoreField: r1->field_2f = rZR
    //     0x739ed0: stur            xzr, [x1, #0x2f]
    // 0x739ed4: ldur            x5, [fp, #-0x20]
    // 0x739ed8: StoreField: r1->field_b = r5
    //     0x739ed8: stur            w5, [x1, #0xb]
    // 0x739edc: r0 = Container()
    //     0x739edc: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x739ee0: stur            x0, [fp, #-0x20]
    // 0x739ee4: r16 = Instance_EdgeInsets
    //     0x739ee4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12370] Obj!EdgeInsets@a0bff1
    //     0x739ee8: ldr             x16, [x16, #0x370]
    // 0x739eec: ldur            lr, [fp, #-0x58]
    // 0x739ef0: stp             lr, x16, [SP, #8]
    // 0x739ef4: ldur            x16, [fp, #-8]
    // 0x739ef8: str             x16, [SP]
    // 0x739efc: mov             x1, x0
    // 0x739f00: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x739f00: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x739f04: ldr             x4, [x4, #0x1e8]
    // 0x739f08: r0 = Container()
    //     0x739f08: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x739f0c: r1 = Null
    //     0x739f0c: mov             x1, NULL
    // 0x739f10: r2 = 4
    //     0x739f10: mov             x2, #4
    // 0x739f14: r0 = AllocateArray()
    //     0x739f14: bl              #0x9280a0  ; AllocateArrayStub
    // 0x739f18: stur            x0, [fp, #-8]
    // 0x739f1c: r16 = Instance_SizedBox
    //     0x739f1c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x739f20: ldr             x16, [x16, #0x220]
    // 0x739f24: StoreField: r0->field_f = r16
    //     0x739f24: stur            w16, [x0, #0xf]
    // 0x739f28: ldur            x1, [fp, #-0x20]
    // 0x739f2c: StoreField: r0->field_13 = r1
    //     0x739f2c: stur            w1, [x0, #0x13]
    // 0x739f30: r1 = <Widget>
    //     0x739f30: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x739f34: r0 = AllocateGrowableArray()
    //     0x739f34: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x739f38: mov             x1, x0
    // 0x739f3c: ldur            x0, [fp, #-8]
    // 0x739f40: StoreField: r1->field_f = r0
    //     0x739f40: stur            w0, [x1, #0xf]
    // 0x739f44: r0 = 4
    //     0x739f44: mov             x0, #4
    // 0x739f48: StoreField: r1->field_b = r0
    //     0x739f48: stur            w0, [x1, #0xb]
    // 0x739f4c: mov             x2, x1
    // 0x739f50: ldur            x1, [fp, #-0x40]
    // 0x739f54: r0 = addAll()
    //     0x739f54: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x739f58: ldur            x0, [fp, #-0x40]
    // 0x739f5c: LoadField: r1 = r0->field_b
    //     0x739f5c: ldur            w1, [x0, #0xb]
    // 0x739f60: LoadField: r2 = r0->field_f
    //     0x739f60: ldur            w2, [x0, #0xf]
    // 0x739f64: DecompressPointer r2
    //     0x739f64: add             x2, x2, HEAP, lsl #32
    // 0x739f68: LoadField: r3 = r2->field_b
    //     0x739f68: ldur            w3, [x2, #0xb]
    // 0x739f6c: r2 = LoadInt32Instr(r1)
    //     0x739f6c: sbfx            x2, x1, #1, #0x1f
    // 0x739f70: stur            x2, [fp, #-0x60]
    // 0x739f74: r1 = LoadInt32Instr(r3)
    //     0x739f74: sbfx            x1, x3, #1, #0x1f
    // 0x739f78: cmp             x2, x1
    // 0x739f7c: b.ne            #0x739f88
    // 0x739f80: mov             x1, x0
    // 0x739f84: r0 = _growToNextCapacity()
    //     0x739f84: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x739f88: ldur            x4, [fp, #-0x10]
    // 0x739f8c: ldur            x0, [fp, #-0x40]
    // 0x739f90: ldur            x1, [fp, #-0x60]
    // 0x739f94: add             x2, x1, #1
    // 0x739f98: lsl             x3, x2, #1
    // 0x739f9c: StoreField: r0->field_b = r3
    //     0x739f9c: stur            w3, [x0, #0xb]
    // 0x739fa0: LoadField: r2 = r0->field_f
    //     0x739fa0: ldur            w2, [x0, #0xf]
    // 0x739fa4: DecompressPointer r2
    //     0x739fa4: add             x2, x2, HEAP, lsl #32
    // 0x739fa8: add             x3, x2, x1, lsl #2
    // 0x739fac: r16 = Instance_SizedBox
    //     0x739fac: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x739fb0: ldr             x16, [x16, #0x220]
    // 0x739fb4: StoreField: r3->field_f = r16
    //     0x739fb4: stur            w16, [x3, #0xf]
    // 0x739fb8: LoadField: r1 = r4->field_1b
    //     0x739fb8: ldur            w1, [x4, #0x1b]
    // 0x739fbc: DecompressPointer r1
    //     0x739fbc: add             x1, x1, HEAP, lsl #32
    // 0x739fc0: r2 = "Otel Adı *"
    //     0x739fc0: add             x2, PP, #0x19, lsl #12  ; [pp+0x19358] "Otel Adı *"
    //     0x739fc4: ldr             x2, [x2, #0x358]
    // 0x739fc8: r3 = Instance_IconData
    //     0x739fc8: add             x3, PP, #0x12, lsl #12  ; [pp+0x127a0] Obj!IconData@a09da1
    //     0x739fcc: ldr             x3, [x3, #0x7a0]
    // 0x739fd0: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x739fd0: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x739fd4: r0 = buildDialogTextField()
    //     0x739fd4: bl              #0x6f4c3c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDialogTextField
    // 0x739fd8: mov             x2, x0
    // 0x739fdc: ldur            x0, [fp, #-0x40]
    // 0x739fe0: stur            x2, [fp, #-8]
    // 0x739fe4: LoadField: r1 = r0->field_b
    //     0x739fe4: ldur            w1, [x0, #0xb]
    // 0x739fe8: LoadField: r3 = r0->field_f
    //     0x739fe8: ldur            w3, [x0, #0xf]
    // 0x739fec: DecompressPointer r3
    //     0x739fec: add             x3, x3, HEAP, lsl #32
    // 0x739ff0: LoadField: r4 = r3->field_b
    //     0x739ff0: ldur            w4, [x3, #0xb]
    // 0x739ff4: r3 = LoadInt32Instr(r1)
    //     0x739ff4: sbfx            x3, x1, #1, #0x1f
    // 0x739ff8: stur            x3, [fp, #-0x60]
    // 0x739ffc: r1 = LoadInt32Instr(r4)
    //     0x739ffc: sbfx            x1, x4, #1, #0x1f
    // 0x73a000: cmp             x3, x1
    // 0x73a004: b.ne            #0x73a010
    // 0x73a008: mov             x1, x0
    // 0x73a00c: r0 = _growToNextCapacity()
    //     0x73a00c: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x73a010: ldur            x2, [fp, #-0x40]
    // 0x73a014: ldur            x3, [fp, #-0x60]
    // 0x73a018: add             x4, x3, #1
    // 0x73a01c: stur            x4, [fp, #-0x68]
    // 0x73a020: lsl             x0, x4, #1
    // 0x73a024: StoreField: r2->field_b = r0
    //     0x73a024: stur            w0, [x2, #0xb]
    // 0x73a028: LoadField: r5 = r2->field_f
    //     0x73a028: ldur            w5, [x2, #0xf]
    // 0x73a02c: DecompressPointer r5
    //     0x73a02c: add             x5, x5, HEAP, lsl #32
    // 0x73a030: mov             x1, x5
    // 0x73a034: ldur            x0, [fp, #-8]
    // 0x73a038: ArrayStore: r1[r3] = r0  ; List_4
    //     0x73a038: add             x25, x1, x3, lsl #2
    //     0x73a03c: add             x25, x25, #0xf
    //     0x73a040: str             w0, [x25]
    //     0x73a044: tbz             w0, #0, #0x73a060
    //     0x73a048: ldurb           w16, [x1, #-1]
    //     0x73a04c: ldurb           w17, [x0, #-1]
    //     0x73a050: and             x16, x17, x16, lsr #2
    //     0x73a054: tst             x16, HEAP, lsr #32
    //     0x73a058: b.eq            #0x73a060
    //     0x73a05c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73a060: LoadField: r0 = r5->field_b
    //     0x73a060: ldur            w0, [x5, #0xb]
    // 0x73a064: r1 = LoadInt32Instr(r0)
    //     0x73a064: sbfx            x1, x0, #1, #0x1f
    // 0x73a068: cmp             x4, x1
    // 0x73a06c: b.ne            #0x73a078
    // 0x73a070: mov             x1, x2
    // 0x73a074: r0 = _growToNextCapacity()
    //     0x73a074: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x73a078: ldur            x4, [fp, #-0x10]
    // 0x73a07c: ldur            x1, [fp, #-0x68]
    // 0x73a080: ldur            x0, [fp, #-0x40]
    // 0x73a084: add             x2, x1, #1
    // 0x73a088: lsl             x3, x2, #1
    // 0x73a08c: StoreField: r0->field_b = r3
    //     0x73a08c: stur            w3, [x0, #0xb]
    // 0x73a090: LoadField: r2 = r0->field_f
    //     0x73a090: ldur            w2, [x0, #0xf]
    // 0x73a094: DecompressPointer r2
    //     0x73a094: add             x2, x2, HEAP, lsl #32
    // 0x73a098: add             x3, x2, x1, lsl #2
    // 0x73a09c: r16 = Instance_SizedBox
    //     0x73a09c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x73a0a0: ldr             x16, [x16, #0x220]
    // 0x73a0a4: StoreField: r3->field_f = r16
    //     0x73a0a4: stur            w16, [x3, #0xf]
    // 0x73a0a8: LoadField: r1 = r4->field_1f
    //     0x73a0a8: ldur            w1, [x4, #0x1f]
    // 0x73a0ac: DecompressPointer r1
    //     0x73a0ac: add             x1, x1, HEAP, lsl #32
    // 0x73a0b0: r2 = "Adres"
    //     0x73a0b0: add             x2, PP, #0x19, lsl #12  ; [pp+0x19360] "Adres"
    //     0x73a0b4: ldr             x2, [x2, #0x360]
    // 0x73a0b8: r3 = Instance_IconData
    //     0x73a0b8: add             x3, PP, #0x15, lsl #12  ; [pp+0x15528] Obj!IconData@a09ae1
    //     0x73a0bc: ldr             x3, [x3, #0x528]
    // 0x73a0c0: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x73a0c0: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x73a0c4: r0 = buildDialogTextField()
    //     0x73a0c4: bl              #0x6f4c3c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDialogTextField
    // 0x73a0c8: mov             x2, x0
    // 0x73a0cc: ldur            x0, [fp, #-0x40]
    // 0x73a0d0: stur            x2, [fp, #-8]
    // 0x73a0d4: LoadField: r1 = r0->field_b
    //     0x73a0d4: ldur            w1, [x0, #0xb]
    // 0x73a0d8: LoadField: r3 = r0->field_f
    //     0x73a0d8: ldur            w3, [x0, #0xf]
    // 0x73a0dc: DecompressPointer r3
    //     0x73a0dc: add             x3, x3, HEAP, lsl #32
    // 0x73a0e0: LoadField: r4 = r3->field_b
    //     0x73a0e0: ldur            w4, [x3, #0xb]
    // 0x73a0e4: r3 = LoadInt32Instr(r1)
    //     0x73a0e4: sbfx            x3, x1, #1, #0x1f
    // 0x73a0e8: stur            x3, [fp, #-0x60]
    // 0x73a0ec: r1 = LoadInt32Instr(r4)
    //     0x73a0ec: sbfx            x1, x4, #1, #0x1f
    // 0x73a0f0: cmp             x3, x1
    // 0x73a0f4: b.ne            #0x73a100
    // 0x73a0f8: mov             x1, x0
    // 0x73a0fc: r0 = _growToNextCapacity()
    //     0x73a0fc: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x73a100: ldur            x4, [fp, #-0x10]
    // 0x73a104: ldur            x2, [fp, #-0x40]
    // 0x73a108: ldur            x3, [fp, #-0x60]
    // 0x73a10c: add             x0, x3, #1
    // 0x73a110: lsl             x1, x0, #1
    // 0x73a114: StoreField: r2->field_b = r1
    //     0x73a114: stur            w1, [x2, #0xb]
    // 0x73a118: LoadField: r1 = r2->field_f
    //     0x73a118: ldur            w1, [x2, #0xf]
    // 0x73a11c: DecompressPointer r1
    //     0x73a11c: add             x1, x1, HEAP, lsl #32
    // 0x73a120: ldur            x0, [fp, #-8]
    // 0x73a124: ArrayStore: r1[r3] = r0  ; List_4
    //     0x73a124: add             x25, x1, x3, lsl #2
    //     0x73a128: add             x25, x25, #0xf
    //     0x73a12c: str             w0, [x25]
    //     0x73a130: tbz             w0, #0, #0x73a14c
    //     0x73a134: ldurb           w16, [x1, #-1]
    //     0x73a138: ldurb           w17, [x0, #-1]
    //     0x73a13c: and             x16, x17, x16, lsr #2
    //     0x73a140: tst             x16, HEAP, lsr #32
    //     0x73a144: b.eq            #0x73a14c
    //     0x73a148: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73a14c: r0 = Column()
    //     0x73a14c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x73a150: mov             x1, x0
    // 0x73a154: r0 = Instance_Axis
    //     0x73a154: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x73a158: stur            x1, [fp, #-8]
    // 0x73a15c: StoreField: r1->field_f = r0
    //     0x73a15c: stur            w0, [x1, #0xf]
    // 0x73a160: r2 = Instance_MainAxisAlignment
    //     0x73a160: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x73a164: ldr             x2, [x2, #0x230]
    // 0x73a168: StoreField: r1->field_13 = r2
    //     0x73a168: stur            w2, [x1, #0x13]
    // 0x73a16c: r2 = Instance_MainAxisSize
    //     0x73a16c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x73a170: ldr             x2, [x2, #0xb60]
    // 0x73a174: ArrayStore: r1[0] = r2  ; List_4
    //     0x73a174: stur            w2, [x1, #0x17]
    // 0x73a178: r2 = Instance_CrossAxisAlignment
    //     0x73a178: add             x2, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x73a17c: ldr             x2, [x2, #0x338]
    // 0x73a180: StoreField: r1->field_1b = r2
    //     0x73a180: stur            w2, [x1, #0x1b]
    // 0x73a184: r2 = Instance_VerticalDirection
    //     0x73a184: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x73a188: ldr             x2, [x2, #0x340]
    // 0x73a18c: StoreField: r1->field_23 = r2
    //     0x73a18c: stur            w2, [x1, #0x23]
    // 0x73a190: r2 = Instance_Clip
    //     0x73a190: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x73a194: ldr             x2, [x2, #0x348]
    // 0x73a198: StoreField: r1->field_2b = r2
    //     0x73a198: stur            w2, [x1, #0x2b]
    // 0x73a19c: StoreField: r1->field_2f = rZR
    //     0x73a19c: stur            xzr, [x1, #0x2f]
    // 0x73a1a0: ldur            x2, [fp, #-0x40]
    // 0x73a1a4: StoreField: r1->field_b = r2
    //     0x73a1a4: stur            w2, [x1, #0xb]
    // 0x73a1a8: r0 = SingleChildScrollView()
    //     0x73a1a8: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x73a1ac: mov             x3, x0
    // 0x73a1b0: r0 = Instance_Axis
    //     0x73a1b0: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x73a1b4: stur            x3, [fp, #-0x20]
    // 0x73a1b8: StoreField: r3->field_b = r0
    //     0x73a1b8: stur            w0, [x3, #0xb]
    // 0x73a1bc: r0 = false
    //     0x73a1bc: add             x0, NULL, #0x30  ; false
    // 0x73a1c0: StoreField: r3->field_f = r0
    //     0x73a1c0: stur            w0, [x3, #0xf]
    // 0x73a1c4: ldur            x1, [fp, #-8]
    // 0x73a1c8: StoreField: r3->field_23 = r1
    //     0x73a1c8: stur            w1, [x3, #0x23]
    // 0x73a1cc: r1 = Instance_DragStartBehavior
    //     0x73a1cc: ldr             x1, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x73a1d0: StoreField: r3->field_27 = r1
    //     0x73a1d0: stur            w1, [x3, #0x27]
    // 0x73a1d4: r1 = Instance_Clip
    //     0x73a1d4: add             x1, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x73a1d8: ldr             x1, [x1, #0x2d8]
    // 0x73a1dc: StoreField: r3->field_2b = r1
    //     0x73a1dc: stur            w1, [x3, #0x2b]
    // 0x73a1e0: r1 = Instance_HitTestBehavior
    //     0x73a1e0: add             x1, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x73a1e4: ldr             x1, [x1, #0xe20]
    // 0x73a1e8: StoreField: r3->field_2f = r1
    //     0x73a1e8: stur            w1, [x3, #0x2f]
    // 0x73a1ec: ldur            x2, [fp, #-0x18]
    // 0x73a1f0: r1 = Function '<anonymous closure>':.
    //     0x73a1f0: add             x1, PP, #0x19, lsl #12  ; [pp+0x19368] AnonymousClosure: (0x6f5908), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog (0x6f64f4)
    //     0x73a1f4: ldr             x1, [x1, #0x368]
    // 0x73a1f8: r0 = AllocateClosure()
    //     0x73a1f8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73a1fc: stur            x0, [fp, #-8]
    // 0x73a200: r0 = TextButton()
    //     0x73a200: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x73a204: mov             x3, x0
    // 0x73a208: ldur            x0, [fp, #-8]
    // 0x73a20c: stur            x3, [fp, #-0x40]
    // 0x73a210: StoreField: r3->field_b = r0
    //     0x73a210: stur            w0, [x3, #0xb]
    // 0x73a214: r0 = false
    //     0x73a214: add             x0, NULL, #0x30  ; false
    // 0x73a218: StoreField: r3->field_27 = r0
    //     0x73a218: stur            w0, [x3, #0x27]
    // 0x73a21c: r4 = true
    //     0x73a21c: add             x4, NULL, #0x20  ; true
    // 0x73a220: StoreField: r3->field_2f = r4
    //     0x73a220: stur            w4, [x3, #0x2f]
    // 0x73a224: r1 = Instance_Text
    //     0x73a224: add             x1, PP, #0x19, lsl #12  ; [pp+0x19198] Obj!Text@a1ba91
    //     0x73a228: ldr             x1, [x1, #0x198]
    // 0x73a22c: StoreField: r3->field_37 = r1
    //     0x73a22c: stur            w1, [x3, #0x37]
    // 0x73a230: ldur            x5, [fp, #-0x10]
    // 0x73a234: LoadField: r1 = r5->field_27
    //     0x73a234: ldur            w1, [x5, #0x27]
    // 0x73a238: DecompressPointer r1
    //     0x73a238: add             x1, x1, HEAP, lsl #32
    // 0x73a23c: tbnz            w1, #4, #0x73a24c
    // 0x73a240: mov             x0, x5
    // 0x73a244: r1 = Null
    //     0x73a244: mov             x1, NULL
    // 0x73a248: b               #0x73a264
    // 0x73a24c: ldur            x2, [fp, #-0x18]
    // 0x73a250: r1 = Function '<anonymous closure>':.
    //     0x73a250: add             x1, PP, #0x19, lsl #12  ; [pp+0x19370] AnonymousClosure: (0x73a3c4), in [package:umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart] HotelsTabState::showHotelDialog (0x7397a0)
    //     0x73a254: ldr             x1, [x1, #0x370]
    // 0x73a258: r0 = AllocateClosure()
    //     0x73a258: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73a25c: mov             x1, x0
    // 0x73a260: ldur            x0, [fp, #-0x10]
    // 0x73a264: stur            x1, [fp, #-8]
    // 0x73a268: r16 = Instance_Color
    //     0x73a268: add             x16, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x73a26c: ldr             x16, [x16, #0xf30]
    // 0x73a270: r30 = Instance_Color
    //     0x73a270: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73a274: stp             lr, x16, [SP]
    // 0x73a278: r4 = const [0, 0x2, 0x2, 0, backgroundColor, 0, foregroundColor, 0x1, null]
    //     0x73a278: add             x4, PP, #0x19, lsl #12  ; [pp+0x191a8] List(9) [0, 0x2, 0x2, 0, "backgroundColor", 0, "foregroundColor", 0x1, Null]
    //     0x73a27c: ldr             x4, [x4, #0x1a8]
    // 0x73a280: r0 = styleFrom()
    //     0x73a280: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x73a284: mov             x1, x0
    // 0x73a288: ldur            x0, [fp, #-0x10]
    // 0x73a28c: stur            x1, [fp, #-0x18]
    // 0x73a290: LoadField: r2 = r0->field_27
    //     0x73a290: ldur            w2, [x0, #0x27]
    // 0x73a294: DecompressPointer r2
    //     0x73a294: add             x2, x2, HEAP, lsl #32
    // 0x73a298: tbnz            w2, #4, #0x73a2ac
    // 0x73a29c: mov             x0, x1
    // 0x73a2a0: r6 = Instance_SizedBox
    //     0x73a2a0: add             x6, PP, #0x19, lsl #12  ; [pp+0x191b0] Obj!SizedBox@a1fa51
    //     0x73a2a4: ldr             x6, [x6, #0x1b0]
    // 0x73a2a8: b               #0x73a2e4
    // 0x73a2ac: ldur            x0, [fp, #-0x28]
    // 0x73a2b0: tbnz            w0, #4, #0x73a2c0
    // 0x73a2b4: r0 = "Güncelle"
    //     0x73a2b4: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b48] "Güncelle"
    //     0x73a2b8: ldr             x0, [x0, #0xb48]
    // 0x73a2bc: b               #0x73a2c8
    // 0x73a2c0: r0 = "Ekle"
    //     0x73a2c0: add             x0, PP, #0x19, lsl #12  ; [pp+0x191b8] "Ekle"
    //     0x73a2c4: ldr             x0, [x0, #0x1b8]
    // 0x73a2c8: stur            x0, [fp, #-0x10]
    // 0x73a2cc: r0 = Text()
    //     0x73a2cc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x73a2d0: mov             x1, x0
    // 0x73a2d4: ldur            x0, [fp, #-0x10]
    // 0x73a2d8: StoreField: r1->field_b = r0
    //     0x73a2d8: stur            w0, [x1, #0xb]
    // 0x73a2dc: mov             x6, x1
    // 0x73a2e0: ldur            x0, [fp, #-0x18]
    // 0x73a2e4: ldur            x5, [fp, #-0x30]
    // 0x73a2e8: ldur            x4, [fp, #-0x38]
    // 0x73a2ec: ldur            x3, [fp, #-0x20]
    // 0x73a2f0: ldur            x2, [fp, #-0x40]
    // 0x73a2f4: ldur            x1, [fp, #-8]
    // 0x73a2f8: stur            x6, [fp, #-0x10]
    // 0x73a2fc: r0 = ElevatedButton()
    //     0x73a2fc: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x73a300: mov             x3, x0
    // 0x73a304: ldur            x0, [fp, #-8]
    // 0x73a308: stur            x3, [fp, #-0x28]
    // 0x73a30c: StoreField: r3->field_b = r0
    //     0x73a30c: stur            w0, [x3, #0xb]
    // 0x73a310: ldur            x0, [fp, #-0x18]
    // 0x73a314: StoreField: r3->field_1b = r0
    //     0x73a314: stur            w0, [x3, #0x1b]
    // 0x73a318: r0 = false
    //     0x73a318: add             x0, NULL, #0x30  ; false
    // 0x73a31c: StoreField: r3->field_27 = r0
    //     0x73a31c: stur            w0, [x3, #0x27]
    // 0x73a320: r1 = true
    //     0x73a320: add             x1, NULL, #0x20  ; true
    // 0x73a324: StoreField: r3->field_2f = r1
    //     0x73a324: stur            w1, [x3, #0x2f]
    // 0x73a328: ldur            x1, [fp, #-0x10]
    // 0x73a32c: StoreField: r3->field_37 = r1
    //     0x73a32c: stur            w1, [x3, #0x37]
    // 0x73a330: r1 = Null
    //     0x73a330: mov             x1, NULL
    // 0x73a334: r2 = 4
    //     0x73a334: mov             x2, #4
    // 0x73a338: r0 = AllocateArray()
    //     0x73a338: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73a33c: mov             x2, x0
    // 0x73a340: ldur            x0, [fp, #-0x40]
    // 0x73a344: stur            x2, [fp, #-8]
    // 0x73a348: StoreField: r2->field_f = r0
    //     0x73a348: stur            w0, [x2, #0xf]
    // 0x73a34c: ldur            x0, [fp, #-0x28]
    // 0x73a350: StoreField: r2->field_13 = r0
    //     0x73a350: stur            w0, [x2, #0x13]
    // 0x73a354: r1 = <Widget>
    //     0x73a354: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73a358: r0 = AllocateGrowableArray()
    //     0x73a358: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x73a35c: mov             x1, x0
    // 0x73a360: ldur            x0, [fp, #-8]
    // 0x73a364: stur            x1, [fp, #-0x10]
    // 0x73a368: StoreField: r1->field_f = r0
    //     0x73a368: stur            w0, [x1, #0xf]
    // 0x73a36c: r0 = 4
    //     0x73a36c: mov             x0, #4
    // 0x73a370: StoreField: r1->field_b = r0
    //     0x73a370: stur            w0, [x1, #0xb]
    // 0x73a374: r0 = AlertDialog()
    //     0x73a374: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x73a378: ldur            x1, [fp, #-0x38]
    // 0x73a37c: StoreField: r0->field_f = r1
    //     0x73a37c: stur            w1, [x0, #0xf]
    // 0x73a380: ldur            x1, [fp, #-0x20]
    // 0x73a384: StoreField: r0->field_1b = r1
    //     0x73a384: stur            w1, [x0, #0x1b]
    // 0x73a388: ldur            x1, [fp, #-0x10]
    // 0x73a38c: StoreField: r0->field_27 = r1
    //     0x73a38c: stur            w1, [x0, #0x27]
    // 0x73a390: r1 = Instance_Color
    //     0x73a390: add             x1, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x73a394: ldr             x1, [x1, #0x1c0]
    // 0x73a398: StoreField: r0->field_43 = r1
    //     0x73a398: stur            w1, [x0, #0x43]
    // 0x73a39c: ldur            x1, [fp, #-0x30]
    // 0x73a3a0: StoreField: r0->field_5f = r1
    //     0x73a3a0: stur            w1, [x0, #0x5f]
    // 0x73a3a4: r1 = false
    //     0x73a3a4: add             x1, NULL, #0x30  ; false
    // 0x73a3a8: StoreField: r0->field_6b = r1
    //     0x73a3a8: stur            w1, [x0, #0x6b]
    // 0x73a3ac: LeaveFrame
    //     0x73a3ac: mov             SP, fp
    //     0x73a3b0: ldp             fp, lr, [SP], #0x10
    // 0x73a3b4: ret
    //     0x73a3b4: ret             
    // 0x73a3b8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73a3b8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73a3bc: b               #0x7399f4
    // 0x73a3c0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73a3c0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x73a3c4, size: 0x694
    // 0x73a3c4: EnterFrame
    //     0x73a3c4: stp             fp, lr, [SP, #-0x10]!
    //     0x73a3c8: mov             fp, SP
    // 0x73a3cc: AllocStack(0x98)
    //     0x73a3cc: sub             SP, SP, #0x98
    // 0x73a3d0: SetupParameters(HotelsTabState this /* r1 */)
    //     0x73a3d0: stur            NULL, [fp, #-8]
    //     0x73a3d4: mov             x0, #0
    //     0x73a3d8: add             x1, fp, w0, sxtw #2
    //     0x73a3dc: ldr             x1, [x1, #0x10]
    //     0x73a3e0: ldur            w2, [x1, #0x17]
    //     0x73a3e4: add             x2, x2, HEAP, lsl #32
    //     0x73a3e8: stur            x2, [fp, #-0x60]
    // 0x73a3ec: CheckStackOverflow
    //     0x73a3ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73a3f0: cmp             SP, x16
    //     0x73a3f4: b.ls            #0x73aa48
    // 0x73a3f8: InitAsync() -> Future<void?>
    //     0x73a3f8: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x73a3fc: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x73a400: ldur            x2, [fp, #-0x60]
    // 0x73a404: LoadField: r0 = r2->field_b
    //     0x73a404: ldur            w0, [x2, #0xb]
    // 0x73a408: DecompressPointer r0
    //     0x73a408: add             x0, x0, HEAP, lsl #32
    // 0x73a40c: stur            x0, [fp, #-0x78]
    // 0x73a410: LoadField: r3 = r0->field_b
    //     0x73a410: ldur            w3, [x0, #0xb]
    // 0x73a414: DecompressPointer r3
    //     0x73a414: add             x3, x3, HEAP, lsl #32
    // 0x73a418: stur            x3, [fp, #-0x70]
    // 0x73a41c: LoadField: r4 = r3->field_1b
    //     0x73a41c: ldur            w4, [x3, #0x1b]
    // 0x73a420: DecompressPointer r4
    //     0x73a420: add             x4, x4, HEAP, lsl #32
    // 0x73a424: stur            x4, [fp, #-0x68]
    // 0x73a428: LoadField: r1 = r4->field_27
    //     0x73a428: ldur            w1, [x4, #0x27]
    // 0x73a42c: DecompressPointer r1
    //     0x73a42c: add             x1, x1, HEAP, lsl #32
    // 0x73a430: LoadField: r5 = r1->field_7
    //     0x73a430: ldur            w5, [x1, #7]
    // 0x73a434: DecompressPointer r5
    //     0x73a434: add             x5, x5, HEAP, lsl #32
    // 0x73a438: mov             x1, x5
    // 0x73a43c: r0 = trim()
    //     0x73a43c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x73a440: LoadField: r1 = r0->field_7
    //     0x73a440: ldur            w1, [x0, #7]
    // 0x73a444: cbnz            w1, #0x73a470
    // 0x73a448: ldur            x0, [fp, #-0x60]
    // 0x73a44c: LoadField: r1 = r0->field_f
    //     0x73a44c: ldur            w1, [x0, #0xf]
    // 0x73a450: DecompressPointer r1
    //     0x73a450: add             x1, x1, HEAP, lsl #32
    // 0x73a454: r0 = of()
    //     0x73a454: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x73a458: mov             x1, x0
    // 0x73a45c: r2 = Instance_SnackBar
    //     0x73a45c: add             x2, PP, #0x19, lsl #12  ; [pp+0x19378] Obj!SnackBar@a20691
    //     0x73a460: ldr             x2, [x2, #0x378]
    // 0x73a464: r0 = showSnackBar()
    //     0x73a464: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x73a468: r0 = Null
    //     0x73a468: mov             x0, NULL
    // 0x73a46c: r0 = ReturnAsyncNotFuture()
    //     0x73a46c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x73a470: ldur            x0, [fp, #-0x60]
    // 0x73a474: ldur            x3, [fp, #-0x70]
    // 0x73a478: LoadField: r1 = r3->field_23
    //     0x73a478: ldur            w1, [x3, #0x23]
    // 0x73a47c: DecompressPointer r1
    //     0x73a47c: add             x1, x1, HEAP, lsl #32
    // 0x73a480: cmp             w1, NULL
    // 0x73a484: b.ne            #0x73a4ac
    // 0x73a488: LoadField: r1 = r0->field_f
    //     0x73a488: ldur            w1, [x0, #0xf]
    // 0x73a48c: DecompressPointer r1
    //     0x73a48c: add             x1, x1, HEAP, lsl #32
    // 0x73a490: r0 = of()
    //     0x73a490: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x73a494: mov             x1, x0
    // 0x73a498: r2 = Instance_SnackBar
    //     0x73a498: add             x2, PP, #0x19, lsl #12  ; [pp+0x192c0] Obj!SnackBar@a204b1
    //     0x73a49c: ldr             x2, [x2, #0x2c0]
    // 0x73a4a0: r0 = showSnackBar()
    //     0x73a4a0: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x73a4a4: r0 = Null
    //     0x73a4a4: mov             x0, NULL
    // 0x73a4a8: r0 = ReturnAsyncNotFuture()
    //     0x73a4a8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x73a4ac: LoadField: r4 = r0->field_13
    //     0x73a4ac: ldur            w4, [x0, #0x13]
    // 0x73a4b0: DecompressPointer r4
    //     0x73a4b0: add             x4, x4, HEAP, lsl #32
    // 0x73a4b4: mov             x2, x0
    // 0x73a4b8: stur            x4, [fp, #-0x80]
    // 0x73a4bc: r1 = Function '<anonymous closure>':.
    //     0x73a4bc: add             x1, PP, #0x19, lsl #12  ; [pp+0x19380] AnonymousClosure: (0x6f6468), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog (0x6f64f4)
    //     0x73a4c0: ldr             x1, [x1, #0x380]
    // 0x73a4c4: r0 = AllocateClosure()
    //     0x73a4c4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73a4c8: ldur            x16, [fp, #-0x80]
    // 0x73a4cc: stp             x0, x16, [SP]
    // 0x73a4d0: ldur            x0, [fp, #-0x80]
    // 0x73a4d4: ClosureCall
    //     0x73a4d4: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x73a4d8: ldur            x2, [x0, #0x1f]
    //     0x73a4dc: blr             x2
    // 0x73a4e0: ldur            x0, [fp, #-0x70]
    // 0x73a4e4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x73a4e4: ldur            w1, [x0, #0x17]
    // 0x73a4e8: DecompressPointer r1
    //     0x73a4e8: add             x1, x1, HEAP, lsl #32
    // 0x73a4ec: tbnz            w1, #4, #0x73a700
    // 0x73a4f0: ldur            x3, [fp, #-0x60]
    // 0x73a4f4: ldur            x4, [fp, #-0x68]
    // 0x73a4f8: LoadField: r1 = r0->field_f
    //     0x73a4f8: ldur            w1, [x0, #0xf]
    // 0x73a4fc: DecompressPointer r1
    //     0x73a4fc: add             x1, x1, HEAP, lsl #32
    // 0x73a500: LoadField: r2 = r1->field_b
    //     0x73a500: ldur            w2, [x1, #0xb]
    // 0x73a504: DecompressPointer r2
    //     0x73a504: add             x2, x2, HEAP, lsl #32
    // 0x73a508: cmp             w2, NULL
    // 0x73a50c: b.eq            #0x73aa50
    // 0x73a510: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x73a510: ldur            w1, [x2, #0x17]
    // 0x73a514: DecompressPointer r1
    //     0x73a514: add             x1, x1, HEAP, lsl #32
    // 0x73a518: LoadField: r2 = r1->field_7
    //     0x73a518: ldur            w2, [x1, #7]
    // 0x73a51c: DecompressPointer r2
    //     0x73a51c: add             x2, x2, HEAP, lsl #32
    // 0x73a520: mov             x1, x2
    // 0x73a524: r2 = "hotels"
    //     0x73a524: add             x2, PP, #0x14, lsl #12  ; [pp+0x14990] "hotels"
    //     0x73a528: ldr             x2, [x2, #0x990]
    // 0x73a52c: r0 = collection()
    //     0x73a52c: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x73a530: mov             x1, x0
    // 0x73a534: ldur            x0, [fp, #-0x70]
    // 0x73a538: LoadField: r2 = r0->field_13
    //     0x73a538: ldur            w2, [x0, #0x13]
    // 0x73a53c: DecompressPointer r2
    //     0x73a53c: add             x2, x2, HEAP, lsl #32
    // 0x73a540: cmp             w2, NULL
    // 0x73a544: b.eq            #0x73aa54
    // 0x73a548: LoadField: r3 = r2->field_7
    //     0x73a548: ldur            w3, [x2, #7]
    // 0x73a54c: DecompressPointer r3
    //     0x73a54c: add             x3, x3, HEAP, lsl #32
    // 0x73a550: str             x3, [SP]
    // 0x73a554: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x73a554: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x73a558: r0 = doc()
    //     0x73a558: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x73a55c: r1 = Null
    //     0x73a55c: mov             x1, NULL
    // 0x73a560: r2 = 20
    //     0x73a560: mov             x2, #0x14
    // 0x73a564: stur            x0, [fp, #-0x80]
    // 0x73a568: r0 = AllocateArray()
    //     0x73a568: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73a56c: stur            x0, [fp, #-0x88]
    // 0x73a570: r16 = "name"
    //     0x73a570: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x73a574: StoreField: r0->field_f = r16
    //     0x73a574: stur            w16, [x0, #0xf]
    // 0x73a578: ldur            x2, [fp, #-0x68]
    // 0x73a57c: LoadField: r1 = r2->field_27
    //     0x73a57c: ldur            w1, [x2, #0x27]
    // 0x73a580: DecompressPointer r1
    //     0x73a580: add             x1, x1, HEAP, lsl #32
    // 0x73a584: LoadField: r2 = r1->field_7
    //     0x73a584: ldur            w2, [x1, #7]
    // 0x73a588: DecompressPointer r2
    //     0x73a588: add             x2, x2, HEAP, lsl #32
    // 0x73a58c: mov             x1, x2
    // 0x73a590: r0 = trim()
    //     0x73a590: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x73a594: ldur            x1, [fp, #-0x88]
    // 0x73a598: ArrayStore: r1[1] = r0  ; List_4
    //     0x73a598: add             x25, x1, #0x13
    //     0x73a59c: str             w0, [x25]
    //     0x73a5a0: tbz             w0, #0, #0x73a5bc
    //     0x73a5a4: ldurb           w16, [x1, #-1]
    //     0x73a5a8: ldurb           w17, [x0, #-1]
    //     0x73a5ac: and             x16, x17, x16, lsr #2
    //     0x73a5b0: tst             x16, HEAP, lsr #32
    //     0x73a5b4: b.eq            #0x73a5bc
    //     0x73a5b8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73a5bc: ldur            x2, [fp, #-0x88]
    // 0x73a5c0: r16 = "city"
    //     0x73a5c0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14980] "city"
    //     0x73a5c4: ldr             x16, [x16, #0x980]
    // 0x73a5c8: ArrayStore: r2[0] = r16  ; List_4
    //     0x73a5c8: stur            w16, [x2, #0x17]
    // 0x73a5cc: ldur            x3, [fp, #-0x60]
    // 0x73a5d0: ArrayLoad: r0 = r3[0]  ; List_4
    //     0x73a5d0: ldur            w0, [x3, #0x17]
    // 0x73a5d4: DecompressPointer r0
    //     0x73a5d4: add             x0, x0, HEAP, lsl #32
    // 0x73a5d8: mov             x1, x2
    // 0x73a5dc: ArrayStore: r1[3] = r0  ; List_4
    //     0x73a5dc: add             x25, x1, #0x1b
    //     0x73a5e0: str             w0, [x25]
    //     0x73a5e4: tbz             w0, #0, #0x73a600
    //     0x73a5e8: ldurb           w16, [x1, #-1]
    //     0x73a5ec: ldurb           w17, [x0, #-1]
    //     0x73a5f0: and             x16, x17, x16, lsr #2
    //     0x73a5f4: tst             x16, HEAP, lsr #32
    //     0x73a5f8: b.eq            #0x73a600
    //     0x73a5fc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73a600: r16 = "address"
    //     0x73a600: add             x16, PP, #8, lsl #12  ; [pp+0x82a8] "address"
    //     0x73a604: ldr             x16, [x16, #0x2a8]
    // 0x73a608: StoreField: r2->field_1f = r16
    //     0x73a608: stur            w16, [x2, #0x1f]
    // 0x73a60c: ldur            x0, [fp, #-0x70]
    // 0x73a610: LoadField: r1 = r0->field_1f
    //     0x73a610: ldur            w1, [x0, #0x1f]
    // 0x73a614: DecompressPointer r1
    //     0x73a614: add             x1, x1, HEAP, lsl #32
    // 0x73a618: LoadField: r4 = r1->field_27
    //     0x73a618: ldur            w4, [x1, #0x27]
    // 0x73a61c: DecompressPointer r4
    //     0x73a61c: add             x4, x4, HEAP, lsl #32
    // 0x73a620: LoadField: r1 = r4->field_7
    //     0x73a620: ldur            w1, [x4, #7]
    // 0x73a624: DecompressPointer r1
    //     0x73a624: add             x1, x1, HEAP, lsl #32
    // 0x73a628: r0 = trim()
    //     0x73a628: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x73a62c: ldur            x1, [fp, #-0x88]
    // 0x73a630: ArrayStore: r1[5] = r0  ; List_4
    //     0x73a630: add             x25, x1, #0x23
    //     0x73a634: str             w0, [x25]
    //     0x73a638: tbz             w0, #0, #0x73a654
    //     0x73a63c: ldurb           w16, [x1, #-1]
    //     0x73a640: ldurb           w17, [x0, #-1]
    //     0x73a644: and             x16, x17, x16, lsr #2
    //     0x73a648: tst             x16, HEAP, lsr #32
    //     0x73a64c: b.eq            #0x73a654
    //     0x73a650: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73a654: ldur            x2, [fp, #-0x88]
    // 0x73a658: r16 = "trip_id"
    //     0x73a658: add             x16, PP, #0x13, lsl #12  ; [pp+0x13bf0] "trip_id"
    //     0x73a65c: ldr             x16, [x16, #0xbf0]
    // 0x73a660: StoreField: r2->field_27 = r16
    //     0x73a660: stur            w16, [x2, #0x27]
    // 0x73a664: ldur            x3, [fp, #-0x70]
    // 0x73a668: LoadField: r0 = r3->field_23
    //     0x73a668: ldur            w0, [x3, #0x23]
    // 0x73a66c: DecompressPointer r0
    //     0x73a66c: add             x0, x0, HEAP, lsl #32
    // 0x73a670: mov             x1, x2
    // 0x73a674: ArrayStore: r1[7] = r0  ; List_4
    //     0x73a674: add             x25, x1, #0x2b
    //     0x73a678: str             w0, [x25]
    //     0x73a67c: tbz             w0, #0, #0x73a698
    //     0x73a680: ldurb           w16, [x1, #-1]
    //     0x73a684: ldurb           w17, [x0, #-1]
    //     0x73a688: and             x16, x17, x16, lsr #2
    //     0x73a68c: tst             x16, HEAP, lsr #32
    //     0x73a690: b.eq            #0x73a698
    //     0x73a694: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73a698: r16 = "updated_at"
    //     0x73a698: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x73a69c: ldr             x16, [x16, #0x58]
    // 0x73a6a0: StoreField: r2->field_2f = r16
    //     0x73a6a0: stur            w16, [x2, #0x2f]
    // 0x73a6a4: r0 = serverTimestamp()
    //     0x73a6a4: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x73a6a8: ldur            x1, [fp, #-0x88]
    // 0x73a6ac: ArrayStore: r1[9] = r0  ; List_4
    //     0x73a6ac: add             x25, x1, #0x33
    //     0x73a6b0: str             w0, [x25]
    //     0x73a6b4: tbz             w0, #0, #0x73a6d0
    //     0x73a6b8: ldurb           w16, [x1, #-1]
    //     0x73a6bc: ldurb           w17, [x0, #-1]
    //     0x73a6c0: and             x16, x17, x16, lsr #2
    //     0x73a6c4: tst             x16, HEAP, lsr #32
    //     0x73a6c8: b.eq            #0x73a6d0
    //     0x73a6cc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73a6d0: r16 = <Object, Object?>
    //     0x73a6d0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14828] TypeArguments: <Object, Object?>
    //     0x73a6d4: ldr             x16, [x16, #0x828]
    // 0x73a6d8: ldur            lr, [fp, #-0x88]
    // 0x73a6dc: stp             lr, x16, [SP]
    // 0x73a6e0: r0 = Map._fromLiteral()
    //     0x73a6e0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x73a6e4: ldur            x1, [fp, #-0x80]
    // 0x73a6e8: mov             x2, x0
    // 0x73a6ec: r0 = update()
    //     0x73a6ec: bl              #0x6d3e10  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::update
    // 0x73a6f0: mov             x1, x0
    // 0x73a6f4: stur            x1, [fp, #-0x80]
    // 0x73a6f8: r0 = Await()
    //     0x73a6f8: bl              #0x3dd188  ; AwaitStub
    // 0x73a6fc: b               #0x73a94c
    // 0x73a700: ldur            x3, [fp, #-0x60]
    // 0x73a704: ldur            x2, [fp, #-0x68]
    // 0x73a708: LoadField: r1 = r0->field_f
    //     0x73a708: ldur            w1, [x0, #0xf]
    // 0x73a70c: DecompressPointer r1
    //     0x73a70c: add             x1, x1, HEAP, lsl #32
    // 0x73a710: r0 = onDataChanged()
    //     0x73a710: bl              #0x617b5c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::onDataChanged
    // 0x73a714: LoadField: r1 = r0->field_7
    //     0x73a714: ldur            w1, [x0, #7]
    // 0x73a718: DecompressPointer r1
    //     0x73a718: add             x1, x1, HEAP, lsl #32
    // 0x73a71c: r2 = "hotels"
    //     0x73a71c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14990] "hotels"
    //     0x73a720: ldr             x2, [x2, #0x990]
    // 0x73a724: r0 = collection()
    //     0x73a724: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x73a728: r1 = Null
    //     0x73a728: mov             x1, NULL
    // 0x73a72c: r2 = 28
    //     0x73a72c: mov             x2, #0x1c
    // 0x73a730: stur            x0, [fp, #-0x80]
    // 0x73a734: r0 = AllocateArray()
    //     0x73a734: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73a738: stur            x0, [fp, #-0x88]
    // 0x73a73c: r16 = "name"
    //     0x73a73c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x73a740: StoreField: r0->field_f = r16
    //     0x73a740: stur            w16, [x0, #0xf]
    // 0x73a744: ldur            x1, [fp, #-0x68]
    // 0x73a748: LoadField: r2 = r1->field_27
    //     0x73a748: ldur            w2, [x1, #0x27]
    // 0x73a74c: DecompressPointer r2
    //     0x73a74c: add             x2, x2, HEAP, lsl #32
    // 0x73a750: LoadField: r1 = r2->field_7
    //     0x73a750: ldur            w1, [x2, #7]
    // 0x73a754: DecompressPointer r1
    //     0x73a754: add             x1, x1, HEAP, lsl #32
    // 0x73a758: r0 = trim()
    //     0x73a758: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x73a75c: ldur            x1, [fp, #-0x88]
    // 0x73a760: ArrayStore: r1[1] = r0  ; List_4
    //     0x73a760: add             x25, x1, #0x13
    //     0x73a764: str             w0, [x25]
    //     0x73a768: tbz             w0, #0, #0x73a784
    //     0x73a76c: ldurb           w16, [x1, #-1]
    //     0x73a770: ldurb           w17, [x0, #-1]
    //     0x73a774: and             x16, x17, x16, lsr #2
    //     0x73a778: tst             x16, HEAP, lsr #32
    //     0x73a77c: b.eq            #0x73a784
    //     0x73a780: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73a784: ldur            x2, [fp, #-0x88]
    // 0x73a788: r16 = "city"
    //     0x73a788: add             x16, PP, #0x14, lsl #12  ; [pp+0x14980] "city"
    //     0x73a78c: ldr             x16, [x16, #0x980]
    // 0x73a790: ArrayStore: r2[0] = r16  ; List_4
    //     0x73a790: stur            w16, [x2, #0x17]
    // 0x73a794: ldur            x3, [fp, #-0x60]
    // 0x73a798: ArrayLoad: r0 = r3[0]  ; List_4
    //     0x73a798: ldur            w0, [x3, #0x17]
    // 0x73a79c: DecompressPointer r0
    //     0x73a79c: add             x0, x0, HEAP, lsl #32
    // 0x73a7a0: mov             x1, x2
    // 0x73a7a4: ArrayStore: r1[3] = r0  ; List_4
    //     0x73a7a4: add             x25, x1, #0x1b
    //     0x73a7a8: str             w0, [x25]
    //     0x73a7ac: tbz             w0, #0, #0x73a7c8
    //     0x73a7b0: ldurb           w16, [x1, #-1]
    //     0x73a7b4: ldurb           w17, [x0, #-1]
    //     0x73a7b8: and             x16, x17, x16, lsr #2
    //     0x73a7bc: tst             x16, HEAP, lsr #32
    //     0x73a7c0: b.eq            #0x73a7c8
    //     0x73a7c4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73a7c8: r16 = "address"
    //     0x73a7c8: add             x16, PP, #8, lsl #12  ; [pp+0x82a8] "address"
    //     0x73a7cc: ldr             x16, [x16, #0x2a8]
    // 0x73a7d0: StoreField: r2->field_1f = r16
    //     0x73a7d0: stur            w16, [x2, #0x1f]
    // 0x73a7d4: ldur            x0, [fp, #-0x70]
    // 0x73a7d8: LoadField: r1 = r0->field_1f
    //     0x73a7d8: ldur            w1, [x0, #0x1f]
    // 0x73a7dc: DecompressPointer r1
    //     0x73a7dc: add             x1, x1, HEAP, lsl #32
    // 0x73a7e0: LoadField: r4 = r1->field_27
    //     0x73a7e0: ldur            w4, [x1, #0x27]
    // 0x73a7e4: DecompressPointer r4
    //     0x73a7e4: add             x4, x4, HEAP, lsl #32
    // 0x73a7e8: LoadField: r1 = r4->field_7
    //     0x73a7e8: ldur            w1, [x4, #7]
    // 0x73a7ec: DecompressPointer r1
    //     0x73a7ec: add             x1, x1, HEAP, lsl #32
    // 0x73a7f0: r0 = trim()
    //     0x73a7f0: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x73a7f4: ldur            x1, [fp, #-0x88]
    // 0x73a7f8: ArrayStore: r1[5] = r0  ; List_4
    //     0x73a7f8: add             x25, x1, #0x23
    //     0x73a7fc: str             w0, [x25]
    //     0x73a800: tbz             w0, #0, #0x73a81c
    //     0x73a804: ldurb           w16, [x1, #-1]
    //     0x73a808: ldurb           w17, [x0, #-1]
    //     0x73a80c: and             x16, x17, x16, lsr #2
    //     0x73a810: tst             x16, HEAP, lsr #32
    //     0x73a814: b.eq            #0x73a81c
    //     0x73a818: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73a81c: ldur            x2, [fp, #-0x88]
    // 0x73a820: r16 = "trip_id"
    //     0x73a820: add             x16, PP, #0x13, lsl #12  ; [pp+0x13bf0] "trip_id"
    //     0x73a824: ldr             x16, [x16, #0xbf0]
    // 0x73a828: StoreField: r2->field_27 = r16
    //     0x73a828: stur            w16, [x2, #0x27]
    // 0x73a82c: ldur            x3, [fp, #-0x70]
    // 0x73a830: LoadField: r0 = r3->field_23
    //     0x73a830: ldur            w0, [x3, #0x23]
    // 0x73a834: DecompressPointer r0
    //     0x73a834: add             x0, x0, HEAP, lsl #32
    // 0x73a838: mov             x1, x2
    // 0x73a83c: ArrayStore: r1[7] = r0  ; List_4
    //     0x73a83c: add             x25, x1, #0x2b
    //     0x73a840: str             w0, [x25]
    //     0x73a844: tbz             w0, #0, #0x73a860
    //     0x73a848: ldurb           w16, [x1, #-1]
    //     0x73a84c: ldurb           w17, [x0, #-1]
    //     0x73a850: and             x16, x17, x16, lsr #2
    //     0x73a854: tst             x16, HEAP, lsr #32
    //     0x73a858: b.eq            #0x73a860
    //     0x73a85c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73a860: r16 = "agency_id"
    //     0x73a860: add             x16, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x73a864: ldr             x16, [x16, #0x40]
    // 0x73a868: StoreField: r2->field_2f = r16
    //     0x73a868: stur            w16, [x2, #0x2f]
    // 0x73a86c: LoadField: r1 = r3->field_f
    //     0x73a86c: ldur            w1, [x3, #0xf]
    // 0x73a870: DecompressPointer r1
    //     0x73a870: add             x1, x1, HEAP, lsl #32
    // 0x73a874: r0 = textAlign()
    //     0x73a874: bl              #0x582638  ; [package:flutter/src/material/input_decorator.dart] _InputDecoratorState::textAlign
    // 0x73a878: LoadField: r1 = r0->field_7
    //     0x73a878: ldur            w1, [x0, #7]
    // 0x73a87c: DecompressPointer r1
    //     0x73a87c: add             x1, x1, HEAP, lsl #32
    // 0x73a880: mov             x0, x1
    // 0x73a884: ldur            x1, [fp, #-0x88]
    // 0x73a888: ArrayStore: r1[9] = r0  ; List_4
    //     0x73a888: add             x25, x1, #0x33
    //     0x73a88c: str             w0, [x25]
    //     0x73a890: tbz             w0, #0, #0x73a8ac
    //     0x73a894: ldurb           w16, [x1, #-1]
    //     0x73a898: ldurb           w17, [x0, #-1]
    //     0x73a89c: and             x16, x17, x16, lsr #2
    //     0x73a8a0: tst             x16, HEAP, lsr #32
    //     0x73a8a4: b.eq            #0x73a8ac
    //     0x73a8a8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73a8ac: ldur            x1, [fp, #-0x88]
    // 0x73a8b0: r16 = "created_at"
    //     0x73a8b0: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x73a8b4: ldr             x16, [x16, #0xc00]
    // 0x73a8b8: StoreField: r1->field_37 = r16
    //     0x73a8b8: stur            w16, [x1, #0x37]
    // 0x73a8bc: r0 = serverTimestamp()
    //     0x73a8bc: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x73a8c0: ldur            x1, [fp, #-0x88]
    // 0x73a8c4: ArrayStore: r1[11] = r0  ; List_4
    //     0x73a8c4: add             x25, x1, #0x3b
    //     0x73a8c8: str             w0, [x25]
    //     0x73a8cc: tbz             w0, #0, #0x73a8e8
    //     0x73a8d0: ldurb           w16, [x1, #-1]
    //     0x73a8d4: ldurb           w17, [x0, #-1]
    //     0x73a8d8: and             x16, x17, x16, lsr #2
    //     0x73a8dc: tst             x16, HEAP, lsr #32
    //     0x73a8e0: b.eq            #0x73a8e8
    //     0x73a8e4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73a8e8: ldur            x1, [fp, #-0x88]
    // 0x73a8ec: r16 = "updated_at"
    //     0x73a8ec: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x73a8f0: ldr             x16, [x16, #0x58]
    // 0x73a8f4: StoreField: r1->field_3f = r16
    //     0x73a8f4: stur            w16, [x1, #0x3f]
    // 0x73a8f8: r0 = serverTimestamp()
    //     0x73a8f8: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x73a8fc: ldur            x1, [fp, #-0x88]
    // 0x73a900: ArrayStore: r1[13] = r0  ; List_4
    //     0x73a900: add             x25, x1, #0x43
    //     0x73a904: str             w0, [x25]
    //     0x73a908: tbz             w0, #0, #0x73a924
    //     0x73a90c: ldurb           w16, [x1, #-1]
    //     0x73a910: ldurb           w17, [x0, #-1]
    //     0x73a914: and             x16, x17, x16, lsr #2
    //     0x73a918: tst             x16, HEAP, lsr #32
    //     0x73a91c: b.eq            #0x73a924
    //     0x73a920: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73a924: r16 = <String, Object?>
    //     0x73a924: ldr             x16, [PP, #0xe8]  ; [pp+0xe8] TypeArguments: <String, Object?>
    // 0x73a928: ldur            lr, [fp, #-0x88]
    // 0x73a92c: stp             lr, x16, [SP]
    // 0x73a930: r0 = Map._fromLiteral()
    //     0x73a930: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x73a934: ldur            x1, [fp, #-0x80]
    // 0x73a938: mov             x2, x0
    // 0x73a93c: r0 = add()
    //     0x73a93c: bl              #0x6f584c  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::add
    // 0x73a940: mov             x1, x0
    // 0x73a944: stur            x1, [fp, #-0x68]
    // 0x73a948: r0 = Await()
    //     0x73a948: bl              #0x3dd188  ; AwaitStub
    // 0x73a94c: ldur            x2, [fp, #-0x78]
    // 0x73a950: ldur            x0, [fp, #-0x70]
    // 0x73a954: LoadField: r1 = r0->field_f
    //     0x73a954: ldur            w1, [x0, #0xf]
    // 0x73a958: DecompressPointer r1
    //     0x73a958: add             x1, x1, HEAP, lsl #32
    // 0x73a95c: r0 = isFocused()
    //     0x73a95c: bl              #0x68a464  ; [package:flutter/src/material/input_decorator.dart] _InputDecoratorState::isFocused
    // 0x73a960: stur            x0, [fp, #-0x70]
    // 0x73a964: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x73a964: ldur            w2, [x0, #0x17]
    // 0x73a968: DecompressPointer r2
    //     0x73a968: add             x2, x2, HEAP, lsl #32
    // 0x73a96c: mov             x1, x2
    // 0x73a970: stur            x2, [fp, #-0x68]
    // 0x73a974: r0 = _loadAgencyData()
    //     0x73a974: bl              #0x63a658  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_loadAgencyData
    // 0x73a978: ldur            x0, [fp, #-0x78]
    // 0x73a97c: LoadField: r1 = r0->field_f
    //     0x73a97c: ldur            w1, [x0, #0xf]
    // 0x73a980: DecompressPointer r1
    //     0x73a980: add             x1, x1, HEAP, lsl #32
    // 0x73a984: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x73a984: ldur            w0, [x1, #0x17]
    // 0x73a988: DecompressPointer r0
    //     0x73a988: add             x0, x0, HEAP, lsl #32
    // 0x73a98c: cmp             w0, NULL
    // 0x73a990: b.eq            #0x73aa40
    // 0x73a994: r16 = <Object?>
    //     0x73a994: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x73a998: stp             x1, x16, [SP]
    // 0x73a99c: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x73a99c: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x73a9a0: r0 = pop()
    //     0x73a9a0: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x73a9a4: b               #0x73aa40
    // 0x73a9a8: sub             SP, fp, #0x98
    // 0x73a9ac: ldur            x2, [fp, #-0x60]
    // 0x73a9b0: stur            x0, [fp, #-0x68]
    // 0x73a9b4: LoadField: r1 = r2->field_f
    //     0x73a9b4: ldur            w1, [x2, #0xf]
    // 0x73a9b8: DecompressPointer r1
    //     0x73a9b8: add             x1, x1, HEAP, lsl #32
    // 0x73a9bc: r0 = of()
    //     0x73a9bc: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x73a9c0: r1 = Null
    //     0x73a9c0: mov             x1, NULL
    // 0x73a9c4: r2 = 4
    //     0x73a9c4: mov             x2, #4
    // 0x73a9c8: stur            x0, [fp, #-0x60]
    // 0x73a9cc: r0 = AllocateArray()
    //     0x73a9cc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73a9d0: r16 = "Hata: "
    //     0x73a9d0: add             x16, PP, #0x19, lsl #12  ; [pp+0x191d8] "Hata: "
    //     0x73a9d4: ldr             x16, [x16, #0x1d8]
    // 0x73a9d8: StoreField: r0->field_f = r16
    //     0x73a9d8: stur            w16, [x0, #0xf]
    // 0x73a9dc: ldur            x1, [fp, #-0x68]
    // 0x73a9e0: StoreField: r0->field_13 = r1
    //     0x73a9e0: stur            w1, [x0, #0x13]
    // 0x73a9e4: str             x0, [SP]
    // 0x73a9e8: r0 = _interpolate()
    //     0x73a9e8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x73a9ec: stur            x0, [fp, #-0x68]
    // 0x73a9f0: r0 = Text()
    //     0x73a9f0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x73a9f4: mov             x1, x0
    // 0x73a9f8: ldur            x0, [fp, #-0x68]
    // 0x73a9fc: stur            x1, [fp, #-0x70]
    // 0x73aa00: StoreField: r1->field_b = r0
    //     0x73aa00: stur            w0, [x1, #0xb]
    // 0x73aa04: r0 = SnackBar()
    //     0x73aa04: bl              #0x5dcf84  ; AllocateSnackBarStub -> SnackBar (size=0x58)
    // 0x73aa08: mov             x1, x0
    // 0x73aa0c: ldur            x0, [fp, #-0x70]
    // 0x73aa10: StoreField: r1->field_b = r0
    //     0x73aa10: stur            w0, [x1, #0xb]
    // 0x73aa14: r0 = Instance_Duration
    //     0x73aa14: add             x0, PP, #0x18, lsl #12  ; [pp+0x18f78] Obj!Duration@a2dde1
    //     0x73aa18: ldr             x0, [x0, #0xf78]
    // 0x73aa1c: StoreField: r1->field_3f = r0
    //     0x73aa1c: stur            w0, [x1, #0x3f]
    // 0x73aa20: r0 = Instance_Clip
    //     0x73aa20: add             x0, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x73aa24: ldr             x0, [x0, #0x2d8]
    // 0x73aa28: StoreField: r1->field_53 = r0
    //     0x73aa28: stur            w0, [x1, #0x53]
    // 0x73aa2c: r0 = false
    //     0x73aa2c: add             x0, NULL, #0x30  ; false
    // 0x73aa30: StoreField: r1->field_43 = r0
    //     0x73aa30: stur            w0, [x1, #0x43]
    // 0x73aa34: mov             x2, x1
    // 0x73aa38: ldur            x1, [fp, #-0x60]
    // 0x73aa3c: r0 = showSnackBar()
    //     0x73aa3c: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x73aa40: r0 = Null
    //     0x73aa40: mov             x0, NULL
    // 0x73aa44: r0 = ReturnAsyncNotFuture()
    //     0x73aa44: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x73aa48: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73aa48: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73aa4c: b               #0x73a3f8
    // 0x73aa50: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73aa50: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x73aa54: r0 = NullErrorSharedWithoutFPURegs()
    //     0x73aa54: bl              #0x9289e0  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x73aa58, size: 0x8c
    // 0x73aa58: EnterFrame
    //     0x73aa58: stp             fp, lr, [SP, #-0x10]!
    //     0x73aa5c: mov             fp, SP
    // 0x73aa60: AllocStack(0x20)
    //     0x73aa60: sub             SP, SP, #0x20
    // 0x73aa64: SetupParameters([dynamic _ /* r0 */])
    //     0x73aa64: ldr             x0, [fp, #0x18]
    //     0x73aa68: ldur            w1, [x0, #0x17]
    //     0x73aa6c: add             x1, x1, HEAP, lsl #32
    //     0x73aa70: stur            x1, [fp, #-8]
    // 0x73aa74: CheckStackOverflow
    //     0x73aa74: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73aa78: cmp             SP, x16
    //     0x73aa7c: b.ls            #0x73aadc
    // 0x73aa80: r1 = 1
    //     0x73aa80: mov             x1, #1
    // 0x73aa84: r0 = AllocateContext()
    //     0x73aa84: bl              #0x927010  ; AllocateContextStub
    // 0x73aa88: mov             x1, x0
    // 0x73aa8c: ldur            x0, [fp, #-8]
    // 0x73aa90: StoreField: r1->field_b = r0
    //     0x73aa90: stur            w0, [x1, #0xb]
    // 0x73aa94: ldr             x2, [fp, #0x10]
    // 0x73aa98: StoreField: r1->field_f = r2
    //     0x73aa98: stur            w2, [x1, #0xf]
    // 0x73aa9c: LoadField: r3 = r0->field_13
    //     0x73aa9c: ldur            w3, [x0, #0x13]
    // 0x73aaa0: DecompressPointer r3
    //     0x73aaa0: add             x3, x3, HEAP, lsl #32
    // 0x73aaa4: mov             x2, x1
    // 0x73aaa8: stur            x3, [fp, #-0x10]
    // 0x73aaac: r1 = Function '<anonymous closure>':.
    //     0x73aaac: add             x1, PP, #0x19, lsl #12  ; [pp+0x19388] AnonymousClosure: (0x6e5c50), in [package:umrem_demo/features/admin/widgets/hotel/hotels_tab.dart] HotelsTab::_openCreateHotelSheet (0x6e6dbc)
    //     0x73aab0: ldr             x1, [x1, #0x388]
    // 0x73aab4: r0 = AllocateClosure()
    //     0x73aab4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73aab8: ldur            x16, [fp, #-0x10]
    // 0x73aabc: stp             x0, x16, [SP]
    // 0x73aac0: ldur            x0, [fp, #-0x10]
    // 0x73aac4: ClosureCall
    //     0x73aac4: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x73aac8: ldur            x2, [x0, #0x1f]
    //     0x73aacc: blr             x2
    // 0x73aad0: LeaveFrame
    //     0x73aad0: mov             SP, fp
    //     0x73aad4: ldp             fp, lr, [SP], #0x10
    // 0x73aad8: ret
    //     0x73aad8: ret             
    // 0x73aadc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73aadc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73aae0: b               #0x73aa80
  }
  _ build(/* No info */) {
    // ** addr: 0x744b90, size: 0x13c
    // 0x744b90: EnterFrame
    //     0x744b90: stp             fp, lr, [SP, #-0x10]!
    //     0x744b94: mov             fp, SP
    // 0x744b98: AllocStack(0x28)
    //     0x744b98: sub             SP, SP, #0x28
    // 0x744b9c: SetupParameters(HotelsTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x744b9c: stur            x1, [fp, #-8]
    //     0x744ba0: stur            x2, [fp, #-0x10]
    // 0x744ba4: CheckStackOverflow
    //     0x744ba4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x744ba8: cmp             SP, x16
    //     0x744bac: b.ls            #0x744cc0
    // 0x744bb0: r1 = 2
    //     0x744bb0: mov             x1, #2
    // 0x744bb4: r0 = AllocateContext()
    //     0x744bb4: bl              #0x927010  ; AllocateContextStub
    // 0x744bb8: mov             x3, x0
    // 0x744bbc: ldur            x2, [fp, #-8]
    // 0x744bc0: stur            x3, [fp, #-0x18]
    // 0x744bc4: StoreField: r3->field_f = r2
    //     0x744bc4: stur            w2, [x3, #0xf]
    // 0x744bc8: ldur            x0, [fp, #-0x10]
    // 0x744bcc: StoreField: r3->field_13 = r0
    //     0x744bcc: stur            w0, [x3, #0x13]
    // 0x744bd0: LoadField: r0 = r2->field_b
    //     0x744bd0: ldur            w0, [x2, #0xb]
    // 0x744bd4: DecompressPointer r0
    //     0x744bd4: add             x0, x0, HEAP, lsl #32
    // 0x744bd8: cmp             w0, NULL
    // 0x744bdc: b.eq            #0x744cc8
    // 0x744be0: LoadField: r1 = r0->field_b
    //     0x744be0: ldur            w1, [x0, #0xb]
    // 0x744be4: DecompressPointer r1
    //     0x744be4: add             x1, x1, HEAP, lsl #32
    // 0x744be8: r0 = LoadClassIdInstr(r1)
    //     0x744be8: ldur            x0, [x1, #-1]
    //     0x744bec: ubfx            x0, x0, #0xc, #0x14
    // 0x744bf0: r0 = GDT[cid_x0 + 0xcda7]()
    //     0x744bf0: mov             x17, #0xcda7
    //     0x744bf4: add             lr, x0, x17
    //     0x744bf8: ldr             lr, [x21, lr, lsl #3]
    //     0x744bfc: blr             lr
    // 0x744c00: tbnz            w0, #4, #0x744c40
    // 0x744c04: ldur            x2, [fp, #-0x18]
    // 0x744c08: r1 = Function '<anonymous closure>':.
    //     0x744c08: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fce8] AnonymousClosure: (0x745ffc), in [package:umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart] HotelsTabState::build (0x744b90)
    //     0x744c0c: ldr             x1, [x1, #0xce8]
    // 0x744c10: r0 = AllocateClosure()
    //     0x744c10: bl              #0x9273d4  ; AllocateClosureStub
    // 0x744c14: mov             x5, x0
    // 0x744c18: r1 = Instance_IconData
    //     0x744c18: add             x1, PP, #0x15, lsl #12  ; [pp+0x15a48] Obj!IconData@a0a561
    //     0x744c1c: ldr             x1, [x1, #0xa48]
    // 0x744c20: r2 = "Otel bulunamadı"
    //     0x744c20: add             x2, PP, #0x1f, lsl #12  ; [pp+0x1fcf0] "Otel bulunamadı"
    //     0x744c24: ldr             x2, [x2, #0xcf0]
    // 0x744c28: r3 = "Otel Ekle"
    //     0x744c28: add             x3, PP, #0x1f, lsl #12  ; [pp+0x1fcf8] "Otel Ekle"
    //     0x744c2c: ldr             x3, [x3, #0xcf8]
    // 0x744c30: r0 = buildEmptyState()
    //     0x744c30: bl              #0x7438ac  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildEmptyState
    // 0x744c34: LeaveFrame
    //     0x744c34: mov             SP, fp
    //     0x744c38: ldp             fp, lr, [SP], #0x10
    // 0x744c3c: ret
    //     0x744c3c: ret             
    // 0x744c40: ldur            x1, [fp, #-8]
    // 0x744c44: r0 = build()
    //     0x744c44: bl              #0x6beb0c  ; [package:flutter/src/widgets/will_pop_scope.dart] _WillPopScopeState::build
    // 0x744c48: r1 = LoadClassIdInstr(r0)
    //     0x744c48: ldur            x1, [x0, #-1]
    //     0x744c4c: ubfx            x1, x1, #0xc, #0x14
    // 0x744c50: str             x0, [SP]
    // 0x744c54: mov             x0, x1
    // 0x744c58: r0 = GDT[cid_x0 + 0x879f]()
    //     0x744c58: mov             x17, #0x879f
    //     0x744c5c: add             lr, x0, x17
    //     0x744c60: ldr             lr, [x21, lr, lsl #3]
    //     0x744c64: blr             lr
    // 0x744c68: r3 = LoadInt32Instr(r0)
    //     0x744c68: sbfx            x3, x0, #1, #0x1f
    // 0x744c6c: ldur            x2, [fp, #-0x18]
    // 0x744c70: stur            x3, [fp, #-0x20]
    // 0x744c74: r1 = Function '<anonymous closure>':.
    //     0x744c74: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fd00] AnonymousClosure: (0x744ccc), in [package:umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart] HotelsTabState::build (0x744b90)
    //     0x744c78: ldr             x1, [x1, #0xd00]
    // 0x744c7c: r0 = AllocateClosure()
    //     0x744c7c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x744c80: stur            x0, [fp, #-8]
    // 0x744c84: r0 = ListView()
    //     0x744c84: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x744c88: stur            x0, [fp, #-0x10]
    // 0x744c8c: r16 = Instance_EdgeInsets
    //     0x744c8c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x744c90: ldr             x16, [x16, #0x240]
    // 0x744c94: str             x16, [SP]
    // 0x744c98: mov             x1, x0
    // 0x744c9c: ldur            x2, [fp, #-8]
    // 0x744ca0: ldur            x3, [fp, #-0x20]
    // 0x744ca4: r4 = const [0, 0x4, 0x1, 0x3, padding, 0x3, null]
    //     0x744ca4: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e60] List(7) [0, 0x4, 0x1, 0x3, "padding", 0x3, Null]
    //     0x744ca8: ldr             x4, [x4, #0xe60]
    // 0x744cac: r0 = ListView.builder()
    //     0x744cac: bl              #0x6ce4a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.builder
    // 0x744cb0: ldur            x0, [fp, #-0x10]
    // 0x744cb4: LeaveFrame
    //     0x744cb4: mov             SP, fp
    //     0x744cb8: ldp             fp, lr, [SP], #0x10
    // 0x744cbc: ret
    //     0x744cbc: ret             
    // 0x744cc0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x744cc0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x744cc4: b               #0x744bb0
    // 0x744cc8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x744cc8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x744ccc, size: 0x8c
    // 0x744ccc: EnterFrame
    //     0x744ccc: stp             fp, lr, [SP, #-0x10]!
    //     0x744cd0: mov             fp, SP
    // 0x744cd4: AllocStack(0x18)
    //     0x744cd4: sub             SP, SP, #0x18
    // 0x744cd8: SetupParameters([dynamic _ /* r0 */])
    //     0x744cd8: ldr             x0, [fp, #0x20]
    //     0x744cdc: ldur            w1, [x0, #0x17]
    //     0x744ce0: add             x1, x1, HEAP, lsl #32
    // 0x744ce4: CheckStackOverflow
    //     0x744ce4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x744ce8: cmp             SP, x16
    //     0x744cec: b.ls            #0x744d4c
    // 0x744cf0: LoadField: r2 = r1->field_f
    //     0x744cf0: ldur            w2, [x1, #0xf]
    // 0x744cf4: DecompressPointer r2
    //     0x744cf4: add             x2, x2, HEAP, lsl #32
    // 0x744cf8: stur            x2, [fp, #-8]
    // 0x744cfc: LoadField: r0 = r2->field_b
    //     0x744cfc: ldur            w0, [x2, #0xb]
    // 0x744d00: DecompressPointer r0
    //     0x744d00: add             x0, x0, HEAP, lsl #32
    // 0x744d04: cmp             w0, NULL
    // 0x744d08: b.eq            #0x744d54
    // 0x744d0c: LoadField: r1 = r0->field_b
    //     0x744d0c: ldur            w1, [x0, #0xb]
    // 0x744d10: DecompressPointer r1
    //     0x744d10: add             x1, x1, HEAP, lsl #32
    // 0x744d14: r0 = LoadClassIdInstr(r1)
    //     0x744d14: ldur            x0, [x1, #-1]
    //     0x744d18: ubfx            x0, x0, #0xc, #0x14
    // 0x744d1c: ldr             x16, [fp, #0x10]
    // 0x744d20: stp             x16, x1, [SP]
    // 0x744d24: r0 = GDT[cid_x0 + -0xdfc]()
    //     0x744d24: sub             lr, x0, #0xdfc
    //     0x744d28: ldr             lr, [x21, lr, lsl #3]
    //     0x744d2c: blr             lr
    // 0x744d30: ldur            x1, [fp, #-8]
    // 0x744d34: ldr             x2, [fp, #0x18]
    // 0x744d38: mov             x3, x0
    // 0x744d3c: r0 = _buildHotelCard()
    //     0x744d3c: bl              #0x744d58  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart] HotelsTabState::_buildHotelCard
    // 0x744d40: LeaveFrame
    //     0x744d40: mov             SP, fp
    //     0x744d44: ldp             fp, lr, [SP], #0x10
    // 0x744d48: ret
    //     0x744d48: ret             
    // 0x744d4c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x744d4c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x744d50: b               #0x744cf0
    // 0x744d54: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x744d54: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _buildHotelCard(/* No info */) {
    // ** addr: 0x744d58, size: 0x418
    // 0x744d58: EnterFrame
    //     0x744d58: stp             fp, lr, [SP, #-0x10]!
    //     0x744d5c: mov             fp, SP
    // 0x744d60: AllocStack(0x58)
    //     0x744d60: sub             SP, SP, #0x58
    // 0x744d64: SetupParameters(HotelsTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x744d64: stur            x1, [fp, #-8]
    //     0x744d68: stur            x2, [fp, #-0x10]
    //     0x744d6c: stur            x3, [fp, #-0x18]
    // 0x744d70: CheckStackOverflow
    //     0x744d70: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x744d74: cmp             SP, x16
    //     0x744d78: b.ls            #0x745168
    // 0x744d7c: r1 = 3
    //     0x744d7c: mov             x1, #3
    // 0x744d80: r0 = AllocateContext()
    //     0x744d80: bl              #0x927010  ; AllocateContextStub
    // 0x744d84: mov             x2, x0
    // 0x744d88: ldur            x0, [fp, #-8]
    // 0x744d8c: stur            x2, [fp, #-0x20]
    // 0x744d90: StoreField: r2->field_f = r0
    //     0x744d90: stur            w0, [x2, #0xf]
    // 0x744d94: ldur            x0, [fp, #-0x10]
    // 0x744d98: StoreField: r2->field_13 = r0
    //     0x744d98: stur            w0, [x2, #0x13]
    // 0x744d9c: ldur            x0, [fp, #-0x18]
    // 0x744da0: ArrayStore: r2[0] = r0  ; List_4
    //     0x744da0: stur            w0, [x2, #0x17]
    // 0x744da4: r16 = 0.080000
    //     0x744da4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e30] 0.08
    //     0x744da8: ldr             x16, [x16, #0xe30]
    // 0x744dac: str             x16, [SP]
    // 0x744db0: r1 = Instance_Color
    //     0x744db0: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x744db4: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x744db4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x744db8: ldr             x4, [x4, #0x198]
    // 0x744dbc: r0 = withValues()
    //     0x744dbc: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x744dc0: stur            x0, [fp, #-8]
    // 0x744dc4: r0 = Radius()
    //     0x744dc4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x744dc8: d0 = 12.000000
    //     0x744dc8: fmov            d0, #12.00000000
    // 0x744dcc: stur            x0, [fp, #-0x10]
    // 0x744dd0: StoreField: r0->field_7 = d0
    //     0x744dd0: stur            d0, [x0, #7]
    // 0x744dd4: StoreField: r0->field_f = d0
    //     0x744dd4: stur            d0, [x0, #0xf]
    // 0x744dd8: r0 = BorderRadius()
    //     0x744dd8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x744ddc: mov             x1, x0
    // 0x744de0: ldur            x0, [fp, #-0x10]
    // 0x744de4: stur            x1, [fp, #-0x18]
    // 0x744de8: StoreField: r1->field_7 = r0
    //     0x744de8: stur            w0, [x1, #7]
    // 0x744dec: StoreField: r1->field_b = r0
    //     0x744dec: stur            w0, [x1, #0xb]
    // 0x744df0: StoreField: r1->field_f = r0
    //     0x744df0: stur            w0, [x1, #0xf]
    // 0x744df4: StoreField: r1->field_13 = r0
    //     0x744df4: stur            w0, [x1, #0x13]
    // 0x744df8: r0 = BoxDecoration()
    //     0x744df8: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x744dfc: mov             x1, x0
    // 0x744e00: ldur            x0, [fp, #-8]
    // 0x744e04: stur            x1, [fp, #-0x28]
    // 0x744e08: StoreField: r1->field_7 = r0
    //     0x744e08: stur            w0, [x1, #7]
    // 0x744e0c: ldur            x0, [fp, #-0x18]
    // 0x744e10: StoreField: r1->field_13 = r0
    //     0x744e10: stur            w0, [x1, #0x13]
    // 0x744e14: r0 = Instance_BoxShape
    //     0x744e14: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x744e18: ldr             x0, [x0, #0x1c8]
    // 0x744e1c: StoreField: r1->field_23 = r0
    //     0x744e1c: stur            w0, [x1, #0x23]
    // 0x744e20: ldur            x2, [fp, #-0x20]
    // 0x744e24: ArrayLoad: r0 = r2[0]  ; List_4
    //     0x744e24: ldur            w0, [x2, #0x17]
    // 0x744e28: DecompressPointer r0
    //     0x744e28: add             x0, x0, HEAP, lsl #32
    // 0x744e2c: stur            x0, [fp, #-0x10]
    // 0x744e30: LoadField: r3 = r0->field_b
    //     0x744e30: ldur            w3, [x0, #0xb]
    // 0x744e34: DecompressPointer r3
    //     0x744e34: add             x3, x3, HEAP, lsl #32
    // 0x744e38: LoadField: r4 = r3->field_7
    //     0x744e38: ldur            w4, [x3, #7]
    // 0x744e3c: cbnz            w4, #0x744e48
    // 0x744e40: r3 = "İsimsiz Otel"
    //     0x744e40: add             x3, PP, #0x1f, lsl #12  ; [pp+0x1fd08] "İsimsiz Otel"
    //     0x744e44: ldr             x3, [x3, #0xd08]
    // 0x744e48: stur            x3, [fp, #-8]
    // 0x744e4c: r0 = Text()
    //     0x744e4c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x744e50: mov             x2, x0
    // 0x744e54: ldur            x0, [fp, #-8]
    // 0x744e58: stur            x2, [fp, #-0x18]
    // 0x744e5c: StoreField: r2->field_b = r0
    //     0x744e5c: stur            w0, [x2, #0xb]
    // 0x744e60: r0 = Instance_TextStyle
    //     0x744e60: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1faf0] Obj!TextStyle@a17ec1
    //     0x744e64: ldr             x0, [x0, #0xaf0]
    // 0x744e68: StoreField: r2->field_13 = r0
    //     0x744e68: stur            w0, [x2, #0x13]
    // 0x744e6c: r1 = <FlexParentData>
    //     0x744e6c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x744e70: ldr             x1, [x1, #0x340]
    // 0x744e74: r0 = Expanded()
    //     0x744e74: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x744e78: mov             x3, x0
    // 0x744e7c: r0 = 1
    //     0x744e7c: mov             x0, #1
    // 0x744e80: stur            x3, [fp, #-8]
    // 0x744e84: StoreField: r3->field_13 = r0
    //     0x744e84: stur            x0, [x3, #0x13]
    // 0x744e88: r0 = Instance_FlexFit
    //     0x744e88: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x744e8c: ldr             x0, [x0, #0x348]
    // 0x744e90: StoreField: r3->field_1b = r0
    //     0x744e90: stur            w0, [x3, #0x1b]
    // 0x744e94: ldur            x0, [fp, #-0x18]
    // 0x744e98: StoreField: r3->field_b = r0
    //     0x744e98: stur            w0, [x3, #0xb]
    // 0x744e9c: ldur            x2, [fp, #-0x20]
    // 0x744ea0: r1 = Function '<anonymous closure>':.
    //     0x744ea0: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fd10] AnonymousClosure: (0x745fa4), in [package:umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart] HotelsTabState::_buildHotelCard (0x744d58)
    //     0x744ea4: ldr             x1, [x1, #0xd10]
    // 0x744ea8: r0 = AllocateClosure()
    //     0x744ea8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x744eac: stur            x0, [fp, #-0x18]
    // 0x744eb0: r0 = IconButton()
    //     0x744eb0: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x744eb4: mov             x3, x0
    // 0x744eb8: ldur            x0, [fp, #-0x18]
    // 0x744ebc: stur            x3, [fp, #-0x30]
    // 0x744ec0: StoreField: r3->field_3b = r0
    //     0x744ec0: stur            w0, [x3, #0x3b]
    // 0x744ec4: r0 = false
    //     0x744ec4: add             x0, NULL, #0x30  ; false
    // 0x744ec8: StoreField: r3->field_4f = r0
    //     0x744ec8: stur            w0, [x3, #0x4f]
    // 0x744ecc: r1 = Instance_Icon
    //     0x744ecc: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fa58] Obj!Icon@a1ed71
    //     0x744ed0: ldr             x1, [x1, #0xa58]
    // 0x744ed4: StoreField: r3->field_1f = r1
    //     0x744ed4: stur            w1, [x3, #0x1f]
    // 0x744ed8: r4 = Instance__IconButtonVariant
    //     0x744ed8: add             x4, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x744edc: ldr             x4, [x4, #0x1b8]
    // 0x744ee0: StoreField: r3->field_6f = r4
    //     0x744ee0: stur            w4, [x3, #0x6f]
    // 0x744ee4: ldur            x2, [fp, #-0x20]
    // 0x744ee8: r1 = Function '<anonymous closure>':.
    //     0x744ee8: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fd18] AnonymousClosure: (0x745338), in [package:umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart] HotelsTabState::_buildHotelCard (0x744d58)
    //     0x744eec: ldr             x1, [x1, #0xd18]
    // 0x744ef0: r0 = AllocateClosure()
    //     0x744ef0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x744ef4: stur            x0, [fp, #-0x18]
    // 0x744ef8: r0 = IconButton()
    //     0x744ef8: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x744efc: mov             x3, x0
    // 0x744f00: ldur            x0, [fp, #-0x18]
    // 0x744f04: stur            x3, [fp, #-0x38]
    // 0x744f08: StoreField: r3->field_3b = r0
    //     0x744f08: stur            w0, [x3, #0x3b]
    // 0x744f0c: r0 = false
    //     0x744f0c: add             x0, NULL, #0x30  ; false
    // 0x744f10: StoreField: r3->field_4f = r0
    //     0x744f10: stur            w0, [x3, #0x4f]
    // 0x744f14: r0 = Instance_Icon
    //     0x744f14: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fa68] Obj!Icon@a1e471
    //     0x744f18: ldr             x0, [x0, #0xa68]
    // 0x744f1c: StoreField: r3->field_1f = r0
    //     0x744f1c: stur            w0, [x3, #0x1f]
    // 0x744f20: r0 = Instance__IconButtonVariant
    //     0x744f20: add             x0, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x744f24: ldr             x0, [x0, #0x1b8]
    // 0x744f28: StoreField: r3->field_6f = r0
    //     0x744f28: stur            w0, [x3, #0x6f]
    // 0x744f2c: r1 = Null
    //     0x744f2c: mov             x1, NULL
    // 0x744f30: r2 = 10
    //     0x744f30: mov             x2, #0xa
    // 0x744f34: r0 = AllocateArray()
    //     0x744f34: bl              #0x9280a0  ; AllocateArrayStub
    // 0x744f38: stur            x0, [fp, #-0x18]
    // 0x744f3c: r16 = Instance_Icon
    //     0x744f3c: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fd20] Obj!Icon@a1edb1
    //     0x744f40: ldr             x16, [x16, #0xd20]
    // 0x744f44: StoreField: r0->field_f = r16
    //     0x744f44: stur            w16, [x0, #0xf]
    // 0x744f48: r16 = Instance_SizedBox
    //     0x744f48: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x744f4c: ldr             x16, [x16, #0x368]
    // 0x744f50: StoreField: r0->field_13 = r16
    //     0x744f50: stur            w16, [x0, #0x13]
    // 0x744f54: ldur            x1, [fp, #-8]
    // 0x744f58: ArrayStore: r0[0] = r1  ; List_4
    //     0x744f58: stur            w1, [x0, #0x17]
    // 0x744f5c: ldur            x1, [fp, #-0x30]
    // 0x744f60: StoreField: r0->field_1b = r1
    //     0x744f60: stur            w1, [x0, #0x1b]
    // 0x744f64: ldur            x1, [fp, #-0x38]
    // 0x744f68: StoreField: r0->field_1f = r1
    //     0x744f68: stur            w1, [x0, #0x1f]
    // 0x744f6c: r1 = <Widget>
    //     0x744f6c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x744f70: r0 = AllocateGrowableArray()
    //     0x744f70: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x744f74: mov             x1, x0
    // 0x744f78: ldur            x0, [fp, #-0x18]
    // 0x744f7c: stur            x1, [fp, #-8]
    // 0x744f80: StoreField: r1->field_f = r0
    //     0x744f80: stur            w0, [x1, #0xf]
    // 0x744f84: r0 = 10
    //     0x744f84: mov             x0, #0xa
    // 0x744f88: StoreField: r1->field_b = r0
    //     0x744f88: stur            w0, [x1, #0xb]
    // 0x744f8c: r0 = Row()
    //     0x744f8c: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x744f90: mov             x4, x0
    // 0x744f94: r0 = Instance_Axis
    //     0x744f94: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x744f98: stur            x4, [fp, #-0x18]
    // 0x744f9c: StoreField: r4->field_f = r0
    //     0x744f9c: stur            w0, [x4, #0xf]
    // 0x744fa0: r0 = Instance_MainAxisAlignment
    //     0x744fa0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x744fa4: ldr             x0, [x0, #0x230]
    // 0x744fa8: StoreField: r4->field_13 = r0
    //     0x744fa8: stur            w0, [x4, #0x13]
    // 0x744fac: r5 = Instance_MainAxisSize
    //     0x744fac: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x744fb0: ldr             x5, [x5, #0x330]
    // 0x744fb4: ArrayStore: r4[0] = r5  ; List_4
    //     0x744fb4: stur            w5, [x4, #0x17]
    // 0x744fb8: r1 = Instance_CrossAxisAlignment
    //     0x744fb8: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x744fbc: ldr             x1, [x1, #0x338]
    // 0x744fc0: StoreField: r4->field_1b = r1
    //     0x744fc0: stur            w1, [x4, #0x1b]
    // 0x744fc4: r6 = Instance_VerticalDirection
    //     0x744fc4: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x744fc8: ldr             x6, [x6, #0x340]
    // 0x744fcc: StoreField: r4->field_23 = r6
    //     0x744fcc: stur            w6, [x4, #0x23]
    // 0x744fd0: r7 = Instance_Clip
    //     0x744fd0: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x744fd4: ldr             x7, [x7, #0x348]
    // 0x744fd8: StoreField: r4->field_2b = r7
    //     0x744fd8: stur            w7, [x4, #0x2b]
    // 0x744fdc: StoreField: r4->field_2f = rZR
    //     0x744fdc: stur            xzr, [x4, #0x2f]
    // 0x744fe0: ldur            x1, [fp, #-8]
    // 0x744fe4: StoreField: r4->field_b = r1
    //     0x744fe4: stur            w1, [x4, #0xb]
    // 0x744fe8: ldur            x1, [fp, #-0x10]
    // 0x744fec: LoadField: r2 = r1->field_f
    //     0x744fec: ldur            w2, [x1, #0xf]
    // 0x744ff0: DecompressPointer r2
    //     0x744ff0: add             x2, x2, HEAP, lsl #32
    // 0x744ff4: LoadField: r1 = r2->field_7
    //     0x744ff4: ldur            w1, [x2, #7]
    // 0x744ff8: cbnz            w1, #0x745004
    // 0x744ffc: r3 = "-"
    //     0x744ffc: ldr             x3, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x745000: b               #0x745008
    // 0x745004: mov             x3, x2
    // 0x745008: ldur            x8, [fp, #-0x20]
    // 0x74500c: r1 = Instance_IconData
    //     0x74500c: add             x1, PP, #0x14, lsl #12  ; [pp+0x14920] Obj!IconData@a09f41
    //     0x745010: ldr             x1, [x1, #0x920]
    // 0x745014: r2 = "Şehir"
    //     0x745014: add             x2, PP, #0x1f, lsl #12  ; [pp+0x1fd28] "Şehir"
    //     0x745018: ldr             x2, [x2, #0xd28]
    // 0x74501c: r0 = buildInfoRow()
    //     0x74501c: bl              #0x745170  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildInfoRow
    // 0x745020: mov             x4, x0
    // 0x745024: ldur            x0, [fp, #-0x20]
    // 0x745028: stur            x4, [fp, #-8]
    // 0x74502c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74502c: ldur            w1, [x0, #0x17]
    // 0x745030: DecompressPointer r1
    //     0x745030: add             x1, x1, HEAP, lsl #32
    // 0x745034: LoadField: r0 = r1->field_13
    //     0x745034: ldur            w0, [x1, #0x13]
    // 0x745038: DecompressPointer r0
    //     0x745038: add             x0, x0, HEAP, lsl #32
    // 0x74503c: LoadField: r1 = r0->field_7
    //     0x74503c: ldur            w1, [x0, #7]
    // 0x745040: cbnz            w1, #0x74504c
    // 0x745044: r3 = "-"
    //     0x745044: ldr             x3, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x745048: b               #0x745050
    // 0x74504c: mov             x3, x0
    // 0x745050: ldur            x0, [fp, #-0x18]
    // 0x745054: r1 = Instance_IconData
    //     0x745054: add             x1, PP, #0x15, lsl #12  ; [pp+0x15528] Obj!IconData@a09ae1
    //     0x745058: ldr             x1, [x1, #0x528]
    // 0x74505c: r2 = "Adres"
    //     0x74505c: add             x2, PP, #0x19, lsl #12  ; [pp+0x19360] "Adres"
    //     0x745060: ldr             x2, [x2, #0x360]
    // 0x745064: r0 = buildInfoRow()
    //     0x745064: bl              #0x745170  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildInfoRow
    // 0x745068: r1 = Null
    //     0x745068: mov             x1, NULL
    // 0x74506c: r2 = 8
    //     0x74506c: mov             x2, #8
    // 0x745070: stur            x0, [fp, #-0x10]
    // 0x745074: r0 = AllocateArray()
    //     0x745074: bl              #0x9280a0  ; AllocateArrayStub
    // 0x745078: mov             x2, x0
    // 0x74507c: ldur            x0, [fp, #-0x18]
    // 0x745080: stur            x2, [fp, #-0x20]
    // 0x745084: StoreField: r2->field_f = r0
    //     0x745084: stur            w0, [x2, #0xf]
    // 0x745088: r16 = Instance_SizedBox
    //     0x745088: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x74508c: ldr             x16, [x16, #0x318]
    // 0x745090: StoreField: r2->field_13 = r16
    //     0x745090: stur            w16, [x2, #0x13]
    // 0x745094: ldur            x0, [fp, #-8]
    // 0x745098: ArrayStore: r2[0] = r0  ; List_4
    //     0x745098: stur            w0, [x2, #0x17]
    // 0x74509c: ldur            x0, [fp, #-0x10]
    // 0x7450a0: StoreField: r2->field_1b = r0
    //     0x7450a0: stur            w0, [x2, #0x1b]
    // 0x7450a4: r1 = <Widget>
    //     0x7450a4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7450a8: r0 = AllocateGrowableArray()
    //     0x7450a8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7450ac: mov             x1, x0
    // 0x7450b0: ldur            x0, [fp, #-0x20]
    // 0x7450b4: stur            x1, [fp, #-8]
    // 0x7450b8: StoreField: r1->field_f = r0
    //     0x7450b8: stur            w0, [x1, #0xf]
    // 0x7450bc: r0 = 8
    //     0x7450bc: mov             x0, #8
    // 0x7450c0: StoreField: r1->field_b = r0
    //     0x7450c0: stur            w0, [x1, #0xb]
    // 0x7450c4: r0 = Column()
    //     0x7450c4: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7450c8: mov             x1, x0
    // 0x7450cc: r0 = Instance_Axis
    //     0x7450cc: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7450d0: stur            x1, [fp, #-0x10]
    // 0x7450d4: StoreField: r1->field_f = r0
    //     0x7450d4: stur            w0, [x1, #0xf]
    // 0x7450d8: r0 = Instance_MainAxisAlignment
    //     0x7450d8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7450dc: ldr             x0, [x0, #0x230]
    // 0x7450e0: StoreField: r1->field_13 = r0
    //     0x7450e0: stur            w0, [x1, #0x13]
    // 0x7450e4: r0 = Instance_MainAxisSize
    //     0x7450e4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7450e8: ldr             x0, [x0, #0x330]
    // 0x7450ec: ArrayStore: r1[0] = r0  ; List_4
    //     0x7450ec: stur            w0, [x1, #0x17]
    // 0x7450f0: r0 = Instance_CrossAxisAlignment
    //     0x7450f0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7450f4: ldr             x0, [x0, #0x238]
    // 0x7450f8: StoreField: r1->field_1b = r0
    //     0x7450f8: stur            w0, [x1, #0x1b]
    // 0x7450fc: r0 = Instance_VerticalDirection
    //     0x7450fc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x745100: ldr             x0, [x0, #0x340]
    // 0x745104: StoreField: r1->field_23 = r0
    //     0x745104: stur            w0, [x1, #0x23]
    // 0x745108: r0 = Instance_Clip
    //     0x745108: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x74510c: ldr             x0, [x0, #0x348]
    // 0x745110: StoreField: r1->field_2b = r0
    //     0x745110: stur            w0, [x1, #0x2b]
    // 0x745114: StoreField: r1->field_2f = rZR
    //     0x745114: stur            xzr, [x1, #0x2f]
    // 0x745118: ldur            x0, [fp, #-8]
    // 0x74511c: StoreField: r1->field_b = r0
    //     0x74511c: stur            w0, [x1, #0xb]
    // 0x745120: r0 = Container()
    //     0x745120: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x745124: stur            x0, [fp, #-8]
    // 0x745128: r16 = Instance_EdgeInsets
    //     0x745128: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f18] Obj!EdgeInsets@a0c261
    //     0x74512c: ldr             x16, [x16, #0xf18]
    // 0x745130: r30 = Instance_EdgeInsets
    //     0x745130: add             lr, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x745134: ldr             lr, [lr, #0x240]
    // 0x745138: stp             lr, x16, [SP, #0x10]
    // 0x74513c: ldur            x16, [fp, #-0x28]
    // 0x745140: ldur            lr, [fp, #-0x10]
    // 0x745144: stp             lr, x16, [SP]
    // 0x745148: mov             x1, x0
    // 0x74514c: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, margin, 0x1, padding, 0x2, null]
    //     0x74514c: add             x4, PP, #0x15, lsl #12  ; [pp+0x15628] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "margin", 0x1, "padding", 0x2, Null]
    //     0x745150: ldr             x4, [x4, #0x628]
    // 0x745154: r0 = Container()
    //     0x745154: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x745158: ldur            x0, [fp, #-8]
    // 0x74515c: LeaveFrame
    //     0x74515c: mov             SP, fp
    //     0x745160: ldp             fp, lr, [SP], #0x10
    // 0x745164: ret
    //     0x745164: ret             
    // 0x745168: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x745168: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74516c: b               #0x744d7c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x745338, size: 0x58
    // 0x745338: EnterFrame
    //     0x745338: stp             fp, lr, [SP, #-0x10]!
    //     0x74533c: mov             fp, SP
    // 0x745340: ldr             x0, [fp, #0x10]
    // 0x745344: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x745344: ldur            w1, [x0, #0x17]
    // 0x745348: DecompressPointer r1
    //     0x745348: add             x1, x1, HEAP, lsl #32
    // 0x74534c: CheckStackOverflow
    //     0x74534c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x745350: cmp             SP, x16
    //     0x745354: b.ls            #0x745388
    // 0x745358: LoadField: r0 = r1->field_f
    //     0x745358: ldur            w0, [x1, #0xf]
    // 0x74535c: DecompressPointer r0
    //     0x74535c: add             x0, x0, HEAP, lsl #32
    // 0x745360: LoadField: r2 = r1->field_13
    //     0x745360: ldur            w2, [x1, #0x13]
    // 0x745364: DecompressPointer r2
    //     0x745364: add             x2, x2, HEAP, lsl #32
    // 0x745368: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x745368: ldur            w3, [x1, #0x17]
    // 0x74536c: DecompressPointer r3
    //     0x74536c: add             x3, x3, HEAP, lsl #32
    // 0x745370: mov             x1, x0
    // 0x745374: r0 = _confirmDeleteHotel()
    //     0x745374: bl              #0x745390  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart] HotelsTabState::_confirmDeleteHotel
    // 0x745378: r0 = Null
    //     0x745378: mov             x0, NULL
    // 0x74537c: LeaveFrame
    //     0x74537c: mov             SP, fp
    //     0x745380: ldp             fp, lr, [SP], #0x10
    // 0x745384: ret
    //     0x745384: ret             
    // 0x745388: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x745388: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74538c: b               #0x745358
  }
  _ _confirmDeleteHotel(/* No info */) {
    // ** addr: 0x745390, size: 0x84
    // 0x745390: EnterFrame
    //     0x745390: stp             fp, lr, [SP, #-0x10]!
    //     0x745394: mov             fp, SP
    // 0x745398: AllocStack(0x30)
    //     0x745398: sub             SP, SP, #0x30
    // 0x74539c: SetupParameters(HotelsTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x74539c: stur            x1, [fp, #-8]
    //     0x7453a0: stur            x2, [fp, #-0x10]
    //     0x7453a4: stur            x3, [fp, #-0x18]
    // 0x7453a8: CheckStackOverflow
    //     0x7453a8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7453ac: cmp             SP, x16
    //     0x7453b0: b.ls            #0x74540c
    // 0x7453b4: r1 = 3
    //     0x7453b4: mov             x1, #3
    // 0x7453b8: r0 = AllocateContext()
    //     0x7453b8: bl              #0x927010  ; AllocateContextStub
    // 0x7453bc: mov             x1, x0
    // 0x7453c0: ldur            x0, [fp, #-8]
    // 0x7453c4: StoreField: r1->field_f = r0
    //     0x7453c4: stur            w0, [x1, #0xf]
    // 0x7453c8: ldur            x0, [fp, #-0x18]
    // 0x7453cc: StoreField: r1->field_13 = r0
    //     0x7453cc: stur            w0, [x1, #0x13]
    // 0x7453d0: r0 = false
    //     0x7453d0: add             x0, NULL, #0x30  ; false
    // 0x7453d4: ArrayStore: r1[0] = r0  ; List_4
    //     0x7453d4: stur            w0, [x1, #0x17]
    // 0x7453d8: mov             x2, x1
    // 0x7453dc: r1 = Function '<anonymous closure>':.
    //     0x7453dc: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fd30] AnonymousClosure: (0x745414), in [package:umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart] HotelsTabState::_confirmDeleteHotel (0x745390)
    //     0x7453e0: ldr             x1, [x1, #0xd30]
    // 0x7453e4: r0 = AllocateClosure()
    //     0x7453e4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7453e8: stp             x0, NULL, [SP, #8]
    // 0x7453ec: ldur            x16, [fp, #-0x10]
    // 0x7453f0: str             x16, [SP]
    // 0x7453f4: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7453f4: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7453f8: r0 = showDialog()
    //     0x7453f8: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x7453fc: r0 = Null
    //     0x7453fc: mov             x0, NULL
    // 0x745400: LeaveFrame
    //     0x745400: mov             SP, fp
    //     0x745404: ldp             fp, lr, [SP], #0x10
    // 0x745408: ret
    //     0x745408: ret             
    // 0x74540c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74540c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x745410: b               #0x7453b4
  }
  [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x745414, size: 0x64
    // 0x745414: EnterFrame
    //     0x745414: stp             fp, lr, [SP, #-0x10]!
    //     0x745418: mov             fp, SP
    // 0x74541c: AllocStack(0x8)
    //     0x74541c: sub             SP, SP, #8
    // 0x745420: SetupParameters([dynamic _ /* r0 */])
    //     0x745420: ldr             x0, [fp, #0x18]
    //     0x745424: ldur            w1, [x0, #0x17]
    //     0x745428: add             x1, x1, HEAP, lsl #32
    //     0x74542c: stur            x1, [fp, #-8]
    // 0x745430: r1 = 1
    //     0x745430: mov             x1, #1
    // 0x745434: r0 = AllocateContext()
    //     0x745434: bl              #0x927010  ; AllocateContextStub
    // 0x745438: mov             x1, x0
    // 0x74543c: ldur            x0, [fp, #-8]
    // 0x745440: StoreField: r1->field_b = r0
    //     0x745440: stur            w0, [x1, #0xb]
    // 0x745444: ldr             x0, [fp, #0x10]
    // 0x745448: StoreField: r1->field_f = r0
    //     0x745448: stur            w0, [x1, #0xf]
    // 0x74544c: mov             x2, x1
    // 0x745450: r1 = Function '<anonymous closure>':.
    //     0x745450: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fd38] AnonymousClosure: (0x745478), in [package:umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart] HotelsTabState::_confirmDeleteHotel (0x745390)
    //     0x745454: ldr             x1, [x1, #0xd38]
    // 0x745458: r0 = AllocateClosure()
    //     0x745458: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74545c: stur            x0, [fp, #-8]
    // 0x745460: r0 = StatefulBuilder()
    //     0x745460: bl              #0x6d2fbc  ; AllocateStatefulBuilderStub -> StatefulBuilder (size=0x10)
    // 0x745464: ldur            x1, [fp, #-8]
    // 0x745468: StoreField: r0->field_b = r1
    //     0x745468: stur            w1, [x0, #0xb]
    // 0x74546c: LeaveFrame
    //     0x74546c: mov             SP, fp
    //     0x745470: ldp             fp, lr, [SP], #0x10
    // 0x745474: ret
    //     0x745474: ret             
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void) {
    // ** addr: 0x745478, size: 0x2cc
    // 0x745478: EnterFrame
    //     0x745478: stp             fp, lr, [SP, #-0x10]!
    //     0x74547c: mov             fp, SP
    // 0x745480: AllocStack(0x48)
    //     0x745480: sub             SP, SP, #0x48
    // 0x745484: SetupParameters([dynamic _ /* r0 */])
    //     0x745484: ldr             x0, [fp, #0x20]
    //     0x745488: ldur            w1, [x0, #0x17]
    //     0x74548c: add             x1, x1, HEAP, lsl #32
    //     0x745490: stur            x1, [fp, #-8]
    // 0x745494: CheckStackOverflow
    //     0x745494: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x745498: cmp             SP, x16
    //     0x74549c: b.ls            #0x74573c
    // 0x7454a0: r1 = 1
    //     0x7454a0: mov             x1, #1
    // 0x7454a4: r0 = AllocateContext()
    //     0x7454a4: bl              #0x927010  ; AllocateContextStub
    // 0x7454a8: mov             x1, x0
    // 0x7454ac: ldur            x0, [fp, #-8]
    // 0x7454b0: stur            x1, [fp, #-0x10]
    // 0x7454b4: StoreField: r1->field_b = r0
    //     0x7454b4: stur            w0, [x1, #0xb]
    // 0x7454b8: ldr             x2, [fp, #0x10]
    // 0x7454bc: StoreField: r1->field_f = r2
    //     0x7454bc: stur            w2, [x1, #0xf]
    // 0x7454c0: r0 = Radius()
    //     0x7454c0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7454c4: d0 = 16.000000
    //     0x7454c4: fmov            d0, #16.00000000
    // 0x7454c8: stur            x0, [fp, #-0x18]
    // 0x7454cc: StoreField: r0->field_7 = d0
    //     0x7454cc: stur            d0, [x0, #7]
    // 0x7454d0: StoreField: r0->field_f = d0
    //     0x7454d0: stur            d0, [x0, #0xf]
    // 0x7454d4: r0 = BorderRadius()
    //     0x7454d4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7454d8: mov             x1, x0
    // 0x7454dc: ldur            x0, [fp, #-0x18]
    // 0x7454e0: stur            x1, [fp, #-0x20]
    // 0x7454e4: StoreField: r1->field_7 = r0
    //     0x7454e4: stur            w0, [x1, #7]
    // 0x7454e8: StoreField: r1->field_b = r0
    //     0x7454e8: stur            w0, [x1, #0xb]
    // 0x7454ec: StoreField: r1->field_f = r0
    //     0x7454ec: stur            w0, [x1, #0xf]
    // 0x7454f0: StoreField: r1->field_13 = r0
    //     0x7454f0: stur            w0, [x1, #0x13]
    // 0x7454f4: r0 = RoundedRectangleBorder()
    //     0x7454f4: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x7454f8: mov             x3, x0
    // 0x7454fc: ldur            x0, [fp, #-0x20]
    // 0x745500: stur            x3, [fp, #-0x18]
    // 0x745504: StoreField: r3->field_b = r0
    //     0x745504: stur            w0, [x3, #0xb]
    // 0x745508: r0 = Instance_BorderSide
    //     0x745508: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x74550c: ldr             x0, [x0, #0xcb8]
    // 0x745510: StoreField: r3->field_7 = r0
    //     0x745510: stur            w0, [x3, #7]
    // 0x745514: r1 = Null
    //     0x745514: mov             x1, NULL
    // 0x745518: r2 = 6
    //     0x745518: mov             x2, #6
    // 0x74551c: r0 = AllocateArray()
    //     0x74551c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x745520: r16 = "\""
    //     0x745520: add             x16, PP, #0xc, lsl #12  ; [pp+0xc040] "\""
    //     0x745524: ldr             x16, [x16, #0x40]
    // 0x745528: StoreField: r0->field_f = r16
    //     0x745528: stur            w16, [x0, #0xf]
    // 0x74552c: ldur            x1, [fp, #-8]
    // 0x745530: LoadField: r2 = r1->field_b
    //     0x745530: ldur            w2, [x1, #0xb]
    // 0x745534: DecompressPointer r2
    //     0x745534: add             x2, x2, HEAP, lsl #32
    // 0x745538: stur            x2, [fp, #-0x20]
    // 0x74553c: LoadField: r1 = r2->field_13
    //     0x74553c: ldur            w1, [x2, #0x13]
    // 0x745540: DecompressPointer r1
    //     0x745540: add             x1, x1, HEAP, lsl #32
    // 0x745544: LoadField: r3 = r1->field_b
    //     0x745544: ldur            w3, [x1, #0xb]
    // 0x745548: DecompressPointer r3
    //     0x745548: add             x3, x3, HEAP, lsl #32
    // 0x74554c: StoreField: r0->field_13 = r3
    //     0x74554c: stur            w3, [x0, #0x13]
    // 0x745550: r16 = "\" otelini silmek istediğinize emin misiniz\?"
    //     0x745550: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fd40] "\" otelini silmek istediğinize emin misiniz\?"
    //     0x745554: ldr             x16, [x16, #0xd40]
    // 0x745558: ArrayStore: r0[0] = r16  ; List_4
    //     0x745558: stur            w16, [x0, #0x17]
    // 0x74555c: str             x0, [SP]
    // 0x745560: r0 = _interpolate()
    //     0x745560: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x745564: stur            x0, [fp, #-8]
    // 0x745568: r0 = Text()
    //     0x745568: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x74556c: mov             x3, x0
    // 0x745570: ldur            x0, [fp, #-8]
    // 0x745574: stur            x3, [fp, #-0x28]
    // 0x745578: StoreField: r3->field_b = r0
    //     0x745578: stur            w0, [x3, #0xb]
    // 0x74557c: r0 = Instance_TextStyle
    //     0x74557c: add             x0, PP, #0x19, lsl #12  ; [pp+0x19538] Obj!TextStyle@a179f1
    //     0x745580: ldr             x0, [x0, #0x538]
    // 0x745584: StoreField: r3->field_13 = r0
    //     0x745584: stur            w0, [x3, #0x13]
    // 0x745588: ldur            x0, [fp, #-0x20]
    // 0x74558c: ArrayLoad: r4 = r0[0]  ; List_4
    //     0x74558c: ldur            w4, [x0, #0x17]
    // 0x745590: DecompressPointer r4
    //     0x745590: add             x4, x4, HEAP, lsl #32
    // 0x745594: stur            x4, [fp, #-8]
    // 0x745598: tbnz            w4, #4, #0x7455a8
    // 0x74559c: mov             x0, x4
    // 0x7455a0: r1 = Null
    //     0x7455a0: mov             x1, NULL
    // 0x7455a4: b               #0x7455c0
    // 0x7455a8: ldur            x2, [fp, #-0x10]
    // 0x7455ac: r1 = Function '<anonymous closure>':.
    //     0x7455ac: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fd48] AnonymousClosure: (0x6f5908), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog (0x6f64f4)
    //     0x7455b0: ldr             x1, [x1, #0xd48]
    // 0x7455b4: r0 = AllocateClosure()
    //     0x7455b4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7455b8: mov             x1, x0
    // 0x7455bc: ldur            x0, [fp, #-8]
    // 0x7455c0: stur            x1, [fp, #-0x30]
    // 0x7455c4: r0 = TextButton()
    //     0x7455c4: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x7455c8: mov             x3, x0
    // 0x7455cc: ldur            x0, [fp, #-0x30]
    // 0x7455d0: stur            x3, [fp, #-0x38]
    // 0x7455d4: StoreField: r3->field_b = r0
    //     0x7455d4: stur            w0, [x3, #0xb]
    // 0x7455d8: r0 = false
    //     0x7455d8: add             x0, NULL, #0x30  ; false
    // 0x7455dc: StoreField: r3->field_27 = r0
    //     0x7455dc: stur            w0, [x3, #0x27]
    // 0x7455e0: r4 = true
    //     0x7455e0: add             x4, NULL, #0x20  ; true
    // 0x7455e4: StoreField: r3->field_2f = r4
    //     0x7455e4: stur            w4, [x3, #0x2f]
    // 0x7455e8: r1 = Instance_Text
    //     0x7455e8: add             x1, PP, #0x19, lsl #12  ; [pp+0x19198] Obj!Text@a1ba91
    //     0x7455ec: ldr             x1, [x1, #0x198]
    // 0x7455f0: StoreField: r3->field_37 = r1
    //     0x7455f0: stur            w1, [x3, #0x37]
    // 0x7455f4: ldur            x1, [fp, #-8]
    // 0x7455f8: tbnz            w1, #4, #0x745604
    // 0x7455fc: r1 = Null
    //     0x7455fc: mov             x1, NULL
    // 0x745600: b               #0x745618
    // 0x745604: ldur            x2, [fp, #-0x10]
    // 0x745608: r1 = Function '<anonymous closure>':.
    //     0x745608: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fd50] AnonymousClosure: (0x745744), in [package:umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart] HotelsTabState::_confirmDeleteHotel (0x745390)
    //     0x74560c: ldr             x1, [x1, #0xd50]
    // 0x745610: r0 = AllocateClosure()
    //     0x745610: bl              #0x9273d4  ; AllocateClosureStub
    // 0x745614: mov             x1, x0
    // 0x745618: ldur            x0, [fp, #-0x20]
    // 0x74561c: stur            x1, [fp, #-8]
    // 0x745620: r16 = Instance_MaterialColor
    //     0x745620: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b90] Obj!MaterialColor@a25aa1
    //     0x745624: ldr             x16, [x16, #0xb90]
    // 0x745628: r30 = Instance_Color
    //     0x745628: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x74562c: stp             lr, x16, [SP]
    // 0x745630: r4 = const [0, 0x2, 0x2, 0, backgroundColor, 0, foregroundColor, 0x1, null]
    //     0x745630: add             x4, PP, #0x19, lsl #12  ; [pp+0x191a8] List(9) [0, 0x2, 0x2, 0, "backgroundColor", 0, "foregroundColor", 0x1, Null]
    //     0x745634: ldr             x4, [x4, #0x1a8]
    // 0x745638: r0 = styleFrom()
    //     0x745638: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x74563c: mov             x1, x0
    // 0x745640: ldur            x0, [fp, #-0x20]
    // 0x745644: stur            x1, [fp, #-0x30]
    // 0x745648: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x745648: ldur            w2, [x0, #0x17]
    // 0x74564c: DecompressPointer r2
    //     0x74564c: add             x2, x2, HEAP, lsl #32
    // 0x745650: tbnz            w2, #4, #0x745660
    // 0x745654: r5 = Instance_SizedBox
    //     0x745654: add             x5, PP, #0x19, lsl #12  ; [pp+0x191b0] Obj!SizedBox@a1fa51
    //     0x745658: ldr             x5, [x5, #0x1b0]
    // 0x74565c: b               #0x745668
    // 0x745660: r5 = Instance_Text
    //     0x745660: add             x5, PP, #0x14, lsl #12  ; [pp+0x147e0] Obj!Text@a1b1d1
    //     0x745664: ldr             x5, [x5, #0x7e0]
    // 0x745668: ldur            x4, [fp, #-0x18]
    // 0x74566c: ldur            x3, [fp, #-0x28]
    // 0x745670: ldur            x2, [fp, #-0x38]
    // 0x745674: ldur            x0, [fp, #-8]
    // 0x745678: stur            x5, [fp, #-0x10]
    // 0x74567c: r0 = ElevatedButton()
    //     0x74567c: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x745680: mov             x3, x0
    // 0x745684: ldur            x0, [fp, #-8]
    // 0x745688: stur            x3, [fp, #-0x20]
    // 0x74568c: StoreField: r3->field_b = r0
    //     0x74568c: stur            w0, [x3, #0xb]
    // 0x745690: ldur            x0, [fp, #-0x30]
    // 0x745694: StoreField: r3->field_1b = r0
    //     0x745694: stur            w0, [x3, #0x1b]
    // 0x745698: r0 = false
    //     0x745698: add             x0, NULL, #0x30  ; false
    // 0x74569c: StoreField: r3->field_27 = r0
    //     0x74569c: stur            w0, [x3, #0x27]
    // 0x7456a0: r1 = true
    //     0x7456a0: add             x1, NULL, #0x20  ; true
    // 0x7456a4: StoreField: r3->field_2f = r1
    //     0x7456a4: stur            w1, [x3, #0x2f]
    // 0x7456a8: ldur            x1, [fp, #-0x10]
    // 0x7456ac: StoreField: r3->field_37 = r1
    //     0x7456ac: stur            w1, [x3, #0x37]
    // 0x7456b0: r1 = Null
    //     0x7456b0: mov             x1, NULL
    // 0x7456b4: r2 = 4
    //     0x7456b4: mov             x2, #4
    // 0x7456b8: r0 = AllocateArray()
    //     0x7456b8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7456bc: mov             x2, x0
    // 0x7456c0: ldur            x0, [fp, #-0x38]
    // 0x7456c4: stur            x2, [fp, #-8]
    // 0x7456c8: StoreField: r2->field_f = r0
    //     0x7456c8: stur            w0, [x2, #0xf]
    // 0x7456cc: ldur            x0, [fp, #-0x20]
    // 0x7456d0: StoreField: r2->field_13 = r0
    //     0x7456d0: stur            w0, [x2, #0x13]
    // 0x7456d4: r1 = <Widget>
    //     0x7456d4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7456d8: r0 = AllocateGrowableArray()
    //     0x7456d8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7456dc: mov             x1, x0
    // 0x7456e0: ldur            x0, [fp, #-8]
    // 0x7456e4: stur            x1, [fp, #-0x10]
    // 0x7456e8: StoreField: r1->field_f = r0
    //     0x7456e8: stur            w0, [x1, #0xf]
    // 0x7456ec: r0 = 4
    //     0x7456ec: mov             x0, #4
    // 0x7456f0: StoreField: r1->field_b = r0
    //     0x7456f0: stur            w0, [x1, #0xb]
    // 0x7456f4: r0 = AlertDialog()
    //     0x7456f4: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x7456f8: r1 = Instance_Text
    //     0x7456f8: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fd58] Obj!Text@a1d341
    //     0x7456fc: ldr             x1, [x1, #0xd58]
    // 0x745700: StoreField: r0->field_f = r1
    //     0x745700: stur            w1, [x0, #0xf]
    // 0x745704: ldur            x1, [fp, #-0x28]
    // 0x745708: StoreField: r0->field_1b = r1
    //     0x745708: stur            w1, [x0, #0x1b]
    // 0x74570c: ldur            x1, [fp, #-0x10]
    // 0x745710: StoreField: r0->field_27 = r1
    //     0x745710: stur            w1, [x0, #0x27]
    // 0x745714: r1 = Instance_Color
    //     0x745714: add             x1, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x745718: ldr             x1, [x1, #0x1c0]
    // 0x74571c: StoreField: r0->field_43 = r1
    //     0x74571c: stur            w1, [x0, #0x43]
    // 0x745720: ldur            x1, [fp, #-0x18]
    // 0x745724: StoreField: r0->field_5f = r1
    //     0x745724: stur            w1, [x0, #0x5f]
    // 0x745728: r1 = false
    //     0x745728: add             x1, NULL, #0x30  ; false
    // 0x74572c: StoreField: r0->field_6b = r1
    //     0x74572c: stur            w1, [x0, #0x6b]
    // 0x745730: LeaveFrame
    //     0x745730: mov             SP, fp
    //     0x745734: ldp             fp, lr, [SP], #0x10
    // 0x745738: ret
    //     0x745738: ret             
    // 0x74573c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74573c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x745740: b               #0x7454a0
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x745744, size: 0x14c
    // 0x745744: EnterFrame
    //     0x745744: stp             fp, lr, [SP, #-0x10]!
    //     0x745748: mov             fp, SP
    // 0x74574c: AllocStack(0x38)
    //     0x74574c: sub             SP, SP, #0x38
    // 0x745750: SetupParameters(HotelsTabState this /* r1 */)
    //     0x745750: stur            NULL, [fp, #-8]
    //     0x745754: mov             x0, #0
    //     0x745758: add             x1, fp, w0, sxtw #2
    //     0x74575c: ldr             x1, [x1, #0x10]
    //     0x745760: ldur            w2, [x1, #0x17]
    //     0x745764: add             x2, x2, HEAP, lsl #32
    //     0x745768: stur            x2, [fp, #-0x10]
    // 0x74576c: CheckStackOverflow
    //     0x74576c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x745770: cmp             SP, x16
    //     0x745774: b.ls            #0x745880
    // 0x745778: InitAsync() -> Future<void?>
    //     0x745778: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x74577c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x745780: ldur            x0, [fp, #-0x10]
    // 0x745784: LoadField: r3 = r0->field_f
    //     0x745784: ldur            w3, [x0, #0xf]
    // 0x745788: DecompressPointer r3
    //     0x745788: add             x3, x3, HEAP, lsl #32
    // 0x74578c: mov             x2, x0
    // 0x745790: stur            x3, [fp, #-0x18]
    // 0x745794: r1 = Function '<anonymous closure>':.
    //     0x745794: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fd60] AnonymousClosure: (0x744590), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::confirmDeleteUser (0x744a60)
    //     0x745798: ldr             x1, [x1, #0xd60]
    // 0x74579c: r0 = AllocateClosure()
    //     0x74579c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7457a0: ldur            x16, [fp, #-0x18]
    // 0x7457a4: stp             x0, x16, [SP]
    // 0x7457a8: ldur            x0, [fp, #-0x18]
    // 0x7457ac: ClosureCall
    //     0x7457ac: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x7457b0: ldur            x2, [x0, #0x1f]
    //     0x7457b4: blr             x2
    // 0x7457b8: ldur            x0, [fp, #-0x10]
    // 0x7457bc: LoadField: r3 = r0->field_b
    //     0x7457bc: ldur            w3, [x0, #0xb]
    // 0x7457c0: DecompressPointer r3
    //     0x7457c0: add             x3, x3, HEAP, lsl #32
    // 0x7457c4: stur            x3, [fp, #-0x20]
    // 0x7457c8: LoadField: r4 = r3->field_b
    //     0x7457c8: ldur            w4, [x3, #0xb]
    // 0x7457cc: DecompressPointer r4
    //     0x7457cc: add             x4, x4, HEAP, lsl #32
    // 0x7457d0: stur            x4, [fp, #-0x18]
    // 0x7457d4: LoadField: r1 = r4->field_f
    //     0x7457d4: ldur            w1, [x4, #0xf]
    // 0x7457d8: DecompressPointer r1
    //     0x7457d8: add             x1, x1, HEAP, lsl #32
    // 0x7457dc: LoadField: r2 = r1->field_b
    //     0x7457dc: ldur            w2, [x1, #0xb]
    // 0x7457e0: DecompressPointer r2
    //     0x7457e0: add             x2, x2, HEAP, lsl #32
    // 0x7457e4: cmp             w2, NULL
    // 0x7457e8: b.eq            #0x745888
    // 0x7457ec: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x7457ec: ldur            w1, [x2, #0x17]
    // 0x7457f0: DecompressPointer r1
    //     0x7457f0: add             x1, x1, HEAP, lsl #32
    // 0x7457f4: LoadField: r2 = r4->field_13
    //     0x7457f4: ldur            w2, [x4, #0x13]
    // 0x7457f8: DecompressPointer r2
    //     0x7457f8: add             x2, x2, HEAP, lsl #32
    // 0x7457fc: LoadField: r5 = r2->field_7
    //     0x7457fc: ldur            w5, [x2, #7]
    // 0x745800: DecompressPointer r5
    //     0x745800: add             x5, x5, HEAP, lsl #32
    // 0x745804: mov             x2, x5
    // 0x745808: r0 = deleteHotel()
    //     0x745808: bl              #0x745890  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::deleteHotel
    // 0x74580c: mov             x1, x0
    // 0x745810: stur            x1, [fp, #-0x28]
    // 0x745814: r0 = Await()
    //     0x745814: bl              #0x3dd188  ; AwaitStub
    // 0x745818: ldur            x0, [fp, #-0x18]
    // 0x74581c: LoadField: r1 = r0->field_f
    //     0x74581c: ldur            w1, [x0, #0xf]
    // 0x745820: DecompressPointer r1
    //     0x745820: add             x1, x1, HEAP, lsl #32
    // 0x745824: LoadField: r0 = r1->field_b
    //     0x745824: ldur            w0, [x1, #0xb]
    // 0x745828: DecompressPointer r0
    //     0x745828: add             x0, x0, HEAP, lsl #32
    // 0x74582c: cmp             w0, NULL
    // 0x745830: b.eq            #0x74588c
    // 0x745834: LoadField: r1 = r0->field_1b
    //     0x745834: ldur            w1, [x0, #0x1b]
    // 0x745838: DecompressPointer r1
    //     0x745838: add             x1, x1, HEAP, lsl #32
    // 0x74583c: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x74583c: ldur            w0, [x1, #0x17]
    // 0x745840: DecompressPointer r0
    //     0x745840: add             x0, x0, HEAP, lsl #32
    // 0x745844: mov             x1, x0
    // 0x745848: r0 = _loadAgencyData()
    //     0x745848: bl              #0x63a658  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_loadAgencyData
    // 0x74584c: ldur            x0, [fp, #-0x20]
    // 0x745850: LoadField: r1 = r0->field_f
    //     0x745850: ldur            w1, [x0, #0xf]
    // 0x745854: DecompressPointer r1
    //     0x745854: add             x1, x1, HEAP, lsl #32
    // 0x745858: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x745858: ldur            w0, [x1, #0x17]
    // 0x74585c: DecompressPointer r0
    //     0x74585c: add             x0, x0, HEAP, lsl #32
    // 0x745860: cmp             w0, NULL
    // 0x745864: b.eq            #0x745878
    // 0x745868: r16 = <Object?>
    //     0x745868: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x74586c: stp             x1, x16, [SP]
    // 0x745870: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x745870: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x745874: r0 = pop()
    //     0x745874: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x745878: r0 = Null
    //     0x745878: mov             x0, NULL
    // 0x74587c: r0 = ReturnAsyncNotFuture()
    //     0x74587c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x745880: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x745880: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x745884: b               #0x745778
    // 0x745888: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x745888: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x74588c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x74588c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x745fa4, size: 0x58
    // 0x745fa4: EnterFrame
    //     0x745fa4: stp             fp, lr, [SP, #-0x10]!
    //     0x745fa8: mov             fp, SP
    // 0x745fac: ldr             x0, [fp, #0x10]
    // 0x745fb0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x745fb0: ldur            w1, [x0, #0x17]
    // 0x745fb4: DecompressPointer r1
    //     0x745fb4: add             x1, x1, HEAP, lsl #32
    // 0x745fb8: CheckStackOverflow
    //     0x745fb8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x745fbc: cmp             SP, x16
    //     0x745fc0: b.ls            #0x745ff4
    // 0x745fc4: LoadField: r0 = r1->field_f
    //     0x745fc4: ldur            w0, [x1, #0xf]
    // 0x745fc8: DecompressPointer r0
    //     0x745fc8: add             x0, x0, HEAP, lsl #32
    // 0x745fcc: LoadField: r2 = r1->field_13
    //     0x745fcc: ldur            w2, [x1, #0x13]
    // 0x745fd0: DecompressPointer r2
    //     0x745fd0: add             x2, x2, HEAP, lsl #32
    // 0x745fd4: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x745fd4: ldur            w3, [x1, #0x17]
    // 0x745fd8: DecompressPointer r3
    //     0x745fd8: add             x3, x3, HEAP, lsl #32
    // 0x745fdc: mov             x1, x0
    // 0x745fe0: r0 = showHotelDialog()
    //     0x745fe0: bl              #0x7397a0  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart] HotelsTabState::showHotelDialog
    // 0x745fe4: r0 = Null
    //     0x745fe4: mov             x0, NULL
    // 0x745fe8: LeaveFrame
    //     0x745fe8: mov             SP, fp
    //     0x745fec: ldp             fp, lr, [SP], #0x10
    // 0x745ff0: ret
    //     0x745ff0: ret             
    // 0x745ff4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x745ff4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x745ff8: b               #0x745fc4
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x745ffc, size: 0x54
    // 0x745ffc: EnterFrame
    //     0x745ffc: stp             fp, lr, [SP, #-0x10]!
    //     0x746000: mov             fp, SP
    // 0x746004: ldr             x0, [fp, #0x10]
    // 0x746008: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x746008: ldur            w1, [x0, #0x17]
    // 0x74600c: DecompressPointer r1
    //     0x74600c: add             x1, x1, HEAP, lsl #32
    // 0x746010: CheckStackOverflow
    //     0x746010: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x746014: cmp             SP, x16
    //     0x746018: b.ls            #0x746048
    // 0x74601c: LoadField: r0 = r1->field_f
    //     0x74601c: ldur            w0, [x1, #0xf]
    // 0x746020: DecompressPointer r0
    //     0x746020: add             x0, x0, HEAP, lsl #32
    // 0x746024: LoadField: r2 = r1->field_13
    //     0x746024: ldur            w2, [x1, #0x13]
    // 0x746028: DecompressPointer r2
    //     0x746028: add             x2, x2, HEAP, lsl #32
    // 0x74602c: mov             x1, x0
    // 0x746030: r3 = Null
    //     0x746030: mov             x3, NULL
    // 0x746034: r0 = showHotelDialog()
    //     0x746034: bl              #0x7397a0  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart] HotelsTabState::showHotelDialog
    // 0x746038: r0 = Null
    //     0x746038: mov             x0, NULL
    // 0x74603c: LeaveFrame
    //     0x74603c: mov             SP, fp
    //     0x746040: ldp             fp, lr, [SP], #0x10
    // 0x746044: ret
    //     0x746044: ret             
    // 0x746048: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x746048: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74604c: b               #0x74601c
  }
}

// class id: 3188, size: 0x20, field offset: 0xc
//   const constructor, 
class HotelsTab extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bf64c, size: 0x24
    // 0x7bf64c: EnterFrame
    //     0x7bf64c: stp             fp, lr, [SP, #-0x10]!
    //     0x7bf650: mov             fp, SP
    // 0x7bf654: mov             x0, x1
    // 0x7bf658: r1 = <HotelsTab>
    //     0x7bf658: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bb30] TypeArguments: <HotelsTab>
    //     0x7bf65c: ldr             x1, [x1, #0xb30]
    // 0x7bf660: r0 = HotelsTabState()
    //     0x7bf660: bl              #0x7bf670  ; AllocateHotelsTabStateStub -> HotelsTabState (size=0x14)
    // 0x7bf664: LeaveFrame
    //     0x7bf664: mov             SP, fp
    //     0x7bf668: ldp             fp, lr, [SP], #0x10
    // 0x7bf66c: ret
    //     0x7bf66c: ret             
  }
}

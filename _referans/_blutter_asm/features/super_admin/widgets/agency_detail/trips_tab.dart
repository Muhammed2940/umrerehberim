// lib: , url: package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart

// class id: 1049609, size: 0x8
class :: {
}

// class id: 2455, size: 0x14, field offset: 0x14
class TripsTabState extends State<dynamic> {

  _ showTripDialog(/* No info */) {
    // ** addr: 0x73aae4, size: 0x354
    // 0x73aae4: EnterFrame
    //     0x73aae4: stp             fp, lr, [SP, #-0x10]!
    //     0x73aae8: mov             fp, SP
    // 0x73aaec: AllocStack(0x40)
    //     0x73aaec: sub             SP, SP, #0x40
    // 0x73aaf0: SetupParameters(TripsTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x73aaf0: stur            x1, [fp, #-8]
    //     0x73aaf4: stur            x2, [fp, #-0x10]
    //     0x73aaf8: stur            x3, [fp, #-0x18]
    // 0x73aafc: CheckStackOverflow
    //     0x73aafc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73ab00: cmp             SP, x16
    //     0x73ab04: b.ls            #0x73ae2c
    // 0x73ab08: r1 = 11
    //     0x73ab08: mov             x1, #0xb
    // 0x73ab0c: r0 = AllocateContext()
    //     0x73ab0c: bl              #0x927010  ; AllocateContextStub
    // 0x73ab10: mov             x2, x0
    // 0x73ab14: ldur            x0, [fp, #-8]
    // 0x73ab18: stur            x2, [fp, #-0x20]
    // 0x73ab1c: StoreField: r2->field_f = r0
    //     0x73ab1c: stur            w0, [x2, #0xf]
    // 0x73ab20: ldur            x1, [fp, #-0x18]
    // 0x73ab24: StoreField: r2->field_13 = r1
    //     0x73ab24: stur            w1, [x2, #0x13]
    // 0x73ab28: cmp             w1, NULL
    // 0x73ab2c: r16 = true
    //     0x73ab2c: add             x16, NULL, #0x20  ; true
    // 0x73ab30: r17 = false
    //     0x73ab30: add             x17, NULL, #0x30  ; false
    // 0x73ab34: csel            x3, x16, x17, ne
    // 0x73ab38: ArrayStore: r2[0] = r3  ; List_4
    //     0x73ab38: stur            w3, [x2, #0x17]
    // 0x73ab3c: cmp             w1, NULL
    // 0x73ab40: b.ne            #0x73ab4c
    // 0x73ab44: r1 = Null
    //     0x73ab44: mov             x1, NULL
    // 0x73ab48: b               #0x73ab58
    // 0x73ab4c: LoadField: r3 = r1->field_b
    //     0x73ab4c: ldur            w3, [x1, #0xb]
    // 0x73ab50: DecompressPointer r3
    //     0x73ab50: add             x3, x3, HEAP, lsl #32
    // 0x73ab54: mov             x1, x3
    // 0x73ab58: cmp             w1, NULL
    // 0x73ab5c: b.ne            #0x73ab68
    // 0x73ab60: r3 = ""
    //     0x73ab60: ldr             x3, [PP, #0x128]  ; [pp+0x128] ""
    // 0x73ab64: b               #0x73ab6c
    // 0x73ab68: mov             x3, x1
    // 0x73ab6c: stur            x3, [fp, #-0x18]
    // 0x73ab70: r1 = <TextEditingValue>
    //     0x73ab70: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x73ab74: r0 = TextEditingController()
    //     0x73ab74: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x73ab78: stur            x0, [fp, #-0x28]
    // 0x73ab7c: ldur            x16, [fp, #-0x18]
    // 0x73ab80: str             x16, [SP]
    // 0x73ab84: mov             x1, x0
    // 0x73ab88: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x73ab88: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x73ab8c: ldr             x4, [x4, #0xa20]
    // 0x73ab90: r0 = TextEditingController()
    //     0x73ab90: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x73ab94: ldur            x0, [fp, #-0x28]
    // 0x73ab98: ldur            x2, [fp, #-0x20]
    // 0x73ab9c: StoreField: r2->field_1b = r0
    //     0x73ab9c: stur            w0, [x2, #0x1b]
    //     0x73aba0: ldurb           w16, [x2, #-1]
    //     0x73aba4: ldurb           w17, [x0, #-1]
    //     0x73aba8: and             x16, x17, x16, lsr #2
    //     0x73abac: tst             x16, HEAP, lsr #32
    //     0x73abb0: b.eq            #0x73abb8
    //     0x73abb4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73abb8: LoadField: r0 = r2->field_13
    //     0x73abb8: ldur            w0, [x2, #0x13]
    // 0x73abbc: DecompressPointer r0
    //     0x73abbc: add             x0, x0, HEAP, lsl #32
    // 0x73abc0: cmp             w0, NULL
    // 0x73abc4: b.ne            #0x73abd0
    // 0x73abc8: r0 = Null
    //     0x73abc8: mov             x0, NULL
    // 0x73abcc: b               #0x73abdc
    // 0x73abd0: LoadField: r1 = r0->field_1b
    //     0x73abd0: ldur            w1, [x0, #0x1b]
    // 0x73abd4: DecompressPointer r1
    //     0x73abd4: add             x1, x1, HEAP, lsl #32
    // 0x73abd8: mov             x0, x1
    // 0x73abdc: cmp             w0, NULL
    // 0x73abe0: b.ne            #0x73abe8
    // 0x73abe4: r0 = ""
    //     0x73abe4: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x73abe8: stur            x0, [fp, #-0x18]
    // 0x73abec: r1 = <TextEditingValue>
    //     0x73abec: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x73abf0: r0 = TextEditingController()
    //     0x73abf0: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x73abf4: stur            x0, [fp, #-0x28]
    // 0x73abf8: ldur            x16, [fp, #-0x18]
    // 0x73abfc: str             x16, [SP]
    // 0x73ac00: mov             x1, x0
    // 0x73ac04: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x73ac04: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x73ac08: ldr             x4, [x4, #0xa20]
    // 0x73ac0c: r0 = TextEditingController()
    //     0x73ac0c: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x73ac10: ldur            x0, [fp, #-0x28]
    // 0x73ac14: ldur            x2, [fp, #-0x20]
    // 0x73ac18: StoreField: r2->field_1f = r0
    //     0x73ac18: stur            w0, [x2, #0x1f]
    //     0x73ac1c: ldurb           w16, [x2, #-1]
    //     0x73ac20: ldurb           w17, [x0, #-1]
    //     0x73ac24: and             x16, x17, x16, lsr #2
    //     0x73ac28: tst             x16, HEAP, lsr #32
    //     0x73ac2c: b.eq            #0x73ac34
    //     0x73ac30: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73ac34: LoadField: r1 = r2->field_13
    //     0x73ac34: ldur            w1, [x2, #0x13]
    // 0x73ac38: DecompressPointer r1
    //     0x73ac38: add             x1, x1, HEAP, lsl #32
    // 0x73ac3c: cmp             w1, NULL
    // 0x73ac40: b.ne            #0x73ac4c
    // 0x73ac44: r0 = Null
    //     0x73ac44: mov             x0, NULL
    // 0x73ac48: b               #0x73ac54
    // 0x73ac4c: LoadField: r0 = r1->field_f
    //     0x73ac4c: ldur            w0, [x1, #0xf]
    // 0x73ac50: DecompressPointer r0
    //     0x73ac50: add             x0, x0, HEAP, lsl #32
    // 0x73ac54: StoreField: r2->field_23 = r0
    //     0x73ac54: stur            w0, [x2, #0x23]
    //     0x73ac58: ldurb           w16, [x2, #-1]
    //     0x73ac5c: ldurb           w17, [x0, #-1]
    //     0x73ac60: and             x16, x17, x16, lsr #2
    //     0x73ac64: tst             x16, HEAP, lsr #32
    //     0x73ac68: b.eq            #0x73ac70
    //     0x73ac6c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73ac70: cmp             w1, NULL
    // 0x73ac74: b.ne            #0x73ac80
    // 0x73ac78: r0 = Null
    //     0x73ac78: mov             x0, NULL
    // 0x73ac7c: b               #0x73ac88
    // 0x73ac80: LoadField: r0 = r1->field_13
    //     0x73ac80: ldur            w0, [x1, #0x13]
    // 0x73ac84: DecompressPointer r0
    //     0x73ac84: add             x0, x0, HEAP, lsl #32
    // 0x73ac88: StoreField: r2->field_27 = r0
    //     0x73ac88: stur            w0, [x2, #0x27]
    //     0x73ac8c: ldurb           w16, [x2, #-1]
    //     0x73ac90: ldurb           w17, [x0, #-1]
    //     0x73ac94: and             x16, x17, x16, lsr #2
    //     0x73ac98: tst             x16, HEAP, lsr #32
    //     0x73ac9c: b.eq            #0x73aca4
    //     0x73aca0: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73aca4: cmp             w1, NULL
    // 0x73aca8: b.ne            #0x73acb4
    // 0x73acac: r0 = Null
    //     0x73acac: mov             x0, NULL
    // 0x73acb0: b               #0x73acbc
    // 0x73acb4: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x73acb4: ldur            w0, [x1, #0x17]
    // 0x73acb8: DecompressPointer r0
    //     0x73acb8: add             x0, x0, HEAP, lsl #32
    // 0x73acbc: StoreField: r2->field_2b = r0
    //     0x73acbc: stur            w0, [x2, #0x2b]
    //     0x73acc0: ldurb           w16, [x2, #-1]
    //     0x73acc4: ldurb           w17, [x0, #-1]
    //     0x73acc8: and             x16, x17, x16, lsr #2
    //     0x73accc: tst             x16, HEAP, lsr #32
    //     0x73acd0: b.eq            #0x73acd8
    //     0x73acd4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73acd8: cmp             w1, NULL
    // 0x73acdc: b.eq            #0x73ad54
    // 0x73ace0: ldur            x1, [fp, #-8]
    // 0x73ace4: r0 = textAlign()
    //     0x73ace4: bl              #0x582638  ; [package:flutter/src/material/input_decorator.dart] _InputDecoratorState::textAlign
    // 0x73ace8: ldur            x3, [fp, #-0x20]
    // 0x73acec: LoadField: r1 = r3->field_13
    //     0x73acec: ldur            w1, [x3, #0x13]
    // 0x73acf0: DecompressPointer r1
    //     0x73acf0: add             x1, x1, HEAP, lsl #32
    // 0x73acf4: cmp             w1, NULL
    // 0x73acf8: b.eq            #0x73ae34
    // 0x73acfc: LoadField: r2 = r1->field_7
    //     0x73acfc: ldur            w2, [x1, #7]
    // 0x73ad00: DecompressPointer r2
    //     0x73ad00: add             x2, x2, HEAP, lsl #32
    // 0x73ad04: r1 = LoadClassIdInstr(r0)
    //     0x73ad04: ldur            x1, [x0, #-1]
    //     0x73ad08: ubfx            x1, x1, #0xc, #0x14
    // 0x73ad0c: mov             x16, x0
    // 0x73ad10: mov             x0, x1
    // 0x73ad14: mov             x1, x16
    // 0x73ad18: r0 = GDT[cid_x0 + 0x36e]()
    //     0x73ad18: add             lr, x0, #0x36e
    //     0x73ad1c: ldr             lr, [x21, lr, lsl #3]
    //     0x73ad20: blr             lr
    // 0x73ad24: cmp             w0, NULL
    // 0x73ad28: b.ne            #0x73ad40
    // 0x73ad2c: r1 = Null
    //     0x73ad2c: mov             x1, NULL
    // 0x73ad30: r2 = 0
    //     0x73ad30: mov             x2, #0
    // 0x73ad34: r0 = _GrowableList()
    //     0x73ad34: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x73ad38: mov             x2, x0
    // 0x73ad3c: b               #0x73ad44
    // 0x73ad40: mov             x2, x0
    // 0x73ad44: r1 = <String>
    //     0x73ad44: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x73ad48: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x73ad48: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x73ad4c: r0 = List.from()
    //     0x73ad4c: bl              #0x490278  ; [dart:core] List::List.from
    // 0x73ad50: b               #0x73ad60
    // 0x73ad54: r1 = <String>
    //     0x73ad54: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x73ad58: r2 = 0
    //     0x73ad58: mov             x2, #0
    // 0x73ad5c: r0 = _GrowableList()
    //     0x73ad5c: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x73ad60: ldur            x2, [fp, #-0x20]
    // 0x73ad64: StoreField: r2->field_2f = r0
    //     0x73ad64: stur            w0, [x2, #0x2f]
    //     0x73ad68: ldurb           w16, [x2, #-1]
    //     0x73ad6c: ldurb           w17, [x0, #-1]
    //     0x73ad70: and             x16, x17, x16, lsr #2
    //     0x73ad74: tst             x16, HEAP, lsr #32
    //     0x73ad78: b.eq            #0x73ad80
    //     0x73ad7c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73ad80: ldur            x1, [fp, #-8]
    // 0x73ad84: r0 = onChanged()
    //     0x73ad84: bl              #0x582f8c  ; [package:flutter/src/material/checkbox.dart] _CheckboxState::onChanged
    // 0x73ad88: r1 = Function '<anonymous closure>':.
    //     0x73ad88: add             x1, PP, #0x19, lsl #12  ; [pp+0x19390] AnonymousClosure: (0x6e26e0), in [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::managerUsers (0x6e2660)
    //     0x73ad8c: ldr             x1, [x1, #0x390]
    // 0x73ad90: r2 = Null
    //     0x73ad90: mov             x2, NULL
    // 0x73ad94: stur            x0, [fp, #-8]
    // 0x73ad98: r0 = AllocateClosure()
    //     0x73ad98: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73ad9c: ldur            x1, [fp, #-8]
    // 0x73ada0: r2 = LoadClassIdInstr(r1)
    //     0x73ada0: ldur            x2, [x1, #-1]
    //     0x73ada4: ubfx            x2, x2, #0xc, #0x14
    // 0x73ada8: mov             x16, x0
    // 0x73adac: mov             x0, x2
    // 0x73adb0: mov             x2, x16
    // 0x73adb4: r0 = GDT[cid_x0 + 0xd348]()
    //     0x73adb4: mov             x17, #0xd348
    //     0x73adb8: add             lr, x0, x17
    //     0x73adbc: ldr             lr, [x21, lr, lsl #3]
    //     0x73adc0: blr             lr
    // 0x73adc4: LoadField: r1 = r0->field_7
    //     0x73adc4: ldur            w1, [x0, #7]
    // 0x73adc8: DecompressPointer r1
    //     0x73adc8: add             x1, x1, HEAP, lsl #32
    // 0x73adcc: mov             x2, x0
    // 0x73add0: r0 = _GrowableList.of()
    //     0x73add0: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x73add4: ldur            x2, [fp, #-0x20]
    // 0x73add8: StoreField: r2->field_33 = r0
    //     0x73add8: stur            w0, [x2, #0x33]
    //     0x73addc: ldurb           w16, [x2, #-1]
    //     0x73ade0: ldurb           w17, [x0, #-1]
    //     0x73ade4: and             x16, x17, x16, lsr #2
    //     0x73ade8: tst             x16, HEAP, lsr #32
    //     0x73adec: b.eq            #0x73adf4
    //     0x73adf0: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73adf4: r0 = false
    //     0x73adf4: add             x0, NULL, #0x30  ; false
    // 0x73adf8: StoreField: r2->field_37 = r0
    //     0x73adf8: stur            w0, [x2, #0x37]
    // 0x73adfc: r1 = Function '<anonymous closure>':.
    //     0x73adfc: add             x1, PP, #0x19, lsl #12  ; [pp+0x19398] AnonymousClosure: (0x73ae38), in [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::showTripDialog (0x73aae4)
    //     0x73ae00: ldr             x1, [x1, #0x398]
    // 0x73ae04: r0 = AllocateClosure()
    //     0x73ae04: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73ae08: stp             x0, NULL, [SP, #8]
    // 0x73ae0c: ldur            x16, [fp, #-0x10]
    // 0x73ae10: str             x16, [SP]
    // 0x73ae14: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x73ae14: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x73ae18: r0 = showDialog()
    //     0x73ae18: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x73ae1c: r0 = Null
    //     0x73ae1c: mov             x0, NULL
    // 0x73ae20: LeaveFrame
    //     0x73ae20: mov             SP, fp
    //     0x73ae24: ldp             fp, lr, [SP], #0x10
    // 0x73ae28: ret
    //     0x73ae28: ret             
    // 0x73ae2c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73ae2c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73ae30: b               #0x73ab08
    // 0x73ae34: r0 = NullErrorSharedWithoutFPURegs()
    //     0x73ae34: bl              #0x9289e0  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x73ae38, size: 0x64
    // 0x73ae38: EnterFrame
    //     0x73ae38: stp             fp, lr, [SP, #-0x10]!
    //     0x73ae3c: mov             fp, SP
    // 0x73ae40: AllocStack(0x8)
    //     0x73ae40: sub             SP, SP, #8
    // 0x73ae44: SetupParameters([dynamic _ /* r0 */])
    //     0x73ae44: ldr             x0, [fp, #0x18]
    //     0x73ae48: ldur            w1, [x0, #0x17]
    //     0x73ae4c: add             x1, x1, HEAP, lsl #32
    //     0x73ae50: stur            x1, [fp, #-8]
    // 0x73ae54: r1 = 1
    //     0x73ae54: mov             x1, #1
    // 0x73ae58: r0 = AllocateContext()
    //     0x73ae58: bl              #0x927010  ; AllocateContextStub
    // 0x73ae5c: mov             x1, x0
    // 0x73ae60: ldur            x0, [fp, #-8]
    // 0x73ae64: StoreField: r1->field_b = r0
    //     0x73ae64: stur            w0, [x1, #0xb]
    // 0x73ae68: ldr             x0, [fp, #0x10]
    // 0x73ae6c: StoreField: r1->field_f = r0
    //     0x73ae6c: stur            w0, [x1, #0xf]
    // 0x73ae70: mov             x2, x1
    // 0x73ae74: r1 = Function '<anonymous closure>':.
    //     0x73ae74: add             x1, PP, #0x19, lsl #12  ; [pp+0x193a0] AnonymousClosure: (0x73ae9c), in [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::showTripDialog (0x73aae4)
    //     0x73ae78: ldr             x1, [x1, #0x3a0]
    // 0x73ae7c: r0 = AllocateClosure()
    //     0x73ae7c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73ae80: stur            x0, [fp, #-8]
    // 0x73ae84: r0 = StatefulBuilder()
    //     0x73ae84: bl              #0x6d2fbc  ; AllocateStatefulBuilderStub -> StatefulBuilder (size=0x10)
    // 0x73ae88: ldur            x1, [fp, #-8]
    // 0x73ae8c: StoreField: r0->field_b = r1
    //     0x73ae8c: stur            w1, [x0, #0xb]
    // 0x73ae90: LeaveFrame
    //     0x73ae90: mov             SP, fp
    //     0x73ae94: ldp             fp, lr, [SP], #0x10
    // 0x73ae98: ret
    //     0x73ae98: ret             
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void) {
    // ** addr: 0x73ae9c, size: 0x668
    // 0x73ae9c: EnterFrame
    //     0x73ae9c: stp             fp, lr, [SP, #-0x10]!
    //     0x73aea0: mov             fp, SP
    // 0x73aea4: AllocStack(0x68)
    //     0x73aea4: sub             SP, SP, #0x68
    // 0x73aea8: SetupParameters([dynamic _ /* r0 */])
    //     0x73aea8: ldr             x0, [fp, #0x20]
    //     0x73aeac: ldur            w1, [x0, #0x17]
    //     0x73aeb0: add             x1, x1, HEAP, lsl #32
    //     0x73aeb4: stur            x1, [fp, #-8]
    // 0x73aeb8: CheckStackOverflow
    //     0x73aeb8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73aebc: cmp             SP, x16
    //     0x73aec0: b.ls            #0x73b4fc
    // 0x73aec4: r1 = 2
    //     0x73aec4: mov             x1, #2
    // 0x73aec8: r0 = AllocateContext()
    //     0x73aec8: bl              #0x927010  ; AllocateContextStub
    // 0x73aecc: mov             x1, x0
    // 0x73aed0: ldur            x0, [fp, #-8]
    // 0x73aed4: stur            x1, [fp, #-0x10]
    // 0x73aed8: StoreField: r1->field_b = r0
    //     0x73aed8: stur            w0, [x1, #0xb]
    // 0x73aedc: ldr             x2, [fp, #0x18]
    // 0x73aee0: StoreField: r1->field_f = r2
    //     0x73aee0: stur            w2, [x1, #0xf]
    // 0x73aee4: ldr             x2, [fp, #0x10]
    // 0x73aee8: StoreField: r1->field_13 = r2
    //     0x73aee8: stur            w2, [x1, #0x13]
    // 0x73aeec: r0 = Radius()
    //     0x73aeec: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x73aef0: d0 = 16.000000
    //     0x73aef0: fmov            d0, #16.00000000
    // 0x73aef4: stur            x0, [fp, #-0x18]
    // 0x73aef8: StoreField: r0->field_7 = d0
    //     0x73aef8: stur            d0, [x0, #7]
    // 0x73aefc: StoreField: r0->field_f = d0
    //     0x73aefc: stur            d0, [x0, #0xf]
    // 0x73af00: r0 = BorderRadius()
    //     0x73af00: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x73af04: mov             x1, x0
    // 0x73af08: ldur            x0, [fp, #-0x18]
    // 0x73af0c: stur            x1, [fp, #-0x20]
    // 0x73af10: StoreField: r1->field_7 = r0
    //     0x73af10: stur            w0, [x1, #7]
    // 0x73af14: StoreField: r1->field_b = r0
    //     0x73af14: stur            w0, [x1, #0xb]
    // 0x73af18: StoreField: r1->field_f = r0
    //     0x73af18: stur            w0, [x1, #0xf]
    // 0x73af1c: StoreField: r1->field_13 = r0
    //     0x73af1c: stur            w0, [x1, #0x13]
    // 0x73af20: r0 = RoundedRectangleBorder()
    //     0x73af20: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x73af24: mov             x1, x0
    // 0x73af28: ldur            x0, [fp, #-0x20]
    // 0x73af2c: stur            x1, [fp, #-0x30]
    // 0x73af30: StoreField: r1->field_b = r0
    //     0x73af30: stur            w0, [x1, #0xb]
    // 0x73af34: r0 = Instance_BorderSide
    //     0x73af34: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x73af38: ldr             x0, [x0, #0xcb8]
    // 0x73af3c: StoreField: r1->field_7 = r0
    //     0x73af3c: stur            w0, [x1, #7]
    // 0x73af40: ldur            x0, [fp, #-8]
    // 0x73af44: LoadField: r2 = r0->field_b
    //     0x73af44: ldur            w2, [x0, #0xb]
    // 0x73af48: DecompressPointer r2
    //     0x73af48: add             x2, x2, HEAP, lsl #32
    // 0x73af4c: stur            x2, [fp, #-0x28]
    // 0x73af50: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x73af50: ldur            w3, [x2, #0x17]
    // 0x73af54: DecompressPointer r3
    //     0x73af54: add             x3, x3, HEAP, lsl #32
    // 0x73af58: stur            x3, [fp, #-0x20]
    // 0x73af5c: tbnz            w3, #4, #0x73af6c
    // 0x73af60: r4 = "Sefer Düzenle"
    //     0x73af60: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a60] "Sefer Düzenle"
    //     0x73af64: ldr             x4, [x4, #0xa60]
    // 0x73af68: b               #0x73af74
    // 0x73af6c: r4 = "Yeni Sefer"
    //     0x73af6c: add             x4, PP, #0x19, lsl #12  ; [pp+0x193a8] "Yeni Sefer"
    //     0x73af70: ldr             x4, [x4, #0x3a8]
    // 0x73af74: stur            x4, [fp, #-0x18]
    // 0x73af78: r0 = Text()
    //     0x73af78: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x73af7c: mov             x4, x0
    // 0x73af80: ldur            x0, [fp, #-0x18]
    // 0x73af84: stur            x4, [fp, #-0x38]
    // 0x73af88: StoreField: r4->field_b = r0
    //     0x73af88: stur            w0, [x4, #0xb]
    // 0x73af8c: r0 = Instance_TextStyle
    //     0x73af8c: add             x0, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x73af90: ldr             x0, [x0, #0x158]
    // 0x73af94: StoreField: r4->field_13 = r0
    //     0x73af94: stur            w0, [x4, #0x13]
    // 0x73af98: ldur            x0, [fp, #-0x28]
    // 0x73af9c: LoadField: r1 = r0->field_1b
    //     0x73af9c: ldur            w1, [x0, #0x1b]
    // 0x73afa0: DecompressPointer r1
    //     0x73afa0: add             x1, x1, HEAP, lsl #32
    // 0x73afa4: r2 = "Sefer Adı *"
    //     0x73afa4: add             x2, PP, #0x19, lsl #12  ; [pp+0x193b0] "Sefer Adı *"
    //     0x73afa8: ldr             x2, [x2, #0x3b0]
    // 0x73afac: r3 = Instance_IconData
    //     0x73afac: add             x3, PP, #0x15, lsl #12  ; [pp+0x15608] Obj!IconData@a0a641
    //     0x73afb0: ldr             x3, [x3, #0x608]
    // 0x73afb4: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x73afb4: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x73afb8: r0 = buildDialogTextField()
    //     0x73afb8: bl              #0x6f4c3c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDialogTextField
    // 0x73afbc: r1 = <Widget>
    //     0x73afbc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73afc0: r2 = 22
    //     0x73afc0: mov             x2, #0x16
    // 0x73afc4: stur            x0, [fp, #-0x18]
    // 0x73afc8: r0 = AllocateArray()
    //     0x73afc8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73afcc: mov             x2, x0
    // 0x73afd0: ldur            x0, [fp, #-0x18]
    // 0x73afd4: stur            x2, [fp, #-0x40]
    // 0x73afd8: StoreField: r2->field_f = r0
    //     0x73afd8: stur            w0, [x2, #0xf]
    // 0x73afdc: r16 = Instance_SizedBox
    //     0x73afdc: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x73afe0: ldr             x16, [x16, #0x220]
    // 0x73afe4: StoreField: r2->field_13 = r16
    //     0x73afe4: stur            w16, [x2, #0x13]
    // 0x73afe8: ldur            x0, [fp, #-0x28]
    // 0x73afec: LoadField: r3 = r0->field_23
    //     0x73afec: ldur            w3, [x0, #0x23]
    // 0x73aff0: DecompressPointer r3
    //     0x73aff0: add             x3, x3, HEAP, lsl #32
    // 0x73aff4: stur            x3, [fp, #-0x18]
    // 0x73aff8: r1 = "Lokasyon"
    //     0x73aff8: add             x1, PP, #0x19, lsl #12  ; [pp+0x193b8] "Lokasyon"
    //     0x73affc: ldr             x1, [x1, #0x3b8]
    // 0x73b000: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x73b000: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x73b004: r0 = buildDropdownDecoration()
    //     0x73b004: bl              #0x6f4f28  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDropdownDecoration
    // 0x73b008: ldur            x2, [fp, #-0x10]
    // 0x73b00c: r1 = Function '<anonymous closure>':.
    //     0x73b00c: add             x1, PP, #0x19, lsl #12  ; [pp+0x193c0] AnonymousClosure: (0x73cf48), in [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::showTripDialog (0x73aae4)
    //     0x73b010: ldr             x1, [x1, #0x3c0]
    // 0x73b014: stur            x0, [fp, #-0x48]
    // 0x73b018: r0 = AllocateClosure()
    //     0x73b018: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73b01c: r1 = <String?>
    //     0x73b01c: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x73b020: stur            x0, [fp, #-0x50]
    // 0x73b024: r0 = DropdownButtonFormField()
    //     0x73b024: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x73b028: stur            x0, [fp, #-0x58]
    // 0x73b02c: r16 = Instance_Color
    //     0x73b02c: add             x16, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x73b030: ldr             x16, [x16, #0x1c0]
    // 0x73b034: r30 = Instance_TextStyle
    //     0x73b034: add             lr, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x73b038: ldr             lr, [lr, #0x158]
    // 0x73b03c: stp             lr, x16, [SP]
    // 0x73b040: mov             x1, x0
    // 0x73b044: ldur            x2, [fp, #-0x48]
    // 0x73b048: ldur            x3, [fp, #-0x18]
    // 0x73b04c: ldur            x6, [fp, #-0x50]
    // 0x73b050: r5 = const [Instance of 'DropdownMenuItem<String?>', Instance of 'DropdownMenuItem<String?>', Instance of 'DropdownMenuItem<String?>']
    //     0x73b050: add             x5, PP, #0x13, lsl #12  ; [pp+0x13aa0] List<DropdownMenuItem<String?>>(3)
    //     0x73b054: ldr             x5, [x5, #0xaa0]
    // 0x73b058: r4 = const [0, 0x7, 0x2, 0x5, dropdownColor, 0x5, style, 0x6, null]
    //     0x73b058: add             x4, PP, #0x19, lsl #12  ; [pp+0x19250] List(9) [0, 0x7, 0x2, 0x5, "dropdownColor", 0x5, "style", 0x6, Null]
    //     0x73b05c: ldr             x4, [x4, #0x250]
    // 0x73b060: r0 = DropdownButtonFormField()
    //     0x73b060: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x73b064: ldur            x1, [fp, #-0x40]
    // 0x73b068: ldur            x0, [fp, #-0x58]
    // 0x73b06c: ArrayStore: r1[2] = r0  ; List_4
    //     0x73b06c: add             x25, x1, #0x17
    //     0x73b070: str             w0, [x25]
    //     0x73b074: tbz             w0, #0, #0x73b090
    //     0x73b078: ldurb           w16, [x1, #-1]
    //     0x73b07c: ldurb           w17, [x0, #-1]
    //     0x73b080: and             x16, x17, x16, lsr #2
    //     0x73b084: tst             x16, HEAP, lsr #32
    //     0x73b088: b.eq            #0x73b090
    //     0x73b08c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73b090: ldur            x0, [fp, #-0x40]
    // 0x73b094: r16 = Instance_SizedBox
    //     0x73b094: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x73b098: ldr             x16, [x16, #0x220]
    // 0x73b09c: StoreField: r0->field_1b = r16
    //     0x73b09c: stur            w16, [x0, #0x1b]
    // 0x73b0a0: ldur            x3, [fp, #-8]
    // 0x73b0a4: LoadField: r4 = r3->field_f
    //     0x73b0a4: ldur            w4, [x3, #0xf]
    // 0x73b0a8: DecompressPointer r4
    //     0x73b0a8: add             x4, x4, HEAP, lsl #32
    // 0x73b0ac: ldur            x5, [fp, #-0x28]
    // 0x73b0b0: stur            x4, [fp, #-0x48]
    // 0x73b0b4: LoadField: r6 = r5->field_27
    //     0x73b0b4: ldur            w6, [x5, #0x27]
    // 0x73b0b8: DecompressPointer r6
    //     0x73b0b8: add             x6, x6, HEAP, lsl #32
    // 0x73b0bc: ldur            x2, [fp, #-0x10]
    // 0x73b0c0: stur            x6, [fp, #-0x18]
    // 0x73b0c4: r1 = Function '<anonymous closure>':.
    //     0x73b0c4: add             x1, PP, #0x19, lsl #12  ; [pp+0x193c8] AnonymousClosure: (0x73cebc), in [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::showTripDialog (0x73aae4)
    //     0x73b0c8: ldr             x1, [x1, #0x3c8]
    // 0x73b0cc: r0 = AllocateClosure()
    //     0x73b0cc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73b0d0: ldur            x1, [fp, #-0x48]
    // 0x73b0d4: ldur            x3, [fp, #-0x18]
    // 0x73b0d8: mov             x5, x0
    // 0x73b0dc: r2 = "Başlangıç"
    //     0x73b0dc: add             x2, PP, #0x13, lsl #12  ; [pp+0x13aa8] "Başlangıç"
    //     0x73b0e0: ldr             x2, [x2, #0xaa8]
    // 0x73b0e4: r0 = buildDatePickerRow()
    //     0x73b0e4: bl              #0x73bd30  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDatePickerRow
    // 0x73b0e8: ldur            x1, [fp, #-0x40]
    // 0x73b0ec: ArrayStore: r1[4] = r0  ; List_4
    //     0x73b0ec: add             x25, x1, #0x1f
    //     0x73b0f0: str             w0, [x25]
    //     0x73b0f4: tbz             w0, #0, #0x73b110
    //     0x73b0f8: ldurb           w16, [x1, #-1]
    //     0x73b0fc: ldurb           w17, [x0, #-1]
    //     0x73b100: and             x16, x17, x16, lsr #2
    //     0x73b104: tst             x16, HEAP, lsr #32
    //     0x73b108: b.eq            #0x73b110
    //     0x73b10c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73b110: ldur            x0, [fp, #-0x40]
    // 0x73b114: r16 = Instance_SizedBox
    //     0x73b114: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x73b118: ldr             x16, [x16, #0x220]
    // 0x73b11c: StoreField: r0->field_23 = r16
    //     0x73b11c: stur            w16, [x0, #0x23]
    // 0x73b120: ldur            x1, [fp, #-8]
    // 0x73b124: LoadField: r3 = r1->field_f
    //     0x73b124: ldur            w3, [x1, #0xf]
    // 0x73b128: DecompressPointer r3
    //     0x73b128: add             x3, x3, HEAP, lsl #32
    // 0x73b12c: ldur            x4, [fp, #-0x28]
    // 0x73b130: stur            x3, [fp, #-0x18]
    // 0x73b134: LoadField: r5 = r4->field_2b
    //     0x73b134: ldur            w5, [x4, #0x2b]
    // 0x73b138: DecompressPointer r5
    //     0x73b138: add             x5, x5, HEAP, lsl #32
    // 0x73b13c: ldur            x2, [fp, #-0x10]
    // 0x73b140: stur            x5, [fp, #-8]
    // 0x73b144: r1 = Function '<anonymous closure>':.
    //     0x73b144: add             x1, PP, #0x19, lsl #12  ; [pp+0x193d0] AnonymousClosure: (0x73ce30), in [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::showTripDialog (0x73aae4)
    //     0x73b148: ldr             x1, [x1, #0x3d0]
    // 0x73b14c: r0 = AllocateClosure()
    //     0x73b14c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73b150: ldur            x1, [fp, #-0x18]
    // 0x73b154: ldur            x3, [fp, #-8]
    // 0x73b158: mov             x5, x0
    // 0x73b15c: r2 = "Bitiş"
    //     0x73b15c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ab8] "Bitiş"
    //     0x73b160: ldr             x2, [x2, #0xab8]
    // 0x73b164: r0 = buildDatePickerRow()
    //     0x73b164: bl              #0x73bd30  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDatePickerRow
    // 0x73b168: ldur            x1, [fp, #-0x40]
    // 0x73b16c: ArrayStore: r1[6] = r0  ; List_4
    //     0x73b16c: add             x25, x1, #0x27
    //     0x73b170: str             w0, [x25]
    //     0x73b174: tbz             w0, #0, #0x73b190
    //     0x73b178: ldurb           w16, [x1, #-1]
    //     0x73b17c: ldurb           w17, [x0, #-1]
    //     0x73b180: and             x16, x17, x16, lsr #2
    //     0x73b184: tst             x16, HEAP, lsr #32
    //     0x73b188: b.eq            #0x73b190
    //     0x73b18c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73b190: ldur            x0, [fp, #-0x40]
    // 0x73b194: r16 = Instance_SizedBox
    //     0x73b194: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x73b198: ldr             x16, [x16, #0x220]
    // 0x73b19c: StoreField: r0->field_2b = r16
    //     0x73b19c: stur            w16, [x0, #0x2b]
    // 0x73b1a0: ldur            x4, [fp, #-0x28]
    // 0x73b1a4: LoadField: r1 = r4->field_1f
    //     0x73b1a4: ldur            w1, [x4, #0x1f]
    // 0x73b1a8: DecompressPointer r1
    //     0x73b1a8: add             x1, x1, HEAP, lsl #32
    // 0x73b1ac: r2 = "Not"
    //     0x73b1ac: add             x2, PP, #0x19, lsl #12  ; [pp+0x193d8] "Not"
    //     0x73b1b0: ldr             x2, [x2, #0x3d8]
    // 0x73b1b4: r3 = Instance_IconData
    //     0x73b1b4: add             x3, PP, #0x19, lsl #12  ; [pp+0x193e0] Obj!IconData@a0a721
    //     0x73b1b8: ldr             x3, [x3, #0x3e0]
    // 0x73b1bc: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x73b1bc: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x73b1c0: r0 = buildDialogTextField()
    //     0x73b1c0: bl              #0x6f4c3c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDialogTextField
    // 0x73b1c4: ldur            x1, [fp, #-0x40]
    // 0x73b1c8: ArrayStore: r1[8] = r0  ; List_4
    //     0x73b1c8: add             x25, x1, #0x2f
    //     0x73b1cc: str             w0, [x25]
    //     0x73b1d0: tbz             w0, #0, #0x73b1ec
    //     0x73b1d4: ldurb           w16, [x1, #-1]
    //     0x73b1d8: ldurb           w17, [x0, #-1]
    //     0x73b1dc: and             x16, x17, x16, lsr #2
    //     0x73b1e0: tst             x16, HEAP, lsr #32
    //     0x73b1e4: b.eq            #0x73b1ec
    //     0x73b1e8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73b1ec: ldur            x0, [fp, #-0x40]
    // 0x73b1f0: r16 = Instance_SizedBox
    //     0x73b1f0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x73b1f4: ldr             x16, [x16, #0x310]
    // 0x73b1f8: StoreField: r0->field_33 = r16
    //     0x73b1f8: stur            w16, [x0, #0x33]
    // 0x73b1fc: ldur            x3, [fp, #-0x28]
    // 0x73b200: LoadField: r4 = r3->field_f
    //     0x73b200: ldur            w4, [x3, #0xf]
    // 0x73b204: DecompressPointer r4
    //     0x73b204: add             x4, x4, HEAP, lsl #32
    // 0x73b208: stur            x4, [fp, #-0x48]
    // 0x73b20c: LoadField: r5 = r3->field_33
    //     0x73b20c: ldur            w5, [x3, #0x33]
    // 0x73b210: DecompressPointer r5
    //     0x73b210: add             x5, x5, HEAP, lsl #32
    // 0x73b214: stur            x5, [fp, #-0x18]
    // 0x73b218: LoadField: r6 = r3->field_2f
    //     0x73b218: ldur            w6, [x3, #0x2f]
    // 0x73b21c: DecompressPointer r6
    //     0x73b21c: add             x6, x6, HEAP, lsl #32
    // 0x73b220: ldur            x2, [fp, #-0x10]
    // 0x73b224: stur            x6, [fp, #-8]
    // 0x73b228: r1 = Function '<anonymous closure>':.
    //     0x73b228: add             x1, PP, #0x19, lsl #12  ; [pp+0x193e8] AnonymousClosure: (0x73cda4), in [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::showTripDialog (0x73aae4)
    //     0x73b22c: ldr             x1, [x1, #0x3e8]
    // 0x73b230: r0 = AllocateClosure()
    //     0x73b230: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73b234: ldur            x1, [fp, #-0x48]
    // 0x73b238: ldur            x2, [fp, #-0x18]
    // 0x73b23c: ldur            x3, [fp, #-8]
    // 0x73b240: mov             x5, x0
    // 0x73b244: r0 = _buildManagersSection()
    //     0x73b244: bl              #0x73b504  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::_buildManagersSection
    // 0x73b248: ldur            x1, [fp, #-0x40]
    // 0x73b24c: ArrayStore: r1[10] = r0  ; List_4
    //     0x73b24c: add             x25, x1, #0x37
    //     0x73b250: str             w0, [x25]
    //     0x73b254: tbz             w0, #0, #0x73b270
    //     0x73b258: ldurb           w16, [x1, #-1]
    //     0x73b25c: ldurb           w17, [x0, #-1]
    //     0x73b260: and             x16, x17, x16, lsr #2
    //     0x73b264: tst             x16, HEAP, lsr #32
    //     0x73b268: b.eq            #0x73b270
    //     0x73b26c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73b270: r1 = <Widget>
    //     0x73b270: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73b274: r0 = AllocateGrowableArray()
    //     0x73b274: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x73b278: mov             x1, x0
    // 0x73b27c: ldur            x0, [fp, #-0x40]
    // 0x73b280: stur            x1, [fp, #-8]
    // 0x73b284: StoreField: r1->field_f = r0
    //     0x73b284: stur            w0, [x1, #0xf]
    // 0x73b288: r0 = 22
    //     0x73b288: mov             x0, #0x16
    // 0x73b28c: StoreField: r1->field_b = r0
    //     0x73b28c: stur            w0, [x1, #0xb]
    // 0x73b290: r0 = Column()
    //     0x73b290: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x73b294: mov             x1, x0
    // 0x73b298: r0 = Instance_Axis
    //     0x73b298: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x73b29c: stur            x1, [fp, #-0x18]
    // 0x73b2a0: StoreField: r1->field_f = r0
    //     0x73b2a0: stur            w0, [x1, #0xf]
    // 0x73b2a4: r2 = Instance_MainAxisAlignment
    //     0x73b2a4: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x73b2a8: ldr             x2, [x2, #0x230]
    // 0x73b2ac: StoreField: r1->field_13 = r2
    //     0x73b2ac: stur            w2, [x1, #0x13]
    // 0x73b2b0: r2 = Instance_MainAxisSize
    //     0x73b2b0: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x73b2b4: ldr             x2, [x2, #0xb60]
    // 0x73b2b8: ArrayStore: r1[0] = r2  ; List_4
    //     0x73b2b8: stur            w2, [x1, #0x17]
    // 0x73b2bc: r2 = Instance_CrossAxisAlignment
    //     0x73b2bc: add             x2, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x73b2c0: ldr             x2, [x2, #0x338]
    // 0x73b2c4: StoreField: r1->field_1b = r2
    //     0x73b2c4: stur            w2, [x1, #0x1b]
    // 0x73b2c8: r2 = Instance_VerticalDirection
    //     0x73b2c8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x73b2cc: ldr             x2, [x2, #0x340]
    // 0x73b2d0: StoreField: r1->field_23 = r2
    //     0x73b2d0: stur            w2, [x1, #0x23]
    // 0x73b2d4: r2 = Instance_Clip
    //     0x73b2d4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x73b2d8: ldr             x2, [x2, #0x348]
    // 0x73b2dc: StoreField: r1->field_2b = r2
    //     0x73b2dc: stur            w2, [x1, #0x2b]
    // 0x73b2e0: StoreField: r1->field_2f = rZR
    //     0x73b2e0: stur            xzr, [x1, #0x2f]
    // 0x73b2e4: ldur            x2, [fp, #-8]
    // 0x73b2e8: StoreField: r1->field_b = r2
    //     0x73b2e8: stur            w2, [x1, #0xb]
    // 0x73b2ec: r0 = SingleChildScrollView()
    //     0x73b2ec: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x73b2f0: mov             x3, x0
    // 0x73b2f4: r0 = Instance_Axis
    //     0x73b2f4: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x73b2f8: stur            x3, [fp, #-8]
    // 0x73b2fc: StoreField: r3->field_b = r0
    //     0x73b2fc: stur            w0, [x3, #0xb]
    // 0x73b300: r0 = false
    //     0x73b300: add             x0, NULL, #0x30  ; false
    // 0x73b304: StoreField: r3->field_f = r0
    //     0x73b304: stur            w0, [x3, #0xf]
    // 0x73b308: ldur            x1, [fp, #-0x18]
    // 0x73b30c: StoreField: r3->field_23 = r1
    //     0x73b30c: stur            w1, [x3, #0x23]
    // 0x73b310: r1 = Instance_DragStartBehavior
    //     0x73b310: ldr             x1, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x73b314: StoreField: r3->field_27 = r1
    //     0x73b314: stur            w1, [x3, #0x27]
    // 0x73b318: r1 = Instance_Clip
    //     0x73b318: add             x1, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x73b31c: ldr             x1, [x1, #0x2d8]
    // 0x73b320: StoreField: r3->field_2b = r1
    //     0x73b320: stur            w1, [x3, #0x2b]
    // 0x73b324: r1 = Instance_HitTestBehavior
    //     0x73b324: add             x1, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x73b328: ldr             x1, [x1, #0xe20]
    // 0x73b32c: StoreField: r3->field_2f = r1
    //     0x73b32c: stur            w1, [x3, #0x2f]
    // 0x73b330: ldur            x2, [fp, #-0x10]
    // 0x73b334: r1 = Function '<anonymous closure>':.
    //     0x73b334: add             x1, PP, #0x19, lsl #12  ; [pp+0x193f0] AnonymousClosure: (0x6f5908), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog (0x6f64f4)
    //     0x73b338: ldr             x1, [x1, #0x3f0]
    // 0x73b33c: r0 = AllocateClosure()
    //     0x73b33c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73b340: stur            x0, [fp, #-0x18]
    // 0x73b344: r0 = TextButton()
    //     0x73b344: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x73b348: mov             x3, x0
    // 0x73b34c: ldur            x0, [fp, #-0x18]
    // 0x73b350: stur            x3, [fp, #-0x40]
    // 0x73b354: StoreField: r3->field_b = r0
    //     0x73b354: stur            w0, [x3, #0xb]
    // 0x73b358: r0 = false
    //     0x73b358: add             x0, NULL, #0x30  ; false
    // 0x73b35c: StoreField: r3->field_27 = r0
    //     0x73b35c: stur            w0, [x3, #0x27]
    // 0x73b360: r4 = true
    //     0x73b360: add             x4, NULL, #0x20  ; true
    // 0x73b364: StoreField: r3->field_2f = r4
    //     0x73b364: stur            w4, [x3, #0x2f]
    // 0x73b368: r1 = Instance_Text
    //     0x73b368: add             x1, PP, #0x19, lsl #12  ; [pp+0x19198] Obj!Text@a1ba91
    //     0x73b36c: ldr             x1, [x1, #0x198]
    // 0x73b370: StoreField: r3->field_37 = r1
    //     0x73b370: stur            w1, [x3, #0x37]
    // 0x73b374: ldur            x5, [fp, #-0x28]
    // 0x73b378: LoadField: r1 = r5->field_37
    //     0x73b378: ldur            w1, [x5, #0x37]
    // 0x73b37c: DecompressPointer r1
    //     0x73b37c: add             x1, x1, HEAP, lsl #32
    // 0x73b380: tbnz            w1, #4, #0x73b390
    // 0x73b384: mov             x0, x5
    // 0x73b388: r1 = Null
    //     0x73b388: mov             x1, NULL
    // 0x73b38c: b               #0x73b3a8
    // 0x73b390: ldur            x2, [fp, #-0x10]
    // 0x73b394: r1 = Function '<anonymous closure>':.
    //     0x73b394: add             x1, PP, #0x19, lsl #12  ; [pp+0x193f8] AnonymousClosure: (0x73c284), in [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::showTripDialog (0x73aae4)
    //     0x73b398: ldr             x1, [x1, #0x3f8]
    // 0x73b39c: r0 = AllocateClosure()
    //     0x73b39c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73b3a0: mov             x1, x0
    // 0x73b3a4: ldur            x0, [fp, #-0x28]
    // 0x73b3a8: stur            x1, [fp, #-0x10]
    // 0x73b3ac: r16 = Instance_Color
    //     0x73b3ac: add             x16, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x73b3b0: ldr             x16, [x16, #0xf30]
    // 0x73b3b4: r30 = Instance_Color
    //     0x73b3b4: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73b3b8: stp             lr, x16, [SP]
    // 0x73b3bc: r4 = const [0, 0x2, 0x2, 0, backgroundColor, 0, foregroundColor, 0x1, null]
    //     0x73b3bc: add             x4, PP, #0x19, lsl #12  ; [pp+0x191a8] List(9) [0, 0x2, 0x2, 0, "backgroundColor", 0, "foregroundColor", 0x1, Null]
    //     0x73b3c0: ldr             x4, [x4, #0x1a8]
    // 0x73b3c4: r0 = styleFrom()
    //     0x73b3c4: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x73b3c8: mov             x1, x0
    // 0x73b3cc: ldur            x0, [fp, #-0x28]
    // 0x73b3d0: stur            x1, [fp, #-0x48]
    // 0x73b3d4: LoadField: r2 = r0->field_37
    //     0x73b3d4: ldur            w2, [x0, #0x37]
    // 0x73b3d8: DecompressPointer r2
    //     0x73b3d8: add             x2, x2, HEAP, lsl #32
    // 0x73b3dc: tbnz            w2, #4, #0x73b3f0
    // 0x73b3e0: mov             x0, x1
    // 0x73b3e4: r6 = Instance_SizedBox
    //     0x73b3e4: add             x6, PP, #0x19, lsl #12  ; [pp+0x191b0] Obj!SizedBox@a1fa51
    //     0x73b3e8: ldr             x6, [x6, #0x1b0]
    // 0x73b3ec: b               #0x73b428
    // 0x73b3f0: ldur            x0, [fp, #-0x20]
    // 0x73b3f4: tbnz            w0, #4, #0x73b404
    // 0x73b3f8: r0 = "Güncelle"
    //     0x73b3f8: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b48] "Güncelle"
    //     0x73b3fc: ldr             x0, [x0, #0xb48]
    // 0x73b400: b               #0x73b40c
    // 0x73b404: r0 = "Ekle"
    //     0x73b404: add             x0, PP, #0x19, lsl #12  ; [pp+0x191b8] "Ekle"
    //     0x73b408: ldr             x0, [x0, #0x1b8]
    // 0x73b40c: stur            x0, [fp, #-0x18]
    // 0x73b410: r0 = Text()
    //     0x73b410: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x73b414: mov             x1, x0
    // 0x73b418: ldur            x0, [fp, #-0x18]
    // 0x73b41c: StoreField: r1->field_b = r0
    //     0x73b41c: stur            w0, [x1, #0xb]
    // 0x73b420: mov             x6, x1
    // 0x73b424: ldur            x0, [fp, #-0x48]
    // 0x73b428: ldur            x5, [fp, #-0x30]
    // 0x73b42c: ldur            x4, [fp, #-0x38]
    // 0x73b430: ldur            x3, [fp, #-8]
    // 0x73b434: ldur            x2, [fp, #-0x40]
    // 0x73b438: ldur            x1, [fp, #-0x10]
    // 0x73b43c: stur            x6, [fp, #-0x18]
    // 0x73b440: r0 = ElevatedButton()
    //     0x73b440: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x73b444: mov             x3, x0
    // 0x73b448: ldur            x0, [fp, #-0x10]
    // 0x73b44c: stur            x3, [fp, #-0x20]
    // 0x73b450: StoreField: r3->field_b = r0
    //     0x73b450: stur            w0, [x3, #0xb]
    // 0x73b454: ldur            x0, [fp, #-0x48]
    // 0x73b458: StoreField: r3->field_1b = r0
    //     0x73b458: stur            w0, [x3, #0x1b]
    // 0x73b45c: r0 = false
    //     0x73b45c: add             x0, NULL, #0x30  ; false
    // 0x73b460: StoreField: r3->field_27 = r0
    //     0x73b460: stur            w0, [x3, #0x27]
    // 0x73b464: r1 = true
    //     0x73b464: add             x1, NULL, #0x20  ; true
    // 0x73b468: StoreField: r3->field_2f = r1
    //     0x73b468: stur            w1, [x3, #0x2f]
    // 0x73b46c: ldur            x1, [fp, #-0x18]
    // 0x73b470: StoreField: r3->field_37 = r1
    //     0x73b470: stur            w1, [x3, #0x37]
    // 0x73b474: r1 = Null
    //     0x73b474: mov             x1, NULL
    // 0x73b478: r2 = 4
    //     0x73b478: mov             x2, #4
    // 0x73b47c: r0 = AllocateArray()
    //     0x73b47c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73b480: mov             x2, x0
    // 0x73b484: ldur            x0, [fp, #-0x40]
    // 0x73b488: stur            x2, [fp, #-0x10]
    // 0x73b48c: StoreField: r2->field_f = r0
    //     0x73b48c: stur            w0, [x2, #0xf]
    // 0x73b490: ldur            x0, [fp, #-0x20]
    // 0x73b494: StoreField: r2->field_13 = r0
    //     0x73b494: stur            w0, [x2, #0x13]
    // 0x73b498: r1 = <Widget>
    //     0x73b498: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73b49c: r0 = AllocateGrowableArray()
    //     0x73b49c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x73b4a0: mov             x1, x0
    // 0x73b4a4: ldur            x0, [fp, #-0x10]
    // 0x73b4a8: stur            x1, [fp, #-0x18]
    // 0x73b4ac: StoreField: r1->field_f = r0
    //     0x73b4ac: stur            w0, [x1, #0xf]
    // 0x73b4b0: r0 = 4
    //     0x73b4b0: mov             x0, #4
    // 0x73b4b4: StoreField: r1->field_b = r0
    //     0x73b4b4: stur            w0, [x1, #0xb]
    // 0x73b4b8: r0 = AlertDialog()
    //     0x73b4b8: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x73b4bc: ldur            x1, [fp, #-0x38]
    // 0x73b4c0: StoreField: r0->field_f = r1
    //     0x73b4c0: stur            w1, [x0, #0xf]
    // 0x73b4c4: ldur            x1, [fp, #-8]
    // 0x73b4c8: StoreField: r0->field_1b = r1
    //     0x73b4c8: stur            w1, [x0, #0x1b]
    // 0x73b4cc: ldur            x1, [fp, #-0x18]
    // 0x73b4d0: StoreField: r0->field_27 = r1
    //     0x73b4d0: stur            w1, [x0, #0x27]
    // 0x73b4d4: r1 = Instance_Color
    //     0x73b4d4: add             x1, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x73b4d8: ldr             x1, [x1, #0x1c0]
    // 0x73b4dc: StoreField: r0->field_43 = r1
    //     0x73b4dc: stur            w1, [x0, #0x43]
    // 0x73b4e0: ldur            x1, [fp, #-0x30]
    // 0x73b4e4: StoreField: r0->field_5f = r1
    //     0x73b4e4: stur            w1, [x0, #0x5f]
    // 0x73b4e8: r1 = false
    //     0x73b4e8: add             x1, NULL, #0x30  ; false
    // 0x73b4ec: StoreField: r0->field_6b = r1
    //     0x73b4ec: stur            w1, [x0, #0x6b]
    // 0x73b4f0: LeaveFrame
    //     0x73b4f0: mov             SP, fp
    //     0x73b4f4: ldp             fp, lr, [SP], #0x10
    // 0x73b4f8: ret
    //     0x73b4f8: ret             
    // 0x73b4fc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73b4fc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73b500: b               #0x73aec4
  }
  _ _buildManagersSection(/* No info */) {
    // ** addr: 0x73b504, size: 0x460
    // 0x73b504: EnterFrame
    //     0x73b504: stp             fp, lr, [SP, #-0x10]!
    //     0x73b508: mov             fp, SP
    // 0x73b50c: AllocStack(0x50)
    //     0x73b50c: sub             SP, SP, #0x50
    // 0x73b510: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */, dynamic _ /* r3 => r3, fp-0x10 */, dynamic _ /* r5 => r5, fp-0x18 */)
    //     0x73b510: stur            x2, [fp, #-8]
    //     0x73b514: stur            x3, [fp, #-0x10]
    //     0x73b518: stur            x5, [fp, #-0x18]
    // 0x73b51c: CheckStackOverflow
    //     0x73b51c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73b520: cmp             SP, x16
    //     0x73b524: b.ls            #0x73b95c
    // 0x73b528: r1 = 2
    //     0x73b528: mov             x1, #2
    // 0x73b52c: r0 = AllocateContext()
    //     0x73b52c: bl              #0x927010  ; AllocateContextStub
    // 0x73b530: mov             x2, x0
    // 0x73b534: ldur            x0, [fp, #-0x10]
    // 0x73b538: stur            x2, [fp, #-0x20]
    // 0x73b53c: StoreField: r2->field_f = r0
    //     0x73b53c: stur            w0, [x2, #0xf]
    // 0x73b540: ldur            x0, [fp, #-0x18]
    // 0x73b544: StoreField: r2->field_13 = r0
    //     0x73b544: stur            w0, [x2, #0x13]
    // 0x73b548: r16 = 0.200000
    //     0x73b548: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x73b54c: ldr             x16, [x16, #0x1f0]
    // 0x73b550: str             x16, [SP]
    // 0x73b554: r1 = Instance_Color
    //     0x73b554: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73b558: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x73b558: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x73b55c: ldr             x4, [x4, #0x198]
    // 0x73b560: r0 = withValues()
    //     0x73b560: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x73b564: str             x0, [SP]
    // 0x73b568: r1 = Null
    //     0x73b568: mov             x1, NULL
    // 0x73b56c: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x73b56c: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x73b570: ldr             x4, [x4, #0x788]
    // 0x73b574: r0 = Border.all()
    //     0x73b574: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x73b578: stur            x0, [fp, #-0x10]
    // 0x73b57c: r0 = Radius()
    //     0x73b57c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x73b580: d0 = 8.000000
    //     0x73b580: fmov            d0, #8.00000000
    // 0x73b584: stur            x0, [fp, #-0x18]
    // 0x73b588: StoreField: r0->field_7 = d0
    //     0x73b588: stur            d0, [x0, #7]
    // 0x73b58c: StoreField: r0->field_f = d0
    //     0x73b58c: stur            d0, [x0, #0xf]
    // 0x73b590: r0 = BorderRadius()
    //     0x73b590: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x73b594: mov             x1, x0
    // 0x73b598: ldur            x0, [fp, #-0x18]
    // 0x73b59c: stur            x1, [fp, #-0x28]
    // 0x73b5a0: StoreField: r1->field_7 = r0
    //     0x73b5a0: stur            w0, [x1, #7]
    // 0x73b5a4: StoreField: r1->field_b = r0
    //     0x73b5a4: stur            w0, [x1, #0xb]
    // 0x73b5a8: StoreField: r1->field_f = r0
    //     0x73b5a8: stur            w0, [x1, #0xf]
    // 0x73b5ac: StoreField: r1->field_13 = r0
    //     0x73b5ac: stur            w0, [x1, #0x13]
    // 0x73b5b0: r0 = BoxDecoration()
    //     0x73b5b0: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x73b5b4: mov             x1, x0
    // 0x73b5b8: ldur            x0, [fp, #-0x10]
    // 0x73b5bc: stur            x1, [fp, #-0x18]
    // 0x73b5c0: StoreField: r1->field_f = r0
    //     0x73b5c0: stur            w0, [x1, #0xf]
    // 0x73b5c4: ldur            x0, [fp, #-0x28]
    // 0x73b5c8: StoreField: r1->field_13 = r0
    //     0x73b5c8: stur            w0, [x1, #0x13]
    // 0x73b5cc: r0 = Instance_BoxShape
    //     0x73b5cc: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x73b5d0: ldr             x0, [x0, #0x1c8]
    // 0x73b5d4: StoreField: r1->field_23 = r0
    //     0x73b5d4: stur            w0, [x1, #0x23]
    // 0x73b5d8: ldur            x2, [fp, #-0x20]
    // 0x73b5dc: LoadField: r0 = r2->field_f
    //     0x73b5dc: ldur            w0, [x2, #0xf]
    // 0x73b5e0: DecompressPointer r0
    //     0x73b5e0: add             x0, x0, HEAP, lsl #32
    // 0x73b5e4: r3 = LoadClassIdInstr(r0)
    //     0x73b5e4: ldur            x3, [x0, #-1]
    //     0x73b5e8: ubfx            x3, x3, #0xc, #0x14
    // 0x73b5ec: str             x0, [SP]
    // 0x73b5f0: mov             x0, x3
    // 0x73b5f4: r0 = GDT[cid_x0 + 0x879f]()
    //     0x73b5f4: mov             x17, #0x879f
    //     0x73b5f8: add             lr, x0, x17
    //     0x73b5fc: ldr             lr, [x21, lr, lsl #3]
    //     0x73b600: blr             lr
    // 0x73b604: r1 = Null
    //     0x73b604: mov             x1, NULL
    // 0x73b608: r2 = 4
    //     0x73b608: mov             x2, #4
    // 0x73b60c: stur            x0, [fp, #-0x10]
    // 0x73b610: r0 = AllocateArray()
    //     0x73b610: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73b614: mov             x1, x0
    // 0x73b618: ldur            x0, [fp, #-0x10]
    // 0x73b61c: StoreField: r1->field_f = r0
    //     0x73b61c: stur            w0, [x1, #0xf]
    // 0x73b620: r16 = " seçili"
    //     0x73b620: add             x16, PP, #0x13, lsl #12  ; [pp+0x13ad8] " seçili"
    //     0x73b624: ldr             x16, [x16, #0xad8]
    // 0x73b628: StoreField: r1->field_13 = r16
    //     0x73b628: stur            w16, [x1, #0x13]
    // 0x73b62c: str             x1, [SP]
    // 0x73b630: r0 = _interpolate()
    //     0x73b630: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x73b634: stur            x0, [fp, #-0x10]
    // 0x73b638: r0 = Text()
    //     0x73b638: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x73b63c: mov             x3, x0
    // 0x73b640: ldur            x0, [fp, #-0x10]
    // 0x73b644: stur            x3, [fp, #-0x28]
    // 0x73b648: StoreField: r3->field_b = r0
    //     0x73b648: stur            w0, [x3, #0xb]
    // 0x73b64c: r0 = Instance_TextStyle
    //     0x73b64c: add             x0, PP, #0x19, lsl #12  ; [pp+0x19430] Obj!TextStyle@a184e1
    //     0x73b650: ldr             x0, [x0, #0x430]
    // 0x73b654: StoreField: r3->field_13 = r0
    //     0x73b654: stur            w0, [x3, #0x13]
    // 0x73b658: r1 = Null
    //     0x73b658: mov             x1, NULL
    // 0x73b65c: r2 = 10
    //     0x73b65c: mov             x2, #0xa
    // 0x73b660: r0 = AllocateArray()
    //     0x73b660: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73b664: stur            x0, [fp, #-0x10]
    // 0x73b668: r16 = Instance_Icon
    //     0x73b668: add             x16, PP, #0x13, lsl #12  ; [pp+0x13ae8] Obj!Icon@a1e371
    //     0x73b66c: ldr             x16, [x16, #0xae8]
    // 0x73b670: StoreField: r0->field_f = r16
    //     0x73b670: stur            w16, [x0, #0xf]
    // 0x73b674: r16 = Instance_SizedBox
    //     0x73b674: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x73b678: ldr             x16, [x16, #0x368]
    // 0x73b67c: StoreField: r0->field_13 = r16
    //     0x73b67c: stur            w16, [x0, #0x13]
    // 0x73b680: r16 = Instance_Text
    //     0x73b680: add             x16, PP, #0x19, lsl #12  ; [pp+0x19438] Obj!Text@a1cee1
    //     0x73b684: ldr             x16, [x16, #0x438]
    // 0x73b688: ArrayStore: r0[0] = r16  ; List_4
    //     0x73b688: stur            w16, [x0, #0x17]
    // 0x73b68c: r16 = Instance_Spacer
    //     0x73b68c: add             x16, PP, #0x13, lsl #12  ; [pp+0x13af8] Obj!Spacer@a1de91
    //     0x73b690: ldr             x16, [x16, #0xaf8]
    // 0x73b694: StoreField: r0->field_1b = r16
    //     0x73b694: stur            w16, [x0, #0x1b]
    // 0x73b698: ldur            x1, [fp, #-0x28]
    // 0x73b69c: StoreField: r0->field_1f = r1
    //     0x73b69c: stur            w1, [x0, #0x1f]
    // 0x73b6a0: r1 = <Widget>
    //     0x73b6a0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73b6a4: r0 = AllocateGrowableArray()
    //     0x73b6a4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x73b6a8: mov             x1, x0
    // 0x73b6ac: ldur            x0, [fp, #-0x10]
    // 0x73b6b0: stur            x1, [fp, #-0x28]
    // 0x73b6b4: StoreField: r1->field_f = r0
    //     0x73b6b4: stur            w0, [x1, #0xf]
    // 0x73b6b8: r0 = 10
    //     0x73b6b8: mov             x0, #0xa
    // 0x73b6bc: StoreField: r1->field_b = r0
    //     0x73b6bc: stur            w0, [x1, #0xb]
    // 0x73b6c0: r0 = Row()
    //     0x73b6c0: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x73b6c4: mov             x3, x0
    // 0x73b6c8: r0 = Instance_Axis
    //     0x73b6c8: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x73b6cc: stur            x3, [fp, #-0x10]
    // 0x73b6d0: StoreField: r3->field_f = r0
    //     0x73b6d0: stur            w0, [x3, #0xf]
    // 0x73b6d4: r4 = Instance_MainAxisAlignment
    //     0x73b6d4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x73b6d8: ldr             x4, [x4, #0x230]
    // 0x73b6dc: StoreField: r3->field_13 = r4
    //     0x73b6dc: stur            w4, [x3, #0x13]
    // 0x73b6e0: r5 = Instance_MainAxisSize
    //     0x73b6e0: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x73b6e4: ldr             x5, [x5, #0x330]
    // 0x73b6e8: ArrayStore: r3[0] = r5  ; List_4
    //     0x73b6e8: stur            w5, [x3, #0x17]
    // 0x73b6ec: r1 = Instance_CrossAxisAlignment
    //     0x73b6ec: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x73b6f0: ldr             x1, [x1, #0x338]
    // 0x73b6f4: StoreField: r3->field_1b = r1
    //     0x73b6f4: stur            w1, [x3, #0x1b]
    // 0x73b6f8: r6 = Instance_VerticalDirection
    //     0x73b6f8: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x73b6fc: ldr             x6, [x6, #0x340]
    // 0x73b700: StoreField: r3->field_23 = r6
    //     0x73b700: stur            w6, [x3, #0x23]
    // 0x73b704: r7 = Instance_Clip
    //     0x73b704: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x73b708: ldr             x7, [x7, #0x348]
    // 0x73b70c: StoreField: r3->field_2b = r7
    //     0x73b70c: stur            w7, [x3, #0x2b]
    // 0x73b710: StoreField: r3->field_2f = rZR
    //     0x73b710: stur            xzr, [x3, #0x2f]
    // 0x73b714: ldur            x1, [fp, #-0x28]
    // 0x73b718: StoreField: r3->field_b = r1
    //     0x73b718: stur            w1, [x3, #0xb]
    // 0x73b71c: r1 = Null
    //     0x73b71c: mov             x1, NULL
    // 0x73b720: r2 = 4
    //     0x73b720: mov             x2, #4
    // 0x73b724: r0 = AllocateArray()
    //     0x73b724: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73b728: mov             x2, x0
    // 0x73b72c: ldur            x0, [fp, #-0x10]
    // 0x73b730: stur            x2, [fp, #-0x28]
    // 0x73b734: StoreField: r2->field_f = r0
    //     0x73b734: stur            w0, [x2, #0xf]
    // 0x73b738: r16 = Instance_SizedBox
    //     0x73b738: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x73b73c: ldr             x16, [x16, #0x318]
    // 0x73b740: StoreField: r2->field_13 = r16
    //     0x73b740: stur            w16, [x2, #0x13]
    // 0x73b744: r1 = <Widget>
    //     0x73b744: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73b748: r0 = AllocateGrowableArray()
    //     0x73b748: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x73b74c: mov             x2, x0
    // 0x73b750: ldur            x0, [fp, #-0x28]
    // 0x73b754: stur            x2, [fp, #-0x10]
    // 0x73b758: StoreField: r2->field_f = r0
    //     0x73b758: stur            w0, [x2, #0xf]
    // 0x73b75c: r0 = 4
    //     0x73b75c: mov             x0, #4
    // 0x73b760: StoreField: r2->field_b = r0
    //     0x73b760: stur            w0, [x2, #0xb]
    // 0x73b764: ldur            x0, [fp, #-8]
    // 0x73b768: LoadField: r1 = r0->field_b
    //     0x73b768: ldur            w1, [x0, #0xb]
    // 0x73b76c: cbnz            w1, #0x73b7a0
    // 0x73b770: mov             x1, x2
    // 0x73b774: r0 = _growToNextCapacity()
    //     0x73b774: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x73b778: ldur            x3, [fp, #-0x10]
    // 0x73b77c: r0 = 6
    //     0x73b77c: mov             x0, #6
    // 0x73b780: StoreField: r3->field_b = r0
    //     0x73b780: stur            w0, [x3, #0xb]
    // 0x73b784: LoadField: r0 = r3->field_f
    //     0x73b784: ldur            w0, [x3, #0xf]
    // 0x73b788: DecompressPointer r0
    //     0x73b788: add             x0, x0, HEAP, lsl #32
    // 0x73b78c: r16 = Instance_Padding
    //     0x73b78c: add             x16, PP, #0x19, lsl #12  ; [pp+0x19440] Obj!Padding@a1ff31
    //     0x73b790: ldr             x16, [x16, #0x440]
    // 0x73b794: ArrayStore: r0[0] = r16  ; List_4
    //     0x73b794: stur            w16, [x0, #0x17]
    // 0x73b798: mov             x2, x3
    // 0x73b79c: b               #0x73b8b8
    // 0x73b7a0: mov             x3, x2
    // 0x73b7a4: ldur            x2, [fp, #-0x20]
    // 0x73b7a8: r1 = Function '<anonymous closure>':.
    //     0x73b7a8: add             x1, PP, #0x19, lsl #12  ; [pp+0x19448] AnonymousClosure: (0x73b964), in [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::_buildManagersSection (0x73b504)
    //     0x73b7ac: ldr             x1, [x1, #0x448]
    // 0x73b7b0: r0 = AllocateClosure()
    //     0x73b7b0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73b7b4: r16 = <FilterChip>
    //     0x73b7b4: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b18] TypeArguments: <FilterChip>
    //     0x73b7b8: ldr             x16, [x16, #0xb18]
    // 0x73b7bc: ldur            lr, [fp, #-8]
    // 0x73b7c0: stp             lr, x16, [SP, #8]
    // 0x73b7c4: str             x0, [SP]
    // 0x73b7c8: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x73b7c8: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x73b7cc: r0 = map()
    //     0x73b7cc: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x73b7d0: LoadField: r1 = r0->field_7
    //     0x73b7d0: ldur            w1, [x0, #7]
    // 0x73b7d4: DecompressPointer r1
    //     0x73b7d4: add             x1, x1, HEAP, lsl #32
    // 0x73b7d8: mov             x2, x0
    // 0x73b7dc: r0 = _GrowableList.of()
    //     0x73b7dc: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x73b7e0: stur            x0, [fp, #-8]
    // 0x73b7e4: r0 = Wrap()
    //     0x73b7e4: bl              #0x69a5b8  ; AllocateWrapStub -> Wrap (size=0x3c)
    // 0x73b7e8: mov             x2, x0
    // 0x73b7ec: r0 = Instance_Axis
    //     0x73b7ec: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x73b7f0: stur            x2, [fp, #-0x20]
    // 0x73b7f4: StoreField: r2->field_f = r0
    //     0x73b7f4: stur            w0, [x2, #0xf]
    // 0x73b7f8: r0 = Instance_WrapAlignment
    //     0x73b7f8: add             x0, PP, #0x12, lsl #12  ; [pp+0x127d8] Obj!WrapAlignment@a2a271
    //     0x73b7fc: ldr             x0, [x0, #0x7d8]
    // 0x73b800: StoreField: r2->field_13 = r0
    //     0x73b800: stur            w0, [x2, #0x13]
    // 0x73b804: d0 = 8.000000
    //     0x73b804: fmov            d0, #8.00000000
    // 0x73b808: ArrayStore: r2[0] = d0  ; List_8
    //     0x73b808: stur            d0, [x2, #0x17]
    // 0x73b80c: StoreField: r2->field_1f = r0
    //     0x73b80c: stur            w0, [x2, #0x1f]
    // 0x73b810: StoreField: r2->field_23 = d0
    //     0x73b810: stur            d0, [x2, #0x23]
    // 0x73b814: r0 = Instance_WrapCrossAlignment
    //     0x73b814: add             x0, PP, #0x12, lsl #12  ; [pp+0x127e0] Obj!WrapCrossAlignment@a2a1b1
    //     0x73b818: ldr             x0, [x0, #0x7e0]
    // 0x73b81c: StoreField: r2->field_2b = r0
    //     0x73b81c: stur            w0, [x2, #0x2b]
    // 0x73b820: r0 = Instance_VerticalDirection
    //     0x73b820: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x73b824: ldr             x0, [x0, #0x340]
    // 0x73b828: StoreField: r2->field_33 = r0
    //     0x73b828: stur            w0, [x2, #0x33]
    // 0x73b82c: r3 = Instance_Clip
    //     0x73b82c: add             x3, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x73b830: ldr             x3, [x3, #0x348]
    // 0x73b834: StoreField: r2->field_37 = r3
    //     0x73b834: stur            w3, [x2, #0x37]
    // 0x73b838: ldur            x1, [fp, #-8]
    // 0x73b83c: StoreField: r2->field_b = r1
    //     0x73b83c: stur            w1, [x2, #0xb]
    // 0x73b840: ldur            x4, [fp, #-0x10]
    // 0x73b844: LoadField: r1 = r4->field_b
    //     0x73b844: ldur            w1, [x4, #0xb]
    // 0x73b848: LoadField: r5 = r4->field_f
    //     0x73b848: ldur            w5, [x4, #0xf]
    // 0x73b84c: DecompressPointer r5
    //     0x73b84c: add             x5, x5, HEAP, lsl #32
    // 0x73b850: LoadField: r6 = r5->field_b
    //     0x73b850: ldur            w6, [x5, #0xb]
    // 0x73b854: r5 = LoadInt32Instr(r1)
    //     0x73b854: sbfx            x5, x1, #1, #0x1f
    // 0x73b858: stur            x5, [fp, #-0x30]
    // 0x73b85c: r1 = LoadInt32Instr(r6)
    //     0x73b85c: sbfx            x1, x6, #1, #0x1f
    // 0x73b860: cmp             x5, x1
    // 0x73b864: b.ne            #0x73b870
    // 0x73b868: mov             x1, x4
    // 0x73b86c: r0 = _growToNextCapacity()
    //     0x73b86c: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x73b870: ldur            x2, [fp, #-0x10]
    // 0x73b874: ldur            x3, [fp, #-0x30]
    // 0x73b878: add             x0, x3, #1
    // 0x73b87c: lsl             x1, x0, #1
    // 0x73b880: StoreField: r2->field_b = r1
    //     0x73b880: stur            w1, [x2, #0xb]
    // 0x73b884: LoadField: r1 = r2->field_f
    //     0x73b884: ldur            w1, [x2, #0xf]
    // 0x73b888: DecompressPointer r1
    //     0x73b888: add             x1, x1, HEAP, lsl #32
    // 0x73b88c: ldur            x0, [fp, #-0x20]
    // 0x73b890: ArrayStore: r1[r3] = r0  ; List_4
    //     0x73b890: add             x25, x1, x3, lsl #2
    //     0x73b894: add             x25, x25, #0xf
    //     0x73b898: str             w0, [x25]
    //     0x73b89c: tbz             w0, #0, #0x73b8b8
    //     0x73b8a0: ldurb           w16, [x1, #-1]
    //     0x73b8a4: ldurb           w17, [x0, #-1]
    //     0x73b8a8: and             x16, x17, x16, lsr #2
    //     0x73b8ac: tst             x16, HEAP, lsr #32
    //     0x73b8b0: b.eq            #0x73b8b8
    //     0x73b8b4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73b8b8: r0 = Column()
    //     0x73b8b8: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x73b8bc: mov             x1, x0
    // 0x73b8c0: r0 = Instance_Axis
    //     0x73b8c0: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x73b8c4: stur            x1, [fp, #-8]
    // 0x73b8c8: StoreField: r1->field_f = r0
    //     0x73b8c8: stur            w0, [x1, #0xf]
    // 0x73b8cc: r0 = Instance_MainAxisAlignment
    //     0x73b8cc: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x73b8d0: ldr             x0, [x0, #0x230]
    // 0x73b8d4: StoreField: r1->field_13 = r0
    //     0x73b8d4: stur            w0, [x1, #0x13]
    // 0x73b8d8: r0 = Instance_MainAxisSize
    //     0x73b8d8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x73b8dc: ldr             x0, [x0, #0x330]
    // 0x73b8e0: ArrayStore: r1[0] = r0  ; List_4
    //     0x73b8e0: stur            w0, [x1, #0x17]
    // 0x73b8e4: r0 = Instance_CrossAxisAlignment
    //     0x73b8e4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x73b8e8: ldr             x0, [x0, #0x238]
    // 0x73b8ec: StoreField: r1->field_1b = r0
    //     0x73b8ec: stur            w0, [x1, #0x1b]
    // 0x73b8f0: r0 = Instance_VerticalDirection
    //     0x73b8f0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x73b8f4: ldr             x0, [x0, #0x340]
    // 0x73b8f8: StoreField: r1->field_23 = r0
    //     0x73b8f8: stur            w0, [x1, #0x23]
    // 0x73b8fc: r0 = Instance_Clip
    //     0x73b8fc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x73b900: ldr             x0, [x0, #0x348]
    // 0x73b904: StoreField: r1->field_2b = r0
    //     0x73b904: stur            w0, [x1, #0x2b]
    // 0x73b908: StoreField: r1->field_2f = rZR
    //     0x73b908: stur            xzr, [x1, #0x2f]
    // 0x73b90c: ldur            x0, [fp, #-0x10]
    // 0x73b910: StoreField: r1->field_b = r0
    //     0x73b910: stur            w0, [x1, #0xb]
    // 0x73b914: r0 = Container()
    //     0x73b914: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x73b918: stur            x0, [fp, #-0x10]
    // 0x73b91c: r16 = inf
    //     0x73b91c: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x73b920: ldr             x16, [x16, #0xb20]
    // 0x73b924: r30 = Instance_EdgeInsets
    //     0x73b924: add             lr, PP, #0x12, lsl #12  ; [pp+0x12370] Obj!EdgeInsets@a0bff1
    //     0x73b928: ldr             lr, [lr, #0x370]
    // 0x73b92c: stp             lr, x16, [SP, #0x10]
    // 0x73b930: ldur            x16, [fp, #-0x18]
    // 0x73b934: ldur            lr, [fp, #-8]
    // 0x73b938: stp             lr, x16, [SP]
    // 0x73b93c: mov             x1, x0
    // 0x73b940: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, padding, 0x2, width, 0x1, null]
    //     0x73b940: add             x4, PP, #0x13, lsl #12  ; [pp+0x13b28] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "padding", 0x2, "width", 0x1, Null]
    //     0x73b944: ldr             x4, [x4, #0xb28]
    // 0x73b948: r0 = Container()
    //     0x73b948: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x73b94c: ldur            x0, [fp, #-0x10]
    // 0x73b950: LeaveFrame
    //     0x73b950: mov             SP, fp
    //     0x73b954: ldp             fp, lr, [SP], #0x10
    // 0x73b958: ret
    //     0x73b958: ret             
    // 0x73b95c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73b95c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73b960: b               #0x73b528
  }
  [closure] FilterChip <anonymous closure>(dynamic, UserModel) {
    // ** addr: 0x73b964, size: 0x288
    // 0x73b964: EnterFrame
    //     0x73b964: stp             fp, lr, [SP, #-0x10]!
    //     0x73b968: mov             fp, SP
    // 0x73b96c: AllocStack(0x48)
    //     0x73b96c: sub             SP, SP, #0x48
    // 0x73b970: SetupParameters([dynamic _ /* r0 */])
    //     0x73b970: ldr             x0, [fp, #0x18]
    //     0x73b974: ldur            w1, [x0, #0x17]
    //     0x73b978: add             x1, x1, HEAP, lsl #32
    //     0x73b97c: stur            x1, [fp, #-8]
    // 0x73b980: CheckStackOverflow
    //     0x73b980: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73b984: cmp             SP, x16
    //     0x73b988: b.ls            #0x73bbd8
    // 0x73b98c: r1 = 1
    //     0x73b98c: mov             x1, #1
    // 0x73b990: r0 = AllocateContext()
    //     0x73b990: bl              #0x927010  ; AllocateContextStub
    // 0x73b994: mov             x3, x0
    // 0x73b998: ldur            x0, [fp, #-8]
    // 0x73b99c: stur            x3, [fp, #-0x10]
    // 0x73b9a0: StoreField: r3->field_b = r0
    //     0x73b9a0: stur            w0, [x3, #0xb]
    // 0x73b9a4: ldr             x4, [fp, #0x10]
    // 0x73b9a8: StoreField: r3->field_f = r4
    //     0x73b9a8: stur            w4, [x3, #0xf]
    // 0x73b9ac: LoadField: r1 = r0->field_f
    //     0x73b9ac: ldur            w1, [x0, #0xf]
    // 0x73b9b0: DecompressPointer r1
    //     0x73b9b0: add             x1, x1, HEAP, lsl #32
    // 0x73b9b4: LoadField: r2 = r4->field_7
    //     0x73b9b4: ldur            w2, [x4, #7]
    // 0x73b9b8: DecompressPointer r2
    //     0x73b9b8: add             x2, x2, HEAP, lsl #32
    // 0x73b9bc: r0 = LoadClassIdInstr(r1)
    //     0x73b9bc: ldur            x0, [x1, #-1]
    //     0x73b9c0: ubfx            x0, x0, #0xc, #0x14
    // 0x73b9c4: r0 = GDT[cid_x0 + 0xd089]()
    //     0x73b9c4: mov             x17, #0xd089
    //     0x73b9c8: add             lr, x0, x17
    //     0x73b9cc: ldr             lr, [x21, lr, lsl #3]
    //     0x73b9d0: blr             lr
    // 0x73b9d4: mov             x1, x0
    // 0x73b9d8: ldr             x0, [fp, #0x10]
    // 0x73b9dc: stur            x1, [fp, #-0x30]
    // 0x73b9e0: LoadField: r2 = r0->field_b
    //     0x73b9e0: ldur            w2, [x0, #0xb]
    // 0x73b9e4: DecompressPointer r2
    //     0x73b9e4: add             x2, x2, HEAP, lsl #32
    // 0x73b9e8: stur            x2, [fp, #-0x28]
    // 0x73b9ec: LoadField: r0 = r2->field_7
    //     0x73b9ec: ldur            w0, [x2, #7]
    // 0x73b9f0: stur            x0, [fp, #-0x20]
    // 0x73b9f4: cbnz            w0, #0x73ba04
    // 0x73b9f8: r3 = "İsimsiz"
    //     0x73b9f8: add             x3, PP, #0x19, lsl #12  ; [pp+0x19450] "İsimsiz"
    //     0x73b9fc: ldr             x3, [x3, #0x450]
    // 0x73ba00: b               #0x73ba08
    // 0x73ba04: mov             x3, x2
    // 0x73ba08: stur            x3, [fp, #-0x18]
    // 0x73ba0c: tbnz            w1, #4, #0x73ba18
    // 0x73ba10: r4 = Instance_Color
    //     0x73ba10: ldr             x4, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73ba14: b               #0x73ba20
    // 0x73ba18: r4 = Instance_Color
    //     0x73ba18: add             x4, PP, #0x19, lsl #12  ; [pp+0x19458] Obj!Color@a21af1
    //     0x73ba1c: ldr             x4, [x4, #0x458]
    // 0x73ba20: stur            x4, [fp, #-8]
    // 0x73ba24: r0 = TextStyle()
    //     0x73ba24: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x73ba28: mov             x1, x0
    // 0x73ba2c: r0 = true
    //     0x73ba2c: add             x0, NULL, #0x20  ; true
    // 0x73ba30: stur            x1, [fp, #-0x38]
    // 0x73ba34: StoreField: r1->field_7 = r0
    //     0x73ba34: stur            w0, [x1, #7]
    // 0x73ba38: ldur            x0, [fp, #-8]
    // 0x73ba3c: StoreField: r1->field_b = r0
    //     0x73ba3c: stur            w0, [x1, #0xb]
    // 0x73ba40: r0 = Text()
    //     0x73ba40: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x73ba44: mov             x3, x0
    // 0x73ba48: ldur            x0, [fp, #-0x18]
    // 0x73ba4c: stur            x3, [fp, #-8]
    // 0x73ba50: StoreField: r3->field_b = r0
    //     0x73ba50: stur            w0, [x3, #0xb]
    // 0x73ba54: ldur            x0, [fp, #-0x38]
    // 0x73ba58: StoreField: r3->field_13 = r0
    //     0x73ba58: stur            w0, [x3, #0x13]
    // 0x73ba5c: r1 = _ConstMap len:12
    //     0x73ba5c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x73ba60: r2 = 600
    //     0x73ba60: mov             x2, #0x258
    // 0x73ba64: r0 = []()
    //     0x73ba64: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x73ba68: stur            x0, [fp, #-0x18]
    // 0x73ba6c: cmp             w0, NULL
    // 0x73ba70: b.eq            #0x73bbe0
    // 0x73ba74: ldur            x3, [fp, #-0x30]
    // 0x73ba78: tbnz            w3, #4, #0x73ba9c
    // 0x73ba7c: r1 = _ConstMap len:10
    //     0x73ba7c: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f30] Map<int, Color>(10)
    //     0x73ba80: ldr             x1, [x1, #0xf30]
    // 0x73ba84: r2 = 1400
    //     0x73ba84: mov             x2, #0x578
    // 0x73ba88: r0 = []()
    //     0x73ba88: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x73ba8c: cmp             w0, NULL
    // 0x73ba90: b.eq            #0x73bbe4
    // 0x73ba94: mov             x1, x0
    // 0x73ba98: b               #0x73bab4
    // 0x73ba9c: r1 = _ConstMap len:12
    //     0x73ba9c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x73baa0: r2 = 1000
    //     0x73baa0: mov             x2, #0x3e8
    // 0x73baa4: r0 = []()
    //     0x73baa4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x73baa8: cmp             w0, NULL
    // 0x73baac: b.eq            #0x73bbe8
    // 0x73bab0: mov             x1, x0
    // 0x73bab4: ldur            x0, [fp, #-0x20]
    // 0x73bab8: stur            x1, [fp, #-0x38]
    // 0x73babc: cbz             w0, #0x73baf0
    // 0x73bac0: ldur            x16, [fp, #-0x28]
    // 0x73bac4: stp             xzr, x16, [SP]
    // 0x73bac8: r0 = []()
    //     0x73bac8: bl              #0x3ca950  ; [dart:core] _StringBase::[]
    // 0x73bacc: r1 = LoadClassIdInstr(r0)
    //     0x73bacc: ldur            x1, [x0, #-1]
    //     0x73bad0: ubfx            x1, x1, #0xc, #0x14
    // 0x73bad4: str             x0, [SP]
    // 0x73bad8: mov             x0, x1
    // 0x73badc: r0 = GDT[cid_x0 + -0xff6]()
    //     0x73badc: sub             lr, x0, #0xff6
    //     0x73bae0: ldr             lr, [x21, lr, lsl #3]
    //     0x73bae4: blr             lr
    // 0x73bae8: mov             x4, x0
    // 0x73baec: b               #0x73baf4
    // 0x73baf0: r4 = "\?"
    //     0x73baf0: ldr             x4, [PP, #0xf08]  ; [pp+0xf08] "\?"
    // 0x73baf4: ldur            x2, [fp, #-0x30]
    // 0x73baf8: ldur            x3, [fp, #-8]
    // 0x73bafc: ldur            x0, [fp, #-0x38]
    // 0x73bb00: ldur            x1, [fp, #-0x18]
    // 0x73bb04: stur            x4, [fp, #-0x20]
    // 0x73bb08: r0 = Text()
    //     0x73bb08: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x73bb0c: mov             x1, x0
    // 0x73bb10: ldur            x0, [fp, #-0x20]
    // 0x73bb14: stur            x1, [fp, #-0x28]
    // 0x73bb18: StoreField: r1->field_b = r0
    //     0x73bb18: stur            w0, [x1, #0xb]
    // 0x73bb1c: r0 = Instance_TextStyle
    //     0x73bb1c: add             x0, PP, #0x19, lsl #12  ; [pp+0x19460] Obj!TextStyle@a171a1
    //     0x73bb20: ldr             x0, [x0, #0x460]
    // 0x73bb24: StoreField: r1->field_13 = r0
    //     0x73bb24: stur            w0, [x1, #0x13]
    // 0x73bb28: r0 = CircleAvatar()
    //     0x73bb28: bl              #0x6e4350  ; AllocateCircleAvatarStub -> CircleAvatar (size=0x2c)
    // 0x73bb2c: mov             x1, x0
    // 0x73bb30: ldur            x0, [fp, #-0x28]
    // 0x73bb34: stur            x1, [fp, #-0x20]
    // 0x73bb38: StoreField: r1->field_b = r0
    //     0x73bb38: stur            w0, [x1, #0xb]
    // 0x73bb3c: ldur            x0, [fp, #-0x38]
    // 0x73bb40: StoreField: r1->field_f = r0
    //     0x73bb40: stur            w0, [x1, #0xf]
    // 0x73bb44: r0 = FilterChip()
    //     0x73bb44: bl              #0x6e4344  ; AllocateFilterChipStub -> FilterChip (size=0xa0)
    // 0x73bb48: mov             x3, x0
    // 0x73bb4c: ldur            x0, [fp, #-0x20]
    // 0x73bb50: stur            x3, [fp, #-0x28]
    // 0x73bb54: StoreField: r3->field_b = r0
    //     0x73bb54: stur            w0, [x3, #0xb]
    // 0x73bb58: ldur            x0, [fp, #-8]
    // 0x73bb5c: StoreField: r3->field_f = r0
    //     0x73bb5c: stur            w0, [x3, #0xf]
    // 0x73bb60: ldur            x0, [fp, #-0x30]
    // 0x73bb64: StoreField: r3->field_1b = r0
    //     0x73bb64: stur            w0, [x3, #0x1b]
    // 0x73bb68: ldur            x2, [fp, #-0x10]
    // 0x73bb6c: r1 = Function '<anonymous closure>':.
    //     0x73bb6c: add             x1, PP, #0x19, lsl #12  ; [pp+0x19468] AnonymousClosure: (0x73bbec), in [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::_buildManagersSection (0x73b504)
    //     0x73bb70: ldr             x1, [x1, #0x468]
    // 0x73bb74: r0 = AllocateClosure()
    //     0x73bb74: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73bb78: mov             x1, x0
    // 0x73bb7c: ldur            x0, [fp, #-0x28]
    // 0x73bb80: StoreField: r0->field_1f = r1
    //     0x73bb80: stur            w1, [x0, #0x1f]
    // 0x73bb84: r1 = Instance_MaterialColor
    //     0x73bb84: add             x1, PP, #0x14, lsl #12  ; [pp+0x141f8] Obj!MaterialColor@a25ba1
    //     0x73bb88: ldr             x1, [x1, #0x1f8]
    // 0x73bb8c: StoreField: r0->field_3b = r1
    //     0x73bb8c: stur            w1, [x0, #0x3b]
    // 0x73bb90: r1 = Instance_Clip
    //     0x73bb90: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x73bb94: ldr             x1, [x1, #0x348]
    // 0x73bb98: StoreField: r0->field_4b = r1
    //     0x73bb98: stur            w1, [x0, #0x4b]
    // 0x73bb9c: r1 = false
    //     0x73bb9c: add             x1, NULL, #0x30  ; false
    // 0x73bba0: StoreField: r0->field_53 = r1
    //     0x73bba0: stur            w1, [x0, #0x53]
    // 0x73bba4: ldur            x1, [fp, #-0x18]
    // 0x73bba8: StoreField: r0->field_5b = r1
    //     0x73bba8: stur            w1, [x0, #0x5b]
    // 0x73bbac: r1 = Instance_Color
    //     0x73bbac: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73bbb0: StoreField: r0->field_7f = r1
    //     0x73bbb0: stur            w1, [x0, #0x7f]
    // 0x73bbb4: r1 = Instance_CircleBorder
    //     0x73bbb4: add             x1, PP, #0xc, lsl #12  ; [pp+0xcc58] Obj!CircleBorder@a0f2e1
    //     0x73bbb8: ldr             x1, [x1, #0xc58]
    // 0x73bbbc: StoreField: r0->field_83 = r1
    //     0x73bbbc: stur            w1, [x0, #0x83]
    // 0x73bbc0: r1 = Instance__ChipVariant
    //     0x73bbc0: add             x1, PP, #0x14, lsl #12  ; [pp+0x14208] Obj!_ChipVariant@a2baf1
    //     0x73bbc4: ldr             x1, [x1, #0x208]
    // 0x73bbc8: StoreField: r0->field_9b = r1
    //     0x73bbc8: stur            w1, [x0, #0x9b]
    // 0x73bbcc: LeaveFrame
    //     0x73bbcc: mov             SP, fp
    //     0x73bbd0: ldp             fp, lr, [SP], #0x10
    // 0x73bbd4: ret
    //     0x73bbd4: ret             
    // 0x73bbd8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73bbd8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73bbdc: b               #0x73b98c
    // 0x73bbe0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73bbe0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x73bbe4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73bbe4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x73bbe8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73bbe8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, bool) {
    // ** addr: 0x73bbec, size: 0x144
    // 0x73bbec: EnterFrame
    //     0x73bbec: stp             fp, lr, [SP, #-0x10]!
    //     0x73bbf0: mov             fp, SP
    // 0x73bbf4: AllocStack(0x38)
    //     0x73bbf4: sub             SP, SP, #0x38
    // 0x73bbf8: SetupParameters([dynamic _ /* r0 */])
    //     0x73bbf8: ldr             x0, [fp, #0x18]
    //     0x73bbfc: ldur            w3, [x0, #0x17]
    //     0x73bc00: add             x3, x3, HEAP, lsl #32
    //     0x73bc04: stur            x3, [fp, #-0x10]
    // 0x73bc08: CheckStackOverflow
    //     0x73bc08: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73bc0c: cmp             SP, x16
    //     0x73bc10: b.ls            #0x73bd28
    // 0x73bc14: LoadField: r0 = r3->field_b
    //     0x73bc14: ldur            w0, [x3, #0xb]
    // 0x73bc18: DecompressPointer r0
    //     0x73bc18: add             x0, x0, HEAP, lsl #32
    // 0x73bc1c: stur            x0, [fp, #-8]
    // 0x73bc20: LoadField: r2 = r0->field_f
    //     0x73bc20: ldur            w2, [x0, #0xf]
    // 0x73bc24: DecompressPointer r2
    //     0x73bc24: add             x2, x2, HEAP, lsl #32
    // 0x73bc28: r1 = <String>
    //     0x73bc28: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x73bc2c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x73bc2c: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x73bc30: r0 = List.from()
    //     0x73bc30: bl              #0x490278  ; [dart:core] List::List.from
    // 0x73bc34: mov             x2, x0
    // 0x73bc38: ldr             x0, [fp, #0x10]
    // 0x73bc3c: stur            x2, [fp, #-0x28]
    // 0x73bc40: tbnz            w0, #4, #0x73bcd4
    // 0x73bc44: ldur            x0, [fp, #-0x10]
    // 0x73bc48: LoadField: r1 = r0->field_f
    //     0x73bc48: ldur            w1, [x0, #0xf]
    // 0x73bc4c: DecompressPointer r1
    //     0x73bc4c: add             x1, x1, HEAP, lsl #32
    // 0x73bc50: LoadField: r0 = r1->field_7
    //     0x73bc50: ldur            w0, [x1, #7]
    // 0x73bc54: DecompressPointer r0
    //     0x73bc54: add             x0, x0, HEAP, lsl #32
    // 0x73bc58: stur            x0, [fp, #-0x20]
    // 0x73bc5c: LoadField: r1 = r2->field_b
    //     0x73bc5c: ldur            w1, [x2, #0xb]
    // 0x73bc60: LoadField: r3 = r2->field_f
    //     0x73bc60: ldur            w3, [x2, #0xf]
    // 0x73bc64: DecompressPointer r3
    //     0x73bc64: add             x3, x3, HEAP, lsl #32
    // 0x73bc68: LoadField: r4 = r3->field_b
    //     0x73bc68: ldur            w4, [x3, #0xb]
    // 0x73bc6c: r3 = LoadInt32Instr(r1)
    //     0x73bc6c: sbfx            x3, x1, #1, #0x1f
    // 0x73bc70: stur            x3, [fp, #-0x18]
    // 0x73bc74: r1 = LoadInt32Instr(r4)
    //     0x73bc74: sbfx            x1, x4, #1, #0x1f
    // 0x73bc78: cmp             x3, x1
    // 0x73bc7c: b.ne            #0x73bc88
    // 0x73bc80: mov             x1, x2
    // 0x73bc84: r0 = _growToNextCapacity()
    //     0x73bc84: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x73bc88: ldur            x3, [fp, #-0x28]
    // 0x73bc8c: ldur            x2, [fp, #-0x18]
    // 0x73bc90: add             x0, x2, #1
    // 0x73bc94: lsl             x1, x0, #1
    // 0x73bc98: StoreField: r3->field_b = r1
    //     0x73bc98: stur            w1, [x3, #0xb]
    // 0x73bc9c: LoadField: r1 = r3->field_f
    //     0x73bc9c: ldur            w1, [x3, #0xf]
    // 0x73bca0: DecompressPointer r1
    //     0x73bca0: add             x1, x1, HEAP, lsl #32
    // 0x73bca4: ldur            x0, [fp, #-0x20]
    // 0x73bca8: ArrayStore: r1[r2] = r0  ; List_4
    //     0x73bca8: add             x25, x1, x2, lsl #2
    //     0x73bcac: add             x25, x25, #0xf
    //     0x73bcb0: str             w0, [x25]
    //     0x73bcb4: tbz             w0, #0, #0x73bcd0
    //     0x73bcb8: ldurb           w16, [x1, #-1]
    //     0x73bcbc: ldurb           w17, [x0, #-1]
    //     0x73bcc0: and             x16, x17, x16, lsr #2
    //     0x73bcc4: tst             x16, HEAP, lsr #32
    //     0x73bcc8: b.eq            #0x73bcd0
    //     0x73bccc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73bcd0: b               #0x73bcf4
    // 0x73bcd4: ldur            x0, [fp, #-0x10]
    // 0x73bcd8: mov             x3, x2
    // 0x73bcdc: LoadField: r1 = r0->field_f
    //     0x73bcdc: ldur            w1, [x0, #0xf]
    // 0x73bce0: DecompressPointer r1
    //     0x73bce0: add             x1, x1, HEAP, lsl #32
    // 0x73bce4: LoadField: r2 = r1->field_7
    //     0x73bce4: ldur            w2, [x1, #7]
    // 0x73bce8: DecompressPointer r2
    //     0x73bce8: add             x2, x2, HEAP, lsl #32
    // 0x73bcec: mov             x1, x3
    // 0x73bcf0: r0 = remove()
    //     0x73bcf0: bl              #0x4480b0  ; [dart:core] _GrowableList::remove
    // 0x73bcf4: ldur            x0, [fp, #-8]
    // 0x73bcf8: LoadField: r1 = r0->field_13
    //     0x73bcf8: ldur            w1, [x0, #0x13]
    // 0x73bcfc: DecompressPointer r1
    //     0x73bcfc: add             x1, x1, HEAP, lsl #32
    // 0x73bd00: ldur            x16, [fp, #-0x28]
    // 0x73bd04: stp             x16, x1, [SP]
    // 0x73bd08: mov             x0, x1
    // 0x73bd0c: ClosureCall
    //     0x73bd0c: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x73bd10: ldur            x2, [x0, #0x1f]
    //     0x73bd14: blr             x2
    // 0x73bd18: r0 = Null
    //     0x73bd18: mov             x0, NULL
    // 0x73bd1c: LeaveFrame
    //     0x73bd1c: mov             SP, fp
    //     0x73bd20: ldp             fp, lr, [SP], #0x10
    // 0x73bd24: ret
    //     0x73bd24: ret             
    // 0x73bd28: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73bd28: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73bd2c: b               #0x73bc14
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x73c284, size: 0xaf8
    // 0x73c284: EnterFrame
    //     0x73c284: stp             fp, lr, [SP, #-0x10]!
    //     0x73c288: mov             fp, SP
    // 0x73c28c: AllocStack(0xc8)
    //     0x73c28c: sub             SP, SP, #0xc8
    // 0x73c290: SetupParameters(TripsTabState this /* r1 */)
    //     0x73c290: stur            NULL, [fp, #-8]
    //     0x73c294: mov             x0, #0
    //     0x73c298: add             x1, fp, w0, sxtw #2
    //     0x73c29c: ldr             x1, [x1, #0x10]
    //     0x73c2a0: ldur            w2, [x1, #0x17]
    //     0x73c2a4: add             x2, x2, HEAP, lsl #32
    //     0x73c2a8: stur            x2, [fp, #-0x78]
    // 0x73c2ac: CheckStackOverflow
    //     0x73c2ac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73c2b0: cmp             SP, x16
    //     0x73c2b4: b.ls            #0x73cd3c
    // 0x73c2b8: InitAsync() -> Future<void?>
    //     0x73c2b8: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x73c2bc: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x73c2c0: ldur            x2, [fp, #-0x78]
    // 0x73c2c4: LoadField: r0 = r2->field_b
    //     0x73c2c4: ldur            w0, [x2, #0xb]
    // 0x73c2c8: DecompressPointer r0
    //     0x73c2c8: add             x0, x0, HEAP, lsl #32
    // 0x73c2cc: stur            x0, [fp, #-0x90]
    // 0x73c2d0: LoadField: r3 = r0->field_b
    //     0x73c2d0: ldur            w3, [x0, #0xb]
    // 0x73c2d4: DecompressPointer r3
    //     0x73c2d4: add             x3, x3, HEAP, lsl #32
    // 0x73c2d8: stur            x3, [fp, #-0x88]
    // 0x73c2dc: LoadField: r4 = r3->field_1b
    //     0x73c2dc: ldur            w4, [x3, #0x1b]
    // 0x73c2e0: DecompressPointer r4
    //     0x73c2e0: add             x4, x4, HEAP, lsl #32
    // 0x73c2e4: stur            x4, [fp, #-0x80]
    // 0x73c2e8: LoadField: r1 = r4->field_27
    //     0x73c2e8: ldur            w1, [x4, #0x27]
    // 0x73c2ec: DecompressPointer r1
    //     0x73c2ec: add             x1, x1, HEAP, lsl #32
    // 0x73c2f0: LoadField: r5 = r1->field_7
    //     0x73c2f0: ldur            w5, [x1, #7]
    // 0x73c2f4: DecompressPointer r5
    //     0x73c2f4: add             x5, x5, HEAP, lsl #32
    // 0x73c2f8: mov             x1, x5
    // 0x73c2fc: r0 = trim()
    //     0x73c2fc: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x73c300: LoadField: r1 = r0->field_7
    //     0x73c300: ldur            w1, [x0, #7]
    // 0x73c304: cbnz            w1, #0x73c330
    // 0x73c308: ldur            x0, [fp, #-0x78]
    // 0x73c30c: LoadField: r1 = r0->field_f
    //     0x73c30c: ldur            w1, [x0, #0xf]
    // 0x73c310: DecompressPointer r1
    //     0x73c310: add             x1, x1, HEAP, lsl #32
    // 0x73c314: r0 = of()
    //     0x73c314: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x73c318: mov             x1, x0
    // 0x73c31c: r2 = Instance_SnackBar
    //     0x73c31c: add             x2, PP, #0x19, lsl #12  ; [pp+0x19400] Obj!SnackBar@a206f1
    //     0x73c320: ldr             x2, [x2, #0x400]
    // 0x73c324: r0 = showSnackBar()
    //     0x73c324: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x73c328: r0 = Null
    //     0x73c328: mov             x0, NULL
    // 0x73c32c: r0 = ReturnAsyncNotFuture()
    //     0x73c32c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x73c330: ldur            x0, [fp, #-0x78]
    // 0x73c334: LoadField: r3 = r0->field_13
    //     0x73c334: ldur            w3, [x0, #0x13]
    // 0x73c338: DecompressPointer r3
    //     0x73c338: add             x3, x3, HEAP, lsl #32
    // 0x73c33c: mov             x2, x0
    // 0x73c340: stur            x3, [fp, #-0x98]
    // 0x73c344: r1 = Function '<anonymous closure>':.
    //     0x73c344: add             x1, PP, #0x19, lsl #12  ; [pp+0x19408] AnonymousClosure: (0x73cd7c), in [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::showTripDialog (0x73aae4)
    //     0x73c348: ldr             x1, [x1, #0x408]
    // 0x73c34c: r0 = AllocateClosure()
    //     0x73c34c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73c350: ldur            x16, [fp, #-0x98]
    // 0x73c354: stp             x0, x16, [SP]
    // 0x73c358: ldur            x0, [fp, #-0x98]
    // 0x73c35c: ClosureCall
    //     0x73c35c: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x73c360: ldur            x2, [x0, #0x1f]
    //     0x73c364: blr             x2
    // 0x73c368: ldur            x0, [fp, #-0x88]
    // 0x73c36c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x73c36c: ldur            w1, [x0, #0x17]
    // 0x73c370: DecompressPointer r1
    //     0x73c370: add             x1, x1, HEAP, lsl #32
    // 0x73c374: tbnz            w1, #4, #0x73c868
    // 0x73c378: ldur            x3, [fp, #-0x80]
    // 0x73c37c: LoadField: r1 = r0->field_13
    //     0x73c37c: ldur            w1, [x0, #0x13]
    // 0x73c380: DecompressPointer r1
    //     0x73c380: add             x1, x1, HEAP, lsl #32
    // 0x73c384: cmp             w1, NULL
    // 0x73c388: b.eq            #0x73cd44
    // 0x73c38c: LoadField: r4 = r1->field_7
    //     0x73c38c: ldur            w4, [x1, #7]
    // 0x73c390: DecompressPointer r4
    //     0x73c390: add             x4, x4, HEAP, lsl #32
    // 0x73c394: stur            x4, [fp, #-0x98]
    // 0x73c398: LoadField: r1 = r0->field_f
    //     0x73c398: ldur            w1, [x0, #0xf]
    // 0x73c39c: DecompressPointer r1
    //     0x73c39c: add             x1, x1, HEAP, lsl #32
    // 0x73c3a0: LoadField: r2 = r1->field_b
    //     0x73c3a0: ldur            w2, [x1, #0xb]
    // 0x73c3a4: DecompressPointer r2
    //     0x73c3a4: add             x2, x2, HEAP, lsl #32
    // 0x73c3a8: cmp             w2, NULL
    // 0x73c3ac: b.eq            #0x73cd48
    // 0x73c3b0: LoadField: r1 = r2->field_1b
    //     0x73c3b0: ldur            w1, [x2, #0x1b]
    // 0x73c3b4: DecompressPointer r1
    //     0x73c3b4: add             x1, x1, HEAP, lsl #32
    // 0x73c3b8: LoadField: r2 = r1->field_7
    //     0x73c3b8: ldur            w2, [x1, #7]
    // 0x73c3bc: DecompressPointer r2
    //     0x73c3bc: add             x2, x2, HEAP, lsl #32
    // 0x73c3c0: mov             x1, x2
    // 0x73c3c4: r2 = "trips"
    //     0x73c3c4: add             x2, PP, #0x14, lsl #12  ; [pp+0x14088] "trips"
    //     0x73c3c8: ldr             x2, [x2, #0x88]
    // 0x73c3cc: r0 = collection()
    //     0x73c3cc: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x73c3d0: mov             x1, x0
    // 0x73c3d4: ldur            x0, [fp, #-0x88]
    // 0x73c3d8: LoadField: r2 = r0->field_13
    //     0x73c3d8: ldur            w2, [x0, #0x13]
    // 0x73c3dc: DecompressPointer r2
    //     0x73c3dc: add             x2, x2, HEAP, lsl #32
    // 0x73c3e0: cmp             w2, NULL
    // 0x73c3e4: b.eq            #0x73cd4c
    // 0x73c3e8: LoadField: r3 = r2->field_7
    //     0x73c3e8: ldur            w3, [x2, #7]
    // 0x73c3ec: DecompressPointer r3
    //     0x73c3ec: add             x3, x3, HEAP, lsl #32
    // 0x73c3f0: str             x3, [SP]
    // 0x73c3f4: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x73c3f4: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x73c3f8: r0 = doc()
    //     0x73c3f8: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x73c3fc: r1 = Null
    //     0x73c3fc: mov             x1, NULL
    // 0x73c400: r2 = 24
    //     0x73c400: mov             x2, #0x18
    // 0x73c404: stur            x0, [fp, #-0xa0]
    // 0x73c408: r0 = AllocateArray()
    //     0x73c408: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73c40c: stur            x0, [fp, #-0xa8]
    // 0x73c410: r16 = "name"
    //     0x73c410: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x73c414: StoreField: r0->field_f = r16
    //     0x73c414: stur            w16, [x0, #0xf]
    // 0x73c418: ldur            x3, [fp, #-0x80]
    // 0x73c41c: LoadField: r1 = r3->field_27
    //     0x73c41c: ldur            w1, [x3, #0x27]
    // 0x73c420: DecompressPointer r1
    //     0x73c420: add             x1, x1, HEAP, lsl #32
    // 0x73c424: LoadField: r2 = r1->field_7
    //     0x73c424: ldur            w2, [x1, #7]
    // 0x73c428: DecompressPointer r2
    //     0x73c428: add             x2, x2, HEAP, lsl #32
    // 0x73c42c: mov             x1, x2
    // 0x73c430: r0 = trim()
    //     0x73c430: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x73c434: ldur            x1, [fp, #-0xa8]
    // 0x73c438: ArrayStore: r1[1] = r0  ; List_4
    //     0x73c438: add             x25, x1, #0x13
    //     0x73c43c: str             w0, [x25]
    //     0x73c440: tbz             w0, #0, #0x73c45c
    //     0x73c444: ldurb           w16, [x1, #-1]
    //     0x73c448: ldurb           w17, [x0, #-1]
    //     0x73c44c: and             x16, x17, x16, lsr #2
    //     0x73c450: tst             x16, HEAP, lsr #32
    //     0x73c454: b.eq            #0x73c45c
    //     0x73c458: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73c45c: ldur            x3, [fp, #-0xa8]
    // 0x73c460: r16 = "location"
    //     0x73c460: ldr             x16, [PP, #0x1e28]  ; [pp+0x1e28] "location"
    // 0x73c464: ArrayStore: r3[0] = r16  ; List_4
    //     0x73c464: stur            w16, [x3, #0x17]
    // 0x73c468: ldur            x4, [fp, #-0x88]
    // 0x73c46c: LoadField: r0 = r4->field_23
    //     0x73c46c: ldur            w0, [x4, #0x23]
    // 0x73c470: DecompressPointer r0
    //     0x73c470: add             x0, x0, HEAP, lsl #32
    // 0x73c474: mov             x1, x3
    // 0x73c478: ArrayStore: r1[3] = r0  ; List_4
    //     0x73c478: add             x25, x1, #0x1b
    //     0x73c47c: str             w0, [x25]
    //     0x73c480: tbz             w0, #0, #0x73c49c
    //     0x73c484: ldurb           w16, [x1, #-1]
    //     0x73c488: ldurb           w17, [x0, #-1]
    //     0x73c48c: and             x16, x17, x16, lsr #2
    //     0x73c490: tst             x16, HEAP, lsr #32
    //     0x73c494: b.eq            #0x73c49c
    //     0x73c498: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73c49c: r16 = "start_date"
    //     0x73c49c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14048] "start_date"
    //     0x73c4a0: ldr             x16, [x16, #0x48]
    // 0x73c4a4: StoreField: r3->field_1f = r16
    //     0x73c4a4: stur            w16, [x3, #0x1f]
    // 0x73c4a8: LoadField: r0 = r4->field_27
    //     0x73c4a8: ldur            w0, [x4, #0x27]
    // 0x73c4ac: DecompressPointer r0
    //     0x73c4ac: add             x0, x0, HEAP, lsl #32
    // 0x73c4b0: cmp             w0, NULL
    // 0x73c4b4: b.eq            #0x73c4c8
    // 0x73c4b8: LoadField: r2 = r0->field_b
    //     0x73c4b8: ldur            x2, [x0, #0xb]
    // 0x73c4bc: r1 = Null
    //     0x73c4bc: mov             x1, NULL
    // 0x73c4c0: r0 = Timestamp.fromMicrosecondsSinceEpoch()
    //     0x73c4c0: bl              #0x5dd9f0  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::Timestamp.fromMicrosecondsSinceEpoch
    // 0x73c4c4: b               #0x73c4cc
    // 0x73c4c8: r0 = Null
    //     0x73c4c8: mov             x0, NULL
    // 0x73c4cc: ldur            x4, [fp, #-0x88]
    // 0x73c4d0: ldur            x3, [fp, #-0xa8]
    // 0x73c4d4: mov             x1, x3
    // 0x73c4d8: ArrayStore: r1[5] = r0  ; List_4
    //     0x73c4d8: add             x25, x1, #0x23
    //     0x73c4dc: str             w0, [x25]
    //     0x73c4e0: tbz             w0, #0, #0x73c4fc
    //     0x73c4e4: ldurb           w16, [x1, #-1]
    //     0x73c4e8: ldurb           w17, [x0, #-1]
    //     0x73c4ec: and             x16, x17, x16, lsr #2
    //     0x73c4f0: tst             x16, HEAP, lsr #32
    //     0x73c4f4: b.eq            #0x73c4fc
    //     0x73c4f8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73c4fc: r16 = "end_date"
    //     0x73c4fc: add             x16, PP, #0x14, lsl #12  ; [pp+0x14050] "end_date"
    //     0x73c500: ldr             x16, [x16, #0x50]
    // 0x73c504: StoreField: r3->field_27 = r16
    //     0x73c504: stur            w16, [x3, #0x27]
    // 0x73c508: LoadField: r0 = r4->field_2b
    //     0x73c508: ldur            w0, [x4, #0x2b]
    // 0x73c50c: DecompressPointer r0
    //     0x73c50c: add             x0, x0, HEAP, lsl #32
    // 0x73c510: cmp             w0, NULL
    // 0x73c514: b.eq            #0x73c52c
    // 0x73c518: LoadField: r2 = r0->field_b
    //     0x73c518: ldur            x2, [x0, #0xb]
    // 0x73c51c: r1 = Null
    //     0x73c51c: mov             x1, NULL
    // 0x73c520: r0 = Timestamp.fromMicrosecondsSinceEpoch()
    //     0x73c520: bl              #0x5dd9f0  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::Timestamp.fromMicrosecondsSinceEpoch
    // 0x73c524: mov             x4, x0
    // 0x73c528: b               #0x73c530
    // 0x73c52c: r4 = Null
    //     0x73c52c: mov             x4, NULL
    // 0x73c530: ldur            x3, [fp, #-0x88]
    // 0x73c534: ldur            x2, [fp, #-0xa8]
    // 0x73c538: mov             x1, x2
    // 0x73c53c: mov             x0, x4
    // 0x73c540: stur            x4, [fp, #-0xb0]
    // 0x73c544: ArrayStore: r1[7] = r0  ; List_4
    //     0x73c544: add             x25, x1, #0x2b
    //     0x73c548: str             w0, [x25]
    //     0x73c54c: tbz             w0, #0, #0x73c568
    //     0x73c550: ldurb           w16, [x1, #-1]
    //     0x73c554: ldurb           w17, [x0, #-1]
    //     0x73c558: and             x16, x17, x16, lsr #2
    //     0x73c55c: tst             x16, HEAP, lsr #32
    //     0x73c560: b.eq            #0x73c568
    //     0x73c564: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73c568: r16 = "note"
    //     0x73c568: add             x16, PP, #0x14, lsl #12  ; [pp+0x14030] "note"
    //     0x73c56c: ldr             x16, [x16, #0x30]
    // 0x73c570: StoreField: r2->field_2f = r16
    //     0x73c570: stur            w16, [x2, #0x2f]
    // 0x73c574: LoadField: r0 = r3->field_1f
    //     0x73c574: ldur            w0, [x3, #0x1f]
    // 0x73c578: DecompressPointer r0
    //     0x73c578: add             x0, x0, HEAP, lsl #32
    // 0x73c57c: LoadField: r1 = r0->field_27
    //     0x73c57c: ldur            w1, [x0, #0x27]
    // 0x73c580: DecompressPointer r1
    //     0x73c580: add             x1, x1, HEAP, lsl #32
    // 0x73c584: LoadField: r0 = r1->field_7
    //     0x73c584: ldur            w0, [x1, #7]
    // 0x73c588: DecompressPointer r0
    //     0x73c588: add             x0, x0, HEAP, lsl #32
    // 0x73c58c: mov             x1, x0
    // 0x73c590: r0 = trim()
    //     0x73c590: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x73c594: ldur            x1, [fp, #-0xa8]
    // 0x73c598: ArrayStore: r1[9] = r0  ; List_4
    //     0x73c598: add             x25, x1, #0x33
    //     0x73c59c: str             w0, [x25]
    //     0x73c5a0: tbz             w0, #0, #0x73c5bc
    //     0x73c5a4: ldurb           w16, [x1, #-1]
    //     0x73c5a8: ldurb           w17, [x0, #-1]
    //     0x73c5ac: and             x16, x17, x16, lsr #2
    //     0x73c5b0: tst             x16, HEAP, lsr #32
    //     0x73c5b4: b.eq            #0x73c5bc
    //     0x73c5b8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73c5bc: ldur            x1, [fp, #-0xa8]
    // 0x73c5c0: r16 = "updated_at"
    //     0x73c5c0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x73c5c4: ldr             x16, [x16, #0x58]
    // 0x73c5c8: StoreField: r1->field_37 = r16
    //     0x73c5c8: stur            w16, [x1, #0x37]
    // 0x73c5cc: r0 = serverTimestamp()
    //     0x73c5cc: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x73c5d0: ldur            x1, [fp, #-0xa8]
    // 0x73c5d4: ArrayStore: r1[11] = r0  ; List_4
    //     0x73c5d4: add             x25, x1, #0x3b
    //     0x73c5d8: str             w0, [x25]
    //     0x73c5dc: tbz             w0, #0, #0x73c5f8
    //     0x73c5e0: ldurb           w16, [x1, #-1]
    //     0x73c5e4: ldurb           w17, [x0, #-1]
    //     0x73c5e8: and             x16, x17, x16, lsr #2
    //     0x73c5ec: tst             x16, HEAP, lsr #32
    //     0x73c5f0: b.eq            #0x73c5f8
    //     0x73c5f4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73c5f8: r16 = <Object, Object?>
    //     0x73c5f8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14828] TypeArguments: <Object, Object?>
    //     0x73c5fc: ldr             x16, [x16, #0x828]
    // 0x73c600: ldur            lr, [fp, #-0xa8]
    // 0x73c604: stp             lr, x16, [SP]
    // 0x73c608: r0 = Map._fromLiteral()
    //     0x73c608: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x73c60c: ldur            x1, [fp, #-0xa0]
    // 0x73c610: mov             x2, x0
    // 0x73c614: r0 = update()
    //     0x73c614: bl              #0x6d3e10  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::update
    // 0x73c618: mov             x1, x0
    // 0x73c61c: stur            x1, [fp, #-0xa0]
    // 0x73c620: r0 = Await()
    //     0x73c620: bl              #0x3dd188  ; AwaitStub
    // 0x73c624: ldur            x3, [fp, #-0x88]
    // 0x73c628: LoadField: r0 = r3->field_f
    //     0x73c628: ldur            w0, [x3, #0xf]
    // 0x73c62c: DecompressPointer r0
    //     0x73c62c: add             x0, x0, HEAP, lsl #32
    // 0x73c630: LoadField: r1 = r0->field_b
    //     0x73c630: ldur            w1, [x0, #0xb]
    // 0x73c634: DecompressPointer r1
    //     0x73c634: add             x1, x1, HEAP, lsl #32
    // 0x73c638: cmp             w1, NULL
    // 0x73c63c: b.eq            #0x73cd50
    // 0x73c640: LoadField: r0 = r1->field_13
    //     0x73c640: ldur            w0, [x1, #0x13]
    // 0x73c644: DecompressPointer r0
    //     0x73c644: add             x0, x0, HEAP, lsl #32
    // 0x73c648: r1 = LoadClassIdInstr(r0)
    //     0x73c648: ldur            x1, [x0, #-1]
    //     0x73c64c: ubfx            x1, x1, #0xc, #0x14
    // 0x73c650: mov             x16, x0
    // 0x73c654: mov             x0, x1
    // 0x73c658: mov             x1, x16
    // 0x73c65c: ldur            x2, [fp, #-0x98]
    // 0x73c660: r0 = GDT[cid_x0 + 0x36e]()
    //     0x73c660: add             lr, x0, #0x36e
    //     0x73c664: ldr             lr, [x21, lr, lsl #3]
    //     0x73c668: blr             lr
    // 0x73c66c: cmp             w0, NULL
    // 0x73c670: b.ne            #0x73c688
    // 0x73c674: r1 = <String>
    //     0x73c674: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x73c678: r2 = 0
    //     0x73c678: mov             x2, #0
    // 0x73c67c: r0 = _GrowableList()
    //     0x73c67c: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x73c680: mov             x2, x0
    // 0x73c684: b               #0x73c68c
    // 0x73c688: mov             x2, x0
    // 0x73c68c: stur            x2, [fp, #-0xa0]
    // 0x73c690: r0 = LoadClassIdInstr(r2)
    //     0x73c690: ldur            x0, [x2, #-1]
    //     0x73c694: ubfx            x0, x0, #0xc, #0x14
    // 0x73c698: mov             x1, x2
    // 0x73c69c: r0 = GDT[cid_x0 + 0x90c4]()
    //     0x73c69c: mov             x17, #0x90c4
    //     0x73c6a0: add             lr, x0, x17
    //     0x73c6a4: ldr             lr, [x21, lr, lsl #3]
    //     0x73c6a8: blr             lr
    // 0x73c6ac: mov             x2, x0
    // 0x73c6b0: stur            x2, [fp, #-0xa8]
    // 0x73c6b4: ldur            x3, [fp, #-0x88]
    // 0x73c6b8: CheckStackOverflow
    //     0x73c6b8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73c6bc: cmp             SP, x16
    //     0x73c6c0: b.ls            #0x73cd54
    // 0x73c6c4: r0 = LoadClassIdInstr(r2)
    //     0x73c6c4: ldur            x0, [x2, #-1]
    //     0x73c6c8: ubfx            x0, x0, #0xc, #0x14
    // 0x73c6cc: mov             x1, x2
    // 0x73c6d0: r0 = GDT[cid_x0 + 0x4cb]()
    //     0x73c6d0: add             lr, x0, #0x4cb
    //     0x73c6d4: ldr             lr, [x21, lr, lsl #3]
    //     0x73c6d8: blr             lr
    // 0x73c6dc: tbnz            w0, #4, #0x73c778
    // 0x73c6e0: ldur            x3, [fp, #-0x88]
    // 0x73c6e4: ldur            x2, [fp, #-0xa8]
    // 0x73c6e8: r0 = LoadClassIdInstr(r2)
    //     0x73c6e8: ldur            x0, [x2, #-1]
    //     0x73c6ec: ubfx            x0, x0, #0xc, #0x14
    // 0x73c6f0: mov             x1, x2
    // 0x73c6f4: r0 = GDT[cid_x0 + 0x4f1]()
    //     0x73c6f4: add             lr, x0, #0x4f1
    //     0x73c6f8: ldr             lr, [x21, lr, lsl #3]
    //     0x73c6fc: blr             lr
    // 0x73c700: mov             x4, x0
    // 0x73c704: ldur            x3, [fp, #-0x88]
    // 0x73c708: stur            x4, [fp, #-0xb0]
    // 0x73c70c: LoadField: r1 = r3->field_2f
    //     0x73c70c: ldur            w1, [x3, #0x2f]
    // 0x73c710: DecompressPointer r1
    //     0x73c710: add             x1, x1, HEAP, lsl #32
    // 0x73c714: r0 = LoadClassIdInstr(r1)
    //     0x73c714: ldur            x0, [x1, #-1]
    //     0x73c718: ubfx            x0, x0, #0xc, #0x14
    // 0x73c71c: mov             x2, x4
    // 0x73c720: r0 = GDT[cid_x0 + 0xd089]()
    //     0x73c720: mov             x17, #0xd089
    //     0x73c724: add             lr, x0, x17
    //     0x73c728: ldr             lr, [x21, lr, lsl #3]
    //     0x73c72c: blr             lr
    // 0x73c730: tbz             w0, #4, #0x73c770
    // 0x73c734: ldur            x0, [fp, #-0x88]
    // 0x73c738: LoadField: r1 = r0->field_f
    //     0x73c738: ldur            w1, [x0, #0xf]
    // 0x73c73c: DecompressPointer r1
    //     0x73c73c: add             x1, x1, HEAP, lsl #32
    // 0x73c740: LoadField: r2 = r1->field_b
    //     0x73c740: ldur            w2, [x1, #0xb]
    // 0x73c744: DecompressPointer r2
    //     0x73c744: add             x2, x2, HEAP, lsl #32
    // 0x73c748: cmp             w2, NULL
    // 0x73c74c: b.eq            #0x73cd5c
    // 0x73c750: LoadField: r1 = r2->field_1b
    //     0x73c750: ldur            w1, [x2, #0x1b]
    // 0x73c754: DecompressPointer r1
    //     0x73c754: add             x1, x1, HEAP, lsl #32
    // 0x73c758: ldur            x2, [fp, #-0x98]
    // 0x73c75c: ldur            x3, [fp, #-0xb0]
    // 0x73c760: r0 = removeTripManager()
    //     0x73c760: bl              #0x6e3d14  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::removeTripManager
    // 0x73c764: mov             x1, x0
    // 0x73c768: stur            x1, [fp, #-0xb8]
    // 0x73c76c: r0 = Await()
    //     0x73c76c: bl              #0x3dd188  ; AwaitStub
    // 0x73c770: ldur            x2, [fp, #-0xa8]
    // 0x73c774: b               #0x73c6b4
    // 0x73c778: ldur            x2, [fp, #-0x88]
    // 0x73c77c: LoadField: r1 = r2->field_2f
    //     0x73c77c: ldur            w1, [x2, #0x2f]
    // 0x73c780: DecompressPointer r1
    //     0x73c780: add             x1, x1, HEAP, lsl #32
    // 0x73c784: r0 = LoadClassIdInstr(r1)
    //     0x73c784: ldur            x0, [x1, #-1]
    //     0x73c788: ubfx            x0, x0, #0xc, #0x14
    // 0x73c78c: r0 = GDT[cid_x0 + 0x90c4]()
    //     0x73c78c: mov             x17, #0x90c4
    //     0x73c790: add             lr, x0, x17
    //     0x73c794: ldr             lr, [x21, lr, lsl #3]
    //     0x73c798: blr             lr
    // 0x73c79c: mov             x2, x0
    // 0x73c7a0: stur            x2, [fp, #-0xa8]
    // 0x73c7a4: ldur            x3, [fp, #-0x88]
    // 0x73c7a8: ldur            x4, [fp, #-0xa0]
    // 0x73c7ac: CheckStackOverflow
    //     0x73c7ac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73c7b0: cmp             SP, x16
    //     0x73c7b4: b.ls            #0x73cd60
    // 0x73c7b8: r0 = LoadClassIdInstr(r2)
    //     0x73c7b8: ldur            x0, [x2, #-1]
    //     0x73c7bc: ubfx            x0, x0, #0xc, #0x14
    // 0x73c7c0: mov             x1, x2
    // 0x73c7c4: r0 = GDT[cid_x0 + 0x4cb]()
    //     0x73c7c4: add             lr, x0, #0x4cb
    //     0x73c7c8: ldr             lr, [x21, lr, lsl #3]
    //     0x73c7cc: blr             lr
    // 0x73c7d0: tbnz            w0, #4, #0x73cc40
    // 0x73c7d4: ldur            x3, [fp, #-0xa0]
    // 0x73c7d8: ldur            x2, [fp, #-0xa8]
    // 0x73c7dc: r0 = LoadClassIdInstr(r2)
    //     0x73c7dc: ldur            x0, [x2, #-1]
    //     0x73c7e0: ubfx            x0, x0, #0xc, #0x14
    // 0x73c7e4: mov             x1, x2
    // 0x73c7e8: r0 = GDT[cid_x0 + 0x4f1]()
    //     0x73c7e8: add             lr, x0, #0x4f1
    //     0x73c7ec: ldr             lr, [x21, lr, lsl #3]
    //     0x73c7f0: blr             lr
    // 0x73c7f4: mov             x4, x0
    // 0x73c7f8: ldur            x3, [fp, #-0xa0]
    // 0x73c7fc: stur            x4, [fp, #-0xb0]
    // 0x73c800: r0 = LoadClassIdInstr(r3)
    //     0x73c800: ldur            x0, [x3, #-1]
    //     0x73c804: ubfx            x0, x0, #0xc, #0x14
    // 0x73c808: mov             x1, x3
    // 0x73c80c: mov             x2, x4
    // 0x73c810: r0 = GDT[cid_x0 + 0xd089]()
    //     0x73c810: mov             x17, #0xd089
    //     0x73c814: add             lr, x0, x17
    //     0x73c818: ldr             lr, [x21, lr, lsl #3]
    //     0x73c81c: blr             lr
    // 0x73c820: tbz             w0, #4, #0x73c860
    // 0x73c824: ldur            x0, [fp, #-0x88]
    // 0x73c828: LoadField: r1 = r0->field_f
    //     0x73c828: ldur            w1, [x0, #0xf]
    // 0x73c82c: DecompressPointer r1
    //     0x73c82c: add             x1, x1, HEAP, lsl #32
    // 0x73c830: LoadField: r2 = r1->field_b
    //     0x73c830: ldur            w2, [x1, #0xb]
    // 0x73c834: DecompressPointer r2
    //     0x73c834: add             x2, x2, HEAP, lsl #32
    // 0x73c838: cmp             w2, NULL
    // 0x73c83c: b.eq            #0x73cd68
    // 0x73c840: LoadField: r1 = r2->field_1b
    //     0x73c840: ldur            w1, [x2, #0x1b]
    // 0x73c844: DecompressPointer r1
    //     0x73c844: add             x1, x1, HEAP, lsl #32
    // 0x73c848: ldur            x2, [fp, #-0x98]
    // 0x73c84c: ldur            x3, [fp, #-0xb0]
    // 0x73c850: r0 = assignTripManager()
    //     0x73c850: bl              #0x6e2e7c  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::assignTripManager
    // 0x73c854: mov             x1, x0
    // 0x73c858: stur            x1, [fp, #-0xb8]
    // 0x73c85c: r0 = Await()
    //     0x73c85c: bl              #0x3dd188  ; AwaitStub
    // 0x73c860: ldur            x2, [fp, #-0xa8]
    // 0x73c864: b               #0x73c7a4
    // 0x73c868: ldur            x3, [fp, #-0x80]
    // 0x73c86c: LoadField: r1 = r0->field_f
    //     0x73c86c: ldur            w1, [x0, #0xf]
    // 0x73c870: DecompressPointer r1
    //     0x73c870: add             x1, x1, HEAP, lsl #32
    // 0x73c874: LoadField: r2 = r1->field_b
    //     0x73c874: ldur            w2, [x1, #0xb]
    // 0x73c878: DecompressPointer r2
    //     0x73c878: add             x2, x2, HEAP, lsl #32
    // 0x73c87c: cmp             w2, NULL
    // 0x73c880: b.eq            #0x73cd6c
    // 0x73c884: LoadField: r1 = r2->field_1b
    //     0x73c884: ldur            w1, [x2, #0x1b]
    // 0x73c888: DecompressPointer r1
    //     0x73c888: add             x1, x1, HEAP, lsl #32
    // 0x73c88c: LoadField: r2 = r1->field_7
    //     0x73c88c: ldur            w2, [x1, #7]
    // 0x73c890: DecompressPointer r2
    //     0x73c890: add             x2, x2, HEAP, lsl #32
    // 0x73c894: mov             x1, x2
    // 0x73c898: r2 = "trips"
    //     0x73c898: add             x2, PP, #0x14, lsl #12  ; [pp+0x14088] "trips"
    //     0x73c89c: ldr             x2, [x2, #0x88]
    // 0x73c8a0: r0 = collection()
    //     0x73c8a0: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x73c8a4: r1 = Null
    //     0x73c8a4: mov             x1, NULL
    // 0x73c8a8: r2 = 32
    //     0x73c8a8: mov             x2, #0x20
    // 0x73c8ac: stur            x0, [fp, #-0x98]
    // 0x73c8b0: r0 = AllocateArray()
    //     0x73c8b0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73c8b4: stur            x0, [fp, #-0xa0]
    // 0x73c8b8: r16 = "name"
    //     0x73c8b8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x73c8bc: StoreField: r0->field_f = r16
    //     0x73c8bc: stur            w16, [x0, #0xf]
    // 0x73c8c0: ldur            x1, [fp, #-0x80]
    // 0x73c8c4: LoadField: r2 = r1->field_27
    //     0x73c8c4: ldur            w2, [x1, #0x27]
    // 0x73c8c8: DecompressPointer r2
    //     0x73c8c8: add             x2, x2, HEAP, lsl #32
    // 0x73c8cc: LoadField: r1 = r2->field_7
    //     0x73c8cc: ldur            w1, [x2, #7]
    // 0x73c8d0: DecompressPointer r1
    //     0x73c8d0: add             x1, x1, HEAP, lsl #32
    // 0x73c8d4: r0 = trim()
    //     0x73c8d4: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x73c8d8: ldur            x1, [fp, #-0xa0]
    // 0x73c8dc: ArrayStore: r1[1] = r0  ; List_4
    //     0x73c8dc: add             x25, x1, #0x13
    //     0x73c8e0: str             w0, [x25]
    //     0x73c8e4: tbz             w0, #0, #0x73c900
    //     0x73c8e8: ldurb           w16, [x1, #-1]
    //     0x73c8ec: ldurb           w17, [x0, #-1]
    //     0x73c8f0: and             x16, x17, x16, lsr #2
    //     0x73c8f4: tst             x16, HEAP, lsr #32
    //     0x73c8f8: b.eq            #0x73c900
    //     0x73c8fc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73c900: ldur            x3, [fp, #-0xa0]
    // 0x73c904: r16 = "location"
    //     0x73c904: ldr             x16, [PP, #0x1e28]  ; [pp+0x1e28] "location"
    // 0x73c908: ArrayStore: r3[0] = r16  ; List_4
    //     0x73c908: stur            w16, [x3, #0x17]
    // 0x73c90c: ldur            x4, [fp, #-0x88]
    // 0x73c910: LoadField: r0 = r4->field_23
    //     0x73c910: ldur            w0, [x4, #0x23]
    // 0x73c914: DecompressPointer r0
    //     0x73c914: add             x0, x0, HEAP, lsl #32
    // 0x73c918: mov             x1, x3
    // 0x73c91c: ArrayStore: r1[3] = r0  ; List_4
    //     0x73c91c: add             x25, x1, #0x1b
    //     0x73c920: str             w0, [x25]
    //     0x73c924: tbz             w0, #0, #0x73c940
    //     0x73c928: ldurb           w16, [x1, #-1]
    //     0x73c92c: ldurb           w17, [x0, #-1]
    //     0x73c930: and             x16, x17, x16, lsr #2
    //     0x73c934: tst             x16, HEAP, lsr #32
    //     0x73c938: b.eq            #0x73c940
    //     0x73c93c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73c940: r16 = "start_date"
    //     0x73c940: add             x16, PP, #0x14, lsl #12  ; [pp+0x14048] "start_date"
    //     0x73c944: ldr             x16, [x16, #0x48]
    // 0x73c948: StoreField: r3->field_1f = r16
    //     0x73c948: stur            w16, [x3, #0x1f]
    // 0x73c94c: LoadField: r0 = r4->field_27
    //     0x73c94c: ldur            w0, [x4, #0x27]
    // 0x73c950: DecompressPointer r0
    //     0x73c950: add             x0, x0, HEAP, lsl #32
    // 0x73c954: cmp             w0, NULL
    // 0x73c958: b.eq            #0x73c96c
    // 0x73c95c: LoadField: r2 = r0->field_b
    //     0x73c95c: ldur            x2, [x0, #0xb]
    // 0x73c960: r1 = Null
    //     0x73c960: mov             x1, NULL
    // 0x73c964: r0 = Timestamp.fromMicrosecondsSinceEpoch()
    //     0x73c964: bl              #0x5dd9f0  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::Timestamp.fromMicrosecondsSinceEpoch
    // 0x73c968: b               #0x73c970
    // 0x73c96c: r0 = Null
    //     0x73c96c: mov             x0, NULL
    // 0x73c970: ldur            x4, [fp, #-0x88]
    // 0x73c974: ldur            x3, [fp, #-0xa0]
    // 0x73c978: mov             x1, x3
    // 0x73c97c: ArrayStore: r1[5] = r0  ; List_4
    //     0x73c97c: add             x25, x1, #0x23
    //     0x73c980: str             w0, [x25]
    //     0x73c984: tbz             w0, #0, #0x73c9a0
    //     0x73c988: ldurb           w16, [x1, #-1]
    //     0x73c98c: ldurb           w17, [x0, #-1]
    //     0x73c990: and             x16, x17, x16, lsr #2
    //     0x73c994: tst             x16, HEAP, lsr #32
    //     0x73c998: b.eq            #0x73c9a0
    //     0x73c99c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73c9a0: r16 = "end_date"
    //     0x73c9a0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14050] "end_date"
    //     0x73c9a4: ldr             x16, [x16, #0x50]
    // 0x73c9a8: StoreField: r3->field_27 = r16
    //     0x73c9a8: stur            w16, [x3, #0x27]
    // 0x73c9ac: LoadField: r0 = r4->field_2b
    //     0x73c9ac: ldur            w0, [x4, #0x2b]
    // 0x73c9b0: DecompressPointer r0
    //     0x73c9b0: add             x0, x0, HEAP, lsl #32
    // 0x73c9b4: cmp             w0, NULL
    // 0x73c9b8: b.eq            #0x73c9d0
    // 0x73c9bc: LoadField: r2 = r0->field_b
    //     0x73c9bc: ldur            x2, [x0, #0xb]
    // 0x73c9c0: r1 = Null
    //     0x73c9c0: mov             x1, NULL
    // 0x73c9c4: r0 = Timestamp.fromMicrosecondsSinceEpoch()
    //     0x73c9c4: bl              #0x5dd9f0  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::Timestamp.fromMicrosecondsSinceEpoch
    // 0x73c9c8: mov             x4, x0
    // 0x73c9cc: b               #0x73c9d4
    // 0x73c9d0: r4 = Null
    //     0x73c9d0: mov             x4, NULL
    // 0x73c9d4: ldur            x3, [fp, #-0x88]
    // 0x73c9d8: ldur            x2, [fp, #-0xa0]
    // 0x73c9dc: mov             x1, x2
    // 0x73c9e0: mov             x0, x4
    // 0x73c9e4: stur            x4, [fp, #-0x80]
    // 0x73c9e8: ArrayStore: r1[7] = r0  ; List_4
    //     0x73c9e8: add             x25, x1, #0x2b
    //     0x73c9ec: str             w0, [x25]
    //     0x73c9f0: tbz             w0, #0, #0x73ca0c
    //     0x73c9f4: ldurb           w16, [x1, #-1]
    //     0x73c9f8: ldurb           w17, [x0, #-1]
    //     0x73c9fc: and             x16, x17, x16, lsr #2
    //     0x73ca00: tst             x16, HEAP, lsr #32
    //     0x73ca04: b.eq            #0x73ca0c
    //     0x73ca08: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73ca0c: r16 = "note"
    //     0x73ca0c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14030] "note"
    //     0x73ca10: ldr             x16, [x16, #0x30]
    // 0x73ca14: StoreField: r2->field_2f = r16
    //     0x73ca14: stur            w16, [x2, #0x2f]
    // 0x73ca18: LoadField: r0 = r3->field_1f
    //     0x73ca18: ldur            w0, [x3, #0x1f]
    // 0x73ca1c: DecompressPointer r0
    //     0x73ca1c: add             x0, x0, HEAP, lsl #32
    // 0x73ca20: LoadField: r1 = r0->field_27
    //     0x73ca20: ldur            w1, [x0, #0x27]
    // 0x73ca24: DecompressPointer r1
    //     0x73ca24: add             x1, x1, HEAP, lsl #32
    // 0x73ca28: LoadField: r0 = r1->field_7
    //     0x73ca28: ldur            w0, [x1, #7]
    // 0x73ca2c: DecompressPointer r0
    //     0x73ca2c: add             x0, x0, HEAP, lsl #32
    // 0x73ca30: mov             x1, x0
    // 0x73ca34: r0 = trim()
    //     0x73ca34: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x73ca38: ldur            x1, [fp, #-0xa0]
    // 0x73ca3c: ArrayStore: r1[9] = r0  ; List_4
    //     0x73ca3c: add             x25, x1, #0x33
    //     0x73ca40: str             w0, [x25]
    //     0x73ca44: tbz             w0, #0, #0x73ca60
    //     0x73ca48: ldurb           w16, [x1, #-1]
    //     0x73ca4c: ldurb           w17, [x0, #-1]
    //     0x73ca50: and             x16, x17, x16, lsr #2
    //     0x73ca54: tst             x16, HEAP, lsr #32
    //     0x73ca58: b.eq            #0x73ca60
    //     0x73ca5c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73ca60: ldur            x0, [fp, #-0xa0]
    // 0x73ca64: r16 = "agency_id"
    //     0x73ca64: add             x16, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x73ca68: ldr             x16, [x16, #0x40]
    // 0x73ca6c: StoreField: r0->field_37 = r16
    //     0x73ca6c: stur            w16, [x0, #0x37]
    // 0x73ca70: ldur            x2, [fp, #-0x88]
    // 0x73ca74: LoadField: r1 = r2->field_f
    //     0x73ca74: ldur            w1, [x2, #0xf]
    // 0x73ca78: DecompressPointer r1
    //     0x73ca78: add             x1, x1, HEAP, lsl #32
    // 0x73ca7c: r0 = onDataChanged()
    //     0x73ca7c: bl              #0x617b5c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::onDataChanged
    // 0x73ca80: LoadField: r1 = r0->field_7
    //     0x73ca80: ldur            w1, [x0, #7]
    // 0x73ca84: DecompressPointer r1
    //     0x73ca84: add             x1, x1, HEAP, lsl #32
    // 0x73ca88: mov             x0, x1
    // 0x73ca8c: ldur            x1, [fp, #-0xa0]
    // 0x73ca90: ArrayStore: r1[11] = r0  ; List_4
    //     0x73ca90: add             x25, x1, #0x3b
    //     0x73ca94: str             w0, [x25]
    //     0x73ca98: tbz             w0, #0, #0x73cab4
    //     0x73ca9c: ldurb           w16, [x1, #-1]
    //     0x73caa0: ldurb           w17, [x0, #-1]
    //     0x73caa4: and             x16, x17, x16, lsr #2
    //     0x73caa8: tst             x16, HEAP, lsr #32
    //     0x73caac: b.eq            #0x73cab4
    //     0x73cab0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73cab4: ldur            x1, [fp, #-0xa0]
    // 0x73cab8: r16 = "created_at"
    //     0x73cab8: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x73cabc: ldr             x16, [x16, #0xc00]
    // 0x73cac0: StoreField: r1->field_3f = r16
    //     0x73cac0: stur            w16, [x1, #0x3f]
    // 0x73cac4: r0 = serverTimestamp()
    //     0x73cac4: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x73cac8: ldur            x1, [fp, #-0xa0]
    // 0x73cacc: ArrayStore: r1[13] = r0  ; List_4
    //     0x73cacc: add             x25, x1, #0x43
    //     0x73cad0: str             w0, [x25]
    //     0x73cad4: tbz             w0, #0, #0x73caf0
    //     0x73cad8: ldurb           w16, [x1, #-1]
    //     0x73cadc: ldurb           w17, [x0, #-1]
    //     0x73cae0: and             x16, x17, x16, lsr #2
    //     0x73cae4: tst             x16, HEAP, lsr #32
    //     0x73cae8: b.eq            #0x73caf0
    //     0x73caec: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73caf0: ldur            x1, [fp, #-0xa0]
    // 0x73caf4: r16 = "updated_at"
    //     0x73caf4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x73caf8: ldr             x16, [x16, #0x58]
    // 0x73cafc: StoreField: r1->field_47 = r16
    //     0x73cafc: stur            w16, [x1, #0x47]
    // 0x73cb00: r0 = serverTimestamp()
    //     0x73cb00: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x73cb04: ldur            x1, [fp, #-0xa0]
    // 0x73cb08: ArrayStore: r1[15] = r0  ; List_4
    //     0x73cb08: add             x25, x1, #0x4b
    //     0x73cb0c: str             w0, [x25]
    //     0x73cb10: tbz             w0, #0, #0x73cb2c
    //     0x73cb14: ldurb           w16, [x1, #-1]
    //     0x73cb18: ldurb           w17, [x0, #-1]
    //     0x73cb1c: and             x16, x17, x16, lsr #2
    //     0x73cb20: tst             x16, HEAP, lsr #32
    //     0x73cb24: b.eq            #0x73cb2c
    //     0x73cb28: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73cb2c: r16 = <String, Object?>
    //     0x73cb2c: ldr             x16, [PP, #0xe8]  ; [pp+0xe8] TypeArguments: <String, Object?>
    // 0x73cb30: ldur            lr, [fp, #-0xa0]
    // 0x73cb34: stp             lr, x16, [SP]
    // 0x73cb38: r0 = Map._fromLiteral()
    //     0x73cb38: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x73cb3c: ldur            x1, [fp, #-0x98]
    // 0x73cb40: mov             x2, x0
    // 0x73cb44: r0 = add()
    //     0x73cb44: bl              #0x6f584c  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::add
    // 0x73cb48: mov             x1, x0
    // 0x73cb4c: stur            x1, [fp, #-0x98]
    // 0x73cb50: r0 = Await()
    //     0x73cb50: bl              #0x3dd188  ; AwaitStub
    // 0x73cb54: stur            x0, [fp, #-0x98]
    // 0x73cb58: LoadField: r1 = r0->field_7
    //     0x73cb58: ldur            w1, [x0, #7]
    // 0x73cb5c: DecompressPointer r1
    //     0x73cb5c: add             x1, x1, HEAP, lsl #32
    // 0x73cb60: LoadField: r2 = r1->field_b
    //     0x73cb60: ldur            w2, [x1, #0xb]
    // 0x73cb64: DecompressPointer r2
    //     0x73cb64: add             x2, x2, HEAP, lsl #32
    // 0x73cb68: LoadField: r1 = r2->field_7
    //     0x73cb68: ldur            w1, [x2, #7]
    // 0x73cb6c: DecompressPointer r1
    //     0x73cb6c: add             x1, x1, HEAP, lsl #32
    // 0x73cb70: r0 = last()
    //     0x73cb70: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x73cb74: mov             x3, x0
    // 0x73cb78: ldur            x2, [fp, #-0x88]
    // 0x73cb7c: stur            x3, [fp, #-0xa0]
    // 0x73cb80: LoadField: r1 = r2->field_2f
    //     0x73cb80: ldur            w1, [x2, #0x2f]
    // 0x73cb84: DecompressPointer r1
    //     0x73cb84: add             x1, x1, HEAP, lsl #32
    // 0x73cb88: r0 = LoadClassIdInstr(r1)
    //     0x73cb88: ldur            x0, [x1, #-1]
    //     0x73cb8c: ubfx            x0, x0, #0xc, #0x14
    // 0x73cb90: r0 = GDT[cid_x0 + 0x90c4]()
    //     0x73cb90: mov             x17, #0x90c4
    //     0x73cb94: add             lr, x0, x17
    //     0x73cb98: ldr             lr, [x21, lr, lsl #3]
    //     0x73cb9c: blr             lr
    // 0x73cba0: mov             x2, x0
    // 0x73cba4: stur            x2, [fp, #-0x80]
    // 0x73cba8: ldur            x3, [fp, #-0x88]
    // 0x73cbac: CheckStackOverflow
    //     0x73cbac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73cbb0: cmp             SP, x16
    //     0x73cbb4: b.ls            #0x73cd70
    // 0x73cbb8: r0 = LoadClassIdInstr(r2)
    //     0x73cbb8: ldur            x0, [x2, #-1]
    //     0x73cbbc: ubfx            x0, x0, #0xc, #0x14
    // 0x73cbc0: mov             x1, x2
    // 0x73cbc4: r0 = GDT[cid_x0 + 0x4cb]()
    //     0x73cbc4: add             lr, x0, #0x4cb
    //     0x73cbc8: ldr             lr, [x21, lr, lsl #3]
    //     0x73cbcc: blr             lr
    // 0x73cbd0: tbnz            w0, #4, #0x73cc40
    // 0x73cbd4: ldur            x3, [fp, #-0x88]
    // 0x73cbd8: ldur            x2, [fp, #-0x80]
    // 0x73cbdc: r0 = LoadClassIdInstr(r2)
    //     0x73cbdc: ldur            x0, [x2, #-1]
    //     0x73cbe0: ubfx            x0, x0, #0xc, #0x14
    // 0x73cbe4: mov             x1, x2
    // 0x73cbe8: r0 = GDT[cid_x0 + 0x4f1]()
    //     0x73cbe8: add             lr, x0, #0x4f1
    //     0x73cbec: ldr             lr, [x21, lr, lsl #3]
    //     0x73cbf0: blr             lr
    // 0x73cbf4: mov             x4, x0
    // 0x73cbf8: ldur            x0, [fp, #-0x88]
    // 0x73cbfc: stur            x4, [fp, #-0x98]
    // 0x73cc00: LoadField: r1 = r0->field_f
    //     0x73cc00: ldur            w1, [x0, #0xf]
    // 0x73cc04: DecompressPointer r1
    //     0x73cc04: add             x1, x1, HEAP, lsl #32
    // 0x73cc08: LoadField: r2 = r1->field_b
    //     0x73cc08: ldur            w2, [x1, #0xb]
    // 0x73cc0c: DecompressPointer r2
    //     0x73cc0c: add             x2, x2, HEAP, lsl #32
    // 0x73cc10: cmp             w2, NULL
    // 0x73cc14: b.eq            #0x73cd78
    // 0x73cc18: LoadField: r1 = r2->field_1b
    //     0x73cc18: ldur            w1, [x2, #0x1b]
    // 0x73cc1c: DecompressPointer r1
    //     0x73cc1c: add             x1, x1, HEAP, lsl #32
    // 0x73cc20: ldur            x2, [fp, #-0xa0]
    // 0x73cc24: mov             x3, x4
    // 0x73cc28: r0 = assignTripManager()
    //     0x73cc28: bl              #0x6e2e7c  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::assignTripManager
    // 0x73cc2c: mov             x1, x0
    // 0x73cc30: stur            x1, [fp, #-0xa8]
    // 0x73cc34: r0 = Await()
    //     0x73cc34: bl              #0x3dd188  ; AwaitStub
    // 0x73cc38: ldur            x2, [fp, #-0x80]
    // 0x73cc3c: b               #0x73cba8
    // 0x73cc40: ldur            x2, [fp, #-0x90]
    // 0x73cc44: ldur            x0, [fp, #-0x88]
    // 0x73cc48: LoadField: r1 = r0->field_f
    //     0x73cc48: ldur            w1, [x0, #0xf]
    // 0x73cc4c: DecompressPointer r1
    //     0x73cc4c: add             x1, x1, HEAP, lsl #32
    // 0x73cc50: r0 = firestoreService()
    //     0x73cc50: bl              #0x6f58b8  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::firestoreService
    // 0x73cc54: stur            x0, [fp, #-0x88]
    // 0x73cc58: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x73cc58: ldur            w2, [x0, #0x17]
    // 0x73cc5c: DecompressPointer r2
    //     0x73cc5c: add             x2, x2, HEAP, lsl #32
    // 0x73cc60: mov             x1, x2
    // 0x73cc64: stur            x2, [fp, #-0x80]
    // 0x73cc68: r0 = _loadAgencyData()
    //     0x73cc68: bl              #0x63a658  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_loadAgencyData
    // 0x73cc6c: ldur            x0, [fp, #-0x90]
    // 0x73cc70: LoadField: r1 = r0->field_f
    //     0x73cc70: ldur            w1, [x0, #0xf]
    // 0x73cc74: DecompressPointer r1
    //     0x73cc74: add             x1, x1, HEAP, lsl #32
    // 0x73cc78: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x73cc78: ldur            w0, [x1, #0x17]
    // 0x73cc7c: DecompressPointer r0
    //     0x73cc7c: add             x0, x0, HEAP, lsl #32
    // 0x73cc80: cmp             w0, NULL
    // 0x73cc84: b.eq            #0x73cd34
    // 0x73cc88: r16 = <Object?>
    //     0x73cc88: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x73cc8c: stp             x1, x16, [SP]
    // 0x73cc90: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x73cc90: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x73cc94: r0 = pop()
    //     0x73cc94: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x73cc98: b               #0x73cd34
    // 0x73cc9c: sub             SP, fp, #0xc8
    // 0x73cca0: ldur            x2, [fp, #-0x78]
    // 0x73cca4: stur            x0, [fp, #-0x80]
    // 0x73cca8: LoadField: r1 = r2->field_f
    //     0x73cca8: ldur            w1, [x2, #0xf]
    // 0x73ccac: DecompressPointer r1
    //     0x73ccac: add             x1, x1, HEAP, lsl #32
    // 0x73ccb0: r0 = of()
    //     0x73ccb0: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x73ccb4: r1 = Null
    //     0x73ccb4: mov             x1, NULL
    // 0x73ccb8: r2 = 4
    //     0x73ccb8: mov             x2, #4
    // 0x73ccbc: stur            x0, [fp, #-0x78]
    // 0x73ccc0: r0 = AllocateArray()
    //     0x73ccc0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73ccc4: r16 = "Hata: "
    //     0x73ccc4: add             x16, PP, #0x19, lsl #12  ; [pp+0x191d8] "Hata: "
    //     0x73ccc8: ldr             x16, [x16, #0x1d8]
    // 0x73cccc: StoreField: r0->field_f = r16
    //     0x73cccc: stur            w16, [x0, #0xf]
    // 0x73ccd0: ldur            x1, [fp, #-0x80]
    // 0x73ccd4: StoreField: r0->field_13 = r1
    //     0x73ccd4: stur            w1, [x0, #0x13]
    // 0x73ccd8: str             x0, [SP]
    // 0x73ccdc: r0 = _interpolate()
    //     0x73ccdc: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x73cce0: stur            x0, [fp, #-0x80]
    // 0x73cce4: r0 = Text()
    //     0x73cce4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x73cce8: mov             x1, x0
    // 0x73ccec: ldur            x0, [fp, #-0x80]
    // 0x73ccf0: stur            x1, [fp, #-0x88]
    // 0x73ccf4: StoreField: r1->field_b = r0
    //     0x73ccf4: stur            w0, [x1, #0xb]
    // 0x73ccf8: r0 = SnackBar()
    //     0x73ccf8: bl              #0x5dcf84  ; AllocateSnackBarStub -> SnackBar (size=0x58)
    // 0x73ccfc: mov             x1, x0
    // 0x73cd00: ldur            x0, [fp, #-0x88]
    // 0x73cd04: StoreField: r1->field_b = r0
    //     0x73cd04: stur            w0, [x1, #0xb]
    // 0x73cd08: r0 = Instance_Duration
    //     0x73cd08: add             x0, PP, #0x18, lsl #12  ; [pp+0x18f78] Obj!Duration@a2dde1
    //     0x73cd0c: ldr             x0, [x0, #0xf78]
    // 0x73cd10: StoreField: r1->field_3f = r0
    //     0x73cd10: stur            w0, [x1, #0x3f]
    // 0x73cd14: r0 = Instance_Clip
    //     0x73cd14: add             x0, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x73cd18: ldr             x0, [x0, #0x2d8]
    // 0x73cd1c: StoreField: r1->field_53 = r0
    //     0x73cd1c: stur            w0, [x1, #0x53]
    // 0x73cd20: r0 = false
    //     0x73cd20: add             x0, NULL, #0x30  ; false
    // 0x73cd24: StoreField: r1->field_43 = r0
    //     0x73cd24: stur            w0, [x1, #0x43]
    // 0x73cd28: mov             x2, x1
    // 0x73cd2c: ldur            x1, [fp, #-0x78]
    // 0x73cd30: r0 = showSnackBar()
    //     0x73cd30: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x73cd34: r0 = Null
    //     0x73cd34: mov             x0, NULL
    // 0x73cd38: r0 = ReturnAsyncNotFuture()
    //     0x73cd38: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x73cd3c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73cd3c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73cd40: b               #0x73c2b8
    // 0x73cd44: r0 = NullErrorSharedWithoutFPURegs()
    //     0x73cd44: bl              #0x9289e0  ; NullErrorSharedWithoutFPURegsStub
    // 0x73cd48: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73cd48: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x73cd4c: r0 = NullErrorSharedWithoutFPURegs()
    //     0x73cd4c: bl              #0x9289e0  ; NullErrorSharedWithoutFPURegsStub
    // 0x73cd50: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73cd50: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x73cd54: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73cd54: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73cd58: b               #0x73c6c4
    // 0x73cd5c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73cd5c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x73cd60: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73cd60: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73cd64: b               #0x73c7b8
    // 0x73cd68: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73cd68: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x73cd6c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73cd6c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x73cd70: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73cd70: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73cd74: b               #0x73cbb8
    // 0x73cd78: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73cd78: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x73cd7c, size: 0x28
    // 0x73cd7c: r0 = true
    //     0x73cd7c: add             x0, NULL, #0x20  ; true
    // 0x73cd80: ldr             x1, [SP]
    // 0x73cd84: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x73cd84: ldur            w2, [x1, #0x17]
    // 0x73cd88: DecompressPointer r2
    //     0x73cd88: add             x2, x2, HEAP, lsl #32
    // 0x73cd8c: LoadField: r1 = r2->field_b
    //     0x73cd8c: ldur            w1, [x2, #0xb]
    // 0x73cd90: DecompressPointer r1
    //     0x73cd90: add             x1, x1, HEAP, lsl #32
    // 0x73cd94: LoadField: r2 = r1->field_b
    //     0x73cd94: ldur            w2, [x1, #0xb]
    // 0x73cd98: DecompressPointer r2
    //     0x73cd98: add             x2, x2, HEAP, lsl #32
    // 0x73cd9c: StoreField: r2->field_37 = r0
    //     0x73cd9c: stur            w0, [x2, #0x37]
    // 0x73cda0: ret
    //     0x73cda0: ret             
  }
  [closure] void <anonymous closure>(dynamic, List<String>) {
    // ** addr: 0x73cda4, size: 0x8c
    // 0x73cda4: EnterFrame
    //     0x73cda4: stp             fp, lr, [SP, #-0x10]!
    //     0x73cda8: mov             fp, SP
    // 0x73cdac: AllocStack(0x20)
    //     0x73cdac: sub             SP, SP, #0x20
    // 0x73cdb0: SetupParameters([dynamic _ /* r0 */])
    //     0x73cdb0: ldr             x0, [fp, #0x18]
    //     0x73cdb4: ldur            w1, [x0, #0x17]
    //     0x73cdb8: add             x1, x1, HEAP, lsl #32
    //     0x73cdbc: stur            x1, [fp, #-8]
    // 0x73cdc0: CheckStackOverflow
    //     0x73cdc0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73cdc4: cmp             SP, x16
    //     0x73cdc8: b.ls            #0x73ce28
    // 0x73cdcc: r1 = 1
    //     0x73cdcc: mov             x1, #1
    // 0x73cdd0: r0 = AllocateContext()
    //     0x73cdd0: bl              #0x927010  ; AllocateContextStub
    // 0x73cdd4: mov             x1, x0
    // 0x73cdd8: ldur            x0, [fp, #-8]
    // 0x73cddc: StoreField: r1->field_b = r0
    //     0x73cddc: stur            w0, [x1, #0xb]
    // 0x73cde0: ldr             x2, [fp, #0x10]
    // 0x73cde4: StoreField: r1->field_f = r2
    //     0x73cde4: stur            w2, [x1, #0xf]
    // 0x73cde8: LoadField: r3 = r0->field_13
    //     0x73cde8: ldur            w3, [x0, #0x13]
    // 0x73cdec: DecompressPointer r3
    //     0x73cdec: add             x3, x3, HEAP, lsl #32
    // 0x73cdf0: mov             x2, x1
    // 0x73cdf4: stur            x3, [fp, #-0x10]
    // 0x73cdf8: r1 = Function '<anonymous closure>':.
    //     0x73cdf8: add             x1, PP, #0x19, lsl #12  ; [pp+0x19410] AnonymousClosure: (0x6e4734), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x73cdfc: ldr             x1, [x1, #0x410]
    // 0x73ce00: r0 = AllocateClosure()
    //     0x73ce00: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73ce04: ldur            x16, [fp, #-0x10]
    // 0x73ce08: stp             x0, x16, [SP]
    // 0x73ce0c: ldur            x0, [fp, #-0x10]
    // 0x73ce10: ClosureCall
    //     0x73ce10: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x73ce14: ldur            x2, [x0, #0x1f]
    //     0x73ce18: blr             x2
    // 0x73ce1c: LeaveFrame
    //     0x73ce1c: mov             SP, fp
    //     0x73ce20: ldp             fp, lr, [SP], #0x10
    // 0x73ce24: ret
    //     0x73ce24: ret             
    // 0x73ce28: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73ce28: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73ce2c: b               #0x73cdcc
  }
  [closure] void <anonymous closure>(dynamic, DateTime?) {
    // ** addr: 0x73ce30, size: 0x8c
    // 0x73ce30: EnterFrame
    //     0x73ce30: stp             fp, lr, [SP, #-0x10]!
    //     0x73ce34: mov             fp, SP
    // 0x73ce38: AllocStack(0x20)
    //     0x73ce38: sub             SP, SP, #0x20
    // 0x73ce3c: SetupParameters([dynamic _ /* r0 */])
    //     0x73ce3c: ldr             x0, [fp, #0x18]
    //     0x73ce40: ldur            w1, [x0, #0x17]
    //     0x73ce44: add             x1, x1, HEAP, lsl #32
    //     0x73ce48: stur            x1, [fp, #-8]
    // 0x73ce4c: CheckStackOverflow
    //     0x73ce4c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73ce50: cmp             SP, x16
    //     0x73ce54: b.ls            #0x73ceb4
    // 0x73ce58: r1 = 1
    //     0x73ce58: mov             x1, #1
    // 0x73ce5c: r0 = AllocateContext()
    //     0x73ce5c: bl              #0x927010  ; AllocateContextStub
    // 0x73ce60: mov             x1, x0
    // 0x73ce64: ldur            x0, [fp, #-8]
    // 0x73ce68: StoreField: r1->field_b = r0
    //     0x73ce68: stur            w0, [x1, #0xb]
    // 0x73ce6c: ldr             x2, [fp, #0x10]
    // 0x73ce70: StoreField: r1->field_f = r2
    //     0x73ce70: stur            w2, [x1, #0xf]
    // 0x73ce74: LoadField: r3 = r0->field_13
    //     0x73ce74: ldur            w3, [x0, #0x13]
    // 0x73ce78: DecompressPointer r3
    //     0x73ce78: add             x3, x3, HEAP, lsl #32
    // 0x73ce7c: mov             x2, x1
    // 0x73ce80: stur            x3, [fp, #-0x10]
    // 0x73ce84: r1 = Function '<anonymous closure>':.
    //     0x73ce84: add             x1, PP, #0x19, lsl #12  ; [pp+0x19418] AnonymousClosure: (0x6e45c4), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x73ce88: ldr             x1, [x1, #0x418]
    // 0x73ce8c: r0 = AllocateClosure()
    //     0x73ce8c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73ce90: ldur            x16, [fp, #-0x10]
    // 0x73ce94: stp             x0, x16, [SP]
    // 0x73ce98: ldur            x0, [fp, #-0x10]
    // 0x73ce9c: ClosureCall
    //     0x73ce9c: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x73cea0: ldur            x2, [x0, #0x1f]
    //     0x73cea4: blr             x2
    // 0x73cea8: LeaveFrame
    //     0x73cea8: mov             SP, fp
    //     0x73ceac: ldp             fp, lr, [SP], #0x10
    // 0x73ceb0: ret
    //     0x73ceb0: ret             
    // 0x73ceb4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73ceb4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73ceb8: b               #0x73ce58
  }
  [closure] void <anonymous closure>(dynamic, DateTime?) {
    // ** addr: 0x73cebc, size: 0x8c
    // 0x73cebc: EnterFrame
    //     0x73cebc: stp             fp, lr, [SP, #-0x10]!
    //     0x73cec0: mov             fp, SP
    // 0x73cec4: AllocStack(0x20)
    //     0x73cec4: sub             SP, SP, #0x20
    // 0x73cec8: SetupParameters([dynamic _ /* r0 */])
    //     0x73cec8: ldr             x0, [fp, #0x18]
    //     0x73cecc: ldur            w1, [x0, #0x17]
    //     0x73ced0: add             x1, x1, HEAP, lsl #32
    //     0x73ced4: stur            x1, [fp, #-8]
    // 0x73ced8: CheckStackOverflow
    //     0x73ced8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73cedc: cmp             SP, x16
    //     0x73cee0: b.ls            #0x73cf40
    // 0x73cee4: r1 = 1
    //     0x73cee4: mov             x1, #1
    // 0x73cee8: r0 = AllocateContext()
    //     0x73cee8: bl              #0x927010  ; AllocateContextStub
    // 0x73ceec: mov             x1, x0
    // 0x73cef0: ldur            x0, [fp, #-8]
    // 0x73cef4: StoreField: r1->field_b = r0
    //     0x73cef4: stur            w0, [x1, #0xb]
    // 0x73cef8: ldr             x2, [fp, #0x10]
    // 0x73cefc: StoreField: r1->field_f = r2
    //     0x73cefc: stur            w2, [x1, #0xf]
    // 0x73cf00: LoadField: r3 = r0->field_13
    //     0x73cf00: ldur            w3, [x0, #0x13]
    // 0x73cf04: DecompressPointer r3
    //     0x73cf04: add             x3, x3, HEAP, lsl #32
    // 0x73cf08: mov             x2, x1
    // 0x73cf0c: stur            x3, [fp, #-0x10]
    // 0x73cf10: r1 = Function '<anonymous closure>':.
    //     0x73cf10: add             x1, PP, #0x19, lsl #12  ; [pp+0x19420] AnonymousClosure: (0x6e1690), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x73cf14: ldr             x1, [x1, #0x420]
    // 0x73cf18: r0 = AllocateClosure()
    //     0x73cf18: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73cf1c: ldur            x16, [fp, #-0x10]
    // 0x73cf20: stp             x0, x16, [SP]
    // 0x73cf24: ldur            x0, [fp, #-0x10]
    // 0x73cf28: ClosureCall
    //     0x73cf28: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x73cf2c: ldur            x2, [x0, #0x1f]
    //     0x73cf30: blr             x2
    // 0x73cf34: LeaveFrame
    //     0x73cf34: mov             SP, fp
    //     0x73cf38: ldp             fp, lr, [SP], #0x10
    // 0x73cf3c: ret
    //     0x73cf3c: ret             
    // 0x73cf40: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73cf40: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73cf44: b               #0x73cee4
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x73cf48, size: 0x8c
    // 0x73cf48: EnterFrame
    //     0x73cf48: stp             fp, lr, [SP, #-0x10]!
    //     0x73cf4c: mov             fp, SP
    // 0x73cf50: AllocStack(0x20)
    //     0x73cf50: sub             SP, SP, #0x20
    // 0x73cf54: SetupParameters([dynamic _ /* r0 */])
    //     0x73cf54: ldr             x0, [fp, #0x18]
    //     0x73cf58: ldur            w1, [x0, #0x17]
    //     0x73cf5c: add             x1, x1, HEAP, lsl #32
    //     0x73cf60: stur            x1, [fp, #-8]
    // 0x73cf64: CheckStackOverflow
    //     0x73cf64: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73cf68: cmp             SP, x16
    //     0x73cf6c: b.ls            #0x73cfcc
    // 0x73cf70: r1 = 1
    //     0x73cf70: mov             x1, #1
    // 0x73cf74: r0 = AllocateContext()
    //     0x73cf74: bl              #0x927010  ; AllocateContextStub
    // 0x73cf78: mov             x1, x0
    // 0x73cf7c: ldur            x0, [fp, #-8]
    // 0x73cf80: StoreField: r1->field_b = r0
    //     0x73cf80: stur            w0, [x1, #0xb]
    // 0x73cf84: ldr             x2, [fp, #0x10]
    // 0x73cf88: StoreField: r1->field_f = r2
    //     0x73cf88: stur            w2, [x1, #0xf]
    // 0x73cf8c: LoadField: r3 = r0->field_13
    //     0x73cf8c: ldur            w3, [x0, #0x13]
    // 0x73cf90: DecompressPointer r3
    //     0x73cf90: add             x3, x3, HEAP, lsl #32
    // 0x73cf94: mov             x2, x1
    // 0x73cf98: stur            x3, [fp, #-0x10]
    // 0x73cf9c: r1 = Function '<anonymous closure>':.
    //     0x73cf9c: add             x1, PP, #0x19, lsl #12  ; [pp+0x19428] AnonymousClosure: (0x6e5c50), in [package:umrem_demo/features/admin/widgets/hotel/hotels_tab.dart] HotelsTab::_openCreateHotelSheet (0x6e6dbc)
    //     0x73cfa0: ldr             x1, [x1, #0x428]
    // 0x73cfa4: r0 = AllocateClosure()
    //     0x73cfa4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73cfa8: ldur            x16, [fp, #-0x10]
    // 0x73cfac: stp             x0, x16, [SP]
    // 0x73cfb0: ldur            x0, [fp, #-0x10]
    // 0x73cfb4: ClosureCall
    //     0x73cfb4: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x73cfb8: ldur            x2, [x0, #0x1f]
    //     0x73cfbc: blr             x2
    // 0x73cfc0: LeaveFrame
    //     0x73cfc0: mov             SP, fp
    //     0x73cfc4: ldp             fp, lr, [SP], #0x10
    // 0x73cfc8: ret
    //     0x73cfc8: ret             
    // 0x73cfcc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73cfcc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73cfd0: b               #0x73cf70
  }
  _ build(/* No info */) {
    // ** addr: 0x74842c, size: 0x13c
    // 0x74842c: EnterFrame
    //     0x74842c: stp             fp, lr, [SP, #-0x10]!
    //     0x748430: mov             fp, SP
    // 0x748434: AllocStack(0x28)
    //     0x748434: sub             SP, SP, #0x28
    // 0x748438: SetupParameters(TripsTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x748438: stur            x1, [fp, #-8]
    //     0x74843c: stur            x2, [fp, #-0x10]
    // 0x748440: CheckStackOverflow
    //     0x748440: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x748444: cmp             SP, x16
    //     0x748448: b.ls            #0x74855c
    // 0x74844c: r1 = 2
    //     0x74844c: mov             x1, #2
    // 0x748450: r0 = AllocateContext()
    //     0x748450: bl              #0x927010  ; AllocateContextStub
    // 0x748454: mov             x3, x0
    // 0x748458: ldur            x2, [fp, #-8]
    // 0x74845c: stur            x3, [fp, #-0x18]
    // 0x748460: StoreField: r3->field_f = r2
    //     0x748460: stur            w2, [x3, #0xf]
    // 0x748464: ldur            x0, [fp, #-0x10]
    // 0x748468: StoreField: r3->field_13 = r0
    //     0x748468: stur            w0, [x3, #0x13]
    // 0x74846c: LoadField: r0 = r2->field_b
    //     0x74846c: ldur            w0, [x2, #0xb]
    // 0x748470: DecompressPointer r0
    //     0x748470: add             x0, x0, HEAP, lsl #32
    // 0x748474: cmp             w0, NULL
    // 0x748478: b.eq            #0x748564
    // 0x74847c: LoadField: r1 = r0->field_b
    //     0x74847c: ldur            w1, [x0, #0xb]
    // 0x748480: DecompressPointer r1
    //     0x748480: add             x1, x1, HEAP, lsl #32
    // 0x748484: r0 = LoadClassIdInstr(r1)
    //     0x748484: ldur            x0, [x1, #-1]
    //     0x748488: ubfx            x0, x0, #0xc, #0x14
    // 0x74848c: r0 = GDT[cid_x0 + 0xcda7]()
    //     0x74848c: mov             x17, #0xcda7
    //     0x748490: add             lr, x0, x17
    //     0x748494: ldr             lr, [x21, lr, lsl #3]
    //     0x748498: blr             lr
    // 0x74849c: tbnz            w0, #4, #0x7484dc
    // 0x7484a0: ldur            x2, [fp, #-0x18]
    // 0x7484a4: r1 = Function '<anonymous closure>':.
    //     0x7484a4: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fab0] AnonymousClosure: (0x749404), in [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::build (0x74842c)
    //     0x7484a8: ldr             x1, [x1, #0xab0]
    // 0x7484ac: r0 = AllocateClosure()
    //     0x7484ac: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7484b0: mov             x5, x0
    // 0x7484b4: r1 = Instance_IconData
    //     0x7484b4: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fab8] Obj!IconData@a0a801
    //     0x7484b8: ldr             x1, [x1, #0xab8]
    // 0x7484bc: r2 = "Sefer bulunamadı"
    //     0x7484bc: add             x2, PP, #0x1f, lsl #12  ; [pp+0x1fac0] "Sefer bulunamadı"
    //     0x7484c0: ldr             x2, [x2, #0xac0]
    // 0x7484c4: r3 = "Sefer Ekle"
    //     0x7484c4: add             x3, PP, #0x1f, lsl #12  ; [pp+0x1fac8] "Sefer Ekle"
    //     0x7484c8: ldr             x3, [x3, #0xac8]
    // 0x7484cc: r0 = buildEmptyState()
    //     0x7484cc: bl              #0x7438ac  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildEmptyState
    // 0x7484d0: LeaveFrame
    //     0x7484d0: mov             SP, fp
    //     0x7484d4: ldp             fp, lr, [SP], #0x10
    // 0x7484d8: ret
    //     0x7484d8: ret             
    // 0x7484dc: ldur            x1, [fp, #-8]
    // 0x7484e0: r0 = build()
    //     0x7484e0: bl              #0x6beb0c  ; [package:flutter/src/widgets/will_pop_scope.dart] _WillPopScopeState::build
    // 0x7484e4: r1 = LoadClassIdInstr(r0)
    //     0x7484e4: ldur            x1, [x0, #-1]
    //     0x7484e8: ubfx            x1, x1, #0xc, #0x14
    // 0x7484ec: str             x0, [SP]
    // 0x7484f0: mov             x0, x1
    // 0x7484f4: r0 = GDT[cid_x0 + 0x879f]()
    //     0x7484f4: mov             x17, #0x879f
    //     0x7484f8: add             lr, x0, x17
    //     0x7484fc: ldr             lr, [x21, lr, lsl #3]
    //     0x748500: blr             lr
    // 0x748504: r3 = LoadInt32Instr(r0)
    //     0x748504: sbfx            x3, x0, #1, #0x1f
    // 0x748508: ldur            x2, [fp, #-0x18]
    // 0x74850c: stur            x3, [fp, #-0x20]
    // 0x748510: r1 = Function '<anonymous closure>':.
    //     0x748510: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fad0] AnonymousClosure: (0x748568), in [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::build (0x74842c)
    //     0x748514: ldr             x1, [x1, #0xad0]
    // 0x748518: r0 = AllocateClosure()
    //     0x748518: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74851c: stur            x0, [fp, #-8]
    // 0x748520: r0 = ListView()
    //     0x748520: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x748524: stur            x0, [fp, #-0x10]
    // 0x748528: r16 = Instance_EdgeInsets
    //     0x748528: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x74852c: ldr             x16, [x16, #0x240]
    // 0x748530: str             x16, [SP]
    // 0x748534: mov             x1, x0
    // 0x748538: ldur            x2, [fp, #-8]
    // 0x74853c: ldur            x3, [fp, #-0x20]
    // 0x748540: r4 = const [0, 0x4, 0x1, 0x3, padding, 0x3, null]
    //     0x748540: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e60] List(7) [0, 0x4, 0x1, 0x3, "padding", 0x3, Null]
    //     0x748544: ldr             x4, [x4, #0xe60]
    // 0x748548: r0 = ListView.builder()
    //     0x748548: bl              #0x6ce4a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.builder
    // 0x74854c: ldur            x0, [fp, #-0x10]
    // 0x748550: LeaveFrame
    //     0x748550: mov             SP, fp
    //     0x748554: ldp             fp, lr, [SP], #0x10
    // 0x748558: ret
    //     0x748558: ret             
    // 0x74855c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74855c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x748560: b               #0x74844c
    // 0x748564: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x748564: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x748568, size: 0xa0
    // 0x748568: EnterFrame
    //     0x748568: stp             fp, lr, [SP, #-0x10]!
    //     0x74856c: mov             fp, SP
    // 0x748570: AllocStack(0x18)
    //     0x748570: sub             SP, SP, #0x18
    // 0x748574: SetupParameters([dynamic _ /* r0 */])
    //     0x748574: ldr             x0, [fp, #0x20]
    //     0x748578: ldur            w1, [x0, #0x17]
    //     0x74857c: add             x1, x1, HEAP, lsl #32
    //     0x748580: stur            x1, [fp, #-8]
    // 0x748584: CheckStackOverflow
    //     0x748584: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x748588: cmp             SP, x16
    //     0x74858c: b.ls            #0x7485fc
    // 0x748590: LoadField: r0 = r1->field_f
    //     0x748590: ldur            w0, [x1, #0xf]
    // 0x748594: DecompressPointer r0
    //     0x748594: add             x0, x0, HEAP, lsl #32
    // 0x748598: LoadField: r2 = r0->field_b
    //     0x748598: ldur            w2, [x0, #0xb]
    // 0x74859c: DecompressPointer r2
    //     0x74859c: add             x2, x2, HEAP, lsl #32
    // 0x7485a0: cmp             w2, NULL
    // 0x7485a4: b.eq            #0x748604
    // 0x7485a8: LoadField: r0 = r2->field_b
    //     0x7485a8: ldur            w0, [x2, #0xb]
    // 0x7485ac: DecompressPointer r0
    //     0x7485ac: add             x0, x0, HEAP, lsl #32
    // 0x7485b0: r2 = LoadClassIdInstr(r0)
    //     0x7485b0: ldur            x2, [x0, #-1]
    //     0x7485b4: ubfx            x2, x2, #0xc, #0x14
    // 0x7485b8: ldr             x16, [fp, #0x10]
    // 0x7485bc: stp             x16, x0, [SP]
    // 0x7485c0: mov             x0, x2
    // 0x7485c4: r0 = GDT[cid_x0 + -0xdfc]()
    //     0x7485c4: sub             lr, x0, #0xdfc
    //     0x7485c8: ldr             lr, [x21, lr, lsl #3]
    //     0x7485cc: blr             lr
    // 0x7485d0: mov             x1, x0
    // 0x7485d4: ldur            x0, [fp, #-8]
    // 0x7485d8: LoadField: r2 = r0->field_f
    //     0x7485d8: ldur            w2, [x0, #0xf]
    // 0x7485dc: DecompressPointer r2
    //     0x7485dc: add             x2, x2, HEAP, lsl #32
    // 0x7485e0: mov             x3, x1
    // 0x7485e4: mov             x1, x2
    // 0x7485e8: ldr             x2, [fp, #0x18]
    // 0x7485ec: r0 = _buildTripCard()
    //     0x7485ec: bl              #0x748608  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::_buildTripCard
    // 0x7485f0: LeaveFrame
    //     0x7485f0: mov             SP, fp
    //     0x7485f4: ldp             fp, lr, [SP], #0x10
    // 0x7485f8: ret
    //     0x7485f8: ret             
    // 0x7485fc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7485fc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x748600: b               #0x748590
    // 0x748604: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x748604: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _buildTripCard(/* No info */) {
    // ** addr: 0x748608, size: 0x7e0
    // 0x748608: EnterFrame
    //     0x748608: stp             fp, lr, [SP, #-0x10]!
    //     0x74860c: mov             fp, SP
    // 0x748610: AllocStack(0x68)
    //     0x748610: sub             SP, SP, #0x68
    // 0x748614: SetupParameters(TripsTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x748614: stur            x1, [fp, #-8]
    //     0x748618: stur            x2, [fp, #-0x10]
    //     0x74861c: stur            x3, [fp, #-0x18]
    // 0x748620: CheckStackOverflow
    //     0x748620: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x748624: cmp             SP, x16
    //     0x748628: b.ls            #0x748dd0
    // 0x74862c: r1 = 4
    //     0x74862c: mov             x1, #4
    // 0x748630: r0 = AllocateContext()
    //     0x748630: bl              #0x927010  ; AllocateContextStub
    // 0x748634: mov             x4, x0
    // 0x748638: ldur            x3, [fp, #-8]
    // 0x74863c: stur            x4, [fp, #-0x20]
    // 0x748640: StoreField: r4->field_f = r3
    //     0x748640: stur            w3, [x4, #0xf]
    // 0x748644: ldur            x0, [fp, #-0x10]
    // 0x748648: StoreField: r4->field_13 = r0
    //     0x748648: stur            w0, [x4, #0x13]
    // 0x74864c: ldur            x0, [fp, #-0x18]
    // 0x748650: ArrayStore: r4[0] = r0  ; List_4
    //     0x748650: stur            w0, [x4, #0x17]
    // 0x748654: LoadField: r1 = r3->field_b
    //     0x748654: ldur            w1, [x3, #0xb]
    // 0x748658: DecompressPointer r1
    //     0x748658: add             x1, x1, HEAP, lsl #32
    // 0x74865c: cmp             w1, NULL
    // 0x748660: b.eq            #0x748dd8
    // 0x748664: LoadField: r2 = r1->field_13
    //     0x748664: ldur            w2, [x1, #0x13]
    // 0x748668: DecompressPointer r2
    //     0x748668: add             x2, x2, HEAP, lsl #32
    // 0x74866c: LoadField: r1 = r0->field_7
    //     0x74866c: ldur            w1, [x0, #7]
    // 0x748670: DecompressPointer r1
    //     0x748670: add             x1, x1, HEAP, lsl #32
    // 0x748674: r0 = LoadClassIdInstr(r2)
    //     0x748674: ldur            x0, [x2, #-1]
    //     0x748678: ubfx            x0, x0, #0xc, #0x14
    // 0x74867c: mov             x16, x1
    // 0x748680: mov             x1, x2
    // 0x748684: mov             x2, x16
    // 0x748688: r0 = GDT[cid_x0 + 0x36e]()
    //     0x748688: add             lr, x0, #0x36e
    //     0x74868c: ldr             lr, [x21, lr, lsl #3]
    //     0x748690: blr             lr
    // 0x748694: cmp             w0, NULL
    // 0x748698: b.ne            #0x7486a8
    // 0x74869c: r1 = <String>
    //     0x74869c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7486a0: r2 = 0
    //     0x7486a0: mov             x2, #0
    // 0x7486a4: r0 = _GrowableList()
    //     0x7486a4: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7486a8: ldur            x1, [fp, #-8]
    // 0x7486ac: ldur            x3, [fp, #-0x20]
    // 0x7486b0: StoreField: r3->field_1b = r0
    //     0x7486b0: stur            w0, [x3, #0x1b]
    //     0x7486b4: tbz             w0, #0, #0x7486d0
    //     0x7486b8: ldurb           w16, [x3, #-1]
    //     0x7486bc: ldurb           w17, [x0, #-1]
    //     0x7486c0: and             x16, x17, x16, lsr #2
    //     0x7486c4: tst             x16, HEAP, lsr #32
    //     0x7486c8: b.eq            #0x7486d0
    //     0x7486cc: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x7486d0: LoadField: r0 = r1->field_b
    //     0x7486d0: ldur            w0, [x1, #0xb]
    // 0x7486d4: DecompressPointer r0
    //     0x7486d4: add             x0, x0, HEAP, lsl #32
    // 0x7486d8: cmp             w0, NULL
    // 0x7486dc: b.eq            #0x748ddc
    // 0x7486e0: LoadField: r4 = r0->field_f
    //     0x7486e0: ldur            w4, [x0, #0xf]
    // 0x7486e4: DecompressPointer r4
    //     0x7486e4: add             x4, x4, HEAP, lsl #32
    // 0x7486e8: mov             x2, x3
    // 0x7486ec: stur            x4, [fp, #-8]
    // 0x7486f0: r1 = Function '<anonymous closure>':.
    //     0x7486f0: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fad8] AnonymousClosure: (0x749398), in [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::_buildTripCard (0x748608)
    //     0x7486f4: ldr             x1, [x1, #0xad8]
    // 0x7486f8: r0 = AllocateClosure()
    //     0x7486f8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7486fc: ldur            x1, [fp, #-8]
    // 0x748700: r2 = LoadClassIdInstr(r1)
    //     0x748700: ldur            x2, [x1, #-1]
    //     0x748704: ubfx            x2, x2, #0xc, #0x14
    // 0x748708: mov             x16, x0
    // 0x74870c: mov             x0, x2
    // 0x748710: mov             x2, x16
    // 0x748714: r0 = GDT[cid_x0 + 0xd348]()
    //     0x748714: mov             x17, #0xd348
    //     0x748718: add             lr, x0, x17
    //     0x74871c: ldr             lr, [x21, lr, lsl #3]
    //     0x748720: blr             lr
    // 0x748724: LoadField: r1 = r0->field_7
    //     0x748724: ldur            w1, [x0, #7]
    // 0x748728: DecompressPointer r1
    //     0x748728: add             x1, x1, HEAP, lsl #32
    // 0x74872c: mov             x2, x0
    // 0x748730: r0 = _GrowableList.of()
    //     0x748730: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x748734: r1 = Function '<anonymous closure>':.
    //     0x748734: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fae0] Function: [dart:ui] Paint::_objects (0x79b7bc)
    //     0x748738: ldr             x1, [x1, #0xae0]
    // 0x74873c: r2 = Null
    //     0x74873c: mov             x2, NULL
    // 0x748740: stur            x0, [fp, #-8]
    // 0x748744: r0 = AllocateClosure()
    //     0x748744: bl              #0x9273d4  ; AllocateClosureStub
    // 0x748748: r16 = <String>
    //     0x748748: ldr             x16, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x74874c: ldur            lr, [fp, #-8]
    // 0x748750: stp             lr, x16, [SP, #8]
    // 0x748754: str             x0, [SP]
    // 0x748758: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x748758: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x74875c: r0 = map()
    //     0x74875c: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x748760: r16 = ", "
    //     0x748760: ldr             x16, [PP, #0xa40]  ; [pp+0xa40] ", "
    // 0x748764: str             x16, [SP]
    // 0x748768: mov             x1, x0
    // 0x74876c: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x74876c: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x748770: r0 = join()
    //     0x748770: bl              #0x4d2fa8  ; [dart:_internal] ListIterable::join
    // 0x748774: stur            x0, [fp, #-8]
    // 0x748778: r16 = 0.080000
    //     0x748778: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e30] 0.08
    //     0x74877c: ldr             x16, [x16, #0xe30]
    // 0x748780: str             x16, [SP]
    // 0x748784: r1 = Instance_Color
    //     0x748784: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x748788: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x748788: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x74878c: ldr             x4, [x4, #0x198]
    // 0x748790: r0 = withValues()
    //     0x748790: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x748794: stur            x0, [fp, #-0x10]
    // 0x748798: r0 = Radius()
    //     0x748798: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x74879c: d0 = 12.000000
    //     0x74879c: fmov            d0, #12.00000000
    // 0x7487a0: stur            x0, [fp, #-0x18]
    // 0x7487a4: StoreField: r0->field_7 = d0
    //     0x7487a4: stur            d0, [x0, #7]
    // 0x7487a8: StoreField: r0->field_f = d0
    //     0x7487a8: stur            d0, [x0, #0xf]
    // 0x7487ac: r0 = BorderRadius()
    //     0x7487ac: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7487b0: mov             x1, x0
    // 0x7487b4: ldur            x0, [fp, #-0x18]
    // 0x7487b8: stur            x1, [fp, #-0x28]
    // 0x7487bc: StoreField: r1->field_7 = r0
    //     0x7487bc: stur            w0, [x1, #7]
    // 0x7487c0: StoreField: r1->field_b = r0
    //     0x7487c0: stur            w0, [x1, #0xb]
    // 0x7487c4: StoreField: r1->field_f = r0
    //     0x7487c4: stur            w0, [x1, #0xf]
    // 0x7487c8: StoreField: r1->field_13 = r0
    //     0x7487c8: stur            w0, [x1, #0x13]
    // 0x7487cc: r0 = BoxDecoration()
    //     0x7487cc: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7487d0: mov             x1, x0
    // 0x7487d4: ldur            x0, [fp, #-0x10]
    // 0x7487d8: stur            x1, [fp, #-0x30]
    // 0x7487dc: StoreField: r1->field_7 = r0
    //     0x7487dc: stur            w0, [x1, #7]
    // 0x7487e0: ldur            x0, [fp, #-0x28]
    // 0x7487e4: StoreField: r1->field_13 = r0
    //     0x7487e4: stur            w0, [x1, #0x13]
    // 0x7487e8: r0 = Instance_BoxShape
    //     0x7487e8: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7487ec: ldr             x0, [x0, #0x1c8]
    // 0x7487f0: StoreField: r1->field_23 = r0
    //     0x7487f0: stur            w0, [x1, #0x23]
    // 0x7487f4: ldur            x2, [fp, #-0x20]
    // 0x7487f8: ArrayLoad: r0 = r2[0]  ; List_4
    //     0x7487f8: ldur            w0, [x2, #0x17]
    // 0x7487fc: DecompressPointer r0
    //     0x7487fc: add             x0, x0, HEAP, lsl #32
    // 0x748800: stur            x0, [fp, #-0x18]
    // 0x748804: LoadField: r3 = r0->field_b
    //     0x748804: ldur            w3, [x0, #0xb]
    // 0x748808: DecompressPointer r3
    //     0x748808: add             x3, x3, HEAP, lsl #32
    // 0x74880c: LoadField: r4 = r3->field_7
    //     0x74880c: ldur            w4, [x3, #7]
    // 0x748810: cbnz            w4, #0x74881c
    // 0x748814: r3 = "İsimsiz Sefer"
    //     0x748814: add             x3, PP, #0x1f, lsl #12  ; [pp+0x1fae8] "İsimsiz Sefer"
    //     0x748818: ldr             x3, [x3, #0xae8]
    // 0x74881c: stur            x3, [fp, #-0x10]
    // 0x748820: r0 = Text()
    //     0x748820: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x748824: mov             x2, x0
    // 0x748828: ldur            x0, [fp, #-0x10]
    // 0x74882c: stur            x2, [fp, #-0x28]
    // 0x748830: StoreField: r2->field_b = r0
    //     0x748830: stur            w0, [x2, #0xb]
    // 0x748834: r0 = Instance_TextStyle
    //     0x748834: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1faf0] Obj!TextStyle@a17ec1
    //     0x748838: ldr             x0, [x0, #0xaf0]
    // 0x74883c: StoreField: r2->field_13 = r0
    //     0x74883c: stur            w0, [x2, #0x13]
    // 0x748840: r1 = <FlexParentData>
    //     0x748840: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x748844: ldr             x1, [x1, #0x340]
    // 0x748848: r0 = Expanded()
    //     0x748848: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x74884c: mov             x3, x0
    // 0x748850: r0 = 1
    //     0x748850: mov             x0, #1
    // 0x748854: stur            x3, [fp, #-0x10]
    // 0x748858: StoreField: r3->field_13 = r0
    //     0x748858: stur            x0, [x3, #0x13]
    // 0x74885c: r0 = Instance_FlexFit
    //     0x74885c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x748860: ldr             x0, [x0, #0x348]
    // 0x748864: StoreField: r3->field_1b = r0
    //     0x748864: stur            w0, [x3, #0x1b]
    // 0x748868: ldur            x0, [fp, #-0x28]
    // 0x74886c: StoreField: r3->field_b = r0
    //     0x74886c: stur            w0, [x3, #0xb]
    // 0x748870: ldur            x2, [fp, #-0x20]
    // 0x748874: r1 = Function '<anonymous closure>':.
    //     0x748874: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1faf8] AnonymousClosure: (0x749340), in [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::_buildTripCard (0x748608)
    //     0x748878: ldr             x1, [x1, #0xaf8]
    // 0x74887c: r0 = AllocateClosure()
    //     0x74887c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x748880: stur            x0, [fp, #-0x28]
    // 0x748884: r0 = IconButton()
    //     0x748884: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x748888: mov             x3, x0
    // 0x74888c: ldur            x0, [fp, #-0x28]
    // 0x748890: stur            x3, [fp, #-0x38]
    // 0x748894: StoreField: r3->field_3b = r0
    //     0x748894: stur            w0, [x3, #0x3b]
    // 0x748898: r0 = false
    //     0x748898: add             x0, NULL, #0x30  ; false
    // 0x74889c: StoreField: r3->field_4f = r0
    //     0x74889c: stur            w0, [x3, #0x4f]
    // 0x7488a0: r1 = Instance_Icon
    //     0x7488a0: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fa58] Obj!Icon@a1ed71
    //     0x7488a4: ldr             x1, [x1, #0xa58]
    // 0x7488a8: StoreField: r3->field_1f = r1
    //     0x7488a8: stur            w1, [x3, #0x1f]
    // 0x7488ac: r4 = Instance__IconButtonVariant
    //     0x7488ac: add             x4, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x7488b0: ldr             x4, [x4, #0x1b8]
    // 0x7488b4: StoreField: r3->field_6f = r4
    //     0x7488b4: stur            w4, [x3, #0x6f]
    // 0x7488b8: ldur            x2, [fp, #-0x20]
    // 0x7488bc: r1 = Function '<anonymous closure>':.
    //     0x7488bc: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fb00] AnonymousClosure: (0x748de8), in [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::_buildTripCard (0x748608)
    //     0x7488c0: ldr             x1, [x1, #0xb00]
    // 0x7488c4: r0 = AllocateClosure()
    //     0x7488c4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7488c8: stur            x0, [fp, #-0x28]
    // 0x7488cc: r0 = IconButton()
    //     0x7488cc: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x7488d0: mov             x3, x0
    // 0x7488d4: ldur            x0, [fp, #-0x28]
    // 0x7488d8: stur            x3, [fp, #-0x40]
    // 0x7488dc: StoreField: r3->field_3b = r0
    //     0x7488dc: stur            w0, [x3, #0x3b]
    // 0x7488e0: r0 = false
    //     0x7488e0: add             x0, NULL, #0x30  ; false
    // 0x7488e4: StoreField: r3->field_4f = r0
    //     0x7488e4: stur            w0, [x3, #0x4f]
    // 0x7488e8: r0 = Instance_Icon
    //     0x7488e8: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fa68] Obj!Icon@a1e471
    //     0x7488ec: ldr             x0, [x0, #0xa68]
    // 0x7488f0: StoreField: r3->field_1f = r0
    //     0x7488f0: stur            w0, [x3, #0x1f]
    // 0x7488f4: r0 = Instance__IconButtonVariant
    //     0x7488f4: add             x0, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x7488f8: ldr             x0, [x0, #0x1b8]
    // 0x7488fc: StoreField: r3->field_6f = r0
    //     0x7488fc: stur            w0, [x3, #0x6f]
    // 0x748900: r1 = Null
    //     0x748900: mov             x1, NULL
    // 0x748904: r2 = 10
    //     0x748904: mov             x2, #0xa
    // 0x748908: r0 = AllocateArray()
    //     0x748908: bl              #0x9280a0  ; AllocateArrayStub
    // 0x74890c: stur            x0, [fp, #-0x28]
    // 0x748910: r16 = Instance_Icon
    //     0x748910: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fb08] Obj!Icon@a1ee71
    //     0x748914: ldr             x16, [x16, #0xb08]
    // 0x748918: StoreField: r0->field_f = r16
    //     0x748918: stur            w16, [x0, #0xf]
    // 0x74891c: r16 = Instance_SizedBox
    //     0x74891c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x748920: ldr             x16, [x16, #0x368]
    // 0x748924: StoreField: r0->field_13 = r16
    //     0x748924: stur            w16, [x0, #0x13]
    // 0x748928: ldur            x1, [fp, #-0x10]
    // 0x74892c: ArrayStore: r0[0] = r1  ; List_4
    //     0x74892c: stur            w1, [x0, #0x17]
    // 0x748930: ldur            x1, [fp, #-0x38]
    // 0x748934: StoreField: r0->field_1b = r1
    //     0x748934: stur            w1, [x0, #0x1b]
    // 0x748938: ldur            x1, [fp, #-0x40]
    // 0x74893c: StoreField: r0->field_1f = r1
    //     0x74893c: stur            w1, [x0, #0x1f]
    // 0x748940: r1 = <Widget>
    //     0x748940: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x748944: r0 = AllocateGrowableArray()
    //     0x748944: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x748948: mov             x1, x0
    // 0x74894c: ldur            x0, [fp, #-0x28]
    // 0x748950: stur            x1, [fp, #-0x10]
    // 0x748954: StoreField: r1->field_f = r0
    //     0x748954: stur            w0, [x1, #0xf]
    // 0x748958: r2 = 10
    //     0x748958: mov             x2, #0xa
    // 0x74895c: StoreField: r1->field_b = r2
    //     0x74895c: stur            w2, [x1, #0xb]
    // 0x748960: r0 = Row()
    //     0x748960: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x748964: mov             x4, x0
    // 0x748968: r0 = Instance_Axis
    //     0x748968: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x74896c: stur            x4, [fp, #-0x28]
    // 0x748970: StoreField: r4->field_f = r0
    //     0x748970: stur            w0, [x4, #0xf]
    // 0x748974: r0 = Instance_MainAxisAlignment
    //     0x748974: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x748978: ldr             x0, [x0, #0x230]
    // 0x74897c: StoreField: r4->field_13 = r0
    //     0x74897c: stur            w0, [x4, #0x13]
    // 0x748980: r5 = Instance_MainAxisSize
    //     0x748980: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x748984: ldr             x5, [x5, #0x330]
    // 0x748988: ArrayStore: r4[0] = r5  ; List_4
    //     0x748988: stur            w5, [x4, #0x17]
    // 0x74898c: r1 = Instance_CrossAxisAlignment
    //     0x74898c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x748990: ldr             x1, [x1, #0x338]
    // 0x748994: StoreField: r4->field_1b = r1
    //     0x748994: stur            w1, [x4, #0x1b]
    // 0x748998: r6 = Instance_VerticalDirection
    //     0x748998: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x74899c: ldr             x6, [x6, #0x340]
    // 0x7489a0: StoreField: r4->field_23 = r6
    //     0x7489a0: stur            w6, [x4, #0x23]
    // 0x7489a4: r7 = Instance_Clip
    //     0x7489a4: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7489a8: ldr             x7, [x7, #0x348]
    // 0x7489ac: StoreField: r4->field_2b = r7
    //     0x7489ac: stur            w7, [x4, #0x2b]
    // 0x7489b0: StoreField: r4->field_2f = rZR
    //     0x7489b0: stur            xzr, [x4, #0x2f]
    // 0x7489b4: ldur            x1, [fp, #-0x10]
    // 0x7489b8: StoreField: r4->field_b = r1
    //     0x7489b8: stur            w1, [x4, #0xb]
    // 0x7489bc: ldur            x1, [fp, #-0x18]
    // 0x7489c0: LoadField: r2 = r1->field_f
    //     0x7489c0: ldur            w2, [x1, #0xf]
    // 0x7489c4: DecompressPointer r2
    //     0x7489c4: add             x2, x2, HEAP, lsl #32
    // 0x7489c8: cmp             w2, NULL
    // 0x7489cc: b.ne            #0x7489d8
    // 0x7489d0: r3 = "-"
    //     0x7489d0: ldr             x3, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x7489d4: b               #0x7489dc
    // 0x7489d8: mov             x3, x2
    // 0x7489dc: ldur            x8, [fp, #-0x20]
    // 0x7489e0: r1 = Instance_IconData
    //     0x7489e0: add             x1, PP, #0x14, lsl #12  ; [pp+0x14920] Obj!IconData@a09f41
    //     0x7489e4: ldr             x1, [x1, #0x920]
    // 0x7489e8: r2 = "Lokasyon"
    //     0x7489e8: add             x2, PP, #0x19, lsl #12  ; [pp+0x193b8] "Lokasyon"
    //     0x7489ec: ldr             x2, [x2, #0x3b8]
    // 0x7489f0: r0 = buildInfoRow()
    //     0x7489f0: bl              #0x745170  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildInfoRow
    // 0x7489f4: mov             x1, x0
    // 0x7489f8: ldur            x0, [fp, #-0x20]
    // 0x7489fc: stur            x1, [fp, #-0x10]
    // 0x748a00: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x748a00: ldur            w2, [x0, #0x17]
    // 0x748a04: DecompressPointer r2
    //     0x748a04: add             x2, x2, HEAP, lsl #32
    // 0x748a08: LoadField: r3 = r2->field_13
    //     0x748a08: ldur            w3, [x2, #0x13]
    // 0x748a0c: DecompressPointer r3
    //     0x748a0c: add             x3, x3, HEAP, lsl #32
    // 0x748a10: cmp             w3, NULL
    // 0x748a14: b.ne            #0x748a20
    // 0x748a18: r0 = Null
    //     0x748a18: mov             x0, NULL
    // 0x748a1c: b               #0x748a7c
    // 0x748a20: str             x3, [SP]
    // 0x748a24: r0 = toString()
    //     0x748a24: bl              #0x797c58  ; [dart:core] DateTime::toString
    // 0x748a28: r1 = LoadClassIdInstr(r0)
    //     0x748a28: ldur            x1, [x0, #-1]
    //     0x748a2c: ubfx            x1, x1, #0xc, #0x14
    // 0x748a30: mov             x16, x0
    // 0x748a34: mov             x0, x1
    // 0x748a38: mov             x1, x16
    // 0x748a3c: r2 = " "
    //     0x748a3c: ldr             x2, [PP, #0x3b8]  ; [pp+0x3b8] " "
    // 0x748a40: r0 = GDT[cid_x0 + -0x1000]()
    //     0x748a40: sub             lr, x0, #1, lsl #12
    //     0x748a44: ldr             lr, [x21, lr, lsl #3]
    //     0x748a48: blr             lr
    // 0x748a4c: mov             x2, x0
    // 0x748a50: LoadField: r0 = r2->field_b
    //     0x748a50: ldur            w0, [x2, #0xb]
    // 0x748a54: r1 = LoadInt32Instr(r0)
    //     0x748a54: sbfx            x1, x0, #1, #0x1f
    // 0x748a58: mov             x0, x1
    // 0x748a5c: r1 = 0
    //     0x748a5c: mov             x1, #0
    // 0x748a60: cmp             x1, x0
    // 0x748a64: b.hs            #0x748de0
    // 0x748a68: LoadField: r0 = r2->field_f
    //     0x748a68: ldur            w0, [x2, #0xf]
    // 0x748a6c: DecompressPointer r0
    //     0x748a6c: add             x0, x0, HEAP, lsl #32
    // 0x748a70: LoadField: r1 = r0->field_f
    //     0x748a70: ldur            w1, [x0, #0xf]
    // 0x748a74: DecompressPointer r1
    //     0x748a74: add             x1, x1, HEAP, lsl #32
    // 0x748a78: mov             x0, x1
    // 0x748a7c: cmp             w0, NULL
    // 0x748a80: b.ne            #0x748a8c
    // 0x748a84: r3 = "-"
    //     0x748a84: ldr             x3, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x748a88: b               #0x748a90
    // 0x748a8c: mov             x3, x0
    // 0x748a90: ldur            x0, [fp, #-0x20]
    // 0x748a94: r1 = Instance_IconData
    //     0x748a94: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fb10] Obj!IconData@a09b61
    //     0x748a98: ldr             x1, [x1, #0xb10]
    // 0x748a9c: r2 = "Başlangıç"
    //     0x748a9c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13aa8] "Başlangıç"
    //     0x748aa0: ldr             x2, [x2, #0xaa8]
    // 0x748aa4: r0 = buildInfoRow()
    //     0x748aa4: bl              #0x745170  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildInfoRow
    // 0x748aa8: mov             x1, x0
    // 0x748aac: ldur            x0, [fp, #-0x20]
    // 0x748ab0: stur            x1, [fp, #-0x18]
    // 0x748ab4: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x748ab4: ldur            w2, [x0, #0x17]
    // 0x748ab8: DecompressPointer r2
    //     0x748ab8: add             x2, x2, HEAP, lsl #32
    // 0x748abc: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x748abc: ldur            w3, [x2, #0x17]
    // 0x748ac0: DecompressPointer r3
    //     0x748ac0: add             x3, x3, HEAP, lsl #32
    // 0x748ac4: cmp             w3, NULL
    // 0x748ac8: b.ne            #0x748ad4
    // 0x748acc: r0 = Null
    //     0x748acc: mov             x0, NULL
    // 0x748ad0: b               #0x748b30
    // 0x748ad4: str             x3, [SP]
    // 0x748ad8: r0 = toString()
    //     0x748ad8: bl              #0x797c58  ; [dart:core] DateTime::toString
    // 0x748adc: r1 = LoadClassIdInstr(r0)
    //     0x748adc: ldur            x1, [x0, #-1]
    //     0x748ae0: ubfx            x1, x1, #0xc, #0x14
    // 0x748ae4: mov             x16, x0
    // 0x748ae8: mov             x0, x1
    // 0x748aec: mov             x1, x16
    // 0x748af0: r2 = " "
    //     0x748af0: ldr             x2, [PP, #0x3b8]  ; [pp+0x3b8] " "
    // 0x748af4: r0 = GDT[cid_x0 + -0x1000]()
    //     0x748af4: sub             lr, x0, #1, lsl #12
    //     0x748af8: ldr             lr, [x21, lr, lsl #3]
    //     0x748afc: blr             lr
    // 0x748b00: mov             x2, x0
    // 0x748b04: LoadField: r0 = r2->field_b
    //     0x748b04: ldur            w0, [x2, #0xb]
    // 0x748b08: r1 = LoadInt32Instr(r0)
    //     0x748b08: sbfx            x1, x0, #1, #0x1f
    // 0x748b0c: mov             x0, x1
    // 0x748b10: r1 = 0
    //     0x748b10: mov             x1, #0
    // 0x748b14: cmp             x1, x0
    // 0x748b18: b.hs            #0x748de4
    // 0x748b1c: LoadField: r0 = r2->field_f
    //     0x748b1c: ldur            w0, [x2, #0xf]
    // 0x748b20: DecompressPointer r0
    //     0x748b20: add             x0, x0, HEAP, lsl #32
    // 0x748b24: LoadField: r1 = r0->field_f
    //     0x748b24: ldur            w1, [x0, #0xf]
    // 0x748b28: DecompressPointer r1
    //     0x748b28: add             x1, x1, HEAP, lsl #32
    // 0x748b2c: mov             x0, x1
    // 0x748b30: cmp             w0, NULL
    // 0x748b34: b.ne            #0x748b40
    // 0x748b38: r3 = "-"
    //     0x748b38: ldr             x3, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x748b3c: b               #0x748b44
    // 0x748b40: mov             x3, x0
    // 0x748b44: ldur            x0, [fp, #-0x20]
    // 0x748b48: ldur            x6, [fp, #-0x28]
    // 0x748b4c: ldur            x5, [fp, #-0x10]
    // 0x748b50: ldur            x4, [fp, #-0x18]
    // 0x748b54: r1 = Instance_IconData
    //     0x748b54: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fb10] Obj!IconData@a09b61
    //     0x748b58: ldr             x1, [x1, #0xb10]
    // 0x748b5c: r2 = "Bitiş"
    //     0x748b5c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ab8] "Bitiş"
    //     0x748b60: ldr             x2, [x2, #0xab8]
    // 0x748b64: r0 = buildInfoRow()
    //     0x748b64: bl              #0x745170  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildInfoRow
    // 0x748b68: r1 = Null
    //     0x748b68: mov             x1, NULL
    // 0x748b6c: r2 = 10
    //     0x748b6c: mov             x2, #0xa
    // 0x748b70: stur            x0, [fp, #-0x38]
    // 0x748b74: r0 = AllocateArray()
    //     0x748b74: bl              #0x9280a0  ; AllocateArrayStub
    // 0x748b78: mov             x2, x0
    // 0x748b7c: ldur            x0, [fp, #-0x28]
    // 0x748b80: stur            x2, [fp, #-0x40]
    // 0x748b84: StoreField: r2->field_f = r0
    //     0x748b84: stur            w0, [x2, #0xf]
    // 0x748b88: r16 = Instance_SizedBox
    //     0x748b88: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x748b8c: ldr             x16, [x16, #0x318]
    // 0x748b90: StoreField: r2->field_13 = r16
    //     0x748b90: stur            w16, [x2, #0x13]
    // 0x748b94: ldur            x0, [fp, #-0x10]
    // 0x748b98: ArrayStore: r2[0] = r0  ; List_4
    //     0x748b98: stur            w0, [x2, #0x17]
    // 0x748b9c: ldur            x0, [fp, #-0x18]
    // 0x748ba0: StoreField: r2->field_1b = r0
    //     0x748ba0: stur            w0, [x2, #0x1b]
    // 0x748ba4: ldur            x0, [fp, #-0x38]
    // 0x748ba8: StoreField: r2->field_1f = r0
    //     0x748ba8: stur            w0, [x2, #0x1f]
    // 0x748bac: r1 = <Widget>
    //     0x748bac: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x748bb0: r0 = AllocateGrowableArray()
    //     0x748bb0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x748bb4: mov             x4, x0
    // 0x748bb8: ldur            x0, [fp, #-0x40]
    // 0x748bbc: stur            x4, [fp, #-0x10]
    // 0x748bc0: StoreField: r4->field_f = r0
    //     0x748bc0: stur            w0, [x4, #0xf]
    // 0x748bc4: r0 = 10
    //     0x748bc4: mov             x0, #0xa
    // 0x748bc8: StoreField: r4->field_b = r0
    //     0x748bc8: stur            w0, [x4, #0xb]
    // 0x748bcc: ldur            x0, [fp, #-0x20]
    // 0x748bd0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x748bd0: ldur            w1, [x0, #0x17]
    // 0x748bd4: DecompressPointer r1
    //     0x748bd4: add             x1, x1, HEAP, lsl #32
    // 0x748bd8: LoadField: r3 = r1->field_1b
    //     0x748bd8: ldur            w3, [x1, #0x1b]
    // 0x748bdc: DecompressPointer r3
    //     0x748bdc: add             x3, x3, HEAP, lsl #32
    // 0x748be0: cmp             w3, NULL
    // 0x748be4: b.eq            #0x748c84
    // 0x748be8: LoadField: r0 = r3->field_7
    //     0x748be8: ldur            w0, [x3, #7]
    // 0x748bec: cbz             w0, #0x748c84
    // 0x748bf0: r1 = Instance_IconData
    //     0x748bf0: add             x1, PP, #0x19, lsl #12  ; [pp+0x193e0] Obj!IconData@a0a721
    //     0x748bf4: ldr             x1, [x1, #0x3e0]
    // 0x748bf8: r2 = "Not"
    //     0x748bf8: add             x2, PP, #0x19, lsl #12  ; [pp+0x193d8] "Not"
    //     0x748bfc: ldr             x2, [x2, #0x3d8]
    // 0x748c00: r0 = buildInfoRow()
    //     0x748c00: bl              #0x745170  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildInfoRow
    // 0x748c04: mov             x2, x0
    // 0x748c08: ldur            x0, [fp, #-0x10]
    // 0x748c0c: stur            x2, [fp, #-0x18]
    // 0x748c10: LoadField: r1 = r0->field_b
    //     0x748c10: ldur            w1, [x0, #0xb]
    // 0x748c14: LoadField: r3 = r0->field_f
    //     0x748c14: ldur            w3, [x0, #0xf]
    // 0x748c18: DecompressPointer r3
    //     0x748c18: add             x3, x3, HEAP, lsl #32
    // 0x748c1c: LoadField: r4 = r3->field_b
    //     0x748c1c: ldur            w4, [x3, #0xb]
    // 0x748c20: r3 = LoadInt32Instr(r1)
    //     0x748c20: sbfx            x3, x1, #1, #0x1f
    // 0x748c24: stur            x3, [fp, #-0x48]
    // 0x748c28: r1 = LoadInt32Instr(r4)
    //     0x748c28: sbfx            x1, x4, #1, #0x1f
    // 0x748c2c: cmp             x3, x1
    // 0x748c30: b.ne            #0x748c3c
    // 0x748c34: mov             x1, x0
    // 0x748c38: r0 = _growToNextCapacity()
    //     0x748c38: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x748c3c: ldur            x4, [fp, #-0x10]
    // 0x748c40: ldur            x2, [fp, #-0x48]
    // 0x748c44: add             x0, x2, #1
    // 0x748c48: lsl             x1, x0, #1
    // 0x748c4c: StoreField: r4->field_b = r1
    //     0x748c4c: stur            w1, [x4, #0xb]
    // 0x748c50: LoadField: r1 = r4->field_f
    //     0x748c50: ldur            w1, [x4, #0xf]
    // 0x748c54: DecompressPointer r1
    //     0x748c54: add             x1, x1, HEAP, lsl #32
    // 0x748c58: ldur            x0, [fp, #-0x18]
    // 0x748c5c: ArrayStore: r1[r2] = r0  ; List_4
    //     0x748c5c: add             x25, x1, x2, lsl #2
    //     0x748c60: add             x25, x25, #0xf
    //     0x748c64: str             w0, [x25]
    //     0x748c68: tbz             w0, #0, #0x748c84
    //     0x748c6c: ldurb           w16, [x1, #-1]
    //     0x748c70: ldurb           w17, [x0, #-1]
    //     0x748c74: and             x16, x17, x16, lsr #2
    //     0x748c78: tst             x16, HEAP, lsr #32
    //     0x748c7c: b.eq            #0x748c84
    //     0x748c80: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x748c84: ldur            x3, [fp, #-8]
    // 0x748c88: LoadField: r0 = r3->field_7
    //     0x748c88: ldur            w0, [x3, #7]
    // 0x748c8c: cbz             w0, #0x748d28
    // 0x748c90: r1 = Instance_IconData
    //     0x748c90: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fb18] Obj!IconData@a09f21
    //     0x748c94: ldr             x1, [x1, #0xb18]
    // 0x748c98: r2 = "Yöneticiler"
    //     0x748c98: add             x2, PP, #0x1f, lsl #12  ; [pp+0x1fb20] "Yöneticiler"
    //     0x748c9c: ldr             x2, [x2, #0xb20]
    // 0x748ca0: r0 = buildInfoRow()
    //     0x748ca0: bl              #0x745170  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildInfoRow
    // 0x748ca4: mov             x2, x0
    // 0x748ca8: ldur            x0, [fp, #-0x10]
    // 0x748cac: stur            x2, [fp, #-8]
    // 0x748cb0: LoadField: r1 = r0->field_b
    //     0x748cb0: ldur            w1, [x0, #0xb]
    // 0x748cb4: LoadField: r3 = r0->field_f
    //     0x748cb4: ldur            w3, [x0, #0xf]
    // 0x748cb8: DecompressPointer r3
    //     0x748cb8: add             x3, x3, HEAP, lsl #32
    // 0x748cbc: LoadField: r4 = r3->field_b
    //     0x748cbc: ldur            w4, [x3, #0xb]
    // 0x748cc0: r3 = LoadInt32Instr(r1)
    //     0x748cc0: sbfx            x3, x1, #1, #0x1f
    // 0x748cc4: stur            x3, [fp, #-0x48]
    // 0x748cc8: r1 = LoadInt32Instr(r4)
    //     0x748cc8: sbfx            x1, x4, #1, #0x1f
    // 0x748ccc: cmp             x3, x1
    // 0x748cd0: b.ne            #0x748cdc
    // 0x748cd4: mov             x1, x0
    // 0x748cd8: r0 = _growToNextCapacity()
    //     0x748cd8: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x748cdc: ldur            x2, [fp, #-0x10]
    // 0x748ce0: ldur            x3, [fp, #-0x48]
    // 0x748ce4: add             x0, x3, #1
    // 0x748ce8: lsl             x1, x0, #1
    // 0x748cec: StoreField: r2->field_b = r1
    //     0x748cec: stur            w1, [x2, #0xb]
    // 0x748cf0: LoadField: r1 = r2->field_f
    //     0x748cf0: ldur            w1, [x2, #0xf]
    // 0x748cf4: DecompressPointer r1
    //     0x748cf4: add             x1, x1, HEAP, lsl #32
    // 0x748cf8: ldur            x0, [fp, #-8]
    // 0x748cfc: ArrayStore: r1[r3] = r0  ; List_4
    //     0x748cfc: add             x25, x1, x3, lsl #2
    //     0x748d00: add             x25, x25, #0xf
    //     0x748d04: str             w0, [x25]
    //     0x748d08: tbz             w0, #0, #0x748d24
    //     0x748d0c: ldurb           w16, [x1, #-1]
    //     0x748d10: ldurb           w17, [x0, #-1]
    //     0x748d14: and             x16, x17, x16, lsr #2
    //     0x748d18: tst             x16, HEAP, lsr #32
    //     0x748d1c: b.eq            #0x748d24
    //     0x748d20: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x748d24: b               #0x748d2c
    // 0x748d28: mov             x2, x4
    // 0x748d2c: r0 = Column()
    //     0x748d2c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x748d30: mov             x1, x0
    // 0x748d34: r0 = Instance_Axis
    //     0x748d34: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x748d38: stur            x1, [fp, #-8]
    // 0x748d3c: StoreField: r1->field_f = r0
    //     0x748d3c: stur            w0, [x1, #0xf]
    // 0x748d40: r0 = Instance_MainAxisAlignment
    //     0x748d40: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x748d44: ldr             x0, [x0, #0x230]
    // 0x748d48: StoreField: r1->field_13 = r0
    //     0x748d48: stur            w0, [x1, #0x13]
    // 0x748d4c: r0 = Instance_MainAxisSize
    //     0x748d4c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x748d50: ldr             x0, [x0, #0x330]
    // 0x748d54: ArrayStore: r1[0] = r0  ; List_4
    //     0x748d54: stur            w0, [x1, #0x17]
    // 0x748d58: r0 = Instance_CrossAxisAlignment
    //     0x748d58: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x748d5c: ldr             x0, [x0, #0x238]
    // 0x748d60: StoreField: r1->field_1b = r0
    //     0x748d60: stur            w0, [x1, #0x1b]
    // 0x748d64: r0 = Instance_VerticalDirection
    //     0x748d64: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x748d68: ldr             x0, [x0, #0x340]
    // 0x748d6c: StoreField: r1->field_23 = r0
    //     0x748d6c: stur            w0, [x1, #0x23]
    // 0x748d70: r0 = Instance_Clip
    //     0x748d70: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x748d74: ldr             x0, [x0, #0x348]
    // 0x748d78: StoreField: r1->field_2b = r0
    //     0x748d78: stur            w0, [x1, #0x2b]
    // 0x748d7c: StoreField: r1->field_2f = rZR
    //     0x748d7c: stur            xzr, [x1, #0x2f]
    // 0x748d80: ldur            x0, [fp, #-0x10]
    // 0x748d84: StoreField: r1->field_b = r0
    //     0x748d84: stur            w0, [x1, #0xb]
    // 0x748d88: r0 = Container()
    //     0x748d88: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x748d8c: stur            x0, [fp, #-0x10]
    // 0x748d90: r16 = Instance_EdgeInsets
    //     0x748d90: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f18] Obj!EdgeInsets@a0c261
    //     0x748d94: ldr             x16, [x16, #0xf18]
    // 0x748d98: r30 = Instance_EdgeInsets
    //     0x748d98: add             lr, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x748d9c: ldr             lr, [lr, #0x240]
    // 0x748da0: stp             lr, x16, [SP, #0x10]
    // 0x748da4: ldur            x16, [fp, #-0x30]
    // 0x748da8: ldur            lr, [fp, #-8]
    // 0x748dac: stp             lr, x16, [SP]
    // 0x748db0: mov             x1, x0
    // 0x748db4: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, margin, 0x1, padding, 0x2, null]
    //     0x748db4: add             x4, PP, #0x15, lsl #12  ; [pp+0x15628] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "margin", 0x1, "padding", 0x2, Null]
    //     0x748db8: ldr             x4, [x4, #0x628]
    // 0x748dbc: r0 = Container()
    //     0x748dbc: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x748dc0: ldur            x0, [fp, #-0x10]
    // 0x748dc4: LeaveFrame
    //     0x748dc4: mov             SP, fp
    //     0x748dc8: ldp             fp, lr, [SP], #0x10
    // 0x748dcc: ret
    //     0x748dcc: ret             
    // 0x748dd0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x748dd0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x748dd4: b               #0x74862c
    // 0x748dd8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x748dd8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x748ddc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x748ddc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x748de0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x748de0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x748de4: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x748de4: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x748de8, size: 0x58
    // 0x748de8: EnterFrame
    //     0x748de8: stp             fp, lr, [SP, #-0x10]!
    //     0x748dec: mov             fp, SP
    // 0x748df0: ldr             x0, [fp, #0x10]
    // 0x748df4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x748df4: ldur            w1, [x0, #0x17]
    // 0x748df8: DecompressPointer r1
    //     0x748df8: add             x1, x1, HEAP, lsl #32
    // 0x748dfc: CheckStackOverflow
    //     0x748dfc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x748e00: cmp             SP, x16
    //     0x748e04: b.ls            #0x748e38
    // 0x748e08: LoadField: r0 = r1->field_f
    //     0x748e08: ldur            w0, [x1, #0xf]
    // 0x748e0c: DecompressPointer r0
    //     0x748e0c: add             x0, x0, HEAP, lsl #32
    // 0x748e10: LoadField: r2 = r1->field_13
    //     0x748e10: ldur            w2, [x1, #0x13]
    // 0x748e14: DecompressPointer r2
    //     0x748e14: add             x2, x2, HEAP, lsl #32
    // 0x748e18: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x748e18: ldur            w3, [x1, #0x17]
    // 0x748e1c: DecompressPointer r3
    //     0x748e1c: add             x3, x3, HEAP, lsl #32
    // 0x748e20: mov             x1, x0
    // 0x748e24: r0 = _confirmDeleteTrip()
    //     0x748e24: bl              #0x748e40  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::_confirmDeleteTrip
    // 0x748e28: r0 = Null
    //     0x748e28: mov             x0, NULL
    // 0x748e2c: LeaveFrame
    //     0x748e2c: mov             SP, fp
    //     0x748e30: ldp             fp, lr, [SP], #0x10
    // 0x748e34: ret
    //     0x748e34: ret             
    // 0x748e38: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x748e38: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x748e3c: b               #0x748e08
  }
  _ _confirmDeleteTrip(/* No info */) {
    // ** addr: 0x748e40, size: 0x84
    // 0x748e40: EnterFrame
    //     0x748e40: stp             fp, lr, [SP, #-0x10]!
    //     0x748e44: mov             fp, SP
    // 0x748e48: AllocStack(0x30)
    //     0x748e48: sub             SP, SP, #0x30
    // 0x748e4c: SetupParameters(TripsTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x748e4c: stur            x1, [fp, #-8]
    //     0x748e50: stur            x2, [fp, #-0x10]
    //     0x748e54: stur            x3, [fp, #-0x18]
    // 0x748e58: CheckStackOverflow
    //     0x748e58: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x748e5c: cmp             SP, x16
    //     0x748e60: b.ls            #0x748ebc
    // 0x748e64: r1 = 3
    //     0x748e64: mov             x1, #3
    // 0x748e68: r0 = AllocateContext()
    //     0x748e68: bl              #0x927010  ; AllocateContextStub
    // 0x748e6c: mov             x1, x0
    // 0x748e70: ldur            x0, [fp, #-8]
    // 0x748e74: StoreField: r1->field_f = r0
    //     0x748e74: stur            w0, [x1, #0xf]
    // 0x748e78: ldur            x0, [fp, #-0x18]
    // 0x748e7c: StoreField: r1->field_13 = r0
    //     0x748e7c: stur            w0, [x1, #0x13]
    // 0x748e80: r0 = false
    //     0x748e80: add             x0, NULL, #0x30  ; false
    // 0x748e84: ArrayStore: r1[0] = r0  ; List_4
    //     0x748e84: stur            w0, [x1, #0x17]
    // 0x748e88: mov             x2, x1
    // 0x748e8c: r1 = Function '<anonymous closure>':.
    //     0x748e8c: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fb28] AnonymousClosure: (0x748ec4), in [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::_confirmDeleteTrip (0x748e40)
    //     0x748e90: ldr             x1, [x1, #0xb28]
    // 0x748e94: r0 = AllocateClosure()
    //     0x748e94: bl              #0x9273d4  ; AllocateClosureStub
    // 0x748e98: stp             x0, NULL, [SP, #8]
    // 0x748e9c: ldur            x16, [fp, #-0x10]
    // 0x748ea0: str             x16, [SP]
    // 0x748ea4: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x748ea4: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x748ea8: r0 = showDialog()
    //     0x748ea8: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x748eac: r0 = Null
    //     0x748eac: mov             x0, NULL
    // 0x748eb0: LeaveFrame
    //     0x748eb0: mov             SP, fp
    //     0x748eb4: ldp             fp, lr, [SP], #0x10
    // 0x748eb8: ret
    //     0x748eb8: ret             
    // 0x748ebc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x748ebc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x748ec0: b               #0x748e64
  }
  [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x748ec4, size: 0x64
    // 0x748ec4: EnterFrame
    //     0x748ec4: stp             fp, lr, [SP, #-0x10]!
    //     0x748ec8: mov             fp, SP
    // 0x748ecc: AllocStack(0x8)
    //     0x748ecc: sub             SP, SP, #8
    // 0x748ed0: SetupParameters([dynamic _ /* r0 */])
    //     0x748ed0: ldr             x0, [fp, #0x18]
    //     0x748ed4: ldur            w1, [x0, #0x17]
    //     0x748ed8: add             x1, x1, HEAP, lsl #32
    //     0x748edc: stur            x1, [fp, #-8]
    // 0x748ee0: r1 = 1
    //     0x748ee0: mov             x1, #1
    // 0x748ee4: r0 = AllocateContext()
    //     0x748ee4: bl              #0x927010  ; AllocateContextStub
    // 0x748ee8: mov             x1, x0
    // 0x748eec: ldur            x0, [fp, #-8]
    // 0x748ef0: StoreField: r1->field_b = r0
    //     0x748ef0: stur            w0, [x1, #0xb]
    // 0x748ef4: ldr             x0, [fp, #0x10]
    // 0x748ef8: StoreField: r1->field_f = r0
    //     0x748ef8: stur            w0, [x1, #0xf]
    // 0x748efc: mov             x2, x1
    // 0x748f00: r1 = Function '<anonymous closure>':.
    //     0x748f00: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fb30] AnonymousClosure: (0x748f28), in [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::_confirmDeleteTrip (0x748e40)
    //     0x748f04: ldr             x1, [x1, #0xb30]
    // 0x748f08: r0 = AllocateClosure()
    //     0x748f08: bl              #0x9273d4  ; AllocateClosureStub
    // 0x748f0c: stur            x0, [fp, #-8]
    // 0x748f10: r0 = StatefulBuilder()
    //     0x748f10: bl              #0x6d2fbc  ; AllocateStatefulBuilderStub -> StatefulBuilder (size=0x10)
    // 0x748f14: ldur            x1, [fp, #-8]
    // 0x748f18: StoreField: r0->field_b = r1
    //     0x748f18: stur            w1, [x0, #0xb]
    // 0x748f1c: LeaveFrame
    //     0x748f1c: mov             SP, fp
    //     0x748f20: ldp             fp, lr, [SP], #0x10
    // 0x748f24: ret
    //     0x748f24: ret             
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void) {
    // ** addr: 0x748f28, size: 0x2cc
    // 0x748f28: EnterFrame
    //     0x748f28: stp             fp, lr, [SP, #-0x10]!
    //     0x748f2c: mov             fp, SP
    // 0x748f30: AllocStack(0x48)
    //     0x748f30: sub             SP, SP, #0x48
    // 0x748f34: SetupParameters([dynamic _ /* r0 */])
    //     0x748f34: ldr             x0, [fp, #0x20]
    //     0x748f38: ldur            w1, [x0, #0x17]
    //     0x748f3c: add             x1, x1, HEAP, lsl #32
    //     0x748f40: stur            x1, [fp, #-8]
    // 0x748f44: CheckStackOverflow
    //     0x748f44: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x748f48: cmp             SP, x16
    //     0x748f4c: b.ls            #0x7491ec
    // 0x748f50: r1 = 1
    //     0x748f50: mov             x1, #1
    // 0x748f54: r0 = AllocateContext()
    //     0x748f54: bl              #0x927010  ; AllocateContextStub
    // 0x748f58: mov             x1, x0
    // 0x748f5c: ldur            x0, [fp, #-8]
    // 0x748f60: stur            x1, [fp, #-0x10]
    // 0x748f64: StoreField: r1->field_b = r0
    //     0x748f64: stur            w0, [x1, #0xb]
    // 0x748f68: ldr             x2, [fp, #0x10]
    // 0x748f6c: StoreField: r1->field_f = r2
    //     0x748f6c: stur            w2, [x1, #0xf]
    // 0x748f70: r0 = Radius()
    //     0x748f70: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x748f74: d0 = 16.000000
    //     0x748f74: fmov            d0, #16.00000000
    // 0x748f78: stur            x0, [fp, #-0x18]
    // 0x748f7c: StoreField: r0->field_7 = d0
    //     0x748f7c: stur            d0, [x0, #7]
    // 0x748f80: StoreField: r0->field_f = d0
    //     0x748f80: stur            d0, [x0, #0xf]
    // 0x748f84: r0 = BorderRadius()
    //     0x748f84: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x748f88: mov             x1, x0
    // 0x748f8c: ldur            x0, [fp, #-0x18]
    // 0x748f90: stur            x1, [fp, #-0x20]
    // 0x748f94: StoreField: r1->field_7 = r0
    //     0x748f94: stur            w0, [x1, #7]
    // 0x748f98: StoreField: r1->field_b = r0
    //     0x748f98: stur            w0, [x1, #0xb]
    // 0x748f9c: StoreField: r1->field_f = r0
    //     0x748f9c: stur            w0, [x1, #0xf]
    // 0x748fa0: StoreField: r1->field_13 = r0
    //     0x748fa0: stur            w0, [x1, #0x13]
    // 0x748fa4: r0 = RoundedRectangleBorder()
    //     0x748fa4: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x748fa8: mov             x3, x0
    // 0x748fac: ldur            x0, [fp, #-0x20]
    // 0x748fb0: stur            x3, [fp, #-0x18]
    // 0x748fb4: StoreField: r3->field_b = r0
    //     0x748fb4: stur            w0, [x3, #0xb]
    // 0x748fb8: r0 = Instance_BorderSide
    //     0x748fb8: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x748fbc: ldr             x0, [x0, #0xcb8]
    // 0x748fc0: StoreField: r3->field_7 = r0
    //     0x748fc0: stur            w0, [x3, #7]
    // 0x748fc4: r1 = Null
    //     0x748fc4: mov             x1, NULL
    // 0x748fc8: r2 = 6
    //     0x748fc8: mov             x2, #6
    // 0x748fcc: r0 = AllocateArray()
    //     0x748fcc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x748fd0: r16 = "\""
    //     0x748fd0: add             x16, PP, #0xc, lsl #12  ; [pp+0xc040] "\""
    //     0x748fd4: ldr             x16, [x16, #0x40]
    // 0x748fd8: StoreField: r0->field_f = r16
    //     0x748fd8: stur            w16, [x0, #0xf]
    // 0x748fdc: ldur            x1, [fp, #-8]
    // 0x748fe0: LoadField: r2 = r1->field_b
    //     0x748fe0: ldur            w2, [x1, #0xb]
    // 0x748fe4: DecompressPointer r2
    //     0x748fe4: add             x2, x2, HEAP, lsl #32
    // 0x748fe8: stur            x2, [fp, #-0x20]
    // 0x748fec: LoadField: r1 = r2->field_13
    //     0x748fec: ldur            w1, [x2, #0x13]
    // 0x748ff0: DecompressPointer r1
    //     0x748ff0: add             x1, x1, HEAP, lsl #32
    // 0x748ff4: LoadField: r3 = r1->field_b
    //     0x748ff4: ldur            w3, [x1, #0xb]
    // 0x748ff8: DecompressPointer r3
    //     0x748ff8: add             x3, x3, HEAP, lsl #32
    // 0x748ffc: StoreField: r0->field_13 = r3
    //     0x748ffc: stur            w3, [x0, #0x13]
    // 0x749000: r16 = "\" seferini silmek istediğinize emin misiniz\?"
    //     0x749000: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fb38] "\" seferini silmek istediğinize emin misiniz\?"
    //     0x749004: ldr             x16, [x16, #0xb38]
    // 0x749008: ArrayStore: r0[0] = r16  ; List_4
    //     0x749008: stur            w16, [x0, #0x17]
    // 0x74900c: str             x0, [SP]
    // 0x749010: r0 = _interpolate()
    //     0x749010: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x749014: stur            x0, [fp, #-8]
    // 0x749018: r0 = Text()
    //     0x749018: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x74901c: mov             x3, x0
    // 0x749020: ldur            x0, [fp, #-8]
    // 0x749024: stur            x3, [fp, #-0x28]
    // 0x749028: StoreField: r3->field_b = r0
    //     0x749028: stur            w0, [x3, #0xb]
    // 0x74902c: r0 = Instance_TextStyle
    //     0x74902c: add             x0, PP, #0x19, lsl #12  ; [pp+0x19538] Obj!TextStyle@a179f1
    //     0x749030: ldr             x0, [x0, #0x538]
    // 0x749034: StoreField: r3->field_13 = r0
    //     0x749034: stur            w0, [x3, #0x13]
    // 0x749038: ldur            x0, [fp, #-0x20]
    // 0x74903c: ArrayLoad: r4 = r0[0]  ; List_4
    //     0x74903c: ldur            w4, [x0, #0x17]
    // 0x749040: DecompressPointer r4
    //     0x749040: add             x4, x4, HEAP, lsl #32
    // 0x749044: stur            x4, [fp, #-8]
    // 0x749048: tbnz            w4, #4, #0x749058
    // 0x74904c: mov             x0, x4
    // 0x749050: r1 = Null
    //     0x749050: mov             x1, NULL
    // 0x749054: b               #0x749070
    // 0x749058: ldur            x2, [fp, #-0x10]
    // 0x74905c: r1 = Function '<anonymous closure>':.
    //     0x74905c: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fb40] AnonymousClosure: (0x6f5908), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog (0x6f64f4)
    //     0x749060: ldr             x1, [x1, #0xb40]
    // 0x749064: r0 = AllocateClosure()
    //     0x749064: bl              #0x9273d4  ; AllocateClosureStub
    // 0x749068: mov             x1, x0
    // 0x74906c: ldur            x0, [fp, #-8]
    // 0x749070: stur            x1, [fp, #-0x30]
    // 0x749074: r0 = TextButton()
    //     0x749074: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x749078: mov             x3, x0
    // 0x74907c: ldur            x0, [fp, #-0x30]
    // 0x749080: stur            x3, [fp, #-0x38]
    // 0x749084: StoreField: r3->field_b = r0
    //     0x749084: stur            w0, [x3, #0xb]
    // 0x749088: r0 = false
    //     0x749088: add             x0, NULL, #0x30  ; false
    // 0x74908c: StoreField: r3->field_27 = r0
    //     0x74908c: stur            w0, [x3, #0x27]
    // 0x749090: r4 = true
    //     0x749090: add             x4, NULL, #0x20  ; true
    // 0x749094: StoreField: r3->field_2f = r4
    //     0x749094: stur            w4, [x3, #0x2f]
    // 0x749098: r1 = Instance_Text
    //     0x749098: add             x1, PP, #0x19, lsl #12  ; [pp+0x19198] Obj!Text@a1ba91
    //     0x74909c: ldr             x1, [x1, #0x198]
    // 0x7490a0: StoreField: r3->field_37 = r1
    //     0x7490a0: stur            w1, [x3, #0x37]
    // 0x7490a4: ldur            x1, [fp, #-8]
    // 0x7490a8: tbnz            w1, #4, #0x7490b4
    // 0x7490ac: r1 = Null
    //     0x7490ac: mov             x1, NULL
    // 0x7490b0: b               #0x7490c8
    // 0x7490b4: ldur            x2, [fp, #-0x10]
    // 0x7490b8: r1 = Function '<anonymous closure>':.
    //     0x7490b8: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fb48] AnonymousClosure: (0x7491f4), in [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::_confirmDeleteTrip (0x748e40)
    //     0x7490bc: ldr             x1, [x1, #0xb48]
    // 0x7490c0: r0 = AllocateClosure()
    //     0x7490c0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7490c4: mov             x1, x0
    // 0x7490c8: ldur            x0, [fp, #-0x20]
    // 0x7490cc: stur            x1, [fp, #-8]
    // 0x7490d0: r16 = Instance_MaterialColor
    //     0x7490d0: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b90] Obj!MaterialColor@a25aa1
    //     0x7490d4: ldr             x16, [x16, #0xb90]
    // 0x7490d8: r30 = Instance_Color
    //     0x7490d8: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7490dc: stp             lr, x16, [SP]
    // 0x7490e0: r4 = const [0, 0x2, 0x2, 0, backgroundColor, 0, foregroundColor, 0x1, null]
    //     0x7490e0: add             x4, PP, #0x19, lsl #12  ; [pp+0x191a8] List(9) [0, 0x2, 0x2, 0, "backgroundColor", 0, "foregroundColor", 0x1, Null]
    //     0x7490e4: ldr             x4, [x4, #0x1a8]
    // 0x7490e8: r0 = styleFrom()
    //     0x7490e8: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x7490ec: mov             x1, x0
    // 0x7490f0: ldur            x0, [fp, #-0x20]
    // 0x7490f4: stur            x1, [fp, #-0x30]
    // 0x7490f8: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x7490f8: ldur            w2, [x0, #0x17]
    // 0x7490fc: DecompressPointer r2
    //     0x7490fc: add             x2, x2, HEAP, lsl #32
    // 0x749100: tbnz            w2, #4, #0x749110
    // 0x749104: r5 = Instance_SizedBox
    //     0x749104: add             x5, PP, #0x19, lsl #12  ; [pp+0x191b0] Obj!SizedBox@a1fa51
    //     0x749108: ldr             x5, [x5, #0x1b0]
    // 0x74910c: b               #0x749118
    // 0x749110: r5 = Instance_Text
    //     0x749110: add             x5, PP, #0x14, lsl #12  ; [pp+0x147e0] Obj!Text@a1b1d1
    //     0x749114: ldr             x5, [x5, #0x7e0]
    // 0x749118: ldur            x4, [fp, #-0x18]
    // 0x74911c: ldur            x3, [fp, #-0x28]
    // 0x749120: ldur            x2, [fp, #-0x38]
    // 0x749124: ldur            x0, [fp, #-8]
    // 0x749128: stur            x5, [fp, #-0x10]
    // 0x74912c: r0 = ElevatedButton()
    //     0x74912c: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x749130: mov             x3, x0
    // 0x749134: ldur            x0, [fp, #-8]
    // 0x749138: stur            x3, [fp, #-0x20]
    // 0x74913c: StoreField: r3->field_b = r0
    //     0x74913c: stur            w0, [x3, #0xb]
    // 0x749140: ldur            x0, [fp, #-0x30]
    // 0x749144: StoreField: r3->field_1b = r0
    //     0x749144: stur            w0, [x3, #0x1b]
    // 0x749148: r0 = false
    //     0x749148: add             x0, NULL, #0x30  ; false
    // 0x74914c: StoreField: r3->field_27 = r0
    //     0x74914c: stur            w0, [x3, #0x27]
    // 0x749150: r1 = true
    //     0x749150: add             x1, NULL, #0x20  ; true
    // 0x749154: StoreField: r3->field_2f = r1
    //     0x749154: stur            w1, [x3, #0x2f]
    // 0x749158: ldur            x1, [fp, #-0x10]
    // 0x74915c: StoreField: r3->field_37 = r1
    //     0x74915c: stur            w1, [x3, #0x37]
    // 0x749160: r1 = Null
    //     0x749160: mov             x1, NULL
    // 0x749164: r2 = 4
    //     0x749164: mov             x2, #4
    // 0x749168: r0 = AllocateArray()
    //     0x749168: bl              #0x9280a0  ; AllocateArrayStub
    // 0x74916c: mov             x2, x0
    // 0x749170: ldur            x0, [fp, #-0x38]
    // 0x749174: stur            x2, [fp, #-8]
    // 0x749178: StoreField: r2->field_f = r0
    //     0x749178: stur            w0, [x2, #0xf]
    // 0x74917c: ldur            x0, [fp, #-0x20]
    // 0x749180: StoreField: r2->field_13 = r0
    //     0x749180: stur            w0, [x2, #0x13]
    // 0x749184: r1 = <Widget>
    //     0x749184: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x749188: r0 = AllocateGrowableArray()
    //     0x749188: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x74918c: mov             x1, x0
    // 0x749190: ldur            x0, [fp, #-8]
    // 0x749194: stur            x1, [fp, #-0x10]
    // 0x749198: StoreField: r1->field_f = r0
    //     0x749198: stur            w0, [x1, #0xf]
    // 0x74919c: r0 = 4
    //     0x74919c: mov             x0, #4
    // 0x7491a0: StoreField: r1->field_b = r0
    //     0x7491a0: stur            w0, [x1, #0xb]
    // 0x7491a4: r0 = AlertDialog()
    //     0x7491a4: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x7491a8: r1 = Instance_Text
    //     0x7491a8: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fb50] Obj!Text@a1d571
    //     0x7491ac: ldr             x1, [x1, #0xb50]
    // 0x7491b0: StoreField: r0->field_f = r1
    //     0x7491b0: stur            w1, [x0, #0xf]
    // 0x7491b4: ldur            x1, [fp, #-0x28]
    // 0x7491b8: StoreField: r0->field_1b = r1
    //     0x7491b8: stur            w1, [x0, #0x1b]
    // 0x7491bc: ldur            x1, [fp, #-0x10]
    // 0x7491c0: StoreField: r0->field_27 = r1
    //     0x7491c0: stur            w1, [x0, #0x27]
    // 0x7491c4: r1 = Instance_Color
    //     0x7491c4: add             x1, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x7491c8: ldr             x1, [x1, #0x1c0]
    // 0x7491cc: StoreField: r0->field_43 = r1
    //     0x7491cc: stur            w1, [x0, #0x43]
    // 0x7491d0: ldur            x1, [fp, #-0x18]
    // 0x7491d4: StoreField: r0->field_5f = r1
    //     0x7491d4: stur            w1, [x0, #0x5f]
    // 0x7491d8: r1 = false
    //     0x7491d8: add             x1, NULL, #0x30  ; false
    // 0x7491dc: StoreField: r0->field_6b = r1
    //     0x7491dc: stur            w1, [x0, #0x6b]
    // 0x7491e0: LeaveFrame
    //     0x7491e0: mov             SP, fp
    //     0x7491e4: ldp             fp, lr, [SP], #0x10
    // 0x7491e8: ret
    //     0x7491e8: ret             
    // 0x7491ec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7491ec: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7491f0: b               #0x748f50
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7491f4, size: 0x14c
    // 0x7491f4: EnterFrame
    //     0x7491f4: stp             fp, lr, [SP, #-0x10]!
    //     0x7491f8: mov             fp, SP
    // 0x7491fc: AllocStack(0x38)
    //     0x7491fc: sub             SP, SP, #0x38
    // 0x749200: SetupParameters(TripsTabState this /* r1 */)
    //     0x749200: stur            NULL, [fp, #-8]
    //     0x749204: mov             x0, #0
    //     0x749208: add             x1, fp, w0, sxtw #2
    //     0x74920c: ldr             x1, [x1, #0x10]
    //     0x749210: ldur            w2, [x1, #0x17]
    //     0x749214: add             x2, x2, HEAP, lsl #32
    //     0x749218: stur            x2, [fp, #-0x10]
    // 0x74921c: CheckStackOverflow
    //     0x74921c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x749220: cmp             SP, x16
    //     0x749224: b.ls            #0x749330
    // 0x749228: InitAsync() -> Future<void?>
    //     0x749228: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x74922c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x749230: ldur            x0, [fp, #-0x10]
    // 0x749234: LoadField: r3 = r0->field_f
    //     0x749234: ldur            w3, [x0, #0xf]
    // 0x749238: DecompressPointer r3
    //     0x749238: add             x3, x3, HEAP, lsl #32
    // 0x74923c: mov             x2, x0
    // 0x749240: stur            x3, [fp, #-0x18]
    // 0x749244: r1 = Function '<anonymous closure>':.
    //     0x749244: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fb58] AnonymousClosure: (0x744590), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::confirmDeleteUser (0x744a60)
    //     0x749248: ldr             x1, [x1, #0xb58]
    // 0x74924c: r0 = AllocateClosure()
    //     0x74924c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x749250: ldur            x16, [fp, #-0x18]
    // 0x749254: stp             x0, x16, [SP]
    // 0x749258: ldur            x0, [fp, #-0x18]
    // 0x74925c: ClosureCall
    //     0x74925c: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x749260: ldur            x2, [x0, #0x1f]
    //     0x749264: blr             x2
    // 0x749268: ldur            x0, [fp, #-0x10]
    // 0x74926c: LoadField: r3 = r0->field_b
    //     0x74926c: ldur            w3, [x0, #0xb]
    // 0x749270: DecompressPointer r3
    //     0x749270: add             x3, x3, HEAP, lsl #32
    // 0x749274: stur            x3, [fp, #-0x20]
    // 0x749278: LoadField: r4 = r3->field_b
    //     0x749278: ldur            w4, [x3, #0xb]
    // 0x74927c: DecompressPointer r4
    //     0x74927c: add             x4, x4, HEAP, lsl #32
    // 0x749280: stur            x4, [fp, #-0x18]
    // 0x749284: LoadField: r1 = r4->field_f
    //     0x749284: ldur            w1, [x4, #0xf]
    // 0x749288: DecompressPointer r1
    //     0x749288: add             x1, x1, HEAP, lsl #32
    // 0x74928c: LoadField: r2 = r1->field_b
    //     0x74928c: ldur            w2, [x1, #0xb]
    // 0x749290: DecompressPointer r2
    //     0x749290: add             x2, x2, HEAP, lsl #32
    // 0x749294: cmp             w2, NULL
    // 0x749298: b.eq            #0x749338
    // 0x74929c: LoadField: r1 = r2->field_1b
    //     0x74929c: ldur            w1, [x2, #0x1b]
    // 0x7492a0: DecompressPointer r1
    //     0x7492a0: add             x1, x1, HEAP, lsl #32
    // 0x7492a4: LoadField: r2 = r4->field_13
    //     0x7492a4: ldur            w2, [x4, #0x13]
    // 0x7492a8: DecompressPointer r2
    //     0x7492a8: add             x2, x2, HEAP, lsl #32
    // 0x7492ac: LoadField: r5 = r2->field_7
    //     0x7492ac: ldur            w5, [x2, #7]
    // 0x7492b0: DecompressPointer r5
    //     0x7492b0: add             x5, x5, HEAP, lsl #32
    // 0x7492b4: mov             x2, x5
    // 0x7492b8: r0 = deleteTrip()
    //     0x7492b8: bl              #0x6d6fe4  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::deleteTrip
    // 0x7492bc: mov             x1, x0
    // 0x7492c0: stur            x1, [fp, #-0x28]
    // 0x7492c4: r0 = Await()
    //     0x7492c4: bl              #0x3dd188  ; AwaitStub
    // 0x7492c8: ldur            x0, [fp, #-0x18]
    // 0x7492cc: LoadField: r1 = r0->field_f
    //     0x7492cc: ldur            w1, [x0, #0xf]
    // 0x7492d0: DecompressPointer r1
    //     0x7492d0: add             x1, x1, HEAP, lsl #32
    // 0x7492d4: LoadField: r0 = r1->field_b
    //     0x7492d4: ldur            w0, [x1, #0xb]
    // 0x7492d8: DecompressPointer r0
    //     0x7492d8: add             x0, x0, HEAP, lsl #32
    // 0x7492dc: cmp             w0, NULL
    // 0x7492e0: b.eq            #0x74933c
    // 0x7492e4: LoadField: r1 = r0->field_1f
    //     0x7492e4: ldur            w1, [x0, #0x1f]
    // 0x7492e8: DecompressPointer r1
    //     0x7492e8: add             x1, x1, HEAP, lsl #32
    // 0x7492ec: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x7492ec: ldur            w0, [x1, #0x17]
    // 0x7492f0: DecompressPointer r0
    //     0x7492f0: add             x0, x0, HEAP, lsl #32
    // 0x7492f4: mov             x1, x0
    // 0x7492f8: r0 = _loadAgencyData()
    //     0x7492f8: bl              #0x63a658  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_loadAgencyData
    // 0x7492fc: ldur            x0, [fp, #-0x20]
    // 0x749300: LoadField: r1 = r0->field_f
    //     0x749300: ldur            w1, [x0, #0xf]
    // 0x749304: DecompressPointer r1
    //     0x749304: add             x1, x1, HEAP, lsl #32
    // 0x749308: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x749308: ldur            w0, [x1, #0x17]
    // 0x74930c: DecompressPointer r0
    //     0x74930c: add             x0, x0, HEAP, lsl #32
    // 0x749310: cmp             w0, NULL
    // 0x749314: b.eq            #0x749328
    // 0x749318: r16 = <Object?>
    //     0x749318: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x74931c: stp             x1, x16, [SP]
    // 0x749320: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x749320: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x749324: r0 = pop()
    //     0x749324: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x749328: r0 = Null
    //     0x749328: mov             x0, NULL
    // 0x74932c: r0 = ReturnAsyncNotFuture()
    //     0x74932c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x749330: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x749330: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x749334: b               #0x749228
    // 0x749338: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x749338: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x74933c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x74933c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x749340, size: 0x58
    // 0x749340: EnterFrame
    //     0x749340: stp             fp, lr, [SP, #-0x10]!
    //     0x749344: mov             fp, SP
    // 0x749348: ldr             x0, [fp, #0x10]
    // 0x74934c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74934c: ldur            w1, [x0, #0x17]
    // 0x749350: DecompressPointer r1
    //     0x749350: add             x1, x1, HEAP, lsl #32
    // 0x749354: CheckStackOverflow
    //     0x749354: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x749358: cmp             SP, x16
    //     0x74935c: b.ls            #0x749390
    // 0x749360: LoadField: r0 = r1->field_f
    //     0x749360: ldur            w0, [x1, #0xf]
    // 0x749364: DecompressPointer r0
    //     0x749364: add             x0, x0, HEAP, lsl #32
    // 0x749368: LoadField: r2 = r1->field_13
    //     0x749368: ldur            w2, [x1, #0x13]
    // 0x74936c: DecompressPointer r2
    //     0x74936c: add             x2, x2, HEAP, lsl #32
    // 0x749370: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x749370: ldur            w3, [x1, #0x17]
    // 0x749374: DecompressPointer r3
    //     0x749374: add             x3, x3, HEAP, lsl #32
    // 0x749378: mov             x1, x0
    // 0x74937c: r0 = showTripDialog()
    //     0x74937c: bl              #0x73aae4  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::showTripDialog
    // 0x749380: r0 = Null
    //     0x749380: mov             x0, NULL
    // 0x749384: LeaveFrame
    //     0x749384: mov             SP, fp
    //     0x749388: ldp             fp, lr, [SP], #0x10
    // 0x74938c: ret
    //     0x74938c: ret             
    // 0x749390: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x749390: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x749394: b               #0x749360
  }
  [closure] bool <anonymous closure>(dynamic, UserModel) {
    // ** addr: 0x749398, size: 0x6c
    // 0x749398: EnterFrame
    //     0x749398: stp             fp, lr, [SP, #-0x10]!
    //     0x74939c: mov             fp, SP
    // 0x7493a0: ldr             x0, [fp, #0x18]
    // 0x7493a4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7493a4: ldur            w1, [x0, #0x17]
    // 0x7493a8: DecompressPointer r1
    //     0x7493a8: add             x1, x1, HEAP, lsl #32
    // 0x7493ac: CheckStackOverflow
    //     0x7493ac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7493b0: cmp             SP, x16
    //     0x7493b4: b.ls            #0x7493fc
    // 0x7493b8: LoadField: r0 = r1->field_1b
    //     0x7493b8: ldur            w0, [x1, #0x1b]
    // 0x7493bc: DecompressPointer r0
    //     0x7493bc: add             x0, x0, HEAP, lsl #32
    // 0x7493c0: ldr             x1, [fp, #0x10]
    // 0x7493c4: LoadField: r2 = r1->field_7
    //     0x7493c4: ldur            w2, [x1, #7]
    // 0x7493c8: DecompressPointer r2
    //     0x7493c8: add             x2, x2, HEAP, lsl #32
    // 0x7493cc: r1 = LoadClassIdInstr(r0)
    //     0x7493cc: ldur            x1, [x0, #-1]
    //     0x7493d0: ubfx            x1, x1, #0xc, #0x14
    // 0x7493d4: mov             x16, x0
    // 0x7493d8: mov             x0, x1
    // 0x7493dc: mov             x1, x16
    // 0x7493e0: r0 = GDT[cid_x0 + 0xd089]()
    //     0x7493e0: mov             x17, #0xd089
    //     0x7493e4: add             lr, x0, x17
    //     0x7493e8: ldr             lr, [x21, lr, lsl #3]
    //     0x7493ec: blr             lr
    // 0x7493f0: LeaveFrame
    //     0x7493f0: mov             SP, fp
    //     0x7493f4: ldp             fp, lr, [SP], #0x10
    // 0x7493f8: ret
    //     0x7493f8: ret             
    // 0x7493fc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7493fc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x749400: b               #0x7493b8
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x749404, size: 0x54
    // 0x749404: EnterFrame
    //     0x749404: stp             fp, lr, [SP, #-0x10]!
    //     0x749408: mov             fp, SP
    // 0x74940c: ldr             x0, [fp, #0x10]
    // 0x749410: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x749410: ldur            w1, [x0, #0x17]
    // 0x749414: DecompressPointer r1
    //     0x749414: add             x1, x1, HEAP, lsl #32
    // 0x749418: CheckStackOverflow
    //     0x749418: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74941c: cmp             SP, x16
    //     0x749420: b.ls            #0x749450
    // 0x749424: LoadField: r0 = r1->field_f
    //     0x749424: ldur            w0, [x1, #0xf]
    // 0x749428: DecompressPointer r0
    //     0x749428: add             x0, x0, HEAP, lsl #32
    // 0x74942c: LoadField: r2 = r1->field_13
    //     0x74942c: ldur            w2, [x1, #0x13]
    // 0x749430: DecompressPointer r2
    //     0x749430: add             x2, x2, HEAP, lsl #32
    // 0x749434: mov             x1, x0
    // 0x749438: r3 = Null
    //     0x749438: mov             x3, NULL
    // 0x74943c: r0 = showTripDialog()
    //     0x74943c: bl              #0x73aae4  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::showTripDialog
    // 0x749440: r0 = Null
    //     0x749440: mov             x0, NULL
    // 0x749444: LeaveFrame
    //     0x749444: mov             SP, fp
    //     0x749448: ldp             fp, lr, [SP], #0x10
    // 0x74944c: ret
    //     0x74944c: ret             
    // 0x749450: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x749450: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x749454: b               #0x749424
  }
}

// class id: 3186, size: 0x24, field offset: 0xc
//   const constructor, 
class TripsTab extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bf6ac, size: 0x24
    // 0x7bf6ac: EnterFrame
    //     0x7bf6ac: stp             fp, lr, [SP, #-0x10]!
    //     0x7bf6b0: mov             fp, SP
    // 0x7bf6b4: mov             x0, x1
    // 0x7bf6b8: r1 = <TripsTab>
    //     0x7bf6b8: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bb20] TypeArguments: <TripsTab>
    //     0x7bf6bc: ldr             x1, [x1, #0xb20]
    // 0x7bf6c0: r0 = TripsTabState()
    //     0x7bf6c0: bl              #0x7bf6d0  ; AllocateTripsTabStateStub -> TripsTabState (size=0x14)
    // 0x7bf6c4: LeaveFrame
    //     0x7bf6c4: mov             SP, fp
    //     0x7bf6c8: ldp             fp, lr, [SP], #0x10
    // 0x7bf6cc: ret
    //     0x7bf6cc: ret             
  }
}

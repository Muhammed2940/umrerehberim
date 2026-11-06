// lib: , url: package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart

// class id: 1049556, size: 0x8
class :: {
}

// class id: 2482, size: 0x38, field offset: 0x14
class UserAssignmentCardState extends State<dynamic> {

  late TextEditingController nameCtrl; // offset: 0x2c
  late TextEditingController phoneCtrl; // offset: 0x30
  late TextEditingController locationCtrl; // offset: 0x34

  _ initState(/* No info */) {
    // ** addr: 0x5e47f4, size: 0x204
    // 0x5e47f4: EnterFrame
    //     0x5e47f4: stp             fp, lr, [SP, #-0x10]!
    //     0x5e47f8: mov             fp, SP
    // 0x5e47fc: AllocStack(0x20)
    //     0x5e47fc: sub             SP, SP, #0x20
    // 0x5e4800: r0 = "Mekke"
    //     0x5e4800: add             x0, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x5e4804: ldr             x0, [x0, #0xdf0]
    // 0x5e4808: mov             x2, x1
    // 0x5e480c: stur            x1, [fp, #-8]
    // 0x5e4810: CheckStackOverflow
    //     0x5e4810: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e4814: cmp             SP, x16
    //     0x5e4818: b.ls            #0x5e49e0
    // 0x5e481c: StoreField: r2->field_13 = r0
    //     0x5e481c: stur            w0, [x2, #0x13]
    // 0x5e4820: LoadField: r0 = r2->field_b
    //     0x5e4820: ldur            w0, [x2, #0xb]
    // 0x5e4824: DecompressPointer r0
    //     0x5e4824: add             x0, x0, HEAP, lsl #32
    // 0x5e4828: cmp             w0, NULL
    // 0x5e482c: b.eq            #0x5e49e8
    // 0x5e4830: LoadField: r1 = r0->field_b
    //     0x5e4830: ldur            w1, [x0, #0xb]
    // 0x5e4834: DecompressPointer r1
    //     0x5e4834: add             x1, x1, HEAP, lsl #32
    // 0x5e4838: LoadField: r0 = r1->field_37
    //     0x5e4838: ldur            w0, [x1, #0x37]
    // 0x5e483c: DecompressPointer r0
    //     0x5e483c: add             x0, x0, HEAP, lsl #32
    // 0x5e4840: StoreField: r2->field_23 = r0
    //     0x5e4840: stur            w0, [x2, #0x23]
    //     0x5e4844: ldurb           w16, [x2, #-1]
    //     0x5e4848: ldurb           w17, [x0, #-1]
    //     0x5e484c: and             x16, x17, x16, lsr #2
    //     0x5e4850: tst             x16, HEAP, lsr #32
    //     0x5e4854: b.eq            #0x5e485c
    //     0x5e4858: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e485c: LoadField: r0 = r1->field_3b
    //     0x5e485c: ldur            w0, [x1, #0x3b]
    // 0x5e4860: DecompressPointer r0
    //     0x5e4860: add             x0, x0, HEAP, lsl #32
    // 0x5e4864: StoreField: r2->field_27 = r0
    //     0x5e4864: stur            w0, [x2, #0x27]
    //     0x5e4868: ldurb           w16, [x2, #-1]
    //     0x5e486c: ldurb           w17, [x0, #-1]
    //     0x5e4870: and             x16, x17, x16, lsr #2
    //     0x5e4874: tst             x16, HEAP, lsr #32
    //     0x5e4878: b.eq            #0x5e4880
    //     0x5e487c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e4880: mov             x1, x2
    // 0x5e4884: r0 = _updateSelectedValues()
    //     0x5e4884: bl              #0x5e4b34  ; [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::_updateSelectedValues
    // 0x5e4888: ldur            x0, [fp, #-8]
    // 0x5e488c: LoadField: r1 = r0->field_b
    //     0x5e488c: ldur            w1, [x0, #0xb]
    // 0x5e4890: DecompressPointer r1
    //     0x5e4890: add             x1, x1, HEAP, lsl #32
    // 0x5e4894: cmp             w1, NULL
    // 0x5e4898: b.eq            #0x5e49ec
    // 0x5e489c: LoadField: r2 = r1->field_b
    //     0x5e489c: ldur            w2, [x1, #0xb]
    // 0x5e48a0: DecompressPointer r2
    //     0x5e48a0: add             x2, x2, HEAP, lsl #32
    // 0x5e48a4: LoadField: r3 = r2->field_b
    //     0x5e48a4: ldur            w3, [x2, #0xb]
    // 0x5e48a8: DecompressPointer r3
    //     0x5e48a8: add             x3, x3, HEAP, lsl #32
    // 0x5e48ac: stur            x3, [fp, #-0x10]
    // 0x5e48b0: r1 = <TextEditingValue>
    //     0x5e48b0: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x5e48b4: r0 = TextEditingController()
    //     0x5e48b4: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x5e48b8: stur            x0, [fp, #-0x18]
    // 0x5e48bc: ldur            x16, [fp, #-0x10]
    // 0x5e48c0: str             x16, [SP]
    // 0x5e48c4: mov             x1, x0
    // 0x5e48c8: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x5e48c8: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x5e48cc: ldr             x4, [x4, #0xa20]
    // 0x5e48d0: r0 = TextEditingController()
    //     0x5e48d0: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x5e48d4: ldur            x0, [fp, #-0x18]
    // 0x5e48d8: ldur            x2, [fp, #-8]
    // 0x5e48dc: StoreField: r2->field_2b = r0
    //     0x5e48dc: stur            w0, [x2, #0x2b]
    //     0x5e48e0: ldurb           w16, [x2, #-1]
    //     0x5e48e4: ldurb           w17, [x0, #-1]
    //     0x5e48e8: and             x16, x17, x16, lsr #2
    //     0x5e48ec: tst             x16, HEAP, lsr #32
    //     0x5e48f0: b.eq            #0x5e48f8
    //     0x5e48f4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e48f8: LoadField: r0 = r2->field_b
    //     0x5e48f8: ldur            w0, [x2, #0xb]
    // 0x5e48fc: DecompressPointer r0
    //     0x5e48fc: add             x0, x0, HEAP, lsl #32
    // 0x5e4900: cmp             w0, NULL
    // 0x5e4904: b.eq            #0x5e49f0
    // 0x5e4908: LoadField: r1 = r0->field_b
    //     0x5e4908: ldur            w1, [x0, #0xb]
    // 0x5e490c: DecompressPointer r1
    //     0x5e490c: add             x1, x1, HEAP, lsl #32
    // 0x5e4910: LoadField: r0 = r1->field_13
    //     0x5e4910: ldur            w0, [x1, #0x13]
    // 0x5e4914: DecompressPointer r0
    //     0x5e4914: add             x0, x0, HEAP, lsl #32
    // 0x5e4918: stur            x0, [fp, #-0x10]
    // 0x5e491c: r1 = <TextEditingValue>
    //     0x5e491c: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x5e4920: r0 = TextEditingController()
    //     0x5e4920: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x5e4924: stur            x0, [fp, #-0x18]
    // 0x5e4928: ldur            x16, [fp, #-0x10]
    // 0x5e492c: str             x16, [SP]
    // 0x5e4930: mov             x1, x0
    // 0x5e4934: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x5e4934: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x5e4938: ldr             x4, [x4, #0xa20]
    // 0x5e493c: r0 = TextEditingController()
    //     0x5e493c: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x5e4940: ldur            x0, [fp, #-0x18]
    // 0x5e4944: ldur            x2, [fp, #-8]
    // 0x5e4948: StoreField: r2->field_2f = r0
    //     0x5e4948: stur            w0, [x2, #0x2f]
    //     0x5e494c: ldurb           w16, [x2, #-1]
    //     0x5e4950: ldurb           w17, [x0, #-1]
    //     0x5e4954: and             x16, x17, x16, lsr #2
    //     0x5e4958: tst             x16, HEAP, lsr #32
    //     0x5e495c: b.eq            #0x5e4964
    //     0x5e4960: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e4964: LoadField: r0 = r2->field_b
    //     0x5e4964: ldur            w0, [x2, #0xb]
    // 0x5e4968: DecompressPointer r0
    //     0x5e4968: add             x0, x0, HEAP, lsl #32
    // 0x5e496c: cmp             w0, NULL
    // 0x5e4970: b.eq            #0x5e49f4
    // 0x5e4974: LoadField: r1 = r0->field_b
    //     0x5e4974: ldur            w1, [x0, #0xb]
    // 0x5e4978: DecompressPointer r1
    //     0x5e4978: add             x1, x1, HEAP, lsl #32
    // 0x5e497c: LoadField: r0 = r1->field_33
    //     0x5e497c: ldur            w0, [x1, #0x33]
    // 0x5e4980: DecompressPointer r0
    //     0x5e4980: add             x0, x0, HEAP, lsl #32
    // 0x5e4984: stur            x0, [fp, #-0x10]
    // 0x5e4988: r1 = <TextEditingValue>
    //     0x5e4988: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x5e498c: r0 = TextEditingController()
    //     0x5e498c: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x5e4990: stur            x0, [fp, #-0x18]
    // 0x5e4994: ldur            x16, [fp, #-0x10]
    // 0x5e4998: str             x16, [SP]
    // 0x5e499c: mov             x1, x0
    // 0x5e49a0: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x5e49a0: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x5e49a4: ldr             x4, [x4, #0xa20]
    // 0x5e49a8: r0 = TextEditingController()
    //     0x5e49a8: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x5e49ac: ldur            x0, [fp, #-0x18]
    // 0x5e49b0: ldur            x1, [fp, #-8]
    // 0x5e49b4: StoreField: r1->field_33 = r0
    //     0x5e49b4: stur            w0, [x1, #0x33]
    //     0x5e49b8: ldurb           w16, [x1, #-1]
    //     0x5e49bc: ldurb           w17, [x0, #-1]
    //     0x5e49c0: and             x16, x17, x16, lsr #2
    //     0x5e49c4: tst             x16, HEAP, lsr #32
    //     0x5e49c8: b.eq            #0x5e49d0
    //     0x5e49cc: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5e49d0: r0 = Null
    //     0x5e49d0: mov             x0, NULL
    // 0x5e49d4: LeaveFrame
    //     0x5e49d4: mov             SP, fp
    //     0x5e49d8: ldp             fp, lr, [SP], #0x10
    // 0x5e49dc: ret
    //     0x5e49dc: ret             
    // 0x5e49e0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e49e0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e49e4: b               #0x5e481c
    // 0x5e49e8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e49e8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5e49ec: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e49ec: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5e49f0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e49f0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5e49f4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e49f4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _updateSelectedValues(/* No info */) {
    // ** addr: 0x5e4b34, size: 0x180
    // 0x5e4b34: EnterFrame
    //     0x5e4b34: stp             fp, lr, [SP, #-0x10]!
    //     0x5e4b38: mov             fp, SP
    // 0x5e4b3c: AllocStack(0x18)
    //     0x5e4b3c: sub             SP, SP, #0x18
    // 0x5e4b40: SetupParameters(UserAssignmentCardState this /* r1 => r1, fp-0x8 */)
    //     0x5e4b40: stur            x1, [fp, #-8]
    // 0x5e4b44: CheckStackOverflow
    //     0x5e4b44: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e4b48: cmp             SP, x16
    //     0x5e4b4c: b.ls            #0x5e4ca4
    // 0x5e4b50: LoadField: r0 = r1->field_13
    //     0x5e4b50: ldur            w0, [x1, #0x13]
    // 0x5e4b54: DecompressPointer r0
    //     0x5e4b54: add             x0, x0, HEAP, lsl #32
    // 0x5e4b58: r2 = LoadClassIdInstr(r0)
    //     0x5e4b58: ldur            x2, [x0, #-1]
    //     0x5e4b5c: ubfx            x2, x2, #0xc, #0x14
    // 0x5e4b60: r16 = "Mekke"
    //     0x5e4b60: add             x16, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x5e4b64: ldr             x16, [x16, #0xdf0]
    // 0x5e4b68: stp             x16, x0, [SP]
    // 0x5e4b6c: mov             x0, x2
    // 0x5e4b70: mov             lr, x0
    // 0x5e4b74: ldr             lr, [x21, lr, lsl #3]
    // 0x5e4b78: blr             lr
    // 0x5e4b7c: tbnz            w0, #4, #0x5e4c0c
    // 0x5e4b80: ldur            x1, [fp, #-8]
    // 0x5e4b84: LoadField: r2 = r1->field_b
    //     0x5e4b84: ldur            w2, [x1, #0xb]
    // 0x5e4b88: DecompressPointer r2
    //     0x5e4b88: add             x2, x2, HEAP, lsl #32
    // 0x5e4b8c: cmp             w2, NULL
    // 0x5e4b90: b.eq            #0x5e4cac
    // 0x5e4b94: LoadField: r3 = r2->field_b
    //     0x5e4b94: ldur            w3, [x2, #0xb]
    // 0x5e4b98: DecompressPointer r3
    //     0x5e4b98: add             x3, x3, HEAP, lsl #32
    // 0x5e4b9c: LoadField: r0 = r3->field_1b
    //     0x5e4b9c: ldur            w0, [x3, #0x1b]
    // 0x5e4ba0: DecompressPointer r0
    //     0x5e4ba0: add             x0, x0, HEAP, lsl #32
    // 0x5e4ba4: ArrayStore: r1[0] = r0  ; List_4
    //     0x5e4ba4: stur            w0, [x1, #0x17]
    //     0x5e4ba8: ldurb           w16, [x1, #-1]
    //     0x5e4bac: ldurb           w17, [x0, #-1]
    //     0x5e4bb0: and             x16, x17, x16, lsr #2
    //     0x5e4bb4: tst             x16, HEAP, lsr #32
    //     0x5e4bb8: b.eq            #0x5e4bc0
    //     0x5e4bbc: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5e4bc0: LoadField: r0 = r3->field_23
    //     0x5e4bc0: ldur            w0, [x3, #0x23]
    // 0x5e4bc4: DecompressPointer r0
    //     0x5e4bc4: add             x0, x0, HEAP, lsl #32
    // 0x5e4bc8: StoreField: r1->field_1b = r0
    //     0x5e4bc8: stur            w0, [x1, #0x1b]
    //     0x5e4bcc: ldurb           w16, [x1, #-1]
    //     0x5e4bd0: ldurb           w17, [x0, #-1]
    //     0x5e4bd4: and             x16, x17, x16, lsr #2
    //     0x5e4bd8: tst             x16, HEAP, lsr #32
    //     0x5e4bdc: b.eq            #0x5e4be4
    //     0x5e4be0: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5e4be4: LoadField: r0 = r3->field_2b
    //     0x5e4be4: ldur            w0, [x3, #0x2b]
    // 0x5e4be8: DecompressPointer r0
    //     0x5e4be8: add             x0, x0, HEAP, lsl #32
    // 0x5e4bec: StoreField: r1->field_1f = r0
    //     0x5e4bec: stur            w0, [x1, #0x1f]
    //     0x5e4bf0: ldurb           w16, [x1, #-1]
    //     0x5e4bf4: ldurb           w17, [x0, #-1]
    //     0x5e4bf8: and             x16, x17, x16, lsr #2
    //     0x5e4bfc: tst             x16, HEAP, lsr #32
    //     0x5e4c00: b.eq            #0x5e4c08
    //     0x5e4c04: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5e4c08: b               #0x5e4c94
    // 0x5e4c0c: ldur            x1, [fp, #-8]
    // 0x5e4c10: LoadField: r2 = r1->field_b
    //     0x5e4c10: ldur            w2, [x1, #0xb]
    // 0x5e4c14: DecompressPointer r2
    //     0x5e4c14: add             x2, x2, HEAP, lsl #32
    // 0x5e4c18: cmp             w2, NULL
    // 0x5e4c1c: b.eq            #0x5e4cb0
    // 0x5e4c20: LoadField: r3 = r2->field_b
    //     0x5e4c20: ldur            w3, [x2, #0xb]
    // 0x5e4c24: DecompressPointer r3
    //     0x5e4c24: add             x3, x3, HEAP, lsl #32
    // 0x5e4c28: LoadField: r0 = r3->field_1f
    //     0x5e4c28: ldur            w0, [x3, #0x1f]
    // 0x5e4c2c: DecompressPointer r0
    //     0x5e4c2c: add             x0, x0, HEAP, lsl #32
    // 0x5e4c30: ArrayStore: r1[0] = r0  ; List_4
    //     0x5e4c30: stur            w0, [x1, #0x17]
    //     0x5e4c34: ldurb           w16, [x1, #-1]
    //     0x5e4c38: ldurb           w17, [x0, #-1]
    //     0x5e4c3c: and             x16, x17, x16, lsr #2
    //     0x5e4c40: tst             x16, HEAP, lsr #32
    //     0x5e4c44: b.eq            #0x5e4c4c
    //     0x5e4c48: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5e4c4c: LoadField: r0 = r3->field_27
    //     0x5e4c4c: ldur            w0, [x3, #0x27]
    // 0x5e4c50: DecompressPointer r0
    //     0x5e4c50: add             x0, x0, HEAP, lsl #32
    // 0x5e4c54: StoreField: r1->field_1b = r0
    //     0x5e4c54: stur            w0, [x1, #0x1b]
    //     0x5e4c58: ldurb           w16, [x1, #-1]
    //     0x5e4c5c: ldurb           w17, [x0, #-1]
    //     0x5e4c60: and             x16, x17, x16, lsr #2
    //     0x5e4c64: tst             x16, HEAP, lsr #32
    //     0x5e4c68: b.eq            #0x5e4c70
    //     0x5e4c6c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5e4c70: LoadField: r0 = r3->field_2f
    //     0x5e4c70: ldur            w0, [x3, #0x2f]
    // 0x5e4c74: DecompressPointer r0
    //     0x5e4c74: add             x0, x0, HEAP, lsl #32
    // 0x5e4c78: StoreField: r1->field_1f = r0
    //     0x5e4c78: stur            w0, [x1, #0x1f]
    //     0x5e4c7c: ldurb           w16, [x1, #-1]
    //     0x5e4c80: ldurb           w17, [x0, #-1]
    //     0x5e4c84: and             x16, x17, x16, lsr #2
    //     0x5e4c88: tst             x16, HEAP, lsr #32
    //     0x5e4c8c: b.eq            #0x5e4c94
    //     0x5e4c90: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5e4c94: r0 = Null
    //     0x5e4c94: mov             x0, NULL
    // 0x5e4c98: LeaveFrame
    //     0x5e4c98: mov             SP, fp
    //     0x5e4c9c: ldp             fp, lr, [SP], #0x10
    // 0x5e4ca0: ret
    //     0x5e4ca0: ret             
    // 0x5e4ca4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e4ca4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e4ca8: b               #0x5e4b50
    // 0x5e4cac: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e4cac: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5e4cb0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e4cb0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ build(/* No info */) {
    // ** addr: 0x6f0bf8, size: 0x18b8
    // 0x6f0bf8: EnterFrame
    //     0x6f0bf8: stp             fp, lr, [SP, #-0x10]!
    //     0x6f0bfc: mov             fp, SP
    // 0x6f0c00: AllocStack(0x98)
    //     0x6f0c00: sub             SP, SP, #0x98
    // 0x6f0c04: SetupParameters(UserAssignmentCardState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x6f0c04: stur            x1, [fp, #-8]
    //     0x6f0c08: stur            x2, [fp, #-0x10]
    // 0x6f0c0c: CheckStackOverflow
    //     0x6f0c0c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f0c10: cmp             SP, x16
    //     0x6f0c14: b.ls            #0x6f2420
    // 0x6f0c18: r1 = 2
    //     0x6f0c18: mov             x1, #2
    // 0x6f0c1c: r0 = AllocateContext()
    //     0x6f0c1c: bl              #0x927010  ; AllocateContextStub
    // 0x6f0c20: mov             x3, x0
    // 0x6f0c24: ldur            x0, [fp, #-8]
    // 0x6f0c28: stur            x3, [fp, #-0x18]
    // 0x6f0c2c: StoreField: r3->field_f = r0
    //     0x6f0c2c: stur            w0, [x3, #0xf]
    // 0x6f0c30: ldur            x1, [fp, #-0x10]
    // 0x6f0c34: StoreField: r3->field_13 = r1
    //     0x6f0c34: stur            w1, [x3, #0x13]
    // 0x6f0c38: LoadField: r1 = r0->field_b
    //     0x6f0c38: ldur            w1, [x0, #0xb]
    // 0x6f0c3c: DecompressPointer r1
    //     0x6f0c3c: add             x1, x1, HEAP, lsl #32
    // 0x6f0c40: cmp             w1, NULL
    // 0x6f0c44: b.eq            #0x6f2428
    // 0x6f0c48: LoadField: r4 = r1->field_13
    //     0x6f0c48: ldur            w4, [x1, #0x13]
    // 0x6f0c4c: DecompressPointer r4
    //     0x6f0c4c: add             x4, x4, HEAP, lsl #32
    // 0x6f0c50: mov             x2, x3
    // 0x6f0c54: stur            x4, [fp, #-0x10]
    // 0x6f0c58: r1 = Function '<anonymous closure>':.
    //     0x6f0c58: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c190] AnonymousClosure: (0x6f741c), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::build (0x6f0bf8)
    //     0x6f0c5c: ldr             x1, [x1, #0x190]
    // 0x6f0c60: r0 = AllocateClosure()
    //     0x6f0c60: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f0c64: ldur            x1, [fp, #-0x10]
    // 0x6f0c68: r2 = LoadClassIdInstr(r1)
    //     0x6f0c68: ldur            x2, [x1, #-1]
    //     0x6f0c6c: ubfx            x2, x2, #0xc, #0x14
    // 0x6f0c70: mov             x16, x0
    // 0x6f0c74: mov             x0, x2
    // 0x6f0c78: mov             x2, x16
    // 0x6f0c7c: r0 = GDT[cid_x0 + 0xd348]()
    //     0x6f0c7c: mov             x17, #0xd348
    //     0x6f0c80: add             lr, x0, x17
    //     0x6f0c84: ldr             lr, [x21, lr, lsl #3]
    //     0x6f0c88: blr             lr
    // 0x6f0c8c: LoadField: r1 = r0->field_7
    //     0x6f0c8c: ldur            w1, [x0, #7]
    // 0x6f0c90: DecompressPointer r1
    //     0x6f0c90: add             x1, x1, HEAP, lsl #32
    // 0x6f0c94: mov             x2, x0
    // 0x6f0c98: r0 = _GrowableList.of()
    //     0x6f0c98: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x6f0c9c: mov             x3, x0
    // 0x6f0ca0: ldur            x0, [fp, #-8]
    // 0x6f0ca4: stur            x3, [fp, #-0x20]
    // 0x6f0ca8: LoadField: r1 = r0->field_b
    //     0x6f0ca8: ldur            w1, [x0, #0xb]
    // 0x6f0cac: DecompressPointer r1
    //     0x6f0cac: add             x1, x1, HEAP, lsl #32
    // 0x6f0cb0: cmp             w1, NULL
    // 0x6f0cb4: b.eq            #0x6f242c
    // 0x6f0cb8: ArrayLoad: r4 = r1[0]  ; List_4
    //     0x6f0cb8: ldur            w4, [x1, #0x17]
    // 0x6f0cbc: DecompressPointer r4
    //     0x6f0cbc: add             x4, x4, HEAP, lsl #32
    // 0x6f0cc0: ldur            x2, [fp, #-0x18]
    // 0x6f0cc4: stur            x4, [fp, #-0x10]
    // 0x6f0cc8: r1 = Function '<anonymous closure>':.
    //     0x6f0cc8: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c198] AnonymousClosure: (0x6f73b0), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::build (0x6f0bf8)
    //     0x6f0ccc: ldr             x1, [x1, #0x198]
    // 0x6f0cd0: r0 = AllocateClosure()
    //     0x6f0cd0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f0cd4: ldur            x1, [fp, #-0x10]
    // 0x6f0cd8: r2 = LoadClassIdInstr(r1)
    //     0x6f0cd8: ldur            x2, [x1, #-1]
    //     0x6f0cdc: ubfx            x2, x2, #0xc, #0x14
    // 0x6f0ce0: mov             x16, x0
    // 0x6f0ce4: mov             x0, x2
    // 0x6f0ce8: mov             x2, x16
    // 0x6f0cec: r0 = GDT[cid_x0 + 0xd348]()
    //     0x6f0cec: mov             x17, #0xd348
    //     0x6f0cf0: add             lr, x0, x17
    //     0x6f0cf4: ldr             lr, [x21, lr, lsl #3]
    //     0x6f0cf8: blr             lr
    // 0x6f0cfc: LoadField: r1 = r0->field_7
    //     0x6f0cfc: ldur            w1, [x0, #7]
    // 0x6f0d00: DecompressPointer r1
    //     0x6f0d00: add             x1, x1, HEAP, lsl #32
    // 0x6f0d04: mov             x2, x0
    // 0x6f0d08: r0 = _GrowableList.of()
    //     0x6f0d08: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x6f0d0c: mov             x3, x0
    // 0x6f0d10: ldur            x0, [fp, #-8]
    // 0x6f0d14: stur            x3, [fp, #-0x28]
    // 0x6f0d18: LoadField: r2 = r0->field_1b
    //     0x6f0d18: ldur            w2, [x0, #0x1b]
    // 0x6f0d1c: DecompressPointer r2
    //     0x6f0d1c: add             x2, x2, HEAP, lsl #32
    // 0x6f0d20: cmp             w2, NULL
    // 0x6f0d24: b.eq            #0x6f0d8c
    // 0x6f0d28: LoadField: r1 = r0->field_b
    //     0x6f0d28: ldur            w1, [x0, #0xb]
    // 0x6f0d2c: DecompressPointer r1
    //     0x6f0d2c: add             x1, x1, HEAP, lsl #32
    // 0x6f0d30: cmp             w1, NULL
    // 0x6f0d34: b.eq            #0x6f2430
    // 0x6f0d38: LoadField: r4 = r1->field_1b
    //     0x6f0d38: ldur            w4, [x1, #0x1b]
    // 0x6f0d3c: DecompressPointer r4
    //     0x6f0d3c: add             x4, x4, HEAP, lsl #32
    // 0x6f0d40: mov             x1, x4
    // 0x6f0d44: stur            x4, [fp, #-0x10]
    // 0x6f0d48: r0 = _getValueOrData()
    //     0x6f0d48: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x6f0d4c: mov             x1, x0
    // 0x6f0d50: ldur            x0, [fp, #-0x10]
    // 0x6f0d54: LoadField: r2 = r0->field_f
    //     0x6f0d54: ldur            w2, [x0, #0xf]
    // 0x6f0d58: DecompressPointer r2
    //     0x6f0d58: add             x2, x2, HEAP, lsl #32
    // 0x6f0d5c: cmp             w2, w1
    // 0x6f0d60: b.ne            #0x6f0d6c
    // 0x6f0d64: r0 = Null
    //     0x6f0d64: mov             x0, NULL
    // 0x6f0d68: b               #0x6f0d70
    // 0x6f0d6c: mov             x0, x1
    // 0x6f0d70: cmp             w0, NULL
    // 0x6f0d74: b.ne            #0x6f0d9c
    // 0x6f0d78: r1 = <RoomModel>
    //     0x6f0d78: add             x1, PP, #0x12, lsl #12  ; [pp+0x126c8] TypeArguments: <RoomModel>
    //     0x6f0d7c: ldr             x1, [x1, #0x6c8]
    // 0x6f0d80: r2 = 0
    //     0x6f0d80: mov             x2, #0
    // 0x6f0d84: r0 = _GrowableList()
    //     0x6f0d84: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x6f0d88: b               #0x6f0d9c
    // 0x6f0d8c: r1 = <RoomModel>
    //     0x6f0d8c: add             x1, PP, #0x12, lsl #12  ; [pp+0x126c8] TypeArguments: <RoomModel>
    //     0x6f0d90: ldr             x1, [x1, #0x6c8]
    // 0x6f0d94: r2 = 0
    //     0x6f0d94: mov             x2, #0
    // 0x6f0d98: r0 = _GrowableList()
    //     0x6f0d98: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x6f0d9c: ldur            x2, [fp, #-0x18]
    // 0x6f0da0: stur            x0, [fp, #-0x10]
    // 0x6f0da4: r1 = Function '<anonymous closure>':.
    //     0x6f0da4: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c1a0] AnonymousClosure: (0x6f7344), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::build (0x6f0bf8)
    //     0x6f0da8: ldr             x1, [x1, #0x1a0]
    // 0x6f0dac: r0 = AllocateClosure()
    //     0x6f0dac: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f0db0: ldur            x1, [fp, #-0x20]
    // 0x6f0db4: mov             x2, x0
    // 0x6f0db8: r0 = any()
    //     0x6f0db8: bl              #0x4f11ac  ; [dart:collection] ListBase::any
    // 0x6f0dbc: tbnz            w0, #4, #0x6f0dd4
    // 0x6f0dc0: ldur            x0, [fp, #-8]
    // 0x6f0dc4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6f0dc4: ldur            w1, [x0, #0x17]
    // 0x6f0dc8: DecompressPointer r1
    //     0x6f0dc8: add             x1, x1, HEAP, lsl #32
    // 0x6f0dcc: mov             x3, x1
    // 0x6f0dd0: b               #0x6f0ddc
    // 0x6f0dd4: ldur            x0, [fp, #-8]
    // 0x6f0dd8: r3 = Null
    //     0x6f0dd8: mov             x3, NULL
    // 0x6f0ddc: ldur            x2, [fp, #-0x18]
    // 0x6f0de0: stur            x3, [fp, #-0x30]
    // 0x6f0de4: r1 = Function '<anonymous closure>':.
    //     0x6f0de4: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c1a8] AnonymousClosure: (0x6f72d8), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::build (0x6f0bf8)
    //     0x6f0de8: ldr             x1, [x1, #0x1a8]
    // 0x6f0dec: r0 = AllocateClosure()
    //     0x6f0dec: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f0df0: ldur            x1, [fp, #-0x28]
    // 0x6f0df4: mov             x2, x0
    // 0x6f0df8: r0 = any()
    //     0x6f0df8: bl              #0x4f11ac  ; [dart:collection] ListBase::any
    // 0x6f0dfc: tbnz            w0, #4, #0x6f0e14
    // 0x6f0e00: ldur            x0, [fp, #-8]
    // 0x6f0e04: LoadField: r1 = r0->field_1b
    //     0x6f0e04: ldur            w1, [x0, #0x1b]
    // 0x6f0e08: DecompressPointer r1
    //     0x6f0e08: add             x1, x1, HEAP, lsl #32
    // 0x6f0e0c: mov             x4, x1
    // 0x6f0e10: b               #0x6f0e1c
    // 0x6f0e14: ldur            x0, [fp, #-8]
    // 0x6f0e18: r4 = Null
    //     0x6f0e18: mov             x4, NULL
    // 0x6f0e1c: ldur            x3, [fp, #-0x10]
    // 0x6f0e20: ldur            x2, [fp, #-0x18]
    // 0x6f0e24: stur            x4, [fp, #-0x38]
    // 0x6f0e28: r1 = Function '<anonymous closure>':.
    //     0x6f0e28: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c1b0] AnonymousClosure: (0x6f726c), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::build (0x6f0bf8)
    //     0x6f0e2c: ldr             x1, [x1, #0x1b0]
    // 0x6f0e30: r0 = AllocateClosure()
    //     0x6f0e30: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f0e34: ldur            x3, [fp, #-0x10]
    // 0x6f0e38: r1 = LoadClassIdInstr(r3)
    //     0x6f0e38: ldur            x1, [x3, #-1]
    //     0x6f0e3c: ubfx            x1, x1, #0xc, #0x14
    // 0x6f0e40: mov             x2, x0
    // 0x6f0e44: mov             x0, x1
    // 0x6f0e48: mov             x1, x3
    // 0x6f0e4c: r0 = GDT[cid_x0 + 0xcb0c]()
    //     0x6f0e4c: mov             x17, #0xcb0c
    //     0x6f0e50: add             lr, x0, x17
    //     0x6f0e54: ldr             lr, [x21, lr, lsl #3]
    //     0x6f0e58: blr             lr
    // 0x6f0e5c: tbnz            w0, #4, #0x6f0e74
    // 0x6f0e60: ldur            x0, [fp, #-8]
    // 0x6f0e64: LoadField: r1 = r0->field_1f
    //     0x6f0e64: ldur            w1, [x0, #0x1f]
    // 0x6f0e68: DecompressPointer r1
    //     0x6f0e68: add             x1, x1, HEAP, lsl #32
    // 0x6f0e6c: mov             x3, x1
    // 0x6f0e70: b               #0x6f0e7c
    // 0x6f0e74: ldur            x0, [fp, #-8]
    // 0x6f0e78: r3 = Null
    //     0x6f0e78: mov             x3, NULL
    // 0x6f0e7c: stur            x3, [fp, #-0x40]
    // 0x6f0e80: r0 = Radius()
    //     0x6f0e80: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6f0e84: d0 = 16.000000
    //     0x6f0e84: fmov            d0, #16.00000000
    // 0x6f0e88: stur            x0, [fp, #-0x48]
    // 0x6f0e8c: StoreField: r0->field_7 = d0
    //     0x6f0e8c: stur            d0, [x0, #7]
    // 0x6f0e90: StoreField: r0->field_f = d0
    //     0x6f0e90: stur            d0, [x0, #0xf]
    // 0x6f0e94: r0 = BorderRadius()
    //     0x6f0e94: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6f0e98: mov             x3, x0
    // 0x6f0e9c: ldur            x0, [fp, #-0x48]
    // 0x6f0ea0: stur            x3, [fp, #-0x50]
    // 0x6f0ea4: StoreField: r3->field_7 = r0
    //     0x6f0ea4: stur            w0, [x3, #7]
    // 0x6f0ea8: StoreField: r3->field_b = r0
    //     0x6f0ea8: stur            w0, [x3, #0xb]
    // 0x6f0eac: StoreField: r3->field_f = r0
    //     0x6f0eac: stur            w0, [x3, #0xf]
    // 0x6f0eb0: StoreField: r3->field_13 = r0
    //     0x6f0eb0: stur            w0, [x3, #0x13]
    // 0x6f0eb4: r1 = _ConstMap len:12
    //     0x6f0eb4: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6f0eb8: r2 = 400
    //     0x6f0eb8: mov             x2, #0x190
    // 0x6f0ebc: r0 = []()
    //     0x6f0ebc: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6f0ec0: cmp             w0, NULL
    // 0x6f0ec4: b.eq            #0x6f2434
    // 0x6f0ec8: str             x0, [SP]
    // 0x6f0ecc: r1 = Null
    //     0x6f0ecc: mov             x1, NULL
    // 0x6f0ed0: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x6f0ed0: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x6f0ed4: ldr             x4, [x4, #0x788]
    // 0x6f0ed8: r0 = Border.all()
    //     0x6f0ed8: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x6f0edc: stur            x0, [fp, #-0x48]
    // 0x6f0ee0: r0 = BoxDecoration()
    //     0x6f0ee0: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6f0ee4: mov             x2, x0
    // 0x6f0ee8: r0 = Instance_Color
    //     0x6f0ee8: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6f0eec: stur            x2, [fp, #-0x58]
    // 0x6f0ef0: StoreField: r2->field_7 = r0
    //     0x6f0ef0: stur            w0, [x2, #7]
    // 0x6f0ef4: ldur            x0, [fp, #-0x48]
    // 0x6f0ef8: StoreField: r2->field_f = r0
    //     0x6f0ef8: stur            w0, [x2, #0xf]
    // 0x6f0efc: ldur            x0, [fp, #-0x50]
    // 0x6f0f00: StoreField: r2->field_13 = r0
    //     0x6f0f00: stur            w0, [x2, #0x13]
    // 0x6f0f04: r0 = Instance_BoxShape
    //     0x6f0f04: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6f0f08: ldr             x0, [x0, #0x1c8]
    // 0x6f0f0c: StoreField: r2->field_23 = r0
    //     0x6f0f0c: stur            w0, [x2, #0x23]
    // 0x6f0f10: ldur            x3, [fp, #-8]
    // 0x6f0f14: LoadField: r1 = r3->field_b
    //     0x6f0f14: ldur            w1, [x3, #0xb]
    // 0x6f0f18: DecompressPointer r1
    //     0x6f0f18: add             x1, x1, HEAP, lsl #32
    // 0x6f0f1c: cmp             w1, NULL
    // 0x6f0f20: b.eq            #0x6f2438
    // 0x6f0f24: r16 = 0.120000
    //     0x6f0f24: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c1b8] 0.12
    //     0x6f0f28: ldr             x16, [x16, #0x1b8]
    // 0x6f0f2c: str             x16, [SP]
    // 0x6f0f30: r1 = Instance_MaterialColor
    //     0x6f0f30: add             x1, PP, #0x12, lsl #12  ; [pp+0x125d8] Obj!MaterialColor@a25ce1
    //     0x6f0f34: ldr             x1, [x1, #0x5d8]
    // 0x6f0f38: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6f0f38: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6f0f3c: ldr             x4, [x4, #0x198]
    // 0x6f0f40: r0 = withValues()
    //     0x6f0f40: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6f0f44: stur            x0, [fp, #-0x48]
    // 0x6f0f48: r0 = BoxDecoration()
    //     0x6f0f48: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6f0f4c: mov             x1, x0
    // 0x6f0f50: ldur            x0, [fp, #-0x48]
    // 0x6f0f54: stur            x1, [fp, #-0x50]
    // 0x6f0f58: StoreField: r1->field_7 = r0
    //     0x6f0f58: stur            w0, [x1, #7]
    // 0x6f0f5c: r0 = Instance_BoxShape
    //     0x6f0f5c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x6f0f60: ldr             x0, [x0, #0x1a0]
    // 0x6f0f64: StoreField: r1->field_23 = r0
    //     0x6f0f64: stur            w0, [x1, #0x23]
    // 0x6f0f68: r0 = Container()
    //     0x6f0f68: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6f0f6c: stur            x0, [fp, #-0x48]
    // 0x6f0f70: r16 = Instance_EdgeInsets
    //     0x6f0f70: add             x16, PP, #0x12, lsl #12  ; [pp+0x12370] Obj!EdgeInsets@a0bff1
    //     0x6f0f74: ldr             x16, [x16, #0x370]
    // 0x6f0f78: ldur            lr, [fp, #-0x50]
    // 0x6f0f7c: stp             lr, x16, [SP, #8]
    // 0x6f0f80: r16 = Instance_Icon
    //     0x6f0f80: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c1c0] Obj!Icon@a1e6b1
    //     0x6f0f84: ldr             x16, [x16, #0x1c0]
    // 0x6f0f88: str             x16, [SP]
    // 0x6f0f8c: mov             x1, x0
    // 0x6f0f90: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x6f0f90: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x6f0f94: ldr             x4, [x4, #0x1e8]
    // 0x6f0f98: r0 = Container()
    //     0x6f0f98: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6f0f9c: ldur            x0, [fp, #-8]
    // 0x6f0fa0: LoadField: r1 = r0->field_b
    //     0x6f0fa0: ldur            w1, [x0, #0xb]
    // 0x6f0fa4: DecompressPointer r1
    //     0x6f0fa4: add             x1, x1, HEAP, lsl #32
    // 0x6f0fa8: cmp             w1, NULL
    // 0x6f0fac: b.eq            #0x6f243c
    // 0x6f0fb0: LoadField: r2 = r1->field_b
    //     0x6f0fb0: ldur            w2, [x1, #0xb]
    // 0x6f0fb4: DecompressPointer r2
    //     0x6f0fb4: add             x2, x2, HEAP, lsl #32
    // 0x6f0fb8: stur            x2, [fp, #-0x60]
    // 0x6f0fbc: LoadField: r1 = r2->field_b
    //     0x6f0fbc: ldur            w1, [x2, #0xb]
    // 0x6f0fc0: DecompressPointer r1
    //     0x6f0fc0: add             x1, x1, HEAP, lsl #32
    // 0x6f0fc4: LoadField: r3 = r1->field_7
    //     0x6f0fc4: ldur            w3, [x1, #7]
    // 0x6f0fc8: cbnz            w3, #0x6f0fd4
    // 0x6f0fcc: r1 = "İsimsiz Misafir"
    //     0x6f0fcc: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c1c8] "İsimsiz Misafir"
    //     0x6f0fd0: ldr             x1, [x1, #0x1c8]
    // 0x6f0fd4: stur            x1, [fp, #-0x50]
    // 0x6f0fd8: r0 = Text()
    //     0x6f0fd8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f0fdc: mov             x3, x0
    // 0x6f0fe0: ldur            x0, [fp, #-0x50]
    // 0x6f0fe4: stur            x3, [fp, #-0x68]
    // 0x6f0fe8: StoreField: r3->field_b = r0
    //     0x6f0fe8: stur            w0, [x3, #0xb]
    // 0x6f0fec: r0 = Instance_TextStyle
    //     0x6f0fec: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c0a8] Obj!TextStyle@a17c91
    //     0x6f0ff0: ldr             x0, [x0, #0xa8]
    // 0x6f0ff4: StoreField: r3->field_13 = r0
    //     0x6f0ff4: stur            w0, [x3, #0x13]
    // 0x6f0ff8: ldur            x0, [fp, #-0x60]
    // 0x6f0ffc: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6f0ffc: ldur            w1, [x0, #0x17]
    // 0x6f1000: DecompressPointer r1
    //     0x6f1000: add             x1, x1, HEAP, lsl #32
    // 0x6f1004: LoadField: r0 = r1->field_7
    //     0x6f1004: ldur            w0, [x1, #7]
    // 0x6f1008: cbz             w0, #0x6f1014
    // 0x6f100c: mov             x4, x1
    // 0x6f1010: b               #0x6f101c
    // 0x6f1014: r4 = "TC belirtilmemiş"
    //     0x6f1014: add             x4, PP, #0x1c, lsl #12  ; [pp+0x1c1d0] "TC belirtilmemiş"
    //     0x6f1018: ldr             x4, [x4, #0x1d0]
    // 0x6f101c: ldur            x0, [fp, #-8]
    // 0x6f1020: stur            x4, [fp, #-0x50]
    // 0x6f1024: r1 = _ConstMap len:12
    //     0x6f1024: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6f1028: r2 = 1200
    //     0x6f1028: mov             x2, #0x4b0
    // 0x6f102c: r0 = []()
    //     0x6f102c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6f1030: stur            x0, [fp, #-0x60]
    // 0x6f1034: cmp             w0, NULL
    // 0x6f1038: b.eq            #0x6f2440
    // 0x6f103c: r0 = TextStyle()
    //     0x6f103c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6f1040: mov             x1, x0
    // 0x6f1044: r0 = true
    //     0x6f1044: add             x0, NULL, #0x20  ; true
    // 0x6f1048: stur            x1, [fp, #-0x70]
    // 0x6f104c: StoreField: r1->field_7 = r0
    //     0x6f104c: stur            w0, [x1, #7]
    // 0x6f1050: ldur            x2, [fp, #-0x60]
    // 0x6f1054: StoreField: r1->field_b = r2
    //     0x6f1054: stur            w2, [x1, #0xb]
    // 0x6f1058: r0 = Text()
    //     0x6f1058: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f105c: mov             x3, x0
    // 0x6f1060: ldur            x0, [fp, #-0x50]
    // 0x6f1064: stur            x3, [fp, #-0x60]
    // 0x6f1068: StoreField: r3->field_b = r0
    //     0x6f1068: stur            w0, [x3, #0xb]
    // 0x6f106c: ldur            x0, [fp, #-0x70]
    // 0x6f1070: StoreField: r3->field_13 = r0
    //     0x6f1070: stur            w0, [x3, #0x13]
    // 0x6f1074: r1 = Null
    //     0x6f1074: mov             x1, NULL
    // 0x6f1078: r2 = 4
    //     0x6f1078: mov             x2, #4
    // 0x6f107c: r0 = AllocateArray()
    //     0x6f107c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f1080: mov             x2, x0
    // 0x6f1084: ldur            x0, [fp, #-0x68]
    // 0x6f1088: stur            x2, [fp, #-0x50]
    // 0x6f108c: StoreField: r2->field_f = r0
    //     0x6f108c: stur            w0, [x2, #0xf]
    // 0x6f1090: ldur            x0, [fp, #-0x60]
    // 0x6f1094: StoreField: r2->field_13 = r0
    //     0x6f1094: stur            w0, [x2, #0x13]
    // 0x6f1098: r1 = <Widget>
    //     0x6f1098: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f109c: r0 = AllocateGrowableArray()
    //     0x6f109c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f10a0: mov             x1, x0
    // 0x6f10a4: ldur            x0, [fp, #-0x50]
    // 0x6f10a8: stur            x1, [fp, #-0x60]
    // 0x6f10ac: StoreField: r1->field_f = r0
    //     0x6f10ac: stur            w0, [x1, #0xf]
    // 0x6f10b0: r2 = 4
    //     0x6f10b0: mov             x2, #4
    // 0x6f10b4: StoreField: r1->field_b = r2
    //     0x6f10b4: stur            w2, [x1, #0xb]
    // 0x6f10b8: r0 = Column()
    //     0x6f10b8: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6f10bc: mov             x2, x0
    // 0x6f10c0: r0 = Instance_Axis
    //     0x6f10c0: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6f10c4: stur            x2, [fp, #-0x50]
    // 0x6f10c8: StoreField: r2->field_f = r0
    //     0x6f10c8: stur            w0, [x2, #0xf]
    // 0x6f10cc: r3 = Instance_MainAxisAlignment
    //     0x6f10cc: add             x3, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6f10d0: ldr             x3, [x3, #0x230]
    // 0x6f10d4: StoreField: r2->field_13 = r3
    //     0x6f10d4: stur            w3, [x2, #0x13]
    // 0x6f10d8: r4 = Instance_MainAxisSize
    //     0x6f10d8: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6f10dc: ldr             x4, [x4, #0x330]
    // 0x6f10e0: ArrayStore: r2[0] = r4  ; List_4
    //     0x6f10e0: stur            w4, [x2, #0x17]
    // 0x6f10e4: r5 = Instance_CrossAxisAlignment
    //     0x6f10e4: add             x5, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x6f10e8: ldr             x5, [x5, #0x238]
    // 0x6f10ec: StoreField: r2->field_1b = r5
    //     0x6f10ec: stur            w5, [x2, #0x1b]
    // 0x6f10f0: r6 = Instance_VerticalDirection
    //     0x6f10f0: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6f10f4: ldr             x6, [x6, #0x340]
    // 0x6f10f8: StoreField: r2->field_23 = r6
    //     0x6f10f8: stur            w6, [x2, #0x23]
    // 0x6f10fc: r7 = Instance_Clip
    //     0x6f10fc: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6f1100: ldr             x7, [x7, #0x348]
    // 0x6f1104: StoreField: r2->field_2b = r7
    //     0x6f1104: stur            w7, [x2, #0x2b]
    // 0x6f1108: StoreField: r2->field_2f = rZR
    //     0x6f1108: stur            xzr, [x2, #0x2f]
    // 0x6f110c: ldur            x1, [fp, #-0x60]
    // 0x6f1110: StoreField: r2->field_b = r1
    //     0x6f1110: stur            w1, [x2, #0xb]
    // 0x6f1114: r1 = <FlexParentData>
    //     0x6f1114: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6f1118: ldr             x1, [x1, #0x340]
    // 0x6f111c: r0 = Expanded()
    //     0x6f111c: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6f1120: mov             x1, x0
    // 0x6f1124: r0 = 1
    //     0x6f1124: mov             x0, #1
    // 0x6f1128: stur            x1, [fp, #-0x60]
    // 0x6f112c: StoreField: r1->field_13 = r0
    //     0x6f112c: stur            x0, [x1, #0x13]
    // 0x6f1130: r0 = Instance_FlexFit
    //     0x6f1130: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6f1134: ldr             x0, [x0, #0x348]
    // 0x6f1138: StoreField: r1->field_1b = r0
    //     0x6f1138: stur            w0, [x1, #0x1b]
    // 0x6f113c: ldur            x0, [fp, #-0x50]
    // 0x6f1140: StoreField: r1->field_b = r0
    //     0x6f1140: stur            w0, [x1, #0xb]
    // 0x6f1144: ldur            x2, [fp, #-8]
    // 0x6f1148: LoadField: r0 = r2->field_b
    //     0x6f1148: ldur            w0, [x2, #0xb]
    // 0x6f114c: DecompressPointer r0
    //     0x6f114c: add             x0, x0, HEAP, lsl #32
    // 0x6f1150: cmp             w0, NULL
    // 0x6f1154: b.eq            #0x6f2444
    // 0x6f1158: LoadField: r3 = r0->field_b
    //     0x6f1158: ldur            w3, [x0, #0xb]
    // 0x6f115c: DecompressPointer r3
    //     0x6f115c: add             x3, x3, HEAP, lsl #32
    // 0x6f1160: LoadField: r0 = r3->field_f
    //     0x6f1160: ldur            w0, [x3, #0xf]
    // 0x6f1164: DecompressPointer r0
    //     0x6f1164: add             x0, x0, HEAP, lsl #32
    // 0x6f1168: r3 = LoadClassIdInstr(r0)
    //     0x6f1168: ldur            x3, [x0, #-1]
    //     0x6f116c: ubfx            x3, x3, #0xc, #0x14
    // 0x6f1170: r16 = "yonetici"
    //     0x6f1170: add             x16, PP, #0x14, lsl #12  ; [pp+0x14798] "yonetici"
    //     0x6f1174: ldr             x16, [x16, #0x798]
    // 0x6f1178: stp             x16, x0, [SP]
    // 0x6f117c: mov             x0, x3
    // 0x6f1180: mov             lr, x0
    // 0x6f1184: ldr             lr, [x21, lr, lsl #3]
    // 0x6f1188: blr             lr
    // 0x6f118c: tbnz            w0, #4, #0x6f11b8
    // 0x6f1190: r16 = 0.120000
    //     0x6f1190: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c1b8] 0.12
    //     0x6f1194: ldr             x16, [x16, #0x1b8]
    // 0x6f1198: str             x16, [SP]
    // 0x6f119c: r1 = Instance_MaterialColor
    //     0x6f119c: add             x1, PP, #0x14, lsl #12  ; [pp+0x141f8] Obj!MaterialColor@a25ba1
    //     0x6f11a0: ldr             x1, [x1, #0x1f8]
    // 0x6f11a4: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6f11a4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6f11a8: ldr             x4, [x4, #0x198]
    // 0x6f11ac: r0 = withValues()
    //     0x6f11ac: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6f11b0: mov             x1, x0
    // 0x6f11b4: b               #0x6f11dc
    // 0x6f11b8: r16 = 0.120000
    //     0x6f11b8: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c1b8] 0.12
    //     0x6f11bc: ldr             x16, [x16, #0x1b8]
    // 0x6f11c0: str             x16, [SP]
    // 0x6f11c4: r1 = Instance_MaterialColor
    //     0x6f11c4: add             x1, PP, #0x12, lsl #12  ; [pp+0x127a8] Obj!MaterialColor@a25a61
    //     0x6f11c8: ldr             x1, [x1, #0x7a8]
    // 0x6f11cc: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6f11cc: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6f11d0: ldr             x4, [x4, #0x198]
    // 0x6f11d4: r0 = withValues()
    //     0x6f11d4: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6f11d8: mov             x1, x0
    // 0x6f11dc: ldur            x0, [fp, #-8]
    // 0x6f11e0: stur            x1, [fp, #-0x50]
    // 0x6f11e4: r0 = Radius()
    //     0x6f11e4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6f11e8: d0 = 12.000000
    //     0x6f11e8: fmov            d0, #12.00000000
    // 0x6f11ec: stur            x0, [fp, #-0x68]
    // 0x6f11f0: StoreField: r0->field_7 = d0
    //     0x6f11f0: stur            d0, [x0, #7]
    // 0x6f11f4: StoreField: r0->field_f = d0
    //     0x6f11f4: stur            d0, [x0, #0xf]
    // 0x6f11f8: r0 = BorderRadius()
    //     0x6f11f8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6f11fc: mov             x1, x0
    // 0x6f1200: ldur            x0, [fp, #-0x68]
    // 0x6f1204: stur            x1, [fp, #-0x70]
    // 0x6f1208: StoreField: r1->field_7 = r0
    //     0x6f1208: stur            w0, [x1, #7]
    // 0x6f120c: StoreField: r1->field_b = r0
    //     0x6f120c: stur            w0, [x1, #0xb]
    // 0x6f1210: StoreField: r1->field_f = r0
    //     0x6f1210: stur            w0, [x1, #0xf]
    // 0x6f1214: StoreField: r1->field_13 = r0
    //     0x6f1214: stur            w0, [x1, #0x13]
    // 0x6f1218: r0 = BoxDecoration()
    //     0x6f1218: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6f121c: mov             x1, x0
    // 0x6f1220: ldur            x0, [fp, #-0x50]
    // 0x6f1224: stur            x1, [fp, #-0x68]
    // 0x6f1228: StoreField: r1->field_7 = r0
    //     0x6f1228: stur            w0, [x1, #7]
    // 0x6f122c: ldur            x0, [fp, #-0x70]
    // 0x6f1230: StoreField: r1->field_13 = r0
    //     0x6f1230: stur            w0, [x1, #0x13]
    // 0x6f1234: r2 = Instance_BoxShape
    //     0x6f1234: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6f1238: ldr             x2, [x2, #0x1c8]
    // 0x6f123c: StoreField: r1->field_23 = r2
    //     0x6f123c: stur            w2, [x1, #0x23]
    // 0x6f1240: ldur            x3, [fp, #-8]
    // 0x6f1244: LoadField: r0 = r3->field_b
    //     0x6f1244: ldur            w0, [x3, #0xb]
    // 0x6f1248: DecompressPointer r0
    //     0x6f1248: add             x0, x0, HEAP, lsl #32
    // 0x6f124c: cmp             w0, NULL
    // 0x6f1250: b.eq            #0x6f2448
    // 0x6f1254: LoadField: r4 = r0->field_b
    //     0x6f1254: ldur            w4, [x0, #0xb]
    // 0x6f1258: DecompressPointer r4
    //     0x6f1258: add             x4, x4, HEAP, lsl #32
    // 0x6f125c: LoadField: r0 = r4->field_f
    //     0x6f125c: ldur            w0, [x4, #0xf]
    // 0x6f1260: DecompressPointer r0
    //     0x6f1260: add             x0, x0, HEAP, lsl #32
    // 0x6f1264: r4 = LoadClassIdInstr(r0)
    //     0x6f1264: ldur            x4, [x0, #-1]
    //     0x6f1268: ubfx            x4, x4, #0xc, #0x14
    // 0x6f126c: r16 = "yonetici"
    //     0x6f126c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14798] "yonetici"
    //     0x6f1270: ldr             x16, [x16, #0x798]
    // 0x6f1274: stp             x16, x0, [SP]
    // 0x6f1278: mov             x0, x4
    // 0x6f127c: mov             lr, x0
    // 0x6f1280: ldr             lr, [x21, lr, lsl #3]
    // 0x6f1284: blr             lr
    // 0x6f1288: tbnz            w0, #4, #0x6f1298
    // 0x6f128c: r2 = "Yönetici"
    //     0x6f128c: add             x2, PP, #0x1b, lsl #12  ; [pp+0x1bf08] "Yönetici"
    //     0x6f1290: ldr             x2, [x2, #0xf08]
    // 0x6f1294: b               #0x6f12a0
    // 0x6f1298: r2 = "Misafir"
    //     0x6f1298: add             x2, PP, #0x15, lsl #12  ; [pp+0x15998] "Misafir"
    //     0x6f129c: ldr             x2, [x2, #0x998]
    // 0x6f12a0: ldur            x1, [fp, #-8]
    // 0x6f12a4: stur            x2, [fp, #-0x50]
    // 0x6f12a8: LoadField: r0 = r1->field_b
    //     0x6f12a8: ldur            w0, [x1, #0xb]
    // 0x6f12ac: DecompressPointer r0
    //     0x6f12ac: add             x0, x0, HEAP, lsl #32
    // 0x6f12b0: cmp             w0, NULL
    // 0x6f12b4: b.eq            #0x6f244c
    // 0x6f12b8: LoadField: r3 = r0->field_b
    //     0x6f12b8: ldur            w3, [x0, #0xb]
    // 0x6f12bc: DecompressPointer r3
    //     0x6f12bc: add             x3, x3, HEAP, lsl #32
    // 0x6f12c0: LoadField: r0 = r3->field_f
    //     0x6f12c0: ldur            w0, [x3, #0xf]
    // 0x6f12c4: DecompressPointer r0
    //     0x6f12c4: add             x0, x0, HEAP, lsl #32
    // 0x6f12c8: r3 = LoadClassIdInstr(r0)
    //     0x6f12c8: ldur            x3, [x0, #-1]
    //     0x6f12cc: ubfx            x3, x3, #0xc, #0x14
    // 0x6f12d0: r16 = "yonetici"
    //     0x6f12d0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14798] "yonetici"
    //     0x6f12d4: ldr             x16, [x16, #0x798]
    // 0x6f12d8: stp             x16, x0, [SP]
    // 0x6f12dc: mov             x0, x3
    // 0x6f12e0: mov             lr, x0
    // 0x6f12e4: ldr             lr, [x21, lr, lsl #3]
    // 0x6f12e8: blr             lr
    // 0x6f12ec: tbnz            w0, #4, #0x6f1310
    // 0x6f12f0: r1 = _ConstMap len:10
    //     0x6f12f0: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f30] Map<int, Color>(10)
    //     0x6f12f4: ldr             x1, [x1, #0xf30]
    // 0x6f12f8: r2 = 1600
    //     0x6f12f8: mov             x2, #0x640
    // 0x6f12fc: r0 = []()
    //     0x6f12fc: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6f1300: cmp             w0, NULL
    // 0x6f1304: b.eq            #0x6f2450
    // 0x6f1308: mov             x4, x0
    // 0x6f130c: b               #0x6f1318
    // 0x6f1310: r4 = Instance_MaterialColor
    //     0x6f1310: add             x4, PP, #0x12, lsl #12  ; [pp+0x127a8] Obj!MaterialColor@a25a61
    //     0x6f1314: ldr             x4, [x4, #0x7a8]
    // 0x6f1318: ldur            x0, [fp, #-8]
    // 0x6f131c: ldur            x3, [fp, #-0x48]
    // 0x6f1320: ldur            x2, [fp, #-0x60]
    // 0x6f1324: ldur            x1, [fp, #-0x50]
    // 0x6f1328: stur            x4, [fp, #-0x70]
    // 0x6f132c: r0 = TextStyle()
    //     0x6f132c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6f1330: mov             x1, x0
    // 0x6f1334: r0 = true
    //     0x6f1334: add             x0, NULL, #0x20  ; true
    // 0x6f1338: stur            x1, [fp, #-0x78]
    // 0x6f133c: StoreField: r1->field_7 = r0
    //     0x6f133c: stur            w0, [x1, #7]
    // 0x6f1340: ldur            x2, [fp, #-0x70]
    // 0x6f1344: StoreField: r1->field_b = r2
    //     0x6f1344: stur            w2, [x1, #0xb]
    // 0x6f1348: r2 = Instance_FontWeight
    //     0x6f1348: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6f134c: ldr             x2, [x2, #0x1d0]
    // 0x6f1350: StoreField: r1->field_23 = r2
    //     0x6f1350: stur            w2, [x1, #0x23]
    // 0x6f1354: r0 = Text()
    //     0x6f1354: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f1358: mov             x1, x0
    // 0x6f135c: ldur            x0, [fp, #-0x50]
    // 0x6f1360: stur            x1, [fp, #-0x70]
    // 0x6f1364: StoreField: r1->field_b = r0
    //     0x6f1364: stur            w0, [x1, #0xb]
    // 0x6f1368: ldur            x0, [fp, #-0x78]
    // 0x6f136c: StoreField: r1->field_13 = r0
    //     0x6f136c: stur            w0, [x1, #0x13]
    // 0x6f1370: r0 = Container()
    //     0x6f1370: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6f1374: stur            x0, [fp, #-0x50]
    // 0x6f1378: r16 = Instance_EdgeInsets
    //     0x6f1378: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f70] Obj!EdgeInsets@a0c4d1
    //     0x6f137c: ldr             x16, [x16, #0xf70]
    // 0x6f1380: ldur            lr, [fp, #-0x68]
    // 0x6f1384: stp             lr, x16, [SP, #8]
    // 0x6f1388: ldur            x16, [fp, #-0x70]
    // 0x6f138c: str             x16, [SP]
    // 0x6f1390: mov             x1, x0
    // 0x6f1394: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x6f1394: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x6f1398: ldr             x4, [x4, #0x1e8]
    // 0x6f139c: r0 = Container()
    //     0x6f139c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6f13a0: r1 = Null
    //     0x6f13a0: mov             x1, NULL
    // 0x6f13a4: r2 = 8
    //     0x6f13a4: mov             x2, #8
    // 0x6f13a8: r0 = AllocateArray()
    //     0x6f13a8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f13ac: mov             x2, x0
    // 0x6f13b0: ldur            x0, [fp, #-0x48]
    // 0x6f13b4: stur            x2, [fp, #-0x68]
    // 0x6f13b8: StoreField: r2->field_f = r0
    //     0x6f13b8: stur            w0, [x2, #0xf]
    // 0x6f13bc: r16 = Instance_SizedBox
    //     0x6f13bc: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x6f13c0: ldr             x16, [x16, #0x360]
    // 0x6f13c4: StoreField: r2->field_13 = r16
    //     0x6f13c4: stur            w16, [x2, #0x13]
    // 0x6f13c8: ldur            x0, [fp, #-0x60]
    // 0x6f13cc: ArrayStore: r2[0] = r0  ; List_4
    //     0x6f13cc: stur            w0, [x2, #0x17]
    // 0x6f13d0: ldur            x0, [fp, #-0x50]
    // 0x6f13d4: StoreField: r2->field_1b = r0
    //     0x6f13d4: stur            w0, [x2, #0x1b]
    // 0x6f13d8: r1 = <Widget>
    //     0x6f13d8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f13dc: r0 = AllocateGrowableArray()
    //     0x6f13dc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f13e0: mov             x1, x0
    // 0x6f13e4: ldur            x0, [fp, #-0x68]
    // 0x6f13e8: stur            x1, [fp, #-0x48]
    // 0x6f13ec: StoreField: r1->field_f = r0
    //     0x6f13ec: stur            w0, [x1, #0xf]
    // 0x6f13f0: r0 = 8
    //     0x6f13f0: mov             x0, #8
    // 0x6f13f4: StoreField: r1->field_b = r0
    //     0x6f13f4: stur            w0, [x1, #0xb]
    // 0x6f13f8: ldur            x2, [fp, #-8]
    // 0x6f13fc: LoadField: r0 = r2->field_b
    //     0x6f13fc: ldur            w0, [x2, #0xb]
    // 0x6f1400: DecompressPointer r0
    //     0x6f1400: add             x0, x0, HEAP, lsl #32
    // 0x6f1404: cmp             w0, NULL
    // 0x6f1408: b.eq            #0x6f2454
    // 0x6f140c: LoadField: r3 = r0->field_b
    //     0x6f140c: ldur            w3, [x0, #0xb]
    // 0x6f1410: DecompressPointer r3
    //     0x6f1410: add             x3, x3, HEAP, lsl #32
    // 0x6f1414: LoadField: r0 = r3->field_37
    //     0x6f1414: ldur            w0, [x3, #0x37]
    // 0x6f1418: DecompressPointer r0
    //     0x6f1418: add             x0, x0, HEAP, lsl #32
    // 0x6f141c: cmp             w0, NULL
    // 0x6f1420: b.eq            #0x6f1658
    // 0x6f1424: r3 = LoadClassIdInstr(r0)
    //     0x6f1424: ldur            x3, [x0, #-1]
    //     0x6f1428: ubfx            x3, x3, #0xc, #0x14
    // 0x6f142c: r16 = "Erkek"
    //     0x6f142c: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c1d8] "Erkek"
    //     0x6f1430: ldr             x16, [x16, #0x1d8]
    // 0x6f1434: stp             x16, x0, [SP]
    // 0x6f1438: mov             x0, x3
    // 0x6f143c: mov             lr, x0
    // 0x6f1440: ldr             lr, [x21, lr, lsl #3]
    // 0x6f1444: blr             lr
    // 0x6f1448: tbnz            w0, #4, #0x6f1470
    // 0x6f144c: r16 = 0.120000
    //     0x6f144c: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c1b8] 0.12
    //     0x6f1450: ldr             x16, [x16, #0x1b8]
    // 0x6f1454: str             x16, [SP]
    // 0x6f1458: r1 = Instance_MaterialColor
    //     0x6f1458: ldr             x1, [PP, #0x5720]  ; [pp+0x5720] Obj!MaterialColor@a25a21
    // 0x6f145c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6f145c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6f1460: ldr             x4, [x4, #0x198]
    // 0x6f1464: r0 = withValues()
    //     0x6f1464: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6f1468: mov             x1, x0
    // 0x6f146c: b               #0x6f1494
    // 0x6f1470: r16 = 0.120000
    //     0x6f1470: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c1b8] 0.12
    //     0x6f1474: ldr             x16, [x16, #0x1b8]
    // 0x6f1478: str             x16, [SP]
    // 0x6f147c: r1 = Instance_MaterialColor
    //     0x6f147c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c1e0] Obj!MaterialColor@a25ea1
    //     0x6f1480: ldr             x1, [x1, #0x1e0]
    // 0x6f1484: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6f1484: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6f1488: ldr             x4, [x4, #0x198]
    // 0x6f148c: r0 = withValues()
    //     0x6f148c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6f1490: mov             x1, x0
    // 0x6f1494: ldur            x0, [fp, #-8]
    // 0x6f1498: stur            x1, [fp, #-0x50]
    // 0x6f149c: r0 = Radius()
    //     0x6f149c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6f14a0: d0 = 12.000000
    //     0x6f14a0: fmov            d0, #12.00000000
    // 0x6f14a4: stur            x0, [fp, #-0x60]
    // 0x6f14a8: StoreField: r0->field_7 = d0
    //     0x6f14a8: stur            d0, [x0, #7]
    // 0x6f14ac: StoreField: r0->field_f = d0
    //     0x6f14ac: stur            d0, [x0, #0xf]
    // 0x6f14b0: r0 = BorderRadius()
    //     0x6f14b0: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6f14b4: mov             x1, x0
    // 0x6f14b8: ldur            x0, [fp, #-0x60]
    // 0x6f14bc: stur            x1, [fp, #-0x68]
    // 0x6f14c0: StoreField: r1->field_7 = r0
    //     0x6f14c0: stur            w0, [x1, #7]
    // 0x6f14c4: StoreField: r1->field_b = r0
    //     0x6f14c4: stur            w0, [x1, #0xb]
    // 0x6f14c8: StoreField: r1->field_f = r0
    //     0x6f14c8: stur            w0, [x1, #0xf]
    // 0x6f14cc: StoreField: r1->field_13 = r0
    //     0x6f14cc: stur            w0, [x1, #0x13]
    // 0x6f14d0: r0 = BoxDecoration()
    //     0x6f14d0: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6f14d4: mov             x1, x0
    // 0x6f14d8: ldur            x0, [fp, #-0x50]
    // 0x6f14dc: stur            x1, [fp, #-0x60]
    // 0x6f14e0: StoreField: r1->field_7 = r0
    //     0x6f14e0: stur            w0, [x1, #7]
    // 0x6f14e4: ldur            x0, [fp, #-0x68]
    // 0x6f14e8: StoreField: r1->field_13 = r0
    //     0x6f14e8: stur            w0, [x1, #0x13]
    // 0x6f14ec: r2 = Instance_BoxShape
    //     0x6f14ec: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6f14f0: ldr             x2, [x2, #0x1c8]
    // 0x6f14f4: StoreField: r1->field_23 = r2
    //     0x6f14f4: stur            w2, [x1, #0x23]
    // 0x6f14f8: ldur            x3, [fp, #-8]
    // 0x6f14fc: LoadField: r0 = r3->field_b
    //     0x6f14fc: ldur            w0, [x3, #0xb]
    // 0x6f1500: DecompressPointer r0
    //     0x6f1500: add             x0, x0, HEAP, lsl #32
    // 0x6f1504: cmp             w0, NULL
    // 0x6f1508: b.eq            #0x6f2458
    // 0x6f150c: LoadField: r4 = r0->field_b
    //     0x6f150c: ldur            w4, [x0, #0xb]
    // 0x6f1510: DecompressPointer r4
    //     0x6f1510: add             x4, x4, HEAP, lsl #32
    // 0x6f1514: LoadField: r5 = r4->field_37
    //     0x6f1514: ldur            w5, [x4, #0x37]
    // 0x6f1518: DecompressPointer r5
    //     0x6f1518: add             x5, x5, HEAP, lsl #32
    // 0x6f151c: stur            x5, [fp, #-0x50]
    // 0x6f1520: cmp             w5, NULL
    // 0x6f1524: b.eq            #0x6f245c
    // 0x6f1528: r0 = LoadClassIdInstr(r5)
    //     0x6f1528: ldur            x0, [x5, #-1]
    //     0x6f152c: ubfx            x0, x0, #0xc, #0x14
    // 0x6f1530: r16 = "Erkek"
    //     0x6f1530: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c1d8] "Erkek"
    //     0x6f1534: ldr             x16, [x16, #0x1d8]
    // 0x6f1538: stp             x16, x5, [SP]
    // 0x6f153c: mov             lr, x0
    // 0x6f1540: ldr             lr, [x21, lr, lsl #3]
    // 0x6f1544: blr             lr
    // 0x6f1548: tbnz            w0, #4, #0x6f1568
    // 0x6f154c: r1 = _ConstMap len:10
    //     0x6f154c: ldr             x1, [PP, #0x5728]  ; [pp+0x5728] Map<int, Color>(10)
    // 0x6f1550: r2 = 1600
    //     0x6f1550: mov             x2, #0x640
    // 0x6f1554: r0 = []()
    //     0x6f1554: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6f1558: cmp             w0, NULL
    // 0x6f155c: b.eq            #0x6f2460
    // 0x6f1560: mov             x1, x0
    // 0x6f1564: b               #0x6f1584
    // 0x6f1568: r1 = _ConstMap len:10
    //     0x6f1568: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c1e8] Map<int, Color>(10)
    //     0x6f156c: ldr             x1, [x1, #0x1e8]
    // 0x6f1570: r2 = 1600
    //     0x6f1570: mov             x2, #0x640
    // 0x6f1574: r0 = []()
    //     0x6f1574: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6f1578: cmp             w0, NULL
    // 0x6f157c: b.eq            #0x6f2464
    // 0x6f1580: mov             x1, x0
    // 0x6f1584: ldur            x0, [fp, #-0x50]
    // 0x6f1588: stur            x1, [fp, #-0x68]
    // 0x6f158c: r0 = TextStyle()
    //     0x6f158c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6f1590: mov             x1, x0
    // 0x6f1594: r0 = true
    //     0x6f1594: add             x0, NULL, #0x20  ; true
    // 0x6f1598: stur            x1, [fp, #-0x70]
    // 0x6f159c: StoreField: r1->field_7 = r0
    //     0x6f159c: stur            w0, [x1, #7]
    // 0x6f15a0: ldur            x2, [fp, #-0x68]
    // 0x6f15a4: StoreField: r1->field_b = r2
    //     0x6f15a4: stur            w2, [x1, #0xb]
    // 0x6f15a8: r2 = 12.000000
    //     0x6f15a8: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x6f15ac: ldr             x2, [x2, #0xae0]
    // 0x6f15b0: StoreField: r1->field_1f = r2
    //     0x6f15b0: stur            w2, [x1, #0x1f]
    // 0x6f15b4: r2 = Instance_FontWeight
    //     0x6f15b4: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6f15b8: ldr             x2, [x2, #0x1d0]
    // 0x6f15bc: StoreField: r1->field_23 = r2
    //     0x6f15bc: stur            w2, [x1, #0x23]
    // 0x6f15c0: r0 = Text()
    //     0x6f15c0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f15c4: mov             x1, x0
    // 0x6f15c8: ldur            x0, [fp, #-0x50]
    // 0x6f15cc: stur            x1, [fp, #-0x68]
    // 0x6f15d0: StoreField: r1->field_b = r0
    //     0x6f15d0: stur            w0, [x1, #0xb]
    // 0x6f15d4: ldur            x0, [fp, #-0x70]
    // 0x6f15d8: StoreField: r1->field_13 = r0
    //     0x6f15d8: stur            w0, [x1, #0x13]
    // 0x6f15dc: r0 = Container()
    //     0x6f15dc: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6f15e0: stur            x0, [fp, #-0x50]
    // 0x6f15e4: r16 = Instance_EdgeInsets
    //     0x6f15e4: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c1f0] Obj!EdgeInsets@a0c471
    //     0x6f15e8: ldr             x16, [x16, #0x1f0]
    // 0x6f15ec: ldur            lr, [fp, #-0x60]
    // 0x6f15f0: stp             lr, x16, [SP, #8]
    // 0x6f15f4: ldur            x16, [fp, #-0x68]
    // 0x6f15f8: str             x16, [SP]
    // 0x6f15fc: mov             x1, x0
    // 0x6f1600: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x6f1600: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x6f1604: ldr             x4, [x4, #0x1e8]
    // 0x6f1608: r0 = Container()
    //     0x6f1608: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6f160c: r1 = Null
    //     0x6f160c: mov             x1, NULL
    // 0x6f1610: r2 = 4
    //     0x6f1610: mov             x2, #4
    // 0x6f1614: r0 = AllocateArray()
    //     0x6f1614: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f1618: stur            x0, [fp, #-0x60]
    // 0x6f161c: r16 = Instance_SizedBox
    //     0x6f161c: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c100] Obj!SizedBox@a1fbf1
    //     0x6f1620: ldr             x16, [x16, #0x100]
    // 0x6f1624: StoreField: r0->field_f = r16
    //     0x6f1624: stur            w16, [x0, #0xf]
    // 0x6f1628: ldur            x1, [fp, #-0x50]
    // 0x6f162c: StoreField: r0->field_13 = r1
    //     0x6f162c: stur            w1, [x0, #0x13]
    // 0x6f1630: r1 = <Widget>
    //     0x6f1630: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f1634: r0 = AllocateGrowableArray()
    //     0x6f1634: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f1638: mov             x1, x0
    // 0x6f163c: ldur            x0, [fp, #-0x60]
    // 0x6f1640: StoreField: r1->field_f = r0
    //     0x6f1640: stur            w0, [x1, #0xf]
    // 0x6f1644: r0 = 4
    //     0x6f1644: mov             x0, #4
    // 0x6f1648: StoreField: r1->field_b = r0
    //     0x6f1648: stur            w0, [x1, #0xb]
    // 0x6f164c: mov             x2, x1
    // 0x6f1650: ldur            x1, [fp, #-0x48]
    // 0x6f1654: r0 = addAll()
    //     0x6f1654: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x6f1658: ldur            x0, [fp, #-8]
    // 0x6f165c: ldur            x1, [fp, #-0x48]
    // 0x6f1660: r0 = Row()
    //     0x6f1660: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6f1664: mov             x3, x0
    // 0x6f1668: r0 = Instance_Axis
    //     0x6f1668: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6f166c: stur            x3, [fp, #-0x50]
    // 0x6f1670: StoreField: r3->field_f = r0
    //     0x6f1670: stur            w0, [x3, #0xf]
    // 0x6f1674: r4 = Instance_MainAxisAlignment
    //     0x6f1674: add             x4, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6f1678: ldr             x4, [x4, #0x230]
    // 0x6f167c: StoreField: r3->field_13 = r4
    //     0x6f167c: stur            w4, [x3, #0x13]
    // 0x6f1680: r5 = Instance_MainAxisSize
    //     0x6f1680: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6f1684: ldr             x5, [x5, #0x330]
    // 0x6f1688: ArrayStore: r3[0] = r5  ; List_4
    //     0x6f1688: stur            w5, [x3, #0x17]
    // 0x6f168c: r1 = Instance_CrossAxisAlignment
    //     0x6f168c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6f1690: ldr             x1, [x1, #0x338]
    // 0x6f1694: StoreField: r3->field_1b = r1
    //     0x6f1694: stur            w1, [x3, #0x1b]
    // 0x6f1698: r6 = Instance_VerticalDirection
    //     0x6f1698: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6f169c: ldr             x6, [x6, #0x340]
    // 0x6f16a0: StoreField: r3->field_23 = r6
    //     0x6f16a0: stur            w6, [x3, #0x23]
    // 0x6f16a4: r7 = Instance_Clip
    //     0x6f16a4: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6f16a8: ldr             x7, [x7, #0x348]
    // 0x6f16ac: StoreField: r3->field_2b = r7
    //     0x6f16ac: stur            w7, [x3, #0x2b]
    // 0x6f16b0: StoreField: r3->field_2f = rZR
    //     0x6f16b0: stur            xzr, [x3, #0x2f]
    // 0x6f16b4: ldur            x1, [fp, #-0x48]
    // 0x6f16b8: StoreField: r3->field_b = r1
    //     0x6f16b8: stur            w1, [x3, #0xb]
    // 0x6f16bc: r1 = <Widget>
    //     0x6f16bc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f16c0: r2 = 44
    //     0x6f16c0: mov             x2, #0x2c
    // 0x6f16c4: r0 = AllocateArray()
    //     0x6f16c4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f16c8: mov             x2, x0
    // 0x6f16cc: ldur            x0, [fp, #-0x50]
    // 0x6f16d0: stur            x2, [fp, #-0x48]
    // 0x6f16d4: StoreField: r2->field_f = r0
    //     0x6f16d4: stur            w0, [x2, #0xf]
    // 0x6f16d8: r16 = Instance_SizedBox
    //     0x6f16d8: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6f16dc: ldr             x16, [x16, #0x220]
    // 0x6f16e0: StoreField: r2->field_13 = r16
    //     0x6f16e0: stur            w16, [x2, #0x13]
    // 0x6f16e4: r1 = <String>
    //     0x6f16e4: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6f16e8: r0 = _Set()
    //     0x6f16e8: bl              #0x3f1e64  ; Allocate_SetStub -> _Set<X0> (size=-0x8)
    // 0x6f16ec: mov             x3, x0
    // 0x6f16f0: r0 = _Uint32List
    //     0x6f16f0: ldr             x0, [PP, #0x170]  ; [pp+0x170] _Uint32List(1) [0x0]
    // 0x6f16f4: stur            x3, [fp, #-0x50]
    // 0x6f16f8: StoreField: r3->field_1b = r0
    //     0x6f16f8: stur            w0, [x3, #0x1b]
    // 0x6f16fc: StoreField: r3->field_b = rZR
    //     0x6f16fc: stur            wzr, [x3, #0xb]
    // 0x6f1700: r0 = const []
    //     0x6f1700: ldr             x0, [PP, #0x178]  ; [pp+0x178] List(0) []
    // 0x6f1704: StoreField: r3->field_f = r0
    //     0x6f1704: stur            w0, [x3, #0xf]
    // 0x6f1708: StoreField: r3->field_13 = rZR
    //     0x6f1708: stur            wzr, [x3, #0x13]
    // 0x6f170c: ArrayStore: r3[0] = rZR  ; List_4
    //     0x6f170c: stur            wzr, [x3, #0x17]
    // 0x6f1710: ldur            x0, [fp, #-8]
    // 0x6f1714: LoadField: r2 = r0->field_13
    //     0x6f1714: ldur            w2, [x0, #0x13]
    // 0x6f1718: DecompressPointer r2
    //     0x6f1718: add             x2, x2, HEAP, lsl #32
    // 0x6f171c: mov             x1, x3
    // 0x6f1720: r0 = add()
    //     0x6f1720: bl              #0x90be78  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::add
    // 0x6f1724: r1 = <String>
    //     0x6f1724: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6f1728: r0 = SegmentedButton()
    //     0x6f1728: bl              #0x6f24e8  ; AllocateSegmentedButtonStub -> SegmentedButton<X0> (size=0x38)
    // 0x6f172c: mov             x3, x0
    // 0x6f1730: r0 = const [Instance of 'ButtonSegment<String>', Instance of 'ButtonSegment<String>']
    //     0x6f1730: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c1f8] List<ButtonSegment<String>>(2)
    //     0x6f1734: ldr             x0, [x0, #0x1f8]
    // 0x6f1738: stur            x3, [fp, #-0x60]
    // 0x6f173c: StoreField: r3->field_f = r0
    //     0x6f173c: stur            w0, [x3, #0xf]
    // 0x6f1740: ldur            x0, [fp, #-0x50]
    // 0x6f1744: ArrayStore: r3[0] = r0  ; List_4
    //     0x6f1744: stur            w0, [x3, #0x17]
    // 0x6f1748: ldur            x2, [fp, #-0x18]
    // 0x6f174c: r1 = Function '<anonymous closure>':.
    //     0x6f174c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c200] AnonymousClosure: (0x6f7134), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::build (0x6f0bf8)
    //     0x6f1750: ldr             x1, [x1, #0x200]
    // 0x6f1754: r0 = AllocateClosure()
    //     0x6f1754: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f1758: mov             x1, x0
    // 0x6f175c: ldur            x0, [fp, #-0x60]
    // 0x6f1760: StoreField: r0->field_1b = r1
    //     0x6f1760: stur            w1, [x0, #0x1b]
    // 0x6f1764: r3 = false
    //     0x6f1764: add             x3, NULL, #0x30  ; false
    // 0x6f1768: StoreField: r0->field_1f = r3
    //     0x6f1768: stur            w3, [x0, #0x1f]
    // 0x6f176c: StoreField: r0->field_23 = r3
    //     0x6f176c: stur            w3, [x0, #0x23]
    // 0x6f1770: r4 = true
    //     0x6f1770: add             x4, NULL, #0x20  ; true
    // 0x6f1774: StoreField: r0->field_2f = r4
    //     0x6f1774: stur            w4, [x0, #0x2f]
    // 0x6f1778: r1 = Instance_Axis
    //     0x6f1778: ldr             x1, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6f177c: StoreField: r0->field_13 = r1
    //     0x6f177c: stur            w1, [x0, #0x13]
    // 0x6f1780: ldur            x1, [fp, #-0x48]
    // 0x6f1784: ArrayStore: r1[2] = r0  ; List_4
    //     0x6f1784: add             x25, x1, #0x17
    //     0x6f1788: str             w0, [x25]
    //     0x6f178c: tbz             w0, #0, #0x6f17a8
    //     0x6f1790: ldurb           w16, [x1, #-1]
    //     0x6f1794: ldurb           w17, [x0, #-1]
    //     0x6f1798: and             x16, x17, x16, lsr #2
    //     0x6f179c: tst             x16, HEAP, lsr #32
    //     0x6f17a0: b.eq            #0x6f17a8
    //     0x6f17a4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f17a8: ldur            x0, [fp, #-0x48]
    // 0x6f17ac: r16 = Instance_SizedBox
    //     0x6f17ac: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6f17b0: ldr             x16, [x16, #0x220]
    // 0x6f17b4: StoreField: r0->field_1b = r16
    //     0x6f17b4: stur            w16, [x0, #0x1b]
    // 0x6f17b8: ldur            x5, [fp, #-8]
    // 0x6f17bc: LoadField: r6 = r5->field_13
    //     0x6f17bc: ldur            w6, [x5, #0x13]
    // 0x6f17c0: DecompressPointer r6
    //     0x6f17c0: add             x6, x6, HEAP, lsl #32
    // 0x6f17c4: stur            x6, [fp, #-0x50]
    // 0x6f17c8: r1 = Null
    //     0x6f17c8: mov             x1, NULL
    // 0x6f17cc: r2 = 4
    //     0x6f17cc: mov             x2, #4
    // 0x6f17d0: r0 = AllocateArray()
    //     0x6f17d0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f17d4: mov             x1, x0
    // 0x6f17d8: ldur            x0, [fp, #-0x50]
    // 0x6f17dc: StoreField: r1->field_f = r0
    //     0x6f17dc: stur            w0, [x1, #0xf]
    // 0x6f17e0: r16 = " Seferi"
    //     0x6f17e0: add             x16, PP, #0x19, lsl #12  ; [pp+0x19568] " Seferi"
    //     0x6f17e4: ldr             x16, [x16, #0x568]
    // 0x6f17e8: StoreField: r1->field_13 = r16
    //     0x6f17e8: stur            w16, [x1, #0x13]
    // 0x6f17ec: str             x1, [SP]
    // 0x6f17f0: r0 = _interpolate()
    //     0x6f17f0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6f17f4: stur            x0, [fp, #-0x50]
    // 0x6f17f8: r0 = InputDecoration()
    //     0x6f17f8: bl              #0x5fbec8  ; AllocateInputDecorationStub -> InputDecoration (size=0xec)
    // 0x6f17fc: mov             x3, x0
    // 0x6f1800: ldur            x0, [fp, #-0x50]
    // 0x6f1804: stur            x3, [fp, #-0x60]
    // 0x6f1808: StoreField: r3->field_13 = r0
    //     0x6f1808: stur            w0, [x3, #0x13]
    // 0x6f180c: r0 = true
    //     0x6f180c: add             x0, NULL, #0x20  ; true
    // 0x6f1810: StoreField: r3->field_47 = r0
    //     0x6f1810: stur            w0, [x3, #0x47]
    // 0x6f1814: StoreField: r3->field_4b = r0
    //     0x6f1814: stur            w0, [x3, #0x4b]
    // 0x6f1818: StoreField: r3->field_d7 = r0
    //     0x6f1818: stur            w0, [x3, #0xd7]
    // 0x6f181c: r1 = Null
    //     0x6f181c: mov             x1, NULL
    // 0x6f1820: r2 = 2
    //     0x6f1820: mov             x2, #2
    // 0x6f1824: r0 = AllocateArray()
    //     0x6f1824: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f1828: stur            x0, [fp, #-0x50]
    // 0x6f182c: r16 = Instance_DropdownMenuItem
    //     0x6f182c: add             x16, PP, #0x19, lsl #12  ; [pp+0x19578] Obj!DropdownMenuItem<String?>@a1f621
    //     0x6f1830: ldr             x16, [x16, #0x578]
    // 0x6f1834: StoreField: r0->field_f = r16
    //     0x6f1834: stur            w16, [x0, #0xf]
    // 0x6f1838: r1 = <DropdownMenuItem<String?>>
    //     0x6f1838: add             x1, PP, #0x14, lsl #12  ; [pp+0x148e0] TypeArguments: <DropdownMenuItem<String?>>
    //     0x6f183c: ldr             x1, [x1, #0x8e0]
    // 0x6f1840: r0 = AllocateGrowableArray()
    //     0x6f1840: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f1844: mov             x3, x0
    // 0x6f1848: ldur            x0, [fp, #-0x50]
    // 0x6f184c: stur            x3, [fp, #-0x68]
    // 0x6f1850: StoreField: r3->field_f = r0
    //     0x6f1850: stur            w0, [x3, #0xf]
    // 0x6f1854: r0 = 2
    //     0x6f1854: mov             x0, #2
    // 0x6f1858: StoreField: r3->field_b = r0
    //     0x6f1858: stur            w0, [x3, #0xb]
    // 0x6f185c: r1 = Function '<anonymous closure>':.
    //     0x6f185c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c208] AnonymousClosure: (0x6f42e8), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::showRoomDialog (0x6f6a1c)
    //     0x6f1860: ldr             x1, [x1, #0x208]
    // 0x6f1864: r2 = Null
    //     0x6f1864: mov             x2, NULL
    // 0x6f1868: r0 = AllocateClosure()
    //     0x6f1868: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f186c: r16 = <DropdownMenuItem<String?>>
    //     0x6f186c: add             x16, PP, #0x14, lsl #12  ; [pp+0x148e0] TypeArguments: <DropdownMenuItem<String?>>
    //     0x6f1870: ldr             x16, [x16, #0x8e0]
    // 0x6f1874: ldur            lr, [fp, #-0x20]
    // 0x6f1878: stp             lr, x16, [SP, #8]
    // 0x6f187c: str             x0, [SP]
    // 0x6f1880: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6f1880: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6f1884: r0 = map()
    //     0x6f1884: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x6f1888: ldur            x1, [fp, #-0x68]
    // 0x6f188c: mov             x2, x0
    // 0x6f1890: r0 = addAll()
    //     0x6f1890: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x6f1894: ldur            x2, [fp, #-0x18]
    // 0x6f1898: r1 = Function '<anonymous closure>':.
    //     0x6f1898: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c210] AnonymousClosure: (0x6f7058), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::build (0x6f0bf8)
    //     0x6f189c: ldr             x1, [x1, #0x210]
    // 0x6f18a0: r0 = AllocateClosure()
    //     0x6f18a0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f18a4: r1 = <String?>
    //     0x6f18a4: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x6f18a8: stur            x0, [fp, #-0x20]
    // 0x6f18ac: r0 = DropdownButtonFormField()
    //     0x6f18ac: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x6f18b0: mov             x1, x0
    // 0x6f18b4: ldur            x2, [fp, #-0x60]
    // 0x6f18b8: ldur            x3, [fp, #-0x30]
    // 0x6f18bc: ldur            x5, [fp, #-0x68]
    // 0x6f18c0: ldur            x6, [fp, #-0x20]
    // 0x6f18c4: stur            x0, [fp, #-0x20]
    // 0x6f18c8: r4 = const [0, 0x5, 0, 0x5, null]
    //     0x6f18c8: ldr             x4, [PP, #0xf28]  ; [pp+0xf28] List(5) [0, 0x5, 0, 0x5, Null]
    // 0x6f18cc: r0 = DropdownButtonFormField()
    //     0x6f18cc: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x6f18d0: ldur            x1, [fp, #-0x48]
    // 0x6f18d4: ldur            x0, [fp, #-0x20]
    // 0x6f18d8: ArrayStore: r1[4] = r0  ; List_4
    //     0x6f18d8: add             x25, x1, #0x1f
    //     0x6f18dc: str             w0, [x25]
    //     0x6f18e0: tbz             w0, #0, #0x6f18fc
    //     0x6f18e4: ldurb           w16, [x1, #-1]
    //     0x6f18e8: ldurb           w17, [x0, #-1]
    //     0x6f18ec: and             x16, x17, x16, lsr #2
    //     0x6f18f0: tst             x16, HEAP, lsr #32
    //     0x6f18f4: b.eq            #0x6f18fc
    //     0x6f18f8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f18fc: ldur            x0, [fp, #-0x48]
    // 0x6f1900: r16 = Instance_SizedBox
    //     0x6f1900: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x6f1904: ldr             x16, [x16, #0x318]
    // 0x6f1908: StoreField: r0->field_23 = r16
    //     0x6f1908: stur            w16, [x0, #0x23]
    // 0x6f190c: r16 = Instance_SizedBox
    //     0x6f190c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6f1910: ldr             x16, [x16, #0x220]
    // 0x6f1914: StoreField: r0->field_27 = r16
    //     0x6f1914: stur            w16, [x0, #0x27]
    // 0x6f1918: ldur            x2, [fp, #-8]
    // 0x6f191c: LoadField: r3 = r2->field_2b
    //     0x6f191c: ldur            w3, [x2, #0x2b]
    // 0x6f1920: DecompressPointer r3
    //     0x6f1920: add             x3, x3, HEAP, lsl #32
    // 0x6f1924: r16 = Sentinel
    //     0x6f1924: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x6f1928: cmp             w3, w16
    // 0x6f192c: b.eq            #0x6f2468
    // 0x6f1930: stur            x3, [fp, #-0x20]
    // 0x6f1934: r1 = <String>
    //     0x6f1934: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6f1938: r0 = TextFormField()
    //     0x6f1938: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6f193c: mov             x1, x0
    // 0x6f1940: ldur            x2, [fp, #-0x20]
    // 0x6f1944: r3 = Instance_InputDecoration
    //     0x6f1944: add             x3, PP, #0x18, lsl #12  ; [pp+0x18768] Obj!InputDecoration@a0eb11
    //     0x6f1948: ldr             x3, [x3, #0x768]
    // 0x6f194c: stur            x0, [fp, #-0x20]
    // 0x6f1950: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x6f1950: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x6f1954: r0 = TextFormField()
    //     0x6f1954: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6f1958: ldur            x1, [fp, #-0x48]
    // 0x6f195c: ldur            x0, [fp, #-0x20]
    // 0x6f1960: ArrayStore: r1[7] = r0  ; List_4
    //     0x6f1960: add             x25, x1, #0x2b
    //     0x6f1964: str             w0, [x25]
    //     0x6f1968: tbz             w0, #0, #0x6f1984
    //     0x6f196c: ldurb           w16, [x1, #-1]
    //     0x6f1970: ldurb           w17, [x0, #-1]
    //     0x6f1974: and             x16, x17, x16, lsr #2
    //     0x6f1978: tst             x16, HEAP, lsr #32
    //     0x6f197c: b.eq            #0x6f1984
    //     0x6f1980: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f1984: ldur            x0, [fp, #-0x48]
    // 0x6f1988: r16 = Instance_SizedBox
    //     0x6f1988: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x6f198c: ldr             x16, [x16, #0x318]
    // 0x6f1990: StoreField: r0->field_2f = r16
    //     0x6f1990: stur            w16, [x0, #0x2f]
    // 0x6f1994: ldur            x2, [fp, #-8]
    // 0x6f1998: LoadField: r3 = r2->field_2f
    //     0x6f1998: ldur            w3, [x2, #0x2f]
    // 0x6f199c: DecompressPointer r3
    //     0x6f199c: add             x3, x3, HEAP, lsl #32
    // 0x6f19a0: r16 = Sentinel
    //     0x6f19a0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x6f19a4: cmp             w3, w16
    // 0x6f19a8: b.eq            #0x6f2474
    // 0x6f19ac: stur            x3, [fp, #-0x20]
    // 0x6f19b0: r1 = <String>
    //     0x6f19b0: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6f19b4: r0 = TextFormField()
    //     0x6f19b4: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6f19b8: stur            x0, [fp, #-0x30]
    // 0x6f19bc: r16 = Instance_TextInputType
    //     0x6f19bc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18788] Obj!TextInputType@a0ad41
    //     0x6f19c0: ldr             x16, [x16, #0x788]
    // 0x6f19c4: str             x16, [SP]
    // 0x6f19c8: mov             x1, x0
    // 0x6f19cc: ldur            x2, [fp, #-0x20]
    // 0x6f19d0: r3 = Instance_InputDecoration
    //     0x6f19d0: add             x3, PP, #0x18, lsl #12  ; [pp+0x18790] Obj!InputDecoration@a0e931
    //     0x6f19d4: ldr             x3, [x3, #0x790]
    // 0x6f19d8: r4 = const [0, 0x4, 0x1, 0x3, keyboardType, 0x3, null]
    //     0x6f19d8: add             x4, PP, #0x14, lsl #12  ; [pp+0x14958] List(7) [0, 0x4, 0x1, 0x3, "keyboardType", 0x3, Null]
    //     0x6f19dc: ldr             x4, [x4, #0x958]
    // 0x6f19e0: r0 = TextFormField()
    //     0x6f19e0: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6f19e4: ldur            x1, [fp, #-0x48]
    // 0x6f19e8: ldur            x0, [fp, #-0x30]
    // 0x6f19ec: ArrayStore: r1[9] = r0  ; List_4
    //     0x6f19ec: add             x25, x1, #0x33
    //     0x6f19f0: str             w0, [x25]
    //     0x6f19f4: tbz             w0, #0, #0x6f1a10
    //     0x6f19f8: ldurb           w16, [x1, #-1]
    //     0x6f19fc: ldurb           w17, [x0, #-1]
    //     0x6f1a00: and             x16, x17, x16, lsr #2
    //     0x6f1a04: tst             x16, HEAP, lsr #32
    //     0x6f1a08: b.eq            #0x6f1a10
    //     0x6f1a0c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f1a10: ldur            x0, [fp, #-0x48]
    // 0x6f1a14: r16 = Instance_SizedBox
    //     0x6f1a14: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x6f1a18: ldr             x16, [x16, #0x318]
    // 0x6f1a1c: StoreField: r0->field_37 = r16
    //     0x6f1a1c: stur            w16, [x0, #0x37]
    // 0x6f1a20: ldur            x2, [fp, #-8]
    // 0x6f1a24: LoadField: r3 = r2->field_33
    //     0x6f1a24: ldur            w3, [x2, #0x33]
    // 0x6f1a28: DecompressPointer r3
    //     0x6f1a28: add             x3, x3, HEAP, lsl #32
    // 0x6f1a2c: r16 = Sentinel
    //     0x6f1a2c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x6f1a30: cmp             w3, w16
    // 0x6f1a34: b.eq            #0x6f2480
    // 0x6f1a38: stur            x3, [fp, #-0x20]
    // 0x6f1a3c: r1 = <String>
    //     0x6f1a3c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6f1a40: r0 = TextFormField()
    //     0x6f1a40: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6f1a44: mov             x1, x0
    // 0x6f1a48: ldur            x2, [fp, #-0x20]
    // 0x6f1a4c: r3 = Instance_InputDecoration
    //     0x6f1a4c: add             x3, PP, #0x1c, lsl #12  ; [pp+0x1c218] Obj!InputDecoration@a0ede1
    //     0x6f1a50: ldr             x3, [x3, #0x218]
    // 0x6f1a54: stur            x0, [fp, #-0x20]
    // 0x6f1a58: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x6f1a58: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x6f1a5c: r0 = TextFormField()
    //     0x6f1a5c: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6f1a60: ldur            x1, [fp, #-0x48]
    // 0x6f1a64: ldur            x0, [fp, #-0x20]
    // 0x6f1a68: ArrayStore: r1[11] = r0  ; List_4
    //     0x6f1a68: add             x25, x1, #0x3b
    //     0x6f1a6c: str             w0, [x25]
    //     0x6f1a70: tbz             w0, #0, #0x6f1a8c
    //     0x6f1a74: ldurb           w16, [x1, #-1]
    //     0x6f1a78: ldurb           w17, [x0, #-1]
    //     0x6f1a7c: and             x16, x17, x16, lsr #2
    //     0x6f1a80: tst             x16, HEAP, lsr #32
    //     0x6f1a84: b.eq            #0x6f1a8c
    //     0x6f1a88: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f1a8c: ldur            x0, [fp, #-0x48]
    // 0x6f1a90: r16 = Instance_SizedBox
    //     0x6f1a90: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x6f1a94: ldr             x16, [x16, #0x318]
    // 0x6f1a98: StoreField: r0->field_3f = r16
    //     0x6f1a98: stur            w16, [x0, #0x3f]
    // 0x6f1a9c: ldur            x3, [fp, #-8]
    // 0x6f1aa0: LoadField: r4 = r3->field_23
    //     0x6f1aa0: ldur            w4, [x3, #0x23]
    // 0x6f1aa4: DecompressPointer r4
    //     0x6f1aa4: add             x4, x4, HEAP, lsl #32
    // 0x6f1aa8: ldur            x2, [fp, #-0x18]
    // 0x6f1aac: stur            x4, [fp, #-0x20]
    // 0x6f1ab0: r1 = Function '<anonymous closure>':.
    //     0x6f1ab0: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c220] AnonymousClosure: (0x6f6f80), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::build (0x6f0bf8)
    //     0x6f1ab4: ldr             x1, [x1, #0x220]
    // 0x6f1ab8: r0 = AllocateClosure()
    //     0x6f1ab8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f1abc: r1 = <String?>
    //     0x6f1abc: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x6f1ac0: stur            x0, [fp, #-0x30]
    // 0x6f1ac4: r0 = DropdownButtonFormField()
    //     0x6f1ac4: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x6f1ac8: mov             x1, x0
    // 0x6f1acc: ldur            x3, [fp, #-0x20]
    // 0x6f1ad0: ldur            x6, [fp, #-0x30]
    // 0x6f1ad4: r2 = Instance_InputDecoration
    //     0x6f1ad4: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c228] Obj!InputDecoration@a0ecf1
    //     0x6f1ad8: ldr             x2, [x2, #0x228]
    // 0x6f1adc: r5 = const [Instance of 'DropdownMenuItem<String?>', Instance of 'DropdownMenuItem<String?>', Instance of 'DropdownMenuItem<String?>']
    //     0x6f1adc: add             x5, PP, #0x1c, lsl #12  ; [pp+0x1c230] List<DropdownMenuItem<String?>>(3)
    //     0x6f1ae0: ldr             x5, [x5, #0x230]
    // 0x6f1ae4: stur            x0, [fp, #-0x20]
    // 0x6f1ae8: r4 = const [0, 0x5, 0, 0x5, null]
    //     0x6f1ae8: ldr             x4, [PP, #0xf28]  ; [pp+0xf28] List(5) [0, 0x5, 0, 0x5, Null]
    // 0x6f1aec: r0 = DropdownButtonFormField()
    //     0x6f1aec: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x6f1af0: ldur            x1, [fp, #-0x48]
    // 0x6f1af4: ldur            x0, [fp, #-0x20]
    // 0x6f1af8: ArrayStore: r1[13] = r0  ; List_4
    //     0x6f1af8: add             x25, x1, #0x43
    //     0x6f1afc: str             w0, [x25]
    //     0x6f1b00: tbz             w0, #0, #0x6f1b1c
    //     0x6f1b04: ldurb           w16, [x1, #-1]
    //     0x6f1b08: ldurb           w17, [x0, #-1]
    //     0x6f1b0c: and             x16, x17, x16, lsr #2
    //     0x6f1b10: tst             x16, HEAP, lsr #32
    //     0x6f1b14: b.eq            #0x6f1b1c
    //     0x6f1b18: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f1b1c: ldur            x0, [fp, #-0x48]
    // 0x6f1b20: r16 = Instance_SizedBox
    //     0x6f1b20: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6f1b24: ldr             x16, [x16, #0x220]
    // 0x6f1b28: StoreField: r0->field_47 = r16
    //     0x6f1b28: stur            w16, [x0, #0x47]
    // 0x6f1b2c: ldur            x2, [fp, #-8]
    // 0x6f1b30: LoadField: r1 = r2->field_27
    //     0x6f1b30: ldur            w1, [x2, #0x27]
    // 0x6f1b34: DecompressPointer r1
    //     0x6f1b34: add             x1, x1, HEAP, lsl #32
    // 0x6f1b38: cmp             w1, NULL
    // 0x6f1b3c: b.eq            #0x6f1d20
    // 0x6f1b40: r0 = _parts()
    //     0x6f1b40: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6f1b44: mov             x2, x0
    // 0x6f1b48: LoadField: r0 = r2->field_b
    //     0x6f1b48: ldur            w0, [x2, #0xb]
    // 0x6f1b4c: r1 = LoadInt32Instr(r0)
    //     0x6f1b4c: sbfx            x1, x0, #1, #0x1f
    // 0x6f1b50: mov             x0, x1
    // 0x6f1b54: r1 = 5
    //     0x6f1b54: mov             x1, #5
    // 0x6f1b58: cmp             x1, x0
    // 0x6f1b5c: b.hs            #0x6f248c
    // 0x6f1b60: LoadField: r0 = r2->field_23
    //     0x6f1b60: ldur            w0, [x2, #0x23]
    // 0x6f1b64: DecompressPointer r0
    //     0x6f1b64: add             x0, x0, HEAP, lsl #32
    // 0x6f1b68: r1 = 60
    //     0x6f1b68: mov             x1, #0x3c
    // 0x6f1b6c: branchIfSmi(r0, 0x6f1b78)
    //     0x6f1b6c: tbz             w0, #0, #0x6f1b78
    // 0x6f1b70: r1 = LoadClassIdInstr(r0)
    //     0x6f1b70: ldur            x1, [x0, #-1]
    //     0x6f1b74: ubfx            x1, x1, #0xc, #0x14
    // 0x6f1b78: str             x0, [SP]
    // 0x6f1b7c: mov             x0, x1
    // 0x6f1b80: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6f1b80: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6f1b84: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6f1b84: mov             x17, #0x21f6
    //     0x6f1b88: add             lr, x0, x17
    //     0x6f1b8c: ldr             lr, [x21, lr, lsl #3]
    //     0x6f1b90: blr             lr
    // 0x6f1b94: r1 = LoadClassIdInstr(r0)
    //     0x6f1b94: ldur            x1, [x0, #-1]
    //     0x6f1b98: ubfx            x1, x1, #0xc, #0x14
    // 0x6f1b9c: mov             x16, x0
    // 0x6f1ba0: mov             x0, x1
    // 0x6f1ba4: mov             x1, x16
    // 0x6f1ba8: r2 = 2
    //     0x6f1ba8: mov             x2, #2
    // 0x6f1bac: r3 = "0"
    //     0x6f1bac: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x6f1bb0: r0 = GDT[cid_x0 + -0xffc]()
    //     0x6f1bb0: sub             lr, x0, #0xffc
    //     0x6f1bb4: ldr             lr, [x21, lr, lsl #3]
    //     0x6f1bb8: blr             lr
    // 0x6f1bbc: r1 = Null
    //     0x6f1bbc: mov             x1, NULL
    // 0x6f1bc0: r2 = 10
    //     0x6f1bc0: mov             x2, #0xa
    // 0x6f1bc4: stur            x0, [fp, #-0x20]
    // 0x6f1bc8: r0 = AllocateArray()
    //     0x6f1bc8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f1bcc: mov             x2, x0
    // 0x6f1bd0: ldur            x0, [fp, #-0x20]
    // 0x6f1bd4: stur            x2, [fp, #-0x30]
    // 0x6f1bd8: StoreField: r2->field_f = r0
    //     0x6f1bd8: stur            w0, [x2, #0xf]
    // 0x6f1bdc: r16 = "/"
    //     0x6f1bdc: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x6f1be0: StoreField: r2->field_13 = r16
    //     0x6f1be0: stur            w16, [x2, #0x13]
    // 0x6f1be4: ldur            x0, [fp, #-8]
    // 0x6f1be8: LoadField: r1 = r0->field_27
    //     0x6f1be8: ldur            w1, [x0, #0x27]
    // 0x6f1bec: DecompressPointer r1
    //     0x6f1bec: add             x1, x1, HEAP, lsl #32
    // 0x6f1bf0: cmp             w1, NULL
    // 0x6f1bf4: b.eq            #0x6f2490
    // 0x6f1bf8: r0 = _parts()
    //     0x6f1bf8: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6f1bfc: mov             x2, x0
    // 0x6f1c00: LoadField: r0 = r2->field_b
    //     0x6f1c00: ldur            w0, [x2, #0xb]
    // 0x6f1c04: r1 = LoadInt32Instr(r0)
    //     0x6f1c04: sbfx            x1, x0, #1, #0x1f
    // 0x6f1c08: mov             x0, x1
    // 0x6f1c0c: r1 = 7
    //     0x6f1c0c: mov             x1, #7
    // 0x6f1c10: cmp             x1, x0
    // 0x6f1c14: b.hs            #0x6f2494
    // 0x6f1c18: LoadField: r0 = r2->field_2b
    //     0x6f1c18: ldur            w0, [x2, #0x2b]
    // 0x6f1c1c: DecompressPointer r0
    //     0x6f1c1c: add             x0, x0, HEAP, lsl #32
    // 0x6f1c20: r1 = 60
    //     0x6f1c20: mov             x1, #0x3c
    // 0x6f1c24: branchIfSmi(r0, 0x6f1c30)
    //     0x6f1c24: tbz             w0, #0, #0x6f1c30
    // 0x6f1c28: r1 = LoadClassIdInstr(r0)
    //     0x6f1c28: ldur            x1, [x0, #-1]
    //     0x6f1c2c: ubfx            x1, x1, #0xc, #0x14
    // 0x6f1c30: str             x0, [SP]
    // 0x6f1c34: mov             x0, x1
    // 0x6f1c38: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6f1c38: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6f1c3c: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6f1c3c: mov             x17, #0x21f6
    //     0x6f1c40: add             lr, x0, x17
    //     0x6f1c44: ldr             lr, [x21, lr, lsl #3]
    //     0x6f1c48: blr             lr
    // 0x6f1c4c: r1 = LoadClassIdInstr(r0)
    //     0x6f1c4c: ldur            x1, [x0, #-1]
    //     0x6f1c50: ubfx            x1, x1, #0xc, #0x14
    // 0x6f1c54: mov             x16, x0
    // 0x6f1c58: mov             x0, x1
    // 0x6f1c5c: mov             x1, x16
    // 0x6f1c60: r2 = 2
    //     0x6f1c60: mov             x2, #2
    // 0x6f1c64: r3 = "0"
    //     0x6f1c64: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x6f1c68: r0 = GDT[cid_x0 + -0xffc]()
    //     0x6f1c68: sub             lr, x0, #0xffc
    //     0x6f1c6c: ldr             lr, [x21, lr, lsl #3]
    //     0x6f1c70: blr             lr
    // 0x6f1c74: ldur            x1, [fp, #-0x30]
    // 0x6f1c78: ArrayStore: r1[2] = r0  ; List_4
    //     0x6f1c78: add             x25, x1, #0x17
    //     0x6f1c7c: str             w0, [x25]
    //     0x6f1c80: tbz             w0, #0, #0x6f1c9c
    //     0x6f1c84: ldurb           w16, [x1, #-1]
    //     0x6f1c88: ldurb           w17, [x0, #-1]
    //     0x6f1c8c: and             x16, x17, x16, lsr #2
    //     0x6f1c90: tst             x16, HEAP, lsr #32
    //     0x6f1c94: b.eq            #0x6f1c9c
    //     0x6f1c98: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f1c9c: ldur            x0, [fp, #-0x30]
    // 0x6f1ca0: r16 = "/"
    //     0x6f1ca0: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x6f1ca4: StoreField: r0->field_1b = r16
    //     0x6f1ca4: stur            w16, [x0, #0x1b]
    // 0x6f1ca8: ldur            x2, [fp, #-8]
    // 0x6f1cac: LoadField: r1 = r2->field_27
    //     0x6f1cac: ldur            w1, [x2, #0x27]
    // 0x6f1cb0: DecompressPointer r1
    //     0x6f1cb0: add             x1, x1, HEAP, lsl #32
    // 0x6f1cb4: cmp             w1, NULL
    // 0x6f1cb8: b.eq            #0x6f2498
    // 0x6f1cbc: r0 = _parts()
    //     0x6f1cbc: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6f1cc0: mov             x2, x0
    // 0x6f1cc4: LoadField: r0 = r2->field_b
    //     0x6f1cc4: ldur            w0, [x2, #0xb]
    // 0x6f1cc8: r1 = LoadInt32Instr(r0)
    //     0x6f1cc8: sbfx            x1, x0, #1, #0x1f
    // 0x6f1ccc: mov             x0, x1
    // 0x6f1cd0: r1 = 8
    //     0x6f1cd0: mov             x1, #8
    // 0x6f1cd4: cmp             x1, x0
    // 0x6f1cd8: b.hs            #0x6f249c
    // 0x6f1cdc: LoadField: r0 = r2->field_2f
    //     0x6f1cdc: ldur            w0, [x2, #0x2f]
    // 0x6f1ce0: DecompressPointer r0
    //     0x6f1ce0: add             x0, x0, HEAP, lsl #32
    // 0x6f1ce4: ldur            x1, [fp, #-0x30]
    // 0x6f1ce8: ArrayStore: r1[4] = r0  ; List_4
    //     0x6f1ce8: add             x25, x1, #0x1f
    //     0x6f1cec: str             w0, [x25]
    //     0x6f1cf0: tbz             w0, #0, #0x6f1d0c
    //     0x6f1cf4: ldurb           w16, [x1, #-1]
    //     0x6f1cf8: ldurb           w17, [x0, #-1]
    //     0x6f1cfc: and             x16, x17, x16, lsr #2
    //     0x6f1d00: tst             x16, HEAP, lsr #32
    //     0x6f1d04: b.eq            #0x6f1d0c
    //     0x6f1d08: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f1d0c: ldur            x16, [fp, #-0x30]
    // 0x6f1d10: str             x16, [SP]
    // 0x6f1d14: r0 = _interpolate()
    //     0x6f1d14: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6f1d18: mov             x2, x0
    // 0x6f1d1c: b               #0x6f1d28
    // 0x6f1d20: r2 = "Tarih Seçiniz"
    //     0x6f1d20: add             x2, PP, #0x18, lsl #12  ; [pp+0x187b0] "Tarih Seçiniz"
    //     0x6f1d24: ldr             x2, [x2, #0x7b0]
    // 0x6f1d28: ldur            x0, [fp, #-8]
    // 0x6f1d2c: stur            x2, [fp, #-0x20]
    // 0x6f1d30: LoadField: r1 = r0->field_27
    //     0x6f1d30: ldur            w1, [x0, #0x27]
    // 0x6f1d34: DecompressPointer r1
    //     0x6f1d34: add             x1, x1, HEAP, lsl #32
    // 0x6f1d38: cmp             w1, NULL
    // 0x6f1d3c: b.eq            #0x6f1d4c
    // 0x6f1d40: mov             x1, x2
    // 0x6f1d44: r4 = Null
    //     0x6f1d44: mov             x4, NULL
    // 0x6f1d48: b               #0x6f1d70
    // 0x6f1d4c: ldur            x3, [fp, #-0x18]
    // 0x6f1d50: LoadField: r1 = r3->field_13
    //     0x6f1d50: ldur            w1, [x3, #0x13]
    // 0x6f1d54: DecompressPointer r1
    //     0x6f1d54: add             x1, x1, HEAP, lsl #32
    // 0x6f1d58: r0 = of()
    //     0x6f1d58: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x6f1d5c: LoadField: r1 = r0->field_53
    //     0x6f1d5c: ldur            w1, [x0, #0x53]
    // 0x6f1d60: DecompressPointer r1
    //     0x6f1d60: add             x1, x1, HEAP, lsl #32
    // 0x6f1d64: mov             x4, x1
    // 0x6f1d68: ldur            x0, [fp, #-8]
    // 0x6f1d6c: ldur            x1, [fp, #-0x20]
    // 0x6f1d70: ldur            x3, [fp, #-0x10]
    // 0x6f1d74: ldur            x2, [fp, #-0x48]
    // 0x6f1d78: stur            x4, [fp, #-0x30]
    // 0x6f1d7c: r0 = TextStyle()
    //     0x6f1d7c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6f1d80: mov             x1, x0
    // 0x6f1d84: r0 = true
    //     0x6f1d84: add             x0, NULL, #0x20  ; true
    // 0x6f1d88: stur            x1, [fp, #-0x50]
    // 0x6f1d8c: StoreField: r1->field_7 = r0
    //     0x6f1d8c: stur            w0, [x1, #7]
    // 0x6f1d90: ldur            x2, [fp, #-0x30]
    // 0x6f1d94: StoreField: r1->field_b = r2
    //     0x6f1d94: stur            w2, [x1, #0xb]
    // 0x6f1d98: r0 = Text()
    //     0x6f1d98: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f1d9c: mov             x1, x0
    // 0x6f1da0: ldur            x0, [fp, #-0x20]
    // 0x6f1da4: stur            x1, [fp, #-0x30]
    // 0x6f1da8: StoreField: r1->field_b = r0
    //     0x6f1da8: stur            w0, [x1, #0xb]
    // 0x6f1dac: ldur            x0, [fp, #-0x50]
    // 0x6f1db0: StoreField: r1->field_13 = r0
    //     0x6f1db0: stur            w0, [x1, #0x13]
    // 0x6f1db4: r0 = InputDecorator()
    //     0x6f1db4: bl              #0x67e7d0  ; AllocateInputDecoratorStub -> InputDecorator (size=0x30)
    // 0x6f1db8: mov             x1, x0
    // 0x6f1dbc: r0 = Instance_InputDecoration
    //     0x6f1dbc: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c238] Obj!InputDecoration@a0ec01
    //     0x6f1dc0: ldr             x0, [x0, #0x238]
    // 0x6f1dc4: stur            x1, [fp, #-0x20]
    // 0x6f1dc8: StoreField: r1->field_b = r0
    //     0x6f1dc8: stur            w0, [x1, #0xb]
    // 0x6f1dcc: r0 = false
    //     0x6f1dcc: add             x0, NULL, #0x30  ; false
    // 0x6f1dd0: StoreField: r1->field_1b = r0
    //     0x6f1dd0: stur            w0, [x1, #0x1b]
    // 0x6f1dd4: StoreField: r1->field_1f = r0
    //     0x6f1dd4: stur            w0, [x1, #0x1f]
    // 0x6f1dd8: StoreField: r1->field_23 = r0
    //     0x6f1dd8: stur            w0, [x1, #0x23]
    // 0x6f1ddc: StoreField: r1->field_27 = r0
    //     0x6f1ddc: stur            w0, [x1, #0x27]
    // 0x6f1de0: ldur            x2, [fp, #-0x30]
    // 0x6f1de4: StoreField: r1->field_2b = r2
    //     0x6f1de4: stur            w2, [x1, #0x2b]
    // 0x6f1de8: r0 = InkWell()
    //     0x6f1de8: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x6f1dec: mov             x3, x0
    // 0x6f1df0: ldur            x0, [fp, #-0x20]
    // 0x6f1df4: stur            x3, [fp, #-0x30]
    // 0x6f1df8: StoreField: r3->field_b = r0
    //     0x6f1df8: stur            w0, [x3, #0xb]
    // 0x6f1dfc: ldur            x2, [fp, #-0x18]
    // 0x6f1e00: r1 = Function '<anonymous closure>':.
    //     0x6f1e00: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c240] AnonymousClosure: (0x6f6da0), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::build (0x6f0bf8)
    //     0x6f1e04: ldr             x1, [x1, #0x240]
    // 0x6f1e08: r0 = AllocateClosure()
    //     0x6f1e08: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f1e0c: mov             x1, x0
    // 0x6f1e10: ldur            x0, [fp, #-0x30]
    // 0x6f1e14: StoreField: r0->field_f = r1
    //     0x6f1e14: stur            w1, [x0, #0xf]
    // 0x6f1e18: r3 = true
    //     0x6f1e18: add             x3, NULL, #0x20  ; true
    // 0x6f1e1c: StoreField: r0->field_47 = r3
    //     0x6f1e1c: stur            w3, [x0, #0x47]
    // 0x6f1e20: r1 = Instance_BoxShape
    //     0x6f1e20: add             x1, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6f1e24: ldr             x1, [x1, #0x1c8]
    // 0x6f1e28: StoreField: r0->field_4b = r1
    //     0x6f1e28: stur            w1, [x0, #0x4b]
    // 0x6f1e2c: StoreField: r0->field_73 = r3
    //     0x6f1e2c: stur            w3, [x0, #0x73]
    // 0x6f1e30: r1 = false
    //     0x6f1e30: add             x1, NULL, #0x30  ; false
    // 0x6f1e34: StoreField: r0->field_77 = r1
    //     0x6f1e34: stur            w1, [x0, #0x77]
    // 0x6f1e38: StoreField: r0->field_87 = r3
    //     0x6f1e38: stur            w3, [x0, #0x87]
    // 0x6f1e3c: StoreField: r0->field_7f = r1
    //     0x6f1e3c: stur            w1, [x0, #0x7f]
    // 0x6f1e40: ldur            x1, [fp, #-0x48]
    // 0x6f1e44: ArrayStore: r1[15] = r0  ; List_4
    //     0x6f1e44: add             x25, x1, #0x4b
    //     0x6f1e48: str             w0, [x25]
    //     0x6f1e4c: tbz             w0, #0, #0x6f1e68
    //     0x6f1e50: ldurb           w16, [x1, #-1]
    //     0x6f1e54: ldurb           w17, [x0, #-1]
    //     0x6f1e58: and             x16, x17, x16, lsr #2
    //     0x6f1e5c: tst             x16, HEAP, lsr #32
    //     0x6f1e60: b.eq            #0x6f1e68
    //     0x6f1e64: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f1e68: ldur            x0, [fp, #-0x48]
    // 0x6f1e6c: r16 = Instance_SizedBox
    //     0x6f1e6c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6f1e70: ldr             x16, [x16, #0x220]
    // 0x6f1e74: StoreField: r0->field_4f = r16
    //     0x6f1e74: stur            w16, [x0, #0x4f]
    // 0x6f1e78: ldur            x4, [fp, #-8]
    // 0x6f1e7c: LoadField: r5 = r4->field_13
    //     0x6f1e7c: ldur            w5, [x4, #0x13]
    // 0x6f1e80: DecompressPointer r5
    //     0x6f1e80: add             x5, x5, HEAP, lsl #32
    // 0x6f1e84: stur            x5, [fp, #-0x20]
    // 0x6f1e88: r1 = Null
    //     0x6f1e88: mov             x1, NULL
    // 0x6f1e8c: r2 = 4
    //     0x6f1e8c: mov             x2, #4
    // 0x6f1e90: r0 = AllocateArray()
    //     0x6f1e90: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f1e94: mov             x1, x0
    // 0x6f1e98: ldur            x0, [fp, #-0x20]
    // 0x6f1e9c: StoreField: r1->field_f = r0
    //     0x6f1e9c: stur            w0, [x1, #0xf]
    // 0x6f1ea0: r16 = " Oteli"
    //     0x6f1ea0: add             x16, PP, #0x19, lsl #12  ; [pp+0x19590] " Oteli"
    //     0x6f1ea4: ldr             x16, [x16, #0x590]
    // 0x6f1ea8: StoreField: r1->field_13 = r16
    //     0x6f1ea8: stur            w16, [x1, #0x13]
    // 0x6f1eac: str             x1, [SP]
    // 0x6f1eb0: r0 = _interpolate()
    //     0x6f1eb0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6f1eb4: stur            x0, [fp, #-0x20]
    // 0x6f1eb8: r0 = InputDecoration()
    //     0x6f1eb8: bl              #0x5fbec8  ; AllocateInputDecorationStub -> InputDecoration (size=0xec)
    // 0x6f1ebc: mov             x3, x0
    // 0x6f1ec0: ldur            x0, [fp, #-0x20]
    // 0x6f1ec4: stur            x3, [fp, #-0x30]
    // 0x6f1ec8: StoreField: r3->field_13 = r0
    //     0x6f1ec8: stur            w0, [x3, #0x13]
    // 0x6f1ecc: r0 = true
    //     0x6f1ecc: add             x0, NULL, #0x20  ; true
    // 0x6f1ed0: StoreField: r3->field_47 = r0
    //     0x6f1ed0: stur            w0, [x3, #0x47]
    // 0x6f1ed4: StoreField: r3->field_4b = r0
    //     0x6f1ed4: stur            w0, [x3, #0x4b]
    // 0x6f1ed8: StoreField: r3->field_d7 = r0
    //     0x6f1ed8: stur            w0, [x3, #0xd7]
    // 0x6f1edc: r1 = Null
    //     0x6f1edc: mov             x1, NULL
    // 0x6f1ee0: r2 = 2
    //     0x6f1ee0: mov             x2, #2
    // 0x6f1ee4: r0 = AllocateArray()
    //     0x6f1ee4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f1ee8: stur            x0, [fp, #-0x20]
    // 0x6f1eec: r16 = Instance_DropdownMenuItem
    //     0x6f1eec: add             x16, PP, #0x19, lsl #12  ; [pp+0x19578] Obj!DropdownMenuItem<String?>@a1f621
    //     0x6f1ef0: ldr             x16, [x16, #0x578]
    // 0x6f1ef4: StoreField: r0->field_f = r16
    //     0x6f1ef4: stur            w16, [x0, #0xf]
    // 0x6f1ef8: r1 = <DropdownMenuItem<String?>>
    //     0x6f1ef8: add             x1, PP, #0x14, lsl #12  ; [pp+0x148e0] TypeArguments: <DropdownMenuItem<String?>>
    //     0x6f1efc: ldr             x1, [x1, #0x8e0]
    // 0x6f1f00: r0 = AllocateGrowableArray()
    //     0x6f1f00: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f1f04: mov             x3, x0
    // 0x6f1f08: ldur            x0, [fp, #-0x20]
    // 0x6f1f0c: stur            x3, [fp, #-0x50]
    // 0x6f1f10: StoreField: r3->field_f = r0
    //     0x6f1f10: stur            w0, [x3, #0xf]
    // 0x6f1f14: r0 = 2
    //     0x6f1f14: mov             x0, #2
    // 0x6f1f18: StoreField: r3->field_b = r0
    //     0x6f1f18: stur            w0, [x3, #0xb]
    // 0x6f1f1c: r1 = Function '<anonymous closure>':.
    //     0x6f1f1c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c248] AnonymousClosure: (0x6f42e8), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::showRoomDialog (0x6f6a1c)
    //     0x6f1f20: ldr             x1, [x1, #0x248]
    // 0x6f1f24: r2 = Null
    //     0x6f1f24: mov             x2, NULL
    // 0x6f1f28: r0 = AllocateClosure()
    //     0x6f1f28: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f1f2c: r16 = <DropdownMenuItem<String?>>
    //     0x6f1f2c: add             x16, PP, #0x14, lsl #12  ; [pp+0x148e0] TypeArguments: <DropdownMenuItem<String?>>
    //     0x6f1f30: ldr             x16, [x16, #0x8e0]
    // 0x6f1f34: ldur            lr, [fp, #-0x28]
    // 0x6f1f38: stp             lr, x16, [SP, #8]
    // 0x6f1f3c: str             x0, [SP]
    // 0x6f1f40: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6f1f40: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6f1f44: r0 = map()
    //     0x6f1f44: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x6f1f48: ldur            x1, [fp, #-0x50]
    // 0x6f1f4c: mov             x2, x0
    // 0x6f1f50: r0 = addAll()
    //     0x6f1f50: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x6f1f54: ldur            x2, [fp, #-0x18]
    // 0x6f1f58: r1 = Function '<anonymous closure>':.
    //     0x6f1f58: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c250] AnonymousClosure: (0x6f4210), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::build (0x6f0bf8)
    //     0x6f1f5c: ldr             x1, [x1, #0x250]
    // 0x6f1f60: r0 = AllocateClosure()
    //     0x6f1f60: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f1f64: r1 = <String?>
    //     0x6f1f64: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x6f1f68: stur            x0, [fp, #-0x20]
    // 0x6f1f6c: r0 = DropdownButtonFormField()
    //     0x6f1f6c: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x6f1f70: mov             x1, x0
    // 0x6f1f74: ldur            x2, [fp, #-0x30]
    // 0x6f1f78: ldur            x3, [fp, #-0x38]
    // 0x6f1f7c: ldur            x5, [fp, #-0x50]
    // 0x6f1f80: ldur            x6, [fp, #-0x20]
    // 0x6f1f84: stur            x0, [fp, #-0x20]
    // 0x6f1f88: r4 = const [0, 0x5, 0, 0x5, null]
    //     0x6f1f88: ldr             x4, [PP, #0xf28]  ; [pp+0xf28] List(5) [0, 0x5, 0, 0x5, Null]
    // 0x6f1f8c: r0 = DropdownButtonFormField()
    //     0x6f1f8c: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x6f1f90: ldur            x1, [fp, #-0x48]
    // 0x6f1f94: ldur            x0, [fp, #-0x20]
    // 0x6f1f98: ArrayStore: r1[17] = r0  ; List_4
    //     0x6f1f98: add             x25, x1, #0x53
    //     0x6f1f9c: str             w0, [x25]
    //     0x6f1fa0: tbz             w0, #0, #0x6f1fbc
    //     0x6f1fa4: ldurb           w16, [x1, #-1]
    //     0x6f1fa8: ldurb           w17, [x0, #-1]
    //     0x6f1fac: and             x16, x17, x16, lsr #2
    //     0x6f1fb0: tst             x16, HEAP, lsr #32
    //     0x6f1fb4: b.eq            #0x6f1fbc
    //     0x6f1fb8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f1fbc: ldur            x0, [fp, #-0x48]
    // 0x6f1fc0: r16 = Instance_SizedBox
    //     0x6f1fc0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x6f1fc4: ldr             x16, [x16, #0x318]
    // 0x6f1fc8: StoreField: r0->field_57 = r16
    //     0x6f1fc8: stur            w16, [x0, #0x57]
    // 0x6f1fcc: ldur            x3, [fp, #-8]
    // 0x6f1fd0: LoadField: r4 = r3->field_13
    //     0x6f1fd0: ldur            w4, [x3, #0x13]
    // 0x6f1fd4: DecompressPointer r4
    //     0x6f1fd4: add             x4, x4, HEAP, lsl #32
    // 0x6f1fd8: stur            x4, [fp, #-0x20]
    // 0x6f1fdc: r1 = Null
    //     0x6f1fdc: mov             x1, NULL
    // 0x6f1fe0: r2 = 4
    //     0x6f1fe0: mov             x2, #4
    // 0x6f1fe4: r0 = AllocateArray()
    //     0x6f1fe4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f1fe8: mov             x1, x0
    // 0x6f1fec: ldur            x0, [fp, #-0x20]
    // 0x6f1ff0: StoreField: r1->field_f = r0
    //     0x6f1ff0: stur            w0, [x1, #0xf]
    // 0x6f1ff4: r16 = " Odası"
    //     0x6f1ff4: add             x16, PP, #0x19, lsl #12  ; [pp+0x195a8] " Odası"
    //     0x6f1ff8: ldr             x16, [x16, #0x5a8]
    // 0x6f1ffc: StoreField: r1->field_13 = r16
    //     0x6f1ffc: stur            w16, [x1, #0x13]
    // 0x6f2000: str             x1, [SP]
    // 0x6f2004: r0 = _interpolate()
    //     0x6f2004: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6f2008: stur            x0, [fp, #-0x20]
    // 0x6f200c: r0 = InputDecoration()
    //     0x6f200c: bl              #0x5fbec8  ; AllocateInputDecorationStub -> InputDecoration (size=0xec)
    // 0x6f2010: mov             x3, x0
    // 0x6f2014: ldur            x0, [fp, #-0x20]
    // 0x6f2018: stur            x3, [fp, #-0x28]
    // 0x6f201c: StoreField: r3->field_13 = r0
    //     0x6f201c: stur            w0, [x3, #0x13]
    // 0x6f2020: r0 = true
    //     0x6f2020: add             x0, NULL, #0x20  ; true
    // 0x6f2024: StoreField: r3->field_47 = r0
    //     0x6f2024: stur            w0, [x3, #0x47]
    // 0x6f2028: StoreField: r3->field_4b = r0
    //     0x6f2028: stur            w0, [x3, #0x4b]
    // 0x6f202c: StoreField: r3->field_d7 = r0
    //     0x6f202c: stur            w0, [x3, #0xd7]
    // 0x6f2030: r1 = Null
    //     0x6f2030: mov             x1, NULL
    // 0x6f2034: r2 = 2
    //     0x6f2034: mov             x2, #2
    // 0x6f2038: r0 = AllocateArray()
    //     0x6f2038: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f203c: stur            x0, [fp, #-0x20]
    // 0x6f2040: r16 = Instance_DropdownMenuItem
    //     0x6f2040: add             x16, PP, #0x19, lsl #12  ; [pp+0x19578] Obj!DropdownMenuItem<String?>@a1f621
    //     0x6f2044: ldr             x16, [x16, #0x578]
    // 0x6f2048: StoreField: r0->field_f = r16
    //     0x6f2048: stur            w16, [x0, #0xf]
    // 0x6f204c: r1 = <DropdownMenuItem<String?>>
    //     0x6f204c: add             x1, PP, #0x14, lsl #12  ; [pp+0x148e0] TypeArguments: <DropdownMenuItem<String?>>
    //     0x6f2050: ldr             x1, [x1, #0x8e0]
    // 0x6f2054: r0 = AllocateGrowableArray()
    //     0x6f2054: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f2058: mov             x3, x0
    // 0x6f205c: ldur            x0, [fp, #-0x20]
    // 0x6f2060: stur            x3, [fp, #-0x30]
    // 0x6f2064: StoreField: r3->field_f = r0
    //     0x6f2064: stur            w0, [x3, #0xf]
    // 0x6f2068: r0 = 2
    //     0x6f2068: mov             x0, #2
    // 0x6f206c: StoreField: r3->field_b = r0
    //     0x6f206c: stur            w0, [x3, #0xb]
    // 0x6f2070: ldur            x2, [fp, #-0x18]
    // 0x6f2074: r1 = Function '<anonymous closure>':.
    //     0x6f2074: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c258] AnonymousClosure: (0x6f3fa0), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::build (0x6f0bf8)
    //     0x6f2078: ldr             x1, [x1, #0x258]
    // 0x6f207c: r0 = AllocateClosure()
    //     0x6f207c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f2080: mov             x1, x0
    // 0x6f2084: ldur            x0, [fp, #-0x10]
    // 0x6f2088: r2 = LoadClassIdInstr(r0)
    //     0x6f2088: ldur            x2, [x0, #-1]
    //     0x6f208c: ubfx            x2, x2, #0xc, #0x14
    // 0x6f2090: r16 = <DropdownMenuItem<String?>>
    //     0x6f2090: add             x16, PP, #0x14, lsl #12  ; [pp+0x148e0] TypeArguments: <DropdownMenuItem<String?>>
    //     0x6f2094: ldr             x16, [x16, #0x8e0]
    // 0x6f2098: stp             x0, x16, [SP, #8]
    // 0x6f209c: str             x1, [SP]
    // 0x6f20a0: mov             x0, x2
    // 0x6f20a4: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6f20a4: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6f20a8: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x6f20a8: mov             x17, #0xd1d6
    //     0x6f20ac: add             lr, x0, x17
    //     0x6f20b0: ldr             lr, [x21, lr, lsl #3]
    //     0x6f20b4: blr             lr
    // 0x6f20b8: ldur            x1, [fp, #-0x30]
    // 0x6f20bc: mov             x2, x0
    // 0x6f20c0: r0 = addAll()
    //     0x6f20c0: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x6f20c4: ldur            x2, [fp, #-0x18]
    // 0x6f20c8: r1 = Function '<anonymous closure>':.
    //     0x6f20c8: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c260] AnonymousClosure: (0x6f3ec8), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::build (0x6f0bf8)
    //     0x6f20cc: ldr             x1, [x1, #0x260]
    // 0x6f20d0: r0 = AllocateClosure()
    //     0x6f20d0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f20d4: r1 = <String?>
    //     0x6f20d4: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x6f20d8: stur            x0, [fp, #-0x10]
    // 0x6f20dc: r0 = DropdownButtonFormField()
    //     0x6f20dc: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x6f20e0: mov             x1, x0
    // 0x6f20e4: ldur            x2, [fp, #-0x28]
    // 0x6f20e8: ldur            x3, [fp, #-0x40]
    // 0x6f20ec: ldur            x5, [fp, #-0x30]
    // 0x6f20f0: ldur            x6, [fp, #-0x10]
    // 0x6f20f4: stur            x0, [fp, #-0x10]
    // 0x6f20f8: r4 = const [0, 0x5, 0, 0x5, null]
    //     0x6f20f8: ldr             x4, [PP, #0xf28]  ; [pp+0xf28] List(5) [0, 0x5, 0, 0x5, Null]
    // 0x6f20fc: r0 = DropdownButtonFormField()
    //     0x6f20fc: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x6f2100: ldur            x1, [fp, #-0x48]
    // 0x6f2104: ldur            x0, [fp, #-0x10]
    // 0x6f2108: ArrayStore: r1[19] = r0  ; List_4
    //     0x6f2108: add             x25, x1, #0x5b
    //     0x6f210c: str             w0, [x25]
    //     0x6f2110: tbz             w0, #0, #0x6f212c
    //     0x6f2114: ldurb           w16, [x1, #-1]
    //     0x6f2118: ldurb           w17, [x0, #-1]
    //     0x6f211c: and             x16, x17, x16, lsr #2
    //     0x6f2120: tst             x16, HEAP, lsr #32
    //     0x6f2124: b.eq            #0x6f212c
    //     0x6f2128: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f212c: ldur            x1, [fp, #-0x48]
    // 0x6f2130: r16 = Instance_SizedBox
    //     0x6f2130: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6f2134: ldr             x16, [x16, #0x220]
    // 0x6f2138: StoreField: r1->field_5f = r16
    //     0x6f2138: stur            w16, [x1, #0x5f]
    // 0x6f213c: ldur            x0, [fp, #-8]
    // 0x6f2140: LoadField: r2 = r0->field_b
    //     0x6f2140: ldur            w2, [x0, #0xb]
    // 0x6f2144: DecompressPointer r2
    //     0x6f2144: add             x2, x2, HEAP, lsl #32
    // 0x6f2148: cmp             w2, NULL
    // 0x6f214c: b.eq            #0x6f24a0
    // 0x6f2150: r0 = Radius()
    //     0x6f2150: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6f2154: d0 = 12.000000
    //     0x6f2154: fmov            d0, #12.00000000
    // 0x6f2158: stur            x0, [fp, #-0x10]
    // 0x6f215c: StoreField: r0->field_7 = d0
    //     0x6f215c: stur            d0, [x0, #7]
    // 0x6f2160: StoreField: r0->field_f = d0
    //     0x6f2160: stur            d0, [x0, #0xf]
    // 0x6f2164: r0 = BorderRadius()
    //     0x6f2164: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6f2168: mov             x1, x0
    // 0x6f216c: ldur            x0, [fp, #-0x10]
    // 0x6f2170: stur            x1, [fp, #-0x20]
    // 0x6f2174: StoreField: r1->field_7 = r0
    //     0x6f2174: stur            w0, [x1, #7]
    // 0x6f2178: StoreField: r1->field_b = r0
    //     0x6f2178: stur            w0, [x1, #0xb]
    // 0x6f217c: StoreField: r1->field_f = r0
    //     0x6f217c: stur            w0, [x1, #0xf]
    // 0x6f2180: StoreField: r1->field_13 = r0
    //     0x6f2180: stur            w0, [x1, #0x13]
    // 0x6f2184: r0 = RoundedRectangleBorder()
    //     0x6f2184: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x6f2188: mov             x1, x0
    // 0x6f218c: ldur            x0, [fp, #-0x20]
    // 0x6f2190: StoreField: r1->field_b = r0
    //     0x6f2190: stur            w0, [x1, #0xb]
    // 0x6f2194: r0 = Instance_BorderSide
    //     0x6f2194: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x6f2198: ldr             x0, [x0, #0xcb8]
    // 0x6f219c: StoreField: r1->field_7 = r0
    //     0x6f219c: stur            w0, [x1, #7]
    // 0x6f21a0: r16 = Instance_MaterialColor
    //     0x6f21a0: add             x16, PP, #0x12, lsl #12  ; [pp+0x125d8] Obj!MaterialColor@a25ce1
    //     0x6f21a4: ldr             x16, [x16, #0x5d8]
    // 0x6f21a8: r30 = Instance_Color
    //     0x6f21a8: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6f21ac: stp             lr, x16, [SP, #0x10]
    // 0x6f21b0: r16 = Instance_EdgeInsets
    //     0x6f21b0: add             x16, PP, #0x13, lsl #12  ; [pp+0x139a0] Obj!EdgeInsets@a0c4a1
    //     0x6f21b4: ldr             x16, [x16, #0x9a0]
    // 0x6f21b8: stp             x1, x16, [SP]
    // 0x6f21bc: r4 = const [0, 0x4, 0x4, 0, backgroundColor, 0, foregroundColor, 0x1, padding, 0x2, shape, 0x3, null]
    //     0x6f21bc: add             x4, PP, #0x11, lsl #12  ; [pp+0x11bb0] List(13) [0, 0x4, 0x4, 0, "backgroundColor", 0, "foregroundColor", 0x1, "padding", 0x2, "shape", 0x3, Null]
    //     0x6f21c0: ldr             x4, [x4, #0xbb0]
    // 0x6f21c4: r0 = styleFrom()
    //     0x6f21c4: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x6f21c8: mov             x3, x0
    // 0x6f21cc: ldur            x0, [fp, #-8]
    // 0x6f21d0: stur            x3, [fp, #-0x10]
    // 0x6f21d4: LoadField: r1 = r0->field_b
    //     0x6f21d4: ldur            w1, [x0, #0xb]
    // 0x6f21d8: DecompressPointer r1
    //     0x6f21d8: add             x1, x1, HEAP, lsl #32
    // 0x6f21dc: cmp             w1, NULL
    // 0x6f21e0: b.eq            #0x6f24a4
    // 0x6f21e4: LoadField: r2 = r1->field_f
    //     0x6f21e4: ldur            w2, [x1, #0xf]
    // 0x6f21e8: DecompressPointer r2
    //     0x6f21e8: add             x2, x2, HEAP, lsl #32
    // 0x6f21ec: LoadField: r4 = r1->field_b
    //     0x6f21ec: ldur            w4, [x1, #0xb]
    // 0x6f21f0: DecompressPointer r4
    //     0x6f21f0: add             x4, x4, HEAP, lsl #32
    // 0x6f21f4: LoadField: r1 = r4->field_7
    //     0x6f21f4: ldur            w1, [x4, #7]
    // 0x6f21f8: DecompressPointer r1
    //     0x6f21f8: add             x1, x1, HEAP, lsl #32
    // 0x6f21fc: mov             x16, x1
    // 0x6f2200: mov             x1, x2
    // 0x6f2204: mov             x2, x16
    // 0x6f2208: r0 = isUserSaving()
    //     0x6f2208: bl              #0x6f24b0  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::isUserSaving
    // 0x6f220c: tbnz            w0, #4, #0x6f2218
    // 0x6f2210: r5 = Null
    //     0x6f2210: mov             x5, NULL
    // 0x6f2214: b               #0x6f222c
    // 0x6f2218: ldur            x2, [fp, #-0x18]
    // 0x6f221c: r1 = Function '<anonymous closure>':.
    //     0x6f221c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c268] AnonymousClosure: (0x6f24f4), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::build (0x6f0bf8)
    //     0x6f2220: ldr             x1, [x1, #0x268]
    // 0x6f2224: r0 = AllocateClosure()
    //     0x6f2224: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f2228: mov             x5, x0
    // 0x6f222c: ldur            x0, [fp, #-8]
    // 0x6f2230: stur            x5, [fp, #-0x18]
    // 0x6f2234: LoadField: r1 = r0->field_b
    //     0x6f2234: ldur            w1, [x0, #0xb]
    // 0x6f2238: DecompressPointer r1
    //     0x6f2238: add             x1, x1, HEAP, lsl #32
    // 0x6f223c: cmp             w1, NULL
    // 0x6f2240: b.eq            #0x6f24a8
    // 0x6f2244: LoadField: r2 = r1->field_f
    //     0x6f2244: ldur            w2, [x1, #0xf]
    // 0x6f2248: DecompressPointer r2
    //     0x6f2248: add             x2, x2, HEAP, lsl #32
    // 0x6f224c: LoadField: r3 = r1->field_b
    //     0x6f224c: ldur            w3, [x1, #0xb]
    // 0x6f2250: DecompressPointer r3
    //     0x6f2250: add             x3, x3, HEAP, lsl #32
    // 0x6f2254: LoadField: r1 = r3->field_7
    //     0x6f2254: ldur            w1, [x3, #7]
    // 0x6f2258: DecompressPointer r1
    //     0x6f2258: add             x1, x1, HEAP, lsl #32
    // 0x6f225c: mov             x16, x1
    // 0x6f2260: mov             x1, x2
    // 0x6f2264: mov             x2, x16
    // 0x6f2268: r0 = isUserSaving()
    //     0x6f2268: bl              #0x6f24b0  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::isUserSaving
    // 0x6f226c: tbnz            w0, #4, #0x6f227c
    // 0x6f2270: r3 = Instance_SizedBox
    //     0x6f2270: add             x3, PP, #0x1c, lsl #12  ; [pp+0x1c270] Obj!SizedBox@a1fbd1
    //     0x6f2274: ldr             x3, [x3, #0x270]
    // 0x6f2278: b               #0x6f2284
    // 0x6f227c: r3 = Instance_Icon
    //     0x6f227c: add             x3, PP, #0x1c, lsl #12  ; [pp+0x1c278] Obj!Icon@a1e671
    //     0x6f2280: ldr             x3, [x3, #0x278]
    // 0x6f2284: ldur            x0, [fp, #-8]
    // 0x6f2288: stur            x3, [fp, #-0x20]
    // 0x6f228c: LoadField: r1 = r0->field_b
    //     0x6f228c: ldur            w1, [x0, #0xb]
    // 0x6f2290: DecompressPointer r1
    //     0x6f2290: add             x1, x1, HEAP, lsl #32
    // 0x6f2294: cmp             w1, NULL
    // 0x6f2298: b.eq            #0x6f24ac
    // 0x6f229c: LoadField: r0 = r1->field_f
    //     0x6f229c: ldur            w0, [x1, #0xf]
    // 0x6f22a0: DecompressPointer r0
    //     0x6f22a0: add             x0, x0, HEAP, lsl #32
    // 0x6f22a4: LoadField: r2 = r1->field_b
    //     0x6f22a4: ldur            w2, [x1, #0xb]
    // 0x6f22a8: DecompressPointer r2
    //     0x6f22a8: add             x2, x2, HEAP, lsl #32
    // 0x6f22ac: LoadField: r1 = r2->field_7
    //     0x6f22ac: ldur            w1, [x2, #7]
    // 0x6f22b0: DecompressPointer r1
    //     0x6f22b0: add             x1, x1, HEAP, lsl #32
    // 0x6f22b4: mov             x2, x1
    // 0x6f22b8: mov             x1, x0
    // 0x6f22bc: r0 = isUserSaving()
    //     0x6f22bc: bl              #0x6f24b0  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::isUserSaving
    // 0x6f22c0: tbnz            w0, #4, #0x6f22d0
    // 0x6f22c4: r0 = "Kaydediliyor"
    //     0x6f22c4: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c280] "Kaydediliyor"
    //     0x6f22c8: ldr             x0, [x0, #0x280]
    // 0x6f22cc: b               #0x6f22d8
    // 0x6f22d0: r0 = "Kaydet"
    //     0x6f22d0: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b50] "Kaydet"
    //     0x6f22d4: ldr             x0, [x0, #0xb50]
    // 0x6f22d8: ldur            x1, [fp, #-0x48]
    // 0x6f22dc: stur            x0, [fp, #-8]
    // 0x6f22e0: r0 = Text()
    //     0x6f22e0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f22e4: mov             x1, x0
    // 0x6f22e8: ldur            x0, [fp, #-8]
    // 0x6f22ec: stur            x1, [fp, #-0x28]
    // 0x6f22f0: StoreField: r1->field_b = r0
    //     0x6f22f0: stur            w0, [x1, #0xb]
    // 0x6f22f4: r0 = _ElevatedButtonWithIcon()
    //     0x6f22f4: bl              #0x6d5508  ; Allocate_ElevatedButtonWithIconStub -> _ElevatedButtonWithIcon (size=0x3c)
    // 0x6f22f8: mov             x1, x0
    // 0x6f22fc: ldur            x2, [fp, #-0x20]
    // 0x6f2300: ldur            x3, [fp, #-0x28]
    // 0x6f2304: ldur            x5, [fp, #-0x18]
    // 0x6f2308: ldur            x6, [fp, #-0x10]
    // 0x6f230c: stur            x0, [fp, #-8]
    // 0x6f2310: r0 = _ElevatedButtonWithIcon()
    //     0x6f2310: bl              #0x6d5420  ; [package:flutter/src/material/elevated_button.dart] _ElevatedButtonWithIcon::_ElevatedButtonWithIcon
    // 0x6f2314: r0 = Align()
    //     0x6f2314: bl              #0x652cc8  ; AllocateAlignStub -> Align (size=0x1c)
    // 0x6f2318: mov             x1, x0
    // 0x6f231c: r0 = Instance_Alignment
    //     0x6f231c: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c288] Obj!Alignment@a0cf31
    //     0x6f2320: ldr             x0, [x0, #0x288]
    // 0x6f2324: StoreField: r1->field_f = r0
    //     0x6f2324: stur            w0, [x1, #0xf]
    // 0x6f2328: ldur            x0, [fp, #-8]
    // 0x6f232c: StoreField: r1->field_b = r0
    //     0x6f232c: stur            w0, [x1, #0xb]
    // 0x6f2330: mov             x0, x1
    // 0x6f2334: ldur            x1, [fp, #-0x48]
    // 0x6f2338: ArrayStore: r1[21] = r0  ; List_4
    //     0x6f2338: add             x25, x1, #0x63
    //     0x6f233c: str             w0, [x25]
    //     0x6f2340: tbz             w0, #0, #0x6f235c
    //     0x6f2344: ldurb           w16, [x1, #-1]
    //     0x6f2348: ldurb           w17, [x0, #-1]
    //     0x6f234c: and             x16, x17, x16, lsr #2
    //     0x6f2350: tst             x16, HEAP, lsr #32
    //     0x6f2354: b.eq            #0x6f235c
    //     0x6f2358: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f235c: r1 = <Widget>
    //     0x6f235c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f2360: r0 = AllocateGrowableArray()
    //     0x6f2360: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f2364: mov             x1, x0
    // 0x6f2368: ldur            x0, [fp, #-0x48]
    // 0x6f236c: stur            x1, [fp, #-8]
    // 0x6f2370: StoreField: r1->field_f = r0
    //     0x6f2370: stur            w0, [x1, #0xf]
    // 0x6f2374: r0 = 44
    //     0x6f2374: mov             x0, #0x2c
    // 0x6f2378: StoreField: r1->field_b = r0
    //     0x6f2378: stur            w0, [x1, #0xb]
    // 0x6f237c: r0 = Column()
    //     0x6f237c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6f2380: mov             x1, x0
    // 0x6f2384: r0 = Instance_Axis
    //     0x6f2384: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6f2388: stur            x1, [fp, #-0x10]
    // 0x6f238c: StoreField: r1->field_f = r0
    //     0x6f238c: stur            w0, [x1, #0xf]
    // 0x6f2390: r0 = Instance_MainAxisAlignment
    //     0x6f2390: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6f2394: ldr             x0, [x0, #0x230]
    // 0x6f2398: StoreField: r1->field_13 = r0
    //     0x6f2398: stur            w0, [x1, #0x13]
    // 0x6f239c: r0 = Instance_MainAxisSize
    //     0x6f239c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6f23a0: ldr             x0, [x0, #0x330]
    // 0x6f23a4: ArrayStore: r1[0] = r0  ; List_4
    //     0x6f23a4: stur            w0, [x1, #0x17]
    // 0x6f23a8: r0 = Instance_CrossAxisAlignment
    //     0x6f23a8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x6f23ac: ldr             x0, [x0, #0x238]
    // 0x6f23b0: StoreField: r1->field_1b = r0
    //     0x6f23b0: stur            w0, [x1, #0x1b]
    // 0x6f23b4: r0 = Instance_VerticalDirection
    //     0x6f23b4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6f23b8: ldr             x0, [x0, #0x340]
    // 0x6f23bc: StoreField: r1->field_23 = r0
    //     0x6f23bc: stur            w0, [x1, #0x23]
    // 0x6f23c0: r0 = Instance_Clip
    //     0x6f23c0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6f23c4: ldr             x0, [x0, #0x348]
    // 0x6f23c8: StoreField: r1->field_2b = r0
    //     0x6f23c8: stur            w0, [x1, #0x2b]
    // 0x6f23cc: StoreField: r1->field_2f = rZR
    //     0x6f23cc: stur            xzr, [x1, #0x2f]
    // 0x6f23d0: ldur            x0, [fp, #-8]
    // 0x6f23d4: StoreField: r1->field_b = r0
    //     0x6f23d4: stur            w0, [x1, #0xb]
    // 0x6f23d8: r0 = Container()
    //     0x6f23d8: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6f23dc: stur            x0, [fp, #-8]
    // 0x6f23e0: r16 = Instance_EdgeInsets
    //     0x6f23e0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f18] Obj!EdgeInsets@a0c261
    //     0x6f23e4: ldr             x16, [x16, #0xf18]
    // 0x6f23e8: r30 = Instance_EdgeInsets
    //     0x6f23e8: add             lr, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x6f23ec: ldr             lr, [lr, #0x240]
    // 0x6f23f0: stp             lr, x16, [SP, #0x10]
    // 0x6f23f4: ldur            x16, [fp, #-0x58]
    // 0x6f23f8: ldur            lr, [fp, #-0x10]
    // 0x6f23fc: stp             lr, x16, [SP]
    // 0x6f2400: mov             x1, x0
    // 0x6f2404: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, margin, 0x1, padding, 0x2, null]
    //     0x6f2404: add             x4, PP, #0x15, lsl #12  ; [pp+0x15628] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "margin", 0x1, "padding", 0x2, Null]
    //     0x6f2408: ldr             x4, [x4, #0x628]
    // 0x6f240c: r0 = Container()
    //     0x6f240c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6f2410: ldur            x0, [fp, #-8]
    // 0x6f2414: LeaveFrame
    //     0x6f2414: mov             SP, fp
    //     0x6f2418: ldp             fp, lr, [SP], #0x10
    // 0x6f241c: ret
    //     0x6f241c: ret             
    // 0x6f2420: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f2420: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f2424: b               #0x6f0c18
    // 0x6f2428: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f2428: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f242c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f242c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f2430: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f2430: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f2434: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f2434: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f2438: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f2438: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f243c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f243c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f2440: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f2440: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f2444: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f2444: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f2448: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f2448: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f244c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f244c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f2450: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f2450: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f2454: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f2454: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f2458: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f2458: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f245c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f245c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f2460: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f2460: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f2464: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f2464: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f2468: r9 = nameCtrl
    //     0x6f2468: add             x9, PP, #0x1c, lsl #12  ; [pp+0x1c290] Field <UserAssignmentCardState.nameCtrl>: late (offset: 0x2c)
    //     0x6f246c: ldr             x9, [x9, #0x290]
    // 0x6f2470: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x6f2470: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x6f2474: r9 = phoneCtrl
    //     0x6f2474: add             x9, PP, #0x1c, lsl #12  ; [pp+0x1c298] Field <UserAssignmentCardState.phoneCtrl>: late (offset: 0x30)
    //     0x6f2478: ldr             x9, [x9, #0x298]
    // 0x6f247c: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x6f247c: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x6f2480: r9 = locationCtrl
    //     0x6f2480: add             x9, PP, #0x1c, lsl #12  ; [pp+0x1c2a0] Field <UserAssignmentCardState.locationCtrl>: late (offset: 0x34)
    //     0x6f2484: ldr             x9, [x9, #0x2a0]
    // 0x6f2488: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x6f2488: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x6f248c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6f248c: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6f2490: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f2490: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f2494: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6f2494: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6f2498: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f2498: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f249c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6f249c: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6f24a0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f24a0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f24a4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f24a4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f24a8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f24a8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f24ac: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f24ac: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6f24f4, size: 0x4b8
    // 0x6f24f4: EnterFrame
    //     0x6f24f4: stp             fp, lr, [SP, #-0x10]!
    //     0x6f24f8: mov             fp, SP
    // 0x6f24fc: AllocStack(0x58)
    //     0x6f24fc: sub             SP, SP, #0x58
    // 0x6f2500: SetupParameters(UserAssignmentCardState this /* r1 */)
    //     0x6f2500: stur            NULL, [fp, #-8]
    //     0x6f2504: mov             x0, #0
    //     0x6f2508: add             x1, fp, w0, sxtw #2
    //     0x6f250c: ldr             x1, [x1, #0x10]
    //     0x6f2510: ldur            w2, [x1, #0x17]
    //     0x6f2514: add             x2, x2, HEAP, lsl #32
    //     0x6f2518: stur            x2, [fp, #-0x10]
    // 0x6f251c: CheckStackOverflow
    //     0x6f251c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f2520: cmp             SP, x16
    //     0x6f2524: b.ls            #0x6f2964
    // 0x6f2528: InitAsync() -> Future<void?>
    //     0x6f2528: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6f252c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6f2530: ldur            x0, [fp, #-0x10]
    // 0x6f2534: LoadField: r1 = r0->field_f
    //     0x6f2534: ldur            w1, [x0, #0xf]
    // 0x6f2538: DecompressPointer r1
    //     0x6f2538: add             x1, x1, HEAP, lsl #32
    // 0x6f253c: LoadField: r2 = r1->field_1b
    //     0x6f253c: ldur            w2, [x1, #0x1b]
    // 0x6f2540: DecompressPointer r2
    //     0x6f2540: add             x2, x2, HEAP, lsl #32
    // 0x6f2544: cmp             w2, NULL
    // 0x6f2548: b.eq            #0x6f2578
    // 0x6f254c: LoadField: r2 = r1->field_1f
    //     0x6f254c: ldur            w2, [x1, #0x1f]
    // 0x6f2550: DecompressPointer r2
    //     0x6f2550: add             x2, x2, HEAP, lsl #32
    // 0x6f2554: cmp             w2, NULL
    // 0x6f2558: b.eq            #0x6f2564
    // 0x6f255c: LoadField: r3 = r2->field_7
    //     0x6f255c: ldur            w3, [x2, #7]
    // 0x6f2560: cbnz            w3, #0x6f2578
    // 0x6f2564: r1 = "Otel seçildiğinde oda seçim zorunludur."
    //     0x6f2564: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c2a8] "Otel seçildiğinde oda seçim zorunludur."
    //     0x6f2568: ldr             x1, [x1, #0x2a8]
    // 0x6f256c: r0 = showError()
    //     0x6f256c: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6f2570: r0 = Null
    //     0x6f2570: mov             x0, NULL
    // 0x6f2574: r0 = ReturnAsyncNotFuture()
    //     0x6f2574: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6f2578: LoadField: r2 = r1->field_1f
    //     0x6f2578: ldur            w2, [x1, #0x1f]
    // 0x6f257c: DecompressPointer r2
    //     0x6f257c: add             x2, x2, HEAP, lsl #32
    // 0x6f2580: cmp             w2, NULL
    // 0x6f2584: b.eq            #0x6f27c0
    // 0x6f2588: LoadField: r3 = r2->field_7
    //     0x6f2588: ldur            w3, [x2, #7]
    // 0x6f258c: cbz             w3, #0x6f27c0
    // 0x6f2590: LoadField: r2 = r1->field_b
    //     0x6f2590: ldur            w2, [x1, #0xb]
    // 0x6f2594: DecompressPointer r2
    //     0x6f2594: add             x2, x2, HEAP, lsl #32
    // 0x6f2598: cmp             w2, NULL
    // 0x6f259c: b.eq            #0x6f296c
    // 0x6f25a0: LoadField: r3 = r2->field_1b
    //     0x6f25a0: ldur            w3, [x2, #0x1b]
    // 0x6f25a4: DecompressPointer r3
    //     0x6f25a4: add             x3, x3, HEAP, lsl #32
    // 0x6f25a8: stur            x3, [fp, #-0x18]
    // 0x6f25ac: r1 = <List<RoomModel>>
    //     0x6f25ac: add             x1, PP, #0x12, lsl #12  ; [pp+0x127b0] TypeArguments: <List<RoomModel>>
    //     0x6f25b0: ldr             x1, [x1, #0x7b0]
    // 0x6f25b4: r0 = _CompactValuesIterable()
    //     0x6f25b4: bl              #0x3e33dc  ; Allocate_CompactValuesIterableStub -> _CompactValuesIterable<X0> (size=0x10)
    // 0x6f25b8: mov             x1, x0
    // 0x6f25bc: ldur            x0, [fp, #-0x18]
    // 0x6f25c0: StoreField: r1->field_b = r0
    //     0x6f25c0: stur            w0, [x1, #0xb]
    // 0x6f25c4: r0 = iterator()
    //     0x6f25c4: bl              #0x540280  ; [dart:_compact_hash] _CompactValuesIterable::iterator
    // 0x6f25c8: stur            x0, [fp, #-0x28]
    // 0x6f25cc: LoadField: r2 = r0->field_7
    //     0x6f25cc: ldur            w2, [x0, #7]
    // 0x6f25d0: DecompressPointer r2
    //     0x6f25d0: add             x2, x2, HEAP, lsl #32
    // 0x6f25d4: stur            x2, [fp, #-0x20]
    // 0x6f25d8: r4 = Null
    //     0x6f25d8: mov             x4, NULL
    // 0x6f25dc: ldur            x3, [fp, #-0x10]
    // 0x6f25e0: stur            x4, [fp, #-0x18]
    // 0x6f25e4: CheckStackOverflow
    //     0x6f25e4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f25e8: cmp             SP, x16
    //     0x6f25ec: b.ls            #0x6f2970
    // 0x6f25f0: mov             x1, x0
    // 0x6f25f4: r0 = moveNext()
    //     0x6f25f4: bl              #0x863f04  ; [dart:_compact_hash] _CompactIterator::moveNext
    // 0x6f25f8: tbnz            w0, #4, #0x6f2718
    // 0x6f25fc: ldur            x3, [fp, #-0x28]
    // 0x6f2600: LoadField: r4 = r3->field_33
    //     0x6f2600: ldur            w4, [x3, #0x33]
    // 0x6f2604: DecompressPointer r4
    //     0x6f2604: add             x4, x4, HEAP, lsl #32
    // 0x6f2608: stur            x4, [fp, #-0x30]
    // 0x6f260c: cmp             w4, NULL
    // 0x6f2610: b.ne            #0x6f2644
    // 0x6f2614: mov             x0, x4
    // 0x6f2618: ldur            x2, [fp, #-0x20]
    // 0x6f261c: r1 = Null
    //     0x6f261c: mov             x1, NULL
    // 0x6f2620: cmp             w2, NULL
    // 0x6f2624: b.eq            #0x6f2644
    // 0x6f2628: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x6f2628: ldur            w4, [x2, #0x17]
    // 0x6f262c: DecompressPointer r4
    //     0x6f262c: add             x4, x4, HEAP, lsl #32
    // 0x6f2630: r8 = X0
    //     0x6f2630: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x6f2634: LoadField: r9 = r4->field_7
    //     0x6f2634: ldur            x9, [x4, #7]
    // 0x6f2638: r3 = Null
    //     0x6f2638: add             x3, PP, #0x1c, lsl #12  ; [pp+0x1c2b0] Null
    //     0x6f263c: ldr             x3, [x3, #0x2b0]
    // 0x6f2640: blr             x9
    // 0x6f2644: ldur            x1, [fp, #-0x30]
    // 0x6f2648: r0 = LoadClassIdInstr(r1)
    //     0x6f2648: ldur            x0, [x1, #-1]
    //     0x6f264c: ubfx            x0, x0, #0xc, #0x14
    // 0x6f2650: r0 = GDT[cid_x0 + 0x90c4]()
    //     0x6f2650: mov             x17, #0x90c4
    //     0x6f2654: add             lr, x0, x17
    //     0x6f2658: ldr             lr, [x21, lr, lsl #3]
    //     0x6f265c: blr             lr
    // 0x6f2660: mov             x2, x0
    // 0x6f2664: stur            x2, [fp, #-0x30]
    // 0x6f2668: ldur            x3, [fp, #-0x10]
    // 0x6f266c: CheckStackOverflow
    //     0x6f266c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f2670: cmp             SP, x16
    //     0x6f2674: b.ls            #0x6f2978
    // 0x6f2678: r0 = LoadClassIdInstr(r2)
    //     0x6f2678: ldur            x0, [x2, #-1]
    //     0x6f267c: ubfx            x0, x0, #0xc, #0x14
    // 0x6f2680: mov             x1, x2
    // 0x6f2684: r0 = GDT[cid_x0 + 0x4cb]()
    //     0x6f2684: add             lr, x0, #0x4cb
    //     0x6f2688: ldr             lr, [x21, lr, lsl #3]
    //     0x6f268c: blr             lr
    // 0x6f2690: tbnz            w0, #4, #0x6f2708
    // 0x6f2694: ldur            x3, [fp, #-0x10]
    // 0x6f2698: ldur            x2, [fp, #-0x30]
    // 0x6f269c: r0 = LoadClassIdInstr(r2)
    //     0x6f269c: ldur            x0, [x2, #-1]
    //     0x6f26a0: ubfx            x0, x0, #0xc, #0x14
    // 0x6f26a4: mov             x1, x2
    // 0x6f26a8: r0 = GDT[cid_x0 + 0x4f1]()
    //     0x6f26a8: add             lr, x0, #0x4f1
    //     0x6f26ac: ldr             lr, [x21, lr, lsl #3]
    //     0x6f26b0: blr             lr
    // 0x6f26b4: mov             x1, x0
    // 0x6f26b8: stur            x1, [fp, #-0x38]
    // 0x6f26bc: LoadField: r0 = r1->field_7
    //     0x6f26bc: ldur            w0, [x1, #7]
    // 0x6f26c0: DecompressPointer r0
    //     0x6f26c0: add             x0, x0, HEAP, lsl #32
    // 0x6f26c4: ldur            x2, [fp, #-0x10]
    // 0x6f26c8: LoadField: r3 = r2->field_f
    //     0x6f26c8: ldur            w3, [x2, #0xf]
    // 0x6f26cc: DecompressPointer r3
    //     0x6f26cc: add             x3, x3, HEAP, lsl #32
    // 0x6f26d0: LoadField: r4 = r3->field_1f
    //     0x6f26d0: ldur            w4, [x3, #0x1f]
    // 0x6f26d4: DecompressPointer r4
    //     0x6f26d4: add             x4, x4, HEAP, lsl #32
    // 0x6f26d8: r3 = LoadClassIdInstr(r0)
    //     0x6f26d8: ldur            x3, [x0, #-1]
    //     0x6f26dc: ubfx            x3, x3, #0xc, #0x14
    // 0x6f26e0: stp             x4, x0, [SP]
    // 0x6f26e4: mov             x0, x3
    // 0x6f26e8: mov             lr, x0
    // 0x6f26ec: ldr             lr, [x21, lr, lsl #3]
    // 0x6f26f0: blr             lr
    // 0x6f26f4: tbz             w0, #4, #0x6f2700
    // 0x6f26f8: ldur            x2, [fp, #-0x30]
    // 0x6f26fc: b               #0x6f2668
    // 0x6f2700: ldur            x4, [fp, #-0x38]
    // 0x6f2704: b               #0x6f270c
    // 0x6f2708: ldur            x4, [fp, #-0x18]
    // 0x6f270c: ldur            x0, [fp, #-0x28]
    // 0x6f2710: ldur            x2, [fp, #-0x20]
    // 0x6f2714: b               #0x6f25dc
    // 0x6f2718: ldur            x0, [fp, #-0x18]
    // 0x6f271c: cmp             w0, NULL
    // 0x6f2720: b.eq            #0x6f27c0
    // 0x6f2724: ldur            x3, [fp, #-0x10]
    // 0x6f2728: LoadField: r1 = r3->field_f
    //     0x6f2728: ldur            w1, [x3, #0xf]
    // 0x6f272c: DecompressPointer r1
    //     0x6f272c: add             x1, x1, HEAP, lsl #32
    // 0x6f2730: mov             x2, x0
    // 0x6f2734: r0 = _isRoomAvailable()
    //     0x6f2734: bl              #0x6f3ca4  ; [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::_isRoomAvailable
    // 0x6f2738: tbz             w0, #4, #0x6f2750
    // 0x6f273c: r1 = "Oda kapasitesi dolu! Başka bir oda seçin."
    //     0x6f273c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c2c0] "Oda kapasitesi dolu! Başka bir oda seçin."
    //     0x6f2740: ldr             x1, [x1, #0x2c0]
    // 0x6f2744: r0 = showError()
    //     0x6f2744: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6f2748: r0 = Null
    //     0x6f2748: mov             x0, NULL
    // 0x6f274c: r0 = ReturnAsyncNotFuture()
    //     0x6f274c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6f2750: ldur            x0, [fp, #-0x10]
    // 0x6f2754: LoadField: r1 = r0->field_f
    //     0x6f2754: ldur            w1, [x0, #0xf]
    // 0x6f2758: DecompressPointer r1
    //     0x6f2758: add             x1, x1, HEAP, lsl #32
    // 0x6f275c: LoadField: r3 = r1->field_23
    //     0x6f275c: ldur            w3, [x1, #0x23]
    // 0x6f2760: DecompressPointer r3
    //     0x6f2760: add             x3, x3, HEAP, lsl #32
    // 0x6f2764: ldur            x2, [fp, #-0x18]
    // 0x6f2768: r0 = _isGenderCompatible()
    //     0x6f2768: bl              #0x6f3bf0  ; [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::_isGenderCompatible
    // 0x6f276c: tbz             w0, #4, #0x6f27c0
    // 0x6f2770: ldur            x0, [fp, #-0x18]
    // 0x6f2774: r1 = Null
    //     0x6f2774: mov             x1, NULL
    // 0x6f2778: r2 = 6
    //     0x6f2778: mov             x2, #6
    // 0x6f277c: r0 = AllocateArray()
    //     0x6f277c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f2780: r16 = "Bu oda "
    //     0x6f2780: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c2c8] "Bu oda "
    //     0x6f2784: ldr             x16, [x16, #0x2c8]
    // 0x6f2788: StoreField: r0->field_f = r16
    //     0x6f2788: stur            w16, [x0, #0xf]
    // 0x6f278c: ldur            x1, [fp, #-0x18]
    // 0x6f2790: LoadField: r2 = r1->field_1b
    //     0x6f2790: ldur            w2, [x1, #0x1b]
    // 0x6f2794: DecompressPointer r2
    //     0x6f2794: add             x2, x2, HEAP, lsl #32
    // 0x6f2798: StoreField: r0->field_13 = r2
    //     0x6f2798: stur            w2, [x0, #0x13]
    // 0x6f279c: r16 = " için ayrılmış! Cinsiyet uyumsuz."
    //     0x6f279c: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c2d0] " için ayrılmış! Cinsiyet uyumsuz."
    //     0x6f27a0: ldr             x16, [x16, #0x2d0]
    // 0x6f27a4: ArrayStore: r0[0] = r16  ; List_4
    //     0x6f27a4: stur            w16, [x0, #0x17]
    // 0x6f27a8: str             x0, [SP]
    // 0x6f27ac: r0 = _interpolate()
    //     0x6f27ac: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6f27b0: mov             x1, x0
    // 0x6f27b4: r0 = showError()
    //     0x6f27b4: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6f27b8: r0 = Null
    //     0x6f27b8: mov             x0, NULL
    // 0x6f27bc: r0 = ReturnAsyncNotFuture()
    //     0x6f27bc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6f27c0: ldur            x0, [fp, #-0x10]
    // 0x6f27c4: LoadField: r1 = r0->field_f
    //     0x6f27c4: ldur            w1, [x0, #0xf]
    // 0x6f27c8: DecompressPointer r1
    //     0x6f27c8: add             x1, x1, HEAP, lsl #32
    // 0x6f27cc: LoadField: r2 = r1->field_b
    //     0x6f27cc: ldur            w2, [x1, #0xb]
    // 0x6f27d0: DecompressPointer r2
    //     0x6f27d0: add             x2, x2, HEAP, lsl #32
    // 0x6f27d4: cmp             w2, NULL
    // 0x6f27d8: b.eq            #0x6f2980
    // 0x6f27dc: LoadField: r3 = r2->field_f
    //     0x6f27dc: ldur            w3, [x2, #0xf]
    // 0x6f27e0: DecompressPointer r3
    //     0x6f27e0: add             x3, x3, HEAP, lsl #32
    // 0x6f27e4: stur            x3, [fp, #-0x20]
    // 0x6f27e8: LoadField: r4 = r2->field_b
    //     0x6f27e8: ldur            w4, [x2, #0xb]
    // 0x6f27ec: DecompressPointer r4
    //     0x6f27ec: add             x4, x4, HEAP, lsl #32
    // 0x6f27f0: stur            x4, [fp, #-0x18]
    // 0x6f27f4: LoadField: r2 = r1->field_2b
    //     0x6f27f4: ldur            w2, [x1, #0x2b]
    // 0x6f27f8: DecompressPointer r2
    //     0x6f27f8: add             x2, x2, HEAP, lsl #32
    // 0x6f27fc: r16 = Sentinel
    //     0x6f27fc: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x6f2800: cmp             w2, w16
    // 0x6f2804: b.eq            #0x6f2984
    // 0x6f2808: LoadField: r1 = r2->field_27
    //     0x6f2808: ldur            w1, [x2, #0x27]
    // 0x6f280c: DecompressPointer r1
    //     0x6f280c: add             x1, x1, HEAP, lsl #32
    // 0x6f2810: LoadField: r2 = r1->field_7
    //     0x6f2810: ldur            w2, [x1, #7]
    // 0x6f2814: DecompressPointer r2
    //     0x6f2814: add             x2, x2, HEAP, lsl #32
    // 0x6f2818: mov             x1, x2
    // 0x6f281c: r0 = trim()
    //     0x6f281c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6f2820: mov             x2, x0
    // 0x6f2824: ldur            x0, [fp, #-0x10]
    // 0x6f2828: stur            x2, [fp, #-0x28]
    // 0x6f282c: LoadField: r1 = r0->field_f
    //     0x6f282c: ldur            w1, [x0, #0xf]
    // 0x6f2830: DecompressPointer r1
    //     0x6f2830: add             x1, x1, HEAP, lsl #32
    // 0x6f2834: LoadField: r3 = r1->field_2f
    //     0x6f2834: ldur            w3, [x1, #0x2f]
    // 0x6f2838: DecompressPointer r3
    //     0x6f2838: add             x3, x3, HEAP, lsl #32
    // 0x6f283c: r16 = Sentinel
    //     0x6f283c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x6f2840: cmp             w3, w16
    // 0x6f2844: b.eq            #0x6f2990
    // 0x6f2848: LoadField: r1 = r3->field_27
    //     0x6f2848: ldur            w1, [x3, #0x27]
    // 0x6f284c: DecompressPointer r1
    //     0x6f284c: add             x1, x1, HEAP, lsl #32
    // 0x6f2850: LoadField: r3 = r1->field_7
    //     0x6f2850: ldur            w3, [x1, #7]
    // 0x6f2854: DecompressPointer r3
    //     0x6f2854: add             x3, x3, HEAP, lsl #32
    // 0x6f2858: mov             x1, x3
    // 0x6f285c: r0 = trim()
    //     0x6f285c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6f2860: mov             x2, x0
    // 0x6f2864: ldur            x0, [fp, #-0x10]
    // 0x6f2868: stur            x2, [fp, #-0x30]
    // 0x6f286c: LoadField: r1 = r0->field_f
    //     0x6f286c: ldur            w1, [x0, #0xf]
    // 0x6f2870: DecompressPointer r1
    //     0x6f2870: add             x1, x1, HEAP, lsl #32
    // 0x6f2874: LoadField: r3 = r1->field_33
    //     0x6f2874: ldur            w3, [x1, #0x33]
    // 0x6f2878: DecompressPointer r3
    //     0x6f2878: add             x3, x3, HEAP, lsl #32
    // 0x6f287c: r16 = Sentinel
    //     0x6f287c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x6f2880: cmp             w3, w16
    // 0x6f2884: b.eq            #0x6f299c
    // 0x6f2888: LoadField: r1 = r3->field_27
    //     0x6f2888: ldur            w1, [x3, #0x27]
    // 0x6f288c: DecompressPointer r1
    //     0x6f288c: add             x1, x1, HEAP, lsl #32
    // 0x6f2890: LoadField: r3 = r1->field_7
    //     0x6f2890: ldur            w3, [x1, #7]
    // 0x6f2894: DecompressPointer r3
    //     0x6f2894: add             x3, x3, HEAP, lsl #32
    // 0x6f2898: mov             x1, x3
    // 0x6f289c: r0 = trim()
    //     0x6f289c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6f28a0: mov             x4, x0
    // 0x6f28a4: ldur            x0, [fp, #-0x10]
    // 0x6f28a8: stur            x4, [fp, #-0x40]
    // 0x6f28ac: LoadField: r1 = r0->field_f
    //     0x6f28ac: ldur            w1, [x0, #0xf]
    // 0x6f28b0: DecompressPointer r1
    //     0x6f28b0: add             x1, x1, HEAP, lsl #32
    // 0x6f28b4: LoadField: r8 = r1->field_23
    //     0x6f28b4: ldur            w8, [x1, #0x23]
    // 0x6f28b8: DecompressPointer r8
    //     0x6f28b8: add             x8, x8, HEAP, lsl #32
    // 0x6f28bc: stur            x8, [fp, #-0x38]
    // 0x6f28c0: LoadField: r3 = r1->field_27
    //     0x6f28c0: ldur            w3, [x1, #0x27]
    // 0x6f28c4: DecompressPointer r3
    //     0x6f28c4: add             x3, x3, HEAP, lsl #32
    // 0x6f28c8: ldur            x16, [fp, #-0x18]
    // 0x6f28cc: str             x16, [SP]
    // 0x6f28d0: ldur            x1, [fp, #-0x20]
    // 0x6f28d4: mov             x2, x8
    // 0x6f28d8: mov             x5, x4
    // 0x6f28dc: ldur            x6, [fp, #-0x28]
    // 0x6f28e0: ldur            x7, [fp, #-0x30]
    // 0x6f28e4: r0 = updateUserDetails()
    //     0x6f28e4: bl              #0x6f364c  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::updateUserDetails
    // 0x6f28e8: mov             x1, x0
    // 0x6f28ec: stur            x1, [fp, #-0x48]
    // 0x6f28f0: r0 = Await()
    //     0x6f28f0: bl              #0x3dd188  ; AwaitStub
    // 0x6f28f4: ldur            x0, [fp, #-0x10]
    // 0x6f28f8: LoadField: r1 = r0->field_f
    //     0x6f28f8: ldur            w1, [x0, #0xf]
    // 0x6f28fc: DecompressPointer r1
    //     0x6f28fc: add             x1, x1, HEAP, lsl #32
    // 0x6f2900: LoadField: r2 = r1->field_b
    //     0x6f2900: ldur            w2, [x1, #0xb]
    // 0x6f2904: DecompressPointer r2
    //     0x6f2904: add             x2, x2, HEAP, lsl #32
    // 0x6f2908: cmp             w2, NULL
    // 0x6f290c: b.eq            #0x6f29a8
    // 0x6f2910: LoadField: r3 = r2->field_f
    //     0x6f2910: ldur            w3, [x2, #0xf]
    // 0x6f2914: DecompressPointer r3
    //     0x6f2914: add             x3, x3, HEAP, lsl #32
    // 0x6f2918: LoadField: r7 = r2->field_b
    //     0x6f2918: ldur            w7, [x2, #0xb]
    // 0x6f291c: DecompressPointer r7
    //     0x6f291c: add             x7, x7, HEAP, lsl #32
    // 0x6f2920: LoadField: r2 = r1->field_13
    //     0x6f2920: ldur            w2, [x1, #0x13]
    // 0x6f2924: DecompressPointer r2
    //     0x6f2924: add             x2, x2, HEAP, lsl #32
    // 0x6f2928: ArrayLoad: r6 = r1[0]  ; List_4
    //     0x6f2928: ldur            w6, [x1, #0x17]
    // 0x6f292c: DecompressPointer r6
    //     0x6f292c: add             x6, x6, HEAP, lsl #32
    // 0x6f2930: LoadField: r4 = r1->field_1b
    //     0x6f2930: ldur            w4, [x1, #0x1b]
    // 0x6f2934: DecompressPointer r4
    //     0x6f2934: add             x4, x4, HEAP, lsl #32
    // 0x6f2938: LoadField: r5 = r1->field_1f
    //     0x6f2938: ldur            w5, [x1, #0x1f]
    // 0x6f293c: DecompressPointer r5
    //     0x6f293c: add             x5, x5, HEAP, lsl #32
    // 0x6f2940: mov             x1, x3
    // 0x6f2944: mov             x3, x2
    // 0x6f2948: mov             x2, x4
    // 0x6f294c: r0 = assignUser()
    //     0x6f294c: bl              #0x6f29ac  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::assignUser
    // 0x6f2950: mov             x1, x0
    // 0x6f2954: stur            x1, [fp, #-0x18]
    // 0x6f2958: r0 = Await()
    //     0x6f2958: bl              #0x3dd188  ; AwaitStub
    // 0x6f295c: r0 = Null
    //     0x6f295c: mov             x0, NULL
    // 0x6f2960: r0 = ReturnAsyncNotFuture()
    //     0x6f2960: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6f2964: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f2964: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f2968: b               #0x6f2528
    // 0x6f296c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f296c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f2970: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f2970: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f2974: b               #0x6f25f0
    // 0x6f2978: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f2978: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f297c: b               #0x6f2678
    // 0x6f2980: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f2980: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f2984: r9 = nameCtrl
    //     0x6f2984: add             x9, PP, #0x1c, lsl #12  ; [pp+0x1c290] Field <UserAssignmentCardState.nameCtrl>: late (offset: 0x2c)
    //     0x6f2988: ldr             x9, [x9, #0x290]
    // 0x6f298c: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x6f298c: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x6f2990: r9 = phoneCtrl
    //     0x6f2990: add             x9, PP, #0x1c, lsl #12  ; [pp+0x1c298] Field <UserAssignmentCardState.phoneCtrl>: late (offset: 0x30)
    //     0x6f2994: ldr             x9, [x9, #0x298]
    // 0x6f2998: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x6f2998: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x6f299c: r9 = locationCtrl
    //     0x6f299c: add             x9, PP, #0x1c, lsl #12  ; [pp+0x1c2a0] Field <UserAssignmentCardState.locationCtrl>: late (offset: 0x34)
    //     0x6f29a0: ldr             x9, [x9, #0x2a0]
    // 0x6f29a4: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x6f29a4: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x6f29a8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f29a8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _isGenderCompatible(/* No info */) {
    // ** addr: 0x6f3bf0, size: 0xb4
    // 0x6f3bf0: EnterFrame
    //     0x6f3bf0: stp             fp, lr, [SP, #-0x10]!
    //     0x6f3bf4: mov             fp, SP
    // 0x6f3bf8: AllocStack(0x20)
    //     0x6f3bf8: sub             SP, SP, #0x20
    // 0x6f3bfc: SetupParameters(dynamic _ /* r3 => r3, fp-0x10 */)
    //     0x6f3bfc: stur            x3, [fp, #-0x10]
    // 0x6f3c00: CheckStackOverflow
    //     0x6f3c00: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f3c04: cmp             SP, x16
    //     0x6f3c08: b.ls            #0x6f3c9c
    // 0x6f3c0c: LoadField: r1 = r2->field_1b
    //     0x6f3c0c: ldur            w1, [x2, #0x1b]
    // 0x6f3c10: DecompressPointer r1
    //     0x6f3c10: add             x1, x1, HEAP, lsl #32
    // 0x6f3c14: stur            x1, [fp, #-8]
    // 0x6f3c18: cmp             w1, NULL
    // 0x6f3c1c: b.eq            #0x6f3c44
    // 0x6f3c20: r0 = LoadClassIdInstr(r1)
    //     0x6f3c20: ldur            x0, [x1, #-1]
    //     0x6f3c24: ubfx            x0, x0, #0xc, #0x14
    // 0x6f3c28: r16 = "Karma"
    //     0x6f3c28: add             x16, PP, #0x19, lsl #12  ; [pp+0x195f0] "Karma"
    //     0x6f3c2c: ldr             x16, [x16, #0x5f0]
    // 0x6f3c30: stp             x16, x1, [SP]
    // 0x6f3c34: mov             lr, x0
    // 0x6f3c38: ldr             lr, [x21, lr, lsl #3]
    // 0x6f3c3c: blr             lr
    // 0x6f3c40: tbnz            w0, #4, #0x6f3c54
    // 0x6f3c44: r0 = true
    //     0x6f3c44: add             x0, NULL, #0x20  ; true
    // 0x6f3c48: LeaveFrame
    //     0x6f3c48: mov             SP, fp
    //     0x6f3c4c: ldp             fp, lr, [SP], #0x10
    // 0x6f3c50: ret
    //     0x6f3c50: ret             
    // 0x6f3c54: ldur            x0, [fp, #-0x10]
    // 0x6f3c58: cmp             w0, NULL
    // 0x6f3c5c: b.ne            #0x6f3c70
    // 0x6f3c60: r0 = true
    //     0x6f3c60: add             x0, NULL, #0x20  ; true
    // 0x6f3c64: LeaveFrame
    //     0x6f3c64: mov             SP, fp
    //     0x6f3c68: ldp             fp, lr, [SP], #0x10
    // 0x6f3c6c: ret
    //     0x6f3c6c: ret             
    // 0x6f3c70: ldur            x1, [fp, #-8]
    // 0x6f3c74: r2 = LoadClassIdInstr(r1)
    //     0x6f3c74: ldur            x2, [x1, #-1]
    //     0x6f3c78: ubfx            x2, x2, #0xc, #0x14
    // 0x6f3c7c: stp             x0, x1, [SP]
    // 0x6f3c80: mov             x0, x2
    // 0x6f3c84: mov             lr, x0
    // 0x6f3c88: ldr             lr, [x21, lr, lsl #3]
    // 0x6f3c8c: blr             lr
    // 0x6f3c90: LeaveFrame
    //     0x6f3c90: mov             SP, fp
    //     0x6f3c94: ldp             fp, lr, [SP], #0x10
    // 0x6f3c98: ret
    //     0x6f3c98: ret             
    // 0x6f3c9c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f3c9c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f3ca0: b               #0x6f3c0c
  }
  _ _isRoomAvailable(/* No info */) {
    // ** addr: 0x6f3ca4, size: 0x5c
    // 0x6f3ca4: EnterFrame
    //     0x6f3ca4: stp             fp, lr, [SP, #-0x10]!
    //     0x6f3ca8: mov             fp, SP
    // 0x6f3cac: AllocStack(0x8)
    //     0x6f3cac: sub             SP, SP, #8
    // 0x6f3cb0: SetupParameters(dynamic _ /* r2 => r0, fp-0x8 */)
    //     0x6f3cb0: mov             x0, x2
    //     0x6f3cb4: stur            x2, [fp, #-8]
    // 0x6f3cb8: CheckStackOverflow
    //     0x6f3cb8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f3cbc: cmp             SP, x16
    //     0x6f3cc0: b.ls            #0x6f3cf8
    // 0x6f3cc4: LoadField: r2 = r0->field_7
    //     0x6f3cc4: ldur            w2, [x0, #7]
    // 0x6f3cc8: DecompressPointer r2
    //     0x6f3cc8: add             x2, x2, HEAP, lsl #32
    // 0x6f3ccc: r0 = _getRoomOccupancy()
    //     0x6f3ccc: bl              #0x6f3d00  ; [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::_getRoomOccupancy
    // 0x6f3cd0: ldur            x1, [fp, #-8]
    // 0x6f3cd4: LoadField: r2 = r1->field_13
    //     0x6f3cd4: ldur            x2, [x1, #0x13]
    // 0x6f3cd8: cmp             x0, x2
    // 0x6f3cdc: r16 = true
    //     0x6f3cdc: add             x16, NULL, #0x20  ; true
    // 0x6f3ce0: r17 = false
    //     0x6f3ce0: add             x17, NULL, #0x30  ; false
    // 0x6f3ce4: csel            x1, x16, x17, lt
    // 0x6f3ce8: mov             x0, x1
    // 0x6f3cec: LeaveFrame
    //     0x6f3cec: mov             SP, fp
    //     0x6f3cf0: ldp             fp, lr, [SP], #0x10
    // 0x6f3cf4: ret
    //     0x6f3cf4: ret             
    // 0x6f3cf8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f3cf8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f3cfc: b               #0x6f3cc4
  }
  _ _getRoomOccupancy(/* No info */) {
    // ** addr: 0x6f3d00, size: 0x1c8
    // 0x6f3d00: EnterFrame
    //     0x6f3d00: stp             fp, lr, [SP, #-0x10]!
    //     0x6f3d04: mov             fp, SP
    // 0x6f3d08: AllocStack(0x38)
    //     0x6f3d08: sub             SP, SP, #0x38
    // 0x6f3d0c: SetupParameters(UserAssignmentCardState this /* r1 => r3, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x6f3d0c: mov             x3, x1
    //     0x6f3d10: stur            x1, [fp, #-8]
    //     0x6f3d14: stur            x2, [fp, #-0x10]
    // 0x6f3d18: CheckStackOverflow
    //     0x6f3d18: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f3d1c: cmp             SP, x16
    //     0x6f3d20: b.ls            #0x6f3eb0
    // 0x6f3d24: LoadField: r0 = r3->field_b
    //     0x6f3d24: ldur            w0, [x3, #0xb]
    // 0x6f3d28: DecompressPointer r0
    //     0x6f3d28: add             x0, x0, HEAP, lsl #32
    // 0x6f3d2c: cmp             w0, NULL
    // 0x6f3d30: b.eq            #0x6f3eb8
    // 0x6f3d34: LoadField: r1 = r0->field_f
    //     0x6f3d34: ldur            w1, [x0, #0xf]
    // 0x6f3d38: DecompressPointer r1
    //     0x6f3d38: add             x1, x1, HEAP, lsl #32
    // 0x6f3d3c: LoadField: r0 = r1->field_33
    //     0x6f3d3c: ldur            w0, [x1, #0x33]
    // 0x6f3d40: DecompressPointer r0
    //     0x6f3d40: add             x0, x0, HEAP, lsl #32
    // 0x6f3d44: r1 = LoadClassIdInstr(r0)
    //     0x6f3d44: ldur            x1, [x0, #-1]
    //     0x6f3d48: ubfx            x1, x1, #0xc, #0x14
    // 0x6f3d4c: mov             x16, x0
    // 0x6f3d50: mov             x0, x1
    // 0x6f3d54: mov             x1, x16
    // 0x6f3d58: r0 = GDT[cid_x0 + 0x90c4]()
    //     0x6f3d58: mov             x17, #0x90c4
    //     0x6f3d5c: add             lr, x0, x17
    //     0x6f3d60: ldr             lr, [x21, lr, lsl #3]
    //     0x6f3d64: blr             lr
    // 0x6f3d68: mov             x2, x0
    // 0x6f3d6c: stur            x2, [fp, #-0x20]
    // 0x6f3d70: r4 = 0
    //     0x6f3d70: mov             x4, #0
    // 0x6f3d74: ldur            x3, [fp, #-8]
    // 0x6f3d78: stur            x4, [fp, #-0x18]
    // 0x6f3d7c: CheckStackOverflow
    //     0x6f3d7c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f3d80: cmp             SP, x16
    //     0x6f3d84: b.ls            #0x6f3ebc
    // 0x6f3d88: r0 = LoadClassIdInstr(r2)
    //     0x6f3d88: ldur            x0, [x2, #-1]
    //     0x6f3d8c: ubfx            x0, x0, #0xc, #0x14
    // 0x6f3d90: mov             x1, x2
    // 0x6f3d94: r0 = GDT[cid_x0 + 0x4cb]()
    //     0x6f3d94: add             lr, x0, #0x4cb
    //     0x6f3d98: ldr             lr, [x21, lr, lsl #3]
    //     0x6f3d9c: blr             lr
    // 0x6f3da0: tbnz            w0, #4, #0x6f3e9c
    // 0x6f3da4: ldur            x3, [fp, #-8]
    // 0x6f3da8: ldur            x2, [fp, #-0x20]
    // 0x6f3dac: r0 = LoadClassIdInstr(r2)
    //     0x6f3dac: ldur            x0, [x2, #-1]
    //     0x6f3db0: ubfx            x0, x0, #0xc, #0x14
    // 0x6f3db4: mov             x1, x2
    // 0x6f3db8: r0 = GDT[cid_x0 + 0x4f1]()
    //     0x6f3db8: add             lr, x0, #0x4f1
    //     0x6f3dbc: ldr             lr, [x21, lr, lsl #3]
    //     0x6f3dc0: blr             lr
    // 0x6f3dc4: mov             x1, x0
    // 0x6f3dc8: stur            x1, [fp, #-0x28]
    // 0x6f3dcc: LoadField: r0 = r1->field_7
    //     0x6f3dcc: ldur            w0, [x1, #7]
    // 0x6f3dd0: DecompressPointer r0
    //     0x6f3dd0: add             x0, x0, HEAP, lsl #32
    // 0x6f3dd4: ldur            x2, [fp, #-8]
    // 0x6f3dd8: LoadField: r3 = r2->field_b
    //     0x6f3dd8: ldur            w3, [x2, #0xb]
    // 0x6f3ddc: DecompressPointer r3
    //     0x6f3ddc: add             x3, x3, HEAP, lsl #32
    // 0x6f3de0: cmp             w3, NULL
    // 0x6f3de4: b.eq            #0x6f3ec4
    // 0x6f3de8: LoadField: r4 = r3->field_b
    //     0x6f3de8: ldur            w4, [x3, #0xb]
    // 0x6f3dec: DecompressPointer r4
    //     0x6f3dec: add             x4, x4, HEAP, lsl #32
    // 0x6f3df0: LoadField: r3 = r4->field_7
    //     0x6f3df0: ldur            w3, [x4, #7]
    // 0x6f3df4: DecompressPointer r3
    //     0x6f3df4: add             x3, x3, HEAP, lsl #32
    // 0x6f3df8: r4 = LoadClassIdInstr(r0)
    //     0x6f3df8: ldur            x4, [x0, #-1]
    //     0x6f3dfc: ubfx            x4, x4, #0xc, #0x14
    // 0x6f3e00: stp             x3, x0, [SP]
    // 0x6f3e04: mov             x0, x4
    // 0x6f3e08: mov             lr, x0
    // 0x6f3e0c: ldr             lr, [x21, lr, lsl #3]
    // 0x6f3e10: blr             lr
    // 0x6f3e14: tbnz            w0, #4, #0x6f3e20
    // 0x6f3e18: ldur            x4, [fp, #-0x18]
    // 0x6f3e1c: b               #0x6f3e94
    // 0x6f3e20: ldur            x1, [fp, #-0x28]
    // 0x6f3e24: LoadField: r0 = r1->field_2b
    //     0x6f3e24: ldur            w0, [x1, #0x2b]
    // 0x6f3e28: DecompressPointer r0
    //     0x6f3e28: add             x0, x0, HEAP, lsl #32
    // 0x6f3e2c: r2 = LoadClassIdInstr(r0)
    //     0x6f3e2c: ldur            x2, [x0, #-1]
    //     0x6f3e30: ubfx            x2, x2, #0xc, #0x14
    // 0x6f3e34: ldur            x16, [fp, #-0x10]
    // 0x6f3e38: stp             x16, x0, [SP]
    // 0x6f3e3c: mov             x0, x2
    // 0x6f3e40: mov             lr, x0
    // 0x6f3e44: ldr             lr, [x21, lr, lsl #3]
    // 0x6f3e48: blr             lr
    // 0x6f3e4c: tbz             w0, #4, #0x6f3e7c
    // 0x6f3e50: ldur            x0, [fp, #-0x28]
    // 0x6f3e54: LoadField: r1 = r0->field_2f
    //     0x6f3e54: ldur            w1, [x0, #0x2f]
    // 0x6f3e58: DecompressPointer r1
    //     0x6f3e58: add             x1, x1, HEAP, lsl #32
    // 0x6f3e5c: r0 = LoadClassIdInstr(r1)
    //     0x6f3e5c: ldur            x0, [x1, #-1]
    //     0x6f3e60: ubfx            x0, x0, #0xc, #0x14
    // 0x6f3e64: ldur            x16, [fp, #-0x10]
    // 0x6f3e68: stp             x16, x1, [SP]
    // 0x6f3e6c: mov             lr, x0
    // 0x6f3e70: ldr             lr, [x21, lr, lsl #3]
    // 0x6f3e74: blr             lr
    // 0x6f3e78: tbnz            w0, #4, #0x6f3e88
    // 0x6f3e7c: ldur            x1, [fp, #-0x18]
    // 0x6f3e80: add             x2, x1, #1
    // 0x6f3e84: b               #0x6f3e90
    // 0x6f3e88: ldur            x1, [fp, #-0x18]
    // 0x6f3e8c: mov             x2, x1
    // 0x6f3e90: mov             x4, x2
    // 0x6f3e94: ldur            x2, [fp, #-0x20]
    // 0x6f3e98: b               #0x6f3d74
    // 0x6f3e9c: ldur            x1, [fp, #-0x18]
    // 0x6f3ea0: mov             x0, x1
    // 0x6f3ea4: LeaveFrame
    //     0x6f3ea4: mov             SP, fp
    //     0x6f3ea8: ldp             fp, lr, [SP], #0x10
    // 0x6f3eac: ret
    //     0x6f3eac: ret             
    // 0x6f3eb0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f3eb0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f3eb4: b               #0x6f3d24
    // 0x6f3eb8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f3eb8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f3ebc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f3ebc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f3ec0: b               #0x6f3d88
    // 0x6f3ec4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f3ec4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6f3ec8, size: 0x84
    // 0x6f3ec8: EnterFrame
    //     0x6f3ec8: stp             fp, lr, [SP, #-0x10]!
    //     0x6f3ecc: mov             fp, SP
    // 0x6f3ed0: AllocStack(0x10)
    //     0x6f3ed0: sub             SP, SP, #0x10
    // 0x6f3ed4: SetupParameters([dynamic _ /* r0 */])
    //     0x6f3ed4: ldr             x0, [fp, #0x18]
    //     0x6f3ed8: ldur            w1, [x0, #0x17]
    //     0x6f3edc: add             x1, x1, HEAP, lsl #32
    //     0x6f3ee0: stur            x1, [fp, #-8]
    // 0x6f3ee4: CheckStackOverflow
    //     0x6f3ee4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f3ee8: cmp             SP, x16
    //     0x6f3eec: b.ls            #0x6f3f44
    // 0x6f3ef0: r1 = 1
    //     0x6f3ef0: mov             x1, #1
    // 0x6f3ef4: r0 = AllocateContext()
    //     0x6f3ef4: bl              #0x927010  ; AllocateContextStub
    // 0x6f3ef8: mov             x1, x0
    // 0x6f3efc: ldur            x0, [fp, #-8]
    // 0x6f3f00: StoreField: r1->field_b = r0
    //     0x6f3f00: stur            w0, [x1, #0xb]
    // 0x6f3f04: ldr             x2, [fp, #0x10]
    // 0x6f3f08: StoreField: r1->field_f = r2
    //     0x6f3f08: stur            w2, [x1, #0xf]
    // 0x6f3f0c: LoadField: r3 = r0->field_f
    //     0x6f3f0c: ldur            w3, [x0, #0xf]
    // 0x6f3f10: DecompressPointer r3
    //     0x6f3f10: add             x3, x3, HEAP, lsl #32
    // 0x6f3f14: mov             x2, x1
    // 0x6f3f18: stur            x3, [fp, #-0x10]
    // 0x6f3f1c: r1 = Function '<anonymous closure>':.
    //     0x6f3f1c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c368] AnonymousClosure: (0x6f3f4c), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::build (0x6f0bf8)
    //     0x6f3f20: ldr             x1, [x1, #0x368]
    // 0x6f3f24: r0 = AllocateClosure()
    //     0x6f3f24: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f3f28: ldur            x1, [fp, #-0x10]
    // 0x6f3f2c: mov             x2, x0
    // 0x6f3f30: r0 = setState()
    //     0x6f3f30: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6f3f34: r0 = Null
    //     0x6f3f34: mov             x0, NULL
    // 0x6f3f38: LeaveFrame
    //     0x6f3f38: mov             SP, fp
    //     0x6f3f3c: ldp             fp, lr, [SP], #0x10
    // 0x6f3f40: ret
    //     0x6f3f40: ret             
    // 0x6f3f44: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f3f44: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f3f48: b               #0x6f3ef0
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6f3f4c, size: 0x54
    // 0x6f3f4c: ldr             x1, [SP]
    // 0x6f3f50: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6f3f50: ldur            w2, [x1, #0x17]
    // 0x6f3f54: DecompressPointer r2
    //     0x6f3f54: add             x2, x2, HEAP, lsl #32
    // 0x6f3f58: LoadField: r1 = r2->field_b
    //     0x6f3f58: ldur            w1, [x2, #0xb]
    // 0x6f3f5c: DecompressPointer r1
    //     0x6f3f5c: add             x1, x1, HEAP, lsl #32
    // 0x6f3f60: LoadField: r3 = r1->field_f
    //     0x6f3f60: ldur            w3, [x1, #0xf]
    // 0x6f3f64: DecompressPointer r3
    //     0x6f3f64: add             x3, x3, HEAP, lsl #32
    // 0x6f3f68: LoadField: r1 = r2->field_f
    //     0x6f3f68: ldur            w1, [x2, #0xf]
    // 0x6f3f6c: DecompressPointer r1
    //     0x6f3f6c: add             x1, x1, HEAP, lsl #32
    // 0x6f3f70: mov             x0, x1
    // 0x6f3f74: StoreField: r3->field_1f = r0
    //     0x6f3f74: stur            w0, [x3, #0x1f]
    //     0x6f3f78: ldurb           w16, [x3, #-1]
    //     0x6f3f7c: ldurb           w17, [x0, #-1]
    //     0x6f3f80: and             x16, x17, x16, lsr #2
    //     0x6f3f84: tst             x16, HEAP, lsr #32
    //     0x6f3f88: b.eq            #0x6f3f98
    //     0x6f3f8c: str             lr, [SP, #-8]!
    //     0x6f3f90: bl              #0x9267d0  ; WriteBarrierWrappersStub
    //     0x6f3f94: ldr             lr, [SP], #8
    // 0x6f3f98: mov             x0, x1
    // 0x6f3f9c: ret
    //     0x6f3f9c: ret             
  }
  [closure] DropdownMenuItem<String?> <anonymous closure>(dynamic, RoomModel) {
    // ** addr: 0x6f3fa0, size: 0x270
    // 0x6f3fa0: EnterFrame
    //     0x6f3fa0: stp             fp, lr, [SP, #-0x10]!
    //     0x6f3fa4: mov             fp, SP
    // 0x6f3fa8: AllocStack(0x50)
    //     0x6f3fa8: sub             SP, SP, #0x50
    // 0x6f3fac: SetupParameters([dynamic _ /* r0 */])
    //     0x6f3fac: ldr             x0, [fp, #0x18]
    //     0x6f3fb0: ldur            w3, [x0, #0x17]
    //     0x6f3fb4: add             x3, x3, HEAP, lsl #32
    //     0x6f3fb8: stur            x3, [fp, #-0x10]
    // 0x6f3fbc: CheckStackOverflow
    //     0x6f3fbc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f3fc0: cmp             SP, x16
    //     0x6f3fc4: b.ls            #0x6f4208
    // 0x6f3fc8: LoadField: r1 = r3->field_f
    //     0x6f3fc8: ldur            w1, [x3, #0xf]
    // 0x6f3fcc: DecompressPointer r1
    //     0x6f3fcc: add             x1, x1, HEAP, lsl #32
    // 0x6f3fd0: ldr             x0, [fp, #0x10]
    // 0x6f3fd4: LoadField: r4 = r0->field_7
    //     0x6f3fd4: ldur            w4, [x0, #7]
    // 0x6f3fd8: DecompressPointer r4
    //     0x6f3fd8: add             x4, x4, HEAP, lsl #32
    // 0x6f3fdc: mov             x2, x4
    // 0x6f3fe0: stur            x4, [fp, #-8]
    // 0x6f3fe4: r0 = _getRoomOccupancy()
    //     0x6f3fe4: bl              #0x6f3d00  ; [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::_getRoomOccupancy
    // 0x6f3fe8: mov             x4, x0
    // 0x6f3fec: ldr             x0, [fp, #0x10]
    // 0x6f3ff0: stur            x4, [fp, #-0x28]
    // 0x6f3ff4: LoadField: r5 = r0->field_13
    //     0x6f3ff4: ldur            x5, [x0, #0x13]
    // 0x6f3ff8: stur            x5, [fp, #-0x20]
    // 0x6f3ffc: cmp             x4, x5
    // 0x6f4000: r16 = true
    //     0x6f4000: add             x16, NULL, #0x20  ; true
    // 0x6f4004: r17 = false
    //     0x6f4004: add             x17, NULL, #0x30  ; false
    // 0x6f4008: csel            x6, x16, x17, lt
    // 0x6f400c: ldur            x1, [fp, #-0x10]
    // 0x6f4010: stur            x6, [fp, #-0x18]
    // 0x6f4014: LoadField: r2 = r1->field_f
    //     0x6f4014: ldur            w2, [x1, #0xf]
    // 0x6f4018: DecompressPointer r2
    //     0x6f4018: add             x2, x2, HEAP, lsl #32
    // 0x6f401c: LoadField: r3 = r2->field_23
    //     0x6f401c: ldur            w3, [x2, #0x23]
    // 0x6f4020: DecompressPointer r3
    //     0x6f4020: add             x3, x3, HEAP, lsl #32
    // 0x6f4024: mov             x1, x2
    // 0x6f4028: mov             x2, x0
    // 0x6f402c: r0 = _isGenderCompatible()
    //     0x6f402c: bl              #0x6f3bf0  ; [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::_isGenderCompatible
    // 0x6f4030: mov             x3, x0
    // 0x6f4034: ldr             x0, [fp, #0x10]
    // 0x6f4038: stur            x3, [fp, #-0x30]
    // 0x6f403c: LoadField: r4 = r0->field_1b
    //     0x6f403c: ldur            w4, [x0, #0x1b]
    // 0x6f4040: DecompressPointer r4
    //     0x6f4040: add             x4, x4, HEAP, lsl #32
    // 0x6f4044: stur            x4, [fp, #-0x10]
    // 0x6f4048: cmp             w4, NULL
    // 0x6f404c: b.eq            #0x6f4080
    // 0x6f4050: r1 = Null
    //     0x6f4050: mov             x1, NULL
    // 0x6f4054: r2 = 4
    //     0x6f4054: mov             x2, #4
    // 0x6f4058: r0 = AllocateArray()
    //     0x6f4058: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f405c: r16 = " • "
    //     0x6f405c: add             x16, PP, #0x13, lsl #12  ; [pp+0x139d8] " • "
    //     0x6f4060: ldr             x16, [x16, #0x9d8]
    // 0x6f4064: StoreField: r0->field_f = r16
    //     0x6f4064: stur            w16, [x0, #0xf]
    // 0x6f4068: ldur            x1, [fp, #-0x10]
    // 0x6f406c: StoreField: r0->field_13 = r1
    //     0x6f406c: stur            w1, [x0, #0x13]
    // 0x6f4070: str             x0, [SP]
    // 0x6f4074: r0 = _interpolate()
    //     0x6f4074: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6f4078: mov             x3, x0
    // 0x6f407c: b               #0x6f4084
    // 0x6f4080: r3 = ""
    //     0x6f4080: ldr             x3, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6f4084: ldur            x0, [fp, #-0x18]
    // 0x6f4088: stur            x3, [fp, #-0x40]
    // 0x6f408c: tbnz            w0, #4, #0x6f4098
    // 0x6f4090: ldur            x6, [fp, #-0x30]
    // 0x6f4094: b               #0x6f409c
    // 0x6f4098: r6 = false
    //     0x6f4098: add             x6, NULL, #0x30  ; false
    // 0x6f409c: ldr             x1, [fp, #0x10]
    // 0x6f40a0: ldur            x4, [fp, #-0x28]
    // 0x6f40a4: ldur            x5, [fp, #-0x20]
    // 0x6f40a8: stur            x6, [fp, #-0x38]
    // 0x6f40ac: LoadField: r7 = r1->field_f
    //     0x6f40ac: ldur            w7, [x1, #0xf]
    // 0x6f40b0: DecompressPointer r7
    //     0x6f40b0: add             x7, x7, HEAP, lsl #32
    // 0x6f40b4: stur            x7, [fp, #-0x10]
    // 0x6f40b8: r1 = Null
    //     0x6f40b8: mov             x1, NULL
    // 0x6f40bc: r2 = 14
    //     0x6f40bc: mov             x2, #0xe
    // 0x6f40c0: r0 = AllocateArray()
    //     0x6f40c0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f40c4: mov             x2, x0
    // 0x6f40c8: ldur            x0, [fp, #-0x10]
    // 0x6f40cc: StoreField: r2->field_f = r0
    //     0x6f40cc: stur            w0, [x2, #0xf]
    // 0x6f40d0: r16 = " • "
    //     0x6f40d0: add             x16, PP, #0x13, lsl #12  ; [pp+0x139d8] " • "
    //     0x6f40d4: ldr             x16, [x16, #0x9d8]
    // 0x6f40d8: StoreField: r2->field_13 = r16
    //     0x6f40d8: stur            w16, [x2, #0x13]
    // 0x6f40dc: ldur            x3, [fp, #-0x28]
    // 0x6f40e0: r0 = BoxInt64Instr(r3)
    //     0x6f40e0: sbfiz           x0, x3, #1, #0x1f
    //     0x6f40e4: cmp             x3, x0, asr #1
    //     0x6f40e8: b.eq            #0x6f40f4
    //     0x6f40ec: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6f40f0: stur            x3, [x0, #7]
    // 0x6f40f4: ArrayStore: r2[0] = r0  ; List_4
    //     0x6f40f4: stur            w0, [x2, #0x17]
    // 0x6f40f8: r16 = "/"
    //     0x6f40f8: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x6f40fc: StoreField: r2->field_1b = r16
    //     0x6f40fc: stur            w16, [x2, #0x1b]
    // 0x6f4100: ldur            x3, [fp, #-0x20]
    // 0x6f4104: r0 = BoxInt64Instr(r3)
    //     0x6f4104: sbfiz           x0, x3, #1, #0x1f
    //     0x6f4108: cmp             x3, x0, asr #1
    //     0x6f410c: b.eq            #0x6f4118
    //     0x6f4110: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6f4114: stur            x3, [x0, #7]
    // 0x6f4118: StoreField: r2->field_1f = r0
    //     0x6f4118: stur            w0, [x2, #0x1f]
    // 0x6f411c: r16 = " kişi"
    //     0x6f411c: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c370] " kişi"
    //     0x6f4120: ldr             x16, [x16, #0x370]
    // 0x6f4124: StoreField: r2->field_23 = r16
    //     0x6f4124: stur            w16, [x2, #0x23]
    // 0x6f4128: ldur            x0, [fp, #-0x40]
    // 0x6f412c: StoreField: r2->field_27 = r0
    //     0x6f412c: stur            w0, [x2, #0x27]
    // 0x6f4130: str             x2, [SP]
    // 0x6f4134: r0 = _interpolate()
    //     0x6f4134: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6f4138: mov             x1, x0
    // 0x6f413c: ldur            x0, [fp, #-0x18]
    // 0x6f4140: stur            x1, [fp, #-0x48]
    // 0x6f4144: tbz             w0, #4, #0x6f4150
    // 0x6f4148: ldur            x2, [fp, #-0x30]
    // 0x6f414c: b               #0x6f4158
    // 0x6f4150: ldur            x2, [fp, #-0x30]
    // 0x6f4154: tbz             w2, #4, #0x6f4164
    // 0x6f4158: r3 = Instance_MaterialColor
    //     0x6f4158: add             x3, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x6f415c: ldr             x3, [x3, #0xbc8]
    // 0x6f4160: b               #0x6f4168
    // 0x6f4164: r3 = Null
    //     0x6f4164: mov             x3, NULL
    // 0x6f4168: stur            x3, [fp, #-0x40]
    // 0x6f416c: tbnz            w0, #4, #0x6f4174
    // 0x6f4170: tbz             w2, #4, #0x6f4180
    // 0x6f4174: r4 = Instance_TextDecoration
    //     0x6f4174: add             x4, PP, #0x19, lsl #12  ; [pp+0x195f8] Obj!TextDecoration@a20f91
    //     0x6f4178: ldr             x4, [x4, #0x5f8]
    // 0x6f417c: b               #0x6f4184
    // 0x6f4180: r4 = Null
    //     0x6f4180: mov             x4, NULL
    // 0x6f4184: ldur            x2, [fp, #-8]
    // 0x6f4188: ldur            x0, [fp, #-0x38]
    // 0x6f418c: stur            x4, [fp, #-0x10]
    // 0x6f4190: r0 = TextStyle()
    //     0x6f4190: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6f4194: mov             x1, x0
    // 0x6f4198: r0 = true
    //     0x6f4198: add             x0, NULL, #0x20  ; true
    // 0x6f419c: stur            x1, [fp, #-0x18]
    // 0x6f41a0: StoreField: r1->field_7 = r0
    //     0x6f41a0: stur            w0, [x1, #7]
    // 0x6f41a4: ldur            x0, [fp, #-0x40]
    // 0x6f41a8: StoreField: r1->field_b = r0
    //     0x6f41a8: stur            w0, [x1, #0xb]
    // 0x6f41ac: ldur            x0, [fp, #-0x10]
    // 0x6f41b0: StoreField: r1->field_4b = r0
    //     0x6f41b0: stur            w0, [x1, #0x4b]
    // 0x6f41b4: r0 = Text()
    //     0x6f41b4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f41b8: mov             x2, x0
    // 0x6f41bc: ldur            x0, [fp, #-0x48]
    // 0x6f41c0: stur            x2, [fp, #-0x10]
    // 0x6f41c4: StoreField: r2->field_b = r0
    //     0x6f41c4: stur            w0, [x2, #0xb]
    // 0x6f41c8: ldur            x0, [fp, #-0x18]
    // 0x6f41cc: StoreField: r2->field_13 = r0
    //     0x6f41cc: stur            w0, [x2, #0x13]
    // 0x6f41d0: r1 = <String?>
    //     0x6f41d0: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x6f41d4: r0 = DropdownMenuItem()
    //     0x6f41d4: bl              #0x6de55c  ; AllocateDropdownMenuItemStub -> DropdownMenuItem<X0> (size=0x24)
    // 0x6f41d8: ldur            x1, [fp, #-8]
    // 0x6f41dc: StoreField: r0->field_1b = r1
    //     0x6f41dc: stur            w1, [x0, #0x1b]
    // 0x6f41e0: ldur            x1, [fp, #-0x38]
    // 0x6f41e4: StoreField: r0->field_1f = r1
    //     0x6f41e4: stur            w1, [x0, #0x1f]
    // 0x6f41e8: r1 = Instance_AlignmentDirectional
    //     0x6f41e8: add             x1, PP, #0x14, lsl #12  ; [pp+0x14330] Obj!AlignmentDirectional@a0ce11
    //     0x6f41ec: ldr             x1, [x1, #0x330]
    // 0x6f41f0: StoreField: r0->field_f = r1
    //     0x6f41f0: stur            w1, [x0, #0xf]
    // 0x6f41f4: ldur            x1, [fp, #-0x10]
    // 0x6f41f8: StoreField: r0->field_b = r1
    //     0x6f41f8: stur            w1, [x0, #0xb]
    // 0x6f41fc: LeaveFrame
    //     0x6f41fc: mov             SP, fp
    //     0x6f4200: ldp             fp, lr, [SP], #0x10
    // 0x6f4204: ret
    //     0x6f4204: ret             
    // 0x6f4208: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f4208: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f420c: b               #0x6f3fc8
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6f4210, size: 0x84
    // 0x6f4210: EnterFrame
    //     0x6f4210: stp             fp, lr, [SP, #-0x10]!
    //     0x6f4214: mov             fp, SP
    // 0x6f4218: AllocStack(0x10)
    //     0x6f4218: sub             SP, SP, #0x10
    // 0x6f421c: SetupParameters([dynamic _ /* r0 */])
    //     0x6f421c: ldr             x0, [fp, #0x18]
    //     0x6f4220: ldur            w1, [x0, #0x17]
    //     0x6f4224: add             x1, x1, HEAP, lsl #32
    //     0x6f4228: stur            x1, [fp, #-8]
    // 0x6f422c: CheckStackOverflow
    //     0x6f422c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f4230: cmp             SP, x16
    //     0x6f4234: b.ls            #0x6f428c
    // 0x6f4238: r1 = 1
    //     0x6f4238: mov             x1, #1
    // 0x6f423c: r0 = AllocateContext()
    //     0x6f423c: bl              #0x927010  ; AllocateContextStub
    // 0x6f4240: mov             x1, x0
    // 0x6f4244: ldur            x0, [fp, #-8]
    // 0x6f4248: StoreField: r1->field_b = r0
    //     0x6f4248: stur            w0, [x1, #0xb]
    // 0x6f424c: ldr             x2, [fp, #0x10]
    // 0x6f4250: StoreField: r1->field_f = r2
    //     0x6f4250: stur            w2, [x1, #0xf]
    // 0x6f4254: LoadField: r3 = r0->field_f
    //     0x6f4254: ldur            w3, [x0, #0xf]
    // 0x6f4258: DecompressPointer r3
    //     0x6f4258: add             x3, x3, HEAP, lsl #32
    // 0x6f425c: mov             x2, x1
    // 0x6f4260: stur            x3, [fp, #-0x10]
    // 0x6f4264: r1 = Function '<anonymous closure>':.
    //     0x6f4264: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c378] AnonymousClosure: (0x6f4294), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::build (0x6f0bf8)
    //     0x6f4268: ldr             x1, [x1, #0x378]
    // 0x6f426c: r0 = AllocateClosure()
    //     0x6f426c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f4270: ldur            x1, [fp, #-0x10]
    // 0x6f4274: mov             x2, x0
    // 0x6f4278: r0 = setState()
    //     0x6f4278: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6f427c: r0 = Null
    //     0x6f427c: mov             x0, NULL
    // 0x6f4280: LeaveFrame
    //     0x6f4280: mov             SP, fp
    //     0x6f4284: ldp             fp, lr, [SP], #0x10
    // 0x6f4288: ret
    //     0x6f4288: ret             
    // 0x6f428c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f428c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f4290: b               #0x6f4238
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6f4294, size: 0x54
    // 0x6f4294: ldr             x1, [SP]
    // 0x6f4298: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6f4298: ldur            w2, [x1, #0x17]
    // 0x6f429c: DecompressPointer r2
    //     0x6f429c: add             x2, x2, HEAP, lsl #32
    // 0x6f42a0: LoadField: r1 = r2->field_b
    //     0x6f42a0: ldur            w1, [x2, #0xb]
    // 0x6f42a4: DecompressPointer r1
    //     0x6f42a4: add             x1, x1, HEAP, lsl #32
    // 0x6f42a8: LoadField: r3 = r1->field_f
    //     0x6f42a8: ldur            w3, [x1, #0xf]
    // 0x6f42ac: DecompressPointer r3
    //     0x6f42ac: add             x3, x3, HEAP, lsl #32
    // 0x6f42b0: LoadField: r0 = r2->field_f
    //     0x6f42b0: ldur            w0, [x2, #0xf]
    // 0x6f42b4: DecompressPointer r0
    //     0x6f42b4: add             x0, x0, HEAP, lsl #32
    // 0x6f42b8: StoreField: r3->field_1b = r0
    //     0x6f42b8: stur            w0, [x3, #0x1b]
    //     0x6f42bc: ldurb           w16, [x3, #-1]
    //     0x6f42c0: ldurb           w17, [x0, #-1]
    //     0x6f42c4: and             x16, x17, x16, lsr #2
    //     0x6f42c8: tst             x16, HEAP, lsr #32
    //     0x6f42cc: b.eq            #0x6f42dc
    //     0x6f42d0: str             lr, [SP, #-8]!
    //     0x6f42d4: bl              #0x9267d0  ; WriteBarrierWrappersStub
    //     0x6f42d8: ldr             lr, [SP], #8
    // 0x6f42dc: StoreField: r3->field_1f = rNULL
    //     0x6f42dc: stur            NULL, [x3, #0x1f]
    // 0x6f42e0: r0 = Null
    //     0x6f42e0: mov             x0, NULL
    // 0x6f42e4: ret
    //     0x6f42e4: ret             
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6f6da0, size: 0x190
    // 0x6f6da0: EnterFrame
    //     0x6f6da0: stp             fp, lr, [SP, #-0x10]!
    //     0x6f6da4: mov             fp, SP
    // 0x6f6da8: AllocStack(0x48)
    //     0x6f6da8: sub             SP, SP, #0x48
    // 0x6f6dac: SetupParameters(UserAssignmentCardState this /* r1 */)
    //     0x6f6dac: stur            NULL, [fp, #-8]
    //     0x6f6db0: mov             x0, #0
    //     0x6f6db4: add             x1, fp, w0, sxtw #2
    //     0x6f6db8: ldr             x1, [x1, #0x10]
    //     0x6f6dbc: ldur            w2, [x1, #0x17]
    //     0x6f6dc0: add             x2, x2, HEAP, lsl #32
    //     0x6f6dc4: stur            x2, [fp, #-0x10]
    // 0x6f6dc8: CheckStackOverflow
    //     0x6f6dc8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f6dcc: cmp             SP, x16
    //     0x6f6dd0: b.ls            #0x6f6f28
    // 0x6f6dd4: InitAsync() -> Future<void?>
    //     0x6f6dd4: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6f6dd8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6f6ddc: r1 = 1
    //     0x6f6ddc: mov             x1, #1
    // 0x6f6de0: r0 = AllocateContext()
    //     0x6f6de0: bl              #0x927010  ; AllocateContextStub
    // 0x6f6de4: mov             x1, x0
    // 0x6f6de8: ldur            x0, [fp, #-0x10]
    // 0x6f6dec: stur            x1, [fp, #-0x20]
    // 0x6f6df0: StoreField: r1->field_b = r0
    //     0x6f6df0: stur            w0, [x1, #0xb]
    // 0x6f6df4: LoadField: r2 = r0->field_13
    //     0x6f6df4: ldur            w2, [x0, #0x13]
    // 0x6f6df8: DecompressPointer r2
    //     0x6f6df8: add             x2, x2, HEAP, lsl #32
    // 0x6f6dfc: stur            x2, [fp, #-0x18]
    // 0x6f6e00: LoadField: r3 = r0->field_f
    //     0x6f6e00: ldur            w3, [x0, #0xf]
    // 0x6f6e04: DecompressPointer r3
    //     0x6f6e04: add             x3, x3, HEAP, lsl #32
    // 0x6f6e08: LoadField: r4 = r3->field_27
    //     0x6f6e08: ldur            w4, [x3, #0x27]
    // 0x6f6e0c: DecompressPointer r4
    //     0x6f6e0c: add             x4, x4, HEAP, lsl #32
    // 0x6f6e10: cmp             w4, NULL
    // 0x6f6e14: b.ne            #0x6f6e48
    // 0x6f6e18: r0 = DateTime()
    //     0x6f6e18: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6f6e1c: stur            x0, [fp, #-0x28]
    // 0x6f6e20: r16 = 2
    //     0x6f6e20: mov             x16, #2
    // 0x6f6e24: r30 = 2
    //     0x6f6e24: mov             lr, #2
    // 0x6f6e28: stp             lr, x16, [SP]
    // 0x6f6e2c: mov             x1, x0
    // 0x6f6e30: r2 = 1990
    //     0x6f6e30: mov             x2, #0x7c6
    // 0x6f6e34: r4 = const [0, 0x4, 0x2, 0x4, null]
    //     0x6f6e34: add             x4, PP, #8, lsl #12  ; [pp+0x8808] List(5) [0, 0x4, 0x2, 0x4, Null]
    //     0x6f6e38: ldr             x4, [x4, #0x808]
    // 0x6f6e3c: r0 = DateTime()
    //     0x6f6e3c: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x6f6e40: ldur            x3, [fp, #-0x28]
    // 0x6f6e44: b               #0x6f6e4c
    // 0x6f6e48: mov             x3, x4
    // 0x6f6e4c: ldur            x2, [fp, #-0x20]
    // 0x6f6e50: stur            x3, [fp, #-0x28]
    // 0x6f6e54: r0 = DateTime()
    //     0x6f6e54: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6f6e58: mov             x1, x0
    // 0x6f6e5c: r2 = 1900
    //     0x6f6e5c: mov             x2, #0x76c
    // 0x6f6e60: stur            x0, [fp, #-0x30]
    // 0x6f6e64: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6f6e64: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6f6e68: r0 = DateTime()
    //     0x6f6e68: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x6f6e6c: r0 = DateTime()
    //     0x6f6e6c: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6f6e70: mov             x1, x0
    // 0x6f6e74: r0 = false
    //     0x6f6e74: add             x0, NULL, #0x30  ; false
    // 0x6f6e78: stur            x1, [fp, #-0x38]
    // 0x6f6e7c: StoreField: r1->field_7 = r0
    //     0x6f6e7c: stur            w0, [x1, #7]
    // 0x6f6e80: r0 = _getCurrentMicros()
    //     0x6f6e80: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x6f6e84: r1 = LoadInt32Instr(r0)
    //     0x6f6e84: sbfx            x1, x0, #1, #0x1f
    //     0x6f6e88: tbz             w0, #0, #0x6f6e90
    //     0x6f6e8c: ldur            x1, [x0, #7]
    // 0x6f6e90: ldur            x5, [fp, #-0x38]
    // 0x6f6e94: StoreField: r5->field_b = r1
    //     0x6f6e94: stur            x1, [x5, #0xb]
    // 0x6f6e98: r16 = Instance_Locale
    //     0x6f6e98: add             x16, PP, #0x15, lsl #12  ; [pp+0x151e8] Obj!Locale@a21421
    //     0x6f6e9c: ldr             x16, [x16, #0x1e8]
    // 0x6f6ea0: str             x16, [SP]
    // 0x6f6ea4: ldur            x1, [fp, #-0x18]
    // 0x6f6ea8: ldur            x2, [fp, #-0x30]
    // 0x6f6eac: ldur            x3, [fp, #-0x28]
    // 0x6f6eb0: r4 = const [0, 0x5, 0x1, 0x4, locale, 0x4, null]
    //     0x6f6eb0: add             x4, PP, #0x18, lsl #12  ; [pp+0x18890] List(7) [0, 0x5, 0x1, 0x4, "locale", 0x4, Null]
    //     0x6f6eb4: ldr             x4, [x4, #0x890]
    // 0x6f6eb8: r0 = showDatePicker()
    //     0x6f6eb8: bl              #0x6d2148  ; [package:flutter/src/material/date_picker.dart] ::showDatePicker
    // 0x6f6ebc: mov             x1, x0
    // 0x6f6ec0: stur            x1, [fp, #-0x18]
    // 0x6f6ec4: r0 = Await()
    //     0x6f6ec4: bl              #0x3dd188  ; AwaitStub
    // 0x6f6ec8: mov             x1, x0
    // 0x6f6ecc: ldur            x2, [fp, #-0x20]
    // 0x6f6ed0: StoreField: r2->field_f = r0
    //     0x6f6ed0: stur            w0, [x2, #0xf]
    //     0x6f6ed4: tbz             w0, #0, #0x6f6ef0
    //     0x6f6ed8: ldurb           w16, [x2, #-1]
    //     0x6f6edc: ldurb           w17, [x0, #-1]
    //     0x6f6ee0: and             x16, x17, x16, lsr #2
    //     0x6f6ee4: tst             x16, HEAP, lsr #32
    //     0x6f6ee8: b.eq            #0x6f6ef0
    //     0x6f6eec: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6f6ef0: cmp             w1, NULL
    // 0x6f6ef4: b.eq            #0x6f6f20
    // 0x6f6ef8: ldur            x0, [fp, #-0x10]
    // 0x6f6efc: LoadField: r3 = r0->field_f
    //     0x6f6efc: ldur            w3, [x0, #0xf]
    // 0x6f6f00: DecompressPointer r3
    //     0x6f6f00: add             x3, x3, HEAP, lsl #32
    // 0x6f6f04: stur            x3, [fp, #-0x18]
    // 0x6f6f08: r1 = Function '<anonymous closure>':.
    //     0x6f6f08: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c380] AnonymousClosure: (0x6f6f30), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::build (0x6f0bf8)
    //     0x6f6f0c: ldr             x1, [x1, #0x380]
    // 0x6f6f10: r0 = AllocateClosure()
    //     0x6f6f10: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f6f14: ldur            x1, [fp, #-0x18]
    // 0x6f6f18: mov             x2, x0
    // 0x6f6f1c: r0 = setState()
    //     0x6f6f1c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6f6f20: r0 = Null
    //     0x6f6f20: mov             x0, NULL
    // 0x6f6f24: r0 = ReturnAsyncNotFuture()
    //     0x6f6f24: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6f6f28: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f6f28: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f6f2c: b               #0x6f6dd4
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6f6f30, size: 0x50
    // 0x6f6f30: ldr             x1, [SP]
    // 0x6f6f34: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6f6f34: ldur            w2, [x1, #0x17]
    // 0x6f6f38: DecompressPointer r2
    //     0x6f6f38: add             x2, x2, HEAP, lsl #32
    // 0x6f6f3c: LoadField: r1 = r2->field_b
    //     0x6f6f3c: ldur            w1, [x2, #0xb]
    // 0x6f6f40: DecompressPointer r1
    //     0x6f6f40: add             x1, x1, HEAP, lsl #32
    // 0x6f6f44: LoadField: r3 = r1->field_f
    //     0x6f6f44: ldur            w3, [x1, #0xf]
    // 0x6f6f48: DecompressPointer r3
    //     0x6f6f48: add             x3, x3, HEAP, lsl #32
    // 0x6f6f4c: LoadField: r0 = r2->field_f
    //     0x6f6f4c: ldur            w0, [x2, #0xf]
    // 0x6f6f50: DecompressPointer r0
    //     0x6f6f50: add             x0, x0, HEAP, lsl #32
    // 0x6f6f54: StoreField: r3->field_27 = r0
    //     0x6f6f54: stur            w0, [x3, #0x27]
    //     0x6f6f58: ldurb           w16, [x3, #-1]
    //     0x6f6f5c: ldurb           w17, [x0, #-1]
    //     0x6f6f60: and             x16, x17, x16, lsr #2
    //     0x6f6f64: tst             x16, HEAP, lsr #32
    //     0x6f6f68: b.eq            #0x6f6f78
    //     0x6f6f6c: str             lr, [SP, #-8]!
    //     0x6f6f70: bl              #0x9267d0  ; WriteBarrierWrappersStub
    //     0x6f6f74: ldr             lr, [SP], #8
    // 0x6f6f78: r0 = Null
    //     0x6f6f78: mov             x0, NULL
    // 0x6f6f7c: ret
    //     0x6f6f7c: ret             
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6f6f80, size: 0x84
    // 0x6f6f80: EnterFrame
    //     0x6f6f80: stp             fp, lr, [SP, #-0x10]!
    //     0x6f6f84: mov             fp, SP
    // 0x6f6f88: AllocStack(0x10)
    //     0x6f6f88: sub             SP, SP, #0x10
    // 0x6f6f8c: SetupParameters([dynamic _ /* r0 */])
    //     0x6f6f8c: ldr             x0, [fp, #0x18]
    //     0x6f6f90: ldur            w1, [x0, #0x17]
    //     0x6f6f94: add             x1, x1, HEAP, lsl #32
    //     0x6f6f98: stur            x1, [fp, #-8]
    // 0x6f6f9c: CheckStackOverflow
    //     0x6f6f9c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f6fa0: cmp             SP, x16
    //     0x6f6fa4: b.ls            #0x6f6ffc
    // 0x6f6fa8: r1 = 1
    //     0x6f6fa8: mov             x1, #1
    // 0x6f6fac: r0 = AllocateContext()
    //     0x6f6fac: bl              #0x927010  ; AllocateContextStub
    // 0x6f6fb0: mov             x1, x0
    // 0x6f6fb4: ldur            x0, [fp, #-8]
    // 0x6f6fb8: StoreField: r1->field_b = r0
    //     0x6f6fb8: stur            w0, [x1, #0xb]
    // 0x6f6fbc: ldr             x2, [fp, #0x10]
    // 0x6f6fc0: StoreField: r1->field_f = r2
    //     0x6f6fc0: stur            w2, [x1, #0xf]
    // 0x6f6fc4: LoadField: r3 = r0->field_f
    //     0x6f6fc4: ldur            w3, [x0, #0xf]
    // 0x6f6fc8: DecompressPointer r3
    //     0x6f6fc8: add             x3, x3, HEAP, lsl #32
    // 0x6f6fcc: mov             x2, x1
    // 0x6f6fd0: stur            x3, [fp, #-0x10]
    // 0x6f6fd4: r1 = Function '<anonymous closure>':.
    //     0x6f6fd4: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c388] AnonymousClosure: (0x6f7004), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::build (0x6f0bf8)
    //     0x6f6fd8: ldr             x1, [x1, #0x388]
    // 0x6f6fdc: r0 = AllocateClosure()
    //     0x6f6fdc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f6fe0: ldur            x1, [fp, #-0x10]
    // 0x6f6fe4: mov             x2, x0
    // 0x6f6fe8: r0 = setState()
    //     0x6f6fe8: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6f6fec: r0 = Null
    //     0x6f6fec: mov             x0, NULL
    // 0x6f6ff0: LeaveFrame
    //     0x6f6ff0: mov             SP, fp
    //     0x6f6ff4: ldp             fp, lr, [SP], #0x10
    // 0x6f6ff8: ret
    //     0x6f6ff8: ret             
    // 0x6f6ffc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f6ffc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f7000: b               #0x6f6fa8
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6f7004, size: 0x54
    // 0x6f7004: ldr             x1, [SP]
    // 0x6f7008: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6f7008: ldur            w2, [x1, #0x17]
    // 0x6f700c: DecompressPointer r2
    //     0x6f700c: add             x2, x2, HEAP, lsl #32
    // 0x6f7010: LoadField: r1 = r2->field_b
    //     0x6f7010: ldur            w1, [x2, #0xb]
    // 0x6f7014: DecompressPointer r1
    //     0x6f7014: add             x1, x1, HEAP, lsl #32
    // 0x6f7018: LoadField: r3 = r1->field_f
    //     0x6f7018: ldur            w3, [x1, #0xf]
    // 0x6f701c: DecompressPointer r3
    //     0x6f701c: add             x3, x3, HEAP, lsl #32
    // 0x6f7020: LoadField: r1 = r2->field_f
    //     0x6f7020: ldur            w1, [x2, #0xf]
    // 0x6f7024: DecompressPointer r1
    //     0x6f7024: add             x1, x1, HEAP, lsl #32
    // 0x6f7028: mov             x0, x1
    // 0x6f702c: StoreField: r3->field_23 = r0
    //     0x6f702c: stur            w0, [x3, #0x23]
    //     0x6f7030: ldurb           w16, [x3, #-1]
    //     0x6f7034: ldurb           w17, [x0, #-1]
    //     0x6f7038: and             x16, x17, x16, lsr #2
    //     0x6f703c: tst             x16, HEAP, lsr #32
    //     0x6f7040: b.eq            #0x6f7050
    //     0x6f7044: str             lr, [SP, #-8]!
    //     0x6f7048: bl              #0x9267d0  ; WriteBarrierWrappersStub
    //     0x6f704c: ldr             lr, [SP], #8
    // 0x6f7050: mov             x0, x1
    // 0x6f7054: ret
    //     0x6f7054: ret             
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6f7058, size: 0x84
    // 0x6f7058: EnterFrame
    //     0x6f7058: stp             fp, lr, [SP, #-0x10]!
    //     0x6f705c: mov             fp, SP
    // 0x6f7060: AllocStack(0x10)
    //     0x6f7060: sub             SP, SP, #0x10
    // 0x6f7064: SetupParameters([dynamic _ /* r0 */])
    //     0x6f7064: ldr             x0, [fp, #0x18]
    //     0x6f7068: ldur            w1, [x0, #0x17]
    //     0x6f706c: add             x1, x1, HEAP, lsl #32
    //     0x6f7070: stur            x1, [fp, #-8]
    // 0x6f7074: CheckStackOverflow
    //     0x6f7074: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f7078: cmp             SP, x16
    //     0x6f707c: b.ls            #0x6f70d4
    // 0x6f7080: r1 = 1
    //     0x6f7080: mov             x1, #1
    // 0x6f7084: r0 = AllocateContext()
    //     0x6f7084: bl              #0x927010  ; AllocateContextStub
    // 0x6f7088: mov             x1, x0
    // 0x6f708c: ldur            x0, [fp, #-8]
    // 0x6f7090: StoreField: r1->field_b = r0
    //     0x6f7090: stur            w0, [x1, #0xb]
    // 0x6f7094: ldr             x2, [fp, #0x10]
    // 0x6f7098: StoreField: r1->field_f = r2
    //     0x6f7098: stur            w2, [x1, #0xf]
    // 0x6f709c: LoadField: r3 = r0->field_f
    //     0x6f709c: ldur            w3, [x0, #0xf]
    // 0x6f70a0: DecompressPointer r3
    //     0x6f70a0: add             x3, x3, HEAP, lsl #32
    // 0x6f70a4: mov             x2, x1
    // 0x6f70a8: stur            x3, [fp, #-0x10]
    // 0x6f70ac: r1 = Function '<anonymous closure>':.
    //     0x6f70ac: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c390] AnonymousClosure: (0x6f70dc), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::build (0x6f0bf8)
    //     0x6f70b0: ldr             x1, [x1, #0x390]
    // 0x6f70b4: r0 = AllocateClosure()
    //     0x6f70b4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f70b8: ldur            x1, [fp, #-0x10]
    // 0x6f70bc: mov             x2, x0
    // 0x6f70c0: r0 = setState()
    //     0x6f70c0: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6f70c4: r0 = Null
    //     0x6f70c4: mov             x0, NULL
    // 0x6f70c8: LeaveFrame
    //     0x6f70c8: mov             SP, fp
    //     0x6f70cc: ldp             fp, lr, [SP], #0x10
    // 0x6f70d0: ret
    //     0x6f70d0: ret             
    // 0x6f70d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f70d4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f70d8: b               #0x6f7080
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6f70dc, size: 0x58
    // 0x6f70dc: ldr             x1, [SP]
    // 0x6f70e0: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6f70e0: ldur            w2, [x1, #0x17]
    // 0x6f70e4: DecompressPointer r2
    //     0x6f70e4: add             x2, x2, HEAP, lsl #32
    // 0x6f70e8: LoadField: r1 = r2->field_b
    //     0x6f70e8: ldur            w1, [x2, #0xb]
    // 0x6f70ec: DecompressPointer r1
    //     0x6f70ec: add             x1, x1, HEAP, lsl #32
    // 0x6f70f0: LoadField: r3 = r1->field_f
    //     0x6f70f0: ldur            w3, [x1, #0xf]
    // 0x6f70f4: DecompressPointer r3
    //     0x6f70f4: add             x3, x3, HEAP, lsl #32
    // 0x6f70f8: LoadField: r0 = r2->field_f
    //     0x6f70f8: ldur            w0, [x2, #0xf]
    // 0x6f70fc: DecompressPointer r0
    //     0x6f70fc: add             x0, x0, HEAP, lsl #32
    // 0x6f7100: ArrayStore: r3[0] = r0  ; List_4
    //     0x6f7100: stur            w0, [x3, #0x17]
    //     0x6f7104: ldurb           w16, [x3, #-1]
    //     0x6f7108: ldurb           w17, [x0, #-1]
    //     0x6f710c: and             x16, x17, x16, lsr #2
    //     0x6f7110: tst             x16, HEAP, lsr #32
    //     0x6f7114: b.eq            #0x6f7124
    //     0x6f7118: str             lr, [SP, #-8]!
    //     0x6f711c: bl              #0x9267d0  ; WriteBarrierWrappersStub
    //     0x6f7120: ldr             lr, [SP], #8
    // 0x6f7124: StoreField: r3->field_1b = rNULL
    //     0x6f7124: stur            NULL, [x3, #0x1b]
    // 0x6f7128: StoreField: r3->field_1f = rNULL
    //     0x6f7128: stur            NULL, [x3, #0x1f]
    // 0x6f712c: r0 = Null
    //     0x6f712c: mov             x0, NULL
    // 0x6f7130: ret
    //     0x6f7130: ret             
  }
  [closure] void <anonymous closure>(dynamic, Set<String>) {
    // ** addr: 0x6f7134, size: 0x84
    // 0x6f7134: EnterFrame
    //     0x6f7134: stp             fp, lr, [SP, #-0x10]!
    //     0x6f7138: mov             fp, SP
    // 0x6f713c: AllocStack(0x10)
    //     0x6f713c: sub             SP, SP, #0x10
    // 0x6f7140: SetupParameters([dynamic _ /* r0 */])
    //     0x6f7140: ldr             x0, [fp, #0x18]
    //     0x6f7144: ldur            w1, [x0, #0x17]
    //     0x6f7148: add             x1, x1, HEAP, lsl #32
    //     0x6f714c: stur            x1, [fp, #-8]
    // 0x6f7150: CheckStackOverflow
    //     0x6f7150: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f7154: cmp             SP, x16
    //     0x6f7158: b.ls            #0x6f71b0
    // 0x6f715c: r1 = 1
    //     0x6f715c: mov             x1, #1
    // 0x6f7160: r0 = AllocateContext()
    //     0x6f7160: bl              #0x927010  ; AllocateContextStub
    // 0x6f7164: mov             x1, x0
    // 0x6f7168: ldur            x0, [fp, #-8]
    // 0x6f716c: StoreField: r1->field_b = r0
    //     0x6f716c: stur            w0, [x1, #0xb]
    // 0x6f7170: ldr             x2, [fp, #0x10]
    // 0x6f7174: StoreField: r1->field_f = r2
    //     0x6f7174: stur            w2, [x1, #0xf]
    // 0x6f7178: LoadField: r3 = r0->field_f
    //     0x6f7178: ldur            w3, [x0, #0xf]
    // 0x6f717c: DecompressPointer r3
    //     0x6f717c: add             x3, x3, HEAP, lsl #32
    // 0x6f7180: mov             x2, x1
    // 0x6f7184: stur            x3, [fp, #-0x10]
    // 0x6f7188: r1 = Function '<anonymous closure>':.
    //     0x6f7188: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c398] AnonymousClosure: (0x6f71b8), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::build (0x6f0bf8)
    //     0x6f718c: ldr             x1, [x1, #0x398]
    // 0x6f7190: r0 = AllocateClosure()
    //     0x6f7190: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f7194: ldur            x1, [fp, #-0x10]
    // 0x6f7198: mov             x2, x0
    // 0x6f719c: r0 = setState()
    //     0x6f719c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6f71a0: r0 = Null
    //     0x6f71a0: mov             x0, NULL
    // 0x6f71a4: LeaveFrame
    //     0x6f71a4: mov             SP, fp
    //     0x6f71a8: ldp             fp, lr, [SP], #0x10
    // 0x6f71ac: ret
    //     0x6f71ac: ret             
    // 0x6f71b0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f71b0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f71b4: b               #0x6f715c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6f71b8, size: 0xb4
    // 0x6f71b8: EnterFrame
    //     0x6f71b8: stp             fp, lr, [SP, #-0x10]!
    //     0x6f71bc: mov             fp, SP
    // 0x6f71c0: AllocStack(0x10)
    //     0x6f71c0: sub             SP, SP, #0x10
    // 0x6f71c4: SetupParameters([dynamic _ /* r0 */])
    //     0x6f71c4: ldr             x0, [fp, #0x10]
    //     0x6f71c8: ldur            w1, [x0, #0x17]
    //     0x6f71cc: add             x1, x1, HEAP, lsl #32
    // 0x6f71d0: CheckStackOverflow
    //     0x6f71d0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f71d4: cmp             SP, x16
    //     0x6f71d8: b.ls            #0x6f7264
    // 0x6f71dc: LoadField: r2 = r1->field_b
    //     0x6f71dc: ldur            w2, [x1, #0xb]
    // 0x6f71e0: DecompressPointer r2
    //     0x6f71e0: add             x2, x2, HEAP, lsl #32
    // 0x6f71e4: stur            x2, [fp, #-0x10]
    // 0x6f71e8: LoadField: r3 = r2->field_f
    //     0x6f71e8: ldur            w3, [x2, #0xf]
    // 0x6f71ec: DecompressPointer r3
    //     0x6f71ec: add             x3, x3, HEAP, lsl #32
    // 0x6f71f0: stur            x3, [fp, #-8]
    // 0x6f71f4: LoadField: r0 = r1->field_f
    //     0x6f71f4: ldur            w0, [x1, #0xf]
    // 0x6f71f8: DecompressPointer r0
    //     0x6f71f8: add             x0, x0, HEAP, lsl #32
    // 0x6f71fc: r1 = LoadClassIdInstr(r0)
    //     0x6f71fc: ldur            x1, [x0, #-1]
    //     0x6f7200: ubfx            x1, x1, #0xc, #0x14
    // 0x6f7204: mov             x16, x0
    // 0x6f7208: mov             x0, x1
    // 0x6f720c: mov             x1, x16
    // 0x6f7210: r0 = GDT[cid_x0 + 0xcc1d]()
    //     0x6f7210: mov             x17, #0xcc1d
    //     0x6f7214: add             lr, x0, x17
    //     0x6f7218: ldr             lr, [x21, lr, lsl #3]
    //     0x6f721c: blr             lr
    // 0x6f7220: ldur            x1, [fp, #-8]
    // 0x6f7224: StoreField: r1->field_13 = r0
    //     0x6f7224: stur            w0, [x1, #0x13]
    //     0x6f7228: tbz             w0, #0, #0x6f7244
    //     0x6f722c: ldurb           w16, [x1, #-1]
    //     0x6f7230: ldurb           w17, [x0, #-1]
    //     0x6f7234: and             x16, x17, x16, lsr #2
    //     0x6f7238: tst             x16, HEAP, lsr #32
    //     0x6f723c: b.eq            #0x6f7244
    //     0x6f7240: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x6f7244: ldur            x0, [fp, #-0x10]
    // 0x6f7248: LoadField: r1 = r0->field_f
    //     0x6f7248: ldur            w1, [x0, #0xf]
    // 0x6f724c: DecompressPointer r1
    //     0x6f724c: add             x1, x1, HEAP, lsl #32
    // 0x6f7250: r0 = _updateSelectedValues()
    //     0x6f7250: bl              #0x5e4b34  ; [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::_updateSelectedValues
    // 0x6f7254: r0 = Null
    //     0x6f7254: mov             x0, NULL
    // 0x6f7258: LeaveFrame
    //     0x6f7258: mov             SP, fp
    //     0x6f725c: ldp             fp, lr, [SP], #0x10
    // 0x6f7260: ret
    //     0x6f7260: ret             
    // 0x6f7264: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f7264: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f7268: b               #0x6f71dc
  }
  [closure] bool <anonymous closure>(dynamic, RoomModel) {
    // ** addr: 0x6f726c, size: 0x6c
    // 0x6f726c: EnterFrame
    //     0x6f726c: stp             fp, lr, [SP, #-0x10]!
    //     0x6f7270: mov             fp, SP
    // 0x6f7274: AllocStack(0x10)
    //     0x6f7274: sub             SP, SP, #0x10
    // 0x6f7278: SetupParameters([dynamic _ /* r0 */])
    //     0x6f7278: ldr             x0, [fp, #0x18]
    //     0x6f727c: ldur            w1, [x0, #0x17]
    //     0x6f7280: add             x1, x1, HEAP, lsl #32
    // 0x6f7284: CheckStackOverflow
    //     0x6f7284: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f7288: cmp             SP, x16
    //     0x6f728c: b.ls            #0x6f72d0
    // 0x6f7290: ldr             x0, [fp, #0x10]
    // 0x6f7294: LoadField: r2 = r0->field_7
    //     0x6f7294: ldur            w2, [x0, #7]
    // 0x6f7298: DecompressPointer r2
    //     0x6f7298: add             x2, x2, HEAP, lsl #32
    // 0x6f729c: LoadField: r0 = r1->field_f
    //     0x6f729c: ldur            w0, [x1, #0xf]
    // 0x6f72a0: DecompressPointer r0
    //     0x6f72a0: add             x0, x0, HEAP, lsl #32
    // 0x6f72a4: LoadField: r1 = r0->field_1f
    //     0x6f72a4: ldur            w1, [x0, #0x1f]
    // 0x6f72a8: DecompressPointer r1
    //     0x6f72a8: add             x1, x1, HEAP, lsl #32
    // 0x6f72ac: r0 = LoadClassIdInstr(r2)
    //     0x6f72ac: ldur            x0, [x2, #-1]
    //     0x6f72b0: ubfx            x0, x0, #0xc, #0x14
    // 0x6f72b4: stp             x1, x2, [SP]
    // 0x6f72b8: mov             lr, x0
    // 0x6f72bc: ldr             lr, [x21, lr, lsl #3]
    // 0x6f72c0: blr             lr
    // 0x6f72c4: LeaveFrame
    //     0x6f72c4: mov             SP, fp
    //     0x6f72c8: ldp             fp, lr, [SP], #0x10
    // 0x6f72cc: ret
    //     0x6f72cc: ret             
    // 0x6f72d0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f72d0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f72d4: b               #0x6f7290
  }
  [closure] bool <anonymous closure>(dynamic, HotelModel) {
    // ** addr: 0x6f72d8, size: 0x6c
    // 0x6f72d8: EnterFrame
    //     0x6f72d8: stp             fp, lr, [SP, #-0x10]!
    //     0x6f72dc: mov             fp, SP
    // 0x6f72e0: AllocStack(0x10)
    //     0x6f72e0: sub             SP, SP, #0x10
    // 0x6f72e4: SetupParameters([dynamic _ /* r0 */])
    //     0x6f72e4: ldr             x0, [fp, #0x18]
    //     0x6f72e8: ldur            w1, [x0, #0x17]
    //     0x6f72ec: add             x1, x1, HEAP, lsl #32
    // 0x6f72f0: CheckStackOverflow
    //     0x6f72f0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f72f4: cmp             SP, x16
    //     0x6f72f8: b.ls            #0x6f733c
    // 0x6f72fc: ldr             x0, [fp, #0x10]
    // 0x6f7300: LoadField: r2 = r0->field_7
    //     0x6f7300: ldur            w2, [x0, #7]
    // 0x6f7304: DecompressPointer r2
    //     0x6f7304: add             x2, x2, HEAP, lsl #32
    // 0x6f7308: LoadField: r0 = r1->field_f
    //     0x6f7308: ldur            w0, [x1, #0xf]
    // 0x6f730c: DecompressPointer r0
    //     0x6f730c: add             x0, x0, HEAP, lsl #32
    // 0x6f7310: LoadField: r1 = r0->field_1b
    //     0x6f7310: ldur            w1, [x0, #0x1b]
    // 0x6f7314: DecompressPointer r1
    //     0x6f7314: add             x1, x1, HEAP, lsl #32
    // 0x6f7318: r0 = LoadClassIdInstr(r2)
    //     0x6f7318: ldur            x0, [x2, #-1]
    //     0x6f731c: ubfx            x0, x0, #0xc, #0x14
    // 0x6f7320: stp             x1, x2, [SP]
    // 0x6f7324: mov             lr, x0
    // 0x6f7328: ldr             lr, [x21, lr, lsl #3]
    // 0x6f732c: blr             lr
    // 0x6f7330: LeaveFrame
    //     0x6f7330: mov             SP, fp
    //     0x6f7334: ldp             fp, lr, [SP], #0x10
    // 0x6f7338: ret
    //     0x6f7338: ret             
    // 0x6f733c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f733c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f7340: b               #0x6f72fc
  }
  [closure] bool <anonymous closure>(dynamic, TripModel) {
    // ** addr: 0x6f7344, size: 0x6c
    // 0x6f7344: EnterFrame
    //     0x6f7344: stp             fp, lr, [SP, #-0x10]!
    //     0x6f7348: mov             fp, SP
    // 0x6f734c: AllocStack(0x10)
    //     0x6f734c: sub             SP, SP, #0x10
    // 0x6f7350: SetupParameters([dynamic _ /* r0 */])
    //     0x6f7350: ldr             x0, [fp, #0x18]
    //     0x6f7354: ldur            w1, [x0, #0x17]
    //     0x6f7358: add             x1, x1, HEAP, lsl #32
    // 0x6f735c: CheckStackOverflow
    //     0x6f735c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f7360: cmp             SP, x16
    //     0x6f7364: b.ls            #0x6f73a8
    // 0x6f7368: ldr             x0, [fp, #0x10]
    // 0x6f736c: LoadField: r2 = r0->field_7
    //     0x6f736c: ldur            w2, [x0, #7]
    // 0x6f7370: DecompressPointer r2
    //     0x6f7370: add             x2, x2, HEAP, lsl #32
    // 0x6f7374: LoadField: r0 = r1->field_f
    //     0x6f7374: ldur            w0, [x1, #0xf]
    // 0x6f7378: DecompressPointer r0
    //     0x6f7378: add             x0, x0, HEAP, lsl #32
    // 0x6f737c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6f737c: ldur            w1, [x0, #0x17]
    // 0x6f7380: DecompressPointer r1
    //     0x6f7380: add             x1, x1, HEAP, lsl #32
    // 0x6f7384: r0 = LoadClassIdInstr(r2)
    //     0x6f7384: ldur            x0, [x2, #-1]
    //     0x6f7388: ubfx            x0, x0, #0xc, #0x14
    // 0x6f738c: stp             x1, x2, [SP]
    // 0x6f7390: mov             lr, x0
    // 0x6f7394: ldr             lr, [x21, lr, lsl #3]
    // 0x6f7398: blr             lr
    // 0x6f739c: LeaveFrame
    //     0x6f739c: mov             SP, fp
    //     0x6f73a0: ldp             fp, lr, [SP], #0x10
    // 0x6f73a4: ret
    //     0x6f73a4: ret             
    // 0x6f73a8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f73a8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f73ac: b               #0x6f7368
  }
  [closure] bool <anonymous closure>(dynamic, HotelModel) {
    // ** addr: 0x6f73b0, size: 0x6c
    // 0x6f73b0: EnterFrame
    //     0x6f73b0: stp             fp, lr, [SP, #-0x10]!
    //     0x6f73b4: mov             fp, SP
    // 0x6f73b8: AllocStack(0x10)
    //     0x6f73b8: sub             SP, SP, #0x10
    // 0x6f73bc: SetupParameters([dynamic _ /* r0 */])
    //     0x6f73bc: ldr             x0, [fp, #0x18]
    //     0x6f73c0: ldur            w1, [x0, #0x17]
    //     0x6f73c4: add             x1, x1, HEAP, lsl #32
    // 0x6f73c8: CheckStackOverflow
    //     0x6f73c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f73cc: cmp             SP, x16
    //     0x6f73d0: b.ls            #0x6f7414
    // 0x6f73d4: ldr             x0, [fp, #0x10]
    // 0x6f73d8: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x6f73d8: ldur            w2, [x0, #0x17]
    // 0x6f73dc: DecompressPointer r2
    //     0x6f73dc: add             x2, x2, HEAP, lsl #32
    // 0x6f73e0: LoadField: r0 = r1->field_f
    //     0x6f73e0: ldur            w0, [x1, #0xf]
    // 0x6f73e4: DecompressPointer r0
    //     0x6f73e4: add             x0, x0, HEAP, lsl #32
    // 0x6f73e8: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6f73e8: ldur            w1, [x0, #0x17]
    // 0x6f73ec: DecompressPointer r1
    //     0x6f73ec: add             x1, x1, HEAP, lsl #32
    // 0x6f73f0: r0 = LoadClassIdInstr(r2)
    //     0x6f73f0: ldur            x0, [x2, #-1]
    //     0x6f73f4: ubfx            x0, x0, #0xc, #0x14
    // 0x6f73f8: stp             x1, x2, [SP]
    // 0x6f73fc: mov             lr, x0
    // 0x6f7400: ldr             lr, [x21, lr, lsl #3]
    // 0x6f7404: blr             lr
    // 0x6f7408: LeaveFrame
    //     0x6f7408: mov             SP, fp
    //     0x6f740c: ldp             fp, lr, [SP], #0x10
    // 0x6f7410: ret
    //     0x6f7410: ret             
    // 0x6f7414: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f7414: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f7418: b               #0x6f73d4
  }
  [closure] bool <anonymous closure>(dynamic, TripModel) {
    // ** addr: 0x6f741c, size: 0x6c
    // 0x6f741c: EnterFrame
    //     0x6f741c: stp             fp, lr, [SP, #-0x10]!
    //     0x6f7420: mov             fp, SP
    // 0x6f7424: AllocStack(0x10)
    //     0x6f7424: sub             SP, SP, #0x10
    // 0x6f7428: SetupParameters([dynamic _ /* r0 */])
    //     0x6f7428: ldr             x0, [fp, #0x18]
    //     0x6f742c: ldur            w1, [x0, #0x17]
    //     0x6f7430: add             x1, x1, HEAP, lsl #32
    // 0x6f7434: CheckStackOverflow
    //     0x6f7434: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f7438: cmp             SP, x16
    //     0x6f743c: b.ls            #0x6f7480
    // 0x6f7440: ldr             x0, [fp, #0x10]
    // 0x6f7444: LoadField: r2 = r0->field_f
    //     0x6f7444: ldur            w2, [x0, #0xf]
    // 0x6f7448: DecompressPointer r2
    //     0x6f7448: add             x2, x2, HEAP, lsl #32
    // 0x6f744c: LoadField: r0 = r1->field_f
    //     0x6f744c: ldur            w0, [x1, #0xf]
    // 0x6f7450: DecompressPointer r0
    //     0x6f7450: add             x0, x0, HEAP, lsl #32
    // 0x6f7454: LoadField: r1 = r0->field_13
    //     0x6f7454: ldur            w1, [x0, #0x13]
    // 0x6f7458: DecompressPointer r1
    //     0x6f7458: add             x1, x1, HEAP, lsl #32
    // 0x6f745c: r0 = LoadClassIdInstr(r2)
    //     0x6f745c: ldur            x0, [x2, #-1]
    //     0x6f7460: ubfx            x0, x0, #0xc, #0x14
    // 0x6f7464: stp             x1, x2, [SP]
    // 0x6f7468: mov             lr, x0
    // 0x6f746c: ldr             lr, [x21, lr, lsl #3]
    // 0x6f7470: blr             lr
    // 0x6f7474: LeaveFrame
    //     0x6f7474: mov             SP, fp
    //     0x6f7478: ldp             fp, lr, [SP], #0x10
    // 0x6f747c: ret
    //     0x6f747c: ret             
    // 0x6f7480: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f7480: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f7484: b               #0x6f7440
  }
  dynamic dispose(dynamic) {
    // ** addr: 0x74c428, size: 0x24
    // 0x74c428: EnterFrame
    //     0x74c428: stp             fp, lr, [SP, #-0x10]!
    //     0x74c42c: mov             fp, SP
    // 0x74c430: ldr             x2, [fp, #0x10]
    // 0x74c434: r1 = Function 'dispose':.
    //     0x74c434: add             x1, PP, #0x27, lsl #12  ; [pp+0x272a0] AnonymousClosure: (0x74c44c), in [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::dispose (0x753c48)
    //     0x74c438: ldr             x1, [x1, #0x2a0]
    // 0x74c43c: r0 = AllocateClosure()
    //     0x74c43c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74c440: LeaveFrame
    //     0x74c440: mov             SP, fp
    //     0x74c444: ldp             fp, lr, [SP], #0x10
    // 0x74c448: ret
    //     0x74c448: ret             
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x74c44c, size: 0x38
    // 0x74c44c: EnterFrame
    //     0x74c44c: stp             fp, lr, [SP, #-0x10]!
    //     0x74c450: mov             fp, SP
    // 0x74c454: ldr             x0, [fp, #0x10]
    // 0x74c458: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74c458: ldur            w1, [x0, #0x17]
    // 0x74c45c: DecompressPointer r1
    //     0x74c45c: add             x1, x1, HEAP, lsl #32
    // 0x74c460: CheckStackOverflow
    //     0x74c460: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74c464: cmp             SP, x16
    //     0x74c468: b.ls            #0x74c47c
    // 0x74c46c: r0 = dispose()
    //     0x74c46c: bl              #0x753c48  ; [package:umrem_demo/features/admin/widgets/kisiler/user_assignment_card.dart] UserAssignmentCardState::dispose
    // 0x74c470: LeaveFrame
    //     0x74c470: mov             SP, fp
    //     0x74c474: ldp             fp, lr, [SP], #0x10
    // 0x74c478: ret
    //     0x74c478: ret             
    // 0x74c47c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74c47c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74c480: b               #0x74c46c
  }
  _ dispose(/* No info */) {
    // ** addr: 0x753c48, size: 0xac
    // 0x753c48: EnterFrame
    //     0x753c48: stp             fp, lr, [SP, #-0x10]!
    //     0x753c4c: mov             fp, SP
    // 0x753c50: AllocStack(0x8)
    //     0x753c50: sub             SP, SP, #8
    // 0x753c54: SetupParameters(UserAssignmentCardState this /* r1 => r0, fp-0x8 */)
    //     0x753c54: mov             x0, x1
    //     0x753c58: stur            x1, [fp, #-8]
    // 0x753c5c: CheckStackOverflow
    //     0x753c5c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x753c60: cmp             SP, x16
    //     0x753c64: b.ls            #0x753cc8
    // 0x753c68: LoadField: r1 = r0->field_2b
    //     0x753c68: ldur            w1, [x0, #0x2b]
    // 0x753c6c: DecompressPointer r1
    //     0x753c6c: add             x1, x1, HEAP, lsl #32
    // 0x753c70: r16 = Sentinel
    //     0x753c70: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x753c74: cmp             w1, w16
    // 0x753c78: b.eq            #0x753cd0
    // 0x753c7c: r0 = dispose()
    //     0x753c7c: bl              #0x758314  ; [package:flutter/src/widgets/shortcuts.dart] _ShortcutManager&Object&Diagnosticable&ChangeNotifier::dispose
    // 0x753c80: ldur            x0, [fp, #-8]
    // 0x753c84: LoadField: r1 = r0->field_2f
    //     0x753c84: ldur            w1, [x0, #0x2f]
    // 0x753c88: DecompressPointer r1
    //     0x753c88: add             x1, x1, HEAP, lsl #32
    // 0x753c8c: r16 = Sentinel
    //     0x753c8c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x753c90: cmp             w1, w16
    // 0x753c94: b.eq            #0x753cdc
    // 0x753c98: r0 = dispose()
    //     0x753c98: bl              #0x758314  ; [package:flutter/src/widgets/shortcuts.dart] _ShortcutManager&Object&Diagnosticable&ChangeNotifier::dispose
    // 0x753c9c: ldur            x0, [fp, #-8]
    // 0x753ca0: LoadField: r1 = r0->field_33
    //     0x753ca0: ldur            w1, [x0, #0x33]
    // 0x753ca4: DecompressPointer r1
    //     0x753ca4: add             x1, x1, HEAP, lsl #32
    // 0x753ca8: r16 = Sentinel
    //     0x753ca8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x753cac: cmp             w1, w16
    // 0x753cb0: b.eq            #0x753ce8
    // 0x753cb4: r0 = dispose()
    //     0x753cb4: bl              #0x758314  ; [package:flutter/src/widgets/shortcuts.dart] _ShortcutManager&Object&Diagnosticable&ChangeNotifier::dispose
    // 0x753cb8: r0 = Null
    //     0x753cb8: mov             x0, NULL
    // 0x753cbc: LeaveFrame
    //     0x753cbc: mov             SP, fp
    //     0x753cc0: ldp             fp, lr, [SP], #0x10
    // 0x753cc4: ret
    //     0x753cc4: ret             
    // 0x753cc8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x753cc8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x753ccc: b               #0x753c68
    // 0x753cd0: r9 = nameCtrl
    //     0x753cd0: add             x9, PP, #0x1c, lsl #12  ; [pp+0x1c290] Field <UserAssignmentCardState.nameCtrl>: late (offset: 0x2c)
    //     0x753cd4: ldr             x9, [x9, #0x290]
    // 0x753cd8: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x753cd8: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x753cdc: r9 = phoneCtrl
    //     0x753cdc: add             x9, PP, #0x1c, lsl #12  ; [pp+0x1c298] Field <UserAssignmentCardState.phoneCtrl>: late (offset: 0x30)
    //     0x753ce0: ldr             x9, [x9, #0x298]
    // 0x753ce4: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x753ce4: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x753ce8: r9 = locationCtrl
    //     0x753ce8: add             x9, PP, #0x1c, lsl #12  ; [pp+0x1c2a0] Field <UserAssignmentCardState.locationCtrl>: late (offset: 0x34)
    //     0x753cec: ldr             x9, [x9, #0x2a0]
    // 0x753cf0: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x753cf0: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
}

// class id: 3208, size: 0x24, field offset: 0xc
//   const constructor, 
class UserAssignmentCard extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bd7cc, size: 0x40
    // 0x7bd7cc: EnterFrame
    //     0x7bd7cc: stp             fp, lr, [SP, #-0x10]!
    //     0x7bd7d0: mov             fp, SP
    // 0x7bd7d4: mov             x0, x1
    // 0x7bd7d8: r1 = <UserAssignmentCard>
    //     0x7bd7d8: add             x1, PP, #0x13, lsl #12  ; [pp+0x13980] TypeArguments: <UserAssignmentCard>
    //     0x7bd7dc: ldr             x1, [x1, #0x980]
    // 0x7bd7e0: r0 = UserAssignmentCardState()
    //     0x7bd7e0: bl              #0x7bd80c  ; AllocateUserAssignmentCardStateStub -> UserAssignmentCardState (size=0x38)
    // 0x7bd7e4: r1 = "Mekke"
    //     0x7bd7e4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x7bd7e8: ldr             x1, [x1, #0xdf0]
    // 0x7bd7ec: StoreField: r0->field_13 = r1
    //     0x7bd7ec: stur            w1, [x0, #0x13]
    // 0x7bd7f0: r1 = Sentinel
    //     0x7bd7f0: ldr             x1, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x7bd7f4: StoreField: r0->field_2b = r1
    //     0x7bd7f4: stur            w1, [x0, #0x2b]
    // 0x7bd7f8: StoreField: r0->field_2f = r1
    //     0x7bd7f8: stur            w1, [x0, #0x2f]
    // 0x7bd7fc: StoreField: r0->field_33 = r1
    //     0x7bd7fc: stur            w1, [x0, #0x33]
    // 0x7bd800: LeaveFrame
    //     0x7bd800: mov             SP, fp
    //     0x7bd804: ldp             fp, lr, [SP], #0x10
    // 0x7bd808: ret
    //     0x7bd808: ret             
  }
}

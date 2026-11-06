// lib: , url: package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart

// class id: 1049610, size: 0x8
class :: {
}

// class id: 2454, size: 0x14, field offset: 0x14
class UsersTabState extends State<dynamic> {

  [closure] bool <anonymous closure>(dynamic, RoomModel) {
    // ** addr: 0x6179f0, size: 0x68
    // 0x6179f0: EnterFrame
    //     0x6179f0: stp             fp, lr, [SP, #-0x10]!
    //     0x6179f4: mov             fp, SP
    // 0x6179f8: AllocStack(0x10)
    //     0x6179f8: sub             SP, SP, #0x10
    // 0x6179fc: SetupParameters([dynamic _ /* r0 */])
    //     0x6179fc: ldr             x0, [fp, #0x18]
    //     0x617a00: ldur            w1, [x0, #0x17]
    //     0x617a04: add             x1, x1, HEAP, lsl #32
    // 0x617a08: CheckStackOverflow
    //     0x617a08: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x617a0c: cmp             SP, x16
    //     0x617a10: b.ls            #0x617a50
    // 0x617a14: ldr             x0, [fp, #0x10]
    // 0x617a18: LoadField: r2 = r0->field_7
    //     0x617a18: ldur            w2, [x0, #7]
    // 0x617a1c: DecompressPointer r2
    //     0x617a1c: add             x2, x2, HEAP, lsl #32
    // 0x617a20: LoadField: r0 = r1->field_f
    //     0x617a20: ldur            w0, [x1, #0xf]
    // 0x617a24: DecompressPointer r0
    //     0x617a24: add             x0, x0, HEAP, lsl #32
    // 0x617a28: r1 = LoadClassIdInstr(r2)
    //     0x617a28: ldur            x1, [x2, #-1]
    //     0x617a2c: ubfx            x1, x1, #0xc, #0x14
    // 0x617a30: stp             x0, x2, [SP]
    // 0x617a34: mov             x0, x1
    // 0x617a38: mov             lr, x0
    // 0x617a3c: ldr             lr, [x21, lr, lsl #3]
    // 0x617a40: blr             lr
    // 0x617a44: LeaveFrame
    //     0x617a44: mov             SP, fp
    //     0x617a48: ldp             fp, lr, [SP], #0x10
    // 0x617a4c: ret
    //     0x617a4c: ret             
    // 0x617a50: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x617a50: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x617a54: b               #0x617a14
  }
  _ _getRoomNumber(/* No info */) {
    // ** addr: 0x617a58, size: 0x104
    // 0x617a58: EnterFrame
    //     0x617a58: stp             fp, lr, [SP, #-0x10]!
    //     0x617a5c: mov             fp, SP
    // 0x617a60: AllocStack(0x20)
    //     0x617a60: sub             SP, SP, #0x20
    // 0x617a64: SetupParameters(UsersTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x617a64: stur            x1, [fp, #-8]
    //     0x617a68: stur            x2, [fp, #-0x10]
    // 0x617a6c: CheckStackOverflow
    //     0x617a6c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x617a70: cmp             SP, x16
    //     0x617a74: b.ls            #0x617b50
    // 0x617a78: r1 = 1
    //     0x617a78: mov             x1, #1
    // 0x617a7c: r0 = AllocateContext()
    //     0x617a7c: bl              #0x927010  ; AllocateContextStub
    // 0x617a80: mov             x1, x0
    // 0x617a84: ldur            x0, [fp, #-0x10]
    // 0x617a88: StoreField: r1->field_f = r0
    //     0x617a88: stur            w0, [x1, #0xf]
    // 0x617a8c: cmp             w0, NULL
    // 0x617a90: b.eq            #0x617a9c
    // 0x617a94: LoadField: r2 = r0->field_7
    //     0x617a94: ldur            w2, [x0, #7]
    // 0x617a98: cbnz            w2, #0x617aac
    // 0x617a9c: r0 = "-"
    //     0x617a9c: ldr             x0, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x617aa0: LeaveFrame
    //     0x617aa0: mov             SP, fp
    //     0x617aa4: ldp             fp, lr, [SP], #0x10
    // 0x617aa8: ret
    //     0x617aa8: ret             
    // 0x617aac: ldur            x0, [fp, #-8]
    // 0x617ab0: LoadField: r2 = r0->field_b
    //     0x617ab0: ldur            w2, [x0, #0xb]
    // 0x617ab4: DecompressPointer r2
    //     0x617ab4: add             x2, x2, HEAP, lsl #32
    // 0x617ab8: cmp             w2, NULL
    // 0x617abc: b.eq            #0x617b58
    // 0x617ac0: ArrayLoad: r0 = r2[0]  ; List_4
    //     0x617ac0: ldur            w0, [x2, #0x17]
    // 0x617ac4: DecompressPointer r0
    //     0x617ac4: add             x0, x0, HEAP, lsl #32
    // 0x617ac8: mov             x2, x1
    // 0x617acc: stur            x0, [fp, #-8]
    // 0x617ad0: r1 = Function '<anonymous closure>':.
    //     0x617ad0: add             x1, PP, #0x19, lsl #12  ; [pp+0x19670] AnonymousClosure: (0x6179f0), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_getRoomNumber (0x617a58)
    //     0x617ad4: ldr             x1, [x1, #0x670]
    // 0x617ad8: r0 = AllocateClosure()
    //     0x617ad8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x617adc: ldur            x1, [fp, #-8]
    // 0x617ae0: r2 = LoadClassIdInstr(r1)
    //     0x617ae0: ldur            x2, [x1, #-1]
    //     0x617ae4: ubfx            x2, x2, #0xc, #0x14
    // 0x617ae8: mov             x16, x0
    // 0x617aec: mov             x0, x2
    // 0x617af0: mov             x2, x16
    // 0x617af4: r0 = GDT[cid_x0 + 0xd348]()
    //     0x617af4: mov             x17, #0xd348
    //     0x617af8: add             lr, x0, x17
    //     0x617afc: ldr             lr, [x21, lr, lsl #3]
    //     0x617b00: blr             lr
    // 0x617b04: r16 = <RoomModel>
    //     0x617b04: add             x16, PP, #0x12, lsl #12  ; [pp+0x126c8] TypeArguments: <RoomModel>
    //     0x617b08: ldr             x16, [x16, #0x6c8]
    // 0x617b0c: stp             x0, x16, [SP]
    // 0x617b10: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x617b10: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x617b14: r0 = IterableExtensions.firstOrNull()
    //     0x617b14: bl              #0x617ba4  ; [dart:collection] ::IterableExtensions.firstOrNull
    // 0x617b18: cmp             w0, NULL
    // 0x617b1c: b.ne            #0x617b28
    // 0x617b20: r1 = Null
    //     0x617b20: mov             x1, NULL
    // 0x617b24: b               #0x617b30
    // 0x617b28: LoadField: r1 = r0->field_f
    //     0x617b28: ldur            w1, [x0, #0xf]
    // 0x617b2c: DecompressPointer r1
    //     0x617b2c: add             x1, x1, HEAP, lsl #32
    // 0x617b30: cmp             w1, NULL
    // 0x617b34: b.ne            #0x617b40
    // 0x617b38: r0 = "-"
    //     0x617b38: ldr             x0, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x617b3c: b               #0x617b44
    // 0x617b40: mov             x0, x1
    // 0x617b44: LeaveFrame
    //     0x617b44: mov             SP, fp
    //     0x617b48: ldp             fp, lr, [SP], #0x10
    // 0x617b4c: ret
    //     0x617b4c: ret             
    // 0x617b50: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x617b50: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x617b54: b               #0x617a78
    // 0x617b58: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x617b58: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ showUserDialog(/* No info */) {
    // ** addr: 0x73cfd4, size: 0x478
    // 0x73cfd4: EnterFrame
    //     0x73cfd4: stp             fp, lr, [SP, #-0x10]!
    //     0x73cfd8: mov             fp, SP
    // 0x73cfdc: AllocStack(0x38)
    //     0x73cfdc: sub             SP, SP, #0x38
    // 0x73cfe0: SetupParameters(UsersTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x73cfe0: stur            x1, [fp, #-8]
    //     0x73cfe4: stur            x2, [fp, #-0x10]
    //     0x73cfe8: stur            x3, [fp, #-0x18]
    // 0x73cfec: CheckStackOverflow
    //     0x73cfec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73cff0: cmp             SP, x16
    //     0x73cff4: b.ls            #0x73d444
    // 0x73cff8: r1 = 18
    //     0x73cff8: mov             x1, #0x12
    // 0x73cffc: r0 = AllocateContext()
    //     0x73cffc: bl              #0x927010  ; AllocateContextStub
    // 0x73d000: mov             x2, x0
    // 0x73d004: ldur            x0, [fp, #-8]
    // 0x73d008: stur            x2, [fp, #-0x20]
    // 0x73d00c: StoreField: r2->field_f = r0
    //     0x73d00c: stur            w0, [x2, #0xf]
    // 0x73d010: ldur            x0, [fp, #-0x18]
    // 0x73d014: StoreField: r2->field_13 = r0
    //     0x73d014: stur            w0, [x2, #0x13]
    // 0x73d018: cmp             w0, NULL
    // 0x73d01c: r16 = true
    //     0x73d01c: add             x16, NULL, #0x20  ; true
    // 0x73d020: r17 = false
    //     0x73d020: add             x17, NULL, #0x30  ; false
    // 0x73d024: csel            x1, x16, x17, ne
    // 0x73d028: ArrayStore: r2[0] = r1  ; List_4
    //     0x73d028: stur            w1, [x2, #0x17]
    // 0x73d02c: cmp             w0, NULL
    // 0x73d030: b.ne            #0x73d03c
    // 0x73d034: r0 = Null
    //     0x73d034: mov             x0, NULL
    // 0x73d038: b               #0x73d048
    // 0x73d03c: LoadField: r1 = r0->field_b
    //     0x73d03c: ldur            w1, [x0, #0xb]
    // 0x73d040: DecompressPointer r1
    //     0x73d040: add             x1, x1, HEAP, lsl #32
    // 0x73d044: mov             x0, x1
    // 0x73d048: cmp             w0, NULL
    // 0x73d04c: b.ne            #0x73d054
    // 0x73d050: r0 = ""
    //     0x73d050: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x73d054: stur            x0, [fp, #-8]
    // 0x73d058: r1 = <TextEditingValue>
    //     0x73d058: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x73d05c: r0 = TextEditingController()
    //     0x73d05c: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x73d060: stur            x0, [fp, #-0x18]
    // 0x73d064: ldur            x16, [fp, #-8]
    // 0x73d068: str             x16, [SP]
    // 0x73d06c: mov             x1, x0
    // 0x73d070: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x73d070: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x73d074: ldr             x4, [x4, #0xa20]
    // 0x73d078: r0 = TextEditingController()
    //     0x73d078: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x73d07c: ldur            x0, [fp, #-0x18]
    // 0x73d080: ldur            x2, [fp, #-0x20]
    // 0x73d084: StoreField: r2->field_1b = r0
    //     0x73d084: stur            w0, [x2, #0x1b]
    //     0x73d088: ldurb           w16, [x2, #-1]
    //     0x73d08c: ldurb           w17, [x0, #-1]
    //     0x73d090: and             x16, x17, x16, lsr #2
    //     0x73d094: tst             x16, HEAP, lsr #32
    //     0x73d098: b.eq            #0x73d0a0
    //     0x73d09c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73d0a0: LoadField: r0 = r2->field_13
    //     0x73d0a0: ldur            w0, [x2, #0x13]
    // 0x73d0a4: DecompressPointer r0
    //     0x73d0a4: add             x0, x0, HEAP, lsl #32
    // 0x73d0a8: cmp             w0, NULL
    // 0x73d0ac: b.ne            #0x73d0b8
    // 0x73d0b0: r0 = Null
    //     0x73d0b0: mov             x0, NULL
    // 0x73d0b4: b               #0x73d0c4
    // 0x73d0b8: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x73d0b8: ldur            w1, [x0, #0x17]
    // 0x73d0bc: DecompressPointer r1
    //     0x73d0bc: add             x1, x1, HEAP, lsl #32
    // 0x73d0c0: mov             x0, x1
    // 0x73d0c4: cmp             w0, NULL
    // 0x73d0c8: b.ne            #0x73d0d0
    // 0x73d0cc: r0 = ""
    //     0x73d0cc: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x73d0d0: stur            x0, [fp, #-8]
    // 0x73d0d4: r1 = <TextEditingValue>
    //     0x73d0d4: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x73d0d8: r0 = TextEditingController()
    //     0x73d0d8: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x73d0dc: stur            x0, [fp, #-0x18]
    // 0x73d0e0: ldur            x16, [fp, #-8]
    // 0x73d0e4: str             x16, [SP]
    // 0x73d0e8: mov             x1, x0
    // 0x73d0ec: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x73d0ec: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x73d0f0: ldr             x4, [x4, #0xa20]
    // 0x73d0f4: r0 = TextEditingController()
    //     0x73d0f4: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x73d0f8: ldur            x0, [fp, #-0x18]
    // 0x73d0fc: ldur            x2, [fp, #-0x20]
    // 0x73d100: StoreField: r2->field_1f = r0
    //     0x73d100: stur            w0, [x2, #0x1f]
    //     0x73d104: ldurb           w16, [x2, #-1]
    //     0x73d108: ldurb           w17, [x0, #-1]
    //     0x73d10c: and             x16, x17, x16, lsr #2
    //     0x73d110: tst             x16, HEAP, lsr #32
    //     0x73d114: b.eq            #0x73d11c
    //     0x73d118: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73d11c: LoadField: r0 = r2->field_13
    //     0x73d11c: ldur            w0, [x2, #0x13]
    // 0x73d120: DecompressPointer r0
    //     0x73d120: add             x0, x0, HEAP, lsl #32
    // 0x73d124: cmp             w0, NULL
    // 0x73d128: b.ne            #0x73d134
    // 0x73d12c: r0 = Null
    //     0x73d12c: mov             x0, NULL
    // 0x73d130: b               #0x73d140
    // 0x73d134: LoadField: r1 = r0->field_13
    //     0x73d134: ldur            w1, [x0, #0x13]
    // 0x73d138: DecompressPointer r1
    //     0x73d138: add             x1, x1, HEAP, lsl #32
    // 0x73d13c: mov             x0, x1
    // 0x73d140: cmp             w0, NULL
    // 0x73d144: b.ne            #0x73d14c
    // 0x73d148: r0 = ""
    //     0x73d148: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x73d14c: stur            x0, [fp, #-8]
    // 0x73d150: r1 = <TextEditingValue>
    //     0x73d150: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x73d154: r0 = TextEditingController()
    //     0x73d154: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x73d158: stur            x0, [fp, #-0x18]
    // 0x73d15c: ldur            x16, [fp, #-8]
    // 0x73d160: str             x16, [SP]
    // 0x73d164: mov             x1, x0
    // 0x73d168: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x73d168: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x73d16c: ldr             x4, [x4, #0xa20]
    // 0x73d170: r0 = TextEditingController()
    //     0x73d170: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x73d174: ldur            x0, [fp, #-0x18]
    // 0x73d178: ldur            x2, [fp, #-0x20]
    // 0x73d17c: StoreField: r2->field_23 = r0
    //     0x73d17c: stur            w0, [x2, #0x23]
    //     0x73d180: ldurb           w16, [x2, #-1]
    //     0x73d184: ldurb           w17, [x0, #-1]
    //     0x73d188: and             x16, x17, x16, lsr #2
    //     0x73d18c: tst             x16, HEAP, lsr #32
    //     0x73d190: b.eq            #0x73d198
    //     0x73d194: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73d198: LoadField: r0 = r2->field_13
    //     0x73d198: ldur            w0, [x2, #0x13]
    // 0x73d19c: DecompressPointer r0
    //     0x73d19c: add             x0, x0, HEAP, lsl #32
    // 0x73d1a0: cmp             w0, NULL
    // 0x73d1a4: b.ne            #0x73d1b0
    // 0x73d1a8: r0 = Null
    //     0x73d1a8: mov             x0, NULL
    // 0x73d1ac: b               #0x73d1bc
    // 0x73d1b0: LoadField: r1 = r0->field_33
    //     0x73d1b0: ldur            w1, [x0, #0x33]
    // 0x73d1b4: DecompressPointer r1
    //     0x73d1b4: add             x1, x1, HEAP, lsl #32
    // 0x73d1b8: mov             x0, x1
    // 0x73d1bc: cmp             w0, NULL
    // 0x73d1c0: b.ne            #0x73d1c8
    // 0x73d1c4: r0 = ""
    //     0x73d1c4: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x73d1c8: stur            x0, [fp, #-8]
    // 0x73d1cc: r1 = <TextEditingValue>
    //     0x73d1cc: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x73d1d0: r0 = TextEditingController()
    //     0x73d1d0: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x73d1d4: stur            x0, [fp, #-0x18]
    // 0x73d1d8: ldur            x16, [fp, #-8]
    // 0x73d1dc: str             x16, [SP]
    // 0x73d1e0: mov             x1, x0
    // 0x73d1e4: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x73d1e4: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x73d1e8: ldr             x4, [x4, #0xa20]
    // 0x73d1ec: r0 = TextEditingController()
    //     0x73d1ec: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x73d1f0: ldur            x0, [fp, #-0x18]
    // 0x73d1f4: ldur            x2, [fp, #-0x20]
    // 0x73d1f8: StoreField: r2->field_27 = r0
    //     0x73d1f8: stur            w0, [x2, #0x27]
    //     0x73d1fc: ldurb           w16, [x2, #-1]
    //     0x73d200: ldurb           w17, [x0, #-1]
    //     0x73d204: and             x16, x17, x16, lsr #2
    //     0x73d208: tst             x16, HEAP, lsr #32
    //     0x73d20c: b.eq            #0x73d214
    //     0x73d210: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73d214: LoadField: r1 = r2->field_13
    //     0x73d214: ldur            w1, [x2, #0x13]
    // 0x73d218: DecompressPointer r1
    //     0x73d218: add             x1, x1, HEAP, lsl #32
    // 0x73d21c: cmp             w1, NULL
    // 0x73d220: b.ne            #0x73d22c
    // 0x73d224: r0 = Null
    //     0x73d224: mov             x0, NULL
    // 0x73d228: b               #0x73d234
    // 0x73d22c: LoadField: r0 = r1->field_f
    //     0x73d22c: ldur            w0, [x1, #0xf]
    // 0x73d230: DecompressPointer r0
    //     0x73d230: add             x0, x0, HEAP, lsl #32
    // 0x73d234: cmp             w0, NULL
    // 0x73d238: b.ne            #0x73d244
    // 0x73d23c: r0 = "misafir"
    //     0x73d23c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12588] "misafir"
    //     0x73d240: ldr             x0, [x0, #0x588]
    // 0x73d244: StoreField: r2->field_2b = r0
    //     0x73d244: stur            w0, [x2, #0x2b]
    //     0x73d248: ldurb           w16, [x2, #-1]
    //     0x73d24c: ldurb           w17, [x0, #-1]
    //     0x73d250: and             x16, x17, x16, lsr #2
    //     0x73d254: tst             x16, HEAP, lsr #32
    //     0x73d258: b.eq            #0x73d260
    //     0x73d25c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73d260: cmp             w1, NULL
    // 0x73d264: b.ne            #0x73d270
    // 0x73d268: r0 = Null
    //     0x73d268: mov             x0, NULL
    // 0x73d26c: b               #0x73d278
    // 0x73d270: LoadField: r0 = r1->field_37
    //     0x73d270: ldur            w0, [x1, #0x37]
    // 0x73d274: DecompressPointer r0
    //     0x73d274: add             x0, x0, HEAP, lsl #32
    // 0x73d278: StoreField: r2->field_2f = r0
    //     0x73d278: stur            w0, [x2, #0x2f]
    //     0x73d27c: ldurb           w16, [x2, #-1]
    //     0x73d280: ldurb           w17, [x0, #-1]
    //     0x73d284: and             x16, x17, x16, lsr #2
    //     0x73d288: tst             x16, HEAP, lsr #32
    //     0x73d28c: b.eq            #0x73d294
    //     0x73d290: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73d294: cmp             w1, NULL
    // 0x73d298: b.ne            #0x73d2a4
    // 0x73d29c: r0 = Null
    //     0x73d29c: mov             x0, NULL
    // 0x73d2a0: b               #0x73d2ac
    // 0x73d2a4: LoadField: r0 = r1->field_3b
    //     0x73d2a4: ldur            w0, [x1, #0x3b]
    // 0x73d2a8: DecompressPointer r0
    //     0x73d2a8: add             x0, x0, HEAP, lsl #32
    // 0x73d2ac: r3 = "Mekke"
    //     0x73d2ac: add             x3, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x73d2b0: ldr             x3, [x3, #0xdf0]
    // 0x73d2b4: StoreField: r2->field_33 = r0
    //     0x73d2b4: stur            w0, [x2, #0x33]
    //     0x73d2b8: ldurb           w16, [x2, #-1]
    //     0x73d2bc: ldurb           w17, [x0, #-1]
    //     0x73d2c0: and             x16, x17, x16, lsr #2
    //     0x73d2c4: tst             x16, HEAP, lsr #32
    //     0x73d2c8: b.eq            #0x73d2d0
    //     0x73d2cc: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73d2d0: StoreField: r2->field_37 = r3
    //     0x73d2d0: stur            w3, [x2, #0x37]
    // 0x73d2d4: cmp             w1, NULL
    // 0x73d2d8: b.ne            #0x73d2e4
    // 0x73d2dc: r0 = Null
    //     0x73d2dc: mov             x0, NULL
    // 0x73d2e0: b               #0x73d2ec
    // 0x73d2e4: LoadField: r0 = r1->field_1b
    //     0x73d2e4: ldur            w0, [x1, #0x1b]
    // 0x73d2e8: DecompressPointer r0
    //     0x73d2e8: add             x0, x0, HEAP, lsl #32
    // 0x73d2ec: StoreField: r2->field_3b = r0
    //     0x73d2ec: stur            w0, [x2, #0x3b]
    //     0x73d2f0: ldurb           w16, [x2, #-1]
    //     0x73d2f4: ldurb           w17, [x0, #-1]
    //     0x73d2f8: and             x16, x17, x16, lsr #2
    //     0x73d2fc: tst             x16, HEAP, lsr #32
    //     0x73d300: b.eq            #0x73d308
    //     0x73d304: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73d308: cmp             w1, NULL
    // 0x73d30c: b.ne            #0x73d318
    // 0x73d310: r0 = Null
    //     0x73d310: mov             x0, NULL
    // 0x73d314: b               #0x73d320
    // 0x73d318: LoadField: r0 = r1->field_23
    //     0x73d318: ldur            w0, [x1, #0x23]
    // 0x73d31c: DecompressPointer r0
    //     0x73d31c: add             x0, x0, HEAP, lsl #32
    // 0x73d320: StoreField: r2->field_3f = r0
    //     0x73d320: stur            w0, [x2, #0x3f]
    //     0x73d324: ldurb           w16, [x2, #-1]
    //     0x73d328: ldurb           w17, [x0, #-1]
    //     0x73d32c: and             x16, x17, x16, lsr #2
    //     0x73d330: tst             x16, HEAP, lsr #32
    //     0x73d334: b.eq            #0x73d33c
    //     0x73d338: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73d33c: cmp             w1, NULL
    // 0x73d340: b.ne            #0x73d34c
    // 0x73d344: r0 = Null
    //     0x73d344: mov             x0, NULL
    // 0x73d348: b               #0x73d354
    // 0x73d34c: LoadField: r0 = r1->field_2b
    //     0x73d34c: ldur            w0, [x1, #0x2b]
    // 0x73d350: DecompressPointer r0
    //     0x73d350: add             x0, x0, HEAP, lsl #32
    // 0x73d354: StoreField: r2->field_43 = r0
    //     0x73d354: stur            w0, [x2, #0x43]
    //     0x73d358: ldurb           w16, [x2, #-1]
    //     0x73d35c: ldurb           w17, [x0, #-1]
    //     0x73d360: and             x16, x17, x16, lsr #2
    //     0x73d364: tst             x16, HEAP, lsr #32
    //     0x73d368: b.eq            #0x73d370
    //     0x73d36c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73d370: cmp             w1, NULL
    // 0x73d374: b.ne            #0x73d380
    // 0x73d378: r0 = Null
    //     0x73d378: mov             x0, NULL
    // 0x73d37c: b               #0x73d388
    // 0x73d380: LoadField: r0 = r1->field_1f
    //     0x73d380: ldur            w0, [x1, #0x1f]
    // 0x73d384: DecompressPointer r0
    //     0x73d384: add             x0, x0, HEAP, lsl #32
    // 0x73d388: StoreField: r2->field_47 = r0
    //     0x73d388: stur            w0, [x2, #0x47]
    //     0x73d38c: ldurb           w16, [x2, #-1]
    //     0x73d390: ldurb           w17, [x0, #-1]
    //     0x73d394: and             x16, x17, x16, lsr #2
    //     0x73d398: tst             x16, HEAP, lsr #32
    //     0x73d39c: b.eq            #0x73d3a4
    //     0x73d3a0: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73d3a4: cmp             w1, NULL
    // 0x73d3a8: b.ne            #0x73d3b4
    // 0x73d3ac: r0 = Null
    //     0x73d3ac: mov             x0, NULL
    // 0x73d3b0: b               #0x73d3bc
    // 0x73d3b4: LoadField: r0 = r1->field_27
    //     0x73d3b4: ldur            w0, [x1, #0x27]
    // 0x73d3b8: DecompressPointer r0
    //     0x73d3b8: add             x0, x0, HEAP, lsl #32
    // 0x73d3bc: StoreField: r2->field_4b = r0
    //     0x73d3bc: stur            w0, [x2, #0x4b]
    //     0x73d3c0: ldurb           w16, [x2, #-1]
    //     0x73d3c4: ldurb           w17, [x0, #-1]
    //     0x73d3c8: and             x16, x17, x16, lsr #2
    //     0x73d3cc: tst             x16, HEAP, lsr #32
    //     0x73d3d0: b.eq            #0x73d3d8
    //     0x73d3d4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73d3d8: cmp             w1, NULL
    // 0x73d3dc: b.ne            #0x73d3e8
    // 0x73d3e0: r0 = Null
    //     0x73d3e0: mov             x0, NULL
    // 0x73d3e4: b               #0x73d3f0
    // 0x73d3e8: LoadField: r0 = r1->field_2f
    //     0x73d3e8: ldur            w0, [x1, #0x2f]
    // 0x73d3ec: DecompressPointer r0
    //     0x73d3ec: add             x0, x0, HEAP, lsl #32
    // 0x73d3f0: r1 = false
    //     0x73d3f0: add             x1, NULL, #0x30  ; false
    // 0x73d3f4: StoreField: r2->field_4f = r0
    //     0x73d3f4: stur            w0, [x2, #0x4f]
    //     0x73d3f8: ldurb           w16, [x2, #-1]
    //     0x73d3fc: ldurb           w17, [x0, #-1]
    //     0x73d400: and             x16, x17, x16, lsr #2
    //     0x73d404: tst             x16, HEAP, lsr #32
    //     0x73d408: b.eq            #0x73d410
    //     0x73d40c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73d410: StoreField: r2->field_53 = r1
    //     0x73d410: stur            w1, [x2, #0x53]
    // 0x73d414: r1 = Function '<anonymous closure>':.
    //     0x73d414: add             x1, PP, #0x19, lsl #12  ; [pp+0x19490] AnonymousClosure: (0x73d44c), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x73d418: ldr             x1, [x1, #0x490]
    // 0x73d41c: r0 = AllocateClosure()
    //     0x73d41c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73d420: stp             x0, NULL, [SP, #8]
    // 0x73d424: ldur            x16, [fp, #-0x10]
    // 0x73d428: str             x16, [SP]
    // 0x73d42c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x73d42c: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x73d430: r0 = showDialog()
    //     0x73d430: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x73d434: r0 = Null
    //     0x73d434: mov             x0, NULL
    // 0x73d438: LeaveFrame
    //     0x73d438: mov             SP, fp
    //     0x73d43c: ldp             fp, lr, [SP], #0x10
    // 0x73d440: ret
    //     0x73d440: ret             
    // 0x73d444: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73d444: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73d448: b               #0x73cff8
  }
  [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x73d44c, size: 0x64
    // 0x73d44c: EnterFrame
    //     0x73d44c: stp             fp, lr, [SP, #-0x10]!
    //     0x73d450: mov             fp, SP
    // 0x73d454: AllocStack(0x8)
    //     0x73d454: sub             SP, SP, #8
    // 0x73d458: SetupParameters([dynamic _ /* r0 */])
    //     0x73d458: ldr             x0, [fp, #0x18]
    //     0x73d45c: ldur            w1, [x0, #0x17]
    //     0x73d460: add             x1, x1, HEAP, lsl #32
    //     0x73d464: stur            x1, [fp, #-8]
    // 0x73d468: r1 = 1
    //     0x73d468: mov             x1, #1
    // 0x73d46c: r0 = AllocateContext()
    //     0x73d46c: bl              #0x927010  ; AllocateContextStub
    // 0x73d470: mov             x1, x0
    // 0x73d474: ldur            x0, [fp, #-8]
    // 0x73d478: StoreField: r1->field_b = r0
    //     0x73d478: stur            w0, [x1, #0xb]
    // 0x73d47c: ldr             x0, [fp, #0x10]
    // 0x73d480: StoreField: r1->field_f = r0
    //     0x73d480: stur            w0, [x1, #0xf]
    // 0x73d484: mov             x2, x1
    // 0x73d488: r1 = Function '<anonymous closure>':.
    //     0x73d488: add             x1, PP, #0x19, lsl #12  ; [pp+0x19498] AnonymousClosure: (0x73d4b0), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x73d48c: ldr             x1, [x1, #0x498]
    // 0x73d490: r0 = AllocateClosure()
    //     0x73d490: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73d494: stur            x0, [fp, #-8]
    // 0x73d498: r0 = StatefulBuilder()
    //     0x73d498: bl              #0x6d2fbc  ; AllocateStatefulBuilderStub -> StatefulBuilder (size=0x10)
    // 0x73d49c: ldur            x1, [fp, #-8]
    // 0x73d4a0: StoreField: r0->field_b = r1
    //     0x73d4a0: stur            w1, [x0, #0xb]
    // 0x73d4a4: LeaveFrame
    //     0x73d4a4: mov             SP, fp
    //     0x73d4a8: ldp             fp, lr, [SP], #0x10
    // 0x73d4ac: ret
    //     0x73d4ac: ret             
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void) {
    // ** addr: 0x73d4b0, size: 0x1698
    // 0x73d4b0: EnterFrame
    //     0x73d4b0: stp             fp, lr, [SP, #-0x10]!
    //     0x73d4b4: mov             fp, SP
    // 0x73d4b8: AllocStack(0xa0)
    //     0x73d4b8: sub             SP, SP, #0xa0
    // 0x73d4bc: SetupParameters([dynamic _ /* r0 */])
    //     0x73d4bc: ldr             x0, [fp, #0x20]
    //     0x73d4c0: ldur            w1, [x0, #0x17]
    //     0x73d4c4: add             x1, x1, HEAP, lsl #32
    //     0x73d4c8: stur            x1, [fp, #-8]
    // 0x73d4cc: CheckStackOverflow
    //     0x73d4cc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73d4d0: cmp             SP, x16
    //     0x73d4d4: b.ls            #0x73eb0c
    // 0x73d4d8: r1 = 5
    //     0x73d4d8: mov             x1, #5
    // 0x73d4dc: r0 = AllocateContext()
    //     0x73d4dc: bl              #0x927010  ; AllocateContextStub
    // 0x73d4e0: mov             x1, x0
    // 0x73d4e4: ldur            x0, [fp, #-8]
    // 0x73d4e8: stur            x1, [fp, #-0x18]
    // 0x73d4ec: StoreField: r1->field_b = r0
    //     0x73d4ec: stur            w0, [x1, #0xb]
    // 0x73d4f0: ldr             x2, [fp, #0x18]
    // 0x73d4f4: StoreField: r1->field_f = r2
    //     0x73d4f4: stur            w2, [x1, #0xf]
    // 0x73d4f8: ldr             x2, [fp, #0x10]
    // 0x73d4fc: StoreField: r1->field_13 = r2
    //     0x73d4fc: stur            w2, [x1, #0x13]
    // 0x73d500: LoadField: r2 = r0->field_b
    //     0x73d500: ldur            w2, [x0, #0xb]
    // 0x73d504: DecompressPointer r2
    //     0x73d504: add             x2, x2, HEAP, lsl #32
    // 0x73d508: stur            x2, [fp, #-0x10]
    // 0x73d50c: LoadField: r0 = r2->field_37
    //     0x73d50c: ldur            w0, [x2, #0x37]
    // 0x73d510: DecompressPointer r0
    //     0x73d510: add             x0, x0, HEAP, lsl #32
    // 0x73d514: r3 = LoadClassIdInstr(r0)
    //     0x73d514: ldur            x3, [x0, #-1]
    //     0x73d518: ubfx            x3, x3, #0xc, #0x14
    // 0x73d51c: r16 = "Mekke"
    //     0x73d51c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x73d520: ldr             x16, [x16, #0xdf0]
    // 0x73d524: stp             x16, x0, [SP]
    // 0x73d528: mov             x0, x3
    // 0x73d52c: mov             lr, x0
    // 0x73d530: ldr             lr, [x21, lr, lsl #3]
    // 0x73d534: blr             lr
    // 0x73d538: tbnz            w0, #4, #0x73d54c
    // 0x73d53c: ldur            x1, [fp, #-0x10]
    // 0x73d540: LoadField: r0 = r1->field_3b
    //     0x73d540: ldur            w0, [x1, #0x3b]
    // 0x73d544: DecompressPointer r0
    //     0x73d544: add             x0, x0, HEAP, lsl #32
    // 0x73d548: b               #0x73d558
    // 0x73d54c: ldur            x1, [fp, #-0x10]
    // 0x73d550: LoadField: r0 = r1->field_47
    //     0x73d550: ldur            w0, [x1, #0x47]
    // 0x73d554: DecompressPointer r0
    //     0x73d554: add             x0, x0, HEAP, lsl #32
    // 0x73d558: ldur            x2, [fp, #-0x18]
    // 0x73d55c: ArrayStore: r2[0] = r0  ; List_4
    //     0x73d55c: stur            w0, [x2, #0x17]
    //     0x73d560: ldurb           w16, [x2, #-1]
    //     0x73d564: ldurb           w17, [x0, #-1]
    //     0x73d568: and             x16, x17, x16, lsr #2
    //     0x73d56c: tst             x16, HEAP, lsr #32
    //     0x73d570: b.eq            #0x73d578
    //     0x73d574: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73d578: LoadField: r0 = r1->field_37
    //     0x73d578: ldur            w0, [x1, #0x37]
    // 0x73d57c: DecompressPointer r0
    //     0x73d57c: add             x0, x0, HEAP, lsl #32
    // 0x73d580: r3 = LoadClassIdInstr(r0)
    //     0x73d580: ldur            x3, [x0, #-1]
    //     0x73d584: ubfx            x3, x3, #0xc, #0x14
    // 0x73d588: r16 = "Mekke"
    //     0x73d588: add             x16, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x73d58c: ldr             x16, [x16, #0xdf0]
    // 0x73d590: stp             x16, x0, [SP]
    // 0x73d594: mov             x0, x3
    // 0x73d598: mov             lr, x0
    // 0x73d59c: ldr             lr, [x21, lr, lsl #3]
    // 0x73d5a0: blr             lr
    // 0x73d5a4: tbnz            w0, #4, #0x73d5b8
    // 0x73d5a8: ldur            x1, [fp, #-0x10]
    // 0x73d5ac: LoadField: r0 = r1->field_3f
    //     0x73d5ac: ldur            w0, [x1, #0x3f]
    // 0x73d5b0: DecompressPointer r0
    //     0x73d5b0: add             x0, x0, HEAP, lsl #32
    // 0x73d5b4: b               #0x73d5c4
    // 0x73d5b8: ldur            x1, [fp, #-0x10]
    // 0x73d5bc: LoadField: r0 = r1->field_4b
    //     0x73d5bc: ldur            w0, [x1, #0x4b]
    // 0x73d5c0: DecompressPointer r0
    //     0x73d5c0: add             x0, x0, HEAP, lsl #32
    // 0x73d5c4: ldur            x2, [fp, #-0x18]
    // 0x73d5c8: StoreField: r2->field_1b = r0
    //     0x73d5c8: stur            w0, [x2, #0x1b]
    //     0x73d5cc: ldurb           w16, [x2, #-1]
    //     0x73d5d0: ldurb           w17, [x0, #-1]
    //     0x73d5d4: and             x16, x17, x16, lsr #2
    //     0x73d5d8: tst             x16, HEAP, lsr #32
    //     0x73d5dc: b.eq            #0x73d5e4
    //     0x73d5e0: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73d5e4: LoadField: r0 = r1->field_37
    //     0x73d5e4: ldur            w0, [x1, #0x37]
    // 0x73d5e8: DecompressPointer r0
    //     0x73d5e8: add             x0, x0, HEAP, lsl #32
    // 0x73d5ec: r3 = LoadClassIdInstr(r0)
    //     0x73d5ec: ldur            x3, [x0, #-1]
    //     0x73d5f0: ubfx            x3, x3, #0xc, #0x14
    // 0x73d5f4: r16 = "Mekke"
    //     0x73d5f4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x73d5f8: ldr             x16, [x16, #0xdf0]
    // 0x73d5fc: stp             x16, x0, [SP]
    // 0x73d600: mov             x0, x3
    // 0x73d604: mov             lr, x0
    // 0x73d608: ldr             lr, [x21, lr, lsl #3]
    // 0x73d60c: blr             lr
    // 0x73d610: tbnz            w0, #4, #0x73d624
    // 0x73d614: ldur            x3, [fp, #-0x10]
    // 0x73d618: LoadField: r0 = r3->field_43
    //     0x73d618: ldur            w0, [x3, #0x43]
    // 0x73d61c: DecompressPointer r0
    //     0x73d61c: add             x0, x0, HEAP, lsl #32
    // 0x73d620: b               #0x73d630
    // 0x73d624: ldur            x3, [fp, #-0x10]
    // 0x73d628: LoadField: r0 = r3->field_4f
    //     0x73d628: ldur            w0, [x3, #0x4f]
    // 0x73d62c: DecompressPointer r0
    //     0x73d62c: add             x0, x0, HEAP, lsl #32
    // 0x73d630: ldur            x4, [fp, #-0x18]
    // 0x73d634: StoreField: r4->field_1f = r0
    //     0x73d634: stur            w0, [x4, #0x1f]
    //     0x73d638: ldurb           w16, [x4, #-1]
    //     0x73d63c: ldurb           w17, [x0, #-1]
    //     0x73d640: and             x16, x17, x16, lsr #2
    //     0x73d644: tst             x16, HEAP, lsr #32
    //     0x73d648: b.eq            #0x73d650
    //     0x73d64c: bl              #0x9267f0  ; WriteBarrierWrappersStub
    // 0x73d650: LoadField: r0 = r4->field_1b
    //     0x73d650: ldur            w0, [x4, #0x1b]
    // 0x73d654: DecompressPointer r0
    //     0x73d654: add             x0, x0, HEAP, lsl #32
    // 0x73d658: cmp             w0, NULL
    // 0x73d65c: b.eq            #0x73d7bc
    // 0x73d660: ArrayLoad: r0 = r4[0]  ; List_4
    //     0x73d660: ldur            w0, [x4, #0x17]
    // 0x73d664: DecompressPointer r0
    //     0x73d664: add             x0, x0, HEAP, lsl #32
    // 0x73d668: cmp             w0, NULL
    // 0x73d66c: b.ne            #0x73d7b4
    // 0x73d670: LoadField: r0 = r3->field_f
    //     0x73d670: ldur            w0, [x3, #0xf]
    // 0x73d674: DecompressPointer r0
    //     0x73d674: add             x0, x0, HEAP, lsl #32
    // 0x73d678: LoadField: r1 = r0->field_b
    //     0x73d678: ldur            w1, [x0, #0xb]
    // 0x73d67c: DecompressPointer r1
    //     0x73d67c: add             x1, x1, HEAP, lsl #32
    // 0x73d680: cmp             w1, NULL
    // 0x73d684: b.eq            #0x73eb14
    // 0x73d688: LoadField: r0 = r1->field_13
    //     0x73d688: ldur            w0, [x1, #0x13]
    // 0x73d68c: DecompressPointer r0
    //     0x73d68c: add             x0, x0, HEAP, lsl #32
    // 0x73d690: mov             x2, x4
    // 0x73d694: stur            x0, [fp, #-8]
    // 0x73d698: r1 = Function '<anonymous closure>':.
    //     0x73d698: add             x1, PP, #0x19, lsl #12  ; [pp+0x194a0] AnonymousClosure: (0x741320), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x73d69c: ldr             x1, [x1, #0x4a0]
    // 0x73d6a0: r0 = AllocateClosure()
    //     0x73d6a0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73d6a4: ldur            x1, [fp, #-8]
    // 0x73d6a8: r2 = LoadClassIdInstr(r1)
    //     0x73d6a8: ldur            x2, [x1, #-1]
    //     0x73d6ac: ubfx            x2, x2, #0xc, #0x14
    // 0x73d6b0: mov             x16, x0
    // 0x73d6b4: mov             x0, x2
    // 0x73d6b8: mov             x2, x16
    // 0x73d6bc: r0 = GDT[cid_x0 + 0xd348]()
    //     0x73d6bc: mov             x17, #0xd348
    //     0x73d6c0: add             lr, x0, x17
    //     0x73d6c4: ldr             lr, [x21, lr, lsl #3]
    //     0x73d6c8: blr             lr
    // 0x73d6cc: r16 = <HotelModel>
    //     0x73d6cc: add             x16, PP, #0x10, lsl #12  ; [pp+0x10da8] TypeArguments: <HotelModel>
    //     0x73d6d0: ldr             x16, [x16, #0xda8]
    // 0x73d6d4: stp             x0, x16, [SP]
    // 0x73d6d8: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x73d6d8: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x73d6dc: r0 = IterableExtensions.firstOrNull()
    //     0x73d6dc: bl              #0x617ba4  ; [dart:collection] ::IterableExtensions.firstOrNull
    // 0x73d6e0: cmp             w0, NULL
    // 0x73d6e4: b.eq            #0x73d7ac
    // 0x73d6e8: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x73d6e8: ldur            w1, [x0, #0x17]
    // 0x73d6ec: DecompressPointer r1
    //     0x73d6ec: add             x1, x1, HEAP, lsl #32
    // 0x73d6f0: stur            x1, [fp, #-8]
    // 0x73d6f4: cmp             w1, NULL
    // 0x73d6f8: b.eq            #0x73d7a4
    // 0x73d6fc: ldur            x3, [fp, #-0x18]
    // 0x73d700: ldur            x2, [fp, #-0x10]
    // 0x73d704: mov             x0, x1
    // 0x73d708: ArrayStore: r3[0] = r0  ; List_4
    //     0x73d708: stur            w0, [x3, #0x17]
    //     0x73d70c: ldurb           w16, [x3, #-1]
    //     0x73d710: ldurb           w17, [x0, #-1]
    //     0x73d714: and             x16, x17, x16, lsr #2
    //     0x73d718: tst             x16, HEAP, lsr #32
    //     0x73d71c: b.eq            #0x73d724
    //     0x73d720: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x73d724: LoadField: r0 = r2->field_37
    //     0x73d724: ldur            w0, [x2, #0x37]
    // 0x73d728: DecompressPointer r0
    //     0x73d728: add             x0, x0, HEAP, lsl #32
    // 0x73d72c: r4 = LoadClassIdInstr(r0)
    //     0x73d72c: ldur            x4, [x0, #-1]
    //     0x73d730: ubfx            x4, x4, #0xc, #0x14
    // 0x73d734: r16 = "Mekke"
    //     0x73d734: add             x16, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x73d738: ldr             x16, [x16, #0xdf0]
    // 0x73d73c: stp             x16, x0, [SP]
    // 0x73d740: mov             x0, x4
    // 0x73d744: mov             lr, x0
    // 0x73d748: ldr             lr, [x21, lr, lsl #3]
    // 0x73d74c: blr             lr
    // 0x73d750: tbnz            w0, #4, #0x73d77c
    // 0x73d754: ldur            x2, [fp, #-0x10]
    // 0x73d758: ldur            x0, [fp, #-8]
    // 0x73d75c: StoreField: r2->field_3b = r0
    //     0x73d75c: stur            w0, [x2, #0x3b]
    //     0x73d760: ldurb           w16, [x2, #-1]
    //     0x73d764: ldurb           w17, [x0, #-1]
    //     0x73d768: and             x16, x17, x16, lsr #2
    //     0x73d76c: tst             x16, HEAP, lsr #32
    //     0x73d770: b.eq            #0x73d778
    //     0x73d774: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73d778: b               #0x73d7c0
    // 0x73d77c: ldur            x2, [fp, #-0x10]
    // 0x73d780: ldur            x0, [fp, #-8]
    // 0x73d784: StoreField: r2->field_47 = r0
    //     0x73d784: stur            w0, [x2, #0x47]
    //     0x73d788: ldurb           w16, [x2, #-1]
    //     0x73d78c: ldurb           w17, [x0, #-1]
    //     0x73d790: and             x16, x17, x16, lsr #2
    //     0x73d794: tst             x16, HEAP, lsr #32
    //     0x73d798: b.eq            #0x73d7a0
    //     0x73d79c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x73d7a0: b               #0x73d7c0
    // 0x73d7a4: ldur            x2, [fp, #-0x10]
    // 0x73d7a8: b               #0x73d7c0
    // 0x73d7ac: ldur            x2, [fp, #-0x10]
    // 0x73d7b0: b               #0x73d7c0
    // 0x73d7b4: mov             x2, x3
    // 0x73d7b8: b               #0x73d7c0
    // 0x73d7bc: mov             x2, x3
    // 0x73d7c0: ldur            x0, [fp, #-0x18]
    // 0x73d7c4: LoadField: r1 = r2->field_f
    //     0x73d7c4: ldur            w1, [x2, #0xf]
    // 0x73d7c8: DecompressPointer r1
    //     0x73d7c8: add             x1, x1, HEAP, lsl #32
    // 0x73d7cc: r0 = onChanged()
    //     0x73d7cc: bl              #0x582f8c  ; [package:flutter/src/material/checkbox.dart] _CheckboxState::onChanged
    // 0x73d7d0: ldur            x2, [fp, #-0x18]
    // 0x73d7d4: r1 = Function '<anonymous closure>':.
    //     0x73d7d4: add             x1, PP, #0x19, lsl #12  ; [pp+0x194a8] AnonymousClosure: (0x7414c0), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x73d7d8: ldr             x1, [x1, #0x4a8]
    // 0x73d7dc: stur            x0, [fp, #-8]
    // 0x73d7e0: r0 = AllocateClosure()
    //     0x73d7e0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73d7e4: ldur            x1, [fp, #-8]
    // 0x73d7e8: r2 = LoadClassIdInstr(r1)
    //     0x73d7e8: ldur            x2, [x1, #-1]
    //     0x73d7ec: ubfx            x2, x2, #0xc, #0x14
    // 0x73d7f0: mov             x16, x0
    // 0x73d7f4: mov             x0, x2
    // 0x73d7f8: mov             x2, x16
    // 0x73d7fc: r0 = GDT[cid_x0 + 0xd348]()
    //     0x73d7fc: mov             x17, #0xd348
    //     0x73d800: add             lr, x0, x17
    //     0x73d804: ldr             lr, [x21, lr, lsl #3]
    //     0x73d808: blr             lr
    // 0x73d80c: LoadField: r1 = r0->field_7
    //     0x73d80c: ldur            w1, [x0, #7]
    // 0x73d810: DecompressPointer r1
    //     0x73d810: add             x1, x1, HEAP, lsl #32
    // 0x73d814: mov             x2, x0
    // 0x73d818: r0 = _GrowableList.of()
    //     0x73d818: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x73d81c: ldur            x2, [fp, #-0x18]
    // 0x73d820: stur            x0, [fp, #-8]
    // 0x73d824: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x73d824: ldur            w1, [x2, #0x17]
    // 0x73d828: DecompressPointer r1
    //     0x73d828: add             x1, x1, HEAP, lsl #32
    // 0x73d82c: cmp             w1, NULL
    // 0x73d830: b.eq            #0x73d894
    // 0x73d834: ldur            x3, [fp, #-0x10]
    // 0x73d838: LoadField: r1 = r3->field_f
    //     0x73d838: ldur            w1, [x3, #0xf]
    // 0x73d83c: DecompressPointer r1
    //     0x73d83c: add             x1, x1, HEAP, lsl #32
    // 0x73d840: r0 = textAlign()
    //     0x73d840: bl              #0x582638  ; [package:flutter/src/material/input_decorator.dart] _InputDecoratorState::textAlign
    // 0x73d844: ldur            x2, [fp, #-0x18]
    // 0x73d848: r1 = Function '<anonymous closure>':.
    //     0x73d848: add             x1, PP, #0x19, lsl #12  ; [pp+0x194b0] AnonymousClosure: (0x741458), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x73d84c: ldr             x1, [x1, #0x4b0]
    // 0x73d850: stur            x0, [fp, #-0x20]
    // 0x73d854: r0 = AllocateClosure()
    //     0x73d854: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73d858: ldur            x1, [fp, #-0x20]
    // 0x73d85c: r2 = LoadClassIdInstr(r1)
    //     0x73d85c: ldur            x2, [x1, #-1]
    //     0x73d860: ubfx            x2, x2, #0xc, #0x14
    // 0x73d864: mov             x16, x0
    // 0x73d868: mov             x0, x2
    // 0x73d86c: mov             x2, x16
    // 0x73d870: r0 = GDT[cid_x0 + 0xd348]()
    //     0x73d870: mov             x17, #0xd348
    //     0x73d874: add             lr, x0, x17
    //     0x73d878: ldr             lr, [x21, lr, lsl #3]
    //     0x73d87c: blr             lr
    // 0x73d880: LoadField: r1 = r0->field_7
    //     0x73d880: ldur            w1, [x0, #7]
    // 0x73d884: DecompressPointer r1
    //     0x73d884: add             x1, x1, HEAP, lsl #32
    // 0x73d888: mov             x2, x0
    // 0x73d88c: r0 = _GrowableList.of()
    //     0x73d88c: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x73d890: b               #0x73d8a4
    // 0x73d894: r1 = <HotelModel>
    //     0x73d894: add             x1, PP, #0x10, lsl #12  ; [pp+0x10da8] TypeArguments: <HotelModel>
    //     0x73d898: ldr             x1, [x1, #0xda8]
    // 0x73d89c: r2 = 0
    //     0x73d89c: mov             x2, #0
    // 0x73d8a0: r0 = _GrowableList()
    //     0x73d8a0: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x73d8a4: ldur            x2, [fp, #-0x18]
    // 0x73d8a8: stur            x0, [fp, #-0x20]
    // 0x73d8ac: LoadField: r1 = r2->field_1b
    //     0x73d8ac: ldur            w1, [x2, #0x1b]
    // 0x73d8b0: DecompressPointer r1
    //     0x73d8b0: add             x1, x1, HEAP, lsl #32
    // 0x73d8b4: cmp             w1, NULL
    // 0x73d8b8: b.eq            #0x73d91c
    // 0x73d8bc: ldur            x3, [fp, #-0x10]
    // 0x73d8c0: LoadField: r1 = r3->field_f
    //     0x73d8c0: ldur            w1, [x3, #0xf]
    // 0x73d8c4: DecompressPointer r1
    //     0x73d8c4: add             x1, x1, HEAP, lsl #32
    // 0x73d8c8: r0 = onDataChanged()
    //     0x73d8c8: bl              #0x617b5c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::onDataChanged
    // 0x73d8cc: ldur            x2, [fp, #-0x18]
    // 0x73d8d0: r1 = Function '<anonymous closure>':.
    //     0x73d8d0: add             x1, PP, #0x19, lsl #12  ; [pp+0x194b8] AnonymousClosure: (0x7413f0), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x73d8d4: ldr             x1, [x1, #0x4b8]
    // 0x73d8d8: stur            x0, [fp, #-0x28]
    // 0x73d8dc: r0 = AllocateClosure()
    //     0x73d8dc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73d8e0: ldur            x1, [fp, #-0x28]
    // 0x73d8e4: r2 = LoadClassIdInstr(r1)
    //     0x73d8e4: ldur            x2, [x1, #-1]
    //     0x73d8e8: ubfx            x2, x2, #0xc, #0x14
    // 0x73d8ec: mov             x16, x0
    // 0x73d8f0: mov             x0, x2
    // 0x73d8f4: mov             x2, x16
    // 0x73d8f8: r0 = GDT[cid_x0 + 0xd348]()
    //     0x73d8f8: mov             x17, #0xd348
    //     0x73d8fc: add             lr, x0, x17
    //     0x73d900: ldr             lr, [x21, lr, lsl #3]
    //     0x73d904: blr             lr
    // 0x73d908: LoadField: r1 = r0->field_7
    //     0x73d908: ldur            w1, [x0, #7]
    // 0x73d90c: DecompressPointer r1
    //     0x73d90c: add             x1, x1, HEAP, lsl #32
    // 0x73d910: mov             x2, x0
    // 0x73d914: r0 = _GrowableList.of()
    //     0x73d914: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x73d918: b               #0x73d92c
    // 0x73d91c: r1 = <RoomModel>
    //     0x73d91c: add             x1, PP, #0x12, lsl #12  ; [pp+0x126c8] TypeArguments: <RoomModel>
    //     0x73d920: ldr             x1, [x1, #0x6c8]
    // 0x73d924: r2 = 0
    //     0x73d924: mov             x2, #0
    // 0x73d928: r0 = _GrowableList()
    //     0x73d928: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x73d92c: ldur            x2, [fp, #-0x18]
    // 0x73d930: stur            x0, [fp, #-0x28]
    // 0x73d934: r1 = Function '<anonymous closure>':.
    //     0x73d934: add             x1, PP, #0x19, lsl #12  ; [pp+0x194c0] AnonymousClosure: (0x741388), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x73d938: ldr             x1, [x1, #0x4c0]
    // 0x73d93c: r0 = AllocateClosure()
    //     0x73d93c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73d940: ldur            x1, [fp, #-8]
    // 0x73d944: mov             x2, x0
    // 0x73d948: r0 = any()
    //     0x73d948: bl              #0x4f11ac  ; [dart:collection] ListBase::any
    // 0x73d94c: tbnz            w0, #4, #0x73d964
    // 0x73d950: ldur            x0, [fp, #-0x18]
    // 0x73d954: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x73d954: ldur            w1, [x0, #0x17]
    // 0x73d958: DecompressPointer r1
    //     0x73d958: add             x1, x1, HEAP, lsl #32
    // 0x73d95c: mov             x3, x1
    // 0x73d960: b               #0x73d96c
    // 0x73d964: ldur            x0, [fp, #-0x18]
    // 0x73d968: r3 = Null
    //     0x73d968: mov             x3, NULL
    // 0x73d96c: mov             x2, x0
    // 0x73d970: stur            x3, [fp, #-0x30]
    // 0x73d974: r1 = Function '<anonymous closure>':.
    //     0x73d974: add             x1, PP, #0x19, lsl #12  ; [pp+0x194c8] AnonymousClosure: (0x741320), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x73d978: ldr             x1, [x1, #0x4c8]
    // 0x73d97c: r0 = AllocateClosure()
    //     0x73d97c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73d980: ldur            x1, [fp, #-0x20]
    // 0x73d984: mov             x2, x0
    // 0x73d988: r0 = any()
    //     0x73d988: bl              #0x4f11ac  ; [dart:collection] ListBase::any
    // 0x73d98c: tbnz            w0, #4, #0x73d9a4
    // 0x73d990: ldur            x0, [fp, #-0x18]
    // 0x73d994: LoadField: r1 = r0->field_1b
    //     0x73d994: ldur            w1, [x0, #0x1b]
    // 0x73d998: DecompressPointer r1
    //     0x73d998: add             x1, x1, HEAP, lsl #32
    // 0x73d99c: mov             x3, x1
    // 0x73d9a0: b               #0x73d9ac
    // 0x73d9a4: ldur            x0, [fp, #-0x18]
    // 0x73d9a8: r3 = Null
    //     0x73d9a8: mov             x3, NULL
    // 0x73d9ac: mov             x2, x0
    // 0x73d9b0: stur            x3, [fp, #-0x38]
    // 0x73d9b4: r1 = Function '<anonymous closure>':.
    //     0x73d9b4: add             x1, PP, #0x19, lsl #12  ; [pp+0x194d0] AnonymousClosure: (0x7412b8), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x73d9b8: ldr             x1, [x1, #0x4d0]
    // 0x73d9bc: r0 = AllocateClosure()
    //     0x73d9bc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73d9c0: ldur            x1, [fp, #-0x28]
    // 0x73d9c4: mov             x2, x0
    // 0x73d9c8: r0 = any()
    //     0x73d9c8: bl              #0x4f11ac  ; [dart:collection] ListBase::any
    // 0x73d9cc: tbnz            w0, #4, #0x73d9e4
    // 0x73d9d0: ldur            x2, [fp, #-0x18]
    // 0x73d9d4: LoadField: r0 = r2->field_1f
    //     0x73d9d4: ldur            w0, [x2, #0x1f]
    // 0x73d9d8: DecompressPointer r0
    //     0x73d9d8: add             x0, x0, HEAP, lsl #32
    // 0x73d9dc: mov             x3, x0
    // 0x73d9e0: b               #0x73d9ec
    // 0x73d9e4: ldur            x2, [fp, #-0x18]
    // 0x73d9e8: r3 = Null
    //     0x73d9e8: mov             x3, NULL
    // 0x73d9ec: ldur            x0, [fp, #-0x10]
    // 0x73d9f0: stur            x3, [fp, #-0x40]
    // 0x73d9f4: r0 = Radius()
    //     0x73d9f4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x73d9f8: d0 = 16.000000
    //     0x73d9f8: fmov            d0, #16.00000000
    // 0x73d9fc: stur            x0, [fp, #-0x48]
    // 0x73da00: StoreField: r0->field_7 = d0
    //     0x73da00: stur            d0, [x0, #7]
    // 0x73da04: StoreField: r0->field_f = d0
    //     0x73da04: stur            d0, [x0, #0xf]
    // 0x73da08: r0 = BorderRadius()
    //     0x73da08: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x73da0c: mov             x1, x0
    // 0x73da10: ldur            x0, [fp, #-0x48]
    // 0x73da14: stur            x1, [fp, #-0x50]
    // 0x73da18: StoreField: r1->field_7 = r0
    //     0x73da18: stur            w0, [x1, #7]
    // 0x73da1c: StoreField: r1->field_b = r0
    //     0x73da1c: stur            w0, [x1, #0xb]
    // 0x73da20: StoreField: r1->field_f = r0
    //     0x73da20: stur            w0, [x1, #0xf]
    // 0x73da24: StoreField: r1->field_13 = r0
    //     0x73da24: stur            w0, [x1, #0x13]
    // 0x73da28: r0 = RoundedRectangleBorder()
    //     0x73da28: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x73da2c: mov             x1, x0
    // 0x73da30: ldur            x0, [fp, #-0x50]
    // 0x73da34: stur            x1, [fp, #-0x58]
    // 0x73da38: StoreField: r1->field_b = r0
    //     0x73da38: stur            w0, [x1, #0xb]
    // 0x73da3c: r0 = Instance_BorderSide
    //     0x73da3c: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x73da40: ldr             x0, [x0, #0xcb8]
    // 0x73da44: StoreField: r1->field_7 = r0
    //     0x73da44: stur            w0, [x1, #7]
    // 0x73da48: ldur            x0, [fp, #-0x10]
    // 0x73da4c: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x73da4c: ldur            w2, [x0, #0x17]
    // 0x73da50: DecompressPointer r2
    //     0x73da50: add             x2, x2, HEAP, lsl #32
    // 0x73da54: stur            x2, [fp, #-0x50]
    // 0x73da58: tbnz            w2, #4, #0x73da68
    // 0x73da5c: r4 = "Kullanıcı Düzenle"
    //     0x73da5c: add             x4, PP, #0x19, lsl #12  ; [pp+0x194d8] "Kullanıcı Düzenle"
    //     0x73da60: ldr             x4, [x4, #0x4d8]
    // 0x73da64: b               #0x73da70
    // 0x73da68: r4 = "Yeni Kullanıcı"
    //     0x73da68: add             x4, PP, #0x19, lsl #12  ; [pp+0x194e0] "Yeni Kullanıcı"
    //     0x73da6c: ldr             x4, [x4, #0x4e0]
    // 0x73da70: ldur            x3, [fp, #-0x18]
    // 0x73da74: stur            x4, [fp, #-0x48]
    // 0x73da78: r0 = Text()
    //     0x73da78: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x73da7c: mov             x2, x0
    // 0x73da80: ldur            x0, [fp, #-0x48]
    // 0x73da84: stur            x2, [fp, #-0x60]
    // 0x73da88: StoreField: r2->field_b = r0
    //     0x73da88: stur            w0, [x2, #0xb]
    // 0x73da8c: r0 = Instance_TextStyle
    //     0x73da8c: add             x0, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x73da90: ldr             x0, [x0, #0x158]
    // 0x73da94: StoreField: r2->field_13 = r0
    //     0x73da94: stur            w0, [x2, #0x13]
    // 0x73da98: ldur            x0, [fp, #-0x18]
    // 0x73da9c: LoadField: r1 = r0->field_f
    //     0x73da9c: ldur            w1, [x0, #0xf]
    // 0x73daa0: DecompressPointer r1
    //     0x73daa0: add             x1, x1, HEAP, lsl #32
    // 0x73daa4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x73daa4: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x73daa8: r0 = _of()
    //     0x73daa8: bl              #0x485ba4  ; [package:flutter/src/widgets/media_query.dart] MediaQuery::_of
    // 0x73daac: LoadField: r1 = r0->field_7
    //     0x73daac: ldur            w1, [x0, #7]
    // 0x73dab0: DecompressPointer r1
    //     0x73dab0: add             x1, x1, HEAP, lsl #32
    // 0x73dab4: LoadField: d0 = r1->field_7
    //     0x73dab4: ldur            d0, [x1, #7]
    // 0x73dab8: d1 = 0.900000
    //     0x73dab8: ldr             d1, [PP, #0x5d60]  ; [pp+0x5d60] IMM: double(0.9) from 0x3feccccccccccccd
    // 0x73dabc: fmul            d2, d0, d1
    // 0x73dac0: stur            d2, [fp, #-0x88]
    // 0x73dac4: r1 = <Widget>
    //     0x73dac4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73dac8: r2 = 30
    //     0x73dac8: mov             x2, #0x1e
    // 0x73dacc: r0 = AllocateArray()
    //     0x73dacc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73dad0: stur            x0, [fp, #-0x48]
    // 0x73dad4: r16 = Instance_Text
    //     0x73dad4: add             x16, PP, #0x19, lsl #12  ; [pp+0x194e8] Obj!Text@a1d111
    //     0x73dad8: ldr             x16, [x16, #0x4e8]
    // 0x73dadc: StoreField: r0->field_f = r16
    //     0x73dadc: stur            w16, [x0, #0xf]
    // 0x73dae0: r16 = Instance_SizedBox
    //     0x73dae0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x73dae4: ldr             x16, [x16, #0x318]
    // 0x73dae8: StoreField: r0->field_13 = r16
    //     0x73dae8: stur            w16, [x0, #0x13]
    // 0x73daec: ldur            x4, [fp, #-0x10]
    // 0x73daf0: LoadField: r1 = r4->field_1b
    //     0x73daf0: ldur            w1, [x4, #0x1b]
    // 0x73daf4: DecompressPointer r1
    //     0x73daf4: add             x1, x1, HEAP, lsl #32
    // 0x73daf8: r2 = "Ad Soyad"
    //     0x73daf8: add             x2, PP, #0x19, lsl #12  ; [pp+0x194f0] "Ad Soyad"
    //     0x73dafc: ldr             x2, [x2, #0x4f0]
    // 0x73db00: r3 = Instance_IconData
    //     0x73db00: add             x3, PP, #0x19, lsl #12  ; [pp+0x194f8] Obj!IconData@a09d61
    //     0x73db04: ldr             x3, [x3, #0x4f8]
    // 0x73db08: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x73db08: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x73db0c: r0 = buildDialogTextField()
    //     0x73db0c: bl              #0x6f4c3c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDialogTextField
    // 0x73db10: ldur            x1, [fp, #-0x48]
    // 0x73db14: ArrayStore: r1[2] = r0  ; List_4
    //     0x73db14: add             x25, x1, #0x17
    //     0x73db18: str             w0, [x25]
    //     0x73db1c: tbz             w0, #0, #0x73db38
    //     0x73db20: ldurb           w16, [x1, #-1]
    //     0x73db24: ldurb           w17, [x0, #-1]
    //     0x73db28: and             x16, x17, x16, lsr #2
    //     0x73db2c: tst             x16, HEAP, lsr #32
    //     0x73db30: b.eq            #0x73db38
    //     0x73db34: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73db38: ldur            x0, [fp, #-0x48]
    // 0x73db3c: r16 = Instance_SizedBox
    //     0x73db3c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x73db40: ldr             x16, [x16, #0x220]
    // 0x73db44: StoreField: r0->field_1b = r16
    //     0x73db44: stur            w16, [x0, #0x1b]
    // 0x73db48: ldur            x4, [fp, #-0x10]
    // 0x73db4c: LoadField: r1 = r4->field_1f
    //     0x73db4c: ldur            w1, [x4, #0x1f]
    // 0x73db50: DecompressPointer r1
    //     0x73db50: add             x1, x1, HEAP, lsl #32
    // 0x73db54: r2 = "TC Kimlik No"
    //     0x73db54: add             x2, PP, #0x18, lsl #12  ; [pp+0x186b8] "TC Kimlik No"
    //     0x73db58: ldr             x2, [x2, #0x6b8]
    // 0x73db5c: r3 = Instance_IconData
    //     0x73db5c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19500] Obj!IconData@a0a741
    //     0x73db60: ldr             x3, [x3, #0x500]
    // 0x73db64: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x73db64: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x73db68: r0 = buildDialogTextField()
    //     0x73db68: bl              #0x6f4c3c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDialogTextField
    // 0x73db6c: ldur            x1, [fp, #-0x48]
    // 0x73db70: ArrayStore: r1[4] = r0  ; List_4
    //     0x73db70: add             x25, x1, #0x1f
    //     0x73db74: str             w0, [x25]
    //     0x73db78: tbz             w0, #0, #0x73db94
    //     0x73db7c: ldurb           w16, [x1, #-1]
    //     0x73db80: ldurb           w17, [x0, #-1]
    //     0x73db84: and             x16, x17, x16, lsr #2
    //     0x73db88: tst             x16, HEAP, lsr #32
    //     0x73db8c: b.eq            #0x73db94
    //     0x73db90: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73db94: ldur            x0, [fp, #-0x48]
    // 0x73db98: r16 = Instance_SizedBox
    //     0x73db98: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x73db9c: ldr             x16, [x16, #0x220]
    // 0x73dba0: StoreField: r0->field_23 = r16
    //     0x73dba0: stur            w16, [x0, #0x23]
    // 0x73dba4: ldur            x4, [fp, #-0x10]
    // 0x73dba8: LoadField: r1 = r4->field_23
    //     0x73dba8: ldur            w1, [x4, #0x23]
    // 0x73dbac: DecompressPointer r1
    //     0x73dbac: add             x1, x1, HEAP, lsl #32
    // 0x73dbb0: r2 = "Telefon"
    //     0x73dbb0: add             x2, PP, #0x15, lsl #12  ; [pp+0x15488] "Telefon"
    //     0x73dbb4: ldr             x2, [x2, #0x488]
    // 0x73dbb8: r3 = Instance_IconData
    //     0x73dbb8: add             x3, PP, #0x12, lsl #12  ; [pp+0x12268] Obj!IconData@a09ea1
    //     0x73dbbc: ldr             x3, [x3, #0x268]
    // 0x73dbc0: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x73dbc0: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x73dbc4: r0 = buildDialogTextField()
    //     0x73dbc4: bl              #0x6f4c3c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDialogTextField
    // 0x73dbc8: ldur            x1, [fp, #-0x48]
    // 0x73dbcc: ArrayStore: r1[6] = r0  ; List_4
    //     0x73dbcc: add             x25, x1, #0x27
    //     0x73dbd0: str             w0, [x25]
    //     0x73dbd4: tbz             w0, #0, #0x73dbf0
    //     0x73dbd8: ldurb           w16, [x1, #-1]
    //     0x73dbdc: ldurb           w17, [x0, #-1]
    //     0x73dbe0: and             x16, x17, x16, lsr #2
    //     0x73dbe4: tst             x16, HEAP, lsr #32
    //     0x73dbe8: b.eq            #0x73dbf0
    //     0x73dbec: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73dbf0: ldur            x0, [fp, #-0x48]
    // 0x73dbf4: r16 = Instance_SizedBox
    //     0x73dbf4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x73dbf8: ldr             x16, [x16, #0x220]
    // 0x73dbfc: StoreField: r0->field_2b = r16
    //     0x73dbfc: stur            w16, [x0, #0x2b]
    // 0x73dc00: ldur            x4, [fp, #-0x10]
    // 0x73dc04: LoadField: r1 = r4->field_27
    //     0x73dc04: ldur            w1, [x4, #0x27]
    // 0x73dc08: DecompressPointer r1
    //     0x73dc08: add             x1, x1, HEAP, lsl #32
    // 0x73dc0c: r2 = "Konum / Adres"
    //     0x73dc0c: add             x2, PP, #0x19, lsl #12  ; [pp+0x19508] "Konum / Adres"
    //     0x73dc10: ldr             x2, [x2, #0x508]
    // 0x73dc14: r3 = Instance_IconData
    //     0x73dc14: add             x3, PP, #0x15, lsl #12  ; [pp+0x15528] Obj!IconData@a09ae1
    //     0x73dc18: ldr             x3, [x3, #0x528]
    // 0x73dc1c: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x73dc1c: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x73dc20: r0 = buildDialogTextField()
    //     0x73dc20: bl              #0x6f4c3c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDialogTextField
    // 0x73dc24: ldur            x1, [fp, #-0x48]
    // 0x73dc28: ArrayStore: r1[8] = r0  ; List_4
    //     0x73dc28: add             x25, x1, #0x2f
    //     0x73dc2c: str             w0, [x25]
    //     0x73dc30: tbz             w0, #0, #0x73dc4c
    //     0x73dc34: ldurb           w16, [x1, #-1]
    //     0x73dc38: ldurb           w17, [x0, #-1]
    //     0x73dc3c: and             x16, x17, x16, lsr #2
    //     0x73dc40: tst             x16, HEAP, lsr #32
    //     0x73dc44: b.eq            #0x73dc4c
    //     0x73dc48: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73dc4c: ldur            x0, [fp, #-0x48]
    // 0x73dc50: r16 = Instance_SizedBox
    //     0x73dc50: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x73dc54: ldr             x16, [x16, #0x220]
    // 0x73dc58: StoreField: r0->field_33 = r16
    //     0x73dc58: stur            w16, [x0, #0x33]
    // 0x73dc5c: ldur            x2, [fp, #-0x10]
    // 0x73dc60: LoadField: r3 = r2->field_2b
    //     0x73dc60: ldur            w3, [x2, #0x2b]
    // 0x73dc64: DecompressPointer r3
    //     0x73dc64: add             x3, x3, HEAP, lsl #32
    // 0x73dc68: stur            x3, [fp, #-0x68]
    // 0x73dc6c: r1 = "Kullanıcı Tipi"
    //     0x73dc6c: add             x1, PP, #0x19, lsl #12  ; [pp+0x19510] "Kullanıcı Tipi"
    //     0x73dc70: ldr             x1, [x1, #0x510]
    // 0x73dc74: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x73dc74: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x73dc78: r0 = buildDropdownDecoration()
    //     0x73dc78: bl              #0x6f4f28  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDropdownDecoration
    // 0x73dc7c: ldur            x2, [fp, #-0x18]
    // 0x73dc80: r1 = Function '<anonymous closure>':.
    //     0x73dc80: add             x1, PP, #0x19, lsl #12  ; [pp+0x19518] AnonymousClosure: (0x7411bc), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x73dc84: ldr             x1, [x1, #0x518]
    // 0x73dc88: stur            x0, [fp, #-0x70]
    // 0x73dc8c: r0 = AllocateClosure()
    //     0x73dc8c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73dc90: r1 = <String>
    //     0x73dc90: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x73dc94: stur            x0, [fp, #-0x78]
    // 0x73dc98: r0 = DropdownButtonFormField()
    //     0x73dc98: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x73dc9c: stur            x0, [fp, #-0x80]
    // 0x73dca0: r16 = Instance_Color
    //     0x73dca0: add             x16, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x73dca4: ldr             x16, [x16, #0x1c0]
    // 0x73dca8: r30 = Instance_TextStyle
    //     0x73dca8: add             lr, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x73dcac: ldr             lr, [lr, #0x158]
    // 0x73dcb0: stp             lr, x16, [SP]
    // 0x73dcb4: mov             x1, x0
    // 0x73dcb8: ldur            x2, [fp, #-0x70]
    // 0x73dcbc: ldur            x3, [fp, #-0x68]
    // 0x73dcc0: ldur            x6, [fp, #-0x78]
    // 0x73dcc4: r5 = const [Instance of 'DropdownMenuItem<String>', Instance of 'DropdownMenuItem<String>']
    //     0x73dcc4: add             x5, PP, #0x19, lsl #12  ; [pp+0x19520] List<DropdownMenuItem<String>>(2)
    //     0x73dcc8: ldr             x5, [x5, #0x520]
    // 0x73dccc: r4 = const [0, 0x7, 0x2, 0x5, dropdownColor, 0x5, style, 0x6, null]
    //     0x73dccc: add             x4, PP, #0x19, lsl #12  ; [pp+0x19250] List(9) [0, 0x7, 0x2, 0x5, "dropdownColor", 0x5, "style", 0x6, Null]
    //     0x73dcd0: ldr             x4, [x4, #0x250]
    // 0x73dcd4: r0 = DropdownButtonFormField()
    //     0x73dcd4: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x73dcd8: ldur            x1, [fp, #-0x48]
    // 0x73dcdc: ldur            x0, [fp, #-0x80]
    // 0x73dce0: ArrayStore: r1[10] = r0  ; List_4
    //     0x73dce0: add             x25, x1, #0x37
    //     0x73dce4: str             w0, [x25]
    //     0x73dce8: tbz             w0, #0, #0x73dd04
    //     0x73dcec: ldurb           w16, [x1, #-1]
    //     0x73dcf0: ldurb           w17, [x0, #-1]
    //     0x73dcf4: and             x16, x17, x16, lsr #2
    //     0x73dcf8: tst             x16, HEAP, lsr #32
    //     0x73dcfc: b.eq            #0x73dd04
    //     0x73dd00: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73dd04: ldur            x0, [fp, #-0x48]
    // 0x73dd08: r16 = Instance_SizedBox
    //     0x73dd08: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x73dd0c: ldr             x16, [x16, #0x220]
    // 0x73dd10: StoreField: r0->field_3b = r16
    //     0x73dd10: stur            w16, [x0, #0x3b]
    // 0x73dd14: ldur            x2, [fp, #-0x10]
    // 0x73dd18: LoadField: r3 = r2->field_2f
    //     0x73dd18: ldur            w3, [x2, #0x2f]
    // 0x73dd1c: DecompressPointer r3
    //     0x73dd1c: add             x3, x3, HEAP, lsl #32
    // 0x73dd20: stur            x3, [fp, #-0x68]
    // 0x73dd24: r1 = "Cinsiyet"
    //     0x73dd24: add             x1, PP, #0x19, lsl #12  ; [pp+0x19528] "Cinsiyet"
    //     0x73dd28: ldr             x1, [x1, #0x528]
    // 0x73dd2c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x73dd2c: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x73dd30: r0 = buildDropdownDecoration()
    //     0x73dd30: bl              #0x6f4f28  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDropdownDecoration
    // 0x73dd34: ldur            x2, [fp, #-0x18]
    // 0x73dd38: r1 = Function '<anonymous closure>':.
    //     0x73dd38: add             x1, PP, #0x19, lsl #12  ; [pp+0x19530] AnonymousClosure: (0x741130), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x73dd3c: ldr             x1, [x1, #0x530]
    // 0x73dd40: stur            x0, [fp, #-0x70]
    // 0x73dd44: r0 = AllocateClosure()
    //     0x73dd44: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73dd48: r1 = <String?>
    //     0x73dd48: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x73dd4c: stur            x0, [fp, #-0x78]
    // 0x73dd50: r0 = DropdownButtonFormField()
    //     0x73dd50: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x73dd54: stur            x0, [fp, #-0x80]
    // 0x73dd58: r16 = Instance_Color
    //     0x73dd58: add             x16, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x73dd5c: ldr             x16, [x16, #0x1c0]
    // 0x73dd60: r30 = Instance_TextStyle
    //     0x73dd60: add             lr, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x73dd64: ldr             lr, [lr, #0x158]
    // 0x73dd68: stp             lr, x16, [SP]
    // 0x73dd6c: mov             x1, x0
    // 0x73dd70: ldur            x2, [fp, #-0x70]
    // 0x73dd74: ldur            x3, [fp, #-0x68]
    // 0x73dd78: ldur            x6, [fp, #-0x78]
    // 0x73dd7c: r5 = const [Instance of 'DropdownMenuItem<String?>', Instance of 'DropdownMenuItem<String?>', Instance of 'DropdownMenuItem<String?>']
    //     0x73dd7c: add             x5, PP, #0x18, lsl #12  ; [pp+0x187a8] List<DropdownMenuItem<String?>>(3)
    //     0x73dd80: ldr             x5, [x5, #0x7a8]
    // 0x73dd84: r4 = const [0, 0x7, 0x2, 0x5, dropdownColor, 0x5, style, 0x6, null]
    //     0x73dd84: add             x4, PP, #0x19, lsl #12  ; [pp+0x19250] List(9) [0, 0x7, 0x2, 0x5, "dropdownColor", 0x5, "style", 0x6, Null]
    //     0x73dd88: ldr             x4, [x4, #0x250]
    // 0x73dd8c: r0 = DropdownButtonFormField()
    //     0x73dd8c: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x73dd90: ldur            x1, [fp, #-0x48]
    // 0x73dd94: ldur            x0, [fp, #-0x80]
    // 0x73dd98: ArrayStore: r1[12] = r0  ; List_4
    //     0x73dd98: add             x25, x1, #0x3f
    //     0x73dd9c: str             w0, [x25]
    //     0x73dda0: tbz             w0, #0, #0x73ddbc
    //     0x73dda4: ldurb           w16, [x1, #-1]
    //     0x73dda8: ldurb           w17, [x0, #-1]
    //     0x73ddac: and             x16, x17, x16, lsr #2
    //     0x73ddb0: tst             x16, HEAP, lsr #32
    //     0x73ddb4: b.eq            #0x73ddbc
    //     0x73ddb8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73ddbc: ldur            x1, [fp, #-0x48]
    // 0x73ddc0: r16 = Instance_SizedBox
    //     0x73ddc0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x73ddc4: ldr             x16, [x16, #0x220]
    // 0x73ddc8: StoreField: r1->field_43 = r16
    //     0x73ddc8: stur            w16, [x1, #0x43]
    // 0x73ddcc: r0 = Radius()
    //     0x73ddcc: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x73ddd0: d0 = 8.000000
    //     0x73ddd0: fmov            d0, #8.00000000
    // 0x73ddd4: stur            x0, [fp, #-0x68]
    // 0x73ddd8: StoreField: r0->field_7 = d0
    //     0x73ddd8: stur            d0, [x0, #7]
    // 0x73dddc: StoreField: r0->field_f = d0
    //     0x73dddc: stur            d0, [x0, #0xf]
    // 0x73dde0: r0 = BorderRadius()
    //     0x73dde0: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x73dde4: mov             x2, x0
    // 0x73dde8: ldur            x0, [fp, #-0x68]
    // 0x73ddec: stur            x2, [fp, #-0x70]
    // 0x73ddf0: StoreField: r2->field_7 = r0
    //     0x73ddf0: stur            w0, [x2, #7]
    // 0x73ddf4: StoreField: r2->field_b = r0
    //     0x73ddf4: stur            w0, [x2, #0xb]
    // 0x73ddf8: StoreField: r2->field_f = r0
    //     0x73ddf8: stur            w0, [x2, #0xf]
    // 0x73ddfc: StoreField: r2->field_13 = r0
    //     0x73ddfc: stur            w0, [x2, #0x13]
    // 0x73de00: r16 = 0.200000
    //     0x73de00: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x73de04: ldr             x16, [x16, #0x1f0]
    // 0x73de08: str             x16, [SP]
    // 0x73de0c: r1 = Instance_Color
    //     0x73de0c: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73de10: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x73de10: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x73de14: ldr             x4, [x4, #0x198]
    // 0x73de18: r0 = withValues()
    //     0x73de18: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x73de1c: stur            x0, [fp, #-0x68]
    // 0x73de20: r0 = BorderSide()
    //     0x73de20: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x73de24: mov             x1, x0
    // 0x73de28: ldur            x0, [fp, #-0x68]
    // 0x73de2c: stur            x1, [fp, #-0x78]
    // 0x73de30: StoreField: r1->field_7 = r0
    //     0x73de30: stur            w0, [x1, #7]
    // 0x73de34: d0 = 1.000000
    //     0x73de34: fmov            d0, #1.00000000
    // 0x73de38: StoreField: r1->field_b = d0
    //     0x73de38: stur            d0, [x1, #0xb]
    // 0x73de3c: r0 = Instance_BorderStyle
    //     0x73de3c: add             x0, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x73de40: ldr             x0, [x0, #0x738]
    // 0x73de44: StoreField: r1->field_13 = r0
    //     0x73de44: stur            w0, [x1, #0x13]
    // 0x73de48: d1 = -1.000000
    //     0x73de48: fmov            d1, #-1.00000000
    // 0x73de4c: ArrayStore: r1[0] = d1  ; List_8
    //     0x73de4c: stur            d1, [x1, #0x17]
    // 0x73de50: r0 = OutlineInputBorder()
    //     0x73de50: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x73de54: mov             x1, x0
    // 0x73de58: ldur            x0, [fp, #-0x70]
    // 0x73de5c: stur            x1, [fp, #-0x68]
    // 0x73de60: StoreField: r1->field_13 = r0
    //     0x73de60: stur            w0, [x1, #0x13]
    // 0x73de64: d0 = 4.000000
    //     0x73de64: fmov            d0, #4.00000000
    // 0x73de68: StoreField: r1->field_b = d0
    //     0x73de68: stur            d0, [x1, #0xb]
    // 0x73de6c: ldur            x0, [fp, #-0x78]
    // 0x73de70: StoreField: r1->field_7 = r0
    //     0x73de70: stur            w0, [x1, #7]
    // 0x73de74: r0 = Radius()
    //     0x73de74: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x73de78: d0 = 8.000000
    //     0x73de78: fmov            d0, #8.00000000
    // 0x73de7c: stur            x0, [fp, #-0x70]
    // 0x73de80: StoreField: r0->field_7 = d0
    //     0x73de80: stur            d0, [x0, #7]
    // 0x73de84: StoreField: r0->field_f = d0
    //     0x73de84: stur            d0, [x0, #0xf]
    // 0x73de88: r0 = BorderRadius()
    //     0x73de88: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x73de8c: mov             x2, x0
    // 0x73de90: ldur            x0, [fp, #-0x70]
    // 0x73de94: stur            x2, [fp, #-0x78]
    // 0x73de98: StoreField: r2->field_7 = r0
    //     0x73de98: stur            w0, [x2, #7]
    // 0x73de9c: StoreField: r2->field_b = r0
    //     0x73de9c: stur            w0, [x2, #0xb]
    // 0x73dea0: StoreField: r2->field_f = r0
    //     0x73dea0: stur            w0, [x2, #0xf]
    // 0x73dea4: StoreField: r2->field_13 = r0
    //     0x73dea4: stur            w0, [x2, #0x13]
    // 0x73dea8: r16 = 0.200000
    //     0x73dea8: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x73deac: ldr             x16, [x16, #0x1f0]
    // 0x73deb0: str             x16, [SP]
    // 0x73deb4: r1 = Instance_Color
    //     0x73deb4: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73deb8: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x73deb8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x73debc: ldr             x4, [x4, #0x198]
    // 0x73dec0: r0 = withValues()
    //     0x73dec0: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x73dec4: stur            x0, [fp, #-0x70]
    // 0x73dec8: r0 = BorderSide()
    //     0x73dec8: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x73decc: mov             x1, x0
    // 0x73ded0: ldur            x0, [fp, #-0x70]
    // 0x73ded4: stur            x1, [fp, #-0x80]
    // 0x73ded8: StoreField: r1->field_7 = r0
    //     0x73ded8: stur            w0, [x1, #7]
    // 0x73dedc: d0 = 1.000000
    //     0x73dedc: fmov            d0, #1.00000000
    // 0x73dee0: StoreField: r1->field_b = d0
    //     0x73dee0: stur            d0, [x1, #0xb]
    // 0x73dee4: r0 = Instance_BorderStyle
    //     0x73dee4: add             x0, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x73dee8: ldr             x0, [x0, #0x738]
    // 0x73deec: StoreField: r1->field_13 = r0
    //     0x73deec: stur            w0, [x1, #0x13]
    // 0x73def0: d0 = -1.000000
    //     0x73def0: fmov            d0, #-1.00000000
    // 0x73def4: ArrayStore: r1[0] = d0  ; List_8
    //     0x73def4: stur            d0, [x1, #0x17]
    // 0x73def8: r0 = OutlineInputBorder()
    //     0x73def8: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x73defc: mov             x1, x0
    // 0x73df00: ldur            x0, [fp, #-0x78]
    // 0x73df04: stur            x1, [fp, #-0x70]
    // 0x73df08: StoreField: r1->field_13 = r0
    //     0x73df08: stur            w0, [x1, #0x13]
    // 0x73df0c: d0 = 4.000000
    //     0x73df0c: fmov            d0, #4.00000000
    // 0x73df10: StoreField: r1->field_b = d0
    //     0x73df10: stur            d0, [x1, #0xb]
    // 0x73df14: ldur            x0, [fp, #-0x80]
    // 0x73df18: StoreField: r1->field_7 = r0
    //     0x73df18: stur            w0, [x1, #7]
    // 0x73df1c: r0 = InputDecoration()
    //     0x73df1c: bl              #0x5fbec8  ; AllocateInputDecorationStub -> InputDecoration (size=0xec)
    // 0x73df20: mov             x2, x0
    // 0x73df24: r0 = "Doğum Tarihi"
    //     0x73df24: add             x0, PP, #0x15, lsl #12  ; [pp+0x15a10] "Doğum Tarihi"
    //     0x73df28: ldr             x0, [x0, #0xa10]
    // 0x73df2c: stur            x2, [fp, #-0x78]
    // 0x73df30: StoreField: r2->field_13 = r0
    //     0x73df30: stur            w0, [x2, #0x13]
    // 0x73df34: r0 = Instance_TextStyle
    //     0x73df34: add             x0, PP, #0x19, lsl #12  ; [pp+0x19538] Obj!TextStyle@a179f1
    //     0x73df38: ldr             x0, [x0, #0x538]
    // 0x73df3c: ArrayStore: r2[0] = r0  ; List_4
    //     0x73df3c: stur            w0, [x2, #0x17]
    // 0x73df40: r0 = true
    //     0x73df40: add             x0, NULL, #0x20  ; true
    // 0x73df44: StoreField: r2->field_47 = r0
    //     0x73df44: stur            w0, [x2, #0x47]
    // 0x73df48: StoreField: r2->field_4b = r0
    //     0x73df48: stur            w0, [x2, #0x4b]
    // 0x73df4c: r1 = Instance_Icon
    //     0x73df4c: add             x1, PP, #0x19, lsl #12  ; [pp+0x19540] Obj!Icon@a1ecf1
    //     0x73df50: ldr             x1, [x1, #0x540]
    // 0x73df54: StoreField: r2->field_73 = r1
    //     0x73df54: stur            w1, [x2, #0x73]
    // 0x73df58: StoreField: r2->field_af = r0
    //     0x73df58: stur            w0, [x2, #0xaf]
    // 0x73df5c: r3 = Instance_Color
    //     0x73df5c: add             x3, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x73df60: ldr             x3, [x3, #0x1c0]
    // 0x73df64: StoreField: r2->field_b3 = r3
    //     0x73df64: stur            w3, [x2, #0xb3]
    // 0x73df68: ldur            x1, [fp, #-0x70]
    // 0x73df6c: StoreField: r2->field_cf = r1
    //     0x73df6c: stur            w1, [x2, #0xcf]
    // 0x73df70: ldur            x1, [fp, #-0x68]
    // 0x73df74: StoreField: r2->field_d3 = r1
    //     0x73df74: stur            w1, [x2, #0xd3]
    // 0x73df78: StoreField: r2->field_d7 = r0
    //     0x73df78: stur            w0, [x2, #0xd7]
    // 0x73df7c: ldur            x4, [fp, #-0x10]
    // 0x73df80: LoadField: r1 = r4->field_33
    //     0x73df80: ldur            w1, [x4, #0x33]
    // 0x73df84: DecompressPointer r1
    //     0x73df84: add             x1, x1, HEAP, lsl #32
    // 0x73df88: cmp             w1, NULL
    // 0x73df8c: b.eq            #0x73e170
    // 0x73df90: r0 = _parts()
    //     0x73df90: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x73df94: mov             x2, x0
    // 0x73df98: LoadField: r0 = r2->field_b
    //     0x73df98: ldur            w0, [x2, #0xb]
    // 0x73df9c: r1 = LoadInt32Instr(r0)
    //     0x73df9c: sbfx            x1, x0, #1, #0x1f
    // 0x73dfa0: mov             x0, x1
    // 0x73dfa4: r1 = 5
    //     0x73dfa4: mov             x1, #5
    // 0x73dfa8: cmp             x1, x0
    // 0x73dfac: b.hs            #0x73eb18
    // 0x73dfb0: LoadField: r0 = r2->field_23
    //     0x73dfb0: ldur            w0, [x2, #0x23]
    // 0x73dfb4: DecompressPointer r0
    //     0x73dfb4: add             x0, x0, HEAP, lsl #32
    // 0x73dfb8: r1 = 60
    //     0x73dfb8: mov             x1, #0x3c
    // 0x73dfbc: branchIfSmi(r0, 0x73dfc8)
    //     0x73dfbc: tbz             w0, #0, #0x73dfc8
    // 0x73dfc0: r1 = LoadClassIdInstr(r0)
    //     0x73dfc0: ldur            x1, [x0, #-1]
    //     0x73dfc4: ubfx            x1, x1, #0xc, #0x14
    // 0x73dfc8: str             x0, [SP]
    // 0x73dfcc: mov             x0, x1
    // 0x73dfd0: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x73dfd0: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x73dfd4: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x73dfd4: mov             x17, #0x21f6
    //     0x73dfd8: add             lr, x0, x17
    //     0x73dfdc: ldr             lr, [x21, lr, lsl #3]
    //     0x73dfe0: blr             lr
    // 0x73dfe4: r1 = LoadClassIdInstr(r0)
    //     0x73dfe4: ldur            x1, [x0, #-1]
    //     0x73dfe8: ubfx            x1, x1, #0xc, #0x14
    // 0x73dfec: mov             x16, x0
    // 0x73dff0: mov             x0, x1
    // 0x73dff4: mov             x1, x16
    // 0x73dff8: r2 = 2
    //     0x73dff8: mov             x2, #2
    // 0x73dffc: r3 = "0"
    //     0x73dffc: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x73e000: r0 = GDT[cid_x0 + -0xffc]()
    //     0x73e000: sub             lr, x0, #0xffc
    //     0x73e004: ldr             lr, [x21, lr, lsl #3]
    //     0x73e008: blr             lr
    // 0x73e00c: r1 = Null
    //     0x73e00c: mov             x1, NULL
    // 0x73e010: r2 = 10
    //     0x73e010: mov             x2, #0xa
    // 0x73e014: stur            x0, [fp, #-0x68]
    // 0x73e018: r0 = AllocateArray()
    //     0x73e018: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73e01c: mov             x2, x0
    // 0x73e020: ldur            x0, [fp, #-0x68]
    // 0x73e024: stur            x2, [fp, #-0x70]
    // 0x73e028: StoreField: r2->field_f = r0
    //     0x73e028: stur            w0, [x2, #0xf]
    // 0x73e02c: r16 = "/"
    //     0x73e02c: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x73e030: StoreField: r2->field_13 = r16
    //     0x73e030: stur            w16, [x2, #0x13]
    // 0x73e034: ldur            x0, [fp, #-0x10]
    // 0x73e038: LoadField: r1 = r0->field_33
    //     0x73e038: ldur            w1, [x0, #0x33]
    // 0x73e03c: DecompressPointer r1
    //     0x73e03c: add             x1, x1, HEAP, lsl #32
    // 0x73e040: cmp             w1, NULL
    // 0x73e044: b.eq            #0x73eb1c
    // 0x73e048: r0 = _parts()
    //     0x73e048: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x73e04c: mov             x2, x0
    // 0x73e050: LoadField: r0 = r2->field_b
    //     0x73e050: ldur            w0, [x2, #0xb]
    // 0x73e054: r1 = LoadInt32Instr(r0)
    //     0x73e054: sbfx            x1, x0, #1, #0x1f
    // 0x73e058: mov             x0, x1
    // 0x73e05c: r1 = 7
    //     0x73e05c: mov             x1, #7
    // 0x73e060: cmp             x1, x0
    // 0x73e064: b.hs            #0x73eb20
    // 0x73e068: LoadField: r0 = r2->field_2b
    //     0x73e068: ldur            w0, [x2, #0x2b]
    // 0x73e06c: DecompressPointer r0
    //     0x73e06c: add             x0, x0, HEAP, lsl #32
    // 0x73e070: r1 = 60
    //     0x73e070: mov             x1, #0x3c
    // 0x73e074: branchIfSmi(r0, 0x73e080)
    //     0x73e074: tbz             w0, #0, #0x73e080
    // 0x73e078: r1 = LoadClassIdInstr(r0)
    //     0x73e078: ldur            x1, [x0, #-1]
    //     0x73e07c: ubfx            x1, x1, #0xc, #0x14
    // 0x73e080: str             x0, [SP]
    // 0x73e084: mov             x0, x1
    // 0x73e088: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x73e088: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x73e08c: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x73e08c: mov             x17, #0x21f6
    //     0x73e090: add             lr, x0, x17
    //     0x73e094: ldr             lr, [x21, lr, lsl #3]
    //     0x73e098: blr             lr
    // 0x73e09c: r1 = LoadClassIdInstr(r0)
    //     0x73e09c: ldur            x1, [x0, #-1]
    //     0x73e0a0: ubfx            x1, x1, #0xc, #0x14
    // 0x73e0a4: mov             x16, x0
    // 0x73e0a8: mov             x0, x1
    // 0x73e0ac: mov             x1, x16
    // 0x73e0b0: r2 = 2
    //     0x73e0b0: mov             x2, #2
    // 0x73e0b4: r3 = "0"
    //     0x73e0b4: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x73e0b8: r0 = GDT[cid_x0 + -0xffc]()
    //     0x73e0b8: sub             lr, x0, #0xffc
    //     0x73e0bc: ldr             lr, [x21, lr, lsl #3]
    //     0x73e0c0: blr             lr
    // 0x73e0c4: ldur            x1, [fp, #-0x70]
    // 0x73e0c8: ArrayStore: r1[2] = r0  ; List_4
    //     0x73e0c8: add             x25, x1, #0x17
    //     0x73e0cc: str             w0, [x25]
    //     0x73e0d0: tbz             w0, #0, #0x73e0ec
    //     0x73e0d4: ldurb           w16, [x1, #-1]
    //     0x73e0d8: ldurb           w17, [x0, #-1]
    //     0x73e0dc: and             x16, x17, x16, lsr #2
    //     0x73e0e0: tst             x16, HEAP, lsr #32
    //     0x73e0e4: b.eq            #0x73e0ec
    //     0x73e0e8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73e0ec: ldur            x0, [fp, #-0x70]
    // 0x73e0f0: r16 = "/"
    //     0x73e0f0: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x73e0f4: StoreField: r0->field_1b = r16
    //     0x73e0f4: stur            w16, [x0, #0x1b]
    // 0x73e0f8: ldur            x2, [fp, #-0x10]
    // 0x73e0fc: LoadField: r1 = r2->field_33
    //     0x73e0fc: ldur            w1, [x2, #0x33]
    // 0x73e100: DecompressPointer r1
    //     0x73e100: add             x1, x1, HEAP, lsl #32
    // 0x73e104: cmp             w1, NULL
    // 0x73e108: b.eq            #0x73eb24
    // 0x73e10c: r0 = _parts()
    //     0x73e10c: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x73e110: mov             x2, x0
    // 0x73e114: LoadField: r0 = r2->field_b
    //     0x73e114: ldur            w0, [x2, #0xb]
    // 0x73e118: r1 = LoadInt32Instr(r0)
    //     0x73e118: sbfx            x1, x0, #1, #0x1f
    // 0x73e11c: mov             x0, x1
    // 0x73e120: r1 = 8
    //     0x73e120: mov             x1, #8
    // 0x73e124: cmp             x1, x0
    // 0x73e128: b.hs            #0x73eb28
    // 0x73e12c: LoadField: r0 = r2->field_2f
    //     0x73e12c: ldur            w0, [x2, #0x2f]
    // 0x73e130: DecompressPointer r0
    //     0x73e130: add             x0, x0, HEAP, lsl #32
    // 0x73e134: ldur            x1, [fp, #-0x70]
    // 0x73e138: ArrayStore: r1[4] = r0  ; List_4
    //     0x73e138: add             x25, x1, #0x1f
    //     0x73e13c: str             w0, [x25]
    //     0x73e140: tbz             w0, #0, #0x73e15c
    //     0x73e144: ldurb           w16, [x1, #-1]
    //     0x73e148: ldurb           w17, [x0, #-1]
    //     0x73e14c: and             x16, x17, x16, lsr #2
    //     0x73e150: tst             x16, HEAP, lsr #32
    //     0x73e154: b.eq            #0x73e15c
    //     0x73e158: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73e15c: ldur            x16, [fp, #-0x70]
    // 0x73e160: str             x16, [SP]
    // 0x73e164: r0 = _interpolate()
    //     0x73e164: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x73e168: mov             x1, x0
    // 0x73e16c: b               #0x73e178
    // 0x73e170: r1 = "Tarih Seçiniz"
    //     0x73e170: add             x1, PP, #0x18, lsl #12  ; [pp+0x187b0] "Tarih Seçiniz"
    //     0x73e174: ldr             x1, [x1, #0x7b0]
    // 0x73e178: ldur            x0, [fp, #-0x10]
    // 0x73e17c: stur            x1, [fp, #-0x70]
    // 0x73e180: LoadField: r2 = r0->field_33
    //     0x73e180: ldur            w2, [x0, #0x33]
    // 0x73e184: DecompressPointer r2
    //     0x73e184: add             x2, x2, HEAP, lsl #32
    // 0x73e188: cmp             w2, NULL
    // 0x73e18c: b.eq            #0x73e198
    // 0x73e190: r5 = Instance_Color
    //     0x73e190: ldr             x5, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73e194: b               #0x73e1a0
    // 0x73e198: r5 = Instance_Color
    //     0x73e198: add             x5, PP, #0x19, lsl #12  ; [pp+0x191e8] Obj!Color@a25301
    //     0x73e19c: ldr             x5, [x5, #0x1e8]
    // 0x73e1a0: ldur            x4, [fp, #-0x50]
    // 0x73e1a4: ldur            x3, [fp, #-0x48]
    // 0x73e1a8: ldur            x2, [fp, #-0x78]
    // 0x73e1ac: stur            x5, [fp, #-0x68]
    // 0x73e1b0: r0 = TextStyle()
    //     0x73e1b0: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x73e1b4: mov             x1, x0
    // 0x73e1b8: r0 = true
    //     0x73e1b8: add             x0, NULL, #0x20  ; true
    // 0x73e1bc: stur            x1, [fp, #-0x80]
    // 0x73e1c0: StoreField: r1->field_7 = r0
    //     0x73e1c0: stur            w0, [x1, #7]
    // 0x73e1c4: ldur            x2, [fp, #-0x68]
    // 0x73e1c8: StoreField: r1->field_b = r2
    //     0x73e1c8: stur            w2, [x1, #0xb]
    // 0x73e1cc: r0 = Text()
    //     0x73e1cc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x73e1d0: mov             x1, x0
    // 0x73e1d4: ldur            x0, [fp, #-0x70]
    // 0x73e1d8: stur            x1, [fp, #-0x68]
    // 0x73e1dc: StoreField: r1->field_b = r0
    //     0x73e1dc: stur            w0, [x1, #0xb]
    // 0x73e1e0: ldur            x0, [fp, #-0x80]
    // 0x73e1e4: StoreField: r1->field_13 = r0
    //     0x73e1e4: stur            w0, [x1, #0x13]
    // 0x73e1e8: r0 = InputDecorator()
    //     0x73e1e8: bl              #0x67e7d0  ; AllocateInputDecoratorStub -> InputDecorator (size=0x30)
    // 0x73e1ec: mov             x1, x0
    // 0x73e1f0: ldur            x0, [fp, #-0x78]
    // 0x73e1f4: stur            x1, [fp, #-0x70]
    // 0x73e1f8: StoreField: r1->field_b = r0
    //     0x73e1f8: stur            w0, [x1, #0xb]
    // 0x73e1fc: r0 = false
    //     0x73e1fc: add             x0, NULL, #0x30  ; false
    // 0x73e200: StoreField: r1->field_1b = r0
    //     0x73e200: stur            w0, [x1, #0x1b]
    // 0x73e204: StoreField: r1->field_1f = r0
    //     0x73e204: stur            w0, [x1, #0x1f]
    // 0x73e208: StoreField: r1->field_23 = r0
    //     0x73e208: stur            w0, [x1, #0x23]
    // 0x73e20c: StoreField: r1->field_27 = r0
    //     0x73e20c: stur            w0, [x1, #0x27]
    // 0x73e210: ldur            x2, [fp, #-0x68]
    // 0x73e214: StoreField: r1->field_2b = r2
    //     0x73e214: stur            w2, [x1, #0x2b]
    // 0x73e218: r0 = InkWell()
    //     0x73e218: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x73e21c: mov             x3, x0
    // 0x73e220: ldur            x0, [fp, #-0x70]
    // 0x73e224: stur            x3, [fp, #-0x68]
    // 0x73e228: StoreField: r3->field_b = r0
    //     0x73e228: stur            w0, [x3, #0xb]
    // 0x73e22c: ldur            x2, [fp, #-0x18]
    // 0x73e230: r1 = Function '<anonymous closure>':.
    //     0x73e230: add             x1, PP, #0x19, lsl #12  ; [pp+0x19548] AnonymousClosure: (0x740e54), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x73e234: ldr             x1, [x1, #0x548]
    // 0x73e238: r0 = AllocateClosure()
    //     0x73e238: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73e23c: mov             x1, x0
    // 0x73e240: ldur            x0, [fp, #-0x68]
    // 0x73e244: StoreField: r0->field_f = r1
    //     0x73e244: stur            w1, [x0, #0xf]
    // 0x73e248: r2 = true
    //     0x73e248: add             x2, NULL, #0x20  ; true
    // 0x73e24c: StoreField: r0->field_47 = r2
    //     0x73e24c: stur            w2, [x0, #0x47]
    // 0x73e250: r1 = Instance_BoxShape
    //     0x73e250: add             x1, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x73e254: ldr             x1, [x1, #0x1c8]
    // 0x73e258: StoreField: r0->field_4b = r1
    //     0x73e258: stur            w1, [x0, #0x4b]
    // 0x73e25c: StoreField: r0->field_73 = r2
    //     0x73e25c: stur            w2, [x0, #0x73]
    // 0x73e260: r3 = false
    //     0x73e260: add             x3, NULL, #0x30  ; false
    // 0x73e264: StoreField: r0->field_77 = r3
    //     0x73e264: stur            w3, [x0, #0x77]
    // 0x73e268: StoreField: r0->field_87 = r2
    //     0x73e268: stur            w2, [x0, #0x87]
    // 0x73e26c: StoreField: r0->field_7f = r3
    //     0x73e26c: stur            w3, [x0, #0x7f]
    // 0x73e270: ldur            x1, [fp, #-0x48]
    // 0x73e274: ArrayStore: r1[14] = r0  ; List_4
    //     0x73e274: add             x25, x1, #0x47
    //     0x73e278: str             w0, [x25]
    //     0x73e27c: tbz             w0, #0, #0x73e298
    //     0x73e280: ldurb           w16, [x1, #-1]
    //     0x73e284: ldurb           w17, [x0, #-1]
    //     0x73e288: and             x16, x17, x16, lsr #2
    //     0x73e28c: tst             x16, HEAP, lsr #32
    //     0x73e290: b.eq            #0x73e298
    //     0x73e294: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73e298: r1 = <Widget>
    //     0x73e298: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73e29c: r0 = AllocateGrowableArray()
    //     0x73e29c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x73e2a0: mov             x3, x0
    // 0x73e2a4: ldur            x0, [fp, #-0x48]
    // 0x73e2a8: stur            x3, [fp, #-0x68]
    // 0x73e2ac: StoreField: r3->field_f = r0
    //     0x73e2ac: stur            w0, [x3, #0xf]
    // 0x73e2b0: r0 = 30
    //     0x73e2b0: mov             x0, #0x1e
    // 0x73e2b4: StoreField: r3->field_b = r0
    //     0x73e2b4: stur            w0, [x3, #0xb]
    // 0x73e2b8: ldur            x0, [fp, #-0x50]
    // 0x73e2bc: tbnz            w0, #4, #0x73e848
    // 0x73e2c0: ldur            x4, [fp, #-0x10]
    // 0x73e2c4: r5 = 28
    //     0x73e2c4: mov             x5, #0x1c
    // 0x73e2c8: mov             x2, x5
    // 0x73e2cc: r1 = <Widget>
    //     0x73e2cc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73e2d0: r0 = AllocateArray()
    //     0x73e2d0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73e2d4: stur            x0, [fp, #-0x78]
    // 0x73e2d8: r16 = Instance_SizedBox
    //     0x73e2d8: add             x16, PP, #0x15, lsl #12  ; [pp+0x15470] Obj!SizedBox@a1fb71
    //     0x73e2dc: ldr             x16, [x16, #0x470]
    // 0x73e2e0: StoreField: r0->field_f = r16
    //     0x73e2e0: stur            w16, [x0, #0xf]
    // 0x73e2e4: r16 = Instance_Divider
    //     0x73e2e4: add             x16, PP, #0x19, lsl #12  ; [pp+0x19550] Obj!Divider@a1f7a1
    //     0x73e2e8: ldr             x16, [x16, #0x550]
    // 0x73e2ec: StoreField: r0->field_13 = r16
    //     0x73e2ec: stur            w16, [x0, #0x13]
    // 0x73e2f0: r16 = Instance_SizedBox
    //     0x73e2f0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x73e2f4: ldr             x16, [x16, #0x220]
    // 0x73e2f8: ArrayStore: r0[0] = r16  ; List_4
    //     0x73e2f8: stur            w16, [x0, #0x17]
    // 0x73e2fc: r16 = Instance_Text
    //     0x73e2fc: add             x16, PP, #0x19, lsl #12  ; [pp+0x19558] Obj!Text@a1d021
    //     0x73e300: ldr             x16, [x16, #0x558]
    // 0x73e304: StoreField: r0->field_1b = r16
    //     0x73e304: stur            w16, [x0, #0x1b]
    // 0x73e308: r16 = Instance_SizedBox
    //     0x73e308: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x73e30c: ldr             x16, [x16, #0x220]
    // 0x73e310: StoreField: r0->field_1f = r16
    //     0x73e310: stur            w16, [x0, #0x1f]
    // 0x73e314: ldur            x3, [fp, #-0x10]
    // 0x73e318: LoadField: r4 = r3->field_f
    //     0x73e318: ldur            w4, [x3, #0xf]
    // 0x73e31c: DecompressPointer r4
    //     0x73e31c: add             x4, x4, HEAP, lsl #32
    // 0x73e320: stur            x4, [fp, #-0x70]
    // 0x73e324: LoadField: r5 = r3->field_37
    //     0x73e324: ldur            w5, [x3, #0x37]
    // 0x73e328: DecompressPointer r5
    //     0x73e328: add             x5, x5, HEAP, lsl #32
    // 0x73e32c: ldur            x2, [fp, #-0x18]
    // 0x73e330: stur            x5, [fp, #-0x48]
    // 0x73e334: r1 = Function '<anonymous closure>':.
    //     0x73e334: add             x1, PP, #0x19, lsl #12  ; [pp+0x19560] AnonymousClosure: (0x740d6c), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x73e338: ldr             x1, [x1, #0x560]
    // 0x73e33c: r0 = AllocateClosure()
    //     0x73e33c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73e340: ldur            x1, [fp, #-0x70]
    // 0x73e344: ldur            x2, [fp, #-0x48]
    // 0x73e348: mov             x3, x0
    // 0x73e34c: r0 = _buildLocationSelector()
    //     0x73e34c: bl              #0x73f2ec  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_buildLocationSelector
    // 0x73e350: ldur            x1, [fp, #-0x78]
    // 0x73e354: ArrayStore: r1[5] = r0  ; List_4
    //     0x73e354: add             x25, x1, #0x23
    //     0x73e358: str             w0, [x25]
    //     0x73e35c: tbz             w0, #0, #0x73e378
    //     0x73e360: ldurb           w16, [x1, #-1]
    //     0x73e364: ldurb           w17, [x0, #-1]
    //     0x73e368: and             x16, x17, x16, lsr #2
    //     0x73e36c: tst             x16, HEAP, lsr #32
    //     0x73e370: b.eq            #0x73e378
    //     0x73e374: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73e378: ldur            x0, [fp, #-0x78]
    // 0x73e37c: r16 = Instance_SizedBox
    //     0x73e37c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x73e380: ldr             x16, [x16, #0x220]
    // 0x73e384: StoreField: r0->field_27 = r16
    //     0x73e384: stur            w16, [x0, #0x27]
    // 0x73e388: ldur            x3, [fp, #-0x10]
    // 0x73e38c: LoadField: r4 = r3->field_37
    //     0x73e38c: ldur            w4, [x3, #0x37]
    // 0x73e390: DecompressPointer r4
    //     0x73e390: add             x4, x4, HEAP, lsl #32
    // 0x73e394: stur            x4, [fp, #-0x48]
    // 0x73e398: r1 = Null
    //     0x73e398: mov             x1, NULL
    // 0x73e39c: r2 = 4
    //     0x73e39c: mov             x2, #4
    // 0x73e3a0: r0 = AllocateArray()
    //     0x73e3a0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73e3a4: mov             x1, x0
    // 0x73e3a8: ldur            x0, [fp, #-0x48]
    // 0x73e3ac: StoreField: r1->field_f = r0
    //     0x73e3ac: stur            w0, [x1, #0xf]
    // 0x73e3b0: r16 = " Seferi"
    //     0x73e3b0: add             x16, PP, #0x19, lsl #12  ; [pp+0x19568] " Seferi"
    //     0x73e3b4: ldr             x16, [x16, #0x568]
    // 0x73e3b8: StoreField: r1->field_13 = r16
    //     0x73e3b8: stur            w16, [x1, #0x13]
    // 0x73e3bc: str             x1, [SP]
    // 0x73e3c0: r0 = _interpolate()
    //     0x73e3c0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x73e3c4: r16 = Instance_IconData
    //     0x73e3c4: add             x16, PP, #0x15, lsl #12  ; [pp+0x15608] Obj!IconData@a0a641
    //     0x73e3c8: ldr             x16, [x16, #0x608]
    // 0x73e3cc: str             x16, [SP]
    // 0x73e3d0: mov             x1, x0
    // 0x73e3d4: r4 = const [0, 0x2, 0x1, 0x1, prefixIcon, 0x1, null]
    //     0x73e3d4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19570] List(7) [0, 0x2, 0x1, 0x1, "prefixIcon", 0x1, Null]
    //     0x73e3d8: ldr             x4, [x4, #0x570]
    // 0x73e3dc: r0 = buildDropdownDecoration()
    //     0x73e3dc: bl              #0x6f4f28  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDropdownDecoration
    // 0x73e3e0: r1 = Null
    //     0x73e3e0: mov             x1, NULL
    // 0x73e3e4: r2 = 2
    //     0x73e3e4: mov             x2, #2
    // 0x73e3e8: stur            x0, [fp, #-0x48]
    // 0x73e3ec: r0 = AllocateArray()
    //     0x73e3ec: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73e3f0: stur            x0, [fp, #-0x70]
    // 0x73e3f4: r16 = Instance_DropdownMenuItem
    //     0x73e3f4: add             x16, PP, #0x19, lsl #12  ; [pp+0x19578] Obj!DropdownMenuItem<String?>@a1f621
    //     0x73e3f8: ldr             x16, [x16, #0x578]
    // 0x73e3fc: StoreField: r0->field_f = r16
    //     0x73e3fc: stur            w16, [x0, #0xf]
    // 0x73e400: r1 = <DropdownMenuItem<String?>>
    //     0x73e400: add             x1, PP, #0x14, lsl #12  ; [pp+0x148e0] TypeArguments: <DropdownMenuItem<String?>>
    //     0x73e404: ldr             x1, [x1, #0x8e0]
    // 0x73e408: r0 = AllocateGrowableArray()
    //     0x73e408: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x73e40c: mov             x3, x0
    // 0x73e410: ldur            x0, [fp, #-0x70]
    // 0x73e414: stur            x3, [fp, #-0x80]
    // 0x73e418: StoreField: r3->field_f = r0
    //     0x73e418: stur            w0, [x3, #0xf]
    // 0x73e41c: r0 = 2
    //     0x73e41c: mov             x0, #2
    // 0x73e420: StoreField: r3->field_b = r0
    //     0x73e420: stur            w0, [x3, #0xb]
    // 0x73e424: r1 = Function '<anonymous closure>':.
    //     0x73e424: add             x1, PP, #0x19, lsl #12  ; [pp+0x19580] AnonymousClosure: (0x6f42e8), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::showRoomDialog (0x6f6a1c)
    //     0x73e428: ldr             x1, [x1, #0x580]
    // 0x73e42c: r2 = Null
    //     0x73e42c: mov             x2, NULL
    // 0x73e430: r0 = AllocateClosure()
    //     0x73e430: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73e434: r16 = <DropdownMenuItem<String?>>
    //     0x73e434: add             x16, PP, #0x14, lsl #12  ; [pp+0x148e0] TypeArguments: <DropdownMenuItem<String?>>
    //     0x73e438: ldr             x16, [x16, #0x8e0]
    // 0x73e43c: ldur            lr, [fp, #-8]
    // 0x73e440: stp             lr, x16, [SP, #8]
    // 0x73e444: str             x0, [SP]
    // 0x73e448: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x73e448: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x73e44c: r0 = map()
    //     0x73e44c: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x73e450: ldur            x1, [fp, #-0x80]
    // 0x73e454: mov             x2, x0
    // 0x73e458: r0 = addAll()
    //     0x73e458: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x73e45c: ldur            x2, [fp, #-0x18]
    // 0x73e460: r1 = Function '<anonymous closure>':.
    //     0x73e460: add             x1, PP, #0x19, lsl #12  ; [pp+0x19588] AnonymousClosure: (0x740be4), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x73e464: ldr             x1, [x1, #0x588]
    // 0x73e468: r0 = AllocateClosure()
    //     0x73e468: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73e46c: r1 = <String?>
    //     0x73e46c: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x73e470: stur            x0, [fp, #-8]
    // 0x73e474: r0 = DropdownButtonFormField()
    //     0x73e474: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x73e478: stur            x0, [fp, #-0x70]
    // 0x73e47c: r16 = Instance_Color
    //     0x73e47c: add             x16, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x73e480: ldr             x16, [x16, #0x1c0]
    // 0x73e484: r30 = Instance_TextStyle
    //     0x73e484: add             lr, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x73e488: ldr             lr, [lr, #0x158]
    // 0x73e48c: stp             lr, x16, [SP]
    // 0x73e490: mov             x1, x0
    // 0x73e494: ldur            x2, [fp, #-0x48]
    // 0x73e498: ldur            x3, [fp, #-0x30]
    // 0x73e49c: ldur            x5, [fp, #-0x80]
    // 0x73e4a0: ldur            x6, [fp, #-8]
    // 0x73e4a4: r4 = const [0, 0x7, 0x2, 0x5, dropdownColor, 0x5, style, 0x6, null]
    //     0x73e4a4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19250] List(9) [0, 0x7, 0x2, 0x5, "dropdownColor", 0x5, "style", 0x6, Null]
    //     0x73e4a8: ldr             x4, [x4, #0x250]
    // 0x73e4ac: r0 = DropdownButtonFormField()
    //     0x73e4ac: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x73e4b0: ldur            x1, [fp, #-0x78]
    // 0x73e4b4: ldur            x0, [fp, #-0x70]
    // 0x73e4b8: ArrayStore: r1[7] = r0  ; List_4
    //     0x73e4b8: add             x25, x1, #0x2b
    //     0x73e4bc: str             w0, [x25]
    //     0x73e4c0: tbz             w0, #0, #0x73e4dc
    //     0x73e4c4: ldurb           w16, [x1, #-1]
    //     0x73e4c8: ldurb           w17, [x0, #-1]
    //     0x73e4cc: and             x16, x17, x16, lsr #2
    //     0x73e4d0: tst             x16, HEAP, lsr #32
    //     0x73e4d4: b.eq            #0x73e4dc
    //     0x73e4d8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73e4dc: ldur            x0, [fp, #-0x78]
    // 0x73e4e0: r16 = Instance_SizedBox
    //     0x73e4e0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x73e4e4: ldr             x16, [x16, #0x220]
    // 0x73e4e8: StoreField: r0->field_2f = r16
    //     0x73e4e8: stur            w16, [x0, #0x2f]
    // 0x73e4ec: ldur            x3, [fp, #-0x10]
    // 0x73e4f0: LoadField: r4 = r3->field_37
    //     0x73e4f0: ldur            w4, [x3, #0x37]
    // 0x73e4f4: DecompressPointer r4
    //     0x73e4f4: add             x4, x4, HEAP, lsl #32
    // 0x73e4f8: stur            x4, [fp, #-8]
    // 0x73e4fc: r1 = Null
    //     0x73e4fc: mov             x1, NULL
    // 0x73e500: r2 = 4
    //     0x73e500: mov             x2, #4
    // 0x73e504: r0 = AllocateArray()
    //     0x73e504: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73e508: mov             x1, x0
    // 0x73e50c: ldur            x0, [fp, #-8]
    // 0x73e510: StoreField: r1->field_f = r0
    //     0x73e510: stur            w0, [x1, #0xf]
    // 0x73e514: r16 = " Oteli"
    //     0x73e514: add             x16, PP, #0x19, lsl #12  ; [pp+0x19590] " Oteli"
    //     0x73e518: ldr             x16, [x16, #0x590]
    // 0x73e51c: StoreField: r1->field_13 = r16
    //     0x73e51c: stur            w16, [x1, #0x13]
    // 0x73e520: str             x1, [SP]
    // 0x73e524: r0 = _interpolate()
    //     0x73e524: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x73e528: r16 = Instance_IconData
    //     0x73e528: add             x16, PP, #0x12, lsl #12  ; [pp+0x127a0] Obj!IconData@a09da1
    //     0x73e52c: ldr             x16, [x16, #0x7a0]
    // 0x73e530: str             x16, [SP]
    // 0x73e534: mov             x1, x0
    // 0x73e538: r4 = const [0, 0x2, 0x1, 0x1, prefixIcon, 0x1, null]
    //     0x73e538: add             x4, PP, #0x19, lsl #12  ; [pp+0x19570] List(7) [0, 0x2, 0x1, 0x1, "prefixIcon", 0x1, Null]
    //     0x73e53c: ldr             x4, [x4, #0x570]
    // 0x73e540: r0 = buildDropdownDecoration()
    //     0x73e540: bl              #0x6f4f28  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDropdownDecoration
    // 0x73e544: r1 = Null
    //     0x73e544: mov             x1, NULL
    // 0x73e548: r2 = 2
    //     0x73e548: mov             x2, #2
    // 0x73e54c: stur            x0, [fp, #-8]
    // 0x73e550: r0 = AllocateArray()
    //     0x73e550: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73e554: stur            x0, [fp, #-0x30]
    // 0x73e558: r16 = Instance_DropdownMenuItem
    //     0x73e558: add             x16, PP, #0x19, lsl #12  ; [pp+0x19578] Obj!DropdownMenuItem<String?>@a1f621
    //     0x73e55c: ldr             x16, [x16, #0x578]
    // 0x73e560: StoreField: r0->field_f = r16
    //     0x73e560: stur            w16, [x0, #0xf]
    // 0x73e564: r1 = <DropdownMenuItem<String?>>
    //     0x73e564: add             x1, PP, #0x14, lsl #12  ; [pp+0x148e0] TypeArguments: <DropdownMenuItem<String?>>
    //     0x73e568: ldr             x1, [x1, #0x8e0]
    // 0x73e56c: r0 = AllocateGrowableArray()
    //     0x73e56c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x73e570: mov             x3, x0
    // 0x73e574: ldur            x0, [fp, #-0x30]
    // 0x73e578: stur            x3, [fp, #-0x48]
    // 0x73e57c: StoreField: r3->field_f = r0
    //     0x73e57c: stur            w0, [x3, #0xf]
    // 0x73e580: r0 = 2
    //     0x73e580: mov             x0, #2
    // 0x73e584: StoreField: r3->field_b = r0
    //     0x73e584: stur            w0, [x3, #0xb]
    // 0x73e588: r1 = Function '<anonymous closure>':.
    //     0x73e588: add             x1, PP, #0x19, lsl #12  ; [pp+0x19598] AnonymousClosure: (0x6f42e8), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::showRoomDialog (0x6f6a1c)
    //     0x73e58c: ldr             x1, [x1, #0x598]
    // 0x73e590: r2 = Null
    //     0x73e590: mov             x2, NULL
    // 0x73e594: r0 = AllocateClosure()
    //     0x73e594: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73e598: r16 = <DropdownMenuItem<String?>>
    //     0x73e598: add             x16, PP, #0x14, lsl #12  ; [pp+0x148e0] TypeArguments: <DropdownMenuItem<String?>>
    //     0x73e59c: ldr             x16, [x16, #0x8e0]
    // 0x73e5a0: ldur            lr, [fp, #-0x20]
    // 0x73e5a4: stp             lr, x16, [SP, #8]
    // 0x73e5a8: str             x0, [SP]
    // 0x73e5ac: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x73e5ac: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x73e5b0: r0 = map()
    //     0x73e5b0: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x73e5b4: ldur            x1, [fp, #-0x48]
    // 0x73e5b8: mov             x2, x0
    // 0x73e5bc: r0 = addAll()
    //     0x73e5bc: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x73e5c0: ldur            x2, [fp, #-0x18]
    // 0x73e5c4: r1 = Function '<anonymous closure>':.
    //     0x73e5c4: add             x1, PP, #0x19, lsl #12  ; [pp+0x195a0] AnonymousClosure: (0x740a64), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x73e5c8: ldr             x1, [x1, #0x5a0]
    // 0x73e5cc: r0 = AllocateClosure()
    //     0x73e5cc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73e5d0: r1 = <String?>
    //     0x73e5d0: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x73e5d4: stur            x0, [fp, #-0x20]
    // 0x73e5d8: r0 = DropdownButtonFormField()
    //     0x73e5d8: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x73e5dc: stur            x0, [fp, #-0x30]
    // 0x73e5e0: r16 = Instance_Color
    //     0x73e5e0: add             x16, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x73e5e4: ldr             x16, [x16, #0x1c0]
    // 0x73e5e8: r30 = Instance_TextStyle
    //     0x73e5e8: add             lr, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x73e5ec: ldr             lr, [lr, #0x158]
    // 0x73e5f0: stp             lr, x16, [SP]
    // 0x73e5f4: mov             x1, x0
    // 0x73e5f8: ldur            x2, [fp, #-8]
    // 0x73e5fc: ldur            x3, [fp, #-0x38]
    // 0x73e600: ldur            x5, [fp, #-0x48]
    // 0x73e604: ldur            x6, [fp, #-0x20]
    // 0x73e608: r4 = const [0, 0x7, 0x2, 0x5, dropdownColor, 0x5, style, 0x6, null]
    //     0x73e608: add             x4, PP, #0x19, lsl #12  ; [pp+0x19250] List(9) [0, 0x7, 0x2, 0x5, "dropdownColor", 0x5, "style", 0x6, Null]
    //     0x73e60c: ldr             x4, [x4, #0x250]
    // 0x73e610: r0 = DropdownButtonFormField()
    //     0x73e610: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x73e614: ldur            x1, [fp, #-0x78]
    // 0x73e618: ldur            x0, [fp, #-0x30]
    // 0x73e61c: ArrayStore: r1[9] = r0  ; List_4
    //     0x73e61c: add             x25, x1, #0x33
    //     0x73e620: str             w0, [x25]
    //     0x73e624: tbz             w0, #0, #0x73e640
    //     0x73e628: ldurb           w16, [x1, #-1]
    //     0x73e62c: ldurb           w17, [x0, #-1]
    //     0x73e630: and             x16, x17, x16, lsr #2
    //     0x73e634: tst             x16, HEAP, lsr #32
    //     0x73e638: b.eq            #0x73e640
    //     0x73e63c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73e640: ldur            x0, [fp, #-0x78]
    // 0x73e644: r16 = Instance_SizedBox
    //     0x73e644: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x73e648: ldr             x16, [x16, #0x220]
    // 0x73e64c: StoreField: r0->field_37 = r16
    //     0x73e64c: stur            w16, [x0, #0x37]
    // 0x73e650: ldur            x3, [fp, #-0x10]
    // 0x73e654: LoadField: r4 = r3->field_37
    //     0x73e654: ldur            w4, [x3, #0x37]
    // 0x73e658: DecompressPointer r4
    //     0x73e658: add             x4, x4, HEAP, lsl #32
    // 0x73e65c: stur            x4, [fp, #-8]
    // 0x73e660: r1 = Null
    //     0x73e660: mov             x1, NULL
    // 0x73e664: r2 = 4
    //     0x73e664: mov             x2, #4
    // 0x73e668: r0 = AllocateArray()
    //     0x73e668: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73e66c: mov             x1, x0
    // 0x73e670: ldur            x0, [fp, #-8]
    // 0x73e674: StoreField: r1->field_f = r0
    //     0x73e674: stur            w0, [x1, #0xf]
    // 0x73e678: r16 = " Odası"
    //     0x73e678: add             x16, PP, #0x19, lsl #12  ; [pp+0x195a8] " Odası"
    //     0x73e67c: ldr             x16, [x16, #0x5a8]
    // 0x73e680: StoreField: r1->field_13 = r16
    //     0x73e680: stur            w16, [x1, #0x13]
    // 0x73e684: str             x1, [SP]
    // 0x73e688: r0 = _interpolate()
    //     0x73e688: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x73e68c: r16 = Instance_IconData
    //     0x73e68c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18f08] Obj!IconData@a0a761
    //     0x73e690: ldr             x16, [x16, #0xf08]
    // 0x73e694: str             x16, [SP]
    // 0x73e698: mov             x1, x0
    // 0x73e69c: r4 = const [0, 0x2, 0x1, 0x1, prefixIcon, 0x1, null]
    //     0x73e69c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19570] List(7) [0, 0x2, 0x1, 0x1, "prefixIcon", 0x1, Null]
    //     0x73e6a0: ldr             x4, [x4, #0x570]
    // 0x73e6a4: r0 = buildDropdownDecoration()
    //     0x73e6a4: bl              #0x6f4f28  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDropdownDecoration
    // 0x73e6a8: r1 = Null
    //     0x73e6a8: mov             x1, NULL
    // 0x73e6ac: r2 = 2
    //     0x73e6ac: mov             x2, #2
    // 0x73e6b0: stur            x0, [fp, #-8]
    // 0x73e6b4: r0 = AllocateArray()
    //     0x73e6b4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73e6b8: stur            x0, [fp, #-0x20]
    // 0x73e6bc: r16 = Instance_DropdownMenuItem
    //     0x73e6bc: add             x16, PP, #0x19, lsl #12  ; [pp+0x19578] Obj!DropdownMenuItem<String?>@a1f621
    //     0x73e6c0: ldr             x16, [x16, #0x578]
    // 0x73e6c4: StoreField: r0->field_f = r16
    //     0x73e6c4: stur            w16, [x0, #0xf]
    // 0x73e6c8: r1 = <DropdownMenuItem<String?>>
    //     0x73e6c8: add             x1, PP, #0x14, lsl #12  ; [pp+0x148e0] TypeArguments: <DropdownMenuItem<String?>>
    //     0x73e6cc: ldr             x1, [x1, #0x8e0]
    // 0x73e6d0: r0 = AllocateGrowableArray()
    //     0x73e6d0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x73e6d4: mov             x3, x0
    // 0x73e6d8: ldur            x0, [fp, #-0x20]
    // 0x73e6dc: stur            x3, [fp, #-0x30]
    // 0x73e6e0: StoreField: r3->field_f = r0
    //     0x73e6e0: stur            w0, [x3, #0xf]
    // 0x73e6e4: r0 = 2
    //     0x73e6e4: mov             x0, #2
    // 0x73e6e8: StoreField: r3->field_b = r0
    //     0x73e6e8: stur            w0, [x3, #0xb]
    // 0x73e6ec: ldur            x2, [fp, #-0x18]
    // 0x73e6f0: r1 = Function '<anonymous closure>':.
    //     0x73e6f0: add             x1, PP, #0x19, lsl #12  ; [pp+0x195b0] AnonymousClosure: (0x740650), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x73e6f4: ldr             x1, [x1, #0x5b0]
    // 0x73e6f8: r0 = AllocateClosure()
    //     0x73e6f8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73e6fc: r16 = <DropdownMenuItem<String?>>
    //     0x73e6fc: add             x16, PP, #0x14, lsl #12  ; [pp+0x148e0] TypeArguments: <DropdownMenuItem<String?>>
    //     0x73e700: ldr             x16, [x16, #0x8e0]
    // 0x73e704: ldur            lr, [fp, #-0x28]
    // 0x73e708: stp             lr, x16, [SP, #8]
    // 0x73e70c: str             x0, [SP]
    // 0x73e710: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x73e710: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x73e714: r0 = map()
    //     0x73e714: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x73e718: ldur            x1, [fp, #-0x30]
    // 0x73e71c: mov             x2, x0
    // 0x73e720: r0 = addAll()
    //     0x73e720: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x73e724: ldur            x2, [fp, #-0x18]
    // 0x73e728: r1 = Function '<anonymous closure>':.
    //     0x73e728: add             x1, PP, #0x19, lsl #12  ; [pp+0x195b8] AnonymousClosure: (0x7404d8), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x73e72c: ldr             x1, [x1, #0x5b8]
    // 0x73e730: r0 = AllocateClosure()
    //     0x73e730: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73e734: r1 = <String?>
    //     0x73e734: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x73e738: stur            x0, [fp, #-0x20]
    // 0x73e73c: r0 = DropdownButtonFormField()
    //     0x73e73c: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x73e740: stur            x0, [fp, #-0x28]
    // 0x73e744: r16 = Instance_Color
    //     0x73e744: add             x16, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x73e748: ldr             x16, [x16, #0x1c0]
    // 0x73e74c: r30 = Instance_TextStyle
    //     0x73e74c: add             lr, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x73e750: ldr             lr, [lr, #0x158]
    // 0x73e754: stp             lr, x16, [SP]
    // 0x73e758: mov             x1, x0
    // 0x73e75c: ldur            x2, [fp, #-8]
    // 0x73e760: ldur            x3, [fp, #-0x40]
    // 0x73e764: ldur            x5, [fp, #-0x30]
    // 0x73e768: ldur            x6, [fp, #-0x20]
    // 0x73e76c: r4 = const [0, 0x7, 0x2, 0x5, dropdownColor, 0x5, style, 0x6, null]
    //     0x73e76c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19250] List(9) [0, 0x7, 0x2, 0x5, "dropdownColor", 0x5, "style", 0x6, Null]
    //     0x73e770: ldr             x4, [x4, #0x250]
    // 0x73e774: r0 = DropdownButtonFormField()
    //     0x73e774: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x73e778: ldur            x1, [fp, #-0x78]
    // 0x73e77c: ldur            x0, [fp, #-0x28]
    // 0x73e780: ArrayStore: r1[11] = r0  ; List_4
    //     0x73e780: add             x25, x1, #0x3b
    //     0x73e784: str             w0, [x25]
    //     0x73e788: tbz             w0, #0, #0x73e7a4
    //     0x73e78c: ldurb           w16, [x1, #-1]
    //     0x73e790: ldurb           w17, [x0, #-1]
    //     0x73e794: and             x16, x17, x16, lsr #2
    //     0x73e798: tst             x16, HEAP, lsr #32
    //     0x73e79c: b.eq            #0x73e7a4
    //     0x73e7a0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73e7a4: ldur            x0, [fp, #-0x78]
    // 0x73e7a8: r16 = Instance_SizedBox
    //     0x73e7a8: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x73e7ac: ldr             x16, [x16, #0x220]
    // 0x73e7b0: StoreField: r0->field_3f = r16
    //     0x73e7b0: stur            w16, [x0, #0x3f]
    // 0x73e7b4: ldur            x4, [fp, #-0x10]
    // 0x73e7b8: LoadField: r1 = r4->field_f
    //     0x73e7b8: ldur            w1, [x4, #0xf]
    // 0x73e7bc: DecompressPointer r1
    //     0x73e7bc: add             x1, x1, HEAP, lsl #32
    // 0x73e7c0: LoadField: r2 = r4->field_3b
    //     0x73e7c0: ldur            w2, [x4, #0x3b]
    // 0x73e7c4: DecompressPointer r2
    //     0x73e7c4: add             x2, x2, HEAP, lsl #32
    // 0x73e7c8: LoadField: r3 = r4->field_3f
    //     0x73e7c8: ldur            w3, [x4, #0x3f]
    // 0x73e7cc: DecompressPointer r3
    //     0x73e7cc: add             x3, x3, HEAP, lsl #32
    // 0x73e7d0: LoadField: r5 = r4->field_43
    //     0x73e7d0: ldur            w5, [x4, #0x43]
    // 0x73e7d4: DecompressPointer r5
    //     0x73e7d4: add             x5, x5, HEAP, lsl #32
    // 0x73e7d8: LoadField: r6 = r4->field_47
    //     0x73e7d8: ldur            w6, [x4, #0x47]
    // 0x73e7dc: DecompressPointer r6
    //     0x73e7dc: add             x6, x6, HEAP, lsl #32
    // 0x73e7e0: LoadField: r7 = r4->field_4b
    //     0x73e7e0: ldur            w7, [x4, #0x4b]
    // 0x73e7e4: DecompressPointer r7
    //     0x73e7e4: add             x7, x7, HEAP, lsl #32
    // 0x73e7e8: LoadField: r8 = r4->field_4f
    //     0x73e7e8: ldur            w8, [x4, #0x4f]
    // 0x73e7ec: DecompressPointer r8
    //     0x73e7ec: add             x8, x8, HEAP, lsl #32
    // 0x73e7f0: str             x8, [SP]
    // 0x73e7f4: r0 = _buildAssignmentsInfo()
    //     0x73e7f4: bl              #0x73eb74  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_buildAssignmentsInfo
    // 0x73e7f8: ldur            x1, [fp, #-0x78]
    // 0x73e7fc: ArrayStore: r1[13] = r0  ; List_4
    //     0x73e7fc: add             x25, x1, #0x43
    //     0x73e800: str             w0, [x25]
    //     0x73e804: tbz             w0, #0, #0x73e820
    //     0x73e808: ldurb           w16, [x1, #-1]
    //     0x73e80c: ldurb           w17, [x0, #-1]
    //     0x73e810: and             x16, x17, x16, lsr #2
    //     0x73e814: tst             x16, HEAP, lsr #32
    //     0x73e818: b.eq            #0x73e820
    //     0x73e81c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73e820: r1 = <Widget>
    //     0x73e820: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73e824: r0 = AllocateGrowableArray()
    //     0x73e824: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x73e828: mov             x1, x0
    // 0x73e82c: ldur            x0, [fp, #-0x78]
    // 0x73e830: StoreField: r1->field_f = r0
    //     0x73e830: stur            w0, [x1, #0xf]
    // 0x73e834: r0 = 28
    //     0x73e834: mov             x0, #0x1c
    // 0x73e838: StoreField: r1->field_b = r0
    //     0x73e838: stur            w0, [x1, #0xb]
    // 0x73e83c: mov             x2, x1
    // 0x73e840: ldur            x1, [fp, #-0x68]
    // 0x73e844: r0 = addAll()
    //     0x73e844: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x73e848: ldur            x0, [fp, #-0x10]
    // 0x73e84c: ldur            d0, [fp, #-0x88]
    // 0x73e850: ldur            x1, [fp, #-0x68]
    // 0x73e854: r0 = Column()
    //     0x73e854: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x73e858: mov             x1, x0
    // 0x73e85c: r0 = Instance_Axis
    //     0x73e85c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x73e860: stur            x1, [fp, #-8]
    // 0x73e864: StoreField: r1->field_f = r0
    //     0x73e864: stur            w0, [x1, #0xf]
    // 0x73e868: r2 = Instance_MainAxisAlignment
    //     0x73e868: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x73e86c: ldr             x2, [x2, #0x230]
    // 0x73e870: StoreField: r1->field_13 = r2
    //     0x73e870: stur            w2, [x1, #0x13]
    // 0x73e874: r2 = Instance_MainAxisSize
    //     0x73e874: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x73e878: ldr             x2, [x2, #0xb60]
    // 0x73e87c: ArrayStore: r1[0] = r2  ; List_4
    //     0x73e87c: stur            w2, [x1, #0x17]
    // 0x73e880: r2 = Instance_CrossAxisAlignment
    //     0x73e880: add             x2, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x73e884: ldr             x2, [x2, #0x238]
    // 0x73e888: StoreField: r1->field_1b = r2
    //     0x73e888: stur            w2, [x1, #0x1b]
    // 0x73e88c: r2 = Instance_VerticalDirection
    //     0x73e88c: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x73e890: ldr             x2, [x2, #0x340]
    // 0x73e894: StoreField: r1->field_23 = r2
    //     0x73e894: stur            w2, [x1, #0x23]
    // 0x73e898: r2 = Instance_Clip
    //     0x73e898: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x73e89c: ldr             x2, [x2, #0x348]
    // 0x73e8a0: StoreField: r1->field_2b = r2
    //     0x73e8a0: stur            w2, [x1, #0x2b]
    // 0x73e8a4: StoreField: r1->field_2f = rZR
    //     0x73e8a4: stur            xzr, [x1, #0x2f]
    // 0x73e8a8: ldur            x2, [fp, #-0x68]
    // 0x73e8ac: StoreField: r1->field_b = r2
    //     0x73e8ac: stur            w2, [x1, #0xb]
    // 0x73e8b0: r0 = SingleChildScrollView()
    //     0x73e8b0: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x73e8b4: mov             x1, x0
    // 0x73e8b8: r0 = Instance_Axis
    //     0x73e8b8: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x73e8bc: stur            x1, [fp, #-0x20]
    // 0x73e8c0: StoreField: r1->field_b = r0
    //     0x73e8c0: stur            w0, [x1, #0xb]
    // 0x73e8c4: r0 = false
    //     0x73e8c4: add             x0, NULL, #0x30  ; false
    // 0x73e8c8: StoreField: r1->field_f = r0
    //     0x73e8c8: stur            w0, [x1, #0xf]
    // 0x73e8cc: ldur            x2, [fp, #-8]
    // 0x73e8d0: StoreField: r1->field_23 = r2
    //     0x73e8d0: stur            w2, [x1, #0x23]
    // 0x73e8d4: r2 = Instance_DragStartBehavior
    //     0x73e8d4: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x73e8d8: StoreField: r1->field_27 = r2
    //     0x73e8d8: stur            w2, [x1, #0x27]
    // 0x73e8dc: r2 = Instance_Clip
    //     0x73e8dc: add             x2, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x73e8e0: ldr             x2, [x2, #0x2d8]
    // 0x73e8e4: StoreField: r1->field_2b = r2
    //     0x73e8e4: stur            w2, [x1, #0x2b]
    // 0x73e8e8: r2 = Instance_HitTestBehavior
    //     0x73e8e8: add             x2, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x73e8ec: ldr             x2, [x2, #0xe20]
    // 0x73e8f0: StoreField: r1->field_2f = r2
    //     0x73e8f0: stur            w2, [x1, #0x2f]
    // 0x73e8f4: ldur            d0, [fp, #-0x88]
    // 0x73e8f8: r2 = inline_Allocate_Double()
    //     0x73e8f8: ldp             x2, x3, [THR, #0x60]  ; THR::top
    //     0x73e8fc: add             x2, x2, #0x10
    //     0x73e900: cmp             x3, x2
    //     0x73e904: b.ls            #0x73eb2c
    //     0x73e908: str             x2, [THR, #0x60]  ; THR::top
    //     0x73e90c: sub             x2, x2, #0xf
    //     0x73e910: mov             x3, #0xe15c
    //     0x73e914: movk            x3, #3, lsl #16
    //     0x73e918: stur            x3, [x2, #-1]
    // 0x73e91c: StoreField: r2->field_7 = d0
    //     0x73e91c: stur            d0, [x2, #7]
    // 0x73e920: stur            x2, [fp, #-8]
    // 0x73e924: r0 = SizedBox()
    //     0x73e924: bl              #0x654794  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x73e928: mov             x3, x0
    // 0x73e92c: ldur            x0, [fp, #-8]
    // 0x73e930: stur            x3, [fp, #-0x28]
    // 0x73e934: StoreField: r3->field_f = r0
    //     0x73e934: stur            w0, [x3, #0xf]
    // 0x73e938: ldur            x0, [fp, #-0x20]
    // 0x73e93c: StoreField: r3->field_b = r0
    //     0x73e93c: stur            w0, [x3, #0xb]
    // 0x73e940: ldur            x2, [fp, #-0x18]
    // 0x73e944: r1 = Function '<anonymous closure>':.
    //     0x73e944: add             x1, PP, #0x19, lsl #12  ; [pp+0x195c0] AnonymousClosure: (0x6f5908), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog (0x6f64f4)
    //     0x73e948: ldr             x1, [x1, #0x5c0]
    // 0x73e94c: r0 = AllocateClosure()
    //     0x73e94c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73e950: stur            x0, [fp, #-8]
    // 0x73e954: r0 = TextButton()
    //     0x73e954: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x73e958: mov             x3, x0
    // 0x73e95c: ldur            x0, [fp, #-8]
    // 0x73e960: stur            x3, [fp, #-0x20]
    // 0x73e964: StoreField: r3->field_b = r0
    //     0x73e964: stur            w0, [x3, #0xb]
    // 0x73e968: r0 = false
    //     0x73e968: add             x0, NULL, #0x30  ; false
    // 0x73e96c: StoreField: r3->field_27 = r0
    //     0x73e96c: stur            w0, [x3, #0x27]
    // 0x73e970: r4 = true
    //     0x73e970: add             x4, NULL, #0x20  ; true
    // 0x73e974: StoreField: r3->field_2f = r4
    //     0x73e974: stur            w4, [x3, #0x2f]
    // 0x73e978: r1 = Instance_Text
    //     0x73e978: add             x1, PP, #0x19, lsl #12  ; [pp+0x19198] Obj!Text@a1ba91
    //     0x73e97c: ldr             x1, [x1, #0x198]
    // 0x73e980: StoreField: r3->field_37 = r1
    //     0x73e980: stur            w1, [x3, #0x37]
    // 0x73e984: ldur            x5, [fp, #-0x10]
    // 0x73e988: LoadField: r1 = r5->field_53
    //     0x73e988: ldur            w1, [x5, #0x53]
    // 0x73e98c: DecompressPointer r1
    //     0x73e98c: add             x1, x1, HEAP, lsl #32
    // 0x73e990: tbnz            w1, #4, #0x73e9a0
    // 0x73e994: mov             x0, x5
    // 0x73e998: r1 = Null
    //     0x73e998: mov             x1, NULL
    // 0x73e99c: b               #0x73e9b8
    // 0x73e9a0: ldur            x2, [fp, #-0x18]
    // 0x73e9a4: r1 = Function '<anonymous closure>':.
    //     0x73e9a4: add             x1, PP, #0x19, lsl #12  ; [pp+0x195c8] AnonymousClosure: (0x73fa8c), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x73e9a8: ldr             x1, [x1, #0x5c8]
    // 0x73e9ac: r0 = AllocateClosure()
    //     0x73e9ac: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73e9b0: mov             x1, x0
    // 0x73e9b4: ldur            x0, [fp, #-0x10]
    // 0x73e9b8: stur            x1, [fp, #-8]
    // 0x73e9bc: r16 = Instance_Color
    //     0x73e9bc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x73e9c0: ldr             x16, [x16, #0xf30]
    // 0x73e9c4: r30 = Instance_Color
    //     0x73e9c4: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73e9c8: stp             lr, x16, [SP]
    // 0x73e9cc: r4 = const [0, 0x2, 0x2, 0, backgroundColor, 0, foregroundColor, 0x1, null]
    //     0x73e9cc: add             x4, PP, #0x19, lsl #12  ; [pp+0x191a8] List(9) [0, 0x2, 0x2, 0, "backgroundColor", 0, "foregroundColor", 0x1, Null]
    //     0x73e9d0: ldr             x4, [x4, #0x1a8]
    // 0x73e9d4: r0 = styleFrom()
    //     0x73e9d4: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x73e9d8: mov             x1, x0
    // 0x73e9dc: ldur            x0, [fp, #-0x10]
    // 0x73e9e0: stur            x1, [fp, #-0x18]
    // 0x73e9e4: LoadField: r2 = r0->field_53
    //     0x73e9e4: ldur            w2, [x0, #0x53]
    // 0x73e9e8: DecompressPointer r2
    //     0x73e9e8: add             x2, x2, HEAP, lsl #32
    // 0x73e9ec: tbnz            w2, #4, #0x73ea00
    // 0x73e9f0: mov             x0, x1
    // 0x73e9f4: r6 = Instance_SizedBox
    //     0x73e9f4: add             x6, PP, #0x19, lsl #12  ; [pp+0x191b0] Obj!SizedBox@a1fa51
    //     0x73e9f8: ldr             x6, [x6, #0x1b0]
    // 0x73e9fc: b               #0x73ea38
    // 0x73ea00: ldur            x0, [fp, #-0x50]
    // 0x73ea04: tbnz            w0, #4, #0x73ea14
    // 0x73ea08: r0 = "Güncelle"
    //     0x73ea08: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b48] "Güncelle"
    //     0x73ea0c: ldr             x0, [x0, #0xb48]
    // 0x73ea10: b               #0x73ea1c
    // 0x73ea14: r0 = "Ekle"
    //     0x73ea14: add             x0, PP, #0x19, lsl #12  ; [pp+0x191b8] "Ekle"
    //     0x73ea18: ldr             x0, [x0, #0x1b8]
    // 0x73ea1c: stur            x0, [fp, #-0x10]
    // 0x73ea20: r0 = Text()
    //     0x73ea20: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x73ea24: mov             x1, x0
    // 0x73ea28: ldur            x0, [fp, #-0x10]
    // 0x73ea2c: StoreField: r1->field_b = r0
    //     0x73ea2c: stur            w0, [x1, #0xb]
    // 0x73ea30: mov             x6, x1
    // 0x73ea34: ldur            x0, [fp, #-0x18]
    // 0x73ea38: ldur            x5, [fp, #-0x58]
    // 0x73ea3c: ldur            x4, [fp, #-0x60]
    // 0x73ea40: ldur            x3, [fp, #-0x28]
    // 0x73ea44: ldur            x2, [fp, #-0x20]
    // 0x73ea48: ldur            x1, [fp, #-8]
    // 0x73ea4c: stur            x6, [fp, #-0x10]
    // 0x73ea50: r0 = ElevatedButton()
    //     0x73ea50: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x73ea54: mov             x3, x0
    // 0x73ea58: ldur            x0, [fp, #-8]
    // 0x73ea5c: stur            x3, [fp, #-0x30]
    // 0x73ea60: StoreField: r3->field_b = r0
    //     0x73ea60: stur            w0, [x3, #0xb]
    // 0x73ea64: ldur            x0, [fp, #-0x18]
    // 0x73ea68: StoreField: r3->field_1b = r0
    //     0x73ea68: stur            w0, [x3, #0x1b]
    // 0x73ea6c: r0 = false
    //     0x73ea6c: add             x0, NULL, #0x30  ; false
    // 0x73ea70: StoreField: r3->field_27 = r0
    //     0x73ea70: stur            w0, [x3, #0x27]
    // 0x73ea74: r1 = true
    //     0x73ea74: add             x1, NULL, #0x20  ; true
    // 0x73ea78: StoreField: r3->field_2f = r1
    //     0x73ea78: stur            w1, [x3, #0x2f]
    // 0x73ea7c: ldur            x1, [fp, #-0x10]
    // 0x73ea80: StoreField: r3->field_37 = r1
    //     0x73ea80: stur            w1, [x3, #0x37]
    // 0x73ea84: r1 = Null
    //     0x73ea84: mov             x1, NULL
    // 0x73ea88: r2 = 4
    //     0x73ea88: mov             x2, #4
    // 0x73ea8c: r0 = AllocateArray()
    //     0x73ea8c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73ea90: mov             x2, x0
    // 0x73ea94: ldur            x0, [fp, #-0x20]
    // 0x73ea98: stur            x2, [fp, #-8]
    // 0x73ea9c: StoreField: r2->field_f = r0
    //     0x73ea9c: stur            w0, [x2, #0xf]
    // 0x73eaa0: ldur            x0, [fp, #-0x30]
    // 0x73eaa4: StoreField: r2->field_13 = r0
    //     0x73eaa4: stur            w0, [x2, #0x13]
    // 0x73eaa8: r1 = <Widget>
    //     0x73eaa8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73eaac: r0 = AllocateGrowableArray()
    //     0x73eaac: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x73eab0: mov             x1, x0
    // 0x73eab4: ldur            x0, [fp, #-8]
    // 0x73eab8: stur            x1, [fp, #-0x10]
    // 0x73eabc: StoreField: r1->field_f = r0
    //     0x73eabc: stur            w0, [x1, #0xf]
    // 0x73eac0: r0 = 4
    //     0x73eac0: mov             x0, #4
    // 0x73eac4: StoreField: r1->field_b = r0
    //     0x73eac4: stur            w0, [x1, #0xb]
    // 0x73eac8: r0 = AlertDialog()
    //     0x73eac8: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x73eacc: ldur            x1, [fp, #-0x60]
    // 0x73ead0: StoreField: r0->field_f = r1
    //     0x73ead0: stur            w1, [x0, #0xf]
    // 0x73ead4: ldur            x1, [fp, #-0x28]
    // 0x73ead8: StoreField: r0->field_1b = r1
    //     0x73ead8: stur            w1, [x0, #0x1b]
    // 0x73eadc: ldur            x1, [fp, #-0x10]
    // 0x73eae0: StoreField: r0->field_27 = r1
    //     0x73eae0: stur            w1, [x0, #0x27]
    // 0x73eae4: r1 = Instance_Color
    //     0x73eae4: add             x1, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x73eae8: ldr             x1, [x1, #0x1c0]
    // 0x73eaec: StoreField: r0->field_43 = r1
    //     0x73eaec: stur            w1, [x0, #0x43]
    // 0x73eaf0: ldur            x1, [fp, #-0x58]
    // 0x73eaf4: StoreField: r0->field_5f = r1
    //     0x73eaf4: stur            w1, [x0, #0x5f]
    // 0x73eaf8: r1 = false
    //     0x73eaf8: add             x1, NULL, #0x30  ; false
    // 0x73eafc: StoreField: r0->field_6b = r1
    //     0x73eafc: stur            w1, [x0, #0x6b]
    // 0x73eb00: LeaveFrame
    //     0x73eb00: mov             SP, fp
    //     0x73eb04: ldp             fp, lr, [SP], #0x10
    // 0x73eb08: ret
    //     0x73eb08: ret             
    // 0x73eb0c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73eb0c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73eb10: b               #0x73d4d8
    // 0x73eb14: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73eb14: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x73eb18: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x73eb18: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x73eb1c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73eb1c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x73eb20: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x73eb20: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x73eb24: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73eb24: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x73eb28: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x73eb28: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x73eb2c: SaveReg d0
    //     0x73eb2c: str             q0, [SP, #-0x10]!
    // 0x73eb30: stp             x0, x1, [SP, #-0x10]!
    // 0x73eb34: r0 = AllocateDouble()
    //     0x73eb34: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x73eb38: mov             x2, x0
    // 0x73eb3c: ldp             x0, x1, [SP], #0x10
    // 0x73eb40: RestoreReg d0
    //     0x73eb40: ldr             q0, [SP], #0x10
    // 0x73eb44: b               #0x73e91c
  }
  _ _buildAssignmentsInfo(/* No info */) {
    // ** addr: 0x73eb74, size: 0x36c
    // 0x73eb74: EnterFrame
    //     0x73eb74: stp             fp, lr, [SP, #-0x10]!
    //     0x73eb78: mov             fp, SP
    // 0x73eb7c: AllocStack(0x60)
    //     0x73eb7c: sub             SP, SP, #0x60
    // 0x73eb80: SetupParameters(UsersTabState this /* r1 => r6, fp-0x8 */, dynamic _ /* r2 => r5, fp-0x10 */, dynamic _ /* r3 => r4, fp-0x18 */, dynamic _ /* r5 => r3, fp-0x20 */, dynamic _ /* r6 => r0, fp-0x28 */, dynamic _ /* r7 => r2, fp-0x30 */)
    //     0x73eb80: mov             x0, x6
    //     0x73eb84: stur            x6, [fp, #-0x28]
    //     0x73eb88: mov             x6, x1
    //     0x73eb8c: mov             x4, x3
    //     0x73eb90: stur            x3, [fp, #-0x18]
    //     0x73eb94: mov             x3, x5
    //     0x73eb98: stur            x5, [fp, #-0x20]
    //     0x73eb9c: mov             x5, x2
    //     0x73eba0: stur            x2, [fp, #-0x10]
    //     0x73eba4: mov             x2, x7
    //     0x73eba8: stur            x1, [fp, #-8]
    //     0x73ebac: stur            x7, [fp, #-0x30]
    // 0x73ebb0: CheckStackOverflow
    //     0x73ebb0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73ebb4: cmp             SP, x16
    //     0x73ebb8: b.ls            #0x73eed8
    // 0x73ebbc: r16 = 0.050000
    //     0x73ebbc: ldr             x16, [PP, #0x5020]  ; [pp+0x5020] 0.05
    // 0x73ebc0: str             x16, [SP]
    // 0x73ebc4: r1 = Instance_Color
    //     0x73ebc4: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73ebc8: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x73ebc8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x73ebcc: ldr             x4, [x4, #0x198]
    // 0x73ebd0: r0 = withValues()
    //     0x73ebd0: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x73ebd4: stur            x0, [fp, #-0x38]
    // 0x73ebd8: r0 = Radius()
    //     0x73ebd8: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x73ebdc: d0 = 8.000000
    //     0x73ebdc: fmov            d0, #8.00000000
    // 0x73ebe0: stur            x0, [fp, #-0x40]
    // 0x73ebe4: StoreField: r0->field_7 = d0
    //     0x73ebe4: stur            d0, [x0, #7]
    // 0x73ebe8: StoreField: r0->field_f = d0
    //     0x73ebe8: stur            d0, [x0, #0xf]
    // 0x73ebec: r0 = BorderRadius()
    //     0x73ebec: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x73ebf0: mov             x1, x0
    // 0x73ebf4: ldur            x0, [fp, #-0x40]
    // 0x73ebf8: stur            x1, [fp, #-0x48]
    // 0x73ebfc: StoreField: r1->field_7 = r0
    //     0x73ebfc: stur            w0, [x1, #7]
    // 0x73ec00: StoreField: r1->field_b = r0
    //     0x73ec00: stur            w0, [x1, #0xb]
    // 0x73ec04: StoreField: r1->field_f = r0
    //     0x73ec04: stur            w0, [x1, #0xf]
    // 0x73ec08: StoreField: r1->field_13 = r0
    //     0x73ec08: stur            w0, [x1, #0x13]
    // 0x73ec0c: r0 = BoxDecoration()
    //     0x73ec0c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x73ec10: mov             x3, x0
    // 0x73ec14: ldur            x0, [fp, #-0x38]
    // 0x73ec18: stur            x3, [fp, #-0x40]
    // 0x73ec1c: StoreField: r3->field_7 = r0
    //     0x73ec1c: stur            w0, [x3, #7]
    // 0x73ec20: ldur            x0, [fp, #-0x48]
    // 0x73ec24: StoreField: r3->field_13 = r0
    //     0x73ec24: stur            w0, [x3, #0x13]
    // 0x73ec28: r0 = Instance_BoxShape
    //     0x73ec28: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x73ec2c: ldr             x0, [x0, #0x1c8]
    // 0x73ec30: StoreField: r3->field_23 = r0
    //     0x73ec30: stur            w0, [x3, #0x23]
    // 0x73ec34: r1 = <Widget>
    //     0x73ec34: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73ec38: r2 = 18
    //     0x73ec38: mov             x2, #0x12
    // 0x73ec3c: r0 = AllocateArray()
    //     0x73ec3c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73ec40: stur            x0, [fp, #-0x38]
    // 0x73ec44: r16 = Instance_Text
    //     0x73ec44: add             x16, PP, #0x19, lsl #12  ; [pp+0x19648] Obj!Text@a1cf81
    //     0x73ec48: ldr             x16, [x16, #0x648]
    // 0x73ec4c: StoreField: r0->field_f = r16
    //     0x73ec4c: stur            w16, [x0, #0xf]
    // 0x73ec50: r16 = Instance_SizedBox
    //     0x73ec50: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x73ec54: ldr             x16, [x16, #0x318]
    // 0x73ec58: StoreField: r0->field_13 = r16
    //     0x73ec58: stur            w16, [x0, #0x13]
    // 0x73ec5c: ldur            x1, [fp, #-8]
    // 0x73ec60: ldur            x2, [fp, #-0x10]
    // 0x73ec64: r0 = _getTripName()
    //     0x73ec64: bl              #0x73f1e8  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_getTripName
    // 0x73ec68: ldur            x1, [fp, #-8]
    // 0x73ec6c: mov             x3, x0
    // 0x73ec70: r2 = "Mekke Seferi"
    //     0x73ec70: add             x2, PP, #0x15, lsl #12  ; [pp+0x15a28] "Mekke Seferi"
    //     0x73ec74: ldr             x2, [x2, #0xa28]
    // 0x73ec78: r0 = _buildAssignmentRow()
    //     0x73ec78: bl              #0x73efe4  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_buildAssignmentRow
    // 0x73ec7c: ldur            x1, [fp, #-0x38]
    // 0x73ec80: ArrayStore: r1[2] = r0  ; List_4
    //     0x73ec80: add             x25, x1, #0x17
    //     0x73ec84: str             w0, [x25]
    //     0x73ec88: tbz             w0, #0, #0x73eca4
    //     0x73ec8c: ldurb           w16, [x1, #-1]
    //     0x73ec90: ldurb           w17, [x0, #-1]
    //     0x73ec94: and             x16, x17, x16, lsr #2
    //     0x73ec98: tst             x16, HEAP, lsr #32
    //     0x73ec9c: b.eq            #0x73eca4
    //     0x73eca0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73eca4: ldur            x1, [fp, #-8]
    // 0x73eca8: ldur            x2, [fp, #-0x18]
    // 0x73ecac: r0 = _getHotelName()
    //     0x73ecac: bl              #0x73eee0  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_getHotelName
    // 0x73ecb0: ldur            x1, [fp, #-8]
    // 0x73ecb4: mov             x3, x0
    // 0x73ecb8: r2 = "Mekke Oteli"
    //     0x73ecb8: add             x2, PP, #0x19, lsl #12  ; [pp+0x19650] "Mekke Oteli"
    //     0x73ecbc: ldr             x2, [x2, #0x650]
    // 0x73ecc0: r0 = _buildAssignmentRow()
    //     0x73ecc0: bl              #0x73efe4  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_buildAssignmentRow
    // 0x73ecc4: ldur            x1, [fp, #-0x38]
    // 0x73ecc8: ArrayStore: r1[3] = r0  ; List_4
    //     0x73ecc8: add             x25, x1, #0x1b
    //     0x73eccc: str             w0, [x25]
    //     0x73ecd0: tbz             w0, #0, #0x73ecec
    //     0x73ecd4: ldurb           w16, [x1, #-1]
    //     0x73ecd8: ldurb           w17, [x0, #-1]
    //     0x73ecdc: and             x16, x17, x16, lsr #2
    //     0x73ece0: tst             x16, HEAP, lsr #32
    //     0x73ece4: b.eq            #0x73ecec
    //     0x73ece8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73ecec: ldur            x1, [fp, #-8]
    // 0x73ecf0: ldur            x2, [fp, #-0x20]
    // 0x73ecf4: r0 = _getRoomNumber()
    //     0x73ecf4: bl              #0x617a58  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_getRoomNumber
    // 0x73ecf8: ldur            x1, [fp, #-8]
    // 0x73ecfc: mov             x3, x0
    // 0x73ed00: r2 = "Mekke Odası"
    //     0x73ed00: add             x2, PP, #0x19, lsl #12  ; [pp+0x19658] "Mekke Odası"
    //     0x73ed04: ldr             x2, [x2, #0x658]
    // 0x73ed08: r0 = _buildAssignmentRow()
    //     0x73ed08: bl              #0x73efe4  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_buildAssignmentRow
    // 0x73ed0c: ldur            x1, [fp, #-0x38]
    // 0x73ed10: ArrayStore: r1[4] = r0  ; List_4
    //     0x73ed10: add             x25, x1, #0x1f
    //     0x73ed14: str             w0, [x25]
    //     0x73ed18: tbz             w0, #0, #0x73ed34
    //     0x73ed1c: ldurb           w16, [x1, #-1]
    //     0x73ed20: ldurb           w17, [x0, #-1]
    //     0x73ed24: and             x16, x17, x16, lsr #2
    //     0x73ed28: tst             x16, HEAP, lsr #32
    //     0x73ed2c: b.eq            #0x73ed34
    //     0x73ed30: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73ed34: ldur            x0, [fp, #-0x38]
    // 0x73ed38: r16 = Instance_SizedBox
    //     0x73ed38: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x73ed3c: ldr             x16, [x16, #0x338]
    // 0x73ed40: StoreField: r0->field_23 = r16
    //     0x73ed40: stur            w16, [x0, #0x23]
    // 0x73ed44: ldur            x1, [fp, #-8]
    // 0x73ed48: ldur            x2, [fp, #-0x28]
    // 0x73ed4c: r0 = _getTripName()
    //     0x73ed4c: bl              #0x73f1e8  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_getTripName
    // 0x73ed50: ldur            x1, [fp, #-8]
    // 0x73ed54: mov             x3, x0
    // 0x73ed58: r2 = "Medine Seferi"
    //     0x73ed58: add             x2, PP, #0x15, lsl #12  ; [pp+0x15a30] "Medine Seferi"
    //     0x73ed5c: ldr             x2, [x2, #0xa30]
    // 0x73ed60: r0 = _buildAssignmentRow()
    //     0x73ed60: bl              #0x73efe4  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_buildAssignmentRow
    // 0x73ed64: ldur            x1, [fp, #-0x38]
    // 0x73ed68: ArrayStore: r1[6] = r0  ; List_4
    //     0x73ed68: add             x25, x1, #0x27
    //     0x73ed6c: str             w0, [x25]
    //     0x73ed70: tbz             w0, #0, #0x73ed8c
    //     0x73ed74: ldurb           w16, [x1, #-1]
    //     0x73ed78: ldurb           w17, [x0, #-1]
    //     0x73ed7c: and             x16, x17, x16, lsr #2
    //     0x73ed80: tst             x16, HEAP, lsr #32
    //     0x73ed84: b.eq            #0x73ed8c
    //     0x73ed88: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73ed8c: ldur            x1, [fp, #-8]
    // 0x73ed90: ldur            x2, [fp, #-0x30]
    // 0x73ed94: r0 = _getHotelName()
    //     0x73ed94: bl              #0x73eee0  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_getHotelName
    // 0x73ed98: ldur            x1, [fp, #-8]
    // 0x73ed9c: mov             x3, x0
    // 0x73eda0: r2 = "Medine Oteli"
    //     0x73eda0: add             x2, PP, #0x19, lsl #12  ; [pp+0x19660] "Medine Oteli"
    //     0x73eda4: ldr             x2, [x2, #0x660]
    // 0x73eda8: r0 = _buildAssignmentRow()
    //     0x73eda8: bl              #0x73efe4  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_buildAssignmentRow
    // 0x73edac: ldur            x1, [fp, #-0x38]
    // 0x73edb0: ArrayStore: r1[7] = r0  ; List_4
    //     0x73edb0: add             x25, x1, #0x2b
    //     0x73edb4: str             w0, [x25]
    //     0x73edb8: tbz             w0, #0, #0x73edd4
    //     0x73edbc: ldurb           w16, [x1, #-1]
    //     0x73edc0: ldurb           w17, [x0, #-1]
    //     0x73edc4: and             x16, x17, x16, lsr #2
    //     0x73edc8: tst             x16, HEAP, lsr #32
    //     0x73edcc: b.eq            #0x73edd4
    //     0x73edd0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73edd4: ldur            x1, [fp, #-8]
    // 0x73edd8: ldr             x2, [fp, #0x10]
    // 0x73eddc: r0 = _getRoomNumber()
    //     0x73eddc: bl              #0x617a58  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_getRoomNumber
    // 0x73ede0: ldur            x1, [fp, #-8]
    // 0x73ede4: mov             x3, x0
    // 0x73ede8: r2 = "Medine Odası"
    //     0x73ede8: add             x2, PP, #0x19, lsl #12  ; [pp+0x19668] "Medine Odası"
    //     0x73edec: ldr             x2, [x2, #0x668]
    // 0x73edf0: r0 = _buildAssignmentRow()
    //     0x73edf0: bl              #0x73efe4  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_buildAssignmentRow
    // 0x73edf4: ldur            x1, [fp, #-0x38]
    // 0x73edf8: ArrayStore: r1[8] = r0  ; List_4
    //     0x73edf8: add             x25, x1, #0x2f
    //     0x73edfc: str             w0, [x25]
    //     0x73ee00: tbz             w0, #0, #0x73ee1c
    //     0x73ee04: ldurb           w16, [x1, #-1]
    //     0x73ee08: ldurb           w17, [x0, #-1]
    //     0x73ee0c: and             x16, x17, x16, lsr #2
    //     0x73ee10: tst             x16, HEAP, lsr #32
    //     0x73ee14: b.eq            #0x73ee1c
    //     0x73ee18: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73ee1c: r1 = <Widget>
    //     0x73ee1c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73ee20: r0 = AllocateGrowableArray()
    //     0x73ee20: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x73ee24: mov             x1, x0
    // 0x73ee28: ldur            x0, [fp, #-0x38]
    // 0x73ee2c: stur            x1, [fp, #-8]
    // 0x73ee30: StoreField: r1->field_f = r0
    //     0x73ee30: stur            w0, [x1, #0xf]
    // 0x73ee34: r0 = 18
    //     0x73ee34: mov             x0, #0x12
    // 0x73ee38: StoreField: r1->field_b = r0
    //     0x73ee38: stur            w0, [x1, #0xb]
    // 0x73ee3c: r0 = Column()
    //     0x73ee3c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x73ee40: mov             x1, x0
    // 0x73ee44: r0 = Instance_Axis
    //     0x73ee44: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x73ee48: stur            x1, [fp, #-0x10]
    // 0x73ee4c: StoreField: r1->field_f = r0
    //     0x73ee4c: stur            w0, [x1, #0xf]
    // 0x73ee50: r0 = Instance_MainAxisAlignment
    //     0x73ee50: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x73ee54: ldr             x0, [x0, #0x230]
    // 0x73ee58: StoreField: r1->field_13 = r0
    //     0x73ee58: stur            w0, [x1, #0x13]
    // 0x73ee5c: r0 = Instance_MainAxisSize
    //     0x73ee5c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x73ee60: ldr             x0, [x0, #0x330]
    // 0x73ee64: ArrayStore: r1[0] = r0  ; List_4
    //     0x73ee64: stur            w0, [x1, #0x17]
    // 0x73ee68: r0 = Instance_CrossAxisAlignment
    //     0x73ee68: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x73ee6c: ldr             x0, [x0, #0x238]
    // 0x73ee70: StoreField: r1->field_1b = r0
    //     0x73ee70: stur            w0, [x1, #0x1b]
    // 0x73ee74: r0 = Instance_VerticalDirection
    //     0x73ee74: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x73ee78: ldr             x0, [x0, #0x340]
    // 0x73ee7c: StoreField: r1->field_23 = r0
    //     0x73ee7c: stur            w0, [x1, #0x23]
    // 0x73ee80: r0 = Instance_Clip
    //     0x73ee80: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x73ee84: ldr             x0, [x0, #0x348]
    // 0x73ee88: StoreField: r1->field_2b = r0
    //     0x73ee88: stur            w0, [x1, #0x2b]
    // 0x73ee8c: StoreField: r1->field_2f = rZR
    //     0x73ee8c: stur            xzr, [x1, #0x2f]
    // 0x73ee90: ldur            x0, [fp, #-8]
    // 0x73ee94: StoreField: r1->field_b = r0
    //     0x73ee94: stur            w0, [x1, #0xb]
    // 0x73ee98: r0 = Container()
    //     0x73ee98: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x73ee9c: stur            x0, [fp, #-8]
    // 0x73eea0: r16 = Instance_EdgeInsets
    //     0x73eea0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12370] Obj!EdgeInsets@a0bff1
    //     0x73eea4: ldr             x16, [x16, #0x370]
    // 0x73eea8: ldur            lr, [fp, #-0x40]
    // 0x73eeac: stp             lr, x16, [SP, #8]
    // 0x73eeb0: ldur            x16, [fp, #-0x10]
    // 0x73eeb4: str             x16, [SP]
    // 0x73eeb8: mov             x1, x0
    // 0x73eebc: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x73eebc: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x73eec0: ldr             x4, [x4, #0x1e8]
    // 0x73eec4: r0 = Container()
    //     0x73eec4: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x73eec8: ldur            x0, [fp, #-8]
    // 0x73eecc: LeaveFrame
    //     0x73eecc: mov             SP, fp
    //     0x73eed0: ldp             fp, lr, [SP], #0x10
    // 0x73eed4: ret
    //     0x73eed4: ret             
    // 0x73eed8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73eed8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73eedc: b               #0x73ebbc
  }
  _ _getHotelName(/* No info */) {
    // ** addr: 0x73eee0, size: 0x104
    // 0x73eee0: EnterFrame
    //     0x73eee0: stp             fp, lr, [SP, #-0x10]!
    //     0x73eee4: mov             fp, SP
    // 0x73eee8: AllocStack(0x20)
    //     0x73eee8: sub             SP, SP, #0x20
    // 0x73eeec: SetupParameters(UsersTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x73eeec: stur            x1, [fp, #-8]
    //     0x73eef0: stur            x2, [fp, #-0x10]
    // 0x73eef4: CheckStackOverflow
    //     0x73eef4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73eef8: cmp             SP, x16
    //     0x73eefc: b.ls            #0x73efd8
    // 0x73ef00: r1 = 1
    //     0x73ef00: mov             x1, #1
    // 0x73ef04: r0 = AllocateContext()
    //     0x73ef04: bl              #0x927010  ; AllocateContextStub
    // 0x73ef08: mov             x1, x0
    // 0x73ef0c: ldur            x0, [fp, #-0x10]
    // 0x73ef10: StoreField: r1->field_f = r0
    //     0x73ef10: stur            w0, [x1, #0xf]
    // 0x73ef14: cmp             w0, NULL
    // 0x73ef18: b.eq            #0x73ef24
    // 0x73ef1c: LoadField: r2 = r0->field_7
    //     0x73ef1c: ldur            w2, [x0, #7]
    // 0x73ef20: cbnz            w2, #0x73ef34
    // 0x73ef24: r0 = "-"
    //     0x73ef24: ldr             x0, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x73ef28: LeaveFrame
    //     0x73ef28: mov             SP, fp
    //     0x73ef2c: ldp             fp, lr, [SP], #0x10
    // 0x73ef30: ret
    //     0x73ef30: ret             
    // 0x73ef34: ldur            x0, [fp, #-8]
    // 0x73ef38: LoadField: r2 = r0->field_b
    //     0x73ef38: ldur            w2, [x0, #0xb]
    // 0x73ef3c: DecompressPointer r2
    //     0x73ef3c: add             x2, x2, HEAP, lsl #32
    // 0x73ef40: cmp             w2, NULL
    // 0x73ef44: b.eq            #0x73efe0
    // 0x73ef48: LoadField: r0 = r2->field_13
    //     0x73ef48: ldur            w0, [x2, #0x13]
    // 0x73ef4c: DecompressPointer r0
    //     0x73ef4c: add             x0, x0, HEAP, lsl #32
    // 0x73ef50: mov             x2, x1
    // 0x73ef54: stur            x0, [fp, #-8]
    // 0x73ef58: r1 = Function '<anonymous closure>':.
    //     0x73ef58: add             x1, PP, #0x19, lsl #12  ; [pp+0x19678] AnonymousClosure: (0x6179f0), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_getRoomNumber (0x617a58)
    //     0x73ef5c: ldr             x1, [x1, #0x678]
    // 0x73ef60: r0 = AllocateClosure()
    //     0x73ef60: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73ef64: ldur            x1, [fp, #-8]
    // 0x73ef68: r2 = LoadClassIdInstr(r1)
    //     0x73ef68: ldur            x2, [x1, #-1]
    //     0x73ef6c: ubfx            x2, x2, #0xc, #0x14
    // 0x73ef70: mov             x16, x0
    // 0x73ef74: mov             x0, x2
    // 0x73ef78: mov             x2, x16
    // 0x73ef7c: r0 = GDT[cid_x0 + 0xd348]()
    //     0x73ef7c: mov             x17, #0xd348
    //     0x73ef80: add             lr, x0, x17
    //     0x73ef84: ldr             lr, [x21, lr, lsl #3]
    //     0x73ef88: blr             lr
    // 0x73ef8c: r16 = <HotelModel>
    //     0x73ef8c: add             x16, PP, #0x10, lsl #12  ; [pp+0x10da8] TypeArguments: <HotelModel>
    //     0x73ef90: ldr             x16, [x16, #0xda8]
    // 0x73ef94: stp             x0, x16, [SP]
    // 0x73ef98: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x73ef98: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x73ef9c: r0 = IterableExtensions.firstOrNull()
    //     0x73ef9c: bl              #0x617ba4  ; [dart:collection] ::IterableExtensions.firstOrNull
    // 0x73efa0: cmp             w0, NULL
    // 0x73efa4: b.ne            #0x73efb0
    // 0x73efa8: r1 = Null
    //     0x73efa8: mov             x1, NULL
    // 0x73efac: b               #0x73efb8
    // 0x73efb0: LoadField: r1 = r0->field_b
    //     0x73efb0: ldur            w1, [x0, #0xb]
    // 0x73efb4: DecompressPointer r1
    //     0x73efb4: add             x1, x1, HEAP, lsl #32
    // 0x73efb8: cmp             w1, NULL
    // 0x73efbc: b.ne            #0x73efc8
    // 0x73efc0: r0 = "-"
    //     0x73efc0: ldr             x0, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x73efc4: b               #0x73efcc
    // 0x73efc8: mov             x0, x1
    // 0x73efcc: LeaveFrame
    //     0x73efcc: mov             SP, fp
    //     0x73efd0: ldp             fp, lr, [SP], #0x10
    // 0x73efd4: ret
    //     0x73efd4: ret             
    // 0x73efd8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73efd8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73efdc: b               #0x73ef00
    // 0x73efe0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73efe0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _buildAssignmentRow(/* No info */) {
    // ** addr: 0x73efe4, size: 0x204
    // 0x73efe4: EnterFrame
    //     0x73efe4: stp             fp, lr, [SP, #-0x10]!
    //     0x73efe8: mov             fp, SP
    // 0x73efec: AllocStack(0x38)
    //     0x73efec: sub             SP, SP, #0x38
    // 0x73eff0: SetupParameters(dynamic _ /* r2 => r0, fp-0x8 */, dynamic _ /* r3 => r3, fp-0x10 */)
    //     0x73eff0: mov             x0, x2
    //     0x73eff4: stur            x2, [fp, #-8]
    //     0x73eff8: stur            x3, [fp, #-0x10]
    // 0x73effc: CheckStackOverflow
    //     0x73effc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73f000: cmp             SP, x16
    //     0x73f004: b.ls            #0x73f1e0
    // 0x73f008: r1 = Null
    //     0x73f008: mov             x1, NULL
    // 0x73f00c: r2 = 4
    //     0x73f00c: mov             x2, #4
    // 0x73f010: r0 = AllocateArray()
    //     0x73f010: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73f014: mov             x1, x0
    // 0x73f018: ldur            x0, [fp, #-8]
    // 0x73f01c: StoreField: r1->field_f = r0
    //     0x73f01c: stur            w0, [x1, #0xf]
    // 0x73f020: r16 = ": "
    //     0x73f020: ldr             x16, [PP, #0x870]  ; [pp+0x870] ": "
    // 0x73f024: StoreField: r1->field_13 = r16
    //     0x73f024: stur            w16, [x1, #0x13]
    // 0x73f028: str             x1, [SP]
    // 0x73f02c: r0 = _interpolate()
    //     0x73f02c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x73f030: stur            x0, [fp, #-8]
    // 0x73f034: r0 = Text()
    //     0x73f034: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x73f038: mov             x1, x0
    // 0x73f03c: ldur            x0, [fp, #-8]
    // 0x73f040: stur            x1, [fp, #-0x18]
    // 0x73f044: StoreField: r1->field_b = r0
    //     0x73f044: stur            w0, [x1, #0xb]
    // 0x73f048: r0 = Instance_TextStyle
    //     0x73f048: add             x0, PP, #0x19, lsl #12  ; [pp+0x19680] Obj!TextStyle@a18551
    //     0x73f04c: ldr             x0, [x0, #0x680]
    // 0x73f050: StoreField: r1->field_13 = r0
    //     0x73f050: stur            w0, [x1, #0x13]
    // 0x73f054: ldur            x2, [fp, #-0x10]
    // 0x73f058: r0 = LoadClassIdInstr(r2)
    //     0x73f058: ldur            x0, [x2, #-1]
    //     0x73f05c: ubfx            x0, x0, #0xc, #0x14
    // 0x73f060: r16 = "-"
    //     0x73f060: ldr             x16, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x73f064: stp             x16, x2, [SP]
    // 0x73f068: mov             lr, x0
    // 0x73f06c: ldr             lr, [x21, lr, lsl #3]
    // 0x73f070: blr             lr
    // 0x73f074: tbnz            w0, #4, #0x73f080
    // 0x73f078: r2 = Instance_Color
    //     0x73f078: ldr             x2, [PP, #0x57a8]  ; [pp+0x57a8] Obj!Color@a21be1
    // 0x73f07c: b               #0x73f084
    // 0x73f080: r2 = Instance_Color
    //     0x73f080: ldr             x2, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73f084: ldur            x1, [fp, #-0x10]
    // 0x73f088: stur            x2, [fp, #-8]
    // 0x73f08c: r0 = LoadClassIdInstr(r1)
    //     0x73f08c: ldur            x0, [x1, #-1]
    //     0x73f090: ubfx            x0, x0, #0xc, #0x14
    // 0x73f094: r16 = "-"
    //     0x73f094: ldr             x16, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x73f098: stp             x16, x1, [SP]
    // 0x73f09c: mov             lr, x0
    // 0x73f0a0: ldr             lr, [x21, lr, lsl #3]
    // 0x73f0a4: blr             lr
    // 0x73f0a8: tbnz            w0, #4, #0x73f0b8
    // 0x73f0ac: r3 = Instance_FontWeight
    //     0x73f0ac: add             x3, PP, #0x19, lsl #12  ; [pp+0x19688] Obj!FontWeight@a20fa1
    //     0x73f0b0: ldr             x3, [x3, #0x688]
    // 0x73f0b4: b               #0x73f0c0
    // 0x73f0b8: r3 = Instance_FontWeight
    //     0x73f0b8: add             x3, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x73f0bc: ldr             x3, [x3, #0x990]
    // 0x73f0c0: ldur            x0, [fp, #-0x10]
    // 0x73f0c4: ldur            x2, [fp, #-0x18]
    // 0x73f0c8: ldur            x1, [fp, #-8]
    // 0x73f0cc: stur            x3, [fp, #-0x20]
    // 0x73f0d0: r0 = TextStyle()
    //     0x73f0d0: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x73f0d4: mov             x1, x0
    // 0x73f0d8: r0 = true
    //     0x73f0d8: add             x0, NULL, #0x20  ; true
    // 0x73f0dc: stur            x1, [fp, #-0x28]
    // 0x73f0e0: StoreField: r1->field_7 = r0
    //     0x73f0e0: stur            w0, [x1, #7]
    // 0x73f0e4: ldur            x0, [fp, #-8]
    // 0x73f0e8: StoreField: r1->field_b = r0
    //     0x73f0e8: stur            w0, [x1, #0xb]
    // 0x73f0ec: r0 = 11.000000
    //     0x73f0ec: add             x0, PP, #0x14, lsl #12  ; [pp+0x14f60] 11
    //     0x73f0f0: ldr             x0, [x0, #0xf60]
    // 0x73f0f4: StoreField: r1->field_1f = r0
    //     0x73f0f4: stur            w0, [x1, #0x1f]
    // 0x73f0f8: ldur            x0, [fp, #-0x20]
    // 0x73f0fc: StoreField: r1->field_23 = r0
    //     0x73f0fc: stur            w0, [x1, #0x23]
    // 0x73f100: r0 = Text()
    //     0x73f100: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x73f104: mov             x3, x0
    // 0x73f108: ldur            x0, [fp, #-0x10]
    // 0x73f10c: stur            x3, [fp, #-8]
    // 0x73f110: StoreField: r3->field_b = r0
    //     0x73f110: stur            w0, [x3, #0xb]
    // 0x73f114: ldur            x0, [fp, #-0x28]
    // 0x73f118: StoreField: r3->field_13 = r0
    //     0x73f118: stur            w0, [x3, #0x13]
    // 0x73f11c: r1 = Null
    //     0x73f11c: mov             x1, NULL
    // 0x73f120: r2 = 4
    //     0x73f120: mov             x2, #4
    // 0x73f124: r0 = AllocateArray()
    //     0x73f124: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73f128: mov             x2, x0
    // 0x73f12c: ldur            x0, [fp, #-0x18]
    // 0x73f130: stur            x2, [fp, #-0x10]
    // 0x73f134: StoreField: r2->field_f = r0
    //     0x73f134: stur            w0, [x2, #0xf]
    // 0x73f138: ldur            x0, [fp, #-8]
    // 0x73f13c: StoreField: r2->field_13 = r0
    //     0x73f13c: stur            w0, [x2, #0x13]
    // 0x73f140: r1 = <Widget>
    //     0x73f140: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73f144: r0 = AllocateGrowableArray()
    //     0x73f144: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x73f148: mov             x1, x0
    // 0x73f14c: ldur            x0, [fp, #-0x10]
    // 0x73f150: stur            x1, [fp, #-8]
    // 0x73f154: StoreField: r1->field_f = r0
    //     0x73f154: stur            w0, [x1, #0xf]
    // 0x73f158: r0 = 4
    //     0x73f158: mov             x0, #4
    // 0x73f15c: StoreField: r1->field_b = r0
    //     0x73f15c: stur            w0, [x1, #0xb]
    // 0x73f160: r0 = Row()
    //     0x73f160: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x73f164: mov             x1, x0
    // 0x73f168: r0 = Instance_Axis
    //     0x73f168: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x73f16c: stur            x1, [fp, #-0x10]
    // 0x73f170: StoreField: r1->field_f = r0
    //     0x73f170: stur            w0, [x1, #0xf]
    // 0x73f174: r0 = Instance_MainAxisAlignment
    //     0x73f174: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x73f178: ldr             x0, [x0, #0x230]
    // 0x73f17c: StoreField: r1->field_13 = r0
    //     0x73f17c: stur            w0, [x1, #0x13]
    // 0x73f180: r0 = Instance_MainAxisSize
    //     0x73f180: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x73f184: ldr             x0, [x0, #0x330]
    // 0x73f188: ArrayStore: r1[0] = r0  ; List_4
    //     0x73f188: stur            w0, [x1, #0x17]
    // 0x73f18c: r0 = Instance_CrossAxisAlignment
    //     0x73f18c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x73f190: ldr             x0, [x0, #0x338]
    // 0x73f194: StoreField: r1->field_1b = r0
    //     0x73f194: stur            w0, [x1, #0x1b]
    // 0x73f198: r0 = Instance_VerticalDirection
    //     0x73f198: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x73f19c: ldr             x0, [x0, #0x340]
    // 0x73f1a0: StoreField: r1->field_23 = r0
    //     0x73f1a0: stur            w0, [x1, #0x23]
    // 0x73f1a4: r0 = Instance_Clip
    //     0x73f1a4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x73f1a8: ldr             x0, [x0, #0x348]
    // 0x73f1ac: StoreField: r1->field_2b = r0
    //     0x73f1ac: stur            w0, [x1, #0x2b]
    // 0x73f1b0: StoreField: r1->field_2f = rZR
    //     0x73f1b0: stur            xzr, [x1, #0x2f]
    // 0x73f1b4: ldur            x0, [fp, #-8]
    // 0x73f1b8: StoreField: r1->field_b = r0
    //     0x73f1b8: stur            w0, [x1, #0xb]
    // 0x73f1bc: r0 = Padding()
    //     0x73f1bc: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x73f1c0: r1 = Instance_EdgeInsets
    //     0x73f1c0: add             x1, PP, #0x19, lsl #12  ; [pp+0x19690] Obj!EdgeInsets@a0c801
    //     0x73f1c4: ldr             x1, [x1, #0x690]
    // 0x73f1c8: StoreField: r0->field_f = r1
    //     0x73f1c8: stur            w1, [x0, #0xf]
    // 0x73f1cc: ldur            x1, [fp, #-0x10]
    // 0x73f1d0: StoreField: r0->field_b = r1
    //     0x73f1d0: stur            w1, [x0, #0xb]
    // 0x73f1d4: LeaveFrame
    //     0x73f1d4: mov             SP, fp
    //     0x73f1d8: ldp             fp, lr, [SP], #0x10
    // 0x73f1dc: ret
    //     0x73f1dc: ret             
    // 0x73f1e0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73f1e0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73f1e4: b               #0x73f008
  }
  _ _getTripName(/* No info */) {
    // ** addr: 0x73f1e8, size: 0x104
    // 0x73f1e8: EnterFrame
    //     0x73f1e8: stp             fp, lr, [SP, #-0x10]!
    //     0x73f1ec: mov             fp, SP
    // 0x73f1f0: AllocStack(0x20)
    //     0x73f1f0: sub             SP, SP, #0x20
    // 0x73f1f4: SetupParameters(UsersTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x73f1f4: stur            x1, [fp, #-8]
    //     0x73f1f8: stur            x2, [fp, #-0x10]
    // 0x73f1fc: CheckStackOverflow
    //     0x73f1fc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73f200: cmp             SP, x16
    //     0x73f204: b.ls            #0x73f2e0
    // 0x73f208: r1 = 1
    //     0x73f208: mov             x1, #1
    // 0x73f20c: r0 = AllocateContext()
    //     0x73f20c: bl              #0x927010  ; AllocateContextStub
    // 0x73f210: mov             x1, x0
    // 0x73f214: ldur            x0, [fp, #-0x10]
    // 0x73f218: StoreField: r1->field_f = r0
    //     0x73f218: stur            w0, [x1, #0xf]
    // 0x73f21c: cmp             w0, NULL
    // 0x73f220: b.eq            #0x73f22c
    // 0x73f224: LoadField: r2 = r0->field_7
    //     0x73f224: ldur            w2, [x0, #7]
    // 0x73f228: cbnz            w2, #0x73f23c
    // 0x73f22c: r0 = "-"
    //     0x73f22c: ldr             x0, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x73f230: LeaveFrame
    //     0x73f230: mov             SP, fp
    //     0x73f234: ldp             fp, lr, [SP], #0x10
    // 0x73f238: ret
    //     0x73f238: ret             
    // 0x73f23c: ldur            x0, [fp, #-8]
    // 0x73f240: LoadField: r2 = r0->field_b
    //     0x73f240: ldur            w2, [x0, #0xb]
    // 0x73f244: DecompressPointer r2
    //     0x73f244: add             x2, x2, HEAP, lsl #32
    // 0x73f248: cmp             w2, NULL
    // 0x73f24c: b.eq            #0x73f2e8
    // 0x73f250: LoadField: r0 = r2->field_f
    //     0x73f250: ldur            w0, [x2, #0xf]
    // 0x73f254: DecompressPointer r0
    //     0x73f254: add             x0, x0, HEAP, lsl #32
    // 0x73f258: mov             x2, x1
    // 0x73f25c: stur            x0, [fp, #-8]
    // 0x73f260: r1 = Function '<anonymous closure>':.
    //     0x73f260: add             x1, PP, #0x19, lsl #12  ; [pp+0x19698] AnonymousClosure: (0x6179f0), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_getRoomNumber (0x617a58)
    //     0x73f264: ldr             x1, [x1, #0x698]
    // 0x73f268: r0 = AllocateClosure()
    //     0x73f268: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73f26c: ldur            x1, [fp, #-8]
    // 0x73f270: r2 = LoadClassIdInstr(r1)
    //     0x73f270: ldur            x2, [x1, #-1]
    //     0x73f274: ubfx            x2, x2, #0xc, #0x14
    // 0x73f278: mov             x16, x0
    // 0x73f27c: mov             x0, x2
    // 0x73f280: mov             x2, x16
    // 0x73f284: r0 = GDT[cid_x0 + 0xd348]()
    //     0x73f284: mov             x17, #0xd348
    //     0x73f288: add             lr, x0, x17
    //     0x73f28c: ldr             lr, [x21, lr, lsl #3]
    //     0x73f290: blr             lr
    // 0x73f294: r16 = <TripModel>
    //     0x73f294: add             x16, PP, #0x10, lsl #12  ; [pp+0x10da0] TypeArguments: <TripModel>
    //     0x73f298: ldr             x16, [x16, #0xda0]
    // 0x73f29c: stp             x0, x16, [SP]
    // 0x73f2a0: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x73f2a0: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x73f2a4: r0 = IterableExtensions.firstOrNull()
    //     0x73f2a4: bl              #0x617ba4  ; [dart:collection] ::IterableExtensions.firstOrNull
    // 0x73f2a8: cmp             w0, NULL
    // 0x73f2ac: b.ne            #0x73f2b8
    // 0x73f2b0: r1 = Null
    //     0x73f2b0: mov             x1, NULL
    // 0x73f2b4: b               #0x73f2c0
    // 0x73f2b8: LoadField: r1 = r0->field_b
    //     0x73f2b8: ldur            w1, [x0, #0xb]
    // 0x73f2bc: DecompressPointer r1
    //     0x73f2bc: add             x1, x1, HEAP, lsl #32
    // 0x73f2c0: cmp             w1, NULL
    // 0x73f2c4: b.ne            #0x73f2d0
    // 0x73f2c8: r0 = "-"
    //     0x73f2c8: ldr             x0, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x73f2cc: b               #0x73f2d4
    // 0x73f2d0: mov             x0, x1
    // 0x73f2d4: LeaveFrame
    //     0x73f2d4: mov             SP, fp
    //     0x73f2d8: ldp             fp, lr, [SP], #0x10
    // 0x73f2dc: ret
    //     0x73f2dc: ret             
    // 0x73f2e0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73f2e0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73f2e4: b               #0x73f208
    // 0x73f2e8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73f2e8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _buildLocationSelector(/* No info */) {
    // ** addr: 0x73f2ec, size: 0x6f0
    // 0x73f2ec: EnterFrame
    //     0x73f2ec: stp             fp, lr, [SP, #-0x10]!
    //     0x73f2f0: mov             fp, SP
    // 0x73f2f4: AllocStack(0x50)
    //     0x73f2f4: sub             SP, SP, #0x50
    // 0x73f2f8: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */, dynamic _ /* r3 => r3, fp-0x10 */)
    //     0x73f2f8: stur            x2, [fp, #-8]
    //     0x73f2fc: stur            x3, [fp, #-0x10]
    // 0x73f300: CheckStackOverflow
    //     0x73f300: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73f304: cmp             SP, x16
    //     0x73f308: b.ls            #0x73f9d4
    // 0x73f30c: r1 = 1
    //     0x73f30c: mov             x1, #1
    // 0x73f310: r0 = AllocateContext()
    //     0x73f310: bl              #0x927010  ; AllocateContextStub
    // 0x73f314: mov             x2, x0
    // 0x73f318: ldur            x0, [fp, #-0x10]
    // 0x73f31c: stur            x2, [fp, #-0x18]
    // 0x73f320: StoreField: r2->field_f = r0
    //     0x73f320: stur            w0, [x2, #0xf]
    // 0x73f324: r16 = 0.200000
    //     0x73f324: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x73f328: ldr             x16, [x16, #0x1f0]
    // 0x73f32c: str             x16, [SP]
    // 0x73f330: r1 = Instance_Color
    //     0x73f330: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73f334: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x73f334: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x73f338: ldr             x4, [x4, #0x198]
    // 0x73f33c: r0 = withValues()
    //     0x73f33c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x73f340: str             x0, [SP]
    // 0x73f344: r1 = Null
    //     0x73f344: mov             x1, NULL
    // 0x73f348: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x73f348: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x73f34c: ldr             x4, [x4, #0x788]
    // 0x73f350: r0 = Border.all()
    //     0x73f350: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x73f354: stur            x0, [fp, #-0x10]
    // 0x73f358: r0 = Radius()
    //     0x73f358: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x73f35c: d0 = 8.000000
    //     0x73f35c: fmov            d0, #8.00000000
    // 0x73f360: stur            x0, [fp, #-0x20]
    // 0x73f364: StoreField: r0->field_7 = d0
    //     0x73f364: stur            d0, [x0, #7]
    // 0x73f368: StoreField: r0->field_f = d0
    //     0x73f368: stur            d0, [x0, #0xf]
    // 0x73f36c: r0 = BorderRadius()
    //     0x73f36c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x73f370: mov             x1, x0
    // 0x73f374: ldur            x0, [fp, #-0x20]
    // 0x73f378: stur            x1, [fp, #-0x28]
    // 0x73f37c: StoreField: r1->field_7 = r0
    //     0x73f37c: stur            w0, [x1, #7]
    // 0x73f380: StoreField: r1->field_b = r0
    //     0x73f380: stur            w0, [x1, #0xb]
    // 0x73f384: StoreField: r1->field_f = r0
    //     0x73f384: stur            w0, [x1, #0xf]
    // 0x73f388: StoreField: r1->field_13 = r0
    //     0x73f388: stur            w0, [x1, #0x13]
    // 0x73f38c: r0 = BoxDecoration()
    //     0x73f38c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x73f390: mov             x1, x0
    // 0x73f394: ldur            x0, [fp, #-0x10]
    // 0x73f398: stur            x1, [fp, #-0x20]
    // 0x73f39c: StoreField: r1->field_f = r0
    //     0x73f39c: stur            w0, [x1, #0xf]
    // 0x73f3a0: ldur            x0, [fp, #-0x28]
    // 0x73f3a4: StoreField: r1->field_13 = r0
    //     0x73f3a4: stur            w0, [x1, #0x13]
    // 0x73f3a8: r2 = Instance_BoxShape
    //     0x73f3a8: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x73f3ac: ldr             x2, [x2, #0x1c8]
    // 0x73f3b0: StoreField: r1->field_23 = r2
    //     0x73f3b0: stur            w2, [x1, #0x23]
    // 0x73f3b4: ldur            x3, [fp, #-8]
    // 0x73f3b8: r0 = LoadClassIdInstr(r3)
    //     0x73f3b8: ldur            x0, [x3, #-1]
    //     0x73f3bc: ubfx            x0, x0, #0xc, #0x14
    // 0x73f3c0: r16 = "Mekke"
    //     0x73f3c0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x73f3c4: ldr             x16, [x16, #0xdf0]
    // 0x73f3c8: stp             x16, x3, [SP]
    // 0x73f3cc: mov             lr, x0
    // 0x73f3d0: ldr             lr, [x21, lr, lsl #3]
    // 0x73f3d4: blr             lr
    // 0x73f3d8: tbnz            w0, #4, #0x73f3e8
    // 0x73f3dc: r1 = Instance_Color
    //     0x73f3dc: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x73f3e0: ldr             x1, [x1, #0xf30]
    // 0x73f3e4: b               #0x73f3f0
    // 0x73f3e8: r1 = Instance_Color
    //     0x73f3e8: add             x1, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x73f3ec: ldr             x1, [x1, #0x860]
    // 0x73f3f0: ldur            x0, [fp, #-8]
    // 0x73f3f4: stur            x1, [fp, #-0x10]
    // 0x73f3f8: r0 = BoxDecoration()
    //     0x73f3f8: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x73f3fc: mov             x1, x0
    // 0x73f400: ldur            x0, [fp, #-0x10]
    // 0x73f404: stur            x1, [fp, #-0x28]
    // 0x73f408: StoreField: r1->field_7 = r0
    //     0x73f408: stur            w0, [x1, #7]
    // 0x73f40c: r0 = Instance_BorderRadius
    //     0x73f40c: add             x0, PP, #0x19, lsl #12  ; [pp+0x196a0] Obj!BorderRadius@a0cd11
    //     0x73f410: ldr             x0, [x0, #0x6a0]
    // 0x73f414: StoreField: r1->field_13 = r0
    //     0x73f414: stur            w0, [x1, #0x13]
    // 0x73f418: r2 = Instance_BoxShape
    //     0x73f418: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x73f41c: ldr             x2, [x2, #0x1c8]
    // 0x73f420: StoreField: r1->field_23 = r2
    //     0x73f420: stur            w2, [x1, #0x23]
    // 0x73f424: ldur            x3, [fp, #-8]
    // 0x73f428: r0 = LoadClassIdInstr(r3)
    //     0x73f428: ldur            x0, [x3, #-1]
    //     0x73f42c: ubfx            x0, x0, #0xc, #0x14
    // 0x73f430: r16 = "Mekke"
    //     0x73f430: add             x16, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x73f434: ldr             x16, [x16, #0xdf0]
    // 0x73f438: stp             x16, x3, [SP]
    // 0x73f43c: mov             lr, x0
    // 0x73f440: ldr             lr, [x21, lr, lsl #3]
    // 0x73f444: blr             lr
    // 0x73f448: tbnz            w0, #4, #0x73f454
    // 0x73f44c: r1 = Instance_Color
    //     0x73f44c: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73f450: b               #0x73f45c
    // 0x73f454: r1 = Instance_Color
    //     0x73f454: add             x1, PP, #0x19, lsl #12  ; [pp+0x191e8] Obj!Color@a25301
    //     0x73f458: ldr             x1, [x1, #0x1e8]
    // 0x73f45c: ldur            x0, [fp, #-8]
    // 0x73f460: stur            x1, [fp, #-0x10]
    // 0x73f464: r0 = Icon()
    //     0x73f464: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x73f468: mov             x2, x0
    // 0x73f46c: r1 = Instance_IconData
    //     0x73f46c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15528] Obj!IconData@a09ae1
    //     0x73f470: ldr             x1, [x1, #0x528]
    // 0x73f474: stur            x2, [fp, #-0x30]
    // 0x73f478: StoreField: r2->field_b = r1
    //     0x73f478: stur            w1, [x2, #0xb]
    // 0x73f47c: r3 = 18.000000
    //     0x73f47c: add             x3, PP, #0xc, lsl #12  ; [pp+0xce08] 18
    //     0x73f480: ldr             x3, [x3, #0xe08]
    // 0x73f484: StoreField: r2->field_f = r3
    //     0x73f484: stur            w3, [x2, #0xf]
    // 0x73f488: ldur            x0, [fp, #-0x10]
    // 0x73f48c: StoreField: r2->field_23 = r0
    //     0x73f48c: stur            w0, [x2, #0x23]
    // 0x73f490: ldur            x4, [fp, #-8]
    // 0x73f494: r0 = LoadClassIdInstr(r4)
    //     0x73f494: ldur            x0, [x4, #-1]
    //     0x73f498: ubfx            x0, x0, #0xc, #0x14
    // 0x73f49c: r16 = "Mekke"
    //     0x73f49c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x73f4a0: ldr             x16, [x16, #0xdf0]
    // 0x73f4a4: stp             x16, x4, [SP]
    // 0x73f4a8: mov             lr, x0
    // 0x73f4ac: ldr             lr, [x21, lr, lsl #3]
    // 0x73f4b0: blr             lr
    // 0x73f4b4: tbnz            w0, #4, #0x73f4c0
    // 0x73f4b8: r2 = Instance_Color
    //     0x73f4b8: ldr             x2, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73f4bc: b               #0x73f4c8
    // 0x73f4c0: r2 = Instance_Color
    //     0x73f4c0: add             x2, PP, #0x19, lsl #12  ; [pp+0x191e8] Obj!Color@a25301
    //     0x73f4c4: ldr             x2, [x2, #0x1e8]
    // 0x73f4c8: ldur            x1, [fp, #-8]
    // 0x73f4cc: ldur            x0, [fp, #-0x30]
    // 0x73f4d0: stur            x2, [fp, #-0x10]
    // 0x73f4d4: r0 = TextStyle()
    //     0x73f4d4: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x73f4d8: mov             x1, x0
    // 0x73f4dc: r0 = true
    //     0x73f4dc: add             x0, NULL, #0x20  ; true
    // 0x73f4e0: stur            x1, [fp, #-0x38]
    // 0x73f4e4: StoreField: r1->field_7 = r0
    //     0x73f4e4: stur            w0, [x1, #7]
    // 0x73f4e8: ldur            x2, [fp, #-0x10]
    // 0x73f4ec: StoreField: r1->field_b = r2
    //     0x73f4ec: stur            w2, [x1, #0xb]
    // 0x73f4f0: r2 = Instance_FontWeight
    //     0x73f4f0: add             x2, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x73f4f4: ldr             x2, [x2, #0x990]
    // 0x73f4f8: StoreField: r1->field_23 = r2
    //     0x73f4f8: stur            w2, [x1, #0x23]
    // 0x73f4fc: r0 = Text()
    //     0x73f4fc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x73f500: mov             x3, x0
    // 0x73f504: r0 = "Mekke"
    //     0x73f504: add             x0, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x73f508: ldr             x0, [x0, #0xdf0]
    // 0x73f50c: stur            x3, [fp, #-0x10]
    // 0x73f510: StoreField: r3->field_b = r0
    //     0x73f510: stur            w0, [x3, #0xb]
    // 0x73f514: ldur            x0, [fp, #-0x38]
    // 0x73f518: StoreField: r3->field_13 = r0
    //     0x73f518: stur            w0, [x3, #0x13]
    // 0x73f51c: r1 = Null
    //     0x73f51c: mov             x1, NULL
    // 0x73f520: r2 = 6
    //     0x73f520: mov             x2, #6
    // 0x73f524: r0 = AllocateArray()
    //     0x73f524: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73f528: mov             x2, x0
    // 0x73f52c: ldur            x0, [fp, #-0x30]
    // 0x73f530: stur            x2, [fp, #-0x38]
    // 0x73f534: StoreField: r2->field_f = r0
    //     0x73f534: stur            w0, [x2, #0xf]
    // 0x73f538: r16 = Instance_SizedBox
    //     0x73f538: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f68] Obj!SizedBox@a1fb51
    //     0x73f53c: ldr             x16, [x16, #0xf68]
    // 0x73f540: StoreField: r2->field_13 = r16
    //     0x73f540: stur            w16, [x2, #0x13]
    // 0x73f544: ldur            x0, [fp, #-0x10]
    // 0x73f548: ArrayStore: r2[0] = r0  ; List_4
    //     0x73f548: stur            w0, [x2, #0x17]
    // 0x73f54c: r1 = <Widget>
    //     0x73f54c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73f550: r0 = AllocateGrowableArray()
    //     0x73f550: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x73f554: mov             x1, x0
    // 0x73f558: ldur            x0, [fp, #-0x38]
    // 0x73f55c: stur            x1, [fp, #-0x10]
    // 0x73f560: StoreField: r1->field_f = r0
    //     0x73f560: stur            w0, [x1, #0xf]
    // 0x73f564: r2 = 6
    //     0x73f564: mov             x2, #6
    // 0x73f568: StoreField: r1->field_b = r2
    //     0x73f568: stur            w2, [x1, #0xb]
    // 0x73f56c: r0 = Row()
    //     0x73f56c: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x73f570: mov             x1, x0
    // 0x73f574: r0 = Instance_Axis
    //     0x73f574: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x73f578: stur            x1, [fp, #-0x30]
    // 0x73f57c: StoreField: r1->field_f = r0
    //     0x73f57c: stur            w0, [x1, #0xf]
    // 0x73f580: r2 = Instance_MainAxisAlignment
    //     0x73f580: add             x2, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x73f584: ldr             x2, [x2, #0x328]
    // 0x73f588: StoreField: r1->field_13 = r2
    //     0x73f588: stur            w2, [x1, #0x13]
    // 0x73f58c: r3 = Instance_MainAxisSize
    //     0x73f58c: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x73f590: ldr             x3, [x3, #0x330]
    // 0x73f594: ArrayStore: r1[0] = r3  ; List_4
    //     0x73f594: stur            w3, [x1, #0x17]
    // 0x73f598: r4 = Instance_CrossAxisAlignment
    //     0x73f598: add             x4, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x73f59c: ldr             x4, [x4, #0x338]
    // 0x73f5a0: StoreField: r1->field_1b = r4
    //     0x73f5a0: stur            w4, [x1, #0x1b]
    // 0x73f5a4: r5 = Instance_VerticalDirection
    //     0x73f5a4: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x73f5a8: ldr             x5, [x5, #0x340]
    // 0x73f5ac: StoreField: r1->field_23 = r5
    //     0x73f5ac: stur            w5, [x1, #0x23]
    // 0x73f5b0: r6 = Instance_Clip
    //     0x73f5b0: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x73f5b4: ldr             x6, [x6, #0x348]
    // 0x73f5b8: StoreField: r1->field_2b = r6
    //     0x73f5b8: stur            w6, [x1, #0x2b]
    // 0x73f5bc: StoreField: r1->field_2f = rZR
    //     0x73f5bc: stur            xzr, [x1, #0x2f]
    // 0x73f5c0: ldur            x7, [fp, #-0x10]
    // 0x73f5c4: StoreField: r1->field_b = r7
    //     0x73f5c4: stur            w7, [x1, #0xb]
    // 0x73f5c8: r0 = Container()
    //     0x73f5c8: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x73f5cc: stur            x0, [fp, #-0x10]
    // 0x73f5d0: r16 = Instance_EdgeInsets
    //     0x73f5d0: add             x16, PP, #0x19, lsl #12  ; [pp+0x196a8] Obj!EdgeInsets@a0c831
    //     0x73f5d4: ldr             x16, [x16, #0x6a8]
    // 0x73f5d8: ldur            lr, [fp, #-0x28]
    // 0x73f5dc: stp             lr, x16, [SP, #8]
    // 0x73f5e0: ldur            x16, [fp, #-0x30]
    // 0x73f5e4: str             x16, [SP]
    // 0x73f5e8: mov             x1, x0
    // 0x73f5ec: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x73f5ec: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x73f5f0: ldr             x4, [x4, #0x1e8]
    // 0x73f5f4: r0 = Container()
    //     0x73f5f4: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x73f5f8: r0 = GestureDetector()
    //     0x73f5f8: bl              #0x658e60  ; AllocateGestureDetectorStub -> GestureDetector (size=0x10c)
    // 0x73f5fc: ldur            x2, [fp, #-0x18]
    // 0x73f600: r1 = Function '<anonymous closure>':.
    //     0x73f600: add             x1, PP, #0x19, lsl #12  ; [pp+0x196b0] AnonymousClosure: (0x73fa34), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_buildLocationSelector (0x73f2ec)
    //     0x73f604: ldr             x1, [x1, #0x6b0]
    // 0x73f608: stur            x0, [fp, #-0x28]
    // 0x73f60c: r0 = AllocateClosure()
    //     0x73f60c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73f610: ldur            x16, [fp, #-0x10]
    // 0x73f614: stp             x16, x0, [SP]
    // 0x73f618: ldur            x1, [fp, #-0x28]
    // 0x73f61c: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, onTap, 0x1, null]
    //     0x73f61c: add             x4, PP, #0x14, lsl #12  ; [pp+0x14d50] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "onTap", 0x1, Null]
    //     0x73f620: ldr             x4, [x4, #0xd50]
    // 0x73f624: r0 = GestureDetector()
    //     0x73f624: bl              #0x6582a4  ; [package:flutter/src/widgets/gesture_detector.dart] GestureDetector::GestureDetector
    // 0x73f628: r1 = <FlexParentData>
    //     0x73f628: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x73f62c: ldr             x1, [x1, #0x340]
    // 0x73f630: r0 = Expanded()
    //     0x73f630: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x73f634: mov             x2, x0
    // 0x73f638: r1 = 1
    //     0x73f638: mov             x1, #1
    // 0x73f63c: stur            x2, [fp, #-0x10]
    // 0x73f640: StoreField: r2->field_13 = r1
    //     0x73f640: stur            x1, [x2, #0x13]
    // 0x73f644: r3 = Instance_FlexFit
    //     0x73f644: add             x3, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x73f648: ldr             x3, [x3, #0x348]
    // 0x73f64c: StoreField: r2->field_1b = r3
    //     0x73f64c: stur            w3, [x2, #0x1b]
    // 0x73f650: ldur            x0, [fp, #-0x28]
    // 0x73f654: StoreField: r2->field_b = r0
    //     0x73f654: stur            w0, [x2, #0xb]
    // 0x73f658: ldur            x4, [fp, #-8]
    // 0x73f65c: r0 = LoadClassIdInstr(r4)
    //     0x73f65c: ldur            x0, [x4, #-1]
    //     0x73f660: ubfx            x0, x0, #0xc, #0x14
    // 0x73f664: r16 = "Medine"
    //     0x73f664: add             x16, PP, #0x11, lsl #12  ; [pp+0x11e00] "Medine"
    //     0x73f668: ldr             x16, [x16, #0xe00]
    // 0x73f66c: stp             x16, x4, [SP]
    // 0x73f670: mov             lr, x0
    // 0x73f674: ldr             lr, [x21, lr, lsl #3]
    // 0x73f678: blr             lr
    // 0x73f67c: tbnz            w0, #4, #0x73f68c
    // 0x73f680: r1 = Instance_Color
    //     0x73f680: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x73f684: ldr             x1, [x1, #0xf30]
    // 0x73f688: b               #0x73f694
    // 0x73f68c: r1 = Instance_Color
    //     0x73f68c: add             x1, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x73f690: ldr             x1, [x1, #0x860]
    // 0x73f694: ldur            x0, [fp, #-8]
    // 0x73f698: stur            x1, [fp, #-0x28]
    // 0x73f69c: r0 = BoxDecoration()
    //     0x73f69c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x73f6a0: mov             x1, x0
    // 0x73f6a4: ldur            x0, [fp, #-0x28]
    // 0x73f6a8: stur            x1, [fp, #-0x30]
    // 0x73f6ac: StoreField: r1->field_7 = r0
    //     0x73f6ac: stur            w0, [x1, #7]
    // 0x73f6b0: r0 = Instance_BorderRadius
    //     0x73f6b0: add             x0, PP, #0x19, lsl #12  ; [pp+0x196b8] Obj!BorderRadius@a0ccf1
    //     0x73f6b4: ldr             x0, [x0, #0x6b8]
    // 0x73f6b8: StoreField: r1->field_13 = r0
    //     0x73f6b8: stur            w0, [x1, #0x13]
    // 0x73f6bc: r0 = Instance_BoxShape
    //     0x73f6bc: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x73f6c0: ldr             x0, [x0, #0x1c8]
    // 0x73f6c4: StoreField: r1->field_23 = r0
    //     0x73f6c4: stur            w0, [x1, #0x23]
    // 0x73f6c8: ldur            x2, [fp, #-8]
    // 0x73f6cc: r0 = LoadClassIdInstr(r2)
    //     0x73f6cc: ldur            x0, [x2, #-1]
    //     0x73f6d0: ubfx            x0, x0, #0xc, #0x14
    // 0x73f6d4: r16 = "Medine"
    //     0x73f6d4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11e00] "Medine"
    //     0x73f6d8: ldr             x16, [x16, #0xe00]
    // 0x73f6dc: stp             x16, x2, [SP]
    // 0x73f6e0: mov             lr, x0
    // 0x73f6e4: ldr             lr, [x21, lr, lsl #3]
    // 0x73f6e8: blr             lr
    // 0x73f6ec: tbnz            w0, #4, #0x73f6f8
    // 0x73f6f0: r1 = Instance_Color
    //     0x73f6f0: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73f6f4: b               #0x73f700
    // 0x73f6f8: r1 = Instance_Color
    //     0x73f6f8: add             x1, PP, #0x19, lsl #12  ; [pp+0x191e8] Obj!Color@a25301
    //     0x73f6fc: ldr             x1, [x1, #0x1e8]
    // 0x73f700: ldur            x0, [fp, #-8]
    // 0x73f704: stur            x1, [fp, #-0x28]
    // 0x73f708: r0 = Icon()
    //     0x73f708: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x73f70c: mov             x1, x0
    // 0x73f710: r0 = Instance_IconData
    //     0x73f710: add             x0, PP, #0x15, lsl #12  ; [pp+0x15528] Obj!IconData@a09ae1
    //     0x73f714: ldr             x0, [x0, #0x528]
    // 0x73f718: stur            x1, [fp, #-0x38]
    // 0x73f71c: StoreField: r1->field_b = r0
    //     0x73f71c: stur            w0, [x1, #0xb]
    // 0x73f720: r0 = 18.000000
    //     0x73f720: add             x0, PP, #0xc, lsl #12  ; [pp+0xce08] 18
    //     0x73f724: ldr             x0, [x0, #0xe08]
    // 0x73f728: StoreField: r1->field_f = r0
    //     0x73f728: stur            w0, [x1, #0xf]
    // 0x73f72c: ldur            x0, [fp, #-0x28]
    // 0x73f730: StoreField: r1->field_23 = r0
    //     0x73f730: stur            w0, [x1, #0x23]
    // 0x73f734: ldur            x0, [fp, #-8]
    // 0x73f738: r2 = LoadClassIdInstr(r0)
    //     0x73f738: ldur            x2, [x0, #-1]
    //     0x73f73c: ubfx            x2, x2, #0xc, #0x14
    // 0x73f740: r16 = "Medine"
    //     0x73f740: add             x16, PP, #0x11, lsl #12  ; [pp+0x11e00] "Medine"
    //     0x73f744: ldr             x16, [x16, #0xe00]
    // 0x73f748: stp             x16, x0, [SP]
    // 0x73f74c: mov             x0, x2
    // 0x73f750: mov             lr, x0
    // 0x73f754: ldr             lr, [x21, lr, lsl #3]
    // 0x73f758: blr             lr
    // 0x73f75c: tbnz            w0, #4, #0x73f768
    // 0x73f760: r2 = Instance_Color
    //     0x73f760: ldr             x2, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73f764: b               #0x73f770
    // 0x73f768: r2 = Instance_Color
    //     0x73f768: add             x2, PP, #0x19, lsl #12  ; [pp+0x191e8] Obj!Color@a25301
    //     0x73f76c: ldr             x2, [x2, #0x1e8]
    // 0x73f770: ldur            x1, [fp, #-0x10]
    // 0x73f774: ldur            x0, [fp, #-0x38]
    // 0x73f778: stur            x2, [fp, #-8]
    // 0x73f77c: r0 = TextStyle()
    //     0x73f77c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x73f780: mov             x1, x0
    // 0x73f784: r0 = true
    //     0x73f784: add             x0, NULL, #0x20  ; true
    // 0x73f788: stur            x1, [fp, #-0x28]
    // 0x73f78c: StoreField: r1->field_7 = r0
    //     0x73f78c: stur            w0, [x1, #7]
    // 0x73f790: ldur            x0, [fp, #-8]
    // 0x73f794: StoreField: r1->field_b = r0
    //     0x73f794: stur            w0, [x1, #0xb]
    // 0x73f798: r0 = Instance_FontWeight
    //     0x73f798: add             x0, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x73f79c: ldr             x0, [x0, #0x990]
    // 0x73f7a0: StoreField: r1->field_23 = r0
    //     0x73f7a0: stur            w0, [x1, #0x23]
    // 0x73f7a4: r0 = Text()
    //     0x73f7a4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x73f7a8: mov             x3, x0
    // 0x73f7ac: r0 = "Medine"
    //     0x73f7ac: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e00] "Medine"
    //     0x73f7b0: ldr             x0, [x0, #0xe00]
    // 0x73f7b4: stur            x3, [fp, #-8]
    // 0x73f7b8: StoreField: r3->field_b = r0
    //     0x73f7b8: stur            w0, [x3, #0xb]
    // 0x73f7bc: ldur            x0, [fp, #-0x28]
    // 0x73f7c0: StoreField: r3->field_13 = r0
    //     0x73f7c0: stur            w0, [x3, #0x13]
    // 0x73f7c4: r1 = Null
    //     0x73f7c4: mov             x1, NULL
    // 0x73f7c8: r2 = 6
    //     0x73f7c8: mov             x2, #6
    // 0x73f7cc: r0 = AllocateArray()
    //     0x73f7cc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73f7d0: mov             x2, x0
    // 0x73f7d4: ldur            x0, [fp, #-0x38]
    // 0x73f7d8: stur            x2, [fp, #-0x28]
    // 0x73f7dc: StoreField: r2->field_f = r0
    //     0x73f7dc: stur            w0, [x2, #0xf]
    // 0x73f7e0: r16 = Instance_SizedBox
    //     0x73f7e0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f68] Obj!SizedBox@a1fb51
    //     0x73f7e4: ldr             x16, [x16, #0xf68]
    // 0x73f7e8: StoreField: r2->field_13 = r16
    //     0x73f7e8: stur            w16, [x2, #0x13]
    // 0x73f7ec: ldur            x0, [fp, #-8]
    // 0x73f7f0: ArrayStore: r2[0] = r0  ; List_4
    //     0x73f7f0: stur            w0, [x2, #0x17]
    // 0x73f7f4: r1 = <Widget>
    //     0x73f7f4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73f7f8: r0 = AllocateGrowableArray()
    //     0x73f7f8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x73f7fc: mov             x1, x0
    // 0x73f800: ldur            x0, [fp, #-0x28]
    // 0x73f804: stur            x1, [fp, #-8]
    // 0x73f808: StoreField: r1->field_f = r0
    //     0x73f808: stur            w0, [x1, #0xf]
    // 0x73f80c: r0 = 6
    //     0x73f80c: mov             x0, #6
    // 0x73f810: StoreField: r1->field_b = r0
    //     0x73f810: stur            w0, [x1, #0xb]
    // 0x73f814: r0 = Row()
    //     0x73f814: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x73f818: mov             x1, x0
    // 0x73f81c: r0 = Instance_Axis
    //     0x73f81c: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x73f820: stur            x1, [fp, #-0x28]
    // 0x73f824: StoreField: r1->field_f = r0
    //     0x73f824: stur            w0, [x1, #0xf]
    // 0x73f828: r2 = Instance_MainAxisAlignment
    //     0x73f828: add             x2, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x73f82c: ldr             x2, [x2, #0x328]
    // 0x73f830: StoreField: r1->field_13 = r2
    //     0x73f830: stur            w2, [x1, #0x13]
    // 0x73f834: r2 = Instance_MainAxisSize
    //     0x73f834: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x73f838: ldr             x2, [x2, #0x330]
    // 0x73f83c: ArrayStore: r1[0] = r2  ; List_4
    //     0x73f83c: stur            w2, [x1, #0x17]
    // 0x73f840: r3 = Instance_CrossAxisAlignment
    //     0x73f840: add             x3, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x73f844: ldr             x3, [x3, #0x338]
    // 0x73f848: StoreField: r1->field_1b = r3
    //     0x73f848: stur            w3, [x1, #0x1b]
    // 0x73f84c: r4 = Instance_VerticalDirection
    //     0x73f84c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x73f850: ldr             x4, [x4, #0x340]
    // 0x73f854: StoreField: r1->field_23 = r4
    //     0x73f854: stur            w4, [x1, #0x23]
    // 0x73f858: r5 = Instance_Clip
    //     0x73f858: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x73f85c: ldr             x5, [x5, #0x348]
    // 0x73f860: StoreField: r1->field_2b = r5
    //     0x73f860: stur            w5, [x1, #0x2b]
    // 0x73f864: StoreField: r1->field_2f = rZR
    //     0x73f864: stur            xzr, [x1, #0x2f]
    // 0x73f868: ldur            x6, [fp, #-8]
    // 0x73f86c: StoreField: r1->field_b = r6
    //     0x73f86c: stur            w6, [x1, #0xb]
    // 0x73f870: r0 = Container()
    //     0x73f870: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x73f874: stur            x0, [fp, #-8]
    // 0x73f878: r16 = Instance_EdgeInsets
    //     0x73f878: add             x16, PP, #0x19, lsl #12  ; [pp+0x196a8] Obj!EdgeInsets@a0c831
    //     0x73f87c: ldr             x16, [x16, #0x6a8]
    // 0x73f880: ldur            lr, [fp, #-0x30]
    // 0x73f884: stp             lr, x16, [SP, #8]
    // 0x73f888: ldur            x16, [fp, #-0x28]
    // 0x73f88c: str             x16, [SP]
    // 0x73f890: mov             x1, x0
    // 0x73f894: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x73f894: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x73f898: ldr             x4, [x4, #0x1e8]
    // 0x73f89c: r0 = Container()
    //     0x73f89c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x73f8a0: r0 = GestureDetector()
    //     0x73f8a0: bl              #0x658e60  ; AllocateGestureDetectorStub -> GestureDetector (size=0x10c)
    // 0x73f8a4: ldur            x2, [fp, #-0x18]
    // 0x73f8a8: r1 = Function '<anonymous closure>':.
    //     0x73f8a8: add             x1, PP, #0x19, lsl #12  ; [pp+0x196c0] AnonymousClosure: (0x73f9dc), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_buildLocationSelector (0x73f2ec)
    //     0x73f8ac: ldr             x1, [x1, #0x6c0]
    // 0x73f8b0: stur            x0, [fp, #-0x18]
    // 0x73f8b4: r0 = AllocateClosure()
    //     0x73f8b4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73f8b8: ldur            x16, [fp, #-8]
    // 0x73f8bc: stp             x16, x0, [SP]
    // 0x73f8c0: ldur            x1, [fp, #-0x18]
    // 0x73f8c4: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, onTap, 0x1, null]
    //     0x73f8c4: add             x4, PP, #0x14, lsl #12  ; [pp+0x14d50] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "onTap", 0x1, Null]
    //     0x73f8c8: ldr             x4, [x4, #0xd50]
    // 0x73f8cc: r0 = GestureDetector()
    //     0x73f8cc: bl              #0x6582a4  ; [package:flutter/src/widgets/gesture_detector.dart] GestureDetector::GestureDetector
    // 0x73f8d0: r1 = <FlexParentData>
    //     0x73f8d0: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x73f8d4: ldr             x1, [x1, #0x340]
    // 0x73f8d8: r0 = Expanded()
    //     0x73f8d8: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x73f8dc: mov             x3, x0
    // 0x73f8e0: r0 = 1
    //     0x73f8e0: mov             x0, #1
    // 0x73f8e4: stur            x3, [fp, #-8]
    // 0x73f8e8: StoreField: r3->field_13 = r0
    //     0x73f8e8: stur            x0, [x3, #0x13]
    // 0x73f8ec: r0 = Instance_FlexFit
    //     0x73f8ec: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x73f8f0: ldr             x0, [x0, #0x348]
    // 0x73f8f4: StoreField: r3->field_1b = r0
    //     0x73f8f4: stur            w0, [x3, #0x1b]
    // 0x73f8f8: ldur            x0, [fp, #-0x18]
    // 0x73f8fc: StoreField: r3->field_b = r0
    //     0x73f8fc: stur            w0, [x3, #0xb]
    // 0x73f900: r1 = Null
    //     0x73f900: mov             x1, NULL
    // 0x73f904: r2 = 4
    //     0x73f904: mov             x2, #4
    // 0x73f908: r0 = AllocateArray()
    //     0x73f908: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73f90c: mov             x2, x0
    // 0x73f910: ldur            x0, [fp, #-0x10]
    // 0x73f914: stur            x2, [fp, #-0x18]
    // 0x73f918: StoreField: r2->field_f = r0
    //     0x73f918: stur            w0, [x2, #0xf]
    // 0x73f91c: ldur            x0, [fp, #-8]
    // 0x73f920: StoreField: r2->field_13 = r0
    //     0x73f920: stur            w0, [x2, #0x13]
    // 0x73f924: r1 = <Widget>
    //     0x73f924: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73f928: r0 = AllocateGrowableArray()
    //     0x73f928: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x73f92c: mov             x1, x0
    // 0x73f930: ldur            x0, [fp, #-0x18]
    // 0x73f934: stur            x1, [fp, #-8]
    // 0x73f938: StoreField: r1->field_f = r0
    //     0x73f938: stur            w0, [x1, #0xf]
    // 0x73f93c: r0 = 4
    //     0x73f93c: mov             x0, #4
    // 0x73f940: StoreField: r1->field_b = r0
    //     0x73f940: stur            w0, [x1, #0xb]
    // 0x73f944: r0 = Row()
    //     0x73f944: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x73f948: mov             x1, x0
    // 0x73f94c: r0 = Instance_Axis
    //     0x73f94c: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x73f950: stur            x1, [fp, #-0x10]
    // 0x73f954: StoreField: r1->field_f = r0
    //     0x73f954: stur            w0, [x1, #0xf]
    // 0x73f958: r0 = Instance_MainAxisAlignment
    //     0x73f958: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x73f95c: ldr             x0, [x0, #0x230]
    // 0x73f960: StoreField: r1->field_13 = r0
    //     0x73f960: stur            w0, [x1, #0x13]
    // 0x73f964: r0 = Instance_MainAxisSize
    //     0x73f964: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x73f968: ldr             x0, [x0, #0x330]
    // 0x73f96c: ArrayStore: r1[0] = r0  ; List_4
    //     0x73f96c: stur            w0, [x1, #0x17]
    // 0x73f970: r0 = Instance_CrossAxisAlignment
    //     0x73f970: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x73f974: ldr             x0, [x0, #0x338]
    // 0x73f978: StoreField: r1->field_1b = r0
    //     0x73f978: stur            w0, [x1, #0x1b]
    // 0x73f97c: r0 = Instance_VerticalDirection
    //     0x73f97c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x73f980: ldr             x0, [x0, #0x340]
    // 0x73f984: StoreField: r1->field_23 = r0
    //     0x73f984: stur            w0, [x1, #0x23]
    // 0x73f988: r0 = Instance_Clip
    //     0x73f988: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x73f98c: ldr             x0, [x0, #0x348]
    // 0x73f990: StoreField: r1->field_2b = r0
    //     0x73f990: stur            w0, [x1, #0x2b]
    // 0x73f994: StoreField: r1->field_2f = rZR
    //     0x73f994: stur            xzr, [x1, #0x2f]
    // 0x73f998: ldur            x0, [fp, #-8]
    // 0x73f99c: StoreField: r1->field_b = r0
    //     0x73f99c: stur            w0, [x1, #0xb]
    // 0x73f9a0: r0 = Container()
    //     0x73f9a0: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x73f9a4: stur            x0, [fp, #-8]
    // 0x73f9a8: ldur            x16, [fp, #-0x20]
    // 0x73f9ac: ldur            lr, [fp, #-0x10]
    // 0x73f9b0: stp             lr, x16, [SP]
    // 0x73f9b4: mov             x1, x0
    // 0x73f9b8: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, decoration, 0x1, null]
    //     0x73f9b8: add             x4, PP, #0x14, lsl #12  ; [pp+0x14fa8] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "decoration", 0x1, Null]
    //     0x73f9bc: ldr             x4, [x4, #0xfa8]
    // 0x73f9c0: r0 = Container()
    //     0x73f9c0: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x73f9c4: ldur            x0, [fp, #-8]
    // 0x73f9c8: LeaveFrame
    //     0x73f9c8: mov             SP, fp
    //     0x73f9cc: ldp             fp, lr, [SP], #0x10
    // 0x73f9d0: ret
    //     0x73f9d0: ret             
    // 0x73f9d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73f9d4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73f9d8: b               #0x73f30c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x73f9dc, size: 0x58
    // 0x73f9dc: EnterFrame
    //     0x73f9dc: stp             fp, lr, [SP, #-0x10]!
    //     0x73f9e0: mov             fp, SP
    // 0x73f9e4: AllocStack(0x10)
    //     0x73f9e4: sub             SP, SP, #0x10
    // 0x73f9e8: SetupParameters([dynamic _ /* r0 */])
    //     0x73f9e8: ldr             x0, [fp, #0x10]
    //     0x73f9ec: ldur            w1, [x0, #0x17]
    //     0x73f9f0: add             x1, x1, HEAP, lsl #32
    // 0x73f9f4: CheckStackOverflow
    //     0x73f9f4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73f9f8: cmp             SP, x16
    //     0x73f9fc: b.ls            #0x73fa2c
    // 0x73fa00: LoadField: r0 = r1->field_f
    //     0x73fa00: ldur            w0, [x1, #0xf]
    // 0x73fa04: DecompressPointer r0
    //     0x73fa04: add             x0, x0, HEAP, lsl #32
    // 0x73fa08: r16 = "Medine"
    //     0x73fa08: add             x16, PP, #0x11, lsl #12  ; [pp+0x11e00] "Medine"
    //     0x73fa0c: ldr             x16, [x16, #0xe00]
    // 0x73fa10: stp             x16, x0, [SP]
    // 0x73fa14: ClosureCall
    //     0x73fa14: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x73fa18: ldur            x2, [x0, #0x1f]
    //     0x73fa1c: blr             x2
    // 0x73fa20: LeaveFrame
    //     0x73fa20: mov             SP, fp
    //     0x73fa24: ldp             fp, lr, [SP], #0x10
    // 0x73fa28: ret
    //     0x73fa28: ret             
    // 0x73fa2c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73fa2c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73fa30: b               #0x73fa00
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x73fa34, size: 0x58
    // 0x73fa34: EnterFrame
    //     0x73fa34: stp             fp, lr, [SP, #-0x10]!
    //     0x73fa38: mov             fp, SP
    // 0x73fa3c: AllocStack(0x10)
    //     0x73fa3c: sub             SP, SP, #0x10
    // 0x73fa40: SetupParameters([dynamic _ /* r0 */])
    //     0x73fa40: ldr             x0, [fp, #0x10]
    //     0x73fa44: ldur            w1, [x0, #0x17]
    //     0x73fa48: add             x1, x1, HEAP, lsl #32
    // 0x73fa4c: CheckStackOverflow
    //     0x73fa4c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73fa50: cmp             SP, x16
    //     0x73fa54: b.ls            #0x73fa84
    // 0x73fa58: LoadField: r0 = r1->field_f
    //     0x73fa58: ldur            w0, [x1, #0xf]
    // 0x73fa5c: DecompressPointer r0
    //     0x73fa5c: add             x0, x0, HEAP, lsl #32
    // 0x73fa60: r16 = "Mekke"
    //     0x73fa60: add             x16, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x73fa64: ldr             x16, [x16, #0xdf0]
    // 0x73fa68: stp             x16, x0, [SP]
    // 0x73fa6c: ClosureCall
    //     0x73fa6c: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x73fa70: ldur            x2, [x0, #0x1f]
    //     0x73fa74: blr             x2
    // 0x73fa78: LeaveFrame
    //     0x73fa78: mov             SP, fp
    //     0x73fa7c: ldp             fp, lr, [SP], #0x10
    // 0x73fa80: ret
    //     0x73fa80: ret             
    // 0x73fa84: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73fa84: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73fa88: b               #0x73fa58
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x73fa8c, size: 0xa24
    // 0x73fa8c: EnterFrame
    //     0x73fa8c: stp             fp, lr, [SP, #-0x10]!
    //     0x73fa90: mov             fp, SP
    // 0x73fa94: AllocStack(0xa8)
    //     0x73fa94: sub             SP, SP, #0xa8
    // 0x73fa98: SetupParameters(UsersTabState this /* r1 */)
    //     0x73fa98: stur            NULL, [fp, #-8]
    //     0x73fa9c: mov             x0, #0
    //     0x73faa0: add             x1, fp, w0, sxtw #2
    //     0x73faa4: ldr             x1, [x1, #0x10]
    //     0x73faa8: ldur            w2, [x1, #0x17]
    //     0x73faac: add             x2, x2, HEAP, lsl #32
    //     0x73fab0: stur            x2, [fp, #-0x68]
    // 0x73fab4: CheckStackOverflow
    //     0x73fab4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73fab8: cmp             SP, x16
    //     0x73fabc: b.ls            #0x7404a0
    // 0x73fac0: InitAsync() -> Future<void?>
    //     0x73fac0: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x73fac4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x73fac8: ldur            x2, [fp, #-0x68]
    // 0x73facc: LoadField: r0 = r2->field_b
    //     0x73facc: ldur            w0, [x2, #0xb]
    // 0x73fad0: DecompressPointer r0
    //     0x73fad0: add             x0, x0, HEAP, lsl #32
    // 0x73fad4: stur            x0, [fp, #-0x80]
    // 0x73fad8: LoadField: r3 = r0->field_b
    //     0x73fad8: ldur            w3, [x0, #0xb]
    // 0x73fadc: DecompressPointer r3
    //     0x73fadc: add             x3, x3, HEAP, lsl #32
    // 0x73fae0: stur            x3, [fp, #-0x78]
    // 0x73fae4: LoadField: r4 = r3->field_1b
    //     0x73fae4: ldur            w4, [x3, #0x1b]
    // 0x73fae8: DecompressPointer r4
    //     0x73fae8: add             x4, x4, HEAP, lsl #32
    // 0x73faec: stur            x4, [fp, #-0x70]
    // 0x73faf0: LoadField: r1 = r4->field_27
    //     0x73faf0: ldur            w1, [x4, #0x27]
    // 0x73faf4: DecompressPointer r1
    //     0x73faf4: add             x1, x1, HEAP, lsl #32
    // 0x73faf8: LoadField: r5 = r1->field_7
    //     0x73faf8: ldur            w5, [x1, #7]
    // 0x73fafc: DecompressPointer r5
    //     0x73fafc: add             x5, x5, HEAP, lsl #32
    // 0x73fb00: mov             x1, x5
    // 0x73fb04: r0 = trim()
    //     0x73fb04: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x73fb08: LoadField: r1 = r0->field_7
    //     0x73fb08: ldur            w1, [x0, #7]
    // 0x73fb0c: cbz             w1, #0x73fb40
    // 0x73fb10: ldur            x0, [fp, #-0x78]
    // 0x73fb14: LoadField: r2 = r0->field_1f
    //     0x73fb14: ldur            w2, [x0, #0x1f]
    // 0x73fb18: DecompressPointer r2
    //     0x73fb18: add             x2, x2, HEAP, lsl #32
    // 0x73fb1c: stur            x2, [fp, #-0x88]
    // 0x73fb20: LoadField: r1 = r2->field_27
    //     0x73fb20: ldur            w1, [x2, #0x27]
    // 0x73fb24: DecompressPointer r1
    //     0x73fb24: add             x1, x1, HEAP, lsl #32
    // 0x73fb28: LoadField: r3 = r1->field_7
    //     0x73fb28: ldur            w3, [x1, #7]
    // 0x73fb2c: DecompressPointer r3
    //     0x73fb2c: add             x3, x3, HEAP, lsl #32
    // 0x73fb30: mov             x1, x3
    // 0x73fb34: r0 = trim()
    //     0x73fb34: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x73fb38: LoadField: r1 = r0->field_7
    //     0x73fb38: ldur            w1, [x0, #7]
    // 0x73fb3c: cbnz            w1, #0x73fb68
    // 0x73fb40: ldur            x0, [fp, #-0x68]
    // 0x73fb44: LoadField: r1 = r0->field_f
    //     0x73fb44: ldur            w1, [x0, #0xf]
    // 0x73fb48: DecompressPointer r1
    //     0x73fb48: add             x1, x1, HEAP, lsl #32
    // 0x73fb4c: r0 = of()
    //     0x73fb4c: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x73fb50: mov             x1, x0
    // 0x73fb54: r2 = Instance_SnackBar
    //     0x73fb54: add             x2, PP, #0x19, lsl #12  ; [pp+0x195d0] Obj!SnackBar@a20751
    //     0x73fb58: ldr             x2, [x2, #0x5d0]
    // 0x73fb5c: r0 = showSnackBar()
    //     0x73fb5c: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x73fb60: r0 = Null
    //     0x73fb60: mov             x0, NULL
    // 0x73fb64: r0 = ReturnAsyncNotFuture()
    //     0x73fb64: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x73fb68: ldur            x0, [fp, #-0x68]
    // 0x73fb6c: LoadField: r3 = r0->field_13
    //     0x73fb6c: ldur            w3, [x0, #0x13]
    // 0x73fb70: DecompressPointer r3
    //     0x73fb70: add             x3, x3, HEAP, lsl #32
    // 0x73fb74: mov             x2, x0
    // 0x73fb78: stur            x3, [fp, #-0x90]
    // 0x73fb7c: r1 = Function '<anonymous closure>':.
    //     0x73fb7c: add             x1, PP, #0x19, lsl #12  ; [pp+0x195d8] AnonymousClosure: (0x7404b0), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x73fb80: ldr             x1, [x1, #0x5d8]
    // 0x73fb84: r0 = AllocateClosure()
    //     0x73fb84: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73fb88: ldur            x16, [fp, #-0x90]
    // 0x73fb8c: stp             x0, x16, [SP]
    // 0x73fb90: ldur            x0, [fp, #-0x90]
    // 0x73fb94: ClosureCall
    //     0x73fb94: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x73fb98: ldur            x2, [x0, #0x1f]
    //     0x73fb9c: blr             x2
    // 0x73fba0: ldur            x0, [fp, #-0x78]
    // 0x73fba4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x73fba4: ldur            w1, [x0, #0x17]
    // 0x73fba8: DecompressPointer r1
    //     0x73fba8: add             x1, x1, HEAP, lsl #32
    // 0x73fbac: tbnz            w1, #4, #0x740010
    // 0x73fbb0: ldur            x4, [fp, #-0x70]
    // 0x73fbb4: ldur            x3, [fp, #-0x88]
    // 0x73fbb8: LoadField: r1 = r0->field_f
    //     0x73fbb8: ldur            w1, [x0, #0xf]
    // 0x73fbbc: DecompressPointer r1
    //     0x73fbbc: add             x1, x1, HEAP, lsl #32
    // 0x73fbc0: LoadField: r2 = r1->field_b
    //     0x73fbc0: ldur            w2, [x1, #0xb]
    // 0x73fbc4: DecompressPointer r2
    //     0x73fbc4: add             x2, x2, HEAP, lsl #32
    // 0x73fbc8: cmp             w2, NULL
    // 0x73fbcc: b.eq            #0x7404a8
    // 0x73fbd0: LoadField: r1 = r2->field_1f
    //     0x73fbd0: ldur            w1, [x2, #0x1f]
    // 0x73fbd4: DecompressPointer r1
    //     0x73fbd4: add             x1, x1, HEAP, lsl #32
    // 0x73fbd8: LoadField: r2 = r1->field_7
    //     0x73fbd8: ldur            w2, [x1, #7]
    // 0x73fbdc: DecompressPointer r2
    //     0x73fbdc: add             x2, x2, HEAP, lsl #32
    // 0x73fbe0: mov             x1, x2
    // 0x73fbe4: r2 = "users"
    //     0x73fbe4: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x73fbe8: ldr             x2, [x2, #0x808]
    // 0x73fbec: r0 = collection()
    //     0x73fbec: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x73fbf0: mov             x1, x0
    // 0x73fbf4: ldur            x0, [fp, #-0x78]
    // 0x73fbf8: LoadField: r2 = r0->field_13
    //     0x73fbf8: ldur            w2, [x0, #0x13]
    // 0x73fbfc: DecompressPointer r2
    //     0x73fbfc: add             x2, x2, HEAP, lsl #32
    // 0x73fc00: cmp             w2, NULL
    // 0x73fc04: b.eq            #0x7404ac
    // 0x73fc08: LoadField: r3 = r2->field_7
    //     0x73fc08: ldur            w3, [x2, #7]
    // 0x73fc0c: DecompressPointer r3
    //     0x73fc0c: add             x3, x3, HEAP, lsl #32
    // 0x73fc10: str             x3, [SP]
    // 0x73fc14: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x73fc14: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x73fc18: r0 = doc()
    //     0x73fc18: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x73fc1c: r1 = Null
    //     0x73fc1c: mov             x1, NULL
    // 0x73fc20: r2 = 56
    //     0x73fc20: mov             x2, #0x38
    // 0x73fc24: stur            x0, [fp, #-0x90]
    // 0x73fc28: r0 = AllocateArray()
    //     0x73fc28: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73fc2c: stur            x0, [fp, #-0x98]
    // 0x73fc30: r16 = "user_name"
    //     0x73fc30: add             x16, PP, #0x14, lsl #12  ; [pp+0x14b30] "user_name"
    //     0x73fc34: ldr             x16, [x16, #0xb30]
    // 0x73fc38: StoreField: r0->field_f = r16
    //     0x73fc38: stur            w16, [x0, #0xf]
    // 0x73fc3c: ldur            x2, [fp, #-0x70]
    // 0x73fc40: LoadField: r1 = r2->field_27
    //     0x73fc40: ldur            w1, [x2, #0x27]
    // 0x73fc44: DecompressPointer r1
    //     0x73fc44: add             x1, x1, HEAP, lsl #32
    // 0x73fc48: LoadField: r2 = r1->field_7
    //     0x73fc48: ldur            w2, [x1, #7]
    // 0x73fc4c: DecompressPointer r2
    //     0x73fc4c: add             x2, x2, HEAP, lsl #32
    // 0x73fc50: mov             x1, x2
    // 0x73fc54: r0 = trim()
    //     0x73fc54: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x73fc58: ldur            x1, [fp, #-0x98]
    // 0x73fc5c: ArrayStore: r1[1] = r0  ; List_4
    //     0x73fc5c: add             x25, x1, #0x13
    //     0x73fc60: str             w0, [x25]
    //     0x73fc64: tbz             w0, #0, #0x73fc80
    //     0x73fc68: ldurb           w16, [x1, #-1]
    //     0x73fc6c: ldurb           w17, [x0, #-1]
    //     0x73fc70: and             x16, x17, x16, lsr #2
    //     0x73fc74: tst             x16, HEAP, lsr #32
    //     0x73fc78: b.eq            #0x73fc80
    //     0x73fc7c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73fc80: ldur            x0, [fp, #-0x98]
    // 0x73fc84: r16 = "user_tc"
    //     0x73fc84: add             x16, PP, #0x15, lsl #12  ; [pp+0x15748] "user_tc"
    //     0x73fc88: ldr             x16, [x16, #0x748]
    // 0x73fc8c: ArrayStore: r0[0] = r16  ; List_4
    //     0x73fc8c: stur            w16, [x0, #0x17]
    // 0x73fc90: ldur            x3, [fp, #-0x88]
    // 0x73fc94: LoadField: r1 = r3->field_27
    //     0x73fc94: ldur            w1, [x3, #0x27]
    // 0x73fc98: DecompressPointer r1
    //     0x73fc98: add             x1, x1, HEAP, lsl #32
    // 0x73fc9c: LoadField: r2 = r1->field_7
    //     0x73fc9c: ldur            w2, [x1, #7]
    // 0x73fca0: DecompressPointer r2
    //     0x73fca0: add             x2, x2, HEAP, lsl #32
    // 0x73fca4: mov             x1, x2
    // 0x73fca8: r0 = trim()
    //     0x73fca8: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x73fcac: ldur            x1, [fp, #-0x98]
    // 0x73fcb0: ArrayStore: r1[3] = r0  ; List_4
    //     0x73fcb0: add             x25, x1, #0x1b
    //     0x73fcb4: str             w0, [x25]
    //     0x73fcb8: tbz             w0, #0, #0x73fcd4
    //     0x73fcbc: ldurb           w16, [x1, #-1]
    //     0x73fcc0: ldurb           w17, [x0, #-1]
    //     0x73fcc4: and             x16, x17, x16, lsr #2
    //     0x73fcc8: tst             x16, HEAP, lsr #32
    //     0x73fccc: b.eq            #0x73fcd4
    //     0x73fcd0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73fcd4: ldur            x0, [fp, #-0x98]
    // 0x73fcd8: r16 = "user_tel"
    //     0x73fcd8: add             x16, PP, #0x15, lsl #12  ; [pp+0x15730] "user_tel"
    //     0x73fcdc: ldr             x16, [x16, #0x730]
    // 0x73fce0: StoreField: r0->field_1f = r16
    //     0x73fce0: stur            w16, [x0, #0x1f]
    // 0x73fce4: ldur            x2, [fp, #-0x78]
    // 0x73fce8: LoadField: r1 = r2->field_23
    //     0x73fce8: ldur            w1, [x2, #0x23]
    // 0x73fcec: DecompressPointer r1
    //     0x73fcec: add             x1, x1, HEAP, lsl #32
    // 0x73fcf0: LoadField: r3 = r1->field_27
    //     0x73fcf0: ldur            w3, [x1, #0x27]
    // 0x73fcf4: DecompressPointer r3
    //     0x73fcf4: add             x3, x3, HEAP, lsl #32
    // 0x73fcf8: LoadField: r1 = r3->field_7
    //     0x73fcf8: ldur            w1, [x3, #7]
    // 0x73fcfc: DecompressPointer r1
    //     0x73fcfc: add             x1, x1, HEAP, lsl #32
    // 0x73fd00: r0 = trim()
    //     0x73fd00: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x73fd04: ldur            x1, [fp, #-0x98]
    // 0x73fd08: ArrayStore: r1[5] = r0  ; List_4
    //     0x73fd08: add             x25, x1, #0x23
    //     0x73fd0c: str             w0, [x25]
    //     0x73fd10: tbz             w0, #0, #0x73fd2c
    //     0x73fd14: ldurb           w16, [x1, #-1]
    //     0x73fd18: ldurb           w17, [x0, #-1]
    //     0x73fd1c: and             x16, x17, x16, lsr #2
    //     0x73fd20: tst             x16, HEAP, lsr #32
    //     0x73fd24: b.eq            #0x73fd2c
    //     0x73fd28: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73fd2c: ldur            x0, [fp, #-0x98]
    // 0x73fd30: r16 = "user_location"
    //     0x73fd30: add             x16, PP, #0x15, lsl #12  ; [pp+0x15760] "user_location"
    //     0x73fd34: ldr             x16, [x16, #0x760]
    // 0x73fd38: StoreField: r0->field_27 = r16
    //     0x73fd38: stur            w16, [x0, #0x27]
    // 0x73fd3c: ldur            x2, [fp, #-0x78]
    // 0x73fd40: LoadField: r1 = r2->field_27
    //     0x73fd40: ldur            w1, [x2, #0x27]
    // 0x73fd44: DecompressPointer r1
    //     0x73fd44: add             x1, x1, HEAP, lsl #32
    // 0x73fd48: LoadField: r3 = r1->field_27
    //     0x73fd48: ldur            w3, [x1, #0x27]
    // 0x73fd4c: DecompressPointer r3
    //     0x73fd4c: add             x3, x3, HEAP, lsl #32
    // 0x73fd50: LoadField: r1 = r3->field_7
    //     0x73fd50: ldur            w1, [x3, #7]
    // 0x73fd54: DecompressPointer r1
    //     0x73fd54: add             x1, x1, HEAP, lsl #32
    // 0x73fd58: r0 = trim()
    //     0x73fd58: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x73fd5c: ldur            x1, [fp, #-0x98]
    // 0x73fd60: ArrayStore: r1[7] = r0  ; List_4
    //     0x73fd60: add             x25, x1, #0x2b
    //     0x73fd64: str             w0, [x25]
    //     0x73fd68: tbz             w0, #0, #0x73fd84
    //     0x73fd6c: ldurb           w16, [x1, #-1]
    //     0x73fd70: ldurb           w17, [x0, #-1]
    //     0x73fd74: and             x16, x17, x16, lsr #2
    //     0x73fd78: tst             x16, HEAP, lsr #32
    //     0x73fd7c: b.eq            #0x73fd84
    //     0x73fd80: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73fd84: ldur            x2, [fp, #-0x98]
    // 0x73fd88: r16 = "user_type"
    //     0x73fd88: add             x16, PP, #0x15, lsl #12  ; [pp+0x15718] "user_type"
    //     0x73fd8c: ldr             x16, [x16, #0x718]
    // 0x73fd90: StoreField: r2->field_2f = r16
    //     0x73fd90: stur            w16, [x2, #0x2f]
    // 0x73fd94: ldur            x3, [fp, #-0x78]
    // 0x73fd98: LoadField: r0 = r3->field_2b
    //     0x73fd98: ldur            w0, [x3, #0x2b]
    // 0x73fd9c: DecompressPointer r0
    //     0x73fd9c: add             x0, x0, HEAP, lsl #32
    // 0x73fda0: mov             x1, x2
    // 0x73fda4: ArrayStore: r1[9] = r0  ; List_4
    //     0x73fda4: add             x25, x1, #0x33
    //     0x73fda8: str             w0, [x25]
    //     0x73fdac: tbz             w0, #0, #0x73fdc8
    //     0x73fdb0: ldurb           w16, [x1, #-1]
    //     0x73fdb4: ldurb           w17, [x0, #-1]
    //     0x73fdb8: and             x16, x17, x16, lsr #2
    //     0x73fdbc: tst             x16, HEAP, lsr #32
    //     0x73fdc0: b.eq            #0x73fdc8
    //     0x73fdc4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73fdc8: r16 = "cinsiyet"
    //     0x73fdc8: add             x16, PP, #0x15, lsl #12  ; [pp+0x15778] "cinsiyet"
    //     0x73fdcc: ldr             x16, [x16, #0x778]
    // 0x73fdd0: StoreField: r2->field_37 = r16
    //     0x73fdd0: stur            w16, [x2, #0x37]
    // 0x73fdd4: LoadField: r0 = r3->field_2f
    //     0x73fdd4: ldur            w0, [x3, #0x2f]
    // 0x73fdd8: DecompressPointer r0
    //     0x73fdd8: add             x0, x0, HEAP, lsl #32
    // 0x73fddc: mov             x1, x2
    // 0x73fde0: ArrayStore: r1[11] = r0  ; List_4
    //     0x73fde0: add             x25, x1, #0x3b
    //     0x73fde4: str             w0, [x25]
    //     0x73fde8: tbz             w0, #0, #0x73fe04
    //     0x73fdec: ldurb           w16, [x1, #-1]
    //     0x73fdf0: ldurb           w17, [x0, #-1]
    //     0x73fdf4: and             x16, x17, x16, lsr #2
    //     0x73fdf8: tst             x16, HEAP, lsr #32
    //     0x73fdfc: b.eq            #0x73fe04
    //     0x73fe00: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73fe04: r16 = "dogum_tarihi"
    //     0x73fe04: add             x16, PP, #0x15, lsl #12  ; [pp+0x15790] "dogum_tarihi"
    //     0x73fe08: ldr             x16, [x16, #0x790]
    // 0x73fe0c: StoreField: r2->field_3f = r16
    //     0x73fe0c: stur            w16, [x2, #0x3f]
    // 0x73fe10: LoadField: r0 = r3->field_33
    //     0x73fe10: ldur            w0, [x3, #0x33]
    // 0x73fe14: DecompressPointer r0
    //     0x73fe14: add             x0, x0, HEAP, lsl #32
    // 0x73fe18: mov             x1, x2
    // 0x73fe1c: ArrayStore: r1[13] = r0  ; List_4
    //     0x73fe1c: add             x25, x1, #0x43
    //     0x73fe20: str             w0, [x25]
    //     0x73fe24: tbz             w0, #0, #0x73fe40
    //     0x73fe28: ldurb           w16, [x1, #-1]
    //     0x73fe2c: ldurb           w17, [x0, #-1]
    //     0x73fe30: and             x16, x17, x16, lsr #2
    //     0x73fe34: tst             x16, HEAP, lsr #32
    //     0x73fe38: b.eq            #0x73fe40
    //     0x73fe3c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73fe40: r16 = "mekke_seferi_id"
    //     0x73fe40: add             x16, PP, #0x14, lsl #12  ; [pp+0x14810] "mekke_seferi_id"
    //     0x73fe44: ldr             x16, [x16, #0x810]
    // 0x73fe48: StoreField: r2->field_47 = r16
    //     0x73fe48: stur            w16, [x2, #0x47]
    // 0x73fe4c: LoadField: r0 = r3->field_3b
    //     0x73fe4c: ldur            w0, [x3, #0x3b]
    // 0x73fe50: DecompressPointer r0
    //     0x73fe50: add             x0, x0, HEAP, lsl #32
    // 0x73fe54: mov             x1, x2
    // 0x73fe58: ArrayStore: r1[15] = r0  ; List_4
    //     0x73fe58: add             x25, x1, #0x4b
    //     0x73fe5c: str             w0, [x25]
    //     0x73fe60: tbz             w0, #0, #0x73fe7c
    //     0x73fe64: ldurb           w16, [x1, #-1]
    //     0x73fe68: ldurb           w17, [x0, #-1]
    //     0x73fe6c: and             x16, x17, x16, lsr #2
    //     0x73fe70: tst             x16, HEAP, lsr #32
    //     0x73fe74: b.eq            #0x73fe7c
    //     0x73fe78: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73fe7c: r16 = "mekke_otel_id"
    //     0x73fe7c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14818] "mekke_otel_id"
    //     0x73fe80: ldr             x16, [x16, #0x818]
    // 0x73fe84: StoreField: r2->field_4f = r16
    //     0x73fe84: stur            w16, [x2, #0x4f]
    // 0x73fe88: LoadField: r0 = r3->field_3f
    //     0x73fe88: ldur            w0, [x3, #0x3f]
    // 0x73fe8c: DecompressPointer r0
    //     0x73fe8c: add             x0, x0, HEAP, lsl #32
    // 0x73fe90: mov             x1, x2
    // 0x73fe94: ArrayStore: r1[17] = r0  ; List_4
    //     0x73fe94: add             x25, x1, #0x53
    //     0x73fe98: str             w0, [x25]
    //     0x73fe9c: tbz             w0, #0, #0x73feb8
    //     0x73fea0: ldurb           w16, [x1, #-1]
    //     0x73fea4: ldurb           w17, [x0, #-1]
    //     0x73fea8: and             x16, x17, x16, lsr #2
    //     0x73feac: tst             x16, HEAP, lsr #32
    //     0x73feb0: b.eq            #0x73feb8
    //     0x73feb4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73feb8: r16 = "mekke_oda_id"
    //     0x73feb8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14820] "mekke_oda_id"
    //     0x73febc: ldr             x16, [x16, #0x820]
    // 0x73fec0: StoreField: r2->field_57 = r16
    //     0x73fec0: stur            w16, [x2, #0x57]
    // 0x73fec4: LoadField: r0 = r3->field_43
    //     0x73fec4: ldur            w0, [x3, #0x43]
    // 0x73fec8: DecompressPointer r0
    //     0x73fec8: add             x0, x0, HEAP, lsl #32
    // 0x73fecc: mov             x1, x2
    // 0x73fed0: ArrayStore: r1[19] = r0  ; List_4
    //     0x73fed0: add             x25, x1, #0x5b
    //     0x73fed4: str             w0, [x25]
    //     0x73fed8: tbz             w0, #0, #0x73fef4
    //     0x73fedc: ldurb           w16, [x1, #-1]
    //     0x73fee0: ldurb           w17, [x0, #-1]
    //     0x73fee4: and             x16, x17, x16, lsr #2
    //     0x73fee8: tst             x16, HEAP, lsr #32
    //     0x73feec: b.eq            #0x73fef4
    //     0x73fef0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73fef4: r16 = "medine_seferi_id"
    //     0x73fef4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14830] "medine_seferi_id"
    //     0x73fef8: ldr             x16, [x16, #0x830]
    // 0x73fefc: StoreField: r2->field_5f = r16
    //     0x73fefc: stur            w16, [x2, #0x5f]
    // 0x73ff00: LoadField: r0 = r3->field_47
    //     0x73ff00: ldur            w0, [x3, #0x47]
    // 0x73ff04: DecompressPointer r0
    //     0x73ff04: add             x0, x0, HEAP, lsl #32
    // 0x73ff08: mov             x1, x2
    // 0x73ff0c: ArrayStore: r1[21] = r0  ; List_4
    //     0x73ff0c: add             x25, x1, #0x63
    //     0x73ff10: str             w0, [x25]
    //     0x73ff14: tbz             w0, #0, #0x73ff30
    //     0x73ff18: ldurb           w16, [x1, #-1]
    //     0x73ff1c: ldurb           w17, [x0, #-1]
    //     0x73ff20: and             x16, x17, x16, lsr #2
    //     0x73ff24: tst             x16, HEAP, lsr #32
    //     0x73ff28: b.eq            #0x73ff30
    //     0x73ff2c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73ff30: r16 = "medine_otel_id"
    //     0x73ff30: add             x16, PP, #0x14, lsl #12  ; [pp+0x14838] "medine_otel_id"
    //     0x73ff34: ldr             x16, [x16, #0x838]
    // 0x73ff38: StoreField: r2->field_67 = r16
    //     0x73ff38: stur            w16, [x2, #0x67]
    // 0x73ff3c: LoadField: r0 = r3->field_4b
    //     0x73ff3c: ldur            w0, [x3, #0x4b]
    // 0x73ff40: DecompressPointer r0
    //     0x73ff40: add             x0, x0, HEAP, lsl #32
    // 0x73ff44: mov             x1, x2
    // 0x73ff48: ArrayStore: r1[23] = r0  ; List_4
    //     0x73ff48: add             x25, x1, #0x6b
    //     0x73ff4c: str             w0, [x25]
    //     0x73ff50: tbz             w0, #0, #0x73ff6c
    //     0x73ff54: ldurb           w16, [x1, #-1]
    //     0x73ff58: ldurb           w17, [x0, #-1]
    //     0x73ff5c: and             x16, x17, x16, lsr #2
    //     0x73ff60: tst             x16, HEAP, lsr #32
    //     0x73ff64: b.eq            #0x73ff6c
    //     0x73ff68: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73ff6c: r16 = "medine_oda_id"
    //     0x73ff6c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14840] "medine_oda_id"
    //     0x73ff70: ldr             x16, [x16, #0x840]
    // 0x73ff74: StoreField: r2->field_6f = r16
    //     0x73ff74: stur            w16, [x2, #0x6f]
    // 0x73ff78: LoadField: r0 = r3->field_4f
    //     0x73ff78: ldur            w0, [x3, #0x4f]
    // 0x73ff7c: DecompressPointer r0
    //     0x73ff7c: add             x0, x0, HEAP, lsl #32
    // 0x73ff80: mov             x1, x2
    // 0x73ff84: ArrayStore: r1[25] = r0  ; List_4
    //     0x73ff84: add             x25, x1, #0x73
    //     0x73ff88: str             w0, [x25]
    //     0x73ff8c: tbz             w0, #0, #0x73ffa8
    //     0x73ff90: ldurb           w16, [x1, #-1]
    //     0x73ff94: ldurb           w17, [x0, #-1]
    //     0x73ff98: and             x16, x17, x16, lsr #2
    //     0x73ff9c: tst             x16, HEAP, lsr #32
    //     0x73ffa0: b.eq            #0x73ffa8
    //     0x73ffa4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73ffa8: r16 = "updated_at"
    //     0x73ffa8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x73ffac: ldr             x16, [x16, #0x58]
    // 0x73ffb0: StoreField: r2->field_77 = r16
    //     0x73ffb0: stur            w16, [x2, #0x77]
    // 0x73ffb4: r0 = serverTimestamp()
    //     0x73ffb4: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x73ffb8: ldur            x1, [fp, #-0x98]
    // 0x73ffbc: ArrayStore: r1[27] = r0  ; List_4
    //     0x73ffbc: add             x25, x1, #0x7b
    //     0x73ffc0: str             w0, [x25]
    //     0x73ffc4: tbz             w0, #0, #0x73ffe0
    //     0x73ffc8: ldurb           w16, [x1, #-1]
    //     0x73ffcc: ldurb           w17, [x0, #-1]
    //     0x73ffd0: and             x16, x17, x16, lsr #2
    //     0x73ffd4: tst             x16, HEAP, lsr #32
    //     0x73ffd8: b.eq            #0x73ffe0
    //     0x73ffdc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73ffe0: r16 = <Object, Object?>
    //     0x73ffe0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14828] TypeArguments: <Object, Object?>
    //     0x73ffe4: ldr             x16, [x16, #0x828]
    // 0x73ffe8: ldur            lr, [fp, #-0x98]
    // 0x73ffec: stp             lr, x16, [SP]
    // 0x73fff0: r0 = Map._fromLiteral()
    //     0x73fff0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x73fff4: ldur            x1, [fp, #-0x90]
    // 0x73fff8: mov             x2, x0
    // 0x73fffc: r0 = update()
    //     0x73fffc: bl              #0x6d3e10  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::update
    // 0x740000: mov             x1, x0
    // 0x740004: stur            x1, [fp, #-0x90]
    // 0x740008: r0 = Await()
    //     0x740008: bl              #0x3dd188  ; AwaitStub
    // 0x74000c: b               #0x7403a4
    // 0x740010: ldur            x2, [fp, #-0x70]
    // 0x740014: ldur            x3, [fp, #-0x88]
    // 0x740018: LoadField: r1 = r0->field_f
    //     0x740018: ldur            w1, [x0, #0xf]
    // 0x74001c: DecompressPointer r1
    //     0x74001c: add             x1, x1, HEAP, lsl #32
    // 0x740020: r0 = firestoreService()
    //     0x740020: bl              #0x6f58b8  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::firestoreService
    // 0x740024: LoadField: r1 = r0->field_7
    //     0x740024: ldur            w1, [x0, #7]
    // 0x740028: DecompressPointer r1
    //     0x740028: add             x1, x1, HEAP, lsl #32
    // 0x74002c: r2 = "users"
    //     0x74002c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x740030: ldr             x2, [x2, #0x808]
    // 0x740034: r0 = collection()
    //     0x740034: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x740038: mov             x1, x0
    // 0x74003c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x74003c: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x740040: r0 = doc()
    //     0x740040: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x740044: r1 = Null
    //     0x740044: mov             x1, NULL
    // 0x740048: r2 = 44
    //     0x740048: mov             x2, #0x2c
    // 0x74004c: stur            x0, [fp, #-0x90]
    // 0x740050: r0 = AllocateArray()
    //     0x740050: bl              #0x9280a0  ; AllocateArrayStub
    // 0x740054: stur            x0, [fp, #-0x98]
    // 0x740058: r16 = "user_token"
    //     0x740058: ldr             x16, [PP, #0x1590]  ; [pp+0x1590] "user_token"
    // 0x74005c: StoreField: r0->field_f = r16
    //     0x74005c: stur            w16, [x0, #0xf]
    // 0x740060: ldur            x2, [fp, #-0x90]
    // 0x740064: LoadField: r1 = r2->field_7
    //     0x740064: ldur            w1, [x2, #7]
    // 0x740068: DecompressPointer r1
    //     0x740068: add             x1, x1, HEAP, lsl #32
    // 0x74006c: LoadField: r3 = r1->field_b
    //     0x74006c: ldur            w3, [x1, #0xb]
    // 0x740070: DecompressPointer r3
    //     0x740070: add             x3, x3, HEAP, lsl #32
    // 0x740074: LoadField: r1 = r3->field_7
    //     0x740074: ldur            w1, [x3, #7]
    // 0x740078: DecompressPointer r1
    //     0x740078: add             x1, x1, HEAP, lsl #32
    // 0x74007c: r0 = last()
    //     0x74007c: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x740080: ldur            x1, [fp, #-0x98]
    // 0x740084: ArrayStore: r1[1] = r0  ; List_4
    //     0x740084: add             x25, x1, #0x13
    //     0x740088: str             w0, [x25]
    //     0x74008c: tbz             w0, #0, #0x7400a8
    //     0x740090: ldurb           w16, [x1, #-1]
    //     0x740094: ldurb           w17, [x0, #-1]
    //     0x740098: and             x16, x17, x16, lsr #2
    //     0x74009c: tst             x16, HEAP, lsr #32
    //     0x7400a0: b.eq            #0x7400a8
    //     0x7400a4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7400a8: ldur            x0, [fp, #-0x98]
    // 0x7400ac: r16 = "user_name"
    //     0x7400ac: add             x16, PP, #0x14, lsl #12  ; [pp+0x14b30] "user_name"
    //     0x7400b0: ldr             x16, [x16, #0xb30]
    // 0x7400b4: ArrayStore: r0[0] = r16  ; List_4
    //     0x7400b4: stur            w16, [x0, #0x17]
    // 0x7400b8: ldur            x1, [fp, #-0x70]
    // 0x7400bc: LoadField: r2 = r1->field_27
    //     0x7400bc: ldur            w2, [x1, #0x27]
    // 0x7400c0: DecompressPointer r2
    //     0x7400c0: add             x2, x2, HEAP, lsl #32
    // 0x7400c4: LoadField: r1 = r2->field_7
    //     0x7400c4: ldur            w1, [x2, #7]
    // 0x7400c8: DecompressPointer r1
    //     0x7400c8: add             x1, x1, HEAP, lsl #32
    // 0x7400cc: r0 = trim()
    //     0x7400cc: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x7400d0: ldur            x1, [fp, #-0x98]
    // 0x7400d4: ArrayStore: r1[3] = r0  ; List_4
    //     0x7400d4: add             x25, x1, #0x1b
    //     0x7400d8: str             w0, [x25]
    //     0x7400dc: tbz             w0, #0, #0x7400f8
    //     0x7400e0: ldurb           w16, [x1, #-1]
    //     0x7400e4: ldurb           w17, [x0, #-1]
    //     0x7400e8: and             x16, x17, x16, lsr #2
    //     0x7400ec: tst             x16, HEAP, lsr #32
    //     0x7400f0: b.eq            #0x7400f8
    //     0x7400f4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7400f8: ldur            x0, [fp, #-0x98]
    // 0x7400fc: r16 = "user_tc"
    //     0x7400fc: add             x16, PP, #0x15, lsl #12  ; [pp+0x15748] "user_tc"
    //     0x740100: ldr             x16, [x16, #0x748]
    // 0x740104: StoreField: r0->field_1f = r16
    //     0x740104: stur            w16, [x0, #0x1f]
    // 0x740108: ldur            x1, [fp, #-0x88]
    // 0x74010c: LoadField: r2 = r1->field_27
    //     0x74010c: ldur            w2, [x1, #0x27]
    // 0x740110: DecompressPointer r2
    //     0x740110: add             x2, x2, HEAP, lsl #32
    // 0x740114: LoadField: r1 = r2->field_7
    //     0x740114: ldur            w1, [x2, #7]
    // 0x740118: DecompressPointer r1
    //     0x740118: add             x1, x1, HEAP, lsl #32
    // 0x74011c: r0 = trim()
    //     0x74011c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x740120: ldur            x1, [fp, #-0x98]
    // 0x740124: ArrayStore: r1[5] = r0  ; List_4
    //     0x740124: add             x25, x1, #0x23
    //     0x740128: str             w0, [x25]
    //     0x74012c: tbz             w0, #0, #0x740148
    //     0x740130: ldurb           w16, [x1, #-1]
    //     0x740134: ldurb           w17, [x0, #-1]
    //     0x740138: and             x16, x17, x16, lsr #2
    //     0x74013c: tst             x16, HEAP, lsr #32
    //     0x740140: b.eq            #0x740148
    //     0x740144: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x740148: ldur            x0, [fp, #-0x98]
    // 0x74014c: r16 = "user_tel"
    //     0x74014c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15730] "user_tel"
    //     0x740150: ldr             x16, [x16, #0x730]
    // 0x740154: StoreField: r0->field_27 = r16
    //     0x740154: stur            w16, [x0, #0x27]
    // 0x740158: ldur            x2, [fp, #-0x78]
    // 0x74015c: LoadField: r1 = r2->field_23
    //     0x74015c: ldur            w1, [x2, #0x23]
    // 0x740160: DecompressPointer r1
    //     0x740160: add             x1, x1, HEAP, lsl #32
    // 0x740164: LoadField: r3 = r1->field_27
    //     0x740164: ldur            w3, [x1, #0x27]
    // 0x740168: DecompressPointer r3
    //     0x740168: add             x3, x3, HEAP, lsl #32
    // 0x74016c: LoadField: r1 = r3->field_7
    //     0x74016c: ldur            w1, [x3, #7]
    // 0x740170: DecompressPointer r1
    //     0x740170: add             x1, x1, HEAP, lsl #32
    // 0x740174: r0 = trim()
    //     0x740174: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x740178: ldur            x1, [fp, #-0x98]
    // 0x74017c: ArrayStore: r1[7] = r0  ; List_4
    //     0x74017c: add             x25, x1, #0x2b
    //     0x740180: str             w0, [x25]
    //     0x740184: tbz             w0, #0, #0x7401a0
    //     0x740188: ldurb           w16, [x1, #-1]
    //     0x74018c: ldurb           w17, [x0, #-1]
    //     0x740190: and             x16, x17, x16, lsr #2
    //     0x740194: tst             x16, HEAP, lsr #32
    //     0x740198: b.eq            #0x7401a0
    //     0x74019c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7401a0: ldur            x0, [fp, #-0x98]
    // 0x7401a4: r16 = "user_location"
    //     0x7401a4: add             x16, PP, #0x15, lsl #12  ; [pp+0x15760] "user_location"
    //     0x7401a8: ldr             x16, [x16, #0x760]
    // 0x7401ac: StoreField: r0->field_2f = r16
    //     0x7401ac: stur            w16, [x0, #0x2f]
    // 0x7401b0: ldur            x2, [fp, #-0x78]
    // 0x7401b4: LoadField: r1 = r2->field_27
    //     0x7401b4: ldur            w1, [x2, #0x27]
    // 0x7401b8: DecompressPointer r1
    //     0x7401b8: add             x1, x1, HEAP, lsl #32
    // 0x7401bc: LoadField: r3 = r1->field_27
    //     0x7401bc: ldur            w3, [x1, #0x27]
    // 0x7401c0: DecompressPointer r3
    //     0x7401c0: add             x3, x3, HEAP, lsl #32
    // 0x7401c4: LoadField: r1 = r3->field_7
    //     0x7401c4: ldur            w1, [x3, #7]
    // 0x7401c8: DecompressPointer r1
    //     0x7401c8: add             x1, x1, HEAP, lsl #32
    // 0x7401cc: r0 = trim()
    //     0x7401cc: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x7401d0: ldur            x1, [fp, #-0x98]
    // 0x7401d4: ArrayStore: r1[9] = r0  ; List_4
    //     0x7401d4: add             x25, x1, #0x33
    //     0x7401d8: str             w0, [x25]
    //     0x7401dc: tbz             w0, #0, #0x7401f8
    //     0x7401e0: ldurb           w16, [x1, #-1]
    //     0x7401e4: ldurb           w17, [x0, #-1]
    //     0x7401e8: and             x16, x17, x16, lsr #2
    //     0x7401ec: tst             x16, HEAP, lsr #32
    //     0x7401f0: b.eq            #0x7401f8
    //     0x7401f4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7401f8: ldur            x2, [fp, #-0x98]
    // 0x7401fc: r16 = "user_type"
    //     0x7401fc: add             x16, PP, #0x15, lsl #12  ; [pp+0x15718] "user_type"
    //     0x740200: ldr             x16, [x16, #0x718]
    // 0x740204: StoreField: r2->field_37 = r16
    //     0x740204: stur            w16, [x2, #0x37]
    // 0x740208: ldur            x3, [fp, #-0x78]
    // 0x74020c: LoadField: r0 = r3->field_2b
    //     0x74020c: ldur            w0, [x3, #0x2b]
    // 0x740210: DecompressPointer r0
    //     0x740210: add             x0, x0, HEAP, lsl #32
    // 0x740214: mov             x1, x2
    // 0x740218: ArrayStore: r1[11] = r0  ; List_4
    //     0x740218: add             x25, x1, #0x3b
    //     0x74021c: str             w0, [x25]
    //     0x740220: tbz             w0, #0, #0x74023c
    //     0x740224: ldurb           w16, [x1, #-1]
    //     0x740228: ldurb           w17, [x0, #-1]
    //     0x74022c: and             x16, x17, x16, lsr #2
    //     0x740230: tst             x16, HEAP, lsr #32
    //     0x740234: b.eq            #0x74023c
    //     0x740238: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x74023c: r16 = "cinsiyet"
    //     0x74023c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15778] "cinsiyet"
    //     0x740240: ldr             x16, [x16, #0x778]
    // 0x740244: StoreField: r2->field_3f = r16
    //     0x740244: stur            w16, [x2, #0x3f]
    // 0x740248: LoadField: r0 = r3->field_2f
    //     0x740248: ldur            w0, [x3, #0x2f]
    // 0x74024c: DecompressPointer r0
    //     0x74024c: add             x0, x0, HEAP, lsl #32
    // 0x740250: mov             x1, x2
    // 0x740254: ArrayStore: r1[13] = r0  ; List_4
    //     0x740254: add             x25, x1, #0x43
    //     0x740258: str             w0, [x25]
    //     0x74025c: tbz             w0, #0, #0x740278
    //     0x740260: ldurb           w16, [x1, #-1]
    //     0x740264: ldurb           w17, [x0, #-1]
    //     0x740268: and             x16, x17, x16, lsr #2
    //     0x74026c: tst             x16, HEAP, lsr #32
    //     0x740270: b.eq            #0x740278
    //     0x740274: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x740278: r16 = "dogum_tarihi"
    //     0x740278: add             x16, PP, #0x15, lsl #12  ; [pp+0x15790] "dogum_tarihi"
    //     0x74027c: ldr             x16, [x16, #0x790]
    // 0x740280: StoreField: r2->field_47 = r16
    //     0x740280: stur            w16, [x2, #0x47]
    // 0x740284: LoadField: r0 = r3->field_33
    //     0x740284: ldur            w0, [x3, #0x33]
    // 0x740288: DecompressPointer r0
    //     0x740288: add             x0, x0, HEAP, lsl #32
    // 0x74028c: mov             x1, x2
    // 0x740290: ArrayStore: r1[15] = r0  ; List_4
    //     0x740290: add             x25, x1, #0x4b
    //     0x740294: str             w0, [x25]
    //     0x740298: tbz             w0, #0, #0x7402b4
    //     0x74029c: ldurb           w16, [x1, #-1]
    //     0x7402a0: ldurb           w17, [x0, #-1]
    //     0x7402a4: and             x16, x17, x16, lsr #2
    //     0x7402a8: tst             x16, HEAP, lsr #32
    //     0x7402ac: b.eq            #0x7402b4
    //     0x7402b0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7402b4: r16 = "agency_id"
    //     0x7402b4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x7402b8: ldr             x16, [x16, #0x40]
    // 0x7402bc: StoreField: r2->field_4f = r16
    //     0x7402bc: stur            w16, [x2, #0x4f]
    // 0x7402c0: LoadField: r1 = r3->field_f
    //     0x7402c0: ldur            w1, [x3, #0xf]
    // 0x7402c4: DecompressPointer r1
    //     0x7402c4: add             x1, x1, HEAP, lsl #32
    // 0x7402c8: r0 = isFocused()
    //     0x7402c8: bl              #0x68a464  ; [package:flutter/src/material/input_decorator.dart] _InputDecoratorState::isFocused
    // 0x7402cc: LoadField: r1 = r0->field_7
    //     0x7402cc: ldur            w1, [x0, #7]
    // 0x7402d0: DecompressPointer r1
    //     0x7402d0: add             x1, x1, HEAP, lsl #32
    // 0x7402d4: mov             x0, x1
    // 0x7402d8: ldur            x1, [fp, #-0x98]
    // 0x7402dc: ArrayStore: r1[17] = r0  ; List_4
    //     0x7402dc: add             x25, x1, #0x53
    //     0x7402e0: str             w0, [x25]
    //     0x7402e4: tbz             w0, #0, #0x740300
    //     0x7402e8: ldurb           w16, [x1, #-1]
    //     0x7402ec: ldurb           w17, [x0, #-1]
    //     0x7402f0: and             x16, x17, x16, lsr #2
    //     0x7402f4: tst             x16, HEAP, lsr #32
    //     0x7402f8: b.eq            #0x740300
    //     0x7402fc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x740300: ldur            x1, [fp, #-0x98]
    // 0x740304: r16 = "created_at"
    //     0x740304: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x740308: ldr             x16, [x16, #0xc00]
    // 0x74030c: StoreField: r1->field_57 = r16
    //     0x74030c: stur            w16, [x1, #0x57]
    // 0x740310: r0 = serverTimestamp()
    //     0x740310: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x740314: ldur            x1, [fp, #-0x98]
    // 0x740318: ArrayStore: r1[19] = r0  ; List_4
    //     0x740318: add             x25, x1, #0x5b
    //     0x74031c: str             w0, [x25]
    //     0x740320: tbz             w0, #0, #0x74033c
    //     0x740324: ldurb           w16, [x1, #-1]
    //     0x740328: ldurb           w17, [x0, #-1]
    //     0x74032c: and             x16, x17, x16, lsr #2
    //     0x740330: tst             x16, HEAP, lsr #32
    //     0x740334: b.eq            #0x74033c
    //     0x740338: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x74033c: ldur            x1, [fp, #-0x98]
    // 0x740340: r16 = "updated_at"
    //     0x740340: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x740344: ldr             x16, [x16, #0x58]
    // 0x740348: StoreField: r1->field_5f = r16
    //     0x740348: stur            w16, [x1, #0x5f]
    // 0x74034c: r0 = serverTimestamp()
    //     0x74034c: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x740350: ldur            x1, [fp, #-0x98]
    // 0x740354: ArrayStore: r1[21] = r0  ; List_4
    //     0x740354: add             x25, x1, #0x63
    //     0x740358: str             w0, [x25]
    //     0x74035c: tbz             w0, #0, #0x740378
    //     0x740360: ldurb           w16, [x1, #-1]
    //     0x740364: ldurb           w17, [x0, #-1]
    //     0x740368: and             x16, x17, x16, lsr #2
    //     0x74036c: tst             x16, HEAP, lsr #32
    //     0x740370: b.eq            #0x740378
    //     0x740374: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x740378: r16 = <String, Object?>
    //     0x740378: ldr             x16, [PP, #0xe8]  ; [pp+0xe8] TypeArguments: <String, Object?>
    // 0x74037c: ldur            lr, [fp, #-0x98]
    // 0x740380: stp             lr, x16, [SP]
    // 0x740384: r0 = Map._fromLiteral()
    //     0x740384: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x740388: ldur            x1, [fp, #-0x90]
    // 0x74038c: mov             x2, x0
    // 0x740390: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x740390: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x740394: r0 = set()
    //     0x740394: bl              #0x5dd284  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::set
    // 0x740398: mov             x1, x0
    // 0x74039c: stur            x1, [fp, #-0x70]
    // 0x7403a0: r0 = Await()
    //     0x7403a0: bl              #0x3dd188  ; AwaitStub
    // 0x7403a4: ldur            x2, [fp, #-0x80]
    // 0x7403a8: ldur            x0, [fp, #-0x78]
    // 0x7403ac: LoadField: r1 = r0->field_f
    //     0x7403ac: ldur            w1, [x0, #0xf]
    // 0x7403b0: DecompressPointer r1
    //     0x7403b0: add             x1, x1, HEAP, lsl #32
    // 0x7403b4: r0 = onDataChanged()
    //     0x7403b4: bl              #0x6f5824  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::onDataChanged
    // 0x7403b8: stur            x0, [fp, #-0x78]
    // 0x7403bc: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x7403bc: ldur            w2, [x0, #0x17]
    // 0x7403c0: DecompressPointer r2
    //     0x7403c0: add             x2, x2, HEAP, lsl #32
    // 0x7403c4: mov             x1, x2
    // 0x7403c8: stur            x2, [fp, #-0x70]
    // 0x7403cc: r0 = _loadAgencyData()
    //     0x7403cc: bl              #0x63a658  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_loadAgencyData
    // 0x7403d0: ldur            x0, [fp, #-0x80]
    // 0x7403d4: LoadField: r1 = r0->field_f
    //     0x7403d4: ldur            w1, [x0, #0xf]
    // 0x7403d8: DecompressPointer r1
    //     0x7403d8: add             x1, x1, HEAP, lsl #32
    // 0x7403dc: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x7403dc: ldur            w0, [x1, #0x17]
    // 0x7403e0: DecompressPointer r0
    //     0x7403e0: add             x0, x0, HEAP, lsl #32
    // 0x7403e4: cmp             w0, NULL
    // 0x7403e8: b.eq            #0x740498
    // 0x7403ec: r16 = <Object?>
    //     0x7403ec: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x7403f0: stp             x1, x16, [SP]
    // 0x7403f4: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7403f4: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7403f8: r0 = pop()
    //     0x7403f8: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x7403fc: b               #0x740498
    // 0x740400: sub             SP, fp, #0xa8
    // 0x740404: ldur            x2, [fp, #-0x68]
    // 0x740408: stur            x0, [fp, #-0x70]
    // 0x74040c: LoadField: r1 = r2->field_f
    //     0x74040c: ldur            w1, [x2, #0xf]
    // 0x740410: DecompressPointer r1
    //     0x740410: add             x1, x1, HEAP, lsl #32
    // 0x740414: r0 = of()
    //     0x740414: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x740418: r1 = Null
    //     0x740418: mov             x1, NULL
    // 0x74041c: r2 = 4
    //     0x74041c: mov             x2, #4
    // 0x740420: stur            x0, [fp, #-0x68]
    // 0x740424: r0 = AllocateArray()
    //     0x740424: bl              #0x9280a0  ; AllocateArrayStub
    // 0x740428: r16 = "Hata: "
    //     0x740428: add             x16, PP, #0x19, lsl #12  ; [pp+0x191d8] "Hata: "
    //     0x74042c: ldr             x16, [x16, #0x1d8]
    // 0x740430: StoreField: r0->field_f = r16
    //     0x740430: stur            w16, [x0, #0xf]
    // 0x740434: ldur            x1, [fp, #-0x70]
    // 0x740438: StoreField: r0->field_13 = r1
    //     0x740438: stur            w1, [x0, #0x13]
    // 0x74043c: str             x0, [SP]
    // 0x740440: r0 = _interpolate()
    //     0x740440: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x740444: stur            x0, [fp, #-0x70]
    // 0x740448: r0 = Text()
    //     0x740448: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x74044c: mov             x1, x0
    // 0x740450: ldur            x0, [fp, #-0x70]
    // 0x740454: stur            x1, [fp, #-0x78]
    // 0x740458: StoreField: r1->field_b = r0
    //     0x740458: stur            w0, [x1, #0xb]
    // 0x74045c: r0 = SnackBar()
    //     0x74045c: bl              #0x5dcf84  ; AllocateSnackBarStub -> SnackBar (size=0x58)
    // 0x740460: mov             x1, x0
    // 0x740464: ldur            x0, [fp, #-0x78]
    // 0x740468: StoreField: r1->field_b = r0
    //     0x740468: stur            w0, [x1, #0xb]
    // 0x74046c: r0 = Instance_Duration
    //     0x74046c: add             x0, PP, #0x18, lsl #12  ; [pp+0x18f78] Obj!Duration@a2dde1
    //     0x740470: ldr             x0, [x0, #0xf78]
    // 0x740474: StoreField: r1->field_3f = r0
    //     0x740474: stur            w0, [x1, #0x3f]
    // 0x740478: r0 = Instance_Clip
    //     0x740478: add             x0, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x74047c: ldr             x0, [x0, #0x2d8]
    // 0x740480: StoreField: r1->field_53 = r0
    //     0x740480: stur            w0, [x1, #0x53]
    // 0x740484: r0 = false
    //     0x740484: add             x0, NULL, #0x30  ; false
    // 0x740488: StoreField: r1->field_43 = r0
    //     0x740488: stur            w0, [x1, #0x43]
    // 0x74048c: mov             x2, x1
    // 0x740490: ldur            x1, [fp, #-0x68]
    // 0x740494: r0 = showSnackBar()
    //     0x740494: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x740498: r0 = Null
    //     0x740498: mov             x0, NULL
    // 0x74049c: r0 = ReturnAsyncNotFuture()
    //     0x74049c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7404a0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7404a0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7404a4: b               #0x73fac0
    // 0x7404a8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7404a8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7404ac: r0 = NullErrorSharedWithoutFPURegs()
    //     0x7404ac: bl              #0x9289e0  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7404b0, size: 0x28
    // 0x7404b0: r0 = true
    //     0x7404b0: add             x0, NULL, #0x20  ; true
    // 0x7404b4: ldr             x1, [SP]
    // 0x7404b8: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x7404b8: ldur            w2, [x1, #0x17]
    // 0x7404bc: DecompressPointer r2
    //     0x7404bc: add             x2, x2, HEAP, lsl #32
    // 0x7404c0: LoadField: r1 = r2->field_b
    //     0x7404c0: ldur            w1, [x2, #0xb]
    // 0x7404c4: DecompressPointer r1
    //     0x7404c4: add             x1, x1, HEAP, lsl #32
    // 0x7404c8: LoadField: r2 = r1->field_b
    //     0x7404c8: ldur            w2, [x1, #0xb]
    // 0x7404cc: DecompressPointer r2
    //     0x7404cc: add             x2, x2, HEAP, lsl #32
    // 0x7404d0: StoreField: r2->field_53 = r0
    //     0x7404d0: stur            w0, [x2, #0x53]
    // 0x7404d4: ret
    //     0x7404d4: ret             
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x7404d8, size: 0x90
    // 0x7404d8: EnterFrame
    //     0x7404d8: stp             fp, lr, [SP, #-0x10]!
    //     0x7404dc: mov             fp, SP
    // 0x7404e0: AllocStack(0x20)
    //     0x7404e0: sub             SP, SP, #0x20
    // 0x7404e4: SetupParameters([dynamic _ /* r0 */])
    //     0x7404e4: ldr             x0, [fp, #0x18]
    //     0x7404e8: ldur            w1, [x0, #0x17]
    //     0x7404ec: add             x1, x1, HEAP, lsl #32
    //     0x7404f0: stur            x1, [fp, #-8]
    // 0x7404f4: CheckStackOverflow
    //     0x7404f4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7404f8: cmp             SP, x16
    //     0x7404fc: b.ls            #0x740560
    // 0x740500: r1 = 1
    //     0x740500: mov             x1, #1
    // 0x740504: r0 = AllocateContext()
    //     0x740504: bl              #0x927010  ; AllocateContextStub
    // 0x740508: mov             x1, x0
    // 0x74050c: ldur            x0, [fp, #-8]
    // 0x740510: StoreField: r1->field_b = r0
    //     0x740510: stur            w0, [x1, #0xb]
    // 0x740514: ldr             x2, [fp, #0x10]
    // 0x740518: StoreField: r1->field_f = r2
    //     0x740518: stur            w2, [x1, #0xf]
    // 0x74051c: LoadField: r3 = r0->field_13
    //     0x74051c: ldur            w3, [x0, #0x13]
    // 0x740520: DecompressPointer r3
    //     0x740520: add             x3, x3, HEAP, lsl #32
    // 0x740524: mov             x2, x1
    // 0x740528: stur            x3, [fp, #-0x10]
    // 0x74052c: r1 = Function '<anonymous closure>':.
    //     0x74052c: add             x1, PP, #0x19, lsl #12  ; [pp+0x195e8] AnonymousClosure: (0x740568), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x740530: ldr             x1, [x1, #0x5e8]
    // 0x740534: r0 = AllocateClosure()
    //     0x740534: bl              #0x9273d4  ; AllocateClosureStub
    // 0x740538: ldur            x16, [fp, #-0x10]
    // 0x74053c: stp             x0, x16, [SP]
    // 0x740540: ldur            x0, [fp, #-0x10]
    // 0x740544: ClosureCall
    //     0x740544: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x740548: ldur            x2, [x0, #0x1f]
    //     0x74054c: blr             x2
    // 0x740550: r0 = Null
    //     0x740550: mov             x0, NULL
    // 0x740554: LeaveFrame
    //     0x740554: mov             SP, fp
    //     0x740558: ldp             fp, lr, [SP], #0x10
    // 0x74055c: ret
    //     0x74055c: ret             
    // 0x740560: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x740560: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x740564: b               #0x740500
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x740568, size: 0xe8
    // 0x740568: EnterFrame
    //     0x740568: stp             fp, lr, [SP, #-0x10]!
    //     0x74056c: mov             fp, SP
    // 0x740570: AllocStack(0x20)
    //     0x740570: sub             SP, SP, #0x20
    // 0x740574: SetupParameters([dynamic _ /* r0 */])
    //     0x740574: ldr             x0, [fp, #0x10]
    //     0x740578: ldur            w1, [x0, #0x17]
    //     0x74057c: add             x1, x1, HEAP, lsl #32
    //     0x740580: stur            x1, [fp, #-0x10]
    // 0x740584: CheckStackOverflow
    //     0x740584: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x740588: cmp             SP, x16
    //     0x74058c: b.ls            #0x740648
    // 0x740590: LoadField: r0 = r1->field_b
    //     0x740590: ldur            w0, [x1, #0xb]
    // 0x740594: DecompressPointer r0
    //     0x740594: add             x0, x0, HEAP, lsl #32
    // 0x740598: LoadField: r2 = r0->field_b
    //     0x740598: ldur            w2, [x0, #0xb]
    // 0x74059c: DecompressPointer r2
    //     0x74059c: add             x2, x2, HEAP, lsl #32
    // 0x7405a0: LoadField: r3 = r2->field_b
    //     0x7405a0: ldur            w3, [x2, #0xb]
    // 0x7405a4: DecompressPointer r3
    //     0x7405a4: add             x3, x3, HEAP, lsl #32
    // 0x7405a8: stur            x3, [fp, #-8]
    // 0x7405ac: LoadField: r0 = r3->field_37
    //     0x7405ac: ldur            w0, [x3, #0x37]
    // 0x7405b0: DecompressPointer r0
    //     0x7405b0: add             x0, x0, HEAP, lsl #32
    // 0x7405b4: r2 = LoadClassIdInstr(r0)
    //     0x7405b4: ldur            x2, [x0, #-1]
    //     0x7405b8: ubfx            x2, x2, #0xc, #0x14
    // 0x7405bc: r16 = "Mekke"
    //     0x7405bc: add             x16, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x7405c0: ldr             x16, [x16, #0xdf0]
    // 0x7405c4: stp             x16, x0, [SP]
    // 0x7405c8: mov             x0, x2
    // 0x7405cc: mov             lr, x0
    // 0x7405d0: ldr             lr, [x21, lr, lsl #3]
    // 0x7405d4: blr             lr
    // 0x7405d8: tbnz            w0, #4, #0x74060c
    // 0x7405dc: ldur            x1, [fp, #-0x10]
    // 0x7405e0: ldur            x2, [fp, #-8]
    // 0x7405e4: LoadField: r0 = r1->field_f
    //     0x7405e4: ldur            w0, [x1, #0xf]
    // 0x7405e8: DecompressPointer r0
    //     0x7405e8: add             x0, x0, HEAP, lsl #32
    // 0x7405ec: StoreField: r2->field_43 = r0
    //     0x7405ec: stur            w0, [x2, #0x43]
    //     0x7405f0: ldurb           w16, [x2, #-1]
    //     0x7405f4: ldurb           w17, [x0, #-1]
    //     0x7405f8: and             x16, x17, x16, lsr #2
    //     0x7405fc: tst             x16, HEAP, lsr #32
    //     0x740600: b.eq            #0x740608
    //     0x740604: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x740608: b               #0x740638
    // 0x74060c: ldur            x1, [fp, #-0x10]
    // 0x740610: ldur            x2, [fp, #-8]
    // 0x740614: LoadField: r0 = r1->field_f
    //     0x740614: ldur            w0, [x1, #0xf]
    // 0x740618: DecompressPointer r0
    //     0x740618: add             x0, x0, HEAP, lsl #32
    // 0x74061c: StoreField: r2->field_4f = r0
    //     0x74061c: stur            w0, [x2, #0x4f]
    //     0x740620: ldurb           w16, [x2, #-1]
    //     0x740624: ldurb           w17, [x0, #-1]
    //     0x740628: and             x16, x17, x16, lsr #2
    //     0x74062c: tst             x16, HEAP, lsr #32
    //     0x740630: b.eq            #0x740638
    //     0x740634: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x740638: r0 = Null
    //     0x740638: mov             x0, NULL
    // 0x74063c: LeaveFrame
    //     0x74063c: mov             SP, fp
    //     0x740640: ldp             fp, lr, [SP], #0x10
    // 0x740644: ret
    //     0x740644: ret             
    // 0x740648: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x740648: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74064c: b               #0x740590
  }
  [closure] DropdownMenuItem<String?> <anonymous closure>(dynamic, RoomModel) {
    // ** addr: 0x740650, size: 0x414
    // 0x740650: EnterFrame
    //     0x740650: stp             fp, lr, [SP, #-0x10]!
    //     0x740654: mov             fp, SP
    // 0x740658: AllocStack(0x50)
    //     0x740658: sub             SP, SP, #0x50
    // 0x74065c: SetupParameters([dynamic _ /* r0 */])
    //     0x74065c: ldr             x0, [fp, #0x18]
    //     0x740660: ldur            w1, [x0, #0x17]
    //     0x740664: add             x1, x1, HEAP, lsl #32
    // 0x740668: CheckStackOverflow
    //     0x740668: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74066c: cmp             SP, x16
    //     0x740670: b.ls            #0x740a50
    // 0x740674: LoadField: r0 = r1->field_b
    //     0x740674: ldur            w0, [x1, #0xb]
    // 0x740678: DecompressPointer r0
    //     0x740678: add             x0, x0, HEAP, lsl #32
    // 0x74067c: LoadField: r2 = r0->field_b
    //     0x74067c: ldur            w2, [x0, #0xb]
    // 0x740680: DecompressPointer r2
    //     0x740680: add             x2, x2, HEAP, lsl #32
    // 0x740684: stur            x2, [fp, #-8]
    // 0x740688: LoadField: r1 = r2->field_f
    //     0x740688: ldur            w1, [x2, #0xf]
    // 0x74068c: DecompressPointer r1
    //     0x74068c: add             x1, x1, HEAP, lsl #32
    // 0x740690: r0 = build()
    //     0x740690: bl              #0x6beb0c  ; [package:flutter/src/widgets/will_pop_scope.dart] _WillPopScopeState::build
    // 0x740694: r1 = LoadClassIdInstr(r0)
    //     0x740694: ldur            x1, [x0, #-1]
    //     0x740698: ubfx            x1, x1, #0xc, #0x14
    // 0x74069c: mov             x16, x0
    // 0x7406a0: mov             x0, x1
    // 0x7406a4: mov             x1, x16
    // 0x7406a8: r0 = GDT[cid_x0 + 0x90c4]()
    //     0x7406a8: mov             x17, #0x90c4
    //     0x7406ac: add             lr, x0, x17
    //     0x7406b0: ldr             lr, [x21, lr, lsl #3]
    //     0x7406b4: blr             lr
    // 0x7406b8: mov             x3, x0
    // 0x7406bc: ldr             x2, [fp, #0x10]
    // 0x7406c0: stur            x3, [fp, #-0x20]
    // 0x7406c4: LoadField: r4 = r2->field_7
    //     0x7406c4: ldur            w4, [x2, #7]
    // 0x7406c8: DecompressPointer r4
    //     0x7406c8: add             x4, x4, HEAP, lsl #32
    // 0x7406cc: stur            x4, [fp, #-0x18]
    // 0x7406d0: r6 = 0
    //     0x7406d0: mov             x6, #0
    // 0x7406d4: ldur            x5, [fp, #-8]
    // 0x7406d8: stur            x6, [fp, #-0x10]
    // 0x7406dc: CheckStackOverflow
    //     0x7406dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7406e0: cmp             SP, x16
    //     0x7406e4: b.ls            #0x740a58
    // 0x7406e8: r0 = LoadClassIdInstr(r3)
    //     0x7406e8: ldur            x0, [x3, #-1]
    //     0x7406ec: ubfx            x0, x0, #0xc, #0x14
    // 0x7406f0: mov             x1, x3
    // 0x7406f4: r0 = GDT[cid_x0 + 0x4cb]()
    //     0x7406f4: add             lr, x0, #0x4cb
    //     0x7406f8: ldr             lr, [x21, lr, lsl #3]
    //     0x7406fc: blr             lr
    // 0x740700: tbnz            w0, #4, #0x7407fc
    // 0x740704: ldur            x3, [fp, #-8]
    // 0x740708: ldur            x2, [fp, #-0x20]
    // 0x74070c: r0 = LoadClassIdInstr(r2)
    //     0x74070c: ldur            x0, [x2, #-1]
    //     0x740710: ubfx            x0, x0, #0xc, #0x14
    // 0x740714: mov             x1, x2
    // 0x740718: r0 = GDT[cid_x0 + 0x4f1]()
    //     0x740718: add             lr, x0, #0x4f1
    //     0x74071c: ldr             lr, [x21, lr, lsl #3]
    //     0x740720: blr             lr
    // 0x740724: mov             x1, x0
    // 0x740728: stur            x1, [fp, #-0x28]
    // 0x74072c: LoadField: r0 = r1->field_7
    //     0x74072c: ldur            w0, [x1, #7]
    // 0x740730: DecompressPointer r0
    //     0x740730: add             x0, x0, HEAP, lsl #32
    // 0x740734: ldur            x2, [fp, #-8]
    // 0x740738: LoadField: r3 = r2->field_13
    //     0x740738: ldur            w3, [x2, #0x13]
    // 0x74073c: DecompressPointer r3
    //     0x74073c: add             x3, x3, HEAP, lsl #32
    // 0x740740: cmp             w3, NULL
    // 0x740744: b.eq            #0x740a60
    // 0x740748: LoadField: r4 = r3->field_7
    //     0x740748: ldur            w4, [x3, #7]
    // 0x74074c: DecompressPointer r4
    //     0x74074c: add             x4, x4, HEAP, lsl #32
    // 0x740750: r3 = LoadClassIdInstr(r0)
    //     0x740750: ldur            x3, [x0, #-1]
    //     0x740754: ubfx            x3, x3, #0xc, #0x14
    // 0x740758: stp             x4, x0, [SP]
    // 0x74075c: mov             x0, x3
    // 0x740760: mov             lr, x0
    // 0x740764: ldr             lr, [x21, lr, lsl #3]
    // 0x740768: blr             lr
    // 0x74076c: tbnz            w0, #4, #0x740778
    // 0x740770: ldur            x6, [fp, #-0x10]
    // 0x740774: b               #0x7407ec
    // 0x740778: ldur            x1, [fp, #-0x28]
    // 0x74077c: LoadField: r0 = r1->field_2b
    //     0x74077c: ldur            w0, [x1, #0x2b]
    // 0x740780: DecompressPointer r0
    //     0x740780: add             x0, x0, HEAP, lsl #32
    // 0x740784: r2 = LoadClassIdInstr(r0)
    //     0x740784: ldur            x2, [x0, #-1]
    //     0x740788: ubfx            x2, x2, #0xc, #0x14
    // 0x74078c: ldur            x16, [fp, #-0x18]
    // 0x740790: stp             x16, x0, [SP]
    // 0x740794: mov             x0, x2
    // 0x740798: mov             lr, x0
    // 0x74079c: ldr             lr, [x21, lr, lsl #3]
    // 0x7407a0: blr             lr
    // 0x7407a4: tbz             w0, #4, #0x7407d4
    // 0x7407a8: ldur            x0, [fp, #-0x28]
    // 0x7407ac: LoadField: r1 = r0->field_2f
    //     0x7407ac: ldur            w1, [x0, #0x2f]
    // 0x7407b0: DecompressPointer r1
    //     0x7407b0: add             x1, x1, HEAP, lsl #32
    // 0x7407b4: r0 = LoadClassIdInstr(r1)
    //     0x7407b4: ldur            x0, [x1, #-1]
    //     0x7407b8: ubfx            x0, x0, #0xc, #0x14
    // 0x7407bc: ldur            x16, [fp, #-0x18]
    // 0x7407c0: stp             x16, x1, [SP]
    // 0x7407c4: mov             lr, x0
    // 0x7407c8: ldr             lr, [x21, lr, lsl #3]
    // 0x7407cc: blr             lr
    // 0x7407d0: tbnz            w0, #4, #0x7407e0
    // 0x7407d4: ldur            x1, [fp, #-0x10]
    // 0x7407d8: add             x0, x1, #1
    // 0x7407dc: b               #0x7407e8
    // 0x7407e0: ldur            x1, [fp, #-0x10]
    // 0x7407e4: mov             x0, x1
    // 0x7407e8: mov             x6, x0
    // 0x7407ec: ldr             x2, [fp, #0x10]
    // 0x7407f0: ldur            x3, [fp, #-0x20]
    // 0x7407f4: ldur            x4, [fp, #-0x18]
    // 0x7407f8: b               #0x7406d4
    // 0x7407fc: ldr             x2, [fp, #0x10]
    // 0x740800: ldur            x1, [fp, #-0x10]
    // 0x740804: LoadField: r3 = r2->field_13
    //     0x740804: ldur            x3, [x2, #0x13]
    // 0x740808: stur            x3, [fp, #-0x30]
    // 0x74080c: cmp             x1, x3
    // 0x740810: r16 = true
    //     0x740810: add             x16, NULL, #0x20  ; true
    // 0x740814: r17 = false
    //     0x740814: add             x17, NULL, #0x30  ; false
    // 0x740818: csel            x4, x16, x17, lt
    // 0x74081c: stur            x4, [fp, #-0x28]
    // 0x740820: LoadField: r5 = r2->field_1b
    //     0x740820: ldur            w5, [x2, #0x1b]
    // 0x740824: DecompressPointer r5
    //     0x740824: add             x5, x5, HEAP, lsl #32
    // 0x740828: stur            x5, [fp, #-0x20]
    // 0x74082c: cmp             w5, NULL
    // 0x740830: b.eq            #0x74086c
    // 0x740834: r0 = LoadClassIdInstr(r5)
    //     0x740834: ldur            x0, [x5, #-1]
    //     0x740838: ubfx            x0, x0, #0xc, #0x14
    // 0x74083c: r16 = "Karma"
    //     0x74083c: add             x16, PP, #0x19, lsl #12  ; [pp+0x195f0] "Karma"
    //     0x740840: ldr             x16, [x16, #0x5f0]
    // 0x740844: stp             x16, x5, [SP]
    // 0x740848: mov             lr, x0
    // 0x74084c: ldr             lr, [x21, lr, lsl #3]
    // 0x740850: blr             lr
    // 0x740854: tbz             w0, #4, #0x74086c
    // 0x740858: ldur            x0, [fp, #-8]
    // 0x74085c: LoadField: r1 = r0->field_2f
    //     0x74085c: ldur            w1, [x0, #0x2f]
    // 0x740860: DecompressPointer r1
    //     0x740860: add             x1, x1, HEAP, lsl #32
    // 0x740864: cmp             w1, NULL
    // 0x740868: b.ne            #0x740874
    // 0x74086c: r3 = true
    //     0x74086c: add             x3, NULL, #0x20  ; true
    // 0x740870: b               #0x740894
    // 0x740874: ldur            x2, [fp, #-0x20]
    // 0x740878: r0 = LoadClassIdInstr(r2)
    //     0x740878: ldur            x0, [x2, #-1]
    //     0x74087c: ubfx            x0, x0, #0xc, #0x14
    // 0x740880: stp             x1, x2, [SP]
    // 0x740884: mov             lr, x0
    // 0x740888: ldr             lr, [x21, lr, lsl #3]
    // 0x74088c: blr             lr
    // 0x740890: mov             x3, x0
    // 0x740894: ldur            x0, [fp, #-0x20]
    // 0x740898: stur            x3, [fp, #-8]
    // 0x74089c: cmp             w0, NULL
    // 0x7408a0: b.eq            #0x7408d4
    // 0x7408a4: r1 = Null
    //     0x7408a4: mov             x1, NULL
    // 0x7408a8: r2 = 4
    //     0x7408a8: mov             x2, #4
    // 0x7408ac: r0 = AllocateArray()
    //     0x7408ac: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7408b0: r16 = " • "
    //     0x7408b0: add             x16, PP, #0x13, lsl #12  ; [pp+0x139d8] " • "
    //     0x7408b4: ldr             x16, [x16, #0x9d8]
    // 0x7408b8: StoreField: r0->field_f = r16
    //     0x7408b8: stur            w16, [x0, #0xf]
    // 0x7408bc: ldur            x1, [fp, #-0x20]
    // 0x7408c0: StoreField: r0->field_13 = r1
    //     0x7408c0: stur            w1, [x0, #0x13]
    // 0x7408c4: str             x0, [SP]
    // 0x7408c8: r0 = _interpolate()
    //     0x7408c8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7408cc: mov             x3, x0
    // 0x7408d0: b               #0x7408d8
    // 0x7408d4: r3 = ""
    //     0x7408d4: ldr             x3, [PP, #0x128]  ; [pp+0x128] ""
    // 0x7408d8: ldur            x0, [fp, #-0x28]
    // 0x7408dc: stur            x3, [fp, #-0x40]
    // 0x7408e0: tbnz            w0, #4, #0x7408ec
    // 0x7408e4: ldur            x6, [fp, #-8]
    // 0x7408e8: b               #0x7408f0
    // 0x7408ec: r6 = false
    //     0x7408ec: add             x6, NULL, #0x30  ; false
    // 0x7408f0: ldr             x1, [fp, #0x10]
    // 0x7408f4: ldur            x4, [fp, #-0x10]
    // 0x7408f8: ldur            x5, [fp, #-0x30]
    // 0x7408fc: stur            x6, [fp, #-0x38]
    // 0x740900: LoadField: r7 = r1->field_f
    //     0x740900: ldur            w7, [x1, #0xf]
    // 0x740904: DecompressPointer r7
    //     0x740904: add             x7, x7, HEAP, lsl #32
    // 0x740908: stur            x7, [fp, #-0x20]
    // 0x74090c: r1 = Null
    //     0x74090c: mov             x1, NULL
    // 0x740910: r2 = 12
    //     0x740910: mov             x2, #0xc
    // 0x740914: r0 = AllocateArray()
    //     0x740914: bl              #0x9280a0  ; AllocateArrayStub
    // 0x740918: mov             x2, x0
    // 0x74091c: ldur            x0, [fp, #-0x20]
    // 0x740920: StoreField: r2->field_f = r0
    //     0x740920: stur            w0, [x2, #0xf]
    // 0x740924: r16 = " • "
    //     0x740924: add             x16, PP, #0x13, lsl #12  ; [pp+0x139d8] " • "
    //     0x740928: ldr             x16, [x16, #0x9d8]
    // 0x74092c: StoreField: r2->field_13 = r16
    //     0x74092c: stur            w16, [x2, #0x13]
    // 0x740930: ldur            x3, [fp, #-0x10]
    // 0x740934: r0 = BoxInt64Instr(r3)
    //     0x740934: sbfiz           x0, x3, #1, #0x1f
    //     0x740938: cmp             x3, x0, asr #1
    //     0x74093c: b.eq            #0x740948
    //     0x740940: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x740944: stur            x3, [x0, #7]
    // 0x740948: ArrayStore: r2[0] = r0  ; List_4
    //     0x740948: stur            w0, [x2, #0x17]
    // 0x74094c: r16 = "/"
    //     0x74094c: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x740950: StoreField: r2->field_1b = r16
    //     0x740950: stur            w16, [x2, #0x1b]
    // 0x740954: ldur            x3, [fp, #-0x30]
    // 0x740958: r0 = BoxInt64Instr(r3)
    //     0x740958: sbfiz           x0, x3, #1, #0x1f
    //     0x74095c: cmp             x3, x0, asr #1
    //     0x740960: b.eq            #0x74096c
    //     0x740964: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x740968: stur            x3, [x0, #7]
    // 0x74096c: StoreField: r2->field_1f = r0
    //     0x74096c: stur            w0, [x2, #0x1f]
    // 0x740970: ldur            x0, [fp, #-0x40]
    // 0x740974: StoreField: r2->field_23 = r0
    //     0x740974: stur            w0, [x2, #0x23]
    // 0x740978: str             x2, [SP]
    // 0x74097c: r0 = _interpolate()
    //     0x74097c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x740980: mov             x1, x0
    // 0x740984: ldur            x0, [fp, #-0x28]
    // 0x740988: stur            x1, [fp, #-0x40]
    // 0x74098c: tbz             w0, #4, #0x740998
    // 0x740990: ldur            x2, [fp, #-8]
    // 0x740994: b               #0x7409a0
    // 0x740998: ldur            x2, [fp, #-8]
    // 0x74099c: tbz             w2, #4, #0x7409ac
    // 0x7409a0: r3 = Instance_MaterialColor
    //     0x7409a0: add             x3, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x7409a4: ldr             x3, [x3, #0xbc8]
    // 0x7409a8: b               #0x7409b0
    // 0x7409ac: r3 = Instance_Color
    //     0x7409ac: ldr             x3, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7409b0: stur            x3, [fp, #-0x20]
    // 0x7409b4: tbnz            w0, #4, #0x7409bc
    // 0x7409b8: tbz             w2, #4, #0x7409c8
    // 0x7409bc: r4 = Instance_TextDecoration
    //     0x7409bc: add             x4, PP, #0x19, lsl #12  ; [pp+0x195f8] Obj!TextDecoration@a20f91
    //     0x7409c0: ldr             x4, [x4, #0x5f8]
    // 0x7409c4: b               #0x7409cc
    // 0x7409c8: r4 = Null
    //     0x7409c8: mov             x4, NULL
    // 0x7409cc: ldur            x0, [fp, #-0x38]
    // 0x7409d0: ldur            x2, [fp, #-0x18]
    // 0x7409d4: stur            x4, [fp, #-8]
    // 0x7409d8: r0 = TextStyle()
    //     0x7409d8: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7409dc: mov             x1, x0
    // 0x7409e0: r0 = true
    //     0x7409e0: add             x0, NULL, #0x20  ; true
    // 0x7409e4: stur            x1, [fp, #-0x28]
    // 0x7409e8: StoreField: r1->field_7 = r0
    //     0x7409e8: stur            w0, [x1, #7]
    // 0x7409ec: ldur            x0, [fp, #-0x20]
    // 0x7409f0: StoreField: r1->field_b = r0
    //     0x7409f0: stur            w0, [x1, #0xb]
    // 0x7409f4: ldur            x0, [fp, #-8]
    // 0x7409f8: StoreField: r1->field_4b = r0
    //     0x7409f8: stur            w0, [x1, #0x4b]
    // 0x7409fc: r0 = Text()
    //     0x7409fc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x740a00: mov             x2, x0
    // 0x740a04: ldur            x0, [fp, #-0x40]
    // 0x740a08: stur            x2, [fp, #-8]
    // 0x740a0c: StoreField: r2->field_b = r0
    //     0x740a0c: stur            w0, [x2, #0xb]
    // 0x740a10: ldur            x0, [fp, #-0x28]
    // 0x740a14: StoreField: r2->field_13 = r0
    //     0x740a14: stur            w0, [x2, #0x13]
    // 0x740a18: r1 = <String?>
    //     0x740a18: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x740a1c: r0 = DropdownMenuItem()
    //     0x740a1c: bl              #0x6de55c  ; AllocateDropdownMenuItemStub -> DropdownMenuItem<X0> (size=0x24)
    // 0x740a20: ldur            x1, [fp, #-0x18]
    // 0x740a24: StoreField: r0->field_1b = r1
    //     0x740a24: stur            w1, [x0, #0x1b]
    // 0x740a28: ldur            x1, [fp, #-0x38]
    // 0x740a2c: StoreField: r0->field_1f = r1
    //     0x740a2c: stur            w1, [x0, #0x1f]
    // 0x740a30: r1 = Instance_AlignmentDirectional
    //     0x740a30: add             x1, PP, #0x14, lsl #12  ; [pp+0x14330] Obj!AlignmentDirectional@a0ce11
    //     0x740a34: ldr             x1, [x1, #0x330]
    // 0x740a38: StoreField: r0->field_f = r1
    //     0x740a38: stur            w1, [x0, #0xf]
    // 0x740a3c: ldur            x1, [fp, #-8]
    // 0x740a40: StoreField: r0->field_b = r1
    //     0x740a40: stur            w1, [x0, #0xb]
    // 0x740a44: LeaveFrame
    //     0x740a44: mov             SP, fp
    //     0x740a48: ldp             fp, lr, [SP], #0x10
    // 0x740a4c: ret
    //     0x740a4c: ret             
    // 0x740a50: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x740a50: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x740a54: b               #0x740674
    // 0x740a58: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x740a58: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x740a5c: b               #0x7406e8
    // 0x740a60: r0 = NullErrorSharedWithoutFPURegs()
    //     0x740a60: bl              #0x9289e0  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x740a64, size: 0x90
    // 0x740a64: EnterFrame
    //     0x740a64: stp             fp, lr, [SP, #-0x10]!
    //     0x740a68: mov             fp, SP
    // 0x740a6c: AllocStack(0x20)
    //     0x740a6c: sub             SP, SP, #0x20
    // 0x740a70: SetupParameters([dynamic _ /* r0 */])
    //     0x740a70: ldr             x0, [fp, #0x18]
    //     0x740a74: ldur            w1, [x0, #0x17]
    //     0x740a78: add             x1, x1, HEAP, lsl #32
    //     0x740a7c: stur            x1, [fp, #-8]
    // 0x740a80: CheckStackOverflow
    //     0x740a80: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x740a84: cmp             SP, x16
    //     0x740a88: b.ls            #0x740aec
    // 0x740a8c: r1 = 1
    //     0x740a8c: mov             x1, #1
    // 0x740a90: r0 = AllocateContext()
    //     0x740a90: bl              #0x927010  ; AllocateContextStub
    // 0x740a94: mov             x1, x0
    // 0x740a98: ldur            x0, [fp, #-8]
    // 0x740a9c: StoreField: r1->field_b = r0
    //     0x740a9c: stur            w0, [x1, #0xb]
    // 0x740aa0: ldr             x2, [fp, #0x10]
    // 0x740aa4: StoreField: r1->field_f = r2
    //     0x740aa4: stur            w2, [x1, #0xf]
    // 0x740aa8: LoadField: r3 = r0->field_13
    //     0x740aa8: ldur            w3, [x0, #0x13]
    // 0x740aac: DecompressPointer r3
    //     0x740aac: add             x3, x3, HEAP, lsl #32
    // 0x740ab0: mov             x2, x1
    // 0x740ab4: stur            x3, [fp, #-0x10]
    // 0x740ab8: r1 = Function '<anonymous closure>':.
    //     0x740ab8: add             x1, PP, #0x19, lsl #12  ; [pp+0x19600] AnonymousClosure: (0x740af4), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x740abc: ldr             x1, [x1, #0x600]
    // 0x740ac0: r0 = AllocateClosure()
    //     0x740ac0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x740ac4: ldur            x16, [fp, #-0x10]
    // 0x740ac8: stp             x0, x16, [SP]
    // 0x740acc: ldur            x0, [fp, #-0x10]
    // 0x740ad0: ClosureCall
    //     0x740ad0: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x740ad4: ldur            x2, [x0, #0x1f]
    //     0x740ad8: blr             x2
    // 0x740adc: r0 = Null
    //     0x740adc: mov             x0, NULL
    // 0x740ae0: LeaveFrame
    //     0x740ae0: mov             SP, fp
    //     0x740ae4: ldp             fp, lr, [SP], #0x10
    // 0x740ae8: ret
    //     0x740ae8: ret             
    // 0x740aec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x740aec: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x740af0: b               #0x740a8c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x740af4, size: 0xf0
    // 0x740af4: EnterFrame
    //     0x740af4: stp             fp, lr, [SP, #-0x10]!
    //     0x740af8: mov             fp, SP
    // 0x740afc: AllocStack(0x20)
    //     0x740afc: sub             SP, SP, #0x20
    // 0x740b00: SetupParameters([dynamic _ /* r0 */])
    //     0x740b00: ldr             x0, [fp, #0x10]
    //     0x740b04: ldur            w1, [x0, #0x17]
    //     0x740b08: add             x1, x1, HEAP, lsl #32
    //     0x740b0c: stur            x1, [fp, #-0x10]
    // 0x740b10: CheckStackOverflow
    //     0x740b10: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x740b14: cmp             SP, x16
    //     0x740b18: b.ls            #0x740bdc
    // 0x740b1c: LoadField: r0 = r1->field_b
    //     0x740b1c: ldur            w0, [x1, #0xb]
    // 0x740b20: DecompressPointer r0
    //     0x740b20: add             x0, x0, HEAP, lsl #32
    // 0x740b24: LoadField: r2 = r0->field_b
    //     0x740b24: ldur            w2, [x0, #0xb]
    // 0x740b28: DecompressPointer r2
    //     0x740b28: add             x2, x2, HEAP, lsl #32
    // 0x740b2c: LoadField: r3 = r2->field_b
    //     0x740b2c: ldur            w3, [x2, #0xb]
    // 0x740b30: DecompressPointer r3
    //     0x740b30: add             x3, x3, HEAP, lsl #32
    // 0x740b34: stur            x3, [fp, #-8]
    // 0x740b38: LoadField: r0 = r3->field_37
    //     0x740b38: ldur            w0, [x3, #0x37]
    // 0x740b3c: DecompressPointer r0
    //     0x740b3c: add             x0, x0, HEAP, lsl #32
    // 0x740b40: r2 = LoadClassIdInstr(r0)
    //     0x740b40: ldur            x2, [x0, #-1]
    //     0x740b44: ubfx            x2, x2, #0xc, #0x14
    // 0x740b48: r16 = "Mekke"
    //     0x740b48: add             x16, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x740b4c: ldr             x16, [x16, #0xdf0]
    // 0x740b50: stp             x16, x0, [SP]
    // 0x740b54: mov             x0, x2
    // 0x740b58: mov             lr, x0
    // 0x740b5c: ldr             lr, [x21, lr, lsl #3]
    // 0x740b60: blr             lr
    // 0x740b64: tbnz            w0, #4, #0x740b9c
    // 0x740b68: ldur            x1, [fp, #-0x10]
    // 0x740b6c: ldur            x2, [fp, #-8]
    // 0x740b70: LoadField: r0 = r1->field_f
    //     0x740b70: ldur            w0, [x1, #0xf]
    // 0x740b74: DecompressPointer r0
    //     0x740b74: add             x0, x0, HEAP, lsl #32
    // 0x740b78: StoreField: r2->field_3f = r0
    //     0x740b78: stur            w0, [x2, #0x3f]
    //     0x740b7c: ldurb           w16, [x2, #-1]
    //     0x740b80: ldurb           w17, [x0, #-1]
    //     0x740b84: and             x16, x17, x16, lsr #2
    //     0x740b88: tst             x16, HEAP, lsr #32
    //     0x740b8c: b.eq            #0x740b94
    //     0x740b90: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x740b94: StoreField: r2->field_43 = rNULL
    //     0x740b94: stur            NULL, [x2, #0x43]
    // 0x740b98: b               #0x740bcc
    // 0x740b9c: ldur            x1, [fp, #-0x10]
    // 0x740ba0: ldur            x2, [fp, #-8]
    // 0x740ba4: LoadField: r0 = r1->field_f
    //     0x740ba4: ldur            w0, [x1, #0xf]
    // 0x740ba8: DecompressPointer r0
    //     0x740ba8: add             x0, x0, HEAP, lsl #32
    // 0x740bac: StoreField: r2->field_4b = r0
    //     0x740bac: stur            w0, [x2, #0x4b]
    //     0x740bb0: ldurb           w16, [x2, #-1]
    //     0x740bb4: ldurb           w17, [x0, #-1]
    //     0x740bb8: and             x16, x17, x16, lsr #2
    //     0x740bbc: tst             x16, HEAP, lsr #32
    //     0x740bc0: b.eq            #0x740bc8
    //     0x740bc4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x740bc8: StoreField: r2->field_4f = rNULL
    //     0x740bc8: stur            NULL, [x2, #0x4f]
    // 0x740bcc: r0 = Null
    //     0x740bcc: mov             x0, NULL
    // 0x740bd0: LeaveFrame
    //     0x740bd0: mov             SP, fp
    //     0x740bd4: ldp             fp, lr, [SP], #0x10
    // 0x740bd8: ret
    //     0x740bd8: ret             
    // 0x740bdc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x740bdc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x740be0: b               #0x740b1c
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x740be4, size: 0x90
    // 0x740be4: EnterFrame
    //     0x740be4: stp             fp, lr, [SP, #-0x10]!
    //     0x740be8: mov             fp, SP
    // 0x740bec: AllocStack(0x20)
    //     0x740bec: sub             SP, SP, #0x20
    // 0x740bf0: SetupParameters([dynamic _ /* r0 */])
    //     0x740bf0: ldr             x0, [fp, #0x18]
    //     0x740bf4: ldur            w1, [x0, #0x17]
    //     0x740bf8: add             x1, x1, HEAP, lsl #32
    //     0x740bfc: stur            x1, [fp, #-8]
    // 0x740c00: CheckStackOverflow
    //     0x740c00: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x740c04: cmp             SP, x16
    //     0x740c08: b.ls            #0x740c6c
    // 0x740c0c: r1 = 1
    //     0x740c0c: mov             x1, #1
    // 0x740c10: r0 = AllocateContext()
    //     0x740c10: bl              #0x927010  ; AllocateContextStub
    // 0x740c14: mov             x1, x0
    // 0x740c18: ldur            x0, [fp, #-8]
    // 0x740c1c: StoreField: r1->field_b = r0
    //     0x740c1c: stur            w0, [x1, #0xb]
    // 0x740c20: ldr             x2, [fp, #0x10]
    // 0x740c24: StoreField: r1->field_f = r2
    //     0x740c24: stur            w2, [x1, #0xf]
    // 0x740c28: LoadField: r3 = r0->field_13
    //     0x740c28: ldur            w3, [x0, #0x13]
    // 0x740c2c: DecompressPointer r3
    //     0x740c2c: add             x3, x3, HEAP, lsl #32
    // 0x740c30: mov             x2, x1
    // 0x740c34: stur            x3, [fp, #-0x10]
    // 0x740c38: r1 = Function '<anonymous closure>':.
    //     0x740c38: add             x1, PP, #0x19, lsl #12  ; [pp+0x19608] AnonymousClosure: (0x740c74), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x740c3c: ldr             x1, [x1, #0x608]
    // 0x740c40: r0 = AllocateClosure()
    //     0x740c40: bl              #0x9273d4  ; AllocateClosureStub
    // 0x740c44: ldur            x16, [fp, #-0x10]
    // 0x740c48: stp             x0, x16, [SP]
    // 0x740c4c: ldur            x0, [fp, #-0x10]
    // 0x740c50: ClosureCall
    //     0x740c50: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x740c54: ldur            x2, [x0, #0x1f]
    //     0x740c58: blr             x2
    // 0x740c5c: r0 = Null
    //     0x740c5c: mov             x0, NULL
    // 0x740c60: LeaveFrame
    //     0x740c60: mov             SP, fp
    //     0x740c64: ldp             fp, lr, [SP], #0x10
    // 0x740c68: ret
    //     0x740c68: ret             
    // 0x740c6c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x740c6c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x740c70: b               #0x740c0c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x740c74, size: 0xf8
    // 0x740c74: EnterFrame
    //     0x740c74: stp             fp, lr, [SP, #-0x10]!
    //     0x740c78: mov             fp, SP
    // 0x740c7c: AllocStack(0x20)
    //     0x740c7c: sub             SP, SP, #0x20
    // 0x740c80: SetupParameters([dynamic _ /* r0 */])
    //     0x740c80: ldr             x0, [fp, #0x10]
    //     0x740c84: ldur            w1, [x0, #0x17]
    //     0x740c88: add             x1, x1, HEAP, lsl #32
    //     0x740c8c: stur            x1, [fp, #-0x10]
    // 0x740c90: CheckStackOverflow
    //     0x740c90: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x740c94: cmp             SP, x16
    //     0x740c98: b.ls            #0x740d64
    // 0x740c9c: LoadField: r0 = r1->field_b
    //     0x740c9c: ldur            w0, [x1, #0xb]
    // 0x740ca0: DecompressPointer r0
    //     0x740ca0: add             x0, x0, HEAP, lsl #32
    // 0x740ca4: LoadField: r2 = r0->field_b
    //     0x740ca4: ldur            w2, [x0, #0xb]
    // 0x740ca8: DecompressPointer r2
    //     0x740ca8: add             x2, x2, HEAP, lsl #32
    // 0x740cac: LoadField: r3 = r2->field_b
    //     0x740cac: ldur            w3, [x2, #0xb]
    // 0x740cb0: DecompressPointer r3
    //     0x740cb0: add             x3, x3, HEAP, lsl #32
    // 0x740cb4: stur            x3, [fp, #-8]
    // 0x740cb8: LoadField: r0 = r3->field_37
    //     0x740cb8: ldur            w0, [x3, #0x37]
    // 0x740cbc: DecompressPointer r0
    //     0x740cbc: add             x0, x0, HEAP, lsl #32
    // 0x740cc0: r2 = LoadClassIdInstr(r0)
    //     0x740cc0: ldur            x2, [x0, #-1]
    //     0x740cc4: ubfx            x2, x2, #0xc, #0x14
    // 0x740cc8: r16 = "Mekke"
    //     0x740cc8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x740ccc: ldr             x16, [x16, #0xdf0]
    // 0x740cd0: stp             x16, x0, [SP]
    // 0x740cd4: mov             x0, x2
    // 0x740cd8: mov             lr, x0
    // 0x740cdc: ldr             lr, [x21, lr, lsl #3]
    // 0x740ce0: blr             lr
    // 0x740ce4: tbnz            w0, #4, #0x740d20
    // 0x740ce8: ldur            x1, [fp, #-0x10]
    // 0x740cec: ldur            x2, [fp, #-8]
    // 0x740cf0: LoadField: r0 = r1->field_f
    //     0x740cf0: ldur            w0, [x1, #0xf]
    // 0x740cf4: DecompressPointer r0
    //     0x740cf4: add             x0, x0, HEAP, lsl #32
    // 0x740cf8: StoreField: r2->field_3b = r0
    //     0x740cf8: stur            w0, [x2, #0x3b]
    //     0x740cfc: ldurb           w16, [x2, #-1]
    //     0x740d00: ldurb           w17, [x0, #-1]
    //     0x740d04: and             x16, x17, x16, lsr #2
    //     0x740d08: tst             x16, HEAP, lsr #32
    //     0x740d0c: b.eq            #0x740d14
    //     0x740d10: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x740d14: StoreField: r2->field_3f = rNULL
    //     0x740d14: stur            NULL, [x2, #0x3f]
    // 0x740d18: StoreField: r2->field_43 = rNULL
    //     0x740d18: stur            NULL, [x2, #0x43]
    // 0x740d1c: b               #0x740d54
    // 0x740d20: ldur            x1, [fp, #-0x10]
    // 0x740d24: ldur            x2, [fp, #-8]
    // 0x740d28: LoadField: r0 = r1->field_f
    //     0x740d28: ldur            w0, [x1, #0xf]
    // 0x740d2c: DecompressPointer r0
    //     0x740d2c: add             x0, x0, HEAP, lsl #32
    // 0x740d30: StoreField: r2->field_47 = r0
    //     0x740d30: stur            w0, [x2, #0x47]
    //     0x740d34: ldurb           w16, [x2, #-1]
    //     0x740d38: ldurb           w17, [x0, #-1]
    //     0x740d3c: and             x16, x17, x16, lsr #2
    //     0x740d40: tst             x16, HEAP, lsr #32
    //     0x740d44: b.eq            #0x740d4c
    //     0x740d48: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x740d4c: StoreField: r2->field_4b = rNULL
    //     0x740d4c: stur            NULL, [x2, #0x4b]
    // 0x740d50: StoreField: r2->field_4f = rNULL
    //     0x740d50: stur            NULL, [x2, #0x4f]
    // 0x740d54: r0 = Null
    //     0x740d54: mov             x0, NULL
    // 0x740d58: LeaveFrame
    //     0x740d58: mov             SP, fp
    //     0x740d5c: ldp             fp, lr, [SP], #0x10
    // 0x740d60: ret
    //     0x740d60: ret             
    // 0x740d64: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x740d64: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x740d68: b               #0x740c9c
  }
  [closure] void <anonymous closure>(dynamic, String) {
    // ** addr: 0x740d6c, size: 0x8c
    // 0x740d6c: EnterFrame
    //     0x740d6c: stp             fp, lr, [SP, #-0x10]!
    //     0x740d70: mov             fp, SP
    // 0x740d74: AllocStack(0x20)
    //     0x740d74: sub             SP, SP, #0x20
    // 0x740d78: SetupParameters([dynamic _ /* r0 */])
    //     0x740d78: ldr             x0, [fp, #0x18]
    //     0x740d7c: ldur            w1, [x0, #0x17]
    //     0x740d80: add             x1, x1, HEAP, lsl #32
    //     0x740d84: stur            x1, [fp, #-8]
    // 0x740d88: CheckStackOverflow
    //     0x740d88: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x740d8c: cmp             SP, x16
    //     0x740d90: b.ls            #0x740df0
    // 0x740d94: r1 = 1
    //     0x740d94: mov             x1, #1
    // 0x740d98: r0 = AllocateContext()
    //     0x740d98: bl              #0x927010  ; AllocateContextStub
    // 0x740d9c: mov             x1, x0
    // 0x740da0: ldur            x0, [fp, #-8]
    // 0x740da4: StoreField: r1->field_b = r0
    //     0x740da4: stur            w0, [x1, #0xb]
    // 0x740da8: ldr             x2, [fp, #0x10]
    // 0x740dac: StoreField: r1->field_f = r2
    //     0x740dac: stur            w2, [x1, #0xf]
    // 0x740db0: LoadField: r3 = r0->field_13
    //     0x740db0: ldur            w3, [x0, #0x13]
    // 0x740db4: DecompressPointer r3
    //     0x740db4: add             x3, x3, HEAP, lsl #32
    // 0x740db8: mov             x2, x1
    // 0x740dbc: stur            x3, [fp, #-0x10]
    // 0x740dc0: r1 = Function '<anonymous closure>':.
    //     0x740dc0: add             x1, PP, #0x19, lsl #12  ; [pp+0x19610] AnonymousClosure: (0x740df8), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x740dc4: ldr             x1, [x1, #0x610]
    // 0x740dc8: r0 = AllocateClosure()
    //     0x740dc8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x740dcc: ldur            x16, [fp, #-0x10]
    // 0x740dd0: stp             x0, x16, [SP]
    // 0x740dd4: ldur            x0, [fp, #-0x10]
    // 0x740dd8: ClosureCall
    //     0x740dd8: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x740ddc: ldur            x2, [x0, #0x1f]
    //     0x740de0: blr             x2
    // 0x740de4: LeaveFrame
    //     0x740de4: mov             SP, fp
    //     0x740de8: ldp             fp, lr, [SP], #0x10
    // 0x740dec: ret
    //     0x740dec: ret             
    // 0x740df0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x740df0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x740df4: b               #0x740d94
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x740df8, size: 0x5c
    // 0x740df8: ldr             x1, [SP]
    // 0x740dfc: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x740dfc: ldur            w2, [x1, #0x17]
    // 0x740e00: DecompressPointer r2
    //     0x740e00: add             x2, x2, HEAP, lsl #32
    // 0x740e04: LoadField: r1 = r2->field_f
    //     0x740e04: ldur            w1, [x2, #0xf]
    // 0x740e08: DecompressPointer r1
    //     0x740e08: add             x1, x1, HEAP, lsl #32
    // 0x740e0c: LoadField: r3 = r2->field_b
    //     0x740e0c: ldur            w3, [x2, #0xb]
    // 0x740e10: DecompressPointer r3
    //     0x740e10: add             x3, x3, HEAP, lsl #32
    // 0x740e14: LoadField: r2 = r3->field_b
    //     0x740e14: ldur            w2, [x3, #0xb]
    // 0x740e18: DecompressPointer r2
    //     0x740e18: add             x2, x2, HEAP, lsl #32
    // 0x740e1c: LoadField: r3 = r2->field_b
    //     0x740e1c: ldur            w3, [x2, #0xb]
    // 0x740e20: DecompressPointer r3
    //     0x740e20: add             x3, x3, HEAP, lsl #32
    // 0x740e24: mov             x0, x1
    // 0x740e28: StoreField: r3->field_37 = r0
    //     0x740e28: stur            w0, [x3, #0x37]
    //     0x740e2c: ldurb           w16, [x3, #-1]
    //     0x740e30: ldurb           w17, [x0, #-1]
    //     0x740e34: and             x16, x17, x16, lsr #2
    //     0x740e38: tst             x16, HEAP, lsr #32
    //     0x740e3c: b.eq            #0x740e4c
    //     0x740e40: str             lr, [SP, #-8]!
    //     0x740e44: bl              #0x9267d0  ; WriteBarrierWrappersStub
    //     0x740e48: ldr             lr, [SP], #8
    // 0x740e4c: mov             x0, x1
    // 0x740e50: ret
    //     0x740e50: ret             
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x740e54, size: 0x1b0
    // 0x740e54: EnterFrame
    //     0x740e54: stp             fp, lr, [SP, #-0x10]!
    //     0x740e58: mov             fp, SP
    // 0x740e5c: AllocStack(0x48)
    //     0x740e5c: sub             SP, SP, #0x48
    // 0x740e60: SetupParameters(UsersTabState this /* r1 */)
    //     0x740e60: stur            NULL, [fp, #-8]
    //     0x740e64: mov             x0, #0
    //     0x740e68: add             x1, fp, w0, sxtw #2
    //     0x740e6c: ldr             x1, [x1, #0x10]
    //     0x740e70: ldur            w2, [x1, #0x17]
    //     0x740e74: add             x2, x2, HEAP, lsl #32
    //     0x740e78: stur            x2, [fp, #-0x10]
    // 0x740e7c: CheckStackOverflow
    //     0x740e7c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x740e80: cmp             SP, x16
    //     0x740e84: b.ls            #0x740ffc
    // 0x740e88: InitAsync() -> Future<void?>
    //     0x740e88: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x740e8c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x740e90: r1 = 1
    //     0x740e90: mov             x1, #1
    // 0x740e94: r0 = AllocateContext()
    //     0x740e94: bl              #0x927010  ; AllocateContextStub
    // 0x740e98: mov             x1, x0
    // 0x740e9c: ldur            x0, [fp, #-0x10]
    // 0x740ea0: stur            x1, [fp, #-0x20]
    // 0x740ea4: StoreField: r1->field_b = r0
    //     0x740ea4: stur            w0, [x1, #0xb]
    // 0x740ea8: LoadField: r2 = r0->field_f
    //     0x740ea8: ldur            w2, [x0, #0xf]
    // 0x740eac: DecompressPointer r2
    //     0x740eac: add             x2, x2, HEAP, lsl #32
    // 0x740eb0: stur            x2, [fp, #-0x18]
    // 0x740eb4: LoadField: r3 = r0->field_b
    //     0x740eb4: ldur            w3, [x0, #0xb]
    // 0x740eb8: DecompressPointer r3
    //     0x740eb8: add             x3, x3, HEAP, lsl #32
    // 0x740ebc: LoadField: r4 = r3->field_b
    //     0x740ebc: ldur            w4, [x3, #0xb]
    // 0x740ec0: DecompressPointer r4
    //     0x740ec0: add             x4, x4, HEAP, lsl #32
    // 0x740ec4: LoadField: r3 = r4->field_33
    //     0x740ec4: ldur            w3, [x4, #0x33]
    // 0x740ec8: DecompressPointer r3
    //     0x740ec8: add             x3, x3, HEAP, lsl #32
    // 0x740ecc: cmp             w3, NULL
    // 0x740ed0: b.ne            #0x740f00
    // 0x740ed4: r0 = DateTime()
    //     0x740ed4: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x740ed8: stur            x0, [fp, #-0x28]
    // 0x740edc: r16 = 2
    //     0x740edc: mov             x16, #2
    // 0x740ee0: r30 = 2
    //     0x740ee0: mov             lr, #2
    // 0x740ee4: stp             lr, x16, [SP]
    // 0x740ee8: mov             x1, x0
    // 0x740eec: r2 = 1990
    //     0x740eec: mov             x2, #0x7c6
    // 0x740ef0: r4 = const [0, 0x4, 0x2, 0x4, null]
    //     0x740ef0: add             x4, PP, #8, lsl #12  ; [pp+0x8808] List(5) [0, 0x4, 0x2, 0x4, Null]
    //     0x740ef4: ldr             x4, [x4, #0x808]
    // 0x740ef8: r0 = DateTime()
    //     0x740ef8: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x740efc: ldur            x3, [fp, #-0x28]
    // 0x740f00: ldur            x2, [fp, #-0x20]
    // 0x740f04: stur            x3, [fp, #-0x28]
    // 0x740f08: r0 = DateTime()
    //     0x740f08: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x740f0c: mov             x1, x0
    // 0x740f10: r2 = 1900
    //     0x740f10: mov             x2, #0x76c
    // 0x740f14: stur            x0, [fp, #-0x30]
    // 0x740f18: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x740f18: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x740f1c: r0 = DateTime()
    //     0x740f1c: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x740f20: r0 = DateTime()
    //     0x740f20: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x740f24: mov             x1, x0
    // 0x740f28: r0 = false
    //     0x740f28: add             x0, NULL, #0x30  ; false
    // 0x740f2c: stur            x1, [fp, #-0x38]
    // 0x740f30: StoreField: r1->field_7 = r0
    //     0x740f30: stur            w0, [x1, #7]
    // 0x740f34: r0 = _getCurrentMicros()
    //     0x740f34: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x740f38: r1 = LoadInt32Instr(r0)
    //     0x740f38: sbfx            x1, x0, #1, #0x1f
    //     0x740f3c: tbz             w0, #0, #0x740f44
    //     0x740f40: ldur            x1, [x0, #7]
    // 0x740f44: ldur            x5, [fp, #-0x38]
    // 0x740f48: StoreField: r5->field_b = r1
    //     0x740f48: stur            x1, [x5, #0xb]
    // 0x740f4c: r1 = Function '<anonymous closure>':.
    //     0x740f4c: add             x1, PP, #0x19, lsl #12  ; [pp+0x19618] AnonymousClosure: (0x74105c), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x740f50: ldr             x1, [x1, #0x618]
    // 0x740f54: r2 = Null
    //     0x740f54: mov             x2, NULL
    // 0x740f58: r0 = AllocateClosure()
    //     0x740f58: bl              #0x9273d4  ; AllocateClosureStub
    // 0x740f5c: r16 = Instance_Locale
    //     0x740f5c: add             x16, PP, #0x15, lsl #12  ; [pp+0x151e8] Obj!Locale@a21421
    //     0x740f60: ldr             x16, [x16, #0x1e8]
    // 0x740f64: stp             x0, x16, [SP]
    // 0x740f68: ldur            x1, [fp, #-0x18]
    // 0x740f6c: ldur            x2, [fp, #-0x30]
    // 0x740f70: ldur            x3, [fp, #-0x28]
    // 0x740f74: ldur            x5, [fp, #-0x38]
    // 0x740f78: r4 = const [0, 0x6, 0x2, 0x4, builder, 0x5, locale, 0x4, null]
    //     0x740f78: add             x4, PP, #0x15, lsl #12  ; [pp+0x151f0] List(9) [0, 0x6, 0x2, 0x4, "builder", 0x5, "locale", 0x4, Null]
    //     0x740f7c: ldr             x4, [x4, #0x1f0]
    // 0x740f80: r0 = showDatePicker()
    //     0x740f80: bl              #0x6d2148  ; [package:flutter/src/material/date_picker.dart] ::showDatePicker
    // 0x740f84: mov             x1, x0
    // 0x740f88: stur            x1, [fp, #-0x18]
    // 0x740f8c: r0 = Await()
    //     0x740f8c: bl              #0x3dd188  ; AwaitStub
    // 0x740f90: mov             x1, x0
    // 0x740f94: ldur            x2, [fp, #-0x20]
    // 0x740f98: StoreField: r2->field_f = r0
    //     0x740f98: stur            w0, [x2, #0xf]
    //     0x740f9c: tbz             w0, #0, #0x740fb8
    //     0x740fa0: ldurb           w16, [x2, #-1]
    //     0x740fa4: ldurb           w17, [x0, #-1]
    //     0x740fa8: and             x16, x17, x16, lsr #2
    //     0x740fac: tst             x16, HEAP, lsr #32
    //     0x740fb0: b.eq            #0x740fb8
    //     0x740fb4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x740fb8: cmp             w1, NULL
    // 0x740fbc: b.eq            #0x740ff4
    // 0x740fc0: ldur            x0, [fp, #-0x10]
    // 0x740fc4: LoadField: r3 = r0->field_13
    //     0x740fc4: ldur            w3, [x0, #0x13]
    // 0x740fc8: DecompressPointer r3
    //     0x740fc8: add             x3, x3, HEAP, lsl #32
    // 0x740fcc: stur            x3, [fp, #-0x18]
    // 0x740fd0: r1 = Function '<anonymous closure>':.
    //     0x740fd0: add             x1, PP, #0x19, lsl #12  ; [pp+0x19620] AnonymousClosure: (0x741004), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x740fd4: ldr             x1, [x1, #0x620]
    // 0x740fd8: r0 = AllocateClosure()
    //     0x740fd8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x740fdc: ldur            x16, [fp, #-0x18]
    // 0x740fe0: stp             x0, x16, [SP]
    // 0x740fe4: ldur            x0, [fp, #-0x18]
    // 0x740fe8: ClosureCall
    //     0x740fe8: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x740fec: ldur            x2, [x0, #0x1f]
    //     0x740ff0: blr             x2
    // 0x740ff4: r0 = Null
    //     0x740ff4: mov             x0, NULL
    // 0x740ff8: r0 = ReturnAsyncNotFuture()
    //     0x740ff8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x740ffc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x740ffc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x741000: b               #0x740e88
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x741004, size: 0x58
    // 0x741004: ldr             x1, [SP]
    // 0x741008: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x741008: ldur            w2, [x1, #0x17]
    // 0x74100c: DecompressPointer r2
    //     0x74100c: add             x2, x2, HEAP, lsl #32
    // 0x741010: LoadField: r0 = r2->field_f
    //     0x741010: ldur            w0, [x2, #0xf]
    // 0x741014: DecompressPointer r0
    //     0x741014: add             x0, x0, HEAP, lsl #32
    // 0x741018: LoadField: r1 = r2->field_b
    //     0x741018: ldur            w1, [x2, #0xb]
    // 0x74101c: DecompressPointer r1
    //     0x74101c: add             x1, x1, HEAP, lsl #32
    // 0x741020: LoadField: r2 = r1->field_b
    //     0x741020: ldur            w2, [x1, #0xb]
    // 0x741024: DecompressPointer r2
    //     0x741024: add             x2, x2, HEAP, lsl #32
    // 0x741028: LoadField: r1 = r2->field_b
    //     0x741028: ldur            w1, [x2, #0xb]
    // 0x74102c: DecompressPointer r1
    //     0x74102c: add             x1, x1, HEAP, lsl #32
    // 0x741030: StoreField: r1->field_33 = r0
    //     0x741030: stur            w0, [x1, #0x33]
    //     0x741034: ldurb           w16, [x1, #-1]
    //     0x741038: ldurb           w17, [x0, #-1]
    //     0x74103c: and             x16, x17, x16, lsr #2
    //     0x741040: tst             x16, HEAP, lsr #32
    //     0x741044: b.eq            #0x741054
    //     0x741048: str             lr, [SP, #-8]!
    //     0x74104c: bl              #0x926790  ; WriteBarrierWrappersStub
    //     0x741050: ldr             lr, [SP], #8
    // 0x741054: r0 = Null
    //     0x741054: mov             x0, NULL
    // 0x741058: ret
    //     0x741058: ret             
  }
  [closure] Theme <anonymous closure>(dynamic, BuildContext, Widget?) {
    // ** addr: 0x74105c, size: 0x94
    // 0x74105c: EnterFrame
    //     0x74105c: stp             fp, lr, [SP, #-0x10]!
    //     0x741060: mov             fp, SP
    // 0x741064: AllocStack(0x18)
    //     0x741064: sub             SP, SP, #0x18
    // 0x741068: CheckStackOverflow
    //     0x741068: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74106c: cmp             SP, x16
    //     0x741070: b.ls            #0x7410e4
    // 0x741074: r1 = Null
    //     0x741074: mov             x1, NULL
    // 0x741078: r0 = ThemeData.dark()
    //     0x741078: bl              #0x7410f0  ; [package:flutter/src/material/theme_data.dart] ThemeData::ThemeData.dark
    // 0x74107c: stur            x0, [fp, #-8]
    // 0x741080: r0 = DialogThemeData()
    //     0x741080: bl              #0x56bda4  ; AllocateDialogThemeDataStub -> DialogThemeData (size=0x40)
    // 0x741084: mov             x1, x0
    // 0x741088: r0 = Instance_Color
    //     0x741088: add             x0, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x74108c: ldr             x0, [x0, #0x1c0]
    // 0x741090: StoreField: r1->field_7 = r0
    //     0x741090: stur            w0, [x1, #7]
    // 0x741094: r16 = Instance_ColorScheme
    //     0x741094: add             x16, PP, #0x19, lsl #12  ; [pp+0x19628] Obj!ColorScheme@a1a2d1
    //     0x741098: ldr             x16, [x16, #0x628]
    // 0x74109c: stp             x1, x16, [SP]
    // 0x7410a0: ldur            x1, [fp, #-8]
    // 0x7410a4: r4 = const [0, 0x3, 0x2, 0x1, colorScheme, 0x1, dialogTheme, 0x2, null]
    //     0x7410a4: add             x4, PP, #0x19, lsl #12  ; [pp+0x19630] List(9) [0, 0x3, 0x2, 0x1, "colorScheme", 0x1, "dialogTheme", 0x2, Null]
    //     0x7410a8: ldr             x4, [x4, #0x630]
    // 0x7410ac: r0 = copyWith()
    //     0x7410ac: bl              #0x40f870  ; [package:flutter/src/material/theme_data.dart] ThemeData::copyWith
    // 0x7410b0: mov             x1, x0
    // 0x7410b4: ldr             x0, [fp, #0x10]
    // 0x7410b8: stur            x1, [fp, #-8]
    // 0x7410bc: cmp             w0, NULL
    // 0x7410c0: b.eq            #0x7410ec
    // 0x7410c4: r0 = Theme()
    //     0x7410c4: bl              #0x65091c  ; AllocateThemeStub -> Theme (size=0x14)
    // 0x7410c8: ldur            x1, [fp, #-8]
    // 0x7410cc: StoreField: r0->field_b = r1
    //     0x7410cc: stur            w1, [x0, #0xb]
    // 0x7410d0: ldr             x1, [fp, #0x10]
    // 0x7410d4: StoreField: r0->field_f = r1
    //     0x7410d4: stur            w1, [x0, #0xf]
    // 0x7410d8: LeaveFrame
    //     0x7410d8: mov             SP, fp
    //     0x7410dc: ldp             fp, lr, [SP], #0x10
    // 0x7410e0: ret
    //     0x7410e0: ret             
    // 0x7410e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7410e4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7410e8: b               #0x741074
    // 0x7410ec: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7410ec: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x741130, size: 0x8c
    // 0x741130: EnterFrame
    //     0x741130: stp             fp, lr, [SP, #-0x10]!
    //     0x741134: mov             fp, SP
    // 0x741138: AllocStack(0x20)
    //     0x741138: sub             SP, SP, #0x20
    // 0x74113c: SetupParameters([dynamic _ /* r0 */])
    //     0x74113c: ldr             x0, [fp, #0x18]
    //     0x741140: ldur            w1, [x0, #0x17]
    //     0x741144: add             x1, x1, HEAP, lsl #32
    //     0x741148: stur            x1, [fp, #-8]
    // 0x74114c: CheckStackOverflow
    //     0x74114c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x741150: cmp             SP, x16
    //     0x741154: b.ls            #0x7411b4
    // 0x741158: r1 = 1
    //     0x741158: mov             x1, #1
    // 0x74115c: r0 = AllocateContext()
    //     0x74115c: bl              #0x927010  ; AllocateContextStub
    // 0x741160: mov             x1, x0
    // 0x741164: ldur            x0, [fp, #-8]
    // 0x741168: StoreField: r1->field_b = r0
    //     0x741168: stur            w0, [x1, #0xb]
    // 0x74116c: ldr             x2, [fp, #0x10]
    // 0x741170: StoreField: r1->field_f = r2
    //     0x741170: stur            w2, [x1, #0xf]
    // 0x741174: LoadField: r3 = r0->field_13
    //     0x741174: ldur            w3, [x0, #0x13]
    // 0x741178: DecompressPointer r3
    //     0x741178: add             x3, x3, HEAP, lsl #32
    // 0x74117c: mov             x2, x1
    // 0x741180: stur            x3, [fp, #-0x10]
    // 0x741184: r1 = Function '<anonymous closure>':.
    //     0x741184: add             x1, PP, #0x19, lsl #12  ; [pp+0x19638] AnonymousClosure: (0x6e4734), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x741188: ldr             x1, [x1, #0x638]
    // 0x74118c: r0 = AllocateClosure()
    //     0x74118c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x741190: ldur            x16, [fp, #-0x10]
    // 0x741194: stp             x0, x16, [SP]
    // 0x741198: ldur            x0, [fp, #-0x10]
    // 0x74119c: ClosureCall
    //     0x74119c: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x7411a0: ldur            x2, [x0, #0x1f]
    //     0x7411a4: blr             x2
    // 0x7411a8: LeaveFrame
    //     0x7411a8: mov             SP, fp
    //     0x7411ac: ldp             fp, lr, [SP], #0x10
    // 0x7411b0: ret
    //     0x7411b0: ret             
    // 0x7411b4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7411b4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7411b8: b               #0x741158
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x7411bc, size: 0x8c
    // 0x7411bc: EnterFrame
    //     0x7411bc: stp             fp, lr, [SP, #-0x10]!
    //     0x7411c0: mov             fp, SP
    // 0x7411c4: AllocStack(0x20)
    //     0x7411c4: sub             SP, SP, #0x20
    // 0x7411c8: SetupParameters([dynamic _ /* r0 */])
    //     0x7411c8: ldr             x0, [fp, #0x18]
    //     0x7411cc: ldur            w1, [x0, #0x17]
    //     0x7411d0: add             x1, x1, HEAP, lsl #32
    //     0x7411d4: stur            x1, [fp, #-8]
    // 0x7411d8: CheckStackOverflow
    //     0x7411d8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7411dc: cmp             SP, x16
    //     0x7411e0: b.ls            #0x741240
    // 0x7411e4: r1 = 1
    //     0x7411e4: mov             x1, #1
    // 0x7411e8: r0 = AllocateContext()
    //     0x7411e8: bl              #0x927010  ; AllocateContextStub
    // 0x7411ec: mov             x1, x0
    // 0x7411f0: ldur            x0, [fp, #-8]
    // 0x7411f4: StoreField: r1->field_b = r0
    //     0x7411f4: stur            w0, [x1, #0xb]
    // 0x7411f8: ldr             x2, [fp, #0x10]
    // 0x7411fc: StoreField: r1->field_f = r2
    //     0x7411fc: stur            w2, [x1, #0xf]
    // 0x741200: LoadField: r3 = r0->field_13
    //     0x741200: ldur            w3, [x0, #0x13]
    // 0x741204: DecompressPointer r3
    //     0x741204: add             x3, x3, HEAP, lsl #32
    // 0x741208: mov             x2, x1
    // 0x74120c: stur            x3, [fp, #-0x10]
    // 0x741210: r1 = Function '<anonymous closure>':.
    //     0x741210: add             x1, PP, #0x19, lsl #12  ; [pp+0x19640] AnonymousClosure: (0x741248), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog (0x73cfd4)
    //     0x741214: ldr             x1, [x1, #0x640]
    // 0x741218: r0 = AllocateClosure()
    //     0x741218: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74121c: ldur            x16, [fp, #-0x10]
    // 0x741220: stp             x0, x16, [SP]
    // 0x741224: ldur            x0, [fp, #-0x10]
    // 0x741228: ClosureCall
    //     0x741228: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x74122c: ldur            x2, [x0, #0x1f]
    //     0x741230: blr             x2
    // 0x741234: LeaveFrame
    //     0x741234: mov             SP, fp
    //     0x741238: ldp             fp, lr, [SP], #0x10
    // 0x74123c: ret
    //     0x74123c: ret             
    // 0x741240: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x741240: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x741244: b               #0x7411e4
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x741248, size: 0x70
    // 0x741248: ldr             x1, [SP]
    // 0x74124c: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x74124c: ldur            w2, [x1, #0x17]
    // 0x741250: DecompressPointer r2
    //     0x741250: add             x2, x2, HEAP, lsl #32
    // 0x741254: LoadField: r1 = r2->field_f
    //     0x741254: ldur            w1, [x2, #0xf]
    // 0x741258: DecompressPointer r1
    //     0x741258: add             x1, x1, HEAP, lsl #32
    // 0x74125c: cmp             w1, NULL
    // 0x741260: b.eq            #0x7412ac
    // 0x741264: LoadField: r3 = r2->field_b
    //     0x741264: ldur            w3, [x2, #0xb]
    // 0x741268: DecompressPointer r3
    //     0x741268: add             x3, x3, HEAP, lsl #32
    // 0x74126c: LoadField: r2 = r3->field_b
    //     0x74126c: ldur            w2, [x3, #0xb]
    // 0x741270: DecompressPointer r2
    //     0x741270: add             x2, x2, HEAP, lsl #32
    // 0x741274: LoadField: r3 = r2->field_b
    //     0x741274: ldur            w3, [x2, #0xb]
    // 0x741278: DecompressPointer r3
    //     0x741278: add             x3, x3, HEAP, lsl #32
    // 0x74127c: mov             x0, x1
    // 0x741280: StoreField: r3->field_2b = r0
    //     0x741280: stur            w0, [x3, #0x2b]
    //     0x741284: ldurb           w16, [x3, #-1]
    //     0x741288: ldurb           w17, [x0, #-1]
    //     0x74128c: and             x16, x17, x16, lsr #2
    //     0x741290: tst             x16, HEAP, lsr #32
    //     0x741294: b.eq            #0x7412a4
    //     0x741298: str             lr, [SP, #-8]!
    //     0x74129c: bl              #0x9267d0  ; WriteBarrierWrappersStub
    //     0x7412a0: ldr             lr, [SP], #8
    // 0x7412a4: mov             x0, x1
    // 0x7412a8: ret
    //     0x7412a8: ret             
    // 0x7412ac: EnterFrame
    //     0x7412ac: stp             fp, lr, [SP, #-0x10]!
    //     0x7412b0: mov             fp, SP
    // 0x7412b4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7412b4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] bool <anonymous closure>(dynamic, RoomModel) {
    // ** addr: 0x7412b8, size: 0x68
    // 0x7412b8: EnterFrame
    //     0x7412b8: stp             fp, lr, [SP, #-0x10]!
    //     0x7412bc: mov             fp, SP
    // 0x7412c0: AllocStack(0x10)
    //     0x7412c0: sub             SP, SP, #0x10
    // 0x7412c4: SetupParameters([dynamic _ /* r0 */])
    //     0x7412c4: ldr             x0, [fp, #0x18]
    //     0x7412c8: ldur            w1, [x0, #0x17]
    //     0x7412cc: add             x1, x1, HEAP, lsl #32
    // 0x7412d0: CheckStackOverflow
    //     0x7412d0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7412d4: cmp             SP, x16
    //     0x7412d8: b.ls            #0x741318
    // 0x7412dc: ldr             x0, [fp, #0x10]
    // 0x7412e0: LoadField: r2 = r0->field_7
    //     0x7412e0: ldur            w2, [x0, #7]
    // 0x7412e4: DecompressPointer r2
    //     0x7412e4: add             x2, x2, HEAP, lsl #32
    // 0x7412e8: LoadField: r0 = r1->field_1f
    //     0x7412e8: ldur            w0, [x1, #0x1f]
    // 0x7412ec: DecompressPointer r0
    //     0x7412ec: add             x0, x0, HEAP, lsl #32
    // 0x7412f0: r1 = LoadClassIdInstr(r2)
    //     0x7412f0: ldur            x1, [x2, #-1]
    //     0x7412f4: ubfx            x1, x1, #0xc, #0x14
    // 0x7412f8: stp             x0, x2, [SP]
    // 0x7412fc: mov             x0, x1
    // 0x741300: mov             lr, x0
    // 0x741304: ldr             lr, [x21, lr, lsl #3]
    // 0x741308: blr             lr
    // 0x74130c: LeaveFrame
    //     0x74130c: mov             SP, fp
    //     0x741310: ldp             fp, lr, [SP], #0x10
    // 0x741314: ret
    //     0x741314: ret             
    // 0x741318: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x741318: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74131c: b               #0x7412dc
  }
  [closure] bool <anonymous closure>(dynamic, HotelModel) {
    // ** addr: 0x741320, size: 0x68
    // 0x741320: EnterFrame
    //     0x741320: stp             fp, lr, [SP, #-0x10]!
    //     0x741324: mov             fp, SP
    // 0x741328: AllocStack(0x10)
    //     0x741328: sub             SP, SP, #0x10
    // 0x74132c: SetupParameters([dynamic _ /* r0 */])
    //     0x74132c: ldr             x0, [fp, #0x18]
    //     0x741330: ldur            w1, [x0, #0x17]
    //     0x741334: add             x1, x1, HEAP, lsl #32
    // 0x741338: CheckStackOverflow
    //     0x741338: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74133c: cmp             SP, x16
    //     0x741340: b.ls            #0x741380
    // 0x741344: ldr             x0, [fp, #0x10]
    // 0x741348: LoadField: r2 = r0->field_7
    //     0x741348: ldur            w2, [x0, #7]
    // 0x74134c: DecompressPointer r2
    //     0x74134c: add             x2, x2, HEAP, lsl #32
    // 0x741350: LoadField: r0 = r1->field_1b
    //     0x741350: ldur            w0, [x1, #0x1b]
    // 0x741354: DecompressPointer r0
    //     0x741354: add             x0, x0, HEAP, lsl #32
    // 0x741358: r1 = LoadClassIdInstr(r2)
    //     0x741358: ldur            x1, [x2, #-1]
    //     0x74135c: ubfx            x1, x1, #0xc, #0x14
    // 0x741360: stp             x0, x2, [SP]
    // 0x741364: mov             x0, x1
    // 0x741368: mov             lr, x0
    // 0x74136c: ldr             lr, [x21, lr, lsl #3]
    // 0x741370: blr             lr
    // 0x741374: LeaveFrame
    //     0x741374: mov             SP, fp
    //     0x741378: ldp             fp, lr, [SP], #0x10
    // 0x74137c: ret
    //     0x74137c: ret             
    // 0x741380: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x741380: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x741384: b               #0x741344
  }
  [closure] bool <anonymous closure>(dynamic, TripModel) {
    // ** addr: 0x741388, size: 0x68
    // 0x741388: EnterFrame
    //     0x741388: stp             fp, lr, [SP, #-0x10]!
    //     0x74138c: mov             fp, SP
    // 0x741390: AllocStack(0x10)
    //     0x741390: sub             SP, SP, #0x10
    // 0x741394: SetupParameters([dynamic _ /* r0 */])
    //     0x741394: ldr             x0, [fp, #0x18]
    //     0x741398: ldur            w1, [x0, #0x17]
    //     0x74139c: add             x1, x1, HEAP, lsl #32
    // 0x7413a0: CheckStackOverflow
    //     0x7413a0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7413a4: cmp             SP, x16
    //     0x7413a8: b.ls            #0x7413e8
    // 0x7413ac: ldr             x0, [fp, #0x10]
    // 0x7413b0: LoadField: r2 = r0->field_7
    //     0x7413b0: ldur            w2, [x0, #7]
    // 0x7413b4: DecompressPointer r2
    //     0x7413b4: add             x2, x2, HEAP, lsl #32
    // 0x7413b8: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x7413b8: ldur            w0, [x1, #0x17]
    // 0x7413bc: DecompressPointer r0
    //     0x7413bc: add             x0, x0, HEAP, lsl #32
    // 0x7413c0: r1 = LoadClassIdInstr(r2)
    //     0x7413c0: ldur            x1, [x2, #-1]
    //     0x7413c4: ubfx            x1, x1, #0xc, #0x14
    // 0x7413c8: stp             x0, x2, [SP]
    // 0x7413cc: mov             x0, x1
    // 0x7413d0: mov             lr, x0
    // 0x7413d4: ldr             lr, [x21, lr, lsl #3]
    // 0x7413d8: blr             lr
    // 0x7413dc: LeaveFrame
    //     0x7413dc: mov             SP, fp
    //     0x7413e0: ldp             fp, lr, [SP], #0x10
    // 0x7413e4: ret
    //     0x7413e4: ret             
    // 0x7413e8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7413e8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7413ec: b               #0x7413ac
  }
  [closure] bool <anonymous closure>(dynamic, RoomModel) {
    // ** addr: 0x7413f0, size: 0x68
    // 0x7413f0: EnterFrame
    //     0x7413f0: stp             fp, lr, [SP, #-0x10]!
    //     0x7413f4: mov             fp, SP
    // 0x7413f8: AllocStack(0x10)
    //     0x7413f8: sub             SP, SP, #0x10
    // 0x7413fc: SetupParameters([dynamic _ /* r0 */])
    //     0x7413fc: ldr             x0, [fp, #0x18]
    //     0x741400: ldur            w1, [x0, #0x17]
    //     0x741404: add             x1, x1, HEAP, lsl #32
    // 0x741408: CheckStackOverflow
    //     0x741408: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74140c: cmp             SP, x16
    //     0x741410: b.ls            #0x741450
    // 0x741414: ldr             x0, [fp, #0x10]
    // 0x741418: LoadField: r2 = r0->field_b
    //     0x741418: ldur            w2, [x0, #0xb]
    // 0x74141c: DecompressPointer r2
    //     0x74141c: add             x2, x2, HEAP, lsl #32
    // 0x741420: LoadField: r0 = r1->field_1b
    //     0x741420: ldur            w0, [x1, #0x1b]
    // 0x741424: DecompressPointer r0
    //     0x741424: add             x0, x0, HEAP, lsl #32
    // 0x741428: r1 = LoadClassIdInstr(r2)
    //     0x741428: ldur            x1, [x2, #-1]
    //     0x74142c: ubfx            x1, x1, #0xc, #0x14
    // 0x741430: stp             x0, x2, [SP]
    // 0x741434: mov             x0, x1
    // 0x741438: mov             lr, x0
    // 0x74143c: ldr             lr, [x21, lr, lsl #3]
    // 0x741440: blr             lr
    // 0x741444: LeaveFrame
    //     0x741444: mov             SP, fp
    //     0x741448: ldp             fp, lr, [SP], #0x10
    // 0x74144c: ret
    //     0x74144c: ret             
    // 0x741450: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x741450: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x741454: b               #0x741414
  }
  [closure] bool <anonymous closure>(dynamic, HotelModel) {
    // ** addr: 0x741458, size: 0x68
    // 0x741458: EnterFrame
    //     0x741458: stp             fp, lr, [SP, #-0x10]!
    //     0x74145c: mov             fp, SP
    // 0x741460: AllocStack(0x10)
    //     0x741460: sub             SP, SP, #0x10
    // 0x741464: SetupParameters([dynamic _ /* r0 */])
    //     0x741464: ldr             x0, [fp, #0x18]
    //     0x741468: ldur            w1, [x0, #0x17]
    //     0x74146c: add             x1, x1, HEAP, lsl #32
    // 0x741470: CheckStackOverflow
    //     0x741470: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x741474: cmp             SP, x16
    //     0x741478: b.ls            #0x7414b8
    // 0x74147c: ldr             x0, [fp, #0x10]
    // 0x741480: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x741480: ldur            w2, [x0, #0x17]
    // 0x741484: DecompressPointer r2
    //     0x741484: add             x2, x2, HEAP, lsl #32
    // 0x741488: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x741488: ldur            w0, [x1, #0x17]
    // 0x74148c: DecompressPointer r0
    //     0x74148c: add             x0, x0, HEAP, lsl #32
    // 0x741490: r1 = LoadClassIdInstr(r2)
    //     0x741490: ldur            x1, [x2, #-1]
    //     0x741494: ubfx            x1, x1, #0xc, #0x14
    // 0x741498: stp             x0, x2, [SP]
    // 0x74149c: mov             x0, x1
    // 0x7414a0: mov             lr, x0
    // 0x7414a4: ldr             lr, [x21, lr, lsl #3]
    // 0x7414a8: blr             lr
    // 0x7414ac: LeaveFrame
    //     0x7414ac: mov             SP, fp
    //     0x7414b0: ldp             fp, lr, [SP], #0x10
    // 0x7414b4: ret
    //     0x7414b4: ret             
    // 0x7414b8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7414b8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7414bc: b               #0x74147c
  }
  [closure] bool <anonymous closure>(dynamic, TripModel) {
    // ** addr: 0x7414c0, size: 0x78
    // 0x7414c0: EnterFrame
    //     0x7414c0: stp             fp, lr, [SP, #-0x10]!
    //     0x7414c4: mov             fp, SP
    // 0x7414c8: AllocStack(0x10)
    //     0x7414c8: sub             SP, SP, #0x10
    // 0x7414cc: SetupParameters([dynamic _ /* r0 */])
    //     0x7414cc: ldr             x0, [fp, #0x18]
    //     0x7414d0: ldur            w1, [x0, #0x17]
    //     0x7414d4: add             x1, x1, HEAP, lsl #32
    // 0x7414d8: CheckStackOverflow
    //     0x7414d8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7414dc: cmp             SP, x16
    //     0x7414e0: b.ls            #0x741530
    // 0x7414e4: ldr             x0, [fp, #0x10]
    // 0x7414e8: LoadField: r2 = r0->field_f
    //     0x7414e8: ldur            w2, [x0, #0xf]
    // 0x7414ec: DecompressPointer r2
    //     0x7414ec: add             x2, x2, HEAP, lsl #32
    // 0x7414f0: LoadField: r0 = r1->field_b
    //     0x7414f0: ldur            w0, [x1, #0xb]
    // 0x7414f4: DecompressPointer r0
    //     0x7414f4: add             x0, x0, HEAP, lsl #32
    // 0x7414f8: LoadField: r1 = r0->field_b
    //     0x7414f8: ldur            w1, [x0, #0xb]
    // 0x7414fc: DecompressPointer r1
    //     0x7414fc: add             x1, x1, HEAP, lsl #32
    // 0x741500: LoadField: r0 = r1->field_37
    //     0x741500: ldur            w0, [x1, #0x37]
    // 0x741504: DecompressPointer r0
    //     0x741504: add             x0, x0, HEAP, lsl #32
    // 0x741508: r1 = LoadClassIdInstr(r2)
    //     0x741508: ldur            x1, [x2, #-1]
    //     0x74150c: ubfx            x1, x1, #0xc, #0x14
    // 0x741510: stp             x0, x2, [SP]
    // 0x741514: mov             x0, x1
    // 0x741518: mov             lr, x0
    // 0x74151c: ldr             lr, [x21, lr, lsl #3]
    // 0x741520: blr             lr
    // 0x741524: LeaveFrame
    //     0x741524: mov             SP, fp
    //     0x741528: ldp             fp, lr, [SP], #0x10
    // 0x74152c: ret
    //     0x74152c: ret             
    // 0x741530: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x741530: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x741534: b               #0x7414e4
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x744590, size: 0x28
    // 0x744590: r0 = true
    //     0x744590: add             x0, NULL, #0x20  ; true
    // 0x744594: ldr             x1, [SP]
    // 0x744598: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x744598: ldur            w2, [x1, #0x17]
    // 0x74459c: DecompressPointer r2
    //     0x74459c: add             x2, x2, HEAP, lsl #32
    // 0x7445a0: LoadField: r1 = r2->field_b
    //     0x7445a0: ldur            w1, [x2, #0xb]
    // 0x7445a4: DecompressPointer r1
    //     0x7445a4: add             x1, x1, HEAP, lsl #32
    // 0x7445a8: LoadField: r2 = r1->field_b
    //     0x7445a8: ldur            w2, [x1, #0xb]
    // 0x7445ac: DecompressPointer r2
    //     0x7445ac: add             x2, x2, HEAP, lsl #32
    // 0x7445b0: ArrayStore: r2[0] = r0  ; List_4
    //     0x7445b0: stur            w0, [x2, #0x17]
    // 0x7445b4: ret
    //     0x7445b4: ret             
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7445b8, size: 0x178
    // 0x7445b8: EnterFrame
    //     0x7445b8: stp             fp, lr, [SP, #-0x10]!
    //     0x7445bc: mov             fp, SP
    // 0x7445c0: AllocStack(0x38)
    //     0x7445c0: sub             SP, SP, #0x38
    // 0x7445c4: SetupParameters(UsersTabState this /* r1 */)
    //     0x7445c4: stur            NULL, [fp, #-8]
    //     0x7445c8: mov             x0, #0
    //     0x7445cc: add             x1, fp, w0, sxtw #2
    //     0x7445d0: ldr             x1, [x1, #0x10]
    //     0x7445d4: ldur            w2, [x1, #0x17]
    //     0x7445d8: add             x2, x2, HEAP, lsl #32
    //     0x7445dc: stur            x2, [fp, #-0x10]
    // 0x7445e0: CheckStackOverflow
    //     0x7445e0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7445e4: cmp             SP, x16
    //     0x7445e8: b.ls            #0x744720
    // 0x7445ec: InitAsync() -> Future<void?>
    //     0x7445ec: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x7445f0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7445f4: ldur            x0, [fp, #-0x10]
    // 0x7445f8: LoadField: r3 = r0->field_f
    //     0x7445f8: ldur            w3, [x0, #0xf]
    // 0x7445fc: DecompressPointer r3
    //     0x7445fc: add             x3, x3, HEAP, lsl #32
    // 0x744600: mov             x2, x0
    // 0x744604: stur            x3, [fp, #-0x18]
    // 0x744608: r1 = Function '<anonymous closure>':.
    //     0x744608: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1faa0] AnonymousClosure: (0x744590), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::confirmDeleteUser (0x744a60)
    //     0x74460c: ldr             x1, [x1, #0xaa0]
    // 0x744610: r0 = AllocateClosure()
    //     0x744610: bl              #0x9273d4  ; AllocateClosureStub
    // 0x744614: ldur            x16, [fp, #-0x18]
    // 0x744618: stp             x0, x16, [SP]
    // 0x74461c: ldur            x0, [fp, #-0x18]
    // 0x744620: ClosureCall
    //     0x744620: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x744624: ldur            x2, [x0, #0x1f]
    //     0x744628: blr             x2
    // 0x74462c: ldur            x0, [fp, #-0x10]
    // 0x744630: LoadField: r3 = r0->field_b
    //     0x744630: ldur            w3, [x0, #0xb]
    // 0x744634: DecompressPointer r3
    //     0x744634: add             x3, x3, HEAP, lsl #32
    // 0x744638: stur            x3, [fp, #-0x20]
    // 0x74463c: LoadField: r4 = r3->field_b
    //     0x74463c: ldur            w4, [x3, #0xb]
    // 0x744640: DecompressPointer r4
    //     0x744640: add             x4, x4, HEAP, lsl #32
    // 0x744644: stur            x4, [fp, #-0x18]
    // 0x744648: LoadField: r1 = r4->field_f
    //     0x744648: ldur            w1, [x4, #0xf]
    // 0x74464c: DecompressPointer r1
    //     0x74464c: add             x1, x1, HEAP, lsl #32
    // 0x744650: LoadField: r2 = r1->field_b
    //     0x744650: ldur            w2, [x1, #0xb]
    // 0x744654: DecompressPointer r2
    //     0x744654: add             x2, x2, HEAP, lsl #32
    // 0x744658: cmp             w2, NULL
    // 0x74465c: b.eq            #0x744728
    // 0x744660: LoadField: r1 = r2->field_1f
    //     0x744660: ldur            w1, [x2, #0x1f]
    // 0x744664: DecompressPointer r1
    //     0x744664: add             x1, x1, HEAP, lsl #32
    // 0x744668: LoadField: r2 = r1->field_7
    //     0x744668: ldur            w2, [x1, #7]
    // 0x74466c: DecompressPointer r2
    //     0x74466c: add             x2, x2, HEAP, lsl #32
    // 0x744670: mov             x1, x2
    // 0x744674: r2 = "users"
    //     0x744674: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x744678: ldr             x2, [x2, #0x808]
    // 0x74467c: r0 = collection()
    //     0x74467c: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x744680: mov             x1, x0
    // 0x744684: ldur            x0, [fp, #-0x18]
    // 0x744688: LoadField: r2 = r0->field_13
    //     0x744688: ldur            w2, [x0, #0x13]
    // 0x74468c: DecompressPointer r2
    //     0x74468c: add             x2, x2, HEAP, lsl #32
    // 0x744690: LoadField: r3 = r2->field_7
    //     0x744690: ldur            w3, [x2, #7]
    // 0x744694: DecompressPointer r3
    //     0x744694: add             x3, x3, HEAP, lsl #32
    // 0x744698: str             x3, [SP]
    // 0x74469c: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x74469c: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x7446a0: r0 = doc()
    //     0x7446a0: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x7446a4: mov             x1, x0
    // 0x7446a8: r0 = delete()
    //     0x7446a8: bl              #0x6d69d4  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::delete
    // 0x7446ac: mov             x1, x0
    // 0x7446b0: stur            x1, [fp, #-0x28]
    // 0x7446b4: r0 = Await()
    //     0x7446b4: bl              #0x3dd188  ; AwaitStub
    // 0x7446b8: ldur            x0, [fp, #-0x18]
    // 0x7446bc: LoadField: r1 = r0->field_f
    //     0x7446bc: ldur            w1, [x0, #0xf]
    // 0x7446c0: DecompressPointer r1
    //     0x7446c0: add             x1, x1, HEAP, lsl #32
    // 0x7446c4: LoadField: r0 = r1->field_b
    //     0x7446c4: ldur            w0, [x1, #0xb]
    // 0x7446c8: DecompressPointer r0
    //     0x7446c8: add             x0, x0, HEAP, lsl #32
    // 0x7446cc: cmp             w0, NULL
    // 0x7446d0: b.eq            #0x74472c
    // 0x7446d4: LoadField: r1 = r0->field_23
    //     0x7446d4: ldur            w1, [x0, #0x23]
    // 0x7446d8: DecompressPointer r1
    //     0x7446d8: add             x1, x1, HEAP, lsl #32
    // 0x7446dc: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x7446dc: ldur            w0, [x1, #0x17]
    // 0x7446e0: DecompressPointer r0
    //     0x7446e0: add             x0, x0, HEAP, lsl #32
    // 0x7446e4: mov             x1, x0
    // 0x7446e8: r0 = _loadAgencyData()
    //     0x7446e8: bl              #0x63a658  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_loadAgencyData
    // 0x7446ec: ldur            x0, [fp, #-0x20]
    // 0x7446f0: LoadField: r1 = r0->field_f
    //     0x7446f0: ldur            w1, [x0, #0xf]
    // 0x7446f4: DecompressPointer r1
    //     0x7446f4: add             x1, x1, HEAP, lsl #32
    // 0x7446f8: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x7446f8: ldur            w0, [x1, #0x17]
    // 0x7446fc: DecompressPointer r0
    //     0x7446fc: add             x0, x0, HEAP, lsl #32
    // 0x744700: cmp             w0, NULL
    // 0x744704: b.eq            #0x744718
    // 0x744708: r16 = <Object?>
    //     0x744708: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x74470c: stp             x1, x16, [SP]
    // 0x744710: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x744710: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x744714: r0 = pop()
    //     0x744714: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x744718: r0 = Null
    //     0x744718: mov             x0, NULL
    // 0x74471c: r0 = ReturnAsyncNotFuture()
    //     0x74471c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x744720: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x744720: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x744724: b               #0x7445ec
    // 0x744728: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x744728: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x74472c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x74472c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void) {
    // ** addr: 0x744730, size: 0x2cc
    // 0x744730: EnterFrame
    //     0x744730: stp             fp, lr, [SP, #-0x10]!
    //     0x744734: mov             fp, SP
    // 0x744738: AllocStack(0x48)
    //     0x744738: sub             SP, SP, #0x48
    // 0x74473c: SetupParameters([dynamic _ /* r0 */])
    //     0x74473c: ldr             x0, [fp, #0x20]
    //     0x744740: ldur            w1, [x0, #0x17]
    //     0x744744: add             x1, x1, HEAP, lsl #32
    //     0x744748: stur            x1, [fp, #-8]
    // 0x74474c: CheckStackOverflow
    //     0x74474c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x744750: cmp             SP, x16
    //     0x744754: b.ls            #0x7449f4
    // 0x744758: r1 = 1
    //     0x744758: mov             x1, #1
    // 0x74475c: r0 = AllocateContext()
    //     0x74475c: bl              #0x927010  ; AllocateContextStub
    // 0x744760: mov             x1, x0
    // 0x744764: ldur            x0, [fp, #-8]
    // 0x744768: stur            x1, [fp, #-0x10]
    // 0x74476c: StoreField: r1->field_b = r0
    //     0x74476c: stur            w0, [x1, #0xb]
    // 0x744770: ldr             x2, [fp, #0x10]
    // 0x744774: StoreField: r1->field_f = r2
    //     0x744774: stur            w2, [x1, #0xf]
    // 0x744778: r0 = Radius()
    //     0x744778: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x74477c: d0 = 16.000000
    //     0x74477c: fmov            d0, #16.00000000
    // 0x744780: stur            x0, [fp, #-0x18]
    // 0x744784: StoreField: r0->field_7 = d0
    //     0x744784: stur            d0, [x0, #7]
    // 0x744788: StoreField: r0->field_f = d0
    //     0x744788: stur            d0, [x0, #0xf]
    // 0x74478c: r0 = BorderRadius()
    //     0x74478c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x744790: mov             x1, x0
    // 0x744794: ldur            x0, [fp, #-0x18]
    // 0x744798: stur            x1, [fp, #-0x20]
    // 0x74479c: StoreField: r1->field_7 = r0
    //     0x74479c: stur            w0, [x1, #7]
    // 0x7447a0: StoreField: r1->field_b = r0
    //     0x7447a0: stur            w0, [x1, #0xb]
    // 0x7447a4: StoreField: r1->field_f = r0
    //     0x7447a4: stur            w0, [x1, #0xf]
    // 0x7447a8: StoreField: r1->field_13 = r0
    //     0x7447a8: stur            w0, [x1, #0x13]
    // 0x7447ac: r0 = RoundedRectangleBorder()
    //     0x7447ac: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x7447b0: mov             x3, x0
    // 0x7447b4: ldur            x0, [fp, #-0x20]
    // 0x7447b8: stur            x3, [fp, #-0x18]
    // 0x7447bc: StoreField: r3->field_b = r0
    //     0x7447bc: stur            w0, [x3, #0xb]
    // 0x7447c0: r0 = Instance_BorderSide
    //     0x7447c0: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x7447c4: ldr             x0, [x0, #0xcb8]
    // 0x7447c8: StoreField: r3->field_7 = r0
    //     0x7447c8: stur            w0, [x3, #7]
    // 0x7447cc: r1 = Null
    //     0x7447cc: mov             x1, NULL
    // 0x7447d0: r2 = 6
    //     0x7447d0: mov             x2, #6
    // 0x7447d4: r0 = AllocateArray()
    //     0x7447d4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7447d8: r16 = "\""
    //     0x7447d8: add             x16, PP, #0xc, lsl #12  ; [pp+0xc040] "\""
    //     0x7447dc: ldr             x16, [x16, #0x40]
    // 0x7447e0: StoreField: r0->field_f = r16
    //     0x7447e0: stur            w16, [x0, #0xf]
    // 0x7447e4: ldur            x1, [fp, #-8]
    // 0x7447e8: LoadField: r2 = r1->field_b
    //     0x7447e8: ldur            w2, [x1, #0xb]
    // 0x7447ec: DecompressPointer r2
    //     0x7447ec: add             x2, x2, HEAP, lsl #32
    // 0x7447f0: stur            x2, [fp, #-0x20]
    // 0x7447f4: LoadField: r1 = r2->field_13
    //     0x7447f4: ldur            w1, [x2, #0x13]
    // 0x7447f8: DecompressPointer r1
    //     0x7447f8: add             x1, x1, HEAP, lsl #32
    // 0x7447fc: LoadField: r3 = r1->field_b
    //     0x7447fc: ldur            w3, [x1, #0xb]
    // 0x744800: DecompressPointer r3
    //     0x744800: add             x3, x3, HEAP, lsl #32
    // 0x744804: StoreField: r0->field_13 = r3
    //     0x744804: stur            w3, [x0, #0x13]
    // 0x744808: r16 = "\" kullanıcısını silmek istediğinize emin misiniz\?"
    //     0x744808: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fa80] "\" kullanıcısını silmek istediğinize emin misiniz\?"
    //     0x74480c: ldr             x16, [x16, #0xa80]
    // 0x744810: ArrayStore: r0[0] = r16  ; List_4
    //     0x744810: stur            w16, [x0, #0x17]
    // 0x744814: str             x0, [SP]
    // 0x744818: r0 = _interpolate()
    //     0x744818: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x74481c: stur            x0, [fp, #-8]
    // 0x744820: r0 = Text()
    //     0x744820: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x744824: mov             x3, x0
    // 0x744828: ldur            x0, [fp, #-8]
    // 0x74482c: stur            x3, [fp, #-0x28]
    // 0x744830: StoreField: r3->field_b = r0
    //     0x744830: stur            w0, [x3, #0xb]
    // 0x744834: r0 = Instance_TextStyle
    //     0x744834: add             x0, PP, #0x19, lsl #12  ; [pp+0x19538] Obj!TextStyle@a179f1
    //     0x744838: ldr             x0, [x0, #0x538]
    // 0x74483c: StoreField: r3->field_13 = r0
    //     0x74483c: stur            w0, [x3, #0x13]
    // 0x744840: ldur            x0, [fp, #-0x20]
    // 0x744844: ArrayLoad: r4 = r0[0]  ; List_4
    //     0x744844: ldur            w4, [x0, #0x17]
    // 0x744848: DecompressPointer r4
    //     0x744848: add             x4, x4, HEAP, lsl #32
    // 0x74484c: stur            x4, [fp, #-8]
    // 0x744850: tbnz            w4, #4, #0x744860
    // 0x744854: mov             x0, x4
    // 0x744858: r1 = Null
    //     0x744858: mov             x1, NULL
    // 0x74485c: b               #0x744878
    // 0x744860: ldur            x2, [fp, #-0x10]
    // 0x744864: r1 = Function '<anonymous closure>':.
    //     0x744864: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fa88] AnonymousClosure: (0x6f5908), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog (0x6f64f4)
    //     0x744868: ldr             x1, [x1, #0xa88]
    // 0x74486c: r0 = AllocateClosure()
    //     0x74486c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x744870: mov             x1, x0
    // 0x744874: ldur            x0, [fp, #-8]
    // 0x744878: stur            x1, [fp, #-0x30]
    // 0x74487c: r0 = TextButton()
    //     0x74487c: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x744880: mov             x3, x0
    // 0x744884: ldur            x0, [fp, #-0x30]
    // 0x744888: stur            x3, [fp, #-0x38]
    // 0x74488c: StoreField: r3->field_b = r0
    //     0x74488c: stur            w0, [x3, #0xb]
    // 0x744890: r0 = false
    //     0x744890: add             x0, NULL, #0x30  ; false
    // 0x744894: StoreField: r3->field_27 = r0
    //     0x744894: stur            w0, [x3, #0x27]
    // 0x744898: r4 = true
    //     0x744898: add             x4, NULL, #0x20  ; true
    // 0x74489c: StoreField: r3->field_2f = r4
    //     0x74489c: stur            w4, [x3, #0x2f]
    // 0x7448a0: r1 = Instance_Text
    //     0x7448a0: add             x1, PP, #0x19, lsl #12  ; [pp+0x19198] Obj!Text@a1ba91
    //     0x7448a4: ldr             x1, [x1, #0x198]
    // 0x7448a8: StoreField: r3->field_37 = r1
    //     0x7448a8: stur            w1, [x3, #0x37]
    // 0x7448ac: ldur            x1, [fp, #-8]
    // 0x7448b0: tbnz            w1, #4, #0x7448bc
    // 0x7448b4: r1 = Null
    //     0x7448b4: mov             x1, NULL
    // 0x7448b8: b               #0x7448d0
    // 0x7448bc: ldur            x2, [fp, #-0x10]
    // 0x7448c0: r1 = Function '<anonymous closure>':.
    //     0x7448c0: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fa90] AnonymousClosure: (0x7445b8), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::confirmDeleteUser (0x744a60)
    //     0x7448c4: ldr             x1, [x1, #0xa90]
    // 0x7448c8: r0 = AllocateClosure()
    //     0x7448c8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7448cc: mov             x1, x0
    // 0x7448d0: ldur            x0, [fp, #-0x20]
    // 0x7448d4: stur            x1, [fp, #-8]
    // 0x7448d8: r16 = Instance_MaterialColor
    //     0x7448d8: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b90] Obj!MaterialColor@a25aa1
    //     0x7448dc: ldr             x16, [x16, #0xb90]
    // 0x7448e0: r30 = Instance_Color
    //     0x7448e0: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7448e4: stp             lr, x16, [SP]
    // 0x7448e8: r4 = const [0, 0x2, 0x2, 0, backgroundColor, 0, foregroundColor, 0x1, null]
    //     0x7448e8: add             x4, PP, #0x19, lsl #12  ; [pp+0x191a8] List(9) [0, 0x2, 0x2, 0, "backgroundColor", 0, "foregroundColor", 0x1, Null]
    //     0x7448ec: ldr             x4, [x4, #0x1a8]
    // 0x7448f0: r0 = styleFrom()
    //     0x7448f0: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x7448f4: mov             x1, x0
    // 0x7448f8: ldur            x0, [fp, #-0x20]
    // 0x7448fc: stur            x1, [fp, #-0x30]
    // 0x744900: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x744900: ldur            w2, [x0, #0x17]
    // 0x744904: DecompressPointer r2
    //     0x744904: add             x2, x2, HEAP, lsl #32
    // 0x744908: tbnz            w2, #4, #0x744918
    // 0x74490c: r5 = Instance_SizedBox
    //     0x74490c: add             x5, PP, #0x19, lsl #12  ; [pp+0x191b0] Obj!SizedBox@a1fa51
    //     0x744910: ldr             x5, [x5, #0x1b0]
    // 0x744914: b               #0x744920
    // 0x744918: r5 = Instance_Text
    //     0x744918: add             x5, PP, #0x14, lsl #12  ; [pp+0x147e0] Obj!Text@a1b1d1
    //     0x74491c: ldr             x5, [x5, #0x7e0]
    // 0x744920: ldur            x4, [fp, #-0x18]
    // 0x744924: ldur            x3, [fp, #-0x28]
    // 0x744928: ldur            x2, [fp, #-0x38]
    // 0x74492c: ldur            x0, [fp, #-8]
    // 0x744930: stur            x5, [fp, #-0x10]
    // 0x744934: r0 = ElevatedButton()
    //     0x744934: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x744938: mov             x3, x0
    // 0x74493c: ldur            x0, [fp, #-8]
    // 0x744940: stur            x3, [fp, #-0x20]
    // 0x744944: StoreField: r3->field_b = r0
    //     0x744944: stur            w0, [x3, #0xb]
    // 0x744948: ldur            x0, [fp, #-0x30]
    // 0x74494c: StoreField: r3->field_1b = r0
    //     0x74494c: stur            w0, [x3, #0x1b]
    // 0x744950: r0 = false
    //     0x744950: add             x0, NULL, #0x30  ; false
    // 0x744954: StoreField: r3->field_27 = r0
    //     0x744954: stur            w0, [x3, #0x27]
    // 0x744958: r1 = true
    //     0x744958: add             x1, NULL, #0x20  ; true
    // 0x74495c: StoreField: r3->field_2f = r1
    //     0x74495c: stur            w1, [x3, #0x2f]
    // 0x744960: ldur            x1, [fp, #-0x10]
    // 0x744964: StoreField: r3->field_37 = r1
    //     0x744964: stur            w1, [x3, #0x37]
    // 0x744968: r1 = Null
    //     0x744968: mov             x1, NULL
    // 0x74496c: r2 = 4
    //     0x74496c: mov             x2, #4
    // 0x744970: r0 = AllocateArray()
    //     0x744970: bl              #0x9280a0  ; AllocateArrayStub
    // 0x744974: mov             x2, x0
    // 0x744978: ldur            x0, [fp, #-0x38]
    // 0x74497c: stur            x2, [fp, #-8]
    // 0x744980: StoreField: r2->field_f = r0
    //     0x744980: stur            w0, [x2, #0xf]
    // 0x744984: ldur            x0, [fp, #-0x20]
    // 0x744988: StoreField: r2->field_13 = r0
    //     0x744988: stur            w0, [x2, #0x13]
    // 0x74498c: r1 = <Widget>
    //     0x74498c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x744990: r0 = AllocateGrowableArray()
    //     0x744990: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x744994: mov             x1, x0
    // 0x744998: ldur            x0, [fp, #-8]
    // 0x74499c: stur            x1, [fp, #-0x10]
    // 0x7449a0: StoreField: r1->field_f = r0
    //     0x7449a0: stur            w0, [x1, #0xf]
    // 0x7449a4: r0 = 4
    //     0x7449a4: mov             x0, #4
    // 0x7449a8: StoreField: r1->field_b = r0
    //     0x7449a8: stur            w0, [x1, #0xb]
    // 0x7449ac: r0 = AlertDialog()
    //     0x7449ac: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x7449b0: r1 = Instance_Text
    //     0x7449b0: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fa98] Obj!Text@a1d2f1
    //     0x7449b4: ldr             x1, [x1, #0xa98]
    // 0x7449b8: StoreField: r0->field_f = r1
    //     0x7449b8: stur            w1, [x0, #0xf]
    // 0x7449bc: ldur            x1, [fp, #-0x28]
    // 0x7449c0: StoreField: r0->field_1b = r1
    //     0x7449c0: stur            w1, [x0, #0x1b]
    // 0x7449c4: ldur            x1, [fp, #-0x10]
    // 0x7449c8: StoreField: r0->field_27 = r1
    //     0x7449c8: stur            w1, [x0, #0x27]
    // 0x7449cc: r1 = Instance_Color
    //     0x7449cc: add             x1, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x7449d0: ldr             x1, [x1, #0x1c0]
    // 0x7449d4: StoreField: r0->field_43 = r1
    //     0x7449d4: stur            w1, [x0, #0x43]
    // 0x7449d8: ldur            x1, [fp, #-0x18]
    // 0x7449dc: StoreField: r0->field_5f = r1
    //     0x7449dc: stur            w1, [x0, #0x5f]
    // 0x7449e0: r1 = false
    //     0x7449e0: add             x1, NULL, #0x30  ; false
    // 0x7449e4: StoreField: r0->field_6b = r1
    //     0x7449e4: stur            w1, [x0, #0x6b]
    // 0x7449e8: LeaveFrame
    //     0x7449e8: mov             SP, fp
    //     0x7449ec: ldp             fp, lr, [SP], #0x10
    // 0x7449f0: ret
    //     0x7449f0: ret             
    // 0x7449f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7449f4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7449f8: b               #0x744758
  }
  [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7449fc, size: 0x64
    // 0x7449fc: EnterFrame
    //     0x7449fc: stp             fp, lr, [SP, #-0x10]!
    //     0x744a00: mov             fp, SP
    // 0x744a04: AllocStack(0x8)
    //     0x744a04: sub             SP, SP, #8
    // 0x744a08: SetupParameters([dynamic _ /* r0 */])
    //     0x744a08: ldr             x0, [fp, #0x18]
    //     0x744a0c: ldur            w1, [x0, #0x17]
    //     0x744a10: add             x1, x1, HEAP, lsl #32
    //     0x744a14: stur            x1, [fp, #-8]
    // 0x744a18: r1 = 1
    //     0x744a18: mov             x1, #1
    // 0x744a1c: r0 = AllocateContext()
    //     0x744a1c: bl              #0x927010  ; AllocateContextStub
    // 0x744a20: mov             x1, x0
    // 0x744a24: ldur            x0, [fp, #-8]
    // 0x744a28: StoreField: r1->field_b = r0
    //     0x744a28: stur            w0, [x1, #0xb]
    // 0x744a2c: ldr             x0, [fp, #0x10]
    // 0x744a30: StoreField: r1->field_f = r0
    //     0x744a30: stur            w0, [x1, #0xf]
    // 0x744a34: mov             x2, x1
    // 0x744a38: r1 = Function '<anonymous closure>':.
    //     0x744a38: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fa78] AnonymousClosure: (0x744730), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::confirmDeleteUser (0x744a60)
    //     0x744a3c: ldr             x1, [x1, #0xa78]
    // 0x744a40: r0 = AllocateClosure()
    //     0x744a40: bl              #0x9273d4  ; AllocateClosureStub
    // 0x744a44: stur            x0, [fp, #-8]
    // 0x744a48: r0 = StatefulBuilder()
    //     0x744a48: bl              #0x6d2fbc  ; AllocateStatefulBuilderStub -> StatefulBuilder (size=0x10)
    // 0x744a4c: ldur            x1, [fp, #-8]
    // 0x744a50: StoreField: r0->field_b = r1
    //     0x744a50: stur            w1, [x0, #0xb]
    // 0x744a54: LeaveFrame
    //     0x744a54: mov             SP, fp
    //     0x744a58: ldp             fp, lr, [SP], #0x10
    // 0x744a5c: ret
    //     0x744a5c: ret             
  }
  _ confirmDeleteUser(/* No info */) {
    // ** addr: 0x744a60, size: 0x84
    // 0x744a60: EnterFrame
    //     0x744a60: stp             fp, lr, [SP, #-0x10]!
    //     0x744a64: mov             fp, SP
    // 0x744a68: AllocStack(0x30)
    //     0x744a68: sub             SP, SP, #0x30
    // 0x744a6c: SetupParameters(UsersTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x744a6c: stur            x1, [fp, #-8]
    //     0x744a70: stur            x2, [fp, #-0x10]
    //     0x744a74: stur            x3, [fp, #-0x18]
    // 0x744a78: CheckStackOverflow
    //     0x744a78: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x744a7c: cmp             SP, x16
    //     0x744a80: b.ls            #0x744adc
    // 0x744a84: r1 = 3
    //     0x744a84: mov             x1, #3
    // 0x744a88: r0 = AllocateContext()
    //     0x744a88: bl              #0x927010  ; AllocateContextStub
    // 0x744a8c: mov             x1, x0
    // 0x744a90: ldur            x0, [fp, #-8]
    // 0x744a94: StoreField: r1->field_f = r0
    //     0x744a94: stur            w0, [x1, #0xf]
    // 0x744a98: ldur            x0, [fp, #-0x18]
    // 0x744a9c: StoreField: r1->field_13 = r0
    //     0x744a9c: stur            w0, [x1, #0x13]
    // 0x744aa0: r0 = false
    //     0x744aa0: add             x0, NULL, #0x30  ; false
    // 0x744aa4: ArrayStore: r1[0] = r0  ; List_4
    //     0x744aa4: stur            w0, [x1, #0x17]
    // 0x744aa8: mov             x2, x1
    // 0x744aac: r1 = Function '<anonymous closure>':.
    //     0x744aac: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fa70] AnonymousClosure: (0x7449fc), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::confirmDeleteUser (0x744a60)
    //     0x744ab0: ldr             x1, [x1, #0xa70]
    // 0x744ab4: r0 = AllocateClosure()
    //     0x744ab4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x744ab8: stp             x0, NULL, [SP, #8]
    // 0x744abc: ldur            x16, [fp, #-0x10]
    // 0x744ac0: str             x16, [SP]
    // 0x744ac4: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x744ac4: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x744ac8: r0 = showDialog()
    //     0x744ac8: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x744acc: r0 = Null
    //     0x744acc: mov             x0, NULL
    // 0x744ad0: LeaveFrame
    //     0x744ad0: mov             SP, fp
    //     0x744ad4: ldp             fp, lr, [SP], #0x10
    // 0x744ad8: ret
    //     0x744ad8: ret             
    // 0x744adc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x744adc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x744ae0: b               #0x744a84
  }
  _ build(/* No info */) {
    // ** addr: 0x749458, size: 0x154
    // 0x749458: EnterFrame
    //     0x749458: stp             fp, lr, [SP, #-0x10]!
    //     0x74945c: mov             fp, SP
    // 0x749460: AllocStack(0x28)
    //     0x749460: sub             SP, SP, #0x28
    // 0x749464: SetupParameters(UsersTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x749464: stur            x1, [fp, #-8]
    //     0x749468: stur            x2, [fp, #-0x10]
    // 0x74946c: CheckStackOverflow
    //     0x74946c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x749470: cmp             SP, x16
    //     0x749474: b.ls            #0x74959c
    // 0x749478: r1 = 2
    //     0x749478: mov             x1, #2
    // 0x74947c: r0 = AllocateContext()
    //     0x74947c: bl              #0x927010  ; AllocateContextStub
    // 0x749480: mov             x3, x0
    // 0x749484: ldur            x2, [fp, #-8]
    // 0x749488: stur            x3, [fp, #-0x18]
    // 0x74948c: StoreField: r3->field_f = r2
    //     0x74948c: stur            w2, [x3, #0xf]
    // 0x749490: ldur            x0, [fp, #-0x10]
    // 0x749494: StoreField: r3->field_13 = r0
    //     0x749494: stur            w0, [x3, #0x13]
    // 0x749498: LoadField: r0 = r2->field_b
    //     0x749498: ldur            w0, [x2, #0xb]
    // 0x74949c: DecompressPointer r0
    //     0x74949c: add             x0, x0, HEAP, lsl #32
    // 0x7494a0: cmp             w0, NULL
    // 0x7494a4: b.eq            #0x7495a4
    // 0x7494a8: LoadField: r1 = r0->field_b
    //     0x7494a8: ldur            w1, [x0, #0xb]
    // 0x7494ac: DecompressPointer r1
    //     0x7494ac: add             x1, x1, HEAP, lsl #32
    // 0x7494b0: r0 = LoadClassIdInstr(r1)
    //     0x7494b0: ldur            x0, [x1, #-1]
    //     0x7494b4: ubfx            x0, x0, #0xc, #0x14
    // 0x7494b8: r0 = GDT[cid_x0 + 0xcda7]()
    //     0x7494b8: mov             x17, #0xcda7
    //     0x7494bc: add             lr, x0, x17
    //     0x7494c0: ldr             lr, [x21, lr, lsl #3]
    //     0x7494c4: blr             lr
    // 0x7494c8: tbnz            w0, #4, #0x749508
    // 0x7494cc: ldur            x2, [fp, #-0x18]
    // 0x7494d0: r1 = Function '<anonymous closure>':.
    //     0x7494d0: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fa08] AnonymousClosure: (0x749b14), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::build (0x749458)
    //     0x7494d4: ldr             x1, [x1, #0xa08]
    // 0x7494d8: r0 = AllocateClosure()
    //     0x7494d8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7494dc: mov             x5, x0
    // 0x7494e0: r1 = Instance_IconData
    //     0x7494e0: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fa10] Obj!IconData@a0a821
    //     0x7494e4: ldr             x1, [x1, #0xa10]
    // 0x7494e8: r2 = "Kullanıcı bulunamadı"
    //     0x7494e8: add             x2, PP, #0x1f, lsl #12  ; [pp+0x1fa18] "Kullanıcı bulunamadı"
    //     0x7494ec: ldr             x2, [x2, #0xa18]
    // 0x7494f0: r3 = "Kullanıcı Ekle"
    //     0x7494f0: add             x3, PP, #0x1f, lsl #12  ; [pp+0x1fa20] "Kullanıcı Ekle"
    //     0x7494f4: ldr             x3, [x3, #0xa20]
    // 0x7494f8: r0 = buildEmptyState()
    //     0x7494f8: bl              #0x7438ac  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildEmptyState
    // 0x7494fc: LeaveFrame
    //     0x7494fc: mov             SP, fp
    //     0x749500: ldp             fp, lr, [SP], #0x10
    // 0x749504: ret
    //     0x749504: ret             
    // 0x749508: ldur            x0, [fp, #-8]
    // 0x74950c: LoadField: r1 = r0->field_b
    //     0x74950c: ldur            w1, [x0, #0xb]
    // 0x749510: DecompressPointer r1
    //     0x749510: add             x1, x1, HEAP, lsl #32
    // 0x749514: cmp             w1, NULL
    // 0x749518: b.eq            #0x7495a8
    // 0x74951c: LoadField: r0 = r1->field_b
    //     0x74951c: ldur            w0, [x1, #0xb]
    // 0x749520: DecompressPointer r0
    //     0x749520: add             x0, x0, HEAP, lsl #32
    // 0x749524: r1 = LoadClassIdInstr(r0)
    //     0x749524: ldur            x1, [x0, #-1]
    //     0x749528: ubfx            x1, x1, #0xc, #0x14
    // 0x74952c: str             x0, [SP]
    // 0x749530: mov             x0, x1
    // 0x749534: r0 = GDT[cid_x0 + 0x879f]()
    //     0x749534: mov             x17, #0x879f
    //     0x749538: add             lr, x0, x17
    //     0x74953c: ldr             lr, [x21, lr, lsl #3]
    //     0x749540: blr             lr
    // 0x749544: r3 = LoadInt32Instr(r0)
    //     0x749544: sbfx            x3, x0, #1, #0x1f
    // 0x749548: ldur            x2, [fp, #-0x18]
    // 0x74954c: stur            x3, [fp, #-0x20]
    // 0x749550: r1 = Function '<anonymous closure>':.
    //     0x749550: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fa28] AnonymousClosure: (0x7495ac), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::build (0x749458)
    //     0x749554: ldr             x1, [x1, #0xa28]
    // 0x749558: r0 = AllocateClosure()
    //     0x749558: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74955c: stur            x0, [fp, #-8]
    // 0x749560: r0 = ListView()
    //     0x749560: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x749564: stur            x0, [fp, #-0x10]
    // 0x749568: r16 = Instance_EdgeInsets
    //     0x749568: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x74956c: ldr             x16, [x16, #0x240]
    // 0x749570: str             x16, [SP]
    // 0x749574: mov             x1, x0
    // 0x749578: ldur            x2, [fp, #-8]
    // 0x74957c: ldur            x3, [fp, #-0x20]
    // 0x749580: r4 = const [0, 0x4, 0x1, 0x3, padding, 0x3, null]
    //     0x749580: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e60] List(7) [0, 0x4, 0x1, 0x3, "padding", 0x3, Null]
    //     0x749584: ldr             x4, [x4, #0xe60]
    // 0x749588: r0 = ListView.builder()
    //     0x749588: bl              #0x6ce4a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.builder
    // 0x74958c: ldur            x0, [fp, #-0x10]
    // 0x749590: LeaveFrame
    //     0x749590: mov             SP, fp
    //     0x749594: ldp             fp, lr, [SP], #0x10
    // 0x749598: ret
    //     0x749598: ret             
    // 0x74959c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74959c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7495a0: b               #0x749478
    // 0x7495a4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7495a4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7495a8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7495a8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x7495ac, size: 0xa0
    // 0x7495ac: EnterFrame
    //     0x7495ac: stp             fp, lr, [SP, #-0x10]!
    //     0x7495b0: mov             fp, SP
    // 0x7495b4: AllocStack(0x18)
    //     0x7495b4: sub             SP, SP, #0x18
    // 0x7495b8: SetupParameters([dynamic _ /* r0 */])
    //     0x7495b8: ldr             x0, [fp, #0x20]
    //     0x7495bc: ldur            w1, [x0, #0x17]
    //     0x7495c0: add             x1, x1, HEAP, lsl #32
    //     0x7495c4: stur            x1, [fp, #-8]
    // 0x7495c8: CheckStackOverflow
    //     0x7495c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7495cc: cmp             SP, x16
    //     0x7495d0: b.ls            #0x749640
    // 0x7495d4: LoadField: r0 = r1->field_f
    //     0x7495d4: ldur            w0, [x1, #0xf]
    // 0x7495d8: DecompressPointer r0
    //     0x7495d8: add             x0, x0, HEAP, lsl #32
    // 0x7495dc: LoadField: r2 = r0->field_b
    //     0x7495dc: ldur            w2, [x0, #0xb]
    // 0x7495e0: DecompressPointer r2
    //     0x7495e0: add             x2, x2, HEAP, lsl #32
    // 0x7495e4: cmp             w2, NULL
    // 0x7495e8: b.eq            #0x749648
    // 0x7495ec: LoadField: r0 = r2->field_b
    //     0x7495ec: ldur            w0, [x2, #0xb]
    // 0x7495f0: DecompressPointer r0
    //     0x7495f0: add             x0, x0, HEAP, lsl #32
    // 0x7495f4: r2 = LoadClassIdInstr(r0)
    //     0x7495f4: ldur            x2, [x0, #-1]
    //     0x7495f8: ubfx            x2, x2, #0xc, #0x14
    // 0x7495fc: ldr             x16, [fp, #0x10]
    // 0x749600: stp             x16, x0, [SP]
    // 0x749604: mov             x0, x2
    // 0x749608: r0 = GDT[cid_x0 + -0xdfc]()
    //     0x749608: sub             lr, x0, #0xdfc
    //     0x74960c: ldr             lr, [x21, lr, lsl #3]
    //     0x749610: blr             lr
    // 0x749614: mov             x1, x0
    // 0x749618: ldur            x0, [fp, #-8]
    // 0x74961c: LoadField: r2 = r0->field_f
    //     0x74961c: ldur            w2, [x0, #0xf]
    // 0x749620: DecompressPointer r2
    //     0x749620: add             x2, x2, HEAP, lsl #32
    // 0x749624: mov             x3, x1
    // 0x749628: mov             x1, x2
    // 0x74962c: ldr             x2, [fp, #0x18]
    // 0x749630: r0 = _buildUserCard()
    //     0x749630: bl              #0x74964c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_buildUserCard
    // 0x749634: LeaveFrame
    //     0x749634: mov             SP, fp
    //     0x749638: ldp             fp, lr, [SP], #0x10
    // 0x74963c: ret
    //     0x74963c: ret             
    // 0x749640: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x749640: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x749644: b               #0x7495d4
    // 0x749648: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x749648: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _buildUserCard(/* No info */) {
    // ** addr: 0x74964c, size: 0x418
    // 0x74964c: EnterFrame
    //     0x74964c: stp             fp, lr, [SP, #-0x10]!
    //     0x749650: mov             fp, SP
    // 0x749654: AllocStack(0x50)
    //     0x749654: sub             SP, SP, #0x50
    // 0x749658: SetupParameters(UsersTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x749658: stur            x1, [fp, #-8]
    //     0x74965c: stur            x2, [fp, #-0x10]
    //     0x749660: stur            x3, [fp, #-0x18]
    // 0x749664: CheckStackOverflow
    //     0x749664: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x749668: cmp             SP, x16
    //     0x74966c: b.ls            #0x749a5c
    // 0x749670: r1 = 3
    //     0x749670: mov             x1, #3
    // 0x749674: r0 = AllocateContext()
    //     0x749674: bl              #0x927010  ; AllocateContextStub
    // 0x749678: mov             x2, x0
    // 0x74967c: ldur            x0, [fp, #-8]
    // 0x749680: stur            x2, [fp, #-0x20]
    // 0x749684: StoreField: r2->field_f = r0
    //     0x749684: stur            w0, [x2, #0xf]
    // 0x749688: ldur            x0, [fp, #-0x10]
    // 0x74968c: StoreField: r2->field_13 = r0
    //     0x74968c: stur            w0, [x2, #0x13]
    // 0x749690: ldur            x0, [fp, #-0x18]
    // 0x749694: ArrayStore: r2[0] = r0  ; List_4
    //     0x749694: stur            w0, [x2, #0x17]
    // 0x749698: r16 = 0.080000
    //     0x749698: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e30] 0.08
    //     0x74969c: ldr             x16, [x16, #0xe30]
    // 0x7496a0: str             x16, [SP]
    // 0x7496a4: r1 = Instance_Color
    //     0x7496a4: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7496a8: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7496a8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7496ac: ldr             x4, [x4, #0x198]
    // 0x7496b0: r0 = withValues()
    //     0x7496b0: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7496b4: stur            x0, [fp, #-8]
    // 0x7496b8: r0 = Radius()
    //     0x7496b8: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7496bc: d0 = 12.000000
    //     0x7496bc: fmov            d0, #12.00000000
    // 0x7496c0: stur            x0, [fp, #-0x10]
    // 0x7496c4: StoreField: r0->field_7 = d0
    //     0x7496c4: stur            d0, [x0, #7]
    // 0x7496c8: StoreField: r0->field_f = d0
    //     0x7496c8: stur            d0, [x0, #0xf]
    // 0x7496cc: r0 = BorderRadius()
    //     0x7496cc: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7496d0: mov             x1, x0
    // 0x7496d4: ldur            x0, [fp, #-0x10]
    // 0x7496d8: stur            x1, [fp, #-0x18]
    // 0x7496dc: StoreField: r1->field_7 = r0
    //     0x7496dc: stur            w0, [x1, #7]
    // 0x7496e0: StoreField: r1->field_b = r0
    //     0x7496e0: stur            w0, [x1, #0xb]
    // 0x7496e4: StoreField: r1->field_f = r0
    //     0x7496e4: stur            w0, [x1, #0xf]
    // 0x7496e8: StoreField: r1->field_13 = r0
    //     0x7496e8: stur            w0, [x1, #0x13]
    // 0x7496ec: r0 = BoxDecoration()
    //     0x7496ec: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7496f0: mov             x2, x0
    // 0x7496f4: ldur            x0, [fp, #-8]
    // 0x7496f8: stur            x2, [fp, #-0x10]
    // 0x7496fc: StoreField: r2->field_7 = r0
    //     0x7496fc: stur            w0, [x2, #7]
    // 0x749700: ldur            x0, [fp, #-0x18]
    // 0x749704: StoreField: r2->field_13 = r0
    //     0x749704: stur            w0, [x2, #0x13]
    // 0x749708: r0 = Instance_BoxShape
    //     0x749708: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x74970c: ldr             x0, [x0, #0x1c8]
    // 0x749710: StoreField: r2->field_23 = r0
    //     0x749710: stur            w0, [x2, #0x23]
    // 0x749714: r16 = 0.200000
    //     0x749714: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x749718: ldr             x16, [x16, #0x1f0]
    // 0x74971c: str             x16, [SP]
    // 0x749720: r1 = Instance_Color
    //     0x749720: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x749724: ldr             x1, [x1, #0xf30]
    // 0x749728: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x749728: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x74972c: ldr             x4, [x4, #0x198]
    // 0x749730: r0 = withValues()
    //     0x749730: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x749734: ldur            x2, [fp, #-0x20]
    // 0x749738: stur            x0, [fp, #-8]
    // 0x74973c: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x74973c: ldur            w1, [x2, #0x17]
    // 0x749740: DecompressPointer r1
    //     0x749740: add             x1, x1, HEAP, lsl #32
    // 0x749744: LoadField: r3 = r1->field_b
    //     0x749744: ldur            w3, [x1, #0xb]
    // 0x749748: DecompressPointer r3
    //     0x749748: add             x3, x3, HEAP, lsl #32
    // 0x74974c: LoadField: r1 = r3->field_7
    //     0x74974c: ldur            w1, [x3, #7]
    // 0x749750: cbz             w1, #0x749780
    // 0x749754: stp             xzr, x3, [SP]
    // 0x749758: r0 = []()
    //     0x749758: bl              #0x3ca950  ; [dart:core] _StringBase::[]
    // 0x74975c: r1 = LoadClassIdInstr(r0)
    //     0x74975c: ldur            x1, [x0, #-1]
    //     0x749760: ubfx            x1, x1, #0xc, #0x14
    // 0x749764: str             x0, [SP]
    // 0x749768: mov             x0, x1
    // 0x74976c: r0 = GDT[cid_x0 + -0xff6]()
    //     0x74976c: sub             lr, x0, #0xff6
    //     0x749770: ldr             lr, [x21, lr, lsl #3]
    //     0x749774: blr             lr
    // 0x749778: mov             x1, x0
    // 0x74977c: b               #0x749788
    // 0x749780: r1 = "K"
    //     0x749780: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c928] "K"
    //     0x749784: ldr             x1, [x1, #0x928]
    // 0x749788: ldur            x2, [fp, #-0x20]
    // 0x74978c: ldur            x0, [fp, #-8]
    // 0x749790: stur            x1, [fp, #-0x18]
    // 0x749794: r0 = Text()
    //     0x749794: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x749798: mov             x1, x0
    // 0x74979c: ldur            x0, [fp, #-0x18]
    // 0x7497a0: stur            x1, [fp, #-0x28]
    // 0x7497a4: StoreField: r1->field_b = r0
    //     0x7497a4: stur            w0, [x1, #0xb]
    // 0x7497a8: r0 = Instance_TextStyle
    //     0x7497a8: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fa30] Obj!TextStyle@a18b01
    //     0x7497ac: ldr             x0, [x0, #0xa30]
    // 0x7497b0: StoreField: r1->field_13 = r0
    //     0x7497b0: stur            w0, [x1, #0x13]
    // 0x7497b4: r0 = CircleAvatar()
    //     0x7497b4: bl              #0x6e4350  ; AllocateCircleAvatarStub -> CircleAvatar (size=0x2c)
    // 0x7497b8: mov             x1, x0
    // 0x7497bc: ldur            x0, [fp, #-0x28]
    // 0x7497c0: stur            x1, [fp, #-0x30]
    // 0x7497c4: StoreField: r1->field_b = r0
    //     0x7497c4: stur            w0, [x1, #0xb]
    // 0x7497c8: ldur            x0, [fp, #-8]
    // 0x7497cc: StoreField: r1->field_f = r0
    //     0x7497cc: stur            w0, [x1, #0xf]
    // 0x7497d0: ldur            x2, [fp, #-0x20]
    // 0x7497d4: ArrayLoad: r0 = r2[0]  ; List_4
    //     0x7497d4: ldur            w0, [x2, #0x17]
    // 0x7497d8: DecompressPointer r0
    //     0x7497d8: add             x0, x0, HEAP, lsl #32
    // 0x7497dc: stur            x0, [fp, #-0x18]
    // 0x7497e0: LoadField: r3 = r0->field_b
    //     0x7497e0: ldur            w3, [x0, #0xb]
    // 0x7497e4: DecompressPointer r3
    //     0x7497e4: add             x3, x3, HEAP, lsl #32
    // 0x7497e8: LoadField: r4 = r3->field_7
    //     0x7497e8: ldur            w4, [x3, #7]
    // 0x7497ec: cbnz            w4, #0x7497f8
    // 0x7497f0: r3 = "İsimsiz Kullanıcı"
    //     0x7497f0: add             x3, PP, #0x1f, lsl #12  ; [pp+0x1fa38] "İsimsiz Kullanıcı"
    //     0x7497f4: ldr             x3, [x3, #0xa38]
    // 0x7497f8: stur            x3, [fp, #-8]
    // 0x7497fc: r0 = Text()
    //     0x7497fc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x749800: mov             x3, x0
    // 0x749804: ldur            x0, [fp, #-8]
    // 0x749808: stur            x3, [fp, #-0x28]
    // 0x74980c: StoreField: r3->field_b = r0
    //     0x74980c: stur            w0, [x3, #0xb]
    // 0x749810: r0 = Instance_TextStyle
    //     0x749810: add             x0, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x749814: ldr             x0, [x0, #0x158]
    // 0x749818: StoreField: r3->field_13 = r0
    //     0x749818: stur            w0, [x3, #0x13]
    // 0x74981c: r1 = Null
    //     0x74981c: mov             x1, NULL
    // 0x749820: r2 = 8
    //     0x749820: mov             x2, #8
    // 0x749824: r0 = AllocateArray()
    //     0x749824: bl              #0x9280a0  ; AllocateArrayStub
    // 0x749828: r16 = "TC: "
    //     0x749828: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c170] "TC: "
    //     0x74982c: ldr             x16, [x16, #0x170]
    // 0x749830: StoreField: r0->field_f = r16
    //     0x749830: stur            w16, [x0, #0xf]
    // 0x749834: ldur            x1, [fp, #-0x18]
    // 0x749838: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x749838: ldur            w2, [x1, #0x17]
    // 0x74983c: DecompressPointer r2
    //     0x74983c: add             x2, x2, HEAP, lsl #32
    // 0x749840: LoadField: r3 = r2->field_7
    //     0x749840: ldur            w3, [x2, #7]
    // 0x749844: cbnz            w3, #0x749854
    // 0x749848: r4 = "Belirtilmemiş"
    //     0x749848: add             x4, PP, #0x1f, lsl #12  ; [pp+0x1fa40] "Belirtilmemiş"
    //     0x74984c: ldr             x4, [x4, #0xa40]
    // 0x749850: b               #0x749858
    // 0x749854: mov             x4, x2
    // 0x749858: ldur            x3, [fp, #-0x30]
    // 0x74985c: ldur            x2, [fp, #-0x28]
    // 0x749860: StoreField: r0->field_13 = r4
    //     0x749860: stur            w4, [x0, #0x13]
    // 0x749864: r16 = " • "
    //     0x749864: add             x16, PP, #0x13, lsl #12  ; [pp+0x139d8] " • "
    //     0x749868: ldr             x16, [x16, #0x9d8]
    // 0x74986c: ArrayStore: r0[0] = r16  ; List_4
    //     0x74986c: stur            w16, [x0, #0x17]
    // 0x749870: LoadField: r4 = r1->field_f
    //     0x749870: ldur            w4, [x1, #0xf]
    // 0x749874: DecompressPointer r4
    //     0x749874: add             x4, x4, HEAP, lsl #32
    // 0x749878: StoreField: r0->field_1b = r4
    //     0x749878: stur            w4, [x0, #0x1b]
    // 0x74987c: str             x0, [SP]
    // 0x749880: r0 = _interpolate()
    //     0x749880: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x749884: stur            x0, [fp, #-8]
    // 0x749888: r0 = Text()
    //     0x749888: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x74988c: mov             x3, x0
    // 0x749890: ldur            x0, [fp, #-8]
    // 0x749894: stur            x3, [fp, #-0x18]
    // 0x749898: StoreField: r3->field_b = r0
    //     0x749898: stur            w0, [x3, #0xb]
    // 0x74989c: r0 = Instance_TextStyle
    //     0x74989c: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fa48] Obj!TextStyle@a18a91
    //     0x7498a0: ldr             x0, [x0, #0xa48]
    // 0x7498a4: StoreField: r3->field_13 = r0
    //     0x7498a4: stur            w0, [x3, #0x13]
    // 0x7498a8: ldur            x2, [fp, #-0x20]
    // 0x7498ac: r1 = Function '<anonymous closure>':.
    //     0x7498ac: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fa50] AnonymousClosure: (0x749abc), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_buildUserCard (0x74964c)
    //     0x7498b0: ldr             x1, [x1, #0xa50]
    // 0x7498b4: r0 = AllocateClosure()
    //     0x7498b4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7498b8: stur            x0, [fp, #-8]
    // 0x7498bc: r0 = IconButton()
    //     0x7498bc: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x7498c0: mov             x3, x0
    // 0x7498c4: ldur            x0, [fp, #-8]
    // 0x7498c8: stur            x3, [fp, #-0x38]
    // 0x7498cc: StoreField: r3->field_3b = r0
    //     0x7498cc: stur            w0, [x3, #0x3b]
    // 0x7498d0: r0 = false
    //     0x7498d0: add             x0, NULL, #0x30  ; false
    // 0x7498d4: StoreField: r3->field_4f = r0
    //     0x7498d4: stur            w0, [x3, #0x4f]
    // 0x7498d8: r1 = Instance_Icon
    //     0x7498d8: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fa58] Obj!Icon@a1ed71
    //     0x7498dc: ldr             x1, [x1, #0xa58]
    // 0x7498e0: StoreField: r3->field_1f = r1
    //     0x7498e0: stur            w1, [x3, #0x1f]
    // 0x7498e4: r4 = Instance__IconButtonVariant
    //     0x7498e4: add             x4, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x7498e8: ldr             x4, [x4, #0x1b8]
    // 0x7498ec: StoreField: r3->field_6f = r4
    //     0x7498ec: stur            w4, [x3, #0x6f]
    // 0x7498f0: ldur            x2, [fp, #-0x20]
    // 0x7498f4: r1 = Function '<anonymous closure>':.
    //     0x7498f4: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fa60] AnonymousClosure: (0x749a64), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_buildUserCard (0x74964c)
    //     0x7498f8: ldr             x1, [x1, #0xa60]
    // 0x7498fc: r0 = AllocateClosure()
    //     0x7498fc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x749900: stur            x0, [fp, #-8]
    // 0x749904: r0 = IconButton()
    //     0x749904: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x749908: mov             x3, x0
    // 0x74990c: ldur            x0, [fp, #-8]
    // 0x749910: stur            x3, [fp, #-0x20]
    // 0x749914: StoreField: r3->field_3b = r0
    //     0x749914: stur            w0, [x3, #0x3b]
    // 0x749918: r0 = false
    //     0x749918: add             x0, NULL, #0x30  ; false
    // 0x74991c: StoreField: r3->field_4f = r0
    //     0x74991c: stur            w0, [x3, #0x4f]
    // 0x749920: r1 = Instance_Icon
    //     0x749920: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fa68] Obj!Icon@a1e471
    //     0x749924: ldr             x1, [x1, #0xa68]
    // 0x749928: StoreField: r3->field_1f = r1
    //     0x749928: stur            w1, [x3, #0x1f]
    // 0x74992c: r1 = Instance__IconButtonVariant
    //     0x74992c: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x749930: ldr             x1, [x1, #0x1b8]
    // 0x749934: StoreField: r3->field_6f = r1
    //     0x749934: stur            w1, [x3, #0x6f]
    // 0x749938: r1 = Null
    //     0x749938: mov             x1, NULL
    // 0x74993c: r2 = 4
    //     0x74993c: mov             x2, #4
    // 0x749940: r0 = AllocateArray()
    //     0x749940: bl              #0x9280a0  ; AllocateArrayStub
    // 0x749944: mov             x2, x0
    // 0x749948: ldur            x0, [fp, #-0x38]
    // 0x74994c: stur            x2, [fp, #-8]
    // 0x749950: StoreField: r2->field_f = r0
    //     0x749950: stur            w0, [x2, #0xf]
    // 0x749954: ldur            x0, [fp, #-0x20]
    // 0x749958: StoreField: r2->field_13 = r0
    //     0x749958: stur            w0, [x2, #0x13]
    // 0x74995c: r1 = <Widget>
    //     0x74995c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x749960: r0 = AllocateGrowableArray()
    //     0x749960: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x749964: mov             x1, x0
    // 0x749968: ldur            x0, [fp, #-8]
    // 0x74996c: stur            x1, [fp, #-0x20]
    // 0x749970: StoreField: r1->field_f = r0
    //     0x749970: stur            w0, [x1, #0xf]
    // 0x749974: r0 = 4
    //     0x749974: mov             x0, #4
    // 0x749978: StoreField: r1->field_b = r0
    //     0x749978: stur            w0, [x1, #0xb]
    // 0x74997c: r0 = Row()
    //     0x74997c: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x749980: mov             x1, x0
    // 0x749984: r0 = Instance_Axis
    //     0x749984: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x749988: stur            x1, [fp, #-8]
    // 0x74998c: StoreField: r1->field_f = r0
    //     0x74998c: stur            w0, [x1, #0xf]
    // 0x749990: r0 = Instance_MainAxisAlignment
    //     0x749990: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x749994: ldr             x0, [x0, #0x230]
    // 0x749998: StoreField: r1->field_13 = r0
    //     0x749998: stur            w0, [x1, #0x13]
    // 0x74999c: r0 = Instance_MainAxisSize
    //     0x74999c: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x7499a0: ldr             x0, [x0, #0xb60]
    // 0x7499a4: ArrayStore: r1[0] = r0  ; List_4
    //     0x7499a4: stur            w0, [x1, #0x17]
    // 0x7499a8: r0 = Instance_CrossAxisAlignment
    //     0x7499a8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7499ac: ldr             x0, [x0, #0x338]
    // 0x7499b0: StoreField: r1->field_1b = r0
    //     0x7499b0: stur            w0, [x1, #0x1b]
    // 0x7499b4: r0 = Instance_VerticalDirection
    //     0x7499b4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7499b8: ldr             x0, [x0, #0x340]
    // 0x7499bc: StoreField: r1->field_23 = r0
    //     0x7499bc: stur            w0, [x1, #0x23]
    // 0x7499c0: r0 = Instance_Clip
    //     0x7499c0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7499c4: ldr             x0, [x0, #0x348]
    // 0x7499c8: StoreField: r1->field_2b = r0
    //     0x7499c8: stur            w0, [x1, #0x2b]
    // 0x7499cc: StoreField: r1->field_2f = rZR
    //     0x7499cc: stur            xzr, [x1, #0x2f]
    // 0x7499d0: ldur            x0, [fp, #-0x20]
    // 0x7499d4: StoreField: r1->field_b = r0
    //     0x7499d4: stur            w0, [x1, #0xb]
    // 0x7499d8: r0 = ListTile()
    //     0x7499d8: bl              #0x680240  ; AllocateListTileStub -> ListTile (size=0x9c)
    // 0x7499dc: mov             x1, x0
    // 0x7499e0: ldur            x0, [fp, #-0x30]
    // 0x7499e4: stur            x1, [fp, #-0x20]
    // 0x7499e8: StoreField: r1->field_b = r0
    //     0x7499e8: stur            w0, [x1, #0xb]
    // 0x7499ec: ldur            x0, [fp, #-0x28]
    // 0x7499f0: StoreField: r1->field_f = r0
    //     0x7499f0: stur            w0, [x1, #0xf]
    // 0x7499f4: ldur            x0, [fp, #-0x18]
    // 0x7499f8: StoreField: r1->field_13 = r0
    //     0x7499f8: stur            w0, [x1, #0x13]
    // 0x7499fc: ldur            x0, [fp, #-8]
    // 0x749a00: ArrayStore: r1[0] = r0  ; List_4
    //     0x749a00: stur            w0, [x1, #0x17]
    // 0x749a04: r0 = true
    //     0x749a04: add             x0, NULL, #0x20  ; true
    // 0x749a08: StoreField: r1->field_4b = r0
    //     0x749a08: stur            w0, [x1, #0x4b]
    // 0x749a0c: r2 = false
    //     0x749a0c: add             x2, NULL, #0x30  ; false
    // 0x749a10: StoreField: r1->field_5f = r2
    //     0x749a10: stur            w2, [x1, #0x5f]
    // 0x749a14: StoreField: r1->field_73 = r2
    //     0x749a14: stur            w2, [x1, #0x73]
    // 0x749a18: StoreField: r1->field_93 = r0
    //     0x749a18: stur            w0, [x1, #0x93]
    // 0x749a1c: r0 = Container()
    //     0x749a1c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x749a20: stur            x0, [fp, #-8]
    // 0x749a24: r16 = Instance_EdgeInsets
    //     0x749a24: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f18] Obj!EdgeInsets@a0c261
    //     0x749a28: ldr             x16, [x16, #0xf18]
    // 0x749a2c: ldur            lr, [fp, #-0x10]
    // 0x749a30: stp             lr, x16, [SP, #8]
    // 0x749a34: ldur            x16, [fp, #-0x20]
    // 0x749a38: str             x16, [SP]
    // 0x749a3c: mov             x1, x0
    // 0x749a40: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, margin, 0x1, null]
    //     0x749a40: add             x4, PP, #0x12, lsl #12  ; [pp+0x121c0] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "margin", 0x1, Null]
    //     0x749a44: ldr             x4, [x4, #0x1c0]
    // 0x749a48: r0 = Container()
    //     0x749a48: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x749a4c: ldur            x0, [fp, #-8]
    // 0x749a50: LeaveFrame
    //     0x749a50: mov             SP, fp
    //     0x749a54: ldp             fp, lr, [SP], #0x10
    // 0x749a58: ret
    //     0x749a58: ret             
    // 0x749a5c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x749a5c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x749a60: b               #0x749670
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x749a64, size: 0x58
    // 0x749a64: EnterFrame
    //     0x749a64: stp             fp, lr, [SP, #-0x10]!
    //     0x749a68: mov             fp, SP
    // 0x749a6c: ldr             x0, [fp, #0x10]
    // 0x749a70: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x749a70: ldur            w1, [x0, #0x17]
    // 0x749a74: DecompressPointer r1
    //     0x749a74: add             x1, x1, HEAP, lsl #32
    // 0x749a78: CheckStackOverflow
    //     0x749a78: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x749a7c: cmp             SP, x16
    //     0x749a80: b.ls            #0x749ab4
    // 0x749a84: LoadField: r0 = r1->field_f
    //     0x749a84: ldur            w0, [x1, #0xf]
    // 0x749a88: DecompressPointer r0
    //     0x749a88: add             x0, x0, HEAP, lsl #32
    // 0x749a8c: LoadField: r2 = r1->field_13
    //     0x749a8c: ldur            w2, [x1, #0x13]
    // 0x749a90: DecompressPointer r2
    //     0x749a90: add             x2, x2, HEAP, lsl #32
    // 0x749a94: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x749a94: ldur            w3, [x1, #0x17]
    // 0x749a98: DecompressPointer r3
    //     0x749a98: add             x3, x3, HEAP, lsl #32
    // 0x749a9c: mov             x1, x0
    // 0x749aa0: r0 = confirmDeleteUser()
    //     0x749aa0: bl              #0x744a60  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::confirmDeleteUser
    // 0x749aa4: r0 = Null
    //     0x749aa4: mov             x0, NULL
    // 0x749aa8: LeaveFrame
    //     0x749aa8: mov             SP, fp
    //     0x749aac: ldp             fp, lr, [SP], #0x10
    // 0x749ab0: ret
    //     0x749ab0: ret             
    // 0x749ab4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x749ab4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x749ab8: b               #0x749a84
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x749abc, size: 0x58
    // 0x749abc: EnterFrame
    //     0x749abc: stp             fp, lr, [SP, #-0x10]!
    //     0x749ac0: mov             fp, SP
    // 0x749ac4: ldr             x0, [fp, #0x10]
    // 0x749ac8: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x749ac8: ldur            w1, [x0, #0x17]
    // 0x749acc: DecompressPointer r1
    //     0x749acc: add             x1, x1, HEAP, lsl #32
    // 0x749ad0: CheckStackOverflow
    //     0x749ad0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x749ad4: cmp             SP, x16
    //     0x749ad8: b.ls            #0x749b0c
    // 0x749adc: LoadField: r0 = r1->field_f
    //     0x749adc: ldur            w0, [x1, #0xf]
    // 0x749ae0: DecompressPointer r0
    //     0x749ae0: add             x0, x0, HEAP, lsl #32
    // 0x749ae4: LoadField: r2 = r1->field_13
    //     0x749ae4: ldur            w2, [x1, #0x13]
    // 0x749ae8: DecompressPointer r2
    //     0x749ae8: add             x2, x2, HEAP, lsl #32
    // 0x749aec: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x749aec: ldur            w3, [x1, #0x17]
    // 0x749af0: DecompressPointer r3
    //     0x749af0: add             x3, x3, HEAP, lsl #32
    // 0x749af4: mov             x1, x0
    // 0x749af8: r0 = showUserDialog()
    //     0x749af8: bl              #0x73cfd4  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog
    // 0x749afc: r0 = Null
    //     0x749afc: mov             x0, NULL
    // 0x749b00: LeaveFrame
    //     0x749b00: mov             SP, fp
    //     0x749b04: ldp             fp, lr, [SP], #0x10
    // 0x749b08: ret
    //     0x749b08: ret             
    // 0x749b0c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x749b0c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x749b10: b               #0x749adc
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x749b14, size: 0x54
    // 0x749b14: EnterFrame
    //     0x749b14: stp             fp, lr, [SP, #-0x10]!
    //     0x749b18: mov             fp, SP
    // 0x749b1c: ldr             x0, [fp, #0x10]
    // 0x749b20: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x749b20: ldur            w1, [x0, #0x17]
    // 0x749b24: DecompressPointer r1
    //     0x749b24: add             x1, x1, HEAP, lsl #32
    // 0x749b28: CheckStackOverflow
    //     0x749b28: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x749b2c: cmp             SP, x16
    //     0x749b30: b.ls            #0x749b60
    // 0x749b34: LoadField: r0 = r1->field_f
    //     0x749b34: ldur            w0, [x1, #0xf]
    // 0x749b38: DecompressPointer r0
    //     0x749b38: add             x0, x0, HEAP, lsl #32
    // 0x749b3c: LoadField: r2 = r1->field_13
    //     0x749b3c: ldur            w2, [x1, #0x13]
    // 0x749b40: DecompressPointer r2
    //     0x749b40: add             x2, x2, HEAP, lsl #32
    // 0x749b44: mov             x1, x0
    // 0x749b48: r3 = Null
    //     0x749b48: mov             x3, NULL
    // 0x749b4c: r0 = showUserDialog()
    //     0x749b4c: bl              #0x73cfd4  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog
    // 0x749b50: r0 = Null
    //     0x749b50: mov             x0, NULL
    // 0x749b54: LeaveFrame
    //     0x749b54: mov             SP, fp
    //     0x749b58: ldp             fp, lr, [SP], #0x10
    // 0x749b5c: ret
    //     0x749b5c: ret             
    // 0x749b60: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x749b60: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x749b64: b               #0x749b34
  }
}

// class id: 3185, size: 0x28, field offset: 0xc
//   const constructor, 
class UsersTab extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bf6dc, size: 0x24
    // 0x7bf6dc: EnterFrame
    //     0x7bf6dc: stp             fp, lr, [SP, #-0x10]!
    //     0x7bf6e0: mov             fp, SP
    // 0x7bf6e4: mov             x0, x1
    // 0x7bf6e8: r1 = <UsersTab>
    //     0x7bf6e8: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bb18] TypeArguments: <UsersTab>
    //     0x7bf6ec: ldr             x1, [x1, #0xb18]
    // 0x7bf6f0: r0 = UsersTabState()
    //     0x7bf6f0: bl              #0x7bf700  ; AllocateUsersTabStateStub -> UsersTabState (size=0x14)
    // 0x7bf6f4: LeaveFrame
    //     0x7bf6f4: mov             SP, fp
    //     0x7bf6f8: ldp             fp, lr, [SP], #0x10
    // 0x7bf6fc: ret
    //     0x7bf6fc: ret             
  }
}

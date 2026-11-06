// lib: , url: package:umrem_demo/features/admin/widgets/events/edit_dialog.dart

// class id: 1049548, size: 0x8
class :: {

  static _ showAddEditDialog(/* No info */) {
    // ** addr: 0x6d2cc8, size: 0x2b4
    // 0x6d2cc8: EnterFrame
    //     0x6d2cc8: stp             fp, lr, [SP, #-0x10]!
    //     0x6d2ccc: mov             fp, SP
    // 0x6d2cd0: AllocStack(0x40)
    //     0x6d2cd0: sub             SP, SP, #0x40
    // 0x6d2cd4: SetupParameters(dynamic _ /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */, dynamic _ /* r3 => r3, fp-0x20 */, {dynamic agencyId = Null /* r0, fp-0x8 */})
    //     0x6d2cd4: stur            x1, [fp, #-0x10]
    //     0x6d2cd8: stur            x2, [fp, #-0x18]
    //     0x6d2cdc: stur            x3, [fp, #-0x20]
    //     0x6d2ce0: ldur            w0, [x4, #0x13]
    //     0x6d2ce4: ldur            w5, [x4, #0x1f]
    //     0x6d2ce8: add             x5, x5, HEAP, lsl #32
    //     0x6d2cec: add             x16, PP, #0x14, lsl #12  ; [pp+0x14fe8] "agencyId"
    //     0x6d2cf0: ldr             x16, [x16, #0xfe8]
    //     0x6d2cf4: cmp             w5, w16
    //     0x6d2cf8: b.ne            #0x6d2d14
    //     0x6d2cfc: ldur            w5, [x4, #0x23]
    //     0x6d2d00: add             x5, x5, HEAP, lsl #32
    //     0x6d2d04: sub             w4, w0, w5
    //     0x6d2d08: add             x0, fp, w4, sxtw #2
    //     0x6d2d0c: ldr             x0, [x0, #8]
    //     0x6d2d10: b               #0x6d2d18
    //     0x6d2d14: mov             x0, NULL
    //     0x6d2d18: stur            x0, [fp, #-8]
    // 0x6d2d1c: CheckStackOverflow
    //     0x6d2d1c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d2d20: cmp             SP, x16
    //     0x6d2d24: b.ls            #0x6d2f74
    // 0x6d2d28: r1 = 7
    //     0x6d2d28: mov             x1, #7
    // 0x6d2d2c: r0 = AllocateContext()
    //     0x6d2d2c: bl              #0x927010  ; AllocateContextStub
    // 0x6d2d30: mov             x2, x0
    // 0x6d2d34: ldur            x0, [fp, #-0x10]
    // 0x6d2d38: stur            x2, [fp, #-0x28]
    // 0x6d2d3c: StoreField: r2->field_f = r0
    //     0x6d2d3c: stur            w0, [x2, #0xf]
    // 0x6d2d40: ldur            x1, [fp, #-0x20]
    // 0x6d2d44: StoreField: r2->field_13 = r1
    //     0x6d2d44: stur            w1, [x2, #0x13]
    // 0x6d2d48: ldur            x1, [fp, #-8]
    // 0x6d2d4c: ArrayStore: r2[0] = r1  ; List_4
    //     0x6d2d4c: stur            w1, [x2, #0x17]
    // 0x6d2d50: cmp             w0, NULL
    // 0x6d2d54: b.ne            #0x6d2d60
    // 0x6d2d58: r0 = Null
    //     0x6d2d58: mov             x0, NULL
    // 0x6d2d5c: b               #0x6d2d6c
    // 0x6d2d60: LoadField: r1 = r0->field_b
    //     0x6d2d60: ldur            w1, [x0, #0xb]
    // 0x6d2d64: DecompressPointer r1
    //     0x6d2d64: add             x1, x1, HEAP, lsl #32
    // 0x6d2d68: mov             x0, x1
    // 0x6d2d6c: cmp             w0, NULL
    // 0x6d2d70: b.ne            #0x6d2d78
    // 0x6d2d74: r0 = ""
    //     0x6d2d74: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6d2d78: stur            x0, [fp, #-8]
    // 0x6d2d7c: r1 = <TextEditingValue>
    //     0x6d2d7c: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6d2d80: r0 = TextEditingController()
    //     0x6d2d80: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6d2d84: stur            x0, [fp, #-0x10]
    // 0x6d2d88: ldur            x16, [fp, #-8]
    // 0x6d2d8c: str             x16, [SP]
    // 0x6d2d90: mov             x1, x0
    // 0x6d2d94: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6d2d94: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6d2d98: ldr             x4, [x4, #0xa20]
    // 0x6d2d9c: r0 = TextEditingController()
    //     0x6d2d9c: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6d2da0: ldur            x0, [fp, #-0x10]
    // 0x6d2da4: ldur            x2, [fp, #-0x28]
    // 0x6d2da8: StoreField: r2->field_1b = r0
    //     0x6d2da8: stur            w0, [x2, #0x1b]
    //     0x6d2dac: ldurb           w16, [x2, #-1]
    //     0x6d2db0: ldurb           w17, [x0, #-1]
    //     0x6d2db4: and             x16, x17, x16, lsr #2
    //     0x6d2db8: tst             x16, HEAP, lsr #32
    //     0x6d2dbc: b.eq            #0x6d2dc4
    //     0x6d2dc0: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6d2dc4: LoadField: r0 = r2->field_f
    //     0x6d2dc4: ldur            w0, [x2, #0xf]
    // 0x6d2dc8: DecompressPointer r0
    //     0x6d2dc8: add             x0, x0, HEAP, lsl #32
    // 0x6d2dcc: cmp             w0, NULL
    // 0x6d2dd0: b.ne            #0x6d2ddc
    // 0x6d2dd4: r0 = Null
    //     0x6d2dd4: mov             x0, NULL
    // 0x6d2dd8: b               #0x6d2de8
    // 0x6d2ddc: LoadField: r1 = r0->field_f
    //     0x6d2ddc: ldur            w1, [x0, #0xf]
    // 0x6d2de0: DecompressPointer r1
    //     0x6d2de0: add             x1, x1, HEAP, lsl #32
    // 0x6d2de4: mov             x0, x1
    // 0x6d2de8: cmp             w0, NULL
    // 0x6d2dec: b.ne            #0x6d2df4
    // 0x6d2df0: r0 = ""
    //     0x6d2df0: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6d2df4: stur            x0, [fp, #-8]
    // 0x6d2df8: r1 = <TextEditingValue>
    //     0x6d2df8: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6d2dfc: r0 = TextEditingController()
    //     0x6d2dfc: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6d2e00: stur            x0, [fp, #-0x10]
    // 0x6d2e04: ldur            x16, [fp, #-8]
    // 0x6d2e08: str             x16, [SP]
    // 0x6d2e0c: mov             x1, x0
    // 0x6d2e10: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6d2e10: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6d2e14: ldr             x4, [x4, #0xa20]
    // 0x6d2e18: r0 = TextEditingController()
    //     0x6d2e18: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6d2e1c: ldur            x0, [fp, #-0x10]
    // 0x6d2e20: ldur            x2, [fp, #-0x28]
    // 0x6d2e24: StoreField: r2->field_1f = r0
    //     0x6d2e24: stur            w0, [x2, #0x1f]
    //     0x6d2e28: ldurb           w16, [x2, #-1]
    //     0x6d2e2c: ldurb           w17, [x0, #-1]
    //     0x6d2e30: and             x16, x17, x16, lsr #2
    //     0x6d2e34: tst             x16, HEAP, lsr #32
    //     0x6d2e38: b.eq            #0x6d2e40
    //     0x6d2e3c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6d2e40: LoadField: r0 = r2->field_f
    //     0x6d2e40: ldur            w0, [x2, #0xf]
    // 0x6d2e44: DecompressPointer r0
    //     0x6d2e44: add             x0, x0, HEAP, lsl #32
    // 0x6d2e48: cmp             w0, NULL
    // 0x6d2e4c: b.ne            #0x6d2e58
    // 0x6d2e50: r0 = Null
    //     0x6d2e50: mov             x0, NULL
    // 0x6d2e54: b               #0x6d2e64
    // 0x6d2e58: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6d2e58: ldur            w1, [x0, #0x17]
    // 0x6d2e5c: DecompressPointer r1
    //     0x6d2e5c: add             x1, x1, HEAP, lsl #32
    // 0x6d2e60: mov             x0, x1
    // 0x6d2e64: cmp             w0, NULL
    // 0x6d2e68: b.ne            #0x6d2e74
    // 0x6d2e6c: r0 = "09:00"
    //     0x6d2e6c: add             x0, PP, #0x15, lsl #12  ; [pp+0x15048] "09:00"
    //     0x6d2e70: ldr             x0, [x0, #0x48]
    // 0x6d2e74: stur            x0, [fp, #-8]
    // 0x6d2e78: r1 = <TextEditingValue>
    //     0x6d2e78: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6d2e7c: r0 = TextEditingController()
    //     0x6d2e7c: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6d2e80: stur            x0, [fp, #-0x10]
    // 0x6d2e84: ldur            x16, [fp, #-8]
    // 0x6d2e88: str             x16, [SP]
    // 0x6d2e8c: mov             x1, x0
    // 0x6d2e90: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6d2e90: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6d2e94: ldr             x4, [x4, #0xa20]
    // 0x6d2e98: r0 = TextEditingController()
    //     0x6d2e98: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6d2e9c: ldur            x0, [fp, #-0x10]
    // 0x6d2ea0: ldur            x2, [fp, #-0x28]
    // 0x6d2ea4: StoreField: r2->field_23 = r0
    //     0x6d2ea4: stur            w0, [x2, #0x23]
    //     0x6d2ea8: ldurb           w16, [x2, #-1]
    //     0x6d2eac: ldurb           w17, [x0, #-1]
    //     0x6d2eb0: and             x16, x17, x16, lsr #2
    //     0x6d2eb4: tst             x16, HEAP, lsr #32
    //     0x6d2eb8: b.eq            #0x6d2ec0
    //     0x6d2ebc: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6d2ec0: LoadField: r0 = r2->field_f
    //     0x6d2ec0: ldur            w0, [x2, #0xf]
    // 0x6d2ec4: DecompressPointer r0
    //     0x6d2ec4: add             x0, x0, HEAP, lsl #32
    // 0x6d2ec8: cmp             w0, NULL
    // 0x6d2ecc: b.ne            #0x6d2ed8
    // 0x6d2ed0: r0 = Null
    //     0x6d2ed0: mov             x0, NULL
    // 0x6d2ed4: b               #0x6d2ef0
    // 0x6d2ed8: LoadField: r3 = r0->field_1b
    //     0x6d2ed8: ldur            x3, [x0, #0x1b]
    // 0x6d2edc: r0 = BoxInt64Instr(r3)
    //     0x6d2edc: sbfiz           x0, x3, #1, #0x1f
    //     0x6d2ee0: cmp             x3, x0, asr #1
    //     0x6d2ee4: b.eq            #0x6d2ef0
    //     0x6d2ee8: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6d2eec: stur            x3, [x0, #7]
    // 0x6d2ef0: cmp             w0, NULL
    // 0x6d2ef4: b.ne            #0x6d2f00
    // 0x6d2ef8: r3 = 60
    //     0x6d2ef8: mov             x3, #0x3c
    // 0x6d2efc: b               #0x6d2f10
    // 0x6d2f00: r1 = LoadInt32Instr(r0)
    //     0x6d2f00: sbfx            x1, x0, #1, #0x1f
    //     0x6d2f04: tbz             w0, #0, #0x6d2f0c
    //     0x6d2f08: ldur            x1, [x0, #7]
    // 0x6d2f0c: mov             x3, x1
    // 0x6d2f10: r0 = BoxInt64Instr(r3)
    //     0x6d2f10: sbfiz           x0, x3, #1, #0x1f
    //     0x6d2f14: cmp             x3, x0, asr #1
    //     0x6d2f18: b.eq            #0x6d2f24
    //     0x6d2f1c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6d2f20: stur            x3, [x0, #7]
    // 0x6d2f24: StoreField: r2->field_27 = r0
    //     0x6d2f24: stur            w0, [x2, #0x27]
    //     0x6d2f28: tbz             w0, #0, #0x6d2f44
    //     0x6d2f2c: ldurb           w16, [x2, #-1]
    //     0x6d2f30: ldurb           w17, [x0, #-1]
    //     0x6d2f34: and             x16, x17, x16, lsr #2
    //     0x6d2f38: tst             x16, HEAP, lsr #32
    //     0x6d2f3c: b.eq            #0x6d2f44
    //     0x6d2f40: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6d2f44: r1 = Function '<anonymous closure>': static.
    //     0x6d2f44: add             x1, PP, #0x19, lsl #12  ; [pp+0x19998] AnonymousClosure: static (0x6d2f7c), in [package:umrem_demo/features/admin/widgets/events/edit_dialog.dart] ::showAddEditDialog (0x6d2cc8)
    //     0x6d2f48: ldr             x1, [x1, #0x998]
    // 0x6d2f4c: r0 = AllocateClosure()
    //     0x6d2f4c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d2f50: stp             x0, NULL, [SP, #8]
    // 0x6d2f54: ldur            x16, [fp, #-0x18]
    // 0x6d2f58: str             x16, [SP]
    // 0x6d2f5c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6d2f5c: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6d2f60: r0 = showDialog()
    //     0x6d2f60: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x6d2f64: r0 = Null
    //     0x6d2f64: mov             x0, NULL
    // 0x6d2f68: LeaveFrame
    //     0x6d2f68: mov             SP, fp
    //     0x6d2f6c: ldp             fp, lr, [SP], #0x10
    // 0x6d2f70: ret
    //     0x6d2f70: ret             
    // 0x6d2f74: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d2f74: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d2f78: b               #0x6d2d28
  }
  [closure] static StatefulBuilder <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6d2f7c, size: 0x40
    // 0x6d2f7c: EnterFrame
    //     0x6d2f7c: stp             fp, lr, [SP, #-0x10]!
    //     0x6d2f80: mov             fp, SP
    // 0x6d2f84: AllocStack(0x8)
    //     0x6d2f84: sub             SP, SP, #8
    // 0x6d2f88: SetupParameters([dynamic _ /* r0 */])
    //     0x6d2f88: ldr             x0, [fp, #0x18]
    //     0x6d2f8c: ldur            w2, [x0, #0x17]
    //     0x6d2f90: add             x2, x2, HEAP, lsl #32
    // 0x6d2f94: r1 = Function '<anonymous closure>': static.
    //     0x6d2f94: add             x1, PP, #0x19, lsl #12  ; [pp+0x199a0] AnonymousClosure: static (0x6d2fc8), in [package:umrem_demo/features/admin/widgets/events/edit_dialog.dart] ::showAddEditDialog (0x6d2cc8)
    //     0x6d2f98: ldr             x1, [x1, #0x9a0]
    // 0x6d2f9c: r0 = AllocateClosure()
    //     0x6d2f9c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d2fa0: stur            x0, [fp, #-8]
    // 0x6d2fa4: r0 = StatefulBuilder()
    //     0x6d2fa4: bl              #0x6d2fbc  ; AllocateStatefulBuilderStub -> StatefulBuilder (size=0x10)
    // 0x6d2fa8: ldur            x1, [fp, #-8]
    // 0x6d2fac: StoreField: r0->field_b = r1
    //     0x6d2fac: stur            w1, [x0, #0xb]
    // 0x6d2fb0: LeaveFrame
    //     0x6d2fb0: mov             SP, fp
    //     0x6d2fb4: ldp             fp, lr, [SP], #0x10
    // 0x6d2fb8: ret
    //     0x6d2fb8: ret             
  }
  [closure] static AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void) {
    // ** addr: 0x6d2fc8, size: 0x83c
    // 0x6d2fc8: EnterFrame
    //     0x6d2fc8: stp             fp, lr, [SP, #-0x10]!
    //     0x6d2fcc: mov             fp, SP
    // 0x6d2fd0: AllocStack(0x48)
    //     0x6d2fd0: sub             SP, SP, #0x48
    // 0x6d2fd4: SetupParameters([dynamic _ /* r0 */])
    //     0x6d2fd4: ldr             x0, [fp, #0x20]
    //     0x6d2fd8: ldur            w1, [x0, #0x17]
    //     0x6d2fdc: add             x1, x1, HEAP, lsl #32
    //     0x6d2fe0: stur            x1, [fp, #-8]
    // 0x6d2fe4: CheckStackOverflow
    //     0x6d2fe4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d2fe8: cmp             SP, x16
    //     0x6d2fec: b.ls            #0x6d37fc
    // 0x6d2ff0: r1 = 2
    //     0x6d2ff0: mov             x1, #2
    // 0x6d2ff4: r0 = AllocateContext()
    //     0x6d2ff4: bl              #0x927010  ; AllocateContextStub
    // 0x6d2ff8: mov             x1, x0
    // 0x6d2ffc: ldur            x0, [fp, #-8]
    // 0x6d3000: stur            x1, [fp, #-0x18]
    // 0x6d3004: StoreField: r1->field_b = r0
    //     0x6d3004: stur            w0, [x1, #0xb]
    // 0x6d3008: ldr             x2, [fp, #0x18]
    // 0x6d300c: StoreField: r1->field_f = r2
    //     0x6d300c: stur            w2, [x1, #0xf]
    // 0x6d3010: ldr             x2, [fp, #0x10]
    // 0x6d3014: StoreField: r1->field_13 = r2
    //     0x6d3014: stur            w2, [x1, #0x13]
    // 0x6d3018: LoadField: r2 = r0->field_f
    //     0x6d3018: ldur            w2, [x0, #0xf]
    // 0x6d301c: DecompressPointer r2
    //     0x6d301c: add             x2, x2, HEAP, lsl #32
    // 0x6d3020: cmp             w2, NULL
    // 0x6d3024: b.ne            #0x6d3034
    // 0x6d3028: r2 = "Etkinlik Ekle"
    //     0x6d3028: add             x2, PP, #0x19, lsl #12  ; [pp+0x199a8] "Etkinlik Ekle"
    //     0x6d302c: ldr             x2, [x2, #0x9a8]
    // 0x6d3030: b               #0x6d303c
    // 0x6d3034: r2 = "Etkinliği Düzenle"
    //     0x6d3034: add             x2, PP, #0x19, lsl #12  ; [pp+0x199b0] "Etkinliği Düzenle"
    //     0x6d3038: ldr             x2, [x2, #0x9b0]
    // 0x6d303c: stur            x2, [fp, #-0x10]
    // 0x6d3040: r0 = Text()
    //     0x6d3040: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6d3044: mov             x1, x0
    // 0x6d3048: ldur            x0, [fp, #-0x10]
    // 0x6d304c: stur            x1, [fp, #-0x20]
    // 0x6d3050: StoreField: r1->field_b = r0
    //     0x6d3050: stur            w0, [x1, #0xb]
    // 0x6d3054: ldur            x0, [fp, #-8]
    // 0x6d3058: LoadField: r2 = r0->field_1b
    //     0x6d3058: ldur            w2, [x0, #0x1b]
    // 0x6d305c: DecompressPointer r2
    //     0x6d305c: add             x2, x2, HEAP, lsl #32
    // 0x6d3060: stur            x2, [fp, #-0x10]
    // 0x6d3064: r0 = TextField()
    //     0x6d3064: bl              #0x684214  ; AllocateTextFieldStub -> TextField (size=0x128)
    // 0x6d3068: mov             x1, x0
    // 0x6d306c: r0 = EditableText
    //     0x6d306c: ldr             x0, [PP, #0x6f50]  ; [pp+0x6f50] Type: EditableText
    // 0x6d3070: stur            x1, [fp, #-0x28]
    // 0x6d3074: StoreField: r1->field_f = r0
    //     0x6d3074: stur            w0, [x1, #0xf]
    // 0x6d3078: ldur            x2, [fp, #-0x10]
    // 0x6d307c: StoreField: r1->field_13 = r2
    //     0x6d307c: stur            w2, [x1, #0x13]
    // 0x6d3080: r2 = Instance_InputDecoration
    //     0x6d3080: add             x2, PP, #0x19, lsl #12  ; [pp+0x199b8] Obj!InputDecoration@a0d671
    //     0x6d3084: ldr             x2, [x2, #0x9b8]
    // 0x6d3088: StoreField: r1->field_1b = r2
    //     0x6d3088: stur            w2, [x1, #0x1b]
    // 0x6d308c: r2 = Instance_TextCapitalization
    //     0x6d308c: add             x2, PP, #0x14, lsl #12  ; [pp+0x144f0] Obj!TextCapitalization@a29af1
    //     0x6d3090: ldr             x2, [x2, #0x4f0]
    // 0x6d3094: StoreField: r1->field_27 = r2
    //     0x6d3094: stur            w2, [x1, #0x27]
    // 0x6d3098: r3 = Instance_TextAlign
    //     0x6d3098: ldr             x3, [PP, #0x4b00]  ; [pp+0x4b00] Obj!TextAlign@a2cf31
    // 0x6d309c: StoreField: r1->field_33 = r3
    //     0x6d309c: stur            w3, [x1, #0x33]
    // 0x6d30a0: r4 = false
    //     0x6d30a0: add             x4, NULL, #0x30  ; false
    // 0x6d30a4: StoreField: r1->field_6b = r4
    //     0x6d30a4: stur            w4, [x1, #0x6b]
    // 0x6d30a8: StoreField: r1->field_3f = r4
    //     0x6d30a8: stur            w4, [x1, #0x3f]
    // 0x6d30ac: r5 = "•"
    //     0x6d30ac: add             x5, PP, #0x14, lsl #12  ; [pp+0x144f8] "•"
    //     0x6d30b0: ldr             x5, [x5, #0x4f8]
    // 0x6d30b4: StoreField: r1->field_47 = r5
    //     0x6d30b4: stur            w5, [x1, #0x47]
    // 0x6d30b8: StoreField: r1->field_4b = r4
    //     0x6d30b8: stur            w4, [x1, #0x4b]
    // 0x6d30bc: r6 = true
    //     0x6d30bc: add             x6, NULL, #0x20  ; true
    // 0x6d30c0: StoreField: r1->field_5b = r6
    //     0x6d30c0: stur            w6, [x1, #0x5b]
    // 0x6d30c4: r7 = 2
    //     0x6d30c4: mov             x7, #2
    // 0x6d30c8: StoreField: r1->field_5f = r7
    //     0x6d30c8: stur            w7, [x1, #0x5f]
    // 0x6d30cc: StoreField: r1->field_67 = r4
    //     0x6d30cc: stur            w4, [x1, #0x67]
    // 0x6d30d0: d0 = 2.000000
    //     0x6d30d0: fmov            d0, #2.00000000
    // 0x6d30d4: StoreField: r1->field_9b = d0
    //     0x6d30d4: stur            d0, [x1, #0x9b]
    // 0x6d30d8: r8 = Instance_EdgeInsets
    //     0x6d30d8: ldr             x8, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x6d30dc: StoreField: r1->field_c3 = r8
    //     0x6d30dc: stur            w8, [x1, #0xc3]
    // 0x6d30e0: r9 = Instance_DragStartBehavior
    //     0x6d30e0: ldr             x9, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6d30e4: StoreField: r1->field_d3 = r9
    //     0x6d30e4: stur            w9, [x1, #0xd3]
    // 0x6d30e8: StoreField: r1->field_db = r4
    //     0x6d30e8: stur            w4, [x1, #0xdb]
    // 0x6d30ec: r10 = const []
    //     0x6d30ec: ldr             x10, [PP, #0x73e8]  ; [pp+0x73e8] List<String>(0)
    // 0x6d30f0: StoreField: r1->field_f7 = r10
    //     0x6d30f0: stur            w10, [x1, #0xf7]
    // 0x6d30f4: r11 = Instance_Clip
    //     0x6d30f4: add             x11, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6d30f8: ldr             x11, [x11, #0x2d8]
    // 0x6d30fc: StoreField: r1->field_fb = r11
    //     0x6d30fc: stur            w11, [x1, #0xfb]
    // 0x6d3100: r17 = 259
    //     0x6d3100: mov             x17, #0x103
    // 0x6d3104: str             w6, [x1, x17]
    // 0x6d3108: r17 = 263
    //     0x6d3108: mov             x17, #0x107
    // 0x6d310c: str             w6, [x1, x17]
    // 0x6d3110: r17 = 267
    //     0x6d3110: mov             x17, #0x10b
    // 0x6d3114: str             w6, [x1, x17]
    // 0x6d3118: r12 = Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static.
    //     0x6d3118: add             x12, PP, #0x18, lsl #12  ; [pp+0x189f8] Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static. (0x7f2290684300)
    //     0x6d311c: ldr             x12, [x12, #0x9f8]
    // 0x6d3120: r17 = 275
    //     0x6d3120: mov             x17, #0x113
    // 0x6d3124: str             w12, [x1, x17]
    // 0x6d3128: r17 = 279
    //     0x6d3128: mov             x17, #0x117
    // 0x6d312c: str             w6, [x1, x17]
    // 0x6d3130: r13 = Instance_SmartDashesType
    //     0x6d3130: ldr             x13, [PP, #0x73f0]  ; [pp+0x73f0] Obj!SmartDashesType@a29cf1
    // 0x6d3134: StoreField: r1->field_53 = r13
    //     0x6d3134: stur            w13, [x1, #0x53]
    // 0x6d3138: r14 = Instance_SmartQuotesType
    //     0x6d3138: add             x14, PP, #0x14, lsl #12  ; [pp+0x14520] Obj!SmartQuotesType@a29cd1
    //     0x6d313c: ldr             x14, [x14, #0x520]
    // 0x6d3140: StoreField: r1->field_57 = r14
    //     0x6d3140: stur            w14, [x1, #0x57]
    // 0x6d3144: r19 = Instance_TextInputType
    //     0x6d3144: add             x19, PP, #0x14, lsl #12  ; [pp+0x14528] Obj!TextInputType@a0acc1
    //     0x6d3148: ldr             x19, [x19, #0x528]
    // 0x6d314c: StoreField: r1->field_1f = r19
    //     0x6d314c: stur            w19, [x1, #0x1f]
    // 0x6d3150: StoreField: r1->field_c7 = r6
    //     0x6d3150: stur            w6, [x1, #0xc7]
    // 0x6d3154: ldur            x20, [fp, #-8]
    // 0x6d3158: LoadField: r23 = r20->field_1f
    //     0x6d3158: ldur            w23, [x20, #0x1f]
    // 0x6d315c: DecompressPointer r23
    //     0x6d315c: add             x23, x23, HEAP, lsl #32
    // 0x6d3160: stur            x23, [fp, #-0x10]
    // 0x6d3164: r0 = TextField()
    //     0x6d3164: bl              #0x684214  ; AllocateTextFieldStub -> TextField (size=0x128)
    // 0x6d3168: mov             x1, x0
    // 0x6d316c: r0 = EditableText
    //     0x6d316c: ldr             x0, [PP, #0x6f50]  ; [pp+0x6f50] Type: EditableText
    // 0x6d3170: stur            x1, [fp, #-0x30]
    // 0x6d3174: StoreField: r1->field_f = r0
    //     0x6d3174: stur            w0, [x1, #0xf]
    // 0x6d3178: ldur            x2, [fp, #-0x10]
    // 0x6d317c: StoreField: r1->field_13 = r2
    //     0x6d317c: stur            w2, [x1, #0x13]
    // 0x6d3180: r2 = Instance_InputDecoration
    //     0x6d3180: add             x2, PP, #0x19, lsl #12  ; [pp+0x197b0] Obj!InputDecoration@a0d761
    //     0x6d3184: ldr             x2, [x2, #0x7b0]
    // 0x6d3188: StoreField: r1->field_1b = r2
    //     0x6d3188: stur            w2, [x1, #0x1b]
    // 0x6d318c: r2 = Instance_TextCapitalization
    //     0x6d318c: add             x2, PP, #0x14, lsl #12  ; [pp+0x144f0] Obj!TextCapitalization@a29af1
    //     0x6d3190: ldr             x2, [x2, #0x4f0]
    // 0x6d3194: StoreField: r1->field_27 = r2
    //     0x6d3194: stur            w2, [x1, #0x27]
    // 0x6d3198: r3 = Instance_TextAlign
    //     0x6d3198: ldr             x3, [PP, #0x4b00]  ; [pp+0x4b00] Obj!TextAlign@a2cf31
    // 0x6d319c: StoreField: r1->field_33 = r3
    //     0x6d319c: stur            w3, [x1, #0x33]
    // 0x6d31a0: r4 = false
    //     0x6d31a0: add             x4, NULL, #0x30  ; false
    // 0x6d31a4: StoreField: r1->field_6b = r4
    //     0x6d31a4: stur            w4, [x1, #0x6b]
    // 0x6d31a8: StoreField: r1->field_3f = r4
    //     0x6d31a8: stur            w4, [x1, #0x3f]
    // 0x6d31ac: r5 = "•"
    //     0x6d31ac: add             x5, PP, #0x14, lsl #12  ; [pp+0x144f8] "•"
    //     0x6d31b0: ldr             x5, [x5, #0x4f8]
    // 0x6d31b4: StoreField: r1->field_47 = r5
    //     0x6d31b4: stur            w5, [x1, #0x47]
    // 0x6d31b8: StoreField: r1->field_4b = r4
    //     0x6d31b8: stur            w4, [x1, #0x4b]
    // 0x6d31bc: r6 = true
    //     0x6d31bc: add             x6, NULL, #0x20  ; true
    // 0x6d31c0: StoreField: r1->field_5b = r6
    //     0x6d31c0: stur            w6, [x1, #0x5b]
    // 0x6d31c4: r7 = 6
    //     0x6d31c4: mov             x7, #6
    // 0x6d31c8: StoreField: r1->field_5f = r7
    //     0x6d31c8: stur            w7, [x1, #0x5f]
    // 0x6d31cc: StoreField: r1->field_67 = r4
    //     0x6d31cc: stur            w4, [x1, #0x67]
    // 0x6d31d0: d0 = 2.000000
    //     0x6d31d0: fmov            d0, #2.00000000
    // 0x6d31d4: StoreField: r1->field_9b = d0
    //     0x6d31d4: stur            d0, [x1, #0x9b]
    // 0x6d31d8: r7 = Instance_EdgeInsets
    //     0x6d31d8: ldr             x7, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x6d31dc: StoreField: r1->field_c3 = r7
    //     0x6d31dc: stur            w7, [x1, #0xc3]
    // 0x6d31e0: r8 = Instance_DragStartBehavior
    //     0x6d31e0: ldr             x8, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6d31e4: StoreField: r1->field_d3 = r8
    //     0x6d31e4: stur            w8, [x1, #0xd3]
    // 0x6d31e8: StoreField: r1->field_db = r4
    //     0x6d31e8: stur            w4, [x1, #0xdb]
    // 0x6d31ec: r9 = const []
    //     0x6d31ec: ldr             x9, [PP, #0x73e8]  ; [pp+0x73e8] List<String>(0)
    // 0x6d31f0: StoreField: r1->field_f7 = r9
    //     0x6d31f0: stur            w9, [x1, #0xf7]
    // 0x6d31f4: r10 = Instance_Clip
    //     0x6d31f4: add             x10, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6d31f8: ldr             x10, [x10, #0x2d8]
    // 0x6d31fc: StoreField: r1->field_fb = r10
    //     0x6d31fc: stur            w10, [x1, #0xfb]
    // 0x6d3200: r17 = 259
    //     0x6d3200: mov             x17, #0x103
    // 0x6d3204: str             w6, [x1, x17]
    // 0x6d3208: r17 = 263
    //     0x6d3208: mov             x17, #0x107
    // 0x6d320c: str             w6, [x1, x17]
    // 0x6d3210: r17 = 267
    //     0x6d3210: mov             x17, #0x10b
    // 0x6d3214: str             w6, [x1, x17]
    // 0x6d3218: r11 = Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static.
    //     0x6d3218: add             x11, PP, #0x18, lsl #12  ; [pp+0x189f8] Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static. (0x7f2290684300)
    //     0x6d321c: ldr             x11, [x11, #0x9f8]
    // 0x6d3220: r17 = 275
    //     0x6d3220: mov             x17, #0x113
    // 0x6d3224: str             w11, [x1, x17]
    // 0x6d3228: r17 = 279
    //     0x6d3228: mov             x17, #0x117
    // 0x6d322c: str             w6, [x1, x17]
    // 0x6d3230: r12 = Instance_SmartDashesType
    //     0x6d3230: ldr             x12, [PP, #0x73f0]  ; [pp+0x73f0] Obj!SmartDashesType@a29cf1
    // 0x6d3234: StoreField: r1->field_53 = r12
    //     0x6d3234: stur            w12, [x1, #0x53]
    // 0x6d3238: r13 = Instance_SmartQuotesType
    //     0x6d3238: add             x13, PP, #0x14, lsl #12  ; [pp+0x14520] Obj!SmartQuotesType@a29cd1
    //     0x6d323c: ldr             x13, [x13, #0x520]
    // 0x6d3240: StoreField: r1->field_57 = r13
    //     0x6d3240: stur            w13, [x1, #0x57]
    // 0x6d3244: r14 = Instance_TextInputType
    //     0x6d3244: add             x14, PP, #0x14, lsl #12  ; [pp+0x14530] Obj!TextInputType@a0aca1
    //     0x6d3248: ldr             x14, [x14, #0x530]
    // 0x6d324c: StoreField: r1->field_1f = r14
    //     0x6d324c: stur            w14, [x1, #0x1f]
    // 0x6d3250: StoreField: r1->field_c7 = r6
    //     0x6d3250: stur            w6, [x1, #0xc7]
    // 0x6d3254: ldur            x14, [fp, #-8]
    // 0x6d3258: LoadField: r19 = r14->field_23
    //     0x6d3258: ldur            w19, [x14, #0x23]
    // 0x6d325c: DecompressPointer r19
    //     0x6d325c: add             x19, x19, HEAP, lsl #32
    // 0x6d3260: stur            x19, [fp, #-0x10]
    // 0x6d3264: r0 = TextField()
    //     0x6d3264: bl              #0x684214  ; AllocateTextFieldStub -> TextField (size=0x128)
    // 0x6d3268: mov             x3, x0
    // 0x6d326c: r0 = EditableText
    //     0x6d326c: ldr             x0, [PP, #0x6f50]  ; [pp+0x6f50] Type: EditableText
    // 0x6d3270: stur            x3, [fp, #-0x38]
    // 0x6d3274: StoreField: r3->field_f = r0
    //     0x6d3274: stur            w0, [x3, #0xf]
    // 0x6d3278: ldur            x1, [fp, #-0x10]
    // 0x6d327c: StoreField: r3->field_13 = r1
    //     0x6d327c: stur            w1, [x3, #0x13]
    // 0x6d3280: r1 = Instance_InputDecoration
    //     0x6d3280: add             x1, PP, #0x19, lsl #12  ; [pp+0x199c0] Obj!InputDecoration@a0d581
    //     0x6d3284: ldr             x1, [x1, #0x9c0]
    // 0x6d3288: StoreField: r3->field_1b = r1
    //     0x6d3288: stur            w1, [x3, #0x1b]
    // 0x6d328c: r4 = Instance_TextCapitalization
    //     0x6d328c: add             x4, PP, #0x14, lsl #12  ; [pp+0x144f0] Obj!TextCapitalization@a29af1
    //     0x6d3290: ldr             x4, [x4, #0x4f0]
    // 0x6d3294: StoreField: r3->field_27 = r4
    //     0x6d3294: stur            w4, [x3, #0x27]
    // 0x6d3298: r5 = Instance_TextAlign
    //     0x6d3298: ldr             x5, [PP, #0x4b00]  ; [pp+0x4b00] Obj!TextAlign@a2cf31
    // 0x6d329c: StoreField: r3->field_33 = r5
    //     0x6d329c: stur            w5, [x3, #0x33]
    // 0x6d32a0: r6 = false
    //     0x6d32a0: add             x6, NULL, #0x30  ; false
    // 0x6d32a4: StoreField: r3->field_6b = r6
    //     0x6d32a4: stur            w6, [x3, #0x6b]
    // 0x6d32a8: StoreField: r3->field_3f = r6
    //     0x6d32a8: stur            w6, [x3, #0x3f]
    // 0x6d32ac: r7 = "•"
    //     0x6d32ac: add             x7, PP, #0x14, lsl #12  ; [pp+0x144f8] "•"
    //     0x6d32b0: ldr             x7, [x7, #0x4f8]
    // 0x6d32b4: StoreField: r3->field_47 = r7
    //     0x6d32b4: stur            w7, [x3, #0x47]
    // 0x6d32b8: StoreField: r3->field_4b = r6
    //     0x6d32b8: stur            w6, [x3, #0x4b]
    // 0x6d32bc: r8 = true
    //     0x6d32bc: add             x8, NULL, #0x20  ; true
    // 0x6d32c0: StoreField: r3->field_5b = r8
    //     0x6d32c0: stur            w8, [x3, #0x5b]
    // 0x6d32c4: r9 = 2
    //     0x6d32c4: mov             x9, #2
    // 0x6d32c8: StoreField: r3->field_5f = r9
    //     0x6d32c8: stur            w9, [x3, #0x5f]
    // 0x6d32cc: StoreField: r3->field_67 = r6
    //     0x6d32cc: stur            w6, [x3, #0x67]
    // 0x6d32d0: d0 = 2.000000
    //     0x6d32d0: fmov            d0, #2.00000000
    // 0x6d32d4: StoreField: r3->field_9b = d0
    //     0x6d32d4: stur            d0, [x3, #0x9b]
    // 0x6d32d8: r10 = Instance_EdgeInsets
    //     0x6d32d8: ldr             x10, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x6d32dc: StoreField: r3->field_c3 = r10
    //     0x6d32dc: stur            w10, [x3, #0xc3]
    // 0x6d32e0: r11 = Instance_DragStartBehavior
    //     0x6d32e0: ldr             x11, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6d32e4: StoreField: r3->field_d3 = r11
    //     0x6d32e4: stur            w11, [x3, #0xd3]
    // 0x6d32e8: ldur            x2, [fp, #-0x18]
    // 0x6d32ec: r1 = Function '<anonymous closure>': static.
    //     0x6d32ec: add             x1, PP, #0x19, lsl #12  ; [pp+0x199c8] AnonymousClosure: static (0x6d4ab8), in [package:umrem_demo/features/admin/widgets/events/edit_dialog.dart] ::showAddEditDialog (0x6d2cc8)
    //     0x6d32f0: ldr             x1, [x1, #0x9c8]
    // 0x6d32f4: r0 = AllocateClosure()
    //     0x6d32f4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d32f8: ldur            x1, [fp, #-0x38]
    // 0x6d32fc: StoreField: r1->field_d7 = r0
    //     0x6d32fc: stur            w0, [x1, #0xd7]
    // 0x6d3300: r2 = false
    //     0x6d3300: add             x2, NULL, #0x30  ; false
    // 0x6d3304: StoreField: r1->field_db = r2
    //     0x6d3304: stur            w2, [x1, #0xdb]
    // 0x6d3308: r3 = const []
    //     0x6d3308: ldr             x3, [PP, #0x73e8]  ; [pp+0x73e8] List<String>(0)
    // 0x6d330c: StoreField: r1->field_f7 = r3
    //     0x6d330c: stur            w3, [x1, #0xf7]
    // 0x6d3310: r4 = Instance_Clip
    //     0x6d3310: add             x4, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6d3314: ldr             x4, [x4, #0x2d8]
    // 0x6d3318: StoreField: r1->field_fb = r4
    //     0x6d3318: stur            w4, [x1, #0xfb]
    // 0x6d331c: r5 = true
    //     0x6d331c: add             x5, NULL, #0x20  ; true
    // 0x6d3320: r17 = 259
    //     0x6d3320: mov             x17, #0x103
    // 0x6d3324: str             w5, [x1, x17]
    // 0x6d3328: r17 = 263
    //     0x6d3328: mov             x17, #0x107
    // 0x6d332c: str             w5, [x1, x17]
    // 0x6d3330: r17 = 267
    //     0x6d3330: mov             x17, #0x10b
    // 0x6d3334: str             w5, [x1, x17]
    // 0x6d3338: r6 = Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static.
    //     0x6d3338: add             x6, PP, #0x18, lsl #12  ; [pp+0x189f8] Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static. (0x7f2290684300)
    //     0x6d333c: ldr             x6, [x6, #0x9f8]
    // 0x6d3340: r17 = 275
    //     0x6d3340: mov             x17, #0x113
    // 0x6d3344: str             w6, [x1, x17]
    // 0x6d3348: r17 = 279
    //     0x6d3348: mov             x17, #0x117
    // 0x6d334c: str             w5, [x1, x17]
    // 0x6d3350: r7 = Instance_SmartDashesType
    //     0x6d3350: ldr             x7, [PP, #0x73f0]  ; [pp+0x73f0] Obj!SmartDashesType@a29cf1
    // 0x6d3354: StoreField: r1->field_53 = r7
    //     0x6d3354: stur            w7, [x1, #0x53]
    // 0x6d3358: r8 = Instance_SmartQuotesType
    //     0x6d3358: add             x8, PP, #0x14, lsl #12  ; [pp+0x14520] Obj!SmartQuotesType@a29cd1
    //     0x6d335c: ldr             x8, [x8, #0x520]
    // 0x6d3360: StoreField: r1->field_57 = r8
    //     0x6d3360: stur            w8, [x1, #0x57]
    // 0x6d3364: r0 = Instance_TextInputType
    //     0x6d3364: add             x0, PP, #0x14, lsl #12  ; [pp+0x14528] Obj!TextInputType@a0acc1
    //     0x6d3368: ldr             x0, [x0, #0x528]
    // 0x6d336c: StoreField: r1->field_1f = r0
    //     0x6d336c: stur            w0, [x1, #0x1f]
    // 0x6d3370: StoreField: r1->field_c7 = r5
    //     0x6d3370: stur            w5, [x1, #0xc7]
    // 0x6d3374: ldur            x9, [fp, #-8]
    // 0x6d3378: LoadField: r0 = r9->field_27
    //     0x6d3378: ldur            w0, [x9, #0x27]
    // 0x6d337c: DecompressPointer r0
    //     0x6d337c: add             x0, x0, HEAP, lsl #32
    // 0x6d3380: r10 = 60
    //     0x6d3380: mov             x10, #0x3c
    // 0x6d3384: branchIfSmi(r0, 0x6d3390)
    //     0x6d3384: tbz             w0, #0, #0x6d3390
    // 0x6d3388: r10 = LoadClassIdInstr(r0)
    //     0x6d3388: ldur            x10, [x0, #-1]
    //     0x6d338c: ubfx            x10, x10, #0xc, #0x14
    // 0x6d3390: str             x0, [SP]
    // 0x6d3394: mov             x0, x10
    // 0x6d3398: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6d3398: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6d339c: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6d339c: mov             x17, #0x21f6
    //     0x6d33a0: add             lr, x0, x17
    //     0x6d33a4: ldr             lr, [x21, lr, lsl #3]
    //     0x6d33a8: blr             lr
    // 0x6d33ac: r1 = <TextEditingValue>
    //     0x6d33ac: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6d33b0: stur            x0, [fp, #-0x10]
    // 0x6d33b4: r0 = TextEditingController()
    //     0x6d33b4: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6d33b8: stur            x0, [fp, #-0x40]
    // 0x6d33bc: ldur            x16, [fp, #-0x10]
    // 0x6d33c0: str             x16, [SP]
    // 0x6d33c4: mov             x1, x0
    // 0x6d33c8: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6d33c8: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6d33cc: ldr             x4, [x4, #0xa20]
    // 0x6d33d0: r0 = TextEditingController()
    //     0x6d33d0: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6d33d4: r0 = TextField()
    //     0x6d33d4: bl              #0x684214  ; AllocateTextFieldStub -> TextField (size=0x128)
    // 0x6d33d8: mov             x3, x0
    // 0x6d33dc: r0 = EditableText
    //     0x6d33dc: ldr             x0, [PP, #0x6f50]  ; [pp+0x6f50] Type: EditableText
    // 0x6d33e0: stur            x3, [fp, #-0x10]
    // 0x6d33e4: StoreField: r3->field_f = r0
    //     0x6d33e4: stur            w0, [x3, #0xf]
    // 0x6d33e8: ldur            x0, [fp, #-0x40]
    // 0x6d33ec: StoreField: r3->field_13 = r0
    //     0x6d33ec: stur            w0, [x3, #0x13]
    // 0x6d33f0: r0 = Instance_InputDecoration
    //     0x6d33f0: add             x0, PP, #0x19, lsl #12  ; [pp+0x199d0] Obj!InputDecoration@a0d491
    //     0x6d33f4: ldr             x0, [x0, #0x9d0]
    // 0x6d33f8: StoreField: r3->field_1b = r0
    //     0x6d33f8: stur            w0, [x3, #0x1b]
    // 0x6d33fc: r0 = Instance_TextCapitalization
    //     0x6d33fc: add             x0, PP, #0x14, lsl #12  ; [pp+0x144f0] Obj!TextCapitalization@a29af1
    //     0x6d3400: ldr             x0, [x0, #0x4f0]
    // 0x6d3404: StoreField: r3->field_27 = r0
    //     0x6d3404: stur            w0, [x3, #0x27]
    // 0x6d3408: r0 = Instance_TextAlign
    //     0x6d3408: ldr             x0, [PP, #0x4b00]  ; [pp+0x4b00] Obj!TextAlign@a2cf31
    // 0x6d340c: StoreField: r3->field_33 = r0
    //     0x6d340c: stur            w0, [x3, #0x33]
    // 0x6d3410: r0 = false
    //     0x6d3410: add             x0, NULL, #0x30  ; false
    // 0x6d3414: StoreField: r3->field_6b = r0
    //     0x6d3414: stur            w0, [x3, #0x6b]
    // 0x6d3418: StoreField: r3->field_3f = r0
    //     0x6d3418: stur            w0, [x3, #0x3f]
    // 0x6d341c: r1 = "•"
    //     0x6d341c: add             x1, PP, #0x14, lsl #12  ; [pp+0x144f8] "•"
    //     0x6d3420: ldr             x1, [x1, #0x4f8]
    // 0x6d3424: StoreField: r3->field_47 = r1
    //     0x6d3424: stur            w1, [x3, #0x47]
    // 0x6d3428: StoreField: r3->field_4b = r0
    //     0x6d3428: stur            w0, [x3, #0x4b]
    // 0x6d342c: r4 = true
    //     0x6d342c: add             x4, NULL, #0x20  ; true
    // 0x6d3430: StoreField: r3->field_5b = r4
    //     0x6d3430: stur            w4, [x3, #0x5b]
    // 0x6d3434: r1 = 2
    //     0x6d3434: mov             x1, #2
    // 0x6d3438: StoreField: r3->field_5f = r1
    //     0x6d3438: stur            w1, [x3, #0x5f]
    // 0x6d343c: StoreField: r3->field_67 = r0
    //     0x6d343c: stur            w0, [x3, #0x67]
    // 0x6d3440: ldur            x2, [fp, #-0x18]
    // 0x6d3444: r1 = Function '<anonymous closure>': static.
    //     0x6d3444: add             x1, PP, #0x19, lsl #12  ; [pp+0x199d8] AnonymousClosure: static (0x6d496c), in [package:umrem_demo/features/admin/widgets/events/edit_dialog.dart] ::showAddEditDialog (0x6d2cc8)
    //     0x6d3448: ldr             x1, [x1, #0x9d8]
    // 0x6d344c: r0 = AllocateClosure()
    //     0x6d344c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d3450: mov             x1, x0
    // 0x6d3454: ldur            x0, [fp, #-0x10]
    // 0x6d3458: StoreField: r0->field_7f = r1
    //     0x6d3458: stur            w1, [x0, #0x7f]
    // 0x6d345c: d0 = 2.000000
    //     0x6d345c: fmov            d0, #2.00000000
    // 0x6d3460: StoreField: r0->field_9b = d0
    //     0x6d3460: stur            d0, [x0, #0x9b]
    // 0x6d3464: r1 = Instance_EdgeInsets
    //     0x6d3464: ldr             x1, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x6d3468: StoreField: r0->field_c3 = r1
    //     0x6d3468: stur            w1, [x0, #0xc3]
    // 0x6d346c: r1 = Instance_DragStartBehavior
    //     0x6d346c: ldr             x1, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6d3470: StoreField: r0->field_d3 = r1
    //     0x6d3470: stur            w1, [x0, #0xd3]
    // 0x6d3474: r2 = false
    //     0x6d3474: add             x2, NULL, #0x30  ; false
    // 0x6d3478: StoreField: r0->field_db = r2
    //     0x6d3478: stur            w2, [x0, #0xdb]
    // 0x6d347c: r3 = const []
    //     0x6d347c: ldr             x3, [PP, #0x73e8]  ; [pp+0x73e8] List<String>(0)
    // 0x6d3480: StoreField: r0->field_f7 = r3
    //     0x6d3480: stur            w3, [x0, #0xf7]
    // 0x6d3484: r3 = Instance_Clip
    //     0x6d3484: add             x3, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6d3488: ldr             x3, [x3, #0x2d8]
    // 0x6d348c: StoreField: r0->field_fb = r3
    //     0x6d348c: stur            w3, [x0, #0xfb]
    // 0x6d3490: r4 = true
    //     0x6d3490: add             x4, NULL, #0x20  ; true
    // 0x6d3494: r17 = 259
    //     0x6d3494: mov             x17, #0x103
    // 0x6d3498: str             w4, [x0, x17]
    // 0x6d349c: r17 = 263
    //     0x6d349c: mov             x17, #0x107
    // 0x6d34a0: str             w4, [x0, x17]
    // 0x6d34a4: r17 = 267
    //     0x6d34a4: mov             x17, #0x10b
    // 0x6d34a8: str             w4, [x0, x17]
    // 0x6d34ac: r5 = Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static.
    //     0x6d34ac: add             x5, PP, #0x18, lsl #12  ; [pp+0x189f8] Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static. (0x7f2290684300)
    //     0x6d34b0: ldr             x5, [x5, #0x9f8]
    // 0x6d34b4: r17 = 275
    //     0x6d34b4: mov             x17, #0x113
    // 0x6d34b8: str             w5, [x0, x17]
    // 0x6d34bc: r17 = 279
    //     0x6d34bc: mov             x17, #0x117
    // 0x6d34c0: str             w4, [x0, x17]
    // 0x6d34c4: r5 = Instance_SmartDashesType
    //     0x6d34c4: ldr             x5, [PP, #0x73f0]  ; [pp+0x73f0] Obj!SmartDashesType@a29cf1
    // 0x6d34c8: StoreField: r0->field_53 = r5
    //     0x6d34c8: stur            w5, [x0, #0x53]
    // 0x6d34cc: r5 = Instance_SmartQuotesType
    //     0x6d34cc: add             x5, PP, #0x14, lsl #12  ; [pp+0x14520] Obj!SmartQuotesType@a29cd1
    //     0x6d34d0: ldr             x5, [x5, #0x520]
    // 0x6d34d4: StoreField: r0->field_57 = r5
    //     0x6d34d4: stur            w5, [x0, #0x57]
    // 0x6d34d8: r5 = Instance_TextInputType
    //     0x6d34d8: add             x5, PP, #0x14, lsl #12  ; [pp+0x14948] Obj!TextInputType@a0ad01
    //     0x6d34dc: ldr             x5, [x5, #0x948]
    // 0x6d34e0: StoreField: r0->field_1f = r5
    //     0x6d34e0: stur            w5, [x0, #0x1f]
    // 0x6d34e4: StoreField: r0->field_c7 = r4
    //     0x6d34e4: stur            w4, [x0, #0xc7]
    // 0x6d34e8: r0 = SizedBox()
    //     0x6d34e8: bl              #0x654794  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x6d34ec: mov             x3, x0
    // 0x6d34f0: r0 = 100.000000
    //     0x6d34f0: ldr             x0, [PP, #0x5e10]  ; [pp+0x5e10] 100
    // 0x6d34f4: stur            x3, [fp, #-0x40]
    // 0x6d34f8: StoreField: r3->field_f = r0
    //     0x6d34f8: stur            w0, [x3, #0xf]
    // 0x6d34fc: ldur            x0, [fp, #-0x10]
    // 0x6d3500: StoreField: r3->field_b = r0
    //     0x6d3500: stur            w0, [x3, #0xb]
    // 0x6d3504: r1 = Null
    //     0x6d3504: mov             x1, NULL
    // 0x6d3508: r2 = 4
    //     0x6d3508: mov             x2, #4
    // 0x6d350c: r0 = AllocateArray()
    //     0x6d350c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d3510: stur            x0, [fp, #-0x10]
    // 0x6d3514: r16 = Instance_Text
    //     0x6d3514: add             x16, PP, #0x19, lsl #12  ; [pp+0x199e0] Obj!Text@a1b091
    //     0x6d3518: ldr             x16, [x16, #0x9e0]
    // 0x6d351c: StoreField: r0->field_f = r16
    //     0x6d351c: stur            w16, [x0, #0xf]
    // 0x6d3520: ldur            x1, [fp, #-0x40]
    // 0x6d3524: StoreField: r0->field_13 = r1
    //     0x6d3524: stur            w1, [x0, #0x13]
    // 0x6d3528: r1 = <Widget>
    //     0x6d3528: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6d352c: r0 = AllocateGrowableArray()
    //     0x6d352c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6d3530: mov             x1, x0
    // 0x6d3534: ldur            x0, [fp, #-0x10]
    // 0x6d3538: stur            x1, [fp, #-0x40]
    // 0x6d353c: StoreField: r1->field_f = r0
    //     0x6d353c: stur            w0, [x1, #0xf]
    // 0x6d3540: r2 = 4
    //     0x6d3540: mov             x2, #4
    // 0x6d3544: StoreField: r1->field_b = r2
    //     0x6d3544: stur            w2, [x1, #0xb]
    // 0x6d3548: r0 = Row()
    //     0x6d3548: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6d354c: mov             x3, x0
    // 0x6d3550: r0 = Instance_Axis
    //     0x6d3550: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6d3554: stur            x3, [fp, #-0x10]
    // 0x6d3558: StoreField: r3->field_f = r0
    //     0x6d3558: stur            w0, [x3, #0xf]
    // 0x6d355c: r0 = Instance_MainAxisAlignment
    //     0x6d355c: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d20] Obj!MainAxisAlignment@a2a691
    //     0x6d3560: ldr             x0, [x0, #0xd20]
    // 0x6d3564: StoreField: r3->field_13 = r0
    //     0x6d3564: stur            w0, [x3, #0x13]
    // 0x6d3568: r0 = Instance_MainAxisSize
    //     0x6d3568: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6d356c: ldr             x0, [x0, #0x330]
    // 0x6d3570: ArrayStore: r3[0] = r0  ; List_4
    //     0x6d3570: stur            w0, [x3, #0x17]
    // 0x6d3574: r0 = Instance_CrossAxisAlignment
    //     0x6d3574: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6d3578: ldr             x0, [x0, #0x338]
    // 0x6d357c: StoreField: r3->field_1b = r0
    //     0x6d357c: stur            w0, [x3, #0x1b]
    // 0x6d3580: r4 = Instance_VerticalDirection
    //     0x6d3580: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6d3584: ldr             x4, [x4, #0x340]
    // 0x6d3588: StoreField: r3->field_23 = r4
    //     0x6d3588: stur            w4, [x3, #0x23]
    // 0x6d358c: r5 = Instance_Clip
    //     0x6d358c: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6d3590: ldr             x5, [x5, #0x348]
    // 0x6d3594: StoreField: r3->field_2b = r5
    //     0x6d3594: stur            w5, [x3, #0x2b]
    // 0x6d3598: StoreField: r3->field_2f = rZR
    //     0x6d3598: stur            xzr, [x3, #0x2f]
    // 0x6d359c: ldur            x1, [fp, #-0x40]
    // 0x6d35a0: StoreField: r3->field_b = r1
    //     0x6d35a0: stur            w1, [x3, #0xb]
    // 0x6d35a4: r1 = Null
    //     0x6d35a4: mov             x1, NULL
    // 0x6d35a8: r2 = 14
    //     0x6d35a8: mov             x2, #0xe
    // 0x6d35ac: r0 = AllocateArray()
    //     0x6d35ac: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d35b0: mov             x2, x0
    // 0x6d35b4: ldur            x0, [fp, #-0x28]
    // 0x6d35b8: stur            x2, [fp, #-0x40]
    // 0x6d35bc: StoreField: r2->field_f = r0
    //     0x6d35bc: stur            w0, [x2, #0xf]
    // 0x6d35c0: r16 = Instance_SizedBox
    //     0x6d35c0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6d35c4: ldr             x16, [x16, #0x220]
    // 0x6d35c8: StoreField: r2->field_13 = r16
    //     0x6d35c8: stur            w16, [x2, #0x13]
    // 0x6d35cc: ldur            x0, [fp, #-0x30]
    // 0x6d35d0: ArrayStore: r2[0] = r0  ; List_4
    //     0x6d35d0: stur            w0, [x2, #0x17]
    // 0x6d35d4: r16 = Instance_SizedBox
    //     0x6d35d4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6d35d8: ldr             x16, [x16, #0x220]
    // 0x6d35dc: StoreField: r2->field_1b = r16
    //     0x6d35dc: stur            w16, [x2, #0x1b]
    // 0x6d35e0: ldur            x0, [fp, #-0x38]
    // 0x6d35e4: StoreField: r2->field_1f = r0
    //     0x6d35e4: stur            w0, [x2, #0x1f]
    // 0x6d35e8: r16 = Instance_SizedBox
    //     0x6d35e8: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6d35ec: ldr             x16, [x16, #0x220]
    // 0x6d35f0: StoreField: r2->field_23 = r16
    //     0x6d35f0: stur            w16, [x2, #0x23]
    // 0x6d35f4: ldur            x0, [fp, #-0x10]
    // 0x6d35f8: StoreField: r2->field_27 = r0
    //     0x6d35f8: stur            w0, [x2, #0x27]
    // 0x6d35fc: r1 = <Widget>
    //     0x6d35fc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6d3600: r0 = AllocateGrowableArray()
    //     0x6d3600: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6d3604: mov             x1, x0
    // 0x6d3608: ldur            x0, [fp, #-0x40]
    // 0x6d360c: stur            x1, [fp, #-0x10]
    // 0x6d3610: StoreField: r1->field_f = r0
    //     0x6d3610: stur            w0, [x1, #0xf]
    // 0x6d3614: r0 = 14
    //     0x6d3614: mov             x0, #0xe
    // 0x6d3618: StoreField: r1->field_b = r0
    //     0x6d3618: stur            w0, [x1, #0xb]
    // 0x6d361c: r0 = Column()
    //     0x6d361c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6d3620: mov             x1, x0
    // 0x6d3624: r0 = Instance_Axis
    //     0x6d3624: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6d3628: stur            x1, [fp, #-0x28]
    // 0x6d362c: StoreField: r1->field_f = r0
    //     0x6d362c: stur            w0, [x1, #0xf]
    // 0x6d3630: r2 = Instance_MainAxisAlignment
    //     0x6d3630: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6d3634: ldr             x2, [x2, #0x230]
    // 0x6d3638: StoreField: r1->field_13 = r2
    //     0x6d3638: stur            w2, [x1, #0x13]
    // 0x6d363c: r2 = Instance_MainAxisSize
    //     0x6d363c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x6d3640: ldr             x2, [x2, #0xb60]
    // 0x6d3644: ArrayStore: r1[0] = r2  ; List_4
    //     0x6d3644: stur            w2, [x1, #0x17]
    // 0x6d3648: r2 = Instance_CrossAxisAlignment
    //     0x6d3648: add             x2, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6d364c: ldr             x2, [x2, #0x338]
    // 0x6d3650: StoreField: r1->field_1b = r2
    //     0x6d3650: stur            w2, [x1, #0x1b]
    // 0x6d3654: r2 = Instance_VerticalDirection
    //     0x6d3654: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6d3658: ldr             x2, [x2, #0x340]
    // 0x6d365c: StoreField: r1->field_23 = r2
    //     0x6d365c: stur            w2, [x1, #0x23]
    // 0x6d3660: r2 = Instance_Clip
    //     0x6d3660: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6d3664: ldr             x2, [x2, #0x348]
    // 0x6d3668: StoreField: r1->field_2b = r2
    //     0x6d3668: stur            w2, [x1, #0x2b]
    // 0x6d366c: StoreField: r1->field_2f = rZR
    //     0x6d366c: stur            xzr, [x1, #0x2f]
    // 0x6d3670: ldur            x2, [fp, #-0x10]
    // 0x6d3674: StoreField: r1->field_b = r2
    //     0x6d3674: stur            w2, [x1, #0xb]
    // 0x6d3678: r0 = SingleChildScrollView()
    //     0x6d3678: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x6d367c: mov             x3, x0
    // 0x6d3680: r0 = Instance_Axis
    //     0x6d3680: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6d3684: stur            x3, [fp, #-0x10]
    // 0x6d3688: StoreField: r3->field_b = r0
    //     0x6d3688: stur            w0, [x3, #0xb]
    // 0x6d368c: r0 = false
    //     0x6d368c: add             x0, NULL, #0x30  ; false
    // 0x6d3690: StoreField: r3->field_f = r0
    //     0x6d3690: stur            w0, [x3, #0xf]
    // 0x6d3694: ldur            x1, [fp, #-0x28]
    // 0x6d3698: StoreField: r3->field_23 = r1
    //     0x6d3698: stur            w1, [x3, #0x23]
    // 0x6d369c: r1 = Instance_DragStartBehavior
    //     0x6d369c: ldr             x1, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6d36a0: StoreField: r3->field_27 = r1
    //     0x6d36a0: stur            w1, [x3, #0x27]
    // 0x6d36a4: r1 = Instance_Clip
    //     0x6d36a4: add             x1, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6d36a8: ldr             x1, [x1, #0x2d8]
    // 0x6d36ac: StoreField: r3->field_2b = r1
    //     0x6d36ac: stur            w1, [x3, #0x2b]
    // 0x6d36b0: r1 = Instance_HitTestBehavior
    //     0x6d36b0: add             x1, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x6d36b4: ldr             x1, [x1, #0xe20]
    // 0x6d36b8: StoreField: r3->field_2f = r1
    //     0x6d36b8: stur            w1, [x3, #0x2f]
    // 0x6d36bc: ldur            x2, [fp, #-0x18]
    // 0x6d36c0: r1 = Function '<anonymous closure>': static.
    //     0x6d36c0: add             x1, PP, #0x19, lsl #12  ; [pp+0x199e8] AnonymousClosure: static (0x6ce104), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x6d36c4: ldr             x1, [x1, #0x9e8]
    // 0x6d36c8: r0 = AllocateClosure()
    //     0x6d36c8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d36cc: stur            x0, [fp, #-0x28]
    // 0x6d36d0: r0 = TextButton()
    //     0x6d36d0: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x6d36d4: mov             x1, x0
    // 0x6d36d8: ldur            x0, [fp, #-0x28]
    // 0x6d36dc: stur            x1, [fp, #-0x30]
    // 0x6d36e0: StoreField: r1->field_b = r0
    //     0x6d36e0: stur            w0, [x1, #0xb]
    // 0x6d36e4: r0 = false
    //     0x6d36e4: add             x0, NULL, #0x30  ; false
    // 0x6d36e8: StoreField: r1->field_27 = r0
    //     0x6d36e8: stur            w0, [x1, #0x27]
    // 0x6d36ec: r2 = true
    //     0x6d36ec: add             x2, NULL, #0x20  ; true
    // 0x6d36f0: StoreField: r1->field_2f = r2
    //     0x6d36f0: stur            w2, [x1, #0x2f]
    // 0x6d36f4: r3 = Instance_Text
    //     0x6d36f4: add             x3, PP, #0x14, lsl #12  ; [pp+0x147d0] Obj!Text@a1b0e1
    //     0x6d36f8: ldr             x3, [x3, #0x7d0]
    // 0x6d36fc: StoreField: r1->field_37 = r3
    //     0x6d36fc: stur            w3, [x1, #0x37]
    // 0x6d3700: ldur            x3, [fp, #-8]
    // 0x6d3704: LoadField: r4 = r3->field_f
    //     0x6d3704: ldur            w4, [x3, #0xf]
    // 0x6d3708: DecompressPointer r4
    //     0x6d3708: add             x4, x4, HEAP, lsl #32
    // 0x6d370c: cmp             w4, NULL
    // 0x6d3710: b.ne            #0x6d3720
    // 0x6d3714: r5 = "Ekle"
    //     0x6d3714: add             x5, PP, #0x19, lsl #12  ; [pp+0x191b8] "Ekle"
    //     0x6d3718: ldr             x5, [x5, #0x1b8]
    // 0x6d371c: b               #0x6d3728
    // 0x6d3720: r5 = "Güncelle"
    //     0x6d3720: add             x5, PP, #0x13, lsl #12  ; [pp+0x13b48] "Güncelle"
    //     0x6d3724: ldr             x5, [x5, #0xb48]
    // 0x6d3728: ldur            x4, [fp, #-0x20]
    // 0x6d372c: ldur            x3, [fp, #-0x10]
    // 0x6d3730: stur            x5, [fp, #-8]
    // 0x6d3734: r0 = Text()
    //     0x6d3734: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6d3738: mov             x3, x0
    // 0x6d373c: ldur            x0, [fp, #-8]
    // 0x6d3740: stur            x3, [fp, #-0x28]
    // 0x6d3744: StoreField: r3->field_b = r0
    //     0x6d3744: stur            w0, [x3, #0xb]
    // 0x6d3748: ldur            x2, [fp, #-0x18]
    // 0x6d374c: r1 = Function '<anonymous closure>': static.
    //     0x6d374c: add             x1, PP, #0x19, lsl #12  ; [pp+0x199f0] AnonymousClosure: static (0x6d381c), in [package:umrem_demo/features/admin/widgets/events/edit_dialog.dart] ::showAddEditDialog (0x6d2cc8)
    //     0x6d3750: ldr             x1, [x1, #0x9f0]
    // 0x6d3754: r0 = AllocateClosure()
    //     0x6d3754: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d3758: stur            x0, [fp, #-8]
    // 0x6d375c: r0 = ElevatedButton()
    //     0x6d375c: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x6d3760: mov             x3, x0
    // 0x6d3764: ldur            x0, [fp, #-8]
    // 0x6d3768: stur            x3, [fp, #-0x18]
    // 0x6d376c: StoreField: r3->field_b = r0
    //     0x6d376c: stur            w0, [x3, #0xb]
    // 0x6d3770: r0 = false
    //     0x6d3770: add             x0, NULL, #0x30  ; false
    // 0x6d3774: StoreField: r3->field_27 = r0
    //     0x6d3774: stur            w0, [x3, #0x27]
    // 0x6d3778: r1 = true
    //     0x6d3778: add             x1, NULL, #0x20  ; true
    // 0x6d377c: StoreField: r3->field_2f = r1
    //     0x6d377c: stur            w1, [x3, #0x2f]
    // 0x6d3780: ldur            x1, [fp, #-0x28]
    // 0x6d3784: StoreField: r3->field_37 = r1
    //     0x6d3784: stur            w1, [x3, #0x37]
    // 0x6d3788: r1 = Null
    //     0x6d3788: mov             x1, NULL
    // 0x6d378c: r2 = 4
    //     0x6d378c: mov             x2, #4
    // 0x6d3790: r0 = AllocateArray()
    //     0x6d3790: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d3794: mov             x2, x0
    // 0x6d3798: ldur            x0, [fp, #-0x30]
    // 0x6d379c: stur            x2, [fp, #-8]
    // 0x6d37a0: StoreField: r2->field_f = r0
    //     0x6d37a0: stur            w0, [x2, #0xf]
    // 0x6d37a4: ldur            x0, [fp, #-0x18]
    // 0x6d37a8: StoreField: r2->field_13 = r0
    //     0x6d37a8: stur            w0, [x2, #0x13]
    // 0x6d37ac: r1 = <Widget>
    //     0x6d37ac: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6d37b0: r0 = AllocateGrowableArray()
    //     0x6d37b0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6d37b4: mov             x1, x0
    // 0x6d37b8: ldur            x0, [fp, #-8]
    // 0x6d37bc: stur            x1, [fp, #-0x18]
    // 0x6d37c0: StoreField: r1->field_f = r0
    //     0x6d37c0: stur            w0, [x1, #0xf]
    // 0x6d37c4: r0 = 4
    //     0x6d37c4: mov             x0, #4
    // 0x6d37c8: StoreField: r1->field_b = r0
    //     0x6d37c8: stur            w0, [x1, #0xb]
    // 0x6d37cc: r0 = AlertDialog()
    //     0x6d37cc: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x6d37d0: ldur            x1, [fp, #-0x20]
    // 0x6d37d4: StoreField: r0->field_f = r1
    //     0x6d37d4: stur            w1, [x0, #0xf]
    // 0x6d37d8: ldur            x1, [fp, #-0x10]
    // 0x6d37dc: StoreField: r0->field_1b = r1
    //     0x6d37dc: stur            w1, [x0, #0x1b]
    // 0x6d37e0: ldur            x1, [fp, #-0x18]
    // 0x6d37e4: StoreField: r0->field_27 = r1
    //     0x6d37e4: stur            w1, [x0, #0x27]
    // 0x6d37e8: r1 = false
    //     0x6d37e8: add             x1, NULL, #0x30  ; false
    // 0x6d37ec: StoreField: r0->field_6b = r1
    //     0x6d37ec: stur            w1, [x0, #0x6b]
    // 0x6d37f0: LeaveFrame
    //     0x6d37f0: mov             SP, fp
    //     0x6d37f4: ldp             fp, lr, [SP], #0x10
    // 0x6d37f8: ret
    //     0x6d37f8: ret             
    // 0x6d37fc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d37fc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d3800: b               #0x6d2ff0
  }
  [closure] static Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6d381c, size: 0x34c
    // 0x6d381c: EnterFrame
    //     0x6d381c: stp             fp, lr, [SP, #-0x10]!
    //     0x6d3820: mov             fp, SP
    // 0x6d3824: AllocStack(0x70)
    //     0x6d3824: sub             SP, SP, #0x70
    // 0x6d3828: SetupParameters(dynamic _ /* r1 */)
    //     0x6d3828: stur            NULL, [fp, #-8]
    //     0x6d382c: mov             x0, #0
    //     0x6d3830: add             x1, fp, w0, sxtw #2
    //     0x6d3834: ldr             x1, [x1, #0x10]
    //     0x6d3838: ldur            w2, [x1, #0x17]
    //     0x6d383c: add             x2, x2, HEAP, lsl #32
    //     0x6d3840: stur            x2, [fp, #-0x10]
    // 0x6d3844: CheckStackOverflow
    //     0x6d3844: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d3848: cmp             SP, x16
    //     0x6d384c: b.ls            #0x6d3b60
    // 0x6d3850: InitAsync() -> Future<void?>
    //     0x6d3850: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6d3854: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d3858: ldur            x0, [fp, #-0x10]
    // 0x6d385c: LoadField: r1 = r0->field_f
    //     0x6d385c: ldur            w1, [x0, #0xf]
    // 0x6d3860: DecompressPointer r1
    //     0x6d3860: add             x1, x1, HEAP, lsl #32
    // 0x6d3864: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6d3864: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6d3868: r0 = of()
    //     0x6d3868: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x6d386c: mov             x2, x0
    // 0x6d3870: ldur            x0, [fp, #-0x10]
    // 0x6d3874: stur            x2, [fp, #-0x28]
    // 0x6d3878: LoadField: r3 = r0->field_b
    //     0x6d3878: ldur            w3, [x0, #0xb]
    // 0x6d387c: DecompressPointer r3
    //     0x6d387c: add             x3, x3, HEAP, lsl #32
    // 0x6d3880: stur            x3, [fp, #-0x20]
    // 0x6d3884: LoadField: r4 = r3->field_1b
    //     0x6d3884: ldur            w4, [x3, #0x1b]
    // 0x6d3888: DecompressPointer r4
    //     0x6d3888: add             x4, x4, HEAP, lsl #32
    // 0x6d388c: stur            x4, [fp, #-0x18]
    // 0x6d3890: LoadField: r1 = r4->field_27
    //     0x6d3890: ldur            w1, [x4, #0x27]
    // 0x6d3894: DecompressPointer r1
    //     0x6d3894: add             x1, x1, HEAP, lsl #32
    // 0x6d3898: LoadField: r5 = r1->field_7
    //     0x6d3898: ldur            w5, [x1, #7]
    // 0x6d389c: DecompressPointer r5
    //     0x6d389c: add             x5, x5, HEAP, lsl #32
    // 0x6d38a0: mov             x1, x5
    // 0x6d38a4: r0 = trim()
    //     0x6d38a4: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d38a8: LoadField: r1 = r0->field_7
    //     0x6d38a8: ldur            w1, [x0, #7]
    // 0x6d38ac: cbnz            w1, #0x6d38b8
    // 0x6d38b0: r0 = Null
    //     0x6d38b0: mov             x0, NULL
    // 0x6d38b4: r0 = ReturnAsyncNotFuture()
    //     0x6d38b4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d38b8: ldur            x0, [fp, #-0x10]
    // 0x6d38bc: ldur            x1, [fp, #-0x20]
    // 0x6d38c0: LoadField: r2 = r0->field_f
    //     0x6d38c0: ldur            w2, [x0, #0xf]
    // 0x6d38c4: DecompressPointer r2
    //     0x6d38c4: add             x2, x2, HEAP, lsl #32
    // 0x6d38c8: r16 = <EventProvider>
    //     0x6d38c8: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b80] TypeArguments: <EventProvider>
    //     0x6d38cc: ldr             x16, [x16, #0xb80]
    // 0x6d38d0: stp             x2, x16, [SP]
    // 0x6d38d4: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6d38d4: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6d38d8: r0 = ReadContext.read()
    //     0x6d38d8: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x6d38dc: mov             x2, x0
    // 0x6d38e0: ldur            x0, [fp, #-0x20]
    // 0x6d38e4: stur            x2, [fp, #-0x38]
    // 0x6d38e8: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6d38e8: ldur            w1, [x0, #0x17]
    // 0x6d38ec: DecompressPointer r1
    //     0x6d38ec: add             x1, x1, HEAP, lsl #32
    // 0x6d38f0: cmp             w1, NULL
    // 0x6d38f4: b.ne            #0x6d3924
    // 0x6d38f8: r1 = LoadStaticField(0xfe4)
    //     0x6d38f8: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x6d38fc: ldr             x1, [x1, #0x1fc8]
    // 0x6d3900: cmp             w1, NULL
    // 0x6d3904: b.ne            #0x6d3910
    // 0x6d3908: r1 = Null
    //     0x6d3908: mov             x1, NULL
    // 0x6d390c: b               #0x6d391c
    // 0x6d3910: LoadField: r3 = r1->field_4b
    //     0x6d3910: ldur            w3, [x1, #0x4b]
    // 0x6d3914: DecompressPointer r3
    //     0x6d3914: add             x3, x3, HEAP, lsl #32
    // 0x6d3918: mov             x1, x3
    // 0x6d391c: mov             x3, x1
    // 0x6d3920: b               #0x6d3928
    // 0x6d3924: mov             x3, x1
    // 0x6d3928: stur            x3, [fp, #-0x30]
    // 0x6d392c: LoadField: r1 = r0->field_f
    //     0x6d392c: ldur            w1, [x0, #0xf]
    // 0x6d3930: DecompressPointer r1
    //     0x6d3930: add             x1, x1, HEAP, lsl #32
    // 0x6d3934: cmp             w1, NULL
    // 0x6d3938: b.ne            #0x6d3a38
    // 0x6d393c: ldur            x4, [fp, #-0x18]
    // 0x6d3940: LoadField: r1 = r4->field_27
    //     0x6d3940: ldur            w1, [x4, #0x27]
    // 0x6d3944: DecompressPointer r1
    //     0x6d3944: add             x1, x1, HEAP, lsl #32
    // 0x6d3948: LoadField: r4 = r1->field_7
    //     0x6d3948: ldur            w4, [x1, #7]
    // 0x6d394c: DecompressPointer r4
    //     0x6d394c: add             x4, x4, HEAP, lsl #32
    // 0x6d3950: mov             x1, x4
    // 0x6d3954: r0 = trim()
    //     0x6d3954: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d3958: mov             x2, x0
    // 0x6d395c: ldur            x0, [fp, #-0x20]
    // 0x6d3960: stur            x2, [fp, #-0x48]
    // 0x6d3964: LoadField: r3 = r0->field_13
    //     0x6d3964: ldur            w3, [x0, #0x13]
    // 0x6d3968: DecompressPointer r3
    //     0x6d3968: add             x3, x3, HEAP, lsl #32
    // 0x6d396c: stur            x3, [fp, #-0x40]
    // 0x6d3970: LoadField: r1 = r0->field_23
    //     0x6d3970: ldur            w1, [x0, #0x23]
    // 0x6d3974: DecompressPointer r1
    //     0x6d3974: add             x1, x1, HEAP, lsl #32
    // 0x6d3978: LoadField: r4 = r1->field_27
    //     0x6d3978: ldur            w4, [x1, #0x27]
    // 0x6d397c: DecompressPointer r4
    //     0x6d397c: add             x4, x4, HEAP, lsl #32
    // 0x6d3980: LoadField: r1 = r4->field_7
    //     0x6d3980: ldur            w1, [x4, #7]
    // 0x6d3984: DecompressPointer r1
    //     0x6d3984: add             x1, x1, HEAP, lsl #32
    // 0x6d3988: r0 = trim()
    //     0x6d3988: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d398c: mov             x2, x0
    // 0x6d3990: ldur            x0, [fp, #-0x20]
    // 0x6d3994: stur            x2, [fp, #-0x60]
    // 0x6d3998: LoadField: r3 = r0->field_27
    //     0x6d3998: ldur            w3, [x0, #0x27]
    // 0x6d399c: DecompressPointer r3
    //     0x6d399c: add             x3, x3, HEAP, lsl #32
    // 0x6d39a0: stur            x3, [fp, #-0x58]
    // 0x6d39a4: LoadField: r4 = r0->field_1f
    //     0x6d39a4: ldur            w4, [x0, #0x1f]
    // 0x6d39a8: DecompressPointer r4
    //     0x6d39a8: add             x4, x4, HEAP, lsl #32
    // 0x6d39ac: stur            x4, [fp, #-0x50]
    // 0x6d39b0: LoadField: r0 = r4->field_27
    //     0x6d39b0: ldur            w0, [x4, #0x27]
    // 0x6d39b4: DecompressPointer r0
    //     0x6d39b4: add             x0, x0, HEAP, lsl #32
    // 0x6d39b8: LoadField: r1 = r0->field_7
    //     0x6d39b8: ldur            w1, [x0, #7]
    // 0x6d39bc: DecompressPointer r1
    //     0x6d39bc: add             x1, x1, HEAP, lsl #32
    // 0x6d39c0: r0 = trim()
    //     0x6d39c0: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d39c4: LoadField: r1 = r0->field_7
    //     0x6d39c4: ldur            w1, [x0, #7]
    // 0x6d39c8: cbnz            w1, #0x6d39d4
    // 0x6d39cc: r5 = Null
    //     0x6d39cc: mov             x5, NULL
    // 0x6d39d0: b               #0x6d39f4
    // 0x6d39d4: ldur            x0, [fp, #-0x50]
    // 0x6d39d8: LoadField: r1 = r0->field_27
    //     0x6d39d8: ldur            w1, [x0, #0x27]
    // 0x6d39dc: DecompressPointer r1
    //     0x6d39dc: add             x1, x1, HEAP, lsl #32
    // 0x6d39e0: LoadField: r0 = r1->field_7
    //     0x6d39e0: ldur            w0, [x1, #7]
    // 0x6d39e4: DecompressPointer r0
    //     0x6d39e4: add             x0, x0, HEAP, lsl #32
    // 0x6d39e8: mov             x1, x0
    // 0x6d39ec: r0 = trim()
    //     0x6d39ec: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d39f0: mov             x5, x0
    // 0x6d39f4: ldur            x0, [fp, #-0x58]
    // 0x6d39f8: r6 = LoadInt32Instr(r0)
    //     0x6d39f8: sbfx            x6, x0, #1, #0x1f
    //     0x6d39fc: tbz             w0, #0, #0x6d3a04
    //     0x6d3a00: ldur            x6, [x0, #7]
    // 0x6d3a04: ldur            x16, [fp, #-0x48]
    // 0x6d3a08: str             x16, [SP]
    // 0x6d3a0c: ldur            x1, [fp, #-0x38]
    // 0x6d3a10: ldur            x2, [fp, #-0x30]
    // 0x6d3a14: ldur            x3, [fp, #-0x40]
    // 0x6d3a18: ldur            x7, [fp, #-0x60]
    // 0x6d3a1c: r0 = createEvent()
    //     0x6d3a1c: bl              #0x6d45ec  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::createEvent
    // 0x6d3a20: mov             x1, x0
    // 0x6d3a24: stur            x1, [fp, #-0x40]
    // 0x6d3a28: r0 = Await()
    //     0x6d3a28: bl              #0x3dd188  ; AwaitStub
    // 0x6d3a2c: cmp             w0, NULL
    // 0x6d3a30: b.eq            #0x6d3b58
    // 0x6d3a34: b               #0x6d3b44
    // 0x6d3a38: ldur            x4, [fp, #-0x18]
    // 0x6d3a3c: LoadField: r7 = r1->field_7
    //     0x6d3a3c: ldur            w7, [x1, #7]
    // 0x6d3a40: DecompressPointer r7
    //     0x6d3a40: add             x7, x7, HEAP, lsl #32
    // 0x6d3a44: stur            x7, [fp, #-0x40]
    // 0x6d3a48: LoadField: r1 = r4->field_27
    //     0x6d3a48: ldur            w1, [x4, #0x27]
    // 0x6d3a4c: DecompressPointer r1
    //     0x6d3a4c: add             x1, x1, HEAP, lsl #32
    // 0x6d3a50: LoadField: r2 = r1->field_7
    //     0x6d3a50: ldur            w2, [x1, #7]
    // 0x6d3a54: DecompressPointer r2
    //     0x6d3a54: add             x2, x2, HEAP, lsl #32
    // 0x6d3a58: mov             x1, x2
    // 0x6d3a5c: r0 = trim()
    //     0x6d3a5c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d3a60: mov             x2, x0
    // 0x6d3a64: ldur            x0, [fp, #-0x20]
    // 0x6d3a68: stur            x2, [fp, #-0x48]
    // 0x6d3a6c: LoadField: r3 = r0->field_13
    //     0x6d3a6c: ldur            w3, [x0, #0x13]
    // 0x6d3a70: DecompressPointer r3
    //     0x6d3a70: add             x3, x3, HEAP, lsl #32
    // 0x6d3a74: stur            x3, [fp, #-0x18]
    // 0x6d3a78: LoadField: r1 = r0->field_23
    //     0x6d3a78: ldur            w1, [x0, #0x23]
    // 0x6d3a7c: DecompressPointer r1
    //     0x6d3a7c: add             x1, x1, HEAP, lsl #32
    // 0x6d3a80: LoadField: r4 = r1->field_27
    //     0x6d3a80: ldur            w4, [x1, #0x27]
    // 0x6d3a84: DecompressPointer r4
    //     0x6d3a84: add             x4, x4, HEAP, lsl #32
    // 0x6d3a88: LoadField: r1 = r4->field_7
    //     0x6d3a88: ldur            w1, [x4, #7]
    // 0x6d3a8c: DecompressPointer r1
    //     0x6d3a8c: add             x1, x1, HEAP, lsl #32
    // 0x6d3a90: r0 = trim()
    //     0x6d3a90: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d3a94: mov             x2, x0
    // 0x6d3a98: ldur            x0, [fp, #-0x20]
    // 0x6d3a9c: stur            x2, [fp, #-0x60]
    // 0x6d3aa0: LoadField: r3 = r0->field_27
    //     0x6d3aa0: ldur            w3, [x0, #0x27]
    // 0x6d3aa4: DecompressPointer r3
    //     0x6d3aa4: add             x3, x3, HEAP, lsl #32
    // 0x6d3aa8: stur            x3, [fp, #-0x58]
    // 0x6d3aac: LoadField: r4 = r0->field_1f
    //     0x6d3aac: ldur            w4, [x0, #0x1f]
    // 0x6d3ab0: DecompressPointer r4
    //     0x6d3ab0: add             x4, x4, HEAP, lsl #32
    // 0x6d3ab4: stur            x4, [fp, #-0x50]
    // 0x6d3ab8: LoadField: r0 = r4->field_27
    //     0x6d3ab8: ldur            w0, [x4, #0x27]
    // 0x6d3abc: DecompressPointer r0
    //     0x6d3abc: add             x0, x0, HEAP, lsl #32
    // 0x6d3ac0: LoadField: r1 = r0->field_7
    //     0x6d3ac0: ldur            w1, [x0, #7]
    // 0x6d3ac4: DecompressPointer r1
    //     0x6d3ac4: add             x1, x1, HEAP, lsl #32
    // 0x6d3ac8: r0 = trim()
    //     0x6d3ac8: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d3acc: LoadField: r1 = r0->field_7
    //     0x6d3acc: ldur            w1, [x0, #7]
    // 0x6d3ad0: cbnz            w1, #0x6d3adc
    // 0x6d3ad4: r5 = Null
    //     0x6d3ad4: mov             x5, NULL
    // 0x6d3ad8: b               #0x6d3afc
    // 0x6d3adc: ldur            x0, [fp, #-0x50]
    // 0x6d3ae0: LoadField: r1 = r0->field_27
    //     0x6d3ae0: ldur            w1, [x0, #0x27]
    // 0x6d3ae4: DecompressPointer r1
    //     0x6d3ae4: add             x1, x1, HEAP, lsl #32
    // 0x6d3ae8: LoadField: r0 = r1->field_7
    //     0x6d3ae8: ldur            w0, [x1, #7]
    // 0x6d3aec: DecompressPointer r0
    //     0x6d3aec: add             x0, x0, HEAP, lsl #32
    // 0x6d3af0: mov             x1, x0
    // 0x6d3af4: r0 = trim()
    //     0x6d3af4: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6d3af8: mov             x5, x0
    // 0x6d3afc: ldur            x0, [fp, #-0x58]
    // 0x6d3b00: r6 = LoadInt32Instr(r0)
    //     0x6d3b00: sbfx            x6, x0, #1, #0x1f
    //     0x6d3b04: tbz             w0, #0, #0x6d3b0c
    //     0x6d3b08: ldur            x6, [x0, #7]
    // 0x6d3b0c: ldur            x16, [fp, #-0x60]
    // 0x6d3b10: ldur            lr, [fp, #-0x48]
    // 0x6d3b14: stp             lr, x16, [SP]
    // 0x6d3b18: ldur            x1, [fp, #-0x38]
    // 0x6d3b1c: ldur            x2, [fp, #-0x30]
    // 0x6d3b20: ldur            x3, [fp, #-0x18]
    // 0x6d3b24: ldur            x7, [fp, #-0x40]
    // 0x6d3b28: r0 = updateEvent()
    //     0x6d3b28: bl              #0x6d3b68  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::updateEvent
    // 0x6d3b2c: mov             x1, x0
    // 0x6d3b30: stur            x1, [fp, #-0x18]
    // 0x6d3b34: r0 = Await()
    //     0x6d3b34: bl              #0x3dd188  ; AwaitStub
    // 0x6d3b38: r16 = true
    //     0x6d3b38: add             x16, NULL, #0x20  ; true
    // 0x6d3b3c: cmp             w0, w16
    // 0x6d3b40: b.ne            #0x6d3b58
    // 0x6d3b44: r16 = <Object?>
    //     0x6d3b44: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6d3b48: ldur            lr, [fp, #-0x28]
    // 0x6d3b4c: stp             lr, x16, [SP]
    // 0x6d3b50: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6d3b50: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6d3b54: r0 = pop()
    //     0x6d3b54: bl              #0x3fc2bc  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pop
    // 0x6d3b58: r0 = Null
    //     0x6d3b58: mov             x0, NULL
    // 0x6d3b5c: r0 = ReturnAsyncNotFuture()
    //     0x6d3b5c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d3b60: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d3b60: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d3b64: b               #0x6d3850
  }
  [closure] static void <anonymous closure>(dynamic, String) {
    // ** addr: 0x6d496c, size: 0x90
    // 0x6d496c: EnterFrame
    //     0x6d496c: stp             fp, lr, [SP, #-0x10]!
    //     0x6d4970: mov             fp, SP
    // 0x6d4974: AllocStack(0x20)
    //     0x6d4974: sub             SP, SP, #0x20
    // 0x6d4978: SetupParameters([dynamic _ /* r0 */])
    //     0x6d4978: ldr             x0, [fp, #0x18]
    //     0x6d497c: ldur            w1, [x0, #0x17]
    //     0x6d4980: add             x1, x1, HEAP, lsl #32
    //     0x6d4984: stur            x1, [fp, #-8]
    // 0x6d4988: CheckStackOverflow
    //     0x6d4988: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d498c: cmp             SP, x16
    //     0x6d4990: b.ls            #0x6d49f4
    // 0x6d4994: r1 = 1
    //     0x6d4994: mov             x1, #1
    // 0x6d4998: r0 = AllocateContext()
    //     0x6d4998: bl              #0x927010  ; AllocateContextStub
    // 0x6d499c: mov             x1, x0
    // 0x6d49a0: ldur            x0, [fp, #-8]
    // 0x6d49a4: StoreField: r1->field_b = r0
    //     0x6d49a4: stur            w0, [x1, #0xb]
    // 0x6d49a8: ldr             x2, [fp, #0x10]
    // 0x6d49ac: StoreField: r1->field_f = r2
    //     0x6d49ac: stur            w2, [x1, #0xf]
    // 0x6d49b0: LoadField: r3 = r0->field_13
    //     0x6d49b0: ldur            w3, [x0, #0x13]
    // 0x6d49b4: DecompressPointer r3
    //     0x6d49b4: add             x3, x3, HEAP, lsl #32
    // 0x6d49b8: mov             x2, x1
    // 0x6d49bc: stur            x3, [fp, #-0x10]
    // 0x6d49c0: r1 = Function '<anonymous closure>': static.
    //     0x6d49c0: add             x1, PP, #0x19, lsl #12  ; [pp+0x199f8] AnonymousClosure: static (0x6d49fc), in [package:umrem_demo/features/admin/widgets/events/edit_dialog.dart] ::showAddEditDialog (0x6d2cc8)
    //     0x6d49c4: ldr             x1, [x1, #0x9f8]
    // 0x6d49c8: r0 = AllocateClosure()
    //     0x6d49c8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d49cc: ldur            x16, [fp, #-0x10]
    // 0x6d49d0: stp             x0, x16, [SP]
    // 0x6d49d4: ldur            x0, [fp, #-0x10]
    // 0x6d49d8: ClosureCall
    //     0x6d49d8: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x6d49dc: ldur            x2, [x0, #0x1f]
    //     0x6d49e0: blr             x2
    // 0x6d49e4: r0 = Null
    //     0x6d49e4: mov             x0, NULL
    // 0x6d49e8: LeaveFrame
    //     0x6d49e8: mov             SP, fp
    //     0x6d49ec: ldp             fp, lr, [SP], #0x10
    // 0x6d49f0: ret
    //     0x6d49f0: ret             
    // 0x6d49f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d49f4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d49f8: b               #0x6d4994
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x6d49fc, size: 0xbc
    // 0x6d49fc: EnterFrame
    //     0x6d49fc: stp             fp, lr, [SP, #-0x10]!
    //     0x6d4a00: mov             fp, SP
    // 0x6d4a04: AllocStack(0x8)
    //     0x6d4a04: sub             SP, SP, #8
    // 0x6d4a08: SetupParameters([dynamic _ /* r0 */])
    //     0x6d4a08: ldr             x0, [fp, #0x10]
    //     0x6d4a0c: ldur            w2, [x0, #0x17]
    //     0x6d4a10: add             x2, x2, HEAP, lsl #32
    //     0x6d4a14: stur            x2, [fp, #-8]
    // 0x6d4a18: CheckStackOverflow
    //     0x6d4a18: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d4a1c: cmp             SP, x16
    //     0x6d4a20: b.ls            #0x6d4ab0
    // 0x6d4a24: LoadField: r1 = r2->field_f
    //     0x6d4a24: ldur            w1, [x2, #0xf]
    // 0x6d4a28: DecompressPointer r1
    //     0x6d4a28: add             x1, x1, HEAP, lsl #32
    // 0x6d4a2c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6d4a2c: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6d4a30: r0 = tryParse()
    //     0x6d4a30: bl              #0x3df454  ; [dart:core] int::tryParse
    // 0x6d4a34: cmp             w0, NULL
    // 0x6d4a38: b.ne            #0x6d4a44
    // 0x6d4a3c: r3 = 60
    //     0x6d4a3c: mov             x3, #0x3c
    // 0x6d4a40: b               #0x6d4a54
    // 0x6d4a44: r2 = LoadInt32Instr(r0)
    //     0x6d4a44: sbfx            x2, x0, #1, #0x1f
    //     0x6d4a48: tbz             w0, #0, #0x6d4a50
    //     0x6d4a4c: ldur            x2, [x0, #7]
    // 0x6d4a50: mov             x3, x2
    // 0x6d4a54: ldur            x2, [fp, #-8]
    // 0x6d4a58: LoadField: r4 = r2->field_b
    //     0x6d4a58: ldur            w4, [x2, #0xb]
    // 0x6d4a5c: DecompressPointer r4
    //     0x6d4a5c: add             x4, x4, HEAP, lsl #32
    // 0x6d4a60: LoadField: r2 = r4->field_b
    //     0x6d4a60: ldur            w2, [x4, #0xb]
    // 0x6d4a64: DecompressPointer r2
    //     0x6d4a64: add             x2, x2, HEAP, lsl #32
    // 0x6d4a68: r0 = BoxInt64Instr(r3)
    //     0x6d4a68: sbfiz           x0, x3, #1, #0x1f
    //     0x6d4a6c: cmp             x3, x0, asr #1
    //     0x6d4a70: b.eq            #0x6d4a7c
    //     0x6d4a74: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6d4a78: stur            x3, [x0, #7]
    // 0x6d4a7c: mov             x1, x0
    // 0x6d4a80: StoreField: r2->field_27 = r0
    //     0x6d4a80: stur            w0, [x2, #0x27]
    //     0x6d4a84: tbz             w0, #0, #0x6d4aa0
    //     0x6d4a88: ldurb           w16, [x2, #-1]
    //     0x6d4a8c: ldurb           w17, [x0, #-1]
    //     0x6d4a90: and             x16, x17, x16, lsr #2
    //     0x6d4a94: tst             x16, HEAP, lsr #32
    //     0x6d4a98: b.eq            #0x6d4aa0
    //     0x6d4a9c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6d4aa0: mov             x0, x1
    // 0x6d4aa4: LeaveFrame
    //     0x6d4aa4: mov             SP, fp
    //     0x6d4aa8: ldp             fp, lr, [SP], #0x10
    // 0x6d4aac: ret
    //     0x6d4aac: ret             
    // 0x6d4ab0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d4ab0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d4ab4: b               #0x6d4a24
  }
  [closure] static Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6d4ab8, size: 0x2c4
    // 0x6d4ab8: EnterFrame
    //     0x6d4ab8: stp             fp, lr, [SP, #-0x10]!
    //     0x6d4abc: mov             fp, SP
    // 0x6d4ac0: AllocStack(0x40)
    //     0x6d4ac0: sub             SP, SP, #0x40
    // 0x6d4ac4: SetupParameters(dynamic _ /* r1 */)
    //     0x6d4ac4: stur            NULL, [fp, #-8]
    //     0x6d4ac8: mov             x0, #0
    //     0x6d4acc: add             x1, fp, w0, sxtw #2
    //     0x6d4ad0: ldr             x1, [x1, #0x10]
    //     0x6d4ad4: ldur            w2, [x1, #0x17]
    //     0x6d4ad8: add             x2, x2, HEAP, lsl #32
    //     0x6d4adc: stur            x2, [fp, #-0x10]
    // 0x6d4ae0: CheckStackOverflow
    //     0x6d4ae0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d4ae4: cmp             SP, x16
    //     0x6d4ae8: b.ls            #0x6d4d6c
    // 0x6d4aec: InitAsync() -> Future<void?>
    //     0x6d4aec: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6d4af0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d4af4: ldur            x3, [fp, #-0x10]
    // 0x6d4af8: LoadField: r4 = r3->field_f
    //     0x6d4af8: ldur            w4, [x3, #0xf]
    // 0x6d4afc: DecompressPointer r4
    //     0x6d4afc: add             x4, x4, HEAP, lsl #32
    // 0x6d4b00: stur            x4, [fp, #-0x20]
    // 0x6d4b04: LoadField: r0 = r3->field_b
    //     0x6d4b04: ldur            w0, [x3, #0xb]
    // 0x6d4b08: DecompressPointer r0
    //     0x6d4b08: add             x0, x0, HEAP, lsl #32
    // 0x6d4b0c: LoadField: r5 = r0->field_23
    //     0x6d4b0c: ldur            w5, [x0, #0x23]
    // 0x6d4b10: DecompressPointer r5
    //     0x6d4b10: add             x5, x5, HEAP, lsl #32
    // 0x6d4b14: stur            x5, [fp, #-0x18]
    // 0x6d4b18: LoadField: r0 = r5->field_27
    //     0x6d4b18: ldur            w0, [x5, #0x27]
    // 0x6d4b1c: DecompressPointer r0
    //     0x6d4b1c: add             x0, x0, HEAP, lsl #32
    // 0x6d4b20: LoadField: r1 = r0->field_7
    //     0x6d4b20: ldur            w1, [x0, #7]
    // 0x6d4b24: DecompressPointer r1
    //     0x6d4b24: add             x1, x1, HEAP, lsl #32
    // 0x6d4b28: r0 = LoadClassIdInstr(r1)
    //     0x6d4b28: ldur            x0, [x1, #-1]
    //     0x6d4b2c: ubfx            x0, x0, #0xc, #0x14
    // 0x6d4b30: r2 = ":"
    //     0x6d4b30: ldr             x2, [PP, #0x990]  ; [pp+0x990] ":"
    // 0x6d4b34: r0 = GDT[cid_x0 + -0x1000]()
    //     0x6d4b34: sub             lr, x0, #1, lsl #12
    //     0x6d4b38: ldr             lr, [x21, lr, lsl #3]
    //     0x6d4b3c: blr             lr
    // 0x6d4b40: mov             x2, x0
    // 0x6d4b44: LoadField: r0 = r2->field_b
    //     0x6d4b44: ldur            w0, [x2, #0xb]
    // 0x6d4b48: r1 = LoadInt32Instr(r0)
    //     0x6d4b48: sbfx            x1, x0, #1, #0x1f
    // 0x6d4b4c: mov             x0, x1
    // 0x6d4b50: r1 = 0
    //     0x6d4b50: mov             x1, #0
    // 0x6d4b54: cmp             x1, x0
    // 0x6d4b58: b.hs            #0x6d4d74
    // 0x6d4b5c: LoadField: r0 = r2->field_f
    //     0x6d4b5c: ldur            w0, [x2, #0xf]
    // 0x6d4b60: DecompressPointer r0
    //     0x6d4b60: add             x0, x0, HEAP, lsl #32
    // 0x6d4b64: LoadField: r1 = r0->field_f
    //     0x6d4b64: ldur            w1, [x0, #0xf]
    // 0x6d4b68: DecompressPointer r1
    //     0x6d4b68: add             x1, x1, HEAP, lsl #32
    // 0x6d4b6c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6d4b6c: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6d4b70: r0 = parse()
    //     0x6d4b70: bl              #0x3e9298  ; [dart:core] int::parse
    // 0x6d4b74: mov             x4, x0
    // 0x6d4b78: ldur            x3, [fp, #-0x18]
    // 0x6d4b7c: stur            x4, [fp, #-0x28]
    // 0x6d4b80: LoadField: r0 = r3->field_27
    //     0x6d4b80: ldur            w0, [x3, #0x27]
    // 0x6d4b84: DecompressPointer r0
    //     0x6d4b84: add             x0, x0, HEAP, lsl #32
    // 0x6d4b88: LoadField: r1 = r0->field_7
    //     0x6d4b88: ldur            w1, [x0, #7]
    // 0x6d4b8c: DecompressPointer r1
    //     0x6d4b8c: add             x1, x1, HEAP, lsl #32
    // 0x6d4b90: r0 = LoadClassIdInstr(r1)
    //     0x6d4b90: ldur            x0, [x1, #-1]
    //     0x6d4b94: ubfx            x0, x0, #0xc, #0x14
    // 0x6d4b98: r2 = ":"
    //     0x6d4b98: ldr             x2, [PP, #0x990]  ; [pp+0x990] ":"
    // 0x6d4b9c: r0 = GDT[cid_x0 + -0x1000]()
    //     0x6d4b9c: sub             lr, x0, #1, lsl #12
    //     0x6d4ba0: ldr             lr, [x21, lr, lsl #3]
    //     0x6d4ba4: blr             lr
    // 0x6d4ba8: mov             x2, x0
    // 0x6d4bac: LoadField: r0 = r2->field_b
    //     0x6d4bac: ldur            w0, [x2, #0xb]
    // 0x6d4bb0: r1 = LoadInt32Instr(r0)
    //     0x6d4bb0: sbfx            x1, x0, #1, #0x1f
    // 0x6d4bb4: mov             x0, x1
    // 0x6d4bb8: r1 = 1
    //     0x6d4bb8: mov             x1, #1
    // 0x6d4bbc: cmp             x1, x0
    // 0x6d4bc0: b.hs            #0x6d4d78
    // 0x6d4bc4: LoadField: r0 = r2->field_f
    //     0x6d4bc4: ldur            w0, [x2, #0xf]
    // 0x6d4bc8: DecompressPointer r0
    //     0x6d4bc8: add             x0, x0, HEAP, lsl #32
    // 0x6d4bcc: LoadField: r1 = r0->field_13
    //     0x6d4bcc: ldur            w1, [x0, #0x13]
    // 0x6d4bd0: DecompressPointer r1
    //     0x6d4bd0: add             x1, x1, HEAP, lsl #32
    // 0x6d4bd4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6d4bd4: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6d4bd8: r0 = parse()
    //     0x6d4bd8: bl              #0x3e9298  ; [dart:core] int::parse
    // 0x6d4bdc: stur            x0, [fp, #-0x30]
    // 0x6d4be0: r0 = TimeOfDay()
    //     0x6d4be0: bl              #0x6a3024  ; AllocateTimeOfDayStub -> TimeOfDay (size=0x18)
    // 0x6d4be4: mov             x1, x0
    // 0x6d4be8: ldur            x0, [fp, #-0x28]
    // 0x6d4bec: StoreField: r1->field_7 = r0
    //     0x6d4bec: stur            x0, [x1, #7]
    // 0x6d4bf0: ldur            x0, [fp, #-0x30]
    // 0x6d4bf4: StoreField: r1->field_f = r0
    //     0x6d4bf4: stur            x0, [x1, #0xf]
    // 0x6d4bf8: mov             x2, x1
    // 0x6d4bfc: ldur            x1, [fp, #-0x20]
    // 0x6d4c00: r0 = showTimePicker()
    //     0x6d4c00: bl              #0x6d4de8  ; [package:flutter/src/material/time_picker.dart] ::showTimePicker
    // 0x6d4c04: mov             x1, x0
    // 0x6d4c08: stur            x1, [fp, #-0x20]
    // 0x6d4c0c: r0 = Await()
    //     0x6d4c0c: bl              #0x3dd188  ; AwaitStub
    // 0x6d4c10: mov             x2, x0
    // 0x6d4c14: stur            x2, [fp, #-0x10]
    // 0x6d4c18: cmp             w2, NULL
    // 0x6d4c1c: b.eq            #0x6d4d64
    // 0x6d4c20: LoadField: r3 = r2->field_7
    //     0x6d4c20: ldur            x3, [x2, #7]
    // 0x6d4c24: r0 = BoxInt64Instr(r3)
    //     0x6d4c24: sbfiz           x0, x3, #1, #0x1f
    //     0x6d4c28: cmp             x3, x0, asr #1
    //     0x6d4c2c: b.eq            #0x6d4c38
    //     0x6d4c30: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6d4c34: stur            x3, [x0, #7]
    // 0x6d4c38: r1 = 60
    //     0x6d4c38: mov             x1, #0x3c
    // 0x6d4c3c: branchIfSmi(r0, 0x6d4c48)
    //     0x6d4c3c: tbz             w0, #0, #0x6d4c48
    // 0x6d4c40: r1 = LoadClassIdInstr(r0)
    //     0x6d4c40: ldur            x1, [x0, #-1]
    //     0x6d4c44: ubfx            x1, x1, #0xc, #0x14
    // 0x6d4c48: str             x0, [SP]
    // 0x6d4c4c: mov             x0, x1
    // 0x6d4c50: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6d4c50: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6d4c54: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6d4c54: mov             x17, #0x21f6
    //     0x6d4c58: add             lr, x0, x17
    //     0x6d4c5c: ldr             lr, [x21, lr, lsl #3]
    //     0x6d4c60: blr             lr
    // 0x6d4c64: r1 = LoadClassIdInstr(r0)
    //     0x6d4c64: ldur            x1, [x0, #-1]
    //     0x6d4c68: ubfx            x1, x1, #0xc, #0x14
    // 0x6d4c6c: mov             x16, x0
    // 0x6d4c70: mov             x0, x1
    // 0x6d4c74: mov             x1, x16
    // 0x6d4c78: r2 = 2
    //     0x6d4c78: mov             x2, #2
    // 0x6d4c7c: r3 = "0"
    //     0x6d4c7c: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x6d4c80: r0 = GDT[cid_x0 + -0xffc]()
    //     0x6d4c80: sub             lr, x0, #0xffc
    //     0x6d4c84: ldr             lr, [x21, lr, lsl #3]
    //     0x6d4c88: blr             lr
    // 0x6d4c8c: r1 = Null
    //     0x6d4c8c: mov             x1, NULL
    // 0x6d4c90: r2 = 6
    //     0x6d4c90: mov             x2, #6
    // 0x6d4c94: stur            x0, [fp, #-0x20]
    // 0x6d4c98: r0 = AllocateArray()
    //     0x6d4c98: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d4c9c: mov             x2, x0
    // 0x6d4ca0: ldur            x0, [fp, #-0x20]
    // 0x6d4ca4: stur            x2, [fp, #-0x38]
    // 0x6d4ca8: StoreField: r2->field_f = r0
    //     0x6d4ca8: stur            w0, [x2, #0xf]
    // 0x6d4cac: r16 = ":"
    //     0x6d4cac: ldr             x16, [PP, #0x990]  ; [pp+0x990] ":"
    // 0x6d4cb0: StoreField: r2->field_13 = r16
    //     0x6d4cb0: stur            w16, [x2, #0x13]
    // 0x6d4cb4: ldur            x0, [fp, #-0x10]
    // 0x6d4cb8: LoadField: r3 = r0->field_f
    //     0x6d4cb8: ldur            x3, [x0, #0xf]
    // 0x6d4cbc: r0 = BoxInt64Instr(r3)
    //     0x6d4cbc: sbfiz           x0, x3, #1, #0x1f
    //     0x6d4cc0: cmp             x3, x0, asr #1
    //     0x6d4cc4: b.eq            #0x6d4cd0
    //     0x6d4cc8: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6d4ccc: stur            x3, [x0, #7]
    // 0x6d4cd0: r1 = 60
    //     0x6d4cd0: mov             x1, #0x3c
    // 0x6d4cd4: branchIfSmi(r0, 0x6d4ce0)
    //     0x6d4cd4: tbz             w0, #0, #0x6d4ce0
    // 0x6d4cd8: r1 = LoadClassIdInstr(r0)
    //     0x6d4cd8: ldur            x1, [x0, #-1]
    //     0x6d4cdc: ubfx            x1, x1, #0xc, #0x14
    // 0x6d4ce0: str             x0, [SP]
    // 0x6d4ce4: mov             x0, x1
    // 0x6d4ce8: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6d4ce8: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6d4cec: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6d4cec: mov             x17, #0x21f6
    //     0x6d4cf0: add             lr, x0, x17
    //     0x6d4cf4: ldr             lr, [x21, lr, lsl #3]
    //     0x6d4cf8: blr             lr
    // 0x6d4cfc: r1 = LoadClassIdInstr(r0)
    //     0x6d4cfc: ldur            x1, [x0, #-1]
    //     0x6d4d00: ubfx            x1, x1, #0xc, #0x14
    // 0x6d4d04: mov             x16, x0
    // 0x6d4d08: mov             x0, x1
    // 0x6d4d0c: mov             x1, x16
    // 0x6d4d10: r2 = 2
    //     0x6d4d10: mov             x2, #2
    // 0x6d4d14: r3 = "0"
    //     0x6d4d14: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x6d4d18: r0 = GDT[cid_x0 + -0xffc]()
    //     0x6d4d18: sub             lr, x0, #0xffc
    //     0x6d4d1c: ldr             lr, [x21, lr, lsl #3]
    //     0x6d4d20: blr             lr
    // 0x6d4d24: ldur            x1, [fp, #-0x38]
    // 0x6d4d28: ArrayStore: r1[2] = r0  ; List_4
    //     0x6d4d28: add             x25, x1, #0x17
    //     0x6d4d2c: str             w0, [x25]
    //     0x6d4d30: tbz             w0, #0, #0x6d4d4c
    //     0x6d4d34: ldurb           w16, [x1, #-1]
    //     0x6d4d38: ldurb           w17, [x0, #-1]
    //     0x6d4d3c: and             x16, x17, x16, lsr #2
    //     0x6d4d40: tst             x16, HEAP, lsr #32
    //     0x6d4d44: b.eq            #0x6d4d4c
    //     0x6d4d48: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d4d4c: ldur            x16, [fp, #-0x38]
    // 0x6d4d50: str             x16, [SP]
    // 0x6d4d54: r0 = _interpolate()
    //     0x6d4d54: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6d4d58: ldur            x1, [fp, #-0x18]
    // 0x6d4d5c: mov             x2, x0
    // 0x6d4d60: r0 = text=()
    //     0x6d4d60: bl              #0x6d4d7c  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::text=
    // 0x6d4d64: r0 = Null
    //     0x6d4d64: mov             x0, NULL
    // 0x6d4d68: r0 = ReturnAsyncNotFuture()
    //     0x6d4d68: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d4d6c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d4d6c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d4d70: b               #0x6d4aec
    // 0x6d4d74: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6d4d74: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6d4d78: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6d4d78: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
}

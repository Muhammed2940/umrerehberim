// lib: , url: package:umrem_demo/features/admin/widgets/date_picker_field.dart

// class id: 1049542, size: 0x8
class :: {
}

// class id: 2483, size: 0x18, field offset: 0x14
class DatePickerFieldState extends State<dynamic> {

  _ initState(/* No info */) {
    // ** addr: 0x5e4784, size: 0x50
    // 0x5e4784: LoadField: r2 = r1->field_b
    //     0x5e4784: ldur            w2, [x1, #0xb]
    // 0x5e4788: DecompressPointer r2
    //     0x5e4788: add             x2, x2, HEAP, lsl #32
    // 0x5e478c: cmp             w2, NULL
    // 0x5e4790: b.eq            #0x5e47c8
    // 0x5e4794: LoadField: r0 = r2->field_f
    //     0x5e4794: ldur            w0, [x2, #0xf]
    // 0x5e4798: DecompressPointer r0
    //     0x5e4798: add             x0, x0, HEAP, lsl #32
    // 0x5e479c: StoreField: r1->field_13 = r0
    //     0x5e479c: stur            w0, [x1, #0x13]
    //     0x5e47a0: ldurb           w16, [x1, #-1]
    //     0x5e47a4: ldurb           w17, [x0, #-1]
    //     0x5e47a8: and             x16, x17, x16, lsr #2
    //     0x5e47ac: tst             x16, HEAP, lsr #32
    //     0x5e47b0: b.eq            #0x5e47c0
    //     0x5e47b4: str             lr, [SP, #-8]!
    //     0x5e47b8: bl              #0x926790  ; WriteBarrierWrappersStub
    //     0x5e47bc: ldr             lr, [SP], #8
    // 0x5e47c0: r0 = Null
    //     0x5e47c0: mov             x0, NULL
    // 0x5e47c4: ret
    //     0x5e47c4: ret             
    // 0x5e47c8: EnterFrame
    //     0x5e47c8: stp             fp, lr, [SP, #-0x10]!
    //     0x5e47cc: mov             fp, SP
    // 0x5e47d0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e47d0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ build(/* No info */) {
    // ** addr: 0x6ef95c, size: 0x1a0
    // 0x6ef95c: EnterFrame
    //     0x6ef95c: stp             fp, lr, [SP, #-0x10]!
    //     0x6ef960: mov             fp, SP
    // 0x6ef964: AllocStack(0x38)
    //     0x6ef964: sub             SP, SP, #0x38
    // 0x6ef968: SetupParameters(DatePickerFieldState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x6ef968: stur            x1, [fp, #-8]
    //     0x6ef96c: stur            x2, [fp, #-0x10]
    // 0x6ef970: CheckStackOverflow
    //     0x6ef970: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ef974: cmp             SP, x16
    //     0x6ef978: b.ls            #0x6efaec
    // 0x6ef97c: r1 = 2
    //     0x6ef97c: mov             x1, #2
    // 0x6ef980: r0 = AllocateContext()
    //     0x6ef980: bl              #0x927010  ; AllocateContextStub
    // 0x6ef984: mov             x3, x0
    // 0x6ef988: ldur            x0, [fp, #-8]
    // 0x6ef98c: stur            x3, [fp, #-0x18]
    // 0x6ef990: StoreField: r3->field_f = r0
    //     0x6ef990: stur            w0, [x3, #0xf]
    // 0x6ef994: ldur            x1, [fp, #-0x10]
    // 0x6ef998: StoreField: r3->field_13 = r1
    //     0x6ef998: stur            w1, [x3, #0x13]
    // 0x6ef99c: r1 = _ConstMap len:12
    //     0x6ef99c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6ef9a0: r2 = 600
    //     0x6ef9a0: mov             x2, #0x258
    // 0x6ef9a4: r0 = []()
    //     0x6ef9a4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6ef9a8: stur            x0, [fp, #-0x10]
    // 0x6ef9ac: cmp             w0, NULL
    // 0x6ef9b0: b.eq            #0x6efaf4
    // 0x6ef9b4: r0 = BorderSide()
    //     0x6ef9b4: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x6ef9b8: mov             x1, x0
    // 0x6ef9bc: ldur            x0, [fp, #-0x10]
    // 0x6ef9c0: stur            x1, [fp, #-0x20]
    // 0x6ef9c4: StoreField: r1->field_7 = r0
    //     0x6ef9c4: stur            w0, [x1, #7]
    // 0x6ef9c8: d0 = 1.000000
    //     0x6ef9c8: fmov            d0, #1.00000000
    // 0x6ef9cc: StoreField: r1->field_b = d0
    //     0x6ef9cc: stur            d0, [x1, #0xb]
    // 0x6ef9d0: r0 = Instance_BorderStyle
    //     0x6ef9d0: add             x0, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x6ef9d4: ldr             x0, [x0, #0x738]
    // 0x6ef9d8: StoreField: r1->field_13 = r0
    //     0x6ef9d8: stur            w0, [x1, #0x13]
    // 0x6ef9dc: d0 = -1.000000
    //     0x6ef9dc: fmov            d0, #-1.00000000
    // 0x6ef9e0: ArrayStore: r1[0] = d0  ; List_8
    //     0x6ef9e0: stur            d0, [x1, #0x17]
    // 0x6ef9e4: r0 = Radius()
    //     0x6ef9e4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6ef9e8: d0 = 12.000000
    //     0x6ef9e8: fmov            d0, #12.00000000
    // 0x6ef9ec: stur            x0, [fp, #-0x10]
    // 0x6ef9f0: StoreField: r0->field_7 = d0
    //     0x6ef9f0: stur            d0, [x0, #7]
    // 0x6ef9f4: StoreField: r0->field_f = d0
    //     0x6ef9f4: stur            d0, [x0, #0xf]
    // 0x6ef9f8: r0 = BorderRadius()
    //     0x6ef9f8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6ef9fc: mov             x1, x0
    // 0x6efa00: ldur            x0, [fp, #-0x10]
    // 0x6efa04: stur            x1, [fp, #-0x28]
    // 0x6efa08: StoreField: r1->field_7 = r0
    //     0x6efa08: stur            w0, [x1, #7]
    // 0x6efa0c: StoreField: r1->field_b = r0
    //     0x6efa0c: stur            w0, [x1, #0xb]
    // 0x6efa10: StoreField: r1->field_f = r0
    //     0x6efa10: stur            w0, [x1, #0xf]
    // 0x6efa14: StoreField: r1->field_13 = r0
    //     0x6efa14: stur            w0, [x1, #0x13]
    // 0x6efa18: r0 = RoundedRectangleBorder()
    //     0x6efa18: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x6efa1c: mov             x1, x0
    // 0x6efa20: ldur            x0, [fp, #-0x28]
    // 0x6efa24: StoreField: r1->field_b = r0
    //     0x6efa24: stur            w0, [x1, #0xb]
    // 0x6efa28: r0 = Instance_BorderSide
    //     0x6efa28: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x6efa2c: ldr             x0, [x0, #0xcb8]
    // 0x6efa30: StoreField: r1->field_7 = r0
    //     0x6efa30: stur            w0, [x1, #7]
    // 0x6efa34: r16 = Instance_EdgeInsets
    //     0x6efa34: add             x16, PP, #0x20, lsl #12  ; [pp+0x20910] Obj!EdgeInsets@a0c441
    //     0x6efa38: ldr             x16, [x16, #0x910]
    // 0x6efa3c: r30 = Instance_Alignment
    //     0x6efa3c: add             lr, PP, #0x17, lsl #12  ; [pp+0x17fc0] Obj!Alignment@a0cef1
    //     0x6efa40: ldr             lr, [lr, #0xfc0]
    // 0x6efa44: stp             lr, x16, [SP]
    // 0x6efa48: ldur            x2, [fp, #-0x20]
    // 0x6efa4c: r4 = const [0, 0x4, 0x2, 0x2, alignment, 0x3, padding, 0x2, null]
    //     0x6efa4c: add             x4, PP, #0x20, lsl #12  ; [pp+0x20918] List(9) [0, 0x4, 0x2, 0x2, "alignment", 0x3, "padding", 0x2, Null]
    //     0x6efa50: ldr             x4, [x4, #0x918]
    // 0x6efa54: r0 = styleFrom()
    //     0x6efa54: bl              #0x6efdd8  ; [package:flutter/src/material/outlined_button.dart] OutlinedButton::styleFrom
    // 0x6efa58: mov             x2, x0
    // 0x6efa5c: ldur            x0, [fp, #-8]
    // 0x6efa60: stur            x2, [fp, #-0x10]
    // 0x6efa64: LoadField: r1 = r0->field_13
    //     0x6efa64: ldur            w1, [x0, #0x13]
    // 0x6efa68: DecompressPointer r1
    //     0x6efa68: add             x1, x1, HEAP, lsl #32
    // 0x6efa6c: cmp             w1, NULL
    // 0x6efa70: b.ne            #0x6efa90
    // 0x6efa74: LoadField: r1 = r0->field_b
    //     0x6efa74: ldur            w1, [x0, #0xb]
    // 0x6efa78: DecompressPointer r1
    //     0x6efa78: add             x1, x1, HEAP, lsl #32
    // 0x6efa7c: cmp             w1, NULL
    // 0x6efa80: b.eq            #0x6efaf8
    // 0x6efa84: LoadField: r0 = r1->field_b
    //     0x6efa84: ldur            w0, [x1, #0xb]
    // 0x6efa88: DecompressPointer r0
    //     0x6efa88: add             x0, x0, HEAP, lsl #32
    // 0x6efa8c: b               #0x6efa94
    // 0x6efa90: r0 = parseDdMmYyyyToString()
    //     0x6efa90: bl              #0x6efbf4  ; [package:umrem_demo/core/utils/date_input_formatter.dart] ::parseDdMmYyyyToString
    // 0x6efa94: stur            x0, [fp, #-8]
    // 0x6efa98: r0 = Text()
    //     0x6efa98: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6efa9c: mov             x3, x0
    // 0x6efaa0: ldur            x0, [fp, #-8]
    // 0x6efaa4: stur            x3, [fp, #-0x20]
    // 0x6efaa8: StoreField: r3->field_b = r0
    //     0x6efaa8: stur            w0, [x3, #0xb]
    // 0x6efaac: ldur            x2, [fp, #-0x18]
    // 0x6efab0: r1 = Function '<anonymous closure>':.
    //     0x6efab0: add             x1, PP, #0x20, lsl #12  ; [pp+0x20920] AnonymousClosure: (0x6f0960), in [package:umrem_demo/features/admin/widgets/date_picker_field.dart] DatePickerFieldState::build (0x6ef95c)
    //     0x6efab4: ldr             x1, [x1, #0x920]
    // 0x6efab8: r0 = AllocateClosure()
    //     0x6efab8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6efabc: stur            x0, [fp, #-8]
    // 0x6efac0: r0 = OutlinedButton()
    //     0x6efac0: bl              #0x6efbe8  ; AllocateOutlinedButtonStub -> OutlinedButton (size=0x40)
    // 0x6efac4: mov             x1, x0
    // 0x6efac8: ldur            x2, [fp, #-0x20]
    // 0x6efacc: ldur            x3, [fp, #-8]
    // 0x6efad0: ldur            x5, [fp, #-0x10]
    // 0x6efad4: stur            x0, [fp, #-8]
    // 0x6efad8: r0 = OutlinedButton.icon()
    //     0x6efad8: bl              #0x6efafc  ; [package:flutter/src/material/outlined_button.dart] OutlinedButton::OutlinedButton.icon
    // 0x6efadc: ldur            x0, [fp, #-8]
    // 0x6efae0: LeaveFrame
    //     0x6efae0: mov             SP, fp
    //     0x6efae4: ldp             fp, lr, [SP], #0x10
    // 0x6efae8: ret
    //     0x6efae8: ret             
    // 0x6efaec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6efaec: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6efaf0: b               #0x6ef97c
    // 0x6efaf4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6efaf4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6efaf8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6efaf8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6f0960, size: 0x244
    // 0x6f0960: EnterFrame
    //     0x6f0960: stp             fp, lr, [SP, #-0x10]!
    //     0x6f0964: mov             fp, SP
    // 0x6f0968: AllocStack(0x50)
    //     0x6f0968: sub             SP, SP, #0x50
    // 0x6f096c: SetupParameters(DatePickerFieldState this /* r1 */)
    //     0x6f096c: stur            NULL, [fp, #-8]
    //     0x6f0970: mov             x0, #0
    //     0x6f0974: add             x1, fp, w0, sxtw #2
    //     0x6f0978: ldr             x1, [x1, #0x10]
    //     0x6f097c: ldur            w2, [x1, #0x17]
    //     0x6f0980: add             x2, x2, HEAP, lsl #32
    //     0x6f0984: stur            x2, [fp, #-0x10]
    // 0x6f0988: CheckStackOverflow
    //     0x6f0988: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f098c: cmp             SP, x16
    //     0x6f0990: b.ls            #0x6f0b90
    // 0x6f0994: InitAsync() -> Future<void?>
    //     0x6f0994: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6f0998: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6f099c: r1 = 1
    //     0x6f099c: mov             x1, #1
    // 0x6f09a0: r0 = AllocateContext()
    //     0x6f09a0: bl              #0x927010  ; AllocateContextStub
    // 0x6f09a4: mov             x1, x0
    // 0x6f09a8: ldur            x0, [fp, #-0x10]
    // 0x6f09ac: stur            x1, [fp, #-0x18]
    // 0x6f09b0: StoreField: r1->field_b = r0
    //     0x6f09b0: stur            w0, [x1, #0xb]
    // 0x6f09b4: r0 = DateTime()
    //     0x6f09b4: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6f09b8: mov             x1, x0
    // 0x6f09bc: r0 = false
    //     0x6f09bc: add             x0, NULL, #0x30  ; false
    // 0x6f09c0: stur            x1, [fp, #-0x20]
    // 0x6f09c4: StoreField: r1->field_7 = r0
    //     0x6f09c4: stur            w0, [x1, #7]
    // 0x6f09c8: r0 = _getCurrentMicros()
    //     0x6f09c8: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x6f09cc: r1 = LoadInt32Instr(r0)
    //     0x6f09cc: sbfx            x1, x0, #1, #0x1f
    //     0x6f09d0: tbz             w0, #0, #0x6f09d8
    //     0x6f09d4: ldur            x1, [x0, #7]
    // 0x6f09d8: ldur            x0, [fp, #-0x20]
    // 0x6f09dc: StoreField: r0->field_b = r1
    //     0x6f09dc: stur            x1, [x0, #0xb]
    // 0x6f09e0: ldur            x2, [fp, #-0x10]
    // 0x6f09e4: LoadField: r3 = r2->field_13
    //     0x6f09e4: ldur            w3, [x2, #0x13]
    // 0x6f09e8: DecompressPointer r3
    //     0x6f09e8: add             x3, x3, HEAP, lsl #32
    // 0x6f09ec: stur            x3, [fp, #-0x30]
    // 0x6f09f0: LoadField: r1 = r2->field_f
    //     0x6f09f0: ldur            w1, [x2, #0xf]
    // 0x6f09f4: DecompressPointer r1
    //     0x6f09f4: add             x1, x1, HEAP, lsl #32
    // 0x6f09f8: LoadField: r4 = r1->field_13
    //     0x6f09f8: ldur            w4, [x1, #0x13]
    // 0x6f09fc: DecompressPointer r4
    //     0x6f09fc: add             x4, x4, HEAP, lsl #32
    // 0x6f0a00: cmp             w4, NULL
    // 0x6f0a04: b.ne            #0x6f0a10
    // 0x6f0a08: mov             x5, x0
    // 0x6f0a0c: b               #0x6f0a14
    // 0x6f0a10: mov             x5, x4
    // 0x6f0a14: ldur            x4, [fp, #-0x18]
    // 0x6f0a18: mov             x1, x0
    // 0x6f0a1c: stur            x5, [fp, #-0x28]
    // 0x6f0a20: r0 = _parts()
    //     0x6f0a20: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6f0a24: mov             x2, x0
    // 0x6f0a28: LoadField: r0 = r2->field_b
    //     0x6f0a28: ldur            w0, [x2, #0xb]
    // 0x6f0a2c: r1 = LoadInt32Instr(r0)
    //     0x6f0a2c: sbfx            x1, x0, #1, #0x1f
    // 0x6f0a30: mov             x0, x1
    // 0x6f0a34: r1 = 8
    //     0x6f0a34: mov             x1, #8
    // 0x6f0a38: cmp             x1, x0
    // 0x6f0a3c: b.hs            #0x6f0b98
    // 0x6f0a40: LoadField: r0 = r2->field_2f
    //     0x6f0a40: ldur            w0, [x2, #0x2f]
    // 0x6f0a44: DecompressPointer r0
    //     0x6f0a44: add             x0, x0, HEAP, lsl #32
    // 0x6f0a48: r1 = LoadInt32Instr(r0)
    //     0x6f0a48: sbfx            x1, x0, #1, #0x1f
    //     0x6f0a4c: tbz             w0, #0, #0x6f0a54
    //     0x6f0a50: ldur            x1, [x0, #7]
    // 0x6f0a54: sub             x2, x1, #1
    // 0x6f0a58: stur            x2, [fp, #-0x38]
    // 0x6f0a5c: r0 = DateTime()
    //     0x6f0a5c: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6f0a60: mov             x1, x0
    // 0x6f0a64: ldur            x2, [fp, #-0x38]
    // 0x6f0a68: stur            x0, [fp, #-0x40]
    // 0x6f0a6c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6f0a6c: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6f0a70: r0 = DateTime()
    //     0x6f0a70: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x6f0a74: ldur            x1, [fp, #-0x20]
    // 0x6f0a78: r0 = _parts()
    //     0x6f0a78: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6f0a7c: mov             x2, x0
    // 0x6f0a80: LoadField: r0 = r2->field_b
    //     0x6f0a80: ldur            w0, [x2, #0xb]
    // 0x6f0a84: r1 = LoadInt32Instr(r0)
    //     0x6f0a84: sbfx            x1, x0, #1, #0x1f
    // 0x6f0a88: mov             x0, x1
    // 0x6f0a8c: r1 = 8
    //     0x6f0a8c: mov             x1, #8
    // 0x6f0a90: cmp             x1, x0
    // 0x6f0a94: b.hs            #0x6f0b9c
    // 0x6f0a98: LoadField: r0 = r2->field_2f
    //     0x6f0a98: ldur            w0, [x2, #0x2f]
    // 0x6f0a9c: DecompressPointer r0
    //     0x6f0a9c: add             x0, x0, HEAP, lsl #32
    // 0x6f0aa0: r1 = LoadInt32Instr(r0)
    //     0x6f0aa0: sbfx            x1, x0, #1, #0x1f
    //     0x6f0aa4: tbz             w0, #0, #0x6f0aac
    //     0x6f0aa8: ldur            x1, [x0, #7]
    // 0x6f0aac: add             x2, x1, #3
    // 0x6f0ab0: stur            x2, [fp, #-0x38]
    // 0x6f0ab4: r0 = DateTime()
    //     0x6f0ab4: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6f0ab8: mov             x1, x0
    // 0x6f0abc: ldur            x2, [fp, #-0x38]
    // 0x6f0ac0: stur            x0, [fp, #-0x20]
    // 0x6f0ac4: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6f0ac4: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6f0ac8: r0 = DateTime()
    //     0x6f0ac8: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x6f0acc: ldur            x1, [fp, #-0x30]
    // 0x6f0ad0: ldur            x2, [fp, #-0x40]
    // 0x6f0ad4: ldur            x3, [fp, #-0x28]
    // 0x6f0ad8: ldur            x5, [fp, #-0x20]
    // 0x6f0adc: r4 = const [0, 0x4, 0, 0x4, null]
    //     0x6f0adc: ldr             x4, [PP, #0x6e0]  ; [pp+0x6e0] List(5) [0, 0x4, 0, 0x4, Null]
    // 0x6f0ae0: r0 = showDatePicker()
    //     0x6f0ae0: bl              #0x6d2148  ; [package:flutter/src/material/date_picker.dart] ::showDatePicker
    // 0x6f0ae4: mov             x1, x0
    // 0x6f0ae8: stur            x1, [fp, #-0x20]
    // 0x6f0aec: r0 = Await()
    //     0x6f0aec: bl              #0x3dd188  ; AwaitStub
    // 0x6f0af0: mov             x3, x0
    // 0x6f0af4: ldur            x2, [fp, #-0x18]
    // 0x6f0af8: stur            x3, [fp, #-0x28]
    // 0x6f0afc: StoreField: r2->field_f = r0
    //     0x6f0afc: stur            w0, [x2, #0xf]
    //     0x6f0b00: tbz             w0, #0, #0x6f0b1c
    //     0x6f0b04: ldurb           w16, [x2, #-1]
    //     0x6f0b08: ldurb           w17, [x0, #-1]
    //     0x6f0b0c: and             x16, x17, x16, lsr #2
    //     0x6f0b10: tst             x16, HEAP, lsr #32
    //     0x6f0b14: b.eq            #0x6f0b1c
    //     0x6f0b18: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6f0b1c: cmp             w3, NULL
    // 0x6f0b20: b.eq            #0x6f0b88
    // 0x6f0b24: ldur            x0, [fp, #-0x10]
    // 0x6f0b28: LoadField: r4 = r0->field_f
    //     0x6f0b28: ldur            w4, [x0, #0xf]
    // 0x6f0b2c: DecompressPointer r4
    //     0x6f0b2c: add             x4, x4, HEAP, lsl #32
    // 0x6f0b30: stur            x4, [fp, #-0x20]
    // 0x6f0b34: r1 = Function '<anonymous closure>':.
    //     0x6f0b34: add             x1, PP, #0x20, lsl #12  ; [pp+0x20928] AnonymousClosure: (0x6f0ba4), in [package:umrem_demo/features/admin/widgets/date_picker_field.dart] DatePickerFieldState::build (0x6ef95c)
    //     0x6f0b38: ldr             x1, [x1, #0x928]
    // 0x6f0b3c: r0 = AllocateClosure()
    //     0x6f0b3c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f0b40: ldur            x1, [fp, #-0x20]
    // 0x6f0b44: mov             x2, x0
    // 0x6f0b48: r0 = setState()
    //     0x6f0b48: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6f0b4c: ldur            x0, [fp, #-0x10]
    // 0x6f0b50: LoadField: r1 = r0->field_f
    //     0x6f0b50: ldur            w1, [x0, #0xf]
    // 0x6f0b54: DecompressPointer r1
    //     0x6f0b54: add             x1, x1, HEAP, lsl #32
    // 0x6f0b58: LoadField: r0 = r1->field_b
    //     0x6f0b58: ldur            w0, [x1, #0xb]
    // 0x6f0b5c: DecompressPointer r0
    //     0x6f0b5c: add             x0, x0, HEAP, lsl #32
    // 0x6f0b60: cmp             w0, NULL
    // 0x6f0b64: b.eq            #0x6f0ba0
    // 0x6f0b68: LoadField: r1 = r0->field_13
    //     0x6f0b68: ldur            w1, [x0, #0x13]
    // 0x6f0b6c: DecompressPointer r1
    //     0x6f0b6c: add             x1, x1, HEAP, lsl #32
    // 0x6f0b70: ldur            x16, [fp, #-0x28]
    // 0x6f0b74: stp             x16, x1, [SP]
    // 0x6f0b78: mov             x0, x1
    // 0x6f0b7c: ClosureCall
    //     0x6f0b7c: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x6f0b80: ldur            x2, [x0, #0x1f]
    //     0x6f0b84: blr             x2
    // 0x6f0b88: r0 = Null
    //     0x6f0b88: mov             x0, NULL
    // 0x6f0b8c: r0 = ReturnAsyncNotFuture()
    //     0x6f0b8c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6f0b90: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f0b90: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f0b94: b               #0x6f0994
    // 0x6f0b98: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6f0b98: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6f0b9c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6f0b9c: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6f0ba0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f0ba0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6f0ba4, size: 0x54
    // 0x6f0ba4: ldr             x1, [SP]
    // 0x6f0ba8: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6f0ba8: ldur            w2, [x1, #0x17]
    // 0x6f0bac: DecompressPointer r2
    //     0x6f0bac: add             x2, x2, HEAP, lsl #32
    // 0x6f0bb0: LoadField: r1 = r2->field_b
    //     0x6f0bb0: ldur            w1, [x2, #0xb]
    // 0x6f0bb4: DecompressPointer r1
    //     0x6f0bb4: add             x1, x1, HEAP, lsl #32
    // 0x6f0bb8: LoadField: r3 = r1->field_f
    //     0x6f0bb8: ldur            w3, [x1, #0xf]
    // 0x6f0bbc: DecompressPointer r3
    //     0x6f0bbc: add             x3, x3, HEAP, lsl #32
    // 0x6f0bc0: LoadField: r1 = r2->field_f
    //     0x6f0bc0: ldur            w1, [x2, #0xf]
    // 0x6f0bc4: DecompressPointer r1
    //     0x6f0bc4: add             x1, x1, HEAP, lsl #32
    // 0x6f0bc8: mov             x0, x1
    // 0x6f0bcc: StoreField: r3->field_13 = r0
    //     0x6f0bcc: stur            w0, [x3, #0x13]
    //     0x6f0bd0: ldurb           w16, [x3, #-1]
    //     0x6f0bd4: ldurb           w17, [x0, #-1]
    //     0x6f0bd8: and             x16, x17, x16, lsr #2
    //     0x6f0bdc: tst             x16, HEAP, lsr #32
    //     0x6f0be0: b.eq            #0x6f0bf0
    //     0x6f0be4: str             lr, [SP, #-8]!
    //     0x6f0be8: bl              #0x9267d0  ; WriteBarrierWrappersStub
    //     0x6f0bec: ldr             lr, [SP], #8
    // 0x6f0bf0: mov             x0, x1
    // 0x6f0bf4: ret
    //     0x6f0bf4: ret             
  }
}

// class id: 3209, size: 0x18, field offset: 0xc
//   const constructor, 
class DatePickerField extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bd79c, size: 0x24
    // 0x7bd79c: EnterFrame
    //     0x7bd79c: stp             fp, lr, [SP, #-0x10]!
    //     0x7bd7a0: mov             fp, SP
    // 0x7bd7a4: mov             x0, x1
    // 0x7bd7a8: r1 = <DatePickerField>
    //     0x7bd7a8: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c110] TypeArguments: <DatePickerField>
    //     0x7bd7ac: ldr             x1, [x1, #0x110]
    // 0x7bd7b0: r0 = DatePickerFieldState()
    //     0x7bd7b0: bl              #0x7bd7c0  ; AllocateDatePickerFieldStateStub -> DatePickerFieldState (size=0x18)
    // 0x7bd7b4: LeaveFrame
    //     0x7bd7b4: mov             SP, fp
    //     0x7bd7b8: ldp             fp, lr, [SP], #0x10
    // 0x7bd7bc: ret
    //     0x7bd7bc: ret             
  }
}

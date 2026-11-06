// lib: , url: package:umrem_demo/core/utils/date_input_formatter.dart

// class id: 1049505, size: 0x8
class :: {

  static _ formatDate(/* No info */) {
    // ** addr: 0x6d1754, size: 0x68
    // 0x6d1754: EnterFrame
    //     0x6d1754: stp             fp, lr, [SP, #-0x10]!
    //     0x6d1758: mov             fp, SP
    // 0x6d175c: AllocStack(0x18)
    //     0x6d175c: sub             SP, SP, #0x18
    // 0x6d1760: SetupParameters(dynamic _ /* r1 => r2, fp-0x8 */)
    //     0x6d1760: mov             x2, x1
    //     0x6d1764: stur            x1, [fp, #-8]
    // 0x6d1768: CheckStackOverflow
    //     0x6d1768: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d176c: cmp             SP, x16
    //     0x6d1770: b.ls            #0x6d17b4
    // 0x6d1774: r0 = DateFormat()
    //     0x6d1774: bl              #0x6d1b08  ; AllocateDateFormatStub -> DateFormat (size=0x2c)
    // 0x6d1778: stur            x0, [fp, #-0x10]
    // 0x6d177c: r16 = "tr_TR"
    //     0x6d177c: add             x16, PP, #0x15, lsl #12  ; [pp+0x152a8] "tr_TR"
    //     0x6d1780: ldr             x16, [x16, #0x2a8]
    // 0x6d1784: str             x16, [SP]
    // 0x6d1788: mov             x1, x0
    // 0x6d178c: r2 = "d MMMM y"
    //     0x6d178c: add             x2, PP, #0x15, lsl #12  ; [pp+0x152b0] "d MMMM y"
    //     0x6d1790: ldr             x2, [x2, #0x2b0]
    // 0x6d1794: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x6d1794: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x6d1798: r0 = DateFormat()
    //     0x6d1798: bl              #0x6d17bc  ; [package:intl/src/intl/date_format.dart] DateFormat::DateFormat
    // 0x6d179c: ldur            x1, [fp, #-0x10]
    // 0x6d17a0: ldur            x2, [fp, #-8]
    // 0x6d17a4: r0 = format()
    //     0x6d17a4: bl              #0x4eadac  ; [package:intl/src/intl/date_format.dart] DateFormat::format
    // 0x6d17a8: LeaveFrame
    //     0x6d17a8: mov             SP, fp
    //     0x6d17ac: ldp             fp, lr, [SP], #0x10
    // 0x6d17b0: ret
    //     0x6d17b0: ret             
    // 0x6d17b4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d17b4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d17b8: b               #0x6d1774
  }
  static _ formatDayOfWeek(/* No info */) {
    // ** addr: 0x6d1b14, size: 0x68
    // 0x6d1b14: EnterFrame
    //     0x6d1b14: stp             fp, lr, [SP, #-0x10]!
    //     0x6d1b18: mov             fp, SP
    // 0x6d1b1c: AllocStack(0x18)
    //     0x6d1b1c: sub             SP, SP, #0x18
    // 0x6d1b20: SetupParameters(dynamic _ /* r1 => r2, fp-0x8 */)
    //     0x6d1b20: mov             x2, x1
    //     0x6d1b24: stur            x1, [fp, #-8]
    // 0x6d1b28: CheckStackOverflow
    //     0x6d1b28: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d1b2c: cmp             SP, x16
    //     0x6d1b30: b.ls            #0x6d1b74
    // 0x6d1b34: r0 = DateFormat()
    //     0x6d1b34: bl              #0x6d1b08  ; AllocateDateFormatStub -> DateFormat (size=0x2c)
    // 0x6d1b38: stur            x0, [fp, #-0x10]
    // 0x6d1b3c: r16 = "tr_TR"
    //     0x6d1b3c: add             x16, PP, #0x15, lsl #12  ; [pp+0x152a8] "tr_TR"
    //     0x6d1b40: ldr             x16, [x16, #0x2a8]
    // 0x6d1b44: str             x16, [SP]
    // 0x6d1b48: mov             x1, x0
    // 0x6d1b4c: r2 = "EEEE"
    //     0x6d1b4c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15428] "EEEE"
    //     0x6d1b50: ldr             x2, [x2, #0x428]
    // 0x6d1b54: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x6d1b54: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x6d1b58: r0 = DateFormat()
    //     0x6d1b58: bl              #0x6d17bc  ; [package:intl/src/intl/date_format.dart] DateFormat::DateFormat
    // 0x6d1b5c: ldur            x1, [fp, #-0x10]
    // 0x6d1b60: ldur            x2, [fp, #-8]
    // 0x6d1b64: r0 = format()
    //     0x6d1b64: bl              #0x4eadac  ; [package:intl/src/intl/date_format.dart] DateFormat::format
    // 0x6d1b68: LeaveFrame
    //     0x6d1b68: mov             SP, fp
    //     0x6d1b6c: ldp             fp, lr, [SP], #0x10
    // 0x6d1b70: ret
    //     0x6d1b70: ret             
    // 0x6d1b74: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d1b74: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d1b78: b               #0x6d1b34
  }
  static _ parseDdMmYyyyToString(/* No info */) {
    // ** addr: 0x6efbf4, size: 0x1e4
    // 0x6efbf4: EnterFrame
    //     0x6efbf4: stp             fp, lr, [SP, #-0x10]!
    //     0x6efbf8: mov             fp, SP
    // 0x6efbfc: AllocStack(0x20)
    //     0x6efbfc: sub             SP, SP, #0x20
    // 0x6efc00: SetupParameters(dynamic _ /* r1 => r0, fp-0x8 */)
    //     0x6efc00: mov             x0, x1
    //     0x6efc04: stur            x1, [fp, #-8]
    // 0x6efc08: CheckStackOverflow
    //     0x6efc08: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6efc0c: cmp             SP, x16
    //     0x6efc10: b.ls            #0x6efdc4
    // 0x6efc14: mov             x1, x0
    // 0x6efc18: r0 = _parts()
    //     0x6efc18: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6efc1c: mov             x2, x0
    // 0x6efc20: LoadField: r0 = r2->field_b
    //     0x6efc20: ldur            w0, [x2, #0xb]
    // 0x6efc24: r1 = LoadInt32Instr(r0)
    //     0x6efc24: sbfx            x1, x0, #1, #0x1f
    // 0x6efc28: mov             x0, x1
    // 0x6efc2c: r1 = 5
    //     0x6efc2c: mov             x1, #5
    // 0x6efc30: cmp             x1, x0
    // 0x6efc34: b.hs            #0x6efdcc
    // 0x6efc38: LoadField: r0 = r2->field_23
    //     0x6efc38: ldur            w0, [x2, #0x23]
    // 0x6efc3c: DecompressPointer r0
    //     0x6efc3c: add             x0, x0, HEAP, lsl #32
    // 0x6efc40: r1 = 60
    //     0x6efc40: mov             x1, #0x3c
    // 0x6efc44: branchIfSmi(r0, 0x6efc50)
    //     0x6efc44: tbz             w0, #0, #0x6efc50
    // 0x6efc48: r1 = LoadClassIdInstr(r0)
    //     0x6efc48: ldur            x1, [x0, #-1]
    //     0x6efc4c: ubfx            x1, x1, #0xc, #0x14
    // 0x6efc50: str             x0, [SP]
    // 0x6efc54: mov             x0, x1
    // 0x6efc58: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6efc58: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6efc5c: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6efc5c: mov             x17, #0x21f6
    //     0x6efc60: add             lr, x0, x17
    //     0x6efc64: ldr             lr, [x21, lr, lsl #3]
    //     0x6efc68: blr             lr
    // 0x6efc6c: r1 = LoadClassIdInstr(r0)
    //     0x6efc6c: ldur            x1, [x0, #-1]
    //     0x6efc70: ubfx            x1, x1, #0xc, #0x14
    // 0x6efc74: mov             x16, x0
    // 0x6efc78: mov             x0, x1
    // 0x6efc7c: mov             x1, x16
    // 0x6efc80: r2 = 2
    //     0x6efc80: mov             x2, #2
    // 0x6efc84: r3 = "0"
    //     0x6efc84: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x6efc88: r0 = GDT[cid_x0 + -0xffc]()
    //     0x6efc88: sub             lr, x0, #0xffc
    //     0x6efc8c: ldr             lr, [x21, lr, lsl #3]
    //     0x6efc90: blr             lr
    // 0x6efc94: ldur            x1, [fp, #-8]
    // 0x6efc98: stur            x0, [fp, #-0x10]
    // 0x6efc9c: r0 = _parts()
    //     0x6efc9c: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6efca0: mov             x2, x0
    // 0x6efca4: LoadField: r0 = r2->field_b
    //     0x6efca4: ldur            w0, [x2, #0xb]
    // 0x6efca8: r1 = LoadInt32Instr(r0)
    //     0x6efca8: sbfx            x1, x0, #1, #0x1f
    // 0x6efcac: mov             x0, x1
    // 0x6efcb0: r1 = 7
    //     0x6efcb0: mov             x1, #7
    // 0x6efcb4: cmp             x1, x0
    // 0x6efcb8: b.hs            #0x6efdd0
    // 0x6efcbc: LoadField: r0 = r2->field_2b
    //     0x6efcbc: ldur            w0, [x2, #0x2b]
    // 0x6efcc0: DecompressPointer r0
    //     0x6efcc0: add             x0, x0, HEAP, lsl #32
    // 0x6efcc4: r1 = 60
    //     0x6efcc4: mov             x1, #0x3c
    // 0x6efcc8: branchIfSmi(r0, 0x6efcd4)
    //     0x6efcc8: tbz             w0, #0, #0x6efcd4
    // 0x6efccc: r1 = LoadClassIdInstr(r0)
    //     0x6efccc: ldur            x1, [x0, #-1]
    //     0x6efcd0: ubfx            x1, x1, #0xc, #0x14
    // 0x6efcd4: str             x0, [SP]
    // 0x6efcd8: mov             x0, x1
    // 0x6efcdc: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6efcdc: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6efce0: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6efce0: mov             x17, #0x21f6
    //     0x6efce4: add             lr, x0, x17
    //     0x6efce8: ldr             lr, [x21, lr, lsl #3]
    //     0x6efcec: blr             lr
    // 0x6efcf0: r1 = LoadClassIdInstr(r0)
    //     0x6efcf0: ldur            x1, [x0, #-1]
    //     0x6efcf4: ubfx            x1, x1, #0xc, #0x14
    // 0x6efcf8: mov             x16, x0
    // 0x6efcfc: mov             x0, x1
    // 0x6efd00: mov             x1, x16
    // 0x6efd04: r2 = 2
    //     0x6efd04: mov             x2, #2
    // 0x6efd08: r3 = "0"
    //     0x6efd08: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x6efd0c: r0 = GDT[cid_x0 + -0xffc]()
    //     0x6efd0c: sub             lr, x0, #0xffc
    //     0x6efd10: ldr             lr, [x21, lr, lsl #3]
    //     0x6efd14: blr             lr
    // 0x6efd18: ldur            x1, [fp, #-8]
    // 0x6efd1c: stur            x0, [fp, #-8]
    // 0x6efd20: r0 = _parts()
    //     0x6efd20: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6efd24: mov             x2, x0
    // 0x6efd28: LoadField: r0 = r2->field_b
    //     0x6efd28: ldur            w0, [x2, #0xb]
    // 0x6efd2c: r1 = LoadInt32Instr(r0)
    //     0x6efd2c: sbfx            x1, x0, #1, #0x1f
    // 0x6efd30: mov             x0, x1
    // 0x6efd34: r1 = 8
    //     0x6efd34: mov             x1, #8
    // 0x6efd38: cmp             x1, x0
    // 0x6efd3c: b.hs            #0x6efdd4
    // 0x6efd40: LoadField: r0 = r2->field_2f
    //     0x6efd40: ldur            w0, [x2, #0x2f]
    // 0x6efd44: DecompressPointer r0
    //     0x6efd44: add             x0, x0, HEAP, lsl #32
    // 0x6efd48: r1 = 60
    //     0x6efd48: mov             x1, #0x3c
    // 0x6efd4c: branchIfSmi(r0, 0x6efd58)
    //     0x6efd4c: tbz             w0, #0, #0x6efd58
    // 0x6efd50: r1 = LoadClassIdInstr(r0)
    //     0x6efd50: ldur            x1, [x0, #-1]
    //     0x6efd54: ubfx            x1, x1, #0xc, #0x14
    // 0x6efd58: str             x0, [SP]
    // 0x6efd5c: mov             x0, x1
    // 0x6efd60: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6efd60: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6efd64: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6efd64: mov             x17, #0x21f6
    //     0x6efd68: add             lr, x0, x17
    //     0x6efd6c: ldr             lr, [x21, lr, lsl #3]
    //     0x6efd70: blr             lr
    // 0x6efd74: r1 = Null
    //     0x6efd74: mov             x1, NULL
    // 0x6efd78: r2 = 10
    //     0x6efd78: mov             x2, #0xa
    // 0x6efd7c: stur            x0, [fp, #-0x18]
    // 0x6efd80: r0 = AllocateArray()
    //     0x6efd80: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6efd84: mov             x1, x0
    // 0x6efd88: ldur            x0, [fp, #-0x10]
    // 0x6efd8c: StoreField: r1->field_f = r0
    //     0x6efd8c: stur            w0, [x1, #0xf]
    // 0x6efd90: r16 = "/"
    //     0x6efd90: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x6efd94: StoreField: r1->field_13 = r16
    //     0x6efd94: stur            w16, [x1, #0x13]
    // 0x6efd98: ldur            x0, [fp, #-8]
    // 0x6efd9c: ArrayStore: r1[0] = r0  ; List_4
    //     0x6efd9c: stur            w0, [x1, #0x17]
    // 0x6efda0: r16 = "/"
    //     0x6efda0: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x6efda4: StoreField: r1->field_1b = r16
    //     0x6efda4: stur            w16, [x1, #0x1b]
    // 0x6efda8: ldur            x0, [fp, #-0x18]
    // 0x6efdac: StoreField: r1->field_1f = r0
    //     0x6efdac: stur            w0, [x1, #0x1f]
    // 0x6efdb0: str             x1, [SP]
    // 0x6efdb4: r0 = _interpolate()
    //     0x6efdb4: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6efdb8: LeaveFrame
    //     0x6efdb8: mov             SP, fp
    //     0x6efdbc: ldp             fp, lr, [SP], #0x10
    // 0x6efdc0: ret
    //     0x6efdc0: ret             
    // 0x6efdc4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6efdc4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6efdc8: b               #0x6efc14
    // 0x6efdcc: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6efdcc: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6efdd0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6efdd0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6efdd4: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6efdd4: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  static _ parseTime(/* No info */) {
    // ** addr: 0x7e5adc, size: 0xd8
    // 0x7e5adc: EnterFrame
    //     0x7e5adc: stp             fp, lr, [SP, #-0x10]!
    //     0x7e5ae0: mov             fp, SP
    // 0x7e5ae4: AllocStack(0x18)
    //     0x7e5ae4: sub             SP, SP, #0x18
    // 0x7e5ae8: CheckStackOverflow
    //     0x7e5ae8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e5aec: cmp             SP, x16
    //     0x7e5af0: b.ls            #0x7e5ba4
    // 0x7e5af4: r0 = LoadClassIdInstr(r1)
    //     0x7e5af4: ldur            x0, [x1, #-1]
    //     0x7e5af8: ubfx            x0, x0, #0xc, #0x14
    // 0x7e5afc: r2 = ":"
    //     0x7e5afc: ldr             x2, [PP, #0x990]  ; [pp+0x990] ":"
    // 0x7e5b00: r0 = GDT[cid_x0 + -0x1000]()
    //     0x7e5b00: sub             lr, x0, #1, lsl #12
    //     0x7e5b04: ldr             lr, [x21, lr, lsl #3]
    //     0x7e5b08: blr             lr
    // 0x7e5b0c: mov             x2, x0
    // 0x7e5b10: stur            x2, [fp, #-8]
    // 0x7e5b14: LoadField: r0 = r2->field_b
    //     0x7e5b14: ldur            w0, [x2, #0xb]
    // 0x7e5b18: r1 = LoadInt32Instr(r0)
    //     0x7e5b18: sbfx            x1, x0, #1, #0x1f
    // 0x7e5b1c: mov             x0, x1
    // 0x7e5b20: r1 = 0
    //     0x7e5b20: mov             x1, #0
    // 0x7e5b24: cmp             x1, x0
    // 0x7e5b28: b.hs            #0x7e5bac
    // 0x7e5b2c: LoadField: r0 = r2->field_f
    //     0x7e5b2c: ldur            w0, [x2, #0xf]
    // 0x7e5b30: DecompressPointer r0
    //     0x7e5b30: add             x0, x0, HEAP, lsl #32
    // 0x7e5b34: LoadField: r1 = r0->field_f
    //     0x7e5b34: ldur            w1, [x0, #0xf]
    // 0x7e5b38: DecompressPointer r1
    //     0x7e5b38: add             x1, x1, HEAP, lsl #32
    // 0x7e5b3c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7e5b3c: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7e5b40: r0 = parse()
    //     0x7e5b40: bl              #0x3e9298  ; [dart:core] int::parse
    // 0x7e5b44: mov             x3, x0
    // 0x7e5b48: ldur            x2, [fp, #-8]
    // 0x7e5b4c: stur            x3, [fp, #-0x10]
    // 0x7e5b50: LoadField: r0 = r2->field_b
    //     0x7e5b50: ldur            w0, [x2, #0xb]
    // 0x7e5b54: r1 = LoadInt32Instr(r0)
    //     0x7e5b54: sbfx            x1, x0, #1, #0x1f
    // 0x7e5b58: mov             x0, x1
    // 0x7e5b5c: r1 = 1
    //     0x7e5b5c: mov             x1, #1
    // 0x7e5b60: cmp             x1, x0
    // 0x7e5b64: b.hs            #0x7e5bb0
    // 0x7e5b68: LoadField: r0 = r2->field_f
    //     0x7e5b68: ldur            w0, [x2, #0xf]
    // 0x7e5b6c: DecompressPointer r0
    //     0x7e5b6c: add             x0, x0, HEAP, lsl #32
    // 0x7e5b70: LoadField: r1 = r0->field_13
    //     0x7e5b70: ldur            w1, [x0, #0x13]
    // 0x7e5b74: DecompressPointer r1
    //     0x7e5b74: add             x1, x1, HEAP, lsl #32
    // 0x7e5b78: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7e5b78: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7e5b7c: r0 = parse()
    //     0x7e5b7c: bl              #0x3e9298  ; [dart:core] int::parse
    // 0x7e5b80: stur            x0, [fp, #-0x18]
    // 0x7e5b84: r0 = TimeOfDay()
    //     0x7e5b84: bl              #0x6a3024  ; AllocateTimeOfDayStub -> TimeOfDay (size=0x18)
    // 0x7e5b88: ldur            x1, [fp, #-0x10]
    // 0x7e5b8c: StoreField: r0->field_7 = r1
    //     0x7e5b8c: stur            x1, [x0, #7]
    // 0x7e5b90: ldur            x1, [fp, #-0x18]
    // 0x7e5b94: StoreField: r0->field_f = r1
    //     0x7e5b94: stur            x1, [x0, #0xf]
    // 0x7e5b98: LeaveFrame
    //     0x7e5b98: mov             SP, fp
    //     0x7e5b9c: ldp             fp, lr, [SP], #0x10
    // 0x7e5ba0: ret
    //     0x7e5ba0: ret             
    // 0x7e5ba4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e5ba4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e5ba8: b               #0x7e5af4
    // 0x7e5bac: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7e5bac: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7e5bb0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7e5bb0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
}

// lib: , url: package:umrem_demo/common/constant/surahs_info.dart

// class id: 1049484, size: 0x8
class :: {

  static late List<Map<String, dynamic>> translations; // offset: 0xfc4
  static late final List<Map<String, dynamic>> quranIndex; // offset: 0xfc0

  static List<Map<String, dynamic>> quranIndex() {
    // ** addr: 0x636b0c, size: 0x3918
    // 0x636b0c: EnterFrame
    //     0x636b0c: stp             fp, lr, [SP, #-0x10]!
    //     0x636b10: mov             fp, SP
    // 0x636b14: AllocStack(0x20)
    //     0x636b14: sub             SP, SP, #0x20
    // 0x636b18: CheckStackOverflow
    //     0x636b18: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x636b1c: cmp             SP, x16
    //     0x636b20: b.ls            #0x63a41c
    // 0x636b24: r1 = Null
    //     0x636b24: mov             x1, NULL
    // 0x636b28: r2 = 12
    //     0x636b28: mov             x2, #0xc
    // 0x636b2c: r0 = AllocateArray()
    //     0x636b2c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x636b30: r16 = "name"
    //     0x636b30: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x636b34: StoreField: r0->field_f = r16
    //     0x636b34: stur            w16, [x0, #0xf]
    // 0x636b38: r16 = "Fatiha"
    //     0x636b38: add             x16, PP, #0x18, lsl #12  ; [pp+0x18028] "Fatiha"
    //     0x636b3c: ldr             x16, [x16, #0x28]
    // 0x636b40: StoreField: r0->field_13 = r16
    //     0x636b40: stur            w16, [x0, #0x13]
    // 0x636b44: r16 = "ayahCount"
    //     0x636b44: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x636b48: ldr             x16, [x16, #0x30]
    // 0x636b4c: ArrayStore: r0[0] = r16  ; List_4
    //     0x636b4c: stur            w16, [x0, #0x17]
    // 0x636b50: r16 = 14
    //     0x636b50: mov             x16, #0xe
    // 0x636b54: StoreField: r0->field_1b = r16
    //     0x636b54: stur            w16, [x0, #0x1b]
    // 0x636b58: r16 = "page"
    //     0x636b58: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x636b5c: ldr             x16, [x16, #0xa68]
    // 0x636b60: StoreField: r0->field_1f = r16
    //     0x636b60: stur            w16, [x0, #0x1f]
    // 0x636b64: StoreField: r0->field_23 = rZR
    //     0x636b64: stur            wzr, [x0, #0x23]
    // 0x636b68: r16 = <String, dynamic>
    //     0x636b68: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x636b6c: stp             x0, x16, [SP]
    // 0x636b70: r0 = Map._fromLiteral()
    //     0x636b70: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x636b74: r1 = <Map<String, dynamic>>
    //     0x636b74: ldr             x1, [PP, #0x3918]  ; [pp+0x3918] TypeArguments: <Map<String, dynamic>>
    // 0x636b78: r2 = 228
    //     0x636b78: mov             x2, #0xe4
    // 0x636b7c: stur            x0, [fp, #-8]
    // 0x636b80: r0 = AllocateArray()
    //     0x636b80: bl              #0x9280a0  ; AllocateArrayStub
    // 0x636b84: mov             x3, x0
    // 0x636b88: ldur            x0, [fp, #-8]
    // 0x636b8c: stur            x3, [fp, #-0x10]
    // 0x636b90: StoreField: r3->field_f = r0
    //     0x636b90: stur            w0, [x3, #0xf]
    // 0x636b94: r1 = Null
    //     0x636b94: mov             x1, NULL
    // 0x636b98: r2 = 12
    //     0x636b98: mov             x2, #0xc
    // 0x636b9c: r0 = AllocateArray()
    //     0x636b9c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x636ba0: r16 = "name"
    //     0x636ba0: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x636ba4: StoreField: r0->field_f = r16
    //     0x636ba4: stur            w16, [x0, #0xf]
    // 0x636ba8: r16 = "Bakara"
    //     0x636ba8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18038] "Bakara"
    //     0x636bac: ldr             x16, [x16, #0x38]
    // 0x636bb0: StoreField: r0->field_13 = r16
    //     0x636bb0: stur            w16, [x0, #0x13]
    // 0x636bb4: r16 = "ayahCount"
    //     0x636bb4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x636bb8: ldr             x16, [x16, #0x30]
    // 0x636bbc: ArrayStore: r0[0] = r16  ; List_4
    //     0x636bbc: stur            w16, [x0, #0x17]
    // 0x636bc0: r16 = 572
    //     0x636bc0: mov             x16, #0x23c
    // 0x636bc4: StoreField: r0->field_1b = r16
    //     0x636bc4: stur            w16, [x0, #0x1b]
    // 0x636bc8: r16 = "page"
    //     0x636bc8: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x636bcc: ldr             x16, [x16, #0xa68]
    // 0x636bd0: StoreField: r0->field_1f = r16
    //     0x636bd0: stur            w16, [x0, #0x1f]
    // 0x636bd4: r16 = 2
    //     0x636bd4: mov             x16, #2
    // 0x636bd8: StoreField: r0->field_23 = r16
    //     0x636bd8: stur            w16, [x0, #0x23]
    // 0x636bdc: r16 = <String, dynamic>
    //     0x636bdc: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x636be0: stp             x0, x16, [SP]
    // 0x636be4: r0 = Map._fromLiteral()
    //     0x636be4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x636be8: ldur            x1, [fp, #-0x10]
    // 0x636bec: ArrayStore: r1[1] = r0  ; List_4
    //     0x636bec: add             x25, x1, #0x13
    //     0x636bf0: str             w0, [x25]
    //     0x636bf4: tbz             w0, #0, #0x636c10
    //     0x636bf8: ldurb           w16, [x1, #-1]
    //     0x636bfc: ldurb           w17, [x0, #-1]
    //     0x636c00: and             x16, x17, x16, lsr #2
    //     0x636c04: tst             x16, HEAP, lsr #32
    //     0x636c08: b.eq            #0x636c10
    //     0x636c0c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x636c10: r1 = Null
    //     0x636c10: mov             x1, NULL
    // 0x636c14: r2 = 12
    //     0x636c14: mov             x2, #0xc
    // 0x636c18: r0 = AllocateArray()
    //     0x636c18: bl              #0x9280a0  ; AllocateArrayStub
    // 0x636c1c: r16 = "name"
    //     0x636c1c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x636c20: StoreField: r0->field_f = r16
    //     0x636c20: stur            w16, [x0, #0xf]
    // 0x636c24: r16 = "Al-i İmran"
    //     0x636c24: add             x16, PP, #0x18, lsl #12  ; [pp+0x18040] "Al-i İmran"
    //     0x636c28: ldr             x16, [x16, #0x40]
    // 0x636c2c: StoreField: r0->field_13 = r16
    //     0x636c2c: stur            w16, [x0, #0x13]
    // 0x636c30: r16 = "ayahCount"
    //     0x636c30: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x636c34: ldr             x16, [x16, #0x30]
    // 0x636c38: ArrayStore: r0[0] = r16  ; List_4
    //     0x636c38: stur            w16, [x0, #0x17]
    // 0x636c3c: r16 = 400
    //     0x636c3c: mov             x16, #0x190
    // 0x636c40: StoreField: r0->field_1b = r16
    //     0x636c40: stur            w16, [x0, #0x1b]
    // 0x636c44: r16 = "page"
    //     0x636c44: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x636c48: ldr             x16, [x16, #0xa68]
    // 0x636c4c: StoreField: r0->field_1f = r16
    //     0x636c4c: stur            w16, [x0, #0x1f]
    // 0x636c50: r16 = 98
    //     0x636c50: mov             x16, #0x62
    // 0x636c54: StoreField: r0->field_23 = r16
    //     0x636c54: stur            w16, [x0, #0x23]
    // 0x636c58: r16 = <String, dynamic>
    //     0x636c58: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x636c5c: stp             x0, x16, [SP]
    // 0x636c60: r0 = Map._fromLiteral()
    //     0x636c60: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x636c64: ldur            x1, [fp, #-0x10]
    // 0x636c68: ArrayStore: r1[2] = r0  ; List_4
    //     0x636c68: add             x25, x1, #0x17
    //     0x636c6c: str             w0, [x25]
    //     0x636c70: tbz             w0, #0, #0x636c8c
    //     0x636c74: ldurb           w16, [x1, #-1]
    //     0x636c78: ldurb           w17, [x0, #-1]
    //     0x636c7c: and             x16, x17, x16, lsr #2
    //     0x636c80: tst             x16, HEAP, lsr #32
    //     0x636c84: b.eq            #0x636c8c
    //     0x636c88: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x636c8c: r1 = Null
    //     0x636c8c: mov             x1, NULL
    // 0x636c90: r2 = 12
    //     0x636c90: mov             x2, #0xc
    // 0x636c94: r0 = AllocateArray()
    //     0x636c94: bl              #0x9280a0  ; AllocateArrayStub
    // 0x636c98: r16 = "name"
    //     0x636c98: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x636c9c: StoreField: r0->field_f = r16
    //     0x636c9c: stur            w16, [x0, #0xf]
    // 0x636ca0: r16 = "Nisa"
    //     0x636ca0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18048] "Nisa"
    //     0x636ca4: ldr             x16, [x16, #0x48]
    // 0x636ca8: StoreField: r0->field_13 = r16
    //     0x636ca8: stur            w16, [x0, #0x13]
    // 0x636cac: r16 = "ayahCount"
    //     0x636cac: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x636cb0: ldr             x16, [x16, #0x30]
    // 0x636cb4: ArrayStore: r0[0] = r16  ; List_4
    //     0x636cb4: stur            w16, [x0, #0x17]
    // 0x636cb8: r16 = 352
    //     0x636cb8: mov             x16, #0x160
    // 0x636cbc: StoreField: r0->field_1b = r16
    //     0x636cbc: stur            w16, [x0, #0x1b]
    // 0x636cc0: r16 = "page"
    //     0x636cc0: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x636cc4: ldr             x16, [x16, #0xa68]
    // 0x636cc8: StoreField: r0->field_1f = r16
    //     0x636cc8: stur            w16, [x0, #0x1f]
    // 0x636ccc: r16 = 152
    //     0x636ccc: mov             x16, #0x98
    // 0x636cd0: StoreField: r0->field_23 = r16
    //     0x636cd0: stur            w16, [x0, #0x23]
    // 0x636cd4: r16 = <String, dynamic>
    //     0x636cd4: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x636cd8: stp             x0, x16, [SP]
    // 0x636cdc: r0 = Map._fromLiteral()
    //     0x636cdc: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x636ce0: ldur            x1, [fp, #-0x10]
    // 0x636ce4: ArrayStore: r1[3] = r0  ; List_4
    //     0x636ce4: add             x25, x1, #0x1b
    //     0x636ce8: str             w0, [x25]
    //     0x636cec: tbz             w0, #0, #0x636d08
    //     0x636cf0: ldurb           w16, [x1, #-1]
    //     0x636cf4: ldurb           w17, [x0, #-1]
    //     0x636cf8: and             x16, x17, x16, lsr #2
    //     0x636cfc: tst             x16, HEAP, lsr #32
    //     0x636d00: b.eq            #0x636d08
    //     0x636d04: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x636d08: r1 = Null
    //     0x636d08: mov             x1, NULL
    // 0x636d0c: r2 = 12
    //     0x636d0c: mov             x2, #0xc
    // 0x636d10: r0 = AllocateArray()
    //     0x636d10: bl              #0x9280a0  ; AllocateArrayStub
    // 0x636d14: r16 = "name"
    //     0x636d14: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x636d18: StoreField: r0->field_f = r16
    //     0x636d18: stur            w16, [x0, #0xf]
    // 0x636d1c: r16 = "Maide"
    //     0x636d1c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18050] "Maide"
    //     0x636d20: ldr             x16, [x16, #0x50]
    // 0x636d24: StoreField: r0->field_13 = r16
    //     0x636d24: stur            w16, [x0, #0x13]
    // 0x636d28: r16 = "ayahCount"
    //     0x636d28: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x636d2c: ldr             x16, [x16, #0x30]
    // 0x636d30: ArrayStore: r0[0] = r16  ; List_4
    //     0x636d30: stur            w16, [x0, #0x17]
    // 0x636d34: r16 = 240
    //     0x636d34: mov             x16, #0xf0
    // 0x636d38: StoreField: r0->field_1b = r16
    //     0x636d38: stur            w16, [x0, #0x1b]
    // 0x636d3c: r16 = "page"
    //     0x636d3c: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x636d40: ldr             x16, [x16, #0xa68]
    // 0x636d44: StoreField: r0->field_1f = r16
    //     0x636d44: stur            w16, [x0, #0x1f]
    // 0x636d48: r16 = 210
    //     0x636d48: mov             x16, #0xd2
    // 0x636d4c: StoreField: r0->field_23 = r16
    //     0x636d4c: stur            w16, [x0, #0x23]
    // 0x636d50: r16 = <String, dynamic>
    //     0x636d50: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x636d54: stp             x0, x16, [SP]
    // 0x636d58: r0 = Map._fromLiteral()
    //     0x636d58: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x636d5c: ldur            x1, [fp, #-0x10]
    // 0x636d60: ArrayStore: r1[4] = r0  ; List_4
    //     0x636d60: add             x25, x1, #0x1f
    //     0x636d64: str             w0, [x25]
    //     0x636d68: tbz             w0, #0, #0x636d84
    //     0x636d6c: ldurb           w16, [x1, #-1]
    //     0x636d70: ldurb           w17, [x0, #-1]
    //     0x636d74: and             x16, x17, x16, lsr #2
    //     0x636d78: tst             x16, HEAP, lsr #32
    //     0x636d7c: b.eq            #0x636d84
    //     0x636d80: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x636d84: r1 = Null
    //     0x636d84: mov             x1, NULL
    // 0x636d88: r2 = 12
    //     0x636d88: mov             x2, #0xc
    // 0x636d8c: r0 = AllocateArray()
    //     0x636d8c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x636d90: r16 = "name"
    //     0x636d90: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x636d94: StoreField: r0->field_f = r16
    //     0x636d94: stur            w16, [x0, #0xf]
    // 0x636d98: r16 = "En\'am"
    //     0x636d98: add             x16, PP, #0x18, lsl #12  ; [pp+0x18058] "En\'am"
    //     0x636d9c: ldr             x16, [x16, #0x58]
    // 0x636da0: StoreField: r0->field_13 = r16
    //     0x636da0: stur            w16, [x0, #0x13]
    // 0x636da4: r16 = "ayahCount"
    //     0x636da4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x636da8: ldr             x16, [x16, #0x30]
    // 0x636dac: ArrayStore: r0[0] = r16  ; List_4
    //     0x636dac: stur            w16, [x0, #0x17]
    // 0x636db0: r16 = 330
    //     0x636db0: mov             x16, #0x14a
    // 0x636db4: StoreField: r0->field_1b = r16
    //     0x636db4: stur            w16, [x0, #0x1b]
    // 0x636db8: r16 = "page"
    //     0x636db8: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x636dbc: ldr             x16, [x16, #0xa68]
    // 0x636dc0: StoreField: r0->field_1f = r16
    //     0x636dc0: stur            w16, [x0, #0x1f]
    // 0x636dc4: r16 = 254
    //     0x636dc4: mov             x16, #0xfe
    // 0x636dc8: StoreField: r0->field_23 = r16
    //     0x636dc8: stur            w16, [x0, #0x23]
    // 0x636dcc: r16 = <String, dynamic>
    //     0x636dcc: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x636dd0: stp             x0, x16, [SP]
    // 0x636dd4: r0 = Map._fromLiteral()
    //     0x636dd4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x636dd8: ldur            x1, [fp, #-0x10]
    // 0x636ddc: ArrayStore: r1[5] = r0  ; List_4
    //     0x636ddc: add             x25, x1, #0x23
    //     0x636de0: str             w0, [x25]
    //     0x636de4: tbz             w0, #0, #0x636e00
    //     0x636de8: ldurb           w16, [x1, #-1]
    //     0x636dec: ldurb           w17, [x0, #-1]
    //     0x636df0: and             x16, x17, x16, lsr #2
    //     0x636df4: tst             x16, HEAP, lsr #32
    //     0x636df8: b.eq            #0x636e00
    //     0x636dfc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x636e00: r1 = Null
    //     0x636e00: mov             x1, NULL
    // 0x636e04: r2 = 12
    //     0x636e04: mov             x2, #0xc
    // 0x636e08: r0 = AllocateArray()
    //     0x636e08: bl              #0x9280a0  ; AllocateArrayStub
    // 0x636e0c: r16 = "name"
    //     0x636e0c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x636e10: StoreField: r0->field_f = r16
    //     0x636e10: stur            w16, [x0, #0xf]
    // 0x636e14: r16 = "A\'raf"
    //     0x636e14: add             x16, PP, #0x18, lsl #12  ; [pp+0x18060] "A\'raf"
    //     0x636e18: ldr             x16, [x16, #0x60]
    // 0x636e1c: StoreField: r0->field_13 = r16
    //     0x636e1c: stur            w16, [x0, #0x13]
    // 0x636e20: r16 = "ayahCount"
    //     0x636e20: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x636e24: ldr             x16, [x16, #0x30]
    // 0x636e28: ArrayStore: r0[0] = r16  ; List_4
    //     0x636e28: stur            w16, [x0, #0x17]
    // 0x636e2c: r16 = 412
    //     0x636e2c: mov             x16, #0x19c
    // 0x636e30: StoreField: r0->field_1b = r16
    //     0x636e30: stur            w16, [x0, #0x1b]
    // 0x636e34: r16 = "page"
    //     0x636e34: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x636e38: ldr             x16, [x16, #0xa68]
    // 0x636e3c: StoreField: r0->field_1f = r16
    //     0x636e3c: stur            w16, [x0, #0x1f]
    // 0x636e40: r16 = 300
    //     0x636e40: mov             x16, #0x12c
    // 0x636e44: StoreField: r0->field_23 = r16
    //     0x636e44: stur            w16, [x0, #0x23]
    // 0x636e48: r16 = <String, dynamic>
    //     0x636e48: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x636e4c: stp             x0, x16, [SP]
    // 0x636e50: r0 = Map._fromLiteral()
    //     0x636e50: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x636e54: ldur            x1, [fp, #-0x10]
    // 0x636e58: ArrayStore: r1[6] = r0  ; List_4
    //     0x636e58: add             x25, x1, #0x27
    //     0x636e5c: str             w0, [x25]
    //     0x636e60: tbz             w0, #0, #0x636e7c
    //     0x636e64: ldurb           w16, [x1, #-1]
    //     0x636e68: ldurb           w17, [x0, #-1]
    //     0x636e6c: and             x16, x17, x16, lsr #2
    //     0x636e70: tst             x16, HEAP, lsr #32
    //     0x636e74: b.eq            #0x636e7c
    //     0x636e78: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x636e7c: r1 = Null
    //     0x636e7c: mov             x1, NULL
    // 0x636e80: r2 = 12
    //     0x636e80: mov             x2, #0xc
    // 0x636e84: r0 = AllocateArray()
    //     0x636e84: bl              #0x9280a0  ; AllocateArrayStub
    // 0x636e88: r16 = "name"
    //     0x636e88: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x636e8c: StoreField: r0->field_f = r16
    //     0x636e8c: stur            w16, [x0, #0xf]
    // 0x636e90: r16 = "Enfal"
    //     0x636e90: add             x16, PP, #0x18, lsl #12  ; [pp+0x18068] "Enfal"
    //     0x636e94: ldr             x16, [x16, #0x68]
    // 0x636e98: StoreField: r0->field_13 = r16
    //     0x636e98: stur            w16, [x0, #0x13]
    // 0x636e9c: r16 = "ayahCount"
    //     0x636e9c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x636ea0: ldr             x16, [x16, #0x30]
    // 0x636ea4: ArrayStore: r0[0] = r16  ; List_4
    //     0x636ea4: stur            w16, [x0, #0x17]
    // 0x636ea8: r16 = 150
    //     0x636ea8: mov             x16, #0x96
    // 0x636eac: StoreField: r0->field_1b = r16
    //     0x636eac: stur            w16, [x0, #0x1b]
    // 0x636eb0: r16 = "page"
    //     0x636eb0: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x636eb4: ldr             x16, [x16, #0xa68]
    // 0x636eb8: StoreField: r0->field_1f = r16
    //     0x636eb8: stur            w16, [x0, #0x1f]
    // 0x636ebc: r16 = 352
    //     0x636ebc: mov             x16, #0x160
    // 0x636ec0: StoreField: r0->field_23 = r16
    //     0x636ec0: stur            w16, [x0, #0x23]
    // 0x636ec4: r16 = <String, dynamic>
    //     0x636ec4: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x636ec8: stp             x0, x16, [SP]
    // 0x636ecc: r0 = Map._fromLiteral()
    //     0x636ecc: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x636ed0: ldur            x1, [fp, #-0x10]
    // 0x636ed4: ArrayStore: r1[7] = r0  ; List_4
    //     0x636ed4: add             x25, x1, #0x2b
    //     0x636ed8: str             w0, [x25]
    //     0x636edc: tbz             w0, #0, #0x636ef8
    //     0x636ee0: ldurb           w16, [x1, #-1]
    //     0x636ee4: ldurb           w17, [x0, #-1]
    //     0x636ee8: and             x16, x17, x16, lsr #2
    //     0x636eec: tst             x16, HEAP, lsr #32
    //     0x636ef0: b.eq            #0x636ef8
    //     0x636ef4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x636ef8: r1 = Null
    //     0x636ef8: mov             x1, NULL
    // 0x636efc: r2 = 12
    //     0x636efc: mov             x2, #0xc
    // 0x636f00: r0 = AllocateArray()
    //     0x636f00: bl              #0x9280a0  ; AllocateArrayStub
    // 0x636f04: r16 = "name"
    //     0x636f04: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x636f08: StoreField: r0->field_f = r16
    //     0x636f08: stur            w16, [x0, #0xf]
    // 0x636f0c: r16 = "Tevbe"
    //     0x636f0c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18070] "Tevbe"
    //     0x636f10: ldr             x16, [x16, #0x70]
    // 0x636f14: StoreField: r0->field_13 = r16
    //     0x636f14: stur            w16, [x0, #0x13]
    // 0x636f18: r16 = "ayahCount"
    //     0x636f18: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x636f1c: ldr             x16, [x16, #0x30]
    // 0x636f20: ArrayStore: r0[0] = r16  ; List_4
    //     0x636f20: stur            w16, [x0, #0x17]
    // 0x636f24: r16 = 258
    //     0x636f24: mov             x16, #0x102
    // 0x636f28: StoreField: r0->field_1b = r16
    //     0x636f28: stur            w16, [x0, #0x1b]
    // 0x636f2c: r16 = "page"
    //     0x636f2c: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x636f30: ldr             x16, [x16, #0xa68]
    // 0x636f34: StoreField: r0->field_1f = r16
    //     0x636f34: stur            w16, [x0, #0x1f]
    // 0x636f38: r16 = 372
    //     0x636f38: mov             x16, #0x174
    // 0x636f3c: StoreField: r0->field_23 = r16
    //     0x636f3c: stur            w16, [x0, #0x23]
    // 0x636f40: r16 = <String, dynamic>
    //     0x636f40: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x636f44: stp             x0, x16, [SP]
    // 0x636f48: r0 = Map._fromLiteral()
    //     0x636f48: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x636f4c: ldur            x1, [fp, #-0x10]
    // 0x636f50: ArrayStore: r1[8] = r0  ; List_4
    //     0x636f50: add             x25, x1, #0x2f
    //     0x636f54: str             w0, [x25]
    //     0x636f58: tbz             w0, #0, #0x636f74
    //     0x636f5c: ldurb           w16, [x1, #-1]
    //     0x636f60: ldurb           w17, [x0, #-1]
    //     0x636f64: and             x16, x17, x16, lsr #2
    //     0x636f68: tst             x16, HEAP, lsr #32
    //     0x636f6c: b.eq            #0x636f74
    //     0x636f70: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x636f74: r1 = Null
    //     0x636f74: mov             x1, NULL
    // 0x636f78: r2 = 12
    //     0x636f78: mov             x2, #0xc
    // 0x636f7c: r0 = AllocateArray()
    //     0x636f7c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x636f80: r16 = "name"
    //     0x636f80: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x636f84: StoreField: r0->field_f = r16
    //     0x636f84: stur            w16, [x0, #0xf]
    // 0x636f88: r16 = "Yunus"
    //     0x636f88: add             x16, PP, #0x18, lsl #12  ; [pp+0x18078] "Yunus"
    //     0x636f8c: ldr             x16, [x16, #0x78]
    // 0x636f90: StoreField: r0->field_13 = r16
    //     0x636f90: stur            w16, [x0, #0x13]
    // 0x636f94: r16 = "ayahCount"
    //     0x636f94: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x636f98: ldr             x16, [x16, #0x30]
    // 0x636f9c: ArrayStore: r0[0] = r16  ; List_4
    //     0x636f9c: stur            w16, [x0, #0x17]
    // 0x636fa0: r16 = 218
    //     0x636fa0: mov             x16, #0xda
    // 0x636fa4: StoreField: r0->field_1b = r16
    //     0x636fa4: stur            w16, [x0, #0x1b]
    // 0x636fa8: r16 = "page"
    //     0x636fa8: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x636fac: ldr             x16, [x16, #0xa68]
    // 0x636fb0: StoreField: r0->field_1f = r16
    //     0x636fb0: stur            w16, [x0, #0x1f]
    // 0x636fb4: r16 = 414
    //     0x636fb4: mov             x16, #0x19e
    // 0x636fb8: StoreField: r0->field_23 = r16
    //     0x636fb8: stur            w16, [x0, #0x23]
    // 0x636fbc: r16 = <String, dynamic>
    //     0x636fbc: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x636fc0: stp             x0, x16, [SP]
    // 0x636fc4: r0 = Map._fromLiteral()
    //     0x636fc4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x636fc8: ldur            x1, [fp, #-0x10]
    // 0x636fcc: ArrayStore: r1[9] = r0  ; List_4
    //     0x636fcc: add             x25, x1, #0x33
    //     0x636fd0: str             w0, [x25]
    //     0x636fd4: tbz             w0, #0, #0x636ff0
    //     0x636fd8: ldurb           w16, [x1, #-1]
    //     0x636fdc: ldurb           w17, [x0, #-1]
    //     0x636fe0: and             x16, x17, x16, lsr #2
    //     0x636fe4: tst             x16, HEAP, lsr #32
    //     0x636fe8: b.eq            #0x636ff0
    //     0x636fec: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x636ff0: r1 = Null
    //     0x636ff0: mov             x1, NULL
    // 0x636ff4: r2 = 12
    //     0x636ff4: mov             x2, #0xc
    // 0x636ff8: r0 = AllocateArray()
    //     0x636ff8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x636ffc: r16 = "name"
    //     0x636ffc: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x637000: StoreField: r0->field_f = r16
    //     0x637000: stur            w16, [x0, #0xf]
    // 0x637004: r16 = "Hud"
    //     0x637004: add             x16, PP, #0x18, lsl #12  ; [pp+0x18080] "Hud"
    //     0x637008: ldr             x16, [x16, #0x80]
    // 0x63700c: StoreField: r0->field_13 = r16
    //     0x63700c: stur            w16, [x0, #0x13]
    // 0x637010: r16 = "ayahCount"
    //     0x637010: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637014: ldr             x16, [x16, #0x30]
    // 0x637018: ArrayStore: r0[0] = r16  ; List_4
    //     0x637018: stur            w16, [x0, #0x17]
    // 0x63701c: r16 = 226
    //     0x63701c: mov             x16, #0xe2
    // 0x637020: StoreField: r0->field_1b = r16
    //     0x637020: stur            w16, [x0, #0x1b]
    // 0x637024: r16 = "page"
    //     0x637024: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637028: ldr             x16, [x16, #0xa68]
    // 0x63702c: StoreField: r0->field_1f = r16
    //     0x63702c: stur            w16, [x0, #0x1f]
    // 0x637030: r16 = 440
    //     0x637030: mov             x16, #0x1b8
    // 0x637034: StoreField: r0->field_23 = r16
    //     0x637034: stur            w16, [x0, #0x23]
    // 0x637038: r16 = <String, dynamic>
    //     0x637038: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x63703c: stp             x0, x16, [SP]
    // 0x637040: r0 = Map._fromLiteral()
    //     0x637040: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637044: ldur            x1, [fp, #-0x10]
    // 0x637048: ArrayStore: r1[10] = r0  ; List_4
    //     0x637048: add             x25, x1, #0x37
    //     0x63704c: str             w0, [x25]
    //     0x637050: tbz             w0, #0, #0x63706c
    //     0x637054: ldurb           w16, [x1, #-1]
    //     0x637058: ldurb           w17, [x0, #-1]
    //     0x63705c: and             x16, x17, x16, lsr #2
    //     0x637060: tst             x16, HEAP, lsr #32
    //     0x637064: b.eq            #0x63706c
    //     0x637068: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x63706c: r1 = Null
    //     0x63706c: mov             x1, NULL
    // 0x637070: r2 = 12
    //     0x637070: mov             x2, #0xc
    // 0x637074: r0 = AllocateArray()
    //     0x637074: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637078: r16 = "name"
    //     0x637078: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x63707c: StoreField: r0->field_f = r16
    //     0x63707c: stur            w16, [x0, #0xf]
    // 0x637080: r16 = "Yusuf"
    //     0x637080: add             x16, PP, #0x18, lsl #12  ; [pp+0x18088] "Yusuf"
    //     0x637084: ldr             x16, [x16, #0x88]
    // 0x637088: StoreField: r0->field_13 = r16
    //     0x637088: stur            w16, [x0, #0x13]
    // 0x63708c: r16 = "ayahCount"
    //     0x63708c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637090: ldr             x16, [x16, #0x30]
    // 0x637094: ArrayStore: r0[0] = r16  ; List_4
    //     0x637094: stur            w16, [x0, #0x17]
    // 0x637098: r16 = 222
    //     0x637098: mov             x16, #0xde
    // 0x63709c: StoreField: r0->field_1b = r16
    //     0x63709c: stur            w16, [x0, #0x1b]
    // 0x6370a0: r16 = "page"
    //     0x6370a0: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6370a4: ldr             x16, [x16, #0xa68]
    // 0x6370a8: StoreField: r0->field_1f = r16
    //     0x6370a8: stur            w16, [x0, #0x1f]
    // 0x6370ac: r16 = 468
    //     0x6370ac: mov             x16, #0x1d4
    // 0x6370b0: StoreField: r0->field_23 = r16
    //     0x6370b0: stur            w16, [x0, #0x23]
    // 0x6370b4: r16 = <String, dynamic>
    //     0x6370b4: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6370b8: stp             x0, x16, [SP]
    // 0x6370bc: r0 = Map._fromLiteral()
    //     0x6370bc: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6370c0: ldur            x1, [fp, #-0x10]
    // 0x6370c4: ArrayStore: r1[11] = r0  ; List_4
    //     0x6370c4: add             x25, x1, #0x3b
    //     0x6370c8: str             w0, [x25]
    //     0x6370cc: tbz             w0, #0, #0x6370e8
    //     0x6370d0: ldurb           w16, [x1, #-1]
    //     0x6370d4: ldurb           w17, [x0, #-1]
    //     0x6370d8: and             x16, x17, x16, lsr #2
    //     0x6370dc: tst             x16, HEAP, lsr #32
    //     0x6370e0: b.eq            #0x6370e8
    //     0x6370e4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6370e8: r1 = Null
    //     0x6370e8: mov             x1, NULL
    // 0x6370ec: r2 = 12
    //     0x6370ec: mov             x2, #0xc
    // 0x6370f0: r0 = AllocateArray()
    //     0x6370f0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6370f4: r16 = "name"
    //     0x6370f4: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6370f8: StoreField: r0->field_f = r16
    //     0x6370f8: stur            w16, [x0, #0xf]
    // 0x6370fc: r16 = "Ra\'d"
    //     0x6370fc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18090] "Ra\'d"
    //     0x637100: ldr             x16, [x16, #0x90]
    // 0x637104: StoreField: r0->field_13 = r16
    //     0x637104: stur            w16, [x0, #0x13]
    // 0x637108: r16 = "ayahCount"
    //     0x637108: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x63710c: ldr             x16, [x16, #0x30]
    // 0x637110: ArrayStore: r0[0] = r16  ; List_4
    //     0x637110: stur            w16, [x0, #0x17]
    // 0x637114: r16 = 86
    //     0x637114: mov             x16, #0x56
    // 0x637118: StoreField: r0->field_1b = r16
    //     0x637118: stur            w16, [x0, #0x1b]
    // 0x63711c: r16 = "page"
    //     0x63711c: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637120: ldr             x16, [x16, #0xa68]
    // 0x637124: StoreField: r0->field_1f = r16
    //     0x637124: stur            w16, [x0, #0x1f]
    // 0x637128: r16 = 496
    //     0x637128: mov             x16, #0x1f0
    // 0x63712c: StoreField: r0->field_23 = r16
    //     0x63712c: stur            w16, [x0, #0x23]
    // 0x637130: r16 = <String, dynamic>
    //     0x637130: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637134: stp             x0, x16, [SP]
    // 0x637138: r0 = Map._fromLiteral()
    //     0x637138: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x63713c: ldur            x1, [fp, #-0x10]
    // 0x637140: ArrayStore: r1[12] = r0  ; List_4
    //     0x637140: add             x25, x1, #0x3f
    //     0x637144: str             w0, [x25]
    //     0x637148: tbz             w0, #0, #0x637164
    //     0x63714c: ldurb           w16, [x1, #-1]
    //     0x637150: ldurb           w17, [x0, #-1]
    //     0x637154: and             x16, x17, x16, lsr #2
    //     0x637158: tst             x16, HEAP, lsr #32
    //     0x63715c: b.eq            #0x637164
    //     0x637160: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x637164: r1 = Null
    //     0x637164: mov             x1, NULL
    // 0x637168: r2 = 12
    //     0x637168: mov             x2, #0xc
    // 0x63716c: r0 = AllocateArray()
    //     0x63716c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637170: r16 = "name"
    //     0x637170: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x637174: StoreField: r0->field_f = r16
    //     0x637174: stur            w16, [x0, #0xf]
    // 0x637178: r16 = "İbrahim"
    //     0x637178: add             x16, PP, #0x18, lsl #12  ; [pp+0x18098] "İbrahim"
    //     0x63717c: ldr             x16, [x16, #0x98]
    // 0x637180: StoreField: r0->field_13 = r16
    //     0x637180: stur            w16, [x0, #0x13]
    // 0x637184: r16 = "ayahCount"
    //     0x637184: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637188: ldr             x16, [x16, #0x30]
    // 0x63718c: ArrayStore: r0[0] = r16  ; List_4
    //     0x63718c: stur            w16, [x0, #0x17]
    // 0x637190: r16 = 104
    //     0x637190: mov             x16, #0x68
    // 0x637194: StoreField: r0->field_1b = r16
    //     0x637194: stur            w16, [x0, #0x1b]
    // 0x637198: r16 = "page"
    //     0x637198: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63719c: ldr             x16, [x16, #0xa68]
    // 0x6371a0: StoreField: r0->field_1f = r16
    //     0x6371a0: stur            w16, [x0, #0x1f]
    // 0x6371a4: r16 = 508
    //     0x6371a4: mov             x16, #0x1fc
    // 0x6371a8: StoreField: r0->field_23 = r16
    //     0x6371a8: stur            w16, [x0, #0x23]
    // 0x6371ac: r16 = <String, dynamic>
    //     0x6371ac: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6371b0: stp             x0, x16, [SP]
    // 0x6371b4: r0 = Map._fromLiteral()
    //     0x6371b4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6371b8: ldur            x1, [fp, #-0x10]
    // 0x6371bc: ArrayStore: r1[13] = r0  ; List_4
    //     0x6371bc: add             x25, x1, #0x43
    //     0x6371c0: str             w0, [x25]
    //     0x6371c4: tbz             w0, #0, #0x6371e0
    //     0x6371c8: ldurb           w16, [x1, #-1]
    //     0x6371cc: ldurb           w17, [x0, #-1]
    //     0x6371d0: and             x16, x17, x16, lsr #2
    //     0x6371d4: tst             x16, HEAP, lsr #32
    //     0x6371d8: b.eq            #0x6371e0
    //     0x6371dc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6371e0: r1 = Null
    //     0x6371e0: mov             x1, NULL
    // 0x6371e4: r2 = 12
    //     0x6371e4: mov             x2, #0xc
    // 0x6371e8: r0 = AllocateArray()
    //     0x6371e8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6371ec: r16 = "name"
    //     0x6371ec: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6371f0: StoreField: r0->field_f = r16
    //     0x6371f0: stur            w16, [x0, #0xf]
    // 0x6371f4: r16 = "Hicr"
    //     0x6371f4: add             x16, PP, #0x18, lsl #12  ; [pp+0x180a0] "Hicr"
    //     0x6371f8: ldr             x16, [x16, #0xa0]
    // 0x6371fc: StoreField: r0->field_13 = r16
    //     0x6371fc: stur            w16, [x0, #0x13]
    // 0x637200: r16 = "ayahCount"
    //     0x637200: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637204: ldr             x16, [x16, #0x30]
    // 0x637208: ArrayStore: r0[0] = r16  ; List_4
    //     0x637208: stur            w16, [x0, #0x17]
    // 0x63720c: r16 = 198
    //     0x63720c: mov             x16, #0xc6
    // 0x637210: StoreField: r0->field_1b = r16
    //     0x637210: stur            w16, [x0, #0x1b]
    // 0x637214: r16 = "page"
    //     0x637214: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637218: ldr             x16, [x16, #0xa68]
    // 0x63721c: StoreField: r0->field_1f = r16
    //     0x63721c: stur            w16, [x0, #0x1f]
    // 0x637220: r16 = 522
    //     0x637220: mov             x16, #0x20a
    // 0x637224: StoreField: r0->field_23 = r16
    //     0x637224: stur            w16, [x0, #0x23]
    // 0x637228: r16 = <String, dynamic>
    //     0x637228: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x63722c: stp             x0, x16, [SP]
    // 0x637230: r0 = Map._fromLiteral()
    //     0x637230: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637234: ldur            x1, [fp, #-0x10]
    // 0x637238: ArrayStore: r1[14] = r0  ; List_4
    //     0x637238: add             x25, x1, #0x47
    //     0x63723c: str             w0, [x25]
    //     0x637240: tbz             w0, #0, #0x63725c
    //     0x637244: ldurb           w16, [x1, #-1]
    //     0x637248: ldurb           w17, [x0, #-1]
    //     0x63724c: and             x16, x17, x16, lsr #2
    //     0x637250: tst             x16, HEAP, lsr #32
    //     0x637254: b.eq            #0x63725c
    //     0x637258: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x63725c: r1 = Null
    //     0x63725c: mov             x1, NULL
    // 0x637260: r2 = 12
    //     0x637260: mov             x2, #0xc
    // 0x637264: r0 = AllocateArray()
    //     0x637264: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637268: r16 = "name"
    //     0x637268: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x63726c: StoreField: r0->field_f = r16
    //     0x63726c: stur            w16, [x0, #0xf]
    // 0x637270: r16 = "Nahl"
    //     0x637270: add             x16, PP, #0x18, lsl #12  ; [pp+0x180a8] "Nahl"
    //     0x637274: ldr             x16, [x16, #0xa8]
    // 0x637278: StoreField: r0->field_13 = r16
    //     0x637278: stur            w16, [x0, #0x13]
    // 0x63727c: r16 = "ayahCount"
    //     0x63727c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637280: ldr             x16, [x16, #0x30]
    // 0x637284: ArrayStore: r0[0] = r16  ; List_4
    //     0x637284: stur            w16, [x0, #0x17]
    // 0x637288: r16 = 256
    //     0x637288: mov             x16, #0x100
    // 0x63728c: StoreField: r0->field_1b = r16
    //     0x63728c: stur            w16, [x0, #0x1b]
    // 0x637290: r16 = "page"
    //     0x637290: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637294: ldr             x16, [x16, #0xa68]
    // 0x637298: StoreField: r0->field_1f = r16
    //     0x637298: stur            w16, [x0, #0x1f]
    // 0x63729c: r16 = 532
    //     0x63729c: mov             x16, #0x214
    // 0x6372a0: StoreField: r0->field_23 = r16
    //     0x6372a0: stur            w16, [x0, #0x23]
    // 0x6372a4: r16 = <String, dynamic>
    //     0x6372a4: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6372a8: stp             x0, x16, [SP]
    // 0x6372ac: r0 = Map._fromLiteral()
    //     0x6372ac: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6372b0: ldur            x1, [fp, #-0x10]
    // 0x6372b4: ArrayStore: r1[15] = r0  ; List_4
    //     0x6372b4: add             x25, x1, #0x4b
    //     0x6372b8: str             w0, [x25]
    //     0x6372bc: tbz             w0, #0, #0x6372d8
    //     0x6372c0: ldurb           w16, [x1, #-1]
    //     0x6372c4: ldurb           w17, [x0, #-1]
    //     0x6372c8: and             x16, x17, x16, lsr #2
    //     0x6372cc: tst             x16, HEAP, lsr #32
    //     0x6372d0: b.eq            #0x6372d8
    //     0x6372d4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6372d8: r1 = Null
    //     0x6372d8: mov             x1, NULL
    // 0x6372dc: r2 = 12
    //     0x6372dc: mov             x2, #0xc
    // 0x6372e0: r0 = AllocateArray()
    //     0x6372e0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6372e4: r16 = "name"
    //     0x6372e4: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6372e8: StoreField: r0->field_f = r16
    //     0x6372e8: stur            w16, [x0, #0xf]
    // 0x6372ec: r16 = "İsra"
    //     0x6372ec: add             x16, PP, #0x18, lsl #12  ; [pp+0x180b0] "İsra"
    //     0x6372f0: ldr             x16, [x16, #0xb0]
    // 0x6372f4: StoreField: r0->field_13 = r16
    //     0x6372f4: stur            w16, [x0, #0x13]
    // 0x6372f8: r16 = "ayahCount"
    //     0x6372f8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6372fc: ldr             x16, [x16, #0x30]
    // 0x637300: ArrayStore: r0[0] = r16  ; List_4
    //     0x637300: stur            w16, [x0, #0x17]
    // 0x637304: r16 = 222
    //     0x637304: mov             x16, #0xde
    // 0x637308: StoreField: r0->field_1b = r16
    //     0x637308: stur            w16, [x0, #0x1b]
    // 0x63730c: r16 = "page"
    //     0x63730c: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637310: ldr             x16, [x16, #0xa68]
    // 0x637314: StoreField: r0->field_1f = r16
    //     0x637314: stur            w16, [x0, #0x1f]
    // 0x637318: r16 = 562
    //     0x637318: mov             x16, #0x232
    // 0x63731c: StoreField: r0->field_23 = r16
    //     0x63731c: stur            w16, [x0, #0x23]
    // 0x637320: r16 = <String, dynamic>
    //     0x637320: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637324: stp             x0, x16, [SP]
    // 0x637328: r0 = Map._fromLiteral()
    //     0x637328: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x63732c: ldur            x1, [fp, #-0x10]
    // 0x637330: ArrayStore: r1[16] = r0  ; List_4
    //     0x637330: add             x25, x1, #0x4f
    //     0x637334: str             w0, [x25]
    //     0x637338: tbz             w0, #0, #0x637354
    //     0x63733c: ldurb           w16, [x1, #-1]
    //     0x637340: ldurb           w17, [x0, #-1]
    //     0x637344: and             x16, x17, x16, lsr #2
    //     0x637348: tst             x16, HEAP, lsr #32
    //     0x63734c: b.eq            #0x637354
    //     0x637350: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x637354: r1 = Null
    //     0x637354: mov             x1, NULL
    // 0x637358: r2 = 12
    //     0x637358: mov             x2, #0xc
    // 0x63735c: r0 = AllocateArray()
    //     0x63735c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637360: r16 = "name"
    //     0x637360: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x637364: StoreField: r0->field_f = r16
    //     0x637364: stur            w16, [x0, #0xf]
    // 0x637368: r16 = "Kehf"
    //     0x637368: add             x16, PP, #0x18, lsl #12  ; [pp+0x180b8] "Kehf"
    //     0x63736c: ldr             x16, [x16, #0xb8]
    // 0x637370: StoreField: r0->field_13 = r16
    //     0x637370: stur            w16, [x0, #0x13]
    // 0x637374: r16 = "ayahCount"
    //     0x637374: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637378: ldr             x16, [x16, #0x30]
    // 0x63737c: ArrayStore: r0[0] = r16  ; List_4
    //     0x63737c: stur            w16, [x0, #0x17]
    // 0x637380: r16 = 220
    //     0x637380: mov             x16, #0xdc
    // 0x637384: StoreField: r0->field_1b = r16
    //     0x637384: stur            w16, [x0, #0x1b]
    // 0x637388: r16 = "page"
    //     0x637388: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63738c: ldr             x16, [x16, #0xa68]
    // 0x637390: StoreField: r0->field_1f = r16
    //     0x637390: stur            w16, [x0, #0x1f]
    // 0x637394: r16 = 584
    //     0x637394: mov             x16, #0x248
    // 0x637398: StoreField: r0->field_23 = r16
    //     0x637398: stur            w16, [x0, #0x23]
    // 0x63739c: r16 = <String, dynamic>
    //     0x63739c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6373a0: stp             x0, x16, [SP]
    // 0x6373a4: r0 = Map._fromLiteral()
    //     0x6373a4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6373a8: ldur            x1, [fp, #-0x10]
    // 0x6373ac: ArrayStore: r1[17] = r0  ; List_4
    //     0x6373ac: add             x25, x1, #0x53
    //     0x6373b0: str             w0, [x25]
    //     0x6373b4: tbz             w0, #0, #0x6373d0
    //     0x6373b8: ldurb           w16, [x1, #-1]
    //     0x6373bc: ldurb           w17, [x0, #-1]
    //     0x6373c0: and             x16, x17, x16, lsr #2
    //     0x6373c4: tst             x16, HEAP, lsr #32
    //     0x6373c8: b.eq            #0x6373d0
    //     0x6373cc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6373d0: r1 = Null
    //     0x6373d0: mov             x1, NULL
    // 0x6373d4: r2 = 12
    //     0x6373d4: mov             x2, #0xc
    // 0x6373d8: r0 = AllocateArray()
    //     0x6373d8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6373dc: r16 = "name"
    //     0x6373dc: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6373e0: StoreField: r0->field_f = r16
    //     0x6373e0: stur            w16, [x0, #0xf]
    // 0x6373e4: r16 = "Meryem"
    //     0x6373e4: add             x16, PP, #0x18, lsl #12  ; [pp+0x180c0] "Meryem"
    //     0x6373e8: ldr             x16, [x16, #0xc0]
    // 0x6373ec: StoreField: r0->field_13 = r16
    //     0x6373ec: stur            w16, [x0, #0x13]
    // 0x6373f0: r16 = "ayahCount"
    //     0x6373f0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6373f4: ldr             x16, [x16, #0x30]
    // 0x6373f8: ArrayStore: r0[0] = r16  ; List_4
    //     0x6373f8: stur            w16, [x0, #0x17]
    // 0x6373fc: r16 = 196
    //     0x6373fc: mov             x16, #0xc4
    // 0x637400: StoreField: r0->field_1b = r16
    //     0x637400: stur            w16, [x0, #0x1b]
    // 0x637404: r16 = "page"
    //     0x637404: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637408: ldr             x16, [x16, #0xa68]
    // 0x63740c: StoreField: r0->field_1f = r16
    //     0x63740c: stur            w16, [x0, #0x1f]
    // 0x637410: r16 = 608
    //     0x637410: mov             x16, #0x260
    // 0x637414: StoreField: r0->field_23 = r16
    //     0x637414: stur            w16, [x0, #0x23]
    // 0x637418: r16 = <String, dynamic>
    //     0x637418: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x63741c: stp             x0, x16, [SP]
    // 0x637420: r0 = Map._fromLiteral()
    //     0x637420: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637424: ldur            x1, [fp, #-0x10]
    // 0x637428: ArrayStore: r1[18] = r0  ; List_4
    //     0x637428: add             x25, x1, #0x57
    //     0x63742c: str             w0, [x25]
    //     0x637430: tbz             w0, #0, #0x63744c
    //     0x637434: ldurb           w16, [x1, #-1]
    //     0x637438: ldurb           w17, [x0, #-1]
    //     0x63743c: and             x16, x17, x16, lsr #2
    //     0x637440: tst             x16, HEAP, lsr #32
    //     0x637444: b.eq            #0x63744c
    //     0x637448: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x63744c: r1 = Null
    //     0x63744c: mov             x1, NULL
    // 0x637450: r2 = 12
    //     0x637450: mov             x2, #0xc
    // 0x637454: r0 = AllocateArray()
    //     0x637454: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637458: r16 = "name"
    //     0x637458: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x63745c: StoreField: r0->field_f = r16
    //     0x63745c: stur            w16, [x0, #0xf]
    // 0x637460: r16 = "Taha"
    //     0x637460: add             x16, PP, #0x18, lsl #12  ; [pp+0x180c8] "Taha"
    //     0x637464: ldr             x16, [x16, #0xc8]
    // 0x637468: StoreField: r0->field_13 = r16
    //     0x637468: stur            w16, [x0, #0x13]
    // 0x63746c: r16 = "ayahCount"
    //     0x63746c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637470: ldr             x16, [x16, #0x30]
    // 0x637474: ArrayStore: r0[0] = r16  ; List_4
    //     0x637474: stur            w16, [x0, #0x17]
    // 0x637478: r16 = 270
    //     0x637478: mov             x16, #0x10e
    // 0x63747c: StoreField: r0->field_1b = r16
    //     0x63747c: stur            w16, [x0, #0x1b]
    // 0x637480: r16 = "page"
    //     0x637480: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637484: ldr             x16, [x16, #0xa68]
    // 0x637488: StoreField: r0->field_1f = r16
    //     0x637488: stur            w16, [x0, #0x1f]
    // 0x63748c: r16 = 622
    //     0x63748c: mov             x16, #0x26e
    // 0x637490: StoreField: r0->field_23 = r16
    //     0x637490: stur            w16, [x0, #0x23]
    // 0x637494: r16 = <String, dynamic>
    //     0x637494: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637498: stp             x0, x16, [SP]
    // 0x63749c: r0 = Map._fromLiteral()
    //     0x63749c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6374a0: ldur            x1, [fp, #-0x10]
    // 0x6374a4: ArrayStore: r1[19] = r0  ; List_4
    //     0x6374a4: add             x25, x1, #0x5b
    //     0x6374a8: str             w0, [x25]
    //     0x6374ac: tbz             w0, #0, #0x6374c8
    //     0x6374b0: ldurb           w16, [x1, #-1]
    //     0x6374b4: ldurb           w17, [x0, #-1]
    //     0x6374b8: and             x16, x17, x16, lsr #2
    //     0x6374bc: tst             x16, HEAP, lsr #32
    //     0x6374c0: b.eq            #0x6374c8
    //     0x6374c4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6374c8: r1 = Null
    //     0x6374c8: mov             x1, NULL
    // 0x6374cc: r2 = 12
    //     0x6374cc: mov             x2, #0xc
    // 0x6374d0: r0 = AllocateArray()
    //     0x6374d0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6374d4: r16 = "name"
    //     0x6374d4: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6374d8: StoreField: r0->field_f = r16
    //     0x6374d8: stur            w16, [x0, #0xf]
    // 0x6374dc: r16 = "Enbiya"
    //     0x6374dc: add             x16, PP, #0x18, lsl #12  ; [pp+0x180d0] "Enbiya"
    //     0x6374e0: ldr             x16, [x16, #0xd0]
    // 0x6374e4: StoreField: r0->field_13 = r16
    //     0x6374e4: stur            w16, [x0, #0x13]
    // 0x6374e8: r16 = "ayahCount"
    //     0x6374e8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6374ec: ldr             x16, [x16, #0x30]
    // 0x6374f0: ArrayStore: r0[0] = r16  ; List_4
    //     0x6374f0: stur            w16, [x0, #0x17]
    // 0x6374f4: r16 = 224
    //     0x6374f4: mov             x16, #0xe0
    // 0x6374f8: StoreField: r0->field_1b = r16
    //     0x6374f8: stur            w16, [x0, #0x1b]
    // 0x6374fc: r16 = "page"
    //     0x6374fc: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637500: ldr             x16, [x16, #0xa68]
    // 0x637504: StoreField: r0->field_1f = r16
    //     0x637504: stur            w16, [x0, #0x1f]
    // 0x637508: r16 = 642
    //     0x637508: mov             x16, #0x282
    // 0x63750c: StoreField: r0->field_23 = r16
    //     0x63750c: stur            w16, [x0, #0x23]
    // 0x637510: r16 = <String, dynamic>
    //     0x637510: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637514: stp             x0, x16, [SP]
    // 0x637518: r0 = Map._fromLiteral()
    //     0x637518: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x63751c: ldur            x1, [fp, #-0x10]
    // 0x637520: ArrayStore: r1[20] = r0  ; List_4
    //     0x637520: add             x25, x1, #0x5f
    //     0x637524: str             w0, [x25]
    //     0x637528: tbz             w0, #0, #0x637544
    //     0x63752c: ldurb           w16, [x1, #-1]
    //     0x637530: ldurb           w17, [x0, #-1]
    //     0x637534: and             x16, x17, x16, lsr #2
    //     0x637538: tst             x16, HEAP, lsr #32
    //     0x63753c: b.eq            #0x637544
    //     0x637540: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x637544: r1 = Null
    //     0x637544: mov             x1, NULL
    // 0x637548: r2 = 12
    //     0x637548: mov             x2, #0xc
    // 0x63754c: r0 = AllocateArray()
    //     0x63754c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637550: r16 = "name"
    //     0x637550: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x637554: StoreField: r0->field_f = r16
    //     0x637554: stur            w16, [x0, #0xf]
    // 0x637558: r16 = "Hac"
    //     0x637558: add             x16, PP, #0x18, lsl #12  ; [pp+0x180d8] "Hac"
    //     0x63755c: ldr             x16, [x16, #0xd8]
    // 0x637560: StoreField: r0->field_13 = r16
    //     0x637560: stur            w16, [x0, #0x13]
    // 0x637564: r16 = "ayahCount"
    //     0x637564: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637568: ldr             x16, [x16, #0x30]
    // 0x63756c: ArrayStore: r0[0] = r16  ; List_4
    //     0x63756c: stur            w16, [x0, #0x17]
    // 0x637570: r16 = 156
    //     0x637570: mov             x16, #0x9c
    // 0x637574: StoreField: r0->field_1b = r16
    //     0x637574: stur            w16, [x0, #0x1b]
    // 0x637578: r16 = "page"
    //     0x637578: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63757c: ldr             x16, [x16, #0xa68]
    // 0x637580: StoreField: r0->field_1f = r16
    //     0x637580: stur            w16, [x0, #0x1f]
    // 0x637584: r16 = 662
    //     0x637584: mov             x16, #0x296
    // 0x637588: StoreField: r0->field_23 = r16
    //     0x637588: stur            w16, [x0, #0x23]
    // 0x63758c: r16 = <String, dynamic>
    //     0x63758c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637590: stp             x0, x16, [SP]
    // 0x637594: r0 = Map._fromLiteral()
    //     0x637594: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637598: ldur            x1, [fp, #-0x10]
    // 0x63759c: ArrayStore: r1[21] = r0  ; List_4
    //     0x63759c: add             x25, x1, #0x63
    //     0x6375a0: str             w0, [x25]
    //     0x6375a4: tbz             w0, #0, #0x6375c0
    //     0x6375a8: ldurb           w16, [x1, #-1]
    //     0x6375ac: ldurb           w17, [x0, #-1]
    //     0x6375b0: and             x16, x17, x16, lsr #2
    //     0x6375b4: tst             x16, HEAP, lsr #32
    //     0x6375b8: b.eq            #0x6375c0
    //     0x6375bc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6375c0: r1 = Null
    //     0x6375c0: mov             x1, NULL
    // 0x6375c4: r2 = 12
    //     0x6375c4: mov             x2, #0xc
    // 0x6375c8: r0 = AllocateArray()
    //     0x6375c8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6375cc: r16 = "name"
    //     0x6375cc: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6375d0: StoreField: r0->field_f = r16
    //     0x6375d0: stur            w16, [x0, #0xf]
    // 0x6375d4: r16 = "Mu\'minun"
    //     0x6375d4: add             x16, PP, #0x18, lsl #12  ; [pp+0x180e0] "Mu\'minun"
    //     0x6375d8: ldr             x16, [x16, #0xe0]
    // 0x6375dc: StoreField: r0->field_13 = r16
    //     0x6375dc: stur            w16, [x0, #0x13]
    // 0x6375e0: r16 = "ayahCount"
    //     0x6375e0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6375e4: ldr             x16, [x16, #0x30]
    // 0x6375e8: ArrayStore: r0[0] = r16  ; List_4
    //     0x6375e8: stur            w16, [x0, #0x17]
    // 0x6375ec: r16 = 236
    //     0x6375ec: mov             x16, #0xec
    // 0x6375f0: StoreField: r0->field_1b = r16
    //     0x6375f0: stur            w16, [x0, #0x1b]
    // 0x6375f4: r16 = "page"
    //     0x6375f4: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6375f8: ldr             x16, [x16, #0xa68]
    // 0x6375fc: StoreField: r0->field_1f = r16
    //     0x6375fc: stur            w16, [x0, #0x1f]
    // 0x637600: r16 = 682
    //     0x637600: mov             x16, #0x2aa
    // 0x637604: StoreField: r0->field_23 = r16
    //     0x637604: stur            w16, [x0, #0x23]
    // 0x637608: r16 = <String, dynamic>
    //     0x637608: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x63760c: stp             x0, x16, [SP]
    // 0x637610: r0 = Map._fromLiteral()
    //     0x637610: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637614: ldur            x1, [fp, #-0x10]
    // 0x637618: ArrayStore: r1[22] = r0  ; List_4
    //     0x637618: add             x25, x1, #0x67
    //     0x63761c: str             w0, [x25]
    //     0x637620: tbz             w0, #0, #0x63763c
    //     0x637624: ldurb           w16, [x1, #-1]
    //     0x637628: ldurb           w17, [x0, #-1]
    //     0x63762c: and             x16, x17, x16, lsr #2
    //     0x637630: tst             x16, HEAP, lsr #32
    //     0x637634: b.eq            #0x63763c
    //     0x637638: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x63763c: r1 = Null
    //     0x63763c: mov             x1, NULL
    // 0x637640: r2 = 12
    //     0x637640: mov             x2, #0xc
    // 0x637644: r0 = AllocateArray()
    //     0x637644: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637648: r16 = "name"
    //     0x637648: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x63764c: StoreField: r0->field_f = r16
    //     0x63764c: stur            w16, [x0, #0xf]
    // 0x637650: r16 = "Nur"
    //     0x637650: add             x16, PP, #0x18, lsl #12  ; [pp+0x180e8] "Nur"
    //     0x637654: ldr             x16, [x16, #0xe8]
    // 0x637658: StoreField: r0->field_13 = r16
    //     0x637658: stur            w16, [x0, #0x13]
    // 0x63765c: r16 = "ayahCount"
    //     0x63765c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637660: ldr             x16, [x16, #0x30]
    // 0x637664: ArrayStore: r0[0] = r16  ; List_4
    //     0x637664: stur            w16, [x0, #0x17]
    // 0x637668: r16 = 128
    //     0x637668: mov             x16, #0x80
    // 0x63766c: StoreField: r0->field_1b = r16
    //     0x63766c: stur            w16, [x0, #0x1b]
    // 0x637670: r16 = "page"
    //     0x637670: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637674: ldr             x16, [x16, #0xa68]
    // 0x637678: StoreField: r0->field_1f = r16
    //     0x637678: stur            w16, [x0, #0x1f]
    // 0x63767c: r16 = 698
    //     0x63767c: mov             x16, #0x2ba
    // 0x637680: StoreField: r0->field_23 = r16
    //     0x637680: stur            w16, [x0, #0x23]
    // 0x637684: r16 = <String, dynamic>
    //     0x637684: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637688: stp             x0, x16, [SP]
    // 0x63768c: r0 = Map._fromLiteral()
    //     0x63768c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637690: ldur            x1, [fp, #-0x10]
    // 0x637694: ArrayStore: r1[23] = r0  ; List_4
    //     0x637694: add             x25, x1, #0x6b
    //     0x637698: str             w0, [x25]
    //     0x63769c: tbz             w0, #0, #0x6376b8
    //     0x6376a0: ldurb           w16, [x1, #-1]
    //     0x6376a4: ldurb           w17, [x0, #-1]
    //     0x6376a8: and             x16, x17, x16, lsr #2
    //     0x6376ac: tst             x16, HEAP, lsr #32
    //     0x6376b0: b.eq            #0x6376b8
    //     0x6376b4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6376b8: r1 = Null
    //     0x6376b8: mov             x1, NULL
    // 0x6376bc: r2 = 12
    //     0x6376bc: mov             x2, #0xc
    // 0x6376c0: r0 = AllocateArray()
    //     0x6376c0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6376c4: r16 = "name"
    //     0x6376c4: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6376c8: StoreField: r0->field_f = r16
    //     0x6376c8: stur            w16, [x0, #0xf]
    // 0x6376cc: r16 = "Furkan"
    //     0x6376cc: add             x16, PP, #0x18, lsl #12  ; [pp+0x180f0] "Furkan"
    //     0x6376d0: ldr             x16, [x16, #0xf0]
    // 0x6376d4: StoreField: r0->field_13 = r16
    //     0x6376d4: stur            w16, [x0, #0x13]
    // 0x6376d8: r16 = "ayahCount"
    //     0x6376d8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6376dc: ldr             x16, [x16, #0x30]
    // 0x6376e0: ArrayStore: r0[0] = r16  ; List_4
    //     0x6376e0: stur            w16, [x0, #0x17]
    // 0x6376e4: r16 = 154
    //     0x6376e4: mov             x16, #0x9a
    // 0x6376e8: StoreField: r0->field_1b = r16
    //     0x6376e8: stur            w16, [x0, #0x1b]
    // 0x6376ec: r16 = "page"
    //     0x6376ec: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6376f0: ldr             x16, [x16, #0xa68]
    // 0x6376f4: StoreField: r0->field_1f = r16
    //     0x6376f4: stur            w16, [x0, #0x1f]
    // 0x6376f8: r16 = 716
    //     0x6376f8: mov             x16, #0x2cc
    // 0x6376fc: StoreField: r0->field_23 = r16
    //     0x6376fc: stur            w16, [x0, #0x23]
    // 0x637700: r16 = <String, dynamic>
    //     0x637700: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637704: stp             x0, x16, [SP]
    // 0x637708: r0 = Map._fromLiteral()
    //     0x637708: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x63770c: ldur            x1, [fp, #-0x10]
    // 0x637710: ArrayStore: r1[24] = r0  ; List_4
    //     0x637710: add             x25, x1, #0x6f
    //     0x637714: str             w0, [x25]
    //     0x637718: tbz             w0, #0, #0x637734
    //     0x63771c: ldurb           w16, [x1, #-1]
    //     0x637720: ldurb           w17, [x0, #-1]
    //     0x637724: and             x16, x17, x16, lsr #2
    //     0x637728: tst             x16, HEAP, lsr #32
    //     0x63772c: b.eq            #0x637734
    //     0x637730: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x637734: r1 = Null
    //     0x637734: mov             x1, NULL
    // 0x637738: r2 = 12
    //     0x637738: mov             x2, #0xc
    // 0x63773c: r0 = AllocateArray()
    //     0x63773c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637740: r16 = "name"
    //     0x637740: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x637744: StoreField: r0->field_f = r16
    //     0x637744: stur            w16, [x0, #0xf]
    // 0x637748: r16 = "Şuara"
    //     0x637748: add             x16, PP, #0x18, lsl #12  ; [pp+0x180f8] "Şuara"
    //     0x63774c: ldr             x16, [x16, #0xf8]
    // 0x637750: StoreField: r0->field_13 = r16
    //     0x637750: stur            w16, [x0, #0x13]
    // 0x637754: r16 = "ayahCount"
    //     0x637754: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637758: ldr             x16, [x16, #0x30]
    // 0x63775c: ArrayStore: r0[0] = r16  ; List_4
    //     0x63775c: stur            w16, [x0, #0x17]
    // 0x637760: r16 = 454
    //     0x637760: mov             x16, #0x1c6
    // 0x637764: StoreField: r0->field_1b = r16
    //     0x637764: stur            w16, [x0, #0x1b]
    // 0x637768: r16 = "page"
    //     0x637768: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63776c: ldr             x16, [x16, #0xa68]
    // 0x637770: StoreField: r0->field_1f = r16
    //     0x637770: stur            w16, [x0, #0x1f]
    // 0x637774: r16 = 732
    //     0x637774: mov             x16, #0x2dc
    // 0x637778: StoreField: r0->field_23 = r16
    //     0x637778: stur            w16, [x0, #0x23]
    // 0x63777c: r16 = <String, dynamic>
    //     0x63777c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637780: stp             x0, x16, [SP]
    // 0x637784: r0 = Map._fromLiteral()
    //     0x637784: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637788: ldur            x1, [fp, #-0x10]
    // 0x63778c: ArrayStore: r1[25] = r0  ; List_4
    //     0x63778c: add             x25, x1, #0x73
    //     0x637790: str             w0, [x25]
    //     0x637794: tbz             w0, #0, #0x6377b0
    //     0x637798: ldurb           w16, [x1, #-1]
    //     0x63779c: ldurb           w17, [x0, #-1]
    //     0x6377a0: and             x16, x17, x16, lsr #2
    //     0x6377a4: tst             x16, HEAP, lsr #32
    //     0x6377a8: b.eq            #0x6377b0
    //     0x6377ac: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6377b0: r1 = Null
    //     0x6377b0: mov             x1, NULL
    // 0x6377b4: r2 = 12
    //     0x6377b4: mov             x2, #0xc
    // 0x6377b8: r0 = AllocateArray()
    //     0x6377b8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6377bc: r16 = "name"
    //     0x6377bc: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6377c0: StoreField: r0->field_f = r16
    //     0x6377c0: stur            w16, [x0, #0xf]
    // 0x6377c4: r16 = "Neml"
    //     0x6377c4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18100] "Neml"
    //     0x6377c8: ldr             x16, [x16, #0x100]
    // 0x6377cc: StoreField: r0->field_13 = r16
    //     0x6377cc: stur            w16, [x0, #0x13]
    // 0x6377d0: r16 = "ayahCount"
    //     0x6377d0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6377d4: ldr             x16, [x16, #0x30]
    // 0x6377d8: ArrayStore: r0[0] = r16  ; List_4
    //     0x6377d8: stur            w16, [x0, #0x17]
    // 0x6377dc: r16 = 186
    //     0x6377dc: mov             x16, #0xba
    // 0x6377e0: StoreField: r0->field_1b = r16
    //     0x6377e0: stur            w16, [x0, #0x1b]
    // 0x6377e4: r16 = "page"
    //     0x6377e4: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6377e8: ldr             x16, [x16, #0xa68]
    // 0x6377ec: StoreField: r0->field_1f = r16
    //     0x6377ec: stur            w16, [x0, #0x1f]
    // 0x6377f0: r16 = 752
    //     0x6377f0: mov             x16, #0x2f0
    // 0x6377f4: StoreField: r0->field_23 = r16
    //     0x6377f4: stur            w16, [x0, #0x23]
    // 0x6377f8: r16 = <String, dynamic>
    //     0x6377f8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6377fc: stp             x0, x16, [SP]
    // 0x637800: r0 = Map._fromLiteral()
    //     0x637800: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637804: ldur            x1, [fp, #-0x10]
    // 0x637808: ArrayStore: r1[26] = r0  ; List_4
    //     0x637808: add             x25, x1, #0x77
    //     0x63780c: str             w0, [x25]
    //     0x637810: tbz             w0, #0, #0x63782c
    //     0x637814: ldurb           w16, [x1, #-1]
    //     0x637818: ldurb           w17, [x0, #-1]
    //     0x63781c: and             x16, x17, x16, lsr #2
    //     0x637820: tst             x16, HEAP, lsr #32
    //     0x637824: b.eq            #0x63782c
    //     0x637828: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x63782c: r1 = Null
    //     0x63782c: mov             x1, NULL
    // 0x637830: r2 = 12
    //     0x637830: mov             x2, #0xc
    // 0x637834: r0 = AllocateArray()
    //     0x637834: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637838: r16 = "name"
    //     0x637838: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x63783c: StoreField: r0->field_f = r16
    //     0x63783c: stur            w16, [x0, #0xf]
    // 0x637840: r16 = "Kasas"
    //     0x637840: add             x16, PP, #0x18, lsl #12  ; [pp+0x18108] "Kasas"
    //     0x637844: ldr             x16, [x16, #0x108]
    // 0x637848: StoreField: r0->field_13 = r16
    //     0x637848: stur            w16, [x0, #0x13]
    // 0x63784c: r16 = "ayahCount"
    //     0x63784c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637850: ldr             x16, [x16, #0x30]
    // 0x637854: ArrayStore: r0[0] = r16  ; List_4
    //     0x637854: stur            w16, [x0, #0x17]
    // 0x637858: r16 = 176
    //     0x637858: mov             x16, #0xb0
    // 0x63785c: StoreField: r0->field_1b = r16
    //     0x63785c: stur            w16, [x0, #0x1b]
    // 0x637860: r16 = "page"
    //     0x637860: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637864: ldr             x16, [x16, #0xa68]
    // 0x637868: StoreField: r0->field_1f = r16
    //     0x637868: stur            w16, [x0, #0x1f]
    // 0x63786c: r16 = 768
    //     0x63786c: mov             x16, #0x300
    // 0x637870: StoreField: r0->field_23 = r16
    //     0x637870: stur            w16, [x0, #0x23]
    // 0x637874: r16 = <String, dynamic>
    //     0x637874: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637878: stp             x0, x16, [SP]
    // 0x63787c: r0 = Map._fromLiteral()
    //     0x63787c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637880: ldur            x1, [fp, #-0x10]
    // 0x637884: ArrayStore: r1[27] = r0  ; List_4
    //     0x637884: add             x25, x1, #0x7b
    //     0x637888: str             w0, [x25]
    //     0x63788c: tbz             w0, #0, #0x6378a8
    //     0x637890: ldurb           w16, [x1, #-1]
    //     0x637894: ldurb           w17, [x0, #-1]
    //     0x637898: and             x16, x17, x16, lsr #2
    //     0x63789c: tst             x16, HEAP, lsr #32
    //     0x6378a0: b.eq            #0x6378a8
    //     0x6378a4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6378a8: r1 = Null
    //     0x6378a8: mov             x1, NULL
    // 0x6378ac: r2 = 12
    //     0x6378ac: mov             x2, #0xc
    // 0x6378b0: r0 = AllocateArray()
    //     0x6378b0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6378b4: r16 = "name"
    //     0x6378b4: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6378b8: StoreField: r0->field_f = r16
    //     0x6378b8: stur            w16, [x0, #0xf]
    // 0x6378bc: r16 = "Ankebut"
    //     0x6378bc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18110] "Ankebut"
    //     0x6378c0: ldr             x16, [x16, #0x110]
    // 0x6378c4: StoreField: r0->field_13 = r16
    //     0x6378c4: stur            w16, [x0, #0x13]
    // 0x6378c8: r16 = "ayahCount"
    //     0x6378c8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6378cc: ldr             x16, [x16, #0x30]
    // 0x6378d0: ArrayStore: r0[0] = r16  ; List_4
    //     0x6378d0: stur            w16, [x0, #0x17]
    // 0x6378d4: r16 = 138
    //     0x6378d4: mov             x16, #0x8a
    // 0x6378d8: StoreField: r0->field_1b = r16
    //     0x6378d8: stur            w16, [x0, #0x1b]
    // 0x6378dc: r16 = "page"
    //     0x6378dc: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6378e0: ldr             x16, [x16, #0xa68]
    // 0x6378e4: StoreField: r0->field_1f = r16
    //     0x6378e4: stur            w16, [x0, #0x1f]
    // 0x6378e8: r16 = 790
    //     0x6378e8: mov             x16, #0x316
    // 0x6378ec: StoreField: r0->field_23 = r16
    //     0x6378ec: stur            w16, [x0, #0x23]
    // 0x6378f0: r16 = <String, dynamic>
    //     0x6378f0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6378f4: stp             x0, x16, [SP]
    // 0x6378f8: r0 = Map._fromLiteral()
    //     0x6378f8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6378fc: ldur            x1, [fp, #-0x10]
    // 0x637900: ArrayStore: r1[28] = r0  ; List_4
    //     0x637900: add             x25, x1, #0x7f
    //     0x637904: str             w0, [x25]
    //     0x637908: tbz             w0, #0, #0x637924
    //     0x63790c: ldurb           w16, [x1, #-1]
    //     0x637910: ldurb           w17, [x0, #-1]
    //     0x637914: and             x16, x17, x16, lsr #2
    //     0x637918: tst             x16, HEAP, lsr #32
    //     0x63791c: b.eq            #0x637924
    //     0x637920: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x637924: r1 = Null
    //     0x637924: mov             x1, NULL
    // 0x637928: r2 = 12
    //     0x637928: mov             x2, #0xc
    // 0x63792c: r0 = AllocateArray()
    //     0x63792c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637930: r16 = "name"
    //     0x637930: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x637934: StoreField: r0->field_f = r16
    //     0x637934: stur            w16, [x0, #0xf]
    // 0x637938: r16 = "Rum"
    //     0x637938: add             x16, PP, #0x18, lsl #12  ; [pp+0x18118] "Rum"
    //     0x63793c: ldr             x16, [x16, #0x118]
    // 0x637940: StoreField: r0->field_13 = r16
    //     0x637940: stur            w16, [x0, #0x13]
    // 0x637944: r16 = "ayahCount"
    //     0x637944: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637948: ldr             x16, [x16, #0x30]
    // 0x63794c: ArrayStore: r0[0] = r16  ; List_4
    //     0x63794c: stur            w16, [x0, #0x17]
    // 0x637950: r16 = 120
    //     0x637950: mov             x16, #0x78
    // 0x637954: StoreField: r0->field_1b = r16
    //     0x637954: stur            w16, [x0, #0x1b]
    // 0x637958: r16 = "page"
    //     0x637958: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63795c: ldr             x16, [x16, #0xa68]
    // 0x637960: StoreField: r0->field_1f = r16
    //     0x637960: stur            w16, [x0, #0x1f]
    // 0x637964: r16 = 806
    //     0x637964: mov             x16, #0x326
    // 0x637968: StoreField: r0->field_23 = r16
    //     0x637968: stur            w16, [x0, #0x23]
    // 0x63796c: r16 = <String, dynamic>
    //     0x63796c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637970: stp             x0, x16, [SP]
    // 0x637974: r0 = Map._fromLiteral()
    //     0x637974: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637978: ldur            x1, [fp, #-0x10]
    // 0x63797c: ArrayStore: r1[29] = r0  ; List_4
    //     0x63797c: add             x25, x1, #0x83
    //     0x637980: str             w0, [x25]
    //     0x637984: tbz             w0, #0, #0x6379a0
    //     0x637988: ldurb           w16, [x1, #-1]
    //     0x63798c: ldurb           w17, [x0, #-1]
    //     0x637990: and             x16, x17, x16, lsr #2
    //     0x637994: tst             x16, HEAP, lsr #32
    //     0x637998: b.eq            #0x6379a0
    //     0x63799c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6379a0: r1 = Null
    //     0x6379a0: mov             x1, NULL
    // 0x6379a4: r2 = 12
    //     0x6379a4: mov             x2, #0xc
    // 0x6379a8: r0 = AllocateArray()
    //     0x6379a8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6379ac: r16 = "name"
    //     0x6379ac: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6379b0: StoreField: r0->field_f = r16
    //     0x6379b0: stur            w16, [x0, #0xf]
    // 0x6379b4: r16 = "Lokman"
    //     0x6379b4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18120] "Lokman"
    //     0x6379b8: ldr             x16, [x16, #0x120]
    // 0x6379bc: StoreField: r0->field_13 = r16
    //     0x6379bc: stur            w16, [x0, #0x13]
    // 0x6379c0: r16 = "ayahCount"
    //     0x6379c0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6379c4: ldr             x16, [x16, #0x30]
    // 0x6379c8: ArrayStore: r0[0] = r16  ; List_4
    //     0x6379c8: stur            w16, [x0, #0x17]
    // 0x6379cc: r16 = 68
    //     0x6379cc: mov             x16, #0x44
    // 0x6379d0: StoreField: r0->field_1b = r16
    //     0x6379d0: stur            w16, [x0, #0x1b]
    // 0x6379d4: r16 = "page"
    //     0x6379d4: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6379d8: ldr             x16, [x16, #0xa68]
    // 0x6379dc: StoreField: r0->field_1f = r16
    //     0x6379dc: stur            w16, [x0, #0x1f]
    // 0x6379e0: r16 = 820
    //     0x6379e0: mov             x16, #0x334
    // 0x6379e4: StoreField: r0->field_23 = r16
    //     0x6379e4: stur            w16, [x0, #0x23]
    // 0x6379e8: r16 = <String, dynamic>
    //     0x6379e8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6379ec: stp             x0, x16, [SP]
    // 0x6379f0: r0 = Map._fromLiteral()
    //     0x6379f0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6379f4: ldur            x1, [fp, #-0x10]
    // 0x6379f8: ArrayStore: r1[30] = r0  ; List_4
    //     0x6379f8: add             x25, x1, #0x87
    //     0x6379fc: str             w0, [x25]
    //     0x637a00: tbz             w0, #0, #0x637a1c
    //     0x637a04: ldurb           w16, [x1, #-1]
    //     0x637a08: ldurb           w17, [x0, #-1]
    //     0x637a0c: and             x16, x17, x16, lsr #2
    //     0x637a10: tst             x16, HEAP, lsr #32
    //     0x637a14: b.eq            #0x637a1c
    //     0x637a18: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x637a1c: r1 = Null
    //     0x637a1c: mov             x1, NULL
    // 0x637a20: r2 = 12
    //     0x637a20: mov             x2, #0xc
    // 0x637a24: r0 = AllocateArray()
    //     0x637a24: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637a28: r16 = "name"
    //     0x637a28: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x637a2c: StoreField: r0->field_f = r16
    //     0x637a2c: stur            w16, [x0, #0xf]
    // 0x637a30: r16 = "Es-Secde"
    //     0x637a30: add             x16, PP, #0x18, lsl #12  ; [pp+0x18128] "Es-Secde"
    //     0x637a34: ldr             x16, [x16, #0x128]
    // 0x637a38: StoreField: r0->field_13 = r16
    //     0x637a38: stur            w16, [x0, #0x13]
    // 0x637a3c: r16 = "ayahCount"
    //     0x637a3c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637a40: ldr             x16, [x16, #0x30]
    // 0x637a44: ArrayStore: r0[0] = r16  ; List_4
    //     0x637a44: stur            w16, [x0, #0x17]
    // 0x637a48: r16 = 60
    //     0x637a48: mov             x16, #0x3c
    // 0x637a4c: StoreField: r0->field_1b = r16
    //     0x637a4c: stur            w16, [x0, #0x1b]
    // 0x637a50: r16 = "page"
    //     0x637a50: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637a54: ldr             x16, [x16, #0xa68]
    // 0x637a58: StoreField: r0->field_1f = r16
    //     0x637a58: stur            w16, [x0, #0x1f]
    // 0x637a5c: r16 = 828
    //     0x637a5c: mov             x16, #0x33c
    // 0x637a60: StoreField: r0->field_23 = r16
    //     0x637a60: stur            w16, [x0, #0x23]
    // 0x637a64: r16 = <String, dynamic>
    //     0x637a64: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637a68: stp             x0, x16, [SP]
    // 0x637a6c: r0 = Map._fromLiteral()
    //     0x637a6c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637a70: ldur            x1, [fp, #-0x10]
    // 0x637a74: ArrayStore: r1[31] = r0  ; List_4
    //     0x637a74: add             x25, x1, #0x8b
    //     0x637a78: str             w0, [x25]
    //     0x637a7c: tbz             w0, #0, #0x637a98
    //     0x637a80: ldurb           w16, [x1, #-1]
    //     0x637a84: ldurb           w17, [x0, #-1]
    //     0x637a88: and             x16, x17, x16, lsr #2
    //     0x637a8c: tst             x16, HEAP, lsr #32
    //     0x637a90: b.eq            #0x637a98
    //     0x637a94: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x637a98: r1 = Null
    //     0x637a98: mov             x1, NULL
    // 0x637a9c: r2 = 12
    //     0x637a9c: mov             x2, #0xc
    // 0x637aa0: r0 = AllocateArray()
    //     0x637aa0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637aa4: r16 = "name"
    //     0x637aa4: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x637aa8: StoreField: r0->field_f = r16
    //     0x637aa8: stur            w16, [x0, #0xf]
    // 0x637aac: r16 = "Ahzab"
    //     0x637aac: add             x16, PP, #0x18, lsl #12  ; [pp+0x18130] "Ahzab"
    //     0x637ab0: ldr             x16, [x16, #0x130]
    // 0x637ab4: StoreField: r0->field_13 = r16
    //     0x637ab4: stur            w16, [x0, #0x13]
    // 0x637ab8: r16 = "ayahCount"
    //     0x637ab8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637abc: ldr             x16, [x16, #0x30]
    // 0x637ac0: ArrayStore: r0[0] = r16  ; List_4
    //     0x637ac0: stur            w16, [x0, #0x17]
    // 0x637ac4: r16 = 146
    //     0x637ac4: mov             x16, #0x92
    // 0x637ac8: StoreField: r0->field_1b = r16
    //     0x637ac8: stur            w16, [x0, #0x1b]
    // 0x637acc: r16 = "page"
    //     0x637acc: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637ad0: ldr             x16, [x16, #0xa68]
    // 0x637ad4: StoreField: r0->field_1f = r16
    //     0x637ad4: stur            w16, [x0, #0x1f]
    // 0x637ad8: r16 = 834
    //     0x637ad8: mov             x16, #0x342
    // 0x637adc: StoreField: r0->field_23 = r16
    //     0x637adc: stur            w16, [x0, #0x23]
    // 0x637ae0: r16 = <String, dynamic>
    //     0x637ae0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637ae4: stp             x0, x16, [SP]
    // 0x637ae8: r0 = Map._fromLiteral()
    //     0x637ae8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637aec: ldur            x1, [fp, #-0x10]
    // 0x637af0: ArrayStore: r1[32] = r0  ; List_4
    //     0x637af0: add             x25, x1, #0x8f
    //     0x637af4: str             w0, [x25]
    //     0x637af8: tbz             w0, #0, #0x637b14
    //     0x637afc: ldurb           w16, [x1, #-1]
    //     0x637b00: ldurb           w17, [x0, #-1]
    //     0x637b04: and             x16, x17, x16, lsr #2
    //     0x637b08: tst             x16, HEAP, lsr #32
    //     0x637b0c: b.eq            #0x637b14
    //     0x637b10: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x637b14: r1 = Null
    //     0x637b14: mov             x1, NULL
    // 0x637b18: r2 = 12
    //     0x637b18: mov             x2, #0xc
    // 0x637b1c: r0 = AllocateArray()
    //     0x637b1c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637b20: r16 = "name"
    //     0x637b20: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x637b24: StoreField: r0->field_f = r16
    //     0x637b24: stur            w16, [x0, #0xf]
    // 0x637b28: r16 = "Sebe\'"
    //     0x637b28: add             x16, PP, #0x18, lsl #12  ; [pp+0x18138] "Sebe\'"
    //     0x637b2c: ldr             x16, [x16, #0x138]
    // 0x637b30: StoreField: r0->field_13 = r16
    //     0x637b30: stur            w16, [x0, #0x13]
    // 0x637b34: r16 = "ayahCount"
    //     0x637b34: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637b38: ldr             x16, [x16, #0x30]
    // 0x637b3c: ArrayStore: r0[0] = r16  ; List_4
    //     0x637b3c: stur            w16, [x0, #0x17]
    // 0x637b40: r16 = 108
    //     0x637b40: mov             x16, #0x6c
    // 0x637b44: StoreField: r0->field_1b = r16
    //     0x637b44: stur            w16, [x0, #0x1b]
    // 0x637b48: r16 = "page"
    //     0x637b48: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637b4c: ldr             x16, [x16, #0xa68]
    // 0x637b50: StoreField: r0->field_1f = r16
    //     0x637b50: stur            w16, [x0, #0x1f]
    // 0x637b54: r16 = 854
    //     0x637b54: mov             x16, #0x356
    // 0x637b58: StoreField: r0->field_23 = r16
    //     0x637b58: stur            w16, [x0, #0x23]
    // 0x637b5c: r16 = <String, dynamic>
    //     0x637b5c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637b60: stp             x0, x16, [SP]
    // 0x637b64: r0 = Map._fromLiteral()
    //     0x637b64: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637b68: ldur            x1, [fp, #-0x10]
    // 0x637b6c: ArrayStore: r1[33] = r0  ; List_4
    //     0x637b6c: add             x25, x1, #0x93
    //     0x637b70: str             w0, [x25]
    //     0x637b74: tbz             w0, #0, #0x637b90
    //     0x637b78: ldurb           w16, [x1, #-1]
    //     0x637b7c: ldurb           w17, [x0, #-1]
    //     0x637b80: and             x16, x17, x16, lsr #2
    //     0x637b84: tst             x16, HEAP, lsr #32
    //     0x637b88: b.eq            #0x637b90
    //     0x637b8c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x637b90: r1 = Null
    //     0x637b90: mov             x1, NULL
    // 0x637b94: r2 = 12
    //     0x637b94: mov             x2, #0xc
    // 0x637b98: r0 = AllocateArray()
    //     0x637b98: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637b9c: r16 = "name"
    //     0x637b9c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x637ba0: StoreField: r0->field_f = r16
    //     0x637ba0: stur            w16, [x0, #0xf]
    // 0x637ba4: r16 = "Fatır"
    //     0x637ba4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18140] "Fatır"
    //     0x637ba8: ldr             x16, [x16, #0x140]
    // 0x637bac: StoreField: r0->field_13 = r16
    //     0x637bac: stur            w16, [x0, #0x13]
    // 0x637bb0: r16 = "ayahCount"
    //     0x637bb0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637bb4: ldr             x16, [x16, #0x30]
    // 0x637bb8: ArrayStore: r0[0] = r16  ; List_4
    //     0x637bb8: stur            w16, [x0, #0x17]
    // 0x637bbc: r16 = 90
    //     0x637bbc: mov             x16, #0x5a
    // 0x637bc0: StoreField: r0->field_1b = r16
    //     0x637bc0: stur            w16, [x0, #0x1b]
    // 0x637bc4: r16 = "page"
    //     0x637bc4: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637bc8: ldr             x16, [x16, #0xa68]
    // 0x637bcc: StoreField: r0->field_1f = r16
    //     0x637bcc: stur            w16, [x0, #0x1f]
    // 0x637bd0: r16 = 866
    //     0x637bd0: mov             x16, #0x362
    // 0x637bd4: StoreField: r0->field_23 = r16
    //     0x637bd4: stur            w16, [x0, #0x23]
    // 0x637bd8: r16 = <String, dynamic>
    //     0x637bd8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637bdc: stp             x0, x16, [SP]
    // 0x637be0: r0 = Map._fromLiteral()
    //     0x637be0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637be4: ldur            x1, [fp, #-0x10]
    // 0x637be8: ArrayStore: r1[34] = r0  ; List_4
    //     0x637be8: add             x25, x1, #0x97
    //     0x637bec: str             w0, [x25]
    //     0x637bf0: tbz             w0, #0, #0x637c0c
    //     0x637bf4: ldurb           w16, [x1, #-1]
    //     0x637bf8: ldurb           w17, [x0, #-1]
    //     0x637bfc: and             x16, x17, x16, lsr #2
    //     0x637c00: tst             x16, HEAP, lsr #32
    //     0x637c04: b.eq            #0x637c0c
    //     0x637c08: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x637c0c: r1 = Null
    //     0x637c0c: mov             x1, NULL
    // 0x637c10: r2 = 12
    //     0x637c10: mov             x2, #0xc
    // 0x637c14: r0 = AllocateArray()
    //     0x637c14: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637c18: r16 = "name"
    //     0x637c18: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x637c1c: StoreField: r0->field_f = r16
    //     0x637c1c: stur            w16, [x0, #0xf]
    // 0x637c20: r16 = "Yasin"
    //     0x637c20: add             x16, PP, #0x18, lsl #12  ; [pp+0x18148] "Yasin"
    //     0x637c24: ldr             x16, [x16, #0x148]
    // 0x637c28: StoreField: r0->field_13 = r16
    //     0x637c28: stur            w16, [x0, #0x13]
    // 0x637c2c: r16 = "ayahCount"
    //     0x637c2c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637c30: ldr             x16, [x16, #0x30]
    // 0x637c34: ArrayStore: r0[0] = r16  ; List_4
    //     0x637c34: stur            w16, [x0, #0x17]
    // 0x637c38: r16 = 166
    //     0x637c38: mov             x16, #0xa6
    // 0x637c3c: StoreField: r0->field_1b = r16
    //     0x637c3c: stur            w16, [x0, #0x1b]
    // 0x637c40: r16 = "page"
    //     0x637c40: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637c44: ldr             x16, [x16, #0xa68]
    // 0x637c48: StoreField: r0->field_1f = r16
    //     0x637c48: stur            w16, [x0, #0x1f]
    // 0x637c4c: r16 = 878
    //     0x637c4c: mov             x16, #0x36e
    // 0x637c50: StoreField: r0->field_23 = r16
    //     0x637c50: stur            w16, [x0, #0x23]
    // 0x637c54: r16 = <String, dynamic>
    //     0x637c54: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637c58: stp             x0, x16, [SP]
    // 0x637c5c: r0 = Map._fromLiteral()
    //     0x637c5c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637c60: ldur            x1, [fp, #-0x10]
    // 0x637c64: ArrayStore: r1[35] = r0  ; List_4
    //     0x637c64: add             x25, x1, #0x9b
    //     0x637c68: str             w0, [x25]
    //     0x637c6c: tbz             w0, #0, #0x637c88
    //     0x637c70: ldurb           w16, [x1, #-1]
    //     0x637c74: ldurb           w17, [x0, #-1]
    //     0x637c78: and             x16, x17, x16, lsr #2
    //     0x637c7c: tst             x16, HEAP, lsr #32
    //     0x637c80: b.eq            #0x637c88
    //     0x637c84: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x637c88: r1 = Null
    //     0x637c88: mov             x1, NULL
    // 0x637c8c: r2 = 12
    //     0x637c8c: mov             x2, #0xc
    // 0x637c90: r0 = AllocateArray()
    //     0x637c90: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637c94: r16 = "name"
    //     0x637c94: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x637c98: StoreField: r0->field_f = r16
    //     0x637c98: stur            w16, [x0, #0xf]
    // 0x637c9c: r16 = "Es-Saffat"
    //     0x637c9c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18150] "Es-Saffat"
    //     0x637ca0: ldr             x16, [x16, #0x150]
    // 0x637ca4: StoreField: r0->field_13 = r16
    //     0x637ca4: stur            w16, [x0, #0x13]
    // 0x637ca8: r16 = "ayahCount"
    //     0x637ca8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637cac: ldr             x16, [x16, #0x30]
    // 0x637cb0: ArrayStore: r0[0] = r16  ; List_4
    //     0x637cb0: stur            w16, [x0, #0x17]
    // 0x637cb4: r16 = 364
    //     0x637cb4: mov             x16, #0x16c
    // 0x637cb8: StoreField: r0->field_1b = r16
    //     0x637cb8: stur            w16, [x0, #0x1b]
    // 0x637cbc: r16 = "page"
    //     0x637cbc: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637cc0: ldr             x16, [x16, #0xa68]
    // 0x637cc4: StoreField: r0->field_1f = r16
    //     0x637cc4: stur            w16, [x0, #0x1f]
    // 0x637cc8: r16 = 890
    //     0x637cc8: mov             x16, #0x37a
    // 0x637ccc: StoreField: r0->field_23 = r16
    //     0x637ccc: stur            w16, [x0, #0x23]
    // 0x637cd0: r16 = <String, dynamic>
    //     0x637cd0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637cd4: stp             x0, x16, [SP]
    // 0x637cd8: r0 = Map._fromLiteral()
    //     0x637cd8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637cdc: ldur            x1, [fp, #-0x10]
    // 0x637ce0: ArrayStore: r1[36] = r0  ; List_4
    //     0x637ce0: add             x25, x1, #0x9f
    //     0x637ce4: str             w0, [x25]
    //     0x637ce8: tbz             w0, #0, #0x637d04
    //     0x637cec: ldurb           w16, [x1, #-1]
    //     0x637cf0: ldurb           w17, [x0, #-1]
    //     0x637cf4: and             x16, x17, x16, lsr #2
    //     0x637cf8: tst             x16, HEAP, lsr #32
    //     0x637cfc: b.eq            #0x637d04
    //     0x637d00: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x637d04: r1 = Null
    //     0x637d04: mov             x1, NULL
    // 0x637d08: r2 = 12
    //     0x637d08: mov             x2, #0xc
    // 0x637d0c: r0 = AllocateArray()
    //     0x637d0c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637d10: r16 = "name"
    //     0x637d10: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x637d14: StoreField: r0->field_f = r16
    //     0x637d14: stur            w16, [x0, #0xf]
    // 0x637d18: r16 = "Sad"
    //     0x637d18: add             x16, PP, #0x18, lsl #12  ; [pp+0x18158] "Sad"
    //     0x637d1c: ldr             x16, [x16, #0x158]
    // 0x637d20: StoreField: r0->field_13 = r16
    //     0x637d20: stur            w16, [x0, #0x13]
    // 0x637d24: r16 = "ayahCount"
    //     0x637d24: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637d28: ldr             x16, [x16, #0x30]
    // 0x637d2c: ArrayStore: r0[0] = r16  ; List_4
    //     0x637d2c: stur            w16, [x0, #0x17]
    // 0x637d30: r16 = 176
    //     0x637d30: mov             x16, #0xb0
    // 0x637d34: StoreField: r0->field_1b = r16
    //     0x637d34: stur            w16, [x0, #0x1b]
    // 0x637d38: r16 = "page"
    //     0x637d38: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637d3c: ldr             x16, [x16, #0xa68]
    // 0x637d40: StoreField: r0->field_1f = r16
    //     0x637d40: stur            w16, [x0, #0x1f]
    // 0x637d44: r16 = 904
    //     0x637d44: mov             x16, #0x388
    // 0x637d48: StoreField: r0->field_23 = r16
    //     0x637d48: stur            w16, [x0, #0x23]
    // 0x637d4c: r16 = <String, dynamic>
    //     0x637d4c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637d50: stp             x0, x16, [SP]
    // 0x637d54: r0 = Map._fromLiteral()
    //     0x637d54: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637d58: ldur            x1, [fp, #-0x10]
    // 0x637d5c: ArrayStore: r1[37] = r0  ; List_4
    //     0x637d5c: add             x25, x1, #0xa3
    //     0x637d60: str             w0, [x25]
    //     0x637d64: tbz             w0, #0, #0x637d80
    //     0x637d68: ldurb           w16, [x1, #-1]
    //     0x637d6c: ldurb           w17, [x0, #-1]
    //     0x637d70: and             x16, x17, x16, lsr #2
    //     0x637d74: tst             x16, HEAP, lsr #32
    //     0x637d78: b.eq            #0x637d80
    //     0x637d7c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x637d80: r1 = Null
    //     0x637d80: mov             x1, NULL
    // 0x637d84: r2 = 12
    //     0x637d84: mov             x2, #0xc
    // 0x637d88: r0 = AllocateArray()
    //     0x637d88: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637d8c: r16 = "name"
    //     0x637d8c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x637d90: StoreField: r0->field_f = r16
    //     0x637d90: stur            w16, [x0, #0xf]
    // 0x637d94: r16 = "Zümer"
    //     0x637d94: add             x16, PP, #0x18, lsl #12  ; [pp+0x18160] "Zümer"
    //     0x637d98: ldr             x16, [x16, #0x160]
    // 0x637d9c: StoreField: r0->field_13 = r16
    //     0x637d9c: stur            w16, [x0, #0x13]
    // 0x637da0: r16 = "ayahCount"
    //     0x637da0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637da4: ldr             x16, [x16, #0x30]
    // 0x637da8: ArrayStore: r0[0] = r16  ; List_4
    //     0x637da8: stur            w16, [x0, #0x17]
    // 0x637dac: r16 = 150
    //     0x637dac: mov             x16, #0x96
    // 0x637db0: StoreField: r0->field_1b = r16
    //     0x637db0: stur            w16, [x0, #0x1b]
    // 0x637db4: r16 = "page"
    //     0x637db4: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637db8: ldr             x16, [x16, #0xa68]
    // 0x637dbc: StoreField: r0->field_1f = r16
    //     0x637dbc: stur            w16, [x0, #0x1f]
    // 0x637dc0: r16 = 914
    //     0x637dc0: mov             x16, #0x392
    // 0x637dc4: StoreField: r0->field_23 = r16
    //     0x637dc4: stur            w16, [x0, #0x23]
    // 0x637dc8: r16 = <String, dynamic>
    //     0x637dc8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637dcc: stp             x0, x16, [SP]
    // 0x637dd0: r0 = Map._fromLiteral()
    //     0x637dd0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637dd4: ldur            x1, [fp, #-0x10]
    // 0x637dd8: ArrayStore: r1[38] = r0  ; List_4
    //     0x637dd8: add             x25, x1, #0xa7
    //     0x637ddc: str             w0, [x25]
    //     0x637de0: tbz             w0, #0, #0x637dfc
    //     0x637de4: ldurb           w16, [x1, #-1]
    //     0x637de8: ldurb           w17, [x0, #-1]
    //     0x637dec: and             x16, x17, x16, lsr #2
    //     0x637df0: tst             x16, HEAP, lsr #32
    //     0x637df4: b.eq            #0x637dfc
    //     0x637df8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x637dfc: r1 = Null
    //     0x637dfc: mov             x1, NULL
    // 0x637e00: r2 = 12
    //     0x637e00: mov             x2, #0xc
    // 0x637e04: r0 = AllocateArray()
    //     0x637e04: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637e08: r16 = "name"
    //     0x637e08: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x637e0c: StoreField: r0->field_f = r16
    //     0x637e0c: stur            w16, [x0, #0xf]
    // 0x637e10: r16 = "Mü\'min"
    //     0x637e10: add             x16, PP, #0x18, lsl #12  ; [pp+0x18168] "Mü\'min"
    //     0x637e14: ldr             x16, [x16, #0x168]
    // 0x637e18: StoreField: r0->field_13 = r16
    //     0x637e18: stur            w16, [x0, #0x13]
    // 0x637e1c: r16 = "ayahCount"
    //     0x637e1c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637e20: ldr             x16, [x16, #0x30]
    // 0x637e24: ArrayStore: r0[0] = r16  ; List_4
    //     0x637e24: stur            w16, [x0, #0x17]
    // 0x637e28: r16 = 170
    //     0x637e28: mov             x16, #0xaa
    // 0x637e2c: StoreField: r0->field_1b = r16
    //     0x637e2c: stur            w16, [x0, #0x1b]
    // 0x637e30: r16 = "page"
    //     0x637e30: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637e34: ldr             x16, [x16, #0xa68]
    // 0x637e38: StoreField: r0->field_1f = r16
    //     0x637e38: stur            w16, [x0, #0x1f]
    // 0x637e3c: r16 = 932
    //     0x637e3c: mov             x16, #0x3a4
    // 0x637e40: StoreField: r0->field_23 = r16
    //     0x637e40: stur            w16, [x0, #0x23]
    // 0x637e44: r16 = <String, dynamic>
    //     0x637e44: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637e48: stp             x0, x16, [SP]
    // 0x637e4c: r0 = Map._fromLiteral()
    //     0x637e4c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637e50: ldur            x1, [fp, #-0x10]
    // 0x637e54: ArrayStore: r1[39] = r0  ; List_4
    //     0x637e54: add             x25, x1, #0xab
    //     0x637e58: str             w0, [x25]
    //     0x637e5c: tbz             w0, #0, #0x637e78
    //     0x637e60: ldurb           w16, [x1, #-1]
    //     0x637e64: ldurb           w17, [x0, #-1]
    //     0x637e68: and             x16, x17, x16, lsr #2
    //     0x637e6c: tst             x16, HEAP, lsr #32
    //     0x637e70: b.eq            #0x637e78
    //     0x637e74: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x637e78: r1 = Null
    //     0x637e78: mov             x1, NULL
    // 0x637e7c: r2 = 12
    //     0x637e7c: mov             x2, #0xc
    // 0x637e80: r0 = AllocateArray()
    //     0x637e80: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637e84: r16 = "name"
    //     0x637e84: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x637e88: StoreField: r0->field_f = r16
    //     0x637e88: stur            w16, [x0, #0xf]
    // 0x637e8c: r16 = "Fussilet"
    //     0x637e8c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18170] "Fussilet"
    //     0x637e90: ldr             x16, [x16, #0x170]
    // 0x637e94: StoreField: r0->field_13 = r16
    //     0x637e94: stur            w16, [x0, #0x13]
    // 0x637e98: r16 = "ayahCount"
    //     0x637e98: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637e9c: ldr             x16, [x16, #0x30]
    // 0x637ea0: ArrayStore: r0[0] = r16  ; List_4
    //     0x637ea0: stur            w16, [x0, #0x17]
    // 0x637ea4: r16 = 108
    //     0x637ea4: mov             x16, #0x6c
    // 0x637ea8: StoreField: r0->field_1b = r16
    //     0x637ea8: stur            w16, [x0, #0x1b]
    // 0x637eac: r16 = "page"
    //     0x637eac: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637eb0: ldr             x16, [x16, #0xa68]
    // 0x637eb4: StoreField: r0->field_1f = r16
    //     0x637eb4: stur            w16, [x0, #0x1f]
    // 0x637eb8: r16 = 952
    //     0x637eb8: mov             x16, #0x3b8
    // 0x637ebc: StoreField: r0->field_23 = r16
    //     0x637ebc: stur            w16, [x0, #0x23]
    // 0x637ec0: r16 = <String, dynamic>
    //     0x637ec0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637ec4: stp             x0, x16, [SP]
    // 0x637ec8: r0 = Map._fromLiteral()
    //     0x637ec8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637ecc: ldur            x1, [fp, #-0x10]
    // 0x637ed0: ArrayStore: r1[40] = r0  ; List_4
    //     0x637ed0: add             x25, x1, #0xaf
    //     0x637ed4: str             w0, [x25]
    //     0x637ed8: tbz             w0, #0, #0x637ef4
    //     0x637edc: ldurb           w16, [x1, #-1]
    //     0x637ee0: ldurb           w17, [x0, #-1]
    //     0x637ee4: and             x16, x17, x16, lsr #2
    //     0x637ee8: tst             x16, HEAP, lsr #32
    //     0x637eec: b.eq            #0x637ef4
    //     0x637ef0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x637ef4: r1 = Null
    //     0x637ef4: mov             x1, NULL
    // 0x637ef8: r2 = 12
    //     0x637ef8: mov             x2, #0xc
    // 0x637efc: r0 = AllocateArray()
    //     0x637efc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637f00: r16 = "name"
    //     0x637f00: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x637f04: StoreField: r0->field_f = r16
    //     0x637f04: stur            w16, [x0, #0xf]
    // 0x637f08: r16 = "Şura"
    //     0x637f08: add             x16, PP, #0x18, lsl #12  ; [pp+0x18178] "Şura"
    //     0x637f0c: ldr             x16, [x16, #0x178]
    // 0x637f10: StoreField: r0->field_13 = r16
    //     0x637f10: stur            w16, [x0, #0x13]
    // 0x637f14: r16 = "ayahCount"
    //     0x637f14: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637f18: ldr             x16, [x16, #0x30]
    // 0x637f1c: ArrayStore: r0[0] = r16  ; List_4
    //     0x637f1c: stur            w16, [x0, #0x17]
    // 0x637f20: r16 = 106
    //     0x637f20: mov             x16, #0x6a
    // 0x637f24: StoreField: r0->field_1b = r16
    //     0x637f24: stur            w16, [x0, #0x1b]
    // 0x637f28: r16 = "page"
    //     0x637f28: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637f2c: ldr             x16, [x16, #0xa68]
    // 0x637f30: StoreField: r0->field_1f = r16
    //     0x637f30: stur            w16, [x0, #0x1f]
    // 0x637f34: r16 = 964
    //     0x637f34: mov             x16, #0x3c4
    // 0x637f38: StoreField: r0->field_23 = r16
    //     0x637f38: stur            w16, [x0, #0x23]
    // 0x637f3c: r16 = <String, dynamic>
    //     0x637f3c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637f40: stp             x0, x16, [SP]
    // 0x637f44: r0 = Map._fromLiteral()
    //     0x637f44: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637f48: ldur            x1, [fp, #-0x10]
    // 0x637f4c: ArrayStore: r1[41] = r0  ; List_4
    //     0x637f4c: add             x25, x1, #0xb3
    //     0x637f50: str             w0, [x25]
    //     0x637f54: tbz             w0, #0, #0x637f70
    //     0x637f58: ldurb           w16, [x1, #-1]
    //     0x637f5c: ldurb           w17, [x0, #-1]
    //     0x637f60: and             x16, x17, x16, lsr #2
    //     0x637f64: tst             x16, HEAP, lsr #32
    //     0x637f68: b.eq            #0x637f70
    //     0x637f6c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x637f70: r1 = Null
    //     0x637f70: mov             x1, NULL
    // 0x637f74: r2 = 12
    //     0x637f74: mov             x2, #0xc
    // 0x637f78: r0 = AllocateArray()
    //     0x637f78: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637f7c: r16 = "name"
    //     0x637f7c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x637f80: StoreField: r0->field_f = r16
    //     0x637f80: stur            w16, [x0, #0xf]
    // 0x637f84: r16 = "Zuhruf"
    //     0x637f84: add             x16, PP, #0x18, lsl #12  ; [pp+0x18180] "Zuhruf"
    //     0x637f88: ldr             x16, [x16, #0x180]
    // 0x637f8c: StoreField: r0->field_13 = r16
    //     0x637f8c: stur            w16, [x0, #0x13]
    // 0x637f90: r16 = "ayahCount"
    //     0x637f90: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x637f94: ldr             x16, [x16, #0x30]
    // 0x637f98: ArrayStore: r0[0] = r16  ; List_4
    //     0x637f98: stur            w16, [x0, #0x17]
    // 0x637f9c: r16 = 178
    //     0x637f9c: mov             x16, #0xb2
    // 0x637fa0: StoreField: r0->field_1b = r16
    //     0x637fa0: stur            w16, [x0, #0x1b]
    // 0x637fa4: r16 = "page"
    //     0x637fa4: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x637fa8: ldr             x16, [x16, #0xa68]
    // 0x637fac: StoreField: r0->field_1f = r16
    //     0x637fac: stur            w16, [x0, #0x1f]
    // 0x637fb0: r16 = 976
    //     0x637fb0: mov             x16, #0x3d0
    // 0x637fb4: StoreField: r0->field_23 = r16
    //     0x637fb4: stur            w16, [x0, #0x23]
    // 0x637fb8: r16 = <String, dynamic>
    //     0x637fb8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x637fbc: stp             x0, x16, [SP]
    // 0x637fc0: r0 = Map._fromLiteral()
    //     0x637fc0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x637fc4: ldur            x1, [fp, #-0x10]
    // 0x637fc8: ArrayStore: r1[42] = r0  ; List_4
    //     0x637fc8: add             x25, x1, #0xb7
    //     0x637fcc: str             w0, [x25]
    //     0x637fd0: tbz             w0, #0, #0x637fec
    //     0x637fd4: ldurb           w16, [x1, #-1]
    //     0x637fd8: ldurb           w17, [x0, #-1]
    //     0x637fdc: and             x16, x17, x16, lsr #2
    //     0x637fe0: tst             x16, HEAP, lsr #32
    //     0x637fe4: b.eq            #0x637fec
    //     0x637fe8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x637fec: r1 = Null
    //     0x637fec: mov             x1, NULL
    // 0x637ff0: r2 = 12
    //     0x637ff0: mov             x2, #0xc
    // 0x637ff4: r0 = AllocateArray()
    //     0x637ff4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x637ff8: r16 = "name"
    //     0x637ff8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x637ffc: StoreField: r0->field_f = r16
    //     0x637ffc: stur            w16, [x0, #0xf]
    // 0x638000: r16 = "Ed-Duhan"
    //     0x638000: add             x16, PP, #0x18, lsl #12  ; [pp+0x18188] "Ed-Duhan"
    //     0x638004: ldr             x16, [x16, #0x188]
    // 0x638008: StoreField: r0->field_13 = r16
    //     0x638008: stur            w16, [x0, #0x13]
    // 0x63800c: r16 = "ayahCount"
    //     0x63800c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x638010: ldr             x16, [x16, #0x30]
    // 0x638014: ArrayStore: r0[0] = r16  ; List_4
    //     0x638014: stur            w16, [x0, #0x17]
    // 0x638018: r16 = 118
    //     0x638018: mov             x16, #0x76
    // 0x63801c: StoreField: r0->field_1b = r16
    //     0x63801c: stur            w16, [x0, #0x1b]
    // 0x638020: r16 = "page"
    //     0x638020: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638024: ldr             x16, [x16, #0xa68]
    // 0x638028: StoreField: r0->field_1f = r16
    //     0x638028: stur            w16, [x0, #0x1f]
    // 0x63802c: r16 = 990
    //     0x63802c: mov             x16, #0x3de
    // 0x638030: StoreField: r0->field_23 = r16
    //     0x638030: stur            w16, [x0, #0x23]
    // 0x638034: r16 = <String, dynamic>
    //     0x638034: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638038: stp             x0, x16, [SP]
    // 0x63803c: r0 = Map._fromLiteral()
    //     0x63803c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638040: ldur            x1, [fp, #-0x10]
    // 0x638044: ArrayStore: r1[43] = r0  ; List_4
    //     0x638044: add             x25, x1, #0xbb
    //     0x638048: str             w0, [x25]
    //     0x63804c: tbz             w0, #0, #0x638068
    //     0x638050: ldurb           w16, [x1, #-1]
    //     0x638054: ldurb           w17, [x0, #-1]
    //     0x638058: and             x16, x17, x16, lsr #2
    //     0x63805c: tst             x16, HEAP, lsr #32
    //     0x638060: b.eq            #0x638068
    //     0x638064: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638068: r1 = Null
    //     0x638068: mov             x1, NULL
    // 0x63806c: r2 = 12
    //     0x63806c: mov             x2, #0xc
    // 0x638070: r0 = AllocateArray()
    //     0x638070: bl              #0x9280a0  ; AllocateArrayStub
    // 0x638074: r16 = "name"
    //     0x638074: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638078: StoreField: r0->field_f = r16
    //     0x638078: stur            w16, [x0, #0xf]
    // 0x63807c: r16 = "Casiye"
    //     0x63807c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18190] "Casiye"
    //     0x638080: ldr             x16, [x16, #0x190]
    // 0x638084: StoreField: r0->field_13 = r16
    //     0x638084: stur            w16, [x0, #0x13]
    // 0x638088: r16 = "ayahCount"
    //     0x638088: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x63808c: ldr             x16, [x16, #0x30]
    // 0x638090: ArrayStore: r0[0] = r16  ; List_4
    //     0x638090: stur            w16, [x0, #0x17]
    // 0x638094: r16 = 74
    //     0x638094: mov             x16, #0x4a
    // 0x638098: StoreField: r0->field_1b = r16
    //     0x638098: stur            w16, [x0, #0x1b]
    // 0x63809c: r16 = "page"
    //     0x63809c: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6380a0: ldr             x16, [x16, #0xa68]
    // 0x6380a4: StoreField: r0->field_1f = r16
    //     0x6380a4: stur            w16, [x0, #0x1f]
    // 0x6380a8: r16 = 996
    //     0x6380a8: mov             x16, #0x3e4
    // 0x6380ac: StoreField: r0->field_23 = r16
    //     0x6380ac: stur            w16, [x0, #0x23]
    // 0x6380b0: r16 = <String, dynamic>
    //     0x6380b0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6380b4: stp             x0, x16, [SP]
    // 0x6380b8: r0 = Map._fromLiteral()
    //     0x6380b8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6380bc: ldur            x1, [fp, #-0x10]
    // 0x6380c0: ArrayStore: r1[44] = r0  ; List_4
    //     0x6380c0: add             x25, x1, #0xbf
    //     0x6380c4: str             w0, [x25]
    //     0x6380c8: tbz             w0, #0, #0x6380e4
    //     0x6380cc: ldurb           w16, [x1, #-1]
    //     0x6380d0: ldurb           w17, [x0, #-1]
    //     0x6380d4: and             x16, x17, x16, lsr #2
    //     0x6380d8: tst             x16, HEAP, lsr #32
    //     0x6380dc: b.eq            #0x6380e4
    //     0x6380e0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6380e4: r1 = Null
    //     0x6380e4: mov             x1, NULL
    // 0x6380e8: r2 = 12
    //     0x6380e8: mov             x2, #0xc
    // 0x6380ec: r0 = AllocateArray()
    //     0x6380ec: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6380f0: r16 = "name"
    //     0x6380f0: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6380f4: StoreField: r0->field_f = r16
    //     0x6380f4: stur            w16, [x0, #0xf]
    // 0x6380f8: r16 = "Ahkaf"
    //     0x6380f8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18198] "Ahkaf"
    //     0x6380fc: ldr             x16, [x16, #0x198]
    // 0x638100: StoreField: r0->field_13 = r16
    //     0x638100: stur            w16, [x0, #0x13]
    // 0x638104: r16 = "ayahCount"
    //     0x638104: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x638108: ldr             x16, [x16, #0x30]
    // 0x63810c: ArrayStore: r0[0] = r16  ; List_4
    //     0x63810c: stur            w16, [x0, #0x17]
    // 0x638110: r16 = 70
    //     0x638110: mov             x16, #0x46
    // 0x638114: StoreField: r0->field_1b = r16
    //     0x638114: stur            w16, [x0, #0x1b]
    // 0x638118: r16 = "page"
    //     0x638118: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63811c: ldr             x16, [x16, #0xa68]
    // 0x638120: StoreField: r0->field_1f = r16
    //     0x638120: stur            w16, [x0, #0x1f]
    // 0x638124: r16 = 1002
    //     0x638124: mov             x16, #0x3ea
    // 0x638128: StoreField: r0->field_23 = r16
    //     0x638128: stur            w16, [x0, #0x23]
    // 0x63812c: r16 = <String, dynamic>
    //     0x63812c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638130: stp             x0, x16, [SP]
    // 0x638134: r0 = Map._fromLiteral()
    //     0x638134: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638138: ldur            x1, [fp, #-0x10]
    // 0x63813c: ArrayStore: r1[45] = r0  ; List_4
    //     0x63813c: add             x25, x1, #0xc3
    //     0x638140: str             w0, [x25]
    //     0x638144: tbz             w0, #0, #0x638160
    //     0x638148: ldurb           w16, [x1, #-1]
    //     0x63814c: ldurb           w17, [x0, #-1]
    //     0x638150: and             x16, x17, x16, lsr #2
    //     0x638154: tst             x16, HEAP, lsr #32
    //     0x638158: b.eq            #0x638160
    //     0x63815c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638160: r1 = Null
    //     0x638160: mov             x1, NULL
    // 0x638164: r2 = 12
    //     0x638164: mov             x2, #0xc
    // 0x638168: r0 = AllocateArray()
    //     0x638168: bl              #0x9280a0  ; AllocateArrayStub
    // 0x63816c: r16 = "name"
    //     0x63816c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638170: StoreField: r0->field_f = r16
    //     0x638170: stur            w16, [x0, #0xf]
    // 0x638174: r16 = "Muhammed"
    //     0x638174: add             x16, PP, #0x18, lsl #12  ; [pp+0x181a0] "Muhammed"
    //     0x638178: ldr             x16, [x16, #0x1a0]
    // 0x63817c: StoreField: r0->field_13 = r16
    //     0x63817c: stur            w16, [x0, #0x13]
    // 0x638180: r16 = "ayahCount"
    //     0x638180: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x638184: ldr             x16, [x16, #0x30]
    // 0x638188: ArrayStore: r0[0] = r16  ; List_4
    //     0x638188: stur            w16, [x0, #0x17]
    // 0x63818c: r16 = 76
    //     0x63818c: mov             x16, #0x4c
    // 0x638190: StoreField: r0->field_1b = r16
    //     0x638190: stur            w16, [x0, #0x1b]
    // 0x638194: r16 = "page"
    //     0x638194: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638198: ldr             x16, [x16, #0xa68]
    // 0x63819c: StoreField: r0->field_1f = r16
    //     0x63819c: stur            w16, [x0, #0x1f]
    // 0x6381a0: r16 = 1012
    //     0x6381a0: mov             x16, #0x3f4
    // 0x6381a4: StoreField: r0->field_23 = r16
    //     0x6381a4: stur            w16, [x0, #0x23]
    // 0x6381a8: r16 = <String, dynamic>
    //     0x6381a8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6381ac: stp             x0, x16, [SP]
    // 0x6381b0: r0 = Map._fromLiteral()
    //     0x6381b0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6381b4: ldur            x1, [fp, #-0x10]
    // 0x6381b8: ArrayStore: r1[46] = r0  ; List_4
    //     0x6381b8: add             x25, x1, #0xc7
    //     0x6381bc: str             w0, [x25]
    //     0x6381c0: tbz             w0, #0, #0x6381dc
    //     0x6381c4: ldurb           w16, [x1, #-1]
    //     0x6381c8: ldurb           w17, [x0, #-1]
    //     0x6381cc: and             x16, x17, x16, lsr #2
    //     0x6381d0: tst             x16, HEAP, lsr #32
    //     0x6381d4: b.eq            #0x6381dc
    //     0x6381d8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6381dc: r1 = Null
    //     0x6381dc: mov             x1, NULL
    // 0x6381e0: r2 = 12
    //     0x6381e0: mov             x2, #0xc
    // 0x6381e4: r0 = AllocateArray()
    //     0x6381e4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6381e8: r16 = "name"
    //     0x6381e8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6381ec: StoreField: r0->field_f = r16
    //     0x6381ec: stur            w16, [x0, #0xf]
    // 0x6381f0: r16 = "Fetih"
    //     0x6381f0: add             x16, PP, #0x18, lsl #12  ; [pp+0x181a8] "Fetih"
    //     0x6381f4: ldr             x16, [x16, #0x1a8]
    // 0x6381f8: StoreField: r0->field_13 = r16
    //     0x6381f8: stur            w16, [x0, #0x13]
    // 0x6381fc: r16 = "ayahCount"
    //     0x6381fc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x638200: ldr             x16, [x16, #0x30]
    // 0x638204: ArrayStore: r0[0] = r16  ; List_4
    //     0x638204: stur            w16, [x0, #0x17]
    // 0x638208: r16 = 58
    //     0x638208: mov             x16, #0x3a
    // 0x63820c: StoreField: r0->field_1b = r16
    //     0x63820c: stur            w16, [x0, #0x1b]
    // 0x638210: r16 = "page"
    //     0x638210: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638214: ldr             x16, [x16, #0xa68]
    // 0x638218: StoreField: r0->field_1f = r16
    //     0x638218: stur            w16, [x0, #0x1f]
    // 0x63821c: r16 = 1020
    //     0x63821c: mov             x16, #0x3fc
    // 0x638220: StoreField: r0->field_23 = r16
    //     0x638220: stur            w16, [x0, #0x23]
    // 0x638224: r16 = <String, dynamic>
    //     0x638224: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638228: stp             x0, x16, [SP]
    // 0x63822c: r0 = Map._fromLiteral()
    //     0x63822c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638230: ldur            x1, [fp, #-0x10]
    // 0x638234: ArrayStore: r1[47] = r0  ; List_4
    //     0x638234: add             x25, x1, #0xcb
    //     0x638238: str             w0, [x25]
    //     0x63823c: tbz             w0, #0, #0x638258
    //     0x638240: ldurb           w16, [x1, #-1]
    //     0x638244: ldurb           w17, [x0, #-1]
    //     0x638248: and             x16, x17, x16, lsr #2
    //     0x63824c: tst             x16, HEAP, lsr #32
    //     0x638250: b.eq            #0x638258
    //     0x638254: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638258: r1 = Null
    //     0x638258: mov             x1, NULL
    // 0x63825c: r2 = 12
    //     0x63825c: mov             x2, #0xc
    // 0x638260: r0 = AllocateArray()
    //     0x638260: bl              #0x9280a0  ; AllocateArrayStub
    // 0x638264: r16 = "name"
    //     0x638264: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638268: StoreField: r0->field_f = r16
    //     0x638268: stur            w16, [x0, #0xf]
    // 0x63826c: r16 = "Hucurat"
    //     0x63826c: add             x16, PP, #0x18, lsl #12  ; [pp+0x181b0] "Hucurat"
    //     0x638270: ldr             x16, [x16, #0x1b0]
    // 0x638274: StoreField: r0->field_13 = r16
    //     0x638274: stur            w16, [x0, #0x13]
    // 0x638278: r16 = "ayahCount"
    //     0x638278: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x63827c: ldr             x16, [x16, #0x30]
    // 0x638280: ArrayStore: r0[0] = r16  ; List_4
    //     0x638280: stur            w16, [x0, #0x17]
    // 0x638284: r16 = 36
    //     0x638284: mov             x16, #0x24
    // 0x638288: StoreField: r0->field_1b = r16
    //     0x638288: stur            w16, [x0, #0x1b]
    // 0x63828c: r16 = "page"
    //     0x63828c: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638290: ldr             x16, [x16, #0xa68]
    // 0x638294: StoreField: r0->field_1f = r16
    //     0x638294: stur            w16, [x0, #0x1f]
    // 0x638298: r16 = 1028
    //     0x638298: mov             x16, #0x404
    // 0x63829c: StoreField: r0->field_23 = r16
    //     0x63829c: stur            w16, [x0, #0x23]
    // 0x6382a0: r16 = <String, dynamic>
    //     0x6382a0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6382a4: stp             x0, x16, [SP]
    // 0x6382a8: r0 = Map._fromLiteral()
    //     0x6382a8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6382ac: ldur            x1, [fp, #-0x10]
    // 0x6382b0: ArrayStore: r1[48] = r0  ; List_4
    //     0x6382b0: add             x25, x1, #0xcf
    //     0x6382b4: str             w0, [x25]
    //     0x6382b8: tbz             w0, #0, #0x6382d4
    //     0x6382bc: ldurb           w16, [x1, #-1]
    //     0x6382c0: ldurb           w17, [x0, #-1]
    //     0x6382c4: and             x16, x17, x16, lsr #2
    //     0x6382c8: tst             x16, HEAP, lsr #32
    //     0x6382cc: b.eq            #0x6382d4
    //     0x6382d0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6382d4: r1 = Null
    //     0x6382d4: mov             x1, NULL
    // 0x6382d8: r2 = 12
    //     0x6382d8: mov             x2, #0xc
    // 0x6382dc: r0 = AllocateArray()
    //     0x6382dc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6382e0: r16 = "name"
    //     0x6382e0: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6382e4: StoreField: r0->field_f = r16
    //     0x6382e4: stur            w16, [x0, #0xf]
    // 0x6382e8: r16 = "Kaf"
    //     0x6382e8: add             x16, PP, #0x18, lsl #12  ; [pp+0x181b8] "Kaf"
    //     0x6382ec: ldr             x16, [x16, #0x1b8]
    // 0x6382f0: StoreField: r0->field_13 = r16
    //     0x6382f0: stur            w16, [x0, #0x13]
    // 0x6382f4: r16 = "ayahCount"
    //     0x6382f4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6382f8: ldr             x16, [x16, #0x30]
    // 0x6382fc: ArrayStore: r0[0] = r16  ; List_4
    //     0x6382fc: stur            w16, [x0, #0x17]
    // 0x638300: r16 = 90
    //     0x638300: mov             x16, #0x5a
    // 0x638304: StoreField: r0->field_1b = r16
    //     0x638304: stur            w16, [x0, #0x1b]
    // 0x638308: r16 = "page"
    //     0x638308: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63830c: ldr             x16, [x16, #0xa68]
    // 0x638310: StoreField: r0->field_1f = r16
    //     0x638310: stur            w16, [x0, #0x1f]
    // 0x638314: r16 = 1034
    //     0x638314: mov             x16, #0x40a
    // 0x638318: StoreField: r0->field_23 = r16
    //     0x638318: stur            w16, [x0, #0x23]
    // 0x63831c: r16 = <String, dynamic>
    //     0x63831c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638320: stp             x0, x16, [SP]
    // 0x638324: r0 = Map._fromLiteral()
    //     0x638324: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638328: ldur            x1, [fp, #-0x10]
    // 0x63832c: ArrayStore: r1[49] = r0  ; List_4
    //     0x63832c: add             x25, x1, #0xd3
    //     0x638330: str             w0, [x25]
    //     0x638334: tbz             w0, #0, #0x638350
    //     0x638338: ldurb           w16, [x1, #-1]
    //     0x63833c: ldurb           w17, [x0, #-1]
    //     0x638340: and             x16, x17, x16, lsr #2
    //     0x638344: tst             x16, HEAP, lsr #32
    //     0x638348: b.eq            #0x638350
    //     0x63834c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638350: r1 = Null
    //     0x638350: mov             x1, NULL
    // 0x638354: r2 = 12
    //     0x638354: mov             x2, #0xc
    // 0x638358: r0 = AllocateArray()
    //     0x638358: bl              #0x9280a0  ; AllocateArrayStub
    // 0x63835c: r16 = "name"
    //     0x63835c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638360: StoreField: r0->field_f = r16
    //     0x638360: stur            w16, [x0, #0xf]
    // 0x638364: r16 = "Zariyat"
    //     0x638364: add             x16, PP, #0x18, lsl #12  ; [pp+0x181c0] "Zariyat"
    //     0x638368: ldr             x16, [x16, #0x1c0]
    // 0x63836c: StoreField: r0->field_13 = r16
    //     0x63836c: stur            w16, [x0, #0x13]
    // 0x638370: r16 = "ayahCount"
    //     0x638370: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x638374: ldr             x16, [x16, #0x30]
    // 0x638378: ArrayStore: r0[0] = r16  ; List_4
    //     0x638378: stur            w16, [x0, #0x17]
    // 0x63837c: r16 = 120
    //     0x63837c: mov             x16, #0x78
    // 0x638380: StoreField: r0->field_1b = r16
    //     0x638380: stur            w16, [x0, #0x1b]
    // 0x638384: r16 = "page"
    //     0x638384: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638388: ldr             x16, [x16, #0xa68]
    // 0x63838c: StoreField: r0->field_1f = r16
    //     0x63838c: stur            w16, [x0, #0x1f]
    // 0x638390: r16 = 1038
    //     0x638390: mov             x16, #0x40e
    // 0x638394: StoreField: r0->field_23 = r16
    //     0x638394: stur            w16, [x0, #0x23]
    // 0x638398: r16 = <String, dynamic>
    //     0x638398: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x63839c: stp             x0, x16, [SP]
    // 0x6383a0: r0 = Map._fromLiteral()
    //     0x6383a0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6383a4: ldur            x1, [fp, #-0x10]
    // 0x6383a8: ArrayStore: r1[50] = r0  ; List_4
    //     0x6383a8: add             x25, x1, #0xd7
    //     0x6383ac: str             w0, [x25]
    //     0x6383b0: tbz             w0, #0, #0x6383cc
    //     0x6383b4: ldurb           w16, [x1, #-1]
    //     0x6383b8: ldurb           w17, [x0, #-1]
    //     0x6383bc: and             x16, x17, x16, lsr #2
    //     0x6383c0: tst             x16, HEAP, lsr #32
    //     0x6383c4: b.eq            #0x6383cc
    //     0x6383c8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6383cc: r1 = Null
    //     0x6383cc: mov             x1, NULL
    // 0x6383d0: r2 = 12
    //     0x6383d0: mov             x2, #0xc
    // 0x6383d4: r0 = AllocateArray()
    //     0x6383d4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6383d8: r16 = "name"
    //     0x6383d8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6383dc: StoreField: r0->field_f = r16
    //     0x6383dc: stur            w16, [x0, #0xf]
    // 0x6383e0: r16 = "Tur"
    //     0x6383e0: add             x16, PP, #0x18, lsl #12  ; [pp+0x181c8] "Tur"
    //     0x6383e4: ldr             x16, [x16, #0x1c8]
    // 0x6383e8: StoreField: r0->field_13 = r16
    //     0x6383e8: stur            w16, [x0, #0x13]
    // 0x6383ec: r16 = "ayahCount"
    //     0x6383ec: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6383f0: ldr             x16, [x16, #0x30]
    // 0x6383f4: ArrayStore: r0[0] = r16  ; List_4
    //     0x6383f4: stur            w16, [x0, #0x17]
    // 0x6383f8: r16 = 98
    //     0x6383f8: mov             x16, #0x62
    // 0x6383fc: StoreField: r0->field_1b = r16
    //     0x6383fc: stur            w16, [x0, #0x1b]
    // 0x638400: r16 = "page"
    //     0x638400: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638404: ldr             x16, [x16, #0xa68]
    // 0x638408: StoreField: r0->field_1f = r16
    //     0x638408: stur            w16, [x0, #0x1f]
    // 0x63840c: r16 = 1044
    //     0x63840c: mov             x16, #0x414
    // 0x638410: StoreField: r0->field_23 = r16
    //     0x638410: stur            w16, [x0, #0x23]
    // 0x638414: r16 = <String, dynamic>
    //     0x638414: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638418: stp             x0, x16, [SP]
    // 0x63841c: r0 = Map._fromLiteral()
    //     0x63841c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638420: ldur            x1, [fp, #-0x10]
    // 0x638424: ArrayStore: r1[51] = r0  ; List_4
    //     0x638424: add             x25, x1, #0xdb
    //     0x638428: str             w0, [x25]
    //     0x63842c: tbz             w0, #0, #0x638448
    //     0x638430: ldurb           w16, [x1, #-1]
    //     0x638434: ldurb           w17, [x0, #-1]
    //     0x638438: and             x16, x17, x16, lsr #2
    //     0x63843c: tst             x16, HEAP, lsr #32
    //     0x638440: b.eq            #0x638448
    //     0x638444: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638448: r1 = Null
    //     0x638448: mov             x1, NULL
    // 0x63844c: r2 = 12
    //     0x63844c: mov             x2, #0xc
    // 0x638450: r0 = AllocateArray()
    //     0x638450: bl              #0x9280a0  ; AllocateArrayStub
    // 0x638454: r16 = "name"
    //     0x638454: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638458: StoreField: r0->field_f = r16
    //     0x638458: stur            w16, [x0, #0xf]
    // 0x63845c: r16 = "Necm"
    //     0x63845c: add             x16, PP, #0x18, lsl #12  ; [pp+0x181d0] "Necm"
    //     0x638460: ldr             x16, [x16, #0x1d0]
    // 0x638464: StoreField: r0->field_13 = r16
    //     0x638464: stur            w16, [x0, #0x13]
    // 0x638468: r16 = "ayahCount"
    //     0x638468: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x63846c: ldr             x16, [x16, #0x30]
    // 0x638470: ArrayStore: r0[0] = r16  ; List_4
    //     0x638470: stur            w16, [x0, #0x17]
    // 0x638474: r16 = 124
    //     0x638474: mov             x16, #0x7c
    // 0x638478: StoreField: r0->field_1b = r16
    //     0x638478: stur            w16, [x0, #0x1b]
    // 0x63847c: r16 = "page"
    //     0x63847c: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638480: ldr             x16, [x16, #0xa68]
    // 0x638484: StoreField: r0->field_1f = r16
    //     0x638484: stur            w16, [x0, #0x1f]
    // 0x638488: r16 = 1050
    //     0x638488: mov             x16, #0x41a
    // 0x63848c: StoreField: r0->field_23 = r16
    //     0x63848c: stur            w16, [x0, #0x23]
    // 0x638490: r16 = <String, dynamic>
    //     0x638490: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638494: stp             x0, x16, [SP]
    // 0x638498: r0 = Map._fromLiteral()
    //     0x638498: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x63849c: ldur            x1, [fp, #-0x10]
    // 0x6384a0: ArrayStore: r1[52] = r0  ; List_4
    //     0x6384a0: add             x25, x1, #0xdf
    //     0x6384a4: str             w0, [x25]
    //     0x6384a8: tbz             w0, #0, #0x6384c4
    //     0x6384ac: ldurb           w16, [x1, #-1]
    //     0x6384b0: ldurb           w17, [x0, #-1]
    //     0x6384b4: and             x16, x17, x16, lsr #2
    //     0x6384b8: tst             x16, HEAP, lsr #32
    //     0x6384bc: b.eq            #0x6384c4
    //     0x6384c0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6384c4: r1 = Null
    //     0x6384c4: mov             x1, NULL
    // 0x6384c8: r2 = 12
    //     0x6384c8: mov             x2, #0xc
    // 0x6384cc: r0 = AllocateArray()
    //     0x6384cc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6384d0: r16 = "name"
    //     0x6384d0: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6384d4: StoreField: r0->field_f = r16
    //     0x6384d4: stur            w16, [x0, #0xf]
    // 0x6384d8: r16 = "Kamer"
    //     0x6384d8: add             x16, PP, #0x18, lsl #12  ; [pp+0x181d8] "Kamer"
    //     0x6384dc: ldr             x16, [x16, #0x1d8]
    // 0x6384e0: StoreField: r0->field_13 = r16
    //     0x6384e0: stur            w16, [x0, #0x13]
    // 0x6384e4: r16 = "ayahCount"
    //     0x6384e4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6384e8: ldr             x16, [x16, #0x30]
    // 0x6384ec: ArrayStore: r0[0] = r16  ; List_4
    //     0x6384ec: stur            w16, [x0, #0x17]
    // 0x6384f0: r16 = 110
    //     0x6384f0: mov             x16, #0x6e
    // 0x6384f4: StoreField: r0->field_1b = r16
    //     0x6384f4: stur            w16, [x0, #0x1b]
    // 0x6384f8: r16 = "page"
    //     0x6384f8: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6384fc: ldr             x16, [x16, #0xa68]
    // 0x638500: StoreField: r0->field_1f = r16
    //     0x638500: stur            w16, [x0, #0x1f]
    // 0x638504: r16 = 1054
    //     0x638504: mov             x16, #0x41e
    // 0x638508: StoreField: r0->field_23 = r16
    //     0x638508: stur            w16, [x0, #0x23]
    // 0x63850c: r16 = <String, dynamic>
    //     0x63850c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638510: stp             x0, x16, [SP]
    // 0x638514: r0 = Map._fromLiteral()
    //     0x638514: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638518: ldur            x1, [fp, #-0x10]
    // 0x63851c: ArrayStore: r1[53] = r0  ; List_4
    //     0x63851c: add             x25, x1, #0xe3
    //     0x638520: str             w0, [x25]
    //     0x638524: tbz             w0, #0, #0x638540
    //     0x638528: ldurb           w16, [x1, #-1]
    //     0x63852c: ldurb           w17, [x0, #-1]
    //     0x638530: and             x16, x17, x16, lsr #2
    //     0x638534: tst             x16, HEAP, lsr #32
    //     0x638538: b.eq            #0x638540
    //     0x63853c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638540: r1 = Null
    //     0x638540: mov             x1, NULL
    // 0x638544: r2 = 12
    //     0x638544: mov             x2, #0xc
    // 0x638548: r0 = AllocateArray()
    //     0x638548: bl              #0x9280a0  ; AllocateArrayStub
    // 0x63854c: r16 = "name"
    //     0x63854c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638550: StoreField: r0->field_f = r16
    //     0x638550: stur            w16, [x0, #0xf]
    // 0x638554: r16 = "Rahman"
    //     0x638554: add             x16, PP, #0x18, lsl #12  ; [pp+0x181e0] "Rahman"
    //     0x638558: ldr             x16, [x16, #0x1e0]
    // 0x63855c: StoreField: r0->field_13 = r16
    //     0x63855c: stur            w16, [x0, #0x13]
    // 0x638560: r16 = "ayahCount"
    //     0x638560: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x638564: ldr             x16, [x16, #0x30]
    // 0x638568: ArrayStore: r0[0] = r16  ; List_4
    //     0x638568: stur            w16, [x0, #0x17]
    // 0x63856c: r16 = 156
    //     0x63856c: mov             x16, #0x9c
    // 0x638570: StoreField: r0->field_1b = r16
    //     0x638570: stur            w16, [x0, #0x1b]
    // 0x638574: r16 = "page"
    //     0x638574: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638578: ldr             x16, [x16, #0xa68]
    // 0x63857c: StoreField: r0->field_1f = r16
    //     0x63857c: stur            w16, [x0, #0x1f]
    // 0x638580: r16 = 1060
    //     0x638580: mov             x16, #0x424
    // 0x638584: StoreField: r0->field_23 = r16
    //     0x638584: stur            w16, [x0, #0x23]
    // 0x638588: r16 = <String, dynamic>
    //     0x638588: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x63858c: stp             x0, x16, [SP]
    // 0x638590: r0 = Map._fromLiteral()
    //     0x638590: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638594: ldur            x1, [fp, #-0x10]
    // 0x638598: ArrayStore: r1[54] = r0  ; List_4
    //     0x638598: add             x25, x1, #0xe7
    //     0x63859c: str             w0, [x25]
    //     0x6385a0: tbz             w0, #0, #0x6385bc
    //     0x6385a4: ldurb           w16, [x1, #-1]
    //     0x6385a8: ldurb           w17, [x0, #-1]
    //     0x6385ac: and             x16, x17, x16, lsr #2
    //     0x6385b0: tst             x16, HEAP, lsr #32
    //     0x6385b4: b.eq            #0x6385bc
    //     0x6385b8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6385bc: r1 = Null
    //     0x6385bc: mov             x1, NULL
    // 0x6385c0: r2 = 12
    //     0x6385c0: mov             x2, #0xc
    // 0x6385c4: r0 = AllocateArray()
    //     0x6385c4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6385c8: r16 = "name"
    //     0x6385c8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6385cc: StoreField: r0->field_f = r16
    //     0x6385cc: stur            w16, [x0, #0xf]
    // 0x6385d0: r16 = "Vakıa"
    //     0x6385d0: add             x16, PP, #0x18, lsl #12  ; [pp+0x181e8] "Vakıa"
    //     0x6385d4: ldr             x16, [x16, #0x1e8]
    // 0x6385d8: StoreField: r0->field_13 = r16
    //     0x6385d8: stur            w16, [x0, #0x13]
    // 0x6385dc: r16 = "ayahCount"
    //     0x6385dc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6385e0: ldr             x16, [x16, #0x30]
    // 0x6385e4: ArrayStore: r0[0] = r16  ; List_4
    //     0x6385e4: stur            w16, [x0, #0x17]
    // 0x6385e8: r16 = 192
    //     0x6385e8: mov             x16, #0xc0
    // 0x6385ec: StoreField: r0->field_1b = r16
    //     0x6385ec: stur            w16, [x0, #0x1b]
    // 0x6385f0: r16 = "page"
    //     0x6385f0: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6385f4: ldr             x16, [x16, #0xa68]
    // 0x6385f8: StoreField: r0->field_1f = r16
    //     0x6385f8: stur            w16, [x0, #0x1f]
    // 0x6385fc: r16 = 1066
    //     0x6385fc: mov             x16, #0x42a
    // 0x638600: StoreField: r0->field_23 = r16
    //     0x638600: stur            w16, [x0, #0x23]
    // 0x638604: r16 = <String, dynamic>
    //     0x638604: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638608: stp             x0, x16, [SP]
    // 0x63860c: r0 = Map._fromLiteral()
    //     0x63860c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638610: ldur            x1, [fp, #-0x10]
    // 0x638614: ArrayStore: r1[55] = r0  ; List_4
    //     0x638614: add             x25, x1, #0xeb
    //     0x638618: str             w0, [x25]
    //     0x63861c: tbz             w0, #0, #0x638638
    //     0x638620: ldurb           w16, [x1, #-1]
    //     0x638624: ldurb           w17, [x0, #-1]
    //     0x638628: and             x16, x17, x16, lsr #2
    //     0x63862c: tst             x16, HEAP, lsr #32
    //     0x638630: b.eq            #0x638638
    //     0x638634: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638638: r1 = Null
    //     0x638638: mov             x1, NULL
    // 0x63863c: r2 = 12
    //     0x63863c: mov             x2, #0xc
    // 0x638640: r0 = AllocateArray()
    //     0x638640: bl              #0x9280a0  ; AllocateArrayStub
    // 0x638644: r16 = "name"
    //     0x638644: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638648: StoreField: r0->field_f = r16
    //     0x638648: stur            w16, [x0, #0xf]
    // 0x63864c: r16 = "Hadid"
    //     0x63864c: add             x16, PP, #0x18, lsl #12  ; [pp+0x181f0] "Hadid"
    //     0x638650: ldr             x16, [x16, #0x1f0]
    // 0x638654: StoreField: r0->field_13 = r16
    //     0x638654: stur            w16, [x0, #0x13]
    // 0x638658: r16 = "ayahCount"
    //     0x638658: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x63865c: ldr             x16, [x16, #0x30]
    // 0x638660: ArrayStore: r0[0] = r16  ; List_4
    //     0x638660: stur            w16, [x0, #0x17]
    // 0x638664: r16 = 58
    //     0x638664: mov             x16, #0x3a
    // 0x638668: StoreField: r0->field_1b = r16
    //     0x638668: stur            w16, [x0, #0x1b]
    // 0x63866c: r16 = "page"
    //     0x63866c: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638670: ldr             x16, [x16, #0xa68]
    // 0x638674: StoreField: r0->field_1f = r16
    //     0x638674: stur            w16, [x0, #0x1f]
    // 0x638678: r16 = 1072
    //     0x638678: mov             x16, #0x430
    // 0x63867c: StoreField: r0->field_23 = r16
    //     0x63867c: stur            w16, [x0, #0x23]
    // 0x638680: r16 = <String, dynamic>
    //     0x638680: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638684: stp             x0, x16, [SP]
    // 0x638688: r0 = Map._fromLiteral()
    //     0x638688: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x63868c: ldur            x1, [fp, #-0x10]
    // 0x638690: ArrayStore: r1[56] = r0  ; List_4
    //     0x638690: add             x25, x1, #0xef
    //     0x638694: str             w0, [x25]
    //     0x638698: tbz             w0, #0, #0x6386b4
    //     0x63869c: ldurb           w16, [x1, #-1]
    //     0x6386a0: ldurb           w17, [x0, #-1]
    //     0x6386a4: and             x16, x17, x16, lsr #2
    //     0x6386a8: tst             x16, HEAP, lsr #32
    //     0x6386ac: b.eq            #0x6386b4
    //     0x6386b0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6386b4: r1 = Null
    //     0x6386b4: mov             x1, NULL
    // 0x6386b8: r2 = 12
    //     0x6386b8: mov             x2, #0xc
    // 0x6386bc: r0 = AllocateArray()
    //     0x6386bc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6386c0: r16 = "name"
    //     0x6386c0: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6386c4: StoreField: r0->field_f = r16
    //     0x6386c4: stur            w16, [x0, #0xf]
    // 0x6386c8: r16 = "Mücadele"
    //     0x6386c8: add             x16, PP, #0x18, lsl #12  ; [pp+0x181f8] "Mücadele"
    //     0x6386cc: ldr             x16, [x16, #0x1f8]
    // 0x6386d0: StoreField: r0->field_13 = r16
    //     0x6386d0: stur            w16, [x0, #0x13]
    // 0x6386d4: r16 = "ayahCount"
    //     0x6386d4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6386d8: ldr             x16, [x16, #0x30]
    // 0x6386dc: ArrayStore: r0[0] = r16  ; List_4
    //     0x6386dc: stur            w16, [x0, #0x17]
    // 0x6386e0: r16 = 44
    //     0x6386e0: mov             x16, #0x2c
    // 0x6386e4: StoreField: r0->field_1b = r16
    //     0x6386e4: stur            w16, [x0, #0x1b]
    // 0x6386e8: r16 = "page"
    //     0x6386e8: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6386ec: ldr             x16, [x16, #0xa68]
    // 0x6386f0: StoreField: r0->field_1f = r16
    //     0x6386f0: stur            w16, [x0, #0x1f]
    // 0x6386f4: r16 = 1082
    //     0x6386f4: mov             x16, #0x43a
    // 0x6386f8: StoreField: r0->field_23 = r16
    //     0x6386f8: stur            w16, [x0, #0x23]
    // 0x6386fc: r16 = <String, dynamic>
    //     0x6386fc: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638700: stp             x0, x16, [SP]
    // 0x638704: r0 = Map._fromLiteral()
    //     0x638704: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638708: ldur            x1, [fp, #-0x10]
    // 0x63870c: ArrayStore: r1[57] = r0  ; List_4
    //     0x63870c: add             x25, x1, #0xf3
    //     0x638710: str             w0, [x25]
    //     0x638714: tbz             w0, #0, #0x638730
    //     0x638718: ldurb           w16, [x1, #-1]
    //     0x63871c: ldurb           w17, [x0, #-1]
    //     0x638720: and             x16, x17, x16, lsr #2
    //     0x638724: tst             x16, HEAP, lsr #32
    //     0x638728: b.eq            #0x638730
    //     0x63872c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638730: r1 = Null
    //     0x638730: mov             x1, NULL
    // 0x638734: r2 = 12
    //     0x638734: mov             x2, #0xc
    // 0x638738: r0 = AllocateArray()
    //     0x638738: bl              #0x9280a0  ; AllocateArrayStub
    // 0x63873c: r16 = "name"
    //     0x63873c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638740: StoreField: r0->field_f = r16
    //     0x638740: stur            w16, [x0, #0xf]
    // 0x638744: r16 = "Haşr"
    //     0x638744: add             x16, PP, #0x18, lsl #12  ; [pp+0x18200] "Haşr"
    //     0x638748: ldr             x16, [x16, #0x200]
    // 0x63874c: StoreField: r0->field_13 = r16
    //     0x63874c: stur            w16, [x0, #0x13]
    // 0x638750: r16 = "ayahCount"
    //     0x638750: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x638754: ldr             x16, [x16, #0x30]
    // 0x638758: ArrayStore: r0[0] = r16  ; List_4
    //     0x638758: stur            w16, [x0, #0x17]
    // 0x63875c: r16 = 48
    //     0x63875c: mov             x16, #0x30
    // 0x638760: StoreField: r0->field_1b = r16
    //     0x638760: stur            w16, [x0, #0x1b]
    // 0x638764: r16 = "page"
    //     0x638764: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638768: ldr             x16, [x16, #0xa68]
    // 0x63876c: StoreField: r0->field_1f = r16
    //     0x63876c: stur            w16, [x0, #0x1f]
    // 0x638770: r16 = 1088
    //     0x638770: mov             x16, #0x440
    // 0x638774: StoreField: r0->field_23 = r16
    //     0x638774: stur            w16, [x0, #0x23]
    // 0x638778: r16 = <String, dynamic>
    //     0x638778: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x63877c: stp             x0, x16, [SP]
    // 0x638780: r0 = Map._fromLiteral()
    //     0x638780: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638784: ldur            x1, [fp, #-0x10]
    // 0x638788: ArrayStore: r1[58] = r0  ; List_4
    //     0x638788: add             x25, x1, #0xf7
    //     0x63878c: str             w0, [x25]
    //     0x638790: tbz             w0, #0, #0x6387ac
    //     0x638794: ldurb           w16, [x1, #-1]
    //     0x638798: ldurb           w17, [x0, #-1]
    //     0x63879c: and             x16, x17, x16, lsr #2
    //     0x6387a0: tst             x16, HEAP, lsr #32
    //     0x6387a4: b.eq            #0x6387ac
    //     0x6387a8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6387ac: r1 = Null
    //     0x6387ac: mov             x1, NULL
    // 0x6387b0: r2 = 12
    //     0x6387b0: mov             x2, #0xc
    // 0x6387b4: r0 = AllocateArray()
    //     0x6387b4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6387b8: r16 = "name"
    //     0x6387b8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6387bc: StoreField: r0->field_f = r16
    //     0x6387bc: stur            w16, [x0, #0xf]
    // 0x6387c0: r16 = "Mümtehine"
    //     0x6387c0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18208] "Mümtehine"
    //     0x6387c4: ldr             x16, [x16, #0x208]
    // 0x6387c8: StoreField: r0->field_13 = r16
    //     0x6387c8: stur            w16, [x0, #0x13]
    // 0x6387cc: r16 = "ayahCount"
    //     0x6387cc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6387d0: ldr             x16, [x16, #0x30]
    // 0x6387d4: ArrayStore: r0[0] = r16  ; List_4
    //     0x6387d4: stur            w16, [x0, #0x17]
    // 0x6387d8: r16 = 26
    //     0x6387d8: mov             x16, #0x1a
    // 0x6387dc: StoreField: r0->field_1b = r16
    //     0x6387dc: stur            w16, [x0, #0x1b]
    // 0x6387e0: r16 = "page"
    //     0x6387e0: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6387e4: ldr             x16, [x16, #0xa68]
    // 0x6387e8: StoreField: r0->field_1f = r16
    //     0x6387e8: stur            w16, [x0, #0x1f]
    // 0x6387ec: r16 = 1096
    //     0x6387ec: mov             x16, #0x448
    // 0x6387f0: StoreField: r0->field_23 = r16
    //     0x6387f0: stur            w16, [x0, #0x23]
    // 0x6387f4: r16 = <String, dynamic>
    //     0x6387f4: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6387f8: stp             x0, x16, [SP]
    // 0x6387fc: r0 = Map._fromLiteral()
    //     0x6387fc: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638800: ldur            x1, [fp, #-0x10]
    // 0x638804: ArrayStore: r1[59] = r0  ; List_4
    //     0x638804: add             x25, x1, #0xfb
    //     0x638808: str             w0, [x25]
    //     0x63880c: tbz             w0, #0, #0x638828
    //     0x638810: ldurb           w16, [x1, #-1]
    //     0x638814: ldurb           w17, [x0, #-1]
    //     0x638818: and             x16, x17, x16, lsr #2
    //     0x63881c: tst             x16, HEAP, lsr #32
    //     0x638820: b.eq            #0x638828
    //     0x638824: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638828: r1 = Null
    //     0x638828: mov             x1, NULL
    // 0x63882c: r2 = 12
    //     0x63882c: mov             x2, #0xc
    // 0x638830: r0 = AllocateArray()
    //     0x638830: bl              #0x9280a0  ; AllocateArrayStub
    // 0x638834: r16 = "name"
    //     0x638834: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638838: StoreField: r0->field_f = r16
    //     0x638838: stur            w16, [x0, #0xf]
    // 0x63883c: r16 = "Es-Saff"
    //     0x63883c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18210] "Es-Saff"
    //     0x638840: ldr             x16, [x16, #0x210]
    // 0x638844: StoreField: r0->field_13 = r16
    //     0x638844: stur            w16, [x0, #0x13]
    // 0x638848: r16 = "ayahCount"
    //     0x638848: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x63884c: ldr             x16, [x16, #0x30]
    // 0x638850: ArrayStore: r0[0] = r16  ; List_4
    //     0x638850: stur            w16, [x0, #0x17]
    // 0x638854: r16 = 28
    //     0x638854: mov             x16, #0x1c
    // 0x638858: StoreField: r0->field_1b = r16
    //     0x638858: stur            w16, [x0, #0x1b]
    // 0x63885c: r16 = "page"
    //     0x63885c: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638860: ldr             x16, [x16, #0xa68]
    // 0x638864: StoreField: r0->field_1f = r16
    //     0x638864: stur            w16, [x0, #0x1f]
    // 0x638868: r16 = 1100
    //     0x638868: mov             x16, #0x44c
    // 0x63886c: StoreField: r0->field_23 = r16
    //     0x63886c: stur            w16, [x0, #0x23]
    // 0x638870: r16 = <String, dynamic>
    //     0x638870: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638874: stp             x0, x16, [SP]
    // 0x638878: r0 = Map._fromLiteral()
    //     0x638878: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x63887c: ldur            x1, [fp, #-0x10]
    // 0x638880: ArrayStore: r1[60] = r0  ; List_4
    //     0x638880: add             x25, x1, #0xff
    //     0x638884: str             w0, [x25]
    //     0x638888: tbz             w0, #0, #0x6388a4
    //     0x63888c: ldurb           w16, [x1, #-1]
    //     0x638890: ldurb           w17, [x0, #-1]
    //     0x638894: and             x16, x17, x16, lsr #2
    //     0x638898: tst             x16, HEAP, lsr #32
    //     0x63889c: b.eq            #0x6388a4
    //     0x6388a0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6388a4: r1 = Null
    //     0x6388a4: mov             x1, NULL
    // 0x6388a8: r2 = 12
    //     0x6388a8: mov             x2, #0xc
    // 0x6388ac: r0 = AllocateArray()
    //     0x6388ac: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6388b0: r16 = "name"
    //     0x6388b0: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6388b4: StoreField: r0->field_f = r16
    //     0x6388b4: stur            w16, [x0, #0xf]
    // 0x6388b8: r16 = "Cuma"
    //     0x6388b8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18218] "Cuma"
    //     0x6388bc: ldr             x16, [x16, #0x218]
    // 0x6388c0: StoreField: r0->field_13 = r16
    //     0x6388c0: stur            w16, [x0, #0x13]
    // 0x6388c4: r16 = "ayahCount"
    //     0x6388c4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6388c8: ldr             x16, [x16, #0x30]
    // 0x6388cc: ArrayStore: r0[0] = r16  ; List_4
    //     0x6388cc: stur            w16, [x0, #0x17]
    // 0x6388d0: r16 = 22
    //     0x6388d0: mov             x16, #0x16
    // 0x6388d4: StoreField: r0->field_1b = r16
    //     0x6388d4: stur            w16, [x0, #0x1b]
    // 0x6388d8: r16 = "page"
    //     0x6388d8: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6388dc: ldr             x16, [x16, #0xa68]
    // 0x6388e0: StoreField: r0->field_1f = r16
    //     0x6388e0: stur            w16, [x0, #0x1f]
    // 0x6388e4: r16 = 1104
    //     0x6388e4: mov             x16, #0x450
    // 0x6388e8: StoreField: r0->field_23 = r16
    //     0x6388e8: stur            w16, [x0, #0x23]
    // 0x6388ec: r16 = <String, dynamic>
    //     0x6388ec: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6388f0: stp             x0, x16, [SP]
    // 0x6388f4: r0 = Map._fromLiteral()
    //     0x6388f4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6388f8: ldur            x1, [fp, #-0x10]
    // 0x6388fc: r2 = 122
    //     0x6388fc: mov             x2, #0x7a
    // 0x638900: ArrayStore: r1[r2] = r0  ; List_4
    //     0x638900: add             x25, x1, w2, sxtw #1
    //     0x638904: add             x25, x25, #0xf
    //     0x638908: str             w0, [x25]
    //     0x63890c: tbz             w0, #0, #0x638928
    //     0x638910: ldurb           w16, [x1, #-1]
    //     0x638914: ldurb           w17, [x0, #-1]
    //     0x638918: and             x16, x17, x16, lsr #2
    //     0x63891c: tst             x16, HEAP, lsr #32
    //     0x638920: b.eq            #0x638928
    //     0x638924: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638928: r1 = Null
    //     0x638928: mov             x1, NULL
    // 0x63892c: r2 = 12
    //     0x63892c: mov             x2, #0xc
    // 0x638930: r0 = AllocateArray()
    //     0x638930: bl              #0x9280a0  ; AllocateArrayStub
    // 0x638934: r16 = "name"
    //     0x638934: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638938: StoreField: r0->field_f = r16
    //     0x638938: stur            w16, [x0, #0xf]
    // 0x63893c: r16 = "Münafikun"
    //     0x63893c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18220] "Münafikun"
    //     0x638940: ldr             x16, [x16, #0x220]
    // 0x638944: StoreField: r0->field_13 = r16
    //     0x638944: stur            w16, [x0, #0x13]
    // 0x638948: r16 = "ayahCount"
    //     0x638948: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x63894c: ldr             x16, [x16, #0x30]
    // 0x638950: ArrayStore: r0[0] = r16  ; List_4
    //     0x638950: stur            w16, [x0, #0x17]
    // 0x638954: r16 = 22
    //     0x638954: mov             x16, #0x16
    // 0x638958: StoreField: r0->field_1b = r16
    //     0x638958: stur            w16, [x0, #0x1b]
    // 0x63895c: r16 = "page"
    //     0x63895c: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638960: ldr             x16, [x16, #0xa68]
    // 0x638964: StoreField: r0->field_1f = r16
    //     0x638964: stur            w16, [x0, #0x1f]
    // 0x638968: r16 = 1106
    //     0x638968: mov             x16, #0x452
    // 0x63896c: StoreField: r0->field_23 = r16
    //     0x63896c: stur            w16, [x0, #0x23]
    // 0x638970: r16 = <String, dynamic>
    //     0x638970: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638974: stp             x0, x16, [SP]
    // 0x638978: r0 = Map._fromLiteral()
    //     0x638978: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x63897c: ldur            x1, [fp, #-0x10]
    // 0x638980: r2 = 124
    //     0x638980: mov             x2, #0x7c
    // 0x638984: ArrayStore: r1[r2] = r0  ; List_4
    //     0x638984: add             x25, x1, w2, sxtw #1
    //     0x638988: add             x25, x25, #0xf
    //     0x63898c: str             w0, [x25]
    //     0x638990: tbz             w0, #0, #0x6389ac
    //     0x638994: ldurb           w16, [x1, #-1]
    //     0x638998: ldurb           w17, [x0, #-1]
    //     0x63899c: and             x16, x17, x16, lsr #2
    //     0x6389a0: tst             x16, HEAP, lsr #32
    //     0x6389a4: b.eq            #0x6389ac
    //     0x6389a8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6389ac: r1 = Null
    //     0x6389ac: mov             x1, NULL
    // 0x6389b0: r2 = 12
    //     0x6389b0: mov             x2, #0xc
    // 0x6389b4: r0 = AllocateArray()
    //     0x6389b4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6389b8: r16 = "name"
    //     0x6389b8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6389bc: StoreField: r0->field_f = r16
    //     0x6389bc: stur            w16, [x0, #0xf]
    // 0x6389c0: r16 = "Tegabun"
    //     0x6389c0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18228] "Tegabun"
    //     0x6389c4: ldr             x16, [x16, #0x228]
    // 0x6389c8: StoreField: r0->field_13 = r16
    //     0x6389c8: stur            w16, [x0, #0x13]
    // 0x6389cc: r16 = "ayahCount"
    //     0x6389cc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6389d0: ldr             x16, [x16, #0x30]
    // 0x6389d4: ArrayStore: r0[0] = r16  ; List_4
    //     0x6389d4: stur            w16, [x0, #0x17]
    // 0x6389d8: r16 = 36
    //     0x6389d8: mov             x16, #0x24
    // 0x6389dc: StoreField: r0->field_1b = r16
    //     0x6389dc: stur            w16, [x0, #0x1b]
    // 0x6389e0: r16 = "page"
    //     0x6389e0: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6389e4: ldr             x16, [x16, #0xa68]
    // 0x6389e8: StoreField: r0->field_1f = r16
    //     0x6389e8: stur            w16, [x0, #0x1f]
    // 0x6389ec: r16 = 1110
    //     0x6389ec: mov             x16, #0x456
    // 0x6389f0: StoreField: r0->field_23 = r16
    //     0x6389f0: stur            w16, [x0, #0x23]
    // 0x6389f4: r16 = <String, dynamic>
    //     0x6389f4: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6389f8: stp             x0, x16, [SP]
    // 0x6389fc: r0 = Map._fromLiteral()
    //     0x6389fc: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638a00: ldur            x1, [fp, #-0x10]
    // 0x638a04: r2 = 126
    //     0x638a04: mov             x2, #0x7e
    // 0x638a08: ArrayStore: r1[r2] = r0  ; List_4
    //     0x638a08: add             x25, x1, w2, sxtw #1
    //     0x638a0c: add             x25, x25, #0xf
    //     0x638a10: str             w0, [x25]
    //     0x638a14: tbz             w0, #0, #0x638a30
    //     0x638a18: ldurb           w16, [x1, #-1]
    //     0x638a1c: ldurb           w17, [x0, #-1]
    //     0x638a20: and             x16, x17, x16, lsr #2
    //     0x638a24: tst             x16, HEAP, lsr #32
    //     0x638a28: b.eq            #0x638a30
    //     0x638a2c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638a30: r1 = Null
    //     0x638a30: mov             x1, NULL
    // 0x638a34: r2 = 12
    //     0x638a34: mov             x2, #0xc
    // 0x638a38: r0 = AllocateArray()
    //     0x638a38: bl              #0x9280a0  ; AllocateArrayStub
    // 0x638a3c: r16 = "name"
    //     0x638a3c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638a40: StoreField: r0->field_f = r16
    //     0x638a40: stur            w16, [x0, #0xf]
    // 0x638a44: r16 = "Talak"
    //     0x638a44: add             x16, PP, #0x18, lsl #12  ; [pp+0x18230] "Talak"
    //     0x638a48: ldr             x16, [x16, #0x230]
    // 0x638a4c: StoreField: r0->field_13 = r16
    //     0x638a4c: stur            w16, [x0, #0x13]
    // 0x638a50: r16 = "ayahCount"
    //     0x638a50: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x638a54: ldr             x16, [x16, #0x30]
    // 0x638a58: ArrayStore: r0[0] = r16  ; List_4
    //     0x638a58: stur            w16, [x0, #0x17]
    // 0x638a5c: r16 = 24
    //     0x638a5c: mov             x16, #0x18
    // 0x638a60: StoreField: r0->field_1b = r16
    //     0x638a60: stur            w16, [x0, #0x1b]
    // 0x638a64: r16 = "page"
    //     0x638a64: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638a68: ldr             x16, [x16, #0xa68]
    // 0x638a6c: StoreField: r0->field_1f = r16
    //     0x638a6c: stur            w16, [x0, #0x1f]
    // 0x638a70: r16 = 1114
    //     0x638a70: mov             x16, #0x45a
    // 0x638a74: StoreField: r0->field_23 = r16
    //     0x638a74: stur            w16, [x0, #0x23]
    // 0x638a78: r16 = <String, dynamic>
    //     0x638a78: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638a7c: stp             x0, x16, [SP]
    // 0x638a80: r0 = Map._fromLiteral()
    //     0x638a80: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638a84: ldur            x1, [fp, #-0x10]
    // 0x638a88: r2 = 128
    //     0x638a88: mov             x2, #0x80
    // 0x638a8c: ArrayStore: r1[r2] = r0  ; List_4
    //     0x638a8c: add             x25, x1, w2, sxtw #1
    //     0x638a90: add             x25, x25, #0xf
    //     0x638a94: str             w0, [x25]
    //     0x638a98: tbz             w0, #0, #0x638ab4
    //     0x638a9c: ldurb           w16, [x1, #-1]
    //     0x638aa0: ldurb           w17, [x0, #-1]
    //     0x638aa4: and             x16, x17, x16, lsr #2
    //     0x638aa8: tst             x16, HEAP, lsr #32
    //     0x638aac: b.eq            #0x638ab4
    //     0x638ab0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638ab4: r1 = Null
    //     0x638ab4: mov             x1, NULL
    // 0x638ab8: r2 = 12
    //     0x638ab8: mov             x2, #0xc
    // 0x638abc: r0 = AllocateArray()
    //     0x638abc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x638ac0: r16 = "name"
    //     0x638ac0: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638ac4: StoreField: r0->field_f = r16
    //     0x638ac4: stur            w16, [x0, #0xf]
    // 0x638ac8: r16 = "Tahrim"
    //     0x638ac8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18238] "Tahrim"
    //     0x638acc: ldr             x16, [x16, #0x238]
    // 0x638ad0: StoreField: r0->field_13 = r16
    //     0x638ad0: stur            w16, [x0, #0x13]
    // 0x638ad4: r16 = "ayahCount"
    //     0x638ad4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x638ad8: ldr             x16, [x16, #0x30]
    // 0x638adc: ArrayStore: r0[0] = r16  ; List_4
    //     0x638adc: stur            w16, [x0, #0x17]
    // 0x638ae0: r16 = 24
    //     0x638ae0: mov             x16, #0x18
    // 0x638ae4: StoreField: r0->field_1b = r16
    //     0x638ae4: stur            w16, [x0, #0x1b]
    // 0x638ae8: r16 = "page"
    //     0x638ae8: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638aec: ldr             x16, [x16, #0xa68]
    // 0x638af0: StoreField: r0->field_1f = r16
    //     0x638af0: stur            w16, [x0, #0x1f]
    // 0x638af4: r16 = 1118
    //     0x638af4: mov             x16, #0x45e
    // 0x638af8: StoreField: r0->field_23 = r16
    //     0x638af8: stur            w16, [x0, #0x23]
    // 0x638afc: r16 = <String, dynamic>
    //     0x638afc: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638b00: stp             x0, x16, [SP]
    // 0x638b04: r0 = Map._fromLiteral()
    //     0x638b04: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638b08: ldur            x1, [fp, #-0x10]
    // 0x638b0c: r2 = 130
    //     0x638b0c: mov             x2, #0x82
    // 0x638b10: ArrayStore: r1[r2] = r0  ; List_4
    //     0x638b10: add             x25, x1, w2, sxtw #1
    //     0x638b14: add             x25, x25, #0xf
    //     0x638b18: str             w0, [x25]
    //     0x638b1c: tbz             w0, #0, #0x638b38
    //     0x638b20: ldurb           w16, [x1, #-1]
    //     0x638b24: ldurb           w17, [x0, #-1]
    //     0x638b28: and             x16, x17, x16, lsr #2
    //     0x638b2c: tst             x16, HEAP, lsr #32
    //     0x638b30: b.eq            #0x638b38
    //     0x638b34: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638b38: r1 = Null
    //     0x638b38: mov             x1, NULL
    // 0x638b3c: r2 = 12
    //     0x638b3c: mov             x2, #0xc
    // 0x638b40: r0 = AllocateArray()
    //     0x638b40: bl              #0x9280a0  ; AllocateArrayStub
    // 0x638b44: r16 = "name"
    //     0x638b44: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638b48: StoreField: r0->field_f = r16
    //     0x638b48: stur            w16, [x0, #0xf]
    // 0x638b4c: r16 = "Mülk"
    //     0x638b4c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18240] "Mülk"
    //     0x638b50: ldr             x16, [x16, #0x240]
    // 0x638b54: StoreField: r0->field_13 = r16
    //     0x638b54: stur            w16, [x0, #0x13]
    // 0x638b58: r16 = "ayahCount"
    //     0x638b58: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x638b5c: ldr             x16, [x16, #0x30]
    // 0x638b60: ArrayStore: r0[0] = r16  ; List_4
    //     0x638b60: stur            w16, [x0, #0x17]
    // 0x638b64: r16 = 60
    //     0x638b64: mov             x16, #0x3c
    // 0x638b68: StoreField: r0->field_1b = r16
    //     0x638b68: stur            w16, [x0, #0x1b]
    // 0x638b6c: r16 = "page"
    //     0x638b6c: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638b70: ldr             x16, [x16, #0xa68]
    // 0x638b74: StoreField: r0->field_1f = r16
    //     0x638b74: stur            w16, [x0, #0x1f]
    // 0x638b78: r16 = 1122
    //     0x638b78: mov             x16, #0x462
    // 0x638b7c: StoreField: r0->field_23 = r16
    //     0x638b7c: stur            w16, [x0, #0x23]
    // 0x638b80: r16 = <String, dynamic>
    //     0x638b80: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638b84: stp             x0, x16, [SP]
    // 0x638b88: r0 = Map._fromLiteral()
    //     0x638b88: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638b8c: ldur            x1, [fp, #-0x10]
    // 0x638b90: r2 = 132
    //     0x638b90: mov             x2, #0x84
    // 0x638b94: ArrayStore: r1[r2] = r0  ; List_4
    //     0x638b94: add             x25, x1, w2, sxtw #1
    //     0x638b98: add             x25, x25, #0xf
    //     0x638b9c: str             w0, [x25]
    //     0x638ba0: tbz             w0, #0, #0x638bbc
    //     0x638ba4: ldurb           w16, [x1, #-1]
    //     0x638ba8: ldurb           w17, [x0, #-1]
    //     0x638bac: and             x16, x17, x16, lsr #2
    //     0x638bb0: tst             x16, HEAP, lsr #32
    //     0x638bb4: b.eq            #0x638bbc
    //     0x638bb8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638bbc: r1 = Null
    //     0x638bbc: mov             x1, NULL
    // 0x638bc0: r2 = 12
    //     0x638bc0: mov             x2, #0xc
    // 0x638bc4: r0 = AllocateArray()
    //     0x638bc4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x638bc8: r16 = "name"
    //     0x638bc8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638bcc: StoreField: r0->field_f = r16
    //     0x638bcc: stur            w16, [x0, #0xf]
    // 0x638bd0: r16 = "Kalem"
    //     0x638bd0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18248] "Kalem"
    //     0x638bd4: ldr             x16, [x16, #0x248]
    // 0x638bd8: StoreField: r0->field_13 = r16
    //     0x638bd8: stur            w16, [x0, #0x13]
    // 0x638bdc: r16 = "ayahCount"
    //     0x638bdc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x638be0: ldr             x16, [x16, #0x30]
    // 0x638be4: ArrayStore: r0[0] = r16  ; List_4
    //     0x638be4: stur            w16, [x0, #0x17]
    // 0x638be8: r16 = 104
    //     0x638be8: mov             x16, #0x68
    // 0x638bec: StoreField: r0->field_1b = r16
    //     0x638bec: stur            w16, [x0, #0x1b]
    // 0x638bf0: r16 = "page"
    //     0x638bf0: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638bf4: ldr             x16, [x16, #0xa68]
    // 0x638bf8: StoreField: r0->field_1f = r16
    //     0x638bf8: stur            w16, [x0, #0x1f]
    // 0x638bfc: r16 = 1126
    //     0x638bfc: mov             x16, #0x466
    // 0x638c00: StoreField: r0->field_23 = r16
    //     0x638c00: stur            w16, [x0, #0x23]
    // 0x638c04: r16 = <String, dynamic>
    //     0x638c04: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638c08: stp             x0, x16, [SP]
    // 0x638c0c: r0 = Map._fromLiteral()
    //     0x638c0c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638c10: ldur            x1, [fp, #-0x10]
    // 0x638c14: r2 = 134
    //     0x638c14: mov             x2, #0x86
    // 0x638c18: ArrayStore: r1[r2] = r0  ; List_4
    //     0x638c18: add             x25, x1, w2, sxtw #1
    //     0x638c1c: add             x25, x25, #0xf
    //     0x638c20: str             w0, [x25]
    //     0x638c24: tbz             w0, #0, #0x638c40
    //     0x638c28: ldurb           w16, [x1, #-1]
    //     0x638c2c: ldurb           w17, [x0, #-1]
    //     0x638c30: and             x16, x17, x16, lsr #2
    //     0x638c34: tst             x16, HEAP, lsr #32
    //     0x638c38: b.eq            #0x638c40
    //     0x638c3c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638c40: r1 = Null
    //     0x638c40: mov             x1, NULL
    // 0x638c44: r2 = 12
    //     0x638c44: mov             x2, #0xc
    // 0x638c48: r0 = AllocateArray()
    //     0x638c48: bl              #0x9280a0  ; AllocateArrayStub
    // 0x638c4c: r16 = "name"
    //     0x638c4c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638c50: StoreField: r0->field_f = r16
    //     0x638c50: stur            w16, [x0, #0xf]
    // 0x638c54: r16 = "Hakka"
    //     0x638c54: add             x16, PP, #0x18, lsl #12  ; [pp+0x18250] "Hakka"
    //     0x638c58: ldr             x16, [x16, #0x250]
    // 0x638c5c: StoreField: r0->field_13 = r16
    //     0x638c5c: stur            w16, [x0, #0x13]
    // 0x638c60: r16 = "ayahCount"
    //     0x638c60: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x638c64: ldr             x16, [x16, #0x30]
    // 0x638c68: ArrayStore: r0[0] = r16  ; List_4
    //     0x638c68: stur            w16, [x0, #0x17]
    // 0x638c6c: r16 = 104
    //     0x638c6c: mov             x16, #0x68
    // 0x638c70: StoreField: r0->field_1b = r16
    //     0x638c70: stur            w16, [x0, #0x1b]
    // 0x638c74: r16 = "page"
    //     0x638c74: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638c78: ldr             x16, [x16, #0xa68]
    // 0x638c7c: StoreField: r0->field_1f = r16
    //     0x638c7c: stur            w16, [x0, #0x1f]
    // 0x638c80: r16 = 1130
    //     0x638c80: mov             x16, #0x46a
    // 0x638c84: StoreField: r0->field_23 = r16
    //     0x638c84: stur            w16, [x0, #0x23]
    // 0x638c88: r16 = <String, dynamic>
    //     0x638c88: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638c8c: stp             x0, x16, [SP]
    // 0x638c90: r0 = Map._fromLiteral()
    //     0x638c90: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638c94: ldur            x1, [fp, #-0x10]
    // 0x638c98: r2 = 136
    //     0x638c98: mov             x2, #0x88
    // 0x638c9c: ArrayStore: r1[r2] = r0  ; List_4
    //     0x638c9c: add             x25, x1, w2, sxtw #1
    //     0x638ca0: add             x25, x25, #0xf
    //     0x638ca4: str             w0, [x25]
    //     0x638ca8: tbz             w0, #0, #0x638cc4
    //     0x638cac: ldurb           w16, [x1, #-1]
    //     0x638cb0: ldurb           w17, [x0, #-1]
    //     0x638cb4: and             x16, x17, x16, lsr #2
    //     0x638cb8: tst             x16, HEAP, lsr #32
    //     0x638cbc: b.eq            #0x638cc4
    //     0x638cc0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638cc4: r1 = Null
    //     0x638cc4: mov             x1, NULL
    // 0x638cc8: r2 = 12
    //     0x638cc8: mov             x2, #0xc
    // 0x638ccc: r0 = AllocateArray()
    //     0x638ccc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x638cd0: r16 = "name"
    //     0x638cd0: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638cd4: StoreField: r0->field_f = r16
    //     0x638cd4: stur            w16, [x0, #0xf]
    // 0x638cd8: r16 = "Mearic"
    //     0x638cd8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18258] "Mearic"
    //     0x638cdc: ldr             x16, [x16, #0x258]
    // 0x638ce0: StoreField: r0->field_13 = r16
    //     0x638ce0: stur            w16, [x0, #0x13]
    // 0x638ce4: r16 = "ayahCount"
    //     0x638ce4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x638ce8: ldr             x16, [x16, #0x30]
    // 0x638cec: ArrayStore: r0[0] = r16  ; List_4
    //     0x638cec: stur            w16, [x0, #0x17]
    // 0x638cf0: r16 = 88
    //     0x638cf0: mov             x16, #0x58
    // 0x638cf4: StoreField: r0->field_1b = r16
    //     0x638cf4: stur            w16, [x0, #0x1b]
    // 0x638cf8: r16 = "page"
    //     0x638cf8: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638cfc: ldr             x16, [x16, #0xa68]
    // 0x638d00: StoreField: r0->field_1f = r16
    //     0x638d00: stur            w16, [x0, #0x1f]
    // 0x638d04: r16 = 1134
    //     0x638d04: mov             x16, #0x46e
    // 0x638d08: StoreField: r0->field_23 = r16
    //     0x638d08: stur            w16, [x0, #0x23]
    // 0x638d0c: r16 = <String, dynamic>
    //     0x638d0c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638d10: stp             x0, x16, [SP]
    // 0x638d14: r0 = Map._fromLiteral()
    //     0x638d14: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638d18: ldur            x1, [fp, #-0x10]
    // 0x638d1c: r2 = 138
    //     0x638d1c: mov             x2, #0x8a
    // 0x638d20: ArrayStore: r1[r2] = r0  ; List_4
    //     0x638d20: add             x25, x1, w2, sxtw #1
    //     0x638d24: add             x25, x25, #0xf
    //     0x638d28: str             w0, [x25]
    //     0x638d2c: tbz             w0, #0, #0x638d48
    //     0x638d30: ldurb           w16, [x1, #-1]
    //     0x638d34: ldurb           w17, [x0, #-1]
    //     0x638d38: and             x16, x17, x16, lsr #2
    //     0x638d3c: tst             x16, HEAP, lsr #32
    //     0x638d40: b.eq            #0x638d48
    //     0x638d44: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638d48: r1 = Null
    //     0x638d48: mov             x1, NULL
    // 0x638d4c: r2 = 12
    //     0x638d4c: mov             x2, #0xc
    // 0x638d50: r0 = AllocateArray()
    //     0x638d50: bl              #0x9280a0  ; AllocateArrayStub
    // 0x638d54: r16 = "name"
    //     0x638d54: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638d58: StoreField: r0->field_f = r16
    //     0x638d58: stur            w16, [x0, #0xf]
    // 0x638d5c: r16 = "Nuh"
    //     0x638d5c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18260] "Nuh"
    //     0x638d60: ldr             x16, [x16, #0x260]
    // 0x638d64: StoreField: r0->field_13 = r16
    //     0x638d64: stur            w16, [x0, #0x13]
    // 0x638d68: r16 = "ayahCount"
    //     0x638d68: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x638d6c: ldr             x16, [x16, #0x30]
    // 0x638d70: ArrayStore: r0[0] = r16  ; List_4
    //     0x638d70: stur            w16, [x0, #0x17]
    // 0x638d74: r16 = 56
    //     0x638d74: mov             x16, #0x38
    // 0x638d78: StoreField: r0->field_1b = r16
    //     0x638d78: stur            w16, [x0, #0x1b]
    // 0x638d7c: r16 = "page"
    //     0x638d7c: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638d80: ldr             x16, [x16, #0xa68]
    // 0x638d84: StoreField: r0->field_1f = r16
    //     0x638d84: stur            w16, [x0, #0x1f]
    // 0x638d88: r16 = 1138
    //     0x638d88: mov             x16, #0x472
    // 0x638d8c: StoreField: r0->field_23 = r16
    //     0x638d8c: stur            w16, [x0, #0x23]
    // 0x638d90: r16 = <String, dynamic>
    //     0x638d90: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638d94: stp             x0, x16, [SP]
    // 0x638d98: r0 = Map._fromLiteral()
    //     0x638d98: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638d9c: ldur            x1, [fp, #-0x10]
    // 0x638da0: r2 = 140
    //     0x638da0: mov             x2, #0x8c
    // 0x638da4: ArrayStore: r1[r2] = r0  ; List_4
    //     0x638da4: add             x25, x1, w2, sxtw #1
    //     0x638da8: add             x25, x25, #0xf
    //     0x638dac: str             w0, [x25]
    //     0x638db0: tbz             w0, #0, #0x638dcc
    //     0x638db4: ldurb           w16, [x1, #-1]
    //     0x638db8: ldurb           w17, [x0, #-1]
    //     0x638dbc: and             x16, x17, x16, lsr #2
    //     0x638dc0: tst             x16, HEAP, lsr #32
    //     0x638dc4: b.eq            #0x638dcc
    //     0x638dc8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638dcc: r1 = Null
    //     0x638dcc: mov             x1, NULL
    // 0x638dd0: r2 = 12
    //     0x638dd0: mov             x2, #0xc
    // 0x638dd4: r0 = AllocateArray()
    //     0x638dd4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x638dd8: r16 = "name"
    //     0x638dd8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638ddc: StoreField: r0->field_f = r16
    //     0x638ddc: stur            w16, [x0, #0xf]
    // 0x638de0: r16 = "Cinn"
    //     0x638de0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18268] "Cinn"
    //     0x638de4: ldr             x16, [x16, #0x268]
    // 0x638de8: StoreField: r0->field_13 = r16
    //     0x638de8: stur            w16, [x0, #0x13]
    // 0x638dec: r16 = "ayahCount"
    //     0x638dec: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x638df0: ldr             x16, [x16, #0x30]
    // 0x638df4: ArrayStore: r0[0] = r16  ; List_4
    //     0x638df4: stur            w16, [x0, #0x17]
    // 0x638df8: r16 = 56
    //     0x638df8: mov             x16, #0x38
    // 0x638dfc: StoreField: r0->field_1b = r16
    //     0x638dfc: stur            w16, [x0, #0x1b]
    // 0x638e00: r16 = "page"
    //     0x638e00: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638e04: ldr             x16, [x16, #0xa68]
    // 0x638e08: StoreField: r0->field_1f = r16
    //     0x638e08: stur            w16, [x0, #0x1f]
    // 0x638e0c: r16 = 1142
    //     0x638e0c: mov             x16, #0x476
    // 0x638e10: StoreField: r0->field_23 = r16
    //     0x638e10: stur            w16, [x0, #0x23]
    // 0x638e14: r16 = <String, dynamic>
    //     0x638e14: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638e18: stp             x0, x16, [SP]
    // 0x638e1c: r0 = Map._fromLiteral()
    //     0x638e1c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638e20: ldur            x1, [fp, #-0x10]
    // 0x638e24: r2 = 142
    //     0x638e24: mov             x2, #0x8e
    // 0x638e28: ArrayStore: r1[r2] = r0  ; List_4
    //     0x638e28: add             x25, x1, w2, sxtw #1
    //     0x638e2c: add             x25, x25, #0xf
    //     0x638e30: str             w0, [x25]
    //     0x638e34: tbz             w0, #0, #0x638e50
    //     0x638e38: ldurb           w16, [x1, #-1]
    //     0x638e3c: ldurb           w17, [x0, #-1]
    //     0x638e40: and             x16, x17, x16, lsr #2
    //     0x638e44: tst             x16, HEAP, lsr #32
    //     0x638e48: b.eq            #0x638e50
    //     0x638e4c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638e50: r1 = Null
    //     0x638e50: mov             x1, NULL
    // 0x638e54: r2 = 12
    //     0x638e54: mov             x2, #0xc
    // 0x638e58: r0 = AllocateArray()
    //     0x638e58: bl              #0x9280a0  ; AllocateArrayStub
    // 0x638e5c: r16 = "name"
    //     0x638e5c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638e60: StoreField: r0->field_f = r16
    //     0x638e60: stur            w16, [x0, #0xf]
    // 0x638e64: r16 = "Müzzemmil"
    //     0x638e64: add             x16, PP, #0x18, lsl #12  ; [pp+0x18270] "Müzzemmil"
    //     0x638e68: ldr             x16, [x16, #0x270]
    // 0x638e6c: StoreField: r0->field_13 = r16
    //     0x638e6c: stur            w16, [x0, #0x13]
    // 0x638e70: r16 = "ayahCount"
    //     0x638e70: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x638e74: ldr             x16, [x16, #0x30]
    // 0x638e78: ArrayStore: r0[0] = r16  ; List_4
    //     0x638e78: stur            w16, [x0, #0x17]
    // 0x638e7c: r16 = 40
    //     0x638e7c: mov             x16, #0x28
    // 0x638e80: StoreField: r0->field_1b = r16
    //     0x638e80: stur            w16, [x0, #0x1b]
    // 0x638e84: r16 = "page"
    //     0x638e84: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638e88: ldr             x16, [x16, #0xa68]
    // 0x638e8c: StoreField: r0->field_1f = r16
    //     0x638e8c: stur            w16, [x0, #0x1f]
    // 0x638e90: r16 = 1146
    //     0x638e90: mov             x16, #0x47a
    // 0x638e94: StoreField: r0->field_23 = r16
    //     0x638e94: stur            w16, [x0, #0x23]
    // 0x638e98: r16 = <String, dynamic>
    //     0x638e98: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638e9c: stp             x0, x16, [SP]
    // 0x638ea0: r0 = Map._fromLiteral()
    //     0x638ea0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638ea4: ldur            x1, [fp, #-0x10]
    // 0x638ea8: r2 = 144
    //     0x638ea8: mov             x2, #0x90
    // 0x638eac: ArrayStore: r1[r2] = r0  ; List_4
    //     0x638eac: add             x25, x1, w2, sxtw #1
    //     0x638eb0: add             x25, x25, #0xf
    //     0x638eb4: str             w0, [x25]
    //     0x638eb8: tbz             w0, #0, #0x638ed4
    //     0x638ebc: ldurb           w16, [x1, #-1]
    //     0x638ec0: ldurb           w17, [x0, #-1]
    //     0x638ec4: and             x16, x17, x16, lsr #2
    //     0x638ec8: tst             x16, HEAP, lsr #32
    //     0x638ecc: b.eq            #0x638ed4
    //     0x638ed0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638ed4: r1 = Null
    //     0x638ed4: mov             x1, NULL
    // 0x638ed8: r2 = 12
    //     0x638ed8: mov             x2, #0xc
    // 0x638edc: r0 = AllocateArray()
    //     0x638edc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x638ee0: r16 = "name"
    //     0x638ee0: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638ee4: StoreField: r0->field_f = r16
    //     0x638ee4: stur            w16, [x0, #0xf]
    // 0x638ee8: r16 = "Müddessir"
    //     0x638ee8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18278] "Müddessir"
    //     0x638eec: ldr             x16, [x16, #0x278]
    // 0x638ef0: StoreField: r0->field_13 = r16
    //     0x638ef0: stur            w16, [x0, #0x13]
    // 0x638ef4: r16 = "ayahCount"
    //     0x638ef4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x638ef8: ldr             x16, [x16, #0x30]
    // 0x638efc: ArrayStore: r0[0] = r16  ; List_4
    //     0x638efc: stur            w16, [x0, #0x17]
    // 0x638f00: r16 = 112
    //     0x638f00: mov             x16, #0x70
    // 0x638f04: StoreField: r0->field_1b = r16
    //     0x638f04: stur            w16, [x0, #0x1b]
    // 0x638f08: r16 = "page"
    //     0x638f08: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638f0c: ldr             x16, [x16, #0xa68]
    // 0x638f10: StoreField: r0->field_1f = r16
    //     0x638f10: stur            w16, [x0, #0x1f]
    // 0x638f14: r16 = 1148
    //     0x638f14: mov             x16, #0x47c
    // 0x638f18: StoreField: r0->field_23 = r16
    //     0x638f18: stur            w16, [x0, #0x23]
    // 0x638f1c: r16 = <String, dynamic>
    //     0x638f1c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638f20: stp             x0, x16, [SP]
    // 0x638f24: r0 = Map._fromLiteral()
    //     0x638f24: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638f28: ldur            x1, [fp, #-0x10]
    // 0x638f2c: r2 = 146
    //     0x638f2c: mov             x2, #0x92
    // 0x638f30: ArrayStore: r1[r2] = r0  ; List_4
    //     0x638f30: add             x25, x1, w2, sxtw #1
    //     0x638f34: add             x25, x25, #0xf
    //     0x638f38: str             w0, [x25]
    //     0x638f3c: tbz             w0, #0, #0x638f58
    //     0x638f40: ldurb           w16, [x1, #-1]
    //     0x638f44: ldurb           w17, [x0, #-1]
    //     0x638f48: and             x16, x17, x16, lsr #2
    //     0x638f4c: tst             x16, HEAP, lsr #32
    //     0x638f50: b.eq            #0x638f58
    //     0x638f54: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638f58: r1 = Null
    //     0x638f58: mov             x1, NULL
    // 0x638f5c: r2 = 12
    //     0x638f5c: mov             x2, #0xc
    // 0x638f60: r0 = AllocateArray()
    //     0x638f60: bl              #0x9280a0  ; AllocateArrayStub
    // 0x638f64: r16 = "name"
    //     0x638f64: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638f68: StoreField: r0->field_f = r16
    //     0x638f68: stur            w16, [x0, #0xf]
    // 0x638f6c: r16 = "Kıyamet"
    //     0x638f6c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18280] "Kıyamet"
    //     0x638f70: ldr             x16, [x16, #0x280]
    // 0x638f74: StoreField: r0->field_13 = r16
    //     0x638f74: stur            w16, [x0, #0x13]
    // 0x638f78: r16 = "ayahCount"
    //     0x638f78: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x638f7c: ldr             x16, [x16, #0x30]
    // 0x638f80: ArrayStore: r0[0] = r16  ; List_4
    //     0x638f80: stur            w16, [x0, #0x17]
    // 0x638f84: r16 = 80
    //     0x638f84: mov             x16, #0x50
    // 0x638f88: StoreField: r0->field_1b = r16
    //     0x638f88: stur            w16, [x0, #0x1b]
    // 0x638f8c: r16 = "page"
    //     0x638f8c: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x638f90: ldr             x16, [x16, #0xa68]
    // 0x638f94: StoreField: r0->field_1f = r16
    //     0x638f94: stur            w16, [x0, #0x1f]
    // 0x638f98: r16 = 1152
    //     0x638f98: mov             x16, #0x480
    // 0x638f9c: StoreField: r0->field_23 = r16
    //     0x638f9c: stur            w16, [x0, #0x23]
    // 0x638fa0: r16 = <String, dynamic>
    //     0x638fa0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x638fa4: stp             x0, x16, [SP]
    // 0x638fa8: r0 = Map._fromLiteral()
    //     0x638fa8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x638fac: ldur            x1, [fp, #-0x10]
    // 0x638fb0: r2 = 148
    //     0x638fb0: mov             x2, #0x94
    // 0x638fb4: ArrayStore: r1[r2] = r0  ; List_4
    //     0x638fb4: add             x25, x1, w2, sxtw #1
    //     0x638fb8: add             x25, x25, #0xf
    //     0x638fbc: str             w0, [x25]
    //     0x638fc0: tbz             w0, #0, #0x638fdc
    //     0x638fc4: ldurb           w16, [x1, #-1]
    //     0x638fc8: ldurb           w17, [x0, #-1]
    //     0x638fcc: and             x16, x17, x16, lsr #2
    //     0x638fd0: tst             x16, HEAP, lsr #32
    //     0x638fd4: b.eq            #0x638fdc
    //     0x638fd8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x638fdc: r1 = Null
    //     0x638fdc: mov             x1, NULL
    // 0x638fe0: r2 = 12
    //     0x638fe0: mov             x2, #0xc
    // 0x638fe4: r0 = AllocateArray()
    //     0x638fe4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x638fe8: r16 = "name"
    //     0x638fe8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x638fec: StoreField: r0->field_f = r16
    //     0x638fec: stur            w16, [x0, #0xf]
    // 0x638ff0: r16 = "İnsan"
    //     0x638ff0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18288] "İnsan"
    //     0x638ff4: ldr             x16, [x16, #0x288]
    // 0x638ff8: StoreField: r0->field_13 = r16
    //     0x638ff8: stur            w16, [x0, #0x13]
    // 0x638ffc: r16 = "ayahCount"
    //     0x638ffc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639000: ldr             x16, [x16, #0x30]
    // 0x639004: ArrayStore: r0[0] = r16  ; List_4
    //     0x639004: stur            w16, [x0, #0x17]
    // 0x639008: r16 = 62
    //     0x639008: mov             x16, #0x3e
    // 0x63900c: StoreField: r0->field_1b = r16
    //     0x63900c: stur            w16, [x0, #0x1b]
    // 0x639010: r16 = "page"
    //     0x639010: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x639014: ldr             x16, [x16, #0xa68]
    // 0x639018: StoreField: r0->field_1f = r16
    //     0x639018: stur            w16, [x0, #0x1f]
    // 0x63901c: r16 = 1154
    //     0x63901c: mov             x16, #0x482
    // 0x639020: StoreField: r0->field_23 = r16
    //     0x639020: stur            w16, [x0, #0x23]
    // 0x639024: r16 = <String, dynamic>
    //     0x639024: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639028: stp             x0, x16, [SP]
    // 0x63902c: r0 = Map._fromLiteral()
    //     0x63902c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639030: ldur            x1, [fp, #-0x10]
    // 0x639034: r2 = 150
    //     0x639034: mov             x2, #0x96
    // 0x639038: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639038: add             x25, x1, w2, sxtw #1
    //     0x63903c: add             x25, x25, #0xf
    //     0x639040: str             w0, [x25]
    //     0x639044: tbz             w0, #0, #0x639060
    //     0x639048: ldurb           w16, [x1, #-1]
    //     0x63904c: ldurb           w17, [x0, #-1]
    //     0x639050: and             x16, x17, x16, lsr #2
    //     0x639054: tst             x16, HEAP, lsr #32
    //     0x639058: b.eq            #0x639060
    //     0x63905c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639060: r1 = Null
    //     0x639060: mov             x1, NULL
    // 0x639064: r2 = 12
    //     0x639064: mov             x2, #0xc
    // 0x639068: r0 = AllocateArray()
    //     0x639068: bl              #0x9280a0  ; AllocateArrayStub
    // 0x63906c: r16 = "name"
    //     0x63906c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639070: StoreField: r0->field_f = r16
    //     0x639070: stur            w16, [x0, #0xf]
    // 0x639074: r16 = "Mürselat"
    //     0x639074: add             x16, PP, #0x18, lsl #12  ; [pp+0x18290] "Mürselat"
    //     0x639078: ldr             x16, [x16, #0x290]
    // 0x63907c: StoreField: r0->field_13 = r16
    //     0x63907c: stur            w16, [x0, #0x13]
    // 0x639080: r16 = "ayahCount"
    //     0x639080: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639084: ldr             x16, [x16, #0x30]
    // 0x639088: ArrayStore: r0[0] = r16  ; List_4
    //     0x639088: stur            w16, [x0, #0x17]
    // 0x63908c: r16 = 100
    //     0x63908c: mov             x16, #0x64
    // 0x639090: StoreField: r0->field_1b = r16
    //     0x639090: stur            w16, [x0, #0x1b]
    // 0x639094: r16 = "page"
    //     0x639094: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x639098: ldr             x16, [x16, #0xa68]
    // 0x63909c: StoreField: r0->field_1f = r16
    //     0x63909c: stur            w16, [x0, #0x1f]
    // 0x6390a0: r16 = 1158
    //     0x6390a0: mov             x16, #0x486
    // 0x6390a4: StoreField: r0->field_23 = r16
    //     0x6390a4: stur            w16, [x0, #0x23]
    // 0x6390a8: r16 = <String, dynamic>
    //     0x6390a8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6390ac: stp             x0, x16, [SP]
    // 0x6390b0: r0 = Map._fromLiteral()
    //     0x6390b0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6390b4: ldur            x1, [fp, #-0x10]
    // 0x6390b8: r2 = 152
    //     0x6390b8: mov             x2, #0x98
    // 0x6390bc: ArrayStore: r1[r2] = r0  ; List_4
    //     0x6390bc: add             x25, x1, w2, sxtw #1
    //     0x6390c0: add             x25, x25, #0xf
    //     0x6390c4: str             w0, [x25]
    //     0x6390c8: tbz             w0, #0, #0x6390e4
    //     0x6390cc: ldurb           w16, [x1, #-1]
    //     0x6390d0: ldurb           w17, [x0, #-1]
    //     0x6390d4: and             x16, x17, x16, lsr #2
    //     0x6390d8: tst             x16, HEAP, lsr #32
    //     0x6390dc: b.eq            #0x6390e4
    //     0x6390e0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6390e4: r1 = Null
    //     0x6390e4: mov             x1, NULL
    // 0x6390e8: r2 = 12
    //     0x6390e8: mov             x2, #0xc
    // 0x6390ec: r0 = AllocateArray()
    //     0x6390ec: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6390f0: r16 = "name"
    //     0x6390f0: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6390f4: StoreField: r0->field_f = r16
    //     0x6390f4: stur            w16, [x0, #0xf]
    // 0x6390f8: r16 = "Nebe"
    //     0x6390f8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18298] "Nebe"
    //     0x6390fc: ldr             x16, [x16, #0x298]
    // 0x639100: StoreField: r0->field_13 = r16
    //     0x639100: stur            w16, [x0, #0x13]
    // 0x639104: r16 = "ayahCount"
    //     0x639104: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639108: ldr             x16, [x16, #0x30]
    // 0x63910c: ArrayStore: r0[0] = r16  ; List_4
    //     0x63910c: stur            w16, [x0, #0x17]
    // 0x639110: r16 = 80
    //     0x639110: mov             x16, #0x50
    // 0x639114: StoreField: r0->field_1b = r16
    //     0x639114: stur            w16, [x0, #0x1b]
    // 0x639118: r16 = "page"
    //     0x639118: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63911c: ldr             x16, [x16, #0xa68]
    // 0x639120: StoreField: r0->field_1f = r16
    //     0x639120: stur            w16, [x0, #0x1f]
    // 0x639124: r16 = 1162
    //     0x639124: mov             x16, #0x48a
    // 0x639128: StoreField: r0->field_23 = r16
    //     0x639128: stur            w16, [x0, #0x23]
    // 0x63912c: r16 = <String, dynamic>
    //     0x63912c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639130: stp             x0, x16, [SP]
    // 0x639134: r0 = Map._fromLiteral()
    //     0x639134: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639138: ldur            x1, [fp, #-0x10]
    // 0x63913c: r2 = 154
    //     0x63913c: mov             x2, #0x9a
    // 0x639140: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639140: add             x25, x1, w2, sxtw #1
    //     0x639144: add             x25, x25, #0xf
    //     0x639148: str             w0, [x25]
    //     0x63914c: tbz             w0, #0, #0x639168
    //     0x639150: ldurb           w16, [x1, #-1]
    //     0x639154: ldurb           w17, [x0, #-1]
    //     0x639158: and             x16, x17, x16, lsr #2
    //     0x63915c: tst             x16, HEAP, lsr #32
    //     0x639160: b.eq            #0x639168
    //     0x639164: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639168: r1 = Null
    //     0x639168: mov             x1, NULL
    // 0x63916c: r2 = 12
    //     0x63916c: mov             x2, #0xc
    // 0x639170: r0 = AllocateArray()
    //     0x639170: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639174: r16 = "name"
    //     0x639174: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639178: StoreField: r0->field_f = r16
    //     0x639178: stur            w16, [x0, #0xf]
    // 0x63917c: r16 = "Naziat"
    //     0x63917c: add             x16, PP, #0x18, lsl #12  ; [pp+0x182a0] "Naziat"
    //     0x639180: ldr             x16, [x16, #0x2a0]
    // 0x639184: StoreField: r0->field_13 = r16
    //     0x639184: stur            w16, [x0, #0x13]
    // 0x639188: r16 = "ayahCount"
    //     0x639188: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x63918c: ldr             x16, [x16, #0x30]
    // 0x639190: ArrayStore: r0[0] = r16  ; List_4
    //     0x639190: stur            w16, [x0, #0x17]
    // 0x639194: r16 = 92
    //     0x639194: mov             x16, #0x5c
    // 0x639198: StoreField: r0->field_1b = r16
    //     0x639198: stur            w16, [x0, #0x1b]
    // 0x63919c: r16 = "page"
    //     0x63919c: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6391a0: ldr             x16, [x16, #0xa68]
    // 0x6391a4: StoreField: r0->field_1f = r16
    //     0x6391a4: stur            w16, [x0, #0x1f]
    // 0x6391a8: r16 = 1164
    //     0x6391a8: mov             x16, #0x48c
    // 0x6391ac: StoreField: r0->field_23 = r16
    //     0x6391ac: stur            w16, [x0, #0x23]
    // 0x6391b0: r16 = <String, dynamic>
    //     0x6391b0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6391b4: stp             x0, x16, [SP]
    // 0x6391b8: r0 = Map._fromLiteral()
    //     0x6391b8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6391bc: ldur            x1, [fp, #-0x10]
    // 0x6391c0: r2 = 156
    //     0x6391c0: mov             x2, #0x9c
    // 0x6391c4: ArrayStore: r1[r2] = r0  ; List_4
    //     0x6391c4: add             x25, x1, w2, sxtw #1
    //     0x6391c8: add             x25, x25, #0xf
    //     0x6391cc: str             w0, [x25]
    //     0x6391d0: tbz             w0, #0, #0x6391ec
    //     0x6391d4: ldurb           w16, [x1, #-1]
    //     0x6391d8: ldurb           w17, [x0, #-1]
    //     0x6391dc: and             x16, x17, x16, lsr #2
    //     0x6391e0: tst             x16, HEAP, lsr #32
    //     0x6391e4: b.eq            #0x6391ec
    //     0x6391e8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6391ec: r1 = Null
    //     0x6391ec: mov             x1, NULL
    // 0x6391f0: r2 = 12
    //     0x6391f0: mov             x2, #0xc
    // 0x6391f4: r0 = AllocateArray()
    //     0x6391f4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6391f8: r16 = "name"
    //     0x6391f8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6391fc: StoreField: r0->field_f = r16
    //     0x6391fc: stur            w16, [x0, #0xf]
    // 0x639200: r16 = "Abese"
    //     0x639200: add             x16, PP, #0x18, lsl #12  ; [pp+0x182a8] "Abese"
    //     0x639204: ldr             x16, [x16, #0x2a8]
    // 0x639208: StoreField: r0->field_13 = r16
    //     0x639208: stur            w16, [x0, #0x13]
    // 0x63920c: r16 = "ayahCount"
    //     0x63920c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639210: ldr             x16, [x16, #0x30]
    // 0x639214: ArrayStore: r0[0] = r16  ; List_4
    //     0x639214: stur            w16, [x0, #0x17]
    // 0x639218: r16 = 84
    //     0x639218: mov             x16, #0x54
    // 0x63921c: StoreField: r0->field_1b = r16
    //     0x63921c: stur            w16, [x0, #0x1b]
    // 0x639220: r16 = "page"
    //     0x639220: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x639224: ldr             x16, [x16, #0xa68]
    // 0x639228: StoreField: r0->field_1f = r16
    //     0x639228: stur            w16, [x0, #0x1f]
    // 0x63922c: r16 = 1168
    //     0x63922c: mov             x16, #0x490
    // 0x639230: StoreField: r0->field_23 = r16
    //     0x639230: stur            w16, [x0, #0x23]
    // 0x639234: r16 = <String, dynamic>
    //     0x639234: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639238: stp             x0, x16, [SP]
    // 0x63923c: r0 = Map._fromLiteral()
    //     0x63923c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639240: ldur            x1, [fp, #-0x10]
    // 0x639244: r2 = 158
    //     0x639244: mov             x2, #0x9e
    // 0x639248: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639248: add             x25, x1, w2, sxtw #1
    //     0x63924c: add             x25, x25, #0xf
    //     0x639250: str             w0, [x25]
    //     0x639254: tbz             w0, #0, #0x639270
    //     0x639258: ldurb           w16, [x1, #-1]
    //     0x63925c: ldurb           w17, [x0, #-1]
    //     0x639260: and             x16, x17, x16, lsr #2
    //     0x639264: tst             x16, HEAP, lsr #32
    //     0x639268: b.eq            #0x639270
    //     0x63926c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639270: r1 = Null
    //     0x639270: mov             x1, NULL
    // 0x639274: r2 = 12
    //     0x639274: mov             x2, #0xc
    // 0x639278: r0 = AllocateArray()
    //     0x639278: bl              #0x9280a0  ; AllocateArrayStub
    // 0x63927c: r16 = "name"
    //     0x63927c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639280: StoreField: r0->field_f = r16
    //     0x639280: stur            w16, [x0, #0xf]
    // 0x639284: r16 = "Tekvir"
    //     0x639284: add             x16, PP, #0x18, lsl #12  ; [pp+0x182b0] "Tekvir"
    //     0x639288: ldr             x16, [x16, #0x2b0]
    // 0x63928c: StoreField: r0->field_13 = r16
    //     0x63928c: stur            w16, [x0, #0x13]
    // 0x639290: r16 = "ayahCount"
    //     0x639290: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639294: ldr             x16, [x16, #0x30]
    // 0x639298: ArrayStore: r0[0] = r16  ; List_4
    //     0x639298: stur            w16, [x0, #0x17]
    // 0x63929c: r16 = 58
    //     0x63929c: mov             x16, #0x3a
    // 0x6392a0: StoreField: r0->field_1b = r16
    //     0x6392a0: stur            w16, [x0, #0x1b]
    // 0x6392a4: r16 = "page"
    //     0x6392a4: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6392a8: ldr             x16, [x16, #0xa68]
    // 0x6392ac: StoreField: r0->field_1f = r16
    //     0x6392ac: stur            w16, [x0, #0x1f]
    // 0x6392b0: r16 = 1170
    //     0x6392b0: mov             x16, #0x492
    // 0x6392b4: StoreField: r0->field_23 = r16
    //     0x6392b4: stur            w16, [x0, #0x23]
    // 0x6392b8: r16 = <String, dynamic>
    //     0x6392b8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6392bc: stp             x0, x16, [SP]
    // 0x6392c0: r0 = Map._fromLiteral()
    //     0x6392c0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6392c4: ldur            x1, [fp, #-0x10]
    // 0x6392c8: r2 = 160
    //     0x6392c8: mov             x2, #0xa0
    // 0x6392cc: ArrayStore: r1[r2] = r0  ; List_4
    //     0x6392cc: add             x25, x1, w2, sxtw #1
    //     0x6392d0: add             x25, x25, #0xf
    //     0x6392d4: str             w0, [x25]
    //     0x6392d8: tbz             w0, #0, #0x6392f4
    //     0x6392dc: ldurb           w16, [x1, #-1]
    //     0x6392e0: ldurb           w17, [x0, #-1]
    //     0x6392e4: and             x16, x17, x16, lsr #2
    //     0x6392e8: tst             x16, HEAP, lsr #32
    //     0x6392ec: b.eq            #0x6392f4
    //     0x6392f0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6392f4: r1 = Null
    //     0x6392f4: mov             x1, NULL
    // 0x6392f8: r2 = 12
    //     0x6392f8: mov             x2, #0xc
    // 0x6392fc: r0 = AllocateArray()
    //     0x6392fc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639300: r16 = "name"
    //     0x639300: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639304: StoreField: r0->field_f = r16
    //     0x639304: stur            w16, [x0, #0xf]
    // 0x639308: r16 = "İnfitâr"
    //     0x639308: add             x16, PP, #0x18, lsl #12  ; [pp+0x182b8] "İnfitâr"
    //     0x63930c: ldr             x16, [x16, #0x2b8]
    // 0x639310: StoreField: r0->field_13 = r16
    //     0x639310: stur            w16, [x0, #0x13]
    // 0x639314: r16 = "ayahCount"
    //     0x639314: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639318: ldr             x16, [x16, #0x30]
    // 0x63931c: ArrayStore: r0[0] = r16  ; List_4
    //     0x63931c: stur            w16, [x0, #0x17]
    // 0x639320: r16 = 38
    //     0x639320: mov             x16, #0x26
    // 0x639324: StoreField: r0->field_1b = r16
    //     0x639324: stur            w16, [x0, #0x1b]
    // 0x639328: r16 = "page"
    //     0x639328: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63932c: ldr             x16, [x16, #0xa68]
    // 0x639330: StoreField: r0->field_1f = r16
    //     0x639330: stur            w16, [x0, #0x1f]
    // 0x639334: r16 = 1172
    //     0x639334: mov             x16, #0x494
    // 0x639338: StoreField: r0->field_23 = r16
    //     0x639338: stur            w16, [x0, #0x23]
    // 0x63933c: r16 = <String, dynamic>
    //     0x63933c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639340: stp             x0, x16, [SP]
    // 0x639344: r0 = Map._fromLiteral()
    //     0x639344: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639348: ldur            x1, [fp, #-0x10]
    // 0x63934c: r2 = 162
    //     0x63934c: mov             x2, #0xa2
    // 0x639350: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639350: add             x25, x1, w2, sxtw #1
    //     0x639354: add             x25, x25, #0xf
    //     0x639358: str             w0, [x25]
    //     0x63935c: tbz             w0, #0, #0x639378
    //     0x639360: ldurb           w16, [x1, #-1]
    //     0x639364: ldurb           w17, [x0, #-1]
    //     0x639368: and             x16, x17, x16, lsr #2
    //     0x63936c: tst             x16, HEAP, lsr #32
    //     0x639370: b.eq            #0x639378
    //     0x639374: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639378: r1 = Null
    //     0x639378: mov             x1, NULL
    // 0x63937c: r2 = 12
    //     0x63937c: mov             x2, #0xc
    // 0x639380: r0 = AllocateArray()
    //     0x639380: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639384: r16 = "name"
    //     0x639384: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639388: StoreField: r0->field_f = r16
    //     0x639388: stur            w16, [x0, #0xf]
    // 0x63938c: r16 = "Mutaffifin"
    //     0x63938c: add             x16, PP, #0x18, lsl #12  ; [pp+0x182c0] "Mutaffifin"
    //     0x639390: ldr             x16, [x16, #0x2c0]
    // 0x639394: StoreField: r0->field_13 = r16
    //     0x639394: stur            w16, [x0, #0x13]
    // 0x639398: r16 = "ayahCount"
    //     0x639398: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x63939c: ldr             x16, [x16, #0x30]
    // 0x6393a0: ArrayStore: r0[0] = r16  ; List_4
    //     0x6393a0: stur            w16, [x0, #0x17]
    // 0x6393a4: r16 = 72
    //     0x6393a4: mov             x16, #0x48
    // 0x6393a8: StoreField: r0->field_1b = r16
    //     0x6393a8: stur            w16, [x0, #0x1b]
    // 0x6393ac: r16 = "page"
    //     0x6393ac: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6393b0: ldr             x16, [x16, #0xa68]
    // 0x6393b4: StoreField: r0->field_1f = r16
    //     0x6393b4: stur            w16, [x0, #0x1f]
    // 0x6393b8: r16 = 1174
    //     0x6393b8: mov             x16, #0x496
    // 0x6393bc: StoreField: r0->field_23 = r16
    //     0x6393bc: stur            w16, [x0, #0x23]
    // 0x6393c0: r16 = <String, dynamic>
    //     0x6393c0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6393c4: stp             x0, x16, [SP]
    // 0x6393c8: r0 = Map._fromLiteral()
    //     0x6393c8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6393cc: ldur            x1, [fp, #-0x10]
    // 0x6393d0: r2 = 164
    //     0x6393d0: mov             x2, #0xa4
    // 0x6393d4: ArrayStore: r1[r2] = r0  ; List_4
    //     0x6393d4: add             x25, x1, w2, sxtw #1
    //     0x6393d8: add             x25, x25, #0xf
    //     0x6393dc: str             w0, [x25]
    //     0x6393e0: tbz             w0, #0, #0x6393fc
    //     0x6393e4: ldurb           w16, [x1, #-1]
    //     0x6393e8: ldurb           w17, [x0, #-1]
    //     0x6393ec: and             x16, x17, x16, lsr #2
    //     0x6393f0: tst             x16, HEAP, lsr #32
    //     0x6393f4: b.eq            #0x6393fc
    //     0x6393f8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6393fc: r1 = Null
    //     0x6393fc: mov             x1, NULL
    // 0x639400: r2 = 12
    //     0x639400: mov             x2, #0xc
    // 0x639404: r0 = AllocateArray()
    //     0x639404: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639408: r16 = "name"
    //     0x639408: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x63940c: StoreField: r0->field_f = r16
    //     0x63940c: stur            w16, [x0, #0xf]
    // 0x639410: r16 = "İnşikak"
    //     0x639410: add             x16, PP, #0x18, lsl #12  ; [pp+0x182c8] "İnşikak"
    //     0x639414: ldr             x16, [x16, #0x2c8]
    // 0x639418: StoreField: r0->field_13 = r16
    //     0x639418: stur            w16, [x0, #0x13]
    // 0x63941c: r16 = "ayahCount"
    //     0x63941c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639420: ldr             x16, [x16, #0x30]
    // 0x639424: ArrayStore: r0[0] = r16  ; List_4
    //     0x639424: stur            w16, [x0, #0x17]
    // 0x639428: r16 = 50
    //     0x639428: mov             x16, #0x32
    // 0x63942c: StoreField: r0->field_1b = r16
    //     0x63942c: stur            w16, [x0, #0x1b]
    // 0x639430: r16 = "page"
    //     0x639430: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x639434: ldr             x16, [x16, #0xa68]
    // 0x639438: StoreField: r0->field_1f = r16
    //     0x639438: stur            w16, [x0, #0x1f]
    // 0x63943c: r16 = 1176
    //     0x63943c: mov             x16, #0x498
    // 0x639440: StoreField: r0->field_23 = r16
    //     0x639440: stur            w16, [x0, #0x23]
    // 0x639444: r16 = <String, dynamic>
    //     0x639444: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639448: stp             x0, x16, [SP]
    // 0x63944c: r0 = Map._fromLiteral()
    //     0x63944c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639450: ldur            x1, [fp, #-0x10]
    // 0x639454: r2 = 166
    //     0x639454: mov             x2, #0xa6
    // 0x639458: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639458: add             x25, x1, w2, sxtw #1
    //     0x63945c: add             x25, x25, #0xf
    //     0x639460: str             w0, [x25]
    //     0x639464: tbz             w0, #0, #0x639480
    //     0x639468: ldurb           w16, [x1, #-1]
    //     0x63946c: ldurb           w17, [x0, #-1]
    //     0x639470: and             x16, x17, x16, lsr #2
    //     0x639474: tst             x16, HEAP, lsr #32
    //     0x639478: b.eq            #0x639480
    //     0x63947c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639480: r1 = Null
    //     0x639480: mov             x1, NULL
    // 0x639484: r2 = 12
    //     0x639484: mov             x2, #0xc
    // 0x639488: r0 = AllocateArray()
    //     0x639488: bl              #0x9280a0  ; AllocateArrayStub
    // 0x63948c: r16 = "name"
    //     0x63948c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639490: StoreField: r0->field_f = r16
    //     0x639490: stur            w16, [x0, #0xf]
    // 0x639494: r16 = "Buruc"
    //     0x639494: add             x16, PP, #0x18, lsl #12  ; [pp+0x182d0] "Buruc"
    //     0x639498: ldr             x16, [x16, #0x2d0]
    // 0x63949c: StoreField: r0->field_13 = r16
    //     0x63949c: stur            w16, [x0, #0x13]
    // 0x6394a0: r16 = "ayahCount"
    //     0x6394a0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6394a4: ldr             x16, [x16, #0x30]
    // 0x6394a8: ArrayStore: r0[0] = r16  ; List_4
    //     0x6394a8: stur            w16, [x0, #0x17]
    // 0x6394ac: r16 = 44
    //     0x6394ac: mov             x16, #0x2c
    // 0x6394b0: StoreField: r0->field_1b = r16
    //     0x6394b0: stur            w16, [x0, #0x1b]
    // 0x6394b4: r16 = "page"
    //     0x6394b4: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6394b8: ldr             x16, [x16, #0xa68]
    // 0x6394bc: StoreField: r0->field_1f = r16
    //     0x6394bc: stur            w16, [x0, #0x1f]
    // 0x6394c0: r16 = 1178
    //     0x6394c0: mov             x16, #0x49a
    // 0x6394c4: StoreField: r0->field_23 = r16
    //     0x6394c4: stur            w16, [x0, #0x23]
    // 0x6394c8: r16 = <String, dynamic>
    //     0x6394c8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6394cc: stp             x0, x16, [SP]
    // 0x6394d0: r0 = Map._fromLiteral()
    //     0x6394d0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6394d4: ldur            x1, [fp, #-0x10]
    // 0x6394d8: r2 = 168
    //     0x6394d8: mov             x2, #0xa8
    // 0x6394dc: ArrayStore: r1[r2] = r0  ; List_4
    //     0x6394dc: add             x25, x1, w2, sxtw #1
    //     0x6394e0: add             x25, x25, #0xf
    //     0x6394e4: str             w0, [x25]
    //     0x6394e8: tbz             w0, #0, #0x639504
    //     0x6394ec: ldurb           w16, [x1, #-1]
    //     0x6394f0: ldurb           w17, [x0, #-1]
    //     0x6394f4: and             x16, x17, x16, lsr #2
    //     0x6394f8: tst             x16, HEAP, lsr #32
    //     0x6394fc: b.eq            #0x639504
    //     0x639500: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639504: r1 = Null
    //     0x639504: mov             x1, NULL
    // 0x639508: r2 = 12
    //     0x639508: mov             x2, #0xc
    // 0x63950c: r0 = AllocateArray()
    //     0x63950c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639510: r16 = "name"
    //     0x639510: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639514: StoreField: r0->field_f = r16
    //     0x639514: stur            w16, [x0, #0xf]
    // 0x639518: r16 = "Tarik"
    //     0x639518: add             x16, PP, #0x18, lsl #12  ; [pp+0x182d8] "Tarik"
    //     0x63951c: ldr             x16, [x16, #0x2d8]
    // 0x639520: StoreField: r0->field_13 = r16
    //     0x639520: stur            w16, [x0, #0x13]
    // 0x639524: r16 = "ayahCount"
    //     0x639524: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639528: ldr             x16, [x16, #0x30]
    // 0x63952c: ArrayStore: r0[0] = r16  ; List_4
    //     0x63952c: stur            w16, [x0, #0x17]
    // 0x639530: r16 = 34
    //     0x639530: mov             x16, #0x22
    // 0x639534: StoreField: r0->field_1b = r16
    //     0x639534: stur            w16, [x0, #0x1b]
    // 0x639538: r16 = "page"
    //     0x639538: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63953c: ldr             x16, [x16, #0xa68]
    // 0x639540: StoreField: r0->field_1f = r16
    //     0x639540: stur            w16, [x0, #0x1f]
    // 0x639544: r16 = 1180
    //     0x639544: mov             x16, #0x49c
    // 0x639548: StoreField: r0->field_23 = r16
    //     0x639548: stur            w16, [x0, #0x23]
    // 0x63954c: r16 = <String, dynamic>
    //     0x63954c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639550: stp             x0, x16, [SP]
    // 0x639554: r0 = Map._fromLiteral()
    //     0x639554: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639558: ldur            x1, [fp, #-0x10]
    // 0x63955c: r2 = 170
    //     0x63955c: mov             x2, #0xaa
    // 0x639560: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639560: add             x25, x1, w2, sxtw #1
    //     0x639564: add             x25, x25, #0xf
    //     0x639568: str             w0, [x25]
    //     0x63956c: tbz             w0, #0, #0x639588
    //     0x639570: ldurb           w16, [x1, #-1]
    //     0x639574: ldurb           w17, [x0, #-1]
    //     0x639578: and             x16, x17, x16, lsr #2
    //     0x63957c: tst             x16, HEAP, lsr #32
    //     0x639580: b.eq            #0x639588
    //     0x639584: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639588: r1 = Null
    //     0x639588: mov             x1, NULL
    // 0x63958c: r2 = 12
    //     0x63958c: mov             x2, #0xc
    // 0x639590: r0 = AllocateArray()
    //     0x639590: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639594: r16 = "name"
    //     0x639594: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639598: StoreField: r0->field_f = r16
    //     0x639598: stur            w16, [x0, #0xf]
    // 0x63959c: r16 = "Ala"
    //     0x63959c: add             x16, PP, #0x18, lsl #12  ; [pp+0x182e0] "Ala"
    //     0x6395a0: ldr             x16, [x16, #0x2e0]
    // 0x6395a4: StoreField: r0->field_13 = r16
    //     0x6395a4: stur            w16, [x0, #0x13]
    // 0x6395a8: r16 = "ayahCount"
    //     0x6395a8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6395ac: ldr             x16, [x16, #0x30]
    // 0x6395b0: ArrayStore: r0[0] = r16  ; List_4
    //     0x6395b0: stur            w16, [x0, #0x17]
    // 0x6395b4: r16 = 38
    //     0x6395b4: mov             x16, #0x26
    // 0x6395b8: StoreField: r0->field_1b = r16
    //     0x6395b8: stur            w16, [x0, #0x1b]
    // 0x6395bc: r16 = "page"
    //     0x6395bc: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6395c0: ldr             x16, [x16, #0xa68]
    // 0x6395c4: StoreField: r0->field_1f = r16
    //     0x6395c4: stur            w16, [x0, #0x1f]
    // 0x6395c8: r16 = 1182
    //     0x6395c8: mov             x16, #0x49e
    // 0x6395cc: StoreField: r0->field_23 = r16
    //     0x6395cc: stur            w16, [x0, #0x23]
    // 0x6395d0: r16 = <String, dynamic>
    //     0x6395d0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6395d4: stp             x0, x16, [SP]
    // 0x6395d8: r0 = Map._fromLiteral()
    //     0x6395d8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6395dc: ldur            x1, [fp, #-0x10]
    // 0x6395e0: r2 = 172
    //     0x6395e0: mov             x2, #0xac
    // 0x6395e4: ArrayStore: r1[r2] = r0  ; List_4
    //     0x6395e4: add             x25, x1, w2, sxtw #1
    //     0x6395e8: add             x25, x25, #0xf
    //     0x6395ec: str             w0, [x25]
    //     0x6395f0: tbz             w0, #0, #0x63960c
    //     0x6395f4: ldurb           w16, [x1, #-1]
    //     0x6395f8: ldurb           w17, [x0, #-1]
    //     0x6395fc: and             x16, x17, x16, lsr #2
    //     0x639600: tst             x16, HEAP, lsr #32
    //     0x639604: b.eq            #0x63960c
    //     0x639608: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x63960c: r1 = Null
    //     0x63960c: mov             x1, NULL
    // 0x639610: r2 = 12
    //     0x639610: mov             x2, #0xc
    // 0x639614: r0 = AllocateArray()
    //     0x639614: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639618: r16 = "name"
    //     0x639618: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x63961c: StoreField: r0->field_f = r16
    //     0x63961c: stur            w16, [x0, #0xf]
    // 0x639620: r16 = "Gaşiye"
    //     0x639620: add             x16, PP, #0x18, lsl #12  ; [pp+0x182e8] "Gaşiye"
    //     0x639624: ldr             x16, [x16, #0x2e8]
    // 0x639628: StoreField: r0->field_13 = r16
    //     0x639628: stur            w16, [x0, #0x13]
    // 0x63962c: r16 = "ayahCount"
    //     0x63962c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639630: ldr             x16, [x16, #0x30]
    // 0x639634: ArrayStore: r0[0] = r16  ; List_4
    //     0x639634: stur            w16, [x0, #0x17]
    // 0x639638: r16 = 52
    //     0x639638: mov             x16, #0x34
    // 0x63963c: StoreField: r0->field_1b = r16
    //     0x63963c: stur            w16, [x0, #0x1b]
    // 0x639640: r16 = "page"
    //     0x639640: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x639644: ldr             x16, [x16, #0xa68]
    // 0x639648: StoreField: r0->field_1f = r16
    //     0x639648: stur            w16, [x0, #0x1f]
    // 0x63964c: r16 = 1182
    //     0x63964c: mov             x16, #0x49e
    // 0x639650: StoreField: r0->field_23 = r16
    //     0x639650: stur            w16, [x0, #0x23]
    // 0x639654: r16 = <String, dynamic>
    //     0x639654: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639658: stp             x0, x16, [SP]
    // 0x63965c: r0 = Map._fromLiteral()
    //     0x63965c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639660: ldur            x1, [fp, #-0x10]
    // 0x639664: r2 = 174
    //     0x639664: mov             x2, #0xae
    // 0x639668: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639668: add             x25, x1, w2, sxtw #1
    //     0x63966c: add             x25, x25, #0xf
    //     0x639670: str             w0, [x25]
    //     0x639674: tbz             w0, #0, #0x639690
    //     0x639678: ldurb           w16, [x1, #-1]
    //     0x63967c: ldurb           w17, [x0, #-1]
    //     0x639680: and             x16, x17, x16, lsr #2
    //     0x639684: tst             x16, HEAP, lsr #32
    //     0x639688: b.eq            #0x639690
    //     0x63968c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639690: r1 = Null
    //     0x639690: mov             x1, NULL
    // 0x639694: r2 = 12
    //     0x639694: mov             x2, #0xc
    // 0x639698: r0 = AllocateArray()
    //     0x639698: bl              #0x9280a0  ; AllocateArrayStub
    // 0x63969c: r16 = "name"
    //     0x63969c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6396a0: StoreField: r0->field_f = r16
    //     0x6396a0: stur            w16, [x0, #0xf]
    // 0x6396a4: r16 = "Fecr"
    //     0x6396a4: add             x16, PP, #0x18, lsl #12  ; [pp+0x182f0] "Fecr"
    //     0x6396a8: ldr             x16, [x16, #0x2f0]
    // 0x6396ac: StoreField: r0->field_13 = r16
    //     0x6396ac: stur            w16, [x0, #0x13]
    // 0x6396b0: r16 = "ayahCount"
    //     0x6396b0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6396b4: ldr             x16, [x16, #0x30]
    // 0x6396b8: ArrayStore: r0[0] = r16  ; List_4
    //     0x6396b8: stur            w16, [x0, #0x17]
    // 0x6396bc: r16 = 60
    //     0x6396bc: mov             x16, #0x3c
    // 0x6396c0: StoreField: r0->field_1b = r16
    //     0x6396c0: stur            w16, [x0, #0x1b]
    // 0x6396c4: r16 = "page"
    //     0x6396c4: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6396c8: ldr             x16, [x16, #0xa68]
    // 0x6396cc: StoreField: r0->field_1f = r16
    //     0x6396cc: stur            w16, [x0, #0x1f]
    // 0x6396d0: r16 = 1184
    //     0x6396d0: mov             x16, #0x4a0
    // 0x6396d4: StoreField: r0->field_23 = r16
    //     0x6396d4: stur            w16, [x0, #0x23]
    // 0x6396d8: r16 = <String, dynamic>
    //     0x6396d8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6396dc: stp             x0, x16, [SP]
    // 0x6396e0: r0 = Map._fromLiteral()
    //     0x6396e0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6396e4: ldur            x1, [fp, #-0x10]
    // 0x6396e8: r2 = 176
    //     0x6396e8: mov             x2, #0xb0
    // 0x6396ec: ArrayStore: r1[r2] = r0  ; List_4
    //     0x6396ec: add             x25, x1, w2, sxtw #1
    //     0x6396f0: add             x25, x25, #0xf
    //     0x6396f4: str             w0, [x25]
    //     0x6396f8: tbz             w0, #0, #0x639714
    //     0x6396fc: ldurb           w16, [x1, #-1]
    //     0x639700: ldurb           w17, [x0, #-1]
    //     0x639704: and             x16, x17, x16, lsr #2
    //     0x639708: tst             x16, HEAP, lsr #32
    //     0x63970c: b.eq            #0x639714
    //     0x639710: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639714: r1 = Null
    //     0x639714: mov             x1, NULL
    // 0x639718: r2 = 12
    //     0x639718: mov             x2, #0xc
    // 0x63971c: r0 = AllocateArray()
    //     0x63971c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639720: r16 = "name"
    //     0x639720: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639724: StoreField: r0->field_f = r16
    //     0x639724: stur            w16, [x0, #0xf]
    // 0x639728: r16 = "Beled"
    //     0x639728: add             x16, PP, #0x18, lsl #12  ; [pp+0x182f8] "Beled"
    //     0x63972c: ldr             x16, [x16, #0x2f8]
    // 0x639730: StoreField: r0->field_13 = r16
    //     0x639730: stur            w16, [x0, #0x13]
    // 0x639734: r16 = "ayahCount"
    //     0x639734: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639738: ldr             x16, [x16, #0x30]
    // 0x63973c: ArrayStore: r0[0] = r16  ; List_4
    //     0x63973c: stur            w16, [x0, #0x17]
    // 0x639740: r16 = 40
    //     0x639740: mov             x16, #0x28
    // 0x639744: StoreField: r0->field_1b = r16
    //     0x639744: stur            w16, [x0, #0x1b]
    // 0x639748: r16 = "page"
    //     0x639748: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63974c: ldr             x16, [x16, #0xa68]
    // 0x639750: StoreField: r0->field_1f = r16
    //     0x639750: stur            w16, [x0, #0x1f]
    // 0x639754: r16 = 1186
    //     0x639754: mov             x16, #0x4a2
    // 0x639758: StoreField: r0->field_23 = r16
    //     0x639758: stur            w16, [x0, #0x23]
    // 0x63975c: r16 = <String, dynamic>
    //     0x63975c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639760: stp             x0, x16, [SP]
    // 0x639764: r0 = Map._fromLiteral()
    //     0x639764: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639768: ldur            x1, [fp, #-0x10]
    // 0x63976c: r2 = 178
    //     0x63976c: mov             x2, #0xb2
    // 0x639770: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639770: add             x25, x1, w2, sxtw #1
    //     0x639774: add             x25, x25, #0xf
    //     0x639778: str             w0, [x25]
    //     0x63977c: tbz             w0, #0, #0x639798
    //     0x639780: ldurb           w16, [x1, #-1]
    //     0x639784: ldurb           w17, [x0, #-1]
    //     0x639788: and             x16, x17, x16, lsr #2
    //     0x63978c: tst             x16, HEAP, lsr #32
    //     0x639790: b.eq            #0x639798
    //     0x639794: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639798: r1 = Null
    //     0x639798: mov             x1, NULL
    // 0x63979c: r2 = 12
    //     0x63979c: mov             x2, #0xc
    // 0x6397a0: r0 = AllocateArray()
    //     0x6397a0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6397a4: r16 = "name"
    //     0x6397a4: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6397a8: StoreField: r0->field_f = r16
    //     0x6397a8: stur            w16, [x0, #0xf]
    // 0x6397ac: r16 = "Şems"
    //     0x6397ac: add             x16, PP, #0x18, lsl #12  ; [pp+0x18300] "Şems"
    //     0x6397b0: ldr             x16, [x16, #0x300]
    // 0x6397b4: StoreField: r0->field_13 = r16
    //     0x6397b4: stur            w16, [x0, #0x13]
    // 0x6397b8: r16 = "ayahCount"
    //     0x6397b8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6397bc: ldr             x16, [x16, #0x30]
    // 0x6397c0: ArrayStore: r0[0] = r16  ; List_4
    //     0x6397c0: stur            w16, [x0, #0x17]
    // 0x6397c4: r16 = 30
    //     0x6397c4: mov             x16, #0x1e
    // 0x6397c8: StoreField: r0->field_1b = r16
    //     0x6397c8: stur            w16, [x0, #0x1b]
    // 0x6397cc: r16 = "page"
    //     0x6397cc: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6397d0: ldr             x16, [x16, #0xa68]
    // 0x6397d4: StoreField: r0->field_1f = r16
    //     0x6397d4: stur            w16, [x0, #0x1f]
    // 0x6397d8: r16 = 1188
    //     0x6397d8: mov             x16, #0x4a4
    // 0x6397dc: StoreField: r0->field_23 = r16
    //     0x6397dc: stur            w16, [x0, #0x23]
    // 0x6397e0: r16 = <String, dynamic>
    //     0x6397e0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6397e4: stp             x0, x16, [SP]
    // 0x6397e8: r0 = Map._fromLiteral()
    //     0x6397e8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6397ec: ldur            x1, [fp, #-0x10]
    // 0x6397f0: r2 = 180
    //     0x6397f0: mov             x2, #0xb4
    // 0x6397f4: ArrayStore: r1[r2] = r0  ; List_4
    //     0x6397f4: add             x25, x1, w2, sxtw #1
    //     0x6397f8: add             x25, x25, #0xf
    //     0x6397fc: str             w0, [x25]
    //     0x639800: tbz             w0, #0, #0x63981c
    //     0x639804: ldurb           w16, [x1, #-1]
    //     0x639808: ldurb           w17, [x0, #-1]
    //     0x63980c: and             x16, x17, x16, lsr #2
    //     0x639810: tst             x16, HEAP, lsr #32
    //     0x639814: b.eq            #0x63981c
    //     0x639818: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x63981c: r1 = Null
    //     0x63981c: mov             x1, NULL
    // 0x639820: r2 = 12
    //     0x639820: mov             x2, #0xc
    // 0x639824: r0 = AllocateArray()
    //     0x639824: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639828: r16 = "name"
    //     0x639828: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x63982c: StoreField: r0->field_f = r16
    //     0x63982c: stur            w16, [x0, #0xf]
    // 0x639830: r16 = "Leyl"
    //     0x639830: add             x16, PP, #0x18, lsl #12  ; [pp+0x18308] "Leyl"
    //     0x639834: ldr             x16, [x16, #0x308]
    // 0x639838: StoreField: r0->field_13 = r16
    //     0x639838: stur            w16, [x0, #0x13]
    // 0x63983c: r16 = "ayahCount"
    //     0x63983c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639840: ldr             x16, [x16, #0x30]
    // 0x639844: ArrayStore: r0[0] = r16  ; List_4
    //     0x639844: stur            w16, [x0, #0x17]
    // 0x639848: r16 = 42
    //     0x639848: mov             x16, #0x2a
    // 0x63984c: StoreField: r0->field_1b = r16
    //     0x63984c: stur            w16, [x0, #0x1b]
    // 0x639850: r16 = "page"
    //     0x639850: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x639854: ldr             x16, [x16, #0xa68]
    // 0x639858: StoreField: r0->field_1f = r16
    //     0x639858: stur            w16, [x0, #0x1f]
    // 0x63985c: r16 = 1190
    //     0x63985c: mov             x16, #0x4a6
    // 0x639860: StoreField: r0->field_23 = r16
    //     0x639860: stur            w16, [x0, #0x23]
    // 0x639864: r16 = <String, dynamic>
    //     0x639864: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639868: stp             x0, x16, [SP]
    // 0x63986c: r0 = Map._fromLiteral()
    //     0x63986c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639870: ldur            x1, [fp, #-0x10]
    // 0x639874: r2 = 182
    //     0x639874: mov             x2, #0xb6
    // 0x639878: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639878: add             x25, x1, w2, sxtw #1
    //     0x63987c: add             x25, x25, #0xf
    //     0x639880: str             w0, [x25]
    //     0x639884: tbz             w0, #0, #0x6398a0
    //     0x639888: ldurb           w16, [x1, #-1]
    //     0x63988c: ldurb           w17, [x0, #-1]
    //     0x639890: and             x16, x17, x16, lsr #2
    //     0x639894: tst             x16, HEAP, lsr #32
    //     0x639898: b.eq            #0x6398a0
    //     0x63989c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6398a0: r1 = Null
    //     0x6398a0: mov             x1, NULL
    // 0x6398a4: r2 = 12
    //     0x6398a4: mov             x2, #0xc
    // 0x6398a8: r0 = AllocateArray()
    //     0x6398a8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6398ac: r16 = "name"
    //     0x6398ac: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6398b0: StoreField: r0->field_f = r16
    //     0x6398b0: stur            w16, [x0, #0xf]
    // 0x6398b4: r16 = "Ed-Duha"
    //     0x6398b4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18310] "Ed-Duha"
    //     0x6398b8: ldr             x16, [x16, #0x310]
    // 0x6398bc: StoreField: r0->field_13 = r16
    //     0x6398bc: stur            w16, [x0, #0x13]
    // 0x6398c0: r16 = "ayahCount"
    //     0x6398c0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6398c4: ldr             x16, [x16, #0x30]
    // 0x6398c8: ArrayStore: r0[0] = r16  ; List_4
    //     0x6398c8: stur            w16, [x0, #0x17]
    // 0x6398cc: r16 = 22
    //     0x6398cc: mov             x16, #0x16
    // 0x6398d0: StoreField: r0->field_1b = r16
    //     0x6398d0: stur            w16, [x0, #0x1b]
    // 0x6398d4: r16 = "page"
    //     0x6398d4: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6398d8: ldr             x16, [x16, #0xa68]
    // 0x6398dc: StoreField: r0->field_1f = r16
    //     0x6398dc: stur            w16, [x0, #0x1f]
    // 0x6398e0: r16 = 1192
    //     0x6398e0: mov             x16, #0x4a8
    // 0x6398e4: StoreField: r0->field_23 = r16
    //     0x6398e4: stur            w16, [x0, #0x23]
    // 0x6398e8: r16 = <String, dynamic>
    //     0x6398e8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6398ec: stp             x0, x16, [SP]
    // 0x6398f0: r0 = Map._fromLiteral()
    //     0x6398f0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6398f4: ldur            x1, [fp, #-0x10]
    // 0x6398f8: r2 = 184
    //     0x6398f8: mov             x2, #0xb8
    // 0x6398fc: ArrayStore: r1[r2] = r0  ; List_4
    //     0x6398fc: add             x25, x1, w2, sxtw #1
    //     0x639900: add             x25, x25, #0xf
    //     0x639904: str             w0, [x25]
    //     0x639908: tbz             w0, #0, #0x639924
    //     0x63990c: ldurb           w16, [x1, #-1]
    //     0x639910: ldurb           w17, [x0, #-1]
    //     0x639914: and             x16, x17, x16, lsr #2
    //     0x639918: tst             x16, HEAP, lsr #32
    //     0x63991c: b.eq            #0x639924
    //     0x639920: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639924: r1 = Null
    //     0x639924: mov             x1, NULL
    // 0x639928: r2 = 12
    //     0x639928: mov             x2, #0xc
    // 0x63992c: r0 = AllocateArray()
    //     0x63992c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639930: r16 = "name"
    //     0x639930: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639934: StoreField: r0->field_f = r16
    //     0x639934: stur            w16, [x0, #0xf]
    // 0x639938: r16 = "İnşirah"
    //     0x639938: add             x16, PP, #0x18, lsl #12  ; [pp+0x18318] "İnşirah"
    //     0x63993c: ldr             x16, [x16, #0x318]
    // 0x639940: StoreField: r0->field_13 = r16
    //     0x639940: stur            w16, [x0, #0x13]
    // 0x639944: r16 = "ayahCount"
    //     0x639944: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639948: ldr             x16, [x16, #0x30]
    // 0x63994c: ArrayStore: r0[0] = r16  ; List_4
    //     0x63994c: stur            w16, [x0, #0x17]
    // 0x639950: r16 = 16
    //     0x639950: mov             x16, #0x10
    // 0x639954: StoreField: r0->field_1b = r16
    //     0x639954: stur            w16, [x0, #0x1b]
    // 0x639958: r16 = "page"
    //     0x639958: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63995c: ldr             x16, [x16, #0xa68]
    // 0x639960: StoreField: r0->field_1f = r16
    //     0x639960: stur            w16, [x0, #0x1f]
    // 0x639964: r16 = 1192
    //     0x639964: mov             x16, #0x4a8
    // 0x639968: StoreField: r0->field_23 = r16
    //     0x639968: stur            w16, [x0, #0x23]
    // 0x63996c: r16 = <String, dynamic>
    //     0x63996c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639970: stp             x0, x16, [SP]
    // 0x639974: r0 = Map._fromLiteral()
    //     0x639974: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639978: ldur            x1, [fp, #-0x10]
    // 0x63997c: r2 = 186
    //     0x63997c: mov             x2, #0xba
    // 0x639980: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639980: add             x25, x1, w2, sxtw #1
    //     0x639984: add             x25, x25, #0xf
    //     0x639988: str             w0, [x25]
    //     0x63998c: tbz             w0, #0, #0x6399a8
    //     0x639990: ldurb           w16, [x1, #-1]
    //     0x639994: ldurb           w17, [x0, #-1]
    //     0x639998: and             x16, x17, x16, lsr #2
    //     0x63999c: tst             x16, HEAP, lsr #32
    //     0x6399a0: b.eq            #0x6399a8
    //     0x6399a4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6399a8: r1 = Null
    //     0x6399a8: mov             x1, NULL
    // 0x6399ac: r2 = 12
    //     0x6399ac: mov             x2, #0xc
    // 0x6399b0: r0 = AllocateArray()
    //     0x6399b0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6399b4: r16 = "name"
    //     0x6399b4: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6399b8: StoreField: r0->field_f = r16
    //     0x6399b8: stur            w16, [x0, #0xf]
    // 0x6399bc: r16 = "Tin"
    //     0x6399bc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18320] "Tin"
    //     0x6399c0: ldr             x16, [x16, #0x320]
    // 0x6399c4: StoreField: r0->field_13 = r16
    //     0x6399c4: stur            w16, [x0, #0x13]
    // 0x6399c8: r16 = "ayahCount"
    //     0x6399c8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x6399cc: ldr             x16, [x16, #0x30]
    // 0x6399d0: ArrayStore: r0[0] = r16  ; List_4
    //     0x6399d0: stur            w16, [x0, #0x17]
    // 0x6399d4: r16 = 16
    //     0x6399d4: mov             x16, #0x10
    // 0x6399d8: StoreField: r0->field_1b = r16
    //     0x6399d8: stur            w16, [x0, #0x1b]
    // 0x6399dc: r16 = "page"
    //     0x6399dc: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x6399e0: ldr             x16, [x16, #0xa68]
    // 0x6399e4: StoreField: r0->field_1f = r16
    //     0x6399e4: stur            w16, [x0, #0x1f]
    // 0x6399e8: r16 = 1194
    //     0x6399e8: mov             x16, #0x4aa
    // 0x6399ec: StoreField: r0->field_23 = r16
    //     0x6399ec: stur            w16, [x0, #0x23]
    // 0x6399f0: r16 = <String, dynamic>
    //     0x6399f0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6399f4: stp             x0, x16, [SP]
    // 0x6399f8: r0 = Map._fromLiteral()
    //     0x6399f8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6399fc: ldur            x1, [fp, #-0x10]
    // 0x639a00: r2 = 188
    //     0x639a00: mov             x2, #0xbc
    // 0x639a04: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639a04: add             x25, x1, w2, sxtw #1
    //     0x639a08: add             x25, x25, #0xf
    //     0x639a0c: str             w0, [x25]
    //     0x639a10: tbz             w0, #0, #0x639a2c
    //     0x639a14: ldurb           w16, [x1, #-1]
    //     0x639a18: ldurb           w17, [x0, #-1]
    //     0x639a1c: and             x16, x17, x16, lsr #2
    //     0x639a20: tst             x16, HEAP, lsr #32
    //     0x639a24: b.eq            #0x639a2c
    //     0x639a28: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639a2c: r1 = Null
    //     0x639a2c: mov             x1, NULL
    // 0x639a30: r2 = 12
    //     0x639a30: mov             x2, #0xc
    // 0x639a34: r0 = AllocateArray()
    //     0x639a34: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639a38: r16 = "name"
    //     0x639a38: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639a3c: StoreField: r0->field_f = r16
    //     0x639a3c: stur            w16, [x0, #0xf]
    // 0x639a40: r16 = "Alak"
    //     0x639a40: add             x16, PP, #0x18, lsl #12  ; [pp+0x18328] "Alak"
    //     0x639a44: ldr             x16, [x16, #0x328]
    // 0x639a48: StoreField: r0->field_13 = r16
    //     0x639a48: stur            w16, [x0, #0x13]
    // 0x639a4c: r16 = "ayahCount"
    //     0x639a4c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639a50: ldr             x16, [x16, #0x30]
    // 0x639a54: ArrayStore: r0[0] = r16  ; List_4
    //     0x639a54: stur            w16, [x0, #0x17]
    // 0x639a58: r16 = 38
    //     0x639a58: mov             x16, #0x26
    // 0x639a5c: StoreField: r0->field_1b = r16
    //     0x639a5c: stur            w16, [x0, #0x1b]
    // 0x639a60: r16 = "page"
    //     0x639a60: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x639a64: ldr             x16, [x16, #0xa68]
    // 0x639a68: StoreField: r0->field_1f = r16
    //     0x639a68: stur            w16, [x0, #0x1f]
    // 0x639a6c: r16 = 1194
    //     0x639a6c: mov             x16, #0x4aa
    // 0x639a70: StoreField: r0->field_23 = r16
    //     0x639a70: stur            w16, [x0, #0x23]
    // 0x639a74: r16 = <String, dynamic>
    //     0x639a74: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639a78: stp             x0, x16, [SP]
    // 0x639a7c: r0 = Map._fromLiteral()
    //     0x639a7c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639a80: ldur            x1, [fp, #-0x10]
    // 0x639a84: r2 = 190
    //     0x639a84: mov             x2, #0xbe
    // 0x639a88: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639a88: add             x25, x1, w2, sxtw #1
    //     0x639a8c: add             x25, x25, #0xf
    //     0x639a90: str             w0, [x25]
    //     0x639a94: tbz             w0, #0, #0x639ab0
    //     0x639a98: ldurb           w16, [x1, #-1]
    //     0x639a9c: ldurb           w17, [x0, #-1]
    //     0x639aa0: and             x16, x17, x16, lsr #2
    //     0x639aa4: tst             x16, HEAP, lsr #32
    //     0x639aa8: b.eq            #0x639ab0
    //     0x639aac: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639ab0: r1 = Null
    //     0x639ab0: mov             x1, NULL
    // 0x639ab4: r2 = 12
    //     0x639ab4: mov             x2, #0xc
    // 0x639ab8: r0 = AllocateArray()
    //     0x639ab8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639abc: r16 = "name"
    //     0x639abc: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639ac0: StoreField: r0->field_f = r16
    //     0x639ac0: stur            w16, [x0, #0xf]
    // 0x639ac4: r16 = "Kadr"
    //     0x639ac4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18330] "Kadr"
    //     0x639ac8: ldr             x16, [x16, #0x330]
    // 0x639acc: StoreField: r0->field_13 = r16
    //     0x639acc: stur            w16, [x0, #0x13]
    // 0x639ad0: r16 = "ayahCount"
    //     0x639ad0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639ad4: ldr             x16, [x16, #0x30]
    // 0x639ad8: ArrayStore: r0[0] = r16  ; List_4
    //     0x639ad8: stur            w16, [x0, #0x17]
    // 0x639adc: r16 = 10
    //     0x639adc: mov             x16, #0xa
    // 0x639ae0: StoreField: r0->field_1b = r16
    //     0x639ae0: stur            w16, [x0, #0x1b]
    // 0x639ae4: r16 = "page"
    //     0x639ae4: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x639ae8: ldr             x16, [x16, #0xa68]
    // 0x639aec: StoreField: r0->field_1f = r16
    //     0x639aec: stur            w16, [x0, #0x1f]
    // 0x639af0: r16 = 1196
    //     0x639af0: mov             x16, #0x4ac
    // 0x639af4: StoreField: r0->field_23 = r16
    //     0x639af4: stur            w16, [x0, #0x23]
    // 0x639af8: r16 = <String, dynamic>
    //     0x639af8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639afc: stp             x0, x16, [SP]
    // 0x639b00: r0 = Map._fromLiteral()
    //     0x639b00: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639b04: ldur            x1, [fp, #-0x10]
    // 0x639b08: r2 = 192
    //     0x639b08: mov             x2, #0xc0
    // 0x639b0c: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639b0c: add             x25, x1, w2, sxtw #1
    //     0x639b10: add             x25, x25, #0xf
    //     0x639b14: str             w0, [x25]
    //     0x639b18: tbz             w0, #0, #0x639b34
    //     0x639b1c: ldurb           w16, [x1, #-1]
    //     0x639b20: ldurb           w17, [x0, #-1]
    //     0x639b24: and             x16, x17, x16, lsr #2
    //     0x639b28: tst             x16, HEAP, lsr #32
    //     0x639b2c: b.eq            #0x639b34
    //     0x639b30: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639b34: r1 = Null
    //     0x639b34: mov             x1, NULL
    // 0x639b38: r2 = 12
    //     0x639b38: mov             x2, #0xc
    // 0x639b3c: r0 = AllocateArray()
    //     0x639b3c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639b40: r16 = "name"
    //     0x639b40: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639b44: StoreField: r0->field_f = r16
    //     0x639b44: stur            w16, [x0, #0xf]
    // 0x639b48: r16 = "Beyyine"
    //     0x639b48: add             x16, PP, #0x18, lsl #12  ; [pp+0x18338] "Beyyine"
    //     0x639b4c: ldr             x16, [x16, #0x338]
    // 0x639b50: StoreField: r0->field_13 = r16
    //     0x639b50: stur            w16, [x0, #0x13]
    // 0x639b54: r16 = "ayahCount"
    //     0x639b54: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639b58: ldr             x16, [x16, #0x30]
    // 0x639b5c: ArrayStore: r0[0] = r16  ; List_4
    //     0x639b5c: stur            w16, [x0, #0x17]
    // 0x639b60: r16 = 16
    //     0x639b60: mov             x16, #0x10
    // 0x639b64: StoreField: r0->field_1b = r16
    //     0x639b64: stur            w16, [x0, #0x1b]
    // 0x639b68: r16 = "page"
    //     0x639b68: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x639b6c: ldr             x16, [x16, #0xa68]
    // 0x639b70: StoreField: r0->field_1f = r16
    //     0x639b70: stur            w16, [x0, #0x1f]
    // 0x639b74: r16 = 1196
    //     0x639b74: mov             x16, #0x4ac
    // 0x639b78: StoreField: r0->field_23 = r16
    //     0x639b78: stur            w16, [x0, #0x23]
    // 0x639b7c: r16 = <String, dynamic>
    //     0x639b7c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639b80: stp             x0, x16, [SP]
    // 0x639b84: r0 = Map._fromLiteral()
    //     0x639b84: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639b88: ldur            x1, [fp, #-0x10]
    // 0x639b8c: r2 = 194
    //     0x639b8c: mov             x2, #0xc2
    // 0x639b90: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639b90: add             x25, x1, w2, sxtw #1
    //     0x639b94: add             x25, x25, #0xf
    //     0x639b98: str             w0, [x25]
    //     0x639b9c: tbz             w0, #0, #0x639bb8
    //     0x639ba0: ldurb           w16, [x1, #-1]
    //     0x639ba4: ldurb           w17, [x0, #-1]
    //     0x639ba8: and             x16, x17, x16, lsr #2
    //     0x639bac: tst             x16, HEAP, lsr #32
    //     0x639bb0: b.eq            #0x639bb8
    //     0x639bb4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639bb8: r1 = Null
    //     0x639bb8: mov             x1, NULL
    // 0x639bbc: r2 = 12
    //     0x639bbc: mov             x2, #0xc
    // 0x639bc0: r0 = AllocateArray()
    //     0x639bc0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639bc4: r16 = "name"
    //     0x639bc4: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639bc8: StoreField: r0->field_f = r16
    //     0x639bc8: stur            w16, [x0, #0xf]
    // 0x639bcc: r16 = "Zilzal"
    //     0x639bcc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18340] "Zilzal"
    //     0x639bd0: ldr             x16, [x16, #0x340]
    // 0x639bd4: StoreField: r0->field_13 = r16
    //     0x639bd4: stur            w16, [x0, #0x13]
    // 0x639bd8: r16 = "ayahCount"
    //     0x639bd8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639bdc: ldr             x16, [x16, #0x30]
    // 0x639be0: ArrayStore: r0[0] = r16  ; List_4
    //     0x639be0: stur            w16, [x0, #0x17]
    // 0x639be4: r16 = 16
    //     0x639be4: mov             x16, #0x10
    // 0x639be8: StoreField: r0->field_1b = r16
    //     0x639be8: stur            w16, [x0, #0x1b]
    // 0x639bec: r16 = "page"
    //     0x639bec: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x639bf0: ldr             x16, [x16, #0xa68]
    // 0x639bf4: StoreField: r0->field_1f = r16
    //     0x639bf4: stur            w16, [x0, #0x1f]
    // 0x639bf8: r16 = 1198
    //     0x639bf8: mov             x16, #0x4ae
    // 0x639bfc: StoreField: r0->field_23 = r16
    //     0x639bfc: stur            w16, [x0, #0x23]
    // 0x639c00: r16 = <String, dynamic>
    //     0x639c00: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639c04: stp             x0, x16, [SP]
    // 0x639c08: r0 = Map._fromLiteral()
    //     0x639c08: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639c0c: ldur            x1, [fp, #-0x10]
    // 0x639c10: r2 = 196
    //     0x639c10: mov             x2, #0xc4
    // 0x639c14: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639c14: add             x25, x1, w2, sxtw #1
    //     0x639c18: add             x25, x25, #0xf
    //     0x639c1c: str             w0, [x25]
    //     0x639c20: tbz             w0, #0, #0x639c3c
    //     0x639c24: ldurb           w16, [x1, #-1]
    //     0x639c28: ldurb           w17, [x0, #-1]
    //     0x639c2c: and             x16, x17, x16, lsr #2
    //     0x639c30: tst             x16, HEAP, lsr #32
    //     0x639c34: b.eq            #0x639c3c
    //     0x639c38: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639c3c: r1 = Null
    //     0x639c3c: mov             x1, NULL
    // 0x639c40: r2 = 12
    //     0x639c40: mov             x2, #0xc
    // 0x639c44: r0 = AllocateArray()
    //     0x639c44: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639c48: r16 = "name"
    //     0x639c48: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639c4c: StoreField: r0->field_f = r16
    //     0x639c4c: stur            w16, [x0, #0xf]
    // 0x639c50: r16 = "Adiyat"
    //     0x639c50: add             x16, PP, #0x18, lsl #12  ; [pp+0x18348] "Adiyat"
    //     0x639c54: ldr             x16, [x16, #0x348]
    // 0x639c58: StoreField: r0->field_13 = r16
    //     0x639c58: stur            w16, [x0, #0x13]
    // 0x639c5c: r16 = "ayahCount"
    //     0x639c5c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639c60: ldr             x16, [x16, #0x30]
    // 0x639c64: ArrayStore: r0[0] = r16  ; List_4
    //     0x639c64: stur            w16, [x0, #0x17]
    // 0x639c68: r16 = 22
    //     0x639c68: mov             x16, #0x16
    // 0x639c6c: StoreField: r0->field_1b = r16
    //     0x639c6c: stur            w16, [x0, #0x1b]
    // 0x639c70: r16 = "page"
    //     0x639c70: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x639c74: ldr             x16, [x16, #0xa68]
    // 0x639c78: StoreField: r0->field_1f = r16
    //     0x639c78: stur            w16, [x0, #0x1f]
    // 0x639c7c: r16 = 1198
    //     0x639c7c: mov             x16, #0x4ae
    // 0x639c80: StoreField: r0->field_23 = r16
    //     0x639c80: stur            w16, [x0, #0x23]
    // 0x639c84: r16 = <String, dynamic>
    //     0x639c84: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639c88: stp             x0, x16, [SP]
    // 0x639c8c: r0 = Map._fromLiteral()
    //     0x639c8c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639c90: ldur            x1, [fp, #-0x10]
    // 0x639c94: r2 = 198
    //     0x639c94: mov             x2, #0xc6
    // 0x639c98: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639c98: add             x25, x1, w2, sxtw #1
    //     0x639c9c: add             x25, x25, #0xf
    //     0x639ca0: str             w0, [x25]
    //     0x639ca4: tbz             w0, #0, #0x639cc0
    //     0x639ca8: ldurb           w16, [x1, #-1]
    //     0x639cac: ldurb           w17, [x0, #-1]
    //     0x639cb0: and             x16, x17, x16, lsr #2
    //     0x639cb4: tst             x16, HEAP, lsr #32
    //     0x639cb8: b.eq            #0x639cc0
    //     0x639cbc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639cc0: r1 = Null
    //     0x639cc0: mov             x1, NULL
    // 0x639cc4: r2 = 12
    //     0x639cc4: mov             x2, #0xc
    // 0x639cc8: r0 = AllocateArray()
    //     0x639cc8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639ccc: r16 = "name"
    //     0x639ccc: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639cd0: StoreField: r0->field_f = r16
    //     0x639cd0: stur            w16, [x0, #0xf]
    // 0x639cd4: r16 = "Karia"
    //     0x639cd4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18350] "Karia"
    //     0x639cd8: ldr             x16, [x16, #0x350]
    // 0x639cdc: StoreField: r0->field_13 = r16
    //     0x639cdc: stur            w16, [x0, #0x13]
    // 0x639ce0: r16 = "ayahCount"
    //     0x639ce0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639ce4: ldr             x16, [x16, #0x30]
    // 0x639ce8: ArrayStore: r0[0] = r16  ; List_4
    //     0x639ce8: stur            w16, [x0, #0x17]
    // 0x639cec: r16 = 22
    //     0x639cec: mov             x16, #0x16
    // 0x639cf0: StoreField: r0->field_1b = r16
    //     0x639cf0: stur            w16, [x0, #0x1b]
    // 0x639cf4: r16 = "page"
    //     0x639cf4: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x639cf8: ldr             x16, [x16, #0xa68]
    // 0x639cfc: StoreField: r0->field_1f = r16
    //     0x639cfc: stur            w16, [x0, #0x1f]
    // 0x639d00: r16 = 1200
    //     0x639d00: mov             x16, #0x4b0
    // 0x639d04: StoreField: r0->field_23 = r16
    //     0x639d04: stur            w16, [x0, #0x23]
    // 0x639d08: r16 = <String, dynamic>
    //     0x639d08: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639d0c: stp             x0, x16, [SP]
    // 0x639d10: r0 = Map._fromLiteral()
    //     0x639d10: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639d14: ldur            x1, [fp, #-0x10]
    // 0x639d18: r2 = 200
    //     0x639d18: mov             x2, #0xc8
    // 0x639d1c: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639d1c: add             x25, x1, w2, sxtw #1
    //     0x639d20: add             x25, x25, #0xf
    //     0x639d24: str             w0, [x25]
    //     0x639d28: tbz             w0, #0, #0x639d44
    //     0x639d2c: ldurb           w16, [x1, #-1]
    //     0x639d30: ldurb           w17, [x0, #-1]
    //     0x639d34: and             x16, x17, x16, lsr #2
    //     0x639d38: tst             x16, HEAP, lsr #32
    //     0x639d3c: b.eq            #0x639d44
    //     0x639d40: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639d44: r1 = Null
    //     0x639d44: mov             x1, NULL
    // 0x639d48: r2 = 12
    //     0x639d48: mov             x2, #0xc
    // 0x639d4c: r0 = AllocateArray()
    //     0x639d4c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639d50: r16 = "name"
    //     0x639d50: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639d54: StoreField: r0->field_f = r16
    //     0x639d54: stur            w16, [x0, #0xf]
    // 0x639d58: r16 = "Tekasur"
    //     0x639d58: add             x16, PP, #0x18, lsl #12  ; [pp+0x18358] "Tekasur"
    //     0x639d5c: ldr             x16, [x16, #0x358]
    // 0x639d60: StoreField: r0->field_13 = r16
    //     0x639d60: stur            w16, [x0, #0x13]
    // 0x639d64: r16 = "ayahCount"
    //     0x639d64: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639d68: ldr             x16, [x16, #0x30]
    // 0x639d6c: ArrayStore: r0[0] = r16  ; List_4
    //     0x639d6c: stur            w16, [x0, #0x17]
    // 0x639d70: r16 = 16
    //     0x639d70: mov             x16, #0x10
    // 0x639d74: StoreField: r0->field_1b = r16
    //     0x639d74: stur            w16, [x0, #0x1b]
    // 0x639d78: r16 = "page"
    //     0x639d78: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x639d7c: ldr             x16, [x16, #0xa68]
    // 0x639d80: StoreField: r0->field_1f = r16
    //     0x639d80: stur            w16, [x0, #0x1f]
    // 0x639d84: r16 = 1200
    //     0x639d84: mov             x16, #0x4b0
    // 0x639d88: StoreField: r0->field_23 = r16
    //     0x639d88: stur            w16, [x0, #0x23]
    // 0x639d8c: r16 = <String, dynamic>
    //     0x639d8c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639d90: stp             x0, x16, [SP]
    // 0x639d94: r0 = Map._fromLiteral()
    //     0x639d94: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639d98: ldur            x1, [fp, #-0x10]
    // 0x639d9c: r2 = 202
    //     0x639d9c: mov             x2, #0xca
    // 0x639da0: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639da0: add             x25, x1, w2, sxtw #1
    //     0x639da4: add             x25, x25, #0xf
    //     0x639da8: str             w0, [x25]
    //     0x639dac: tbz             w0, #0, #0x639dc8
    //     0x639db0: ldurb           w16, [x1, #-1]
    //     0x639db4: ldurb           w17, [x0, #-1]
    //     0x639db8: and             x16, x17, x16, lsr #2
    //     0x639dbc: tst             x16, HEAP, lsr #32
    //     0x639dc0: b.eq            #0x639dc8
    //     0x639dc4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639dc8: r1 = Null
    //     0x639dc8: mov             x1, NULL
    // 0x639dcc: r2 = 12
    //     0x639dcc: mov             x2, #0xc
    // 0x639dd0: r0 = AllocateArray()
    //     0x639dd0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639dd4: r16 = "name"
    //     0x639dd4: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639dd8: StoreField: r0->field_f = r16
    //     0x639dd8: stur            w16, [x0, #0xf]
    // 0x639ddc: r16 = "Asr"
    //     0x639ddc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18360] "Asr"
    //     0x639de0: ldr             x16, [x16, #0x360]
    // 0x639de4: StoreField: r0->field_13 = r16
    //     0x639de4: stur            w16, [x0, #0x13]
    // 0x639de8: r16 = "ayahCount"
    //     0x639de8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639dec: ldr             x16, [x16, #0x30]
    // 0x639df0: ArrayStore: r0[0] = r16  ; List_4
    //     0x639df0: stur            w16, [x0, #0x17]
    // 0x639df4: r16 = 6
    //     0x639df4: mov             x16, #6
    // 0x639df8: StoreField: r0->field_1b = r16
    //     0x639df8: stur            w16, [x0, #0x1b]
    // 0x639dfc: r16 = "page"
    //     0x639dfc: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x639e00: ldr             x16, [x16, #0xa68]
    // 0x639e04: StoreField: r0->field_1f = r16
    //     0x639e04: stur            w16, [x0, #0x1f]
    // 0x639e08: r16 = 1202
    //     0x639e08: mov             x16, #0x4b2
    // 0x639e0c: StoreField: r0->field_23 = r16
    //     0x639e0c: stur            w16, [x0, #0x23]
    // 0x639e10: r16 = <String, dynamic>
    //     0x639e10: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639e14: stp             x0, x16, [SP]
    // 0x639e18: r0 = Map._fromLiteral()
    //     0x639e18: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639e1c: ldur            x1, [fp, #-0x10]
    // 0x639e20: r2 = 204
    //     0x639e20: mov             x2, #0xcc
    // 0x639e24: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639e24: add             x25, x1, w2, sxtw #1
    //     0x639e28: add             x25, x25, #0xf
    //     0x639e2c: str             w0, [x25]
    //     0x639e30: tbz             w0, #0, #0x639e4c
    //     0x639e34: ldurb           w16, [x1, #-1]
    //     0x639e38: ldurb           w17, [x0, #-1]
    //     0x639e3c: and             x16, x17, x16, lsr #2
    //     0x639e40: tst             x16, HEAP, lsr #32
    //     0x639e44: b.eq            #0x639e4c
    //     0x639e48: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639e4c: r1 = Null
    //     0x639e4c: mov             x1, NULL
    // 0x639e50: r2 = 12
    //     0x639e50: mov             x2, #0xc
    // 0x639e54: r0 = AllocateArray()
    //     0x639e54: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639e58: r16 = "name"
    //     0x639e58: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639e5c: StoreField: r0->field_f = r16
    //     0x639e5c: stur            w16, [x0, #0xf]
    // 0x639e60: r16 = "Hümeze"
    //     0x639e60: add             x16, PP, #0x18, lsl #12  ; [pp+0x18368] "Hümeze"
    //     0x639e64: ldr             x16, [x16, #0x368]
    // 0x639e68: StoreField: r0->field_13 = r16
    //     0x639e68: stur            w16, [x0, #0x13]
    // 0x639e6c: r16 = "ayahCount"
    //     0x639e6c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639e70: ldr             x16, [x16, #0x30]
    // 0x639e74: ArrayStore: r0[0] = r16  ; List_4
    //     0x639e74: stur            w16, [x0, #0x17]
    // 0x639e78: r16 = 18
    //     0x639e78: mov             x16, #0x12
    // 0x639e7c: StoreField: r0->field_1b = r16
    //     0x639e7c: stur            w16, [x0, #0x1b]
    // 0x639e80: r16 = "page"
    //     0x639e80: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x639e84: ldr             x16, [x16, #0xa68]
    // 0x639e88: StoreField: r0->field_1f = r16
    //     0x639e88: stur            w16, [x0, #0x1f]
    // 0x639e8c: r16 = 1202
    //     0x639e8c: mov             x16, #0x4b2
    // 0x639e90: StoreField: r0->field_23 = r16
    //     0x639e90: stur            w16, [x0, #0x23]
    // 0x639e94: r16 = <String, dynamic>
    //     0x639e94: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639e98: stp             x0, x16, [SP]
    // 0x639e9c: r0 = Map._fromLiteral()
    //     0x639e9c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639ea0: ldur            x1, [fp, #-0x10]
    // 0x639ea4: r2 = 206
    //     0x639ea4: mov             x2, #0xce
    // 0x639ea8: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639ea8: add             x25, x1, w2, sxtw #1
    //     0x639eac: add             x25, x25, #0xf
    //     0x639eb0: str             w0, [x25]
    //     0x639eb4: tbz             w0, #0, #0x639ed0
    //     0x639eb8: ldurb           w16, [x1, #-1]
    //     0x639ebc: ldurb           w17, [x0, #-1]
    //     0x639ec0: and             x16, x17, x16, lsr #2
    //     0x639ec4: tst             x16, HEAP, lsr #32
    //     0x639ec8: b.eq            #0x639ed0
    //     0x639ecc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639ed0: r1 = Null
    //     0x639ed0: mov             x1, NULL
    // 0x639ed4: r2 = 12
    //     0x639ed4: mov             x2, #0xc
    // 0x639ed8: r0 = AllocateArray()
    //     0x639ed8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639edc: r16 = "name"
    //     0x639edc: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639ee0: StoreField: r0->field_f = r16
    //     0x639ee0: stur            w16, [x0, #0xf]
    // 0x639ee4: r16 = "Fil"
    //     0x639ee4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18370] "Fil"
    //     0x639ee8: ldr             x16, [x16, #0x370]
    // 0x639eec: StoreField: r0->field_13 = r16
    //     0x639eec: stur            w16, [x0, #0x13]
    // 0x639ef0: r16 = "ayahCount"
    //     0x639ef0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639ef4: ldr             x16, [x16, #0x30]
    // 0x639ef8: ArrayStore: r0[0] = r16  ; List_4
    //     0x639ef8: stur            w16, [x0, #0x17]
    // 0x639efc: r16 = 10
    //     0x639efc: mov             x16, #0xa
    // 0x639f00: StoreField: r0->field_1b = r16
    //     0x639f00: stur            w16, [x0, #0x1b]
    // 0x639f04: r16 = "page"
    //     0x639f04: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x639f08: ldr             x16, [x16, #0xa68]
    // 0x639f0c: StoreField: r0->field_1f = r16
    //     0x639f0c: stur            w16, [x0, #0x1f]
    // 0x639f10: r16 = 1202
    //     0x639f10: mov             x16, #0x4b2
    // 0x639f14: StoreField: r0->field_23 = r16
    //     0x639f14: stur            w16, [x0, #0x23]
    // 0x639f18: r16 = <String, dynamic>
    //     0x639f18: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639f1c: stp             x0, x16, [SP]
    // 0x639f20: r0 = Map._fromLiteral()
    //     0x639f20: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639f24: ldur            x1, [fp, #-0x10]
    // 0x639f28: r2 = 208
    //     0x639f28: mov             x2, #0xd0
    // 0x639f2c: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639f2c: add             x25, x1, w2, sxtw #1
    //     0x639f30: add             x25, x25, #0xf
    //     0x639f34: str             w0, [x25]
    //     0x639f38: tbz             w0, #0, #0x639f54
    //     0x639f3c: ldurb           w16, [x1, #-1]
    //     0x639f40: ldurb           w17, [x0, #-1]
    //     0x639f44: and             x16, x17, x16, lsr #2
    //     0x639f48: tst             x16, HEAP, lsr #32
    //     0x639f4c: b.eq            #0x639f54
    //     0x639f50: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639f54: r1 = Null
    //     0x639f54: mov             x1, NULL
    // 0x639f58: r2 = 12
    //     0x639f58: mov             x2, #0xc
    // 0x639f5c: r0 = AllocateArray()
    //     0x639f5c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639f60: r16 = "name"
    //     0x639f60: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639f64: StoreField: r0->field_f = r16
    //     0x639f64: stur            w16, [x0, #0xf]
    // 0x639f68: r16 = "Kureyş"
    //     0x639f68: add             x16, PP, #0x18, lsl #12  ; [pp+0x18378] "Kureyş"
    //     0x639f6c: ldr             x16, [x16, #0x378]
    // 0x639f70: StoreField: r0->field_13 = r16
    //     0x639f70: stur            w16, [x0, #0x13]
    // 0x639f74: r16 = "ayahCount"
    //     0x639f74: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639f78: ldr             x16, [x16, #0x30]
    // 0x639f7c: ArrayStore: r0[0] = r16  ; List_4
    //     0x639f7c: stur            w16, [x0, #0x17]
    // 0x639f80: r16 = 8
    //     0x639f80: mov             x16, #8
    // 0x639f84: StoreField: r0->field_1b = r16
    //     0x639f84: stur            w16, [x0, #0x1b]
    // 0x639f88: r16 = "page"
    //     0x639f88: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x639f8c: ldr             x16, [x16, #0xa68]
    // 0x639f90: StoreField: r0->field_1f = r16
    //     0x639f90: stur            w16, [x0, #0x1f]
    // 0x639f94: r16 = 1204
    //     0x639f94: mov             x16, #0x4b4
    // 0x639f98: StoreField: r0->field_23 = r16
    //     0x639f98: stur            w16, [x0, #0x23]
    // 0x639f9c: r16 = <String, dynamic>
    //     0x639f9c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x639fa0: stp             x0, x16, [SP]
    // 0x639fa4: r0 = Map._fromLiteral()
    //     0x639fa4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x639fa8: ldur            x1, [fp, #-0x10]
    // 0x639fac: r2 = 210
    //     0x639fac: mov             x2, #0xd2
    // 0x639fb0: ArrayStore: r1[r2] = r0  ; List_4
    //     0x639fb0: add             x25, x1, w2, sxtw #1
    //     0x639fb4: add             x25, x25, #0xf
    //     0x639fb8: str             w0, [x25]
    //     0x639fbc: tbz             w0, #0, #0x639fd8
    //     0x639fc0: ldurb           w16, [x1, #-1]
    //     0x639fc4: ldurb           w17, [x0, #-1]
    //     0x639fc8: and             x16, x17, x16, lsr #2
    //     0x639fcc: tst             x16, HEAP, lsr #32
    //     0x639fd0: b.eq            #0x639fd8
    //     0x639fd4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x639fd8: r1 = Null
    //     0x639fd8: mov             x1, NULL
    // 0x639fdc: r2 = 12
    //     0x639fdc: mov             x2, #0xc
    // 0x639fe0: r0 = AllocateArray()
    //     0x639fe0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x639fe4: r16 = "name"
    //     0x639fe4: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x639fe8: StoreField: r0->field_f = r16
    //     0x639fe8: stur            w16, [x0, #0xf]
    // 0x639fec: r16 = "Maun"
    //     0x639fec: add             x16, PP, #0x18, lsl #12  ; [pp+0x18380] "Maun"
    //     0x639ff0: ldr             x16, [x16, #0x380]
    // 0x639ff4: StoreField: r0->field_13 = r16
    //     0x639ff4: stur            w16, [x0, #0x13]
    // 0x639ff8: r16 = "ayahCount"
    //     0x639ff8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x639ffc: ldr             x16, [x16, #0x30]
    // 0x63a000: ArrayStore: r0[0] = r16  ; List_4
    //     0x63a000: stur            w16, [x0, #0x17]
    // 0x63a004: r16 = 14
    //     0x63a004: mov             x16, #0xe
    // 0x63a008: StoreField: r0->field_1b = r16
    //     0x63a008: stur            w16, [x0, #0x1b]
    // 0x63a00c: r16 = "page"
    //     0x63a00c: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63a010: ldr             x16, [x16, #0xa68]
    // 0x63a014: StoreField: r0->field_1f = r16
    //     0x63a014: stur            w16, [x0, #0x1f]
    // 0x63a018: r16 = 1204
    //     0x63a018: mov             x16, #0x4b4
    // 0x63a01c: StoreField: r0->field_23 = r16
    //     0x63a01c: stur            w16, [x0, #0x23]
    // 0x63a020: r16 = <String, dynamic>
    //     0x63a020: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x63a024: stp             x0, x16, [SP]
    // 0x63a028: r0 = Map._fromLiteral()
    //     0x63a028: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x63a02c: ldur            x1, [fp, #-0x10]
    // 0x63a030: r2 = 212
    //     0x63a030: mov             x2, #0xd4
    // 0x63a034: ArrayStore: r1[r2] = r0  ; List_4
    //     0x63a034: add             x25, x1, w2, sxtw #1
    //     0x63a038: add             x25, x25, #0xf
    //     0x63a03c: str             w0, [x25]
    //     0x63a040: tbz             w0, #0, #0x63a05c
    //     0x63a044: ldurb           w16, [x1, #-1]
    //     0x63a048: ldurb           w17, [x0, #-1]
    //     0x63a04c: and             x16, x17, x16, lsr #2
    //     0x63a050: tst             x16, HEAP, lsr #32
    //     0x63a054: b.eq            #0x63a05c
    //     0x63a058: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x63a05c: r1 = Null
    //     0x63a05c: mov             x1, NULL
    // 0x63a060: r2 = 12
    //     0x63a060: mov             x2, #0xc
    // 0x63a064: r0 = AllocateArray()
    //     0x63a064: bl              #0x9280a0  ; AllocateArrayStub
    // 0x63a068: r16 = "name"
    //     0x63a068: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x63a06c: StoreField: r0->field_f = r16
    //     0x63a06c: stur            w16, [x0, #0xf]
    // 0x63a070: r16 = "Kevser"
    //     0x63a070: add             x16, PP, #0x18, lsl #12  ; [pp+0x18388] "Kevser"
    //     0x63a074: ldr             x16, [x16, #0x388]
    // 0x63a078: StoreField: r0->field_13 = r16
    //     0x63a078: stur            w16, [x0, #0x13]
    // 0x63a07c: r16 = "ayahCount"
    //     0x63a07c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x63a080: ldr             x16, [x16, #0x30]
    // 0x63a084: ArrayStore: r0[0] = r16  ; List_4
    //     0x63a084: stur            w16, [x0, #0x17]
    // 0x63a088: r16 = 6
    //     0x63a088: mov             x16, #6
    // 0x63a08c: StoreField: r0->field_1b = r16
    //     0x63a08c: stur            w16, [x0, #0x1b]
    // 0x63a090: r16 = "page"
    //     0x63a090: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63a094: ldr             x16, [x16, #0xa68]
    // 0x63a098: StoreField: r0->field_1f = r16
    //     0x63a098: stur            w16, [x0, #0x1f]
    // 0x63a09c: r16 = 1204
    //     0x63a09c: mov             x16, #0x4b4
    // 0x63a0a0: StoreField: r0->field_23 = r16
    //     0x63a0a0: stur            w16, [x0, #0x23]
    // 0x63a0a4: r16 = <String, dynamic>
    //     0x63a0a4: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x63a0a8: stp             x0, x16, [SP]
    // 0x63a0ac: r0 = Map._fromLiteral()
    //     0x63a0ac: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x63a0b0: ldur            x1, [fp, #-0x10]
    // 0x63a0b4: r2 = 214
    //     0x63a0b4: mov             x2, #0xd6
    // 0x63a0b8: ArrayStore: r1[r2] = r0  ; List_4
    //     0x63a0b8: add             x25, x1, w2, sxtw #1
    //     0x63a0bc: add             x25, x25, #0xf
    //     0x63a0c0: str             w0, [x25]
    //     0x63a0c4: tbz             w0, #0, #0x63a0e0
    //     0x63a0c8: ldurb           w16, [x1, #-1]
    //     0x63a0cc: ldurb           w17, [x0, #-1]
    //     0x63a0d0: and             x16, x17, x16, lsr #2
    //     0x63a0d4: tst             x16, HEAP, lsr #32
    //     0x63a0d8: b.eq            #0x63a0e0
    //     0x63a0dc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x63a0e0: r1 = Null
    //     0x63a0e0: mov             x1, NULL
    // 0x63a0e4: r2 = 12
    //     0x63a0e4: mov             x2, #0xc
    // 0x63a0e8: r0 = AllocateArray()
    //     0x63a0e8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x63a0ec: r16 = "name"
    //     0x63a0ec: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x63a0f0: StoreField: r0->field_f = r16
    //     0x63a0f0: stur            w16, [x0, #0xf]
    // 0x63a0f4: r16 = "Kafirun"
    //     0x63a0f4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18390] "Kafirun"
    //     0x63a0f8: ldr             x16, [x16, #0x390]
    // 0x63a0fc: StoreField: r0->field_13 = r16
    //     0x63a0fc: stur            w16, [x0, #0x13]
    // 0x63a100: r16 = "ayahCount"
    //     0x63a100: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x63a104: ldr             x16, [x16, #0x30]
    // 0x63a108: ArrayStore: r0[0] = r16  ; List_4
    //     0x63a108: stur            w16, [x0, #0x17]
    // 0x63a10c: r16 = 12
    //     0x63a10c: mov             x16, #0xc
    // 0x63a110: StoreField: r0->field_1b = r16
    //     0x63a110: stur            w16, [x0, #0x1b]
    // 0x63a114: r16 = "page"
    //     0x63a114: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63a118: ldr             x16, [x16, #0xa68]
    // 0x63a11c: StoreField: r0->field_1f = r16
    //     0x63a11c: stur            w16, [x0, #0x1f]
    // 0x63a120: r16 = 1206
    //     0x63a120: mov             x16, #0x4b6
    // 0x63a124: StoreField: r0->field_23 = r16
    //     0x63a124: stur            w16, [x0, #0x23]
    // 0x63a128: r16 = <String, dynamic>
    //     0x63a128: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x63a12c: stp             x0, x16, [SP]
    // 0x63a130: r0 = Map._fromLiteral()
    //     0x63a130: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x63a134: ldur            x1, [fp, #-0x10]
    // 0x63a138: r2 = 216
    //     0x63a138: mov             x2, #0xd8
    // 0x63a13c: ArrayStore: r1[r2] = r0  ; List_4
    //     0x63a13c: add             x25, x1, w2, sxtw #1
    //     0x63a140: add             x25, x25, #0xf
    //     0x63a144: str             w0, [x25]
    //     0x63a148: tbz             w0, #0, #0x63a164
    //     0x63a14c: ldurb           w16, [x1, #-1]
    //     0x63a150: ldurb           w17, [x0, #-1]
    //     0x63a154: and             x16, x17, x16, lsr #2
    //     0x63a158: tst             x16, HEAP, lsr #32
    //     0x63a15c: b.eq            #0x63a164
    //     0x63a160: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x63a164: r1 = Null
    //     0x63a164: mov             x1, NULL
    // 0x63a168: r2 = 12
    //     0x63a168: mov             x2, #0xc
    // 0x63a16c: r0 = AllocateArray()
    //     0x63a16c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x63a170: r16 = "name"
    //     0x63a170: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x63a174: StoreField: r0->field_f = r16
    //     0x63a174: stur            w16, [x0, #0xf]
    // 0x63a178: r16 = "Nasr"
    //     0x63a178: add             x16, PP, #0x18, lsl #12  ; [pp+0x18398] "Nasr"
    //     0x63a17c: ldr             x16, [x16, #0x398]
    // 0x63a180: StoreField: r0->field_13 = r16
    //     0x63a180: stur            w16, [x0, #0x13]
    // 0x63a184: r16 = "ayahCount"
    //     0x63a184: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x63a188: ldr             x16, [x16, #0x30]
    // 0x63a18c: ArrayStore: r0[0] = r16  ; List_4
    //     0x63a18c: stur            w16, [x0, #0x17]
    // 0x63a190: r16 = 6
    //     0x63a190: mov             x16, #6
    // 0x63a194: StoreField: r0->field_1b = r16
    //     0x63a194: stur            w16, [x0, #0x1b]
    // 0x63a198: r16 = "page"
    //     0x63a198: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63a19c: ldr             x16, [x16, #0xa68]
    // 0x63a1a0: StoreField: r0->field_1f = r16
    //     0x63a1a0: stur            w16, [x0, #0x1f]
    // 0x63a1a4: r16 = 1206
    //     0x63a1a4: mov             x16, #0x4b6
    // 0x63a1a8: StoreField: r0->field_23 = r16
    //     0x63a1a8: stur            w16, [x0, #0x23]
    // 0x63a1ac: r16 = <String, dynamic>
    //     0x63a1ac: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x63a1b0: stp             x0, x16, [SP]
    // 0x63a1b4: r0 = Map._fromLiteral()
    //     0x63a1b4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x63a1b8: ldur            x1, [fp, #-0x10]
    // 0x63a1bc: r2 = 218
    //     0x63a1bc: mov             x2, #0xda
    // 0x63a1c0: ArrayStore: r1[r2] = r0  ; List_4
    //     0x63a1c0: add             x25, x1, w2, sxtw #1
    //     0x63a1c4: add             x25, x25, #0xf
    //     0x63a1c8: str             w0, [x25]
    //     0x63a1cc: tbz             w0, #0, #0x63a1e8
    //     0x63a1d0: ldurb           w16, [x1, #-1]
    //     0x63a1d4: ldurb           w17, [x0, #-1]
    //     0x63a1d8: and             x16, x17, x16, lsr #2
    //     0x63a1dc: tst             x16, HEAP, lsr #32
    //     0x63a1e0: b.eq            #0x63a1e8
    //     0x63a1e4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x63a1e8: r1 = Null
    //     0x63a1e8: mov             x1, NULL
    // 0x63a1ec: r2 = 12
    //     0x63a1ec: mov             x2, #0xc
    // 0x63a1f0: r0 = AllocateArray()
    //     0x63a1f0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x63a1f4: r16 = "name"
    //     0x63a1f4: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x63a1f8: StoreField: r0->field_f = r16
    //     0x63a1f8: stur            w16, [x0, #0xf]
    // 0x63a1fc: r16 = "Tebbet"
    //     0x63a1fc: add             x16, PP, #0x18, lsl #12  ; [pp+0x183a0] "Tebbet"
    //     0x63a200: ldr             x16, [x16, #0x3a0]
    // 0x63a204: StoreField: r0->field_13 = r16
    //     0x63a204: stur            w16, [x0, #0x13]
    // 0x63a208: r16 = "ayahCount"
    //     0x63a208: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x63a20c: ldr             x16, [x16, #0x30]
    // 0x63a210: ArrayStore: r0[0] = r16  ; List_4
    //     0x63a210: stur            w16, [x0, #0x17]
    // 0x63a214: r16 = 10
    //     0x63a214: mov             x16, #0xa
    // 0x63a218: StoreField: r0->field_1b = r16
    //     0x63a218: stur            w16, [x0, #0x1b]
    // 0x63a21c: r16 = "page"
    //     0x63a21c: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63a220: ldr             x16, [x16, #0xa68]
    // 0x63a224: StoreField: r0->field_1f = r16
    //     0x63a224: stur            w16, [x0, #0x1f]
    // 0x63a228: r16 = 1206
    //     0x63a228: mov             x16, #0x4b6
    // 0x63a22c: StoreField: r0->field_23 = r16
    //     0x63a22c: stur            w16, [x0, #0x23]
    // 0x63a230: r16 = <String, dynamic>
    //     0x63a230: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x63a234: stp             x0, x16, [SP]
    // 0x63a238: r0 = Map._fromLiteral()
    //     0x63a238: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x63a23c: ldur            x1, [fp, #-0x10]
    // 0x63a240: r2 = 220
    //     0x63a240: mov             x2, #0xdc
    // 0x63a244: ArrayStore: r1[r2] = r0  ; List_4
    //     0x63a244: add             x25, x1, w2, sxtw #1
    //     0x63a248: add             x25, x25, #0xf
    //     0x63a24c: str             w0, [x25]
    //     0x63a250: tbz             w0, #0, #0x63a26c
    //     0x63a254: ldurb           w16, [x1, #-1]
    //     0x63a258: ldurb           w17, [x0, #-1]
    //     0x63a25c: and             x16, x17, x16, lsr #2
    //     0x63a260: tst             x16, HEAP, lsr #32
    //     0x63a264: b.eq            #0x63a26c
    //     0x63a268: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x63a26c: r1 = Null
    //     0x63a26c: mov             x1, NULL
    // 0x63a270: r2 = 12
    //     0x63a270: mov             x2, #0xc
    // 0x63a274: r0 = AllocateArray()
    //     0x63a274: bl              #0x9280a0  ; AllocateArrayStub
    // 0x63a278: r16 = "name"
    //     0x63a278: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x63a27c: StoreField: r0->field_f = r16
    //     0x63a27c: stur            w16, [x0, #0xf]
    // 0x63a280: r16 = "İhlas"
    //     0x63a280: add             x16, PP, #0x18, lsl #12  ; [pp+0x183a8] "İhlas"
    //     0x63a284: ldr             x16, [x16, #0x3a8]
    // 0x63a288: StoreField: r0->field_13 = r16
    //     0x63a288: stur            w16, [x0, #0x13]
    // 0x63a28c: r16 = "ayahCount"
    //     0x63a28c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x63a290: ldr             x16, [x16, #0x30]
    // 0x63a294: ArrayStore: r0[0] = r16  ; List_4
    //     0x63a294: stur            w16, [x0, #0x17]
    // 0x63a298: r16 = 8
    //     0x63a298: mov             x16, #8
    // 0x63a29c: StoreField: r0->field_1b = r16
    //     0x63a29c: stur            w16, [x0, #0x1b]
    // 0x63a2a0: r16 = "page"
    //     0x63a2a0: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63a2a4: ldr             x16, [x16, #0xa68]
    // 0x63a2a8: StoreField: r0->field_1f = r16
    //     0x63a2a8: stur            w16, [x0, #0x1f]
    // 0x63a2ac: r16 = 1208
    //     0x63a2ac: mov             x16, #0x4b8
    // 0x63a2b0: StoreField: r0->field_23 = r16
    //     0x63a2b0: stur            w16, [x0, #0x23]
    // 0x63a2b4: r16 = <String, dynamic>
    //     0x63a2b4: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x63a2b8: stp             x0, x16, [SP]
    // 0x63a2bc: r0 = Map._fromLiteral()
    //     0x63a2bc: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x63a2c0: ldur            x1, [fp, #-0x10]
    // 0x63a2c4: r2 = 222
    //     0x63a2c4: mov             x2, #0xde
    // 0x63a2c8: ArrayStore: r1[r2] = r0  ; List_4
    //     0x63a2c8: add             x25, x1, w2, sxtw #1
    //     0x63a2cc: add             x25, x25, #0xf
    //     0x63a2d0: str             w0, [x25]
    //     0x63a2d4: tbz             w0, #0, #0x63a2f0
    //     0x63a2d8: ldurb           w16, [x1, #-1]
    //     0x63a2dc: ldurb           w17, [x0, #-1]
    //     0x63a2e0: and             x16, x17, x16, lsr #2
    //     0x63a2e4: tst             x16, HEAP, lsr #32
    //     0x63a2e8: b.eq            #0x63a2f0
    //     0x63a2ec: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x63a2f0: r1 = Null
    //     0x63a2f0: mov             x1, NULL
    // 0x63a2f4: r2 = 12
    //     0x63a2f4: mov             x2, #0xc
    // 0x63a2f8: r0 = AllocateArray()
    //     0x63a2f8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x63a2fc: r16 = "name"
    //     0x63a2fc: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x63a300: StoreField: r0->field_f = r16
    //     0x63a300: stur            w16, [x0, #0xf]
    // 0x63a304: r16 = "Felak"
    //     0x63a304: add             x16, PP, #0x18, lsl #12  ; [pp+0x183b0] "Felak"
    //     0x63a308: ldr             x16, [x16, #0x3b0]
    // 0x63a30c: StoreField: r0->field_13 = r16
    //     0x63a30c: stur            w16, [x0, #0x13]
    // 0x63a310: r16 = "ayahCount"
    //     0x63a310: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x63a314: ldr             x16, [x16, #0x30]
    // 0x63a318: ArrayStore: r0[0] = r16  ; List_4
    //     0x63a318: stur            w16, [x0, #0x17]
    // 0x63a31c: r16 = 10
    //     0x63a31c: mov             x16, #0xa
    // 0x63a320: StoreField: r0->field_1b = r16
    //     0x63a320: stur            w16, [x0, #0x1b]
    // 0x63a324: r16 = "page"
    //     0x63a324: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63a328: ldr             x16, [x16, #0xa68]
    // 0x63a32c: StoreField: r0->field_1f = r16
    //     0x63a32c: stur            w16, [x0, #0x1f]
    // 0x63a330: r16 = 1208
    //     0x63a330: mov             x16, #0x4b8
    // 0x63a334: StoreField: r0->field_23 = r16
    //     0x63a334: stur            w16, [x0, #0x23]
    // 0x63a338: r16 = <String, dynamic>
    //     0x63a338: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x63a33c: stp             x0, x16, [SP]
    // 0x63a340: r0 = Map._fromLiteral()
    //     0x63a340: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x63a344: ldur            x1, [fp, #-0x10]
    // 0x63a348: r2 = 224
    //     0x63a348: mov             x2, #0xe0
    // 0x63a34c: ArrayStore: r1[r2] = r0  ; List_4
    //     0x63a34c: add             x25, x1, w2, sxtw #1
    //     0x63a350: add             x25, x25, #0xf
    //     0x63a354: str             w0, [x25]
    //     0x63a358: tbz             w0, #0, #0x63a374
    //     0x63a35c: ldurb           w16, [x1, #-1]
    //     0x63a360: ldurb           w17, [x0, #-1]
    //     0x63a364: and             x16, x17, x16, lsr #2
    //     0x63a368: tst             x16, HEAP, lsr #32
    //     0x63a36c: b.eq            #0x63a374
    //     0x63a370: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x63a374: r1 = Null
    //     0x63a374: mov             x1, NULL
    // 0x63a378: r2 = 12
    //     0x63a378: mov             x2, #0xc
    // 0x63a37c: r0 = AllocateArray()
    //     0x63a37c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x63a380: r16 = "name"
    //     0x63a380: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x63a384: StoreField: r0->field_f = r16
    //     0x63a384: stur            w16, [x0, #0xf]
    // 0x63a388: r16 = "Nas"
    //     0x63a388: add             x16, PP, #0x18, lsl #12  ; [pp+0x183b8] "Nas"
    //     0x63a38c: ldr             x16, [x16, #0x3b8]
    // 0x63a390: StoreField: r0->field_13 = r16
    //     0x63a390: stur            w16, [x0, #0x13]
    // 0x63a394: r16 = "ayahCount"
    //     0x63a394: add             x16, PP, #0x18, lsl #12  ; [pp+0x18030] "ayahCount"
    //     0x63a398: ldr             x16, [x16, #0x30]
    // 0x63a39c: ArrayStore: r0[0] = r16  ; List_4
    //     0x63a39c: stur            w16, [x0, #0x17]
    // 0x63a3a0: r16 = 12
    //     0x63a3a0: mov             x16, #0xc
    // 0x63a3a4: StoreField: r0->field_1b = r16
    //     0x63a3a4: stur            w16, [x0, #0x1b]
    // 0x63a3a8: r16 = "page"
    //     0x63a3a8: add             x16, PP, #0x17, lsl #12  ; [pp+0x17a68] "page"
    //     0x63a3ac: ldr             x16, [x16, #0xa68]
    // 0x63a3b0: StoreField: r0->field_1f = r16
    //     0x63a3b0: stur            w16, [x0, #0x1f]
    // 0x63a3b4: r16 = 1208
    //     0x63a3b4: mov             x16, #0x4b8
    // 0x63a3b8: StoreField: r0->field_23 = r16
    //     0x63a3b8: stur            w16, [x0, #0x23]
    // 0x63a3bc: r16 = <String, dynamic>
    //     0x63a3bc: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x63a3c0: stp             x0, x16, [SP]
    // 0x63a3c4: r0 = Map._fromLiteral()
    //     0x63a3c4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x63a3c8: ldur            x1, [fp, #-0x10]
    // 0x63a3cc: r2 = 226
    //     0x63a3cc: mov             x2, #0xe2
    // 0x63a3d0: ArrayStore: r1[r2] = r0  ; List_4
    //     0x63a3d0: add             x25, x1, w2, sxtw #1
    //     0x63a3d4: add             x25, x25, #0xf
    //     0x63a3d8: str             w0, [x25]
    //     0x63a3dc: tbz             w0, #0, #0x63a3f8
    //     0x63a3e0: ldurb           w16, [x1, #-1]
    //     0x63a3e4: ldurb           w17, [x0, #-1]
    //     0x63a3e8: and             x16, x17, x16, lsr #2
    //     0x63a3ec: tst             x16, HEAP, lsr #32
    //     0x63a3f0: b.eq            #0x63a3f8
    //     0x63a3f4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x63a3f8: r1 = <Map<String, dynamic>>
    //     0x63a3f8: ldr             x1, [PP, #0x3918]  ; [pp+0x3918] TypeArguments: <Map<String, dynamic>>
    // 0x63a3fc: r0 = AllocateGrowableArray()
    //     0x63a3fc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x63a400: ldur            x1, [fp, #-0x10]
    // 0x63a404: StoreField: r0->field_f = r1
    //     0x63a404: stur            w1, [x0, #0xf]
    // 0x63a408: r1 = 228
    //     0x63a408: mov             x1, #0xe4
    // 0x63a40c: StoreField: r0->field_b = r1
    //     0x63a40c: stur            w1, [x0, #0xb]
    // 0x63a410: LeaveFrame
    //     0x63a410: mov             SP, fp
    //     0x63a414: ldp             fp, lr, [SP], #0x10
    // 0x63a418: ret
    //     0x63a418: ret             
    // 0x63a41c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x63a41c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x63a420: b               #0x636b24
  }
  static List<Map<String, dynamic>> translations() {
    // ** addr: 0x71dca0, size: 0x1954
    // 0x71dca0: EnterFrame
    //     0x71dca0: stp             fp, lr, [SP, #-0x10]!
    //     0x71dca4: mov             fp, SP
    // 0x71dca8: AllocStack(0x20)
    //     0x71dca8: sub             SP, SP, #0x20
    // 0x71dcac: CheckStackOverflow
    //     0x71dcac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71dcb0: cmp             SP, x16
    //     0x71dcb4: b.ls            #0x71f5ec
    // 0x71dcb8: r1 = Null
    //     0x71dcb8: mov             x1, NULL
    // 0x71dcbc: r2 = 8
    //     0x71dcbc: mov             x2, #8
    // 0x71dcc0: r0 = AllocateArray()
    //     0x71dcc0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71dcc4: r16 = "value"
    //     0x71dcc4: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71dcc8: StoreField: r0->field_f = r16
    //     0x71dcc8: stur            w16, [x0, #0xf]
    // 0x71dccc: r16 = 40
    //     0x71dccc: mov             x16, #0x28
    // 0x71dcd0: StoreField: r0->field_13 = r16
    //     0x71dcd0: stur            w16, [x0, #0x13]
    // 0x71dcd4: r16 = "name"
    //     0x71dcd4: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71dcd8: ArrayStore: r0[0] = r16  ; List_4
    //     0x71dcd8: stur            w16, [x0, #0x17]
    // 0x71dcdc: r16 = "English"
    //     0x71dcdc: add             x16, PP, #0x18, lsl #12  ; [pp+0x183c0] "English"
    //     0x71dce0: ldr             x16, [x16, #0x3c0]
    // 0x71dce4: StoreField: r0->field_1b = r16
    //     0x71dce4: stur            w16, [x0, #0x1b]
    // 0x71dce8: r16 = <String, dynamic>
    //     0x71dce8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71dcec: stp             x0, x16, [SP]
    // 0x71dcf0: r0 = Map._fromLiteral()
    //     0x71dcf0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71dcf4: r1 = <Map<String, dynamic>>
    //     0x71dcf4: ldr             x1, [PP, #0x3918]  ; [pp+0x3918] TypeArguments: <Map<String, dynamic>>
    // 0x71dcf8: r2 = 128
    //     0x71dcf8: mov             x2, #0x80
    // 0x71dcfc: stur            x0, [fp, #-8]
    // 0x71dd00: r0 = AllocateArray()
    //     0x71dd00: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71dd04: mov             x3, x0
    // 0x71dd08: ldur            x0, [fp, #-8]
    // 0x71dd0c: stur            x3, [fp, #-0x10]
    // 0x71dd10: StoreField: r3->field_f = r0
    //     0x71dd10: stur            w0, [x3, #0xf]
    // 0x71dd14: r1 = Null
    //     0x71dd14: mov             x1, NULL
    // 0x71dd18: r2 = 8
    //     0x71dd18: mov             x2, #8
    // 0x71dd1c: r0 = AllocateArray()
    //     0x71dd1c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71dd20: r16 = "value"
    //     0x71dd20: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71dd24: StoreField: r0->field_f = r16
    //     0x71dd24: stur            w16, [x0, #0xf]
    // 0x71dd28: r16 = 154
    //     0x71dd28: mov             x16, #0x9a
    // 0x71dd2c: StoreField: r0->field_13 = r16
    //     0x71dd2c: stur            w16, [x0, #0x13]
    // 0x71dd30: r16 = "name"
    //     0x71dd30: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71dd34: ArrayStore: r0[0] = r16  ; List_4
    //     0x71dd34: stur            w16, [x0, #0x17]
    // 0x71dd38: r16 = "Turkish"
    //     0x71dd38: add             x16, PP, #0x18, lsl #12  ; [pp+0x183c8] "Turkish"
    //     0x71dd3c: ldr             x16, [x16, #0x3c8]
    // 0x71dd40: StoreField: r0->field_1b = r16
    //     0x71dd40: stur            w16, [x0, #0x1b]
    // 0x71dd44: r16 = <String, dynamic>
    //     0x71dd44: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71dd48: stp             x0, x16, [SP]
    // 0x71dd4c: r0 = Map._fromLiteral()
    //     0x71dd4c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71dd50: ldur            x1, [fp, #-0x10]
    // 0x71dd54: ArrayStore: r1[1] = r0  ; List_4
    //     0x71dd54: add             x25, x1, #0x13
    //     0x71dd58: str             w0, [x25]
    //     0x71dd5c: tbz             w0, #0, #0x71dd78
    //     0x71dd60: ldurb           w16, [x1, #-1]
    //     0x71dd64: ldurb           w17, [x0, #-1]
    //     0x71dd68: and             x16, x17, x16, lsr #2
    //     0x71dd6c: tst             x16, HEAP, lsr #32
    //     0x71dd70: b.eq            #0x71dd78
    //     0x71dd74: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71dd78: r1 = Null
    //     0x71dd78: mov             x1, NULL
    // 0x71dd7c: r2 = 8
    //     0x71dd7c: mov             x2, #8
    // 0x71dd80: r0 = AllocateArray()
    //     0x71dd80: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71dd84: r16 = "value"
    //     0x71dd84: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71dd88: StoreField: r0->field_f = r16
    //     0x71dd88: stur            w16, [x0, #0xf]
    // 0x71dd8c: r16 = 90
    //     0x71dd8c: mov             x16, #0x5a
    // 0x71dd90: StoreField: r0->field_13 = r16
    //     0x71dd90: stur            w16, [x0, #0x13]
    // 0x71dd94: r16 = "name"
    //     0x71dd94: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71dd98: ArrayStore: r0[0] = r16  ; List_4
    //     0x71dd98: stur            w16, [x0, #0x17]
    // 0x71dd9c: r16 = "Russian"
    //     0x71dd9c: add             x16, PP, #0x18, lsl #12  ; [pp+0x183d0] "Russian"
    //     0x71dda0: ldr             x16, [x16, #0x3d0]
    // 0x71dda4: StoreField: r0->field_1b = r16
    //     0x71dda4: stur            w16, [x0, #0x1b]
    // 0x71dda8: r16 = <String, dynamic>
    //     0x71dda8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71ddac: stp             x0, x16, [SP]
    // 0x71ddb0: r0 = Map._fromLiteral()
    //     0x71ddb0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71ddb4: ldur            x1, [fp, #-0x10]
    // 0x71ddb8: ArrayStore: r1[2] = r0  ; List_4
    //     0x71ddb8: add             x25, x1, #0x17
    //     0x71ddbc: str             w0, [x25]
    //     0x71ddc0: tbz             w0, #0, #0x71dddc
    //     0x71ddc4: ldurb           w16, [x1, #-1]
    //     0x71ddc8: ldurb           w17, [x0, #-1]
    //     0x71ddcc: and             x16, x17, x16, lsr #2
    //     0x71ddd0: tst             x16, HEAP, lsr #32
    //     0x71ddd4: b.eq            #0x71dddc
    //     0x71ddd8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71dddc: r1 = Null
    //     0x71dddc: mov             x1, NULL
    // 0x71dde0: r2 = 8
    //     0x71dde0: mov             x2, #8
    // 0x71dde4: r0 = AllocateArray()
    //     0x71dde4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71dde8: r16 = "value"
    //     0x71dde8: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71ddec: StoreField: r0->field_f = r16
    //     0x71ddec: stur            w16, [x0, #0xf]
    // 0x71ddf0: r16 = 108
    //     0x71ddf0: mov             x16, #0x6c
    // 0x71ddf4: StoreField: r0->field_13 = r16
    //     0x71ddf4: stur            w16, [x0, #0x13]
    // 0x71ddf8: r16 = "name"
    //     0x71ddf8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71ddfc: ArrayStore: r0[0] = r16  ; List_4
    //     0x71ddfc: stur            w16, [x0, #0x17]
    // 0x71de00: r16 = "Urdu"
    //     0x71de00: add             x16, PP, #0x18, lsl #12  ; [pp+0x183d8] "Urdu"
    //     0x71de04: ldr             x16, [x16, #0x3d8]
    // 0x71de08: StoreField: r0->field_1b = r16
    //     0x71de08: stur            w16, [x0, #0x1b]
    // 0x71de0c: r16 = <String, dynamic>
    //     0x71de0c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71de10: stp             x0, x16, [SP]
    // 0x71de14: r0 = Map._fromLiteral()
    //     0x71de14: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71de18: ldur            x1, [fp, #-0x10]
    // 0x71de1c: ArrayStore: r1[3] = r0  ; List_4
    //     0x71de1c: add             x25, x1, #0x1b
    //     0x71de20: str             w0, [x25]
    //     0x71de24: tbz             w0, #0, #0x71de40
    //     0x71de28: ldurb           w16, [x1, #-1]
    //     0x71de2c: ldurb           w17, [x0, #-1]
    //     0x71de30: and             x16, x17, x16, lsr #2
    //     0x71de34: tst             x16, HEAP, lsr #32
    //     0x71de38: b.eq            #0x71de40
    //     0x71de3c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71de40: r1 = Null
    //     0x71de40: mov             x1, NULL
    // 0x71de44: r2 = 8
    //     0x71de44: mov             x2, #8
    // 0x71de48: r0 = AllocateArray()
    //     0x71de48: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71de4c: r16 = "value"
    //     0x71de4c: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71de50: StoreField: r0->field_f = r16
    //     0x71de50: stur            w16, [x0, #0xf]
    // 0x71de54: r16 = 66
    //     0x71de54: mov             x16, #0x42
    // 0x71de58: StoreField: r0->field_13 = r16
    //     0x71de58: stur            w16, [x0, #0x13]
    // 0x71de5c: r16 = "name"
    //     0x71de5c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71de60: ArrayStore: r0[0] = r16  ; List_4
    //     0x71de60: stur            w16, [x0, #0x17]
    // 0x71de64: r16 = "Indonesian"
    //     0x71de64: add             x16, PP, #0x18, lsl #12  ; [pp+0x183e0] "Indonesian"
    //     0x71de68: ldr             x16, [x16, #0x3e0]
    // 0x71de6c: StoreField: r0->field_1b = r16
    //     0x71de6c: stur            w16, [x0, #0x1b]
    // 0x71de70: r16 = <String, dynamic>
    //     0x71de70: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71de74: stp             x0, x16, [SP]
    // 0x71de78: r0 = Map._fromLiteral()
    //     0x71de78: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71de7c: ldur            x1, [fp, #-0x10]
    // 0x71de80: ArrayStore: r1[4] = r0  ; List_4
    //     0x71de80: add             x25, x1, #0x1f
    //     0x71de84: str             w0, [x25]
    //     0x71de88: tbz             w0, #0, #0x71dea4
    //     0x71de8c: ldurb           w16, [x1, #-1]
    //     0x71de90: ldurb           w17, [x0, #-1]
    //     0x71de94: and             x16, x17, x16, lsr #2
    //     0x71de98: tst             x16, HEAP, lsr #32
    //     0x71de9c: b.eq            #0x71dea4
    //     0x71dea0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71dea4: r1 = Null
    //     0x71dea4: mov             x1, NULL
    // 0x71dea8: r2 = 8
    //     0x71dea8: mov             x2, #8
    // 0x71deac: r0 = AllocateArray()
    //     0x71deac: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71deb0: r16 = "value"
    //     0x71deb0: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71deb4: StoreField: r0->field_f = r16
    //     0x71deb4: stur            w16, [x0, #0xf]
    // 0x71deb8: r16 = 62
    //     0x71deb8: mov             x16, #0x3e
    // 0x71debc: StoreField: r0->field_13 = r16
    //     0x71debc: stur            w16, [x0, #0x13]
    // 0x71dec0: r16 = "name"
    //     0x71dec0: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71dec4: ArrayStore: r0[0] = r16  ; List_4
    //     0x71dec4: stur            w16, [x0, #0x17]
    // 0x71dec8: r16 = "French"
    //     0x71dec8: add             x16, PP, #0x18, lsl #12  ; [pp+0x183e8] "French"
    //     0x71decc: ldr             x16, [x16, #0x3e8]
    // 0x71ded0: StoreField: r0->field_1b = r16
    //     0x71ded0: stur            w16, [x0, #0x1b]
    // 0x71ded4: r16 = <String, dynamic>
    //     0x71ded4: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71ded8: stp             x0, x16, [SP]
    // 0x71dedc: r0 = Map._fromLiteral()
    //     0x71dedc: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71dee0: ldur            x1, [fp, #-0x10]
    // 0x71dee4: ArrayStore: r1[5] = r0  ; List_4
    //     0x71dee4: add             x25, x1, #0x23
    //     0x71dee8: str             w0, [x25]
    //     0x71deec: tbz             w0, #0, #0x71df08
    //     0x71def0: ldurb           w16, [x1, #-1]
    //     0x71def4: ldurb           w17, [x0, #-1]
    //     0x71def8: and             x16, x17, x16, lsr #2
    //     0x71defc: tst             x16, HEAP, lsr #32
    //     0x71df00: b.eq            #0x71df08
    //     0x71df04: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71df08: r1 = Null
    //     0x71df08: mov             x1, NULL
    // 0x71df0c: r2 = 8
    //     0x71df0c: mov             x2, #8
    // 0x71df10: r0 = AllocateArray()
    //     0x71df10: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71df14: r16 = "value"
    //     0x71df14: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71df18: StoreField: r0->field_f = r16
    //     0x71df18: stur            w16, [x0, #0xf]
    // 0x71df1c: r16 = 54
    //     0x71df1c: mov             x16, #0x36
    // 0x71df20: StoreField: r0->field_13 = r16
    //     0x71df20: stur            w16, [x0, #0x13]
    // 0x71df24: r16 = "name"
    //     0x71df24: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71df28: ArrayStore: r0[0] = r16  ; List_4
    //     0x71df28: stur            w16, [x0, #0x17]
    // 0x71df2c: r16 = "German"
    //     0x71df2c: add             x16, PP, #0x18, lsl #12  ; [pp+0x183f0] "German"
    //     0x71df30: ldr             x16, [x16, #0x3f0]
    // 0x71df34: StoreField: r0->field_1b = r16
    //     0x71df34: stur            w16, [x0, #0x1b]
    // 0x71df38: r16 = <String, dynamic>
    //     0x71df38: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71df3c: stp             x0, x16, [SP]
    // 0x71df40: r0 = Map._fromLiteral()
    //     0x71df40: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71df44: ldur            x1, [fp, #-0x10]
    // 0x71df48: ArrayStore: r1[6] = r0  ; List_4
    //     0x71df48: add             x25, x1, #0x27
    //     0x71df4c: str             w0, [x25]
    //     0x71df50: tbz             w0, #0, #0x71df6c
    //     0x71df54: ldurb           w16, [x1, #-1]
    //     0x71df58: ldurb           w17, [x0, #-1]
    //     0x71df5c: and             x16, x17, x16, lsr #2
    //     0x71df60: tst             x16, HEAP, lsr #32
    //     0x71df64: b.eq            #0x71df6c
    //     0x71df68: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71df6c: r1 = Null
    //     0x71df6c: mov             x1, NULL
    // 0x71df70: r2 = 8
    //     0x71df70: mov             x2, #8
    // 0x71df74: r0 = AllocateArray()
    //     0x71df74: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71df78: r16 = "value"
    //     0x71df78: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71df7c: StoreField: r0->field_f = r16
    //     0x71df7c: stur            w16, [x0, #0xf]
    // 0x71df80: r16 = 398
    //     0x71df80: mov             x16, #0x18e
    // 0x71df84: StoreField: r0->field_13 = r16
    //     0x71df84: stur            w16, [x0, #0x13]
    // 0x71df88: r16 = "name"
    //     0x71df88: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71df8c: ArrayStore: r0[0] = r16  ; List_4
    //     0x71df8c: stur            w16, [x0, #0x17]
    // 0x71df90: r16 = "Spanish"
    //     0x71df90: add             x16, PP, #0x18, lsl #12  ; [pp+0x183f8] "Spanish"
    //     0x71df94: ldr             x16, [x16, #0x3f8]
    // 0x71df98: StoreField: r0->field_1b = r16
    //     0x71df98: stur            w16, [x0, #0x1b]
    // 0x71df9c: r16 = <String, dynamic>
    //     0x71df9c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71dfa0: stp             x0, x16, [SP]
    // 0x71dfa4: r0 = Map._fromLiteral()
    //     0x71dfa4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71dfa8: ldur            x1, [fp, #-0x10]
    // 0x71dfac: ArrayStore: r1[7] = r0  ; List_4
    //     0x71dfac: add             x25, x1, #0x2b
    //     0x71dfb0: str             w0, [x25]
    //     0x71dfb4: tbz             w0, #0, #0x71dfd0
    //     0x71dfb8: ldurb           w16, [x1, #-1]
    //     0x71dfbc: ldurb           w17, [x0, #-1]
    //     0x71dfc0: and             x16, x17, x16, lsr #2
    //     0x71dfc4: tst             x16, HEAP, lsr #32
    //     0x71dfc8: b.eq            #0x71dfd0
    //     0x71dfcc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71dfd0: r1 = Null
    //     0x71dfd0: mov             x1, NULL
    // 0x71dfd4: r2 = 8
    //     0x71dfd4: mov             x2, #8
    // 0x71dfd8: r0 = AllocateArray()
    //     0x71dfd8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71dfdc: r16 = "value"
    //     0x71dfdc: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71dfe0: StoreField: r0->field_f = r16
    //     0x71dfe0: stur            w16, [x0, #0xf]
    // 0x71dfe4: r16 = 270
    //     0x71dfe4: mov             x16, #0x10e
    // 0x71dfe8: StoreField: r0->field_13 = r16
    //     0x71dfe8: stur            w16, [x0, #0x13]
    // 0x71dfec: r16 = "name"
    //     0x71dfec: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71dff0: ArrayStore: r0[0] = r16  ; List_4
    //     0x71dff0: stur            w16, [x0, #0x17]
    // 0x71dff4: r16 = "Persian"
    //     0x71dff4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18400] "Persian"
    //     0x71dff8: ldr             x16, [x16, #0x400]
    // 0x71dffc: StoreField: r0->field_1b = r16
    //     0x71dffc: stur            w16, [x0, #0x1b]
    // 0x71e000: r16 = <String, dynamic>
    //     0x71e000: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e004: stp             x0, x16, [SP]
    // 0x71e008: r0 = Map._fromLiteral()
    //     0x71e008: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e00c: ldur            x1, [fp, #-0x10]
    // 0x71e010: ArrayStore: r1[8] = r0  ; List_4
    //     0x71e010: add             x25, x1, #0x2f
    //     0x71e014: str             w0, [x25]
    //     0x71e018: tbz             w0, #0, #0x71e034
    //     0x71e01c: ldurb           w16, [x1, #-1]
    //     0x71e020: ldurb           w17, [x0, #-1]
    //     0x71e024: and             x16, x17, x16, lsr #2
    //     0x71e028: tst             x16, HEAP, lsr #32
    //     0x71e02c: b.eq            #0x71e034
    //     0x71e030: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e034: r1 = Null
    //     0x71e034: mov             x1, NULL
    // 0x71e038: r2 = 8
    //     0x71e038: mov             x2, #8
    // 0x71e03c: r0 = AllocateArray()
    //     0x71e03c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e040: r16 = "value"
    //     0x71e040: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e044: StoreField: r0->field_f = r16
    //     0x71e044: stur            w16, [x0, #0xf]
    // 0x71e048: r16 = 322
    //     0x71e048: mov             x16, #0x142
    // 0x71e04c: StoreField: r0->field_13 = r16
    //     0x71e04c: stur            w16, [x0, #0x13]
    // 0x71e050: r16 = "name"
    //     0x71e050: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e054: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e054: stur            w16, [x0, #0x17]
    // 0x71e058: r16 = "Bengali"
    //     0x71e058: add             x16, PP, #0x18, lsl #12  ; [pp+0x18408] "Bengali"
    //     0x71e05c: ldr             x16, [x16, #0x408]
    // 0x71e060: StoreField: r0->field_1b = r16
    //     0x71e060: stur            w16, [x0, #0x1b]
    // 0x71e064: r16 = <String, dynamic>
    //     0x71e064: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e068: stp             x0, x16, [SP]
    // 0x71e06c: r0 = Map._fromLiteral()
    //     0x71e06c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e070: ldur            x1, [fp, #-0x10]
    // 0x71e074: ArrayStore: r1[9] = r0  ; List_4
    //     0x71e074: add             x25, x1, #0x33
    //     0x71e078: str             w0, [x25]
    //     0x71e07c: tbz             w0, #0, #0x71e098
    //     0x71e080: ldurb           w16, [x1, #-1]
    //     0x71e084: ldurb           w17, [x0, #-1]
    //     0x71e088: and             x16, x17, x16, lsr #2
    //     0x71e08c: tst             x16, HEAP, lsr #32
    //     0x71e090: b.eq            #0x71e098
    //     0x71e094: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e098: r1 = Null
    //     0x71e098: mov             x1, NULL
    // 0x71e09c: r2 = 8
    //     0x71e09c: mov             x2, #8
    // 0x71e0a0: r0 = AllocateArray()
    //     0x71e0a0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e0a4: r16 = "value"
    //     0x71e0a4: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e0a8: StoreField: r0->field_f = r16
    //     0x71e0a8: stur            w16, [x0, #0xf]
    // 0x71e0ac: r16 = 78
    //     0x71e0ac: mov             x16, #0x4e
    // 0x71e0b0: StoreField: r0->field_13 = r16
    //     0x71e0b0: stur            w16, [x0, #0x13]
    // 0x71e0b4: r16 = "name"
    //     0x71e0b4: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e0b8: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e0b8: stur            w16, [x0, #0x17]
    // 0x71e0bc: r16 = "Malay"
    //     0x71e0bc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18410] "Malay"
    //     0x71e0c0: ldr             x16, [x16, #0x410]
    // 0x71e0c4: StoreField: r0->field_1b = r16
    //     0x71e0c4: stur            w16, [x0, #0x1b]
    // 0x71e0c8: r16 = <String, dynamic>
    //     0x71e0c8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e0cc: stp             x0, x16, [SP]
    // 0x71e0d0: r0 = Map._fromLiteral()
    //     0x71e0d0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e0d4: ldur            x1, [fp, #-0x10]
    // 0x71e0d8: ArrayStore: r1[10] = r0  ; List_4
    //     0x71e0d8: add             x25, x1, #0x37
    //     0x71e0dc: str             w0, [x25]
    //     0x71e0e0: tbz             w0, #0, #0x71e0fc
    //     0x71e0e4: ldurb           w16, [x1, #-1]
    //     0x71e0e8: ldurb           w17, [x0, #-1]
    //     0x71e0ec: and             x16, x17, x16, lsr #2
    //     0x71e0f0: tst             x16, HEAP, lsr #32
    //     0x71e0f4: b.eq            #0x71e0fc
    //     0x71e0f8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e0fc: r1 = Null
    //     0x71e0fc: mov             x1, NULL
    // 0x71e100: r2 = 8
    //     0x71e100: mov             x2, #8
    // 0x71e104: r0 = AllocateArray()
    //     0x71e104: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e108: r16 = "value"
    //     0x71e108: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e10c: StoreField: r0->field_f = r16
    //     0x71e10c: stur            w16, [x0, #0xf]
    // 0x71e110: r16 = 112
    //     0x71e110: mov             x16, #0x70
    // 0x71e114: StoreField: r0->field_13 = r16
    //     0x71e114: stur            w16, [x0, #0x13]
    // 0x71e118: r16 = "name"
    //     0x71e118: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e11c: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e11c: stur            w16, [x0, #0x17]
    // 0x71e120: r16 = "Chinese"
    //     0x71e120: add             x16, PP, #0x18, lsl #12  ; [pp+0x18418] "Chinese"
    //     0x71e124: ldr             x16, [x16, #0x418]
    // 0x71e128: StoreField: r0->field_1b = r16
    //     0x71e128: stur            w16, [x0, #0x1b]
    // 0x71e12c: r16 = <String, dynamic>
    //     0x71e12c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e130: stp             x0, x16, [SP]
    // 0x71e134: r0 = Map._fromLiteral()
    //     0x71e134: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e138: ldur            x1, [fp, #-0x10]
    // 0x71e13c: ArrayStore: r1[11] = r0  ; List_4
    //     0x71e13c: add             x25, x1, #0x3b
    //     0x71e140: str             w0, [x25]
    //     0x71e144: tbz             w0, #0, #0x71e160
    //     0x71e148: ldurb           w16, [x1, #-1]
    //     0x71e14c: ldurb           w17, [x0, #-1]
    //     0x71e150: and             x16, x17, x16, lsr #2
    //     0x71e154: tst             x16, HEAP, lsr #32
    //     0x71e158: b.eq            #0x71e160
    //     0x71e15c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e160: r1 = Null
    //     0x71e160: mov             x1, NULL
    // 0x71e164: r2 = 8
    //     0x71e164: mov             x2, #8
    // 0x71e168: r0 = AllocateArray()
    //     0x71e168: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e16c: r16 = "value"
    //     0x71e16c: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e170: StoreField: r0->field_f = r16
    //     0x71e170: stur            w16, [x0, #0xf]
    // 0x71e174: r16 = 306
    //     0x71e174: mov             x16, #0x132
    // 0x71e178: StoreField: r0->field_13 = r16
    //     0x71e178: stur            w16, [x0, #0x13]
    // 0x71e17c: r16 = "name"
    //     0x71e17c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e180: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e180: stur            w16, [x0, #0x17]
    // 0x71e184: r16 = "Italian"
    //     0x71e184: add             x16, PP, #0x18, lsl #12  ; [pp+0x18420] "Italian"
    //     0x71e188: ldr             x16, [x16, #0x420]
    // 0x71e18c: StoreField: r0->field_1b = r16
    //     0x71e18c: stur            w16, [x0, #0x1b]
    // 0x71e190: r16 = <String, dynamic>
    //     0x71e190: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e194: stp             x0, x16, [SP]
    // 0x71e198: r0 = Map._fromLiteral()
    //     0x71e198: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e19c: ldur            x1, [fp, #-0x10]
    // 0x71e1a0: ArrayStore: r1[12] = r0  ; List_4
    //     0x71e1a0: add             x25, x1, #0x3f
    //     0x71e1a4: str             w0, [x25]
    //     0x71e1a8: tbz             w0, #0, #0x71e1c4
    //     0x71e1ac: ldurb           w16, [x1, #-1]
    //     0x71e1b0: ldurb           w17, [x0, #-1]
    //     0x71e1b4: and             x16, x17, x16, lsr #2
    //     0x71e1b8: tst             x16, HEAP, lsr #32
    //     0x71e1bc: b.eq            #0x71e1c4
    //     0x71e1c0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e1c4: r1 = Null
    //     0x71e1c4: mov             x1, NULL
    // 0x71e1c8: r2 = 8
    //     0x71e1c8: mov             x2, #8
    // 0x71e1cc: r0 = AllocateArray()
    //     0x71e1cc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e1d0: r16 = "value"
    //     0x71e1d0: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e1d4: StoreField: r0->field_f = r16
    //     0x71e1d4: stur            w16, [x0, #0xf]
    // 0x71e1d8: r16 = 206
    //     0x71e1d8: mov             x16, #0xce
    // 0x71e1dc: StoreField: r0->field_13 = r16
    //     0x71e1dc: stur            w16, [x0, #0x13]
    // 0x71e1e0: r16 = "name"
    //     0x71e1e0: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e1e4: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e1e4: stur            w16, [x0, #0x17]
    // 0x71e1e8: r16 = "Portuguese"
    //     0x71e1e8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18428] "Portuguese"
    //     0x71e1ec: ldr             x16, [x16, #0x428]
    // 0x71e1f0: StoreField: r0->field_1b = r16
    //     0x71e1f0: stur            w16, [x0, #0x1b]
    // 0x71e1f4: r16 = <String, dynamic>
    //     0x71e1f4: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e1f8: stp             x0, x16, [SP]
    // 0x71e1fc: r0 = Map._fromLiteral()
    //     0x71e1fc: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e200: ldur            x1, [fp, #-0x10]
    // 0x71e204: ArrayStore: r1[13] = r0  ; List_4
    //     0x71e204: add             x25, x1, #0x43
    //     0x71e208: str             w0, [x25]
    //     0x71e20c: tbz             w0, #0, #0x71e228
    //     0x71e210: ldurb           w16, [x1, #-1]
    //     0x71e214: ldurb           w17, [x0, #-1]
    //     0x71e218: and             x16, x17, x16, lsr #2
    //     0x71e21c: tst             x16, HEAP, lsr #32
    //     0x71e220: b.eq            #0x71e228
    //     0x71e224: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e228: r1 = Null
    //     0x71e228: mov             x1, NULL
    // 0x71e22c: r2 = 8
    //     0x71e22c: mov             x2, #8
    // 0x71e230: r0 = AllocateArray()
    //     0x71e230: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e234: r16 = "value"
    //     0x71e234: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e238: StoreField: r0->field_f = r16
    //     0x71e238: stur            w16, [x0, #0xf]
    // 0x71e23c: r16 = 470
    //     0x71e23c: mov             x16, #0x1d6
    // 0x71e240: StoreField: r0->field_13 = r16
    //     0x71e240: stur            w16, [x0, #0x13]
    // 0x71e244: r16 = "name"
    //     0x71e244: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e248: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e248: stur            w16, [x0, #0x17]
    // 0x71e24c: r16 = "Dutch"
    //     0x71e24c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18430] "Dutch"
    //     0x71e250: ldr             x16, [x16, #0x430]
    // 0x71e254: StoreField: r0->field_1b = r16
    //     0x71e254: stur            w16, [x0, #0x1b]
    // 0x71e258: r16 = <String, dynamic>
    //     0x71e258: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e25c: stp             x0, x16, [SP]
    // 0x71e260: r0 = Map._fromLiteral()
    //     0x71e260: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e264: ldur            x1, [fp, #-0x10]
    // 0x71e268: ArrayStore: r1[14] = r0  ; List_4
    //     0x71e268: add             x25, x1, #0x47
    //     0x71e26c: str             w0, [x25]
    //     0x71e270: tbz             w0, #0, #0x71e28c
    //     0x71e274: ldurb           w16, [x1, #-1]
    //     0x71e278: ldurb           w17, [x0, #-1]
    //     0x71e27c: and             x16, x17, x16, lsr #2
    //     0x71e280: tst             x16, HEAP, lsr #32
    //     0x71e284: b.eq            #0x71e28c
    //     0x71e288: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e28c: r1 = Null
    //     0x71e28c: mov             x1, NULL
    // 0x71e290: r2 = 8
    //     0x71e290: mov             x2, #8
    // 0x71e294: r0 = AllocateArray()
    //     0x71e294: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e298: r16 = "value"
    //     0x71e298: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e29c: StoreField: r0->field_f = r16
    //     0x71e29c: stur            w16, [x0, #0xf]
    // 0x71e2a0: r16 = 436
    //     0x71e2a0: mov             x16, #0x1b4
    // 0x71e2a4: StoreField: r0->field_13 = r16
    //     0x71e2a4: stur            w16, [x0, #0x13]
    // 0x71e2a8: r16 = "name"
    //     0x71e2a8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e2ac: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e2ac: stur            w16, [x0, #0x17]
    // 0x71e2b0: r16 = "Japanese"
    //     0x71e2b0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18438] "Japanese"
    //     0x71e2b4: ldr             x16, [x16, #0x438]
    // 0x71e2b8: StoreField: r0->field_1b = r16
    //     0x71e2b8: stur            w16, [x0, #0x1b]
    // 0x71e2bc: r16 = <String, dynamic>
    //     0x71e2bc: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e2c0: stp             x0, x16, [SP]
    // 0x71e2c4: r0 = Map._fromLiteral()
    //     0x71e2c4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e2c8: ldur            x1, [fp, #-0x10]
    // 0x71e2cc: ArrayStore: r1[15] = r0  ; List_4
    //     0x71e2cc: add             x25, x1, #0x4b
    //     0x71e2d0: str             w0, [x25]
    //     0x71e2d4: tbz             w0, #0, #0x71e2f0
    //     0x71e2d8: ldurb           w16, [x1, #-1]
    //     0x71e2dc: ldurb           w17, [x0, #-1]
    //     0x71e2e0: and             x16, x17, x16, lsr #2
    //     0x71e2e4: tst             x16, HEAP, lsr #32
    //     0x71e2e8: b.eq            #0x71e2f0
    //     0x71e2ec: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e2f0: r1 = Null
    //     0x71e2f0: mov             x1, NULL
    // 0x71e2f4: r2 = 8
    //     0x71e2f4: mov             x2, #8
    // 0x71e2f8: r0 = AllocateArray()
    //     0x71e2f8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e2fc: r16 = "value"
    //     0x71e2fc: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e300: StoreField: r0->field_f = r16
    //     0x71e300: stur            w16, [x0, #0xf]
    // 0x71e304: r16 = 438
    //     0x71e304: mov             x16, #0x1b6
    // 0x71e308: StoreField: r0->field_13 = r16
    //     0x71e308: stur            w16, [x0, #0x13]
    // 0x71e30c: r16 = "name"
    //     0x71e30c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e310: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e310: stur            w16, [x0, #0x17]
    // 0x71e314: r16 = "Korean"
    //     0x71e314: add             x16, PP, #0x18, lsl #12  ; [pp+0x18440] "Korean"
    //     0x71e318: ldr             x16, [x16, #0x440]
    // 0x71e31c: StoreField: r0->field_1b = r16
    //     0x71e31c: stur            w16, [x0, #0x1b]
    // 0x71e320: r16 = <String, dynamic>
    //     0x71e320: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e324: stp             x0, x16, [SP]
    // 0x71e328: r0 = Map._fromLiteral()
    //     0x71e328: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e32c: ldur            x1, [fp, #-0x10]
    // 0x71e330: ArrayStore: r1[16] = r0  ; List_4
    //     0x71e330: add             x25, x1, #0x4f
    //     0x71e334: str             w0, [x25]
    //     0x71e338: tbz             w0, #0, #0x71e354
    //     0x71e33c: ldurb           w16, [x1, #-1]
    //     0x71e340: ldurb           w17, [x0, #-1]
    //     0x71e344: and             x16, x17, x16, lsr #2
    //     0x71e348: tst             x16, HEAP, lsr #32
    //     0x71e34c: b.eq            #0x71e354
    //     0x71e350: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e354: r1 = Null
    //     0x71e354: mov             x1, NULL
    // 0x71e358: r2 = 8
    //     0x71e358: mov             x2, #8
    // 0x71e35c: r0 = AllocateArray()
    //     0x71e35c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e360: r16 = "value"
    //     0x71e360: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e364: StoreField: r0->field_f = r16
    //     0x71e364: stur            w16, [x0, #0xf]
    // 0x71e368: r16 = 252
    //     0x71e368: mov             x16, #0xfc
    // 0x71e36c: StoreField: r0->field_13 = r16
    //     0x71e36c: stur            w16, [x0, #0x13]
    // 0x71e370: r16 = "name"
    //     0x71e370: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e374: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e374: stur            w16, [x0, #0x17]
    // 0x71e378: r16 = "Bosnian"
    //     0x71e378: add             x16, PP, #0x18, lsl #12  ; [pp+0x18448] "Bosnian"
    //     0x71e37c: ldr             x16, [x16, #0x448]
    // 0x71e380: StoreField: r0->field_1b = r16
    //     0x71e380: stur            w16, [x0, #0x1b]
    // 0x71e384: r16 = <String, dynamic>
    //     0x71e384: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e388: stp             x0, x16, [SP]
    // 0x71e38c: r0 = Map._fromLiteral()
    //     0x71e38c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e390: ldur            x1, [fp, #-0x10]
    // 0x71e394: ArrayStore: r1[17] = r0  ; List_4
    //     0x71e394: add             x25, x1, #0x53
    //     0x71e398: str             w0, [x25]
    //     0x71e39c: tbz             w0, #0, #0x71e3b8
    //     0x71e3a0: ldurb           w16, [x1, #-1]
    //     0x71e3a4: ldurb           w17, [x0, #-1]
    //     0x71e3a8: and             x16, x17, x16, lsr #2
    //     0x71e3ac: tst             x16, HEAP, lsr #32
    //     0x71e3b0: b.eq            #0x71e3b8
    //     0x71e3b4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e3b8: r1 = Null
    //     0x71e3b8: mov             x1, NULL
    // 0x71e3bc: r2 = 8
    //     0x71e3bc: mov             x2, #8
    // 0x71e3c0: r0 = AllocateArray()
    //     0x71e3c0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e3c4: r16 = "value"
    //     0x71e3c4: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e3c8: StoreField: r0->field_f = r16
    //     0x71e3c8: stur            w16, [x0, #0xf]
    // 0x71e3cc: r16 = 178
    //     0x71e3cc: mov             x16, #0xb2
    // 0x71e3d0: StoreField: r0->field_13 = r16
    //     0x71e3d0: stur            w16, [x0, #0x13]
    // 0x71e3d4: r16 = "name"
    //     0x71e3d4: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e3d8: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e3d8: stur            w16, [x0, #0x17]
    // 0x71e3dc: r16 = "Albanian"
    //     0x71e3dc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18450] "Albanian"
    //     0x71e3e0: ldr             x16, [x16, #0x450]
    // 0x71e3e4: StoreField: r0->field_1b = r16
    //     0x71e3e4: stur            w16, [x0, #0x1b]
    // 0x71e3e8: r16 = <String, dynamic>
    //     0x71e3e8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e3ec: stp             x0, x16, [SP]
    // 0x71e3f0: r0 = Map._fromLiteral()
    //     0x71e3f0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e3f4: ldur            x1, [fp, #-0x10]
    // 0x71e3f8: ArrayStore: r1[18] = r0  ; List_4
    //     0x71e3f8: add             x25, x1, #0x57
    //     0x71e3fc: str             w0, [x25]
    //     0x71e400: tbz             w0, #0, #0x71e41c
    //     0x71e404: ldurb           w16, [x1, #-1]
    //     0x71e408: ldurb           w17, [x0, #-1]
    //     0x71e40c: and             x16, x17, x16, lsr #2
    //     0x71e410: tst             x16, HEAP, lsr #32
    //     0x71e414: b.eq            #0x71e41c
    //     0x71e418: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e41c: r1 = Null
    //     0x71e41c: mov             x1, NULL
    // 0x71e420: r2 = 8
    //     0x71e420: mov             x2, #8
    // 0x71e424: r0 = AllocateArray()
    //     0x71e424: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e428: r16 = "value"
    //     0x71e428: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e42c: StoreField: r0->field_f = r16
    //     0x71e42c: stur            w16, [x0, #0xf]
    // 0x71e430: r16 = 114
    //     0x71e430: mov             x16, #0x72
    // 0x71e434: StoreField: r0->field_13 = r16
    //     0x71e434: stur            w16, [x0, #0x13]
    // 0x71e438: r16 = "name"
    //     0x71e438: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e43c: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e43c: stur            w16, [x0, #0x17]
    // 0x71e440: r16 = "Transliteration"
    //     0x71e440: add             x16, PP, #0x18, lsl #12  ; [pp+0x18458] "Transliteration"
    //     0x71e444: ldr             x16, [x16, #0x458]
    // 0x71e448: StoreField: r0->field_1b = r16
    //     0x71e448: stur            w16, [x0, #0x1b]
    // 0x71e44c: r16 = <String, dynamic>
    //     0x71e44c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e450: stp             x0, x16, [SP]
    // 0x71e454: r0 = Map._fromLiteral()
    //     0x71e454: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e458: ldur            x1, [fp, #-0x10]
    // 0x71e45c: ArrayStore: r1[19] = r0  ; List_4
    //     0x71e45c: add             x25, x1, #0x5b
    //     0x71e460: str             w0, [x25]
    //     0x71e464: tbz             w0, #0, #0x71e480
    //     0x71e468: ldurb           w16, [x1, #-1]
    //     0x71e46c: ldurb           w17, [x0, #-1]
    //     0x71e470: and             x16, x17, x16, lsr #2
    //     0x71e474: tst             x16, HEAP, lsr #32
    //     0x71e478: b.eq            #0x71e480
    //     0x71e47c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e480: r1 = Null
    //     0x71e480: mov             x1, NULL
    // 0x71e484: r2 = 8
    //     0x71e484: mov             x2, #8
    // 0x71e488: r0 = AllocateArray()
    //     0x71e488: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e48c: r16 = "value"
    //     0x71e48c: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e490: StoreField: r0->field_f = r16
    //     0x71e490: stur            w16, [x0, #0xf]
    // 0x71e494: r16 = 96
    //     0x71e494: mov             x16, #0x60
    // 0x71e498: StoreField: r0->field_13 = r16
    //     0x71e498: stur            w16, [x0, #0x13]
    // 0x71e49c: r16 = "name"
    //     0x71e49c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e4a0: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e4a0: stur            w16, [x0, #0x17]
    // 0x71e4a4: r16 = "Swedish"
    //     0x71e4a4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18460] "Swedish"
    //     0x71e4a8: ldr             x16, [x16, #0x460]
    // 0x71e4ac: StoreField: r0->field_1b = r16
    //     0x71e4ac: stur            w16, [x0, #0x1b]
    // 0x71e4b0: r16 = <String, dynamic>
    //     0x71e4b0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e4b4: stp             x0, x16, [SP]
    // 0x71e4b8: r0 = Map._fromLiteral()
    //     0x71e4b8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e4bc: ldur            x1, [fp, #-0x10]
    // 0x71e4c0: ArrayStore: r1[20] = r0  ; List_4
    //     0x71e4c0: add             x25, x1, #0x5f
    //     0x71e4c4: str             w0, [x25]
    //     0x71e4c8: tbz             w0, #0, #0x71e4e4
    //     0x71e4cc: ldurb           w16, [x1, #-1]
    //     0x71e4d0: ldurb           w17, [x0, #-1]
    //     0x71e4d4: and             x16, x17, x16, lsr #2
    //     0x71e4d8: tst             x16, HEAP, lsr #32
    //     0x71e4dc: b.eq            #0x71e4e4
    //     0x71e4e0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e4e4: r1 = Null
    //     0x71e4e4: mov             x1, NULL
    // 0x71e4e8: r2 = 8
    //     0x71e4e8: mov             x2, #8
    // 0x71e4ec: r0 = AllocateArray()
    //     0x71e4ec: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e4f0: r16 = "value"
    //     0x71e4f0: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e4f4: StoreField: r0->field_f = r16
    //     0x71e4f4: stur            w16, [x0, #0xf]
    // 0x71e4f8: r16 = 84
    //     0x71e4f8: mov             x16, #0x54
    // 0x71e4fc: StoreField: r0->field_13 = r16
    //     0x71e4fc: stur            w16, [x0, #0x13]
    // 0x71e500: r16 = "name"
    //     0x71e500: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e504: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e504: stur            w16, [x0, #0x17]
    // 0x71e508: r16 = "Polish"
    //     0x71e508: add             x16, PP, #0x18, lsl #12  ; [pp+0x18468] "Polish"
    //     0x71e50c: ldr             x16, [x16, #0x468]
    // 0x71e510: StoreField: r0->field_1b = r16
    //     0x71e510: stur            w16, [x0, #0x1b]
    // 0x71e514: r16 = <String, dynamic>
    //     0x71e514: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e518: stp             x0, x16, [SP]
    // 0x71e51c: r0 = Map._fromLiteral()
    //     0x71e51c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e520: ldur            x1, [fp, #-0x10]
    // 0x71e524: ArrayStore: r1[21] = r0  ; List_4
    //     0x71e524: add             x25, x1, #0x63
    //     0x71e528: str             w0, [x25]
    //     0x71e52c: tbz             w0, #0, #0x71e548
    //     0x71e530: ldurb           w16, [x1, #-1]
    //     0x71e534: ldurb           w17, [x0, #-1]
    //     0x71e538: and             x16, x17, x16, lsr #2
    //     0x71e53c: tst             x16, HEAP, lsr #32
    //     0x71e540: b.eq            #0x71e548
    //     0x71e544: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e548: r1 = Null
    //     0x71e548: mov             x1, NULL
    // 0x71e54c: r2 = 8
    //     0x71e54c: mov             x2, #8
    // 0x71e550: r0 = AllocateArray()
    //     0x71e550: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e554: r16 = "value"
    //     0x71e554: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e558: StoreField: r0->field_f = r16
    //     0x71e558: stur            w16, [x0, #0xf]
    // 0x71e55c: r16 = 266
    //     0x71e55c: mov             x16, #0x10a
    // 0x71e560: StoreField: r0->field_13 = r16
    //     0x71e560: stur            w16, [x0, #0x13]
    // 0x71e564: r16 = "name"
    //     0x71e564: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e568: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e568: stur            w16, [x0, #0x17]
    // 0x71e56c: r16 = "Tamil"
    //     0x71e56c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18470] "Tamil"
    //     0x71e570: ldr             x16, [x16, #0x470]
    // 0x71e574: StoreField: r0->field_1b = r16
    //     0x71e574: stur            w16, [x0, #0x1b]
    // 0x71e578: r16 = <String, dynamic>
    //     0x71e578: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e57c: stp             x0, x16, [SP]
    // 0x71e580: r0 = Map._fromLiteral()
    //     0x71e580: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e584: ldur            x1, [fp, #-0x10]
    // 0x71e588: ArrayStore: r1[22] = r0  ; List_4
    //     0x71e588: add             x25, x1, #0x67
    //     0x71e58c: str             w0, [x25]
    //     0x71e590: tbz             w0, #0, #0x71e5ac
    //     0x71e594: ldurb           w16, [x1, #-1]
    //     0x71e598: ldurb           w17, [x0, #-1]
    //     0x71e59c: and             x16, x17, x16, lsr #2
    //     0x71e5a0: tst             x16, HEAP, lsr #32
    //     0x71e5a4: b.eq            #0x71e5ac
    //     0x71e5a8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e5ac: r1 = Null
    //     0x71e5ac: mov             x1, NULL
    // 0x71e5b0: r2 = 8
    //     0x71e5b0: mov             x2, #8
    // 0x71e5b4: r0 = AllocateArray()
    //     0x71e5b4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e5b8: r16 = "value"
    //     0x71e5b8: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e5bc: StoreField: r0->field_f = r16
    //     0x71e5bc: stur            w16, [x0, #0xf]
    // 0x71e5c0: r16 = 74
    //     0x71e5c0: mov             x16, #0x4a
    // 0x71e5c4: StoreField: r0->field_13 = r16
    //     0x71e5c4: stur            w16, [x0, #0x13]
    // 0x71e5c8: r16 = "name"
    //     0x71e5c8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e5cc: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e5cc: stur            w16, [x0, #0x17]
    // 0x71e5d0: r16 = "Malayalam"
    //     0x71e5d0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18478] "Malayalam"
    //     0x71e5d4: ldr             x16, [x16, #0x478]
    // 0x71e5d8: StoreField: r0->field_1b = r16
    //     0x71e5d8: stur            w16, [x0, #0x1b]
    // 0x71e5dc: r16 = <String, dynamic>
    //     0x71e5dc: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e5e0: stp             x0, x16, [SP]
    // 0x71e5e4: r0 = Map._fromLiteral()
    //     0x71e5e4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e5e8: ldur            x1, [fp, #-0x10]
    // 0x71e5ec: ArrayStore: r1[23] = r0  ; List_4
    //     0x71e5ec: add             x25, x1, #0x6b
    //     0x71e5f0: str             w0, [x25]
    //     0x71e5f4: tbz             w0, #0, #0x71e610
    //     0x71e5f8: ldurb           w16, [x1, #-1]
    //     0x71e5fc: ldurb           w17, [x0, #-1]
    //     0x71e600: and             x16, x17, x16, lsr #2
    //     0x71e604: tst             x16, HEAP, lsr #32
    //     0x71e608: b.eq            #0x71e610
    //     0x71e60c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e610: r1 = Null
    //     0x71e610: mov             x1, NULL
    // 0x71e614: r2 = 8
    //     0x71e614: mov             x2, #8
    // 0x71e618: r0 = AllocateArray()
    //     0x71e618: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e61c: r16 = "value"
    //     0x71e61c: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e620: StoreField: r0->field_f = r16
    //     0x71e620: stur            w16, [x0, #0xf]
    // 0x71e624: r16 = 244
    //     0x71e624: mov             x16, #0xf4
    // 0x71e628: StoreField: r0->field_13 = r16
    //     0x71e628: stur            w16, [x0, #0x13]
    // 0x71e62c: r16 = "name"
    //     0x71e62c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e630: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e630: stur            w16, [x0, #0x17]
    // 0x71e634: r16 = "Hindi"
    //     0x71e634: add             x16, PP, #0x18, lsl #12  ; [pp+0x18480] "Hindi"
    //     0x71e638: ldr             x16, [x16, #0x480]
    // 0x71e63c: StoreField: r0->field_1b = r16
    //     0x71e63c: stur            w16, [x0, #0x1b]
    // 0x71e640: r16 = <String, dynamic>
    //     0x71e640: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e644: stp             x0, x16, [SP]
    // 0x71e648: r0 = Map._fromLiteral()
    //     0x71e648: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e64c: ldur            x1, [fp, #-0x10]
    // 0x71e650: ArrayStore: r1[24] = r0  ; List_4
    //     0x71e650: add             x25, x1, #0x6f
    //     0x71e654: str             w0, [x25]
    //     0x71e658: tbz             w0, #0, #0x71e674
    //     0x71e65c: ldurb           w16, [x1, #-1]
    //     0x71e660: ldurb           w17, [x0, #-1]
    //     0x71e664: and             x16, x17, x16, lsr #2
    //     0x71e668: tst             x16, HEAP, lsr #32
    //     0x71e66c: b.eq            #0x71e674
    //     0x71e670: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e674: r1 = Null
    //     0x71e674: mov             x1, NULL
    // 0x71e678: r2 = 8
    //     0x71e678: mov             x2, #8
    // 0x71e67c: r0 = AllocateArray()
    //     0x71e67c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e680: r16 = "value"
    //     0x71e680: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e684: StoreField: r0->field_f = r16
    //     0x71e684: stur            w16, [x0, #0xf]
    // 0x71e688: r16 = 460
    //     0x71e688: mov             x16, #0x1cc
    // 0x71e68c: StoreField: r0->field_13 = r16
    //     0x71e68c: stur            w16, [x0, #0x13]
    // 0x71e690: r16 = "name"
    //     0x71e690: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e694: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e694: stur            w16, [x0, #0x17]
    // 0x71e698: r16 = "Thai"
    //     0x71e698: add             x16, PP, #0x18, lsl #12  ; [pp+0x18488] "Thai"
    //     0x71e69c: ldr             x16, [x16, #0x488]
    // 0x71e6a0: StoreField: r0->field_1b = r16
    //     0x71e6a0: stur            w16, [x0, #0x1b]
    // 0x71e6a4: r16 = <String, dynamic>
    //     0x71e6a4: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e6a8: stp             x0, x16, [SP]
    // 0x71e6ac: r0 = Map._fromLiteral()
    //     0x71e6ac: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e6b0: ldur            x1, [fp, #-0x10]
    // 0x71e6b4: ArrayStore: r1[25] = r0  ; List_4
    //     0x71e6b4: add             x25, x1, #0x73
    //     0x71e6b8: str             w0, [x25]
    //     0x71e6bc: tbz             w0, #0, #0x71e6d8
    //     0x71e6c0: ldurb           w16, [x1, #-1]
    //     0x71e6c4: ldurb           w17, [x0, #-1]
    //     0x71e6c8: and             x16, x17, x16, lsr #2
    //     0x71e6cc: tst             x16, HEAP, lsr #32
    //     0x71e6d0: b.eq            #0x71e6d8
    //     0x71e6d4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e6d8: r1 = Null
    //     0x71e6d8: mov             x1, NULL
    // 0x71e6dc: r2 = 8
    //     0x71e6dc: mov             x2, #8
    // 0x71e6e0: r0 = AllocateArray()
    //     0x71e6e0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e6e4: r16 = "value"
    //     0x71e6e4: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e6e8: StoreField: r0->field_f = r16
    //     0x71e6e8: stur            w16, [x0, #0xf]
    // 0x71e6ec: r16 = 442
    //     0x71e6ec: mov             x16, #0x1ba
    // 0x71e6f0: StoreField: r0->field_13 = r16
    //     0x71e6f0: stur            w16, [x0, #0x13]
    // 0x71e6f4: r16 = "name"
    //     0x71e6f4: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e6f8: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e6f8: stur            w16, [x0, #0x17]
    // 0x71e6fc: r16 = "Vietnamese"
    //     0x71e6fc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18490] "Vietnamese"
    //     0x71e700: ldr             x16, [x16, #0x490]
    // 0x71e704: StoreField: r0->field_1b = r16
    //     0x71e704: stur            w16, [x0, #0x1b]
    // 0x71e708: r16 = <String, dynamic>
    //     0x71e708: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e70c: stp             x0, x16, [SP]
    // 0x71e710: r0 = Map._fromLiteral()
    //     0x71e710: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e714: ldur            x1, [fp, #-0x10]
    // 0x71e718: ArrayStore: r1[26] = r0  ; List_4
    //     0x71e718: add             x25, x1, #0x77
    //     0x71e71c: str             w0, [x25]
    //     0x71e720: tbz             w0, #0, #0x71e73c
    //     0x71e724: ldurb           w16, [x1, #-1]
    //     0x71e728: ldurb           w17, [x0, #-1]
    //     0x71e72c: and             x16, x17, x16, lsr #2
    //     0x71e730: tst             x16, HEAP, lsr #32
    //     0x71e734: b.eq            #0x71e73c
    //     0x71e738: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e73c: r1 = Null
    //     0x71e73c: mov             x1, NULL
    // 0x71e740: r2 = 8
    //     0x71e740: mov             x2, #8
    // 0x71e744: r0 = AllocateArray()
    //     0x71e744: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e748: r16 = "value"
    //     0x71e748: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e74c: StoreField: r0->field_f = r16
    //     0x71e74c: stur            w16, [x0, #0xf]
    // 0x71e750: r16 = 254
    //     0x71e750: mov             x16, #0xfe
    // 0x71e754: StoreField: r0->field_13 = r16
    //     0x71e754: stur            w16, [x0, #0x13]
    // 0x71e758: r16 = "name"
    //     0x71e758: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e75c: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e75c: stur            w16, [x0, #0x17]
    // 0x71e760: r16 = "Uzbek"
    //     0x71e760: add             x16, PP, #0x18, lsl #12  ; [pp+0x18498] "Uzbek"
    //     0x71e764: ldr             x16, [x16, #0x498]
    // 0x71e768: StoreField: r0->field_1b = r16
    //     0x71e768: stur            w16, [x0, #0x1b]
    // 0x71e76c: r16 = <String, dynamic>
    //     0x71e76c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e770: stp             x0, x16, [SP]
    // 0x71e774: r0 = Map._fromLiteral()
    //     0x71e774: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e778: ldur            x1, [fp, #-0x10]
    // 0x71e77c: ArrayStore: r1[27] = r0  ; List_4
    //     0x71e77c: add             x25, x1, #0x7b
    //     0x71e780: str             w0, [x25]
    //     0x71e784: tbz             w0, #0, #0x71e7a0
    //     0x71e788: ldurb           w16, [x1, #-1]
    //     0x71e78c: ldurb           w17, [x0, #-1]
    //     0x71e790: and             x16, x17, x16, lsr #2
    //     0x71e794: tst             x16, HEAP, lsr #32
    //     0x71e798: b.eq            #0x71e7a0
    //     0x71e79c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e7a0: r1 = Null
    //     0x71e7a0: mov             x1, NULL
    // 0x71e7a4: r2 = 8
    //     0x71e7a4: mov             x2, #8
    // 0x71e7a8: r0 = AllocateArray()
    //     0x71e7a8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e7ac: r16 = "value"
    //     0x71e7ac: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e7b0: StoreField: r0->field_f = r16
    //     0x71e7b0: stur            w16, [x0, #0xf]
    // 0x71e7b4: r16 = 150
    //     0x71e7b4: mov             x16, #0x96
    // 0x71e7b8: StoreField: r0->field_13 = r16
    //     0x71e7b8: stur            w16, [x0, #0x13]
    // 0x71e7bc: r16 = "name"
    //     0x71e7bc: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e7c0: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e7c0: stur            w16, [x0, #0x17]
    // 0x71e7c4: r16 = "Azerbaijani"
    //     0x71e7c4: add             x16, PP, #0x18, lsl #12  ; [pp+0x184a0] "Azerbaijani"
    //     0x71e7c8: ldr             x16, [x16, #0x4a0]
    // 0x71e7cc: StoreField: r0->field_1b = r16
    //     0x71e7cc: stur            w16, [x0, #0x1b]
    // 0x71e7d0: r16 = <String, dynamic>
    //     0x71e7d0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e7d4: stp             x0, x16, [SP]
    // 0x71e7d8: r0 = Map._fromLiteral()
    //     0x71e7d8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e7dc: ldur            x1, [fp, #-0x10]
    // 0x71e7e0: ArrayStore: r1[28] = r0  ; List_4
    //     0x71e7e0: add             x25, x1, #0x7f
    //     0x71e7e4: str             w0, [x25]
    //     0x71e7e8: tbz             w0, #0, #0x71e804
    //     0x71e7ec: ldurb           w16, [x1, #-1]
    //     0x71e7f0: ldurb           w17, [x0, #-1]
    //     0x71e7f4: and             x16, x17, x16, lsr #2
    //     0x71e7f8: tst             x16, HEAP, lsr #32
    //     0x71e7fc: b.eq            #0x71e804
    //     0x71e800: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e804: r1 = Null
    //     0x71e804: mov             x1, NULL
    // 0x71e808: r2 = 8
    //     0x71e808: mov             x2, #8
    // 0x71e80c: r0 = AllocateArray()
    //     0x71e80c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e810: r16 = "value"
    //     0x71e810: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e814: StoreField: r0->field_f = r16
    //     0x71e814: stur            w16, [x0, #0xf]
    // 0x71e818: r16 = 162
    //     0x71e818: mov             x16, #0xa2
    // 0x71e81c: StoreField: r0->field_13 = r16
    //     0x71e81c: stur            w16, [x0, #0x13]
    // 0x71e820: r16 = "name"
    //     0x71e820: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e824: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e824: stur            w16, [x0, #0x17]
    // 0x71e828: r16 = "Kurdish"
    //     0x71e828: add             x16, PP, #0x18, lsl #12  ; [pp+0x184a8] "Kurdish"
    //     0x71e82c: ldr             x16, [x16, #0x4a8]
    // 0x71e830: StoreField: r0->field_1b = r16
    //     0x71e830: stur            w16, [x0, #0x1b]
    // 0x71e834: r16 = <String, dynamic>
    //     0x71e834: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e838: stp             x0, x16, [SP]
    // 0x71e83c: r0 = Map._fromLiteral()
    //     0x71e83c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e840: ldur            x1, [fp, #-0x10]
    // 0x71e844: ArrayStore: r1[29] = r0  ; List_4
    //     0x71e844: add             x25, x1, #0x83
    //     0x71e848: str             w0, [x25]
    //     0x71e84c: tbz             w0, #0, #0x71e868
    //     0x71e850: ldurb           w16, [x1, #-1]
    //     0x71e854: ldurb           w17, [x0, #-1]
    //     0x71e858: and             x16, x17, x16, lsr #2
    //     0x71e85c: tst             x16, HEAP, lsr #32
    //     0x71e860: b.eq            #0x71e868
    //     0x71e864: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e868: r1 = Null
    //     0x71e868: mov             x1, NULL
    // 0x71e86c: r2 = 8
    //     0x71e86c: mov             x2, #8
    // 0x71e870: r0 = AllocateArray()
    //     0x71e870: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e874: r16 = "value"
    //     0x71e874: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e878: StoreField: r0->field_f = r16
    //     0x71e878: stur            w16, [x0, #0xf]
    // 0x71e87c: r16 = 462
    //     0x71e87c: mov             x16, #0x1ce
    // 0x71e880: StoreField: r0->field_13 = r16
    //     0x71e880: stur            w16, [x0, #0x13]
    // 0x71e884: r16 = "name"
    //     0x71e884: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e888: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e888: stur            w16, [x0, #0x17]
    // 0x71e88c: r16 = "Swahili"
    //     0x71e88c: add             x16, PP, #0x18, lsl #12  ; [pp+0x184b0] "Swahili"
    //     0x71e890: ldr             x16, [x16, #0x4b0]
    // 0x71e894: StoreField: r0->field_1b = r16
    //     0x71e894: stur            w16, [x0, #0x1b]
    // 0x71e898: r16 = <String, dynamic>
    //     0x71e898: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e89c: stp             x0, x16, [SP]
    // 0x71e8a0: r0 = Map._fromLiteral()
    //     0x71e8a0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e8a4: ldur            x1, [fp, #-0x10]
    // 0x71e8a8: ArrayStore: r1[30] = r0  ; List_4
    //     0x71e8a8: add             x25, x1, #0x87
    //     0x71e8ac: str             w0, [x25]
    //     0x71e8b0: tbz             w0, #0, #0x71e8cc
    //     0x71e8b4: ldurb           w16, [x1, #-1]
    //     0x71e8b8: ldurb           w17, [x0, #-1]
    //     0x71e8bc: and             x16, x17, x16, lsr #2
    //     0x71e8c0: tst             x16, HEAP, lsr #32
    //     0x71e8c4: b.eq            #0x71e8cc
    //     0x71e8c8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e8cc: r1 = Null
    //     0x71e8cc: mov             x1, NULL
    // 0x71e8d0: r2 = 8
    //     0x71e8d0: mov             x2, #8
    // 0x71e8d4: r0 = AllocateArray()
    //     0x71e8d4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e8d8: r16 = "value"
    //     0x71e8d8: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e8dc: StoreField: r0->field_f = r16
    //     0x71e8dc: stur            w16, [x0, #0xf]
    // 0x71e8e0: r16 = 230
    //     0x71e8e0: mov             x16, #0xe6
    // 0x71e8e4: StoreField: r0->field_13 = r16
    //     0x71e8e4: stur            w16, [x0, #0x13]
    // 0x71e8e8: r16 = "name"
    //     0x71e8e8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e8ec: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e8ec: stur            w16, [x0, #0x17]
    // 0x71e8f0: r16 = "Hausa"
    //     0x71e8f0: add             x16, PP, #0x18, lsl #12  ; [pp+0x184b8] "Hausa"
    //     0x71e8f4: ldr             x16, [x16, #0x4b8]
    // 0x71e8f8: StoreField: r0->field_1b = r16
    //     0x71e8f8: stur            w16, [x0, #0x1b]
    // 0x71e8fc: r16 = <String, dynamic>
    //     0x71e8fc: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e900: stp             x0, x16, [SP]
    // 0x71e904: r0 = Map._fromLiteral()
    //     0x71e904: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e908: ldur            x1, [fp, #-0x10]
    // 0x71e90c: ArrayStore: r1[31] = r0  ; List_4
    //     0x71e90c: add             x25, x1, #0x8b
    //     0x71e910: str             w0, [x25]
    //     0x71e914: tbz             w0, #0, #0x71e930
    //     0x71e918: ldurb           w16, [x1, #-1]
    //     0x71e91c: ldurb           w17, [x0, #-1]
    //     0x71e920: and             x16, x17, x16, lsr #2
    //     0x71e924: tst             x16, HEAP, lsr #32
    //     0x71e928: b.eq            #0x71e930
    //     0x71e92c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e930: r1 = Null
    //     0x71e930: mov             x1, NULL
    // 0x71e934: r2 = 8
    //     0x71e934: mov             x2, #8
    // 0x71e938: r0 = AllocateArray()
    //     0x71e938: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e93c: r16 = "value"
    //     0x71e93c: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e940: StoreField: r0->field_f = r16
    //     0x71e940: stur            w16, [x0, #0xf]
    // 0x71e944: r16 = 92
    //     0x71e944: mov             x16, #0x5c
    // 0x71e948: StoreField: r0->field_13 = r16
    //     0x71e948: stur            w16, [x0, #0x13]
    // 0x71e94c: r16 = "name"
    //     0x71e94c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e950: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e950: stur            w16, [x0, #0x17]
    // 0x71e954: r16 = "Somali"
    //     0x71e954: add             x16, PP, #0x18, lsl #12  ; [pp+0x184c0] "Somali"
    //     0x71e958: ldr             x16, [x16, #0x4c0]
    // 0x71e95c: StoreField: r0->field_1b = r16
    //     0x71e95c: stur            w16, [x0, #0x1b]
    // 0x71e960: r16 = <String, dynamic>
    //     0x71e960: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e964: stp             x0, x16, [SP]
    // 0x71e968: r0 = Map._fromLiteral()
    //     0x71e968: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e96c: ldur            x1, [fp, #-0x10]
    // 0x71e970: ArrayStore: r1[32] = r0  ; List_4
    //     0x71e970: add             x25, x1, #0x8f
    //     0x71e974: str             w0, [x25]
    //     0x71e978: tbz             w0, #0, #0x71e994
    //     0x71e97c: ldurb           w16, [x1, #-1]
    //     0x71e980: ldurb           w17, [x0, #-1]
    //     0x71e984: and             x16, x17, x16, lsr #2
    //     0x71e988: tst             x16, HEAP, lsr #32
    //     0x71e98c: b.eq            #0x71e994
    //     0x71e990: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e994: r1 = Null
    //     0x71e994: mov             x1, NULL
    // 0x71e998: r2 = 8
    //     0x71e998: mov             x2, #8
    // 0x71e99c: r0 = AllocateArray()
    //     0x71e99c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71e9a0: r16 = "value"
    //     0x71e9a0: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71e9a4: StoreField: r0->field_f = r16
    //     0x71e9a4: stur            w16, [x0, #0xf]
    // 0x71e9a8: r16 = 174
    //     0x71e9a8: mov             x16, #0xae
    // 0x71e9ac: StoreField: r0->field_13 = r16
    //     0x71e9ac: stur            w16, [x0, #0x13]
    // 0x71e9b0: r16 = "name"
    //     0x71e9b0: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71e9b4: ArrayStore: r0[0] = r16  ; List_4
    //     0x71e9b4: stur            w16, [x0, #0x17]
    // 0x71e9b8: r16 = "Amharic"
    //     0x71e9b8: add             x16, PP, #0x18, lsl #12  ; [pp+0x184c8] "Amharic"
    //     0x71e9bc: ldr             x16, [x16, #0x4c8]
    // 0x71e9c0: StoreField: r0->field_1b = r16
    //     0x71e9c0: stur            w16, [x0, #0x1b]
    // 0x71e9c4: r16 = <String, dynamic>
    //     0x71e9c4: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71e9c8: stp             x0, x16, [SP]
    // 0x71e9cc: r0 = Map._fromLiteral()
    //     0x71e9cc: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71e9d0: ldur            x1, [fp, #-0x10]
    // 0x71e9d4: ArrayStore: r1[33] = r0  ; List_4
    //     0x71e9d4: add             x25, x1, #0x93
    //     0x71e9d8: str             w0, [x25]
    //     0x71e9dc: tbz             w0, #0, #0x71e9f8
    //     0x71e9e0: ldurb           w16, [x1, #-1]
    //     0x71e9e4: ldurb           w17, [x0, #-1]
    //     0x71e9e8: and             x16, x17, x16, lsr #2
    //     0x71e9ec: tst             x16, HEAP, lsr #32
    //     0x71e9f0: b.eq            #0x71e9f8
    //     0x71e9f4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71e9f8: r1 = Null
    //     0x71e9f8: mov             x1, NULL
    // 0x71e9fc: r2 = 8
    //     0x71e9fc: mov             x2, #8
    // 0x71ea00: r0 = AllocateArray()
    //     0x71ea00: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71ea04: r16 = "value"
    //     0x71ea04: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71ea08: StoreField: r0->field_f = r16
    //     0x71ea08: stur            w16, [x0, #0xf]
    // 0x71ea0c: r16 = 236
    //     0x71ea0c: mov             x16, #0xec
    // 0x71ea10: StoreField: r0->field_13 = r16
    //     0x71ea10: stur            w16, [x0, #0x13]
    // 0x71ea14: r16 = "name"
    //     0x71ea14: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71ea18: ArrayStore: r0[0] = r16  ; List_4
    //     0x71ea18: stur            w16, [x0, #0x17]
    // 0x71ea1c: r16 = "Pashto"
    //     0x71ea1c: add             x16, PP, #0x18, lsl #12  ; [pp+0x184d0] "Pashto"
    //     0x71ea20: ldr             x16, [x16, #0x4d0]
    // 0x71ea24: StoreField: r0->field_1b = r16
    //     0x71ea24: stur            w16, [x0, #0x1b]
    // 0x71ea28: r16 = <String, dynamic>
    //     0x71ea28: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71ea2c: stp             x0, x16, [SP]
    // 0x71ea30: r0 = Map._fromLiteral()
    //     0x71ea30: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71ea34: ldur            x1, [fp, #-0x10]
    // 0x71ea38: ArrayStore: r1[34] = r0  ; List_4
    //     0x71ea38: add             x25, x1, #0x97
    //     0x71ea3c: str             w0, [x25]
    //     0x71ea40: tbz             w0, #0, #0x71ea5c
    //     0x71ea44: ldurb           w16, [x1, #-1]
    //     0x71ea48: ldurb           w17, [x0, #-1]
    //     0x71ea4c: and             x16, x17, x16, lsr #2
    //     0x71ea50: tst             x16, HEAP, lsr #32
    //     0x71ea54: b.eq            #0x71ea5c
    //     0x71ea58: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71ea5c: r1 = Null
    //     0x71ea5c: mov             x1, NULL
    // 0x71ea60: r2 = 8
    //     0x71ea60: mov             x2, #8
    // 0x71ea64: r0 = AllocateArray()
    //     0x71ea64: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71ea68: r16 = "value"
    //     0x71ea68: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71ea6c: StoreField: r0->field_f = r16
    //     0x71ea6c: stur            w16, [x0, #0xf]
    // 0x71ea70: r16 = 446
    //     0x71ea70: mov             x16, #0x1be
    // 0x71ea74: StoreField: r0->field_13 = r16
    //     0x71ea74: stur            w16, [x0, #0x13]
    // 0x71ea78: r16 = "name"
    //     0x71ea78: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71ea7c: ArrayStore: r0[0] = r16  ; List_4
    //     0x71ea7c: stur            w16, [x0, #0x17]
    // 0x71ea80: r16 = "Tajik"
    //     0x71ea80: add             x16, PP, #0x18, lsl #12  ; [pp+0x184d8] "Tajik"
    //     0x71ea84: ldr             x16, [x16, #0x4d8]
    // 0x71ea88: StoreField: r0->field_1b = r16
    //     0x71ea88: stur            w16, [x0, #0x1b]
    // 0x71ea8c: r16 = <String, dynamic>
    //     0x71ea8c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71ea90: stp             x0, x16, [SP]
    // 0x71ea94: r0 = Map._fromLiteral()
    //     0x71ea94: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71ea98: ldur            x1, [fp, #-0x10]
    // 0x71ea9c: ArrayStore: r1[35] = r0  ; List_4
    //     0x71ea9c: add             x25, x1, #0x9b
    //     0x71eaa0: str             w0, [x25]
    //     0x71eaa4: tbz             w0, #0, #0x71eac0
    //     0x71eaa8: ldurb           w16, [x1, #-1]
    //     0x71eaac: ldurb           w17, [x0, #-1]
    //     0x71eab0: and             x16, x17, x16, lsr #2
    //     0x71eab4: tst             x16, HEAP, lsr #32
    //     0x71eab8: b.eq            #0x71eac0
    //     0x71eabc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71eac0: r1 = Null
    //     0x71eac0: mov             x1, NULL
    // 0x71eac4: r2 = 8
    //     0x71eac4: mov             x2, #8
    // 0x71eac8: r0 = AllocateArray()
    //     0x71eac8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71eacc: r16 = "value"
    //     0x71eacc: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71ead0: StoreField: r0->field_f = r16
    //     0x71ead0: stur            w16, [x0, #0xf]
    // 0x71ead4: r16 = 444
    //     0x71ead4: mov             x16, #0x1bc
    // 0x71ead8: StoreField: r0->field_13 = r16
    //     0x71ead8: stur            w16, [x0, #0x13]
    // 0x71eadc: r16 = "name"
    //     0x71eadc: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71eae0: ArrayStore: r0[0] = r16  ; List_4
    //     0x71eae0: stur            w16, [x0, #0x17]
    // 0x71eae4: r16 = "Kazakh"
    //     0x71eae4: add             x16, PP, #0x18, lsl #12  ; [pp+0x184e0] "Kazakh"
    //     0x71eae8: ldr             x16, [x16, #0x4e0]
    // 0x71eaec: StoreField: r0->field_1b = r16
    //     0x71eaec: stur            w16, [x0, #0x1b]
    // 0x71eaf0: r16 = <String, dynamic>
    //     0x71eaf0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71eaf4: stp             x0, x16, [SP]
    // 0x71eaf8: r0 = Map._fromLiteral()
    //     0x71eaf8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71eafc: ldur            x1, [fp, #-0x10]
    // 0x71eb00: ArrayStore: r1[36] = r0  ; List_4
    //     0x71eb00: add             x25, x1, #0x9f
    //     0x71eb04: str             w0, [x25]
    //     0x71eb08: tbz             w0, #0, #0x71eb24
    //     0x71eb0c: ldurb           w16, [x1, #-1]
    //     0x71eb10: ldurb           w17, [x0, #-1]
    //     0x71eb14: and             x16, x17, x16, lsr #2
    //     0x71eb18: tst             x16, HEAP, lsr #32
    //     0x71eb1c: b.eq            #0x71eb24
    //     0x71eb20: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71eb24: r1 = Null
    //     0x71eb24: mov             x1, NULL
    // 0x71eb28: r2 = 8
    //     0x71eb28: mov             x2, #8
    // 0x71eb2c: r0 = AllocateArray()
    //     0x71eb2c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71eb30: r16 = "value"
    //     0x71eb30: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71eb34: StoreField: r0->field_f = r16
    //     0x71eb34: stur            w16, [x0, #0xf]
    // 0x71eb38: r16 = 1564
    //     0x71eb38: mov             x16, #0x61c
    // 0x71eb3c: StoreField: r0->field_13 = r16
    //     0x71eb3c: stur            w16, [x0, #0x13]
    // 0x71eb40: r16 = "name"
    //     0x71eb40: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71eb44: ArrayStore: r0[0] = r16  ; List_4
    //     0x71eb44: stur            w16, [x0, #0x17]
    // 0x71eb48: r16 = "Romanian"
    //     0x71eb48: add             x16, PP, #0x18, lsl #12  ; [pp+0x184e8] "Romanian"
    //     0x71eb4c: ldr             x16, [x16, #0x4e8]
    // 0x71eb50: StoreField: r0->field_1b = r16
    //     0x71eb50: stur            w16, [x0, #0x1b]
    // 0x71eb54: r16 = <String, dynamic>
    //     0x71eb54: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71eb58: stp             x0, x16, [SP]
    // 0x71eb5c: r0 = Map._fromLiteral()
    //     0x71eb5c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71eb60: ldur            x1, [fp, #-0x10]
    // 0x71eb64: ArrayStore: r1[37] = r0  ; List_4
    //     0x71eb64: add             x25, x1, #0xa3
    //     0x71eb68: str             w0, [x25]
    //     0x71eb6c: tbz             w0, #0, #0x71eb88
    //     0x71eb70: ldurb           w16, [x1, #-1]
    //     0x71eb74: ldurb           w17, [x0, #-1]
    //     0x71eb78: and             x16, x17, x16, lsr #2
    //     0x71eb7c: tst             x16, HEAP, lsr #32
    //     0x71eb80: b.eq            #0x71eb88
    //     0x71eb84: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71eb88: r1 = Null
    //     0x71eb88: mov             x1, NULL
    // 0x71eb8c: r2 = 8
    //     0x71eb8c: mov             x2, #8
    // 0x71eb90: r0 = AllocateArray()
    //     0x71eb90: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71eb94: r16 = "value"
    //     0x71eb94: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71eb98: StoreField: r0->field_f = r16
    //     0x71eb98: stur            w16, [x0, #0xf]
    // 0x71eb9c: r16 = 474
    //     0x71eb9c: mov             x16, #0x1da
    // 0x71eba0: StoreField: r0->field_13 = r16
    //     0x71eba0: stur            w16, [x0, #0x13]
    // 0x71eba4: r16 = "name"
    //     0x71eba4: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71eba8: ArrayStore: r0[0] = r16  ; List_4
    //     0x71eba8: stur            w16, [x0, #0x17]
    // 0x71ebac: r16 = "Bulgarian"
    //     0x71ebac: add             x16, PP, #0x18, lsl #12  ; [pp+0x184f0] "Bulgarian"
    //     0x71ebb0: ldr             x16, [x16, #0x4f0]
    // 0x71ebb4: StoreField: r0->field_1b = r16
    //     0x71ebb4: stur            w16, [x0, #0x1b]
    // 0x71ebb8: r16 = <String, dynamic>
    //     0x71ebb8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71ebbc: stp             x0, x16, [SP]
    // 0x71ebc0: r0 = Map._fromLiteral()
    //     0x71ebc0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71ebc4: ldur            x1, [fp, #-0x10]
    // 0x71ebc8: ArrayStore: r1[38] = r0  ; List_4
    //     0x71ebc8: add             x25, x1, #0xa7
    //     0x71ebcc: str             w0, [x25]
    //     0x71ebd0: tbz             w0, #0, #0x71ebec
    //     0x71ebd4: ldurb           w16, [x1, #-1]
    //     0x71ebd8: ldurb           w17, [x0, #-1]
    //     0x71ebdc: and             x16, x17, x16, lsr #2
    //     0x71ebe0: tst             x16, HEAP, lsr #32
    //     0x71ebe4: b.eq            #0x71ebec
    //     0x71ebe8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71ebec: r1 = Null
    //     0x71ebec: mov             x1, NULL
    // 0x71ebf0: r2 = 8
    //     0x71ebf0: mov             x2, #8
    // 0x71ebf4: r0 = AllocateArray()
    //     0x71ebf4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71ebf8: r16 = "value"
    //     0x71ebf8: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71ebfc: StoreField: r0->field_f = r16
    //     0x71ebfc: stur            w16, [x0, #0xf]
    // 0x71ec00: r16 = 52
    //     0x71ec00: mov             x16, #0x34
    // 0x71ec04: StoreField: r0->field_13 = r16
    //     0x71ec04: stur            w16, [x0, #0x13]
    // 0x71ec08: r16 = "name"
    //     0x71ec08: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71ec0c: ArrayStore: r0[0] = r16  ; List_4
    //     0x71ec0c: stur            w16, [x0, #0x17]
    // 0x71ec10: r16 = "Czech"
    //     0x71ec10: add             x16, PP, #0x18, lsl #12  ; [pp+0x184f8] "Czech"
    //     0x71ec14: ldr             x16, [x16, #0x4f8]
    // 0x71ec18: StoreField: r0->field_1b = r16
    //     0x71ec18: stur            w16, [x0, #0x1b]
    // 0x71ec1c: r16 = <String, dynamic>
    //     0x71ec1c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71ec20: stp             x0, x16, [SP]
    // 0x71ec24: r0 = Map._fromLiteral()
    //     0x71ec24: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71ec28: ldur            x1, [fp, #-0x10]
    // 0x71ec2c: ArrayStore: r1[39] = r0  ; List_4
    //     0x71ec2c: add             x25, x1, #0xab
    //     0x71ec30: str             w0, [x25]
    //     0x71ec34: tbz             w0, #0, #0x71ec50
    //     0x71ec38: ldurb           w16, [x1, #-1]
    //     0x71ec3c: ldurb           w17, [x0, #-1]
    //     0x71ec40: and             x16, x17, x16, lsr #2
    //     0x71ec44: tst             x16, HEAP, lsr #32
    //     0x71ec48: b.eq            #0x71ec50
    //     0x71ec4c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71ec50: r1 = Null
    //     0x71ec50: mov             x1, NULL
    // 0x71ec54: r2 = 8
    //     0x71ec54: mov             x2, #8
    // 0x71ec58: r0 = AllocateArray()
    //     0x71ec58: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71ec5c: r16 = "value"
    //     0x71ec5c: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71ec60: StoreField: r0->field_f = r16
    //     0x71ec60: stur            w16, [x0, #0xf]
    // 0x71ec64: r16 = 82
    //     0x71ec64: mov             x16, #0x52
    // 0x71ec68: StoreField: r0->field_13 = r16
    //     0x71ec68: stur            w16, [x0, #0x13]
    // 0x71ec6c: r16 = "name"
    //     0x71ec6c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71ec70: ArrayStore: r0[0] = r16  ; List_4
    //     0x71ec70: stur            w16, [x0, #0x17]
    // 0x71ec74: r16 = "Norwegian"
    //     0x71ec74: add             x16, PP, #0x18, lsl #12  ; [pp+0x18500] "Norwegian"
    //     0x71ec78: ldr             x16, [x16, #0x500]
    // 0x71ec7c: StoreField: r0->field_1b = r16
    //     0x71ec7c: stur            w16, [x0, #0x1b]
    // 0x71ec80: r16 = <String, dynamic>
    //     0x71ec80: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71ec84: stp             x0, x16, [SP]
    // 0x71ec88: r0 = Map._fromLiteral()
    //     0x71ec88: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71ec8c: ldur            x1, [fp, #-0x10]
    // 0x71ec90: ArrayStore: r1[40] = r0  ; List_4
    //     0x71ec90: add             x25, x1, #0xaf
    //     0x71ec94: str             w0, [x25]
    //     0x71ec98: tbz             w0, #0, #0x71ecb4
    //     0x71ec9c: ldurb           w16, [x1, #-1]
    //     0x71eca0: ldurb           w17, [x0, #-1]
    //     0x71eca4: and             x16, x17, x16, lsr #2
    //     0x71eca8: tst             x16, HEAP, lsr #32
    //     0x71ecac: b.eq            #0x71ecb4
    //     0x71ecb0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71ecb4: r1 = Null
    //     0x71ecb4: mov             x1, NULL
    // 0x71ecb8: r2 = 8
    //     0x71ecb8: mov             x2, #8
    // 0x71ecbc: r0 = AllocateArray()
    //     0x71ecbc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71ecc0: r16 = "value"
    //     0x71ecc0: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71ecc4: StoreField: r0->field_f = r16
    //     0x71ecc4: stur            w16, [x0, #0xf]
    // 0x71ecc8: r16 = 60
    //     0x71ecc8: mov             x16, #0x3c
    // 0x71eccc: StoreField: r0->field_13 = r16
    //     0x71eccc: stur            w16, [x0, #0x13]
    // 0x71ecd0: r16 = "name"
    //     0x71ecd0: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71ecd4: ArrayStore: r0[0] = r16  ; List_4
    //     0x71ecd4: stur            w16, [x0, #0x17]
    // 0x71ecd8: r16 = "Finnish"
    //     0x71ecd8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18508] "Finnish"
    //     0x71ecdc: ldr             x16, [x16, #0x508]
    // 0x71ece0: StoreField: r0->field_1b = r16
    //     0x71ece0: stur            w16, [x0, #0x1b]
    // 0x71ece4: r16 = <String, dynamic>
    //     0x71ece4: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71ece8: stp             x0, x16, [SP]
    // 0x71ecec: r0 = Map._fromLiteral()
    //     0x71ecec: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71ecf0: ldur            x1, [fp, #-0x10]
    // 0x71ecf4: ArrayStore: r1[41] = r0  ; List_4
    //     0x71ecf4: add             x25, x1, #0xb3
    //     0x71ecf8: str             w0, [x25]
    //     0x71ecfc: tbz             w0, #0, #0x71ed18
    //     0x71ed00: ldurb           w16, [x1, #-1]
    //     0x71ed04: ldurb           w17, [x0, #-1]
    //     0x71ed08: and             x16, x17, x16, lsr #2
    //     0x71ed0c: tst             x16, HEAP, lsr #32
    //     0x71ed10: b.eq            #0x71ed18
    //     0x71ed14: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71ed18: r1 = Null
    //     0x71ed18: mov             x1, NULL
    // 0x71ed1c: r2 = 8
    //     0x71ed1c: mov             x2, #8
    // 0x71ed20: r0 = AllocateArray()
    //     0x71ed20: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71ed24: r16 = "value"
    //     0x71ed24: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71ed28: StoreField: r0->field_f = r16
    //     0x71ed28: stur            w16, [x0, #0xf]
    // 0x71ed2c: r16 = 434
    //     0x71ed2c: mov             x16, #0x1b2
    // 0x71ed30: StoreField: r0->field_13 = r16
    //     0x71ed30: stur            w16, [x0, #0x13]
    // 0x71ed34: r16 = "name"
    //     0x71ed34: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71ed38: ArrayStore: r0[0] = r16  ; List_4
    //     0x71ed38: stur            w16, [x0, #0x17]
    // 0x71ed3c: r16 = "Ukrainian"
    //     0x71ed3c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18510] "Ukrainian"
    //     0x71ed40: ldr             x16, [x16, #0x510]
    // 0x71ed44: StoreField: r0->field_1b = r16
    //     0x71ed44: stur            w16, [x0, #0x1b]
    // 0x71ed48: r16 = <String, dynamic>
    //     0x71ed48: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71ed4c: stp             x0, x16, [SP]
    // 0x71ed50: r0 = Map._fromLiteral()
    //     0x71ed50: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71ed54: ldur            x1, [fp, #-0x10]
    // 0x71ed58: ArrayStore: r1[42] = r0  ; List_4
    //     0x71ed58: add             x25, x1, #0xb7
    //     0x71ed5c: str             w0, [x25]
    //     0x71ed60: tbz             w0, #0, #0x71ed7c
    //     0x71ed64: ldurb           w16, [x1, #-1]
    //     0x71ed68: ldurb           w17, [x0, #-1]
    //     0x71ed6c: and             x16, x17, x16, lsr #2
    //     0x71ed70: tst             x16, HEAP, lsr #32
    //     0x71ed74: b.eq            #0x71ed7c
    //     0x71ed78: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71ed7c: r1 = Null
    //     0x71ed7c: mov             x1, NULL
    // 0x71ed80: r2 = 8
    //     0x71ed80: mov             x2, #8
    // 0x71ed84: r0 = AllocateArray()
    //     0x71ed84: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71ed88: r16 = "value"
    //     0x71ed88: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71ed8c: StoreField: r0->field_f = r16
    //     0x71ed8c: stur            w16, [x0, #0xf]
    // 0x71ed90: r16 = 216
    //     0x71ed90: mov             x16, #0xd8
    // 0x71ed94: StoreField: r0->field_13 = r16
    //     0x71ed94: stur            w16, [x0, #0x13]
    // 0x71ed98: r16 = "name"
    //     0x71ed98: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71ed9c: ArrayStore: r0[0] = r16  ; List_4
    //     0x71ed9c: stur            w16, [x0, #0x17]
    // 0x71eda0: r16 = "Nepali"
    //     0x71eda0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18518] "Nepali"
    //     0x71eda4: ldr             x16, [x16, #0x518]
    // 0x71eda8: StoreField: r0->field_1b = r16
    //     0x71eda8: stur            w16, [x0, #0x1b]
    // 0x71edac: r16 = <String, dynamic>
    //     0x71edac: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71edb0: stp             x0, x16, [SP]
    // 0x71edb4: r0 = Map._fromLiteral()
    //     0x71edb4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71edb8: ldur            x1, [fp, #-0x10]
    // 0x71edbc: ArrayStore: r1[43] = r0  ; List_4
    //     0x71edbc: add             x25, x1, #0xbb
    //     0x71edc0: str             w0, [x25]
    //     0x71edc4: tbz             w0, #0, #0x71ede0
    //     0x71edc8: ldurb           w16, [x1, #-1]
    //     0x71edcc: ldurb           w17, [x0, #-1]
    //     0x71edd0: and             x16, x17, x16, lsr #2
    //     0x71edd4: tst             x16, HEAP, lsr #32
    //     0x71edd8: b.eq            #0x71ede0
    //     0x71eddc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71ede0: r1 = Null
    //     0x71ede0: mov             x1, NULL
    // 0x71ede4: r2 = 8
    //     0x71ede4: mov             x2, #8
    // 0x71ede8: r0 = AllocateArray()
    //     0x71ede8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71edec: r16 = "value"
    //     0x71edec: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71edf0: StoreField: r0->field_f = r16
    //     0x71edf0: stur            w16, [x0, #0xf]
    // 0x71edf4: r16 = 456
    //     0x71edf4: mov             x16, #0x1c8
    // 0x71edf8: StoreField: r0->field_13 = r16
    //     0x71edf8: stur            w16, [x0, #0x13]
    // 0x71edfc: r16 = "name"
    //     0x71edfc: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71ee00: ArrayStore: r0[0] = r16  ; List_4
    //     0x71ee00: stur            w16, [x0, #0x17]
    // 0x71ee04: r16 = "Sinhala"
    //     0x71ee04: add             x16, PP, #0x18, lsl #12  ; [pp+0x18520] "Sinhala"
    //     0x71ee08: ldr             x16, [x16, #0x520]
    // 0x71ee0c: StoreField: r0->field_1b = r16
    //     0x71ee0c: stur            w16, [x0, #0x1b]
    // 0x71ee10: r16 = <String, dynamic>
    //     0x71ee10: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71ee14: stp             x0, x16, [SP]
    // 0x71ee18: r0 = Map._fromLiteral()
    //     0x71ee18: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71ee1c: ldur            x1, [fp, #-0x10]
    // 0x71ee20: ArrayStore: r1[44] = r0  ; List_4
    //     0x71ee20: add             x25, x1, #0xbf
    //     0x71ee24: str             w0, [x25]
    //     0x71ee28: tbz             w0, #0, #0x71ee44
    //     0x71ee2c: ldurb           w16, [x1, #-1]
    //     0x71ee30: ldurb           w17, [x0, #-1]
    //     0x71ee34: and             x16, x17, x16, lsr #2
    //     0x71ee38: tst             x16, HEAP, lsr #32
    //     0x71ee3c: b.eq            #0x71ee44
    //     0x71ee40: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71ee44: r1 = Null
    //     0x71ee44: mov             x1, NULL
    // 0x71ee48: r2 = 8
    //     0x71ee48: mov             x2, #8
    // 0x71ee4c: r0 = AllocateArray()
    //     0x71ee4c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71ee50: r16 = "value"
    //     0x71ee50: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71ee54: StoreField: r0->field_f = r16
    //     0x71ee54: stur            w16, [x0, #0xf]
    // 0x71ee58: r16 = 450
    //     0x71ee58: mov             x16, #0x1c2
    // 0x71ee5c: StoreField: r0->field_13 = r16
    //     0x71ee5c: stur            w16, [x0, #0x13]
    // 0x71ee60: r16 = "name"
    //     0x71ee60: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71ee64: ArrayStore: r0[0] = r16  ; List_4
    //     0x71ee64: stur            w16, [x0, #0x17]
    // 0x71ee68: r16 = "Gujarati"
    //     0x71ee68: add             x16, PP, #0x18, lsl #12  ; [pp+0x18528] "Gujarati"
    //     0x71ee6c: ldr             x16, [x16, #0x528]
    // 0x71ee70: StoreField: r0->field_1b = r16
    //     0x71ee70: stur            w16, [x0, #0x1b]
    // 0x71ee74: r16 = <String, dynamic>
    //     0x71ee74: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71ee78: stp             x0, x16, [SP]
    // 0x71ee7c: r0 = Map._fromLiteral()
    //     0x71ee7c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71ee80: ldur            x1, [fp, #-0x10]
    // 0x71ee84: ArrayStore: r1[45] = r0  ; List_4
    //     0x71ee84: add             x25, x1, #0xc3
    //     0x71ee88: str             w0, [x25]
    //     0x71ee8c: tbz             w0, #0, #0x71eea8
    //     0x71ee90: ldurb           w16, [x1, #-1]
    //     0x71ee94: ldurb           w17, [x0, #-1]
    //     0x71ee98: and             x16, x17, x16, lsr #2
    //     0x71ee9c: tst             x16, HEAP, lsr #32
    //     0x71eea0: b.eq            #0x71eea8
    //     0x71eea4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71eea8: r1 = Null
    //     0x71eea8: mov             x1, NULL
    // 0x71eeac: r2 = 8
    //     0x71eeac: mov             x2, #8
    // 0x71eeb0: r0 = AllocateArray()
    //     0x71eeb0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71eeb4: r16 = "value"
    //     0x71eeb4: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71eeb8: StoreField: r0->field_f = r16
    //     0x71eeb8: stur            w16, [x0, #0xf]
    // 0x71eebc: r16 = 452
    //     0x71eebc: mov             x16, #0x1c4
    // 0x71eec0: StoreField: r0->field_13 = r16
    //     0x71eec0: stur            w16, [x0, #0x13]
    // 0x71eec4: r16 = "name"
    //     0x71eec4: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71eec8: ArrayStore: r0[0] = r16  ; List_4
    //     0x71eec8: stur            w16, [x0, #0x17]
    // 0x71eecc: r16 = "Marathi"
    //     0x71eecc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18530] "Marathi"
    //     0x71eed0: ldr             x16, [x16, #0x530]
    // 0x71eed4: StoreField: r0->field_1b = r16
    //     0x71eed4: stur            w16, [x0, #0x1b]
    // 0x71eed8: r16 = <String, dynamic>
    //     0x71eed8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71eedc: stp             x0, x16, [SP]
    // 0x71eee0: r0 = Map._fromLiteral()
    //     0x71eee0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71eee4: ldur            x1, [fp, #-0x10]
    // 0x71eee8: ArrayStore: r1[46] = r0  ; List_4
    //     0x71eee8: add             x25, x1, #0xc7
    //     0x71eeec: str             w0, [x25]
    //     0x71eef0: tbz             w0, #0, #0x71ef0c
    //     0x71eef4: ldurb           w16, [x1, #-1]
    //     0x71eef8: ldurb           w17, [x0, #-1]
    //     0x71eefc: and             x16, x17, x16, lsr #2
    //     0x71ef00: tst             x16, HEAP, lsr #32
    //     0x71ef04: b.eq            #0x71ef0c
    //     0x71ef08: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71ef0c: r1 = Null
    //     0x71ef0c: mov             x1, NULL
    // 0x71ef10: r2 = 8
    //     0x71ef10: mov             x2, #8
    // 0x71ef14: r0 = AllocateArray()
    //     0x71ef14: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71ef18: r16 = "value"
    //     0x71ef18: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71ef1c: StoreField: r0->field_f = r16
    //     0x71ef1c: stur            w16, [x0, #0xf]
    // 0x71ef20: r16 = 454
    //     0x71ef20: mov             x16, #0x1c6
    // 0x71ef24: StoreField: r0->field_13 = r16
    //     0x71ef24: stur            w16, [x0, #0x13]
    // 0x71ef28: r16 = "name"
    //     0x71ef28: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71ef2c: ArrayStore: r0[0] = r16  ; List_4
    //     0x71ef2c: stur            w16, [x0, #0x17]
    // 0x71ef30: r16 = "Telugu"
    //     0x71ef30: add             x16, PP, #0x18, lsl #12  ; [pp+0x18538] "Telugu"
    //     0x71ef34: ldr             x16, [x16, #0x538]
    // 0x71ef38: StoreField: r0->field_1b = r16
    //     0x71ef38: stur            w16, [x0, #0x1b]
    // 0x71ef3c: r16 = <String, dynamic>
    //     0x71ef3c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71ef40: stp             x0, x16, [SP]
    // 0x71ef44: r0 = Map._fromLiteral()
    //     0x71ef44: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71ef48: ldur            x1, [fp, #-0x10]
    // 0x71ef4c: ArrayStore: r1[47] = r0  ; List_4
    //     0x71ef4c: add             x25, x1, #0xcb
    //     0x71ef50: str             w0, [x25]
    //     0x71ef54: tbz             w0, #0, #0x71ef70
    //     0x71ef58: ldurb           w16, [x1, #-1]
    //     0x71ef5c: ldurb           w17, [x0, #-1]
    //     0x71ef60: and             x16, x17, x16, lsr #2
    //     0x71ef64: tst             x16, HEAP, lsr #32
    //     0x71ef68: b.eq            #0x71ef70
    //     0x71ef6c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71ef70: r1 = Null
    //     0x71ef70: mov             x1, NULL
    // 0x71ef74: r2 = 8
    //     0x71ef74: mov             x2, #8
    // 0x71ef78: r0 = AllocateArray()
    //     0x71ef78: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71ef7c: r16 = "value"
    //     0x71ef7c: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71ef80: StoreField: r0->field_f = r16
    //     0x71ef80: stur            w16, [x0, #0xf]
    // 0x71ef84: r16 = 1542
    //     0x71ef84: mov             x16, #0x606
    // 0x71ef88: StoreField: r0->field_13 = r16
    //     0x71ef88: stur            w16, [x0, #0x13]
    // 0x71ef8c: r16 = "name"
    //     0x71ef8c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71ef90: ArrayStore: r0[0] = r16  ; List_4
    //     0x71ef90: stur            w16, [x0, #0x17]
    // 0x71ef94: r16 = "Kannada"
    //     0x71ef94: add             x16, PP, #0x18, lsl #12  ; [pp+0x18540] "Kannada"
    //     0x71ef98: ldr             x16, [x16, #0x540]
    // 0x71ef9c: StoreField: r0->field_1b = r16
    //     0x71ef9c: stur            w16, [x0, #0x1b]
    // 0x71efa0: r16 = <String, dynamic>
    //     0x71efa0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71efa4: stp             x0, x16, [SP]
    // 0x71efa8: r0 = Map._fromLiteral()
    //     0x71efa8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71efac: ldur            x1, [fp, #-0x10]
    // 0x71efb0: ArrayStore: r1[48] = r0  ; List_4
    //     0x71efb0: add             x25, x1, #0xcf
    //     0x71efb4: str             w0, [x25]
    //     0x71efb8: tbz             w0, #0, #0x71efd4
    //     0x71efbc: ldurb           w16, [x1, #-1]
    //     0x71efc0: ldurb           w17, [x0, #-1]
    //     0x71efc4: and             x16, x17, x16, lsr #2
    //     0x71efc8: tst             x16, HEAP, lsr #32
    //     0x71efcc: b.eq            #0x71efd4
    //     0x71efd0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71efd4: r1 = Null
    //     0x71efd4: mov             x1, NULL
    // 0x71efd8: r2 = 8
    //     0x71efd8: mov             x2, #8
    // 0x71efdc: r0 = AllocateArray()
    //     0x71efdc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71efe0: r16 = "value"
    //     0x71efe0: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71efe4: StoreField: r0->field_f = r16
    //     0x71efe4: stur            w16, [x0, #0xf]
    // 0x71efe8: r16 = 240
    //     0x71efe8: mov             x16, #0xf0
    // 0x71efec: StoreField: r0->field_13 = r16
    //     0x71efec: stur            w16, [x0, #0x13]
    // 0x71eff0: r16 = "name"
    //     0x71eff0: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71eff4: ArrayStore: r0[0] = r16  ; List_4
    //     0x71eff4: stur            w16, [x0, #0x17]
    // 0x71eff8: r16 = "Assamese"
    //     0x71eff8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18548] "Assamese"
    //     0x71effc: ldr             x16, [x16, #0x548]
    // 0x71f000: StoreField: r0->field_1b = r16
    //     0x71f000: stur            w16, [x0, #0x1b]
    // 0x71f004: r16 = <String, dynamic>
    //     0x71f004: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71f008: stp             x0, x16, [SP]
    // 0x71f00c: r0 = Map._fromLiteral()
    //     0x71f00c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71f010: ldur            x1, [fp, #-0x10]
    // 0x71f014: ArrayStore: r1[49] = r0  ; List_4
    //     0x71f014: add             x25, x1, #0xd3
    //     0x71f018: str             w0, [x25]
    //     0x71f01c: tbz             w0, #0, #0x71f038
    //     0x71f020: ldurb           w16, [x1, #-1]
    //     0x71f024: ldurb           w17, [x0, #-1]
    //     0x71f028: and             x16, x17, x16, lsr #2
    //     0x71f02c: tst             x16, HEAP, lsr #32
    //     0x71f030: b.eq            #0x71f038
    //     0x71f034: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71f038: r1 = Null
    //     0x71f038: mov             x1, NULL
    // 0x71f03c: r2 = 8
    //     0x71f03c: mov             x2, #8
    // 0x71f040: r0 = AllocateArray()
    //     0x71f040: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71f044: r16 = "value"
    //     0x71f044: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71f048: StoreField: r0->field_f = r16
    //     0x71f048: stur            w16, [x0, #0xf]
    // 0x71f04c: r16 = 1680
    //     0x71f04c: mov             x16, #0x690
    // 0x71f050: StoreField: r0->field_13 = r16
    //     0x71f050: stur            w16, [x0, #0x13]
    // 0x71f054: r16 = "name"
    //     0x71f054: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71f058: ArrayStore: r0[0] = r16  ; List_4
    //     0x71f058: stur            w16, [x0, #0x17]
    // 0x71f05c: r16 = "Divehi"
    //     0x71f05c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18550] "Divehi"
    //     0x71f060: ldr             x16, [x16, #0x550]
    // 0x71f064: StoreField: r0->field_1b = r16
    //     0x71f064: stur            w16, [x0, #0x1b]
    // 0x71f068: r16 = <String, dynamic>
    //     0x71f068: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71f06c: stp             x0, x16, [SP]
    // 0x71f070: r0 = Map._fromLiteral()
    //     0x71f070: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71f074: ldur            x1, [fp, #-0x10]
    // 0x71f078: ArrayStore: r1[50] = r0  ; List_4
    //     0x71f078: add             x25, x1, #0xd7
    //     0x71f07c: str             w0, [x25]
    //     0x71f080: tbz             w0, #0, #0x71f09c
    //     0x71f084: ldurb           w16, [x1, #-1]
    //     0x71f088: ldurb           w17, [x0, #-1]
    //     0x71f08c: and             x16, x17, x16, lsr #2
    //     0x71f090: tst             x16, HEAP, lsr #32
    //     0x71f094: b.eq            #0x71f09c
    //     0x71f098: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71f09c: r1 = Null
    //     0x71f09c: mov             x1, NULL
    // 0x71f0a0: r2 = 8
    //     0x71f0a0: mov             x2, #8
    // 0x71f0a4: r0 = AllocateArray()
    //     0x71f0a4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71f0a8: r16 = "value"
    //     0x71f0a8: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71f0ac: StoreField: r0->field_f = r16
    //     0x71f0ac: stur            w16, [x0, #0xf]
    // 0x71f0b0: r16 = 422
    //     0x71f0b0: mov             x16, #0x1a6
    // 0x71f0b4: StoreField: r0->field_13 = r16
    //     0x71f0b4: stur            w16, [x0, #0x13]
    // 0x71f0b8: r16 = "name"
    //     0x71f0b8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71f0bc: ArrayStore: r0[0] = r16  ; List_4
    //     0x71f0bc: stur            w16, [x0, #0x17]
    // 0x71f0c0: r16 = "Tagalog"
    //     0x71f0c0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18558] "Tagalog"
    //     0x71f0c4: ldr             x16, [x16, #0x558]
    // 0x71f0c8: StoreField: r0->field_1b = r16
    //     0x71f0c8: stur            w16, [x0, #0x1b]
    // 0x71f0cc: r16 = <String, dynamic>
    //     0x71f0cc: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71f0d0: stp             x0, x16, [SP]
    // 0x71f0d4: r0 = Map._fromLiteral()
    //     0x71f0d4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71f0d8: ldur            x1, [fp, #-0x10]
    // 0x71f0dc: ArrayStore: r1[51] = r0  ; List_4
    //     0x71f0dc: add             x25, x1, #0xdb
    //     0x71f0e0: str             w0, [x25]
    //     0x71f0e4: tbz             w0, #0, #0x71f100
    //     0x71f0e8: ldurb           w16, [x1, #-1]
    //     0x71f0ec: ldurb           w17, [x0, #-1]
    //     0x71f0f0: and             x16, x17, x16, lsr #2
    //     0x71f0f4: tst             x16, HEAP, lsr #32
    //     0x71f0f8: b.eq            #0x71f100
    //     0x71f0fc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71f100: r1 = Null
    //     0x71f100: mov             x1, NULL
    // 0x71f104: r2 = 8
    //     0x71f104: mov             x2, #8
    // 0x71f108: r0 = AllocateArray()
    //     0x71f108: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71f10c: r16 = "value"
    //     0x71f10c: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71f110: StoreField: r0->field_f = r16
    //     0x71f110: stur            w16, [x0, #0xf]
    // 0x71f114: r16 = 256
    //     0x71f114: mov             x16, #0x100
    // 0x71f118: StoreField: r0->field_13 = r16
    //     0x71f118: stur            w16, [x0, #0x13]
    // 0x71f11c: r16 = "name"
    //     0x71f11c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71f120: ArrayStore: r0[0] = r16  ; List_4
    //     0x71f120: stur            w16, [x0, #0x17]
    // 0x71f124: r16 = "Khmer"
    //     0x71f124: add             x16, PP, #0x18, lsl #12  ; [pp+0x18560] "Khmer"
    //     0x71f128: ldr             x16, [x16, #0x560]
    // 0x71f12c: StoreField: r0->field_1b = r16
    //     0x71f12c: stur            w16, [x0, #0x1b]
    // 0x71f130: r16 = <String, dynamic>
    //     0x71f130: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71f134: stp             x0, x16, [SP]
    // 0x71f138: r0 = Map._fromLiteral()
    //     0x71f138: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71f13c: ldur            x1, [fp, #-0x10]
    // 0x71f140: ArrayStore: r1[52] = r0  ; List_4
    //     0x71f140: add             x25, x1, #0xdf
    //     0x71f144: str             w0, [x25]
    //     0x71f148: tbz             w0, #0, #0x71f164
    //     0x71f14c: ldurb           w16, [x1, #-1]
    //     0x71f150: ldurb           w17, [x0, #-1]
    //     0x71f154: and             x16, x17, x16, lsr #2
    //     0x71f158: tst             x16, HEAP, lsr #32
    //     0x71f15c: b.eq            #0x71f164
    //     0x71f160: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71f164: r1 = Null
    //     0x71f164: mov             x1, NULL
    // 0x71f168: r2 = 8
    //     0x71f168: mov             x2, #8
    // 0x71f16c: r0 = AllocateArray()
    //     0x71f16c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71f170: r16 = "value"
    //     0x71f170: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71f174: StoreField: r0->field_f = r16
    //     0x71f174: stur            w16, [x0, #0xf]
    // 0x71f178: r16 = 250
    //     0x71f178: mov             x16, #0xfa
    // 0x71f17c: StoreField: r0->field_13 = r16
    //     0x71f17c: stur            w16, [x0, #0x13]
    // 0x71f180: r16 = "name"
    //     0x71f180: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71f184: ArrayStore: r0[0] = r16  ; List_4
    //     0x71f184: stur            w16, [x0, #0x17]
    // 0x71f188: r16 = "Yoruba"
    //     0x71f188: add             x16, PP, #0x18, lsl #12  ; [pp+0x18568] "Yoruba"
    //     0x71f18c: ldr             x16, [x16, #0x568]
    // 0x71f190: StoreField: r0->field_1b = r16
    //     0x71f190: stur            w16, [x0, #0x1b]
    // 0x71f194: r16 = <String, dynamic>
    //     0x71f194: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71f198: stp             x0, x16, [SP]
    // 0x71f19c: r0 = Map._fromLiteral()
    //     0x71f19c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71f1a0: ldur            x1, [fp, #-0x10]
    // 0x71f1a4: ArrayStore: r1[53] = r0  ; List_4
    //     0x71f1a4: add             x25, x1, #0xe3
    //     0x71f1a8: str             w0, [x25]
    //     0x71f1ac: tbz             w0, #0, #0x71f1c8
    //     0x71f1b0: ldurb           w16, [x1, #-1]
    //     0x71f1b4: ldurb           w17, [x0, #-1]
    //     0x71f1b8: and             x16, x17, x16, lsr #2
    //     0x71f1bc: tst             x16, HEAP, lsr #32
    //     0x71f1c0: b.eq            #0x71f1c8
    //     0x71f1c4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71f1c8: r1 = Null
    //     0x71f1c8: mov             x1, NULL
    // 0x71f1cc: r2 = 8
    //     0x71f1cc: mov             x2, #8
    // 0x71f1d0: r0 = AllocateArray()
    //     0x71f1d0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71f1d4: r16 = "value"
    //     0x71f1d4: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71f1d8: StoreField: r0->field_f = r16
    //     0x71f1d8: stur            w16, [x0, #0xf]
    // 0x71f1dc: r16 = 222
    //     0x71f1dc: mov             x16, #0xde
    // 0x71f1e0: StoreField: r0->field_13 = r16
    //     0x71f1e0: stur            w16, [x0, #0x13]
    // 0x71f1e4: r16 = "name"
    //     0x71f1e4: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71f1e8: ArrayStore: r0[0] = r16  ; List_4
    //     0x71f1e8: stur            w16, [x0, #0x17]
    // 0x71f1ec: r16 = "Oromo"
    //     0x71f1ec: add             x16, PP, #0x18, lsl #12  ; [pp+0x18570] "Oromo"
    //     0x71f1f0: ldr             x16, [x16, #0x570]
    // 0x71f1f4: StoreField: r0->field_1b = r16
    //     0x71f1f4: stur            w16, [x0, #0x1b]
    // 0x71f1f8: r16 = <String, dynamic>
    //     0x71f1f8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71f1fc: stp             x0, x16, [SP]
    // 0x71f200: r0 = Map._fromLiteral()
    //     0x71f200: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71f204: ldur            x1, [fp, #-0x10]
    // 0x71f208: ArrayStore: r1[54] = r0  ; List_4
    //     0x71f208: add             x25, x1, #0xe7
    //     0x71f20c: str             w0, [x25]
    //     0x71f210: tbz             w0, #0, #0x71f22c
    //     0x71f214: ldurb           w16, [x1, #-1]
    //     0x71f218: ldurb           w17, [x0, #-1]
    //     0x71f21c: and             x16, x17, x16, lsr #2
    //     0x71f220: tst             x16, HEAP, lsr #32
    //     0x71f224: b.eq            #0x71f22c
    //     0x71f228: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71f22c: r1 = Null
    //     0x71f22c: mov             x1, NULL
    // 0x71f230: r2 = 8
    //     0x71f230: mov             x2, #8
    // 0x71f234: r0 = AllocateArray()
    //     0x71f234: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71f238: r16 = "value"
    //     0x71f238: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71f23c: StoreField: r0->field_f = r16
    //     0x71f23c: stur            w16, [x0, #0xf]
    // 0x71f240: r16 = 1590
    //     0x71f240: mov             x16, #0x636
    // 0x71f244: StoreField: r0->field_13 = r16
    //     0x71f244: stur            w16, [x0, #0x13]
    // 0x71f248: r16 = "name"
    //     0x71f248: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71f24c: ArrayStore: r0[0] = r16  ; List_4
    //     0x71f24c: stur            w16, [x0, #0x17]
    // 0x71f250: r16 = "Bambara"
    //     0x71f250: add             x16, PP, #0x18, lsl #12  ; [pp+0x18578] "Bambara"
    //     0x71f254: ldr             x16, [x16, #0x578]
    // 0x71f258: StoreField: r0->field_1b = r16
    //     0x71f258: stur            w16, [x0, #0x1b]
    // 0x71f25c: r16 = <String, dynamic>
    //     0x71f25c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71f260: stp             x0, x16, [SP]
    // 0x71f264: r0 = Map._fromLiteral()
    //     0x71f264: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71f268: ldur            x1, [fp, #-0x10]
    // 0x71f26c: ArrayStore: r1[55] = r0  ; List_4
    //     0x71f26c: add             x25, x1, #0xeb
    //     0x71f270: str             w0, [x25]
    //     0x71f274: tbz             w0, #0, #0x71f290
    //     0x71f278: ldurb           w16, [x1, #-1]
    //     0x71f27c: ldurb           w17, [x0, #-1]
    //     0x71f280: and             x16, x17, x16, lsr #2
    //     0x71f284: tst             x16, HEAP, lsr #32
    //     0x71f288: b.eq            #0x71f290
    //     0x71f28c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71f290: r1 = Null
    //     0x71f290: mov             x1, NULL
    // 0x71f294: r2 = 8
    //     0x71f294: mov             x2, #8
    // 0x71f298: r0 = AllocateArray()
    //     0x71f298: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71f29c: r16 = "value"
    //     0x71f29c: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71f2a0: StoreField: r0->field_f = r16
    //     0x71f2a0: stur            w16, [x0, #0xf]
    // 0x71f2a4: r16 = 1548
    //     0x71f2a4: mov             x16, #0x60c
    // 0x71f2a8: StoreField: r0->field_13 = r16
    //     0x71f2a8: stur            w16, [x0, #0x13]
    // 0x71f2ac: r16 = "name"
    //     0x71f2ac: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71f2b0: ArrayStore: r0[0] = r16  ; List_4
    //     0x71f2b0: stur            w16, [x0, #0x17]
    // 0x71f2b4: r16 = "Kinyarwanda"
    //     0x71f2b4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18580] "Kinyarwanda"
    //     0x71f2b8: ldr             x16, [x16, #0x580]
    // 0x71f2bc: StoreField: r0->field_1b = r16
    //     0x71f2bc: stur            w16, [x0, #0x1b]
    // 0x71f2c0: r16 = <String, dynamic>
    //     0x71f2c0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71f2c4: stp             x0, x16, [SP]
    // 0x71f2c8: r0 = Map._fromLiteral()
    //     0x71f2c8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71f2cc: ldur            x1, [fp, #-0x10]
    // 0x71f2d0: ArrayStore: r1[56] = r0  ; List_4
    //     0x71f2d0: add             x25, x1, #0xef
    //     0x71f2d4: str             w0, [x25]
    //     0x71f2d8: tbz             w0, #0, #0x71f2f4
    //     0x71f2dc: ldurb           w16, [x1, #-1]
    //     0x71f2e0: ldurb           w17, [x0, #-1]
    //     0x71f2e4: and             x16, x17, x16, lsr #2
    //     0x71f2e8: tst             x16, HEAP, lsr #32
    //     0x71f2ec: b.eq            #0x71f2f4
    //     0x71f2f0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71f2f4: r1 = Null
    //     0x71f2f4: mov             x1, NULL
    // 0x71f2f8: r2 = 8
    //     0x71f2f8: mov             x2, #8
    // 0x71f2fc: r0 = AllocateArray()
    //     0x71f2fc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71f300: r16 = "value"
    //     0x71f300: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71f304: StoreField: r0->field_f = r16
    //     0x71f304: stur            w16, [x0, #0xf]
    // 0x71f308: r16 = 476
    //     0x71f308: mov             x16, #0x1dc
    // 0x71f30c: StoreField: r0->field_13 = r16
    //     0x71f30c: stur            w16, [x0, #0x13]
    // 0x71f310: r16 = "name"
    //     0x71f310: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71f314: ArrayStore: r0[0] = r16  ; List_4
    //     0x71f314: stur            w16, [x0, #0x17]
    // 0x71f318: r16 = "Sindhi"
    //     0x71f318: add             x16, PP, #0x18, lsl #12  ; [pp+0x18588] "Sindhi"
    //     0x71f31c: ldr             x16, [x16, #0x588]
    // 0x71f320: StoreField: r0->field_1b = r16
    //     0x71f320: stur            w16, [x0, #0x1b]
    // 0x71f324: r16 = <String, dynamic>
    //     0x71f324: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71f328: stp             x0, x16, [SP]
    // 0x71f32c: r0 = Map._fromLiteral()
    //     0x71f32c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71f330: ldur            x1, [fp, #-0x10]
    // 0x71f334: ArrayStore: r1[57] = r0  ; List_4
    //     0x71f334: add             x25, x1, #0xf3
    //     0x71f338: str             w0, [x25]
    //     0x71f33c: tbz             w0, #0, #0x71f358
    //     0x71f340: ldurb           w16, [x1, #-1]
    //     0x71f344: ldurb           w17, [x0, #-1]
    //     0x71f348: and             x16, x17, x16, lsr #2
    //     0x71f34c: tst             x16, HEAP, lsr #32
    //     0x71f350: b.eq            #0x71f358
    //     0x71f354: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71f358: r1 = Null
    //     0x71f358: mov             x1, NULL
    // 0x71f35c: r2 = 8
    //     0x71f35c: mov             x2, #8
    // 0x71f360: r0 = AllocateArray()
    //     0x71f360: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71f364: r16 = "value"
    //     0x71f364: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71f368: StoreField: r0->field_f = r16
    //     0x71f368: stur            w16, [x0, #0xf]
    // 0x71f36c: r16 = 212
    //     0x71f36c: mov             x16, #0xd4
    // 0x71f370: StoreField: r0->field_13 = r16
    //     0x71f370: stur            w16, [x0, #0x13]
    // 0x71f374: r16 = "name"
    //     0x71f374: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71f378: ArrayStore: r0[0] = r16  ; List_4
    //     0x71f378: stur            w16, [x0, #0x17]
    // 0x71f37c: r16 = "Chechen"
    //     0x71f37c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18590] "Chechen"
    //     0x71f380: ldr             x16, [x16, #0x590]
    // 0x71f384: StoreField: r0->field_1b = r16
    //     0x71f384: stur            w16, [x0, #0x1b]
    // 0x71f388: r16 = <String, dynamic>
    //     0x71f388: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71f38c: stp             x0, x16, [SP]
    // 0x71f390: r0 = Map._fromLiteral()
    //     0x71f390: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71f394: ldur            x1, [fp, #-0x10]
    // 0x71f398: ArrayStore: r1[58] = r0  ; List_4
    //     0x71f398: add             x25, x1, #0xf7
    //     0x71f39c: str             w0, [x25]
    //     0x71f3a0: tbz             w0, #0, #0x71f3bc
    //     0x71f3a4: ldurb           w16, [x1, #-1]
    //     0x71f3a8: ldurb           w17, [x0, #-1]
    //     0x71f3ac: and             x16, x17, x16, lsr #2
    //     0x71f3b0: tst             x16, HEAP, lsr #32
    //     0x71f3b4: b.eq            #0x71f3bc
    //     0x71f3b8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71f3bc: r1 = Null
    //     0x71f3bc: mov             x1, NULL
    // 0x71f3c0: r2 = 8
    //     0x71f3c0: mov             x2, #8
    // 0x71f3c4: r0 = AllocateArray()
    //     0x71f3c4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71f3c8: r16 = "value"
    //     0x71f3c8: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71f3cc: StoreField: r0->field_f = r16
    //     0x71f3cc: stur            w16, [x0, #0xf]
    // 0x71f3d0: r16 = 106
    //     0x71f3d0: mov             x16, #0x6a
    // 0x71f3d4: StoreField: r0->field_13 = r16
    //     0x71f3d4: stur            w16, [x0, #0x13]
    // 0x71f3d8: r16 = "name"
    //     0x71f3d8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71f3dc: ArrayStore: r0[0] = r16  ; List_4
    //     0x71f3dc: stur            w16, [x0, #0x17]
    // 0x71f3e0: r16 = "Tatar"
    //     0x71f3e0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18598] "Tatar"
    //     0x71f3e4: ldr             x16, [x16, #0x598]
    // 0x71f3e8: StoreField: r0->field_1b = r16
    //     0x71f3e8: stur            w16, [x0, #0x1b]
    // 0x71f3ec: r16 = <String, dynamic>
    //     0x71f3ec: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71f3f0: stp             x0, x16, [SP]
    // 0x71f3f4: r0 = Map._fromLiteral()
    //     0x71f3f4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71f3f8: ldur            x1, [fp, #-0x10]
    // 0x71f3fc: ArrayStore: r1[59] = r0  ; List_4
    //     0x71f3fc: add             x25, x1, #0xfb
    //     0x71f400: str             w0, [x25]
    //     0x71f404: tbz             w0, #0, #0x71f420
    //     0x71f408: ldurb           w16, [x1, #-1]
    //     0x71f40c: ldurb           w17, [x0, #-1]
    //     0x71f410: and             x16, x17, x16, lsr #2
    //     0x71f414: tst             x16, HEAP, lsr #32
    //     0x71f418: b.eq            #0x71f420
    //     0x71f41c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71f420: r1 = Null
    //     0x71f420: mov             x1, NULL
    // 0x71f424: r2 = 8
    //     0x71f424: mov             x2, #8
    // 0x71f428: r0 = AllocateArray()
    //     0x71f428: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71f42c: r16 = "value"
    //     0x71f42c: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71f430: StoreField: r0->field_f = r16
    //     0x71f430: stur            w16, [x0, #0xf]
    // 0x71f434: r16 = 1570
    //     0x71f434: mov             x16, #0x622
    // 0x71f438: StoreField: r0->field_13 = r16
    //     0x71f438: stur            w16, [x0, #0x13]
    // 0x71f43c: r16 = "name"
    //     0x71f43c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71f440: ArrayStore: r0[0] = r16  ; List_4
    //     0x71f440: stur            w16, [x0, #0x17]
    // 0x71f444: r16 = "Dari"
    //     0x71f444: add             x16, PP, #0x18, lsl #12  ; [pp+0x185a0] "Dari"
    //     0x71f448: ldr             x16, [x16, #0x5a0]
    // 0x71f44c: StoreField: r0->field_1b = r16
    //     0x71f44c: stur            w16, [x0, #0x1b]
    // 0x71f450: r16 = <String, dynamic>
    //     0x71f450: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71f454: stp             x0, x16, [SP]
    // 0x71f458: r0 = Map._fromLiteral()
    //     0x71f458: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71f45c: ldur            x1, [fp, #-0x10]
    // 0x71f460: ArrayStore: r1[60] = r0  ; List_4
    //     0x71f460: add             x25, x1, #0xff
    //     0x71f464: str             w0, [x25]
    //     0x71f468: tbz             w0, #0, #0x71f484
    //     0x71f46c: ldurb           w16, [x1, #-1]
    //     0x71f470: ldurb           w17, [x0, #-1]
    //     0x71f474: and             x16, x17, x16, lsr #2
    //     0x71f478: tst             x16, HEAP, lsr #32
    //     0x71f47c: b.eq            #0x71f484
    //     0x71f480: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71f484: r1 = Null
    //     0x71f484: mov             x1, NULL
    // 0x71f488: r2 = 8
    //     0x71f488: mov             x2, #8
    // 0x71f48c: r0 = AllocateArray()
    //     0x71f48c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71f490: r16 = "value"
    //     0x71f490: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71f494: StoreField: r0->field_f = r16
    //     0x71f494: stur            w16, [x0, #0xf]
    // 0x71f498: r16 = 472
    //     0x71f498: mov             x16, #0x1d8
    // 0x71f49c: StoreField: r0->field_13 = r16
    //     0x71f49c: stur            w16, [x0, #0x13]
    // 0x71f4a0: r16 = "name"
    //     0x71f4a0: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71f4a4: ArrayStore: r0[0] = r16  ; List_4
    //     0x71f4a4: stur            w16, [x0, #0x17]
    // 0x71f4a8: r16 = "Amazigh"
    //     0x71f4a8: add             x16, PP, #0x18, lsl #12  ; [pp+0x185a8] "Amazigh"
    //     0x71f4ac: ldr             x16, [x16, #0x5a8]
    // 0x71f4b0: StoreField: r0->field_1b = r16
    //     0x71f4b0: stur            w16, [x0, #0x1b]
    // 0x71f4b4: r16 = <String, dynamic>
    //     0x71f4b4: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71f4b8: stp             x0, x16, [SP]
    // 0x71f4bc: r0 = Map._fromLiteral()
    //     0x71f4bc: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71f4c0: ldur            x1, [fp, #-0x10]
    // 0x71f4c4: r2 = 122
    //     0x71f4c4: mov             x2, #0x7a
    // 0x71f4c8: ArrayStore: r1[r2] = r0  ; List_4
    //     0x71f4c8: add             x25, x1, w2, sxtw #1
    //     0x71f4cc: add             x25, x25, #0xf
    //     0x71f4d0: str             w0, [x25]
    //     0x71f4d4: tbz             w0, #0, #0x71f4f0
    //     0x71f4d8: ldurb           w16, [x1, #-1]
    //     0x71f4dc: ldurb           w17, [x0, #-1]
    //     0x71f4e0: and             x16, x17, x16, lsr #2
    //     0x71f4e4: tst             x16, HEAP, lsr #32
    //     0x71f4e8: b.eq            #0x71f4f0
    //     0x71f4ec: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71f4f0: r1 = Null
    //     0x71f4f0: mov             x1, NULL
    // 0x71f4f4: r2 = 8
    //     0x71f4f4: mov             x2, #8
    // 0x71f4f8: r0 = AllocateArray()
    //     0x71f4f8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71f4fc: r16 = "value"
    //     0x71f4fc: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71f500: StoreField: r0->field_f = r16
    //     0x71f500: stur            w16, [x0, #0xf]
    // 0x71f504: r16 = 466
    //     0x71f504: mov             x16, #0x1d2
    // 0x71f508: StoreField: r0->field_13 = r16
    //     0x71f508: stur            w16, [x0, #0x13]
    // 0x71f50c: r16 = "name"
    //     0x71f50c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71f510: ArrayStore: r0[0] = r16  ; List_4
    //     0x71f510: stur            w16, [x0, #0x17]
    // 0x71f514: r16 = "Hebrew"
    //     0x71f514: add             x16, PP, #0x18, lsl #12  ; [pp+0x185b0] "Hebrew"
    //     0x71f518: ldr             x16, [x16, #0x5b0]
    // 0x71f51c: StoreField: r0->field_1b = r16
    //     0x71f51c: stur            w16, [x0, #0x1b]
    // 0x71f520: r16 = <String, dynamic>
    //     0x71f520: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71f524: stp             x0, x16, [SP]
    // 0x71f528: r0 = Map._fromLiteral()
    //     0x71f528: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71f52c: ldur            x1, [fp, #-0x10]
    // 0x71f530: r2 = 124
    //     0x71f530: mov             x2, #0x7c
    // 0x71f534: ArrayStore: r1[r2] = r0  ; List_4
    //     0x71f534: add             x25, x1, w2, sxtw #1
    //     0x71f538: add             x25, x25, #0xf
    //     0x71f53c: str             w0, [x25]
    //     0x71f540: tbz             w0, #0, #0x71f55c
    //     0x71f544: ldurb           w16, [x1, #-1]
    //     0x71f548: ldurb           w17, [x0, #-1]
    //     0x71f54c: and             x16, x17, x16, lsr #2
    //     0x71f550: tst             x16, HEAP, lsr #32
    //     0x71f554: b.eq            #0x71f55c
    //     0x71f558: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71f55c: r1 = Null
    //     0x71f55c: mov             x1, NULL
    // 0x71f560: r2 = 8
    //     0x71f560: mov             x2, #8
    // 0x71f564: r0 = AllocateArray()
    //     0x71f564: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71f568: r16 = "value"
    //     0x71f568: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x71f56c: StoreField: r0->field_f = r16
    //     0x71f56c: stur            w16, [x0, #0xf]
    // 0x71f570: r16 = 464
    //     0x71f570: mov             x16, #0x1d0
    // 0x71f574: StoreField: r0->field_13 = r16
    //     0x71f574: stur            w16, [x0, #0x13]
    // 0x71f578: r16 = "name"
    //     0x71f578: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x71f57c: ArrayStore: r0[0] = r16  ; List_4
    //     0x71f57c: stur            w16, [x0, #0x17]
    // 0x71f580: r16 = "Ganda"
    //     0x71f580: add             x16, PP, #0x18, lsl #12  ; [pp+0x185b8] "Ganda"
    //     0x71f584: ldr             x16, [x16, #0x5b8]
    // 0x71f588: StoreField: r0->field_1b = r16
    //     0x71f588: stur            w16, [x0, #0x1b]
    // 0x71f58c: r16 = <String, dynamic>
    //     0x71f58c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71f590: stp             x0, x16, [SP]
    // 0x71f594: r0 = Map._fromLiteral()
    //     0x71f594: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71f598: ldur            x1, [fp, #-0x10]
    // 0x71f59c: r2 = 126
    //     0x71f59c: mov             x2, #0x7e
    // 0x71f5a0: ArrayStore: r1[r2] = r0  ; List_4
    //     0x71f5a0: add             x25, x1, w2, sxtw #1
    //     0x71f5a4: add             x25, x25, #0xf
    //     0x71f5a8: str             w0, [x25]
    //     0x71f5ac: tbz             w0, #0, #0x71f5c8
    //     0x71f5b0: ldurb           w16, [x1, #-1]
    //     0x71f5b4: ldurb           w17, [x0, #-1]
    //     0x71f5b8: and             x16, x17, x16, lsr #2
    //     0x71f5bc: tst             x16, HEAP, lsr #32
    //     0x71f5c0: b.eq            #0x71f5c8
    //     0x71f5c4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x71f5c8: r1 = <Map<String, dynamic>>
    //     0x71f5c8: ldr             x1, [PP, #0x3918]  ; [pp+0x3918] TypeArguments: <Map<String, dynamic>>
    // 0x71f5cc: r0 = AllocateGrowableArray()
    //     0x71f5cc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x71f5d0: ldur            x1, [fp, #-0x10]
    // 0x71f5d4: StoreField: r0->field_f = r1
    //     0x71f5d4: stur            w1, [x0, #0xf]
    // 0x71f5d8: r1 = 128
    //     0x71f5d8: mov             x1, #0x80
    // 0x71f5dc: StoreField: r0->field_b = r1
    //     0x71f5dc: stur            w1, [x0, #0xb]
    // 0x71f5e0: LeaveFrame
    //     0x71f5e0: mov             SP, fp
    //     0x71f5e4: ldp             fp, lr, [SP], #0x10
    // 0x71f5e8: ret
    //     0x71f5e8: ret             
    // 0x71f5ec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71f5ec: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71f5f0: b               #0x71dcb8
  }
}

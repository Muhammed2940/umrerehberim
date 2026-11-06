// lib: , url: package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart

// class id: 1049608, size: 0x8
class :: {

  static _ buildDialogTextField(/* No info */) {
    // ** addr: 0x6f4c3c, size: 0x2ec
    // 0x6f4c3c: EnterFrame
    //     0x6f4c3c: stp             fp, lr, [SP, #-0x10]!
    //     0x6f4c40: mov             fp, SP
    // 0x6f4c44: AllocStack(0x40)
    //     0x6f4c44: sub             SP, SP, #0x40
    // 0x6f4c48: SetupParameters(dynamic _ /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */, dynamic _ /* r3 => r3, fp-0x20 */, {dynamic keyboardType = Null /* r0, fp-0x8 */})
    //     0x6f4c48: stur            x1, [fp, #-0x10]
    //     0x6f4c4c: stur            x2, [fp, #-0x18]
    //     0x6f4c50: stur            x3, [fp, #-0x20]
    //     0x6f4c54: ldur            w0, [x4, #0x13]
    //     0x6f4c58: ldur            w5, [x4, #0x1f]
    //     0x6f4c5c: add             x5, x5, HEAP, lsl #32
    //     0x6f4c60: add             x16, PP, #0x14, lsl #12  ; [pp+0x14480] "keyboardType"
    //     0x6f4c64: ldr             x16, [x16, #0x480]
    //     0x6f4c68: cmp             w5, w16
    //     0x6f4c6c: b.ne            #0x6f4c88
    //     0x6f4c70: ldur            w5, [x4, #0x23]
    //     0x6f4c74: add             x5, x5, HEAP, lsl #32
    //     0x6f4c78: sub             w4, w0, w5
    //     0x6f4c7c: add             x0, fp, w4, sxtw #2
    //     0x6f4c80: ldr             x0, [x0, #8]
    //     0x6f4c84: b               #0x6f4c8c
    //     0x6f4c88: mov             x0, NULL
    //     0x6f4c8c: stur            x0, [fp, #-8]
    // 0x6f4c90: CheckStackOverflow
    //     0x6f4c90: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f4c94: cmp             SP, x16
    //     0x6f4c98: b.ls            #0x6f4f20
    // 0x6f4c9c: r0 = Icon()
    //     0x6f4c9c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x6f4ca0: mov             x1, x0
    // 0x6f4ca4: ldur            x0, [fp, #-0x20]
    // 0x6f4ca8: stur            x1, [fp, #-0x28]
    // 0x6f4cac: StoreField: r1->field_b = r0
    //     0x6f4cac: stur            w0, [x1, #0xb]
    // 0x6f4cb0: r0 = Instance_Color
    //     0x6f4cb0: add             x0, PP, #0x19, lsl #12  ; [pp+0x191e8] Obj!Color@a25301
    //     0x6f4cb4: ldr             x0, [x0, #0x1e8]
    // 0x6f4cb8: StoreField: r1->field_23 = r0
    //     0x6f4cb8: stur            w0, [x1, #0x23]
    // 0x6f4cbc: r0 = Radius()
    //     0x6f4cbc: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6f4cc0: d0 = 8.000000
    //     0x6f4cc0: fmov            d0, #8.00000000
    // 0x6f4cc4: stur            x0, [fp, #-0x20]
    // 0x6f4cc8: StoreField: r0->field_7 = d0
    //     0x6f4cc8: stur            d0, [x0, #7]
    // 0x6f4ccc: StoreField: r0->field_f = d0
    //     0x6f4ccc: stur            d0, [x0, #0xf]
    // 0x6f4cd0: r0 = BorderRadius()
    //     0x6f4cd0: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6f4cd4: mov             x2, x0
    // 0x6f4cd8: ldur            x0, [fp, #-0x20]
    // 0x6f4cdc: stur            x2, [fp, #-0x30]
    // 0x6f4ce0: StoreField: r2->field_7 = r0
    //     0x6f4ce0: stur            w0, [x2, #7]
    // 0x6f4ce4: StoreField: r2->field_b = r0
    //     0x6f4ce4: stur            w0, [x2, #0xb]
    // 0x6f4ce8: StoreField: r2->field_f = r0
    //     0x6f4ce8: stur            w0, [x2, #0xf]
    // 0x6f4cec: StoreField: r2->field_13 = r0
    //     0x6f4cec: stur            w0, [x2, #0x13]
    // 0x6f4cf0: r16 = 0.200000
    //     0x6f4cf0: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x6f4cf4: ldr             x16, [x16, #0x1f0]
    // 0x6f4cf8: str             x16, [SP]
    // 0x6f4cfc: r1 = Instance_Color
    //     0x6f4cfc: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6f4d00: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6f4d00: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6f4d04: ldr             x4, [x4, #0x198]
    // 0x6f4d08: r0 = withValues()
    //     0x6f4d08: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6f4d0c: stur            x0, [fp, #-0x20]
    // 0x6f4d10: r0 = BorderSide()
    //     0x6f4d10: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x6f4d14: mov             x1, x0
    // 0x6f4d18: ldur            x0, [fp, #-0x20]
    // 0x6f4d1c: stur            x1, [fp, #-0x38]
    // 0x6f4d20: StoreField: r1->field_7 = r0
    //     0x6f4d20: stur            w0, [x1, #7]
    // 0x6f4d24: d0 = 1.000000
    //     0x6f4d24: fmov            d0, #1.00000000
    // 0x6f4d28: StoreField: r1->field_b = d0
    //     0x6f4d28: stur            d0, [x1, #0xb]
    // 0x6f4d2c: r0 = Instance_BorderStyle
    //     0x6f4d2c: add             x0, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x6f4d30: ldr             x0, [x0, #0x738]
    // 0x6f4d34: StoreField: r1->field_13 = r0
    //     0x6f4d34: stur            w0, [x1, #0x13]
    // 0x6f4d38: d0 = -1.000000
    //     0x6f4d38: fmov            d0, #-1.00000000
    // 0x6f4d3c: ArrayStore: r1[0] = d0  ; List_8
    //     0x6f4d3c: stur            d0, [x1, #0x17]
    // 0x6f4d40: r0 = OutlineInputBorder()
    //     0x6f4d40: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x6f4d44: mov             x1, x0
    // 0x6f4d48: ldur            x0, [fp, #-0x30]
    // 0x6f4d4c: stur            x1, [fp, #-0x20]
    // 0x6f4d50: StoreField: r1->field_13 = r0
    //     0x6f4d50: stur            w0, [x1, #0x13]
    // 0x6f4d54: d0 = 4.000000
    //     0x6f4d54: fmov            d0, #4.00000000
    // 0x6f4d58: StoreField: r1->field_b = d0
    //     0x6f4d58: stur            d0, [x1, #0xb]
    // 0x6f4d5c: ldur            x0, [fp, #-0x38]
    // 0x6f4d60: StoreField: r1->field_7 = r0
    //     0x6f4d60: stur            w0, [x1, #7]
    // 0x6f4d64: r0 = Radius()
    //     0x6f4d64: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6f4d68: d0 = 8.000000
    //     0x6f4d68: fmov            d0, #8.00000000
    // 0x6f4d6c: stur            x0, [fp, #-0x30]
    // 0x6f4d70: StoreField: r0->field_7 = d0
    //     0x6f4d70: stur            d0, [x0, #7]
    // 0x6f4d74: StoreField: r0->field_f = d0
    //     0x6f4d74: stur            d0, [x0, #0xf]
    // 0x6f4d78: r0 = BorderRadius()
    //     0x6f4d78: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6f4d7c: mov             x1, x0
    // 0x6f4d80: ldur            x0, [fp, #-0x30]
    // 0x6f4d84: stur            x1, [fp, #-0x38]
    // 0x6f4d88: StoreField: r1->field_7 = r0
    //     0x6f4d88: stur            w0, [x1, #7]
    // 0x6f4d8c: StoreField: r1->field_b = r0
    //     0x6f4d8c: stur            w0, [x1, #0xb]
    // 0x6f4d90: StoreField: r1->field_f = r0
    //     0x6f4d90: stur            w0, [x1, #0xf]
    // 0x6f4d94: StoreField: r1->field_13 = r0
    //     0x6f4d94: stur            w0, [x1, #0x13]
    // 0x6f4d98: r0 = OutlineInputBorder()
    //     0x6f4d98: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x6f4d9c: mov             x1, x0
    // 0x6f4da0: ldur            x0, [fp, #-0x38]
    // 0x6f4da4: stur            x1, [fp, #-0x30]
    // 0x6f4da8: StoreField: r1->field_13 = r0
    //     0x6f4da8: stur            w0, [x1, #0x13]
    // 0x6f4dac: d0 = 4.000000
    //     0x6f4dac: fmov            d0, #4.00000000
    // 0x6f4db0: StoreField: r1->field_b = d0
    //     0x6f4db0: stur            d0, [x1, #0xb]
    // 0x6f4db4: r0 = Instance_BorderSide
    //     0x6f4db4: add             x0, PP, #0x19, lsl #12  ; [pp+0x191f0] Obj!BorderSide@a19571
    //     0x6f4db8: ldr             x0, [x0, #0x1f0]
    // 0x6f4dbc: StoreField: r1->field_7 = r0
    //     0x6f4dbc: stur            w0, [x1, #7]
    // 0x6f4dc0: r0 = InputDecoration()
    //     0x6f4dc0: bl              #0x5fbec8  ; AllocateInputDecorationStub -> InputDecoration (size=0xec)
    // 0x6f4dc4: mov             x1, x0
    // 0x6f4dc8: ldur            x0, [fp, #-0x18]
    // 0x6f4dcc: stur            x1, [fp, #-0x38]
    // 0x6f4dd0: StoreField: r1->field_13 = r0
    //     0x6f4dd0: stur            w0, [x1, #0x13]
    // 0x6f4dd4: r0 = Instance_TextStyle
    //     0x6f4dd4: add             x0, PP, #0x19, lsl #12  ; [pp+0x191f8] Obj!TextStyle@a17981
    //     0x6f4dd8: ldr             x0, [x0, #0x1f8]
    // 0x6f4ddc: ArrayStore: r1[0] = r0  ; List_4
    //     0x6f4ddc: stur            w0, [x1, #0x17]
    // 0x6f4de0: r0 = true
    //     0x6f4de0: add             x0, NULL, #0x20  ; true
    // 0x6f4de4: StoreField: r1->field_47 = r0
    //     0x6f4de4: stur            w0, [x1, #0x47]
    // 0x6f4de8: StoreField: r1->field_4b = r0
    //     0x6f4de8: stur            w0, [x1, #0x4b]
    // 0x6f4dec: ldur            x2, [fp, #-0x28]
    // 0x6f4df0: StoreField: r1->field_73 = r2
    //     0x6f4df0: stur            w2, [x1, #0x73]
    // 0x6f4df4: StoreField: r1->field_af = r0
    //     0x6f4df4: stur            w0, [x1, #0xaf]
    // 0x6f4df8: r2 = Instance_Color
    //     0x6f4df8: add             x2, PP, #0x18, lsl #12  ; [pp+0x18f48] Obj!Color@a25511
    //     0x6f4dfc: ldr             x2, [x2, #0xf48]
    // 0x6f4e00: StoreField: r1->field_b3 = r2
    //     0x6f4e00: stur            w2, [x1, #0xb3]
    // 0x6f4e04: ldur            x2, [fp, #-0x30]
    // 0x6f4e08: StoreField: r1->field_c3 = r2
    //     0x6f4e08: stur            w2, [x1, #0xc3]
    // 0x6f4e0c: ldur            x2, [fp, #-0x20]
    // 0x6f4e10: StoreField: r1->field_cf = r2
    //     0x6f4e10: stur            w2, [x1, #0xcf]
    // 0x6f4e14: StoreField: r1->field_d7 = r0
    //     0x6f4e14: stur            w0, [x1, #0xd7]
    // 0x6f4e18: r0 = TextField()
    //     0x6f4e18: bl              #0x684214  ; AllocateTextFieldStub -> TextField (size=0x128)
    // 0x6f4e1c: r1 = EditableText
    //     0x6f4e1c: ldr             x1, [PP, #0x6f50]  ; [pp+0x6f50] Type: EditableText
    // 0x6f4e20: StoreField: r0->field_f = r1
    //     0x6f4e20: stur            w1, [x0, #0xf]
    // 0x6f4e24: ldur            x1, [fp, #-0x10]
    // 0x6f4e28: StoreField: r0->field_13 = r1
    //     0x6f4e28: stur            w1, [x0, #0x13]
    // 0x6f4e2c: ldur            x1, [fp, #-0x38]
    // 0x6f4e30: StoreField: r0->field_1b = r1
    //     0x6f4e30: stur            w1, [x0, #0x1b]
    // 0x6f4e34: r1 = Instance_TextCapitalization
    //     0x6f4e34: add             x1, PP, #0x14, lsl #12  ; [pp+0x144f0] Obj!TextCapitalization@a29af1
    //     0x6f4e38: ldr             x1, [x1, #0x4f0]
    // 0x6f4e3c: StoreField: r0->field_27 = r1
    //     0x6f4e3c: stur            w1, [x0, #0x27]
    // 0x6f4e40: r1 = Instance_TextStyle
    //     0x6f4e40: add             x1, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x6f4e44: ldr             x1, [x1, #0x158]
    // 0x6f4e48: StoreField: r0->field_2b = r1
    //     0x6f4e48: stur            w1, [x0, #0x2b]
    // 0x6f4e4c: r1 = Instance_TextAlign
    //     0x6f4e4c: ldr             x1, [PP, #0x4b00]  ; [pp+0x4b00] Obj!TextAlign@a2cf31
    // 0x6f4e50: StoreField: r0->field_33 = r1
    //     0x6f4e50: stur            w1, [x0, #0x33]
    // 0x6f4e54: r1 = false
    //     0x6f4e54: add             x1, NULL, #0x30  ; false
    // 0x6f4e58: StoreField: r0->field_6b = r1
    //     0x6f4e58: stur            w1, [x0, #0x6b]
    // 0x6f4e5c: StoreField: r0->field_3f = r1
    //     0x6f4e5c: stur            w1, [x0, #0x3f]
    // 0x6f4e60: r2 = "•"
    //     0x6f4e60: add             x2, PP, #0x14, lsl #12  ; [pp+0x144f8] "•"
    //     0x6f4e64: ldr             x2, [x2, #0x4f8]
    // 0x6f4e68: StoreField: r0->field_47 = r2
    //     0x6f4e68: stur            w2, [x0, #0x47]
    // 0x6f4e6c: StoreField: r0->field_4b = r1
    //     0x6f4e6c: stur            w1, [x0, #0x4b]
    // 0x6f4e70: r2 = true
    //     0x6f4e70: add             x2, NULL, #0x20  ; true
    // 0x6f4e74: StoreField: r0->field_5b = r2
    //     0x6f4e74: stur            w2, [x0, #0x5b]
    // 0x6f4e78: r3 = 2
    //     0x6f4e78: mov             x3, #2
    // 0x6f4e7c: StoreField: r0->field_5f = r3
    //     0x6f4e7c: stur            w3, [x0, #0x5f]
    // 0x6f4e80: StoreField: r0->field_67 = r1
    //     0x6f4e80: stur            w1, [x0, #0x67]
    // 0x6f4e84: d0 = 2.000000
    //     0x6f4e84: fmov            d0, #2.00000000
    // 0x6f4e88: StoreField: r0->field_9b = d0
    //     0x6f4e88: stur            d0, [x0, #0x9b]
    // 0x6f4e8c: r3 = Instance_EdgeInsets
    //     0x6f4e8c: ldr             x3, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x6f4e90: StoreField: r0->field_c3 = r3
    //     0x6f4e90: stur            w3, [x0, #0xc3]
    // 0x6f4e94: r3 = Instance_DragStartBehavior
    //     0x6f4e94: ldr             x3, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6f4e98: StoreField: r0->field_d3 = r3
    //     0x6f4e98: stur            w3, [x0, #0xd3]
    // 0x6f4e9c: StoreField: r0->field_db = r1
    //     0x6f4e9c: stur            w1, [x0, #0xdb]
    // 0x6f4ea0: r1 = const []
    //     0x6f4ea0: ldr             x1, [PP, #0x73e8]  ; [pp+0x73e8] List<String>(0)
    // 0x6f4ea4: StoreField: r0->field_f7 = r1
    //     0x6f4ea4: stur            w1, [x0, #0xf7]
    // 0x6f4ea8: r1 = Instance_Clip
    //     0x6f4ea8: add             x1, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6f4eac: ldr             x1, [x1, #0x2d8]
    // 0x6f4eb0: StoreField: r0->field_fb = r1
    //     0x6f4eb0: stur            w1, [x0, #0xfb]
    // 0x6f4eb4: r17 = 259
    //     0x6f4eb4: mov             x17, #0x103
    // 0x6f4eb8: str             w2, [x0, x17]
    // 0x6f4ebc: r17 = 263
    //     0x6f4ebc: mov             x17, #0x107
    // 0x6f4ec0: str             w2, [x0, x17]
    // 0x6f4ec4: r17 = 267
    //     0x6f4ec4: mov             x17, #0x10b
    // 0x6f4ec8: str             w2, [x0, x17]
    // 0x6f4ecc: r1 = Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static.
    //     0x6f4ecc: add             x1, PP, #0x18, lsl #12  ; [pp+0x189f8] Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static. (0x7f2290684300)
    //     0x6f4ed0: ldr             x1, [x1, #0x9f8]
    // 0x6f4ed4: r17 = 275
    //     0x6f4ed4: mov             x17, #0x113
    // 0x6f4ed8: str             w1, [x0, x17]
    // 0x6f4edc: r17 = 279
    //     0x6f4edc: mov             x17, #0x117
    // 0x6f4ee0: str             w2, [x0, x17]
    // 0x6f4ee4: r1 = Instance_SmartDashesType
    //     0x6f4ee4: ldr             x1, [PP, #0x73f0]  ; [pp+0x73f0] Obj!SmartDashesType@a29cf1
    // 0x6f4ee8: StoreField: r0->field_53 = r1
    //     0x6f4ee8: stur            w1, [x0, #0x53]
    // 0x6f4eec: r1 = Instance_SmartQuotesType
    //     0x6f4eec: add             x1, PP, #0x14, lsl #12  ; [pp+0x14520] Obj!SmartQuotesType@a29cd1
    //     0x6f4ef0: ldr             x1, [x1, #0x520]
    // 0x6f4ef4: StoreField: r0->field_57 = r1
    //     0x6f4ef4: stur            w1, [x0, #0x57]
    // 0x6f4ef8: ldur            x1, [fp, #-8]
    // 0x6f4efc: cmp             w1, NULL
    // 0x6f4f00: b.ne            #0x6f4f0c
    // 0x6f4f04: r1 = Instance_TextInputType
    //     0x6f4f04: add             x1, PP, #0x14, lsl #12  ; [pp+0x14528] Obj!TextInputType@a0acc1
    //     0x6f4f08: ldr             x1, [x1, #0x528]
    // 0x6f4f0c: StoreField: r0->field_1f = r1
    //     0x6f4f0c: stur            w1, [x0, #0x1f]
    // 0x6f4f10: StoreField: r0->field_c7 = r2
    //     0x6f4f10: stur            w2, [x0, #0xc7]
    // 0x6f4f14: LeaveFrame
    //     0x6f4f14: mov             SP, fp
    //     0x6f4f18: ldp             fp, lr, [SP], #0x10
    // 0x6f4f1c: ret
    //     0x6f4f1c: ret             
    // 0x6f4f20: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f4f20: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f4f24: b               #0x6f4c9c
  }
  static _ buildDropdownDecoration(/* No info */) {
    // ** addr: 0x6f4f28, size: 0x1f4
    // 0x6f4f28: EnterFrame
    //     0x6f4f28: stp             fp, lr, [SP, #-0x10]!
    //     0x6f4f2c: mov             fp, SP
    // 0x6f4f30: AllocStack(0x30)
    //     0x6f4f30: sub             SP, SP, #0x30
    // 0x6f4f34: SetupParameters(dynamic _ /* r1 => r1, fp-0x10 */, {dynamic prefixIcon = Null /* r0, fp-0x8 */})
    //     0x6f4f34: stur            x1, [fp, #-0x10]
    //     0x6f4f38: ldur            w0, [x4, #0x13]
    //     0x6f4f3c: ldur            w2, [x4, #0x1f]
    //     0x6f4f40: add             x2, x2, HEAP, lsl #32
    //     0x6f4f44: add             x16, PP, #0x19, lsl #12  ; [pp+0x192f8] "prefixIcon"
    //     0x6f4f48: ldr             x16, [x16, #0x2f8]
    //     0x6f4f4c: cmp             w2, w16
    //     0x6f4f50: b.ne            #0x6f4f6c
    //     0x6f4f54: ldur            w2, [x4, #0x23]
    //     0x6f4f58: add             x2, x2, HEAP, lsl #32
    //     0x6f4f5c: sub             w3, w0, w2
    //     0x6f4f60: add             x0, fp, w3, sxtw #2
    //     0x6f4f64: ldr             x0, [x0, #8]
    //     0x6f4f68: b               #0x6f4f70
    //     0x6f4f6c: mov             x0, NULL
    //     0x6f4f70: stur            x0, [fp, #-8]
    // 0x6f4f74: CheckStackOverflow
    //     0x6f4f74: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f4f78: cmp             SP, x16
    //     0x6f4f7c: b.ls            #0x6f5114
    // 0x6f4f80: cmp             w0, NULL
    // 0x6f4f84: b.eq            #0x6f4fa8
    // 0x6f4f88: r0 = Icon()
    //     0x6f4f88: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x6f4f8c: mov             x1, x0
    // 0x6f4f90: ldur            x0, [fp, #-8]
    // 0x6f4f94: StoreField: r1->field_b = r0
    //     0x6f4f94: stur            w0, [x1, #0xb]
    // 0x6f4f98: r0 = Instance_Color
    //     0x6f4f98: add             x0, PP, #0x19, lsl #12  ; [pp+0x191e8] Obj!Color@a25301
    //     0x6f4f9c: ldr             x0, [x0, #0x1e8]
    // 0x6f4fa0: StoreField: r1->field_23 = r0
    //     0x6f4fa0: stur            w0, [x1, #0x23]
    // 0x6f4fa4: b               #0x6f4fac
    // 0x6f4fa8: r1 = Null
    //     0x6f4fa8: mov             x1, NULL
    // 0x6f4fac: ldur            x0, [fp, #-0x10]
    // 0x6f4fb0: stur            x1, [fp, #-8]
    // 0x6f4fb4: r0 = Radius()
    //     0x6f4fb4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6f4fb8: d0 = 8.000000
    //     0x6f4fb8: fmov            d0, #8.00000000
    // 0x6f4fbc: stur            x0, [fp, #-0x18]
    // 0x6f4fc0: StoreField: r0->field_7 = d0
    //     0x6f4fc0: stur            d0, [x0, #7]
    // 0x6f4fc4: StoreField: r0->field_f = d0
    //     0x6f4fc4: stur            d0, [x0, #0xf]
    // 0x6f4fc8: r0 = BorderRadius()
    //     0x6f4fc8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6f4fcc: mov             x2, x0
    // 0x6f4fd0: ldur            x0, [fp, #-0x18]
    // 0x6f4fd4: stur            x2, [fp, #-0x20]
    // 0x6f4fd8: StoreField: r2->field_7 = r0
    //     0x6f4fd8: stur            w0, [x2, #7]
    // 0x6f4fdc: StoreField: r2->field_b = r0
    //     0x6f4fdc: stur            w0, [x2, #0xb]
    // 0x6f4fe0: StoreField: r2->field_f = r0
    //     0x6f4fe0: stur            w0, [x2, #0xf]
    // 0x6f4fe4: StoreField: r2->field_13 = r0
    //     0x6f4fe4: stur            w0, [x2, #0x13]
    // 0x6f4fe8: r16 = 0.200000
    //     0x6f4fe8: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x6f4fec: ldr             x16, [x16, #0x1f0]
    // 0x6f4ff0: str             x16, [SP]
    // 0x6f4ff4: r1 = Instance_Color
    //     0x6f4ff4: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6f4ff8: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6f4ff8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6f4ffc: ldr             x4, [x4, #0x198]
    // 0x6f5000: r0 = withValues()
    //     0x6f5000: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6f5004: stur            x0, [fp, #-0x18]
    // 0x6f5008: r0 = BorderSide()
    //     0x6f5008: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x6f500c: mov             x1, x0
    // 0x6f5010: ldur            x0, [fp, #-0x18]
    // 0x6f5014: stur            x1, [fp, #-0x28]
    // 0x6f5018: StoreField: r1->field_7 = r0
    //     0x6f5018: stur            w0, [x1, #7]
    // 0x6f501c: d0 = 1.000000
    //     0x6f501c: fmov            d0, #1.00000000
    // 0x6f5020: StoreField: r1->field_b = d0
    //     0x6f5020: stur            d0, [x1, #0xb]
    // 0x6f5024: r0 = Instance_BorderStyle
    //     0x6f5024: add             x0, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x6f5028: ldr             x0, [x0, #0x738]
    // 0x6f502c: StoreField: r1->field_13 = r0
    //     0x6f502c: stur            w0, [x1, #0x13]
    // 0x6f5030: d0 = -1.000000
    //     0x6f5030: fmov            d0, #-1.00000000
    // 0x6f5034: ArrayStore: r1[0] = d0  ; List_8
    //     0x6f5034: stur            d0, [x1, #0x17]
    // 0x6f5038: r0 = OutlineInputBorder()
    //     0x6f5038: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x6f503c: mov             x1, x0
    // 0x6f5040: ldur            x0, [fp, #-0x20]
    // 0x6f5044: stur            x1, [fp, #-0x18]
    // 0x6f5048: StoreField: r1->field_13 = r0
    //     0x6f5048: stur            w0, [x1, #0x13]
    // 0x6f504c: d0 = 4.000000
    //     0x6f504c: fmov            d0, #4.00000000
    // 0x6f5050: StoreField: r1->field_b = d0
    //     0x6f5050: stur            d0, [x1, #0xb]
    // 0x6f5054: ldur            x0, [fp, #-0x28]
    // 0x6f5058: StoreField: r1->field_7 = r0
    //     0x6f5058: stur            w0, [x1, #7]
    // 0x6f505c: r0 = Radius()
    //     0x6f505c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6f5060: d0 = 8.000000
    //     0x6f5060: fmov            d0, #8.00000000
    // 0x6f5064: stur            x0, [fp, #-0x20]
    // 0x6f5068: StoreField: r0->field_7 = d0
    //     0x6f5068: stur            d0, [x0, #7]
    // 0x6f506c: StoreField: r0->field_f = d0
    //     0x6f506c: stur            d0, [x0, #0xf]
    // 0x6f5070: r0 = BorderRadius()
    //     0x6f5070: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6f5074: mov             x1, x0
    // 0x6f5078: ldur            x0, [fp, #-0x20]
    // 0x6f507c: stur            x1, [fp, #-0x28]
    // 0x6f5080: StoreField: r1->field_7 = r0
    //     0x6f5080: stur            w0, [x1, #7]
    // 0x6f5084: StoreField: r1->field_b = r0
    //     0x6f5084: stur            w0, [x1, #0xb]
    // 0x6f5088: StoreField: r1->field_f = r0
    //     0x6f5088: stur            w0, [x1, #0xf]
    // 0x6f508c: StoreField: r1->field_13 = r0
    //     0x6f508c: stur            w0, [x1, #0x13]
    // 0x6f5090: r0 = OutlineInputBorder()
    //     0x6f5090: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x6f5094: mov             x1, x0
    // 0x6f5098: ldur            x0, [fp, #-0x28]
    // 0x6f509c: stur            x1, [fp, #-0x20]
    // 0x6f50a0: StoreField: r1->field_13 = r0
    //     0x6f50a0: stur            w0, [x1, #0x13]
    // 0x6f50a4: d0 = 4.000000
    //     0x6f50a4: fmov            d0, #4.00000000
    // 0x6f50a8: StoreField: r1->field_b = d0
    //     0x6f50a8: stur            d0, [x1, #0xb]
    // 0x6f50ac: r0 = Instance_BorderSide
    //     0x6f50ac: add             x0, PP, #0x19, lsl #12  ; [pp+0x191f0] Obj!BorderSide@a19571
    //     0x6f50b0: ldr             x0, [x0, #0x1f0]
    // 0x6f50b4: StoreField: r1->field_7 = r0
    //     0x6f50b4: stur            w0, [x1, #7]
    // 0x6f50b8: r0 = InputDecoration()
    //     0x6f50b8: bl              #0x5fbec8  ; AllocateInputDecorationStub -> InputDecoration (size=0xec)
    // 0x6f50bc: ldur            x1, [fp, #-0x10]
    // 0x6f50c0: StoreField: r0->field_13 = r1
    //     0x6f50c0: stur            w1, [x0, #0x13]
    // 0x6f50c4: r1 = Instance_TextStyle
    //     0x6f50c4: add             x1, PP, #0x19, lsl #12  ; [pp+0x191f8] Obj!TextStyle@a17981
    //     0x6f50c8: ldr             x1, [x1, #0x1f8]
    // 0x6f50cc: ArrayStore: r0[0] = r1  ; List_4
    //     0x6f50cc: stur            w1, [x0, #0x17]
    // 0x6f50d0: r1 = true
    //     0x6f50d0: add             x1, NULL, #0x20  ; true
    // 0x6f50d4: StoreField: r0->field_47 = r1
    //     0x6f50d4: stur            w1, [x0, #0x47]
    // 0x6f50d8: StoreField: r0->field_4b = r1
    //     0x6f50d8: stur            w1, [x0, #0x4b]
    // 0x6f50dc: ldur            x2, [fp, #-8]
    // 0x6f50e0: StoreField: r0->field_73 = r2
    //     0x6f50e0: stur            w2, [x0, #0x73]
    // 0x6f50e4: StoreField: r0->field_af = r1
    //     0x6f50e4: stur            w1, [x0, #0xaf]
    // 0x6f50e8: r2 = Instance_Color
    //     0x6f50e8: add             x2, PP, #0x18, lsl #12  ; [pp+0x18f48] Obj!Color@a25511
    //     0x6f50ec: ldr             x2, [x2, #0xf48]
    // 0x6f50f0: StoreField: r0->field_b3 = r2
    //     0x6f50f0: stur            w2, [x0, #0xb3]
    // 0x6f50f4: ldur            x2, [fp, #-0x20]
    // 0x6f50f8: StoreField: r0->field_c3 = r2
    //     0x6f50f8: stur            w2, [x0, #0xc3]
    // 0x6f50fc: ldur            x2, [fp, #-0x18]
    // 0x6f5100: StoreField: r0->field_cf = r2
    //     0x6f5100: stur            w2, [x0, #0xcf]
    // 0x6f5104: StoreField: r0->field_d7 = r1
    //     0x6f5104: stur            w1, [x0, #0xd7]
    // 0x6f5108: LeaveFrame
    //     0x6f5108: mov             SP, fp
    //     0x6f510c: ldp             fp, lr, [SP], #0x10
    // 0x6f5110: ret
    //     0x6f5110: ret             
    // 0x6f5114: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f5114: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f5118: b               #0x6f4f80
  }
  static _ buildDatePickerRow(/* No info */) {
    // ** addr: 0x73bd30, size: 0x430
    // 0x73bd30: EnterFrame
    //     0x73bd30: stp             fp, lr, [SP, #-0x10]!
    //     0x73bd34: mov             fp, SP
    // 0x73bd38: AllocStack(0x48)
    //     0x73bd38: sub             SP, SP, #0x48
    // 0x73bd3c: SetupParameters(dynamic _ /* r1 => r0, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r1, fp-0x18 */, dynamic _ /* r5 => r5, fp-0x20 */)
    //     0x73bd3c: mov             x0, x1
    //     0x73bd40: stur            x1, [fp, #-8]
    //     0x73bd44: mov             x1, x3
    //     0x73bd48: stur            x2, [fp, #-0x10]
    //     0x73bd4c: stur            x3, [fp, #-0x18]
    //     0x73bd50: stur            x5, [fp, #-0x20]
    // 0x73bd54: CheckStackOverflow
    //     0x73bd54: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73bd58: cmp             SP, x16
    //     0x73bd5c: b.ls            #0x73c14c
    // 0x73bd60: r1 = 3
    //     0x73bd60: mov             x1, #3
    // 0x73bd64: r0 = AllocateContext()
    //     0x73bd64: bl              #0x927010  ; AllocateContextStub
    // 0x73bd68: mov             x2, x0
    // 0x73bd6c: ldur            x0, [fp, #-8]
    // 0x73bd70: stur            x2, [fp, #-0x28]
    // 0x73bd74: StoreField: r2->field_f = r0
    //     0x73bd74: stur            w0, [x2, #0xf]
    // 0x73bd78: ldur            x0, [fp, #-0x18]
    // 0x73bd7c: StoreField: r2->field_13 = r0
    //     0x73bd7c: stur            w0, [x2, #0x13]
    // 0x73bd80: ldur            x1, [fp, #-0x20]
    // 0x73bd84: ArrayStore: r2[0] = r1  ; List_4
    //     0x73bd84: stur            w1, [x2, #0x17]
    // 0x73bd88: r16 = 0.200000
    //     0x73bd88: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x73bd8c: ldr             x16, [x16, #0x1f0]
    // 0x73bd90: str             x16, [SP]
    // 0x73bd94: r1 = Instance_Color
    //     0x73bd94: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73bd98: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x73bd98: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x73bd9c: ldr             x4, [x4, #0x198]
    // 0x73bda0: r0 = withValues()
    //     0x73bda0: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x73bda4: str             x0, [SP]
    // 0x73bda8: r1 = Null
    //     0x73bda8: mov             x1, NULL
    // 0x73bdac: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x73bdac: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x73bdb0: ldr             x4, [x4, #0x788]
    // 0x73bdb4: r0 = Border.all()
    //     0x73bdb4: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x73bdb8: stur            x0, [fp, #-8]
    // 0x73bdbc: r0 = Radius()
    //     0x73bdbc: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x73bdc0: d0 = 8.000000
    //     0x73bdc0: fmov            d0, #8.00000000
    // 0x73bdc4: stur            x0, [fp, #-0x20]
    // 0x73bdc8: StoreField: r0->field_7 = d0
    //     0x73bdc8: stur            d0, [x0, #7]
    // 0x73bdcc: StoreField: r0->field_f = d0
    //     0x73bdcc: stur            d0, [x0, #0xf]
    // 0x73bdd0: r0 = BorderRadius()
    //     0x73bdd0: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x73bdd4: mov             x1, x0
    // 0x73bdd8: ldur            x0, [fp, #-0x20]
    // 0x73bddc: stur            x1, [fp, #-0x30]
    // 0x73bde0: StoreField: r1->field_7 = r0
    //     0x73bde0: stur            w0, [x1, #7]
    // 0x73bde4: StoreField: r1->field_b = r0
    //     0x73bde4: stur            w0, [x1, #0xb]
    // 0x73bde8: StoreField: r1->field_f = r0
    //     0x73bde8: stur            w0, [x1, #0xf]
    // 0x73bdec: StoreField: r1->field_13 = r0
    //     0x73bdec: stur            w0, [x1, #0x13]
    // 0x73bdf0: r0 = BoxDecoration()
    //     0x73bdf0: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x73bdf4: mov             x2, x0
    // 0x73bdf8: r0 = Instance_Color
    //     0x73bdf8: add             x0, PP, #0x18, lsl #12  ; [pp+0x18f48] Obj!Color@a25511
    //     0x73bdfc: ldr             x0, [x0, #0xf48]
    // 0x73be00: stur            x2, [fp, #-0x20]
    // 0x73be04: StoreField: r2->field_7 = r0
    //     0x73be04: stur            w0, [x2, #7]
    // 0x73be08: ldur            x0, [fp, #-8]
    // 0x73be0c: StoreField: r2->field_f = r0
    //     0x73be0c: stur            w0, [x2, #0xf]
    // 0x73be10: ldur            x0, [fp, #-0x30]
    // 0x73be14: StoreField: r2->field_13 = r0
    //     0x73be14: stur            w0, [x2, #0x13]
    // 0x73be18: r0 = Instance_BoxShape
    //     0x73be18: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x73be1c: ldr             x0, [x0, #0x1c8]
    // 0x73be20: StoreField: r2->field_23 = r0
    //     0x73be20: stur            w0, [x2, #0x23]
    // 0x73be24: ldur            x3, [fp, #-0x18]
    // 0x73be28: cmp             w3, NULL
    // 0x73be2c: b.eq            #0x73bf4c
    // 0x73be30: mov             x1, x3
    // 0x73be34: r0 = _parts()
    //     0x73be34: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x73be38: mov             x2, x0
    // 0x73be3c: LoadField: r0 = r2->field_b
    //     0x73be3c: ldur            w0, [x2, #0xb]
    // 0x73be40: r1 = LoadInt32Instr(r0)
    //     0x73be40: sbfx            x1, x0, #1, #0x1f
    // 0x73be44: mov             x0, x1
    // 0x73be48: r1 = 5
    //     0x73be48: mov             x1, #5
    // 0x73be4c: cmp             x1, x0
    // 0x73be50: b.hs            #0x73c154
    // 0x73be54: LoadField: r0 = r2->field_23
    //     0x73be54: ldur            w0, [x2, #0x23]
    // 0x73be58: DecompressPointer r0
    //     0x73be58: add             x0, x0, HEAP, lsl #32
    // 0x73be5c: stur            x0, [fp, #-8]
    // 0x73be60: r1 = Null
    //     0x73be60: mov             x1, NULL
    // 0x73be64: r2 = 10
    //     0x73be64: mov             x2, #0xa
    // 0x73be68: r0 = AllocateArray()
    //     0x73be68: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73be6c: mov             x2, x0
    // 0x73be70: ldur            x0, [fp, #-8]
    // 0x73be74: stur            x2, [fp, #-0x30]
    // 0x73be78: StoreField: r2->field_f = r0
    //     0x73be78: stur            w0, [x2, #0xf]
    // 0x73be7c: r16 = "/"
    //     0x73be7c: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x73be80: StoreField: r2->field_13 = r16
    //     0x73be80: stur            w16, [x2, #0x13]
    // 0x73be84: ldur            x1, [fp, #-0x18]
    // 0x73be88: r0 = _parts()
    //     0x73be88: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x73be8c: mov             x2, x0
    // 0x73be90: LoadField: r0 = r2->field_b
    //     0x73be90: ldur            w0, [x2, #0xb]
    // 0x73be94: r1 = LoadInt32Instr(r0)
    //     0x73be94: sbfx            x1, x0, #1, #0x1f
    // 0x73be98: mov             x0, x1
    // 0x73be9c: r1 = 7
    //     0x73be9c: mov             x1, #7
    // 0x73bea0: cmp             x1, x0
    // 0x73bea4: b.hs            #0x73c158
    // 0x73bea8: LoadField: r0 = r2->field_2b
    //     0x73bea8: ldur            w0, [x2, #0x2b]
    // 0x73beac: DecompressPointer r0
    //     0x73beac: add             x0, x0, HEAP, lsl #32
    // 0x73beb0: ldur            x1, [fp, #-0x30]
    // 0x73beb4: ArrayStore: r1[2] = r0  ; List_4
    //     0x73beb4: add             x25, x1, #0x17
    //     0x73beb8: str             w0, [x25]
    //     0x73bebc: tbz             w0, #0, #0x73bed8
    //     0x73bec0: ldurb           w16, [x1, #-1]
    //     0x73bec4: ldurb           w17, [x0, #-1]
    //     0x73bec8: and             x16, x17, x16, lsr #2
    //     0x73becc: tst             x16, HEAP, lsr #32
    //     0x73bed0: b.eq            #0x73bed8
    //     0x73bed4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73bed8: ldur            x0, [fp, #-0x30]
    // 0x73bedc: r16 = "/"
    //     0x73bedc: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x73bee0: StoreField: r0->field_1b = r16
    //     0x73bee0: stur            w16, [x0, #0x1b]
    // 0x73bee4: ldur            x1, [fp, #-0x18]
    // 0x73bee8: r0 = _parts()
    //     0x73bee8: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x73beec: mov             x2, x0
    // 0x73bef0: LoadField: r0 = r2->field_b
    //     0x73bef0: ldur            w0, [x2, #0xb]
    // 0x73bef4: r1 = LoadInt32Instr(r0)
    //     0x73bef4: sbfx            x1, x0, #1, #0x1f
    // 0x73bef8: mov             x0, x1
    // 0x73befc: r1 = 8
    //     0x73befc: mov             x1, #8
    // 0x73bf00: cmp             x1, x0
    // 0x73bf04: b.hs            #0x73c15c
    // 0x73bf08: LoadField: r0 = r2->field_2f
    //     0x73bf08: ldur            w0, [x2, #0x2f]
    // 0x73bf0c: DecompressPointer r0
    //     0x73bf0c: add             x0, x0, HEAP, lsl #32
    // 0x73bf10: ldur            x1, [fp, #-0x30]
    // 0x73bf14: ArrayStore: r1[4] = r0  ; List_4
    //     0x73bf14: add             x25, x1, #0x1f
    //     0x73bf18: str             w0, [x25]
    //     0x73bf1c: tbz             w0, #0, #0x73bf38
    //     0x73bf20: ldurb           w16, [x1, #-1]
    //     0x73bf24: ldurb           w17, [x0, #-1]
    //     0x73bf28: and             x16, x17, x16, lsr #2
    //     0x73bf2c: tst             x16, HEAP, lsr #32
    //     0x73bf30: b.eq            #0x73bf38
    //     0x73bf34: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x73bf38: ldur            x16, [fp, #-0x30]
    // 0x73bf3c: str             x16, [SP]
    // 0x73bf40: r0 = _interpolate()
    //     0x73bf40: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x73bf44: mov             x1, x0
    // 0x73bf48: b               #0x73bf80
    // 0x73bf4c: ldur            x0, [fp, #-0x10]
    // 0x73bf50: r1 = Null
    //     0x73bf50: mov             x1, NULL
    // 0x73bf54: r2 = 4
    //     0x73bf54: mov             x2, #4
    // 0x73bf58: r0 = AllocateArray()
    //     0x73bf58: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73bf5c: mov             x1, x0
    // 0x73bf60: ldur            x0, [fp, #-0x10]
    // 0x73bf64: StoreField: r1->field_f = r0
    //     0x73bf64: stur            w0, [x1, #0xf]
    // 0x73bf68: r16 = " Seçin"
    //     0x73bf68: add             x16, PP, #0x19, lsl #12  ; [pp+0x19470] " Seçin"
    //     0x73bf6c: ldr             x16, [x16, #0x470]
    // 0x73bf70: StoreField: r1->field_13 = r16
    //     0x73bf70: stur            w16, [x1, #0x13]
    // 0x73bf74: str             x1, [SP]
    // 0x73bf78: r0 = _interpolate()
    //     0x73bf78: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x73bf7c: mov             x1, x0
    // 0x73bf80: ldur            x0, [fp, #-0x18]
    // 0x73bf84: stur            x1, [fp, #-0x10]
    // 0x73bf88: cmp             w0, NULL
    // 0x73bf8c: b.eq            #0x73bf98
    // 0x73bf90: r0 = Instance_Color
    //     0x73bf90: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73bf94: b               #0x73bfa0
    // 0x73bf98: r0 = Instance_Color
    //     0x73bf98: add             x0, PP, #0x19, lsl #12  ; [pp+0x191e8] Obj!Color@a25301
    //     0x73bf9c: ldr             x0, [x0, #0x1e8]
    // 0x73bfa0: stur            x0, [fp, #-8]
    // 0x73bfa4: r0 = TextStyle()
    //     0x73bfa4: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x73bfa8: mov             x1, x0
    // 0x73bfac: r0 = true
    //     0x73bfac: add             x0, NULL, #0x20  ; true
    // 0x73bfb0: stur            x1, [fp, #-0x18]
    // 0x73bfb4: StoreField: r1->field_7 = r0
    //     0x73bfb4: stur            w0, [x1, #7]
    // 0x73bfb8: ldur            x2, [fp, #-8]
    // 0x73bfbc: StoreField: r1->field_b = r2
    //     0x73bfbc: stur            w2, [x1, #0xb]
    // 0x73bfc0: r0 = Text()
    //     0x73bfc0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x73bfc4: mov             x2, x0
    // 0x73bfc8: ldur            x0, [fp, #-0x10]
    // 0x73bfcc: stur            x2, [fp, #-8]
    // 0x73bfd0: StoreField: r2->field_b = r0
    //     0x73bfd0: stur            w0, [x2, #0xb]
    // 0x73bfd4: ldur            x0, [fp, #-0x18]
    // 0x73bfd8: StoreField: r2->field_13 = r0
    //     0x73bfd8: stur            w0, [x2, #0x13]
    // 0x73bfdc: r1 = <FlexParentData>
    //     0x73bfdc: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x73bfe0: ldr             x1, [x1, #0x340]
    // 0x73bfe4: r0 = Expanded()
    //     0x73bfe4: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x73bfe8: mov             x3, x0
    // 0x73bfec: r0 = 1
    //     0x73bfec: mov             x0, #1
    // 0x73bff0: stur            x3, [fp, #-0x10]
    // 0x73bff4: StoreField: r3->field_13 = r0
    //     0x73bff4: stur            x0, [x3, #0x13]
    // 0x73bff8: r0 = Instance_FlexFit
    //     0x73bff8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x73bffc: ldr             x0, [x0, #0x348]
    // 0x73c000: StoreField: r3->field_1b = r0
    //     0x73c000: stur            w0, [x3, #0x1b]
    // 0x73c004: ldur            x0, [fp, #-8]
    // 0x73c008: StoreField: r3->field_b = r0
    //     0x73c008: stur            w0, [x3, #0xb]
    // 0x73c00c: r1 = Null
    //     0x73c00c: mov             x1, NULL
    // 0x73c010: r2 = 6
    //     0x73c010: mov             x2, #6
    // 0x73c014: r0 = AllocateArray()
    //     0x73c014: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73c018: stur            x0, [fp, #-8]
    // 0x73c01c: r16 = Instance_Icon
    //     0x73c01c: add             x16, PP, #0x19, lsl #12  ; [pp+0x19478] Obj!Icon@a1ecb1
    //     0x73c020: ldr             x16, [x16, #0x478]
    // 0x73c024: StoreField: r0->field_f = r16
    //     0x73c024: stur            w16, [x0, #0xf]
    // 0x73c028: r16 = Instance_SizedBox
    //     0x73c028: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x73c02c: ldr             x16, [x16, #0x360]
    // 0x73c030: StoreField: r0->field_13 = r16
    //     0x73c030: stur            w16, [x0, #0x13]
    // 0x73c034: ldur            x1, [fp, #-0x10]
    // 0x73c038: ArrayStore: r0[0] = r1  ; List_4
    //     0x73c038: stur            w1, [x0, #0x17]
    // 0x73c03c: r1 = <Widget>
    //     0x73c03c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73c040: r0 = AllocateGrowableArray()
    //     0x73c040: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x73c044: mov             x1, x0
    // 0x73c048: ldur            x0, [fp, #-8]
    // 0x73c04c: stur            x1, [fp, #-0x10]
    // 0x73c050: StoreField: r1->field_f = r0
    //     0x73c050: stur            w0, [x1, #0xf]
    // 0x73c054: r0 = 6
    //     0x73c054: mov             x0, #6
    // 0x73c058: StoreField: r1->field_b = r0
    //     0x73c058: stur            w0, [x1, #0xb]
    // 0x73c05c: r0 = Row()
    //     0x73c05c: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x73c060: mov             x1, x0
    // 0x73c064: r0 = Instance_Axis
    //     0x73c064: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x73c068: stur            x1, [fp, #-8]
    // 0x73c06c: StoreField: r1->field_f = r0
    //     0x73c06c: stur            w0, [x1, #0xf]
    // 0x73c070: r0 = Instance_MainAxisAlignment
    //     0x73c070: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x73c074: ldr             x0, [x0, #0x230]
    // 0x73c078: StoreField: r1->field_13 = r0
    //     0x73c078: stur            w0, [x1, #0x13]
    // 0x73c07c: r0 = Instance_MainAxisSize
    //     0x73c07c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x73c080: ldr             x0, [x0, #0x330]
    // 0x73c084: ArrayStore: r1[0] = r0  ; List_4
    //     0x73c084: stur            w0, [x1, #0x17]
    // 0x73c088: r0 = Instance_CrossAxisAlignment
    //     0x73c088: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x73c08c: ldr             x0, [x0, #0x338]
    // 0x73c090: StoreField: r1->field_1b = r0
    //     0x73c090: stur            w0, [x1, #0x1b]
    // 0x73c094: r0 = Instance_VerticalDirection
    //     0x73c094: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x73c098: ldr             x0, [x0, #0x340]
    // 0x73c09c: StoreField: r1->field_23 = r0
    //     0x73c09c: stur            w0, [x1, #0x23]
    // 0x73c0a0: r0 = Instance_Clip
    //     0x73c0a0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x73c0a4: ldr             x0, [x0, #0x348]
    // 0x73c0a8: StoreField: r1->field_2b = r0
    //     0x73c0a8: stur            w0, [x1, #0x2b]
    // 0x73c0ac: StoreField: r1->field_2f = rZR
    //     0x73c0ac: stur            xzr, [x1, #0x2f]
    // 0x73c0b0: ldur            x0, [fp, #-0x10]
    // 0x73c0b4: StoreField: r1->field_b = r0
    //     0x73c0b4: stur            w0, [x1, #0xb]
    // 0x73c0b8: r0 = Container()
    //     0x73c0b8: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x73c0bc: stur            x0, [fp, #-0x10]
    // 0x73c0c0: r16 = Instance_EdgeInsets
    //     0x73c0c0: add             x16, PP, #0x19, lsl #12  ; [pp+0x19480] Obj!EdgeInsets@a0c7d1
    //     0x73c0c4: ldr             x16, [x16, #0x480]
    // 0x73c0c8: ldur            lr, [fp, #-0x20]
    // 0x73c0cc: stp             lr, x16, [SP, #8]
    // 0x73c0d0: ldur            x16, [fp, #-8]
    // 0x73c0d4: str             x16, [SP]
    // 0x73c0d8: mov             x1, x0
    // 0x73c0dc: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x73c0dc: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x73c0e0: ldr             x4, [x4, #0x1e8]
    // 0x73c0e4: r0 = Container()
    //     0x73c0e4: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x73c0e8: r0 = InkWell()
    //     0x73c0e8: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x73c0ec: mov             x3, x0
    // 0x73c0f0: ldur            x0, [fp, #-0x10]
    // 0x73c0f4: stur            x3, [fp, #-8]
    // 0x73c0f8: StoreField: r3->field_b = r0
    //     0x73c0f8: stur            w0, [x3, #0xb]
    // 0x73c0fc: ldur            x2, [fp, #-0x28]
    // 0x73c100: r1 = Function '<anonymous closure>': static.
    //     0x73c100: add             x1, PP, #0x19, lsl #12  ; [pp+0x19488] AnonymousClosure: static (0x73c160), in [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDatePickerRow (0x73bd30)
    //     0x73c104: ldr             x1, [x1, #0x488]
    // 0x73c108: r0 = AllocateClosure()
    //     0x73c108: bl              #0x9273d4  ; AllocateClosureStub
    // 0x73c10c: mov             x1, x0
    // 0x73c110: ldur            x0, [fp, #-8]
    // 0x73c114: StoreField: r0->field_f = r1
    //     0x73c114: stur            w1, [x0, #0xf]
    // 0x73c118: r1 = true
    //     0x73c118: add             x1, NULL, #0x20  ; true
    // 0x73c11c: StoreField: r0->field_47 = r1
    //     0x73c11c: stur            w1, [x0, #0x47]
    // 0x73c120: r2 = Instance_BoxShape
    //     0x73c120: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x73c124: ldr             x2, [x2, #0x1c8]
    // 0x73c128: StoreField: r0->field_4b = r2
    //     0x73c128: stur            w2, [x0, #0x4b]
    // 0x73c12c: StoreField: r0->field_73 = r1
    //     0x73c12c: stur            w1, [x0, #0x73]
    // 0x73c130: r2 = false
    //     0x73c130: add             x2, NULL, #0x30  ; false
    // 0x73c134: StoreField: r0->field_77 = r2
    //     0x73c134: stur            w2, [x0, #0x77]
    // 0x73c138: StoreField: r0->field_87 = r1
    //     0x73c138: stur            w1, [x0, #0x87]
    // 0x73c13c: StoreField: r0->field_7f = r2
    //     0x73c13c: stur            w2, [x0, #0x7f]
    // 0x73c140: LeaveFrame
    //     0x73c140: mov             SP, fp
    //     0x73c144: ldp             fp, lr, [SP], #0x10
    // 0x73c148: ret
    //     0x73c148: ret             
    // 0x73c14c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73c14c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73c150: b               #0x73bd60
    // 0x73c154: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x73c154: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x73c158: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x73c158: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x73c15c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x73c15c: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] static Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x73c160, size: 0x124
    // 0x73c160: EnterFrame
    //     0x73c160: stp             fp, lr, [SP, #-0x10]!
    //     0x73c164: mov             fp, SP
    // 0x73c168: AllocStack(0x40)
    //     0x73c168: sub             SP, SP, #0x40
    // 0x73c16c: SetupParameters(dynamic _ /* r1 */)
    //     0x73c16c: stur            NULL, [fp, #-8]
    //     0x73c170: mov             x0, #0
    //     0x73c174: add             x1, fp, w0, sxtw #2
    //     0x73c178: ldr             x1, [x1, #0x10]
    //     0x73c17c: ldur            w2, [x1, #0x17]
    //     0x73c180: add             x2, x2, HEAP, lsl #32
    //     0x73c184: stur            x2, [fp, #-0x10]
    // 0x73c188: CheckStackOverflow
    //     0x73c188: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x73c18c: cmp             SP, x16
    //     0x73c190: b.ls            #0x73c27c
    // 0x73c194: InitAsync() -> Future<void?>
    //     0x73c194: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x73c198: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x73c19c: ldur            x0, [fp, #-0x10]
    // 0x73c1a0: LoadField: r1 = r0->field_f
    //     0x73c1a0: ldur            w1, [x0, #0xf]
    // 0x73c1a4: DecompressPointer r1
    //     0x73c1a4: add             x1, x1, HEAP, lsl #32
    // 0x73c1a8: stur            x1, [fp, #-0x18]
    // 0x73c1ac: LoadField: r2 = r0->field_13
    //     0x73c1ac: ldur            w2, [x0, #0x13]
    // 0x73c1b0: DecompressPointer r2
    //     0x73c1b0: add             x2, x2, HEAP, lsl #32
    // 0x73c1b4: cmp             w2, NULL
    // 0x73c1b8: b.ne            #0x73c1f0
    // 0x73c1bc: r0 = DateTime()
    //     0x73c1bc: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x73c1c0: mov             x1, x0
    // 0x73c1c4: r0 = false
    //     0x73c1c4: add             x0, NULL, #0x30  ; false
    // 0x73c1c8: stur            x1, [fp, #-0x20]
    // 0x73c1cc: StoreField: r1->field_7 = r0
    //     0x73c1cc: stur            w0, [x1, #7]
    // 0x73c1d0: r0 = _getCurrentMicros()
    //     0x73c1d0: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x73c1d4: r1 = LoadInt32Instr(r0)
    //     0x73c1d4: sbfx            x1, x0, #1, #0x1f
    //     0x73c1d8: tbz             w0, #0, #0x73c1e0
    //     0x73c1dc: ldur            x1, [x0, #7]
    // 0x73c1e0: ldur            x0, [fp, #-0x20]
    // 0x73c1e4: StoreField: r0->field_b = r1
    //     0x73c1e4: stur            x1, [x0, #0xb]
    // 0x73c1e8: mov             x3, x0
    // 0x73c1ec: b               #0x73c1f4
    // 0x73c1f0: mov             x3, x2
    // 0x73c1f4: ldur            x0, [fp, #-0x10]
    // 0x73c1f8: stur            x3, [fp, #-0x20]
    // 0x73c1fc: r0 = DateTime()
    //     0x73c1fc: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x73c200: mov             x1, x0
    // 0x73c204: r2 = 2020
    //     0x73c204: mov             x2, #0x7e4
    // 0x73c208: stur            x0, [fp, #-0x28]
    // 0x73c20c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x73c20c: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x73c210: r0 = DateTime()
    //     0x73c210: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x73c214: r0 = DateTime()
    //     0x73c214: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x73c218: mov             x1, x0
    // 0x73c21c: r2 = 2030
    //     0x73c21c: mov             x2, #0x7ee
    // 0x73c220: stur            x0, [fp, #-0x30]
    // 0x73c224: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x73c224: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x73c228: r0 = DateTime()
    //     0x73c228: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x73c22c: ldur            x1, [fp, #-0x18]
    // 0x73c230: ldur            x2, [fp, #-0x28]
    // 0x73c234: ldur            x3, [fp, #-0x20]
    // 0x73c238: ldur            x5, [fp, #-0x30]
    // 0x73c23c: r4 = const [0, 0x4, 0, 0x4, null]
    //     0x73c23c: ldr             x4, [PP, #0x6e0]  ; [pp+0x6e0] List(5) [0, 0x4, 0, 0x4, Null]
    // 0x73c240: r0 = showDatePicker()
    //     0x73c240: bl              #0x6d2148  ; [package:flutter/src/material/date_picker.dart] ::showDatePicker
    // 0x73c244: mov             x1, x0
    // 0x73c248: stur            x1, [fp, #-0x18]
    // 0x73c24c: r0 = Await()
    //     0x73c24c: bl              #0x3dd188  ; AwaitStub
    // 0x73c250: mov             x1, x0
    // 0x73c254: ldur            x0, [fp, #-0x10]
    // 0x73c258: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x73c258: ldur            w2, [x0, #0x17]
    // 0x73c25c: DecompressPointer r2
    //     0x73c25c: add             x2, x2, HEAP, lsl #32
    // 0x73c260: stp             x1, x2, [SP]
    // 0x73c264: mov             x0, x2
    // 0x73c268: ClosureCall
    //     0x73c268: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x73c26c: ldur            x2, [x0, #0x1f]
    //     0x73c270: blr             x2
    // 0x73c274: r0 = Null
    //     0x73c274: mov             x0, NULL
    // 0x73c278: r0 = ReturnAsyncNotFuture()
    //     0x73c278: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x73c27c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73c27c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73c280: b               #0x73c194
  }
  static _ buildTab(/* No info */) {
    // ** addr: 0x741544, size: 0x298
    // 0x741544: EnterFrame
    //     0x741544: stp             fp, lr, [SP, #-0x10]!
    //     0x741548: mov             fp, SP
    // 0x74154c: AllocStack(0x40)
    //     0x74154c: sub             SP, SP, #0x40
    // 0x741550: SetupParameters(dynamic _ /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */, dynamic _ /* r5 => r5, fp-0x20 */)
    //     0x741550: stur            x1, [fp, #-8]
    //     0x741554: stur            x2, [fp, #-0x10]
    //     0x741558: stur            x3, [fp, #-0x18]
    //     0x74155c: stur            x5, [fp, #-0x20]
    // 0x741560: CheckStackOverflow
    //     0x741560: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x741564: cmp             SP, x16
    //     0x741568: b.ls            #0x7417d4
    // 0x74156c: r0 = Icon()
    //     0x74156c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x741570: mov             x1, x0
    // 0x741574: ldur            x0, [fp, #-8]
    // 0x741578: stur            x1, [fp, #-0x28]
    // 0x74157c: StoreField: r1->field_b = r0
    //     0x74157c: stur            w0, [x1, #0xb]
    // 0x741580: r0 = 18.000000
    //     0x741580: add             x0, PP, #0xc, lsl #12  ; [pp+0xce08] 18
    //     0x741584: ldr             x0, [x0, #0xe08]
    // 0x741588: StoreField: r1->field_f = r0
    //     0x741588: stur            w0, [x1, #0xf]
    // 0x74158c: r0 = Text()
    //     0x74158c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x741590: mov             x3, x0
    // 0x741594: ldur            x0, [fp, #-0x10]
    // 0x741598: stur            x3, [fp, #-8]
    // 0x74159c: StoreField: r3->field_b = r0
    //     0x74159c: stur            w0, [x3, #0xb]
    // 0x7415a0: r1 = Null
    //     0x7415a0: mov             x1, NULL
    // 0x7415a4: r2 = 8
    //     0x7415a4: mov             x2, #8
    // 0x7415a8: r0 = AllocateArray()
    //     0x7415a8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7415ac: mov             x2, x0
    // 0x7415b0: ldur            x0, [fp, #-0x28]
    // 0x7415b4: stur            x2, [fp, #-0x10]
    // 0x7415b8: StoreField: r2->field_f = r0
    //     0x7415b8: stur            w0, [x2, #0xf]
    // 0x7415bc: r16 = Instance_SizedBox
    //     0x7415bc: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f68] Obj!SizedBox@a1fb51
    //     0x7415c0: ldr             x16, [x16, #0xf68]
    // 0x7415c4: StoreField: r2->field_13 = r16
    //     0x7415c4: stur            w16, [x2, #0x13]
    // 0x7415c8: ldur            x0, [fp, #-8]
    // 0x7415cc: ArrayStore: r2[0] = r0  ; List_4
    //     0x7415cc: stur            w0, [x2, #0x17]
    // 0x7415d0: r16 = Instance_SizedBox
    //     0x7415d0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f68] Obj!SizedBox@a1fb51
    //     0x7415d4: ldr             x16, [x16, #0xf68]
    // 0x7415d8: StoreField: r2->field_1b = r16
    //     0x7415d8: stur            w16, [x2, #0x1b]
    // 0x7415dc: r1 = <Widget>
    //     0x7415dc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7415e0: r0 = AllocateGrowableArray()
    //     0x7415e0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7415e4: mov             x2, x0
    // 0x7415e8: ldur            x0, [fp, #-0x10]
    // 0x7415ec: stur            x2, [fp, #-8]
    // 0x7415f0: StoreField: r2->field_f = r0
    //     0x7415f0: stur            w0, [x2, #0xf]
    // 0x7415f4: r0 = 8
    //     0x7415f4: mov             x0, #8
    // 0x7415f8: StoreField: r2->field_b = r0
    //     0x7415f8: stur            w0, [x2, #0xb]
    // 0x7415fc: ldur            x0, [fp, #-0x20]
    // 0x741600: tbnz            w0, #4, #0x741760
    // 0x741604: ldur            x0, [fp, #-0x18]
    // 0x741608: r16 = 0.200000
    //     0x741608: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x74160c: ldr             x16, [x16, #0x1f0]
    // 0x741610: str             x16, [SP]
    // 0x741614: r1 = Instance_Color
    //     0x741614: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x741618: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x741618: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x74161c: ldr             x4, [x4, #0x198]
    // 0x741620: r0 = withValues()
    //     0x741620: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x741624: stur            x0, [fp, #-0x10]
    // 0x741628: r0 = Radius()
    //     0x741628: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x74162c: d0 = 10.000000
    //     0x74162c: fmov            d0, #10.00000000
    // 0x741630: stur            x0, [fp, #-0x20]
    // 0x741634: StoreField: r0->field_7 = d0
    //     0x741634: stur            d0, [x0, #7]
    // 0x741638: StoreField: r0->field_f = d0
    //     0x741638: stur            d0, [x0, #0xf]
    // 0x74163c: r0 = BorderRadius()
    //     0x74163c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x741640: mov             x1, x0
    // 0x741644: ldur            x0, [fp, #-0x20]
    // 0x741648: stur            x1, [fp, #-0x28]
    // 0x74164c: StoreField: r1->field_7 = r0
    //     0x74164c: stur            w0, [x1, #7]
    // 0x741650: StoreField: r1->field_b = r0
    //     0x741650: stur            w0, [x1, #0xb]
    // 0x741654: StoreField: r1->field_f = r0
    //     0x741654: stur            w0, [x1, #0xf]
    // 0x741658: StoreField: r1->field_13 = r0
    //     0x741658: stur            w0, [x1, #0x13]
    // 0x74165c: r0 = BoxDecoration()
    //     0x74165c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x741660: mov             x1, x0
    // 0x741664: ldur            x0, [fp, #-0x10]
    // 0x741668: stur            x1, [fp, #-0x20]
    // 0x74166c: StoreField: r1->field_7 = r0
    //     0x74166c: stur            w0, [x1, #7]
    // 0x741670: ldur            x0, [fp, #-0x28]
    // 0x741674: StoreField: r1->field_13 = r0
    //     0x741674: stur            w0, [x1, #0x13]
    // 0x741678: r0 = Instance_BoxShape
    //     0x741678: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x74167c: ldr             x0, [x0, #0x1c8]
    // 0x741680: StoreField: r1->field_23 = r0
    //     0x741680: stur            w0, [x1, #0x23]
    // 0x741684: ldur            x0, [fp, #-0x18]
    // 0x741688: lsl             x2, x0, #1
    // 0x74168c: str             x2, [SP]
    // 0x741690: r0 = toString()
    //     0x741690: bl              #0x7b5710  ; [dart:core] _Smi::toString
    // 0x741694: stur            x0, [fp, #-0x10]
    // 0x741698: r0 = Text()
    //     0x741698: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x74169c: mov             x1, x0
    // 0x7416a0: ldur            x0, [fp, #-0x10]
    // 0x7416a4: stur            x1, [fp, #-0x28]
    // 0x7416a8: StoreField: r1->field_b = r0
    //     0x7416a8: stur            w0, [x1, #0xb]
    // 0x7416ac: r0 = Instance_TextStyle
    //     0x7416ac: add             x0, PP, #0x19, lsl #12  ; [pp+0x196c8] Obj!TextStyle@a186a1
    //     0x7416b0: ldr             x0, [x0, #0x6c8]
    // 0x7416b4: StoreField: r1->field_13 = r0
    //     0x7416b4: stur            w0, [x1, #0x13]
    // 0x7416b8: r0 = Container()
    //     0x7416b8: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7416bc: stur            x0, [fp, #-0x10]
    // 0x7416c0: r16 = Instance_EdgeInsets
    //     0x7416c0: add             x16, PP, #0x19, lsl #12  ; [pp+0x196d0] Obj!EdgeInsets@a0c861
    //     0x7416c4: ldr             x16, [x16, #0x6d0]
    // 0x7416c8: ldur            lr, [fp, #-0x20]
    // 0x7416cc: stp             lr, x16, [SP, #8]
    // 0x7416d0: ldur            x16, [fp, #-0x28]
    // 0x7416d4: str             x16, [SP]
    // 0x7416d8: mov             x1, x0
    // 0x7416dc: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7416dc: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7416e0: ldr             x4, [x4, #0x1e8]
    // 0x7416e4: r0 = Container()
    //     0x7416e4: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7416e8: ldur            x0, [fp, #-8]
    // 0x7416ec: LoadField: r1 = r0->field_b
    //     0x7416ec: ldur            w1, [x0, #0xb]
    // 0x7416f0: LoadField: r2 = r0->field_f
    //     0x7416f0: ldur            w2, [x0, #0xf]
    // 0x7416f4: DecompressPointer r2
    //     0x7416f4: add             x2, x2, HEAP, lsl #32
    // 0x7416f8: LoadField: r3 = r2->field_b
    //     0x7416f8: ldur            w3, [x2, #0xb]
    // 0x7416fc: r2 = LoadInt32Instr(r1)
    //     0x7416fc: sbfx            x2, x1, #1, #0x1f
    // 0x741700: stur            x2, [fp, #-0x18]
    // 0x741704: r1 = LoadInt32Instr(r3)
    //     0x741704: sbfx            x1, x3, #1, #0x1f
    // 0x741708: cmp             x2, x1
    // 0x74170c: b.ne            #0x741718
    // 0x741710: mov             x1, x0
    // 0x741714: r0 = _growToNextCapacity()
    //     0x741714: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x741718: ldur            x2, [fp, #-8]
    // 0x74171c: ldur            x3, [fp, #-0x18]
    // 0x741720: add             x0, x3, #1
    // 0x741724: lsl             x1, x0, #1
    // 0x741728: StoreField: r2->field_b = r1
    //     0x741728: stur            w1, [x2, #0xb]
    // 0x74172c: LoadField: r1 = r2->field_f
    //     0x74172c: ldur            w1, [x2, #0xf]
    // 0x741730: DecompressPointer r1
    //     0x741730: add             x1, x1, HEAP, lsl #32
    // 0x741734: ldur            x0, [fp, #-0x10]
    // 0x741738: ArrayStore: r1[r3] = r0  ; List_4
    //     0x741738: add             x25, x1, x3, lsl #2
    //     0x74173c: add             x25, x25, #0xf
    //     0x741740: str             w0, [x25]
    //     0x741744: tbz             w0, #0, #0x741760
    //     0x741748: ldurb           w16, [x1, #-1]
    //     0x74174c: ldurb           w17, [x0, #-1]
    //     0x741750: and             x16, x17, x16, lsr #2
    //     0x741754: tst             x16, HEAP, lsr #32
    //     0x741758: b.eq            #0x741760
    //     0x74175c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x741760: r0 = Row()
    //     0x741760: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x741764: mov             x1, x0
    // 0x741768: r0 = Instance_Axis
    //     0x741768: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x74176c: stur            x1, [fp, #-0x10]
    // 0x741770: StoreField: r1->field_f = r0
    //     0x741770: stur            w0, [x1, #0xf]
    // 0x741774: r0 = Instance_MainAxisAlignment
    //     0x741774: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x741778: ldr             x0, [x0, #0x230]
    // 0x74177c: StoreField: r1->field_13 = r0
    //     0x74177c: stur            w0, [x1, #0x13]
    // 0x741780: r0 = Instance_MainAxisSize
    //     0x741780: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x741784: ldr             x0, [x0, #0xb60]
    // 0x741788: ArrayStore: r1[0] = r0  ; List_4
    //     0x741788: stur            w0, [x1, #0x17]
    // 0x74178c: r0 = Instance_CrossAxisAlignment
    //     0x74178c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x741790: ldr             x0, [x0, #0x338]
    // 0x741794: StoreField: r1->field_1b = r0
    //     0x741794: stur            w0, [x1, #0x1b]
    // 0x741798: r0 = Instance_VerticalDirection
    //     0x741798: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x74179c: ldr             x0, [x0, #0x340]
    // 0x7417a0: StoreField: r1->field_23 = r0
    //     0x7417a0: stur            w0, [x1, #0x23]
    // 0x7417a4: r0 = Instance_Clip
    //     0x7417a4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7417a8: ldr             x0, [x0, #0x348]
    // 0x7417ac: StoreField: r1->field_2b = r0
    //     0x7417ac: stur            w0, [x1, #0x2b]
    // 0x7417b0: StoreField: r1->field_2f = rZR
    //     0x7417b0: stur            xzr, [x1, #0x2f]
    // 0x7417b4: ldur            x0, [fp, #-8]
    // 0x7417b8: StoreField: r1->field_b = r0
    //     0x7417b8: stur            w0, [x1, #0xb]
    // 0x7417bc: r0 = Tab()
    //     0x7417bc: bl              #0x7417dc  ; AllocateTabStub -> Tab (size=0x1c)
    // 0x7417c0: ldur            x1, [fp, #-0x10]
    // 0x7417c4: StoreField: r0->field_f = r1
    //     0x7417c4: stur            w1, [x0, #0xf]
    // 0x7417c8: LeaveFrame
    //     0x7417c8: mov             SP, fp
    //     0x7417cc: ldp             fp, lr, [SP], #0x10
    // 0x7417d0: ret
    //     0x7417d0: ret             
    // 0x7417d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7417d4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7417d8: b               #0x74156c
  }
  static _ buildEmptyState(/* No info */) {
    // ** addr: 0x7438ac, size: 0x1b4
    // 0x7438ac: EnterFrame
    //     0x7438ac: stp             fp, lr, [SP, #-0x10]!
    //     0x7438b0: mov             fp, SP
    // 0x7438b4: AllocStack(0x40)
    //     0x7438b4: sub             SP, SP, #0x40
    // 0x7438b8: SetupParameters(dynamic _ /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */, dynamic _ /* r5 => r5, fp-0x20 */)
    //     0x7438b8: stur            x1, [fp, #-8]
    //     0x7438bc: stur            x2, [fp, #-0x10]
    //     0x7438c0: stur            x3, [fp, #-0x18]
    //     0x7438c4: stur            x5, [fp, #-0x20]
    // 0x7438c8: CheckStackOverflow
    //     0x7438c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7438cc: cmp             SP, x16
    //     0x7438d0: b.ls            #0x743a58
    // 0x7438d4: r0 = Icon()
    //     0x7438d4: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7438d8: mov             x1, x0
    // 0x7438dc: ldur            x0, [fp, #-8]
    // 0x7438e0: stur            x1, [fp, #-0x28]
    // 0x7438e4: StoreField: r1->field_b = r0
    //     0x7438e4: stur            w0, [x1, #0xb]
    // 0x7438e8: r0 = 64.000000
    //     0x7438e8: add             x0, PP, #0x14, lsl #12  ; [pp+0x14f40] 64
    //     0x7438ec: ldr             x0, [x0, #0xf40]
    // 0x7438f0: StoreField: r1->field_f = r0
    //     0x7438f0: stur            w0, [x1, #0xf]
    // 0x7438f4: r0 = Instance_Color
    //     0x7438f4: ldr             x0, [PP, #0x57a8]  ; [pp+0x57a8] Obj!Color@a21be1
    // 0x7438f8: StoreField: r1->field_23 = r0
    //     0x7438f8: stur            w0, [x1, #0x23]
    // 0x7438fc: r0 = Text()
    //     0x7438fc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x743900: mov             x1, x0
    // 0x743904: ldur            x0, [fp, #-0x10]
    // 0x743908: stur            x1, [fp, #-8]
    // 0x74390c: StoreField: r1->field_b = r0
    //     0x74390c: stur            w0, [x1, #0xb]
    // 0x743910: r0 = Instance_TextStyle
    //     0x743910: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1faa8] Obj!TextStyle@a17b41
    //     0x743914: ldr             x0, [x0, #0xaa8]
    // 0x743918: StoreField: r1->field_13 = r0
    //     0x743918: stur            w0, [x1, #0x13]
    // 0x74391c: r16 = Instance_Color
    //     0x74391c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x743920: ldr             x16, [x16, #0xf30]
    // 0x743924: r30 = Instance_Color
    //     0x743924: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x743928: stp             lr, x16, [SP]
    // 0x74392c: r4 = const [0, 0x2, 0x2, 0, backgroundColor, 0, foregroundColor, 0x1, null]
    //     0x74392c: add             x4, PP, #0x19, lsl #12  ; [pp+0x191a8] List(9) [0, 0x2, 0x2, 0, "backgroundColor", 0, "foregroundColor", 0x1, Null]
    //     0x743930: ldr             x4, [x4, #0x1a8]
    // 0x743934: r0 = styleFrom()
    //     0x743934: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x743938: stur            x0, [fp, #-0x10]
    // 0x74393c: r0 = Text()
    //     0x74393c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x743940: mov             x1, x0
    // 0x743944: ldur            x0, [fp, #-0x18]
    // 0x743948: stur            x1, [fp, #-0x30]
    // 0x74394c: StoreField: r1->field_b = r0
    //     0x74394c: stur            w0, [x1, #0xb]
    // 0x743950: r0 = _ElevatedButtonWithIcon()
    //     0x743950: bl              #0x6d5508  ; Allocate_ElevatedButtonWithIconStub -> _ElevatedButtonWithIcon (size=0x3c)
    // 0x743954: mov             x1, x0
    // 0x743958: ldur            x3, [fp, #-0x30]
    // 0x74395c: ldur            x5, [fp, #-0x20]
    // 0x743960: ldur            x6, [fp, #-0x10]
    // 0x743964: r2 = Instance_Icon
    //     0x743964: add             x2, PP, #0x12, lsl #12  ; [pp+0x125b0] Obj!Icon@a1e1b1
    //     0x743968: ldr             x2, [x2, #0x5b0]
    // 0x74396c: stur            x0, [fp, #-0x10]
    // 0x743970: r0 = _ElevatedButtonWithIcon()
    //     0x743970: bl              #0x6d5420  ; [package:flutter/src/material/elevated_button.dart] _ElevatedButtonWithIcon::_ElevatedButtonWithIcon
    // 0x743974: r1 = Null
    //     0x743974: mov             x1, NULL
    // 0x743978: r2 = 10
    //     0x743978: mov             x2, #0xa
    // 0x74397c: r0 = AllocateArray()
    //     0x74397c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x743980: mov             x2, x0
    // 0x743984: ldur            x0, [fp, #-0x28]
    // 0x743988: stur            x2, [fp, #-0x18]
    // 0x74398c: StoreField: r2->field_f = r0
    //     0x74398c: stur            w0, [x2, #0xf]
    // 0x743990: r16 = Instance_SizedBox
    //     0x743990: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x743994: ldr             x16, [x16, #0x310]
    // 0x743998: StoreField: r2->field_13 = r16
    //     0x743998: stur            w16, [x2, #0x13]
    // 0x74399c: ldur            x0, [fp, #-8]
    // 0x7439a0: ArrayStore: r2[0] = r0  ; List_4
    //     0x7439a0: stur            w0, [x2, #0x17]
    // 0x7439a4: r16 = Instance_SizedBox
    //     0x7439a4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x7439a8: ldr             x16, [x16, #0x310]
    // 0x7439ac: StoreField: r2->field_1b = r16
    //     0x7439ac: stur            w16, [x2, #0x1b]
    // 0x7439b0: ldur            x0, [fp, #-0x10]
    // 0x7439b4: StoreField: r2->field_1f = r0
    //     0x7439b4: stur            w0, [x2, #0x1f]
    // 0x7439b8: r1 = <Widget>
    //     0x7439b8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7439bc: r0 = AllocateGrowableArray()
    //     0x7439bc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7439c0: mov             x1, x0
    // 0x7439c4: ldur            x0, [fp, #-0x18]
    // 0x7439c8: stur            x1, [fp, #-8]
    // 0x7439cc: StoreField: r1->field_f = r0
    //     0x7439cc: stur            w0, [x1, #0xf]
    // 0x7439d0: r0 = 10
    //     0x7439d0: mov             x0, #0xa
    // 0x7439d4: StoreField: r1->field_b = r0
    //     0x7439d4: stur            w0, [x1, #0xb]
    // 0x7439d8: r0 = Column()
    //     0x7439d8: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7439dc: mov             x1, x0
    // 0x7439e0: r0 = Instance_Axis
    //     0x7439e0: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7439e4: stur            x1, [fp, #-0x10]
    // 0x7439e8: StoreField: r1->field_f = r0
    //     0x7439e8: stur            w0, [x1, #0xf]
    // 0x7439ec: r0 = Instance_MainAxisAlignment
    //     0x7439ec: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x7439f0: ldr             x0, [x0, #0x328]
    // 0x7439f4: StoreField: r1->field_13 = r0
    //     0x7439f4: stur            w0, [x1, #0x13]
    // 0x7439f8: r0 = Instance_MainAxisSize
    //     0x7439f8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7439fc: ldr             x0, [x0, #0x330]
    // 0x743a00: ArrayStore: r1[0] = r0  ; List_4
    //     0x743a00: stur            w0, [x1, #0x17]
    // 0x743a04: r0 = Instance_CrossAxisAlignment
    //     0x743a04: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x743a08: ldr             x0, [x0, #0x338]
    // 0x743a0c: StoreField: r1->field_1b = r0
    //     0x743a0c: stur            w0, [x1, #0x1b]
    // 0x743a10: r0 = Instance_VerticalDirection
    //     0x743a10: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x743a14: ldr             x0, [x0, #0x340]
    // 0x743a18: StoreField: r1->field_23 = r0
    //     0x743a18: stur            w0, [x1, #0x23]
    // 0x743a1c: r0 = Instance_Clip
    //     0x743a1c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x743a20: ldr             x0, [x0, #0x348]
    // 0x743a24: StoreField: r1->field_2b = r0
    //     0x743a24: stur            w0, [x1, #0x2b]
    // 0x743a28: StoreField: r1->field_2f = rZR
    //     0x743a28: stur            xzr, [x1, #0x2f]
    // 0x743a2c: ldur            x0, [fp, #-8]
    // 0x743a30: StoreField: r1->field_b = r0
    //     0x743a30: stur            w0, [x1, #0xb]
    // 0x743a34: r0 = Center()
    //     0x743a34: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x743a38: r1 = Instance_Alignment
    //     0x743a38: add             x1, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x743a3c: ldr             x1, [x1, #0x60]
    // 0x743a40: StoreField: r0->field_f = r1
    //     0x743a40: stur            w1, [x0, #0xf]
    // 0x743a44: ldur            x1, [fp, #-0x10]
    // 0x743a48: StoreField: r0->field_b = r1
    //     0x743a48: stur            w1, [x0, #0xb]
    // 0x743a4c: LeaveFrame
    //     0x743a4c: mov             SP, fp
    //     0x743a50: ldp             fp, lr, [SP], #0x10
    // 0x743a54: ret
    //     0x743a54: ret             
    // 0x743a58: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x743a58: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x743a5c: b               #0x7438d4
  }
  static _ buildInfoRow(/* No info */) {
    // ** addr: 0x745170, size: 0x1c8
    // 0x745170: EnterFrame
    //     0x745170: stp             fp, lr, [SP, #-0x10]!
    //     0x745174: mov             fp, SP
    // 0x745178: AllocStack(0x28)
    //     0x745178: sub             SP, SP, #0x28
    // 0x74517c: SetupParameters(dynamic _ /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x74517c: stur            x1, [fp, #-8]
    //     0x745180: stur            x2, [fp, #-0x10]
    //     0x745184: stur            x3, [fp, #-0x18]
    // 0x745188: CheckStackOverflow
    //     0x745188: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74518c: cmp             SP, x16
    //     0x745190: b.ls            #0x745330
    // 0x745194: r0 = Icon()
    //     0x745194: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x745198: mov             x3, x0
    // 0x74519c: ldur            x0, [fp, #-8]
    // 0x7451a0: stur            x3, [fp, #-0x20]
    // 0x7451a4: StoreField: r3->field_b = r0
    //     0x7451a4: stur            w0, [x3, #0xb]
    // 0x7451a8: r0 = 16.000000
    //     0x7451a8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x7451ac: ldr             x0, [x0, #0x358]
    // 0x7451b0: StoreField: r3->field_f = r0
    //     0x7451b0: stur            w0, [x3, #0xf]
    // 0x7451b4: r0 = Instance_Color
    //     0x7451b4: ldr             x0, [PP, #0x57a8]  ; [pp+0x57a8] Obj!Color@a21be1
    // 0x7451b8: StoreField: r3->field_23 = r0
    //     0x7451b8: stur            w0, [x3, #0x23]
    // 0x7451bc: r1 = Null
    //     0x7451bc: mov             x1, NULL
    // 0x7451c0: r2 = 4
    //     0x7451c0: mov             x2, #4
    // 0x7451c4: r0 = AllocateArray()
    //     0x7451c4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7451c8: mov             x1, x0
    // 0x7451cc: ldur            x0, [fp, #-0x10]
    // 0x7451d0: StoreField: r1->field_f = r0
    //     0x7451d0: stur            w0, [x1, #0xf]
    // 0x7451d4: r16 = ": "
    //     0x7451d4: ldr             x16, [PP, #0x870]  ; [pp+0x870] ": "
    // 0x7451d8: StoreField: r1->field_13 = r16
    //     0x7451d8: stur            w16, [x1, #0x13]
    // 0x7451dc: str             x1, [SP]
    // 0x7451e0: r0 = _interpolate()
    //     0x7451e0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7451e4: stur            x0, [fp, #-8]
    // 0x7451e8: r0 = Text()
    //     0x7451e8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7451ec: mov             x1, x0
    // 0x7451f0: ldur            x0, [fp, #-8]
    // 0x7451f4: stur            x1, [fp, #-0x10]
    // 0x7451f8: StoreField: r1->field_b = r0
    //     0x7451f8: stur            w0, [x1, #0xb]
    // 0x7451fc: r0 = Instance_TextStyle
    //     0x7451fc: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fb60] Obj!TextStyle@a18a21
    //     0x745200: ldr             x0, [x0, #0xb60]
    // 0x745204: StoreField: r1->field_13 = r0
    //     0x745204: stur            w0, [x1, #0x13]
    // 0x745208: r0 = Text()
    //     0x745208: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x74520c: mov             x2, x0
    // 0x745210: ldur            x0, [fp, #-0x18]
    // 0x745214: stur            x2, [fp, #-8]
    // 0x745218: StoreField: r2->field_b = r0
    //     0x745218: stur            w0, [x2, #0xb]
    // 0x74521c: r0 = Instance_TextStyle
    //     0x74521c: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a4f8] Obj!TextStyle@a174b1
    //     0x745220: ldr             x0, [x0, #0x4f8]
    // 0x745224: StoreField: r2->field_13 = r0
    //     0x745224: stur            w0, [x2, #0x13]
    // 0x745228: r1 = <FlexParentData>
    //     0x745228: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x74522c: ldr             x1, [x1, #0x340]
    // 0x745230: r0 = Expanded()
    //     0x745230: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x745234: mov             x3, x0
    // 0x745238: r0 = 1
    //     0x745238: mov             x0, #1
    // 0x74523c: stur            x3, [fp, #-0x18]
    // 0x745240: StoreField: r3->field_13 = r0
    //     0x745240: stur            x0, [x3, #0x13]
    // 0x745244: r0 = Instance_FlexFit
    //     0x745244: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x745248: ldr             x0, [x0, #0x348]
    // 0x74524c: StoreField: r3->field_1b = r0
    //     0x74524c: stur            w0, [x3, #0x1b]
    // 0x745250: ldur            x0, [fp, #-8]
    // 0x745254: StoreField: r3->field_b = r0
    //     0x745254: stur            w0, [x3, #0xb]
    // 0x745258: r1 = Null
    //     0x745258: mov             x1, NULL
    // 0x74525c: r2 = 8
    //     0x74525c: mov             x2, #8
    // 0x745260: r0 = AllocateArray()
    //     0x745260: bl              #0x9280a0  ; AllocateArrayStub
    // 0x745264: mov             x2, x0
    // 0x745268: ldur            x0, [fp, #-0x20]
    // 0x74526c: stur            x2, [fp, #-8]
    // 0x745270: StoreField: r2->field_f = r0
    //     0x745270: stur            w0, [x2, #0xf]
    // 0x745274: r16 = Instance_SizedBox
    //     0x745274: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x745278: ldr             x16, [x16, #0x368]
    // 0x74527c: StoreField: r2->field_13 = r16
    //     0x74527c: stur            w16, [x2, #0x13]
    // 0x745280: ldur            x0, [fp, #-0x10]
    // 0x745284: ArrayStore: r2[0] = r0  ; List_4
    //     0x745284: stur            w0, [x2, #0x17]
    // 0x745288: ldur            x0, [fp, #-0x18]
    // 0x74528c: StoreField: r2->field_1b = r0
    //     0x74528c: stur            w0, [x2, #0x1b]
    // 0x745290: r1 = <Widget>
    //     0x745290: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x745294: r0 = AllocateGrowableArray()
    //     0x745294: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x745298: mov             x1, x0
    // 0x74529c: ldur            x0, [fp, #-8]
    // 0x7452a0: stur            x1, [fp, #-0x10]
    // 0x7452a4: StoreField: r1->field_f = r0
    //     0x7452a4: stur            w0, [x1, #0xf]
    // 0x7452a8: r0 = 8
    //     0x7452a8: mov             x0, #8
    // 0x7452ac: StoreField: r1->field_b = r0
    //     0x7452ac: stur            w0, [x1, #0xb]
    // 0x7452b0: r0 = Row()
    //     0x7452b0: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7452b4: mov             x1, x0
    // 0x7452b8: r0 = Instance_Axis
    //     0x7452b8: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7452bc: stur            x1, [fp, #-8]
    // 0x7452c0: StoreField: r1->field_f = r0
    //     0x7452c0: stur            w0, [x1, #0xf]
    // 0x7452c4: r0 = Instance_MainAxisAlignment
    //     0x7452c4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7452c8: ldr             x0, [x0, #0x230]
    // 0x7452cc: StoreField: r1->field_13 = r0
    //     0x7452cc: stur            w0, [x1, #0x13]
    // 0x7452d0: r0 = Instance_MainAxisSize
    //     0x7452d0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7452d4: ldr             x0, [x0, #0x330]
    // 0x7452d8: ArrayStore: r1[0] = r0  ; List_4
    //     0x7452d8: stur            w0, [x1, #0x17]
    // 0x7452dc: r0 = Instance_CrossAxisAlignment
    //     0x7452dc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7452e0: ldr             x0, [x0, #0x338]
    // 0x7452e4: StoreField: r1->field_1b = r0
    //     0x7452e4: stur            w0, [x1, #0x1b]
    // 0x7452e8: r0 = Instance_VerticalDirection
    //     0x7452e8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7452ec: ldr             x0, [x0, #0x340]
    // 0x7452f0: StoreField: r1->field_23 = r0
    //     0x7452f0: stur            w0, [x1, #0x23]
    // 0x7452f4: r0 = Instance_Clip
    //     0x7452f4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7452f8: ldr             x0, [x0, #0x348]
    // 0x7452fc: StoreField: r1->field_2b = r0
    //     0x7452fc: stur            w0, [x1, #0x2b]
    // 0x745300: StoreField: r1->field_2f = rZR
    //     0x745300: stur            xzr, [x1, #0x2f]
    // 0x745304: ldur            x0, [fp, #-0x10]
    // 0x745308: StoreField: r1->field_b = r0
    //     0x745308: stur            w0, [x1, #0xb]
    // 0x74530c: r0 = Padding()
    //     0x74530c: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x745310: r1 = Instance_EdgeInsets
    //     0x745310: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fb68] Obj!EdgeInsets@a0c891
    //     0x745314: ldr             x1, [x1, #0xb68]
    // 0x745318: StoreField: r0->field_f = r1
    //     0x745318: stur            w1, [x0, #0xf]
    // 0x74531c: ldur            x1, [fp, #-8]
    // 0x745320: StoreField: r0->field_b = r1
    //     0x745320: stur            w1, [x0, #0xb]
    // 0x745324: LeaveFrame
    //     0x745324: mov             SP, fp
    //     0x745328: ldp             fp, lr, [SP], #0x10
    // 0x74532c: ret
    //     0x74532c: ret             
    // 0x745330: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x745330: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x745334: b               #0x745194
  }
}

// lib: , url: package:umrem_demo/features/admin/screens/user_selection_view.dart

// class id: 1049537, size: 0x8
class :: {
}

// class id: 2927, size: 0xc, field offset: 0xc
//   const constructor, 
class _UserSelectionContent extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7e096c, size: 0x40c
    // 0x7e096c: EnterFrame
    //     0x7e096c: stp             fp, lr, [SP, #-0x10]!
    //     0x7e0970: mov             fp, SP
    // 0x7e0974: AllocStack(0x40)
    //     0x7e0974: sub             SP, SP, #0x40
    // 0x7e0978: SetupParameters(_UserSelectionContent this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x7e0978: stur            x1, [fp, #-8]
    //     0x7e097c: stur            x2, [fp, #-0x10]
    // 0x7e0980: CheckStackOverflow
    //     0x7e0980: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e0984: cmp             SP, x16
    //     0x7e0988: b.ls            #0x7e0d70
    // 0x7e098c: r1 = 2
    //     0x7e098c: mov             x1, #2
    // 0x7e0990: r0 = AllocateContext()
    //     0x7e0990: bl              #0x927010  ; AllocateContextStub
    // 0x7e0994: mov             x3, x0
    // 0x7e0998: ldur            x0, [fp, #-8]
    // 0x7e099c: stur            x3, [fp, #-0x18]
    // 0x7e09a0: StoreField: r3->field_f = r0
    //     0x7e09a0: stur            w0, [x3, #0xf]
    // 0x7e09a4: ldur            x0, [fp, #-0x10]
    // 0x7e09a8: StoreField: r3->field_13 = r0
    //     0x7e09a8: stur            w0, [x3, #0x13]
    // 0x7e09ac: mov             x2, x3
    // 0x7e09b0: r1 = Function '<anonymous closure>':.
    //     0x7e09b0: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c4d0] AnonymousClosure: (0x7233f8), in [package:umrem_demo/features/info_screen/screens/technical_support_screen.dart] TechnicalSupportScreen::build (0x7eef84)
    //     0x7e09b4: ldr             x1, [x1, #0x4d0]
    // 0x7e09b8: r0 = AllocateClosure()
    //     0x7e09b8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e09bc: stur            x0, [fp, #-8]
    // 0x7e09c0: r0 = IconButton()
    //     0x7e09c0: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x7e09c4: mov             x1, x0
    // 0x7e09c8: ldur            x0, [fp, #-8]
    // 0x7e09cc: stur            x1, [fp, #-0x10]
    // 0x7e09d0: StoreField: r1->field_3b = r0
    //     0x7e09d0: stur            w0, [x1, #0x3b]
    // 0x7e09d4: r0 = false
    //     0x7e09d4: add             x0, NULL, #0x30  ; false
    // 0x7e09d8: StoreField: r1->field_4f = r0
    //     0x7e09d8: stur            w0, [x1, #0x4f]
    // 0x7e09dc: r2 = Instance_Icon
    //     0x7e09dc: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c4d8] Obj!Icon@a1e071
    //     0x7e09e0: ldr             x2, [x2, #0x4d8]
    // 0x7e09e4: StoreField: r1->field_1f = r2
    //     0x7e09e4: stur            w2, [x1, #0x1f]
    // 0x7e09e8: r2 = Instance__IconButtonVariant
    //     0x7e09e8: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x7e09ec: ldr             x2, [x2, #0x1b8]
    // 0x7e09f0: StoreField: r1->field_6f = r2
    //     0x7e09f0: stur            w2, [x1, #0x6f]
    // 0x7e09f4: r0 = AppBar()
    //     0x7e09f4: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x7e09f8: stur            x0, [fp, #-8]
    // 0x7e09fc: ldur            x16, [fp, #-0x10]
    // 0x7e0a00: r30 = true
    //     0x7e0a00: add             lr, NULL, #0x20  ; true
    // 0x7e0a04: stp             lr, x16, [SP, #8]
    // 0x7e0a08: r16 = 0.000000
    //     0x7e0a08: ldr             x16, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x7e0a0c: str             x16, [SP]
    // 0x7e0a10: mov             x1, x0
    // 0x7e0a14: r2 = Instance_Text
    //     0x7e0a14: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c4e0] Obj!Text@a1d931
    //     0x7e0a18: ldr             x2, [x2, #0x4e0]
    // 0x7e0a1c: r4 = const [0, 0x5, 0x3, 0x2, centerTitle, 0x3, elevation, 0x4, leading, 0x2, null]
    //     0x7e0a1c: add             x4, PP, #0x1c, lsl #12  ; [pp+0x1c4e8] List(11) [0, 0x5, 0x3, 0x2, "centerTitle", 0x3, "elevation", 0x4, "leading", 0x2, Null]
    //     0x7e0a20: ldr             x4, [x4, #0x4e8]
    // 0x7e0a24: r0 = AppBar()
    //     0x7e0a24: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x7e0a28: r0 = Radius()
    //     0x7e0a28: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e0a2c: d0 = 12.000000
    //     0x7e0a2c: fmov            d0, #12.00000000
    // 0x7e0a30: stur            x0, [fp, #-0x10]
    // 0x7e0a34: StoreField: r0->field_7 = d0
    //     0x7e0a34: stur            d0, [x0, #7]
    // 0x7e0a38: StoreField: r0->field_f = d0
    //     0x7e0a38: stur            d0, [x0, #0xf]
    // 0x7e0a3c: r0 = BorderRadius()
    //     0x7e0a3c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e0a40: mov             x1, x0
    // 0x7e0a44: ldur            x0, [fp, #-0x10]
    // 0x7e0a48: stur            x1, [fp, #-0x20]
    // 0x7e0a4c: StoreField: r1->field_7 = r0
    //     0x7e0a4c: stur            w0, [x1, #7]
    // 0x7e0a50: StoreField: r1->field_b = r0
    //     0x7e0a50: stur            w0, [x1, #0xb]
    // 0x7e0a54: StoreField: r1->field_f = r0
    //     0x7e0a54: stur            w0, [x1, #0xf]
    // 0x7e0a58: StoreField: r1->field_13 = r0
    //     0x7e0a58: stur            w0, [x1, #0x13]
    // 0x7e0a5c: r0 = OutlineInputBorder()
    //     0x7e0a5c: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x7e0a60: mov             x3, x0
    // 0x7e0a64: ldur            x0, [fp, #-0x20]
    // 0x7e0a68: stur            x3, [fp, #-0x10]
    // 0x7e0a6c: StoreField: r3->field_13 = r0
    //     0x7e0a6c: stur            w0, [x3, #0x13]
    // 0x7e0a70: d0 = 4.000000
    //     0x7e0a70: fmov            d0, #4.00000000
    // 0x7e0a74: StoreField: r3->field_b = d0
    //     0x7e0a74: stur            d0, [x3, #0xb]
    // 0x7e0a78: r0 = Instance_BorderSide
    //     0x7e0a78: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c4f0] Obj!BorderSide@a19531
    //     0x7e0a7c: ldr             x0, [x0, #0x4f0]
    // 0x7e0a80: StoreField: r3->field_7 = r0
    //     0x7e0a80: stur            w0, [x3, #7]
    // 0x7e0a84: r1 = _ConstMap len:12
    //     0x7e0a84: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e0a88: r2 = 200
    //     0x7e0a88: mov             x2, #0xc8
    // 0x7e0a8c: r0 = []()
    //     0x7e0a8c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e0a90: stur            x0, [fp, #-0x20]
    // 0x7e0a94: r0 = InputDecoration()
    //     0x7e0a94: bl              #0x5fbec8  ; AllocateInputDecorationStub -> InputDecoration (size=0xec)
    // 0x7e0a98: mov             x1, x0
    // 0x7e0a9c: r0 = "Kullanıcı ara..."
    //     0x7e0a9c: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c4f8] "Kullanıcı ara..."
    //     0x7e0aa0: ldr             x0, [x0, #0x4f8]
    // 0x7e0aa4: stur            x1, [fp, #-0x28]
    // 0x7e0aa8: StoreField: r1->field_2f = r0
    //     0x7e0aa8: stur            w0, [x1, #0x2f]
    // 0x7e0aac: r0 = true
    //     0x7e0aac: add             x0, NULL, #0x20  ; true
    // 0x7e0ab0: StoreField: r1->field_47 = r0
    //     0x7e0ab0: stur            w0, [x1, #0x47]
    // 0x7e0ab4: StoreField: r1->field_4b = r0
    //     0x7e0ab4: stur            w0, [x1, #0x4b]
    // 0x7e0ab8: r2 = Instance_EdgeInsets
    //     0x7e0ab8: add             x2, PP, #0x13, lsl #12  ; [pp+0x139a0] Obj!EdgeInsets@a0c4a1
    //     0x7e0abc: ldr             x2, [x2, #0x9a0]
    // 0x7e0ac0: StoreField: r1->field_6b = r2
    //     0x7e0ac0: stur            w2, [x1, #0x6b]
    // 0x7e0ac4: r2 = Instance_Icon
    //     0x7e0ac4: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c130] Obj!Icon@a1e731
    //     0x7e0ac8: ldr             x2, [x2, #0x130]
    // 0x7e0acc: StoreField: r1->field_73 = r2
    //     0x7e0acc: stur            w2, [x1, #0x73]
    // 0x7e0ad0: StoreField: r1->field_af = r0
    //     0x7e0ad0: stur            w0, [x1, #0xaf]
    // 0x7e0ad4: ldur            x2, [fp, #-0x20]
    // 0x7e0ad8: StoreField: r1->field_b3 = r2
    //     0x7e0ad8: stur            w2, [x1, #0xb3]
    // 0x7e0adc: ldur            x2, [fp, #-0x10]
    // 0x7e0ae0: StoreField: r1->field_d3 = r2
    //     0x7e0ae0: stur            w2, [x1, #0xd3]
    // 0x7e0ae4: StoreField: r1->field_d7 = r0
    //     0x7e0ae4: stur            w0, [x1, #0xd7]
    // 0x7e0ae8: r0 = TextField()
    //     0x7e0ae8: bl              #0x684214  ; AllocateTextFieldStub -> TextField (size=0x128)
    // 0x7e0aec: mov             x3, x0
    // 0x7e0af0: r0 = EditableText
    //     0x7e0af0: ldr             x0, [PP, #0x6f50]  ; [pp+0x6f50] Type: EditableText
    // 0x7e0af4: stur            x3, [fp, #-0x10]
    // 0x7e0af8: StoreField: r3->field_f = r0
    //     0x7e0af8: stur            w0, [x3, #0xf]
    // 0x7e0afc: ldur            x0, [fp, #-0x28]
    // 0x7e0b00: StoreField: r3->field_1b = r0
    //     0x7e0b00: stur            w0, [x3, #0x1b]
    // 0x7e0b04: r0 = Instance_TextCapitalization
    //     0x7e0b04: add             x0, PP, #0x14, lsl #12  ; [pp+0x144f0] Obj!TextCapitalization@a29af1
    //     0x7e0b08: ldr             x0, [x0, #0x4f0]
    // 0x7e0b0c: StoreField: r3->field_27 = r0
    //     0x7e0b0c: stur            w0, [x3, #0x27]
    // 0x7e0b10: r0 = Instance_TextAlign
    //     0x7e0b10: ldr             x0, [PP, #0x4b00]  ; [pp+0x4b00] Obj!TextAlign@a2cf31
    // 0x7e0b14: StoreField: r3->field_33 = r0
    //     0x7e0b14: stur            w0, [x3, #0x33]
    // 0x7e0b18: r0 = false
    //     0x7e0b18: add             x0, NULL, #0x30  ; false
    // 0x7e0b1c: StoreField: r3->field_6b = r0
    //     0x7e0b1c: stur            w0, [x3, #0x6b]
    // 0x7e0b20: StoreField: r3->field_3f = r0
    //     0x7e0b20: stur            w0, [x3, #0x3f]
    // 0x7e0b24: r1 = "•"
    //     0x7e0b24: add             x1, PP, #0x14, lsl #12  ; [pp+0x144f8] "•"
    //     0x7e0b28: ldr             x1, [x1, #0x4f8]
    // 0x7e0b2c: StoreField: r3->field_47 = r1
    //     0x7e0b2c: stur            w1, [x3, #0x47]
    // 0x7e0b30: StoreField: r3->field_4b = r0
    //     0x7e0b30: stur            w0, [x3, #0x4b]
    // 0x7e0b34: r4 = true
    //     0x7e0b34: add             x4, NULL, #0x20  ; true
    // 0x7e0b38: StoreField: r3->field_5b = r4
    //     0x7e0b38: stur            w4, [x3, #0x5b]
    // 0x7e0b3c: r1 = 2
    //     0x7e0b3c: mov             x1, #2
    // 0x7e0b40: StoreField: r3->field_5f = r1
    //     0x7e0b40: stur            w1, [x3, #0x5f]
    // 0x7e0b44: StoreField: r3->field_67 = r0
    //     0x7e0b44: stur            w0, [x3, #0x67]
    // 0x7e0b48: ldur            x2, [fp, #-0x18]
    // 0x7e0b4c: r1 = Function '<anonymous closure>':.
    //     0x7e0b4c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c500] AnonymousClosure: (0x7e1bec), in [package:umrem_demo/features/admin/screens/user_selection_view.dart] _UserSelectionContent::build (0x7e096c)
    //     0x7e0b50: ldr             x1, [x1, #0x500]
    // 0x7e0b54: r0 = AllocateClosure()
    //     0x7e0b54: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e0b58: mov             x1, x0
    // 0x7e0b5c: ldur            x0, [fp, #-0x10]
    // 0x7e0b60: StoreField: r0->field_7f = r1
    //     0x7e0b60: stur            w1, [x0, #0x7f]
    // 0x7e0b64: d0 = 2.000000
    //     0x7e0b64: fmov            d0, #2.00000000
    // 0x7e0b68: StoreField: r0->field_9b = d0
    //     0x7e0b68: stur            d0, [x0, #0x9b]
    // 0x7e0b6c: r1 = Instance_EdgeInsets
    //     0x7e0b6c: ldr             x1, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x7e0b70: StoreField: r0->field_c3 = r1
    //     0x7e0b70: stur            w1, [x0, #0xc3]
    // 0x7e0b74: r1 = Instance_DragStartBehavior
    //     0x7e0b74: ldr             x1, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7e0b78: StoreField: r0->field_d3 = r1
    //     0x7e0b78: stur            w1, [x0, #0xd3]
    // 0x7e0b7c: r2 = false
    //     0x7e0b7c: add             x2, NULL, #0x30  ; false
    // 0x7e0b80: StoreField: r0->field_db = r2
    //     0x7e0b80: stur            w2, [x0, #0xdb]
    // 0x7e0b84: r3 = const []
    //     0x7e0b84: ldr             x3, [PP, #0x73e8]  ; [pp+0x73e8] List<String>(0)
    // 0x7e0b88: StoreField: r0->field_f7 = r3
    //     0x7e0b88: stur            w3, [x0, #0xf7]
    // 0x7e0b8c: r3 = Instance_Clip
    //     0x7e0b8c: add             x3, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x7e0b90: ldr             x3, [x3, #0x2d8]
    // 0x7e0b94: StoreField: r0->field_fb = r3
    //     0x7e0b94: stur            w3, [x0, #0xfb]
    // 0x7e0b98: r3 = true
    //     0x7e0b98: add             x3, NULL, #0x20  ; true
    // 0x7e0b9c: r17 = 259
    //     0x7e0b9c: mov             x17, #0x103
    // 0x7e0ba0: str             w3, [x0, x17]
    // 0x7e0ba4: r17 = 263
    //     0x7e0ba4: mov             x17, #0x107
    // 0x7e0ba8: str             w3, [x0, x17]
    // 0x7e0bac: r17 = 267
    //     0x7e0bac: mov             x17, #0x10b
    // 0x7e0bb0: str             w3, [x0, x17]
    // 0x7e0bb4: r4 = Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static.
    //     0x7e0bb4: add             x4, PP, #0x18, lsl #12  ; [pp+0x189f8] Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static. (0x7f2290684300)
    //     0x7e0bb8: ldr             x4, [x4, #0x9f8]
    // 0x7e0bbc: r17 = 275
    //     0x7e0bbc: mov             x17, #0x113
    // 0x7e0bc0: str             w4, [x0, x17]
    // 0x7e0bc4: r17 = 279
    //     0x7e0bc4: mov             x17, #0x117
    // 0x7e0bc8: str             w3, [x0, x17]
    // 0x7e0bcc: r4 = Instance_SmartDashesType
    //     0x7e0bcc: ldr             x4, [PP, #0x73f0]  ; [pp+0x73f0] Obj!SmartDashesType@a29cf1
    // 0x7e0bd0: StoreField: r0->field_53 = r4
    //     0x7e0bd0: stur            w4, [x0, #0x53]
    // 0x7e0bd4: r4 = Instance_SmartQuotesType
    //     0x7e0bd4: add             x4, PP, #0x14, lsl #12  ; [pp+0x14520] Obj!SmartQuotesType@a29cd1
    //     0x7e0bd8: ldr             x4, [x4, #0x520]
    // 0x7e0bdc: StoreField: r0->field_57 = r4
    //     0x7e0bdc: stur            w4, [x0, #0x57]
    // 0x7e0be0: r4 = Instance_TextInputType
    //     0x7e0be0: add             x4, PP, #0x14, lsl #12  ; [pp+0x14528] Obj!TextInputType@a0acc1
    //     0x7e0be4: ldr             x4, [x4, #0x528]
    // 0x7e0be8: StoreField: r0->field_1f = r4
    //     0x7e0be8: stur            w4, [x0, #0x1f]
    // 0x7e0bec: StoreField: r0->field_c7 = r3
    //     0x7e0bec: stur            w3, [x0, #0xc7]
    // 0x7e0bf0: r0 = Padding()
    //     0x7e0bf0: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x7e0bf4: mov             x3, x0
    // 0x7e0bf8: r0 = Instance_EdgeInsets
    //     0x7e0bf8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x7e0bfc: ldr             x0, [x0, #0x240]
    // 0x7e0c00: stur            x3, [fp, #-0x20]
    // 0x7e0c04: StoreField: r3->field_f = r0
    //     0x7e0c04: stur            w0, [x3, #0xf]
    // 0x7e0c08: ldur            x0, [fp, #-0x10]
    // 0x7e0c0c: StoreField: r3->field_b = r0
    //     0x7e0c0c: stur            w0, [x3, #0xb]
    // 0x7e0c10: ldur            x2, [fp, #-0x18]
    // 0x7e0c14: r1 = Function '<anonymous closure>':.
    //     0x7e0c14: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c508] AnonymousClosure: (0x7e0d78), in [package:umrem_demo/features/admin/screens/user_selection_view.dart] _UserSelectionContent::build (0x7e096c)
    //     0x7e0c18: ldr             x1, [x1, #0x508]
    // 0x7e0c1c: r0 = AllocateClosure()
    //     0x7e0c1c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e0c20: r1 = <LocationTrackingProvider>
    //     0x7e0c20: add             x1, PP, #0x14, lsl #12  ; [pp+0x149e8] TypeArguments: <LocationTrackingProvider>
    //     0x7e0c24: ldr             x1, [x1, #0x9e8]
    // 0x7e0c28: stur            x0, [fp, #-0x10]
    // 0x7e0c2c: r0 = Consumer()
    //     0x7e0c2c: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x7e0c30: mov             x2, x0
    // 0x7e0c34: ldur            x0, [fp, #-0x10]
    // 0x7e0c38: stur            x2, [fp, #-0x18]
    // 0x7e0c3c: StoreField: r2->field_13 = r0
    //     0x7e0c3c: stur            w0, [x2, #0x13]
    // 0x7e0c40: r1 = <FlexParentData>
    //     0x7e0c40: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7e0c44: ldr             x1, [x1, #0x340]
    // 0x7e0c48: r0 = Expanded()
    //     0x7e0c48: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7e0c4c: mov             x3, x0
    // 0x7e0c50: r0 = 1
    //     0x7e0c50: mov             x0, #1
    // 0x7e0c54: stur            x3, [fp, #-0x10]
    // 0x7e0c58: StoreField: r3->field_13 = r0
    //     0x7e0c58: stur            x0, [x3, #0x13]
    // 0x7e0c5c: r0 = Instance_FlexFit
    //     0x7e0c5c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7e0c60: ldr             x0, [x0, #0x348]
    // 0x7e0c64: StoreField: r3->field_1b = r0
    //     0x7e0c64: stur            w0, [x3, #0x1b]
    // 0x7e0c68: ldur            x0, [fp, #-0x18]
    // 0x7e0c6c: StoreField: r3->field_b = r0
    //     0x7e0c6c: stur            w0, [x3, #0xb]
    // 0x7e0c70: r1 = Null
    //     0x7e0c70: mov             x1, NULL
    // 0x7e0c74: r2 = 4
    //     0x7e0c74: mov             x2, #4
    // 0x7e0c78: r0 = AllocateArray()
    //     0x7e0c78: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e0c7c: mov             x2, x0
    // 0x7e0c80: ldur            x0, [fp, #-0x20]
    // 0x7e0c84: stur            x2, [fp, #-0x18]
    // 0x7e0c88: StoreField: r2->field_f = r0
    //     0x7e0c88: stur            w0, [x2, #0xf]
    // 0x7e0c8c: ldur            x0, [fp, #-0x10]
    // 0x7e0c90: StoreField: r2->field_13 = r0
    //     0x7e0c90: stur            w0, [x2, #0x13]
    // 0x7e0c94: r1 = <Widget>
    //     0x7e0c94: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e0c98: r0 = AllocateGrowableArray()
    //     0x7e0c98: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e0c9c: mov             x1, x0
    // 0x7e0ca0: ldur            x0, [fp, #-0x18]
    // 0x7e0ca4: stur            x1, [fp, #-0x10]
    // 0x7e0ca8: StoreField: r1->field_f = r0
    //     0x7e0ca8: stur            w0, [x1, #0xf]
    // 0x7e0cac: r0 = 4
    //     0x7e0cac: mov             x0, #4
    // 0x7e0cb0: StoreField: r1->field_b = r0
    //     0x7e0cb0: stur            w0, [x1, #0xb]
    // 0x7e0cb4: r0 = Column()
    //     0x7e0cb4: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7e0cb8: mov             x1, x0
    // 0x7e0cbc: r0 = Instance_Axis
    //     0x7e0cbc: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7e0cc0: stur            x1, [fp, #-0x18]
    // 0x7e0cc4: StoreField: r1->field_f = r0
    //     0x7e0cc4: stur            w0, [x1, #0xf]
    // 0x7e0cc8: r0 = Instance_MainAxisAlignment
    //     0x7e0cc8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e0ccc: ldr             x0, [x0, #0x230]
    // 0x7e0cd0: StoreField: r1->field_13 = r0
    //     0x7e0cd0: stur            w0, [x1, #0x13]
    // 0x7e0cd4: r0 = Instance_MainAxisSize
    //     0x7e0cd4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e0cd8: ldr             x0, [x0, #0x330]
    // 0x7e0cdc: ArrayStore: r1[0] = r0  ; List_4
    //     0x7e0cdc: stur            w0, [x1, #0x17]
    // 0x7e0ce0: r0 = Instance_CrossAxisAlignment
    //     0x7e0ce0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e0ce4: ldr             x0, [x0, #0x338]
    // 0x7e0ce8: StoreField: r1->field_1b = r0
    //     0x7e0ce8: stur            w0, [x1, #0x1b]
    // 0x7e0cec: r0 = Instance_VerticalDirection
    //     0x7e0cec: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e0cf0: ldr             x0, [x0, #0x340]
    // 0x7e0cf4: StoreField: r1->field_23 = r0
    //     0x7e0cf4: stur            w0, [x1, #0x23]
    // 0x7e0cf8: r0 = Instance_Clip
    //     0x7e0cf8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e0cfc: ldr             x0, [x0, #0x348]
    // 0x7e0d00: StoreField: r1->field_2b = r0
    //     0x7e0d00: stur            w0, [x1, #0x2b]
    // 0x7e0d04: StoreField: r1->field_2f = rZR
    //     0x7e0d04: stur            xzr, [x1, #0x2f]
    // 0x7e0d08: ldur            x0, [fp, #-0x10]
    // 0x7e0d0c: StoreField: r1->field_b = r0
    //     0x7e0d0c: stur            w0, [x1, #0xb]
    // 0x7e0d10: r0 = Scaffold()
    //     0x7e0d10: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x7e0d14: ldur            x1, [fp, #-8]
    // 0x7e0d18: ArrayStore: r0[0] = r1  ; List_4
    //     0x7e0d18: stur            w1, [x0, #0x17]
    // 0x7e0d1c: ldur            x1, [fp, #-0x18]
    // 0x7e0d20: StoreField: r0->field_1b = r1
    //     0x7e0d20: stur            w1, [x0, #0x1b]
    // 0x7e0d24: r1 = Instance_AlignmentDirectional
    //     0x7e0d24: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x7e0d28: ldr             x1, [x1, #0x350]
    // 0x7e0d2c: StoreField: r0->field_2f = r1
    //     0x7e0d2c: stur            w1, [x0, #0x2f]
    // 0x7e0d30: r1 = true
    //     0x7e0d30: add             x1, NULL, #0x20  ; true
    // 0x7e0d34: StoreField: r0->field_5f = r1
    //     0x7e0d34: stur            w1, [x0, #0x5f]
    // 0x7e0d38: r2 = Instance_DragStartBehavior
    //     0x7e0d38: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7e0d3c: StoreField: r0->field_63 = r2
    //     0x7e0d3c: stur            w2, [x0, #0x63]
    // 0x7e0d40: r2 = false
    //     0x7e0d40: add             x2, NULL, #0x30  ; false
    // 0x7e0d44: StoreField: r0->field_b = r2
    //     0x7e0d44: stur            w2, [x0, #0xb]
    // 0x7e0d48: StoreField: r0->field_f = r1
    //     0x7e0d48: stur            w1, [x0, #0xf]
    // 0x7e0d4c: StoreField: r0->field_13 = r2
    //     0x7e0d4c: stur            w2, [x0, #0x13]
    // 0x7e0d50: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x7e0d50: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x7e0d54: ldr             x2, [x2, #0x358]
    // 0x7e0d58: StoreField: r0->field_4b = r2
    //     0x7e0d58: stur            w2, [x0, #0x4b]
    // 0x7e0d5c: StoreField: r0->field_6b = r1
    //     0x7e0d5c: stur            w1, [x0, #0x6b]
    // 0x7e0d60: StoreField: r0->field_6f = r1
    //     0x7e0d60: stur            w1, [x0, #0x6f]
    // 0x7e0d64: LeaveFrame
    //     0x7e0d64: mov             SP, fp
    //     0x7e0d68: ldp             fp, lr, [SP], #0x10
    // 0x7e0d6c: ret
    //     0x7e0d6c: ret             
    // 0x7e0d70: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e0d70: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e0d74: b               #0x7e098c
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, LocationTrackingProvider, Widget?) {
    // ** addr: 0x7e0d78, size: 0x140
    // 0x7e0d78: EnterFrame
    //     0x7e0d78: stp             fp, lr, [SP, #-0x10]!
    //     0x7e0d7c: mov             fp, SP
    // 0x7e0d80: AllocStack(0x20)
    //     0x7e0d80: sub             SP, SP, #0x20
    // 0x7e0d84: SetupParameters([dynamic _ /* r0 */])
    //     0x7e0d84: ldr             x0, [fp, #0x28]
    //     0x7e0d88: ldur            w1, [x0, #0x17]
    //     0x7e0d8c: add             x1, x1, HEAP, lsl #32
    //     0x7e0d90: stur            x1, [fp, #-8]
    // 0x7e0d94: CheckStackOverflow
    //     0x7e0d94: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e0d98: cmp             SP, x16
    //     0x7e0d9c: b.ls            #0x7e0eb0
    // 0x7e0da0: r1 = 2
    //     0x7e0da0: mov             x1, #2
    // 0x7e0da4: r0 = AllocateContext()
    //     0x7e0da4: bl              #0x927010  ; AllocateContextStub
    // 0x7e0da8: mov             x2, x0
    // 0x7e0dac: ldur            x0, [fp, #-8]
    // 0x7e0db0: stur            x2, [fp, #-0x10]
    // 0x7e0db4: StoreField: r2->field_b = r0
    //     0x7e0db4: stur            w0, [x2, #0xb]
    // 0x7e0db8: ldr             x1, [fp, #0x18]
    // 0x7e0dbc: StoreField: r2->field_f = r1
    //     0x7e0dbc: stur            w1, [x2, #0xf]
    // 0x7e0dc0: LoadField: r0 = r1->field_37
    //     0x7e0dc0: ldur            w0, [x1, #0x37]
    // 0x7e0dc4: DecompressPointer r0
    //     0x7e0dc4: add             x0, x0, HEAP, lsl #32
    // 0x7e0dc8: tbnz            w0, #4, #0x7e0de0
    // 0x7e0dcc: r0 = Instance_Center
    //     0x7e0dcc: add             x0, PP, #0x12, lsl #12  ; [pp+0x12710] Obj!Center@a1fdb1
    //     0x7e0dd0: ldr             x0, [x0, #0x710]
    // 0x7e0dd4: LeaveFrame
    //     0x7e0dd4: mov             SP, fp
    //     0x7e0dd8: ldp             fp, lr, [SP], #0x10
    // 0x7e0ddc: ret
    //     0x7e0ddc: ret             
    // 0x7e0de0: LoadField: r0 = r1->field_2b
    //     0x7e0de0: ldur            w0, [x1, #0x2b]
    // 0x7e0de4: DecompressPointer r0
    //     0x7e0de4: add             x0, x0, HEAP, lsl #32
    // 0x7e0de8: LoadField: r3 = r0->field_13
    //     0x7e0de8: ldur            w3, [x0, #0x13]
    // 0x7e0dec: r4 = LoadInt32Instr(r3)
    //     0x7e0dec: sbfx            x4, x3, #1, #0x1f
    // 0x7e0df0: asr             x3, x4, #1
    // 0x7e0df4: ArrayLoad: r4 = r0[0]  ; List_4
    //     0x7e0df4: ldur            w4, [x0, #0x17]
    // 0x7e0df8: r0 = LoadInt32Instr(r4)
    //     0x7e0df8: sbfx            x0, x4, #1, #0x1f
    // 0x7e0dfc: sub             x4, x3, x0
    // 0x7e0e00: cbnz            x4, #0x7e0e18
    // 0x7e0e04: r0 = Instance_Center
    //     0x7e0e04: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c510] Obj!Center@a1fef1
    //     0x7e0e08: ldr             x0, [x0, #0x510]
    // 0x7e0e0c: LeaveFrame
    //     0x7e0e0c: mov             SP, fp
    //     0x7e0e10: ldp             fp, lr, [SP], #0x10
    // 0x7e0e14: ret
    //     0x7e0e14: ret             
    // 0x7e0e18: r0 = filteredLocations()
    //     0x7e0e18: bl              #0x7e0eb8  ; [package:umrem_demo/features/admin/providers/location_tracking_provider.dart] LocationTrackingProvider::filteredLocations
    // 0x7e0e1c: mov             x1, x0
    // 0x7e0e20: ldur            x2, [fp, #-0x10]
    // 0x7e0e24: StoreField: r2->field_13 = r0
    //     0x7e0e24: stur            w0, [x2, #0x13]
    //     0x7e0e28: ldurb           w16, [x2, #-1]
    //     0x7e0e2c: ldurb           w17, [x0, #-1]
    //     0x7e0e30: and             x16, x17, x16, lsr #2
    //     0x7e0e34: tst             x16, HEAP, lsr #32
    //     0x7e0e38: b.eq            #0x7e0e40
    //     0x7e0e3c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7e0e40: LoadField: r0 = r1->field_b
    //     0x7e0e40: ldur            w0, [x1, #0xb]
    // 0x7e0e44: r3 = LoadInt32Instr(r0)
    //     0x7e0e44: sbfx            x3, x0, #1, #0x1f
    // 0x7e0e48: stur            x3, [fp, #-0x18]
    // 0x7e0e4c: cbnz            w0, #0x7e0e64
    // 0x7e0e50: r0 = Instance_Center
    //     0x7e0e50: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c518] Obj!Center@a1fed1
    //     0x7e0e54: ldr             x0, [x0, #0x518]
    // 0x7e0e58: LeaveFrame
    //     0x7e0e58: mov             SP, fp
    //     0x7e0e5c: ldp             fp, lr, [SP], #0x10
    // 0x7e0e60: ret
    //     0x7e0e60: ret             
    // 0x7e0e64: r1 = Function '<anonymous closure>':.
    //     0x7e0e64: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c520] AnonymousClosure: (0x7e127c), in [package:umrem_demo/features/admin/screens/user_selection_view.dart] _UserSelectionContent::build (0x7e096c)
    //     0x7e0e68: ldr             x1, [x1, #0x520]
    // 0x7e0e6c: r0 = AllocateClosure()
    //     0x7e0e6c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e0e70: stur            x0, [fp, #-8]
    // 0x7e0e74: r0 = ListView()
    //     0x7e0e74: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x7e0e78: stur            x0, [fp, #-0x10]
    // 0x7e0e7c: r16 = Instance_EdgeInsets
    //     0x7e0e7c: add             x16, PP, #0xc, lsl #12  ; [pp+0xce88] Obj!EdgeInsets@a0be11
    //     0x7e0e80: ldr             x16, [x16, #0xe88]
    // 0x7e0e84: str             x16, [SP]
    // 0x7e0e88: mov             x1, x0
    // 0x7e0e8c: ldur            x2, [fp, #-8]
    // 0x7e0e90: ldur            x3, [fp, #-0x18]
    // 0x7e0e94: r4 = const [0, 0x4, 0x1, 0x3, padding, 0x3, null]
    //     0x7e0e94: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e60] List(7) [0, 0x4, 0x1, 0x3, "padding", 0x3, Null]
    //     0x7e0e98: ldr             x4, [x4, #0xe60]
    // 0x7e0e9c: r0 = ListView.builder()
    //     0x7e0e9c: bl              #0x6ce4a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.builder
    // 0x7e0ea0: ldur            x0, [fp, #-0x10]
    // 0x7e0ea4: LeaveFrame
    //     0x7e0ea4: mov             SP, fp
    //     0x7e0ea8: ldp             fp, lr, [SP], #0x10
    // 0x7e0eac: ret
    //     0x7e0eac: ret             
    // 0x7e0eb0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e0eb0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e0eb4: b               #0x7e0da0
  }
  [closure] Card <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x7e127c, size: 0x3e0
    // 0x7e127c: EnterFrame
    //     0x7e127c: stp             fp, lr, [SP, #-0x10]!
    //     0x7e1280: mov             fp, SP
    // 0x7e1284: AllocStack(0x50)
    //     0x7e1284: sub             SP, SP, #0x50
    // 0x7e1288: SetupParameters([dynamic _ /* r0 */])
    //     0x7e1288: ldr             x0, [fp, #0x20]
    //     0x7e128c: ldur            w1, [x0, #0x17]
    //     0x7e1290: add             x1, x1, HEAP, lsl #32
    //     0x7e1294: stur            x1, [fp, #-8]
    // 0x7e1298: CheckStackOverflow
    //     0x7e1298: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e129c: cmp             SP, x16
    //     0x7e12a0: b.ls            #0x7e1650
    // 0x7e12a4: r1 = 3
    //     0x7e12a4: mov             x1, #3
    // 0x7e12a8: r0 = AllocateContext()
    //     0x7e12a8: bl              #0x927010  ; AllocateContextStub
    // 0x7e12ac: mov             x3, x0
    // 0x7e12b0: ldur            x2, [fp, #-8]
    // 0x7e12b4: stur            x3, [fp, #-0x18]
    // 0x7e12b8: StoreField: r3->field_b = r2
    //     0x7e12b8: stur            w2, [x3, #0xb]
    // 0x7e12bc: ldr             x4, [fp, #0x18]
    // 0x7e12c0: StoreField: r3->field_f = r4
    //     0x7e12c0: stur            w4, [x3, #0xf]
    // 0x7e12c4: LoadField: r5 = r2->field_13
    //     0x7e12c4: ldur            w5, [x2, #0x13]
    // 0x7e12c8: DecompressPointer r5
    //     0x7e12c8: add             x5, x5, HEAP, lsl #32
    // 0x7e12cc: LoadField: r0 = r5->field_b
    //     0x7e12cc: ldur            w0, [x5, #0xb]
    // 0x7e12d0: ldr             x1, [fp, #0x10]
    // 0x7e12d4: r6 = LoadInt32Instr(r1)
    //     0x7e12d4: sbfx            x6, x1, #1, #0x1f
    //     0x7e12d8: tbz             w1, #0, #0x7e12e0
    //     0x7e12dc: ldur            x6, [x1, #7]
    // 0x7e12e0: r1 = LoadInt32Instr(r0)
    //     0x7e12e0: sbfx            x1, x0, #1, #0x1f
    // 0x7e12e4: mov             x0, x1
    // 0x7e12e8: mov             x1, x6
    // 0x7e12ec: cmp             x1, x0
    // 0x7e12f0: b.hs            #0x7e1658
    // 0x7e12f4: LoadField: r0 = r5->field_f
    //     0x7e12f4: ldur            w0, [x5, #0xf]
    // 0x7e12f8: DecompressPointer r0
    //     0x7e12f8: add             x0, x0, HEAP, lsl #32
    // 0x7e12fc: ArrayLoad: r1 = r0[r6]  ; Unknown_4
    //     0x7e12fc: add             x16, x0, x6, lsl #2
    //     0x7e1300: ldur            w1, [x16, #0xf]
    // 0x7e1304: DecompressPointer r1
    //     0x7e1304: add             x1, x1, HEAP, lsl #32
    // 0x7e1308: LoadField: r0 = r1->field_b
    //     0x7e1308: ldur            w0, [x1, #0xb]
    // 0x7e130c: DecompressPointer r0
    //     0x7e130c: add             x0, x0, HEAP, lsl #32
    // 0x7e1310: StoreField: r3->field_13 = r0
    //     0x7e1310: stur            w0, [x3, #0x13]
    // 0x7e1314: LoadField: r0 = r1->field_f
    //     0x7e1314: ldur            w0, [x1, #0xf]
    // 0x7e1318: DecompressPointer r0
    //     0x7e1318: add             x0, x0, HEAP, lsl #32
    // 0x7e131c: stur            x0, [fp, #-0x10]
    // 0x7e1320: ArrayStore: r3[0] = r0  ; List_4
    //     0x7e1320: stur            w0, [x3, #0x17]
    // 0x7e1324: r0 = Radius()
    //     0x7e1324: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e1328: d0 = 12.000000
    //     0x7e1328: fmov            d0, #12.00000000
    // 0x7e132c: stur            x0, [fp, #-0x20]
    // 0x7e1330: StoreField: r0->field_7 = d0
    //     0x7e1330: stur            d0, [x0, #7]
    // 0x7e1334: StoreField: r0->field_f = d0
    //     0x7e1334: stur            d0, [x0, #0xf]
    // 0x7e1338: r0 = BorderRadius()
    //     0x7e1338: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e133c: mov             x1, x0
    // 0x7e1340: ldur            x0, [fp, #-0x20]
    // 0x7e1344: stur            x1, [fp, #-0x28]
    // 0x7e1348: StoreField: r1->field_7 = r0
    //     0x7e1348: stur            w0, [x1, #7]
    // 0x7e134c: StoreField: r1->field_b = r0
    //     0x7e134c: stur            w0, [x1, #0xb]
    // 0x7e1350: StoreField: r1->field_f = r0
    //     0x7e1350: stur            w0, [x1, #0xf]
    // 0x7e1354: StoreField: r1->field_13 = r0
    //     0x7e1354: stur            w0, [x1, #0x13]
    // 0x7e1358: r0 = RoundedRectangleBorder()
    //     0x7e1358: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x7e135c: mov             x2, x0
    // 0x7e1360: ldur            x0, [fp, #-0x28]
    // 0x7e1364: stur            x2, [fp, #-0x20]
    // 0x7e1368: StoreField: r2->field_b = r0
    //     0x7e1368: stur            w0, [x2, #0xb]
    // 0x7e136c: r0 = Instance_BorderSide
    //     0x7e136c: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x7e1370: ldr             x0, [x0, #0xcb8]
    // 0x7e1374: StoreField: r2->field_7 = r0
    //     0x7e1374: stur            w0, [x2, #7]
    // 0x7e1378: ldr             x1, [fp, #0x18]
    // 0x7e137c: r0 = of()
    //     0x7e137c: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x7e1380: LoadField: r1 = r0->field_5b
    //     0x7e1380: ldur            w1, [x0, #0x5b]
    // 0x7e1384: DecompressPointer r1
    //     0x7e1384: add             x1, x1, HEAP, lsl #32
    // 0x7e1388: ldur            x0, [fp, #-0x10]
    // 0x7e138c: stur            x1, [fp, #-0x30]
    // 0x7e1390: LoadField: r2 = r0->field_b
    //     0x7e1390: ldur            w2, [x0, #0xb]
    // 0x7e1394: DecompressPointer r2
    //     0x7e1394: add             x2, x2, HEAP, lsl #32
    // 0x7e1398: stur            x2, [fp, #-0x28]
    // 0x7e139c: stp             xzr, x2, [SP]
    // 0x7e13a0: r0 = []()
    //     0x7e13a0: bl              #0x3ca950  ; [dart:core] _StringBase::[]
    // 0x7e13a4: r1 = LoadClassIdInstr(r0)
    //     0x7e13a4: ldur            x1, [x0, #-1]
    //     0x7e13a8: ubfx            x1, x1, #0xc, #0x14
    // 0x7e13ac: str             x0, [SP]
    // 0x7e13b0: mov             x0, x1
    // 0x7e13b4: r0 = GDT[cid_x0 + -0xff6]()
    //     0x7e13b4: sub             lr, x0, #0xff6
    //     0x7e13b8: ldr             lr, [x21, lr, lsl #3]
    //     0x7e13bc: blr             lr
    // 0x7e13c0: stur            x0, [fp, #-0x38]
    // 0x7e13c4: r0 = Text()
    //     0x7e13c4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e13c8: mov             x1, x0
    // 0x7e13cc: ldur            x0, [fp, #-0x38]
    // 0x7e13d0: stur            x1, [fp, #-0x40]
    // 0x7e13d4: StoreField: r1->field_b = r0
    //     0x7e13d4: stur            w0, [x1, #0xb]
    // 0x7e13d8: r0 = Instance_TextStyle
    //     0x7e13d8: add             x0, PP, #0x18, lsl #12  ; [pp+0x18ed8] Obj!TextStyle@a17441
    //     0x7e13dc: ldr             x0, [x0, #0xed8]
    // 0x7e13e0: StoreField: r1->field_13 = r0
    //     0x7e13e0: stur            w0, [x1, #0x13]
    // 0x7e13e4: r0 = CircleAvatar()
    //     0x7e13e4: bl              #0x6e4350  ; AllocateCircleAvatarStub -> CircleAvatar (size=0x2c)
    // 0x7e13e8: mov             x1, x0
    // 0x7e13ec: ldur            x0, [fp, #-0x40]
    // 0x7e13f0: stur            x1, [fp, #-0x38]
    // 0x7e13f4: StoreField: r1->field_b = r0
    //     0x7e13f4: stur            w0, [x1, #0xb]
    // 0x7e13f8: ldur            x0, [fp, #-0x30]
    // 0x7e13fc: StoreField: r1->field_f = r0
    //     0x7e13fc: stur            w0, [x1, #0xf]
    // 0x7e1400: r0 = Text()
    //     0x7e1400: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e1404: mov             x3, x0
    // 0x7e1408: ldur            x0, [fp, #-0x28]
    // 0x7e140c: stur            x3, [fp, #-0x30]
    // 0x7e1410: StoreField: r3->field_b = r0
    //     0x7e1410: stur            w0, [x3, #0xb]
    // 0x7e1414: r0 = Instance_TextStyle
    //     0x7e1414: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c458] Obj!TextStyle@a18c51
    //     0x7e1418: ldr             x0, [x0, #0x458]
    // 0x7e141c: StoreField: r3->field_13 = r0
    //     0x7e141c: stur            w0, [x3, #0x13]
    // 0x7e1420: r1 = Null
    //     0x7e1420: mov             x1, NULL
    // 0x7e1424: r2 = 4
    //     0x7e1424: mov             x2, #4
    // 0x7e1428: r0 = AllocateArray()
    //     0x7e1428: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e142c: stur            x0, [fp, #-0x28]
    // 0x7e1430: r16 = "Son güncelleme: "
    //     0x7e1430: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c528] "Son güncelleme: "
    //     0x7e1434: ldr             x16, [x16, #0x528]
    // 0x7e1438: StoreField: r0->field_f = r16
    //     0x7e1438: stur            w16, [x0, #0xf]
    // 0x7e143c: ldur            x1, [fp, #-8]
    // 0x7e1440: LoadField: r2 = r1->field_b
    //     0x7e1440: ldur            w2, [x1, #0xb]
    // 0x7e1444: DecompressPointer r2
    //     0x7e1444: add             x2, x2, HEAP, lsl #32
    // 0x7e1448: LoadField: r1 = r2->field_f
    //     0x7e1448: ldur            w1, [x2, #0xf]
    // 0x7e144c: DecompressPointer r1
    //     0x7e144c: add             x1, x1, HEAP, lsl #32
    // 0x7e1450: ldur            x2, [fp, #-0x10]
    // 0x7e1454: LoadField: r3 = r2->field_1f
    //     0x7e1454: ldur            w3, [x2, #0x1f]
    // 0x7e1458: DecompressPointer r3
    //     0x7e1458: add             x3, x3, HEAP, lsl #32
    // 0x7e145c: mov             x2, x3
    // 0x7e1460: r0 = _formatTimestamp()
    //     0x7e1460: bl              #0x7e165c  ; [package:umrem_demo/features/admin/screens/user_selection_view.dart] _UserSelectionContent::_formatTimestamp
    // 0x7e1464: ldur            x1, [fp, #-0x28]
    // 0x7e1468: ArrayStore: r1[1] = r0  ; List_4
    //     0x7e1468: add             x25, x1, #0x13
    //     0x7e146c: str             w0, [x25]
    //     0x7e1470: tbz             w0, #0, #0x7e148c
    //     0x7e1474: ldurb           w16, [x1, #-1]
    //     0x7e1478: ldurb           w17, [x0, #-1]
    //     0x7e147c: and             x16, x17, x16, lsr #2
    //     0x7e1480: tst             x16, HEAP, lsr #32
    //     0x7e1484: b.eq            #0x7e148c
    //     0x7e1488: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e148c: ldur            x16, [fp, #-0x28]
    // 0x7e1490: str             x16, [SP]
    // 0x7e1494: r0 = _interpolate()
    //     0x7e1494: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e1498: r1 = _ConstMap len:12
    //     0x7e1498: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e149c: r2 = 1200
    //     0x7e149c: mov             x2, #0x4b0
    // 0x7e14a0: stur            x0, [fp, #-8]
    // 0x7e14a4: r0 = []()
    //     0x7e14a4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e14a8: stur            x0, [fp, #-0x10]
    // 0x7e14ac: r0 = TextStyle()
    //     0x7e14ac: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7e14b0: mov             x1, x0
    // 0x7e14b4: r0 = true
    //     0x7e14b4: add             x0, NULL, #0x20  ; true
    // 0x7e14b8: stur            x1, [fp, #-0x28]
    // 0x7e14bc: StoreField: r1->field_7 = r0
    //     0x7e14bc: stur            w0, [x1, #7]
    // 0x7e14c0: ldur            x2, [fp, #-0x10]
    // 0x7e14c4: StoreField: r1->field_b = r2
    //     0x7e14c4: stur            w2, [x1, #0xb]
    // 0x7e14c8: r2 = 13.000000
    //     0x7e14c8: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b00] 13
    //     0x7e14cc: ldr             x2, [x2, #0xb00]
    // 0x7e14d0: StoreField: r1->field_1f = r2
    //     0x7e14d0: stur            w2, [x1, #0x1f]
    // 0x7e14d4: r0 = Text()
    //     0x7e14d4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e14d8: mov             x3, x0
    // 0x7e14dc: ldur            x0, [fp, #-8]
    // 0x7e14e0: stur            x3, [fp, #-0x10]
    // 0x7e14e4: StoreField: r3->field_b = r0
    //     0x7e14e4: stur            w0, [x3, #0xb]
    // 0x7e14e8: ldur            x0, [fp, #-0x28]
    // 0x7e14ec: StoreField: r3->field_13 = r0
    //     0x7e14ec: stur            w0, [x3, #0x13]
    // 0x7e14f0: r1 = Null
    //     0x7e14f0: mov             x1, NULL
    // 0x7e14f4: r2 = 4
    //     0x7e14f4: mov             x2, #4
    // 0x7e14f8: r0 = AllocateArray()
    //     0x7e14f8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e14fc: stur            x0, [fp, #-8]
    // 0x7e1500: r16 = Instance_SizedBox
    //     0x7e1500: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x7e1504: ldr             x16, [x16, #0x338]
    // 0x7e1508: StoreField: r0->field_f = r16
    //     0x7e1508: stur            w16, [x0, #0xf]
    // 0x7e150c: ldur            x1, [fp, #-0x10]
    // 0x7e1510: StoreField: r0->field_13 = r1
    //     0x7e1510: stur            w1, [x0, #0x13]
    // 0x7e1514: r1 = <Widget>
    //     0x7e1514: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e1518: r0 = AllocateGrowableArray()
    //     0x7e1518: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e151c: mov             x1, x0
    // 0x7e1520: ldur            x0, [fp, #-8]
    // 0x7e1524: stur            x1, [fp, #-0x10]
    // 0x7e1528: StoreField: r1->field_f = r0
    //     0x7e1528: stur            w0, [x1, #0xf]
    // 0x7e152c: r0 = 4
    //     0x7e152c: mov             x0, #4
    // 0x7e1530: StoreField: r1->field_b = r0
    //     0x7e1530: stur            w0, [x1, #0xb]
    // 0x7e1534: r0 = Column()
    //     0x7e1534: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7e1538: mov             x1, x0
    // 0x7e153c: r0 = Instance_Axis
    //     0x7e153c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7e1540: stur            x1, [fp, #-8]
    // 0x7e1544: StoreField: r1->field_f = r0
    //     0x7e1544: stur            w0, [x1, #0xf]
    // 0x7e1548: r0 = Instance_MainAxisAlignment
    //     0x7e1548: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e154c: ldr             x0, [x0, #0x230]
    // 0x7e1550: StoreField: r1->field_13 = r0
    //     0x7e1550: stur            w0, [x1, #0x13]
    // 0x7e1554: r0 = Instance_MainAxisSize
    //     0x7e1554: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e1558: ldr             x0, [x0, #0x330]
    // 0x7e155c: ArrayStore: r1[0] = r0  ; List_4
    //     0x7e155c: stur            w0, [x1, #0x17]
    // 0x7e1560: r0 = Instance_CrossAxisAlignment
    //     0x7e1560: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7e1564: ldr             x0, [x0, #0x238]
    // 0x7e1568: StoreField: r1->field_1b = r0
    //     0x7e1568: stur            w0, [x1, #0x1b]
    // 0x7e156c: r0 = Instance_VerticalDirection
    //     0x7e156c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e1570: ldr             x0, [x0, #0x340]
    // 0x7e1574: StoreField: r1->field_23 = r0
    //     0x7e1574: stur            w0, [x1, #0x23]
    // 0x7e1578: r0 = Instance_Clip
    //     0x7e1578: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e157c: ldr             x0, [x0, #0x348]
    // 0x7e1580: StoreField: r1->field_2b = r0
    //     0x7e1580: stur            w0, [x1, #0x2b]
    // 0x7e1584: StoreField: r1->field_2f = rZR
    //     0x7e1584: stur            xzr, [x1, #0x2f]
    // 0x7e1588: ldur            x0, [fp, #-0x10]
    // 0x7e158c: StoreField: r1->field_b = r0
    //     0x7e158c: stur            w0, [x1, #0xb]
    // 0x7e1590: r0 = ListTile()
    //     0x7e1590: bl              #0x680240  ; AllocateListTileStub -> ListTile (size=0x9c)
    // 0x7e1594: mov             x3, x0
    // 0x7e1598: ldur            x0, [fp, #-0x38]
    // 0x7e159c: stur            x3, [fp, #-0x10]
    // 0x7e15a0: StoreField: r3->field_b = r0
    //     0x7e15a0: stur            w0, [x3, #0xb]
    // 0x7e15a4: ldur            x0, [fp, #-0x30]
    // 0x7e15a8: StoreField: r3->field_f = r0
    //     0x7e15a8: stur            w0, [x3, #0xf]
    // 0x7e15ac: ldur            x0, [fp, #-8]
    // 0x7e15b0: StoreField: r3->field_13 = r0
    //     0x7e15b0: stur            w0, [x3, #0x13]
    // 0x7e15b4: r0 = Instance_Icon
    //     0x7e15b4: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c530] Obj!Icon@a1eff1
    //     0x7e15b8: ldr             x0, [x0, #0x530]
    // 0x7e15bc: ArrayStore: r3[0] = r0  ; List_4
    //     0x7e15bc: stur            w0, [x3, #0x17]
    // 0x7e15c0: r0 = Instance_EdgeInsets
    //     0x7e15c0: add             x0, PP, #0x12, lsl #12  ; [pp+0x121e0] Obj!EdgeInsets@a0bd51
    //     0x7e15c4: ldr             x0, [x0, #0x1e0]
    // 0x7e15c8: StoreField: r3->field_47 = r0
    //     0x7e15c8: stur            w0, [x3, #0x47]
    // 0x7e15cc: r0 = true
    //     0x7e15cc: add             x0, NULL, #0x20  ; true
    // 0x7e15d0: StoreField: r3->field_4b = r0
    //     0x7e15d0: stur            w0, [x3, #0x4b]
    // 0x7e15d4: ldur            x2, [fp, #-0x18]
    // 0x7e15d8: r1 = Function '<anonymous closure>':.
    //     0x7e15d8: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c538] AnonymousClosure: (0x7e19e8), in [package:umrem_demo/features/admin/screens/user_selection_view.dart] _UserSelectionContent::build (0x7e096c)
    //     0x7e15dc: ldr             x1, [x1, #0x538]
    // 0x7e15e0: r0 = AllocateClosure()
    //     0x7e15e0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e15e4: mov             x1, x0
    // 0x7e15e8: ldur            x0, [fp, #-0x10]
    // 0x7e15ec: StoreField: r0->field_4f = r1
    //     0x7e15ec: stur            w1, [x0, #0x4f]
    // 0x7e15f0: r1 = false
    //     0x7e15f0: add             x1, NULL, #0x30  ; false
    // 0x7e15f4: StoreField: r0->field_5f = r1
    //     0x7e15f4: stur            w1, [x0, #0x5f]
    // 0x7e15f8: StoreField: r0->field_73 = r1
    //     0x7e15f8: stur            w1, [x0, #0x73]
    // 0x7e15fc: r1 = true
    //     0x7e15fc: add             x1, NULL, #0x20  ; true
    // 0x7e1600: StoreField: r0->field_93 = r1
    //     0x7e1600: stur            w1, [x0, #0x93]
    // 0x7e1604: r0 = Card()
    //     0x7e1604: bl              #0x6d9f90  ; AllocateCardStub -> Card (size=0x3c)
    // 0x7e1608: d0 = 2.000000
    //     0x7e1608: fmov            d0, #2.00000000
    // 0x7e160c: ArrayStore: r0[0] = d0  ; List_8
    //     0x7e160c: stur            d0, [x0, #0x17]
    // 0x7e1610: ldur            x1, [fp, #-0x20]
    // 0x7e1614: StoreField: r0->field_1f = r1
    //     0x7e1614: stur            w1, [x0, #0x1f]
    // 0x7e1618: r1 = true
    //     0x7e1618: add             x1, NULL, #0x20  ; true
    // 0x7e161c: StoreField: r0->field_23 = r1
    //     0x7e161c: stur            w1, [x0, #0x23]
    // 0x7e1620: r2 = Instance_EdgeInsets
    //     0x7e1620: add             x2, PP, #0x14, lsl #12  ; [pp+0x14f18] Obj!EdgeInsets@a0c261
    //     0x7e1624: ldr             x2, [x2, #0xf18]
    // 0x7e1628: StoreField: r0->field_2b = r2
    //     0x7e1628: stur            w2, [x0, #0x2b]
    // 0x7e162c: ldur            x2, [fp, #-0x10]
    // 0x7e1630: StoreField: r0->field_33 = r2
    //     0x7e1630: stur            w2, [x0, #0x33]
    // 0x7e1634: StoreField: r0->field_2f = r1
    //     0x7e1634: stur            w1, [x0, #0x2f]
    // 0x7e1638: r1 = Instance__CardVariant
    //     0x7e1638: add             x1, PP, #0x18, lsl #12  ; [pp+0x18d38] Obj!_CardVariant@a2bcd1
    //     0x7e163c: ldr             x1, [x1, #0xd38]
    // 0x7e1640: StoreField: r0->field_37 = r1
    //     0x7e1640: stur            w1, [x0, #0x37]
    // 0x7e1644: LeaveFrame
    //     0x7e1644: mov             SP, fp
    //     0x7e1648: ldp             fp, lr, [SP], #0x10
    // 0x7e164c: ret
    //     0x7e164c: ret             
    // 0x7e1650: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e1650: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e1654: b               #0x7e12a4
    // 0x7e1658: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7e1658: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  _ _formatTimestamp(/* No info */) {
    // ** addr: 0x7e165c, size: 0x38c
    // 0x7e165c: EnterFrame
    //     0x7e165c: stp             fp, lr, [SP, #-0x10]!
    //     0x7e1660: mov             fp, SP
    // 0x7e1664: AllocStack(0x20)
    //     0x7e1664: sub             SP, SP, #0x20
    // 0x7e1668: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */)
    //     0x7e1668: stur            x2, [fp, #-8]
    // 0x7e166c: CheckStackOverflow
    //     0x7e166c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e1670: cmp             SP, x16
    //     0x7e1674: b.ls            #0x7e19cc
    // 0x7e1678: r0 = DateTime()
    //     0x7e1678: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x7e167c: mov             x1, x0
    // 0x7e1680: r0 = false
    //     0x7e1680: add             x0, NULL, #0x30  ; false
    // 0x7e1684: stur            x1, [fp, #-0x10]
    // 0x7e1688: StoreField: r1->field_7 = r0
    //     0x7e1688: stur            w0, [x1, #7]
    // 0x7e168c: r0 = _getCurrentMicros()
    //     0x7e168c: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x7e1690: r1 = LoadInt32Instr(r0)
    //     0x7e1690: sbfx            x1, x0, #1, #0x1f
    //     0x7e1694: tbz             w0, #0, #0x7e169c
    //     0x7e1698: ldur            x1, [x0, #7]
    // 0x7e169c: ldur            x0, [fp, #-0x10]
    // 0x7e16a0: StoreField: r0->field_b = r1
    //     0x7e16a0: stur            x1, [x0, #0xb]
    // 0x7e16a4: mov             x1, x0
    // 0x7e16a8: ldur            x2, [fp, #-8]
    // 0x7e16ac: r0 = difference()
    //     0x7e16ac: bl              #0x5e099c  ; [dart:core] DateTime::difference
    // 0x7e16b0: LoadField: r1 = r0->field_7
    //     0x7e16b0: ldur            x1, [x0, #7]
    // 0x7e16b4: r0 = 60000000
    //     0x7e16b4: mov             x0, #0x8700
    //     0x7e16b8: movk            x0, #0x393, lsl #16
    // 0x7e16bc: sdiv            x2, x1, x0
    // 0x7e16c0: cmp             x2, #1
    // 0x7e16c4: b.ge            #0x7e16dc
    // 0x7e16c8: r0 = "Az önce"
    //     0x7e16c8: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c548] "Az önce"
    //     0x7e16cc: ldr             x0, [x0, #0x548]
    // 0x7e16d0: LeaveFrame
    //     0x7e16d0: mov             SP, fp
    //     0x7e16d4: ldp             fp, lr, [SP], #0x10
    // 0x7e16d8: ret
    //     0x7e16d8: ret             
    // 0x7e16dc: cmp             x2, #0x3c
    // 0x7e16e0: b.ge            #0x7e1734
    // 0x7e16e4: r0 = BoxInt64Instr(r2)
    //     0x7e16e4: sbfiz           x0, x2, #1, #0x1f
    //     0x7e16e8: cmp             x2, x0, asr #1
    //     0x7e16ec: b.eq            #0x7e16f8
    //     0x7e16f0: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7e16f4: stur            x2, [x0, #7]
    // 0x7e16f8: r1 = Null
    //     0x7e16f8: mov             x1, NULL
    // 0x7e16fc: r2 = 4
    //     0x7e16fc: mov             x2, #4
    // 0x7e1700: stur            x0, [fp, #-0x10]
    // 0x7e1704: r0 = AllocateArray()
    //     0x7e1704: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e1708: mov             x1, x0
    // 0x7e170c: ldur            x0, [fp, #-0x10]
    // 0x7e1710: StoreField: r1->field_f = r0
    //     0x7e1710: stur            w0, [x1, #0xf]
    // 0x7e1714: r16 = " dakika önce"
    //     0x7e1714: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c550] " dakika önce"
    //     0x7e1718: ldr             x16, [x16, #0x550]
    // 0x7e171c: StoreField: r1->field_13 = r16
    //     0x7e171c: stur            w16, [x1, #0x13]
    // 0x7e1720: str             x1, [SP]
    // 0x7e1724: r0 = _interpolate()
    //     0x7e1724: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e1728: LeaveFrame
    //     0x7e1728: mov             SP, fp
    //     0x7e172c: ldp             fp, lr, [SP], #0x10
    // 0x7e1730: ret
    //     0x7e1730: ret             
    // 0x7e1734: r0 = 3600000000
    //     0x7e1734: mov             x0, #0xa400
    //     0x7e1738: movk            x0, #0xd693, lsl #16
    // 0x7e173c: sdiv            x2, x1, x0
    // 0x7e1740: cmp             x2, #0x18
    // 0x7e1744: b.ge            #0x7e1798
    // 0x7e1748: r0 = BoxInt64Instr(r2)
    //     0x7e1748: sbfiz           x0, x2, #1, #0x1f
    //     0x7e174c: cmp             x2, x0, asr #1
    //     0x7e1750: b.eq            #0x7e175c
    //     0x7e1754: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7e1758: stur            x2, [x0, #7]
    // 0x7e175c: r1 = Null
    //     0x7e175c: mov             x1, NULL
    // 0x7e1760: r2 = 4
    //     0x7e1760: mov             x2, #4
    // 0x7e1764: stur            x0, [fp, #-0x10]
    // 0x7e1768: r0 = AllocateArray()
    //     0x7e1768: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e176c: mov             x1, x0
    // 0x7e1770: ldur            x0, [fp, #-0x10]
    // 0x7e1774: StoreField: r1->field_f = r0
    //     0x7e1774: stur            w0, [x1, #0xf]
    // 0x7e1778: r16 = " saat önce"
    //     0x7e1778: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c558] " saat önce"
    //     0x7e177c: ldr             x16, [x16, #0x558]
    // 0x7e1780: StoreField: r1->field_13 = r16
    //     0x7e1780: stur            w16, [x1, #0x13]
    // 0x7e1784: str             x1, [SP]
    // 0x7e1788: r0 = _interpolate()
    //     0x7e1788: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e178c: LeaveFrame
    //     0x7e178c: mov             SP, fp
    //     0x7e1790: ldp             fp, lr, [SP], #0x10
    // 0x7e1794: ret
    //     0x7e1794: ret             
    // 0x7e1798: ldur            x1, [fp, #-8]
    // 0x7e179c: r0 = _parts()
    //     0x7e179c: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x7e17a0: mov             x2, x0
    // 0x7e17a4: LoadField: r0 = r2->field_b
    //     0x7e17a4: ldur            w0, [x2, #0xb]
    // 0x7e17a8: r1 = LoadInt32Instr(r0)
    //     0x7e17a8: sbfx            x1, x0, #1, #0x1f
    // 0x7e17ac: mov             x0, x1
    // 0x7e17b0: r1 = 5
    //     0x7e17b0: mov             x1, #5
    // 0x7e17b4: cmp             x1, x0
    // 0x7e17b8: b.hs            #0x7e19d4
    // 0x7e17bc: LoadField: r0 = r2->field_23
    //     0x7e17bc: ldur            w0, [x2, #0x23]
    // 0x7e17c0: DecompressPointer r0
    //     0x7e17c0: add             x0, x0, HEAP, lsl #32
    // 0x7e17c4: stur            x0, [fp, #-0x10]
    // 0x7e17c8: r1 = Null
    //     0x7e17c8: mov             x1, NULL
    // 0x7e17cc: r2 = 18
    //     0x7e17cc: mov             x2, #0x12
    // 0x7e17d0: r0 = AllocateArray()
    //     0x7e17d0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e17d4: mov             x2, x0
    // 0x7e17d8: ldur            x0, [fp, #-0x10]
    // 0x7e17dc: stur            x2, [fp, #-0x18]
    // 0x7e17e0: StoreField: r2->field_f = r0
    //     0x7e17e0: stur            w0, [x2, #0xf]
    // 0x7e17e4: r16 = "/"
    //     0x7e17e4: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x7e17e8: StoreField: r2->field_13 = r16
    //     0x7e17e8: stur            w16, [x2, #0x13]
    // 0x7e17ec: ldur            x1, [fp, #-8]
    // 0x7e17f0: r0 = _parts()
    //     0x7e17f0: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x7e17f4: mov             x2, x0
    // 0x7e17f8: LoadField: r0 = r2->field_b
    //     0x7e17f8: ldur            w0, [x2, #0xb]
    // 0x7e17fc: r1 = LoadInt32Instr(r0)
    //     0x7e17fc: sbfx            x1, x0, #1, #0x1f
    // 0x7e1800: mov             x0, x1
    // 0x7e1804: r1 = 7
    //     0x7e1804: mov             x1, #7
    // 0x7e1808: cmp             x1, x0
    // 0x7e180c: b.hs            #0x7e19d8
    // 0x7e1810: LoadField: r0 = r2->field_2b
    //     0x7e1810: ldur            w0, [x2, #0x2b]
    // 0x7e1814: DecompressPointer r0
    //     0x7e1814: add             x0, x0, HEAP, lsl #32
    // 0x7e1818: ldur            x1, [fp, #-0x18]
    // 0x7e181c: ArrayStore: r1[2] = r0  ; List_4
    //     0x7e181c: add             x25, x1, #0x17
    //     0x7e1820: str             w0, [x25]
    //     0x7e1824: tbz             w0, #0, #0x7e1840
    //     0x7e1828: ldurb           w16, [x1, #-1]
    //     0x7e182c: ldurb           w17, [x0, #-1]
    //     0x7e1830: and             x16, x17, x16, lsr #2
    //     0x7e1834: tst             x16, HEAP, lsr #32
    //     0x7e1838: b.eq            #0x7e1840
    //     0x7e183c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e1840: ldur            x0, [fp, #-0x18]
    // 0x7e1844: r16 = "/"
    //     0x7e1844: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x7e1848: StoreField: r0->field_1b = r16
    //     0x7e1848: stur            w16, [x0, #0x1b]
    // 0x7e184c: ldur            x1, [fp, #-8]
    // 0x7e1850: r0 = _parts()
    //     0x7e1850: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x7e1854: mov             x2, x0
    // 0x7e1858: LoadField: r0 = r2->field_b
    //     0x7e1858: ldur            w0, [x2, #0xb]
    // 0x7e185c: r1 = LoadInt32Instr(r0)
    //     0x7e185c: sbfx            x1, x0, #1, #0x1f
    // 0x7e1860: mov             x0, x1
    // 0x7e1864: r1 = 8
    //     0x7e1864: mov             x1, #8
    // 0x7e1868: cmp             x1, x0
    // 0x7e186c: b.hs            #0x7e19dc
    // 0x7e1870: LoadField: r0 = r2->field_2f
    //     0x7e1870: ldur            w0, [x2, #0x2f]
    // 0x7e1874: DecompressPointer r0
    //     0x7e1874: add             x0, x0, HEAP, lsl #32
    // 0x7e1878: ldur            x1, [fp, #-0x18]
    // 0x7e187c: ArrayStore: r1[4] = r0  ; List_4
    //     0x7e187c: add             x25, x1, #0x1f
    //     0x7e1880: str             w0, [x25]
    //     0x7e1884: tbz             w0, #0, #0x7e18a0
    //     0x7e1888: ldurb           w16, [x1, #-1]
    //     0x7e188c: ldurb           w17, [x0, #-1]
    //     0x7e1890: and             x16, x17, x16, lsr #2
    //     0x7e1894: tst             x16, HEAP, lsr #32
    //     0x7e1898: b.eq            #0x7e18a0
    //     0x7e189c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e18a0: ldur            x0, [fp, #-0x18]
    // 0x7e18a4: r16 = " "
    //     0x7e18a4: ldr             x16, [PP, #0x3b8]  ; [pp+0x3b8] " "
    // 0x7e18a8: StoreField: r0->field_23 = r16
    //     0x7e18a8: stur            w16, [x0, #0x23]
    // 0x7e18ac: ldur            x1, [fp, #-8]
    // 0x7e18b0: r0 = _parts()
    //     0x7e18b0: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x7e18b4: mov             x2, x0
    // 0x7e18b8: LoadField: r0 = r2->field_b
    //     0x7e18b8: ldur            w0, [x2, #0xb]
    // 0x7e18bc: r1 = LoadInt32Instr(r0)
    //     0x7e18bc: sbfx            x1, x0, #1, #0x1f
    // 0x7e18c0: mov             x0, x1
    // 0x7e18c4: r1 = 4
    //     0x7e18c4: mov             x1, #4
    // 0x7e18c8: cmp             x1, x0
    // 0x7e18cc: b.hs            #0x7e19e0
    // 0x7e18d0: LoadField: r0 = r2->field_1f
    //     0x7e18d0: ldur            w0, [x2, #0x1f]
    // 0x7e18d4: DecompressPointer r0
    //     0x7e18d4: add             x0, x0, HEAP, lsl #32
    // 0x7e18d8: ldur            x1, [fp, #-0x18]
    // 0x7e18dc: ArrayStore: r1[6] = r0  ; List_4
    //     0x7e18dc: add             x25, x1, #0x27
    //     0x7e18e0: str             w0, [x25]
    //     0x7e18e4: tbz             w0, #0, #0x7e1900
    //     0x7e18e8: ldurb           w16, [x1, #-1]
    //     0x7e18ec: ldurb           w17, [x0, #-1]
    //     0x7e18f0: and             x16, x17, x16, lsr #2
    //     0x7e18f4: tst             x16, HEAP, lsr #32
    //     0x7e18f8: b.eq            #0x7e1900
    //     0x7e18fc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e1900: ldur            x0, [fp, #-0x18]
    // 0x7e1904: r16 = ":"
    //     0x7e1904: ldr             x16, [PP, #0x990]  ; [pp+0x990] ":"
    // 0x7e1908: StoreField: r0->field_2b = r16
    //     0x7e1908: stur            w16, [x0, #0x2b]
    // 0x7e190c: ldur            x1, [fp, #-8]
    // 0x7e1910: r0 = _parts()
    //     0x7e1910: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x7e1914: mov             x2, x0
    // 0x7e1918: LoadField: r0 = r2->field_b
    //     0x7e1918: ldur            w0, [x2, #0xb]
    // 0x7e191c: r1 = LoadInt32Instr(r0)
    //     0x7e191c: sbfx            x1, x0, #1, #0x1f
    // 0x7e1920: mov             x0, x1
    // 0x7e1924: r1 = 3
    //     0x7e1924: mov             x1, #3
    // 0x7e1928: cmp             x1, x0
    // 0x7e192c: b.hs            #0x7e19e4
    // 0x7e1930: LoadField: r0 = r2->field_1b
    //     0x7e1930: ldur            w0, [x2, #0x1b]
    // 0x7e1934: DecompressPointer r0
    //     0x7e1934: add             x0, x0, HEAP, lsl #32
    // 0x7e1938: r1 = 60
    //     0x7e1938: mov             x1, #0x3c
    // 0x7e193c: branchIfSmi(r0, 0x7e1948)
    //     0x7e193c: tbz             w0, #0, #0x7e1948
    // 0x7e1940: r1 = LoadClassIdInstr(r0)
    //     0x7e1940: ldur            x1, [x0, #-1]
    //     0x7e1944: ubfx            x1, x1, #0xc, #0x14
    // 0x7e1948: str             x0, [SP]
    // 0x7e194c: mov             x0, x1
    // 0x7e1950: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7e1950: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7e1954: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x7e1954: mov             x17, #0x21f6
    //     0x7e1958: add             lr, x0, x17
    //     0x7e195c: ldr             lr, [x21, lr, lsl #3]
    //     0x7e1960: blr             lr
    // 0x7e1964: r1 = LoadClassIdInstr(r0)
    //     0x7e1964: ldur            x1, [x0, #-1]
    //     0x7e1968: ubfx            x1, x1, #0xc, #0x14
    // 0x7e196c: mov             x16, x0
    // 0x7e1970: mov             x0, x1
    // 0x7e1974: mov             x1, x16
    // 0x7e1978: r2 = 2
    //     0x7e1978: mov             x2, #2
    // 0x7e197c: r3 = "0"
    //     0x7e197c: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x7e1980: r0 = GDT[cid_x0 + -0xffc]()
    //     0x7e1980: sub             lr, x0, #0xffc
    //     0x7e1984: ldr             lr, [x21, lr, lsl #3]
    //     0x7e1988: blr             lr
    // 0x7e198c: ldur            x1, [fp, #-0x18]
    // 0x7e1990: ArrayStore: r1[8] = r0  ; List_4
    //     0x7e1990: add             x25, x1, #0x2f
    //     0x7e1994: str             w0, [x25]
    //     0x7e1998: tbz             w0, #0, #0x7e19b4
    //     0x7e199c: ldurb           w16, [x1, #-1]
    //     0x7e19a0: ldurb           w17, [x0, #-1]
    //     0x7e19a4: and             x16, x17, x16, lsr #2
    //     0x7e19a8: tst             x16, HEAP, lsr #32
    //     0x7e19ac: b.eq            #0x7e19b4
    //     0x7e19b0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e19b4: ldur            x16, [fp, #-0x18]
    // 0x7e19b8: str             x16, [SP]
    // 0x7e19bc: r0 = _interpolate()
    //     0x7e19bc: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e19c0: LeaveFrame
    //     0x7e19c0: mov             SP, fp
    //     0x7e19c4: ldp             fp, lr, [SP], #0x10
    // 0x7e19c8: ret
    //     0x7e19c8: ret             
    // 0x7e19cc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e19cc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e19d0: b               #0x7e1678
    // 0x7e19d4: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7e19d4: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7e19d8: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7e19d8: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7e19dc: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7e19dc: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7e19e0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7e19e0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7e19e4: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7e19e4: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7e19e8, size: 0xb0
    // 0x7e19e8: EnterFrame
    //     0x7e19e8: stp             fp, lr, [SP, #-0x10]!
    //     0x7e19ec: mov             fp, SP
    // 0x7e19f0: AllocStack(0x30)
    //     0x7e19f0: sub             SP, SP, #0x30
    // 0x7e19f4: SetupParameters([dynamic _ /* r0 */])
    //     0x7e19f4: ldr             x0, [fp, #0x10]
    //     0x7e19f8: ldur            w2, [x0, #0x17]
    //     0x7e19fc: add             x2, x2, HEAP, lsl #32
    // 0x7e1a00: CheckStackOverflow
    //     0x7e1a00: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e1a04: cmp             SP, x16
    //     0x7e1a08: b.ls            #0x7e1a90
    // 0x7e1a0c: LoadField: r0 = r2->field_f
    //     0x7e1a0c: ldur            w0, [x2, #0xf]
    // 0x7e1a10: DecompressPointer r0
    //     0x7e1a10: add             x0, x0, HEAP, lsl #32
    // 0x7e1a14: stur            x0, [fp, #-8]
    // 0x7e1a18: r1 = Function '<anonymous closure>':.
    //     0x7e1a18: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c540] AnonymousClosure: (0x7e1a98), in [package:umrem_demo/features/admin/screens/user_selection_view.dart] _UserSelectionContent::build (0x7e096c)
    //     0x7e1a1c: ldr             x1, [x1, #0x540]
    // 0x7e1a20: r0 = AllocateClosure()
    //     0x7e1a20: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e1a24: r1 = Null
    //     0x7e1a24: mov             x1, NULL
    // 0x7e1a28: stur            x0, [fp, #-0x10]
    // 0x7e1a2c: r0 = MaterialPageRoute()
    //     0x7e1a2c: bl              #0x66166c  ; AllocateMaterialPageRouteStub -> MaterialPageRoute<X0> (size=0xac)
    // 0x7e1a30: mov             x4, x0
    // 0x7e1a34: ldur            x0, [fp, #-0x10]
    // 0x7e1a38: stur            x4, [fp, #-0x18]
    // 0x7e1a3c: StoreField: r4->field_a3 = r0
    //     0x7e1a3c: stur            w0, [x4, #0xa3]
    // 0x7e1a40: r0 = true
    //     0x7e1a40: add             x0, NULL, #0x20  ; true
    // 0x7e1a44: StoreField: r4->field_a7 = r0
    //     0x7e1a44: stur            w0, [x4, #0xa7]
    // 0x7e1a48: r1 = false
    //     0x7e1a48: add             x1, NULL, #0x30  ; false
    // 0x7e1a4c: StoreField: r4->field_97 = r1
    //     0x7e1a4c: stur            w1, [x4, #0x97]
    // 0x7e1a50: StoreField: r4->field_9b = r0
    //     0x7e1a50: stur            w0, [x4, #0x9b]
    // 0x7e1a54: StoreField: r4->field_9f = r1
    //     0x7e1a54: stur            w1, [x4, #0x9f]
    // 0x7e1a58: mov             x1, x4
    // 0x7e1a5c: r2 = Null
    //     0x7e1a5c: mov             x2, NULL
    // 0x7e1a60: r3 = Null
    //     0x7e1a60: mov             x3, NULL
    // 0x7e1a64: r0 = ModalRoute()
    //     0x7e1a64: bl              #0x57cd40  ; [package:flutter/src/widgets/routes.dart] ModalRoute::ModalRoute
    // 0x7e1a68: ldur            x16, [fp, #-8]
    // 0x7e1a6c: stp             x16, NULL, [SP, #8]
    // 0x7e1a70: ldur            x16, [fp, #-0x18]
    // 0x7e1a74: str             x16, [SP]
    // 0x7e1a78: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7e1a78: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7e1a7c: r0 = push()
    //     0x7e1a7c: bl              #0x6fb3a8  ; [package:flutter/src/widgets/navigator.dart] Navigator::push
    // 0x7e1a80: r0 = Null
    //     0x7e1a80: mov             x0, NULL
    // 0x7e1a84: LeaveFrame
    //     0x7e1a84: mov             SP, fp
    //     0x7e1a88: ldp             fp, lr, [SP], #0x10
    // 0x7e1a8c: ret
    //     0x7e1a8c: ret             
    // 0x7e1a90: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e1a90: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e1a94: b               #0x7e1a0c
  }
  [closure] ChangeNotifierProvider<LocationTrackingProvider> <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7e1a98, size: 0xac
    // 0x7e1a98: EnterFrame
    //     0x7e1a98: stp             fp, lr, [SP, #-0x10]!
    //     0x7e1a9c: mov             fp, SP
    // 0x7e1aa0: AllocStack(0x20)
    //     0x7e1aa0: sub             SP, SP, #0x20
    // 0x7e1aa4: SetupParameters([dynamic _ /* r0 */])
    //     0x7e1aa4: ldr             x0, [fp, #0x18]
    //     0x7e1aa8: ldur            w1, [x0, #0x17]
    //     0x7e1aac: add             x1, x1, HEAP, lsl #32
    // 0x7e1ab0: CheckStackOverflow
    //     0x7e1ab0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e1ab4: cmp             SP, x16
    //     0x7e1ab8: b.ls            #0x7e1b3c
    // 0x7e1abc: LoadField: r0 = r1->field_b
    //     0x7e1abc: ldur            w0, [x1, #0xb]
    // 0x7e1ac0: DecompressPointer r0
    //     0x7e1ac0: add             x0, x0, HEAP, lsl #32
    // 0x7e1ac4: LoadField: r3 = r0->field_f
    //     0x7e1ac4: ldur            w3, [x0, #0xf]
    // 0x7e1ac8: DecompressPointer r3
    //     0x7e1ac8: add             x3, x3, HEAP, lsl #32
    // 0x7e1acc: stur            x3, [fp, #-0x18]
    // 0x7e1ad0: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x7e1ad0: ldur            w0, [x1, #0x17]
    // 0x7e1ad4: DecompressPointer r0
    //     0x7e1ad4: add             x0, x0, HEAP, lsl #32
    // 0x7e1ad8: LoadField: r2 = r0->field_b
    //     0x7e1ad8: ldur            w2, [x0, #0xb]
    // 0x7e1adc: DecompressPointer r2
    //     0x7e1adc: add             x2, x2, HEAP, lsl #32
    // 0x7e1ae0: stur            x2, [fp, #-0x10]
    // 0x7e1ae4: LoadField: r0 = r1->field_13
    //     0x7e1ae4: ldur            w0, [x1, #0x13]
    // 0x7e1ae8: DecompressPointer r0
    //     0x7e1ae8: add             x0, x0, HEAP, lsl #32
    // 0x7e1aec: stur            x0, [fp, #-8]
    // 0x7e1af0: r0 = SingleUserMapView()
    //     0x7e1af0: bl              #0x7e1be0  ; AllocateSingleUserMapViewStub -> SingleUserMapView (size=0x14)
    // 0x7e1af4: mov             x2, x0
    // 0x7e1af8: ldur            x0, [fp, #-8]
    // 0x7e1afc: stur            x2, [fp, #-0x20]
    // 0x7e1b00: StoreField: r2->field_b = r0
    //     0x7e1b00: stur            w0, [x2, #0xb]
    // 0x7e1b04: ldur            x0, [fp, #-0x10]
    // 0x7e1b08: StoreField: r2->field_f = r0
    //     0x7e1b08: stur            w0, [x2, #0xf]
    // 0x7e1b0c: r1 = <LocationTrackingProvider>
    //     0x7e1b0c: add             x1, PP, #0x14, lsl #12  ; [pp+0x149e8] TypeArguments: <LocationTrackingProvider>
    //     0x7e1b10: ldr             x1, [x1, #0x9e8]
    // 0x7e1b14: r0 = ChangeNotifierProvider()
    //     0x7e1b14: bl              #0x5ea974  ; AllocateChangeNotifierProviderStub -> ChangeNotifierProvider<X0 bound ChangeNotifier?> (size=0x20)
    // 0x7e1b18: mov             x1, x0
    // 0x7e1b1c: ldur            x2, [fp, #-0x20]
    // 0x7e1b20: ldur            x3, [fp, #-0x18]
    // 0x7e1b24: stur            x0, [fp, #-8]
    // 0x7e1b28: r0 = InheritedProvider.value()
    //     0x7e1b28: bl              #0x7e1b44  ; [package:provider/src/provider.dart] InheritedProvider::InheritedProvider.value
    // 0x7e1b2c: ldur            x0, [fp, #-8]
    // 0x7e1b30: LeaveFrame
    //     0x7e1b30: mov             SP, fp
    //     0x7e1b34: ldp             fp, lr, [SP], #0x10
    // 0x7e1b38: ret
    //     0x7e1b38: ret             
    // 0x7e1b3c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e1b3c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e1b40: b               #0x7e1abc
  }
  [closure] void <anonymous closure>(dynamic, String) {
    // ** addr: 0x7e1bec, size: 0x64
    // 0x7e1bec: EnterFrame
    //     0x7e1bec: stp             fp, lr, [SP, #-0x10]!
    //     0x7e1bf0: mov             fp, SP
    // 0x7e1bf4: AllocStack(0x10)
    //     0x7e1bf4: sub             SP, SP, #0x10
    // 0x7e1bf8: SetupParameters([dynamic _ /* r0 */])
    //     0x7e1bf8: ldr             x0, [fp, #0x18]
    //     0x7e1bfc: ldur            w1, [x0, #0x17]
    //     0x7e1c00: add             x1, x1, HEAP, lsl #32
    // 0x7e1c04: CheckStackOverflow
    //     0x7e1c04: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e1c08: cmp             SP, x16
    //     0x7e1c0c: b.ls            #0x7e1c48
    // 0x7e1c10: LoadField: r0 = r1->field_13
    //     0x7e1c10: ldur            w0, [x1, #0x13]
    // 0x7e1c14: DecompressPointer r0
    //     0x7e1c14: add             x0, x0, HEAP, lsl #32
    // 0x7e1c18: r16 = <LocationTrackingProvider>
    //     0x7e1c18: add             x16, PP, #0x14, lsl #12  ; [pp+0x149e8] TypeArguments: <LocationTrackingProvider>
    //     0x7e1c1c: ldr             x16, [x16, #0x9e8]
    // 0x7e1c20: stp             x0, x16, [SP]
    // 0x7e1c24: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7e1c24: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7e1c28: r0 = ReadContext.read()
    //     0x7e1c28: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x7e1c2c: mov             x1, x0
    // 0x7e1c30: ldr             x2, [fp, #0x10]
    // 0x7e1c34: r0 = setSearchQuery()
    //     0x7e1c34: bl              #0x7e1c50  ; [package:umrem_demo/features/admin/providers/location_tracking_provider.dart] LocationTrackingProvider::setSearchQuery
    // 0x7e1c38: r0 = Null
    //     0x7e1c38: mov             x0, NULL
    // 0x7e1c3c: LeaveFrame
    //     0x7e1c3c: mov             SP, fp
    //     0x7e1c40: ldp             fp, lr, [SP], #0x10
    // 0x7e1c44: ret
    //     0x7e1c44: ret             
    // 0x7e1c48: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e1c48: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e1c4c: b               #0x7e1c10
  }
}

// class id: 2928, size: 0xc, field offset: 0xc
//   const constructor, 
class UserSelectionView extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7e0824, size: 0xd8
    // 0x7e0824: EnterFrame
    //     0x7e0824: stp             fp, lr, [SP, #-0x10]!
    //     0x7e0828: mov             fp, SP
    // 0x7e082c: AllocStack(0x18)
    //     0x7e082c: sub             SP, SP, #0x18
    // 0x7e0830: CheckStackOverflow
    //     0x7e0830: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e0834: cmp             SP, x16
    //     0x7e0838: b.ls            #0x7e08f4
    // 0x7e083c: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x7e083c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7e0840: ldr             x0, [x0, #0xcb8]
    //     0x7e0844: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7e0848: cmp             w0, w16
    //     0x7e084c: b.ne            #0x7e0858
    //     0x7e0850: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x7e0854: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7e0858: str             NULL, [SP]
    // 0x7e085c: r1 = "🔍 UserSelectionView: build() çağrıldı"
    //     0x7e085c: add             x1, PP, #0x14, lsl #12  ; [pp+0x149d8] "🔍 UserSelectionView: build() çağrıldı"
    //     0x7e0860: ldr             x1, [x1, #0x9d8]
    // 0x7e0864: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x7e0864: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x7e0868: r0 = debugPrintThrottled()
    //     0x7e0868: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x7e086c: r1 = Function '<anonymous closure>':.
    //     0x7e086c: add             x1, PP, #0x14, lsl #12  ; [pp+0x149e0] AnonymousClosure: (0x7e08fc), in [package:umrem_demo/features/admin/screens/user_selection_view.dart] UserSelectionView::build (0x7e0824)
    //     0x7e0870: ldr             x1, [x1, #0x9e0]
    // 0x7e0874: r2 = Null
    //     0x7e0874: mov             x2, NULL
    // 0x7e0878: r0 = AllocateClosure()
    //     0x7e0878: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e087c: r1 = <LocationTrackingProvider>
    //     0x7e087c: add             x1, PP, #0x14, lsl #12  ; [pp+0x149e8] TypeArguments: <LocationTrackingProvider>
    //     0x7e0880: ldr             x1, [x1, #0x9e8]
    // 0x7e0884: stur            x0, [fp, #-8]
    // 0x7e0888: r0 = _CreateInheritedProvider()
    //     0x7e0888: bl              #0x5ea980  ; Allocate_CreateInheritedProviderStub -> _CreateInheritedProvider<X0> (size=0x20)
    // 0x7e088c: mov             x2, x0
    // 0x7e0890: ldur            x0, [fp, #-8]
    // 0x7e0894: stur            x2, [fp, #-0x10]
    // 0x7e0898: StoreField: r2->field_b = r0
    //     0x7e0898: stur            w0, [x2, #0xb]
    // 0x7e089c: r0 = Closure: (InheritedContext<Listenable?>, Listenable?) => () => void from Function '_startListening@896289466': static.
    //     0x7e089c: add             x0, PP, #0x10, lsl #12  ; [pp+0x10de0] Closure: (InheritedContext<Listenable?>, Listenable?) => () => void from Function '_startListening@896289466': static. (0x7f22905eadd4)
    //     0x7e08a0: ldr             x0, [x0, #0xde0]
    // 0x7e08a4: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e08a4: stur            w0, [x2, #0x17]
    // 0x7e08a8: r0 = Closure: (BuildContext, ChangeNotifier?) => void from Function '_dispose@895228938': static.
    //     0x7e08a8: add             x0, PP, #0x10, lsl #12  ; [pp+0x10de8] Closure: (BuildContext, ChangeNotifier?) => void from Function '_dispose@895228938': static. (0x7f22905ead4c)
    //     0x7e08ac: ldr             x0, [x0, #0xde8]
    // 0x7e08b0: StoreField: r2->field_1b = r0
    //     0x7e08b0: stur            w0, [x2, #0x1b]
    // 0x7e08b4: r1 = <LocationTrackingProvider>
    //     0x7e08b4: add             x1, PP, #0x14, lsl #12  ; [pp+0x149e8] TypeArguments: <LocationTrackingProvider>
    //     0x7e08b8: ldr             x1, [x1, #0x9e8]
    // 0x7e08bc: r0 = ChangeNotifierProvider()
    //     0x7e08bc: bl              #0x5ea974  ; AllocateChangeNotifierProviderStub -> ChangeNotifierProvider<X0 bound ChangeNotifier?> (size=0x20)
    // 0x7e08c0: mov             x2, x0
    // 0x7e08c4: ldur            x0, [fp, #-0x10]
    // 0x7e08c8: stur            x2, [fp, #-8]
    // 0x7e08cc: StoreField: r2->field_13 = r0
    //     0x7e08cc: stur            w0, [x2, #0x13]
    // 0x7e08d0: r0 = Instance__UserSelectionContent
    //     0x7e08d0: add             x0, PP, #0x14, lsl #12  ; [pp+0x149f0] Obj!_UserSelectionContent@a1ae51
    //     0x7e08d4: ldr             x0, [x0, #0x9f0]
    // 0x7e08d8: StoreField: r2->field_b = r0
    //     0x7e08d8: stur            w0, [x2, #0xb]
    // 0x7e08dc: mov             x1, x2
    // 0x7e08e0: r0 = _NativeScene._()
    //     0x7e08e0: bl              #0x921cc4  ; [dart:ui] _NativeScene::_NativeScene._
    // 0x7e08e4: ldur            x0, [fp, #-8]
    // 0x7e08e8: LeaveFrame
    //     0x7e08e8: mov             SP, fp
    //     0x7e08ec: ldp             fp, lr, [SP], #0x10
    // 0x7e08f0: ret
    //     0x7e08f0: ret             
    // 0x7e08f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e08f4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e08f8: b               #0x7e083c
  }
  [closure] LocationTrackingProvider <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7e08fc, size: 0x70
    // 0x7e08fc: EnterFrame
    //     0x7e08fc: stp             fp, lr, [SP, #-0x10]!
    //     0x7e0900: mov             fp, SP
    // 0x7e0904: AllocStack(0x10)
    //     0x7e0904: sub             SP, SP, #0x10
    // 0x7e0908: CheckStackOverflow
    //     0x7e0908: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e090c: cmp             SP, x16
    //     0x7e0910: b.ls            #0x7e0964
    // 0x7e0914: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x7e0914: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7e0918: ldr             x0, [x0, #0xcb8]
    //     0x7e091c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7e0920: cmp             w0, w16
    //     0x7e0924: b.ne            #0x7e0930
    //     0x7e0928: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x7e092c: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7e0930: str             NULL, [SP]
    // 0x7e0934: r1 = "🔍 UserSelectionView: Yeni provider oluşturuluyor..."
    //     0x7e0934: add             x1, PP, #0x14, lsl #12  ; [pp+0x149f8] "🔍 UserSelectionView: Yeni provider oluşturuluyor..."
    //     0x7e0938: ldr             x1, [x1, #0x9f8]
    // 0x7e093c: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x7e093c: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x7e0940: r0 = debugPrintThrottled()
    //     0x7e0940: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x7e0944: r0 = LocationTrackingProvider()
    //     0x7e0944: bl              #0x7ddc44  ; AllocateLocationTrackingProviderStub -> LocationTrackingProvider (size=0x48)
    // 0x7e0948: mov             x1, x0
    // 0x7e094c: stur            x0, [fp, #-8]
    // 0x7e0950: r0 = LocationTrackingProvider()
    //     0x7e0950: bl              #0x7dcd8c  ; [package:umrem_demo/features/admin/providers/location_tracking_provider.dart] LocationTrackingProvider::LocationTrackingProvider
    // 0x7e0954: ldur            x0, [fp, #-8]
    // 0x7e0958: LeaveFrame
    //     0x7e0958: mov             SP, fp
    //     0x7e095c: ldp             fp, lr, [SP], #0x10
    // 0x7e0960: ret
    //     0x7e0960: ret             
    // 0x7e0964: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e0964: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e0968: b               #0x7e0914
  }
}

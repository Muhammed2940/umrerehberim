// lib: , url: package:umrem_demo/features/admin/widgets/doviz/edit_dialog.dart

// class id: 1049544, size: 0x8
class :: {
}

// class id: 2921, size: 0x1c, field offset: 0xc
//   const constructor, 
class EditDialog extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7e34c8, size: 0x624
    // 0x7e34c8: EnterFrame
    //     0x7e34c8: stp             fp, lr, [SP, #-0x10]!
    //     0x7e34cc: mov             fp, SP
    // 0x7e34d0: AllocStack(0x70)
    //     0x7e34d0: sub             SP, SP, #0x70
    // 0x7e34d4: SetupParameters(EditDialog this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x7e34d4: stur            x1, [fp, #-8]
    //     0x7e34d8: stur            x2, [fp, #-0x10]
    // 0x7e34dc: CheckStackOverflow
    //     0x7e34dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e34e0: cmp             SP, x16
    //     0x7e34e4: b.ls            #0x7e3ae4
    // 0x7e34e8: r1 = 2
    //     0x7e34e8: mov             x1, #2
    // 0x7e34ec: r0 = AllocateContext()
    //     0x7e34ec: bl              #0x927010  ; AllocateContextStub
    // 0x7e34f0: mov             x1, x0
    // 0x7e34f4: ldur            x0, [fp, #-8]
    // 0x7e34f8: stur            x1, [fp, #-0x20]
    // 0x7e34fc: StoreField: r1->field_f = r0
    //     0x7e34fc: stur            w0, [x1, #0xf]
    // 0x7e3500: ldur            x2, [fp, #-0x10]
    // 0x7e3504: StoreField: r1->field_13 = r2
    //     0x7e3504: stur            w2, [x1, #0x13]
    // 0x7e3508: LoadField: r2 = r0->field_b
    //     0x7e3508: ldur            w2, [x0, #0xb]
    // 0x7e350c: DecompressPointer r2
    //     0x7e350c: add             x2, x2, HEAP, lsl #32
    // 0x7e3510: stur            x2, [fp, #-0x18]
    // 0x7e3514: cmp             w2, NULL
    // 0x7e3518: b.ne            #0x7e3528
    // 0x7e351c: r3 = "Yeni Döviz Ekle"
    //     0x7e351c: add             x3, PP, #0x1c, lsl #12  ; [pp+0x1c3a0] "Yeni Döviz Ekle"
    //     0x7e3520: ldr             x3, [x3, #0x3a0]
    // 0x7e3524: b               #0x7e3530
    // 0x7e3528: r3 = "Döviz Düzenle"
    //     0x7e3528: add             x3, PP, #0x19, lsl #12  ; [pp+0x19148] "Döviz Düzenle"
    //     0x7e352c: ldr             x3, [x3, #0x148]
    // 0x7e3530: stur            x3, [fp, #-0x10]
    // 0x7e3534: r0 = Text()
    //     0x7e3534: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e3538: mov             x1, x0
    // 0x7e353c: ldur            x0, [fp, #-0x10]
    // 0x7e3540: stur            x1, [fp, #-0x28]
    // 0x7e3544: StoreField: r1->field_b = r0
    //     0x7e3544: stur            w0, [x1, #0xb]
    // 0x7e3548: ldur            x0, [fp, #-8]
    // 0x7e354c: LoadField: r2 = r0->field_f
    //     0x7e354c: ldur            w2, [x0, #0xf]
    // 0x7e3550: DecompressPointer r2
    //     0x7e3550: add             x2, x2, HEAP, lsl #32
    // 0x7e3554: stur            x2, [fp, #-0x10]
    // 0x7e3558: r0 = TextField()
    //     0x7e3558: bl              #0x684214  ; AllocateTextFieldStub -> TextField (size=0x128)
    // 0x7e355c: mov             x1, x0
    // 0x7e3560: r0 = EditableText
    //     0x7e3560: ldr             x0, [PP, #0x6f50]  ; [pp+0x6f50] Type: EditableText
    // 0x7e3564: stur            x1, [fp, #-0x30]
    // 0x7e3568: StoreField: r1->field_f = r0
    //     0x7e3568: stur            w0, [x1, #0xf]
    // 0x7e356c: ldur            x2, [fp, #-0x10]
    // 0x7e3570: StoreField: r1->field_13 = r2
    //     0x7e3570: stur            w2, [x1, #0x13]
    // 0x7e3574: r2 = Instance_InputDecoration
    //     0x7e3574: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c3a8] Obj!InputDecoration@a0f0b1
    //     0x7e3578: ldr             x2, [x2, #0x3a8]
    // 0x7e357c: StoreField: r1->field_1b = r2
    //     0x7e357c: stur            w2, [x1, #0x1b]
    // 0x7e3580: r2 = Instance_TextCapitalization
    //     0x7e3580: add             x2, PP, #0x14, lsl #12  ; [pp+0x144f0] Obj!TextCapitalization@a29af1
    //     0x7e3584: ldr             x2, [x2, #0x4f0]
    // 0x7e3588: StoreField: r1->field_27 = r2
    //     0x7e3588: stur            w2, [x1, #0x27]
    // 0x7e358c: r3 = Instance_TextAlign
    //     0x7e358c: ldr             x3, [PP, #0x4b00]  ; [pp+0x4b00] Obj!TextAlign@a2cf31
    // 0x7e3590: StoreField: r1->field_33 = r3
    //     0x7e3590: stur            w3, [x1, #0x33]
    // 0x7e3594: r4 = false
    //     0x7e3594: add             x4, NULL, #0x30  ; false
    // 0x7e3598: StoreField: r1->field_6b = r4
    //     0x7e3598: stur            w4, [x1, #0x6b]
    // 0x7e359c: StoreField: r1->field_3f = r4
    //     0x7e359c: stur            w4, [x1, #0x3f]
    // 0x7e35a0: r5 = "•"
    //     0x7e35a0: add             x5, PP, #0x14, lsl #12  ; [pp+0x144f8] "•"
    //     0x7e35a4: ldr             x5, [x5, #0x4f8]
    // 0x7e35a8: StoreField: r1->field_47 = r5
    //     0x7e35a8: stur            w5, [x1, #0x47]
    // 0x7e35ac: StoreField: r1->field_4b = r4
    //     0x7e35ac: stur            w4, [x1, #0x4b]
    // 0x7e35b0: r6 = true
    //     0x7e35b0: add             x6, NULL, #0x20  ; true
    // 0x7e35b4: StoreField: r1->field_5b = r6
    //     0x7e35b4: stur            w6, [x1, #0x5b]
    // 0x7e35b8: r7 = 2
    //     0x7e35b8: mov             x7, #2
    // 0x7e35bc: StoreField: r1->field_5f = r7
    //     0x7e35bc: stur            w7, [x1, #0x5f]
    // 0x7e35c0: StoreField: r1->field_67 = r4
    //     0x7e35c0: stur            w4, [x1, #0x67]
    // 0x7e35c4: r8 = 4
    //     0x7e35c4: mov             x8, #4
    // 0x7e35c8: StoreField: r1->field_77 = r8
    //     0x7e35c8: stur            w8, [x1, #0x77]
    // 0x7e35cc: d0 = 2.000000
    //     0x7e35cc: fmov            d0, #2.00000000
    // 0x7e35d0: StoreField: r1->field_9b = d0
    //     0x7e35d0: stur            d0, [x1, #0x9b]
    // 0x7e35d4: r9 = Instance_EdgeInsets
    //     0x7e35d4: ldr             x9, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x7e35d8: StoreField: r1->field_c3 = r9
    //     0x7e35d8: stur            w9, [x1, #0xc3]
    // 0x7e35dc: r10 = Instance_DragStartBehavior
    //     0x7e35dc: ldr             x10, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7e35e0: StoreField: r1->field_d3 = r10
    //     0x7e35e0: stur            w10, [x1, #0xd3]
    // 0x7e35e4: StoreField: r1->field_db = r4
    //     0x7e35e4: stur            w4, [x1, #0xdb]
    // 0x7e35e8: r11 = const []
    //     0x7e35e8: ldr             x11, [PP, #0x73e8]  ; [pp+0x73e8] List<String>(0)
    // 0x7e35ec: StoreField: r1->field_f7 = r11
    //     0x7e35ec: stur            w11, [x1, #0xf7]
    // 0x7e35f0: r12 = Instance_Clip
    //     0x7e35f0: add             x12, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x7e35f4: ldr             x12, [x12, #0x2d8]
    // 0x7e35f8: StoreField: r1->field_fb = r12
    //     0x7e35f8: stur            w12, [x1, #0xfb]
    // 0x7e35fc: r17 = 259
    //     0x7e35fc: mov             x17, #0x103
    // 0x7e3600: str             w6, [x1, x17]
    // 0x7e3604: r17 = 263
    //     0x7e3604: mov             x17, #0x107
    // 0x7e3608: str             w6, [x1, x17]
    // 0x7e360c: r17 = 267
    //     0x7e360c: mov             x17, #0x10b
    // 0x7e3610: str             w6, [x1, x17]
    // 0x7e3614: r13 = Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static.
    //     0x7e3614: add             x13, PP, #0x18, lsl #12  ; [pp+0x189f8] Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static. (0x7f2290684300)
    //     0x7e3618: ldr             x13, [x13, #0x9f8]
    // 0x7e361c: r17 = 275
    //     0x7e361c: mov             x17, #0x113
    // 0x7e3620: str             w13, [x1, x17]
    // 0x7e3624: r17 = 279
    //     0x7e3624: mov             x17, #0x117
    // 0x7e3628: str             w6, [x1, x17]
    // 0x7e362c: r14 = Instance_SmartDashesType
    //     0x7e362c: ldr             x14, [PP, #0x73f0]  ; [pp+0x73f0] Obj!SmartDashesType@a29cf1
    // 0x7e3630: StoreField: r1->field_53 = r14
    //     0x7e3630: stur            w14, [x1, #0x53]
    // 0x7e3634: r19 = Instance_SmartQuotesType
    //     0x7e3634: add             x19, PP, #0x14, lsl #12  ; [pp+0x14520] Obj!SmartQuotesType@a29cd1
    //     0x7e3638: ldr             x19, [x19, #0x520]
    // 0x7e363c: StoreField: r1->field_57 = r19
    //     0x7e363c: stur            w19, [x1, #0x57]
    // 0x7e3640: r20 = Instance_TextInputType
    //     0x7e3640: add             x20, PP, #0x14, lsl #12  ; [pp+0x14528] Obj!TextInputType@a0acc1
    //     0x7e3644: ldr             x20, [x20, #0x528]
    // 0x7e3648: StoreField: r1->field_1f = r20
    //     0x7e3648: stur            w20, [x1, #0x1f]
    // 0x7e364c: StoreField: r1->field_c7 = r6
    //     0x7e364c: stur            w6, [x1, #0xc7]
    // 0x7e3650: ldur            x23, [fp, #-8]
    // 0x7e3654: LoadField: r24 = r23->field_13
    //     0x7e3654: ldur            w24, [x23, #0x13]
    // 0x7e3658: DecompressPointer r24
    //     0x7e3658: add             x24, x24, HEAP, lsl #32
    // 0x7e365c: stur            x24, [fp, #-0x10]
    // 0x7e3660: r0 = TextField()
    //     0x7e3660: bl              #0x684214  ; AllocateTextFieldStub -> TextField (size=0x128)
    // 0x7e3664: mov             x1, x0
    // 0x7e3668: r0 = EditableText
    //     0x7e3668: ldr             x0, [PP, #0x6f50]  ; [pp+0x6f50] Type: EditableText
    // 0x7e366c: stur            x1, [fp, #-0x38]
    // 0x7e3670: StoreField: r1->field_f = r0
    //     0x7e3670: stur            w0, [x1, #0xf]
    // 0x7e3674: ldur            x2, [fp, #-0x10]
    // 0x7e3678: StoreField: r1->field_13 = r2
    //     0x7e3678: stur            w2, [x1, #0x13]
    // 0x7e367c: r2 = Instance_InputDecoration
    //     0x7e367c: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c3b0] Obj!InputDecoration@a0efc1
    //     0x7e3680: ldr             x2, [x2, #0x3b0]
    // 0x7e3684: StoreField: r1->field_1b = r2
    //     0x7e3684: stur            w2, [x1, #0x1b]
    // 0x7e3688: r2 = Instance_TextCapitalization
    //     0x7e3688: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c3b8] Obj!TextCapitalization@a29b11
    //     0x7e368c: ldr             x2, [x2, #0x3b8]
    // 0x7e3690: StoreField: r1->field_27 = r2
    //     0x7e3690: stur            w2, [x1, #0x27]
    // 0x7e3694: r2 = Instance_TextAlign
    //     0x7e3694: ldr             x2, [PP, #0x4b00]  ; [pp+0x4b00] Obj!TextAlign@a2cf31
    // 0x7e3698: StoreField: r1->field_33 = r2
    //     0x7e3698: stur            w2, [x1, #0x33]
    // 0x7e369c: r3 = false
    //     0x7e369c: add             x3, NULL, #0x30  ; false
    // 0x7e36a0: StoreField: r1->field_6b = r3
    //     0x7e36a0: stur            w3, [x1, #0x6b]
    // 0x7e36a4: StoreField: r1->field_3f = r3
    //     0x7e36a4: stur            w3, [x1, #0x3f]
    // 0x7e36a8: r4 = "•"
    //     0x7e36a8: add             x4, PP, #0x14, lsl #12  ; [pp+0x144f8] "•"
    //     0x7e36ac: ldr             x4, [x4, #0x4f8]
    // 0x7e36b0: StoreField: r1->field_47 = r4
    //     0x7e36b0: stur            w4, [x1, #0x47]
    // 0x7e36b4: StoreField: r1->field_4b = r3
    //     0x7e36b4: stur            w3, [x1, #0x4b]
    // 0x7e36b8: r5 = true
    //     0x7e36b8: add             x5, NULL, #0x20  ; true
    // 0x7e36bc: StoreField: r1->field_5b = r5
    //     0x7e36bc: stur            w5, [x1, #0x5b]
    // 0x7e36c0: r6 = 2
    //     0x7e36c0: mov             x6, #2
    // 0x7e36c4: StoreField: r1->field_5f = r6
    //     0x7e36c4: stur            w6, [x1, #0x5f]
    // 0x7e36c8: StoreField: r1->field_67 = r3
    //     0x7e36c8: stur            w3, [x1, #0x67]
    // 0x7e36cc: d0 = 2.000000
    //     0x7e36cc: fmov            d0, #2.00000000
    // 0x7e36d0: StoreField: r1->field_9b = d0
    //     0x7e36d0: stur            d0, [x1, #0x9b]
    // 0x7e36d4: r7 = Instance_EdgeInsets
    //     0x7e36d4: ldr             x7, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x7e36d8: StoreField: r1->field_c3 = r7
    //     0x7e36d8: stur            w7, [x1, #0xc3]
    // 0x7e36dc: r8 = Instance_DragStartBehavior
    //     0x7e36dc: ldr             x8, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7e36e0: StoreField: r1->field_d3 = r8
    //     0x7e36e0: stur            w8, [x1, #0xd3]
    // 0x7e36e4: StoreField: r1->field_db = r3
    //     0x7e36e4: stur            w3, [x1, #0xdb]
    // 0x7e36e8: r9 = const []
    //     0x7e36e8: ldr             x9, [PP, #0x73e8]  ; [pp+0x73e8] List<String>(0)
    // 0x7e36ec: StoreField: r1->field_f7 = r9
    //     0x7e36ec: stur            w9, [x1, #0xf7]
    // 0x7e36f0: r10 = Instance_Clip
    //     0x7e36f0: add             x10, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x7e36f4: ldr             x10, [x10, #0x2d8]
    // 0x7e36f8: StoreField: r1->field_fb = r10
    //     0x7e36f8: stur            w10, [x1, #0xfb]
    // 0x7e36fc: r17 = 259
    //     0x7e36fc: mov             x17, #0x103
    // 0x7e3700: str             w5, [x1, x17]
    // 0x7e3704: r17 = 263
    //     0x7e3704: mov             x17, #0x107
    // 0x7e3708: str             w5, [x1, x17]
    // 0x7e370c: r17 = 267
    //     0x7e370c: mov             x17, #0x10b
    // 0x7e3710: str             w5, [x1, x17]
    // 0x7e3714: r11 = Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static.
    //     0x7e3714: add             x11, PP, #0x18, lsl #12  ; [pp+0x189f8] Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static. (0x7f2290684300)
    //     0x7e3718: ldr             x11, [x11, #0x9f8]
    // 0x7e371c: r17 = 275
    //     0x7e371c: mov             x17, #0x113
    // 0x7e3720: str             w11, [x1, x17]
    // 0x7e3724: r17 = 279
    //     0x7e3724: mov             x17, #0x117
    // 0x7e3728: str             w5, [x1, x17]
    // 0x7e372c: r12 = Instance_SmartDashesType
    //     0x7e372c: ldr             x12, [PP, #0x73f0]  ; [pp+0x73f0] Obj!SmartDashesType@a29cf1
    // 0x7e3730: StoreField: r1->field_53 = r12
    //     0x7e3730: stur            w12, [x1, #0x53]
    // 0x7e3734: r13 = Instance_SmartQuotesType
    //     0x7e3734: add             x13, PP, #0x14, lsl #12  ; [pp+0x14520] Obj!SmartQuotesType@a29cd1
    //     0x7e3738: ldr             x13, [x13, #0x520]
    // 0x7e373c: StoreField: r1->field_57 = r13
    //     0x7e373c: stur            w13, [x1, #0x57]
    // 0x7e3740: r14 = Instance_TextInputType
    //     0x7e3740: add             x14, PP, #0x14, lsl #12  ; [pp+0x14528] Obj!TextInputType@a0acc1
    //     0x7e3744: ldr             x14, [x14, #0x528]
    // 0x7e3748: StoreField: r1->field_1f = r14
    //     0x7e3748: stur            w14, [x1, #0x1f]
    // 0x7e374c: StoreField: r1->field_c7 = r5
    //     0x7e374c: stur            w5, [x1, #0xc7]
    // 0x7e3750: ldur            x14, [fp, #-8]
    // 0x7e3754: ArrayLoad: r19 = r14[0]  ; List_4
    //     0x7e3754: ldur            w19, [x14, #0x17]
    // 0x7e3758: DecompressPointer r19
    //     0x7e3758: add             x19, x19, HEAP, lsl #32
    // 0x7e375c: stur            x19, [fp, #-0x10]
    // 0x7e3760: r16 = "^\\d+\\.\?\\d{0,2}"
    //     0x7e3760: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c3c0] "^\\d+\\.\?\\d{0,2}"
    //     0x7e3764: ldr             x16, [x16, #0x3c0]
    // 0x7e3768: stp             x16, NULL, [SP, #0x20]
    // 0x7e376c: r16 = false
    //     0x7e376c: add             x16, NULL, #0x30  ; false
    // 0x7e3770: r30 = true
    //     0x7e3770: add             lr, NULL, #0x20  ; true
    // 0x7e3774: stp             lr, x16, [SP, #0x10]
    // 0x7e3778: r16 = false
    //     0x7e3778: add             x16, NULL, #0x30  ; false
    // 0x7e377c: r30 = false
    //     0x7e377c: add             lr, NULL, #0x30  ; false
    // 0x7e3780: stp             lr, x16, [SP]
    // 0x7e3784: r4 = const [0, 0x6, 0x6, 0x2, caseSensitive, 0x3, dotAll, 0x5, multiLine, 0x2, unicode, 0x4, null]
    //     0x7e3784: ldr             x4, [PP, #0x500]  ; [pp+0x500] List(13) [0, 0x6, 0x6, 0x2, "caseSensitive", 0x3, "dotAll", 0x5, "multiLine", 0x2, "unicode", 0x4, Null]
    // 0x7e3788: r0 = _RegExp()
    //     0x7e3788: bl              #0x3d96c8  ; [dart:core] _RegExp::_RegExp
    // 0x7e378c: stur            x0, [fp, #-8]
    // 0x7e3790: r0 = FilteringTextInputFormatter()
    //     0x7e3790: bl              #0x69fdb0  ; AllocateFilteringTextInputFormatterStub -> FilteringTextInputFormatter (size=0x14)
    // 0x7e3794: mov             x3, x0
    // 0x7e3798: ldur            x0, [fp, #-8]
    // 0x7e379c: stur            x3, [fp, #-0x40]
    // 0x7e37a0: StoreField: r3->field_b = r0
    //     0x7e37a0: stur            w0, [x3, #0xb]
    // 0x7e37a4: r0 = true
    //     0x7e37a4: add             x0, NULL, #0x20  ; true
    // 0x7e37a8: StoreField: r3->field_7 = r0
    //     0x7e37a8: stur            w0, [x3, #7]
    // 0x7e37ac: r1 = ""
    //     0x7e37ac: ldr             x1, [PP, #0x128]  ; [pp+0x128] ""
    // 0x7e37b0: StoreField: r3->field_f = r1
    //     0x7e37b0: stur            w1, [x3, #0xf]
    // 0x7e37b4: r1 = Null
    //     0x7e37b4: mov             x1, NULL
    // 0x7e37b8: r2 = 2
    //     0x7e37b8: mov             x2, #2
    // 0x7e37bc: r0 = AllocateArray()
    //     0x7e37bc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e37c0: mov             x2, x0
    // 0x7e37c4: ldur            x0, [fp, #-0x40]
    // 0x7e37c8: stur            x2, [fp, #-8]
    // 0x7e37cc: StoreField: r2->field_f = r0
    //     0x7e37cc: stur            w0, [x2, #0xf]
    // 0x7e37d0: r1 = <TextInputFormatter>
    //     0x7e37d0: add             x1, PP, #0x18, lsl #12  ; [pp+0x186b0] TypeArguments: <TextInputFormatter>
    //     0x7e37d4: ldr             x1, [x1, #0x6b0]
    // 0x7e37d8: r0 = AllocateGrowableArray()
    //     0x7e37d8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e37dc: mov             x1, x0
    // 0x7e37e0: ldur            x0, [fp, #-8]
    // 0x7e37e4: stur            x1, [fp, #-0x40]
    // 0x7e37e8: StoreField: r1->field_f = r0
    //     0x7e37e8: stur            w0, [x1, #0xf]
    // 0x7e37ec: r0 = 2
    //     0x7e37ec: mov             x0, #2
    // 0x7e37f0: StoreField: r1->field_b = r0
    //     0x7e37f0: stur            w0, [x1, #0xb]
    // 0x7e37f4: r0 = TextField()
    //     0x7e37f4: bl              #0x684214  ; AllocateTextFieldStub -> TextField (size=0x128)
    // 0x7e37f8: mov             x3, x0
    // 0x7e37fc: r0 = EditableText
    //     0x7e37fc: ldr             x0, [PP, #0x6f50]  ; [pp+0x6f50] Type: EditableText
    // 0x7e3800: stur            x3, [fp, #-8]
    // 0x7e3804: StoreField: r3->field_f = r0
    //     0x7e3804: stur            w0, [x3, #0xf]
    // 0x7e3808: ldur            x0, [fp, #-0x10]
    // 0x7e380c: StoreField: r3->field_13 = r0
    //     0x7e380c: stur            w0, [x3, #0x13]
    // 0x7e3810: r0 = Instance_InputDecoration
    //     0x7e3810: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c3c8] Obj!InputDecoration@a0eed1
    //     0x7e3814: ldr             x0, [x0, #0x3c8]
    // 0x7e3818: StoreField: r3->field_1b = r0
    //     0x7e3818: stur            w0, [x3, #0x1b]
    // 0x7e381c: r0 = Instance_TextCapitalization
    //     0x7e381c: add             x0, PP, #0x14, lsl #12  ; [pp+0x144f0] Obj!TextCapitalization@a29af1
    //     0x7e3820: ldr             x0, [x0, #0x4f0]
    // 0x7e3824: StoreField: r3->field_27 = r0
    //     0x7e3824: stur            w0, [x3, #0x27]
    // 0x7e3828: r0 = Instance_TextAlign
    //     0x7e3828: ldr             x0, [PP, #0x4b00]  ; [pp+0x4b00] Obj!TextAlign@a2cf31
    // 0x7e382c: StoreField: r3->field_33 = r0
    //     0x7e382c: stur            w0, [x3, #0x33]
    // 0x7e3830: r0 = false
    //     0x7e3830: add             x0, NULL, #0x30  ; false
    // 0x7e3834: StoreField: r3->field_6b = r0
    //     0x7e3834: stur            w0, [x3, #0x6b]
    // 0x7e3838: StoreField: r3->field_3f = r0
    //     0x7e3838: stur            w0, [x3, #0x3f]
    // 0x7e383c: r1 = "•"
    //     0x7e383c: add             x1, PP, #0x14, lsl #12  ; [pp+0x144f8] "•"
    //     0x7e3840: ldr             x1, [x1, #0x4f8]
    // 0x7e3844: StoreField: r3->field_47 = r1
    //     0x7e3844: stur            w1, [x3, #0x47]
    // 0x7e3848: StoreField: r3->field_4b = r0
    //     0x7e3848: stur            w0, [x3, #0x4b]
    // 0x7e384c: r4 = true
    //     0x7e384c: add             x4, NULL, #0x20  ; true
    // 0x7e3850: StoreField: r3->field_5b = r4
    //     0x7e3850: stur            w4, [x3, #0x5b]
    // 0x7e3854: r1 = 2
    //     0x7e3854: mov             x1, #2
    // 0x7e3858: StoreField: r3->field_5f = r1
    //     0x7e3858: stur            w1, [x3, #0x5f]
    // 0x7e385c: StoreField: r3->field_67 = r0
    //     0x7e385c: stur            w0, [x3, #0x67]
    // 0x7e3860: ldur            x1, [fp, #-0x40]
    // 0x7e3864: StoreField: r3->field_8f = r1
    //     0x7e3864: stur            w1, [x3, #0x8f]
    // 0x7e3868: d0 = 2.000000
    //     0x7e3868: fmov            d0, #2.00000000
    // 0x7e386c: StoreField: r3->field_9b = d0
    //     0x7e386c: stur            d0, [x3, #0x9b]
    // 0x7e3870: r1 = Instance_EdgeInsets
    //     0x7e3870: ldr             x1, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x7e3874: StoreField: r3->field_c3 = r1
    //     0x7e3874: stur            w1, [x3, #0xc3]
    // 0x7e3878: r1 = Instance_DragStartBehavior
    //     0x7e3878: ldr             x1, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7e387c: StoreField: r3->field_d3 = r1
    //     0x7e387c: stur            w1, [x3, #0xd3]
    // 0x7e3880: StoreField: r3->field_db = r0
    //     0x7e3880: stur            w0, [x3, #0xdb]
    // 0x7e3884: r1 = const []
    //     0x7e3884: ldr             x1, [PP, #0x73e8]  ; [pp+0x73e8] List<String>(0)
    // 0x7e3888: StoreField: r3->field_f7 = r1
    //     0x7e3888: stur            w1, [x3, #0xf7]
    // 0x7e388c: r1 = Instance_Clip
    //     0x7e388c: add             x1, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x7e3890: ldr             x1, [x1, #0x2d8]
    // 0x7e3894: StoreField: r3->field_fb = r1
    //     0x7e3894: stur            w1, [x3, #0xfb]
    // 0x7e3898: r17 = 259
    //     0x7e3898: mov             x17, #0x103
    // 0x7e389c: str             w4, [x3, x17]
    // 0x7e38a0: r17 = 263
    //     0x7e38a0: mov             x17, #0x107
    // 0x7e38a4: str             w4, [x3, x17]
    // 0x7e38a8: r17 = 267
    //     0x7e38a8: mov             x17, #0x10b
    // 0x7e38ac: str             w4, [x3, x17]
    // 0x7e38b0: r1 = Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static.
    //     0x7e38b0: add             x1, PP, #0x18, lsl #12  ; [pp+0x189f8] Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static. (0x7f2290684300)
    //     0x7e38b4: ldr             x1, [x1, #0x9f8]
    // 0x7e38b8: r17 = 275
    //     0x7e38b8: mov             x17, #0x113
    // 0x7e38bc: str             w1, [x3, x17]
    // 0x7e38c0: r17 = 279
    //     0x7e38c0: mov             x17, #0x117
    // 0x7e38c4: str             w4, [x3, x17]
    // 0x7e38c8: r1 = Instance_SmartDashesType
    //     0x7e38c8: ldr             x1, [PP, #0x73f0]  ; [pp+0x73f0] Obj!SmartDashesType@a29cf1
    // 0x7e38cc: StoreField: r3->field_53 = r1
    //     0x7e38cc: stur            w1, [x3, #0x53]
    // 0x7e38d0: r1 = Instance_SmartQuotesType
    //     0x7e38d0: add             x1, PP, #0x14, lsl #12  ; [pp+0x14520] Obj!SmartQuotesType@a29cd1
    //     0x7e38d4: ldr             x1, [x1, #0x520]
    // 0x7e38d8: StoreField: r3->field_57 = r1
    //     0x7e38d8: stur            w1, [x3, #0x57]
    // 0x7e38dc: r1 = Instance_TextInputType
    //     0x7e38dc: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c3d0] Obj!TextInputType@a0ad61
    //     0x7e38e0: ldr             x1, [x1, #0x3d0]
    // 0x7e38e4: StoreField: r3->field_1f = r1
    //     0x7e38e4: stur            w1, [x3, #0x1f]
    // 0x7e38e8: StoreField: r3->field_c7 = r4
    //     0x7e38e8: stur            w4, [x3, #0xc7]
    // 0x7e38ec: r1 = Null
    //     0x7e38ec: mov             x1, NULL
    // 0x7e38f0: r2 = 10
    //     0x7e38f0: mov             x2, #0xa
    // 0x7e38f4: r0 = AllocateArray()
    //     0x7e38f4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e38f8: mov             x2, x0
    // 0x7e38fc: ldur            x0, [fp, #-0x30]
    // 0x7e3900: stur            x2, [fp, #-0x10]
    // 0x7e3904: StoreField: r2->field_f = r0
    //     0x7e3904: stur            w0, [x2, #0xf]
    // 0x7e3908: r16 = Instance_SizedBox
    //     0x7e3908: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x7e390c: ldr             x16, [x16, #0x310]
    // 0x7e3910: StoreField: r2->field_13 = r16
    //     0x7e3910: stur            w16, [x2, #0x13]
    // 0x7e3914: ldur            x0, [fp, #-0x38]
    // 0x7e3918: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e3918: stur            w0, [x2, #0x17]
    // 0x7e391c: r16 = Instance_SizedBox
    //     0x7e391c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x7e3920: ldr             x16, [x16, #0x310]
    // 0x7e3924: StoreField: r2->field_1b = r16
    //     0x7e3924: stur            w16, [x2, #0x1b]
    // 0x7e3928: ldur            x0, [fp, #-8]
    // 0x7e392c: StoreField: r2->field_1f = r0
    //     0x7e392c: stur            w0, [x2, #0x1f]
    // 0x7e3930: r1 = <Widget>
    //     0x7e3930: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e3934: r0 = AllocateGrowableArray()
    //     0x7e3934: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e3938: mov             x1, x0
    // 0x7e393c: ldur            x0, [fp, #-0x10]
    // 0x7e3940: stur            x1, [fp, #-8]
    // 0x7e3944: StoreField: r1->field_f = r0
    //     0x7e3944: stur            w0, [x1, #0xf]
    // 0x7e3948: r0 = 10
    //     0x7e3948: mov             x0, #0xa
    // 0x7e394c: StoreField: r1->field_b = r0
    //     0x7e394c: stur            w0, [x1, #0xb]
    // 0x7e3950: r0 = Column()
    //     0x7e3950: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7e3954: mov             x3, x0
    // 0x7e3958: r0 = Instance_Axis
    //     0x7e3958: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7e395c: stur            x3, [fp, #-0x10]
    // 0x7e3960: StoreField: r3->field_f = r0
    //     0x7e3960: stur            w0, [x3, #0xf]
    // 0x7e3964: r0 = Instance_MainAxisAlignment
    //     0x7e3964: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e3968: ldr             x0, [x0, #0x230]
    // 0x7e396c: StoreField: r3->field_13 = r0
    //     0x7e396c: stur            w0, [x3, #0x13]
    // 0x7e3970: r0 = Instance_MainAxisSize
    //     0x7e3970: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x7e3974: ldr             x0, [x0, #0xb60]
    // 0x7e3978: ArrayStore: r3[0] = r0  ; List_4
    //     0x7e3978: stur            w0, [x3, #0x17]
    // 0x7e397c: r0 = Instance_CrossAxisAlignment
    //     0x7e397c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e3980: ldr             x0, [x0, #0x338]
    // 0x7e3984: StoreField: r3->field_1b = r0
    //     0x7e3984: stur            w0, [x3, #0x1b]
    // 0x7e3988: r0 = Instance_VerticalDirection
    //     0x7e3988: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e398c: ldr             x0, [x0, #0x340]
    // 0x7e3990: StoreField: r3->field_23 = r0
    //     0x7e3990: stur            w0, [x3, #0x23]
    // 0x7e3994: r0 = Instance_Clip
    //     0x7e3994: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e3998: ldr             x0, [x0, #0x348]
    // 0x7e399c: StoreField: r3->field_2b = r0
    //     0x7e399c: stur            w0, [x3, #0x2b]
    // 0x7e39a0: StoreField: r3->field_2f = rZR
    //     0x7e39a0: stur            xzr, [x3, #0x2f]
    // 0x7e39a4: ldur            x0, [fp, #-8]
    // 0x7e39a8: StoreField: r3->field_b = r0
    //     0x7e39a8: stur            w0, [x3, #0xb]
    // 0x7e39ac: ldur            x2, [fp, #-0x20]
    // 0x7e39b0: r1 = Function '<anonymous closure>':.
    //     0x7e39b0: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c3d8] AnonymousClosure: (0x7233f8), in [package:umrem_demo/features/info_screen/screens/technical_support_screen.dart] TechnicalSupportScreen::build (0x7eef84)
    //     0x7e39b4: ldr             x1, [x1, #0x3d8]
    // 0x7e39b8: r0 = AllocateClosure()
    //     0x7e39b8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e39bc: stur            x0, [fp, #-8]
    // 0x7e39c0: r0 = TextButton()
    //     0x7e39c0: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x7e39c4: mov             x1, x0
    // 0x7e39c8: ldur            x0, [fp, #-8]
    // 0x7e39cc: stur            x1, [fp, #-0x30]
    // 0x7e39d0: StoreField: r1->field_b = r0
    //     0x7e39d0: stur            w0, [x1, #0xb]
    // 0x7e39d4: r0 = false
    //     0x7e39d4: add             x0, NULL, #0x30  ; false
    // 0x7e39d8: StoreField: r1->field_27 = r0
    //     0x7e39d8: stur            w0, [x1, #0x27]
    // 0x7e39dc: r2 = true
    //     0x7e39dc: add             x2, NULL, #0x20  ; true
    // 0x7e39e0: StoreField: r1->field_2f = r2
    //     0x7e39e0: stur            w2, [x1, #0x2f]
    // 0x7e39e4: r3 = Instance_Text
    //     0x7e39e4: add             x3, PP, #0x14, lsl #12  ; [pp+0x147d0] Obj!Text@a1b0e1
    //     0x7e39e8: ldr             x3, [x3, #0x7d0]
    // 0x7e39ec: StoreField: r1->field_37 = r3
    //     0x7e39ec: stur            w3, [x1, #0x37]
    // 0x7e39f0: ldur            x3, [fp, #-0x18]
    // 0x7e39f4: cmp             w3, NULL
    // 0x7e39f8: b.ne            #0x7e3a08
    // 0x7e39fc: r5 = "Ekle"
    //     0x7e39fc: add             x5, PP, #0x19, lsl #12  ; [pp+0x191b8] "Ekle"
    //     0x7e3a00: ldr             x5, [x5, #0x1b8]
    // 0x7e3a04: b               #0x7e3a10
    // 0x7e3a08: r5 = "Güncelle"
    //     0x7e3a08: add             x5, PP, #0x13, lsl #12  ; [pp+0x13b48] "Güncelle"
    //     0x7e3a0c: ldr             x5, [x5, #0xb48]
    // 0x7e3a10: ldur            x4, [fp, #-0x28]
    // 0x7e3a14: ldur            x3, [fp, #-0x10]
    // 0x7e3a18: stur            x5, [fp, #-8]
    // 0x7e3a1c: r0 = Text()
    //     0x7e3a1c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e3a20: mov             x3, x0
    // 0x7e3a24: ldur            x0, [fp, #-8]
    // 0x7e3a28: stur            x3, [fp, #-0x18]
    // 0x7e3a2c: StoreField: r3->field_b = r0
    //     0x7e3a2c: stur            w0, [x3, #0xb]
    // 0x7e3a30: ldur            x2, [fp, #-0x20]
    // 0x7e3a34: r1 = Function '<anonymous closure>':.
    //     0x7e3a34: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c3e0] AnonymousClosure: (0x7e3aec), in [package:umrem_demo/features/admin/widgets/doviz/edit_dialog.dart] EditDialog::build (0x7e34c8)
    //     0x7e3a38: ldr             x1, [x1, #0x3e0]
    // 0x7e3a3c: r0 = AllocateClosure()
    //     0x7e3a3c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e3a40: stur            x0, [fp, #-8]
    // 0x7e3a44: r0 = ElevatedButton()
    //     0x7e3a44: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x7e3a48: mov             x3, x0
    // 0x7e3a4c: ldur            x0, [fp, #-8]
    // 0x7e3a50: stur            x3, [fp, #-0x20]
    // 0x7e3a54: StoreField: r3->field_b = r0
    //     0x7e3a54: stur            w0, [x3, #0xb]
    // 0x7e3a58: r0 = false
    //     0x7e3a58: add             x0, NULL, #0x30  ; false
    // 0x7e3a5c: StoreField: r3->field_27 = r0
    //     0x7e3a5c: stur            w0, [x3, #0x27]
    // 0x7e3a60: r1 = true
    //     0x7e3a60: add             x1, NULL, #0x20  ; true
    // 0x7e3a64: StoreField: r3->field_2f = r1
    //     0x7e3a64: stur            w1, [x3, #0x2f]
    // 0x7e3a68: ldur            x1, [fp, #-0x18]
    // 0x7e3a6c: StoreField: r3->field_37 = r1
    //     0x7e3a6c: stur            w1, [x3, #0x37]
    // 0x7e3a70: r1 = Null
    //     0x7e3a70: mov             x1, NULL
    // 0x7e3a74: r2 = 4
    //     0x7e3a74: mov             x2, #4
    // 0x7e3a78: r0 = AllocateArray()
    //     0x7e3a78: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e3a7c: mov             x2, x0
    // 0x7e3a80: ldur            x0, [fp, #-0x30]
    // 0x7e3a84: stur            x2, [fp, #-8]
    // 0x7e3a88: StoreField: r2->field_f = r0
    //     0x7e3a88: stur            w0, [x2, #0xf]
    // 0x7e3a8c: ldur            x0, [fp, #-0x20]
    // 0x7e3a90: StoreField: r2->field_13 = r0
    //     0x7e3a90: stur            w0, [x2, #0x13]
    // 0x7e3a94: r1 = <Widget>
    //     0x7e3a94: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e3a98: r0 = AllocateGrowableArray()
    //     0x7e3a98: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e3a9c: mov             x1, x0
    // 0x7e3aa0: ldur            x0, [fp, #-8]
    // 0x7e3aa4: stur            x1, [fp, #-0x18]
    // 0x7e3aa8: StoreField: r1->field_f = r0
    //     0x7e3aa8: stur            w0, [x1, #0xf]
    // 0x7e3aac: r0 = 4
    //     0x7e3aac: mov             x0, #4
    // 0x7e3ab0: StoreField: r1->field_b = r0
    //     0x7e3ab0: stur            w0, [x1, #0xb]
    // 0x7e3ab4: r0 = AlertDialog()
    //     0x7e3ab4: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x7e3ab8: ldur            x1, [fp, #-0x28]
    // 0x7e3abc: StoreField: r0->field_f = r1
    //     0x7e3abc: stur            w1, [x0, #0xf]
    // 0x7e3ac0: ldur            x1, [fp, #-0x10]
    // 0x7e3ac4: StoreField: r0->field_1b = r1
    //     0x7e3ac4: stur            w1, [x0, #0x1b]
    // 0x7e3ac8: ldur            x1, [fp, #-0x18]
    // 0x7e3acc: StoreField: r0->field_27 = r1
    //     0x7e3acc: stur            w1, [x0, #0x27]
    // 0x7e3ad0: r1 = false
    //     0x7e3ad0: add             x1, NULL, #0x30  ; false
    // 0x7e3ad4: StoreField: r0->field_6b = r1
    //     0x7e3ad4: stur            w1, [x0, #0x6b]
    // 0x7e3ad8: LeaveFrame
    //     0x7e3ad8: mov             SP, fp
    //     0x7e3adc: ldp             fp, lr, [SP], #0x10
    // 0x7e3ae0: ret
    //     0x7e3ae0: ret             
    // 0x7e3ae4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e3ae4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e3ae8: b               #0x7e34e8
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7e3aec, size: 0x324
    // 0x7e3aec: EnterFrame
    //     0x7e3aec: stp             fp, lr, [SP, #-0x10]!
    //     0x7e3af0: mov             fp, SP
    // 0x7e3af4: AllocStack(0x50)
    //     0x7e3af4: sub             SP, SP, #0x50
    // 0x7e3af8: SetupParameters(EditDialog this /* r1 */)
    //     0x7e3af8: stur            NULL, [fp, #-8]
    //     0x7e3afc: mov             x0, #0
    //     0x7e3b00: add             x1, fp, w0, sxtw #2
    //     0x7e3b04: ldr             x1, [x1, #0x10]
    //     0x7e3b08: ldur            w2, [x1, #0x17]
    //     0x7e3b0c: add             x2, x2, HEAP, lsl #32
    //     0x7e3b10: stur            x2, [fp, #-0x10]
    // 0x7e3b14: CheckStackOverflow
    //     0x7e3b14: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e3b18: cmp             SP, x16
    //     0x7e3b1c: b.ls            #0x7e3e08
    // 0x7e3b20: InitAsync() -> Future<void?>
    //     0x7e3b20: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x7e3b24: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7e3b28: ldur            x0, [fp, #-0x10]
    // 0x7e3b2c: LoadField: r1 = r0->field_13
    //     0x7e3b2c: ldur            w1, [x0, #0x13]
    // 0x7e3b30: DecompressPointer r1
    //     0x7e3b30: add             x1, x1, HEAP, lsl #32
    // 0x7e3b34: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7e3b34: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7e3b38: r0 = of()
    //     0x7e3b38: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x7e3b3c: mov             x2, x0
    // 0x7e3b40: ldur            x0, [fp, #-0x10]
    // 0x7e3b44: stur            x2, [fp, #-0x18]
    // 0x7e3b48: LoadField: r1 = r0->field_13
    //     0x7e3b48: ldur            w1, [x0, #0x13]
    // 0x7e3b4c: DecompressPointer r1
    //     0x7e3b4c: add             x1, x1, HEAP, lsl #32
    // 0x7e3b50: r0 = of()
    //     0x7e3b50: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x7e3b54: mov             x2, x0
    // 0x7e3b58: ldur            x0, [fp, #-0x10]
    // 0x7e3b5c: stur            x2, [fp, #-0x20]
    // 0x7e3b60: LoadField: r1 = r0->field_f
    //     0x7e3b60: ldur            w1, [x0, #0xf]
    // 0x7e3b64: DecompressPointer r1
    //     0x7e3b64: add             x1, x1, HEAP, lsl #32
    // 0x7e3b68: LoadField: r3 = r1->field_f
    //     0x7e3b68: ldur            w3, [x1, #0xf]
    // 0x7e3b6c: DecompressPointer r3
    //     0x7e3b6c: add             x3, x3, HEAP, lsl #32
    // 0x7e3b70: LoadField: r4 = r3->field_27
    //     0x7e3b70: ldur            w4, [x3, #0x27]
    // 0x7e3b74: DecompressPointer r4
    //     0x7e3b74: add             x4, x4, HEAP, lsl #32
    // 0x7e3b78: LoadField: r3 = r4->field_7
    //     0x7e3b78: ldur            w3, [x4, #7]
    // 0x7e3b7c: DecompressPointer r3
    //     0x7e3b7c: add             x3, x3, HEAP, lsl #32
    // 0x7e3b80: LoadField: r4 = r3->field_7
    //     0x7e3b80: ldur            w4, [x3, #7]
    // 0x7e3b84: cbz             w4, #0x7e3bc8
    // 0x7e3b88: LoadField: r3 = r1->field_13
    //     0x7e3b88: ldur            w3, [x1, #0x13]
    // 0x7e3b8c: DecompressPointer r3
    //     0x7e3b8c: add             x3, x3, HEAP, lsl #32
    // 0x7e3b90: LoadField: r4 = r3->field_27
    //     0x7e3b90: ldur            w4, [x3, #0x27]
    // 0x7e3b94: DecompressPointer r4
    //     0x7e3b94: add             x4, x4, HEAP, lsl #32
    // 0x7e3b98: LoadField: r3 = r4->field_7
    //     0x7e3b98: ldur            w3, [x4, #7]
    // 0x7e3b9c: DecompressPointer r3
    //     0x7e3b9c: add             x3, x3, HEAP, lsl #32
    // 0x7e3ba0: LoadField: r4 = r3->field_7
    //     0x7e3ba0: ldur            w4, [x3, #7]
    // 0x7e3ba4: cbz             w4, #0x7e3bc8
    // 0x7e3ba8: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x7e3ba8: ldur            w3, [x1, #0x17]
    // 0x7e3bac: DecompressPointer r3
    //     0x7e3bac: add             x3, x3, HEAP, lsl #32
    // 0x7e3bb0: LoadField: r1 = r3->field_27
    //     0x7e3bb0: ldur            w1, [x3, #0x27]
    // 0x7e3bb4: DecompressPointer r1
    //     0x7e3bb4: add             x1, x1, HEAP, lsl #32
    // 0x7e3bb8: LoadField: r3 = r1->field_7
    //     0x7e3bb8: ldur            w3, [x1, #7]
    // 0x7e3bbc: DecompressPointer r3
    //     0x7e3bbc: add             x3, x3, HEAP, lsl #32
    // 0x7e3bc0: LoadField: r1 = r3->field_7
    //     0x7e3bc0: ldur            w1, [x3, #7]
    // 0x7e3bc4: cbnz            w1, #0x7e3be0
    // 0x7e3bc8: mov             x1, x2
    // 0x7e3bcc: r2 = Instance_SnackBar
    //     0x7e3bcc: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c3e8] Obj!SnackBar@a20871
    //     0x7e3bd0: ldr             x2, [x2, #0x3e8]
    // 0x7e3bd4: r0 = showSnackBar()
    //     0x7e3bd4: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x7e3bd8: r0 = Null
    //     0x7e3bd8: mov             x0, NULL
    // 0x7e3bdc: r0 = ReturnAsyncNotFuture()
    //     0x7e3bdc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e3be0: mov             x1, x3
    // 0x7e3be4: r0 = _parse()
    //     0x7e3be4: bl              #0x4b3d18  ; [dart:core] double::_parse
    // 0x7e3be8: stur            x0, [fp, #-0x28]
    // 0x7e3bec: cmp             w0, NULL
    // 0x7e3bf0: b.ne            #0x7e3c0c
    // 0x7e3bf4: ldur            x1, [fp, #-0x20]
    // 0x7e3bf8: r2 = Instance_SnackBar
    //     0x7e3bf8: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c3f0] Obj!SnackBar@a20811
    //     0x7e3bfc: ldr             x2, [x2, #0x3f0]
    // 0x7e3c00: r0 = showSnackBar()
    //     0x7e3c00: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x7e3c04: r0 = Null
    //     0x7e3c04: mov             x0, NULL
    // 0x7e3c08: r0 = ReturnAsyncNotFuture()
    //     0x7e3c08: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e3c0c: ldur            x1, [fp, #-0x10]
    // 0x7e3c10: LoadField: r2 = r1->field_13
    //     0x7e3c10: ldur            w2, [x1, #0x13]
    // 0x7e3c14: DecompressPointer r2
    //     0x7e3c14: add             x2, x2, HEAP, lsl #32
    // 0x7e3c18: r16 = <CurrencyProvider>
    //     0x7e3c18: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b70] TypeArguments: <CurrencyProvider>
    //     0x7e3c1c: ldr             x16, [x16, #0xb70]
    // 0x7e3c20: stp             x2, x16, [SP]
    // 0x7e3c24: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7e3c24: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7e3c28: r0 = ReadContext.read()
    //     0x7e3c28: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x7e3c2c: mov             x2, x0
    // 0x7e3c30: ldur            x1, [fp, #-0x10]
    // 0x7e3c34: stur            x2, [fp, #-0x38]
    // 0x7e3c38: LoadField: r0 = r1->field_f
    //     0x7e3c38: ldur            w0, [x1, #0xf]
    // 0x7e3c3c: DecompressPointer r0
    //     0x7e3c3c: add             x0, x0, HEAP, lsl #32
    // 0x7e3c40: LoadField: r3 = r0->field_b
    //     0x7e3c40: ldur            w3, [x0, #0xb]
    // 0x7e3c44: DecompressPointer r3
    //     0x7e3c44: add             x3, x3, HEAP, lsl #32
    // 0x7e3c48: cmp             w3, NULL
    // 0x7e3c4c: b.ne            #0x7e3cd0
    // 0x7e3c50: ldur            x3, [fp, #-0x28]
    // 0x7e3c54: LoadField: r4 = r0->field_f
    //     0x7e3c54: ldur            w4, [x0, #0xf]
    // 0x7e3c58: DecompressPointer r4
    //     0x7e3c58: add             x4, x4, HEAP, lsl #32
    // 0x7e3c5c: LoadField: r5 = r4->field_27
    //     0x7e3c5c: ldur            w5, [x4, #0x27]
    // 0x7e3c60: DecompressPointer r5
    //     0x7e3c60: add             x5, x5, HEAP, lsl #32
    // 0x7e3c64: LoadField: r4 = r5->field_7
    //     0x7e3c64: ldur            w4, [x5, #7]
    // 0x7e3c68: DecompressPointer r4
    //     0x7e3c68: add             x4, x4, HEAP, lsl #32
    // 0x7e3c6c: stur            x4, [fp, #-0x30]
    // 0x7e3c70: LoadField: r5 = r0->field_13
    //     0x7e3c70: ldur            w5, [x0, #0x13]
    // 0x7e3c74: DecompressPointer r5
    //     0x7e3c74: add             x5, x5, HEAP, lsl #32
    // 0x7e3c78: LoadField: r0 = r5->field_27
    //     0x7e3c78: ldur            w0, [x5, #0x27]
    // 0x7e3c7c: DecompressPointer r0
    //     0x7e3c7c: add             x0, x0, HEAP, lsl #32
    // 0x7e3c80: LoadField: r5 = r0->field_7
    //     0x7e3c80: ldur            w5, [x0, #7]
    // 0x7e3c84: DecompressPointer r5
    //     0x7e3c84: add             x5, x5, HEAP, lsl #32
    // 0x7e3c88: r0 = LoadClassIdInstr(r5)
    //     0x7e3c88: ldur            x0, [x5, #-1]
    //     0x7e3c8c: ubfx            x0, x0, #0xc, #0x14
    // 0x7e3c90: str             x5, [SP]
    // 0x7e3c94: r0 = GDT[cid_x0 + -0xff6]()
    //     0x7e3c94: sub             lr, x0, #0xff6
    //     0x7e3c98: ldr             lr, [x21, lr, lsl #3]
    //     0x7e3c9c: blr             lr
    // 0x7e3ca0: ldur            x1, [fp, #-0x28]
    // 0x7e3ca4: LoadField: d0 = r1->field_7
    //     0x7e3ca4: ldur            d0, [x1, #7]
    // 0x7e3ca8: ldur            x1, [fp, #-0x38]
    // 0x7e3cac: ldur            x2, [fp, #-0x30]
    // 0x7e3cb0: mov             x3, x0
    // 0x7e3cb4: r0 = createCurrency()
    //     0x7e3cb4: bl              #0x5e1250  ; [package:umrem_demo/features/admin/providers/currency_provider.dart] CurrencyProvider::createCurrency
    // 0x7e3cb8: mov             x1, x0
    // 0x7e3cbc: stur            x1, [fp, #-0x30]
    // 0x7e3cc0: r0 = Await()
    //     0x7e3cc0: bl              #0x3dd188  ; AwaitStub
    // 0x7e3cc4: cmp             w0, NULL
    // 0x7e3cc8: b.eq            #0x7e3e00
    // 0x7e3ccc: b               #0x7e3d64
    // 0x7e3cd0: ldur            x1, [fp, #-0x28]
    // 0x7e3cd4: LoadField: r2 = r3->field_7
    //     0x7e3cd4: ldur            w2, [x3, #7]
    // 0x7e3cd8: DecompressPointer r2
    //     0x7e3cd8: add             x2, x2, HEAP, lsl #32
    // 0x7e3cdc: stur            x2, [fp, #-0x40]
    // 0x7e3ce0: LoadField: r3 = r0->field_f
    //     0x7e3ce0: ldur            w3, [x0, #0xf]
    // 0x7e3ce4: DecompressPointer r3
    //     0x7e3ce4: add             x3, x3, HEAP, lsl #32
    // 0x7e3ce8: LoadField: r4 = r3->field_27
    //     0x7e3ce8: ldur            w4, [x3, #0x27]
    // 0x7e3cec: DecompressPointer r4
    //     0x7e3cec: add             x4, x4, HEAP, lsl #32
    // 0x7e3cf0: LoadField: r3 = r4->field_7
    //     0x7e3cf0: ldur            w3, [x4, #7]
    // 0x7e3cf4: DecompressPointer r3
    //     0x7e3cf4: add             x3, x3, HEAP, lsl #32
    // 0x7e3cf8: stur            x3, [fp, #-0x30]
    // 0x7e3cfc: LoadField: r4 = r0->field_13
    //     0x7e3cfc: ldur            w4, [x0, #0x13]
    // 0x7e3d00: DecompressPointer r4
    //     0x7e3d00: add             x4, x4, HEAP, lsl #32
    // 0x7e3d04: LoadField: r0 = r4->field_27
    //     0x7e3d04: ldur            w0, [x4, #0x27]
    // 0x7e3d08: DecompressPointer r0
    //     0x7e3d08: add             x0, x0, HEAP, lsl #32
    // 0x7e3d0c: LoadField: r4 = r0->field_7
    //     0x7e3d0c: ldur            w4, [x0, #7]
    // 0x7e3d10: DecompressPointer r4
    //     0x7e3d10: add             x4, x4, HEAP, lsl #32
    // 0x7e3d14: r0 = LoadClassIdInstr(r4)
    //     0x7e3d14: ldur            x0, [x4, #-1]
    //     0x7e3d18: ubfx            x0, x0, #0xc, #0x14
    // 0x7e3d1c: str             x4, [SP]
    // 0x7e3d20: r0 = GDT[cid_x0 + -0xff6]()
    //     0x7e3d20: sub             lr, x0, #0xff6
    //     0x7e3d24: ldr             lr, [x21, lr, lsl #3]
    //     0x7e3d28: blr             lr
    // 0x7e3d2c: mov             x1, x0
    // 0x7e3d30: ldur            x0, [fp, #-0x28]
    // 0x7e3d34: LoadField: d0 = r0->field_7
    //     0x7e3d34: ldur            d0, [x0, #7]
    // 0x7e3d38: mov             x5, x1
    // 0x7e3d3c: ldur            x1, [fp, #-0x38]
    // 0x7e3d40: ldur            x2, [fp, #-0x30]
    // 0x7e3d44: ldur            x3, [fp, #-0x40]
    // 0x7e3d48: r0 = updateCurrency()
    //     0x7e3d48: bl              #0x7e3e10  ; [package:umrem_demo/features/admin/providers/currency_provider.dart] CurrencyProvider::updateCurrency
    // 0x7e3d4c: mov             x1, x0
    // 0x7e3d50: stur            x1, [fp, #-0x28]
    // 0x7e3d54: r0 = Await()
    //     0x7e3d54: bl              #0x3dd188  ; AwaitStub
    // 0x7e3d58: r16 = true
    //     0x7e3d58: add             x16, NULL, #0x20  ; true
    // 0x7e3d5c: cmp             w0, w16
    // 0x7e3d60: b.ne            #0x7e3e00
    // 0x7e3d64: ldur            x0, [fp, #-0x10]
    // 0x7e3d68: r16 = <Object?>
    //     0x7e3d68: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x7e3d6c: ldur            lr, [fp, #-0x18]
    // 0x7e3d70: stp             lr, x16, [SP]
    // 0x7e3d74: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7e3d74: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7e3d78: r0 = pop()
    //     0x7e3d78: bl              #0x3fc2bc  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pop
    // 0x7e3d7c: ldur            x0, [fp, #-0x10]
    // 0x7e3d80: LoadField: r1 = r0->field_f
    //     0x7e3d80: ldur            w1, [x0, #0xf]
    // 0x7e3d84: DecompressPointer r1
    //     0x7e3d84: add             x1, x1, HEAP, lsl #32
    // 0x7e3d88: LoadField: r0 = r1->field_b
    //     0x7e3d88: ldur            w0, [x1, #0xb]
    // 0x7e3d8c: DecompressPointer r0
    //     0x7e3d8c: add             x0, x0, HEAP, lsl #32
    // 0x7e3d90: cmp             w0, NULL
    // 0x7e3d94: b.ne            #0x7e3da4
    // 0x7e3d98: r0 = "Döviz eklendi"
    //     0x7e3d98: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c3f8] "Döviz eklendi"
    //     0x7e3d9c: ldr             x0, [x0, #0x3f8]
    // 0x7e3da0: b               #0x7e3dac
    // 0x7e3da4: r0 = "Döviz güncellendi"
    //     0x7e3da4: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c400] "Döviz güncellendi"
    //     0x7e3da8: ldr             x0, [x0, #0x400]
    // 0x7e3dac: stur            x0, [fp, #-0x10]
    // 0x7e3db0: r0 = Text()
    //     0x7e3db0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e3db4: mov             x1, x0
    // 0x7e3db8: ldur            x0, [fp, #-0x10]
    // 0x7e3dbc: stur            x1, [fp, #-0x18]
    // 0x7e3dc0: StoreField: r1->field_b = r0
    //     0x7e3dc0: stur            w0, [x1, #0xb]
    // 0x7e3dc4: r0 = SnackBar()
    //     0x7e3dc4: bl              #0x5dcf84  ; AllocateSnackBarStub -> SnackBar (size=0x58)
    // 0x7e3dc8: mov             x1, x0
    // 0x7e3dcc: ldur            x0, [fp, #-0x18]
    // 0x7e3dd0: StoreField: r1->field_b = r0
    //     0x7e3dd0: stur            w0, [x1, #0xb]
    // 0x7e3dd4: r0 = Instance_Duration
    //     0x7e3dd4: add             x0, PP, #0x18, lsl #12  ; [pp+0x18f78] Obj!Duration@a2dde1
    //     0x7e3dd8: ldr             x0, [x0, #0xf78]
    // 0x7e3ddc: StoreField: r1->field_3f = r0
    //     0x7e3ddc: stur            w0, [x1, #0x3f]
    // 0x7e3de0: r0 = Instance_Clip
    //     0x7e3de0: add             x0, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x7e3de4: ldr             x0, [x0, #0x2d8]
    // 0x7e3de8: StoreField: r1->field_53 = r0
    //     0x7e3de8: stur            w0, [x1, #0x53]
    // 0x7e3dec: r0 = false
    //     0x7e3dec: add             x0, NULL, #0x30  ; false
    // 0x7e3df0: StoreField: r1->field_43 = r0
    //     0x7e3df0: stur            w0, [x1, #0x43]
    // 0x7e3df4: mov             x2, x1
    // 0x7e3df8: ldur            x1, [fp, #-0x20]
    // 0x7e3dfc: r0 = showSnackBar()
    //     0x7e3dfc: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x7e3e00: r0 = Null
    //     0x7e3e00: mov             x0, NULL
    // 0x7e3e04: r0 = ReturnAsyncNotFuture()
    //     0x7e3e04: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e3e08: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e3e08: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e3e0c: b               #0x7e3b20
  }
}

// lib: , url: package:umrem_demo/features/admin/widgets/kisiler/users_tab.dart

// class id: 1049557, size: 0x8
class :: {
}

// class id: 2481, size: 0x18, field offset: 0x14
class _UsersTabState extends State<dynamic> {

  _ build(/* No info */) {
    // ** addr: 0x6f7488, size: 0x78
    // 0x6f7488: EnterFrame
    //     0x6f7488: stp             fp, lr, [SP, #-0x10]!
    //     0x6f748c: mov             fp, SP
    // 0x6f7490: AllocStack(0x10)
    //     0x6f7490: sub             SP, SP, #0x10
    // 0x6f7494: SetupParameters(_UsersTabState this /* r1 => r1, fp-0x8 */)
    //     0x6f7494: stur            x1, [fp, #-8]
    // 0x6f7498: r1 = 1
    //     0x6f7498: mov             x1, #1
    // 0x6f749c: r0 = AllocateContext()
    //     0x6f749c: bl              #0x927010  ; AllocateContextStub
    // 0x6f74a0: mov             x1, x0
    // 0x6f74a4: ldur            x0, [fp, #-8]
    // 0x6f74a8: StoreField: r1->field_f = r0
    //     0x6f74a8: stur            w0, [x1, #0xf]
    // 0x6f74ac: LoadField: r2 = r0->field_b
    //     0x6f74ac: ldur            w2, [x0, #0xb]
    // 0x6f74b0: DecompressPointer r2
    //     0x6f74b0: add             x2, x2, HEAP, lsl #32
    // 0x6f74b4: cmp             w2, NULL
    // 0x6f74b8: b.eq            #0x6f74fc
    // 0x6f74bc: LoadField: r0 = r2->field_b
    //     0x6f74bc: ldur            w0, [x2, #0xb]
    // 0x6f74c0: DecompressPointer r0
    //     0x6f74c0: add             x0, x0, HEAP, lsl #32
    // 0x6f74c4: mov             x2, x1
    // 0x6f74c8: stur            x0, [fp, #-8]
    // 0x6f74cc: r1 = Function '<anonymous closure>':.
    //     0x6f74cc: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c118] AnonymousClosure: (0x6f7520), in [package:umrem_demo/features/admin/widgets/kisiler/users_tab.dart] _UsersTabState::build (0x6f7488)
    //     0x6f74d0: ldr             x1, [x1, #0x118]
    // 0x6f74d4: r0 = AllocateClosure()
    //     0x6f74d4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f74d8: stur            x0, [fp, #-0x10]
    // 0x6f74dc: r0 = AnimatedBuilder()
    //     0x6f74dc: bl              #0x408f14  ; AllocateAnimatedBuilderStub -> AnimatedBuilder (size=0x18)
    // 0x6f74e0: ldur            x1, [fp, #-0x10]
    // 0x6f74e4: StoreField: r0->field_f = r1
    //     0x6f74e4: stur            w1, [x0, #0xf]
    // 0x6f74e8: ldur            x1, [fp, #-8]
    // 0x6f74ec: StoreField: r0->field_b = r1
    //     0x6f74ec: stur            w1, [x0, #0xb]
    // 0x6f74f0: LeaveFrame
    //     0x6f74f0: mov             SP, fp
    //     0x6f74f4: ldp             fp, lr, [SP], #0x10
    // 0x6f74f8: ret
    //     0x6f74f8: ret             
    // 0x6f74fc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f74fc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] RefreshIndicator <anonymous closure>(dynamic, BuildContext, Widget?) {
    // ** addr: 0x6f7520, size: 0xaa8
    // 0x6f7520: EnterFrame
    //     0x6f7520: stp             fp, lr, [SP, #-0x10]!
    //     0x6f7524: mov             fp, SP
    // 0x6f7528: AllocStack(0x68)
    //     0x6f7528: sub             SP, SP, #0x68
    // 0x6f752c: SetupParameters([dynamic _ /* r0 */])
    //     0x6f752c: ldr             x0, [fp, #0x20]
    //     0x6f7530: ldur            w1, [x0, #0x17]
    //     0x6f7534: add             x1, x1, HEAP, lsl #32
    //     0x6f7538: stur            x1, [fp, #-8]
    // 0x6f753c: CheckStackOverflow
    //     0x6f753c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f7540: cmp             SP, x16
    //     0x6f7544: b.ls            #0x6f7fa0
    // 0x6f7548: r1 = 3
    //     0x6f7548: mov             x1, #3
    // 0x6f754c: r0 = AllocateContext()
    //     0x6f754c: bl              #0x927010  ; AllocateContextStub
    // 0x6f7550: mov             x2, x0
    // 0x6f7554: ldur            x0, [fp, #-8]
    // 0x6f7558: stur            x2, [fp, #-0x18]
    // 0x6f755c: StoreField: r2->field_b = r0
    //     0x6f755c: stur            w0, [x2, #0xb]
    // 0x6f7560: ldr             x1, [fp, #0x18]
    // 0x6f7564: StoreField: r2->field_f = r1
    //     0x6f7564: stur            w1, [x2, #0xf]
    // 0x6f7568: LoadField: r1 = r0->field_f
    //     0x6f7568: ldur            w1, [x0, #0xf]
    // 0x6f756c: DecompressPointer r1
    //     0x6f756c: add             x1, x1, HEAP, lsl #32
    // 0x6f7570: LoadField: r3 = r1->field_b
    //     0x6f7570: ldur            w3, [x1, #0xb]
    // 0x6f7574: DecompressPointer r3
    //     0x6f7574: add             x3, x3, HEAP, lsl #32
    // 0x6f7578: cmp             w3, NULL
    // 0x6f757c: b.eq            #0x6f7fa8
    // 0x6f7580: LoadField: r4 = r3->field_b
    //     0x6f7580: ldur            w4, [x3, #0xb]
    // 0x6f7584: DecompressPointer r4
    //     0x6f7584: add             x4, x4, HEAP, lsl #32
    // 0x6f7588: stur            x4, [fp, #-0x10]
    // 0x6f758c: StoreField: r2->field_13 = r4
    //     0x6f758c: stur            w4, [x2, #0x13]
    // 0x6f7590: LoadField: r3 = r1->field_13
    //     0x6f7590: ldur            w3, [x1, #0x13]
    // 0x6f7594: DecompressPointer r3
    //     0x6f7594: add             x3, x3, HEAP, lsl #32
    // 0x6f7598: LoadField: r1 = r3->field_27
    //     0x6f7598: ldur            w1, [x3, #0x27]
    // 0x6f759c: DecompressPointer r1
    //     0x6f759c: add             x1, x1, HEAP, lsl #32
    // 0x6f75a0: LoadField: r3 = r1->field_7
    //     0x6f75a0: ldur            w3, [x1, #7]
    // 0x6f75a4: DecompressPointer r3
    //     0x6f75a4: add             x3, x3, HEAP, lsl #32
    // 0x6f75a8: mov             x1, x3
    // 0x6f75ac: r0 = trim()
    //     0x6f75ac: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6f75b0: r1 = LoadClassIdInstr(r0)
    //     0x6f75b0: ldur            x1, [x0, #-1]
    //     0x6f75b4: ubfx            x1, x1, #0xc, #0x14
    // 0x6f75b8: str             x0, [SP]
    // 0x6f75bc: mov             x0, x1
    // 0x6f75c0: r0 = GDT[cid_x0 + -0xffe]()
    //     0x6f75c0: sub             lr, x0, #0xffe
    //     0x6f75c4: ldr             lr, [x21, lr, lsl #3]
    //     0x6f75c8: blr             lr
    // 0x6f75cc: ldur            x3, [fp, #-0x18]
    // 0x6f75d0: ArrayStore: r3[0] = r0  ; List_4
    //     0x6f75d0: stur            w0, [x3, #0x17]
    //     0x6f75d4: ldurb           w16, [x3, #-1]
    //     0x6f75d8: ldurb           w17, [x0, #-1]
    //     0x6f75dc: and             x16, x17, x16, lsr #2
    //     0x6f75e0: tst             x16, HEAP, lsr #32
    //     0x6f75e4: b.eq            #0x6f75ec
    //     0x6f75e8: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x6f75ec: ldur            x0, [fp, #-0x10]
    // 0x6f75f0: LoadField: r4 = r0->field_33
    //     0x6f75f0: ldur            w4, [x0, #0x33]
    // 0x6f75f4: DecompressPointer r4
    //     0x6f75f4: add             x4, x4, HEAP, lsl #32
    // 0x6f75f8: mov             x2, x3
    // 0x6f75fc: stur            x4, [fp, #-0x20]
    // 0x6f7600: r1 = Function '<anonymous closure>':.
    //     0x6f7600: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c120] AnonymousClosure: (0x6f83f8), in [package:umrem_demo/features/admin/widgets/kisiler/users_tab.dart] _UsersTabState::build (0x6f7488)
    //     0x6f7604: ldr             x1, [x1, #0x120]
    // 0x6f7608: r0 = AllocateClosure()
    //     0x6f7608: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f760c: ldur            x1, [fp, #-0x20]
    // 0x6f7610: r2 = LoadClassIdInstr(r1)
    //     0x6f7610: ldur            x2, [x1, #-1]
    //     0x6f7614: ubfx            x2, x2, #0xc, #0x14
    // 0x6f7618: mov             x16, x0
    // 0x6f761c: mov             x0, x2
    // 0x6f7620: mov             x2, x16
    // 0x6f7624: r0 = GDT[cid_x0 + 0xd348]()
    //     0x6f7624: mov             x17, #0xd348
    //     0x6f7628: add             lr, x0, x17
    //     0x6f762c: ldr             lr, [x21, lr, lsl #3]
    //     0x6f7630: blr             lr
    // 0x6f7634: LoadField: r1 = r0->field_7
    //     0x6f7634: ldur            w1, [x0, #7]
    // 0x6f7638: DecompressPointer r1
    //     0x6f7638: add             x1, x1, HEAP, lsl #32
    // 0x6f763c: mov             x2, x0
    // 0x6f7640: r0 = _GrowableList.of()
    //     0x6f7640: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x6f7644: mov             x1, x0
    // 0x6f7648: ldur            x2, [fp, #-0x10]
    // 0x6f764c: stur            x1, [fp, #-0x20]
    // 0x6f7650: LoadField: r0 = r2->field_33
    //     0x6f7650: ldur            w0, [x2, #0x33]
    // 0x6f7654: DecompressPointer r0
    //     0x6f7654: add             x0, x0, HEAP, lsl #32
    // 0x6f7658: r3 = LoadClassIdInstr(r0)
    //     0x6f7658: ldur            x3, [x0, #-1]
    //     0x6f765c: ubfx            x3, x3, #0xc, #0x14
    // 0x6f7660: str             x0, [SP]
    // 0x6f7664: mov             x0, x3
    // 0x6f7668: r0 = GDT[cid_x0 + 0x879f]()
    //     0x6f7668: mov             x17, #0x879f
    //     0x6f766c: add             lr, x0, x17
    //     0x6f7670: ldr             lr, [x21, lr, lsl #3]
    //     0x6f7674: blr             lr
    // 0x6f7678: str             x0, [SP]
    // 0x6f767c: r0 = toString()
    //     0x6f767c: bl              #0x7b5710  ; [dart:core] _Smi::toString
    // 0x6f7680: mov             x1, x0
    // 0x6f7684: ldur            x0, [fp, #-8]
    // 0x6f7688: stur            x1, [fp, #-0x28]
    // 0x6f768c: LoadField: r2 = r0->field_f
    //     0x6f768c: ldur            w2, [x0, #0xf]
    // 0x6f7690: DecompressPointer r2
    //     0x6f7690: add             x2, x2, HEAP, lsl #32
    // 0x6f7694: LoadField: r3 = r2->field_b
    //     0x6f7694: ldur            w3, [x2, #0xb]
    // 0x6f7698: DecompressPointer r3
    //     0x6f7698: add             x3, x3, HEAP, lsl #32
    // 0x6f769c: cmp             w3, NULL
    // 0x6f76a0: b.eq            #0x6f7fac
    // 0x6f76a4: r0 = StatCard()
    //     0x6f76a4: bl              #0x6f7fd4  ; AllocateStatCardStub -> StatCard (size=0x1c)
    // 0x6f76a8: mov             x1, x0
    // 0x6f76ac: r0 = "Kayıtlı Kişi"
    //     0x6f76ac: add             x0, PP, #0x12, lsl #12  ; [pp+0x12770] "Kayıtlı Kişi"
    //     0x6f76b0: ldr             x0, [x0, #0x770]
    // 0x6f76b4: stur            x1, [fp, #-0x30]
    // 0x6f76b8: StoreField: r1->field_b = r0
    //     0x6f76b8: stur            w0, [x1, #0xb]
    // 0x6f76bc: ldur            x0, [fp, #-0x28]
    // 0x6f76c0: StoreField: r1->field_f = r0
    //     0x6f76c0: stur            w0, [x1, #0xf]
    // 0x6f76c4: r0 = Instance_IconData
    //     0x6f76c4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12778] Obj!IconData@a09de1
    //     0x6f76c8: ldr             x0, [x0, #0x778]
    // 0x6f76cc: StoreField: r1->field_13 = r0
    //     0x6f76cc: stur            w0, [x1, #0x13]
    // 0x6f76d0: r0 = Instance_MaterialColor
    //     0x6f76d0: add             x0, PP, #0x12, lsl #12  ; [pp+0x125d8] Obj!MaterialColor@a25ce1
    //     0x6f76d4: ldr             x0, [x0, #0x5d8]
    // 0x6f76d8: ArrayStore: r1[0] = r0  ; List_4
    //     0x6f76d8: stur            w0, [x1, #0x17]
    // 0x6f76dc: ldur            x2, [fp, #-0x10]
    // 0x6f76e0: LoadField: r0 = r2->field_37
    //     0x6f76e0: ldur            w0, [x2, #0x37]
    // 0x6f76e4: DecompressPointer r0
    //     0x6f76e4: add             x0, x0, HEAP, lsl #32
    // 0x6f76e8: r3 = LoadClassIdInstr(r0)
    //     0x6f76e8: ldur            x3, [x0, #-1]
    //     0x6f76ec: ubfx            x3, x3, #0xc, #0x14
    // 0x6f76f0: str             x0, [SP]
    // 0x6f76f4: mov             x0, x3
    // 0x6f76f8: r0 = GDT[cid_x0 + 0x879f]()
    //     0x6f76f8: mov             x17, #0x879f
    //     0x6f76fc: add             lr, x0, x17
    //     0x6f7700: ldr             lr, [x21, lr, lsl #3]
    //     0x6f7704: blr             lr
    // 0x6f7708: str             x0, [SP]
    // 0x6f770c: r0 = toString()
    //     0x6f770c: bl              #0x7b5710  ; [dart:core] _Smi::toString
    // 0x6f7710: stur            x0, [fp, #-0x28]
    // 0x6f7714: r0 = StatCard()
    //     0x6f7714: bl              #0x6f7fd4  ; AllocateStatCardStub -> StatCard (size=0x1c)
    // 0x6f7718: mov             x1, x0
    // 0x6f771c: r0 = "Sefer"
    //     0x6f771c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12780] "Sefer"
    //     0x6f7720: ldr             x0, [x0, #0x780]
    // 0x6f7724: stur            x1, [fp, #-0x38]
    // 0x6f7728: StoreField: r1->field_b = r0
    //     0x6f7728: stur            w0, [x1, #0xb]
    // 0x6f772c: ldur            x0, [fp, #-0x28]
    // 0x6f7730: StoreField: r1->field_f = r0
    //     0x6f7730: stur            w0, [x1, #0xf]
    // 0x6f7734: r0 = Instance_IconData
    //     0x6f7734: add             x0, PP, #0x12, lsl #12  ; [pp+0x12788] Obj!IconData@a09dc1
    //     0x6f7738: ldr             x0, [x0, #0x788]
    // 0x6f773c: StoreField: r1->field_13 = r0
    //     0x6f773c: stur            w0, [x1, #0x13]
    // 0x6f7740: r0 = Instance_Color
    //     0x6f7740: add             x0, PP, #0x12, lsl #12  ; [pp+0x12790] Obj!Color@a25211
    //     0x6f7744: ldr             x0, [x0, #0x790]
    // 0x6f7748: ArrayStore: r1[0] = r0  ; List_4
    //     0x6f7748: stur            w0, [x1, #0x17]
    // 0x6f774c: ldur            x2, [fp, #-0x10]
    // 0x6f7750: LoadField: r0 = r2->field_3b
    //     0x6f7750: ldur            w0, [x2, #0x3b]
    // 0x6f7754: DecompressPointer r0
    //     0x6f7754: add             x0, x0, HEAP, lsl #32
    // 0x6f7758: r3 = LoadClassIdInstr(r0)
    //     0x6f7758: ldur            x3, [x0, #-1]
    //     0x6f775c: ubfx            x3, x3, #0xc, #0x14
    // 0x6f7760: str             x0, [SP]
    // 0x6f7764: mov             x0, x3
    // 0x6f7768: r0 = GDT[cid_x0 + 0x879f]()
    //     0x6f7768: mov             x17, #0x879f
    //     0x6f776c: add             lr, x0, x17
    //     0x6f7770: ldr             lr, [x21, lr, lsl #3]
    //     0x6f7774: blr             lr
    // 0x6f7778: str             x0, [SP]
    // 0x6f777c: r0 = toString()
    //     0x6f777c: bl              #0x7b5710  ; [dart:core] _Smi::toString
    // 0x6f7780: stur            x0, [fp, #-0x28]
    // 0x6f7784: r0 = StatCard()
    //     0x6f7784: bl              #0x6f7fd4  ; AllocateStatCardStub -> StatCard (size=0x1c)
    // 0x6f7788: mov             x3, x0
    // 0x6f778c: r0 = "Otel"
    //     0x6f778c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12798] "Otel"
    //     0x6f7790: ldr             x0, [x0, #0x798]
    // 0x6f7794: stur            x3, [fp, #-0x40]
    // 0x6f7798: StoreField: r3->field_b = r0
    //     0x6f7798: stur            w0, [x3, #0xb]
    // 0x6f779c: ldur            x0, [fp, #-0x28]
    // 0x6f77a0: StoreField: r3->field_f = r0
    //     0x6f77a0: stur            w0, [x3, #0xf]
    // 0x6f77a4: r0 = Instance_IconData
    //     0x6f77a4: add             x0, PP, #0x12, lsl #12  ; [pp+0x127a0] Obj!IconData@a09da1
    //     0x6f77a8: ldr             x0, [x0, #0x7a0]
    // 0x6f77ac: StoreField: r3->field_13 = r0
    //     0x6f77ac: stur            w0, [x3, #0x13]
    // 0x6f77b0: r0 = Instance_MaterialColor
    //     0x6f77b0: add             x0, PP, #0x12, lsl #12  ; [pp+0x127a8] Obj!MaterialColor@a25a61
    //     0x6f77b4: ldr             x0, [x0, #0x7a8]
    // 0x6f77b8: ArrayStore: r3[0] = r0  ; List_4
    //     0x6f77b8: stur            w0, [x3, #0x17]
    // 0x6f77bc: r1 = Null
    //     0x6f77bc: mov             x1, NULL
    // 0x6f77c0: r2 = 6
    //     0x6f77c0: mov             x2, #6
    // 0x6f77c4: r0 = AllocateArray()
    //     0x6f77c4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f77c8: mov             x2, x0
    // 0x6f77cc: ldur            x0, [fp, #-0x30]
    // 0x6f77d0: stur            x2, [fp, #-0x28]
    // 0x6f77d4: StoreField: r2->field_f = r0
    //     0x6f77d4: stur            w0, [x2, #0xf]
    // 0x6f77d8: ldur            x0, [fp, #-0x38]
    // 0x6f77dc: StoreField: r2->field_13 = r0
    //     0x6f77dc: stur            w0, [x2, #0x13]
    // 0x6f77e0: ldur            x0, [fp, #-0x40]
    // 0x6f77e4: ArrayStore: r2[0] = r0  ; List_4
    //     0x6f77e4: stur            w0, [x2, #0x17]
    // 0x6f77e8: r1 = <Widget>
    //     0x6f77e8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f77ec: r0 = AllocateGrowableArray()
    //     0x6f77ec: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f77f0: mov             x1, x0
    // 0x6f77f4: ldur            x0, [fp, #-0x28]
    // 0x6f77f8: stur            x1, [fp, #-0x30]
    // 0x6f77fc: StoreField: r1->field_f = r0
    //     0x6f77fc: stur            w0, [x1, #0xf]
    // 0x6f7800: r0 = 6
    //     0x6f7800: mov             x0, #6
    // 0x6f7804: StoreField: r1->field_b = r0
    //     0x6f7804: stur            w0, [x1, #0xb]
    // 0x6f7808: r0 = Wrap()
    //     0x6f7808: bl              #0x69a5b8  ; AllocateWrapStub -> Wrap (size=0x3c)
    // 0x6f780c: mov             x1, x0
    // 0x6f7810: r0 = Instance_Axis
    //     0x6f7810: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6f7814: stur            x1, [fp, #-0x28]
    // 0x6f7818: StoreField: r1->field_f = r0
    //     0x6f7818: stur            w0, [x1, #0xf]
    // 0x6f781c: r0 = Instance_WrapAlignment
    //     0x6f781c: add             x0, PP, #0x12, lsl #12  ; [pp+0x127d8] Obj!WrapAlignment@a2a271
    //     0x6f7820: ldr             x0, [x0, #0x7d8]
    // 0x6f7824: StoreField: r1->field_13 = r0
    //     0x6f7824: stur            w0, [x1, #0x13]
    // 0x6f7828: d0 = 12.000000
    //     0x6f7828: fmov            d0, #12.00000000
    // 0x6f782c: ArrayStore: r1[0] = d0  ; List_8
    //     0x6f782c: stur            d0, [x1, #0x17]
    // 0x6f7830: StoreField: r1->field_1f = r0
    //     0x6f7830: stur            w0, [x1, #0x1f]
    // 0x6f7834: StoreField: r1->field_23 = d0
    //     0x6f7834: stur            d0, [x1, #0x23]
    // 0x6f7838: r0 = Instance_WrapCrossAlignment
    //     0x6f7838: add             x0, PP, #0x12, lsl #12  ; [pp+0x127e0] Obj!WrapCrossAlignment@a2a1b1
    //     0x6f783c: ldr             x0, [x0, #0x7e0]
    // 0x6f7840: StoreField: r1->field_2b = r0
    //     0x6f7840: stur            w0, [x1, #0x2b]
    // 0x6f7844: r0 = Instance_VerticalDirection
    //     0x6f7844: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6f7848: ldr             x0, [x0, #0x340]
    // 0x6f784c: StoreField: r1->field_33 = r0
    //     0x6f784c: stur            w0, [x1, #0x33]
    // 0x6f7850: r0 = Instance_Clip
    //     0x6f7850: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6f7854: ldr             x0, [x0, #0x348]
    // 0x6f7858: StoreField: r1->field_37 = r0
    //     0x6f7858: stur            w0, [x1, #0x37]
    // 0x6f785c: ldur            x0, [fp, #-0x30]
    // 0x6f7860: StoreField: r1->field_b = r0
    //     0x6f7860: stur            w0, [x1, #0xb]
    // 0x6f7864: ldur            x0, [fp, #-8]
    // 0x6f7868: LoadField: r2 = r0->field_f
    //     0x6f7868: ldur            w2, [x0, #0xf]
    // 0x6f786c: DecompressPointer r2
    //     0x6f786c: add             x2, x2, HEAP, lsl #32
    // 0x6f7870: LoadField: r0 = r2->field_13
    //     0x6f7870: ldur            w0, [x2, #0x13]
    // 0x6f7874: DecompressPointer r0
    //     0x6f7874: add             x0, x0, HEAP, lsl #32
    // 0x6f7878: stur            x0, [fp, #-8]
    // 0x6f787c: r0 = Radius()
    //     0x6f787c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6f7880: d0 = 12.000000
    //     0x6f7880: fmov            d0, #12.00000000
    // 0x6f7884: stur            x0, [fp, #-0x30]
    // 0x6f7888: StoreField: r0->field_7 = d0
    //     0x6f7888: stur            d0, [x0, #7]
    // 0x6f788c: StoreField: r0->field_f = d0
    //     0x6f788c: stur            d0, [x0, #0xf]
    // 0x6f7890: r0 = BorderRadius()
    //     0x6f7890: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6f7894: mov             x3, x0
    // 0x6f7898: ldur            x0, [fp, #-0x30]
    // 0x6f789c: stur            x3, [fp, #-0x38]
    // 0x6f78a0: StoreField: r3->field_7 = r0
    //     0x6f78a0: stur            w0, [x3, #7]
    // 0x6f78a4: StoreField: r3->field_b = r0
    //     0x6f78a4: stur            w0, [x3, #0xb]
    // 0x6f78a8: StoreField: r3->field_f = r0
    //     0x6f78a8: stur            w0, [x3, #0xf]
    // 0x6f78ac: StoreField: r3->field_13 = r0
    //     0x6f78ac: stur            w0, [x3, #0x13]
    // 0x6f78b0: r1 = _ConstMap len:12
    //     0x6f78b0: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6f78b4: r2 = 600
    //     0x6f78b4: mov             x2, #0x258
    // 0x6f78b8: r0 = []()
    //     0x6f78b8: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6f78bc: stur            x0, [fp, #-0x30]
    // 0x6f78c0: cmp             w0, NULL
    // 0x6f78c4: b.eq            #0x6f7fb0
    // 0x6f78c8: r0 = BorderSide()
    //     0x6f78c8: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x6f78cc: mov             x1, x0
    // 0x6f78d0: ldur            x0, [fp, #-0x30]
    // 0x6f78d4: stur            x1, [fp, #-0x40]
    // 0x6f78d8: StoreField: r1->field_7 = r0
    //     0x6f78d8: stur            w0, [x1, #7]
    // 0x6f78dc: d0 = 1.000000
    //     0x6f78dc: fmov            d0, #1.00000000
    // 0x6f78e0: StoreField: r1->field_b = d0
    //     0x6f78e0: stur            d0, [x1, #0xb]
    // 0x6f78e4: r0 = Instance_BorderStyle
    //     0x6f78e4: add             x0, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x6f78e8: ldr             x0, [x0, #0x738]
    // 0x6f78ec: StoreField: r1->field_13 = r0
    //     0x6f78ec: stur            w0, [x1, #0x13]
    // 0x6f78f0: d1 = -1.000000
    //     0x6f78f0: fmov            d1, #-1.00000000
    // 0x6f78f4: ArrayStore: r1[0] = d1  ; List_8
    //     0x6f78f4: stur            d1, [x1, #0x17]
    // 0x6f78f8: r0 = OutlineInputBorder()
    //     0x6f78f8: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x6f78fc: mov             x1, x0
    // 0x6f7900: ldur            x0, [fp, #-0x38]
    // 0x6f7904: stur            x1, [fp, #-0x30]
    // 0x6f7908: StoreField: r1->field_13 = r0
    //     0x6f7908: stur            w0, [x1, #0x13]
    // 0x6f790c: d0 = 4.000000
    //     0x6f790c: fmov            d0, #4.00000000
    // 0x6f7910: StoreField: r1->field_b = d0
    //     0x6f7910: stur            d0, [x1, #0xb]
    // 0x6f7914: ldur            x0, [fp, #-0x40]
    // 0x6f7918: StoreField: r1->field_7 = r0
    //     0x6f7918: stur            w0, [x1, #7]
    // 0x6f791c: r0 = Radius()
    //     0x6f791c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6f7920: d0 = 12.000000
    //     0x6f7920: fmov            d0, #12.00000000
    // 0x6f7924: stur            x0, [fp, #-0x38]
    // 0x6f7928: StoreField: r0->field_7 = d0
    //     0x6f7928: stur            d0, [x0, #7]
    // 0x6f792c: StoreField: r0->field_f = d0
    //     0x6f792c: stur            d0, [x0, #0xf]
    // 0x6f7930: r0 = BorderRadius()
    //     0x6f7930: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6f7934: mov             x3, x0
    // 0x6f7938: ldur            x0, [fp, #-0x38]
    // 0x6f793c: stur            x3, [fp, #-0x40]
    // 0x6f7940: StoreField: r3->field_7 = r0
    //     0x6f7940: stur            w0, [x3, #7]
    // 0x6f7944: StoreField: r3->field_b = r0
    //     0x6f7944: stur            w0, [x3, #0xb]
    // 0x6f7948: StoreField: r3->field_f = r0
    //     0x6f7948: stur            w0, [x3, #0xf]
    // 0x6f794c: StoreField: r3->field_13 = r0
    //     0x6f794c: stur            w0, [x3, #0x13]
    // 0x6f7950: r1 = _ConstMap len:12
    //     0x6f7950: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6f7954: r2 = 600
    //     0x6f7954: mov             x2, #0x258
    // 0x6f7958: r0 = []()
    //     0x6f7958: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6f795c: stur            x0, [fp, #-0x38]
    // 0x6f7960: cmp             w0, NULL
    // 0x6f7964: b.eq            #0x6f7fb4
    // 0x6f7968: r0 = BorderSide()
    //     0x6f7968: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x6f796c: mov             x1, x0
    // 0x6f7970: ldur            x0, [fp, #-0x38]
    // 0x6f7974: stur            x1, [fp, #-0x48]
    // 0x6f7978: StoreField: r1->field_7 = r0
    //     0x6f7978: stur            w0, [x1, #7]
    // 0x6f797c: d0 = 1.000000
    //     0x6f797c: fmov            d0, #1.00000000
    // 0x6f7980: StoreField: r1->field_b = d0
    //     0x6f7980: stur            d0, [x1, #0xb]
    // 0x6f7984: r0 = Instance_BorderStyle
    //     0x6f7984: add             x0, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x6f7988: ldr             x0, [x0, #0x738]
    // 0x6f798c: StoreField: r1->field_13 = r0
    //     0x6f798c: stur            w0, [x1, #0x13]
    // 0x6f7990: d0 = -1.000000
    //     0x6f7990: fmov            d0, #-1.00000000
    // 0x6f7994: ArrayStore: r1[0] = d0  ; List_8
    //     0x6f7994: stur            d0, [x1, #0x17]
    // 0x6f7998: r0 = OutlineInputBorder()
    //     0x6f7998: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x6f799c: mov             x1, x0
    // 0x6f79a0: ldur            x0, [fp, #-0x40]
    // 0x6f79a4: stur            x1, [fp, #-0x38]
    // 0x6f79a8: StoreField: r1->field_13 = r0
    //     0x6f79a8: stur            w0, [x1, #0x13]
    // 0x6f79ac: d0 = 4.000000
    //     0x6f79ac: fmov            d0, #4.00000000
    // 0x6f79b0: StoreField: r1->field_b = d0
    //     0x6f79b0: stur            d0, [x1, #0xb]
    // 0x6f79b4: ldur            x0, [fp, #-0x48]
    // 0x6f79b8: StoreField: r1->field_7 = r0
    //     0x6f79b8: stur            w0, [x1, #7]
    // 0x6f79bc: r0 = InputDecoration()
    //     0x6f79bc: bl              #0x5fbec8  ; AllocateInputDecorationStub -> InputDecoration (size=0xec)
    // 0x6f79c0: mov             x1, x0
    // 0x6f79c4: r0 = "İsim veya TC ile ara"
    //     0x6f79c4: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c128] "İsim veya TC ile ara"
    //     0x6f79c8: ldr             x0, [x0, #0x128]
    // 0x6f79cc: stur            x1, [fp, #-0x40]
    // 0x6f79d0: StoreField: r1->field_2f = r0
    //     0x6f79d0: stur            w0, [x1, #0x2f]
    // 0x6f79d4: r0 = true
    //     0x6f79d4: add             x0, NULL, #0x20  ; true
    // 0x6f79d8: StoreField: r1->field_47 = r0
    //     0x6f79d8: stur            w0, [x1, #0x47]
    // 0x6f79dc: StoreField: r1->field_4b = r0
    //     0x6f79dc: stur            w0, [x1, #0x4b]
    // 0x6f79e0: r2 = Instance_Icon
    //     0x6f79e0: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c130] Obj!Icon@a1e731
    //     0x6f79e4: ldr             x2, [x2, #0x130]
    // 0x6f79e8: StoreField: r1->field_73 = r2
    //     0x6f79e8: stur            w2, [x1, #0x73]
    // 0x6f79ec: StoreField: r1->field_af = r0
    //     0x6f79ec: stur            w0, [x1, #0xaf]
    // 0x6f79f0: r2 = Instance_Color
    //     0x6f79f0: ldr             x2, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6f79f4: StoreField: r1->field_b3 = r2
    //     0x6f79f4: stur            w2, [x1, #0xb3]
    // 0x6f79f8: ldur            x3, [fp, #-0x38]
    // 0x6f79fc: StoreField: r1->field_cf = r3
    //     0x6f79fc: stur            w3, [x1, #0xcf]
    // 0x6f7a00: ldur            x3, [fp, #-0x30]
    // 0x6f7a04: StoreField: r1->field_d3 = r3
    //     0x6f7a04: stur            w3, [x1, #0xd3]
    // 0x6f7a08: StoreField: r1->field_d7 = r0
    //     0x6f7a08: stur            w0, [x1, #0xd7]
    // 0x6f7a0c: r0 = TextField()
    //     0x6f7a0c: bl              #0x684214  ; AllocateTextFieldStub -> TextField (size=0x128)
    // 0x6f7a10: mov             x3, x0
    // 0x6f7a14: r0 = EditableText
    //     0x6f7a14: ldr             x0, [PP, #0x6f50]  ; [pp+0x6f50] Type: EditableText
    // 0x6f7a18: stur            x3, [fp, #-0x30]
    // 0x6f7a1c: StoreField: r3->field_f = r0
    //     0x6f7a1c: stur            w0, [x3, #0xf]
    // 0x6f7a20: ldur            x0, [fp, #-8]
    // 0x6f7a24: StoreField: r3->field_13 = r0
    //     0x6f7a24: stur            w0, [x3, #0x13]
    // 0x6f7a28: ldur            x0, [fp, #-0x40]
    // 0x6f7a2c: StoreField: r3->field_1b = r0
    //     0x6f7a2c: stur            w0, [x3, #0x1b]
    // 0x6f7a30: r0 = Instance_TextCapitalization
    //     0x6f7a30: add             x0, PP, #0x14, lsl #12  ; [pp+0x144f0] Obj!TextCapitalization@a29af1
    //     0x6f7a34: ldr             x0, [x0, #0x4f0]
    // 0x6f7a38: StoreField: r3->field_27 = r0
    //     0x6f7a38: stur            w0, [x3, #0x27]
    // 0x6f7a3c: r0 = Instance_TextAlign
    //     0x6f7a3c: ldr             x0, [PP, #0x4b00]  ; [pp+0x4b00] Obj!TextAlign@a2cf31
    // 0x6f7a40: StoreField: r3->field_33 = r0
    //     0x6f7a40: stur            w0, [x3, #0x33]
    // 0x6f7a44: r0 = false
    //     0x6f7a44: add             x0, NULL, #0x30  ; false
    // 0x6f7a48: StoreField: r3->field_6b = r0
    //     0x6f7a48: stur            w0, [x3, #0x6b]
    // 0x6f7a4c: StoreField: r3->field_3f = r0
    //     0x6f7a4c: stur            w0, [x3, #0x3f]
    // 0x6f7a50: r1 = "•"
    //     0x6f7a50: add             x1, PP, #0x14, lsl #12  ; [pp+0x144f8] "•"
    //     0x6f7a54: ldr             x1, [x1, #0x4f8]
    // 0x6f7a58: StoreField: r3->field_47 = r1
    //     0x6f7a58: stur            w1, [x3, #0x47]
    // 0x6f7a5c: StoreField: r3->field_4b = r0
    //     0x6f7a5c: stur            w0, [x3, #0x4b]
    // 0x6f7a60: r4 = true
    //     0x6f7a60: add             x4, NULL, #0x20  ; true
    // 0x6f7a64: StoreField: r3->field_5b = r4
    //     0x6f7a64: stur            w4, [x3, #0x5b]
    // 0x6f7a68: r1 = 2
    //     0x6f7a68: mov             x1, #2
    // 0x6f7a6c: StoreField: r3->field_5f = r1
    //     0x6f7a6c: stur            w1, [x3, #0x5f]
    // 0x6f7a70: StoreField: r3->field_67 = r0
    //     0x6f7a70: stur            w0, [x3, #0x67]
    // 0x6f7a74: ldur            x2, [fp, #-0x18]
    // 0x6f7a78: r1 = Function '<anonymous closure>':.
    //     0x6f7a78: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c138] AnonymousClosure: (0x6f838c), in [package:umrem_demo/features/admin/widgets/kisiler/users_tab.dart] _UsersTabState::build (0x6f7488)
    //     0x6f7a7c: ldr             x1, [x1, #0x138]
    // 0x6f7a80: r0 = AllocateClosure()
    //     0x6f7a80: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f7a84: mov             x1, x0
    // 0x6f7a88: ldur            x0, [fp, #-0x30]
    // 0x6f7a8c: StoreField: r0->field_7f = r1
    //     0x6f7a8c: stur            w1, [x0, #0x7f]
    // 0x6f7a90: d0 = 2.000000
    //     0x6f7a90: fmov            d0, #2.00000000
    // 0x6f7a94: StoreField: r0->field_9b = d0
    //     0x6f7a94: stur            d0, [x0, #0x9b]
    // 0x6f7a98: r1 = Instance_EdgeInsets
    //     0x6f7a98: ldr             x1, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x6f7a9c: StoreField: r0->field_c3 = r1
    //     0x6f7a9c: stur            w1, [x0, #0xc3]
    // 0x6f7aa0: r1 = Instance_DragStartBehavior
    //     0x6f7aa0: ldr             x1, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6f7aa4: StoreField: r0->field_d3 = r1
    //     0x6f7aa4: stur            w1, [x0, #0xd3]
    // 0x6f7aa8: r1 = false
    //     0x6f7aa8: add             x1, NULL, #0x30  ; false
    // 0x6f7aac: StoreField: r0->field_db = r1
    //     0x6f7aac: stur            w1, [x0, #0xdb]
    // 0x6f7ab0: r1 = const []
    //     0x6f7ab0: ldr             x1, [PP, #0x73e8]  ; [pp+0x73e8] List<String>(0)
    // 0x6f7ab4: StoreField: r0->field_f7 = r1
    //     0x6f7ab4: stur            w1, [x0, #0xf7]
    // 0x6f7ab8: r1 = Instance_Clip
    //     0x6f7ab8: add             x1, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6f7abc: ldr             x1, [x1, #0x2d8]
    // 0x6f7ac0: StoreField: r0->field_fb = r1
    //     0x6f7ac0: stur            w1, [x0, #0xfb]
    // 0x6f7ac4: r3 = true
    //     0x6f7ac4: add             x3, NULL, #0x20  ; true
    // 0x6f7ac8: r17 = 259
    //     0x6f7ac8: mov             x17, #0x103
    // 0x6f7acc: str             w3, [x0, x17]
    // 0x6f7ad0: r17 = 263
    //     0x6f7ad0: mov             x17, #0x107
    // 0x6f7ad4: str             w3, [x0, x17]
    // 0x6f7ad8: r17 = 267
    //     0x6f7ad8: mov             x17, #0x10b
    // 0x6f7adc: str             w3, [x0, x17]
    // 0x6f7ae0: r1 = Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static.
    //     0x6f7ae0: add             x1, PP, #0x18, lsl #12  ; [pp+0x189f8] Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static. (0x7f2290684300)
    //     0x6f7ae4: ldr             x1, [x1, #0x9f8]
    // 0x6f7ae8: r17 = 275
    //     0x6f7ae8: mov             x17, #0x113
    // 0x6f7aec: str             w1, [x0, x17]
    // 0x6f7af0: r17 = 279
    //     0x6f7af0: mov             x17, #0x117
    // 0x6f7af4: str             w3, [x0, x17]
    // 0x6f7af8: r1 = Instance_SmartDashesType
    //     0x6f7af8: ldr             x1, [PP, #0x73f0]  ; [pp+0x73f0] Obj!SmartDashesType@a29cf1
    // 0x6f7afc: StoreField: r0->field_53 = r1
    //     0x6f7afc: stur            w1, [x0, #0x53]
    // 0x6f7b00: r1 = Instance_SmartQuotesType
    //     0x6f7b00: add             x1, PP, #0x14, lsl #12  ; [pp+0x14520] Obj!SmartQuotesType@a29cd1
    //     0x6f7b04: ldr             x1, [x1, #0x520]
    // 0x6f7b08: StoreField: r0->field_57 = r1
    //     0x6f7b08: stur            w1, [x0, #0x57]
    // 0x6f7b0c: r1 = Instance_TextInputType
    //     0x6f7b0c: add             x1, PP, #0x14, lsl #12  ; [pp+0x14528] Obj!TextInputType@a0acc1
    //     0x6f7b10: ldr             x1, [x1, #0x528]
    // 0x6f7b14: StoreField: r0->field_1f = r1
    //     0x6f7b14: stur            w1, [x0, #0x1f]
    // 0x6f7b18: StoreField: r0->field_c7 = r3
    //     0x6f7b18: stur            w3, [x0, #0xc7]
    // 0x6f7b1c: r1 = Null
    //     0x6f7b1c: mov             x1, NULL
    // 0x6f7b20: r2 = 8
    //     0x6f7b20: mov             x2, #8
    // 0x6f7b24: r0 = AllocateArray()
    //     0x6f7b24: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f7b28: mov             x2, x0
    // 0x6f7b2c: ldur            x0, [fp, #-0x28]
    // 0x6f7b30: stur            x2, [fp, #-8]
    // 0x6f7b34: StoreField: r2->field_f = r0
    //     0x6f7b34: stur            w0, [x2, #0xf]
    // 0x6f7b38: r16 = Instance_SizedBox
    //     0x6f7b38: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6f7b3c: ldr             x16, [x16, #0x310]
    // 0x6f7b40: StoreField: r2->field_13 = r16
    //     0x6f7b40: stur            w16, [x2, #0x13]
    // 0x6f7b44: ldur            x0, [fp, #-0x30]
    // 0x6f7b48: ArrayStore: r2[0] = r0  ; List_4
    //     0x6f7b48: stur            w0, [x2, #0x17]
    // 0x6f7b4c: r16 = Instance_SizedBox
    //     0x6f7b4c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6f7b50: ldr             x16, [x16, #0x220]
    // 0x6f7b54: StoreField: r2->field_1b = r16
    //     0x6f7b54: stur            w16, [x2, #0x1b]
    // 0x6f7b58: r1 = <Widget>
    //     0x6f7b58: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f7b5c: r0 = AllocateGrowableArray()
    //     0x6f7b5c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f7b60: mov             x1, x0
    // 0x6f7b64: ldur            x0, [fp, #-8]
    // 0x6f7b68: stur            x1, [fp, #-0x28]
    // 0x6f7b6c: StoreField: r1->field_f = r0
    //     0x6f7b6c: stur            w0, [x1, #0xf]
    // 0x6f7b70: r0 = 8
    //     0x6f7b70: mov             x0, #8
    // 0x6f7b74: StoreField: r1->field_b = r0
    //     0x6f7b74: stur            w0, [x1, #0xb]
    // 0x6f7b78: ldur            x0, [fp, #-0x20]
    // 0x6f7b7c: LoadField: r2 = r0->field_b
    //     0x6f7b7c: ldur            w2, [x0, #0xb]
    // 0x6f7b80: cbnz            w2, #0x6f7d10
    // 0x6f7b84: r0 = Radius()
    //     0x6f7b84: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6f7b88: d0 = 16.000000
    //     0x6f7b88: fmov            d0, #16.00000000
    // 0x6f7b8c: stur            x0, [fp, #-8]
    // 0x6f7b90: StoreField: r0->field_7 = d0
    //     0x6f7b90: stur            d0, [x0, #7]
    // 0x6f7b94: StoreField: r0->field_f = d0
    //     0x6f7b94: stur            d0, [x0, #0xf]
    // 0x6f7b98: r0 = BorderRadius()
    //     0x6f7b98: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6f7b9c: mov             x3, x0
    // 0x6f7ba0: ldur            x0, [fp, #-8]
    // 0x6f7ba4: stur            x3, [fp, #-0x30]
    // 0x6f7ba8: StoreField: r3->field_7 = r0
    //     0x6f7ba8: stur            w0, [x3, #7]
    // 0x6f7bac: StoreField: r3->field_b = r0
    //     0x6f7bac: stur            w0, [x3, #0xb]
    // 0x6f7bb0: StoreField: r3->field_f = r0
    //     0x6f7bb0: stur            w0, [x3, #0xf]
    // 0x6f7bb4: StoreField: r3->field_13 = r0
    //     0x6f7bb4: stur            w0, [x3, #0x13]
    // 0x6f7bb8: r1 = _ConstMap len:12
    //     0x6f7bb8: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6f7bbc: r2 = 400
    //     0x6f7bbc: mov             x2, #0x190
    // 0x6f7bc0: r0 = []()
    //     0x6f7bc0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6f7bc4: cmp             w0, NULL
    // 0x6f7bc8: b.eq            #0x6f7fb8
    // 0x6f7bcc: str             x0, [SP]
    // 0x6f7bd0: r1 = Null
    //     0x6f7bd0: mov             x1, NULL
    // 0x6f7bd4: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x6f7bd4: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x6f7bd8: ldr             x4, [x4, #0x788]
    // 0x6f7bdc: r0 = Border.all()
    //     0x6f7bdc: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x6f7be0: stur            x0, [fp, #-8]
    // 0x6f7be4: r0 = BoxDecoration()
    //     0x6f7be4: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6f7be8: mov             x3, x0
    // 0x6f7bec: r0 = Instance_Color
    //     0x6f7bec: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6f7bf0: stur            x3, [fp, #-0x38]
    // 0x6f7bf4: StoreField: r3->field_7 = r0
    //     0x6f7bf4: stur            w0, [x3, #7]
    // 0x6f7bf8: ldur            x1, [fp, #-8]
    // 0x6f7bfc: StoreField: r3->field_f = r1
    //     0x6f7bfc: stur            w1, [x3, #0xf]
    // 0x6f7c00: ldur            x1, [fp, #-0x30]
    // 0x6f7c04: StoreField: r3->field_13 = r1
    //     0x6f7c04: stur            w1, [x3, #0x13]
    // 0x6f7c08: r4 = Instance_BoxShape
    //     0x6f7c08: add             x4, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6f7c0c: ldr             x4, [x4, #0x1c8]
    // 0x6f7c10: StoreField: r3->field_23 = r4
    //     0x6f7c10: stur            w4, [x3, #0x23]
    // 0x6f7c14: r1 = _ConstMap len:12
    //     0x6f7c14: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6f7c18: r2 = 1200
    //     0x6f7c18: mov             x2, #0x4b0
    // 0x6f7c1c: r0 = []()
    //     0x6f7c1c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6f7c20: stur            x0, [fp, #-8]
    // 0x6f7c24: cmp             w0, NULL
    // 0x6f7c28: b.eq            #0x6f7fbc
    // 0x6f7c2c: r0 = TextStyle()
    //     0x6f7c2c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6f7c30: mov             x1, x0
    // 0x6f7c34: r0 = true
    //     0x6f7c34: add             x0, NULL, #0x20  ; true
    // 0x6f7c38: stur            x1, [fp, #-0x30]
    // 0x6f7c3c: StoreField: r1->field_7 = r0
    //     0x6f7c3c: stur            w0, [x1, #7]
    // 0x6f7c40: ldur            x2, [fp, #-8]
    // 0x6f7c44: StoreField: r1->field_b = r2
    //     0x6f7c44: stur            w2, [x1, #0xb]
    // 0x6f7c48: r0 = Text()
    //     0x6f7c48: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f7c4c: mov             x1, x0
    // 0x6f7c50: r0 = "Sonuç bulunamadı."
    //     0x6f7c50: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c140] "Sonuç bulunamadı."
    //     0x6f7c54: ldr             x0, [x0, #0x140]
    // 0x6f7c58: stur            x1, [fp, #-8]
    // 0x6f7c5c: StoreField: r1->field_b = r0
    //     0x6f7c5c: stur            w0, [x1, #0xb]
    // 0x6f7c60: ldur            x0, [fp, #-0x30]
    // 0x6f7c64: StoreField: r1->field_13 = r0
    //     0x6f7c64: stur            w0, [x1, #0x13]
    // 0x6f7c68: r0 = Container()
    //     0x6f7c68: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6f7c6c: stur            x0, [fp, #-0x30]
    // 0x6f7c70: r16 = Instance_EdgeInsets
    //     0x6f7c70: ldr             x16, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x6f7c74: ldur            lr, [fp, #-0x38]
    // 0x6f7c78: stp             lr, x16, [SP, #8]
    // 0x6f7c7c: ldur            x16, [fp, #-8]
    // 0x6f7c80: str             x16, [SP]
    // 0x6f7c84: mov             x1, x0
    // 0x6f7c88: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x6f7c88: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x6f7c8c: ldr             x4, [x4, #0x1e8]
    // 0x6f7c90: r0 = Container()
    //     0x6f7c90: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6f7c94: ldur            x0, [fp, #-0x28]
    // 0x6f7c98: LoadField: r1 = r0->field_b
    //     0x6f7c98: ldur            w1, [x0, #0xb]
    // 0x6f7c9c: LoadField: r2 = r0->field_f
    //     0x6f7c9c: ldur            w2, [x0, #0xf]
    // 0x6f7ca0: DecompressPointer r2
    //     0x6f7ca0: add             x2, x2, HEAP, lsl #32
    // 0x6f7ca4: LoadField: r3 = r2->field_b
    //     0x6f7ca4: ldur            w3, [x2, #0xb]
    // 0x6f7ca8: r2 = LoadInt32Instr(r1)
    //     0x6f7ca8: sbfx            x2, x1, #1, #0x1f
    // 0x6f7cac: stur            x2, [fp, #-0x50]
    // 0x6f7cb0: r1 = LoadInt32Instr(r3)
    //     0x6f7cb0: sbfx            x1, x3, #1, #0x1f
    // 0x6f7cb4: cmp             x2, x1
    // 0x6f7cb8: b.ne            #0x6f7cc4
    // 0x6f7cbc: mov             x1, x0
    // 0x6f7cc0: r0 = _growToNextCapacity()
    //     0x6f7cc0: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6f7cc4: ldur            x3, [fp, #-0x28]
    // 0x6f7cc8: ldur            x2, [fp, #-0x50]
    // 0x6f7ccc: add             x0, x2, #1
    // 0x6f7cd0: lsl             x1, x0, #1
    // 0x6f7cd4: StoreField: r3->field_b = r1
    //     0x6f7cd4: stur            w1, [x3, #0xb]
    // 0x6f7cd8: LoadField: r1 = r3->field_f
    //     0x6f7cd8: ldur            w1, [x3, #0xf]
    // 0x6f7cdc: DecompressPointer r1
    //     0x6f7cdc: add             x1, x1, HEAP, lsl #32
    // 0x6f7ce0: ldur            x0, [fp, #-0x30]
    // 0x6f7ce4: ArrayStore: r1[r2] = r0  ; List_4
    //     0x6f7ce4: add             x25, x1, x2, lsl #2
    //     0x6f7ce8: add             x25, x25, #0xf
    //     0x6f7cec: str             w0, [x25]
    //     0x6f7cf0: tbz             w0, #0, #0x6f7d0c
    //     0x6f7cf4: ldurb           w16, [x1, #-1]
    //     0x6f7cf8: ldurb           w17, [x0, #-1]
    //     0x6f7cfc: and             x16, x17, x16, lsr #2
    //     0x6f7d00: tst             x16, HEAP, lsr #32
    //     0x6f7d04: b.eq            #0x6f7d0c
    //     0x6f7d08: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f7d0c: b               #0x6f7d48
    // 0x6f7d10: mov             x3, x1
    // 0x6f7d14: ldur            x2, [fp, #-0x18]
    // 0x6f7d18: r1 = Function '<anonymous closure>':.
    //     0x6f7d18: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c148] AnonymousClosure: (0x6f7fe0), in [package:umrem_demo/features/admin/widgets/kisiler/users_tab.dart] _UsersTabState::build (0x6f7488)
    //     0x6f7d1c: ldr             x1, [x1, #0x148]
    // 0x6f7d20: r0 = AllocateClosure()
    //     0x6f7d20: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f7d24: r16 = <Widget>
    //     0x6f7d24: ldr             x16, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f7d28: ldur            lr, [fp, #-0x20]
    // 0x6f7d2c: stp             lr, x16, [SP, #8]
    // 0x6f7d30: str             x0, [SP]
    // 0x6f7d34: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6f7d34: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6f7d38: r0 = map()
    //     0x6f7d38: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x6f7d3c: ldur            x1, [fp, #-0x28]
    // 0x6f7d40: mov             x2, x0
    // 0x6f7d44: r0 = addAll()
    //     0x6f7d44: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x6f7d48: ldur            x2, [fp, #-0x10]
    // 0x6f7d4c: LoadField: r1 = r2->field_33
    //     0x6f7d4c: ldur            w1, [x2, #0x33]
    // 0x6f7d50: DecompressPointer r1
    //     0x6f7d50: add             x1, x1, HEAP, lsl #32
    // 0x6f7d54: r0 = LoadClassIdInstr(r1)
    //     0x6f7d54: ldur            x0, [x1, #-1]
    //     0x6f7d58: ubfx            x0, x0, #0xc, #0x14
    // 0x6f7d5c: r0 = GDT[cid_x0 + 0xcda7]()
    //     0x6f7d5c: mov             x17, #0xcda7
    //     0x6f7d60: add             lr, x0, x17
    //     0x6f7d64: ldr             lr, [x21, lr, lsl #3]
    //     0x6f7d68: blr             lr
    // 0x6f7d6c: tbnz            w0, #4, #0x6f7f00
    // 0x6f7d70: ldur            x1, [fp, #-0x28]
    // 0x6f7d74: r0 = Radius()
    //     0x6f7d74: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6f7d78: d0 = 16.000000
    //     0x6f7d78: fmov            d0, #16.00000000
    // 0x6f7d7c: stur            x0, [fp, #-8]
    // 0x6f7d80: StoreField: r0->field_7 = d0
    //     0x6f7d80: stur            d0, [x0, #7]
    // 0x6f7d84: StoreField: r0->field_f = d0
    //     0x6f7d84: stur            d0, [x0, #0xf]
    // 0x6f7d88: r0 = BorderRadius()
    //     0x6f7d88: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6f7d8c: mov             x3, x0
    // 0x6f7d90: ldur            x0, [fp, #-8]
    // 0x6f7d94: stur            x3, [fp, #-0x18]
    // 0x6f7d98: StoreField: r3->field_7 = r0
    //     0x6f7d98: stur            w0, [x3, #7]
    // 0x6f7d9c: StoreField: r3->field_b = r0
    //     0x6f7d9c: stur            w0, [x3, #0xb]
    // 0x6f7da0: StoreField: r3->field_f = r0
    //     0x6f7da0: stur            w0, [x3, #0xf]
    // 0x6f7da4: StoreField: r3->field_13 = r0
    //     0x6f7da4: stur            w0, [x3, #0x13]
    // 0x6f7da8: r1 = _ConstMap len:12
    //     0x6f7da8: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6f7dac: r2 = 400
    //     0x6f7dac: mov             x2, #0x190
    // 0x6f7db0: r0 = []()
    //     0x6f7db0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6f7db4: cmp             w0, NULL
    // 0x6f7db8: b.eq            #0x6f7fc0
    // 0x6f7dbc: str             x0, [SP]
    // 0x6f7dc0: r1 = Null
    //     0x6f7dc0: mov             x1, NULL
    // 0x6f7dc4: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x6f7dc4: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x6f7dc8: ldr             x4, [x4, #0x788]
    // 0x6f7dcc: r0 = Border.all()
    //     0x6f7dcc: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x6f7dd0: stur            x0, [fp, #-8]
    // 0x6f7dd4: r0 = BoxDecoration()
    //     0x6f7dd4: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6f7dd8: mov             x3, x0
    // 0x6f7ddc: r0 = Instance_Color
    //     0x6f7ddc: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6f7de0: stur            x3, [fp, #-0x20]
    // 0x6f7de4: StoreField: r3->field_7 = r0
    //     0x6f7de4: stur            w0, [x3, #7]
    // 0x6f7de8: ldur            x0, [fp, #-8]
    // 0x6f7dec: StoreField: r3->field_f = r0
    //     0x6f7dec: stur            w0, [x3, #0xf]
    // 0x6f7df0: ldur            x0, [fp, #-0x18]
    // 0x6f7df4: StoreField: r3->field_13 = r0
    //     0x6f7df4: stur            w0, [x3, #0x13]
    // 0x6f7df8: r0 = Instance_BoxShape
    //     0x6f7df8: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6f7dfc: ldr             x0, [x0, #0x1c8]
    // 0x6f7e00: StoreField: r3->field_23 = r0
    //     0x6f7e00: stur            w0, [x3, #0x23]
    // 0x6f7e04: r1 = _ConstMap len:12
    //     0x6f7e04: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6f7e08: r2 = 1200
    //     0x6f7e08: mov             x2, #0x4b0
    // 0x6f7e0c: r0 = []()
    //     0x6f7e0c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6f7e10: stur            x0, [fp, #-8]
    // 0x6f7e14: cmp             w0, NULL
    // 0x6f7e18: b.eq            #0x6f7fc4
    // 0x6f7e1c: r0 = TextStyle()
    //     0x6f7e1c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6f7e20: mov             x1, x0
    // 0x6f7e24: r0 = true
    //     0x6f7e24: add             x0, NULL, #0x20  ; true
    // 0x6f7e28: stur            x1, [fp, #-0x18]
    // 0x6f7e2c: StoreField: r1->field_7 = r0
    //     0x6f7e2c: stur            w0, [x1, #7]
    // 0x6f7e30: ldur            x0, [fp, #-8]
    // 0x6f7e34: StoreField: r1->field_b = r0
    //     0x6f7e34: stur            w0, [x1, #0xb]
    // 0x6f7e38: r0 = Text()
    //     0x6f7e38: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f7e3c: mov             x1, x0
    // 0x6f7e40: r0 = "Henüz kullanıcı bulunmuyor."
    //     0x6f7e40: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c150] "Henüz kullanıcı bulunmuyor."
    //     0x6f7e44: ldr             x0, [x0, #0x150]
    // 0x6f7e48: stur            x1, [fp, #-8]
    // 0x6f7e4c: StoreField: r1->field_b = r0
    //     0x6f7e4c: stur            w0, [x1, #0xb]
    // 0x6f7e50: ldur            x0, [fp, #-0x18]
    // 0x6f7e54: StoreField: r1->field_13 = r0
    //     0x6f7e54: stur            w0, [x1, #0x13]
    // 0x6f7e58: r0 = Container()
    //     0x6f7e58: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6f7e5c: stur            x0, [fp, #-0x18]
    // 0x6f7e60: r16 = Instance_EdgeInsets
    //     0x6f7e60: ldr             x16, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x6f7e64: ldur            lr, [fp, #-0x20]
    // 0x6f7e68: stp             lr, x16, [SP, #8]
    // 0x6f7e6c: ldur            x16, [fp, #-8]
    // 0x6f7e70: str             x16, [SP]
    // 0x6f7e74: mov             x1, x0
    // 0x6f7e78: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x6f7e78: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x6f7e7c: ldr             x4, [x4, #0x1e8]
    // 0x6f7e80: r0 = Container()
    //     0x6f7e80: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6f7e84: ldur            x0, [fp, #-0x28]
    // 0x6f7e88: LoadField: r1 = r0->field_b
    //     0x6f7e88: ldur            w1, [x0, #0xb]
    // 0x6f7e8c: LoadField: r2 = r0->field_f
    //     0x6f7e8c: ldur            w2, [x0, #0xf]
    // 0x6f7e90: DecompressPointer r2
    //     0x6f7e90: add             x2, x2, HEAP, lsl #32
    // 0x6f7e94: LoadField: r3 = r2->field_b
    //     0x6f7e94: ldur            w3, [x2, #0xb]
    // 0x6f7e98: r2 = LoadInt32Instr(r1)
    //     0x6f7e98: sbfx            x2, x1, #1, #0x1f
    // 0x6f7e9c: stur            x2, [fp, #-0x50]
    // 0x6f7ea0: r1 = LoadInt32Instr(r3)
    //     0x6f7ea0: sbfx            x1, x3, #1, #0x1f
    // 0x6f7ea4: cmp             x2, x1
    // 0x6f7ea8: b.ne            #0x6f7eb4
    // 0x6f7eac: mov             x1, x0
    // 0x6f7eb0: r0 = _growToNextCapacity()
    //     0x6f7eb0: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6f7eb4: ldur            x2, [fp, #-0x28]
    // 0x6f7eb8: ldur            x3, [fp, #-0x50]
    // 0x6f7ebc: add             x0, x3, #1
    // 0x6f7ec0: lsl             x1, x0, #1
    // 0x6f7ec4: StoreField: r2->field_b = r1
    //     0x6f7ec4: stur            w1, [x2, #0xb]
    // 0x6f7ec8: LoadField: r1 = r2->field_f
    //     0x6f7ec8: ldur            w1, [x2, #0xf]
    // 0x6f7ecc: DecompressPointer r1
    //     0x6f7ecc: add             x1, x1, HEAP, lsl #32
    // 0x6f7ed0: ldur            x0, [fp, #-0x18]
    // 0x6f7ed4: ArrayStore: r1[r3] = r0  ; List_4
    //     0x6f7ed4: add             x25, x1, x3, lsl #2
    //     0x6f7ed8: add             x25, x25, #0xf
    //     0x6f7edc: str             w0, [x25]
    //     0x6f7ee0: tbz             w0, #0, #0x6f7efc
    //     0x6f7ee4: ldurb           w16, [x1, #-1]
    //     0x6f7ee8: ldurb           w17, [x0, #-1]
    //     0x6f7eec: and             x16, x17, x16, lsr #2
    //     0x6f7ef0: tst             x16, HEAP, lsr #32
    //     0x6f7ef4: b.eq            #0x6f7efc
    //     0x6f7ef8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f7efc: b               #0x6f7f04
    // 0x6f7f00: ldur            x2, [fp, #-0x28]
    // 0x6f7f04: r0 = ListView()
    //     0x6f7f04: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x6f7f08: mov             x1, x0
    // 0x6f7f0c: ldur            x2, [fp, #-0x28]
    // 0x6f7f10: r3 = Instance_EdgeInsets
    //     0x6f7f10: add             x3, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x6f7f14: ldr             x3, [x3, #0x240]
    // 0x6f7f18: stur            x0, [fp, #-8]
    // 0x6f7f1c: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x6f7f1c: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x6f7f20: r0 = ListView()
    //     0x6f7f20: bl              #0x67cae0  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView
    // 0x6f7f24: r0 = RefreshIndicator()
    //     0x6f7f24: bl              #0x6f7fc8  ; AllocateRefreshIndicatorStub -> RefreshIndicator (size=0x54)
    // 0x6f7f28: mov             x3, x0
    // 0x6f7f2c: ldur            x0, [fp, #-8]
    // 0x6f7f30: stur            x3, [fp, #-0x18]
    // 0x6f7f34: StoreField: r3->field_b = r0
    //     0x6f7f34: stur            w0, [x3, #0xb]
    // 0x6f7f38: d0 = 40.000000
    //     0x6f7f38: ldr             d0, [PP, #0x5d20]  ; [pp+0x5d20] IMM: double(40) from 0x4044000000000000
    // 0x6f7f3c: StoreField: r3->field_f = d0
    //     0x6f7f3c: stur            d0, [x3, #0xf]
    // 0x6f7f40: ArrayStore: r3[0] = rZR  ; List_8
    //     0x6f7f40: stur            xzr, [x3, #0x17]
    // 0x6f7f44: ldur            x2, [fp, #-0x10]
    // 0x6f7f48: r1 = Function 'loadInitial':.
    //     0x6f7f48: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c158] AnonymousClosure: (0x5d2f1c), in [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::loadInitial (0x5d2a74)
    //     0x6f7f4c: ldr             x1, [x1, #0x158]
    // 0x6f7f50: r0 = AllocateClosure()
    //     0x6f7f50: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f7f54: mov             x1, x0
    // 0x6f7f58: ldur            x0, [fp, #-0x18]
    // 0x6f7f5c: StoreField: r0->field_1f = r1
    //     0x6f7f5c: stur            w1, [x0, #0x1f]
    // 0x6f7f60: r1 = Closure: (ScrollNotification) => bool from Function 'defaultScrollNotificationPredicate': static.
    //     0x6f7f60: add             x1, PP, #0x12, lsl #12  ; [pp+0x12398] Closure: (ScrollNotification) => bool from Function 'defaultScrollNotificationPredicate': static. (0x7f22905f7644)
    //     0x6f7f64: ldr             x1, [x1, #0x398]
    // 0x6f7f68: StoreField: r0->field_2f = r1
    //     0x6f7f68: stur            w1, [x0, #0x2f]
    // 0x6f7f6c: d0 = 2.500000
    //     0x6f7f6c: fmov            d0, #2.50000000
    // 0x6f7f70: StoreField: r0->field_3b = d0
    //     0x6f7f70: stur            d0, [x0, #0x3b]
    // 0x6f7f74: r1 = Instance_RefreshIndicatorTriggerMode
    //     0x6f7f74: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c160] Obj!RefreshIndicatorTriggerMode@a2b471
    //     0x6f7f78: ldr             x1, [x1, #0x160]
    // 0x6f7f7c: StoreField: r0->field_47 = r1
    //     0x6f7f7c: stur            w1, [x0, #0x47]
    // 0x6f7f80: d0 = 2.000000
    //     0x6f7f80: fmov            d0, #2.00000000
    // 0x6f7f84: StoreField: r0->field_4b = d0
    //     0x6f7f84: stur            d0, [x0, #0x4b]
    // 0x6f7f88: r1 = Instance__IndicatorType
    //     0x6f7f88: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c168] Obj!_IndicatorType@a2b451
    //     0x6f7f8c: ldr             x1, [x1, #0x168]
    // 0x6f7f90: StoreField: r0->field_43 = r1
    //     0x6f7f90: stur            w1, [x0, #0x43]
    // 0x6f7f94: LeaveFrame
    //     0x6f7f94: mov             SP, fp
    //     0x6f7f98: ldp             fp, lr, [SP], #0x10
    // 0x6f7f9c: ret
    //     0x6f7f9c: ret             
    // 0x6f7fa0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f7fa0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f7fa4: b               #0x6f7548
    // 0x6f7fa8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f7fa8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f7fac: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f7fac: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f7fb0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f7fb0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f7fb4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f7fb4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f7fb8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f7fb8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f7fbc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f7fbc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f7fc0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f7fc0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f7fc4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f7fc4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Card <anonymous closure>(dynamic, UserModel) {
    // ** addr: 0x6f7fe0, size: 0x2d8
    // 0x6f7fe0: EnterFrame
    //     0x6f7fe0: stp             fp, lr, [SP, #-0x10]!
    //     0x6f7fe4: mov             fp, SP
    // 0x6f7fe8: AllocStack(0x38)
    //     0x6f7fe8: sub             SP, SP, #0x38
    // 0x6f7fec: SetupParameters([dynamic _ /* r0 */])
    //     0x6f7fec: ldr             x0, [fp, #0x18]
    //     0x6f7ff0: ldur            w1, [x0, #0x17]
    //     0x6f7ff4: add             x1, x1, HEAP, lsl #32
    //     0x6f7ff8: stur            x1, [fp, #-8]
    // 0x6f7ffc: CheckStackOverflow
    //     0x6f7ffc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f8000: cmp             SP, x16
    //     0x6f8004: b.ls            #0x6f82a4
    // 0x6f8008: r1 = 1
    //     0x6f8008: mov             x1, #1
    // 0x6f800c: r0 = AllocateContext()
    //     0x6f800c: bl              #0x927010  ; AllocateContextStub
    // 0x6f8010: mov             x1, x0
    // 0x6f8014: ldur            x0, [fp, #-8]
    // 0x6f8018: stur            x1, [fp, #-0x10]
    // 0x6f801c: StoreField: r1->field_b = r0
    //     0x6f801c: stur            w0, [x1, #0xb]
    // 0x6f8020: ldr             x2, [fp, #0x10]
    // 0x6f8024: StoreField: r1->field_f = r2
    //     0x6f8024: stur            w2, [x1, #0xf]
    // 0x6f8028: r0 = Radius()
    //     0x6f8028: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6f802c: d0 = 12.000000
    //     0x6f802c: fmov            d0, #12.00000000
    // 0x6f8030: stur            x0, [fp, #-0x18]
    // 0x6f8034: StoreField: r0->field_7 = d0
    //     0x6f8034: stur            d0, [x0, #7]
    // 0x6f8038: StoreField: r0->field_f = d0
    //     0x6f8038: stur            d0, [x0, #0xf]
    // 0x6f803c: r0 = BorderRadius()
    //     0x6f803c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6f8040: mov             x3, x0
    // 0x6f8044: ldur            x0, [fp, #-0x18]
    // 0x6f8048: stur            x3, [fp, #-0x20]
    // 0x6f804c: StoreField: r3->field_7 = r0
    //     0x6f804c: stur            w0, [x3, #7]
    // 0x6f8050: StoreField: r3->field_b = r0
    //     0x6f8050: stur            w0, [x3, #0xb]
    // 0x6f8054: StoreField: r3->field_f = r0
    //     0x6f8054: stur            w0, [x3, #0xf]
    // 0x6f8058: StoreField: r3->field_13 = r0
    //     0x6f8058: stur            w0, [x3, #0x13]
    // 0x6f805c: r1 = _ConstMap len:12
    //     0x6f805c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6f8060: r2 = 400
    //     0x6f8060: mov             x2, #0x190
    // 0x6f8064: r0 = []()
    //     0x6f8064: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6f8068: stur            x0, [fp, #-0x18]
    // 0x6f806c: cmp             w0, NULL
    // 0x6f8070: b.eq            #0x6f82ac
    // 0x6f8074: r0 = BorderSide()
    //     0x6f8074: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x6f8078: mov             x1, x0
    // 0x6f807c: ldur            x0, [fp, #-0x18]
    // 0x6f8080: stur            x1, [fp, #-0x28]
    // 0x6f8084: StoreField: r1->field_7 = r0
    //     0x6f8084: stur            w0, [x1, #7]
    // 0x6f8088: d0 = 1.000000
    //     0x6f8088: fmov            d0, #1.00000000
    // 0x6f808c: StoreField: r1->field_b = d0
    //     0x6f808c: stur            d0, [x1, #0xb]
    // 0x6f8090: r0 = Instance_BorderStyle
    //     0x6f8090: add             x0, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x6f8094: ldr             x0, [x0, #0x738]
    // 0x6f8098: StoreField: r1->field_13 = r0
    //     0x6f8098: stur            w0, [x1, #0x13]
    // 0x6f809c: d0 = -1.000000
    //     0x6f809c: fmov            d0, #-1.00000000
    // 0x6f80a0: ArrayStore: r1[0] = d0  ; List_8
    //     0x6f80a0: stur            d0, [x1, #0x17]
    // 0x6f80a4: r0 = RoundedRectangleBorder()
    //     0x6f80a4: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x6f80a8: mov             x2, x0
    // 0x6f80ac: ldur            x0, [fp, #-0x20]
    // 0x6f80b0: stur            x2, [fp, #-0x30]
    // 0x6f80b4: StoreField: r2->field_b = r0
    //     0x6f80b4: stur            w0, [x2, #0xb]
    // 0x6f80b8: ldur            x0, [fp, #-0x28]
    // 0x6f80bc: StoreField: r2->field_7 = r0
    //     0x6f80bc: stur            w0, [x2, #7]
    // 0x6f80c0: ldur            x0, [fp, #-8]
    // 0x6f80c4: LoadField: r3 = r0->field_b
    //     0x6f80c4: ldur            w3, [x0, #0xb]
    // 0x6f80c8: DecompressPointer r3
    //     0x6f80c8: add             x3, x3, HEAP, lsl #32
    // 0x6f80cc: stur            x3, [fp, #-0x18]
    // 0x6f80d0: LoadField: r0 = r3->field_f
    //     0x6f80d0: ldur            w0, [x3, #0xf]
    // 0x6f80d4: DecompressPointer r0
    //     0x6f80d4: add             x0, x0, HEAP, lsl #32
    // 0x6f80d8: LoadField: r1 = r0->field_b
    //     0x6f80d8: ldur            w1, [x0, #0xb]
    // 0x6f80dc: DecompressPointer r1
    //     0x6f80dc: add             x1, x1, HEAP, lsl #32
    // 0x6f80e0: cmp             w1, NULL
    // 0x6f80e4: b.eq            #0x6f82b0
    // 0x6f80e8: r16 = 0.150000
    //     0x6f80e8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e38] 0.15
    //     0x6f80ec: ldr             x16, [x16, #0xe38]
    // 0x6f80f0: str             x16, [SP]
    // 0x6f80f4: r1 = Instance_MaterialColor
    //     0x6f80f4: add             x1, PP, #0x12, lsl #12  ; [pp+0x125d8] Obj!MaterialColor@a25ce1
    //     0x6f80f8: ldr             x1, [x1, #0x5d8]
    // 0x6f80fc: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6f80fc: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6f8100: ldr             x4, [x4, #0x198]
    // 0x6f8104: r0 = withValues()
    //     0x6f8104: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6f8108: mov             x1, x0
    // 0x6f810c: ldur            x0, [fp, #-0x18]
    // 0x6f8110: stur            x1, [fp, #-8]
    // 0x6f8114: LoadField: r2 = r0->field_f
    //     0x6f8114: ldur            w2, [x0, #0xf]
    // 0x6f8118: DecompressPointer r2
    //     0x6f8118: add             x2, x2, HEAP, lsl #32
    // 0x6f811c: LoadField: r0 = r2->field_b
    //     0x6f811c: ldur            w0, [x2, #0xb]
    // 0x6f8120: DecompressPointer r0
    //     0x6f8120: add             x0, x0, HEAP, lsl #32
    // 0x6f8124: cmp             w0, NULL
    // 0x6f8128: b.eq            #0x6f82b4
    // 0x6f812c: r0 = Icon()
    //     0x6f812c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x6f8130: mov             x1, x0
    // 0x6f8134: r0 = Instance_IconData
    //     0x6f8134: add             x0, PP, #0x19, lsl #12  ; [pp+0x194f8] Obj!IconData@a09d61
    //     0x6f8138: ldr             x0, [x0, #0x4f8]
    // 0x6f813c: stur            x1, [fp, #-0x18]
    // 0x6f8140: StoreField: r1->field_b = r0
    //     0x6f8140: stur            w0, [x1, #0xb]
    // 0x6f8144: r0 = Instance_MaterialColor
    //     0x6f8144: add             x0, PP, #0x12, lsl #12  ; [pp+0x125d8] Obj!MaterialColor@a25ce1
    //     0x6f8148: ldr             x0, [x0, #0x5d8]
    // 0x6f814c: StoreField: r1->field_23 = r0
    //     0x6f814c: stur            w0, [x1, #0x23]
    // 0x6f8150: r0 = CircleAvatar()
    //     0x6f8150: bl              #0x6e4350  ; AllocateCircleAvatarStub -> CircleAvatar (size=0x2c)
    // 0x6f8154: mov             x1, x0
    // 0x6f8158: ldur            x0, [fp, #-0x18]
    // 0x6f815c: stur            x1, [fp, #-0x20]
    // 0x6f8160: StoreField: r1->field_b = r0
    //     0x6f8160: stur            w0, [x1, #0xb]
    // 0x6f8164: ldur            x0, [fp, #-8]
    // 0x6f8168: StoreField: r1->field_f = r0
    //     0x6f8168: stur            w0, [x1, #0xf]
    // 0x6f816c: ldr             x0, [fp, #0x10]
    // 0x6f8170: LoadField: r2 = r0->field_b
    //     0x6f8170: ldur            w2, [x0, #0xb]
    // 0x6f8174: DecompressPointer r2
    //     0x6f8174: add             x2, x2, HEAP, lsl #32
    // 0x6f8178: LoadField: r3 = r2->field_7
    //     0x6f8178: ldur            w3, [x2, #7]
    // 0x6f817c: cbnz            w3, #0x6f818c
    // 0x6f8180: r3 = "İsimsiz"
    //     0x6f8180: add             x3, PP, #0x19, lsl #12  ; [pp+0x19450] "İsimsiz"
    //     0x6f8184: ldr             x3, [x3, #0x450]
    // 0x6f8188: b               #0x6f8190
    // 0x6f818c: mov             x3, x2
    // 0x6f8190: ldur            x2, [fp, #-0x30]
    // 0x6f8194: stur            x3, [fp, #-8]
    // 0x6f8198: r0 = Text()
    //     0x6f8198: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f819c: mov             x3, x0
    // 0x6f81a0: ldur            x0, [fp, #-8]
    // 0x6f81a4: stur            x3, [fp, #-0x18]
    // 0x6f81a8: StoreField: r3->field_b = r0
    //     0x6f81a8: stur            w0, [x3, #0xb]
    // 0x6f81ac: r1 = Null
    //     0x6f81ac: mov             x1, NULL
    // 0x6f81b0: r2 = 4
    //     0x6f81b0: mov             x2, #4
    // 0x6f81b4: r0 = AllocateArray()
    //     0x6f81b4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f81b8: r16 = "TC: "
    //     0x6f81b8: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c170] "TC: "
    //     0x6f81bc: ldr             x16, [x16, #0x170]
    // 0x6f81c0: StoreField: r0->field_f = r16
    //     0x6f81c0: stur            w16, [x0, #0xf]
    // 0x6f81c4: ldr             x1, [fp, #0x10]
    // 0x6f81c8: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6f81c8: ldur            w2, [x1, #0x17]
    // 0x6f81cc: DecompressPointer r2
    //     0x6f81cc: add             x2, x2, HEAP, lsl #32
    // 0x6f81d0: StoreField: r0->field_13 = r2
    //     0x6f81d0: stur            w2, [x0, #0x13]
    // 0x6f81d4: str             x0, [SP]
    // 0x6f81d8: r0 = _interpolate()
    //     0x6f81d8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6f81dc: stur            x0, [fp, #-8]
    // 0x6f81e0: r0 = Text()
    //     0x6f81e0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f81e4: mov             x1, x0
    // 0x6f81e8: ldur            x0, [fp, #-8]
    // 0x6f81ec: stur            x1, [fp, #-0x28]
    // 0x6f81f0: StoreField: r1->field_b = r0
    //     0x6f81f0: stur            w0, [x1, #0xb]
    // 0x6f81f4: r0 = ListTile()
    //     0x6f81f4: bl              #0x680240  ; AllocateListTileStub -> ListTile (size=0x9c)
    // 0x6f81f8: mov             x3, x0
    // 0x6f81fc: ldur            x0, [fp, #-0x20]
    // 0x6f8200: stur            x3, [fp, #-8]
    // 0x6f8204: StoreField: r3->field_b = r0
    //     0x6f8204: stur            w0, [x3, #0xb]
    // 0x6f8208: ldur            x0, [fp, #-0x18]
    // 0x6f820c: StoreField: r3->field_f = r0
    //     0x6f820c: stur            w0, [x3, #0xf]
    // 0x6f8210: ldur            x0, [fp, #-0x28]
    // 0x6f8214: StoreField: r3->field_13 = r0
    //     0x6f8214: stur            w0, [x3, #0x13]
    // 0x6f8218: r0 = Instance_Icon
    //     0x6f8218: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c178] Obj!Icon@a1e6f1
    //     0x6f821c: ldr             x0, [x0, #0x178]
    // 0x6f8220: ArrayStore: r3[0] = r0  ; List_4
    //     0x6f8220: stur            w0, [x3, #0x17]
    // 0x6f8224: r0 = true
    //     0x6f8224: add             x0, NULL, #0x20  ; true
    // 0x6f8228: StoreField: r3->field_4b = r0
    //     0x6f8228: stur            w0, [x3, #0x4b]
    // 0x6f822c: ldur            x2, [fp, #-0x10]
    // 0x6f8230: r1 = Function '<anonymous closure>':.
    //     0x6f8230: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c180] AnonymousClosure: (0x6f82b8), in [package:umrem_demo/features/admin/widgets/kisiler/users_tab.dart] _UsersTabState::build (0x6f7488)
    //     0x6f8234: ldr             x1, [x1, #0x180]
    // 0x6f8238: r0 = AllocateClosure()
    //     0x6f8238: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f823c: mov             x1, x0
    // 0x6f8240: ldur            x0, [fp, #-8]
    // 0x6f8244: StoreField: r0->field_4f = r1
    //     0x6f8244: stur            w1, [x0, #0x4f]
    // 0x6f8248: r1 = false
    //     0x6f8248: add             x1, NULL, #0x30  ; false
    // 0x6f824c: StoreField: r0->field_5f = r1
    //     0x6f824c: stur            w1, [x0, #0x5f]
    // 0x6f8250: StoreField: r0->field_73 = r1
    //     0x6f8250: stur            w1, [x0, #0x73]
    // 0x6f8254: r1 = true
    //     0x6f8254: add             x1, NULL, #0x20  ; true
    // 0x6f8258: StoreField: r0->field_93 = r1
    //     0x6f8258: stur            w1, [x0, #0x93]
    // 0x6f825c: r0 = Card()
    //     0x6f825c: bl              #0x6d9f90  ; AllocateCardStub -> Card (size=0x3c)
    // 0x6f8260: ArrayStore: r0[0] = rZR  ; List_8
    //     0x6f8260: stur            xzr, [x0, #0x17]
    // 0x6f8264: ldur            x1, [fp, #-0x30]
    // 0x6f8268: StoreField: r0->field_1f = r1
    //     0x6f8268: stur            w1, [x0, #0x1f]
    // 0x6f826c: r1 = true
    //     0x6f826c: add             x1, NULL, #0x20  ; true
    // 0x6f8270: StoreField: r0->field_23 = r1
    //     0x6f8270: stur            w1, [x0, #0x23]
    // 0x6f8274: r2 = Instance_EdgeInsets
    //     0x6f8274: add             x2, PP, #0x18, lsl #12  ; [pp+0x18d40] Obj!EdgeInsets@a0c2f1
    //     0x6f8278: ldr             x2, [x2, #0xd40]
    // 0x6f827c: StoreField: r0->field_2b = r2
    //     0x6f827c: stur            w2, [x0, #0x2b]
    // 0x6f8280: ldur            x2, [fp, #-8]
    // 0x6f8284: StoreField: r0->field_33 = r2
    //     0x6f8284: stur            w2, [x0, #0x33]
    // 0x6f8288: StoreField: r0->field_2f = r1
    //     0x6f8288: stur            w1, [x0, #0x2f]
    // 0x6f828c: r1 = Instance__CardVariant
    //     0x6f828c: add             x1, PP, #0x18, lsl #12  ; [pp+0x18d38] Obj!_CardVariant@a2bcd1
    //     0x6f8290: ldr             x1, [x1, #0xd38]
    // 0x6f8294: StoreField: r0->field_37 = r1
    //     0x6f8294: stur            w1, [x0, #0x37]
    // 0x6f8298: LeaveFrame
    //     0x6f8298: mov             SP, fp
    //     0x6f829c: ldp             fp, lr, [SP], #0x10
    // 0x6f82a0: ret
    //     0x6f82a0: ret             
    // 0x6f82a4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f82a4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f82a8: b               #0x6f8008
    // 0x6f82ac: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f82ac: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f82b0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f82b0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f82b4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f82b4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6f82b8, size: 0xd4
    // 0x6f82b8: EnterFrame
    //     0x6f82b8: stp             fp, lr, [SP, #-0x10]!
    //     0x6f82bc: mov             fp, SP
    // 0x6f82c0: AllocStack(0x38)
    //     0x6f82c0: sub             SP, SP, #0x38
    // 0x6f82c4: SetupParameters([dynamic _ /* r0 */])
    //     0x6f82c4: ldr             x0, [fp, #0x10]
    //     0x6f82c8: ldur            w2, [x0, #0x17]
    //     0x6f82cc: add             x2, x2, HEAP, lsl #32
    //     0x6f82d0: stur            x2, [fp, #-0x10]
    // 0x6f82d4: CheckStackOverflow
    //     0x6f82d4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f82d8: cmp             SP, x16
    //     0x6f82dc: b.ls            #0x6f8384
    // 0x6f82e0: LoadField: r0 = r2->field_b
    //     0x6f82e0: ldur            w0, [x2, #0xb]
    // 0x6f82e4: DecompressPointer r0
    //     0x6f82e4: add             x0, x0, HEAP, lsl #32
    // 0x6f82e8: stur            x0, [fp, #-8]
    // 0x6f82ec: LoadField: r1 = r0->field_f
    //     0x6f82ec: ldur            w1, [x0, #0xf]
    // 0x6f82f0: DecompressPointer r1
    //     0x6f82f0: add             x1, x1, HEAP, lsl #32
    // 0x6f82f4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6f82f4: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6f82f8: r0 = of()
    //     0x6f82f8: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x6f82fc: r1 = Null
    //     0x6f82fc: mov             x1, NULL
    // 0x6f8300: r2 = 8
    //     0x6f8300: mov             x2, #8
    // 0x6f8304: stur            x0, [fp, #-0x18]
    // 0x6f8308: r0 = AllocateArray()
    //     0x6f8308: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f830c: r16 = "user"
    //     0x6f830c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12600] "user"
    //     0x6f8310: ldr             x16, [x16, #0x600]
    // 0x6f8314: StoreField: r0->field_f = r16
    //     0x6f8314: stur            w16, [x0, #0xf]
    // 0x6f8318: ldur            x1, [fp, #-0x10]
    // 0x6f831c: LoadField: r2 = r1->field_f
    //     0x6f831c: ldur            w2, [x1, #0xf]
    // 0x6f8320: DecompressPointer r2
    //     0x6f8320: add             x2, x2, HEAP, lsl #32
    // 0x6f8324: StoreField: r0->field_13 = r2
    //     0x6f8324: stur            w2, [x0, #0x13]
    // 0x6f8328: r16 = "admin"
    //     0x6f8328: add             x16, PP, #0x12, lsl #12  ; [pp+0x12620] "admin"
    //     0x6f832c: ldr             x16, [x16, #0x620]
    // 0x6f8330: ArrayStore: r0[0] = r16  ; List_4
    //     0x6f8330: stur            w16, [x0, #0x17]
    // 0x6f8334: ldur            x1, [fp, #-8]
    // 0x6f8338: LoadField: r2 = r1->field_13
    //     0x6f8338: ldur            w2, [x1, #0x13]
    // 0x6f833c: DecompressPointer r2
    //     0x6f833c: add             x2, x2, HEAP, lsl #32
    // 0x6f8340: StoreField: r0->field_1b = r2
    //     0x6f8340: stur            w2, [x0, #0x1b]
    // 0x6f8344: r16 = <String, Object>
    //     0x6f8344: ldr             x16, [PP, #0x120]  ; [pp+0x120] TypeArguments: <String, Object>
    // 0x6f8348: stp             x0, x16, [SP]
    // 0x6f834c: r0 = Map._fromLiteral()
    //     0x6f834c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6f8350: r16 = <Object?>
    //     0x6f8350: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6f8354: ldur            lr, [fp, #-0x18]
    // 0x6f8358: stp             lr, x16, [SP, #0x10]
    // 0x6f835c: r16 = "/admin/users/detail"
    //     0x6f835c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11d10] "/admin/users/detail"
    //     0x6f8360: ldr             x16, [x16, #0xd10]
    // 0x6f8364: stp             x0, x16, [SP]
    // 0x6f8368: r4 = const [0x1, 0x3, 0x3, 0x2, arguments, 0x2, null]
    //     0x6f8368: add             x4, PP, #0x15, lsl #12  ; [pp+0x15d90] List(7) [0x1, 0x3, 0x3, 0x2, "arguments", 0x2, Null]
    //     0x6f836c: ldr             x4, [x4, #0xd90]
    // 0x6f8370: r0 = pushNamed()
    //     0x6f8370: bl              #0x43a280  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pushNamed
    // 0x6f8374: r0 = Null
    //     0x6f8374: mov             x0, NULL
    // 0x6f8378: LeaveFrame
    //     0x6f8378: mov             SP, fp
    //     0x6f837c: ldp             fp, lr, [SP], #0x10
    // 0x6f8380: ret
    //     0x6f8380: ret             
    // 0x6f8384: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f8384: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f8388: b               #0x6f82e0
  }
  [closure] void <anonymous closure>(dynamic, String) {
    // ** addr: 0x6f838c, size: 0x6c
    // 0x6f838c: EnterFrame
    //     0x6f838c: stp             fp, lr, [SP, #-0x10]!
    //     0x6f8390: mov             fp, SP
    // 0x6f8394: AllocStack(0x8)
    //     0x6f8394: sub             SP, SP, #8
    // 0x6f8398: SetupParameters([dynamic _ /* r0 */])
    //     0x6f8398: ldr             x0, [fp, #0x18]
    //     0x6f839c: ldur            w1, [x0, #0x17]
    //     0x6f83a0: add             x1, x1, HEAP, lsl #32
    // 0x6f83a4: CheckStackOverflow
    //     0x6f83a4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f83a8: cmp             SP, x16
    //     0x6f83ac: b.ls            #0x6f83f0
    // 0x6f83b0: LoadField: r0 = r1->field_b
    //     0x6f83b0: ldur            w0, [x1, #0xb]
    // 0x6f83b4: DecompressPointer r0
    //     0x6f83b4: add             x0, x0, HEAP, lsl #32
    // 0x6f83b8: LoadField: r3 = r0->field_f
    //     0x6f83b8: ldur            w3, [x0, #0xf]
    // 0x6f83bc: DecompressPointer r3
    //     0x6f83bc: add             x3, x3, HEAP, lsl #32
    // 0x6f83c0: stur            x3, [fp, #-8]
    // 0x6f83c4: r1 = Function '<anonymous closure>':.
    //     0x6f83c4: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c188] Function: [dart:ui] _NativeScene::_NativeScene._ (0x921cc4)
    //     0x6f83c8: ldr             x1, [x1, #0x188]
    // 0x6f83cc: r2 = Null
    //     0x6f83cc: mov             x2, NULL
    // 0x6f83d0: r0 = AllocateClosure()
    //     0x6f83d0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f83d4: ldur            x1, [fp, #-8]
    // 0x6f83d8: mov             x2, x0
    // 0x6f83dc: r0 = setState()
    //     0x6f83dc: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6f83e0: r0 = Null
    //     0x6f83e0: mov             x0, NULL
    // 0x6f83e4: LeaveFrame
    //     0x6f83e4: mov             SP, fp
    //     0x6f83e8: ldp             fp, lr, [SP], #0x10
    // 0x6f83ec: ret
    //     0x6f83ec: ret             
    // 0x6f83f0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f83f0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f83f4: b               #0x6f83b0
  }
  [closure] bool <anonymous closure>(dynamic, UserModel) {
    // ** addr: 0x6f83f8, size: 0x104
    // 0x6f83f8: EnterFrame
    //     0x6f83f8: stp             fp, lr, [SP, #-0x10]!
    //     0x6f83fc: mov             fp, SP
    // 0x6f8400: AllocStack(0x10)
    //     0x6f8400: sub             SP, SP, #0x10
    // 0x6f8404: SetupParameters([dynamic _ /* r0 */])
    //     0x6f8404: ldr             x0, [fp, #0x18]
    //     0x6f8408: ldur            w1, [x0, #0x17]
    //     0x6f840c: add             x1, x1, HEAP, lsl #32
    // 0x6f8410: CheckStackOverflow
    //     0x6f8410: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f8414: cmp             SP, x16
    //     0x6f8418: b.ls            #0x6f84f4
    // 0x6f841c: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6f841c: ldur            w2, [x1, #0x17]
    // 0x6f8420: DecompressPointer r2
    //     0x6f8420: add             x2, x2, HEAP, lsl #32
    // 0x6f8424: stur            x2, [fp, #-8]
    // 0x6f8428: LoadField: r0 = r2->field_7
    //     0x6f8428: ldur            w0, [x2, #7]
    // 0x6f842c: cbnz            w0, #0x6f8440
    // 0x6f8430: r0 = true
    //     0x6f8430: add             x0, NULL, #0x20  ; true
    // 0x6f8434: LeaveFrame
    //     0x6f8434: mov             SP, fp
    //     0x6f8438: ldp             fp, lr, [SP], #0x10
    // 0x6f843c: ret
    //     0x6f843c: ret             
    // 0x6f8440: ldr             x1, [fp, #0x10]
    // 0x6f8444: LoadField: r0 = r1->field_b
    //     0x6f8444: ldur            w0, [x1, #0xb]
    // 0x6f8448: DecompressPointer r0
    //     0x6f8448: add             x0, x0, HEAP, lsl #32
    // 0x6f844c: r3 = LoadClassIdInstr(r0)
    //     0x6f844c: ldur            x3, [x0, #-1]
    //     0x6f8450: ubfx            x3, x3, #0xc, #0x14
    // 0x6f8454: str             x0, [SP]
    // 0x6f8458: mov             x0, x3
    // 0x6f845c: r0 = GDT[cid_x0 + -0xffe]()
    //     0x6f845c: sub             lr, x0, #0xffe
    //     0x6f8460: ldr             lr, [x21, lr, lsl #3]
    //     0x6f8464: blr             lr
    // 0x6f8468: r1 = LoadClassIdInstr(r0)
    //     0x6f8468: ldur            x1, [x0, #-1]
    //     0x6f846c: ubfx            x1, x1, #0xc, #0x14
    // 0x6f8470: mov             x16, x0
    // 0x6f8474: mov             x0, x1
    // 0x6f8478: mov             x1, x16
    // 0x6f847c: ldur            x2, [fp, #-8]
    // 0x6f8480: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6f8480: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6f8484: r0 = GDT[cid_x0 + -0xff8]()
    //     0x6f8484: sub             lr, x0, #0xff8
    //     0x6f8488: ldr             lr, [x21, lr, lsl #3]
    //     0x6f848c: blr             lr
    // 0x6f8490: tbnz            w0, #4, #0x6f849c
    // 0x6f8494: r0 = true
    //     0x6f8494: add             x0, NULL, #0x20  ; true
    // 0x6f8498: b               #0x6f84e8
    // 0x6f849c: ldr             x0, [fp, #0x10]
    // 0x6f84a0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6f84a0: ldur            w1, [x0, #0x17]
    // 0x6f84a4: DecompressPointer r1
    //     0x6f84a4: add             x1, x1, HEAP, lsl #32
    // 0x6f84a8: r0 = LoadClassIdInstr(r1)
    //     0x6f84a8: ldur            x0, [x1, #-1]
    //     0x6f84ac: ubfx            x0, x0, #0xc, #0x14
    // 0x6f84b0: str             x1, [SP]
    // 0x6f84b4: r0 = GDT[cid_x0 + -0xffe]()
    //     0x6f84b4: sub             lr, x0, #0xffe
    //     0x6f84b8: ldr             lr, [x21, lr, lsl #3]
    //     0x6f84bc: blr             lr
    // 0x6f84c0: r1 = LoadClassIdInstr(r0)
    //     0x6f84c0: ldur            x1, [x0, #-1]
    //     0x6f84c4: ubfx            x1, x1, #0xc, #0x14
    // 0x6f84c8: mov             x16, x0
    // 0x6f84cc: mov             x0, x1
    // 0x6f84d0: mov             x1, x16
    // 0x6f84d4: ldur            x2, [fp, #-8]
    // 0x6f84d8: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6f84d8: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6f84dc: r0 = GDT[cid_x0 + -0xff8]()
    //     0x6f84dc: sub             lr, x0, #0xff8
    //     0x6f84e0: ldr             lr, [x21, lr, lsl #3]
    //     0x6f84e4: blr             lr
    // 0x6f84e8: LeaveFrame
    //     0x6f84e8: mov             SP, fp
    //     0x6f84ec: ldp             fp, lr, [SP], #0x10
    // 0x6f84f0: ret
    //     0x6f84f0: ret             
    // 0x6f84f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f84f4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f84f8: b               #0x6f841c
  }
  dynamic dispose(dynamic) {
    // ** addr: 0x74c484, size: 0x24
    // 0x74c484: EnterFrame
    //     0x74c484: stp             fp, lr, [SP, #-0x10]!
    //     0x74c488: mov             fp, SP
    // 0x74c48c: ldr             x2, [fp, #0x10]
    // 0x74c490: r1 = Function 'dispose':.
    //     0x74c490: add             x1, PP, #0x27, lsl #12  ; [pp+0x27298] AnonymousClosure: (0x74c4a8), in [package:umrem_demo/features/admin/widgets/kisiler/users_tab.dart] _UsersTabState::dispose (0x753cf4)
    //     0x74c494: ldr             x1, [x1, #0x298]
    // 0x74c498: r0 = AllocateClosure()
    //     0x74c498: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74c49c: LeaveFrame
    //     0x74c49c: mov             SP, fp
    //     0x74c4a0: ldp             fp, lr, [SP], #0x10
    // 0x74c4a4: ret
    //     0x74c4a4: ret             
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x74c4a8, size: 0x38
    // 0x74c4a8: EnterFrame
    //     0x74c4a8: stp             fp, lr, [SP, #-0x10]!
    //     0x74c4ac: mov             fp, SP
    // 0x74c4b0: ldr             x0, [fp, #0x10]
    // 0x74c4b4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74c4b4: ldur            w1, [x0, #0x17]
    // 0x74c4b8: DecompressPointer r1
    //     0x74c4b8: add             x1, x1, HEAP, lsl #32
    // 0x74c4bc: CheckStackOverflow
    //     0x74c4bc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74c4c0: cmp             SP, x16
    //     0x74c4c4: b.ls            #0x74c4d8
    // 0x74c4c8: r0 = dispose()
    //     0x74c4c8: bl              #0x753cf4  ; [package:umrem_demo/features/admin/widgets/kisiler/users_tab.dart] _UsersTabState::dispose
    // 0x74c4cc: LeaveFrame
    //     0x74c4cc: mov             SP, fp
    //     0x74c4d0: ldp             fp, lr, [SP], #0x10
    // 0x74c4d4: ret
    //     0x74c4d4: ret             
    // 0x74c4d8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74c4d8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74c4dc: b               #0x74c4c8
  }
  _ dispose(/* No info */) {
    // ** addr: 0x753cf4, size: 0x3c
    // 0x753cf4: EnterFrame
    //     0x753cf4: stp             fp, lr, [SP, #-0x10]!
    //     0x753cf8: mov             fp, SP
    // 0x753cfc: CheckStackOverflow
    //     0x753cfc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x753d00: cmp             SP, x16
    //     0x753d04: b.ls            #0x753d28
    // 0x753d08: LoadField: r0 = r1->field_13
    //     0x753d08: ldur            w0, [x1, #0x13]
    // 0x753d0c: DecompressPointer r0
    //     0x753d0c: add             x0, x0, HEAP, lsl #32
    // 0x753d10: mov             x1, x0
    // 0x753d14: r0 = dispose()
    //     0x753d14: bl              #0x758314  ; [package:flutter/src/widgets/shortcuts.dart] _ShortcutManager&Object&Diagnosticable&ChangeNotifier::dispose
    // 0x753d18: r0 = Null
    //     0x753d18: mov             x0, NULL
    // 0x753d1c: LeaveFrame
    //     0x753d1c: mov             SP, fp
    //     0x753d20: ldp             fp, lr, [SP], #0x10
    // 0x753d24: ret
    //     0x753d24: ret             
    // 0x753d28: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x753d28: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x753d2c: b               #0x753d08
  }
}

// class id: 3207, size: 0x14, field offset: 0xc
//   const constructor, 
class UsersTab extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bd818, size: 0x58
    // 0x7bd818: EnterFrame
    //     0x7bd818: stp             fp, lr, [SP, #-0x10]!
    //     0x7bd81c: mov             fp, SP
    // 0x7bd820: AllocStack(0x8)
    //     0x7bd820: sub             SP, SP, #8
    // 0x7bd824: CheckStackOverflow
    //     0x7bd824: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bd828: cmp             SP, x16
    //     0x7bd82c: b.ls            #0x7bd868
    // 0x7bd830: r1 = <TextEditingValue>
    //     0x7bd830: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x7bd834: r0 = TextEditingController()
    //     0x7bd834: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x7bd838: mov             x1, x0
    // 0x7bd83c: stur            x0, [fp, #-8]
    // 0x7bd840: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7bd840: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7bd844: r0 = TextEditingController()
    //     0x7bd844: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x7bd848: r1 = <UsersTab>
    //     0x7bd848: add             x1, PP, #0x13, lsl #12  ; [pp+0x13978] TypeArguments: <UsersTab>
    //     0x7bd84c: ldr             x1, [x1, #0x978]
    // 0x7bd850: r0 = _UsersTabState()
    //     0x7bd850: bl              #0x7bd870  ; Allocate_UsersTabStateStub -> _UsersTabState (size=0x18)
    // 0x7bd854: ldur            x1, [fp, #-8]
    // 0x7bd858: StoreField: r0->field_13 = r1
    //     0x7bd858: stur            w1, [x0, #0x13]
    // 0x7bd85c: LeaveFrame
    //     0x7bd85c: mov             SP, fp
    //     0x7bd860: ldp             fp, lr, [SP], #0x10
    // 0x7bd864: ret
    //     0x7bd864: ret             
    // 0x7bd868: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bd868: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bd86c: b               #0x7bd830
  }
}

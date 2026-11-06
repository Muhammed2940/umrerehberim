// lib: , url: package:umrem_demo/features/admin/screens/admin_dashboard_screen.dart

// class id: 1049525, size: 0x8
class :: {
}

// class id: 2493, size: 0x14, field offset: 0x14
class _AdminDashboardScreenState extends State<dynamic> {

  _ initState(/* No info */) {
    // ** addr: 0x5d28b0, size: 0x130
    // 0x5d28b0: EnterFrame
    //     0x5d28b0: stp             fp, lr, [SP, #-0x10]!
    //     0x5d28b4: mov             fp, SP
    // 0x5d28b8: AllocStack(0x18)
    //     0x5d28b8: sub             SP, SP, #0x18
    // 0x5d28bc: SetupParameters(_AdminDashboardScreenState this /* r1 => r1, fp-0x8 */)
    //     0x5d28bc: stur            x1, [fp, #-8]
    // 0x5d28c0: CheckStackOverflow
    //     0x5d28c0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d28c4: cmp             SP, x16
    //     0x5d28c8: b.ls            #0x5d29d4
    // 0x5d28cc: r1 = 1
    //     0x5d28cc: mov             x1, #1
    // 0x5d28d0: r0 = AllocateContext()
    //     0x5d28d0: bl              #0x927010  ; AllocateContextStub
    // 0x5d28d4: mov             x1, x0
    // 0x5d28d8: ldur            x0, [fp, #-8]
    // 0x5d28dc: StoreField: r1->field_f = r0
    //     0x5d28dc: stur            w0, [x1, #0xf]
    // 0x5d28e0: r0 = LoadStaticField(0x834)
    //     0x5d28e0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5d28e4: ldr             x0, [x0, #0x1068]
    // 0x5d28e8: cmp             w0, NULL
    // 0x5d28ec: b.eq            #0x5d29dc
    // 0x5d28f0: LoadField: r3 = r0->field_53
    //     0x5d28f0: ldur            w3, [x0, #0x53]
    // 0x5d28f4: DecompressPointer r3
    //     0x5d28f4: add             x3, x3, HEAP, lsl #32
    // 0x5d28f8: stur            x3, [fp, #-0x10]
    // 0x5d28fc: LoadField: r0 = r3->field_7
    //     0x5d28fc: ldur            w0, [x3, #7]
    // 0x5d2900: DecompressPointer r0
    //     0x5d2900: add             x0, x0, HEAP, lsl #32
    // 0x5d2904: mov             x2, x1
    // 0x5d2908: stur            x0, [fp, #-8]
    // 0x5d290c: r1 = Function '<anonymous closure>':.
    //     0x5d290c: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a670] AnonymousClosure: (0x5d2a00), in [package:umrem_demo/features/admin/screens/admin_dashboard_screen.dart] _AdminDashboardScreenState::initState (0x5d28b0)
    //     0x5d2910: ldr             x1, [x1, #0x670]
    // 0x5d2914: r0 = AllocateClosure()
    //     0x5d2914: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5d2918: ldur            x2, [fp, #-8]
    // 0x5d291c: mov             x3, x0
    // 0x5d2920: r1 = Null
    //     0x5d2920: mov             x1, NULL
    // 0x5d2924: stur            x3, [fp, #-8]
    // 0x5d2928: cmp             w2, NULL
    // 0x5d292c: b.eq            #0x5d294c
    // 0x5d2930: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x5d2930: ldur            w4, [x2, #0x17]
    // 0x5d2934: DecompressPointer r4
    //     0x5d2934: add             x4, x4, HEAP, lsl #32
    // 0x5d2938: r8 = X0
    //     0x5d2938: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x5d293c: LoadField: r9 = r4->field_7
    //     0x5d293c: ldur            x9, [x4, #7]
    // 0x5d2940: r3 = Null
    //     0x5d2940: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a678] Null
    //     0x5d2944: ldr             x3, [x3, #0x678]
    // 0x5d2948: blr             x9
    // 0x5d294c: ldur            x0, [fp, #-0x10]
    // 0x5d2950: LoadField: r1 = r0->field_b
    //     0x5d2950: ldur            w1, [x0, #0xb]
    // 0x5d2954: LoadField: r2 = r0->field_f
    //     0x5d2954: ldur            w2, [x0, #0xf]
    // 0x5d2958: DecompressPointer r2
    //     0x5d2958: add             x2, x2, HEAP, lsl #32
    // 0x5d295c: LoadField: r3 = r2->field_b
    //     0x5d295c: ldur            w3, [x2, #0xb]
    // 0x5d2960: r2 = LoadInt32Instr(r1)
    //     0x5d2960: sbfx            x2, x1, #1, #0x1f
    // 0x5d2964: stur            x2, [fp, #-0x18]
    // 0x5d2968: r1 = LoadInt32Instr(r3)
    //     0x5d2968: sbfx            x1, x3, #1, #0x1f
    // 0x5d296c: cmp             x2, x1
    // 0x5d2970: b.ne            #0x5d297c
    // 0x5d2974: mov             x1, x0
    // 0x5d2978: r0 = _growToNextCapacity()
    //     0x5d2978: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x5d297c: ldur            x2, [fp, #-0x10]
    // 0x5d2980: ldur            x3, [fp, #-0x18]
    // 0x5d2984: add             x4, x3, #1
    // 0x5d2988: lsl             x5, x4, #1
    // 0x5d298c: StoreField: r2->field_b = r5
    //     0x5d298c: stur            w5, [x2, #0xb]
    // 0x5d2990: LoadField: r1 = r2->field_f
    //     0x5d2990: ldur            w1, [x2, #0xf]
    // 0x5d2994: DecompressPointer r1
    //     0x5d2994: add             x1, x1, HEAP, lsl #32
    // 0x5d2998: ldur            x0, [fp, #-8]
    // 0x5d299c: ArrayStore: r1[r3] = r0  ; List_4
    //     0x5d299c: add             x25, x1, x3, lsl #2
    //     0x5d29a0: add             x25, x25, #0xf
    //     0x5d29a4: str             w0, [x25]
    //     0x5d29a8: tbz             w0, #0, #0x5d29c4
    //     0x5d29ac: ldurb           w16, [x1, #-1]
    //     0x5d29b0: ldurb           w17, [x0, #-1]
    //     0x5d29b4: and             x16, x17, x16, lsr #2
    //     0x5d29b8: tst             x16, HEAP, lsr #32
    //     0x5d29bc: b.eq            #0x5d29c4
    //     0x5d29c0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5d29c4: r0 = Null
    //     0x5d29c4: mov             x0, NULL
    // 0x5d29c8: LeaveFrame
    //     0x5d29c8: mov             SP, fp
    //     0x5d29cc: ldp             fp, lr, [SP], #0x10
    // 0x5d29d0: ret
    //     0x5d29d0: ret             
    // 0x5d29d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d29d4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d29d8: b               #0x5d28cc
    // 0x5d29dc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5d29dc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, Duration) {
    // ** addr: 0x5d2a00, size: 0x74
    // 0x5d2a00: EnterFrame
    //     0x5d2a00: stp             fp, lr, [SP, #-0x10]!
    //     0x5d2a04: mov             fp, SP
    // 0x5d2a08: AllocStack(0x10)
    //     0x5d2a08: sub             SP, SP, #0x10
    // 0x5d2a0c: SetupParameters([dynamic _ /* r0 */])
    //     0x5d2a0c: ldr             x0, [fp, #0x18]
    //     0x5d2a10: ldur            w1, [x0, #0x17]
    //     0x5d2a14: add             x1, x1, HEAP, lsl #32
    // 0x5d2a18: CheckStackOverflow
    //     0x5d2a18: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d2a1c: cmp             SP, x16
    //     0x5d2a20: b.ls            #0x5d2a68
    // 0x5d2a24: LoadField: r0 = r1->field_f
    //     0x5d2a24: ldur            w0, [x1, #0xf]
    // 0x5d2a28: DecompressPointer r0
    //     0x5d2a28: add             x0, x0, HEAP, lsl #32
    // 0x5d2a2c: LoadField: r1 = r0->field_f
    //     0x5d2a2c: ldur            w1, [x0, #0xf]
    // 0x5d2a30: DecompressPointer r1
    //     0x5d2a30: add             x1, x1, HEAP, lsl #32
    // 0x5d2a34: cmp             w1, NULL
    // 0x5d2a38: b.eq            #0x5d2a70
    // 0x5d2a3c: r16 = <AdminProvider>
    //     0x5d2a3c: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b50] TypeArguments: <AdminProvider>
    //     0x5d2a40: ldr             x16, [x16, #0xb50]
    // 0x5d2a44: stp             x1, x16, [SP]
    // 0x5d2a48: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x5d2a48: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x5d2a4c: r0 = ReadContext.read()
    //     0x5d2a4c: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x5d2a50: mov             x1, x0
    // 0x5d2a54: r0 = loadInitial()
    //     0x5d2a54: bl              #0x5d2a74  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::loadInitial
    // 0x5d2a58: r0 = Null
    //     0x5d2a58: mov             x0, NULL
    // 0x5d2a5c: LeaveFrame
    //     0x5d2a5c: mov             SP, fp
    //     0x5d2a60: ldp             fp, lr, [SP], #0x10
    // 0x5d2a64: ret
    //     0x5d2a64: ret             
    // 0x5d2a68: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d2a68: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d2a6c: b               #0x5d2a24
    // 0x5d2a70: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5d2a70: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ build(/* No info */) {
    // ** addr: 0x6ce74c, size: 0x218
    // 0x6ce74c: EnterFrame
    //     0x6ce74c: stp             fp, lr, [SP, #-0x10]!
    //     0x6ce750: mov             fp, SP
    // 0x6ce754: AllocStack(0x48)
    //     0x6ce754: sub             SP, SP, #0x48
    // 0x6ce758: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */)
    //     0x6ce758: stur            x2, [fp, #-8]
    // 0x6ce75c: CheckStackOverflow
    //     0x6ce75c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ce760: cmp             SP, x16
    //     0x6ce764: b.ls            #0x6ce95c
    // 0x6ce768: r1 = 1
    //     0x6ce768: mov             x1, #1
    // 0x6ce76c: r0 = AllocateContext()
    //     0x6ce76c: bl              #0x927010  ; AllocateContextStub
    // 0x6ce770: mov             x1, x0
    // 0x6ce774: ldur            x0, [fp, #-8]
    // 0x6ce778: stur            x1, [fp, #-0x10]
    // 0x6ce77c: StoreField: r1->field_f = r0
    //     0x6ce77c: stur            w0, [x1, #0xf]
    // 0x6ce780: r0 = IconThemeData()
    //     0x6ce780: bl              #0x4144cc  ; AllocateIconThemeDataStub -> IconThemeData (size=0x2c)
    // 0x6ce784: mov             x1, x0
    // 0x6ce788: r0 = Instance_Color
    //     0x6ce788: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x6ce78c: ldr             x0, [x0, #0xb88]
    // 0x6ce790: stur            x1, [fp, #-8]
    // 0x6ce794: StoreField: r1->field_1b = r0
    //     0x6ce794: stur            w0, [x1, #0x1b]
    // 0x6ce798: r0 = TextStyle()
    //     0x6ce798: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6ce79c: mov             x1, x0
    // 0x6ce7a0: r0 = true
    //     0x6ce7a0: add             x0, NULL, #0x20  ; true
    // 0x6ce7a4: stur            x1, [fp, #-0x18]
    // 0x6ce7a8: StoreField: r1->field_7 = r0
    //     0x6ce7a8: stur            w0, [x1, #7]
    // 0x6ce7ac: r2 = Instance_Color
    //     0x6ce7ac: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x6ce7b0: ldr             x2, [x2, #0xb88]
    // 0x6ce7b4: StoreField: r1->field_b = r2
    //     0x6ce7b4: stur            w2, [x1, #0xb]
    // 0x6ce7b8: r2 = Instance_FontWeight
    //     0x6ce7b8: add             x2, PP, #0x14, lsl #12  ; [pp+0x149c8] Obj!FontWeight@a21041
    //     0x6ce7bc: ldr             x2, [x2, #0x9c8]
    // 0x6ce7c0: StoreField: r1->field_23 = r2
    //     0x6ce7c0: stur            w2, [x1, #0x23]
    // 0x6ce7c4: r2 = -0.500000
    //     0x6ce7c4: add             x2, PP, #0x15, lsl #12  ; [pp+0x15dc0] -0.5
    //     0x6ce7c8: ldr             x2, [x2, #0xdc0]
    // 0x6ce7cc: StoreField: r1->field_2b = r2
    //     0x6ce7cc: stur            w2, [x1, #0x2b]
    // 0x6ce7d0: r0 = Text()
    //     0x6ce7d0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6ce7d4: mov             x3, x0
    // 0x6ce7d8: r0 = "Yönetim Paneli"
    //     0x6ce7d8: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a560] "Yönetim Paneli"
    //     0x6ce7dc: ldr             x0, [x0, #0x560]
    // 0x6ce7e0: stur            x3, [fp, #-0x20]
    // 0x6ce7e4: StoreField: r3->field_b = r0
    //     0x6ce7e4: stur            w0, [x3, #0xb]
    // 0x6ce7e8: ldur            x0, [fp, #-0x18]
    // 0x6ce7ec: StoreField: r3->field_13 = r0
    //     0x6ce7ec: stur            w0, [x3, #0x13]
    // 0x6ce7f0: ldur            x2, [fp, #-0x10]
    // 0x6ce7f4: r1 = Function '<anonymous closure>':.
    //     0x6ce7f4: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a568] AnonymousClosure: (0x6cf7b8), in [package:umrem_demo/features/admin/screens/admin_dashboard_screen.dart] _AdminDashboardScreenState::build (0x6ce74c)
    //     0x6ce7f8: ldr             x1, [x1, #0x568]
    // 0x6ce7fc: r0 = AllocateClosure()
    //     0x6ce7fc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ce800: stur            x0, [fp, #-0x18]
    // 0x6ce804: r0 = IconButton()
    //     0x6ce804: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x6ce808: mov             x3, x0
    // 0x6ce80c: ldur            x0, [fp, #-0x18]
    // 0x6ce810: stur            x3, [fp, #-0x28]
    // 0x6ce814: StoreField: r3->field_3b = r0
    //     0x6ce814: stur            w0, [x3, #0x3b]
    // 0x6ce818: r0 = false
    //     0x6ce818: add             x0, NULL, #0x30  ; false
    // 0x6ce81c: StoreField: r3->field_4f = r0
    //     0x6ce81c: stur            w0, [x3, #0x4f]
    // 0x6ce820: r1 = Instance_Icon
    //     0x6ce820: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a2d8] Obj!Icon@a1e0f1
    //     0x6ce824: ldr             x1, [x1, #0x2d8]
    // 0x6ce828: StoreField: r3->field_1f = r1
    //     0x6ce828: stur            w1, [x3, #0x1f]
    // 0x6ce82c: r1 = Instance__IconButtonVariant
    //     0x6ce82c: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x6ce830: ldr             x1, [x1, #0x1b8]
    // 0x6ce834: StoreField: r3->field_6f = r1
    //     0x6ce834: stur            w1, [x3, #0x6f]
    // 0x6ce838: r1 = Null
    //     0x6ce838: mov             x1, NULL
    // 0x6ce83c: r2 = 2
    //     0x6ce83c: mov             x2, #2
    // 0x6ce840: r0 = AllocateArray()
    //     0x6ce840: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ce844: mov             x2, x0
    // 0x6ce848: ldur            x0, [fp, #-0x28]
    // 0x6ce84c: stur            x2, [fp, #-0x18]
    // 0x6ce850: StoreField: r2->field_f = r0
    //     0x6ce850: stur            w0, [x2, #0xf]
    // 0x6ce854: r1 = <Widget>
    //     0x6ce854: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ce858: r0 = AllocateGrowableArray()
    //     0x6ce858: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ce85c: mov             x1, x0
    // 0x6ce860: ldur            x0, [fp, #-0x18]
    // 0x6ce864: stur            x1, [fp, #-0x28]
    // 0x6ce868: StoreField: r1->field_f = r0
    //     0x6ce868: stur            w0, [x1, #0xf]
    // 0x6ce86c: r0 = 2
    //     0x6ce86c: mov             x0, #2
    // 0x6ce870: StoreField: r1->field_b = r0
    //     0x6ce870: stur            w0, [x1, #0xb]
    // 0x6ce874: r0 = AppBar()
    //     0x6ce874: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x6ce878: stur            x0, [fp, #-0x18]
    // 0x6ce87c: r16 = Instance_Color
    //     0x6ce87c: ldr             x16, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6ce880: r30 = 0.000000
    //     0x6ce880: ldr             lr, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x6ce884: stp             lr, x16, [SP, #0x10]
    // 0x6ce888: ldur            x16, [fp, #-8]
    // 0x6ce88c: ldur            lr, [fp, #-0x28]
    // 0x6ce890: stp             lr, x16, [SP]
    // 0x6ce894: mov             x1, x0
    // 0x6ce898: ldur            x2, [fp, #-0x20]
    // 0x6ce89c: r4 = const [0, 0x6, 0x4, 0x2, actions, 0x5, backgroundColor, 0x2, elevation, 0x3, iconTheme, 0x4, null]
    //     0x6ce89c: add             x4, PP, #0x1a, lsl #12  ; [pp+0x1a570] List(13) [0, 0x6, 0x4, 0x2, "actions", 0x5, "backgroundColor", 0x2, "elevation", 0x3, "iconTheme", 0x4, Null]
    //     0x6ce8a0: ldr             x4, [x4, #0x570]
    // 0x6ce8a4: r0 = AppBar()
    //     0x6ce8a4: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x6ce8a8: ldur            x0, [fp, #-0x10]
    // 0x6ce8ac: LoadField: r1 = r0->field_f
    //     0x6ce8ac: ldur            w1, [x0, #0xf]
    // 0x6ce8b0: DecompressPointer r1
    //     0x6ce8b0: add             x1, x1, HEAP, lsl #32
    // 0x6ce8b4: r0 = buildAdminDrawer()
    //     0x6ce8b4: bl              #0x6ce970  ; [package:umrem_demo/features/admin/widgets/drawer.dart] ::buildAdminDrawer
    // 0x6ce8b8: r1 = Function '<anonymous closure>':.
    //     0x6ce8b8: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a578] AnonymousClosure: (0x6cf6d4), in [package:umrem_demo/features/admin/screens/admin_dashboard_screen.dart] _AdminDashboardScreenState::build (0x6ce74c)
    //     0x6ce8bc: ldr             x1, [x1, #0x578]
    // 0x6ce8c0: r2 = Null
    //     0x6ce8c0: mov             x2, NULL
    // 0x6ce8c4: stur            x0, [fp, #-8]
    // 0x6ce8c8: r0 = AllocateClosure()
    //     0x6ce8c8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ce8cc: r1 = <AdminProvider>
    //     0x6ce8cc: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b50] TypeArguments: <AdminProvider>
    //     0x6ce8d0: ldr             x1, [x1, #0xb50]
    // 0x6ce8d4: stur            x0, [fp, #-0x10]
    // 0x6ce8d8: r0 = Consumer()
    //     0x6ce8d8: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x6ce8dc: mov             x1, x0
    // 0x6ce8e0: ldur            x0, [fp, #-0x10]
    // 0x6ce8e4: stur            x1, [fp, #-0x20]
    // 0x6ce8e8: StoreField: r1->field_13 = r0
    //     0x6ce8e8: stur            w0, [x1, #0x13]
    // 0x6ce8ec: r0 = Scaffold()
    //     0x6ce8ec: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x6ce8f0: ldur            x1, [fp, #-0x18]
    // 0x6ce8f4: ArrayStore: r0[0] = r1  ; List_4
    //     0x6ce8f4: stur            w1, [x0, #0x17]
    // 0x6ce8f8: ldur            x1, [fp, #-0x20]
    // 0x6ce8fc: StoreField: r0->field_1b = r1
    //     0x6ce8fc: stur            w1, [x0, #0x1b]
    // 0x6ce900: r1 = Instance_AlignmentDirectional
    //     0x6ce900: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x6ce904: ldr             x1, [x1, #0x350]
    // 0x6ce908: StoreField: r0->field_2f = r1
    //     0x6ce908: stur            w1, [x0, #0x2f]
    // 0x6ce90c: ldur            x1, [fp, #-8]
    // 0x6ce910: StoreField: r0->field_37 = r1
    //     0x6ce910: stur            w1, [x0, #0x37]
    // 0x6ce914: r1 = Instance_Color
    //     0x6ce914: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6ce918: StoreField: r0->field_4f = r1
    //     0x6ce918: stur            w1, [x0, #0x4f]
    // 0x6ce91c: r1 = true
    //     0x6ce91c: add             x1, NULL, #0x20  ; true
    // 0x6ce920: StoreField: r0->field_5f = r1
    //     0x6ce920: stur            w1, [x0, #0x5f]
    // 0x6ce924: r2 = Instance_DragStartBehavior
    //     0x6ce924: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6ce928: StoreField: r0->field_63 = r2
    //     0x6ce928: stur            w2, [x0, #0x63]
    // 0x6ce92c: r2 = false
    //     0x6ce92c: add             x2, NULL, #0x30  ; false
    // 0x6ce930: StoreField: r0->field_b = r2
    //     0x6ce930: stur            w2, [x0, #0xb]
    // 0x6ce934: StoreField: r0->field_f = r1
    //     0x6ce934: stur            w1, [x0, #0xf]
    // 0x6ce938: StoreField: r0->field_13 = r2
    //     0x6ce938: stur            w2, [x0, #0x13]
    // 0x6ce93c: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x6ce93c: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x6ce940: ldr             x2, [x2, #0x358]
    // 0x6ce944: StoreField: r0->field_4b = r2
    //     0x6ce944: stur            w2, [x0, #0x4b]
    // 0x6ce948: StoreField: r0->field_6b = r1
    //     0x6ce948: stur            w1, [x0, #0x6b]
    // 0x6ce94c: StoreField: r0->field_6f = r1
    //     0x6ce94c: stur            w1, [x0, #0x6f]
    // 0x6ce950: LeaveFrame
    //     0x6ce950: mov             SP, fp
    //     0x6ce954: ldp             fp, lr, [SP], #0x10
    // 0x6ce958: ret
    //     0x6ce958: ret             
    // 0x6ce95c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ce95c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ce960: b               #0x6ce768
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, AdminProvider, Widget?) {
    // ** addr: 0x6cf6d4, size: 0xe4
    // 0x6cf6d4: EnterFrame
    //     0x6cf6d4: stp             fp, lr, [SP, #-0x10]!
    //     0x6cf6d8: mov             fp, SP
    // 0x6cf6dc: AllocStack(0x18)
    //     0x6cf6dc: sub             SP, SP, #0x18
    // 0x6cf6e0: CheckStackOverflow
    //     0x6cf6e0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cf6e4: cmp             SP, x16
    //     0x6cf6e8: b.ls            #0x6cf7ac
    // 0x6cf6ec: ldr             x0, [fp, #0x18]
    // 0x6cf6f0: LoadField: r1 = r0->field_27
    //     0x6cf6f0: ldur            w1, [x0, #0x27]
    // 0x6cf6f4: DecompressPointer r1
    //     0x6cf6f4: add             x1, x1, HEAP, lsl #32
    // 0x6cf6f8: tbnz            w1, #4, #0x6cf710
    // 0x6cf6fc: r0 = Instance_Center
    //     0x6cf6fc: add             x0, PP, #0x12, lsl #12  ; [pp+0x12710] Obj!Center@a1fdb1
    //     0x6cf700: ldr             x0, [x0, #0x710]
    // 0x6cf704: LeaveFrame
    //     0x6cf704: mov             SP, fp
    //     0x6cf708: ldp             fp, lr, [SP], #0x10
    // 0x6cf70c: ret
    //     0x6cf70c: ret             
    // 0x6cf710: LoadField: r3 = r0->field_2f
    //     0x6cf710: ldur            w3, [x0, #0x2f]
    // 0x6cf714: DecompressPointer r3
    //     0x6cf714: add             x3, x3, HEAP, lsl #32
    // 0x6cf718: stur            x3, [fp, #-8]
    // 0x6cf71c: cmp             w3, NULL
    // 0x6cf720: b.eq            #0x6cf798
    // 0x6cf724: r1 = _ConstMap len:10
    //     0x6cf724: ldr             x1, [PP, #0x5760]  ; [pp+0x5760] Map<int, Color>(10)
    // 0x6cf728: r2 = 1400
    //     0x6cf728: mov             x2, #0x578
    // 0x6cf72c: r0 = []()
    //     0x6cf72c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6cf730: stur            x0, [fp, #-0x10]
    // 0x6cf734: cmp             w0, NULL
    // 0x6cf738: b.eq            #0x6cf7b4
    // 0x6cf73c: r0 = TextStyle()
    //     0x6cf73c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6cf740: mov             x1, x0
    // 0x6cf744: r0 = true
    //     0x6cf744: add             x0, NULL, #0x20  ; true
    // 0x6cf748: stur            x1, [fp, #-0x18]
    // 0x6cf74c: StoreField: r1->field_7 = r0
    //     0x6cf74c: stur            w0, [x1, #7]
    // 0x6cf750: ldur            x0, [fp, #-0x10]
    // 0x6cf754: StoreField: r1->field_b = r0
    //     0x6cf754: stur            w0, [x1, #0xb]
    // 0x6cf758: r0 = Text()
    //     0x6cf758: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6cf75c: mov             x1, x0
    // 0x6cf760: ldur            x0, [fp, #-8]
    // 0x6cf764: stur            x1, [fp, #-0x10]
    // 0x6cf768: StoreField: r1->field_b = r0
    //     0x6cf768: stur            w0, [x1, #0xb]
    // 0x6cf76c: ldur            x0, [fp, #-0x18]
    // 0x6cf770: StoreField: r1->field_13 = r0
    //     0x6cf770: stur            w0, [x1, #0x13]
    // 0x6cf774: r0 = Center()
    //     0x6cf774: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x6cf778: r1 = Instance_Alignment
    //     0x6cf778: add             x1, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x6cf77c: ldr             x1, [x1, #0x60]
    // 0x6cf780: StoreField: r0->field_f = r1
    //     0x6cf780: stur            w1, [x0, #0xf]
    // 0x6cf784: ldur            x1, [fp, #-0x10]
    // 0x6cf788: StoreField: r0->field_b = r1
    //     0x6cf788: stur            w1, [x0, #0xb]
    // 0x6cf78c: LeaveFrame
    //     0x6cf78c: mov             SP, fp
    //     0x6cf790: ldp             fp, lr, [SP], #0x10
    // 0x6cf794: ret
    //     0x6cf794: ret             
    // 0x6cf798: r0 = Instance_AdminAnalyticsScreen
    //     0x6cf798: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e70] Obj!AdminAnalyticsScreen@a1ae91
    //     0x6cf79c: ldr             x0, [x0, #0xe70]
    // 0x6cf7a0: LeaveFrame
    //     0x6cf7a0: mov             SP, fp
    //     0x6cf7a4: ldp             fp, lr, [SP], #0x10
    // 0x6cf7a8: ret
    //     0x6cf7a8: ret             
    // 0x6cf7ac: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cf7ac: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cf7b0: b               #0x6cf6ec
    // 0x6cf7b4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6cf7b4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6cf7b8, size: 0x6c
    // 0x6cf7b8: EnterFrame
    //     0x6cf7b8: stp             fp, lr, [SP, #-0x10]!
    //     0x6cf7bc: mov             fp, SP
    // 0x6cf7c0: AllocStack(0x18)
    //     0x6cf7c0: sub             SP, SP, #0x18
    // 0x6cf7c4: SetupParameters([dynamic _ /* r0 */])
    //     0x6cf7c4: ldr             x0, [fp, #0x10]
    //     0x6cf7c8: ldur            w1, [x0, #0x17]
    //     0x6cf7cc: add             x1, x1, HEAP, lsl #32
    //     0x6cf7d0: stur            x1, [fp, #-8]
    // 0x6cf7d4: CheckStackOverflow
    //     0x6cf7d4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cf7d8: cmp             SP, x16
    //     0x6cf7dc: b.ls            #0x6cf81c
    // 0x6cf7e0: LoadField: r0 = r1->field_f
    //     0x6cf7e0: ldur            w0, [x1, #0xf]
    // 0x6cf7e4: DecompressPointer r0
    //     0x6cf7e4: add             x0, x0, HEAP, lsl #32
    // 0x6cf7e8: r16 = <SplashProvider>
    //     0x6cf7e8: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b30] TypeArguments: <SplashProvider>
    //     0x6cf7ec: ldr             x16, [x16, #0xb30]
    // 0x6cf7f0: stp             x0, x16, [SP]
    // 0x6cf7f4: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6cf7f4: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6cf7f8: r0 = ReadContext.read()
    //     0x6cf7f8: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x6cf7fc: mov             x1, x0
    // 0x6cf800: ldur            x0, [fp, #-8]
    // 0x6cf804: LoadField: r2 = r0->field_f
    //     0x6cf804: ldur            w2, [x0, #0xf]
    // 0x6cf808: DecompressPointer r2
    //     0x6cf808: add             x2, x2, HEAP, lsl #32
    // 0x6cf80c: r0 = logout()
    //     0x6cf80c: bl              #0x6cf824  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::logout
    // 0x6cf810: LeaveFrame
    //     0x6cf810: mov             SP, fp
    //     0x6cf814: ldp             fp, lr, [SP], #0x10
    // 0x6cf818: ret
    //     0x6cf818: ret             
    // 0x6cf81c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cf81c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cf820: b               #0x6cf7e0
  }
  dynamic dispose(dynamic) {
    // ** addr: 0x74c2f0, size: 0x24
    // 0x74c2f0: EnterFrame
    //     0x74c2f0: stp             fp, lr, [SP, #-0x10]!
    //     0x74c2f4: mov             fp, SP
    // 0x74c2f8: ldr             x2, [fp, #0x10]
    // 0x74c2fc: r1 = Function 'dispose':.
    //     0x74c2fc: add             x1, PP, #0x27, lsl #12  ; [pp+0x275c0] Function: [dart:ui] _NativeScene::_NativeScene._ (0x921cc4)
    //     0x74c300: ldr             x1, [x1, #0x5c0]
    // 0x74c304: r0 = AllocateClosure()
    //     0x74c304: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74c308: LeaveFrame
    //     0x74c308: mov             SP, fp
    //     0x74c30c: ldp             fp, lr, [SP], #0x10
    // 0x74c310: ret
    //     0x74c310: ret             
  }
}

// class id: 3219, size: 0xc, field offset: 0xc
//   const constructor, 
class AdminDashboardScreen extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bd310, size: 0x24
    // 0x7bd310: EnterFrame
    //     0x7bd310: stp             fp, lr, [SP, #-0x10]!
    //     0x7bd314: mov             fp, SP
    // 0x7bd318: mov             x0, x1
    // 0x7bd31c: r1 = <AdminDashboardScreen>
    //     0x7bd31c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12830] TypeArguments: <AdminDashboardScreen>
    //     0x7bd320: ldr             x1, [x1, #0x830]
    // 0x7bd324: r0 = _AdminDashboardScreenState()
    //     0x7bd324: bl              #0x7bd334  ; Allocate_AdminDashboardScreenStateStub -> _AdminDashboardScreenState (size=0x14)
    // 0x7bd328: LeaveFrame
    //     0x7bd328: mov             SP, fp
    //     0x7bd32c: ldp             fp, lr, [SP], #0x10
    // 0x7bd330: ret
    //     0x7bd330: ret             
  }
}
